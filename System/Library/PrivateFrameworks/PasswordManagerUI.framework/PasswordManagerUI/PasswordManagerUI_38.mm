uint64_t sub_21CB13C94(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21CB13CE4(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_21CB853D4();
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21CB85404();
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v21);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CDEA3F8 != -1)
  {
    swift_once();
  }

  v13 = sub_21CB81C84();
  __swift_project_value_buffer(v13, qword_27CE18598);
  v14 = sub_21CB81C64();
  v15 = sub_21CB85AD4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_21C6E5000, v14, v15, "Biometric authentication in PMCredentialPickerViewController failed.", v16, 2u);
    MEMORY[0x21CF16D90](v16, -1, -1);
  }

  if ((a1 & 1) == 0)
  {
    sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
    v17 = sub_21CB85CF4();
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    *(v18 + 24) = ObjectType;
    aBlock[4] = sub_21CB17144;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_214;
    v19 = _Block_copy(aBlock);
    v20 = v2;

    sub_21CB853E4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
    sub_21CB85F14();
    MEMORY[0x21CF15800](0, v12, v8, v19);
    _Block_release(v19);

    (*(v22 + 8))(v8, v5);
    (*(v9 + 8))(v12, v21);
  }
}

uint64_t sub_21CB140A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21C702EFC;

  return sub_21CB0AE88();
}

id sub_21CB14154(id result, uint64_t a2)
{
  if (result)
  {
    return [*(v2 + 16) performAuthorization:*(*(v2 + 16) + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane) withAuthenticatedLAContext:a2];
  }

  return result;
}

void *sub_21CB14184(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v4 = [objc_opt_self() sharedManager];
    v5 = [v4 getEnabledExtensionsSynchronously];

    if (v5)
    {
      sub_21C6E8F4C(0, qword_280E22EE0, 0x277CCA9C8);
      v6 = sub_21CB85824();

      if (v6 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21CB85FA4())
      {
        v8 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x21CF15BD0](v8, v6);
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v9 = *(v6 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          v12 = [v9 sf_bundleIdentifierForContainingApp];
          if (v12)
          {
            v13 = v12;
            v14 = v2;
            v15 = sub_21CB855C4();
            v17 = v16;

            if (v15 == a1 && v17 == v14)
            {

LABEL_20:

              return v10;
            }

            v2 = v14;
            v19 = sub_21CB86344();

            if (v19)
            {
              goto LABEL_20;
            }
          }

          ++v8;
          if (v11 == i)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        ;
      }

LABEL_24:
    }
  }

  return 0;
}

void _s17PasswordManagerUI32PMCredentialPickerViewControllerC07performA14AuthenticationyySo39ASCredentialRequestConfirmButtonSubPaneCF_0()
{
  sub_21CB051FC();
  v2 = [v1 loginChoiceKind];
  swift_unknownObjectRelease();
  if (v2)
  {
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v3 = sub_21CB81C84();
    __swift_project_value_buffer(v3, qword_27CE18598);
    oslog = sub_21CB81C64();
    v4 = sub_21CB85AF4();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21C6E5000, oslog, v4, "Password authentication button pressed but selected login choice is not a Sign in with Apple login choice", v5, 2u);
      MEMORY[0x21CF16D90](v5, -1, -1);
    }
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v7 = v0;
    sub_21CB07B10(0, sub_21CB170BC, v6);
  }
}

void sub_21CB14518(void *a1, void *a2, char *a3, char *a4, void (**a5)(void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85D0, &qword_21CBC9430);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v76 - v12;
  v14 = sub_21CB81604();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21CB80DD4();
  v79 = *(v19 - 8);
  v80 = v19;
  v20 = *(v79 + 64);
  MEMORY[0x28223BE20](v19);
  v81 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  _Block_copy(a5);

  if (a2)
  {
    v23 = a2;
    v78 = a4;
    sub_21CB051FC();
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24 && (v25 = v24, (v26 = [v24 externalCredentialIdentity]) != 0))
    {
      v27 = v26;
      v28 = [v25 site];
      if (!v28)
      {
        sub_21CB855C4();
        v28 = sub_21CB85584();
      }

      v29 = [v23 user];
      v30 = v81;
      if (!v29)
      {
        sub_21CB855C4();
        v29 = sub_21CB85584();
      }

      v82 = v22;
      v31 = [v23 password];
      if (!v31)
      {
        sub_21CB855C4();
        v31 = sub_21CB85584();
      }

      sub_21CB80DC4();
      v77 = v27;
      v32 = [v27 owningExtensionState];
      if (v32 && (v33 = v32, v34 = [v32 providerBundleID], v33, v34))
      {
        sub_21CB855C4();
        v36 = v35;

        v37 = sub_21CB80D24();
        if (v36)
        {
          v38 = sub_21CB85584();
        }

        else
        {
          v38 = 0;
        }

        v45 = v81;
      }

      else
      {
        v45 = v30;
        v37 = sub_21CB80D24();
        v38 = 0;
      }

      v59 = [objc_allocWithZone(MEMORY[0x277CF0428]) initWithUser:v29 password:v31 site:v28 creationDate:v37 externalProviderBundleIdentifier:v38];

      (*(v79 + 8))(v45, v80);
      v60 = v78;
      v61 = [v78 delegate];
      if (v61)
      {
        [v61 requestPaneViewController:v60 dismissWithCredential:v59 error:0];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      a5[2](a5);
    }

    else
    {

      swift_unknownObjectRelease();
      a5[2](a5);
    }

    goto LABEL_16;
  }

  v81 = a3;
  v82 = v22;
  v39 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController;
  v40 = *&a4[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController];
  v41 = a4;
  if (v40)
  {
    aBlock[4] = sub_21CB17324;
    aBlock[5] = v82;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_104;
    v42 = _Block_copy(aBlock);
    v43 = v40;
    v41 = a4;

    [v43 dismissViewControllerAnimated:1 completion:v42];
    _Block_release(v42);

    v44 = *&a4[v39];
  }

  else
  {
    v44 = 0;
  }

  v46 = v81;
  *&v41[v39] = 0;

  v47 = *&v41[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_externalPasswordCredentialForSelectedLoginChoice];
  *&v41[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_externalPasswordCredentialForSelectedLoginChoice] = 0;

  sub_21CB051FC();
  sub_21CB81614();
  swift_unknownObjectRelease();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_21C6EA794(v13, &qword_27CDF85D0, &qword_21CBC9430);
    if (!v46)
    {
LABEL_16:

      return;
    }
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    sub_21CB05380();
    (*(v15 + 8))(v18, v14);
    if (!v46)
    {
      goto LABEL_16;
    }
  }

  aBlock[0] = v46;
  v48 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C6E8F4C(0, &qword_27CDED2A0, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v49 = v83;
  v50 = *MEMORY[0x277CBA8B0];
  if ([v83 safari:*MEMORY[0x277CBA8B0] matchesErrorDomain:102 andCode:?])
  {
    v51 = [v41 delegate];
    if (v51)
    {
      v52 = v51;
      v53 = sub_21CB80B04();
      [v52 requestPaneViewController:v41 dismissWithCredential:0 error:v53];

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_49;
  }

  if ([v49 safari:v50 matchesErrorDomain:1 andCode:?])
  {
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v54 = sub_21CB81C84();
    __swift_project_value_buffer(v54, qword_27CE18598);
    v55 = sub_21CB81C64();
    v56 = sub_21CB85B14();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_21C6E5000, v55, v56, "Did not receive any external password credential because user canceled", v57, 2u);
      v58 = v57;
LABEL_45:
      MEMORY[0x21CF16D90](v58, -1, -1);
    }
  }

  else
  {
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v62 = sub_21CB81C84();
    __swift_project_value_buffer(v62, qword_27CE18598);
    v63 = v49;
    v55 = sub_21CB81C64();
    v64 = sub_21CB85AF4();

    if (os_log_type_enabled(v55, v64))
    {
      v65 = v41;
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      aBlock[0] = v67;
      *v66 = 136446210;
      v68 = [v63 safari_privacyPreservingDescription];
      v69 = sub_21CB855C4();
      v71 = v70;

      v72 = sub_21C98E004(v69, v71, aBlock);

      *(v66 + 4) = v72;
      _os_log_impl(&dword_21C6E5000, v55, v64, "Did not receive any external password credential because of error: %{public}s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x21CF16D90](v67, -1, -1);
      v58 = v66;
      v41 = v65;
      goto LABEL_45;
    }
  }

  if ([*&v41[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext] isConditionalRegistrationRequest])
  {
    v73 = [v41 delegate];
    if (v73)
    {
      v74 = v73;
      v75 = sub_21CB80B04();
      [v74 requestPaneViewController:v41 dismissWithCredential:0 error:v75];

      swift_unknownObjectRelease();
      return;
    }
  }

LABEL_49:
}

uint64_t sub_21CB14F0C(void *a1, uint64_t a2, id a3, uint64_t a4)
{
  v55[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v55[0] = 0;
    v7 = a1;
    if ([v7 _validateWithError_])
    {
      v51 = a3;
      v52 = a4;
      v8 = v55[0];

      v9 = v7;
      v53 = [v9 relyingParty];
      if (!v53)
      {
        sub_21CB855C4();
        v53 = sub_21CB85584();
      }

      v10 = [v9 authenticatorData];
      v54 = sub_21CB80C84();
      v49 = v11;

      v12 = [v9 signature];
      v45 = sub_21CB80C84();
      v50 = v13;

      v14 = [v9 userHandle];
      v44 = sub_21CB80C84();
      v46 = v15;

      v16 = [v9 credentialID];
      v17 = sub_21CB80C84();
      v19 = v18;

      v20 = [v9 coreExtensions];
      v47 = *MEMORY[0x277CF0408];
      v21 = objc_allocWithZone(MEMORY[0x277CF0438]);
      v22 = sub_21CB80C64();
      v23 = sub_21CB80C64();
      v24 = sub_21CB80C64();
      v25 = v17;
      v26 = sub_21CB80C64();
      LOBYTE(v43) = 1;
      v48 = [v21 initWithRelyingPartyIdentifier:v53 authenticatorData:v22 signature:v23 userHandle:v24 rawClientDataJSON:0 credentialID:v26 extensions:v20 attachment:v47 isExternal:v43];

      sub_21C7A34C0(v25, v19);
      sub_21C7A34C0(v44, v46);

      sub_21C7A34C0(v45, v50);
      sub_21C7A34C0(v54, v49);

      v27 = [v51 delegate];
      if (v27)
      {
        [v27 requestPaneViewController:v51 dismissWithCredential:v48 error:0];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      a4 = v52;
      goto LABEL_19;
    }

    v28 = v55[0];
    v29 = sub_21CB80B14();

    swift_willThrow();
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v30 = sub_21CB81C84();
    __swift_project_value_buffer(v30, qword_27CE18598);
    v31 = v29;
    v32 = sub_21CB81C64();
    v33 = sub_21CB85AF4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138543362;
      v36 = v29;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_21C6E5000, v32, v33, "Returned credential failed validation: %{public}@", v34, 0xCu);
      sub_21C6EA794(v35, &unk_27CDF76B0, &qword_21CBA2BE0);
      MEMORY[0x21CF16D90](v35, -1, -1);
      MEMORY[0x21CF16D90](v34, -1, -1);
    }

    else
    {
    }
  }

  v38 = [a3 delegate];
  if (v38)
  {
    v39 = v38;
    if (a2)
    {
      v40 = sub_21CB80B04();
    }

    else
    {
      v40 = 0;
    }

    [v39 requestPaneViewController:a3 dismissWithCredential:0 error:v40];

    swift_unknownObjectRelease();
  }

LABEL_19:
  result = (*(a4 + 16))(a4);
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21CB15404(void *a1, uint64_t a2, char *a3, const void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController;
  v10 = *&a3[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController];
  if (v10)
  {
    v15[4] = sub_21CB17324;
    v15[5] = v8;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_21C6ECBD4;
    v15[3] = &block_descriptor_97;
    v11 = _Block_copy(v15);
    _Block_copy(a4);
    v12 = v10;

    [v12 dismissViewControllerAnimated:1 completion:v11];
    _Block_release(v11);
  }

  else
  {
    _Block_copy(a4);
  }

  v13 = *&a3[v9];
  *&a3[v9] = 0;

  _Block_copy(a4);
  sub_21CB14F0C(a1, a2, a3, a4);
  _Block_release(a4);
}

void sub_21CB15574(void *a1, uint64_t a2, char *a3, void (**a4)(void))
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF470, &qword_21CBC94D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = v70 - v10;
  v11 = swift_allocObject();
  v12 = v11;
  v11[2] = a4;
  v13 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController;
  v14 = *&a3[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController];
  if (v14)
  {
    aBlock[4] = sub_21CB17324;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_90;
    v15 = _Block_copy(aBlock);
    _Block_copy(a4);
    v16 = v14;

    [v16 dismissViewControllerAnimated:1 completion:v15];
    _Block_release(v15);
  }

  else
  {
    _Block_copy(a4);
  }

  v17 = *&a3[v13];
  *&a3[v13] = 0;

  if (!a1)
  {
LABEL_18:
    v56 = [a3 delegate];
    if (v56)
    {
      v57 = v56;
      if (a2)
      {
        v58 = sub_21CB80B04();
      }

      else
      {
        v58 = 0;
      }

      [v57 requestPaneViewController:a3 dismissWithCredential:0 error:v58];

      swift_unknownObjectRelease();
    }

    goto LABEL_23;
  }

  aBlock[0] = 0;
  v18 = a1;
  if (![v18 _validateWithError_])
  {
    v46 = aBlock[0];
    v47 = sub_21CB80B14();

    swift_willThrow();
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v48 = sub_21CB81C84();
    __swift_project_value_buffer(v48, qword_27CE18598);
    v49 = v47;
    v50 = sub_21CB81C64();
    v51 = sub_21CB85AF4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138543362;
      v54 = v47;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v55;
      *v53 = v55;
      _os_log_impl(&dword_21C6E5000, v50, v51, "Returned credential failed validation: %{public}@", v52, 0xCu);
      sub_21C6EA794(v53, &unk_27CDF76B0, &qword_21CBA2BE0);
      MEMORY[0x21CF16D90](v53, -1, -1);
      MEMORY[0x21CF16D90](v52, -1, -1);
    }

    else
    {
    }

    goto LABEL_18;
  }

  v74 = v12;
  v19 = aBlock[0];

  v20 = v18;
  v21 = [v20 relyingParty];
  if (!v21)
  {
    sub_21CB855C4();
    v22 = sub_21CB85584();

    v21 = v22;
  }

  v71 = a3;
  v72 = v21;
  v75 = a4;
  v23 = [v20 attestationObject];
  v24 = sub_21CB80C84();
  v26 = v25;

  v27 = [v20 credentialID];
  v28 = sub_21CB80C84();
  v30 = v29;

  v31 = [objc_opt_self() _defaultTransports];
  if (!v31)
  {
    sub_21CB85824();
    v31 = sub_21CB85814();
  }

  v73 = v20;
  v32 = [v20 coreExtensions];
  v33 = *MEMORY[0x277CF0408];
  v34 = objc_allocWithZone(MEMORY[0x277CF0448]);
  v35 = v24;
  v36 = sub_21CB80C64();
  v37 = sub_21CB80C64();
  LOBYTE(v69) = 1;
  v68 = v33;
  v38 = v72;
  v39 = [v34 initWithRelyingPartyIdentifier:v72 attestationObject:v36 rawClientDataJSON:0 credentialID:v37 transports:v31 extensions:v32 attachment:v68 isExternal:v69];

  sub_21C7A34C0(v28, v30);
  sub_21C7A34C0(v35, v26);

  v40 = v71;
  sub_21CB051FC();
  sub_21CB81BE4();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    v60 = [v40 delegate];
    a4 = v75;
    if (v60)
    {
      [v60 requestPaneViewController:v40 dismissWithCredential:v39 error:0];

      swift_unknownObjectRelease();
    }

    else
    {
    }

LABEL_23:
    a4[2](a4);

    goto LABEL_24;
  }

  v41 = sub_21CB81BD4();
  v72 = sub_21CB81A74();
  v70[1] = v42;

  v43 = sub_21CB81BD4();
  v44 = sub_21CB81A54();

  v45 = v75;
  if (v44)
  {
    sub_21CB81A34();
  }

  v61 = sub_21CB81BD4();
  sub_21CB81B24();

  v62 = objc_allocWithZone(sub_21CB81BA4());
  v63 = v39;
  v64 = sub_21CB81B94();
  v65 = [v40 delegate];
  if (v65)
  {
    v66 = v65;
    v67 = v64;
    [v66 requestPaneViewController:v40 dismissWithCredential:v67 error:0];

    swift_unknownObjectRelease();
  }

  v45[2](v45);

  swift_unknownObjectRelease();
LABEL_24:
  v59 = *MEMORY[0x277D85DE8];
}

void sub_21CB15CC4(void *a1, char *a2, uint64_t a3)
{
  v6 = sub_21CB80DD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = *&a2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext];
    v12 = a1;
    v13 = [v11 serviceName];
    if (v13)
    {
      v14 = v13;
      sub_21CB051FC();
      v16 = v15;
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = [v17 externalCredentialIdentity];
        if (v18)
        {
          v19 = v18;
          v40 = v7;
          v42 = v16;
          v20 = [v12 user];
          if (!v20)
          {
            sub_21CB855C4();
            v20 = sub_21CB85584();
          }

          v21 = [v12 password];
          if (!v21)
          {
            sub_21CB855C4();
            v21 = sub_21CB85584();
          }

          v22 = v20;
          sub_21CB80DC4();
          v41 = v19;
          v23 = [v19 owningExtensionState];
          if (v23 && (v24 = v23, v25 = [v23 providerBundleID], v24, v25))
          {
            sub_21CB855C4();
            v27 = v26;

            v28 = v27;
            v29 = sub_21CB80D24();
            if (v28)
            {
              v30 = sub_21CB85584();

LABEL_17:
              v31 = [objc_allocWithZone(MEMORY[0x277CF0428]) initWithUser:v22 password:v21 site:v14 creationDate:v29 externalProviderBundleIdentifier:v30];

              swift_unknownObjectRelease();
              (*(v40 + 8))(v10, v6);
              v32 = 0;
              goto LABEL_20;
            }
          }

          else
          {
            v29 = sub_21CB80D24();
          }

          v30 = 0;
          goto LABEL_17;
        }

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  v32 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CF0400] code:2 userInfo:0];
  v31 = 0;
LABEL_20:
  v33 = [a2 delegate];
  if (v33)
  {
    v34 = v33;
    v35 = v31;
    if (v32)
    {
      v36 = v32;
      v37 = sub_21CB80B04();
    }

    else
    {
      v37 = 0;
    }

    [v34 requestPaneViewController:a2 dismissWithCredential:v31 error:v37];

    swift_unknownObjectRelease();
  }

  v38 = *&a2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController];
  *&a2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController] = 0;

  (*(a3 + 16))(a3);
}

void sub_21CB160AC(void *a1, char *a2, void *aBlock)
{
  v6 = *&a2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController];
  *&a2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController] = 0;
  _Block_copy(aBlock);

  if (a1)
  {
    _Block_copy(aBlock);
    v7 = a1;
    sub_21CB14F0C(a1, 0, a2, aBlock);
    _Block_release(aBlock);
  }

  else
  {
    v8 = [a2 delegate];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CF0400] code:2 userInfo:0];
      v11 = sub_21CB80B04();

      [v9 requestPaneViewController:a2 dismissWithCredential:0 error:v11];
      swift_unknownObjectRelease();
    }

    (*(aBlock + 2))(aBlock);
  }

  _Block_release(aBlock);
}

uint64_t sub_21CB161E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v7 = sub_21CB853D4();
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21CB85404();
  v11 = *(v23 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v23);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v15 = sub_21CB85CF4();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = v22;
  v17 = _Block_copy(aBlock);
  v18 = v4;
  v19 = a1;

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v14, v10, v17);
  _Block_release(v17);

  (*(v24 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v23);
}

uint64_t sub_21CB164D4(void *a1)
{
  v3 = sub_21CB853D4();
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21CB85404();
  v7 = *(v17 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v17);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v11 = sub_21CB85CF4();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v1;
  aBlock[4] = sub_21CB17068;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_134;
  v13 = _Block_copy(aBlock);
  v14 = a1;
  v15 = v1;

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v10, v6, v13);
  _Block_release(v13);

  (*(v18 + 8))(v6, v3);
  return (*(v7 + 8))(v10, v17);
}

uint64_t sub_21CB167D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v40 = a3;
  v9 = sub_21CB853D4();
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = *(v44 + 64);
  MEMORY[0x28223BE20](v9);
  v43 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21CB85404();
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = *(v41 + 64);
  MEMORY[0x28223BE20](v12);
  v38 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21CB85424();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v23 = &v36 - v22;
  v24 = *&v5[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_authKitAuthorizationProvider];
  if (v24)
  {
    v25 = [objc_msgSend(v24 loginRowData];
    swift_unknownObjectRelease();
    v26 = v25 == 3;
  }

  else
  {
    v26 = 0;
  }

  [*&v5[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane] showAlertContinuingWithPassword_];
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v27 = sub_21CB85CF4();
  sub_21CB85414();
  sub_21CB85434();
  v37 = *(v16 + 8);
  v37(v19, v15);
  v28 = swift_allocObject();
  v28[2] = v5;
  v28[3] = a1;
  v28[4] = a2;
  v28[5] = v40;
  v28[6] = a4;
  v28[7] = v39;
  aBlock[4] = sub_21CB17028;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_122;
  v29 = _Block_copy(aBlock);
  v30 = v5;

  v31 = v38;
  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  v32 = v15;
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
  v33 = v43;
  v34 = v45;
  sub_21CB85F14();
  MEMORY[0x21CF157D0](v23, v31, v33, v29);
  _Block_release(v29);

  (*(v44 + 8))(v33, v34);
  (*(v41 + 8))(v31, v42);
  return (v37)(v23, v32);
}

void sub_21CB16C6C()
{
  v0 = sub_21CB81884();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_21CB16D9C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_21CB16D9C()
{
  if (!qword_27CDF8730)
  {
    v0 = sub_21CB81DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF8730);
    }
  }
}

uint64_t sub_21CB16E14()
{
  result = sub_21CB81884();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PMCredentialPickerViewController(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21CB16EE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21CB0CF08(a1, v4, v5, v7, v6);
}

uint64_t sub_21CB16FC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21CB17028()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[2];
  sub_21CB0FAE0(v1, v2, v3, v4, v5);
}

uint64_t objectdestroy_142Tm()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21CB17154(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_21CB0881C(a1, *(v1 + 16));
}

uint64_t sub_21CB17160()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_21CB171C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB1722C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for PMSaveAccountRequest()
{
  result = qword_27CDF8AC0;
  if (!qword_27CDF8AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CB1742C()
{
  sub_21C6F0848();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21CB174F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8AE0, &qword_21CBC9818);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_21CB17570()
{
  result = qword_27CDF8AE8;
  if (!qword_27CDF8AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8AE0, &qword_21CBC9818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8AE8);
  }

  return result;
}

uint64_t PMSecurityRecommendation.messageWithIssueTypesDescription.getter()
{
  v1 = [*(v0 + 24) localizedLongDescriptionForClient_];
  v2 = sub_21CB855C4();

  return v2;
}

uint64_t PMSecurityRecommendation.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PMSecurityRecommendation.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_21CB176DC(SEL *a1)
{
  v2 = [*(v1 + 24) *a1];
  v3 = sub_21CB855C4();

  return v3;
}

uint64_t static PMSecurityRecommendation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 == v4)
    {
LABEL_7:
      sub_21C7EBFE0();
      return sub_21CB85DD4() & 1;
    }
  }

  else if ((sub_21CB86344() & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t PMSecurityRecommendation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  sub_21CB854C4();
  sub_21CB864A4();
  return sub_21CB85DE4();
}

uint64_t PMSecurityRecommendation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  sub_21CB86484();
  sub_21CB854C4();
  sub_21CB864A4();
  sub_21CB85DE4();
  return sub_21CB864D4();
}

uint64_t sub_21CB17920()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  sub_21CB86484();
  sub_21CB854C4();
  sub_21CB864A4();
  sub_21CB85DE4();
  return sub_21CB864D4();
}

uint64_t sub_21CB1799C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  sub_21CB854C4();
  sub_21CB864A4();
  return sub_21CB85DE4();
}

uint64_t sub_21CB179EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  sub_21CB86484();
  sub_21CB854C4();
  sub_21CB864A4();
  sub_21CB85DE4();
  return sub_21CB864D4();
}

BOOL sub_21CB17A68(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  v8 = a2[3];
  v13[0] = *a1;
  v13[1] = v2;
  v14 = v3;
  v15 = v4;
  v10[0] = v5;
  v10[1] = v6;
  v11 = v7;
  v12 = v8;
  return !_s17PasswordManagerUI24PMSecurityRecommendationV1loiySbAC_ACtFZ_0(v10, v13);
}

BOOL sub_21CB17AC8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  v8 = a2[3];
  v13[0] = *a1;
  v13[1] = v2;
  v14 = v3;
  v15 = v4;
  v10[0] = v5;
  v10[1] = v6;
  v11 = v7;
  v12 = v8;
  return !_s17PasswordManagerUI24PMSecurityRecommendationV1loiySbAC_ACtFZ_0(v13, v10);
}

BOOL sub_21CB17B28(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  v8 = a2[3];
  v13[0] = *a1;
  v13[1] = v2;
  v14 = v3;
  v15 = v4;
  v10[0] = v5;
  v10[1] = v6;
  v11 = v7;
  v12 = v8;
  return _s17PasswordManagerUI24PMSecurityRecommendationV1loiySbAC_ACtFZ_0(v10, v13);
}

uint64_t sub_21CB17B84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 == v4)
    {
LABEL_7:
      sub_21C7EBFE0();
      return sub_21CB85DD4() & 1;
    }
  }

  else if ((sub_21CB86344() & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    goto LABEL_7;
  }

  return 0;
}

BOOL _s17PasswordManagerUI24PMSecurityRecommendationV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = [v2 severityScore];
  if (v4 == [v3 severityScore])
  {
    v5 = [v2 savedAccount];
    v6 = [v3 savedAccount];
    v7 = [v5 compare_];

    return v7 == -1;
  }

  else
  {
    v9 = [v2 severityScore];
    return v9 < [v3 severityScore];
  }
}

unint64_t sub_21CB17CF4()
{
  result = qword_27CDF8AF0;
  if (!qword_27CDF8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8AF0);
  }

  return result;
}

unint64_t sub_21CB17D5C()
{
  result = qword_27CDF8AF8;
  if (!qword_27CDF8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8AF8);
  }

  return result;
}

uint64_t sub_21CB17DB4()
{
  swift_getKeyPath();
  sub_21CB18028();
  sub_21CB810D4();

  v1 = *(v0 + 16);
}

uint64_t sub_21CB17E28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CB18028();
  sub_21CB810D4();

  *a2 = *(v3 + 16);
}

uint64_t sub_21CB17EA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21CB18028();
  sub_21CB810C4();
}

uint64_t sub_21CB17F40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
}

uint64_t sub_21CB17F7C()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialImporter___observationRegistrar;
  v3 = sub_21CB81114();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_21CB18028()
{
  result = qword_27CDF0160;
  if (!qword_27CDF0160)
  {
    type metadata accessor for PMCredentialImporter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0160);
  }

  return result;
}

uint64_t sub_21CB180A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB80BE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

id sub_21CB18144()
{
  v0 = sub_21CB80B74();
  v1 = makeSafariViewControllerWithURL(v0);

  return v1;
}

uint64_t sub_21CB18180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C72C134(&qword_27CDF8B90, type metadata accessor for PMSafariView._PMSafariView);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21CB18214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C72C134(&qword_27CDF8B90, type metadata accessor for PMSafariView._PMSafariView);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21CB182A8()
{
  sub_21C72C134(&qword_27CDF8B90, type metadata accessor for PMSafariView._PMSafariView);
  sub_21CB83B44();
  __break(1u);
}

uint64_t sub_21CB18300@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB80BE4();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = sub_21CB82934();
  v5 = sub_21CB83CE4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8B68, &qword_21CBC9B50);
  v7 = a1 + *(result + 36);
  *v7 = v4;
  *(v7 + 8) = v5;
  return result;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB80BE4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB80BE4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_21CB1849C()
{
  result = qword_27CDF8B80;
  if (!qword_27CDF8B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8B68, &qword_21CBC9B50);
    sub_21C72C134(&qword_27CDF8B88, type metadata accessor for PMSafariView._PMSafariView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8B80);
  }

  return result;
}

uint64_t type metadata accessor for PMSecurityRecommendationsAccountRow()
{
  result = qword_27CDF8B98;
  if (!qword_27CDF8B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CB18614()
{
  type metadata accessor for PMAccount(319);
  if (v0 <= 0x3F)
  {
    sub_21C7205C4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21CB186BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8BB0, &qword_21CBC9CB0);
  v98 = *(v3 - 8);
  v99 = v3;
  v4 = *(v98 + 64);
  MEMORY[0x28223BE20](v3);
  v85 = &v84 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8BB8, &qword_21CBC9CB8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v101 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v100 = &v84 - v10;
  v11 = type metadata accessor for PMSecurityRecommendationsAccountRow();
  v12 = v11 - 8;
  v93 = *(v11 - 8);
  v13 = *(v93 + 64);
  MEMORY[0x28223BE20](v11);
  v94 = v14;
  v95 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PMAccount(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PMAccountRow();
  v20 = *(*(v19 - 1) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8BC0, &qword_21CBC9CC0);
  v23 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v25 = &v84 - v24;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8BC8, &qword_21CBC9CC8);
  v26 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v97 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v91 = &v84 - v29;
  MEMORY[0x28223BE20](v30);
  v96 = &v84 - v31;
  sub_21CB199D4(a1, v18, type metadata accessor for PMAccount);
  v32 = sub_21CB19000();
  v88 = v33;
  v89 = v32;
  v87 = sub_21CB1918C();
  v86 = v34;
  v35 = a1 + *(v12 + 28);
  if ([*(v35 + 24) hasBeenCompromised])
  {
    *&v104 = sub_21CB84A64();
    v36 = MEMORY[0x277CE0F60];
    v37 = MEMORY[0x277CE0F78];
  }

  else
  {
    LODWORD(v104) = sub_21CB837E4();
    v36 = MEMORY[0x277CE04E8];
    v37 = MEMORY[0x277CE04F8];
  }

  v105 = v37;
  v106 = v36;
  v38 = &v22[v19[9]];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v103);

  type metadata accessor for PMGroupsStore();
  sub_21CADC854();
  v40 = sub_21CB82674();
  v42 = v41;

  *v38 = v40;
  v38[1] = v42;
  v43 = &v22[v19[10]];
  *v43 = swift_getKeyPath();
  v43[8] = 0;
  v44 = &v22[v19[11]];
  *v44 = swift_getKeyPath();
  v44[8] = 0;
  v45 = v19[12];
  *&v22[v45] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v46 = v19[13];
  *&v22[v46] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v47 = v19[14];
  *&v22[v47] = swift_getKeyPath();
  sub_21CB198FC(v18, v22, type metadata accessor for PMAccount);
  v48 = &v22[v19[5]];
  v49 = v88;
  *v48 = v89;
  *(v48 + 1) = v49;
  v50 = &v22[v19[6]];
  v51 = v86;
  *v50 = v87;
  v50[1] = v51;
  sub_21C6EA568(&v104, &v22[v19[7]]);
  v52 = &v22[v19[8]];
  *v52 = 0;
  *(v52 + 1) = 0xE000000000000000;
  v54 = *v35;
  v53 = *(v35 + 8);
  v55 = *(v35 + 16);
  v56 = *(v35 + 24);
  if (v55)
  {
    LOBYTE(v57) = 2;
    v58 = v96;
  }

  else
  {
    v59 = [*(v35 + 24) severity];
    v58 = v96;
    if (v59 > 3)
    {
      LOBYTE(v57) = 2;
    }

    else
    {
      v57 = 0x2010002u >> (8 * v59);
    }
  }

  *v25 = v54;
  *(v25 + 1) = v53;
  *(v25 + 2) = v55;
  *(v25 + 3) = v56;
  v25[32] = v57;
  *(v25 + 33) = 256;
  v60 = v90;
  sub_21CB199D4(v22, &v25[*(v90 + 48)], type metadata accessor for PMAccountRow);
  v61 = *(v60 + 52);
  *&v25[v61] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();

  v62 = v56;
  sub_21CB19A3C(v22, type metadata accessor for PMAccountRow);
  v63 = sub_21CB832C4();
  v64 = v95;
  sub_21CB199D4(a1, v95, type metadata accessor for PMSecurityRecommendationsAccountRow);
  v65 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v66 = swift_allocObject();
  sub_21CB198FC(v64, v66 + v65, type metadata accessor for PMSecurityRecommendationsAccountRow);
  v67 = v91;
  sub_21C716934(v25, v91, &qword_27CDF8BC0, &qword_21CBC9CC0);
  v68 = (v67 + *(v92 + 36));
  *v68 = v63;
  v68[1] = sub_21CB19964;
  v68[2] = v66;
  sub_21C716934(v67, v58, &qword_27CDF8BC8, &qword_21CBC9CC8);
  if (sub_21CB19660())
  {
    v69 = type metadata accessor for PMChangePasswordOnWebsiteLink();
    v70 = v85;
    sub_21CB199D4(a1, &v85[v69[5]], type metadata accessor for PMAccount);
    *v70 = swift_getKeyPath();
    *(v70 + 8) = 0;
    *(v70 + 16) = 0;
    v71 = (v70 + v69[7]);
    v72 = v69[9];
    *(v70 + v69[6]) = 0;
    v73 = (v70 + v72);
    *v71 = 0;
    v71[1] = 0;
    *(v70 + v69[8]) = 0;
    sub_21C805AD8();
    *v73 = 0;
    v73[1] = 0;
    v74 = sub_21CB83314();
    v75 = v99;
    v76 = v100;
    v77 = (v70 + *(v99 + 36));
    *v77 = v74;
    v77[1] = sub_21C7902AC;
    v77[2] = 0;
    sub_21C716934(v70, v76, &qword_27CDF8BB0, &qword_21CBC9CB0);
    v78 = 0;
  }

  else
  {
    v78 = 1;
    v75 = v99;
    v76 = v100;
  }

  (*(v98 + 56))(v76, v78, 1, v75);
  v79 = v97;
  sub_21C6EDBAC(v58, v97, &qword_27CDF8BC8, &qword_21CBC9CC8);
  v80 = v101;
  sub_21C6EDBAC(v76, v101, &qword_27CDF8BB8, &qword_21CBC9CB8);
  v81 = v102;
  sub_21C6EDBAC(v79, v102, &qword_27CDF8BC8, &qword_21CBC9CC8);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8BD0, &qword_21CBC9E10);
  sub_21C6EDBAC(v80, v81 + *(v82 + 48), &qword_27CDF8BB8, &qword_21CBC9CB8);
  sub_21C6EA794(v76, &qword_27CDF8BB8, &qword_21CBC9CB8);
  sub_21C6EA794(v58, &qword_27CDF8BC8, &qword_21CBC9CC8);
  sub_21C6EA794(v80, &qword_27CDF8BB8, &qword_21CBC9CB8);
  return sub_21C6EA794(v79, &qword_27CDF8BC8, &qword_21CBC9CC8);
}

uint64_t sub_21CB19000()
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  PMAccount.customTitle.getter();
  if (v5)
  {
    goto LABEL_2;
  }

  PMAccount.customTitle.getter();
  if (v7)
  {
  }

  else
  {
    v8 = type metadata accessor for PMAccount(0);
    sub_21CB199D4(v0 + *(v8 + 24), v4, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CB19A3C(v4, type metadata accessor for PMAccount.Storage);
      LOBYTE(v4) = 0;
      goto LABEL_11;
    }

    v9 = *v4;
    v4 = [*v4 serviceName];

    if (!v4)
    {
      goto LABEL_11;
    }
  }

  LOBYTE(v4) = 1;
LABEL_11:
  if ([*(v0 + *(type metadata accessor for PMSecurityRecommendationsAccountRow() + 20) + 24) savedAccountIsOnlySavedAccountForHighLevelDomain])
  {
    if ((v4 & 1) == 0)
    {
      PMAccount.userVisibleDomain.getter();
      if (v10)
      {
LABEL_2:
      }
    }
  }

  return 0;
}

uint64_t sub_21CB1918C()
{
  v1 = sub_21CB82F84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMSecurityRecommendationsAccountRow();
  v7 = v0 + *(v6 + 24);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v18 = *v7;
  }

  else
  {

    sub_21CB85B04();
    v9 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v8, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v8) = v18;
  }

  if (v8 == 1)
  {

    goto LABEL_11;
  }

  v10 = sub_21CB86344();

  if (v10)
  {
LABEL_11:
    v13 = [*(v0 + *(v6 + 20) + 24) localizedShortDescriptivePhrase];
    goto LABEL_12;
  }

  v11 = v0 + *(v6 + 20);
  v12 = *(v11 + 24);
  if ((*(v11 + 16) & 1) != 0 || [v12 severity] != 1)
  {
    v13 = [v12 localizedShortDescriptivePhrase];
  }

  else
  {
    v13 = [v12 localizedLongDescriptionForClient_];
  }

LABEL_12:
  v14 = v13;
  v15 = sub_21CB855C4();

  return v15;
}

uint64_t sub_21CB1942C(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CB82F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + *(type metadata accessor for PMSecurityRecommendationsAccountRow() + 24);
  v9 = *v8;
  if (*(v8 + 8) == 1)
  {
    v15 = *v8;
  }

  else
  {

    sub_21CB85B04();
    v10 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v9, 0);
    (*(v4 + 8))(v7, v3);
    LOBYTE(v9) = v15;
  }

  if (v9 == 1)
  {

    goto LABEL_8;
  }

  v11 = sub_21CB86344();

  if (v11)
  {
LABEL_8:
    sub_21C805AD8();
    v12 = sub_21CB83314();
    return MEMORY[0x21CF122A0](v12);
  }

  v12 = sub_21CB832F4();
  return MEMORY[0x21CF122A0](v12);
}

BOOL sub_21CB19660()
{
  v1 = sub_21CB82F84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMSecurityRecommendationsAccountRow();
  v7 = v0 + *(v6 + 24);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v14 = *v7;
  }

  else
  {

    sub_21CB85B04();
    v9 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v8, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v8) = v14;
  }

  if (v8 == 1)
  {

    return 0;
  }

  else
  {
    v11 = sub_21CB86344();

    if (v11)
    {
      return 0;
    }

    v12 = v0 + *(v6 + 20);
    return (*(v12 + 16) & 1) == 0 && [*(v12 + 24) severity] == 1;
  }
}

uint64_t sub_21CB198A8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21CB832C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8BA8, &qword_21CBC9CA8);
  return sub_21CB186BC(v1, a1 + *(v3 + 44));
}

uint64_t sub_21CB198FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB19964(uint64_t a1)
{
  v3 = *(type metadata accessor for PMSecurityRecommendationsAccountRow() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CB1942C(a1, v4);
}

uint64_t sub_21CB199D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB19A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CB19A9C()
{
  result = qword_27CDF8BD8;
  if (!qword_27CDF8BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8BE0, &unk_21CBC9E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8BD8);
  }

  return result;
}

uint64_t sub_21CB19B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a5;
  v41 = sub_21CB82A04();
  v39 = *(v41 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB839E4();
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8BE8, &qword_21CBC9F90);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8BF0, &qword_21CBC9F98);
  v20 = *(v19 - 8);
  v35 = v19;
  v36 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  v24 = swift_allocObject();
  v24[2] = a1;
  v24[3] = a2;
  v24[4] = a3;
  v24[5] = a4;
  v42 = a1;
  v43 = a2;
  v44 = a3;
  v45 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB208, &unk_21CBB3F40);
  sub_21C7B8EA4();
  sub_21CB84DA4();
  v25 = &v18[*(v15 + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13A0, &qword_21CBB1100) + 28);
  v27 = *MEMORY[0x277CDF420];
  v28 = sub_21CB82064();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  sub_21CB839D4();
  v29 = sub_21CB1A630();
  v30 = sub_21CB1A788(&qword_27CDF8C00, MEMORY[0x277CDE340]);
  sub_21CB84124();
  (*(v37 + 8))(v14, v11);
  sub_21CB1A714(v18);
  v31 = v38;
  sub_21CB829F4();
  v46 = v15;
  v47 = v11;
  v48 = v29;
  v49 = v30;
  swift_getOpaqueTypeConformance2();
  v32 = v35;
  sub_21CB84334();
  (*(v39 + 8))(v31, v41);
  return (*(v36 + 8))(v23, v32);
}

__n128 sub_21CB19F78@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(&v21 + 1) = a1;
  sub_21C71F3FC();

  v3 = sub_21CB84054();
  v5 = v4;
  v7 = v6;
  sub_21CB83E04();
  v8 = sub_21CB83FA4();
  v10 = v9;
  v12 = v11;
  sub_21C74A72C(v3, v5, v7 & 1);

  *&v21 = sub_21CB84AD4();
  v13 = sub_21CB83FC4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_21C74A72C(v8, v10, v12 & 1);

  sub_21CB85214();
  sub_21CB82AC4();
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  *(a2 + 96) = v25;
  *(a2 + 112) = v26;
  *(a2 + 128) = v27;
  *(a2 + 32) = v21;
  *(a2 + 48) = v22;
  result = v24;
  *(a2 + 64) = v23;
  *(a2 + 80) = v24;
  return result;
}

uint64_t sub_21CB1A12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_21CB829C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8BE8, &qword_21CBC9F90);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v40[-v17];
  v41 = a1;
  v42 = a2;
  v43 = a3;
  v44 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB208, &unk_21CBB3F40);
  sub_21C7B8EA4();
  sub_21CB84DA4();
  v19 = &v18[*(v15 + 36)];
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13A0, &qword_21CBB1100) + 28);
  v21 = *MEMORY[0x277CDF420];
  v22 = sub_21CB82064();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = swift_getKeyPath();
  sub_21CB829B4();
  sub_21CB1A630();
  sub_21CB1A788(&qword_27CDF0948, MEMORY[0x277CDDA98]);
  sub_21CB84124();
  (*(v11 + 8))(v14, v10);
  sub_21CB1A714(v18);
  v23 = [objc_opt_self() systemGray6Color];
  v24 = sub_21CB84A24();
  v25 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8C08, &qword_21CBC9FD8) + 36));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8C10, &qword_21CBC9FE0);
  v27 = *(v26 + 52);
  v28 = *MEMORY[0x277CE0118];
  v29 = sub_21CB831A4();
  (*(*(v29 - 8) + 104))(v25 + v27, v28, v29);
  *v25 = v24;
  *(v25 + *(v26 + 56)) = 256;
  LOBYTE(v24) = sub_21CB83CE4();
  sub_21CB81F24();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8C18, &qword_21CBC9FE8);
  v39 = a5 + *(result + 36);
  *v39 = v24;
  *(v39 + 8) = v31;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  *(v39 + 40) = 0;
  return result;
}

__n128 sub_21CB1A4B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v17 = a1;
  *(&v17 + 1) = a2;
  sub_21C71F3FC();

  v4 = sub_21CB84054();
  v6 = v5;
  v8 = v7;
  sub_21CB83E04();
  v9 = sub_21CB83FA4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_21C74A72C(v4, v6, v8 & 1);

  sub_21CB85214();
  sub_21CB82AC4();
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  *(a3 + 96) = v21;
  *(a3 + 112) = v22;
  *(a3 + 128) = v23;
  *(a3 + 32) = v17;
  *(a3 + 48) = v18;
  result = v20;
  *(a3 + 64) = v19;
  *(a3 + 80) = v20;
  return result;
}

double sub_21CB1A624@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  *&result = sub_21CB19F78(v1[3], a1).n128_u64[0];
  return result;
}

unint64_t sub_21CB1A630()
{
  result = qword_27CDF8BF8;
  if (!qword_27CDF8BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8BE8, &qword_21CBC9F90);
    sub_21C6EADEC(&qword_27CDF2C18, &qword_27CDF2C10, &unk_21CBB5AA0);
    sub_21C6EADEC(&qword_27CDF1398, &qword_27CDF13A0, &qword_21CBB1100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8BF8);
  }

  return result;
}

uint64_t sub_21CB1A714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8BE8, &qword_21CBC9F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_21CB1A77C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  *&result = sub_21CB1A4B8(v1[2], v1[3], a1).n128_u64[0];
  return result;
}

uint64_t sub_21CB1A788(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21CB1A7D0()
{
  result = qword_27CDF8C20;
  if (!qword_27CDF8C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8C18, &qword_21CBC9FE8);
    sub_21CB1A85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8C20);
  }

  return result;
}

unint64_t sub_21CB1A85C()
{
  result = qword_27CDF8C28;
  if (!qword_27CDF8C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8C08, &qword_21CBC9FD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8BE8, &qword_21CBC9F90);
    sub_21CB829C4();
    sub_21CB1A630();
    sub_21CB1A788(&qword_27CDF0948, MEMORY[0x277CDDA98]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(qword_27CDF8C30, &qword_27CDF8C10, &qword_21CBC9FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8C28);
  }

  return result;
}

uint64_t sub_21CB1A9A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21CB1AA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  v11();
  sub_21C72BE10(v10, a3, a4);
  v14 = *(v6 + 8);
  v14(v10, a3);
  sub_21C72BE10(v13, a3, a4);
  return (v14)(v13, a3);
}

uint64_t sub_21CB1AB84(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if ((v50 & 1) == 0)
  {
    goto LABEL_23;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v7 = v50;
  v8 = *(v50 + 16);
  if (v8)
  {
    v46[2] = a1;
    v47 = v6;
    v48 = v3;
    v49 = v2;
    v50 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v8, 0);
    v9 = v50;
    v46[1] = v7;
    v10 = (v7 + 56);
    do
    {
      v11 = *(v10 - 2);
      v12 = *v10;

      v13 = v12;
      v14 = [v13 savedAccount];
      v15 = [v14 userVisibleDomain];

      v16 = sub_21CB855C4();
      v18 = v17;

      v50 = v9;
      v20 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_21C7B0C0C((v19 > 1), v20 + 1, 1);
        v9 = v50;
      }

      *(v9 + 16) = v20 + 1;
      v21 = v9 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v10 += 4;
      --v8;
    }

    while (v8);

    v3 = v48;
    v2 = v49;
    v6 = v47;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v50 = MEMORY[0x277D84FA0];
  v22 = sub_21CB1B2DC(v9);

  v23 = v22[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v25 = v22[2];
  if (!v25)
  {
    goto LABEL_21;
  }

  v27 = v22[4];
  v26 = v22[5];
  if ((v50 & 1) == 0)
  {
    v33 = v22[5];

    if (v23 == 1)
    {
      goto LABEL_19;
    }

LABEL_21:

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v36 = *(v50 + 16);

    if (!v36)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v37 = *(v50 + 16);
    }

LABEL_23:
    sub_21CB81014();
    v35 = sub_21CB81004();
    (*(v3 + 8))(v6, v2);
    return v35;
  }

  if (v23 < 4)
  {
    v28 = v22[5];

    if (v23 != 1 && v23 != 2)
    {
      if (v23 == 3)
      {
        sub_21CB81014();
        sub_21CB81004();
        (*(v3 + 8))(v6, v2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_21CBA15B0;
        *(v29 + 56) = MEMORY[0x277D837D0];
        v30 = sub_21C7C0050();
        v31 = MEMORY[0x277D83B88];
        v32 = MEMORY[0x277D83C10];
        *(v29 + 32) = v27;
        *(v29 + 40) = v26;
        *(v29 + 96) = v31;
        *(v29 + 104) = v32;
        *(v29 + 64) = v30;
        *(v29 + 72) = 2;
LABEL_20:
        v35 = sub_21CB85594();
LABEL_26:

        return v35;
      }

      goto LABEL_21;
    }

LABEL_19:
    sub_21CB81014();
    sub_21CB81004();
    (*(v3 + 8))(v6, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_21CBA0690;
    *(v34 + 56) = MEMORY[0x277D837D0];
    *(v34 + 64) = sub_21C7C0050();
    *(v34 + 32) = v27;
    *(v34 + 40) = v26;
    goto LABEL_20;
  }

  if (v25 != 1)
  {
    v38 = v6;
    v40 = v22[6];
    v39 = v22[7];
    v41 = v22[5];

    sub_21CB81014();
    sub_21CB81004();
    (*(v3 + 8))(v38, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_21CBA15A0;
    v43 = MEMORY[0x277D837D0];
    *(v42 + 56) = MEMORY[0x277D837D0];
    v44 = sub_21C7C0050();
    *(v42 + 32) = v27;
    *(v42 + 40) = v26;
    *(v42 + 96) = v43;
    *(v42 + 104) = v44;
    *(v42 + 64) = v44;
    *(v42 + 72) = v40;
    *(v42 + 80) = v39;
    v45 = MEMORY[0x277D83C10];
    *(v42 + 136) = MEMORY[0x277D83B88];
    *(v42 + 144) = v45;
    *(v42 + 112) = v23 - 2;
    v35 = sub_21CB85594();
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_21CB1B2DC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
  v13 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v9 = sub_21CA94078(&v14, v8, v7);

      if (v9)
      {
        break;
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v4;
    if ((result & 1) == 0)
    {
      result = sub_21C7B0C0C(0, *(v4 + 16) + 1, 1);
      v4 = v15;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_21C7B0C0C((v10 > 1), v11 + 1, 1);
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    v3 = v13;
  }

  while (v2 != v1);
  return v4;
}

uint64_t sub_21CB1B468@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21CB82744();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_21CB834E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_21CB82DB4();
  sub_21CB834D4();
  v12 = sub_21CB834B4();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v11, v4);
  if ((v12 & 1) == 0)
  {
    sub_21CB82734();
  }

  result = sub_21CB82384();
  *a1 = result;
  return result;
}

uint64_t sub_21CB1B668()
{
  sub_21CB84AB4();
  sub_21CB85214();
  sub_21CB82374();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5560, &qword_21CBBE1F0);
  sub_21CA2B89C();
  sub_21CB84494();
}

uint64_t sub_21CB1B728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C94B4A8(v2, a2);
  v5 = *(a1 + 24);
  v6 = *(v2 + *(a1 + 20));
  v8 = *(v2 + v5);
  v7 = *(v2 + v5 + 8);
  v9 = type metadata accessor for _PMSendGroupInviteMessageSheet(0);
  *(a2 + *(v9 + 20)) = v6;
  v10 = (a2 + *(v9 + 24));
  *v10 = v8;
  v10[1] = v7;

  v11 = sub_21CB82934();
  LOBYTE(v7) = sub_21CB83CE4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF8D50, &qword_21CBCA3D8);
  v13 = a2 + *(result + 36);
  *v13 = v11;
  *(v13 + 8) = v7;
  return result;
}

id sub_21CB1B7D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CB80BE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277CD6888]) init];
  v10 = *(v1 + *(type metadata accessor for _PMSendGroupInviteMessageSheet(0) + 20));
  v11 = *(v10 + 16);
  if (v11)
  {
    v29 = v1;
    v30 = v5;
    v31 = v4;
    v32 = a1;
    v33 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v11, 0);
    v12 = v33;
    v13 = (v10 + 72);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      v33 = v12;
      v16 = v12[2];
      v17 = v12[3];

      if (v16 >= v17 >> 1)
      {
        sub_21C7B0C0C((v17 > 1), v16 + 1, 1);
        v12 = v33;
      }

      v12[2] = v16 + 1;
      v18 = &v12[2 * v16];
      v18[4] = v14;
      v18[5] = v15;
      v13 += 14;
      --v11;
    }

    while (v11);
    v4 = v31;
    v2 = v29;
    v5 = v30;
  }

  v19 = sub_21CB85814();

  [v9 setRecipients_];

  v20 = sub_21CAF9874(v2);
  v22 = v21;
  v23 = sub_21CB80C64();
  sub_21C7A34C0(v20, v22);
  v24 = WBSOngoingSharingInvitationFallbackURL();
  sub_21CB80B94();

  v25 = sub_21CB80B74();
  (*(v5 + 8))(v8, v4);
  [v9 addRichLinkData:v23 withWebpageURL:v25];

  [v9 _setCanEditRecipients_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8D80, &qword_21CBCA4A8);
  sub_21CB83C84();
  v26 = v33;
  [v9 setMessageComposeDelegate_];

  return v9;
}

id sub_21CB1BB04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PMSendGroupInviteMessageSheet.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21CB1BBD0()
{
  result = qword_27CDF8D48;
  if (!qword_27CDF8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8D48);
  }

  return result;
}

uint64_t sub_21CB1BC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8D80, &qword_21CBCA4A8);
  sub_21CB83C84();
  v5 = (v3 + *(a3 + 24));
  v7 = *v5;
  v6 = v5[1];
  v8 = &v11[OBJC_IVAR____TtCV17PasswordManagerUIP33_1312920E03BB5C121609F962CF0CDDEA30_PMSendGroupInviteMessageSheet11Coordinator_actionPerformed];
  v9 = *&v11[OBJC_IVAR____TtCV17PasswordManagerUIP33_1312920E03BB5C121609F962CF0CDDEA30_PMSendGroupInviteMessageSheet11Coordinator_actionPerformed + 8];
  *v8 = v7;
  *(v8 + 1) = v6;
}

id sub_21CB1BCEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (v2 + *(a1 + 24));
  v6 = *v4;
  v5 = v4[1];
  v7 = type metadata accessor for _PMSendGroupInviteMessageSheet.Coordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCV17PasswordManagerUIP33_1312920E03BB5C121609F962CF0CDDEA30_PMSendGroupInviteMessageSheet11Coordinator_actionPerformed];
  *v9 = v6;
  *(v9 + 1) = v5;
  v11.receiver = v8;
  v11.super_class = v7;

  result = objc_msgSendSuper2(&v11, sel_init);
  *a2 = result;
  return result;
}

uint64_t sub_21CB1BD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB1C228(&qword_27CDF8D88);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21CB1BDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB1C228(&qword_27CDF8D88);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21CB1BE6C()
{
  sub_21CB1C228(&qword_27CDF8D88);
  sub_21CB83B44();
  __break(1u);
}

uint64_t sub_21CB1BEB0(uint64_t a1)
{
  v2 = a1 == 1;
  v4 = *(v1 + OBJC_IVAR____TtCV17PasswordManagerUIP33_1312920E03BB5C121609F962CF0CDDEA30_PMSendGroupInviteMessageSheet11Coordinator_actionPerformed);
  v3 = *(v1 + OBJC_IVAR____TtCV17PasswordManagerUIP33_1312920E03BB5C121609F962CF0CDDEA30_PMSendGroupInviteMessageSheet11Coordinator_actionPerformed + 8);

  v4(v2);
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMSharingGroup();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_21CB1C0B0()
{
  type metadata accessor for PMSharingGroup();
  if (v0 <= 0x3F)
  {
    sub_21C6E9428();
    if (v1 <= 0x3F)
    {
      sub_21C7226D8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21CB1C14C()
{
  result = qword_27CDF8D70;
  if (!qword_27CDF8D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDF8D50, &qword_21CBCA3D8);
    sub_21CB1C228(&qword_27CDF8D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8D70);
  }

  return result;
}

uint64_t sub_21CB1C228(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _PMSendGroupInviteMessageSheet(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CB1C270@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB82F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for PMNeverSavedPasswordsView();
  sub_21C7B8998(v1 + *(v12 + 28), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CB823B4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_21CB85B04();
    v16 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t PMNeverSavedPasswordsView.init()@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v8);

  type metadata accessor for PMAccountsState();
  sub_21C706258(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v3 = sub_21CB82674();
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD30, &unk_21CBA5590);
  sub_21CB84D44();
  a1[2] = v8;
  a1[3] = v9;
  sub_21CB84D44();
  a1[4] = v8;
  a1[5] = v9;
  v6 = *(type metadata accessor for PMNeverSavedPasswordsView() + 28);
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t PMNeverSavedPasswordsView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8D90, &qword_21CBCA528);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8D98, &unk_21CBCA530);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF59E0, &qword_21CBBF080);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8DA0, &qword_21CBCA540);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8DA8, &qword_21CBCA548);
  sub_21CB1ECC8();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3600, &qword_21CBB7D10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC010, &qword_21CBAA950);
  sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21CB82924();
}

uint64_t sub_21CB1C80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v88 = a2;
  v3 = sub_21CB82FD4();
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = *(v86 + 64);
  MEMORY[0x28223BE20](v3);
  v85 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81024();
  v81 = *(v6 - 8);
  v82 = v6;
  v7 = *(v81 + 64);
  MEMORY[0x28223BE20](v6);
  v80 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_21CB85114();
  v76 = *(v77 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v74 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_21CB829D4();
  v71 = *(v70 - 8);
  v11 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  v68 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CB830D4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8DB8, &qword_21CBCA550);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v67 - v20;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8DA8, &qword_21CBCA548);
  v22 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v67 = &v67 - v23;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8DA0, &qword_21CBCA540);
  v79 = *(v78 - 8);
  v24 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  v72 = &v67 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8D98, &unk_21CBCA530);
  v27 = *(v26 - 8);
  v83 = v26;
  v84 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v73 = &v67 - v29;
  v90 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E10, &qword_21CBCA5F8);
  sub_21C6EADEC(&qword_27CDF8E18, &qword_27CDF8E10, &qword_21CBCA5F8);
  sub_21CB83EF4();
  sub_21CB830B4();
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8DD0, &qword_21CBCA558) + 36);
  (*(v14 + 16))(&v21[v30], v17, v13);
  v31 = *(v14 + 56);
  v31(&v21[v30], 0, 1, v13);
  KeyPath = swift_getKeyPath();
  v33 = &v21[*(v18 + 36)];
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
  (*(v14 + 32))(v33 + v34, v17, v13);
  v31(v33 + v34, 0, 1, v13);
  *v33 = KeyPath;
  v35 = v68;
  sub_21CB85294();
  sub_21CB1EE0C();
  sub_21C706258(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
  v36 = v67;
  v37 = v70;
  sub_21CB849C4();
  (*(v71 + 8))(v35, v37);
  sub_21C6EA794(v21, &qword_27CDF8DB8, &qword_21CBCA550);
  v38 = swift_getKeyPath();
  v39 = v69;
  v40 = (v36 + *(v69 + 36));
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  v42 = v76;
  v43 = v74;
  v44 = v77;
  (*(v76 + 104))(v74, *MEMORY[0x277CDF0D0], v77);
  sub_21CB84F74();
  (*(v42 + 8))(v43, v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v45 - 8) + 56))(v40 + v41, 0, 1, v45);
  *v40 = v38;
  v46 = v80;
  sub_21CB81014();
  v47 = sub_21CB81004();
  v49 = v48;
  (*(v81 + 8))(v46, v82);
  v91 = v47;
  v92 = v49;
  v50 = sub_21CB1ECC8();
  v51 = sub_21C71F3FC();
  v52 = MEMORY[0x277D837D0];
  v53 = v72;
  v54 = v39;
  sub_21CB842F4();

  sub_21C789F28(v36);
  v55 = v85;
  v56 = v86;
  v57 = v87;
  (*(v86 + 104))(v85, *MEMORY[0x277CDDDC0], v87);
  v91 = v54;
  v92 = v52;
  v93 = v50;
  v94 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v73;
  v60 = v78;
  sub_21CB84684();
  (*(v56 + 8))(v55, v57);
  (*(v79 + 8))(v53, v60);
  v89 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF59E0, &qword_21CBBF080);
  v91 = v60;
  v92 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3600, &qword_21CBB7D10);
  v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC010, &qword_21CBAA950);
  v63 = sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950);
  v91 = v62;
  v92 = v63;
  v64 = swift_getOpaqueTypeConformance2();
  v91 = v61;
  v92 = v64;
  swift_getOpaqueTypeConformance2();
  v65 = v83;
  sub_21CB84894();
  return (*(v84 + 8))(v59, v65);
}

uint64_t sub_21CB1D22C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF72F0, &qword_21CBCA670);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v45 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = v36 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E28, &qword_21CBCA678);
  v39 = *(v41 - 8);
  v8 = v39;
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v36 - v13;
  v15 = sub_21CB81024();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v16 + 8))(v19, v15);
  v40 = sub_21CB85594();
  v21 = v20;
  v36[1] = v20;

  v48 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E30, &qword_21CBCA680);
  sub_21CB1F1A4();
  v38 = v14;
  sub_21CB85054();
  v47 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  v22 = v46;
  sub_21CB85054();
  v23 = *(v8 + 16);
  v37 = v11;
  v24 = v14;
  v25 = v41;
  v23(v11, v24, v41);
  v27 = v42;
  v26 = v43;
  v28 = *(v42 + 16);
  v28(v45, v22, v43);
  v29 = v44;
  *v44 = v40;
  v29[1] = v21;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E70, &unk_21CBCA6A8);
  v23(v30 + *(v31 + 48), v11, v25);
  v32 = v45;
  v28(v30 + *(v31 + 64), v45, v26);
  v33 = *(v27 + 8);

  v33(v46, v26);
  v34 = *(v39 + 8);
  v34(v38, v25);
  v33(v32, v26);
  v34(v37, v25);
}

uint64_t sub_21CB1D69C@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v2 = type metadata accessor for PMNeverSavedPasswordsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *(v1 + 8);
  v14 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v13 = type metadata accessor for PMNeverSavedPasswordsView;
  sub_21CB1F3F8(v1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMNeverSavedPasswordsView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_21CB1F104(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E58, &qword_21CBCA690);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730);
  sub_21CB1F2E0();
  sub_21C706258(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  v8 = v15;
  sub_21CB84FF4();
  sub_21CB1F3F8(v14, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v9 = swift_allocObject();
  sub_21CB1F104(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v6);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21CB1F508;
  *(v10 + 24) = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E30, &qword_21CBCA680);
  v12 = (v8 + *(result + 36));
  *v12 = sub_21C7A4968;
  v12[1] = v10;
  return result;
}

uint64_t sub_21CB1D970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = type metadata accessor for PMNeverSavedPasswordsView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v22 - v8;
  v10 = sub_21CB81024();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v15 = sub_21CB81004();
  v17 = v16;
  (*(v11 + 8))(v14, v10);
  v22[2] = v15;
  v22[3] = v17;
  sub_21CB81ED4();
  v18 = sub_21CB81F14();
  (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
  sub_21CB1F3F8(a1, v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMNeverSavedPasswordsView);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_21CB1F104(v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_21C71F3FC();
  return sub_21CB84DC4();
}

uint64_t sub_21CB1DC14(void *a1)
{
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_21CB823B4();
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v10;
  sub_21CB81DB4();

  v11 = v32;
  v12 = *(v32 + 16);
  if (v12)
  {
    v26 = v7;
    v27 = a1;
    v32 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v12, 0);
    v13 = v32;
    v14 = v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v15 = *(v3 + 72);
    do
    {
      sub_21CB1F3F8(v14, v6, type metadata accessor for PMAccount);
      v16 = *v6;
      v17 = v6[1];

      sub_21C7D4A64(v6);
      v32 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_21C7B0C0C((v18 > 1), v19 + 1, 1);
        v13 = v32;
      }

      *(v13 + 16) = v19 + 1;
      v20 = v13 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v14 += v15;
      --v12;
    }

    while (v12);

    v7 = v26;
    a1 = v27;
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v21 = sub_21CB009AC(v13);

  v23 = a1[5];
  v32 = a1[4];
  v22 = v32;
  v33 = v23;
  v31 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E20, &qword_21CBCA668);
  sub_21CB84D64();
  v32 = v22;
  v33 = v23;
  sub_21CB84D54();
  sub_21C832B9C(v31);

  v24 = v29;
  sub_21CB1C270(v29);
  sub_21CB823A4();
  return (*(v30 + 8))(v24, v7);
}

uint64_t sub_21CB1DF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = sub_21CB83604();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC010, &qword_21CBAA950);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3600, &qword_21CBB7D10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  sub_21CB835D4();
  v18[4] = a1;
  type metadata accessor for PMPlatformRoleButton();
  sub_21C706258(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
  sub_21CB82194();
  v15 = sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950);
  MEMORY[0x21CF131E0](v9, v5, v15);
  (*(v6 + 8))(v9, v5);
  v18[6] = v5;
  v18[7] = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF131E0](v14, v10, OpaqueTypeConformance2);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21CB1E1DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E20, &qword_21CBCA668);
  sub_21CB84D54();
  v5 = sub_21C8FFAE0(*a1, a1[1], v14);

  v6 = 0uLL;
  if (v5)
  {
    result = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  else
  {
    PMAccount.userVisibleDomain.getter();
    if (v13)
    {
      sub_21CB84F74();

      v8 = v15;
      v9 = v16;
      v10 = v17;
      v11 = v18;
      result = swift_getKeyPath();
      v6 = xmmword_21CBCA4B0;
      v12 = 1;
    }

    else
    {
      result = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v6 = 0uLL;
    }
  }

  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  *(a3 + 48) = v11;
  *(a3 + 56) = v6;
  *(a3 + 72) = v12;
  return result;
}

uint64_t sub_21CB1E31C(uint64_t a1, void *a2)
{
  v33 = a2;
  v2 = type metadata accessor for PMAccount(0);
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v28 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_21CB80F34();
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E78, &qword_21CBCA708);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  sub_21CB80F44();
  v13 = *(v9 + 44);
  sub_21CB80F64();
  sub_21C706258(&qword_27CDF8E80, MEMORY[0x277CC9A28]);
  v30 = (v5 + 8);
  while (1)
  {
    v14 = v31;
    sub_21CB85A64();
    sub_21C706258(&qword_27CDF8E88, MEMORY[0x277CC9A08]);
    v15 = v32;
    v16 = sub_21CB85574();
    (*v30)(v14, v15);
    if (v16)
    {
      return sub_21C6EA794(v12, &qword_27CDF8E78, &qword_21CBCA708);
    }

    v17 = sub_21CB85A94();
    v19 = *v18;
    v17(&v40, 0);
    sub_21CB85A74();
    v20 = v33[1];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    if ((v19 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v19 >= *(v40 + 16))
    {
      goto LABEL_8;
    }

    v22 = v40 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v19;
    v23 = v28;
    sub_21CB1F3F8(v22, v28, type metadata accessor for PMAccount);

    v24 = *v23;
    v25 = v23[1];

    sub_21C7D4A64(v23);
    v27 = v33[5];
    v37 = v33[4];
    v26 = v37;
    v38 = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E20, &qword_21CBCA668);
    sub_21CB84D54();
    sub_21CA94078(&v40, v24, v25);

    v35 = v26;
    v36 = v27;
    v34 = v39;
    sub_21CB84D64();
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_21CB1E738@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a1;
  v3 = type metadata accessor for PMNeverSavedPasswordsView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMPlatformRoleButton();
  v12 = a2 + *(v11 + 20);
  sub_21CB81F04();
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  sub_21CB1F3F8(v21, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMNeverSavedPasswordsView);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  result = sub_21CB1F104(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  *a2 = v13;
  a2[1] = v15;
  v19 = (a2 + *(v11 + 24));
  *v19 = sub_21CB1F168;
  v19[1] = v17;
  return result;
}

uint64_t sub_21CB1E938(void *a1)
{
  v2 = sub_21CB823B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v8 = a1[5];
  v10[2] = a1[4];
  v10[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E20, &qword_21CBCA668);
  sub_21CB84D54();
  sub_21C832B9C(v10[1]);

  sub_21CB1C270(v6);
  sub_21CB823A4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21CB1EA60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8D90, &qword_21CBCA528);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8D98, &unk_21CBCA530);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF59E0, &qword_21CBBF080);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8DA0, &qword_21CBCA540);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8DA8, &qword_21CBCA548);
  sub_21CB1ECC8();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3600, &qword_21CBB7D10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC010, &qword_21CBAA950);
  sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21CB82924();
}

uint64_t type metadata accessor for PMNeverSavedPasswordsView()
{
  result = qword_27CDF8DE8;
  if (!qword_27CDF8DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21CB1ECC8()
{
  result = qword_27CDF8DB0;
  if (!qword_27CDF8DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8DA8, &qword_21CBCA548);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8DB8, &qword_21CBCA550);
    sub_21CB829D4();
    sub_21CB1EE0C();
    sub_21C706258(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8DB0);
  }

  return result;
}

unint64_t sub_21CB1EE0C()
{
  result = qword_27CDF8DC0;
  if (!qword_27CDF8DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8DB8, &qword_21CBCA550);
    sub_21CB1EEC4();
    sub_21C6EADEC(&qword_27CDEB288, &qword_27CDEB238, &qword_21CBA1570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8DC0);
  }

  return result;
}

unint64_t sub_21CB1EEC4()
{
  result = qword_27CDF8DC8;
  if (!qword_27CDF8DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8DD0, &qword_21CBCA558);
    sub_21C6EADEC(&qword_27CDF8DD8, &qword_27CDF8DE0, &unk_21CBCA560);
    sub_21C6EADEC(&qword_27CDEB278, &qword_27CDEB280, &unk_21CBA7D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8DC8);
  }

  return result;
}

void sub_21CB1EFEC()
{
  sub_21C705CFC();
  if (v0 <= 0x3F)
  {
    sub_21CB1F088();
    if (v1 <= 0x3F)
    {
      sub_21C721A6C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CB1F088()
{
  if (!qword_27CDF8DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECD30, &unk_21CBA5590);
    v0 = sub_21CB84D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF8DF8);
    }
  }
}

uint64_t sub_21CB1F104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMNeverSavedPasswordsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CB1F1A4()
{
  result = qword_27CDF8E38;
  if (!qword_27CDF8E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8E30, &qword_21CBCA680);
    sub_21CB1F25C();
    sub_21C6EADEC(&qword_27CDF8E60, &qword_27CDF8E68, &unk_21CBCA698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8E38);
  }

  return result;
}

unint64_t sub_21CB1F25C()
{
  result = qword_27CDF8E40;
  if (!qword_27CDF8E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8E48, &qword_21CBCA688);
    sub_21CB1F2E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8E40);
  }

  return result;
}

unint64_t sub_21CB1F2E0()
{
  result = qword_27CDF8E50;
  if (!qword_27CDF8E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8E58, &qword_21CBCA690);
    sub_21C85872C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8E50);
  }

  return result;
}

uint64_t sub_21CB1F384(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMNeverSavedPasswordsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21CB1F3F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB1F488@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMNeverSavedPasswordsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21CB1E1DC(a1, v6, a2);
}

uint64_t sub_21CB1F508(uint64_t a1)
{
  v3 = *(type metadata accessor for PMNeverSavedPasswordsView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_21CB1E31C(a1, v4);
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI40PMSetUpVerificationCodeAlertViewModifierV28OpenQRCodeImageHandlingError33_178D9B58BE388571F3D2DB04122B186DLLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21CB1F5F8(uint64_t *a1, unsigned int a2)
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

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21CB1F64C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21CB1F71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

void sub_21CB1F7C4()
{
  sub_21C722688(319, &qword_27CDEE2A8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PMSetUpVerificationCodeAlertPurpose(319);
    if (v1 <= 0x3F)
    {
      sub_21C7226D8();
      if (v2 <= 0x3F)
      {
        sub_21C722688(319, &qword_27CDF3598, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_21C722688(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_21CB1F934();
            if (v5 <= 0x3F)
            {
              sub_21C70DC98();
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

void sub_21CB1F934()
{
  if (!qword_27CDF8EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1478, &qword_21CBB1660);
    v0 = sub_21CB84D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF8EC0);
    }
  }
}

uint64_t sub_21CB1F9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a1;
  v124 = a2;
  v3 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  v4 = v3 - 8;
  v125 = *(v3 - 8);
  v5 = *(v125 + 64);
  v134 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v6;
  v8 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8EC8, &qword_21CBCA908);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v98 - v11;
  v13 = sub_21CB81024();
  v135 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8ED0, &qword_21CBCA910);
  v116 = *(v115 - 8);
  v18 = *(v116 + 64);
  MEMORY[0x28223BE20](v115);
  v128 = &v98 - v19;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8ED8, &qword_21CBCA918);
  v119 = *(v118 - 8);
  v20 = *(v119 + 64);
  MEMORY[0x28223BE20](v118);
  v127 = &v98 - v21;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8EE0, &qword_21CBCA920);
  v121 = *(v120 - 8);
  v22 = *(v121 + 64);
  MEMORY[0x28223BE20](v120);
  v130 = &v98 - v23;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8EE8, &unk_21CBCA928);
  v123 = *(v122 - 8);
  v24 = *(v123 + 64);
  MEMORY[0x28223BE20](v122);
  v131 = &v98 - v25;
  v126 = v17;
  sub_21CB81014();
  v26 = sub_21CB81004();
  v28 = v27;
  v29 = *(v14 + 8);
  v136 = v14 + 8;
  v137 = v29;
  v29(v17, v13);
  v142 = v26;
  v143 = v28;
  v129 = sub_21C71F3FC();
  v108 = sub_21CB84054();
  v107 = v30;
  v102 = v31;
  v103 = v32;
  v33 = v2;
  v34 = *(v2 + 8);
  OpaqueTypeConformance2 = *v2;
  v105 = v34;
  v104 = *(v2 + 16);
  v35 = v2 + *(v4 + 28);
  v99 = v12;
  sub_21CB24280(v35, v12, type metadata accessor for PMSetUpVerificationCodeAlertPurpose);
  v36 = type metadata accessor for PMSetUpVerificationCodeAlertPurpose(0);
  (*(*(v36 - 8) + 56))(v12, 0, 1, v36);
  v113 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier;
  sub_21CB24280(v2, v8, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  v37 = *(v125 + 80);
  v114 = v7;
  v38 = (v37 + 16) & ~v37;
  v112 = v37;
  v39 = swift_allocObject();
  v111 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier;
  sub_21CB24EE8(v8, v39 + v38, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  v109 = v8;
  sub_21CB24280(v2, v8, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  v110 = v38;
  v40 = swift_allocObject();
  sub_21CB24EE8(v8, v40 + v38, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8EF0, &qword_21CBCA938);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8EF8, &unk_21CBCA940);
  v101 = sub_21C6EADEC(&qword_27CDF8F00, &qword_27CDF8EF0, &qword_21CBCA938);
  v117 = MEMORY[0x277CE14C0];
  v125 = sub_21C6EADEC(&qword_27CDF8F08, &qword_27CDF8EF8, &unk_21CBCA940);
  LOBYTE(v7) = v102;
  v41 = v108;
  v42 = v107;
  v43 = v99;
  sub_21CB84704();
  sub_21C74A72C(v41, v42, v7 & 1);

  sub_21C6EA794(v43, &qword_27CDF8EC8, &qword_21CBCA908);

  v44 = v126;
  sub_21CB81014();
  v45 = sub_21CB81004();
  v47 = v46;
  v137(v44, v135);
  v142 = v45;
  v143 = v47;
  v48 = sub_21CB84054();
  v50 = v49;
  LOBYTE(v38) = v51;
  v107 = v52;
  v53 = v33 + v134[10];
  v54 = *v53;
  v55 = *(v53 + 8);
  LOBYTE(v152) = v54;
  v153 = v55;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v104 = v144;
  v132 = v33;
  v141 = v33;
  v140 = v33;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC150, &unk_21CBA4F60);
  v142 = v98;
  v143 = v100;
  v144 = MEMORY[0x277CE0BD8];
  v145 = v36;
  v146 = v101;
  v147 = v125;
  v148 = MEMORY[0x277CE0BC8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v125 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  v57 = sub_21C7FC578();
  v58 = v56;
  v108 = v56;
  v59 = v115;
  v60 = v128;
  sub_21CB84744();

  sub_21C74A72C(v48, v50, v38 & 1);

  (*(v116 + 8))(v60, v59);
  v61 = v134;
  v62 = v132;
  v63 = v132 + v134[12];
  v64 = *v63;
  v65 = *(v63 + 8);
  LOBYTE(v152) = v64;
  v153 = v65;
  sub_21CB84D74();
  v66 = v109;
  sub_21CB24280(v62, v109, v113);
  v67 = v110;
  v68 = swift_allocObject();
  sub_21CB24EE8(v66, v68 + v67, v111);
  v128 = type metadata accessor for PMOtpauthQRCodeScannerView();
  v142 = v59;
  v143 = v58;
  v144 = v105;
  v145 = OpaqueTypeConformance2;
  v146 = v125;
  v147 = v57;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = sub_21CB25158(&qword_27CDF8F10, type metadata accessor for PMOtpauthQRCodeScannerView);
  v71 = v118;
  v72 = v127;
  sub_21CB847B4();

  (*(v119 + 8))(v72, v71);
  v73 = v126;
  sub_21CB81014();
  v74 = sub_21CB81004();
  v76 = v75;
  v137(v73, v135);
  v152 = v74;
  v153 = v76;
  v77 = v61[14];
  v78 = v132;
  v79 = (v132 + v77);
  v80 = *v79;
  v81 = *(v79 + 1);
  v150 = v80;
  v151 = v81;
  sub_21CB84D74();
  v139 = v78;
  v142 = v71;
  v143 = v128;
  v144 = v69;
  v145 = v70;
  v82 = swift_getOpaqueTypeConformance2();
  v83 = v129;
  v84 = v82;
  v85 = v108;
  v86 = v120;
  v87 = v130;
  sub_21CB84754();

  (*(v121 + 8))(v87, v86);
  sub_21CB81014();
  v88 = sub_21CB81004();
  v90 = v89;
  v130 = v89;
  v137(v73, v135);
  v152 = v88;
  v153 = v90;
  v91 = v132;
  v92 = v132 + v134[13];
  v93 = *v92;
  v94 = *(v92 + 8);
  v150 = v93;
  v151 = v94;
  sub_21CB84D74();
  LODWORD(v137) = v144;
  v138 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F18, &qword_21CBCA950);
  v142 = v86;
  v143 = MEMORY[0x277D837D0];
  v144 = v85;
  v145 = MEMORY[0x277CE0BD8];
  v146 = v84;
  v147 = v83;
  v148 = v125;
  v149 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDF8F20, &qword_27CDF8F18, &qword_21CBCA950);
  v95 = v122;
  v96 = v131;
  sub_21CB84754();

  return (*(v123 + 8))(v96, v95);
}

uint64_t sub_21CB209F0@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v82 = &v70 - v3;
  v4 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v70 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC948, &qword_21CBA4E30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v84 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v83 = &v70 - v17;
  MEMORY[0x28223BE20](v18);
  v81 = &v70 - v19;
  MEMORY[0x28223BE20](v20);
  v89 = &v70 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v70 - v23;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F38, &qword_21CBCA9A8);
  v25 = *(*(v72 - 1) + 64);
  MEMORY[0x28223BE20](v72);
  v80 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v70 - v28;
  MEMORY[0x28223BE20](v30);
  v91 = &v70 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F40, &unk_21CBCA9B0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v88 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v87 = &v70 - v36;
  v37 = v90;
  sub_21CB234C4(&v70 - v36);
  sub_21CB24280(v37, &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  v38 = *(v6 + 80);
  v39 = (v38 + 16) & ~v38;
  v86 = v38;
  v76 = v39 + v7;
  v40 = swift_allocObject();
  v77 = v39;
  v73 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB24EE8(v73, v40 + v39, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  sub_21CB84DA4();
  v75 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  sub_21CB845C4();
  v41 = *(v9 + 8);
  v78 = v9 + 8;
  v79 = v8;
  v74 = v41;
  v41(v12, v8);
  v42 = v90;
  v43 = (v90 + *(v5 + 36));
  v44 = *v43;
  v45 = *(v43 + 2);
  v92 = v44;
  v93 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D54();
  v46 = objc_allocWithZone(MEMORY[0x277D49B78]);
  v47 = sub_21CB85584();

  v48 = [v46 initWithUserProvidedString_];

  if (v48)
  {
  }

  v49 = v48 == 0;
  KeyPath = swift_getKeyPath();
  v51 = swift_allocObject();
  *(v51 + 16) = v49;
  sub_21C716934(v24, v29, &qword_27CDEC948, &qword_21CBA4E30);
  v52 = &v29[*(v72 + 9)];
  *v52 = KeyPath;
  v52[1] = sub_21C735744;
  v52[2] = v51;
  sub_21C716934(v29, v91, &qword_27CDF8F38, &qword_21CBCA9A8);
  v72 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier;
  v53 = v73;
  sub_21CB24280(v42, v73, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  v54 = swift_allocObject();
  v71 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier;
  v55 = v77;
  sub_21CB24EE8(v53, v54 + v77, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  sub_21CB84DA4();
  v56 = v79;
  sub_21CB845C4();
  v57 = v74;
  v74(v12, v56);
  v58 = v82;
  sub_21CB81EF4();
  v59 = sub_21CB81F14();
  (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
  sub_21CB24280(v90, v53, v72);
  v60 = swift_allocObject();
  sub_21CB24EE8(v53, v60 + v55, v71);
  sub_21CB84D94();
  v61 = v81;
  sub_21CB845C4();
  v57(v12, v56);
  v62 = v88;
  sub_21C78A454(v87, v88);
  v63 = v80;
  sub_21C6EDBAC(v91, v80, &qword_27CDF8F38, &qword_21CBCA9A8);
  v64 = v89;
  v65 = v83;
  sub_21C6EDBAC(v89, v83, &qword_27CDEC948, &qword_21CBA4E30);
  v66 = v84;
  sub_21C6EDBAC(v61, v84, &qword_27CDEC948, &qword_21CBA4E30);
  v67 = v85;
  sub_21C78A454(v62, v85);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F48, &qword_21CBCA9F0);
  sub_21C6EDBAC(v63, v67 + v68[12], &qword_27CDF8F38, &qword_21CBCA9A8);
  sub_21C6EDBAC(v65, v67 + v68[16], &qword_27CDEC948, &qword_21CBA4E30);
  sub_21C6EDBAC(v66, v67 + v68[20], &qword_27CDEC948, &qword_21CBA4E30);
  sub_21C6EA794(v61, &qword_27CDEC948, &qword_21CBA4E30);
  sub_21C6EA794(v64, &qword_27CDEC948, &qword_21CBA4E30);
  sub_21C6EA794(v91, &qword_27CDF8F38, &qword_21CBCA9A8);
  sub_21C78A4C4(v87);
  sub_21C6EA794(v66, &qword_27CDEC948, &qword_21CBA4E30);
  sub_21C6EA794(v65, &qword_27CDEC948, &qword_21CBA4E30);
  sub_21C6EA794(v63, &qword_27CDF8F38, &qword_21CBCA9A8);
  return sub_21C78A4C4(v88);
}

uint64_t sub_21CB213A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a1;
  v66 = a2;
  v2 = sub_21CB81024();
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = *(v64 + 64);
  MEMORY[0x28223BE20](v2);
  v63 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for PMAccount.Storage(0);
  v5 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v60 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount(0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v61 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMSetUpVerificationCodeAlertPurpose(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v59 - v21;
  v23 = v8[7];
  v24 = 1;
  v23(&v59 - v21, 1, 1, v7, v20);
  sub_21C6EA794(v22, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21CB24280(v62, v14, type metadata accessor for PMSetUpVerificationCodeAlertPurpose);
  v25 = v8[6];
  if (v25(v14, 1, v7) != 1)
  {
    sub_21CB24EE8(v14, v22, type metadata accessor for PMAccount);
    v24 = 0;
  }

  (v23)(v22, v24, 1, v7);
  sub_21C6EDBAC(v22, v18, &unk_27CDEBE60, &unk_21CB9FF40);
  if (v25(v18, 1, v7) == 1)
  {
    sub_21C6EA794(v18, &unk_27CDEBE60, &unk_21CB9FF40);
LABEL_11:
    v39 = v63;
    sub_21CB81014();
    v40 = sub_21CB81004();
    v42 = v41;
    (*(v64 + 8))(v39, v65);
    v67 = v40;
    v68 = v42;
    sub_21C71F3FC();
    v43 = sub_21CB84054();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    goto LABEL_12;
  }

  v26 = v61;
  sub_21CB24EE8(v18, v61, type metadata accessor for PMAccount);
  v27 = v60;
  sub_21CB24280(v26 + *(v7 + 24), v60, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CB24F50(v27, type metadata accessor for PMAccount.Storage);
LABEL_10:
    sub_21CB24F50(v26, type metadata accessor for PMAccount);
    goto LABEL_11;
  }

  v28 = *v27;
  v29 = [v28 hasValidWebsite];

  if (!v29)
  {
    goto LABEL_10;
  }

  v30 = PMAccount.userVisibleDomain.getter();
  if (v31)
  {
    v32 = v30;
    v33 = v31;
    v34 = v63;
    sub_21CB81014();
    sub_21CB81004();
    (*(v64 + 8))(v34, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_21CBA0690;
    *(v35 + 56) = MEMORY[0x277D837D0];
    *(v35 + 64) = sub_21C7C0050();
    *(v35 + 32) = v32;
    *(v35 + 40) = v33;
    v36 = sub_21CB85594();
    v38 = v37;

    v67 = v36;
    v68 = v38;
  }

  else
  {
    v52 = v63;
    sub_21CB81014();
    v53 = sub_21CB81004();
    v55 = v54;
    (*(v64 + 8))(v52, v65);
    v67 = v53;
    v68 = v55;
  }

  sub_21C71F3FC();
  v43 = sub_21CB84054();
  v45 = v56;
  v47 = v57;
  v49 = v58;
  sub_21CB24F50(v26, type metadata accessor for PMAccount);
LABEL_12:
  result = sub_21C6EA794(v22, &unk_27CDEBE60, &unk_21CB9FF40);
  v51 = v66;
  *v66 = v43;
  v51[1] = v45;
  *(v51 + 16) = v47 & 1;
  v51[3] = v49;
  return result;
}

double sub_21CB219FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(a1 + *(type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F30, &qword_21CBCA9A0);
  sub_21CB84D54();
  if (v13 >= 3)
  {
    v3 = [v13 localizedDescription];
    v4 = sub_21CB855C4();
    v6 = v5;

    *&v14 = v4;
    *(&v14 + 1) = v6;
    sub_21C71F3FC();
    v7 = sub_21CB84054();
    v9 = v8;
    v11 = v10 & 1;
    sub_21C79B058(v7, v8, v10 & 1);

    sub_21C79B058(v7, v9, v11);

    sub_21CB83494();
    sub_21CB24EC8(v13);
    sub_21C74A72C(v7, v9, v11);

    sub_21C74A72C(v7, v9, v11);
  }

  else
  {
    sub_21CB83134();
    sub_21CB84034();
    sub_21CB83494();
  }

  result = *&v14;
  *a2 = v14;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_21CB21BDC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21CB24280(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21CB24EE8(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  *a2 = sub_21CB24508;
  a2[1] = v8;
  v9 = *(type metadata accessor for PMOtpauthQRCodeScannerView() + 20);
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21CB21D3C(uint64_t a1, uint64_t a2)
{
  v62 = sub_21CB853D4();
  v64 = *(v62 - 8);
  v4 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  v60 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_21CB85404();
  v61 = *(v63 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  v57 = *(v8 - 1);
  v9 = *(v57 + 64);
  MEMORY[0x28223BE20](v8);
  v58 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1610, &unk_21CBB1810);
  v10 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v12 = (&v53 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC90, &qword_21CBA0160);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v66 = (&v53 - v15);
  v16 = sub_21CB80BE4();
  v65 = *(v16 - 8);
  v17 = *(v65 + 64);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  v21 = objc_allocWithZone(MEMORY[0x277D49B78]);
  v67 = a1;
  v22 = sub_21CB80B74();
  v23 = [v21 initWithOTPAuthURL_];

  v24 = a2 + v8[10];
  v25 = *v24;
  v26 = *(v24 + 8);
  if (v23)
  {
    LOBYTE(aBlock) = v25;
    v70 = v26;
    v75 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    sub_21CB84D64();
    v27 = a2 + v8[6];
    v29 = *v27;
    v28 = *(v27 + 8);
    *v12 = v23;
    swift_storeEnumTagMultiPayload();
    v30 = v23;
    v29(v12);

    return sub_21C6EA794(v12, &qword_27CDF1610, &unk_21CBB1810);
  }

  v54 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v9;
  v56 = v20;
  v32 = v65;
  v68 = v16;
  LOBYTE(aBlock) = v25;
  v70 = v26;
  v75 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D64();
  v33 = v66;
  sub_21C9F5568(v67, v66);
  v34 = type metadata accessor for PMOpenURLHandler.Action();
  if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
  {
    sub_21C6EA794(v33, &qword_27CDEAC90, &qword_21CBA0160);
    v35 = a2;
  }

  else
  {
    v35 = a2;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v36 = v32;
      v37 = *(v32 + 32);
      v38 = v56;
      v39 = v68;
      v37(v56, v33, v68);
      sub_21C8582C0();
      v67 = sub_21CB85CF4();
      v40 = v58;
      sub_21CB24280(v35, v58, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
      v41 = v54;
      (*(v36 + 16))(v54, v38, v39);
      v42 = (*(v57 + 80) + 16) & ~*(v57 + 80);
      v43 = (v55 + *(v36 + 80) + v42) & ~*(v36 + 80);
      v44 = swift_allocObject();
      sub_21CB24EE8(v40, v44 + v42, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
      v37((v44 + v43), v41, v39);
      v73 = sub_21CB24DD0;
      v74 = v44;
      aBlock = MEMORY[0x277D85DD0];
      v70 = 1107296256;
      v71 = sub_21C6ECBD4;
      v72 = &block_descriptor_41;
      v45 = _Block_copy(&aBlock);

      v46 = v59;
      sub_21CB853E4();
      aBlock = MEMORY[0x277D84F90];
      sub_21CB25158(&qword_27CDEAF48, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
      sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
      v47 = v60;
      v48 = v62;
      sub_21CB85F14();
      v49 = v67;
      MEMORY[0x21CF15800](0, v46, v47, v45);
      _Block_release(v45);

      (*(v64 + 8))(v47, v48);
      (*(v61 + 8))(v46, v63);
      return (*(v36 + 8))(v56, v39);
    }

    sub_21CB24F50(v33, type metadata accessor for PMOpenURLHandler.Action);
  }

  v50 = v35 + v8[12];
  v51 = *v50;
  v52 = *(v50 + 8);
  LOBYTE(aBlock) = v51;
  v70 = v52;
  v75 = 1;
  return sub_21CB84D64();
}

uint64_t sub_21CB224D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1610, &unk_21CBB1810);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = a1 + *(type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0) + 24);
  v10 = *v8;
  v9 = *(v8 + 8);
  v11 = sub_21CB80BE4();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v7, a2, v11);
  (*(v12 + 56))(v7, 0, 3, v11);
  swift_storeEnumTagMultiPayload();
  v10(v7);
  return sub_21C6EA794(v7, &qword_27CDF1610, &unk_21CBB1810);
}

uint64_t sub_21CB22628(uint64_t a1)
{
  v2 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21CB24280(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_21CB24EE8(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  return sub_21CB84DA4();
}

uint64_t sub_21CB2276C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1610, &unk_21CBB1810);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = a1 + *(type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0) + 24);
  v10 = *v8;
  v9 = *(v8 + 8);
  v11 = sub_21CB80BE4();
  (*(*(v11 - 8) + 56))(v7, a2, 3, v11);
  swift_storeEnumTagMultiPayload();
  v10(v7);
  return sub_21C6EA794(v7, &qword_27CDF1610, &unk_21CBB1810);
}

uint64_t sub_21CB22888@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21CB229B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v68 = a2;
  v2 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  v70 = *(v2 - 8);
  v3 = *(v70 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v71 = v4;
  v65 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB81024();
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = *(v63 + 64);
  MEMORY[0x28223BE20](v5);
  v62 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v67 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v57 - v17;
  v19 = sub_21CB80BE4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v61 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v57 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B8, &qword_21CBA3EB0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v66 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v57 - v29;
  v31 = *MEMORY[0x277D766C0];
  sub_21CB855C4();
  sub_21CB80BD4();

  v32 = (*(v20 + 48))(v18, 1, v19);
  v69 = v30;
  if (v32 == 1)
  {
    sub_21C6EA794(v18, &qword_27CDEC300, &qword_21CBA3ED0);
    v33 = 1;
    v34 = v14;
    v35 = v65;
  }

  else
  {
    v59 = v14;
    v60 = v9;
    v58 = v8;
    v36 = *(v20 + 32);
    v37 = v24;
    v36(v24, v18, v19);
    v38 = v62;
    sub_21CB81014();
    v39 = sub_21CB81004();
    v41 = v40;
    (*(v63 + 8))(v38, v64);
    v73 = v39;
    v74 = v41;
    v42 = v65;
    sub_21CB24280(v72, v65, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
    v43 = v61;
    (*(v20 + 16))(v61, v37, v19);
    v44 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v45 = (v71 + *(v20 + 80) + v44) & ~*(v20 + 80);
    v46 = swift_allocObject();
    sub_21CB24EE8(v42, v46 + v44, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
    v36((v46 + v45), v43, v19);
    v8 = v58;
    v30 = v69;
    v9 = v60;
    sub_21C71F3FC();
    v34 = v59;
    sub_21CB84DE4();
    (*(v20 + 8))(v37, v19);
    (*(v9 + 32))(v30, v34, v8);
    v33 = 0;
    v35 = v42;
  }

  (*(v9 + 56))(v30, v33, 1, v8);
  sub_21CB24280(v72, v35, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  v47 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v48 = swift_allocObject();
  sub_21CB24EE8(v35, v48 + v47, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  sub_21CB84DA4();
  v49 = v30;
  v50 = v66;
  sub_21C6EDBAC(v49, v66, &qword_27CDEC2B8, &qword_21CBA3EB0);
  v51 = *(v9 + 16);
  v52 = v67;
  v51(v67, v34, v8);
  v53 = v68;
  sub_21C6EDBAC(v50, v68, &qword_27CDEC2B8, &qword_21CBA3EB0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F28, &unk_21CBCA958);
  v51((v53 + *(v54 + 48)), v52, v8);
  v55 = *(v9 + 8);
  v55(v34, v8);
  sub_21C6EA794(v69, &qword_27CDEC2B8, &qword_21CBA3EB0);
  v55(v52, v8);
  return sub_21C6EA794(v50, &qword_27CDEC2B8, &qword_21CBA3EB0);
}

uint64_t sub_21CB230F0(uint64_t a1, uint64_t a2)
{
  v20[1] = a2;
  v20[0] = sub_21CB82F84();
  v3 = *(v20[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v20[0]);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v20 - v9);
  v11 = sub_21CB82484();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  sub_21C6EDBAC(a1 + *(v16 + 52), v10, &qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    sub_21CB85B04();
    v18 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v20[0]);
  }

  sub_21CB82454();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_21CB23398@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21CB234C4@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v1 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  v2 = v1 - 8;
  v75 = *(v1 - 8);
  v74 = *(v75 + 64);
  MEMORY[0x28223BE20](v1);
  v73 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE080, &qword_21CBD0220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v71 = &v61 - v6;
  v68 = sub_21CB83D74();
  v67 = *(v68 - 8);
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v63 = *(v62 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  v11 = &v61 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F50, &qword_21CBCA9F8);
  v12 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v14 = &v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F58, &qword_21CBCAA00);
  v16 = *(v15 - 8);
  v69 = v15;
  v70 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v64 = &v61 - v18;
  v19 = sub_21CB81024();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v61 - v25;
  sub_21CB81014();
  sub_21CB81014();
  v27 = sub_21CB80FF4();
  v29 = v28;
  v30 = *(v20 + 8);
  v30(v23, v19);
  v30(v26, v19);
  v81 = v27;
  v82 = v29;
  sub_21C71F3FC();
  v31 = sub_21CB84054();
  v33 = v32;
  LOBYTE(v23) = v34;
  v36 = v35;
  v37 = (v76 + *(v2 + 36));
  v38 = *v37;
  v39 = *(v37 + 2);
  v83 = v38;
  v84 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D74();
  LOBYTE(v23) = v23 & 1;
  v77 = v31;
  v78 = v33;
  v79 = v23;
  v80 = v36;
  sub_21C79B058(v31, v33, v23);

  sub_21CB852F4();
  sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
  v40 = v62;
  sub_21CB845C4();
  (*(v63 + 8))(v11, v40);
  KeyPath = swift_getKeyPath();
  v42 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFD0, &qword_21CBA9260) + 36)];
  *v42 = KeyPath;
  v42[8] = 1;
  sub_21CB83D94();
  v43 = v67;
  v44 = v66;
  v45 = v68;
  (*(v67 + 104))(v66, *MEMORY[0x277CE0948], v68);
  v46 = sub_21CB83D84();

  (*(v43 + 8))(v44, v45);
  v47 = swift_getKeyPath();
  v48 = v65;
  v49 = &v14[*(v65 + 36)];
  *v49 = v47;
  v49[1] = v46;
  v50 = sub_21CB250A0();
  v51 = v64;
  MEMORY[0x21CF14040](1, v48, v50);
  sub_21C6EA794(v14, &qword_27CDF8F50, &qword_21CBCA9F8);
  v52 = v71;
  sub_21CB83A84();
  v53 = sub_21CB83A94();
  (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
  v81 = v48;
  v82 = v50;
  swift_getOpaqueTypeConformance2();
  v54 = v72;
  v55 = v69;
  sub_21CB84664();
  sub_21C74A72C(v31, v33, v23);

  sub_21C6EA794(v52, &qword_27CDEE080, &qword_21CBD0220);
  (*(v70 + 8))(v51, v55);
  v56 = v73;
  sub_21CB24280(v76, v73, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  v57 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v58 = swift_allocObject();
  sub_21CB24EE8(v56, v58 + v57, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F40, &unk_21CBCA9B0);
  v60 = (v54 + *(result + 36));
  *v60 = 0;
  v60[1] = 0;
  v60[2] = sub_21CB251A0;
  v60[3] = v58;
  return result;
}

uint64_t sub_21CB23D00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1610, &unk_21CBB1810);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-v4];
  v6 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  v7 = (a1 + *(v6 + 28));
  v8 = *v7;
  v9 = *(v7 + 2);
  *&v19[24] = v8;
  v20 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D54();
  v10 = objc_allocWithZone(MEMORY[0x277D49B78]);
  v11 = sub_21CB85584();

  v12 = [v10 initWithUserProvidedString_];

  v13 = a1 + *(v6 + 24);
  v15 = *v13;
  v14 = *(v13 + 8);
  if (v12)
  {
    *v5 = v12;
    swift_storeEnumTagMultiPayload();
    v16 = v12;
    v15(v5);
  }

  else
  {
    v17 = sub_21CB80BE4();
    (*(*(v17 - 8) + 56))(v5, 2, 3, v17);
    swift_storeEnumTagMultiPayload();
    v15(v5);
  }

  return sub_21C6EA794(v5, &qword_27CDF1610, &unk_21CBB1810);
}

uint64_t sub_21CB23EF8(uint64_t a1)
{
  v2 = [objc_opt_self() authorizationStatusForMediaType_] - 1;
  v3 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  if (v2 > 1)
  {
    v4 = *(v3 + 40);
  }

  else
  {
    v4 = *(v3 + 44);
  }

  v5 = (a1 + v4);
  v7 = *v5;
  v8 = *(v5 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21CB23FA4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21CB240E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21CB24208(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0) + 28));
  v3 = *v1;
  v4 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  return sub_21CB84D64();
}

uint64_t sub_21CB24280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB242E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_21CB209F0(a1);
}

uint64_t sub_21CB2435C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_21CB213A4(a1, a2);
}

uint64_t sub_21CB24424@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = *(type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CB21BDC(v4, a1);
}

uint64_t sub_21CB24508(uint64_t a1)
{
  v3 = *(type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CB21D3C(a1, v4);
}

uint64_t objectdestroy_41Tm()
{
  v1 = v0;
  v2 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = sub_21CB80BE4();
  v7 = *(v6 - 8);
  v80 = *(v7 + 80);
  v81 = *(v7 + 64);
  v8 = (v0 + v4);
  v9 = *v8;

  v10 = *(v8 + 1);

  v11 = &v8[v2[5]];
  v12 = type metadata accessor for PMAccount(0);
  if ((*(*(v12 - 1) + 48))(v11, 1, v12))
  {
    goto LABEL_25;
  }

  v76 = v5;
  v77 = (v3 + 16) & ~v3;
  v78 = v6;
  v13 = *(v11 + 1);

  v79 = v11;
  v14 = &v11[v12[5]];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = *(v14 + 1);

  v17 = *(v14 + 3);

  v75 = v7;
  if (EnumCaseMultiPayload != 1)
  {
    v50 = *(v14 + 4);

    v51 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v52 = v51[7];
    v53 = sub_21CB85C04();
    v54 = *(v53 - 8);
    if (!(*(v54 + 48))(&v14[v52], 1, v53))
    {
      (*(v54 + 8))(&v14[v52], v53);
    }

    v55 = v51[8];
    v56 = sub_21CB85BB4();
    v57 = *(v56 - 8);
    if (!(*(v57 + 48))(&v14[v55], 1, v56))
    {
      (*(v57 + 8))(&v14[v55], v56);
    }

    v23 = v51[9];
    v24 = sub_21CB85C44();
    v25 = *(v24 - 8);
    v7 = v75;
    if ((*(v25 + 48))(&v14[v23], 1, v24))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v18 = *(v14 + 5);

  v19 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v20 = v19[7];
  v21 = sub_21CB85B74();
  (*(*(v21 - 8) + 8))(&v14[v20], v21);
  v22 = *&v14[v19[8] + 8];

  v23 = v19[9];
  v24 = sub_21CB85C44();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(&v14[v23], 1, v24))
  {
LABEL_4:
    (*(v25 + 8))(&v14[v23], v24);
  }

LABEL_5:
  v26 = &v79[v12[6]];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v74 = v3;
    v27 = *(v26 + 1);

    v28 = *(v26 + 3);

    v29 = *(v26 + 5);

    v30 = *(v26 + 7);

    v31 = type metadata accessor for PMAccount.MockData(0);
    v32 = v31[8];
    v33 = sub_21CB80DD4();
    v34 = *(v33 - 8);
    v35 = *(v34 + 48);
    if (!v35(&v26[v32], 1, v33))
    {
      (*(v34 + 8))(&v26[v32], v33);
    }

    v36 = *&v26[v31[9]];

    v37 = *&v26[v31[10] + 8];

    v38 = *&v26[v31[11] + 8];

    v39 = v31[12];
    if (!v35(&v26[v39], 1, v33))
    {
      (*(v34 + 8))(&v26[v39], v33);
    }

    v40 = v31[15];
    v41 = sub_21CB85BB4();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(&v26[v40], 1, v41))
    {
      (*(v42 + 8))(&v26[v40], v41);
    }

    v43 = v31[16];
    v44 = sub_21CB85C04();
    v45 = *(v44 - 8);
    v3 = v74;
    if (!(*(v45 + 48))(&v26[v43], 1, v44))
    {
      (*(v45 + 8))(&v26[v43], v44);
    }

    v46 = *&v26[v31[17] + 8];

    v47 = v31[18];
    v48 = sub_21CB85C44();
    v49 = *(v48 - 8);
    v7 = v75;
    if (!(*(v49 + 48))(&v26[v47], 1, v48))
    {
      (*(v49 + 8))(&v26[v47], v48);
    }
  }

  else
  {
  }

  v6 = v78;
  v58 = &v79[v12[7]];
  v5 = v76;
  v4 = v77;
  if (*(v58 + 1))
  {
  }

LABEL_25:
  v59 = *&v8[v2[6] + 8];

  v60 = &v8[v2[7]];
  v61 = *(v60 + 1);

  v62 = *(v60 + 2);

  v63 = *&v8[v2[8] + 8];

  v64 = &v8[v2[9]];
  if (*v64 >= 3uLL)
  {
  }

  v65 = *(v64 + 1);

  v66 = *&v8[v2[10] + 8];

  v67 = *&v8[v2[11] + 8];

  v68 = *&v8[v2[12] + 8];

  v69 = v2[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v70 = sub_21CB82484();
    (*(*(v70 - 8) + 8))(&v8[v69], v70);
  }

  else
  {
    v71 = *&v8[v69];
  }

  v72 = (v4 + v5 + v80) & ~v80;
  (*(v7 + 8))(v1 + v72, v6);

  return MEMORY[0x2821FE8E8](v1, v72 + v81, v3 | v80 | 7);
}

uint64_t sub_21CB24DE8(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_21CB80BE4() - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

void sub_21CB24EC8(id a1)
{
  if (a1 != 2)
  {
    sub_21CB24ED8(a1);
  }
}

void sub_21CB24ED8(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_21CB24EE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB24F50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CB2504C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_21C79B058(v2, v3, v4);
}

unint64_t sub_21CB250A0()
{
  result = qword_27CDF8F60;
  if (!qword_27CDF8F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8F50, &qword_21CBCA9F8);
    sub_21C853080();
    sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8F60);
  }

  return result;
}

uint64_t sub_21CB25158(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CB251B8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21CB25238(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_21CB25294(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21CB25304(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_21CB25ACC(v5, v7) & 1;
}

uint64_t sub_21CB2537C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21CB84BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_21CB85214();
  a2[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F68, &qword_21CBCAB50);
  sub_21CB25650(a1, (a2 + *(v10 + 44)));
  v11 = sub_21CB85244();
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F70, &qword_21CBCAB58) + 36));
  *v12 = v11;
  v12[1] = a1;

  v13 = sub_21CB85214();
  v15 = v14;
  sub_21CB84BB4();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v16 = sub_21CB84C64();

  (*(v5 + 8))(v8, v4);
  sub_21CB85384();
  v18 = v17;
  v20 = v19;
  LOBYTE(v41[0]) = 1;
  v21 = sub_21CB84AD4();
  KeyPath = swift_getKeyPath();
  v36 = v16;
  LOWORD(v37[0]) = 1;
  *(v37 + 2) = v34;
  WORD3(v37[0]) = v35;
  __asm { FMOV            V0.2D, #0.5 }

  v32 = _Q0;
  *(v37 + 8) = _Q0;
  *(&v37[1] + 1) = v18;
  *&v38 = v20;
  *(&v38 + 1) = KeyPath;
  *&v39 = v21;
  *(&v39 + 1) = v13;
  v40 = v15;
  v28 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F78, &qword_21CBCAB90) + 36);
  v29 = v38;
  *(v28 + 2) = v37[1];
  *(v28 + 3) = v29;
  *(v28 + 4) = v39;
  *(v28 + 10) = v40;
  v30 = v37[0];
  *v28 = v36;
  *(v28 + 1) = v30;
  v41[0] = v16;
  v41[1] = 0;
  v42 = 1;
  v44 = v35;
  v43 = v34;
  v45 = v32;
  v46 = v18;
  v47 = v20;
  v48 = KeyPath;
  v49 = v21;
  v50 = v13;
  v51 = v15;
  sub_21C6EDBAC(&v36, &v33, &qword_27CDF8F80, &qword_21CBCAB98);
  return sub_21C6EA794(v41, &qword_27CDF8F80, &qword_21CBCAB98);
}

uint64_t sub_21CB25650@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F88, &qword_21CBCABA0);
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v34);
  v6 = (&v34 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F90, &qword_21CBCABA8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = sub_21CB82FF4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - v20;
  if (a1)
  {
    v22 = a1;
  }

  else
  {
    v23 = [objc_opt_self() darkGrayColor];
    v22 = sub_21CB84A24();
  }

  sub_21CB82FE4();
  (*(v15 + 16))(v18, v21, v14);
  sub_21CB25A04();
  v24 = sub_21CB82394();
  (*(v15 + 8))(v21, v14);
  if (a1)
  {
    sub_21CB84A94();
    v25 = sub_21CB84B04();

    v26 = v34;
    v27 = *(v34 + 36);
    v28 = *MEMORY[0x277CE13B0];
    v29 = sub_21CB85284();
    (*(*(v29 - 8) + 104))(v6 + v27, v28, v29);
    *v6 = v25;
    sub_21CB25A5C(v6, v13);
    v30 = 0;
  }

  else
  {
    v30 = 1;
    v26 = v34;
  }

  (*(v3 + 56))(v13, v30, 1, v26);
  sub_21C6EDBAC(v13, v10, &qword_27CDF8F90, &qword_21CBCABA8);
  v31 = v35;
  *v35 = v22;
  v31[1] = v24;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8FA0, &qword_21CBCABB0);
  sub_21C6EDBAC(v10, v31 + *(v32 + 48), &qword_27CDF8F90, &qword_21CBCABA8);

  sub_21C6EA794(v13, &qword_27CDF8F90, &qword_21CBCABA8);
  sub_21C6EA794(v10, &qword_27CDF8F90, &qword_21CBCABA8);
}

unint64_t sub_21CB25A04()
{
  result = qword_27CDF8F98;
  if (!qword_27CDF8F98)
  {
    sub_21CB82FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8F98);
  }

  return result;
}

uint64_t sub_21CB25A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F88, &qword_21CBCABA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CB25ACC(double *a1, double *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  if (a1[3])
  {
    if ((a2[3] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v2 = 0;
    if (a2[3])
    {
      return v2;
    }

    if (a1[1] != a2[1] || a1[2] != a2[2])
    {
      return v2;
    }
  }

  v2 = *(a2 + 40);
  if (a1[5])
  {
    if (!*(a2 + 40))
    {
      return v2;
    }
  }

  else
  {
    if (a1[4] != a2[4])
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v5 = *(a1 + 6);
  v6 = *(a2 + 6);
  v2 = (v5 | v6) == 0;
  if (!v5 || !v6)
  {
    return v2;
  }

  v7 = *(a2 + 6);

  v9 = sub_21CB84A54();
  sub_21CB25BA8(a2);
  return v9 & 1;
}

unint64_t sub_21CB25BD8()
{
  result = qword_27CDF8FA8;
  if (!qword_27CDF8FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8F78, &qword_21CBCAB90);
    sub_21CB25C90();
    sub_21C6EADEC(&qword_27CDF8FD8, &qword_27CDF8F80, &qword_21CBCAB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8FA8);
  }

  return result;
}

unint64_t sub_21CB25C90()
{
  result = qword_27CDF8FB0;
  if (!qword_27CDF8FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8F70, &qword_21CBCAB58);
    sub_21C6EADEC(&qword_27CDF8FB8, &qword_27CDF8FC0, &qword_21CBCABB8);
    sub_21C6EADEC(&qword_27CDF8FC8, &qword_27CDF8FD0, &unk_21CBCABC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8FB0);
  }

  return result;
}

uint64_t sub_21CB25D9C@<X0>(_OWORD *a1@<X8>)
{
  result = type metadata accessor for PMSharingGroup();
  v4 = *(v1 + *(result + 24));
  v5 = *(v4 + 16);
  v6 = 0uLL;
  if (v5)
  {
    v7 = (v4 + 32);
    while (1)
    {
      v8 = v7[3];
      v9 = v7[4];
      v10 = v7[6];
      v32 = v7[5];
      v11 = v7[1];
      v12 = v7[2];
      v27 = *v7;
      v28 = v11;
      v33 = v10;
      v30 = v8;
      v31 = v9;
      v29 = v12;
      if (BYTE1(v32) == 2)
      {
        break;
      }

      v7 += 7;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    v24 = v32;
    v25 = v33;
    v22 = v30;
    v23 = v31;
    v20 = v28;
    v21 = v29;
    v19 = v27;
    result = sub_21C7A33F0(&v27, v26);
    v17 = v24;
    v18 = v25;
    v15 = v22;
    v16 = v23;
    v13 = v20;
    v14 = v21;
    v6 = v19;
  }

  else
  {
LABEL_5:
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  *a1 = v6;
  a1[1] = v13;
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v16;
  a1[5] = v17;
  a1[6] = v18;
  return result;
}

uint64_t sub_21CB25E88@<X0>(_OWORD *a1@<X8>)
{
  result = type metadata accessor for PMSharingGroup();
  v4 = *(v1 + *(result + 24));
  v5 = *(v4 + 16);
  v6 = 0uLL;
  if (v5)
  {
    v7 = (v4 + 32);
    while (1)
    {
      v8 = v7[3];
      v9 = v7[4];
      v10 = v7[6];
      v32 = v7[5];
      v11 = v7[1];
      v12 = v7[2];
      v27 = *v7;
      v28 = v11;
      v33 = v10;
      v30 = v8;
      v31 = v9;
      v29 = v12;
      if (v32 == 1)
      {
        break;
      }

      v7 += 7;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    v24 = v32;
    v25 = v33;
    v22 = v30;
    v23 = v31;
    v20 = v28;
    v21 = v29;
    v19 = v27;
    result = sub_21C7A33F0(&v27, v26);
    v17 = v24;
    v18 = v25;
    v15 = v22;
    v16 = v23;
    v13 = v20;
    v14 = v21;
    v6 = v19;
  }

  else
  {
LABEL_5:
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  *a1 = v6;
  a1[1] = v13;
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v16;
  a1[5] = v17;
  a1[6] = v18;
  return result;
}

uint64_t sub_21CB25F74()
{
  v1 = v0;
  sub_21CB85C44();
  sub_21CB26618(&qword_27CDF8950, MEMORY[0x277D49978]);
  sub_21CB85494();
  v2 = type metadata accessor for PMSharingGroup();
  v3 = (v0 + v2[5]);
  v4 = *v3;
  v5 = v3[1];
  sub_21CB854C4();
  v6 = *(v0 + v2[6]);
  MEMORY[0x21CF15F90](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      v10 = v8[2];
      v11 = *v8;
      v25 = v8[1];
      v26 = v10;
      v24 = v11;
      v12 = v8[3];
      v13 = v8[4];
      v14 = v8[6];
      v29 = v8[5];
      v30 = v14;
      v27 = v12;
      v28 = v13;
      if (*(&v11 + 1))
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v24, v23);
        sub_21CB854C4();
        if (*(&v25 + 1))
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v24, v23);
        if (*(&v25 + 1))
        {
LABEL_7:
          sub_21CB864A4();
          sub_21CB854C4();
          goto LABEL_10;
        }
      }

      sub_21CB864A4();
LABEL_10:
      sub_21CB854C4();
      sub_21CB854C4();
      sub_21CB854C4();
      v15 = v30;
      v16 = BYTE2(v29);
      v17 = BYTE1(v29);
      sub_21CB864A4();
      MEMORY[0x21CF15F90](v17);
      MEMORY[0x21CF15F90](v16);
      if (v15)
      {
        sub_21CB864A4();
        sub_21CB854C4();
        v18 = *(&v30 + 1);
        if (!*(&v30 + 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_21CB864A4();
        v18 = *(&v30 + 1);
        if (!*(&v30 + 1))
        {
LABEL_14:
          sub_21CB864A4();
          goto LABEL_4;
        }
      }

      sub_21CB864A4();
      v9 = v18;
      sub_21CB85DE4();

LABEL_4:
      sub_21C7A344C(&v24);
      v8 += 7;
      --v7;
    }

    while (v7);
  }

  v19 = (v1 + v2[7]);
  v20 = *v19;
  v21 = v19[1];
  return sub_21CB854C4();
}

uint64_t sub_21CB26278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v12 = sub_21CB81004();
  v14 = v13;
  result = (*(v8 + 8))(v11, v7);
  *a4 = v12;
  *a5 = v14;
  return result;
}

uint64_t sub_21CB26380()
{
  sub_21CB86484();
  sub_21CB25F74();
  return sub_21CB864D4();
}

uint64_t sub_21CB263C4()
{
  sub_21CB86484();
  sub_21CB25F74();
  return sub_21CB864D4();
}

uint64_t sub_21CB26494(uint64_t a1, uint64_t a2)
{
  sub_21CB85C44();
  sub_21CB26618(&qword_27CDECD58, MEMORY[0x277D49978]);
  sub_21CB857F4();
  sub_21CB857F4();
  if (v20 == v18 && v21 == v19)
  {
  }

  else
  {
    v5 = sub_21CB86344();

    if ((v5 & 1) == 0)
    {
LABEL_17:
      v16 = 0;
      return v16 & 1;
    }
  }

  v6 = type metadata accessor for PMSharingGroup();
  v7 = v6[5];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_21CB86344() & 1) == 0 || (sub_21C967680(*(a1 + v6[6]), *(a2 + v6[6])) & 1) == 0)
  {
    goto LABEL_17;
  }

  v12 = v6[7];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if (v13 == *v15 && v14 == v15[1])
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_21CB86344();
  }

  return v16 & 1;
}

uint64_t sub_21CB26618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CB26660(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_21CB266BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double sub_21CB2673C@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_21CB84BD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21CB268F0(a1, a2);
  (*(v7 + 104))(v10, *MEMORY[0x277CE0FE0], v6);
  v11 = sub_21CB84C64();

  (*(v7 + 8))(v10, v6);
  sub_21CB85214();
  sub_21CB82374();
  v17 = 1;
  *&v16[8] = v18;
  *&v16[24] = v19;
  *&v16[40] = v20;
  v12 = sub_21CB85214();
  v13 = *&v16[18];
  *(a3 + 18) = *&v16[2];
  *a3 = v11;
  *(a3 + 8) = 0;
  *(a3 + 16) = 257;
  *(a3 + 34) = v13;
  result = *&v16[34];
  *(a3 + 50) = *&v16[34];
  *(a3 + 64) = *&v16[48];
  *(a3 + 72) = v12;
  *(a3 + 80) = v15;
  return result;
}

uint64_t sub_21CB268F0(uint64_t a1, char a2)
{
  v4 = sub_21CB84BE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a1 && (swift_getKeyPath(), v16 = a1, sub_21CA42C34(), sub_21CB810D4(), , (v9 = *(a1 + 144)) != 0))
    {
      v10 = v9;
      sub_21CB84BA4();
    }

    else
    {
      sub_21CB84BB4();
    }

    (*(v5 + 104))(v8, *MEMORY[0x277CE0FF0], v4);
    v14 = sub_21CB84BF4();

    (*(v5 + 8))(v8, v4);
    return v14;
  }

  else if (a1 && (swift_getKeyPath(), v16 = a1, sub_21CA42C34(), sub_21CB810D4(), , (v11 = *(a1 + 144)) != 0))
  {
    v12 = v11;
    return sub_21CB84BA4();
  }

  else
  {
    return sub_21CB84BB4();
  }
}

unint64_t sub_21CB26AFC()
{
  result = qword_27CDF8FF8;
  if (!qword_27CDF8FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9000, &qword_21CBCAD40);
    sub_21C738A18();
    sub_21CB26B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8FF8);
  }

  return result;
}

unint64_t sub_21CB26B88()
{
  result = qword_27CDF9008;
  if (!qword_27CDF9008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDF9010, &qword_21CBCAD48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9008);
  }

  return result;
}

uint64_t Date.stringUsingHistoryItemAutoFillViewHostingFormat.getter()
{
  v0 = sub_21CB81024();
  v34 = *(v0 - 8);
  v35 = v0;
  v1 = *(v34 + 64);
  MEMORY[0x28223BE20](v0);
  v33 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21CB80F14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_21CB80F24();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v32 - v14;
  v16 = sub_21CB80DD4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v36 = &v32 - v22;
  sub_21CB80F04();
  (*(v4 + 104))(v7, *MEMORY[0x277CC99A0], v3);
  sub_21CB80DA4();
  sub_21CB80EF4();
  v38 = *(v17 + 8);
  v38(v20, v16);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v37);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_21C6EA794(v15, &unk_27CDED250, &qword_21CBA64C0);
    v23 = v38;
  }

  else
  {
    v24 = v36;
    (*(v17 + 32))(v36, v15, v16);
    if (sub_21CB80D34())
    {
      v25 = v33;
      sub_21CB81014();
      v26 = sub_21CB81004();
      (*(v34 + 8))(v25, v35);
      v38(v24, v16);
      return v26;
    }

    v23 = v38;
    v38(v24, v16);
  }

  if (qword_27CDEA4A8 != -1)
  {
    swift_once();
  }

  v27 = qword_27CDF90C8;
  v28 = sub_21CB80D24();
  sub_21CB80DA4();
  v29 = sub_21CB80D24();
  v23(v20, v16);
  v30 = [v27 localizedStringForDate:v28 relativeToDate:v29];

  v26 = sub_21CB855C4();
  return v26;
}

uint64_t sub_21CB27164@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF90D0, &qword_21CBCAEB0);
  v8 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v10 = v35 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF90D8, &qword_21CBCAEB8);
  v11 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v13 = v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF90E0, &qword_21CBCAEC0);
  v36 = *(v14 - 8);
  v37 = v14;
  v15 = *(v36 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v35 - v16;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF90E8, &qword_21CBCAEC8);
  v18 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v20 = v35 - v19;
  v21 = sub_21C805FA0(a1);
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = swift_allocObject();
    v35[1] = v35;
    v25[2] = a1;
    v25[3] = a2;
    v25[4] = a3;
    v25[5] = v23;
    v25[6] = v24;
    MEMORY[0x28223BE20](v25);
    v35[-4] = a1;
    v35[-3] = a2;
    v35[-2] = a3;
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9118, &qword_21CBCAED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9150, &qword_21CBCAEF0);
    sub_21CB2A214();
    v35[2] = a4;
    sub_21C6EADEC(&qword_27CDF9158, &qword_27CDF9150, &qword_21CBCAEF0);
    sub_21CB82814();
    sub_21C6EADEC(&qword_27CDF90F8, &qword_27CDF90E0, &qword_21CBCAEC0);
    sub_21CB2A134();
    v26 = v37;
    sub_21CB84504();
    (*(v36 + 8))(v17, v26);
    v27 = sub_21CB832C4();
    v28 = &v20[*(v38 + 36)];
    *v28 = v27;
    v28[1] = sub_21CB2AD5C;
    v28[2] = 0;
    v29 = &qword_27CDF90E8;
    v30 = &qword_21CBCAEC8;
    sub_21C6EDBAC(v20, v13, &qword_27CDF90E8, &qword_21CBCAEC8);
    swift_storeEnumTagMultiPayload();
    sub_21CB2A024();
    sub_21CB2A188();
    sub_21CB83494();
    v31 = v20;
  }

  else
  {
    sub_21CB280D8(a1, a2, a3, v10);
    v32 = sub_21CB832C4();
    v33 = &v10[*(v40 + 36)];
    *v33 = v32;
    v33[1] = sub_21CB2AD5C;
    v33[2] = 0;
    v29 = &qword_27CDF90D0;
    v30 = &qword_21CBCAEB0;
    sub_21C6EDBAC(v10, v13, &qword_27CDF90D0, &qword_21CBCAEB0);
    swift_storeEnumTagMultiPayload();
    sub_21CB2A024();
    sub_21CB2A188();
    sub_21CB83494();
    v31 = v10;
  }

  return sub_21C6EA794(v31, v29, v30);
}

uint64_t sub_21CB2760C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v57 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9160, &qword_21CBCAEF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v58 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v56 = &v50 - v15;
  v16 = sub_21CB81024();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v52 = a1;
  if (swift_dynamicCastObjCClass())
  {
    sub_21CB81014();
    sub_21CB81004();
    (*(v17 + 8))(v20, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_21CBA0690;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = sub_21C7C0050();
    *(v21 + 32) = a2;
    *(v21 + 40) = a3;

    v22 = sub_21CB85594();
    v23 = a5;
    v25 = v24;

    v65 = v22;
    v66 = v25;
    sub_21C71F3FC();
    v26 = sub_21CB84054();
    v55 = v27;
    LOBYTE(v25) = v28;
    v54 = v29;
    KeyPath = swift_getKeyPath();
    LOBYTE(v40) = sub_21CB83D44();
    sub_21CB81F24();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = v25 & 1;
    a5 = v23;
    LOBYTE(v65) = v38;
    LOBYTE(v59) = 0;
    v39 = v38;
    v40 = v40;
  }

  else
  {
    v26 = 0;
    v55 = 0;
    v54 = 0;
    KeyPath = 0;
    v40 = 0;
    v39 = 0;
    v31 = 0;
    v33 = 0;
    v35 = 0;
    v37 = 0;
  }

  v51 = v39;
  v41 = v56;
  sub_21CB27AB4(v57, a5, v56);
  v42 = v58;
  sub_21C6EDBAC(v41, v58, &qword_27CDF9160, &qword_21CBCAEF8);
  *&v59 = v26;
  v43 = v55;
  *(&v59 + 1) = v55;
  *&v60 = v39;
  v44 = v54;
  *(&v60 + 1) = v54;
  v45 = KeyPath;
  v61 = KeyPath;
  v62 = 0;
  *&v63 = v40;
  *(&v63 + 1) = v31;
  *v64 = v33;
  *&v64[8] = v35;
  *&v64[16] = v37;
  v64[24] = 0;
  v46 = v63;
  a6[2] = KeyPath;
  a6[3] = v46;
  a6[4] = *v64;
  *(a6 + 73) = *&v64[9];
  v47 = v60;
  *a6 = v59;
  a6[1] = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9168, &qword_21CBCAF00);
  sub_21C6EDBAC(v42, a6 + *(v48 + 48), &qword_27CDF9160, &qword_21CBCAEF8);
  sub_21C6EDBAC(&v59, &v65, &qword_27CDF9170, &unk_21CBCAF08);
  sub_21C6EA794(v41, &qword_27CDF9160, &qword_21CBCAEF8);
  sub_21C6EA794(v42, &qword_27CDF9160, &qword_21CBCAEF8);
  v65 = v26;
  v66 = v43;
  v67 = v51;
  v68 = v44;
  v69 = v45;
  v70 = 0;
  v71 = v40;
  v72 = v31;
  v73 = v33;
  v74 = v35;
  v75 = v37;
  v76 = 0;
  return sub_21C6EA794(&v65, &qword_27CDF9170, &unk_21CBCAF08);
}

uint64_t sub_21CB27AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v61 = sub_21CB81024();
  v60 = *(v61 - 8);
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v57 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v56 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9178, &qword_21CBCAF48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9180, &qword_21CBCAF50);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9188, &qword_21CBCAF58);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v53 - v20;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9190, &qword_21CBCAF60);
  v59 = *(v58 - 8);
  v22 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  v55 = &v53 - v23;
  *v12 = sub_21CB83074();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v24 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9198, &qword_21CBCAF68) + 44)];
  v54 = a1;
  v53 = a2;
  sub_21CB28570(a1, a2);
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21C716934(v12, v17, &qword_27CDF9178, &qword_21CBCAF48);
  v25 = &v17[*(v14 + 44)];
  v26 = v76;
  *(v25 + 4) = v75;
  *(v25 + 5) = v26;
  *(v25 + 6) = v77;
  v27 = v72;
  *v25 = v71;
  *(v25 + 1) = v27;
  v28 = v74;
  *(v25 + 2) = v73;
  *(v25 + 3) = v28;
  LOBYTE(v12) = sub_21CB83D44();
  sub_21CB81F24();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_21C716934(v17, v21, &qword_27CDF9180, &qword_21CBCAF50);
  v37 = &v21[*(v18 + 36)];
  *v37 = v12;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v63 = a1;
  v64 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v39 = sub_21CB2A58C();
  v40 = sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
  sub_21CB84154();
  sub_21C6EA794(v21, &qword_27CDF9188, &qword_21CBCAF58);
  v41 = v56;
  sub_21CB81014();
  v42 = v57;
  sub_21CB81014();
  v43 = sub_21CB80FF4();
  v45 = v44;
  v46 = *(v60 + 8);
  v47 = v42;
  v48 = v61;
  v46(v47, v61);
  v46(v41, v48);
  v69 = v43;
  v70 = v45;
  v49 = swift_allocObject();
  *(v49 + 16) = v54;
  *(v49 + 24) = v53;

  v65 = v18;
  v66 = v38;
  v67 = v39;
  v68 = v40;
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  v50 = v58;
  v51 = v55;
  sub_21CB84474();

  return (*(v59 + 8))(v51, v50);
}

uint64_t sub_21CB280D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v7 = sub_21CB83A74();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9138, &qword_21CBCAEE0);
  v43 = *(v15 - 8);
  v44 = v15;
  v16 = *(v43 + 64);
  MEMORY[0x28223BE20](v15);
  v42 = &v41 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9128, &qword_21CBCAED8);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  sub_21CB83A64();
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = a3;
  (*(v8 + 16))(v11, v14, v7);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_21CB2A7E0;
  *(v24 + 24) = v23;
  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9148, &qword_21CBCAEE8);
  sub_21CB2AD14(&qword_27CDF91C0, MEMORY[0x277CE0818]);
  sub_21C6EADEC(&qword_27CDF9140, &qword_27CDF9148, &qword_21CBCAEE8);
  v25 = v42;
  sub_21CB82304();
  (*(v8 + 8))(v14, v7);
  sub_21CB85224();
  sub_21CB82AC4();
  (*(v43 + 32))(v22, v25, v44);
  v26 = &v22[*(v19 + 44)];
  v27 = v51;
  *(v26 + 4) = v50;
  *(v26 + 5) = v27;
  *(v26 + 6) = v52;
  v28 = v47;
  *v26 = v46;
  *(v26 + 1) = v28;
  v29 = v49;
  *(v26 + 2) = v48;
  *(v26 + 3) = v29;
  LOBYTE(a2) = sub_21CB83D44();
  sub_21CB81F24();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v45;
  sub_21C716934(v22, v45, &qword_27CDF9128, &qword_21CBCAED8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9118, &qword_21CBCAED0);
  v40 = v38 + *(result + 36);
  *v40 = a2;
  *(v40 + 8) = v31;
  *(v40 + 16) = v33;
  *(v40 + 24) = v35;
  *(v40 + 32) = v37;
  *(v40 + 40) = 0;
  return result;
}

uint64_t sub_21CB28514()
{
  if (qword_27CDEA408 != -1)
  {
    swift_once();
  }

  return MEMORY[0x21CF122A0](qword_27CE185D0);
}

uint64_t sub_21CB28570(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  sub_21CB81014();
  sub_21CB81014();
  v12 = sub_21CB80FF4();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v11, v4);
  v16 = sub_21CB85214();
  v18 = v17;
  LOBYTE(v22) = 0;
  sub_21CB84D44();
  *&v22 = a1;
  *(&v22 + 1) = a2;
  LOBYTE(v23) = 1;
  *(&v23 + 1) = *v29;
  DWORD1(v23) = *&v29[3];
  *(&v23 + 1) = v12;
  *&v24 = v14;
  BYTE8(v24) = 0;
  *(&v24 + 9) = *v28;
  HIDWORD(v24) = *&v28[3];
  *&v25 = v16;
  *(&v25 + 1) = v18;
  LOBYTE(v26) = v30[0];
  DWORD1(v26) = *&v27[3];
  *(&v26 + 1) = *v27;
  *(&v26 + 1) = *(&v30[0] + 1);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  sub_21CB2A71C();
  sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
  sub_21CB848F4();

  v30[2] = v24;
  v30[3] = v25;
  v30[4] = v26;
  v30[0] = v22;
  v30[1] = v23;
  return sub_21CB2A770(v30);
}

uint64_t sub_21CB2886C()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  sub_21CB81014();
  sub_21CB81014();
  v8 = sub_21CB80FF4();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v7, v0);
  v13[0] = v8;
  v13[1] = v10;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21CB28A0C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);

  return sub_21CB84DA4();
}

uint64_t sub_21CB28AE8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  sub_21CB81014();
  sub_21CB81014();
  v8 = sub_21CB80FF4();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v7, v0);
  v13[0] = v8;
  v13[1] = v10;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

void sub_21CB28C88(uint64_t a1, uint64_t a2)
{
  if (qword_27CDEA480 != -1)
  {
    v3 = a1;
    v4 = a2;
    swift_once();
    a1 = v3;
    a2 = v4;
  }

  v2 = *(qword_27CE18710 + 16);
  sub_21CADAA84(a1, a2, 1);
}

uint64_t sub_21CB28CFC@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_21C80620C(a1);
  v6 = v5;
  v7 = sub_21C806B18(a1);
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9148, &qword_21CBCAEE8) + 40);
  sub_21C806664(a1);
  sub_21CB84C14();
  sub_21CB85214();
  sub_21CB82374();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF09A8, &unk_21CBAF7E0);
  sub_21C8FD198();
  sub_21CB846B4();

  v10 = sub_21CB84AD4();
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF91D8, &qword_21CBCAF88) + 36)] = v10;
  LOBYTE(v10) = sub_21CB83CE4();
  sub_21CB81F24();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF91E0, &qword_21CBCAF90) + 36)];
  *v19 = v10;
  *(v19 + 1) = v12;
  *(v19 + 2) = v14;
  *(v19 + 3) = v16;
  *(v19 + 4) = v18;
  v19[40] = 0;
  v20 = sub_21C8068C8(a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF91E8, &qword_21CBCAF98);
  v22 = &v9[*(result + 36)];
  *v22 = v20;
  *(v22 + 4) = 256;
  return result;
}

uint64_t sub_21CB28ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = sub_21CB83C34();
  v96 = *(v3 - 8);
  v97 = v3;
  v4 = *(v96 + 64);
  MEMORY[0x28223BE20](v3);
  v69 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9208, &qword_21CBCB000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v98 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v100 = &v69 - v10;
  v11 = sub_21CB83874();
  v94 = *(v11 - 8);
  v95 = v11;
  v12 = *(v94 + 64);
  MEMORY[0x28223BE20](v11);
  v93 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21CB83A34();
  v90 = *(v14 - 8);
  v91 = v14;
  v15 = *(v90 + 64);
  MEMORY[0x28223BE20](v14);
  v89 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_21CB82A54();
  v86 = *(v85 - 8);
  v17 = *(v86 + 64);
  MEMORY[0x28223BE20](v85);
  v81 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21CB83C54();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v76 = v21;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9210, &qword_21CBCB008);
  v82 = *(v80 - 8);
  v22 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  v24 = &v69 - v23;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9218, &qword_21CBCB010);
  v84 = *(v83 - 8);
  v25 = *(v84 + 64);
  MEMORY[0x28223BE20](v83);
  v27 = &v69 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9220, &qword_21CBCB018);
  v29 = *(v28 - 8);
  v87 = v28;
  v88 = v29;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v79 = &v69 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9228, &qword_21CBCB020);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v92 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v35);
  v78 = &v69 - v37;
  v77 = *(v20 + 16);
  v71 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a1;
  v72 = v19;
  v77(v71, a1, v19, v36);
  v73 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v38 = v73;
  v39 = swift_allocObject();
  v40 = *(v20 + 32);
  v74 = v20 + 32;
  v75 = v40;
  v40(v39 + v38, &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v101 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9230, &qword_21CBCB028);
  sub_21CB2A8B8();
  sub_21CB84DA4();
  v41 = v81;
  sub_21CB82A44();
  v42 = sub_21C6EADEC(&qword_27CDF9250, &qword_27CDF9210, &qword_21CBCB008);
  v43 = sub_21CB2AD14(&qword_27CDED508, MEMORY[0x277CDDB18]);
  v44 = v80;
  v45 = v85;
  sub_21CB84124();
  (*(v86 + 8))(v41, v45);
  (*(v82 + 8))(v24, v44);
  v46 = v89;
  sub_21CB83A24();
  v102 = v44;
  v103 = v45;
  v104 = v42;
  v105 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v79;
  v49 = v83;
  sub_21CB844F4();
  (*(v90 + 8))(v46, v91);
  v50 = v49;
  (*(v84 + 8))(v27, v49);
  v51 = v71;
  v52 = v72;
  (v77)(v71, v70, v72);
  v53 = v78;
  v54 = v73;
  v55 = swift_allocObject() + v54;
  v56 = v96;
  v75(v55, v51, v52);
  v57 = v93;
  sub_21CB83864();
  v102 = v50;
  v103 = OpaqueTypeConformance2;
  v58 = v97;
  swift_getOpaqueTypeConformance2();
  v59 = v87;
  sub_21CB84484();

  (*(v94 + 8))(v57, v95);
  (*(v88 + 8))(v48, v59);
  v60 = sub_21CB83C04();
  v61 = 1;
  if (v60)
  {
    v62 = v69;
    sub_21CB83C44();
    (*(v56 + 32))(v100, v62, v58);
    v61 = 0;
  }

  v63 = v100;
  (*(v56 + 56))(v100, v61, 1, v58);
  v64 = v92;
  sub_21C6EDBAC(v53, v92, &qword_27CDF9228, &qword_21CBCB020);
  v65 = v98;
  sub_21C6EDBAC(v63, v98, &qword_27CDF9208, &qword_21CBCB000);
  v66 = v99;
  sub_21C6EDBAC(v64, v99, &qword_27CDF9228, &qword_21CBCB020);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9258, &qword_21CBCB040);
  sub_21C6EDBAC(v65, v66 + *(v67 + 48), &qword_27CDF9208, &qword_21CBCB000);
  sub_21C6EA794(v63, &qword_27CDF9208, &qword_21CBCB000);
  sub_21C6EA794(v53, &qword_27CDF9228, &qword_21CBCB020);
  sub_21C6EA794(v65, &qword_27CDF9208, &qword_21CBCB000);
  return sub_21C6EA794(v64, &qword_27CDF9228, &qword_21CBCB020);
}

uint64_t sub_21CB29908@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21CB83074();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9260, &qword_21CBCB048);
  sub_21CB2997C((a1 + *(v2 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9230, &qword_21CBCB028);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_21CB2997C@<X0>(char *a1@<X8>)
{
  v60 = a1;
  v1 = sub_21CB83094();
  v2 = *(v1 - 8);
  v58 = v1;
  v59 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9268, &qword_21CBCB050);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9270, &qword_21CBCB058);
  v16 = *(v15 - 8);
  v56 = v15;
  v57 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9278, &unk_21CBCB060);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v55 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v53 = &v49 - v24;
  v54 = sub_21CB83C14();
  v50 = *(v54 - 8);
  v25 = v50;
  v26 = *(v50 + 64);
  MEMORY[0x28223BE20](v54);
  v52 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v51 = &v49 - v29;
  sub_21CB83C24();
  sub_21CB83C04();
  v61 = sub_21CB2AAB8();
  v62 = v30;
  sub_21CB83C04();
  sub_21C71F3FC();
  sub_21CB84CB4();
  v31 = sub_21CB84B34();
  (*(v7 + 32))(v14, v10, v6);
  *&v14[*(v11 + 36)] = v31;
  v32 = v5;
  sub_21CB83084();
  v33 = sub_21CB2AC30();
  v34 = sub_21CB2AD14(&qword_27CDEC0A8, MEMORY[0x277CDDE78]);
  v35 = v58;
  sub_21CB840E4();
  (*(v59 + 8))(v32, v35);
  sub_21C6EA794(v14, &qword_27CDF9268, &qword_21CBCB050);
  v61 = v11;
  v62 = v35;
  v63 = v33;
  v64 = v34;
  swift_getOpaqueTypeConformance2();
  v36 = v53;
  v37 = v56;
  sub_21CB84494();
  (*(v57 + 8))(v19, v37);
  v38 = *(v25 + 16);
  v39 = v51;
  v40 = v52;
  v41 = v54;
  v38(v52, v51, v54);
  LOBYTE(v61) = 1;
  v42 = v55;
  sub_21C6EDBAC(v36, v55, &qword_27CDF9278, &unk_21CBCB060);
  v43 = v60;
  v38(v60, v40, v41);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9288, &qword_21CBCB070);
  v45 = &v43[*(v44 + 48)];
  v46 = v61;
  *v45 = 0;
  v45[8] = v46;
  sub_21C6EDBAC(v42, &v43[*(v44 + 64)], &qword_27CDF9278, &unk_21CBCB060);
  sub_21C6EA794(v36, &qword_27CDF9278, &unk_21CBCB060);
  v47 = *(v50 + 8);
  v47(v39, v41);
  sub_21C6EA794(v42, &qword_27CDF9278, &unk_21CBCB060);
  return (v47)(v40, v41);
}

uint64_t sub_21CB29F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21CB832F4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9200, &qword_21CBCAFF8);
  return sub_21CB28ECC(a1, a2 + *(v4 + 44));
}

id sub_21CB29FA8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAC78]) init];
  result = [v0 setDateTimeStyle_];
  qword_27CDF90C8 = v0;
  return result;
}

unint64_t sub_21CB2A024()
{
  result = qword_27CDF90F0;
  if (!qword_27CDF90F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF90E8, &qword_21CBCAEC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF90E0, &qword_21CBCAEC0);
    sub_21C6EADEC(&qword_27CDF90F8, &qword_27CDF90E0, &qword_21CBCAEC0);
    sub_21CB2A134();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF90F0);
  }

  return result;
}

unint64_t sub_21CB2A134()
{
  result = qword_27CDF9100;
  if (!qword_27CDF9100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9100);
  }

  return result;
}

unint64_t sub_21CB2A188()
{
  result = qword_27CDF9108;
  if (!qword_27CDF9108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF90D0, &qword_21CBCAEB0);
    sub_21CB2A214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9108);
  }

  return result;
}

unint64_t sub_21CB2A214()
{
  result = qword_27CDF9110;
  if (!qword_27CDF9110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9118, &qword_21CBCAED0);
    sub_21CB2A2A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9110);
  }

  return result;
}

unint64_t sub_21CB2A2A0()
{
  result = qword_27CDF9120;
  if (!qword_27CDF9120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9128, &qword_21CBCAED8);
    sub_21CB2A32C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9120);
  }

  return result;
}

unint64_t sub_21CB2A32C()
{
  result = qword_27CDF9130;
  if (!qword_27CDF9130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9138, &qword_21CBCAEE0);
    sub_21C6EADEC(&qword_27CDF9140, &qword_27CDF9148, &qword_21CBCAEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9130);
  }

  return result;
}

uint64_t sub_21CB2A3F8(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF91C8, &qword_21CBCAF70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF91D0, &unk_21CBCAF78);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21CB2A58C()
{
  result = qword_27CDF91A0;
  if (!qword_27CDF91A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9188, &qword_21CBCAF58);
    sub_21CB2A618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF91A0);
  }

  return result;
}

unint64_t sub_21CB2A618()
{
  result = qword_27CDF91A8;
  if (!qword_27CDF91A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9180, &qword_21CBCAF50);
    sub_21C6EADEC(&qword_27CDF91B0, &qword_27CDF9178, &qword_21CBCAF48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF91A8);
  }

  return result;
}

unint64_t sub_21CB2A71C()
{
  result = qword_27CDF91B8;
  if (!qword_27CDF91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF91B8);
  }

  return result;
}

uint64_t sub_21CB2A7E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_21CB28CFC(*(v1 + 16), a1);
}

unint64_t sub_21CB2A804()
{
  result = qword_27CDF91F0;
  if (!qword_27CDF91F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF91F8, &qword_21CBCAFB8);
    sub_21CB2A024();
    sub_21CB2A188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF91F0);
  }

  return result;
}

unint64_t sub_21CB2A8B8()
{
  result = qword_27CDF9238;
  if (!qword_27CDF9238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9230, &qword_21CBCB028);
    sub_21C6EADEC(&qword_27CDF9240, &qword_27CDF9248, &unk_21CBCB030);
    sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9238);
  }

  return result;
}

uint64_t objectdestroy_23Tm()
{
  v1 = sub_21CB83C54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21CB2AA24()
{
  v1 = *(sub_21CB83C54() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = sub_21CB83BF4();
  *v4 = !*v4;
  return v3(&v6, 0);
}

uint64_t sub_21CB2AAB8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_21CB81014();
  sub_21CB81014();
  v8 = sub_21CB80FF4();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v7, v0);
  return v8;
}

unint64_t sub_21CB2AC30()
{
  result = qword_27CDF9280;
  if (!qword_27CDF9280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9268, &qword_21CBCB050);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9280);
  }

  return result;
}

uint64_t sub_21CB2AD14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CB2AD68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v74 = v70 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v70 - v9;
  v11 = type metadata accessor for PMSignInWithAppleAccount();
  v12 = v11[7];
  v13 = sub_21CB80DD4();
  v14 = *(*(v13 - 8) + 56);
  v70[0] = v12;
  v14(a2 + v12, 1, 1, v13);
  v15 = (a2 + v11[13]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a2 + v11[14]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a2 + v11[15]);
  *v17 = 0;
  v17[1] = 0;
  v18 = v11[17];
  v19 = sub_21CB85C44();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v72 = v19;
  v73 = v18;
  v70[1] = v20 + 56;
  v71 = v21;
  (v21)(a2 + v18, 1, 1);
  if ([a1 respondsToSelector_])
  {
    v22 = [a1 userID];
    sub_21CB855C4();
  }

  sub_21CB85B54();
  v23 = [a1 clientID];
  sub_21CB855C4();

  v24 = a2 + v11[5];
  sub_21CB85B54();
  v25 = [a1 localizedAppName];
  v26 = sub_21CB855C4();
  v28 = v27;

  v29 = (a2 + v11[6]);
  *v29 = v26;
  v29[1] = v28;
  v30 = [a1 creationDate];
  if (v30)
  {
    v31 = v30;
    sub_21CB80D94();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v14(v10, v32, 1, v13);
  sub_21C7D3344(v10, a2 + v70[0], &unk_27CDED250, &qword_21CBA64C0);
  if ([a1 sharedScopes])
  {
    v33 = sub_21CA4F57C(0, 1, 1, MEMORY[0x277D84F90]);
    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_21CA4F57C((v34 > 1), v35 + 1, 1, v33);
    }

    *(v33 + 2) = v35 + 1;
    v33[v35 + 32] = 1;
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  if (([a1 sharedScopes] & 2) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_21CA4F57C(0, *(v33 + 2) + 1, 1, v33);
    }

    v37 = *(v33 + 2);
    v36 = *(v33 + 3);
    if (v37 >= v36 >> 1)
    {
      v33 = sub_21CA4F57C((v36 > 1), v37 + 1, 1, v33);
    }

    *(v33 + 2) = v37 + 1;
    v33[v37 + 32] = 2;
  }

  if (([a1 sharedScopes] & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_21CA4F57C(0, *(v33 + 2) + 1, 1, v33);
    }

    v39 = *(v33 + 2);
    v38 = *(v33 + 3);
    if (v39 >= v38 >> 1)
    {
      v33 = sub_21CA4F57C((v38 > 1), v39 + 1, 1, v33);
    }

    *(v33 + 2) = v39 + 1;
    v33[v39 + 32] = 3;
  }

  *(a2 + v11[8]) = v33;

  v40 = [a1 privateEmail];
  if (v40)
  {
    v41 = v40;
    v42 = sub_21CB855C4();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v45 = (a2 + v11[9]);
  *v45 = v42;
  v45[1] = v44;
  v46 = [a1 localizedAppDeveloperName];
  v47 = sub_21CB855C4();
  v49 = v48;

  v50 = (a2 + v11[10]);
  *v50 = v47;
  v50[1] = v49;
  v51 = [a1 privacyPolicyURL];
  if (v51)
  {
    v52 = v51;
    v53 = sub_21CB855C4();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0;
  }

  v56 = (a2 + v11[11]);
  *v56 = v53;
  v56[1] = v55;
  *(a2 + v11[12]) = [a1 hasEULA];
  v57 = [a1 shareInfo];
  if (v57)
  {
    v58 = v57;
    v59 = [v57 participantID];

    v60 = sub_21CB855C4();
    v62 = v61;
  }

  else
  {
    v60 = 0;
    v62 = 0;
  }

  v63 = (a2 + v11[16]);
  *v63 = v60;
  v63[1] = v62;
  v64 = [a1 shareInfo];
  if (v64)
  {
    v65 = v64;
    v66 = [v65 groupID];
    sub_21CB855C4();

    v67 = v74;
    sub_21CB85B54();

    v68 = 0;
    a1 = v65;
  }

  else
  {
    v68 = 1;
    v67 = v74;
  }

  v71(v67, v68, 1, v72);

  return sub_21C7D3344(v67, a2 + v73, &unk_27CDF20B0, &unk_21CBA0090);
}

PasswordManagerUI::PMSignInWithAppleAccountSharedScope_optional __swiftcall PMSignInWithAppleAccountSharedScope.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v3 = v1;
  v4 = stringValue._countAndFlagsBits == 1701736302 && stringValue._object == 0xE400000000000000;
  if (v4 || (countAndFlagsBits = stringValue._countAndFlagsBits, (sub_21CB86344() & 1) != 0))
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 1701667182 && object == 0xE400000000000000 || (sub_21CB86344() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x6C69616D65 && object == 0xE500000000000000 || (sub_21CB86344() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x4565746176697270 && object == 0xEC0000006C69616DLL)
  {

    v7 = 3;
  }

  else
  {
    v8 = sub_21CB86344();

    if (v8)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }
  }

  *v3 = v7;
  return result;
}

PasswordManagerUI::PMSignInWithAppleAccountSharedScope_optional __swiftcall PMSignInWithAppleAccountSharedScope.init(intValue:)(Swift::Int intValue)
{
  v2 = 4;
  if (intValue < 4)
  {
    v2 = intValue;
  }

  *v1 = v2;
  return intValue;
}

uint64_t PMSignInWithAppleAccountSharedScope.stringValue.getter()
{
  v1 = 1701736302;
  v2 = 0x6C69616D65;
  if (*v0 != 2)
  {
    v2 = 0x4565746176697270;
  }

  if (*v0)
  {
    v1 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21CB2B614()
{
  v1 = 1701736302;
  v2 = 0x6C69616D65;
  if (*v0 != 2)
  {
    v2 = 0x4565746176697270;
  }

  if (*v0)
  {
    v1 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21CB2B698(uint64_t a1)
{
  v2 = sub_21CB2CC08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CB2B6D4(uint64_t a1)
{
  v2 = sub_21CB2CC08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PMSignInWithAppleAccount.hash(into:)()
{
  v1 = v0;
  v2 = sub_21CB85C44();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v47 - v7;
  v8 = sub_21CB80DD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v47 - v15;
  sub_21CB85B44();
  sub_21CB2CC5C(&qword_27CDF92A0, MEMORY[0x277D49918]);
  sub_21CB85494();
  v17 = type metadata accessor for PMSignInWithAppleAccount();
  v18 = v17[5];
  sub_21CB85B74();
  sub_21CB2CC5C(&qword_27CDEB3D8, MEMORY[0x277D49930]);
  sub_21CB85494();
  v19 = (v1 + v17[6]);
  v20 = *v19;
  v21 = v19[1];
  sub_21CB854C4();
  sub_21C6EDBAC(v1 + v17[7], v16, &unk_27CDED250, &qword_21CBA64C0);
  if ((*(v9 + 48))(v16, 1, v8) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    (*(v9 + 32))(v12, v16, v8);
    sub_21CB864A4();
    sub_21CB2CC5C(&qword_27CDEC280, MEMORY[0x277CC9578]);
    sub_21CB85494();
    (*(v9 + 8))(v12, v8);
  }

  v22 = *(v1 + v17[8]);
  MEMORY[0x21CF15F90](*(v22 + 16));
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = (v22 + 32);
    do
    {
      v25 = *v24++;
      MEMORY[0x21CF15F90](v25);
      --v23;
    }

    while (v23);
  }

  v26 = (v1 + v17[9]);
  if (v26[1])
  {
    v27 = *v26;
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v28 = (v1 + v17[10]);
  v29 = *v28;
  v30 = v28[1];
  sub_21CB854C4();
  v31 = (v1 + v17[11]);
  if (v31[1])
  {
    v32 = *v31;
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v33 = *(v1 + v17[12]);
  sub_21CB864A4();
  v34 = (v1 + v17[13]);
  if (v34[1])
  {
    v35 = *v34;
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v36 = (v1 + v17[14]);
  if (v36[1])
  {
    v37 = *v36;
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v38 = (v1 + v17[15]);
  if (v38[1])
  {
    v39 = *v38;
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v40 = (v1 + v17[16]);
  if (v40[1])
  {
    v41 = *v40;
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v42 = v48;
  sub_21C6EDBAC(v1 + v17[17], v48, &unk_27CDF20B0, &unk_21CBA0090);
  v44 = v49;
  v43 = v50;
  if ((*(v49 + 48))(v42, 1, v50) == 1)
  {
    return sub_21CB864A4();
  }

  v46 = v47;
  (*(v44 + 32))(v47, v42, v43);
  sub_21CB864A4();
  sub_21CB2CC5C(&qword_27CDF8950, MEMORY[0x277D49978]);
  sub_21CB85494();
  return (*(v44 + 8))(v46, v43);
}

uint64_t PMSignInWithAppleAccount.hashValue.getter()
{
  sub_21CB86484();
  PMSignInWithAppleAccount.hash(into:)();
  return sub_21CB864D4();
}

uint64_t sub_21CB2BDA0()
{
  sub_21CB86484();
  PMSignInWithAppleAccount.hash(into:)();
  return sub_21CB864D4();
}

uint64_t sub_21CB2BDE4()
{
  sub_21CB86484();
  PMSignInWithAppleAccount.hash(into:)();
  return sub_21CB864D4();
}

uint64_t _s17PasswordManagerUI24PMSignInWithAppleAccountV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v95 = sub_21CB85C44();
  v97 = *(v95 - 8);
  v4 = *(v97 + 64);
  MEMORY[0x28223BE20](v95);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v93 = &v92 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v10 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v96 = &v92 - v11;
  v12 = sub_21CB80DD4();
  v100 = *(v12 - 8);
  v13 = *(v100 + 64);
  MEMORY[0x28223BE20](v12);
  v98 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v99 = &v92 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3E0, &unk_21CBA1A70);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v92 - v20;
  sub_21CB85B44();
  sub_21CB2CC5C(&qword_27CDF92E8, MEMORY[0x277D49918]);
  v22 = a1;
  sub_21CB857F4();
  sub_21CB857F4();
  if (v104 == v102 && v105 == v103)
  {
  }

  else
  {
    v23 = sub_21CB86344();

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v92 = v6;
  v101 = type metadata accessor for PMSignInWithAppleAccount();
  v24 = v101[5];
  sub_21CB85B74();
  sub_21CB2CC5C(&qword_27CDEB3C0, MEMORY[0x277D49930]);
  sub_21CB857F4();
  sub_21CB857F4();
  if (v104 == v102 && v105 == v103)
  {

    goto LABEL_9;
  }

  v25 = sub_21CB86344();

  if (v25)
  {
LABEL_9:
    v26 = v101;
    v27 = v101[6];
    v28 = v22;
    v29 = *(v22 + v27);
    v30 = *(v22 + v27 + 8);
    v31 = (a2 + v27);
    if ((v29 != *v31 || v30 != v31[1]) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }

    v32 = v26[7];
    v33 = *(v18 + 48);
    sub_21C6EDBAC(v22 + v32, v21, &unk_27CDED250, &qword_21CBA64C0);
    sub_21C6EDBAC(a2 + v32, &v21[v33], &unk_27CDED250, &qword_21CBA64C0);
    v34 = v100;
    v35 = *(v100 + 48);
    if (v35(v21, 1, v12) == 1)
    {
      if (v35(&v21[v33], 1, v12) == 1)
      {
        sub_21C6EA794(v21, &unk_27CDED250, &qword_21CBA64C0);
        goto LABEL_20;
      }
    }

    else
    {
      v36 = v99;
      sub_21C6EDBAC(v21, v99, &unk_27CDED250, &qword_21CBA64C0);
      if (v35(&v21[v33], 1, v12) != 1)
      {
        v40 = v98;
        (*(v34 + 32))(v98, &v21[v33], v12);
        sub_21CB2CC5C(&qword_27CDEB3E8, MEMORY[0x277CC9578]);
        v41 = sub_21CB85574();
        v42 = *(v34 + 8);
        v42(v40, v12);
        v42(v36, v12);
        sub_21C6EA794(v21, &unk_27CDED250, &qword_21CBA64C0);
        if ((v41 & 1) == 0)
        {
          return 0;
        }

LABEL_20:
        v43 = v101;
        if ((sub_21C967A2C(*(v28 + v101[8]), *(a2 + v101[8])) & 1) == 0)
        {
          return 0;
        }

        v44 = v43[9];
        v45 = (v28 + v44);
        v46 = *(v28 + v44 + 8);
        v47 = (a2 + v44);
        v48 = v47[1];
        if (v46)
        {
          if (!v48 || (*v45 != *v47 || v46 != v48) && (sub_21CB86344() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v48)
        {
          return 0;
        }

        v49 = v43[10];
        v50 = *(v28 + v49);
        v51 = *(v28 + v49 + 8);
        v52 = (a2 + v49);
        if ((v50 != *v52 || v51 != v52[1]) && (sub_21CB86344() & 1) == 0)
        {
          return 0;
        }

        v53 = v43[11];
        v54 = (v28 + v53);
        v55 = *(v28 + v53 + 8);
        v56 = (a2 + v53);
        v57 = v56[1];
        if (v55)
        {
          if (!v57 || (*v54 != *v56 || v55 != v57) && (sub_21CB86344() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v57)
        {
          return 0;
        }

        if (*(v28 + v43[12]) != *(a2 + v43[12]))
        {
          return 0;
        }

        v59 = v43[13];
        v60 = (v28 + v59);
        v61 = *(v28 + v59 + 8);
        v62 = (a2 + v59);
        v63 = v62[1];
        if (v61)
        {
          if (!v63 || (*v60 != *v62 || v61 != v63) && (sub_21CB86344() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v63)
        {
          return 0;
        }

        v64 = v43[14];
        v65 = (v28 + v64);
        v66 = *(v28 + v64 + 8);
        v67 = (a2 + v64);
        v68 = v67[1];
        if (v66)
        {
          if (!v68 || (*v65 != *v67 || v66 != v68) && (sub_21CB86344() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v68)
        {
          return 0;
        }

        v69 = v43[15];
        v70 = (v28 + v69);
        v71 = *(v28 + v69 + 8);
        v72 = (a2 + v69);
        v73 = v72[1];
        if (v71)
        {
          if (!v73 || (*v70 != *v72 || v71 != v73) && (sub_21CB86344() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v73)
        {
          return 0;
        }

        v74 = v43[16];
        v75 = (v28 + v74);
        v76 = *(v28 + v74 + 8);
        v77 = (a2 + v74);
        v78 = v77[1];
        if (v76)
        {
          if (!v78 || (*v75 != *v77 || v76 != v78) && (sub_21CB86344() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v78)
        {
          return 0;
        }

        v79 = v43[17];
        v80 = *(v94 + 48);
        v81 = v96;
        sub_21C6EDBAC(v28 + v79, v96, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C6EDBAC(a2 + v79, v81 + v80, &unk_27CDF20B0, &unk_21CBA0090);
        v82 = *(v97 + 48);
        v83 = v95;
        if (v82(v81, 1, v95) == 1)
        {
          v84 = v82(v81 + v80, 1, v83) == 1;
          v39 = v81;
          if (!v84)
          {
            goto LABEL_75;
          }

          sub_21C6EA794(v81, &unk_27CDF20B0, &unk_21CBA0090);
        }

        else
        {
          v85 = v93;
          sub_21C6EDBAC(v81, v93, &unk_27CDF20B0, &unk_21CBA0090);
          if (v82(v81 + v80, 1, v83) == 1)
          {
            (*(v97 + 8))(v85, v83);
            v39 = v96;
LABEL_75:
            v37 = &qword_27CDEAC40;
            v38 = &qword_21CBA1A40;
            goto LABEL_18;
          }

          v87 = v96;
          v86 = v97;
          v88 = v96 + v80;
          v89 = v92;
          (*(v97 + 32))(v92, v88, v83);
          sub_21CB2CC5C(&qword_27CDEAC48, MEMORY[0x277D49978]);
          v90 = sub_21CB85574();
          v91 = *(v86 + 8);
          v91(v89, v83);
          v91(v85, v83);
          sub_21C6EA794(v87, &unk_27CDF20B0, &unk_21CBA0090);
          if ((v90 & 1) == 0)
          {
            return 0;
          }
        }

        return 1;
      }

      (*(v34 + 8))(v36, v12);
    }

    v37 = &qword_27CDEB3E0;
    v38 = &unk_21CBA1A70;
    v39 = v21;
LABEL_18:
    sub_21C6EA794(v39, v37, v38);
  }

  return 0;
}

uint64_t type metadata accessor for PMSignInWithAppleAccount()
{
  result = qword_27CDF92C8;
  if (!qword_27CDF92C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21CB2C8AC()
{
  result = qword_27CDF92A8;
  if (!qword_27CDF92A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF92A8);
  }

  return result;
}

unint64_t sub_21CB2C904()
{
  result = qword_27CDF92B0;
  if (!qword_27CDF92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF92B0);
  }

  return result;
}

unint64_t sub_21CB2C95C()
{
  result = qword_27CDF92B8;
  if (!qword_27CDF92B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF92B8);
  }

  return result;
}

void sub_21CB2CA30()
{
  sub_21CB85B44();
  if (v0 <= 0x3F)
  {
    sub_21CB85B74();
    if (v1 <= 0x3F)
    {
      sub_21C6EAB20(319, &qword_27CDEB310, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        sub_21CB2CBB8(319, &qword_27CDF92D8, &type metadata for PMSignInWithAppleAccountSharedScope, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_21CB2CBB8(319, &qword_27CDEB308, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_21C6EAB20(319, &qword_27CDEABC0, MEMORY[0x277D49978]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21CB2CBB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_21CB2CC08()
{
  result = qword_27CDF92E0;
  if (!qword_27CDF92E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF92E0);
  }

  return result;
}

uint64_t sub_21CB2CC5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PMContentListSearchable()
{
  result = qword_27CDF92F0;
  if (!qword_27CDF92F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CB2CD1C()
{
  sub_21C7086F8();
  if (v0 <= 0x3F)
  {
    sub_21CB2CE30(319, &qword_27CDEE7E8, type metadata accessor for PMGlobalSearchModel, type metadata accessor for PMDependency);
    if (v1 <= 0x3F)
    {
      sub_21CB2CE30(319, &qword_27CDEF190, type metadata accessor for PMAppRootNavigationModel, MEMORY[0x277CDD7D0]);
      if (v2 <= 0x3F)
      {
        sub_21CB2CE94();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21CB2CE30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21CB2CE94()
{
  if (!qword_27CDEE4A0)
  {
    v0 = sub_21CB84F94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEE4A0);
    }
  }
}

uint64_t sub_21CB2CF00(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PMContentListSearchable();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9300, &qword_21CBCB300);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  sub_21CB2D1BC(a1, v19 - v10);
  v12 = *(v2 + *(v5 + 28));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v13 = sub_21C81C2B8(v12, v19[0]);

  swift_getKeyPath();
  v19[0] = v13;
  sub_21CB2E280(&qword_27CDEEE18, type metadata accessor for PMGlobalSearchModel);
  sub_21CB810D4();

  v14 = *(v13 + 16);
  v15 = *(v13 + 24);

  v19[0] = v14;
  v19[1] = v15;
  sub_21CB2DF3C(v2, v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_21CB2DFA0(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_21CB2E064();
  sub_21CB84934();

  return sub_21C6EA794(v11, &qword_27CDF9300, &qword_21CBCB300);
}

uint64_t sub_21CB2D1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a1;
  v88 = a2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9330, &qword_21CBCB350);
  v3 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v87 = &v71[-v4];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9318, &qword_21CBCB338);
  v5 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v84 = &v71[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v71[-v8];
  v9 = sub_21CB83834();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v76 = &v71[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v71[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v83 = &v71[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v71[-v21];
  MEMORY[0x28223BE20](v23);
  v25 = &v71[-v24];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0348, &qword_21CBAE820);
  v92 = *(v90 - 8);
  v26 = *(v92 + 64);
  MEMORY[0x28223BE20](v90);
  v80 = &v71[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v78 = &v71[-v29];
  MEMORY[0x28223BE20](v30);
  v77 = &v71[-v31];
  MEMORY[0x28223BE20](v32);
  v34 = &v71[-v33];
  v79 = type metadata accessor for PMContentListSearchable();
  v35 = *(v2 + *(v79 + 20));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C81C2B8(v35, v102);

  type metadata accessor for PMGlobalSearchModel();
  sub_21CB2E280(&qword_27CDEEE18, type metadata accessor for PMGlobalSearchModel);
  v89 = v34;
  sub_21CB850A4();
  v81 = v2;
  sub_21C728D50(v25);
  (*(v10 + 104))(v22, *MEMORY[0x277CE0558], v9);
  (*(v10 + 56))(v22, 0, 1, v9);
  v36 = *(v13 + 48);
  sub_21C6EDBAC(v25, v16, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v22, &v16[v36], &qword_27CDEC390, &qword_21CBA40E0);
  v37 = *(v10 + 48);
  if (v37(v16, 1, v9) == 1)
  {
    sub_21C6EA794(v22, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v25, &qword_27CDEC390, &qword_21CBA40E0);
    if (v37(&v16[v36], 1, v9) == 1)
    {
      sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v38 = v83;
  sub_21C6EDBAC(v16, v83, &qword_27CDEC390, &qword_21CBA40E0);
  if (v37(&v16[v36], 1, v9) == 1)
  {
    sub_21C6EA794(v22, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v25, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v10 + 8))(v38, v9);
LABEL_8:
    sub_21C6EA794(v16, &qword_27CDEE530, &unk_21CBA9D80);
LABEL_9:
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9328, &unk_21CBCB340);
    (*(*(v39 - 8) + 16))(v87, v85, v39);
    swift_storeEnumTagMultiPayload();
    sub_21CB2E0F0();
    sub_21CB2E1AC();
    sub_21CB83494();
    return (*(v92 + 8))(v89, v90);
  }

  v41 = v38;
  v42 = v76;
  (*(v10 + 32))(v76, &v16[v36], v9);
  sub_21CB2E280(&qword_27CDEE538, MEMORY[0x277CE0570]);
  v43 = sub_21CB85574();
  v44 = *(v10 + 8);
  v44(v42, v9);
  sub_21C6EA794(v22, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v25, &qword_27CDEC390, &qword_21CBA40E0);
  v44(v41, v9);
  sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
  if ((v43 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_11:
  v45 = v77;
  v46 = v90;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v47 = v92 + 8;
  v48 = *(v92 + 8);
  (v48)(v45, v46);
  v74 = v102;
  v77 = v103;
  v73 = v104;
  v76 = v105;
  v49 = v78;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  (v48)(v49, v46);
  v78 = v99;
  v75 = v100;
  v72 = v101;
  v50 = v80;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v92 = v47;
  v83 = v48;
  (v48)(v50, v46);
  v51 = v96;
  v52 = v97;
  LODWORD(v80) = v98;
  v53 = *(v79 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  sub_21CB821D4();
  if (v95 != 1)
  {
    j_j__swift_release(v94, 0);
    goto LABEL_15;
  }

  if (!v94)
  {
LABEL_15:
    v55 = 0;
    v57 = 0;
    goto LABEL_16;
  }

  v54 = v94;
  v55 = sub_21C8CEDC4();
  v57 = v56;
  j_j__swift_release(v54, 1);
LABEL_16:
  v58 = &v84[*(v91 + 36)];
  v59 = v77;
  *v58 = v74;
  *(v58 + 1) = v59;
  v60 = v76;
  *(v58 + 2) = v73;
  *(v58 + 3) = v60;
  v61 = v75;
  *(v58 + 4) = v78;
  *(v58 + 5) = v61;
  v58[48] = v72;
  *(v58 + 7) = v51;
  *(v58 + 8) = v52;
  v58[72] = v80;
  *(v58 + 73) = 257;
  *(v58 + 10) = v55;
  *(v58 + 11) = v57;
  v93 = 0;

  sub_21CB84D44();
  v62 = v95;
  v58[96] = v94;
  *(v58 + 13) = v62;
  v63 = sub_21CB81F94();
  v65 = v64;
  LODWORD(v81) = v66;

  v58[112] = v63 & 1;
  *(v58 + 15) = v65;
  v58[128] = v81 & 1;
  v67 = *(type metadata accessor for PMSearchable() + 48);
  *&v58[v67] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9328, &unk_21CBCB340);
  v69 = v84;
  (*(*(v68 - 8) + 16))(v84, v85, v68);
  v70 = v82;
  sub_21CB2E210(v69, v82);
  sub_21C6EDBAC(v70, v87, &qword_27CDF9318, &qword_21CBCB338);
  swift_storeEnumTagMultiPayload();
  sub_21CB2E0F0();
  sub_21CB2E1AC();
  sub_21CB83494();
  sub_21C6EA794(v70, &qword_27CDF9318, &qword_21CBCB338);
  return (v83)(v89, v90);
}

uint64_t sub_21CB2DDD0(uint64_t a1)
{
  v2 = type metadata accessor for PMContentListSearchable();
  v3 = *(a1 + *(v2 + 20));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v4 = sub_21C81C2B8(v3, v9);

  swift_getKeyPath();
  sub_21CB2E280(&qword_27CDEEE18, type metadata accessor for PMGlobalSearchModel);
  sub_21CB810D4();

  v6 = *(v4 + 16);
  v5 = *(v4 + 24);

  v7 = (a1 + *(v2 + 28));
  v10 = *v7;
  v11 = *(v7 + 2);
  v12 = *(v7 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  return sub_21CB84F34();
}

uint64_t sub_21CB2DF3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMContentListSearchable();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CB2DFA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMContentListSearchable();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CB2E004()
{
  v1 = *(type metadata accessor for PMContentListSearchable() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CB2DDD0(v2);
}

unint64_t sub_21CB2E064()
{
  result = qword_27CDF9308;
  if (!qword_27CDF9308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9300, &qword_21CBCB300);
    sub_21CB2E0F0();
    sub_21CB2E1AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9308);
  }

  return result;
}

unint64_t sub_21CB2E0F0()
{
  result = qword_27CDF9310;
  if (!qword_27CDF9310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9318, &qword_21CBCB338);
    sub_21CB2E1AC();
    sub_21CB2E280(&qword_27CDEBF90, type metadata accessor for PMSearchable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9310);
  }

  return result;
}

unint64_t sub_21CB2E1AC()
{
  result = qword_27CDF9320;
  if (!qword_27CDF9320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9328, &unk_21CBCB340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9320);
  }

  return result;
}

uint64_t sub_21CB2E210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9318, &qword_21CBCB338);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CB2E280(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CB2E2C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for PMSignInWithAppleAccountDetailsModel();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  LOBYTE(v41) = 0;
  sub_21CB81D74();
  sub_21CB3917C(&qword_27CDF68E8, type metadata accessor for PMSignInWithAppleAccountDetailsModel);
  *a2 = sub_21CB82674();
  a2[1] = v11;
  v12 = type metadata accessor for PMSignInWithAppleAccountDetailsView();
  v13 = v12[5];
  *(a2 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v14 = v12[6];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v15 = (a2 + v12[7]);
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v41);

  type metadata accessor for PMAccountsState();
  sub_21CB3917C(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v17 = sub_21CB82674();
  v19 = v18;

  *v15 = v17;
  v15[1] = v19;
  v20 = (a2 + v12[8]);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAEF8, &unk_21CBA0740);
  sub_21CB84D44();
  v21 = v42;
  *v20 = v41;
  v20[1] = v21;
  v22 = a2 + v12[9];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = a2 + v12[10];
  LOBYTE(v38) = 0;
  sub_21CB84D44();
  v24 = *(&v41 + 1);
  *v23 = v41;
  *(v23 + 1) = v24;
  v25 = (a2 + v12[11]);
  v26 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7073E8(v26, v41);

  type metadata accessor for PMGroupsStore();
  sub_21CB3917C(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v27 = sub_21CB82674();
  v29 = v28;

  *v25 = v27;
  v25[1] = v29;
  v30 = a2 + v12[12];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  sub_21CB38794(a1, a2 + v12[13], type metadata accessor for PMAccount);
  PMAccount.signInWithAppleAccount.getter(v7);
  v31 = type metadata accessor for PMSignInWithAppleAccount();
  if ((*(*(v31 - 8) + 48))(v7, 1, v31) == 1)
  {
    sub_21C6EA794(v7, &qword_27CDEB2A8, &qword_21CBA1670);
    v32 = 0;
    v33 = 0xE000000000000000;
  }

  else
  {
    v34 = &v7[*(v31 + 24)];
    v32 = *v34;
    v33 = *(v34 + 1);

    sub_21C719900(v7, type metadata accessor for PMSignInWithAppleAccount);
  }

  result = sub_21C719900(a1, type metadata accessor for PMAccount);
  v36 = (a2 + v12[14]);
  *v36 = v32;
  v36[1] = v33;
  return result;
}

uint64_t type metadata accessor for PMSignInWithAppleAccountDetailsView()
{
  result = qword_27CDF9338;
  if (!qword_27CDF9338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CB2E7BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v3 = sub_21CB830D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMSignInWithAppleAccountDetailsView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  *&v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9358, &qword_21CBCB578);
  v11 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v13 = (&v49 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9360, &qword_21CBCB580);
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = *(v54 + 64);
  MEMORY[0x28223BE20](v14);
  v52 = &v49 - v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9368, &unk_21CBCB588);
  v17 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v49 - v18;
  sub_21CB38794(v2, &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSignInWithAppleAccountDetailsView);
  v19 = *(v9 + 80);
  v20 = (v19 + 16) & ~v19;
  v56 = v10;
  v49 = v19;
  v21 = swift_allocObject();
  v50 = v20;
  v59 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB3910C(v59, v21 + v20, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  *&v53 = v8;
  v22 = *(v8 + 40);
  v60 = v2;
  v23 = (v2 + v22);
  v24 = *v23;
  v25 = *(v23 + 1);
  LOBYTE(v62) = v24;
  *(&v62 + 1) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  if (v65 == 1)
  {
    sub_21CB830B4();
  }

  else
  {
    sub_21CB830C4();
  }

  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9370, &qword_21CBCB598) + 36);
  (*(v4 + 16))(v13 + v26, v7, v3);
  v27 = *(v4 + 56);
  v27(v13 + v26, 0, 1, v3);
  *v13 = sub_21CB37CFC;
  v13[1] = v21;
  KeyPath = swift_getKeyPath();
  v29 = (v13 + *(v51 + 36));
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
  (*(v4 + 32))(v29 + v30, v7, v3);
  v31 = (v27)(v29 + v30, 0, 1, v3);
  *v29 = KeyPath;
  MEMORY[0x28223BE20](v31);
  v32 = v60;
  *(&v49 - 2) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9378, &qword_21CBCB5D8);
  sub_21CB37D74();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF93A0, &qword_21CBCB5F0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF93A8, &qword_21CBCB5F8);
  v35 = sub_21CB37F10();
  *&v62 = v34;
  *(&v62 + 1) = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v62 = v33;
  *(&v62 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v37 = v52;
  sub_21CB84894();
  sub_21C6EA794(v13, &qword_27CDF9358, &qword_21CBCB578);
  v38 = (v32 + *(v53 + 32));
  v39 = v38[1];
  v65 = *v38;
  v66 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF93C8, &qword_21CBCB610);
  sub_21CB84D74();
  v53 = v62;
  v51 = v63;
  v40 = v64;
  v41 = v59;
  sub_21CB38794(v32, v59, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  v42 = v50;
  v43 = swift_allocObject();
  sub_21CB3910C(v41, v43 + v42, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  v44 = v57;
  (*(v54 + 32))(v57, v37, v55);
  v45 = v44 + *(v58 + 36);
  v46 = v51;
  *v45 = v53;
  *(v45 + 16) = v46;
  *(v45 + 32) = v40;
  *(v45 + 40) = &unk_21CBCB620;
  *(v45 + 48) = v43;
  v47 = *(v32 + 8);
  type metadata accessor for PMSignInWithAppleAccountDetailsModel();
  sub_21CB3917C(&qword_27CDF68E8, type metadata accessor for PMSignInWithAppleAccountDetailsModel);
  sub_21CB81CD4();
  *&v62 = v47;
  sub_21CB38144();
  sub_21CB843A4();

  return sub_21C6EA794(v44, &qword_27CDF9368, &unk_21CBCB588);
}

uint64_t sub_21CB2EEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF93E8, &unk_21CBCB6A8);
  v3 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v5 = &v56 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C48, &qword_21CBB26C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF93F0, &qword_21CBCB6B8);
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = *(v60 + 64);
  MEMORY[0x28223BE20](v11);
  v57 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v63 = &v56 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF93F8, &qword_21CBCB6C0);
  v16 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v66 = &v56 - v17;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9400, &qword_21CBCB6C8);
  v18 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v20 = &v56 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9408, &qword_21CBCB6D0);
  v58 = *(v21 - 8);
  v22 = *(v58 + 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v56 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9410, &qword_21CBCB6D8);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v56 - v33;
  v35 = (a1 + *(type metadata accessor for PMSignInWithAppleAccountDetailsView() + 40));
  v36 = *v35;
  v37 = *(v35 + 1);
  v70 = v36;
  v71 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  v38 = sub_21CB84D54();
  if (v69 == 1)
  {
    v39 = sub_21CB2F6CC(v34);
    MEMORY[0x28223BE20](v39);
    *(&v56 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9440, &qword_21CBCB6F0);
    sub_21CB3844C();
    sub_21CB85054();
    v63 = v34;
    sub_21C6EDBAC(v34, v31, &qword_27CDF9410, &qword_21CBCB6D8);
    v40 = v58;
    v41 = *(v58 + 2);
    v41(v24, v27, v21);
    sub_21C6EDBAC(v31, v20, &qword_27CDF9410, &qword_21CBCB6D8);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9460, &unk_21CBCB708);
    v41(&v20[*(v42 + 48)], v24, v21);
    v43 = *(v40 + 1);
    v43(v24, v21);
    sub_21C6EA794(v31, &qword_27CDF9410, &qword_21CBCB6D8);
    sub_21C6EDBAC(v20, v66, &qword_27CDF9400, &qword_21CBCB6C8);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF9430, &qword_27CDF9400, &qword_21CBCB6C8);
    sub_21C6EADEC(&qword_27CDF9438, &qword_27CDF93E8, &unk_21CBCB6A8);
    sub_21CB83494();
    sub_21C6EA794(v20, &qword_27CDF9400, &qword_21CBCB6C8);
    v43(v27, v21);
    return sub_21C6EA794(v63, &qword_27CDF9410, &qword_21CBCB6D8);
  }

  else
  {
    v58 = v5;
    MEMORY[0x28223BE20](v38);
    *(&v56 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9418, &qword_21CBCB6E0);
    sub_21C6EADEC(&qword_27CDF9420, &qword_27CDF9418, &qword_21CBCB6E0);
    v45 = v63;
    sub_21CB85054();
    v46 = v62;
    v47 = sub_21CB2FC98(v62);
    v49 = v60;
    v48 = v61;
    v50 = *(v60 + 16);
    v51 = v57;
    v50(v57, v45, v61, v47);
    v52 = v59;
    sub_21C6EDBAC(v46, v59, &qword_27CDF1C48, &qword_21CBB26C0);
    v53 = v58;
    (v50)(v58, v51, v48);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9428, &qword_21CBCB6E8);
    sub_21C6EDBAC(v52, v53 + *(v54 + 48), &qword_27CDF1C48, &qword_21CBB26C0);
    sub_21C6EA794(v52, &qword_27CDF1C48, &qword_21CBB26C0);
    v55 = *(v49 + 8);
    v55(v51, v48);
    sub_21C6EDBAC(v53, v66, &qword_27CDF93E8, &unk_21CBCB6A8);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF9430, &qword_27CDF9400, &qword_21CBCB6C8);
    sub_21C6EADEC(&qword_27CDF9438, &qword_27CDF93E8, &unk_21CBCB6A8);
    sub_21CB83494();
    sub_21C6EA794(v53, &qword_27CDF93E8, &unk_21CBCB6A8);
    sub_21C6EA794(v46, &qword_27CDF1C48, &qword_21CBB26C0);
    return (v55)(v63, v48);
  }
}

uint64_t sub_21CB2F6CC@<X0>(char *a1@<X8>)
{
  v51 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9478, &qword_21CBCB758);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9480, &qword_21CBCB760);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9488, &qword_21CBCB768);
  v50 = *(v48 - 8);
  v12 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  v49 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9490, &qword_21CBCB770);
  v47 = *(v53 - 8);
  v17 = *(v47 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  v56 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9498, &qword_21CBCB778);
  sub_21C6EADEC(&qword_27CDF94A0, &qword_27CDF9498, &qword_21CBCB778);
  sub_21CB85054();
  v55 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF94A8, &qword_21CBCB780);
  sub_21CB391CC(&qword_27CDF94B0, &qword_27CDF94A8, &qword_21CBCB780, sub_21CB385D4);
  v22 = v16;
  sub_21CB85054();
  v23 = [objc_opt_self() isSignInWithAppleCredentialSharingEnabled];
  if (v23)
  {
    MEMORY[0x28223BE20](v23);
    *(&v43 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF94E0, &qword_21CBCB7A8);
    sub_21CB386DC();
    v24 = v43;
    sub_21CB85054();
    (*(v3 + 32))(v11, v24, v2);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v3 + 56))(v11, v25, 1, v2);
  v26 = v47;
  v27 = *(v47 + 16);
  v28 = v52;
  v46 = v21;
  v27(v52, v21, v53);
  v29 = v49;
  v30 = v50;
  v31 = v11;
  v44 = v11;
  v45 = v22;
  v32 = *(v50 + 16);
  v33 = v22;
  v34 = v48;
  v32(v49, v33, v48);
  sub_21C6EDBAC(v31, v54, &qword_27CDF9480, &qword_21CBCB760);
  v35 = v51;
  v36 = v28;
  v37 = v53;
  v27(v51, v36, v53);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF94D8, &qword_21CBCB7A0);
  v32(&v35[*(v38 + 48)], v29, v34);
  v39 = v54;
  sub_21C6EDBAC(v54, &v35[*(v38 + 64)], &qword_27CDF9480, &qword_21CBCB760);
  sub_21C6EA794(v44, &qword_27CDF9480, &qword_21CBCB760);
  v40 = *(v30 + 8);
  v40(v45, v34);
  v41 = *(v26 + 8);
  v41(v46, v37);
  sub_21C6EA794(v39, &qword_27CDF9480, &qword_21CBCB760);
  v40(v29, v34);
  return (v41)(v52, v37);
}

__n128 sub_21CB2FC98@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF11D0, &qword_21CBB0B20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C38, &unk_21CBB26B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C40, &qword_21CBCB960);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18[-v10];
  v19 = v1;
  sub_21CB85184();
  v12 = MEMORY[0x277CE1340];
  v13 = MEMORY[0x277CE1350];
  sub_21CB831D4();
  *&v20 = v13;
  *(&v20 + 1) = v12;
  swift_getOpaqueTypeConformance2();
  sub_21CB851A4();
  type metadata accessor for PMAppAccountDetailsCredentialSecurityView(0);
  sub_21C943BA4();
  sub_21CB3917C(&qword_27CDF1C58, type metadata accessor for PMAppAccountDetailsCredentialSecurityView);
  sub_21CB85034();
  sub_21CB85224();
  sub_21CB82AC4();
  (*(v8 + 32))(a1, v11, v7);
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C48, &qword_21CBB26C0) + 36);
  v15 = v25;
  *(v14 + 64) = v24;
  *(v14 + 80) = v15;
  *(v14 + 96) = v26;
  v16 = v21;
  *v14 = v20;
  *(v14 + 16) = v16;
  result = v23;
  *(v14 + 32) = v22;
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_21CB2FFB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF93A0, &qword_21CBCB5F0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - v3;
  sub_21CB300E0(v9 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF93A8, &qword_21CBCB5F8);
  v6 = sub_21CB37F10();
  v9[0] = v5;
  v9[1] = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF131E0](v4, v0, OpaqueTypeConformance2);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21CB300E0@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2768, &qword_21CBB4860);
  v44 = *(v48 - 8);
  v2 = *(v44 + 64);
  MEMORY[0x28223BE20](v48);
  v4 = &v41 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA80, &unk_21CBA81E0);
  v43 = *(v47 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v7 = &v41 - v6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF93D8, &unk_21CBCB690);
  v42 = *(v46 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v46);
  v10 = &v41 - v9;
  v11 = sub_21CB83604();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF93B8, &unk_21CBCB600);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF93A8, &qword_21CBCB5F8);
  v18 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v20 = &v41 - v19;
  v21 = (v1 + *(type metadata accessor for PMSignInWithAppleAccountDetailsView() + 40));
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v51) = v22;
  v52 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  v24 = sub_21CB84D54();
  if (v50 == 1)
  {
    v25 = sub_21CB835D4();
    MEMORY[0x28223BE20](v25);
    *(&v41 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF93E0, &qword_21CBCB6A0);
    v26 = type metadata accessor for PMPlatformRoleButton();
    v27 = sub_21CB3917C(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
    v51 = v26;
    v52 = v27;
    swift_getOpaqueTypeConformance2();
    sub_21CB82194();
    v28 = sub_21C6EADEC(&qword_27CDF93C0, &qword_27CDF93B8, &unk_21CBCB600);
    MEMORY[0x21CF131E0](v17, v13, v28);
    v51 = v13;
    v52 = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v30 = sub_21C6EADEC(&qword_27CDF2770, &qword_27CDEDA80, &unk_21CBA81E0);
    v51 = v47;
    v52 = v30;
    v31 = swift_getOpaqueTypeConformance2();
    v32 = v46;
    MEMORY[0x21CF131F0](v10, v46, v48, OpaqueTypeConformance2, v31);
    (*(v42 + 8))(v10, v32);
    (*(v14 + 8))(v17, v13);
  }

  else
  {
    MEMORY[0x28223BE20](v24);
    *(&v41 - 2) = v1;
    sub_21CB835E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21CB82194();
    v33 = sub_21C6EADEC(&qword_27CDF2770, &qword_27CDEDA80, &unk_21CBA81E0);
    v34 = v47;
    MEMORY[0x21CF131E0](v7, v47, v33);
    v35 = sub_21C6EADEC(&qword_27CDF93C0, &qword_27CDF93B8, &unk_21CBCB600);
    v51 = v13;
    v52 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v51 = v34;
    v52 = v33;
    v37 = swift_getOpaqueTypeConformance2();
    v38 = v48;
    MEMORY[0x21CF13200](v4, v46, v48, v36, v37);
    (*(v44 + 8))(v4, v38);
    (*(v43 + 8))(v7, v34);
  }

  v39 = sub_21CB37F10();
  MEMORY[0x21CF131E0](v20, v45, v39);
  return sub_21C6EA794(v20, &qword_27CDF93A8, &qword_21CBCB5F8);
}

uint64_t sub_21CB307D4(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = *(type metadata accessor for PMSignInWithAppleAccountDetailsView() - 8);
  v2[3] = v3;
  v2[4] = *(v3 + 64);
  v2[5] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = sub_21CB858B4();
  v2[8] = sub_21CB858A4();
  v6 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21CB30908, v6, v5);
}

uint64_t sub_21CB30908()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = sub_21CB858E4();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_21CB38794(v7, v3, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  v9 = sub_21CB858A4();
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v9;
  *(v11 + 24) = v12;
  sub_21CB3910C(v3, v11 + v10, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  sub_21C98B308(0, 0, v4, &unk_21CBCB638, v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_21CB30A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_21CB858B4();
  v4[4] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21CB30B14, v6, v5);
}

uint64_t sub_21CB30B14()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 56) = *(v2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 116) = 1;

  sub_21CB81DC4();
  v3 = type metadata accessor for PMSignInWithAppleAccountDetailsView();
  *(v0 + 64) = *(v2 + *(v3 + 28) + 8);
  *(v0 + 112) = *(v3 + 52);
  *(v0 + 72) = sub_21CB858A4();
  v5 = sub_21CB85874();
  *(v0 + 80) = v5;
  *(v0 + 88) = v4;

  return MEMORY[0x2822009F8](sub_21CB30C20, v5, v4);
}

uint64_t sub_21CB30C20()
{
  v1 = *(v0 + 64);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 112);
    v4 = *(v0 + 16);
    v5 = *(*(v0 + 64) + 24);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 96);
    v14 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    *v9 = v0;
    v9[1] = sub_21CB30DB4;

    return v14(4, v4 + v3, ObjectType, v5);
  }

  else
  {
    v11 = *(v0 + 72);

    v12 = *(v0 + 40);
    v13 = *(v0 + 48);

    return MEMORY[0x2822009F8](sub_21CB30F5C, v12, v13);
  }
}

uint64_t sub_21CB30DB4()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21CB30EF8, v5, v4);
}

uint64_t sub_21CB30EF8()
{
  v1 = v0[9];

  v2 = v0[5];
  v3 = v0[6];

  return MEMORY[0x2822009F8](sub_21CB30F5C, v2, v3);
}

uint64_t sub_21CB30F5C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 117) = 0;

  sub_21CB81DC4();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CB3100C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9540, &qword_21CBCB968);
  v100 = *(v3 - 8);
  v101 = v3;
  v4 = *(v100 + 64);
  MEMORY[0x28223BE20](v3);
  v99 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v109 = &v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF94E0, &qword_21CBCB7A8);
  v96 = *(v8 - 8);
  v97 = v8;
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v8);
  v95 = &v89 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9548, &qword_21CBCB970);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v108 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v110 = &v89 - v15;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9550, &qword_21CBCB978);
  v16 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v94 = &v89 - v17;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  v18 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v92 = &v89 - v19;
  v20 = type metadata accessor for PMSignInWithAppleAccount();
  v21 = *(v20 - 1);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v90 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v89 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9558, &qword_21CBCB980);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v107 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v105 = &v89 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9530, &unk_21CBCB8C0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v106 = &v89 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = &v89 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55A0, &qword_21CBBE3B8);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v104 = &v89 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v89 - v46;
  v48 = type metadata accessor for PMSignInWithAppleAccountDetailsView();
  v49 = (a1 + *(v48 + 56));
  v51 = *v49;
  v50 = v49[1];

  v52 = sub_21CB34C04();
  v111 = a1;
  v102 = v47;
  v53 = v47;
  v54 = a1;
  sub_21CA26210(v51, v50, v52, v55, sub_21CB39250, v53);
  v103 = v41;
  sub_21CB31C2C(v41);
  v56 = *(v48 + 52);
  PMAccount.signInWithAppleAccount.getter(v30);
  v57 = *(v21 + 48);
  if (v57(v30, 1, v20) == 1)
  {
    sub_21C6EA794(v30, &qword_27CDEB2A8, &qword_21CBA1670);
  }

  else
  {
    v58 = &v30[v20[9]];
    v59 = *v58;
    v60 = v58[1];

    sub_21C719900(v30, type metadata accessor for PMSignInWithAppleAccount);
    if (v60)
    {
      v61 = v92;
      sub_21CB322CC(v59, v60, v92);

      sub_21C6EDBAC(v61, v94, &qword_27CDF1B78, &qword_21CBBE2D0);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0);
      v62 = v105;
      sub_21CB83494();
      sub_21C6EA794(v61, &qword_27CDF1B78, &qword_21CBBE2D0);
      v63 = 0;
      goto LABEL_12;
    }
  }

  PMAccount.signInWithAppleAccount.getter(v27);
  if (v57(v27, 1, v20) == 1)
  {
    sub_21C6EA794(v27, &qword_27CDEB2A8, &qword_21CBA1670);
LABEL_11:
    v63 = 1;
    v62 = v105;
    goto LABEL_12;
  }

  v64 = v90;
  sub_21CB3910C(v27, v90, type metadata accessor for PMSignInWithAppleAccount);
  v65 = (v64 + v20[15]);
  v66 = v65[1];
  if (!v66)
  {
    sub_21C719900(v64, type metadata accessor for PMSignInWithAppleAccount);
    goto LABEL_11;
  }

  v67 = *v65;
  v68 = sub_21C8A137C(2u, *(v64 + v20[8]));
  v62 = v105;
  if (v68)
  {

    v69 = v92;
    sub_21CB326FC(v67, v66, v92);

    sub_21C6EDBAC(v69, v94, &qword_27CDF1B78, &qword_21CBBE2D0);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0);
    sub_21CB83494();
    sub_21C6EA794(v69, &qword_27CDF1B78, &qword_21CBBE2D0);
    sub_21C719900(v64, type metadata accessor for PMSignInWithAppleAccount);
    v63 = 0;
  }

  else
  {
    sub_21C719900(v64, type metadata accessor for PMSignInWithAppleAccount);
    v63 = 1;
  }

LABEL_12:
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9560, &qword_21CBCB988);
  v71 = 1;
  (*(*(v70 - 8) + 56))(v62, v63, 1, v70);
  if ([objc_opt_self() isSignInWithAppleCredentialSharingEnabled])
  {
    v72 = v95;
    sub_21CB32B20(v95);
    sub_21C716934(v72, v110, &qword_27CDF94E0, &qword_21CBCB7A8);
    v71 = 0;
  }

  v73 = v110;
  (*(v96 + 56))(v110, v71, 1, v97);
  v74 = sub_21CB85184();
  MEMORY[0x28223BE20](v74);
  *(&v89 - 2) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9500, &unk_21CBCB7B8);
  sub_21CB391CC(&qword_27CDF9568, &qword_27CDF9500, &unk_21CBCB7B8, sub_21C831C64);
  v75 = v109;
  sub_21CB851A4();
  v76 = v104;
  sub_21C6EDBAC(v102, v104, &qword_27CDF55A0, &qword_21CBBE3B8);
  v77 = v106;
  sub_21C6EDBAC(v103, v106, &qword_27CDF9530, &unk_21CBCB8C0);
  v78 = v107;
  sub_21C6EDBAC(v62, v107, &qword_27CDF9558, &qword_21CBCB980);
  v79 = v108;
  sub_21C6EDBAC(v73, v108, &qword_27CDF9548, &qword_21CBCB970);
  v81 = v99;
  v80 = v100;
  v82 = *(v100 + 16);
  v83 = v75;
  v84 = v101;
  v82(v99, v83, v101);
  v85 = v98;
  sub_21C6EDBAC(v76, v98, &qword_27CDF55A0, &qword_21CBBE3B8);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9570, &unk_21CBCB990);
  sub_21C6EDBAC(v77, v85 + v86[12], &qword_27CDF9530, &unk_21CBCB8C0);
  sub_21C6EDBAC(v78, v85 + v86[16], &qword_27CDF9558, &qword_21CBCB980);
  sub_21C6EDBAC(v79, v85 + v86[20], &qword_27CDF9548, &qword_21CBCB970);
  v82((v85 + v86[24]), v81, v84);
  v87 = *(v80 + 8);
  v87(v109, v84);
  sub_21C6EA794(v110, &qword_27CDF9548, &qword_21CBCB970);
  sub_21C6EA794(v105, &qword_27CDF9558, &qword_21CBCB980);
  sub_21C6EA794(v103, &qword_27CDF9530, &unk_21CBCB8C0);
  sub_21C6EA794(v102, &qword_27CDF55A0, &qword_21CBBE3B8);
  v87(v81, v84);
  sub_21C6EA794(v108, &qword_27CDF9548, &qword_21CBCB970);
  sub_21C6EA794(v107, &qword_27CDF9558, &qword_21CBCB980);
  sub_21C6EA794(v106, &qword_27CDF9530, &unk_21CBCB8C0);
  return sub_21C6EA794(v104, &qword_27CDF55A0, &qword_21CBBE3B8);
}