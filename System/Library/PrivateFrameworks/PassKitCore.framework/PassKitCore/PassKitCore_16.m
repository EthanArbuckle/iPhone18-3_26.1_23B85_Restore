uint64_t sub_1AD4DD19C(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, BOOL), uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    swift_beginAccess();
    v12 = *(a3 + 16);
    *(a3 + 16) = a1;
    v13 = a1;
LABEL_5:

    goto LABEL_6;
  }

  if (a2)
  {
    v15 = a2;
    v16 = sub_1ADB05CB0();
    v17 = [objc_opt_self() errorWithUnderlyingError:v16 defaultSeverity:5];

    swift_beginAccess();
    v12 = *(a4 + 16);
    *(a4 + 16) = v17;
    goto LABEL_5;
  }

LABEL_6:
  swift_beginAccess();
  return a5(a7, *(a4 + 16) != 0);
}

void sub_1AD4DD2B8(int a1, void *a2, uint64_t a3, uint64_t a4, id a5, uint64_t a6, unint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v17 = a9;
  v16 = a10;
  v18 = [a5 identifier];
  if (!v18)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v19 = v18;
  v38 = a6;
  v39 = sub_1ADB063B0();
  v21 = v20;

  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v22 = sub_1ADB05FA0();
  __swift_project_value_buffer(v22, qword_1EB59AB68);

  v23 = sub_1ADB05F80();
  v24 = sub_1ADB06860();

  v37 = a3;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = a2;
    v26 = swift_slowAlloc();
    v27 = a4;
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v26 = 136315394;
    *(v26 + 4) = sub_1AD3CA88C(v38, a7, aBlock);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_1AD3CA88C(v39, v21, aBlock);
    _os_log_impl(&dword_1AD337000, v23, v24, "[%s] Fetching pretrack request for key identifier: %s", v26, 0x16u);
    swift_arrayDestroy();
    v29 = v28;
    a4 = v27;
    v17 = a9;
    MEMORY[0x1B26F9F20](v29, -1, -1);
    v30 = v26;
    a2 = v25;
    v16 = a10;
    MEMORY[0x1B26F9F20](v30, -1, -1);
  }

  v31 = [a8 targetDevice];
  if (!v31)
  {
    goto LABEL_13;
  }

  v32 = v31;
  if ([v31 respondsToSelector_])
  {
    v33 = swift_allocObject();
    v33[2] = v17;
    v33[3] = v16;
    v33[4] = v37;
    v33[5] = a4;
    v33[6] = a2;

    v34 = a2;
    v35 = sub_1ADB06370();
    aBlock[4] = sub_1AD4DF0EC;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD4B7970;
    aBlock[3] = &block_descriptor_55_0;
    v36 = _Block_copy(aBlock);

    [v32 carKeyGetPretrackRequestForKeyWithInvitationIdentifier:v35 completion:v36];
    _Block_release(v36);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1AD4DD640(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, BOOL), uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    swift_beginAccess();
    v12 = *(a3 + 16);
    *(a3 + 16) = a1;
    v13 = a1;
LABEL_5:

    goto LABEL_6;
  }

  if (a2)
  {
    v15 = a2;
    v16 = sub_1ADB05CB0();
    v17 = [objc_opt_self() errorWithUnderlyingError:v16 defaultSeverity:5];

    swift_beginAccess();
    v12 = *(a4 + 16);
    *(a4 + 16) = v17;
    goto LABEL_5;
  }

  if (PKSharingForceErrorAfterKMLReturnsPreTrackRequest())
  {
    v19 = [objc_opt_self() errorWithSeverity_];
    swift_beginAccess();
    v20 = *(a4 + 16);
    *(a4 + 16) = v19;

    swift_beginAccess();
    v21 = *(a4 + 16);
    if (v21)
    {
      v22 = v21;
      v12 = sub_1ADB06370();
      [v22 addInternalDebugDescription_];

      goto LABEL_5;
    }
  }

LABEL_6:
  swift_beginAccess();
  return a5(a7, *(a4 + 16) != 0);
}

void sub_1AD4DD80C(int a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16, uint64_t a17, uint64_t a18, unint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a6)
  {
    v27 = sub_1ADB06370();
    v28 = a12;
    if (a8)
    {
LABEL_3:
      v29 = sub_1ADB06370();
      goto LABEL_6;
    }
  }

  else
  {
    v27 = 0;
    v28 = a12;
    if (a8)
    {
      goto LABEL_3;
    }
  }

  v29 = 0;
LABEL_6:
  v30 = [objc_allocWithZone(PKCarKeyCredentialRegistrationMetadata) initWithMake:v27 model:v29 keyType:a9];

  if (a10)
  {
    if (a10 == 1)
    {
      v31 = [objc_allocWithZone(PKPaymentRegisterPreTrackCredentialRequest) initWithCredential:v28 metadata:v30];
    }

    else
    {
      v34 = [a16 targetDevice];
      if (!v34)
      {
        __break(1u);
        return;
      }

      v35 = [v34 appleAccountInformation];
      swift_unknownObjectRelease();
      v36 = PKCreatePersonalVehicleIdentifier(v28, v35);

      [v30 setPersonalizedVehicleIdentifier_];
      v31 = [objc_allocWithZone(PKPaymentRegisterTrackCredentialRequest) initWithCredential:v28 registrationData:a10 metadata:v30];
    }

    v33 = v31;
    v37 = PKSharingForceErrorAfterBrokerReturnsTrackRegisterCredentialResponse();
  }

  else
  {
    swift_beginAccess();
    v32 = *(a11 + 16);
    if (v32)
    {
      swift_beginAccess();
      v33 = [objc_allocWithZone(PKPaymentRegisterPreTrackCredentialRequest) initWithCredential:v28 encryptedVehicleDataRequest:v32 encryptedShareData:*(a13 + 16) metadata:v30];
    }

    else
    {
      v33 = 0;
    }

    v37 = PKSharingForceErrorAfterBrokerReturnsPreTrackRegisterCredentialResponse();
  }

  swift_beginAccess();
  *(a14 + 16) = v37;
  if (v33)
  {
    MEMORY[0x1B26F6530](a18, a19);
    MEMORY[0x1B26F6530](62, 0xE100000000000000);
    v38 = sub_1ADB06370();

    [v33 addDiagnosticReason_];

    v39 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();
    v40 = v33;

    v41 = swift_allocObject();
    v41[2] = a14;
    v41[3] = a22;
    v41[4] = a23;
    v41[5] = v39;
    v41[6] = a3;
    v41[7] = a4;
    v41[8] = a2;
    aBlock[4] = sub_1AD4DF1A8;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD4B7970;
    aBlock[3] = &block_descriptor_78_0;
    v42 = _Block_copy(aBlock);

    v43 = a2;

    [a20 registerCredentialWithRequest:v40 withCompletion:v42];

    _Block_release(v42);
    v30 = v40;
  }

  else
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v44 = sub_1ADB05FA0();
    __swift_project_value_buffer(v44, qword_1EB59AB68);

    v45 = sub_1ADB05F80();
    v46 = sub_1ADB06860();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock[0] = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_1AD3CA88C(a18, a19, aBlock);
      _os_log_impl(&dword_1AD337000, v45, v46, "[%s] Failed to create registration request", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1B26F9F20](v48, -1, -1);
      MEMORY[0x1B26F9F20](v47, -1, -1);
    }

    a3(a2, 1);
  }
}

uint64_t sub_1AD4DDD48(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, BOOL), uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  if (*(a3 + 16) != 1)
  {
    if (a1)
    {
      swift_beginAccess();
      v19 = *(a5 + 16);
      *(a5 + 16) = a1;
      v20 = a1;
    }

    else
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v21 = sub_1AD4E05B8(a2);
      }

      else
      {
        v21 = 0;
      }

      swift_beginAccess();
      v19 = *(a4 + 16);
      *(a4 + 16) = v21;
    }

    goto LABEL_10;
  }

  v15 = [objc_opt_self() errorWithSeverity_];
  swift_beginAccess();
  v16 = *(a4 + 16);
  *(a4 + 16) = v15;

  swift_beginAccess();
  v17 = *(a4 + 16);
  if (v17)
  {
    v18 = v17;
    v19 = sub_1ADB06370();
    [v18 addInternalDebugDescription_];

LABEL_10:
  }

  swift_beginAccess();
  return a7(a9, *(a4 + 16) != 0);
}

id sub_1AD4DDF2C(uint64_t a1, void *a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a5 <= 1)
  {
    v16 = a2;
    v17 = 0;
    return a3(v16, v17);
  }

  swift_beginAccess();
  v21 = *(a6 + 16);
  if (!v21)
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v35 = sub_1ADB05FA0();
    __swift_project_value_buffer(v35, qword_1EB59AB68);

    v36 = sub_1ADB05F80();
    v37 = sub_1ADB06860();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_1AD3CA88C(a7, a8, aBlock);
      _os_log_impl(&dword_1AD337000, v36, v37, "[%s] Failed to get track key response", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1B26F9F20](v39, -1, -1);
      MEMORY[0x1B26F9F20](v38, -1, -1);
    }

    v16 = a2;
    v17 = 1;
    return a3(v16, v17);
  }

  v22 = v21;
  v23 = [v22 vehicleMobilizationEncryptedContainer];
  result = [a10 targetDevice];
  if (result)
  {
    v25 = result;
    if ([result respondsToSelector_])
    {
      v26 = [v22 credentialAttestation];
      if (v26)
      {
        v27 = v26;
        v28 = sub_1ADB05D70();
        v30 = v29;

        v31 = swift_allocObject();
        v31[2] = a13;
        v31[3] = a3;
        v31[4] = a4;
        v31[5] = a2;

        v32 = a2;
        v33 = sub_1ADB05D50();
        v34 = sub_1AD4E0B80;
      }

      else
      {
        v31 = swift_allocObject();
        v31[2] = a13;
        v31[3] = a3;
        v31[4] = a4;
        v31[5] = a2;

        v40 = a2;
        v33 = 0;
        v28 = 0;
        v34 = sub_1AD4DF19C;
        v30 = 0xF000000000000000;
      }

      aBlock[4] = v34;
      aBlock[5] = v31;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AD471E08;
      aBlock[3] = &block_descriptor_67_0;
      v41 = _Block_copy(aBlock);

      [v25 carKeyUpdateTrackingAttestation:v33 forCredential:a12 encryptedContainer:v23 completion:v41];
      _Block_release(v41);

      swift_unknownObjectRelease();
      sub_1AD3C5FB8(v34);
      return sub_1AD422FB0(v28, v30);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AD4DE2F4(char a1, uint64_t a2, uint64_t (*a3)(uint64_t, BOOL), uint64_t a4, uint64_t a5)
{
  if ((a1 & 1) == 0)
  {
    v8 = [objc_opt_self() errorWithSeverity_];
    swift_beginAccess();
    v9 = *(a2 + 16);
    *(a2 + 16) = v8;

    swift_beginAccess();
    v10 = *(a2 + 16);
    if (v10)
    {
      v11 = v10;
      v12 = sub_1ADB06370();
      [v11 addInternalDebugDescription_];
    }
  }

  swift_beginAccess();
  return a3(a5, *(a2 + 16) != 0);
}

void sub_1AD4DE410(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(id, uint64_t), uint64_t a7, void *a8)
{
  v40 = a8;
  v41 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AE30);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  v17 = sub_1ADB05D20();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v39 - v22;
  swift_beginAccess();
  if (!*(a4 + 16) && ([a3 isCanceled] & 1) == 0)
  {
    swift_beginAccess();
    v24 = *(a5 + 16);
    if (v24)
    {
      v25 = [v24 passURL];
      if (v25)
      {
        v26 = v25;
        sub_1ADB05D00();

        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      (*(v18 + 56))(v14, v27, 1, v17);
      sub_1AD3DF33C(v14, v16);
      if ((*(v18 + 48))(v16, 1, v17) != 1)
      {
        (*(v18 + 32))(v23, v16, v17);
        v32 = *(v18 + 16);
        v32(v21, v23, v17);
        v33 = type metadata accessor for ProvisioningCarKeyStepTrackKey.TrackedPass();
        v34 = objc_allocWithZone(v33);
        v32(&v34[OBJC_IVAR___PKProvisioningCarKeyStepTrackKeyTrackedPass_passURL], v21, v17);
        v35 = v40;
        *&v34[OBJC_IVAR___PKProvisioningCarKeyStepTrackKeyTrackedPass_subcredential] = v40;
        v42.receiver = v34;
        v42.super_class = v33;
        v36 = v35;
        v37 = objc_msgSendSuper2(&v42, sel_init);
        v38 = *(v18 + 8);
        v38(v21, v17);
        v41(v37, 0);

        v38(v23, v17);
        return;
      }
    }

    else
    {
      (*(v18 + 56))(v16, 1, 1, v17);
    }

    sub_1AD4DF134(v16);
  }

  swift_beginAccess();
  v28 = *(a4 + 16);
  if (v28)
  {
    v29 = v28;
    v41(v28, 1);
  }

  else
  {
    v30 = [objc_opt_self() errorWithSeverity_];
    v31 = sub_1ADB06370();
    [v30 addInternalDebugDescription_];

    v29 = v30;
    v41(v30, 1);
  }
}

void sub_1AD4DE81C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;

  sub_1AD4DCB90(v73);
  if (*(&v73[0] + 1) == 1)
  {
    v13 = [objc_opt_self() errorWithSeverity_];
    v14 = sub_1ADB06370();
    [v13 addInternalDebugDescription_];

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(a4 + 24);
      ObjectType = swift_getObjectType();
      v17 = *(v15 + 64);
      v18 = v13;
      v17(v13, 1, a5, a6, ObjectType, v15);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v55 = v73[0];
    v60 = a1;
    v56 = v12;
    v51 = v73[1];
    v52 = v74;
    v19 = [*(a3 + 56) sid];
    v63 = sub_1ADB063B0();
    v57 = v20;

    v21 = *(a3 + 16);
    swift_beginAccess();
    v64 = *(v21 + 64);
    v23 = *(v21 + 72);
    v22 = *(v21 + 80);
    v24 = objc_allocWithZone(PKAsyncUnaryOperationComposer);
    v65 = v22;
    v54 = v22;
    v58 = v23;
    v62 = [v24 init];
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v61 = v26;
    if (!a2)
    {
      v28 = swift_allocObject();
      v28[2] = a3;
      v28[3] = v58;
      v28[4] = v60;
      v28[5] = v63;
      v28[6] = v57;
      v28[7] = v26;
      v28[8] = v25;
      v71 = sub_1AD4DF0E4;
      v72 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v68 = 1107296256;
      v69 = sub_1AD433EF4;
      v70 = &block_descriptor_43_0;
      v29 = _Block_copy(&aBlock);
      v30 = v58;

      v31 = v60;

      [v62 addOperation_];
      _Block_release(v29);
      v32 = swift_allocObject();
      v32[2] = v31;
      v32[3] = v63;
      v32[4] = v57;
      v32[5] = v30;
      v32[6] = v27;
      v32[7] = v25;
      v71 = sub_1AD4DF0E8;
      v72 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v68 = 1107296256;
      a2 = 0;
      v69 = sub_1AD433EF4;
      v70 = &block_descriptor_49_0;
      v33 = _Block_copy(&aBlock);
      v34 = v30;
      v35 = v31;

      v26 = v61;
      [v62 addOperation_];
      _Block_release(v33);
    }

    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = swift_allocObject();
    *(v39 + 16) = v55;
    *(v39 + 32) = v51;
    *(v39 + 48) = v52;
    *(v39 + 56) = a2;
    *(v39 + 64) = v27;
    *(v39 + 72) = v60;
    *(v39 + 80) = v26;
    *(v39 + 88) = v36;
    *(v39 + 96) = v64;
    *(v39 + 104) = v58;
    *(v39 + 112) = v65;
    *(v39 + 120) = v63;
    *(v39 + 128) = v57;
    *(v39 + 136) = v58;
    *(v39 + 144) = v38;
    *(v39 + 152) = v25;
    *(v39 + 160) = v37;
    v71 = sub_1AD4DF0B0;
    v72 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v68 = 1107296256;
    v69 = sub_1AD433EF4;
    v70 = &block_descriptor_36;
    v40 = _Block_copy(&aBlock);
    v53 = v58;
    v59 = v54;
    v41 = v60;

    sub_1AD4DF0CC(a2);

    [v62 addOperation_];
    _Block_release(v40);
    v42 = swift_allocObject();
    *(v42 + 16) = a2;
    *(v42 + 24) = v37;
    *(v42 + 32) = v63;
    *(v42 + 40) = v57;
    *(v42 + 48) = v64;
    *(v42 + 56) = v53;
    *(v42 + 64) = v65;
    *(v42 + 72) = v41;
    *(v42 + 80) = v25;
    v71 = sub_1AD4DF0DC;
    v72 = v42;
    aBlock = MEMORY[0x1E69E9820];
    v68 = 1107296256;
    v69 = sub_1AD433EF4;
    v70 = &block_descriptor_31;
    v43 = _Block_copy(&aBlock);
    v44 = v53;
    v66 = v59;
    v45 = v41;

    sub_1AD4DF0CC(a2);

    [v62 addOperation_];
    _Block_release(v43);
    v46 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v47 = swift_allocObject();
    v47[2] = v25;
    v47[3] = v37;
    v47[4] = sub_1AD4DF0A0;
    v47[5] = v56;
    v47[6] = v45;
    v71 = sub_1AD4DF0E0;
    v72 = v47;
    aBlock = MEMORY[0x1E69E9820];
    v68 = 1107296256;
    v69 = sub_1AD434CF8;
    v70 = &block_descriptor_37;
    v48 = _Block_copy(&aBlock);
    v49 = v45;

    v50 = [v62 evaluateWithInput:v46 completion:v48];
    _Block_release(v48);

    swift_unknownObjectRelease();
  }
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1AD4DF0CC(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1AD4DF134(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AD4DF1DC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;

  sub_1AD4DCB90(v73);
  if (*(&v73[0] + 1) == 1)
  {
    v13 = [objc_opt_self() errorWithSeverity_];
    v14 = sub_1ADB06370();
    [v13 addInternalDebugDescription_];

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(a4 + 24);
      ObjectType = swift_getObjectType();
      v17 = *(v15 + 64);
      v18 = v13;
      v17(v13, 1, a5, a6, ObjectType, v15);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v55 = v73[0];
    v60 = a1;
    v56 = v12;
    v51 = v73[1];
    v52 = v74;
    v19 = [*(a3 + 56) sid];
    v63 = sub_1ADB063B0();
    v57 = v20;

    v21 = *(a3 + 16);
    swift_beginAccess();
    v64 = *(v21 + 64);
    v23 = *(v21 + 72);
    v22 = *(v21 + 80);
    v24 = objc_allocWithZone(PKAsyncUnaryOperationComposer);
    v65 = v22;
    v54 = v22;
    v58 = v23;
    v62 = [v24 init];
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v61 = v26;
    if (!a2)
    {
      v28 = swift_allocObject();
      v28[2] = a3;
      v28[3] = v58;
      v28[4] = v60;
      v28[5] = v63;
      v28[6] = v57;
      v28[7] = v26;
      v28[8] = v25;
      v71 = sub_1AD4E0B90;
      v72 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v68 = 1107296256;
      v69 = sub_1AD433EF4;
      v70 = &block_descriptor_159;
      v29 = _Block_copy(&aBlock);
      v30 = v58;

      v31 = v60;

      [v62 addOperation_];
      _Block_release(v29);
      v32 = swift_allocObject();
      v32[2] = v31;
      v32[3] = v63;
      v32[4] = v57;
      v32[5] = v30;
      v32[6] = v27;
      v32[7] = v25;
      v71 = sub_1AD4E0B94;
      v72 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v68 = 1107296256;
      a2 = 0;
      v69 = sub_1AD433EF4;
      v70 = &block_descriptor_166_0;
      v33 = _Block_copy(&aBlock);
      v34 = v30;
      v35 = v31;

      v26 = v61;
      [v62 addOperation_];
      _Block_release(v33);
    }

    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = swift_allocObject();
    *(v39 + 16) = v55;
    *(v39 + 32) = v51;
    *(v39 + 48) = v52;
    *(v39 + 56) = a2;
    *(v39 + 64) = v27;
    *(v39 + 72) = v60;
    *(v39 + 80) = v26;
    *(v39 + 88) = v36;
    *(v39 + 96) = v64;
    *(v39 + 104) = v58;
    *(v39 + 112) = v65;
    *(v39 + 120) = v63;
    *(v39 + 128) = v57;
    *(v39 + 136) = v58;
    *(v39 + 144) = v38;
    *(v39 + 152) = v25;
    *(v39 + 160) = v37;
    v71 = sub_1AD4E0B88;
    v72 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v68 = 1107296256;
    v69 = sub_1AD433EF4;
    v70 = &block_descriptor_138;
    v40 = _Block_copy(&aBlock);
    v53 = v58;
    v59 = v54;
    v41 = v60;

    sub_1AD4DF0CC(a2);

    [v62 addOperation_];
    _Block_release(v40);
    v42 = swift_allocObject();
    *(v42 + 16) = a2;
    *(v42 + 24) = v37;
    *(v42 + 32) = v63;
    *(v42 + 40) = v57;
    *(v42 + 48) = v64;
    *(v42 + 56) = v53;
    *(v42 + 64) = v65;
    *(v42 + 72) = v41;
    *(v42 + 80) = v25;
    v71 = sub_1AD4E0B8C;
    v72 = v42;
    aBlock = MEMORY[0x1E69E9820];
    v68 = 1107296256;
    v69 = sub_1AD433EF4;
    v70 = &block_descriptor_145_0;
    v43 = _Block_copy(&aBlock);
    v44 = v53;
    v66 = v59;
    v45 = v41;

    sub_1AD4DF0CC(a2);

    [v62 addOperation_];
    _Block_release(v43);
    v46 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v47 = swift_allocObject();
    v47[2] = v25;
    v47[3] = v37;
    v47[4] = sub_1AD4DF0A0;
    v47[5] = v56;
    v47[6] = v45;
    v71 = sub_1AD4E0B84;
    v72 = v47;
    aBlock = MEMORY[0x1E69E9820];
    v68 = 1107296256;
    v69 = sub_1AD434CF8;
    v70 = &block_descriptor_152;
    v48 = _Block_copy(&aBlock);
    v49 = v45;

    v50 = [v62 evaluateWithInput:v46 completion:v48];
    _Block_release(v48);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1AD4DFA60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, void *, uint64_t, uint64_t, uint64_t, uint64_t))
{

  v12 = [a1 trackingRequest];
  if (v12)
  {
    v13 = v12;

    v14 = v13;
    a6(a1, v13, a2, a3, a4, a5);
  }

  else
  {
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
      v31[0] = v20;
      *v19 = 136315138;
      v21 = [*(a2 + 56) sid];
      v22 = sub_1ADB063B0();
      v24 = v23;

      v25 = sub_1AD3CA88C(v22, v24, v31);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_1AD337000, v17, v18, "[%s] Unable to find tracking request for subcredential", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1B26F9F20](v20, -1, -1);
      MEMORY[0x1B26F9F20](v19, -1, -1);
    }

    v26 = [objc_opt_self() errorWithSeverity_];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = *(a3 + 24);
      ObjectType = swift_getObjectType();
      v29 = *(v27 + 64);
      v30 = v26;
      v29(v26, 1, a4, a5, ObjectType, v27);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1AD4DFD4C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;

  sub_1AD4DCB90(v73);
  if (*(&v73[0] + 1) == 1)
  {
    v13 = [objc_opt_self() errorWithSeverity_];
    v14 = sub_1ADB06370();
    [v13 addInternalDebugDescription_];

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(a4 + 24);
      ObjectType = swift_getObjectType();
      v17 = *(v15 + 64);
      v18 = v13;
      v17(v13, 1, a5, a6, ObjectType, v15);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v55 = v73[0];
    v60 = a1;
    v56 = v12;
    v51 = v73[1];
    v52 = v74;
    v19 = [*(a3 + 56) sid];
    v63 = sub_1ADB063B0();
    v57 = v20;

    v21 = *(a3 + 16);
    swift_beginAccess();
    v64 = *(v21 + 64);
    v23 = *(v21 + 72);
    v22 = *(v21 + 80);
    v24 = objc_allocWithZone(PKAsyncUnaryOperationComposer);
    v65 = v22;
    v54 = v22;
    v58 = v23;
    v62 = [v24 init];
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v61 = v26;
    if (!a2)
    {
      v28 = swift_allocObject();
      v28[2] = a3;
      v28[3] = v58;
      v28[4] = v60;
      v28[5] = v63;
      v28[6] = v57;
      v28[7] = v26;
      v28[8] = v25;
      v71 = sub_1AD4E0B90;
      v72 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v68 = 1107296256;
      v69 = sub_1AD433EF4;
      v70 = &block_descriptor_115_0;
      v29 = _Block_copy(&aBlock);
      v30 = v58;

      v31 = v60;

      [v62 addOperation_];
      _Block_release(v29);
      v32 = swift_allocObject();
      v32[2] = v31;
      v32[3] = v63;
      v32[4] = v57;
      v32[5] = v30;
      v32[6] = v27;
      v32[7] = v25;
      v71 = sub_1AD4E0B94;
      v72 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v68 = 1107296256;
      a2 = 0;
      v69 = sub_1AD433EF4;
      v70 = &block_descriptor_122;
      v33 = _Block_copy(&aBlock);
      v34 = v30;
      v35 = v31;

      v26 = v61;
      [v62 addOperation_];
      _Block_release(v33);
    }

    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = swift_allocObject();
    *(v39 + 16) = v55;
    *(v39 + 32) = v51;
    *(v39 + 48) = v52;
    *(v39 + 56) = a2;
    *(v39 + 64) = v27;
    *(v39 + 72) = v60;
    *(v39 + 80) = v26;
    *(v39 + 88) = v36;
    *(v39 + 96) = v64;
    *(v39 + 104) = v58;
    *(v39 + 112) = v65;
    *(v39 + 120) = v63;
    *(v39 + 128) = v57;
    *(v39 + 136) = v58;
    *(v39 + 144) = v38;
    *(v39 + 152) = v25;
    *(v39 + 160) = v37;
    v71 = sub_1AD4E0B88;
    v72 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v68 = 1107296256;
    v69 = sub_1AD433EF4;
    v70 = &block_descriptor_94_1;
    v40 = _Block_copy(&aBlock);
    v53 = v58;
    v59 = v54;
    v41 = v60;

    sub_1AD4DF0CC(a2);

    [v62 addOperation_];
    _Block_release(v40);
    v42 = swift_allocObject();
    *(v42 + 16) = a2;
    *(v42 + 24) = v37;
    *(v42 + 32) = v63;
    *(v42 + 40) = v57;
    *(v42 + 48) = v64;
    *(v42 + 56) = v53;
    *(v42 + 64) = v65;
    *(v42 + 72) = v41;
    *(v42 + 80) = v25;
    v71 = sub_1AD4E0B8C;
    v72 = v42;
    aBlock = MEMORY[0x1E69E9820];
    v68 = 1107296256;
    v69 = sub_1AD433EF4;
    v70 = &block_descriptor_101;
    v43 = _Block_copy(&aBlock);
    v44 = v53;
    v66 = v59;
    v45 = v41;

    sub_1AD4DF0CC(a2);

    [v62 addOperation_];
    _Block_release(v43);
    v46 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v47 = swift_allocObject();
    v47[2] = v25;
    v47[3] = v37;
    v47[4] = sub_1AD4DF0A0;
    v47[5] = v56;
    v47[6] = v45;
    v71 = sub_1AD4E0B84;
    v72 = v47;
    aBlock = MEMORY[0x1E69E9820];
    v68 = 1107296256;
    v69 = sub_1AD434CF8;
    v70 = &block_descriptor_108;
    v48 = _Block_copy(&aBlock);
    v49 = v45;

    v50 = [v62 evaluateWithInput:v46 completion:v48];
    _Block_release(v48);

    swift_unknownObjectRelease();
  }
}

id sub_1AD4E05B8(id a1)
{
  v1 = a1;
  if (!a1)
  {
    goto LABEL_14;
  }

  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BD40);
  sub_1AD3D3200(0, &qword_1EB599EC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v1 = sub_1ADB05CB0();
LABEL_14:
    v11 = [objc_opt_self() errorWithUnderlyingError:v1 defaultSeverity:5];
    goto LABEL_15;
  }

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
      goto LABEL_12;
    }
  }

  if ([v15 code] != 40102)
  {
LABEL_12:

    goto LABEL_13;
  }

  v10 = sub_1ADB06370();
  v1 = sub_1ADB06370();
  v11 = [objc_opt_self() errorWithTitleKey:v10 messageKey:v1 severity:3];

LABEL_15:
  v12 = v11;
  v13 = sub_1ADB06370();
  [v12 addInternalDebugDescription_];

  return v12;
}

uint64_t objectdestroy_24Tm()
{

  v1 = *(v0 + 56);
  if (v1 >= 2)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t objectdestroy_27Tm_1()
{
  v1 = *(v0 + 16);
  if (v1 >= 2)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t objectdestroy_33Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_39Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t objectdestroy_45Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

id FlightLiveActivityAttributes.ContentState.flight.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t FlightLiveActivityAttributes.ContentState.seatNumber.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FlightLiveActivityAttributes.ContentState.boardingGroup.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t FlightLiveActivityAttributes.ContentState.boardingZone.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t type metadata accessor for FlightLiveActivityAttributes.ContentState()
{
  result = qword_1EB597FE8;
  if (!qword_1EB597FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FlightLiveActivityAttributes.ContentState.passUniqueID.getter()
{
  v1 = *(v0 + *(type metadata accessor for FlightLiveActivityAttributes.ContentState() + 36));

  return v1;
}

uint64_t FlightLiveActivityAttributes.ContentState.currentTimeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlightLiveActivityAttributes.ContentState() + 44);
  v4 = sub_1ADB05EE0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlightLiveActivityAttributes.ContentState.destinationWeatherSymbol.getter()
{
  v1 = *(v0 + *(type metadata accessor for FlightLiveActivityAttributes.ContentState() + 52));

  return v1;
}

uint64_t FlightLiveActivityAttributes.ContentState.destinationWeatherConditionString.getter()
{
  v1 = *(v0 + *(type metadata accessor for FlightLiveActivityAttributes.ContentState() + 56));

  return v1;
}

uint64_t FlightLiveActivityAttributes.ContentState.flightIdentifier.getter()
{
  v1 = [*v0 identifier];
  v2 = sub_1ADB063B0();

  return v2;
}

uint64_t FlightLiveActivityAttributes.ContentState.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlightLiveActivityAttributes.ContentState() + 64);
  v4 = sub_1ADB05DE0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlightLiveActivityAttributes.ContentState.init(sharedFlight:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  v4 = type metadata accessor for FlightLiveActivityAttributes.ContentState();
  v5 = a1;
  sub_1ADB05DC0();
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  v6 = v4[8];
  v7 = sub_1ADB05DE0();
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = (a2 + v4[9]);
  *v8 = 0;
  v8[1] = 0;
  v9 = v4[10];
  v10 = sub_1ADB05D20();
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  sub_1ADB05ED0();

  *(a2 + v4[12]) = 1;
  v11 = (a2 + v4[13]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + v4[14]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v4[15];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C0A0);
  v15 = *(*(v14 - 8) + 56);

  return v15(a2 + v13, 1, 1, v14);
}

uint64_t FlightLiveActivityAttributes.ContentState.init(seedUniqueIdentifier:flight:passContent:destinationWeatherSymbol:destinationWeatherConditionString:destinationTemperature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v68 = a6;
  v69 = a7;
  v66 = a1;
  v67 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598880);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v65 = &v64 - v16;
  *a9 = a3;
  v17 = a3;
  v18 = [a4 allSemantics];
  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = v18;
  sub_1AD3D3200(0, &qword_1EB59A108);
  v20 = sub_1ADB06280();

  v21 = sub_1ADB063B0();
  if (!*(v20 + 16))
  {

    goto LABEL_8;
  }

  v23 = sub_1AD425BEC(v21, v22);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_8:

LABEL_9:
    *(a9 + 1) = 0;
    *(a9 + 2) = 0;
    goto LABEL_10;
  }

  v26 = *(*(v20 + 56) + 8 * v23);

  v27 = [objc_allocWithZone(PKSeatingInformation) initFromSemantic_];
  if (v27)
  {
    v28 = v27;
    v29 = v17;
    v30 = a8;
    v31 = [v27 displayableAirlineSeatsString];
    if (v31)
    {
      v32 = v31;
      v33 = sub_1ADB063B0();
      v35 = v34;
    }

    else
    {

      v33 = 0;
      v35 = 0;
    }

    a8 = v30;
    v17 = v29;
  }

  else
  {

    v33 = 0;
    v35 = 0;
  }

  *(a9 + 1) = v33;
  *(a9 + 2) = v35;
LABEL_10:
  v36 = [a4 stringForSemanticKey_];
  if (v36)
  {
    v37 = v36;
    v38 = sub_1ADB063B0();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v41 = a10;
  *(a9 + 3) = v38;
  *(a9 + 4) = v40;
  v42 = [a4 stringForSemanticKey_];
  if (v42)
  {
    v43 = v42;
    v44 = sub_1ADB063B0();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  *(a9 + 5) = v44;
  *(a9 + 6) = v46;
  v47 = [a4 allSemantics];
  if (v47)
  {
    v48 = v47;
    v64 = a10;
    sub_1AD3D3200(0, &qword_1EB59A108);
    sub_1ADB06280();

    v49 = sub_1ADB06260();

    v50 = [a4 liveDataConfiguration];
    v51 = PKComputedBoardingDateForSemantics(v49, v17, v50);

    if (v51)
    {
      v52 = v65;
      sub_1ADB05DB0();

      v53 = sub_1ADB05DE0();
      (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
    }

    else
    {
      v57 = sub_1ADB05DE0();
      v52 = v65;
      (*(*(v57 - 8) + 56))(v65, 1, 1, v57);
    }

    v54 = type metadata accessor for FlightLiveActivityAttributes.ContentState();
    sub_1AD412094(v52, &a9[v54[8]], &qword_1EB598880);
    v41 = v64;
  }

  else
  {

    v54 = type metadata accessor for FlightLiveActivityAttributes.ContentState();
    v55 = v54[8];
    v56 = sub_1ADB05DE0();
    (*(*(v56 - 8) + 56))(&a9[v55], 1, 1, v56);
  }

  type metadata accessor for FlightLiveActivityAttributes.ContentState();
  v58 = &a9[v54[9]];
  v59 = v66;
  *v58 = v66;
  v58[1] = a2;

  static Utilities.walletUrlForPass(with:)(v59, a2);

  sub_1ADB05DC0();
  sub_1ADB05ED0();

  a9[v54[12]] = 0;
  v60 = &a9[v54[13]];
  v61 = v68;
  *v60 = v67;
  *(v60 + 1) = v61;
  v62 = &a9[v54[14]];
  *v62 = v69;
  *(v62 + 1) = a8;
  return sub_1AD412094(v41, &a9[v54[15]], &qword_1EB59C098);
}

unint64_t sub_1AD4E16A4(char a1)
{
  result = 0x746867696C66;
  switch(a1)
  {
    case 1:
      result = 0x626D754E74616573;
      break;
    case 2:
    case 3:
    case 4:
      result = 0x676E696472616F62;
      break;
    case 5:
      result = 0x71696E5573736170;
      break;
    case 6:
      result = 7107189;
      break;
    case 7:
      result = 0x54746E6572727563;
      break;
    case 8:
      result = 0x6970696365527369;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000021;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AD4E182C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AD4E4A9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AD4E1854(uint64_t a1)
{
  v2 = sub_1AD4E4290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AD4E1890(uint64_t a1)
{
  v2 = sub_1AD4E4290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FlightLiveActivityAttributes.ContentState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C0A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AD4E4290();
  sub_1ADB07150();
  v14 = *v3;
  v13 = 0;
  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C0B8);
  sub_1AD43FACC(&qword_1EB59C0C0, &qword_1EB59C0B8);
  sub_1ADB06ED0();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v14) = 1;
    sub_1ADB06E50();
    LOBYTE(v14) = 2;
    sub_1ADB06E50();
    LOBYTE(v14) = 3;
    sub_1ADB06E50();
    v10 = type metadata accessor for FlightLiveActivityAttributes.ContentState();
    LOBYTE(v14) = 4;
    sub_1ADB05DE0();
    sub_1AD4E4ECC(&qword_1EB5995B0, MEMORY[0x1E6969530]);
    sub_1ADB06E90();
    LOBYTE(v14) = 5;
    sub_1ADB06E50();
    v12 = v10[10];
    LOBYTE(v14) = 6;
    sub_1ADB05D20();
    sub_1AD4E4ECC(&qword_1EB599028, MEMORY[0x1E6968FB0]);
    sub_1ADB06E90();
    v12 = v10[11];
    LOBYTE(v14) = 7;
    sub_1ADB05EE0();
    sub_1AD4E4ECC(&qword_1EB59C0C8, MEMORY[0x1E6969BC0]);
    sub_1ADB06ED0();
    LOBYTE(v14) = 8;
    sub_1ADB06EB0();
    LOBYTE(v14) = 9;
    sub_1ADB06E50();
    LOBYTE(v14) = 10;
    sub_1ADB06E50();
    v12 = v10[15];
    LOBYTE(v14) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C0A0);
    sub_1AD43FACC(&qword_1EB59C0D0, &qword_1EB59C0A0);
    sub_1ADB06E90();
    LOBYTE(v14) = 12;
    sub_1ADB06ED0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FlightLiveActivityAttributes.ContentState.hash(into:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C0A0);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C098);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v26 - v5;
  v6 = sub_1ADB05D20();
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AE30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v31 = sub_1ADB05DE0();
  v11 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598880);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - v15;
  sub_1ADB069E0();
  if (v0[2])
  {
    sub_1ADB070B0();
    sub_1ADB06460();
    if (v0[4])
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1ADB070B0();
    if (v0[6])
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1ADB070B0();
  if (!v0[4])
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1ADB070B0();
  sub_1ADB06460();
  if (v0[6])
  {
LABEL_4:
    sub_1ADB070B0();
    sub_1ADB06460();
    goto LABEL_8;
  }

LABEL_7:
  sub_1ADB070B0();
LABEL_8:
  v17 = type metadata accessor for FlightLiveActivityAttributes.ContentState();
  sub_1AD3D0E9C(v0 + v17[8], v16, &qword_1EB598880);
  v18 = v31;
  if ((*(v11 + 48))(v16, 1, v31) == 1)
  {
    sub_1ADB070B0();
  }

  else
  {
    (*(v11 + 32))(v13, v16, v18);
    sub_1ADB070B0();
    sub_1AD4E4ECC(&qword_1EB59C0D8, MEMORY[0x1E6969530]);
    sub_1ADB062E0();
    (*(v11 + 8))(v13, v18);
  }

  if (*(v0 + v17[9] + 8))
  {
    sub_1ADB070B0();
    sub_1ADB06460();
  }

  else
  {
    sub_1ADB070B0();
  }

  sub_1AD3D0E9C(v0 + v17[10], v10, &qword_1EB59AE30);
  v19 = v29;
  if ((*(v29 + 48))(v10, 1, v6) == 1)
  {
    sub_1ADB070B0();
  }

  else
  {
    v20 = v27;
    (*(v19 + 32))(v27, v10, v6);
    sub_1ADB070B0();
    sub_1AD4E4ECC(&qword_1EB59A138, MEMORY[0x1E6968FB0]);
    sub_1ADB062E0();
    (*(v19 + 8))(v20, v6);
  }

  sub_1ADB05EE0();
  sub_1AD4E4ECC(&qword_1EB59C0E0, MEMORY[0x1E6969BC0]);
  sub_1ADB062E0();
  sub_1ADB070B0();
  if (*(v0 + v17[13] + 8))
  {
    sub_1ADB070B0();
    sub_1ADB06460();
  }

  else
  {
    sub_1ADB070B0();
  }

  if (*(v0 + v17[14] + 8))
  {
    sub_1ADB070B0();
    sub_1ADB06460();
  }

  else
  {
    sub_1ADB070B0();
  }

  v21 = v30;
  sub_1AD3D0E9C(v1 + v17[15], v30, &qword_1EB59C098);
  v23 = v32;
  v22 = v33;
  if ((*(v32 + 48))(v21, 1, v33) == 1)
  {
    sub_1ADB070B0();
  }

  else
  {
    v24 = v28;
    (*(v23 + 32))(v28, v21, v22);
    sub_1ADB070B0();
    sub_1AD43FACC(&qword_1EB59C0E8, &qword_1EB59C0A0);
    sub_1ADB062E0();
    (*(v23 + 8))(v24, v22);
  }

  sub_1AD4E4ECC(&qword_1EB59C0D8, MEMORY[0x1E6969530]);
  return sub_1ADB062E0();
}

uint64_t FlightLiveActivityAttributes.ContentState.hashValue.getter()
{
  sub_1ADB07090();
  FlightLiveActivityAttributes.ContentState.hash(into:)();
  return sub_1ADB070D0();
}

void FlightLiveActivityAttributes.ContentState.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v50 = sub_1ADB05DE0();
  v46 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C098);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v49 = v42 - v5;
  v6 = sub_1ADB05EE0();
  v7 = *(v6 - 8);
  v51 = v6;
  v52 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AE30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598880);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v42 - v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C0F0);
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v17 = v42 - v16;
  v18 = type metadata accessor for FlightLiveActivityAttributes.ContentState();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1AD4E4290();
  v54 = v17;
  v22 = v56;
  sub_1ADB07120();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  else
  {
    v43 = v9;
    v44 = v12;
    v56 = v18;
    v45 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C0B8);
    v58 = 0;
    sub_1AD43FACC(&qword_1EB59C0F8, &qword_1EB59C0B8);
    sub_1ADB06E10();
    v23 = v45;
    *v45 = v59;
    LOBYTE(v59) = 1;
    *(v23 + 1) = sub_1ADB06D90();
    *(v23 + 2) = v24;
    LOBYTE(v59) = 2;
    v42[1] = 0;
    *(v23 + 3) = sub_1ADB06D90();
    *(v23 + 4) = v25;
    LOBYTE(v59) = 3;
    *(v23 + 5) = sub_1ADB06D90();
    *(v23 + 6) = v26;
    LOBYTE(v59) = 4;
    v27 = sub_1AD4E4ECC(&qword_1EB599580, MEMORY[0x1E6969530]);
    sub_1ADB06DD0();
    v28 = v56;
    sub_1AD412094(v15, &v23[v56[8]], &qword_1EB598880);
    LOBYTE(v59) = 5;
    v29 = sub_1ADB06D90();
    v42[0] = v27;
    v30 = &v23[v28[9]];
    *v30 = v29;
    v30[1] = v31;
    sub_1ADB05D20();
    LOBYTE(v59) = 6;
    sub_1AD4E4ECC(&qword_1EB599018, MEMORY[0x1E6968FB0]);
    v32 = v44;
    sub_1ADB06DD0();
    sub_1AD412094(v32, &v23[v28[10]], &qword_1EB59AE30);
    LOBYTE(v59) = 7;
    sub_1AD4E4ECC(&qword_1EB59C100, MEMORY[0x1E6969BC0]);
    v33 = v43;
    v34 = v51;
    sub_1ADB06E10();
    (*(v52 + 32))(&v23[v28[11]], v33, v34);
    LOBYTE(v59) = 8;
    v23[v56[12]] = sub_1ADB06DF0() & 1;
    LOBYTE(v59) = 9;
    v35 = sub_1ADB06D90();
    v36 = &v45[v56[13]];
    *v36 = v35;
    v36[1] = v37;
    LOBYTE(v59) = 10;
    v38 = sub_1ADB06D90();
    v39 = &v45[v56[14]];
    *v39 = v38;
    v39[1] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C0A0);
    LOBYTE(v59) = 11;
    sub_1AD43FACC(&qword_1EB59C108, &qword_1EB59C0A0);
    sub_1ADB06DD0();
    sub_1AD412094(v49, &v45[v56[15]], &qword_1EB59C098);
    LOBYTE(v59) = 12;
    sub_1ADB06E10();
    (*(v53 + 8))(v54, v55);
    v41 = v45;
    (*(v46 + 32))(&v45[v56[16]], v48, v50);
    sub_1AD4E42E4(v41, v47);
    __swift_destroy_boxed_opaque_existential_1(v57);
    sub_1AD4E4348(v41);
  }
}

uint64_t sub_1AD4E31EC()
{
  sub_1ADB07090();
  FlightLiveActivityAttributes.ContentState.hash(into:)();
  return sub_1ADB070D0();
}

uint64_t sub_1AD4E3230()
{
  sub_1ADB07090();
  FlightLiveActivityAttributes.ContentState.hash(into:)();
  return sub_1ADB070D0();
}

uint64_t FlightLiveActivityAttributes.groupIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1AD4E32A8(uint64_t a1)
{
  v2 = sub_1AD4E43A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AD4E32E4(uint64_t a1)
{
  v2 = sub_1AD4E43A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FlightLiveActivityAttributes.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C110);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AD4E43A4();
  sub_1ADB07150();
  sub_1ADB06EA0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t FlightLiveActivityAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C120);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AD4E43A4();
  sub_1ADB07120();
  if (!v2)
  {
    v9 = sub_1ADB06DE0();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1AD4E35E8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C110);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AD4E43A4();
  sub_1ADB07150();
  sub_1ADB06EA0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t _s11PassKitCore28FlightLiveActivityAttributesV12ContentStateV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C0A0);
  v91 = *(v4 - 8);
  v92 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v87 = &v83 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C098);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v89 = &v83 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C178);
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v83 - v8;
  v9 = sub_1ADB05D20();
  v95 = *(v9 - 8);
  v96 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v93 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AE30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v94 = &v83 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A1F0);
  MEMORY[0x1EEE9AC00](v13);
  v97 = &v83 - v14;
  v15 = sub_1ADB05DE0();
  v98 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598880);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v83 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB599318);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v83 - v22;
  sub_1AD3D3200(0, &qword_1EB5982B0);
  if ((sub_1ADB069D0() & 1) == 0)
  {
    goto LABEL_31;
  }

  v24 = a1[2];
  v25 = a2[2];
  if (v24)
  {
    if (!v25 || (a1[1] != a2[1] || v24 != v25) && (sub_1ADB06F50() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v25)
  {
    goto LABEL_31;
  }

  v26 = a1[4];
  v27 = a2[4];
  if (v26)
  {
    if (!v27 || (a1[3] != a2[3] || v26 != v27) && (sub_1ADB06F50() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v27)
  {
    goto LABEL_31;
  }

  v28 = a1[6];
  v29 = a2[6];
  if (v28)
  {
    if (!v29 || (a1[5] != a2[5] || v28 != v29) && (sub_1ADB06F50() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v29)
  {
    goto LABEL_31;
  }

  v30 = type metadata accessor for FlightLiveActivityAttributes.ContentState();
  v85 = a1;
  v86 = a2;
  v84 = v30;
  v31 = *(v30 + 32);
  v32 = *(v21 + 48);
  sub_1AD3D0E9C(a1 + v31, v23, &qword_1EB598880);
  sub_1AD3D0E9C(v86 + v31, &v23[v32], &qword_1EB598880);
  v33 = v98;
  v34 = *(v98 + 48);
  if (v34(v23, 1, v15) == 1)
  {
    if (v34(&v23[v32], 1, v15) == 1)
    {
      sub_1AD3D0E3C(v23, &qword_1EB598880);
      goto LABEL_34;
    }

LABEL_28:
    v35 = &qword_1EB599318;
LABEL_29:
    v36 = v23;
LABEL_30:
    sub_1AD3D0E3C(v36, v35);
    goto LABEL_31;
  }

  sub_1AD3D0E9C(v23, v20, &qword_1EB598880);
  if (v34(&v23[v32], 1, v15) == 1)
  {
    (*(v33 + 8))(v20, v15);
    goto LABEL_28;
  }

  (*(v33 + 32))(v17, &v23[v32], v15);
  sub_1AD4E4ECC(&qword_1EB599320, MEMORY[0x1E6969530]);
  v39 = sub_1ADB06360();
  v40 = *(v33 + 8);
  v40(v17, v15);
  v40(v20, v15);
  sub_1AD3D0E3C(v23, &qword_1EB598880);
  if ((v39 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_34:
  v42 = v84;
  v41 = v85;
  v43 = v84[9];
  v44 = (v85 + v43);
  v45 = *(v85 + v43 + 8);
  v46 = v86;
  v47 = (v86 + v43);
  v48 = v47[1];
  if (v45)
  {
    v23 = v97;
    if (!v48 || (*v44 != *v47 || v45 != v48) && (sub_1ADB06F50() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v23 = v97;
    if (v48)
    {
      goto LABEL_31;
    }
  }

  v49 = v42[10];
  v50 = *(v13 + 48);
  sub_1AD3D0E9C(v41 + v49, v23, &qword_1EB59AE30);
  sub_1AD3D0E9C(v46 + v49, &v23[v50], &qword_1EB59AE30);
  v52 = v95;
  v51 = v96;
  v53 = *(v95 + 48);
  if (v53(v23, 1, v96) != 1)
  {
    v54 = v94;
    sub_1AD3D0E9C(v23, v94, &qword_1EB59AE30);
    if (v53(&v23[v50], 1, v51) != 1)
    {
      v55 = &v23[v50];
      v56 = v93;
      (*(v52 + 32))(v93, v55, v51);
      sub_1AD4E4ECC(&qword_1EB59A1F8, MEMORY[0x1E6968FB0]);
      v57 = sub_1ADB06360();
      v58 = *(v52 + 8);
      v58(v56, v51);
      v58(v54, v51);
      sub_1AD3D0E3C(v23, &qword_1EB59AE30);
      if ((v57 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_48;
    }

    (*(v52 + 8))(v54, v51);
    goto LABEL_46;
  }

  if (v53(&v23[v50], 1, v51) != 1)
  {
LABEL_46:
    v35 = &qword_1EB59A1F0;
    goto LABEL_29;
  }

  sub_1AD3D0E3C(v23, &qword_1EB59AE30);
LABEL_48:
  v59 = v85;
  if ((MEMORY[0x1B26F5F50](v85 + v42[11], v46 + v42[11]) & 1) == 0 || *(v59 + v42[12]) != *(v46 + v42[12]))
  {
    goto LABEL_31;
  }

  v60 = v42[13];
  v61 = (v59 + v60);
  v62 = *(v59 + v60 + 8);
  v63 = (v46 + v60);
  v64 = v63[1];
  if (v62)
  {
    if (!v64 || (*v61 != *v63 || v62 != v64) && (sub_1ADB06F50() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v64)
  {
    goto LABEL_31;
  }

  v65 = v42[14];
  v66 = (v59 + v65);
  v67 = *(v59 + v65 + 8);
  v68 = (v46 + v65);
  v69 = v68[1];
  if (v67)
  {
    if (!v69 || (*v66 != *v68 || v67 != v69) && (sub_1ADB06F50() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v69)
  {
    goto LABEL_31;
  }

  v70 = v42[15];
  v71 = *(v88 + 48);
  v72 = v90;
  sub_1AD3D0E9C(v85 + v70, v90, &qword_1EB59C098);
  sub_1AD3D0E9C(v46 + v70, v72 + v71, &qword_1EB59C098);
  v73 = v92;
  v74 = *(v91 + 48);
  if (v74(v72, 1, v92) == 1)
  {
    if (v74(v72 + v71, 1, v73) == 1)
    {
      sub_1AD3D0E3C(v72, &qword_1EB59C098);
LABEL_71:
      v37 = sub_1ADB05DA0();
      return v37 & 1;
    }

    goto LABEL_69;
  }

  sub_1AD3D0E9C(v72, v89, &qword_1EB59C098);
  if (v74(v72 + v71, 1, v73) == 1)
  {
    (*(v91 + 8))(v89, v92);
    v72 = v90;
LABEL_69:
    v35 = &qword_1EB59C178;
    v36 = v72;
    goto LABEL_30;
  }

  v76 = v90;
  v75 = v91;
  v77 = v90 + v71;
  v78 = v87;
  v79 = v92;
  (*(v91 + 32))(v87, v77, v92);
  sub_1AD43FACC(&unk_1EB59C180, &qword_1EB59C0A0);
  v80 = v89;
  v81 = sub_1ADB06360();
  v82 = *(v75 + 8);
  v82(v78, v79);
  v82(v80, v79);
  sub_1AD3D0E3C(v76, &qword_1EB59C098);
  if (v81)
  {
    goto LABEL_71;
  }

LABEL_31:
  v37 = 0;
  return v37 & 1;
}

unint64_t sub_1AD4E4290()
{
  result = qword_1EB59C0B0;
  if (!qword_1EB59C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C0B0);
  }

  return result;
}

uint64_t sub_1AD4E42E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlightLiveActivityAttributes.ContentState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AD4E4348(uint64_t a1)
{
  v2 = type metadata accessor for FlightLiveActivityAttributes.ContentState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AD4E43A4()
{
  result = qword_1EB59C118;
  if (!qword_1EB59C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C118);
  }

  return result;
}

unint64_t sub_1AD4E4444()
{
  result = qword_1EB597FD8;
  if (!qword_1EB597FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB597FD8);
  }

  return result;
}

unint64_t sub_1AD4E449C()
{
  result = qword_1EB597FE0;
  if (!qword_1EB597FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB597FE0);
  }

  return result;
}

void sub_1AD4E4600()
{
  sub_1AD4E474C();
  if (v0 <= 0x3F)
  {
    sub_1AD48847C();
    if (v1 <= 0x3F)
    {
      sub_1AD4E47B4(319, &qword_1EB598BA8, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        sub_1AD4E47B4(319, &qword_1EB5980B8, MEMORY[0x1E6968FB0]);
        if (v3 <= 0x3F)
        {
          sub_1ADB05EE0();
          if (v4 <= 0x3F)
          {
            sub_1AD4E4808();
            if (v5 <= 0x3F)
            {
              sub_1ADB05DE0();
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

void sub_1AD4E474C()
{
  if (!qword_1EB598018[0])
  {
    sub_1AD3D3200(255, &qword_1EB597F38);
    v0 = type metadata accessor for CodableWrapper();
    if (!v1)
    {
      atomic_store(v0, qword_1EB598018);
    }
  }
}

void sub_1AD4E47B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1ADB06A20();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AD4E4808()
{
  if (!qword_1EB5980A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB59C0A0);
    v0 = sub_1ADB06A20();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB5980A8);
    }
  }
}

unint64_t sub_1AD4E4890()
{
  result = qword_1EB59C148;
  if (!qword_1EB59C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C148);
  }

  return result;
}

unint64_t sub_1AD4E48E8()
{
  result = qword_1EB59C150;
  if (!qword_1EB59C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C150);
  }

  return result;
}

unint64_t sub_1AD4E4940()
{
  result = qword_1EB59C158;
  if (!qword_1EB59C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C158);
  }

  return result;
}

unint64_t sub_1AD4E4998()
{
  result = qword_1EB59C160;
  if (!qword_1EB59C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C160);
  }

  return result;
}

unint64_t sub_1AD4E49F0()
{
  result = qword_1EB59C168;
  if (!qword_1EB59C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C168);
  }

  return result;
}

unint64_t sub_1AD4E4A48()
{
  result = qword_1EB59C170;
  if (!qword_1EB59C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C170);
  }

  return result;
}

uint64_t sub_1AD4E4A9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746867696C66 && a2 == 0xE600000000000000;
  if (v4 || (sub_1ADB06F50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x626D754E74616573 && a2 == 0xEA00000000007265 || (sub_1ADB06F50() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696472616F62 && a2 == 0xED000070756F7247 || (sub_1ADB06F50() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696472616F62 && a2 == 0xEC000000656E6F5ALL || (sub_1ADB06F50() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E696472616F62 && a2 == 0xEC000000656D6954 || (sub_1ADB06F50() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x71696E5573736170 && a2 == 0xEC00000044496575 || (sub_1ADB06F50() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1ADB06F50() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x54746E6572727563 && a2 == 0xEF656E6F5A656D69 || (sub_1ADB06F50() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6970696365527369 && a2 == 0xEB00000000746E65 || (sub_1ADB06F50() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001ADBA2A60 == a2 || (sub_1ADB06F50() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001ADBA2A80 == a2 || (sub_1ADB06F50() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001ADBA2AB0 == a2 || (sub_1ADB06F50() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 12;
  }

  else
  {
    v6 = sub_1ADB06F50();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1AD4E4ECC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 ProvisioningStepCompleteTransfer.__allocating_init(context:credential:sharedState:)(uint64_t a1, __n128 *a2, uint64_t a3)
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

uint64_t ProvisioningStepCompleteTransfer.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t ProvisioningStepCompleteTransfer.deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t ProvisioningStepCompleteTransfer.__deallocating_deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

__n128 sub_1AD4E5024@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for ProvisioningStepCompleteTransfer();
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

void sub_1AD4E50DC(char a1, id a2, void (*a3)(id, uint64_t))
{
  if (a1)
  {
    a3(0, 0);
  }

  else
  {
    if (a2)
    {
      v5 = a2;
      v6 = sub_1ADB05CB0();
      v7 = [objc_opt_self() errorWithUnderlyingError:v6 defaultSeverity:5];
    }

    else
    {
      v7 = [objc_opt_self() errorWithCommonType:1 severity:5];
    }

    v9 = v7;
    v8 = sub_1ADB06370();
    [v9 addInternalDebugDescription_];

    a3(v9, 1);
  }
}

void sub_1AD4E5234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = *(a1 + 16);
  if (*(v9 + 40))
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(a2 + 24);
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 8);

      v12(0, 0, a3, a4, ObjectType, v10);
LABEL_9:

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v24 = *(a1 + 24);
    v25 = v13;
    LOBYTE(v26) = v14;

    ProvisioningCredentialsConfiguration.Credential.transferType.getter(v29);
    if (v29[0] != 2 && (v29[0] & 1) == 0 && !*(a1 + 48))
    {
      v17 = [*(a1 + 24) localPassCredential];
      if (v17)
      {
        v18 = v17;
        swift_beginAccess();
        v19 = *(v9 + 16);
        v20 = swift_allocObject();
        *(v20 + 16) = sub_1AD42F778;
        *(v20 + 24) = v8;
        v27 = sub_1AD4E5514;
        v28 = v20;
        *&v24 = MEMORY[0x1E69E9820];
        *(&v24 + 1) = 1107296256;
        v25 = sub_1AD3D96E8;
        v26 = &block_descriptor_37;
        v21 = _Block_copy(&v24);
        v22 = v19;
        v23 = v18;

        [v22 cleanupTransferredCredentialFromSourceDevice:v23 completion:v21];
        _Block_release(v21);

        return;
      }
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(a2 + 24);
      v16 = swift_getObjectType();
      (*(v15 + 8))(0, 0, a3, a4, v16, v15);
      goto LABEL_9;
    }
  }
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 ProvisioningCarKeyStepActivation.__allocating_init(context:credential:sharedState:)(uint64_t a1, __n128 *a2, uint64_t a3)
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

uint64_t ProvisioningCarKeyStepActivation.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t ProvisioningCarKeyStepActivation.deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t ProvisioningCarKeyStepActivation.__deallocating_deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

__n128 sub_1AD4E5644@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for ProvisioningCarKeyStepActivation();
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

void sub_1AD4E570C(void *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6, void (*a7)(id), uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  v17 = sub_1AD436BC0(a1, [a3 supportedRadioTechnologies]);
  v19 = v17;
  v21 = v20;
  v67 = a7;
  if (v18 <= 1u)
  {
    if (v18)
    {
      v62 = a4;
      v22 = qword_1EB5981C0;
      v23 = v17;
      if (v22 != -1)
      {
        swift_once();
      }

      v24 = sub_1ADB05FA0();
      __swift_project_value_buffer(v24, qword_1EB59AB68);
      v25 = v23;

      v26 = sub_1ADB05F80();
      v27 = sub_1ADB06860();

      if (os_log_type_enabled(v26, v27))
      {
        v63 = a8;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v64 = v21;
        v30 = swift_slowAlloc();
        aBlock = v30;
        *v28 = 136315394;
        *(v28 + 4) = sub_1AD3CA88C(v62, a5, &aBlock);
        *(v28 + 12) = 2112;
        *(v28 + 14) = v25;
        *v29 = v19;
        v31 = v25;
        _os_log_impl(&dword_1AD337000, v26, v27, "[%s] data required %@", v28, 0x16u);
        sub_1AD3CAFA0(v29);
        MEMORY[0x1B26F9F20](v29, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v30);
        v32 = v30;
        v21 = v64;
        MEMORY[0x1B26F9F20](v32, -1, -1);
        v33 = v28;
        a8 = v63;
        MEMORY[0x1B26F9F20](v33, -1, -1);
      }

      v34 = swift_allocObject();
      *(v34 + 16) = v67;
      *(v34 + 24) = a8;
      v72 = sub_1AD4E6660;
      v73 = v34;
      aBlock = MEMORY[0x1E69E9820];
      v69 = 1107296256;
      v70 = sub_1AD3D96E8;
      v71 = &block_descriptor_14;
      v35 = _Block_copy(&aBlock);

      [a6 sendMessage:v25 completion:v35];

      sub_1AD423058(v19, v21, 1);
      _Block_release(v35);

      return;
    }

    goto LABEL_10;
  }

  if (v18 == 2)
  {
LABEL_10:
    v65 = v18;
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
      aBlock = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_1AD3CA88C(a4, a5, &aBlock);
      _os_log_impl(&dword_1AD337000, v37, v38, "[%s] Received invalid result for activation code", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1B26F9F20](v40, -1, -1);
      MEMORY[0x1B26F9F20](v39, -1, -1);
    }

    v41 = [objc_opt_self() errorWithSeverity_];
    v42 = sub_1ADB06370();
    [v41 addInternalDebugDescription_];

    v43 = v41;
    v67(v41);

    sub_1AD423058(v19, v21, v65);

    return;
  }

  v44 = v17;
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v45 = sub_1ADB05FA0();
  __swift_project_value_buffer(v45, qword_1EB59AB68);

  sub_1AD4230CC(v19, v21, 3);
  v46 = sub_1ADB05F80();
  v47 = v21;
  v48 = sub_1ADB06860();

  v66 = v47;
  sub_1AD423058(v19, v47, 3);
  if (os_log_type_enabled(v46, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    aBlock = v51;
    *v49 = 136315394;
    *(v49 + 4) = sub_1AD3CA88C(a4, a5, &aBlock);
    *(v49 + 12) = 2112;
    v52 = v19;
    v53 = _swift_stdlib_bridgeErrorToNSError();
    *(v49 + 14) = v53;
    *v50 = v53;
    _os_log_impl(&dword_1AD337000, v46, v48, "[%s] failed to handle message with error: %@", v49, 0x16u);
    sub_1AD3CAFA0(v50);
    MEMORY[0x1B26F9F20](v50, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x1B26F9F20](v51, -1, -1);
    MEMORY[0x1B26F9F20](v49, -1, -1);
  }

  v54 = *(v16 + 16);
  v56 = *(v16 + 32);
  v57 = *(v16 + 40);
  v58 = *(v16 + 48);
  aBlock = *(v16 + 24);
  v55 = aBlock;
  v69 = v56;
  v70 = v57;
  LOBYTE(v71) = v58;
  sub_1AD4230CC(v19, v66, 3);
  sub_1AD3DF24C(v55, v56, v57, v58);
  v59 = sub_1AD433FC8(v19, v54, &aBlock);
  sub_1AD423058(v19, v66, 3);
  sub_1AD3CC2E0(aBlock, v69, v70, v71);
  v60 = sub_1ADB06370();
  [v59 addInternalDebugDescription_];

  v61 = v59;
  v67(v59);

  sub_1AD423058(v19, v66, 3);

  sub_1AD423058(v19, v66, 3);
}

void sub_1AD4E5E58(char a1, uint64_t a2, void (*a3)(id))
{
  if (a1)
  {
    if (!a2)
    {
      a3(0);
      return;
    }
  }

  else if (!a2)
  {
    v4 = 0;
    goto LABEL_7;
  }

  v4 = sub_1ADB05CB0();
LABEL_7:
  v5 = [objc_opt_self() errorWithUnderlyingError:v4 defaultSeverity:5];

  v6 = sub_1ADB06370();
  [v5 addInternalDebugDescription_];

  v7 = v5;
  a3(v5);
}

void sub_1AD4E5F64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v62 = a4;
  v10[4] = a5;
  v11 = *(a2 + 56);

  v12 = [v11 sid];
  v13 = sub_1ADB063B0();
  v15 = v14;

  v16 = *(a2 + 40);
  v17 = *(a2 + 48);
  aBlock = *(a2 + 24);
  v66 = v16;
  LOBYTE(v67) = v17;
  v64 = ProvisioningCredentialsConfiguration.Credential.carKeyTransferComponents.getter();
  if (v64)
  {
    v20 = v18;
    v21 = v19;
    if ([v19 status] == 5)
    {
      v22 = [v21 activationOptions];
      if (v22)
      {
        v23 = v22;
        v58 = v13;
        v24 = a1;
        v25 = [v22 optionOfType_];

        v26 = v25;
        if (v25)
        {
          v27 = v24;
          v28 = [v26 value];
          if (v28)
          {
            v60 = v20;
            v63 = v26;
            v29 = v21;
            v30 = v28;
            sub_1ADB063B0();

            v31 = *(a2 + 16);
            swift_beginAccess();
            v32 = *(v31 + 72);
            v57 = *(v31 + 80);
            v33 = v32;
            v34 = [v33 targetDevice];
            if (v34)
            {
              v35 = v34;
              if ([v34 respondsToSelector_])
              {
                v36 = [v64 shareIdentifier];
                sub_1ADB063B0();

                v37 = swift_allocObject();
                swift_weakInit();
                v38 = swift_allocObject();
                v38[2] = v37;
                v38[3] = v27;
                v38[4] = v58;
                v38[5] = v15;
                v38[6] = v60;
                v38[7] = sub_1AD4E6628;
                v38[8] = v10;

                v39 = v27;
                v61 = v60;

                v40 = sub_1ADB06370();
                v41 = sub_1ADB06370();
                v68 = sub_1AD4E6634;
                v69 = v38;
                *&aBlock = MEMORY[0x1E69E9820];
                *(&aBlock + 1) = 1107296256;
                v66 = sub_1AD3CE960;
                v67 = &block_descriptor_38;
                v42 = _Block_copy(&aBlock);

                [v35 carKeyRetryActivationCodeWithInvitationIdentifier:v40 activationCode:v41 completion:v42];
                _Block_release(v42);

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

            return;
          }
        }
      }

      v51 = [objc_opt_self() errorWithSeverity_];
      v52 = sub_1ADB06370();
      [v51 addInternalDebugDescription_];

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v59 = v21;
        v53 = *(a3 + 24);
        ObjectType = swift_getObjectType();
        v55 = *(v53 + 88);
        v56 = v51;
        v55(v51, v62, a5, ObjectType, v53);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v49 = *(a3 + 24);
        v50 = swift_getObjectType();
        (*(v49 + 88))(0, v62, a5, v50, v49);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {

    v43 = [objc_opt_self() errorWithSeverity_];
    v44 = sub_1ADB06370();
    [v43 addInternalDebugDescription_];

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v45 = *(a3 + 24);
      v46 = swift_getObjectType();
      v47 = *(v45 + 88);
      v48 = v43;
      v47(v43, v62, a5, v46, v45);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AD4E6670(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

id SEProvisionedPasses.__allocating_init(primaryPass:passes:moreInfoItems:externalProvisioningOptions:suppressMakeDefaultOfferForPass:isExpressModeSetupOptional:isExpressEnabled:)(void *a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, char a6, char a7)
{
  if (a3 >> 62)
  {
    v14 = sub_1ADB06D00();
  }

  else
  {
    v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = a4;
  if (!v14)
  {

    v24 = MEMORY[0x1E69E7CC8];
    goto LABEL_7;
  }

  v29 = a2;
  v16 = a6;
  v17 = a7;
  v18 = a5;
  result = [a1 uniqueID];
  if (result)
  {
    v20 = result;
    v21 = sub_1ADB063B0();
    v23 = v22;

    v24 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1AD4ECB74(a3, v21, v23, isUniquelyReferenced_nonNull_native);

    a5 = v18;
    a7 = v17;
    a6 = v16;
    a2 = v29;
LABEL_7:
    v26 = objc_allocWithZone(type metadata accessor for SEProvisionedPasses());
    SEProvisionedPasses.init(primaryPass:passes:moreInfoItemsForPass:externalProvisioningMode:suppressMakeDefaultOfferForPass:isExpressModeSetupOptional:isExpressEnabled:)(a1, a2, v24, a4, 2 * (a4 == 0), a5, a6 & 1, a7 & 1);
    v28 = v27;

    return v28;
  }

  __break(1u);
  return result;
}

void SEProvisionedPasses.__allocating_init(primaryPass:passes:moreInfoItems:externalProvisioningMode:suppressMakeDefaultOfferForPass:isExpressModeSetupOptional:isExpressEnabled:)(id a1, unint64_t a2, unint64_t a3, void *a4, int a5, uint64_t a6, char a7, char a8)
{
  if (!(a3 >> 62))
  {
    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_6:

    v26 = MEMORY[0x1E69E7CC8];
    goto LABEL_7;
  }

  if (!sub_1ADB06D00())
  {
    goto LABEL_6;
  }

LABEL_3:
  v29 = a2;
  v16 = a7;
  v17 = a8;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = [a1 uniqueID];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1ADB063B0();
    v25 = v24;

    v26 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1AD4ECB74(a3, v23, v25, isUniquelyReferenced_nonNull_native);

    a6 = v20;
    a5 = v19;
    a4 = v18;
    a8 = v17;
    a7 = v16;
    a2 = v30;
LABEL_7:
    v28 = objc_allocWithZone(type metadata accessor for SEProvisionedPasses());
    SEProvisionedPasses.init(primaryPass:passes:moreInfoItemsForPass:externalProvisioningMode:suppressMakeDefaultOfferForPass:isExpressModeSetupOptional:isExpressEnabled:)(a1, a2, v26, a4, a5, a6, a7 & 1, a8 & 1);
    return;
  }

  __break(1u);
}

uint64_t sub_1AD4E6A08()
{
  v1 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passUniqueIdentifiers;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (!v3[2])
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v3[4];
  v4 = v3[5];
  v6 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passesForUniqueIdentifier;
  result = swift_beginAccess();
  v7 = *(v0 + v6);
  if (!*(v7 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = sub_1AD425BEC(v5, v4);
  v10 = v9;

  if (v10)
  {
    v11 = *(*(v7 + 56) + 8 * v8);

    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1AD4E6AF8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passUniqueIdentifiers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  v5 = *(v3 + 16);
  v6 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passesForUniqueIdentifier;

  result = swift_beginAccess();
  if (v5)
  {
    v8 = 0;
    v9 = v3 + 40;
    while (1)
    {
      v10 = (v9 + 16 * v8);
      v11 = v8;
      while (1)
      {
        if (v11 >= *(v3 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = *(v1 + v6);
        if (*(v12 + 16))
        {
          break;
        }

LABEL_4:
        ++v11;
        v10 += 2;
        if (v5 == v11)
        {
          goto LABEL_12;
        }
      }

      v14 = *(v10 - 1);
      v13 = *v10;

      v15 = sub_1AD425BEC(v14, v13);
      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = *(*(v12 + 56) + 8 * v15);

      MEMORY[0x1B26F6680](v18);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1ADB06640();
      }

      v8 = v11 + 1;
      result = sub_1ADB06670();
      v4 = v19;
      v9 = v3 + 40;
      if (v5 - 1 == v11)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_4;
  }

LABEL_12:

  return v4;
}

id sub_1AD4E6CAC()
{
  v1 = v0 + OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_externalProvisioningMode;
  swift_beginAccess();
  v2 = 0;
  if (!*(v1 + 8))
  {
    v2 = *v1;
    v3 = *v1;
  }

  return v2;
}

id sub_1AD4E6D08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_externalProvisioningMode;
  swift_beginAccess();
  v4 = *v3;
  *a2 = *v3;
  v5 = *(v3 + 8);
  *(a2 + 8) = v5;
  return sub_1AD4ECD14(v4, v5);
}

void sub_1AD4E6D68(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *a2 + OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_externalProvisioningMode;
  v4 = *(a1 + 8);
  swift_beginAccess();
  v5 = *v3;
  *v3 = v2;
  v6 = *(v3 + 8);
  *(v3 + 8) = v4;
  sub_1AD4ECD14(v2, v4);
  sub_1AD3D784C(v5, v6);
}

id sub_1AD4E6DF0()
{
  v1 = v0 + OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_externalProvisioningMode;
  swift_beginAccess();
  v2 = *v1;
  sub_1AD4ECD14(*v1, *(v1 + 8));
  return v2;
}

void sub_1AD4E6E50(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_externalProvisioningMode;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v7 = *(v5 + 8);
  *(v5 + 8) = a2;
  sub_1AD3D784C(v6, v7);
}

void *sub_1AD4E6FB0()
{
  v1 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_notificationSuppressionAssertion;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1AD4E6FFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_notificationSuppressionAssertion;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1AD4E70B4(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

void *sub_1AD4E7110()
{
  v1 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_contactlessInterfaceSuppressionAssertion;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1AD4E715C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_contactlessInterfaceSuppressionAssertion;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1AD4E7214(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_1AD4E7288(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1AD4E72E8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

void sub_1AD4E73A4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passUniqueIdentifiers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!v3[2])
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v3[4];
  v4 = v3[5];
  v6 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passesForUniqueIdentifier;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (!*(v7 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = sub_1AD425BEC(v5, v4);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = *(*(v7 + 56) + 8 * v8);

  v12 = [v11 uniqueID];

  if (!v12)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v13 = sub_1ADB063B0();
  v15 = v14;

  if (*(*(v1 + OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_moreInfoItemsForPass) + 16) && (, sub_1AD425BEC(v13, v15), v17 = v16, , (v17 & 1) != 0))
  {
  }

  else
  {
  }
}

void SEProvisionedPasses.init(primaryPass:passes:moreInfoItemsForPass:externalProvisioningMode:suppressMakeDefaultOfferForPass:isExpressModeSetupOptional:isExpressEnabled:)(void *a1, unint64_t a2, unint64_t a3, void *a4, int a5, uint64_t a6, int a7, int a8)
{
  v9 = v8;
  v87 = a7;
  v88 = a8;
  v86 = a6;
  v90 = a5;
  v89 = a4;
  v91 = a3;
  v12 = &v9[OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_cardIdentifier];
  *v12 = 0;
  v12[1] = 0;
  *&v9[OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_notificationSuppressionAssertion] = 0;
  *&v9[OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_contactlessInterfaceSuppressionAssertion] = 0;
  v13 = &v9[OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_provisioningTemplateIdentifier];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passUniqueIdentifiers;
  v15 = MEMORY[0x1E69E7CC0];
  *&v9[OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passUniqueIdentifiers] = MEMORY[0x1E69E7CC0];
  v16 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passesForUniqueIdentifier;
  *&v9[v16] = sub_1AD426764(v15);
  v84 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_moreInfoItemsForPass;
  *&v9[v84] = sub_1AD426778(v15);
  v85 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_suppressMakeDefaultOfferForPass;
  *&v9[v85] = sub_1AD42674C(v15);
  v17 = a1;
  v18 = [v17 uniqueID];
  if (!v18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = v18;
  v20 = sub_1ADB063B0();
  v22 = v21;

  swift_beginAccess();
  v23 = v17;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v105 = *&v9[v16];
  *&v9[v16] = 0x8000000000000000;
  v99 = v23;
  sub_1AD4EC9E0(v23, v20, v22, isUniquelyReferenced_nonNull_native, sub_1AD4B1430, sub_1AD4AF564);

  v98 = v16;
  *&v9[v16] = v105;
  swift_endAccess();
  swift_beginAccess();
  v25 = *&v9[v14];
  v92 = v22;

  v26 = swift_isUniquelyReferenced_nonNull_native();
  v101 = v9;
  *&v9[v14] = v25;
  v97 = v14;
  if ((v26 & 1) == 0)
  {
LABEL_24:
    v53 = sub_1AD424F70(0, *(v25 + 16) + 1, 1, v25);
    v14 = v97;
    v25 = v53;
    *&v101[v97] = v53;
  }

  v28 = *(v25 + 16);
  v27 = *(v25 + 24);
  if (v28 >= v27 >> 1)
  {
    v54 = sub_1AD424F70((v27 > 1), v28 + 1, 1, v25);
    v14 = v97;
    v25 = v54;
  }

  *(v25 + 16) = v28 + 1;
  v29 = v25 + 16 * v28;
  v30 = v92;
  *(v29 + 32) = v20;
  *(v29 + 40) = v30;
  *&v101[v14] = v25;
  swift_endAccess();
  if (a2 >> 62)
  {
    v31 = sub_1ADB06D00();
    v32 = v98;
    if (v31)
    {
LABEL_7:
      v33 = 0;
      v20 = 0;
      v95 = a2 & 0xFFFFFFFFFFFFFF8;
      v96 = a2 & 0xC000000000000001;
      v93 = a2;
      v94 = v31;
      while (1)
      {
        if (v96)
        {
          v35 = MEMORY[0x1B26F6CC0](v33, a2);
          v36 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v33 >= *(v95 + 16))
          {
            goto LABEL_23;
          }

          v35 = *(a2 + 8 * v33 + 32);
          v36 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v102 = v36;
        v103 = v35;
        v37 = [v35 uniqueID];
        if (!v37)
        {
          break;
        }

        v38 = v37;
        v39 = sub_1ADB063B0();
        v41 = v40;
        v42 = v99;

        v43 = v101;
        swift_beginAccess();

        v44 = swift_isUniquelyReferenced_nonNull_native();
        v105 = *&v43[v32];
        *&v43[v32] = 0x8000000000000000;
        sub_1AD4EC9E0(v42, v39, v41, v44, sub_1AD4B1430, sub_1AD4AF564);

        *&v43[v32] = v105;
        v45 = swift_endAccess();
        v46 = v97;
        v25 = *&v43[v97];
        v100 = v39;
        v106 = v39;
        v107 = v41;
        MEMORY[0x1EEE9AC00](v45);
        v83[2] = &v106;

        LOBYTE(v42) = sub_1AD4E6670(sub_1AD4ECE9C, v83, v25);

        if (v42)
        {

          a2 = v93;
          v34 = v94;
        }

        else
        {
          swift_beginAccess();
          v25 = *&v43[v46];
          v47 = swift_isUniquelyReferenced_nonNull_native();
          *&v43[v46] = v25;
          if ((v47 & 1) == 0)
          {
            v51 = sub_1AD424F70(0, *(v25 + 16) + 1, 1, v25);
            v46 = v97;
            v25 = v51;
            *&v101[v97] = v51;
          }

          v49 = *(v25 + 16);
          v48 = *(v25 + 24);
          a2 = v93;
          if (v49 >= v48 >> 1)
          {
            v52 = sub_1AD424F70((v48 > 1), v49 + 1, 1, v25);
            v46 = v97;
            v25 = v52;
          }

          v34 = v94;
          *(v25 + 16) = v49 + 1;
          v50 = v25 + 16 * v49;
          *(v50 + 32) = v100;
          *(v50 + 40) = v41;
          *&v101[v46] = v25;
          swift_endAccess();
        }

        ++v33;
        v32 = v98;
        if (v102 == v34)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
      goto LABEL_37;
    }
  }

  else
  {
    v31 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = v98;
    if (v31)
    {
      goto LABEL_7;
    }
  }

LABEL_26:

  v55 = v91;
  if (*(v91 + 16) || !PKShowFakeMoreInfo())
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59C1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1ADB832E0;
    v106 = 0x656C746974;
    v107 = 0xE500000000000000;
    v57 = MEMORY[0x1E69E6158];
    sub_1ADB06BD0();
    *(inited + 96) = v57;
    strcpy((inited + 72), "Fake Title 1");
    *(inited + 85) = 0;
    *(inited + 86) = -5120;
    v106 = 2036625250;
    v107 = 0xE400000000000000;
    sub_1ADB06BD0();
    *(inited + 168) = v57;
    *(inited + 144) = 0x646F4220656B6146;
    *(inited + 152) = 0xE900000000000079;
    v106 = 0x4C52556B6E696CLL;
    v107 = 0xE700000000000000;
    sub_1ADB06BD0();
    v58 = sub_1ADB063B0();
    *(inited + 240) = v57;
    *(inited + 216) = v58;
    *(inited + 224) = v59;
    v106 = 0x747865546B6E696CLL;
    v107 = 0xE800000000000000;
    sub_1ADB06BD0();
    *(inited + 312) = v57;
    *(inited + 288) = 0x6E694C20656B6146;
    *(inited + 296) = 0xEB0000000031206BLL;
    sub_1AD426994(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A038);
    swift_arrayDestroy();
    v60 = objc_allocWithZone(PKPaymentSetupMoreInfoItem);
    v61 = sub_1ADB06260();

    v62 = [v60 initWithMoreInfoDictionary_];

    if (!v62)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59C200);
    v63 = swift_initStackObject();
    *(v63 + 16) = xmmword_1ADB78CE0;
    v64 = v99;
    v65 = [v99 uniqueID];

    if (!v65)
    {
LABEL_39:
      __break(1u);
      return;
    }

    v66 = sub_1ADB063B0();
    v68 = v67;

    *(v63 + 32) = v66;
    v69 = v63 + 32;
    *(v63 + 40) = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59BB00);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1ADB78320;
    *(v70 + 32) = v62;
    *(v70 + 40) = v62;
    *(v63 + 48) = v70;
    v71 = v62;
    v55 = sub_1AD426778(v63);
    swift_setDeallocating();
    sub_1AD3D0E3C(v69, &unk_1EB59C210);
  }

  v72 = v90;
  v73 = v89;
  v74 = v101;
  *&v101[v84] = v55;

  if (PKShowFakeExternalDevicePicker())
  {
    v75 = [objc_opt_self() mockOptions];
    v76 = &v74[OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_externalProvisioningMode];
    *v76 = v75;
    v76[8] = 0;
  }

  else
  {
    v77 = &v74[OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_externalProvisioningMode];
    *v77 = v73;
    v77[8] = v72;
    sub_1AD4ECD14(v73, v72);
  }

  *&v74[v85] = v86;

  v74[OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_isExpressModeSetupOptional] = v87 & 1;
  v74[OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_isExpressEnabled] = v88 & 1;
  v78 = type metadata accessor for SEProvisionedPasses();
  v104.receiver = v74;
  v104.super_class = v78;
  v79 = objc_msgSendSuper2(&v104, sel_init);
  v80 = objc_opt_self();
  v81 = v79;

  v82 = [objc_opt_self() defaultCenter];
  [v82 addObserver:v81 selector:sel_passLibraryDidChangeWithNotification_ name:@"PKPassLibraryDidChangeNotification" object:0];

  sub_1AD3D784C(v73, v72);
}

id SEProvisionedPasses.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_notificationSuppressionAssertion;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3)
  {
    [v3 invalidate];
  }

  v4 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_contactlessInterfaceSuppressionAssertion;
  swift_beginAccess();
  v5 = *&v0[v4];
  if (v5)
  {
    [v5 invalidate];
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for SEProvisionedPasses();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1AD4E818C()
{
  v1 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_notificationSuppressionAssertion;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }

  v4 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_contactlessInterfaceSuppressionAssertion;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (v5)
  {
    [v5 invalidate];
    v6 = *(v0 + v4);
    *(v0 + v4) = 0;
  }
}

void sub_1AD4E822C(unint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passUniqueIdentifiers;
  swift_beginAccess();
  v69 = v3;
  v4 = *(v2 + v3);
  v5 = MEMORY[0x1E69E7CC0];
  v74 = MEMORY[0x1E69E7CC0];
  v6 = *(v4 + 16);
  v7 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passesForUniqueIdentifier;

  swift_beginAccess();
  if (!v6)
  {
    v72 = v5;
    goto LABEL_14;
  }

  v8 = 0;
  v72 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = (v4 + 40 + 16 * v8);
    v10 = v8;
    while (1)
    {
      if (v10 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_76;
      }

      v5 = *(v7 + v2);
      if (!*(v5 + 16))
      {
        goto LABEL_4;
      }

      v12 = *(v9 - 1);
      v11 = *v9;

      v13 = sub_1AD425BEC(v12, v11);
      if (v14)
      {
        break;
      }

LABEL_4:
      ++v10;
      v9 += 2;
      if (v6 == v10)
      {
        goto LABEL_14;
      }
    }

    v15 = *(*(v5 + 56) + 8 * v13);

    MEMORY[0x1B26F6680](v16);
    if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1ADB06640();
    }

    v8 = v10 + 1;
    v5 = &v74;
    sub_1ADB06670();
    v72 = v74;
  }

  while (v6 - 1 != v10);
LABEL_14:

  v5 = v72;
  if (v72 >> 62)
  {
    goto LABEL_80;
  }

  v17 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    swift_beginAccess();
    if (v17)
    {
      v18 = 0;
      v71 = v5 & 0xC000000000000001;
      v19 = v5 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v71)
        {
          v20 = MEMORY[0x1B26F6CC0](v18, v5);
        }

        else
        {
          if (v18 >= *(v19 + 16))
          {
            goto LABEL_78;
          }

          v20 = *(v5 + 8 * v18 + 32);
        }

        v21 = v20;
        v22 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_77;
        }

        v23 = [v20 uniqueID];
        if (!v23)
        {
          goto LABEL_84;
        }

        v24 = v23;
        v25 = sub_1ADB063B0();
        v27 = v26;

        if (!(*(v7 + v2))[2] || (, sub_1AD425BEC(v25, v27), v29 = v28, , (v29 & 1) == 0))
        {

          if (qword_1EB5981B0 != -1)
          {
            swift_once();
          }

          v59 = sub_1ADB05FA0();
          __swift_project_value_buffer(v59, qword_1EB59AB38);
          v55 = sub_1ADB05F80();
          v56 = sub_1ADB06860();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            *v57 = 0;
            v58 = "SEProvisionedPasses.rearrange(passes:) called with unknown pass";
            goto LABEL_66;
          }

          goto LABEL_67;
        }

        ++v18;
        v5 = v72;
      }

      while (v22 != v17);
    }

    if (a1 >> 62)
    {
      v30 = sub_1ADB06D00();
    }

    else
    {
      v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = MEMORY[0x1E69E7CC0];
    v31 = *(v2 + v69);
    v73 = MEMORY[0x1E69E7CC0];
    v32 = *(v31 + 16);

    swift_beginAccess();
    if (v32)
    {
      v33 = 0;
      v34 = v31 + 40;
      v72 = MEMORY[0x1E69E7CC0];
LABEL_32:
      v35 = (v34 + 16 * v33);
      v36 = v33;
      while (v36 < *(v31 + 16))
      {
        v5 = *(v7 + v2);
        if (*(v5 + 16))
        {
          v38 = *(v35 - 1);
          v37 = *v35;

          v39 = sub_1AD425BEC(v38, v37);
          if (v40)
          {
            v41 = *(*(v5 + 56) + 8 * v39);

            MEMORY[0x1B26F6680](v42);
            if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1ADB06640();
            }

            v33 = v36 + 1;
            v5 = &v73;
            sub_1ADB06670();
            v72 = v73;
            v34 = v31 + 40;
            if (v32 - 1 != v36)
            {
              goto LABEL_32;
            }

            goto LABEL_43;
          }
        }

        ++v36;
        v35 += 2;
        if (v32 == v36)
        {
          goto LABEL_43;
        }
      }

LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      v17 = sub_1ADB06D00();
      continue;
    }

    break;
  }

  v72 = v5;
LABEL_43:

  if (v72 >> 62)
  {
    v43 = sub_1ADB06D00();
  }

  else
  {
    v43 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v30 == v43)
  {
    v44 = MEMORY[0x1E69E7CC0];
    if (!v30)
    {
LABEL_74:
      *(v2 + v69) = v44;

      return;
    }

    v73 = MEMORY[0x1E69E7CC0];
    v5 = &v73;
    sub_1AD4506A8(0, v30 & ~(v30 >> 63), 0);
    if (v30 < 0)
    {
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v44 = v73;
    if ((a1 & 0xC000000000000001) == 0)
    {
      v60 = (a1 + 32);
      while (1)
      {
        v5 = *v60;
        v61 = [v5 uniqueID];
        if (!v61)
        {
          break;
        }

        v62 = v61;
        v63 = sub_1ADB063B0();
        v65 = v64;

        if (!v65)
        {
          goto LABEL_86;
        }

        v73 = v44;
        v67 = *(v44 + 16);
        v66 = *(v44 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_1AD4506A8((v66 > 1), v67 + 1, 1);
          v44 = v73;
        }

        *(v44 + 16) = v67 + 1;
        v68 = v44 + 16 * v67;
        *(v68 + 32) = v63;
        *(v68 + 40) = v65;
        ++v60;
        if (!--v30)
        {
          goto LABEL_74;
        }
      }

LABEL_85:

LABEL_86:
      __break(1u);
      return;
    }

    v45 = 0;
    v7 = &selRef_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit_completion_;
    while (1)
    {
      v5 = MEMORY[0x1B26F6CC0](v45);
      v46 = [swift_unknownObjectRetain() uniqueID];
      if (v46)
      {
        v47 = v46;
        v48 = sub_1ADB063B0();
        v50 = v49;
      }

      else
      {
        v48 = 0;
        v50 = 0;
      }

      swift_unknownObjectRelease_n();
      if (!v50)
      {
        goto LABEL_79;
      }

      v73 = v44;
      v52 = *(v44 + 16);
      v51 = *(v44 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1AD4506A8((v51 > 1), v52 + 1, 1);
        v44 = v73;
      }

      ++v45;
      *(v44 + 16) = v52 + 1;
      v53 = v44 + 16 * v52;
      *(v53 + 32) = v48;
      *(v53 + 40) = v50;
      if (v30 == v45)
      {
        goto LABEL_74;
      }
    }
  }

  if (qword_1EB5981B0 != -1)
  {
    swift_once();
  }

  v54 = sub_1ADB05FA0();
  __swift_project_value_buffer(v54, qword_1EB59AB38);
  v55 = sub_1ADB05F80();
  v56 = sub_1ADB06860();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = "SEProvisionedPasses.rearrange(passes:) called with pass count not equal to current pass count";
LABEL_66:
    _os_log_impl(&dword_1AD337000, v55, v56, v58, v57, 2u);
    MEMORY[0x1B26F9F20](v57, -1, -1);
  }

LABEL_67:
}

void sub_1AD4E8A00(uint64_t a1)
{
  v34 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_moreInfoItemsForPass;
  v3 = *(v1 + OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_moreInfoItemsForPass);

  v4 = MEMORY[0x1E69E7CC0];
  v5 = sub_1AD426778(MEMORY[0x1E69E7CC0]);
  v6 = v3 + 64;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v3 + 64);
  v10 = (v7 + 63) >> 6;
  v42 = (a1 + 32);
  v43 = a1;

  v11 = 0;
  v37 = v3 + 64;
  v38 = v3;
  v36 = v10;
  while (v9)
  {
LABEL_11:
    v15 = __clz(__rbit64(v9)) | (v11 << 6);
    v16 = (*(v3 + 48) + 16 * v15);
    v17 = v16[1];
    v39 = *v16;
    v18 = *(*(v3 + 56) + 8 * v15);
    v44 = v4;
    if (v18 >> 62)
    {
      v32 = *(*(v3 + 56) + 8 * v15);
      v33 = v16[1];
      v19 = sub_1ADB06D00();
      v17 = v33;
      v18 = v32;
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v40 = v17;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v41 = v18;
    if (v19)
    {
      v20 = v18;
      v21 = 0;
      v22 = v20 & 0xC000000000000001;
      v23 = v20 & 0xFFFFFFFFFFFFFF8;
      v24 = v20 + 32;
      while (1)
      {
        if (v22)
        {
          v25 = MEMORY[0x1B26F6CC0](v21, v41);
        }

        else
        {
          if (v21 >= *(v23 + 16))
          {
            goto LABEL_32;
          }

          v25 = *(v24 + 8 * v21);
        }

        v26 = v25;
        if (__OFADD__(v21++, 1))
        {
          break;
        }

        v28 = [v25 type];
        v29 = v42;
        v30 = *(v43 + 16);
        do
        {
          if (!v30)
          {
            sub_1ADB06C80();
            sub_1ADB06CB0();
            sub_1ADB06CC0();
            sub_1ADB06C90();
            goto LABEL_16;
          }

          v31 = *v29++;
          --v30;
        }

        while (v31 != v28);

LABEL_16:
        if (v21 == v19)
        {
          v12 = v44;
          v6 = v37;
          v3 = v38;
          v4 = MEMORY[0x1E69E7CC0];
          v10 = v36;
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v12 = v4;
LABEL_5:
    v9 &= v9 - 1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1AD4ECB74(v12, v39, v40, isUniquelyReferenced_nonNull_native);

    swift_bridgeObjectRelease_n();
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      *(v35 + v34) = v5;

      return;
    }

    v9 = *(v6 + 8 * v14);
    ++v11;
    if (v9)
    {
      v11 = v14;
      goto LABEL_11;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1AD4E8CCC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passUniqueIdentifiers;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  v7 = *(v5 + 16);
  v8 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passesForUniqueIdentifier;

  swift_beginAccess();
  if (!v7)
  {
    goto LABEL_14;
  }

  v9 = 0;
  v10 = v5 + 40;
  do
  {
    v54 = v6;
    v11 = (v10 + 16 * v9);
    v12 = v9;
    while (1)
    {
      if (v12 >= *(v5 + 16))
      {
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

      v6 = *(a1 + v8);
      if (*(v6 + 16))
      {
        break;
      }

LABEL_4:
      ++v12;
      v11 += 2;
      if (v7 == v12)
      {
        v6 = v54;
        goto LABEL_14;
      }
    }

    v14 = *(v11 - 1);
    v13 = *v11;

    v15 = sub_1AD425BEC(v14, v13);
    if ((v16 & 1) == 0)
    {

      goto LABEL_4;
    }

    v17 = *(*(v6 + 56) + 8 * v15);

    MEMORY[0x1B26F6680](v18);
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1ADB06640();
    }

    v9 = v12 + 1;
    sub_1ADB06670();
    v6 = v57;
    v10 = v5 + 40;
  }

  while (v7 - 1 != v12);
LABEL_14:

  if (v6 >> 62)
  {
LABEL_44:
    v19 = sub_1ADB06D00();
    if (!v19)
    {
    }

LABEL_16:
    v20 = 0;
    v55 = v6;
    v56 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passUniqueIdentifiers;
    v21 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passesForUniqueIdentifier;
    v52 = v6 & 0xFFFFFFFFFFFFFF8;
    v53 = v6 & 0xC000000000000001;
    v51 = v19;
    while (1)
    {
      if (v53)
      {
        v24 = MEMORY[0x1B26F6CC0](v20, v6);
      }

      else
      {
        if (v20 >= *(v52 + 16))
        {
          goto LABEL_41;
        }

        v24 = *(v6 + 8 * v20 + 32);
      }

      v6 = v24;
      v25 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_40;
      }

      v26 = [v24 uniqueID];
      if (!v26)
      {
        __break(1u);
LABEL_47:
        result = sub_1ADB06FF0();
        __break(1u);
        return result;
      }

      v27 = v26;
      v28 = sub_1ADB063B0();
      v30 = v29;

      swift_beginAccess();
      v31 = *(v2 + v56);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v56) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_1AD424F70(0, *(v31 + 2) + 1, 1, v31);
        *(v2 + v56) = v31;
      }

      v34 = *(v31 + 2);
      v33 = *(v31 + 3);
      if (v34 >= v33 >> 1)
      {
        v31 = sub_1AD424F70((v33 > 1), v34 + 1, 1, v31);
      }

      *(v31 + 2) = v34 + 1;
      v35 = &v31[16 * v34];
      *(v35 + 4) = v28;
      *(v35 + 5) = v30;
      *(v2 + v56) = v31;
      swift_endAccess();
      swift_beginAccess();
      v36 = v6;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v6 = *(v2 + v21);
      *(v2 + v21) = 0x8000000000000000;
      v38 = sub_1AD425BEC(v28, v30);
      v40 = *(v6 + 16);
      v41 = (v39 & 1) == 0;
      v42 = __OFADD__(v40, v41);
      v43 = v40 + v41;
      if (v42)
      {
        goto LABEL_42;
      }

      v44 = v39;
      if (*(v6 + 24) < v43)
      {
        break;
      }

      if (v37)
      {
        goto LABEL_33;
      }

      v49 = v38;
      sub_1AD4B1430();
      v38 = v49;
      if (v44)
      {
LABEL_17:
        v22 = *(v6 + 56);
        v23 = *(v22 + 8 * v38);
        *(v22 + 8 * v38) = v36;

        goto LABEL_18;
      }

LABEL_34:
      *(v6 + 8 * (v38 >> 6) + 64) |= 1 << v38;
      v46 = (*(v6 + 48) + 16 * v38);
      *v46 = v28;
      v46[1] = v30;
      *(*(v6 + 56) + 8 * v38) = v36;
      v47 = *(v6 + 16);
      v42 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v42)
      {
        goto LABEL_43;
      }

      *(v6 + 16) = v48;
LABEL_18:
      *(v2 + v21) = v6;
      swift_endAccess();

      ++v20;
      v6 = v55;
      if (v25 == v51)
      {
      }
    }

    sub_1AD4AF564(v43, v37);
    v38 = sub_1AD425BEC(v28, v30);
    if ((v44 & 1) != (v45 & 1))
    {
      goto LABEL_47;
    }

LABEL_33:
    if (v44)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

  v19 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19)
  {
    goto LABEL_16;
  }
}

id sub_1AD4E916C(void *a1)
{
  result = [a1 uniqueID];
  if (result)
  {
    v3 = result;
    v4 = sub_1ADB063B0();
    v6 = v5;

    v7 = *(v1 + OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_suppressMakeDefaultOfferForPass);
    if (*(v7 + 16) && (, v8 = sub_1AD425BEC(v4, v6), v10 = v9, , (v10 & 1) != 0))
    {
      v11 = *(*(v7 + 56) + v8);

      return v11;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AD4E9228(void *a1)
{
  v2 = v1;
  v4 = sub_1ADB06040();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1ADB06060();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 userInfo];
  if (!v12)
  {
    goto LABEL_8;
  }

  v25 = v9;
  v26 = v5;
  v13 = v12;
  v14 = sub_1ADB06280();

  aBlock[6] = @"PKPassLibraryReplacementPassesUserInfo";
  type metadata accessor for PKPassLibraryNotificationKey(0);
  sub_1AD4ED5BC(&qword_1EB598580, type metadata accessor for PKPassLibraryNotificationKey);
  v15 = @"PKPassLibraryReplacementPassesUserInfo";
  sub_1ADB06BD0();
  if (!*(v14 + 16) || (v16 = sub_1AD42BE34(aBlock), (v17 & 1) == 0))
  {

    sub_1AD42E1DC(aBlock);
LABEL_8:
    v28 = 0u;
    v29 = 0u;
    return sub_1AD3D0E3C(&v28, &unk_1EB59AE90);
  }

  sub_1AD3C94C4(*(v14 + 56) + 32 * v16, &v28);
  sub_1AD42E1DC(aBlock);

  if (!*(&v29 + 1))
  {
    return sub_1AD3D0E3C(&v28, &unk_1EB59AE90);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BAD8);
  result = swift_dynamicCast();
  if (result)
  {
    v19 = aBlock[0];
    sub_1AD3D3200(0, &qword_1EB59A670);
    v20 = sub_1ADB068B0();
    v21 = swift_allocObject();
    *(v21 + 16) = v2;
    *(v21 + 24) = v19;
    aBlock[4] = sub_1AD4ED59C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD471DC4;
    aBlock[3] = &block_descriptor_39;
    v22 = _Block_copy(aBlock);
    v23 = v2;

    sub_1ADB06050();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1AD4ED5BC(&qword_1EB598900, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
    sub_1AD43FACC(&qword_1EB598910, &qword_1EB59BB30);
    sub_1ADB06B00();
    MEMORY[0x1B26F6950](0, v11, v7, v22);
    _Block_release(v22);

    (*(v26 + 8))(v7, v4);
    return (*(v25 + 8))(v11, v8);
  }

  return result;
}

void sub_1AD4E9680(uint64_t a1, unint64_t a2)
{
  v4 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passUniqueIdentifiers;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (!v5[2])
  {
    goto LABEL_40;
  }

  v40 = a2;
  v7 = v5[4];
  v6 = v5[5];
  v8 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passesForUniqueIdentifier;
  swift_beginAccess();
  v42 = v8;
  v9 = *(a1 + v8);
  if (*(v9 + 16))
  {
    v41 = a1;

    v10 = sub_1AD425BEC(v7, v6);
    v12 = v11;

    if (v12)
    {
      v13 = *(*(v9 + 56) + 8 * v10);

      v14 = [v13 devicePrimaryPaymentApplication];

      if (v14)
      {
        v15 = [v14 secureElementIdentifier];

        v16 = v40;
        if (v15)
        {
          v38 = sub_1ADB063B0();
          v39 = v17;

          if (v40 >> 62)
          {
LABEL_36:
            v18 = sub_1ADB06D00();
            if (!v18)
            {
              goto LABEL_37;
            }

LABEL_10:
            v19 = 0;
            v43 = v16 & 0xC000000000000001;
            v20 = v16 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v43)
              {
                v21 = MEMORY[0x1B26F6CC0](v19, v16);
              }

              else
              {
                if (v19 >= *(v20 + 16))
                {
                  goto LABEL_39;
                }

                v21 = *(v16 + 8 * v19 + 32);
              }

              v22 = v21;
              v23 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                __break(1u);
LABEL_39:
                __break(1u);
LABEL_40:
                __break(1u);
                goto LABEL_41;
              }

              v24 = [v21 uniqueID];
              if (!v24)
              {
                goto LABEL_43;
              }

              v25 = v24;
              v26 = sub_1ADB063B0();
              v28 = v27;

              v29 = [v22 devicePrimaryPaymentApplication];
              if (v29 && (v30 = v29, v31 = [v29 secureElementIdentifier], v30, v31))
              {
                v32 = sub_1ADB063B0();
                v34 = v33;

                if (*(*(v41 + v42) + 16))
                {

                  sub_1AD425BEC(v26, v28);
                  if (v35)
                  {

                    if (v39)
                    {
                      if (v38 == v32 && v39 == v34)
                      {

                        goto LABEL_31;
                      }

                      v36 = sub_1ADB06F50();

                      if (v36)
                      {
LABEL_31:
                        swift_beginAccess();
                        v22 = v22;
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        v44 = *(v41 + v42);
                        *(v41 + v42) = 0x8000000000000000;
                        sub_1AD4EC9E0(v22, v26, v28, isUniquelyReferenced_nonNull_native, sub_1AD4B1430, sub_1AD4AF564);

                        *(v41 + v42) = v44;
                        swift_endAccess();
LABEL_33:

                        v16 = v40;
                        goto LABEL_12;
                      }
                    }

                    else
                    {
                    }

                    goto LABEL_33;
                  }
                }

                else
                {
                }

                v16 = v40;
              }

              else
              {
              }

LABEL_12:
              ++v19;
              if (v23 == v18)
              {
                goto LABEL_37;
              }
            }
          }
        }

        else
        {
          v38 = 0;
          v39 = 0;
          if (v40 >> 62)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        v38 = 0;
        v39 = 0;
        v16 = v40;
        if (v40 >> 62)
        {
          goto LABEL_36;
        }
      }

      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
LABEL_37:

        return;
      }

      goto LABEL_10;
    }
  }

  else
  {
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

void sub_1AD4E9B70()
{
  v2 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passUniqueIdentifiers;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!v3[2])
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v1 = v3[4];
  v4 = v3[5];
  v5 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passesForUniqueIdentifier;
  swift_beginAccess();
  v83 = v0;
  v6 = *(v0 + v5);
  if (!*(v6 + 16))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v1 = sub_1AD425BEC(v1, v4);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v9 = *(*(v6 + 56) + 8 * v1);

  v84 = 0;
  v85 = 0xE000000000000000;
  v10 = [v9 uniqueID];
  if (!v10)
  {
LABEL_81:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = sub_1ADB063B0();
  v14 = v13;

  MEMORY[0x1B26F6530](v12, v14);

  v16 = v84;
  v15 = v85;
  v88 = v84;
  v89 = v85;
  v17 = [v9 devicePrimaryPaymentApplication];
  v82 = v9;
  if (v17)
  {
    v18 = v17;
    v19 = [v17 state];

    v20 = PKDisplayableStringForPaymentApplicationState(v19);
    if (v20)
    {
      v21 = v20;
      v22 = sub_1ADB063B0();
      v24 = v23;

      v25 = v22;
    }

    else
    {
      v24 = 0xE700000000000000;
      v25 = 0x6E776F6E6B6E75;
    }

    v26 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v26 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (!v26)
    {

      v84 = v19;
      sub_1ADB06EF0();
    }

    MEMORY[0x1B26F6530]();

    MEMORY[0x1B26F6530](41, 0xE100000000000000);

    MEMORY[0x1B26F6530](10272, 0xE200000000000000);

    v16 = v88;
    v15 = v89;
  }

  v84 = 0;
  v85 = 0xE000000000000000;
  sub_1ADB06C10();
  v86 = 0;
  v87 = 0xE000000000000000;
  MEMORY[0x1B26F6530](0xD000000000000023, 0x80000001ADBA2C20);
  MEMORY[0x1B26F6530](v16, v15);
  MEMORY[0x1B26F6530](0x736573736170202CLL, 0xEB000000005B203ALL);
  v27 = v83;
  v28 = *(v83 + v2);
  v1 = MEMORY[0x1E69E7CC0];
  v84 = MEMORY[0x1E69E7CC0];
  v29 = *(v28 + 16);

  if (v29)
  {
    v30 = 0;
    v31 = v28 + 40;
    while (1)
    {
      v32 = (v31 + 16 * v30);
      v33 = v30;
      while (1)
      {
        if (v33 >= *(v28 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        v34 = *(v27 + v5);
        if (*(v34 + 16))
        {
          break;
        }

LABEL_17:
        ++v33;
        v32 += 2;
        if (v29 == v33)
        {
          goto LABEL_25;
        }
      }

      v35 = *(v32 - 1);
      v36 = *v32;

      v37 = sub_1AD425BEC(v35, v36);
      if ((v38 & 1) == 0)
      {
        break;
      }

      v39 = *(*(v34 + 56) + 8 * v37);

      MEMORY[0x1B26F6680](v40);
      if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1ADB06640();
      }

      v30 = v33 + 1;
      sub_1ADB06670();
      v1 = v84;
      v31 = v28 + 40;
      v27 = v83;
      if (v29 - 1 == v33)
      {
        goto LABEL_25;
      }
    }

    v27 = v83;
    goto LABEL_17;
  }

LABEL_25:

  if (v1 >> 62)
  {
LABEL_42:
    v41 = sub_1ADB06D00();
    if (v41)
    {
      goto LABEL_27;
    }

    goto LABEL_43;
  }

  v41 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v41)
  {
LABEL_27:
    v84 = MEMORY[0x1E69E7CC0];
    v42 = &v84;
    sub_1AD4506A8(0, v41 & ~(v41 >> 63), 0);
    if (v41 < 0)
    {
      __break(1u);
    }

    else
    {
      v43 = 0;
      v44 = v84;
      while (1)
      {
        v45 = (v1 & 0xC000000000000001) != 0 ? MEMORY[0x1B26F6CC0](v43, v1) : *(v1 + 8 * v43 + 32);
        v42 = v45;
        v46 = [v42 uniqueID];
        if (!v46)
        {
          break;
        }

        v47 = v46;
        v48 = sub_1ADB063B0();
        v50 = v49;

        if (!v50)
        {
          goto LABEL_80;
        }

        v84 = v44;
        v52 = *(v44 + 16);
        v51 = *(v44 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_1AD4506A8((v51 > 1), v52 + 1, 1);
          v44 = v84;
        }

        ++v43;
        *(v44 + 16) = v52 + 1;
        v53 = v44 + 16 * v52;
        *(v53 + 32) = v48;
        *(v53 + 40) = v50;
        if (v41 == v43)
        {

          goto LABEL_44;
        }
      }
    }

LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

LABEL_43:

  v44 = MEMORY[0x1E69E7CC0];
LABEL_44:
  v84 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A750);
  sub_1AD43FACC(&qword_1EB59C220, &qword_1EB59A750);
  v54 = sub_1ADB062F0();
  v56 = v55;

  MEMORY[0x1B26F6530](v54, v56);

  MEMORY[0x1B26F6530](0xD00000000000001DLL, 0x80000001ADBA2C50);
  v57 = v83 + OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_externalProvisioningMode;
  swift_beginAccess();
  v58 = *v57;
  LOBYTE(v57) = *(v57 + 8);
  sub_1AD4ECD14(v58, v57);
  v59 = SEProvisionedPasses.ExternalProvisioningMode.description.getter(v58, v57);
  v61 = v60;
  sub_1AD3D784C(v58, v57);
  MEMORY[0x1B26F6530](v59, v61);

  MEMORY[0x1B26F6530](0xD00000000000001ELL, 0x80000001ADBA2C70);
  if (*(v83 + OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_isExpressModeSetupOptional))
  {
    v62 = 1702195828;
  }

  else
  {
    v62 = 0x65736C6166;
  }

  if (*(v83 + OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_isExpressModeSetupOptional))
  {
    v63 = 0xE400000000000000;
  }

  else
  {
    v63 = 0xE500000000000000;
  }

  MEMORY[0x1B26F6530](v62, v63);

  MEMORY[0x1B26F6530](0xD000000000000014, 0x80000001ADBA2C90);
  if (*(v83 + OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_isExpressEnabled))
  {
    v64 = 1702195828;
  }

  else
  {
    v64 = 0x65736C6166;
  }

  if (*(v83 + OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_isExpressEnabled))
  {
    v65 = 0xE400000000000000;
  }

  else
  {
    v65 = 0xE500000000000000;
  }

  MEMORY[0x1B26F6530](v64, v65);

  MEMORY[0x1B26F6530](0xD000000000000012, 0x80000001ADBA2CB0);
  v66 = (v83 + OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_cardIdentifier);
  swift_beginAccess();
  if (v66[1])
  {
    v67 = *v66;
    v68 = v66[1];
  }

  else
  {
    v68 = 0xE300000000000000;
    v67 = 7104878;
  }

  MEMORY[0x1B26F6530](v67, v68);

  MEMORY[0x1B26F6530](0xD000000000000018, 0x80000001ADBA2CD0);
  v69 = sub_1ADB06EF0();
  MEMORY[0x1B26F6530](v69);

  MEMORY[0x1B26F6530](0xD000000000000027, 0x80000001ADBA2CF0);
  v70 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_notificationSuppressionAssertion;
  swift_beginAccess();
  v71 = *(v83 + v70);
  if (v71)
  {
    v72 = 7562585;
  }

  else
  {
    v72 = 28494;
  }

  if (v71)
  {
    v73 = 0xE300000000000000;
  }

  else
  {
    v73 = 0xE200000000000000;
  }

  MEMORY[0x1B26F6530](v72, v73);

  MEMORY[0x1B26F6530](0xD00000000000002FLL, 0x80000001ADBA2D20);
  v74 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_contactlessInterfaceSuppressionAssertion;
  swift_beginAccess();
  v75 = *(v83 + v74);
  if (v75)
  {
    v76 = 7562585;
  }

  else
  {
    v76 = 28494;
  }

  if (v75)
  {
    v77 = 0xE300000000000000;
  }

  else
  {
    v77 = 0xE200000000000000;
  }

  MEMORY[0x1B26F6530](v76, v77);

  MEMORY[0x1B26F6530](0xD000000000000022, 0x80000001ADBA2D50);
  v78 = (v83 + OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_provisioningTemplateIdentifier);
  swift_beginAccess();
  v79 = v78[1];
  if (v79)
  {
    v80 = *v78;
  }

  else
  {
    v80 = 0;
  }

  if (v79)
  {
    v81 = v79;
  }

  else
  {
    v81 = 0xE000000000000000;
  }

  MEMORY[0x1B26F6530](v80, v81);

  MEMORY[0x1B26F6530](4071468, 0xE300000000000000);
}

uint64_t static SEProvisionedPasses.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EB59C190 = a1;
  return result;
}

void sub_1AD4EA654(void *a1)
{
  swift_beginAccess();

  v3 = sub_1ADB06600();

  v4 = sub_1ADB06370();
  [a1 encodeObject:v3 forKey:v4];

  swift_beginAccess();
  sub_1AD3D3200(0, &unk_1EB599EA0);

  v5 = sub_1ADB06260();

  v6 = sub_1ADB06370();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_isExpressModeSetupOptional);
  v8 = sub_1ADB06370();
  [a1 encodeBool:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_isExpressEnabled);
  v10 = sub_1ADB06370();
  [a1 encodeBool:v9 forKey:v10];

  v11 = v1 + OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_cardIdentifier;
  swift_beginAccess();
  if (*(v11 + 8))
  {

    v12 = sub_1ADB06370();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_1ADB06370();
  [a1 encodeObject:v12 forKey:v13];
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59C230);
  v14 = sub_1ADB06260();

  v15 = sub_1ADB06370();
  [a1 encodeObject:v14 forKey:v15];

  v16 = v1 + OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_provisioningTemplateIdentifier;
  swift_beginAccess();
  if (*(v16 + 8))
  {

    v17 = sub_1ADB06370();
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_1ADB06370();
  [a1 encodeObject:v17 forKey:v18];
  swift_unknownObjectRelease();

  v19 = v1 + OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_externalProvisioningMode;
  swift_beginAccess();
  v20 = *v19;
  if (*(v19 + 8))
  {
    if (*(v19 + 8) == 1)
    {
      v21 = v20;
      v22 = sub_1ADB06370();
      v23 = sub_1ADB06370();
      [a1 encodeObject:v22 forKey:v23];

      v24 = v21;
      v25 = sub_1ADB06370();
      [a1 encodeObject:v24 forKey:v25];

      sub_1AD3D784C(v20, 1u);
      sub_1AD3D784C(v20, 1u);
    }

    else
    {
      v31 = sub_1ADB06370();
      v32 = sub_1ADB06370();
      [a1 encodeObject:v31 forKey:v32];
    }
  }

  else
  {
    v26 = v20;
    v27 = sub_1ADB06370();
    v28 = sub_1ADB06370();
    [a1 encodeObject:v27 forKey:v28];

    v29 = v26;
    v30 = sub_1ADB06370();
    [a1 encodeObject:v29 forKey:v30];

    sub_1AD3D784C(v20, 0);
    sub_1AD3D784C(v20, 0);
  }
}

id SEProvisionedPasses.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_cardIdentifier];
  *v4 = 0;
  v4[1] = 0;
  v40 = v4;
  v38 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_notificationSuppressionAssertion;
  *&v2[OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_notificationSuppressionAssertion] = 0;
  v39 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_contactlessInterfaceSuppressionAssertion;
  *&v2[OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_contactlessInterfaceSuppressionAssertion] = 0;
  v5 = &v2[OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_provisioningTemplateIdentifier];
  *v5 = 0;
  v5[1] = 0;
  v41 = v5;
  v6 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passUniqueIdentifiers;
  v7 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passUniqueIdentifiers] = MEMORY[0x1E69E7CC0];
  v8 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passesForUniqueIdentifier;
  *&v2[v8] = sub_1AD426764(v7);
  v42 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_moreInfoItemsForPass;
  *&v2[v42] = sub_1AD426778(v7);
  v9 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_suppressMakeDefaultOfferForPass;
  *&v2[v9] = sub_1AD42674C(v7);
  v10 = sub_1AD3D3200(0, &qword_1EB59C2D0);
  v11 = sub_1ADB069B0();
  if (v11)
  {
    v7 = v11;
  }

  v12 = sub_1AD44866C(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C240);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1ADB78CE0;
  v37 = v10;
  *(v13 + 32) = v10;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1ADB78CE0;
  *(v14 + 32) = sub_1AD3D3200(0, &unk_1EB599EA0);
  v15 = a1;
  v16 = sub_1ADB069A0();

  if (!v16 || (sub_1AD4EB498(v16), v18 = v17, , !v18))
  {
    v18 = sub_1AD426764(MEMORY[0x1E69E7CC0]);

    if (v12[2])
    {
      goto LABEL_6;
    }

LABEL_11:

LABEL_13:

    type metadata accessor for SEProvisionedPasses();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if (!v12[2])
  {
    goto LABEL_11;
  }

LABEL_6:
  if (!*(v18 + 16) || (v20 = v12[4], v19 = v12[5], , sub_1AD425BEC(v20, v19), LOBYTE(v20) = v21, , (v20 & 1) == 0))
  {

    goto LABEL_13;
  }

  swift_beginAccess();
  *&v2[v6] = v12;

  swift_beginAccess();
  *&v2[v8] = v18;

  v22 = sub_1ADB06980();
  if (v22)
  {
    v46 = 0;
    v47 = 0;
    v23 = v22;
    sub_1ADB063A0();
  }

  v25 = &v2[OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_externalProvisioningMode];
  *v25 = 0;
  v25[8] = 2;
  v46 = 0;
  v47 = 0;
  v26 = sub_1ADB06980();
  sub_1ADB063A0();

  swift_beginAccess();
  *v40 = 0;
  v40[1] = 0;

  v44 = 0;
  v45 = 0;
  v27 = sub_1ADB06980();
  sub_1ADB063A0();

  swift_beginAccess();
  *v41 = 0;
  v41[1] = 0;

  v28 = sub_1ADB06370();
  v29 = [v15 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_isExpressModeSetupOptional] = v29;
  v30 = sub_1ADB06370();
  v31 = [v15 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_isExpressEnabled] = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1ADB78CE0;
  *(v32 + 32) = v37;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1ADB81FB0;
  *(v33 + 32) = sub_1AD3D3200(0, &qword_1EB59C248);
  *(v33 + 40) = sub_1AD3D3200(0, &unk_1EB59B390);
  v34 = sub_1ADB069A0();

  if (!v34 || (v35 = sub_1AD4EB77C(v34), , !v35))
  {
    v35 = sub_1AD426778(MEMORY[0x1E69E7CC0]);
  }

  *&v2[v42] = v35;

  v43.receiver = v2;
  v43.super_class = type metadata accessor for SEProvisionedPasses();
  v36 = objc_msgSendSuper2(&v43, sel_init);

  return v36;
}

void sub_1AD4EB498(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C260);
    v2 = sub_1ADB06D30();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {
      goto LABEL_23;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1AD42E180(*(a1 + 48) + 40 * v12, v26);
        sub_1AD3C94C4(*(a1 + 56) + 32 * v12, v27 + 8);
        v24[0] = v27[0];
        v24[1] = v27[1];
        v25 = v28;
        v23[0] = v26[0];
        v23[1] = v26[1];
        sub_1AD42E180(v23, v22);
        if (!swift_dynamicCast())
        {
          sub_1AD3D0E3C(v23, &qword_1EB59C268);

          goto LABEL_23;
        }

        sub_1AD3C94C4(v24 + 8, v22);
        sub_1AD3D0E3C(v23, &qword_1EB59C268);
        sub_1AD3D3200(0, &unk_1EB599EA0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v13 = sub_1AD425BEC(v20, v21);
        v14 = v13;
        if (v15)
        {
          v8 = (v2[6] + 16 * v13);
          *v8 = v20;
          v8[1] = v21;

          v9 = v2[7];
          v10 = *(v9 + 8 * v14);
          *(v9 + 8 * v14) = v20;

          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_25;
          }

          *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
          v16 = (v2[6] + 16 * v13);
          *v16 = v20;
          v16[1] = v21;
          *(v2[7] + 8 * v13) = v20;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_26;
          }

          v2[2] = v19;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }

LABEL_23:

      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

unint64_t sub_1AD4EB77C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59C270);
    v2 = sub_1ADB06D30();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        sub_1AD42E180(*(a1 + 48) + 40 * v11, v24);
        sub_1AD3C94C4(*(a1 + 56) + 32 * v11, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_1AD42E180(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_1AD3D0E3C(v21, &qword_1EB59C268);

          goto LABEL_23;
        }

        sub_1AD3C94C4(v22 + 8, v20);
        sub_1AD3D0E3C(v21, &qword_1EB59C268);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59C230);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1AD425BEC(v18, v19);
        v12 = result;
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;

          *(v2[7] + 8 * v12) = v18;

          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

id SEProvisionedPasses.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *SEProvisionedPasses.ExternalProvisioningMode.externalOptions.getter(void *a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v4 = a1;
  return a1;
}

uint64_t SEProvisionedPasses.ExternalProvisioningMode.description.getter(void *a1, char a2)
{
  if (!a2)
  {
    v8 = [a1 devices];
    sub_1AD3D3200(0, qword_1EB59C5A0);
    v9 = sub_1ADB06610();

    if (v9 >> 62)
    {
      v10 = sub_1ADB06D00();
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    v25 = MEMORY[0x1E69E7CC0];
    result = sub_1AD4506A8(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
      __break(1u);
      return result;
    }

    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1B26F6CC0](v12, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = [v14 serialNumber];
      v16 = sub_1ADB063B0();
      v18 = v17;

      v20 = *(v25 + 16);
      v19 = *(v25 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1AD4506A8((v19 > 1), v20 + 1, 1);
      }

      ++v12;
      *(v25 + 16) = v20 + 1;
      v21 = v25 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
    }

    while (v10 != v12);
LABEL_19:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A750);
    sub_1AD43FACC(&qword_1EB59C220, &qword_1EB59A750);
    v22 = sub_1ADB062F0();
    v6 = v23;

    sub_1ADB06C10();

    v24 = 0xD000000000000010;
    v7 = v22;
    goto LABEL_20;
  }

  if (a2 == 1)
  {
    sub_1ADB06C10();

    v24 = 0xD000000000000016;
    v3 = [a1 serialNumber];
    v4 = sub_1ADB063B0();
    v6 = v5;

    v7 = v4;
LABEL_20:
    MEMORY[0x1B26F6530](v7, v6);

    MEMORY[0x1B26F6530](41, 0xE100000000000000);
    return v24;
  }

  if (a1)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0x656E6F6E2ELL;
  }
}

uint64_t static SEProvisionedPasses.ExternalProvisioningMode.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
LABEL_11:
      sub_1AD3D3200(0, &qword_1EB5982B0);
      return sub_1ADB069D0() & 1;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a4 == 1)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (a1)
  {
    if (a4 != 2 || a3 != 1)
    {
      return 0;
    }
  }

  else if (a4 != 2 || a3)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1AD4EBF50(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

LABEL_6:
    sub_1AD3D3200(0, &qword_1EB5982B0);
    return sub_1ADB069D0() & 1;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (*a1)
  {
    if (v3 != 2 || v2 != 1)
    {
      return 0;
    }
  }

  else if (v3 != 2 || v2 != 0)
  {
    return 0;
  }

  return 1;
}

_OWORD *sub_1AD4EC028(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1AD425BEC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1AD4B0848();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1AD4ADDB8(v16, a4 & 1);
    v11 = sub_1AD425BEC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1ADB06FF0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1AD41C9D0(a1, v22);
  }

  else
  {
    sub_1AD4ECD70(v11, a2, a3, a1, v21);
  }
}

void sub_1AD4EC178(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1AD425BEC(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1AD4AE070(v20, a6 & 1);
      v15 = sub_1AD425BEC(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1ADB06FF0();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1AD4B09EC();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    v27 = *v26;
    v28 = *(v26 + 8);
    v29 = *(v26 + 16);
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = a3 & 1;

    sub_1AD433928(v27, v28, v29);
    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v25[6] + 16 * v15);
  *v30 = a4;
  v30[1] = a5;
  v31 = v25[7] + 24 * v15;
  *v31 = a1;
  *(v31 + 8) = a2;
  *(v31 + 16) = a3 & 1;
  v32 = v25[2];
  v19 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v33;
}

unint64_t sub_1AD4EC328(char a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AD42BE78(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1AD4B0E80();
    result = v17;
    goto LABEL_8;
  }

  sub_1AD4AE8CC(v14, a3 & 1);
  result = sub_1AD42BE78(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1ADB06FF0();
  __break(1u);
  return result;
}

_OWORD *sub_1AD4EC44C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1AD42BEE4(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1AD4B0FCC();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1AD4AEB4C(v13, a3 & 1);
    v8 = sub_1AD42BEE4(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for ODIAttributeKey(0);
      result = sub_1ADB06FF0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return sub_1AD41C9D0(a1, v19);
  }

  else
  {
    sub_1AD4ECDDC(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_1AD4EC58C(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AD42BFBC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1AD4B114C();
    result = v17;
    goto LABEL_8;
  }

  sub_1AD4AEE1C(v14, a3 & 1);
  result = sub_1AD42BFBC(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1ADB06FF0();
  __break(1u);
  return result;
}

uint64_t sub_1AD4EC6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1AD425BEC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1AD4AE350(v18, a5 & 1);
      v13 = sub_1AD425BEC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1ADB06FF0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1AD4B0B84();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_1AD4EC838(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1AD425BEC(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1AD4AF284(v20, a6 & 1);
      v15 = sub_1AD425BEC(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_1ADB06FF0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1AD4B1298();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    v27 = *v26;
    v28 = *(v26 + 8);
    *v26 = a1;
    *(v26 + 8) = a2;
    v29 = *(v26 + 16);
    *(v26 + 16) = a3;

    return sub_1AD47A35C(v27, v28, v29);
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v31 = (v25[6] + 16 * v15);
  *v31 = a4;
  v31[1] = a5;
  v32 = v25[7] + 24 * v15;
  *v32 = a1;
  *(v32 + 8) = a2;
  *(v32 + 16) = a3;
  v33 = v25[2];
  v19 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v34;
}

void sub_1AD4EC9E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1AD425BEC(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_1AD425BEC(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1ADB06FF0();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    v26 = v25[7];
    v27 = *(v26 + 8 * v15);
    *(v26 + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a2;
  v28[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v30;
}

uint64_t sub_1AD4ECB74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1AD425BEC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1AD4AF814(v16, a4 & 1);
      v11 = sub_1AD425BEC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1ADB06FF0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1AD4B15A0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

id sub_1AD4ECD14(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

unint64_t sub_1AD4ECD28(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_1AD4ECD70(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1AD41C9D0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1AD4ECDDC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1AD41C9D0(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1AD4ECE44(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1ADB06F50() & 1;
  }
}

uint64_t sub_1AD4ECE9C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1ADB06F50() & 1;
  }
}

id keypath_get_5Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t keypath_get_3Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t get_enum_tag_for_layout_string_11PassKitCore19SEProvisionedPassesC24ExternalProvisioningModeO(uint64_t a1)
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

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AD4ED5BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AD4ED64C(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1AD47F0C4(a1);
  v3 = a2();

  return v3 & 1;
}

uint64_t sub_1AD4ED6D8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = sub_1ADB06610();
  v7 = a1;
  v8 = sub_1AD47F0C4(v6);

  LOBYTE(v6) = a4(v8);

  return v6 & 1;
}

uint64_t sub_1AD4ED788(uint64_t a1)
{
  v2 = sub_1ADB061A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AD47F0C4(a1);
  v7 = *(v6 + 16);
  if (v7)
  {
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = (*(v8 + 64) + 32) & ~*(v8 + 64);
    v15 = v6;
    v12 = v6 + v11;
    v13 = *(v8 + 56);
    v10(v5, v6 + v11, v2);
    while (1)
    {
      sub_1ADB06150();
      (*(v8 - 8))(v5, v2);
      v12 += v13;
      if (!--v7)
      {
        break;
      }

      v9(v5, v12, v2);
    }
  }
}

char *sub_1AD4ED9FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    v3 = MEMORY[0x1E69E7CC0];
    v4 = *(a1 + 16);
    do
    {
      v6 = *v2;
      v14[0] = *(v2 - 1);
      v14[1] = v6;

      sub_1AD4EDB70(v14, &v12);

      v7 = v13;
      if (v13)
      {
        v8 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1AD424F70(0, *(v3 + 2) + 1, 1, v3);
        }

        v10 = *(v3 + 2);
        v9 = *(v3 + 3);
        if (v10 >= v9 >> 1)
        {
          v3 = sub_1AD424F70((v9 > 1), v10 + 1, 1, v3);
        }

        *(v3 + 2) = v10 + 1;
        v5 = &v3[16 * v10];
        *(v5 + 4) = v8;
        *(v5 + 5) = v7;
      }

      v2 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  result = v3;
  if (v1 != *(v3 + 2))
  {

    return sub_1AD5058C0(0xD000000000000011, 0x80000001ADB9C690, v1);
  }

  return result;
}

uint64_t sub_1AD4EDB70@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v33 = a2;
  v4 = sub_1ADB061A0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C298);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  v17 = *a1;
  v18 = a1[1];
  v32 = v17;
  sub_1ADB060D0();
  if (v2)
  {

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  (*(v5 + 56))(v16, v19, 1, v4);
  sub_1AD4EF740(v16, v14);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    sub_1AD3D0E3C(v14, &qword_1EB59C298);
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
      v35 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1AD3CA88C(v32, v18, &v35);
      _os_log_impl(&dword_1AD337000, v21, v22, "Failed to find applet type for AID: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1B26F9F20](v24, -1, -1);
      MEMORY[0x1B26F9F20](v23, -1, -1);
    }

    result = sub_1AD3D0E3C(v16, &qword_1EB59C298);
    v26 = v33;
    *v33 = 0;
    v26[1] = 0;
  }

  else
  {
    (*(v5 + 32))(v10, v14, v4);
    (*(v5 + 16))(v8, v10, v4);
    sub_1AD4F21C4(v8, &v34);
    v27 = ProvisioningSEStorageAppletType.rawValue.getter();
    v29 = v28;
    (*(v5 + 8))(v10, v4);
    result = sub_1AD3D0E3C(v16, &qword_1EB59C298);
    v30 = v33;
    *v33 = v27;
    v30[1] = v29;
  }

  return result;
}

uint64_t sub_1AD4EE018(uint64_t a1, void *a2, uint64_t (*a3)(_BYTE *))
{
  v6 = sub_1ADB061A0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v23[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23[-v14];

  v16._countAndFlagsBits = a1;
  v16._object = a2;
  ProvisioningSEStorageAppletType.init(rawValue:)(v16);
  if (v24 == 27)
  {
    v17 = *MEMORY[0x1E69C8638];
    v18 = *(v7 + 104);
    v18(v15, v17, v6);
  }

  else
  {
    v23[15] = v24;
    sub_1AD4F214C(v13);
    (*(v7 + 32))(v15, v13, v6);
    v17 = *MEMORY[0x1E69C8638];
    v18 = *(v7 + 104);
  }

  v18(v10, v17, v6);
  sub_1AD4EF3B8();
  v19 = sub_1ADB06360();
  v20 = *(v7 + 8);
  v20(v10, v6);
  if (v19)
  {
    v21 = 0;
  }

  else
  {
    v21 = a3(v15);
  }

  v20(v15, v6);
  return v21;
}

uint64_t sub_1AD4EE280(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1ADB063B0();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

uint64_t sub_1AD4EE468(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C290);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v106 = &v77[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v105 = &v77[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C298);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v113 = &v77[-v7];
  v110 = 0;
  v114 = sub_1ADB061A0();
  v8 = MEMORY[0x1EEE9AC00](v114);
  v112 = &v77[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v103 = &v77[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v77[-v13];
  v15 = *(a1 + 16);
  v109 = v12;
  if (v15)
  {
    LODWORD(v102) = *MEMORY[0x1E69C8638];
    v111 = (v12 + 104);
    v16 = *MEMORY[0x1E69C85C0];
    v100 = *MEMORY[0x1E69C8630];
    LODWORD(v101) = v16;
    v17 = *MEMORY[0x1E69C8628];
    v98 = *MEMORY[0x1E69C8598];
    v99 = v17;
    v18 = *MEMORY[0x1E69C8600];
    v96 = *MEMORY[0x1E69C85F0];
    v97 = v18;
    v19 = *MEMORY[0x1E69C85E0];
    v94 = *MEMORY[0x1E69C8618];
    v95 = v19;
    v93 = *MEMORY[0x1E69C85F8];
    v92 = *MEMORY[0x1E69C85E8];
    v91 = *MEMORY[0x1E69C8588];
    v90 = *MEMORY[0x1E69C8590];
    v89 = *MEMORY[0x1E69C8578];
    v88 = *MEMORY[0x1E69C8580];
    v87 = *MEMORY[0x1E69C8610];
    v86 = *MEMORY[0x1E69C85D8];
    v85 = *MEMORY[0x1E69C8608];
    v84 = *MEMORY[0x1E69C85B0];
    v83 = *MEMORY[0x1E69C85D0];
    v82 = *MEMORY[0x1E69C8640];
    v81 = *MEMORY[0x1E69C85A8];
    v80 = *MEMORY[0x1E69C85C8];
    v79 = *MEMORY[0x1E69C8620];
    v20 = (v12 + 56);
    v78 = *MEMORY[0x1E69C85A0];
    v107 = (v12 + 32);
    v104 = (v12 + 16);
    LODWORD(v108) = *MEMORY[0x1E69C85B8];
    v21 = (a1 + 40);
    v22 = (v12 + 8);
    v23 = MEMORY[0x1E69E7CC8];
    while (2)
    {
      v24 = *(v21 - 1);
      v25 = *v21;
      swift_bridgeObjectRetain_n();
      v26._countAndFlagsBits = v24;
      v26._object = v25;
      ProvisioningSEStorageAppletType.init(rawValue:)(v26);
      v27 = v108;
      switch(v115)
      {
        case 1:
          v27 = v78;
          goto LABEL_30;
        case 2:
          v27 = v79;
          goto LABEL_30;
        case 3:
          v27 = v80;
          goto LABEL_30;
        case 4:
          v27 = v81;
          goto LABEL_30;
        case 5:
          v27 = v82;
          goto LABEL_30;
        case 6:
          v27 = v83;
          goto LABEL_30;
        case 7:
          v27 = v84;
          goto LABEL_30;
        case 8:
          v27 = v85;
          goto LABEL_30;
        case 9:
          v27 = v86;
          goto LABEL_30;
        case 10:
          v27 = v87;
          goto LABEL_30;
        case 11:
          v27 = v88;
          goto LABEL_30;
        case 12:
          v27 = v89;
          goto LABEL_30;
        case 13:
          v27 = v90;
          goto LABEL_30;
        case 14:
          v27 = v91;
          goto LABEL_30;
        case 15:
          v27 = v92;
          goto LABEL_30;
        case 16:
          v27 = v93;
          goto LABEL_30;
        case 17:
          v27 = v94;
          goto LABEL_30;
        case 18:
          v27 = v95;
          goto LABEL_30;
        case 19:
          v27 = v96;
          goto LABEL_30;
        case 20:
          v27 = v97;
          goto LABEL_30;
        case 21:
          v27 = v98;
          goto LABEL_30;
        case 22:
          v27 = v99;
          goto LABEL_30;
        case 23:
          v27 = v100;
          goto LABEL_30;
        case 24:
          v27 = v101;
          goto LABEL_30;
        case 25:
        case 26:
          v27 = v102;
          goto LABEL_30;
        case 27:
          v28 = v114;
          (*v20)(v113, 1, 1, v114);
          (*v111)(v14, v102, v28);
          goto LABEL_31;
        default:
LABEL_30:
          v30 = v113;
          v29 = v114;
          (*v111)(v113, v27, v114);
          (*v20)(v30, 0, 1, v29);
          (*v107)(v14, v30, v29);
LABEL_31:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v115 = v23;
          v33 = sub_1AD42C044(v14);
          v34 = v23[2];
          v35 = (v32 & 1) == 0;
          v36 = v34 + v35;
          if (__OFADD__(v34, v35))
          {
            goto LABEL_69;
          }

          v37 = v32;
          if (v23[3] >= v36)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v32)
              {
                goto LABEL_40;
              }
            }

            else
            {
              sub_1AD4B1714();
              v23 = v115;
              if (v37)
              {
                goto LABEL_40;
              }
            }
          }

          else
          {
            sub_1AD4AFAC8(v36, isUniquelyReferenced_nonNull_native);
            v38 = v115;
            v39 = sub_1AD42C044(v14);
            if ((v37 & 1) != (v40 & 1))
            {
              goto LABEL_72;
            }

            v33 = v39;
            v23 = v38;
            if (v37)
            {
              goto LABEL_40;
            }
          }

          v23[(v33 >> 6) + 8] |= 1 << v33;
          (*(v109 + 16))(v23[6] + *(v109 + 72) * v33, v14, v114);
          *(v23[7] + 8 * v33) = 0;
          v41 = v23[2];
          v42 = __OFADD__(v41, 1);
          v43 = v41 + 1;
          if (v42)
          {
            goto LABEL_71;
          }

          v23[2] = v43;
LABEL_40:
          v44 = v23[7];
          v45 = *(v44 + 8 * v33);
          v42 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v42)
          {
            goto LABEL_70;
          }

          *(v44 + 8 * v33) = v46;

          (*v22)(v14, v114);
          v21 += 2;
          if (!--v15)
          {
            goto LABEL_46;
          }

          continue;
      }
    }
  }

  v23 = MEMORY[0x1E69E7CC8];
LABEL_46:
  v47 = 0;
  v48 = 0;
  v104 = v23;
  v51 = v23[8];
  v50 = v23 + 8;
  v49 = v51;
  v52 = 1 << *(v50 - 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v110;
  v55 = v53 & v49;
  v56 = (v52 + 63) >> 6;
  v101 = v50;
  v102 = v109 + 16;
  v111 = (v109 + 32);
  v107 = (v109 + 8);
  v108 = OBJC_IVAR____PKProvisioningSEStorageSnapshot_snapshot;
  v57 = v105;
  v58 = v106;
  while (1)
  {
    v113 = v47;
    if (!v55)
    {
      break;
    }

    v110 = v54;
    v60 = v48;
LABEL_61:
    v63 = __clz(__rbit64(v55));
    v55 &= v55 - 1;
    v64 = v63 | (v60 << 6);
    v65 = v103;
    v66 = v104;
    v67 = v109;
    v68 = v114;
    (*(v109 + 16))(v103, v104[6] + *(v109 + 72) * v64, v114);
    v69 = *(v66[7] + 8 * v64);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C2A0);
    v71 = *(v70 + 48);
    v72 = *(v67 + 32);
    v58 = v106;
    v72(v106, v65, v68);
    *(v58 + v71) = v69;
    (*(*(v70 - 8) + 56))(v58, 0, 1, v70);
    v54 = v110;
    v57 = v105;
LABEL_62:
    sub_1AD4EF410(v58, v57);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C2A0);
    if ((*(*(v73 - 8) + 48))(v57, 1, v73) == 1)
    {

      return v113;
    }

    (*v111)(v112, v57, v114);
    v74 = sub_1ADB060E0();
    if (v54)
    {

      v59 = 0;
      v54 = 0;
    }

    else
    {
      v59 = v74;
    }

    (*v107)(v112, v114);
    v47 = &v113[v59];
    if (__OFADD__(v113, v59))
    {
      goto LABEL_68;
    }
  }

  if (v56 <= v48 + 1)
  {
    v61 = v48 + 1;
  }

  else
  {
    v61 = v56;
  }

  v62 = v61 - 1;
  while (1)
  {
    v60 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v60 >= v56)
    {
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C2A0);
      (*(*(v75 - 8) + 56))(v58, 1, 1, v75);
      v55 = 0;
      v48 = v62;
      goto LABEL_62;
    }

    v55 = v101[v60];
    ++v48;
    if (v55)
    {
      v110 = v54;
      v48 = v60;
      goto LABEL_61;
    }
  }

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
  result = sub_1ADB06FF0();
  __break(1u);
  return result;
}

id sub_1AD4EEFB0@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + OBJC_IVAR____PKProvisioningSEStorageSnapshot_snapshot);
  a1[3] = sub_1ADB06170();
  *a1 = v4;

  return v4;
}

void sub_1AD4EF02C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____PKProvisioningSEStorageSnapshot_snapshot);
  v4 = sub_1ADB06370();
  [a1 encodeObject:v3 forKey:v4];
}

id ProvisioningSEStorageSnapshot.init(coder:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C240);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ADB78CE0;
  *(v4 + 32) = sub_1ADB06170();
  sub_1ADB06990();

  if (v10)
  {
    if (swift_dynamicCast())
    {
      *&v2[OBJC_IVAR____PKProvisioningSEStorageSnapshot_snapshot] = v8;
      v7.receiver = v2;
      v7.super_class = type metadata accessor for ProvisioningSEStorageSnapshot();
      v5 = objc_msgSendSuper2(&v7, sel_init);

      return v5;
    }
  }

  else
  {

    sub_1AD3D0E3C(v9, &unk_1EB59AE90);
  }

  type metadata accessor for ProvisioningSEStorageSnapshot();
  swift_deallocPartialClassInstance();
  return 0;
}

id ProvisioningSEStorageSnapshot.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProvisioningSEStorageSnapshot.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningSEStorageSnapshot();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1AD4EF3B8()
{
  result = qword_1EB59A1E8;
  if (!qword_1EB59A1E8)
  {
    sub_1ADB061A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59A1E8);
  }

  return result;
}

uint64_t sub_1AD4EF410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AD4EF740(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ProvisioningCarKeyStepImportKey.__allocating_init(context:credential:sharedState:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v9 = *a2;
  v7 = *(a2 + 2);
  LOBYTE(a2) = *(a2 + 24);
  *(v6 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 16) = a1;
  *(v6 + 24) = v9;
  *(v6 + 40) = v7;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  return v6;
}

uint64_t ProvisioningCarKeyStepImportKey.init(context:credential:sharedState:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v9 = *a2;
  v6 = *(a2 + 2);
  v7 = *(a2 + 24);
  *(v3 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 16) = a1;
  *(v3 + 24) = v9;
  *(v3 + 40) = v6;
  *(v3 + 48) = v7;
  *(v3 + 56) = a3;
  return v3;
}

uint64_t ProvisioningCarKeyStepImportKey.deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  MEMORY[0x1B26FA000](v0 + 72);
  return v0;
}

uint64_t ProvisioningCarKeyStepImportKey.__deallocating_deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  MEMORY[0x1B26FA000](v0 + 72);

  return swift_deallocClassInstance();
}

__n128 sub_1AD4EF960@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for ProvisioningCarKeyStepImportKey();
  v8 = swift_allocObject();
  v11 = *a2;
  v9 = a2[1].n128_u64[0];
  LOBYTE(a2) = a2[1].n128_u8[8];
  *(v8 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 16) = a1;
  result = v11;
  *(v8 + 24) = v11;
  *(v8 + 40) = v9;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *a4 = v8;
  return result;
}

uint64_t sub_1AD4EFA60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, void *a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4(a1, a2);
    [a6 setInvalidationHandler_];
    [a6 setMessageReceivedHandler_];
    swift_unknownObjectWeakAssign();
  }

  return result;
}

void sub_1AD4EFB1C(void (*a1)(id, uint64_t))
{
  v2 = [objc_opt_self() errorWithSeverity_];
  v3 = sub_1ADB06370();
  [v2 addInternalDebugDescription_];

  v4 = v2;
  a1(v2, 2);
}

uint64_t sub_1AD4EFBE4(void *a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;

    sub_1AD4F112C(a1, v12, a5, a6, a2, a3);
  }

  return result;
}

uint64_t sub_1AD4EFC98(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, BOOL), uint64_t a6)
{
  v27 = a5;
  v11 = ~a2;
  v12 = sub_1ADB06040();
  v26 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1ADB06060();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11)
  {
    v25[0] = v17;
    sub_1AD3D3200(0, &qword_1EB59A670);
    v25[1] = a6;
    v20 = a1;
    v21 = sub_1ADB068B0();
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    *(v22 + 24) = a4;
    *(v22 + 32) = a1;
    *(v22 + 40) = a2;
    aBlock[4] = sub_1AD4F1980;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD471DC4;
    aBlock[3] = &block_descriptor_52_1;
    v23 = _Block_copy(aBlock);
    sub_1AD4F19B4(a1, a2);

    sub_1ADB06050();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1AD3D76F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
    sub_1AD3D7750();
    sub_1ADB06B00();
    MEMORY[0x1B26F6950](0, v19, v14, v23);
    _Block_release(v23);

    sub_1AD4F19C8(a1, a2);
    (*(v26 + 8))(v14, v12);
    (*(v16 + 8))(v19, v25[0]);
  }

  return v27(1, a2 != -1);
}

void sub_1AD4EFF9C(char a1, void (*a2)(id, uint64_t))
{
  v4 = [objc_opt_self() pkSharingError_];
  if (a1)
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  v6 = sub_1ADB05CB0();

  v7 = [objc_opt_self() errorWithUnderlyingError:v6 defaultSeverity:v5];
  v8 = sub_1ADB06370();
  [v7 addInternalDebugDescription_];

  v9 = v7;
  a2(v7, 1);
}

void sub_1AD4F00B8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void, void), uint64_t a6, void *a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v13 = Strong;
  v14 = *(Strong + 64);
  if (v14)
  {
    v15 = [v14 supportedRadioTechnologies];
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1AD436BC0(a1, v15);
  v18 = v16;
  v20 = v19;
  if (v17 <= 1u)
  {
    if (v17)
    {
      v42 = qword_1EB5981C0;
      v43 = v16;
      if (v42 != -1)
      {
        swift_once();
      }

      v44 = sub_1ADB05FA0();
      __swift_project_value_buffer(v44, qword_1EB59AB68);

      v45 = v43;
      v46 = sub_1ADB05F80();
      v47 = sub_1ADB06860();

      if (os_log_type_enabled(v46, v47))
      {
        v90 = v20;
        v48 = swift_slowAlloc();
        v88 = v45;
        v49 = a3;
        v50 = swift_slowAlloc();
        v93 = a5;
        v51 = swift_slowAlloc();
        aBlock = v51;
        *v48 = 136315394;
        v52 = v49;
        v45 = v88;
        *(v48 + 4) = sub_1AD3CA88C(v52, a4, &aBlock);
        *(v48 + 12) = 2112;
        *(v48 + 14) = v88;
        *v50 = v18;
        v53 = v88;
        _os_log_impl(&dword_1AD337000, v46, v47, "[%s] data required %@", v48, 0x16u);
        sub_1AD3CAFA0(v50);
        MEMORY[0x1B26F9F20](v50, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v51);
        v54 = v51;
        a5 = v93;
        MEMORY[0x1B26F9F20](v54, -1, -1);
        v55 = v48;
        v20 = v90;
        MEMORY[0x1B26F9F20](v55, -1, -1);
      }

      v56 = swift_allocObject();
      *(v56 + 16) = a5;
      *(v56 + 24) = a6;
      v100 = sub_1AD4F1978;
      v101 = v56;
      aBlock = MEMORY[0x1E69E9820];
      v97 = 1107296256;
      v98 = sub_1AD3D96E8;
      v99 = &block_descriptor_46_2;
      v57 = _Block_copy(&aBlock);

      [a7 sendMessage:v45 completion:v57];
      sub_1AD423058(v18, v20, 1);

      _Block_release(v57);
    }

    else
    {
      v21 = qword_1EB5981C0;
      v22 = v16;
      if (v21 != -1)
      {
        swift_once();
      }

      v23 = sub_1ADB05FA0();
      __swift_project_value_buffer(v23, qword_1EB59AB68);
      sub_1AD4230CC(v18, v20, 0);

      v24 = sub_1ADB05F80();
      v25 = sub_1ADB06860();

      sub_1AD423058(v18, v20, 0);
      if (os_log_type_enabled(v24, v25))
      {
        v89 = v20;
        v26 = swift_slowAlloc();
        v92 = a5;
        v27 = v22;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        aBlock = v29;
        *v26 = 136315394;
        *(v26 + 4) = sub_1AD3CA88C(a3, a4, &aBlock);
        *(v26 + 12) = 2112;
        *(v26 + 14) = v27;
        *v28 = v18;
        v30 = v27;
        _os_log_impl(&dword_1AD337000, v24, v25, "[%s] credentialProvisioned: %@", v26, 0x16u);
        sub_1AD3CAFA0(v28);
        v31 = v28;
        v22 = v27;
        a5 = v92;
        MEMORY[0x1B26F9F20](v31, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x1B26F9F20](v29, -1, -1);
        v32 = v26;
        v20 = v89;
        MEMORY[0x1B26F9F20](v32, -1, -1);
      }

      v33 = v22;
      a5(v18, 0);
      sub_1AD423058(v18, v20, 0);

      sub_1AD423058(v18, v20, 0);
      sub_1AD423058(v18, v20, 0);
    }

    return;
  }

  if (v17 == 2)
  {
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
      v37 = swift_slowAlloc();
      v38 = a5;
      v39 = swift_slowAlloc();
      aBlock = v39;
      *v37 = 136315394;
      *(v37 + 4) = sub_1AD3CA88C(a3, a4, &aBlock);
      *(v37 + 12) = 2048;
      *(v37 + 14) = v18;
      _os_log_impl(&dword_1AD337000, v35, v36, "[%s] passcode failure retryCount: %ld", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v39);
      v40 = v39;
      a5 = v38;
      MEMORY[0x1B26F9F20](v40, -1, -1);
      MEMORY[0x1B26F9F20](v37, -1, -1);
    }

    if (*(v13 + 48))
    {
      v41 = 0;
    }

    else
    {
      v41 = *(v13 + 24);
    }

    v76 = [v41 statefulTransferCredential];

    if (!v76)
    {
      goto LABEL_42;
    }

    v77 = [v76 share];

    if (!v77)
    {
      goto LABEL_42;
    }

    v78 = [v77 credentialShares];
    if (!v78)
    {
      goto LABEL_39;
    }

    v79 = v78;
    sub_1AD3D3200(0, &qword_1EB59C2A8);
    v80 = sub_1ADB06610();

    if (v80 >> 62)
    {
      if (sub_1ADB06D00())
      {
        goto LABEL_35;
      }
    }

    else if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_35:
      if ((v80 & 0xC000000000000001) != 0)
      {
        v81 = MEMORY[0x1B26F6CC0](0, v80);
      }

      else
      {
        if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v81 = *(v80 + 32);
      }

      v82 = v81;

      [v82 setStatus_];

LABEL_39:
LABEL_42:
      if (v18 >= 2)
      {
        v83 = 2;
      }

      else
      {
        v83 = 3;
      }

      v84 = [objc_opt_self() pkSharingError_];
      v85 = sub_1ADB05CB0();

      v86 = PKSharingProvisioningErrorFromError(v85);
      v87 = v86;
      a5(v86, 2);

      return;
    }

    goto LABEL_42;
  }

  v91 = a3;
  v58 = v16;
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v59 = sub_1ADB05FA0();
  __swift_project_value_buffer(v59, qword_1EB59AB68);
  sub_1AD4230CC(v18, v20, 3);

  v60 = sub_1ADB05F80();
  v61 = sub_1ADB06860();

  v62 = v20;
  sub_1AD423058(v18, v20, 3);
  v94 = a5;
  if (os_log_type_enabled(v60, v61))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    aBlock = v65;
    *v63 = 136315394;
    *(v63 + 4) = sub_1AD3CA88C(v91, a4, &aBlock);
    *(v63 + 12) = 2112;
    v66 = v18;
    v67 = _swift_stdlib_bridgeErrorToNSError();
    *(v63 + 14) = v67;
    *v64 = v67;
    _os_log_impl(&dword_1AD337000, v60, v61, "[%s] failed to handle message with error: %@", v63, 0x16u);
    sub_1AD3CAFA0(v64);
    MEMORY[0x1B26F9F20](v64, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v65);
    MEMORY[0x1B26F9F20](v65, -1, -1);
    MEMORY[0x1B26F9F20](v63, -1, -1);
  }

  v68 = *(v13 + 16);
  v70 = *(v13 + 32);
  v71 = *(v13 + 40);
  v72 = *(v13 + 48);
  aBlock = *(v13 + 24);
  v69 = aBlock;
  v97 = v70;
  v98 = v71;
  LOBYTE(v99) = v72;
  sub_1AD4230CC(v18, v62, 3);
  sub_1AD3DF24C(v69, v70, v71, v72);
  v73 = sub_1AD433FC8(v18, v68, &aBlock);
  sub_1AD423058(v18, v62, 3);
  sub_1AD3CC2E0(aBlock, v97, v98, v99);
  v74 = sub_1ADB06370();
  [v73 addInternalDebugDescription_];

  v75 = v73;
  v94(v73, 2);
  sub_1AD423058(v18, v62, 3);

  sub_1AD423058(v18, v62, 3);
}

void sub_1AD4F0B20(char a1, uint64_t a2, void (*a3)(id, uint64_t))
{
  if (a1)
  {
    if (!a2)
    {
      a3(0, 255);
      return;
    }
  }

  else if (!a2)
  {
    v4 = 0;
    goto LABEL_7;
  }

  v4 = sub_1ADB05CB0();
LABEL_7:
  v5 = [objc_opt_self() errorWithUnderlyingError:v4 defaultSeverity:5];

  v6 = sub_1ADB06370();
  [v5 addInternalDebugDescription_];

  v7 = v5;
  a3(v5, 2);
}

void sub_1AD4F0C34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  if (*(a2 + 48))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a2 + 24);
  }

  v12 = [v11 statefulTransferCredential];

  if (v12 && (v13 = [v12 handle], v12, v13))
  {
    v14 = *(a2 + 64);
    *(a2 + 64) = a1;
    v15 = a1;

    swift_unknownObjectWeakAssign();
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = sub_1AD4F10E0;
    v17[4] = v10;
    v17[5] = v13;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1AD4F10EC;
    *(v18 + 24) = v17;
    v37 = sub_1AD4F10F8;
    v38 = v18;
    v33 = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_1AD471DC4;
    v36 = &block_descriptor_40;
    v19 = _Block_copy(&v33);

    v20 = v13;

    [v20 setInvalidationHandler_];
    _Block_release(v19);
    if (*(*(a2 + 16) + 33) == -16384)
    {
      v21 = 10.0;
    }

    else
    {
      v21 = 30.0;
    }

    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = sub_1AD4F10EC;
    v23[4] = v17;
    v37 = sub_1AD4F1118;
    v38 = v23;
    v33 = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_1AD430434;
    v36 = &block_descriptor_24_5;
    v24 = _Block_copy(&v33);

    v25 = swift_allocObject();
    *(v25 + 16) = sub_1AD4F10EC;
    *(v25 + 24) = v17;
    v37 = sub_1AD4F1124;
    v38 = v25;
    v33 = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_1AD471E08;
    v36 = &block_descriptor_30_3;
    v26 = _Block_copy(&v33);

    [v20 waitForMessageWithTimeout:v24 messageHandler:v26 invalidationHandler:v21];
    _Block_release(v26);
    _Block_release(v24);
  }

  else
  {
    v27 = [objc_opt_self() errorWithSeverity_];
    v28 = sub_1ADB06370();
    [v27 addInternalDebugDescription_];

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(a3 + 24);
      ObjectType = swift_getObjectType();
      v31 = *(v29 + 72);
      v32 = v27;
      v31(v27, 2, a4, a5, ObjectType, v29);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AD4F112C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  aBlock = *(a2 + 24);
  v73 = v13;
  LOBYTE(v74) = v14;

  v15 = ProvisioningCredentialsConfiguration.Credential.carKeyTransferComponents.getter();
  if (!v15)
  {
    goto LABEL_10;
  }

  v18 = v15;
  v19 = v17;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

LABEL_10:
    a5(1, 0);

    return;
  }

  v70 = Strong;
  v21 = [*(a2 + 56) sid];
  v22 = sub_1ADB063B0();
  v24 = v23;

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
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
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = v22;
      v40 = v38;
      *&aBlock = v38;
      *v37 = 136315138;
      v41 = sub_1AD3CA88C(v39, v24, &aBlock);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_1AD337000, v35, v36, "[%s] ignoring car key message because it is not a car key message", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1B26F9F20](v40, -1, -1);
      MEMORY[0x1B26F9F20](v37, -1, -1);
    }

    else
    {
    }

    a5(1, 0);

    v51 = v70;
    goto LABEL_25;
  }

  v65 = v25;
  v66 = v22;
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  v27 = qword_1EB5981C0;
  v67 = a1;
  if (v26)
  {
    if (v27 != -1)
    {
      swift_once();
    }

    v28 = sub_1ADB05FA0();
    __swift_project_value_buffer(v28, qword_1EB59AB68);

    v29 = sub_1ADB05F80();
    v30 = sub_1ADB06860();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&aBlock = v32;
      *v31 = 136315138;
      v33 = sub_1AD3CA88C(v66, v24, &aBlock);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_1AD337000, v29, v30, "[%s] ignoring car key message because it is the invite", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1B26F9F20](v32, -1, -1);
      MEMORY[0x1B26F9F20](v31, -1, -1);
    }

    else
    {
    }

    a5(1, 0);

    v51 = v67;
LABEL_25:

    return;
  }

  if (v27 != -1)
  {
    swift_once();
  }

  v42 = sub_1ADB05FA0();
  __swift_project_value_buffer(v42, qword_1EB59AB68);

  v43 = v67;
  v44 = sub_1ADB05F80();
  v45 = sub_1ADB06860();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    log = v44;
    v47 = swift_slowAlloc();
    v68 = v43;
    v48 = swift_slowAlloc();
    *&aBlock = v48;
    *v46 = 136315394;
    *(v46 + 4) = sub_1AD3CA88C(v66, v24, &aBlock);
    *(v46 + 12) = 2112;
    *(v46 + 14) = v65;
    *v47 = v65;
    v49 = v68;
    _os_log_impl(&dword_1AD337000, log, v45, "[%s] Received message: %@", v46, 0x16u);
    sub_1AD3CAFA0(v47);
    MEMORY[0x1B26F9F20](v47, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v48);
    v50 = v48;
    v43 = v68;
    MEMORY[0x1B26F9F20](v50, -1, -1);
    MEMORY[0x1B26F9F20](v46, -1, -1);
  }

  else
  {
  }

  v52 = *(a2 + 16);
  swift_beginAccess();
  v53 = *(v52 + 72);
  v54 = *(v52 + 80);
  v55 = v53;
  v56 = [v55 targetDevice];
  if (v56)
  {
    v57 = v56;
    if ([v56 respondsToSelector_])
    {
      v69 = v43;
      loga = v54;
      v58 = [v18 shareIdentifier];
      sub_1ADB063B0();

      v59 = swift_allocObject();
      swift_weakInit();
      v60 = swift_allocObject();
      v60[2] = v59;
      v60[3] = v66;
      v60[4] = v24;
      v60[5] = sub_1AD4F195C;
      v60[6] = v12;
      v60[7] = v70;

      v71 = v70;
      v61 = sub_1ADB06370();
      v75 = sub_1AD4F1968;
      v76 = v60;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v73 = sub_1AD3CE960;
      v74 = &block_descriptor_40_0;
      v62 = _Block_copy(&aBlock);

      [v57 carKeyHandleRecipientMessage:v65 forInvitationIdentifier:v61 completion:v62];
      _Block_release(v62);

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

id sub_1AD4F19B4(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

void sub_1AD4F19C8(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

id ProvisioningDevice.target.getter()
{
  result = [*(v0 + 8) targetDevice];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *ProvisioningDevice.init(type:webService:)@<X0>(id a1@<X1>, unsigned __int8 *result@<X0>, uint64_t a3@<X8>)
{
  v5 = *result;
  if (v5 != 5)
  {
    goto LABEL_11;
  }

  result = [a1 targetDevice];
  if (result)
  {
    v6 = [result deviceClass];
    result = swift_unknownObjectRelease();
    if (v6)
    {
      v7 = sub_1ADB063B0();
      v9 = v8;

      v10 = v7 == 0x656E6F685069 && v9 == 0xE600000000000000;
      if (!v10 && (sub_1ADB06F50() & 1) == 0)
      {
        v11 = v7 == 1684099177 && v9 == 0xE400000000000000;
        if (v11 || (sub_1ADB06F50() & 1) != 0)
        {

          LOBYTE(v5) = 2;
          goto LABEL_11;
        }

        if (v7 == 0x6863746157 && v9 == 0xE500000000000000 || (sub_1ADB06F50() & 1) != 0)
        {

          LOBYTE(v5) = 1;
          goto LABEL_11;
        }

        if (v7 == 6512973 && v9 == 0xE300000000000000 || (sub_1ADB06F50() & 1) != 0)
        {

          LOBYTE(v5) = 3;
          goto LABEL_11;
        }

        if (v7 == 0x447974696C616552 && v9 == 0xED00006563697665)
        {
        }

        else
        {
          v12 = sub_1ADB06F50();

          if ((v12 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        LOBYTE(v5) = 4;
        goto LABEL_11;
      }
    }

LABEL_10:
    LOBYTE(v5) = 0;
LABEL_11:
    *a3 = v5;
    *(a3 + 8) = a1;
    *(a3 + 16) = 0;
    return result;
  }

  __break(1u);
  return result;
}

void *ProvisioningDevice.peerPaymentWebService.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id ProvisioningDevice.peerPaymentTarget.getter()
{
  v1 = [*(v0 + 16) targetDevice];

  return v1;
}

void __swiftcall ProvisioningDevice.passLibrary()(PKPassLibrary_optional *__return_ptr retstr)
{
  v2 = *v1;
  v3 = objc_opt_self();
  if (v2 == 1)
  {
    v4 = [v3 sharedInstanceWithRemoteLibrary];
    if (v4)
    {
      v5 = v4;
      if ([v4 _hasRemoteLibrary])
      {
        [v5 _remoteLibrary];
      }
    }
  }

  else
  {
    v6 = [v3 sharedInstance];
  }
}

uint64_t ProvisioningDevice.DeviceType.hashValue.getter()
{
  v1 = *v0;
  sub_1ADB07090();
  MEMORY[0x1B26F7130](v1);
  return sub_1ADB070D0();
}

unint64_t sub_1AD4F1E7C()
{
  result = qword_1EB59C2B0;
  if (!qword_1EB59C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C2B0);
  }

  return result;
}

uint64_t sub_1AD4F1ED0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1AD4F1F18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

PassKitCore::ProvisioningSEStorageAppletType_optional __swiftcall ProvisioningSEStorageAppletType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ADB06FC0();

  v5 = 0;
  v6 = 9;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
      goto LABEL_23;
    case 8:
      v5 = 8;
LABEL_23:
      v6 = v5;
      break;
    case 9:
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    default:
      v6 = 27;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t ProvisioningSEStorageAppletType.sheetCredentialType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1ADB060A0();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_1E79C3BF8 + v3);

  return v5(a1, v6, v4);
}

uint64_t sub_1AD4F214C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1ADB061A0();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_1E79C3CD0 + v3);

  return v5(a1, v6, v4);
}

uint64_t sub_1AD4F21C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1ADB061A0();
  v5 = *(v4 - 8);
  result = (*(v5 + 88))(a1, v4);
  if (result == *MEMORY[0x1E69C85B8])
  {
    v7 = 0;
  }

  else if (result == *MEMORY[0x1E69C85A0])
  {
    v7 = 1;
  }

  else if (result == *MEMORY[0x1E69C8620])
  {
    v7 = 2;
  }

  else if (result == *MEMORY[0x1E69C85C8])
  {
    v7 = 3;
  }

  else if (result == *MEMORY[0x1E69C85A8])
  {
    v7 = 4;
  }

  else if (result == *MEMORY[0x1E69C8640])
  {
    v7 = 5;
  }

  else if (result == *MEMORY[0x1E69C85D0])
  {
    v7 = 6;
  }

  else if (result == *MEMORY[0x1E69C85B0])
  {
    v7 = 7;
  }

  else if (result == *MEMORY[0x1E69C8608])
  {
    v7 = 8;
  }

  else if (result == *MEMORY[0x1E69C85D8])
  {
    v7 = 9;
  }

  else if (result == *MEMORY[0x1E69C8610])
  {
    v7 = 10;
  }

  else if (result == *MEMORY[0x1E69C8580])
  {
    v7 = 11;
  }

  else if (result == *MEMORY[0x1E69C8578])
  {
    v7 = 12;
  }

  else if (result == *MEMORY[0x1E69C8590])
  {
    v7 = 13;
  }

  else if (result == *MEMORY[0x1E69C8588])
  {
    v7 = 14;
  }

  else if (result == *MEMORY[0x1E69C85E8])
  {
    v7 = 15;
  }

  else if (result == *MEMORY[0x1E69C85F8])
  {
    v7 = 16;
  }

  else if (result == *MEMORY[0x1E69C8618])
  {
    v7 = 17;
  }

  else if (result == *MEMORY[0x1E69C8630])
  {
    v7 = 23;
  }

  else if (result == *MEMORY[0x1E69C85C0])
  {
    v7 = 24;
  }

  else if (result == *MEMORY[0x1E69C85E0])
  {
    v7 = 18;
  }

  else if (result == *MEMORY[0x1E69C85F0])
  {
    v7 = 19;
  }

  else if (result == *MEMORY[0x1E69C8600])
  {
    v7 = 20;
  }

  else if (result == *MEMORY[0x1E69C8598])
  {
    v7 = 21;
  }

  else if (result == *MEMORY[0x1E69C8628])
  {
    v7 = 22;
  }

  else
  {
    if (result != *MEMORY[0x1E69C8638])
    {
      result = (*(v5 + 8))(a1, v4);
    }

    v7 = 26;
  }

  *a2 = v7;
  return result;
}

unint64_t ProvisioningSEStorageAppletType.rawValue.getter()
{
  result = 0x6E6F677241;
  switch(*v0)
  {
    case 1:
      result = 1852797513;
      break;
    case 2:
      result = 0x7265656E6F6950;
      break;
    case 3:
      result = 0x746962724FLL;
      break;
    case 4:
      result = 1969321292;
      break;
    case 5:
      result = 0x74697270736E7553;
      break;
    case 6:
      result = 0x6E6F6E6558;
      break;
    case 7:
      result = 1852794190;
      break;
    case 8:
      result = 0x7369736F6E6548;
      break;
    case 9:
      result = 0x6D75696C6548;
      break;
    case 0xA:
      result = 0x6E6F747079724BLL;
      break;
    case 0xB:
      result = 0x656D6F485F415450;
      break;
    case 0xC:
      result = 0x7261435F415450;
      break;
    case 0xD:
      result = 4281424;
      break;
    case 0xE:
      result = 0x6F72696C41;
      break;
    case 0xF:
      result = 0x726F706E65766144;
      break;
    case 0x10:
      result = 0x6D7569646F53;
      break;
    case 0x11:
      result = 0x6D75696874694CLL;
      break;
    case 0x12:
      result = 0x65726166694DLL;
      break;
    case 0x13:
      result = 0x6D6F6C616C53;
      break;
    case 0x14:
      result = 0x6E616873696148;
      break;
    case 0x15:
      result = 4412496;
      break;
    case 0x16:
      result = 0x6F736E6F68706C41;
      break;
    case 0x17:
      result = 0x727546746867694ELL;
      break;
    case 0x18:
      result = 0x73616C7441;
      break;
    case 0x19:
      result = 0x6E776F6E6B6E75;
      break;
    case 0x1A:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AD4F27B4()
{
  v0 = ProvisioningSEStorageAppletType.rawValue.getter();
  v2 = v1;
  if (v0 == ProvisioningSEStorageAppletType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1ADB06F50();
  }

  return v5 & 1;
}

unint64_t sub_1AD4F2854()
{
  result = qword_1EB59C2B8;
  if (!qword_1EB59C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C2B8);
  }

  return result;
}

uint64_t sub_1AD4F28A8()
{
  sub_1ADB07090();
  ProvisioningSEStorageAppletType.rawValue.getter();
  sub_1ADB06460();

  return sub_1ADB070D0();
}

uint64_t sub_1AD4F2910()
{
  ProvisioningSEStorageAppletType.rawValue.getter();
  sub_1ADB06460();
}

uint64_t sub_1AD4F2974()
{
  sub_1ADB07090();
  ProvisioningSEStorageAppletType.rawValue.getter();
  sub_1ADB06460();

  return sub_1ADB070D0();
}

unint64_t sub_1AD4F29E4@<X0>(unint64_t *a1@<X8>)
{
  result = ProvisioningSEStorageAppletType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1AD4F2A1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v5 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v7 = ProvisioningRequirement.RequirementType.rawValue.getter();
    v9 = v8;
    if (v7 == ProvisioningRequirement.RequirementType.rawValue.getter() && v9 == v10)
    {

      return v5 != 0;
    }

    v4 = sub_1ADB06F50();

    ++v3;
  }

  while ((v4 & 1) == 0);
  return v5 != 0;
}

PKProvisioningRequirementsContainer __swiftcall PKProvisioningRequirementsContainer.init(requirements:)(Swift::OpaquePointer requirements)
{
  v2 = type metadata accessor for ProvisioningRequirementsContainer();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____PKProvisioningRequirementsContainer_provisioningSID];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v3[OBJC_IVAR____PKProvisioningRequirementsContainer_requirements] = requirements;
  v10.receiver = v3;
  v10.super_class = v2;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContainer_];

  v8 = v6;
  result._container = v7;
  result.super.isa = v8;
  return result;
}

uint64_t PKProvisioningRequirementsContainer.requirements.getter()
{
  v1 = [v0 container];
  sub_1ADB06AC0();
  swift_unknownObjectRelease();
  type metadata accessor for ProvisioningRequirementsContainer();
  if (!swift_dynamicCast())
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = *&v4[OBJC_IVAR____PKProvisioningRequirementsContainer_requirements];

  return v2;
}

uint64_t sub_1AD4F2CD0()
{
  v1 = (v0 + OBJC_IVAR____PKProvisioningRequirementsContainer_provisioningSID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1AD4F2DA4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____PKProvisioningRequirementsContainer_provisioningSID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1AD4F2E04(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____PKProvisioningRequirementsContainer_provisioningSID);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

id ProvisioningRequirementsContainer.__allocating_init(requirements:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____PKProvisioningRequirementsContainer_provisioningSID];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v3[OBJC_IVAR____PKProvisioningRequirementsContainer_requirements] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id ProvisioningRequirementsContainer.init(requirements:)(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____PKProvisioningRequirementsContainer_provisioningSID];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v1[OBJC_IVAR____PKProvisioningRequirementsContainer_requirements] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ProvisioningRequirementsContainer();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1AD4F2FA4(uint64_t a1)
{
  v2 = OBJC_IVAR____PKProvisioningRequirementsContainer_requirements;
  v3 = *(a1 + OBJC_IVAR____PKProvisioningRequirementsContainer_requirements);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1AD450728(0, v4, 0);
    v5 = v24;
    v6 = (v3 + 32);
    v7 = *(v24 + 16);
    do
    {
      v9 = *v6++;
      v8 = v9;
      v24 = v5;
      v10 = *(v5 + 24);
      if (v7 >= v10 >> 1)
      {
        sub_1AD450728((v10 > 1), v7 + 1, 1);
        v5 = v24;
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + v7++ + 32) = v8 & 0x7F;
      --v4;
    }

    while (v4);
    v2 = OBJC_IVAR____PKProvisioningRequirementsContainer_requirements;
  }

  v11 = *(v1 + v2);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = (v11 + 32);
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      v18 = *v13++;
      v17 = v18;
      if (!sub_1AD4F2A1C(v18 & 0x7F, v5))
      {
        v24 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AD450748(0, *(v14 + 16) + 1, 1);
          v14 = v24;
        }

        v16 = *(v14 + 16);
        v15 = *(v14 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1AD450748((v15 > 1), v16 + 1, 1);
          v14 = v24;
        }

        *(v14 + 16) = v16 + 1;
        *(v14 + v16 + 32) = v17;
      }

      --v12;
    }

    while (v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v19 = type metadata accessor for ProvisioningRequirementsContainer();
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____PKProvisioningRequirementsContainer_provisioningSID];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v20[OBJC_IVAR____PKProvisioningRequirementsContainer_requirements] = v14;
  v23.receiver = v20;
  v23.super_class = v19;
  return objc_msgSendSuper2(&v23, sel_init);
}

void sub_1AD4F31D4()
{
  v1 = *(v0 + OBJC_IVAR____PKProvisioningRequirementsContainer_requirements);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      if (ProvisioningRequirement.RequirementType.rawValue.getter() == 0xD000000000000011 && 0x80000001ADB9C310 == v4)
      {
        goto LABEL_12;
      }

      v5 = sub_1ADB06F50();

      if (v5)
      {
        return;
      }

      if (ProvisioningRequirement.RequirementType.rawValue.getter() == 0xD000000000000029 && 0x80000001ADB9C330 == v6)
      {
LABEL_12:

        return;
      }

      v7 = sub_1ADB06F50();

      if ((v7 & 1) == 0 && v2 != ++v3)
      {
        continue;
      }

      return;
    }

    __break(1u);
  }
}

id sub_1AD4F3354()
{
  v1 = *(v0 + OBJC_IVAR____PKProvisioningRequirementsContainer_requirements);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = (v1 + 32);
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = *v4++;
      v8 = v9;
      if (v9 < 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AD450748(0, *(v5 + 16) + 1, 1);
        }

        v7 = *(v5 + 16);
        v6 = *(v5 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1AD450748((v6 > 1), v7 + 1, 1);
        }

        *(v5 + 16) = v7 + 1;
        *(v5 + v7 + 32) = v8;
      }

      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v5 + 16);
  if (v10)
  {
    sub_1AD450728(0, v10, 0);
    v11 = v3;
    v12 = *(v3 + 16);
    v13 = 32;
    do
    {
      v14 = *(v5 + v13);
      v15 = *(v3 + 24);
      if (v12 >= v15 >> 1)
      {
        sub_1AD450728((v15 > 1), v12 + 1, 1);
      }

      *(v3 + 16) = v12 + 1;
      *(v3 + v12 + 32) = v14 & 0x7F;
      ++v13;
      ++v12;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1AD4F2A1C(5, v11))
  {

    v16 = objc_opt_self();
    v17 = 3;
    goto LABEL_22;
  }

  if (sub_1AD4F2A1C(6, v11))
  {

    v16 = objc_opt_self();
    v17 = 5;
    goto LABEL_22;
  }

  if (!sub_1AD4F2A1C(3, v11))
  {
    if (sub_1AD4F2A1C(7, v11))
    {

      v16 = objc_opt_self();
      v17 = 6;
    }

    else if (sub_1AD4F2A1C(8, v11))
    {

      v16 = objc_opt_self();
      v17 = 10;
    }

    else
    {
      if (sub_1AD4F2A1C(12, v11))
      {
      }

      else
      {
        v20 = sub_1AD4F2A1C(13, v11);

        if (!v20)
        {
          v16 = objc_opt_self();
          v17 = 1;
          goto LABEL_22;
        }
      }

      v16 = objc_opt_self();
      v17 = 11;
    }

LABEL_22:
    v18 = [v16 errorWithCommonType:v17 severity:5];
    goto LABEL_23;
  }

  v18 = [objc_opt_self() errorWithCommonType:9 severity:4];
LABEL_23:

  return v18;
}