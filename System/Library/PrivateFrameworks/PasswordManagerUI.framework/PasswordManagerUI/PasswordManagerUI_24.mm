uint64_t sub_21C996474(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  if (*(v1 + OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_viewStyle))
  {
    if (*(v1 + OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_viewStyle) == 1)
    {
      v8 = sub_21CB858E4();
      (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
      sub_21CB858B4();

      v9 = v1;
      v10 = sub_21CB858A4();
      v11 = swift_allocObject();
      v12 = MEMORY[0x277D85700];
      v11[2] = v10;
      v11[3] = v12;
      v11[4] = v7;
      v11[5] = v9;
      v11[6] = a1;
      sub_21C98B308(0, 0, v6, &unk_21CBB7740, v11);
    }

    v14 = sub_21C997610(a1);
  }

  else
  {
    v14 = sub_21C997464(a1);
  }

  *(v7 + 16) = v14 & 1;
  v15 = [v1 delegate];
  if (v15)
  {
    [v15 strongPasswordIntroductionViewController:v1 shouldPerformAction:a1 willShowAdditionalView:*(v7 + 16)];

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_21C9966A8(uint64_t a1, id a2)
{
  result = [a2 delegate];
  if (result)
  {
    [result strongPasswordIntroductionViewController:a2 shouldFillPasswordWithFormat:a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21C99672C(char a1, id a2)
{
  result = [a2 delegate];
  v5 = result;
  if (a1)
  {
    if (!result)
    {
      return result;
    }

    v6 = &selRef_strongPasswordIntroductionViewControllerShowOtherPasswords_;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v6 = &selRef_strongPasswordIntroductionViewControllerShowKeyboard_;
  }

  if ([result respondsToSelector_])
  {
    [v5 *v6];
  }

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall PMSafariAutoFillStrongPasswordIntroductionViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1);
  if (*(v1 + OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_viewStyle) == 1)
  {
    v2 = [objc_opt_self() sharedLogger];
    [v2 didSurfaceUsePasswordsAppView];
  }
}

id PMSafariAutoFillStrongPasswordIntroductionViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_21CB85584();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

uint64_t sub_21C996A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v6[11] = sub_21CB858B4();
  v6[12] = sub_21CB858A4();
  v8 = swift_task_alloc();
  v6[13] = v8;
  *v8 = v6;
  v8[1] = sub_21C996B5C;

  return sub_21C996D88(a6);
}

uint64_t sub_21C996B5C(char a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 112) = a1;

  v6 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C996CA0, v6, v5);
}

uint64_t sub_21C996CA0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);

  swift_beginAccess();
  *(v4 + 16) = v1;
  v5 = [v3 delegate];
  if (v5)
  {
    v6 = v5;
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v9 = *(v0 + 64);
    swift_beginAccess();
    [v6 strongPasswordIntroductionViewController:v8 shouldPerformAction:v7 willShowAdditionalView:*(v9 + 16)];
    swift_unknownObjectRelease();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_21C996D88(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_21CB858B4();
  v2[20] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_21C996E20, v4, v3);
}

uint64_t sub_21C996E20()
{
  v24 = v0;
  v1 = *(v0 + 144);
  if (v1 == 1)
  {
    v5 = *(v0 + 160);

    v6 = [objc_opt_self() sharedLogger];
    [v6 didSelectNotNowForUsePasswordsApp];
  }

  else
  {
    if (v1 == 4)
    {
      v2 = [*(v0 + 152) delegate];
      if (v2)
      {
        [v2 strongPasswordIntroductionViewController:*(v0 + 152) shouldFillPasswordWithFormat:0];
        swift_unknownObjectRelease();
      }

      v3 = objc_opt_self();
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 184;
      *(v0 + 24) = sub_21C997200;
      v4 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3310, &unk_21CBA9AB0);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_21C7A1808;
      *(v0 + 104) = &block_descriptor_19;
      *(v0 + 112) = v4;
      [v3 requestToTurnOnCredentialProviderExtensionWithCompletionHandler_];

      return MEMORY[0x282200938](v0 + 16);
    }

    v7 = *(v0 + 160);

    if (qword_27CDEA3E0 != -1)
    {
      swift_once();
    }

    v8 = sub_21CB81C84();
    __swift_project_value_buffer(v8, qword_27CE18550);
    v6 = sub_21CB81C64();
    v9 = sub_21CB85AF4();
    if (os_log_type_enabled(v6, v9))
    {
      v10 = *(v0 + 144);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136315138;
      *(v0 + 80) = v10;
      type metadata accessor for PMSafariAutoFillStrongPasswordViewAction(0);
      v13 = sub_21CB85624();
      v15 = sub_21C98E004(v13, v14, &v23);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_21C6E5000, v6, v9, "Performing unspecified action on New App view: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x21CF16D90](v12, -1, -1);
      MEMORY[0x21CF16D90](v11, -1, -1);
    }
  }

  v16 = *(v0 + 152);
  v17 = objc_opt_self();
  v18 = [v17 pm_defaults];
  [v18 setBool:1 forKey:@"hasShownSafariAutoFillAppIntroductionView"];

  v19 = [v17 pm_defaults];
  [v19 setBool:1 forKey:@"hasCompletedAutoFillStrongPasswordIntroduction"];

  v20 = [v16 delegate];
  if (v20)
  {
    [v20 strongPasswordIntroductionViewControllerDidFinishIntroduction_];
    swift_unknownObjectRelease();
  }

  v21 = *(v0 + 8);

  return v21(0);
}

uint64_t sub_21C997200()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21C997308, v2, v1);
}

uint64_t sub_21C997308()
{
  v2 = v0[19];
  v1 = v0[20];

  v3 = objc_opt_self();
  v4 = [v3 pm_defaults];
  [v4 setBool:1 forKey:@"hasShownSafariAutoFillAppIntroductionView"];

  v5 = [v3 pm_defaults];
  [v5 setBool:1 forKey:@"hasCompletedAutoFillStrongPasswordIntroduction"];

  v6 = [v2 delegate];
  if (v6)
  {
    [v6 strongPasswordIntroductionViewControllerDidFinishIntroduction_];
    swift_unknownObjectRelease();
  }

  v7 = [objc_opt_self() sharedLogger];
  [v7 didSelectUsePasswordsApp];

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_21C997464(uint64_t a1)
{
  v2 = [objc_opt_self() pm_defaults];
  [v2 setBool:1 forKey:@"hasShownStrongPasswordSavedView"];

  if (a1)
  {
    if (a1 == 2)
    {
      sub_21C99783C();
    }

    else
    {
      if (qword_27CDEA3E0 != -1)
      {
        swift_once();
      }

      v3 = sub_21CB81C84();
      __swift_project_value_buffer(v3, qword_27CE18550);
      v4 = sub_21CB81C64();
      v5 = sub_21CB85AF4();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v12 = v7;
        *v6 = 136315138;
        type metadata accessor for PMSafariAutoFillStrongPasswordViewAction(0);
        v8 = sub_21CB85624();
        v10 = sub_21C98E004(v8, v9, &v12);

        *(v6 + 4) = v10;
        _os_log_impl(&dword_21C6E5000, v4, v5, "Performing unspecified action on Strong Password Saved view: %s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x21CF16D90](v7, -1, -1);
        MEMORY[0x21CF16D90](v6, -1, -1);
      }
    }
  }

  return 0;
}

uint64_t sub_21C997610(uint64_t a1)
{
  if (a1 == 5)
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    aBlock[4] = sub_21C9986CC;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21CB031D0;
    aBlock[3] = &block_descriptor_85;
    v4 = _Block_copy(aBlock);
    v5 = v1;

    [v2 setUserVisibleKeychainSyncEnabled:1 withCompletion:v4];
    _Block_release(v4);
  }

  else if (a1)
  {
    if (qword_27CDEA3E0 != -1)
    {
      swift_once();
    }

    v7 = sub_21CB81C84();
    __swift_project_value_buffer(v7, qword_27CE18550);
    v8 = sub_21CB81C64();
    v9 = sub_21CB85AF4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      aBlock[0] = v11;
      *v10 = 136315138;
      aBlock[6] = a1;
      type metadata accessor for PMSafariAutoFillStrongPasswordViewAction(0);
      v12 = sub_21CB85624();
      v14 = sub_21C98E004(v12, v13, aBlock);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21C6E5000, v8, v9, "Performing unspecified action on iCloud Keychain Syncing view: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x21CF16D90](v11, -1, -1);
      MEMORY[0x21CF16D90](v10, -1, -1);
    }
  }

  else
  {
    sub_21C9986F0();
  }

  return 0;
}

void sub_21C99783C()
{
  v1 = sub_21CB80BE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB85614();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_21CB85CA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  *&v11 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v0 delegate];
  if (v14)
  {
    v15 = v14;
    if ([v14 respondsToSelector_])
    {
      v16 = [v15 recentlySavedAccountForStrongPasswordIntroductionViewController_];
      swift_unknownObjectRelease();
      if (v16)
      {
        sub_21CB85CB4();
        v17 = sub_21CB85C84();
        v19 = v18;
        v20 = v17;
        (*(v9 + 8))(v13, v8);
        sub_21CB85604();
        v21 = v20;
        v22 = sub_21CB855E4();
        if (v23)
        {
          v24 = v22;
          v25 = v23;
          v26 = objc_opt_self();
          v36 = v19;
          v27 = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC290, &unk_21CBA3E10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_21CBA0690;
          v29 = *MEMORY[0x277D49CA0];
          *(inited + 32) = sub_21CB855C4();
          *(inited + 40) = v30;
          *(inited + 48) = v24;
          *(inited + 56) = v25;
          sub_21CB126C0(inited);
          swift_setDeallocating();
          sub_21C6EA794(inited + 32, &unk_27CDF3320, &unk_21CBA0E30);
          v31 = sub_21CB85464();

          v32 = [v27 passwordManagerURLWithDictionary_];

          sub_21CB80B94();
          v33 = [objc_opt_self() sharedApplication];
          v34 = sub_21CB80B74();
          sub_21CB134F0(MEMORY[0x277D84F90]);
          type metadata accessor for OpenExternalURLOptionsKey(0);
          sub_21C99857C(&unk_27CDF8A40, type metadata accessor for OpenExternalURLOptionsKey);
          v35 = sub_21CB85464();

          [v33 openURL:v34 options:v35 completionHandler:0];
          sub_21C7A34C0(v21, v36);

          (*(v2 + 8))(v5, v1);
        }

        else
        {
          sub_21C7A34C0(v20, v19);
        }
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_21C997CC8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_21CB81014();
    if (a1 == 1)
    {
      v19 = 0;
      v9 = &unk_282E49108;
    }

    else
    {
      v19 = 1;
      v9 = &unk_282E49130;
    }
  }

  else
  {
    sub_21CB81014();
    v19 = 1;
    v9 = &unk_282E490E0;
  }

  v18 = v9;
  v10 = sub_21CB81004();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v8, v4);
  sub_21CB81014();
  v14 = sub_21CB81004();
  v16 = v15;
  result = (v13)(v8, v4);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  *(a2 + 40) = 0;
  *(a2 + 41) = v19;
  return result;
}

uint64_t sub_21C997F0C()
{
  v0 = sub_21CB80DD4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = [objc_opt_self() pm_defaults];
  v12 = [v11 safari:@"safariAutoFillIntroductionIsDeferredUntilDate" dateForKey:?];

  if (v12)
  {
    sub_21CB80D94();

    (*(v1 + 32))(v10, v7, v0);
    sub_21CB80DA4();
    v13 = sub_21CB80D34();
    v14 = *(v1 + 8);
    v14(v4, v0);
    v14(v10, v0);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

BOOL _sSo56PMSafariAutoFillStrongPasswordIntroductionViewControllerC0E9ManagerUIE013hasThirdPartyei33EnabledAndPasswordsAppDisabledForbC0SbvgZ_0()
{
  v0 = [objc_opt_self() sharedFeatureManager];
  v1 = [v0 shouldAutoFillPasswordsFromKeychain];

  if (v1)
  {
    return 0;
  }

  v2 = [objc_opt_self() sharedManager];
  v3 = [v2 getEnabledExtensionsSynchronously];

  if (!v3)
  {
    return 0;
  }

  sub_21C6E8F4C(0, qword_280E22EE0, 0x277CCA9C8);
  v4 = sub_21CB85824();

  if (v4 >> 62)
  {
    v5 = sub_21CB85FA4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 > 0;
}

unint64_t sub_21C998230()
{
  result = qword_27CDF3280;
  if (!qword_27CDF3280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3288, &qword_21CBB74D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3280);
  }

  return result;
}

uint64_t sub_21C9982E8()
{
  result = sub_21CB81114();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_21C9983A4()
{
  result = qword_27CDF32F0;
  if (!qword_27CDF32F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF32F0);
  }

  return result;
}

uint64_t sub_21C9983F8(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 1;
    }

    if (a1 != 1)
    {
      goto LABEL_14;
    }

    v1 = objc_opt_self();
    v2 = [v1 pm_defaults];
    v3 = [v2 BOOLForKey_];

    if (!v3)
    {
      return 1;
    }

    if ((PMOnboardingIsICloudKeychainSyncingEnabled() & 1) == 0)
    {
      v4 = [v1 pm_defaults];
      v5 = [v4 BOOLForKey_];

      if (!v5 || (sub_21C997F0C() & 1) != 0)
      {
        return 2;
      }
    }

    a1 = sub_21CB861C4();
    __break(1u);
  }

  if (a1 == 2)
  {
    return 0;
  }

  if (a1 == 3)
  {
    return 2;
  }

LABEL_14:
  type metadata accessor for PMSafariAutoFillStrongPasswordIntroductionViewControllerMode(0);
  result = sub_21CB86374();
  __break(1u);
  return result;
}

uint64_t sub_21C99855C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21C99857C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C9985C4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21C998604(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C702EFC;

  return sub_21C996A98(a1, v4, v5, v6, v7, v8);
}

id sub_21C9986CC(id result)
{
  if ((result & 1) == 0)
  {
    return sub_21C998A7C();
  }

  return result;
}

uint64_t block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21C9986F0()
{
  v28 = sub_21CB80DD4();
  v0 = *(v28 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v28);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB80F14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_21CB80F24();
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v27);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  sub_21CB80F04();
  (*(v5 + 104))(v8, *MEMORY[0x277CC9968], v4);
  sub_21CB80DA4();
  sub_21CB80EF4();
  v20 = v3;
  v21 = v28;
  v26 = *(v0 + 8);
  v26(v20, v28);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v27);
  v22 = [objc_opt_self() pm_defaults];
  sub_21C6EDBAC(v19, v16, &unk_27CDED250, &qword_21CBA64C0);
  v23 = 0;
  if ((*(v0 + 48))(v16, 1, v21) != 1)
  {
    v23 = sub_21CB80D24();
    v26(v16, v21);
  }

  [v22 safari:v23 setDate:@"safariAutoFillIntroductionIsDeferredUntilDate" forKey:?];

  return sub_21C6EA794(v19, &unk_27CDED250, &qword_21CBA64C0);
}

id sub_21C998A7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v16[-v5];
  sub_21CB80BD4();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v8 = result;
    sub_21C6EDBAC(v6, v3, &qword_27CDEC300, &qword_21CBA3ED0);
    v9 = sub_21CB80BE4();
    v10 = *(v9 - 8);
    v11 = 0;
    if ((*(v10 + 48))(v3, 1, v9) != 1)
    {
      v11 = sub_21CB80B74();
      (*(v10 + 8))(v3, v9);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3330, &unk_21CBB0A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA0690;
    v13 = *MEMORY[0x277D0AC58];
    *(inited + 32) = sub_21CB855C4();
    *(inited + 40) = v14;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    sub_21C73181C(inited);
    swift_setDeallocating();
    sub_21C6EA794(inited + 32, &qword_27CDF86B0, &unk_21CBB7750);
    v15 = sub_21CB85464();

    [v8 openSensitiveURL:v11 withOptions:v15];

    return sub_21C6EA794(v6, &qword_27CDEC300, &qword_21CBA3ED0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21C998D48(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = type metadata accessor for PMICloudTermsAndConditionsAlert();
  v7 = (a4 + *(v6 + 24));
  v10 = *v7;
  v11 = v7[1];
  v12 = *(v7 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  sub_21CB84F34();
  v8 = *(a4 + *(v6 + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

id sub_21C998E14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_21CB80BE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80BD4();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v10 = result;
      v11 = sub_21CB80B74();
      sub_21C73181C(MEMORY[0x277D84F90]);
      v12 = sub_21CB85464();

      [v10 openSensitiveURL:v11 withOptions:v12];

      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C999028(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = (a3 + *(type metadata accessor for PMICloudTermsAndConditionsAlert() + 24));
  v6 = v4[1];
  v7 = *(v4 + 16);
  v10 = *v4;
  v5 = v10;
  v11 = v6;
  v12 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  MEMORY[0x21CF14A20](&v9);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v9 = (v9 | v3) & 1;
  return sub_21CB84F34();
}

uint64_t sub_21C9990D0(char *a1)
{
  v3 = *(type metadata accessor for PMICloudTermsAndConditionsAlert() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21C998D48(a1, v4, v5, v6);
}

uint64_t sub_21C999144@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3390, &qword_21CBB7908);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v24 - v5;
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3398, &qword_21CBB7910);
  v28 = *(v27 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v14 = v24 - v13;
  v32 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF33A0, &qword_21CBB7918);
  v25 = MEMORY[0x277CE14C0];
  sub_21C6EADEC(&qword_27CDF33A8, &qword_27CDF33A0, &qword_21CBB7918);
  sub_21CB85054();
  sub_21CB81014();
  v15 = sub_21CB81004();
  v17 = v16;
  v26 = v16;
  (*(v8 + 8))(v11, v7);
  v36 = v15;
  v37 = v17;
  v18 = v2 + *(type metadata accessor for PMGeneratedPasswordCell(0) + 32);
  v19 = *v18;
  v20 = *(v18 + 8);
  v34 = v19;
  v35 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v24[1] = v33;
  sub_21C99C6E0(v2, v6, type metadata accessor for PMGeneratedPassword);
  v21 = type metadata accessor for PMGeneratedPassword(0);
  (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
  v31 = v2;
  v30 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1748, &qword_21CBBDF70);
  sub_21C99C624();
  sub_21C71F3FC();
  sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70);
  v22 = v27;
  sub_21CB84404();

  sub_21C6EA794(v6, &qword_27CDF3390, &qword_21CBB7908);

  return (*(v28 + 8))(v14, v22);
}

uint64_t sub_21C99959C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v102 = v85 - v5;
  v101 = sub_21CB81024();
  v119 = *(v101 - 8);
  v6 = *(v119 + 64);
  MEMORY[0x28223BE20](v101);
  v100 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v113 = *(v105 - 8);
  v8 = v113[8];
  MEMORY[0x28223BE20](v105);
  v104 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v103 = v85 - v11;
  MEMORY[0x28223BE20](v12);
  v112 = v85 - v13;
  MEMORY[0x28223BE20](v14);
  v110 = v85 - v15;
  v16 = type metadata accessor for PMGeneratedPasswordCell(0);
  v17 = v16 - 8;
  v114 = *(v16 - 8);
  v117 = *(v114 + 64);
  MEMORY[0x28223BE20](v16);
  v116 = v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF33B8, &qword_21CBB7920);
  v19 = *(v92 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v92);
  v22 = v85 - v21;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF33C0, &qword_21CBB7928);
  v94 = *(v93 - 8);
  v23 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  v89 = v85 - v24;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF33C8, &qword_21CBB7930);
  v97 = *(v96 - 8);
  v25 = *(v97 + 64);
  MEMORY[0x28223BE20](v96);
  v109 = v85 - v26;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF33D0, &qword_21CBB7938);
  v111 = *(v99 - 8);
  v27 = v111[8];
  MEMORY[0x28223BE20](v99);
  v98 = v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v118 = v85 - v30;
  v108 = a1;
  v121 = a1;
  v120 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF33D8, &qword_21CBB7940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF33E0, &qword_21CBB7948);
  sub_21C6EADEC(&qword_27CDF33E8, &qword_27CDF33D8, &qword_21CBB7940);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF33F0, &qword_21CBB7950);
  v32 = sub_21C99C89C();
  v95 = sub_21C71F3FC();
  v124 = v31;
  v125 = MEMORY[0x277D837D0];
  v126 = v32;
  v127 = v95;
  swift_getOpaqueTypeConformance2();
  sub_21CB825D4();
  v124 = 0x4010000000000000;
  LOBYTE(v125) = 0;
  v33 = sub_21C99CD3C();
  v34 = sub_21C830E5C();
  v35 = v92;
  sub_21CB844C4();
  (*(v19 + 8))(v22, v35);
  v36 = v108;
  v37 = (v108 + *(v17 + 52));
  v91 = *v37;
  v90 = *(v37 + 1);
  v122 = v91;
  v123 = v90;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v85[1] = v124;
  v86 = v126;
  v115 = type metadata accessor for PMGeneratedPasswordCell;
  v38 = v116;
  sub_21C99C6E0(v36, v116, type metadata accessor for PMGeneratedPasswordCell);
  v114 = *(v114 + 80);
  v39 = (v114 + 16) & ~v114;
  v40 = swift_allocObject();
  v107 = type metadata accessor for PMGeneratedPasswordCell;
  sub_21C99C748(v38, v40 + v39, type metadata accessor for PMGeneratedPasswordCell);
  v85[0] = type metadata accessor for PMGeneratedPasswordMenu(0);
  v124 = v35;
  v125 = &type metadata for PMListSubtitleCellLabeledContentStyle;
  v126 = v33;
  v127 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = sub_21C99CCF4(&qword_27CDF3448, type metadata accessor for PMGeneratedPasswordMenu);
  v42 = v93;
  v43 = v89;
  sub_21CB848E4();

  v44 = v42;
  (*(v94 + 8))(v43, v42);
  LOBYTE(v124) = v91;
  v125 = v90;
  sub_21CB84D54();
  v45 = v116;
  sub_21C99C6E0(v36, v116, v115);
  v87 = v39;
  v46 = swift_allocObject() + v39;
  v47 = v45;
  v48 = v107;
  sub_21C99C748(v47, v46, v107);
  v124 = v44;
  v125 = v85[0];
  v126 = OpaqueTypeConformance2;
  v127 = v84;
  swift_getOpaqueTypeConformance2();
  v49 = v96;
  v50 = v109;
  sub_21CB84934();

  (*(v97 + 8))(v50, v49);
  v51 = v100;
  sub_21CB81014();
  v52 = sub_21CB81004();
  v54 = v53;
  v55 = *(v119 + 8);
  v119 += 8;
  v56 = v51;
  v57 = v101;
  v55(v51, v101);
  v124 = v52;
  v125 = v54;
  v58 = v36;
  v59 = v116;
  sub_21C99C6E0(v58, v116, v115);
  v60 = v87;
  v61 = swift_allocObject();
  sub_21C99C748(v59, v61 + v60, v48);
  v62 = v110;
  sub_21CB84DE4();
  sub_21CB81014();
  v63 = sub_21CB81004();
  v65 = v64;
  v55(v56, v57);
  v124 = v63;
  v125 = v65;
  v66 = v102;
  sub_21CB81ED4();
  v67 = sub_21CB81F14();
  (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
  sub_21C99C6E0(v108, v59, v115);
  v68 = swift_allocObject();
  sub_21C99C748(v59, v68 + v60, v107);
  v69 = v112;
  sub_21CB84DC4();
  v70 = v111[2];
  v71 = v98;
  v72 = v99;
  v70(v98, v118, v99);
  v73 = v113[2];
  v74 = v103;
  v75 = v105;
  v73(v103, v62, v105);
  v76 = v104;
  v77 = v69;
  v78 = v75;
  v73(v104, v77, v75);
  v79 = v106;
  v70(v106, v71, v72);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3458, &qword_21CBB7978);
  v73(&v79[*(v80 + 48)], v74, v78);
  v73(&v79[*(v80 + 64)], v76, v78);
  v81 = v113[1];
  v81(v112, v78);
  v81(v110, v78);
  v82 = v111[1];
  v82(v118, v72);
  v81(v76, v78);
  v81(v74, v78);
  return (v82)(v71, v72);
}

uint64_t sub_21C99A2EC(uint64_t a1)
{
  v2 = type metadata accessor for PMGeneratedPasswordCell(0);
  v3 = (a1 + *(v2 + 44));
  v7 = *v3;
  v9 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  result = sub_21CB84D54();
  if (v6 == 1)
  {
    v5 = (a1 + *(v2 + 24));
    v8 = *v5;
    v10 = *(v5 + 1);
    return sub_21CB84D64();
  }

  return result;
}

uint64_t sub_21C99A3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v47 = a2;
  v48 = a1;
  v57 = a3;
  v3 = sub_21CB81024();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3);
  v54 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMGeneratedPassword(0);
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for PMGeneratedPasswordCell(0);
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x28223BE20](v15);
  v53 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v52 = &v44 - v20;
  MEMORY[0x28223BE20](v21);
  v51 = &v44 - v22;
  MEMORY[0x28223BE20](v23);
  v44 = &v44 - v24;
  sub_21CB81ED4();
  v25 = sub_21CB81F14();
  v26 = *(v25 - 8);
  v45 = *(v26 + 56);
  v46 = v26 + 56;
  v45(v14, 0, 1, v25);
  sub_21C99C6E0(v47, v10, type metadata accessor for PMGeneratedPasswordCell);
  sub_21C99C6E0(v48, &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGeneratedPassword);
  v27 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v28 = (v9 + *(v50 + 80) + v27) & ~*(v50 + 80);
  v29 = swift_allocObject();
  sub_21C99C748(v10, v29 + v27, type metadata accessor for PMGeneratedPasswordCell);
  sub_21C99C748(&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for PMGeneratedPassword);
  v30 = v44;
  sub_21CB84D94();
  v31 = v54;
  sub_21CB81014();
  v32 = sub_21CB81004();
  v34 = v33;
  (*(v55 + 8))(v31, v56);
  v58 = v32;
  v59 = v34;
  sub_21CB81EF4();
  v45(v14, 0, 1, v25);
  sub_21C71F3FC();
  v35 = v51;
  sub_21CB84DC4();
  v36 = v16[2];
  v37 = v52;
  v36(v52, v30, v15);
  v38 = v53;
  v39 = v35;
  v36(v53, v35, v15);
  v40 = v57;
  v36(v57, v37, v15);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v36(&v40[*(v41 + 48)], v38, v15);
  v42 = v16[1];
  v42(v39, v15);
  v42(v30, v15);
  v42(v38, v15);
  return (v42)(v37, v15);
}

uint64_t sub_21C99A97C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21C99AAA8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21C99ABD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = type metadata accessor for PMGeneratedPasswordCell(0);
  v79 = *(v3 - 8);
  v4 = *(v79 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v80 = v5;
  v81 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v69 - v8;
  v10 = sub_21CB83ED4();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = *(v71 + 64);
  MEMORY[0x28223BE20](v10);
  v70 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CB839C4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3410, &qword_21CBB7960);
  v18 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v20 = &v69 - v19;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF33F0, &qword_21CBB7950);
  v21 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v78 = &v69 - v22;
  v23 = type metadata accessor for PMGeneratedPassword.Storage(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for PMGeneratedPassword(0);
  sub_21C99C6E0(a1 + *(v27 + 20), v26, type metadata accessor for PMGeneratedPassword.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = *v26;
  if (EnumCaseMultiPayload == 1)
  {

    v30 = *(v26 + 1);
    v74 = *(v26 + 2);
    v75 = v30;
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
    v32 = sub_21CB80DD4();
    (*(*(v32 - 8) + 8))(&v26[v31], v32);
  }

  else
  {
    v33 = [*v26 password];
    v34 = sub_21CB855C4();
    v74 = v35;
    v75 = v34;
  }

  v84 = sub_21C99B418();
  v85 = v36;
  v73 = sub_21C71F3FC();
  v37 = sub_21CB84054();
  v39 = v38;
  v84 = v37;
  v85 = v38;
  v69 = a1;
  v41 = v40 & 1;
  v86 = v40 & 1;
  v87 = v42;
  sub_21CB839B4();
  sub_21CB84244();
  (*(v14 + 8))(v17, v13);
  sub_21C74A72C(v37, v39, v41);

  v43 = sub_21CB837E4();
  *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3438, &qword_21CBB7970) + 36)] = v43;
  v45 = v70;
  v44 = v71;
  v46 = v72;
  (*(v71 + 104))(v70, *MEMORY[0x277CE0A68], v72);
  v47 = *MEMORY[0x277CE0980];
  v48 = sub_21CB83DC4();
  v49 = *(v48 - 8);
  (*(v49 + 104))(v9, v47, v48);
  (*(v49 + 56))(v9, 0, 1, v48);
  v50 = sub_21CB83E24();
  sub_21C6EA794(v9, &qword_27CDEBB58, &qword_21CBAF8A0);
  (*(v44 + 8))(v45, v46);
  KeyPath = swift_getKeyPath();
  v52 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3428, &qword_21CBB7968) + 36)];
  *v52 = KeyPath;
  v52[1] = v50;
  v53 = *MEMORY[0x277D49BF0];
  sub_21CB855C4();
  v54 = [objc_opt_self() pm_defaults];
  v55 = sub_21CB81E74();
  v56 = &v20[*(v76 + 36)];
  *v56 = v55;
  v56[8] = 1;
  MEMORY[0x28223BE20](v55);
  v57 = v69;
  *(&v69 - 2) = v69;
  type metadata accessor for PMGeneratedPasswordMenu(0);
  sub_21C99CA60();
  sub_21C99CCF4(&qword_27CDF3448, type metadata accessor for PMGeneratedPasswordMenu);
  v58 = v78;
  sub_21CB84154();
  sub_21C6EA794(v20, &qword_27CDF3410, &qword_21CBB7960);
  v59 = v81;
  sub_21C99C6E0(v57, v81, type metadata accessor for PMGeneratedPasswordCell);
  v60 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v61 = swift_allocObject();
  sub_21C99C748(v59, v61 + v60, type metadata accessor for PMGeneratedPasswordCell);
  v62 = (v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3408, &qword_21CBB7958) + 36));
  *v62 = sub_21C99D340;
  v62[1] = v61;
  v83 = 0;
  sub_21CB84D44();
  LOBYTE(v61) = v84;
  v63 = v85;
  v64 = swift_getKeyPath();
  v65 = v58 + *(v77 + 36);
  *v65 = v61;
  *(v65 + 8) = v63;
  *(v65 + 16) = v64;
  *(v65 + 24) = 0;
  v67 = v74;
  v66 = v75;
  if (sub_21CB85694() <= 29)
  {

    v66 = 0;
    v67 = 0xE000000000000000;
  }

  v84 = v66;
  v85 = v67;
  sub_21C99C89C();
  sub_21CB846E4();

  return sub_21C6EA794(v58, &qword_27CDF33F0, &qword_21CBB7950);
}

uint64_t sub_21C99B418()
{
  v1 = type metadata accessor for PMGeneratedPassword.Storage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (v0 + *(type metadata accessor for PMGeneratedPasswordCell(0) + 24));
  v6 = *v5;
  v7 = *(v5 + 1);
  v17[16] = v6;
  v18 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  if (v17[15] == 1)
  {
    v8 = type metadata accessor for PMGeneratedPassword(0);
    sub_21C99C6E0(v0 + *(v8 + 20), v4, type metadata accessor for PMGeneratedPassword.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v10 = *v4;
    if (EnumCaseMultiPayload == 1)
    {

      v11 = *(v4 + 1);
      v12 = *(v4 + 2);
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
      v14 = sub_21CB80DD4();
      (*(*(v14 - 8) + 8))(&v4[v13], v14);
    }

    else
    {
      v15 = [*v4 password];
      v11 = sub_21CB855C4();
    }
  }

  else
  {
    if (qword_27CDEA4B8 != -1)
    {
      swift_once();
    }

    v11 = qword_27CE18768;
  }

  return v11;
}

uint64_t sub_21C99B600(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for PMGeneratedPasswordCell(0) + 24));
  v4 = *v2;
  v5 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

double sub_21C99B674@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB83074();
  v16 = 1;
  sub_21C99B76C(a1, &v10);
  v19 = v12;
  v20 = v13;
  v17 = v10;
  v18 = v11;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v14;
  v22[1] = v11;
  v21 = v14;
  v22[0] = v10;
  sub_21C99D204(&v17, &v9);
  sub_21C6EA794(v22, &qword_27CDF3460, &unk_21CBB7980);
  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *&v15[48];
  *(a2 + 49) = *&v15[32];
  *(a2 + 65) = v5;
  *(a2 + 81) = *&v15[64];
  result = *v15;
  v7 = *&v15[16];
  *(a2 + 17) = *v15;
  v8 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 96) = *&v15[79];
  *(a2 + 33) = v7;
  return result;
}

uint64_t sub_21C99B76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v66 - v6;
  v7 = sub_21CB83ED4();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMGeneratedPassword.Storage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_21C9933C4();
  v72 = v15;
  v66 = sub_21C71F3FC();
  v16 = sub_21CB84054();
  v18 = v17;
  v20 = v19;
  v21 = *(type metadata accessor for PMGeneratedPassword(0) + 20);
  v70 = a1;
  sub_21C99C6E0(a1 + v21, v14, type metadata accessor for PMGeneratedPassword.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v23 = *v14;
  if (EnumCaseMultiPayload == 1)
  {

    v24 = *(v14 + 2);

    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
    v26 = sub_21CB80DD4();
    (*(*(v26 - 8) + 8))(&v14[v25], v26);
  }

  else
  {
    v27 = [*v14 wasGeneratedInPrivateBrowsingSession];

    if (v27)
    {
      v28 = sub_21CB837E4();
      goto LABEL_6;
    }
  }

  v28 = sub_21CB837B4();
LABEL_6:
  LODWORD(v71) = v28;
  v29 = sub_21CB83FC4();
  v31 = v30;
  v33 = v32;
  sub_21C74A72C(v16, v18, v20 & 1);

  v35 = v67;
  v34 = v68;
  (*(v67 + 104))(v10, *MEMORY[0x277CE0A68], v68);
  v36 = sub_21CB83DC4();
  v37 = v69;
  (*(*(v36 - 8) + 56))(v69, 1, 1, v36);
  sub_21CB83DE4();
  sub_21CB83E24();
  sub_21C6EA794(v37, &qword_27CDEBB58, &qword_21CBAF8A0);
  (*(v35 + 8))(v10, v34);
  v38 = sub_21CB84024();
  v68 = v40;
  v69 = v39;
  v42 = v41;

  sub_21C74A72C(v29, v31, v33 & 1);

  v43 = sub_21C993684();
  if (v44)
  {
    v71 = v43;
    v72 = v44;
    v45 = sub_21CB84054();
    v47 = v46;
    v49 = v48;
    v70 = v38;
    LODWORD(v71) = sub_21CB837E4();
    v50 = sub_21CB83FC4();
    v52 = v51;
    v53 = a2;
    v54 = v42;
    v56 = v55;
    v58 = v57;
    sub_21C74A72C(v45, v47, v49 & 1);
    v38 = v70;

    v59 = v56 & 1;
    v42 = v54;
    a2 = v53;
    sub_21C79B058(v50, v52, v59);

    sub_21C74A72C(v50, v52, v59);

    sub_21C79B058(v50, v52, v59);

    v60 = 1;
  }

  else
  {
    v60 = 0;
    v50 = 0;
    v52 = 0;
    v59 = 0;
    v58 = 0;
  }

  v61 = v42 & 1;
  LOBYTE(v71) = v61;
  v62 = v69;
  sub_21C79B058(v38, v69, v61);
  v63 = v68;

  sub_21C99D274(0, v60, v50, v52, v59, v58);
  sub_21C99D2C0(0, v60, v50, v52, v59, v58);
  v64 = v71;
  *a2 = v38;
  *(a2 + 8) = v62;
  *(a2 + 16) = v64;
  *(a2 + 24) = v63;
  *(a2 + 32) = 0;
  *(a2 + 40) = v60;
  *(a2 + 48) = v50;
  *(a2 + 56) = v52;
  *(a2 + 64) = v59;
  *(a2 + 72) = v58;
  sub_21C99D2C0(0, v60, v50, v52, v59, v58);
  sub_21C74A72C(v38, v62, v61);
}

uint64_t sub_21C99BCE0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for PMGeneratedPasswordCell(0) + 32));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21C99BD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_21C99C748(a1, a4, type metadata accessor for PMGeneratedPassword);
  v7 = type metadata accessor for PMGeneratedPasswordCell(0);
  v8 = (a4 + v7[5]);
  *v8 = a2;
  v8[1] = a3;
  v9 = a4 + v7[6];
  sub_21CB84D44();
  *v9 = v21;
  *(v9 + 8) = v22;
  v10 = a4 + v7[7];
  sub_21CB84D44();
  *v10 = v21;
  *(v10 + 8) = v22;
  v11 = a4 + v7[8];
  sub_21CB84D44();
  *v11 = v21;
  *(v11 + 8) = v22;
  v12 = a4 + v7[9];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = v7[10];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v15 = (a4 + v13);
  sub_21CB86544();
  sub_21C7073D0(KeyPath, v21);

  type metadata accessor for PMGeneratedPasswordStore();
  sub_21C99CCF4(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore);
  v16 = sub_21CB82674();
  v18 = v17;

  *v15 = v16;
  v15[1] = v18;
  v19 = a4 + v7[11];
  result = sub_21CB84D44();
  *v19 = v21;
  *(v19 + 8) = v22;
  return result;
}

uint64_t sub_21C99BF9C(uint64_t a1)
{
  v2 = type metadata accessor for PMGeneratedPassword.Storage(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CDEA480 != -1)
  {
    swift_once();
  }

  v6 = qword_27CE18710;
  v7 = type metadata accessor for PMGeneratedPassword(0);
  sub_21C99C6E0(a1 + *(v7 + 20), v5, type metadata accessor for PMGeneratedPassword.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v5;
  if (EnumCaseMultiPayload == 1)
  {

    v11 = *(v5 + 1);
    v10 = *(v5 + 2);
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
    v13 = sub_21CB80DD4();
    (*(*(v13 - 8) + 8))(&v5[v12], v13);
  }

  else
  {
    v14 = [*v5 password];
    v11 = sub_21CB855C4();
    v10 = v15;
  }

  v16 = *(v6 + 16);
  sub_21CADAA84(v11, v10, 1);
}

uint64_t sub_21C99C140@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  sub_21CB81014();
  sub_21CB81014();
  v10 = sub_21CB80FF4();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v6, v2);
  v13(v9, v2);
  v22[0] = v10;
  v22[1] = v12;
  sub_21C71F3FC();
  v14 = sub_21CB84054();
  v16 = v15;
  LOBYTE(v9) = v17;
  v19 = v18;
  v20 = sub_21CB84BB4();
  *a1 = v14;
  *(a1 + 8) = v16;
  LOBYTE(v9) = v9 & 1;
  *(a1 + 16) = v9;
  *(a1 + 24) = v19;
  *(a1 + 32) = v20;
  sub_21C79B058(v14, v16, v9);

  sub_21C74A72C(v14, v16, v9);
}

uint64_t sub_21C99C330(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_21C99C6E0(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGeneratedPasswordMenu);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_21C99C748(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for PMGeneratedPasswordMenu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC38, &qword_21CBA5418);
  sub_21C6EADEC(&qword_27CDECC40, &qword_27CDECC38, &qword_21CBA5418);
  return sub_21CB84DA4();
}

void sub_21C99C4E0()
{
  type metadata accessor for PMGeneratedPassword(319);
  if (v0 <= 0x3F)
  {
    sub_21C7226D8();
    if (v1 <= 0x3F)
    {
      sub_21C713654(319, &qword_27CDF4000, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_21C713654(319, &qword_27CDEB890, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_21C706378();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_21C99C624()
{
  result = qword_27CDF33B0;
  if (!qword_27CDF33B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3398, &qword_21CBB7910);
    sub_21C6EADEC(&qword_27CDF33A8, &qword_27CDF33A0, &qword_21CBB7918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF33B0);
  }

  return result;
}

uint64_t sub_21C99C6E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C99C748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21C99C7B0()
{
  v1 = (type metadata accessor for PMGeneratedPasswordCell(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(type metadata accessor for PMGeneratedPassword(0) - 8);
  v5 = (v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
  v6 = *(v0 + v1[12] + v2 + 8);
  sub_21C9A8C74(v5, 0, 0);
}

unint64_t sub_21C99C89C()
{
  result = qword_27CDF33F8;
  if (!qword_27CDF33F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF33F0, &qword_21CBB7950);
    sub_21C99C928();
    sub_21C82F5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF33F8);
  }

  return result;
}

unint64_t sub_21C99C928()
{
  result = qword_27CDF3400;
  if (!qword_27CDF3400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3408, &qword_21CBB7958);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3410, &qword_21CBB7960);
    type metadata accessor for PMGeneratedPasswordMenu(255);
    sub_21C99CA60();
    sub_21C99CCF4(&qword_27CDF3448, type metadata accessor for PMGeneratedPasswordMenu);
    swift_getOpaqueTypeConformance2();
    sub_21C7E3870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3400);
  }

  return result;
}

unint64_t sub_21C99CA60()
{
  result = qword_27CDF3418;
  if (!qword_27CDF3418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3410, &qword_21CBB7960);
    sub_21C99CAEC();
    sub_21C99CCA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3418);
  }

  return result;
}

unint64_t sub_21C99CAEC()
{
  result = qword_27CDF3420;
  if (!qword_27CDF3420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3428, &qword_21CBB7968);
    sub_21C99CBA4();
    sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3420);
  }

  return result;
}

unint64_t sub_21C99CBA4()
{
  result = qword_27CDF3430;
  if (!qword_27CDF3430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3438, &qword_21CBB7970);
    sub_21CB839C4();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEC730, &qword_27CDEC738, &unk_21CBA6BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3430);
  }

  return result;
}

unint64_t sub_21C99CCA0()
{
  result = qword_27CDF3440;
  if (!qword_27CDF3440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3440);
  }

  return result;
}

uint64_t sub_21C99CCF4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21C99CD3C()
{
  result = qword_27CDF3450;
  if (!qword_27CDF3450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF33B8, &qword_21CBB7920);
    sub_21C6EADEC(&qword_27CDF33E8, &qword_27CDF33D8, &qword_21CBB7940);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF33F0, &qword_21CBB7950);
    sub_21C99C89C();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3450);
  }

  return result;
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = type metadata accessor for PMGeneratedPasswordCell(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v21 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(type metadata accessor for PMGeneratedPassword.ID(0) + 24);
  v8 = sub_21CB80DD4();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  v10 = v0 + v3 + *(type metadata accessor for PMGeneratedPassword(0) + 20);
  type metadata accessor for PMGeneratedPassword.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(v10 + 16);

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
    v9(v10 + *(v13 + 64), v8);
  }

  v14 = *(v4 + v1[5] + 8);

  v15 = *(v4 + v1[6] + 8);

  v16 = *(v4 + v1[7] + 8);

  v17 = *(v4 + v1[8] + 8);

  sub_21C7025C4(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v18 = *(v4 + v1[10] + 8);

  v19 = *(v4 + v1[11] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v21, v2 | 7);
}

uint64_t sub_21C99D0F0()
{
  v1 = type metadata accessor for PMGeneratedPasswordCell(0);
  v2 = v0 + *(v1 + 20) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_21C99D188(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_21C99D204(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3460, &unk_21CBB7980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C99D274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_21C79B058(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_21C99D2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_21C74A72C(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_21C99D340(uint64_t a1)
{
  v3 = *(type metadata accessor for PMGeneratedPasswordCell(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C99B600(a1, v4);
}

uint64_t sub_21C99D3D8()
{
  result = type metadata accessor for PMGeneratedPassword(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id PMGeneratedPasswordsLogController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s17PasswordManagerUI33PMGeneratedPasswordsLogControllerC04viewG04with10searchTerm19alwaysShowSearchBarSo06UIViewG0CSo0deF8Delegate_p_SSSbtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v34 = a4;
  v36 = a2;
  v37 = a3;
  v33[1] = a1;
  v4 = type metadata accessor for PMGeneratedPasswordsLogView();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3480, &qword_21CBB7A68);
  v8 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v33 - v12;
  v14 = [objc_allocWithZone(type metadata accessor for PMPasswordManagerState()) init];
  swift_unknownObjectWeakInit();
  v15 = v4[5];
  *&v7[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v16 = v4[6];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v18 = &v7[v16];
  sub_21CB86544();
  sub_21C7073D0(KeyPath, v40);

  type metadata accessor for PMGeneratedPasswordStore();
  sub_21C99D9AC(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore);
  v19 = sub_21CB82674();
  v21 = v20;

  *v18 = v19;
  v18[1] = v21;
  v22 = &v7[v4[8]];
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_21CB84D44();
  v23 = &v7[v4[9]];
  v38 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEA8, &unk_21CBA38A0);
  sub_21CB84D44();
  v24 = *(&v40 + 1);
  *v23 = v40;
  *(v23 + 1) = v24;
  v25 = v4[10];
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEB0, &unk_21CBA5440);
  sub_21CB84D44();
  *&v7[v25] = v40;
  swift_unknownObjectWeakAssign();
  v7[v4[7]] = v34 & 1;
  v26 = v37;

  *v22 = v36;
  *(v22 + 1) = v26;
  *(v22 + 2) = 0;
  sub_21C99D9AC(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  v27 = sub_21CB81CE4();
  sub_21C99D9F4(v7, v13);
  v28 = &v13[*(v35 + 36)];
  *v28 = v27;
  v28[1] = v14;
  v29 = v14;
  sub_21C99DA58(v7);
  sub_21C99DAB4(v13, v10);
  v30 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDF3488, &qword_21CBB7AC8));
  v31 = sub_21CB833B4();

  sub_21C99DB24(v13);
  return v31;
}

uint64_t sub_21C99D9AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C99D9F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGeneratedPasswordsLogView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C99DA58(uint64_t a1)
{
  v2 = type metadata accessor for PMGeneratedPasswordsLogView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C99DAB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3480, &qword_21CBB7A68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C99DB24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3480, &qword_21CBB7A68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C99DB8C()
{
  sub_21C72C1CC();
  sub_21CB82F94();
  return v1;
}

void sub_21C99DBD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_21C99E364();
    if (v3 <= 0x3F)
    {
      sub_21C99E3B4();
      if (v4 <= 0x3F)
      {
        sub_21C99E418(319, &qword_27CDF3528, MEMORY[0x277CE0A00]);
        if (v5 <= 0x3F)
        {
          sub_21C99E418(319, &qword_27CDEB898, MEMORY[0x277CDFA28]);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21C99DCE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_21CB83E64() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(sub_21CB82834() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v14 = *(v9 + 80) & 0xF8 | 7;
    v15 = *(v11 + 80) & 0xF8 | 7;
    v16 = v12 + ((v10 + v15 + ((((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v14 + 9) & ~v14) + 1) & ~v15) + 1;
    v17 = 8 * v16;
    if (v16 > 3)
    {
      goto LABEL_13;
    }

    v20 = ((a2 - v8 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v20 >= 2)
    {
LABEL_13:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_32;
      }

LABEL_21:
      v21 = (v18 - 1) << v17;
      if (v16 > 3)
      {
        v21 = 0;
      }

      if (v16)
      {
        if (v16 > 3)
        {
          LODWORD(v16) = 4;
        }

        if (v16 > 2)
        {
          if (v16 == 3)
          {
            LODWORD(v16) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v16) = *a1;
          }
        }

        else if (v16 == 1)
        {
          LODWORD(v16) = *a1;
        }

        else
        {
          LODWORD(v16) = *a1;
        }
      }

      v24 = v8 + (v16 | v21);
      return (v24 + 1);
    }
  }

LABEL_32:
  if (v7 < 0x7FFFFFFE)
  {
    v23 = *(((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    v24 = v23 - 1;
    if (v24 < 0)
    {
      v24 = -1;
    }

    return (v24 + 1);
  }

  v22 = *(v6 + 48);

  return v22(a1, v7, v5);
}

void sub_21C99DFD0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v28 = *(a4 + 16);
  v7 = *(v28 - 8);
  v27 = v7;
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(sub_21CB83E64() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(sub_21CB82834() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v7 + 64);
  v15 = *(v10 + 80) & 0xF8 | 7;
  v16 = *(v12 + 80) & 0xF8 | 7;
  v17 = v13 + ((v11 + v16 + ((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 9) & ~v15) + 1) & ~v16) + 1;
  if (a3 <= v9)
  {
    v19 = 0;
    v18 = a1;
  }

  else
  {
    v18 = a1;
    if (v17 <= 3)
    {
      v22 = ((a3 - v9 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  if (v9 < a2)
  {
    v20 = ~v9 + a2;
    if (v17 < 4)
    {
      v21 = (v20 >> (8 * v17)) + 1;
      if (v17)
      {
        v24 = v20 & ~(-1 << (8 * v17));
        bzero(v18, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *v18 = v24;
            if (v19 > 1)
            {
LABEL_52:
              if (v19 == 2)
              {
                *&v18[v17] = v21;
              }

              else
              {
                *&v18[v17] = v21;
              }

              return;
            }
          }

          else
          {
            *v18 = v20;
            if (v19 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *v18 = v24;
        v18[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(v18, v17);
      *v18 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v19)
    {
      v18[v17] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&v18[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&v18[v17] = 0;
  }

  else if (v19)
  {
    v18[v17] = 0;
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
  if (v8 < 0x7FFFFFFE)
  {
    v26 = (&v18[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v26 = (a2 - 0x7FFFFFFF);
      v26[1] = 0;
    }

    else
    {
      v26[1] = a2;
    }
  }

  else
  {
    v25 = *(v27 + 56);

    v25(v18, a2, v8, v28);
  }
}

void sub_21C99E364()
{
  if (!qword_27CDF3510)
  {
    v0 = sub_21CB84D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF3510);
    }
  }
}

void sub_21C99E3B4()
{
  if (!qword_27CDF3518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3520, qword_21CBB7BA8);
    v0 = sub_21CB82074();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF3518);
    }
  }
}

void sub_21C99E418(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB82074();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_21C99E4B0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v5 = *v2;
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3558, &qword_21CBB7C20);
  sub_21CB84D54();
  return v4 / 14.0;
}

uint64_t sub_21C99E518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v92 = sub_21CB82834();
  v87 = *(v92 - 8);
  v3 = *(v87 + 64);
  MEMORY[0x28223BE20](v92);
  v86 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a1;
  v5 = *(a1 - 8);
  a1 -= 8;
  v84 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  v91 = v8;
  v83 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21CB82F84();
  v64 = *(v65 - 8);
  v9 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v63 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3530, &qword_21CBB7C10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3538, &qword_21CBB7C18);
  v11 = *(a1 + 24);
  v93 = *(a1 + 32);
  v94 = v11;
  v12 = *(*(*(v93 + 16) + 8) + 8);
  sub_21CB831E4();
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  v66 = sub_21CB84F04();
  v13 = sub_21CB84B94();
  v68 = *(v13 - 8);
  v14 = *(v68 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v63 - v15;
  v17 = sub_21CB828F4();
  v81 = *(v17 - 8);
  v18 = *(v81 + 64);
  MEMORY[0x28223BE20](v17);
  v90 = &v63 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3520, qword_21CBB7BA8);
  WitnessTable = swift_getWitnessTable();
  v67 = swift_getWitnessTable();
  v102 = v67;
  v103 = MEMORY[0x277CDF678];
  v21 = swift_getWitnessTable();
  v22 = sub_21C99FB6C();
  v98 = v17;
  v99 = v20;
  v100 = v21;
  v101 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = *(OpaqueTypeMetadata2 - 8);
  v24 = *(v79 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v89 = &v63 - v25;
  v82 = v17;
  v98 = v17;
  v99 = v20;
  v76 = v20;
  v70 = v21;
  v100 = v21;
  v101 = v22;
  v69 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_21C99FC44();
  v80 = OpaqueTypeMetadata2;
  v98 = OpaqueTypeMetadata2;
  v99 = v92;
  v74 = OpaqueTypeConformance2;
  v100 = OpaqueTypeConformance2;
  v101 = v27;
  v73 = v27;
  v77 = swift_getOpaqueTypeMetadata2();
  v75 = *(v77 - 8);
  v28 = *(v75 + 64);
  MEMORY[0x28223BE20](v77);
  v71 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v72 = &v63 - v31;
  v95 = v94;
  v96 = v93;
  v32 = v78;
  v97 = v78;
  sub_21CB84B84();
  v33 = (v32 + *(a1 + 44));
  v35 = v33[1];
  v98 = *v33;
  v34 = v98;
  v99 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3558, &qword_21CBB7C20);
  sub_21CB84D54();
  v98 = v34;
  v99 = v35;
  sub_21CB84D54();
  sub_21CB85214();
  sub_21CB84794();
  (*(v68 + 8))(v16, v13);
  v36 = v32 + *(a1 + 48);
  v37 = *v36;
  LOBYTE(v21) = *(v36 + 8);

  if ((v21 & 1) == 0)
  {
    sub_21CB85B04();
    v38 = sub_21CB83C94();
    sub_21CB81C14();

    v39 = v63;
    sub_21CB82F74();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v64 + 8))(v39, v65);
    v37 = v98;
  }

  v67 = v37;
  v98 = v37;
  v40 = v84;
  v68 = *(v84 + 16);
  v41 = v83;
  v42 = v85;
  (v68)(v83, v32, v85);
  v43 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v44 = swift_allocObject();
  v45 = v93;
  *(v44 + 16) = v94;
  *(v44 + 24) = v45;
  v84 = *(v40 + 32);
  (v84)(v44 + v43, v41, v42);
  v46 = v90;
  v47 = v82;
  sub_21CB84934();

  (*(v81 + 8))(v46, v47);
  v48 = v32 + *(v42 + 48);
  v49 = v86;
  sub_21C7448E0(v86);
  (v68)(v41, v32, v42);
  v50 = swift_allocObject();
  v51 = v93;
  *(v50 + 16) = v94;
  *(v50 + 24) = v51;
  (v84)(v50 + v43, v41, v42);
  v52 = v71;
  v53 = v80;
  v54 = v92;
  v55 = v74;
  v56 = v73;
  v57 = v89;
  sub_21CB84934();

  (*(v87 + 8))(v49, v54);
  (*(v79 + 8))(v57, v53);
  v98 = v53;
  v99 = v54;
  v100 = v55;
  v101 = v56;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v72;
  v60 = v77;
  sub_21C72BE10(v52, v77, v58);
  v61 = *(v75 + 8);
  v61(v52, v60);
  sub_21C72BE10(v59, v60, v58);
  return (v61)(v59, v60);
}

uint64_t sub_21C99EFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3530, &qword_21CBB7C10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3538, &qword_21CBB7C18);
  v6 = *(*(*(a3 + 16) + 8) + 8);
  sub_21CB831E4();
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  v7 = sub_21CB84F04();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v18[-v13];
  v19 = a2;
  v20 = a3;
  v21 = a1;
  sub_21CB85214();
  sub_21CB84EF4();
  WitnessTable = swift_getWitnessTable();
  sub_21C72BE10(v11, v7, WitnessTable);
  v16 = *(v8 + 8);
  v16(v11, v7);
  sub_21C72BE10(v14, v7, WitnessTable);
  return (v16)(v14, v7);
}

uint64_t sub_21C99F1E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v66 = a3;
  v4 = *(a2 + 16);
  v52[0] = a2;
  v5 = *(v4 + 16);
  v6 = v4;
  v53 = v4;
  v7 = *(*(v5 + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v54 = v52 - v10;
  v67 = *(a1 - 8);
  v11 = *(v67 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3538, &qword_21CBB7C18);
  v55 = *(*(v6 + 8) + 8);
  v19 = sub_21CB831E4();
  v59 = v18;
  v62 = v19;
  v60 = sub_21CB828F4();
  v63 = *(v60 - 8);
  v20 = *(v63 + 64);
  MEMORY[0x28223BE20](v60);
  v65 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v61 = v52 - v23;
  MEMORY[0x28223BE20](v24);
  v64 = v52 - v25;
  v26 = type metadata accessor for PMProgressView();
  sub_21C99E4B0(v26);
  v27 = 0.0;
  sub_21CB82164();
  v28 = v89;
  v29 = v90;
  v30 = v91;
  v56 = v92;
  v31 = v93;
  v32 = sub_21CB85214();
  v57 = v33;
  v58 = v32;
  v52[2] = v7;
  v52[1] = swift_getAssociatedConformanceWitness();
  sub_21CB86384();
  sub_21CB86324();
  v34 = *(*(v53 + 24) + 8);
  sub_21CB86394();
  v35 = *(v67 + 8);
  v67 += 8;
  v35(v14, a1);
  sub_21C99FD18();
  sub_21CB85454();
  if (v88 > 0.0)
  {
    v27 = v88;
  }

  v36 = sub_21CB84AC4();
  sub_21C99E4B0(v26);
  sub_21CB82164();
  v37 = sub_21CB85214();
  v39 = v38;
  sub_21CB85384();
  *&v78 = 0;
  *(&v78 + 1) = v27;
  v79 = v85;
  v80 = v86;
  *&v81 = v87;
  *(&v81 + 1) = v36;
  LOWORD(v82) = 256;
  *(&v82 + 1) = v37;
  *&v83 = v39;
  *(&v83 + 1) = 0xBFF921FB54442D18;
  *&v84 = v40;
  *(&v84 + 1) = v41;
  sub_21CB86384();
  sub_21CB86324();
  LOBYTE(v37) = sub_21CB85574();
  v35(v17, a1);
  if (v37)
  {
    sub_21CB85264();
  }

  else
  {
    sub_21CB85244();
  }

  v42 = sub_21C99FD6C();
  v43 = v61;
  sub_21CB84994();

  v76[4] = v82;
  v76[5] = v83;
  v76[6] = v84;
  v76[0] = v78;
  v76[1] = v79;
  v76[2] = v80;
  v76[3] = v81;
  sub_21C6EA794(v76, &qword_27CDF3538, &qword_21CBB7C18);
  WitnessTable = swift_getWitnessTable();
  v75[2] = v42;
  v75[3] = WitnessTable;
  v45 = v60;
  v46 = swift_getWitnessTable();
  v47 = v64;
  sub_21C72BE10(v43, v45, v46);
  v48 = v63;
  v49 = *(v63 + 8);
  v49(v43, v45);
  *&v71 = v28;
  *(&v71 + 1) = v29;
  *&v72 = v30;
  *(&v72 + 1) = v56;
  *&v73 = v31;
  WORD4(v73) = 256;
  *(&v73 + 10) = v94;
  HIWORD(v73) = v95;
  *&v74 = v58;
  *(&v74 + 1) = v57;
  v75[0] = &v71;
  v50 = v65;
  (*(v48 + 16))(v65, v47, v45);
  v75[1] = v50;
  v70[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3530, &qword_21CBB7C10);
  v70[1] = v45;
  v68 = sub_21C99FE10(&qword_27CDF3580, &qword_27CDF3530, &qword_21CBB7C10);
  v69 = v46;
  sub_21C74A55C(v75, 2uLL, v70);
  v49(v47, v45);
  v49(v50, v45);
  v77[0] = v71;
  v77[1] = v72;
  v77[2] = v73;
  v77[3] = v74;
  return sub_21C6EA794(v77, &qword_27CDF3530, &qword_21CBB7C10);
}

void sub_21C99F8D0(int *a1)
{
  v3 = sub_21CB83E64();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB82F84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[10];
  v28[0] = v1;
  v14 = (v1 + v13);
  v15 = *v14;
  v16 = *(v14 + 8);

  if ((v16 & 1) == 0)
  {
    sub_21CB85B04();
    v17 = a1;
    v18 = v4;
    v19 = v3;
    v20 = sub_21CB83C94();
    sub_21CB81C14();

    v3 = v19;
    v4 = v18;
    a1 = v17;
    sub_21CB82F74();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v9 + 8))(v12, v8);
    v15 = v29;
  }

  if (v15)
  {
    v21 = v28[0];
    v22 = v28[0] + a1[11];
    sub_21C95B55C(v7);
    v23 = sub_21CB83D54();
    (*(v4 + 8))(v7, v3);
    [v23 lineHeight];
    v24 = (v21 + a1[9]);
    v25 = *v24;
    v26 = v24[1];
    v28[1] = v27;
    v29 = v25;
    v30 = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3558, &qword_21CBB7C20);
    sub_21CB84D64();
  }
}

unint64_t sub_21C99FB6C()
{
  result = qword_27CDF3540;
  if (!qword_27CDF3540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3520, qword_21CBB7BA8);
    sub_21C99FBF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3540);
  }

  return result;
}

unint64_t sub_21C99FBF0()
{
  result = qword_27CDF3548;
  if (!qword_27CDF3548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3548);
  }

  return result;
}

unint64_t sub_21C99FC44()
{
  result = qword_27CDF3550;
  if (!qword_27CDF3550)
  {
    sub_21CB82834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3550);
  }

  return result;
}

void sub_21C99FCAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for PMProgressView();
  v4 = v0 + ((*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80));
  sub_21C99F8D0(v3);
}

unint64_t sub_21C99FD18()
{
  result = qword_27CDF3560;
  if (!qword_27CDF3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3560);
  }

  return result;
}

unint64_t sub_21C99FD6C()
{
  result = qword_27CDF3568;
  if (!qword_27CDF3568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3538, &qword_21CBB7C18);
    sub_21C99FE10(&qword_27CDF3570, &qword_27CDF3578, &qword_21CBB7C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3568);
  }

  return result;
}

uint64_t sub_21C99FE10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21C99FEAC()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_27CE18500 = v5;
  *algn_27CE18508 = v7;
  return result;
}

uint64_t sub_21C99FFB0@<X0>(uint64_t a1@<X8>)
{
  v121 = a1;
  v93 = sub_21CB83554();
  v92 = *(v93 - 8);
  v2 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for PMGeneratedPasswordsLogView();
  v118 = *(v125 - 8);
  v4 = *(v118 + 8);
  MEMORY[0x28223BE20](v125);
  v119 = v5;
  v120 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_21CB83584();
  v115 = *(v116 - 8);
  v6 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v114 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB830D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v99 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_21CB829D4();
  v97 = *(v96 - 8);
  v12 = *(v97 + 64);
  MEMORY[0x28223BE20](v96);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3630, &unk_21CBB7D30);
  v15 = *(v94 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v94);
  v18 = &v90 - v17;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3610, &qword_21CBB7D20);
  v19 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v21 = &v90 - v20;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3608, &qword_21CBB7D18);
  v100 = *(v101 - 8);
  v22 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v95 = &v90 - v23;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF35F8, &qword_21CBB7D08);
  v103 = *(v104 - 8);
  v24 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v90 - v25;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF35F0, &qword_21CBB7D00);
  v106 = *(v108 - 8);
  v26 = *(v106 + 64);
  MEMORY[0x28223BE20](v108);
  v122 = (&v90 - v27);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3670, &qword_21CBB7D50);
  v109 = *(v110 - 8);
  v28 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v107 = &v90 - v29;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF35E8, &qword_21CBB7CF8);
  v30 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v112 = &v90 - v31;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF35D8, &qword_21CBB7CF0);
  v32 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v113 = &v90 - v33;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF35B8, &unk_21CBB7CD8);
  v34 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v117 = &v90 - v35;
  v123 = v1;
  v126 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3678, &qword_21CBB7D58);
  sub_21C6EADEC(&qword_27CDF3680, &qword_27CDF3678, &qword_21CBB7D58);
  sub_21CB83EF4();
  sub_21CB85294();
  sub_21C6EADEC(&qword_27CDF3638, &qword_27CDF3630, &unk_21CBB7D30);
  sub_21C9A3114(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
  v36 = v94;
  v37 = v96;
  sub_21CB849C4();
  (*(v97 + 8))(v14, v37);
  (*(v15 + 8))(v18, v36);
  v38 = v99;
  sub_21CB830A4();
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3628, &qword_21CBB7D28) + 36);
  (*(v9 + 16))(&v21[v39], v38, v8);
  v40 = *(v9 + 56);
  v40(&v21[v39], 0, 1, v8);
  KeyPath = swift_getKeyPath();
  v42 = v98;
  v43 = &v21[*(v98 + 36)];
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
  (*(v9 + 32))(v43 + v44, v38, v8);
  v45 = v8;
  v46 = v95;
  v40(v43 + v44, 0, 1, v45);
  *v43 = KeyPath;
  v47 = sub_21C9A2CF8();
  sub_21CB84064();
  sub_21C6EA794(v21, &qword_27CDF3610, &qword_21CBB7D20);
  if (qword_27CDEA3D0 != -1)
  {
    swift_once();
  }

  v129 = qword_27CE18500;
  v130 = *algn_27CE18508;
  *&v127 = v42;
  *(&v127 + 1) = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = sub_21C71F3FC();
  v50 = MEMORY[0x277D837D0];
  v51 = v102;
  v52 = v101;
  sub_21CB842F4();
  v53 = (*(v100 + 8))(v46, v52);
  MEMORY[0x28223BE20](v53);
  v54 = v123;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3600, &qword_21CBB7D10);
  v129 = v52;
  v130 = v50;
  v131 = OpaqueTypeConformance2;
  v132 = v49;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC010, &qword_21CBAA950);
  v58 = sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950);
  v129 = v57;
  v130 = v58;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v104;
  sub_21CB84894();
  v61 = v60;
  (*(v103 + 8))(v51, v60);
  v62 = v125;
  v63 = (v54 + *(v125 + 32));
  v64 = *v63;
  v65 = v63[1];
  v66 = v63[2];
  v103 = v64;
  *&v127 = v64;
  *(&v127 + 1) = v65;
  v102 = v65;
  v101 = v66;
  v128 = v66;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D74();
  if ((sub_21CB85174() & 1) != 0 || (*(v54 + *(v62 + 28)) & 1) == 0)
  {
    v68 = v114;
    sub_21CB83574();
  }

  else
  {
    v67 = v91;
    sub_21CB83544();
    v68 = v114;
    sub_21CB83534();
    (*(v92 + 8))(v67, v93);
  }

  v129 = v61;
  v130 = v55;
  v131 = v56;
  v132 = v59;
  swift_getOpaqueTypeConformance2();
  v69 = v108;
  v70 = v107;
  v71 = v122;
  sub_21CB84114();

  (*(v115 + 8))(v68, v116);
  (*(v106 + 8))(v71, v69);
  v72 = v123;
  v73 = v120;
  v122 = type metadata accessor for PMGeneratedPasswordsLogView;
  sub_21C9A315C(v123, v120, type metadata accessor for PMGeneratedPasswordsLogView);
  v74 = (*(v118 + 80) + 16) & ~*(v118 + 80);
  v75 = swift_allocObject();
  v118 = type metadata accessor for PMGeneratedPasswordsLogView;
  sub_21C9A31C4(v73, v75 + v74, type metadata accessor for PMGeneratedPasswordsLogView);
  v76 = v112;
  (*(v109 + 32))(v112, v70, v110);
  v77 = &v76[*(v105 + 36)];
  *v77 = sub_21C9A2F38;
  v77[1] = v75;
  v77[2] = 0;
  v77[3] = 0;
  v129 = v103;
  v130 = v102;
  v131 = v101;
  sub_21CB84D54();
  v78 = v127;
  sub_21C9A315C(v72, v73, type metadata accessor for PMGeneratedPasswordsLogView);
  v79 = swift_allocObject();
  sub_21C9A31C4(v73, v79 + v74, type metadata accessor for PMGeneratedPasswordsLogView);
  v80 = v76;
  v81 = v113;
  sub_21C716934(v80, v113, &qword_27CDF35E8, &qword_21CBB7CF8);
  v82 = v81 + *(v111 + 36);
  *v82 = v78;
  *(v82 + 16) = sub_21C9A2F38;
  *(v82 + 24) = v79;
  v83 = v125;
  v84 = *(v72 + *(v125 + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v85 = v129;
  sub_21C9A315C(v72, v73, v122);
  v86 = swift_allocObject();
  sub_21C9A31C4(v73, v86 + v74, v118);
  v87 = v117;
  sub_21C716934(v81, v117, &qword_27CDF35D8, &qword_21CBB7CF0);
  v88 = (v87 + *(v124 + 36));
  *v88 = v85;
  v88[1] = sub_21C9A2F94;
  v88[2] = v86;
  v127 = *(v72 + *(v83 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB10, &qword_21CBA5208);
  sub_21CB84D74();
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA8, &qword_21CBA36B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF35C0, &qword_21CBB7CE8);
  sub_21C9A2954();
  sub_21C6EADEC(&qword_27CDEBDC0, &qword_27CDEBDA8, &qword_21CBA36B0);
  sub_21C6EADEC(&qword_27CDF3668, &qword_27CDF35C0, &qword_21CBB7CE8);
  sub_21CB847C4();

  return sub_21C6EA794(v87, &qword_27CDF35B8, &unk_21CBB7CD8);
}

uint64_t sub_21C9A1088@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a1;
  v44 = a2;
  v2 = type metadata accessor for PMGeneratedPasswordsLogView();
  v3 = v2 - 8;
  v41 = *(v2 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3690, &unk_21CBB7E78);
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = &v38 - v10;
  v11 = sub_21CB81024();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() generatedPasswordExpirationTimeInDays];
  sub_21CB81014();
  sub_21CB81004();
  (*(v12 + 8))(v15, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21CBA0690;
  v45 = v16;
  sub_21C8C5CE4();
  v18 = sub_21CB85EE4();
  v20 = v19;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = sub_21C7C0050();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  v38 = sub_21CB85594();
  v22 = v21;

  v23 = v39;
  v24 = (v39 + *(v3 + 44));
  v26 = *v24;
  v25 = v24[1];
  v45 = v26;
  v46 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3688, &unk_21CBB7E68);
  sub_21CB84D54();
  v27 = v40;
  sub_21C9A315C(v23, v40, type metadata accessor for PMGeneratedPasswordsLogView);
  v28 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v29 = swift_allocObject();
  sub_21C9A31C4(v27, v29 + v28, type metadata accessor for PMGeneratedPasswordsLogView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEA8, &unk_21CBA38A0);
  type metadata accessor for PMGeneratedPassword.ID(0);
  type metadata accessor for PMGeneratedPasswordCell(0);
  sub_21C6EADEC(&qword_27CDF3698, &qword_27CDEBEA8, &unk_21CBA38A0);
  sub_21C9A3114(&qword_27CDF36A0, type metadata accessor for PMGeneratedPasswordCell);
  sub_21C9A3114(&qword_27CDF36A8, type metadata accessor for PMGeneratedPassword);
  v30 = v42;
  sub_21CB84FF4();
  v31 = v6[2];
  v32 = v43;
  v31(v43, v30, v5);
  v33 = v44;
  *v44 = v38;
  v33[1] = v22;
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF36B0, &qword_21CBB7E88);
  v31(v34 + *(v35 + 48), v32, v5);
  v36 = v6[1];

  v36(v30, v5);
  v36(v32, v5);
}

uint64_t sub_21C9A15C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v5 = type metadata accessor for PMGeneratedPasswordsLogView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = type metadata accessor for PMGeneratedPassword(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  sub_21C9A315C(a1, &v19 - v13, type metadata accessor for PMGeneratedPassword);
  sub_21C9A315C(a2, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGeneratedPasswordsLogView);
  sub_21C9A315C(a1, v11, type metadata accessor for PMGeneratedPassword);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = (v7 + *(v9 + 80) + v15) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_21C9A31C4(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15, type metadata accessor for PMGeneratedPasswordsLogView);
  sub_21C9A31C4(v11, v17 + v16, type metadata accessor for PMGeneratedPassword);
  return sub_21C99BD54(v14, sub_21C9A322C, v17, v20);
}

uint64_t sub_21C9A1804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGeneratedPasswordsLogView();
  v5 = v4 - 8;
  v23[0] = *(v4 - 8);
  v6 = *(v23[0] + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMGeneratedPassword(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = type metadata accessor for PMAddAccountModel.Configuration(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C9A315C(a2, v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGeneratedPassword);
  sub_21C848830(v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  sub_21C9A315C(a1, v7, type metadata accessor for PMGeneratedPasswordsLogView);
  sub_21C9A315C(a2, v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGeneratedPassword);
  v15 = (*(v23[0] + 80) + 16) & ~*(v23[0] + 80);
  v16 = (v6 + *(v9 + 80) + v15) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_21C9A31C4(v7, v17 + v15, type metadata accessor for PMGeneratedPasswordsLogView);
  sub_21C9A31C4(v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PMGeneratedPassword);
  v18 = type metadata accessor for PMAddAccountModel(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_21C848014(v14, sub_21C9A35B4, v17);
  v24 = *(a1 + *(v5 + 48));
  v23[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB10, &qword_21CBA5208);
  return sub_21CB84D64();
}

void sub_21C9A1AC0(char a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v4 = *(a2 + *(type metadata accessor for PMGeneratedPasswordsLogView() + 24) + 8);
    sub_21C9A8C74(a3, 0, 0);
  }
}

uint64_t sub_21C9A1B10(uint64_t a1)
{
  v2 = sub_21CB83604();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC010, &qword_21CBAA950);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_21CB835C4();
  v12 = a1;
  type metadata accessor for PMPlatformRoleButton();
  sub_21C9A3114(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
  sub_21CB82194();
  v9 = sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950);
  MEMORY[0x21CF131E0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21C9A1CEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a1;
  v3 = type metadata accessor for PMGeneratedPasswordsLogView();
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
  sub_21CB81EE4();
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  sub_21C9A315C(v21, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGeneratedPasswordsLogView);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  result = sub_21C9A31C4(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PMGeneratedPasswordsLogView);
  *a2 = v13;
  a2[1] = v15;
  v19 = (a2 + *(v11 + 24));
  *v19 = sub_21C9A3034;
  v19[1] = v17;
  return result;
}

uint64_t sub_21C9A1F00(uint64_t a1)
{
  v2 = sub_21CB823B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong passwordManagerLogViewControllerWantsToDismiss];

    return swift_unknownObjectRelease();
  }

  else
  {
    v9 = a1 + *(type metadata accessor for PMGeneratedPasswordsLogView() + 20);
    sub_21C95B2C8(v6);
    sub_21CB823A4();
    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_21C9A201C()
{
  v1 = type metadata accessor for PMGeneratedPasswordsLogView();
  v2 = (v0 + v1[8]);
  v3 = *v2;
  v4 = *(v2 + 2);
  v21 = v3;
  v22 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D54();

  if ((v20 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v5 = v19 & 0xFFFFFFFFFFFFLL;
  }

  v6 = *(v0 + v1[6] + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  if (v5)
  {
    sub_21CB81DB4();

    MEMORY[0x28223BE20](v7);
    v18[2] = v0;
    sub_21CAE82B0(sub_21C9A300C, v18, v8);
    v9 = (v0 + v1[9]);
    v11 = *v9;
    v10 = v9[1];
    *&v21 = v11;
    *(&v21 + 1) = v10;
    v19 = v12;
  }

  else
  {
    sub_21CB81DB4();

    v13 = v21;
    v14 = (v0 + v1[9]);
    v16 = *v14;
    v15 = v14[1];
    *&v21 = v16;
    *(&v21 + 1) = v15;
    v19 = v13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3688, &unk_21CBB7E68);
  return sub_21CB84D64();
}

uint64_t sub_21C9A21BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CB823B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C9A201C();
  v8 = type metadata accessor for PMGeneratedPasswordsLogView();
  v9 = (a2 + *(v8 + 36));
  v11 = *v9;
  v10 = v9[1];
  v16[2] = v11;
  v16[3] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3688, &unk_21CBB7E68);
  sub_21CB84D54();
  v12 = *(v16[1] + 16);

  if (!v12)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong passwordManagerLogViewControllerWantsToDismiss];
      return swift_unknownObjectRelease();
    }

    else
    {
      v15 = a2 + *(v8 + 20);
      sub_21C95B2C8(v7);
      sub_21CB823A4();
      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

uint64_t sub_21C9A2318(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for PMAddAccountView();
  sub_21C9A3114(&qword_27CDEBDC8, type metadata accessor for PMAddAccountView);

  return sub_21CB82924();
}

uint64_t sub_21C9A23B8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PMAddAccountModel(0);
  sub_21C9A3114(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel);

  *a1 = sub_21CB82674();
  a1[1] = v2;
  a1[2] = 0x4079000000000000;
  v3 = type metadata accessor for PMAddAccountView();
  v4 = v3[6];
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v5 = v3[7];
  sub_21C721B58();
  sub_21CB81FA4();
  v6 = v3[8];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v8 = (a1 + v6);
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v14);

  type metadata accessor for PMGroupsStore();
  sub_21C9A3114(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v9 = sub_21CB82674();
  v11 = v10;

  *v8 = v9;
  v8[1] = v11;
  v12 = a1 + v3[9];
  result = swift_getKeyPath();
  *v12 = result;
  v12[8] = 0;
  return result;
}

uint64_t sub_21C9A25AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGeneratedPassword.Storage(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PMGeneratedPassword(0);
  sub_21C9A315C(a1 + *(v8 + 20), v7, type metadata accessor for PMGeneratedPassword.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v7;
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v7 + 2);

    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
    v13 = sub_21CB80DD4();
    (*(*(v13 - 8) + 8))(&v7[v12], v13);
  }

  else
  {
    v14 = [*v7 protectionSpace];

    v10 = v14;
    if (!v14)
    {
      v22 = 1;
      return v22 & 1;
    }
  }

  v15 = [v10 host];
  v16 = sub_21CB855C4();
  v18 = v17;

  v27 = v16;
  v28 = v18;
  v19 = (a2 + *(type metadata accessor for PMGeneratedPasswordsLogView() + 32));
  v20 = *v19;
  v21 = *(v19 + 2);
  v25 = v20;
  v26 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D54();
  v25 = *&v24[8];
  sub_21C71F3FC();
  v22 = sub_21CB85EC4();

  return v22 & 1;
}

uint64_t sub_21C9A27C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF35B0, &qword_21CBB7CD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF35B8, &unk_21CBB7CD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBDA8, &qword_21CBA36B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF35C0, &qword_21CBB7CE8);
  sub_21C9A2954();
  sub_21C6EADEC(&qword_27CDEBDC0, &qword_27CDEBDA8, &qword_21CBA36B0);
  sub_21C6EADEC(&qword_27CDF3668, &qword_27CDF35C0, &qword_21CBB7CE8);
  swift_getOpaqueTypeConformance2();
  return sub_21CB82924();
}

unint64_t sub_21C9A2954()
{
  result = qword_27CDF35C8;
  if (!qword_27CDF35C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF35B8, &unk_21CBB7CD8);
    sub_21C9A2A0C();
    sub_21C6EADEC(&qword_27CDF3658, &qword_27CDF3660, &qword_21CBB7D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF35C8);
  }

  return result;
}

unint64_t sub_21C9A2A0C()
{
  result = qword_27CDF35D0;
  if (!qword_27CDF35D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF35D8, &qword_21CBB7CF0);
    sub_21C9A2AC4();
    sub_21C6EADEC(&qword_27CDF3648, &qword_27CDF3650, &qword_21CBB7D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF35D0);
  }

  return result;
}

unint64_t sub_21C9A2AC4()
{
  result = qword_27CDF35E0;
  if (!qword_27CDF35E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF35E8, &qword_21CBB7CF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF35F0, &qword_21CBB7D00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF35F8, &qword_21CBB7D08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3600, &qword_21CBB7D10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3608, &qword_21CBB7D18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3610, &qword_21CBB7D20);
    sub_21C9A2CF8();
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC010, &qword_21CBAA950);
    sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF35E0);
  }

  return result;
}

unint64_t sub_21C9A2CF8()
{
  result = qword_27CDF3618;
  if (!qword_27CDF3618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3610, &qword_21CBB7D20);
    sub_21C9A2DB0();
    sub_21C6EADEC(&qword_27CDEB288, &qword_27CDEB238, &qword_21CBA1570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3618);
  }

  return result;
}

unint64_t sub_21C9A2DB0()
{
  result = qword_27CDF3620;
  if (!qword_27CDF3620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3628, &qword_21CBB7D28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3630, &unk_21CBB7D30);
    sub_21CB829D4();
    sub_21C6EADEC(&qword_27CDF3638, &qword_27CDF3630, &unk_21CBB7D30);
    sub_21C9A3114(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEB278, &qword_27CDEB280, &unk_21CBA7D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3620);
  }

  return result;
}

uint64_t sub_21C9A2F38()
{
  v1 = *(type metadata accessor for PMGeneratedPasswordsLogView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_21C9A201C();
}

uint64_t sub_21C9A2F94(uint64_t a1)
{
  v3 = *(type metadata accessor for PMGeneratedPasswordsLogView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C9A21BC(a1, v4);
}

uint64_t sub_21C9A3034()
{
  v1 = *(type metadata accessor for PMGeneratedPasswordsLogView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C9A1F00(v2);
}

uint64_t sub_21C9A3094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMGeneratedPasswordsLogView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C9A15C4(a1, v6, a2);
}

uint64_t sub_21C9A3114(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C9A315C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9A31C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9A322C()
{
  v1 = *(type metadata accessor for PMGeneratedPasswordsLogView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMGeneratedPassword(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_21C9A1804(v0 + v2, v5);
}

uint64_t objectdestroy_37Tm()
{
  v1 = type metadata accessor for PMGeneratedPasswordsLogView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for PMGeneratedPassword(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v32 = *(*(v5 - 8) + 64);
  v8 = v0 + v3;
  MEMORY[0x21CF16E70](v8);
  v9 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB823B4();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
    v11 = *(v8 + v9);
  }

  v12 = *(v8 + v1[6] + 8);

  v13 = v8 + v1[8];
  v14 = *(v13 + 8);

  v15 = *(v13 + 16);

  v16 = (v8 + v1[9]);
  v17 = *v16;

  v18 = v16[1];

  v19 = (v8 + v1[10]);
  v20 = *v19;

  v21 = v19[1];

  v22 = *(v0 + v7 + 8);

  v23 = *(v0 + v7 + 24);

  v24 = *(type metadata accessor for PMGeneratedPassword.ID(0) + 24);
  v25 = sub_21CB80DD4();
  v26 = *(*(v25 - 8) + 8);
  v26(v0 + v7 + v24, v25);
  v27 = v0 + v7 + *(v5 + 20);
  type metadata accessor for PMGeneratedPassword.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v29 = *(v27 + 16);

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
    v26(v27 + *(v30 + 64), v25);
  }

  return MEMORY[0x2821FE8E8](v0, v7 + v32, v2 | v6 | 7);
}

void sub_21C9A35B4(char a1)
{
  v3 = *(type metadata accessor for PMGeneratedPasswordsLogView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PMGeneratedPassword(0) - 8);
  v7 = (v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));

  sub_21C9A1AC0(a1, v1 + v4, v7);
}

double PMWebsiteNameFetchingDebuggerView.init()@<D0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for PMWebsiteNameFetchingDebuggerView();
  v3 = v2[5];
  *(a1 + v3) = sub_21CB81E64();
  v4 = a1 + v2[6];
  sub_21CB84D44();
  *v4 = v7;
  *(v4 + 1) = *(&v7 + 1);
  v5 = a1 + v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
  sub_21CB84D44();
  result = *&v7;
  *v5 = v7;
  *(v5 + 2) = v8;
  return result;
}

uint64_t type metadata accessor for PMWebsiteNameFetchingDebuggerView()
{
  result = qword_27CDF36D0;
  if (!qword_27CDF36D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double PMWebsiteNameFetchingDebuggerView.body.getter@<D0>(char *a1@<X8>)
{
  sub_21C9A386C(v1, a1);
  v3 = sub_21CB83CE4();
  v4 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF36C8, &qword_21CBB7EE0) + 36)];
  *v4 = v3;
  result = 0.0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  v4[40] = 1;
  return result;
}

uint64_t sub_21C9A386C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v3 = sub_21CB83124();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3710, &qword_21CBB7F78);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v64 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3718, &unk_21CBB7F80);
  v62 = *(v12 - 8);
  v63 = v12;
  v13 = *(v62 + 64);
  MEMORY[0x28223BE20](v12);
  v67 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  sub_21CB83134();
  v18 = sub_21CB84034();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_21CB85224();
  sub_21CB82AC4();
  v96 = v22 & 1;
  *&v86 = v18;
  *(&v86 + 1) = v20;
  LOBYTE(v87) = v22 & 1;
  *(&v87 + 1) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB208, &unk_21CBB3F40);
  sub_21C7B8EA4();
  v66 = v17;
  sub_21CB846B4();
  v95[6] = v92;
  v95[7] = v93;
  v95[8] = v94;
  v95[2] = v88;
  v95[3] = v89;
  v95[4] = v90;
  v95[5] = v91;
  v95[0] = v86;
  v95[1] = v87;
  sub_21C6EA794(v95, &qword_27CDEB208, &unk_21CBB3F40);
  *v11 = sub_21CB83074();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3720, &unk_21CBB7F90);
  sub_21C9A3ED4(a1, &v11[*(v25 + 44)]);
  LOBYTE(v18) = sub_21CB83D44();
  sub_21CB81F24();
  v26 = &v11[*(v6 + 44)];
  *v26 = v18;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_21CB83114();
  sub_21CB83104();
  v31 = (a1 + *(type metadata accessor for PMWebsiteNameFetchingDebuggerView() + 28));
  v32 = *v31;
  v33 = v31[1];
  v34 = v31[2];
  *&v86 = *v31;
  *(&v86 + 1) = v33;
  *&v87 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  sub_21CB84D54();
  v65 = v11;
  if (*(&v75 + 1) && (, *&v86 = v32, *(&v86 + 1) = v33, *&v87 = v34, result = sub_21CB84D54(), !*(&v75 + 1)))
  {
    __break(1u);
  }

  else
  {
    sub_21CB830F4();

    sub_21CB83104();
    sub_21CB83144();
    v36 = sub_21CB84034();
    v59 = v37;
    v60 = v36;
    v39 = v38;
    v41 = v40;
    sub_21CB85224();
    sub_21CB82AC4();
    v42 = v39 & 1;
    v85 = v39 & 1;
    v43 = v62;
    v44 = v63;
    v45 = *(v62 + 16);
    v46 = v67;
    v45(v67, v66, v63);
    v47 = v64;
    sub_21C76F948(v65, v64);
    v48 = v61;
    v45(v61, v46, v44);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3728, &qword_21CBB7FA0);
    sub_21C76F948(v47, &v48[*(v49 + 48)]);
    v50 = &v48[*(v49 + 64)];
    v52 = v59;
    v51 = v60;
    *&v75 = v60;
    *(&v75 + 1) = v59;
    LOBYTE(v76) = v42;
    *(&v76 + 1) = *v84;
    DWORD1(v76) = *&v84[3];
    *(&v76 + 1) = v41;
    v81 = v72;
    v82 = v73;
    v83 = v74;
    v79 = v70;
    v80 = v71;
    v77 = v68;
    v78 = v69;
    v53 = v73;
    *(v50 + 6) = v72;
    *(v50 + 7) = v53;
    *(v50 + 8) = v83;
    v54 = v78;
    *(v50 + 2) = v77;
    *(v50 + 3) = v54;
    v55 = v80;
    *(v50 + 4) = v79;
    *(v50 + 5) = v55;
    v56 = v76;
    *v50 = v75;
    *(v50 + 1) = v56;
    sub_21C6EDBAC(&v75, &v86, &qword_27CDEB208, &unk_21CBB3F40);
    sub_21C76F9B8(v65);
    v57 = *(v43 + 8);
    v57(v66, v44);
    *&v86 = v51;
    *(&v86 + 1) = v52;
    LOBYTE(v87) = v42;
    *(&v87 + 1) = *v84;
    DWORD1(v87) = *&v84[3];
    *(&v87 + 1) = v41;
    v92 = v72;
    v93 = v73;
    v94 = v74;
    v88 = v68;
    v89 = v69;
    v90 = v70;
    v91 = v71;
    sub_21C6EA794(&v86, &qword_27CDEB208, &unk_21CBB3F40);
    sub_21C76F9B8(v47);
    return (v57)(v67, v44);
  }

  return result;
}

uint64_t sub_21C9A3ED4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v104 = a1;
  v102 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v98 = *(v100 - 8);
  v2 = *(v98 + 64);
  MEMORY[0x28223BE20](v100);
  v95 = v78 - v3;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v4 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v101 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v96 = v78 - v7;
  MEMORY[0x28223BE20](v8);
  v99 = v78 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE080, &qword_21CBD0220);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v91 = v78 - v12;
  v90 = sub_21CB82704();
  v89 = *(v90 - 8);
  v13 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v80 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PMWebsiteNameFetchingDebuggerView();
  v79 = *(v15 - 8);
  v105 = *(v79 + 64);
  v16 = v15 - 8;
  v85 = v15 - 8;
  MEMORY[0x28223BE20](v15 - 8);
  v103 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v81 = *(v18 - 8);
  v19 = *(v81 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v78 - v20;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3730, &qword_21CBB7FA8);
  v83 = *(v82 - 8);
  v22 = *(v83 + 64);
  MEMORY[0x28223BE20](v82);
  v24 = v78 - v23;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3738, &qword_21CBB7FB0);
  v86 = *(v84 - 8);
  v25 = *(v86 + 64);
  MEMORY[0x28223BE20](v84);
  v27 = v78 - v26;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3740, &qword_21CBB7FB8);
  v88 = *(v87 - 8);
  v28 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  v30 = v78 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3748, &unk_21CBB7FC0);
  v93 = *(v31 - 8);
  v94 = v31;
  v32 = *(v93 + 64);
  MEMORY[0x28223BE20](v31);
  v92 = v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v106 = v78 - v35;
  sub_21CB83134();
  v36 = *(v16 + 28);
  v37 = v104;
  v78[1] = *(v104 + v36);
  sub_21CB81EB4();
  sub_21CB85304();
  v38 = v103;
  sub_21C9A5130(v37, v103);
  v39 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v40 = swift_allocObject();
  sub_21C9A5194(v38, v40 + v39);
  v41 = v80;
  sub_21CB826F4();
  v42 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
  sub_21CB84944();

  (*(v89 + 8))(v41, v90);
  (*(v81 + 8))(v21, v18);
  v108 = v18;
  v109 = v42;
  v43 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v82;
  MEMORY[0x21CF14040](1, v82, OpaqueTypeConformance2);
  v46 = v24;
  v47 = v45;
  (*(v83 + 8))(v46, v45);
  v48 = v91;
  sub_21CB83A84();
  v49 = sub_21CB83A94();
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  v108 = v47;
  v109 = OpaqueTypeConformance2;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v84;
  sub_21CB84664();
  sub_21C6EA794(v48, &qword_27CDEE080, &qword_21CBD0220);
  (*(v86 + 8))(v27, v51);
  v108 = v51;
  v109 = v50;
  swift_getOpaqueTypeConformance2();
  v52 = v87;
  sub_21CB841D4();
  (*(v88 + 8))(v30, v52);
  sub_21CB83134();
  v54 = v103;
  v53 = v104;
  sub_21C9A5130(v104, v103);
  v55 = swift_allocObject();
  sub_21C9A5194(v54, v55 + v39);
  v56 = v95;
  sub_21CB84DD4();
  v57 = v53 + *(v85 + 32);
  v58 = *v57;
  v59 = *(v57 + 8);
  LOBYTE(v108) = v58;
  v109 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  if ((v107 & 1) == 0)
  {
    sub_21CB81E94();
    v61 = v108;
    v60 = v109;

    v62 = HIBYTE(v60) & 0xF;
    if ((v60 & 0x2000000000000000) == 0)
    {
      v62 = v61 & 0xFFFFFFFFFFFFLL;
    }

    v43 = v62 == 0;
  }

  KeyPath = swift_getKeyPath();
  v64 = swift_allocObject();
  *(v64 + 16) = v43;
  v65 = v96;
  (*(v98 + 32))(v96, v56, v100);
  v66 = (v65 + *(v97 + 36));
  *v66 = KeyPath;
  v66[1] = sub_21C735744;
  v66[2] = v64;
  v67 = v99;
  sub_21C9A5258(v65, v99);
  v69 = v92;
  v68 = v93;
  v70 = *(v93 + 16);
  v71 = v106;
  v72 = v94;
  v70(v92, v106, v94);
  v73 = v101;
  sub_21C6EDBAC(v67, v101, &qword_27CDEDA98, &unk_21CBABCB0);
  v74 = v102;
  v70(v102, v69, v72);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3750, &unk_21CBB8000);
  sub_21C6EDBAC(v73, &v74[*(v75 + 48)], &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C6EA794(v67, &qword_27CDEDA98, &unk_21CBABCB0);
  v76 = *(v68 + 8);
  v76(v71, v72);
  sub_21C6EA794(v73, &qword_27CDEDA98, &unk_21CBABCB0);
  return (v76)(v69, v72);
}

void sub_21C9A4A38()
{
  v1 = v0;
  v2 = type metadata accessor for PMWebsiteNameFetchingDebuggerView();
  v3 = (v2 - 8);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v0 + v3[9];
  v7 = *(v6 + 16);
  aBlock = *v6;
  v18 = v7;
  v22 = xmmword_21CBB7EA0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  sub_21CB84D64();
  v8 = v0 + v3[8];
  v9 = *v8;
  v10 = *(v8 + 8);
  LOBYTE(aBlock) = v9;
  *(&aBlock + 1) = v10;
  LOBYTE(v22) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D64();
  v11 = objc_opt_self();
  v12 = *(v1 + v3[7]);
  sub_21CB81E94();
  v13 = sub_21CB85584();

  sub_21C9A5130(v1, &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_21C9A5194(&aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v20 = sub_21C9A52C8;
  v21 = v15;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v18 = sub_21C9A4D4C;
  v19 = &block_descriptor_20;
  v16 = _Block_copy(&aBlock);

  [v11 debug:v13 fetchWebsiteNameForDomain:v16 completionHandler:?];
  _Block_release(v16);
}

uint64_t sub_21C9A4C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for PMWebsiteNameFetchingDebuggerView();
  v5 = (a3 + *(v4 + 28));
  v8 = *v5;
  v9 = *(v5 + 2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  sub_21CB84D64();
  v6 = a3 + *(v4 + 24);
  LOBYTE(v8) = *v6;
  *(&v8 + 1) = *(v6 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21C9A4D4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_21CB855C4();
  v5 = v4;

  v2(v3, v5);
}

double sub_21C9A4DB8@<D0>(char *a1@<X8>)
{
  sub_21C9A386C(v1, a1);
  v3 = sub_21CB83CE4();
  v4 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF36C8, &qword_21CBB7EE0) + 36)];
  *v4 = v3;
  result = 0.0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  v4[40] = 1;
  return result;
}

void sub_21C9A4E44()
{
  sub_21C721A6C();
  if (v0 <= 0x3F)
  {
    sub_21C9A4F40(319, &qword_27CDF36E0, MEMORY[0x277D837D0], MEMORY[0x277CDD630]);
    if (v1 <= 0x3F)
    {
      sub_21C9A4F40(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_21C9A4F90();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C9A4F40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21C9A4F90()
{
  if (!qword_27CDF2C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDED260, &qword_21CBA1C60);
    v0 = sub_21CB84D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF2C90);
    }
  }
}

unint64_t sub_21C9A4FF4()
{
  result = qword_27CDF36E8;
  if (!qword_27CDF36E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF36C8, &qword_21CBB7EE0);
    sub_21C9A5080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF36E8);
  }

  return result;
}

unint64_t sub_21C9A5080()
{
  result = qword_27CDF36F0;
  if (!qword_27CDF36F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF36F8, &qword_21CBB7F68);
    sub_21C6EADEC(&qword_27CDF3700, &qword_27CDF3708, &qword_21CBB7F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF36F0);
  }

  return result;
}

uint64_t sub_21C9A5130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWebsiteNameFetchingDebuggerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9A5194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWebsiteNameFetchingDebuggerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21C9A51FC()
{
  v1 = *(type metadata accessor for PMWebsiteNameFetchingDebuggerView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_21C9A4A38();
}

uint64_t sub_21C9A5258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9A52C8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PMWebsiteNameFetchingDebuggerView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C9A4C80(a1, a2, v6);
}

uint64_t sub_21C9A5390@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v95 = a1;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3770, &qword_21CBB8088);
  v76 = *(v91 - 8);
  v3 = *(v76 + 64);
  MEMORY[0x28223BE20](v91);
  v75 = &v73 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3778, &qword_21CBB8090);
  v78 = *(v5 - 8);
  v6 = *(v78 + 64);
  MEMORY[0x28223BE20](v5);
  v77 = &v73 - v7;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3780, &qword_21CBB8098);
  v8 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v10 = &v73 - v9;
  v11 = sub_21CB82A54();
  v87 = *(v11 - 8);
  v12 = *(v87 + 64);
  MEMORY[0x28223BE20](v11);
  v86 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PMGeneratedPasswordsSearchResultsRow();
  v89 = *(v14 - 8);
  v15 = *(v89 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v90 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3788, &qword_21CBB80A0);
  v85 = *(v92 - 8);
  v16 = *(v85 + 64);
  MEMORY[0x28223BE20](v92);
  v84 = &v73 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3790, &qword_21CBB80A8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v88 = &v73 - v21;
  v22 = sub_21CB82F84();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3798, &unk_21CBB80B0);
  v28 = *(*(v27 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v27);
  v93 = &v73 - v32;
  if (*(*(v2 + 8) + 24) >= 1)
  {
    v74 = v19;
    v79 = v11;
    v80 = v30;
    v33 = *(v2 + 16);
    v34 = *(v2 + 24);
    v82 = v18;
    v83 = v10;
    v81 = v29;
    v35 = v2;
    if (v34 == 1)
    {
      LOBYTE(KeyPath) = v33;
    }

    else
    {

      sub_21CB85B04();
      v39 = sub_21CB83C94();
      sub_21CB81C14();

      sub_21CB82F74();
      swift_getAtKeyPath();
      sub_21C7025C4(v33, 0);
      (*(v23 + 8))(v26, v22);
      LOBYTE(v33) = KeyPath;
    }

    if (v33 == 1)
    {
    }

    else
    {
      v40 = sub_21CB86344();

      if ((v40 & 1) == 0)
      {
        v41 = v90;
        sub_21C9A7E18(v35, v90, type metadata accessor for PMGeneratedPasswordsSearchResultsRow);
        v42 = (*(v89 + 80) + 16) & ~*(v89 + 80);
        v43 = swift_allocObject();
        v44 = v5;
        v45 = sub_21C9A772C(v41, v43 + v42);
        MEMORY[0x28223BE20](v45);
        *(&v73 - 2) = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF37A0, &qword_21CBB80C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF37A8, &qword_21CBB80C8);
        v46 = v91;
        sub_21C6EADEC(&qword_27CDF37B0, &qword_27CDF37A0, &qword_21CBB80C0);
        sub_21C9A7808();
        v47 = v75;
        sub_21CB852B4();
        KeyPath = swift_getKeyPath();
        LOBYTE(v97) = 0;
        v48 = sub_21C6EADEC(&qword_27CDF37C0, &qword_27CDF3770, &qword_21CBB8088);
        v49 = sub_21C830EB0();
        v50 = v77;
        sub_21CB840E4();
        (*(v76 + 8))(v47, v46);

        v51 = v78;
        (*(v78 + 16))(v83, v50, v44);
        swift_storeEnumTagMultiPayload();
        v52 = sub_21C6EADEC(&qword_27CDF37C8, &qword_27CDF3788, &qword_21CBB80A0);
        v53 = sub_21C72C7D4(&qword_27CDED508, MEMORY[0x277CDDB18]);
        KeyPath = v92;
        v97 = v79;
        v98 = v52;
        v99 = v53;
        swift_getOpaqueTypeConformance2();
        KeyPath = v46;
        v97 = &type metadata for PMAccountsListNavigationCellLabelStyle;
        v98 = v48;
        v99 = v49;
        swift_getOpaqueTypeConformance2();
        v54 = v93;
        sub_21CB83494();
        (*(v51 + 8))(v50, v44);
LABEL_13:
        v72 = v95;
        sub_21C716934(v54, v95, &qword_27CDF3798, &unk_21CBB80B0);
        return (*(v80 + 56))(v72, 0, 1, v81);
      }
    }

    v55 = v35;
    v56 = v35;
    v57 = v90;
    sub_21C9A7E18(v56, v90, type metadata accessor for PMGeneratedPasswordsSearchResultsRow);
    v58 = (*(v89 + 80) + 16) & ~*(v89 + 80);
    v59 = swift_allocObject();
    v60 = sub_21C9A772C(v57, v59 + v58);
    MEMORY[0x28223BE20](v60);
    *(&v73 - 2) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF37D0, &qword_21CBB80F8);
    sub_21C9A7954();
    v61 = v84;
    sub_21CB84DA4();
    v62 = v86;
    sub_21CB82A44();
    v63 = sub_21C6EADEC(&qword_27CDF37C8, &qword_27CDF3788, &qword_21CBB80A0);
    v64 = sub_21C72C7D4(&qword_27CDED508, MEMORY[0x277CDDB18]);
    v65 = v88;
    v66 = v92;
    v67 = v79;
    sub_21CB84124();
    (*(v87 + 8))(v62, v67);
    (*(v85 + 8))(v61, v66);
    v68 = v74;
    v69 = v82;
    (*(v74 + 16))(v83, v65, v82);
    swift_storeEnumTagMultiPayload();
    KeyPath = v66;
    v97 = v67;
    v98 = v63;
    v99 = v64;
    swift_getOpaqueTypeConformance2();
    v70 = sub_21C6EADEC(&qword_27CDF37C0, &qword_27CDF3770, &qword_21CBB8088);
    v71 = sub_21C830EB0();
    KeyPath = v91;
    v97 = &type metadata for PMAccountsListNavigationCellLabelStyle;
    v98 = v70;
    v99 = v71;
    swift_getOpaqueTypeConformance2();
    v54 = v93;
    sub_21CB83494();
    (*(v68 + 8))(v65, v69);
    goto LABEL_13;
  }

  v36 = *(v30 + 56);
  v37 = v95;

  return v36(v37, 1, 1, v31);
}

uint64_t sub_21C9A6030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMGeneratedPasswordsLogView();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  v10 = *(v8 + 32);
  v9 = *(v8 + 40);
  swift_unknownObjectWeakInit();
  v11 = v4[5];
  *&v7[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v12 = v4[6];
  KeyPath = swift_getKeyPath();
  v14 = qword_27CDEA4C0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = &v7[v12];
  sub_21CB86544();
  sub_21C7073D0(KeyPath, v29);

  type metadata accessor for PMGeneratedPasswordStore();
  sub_21C72C7D4(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore);
  v16 = sub_21CB82674();
  v18 = v17;

  *v15 = v16;
  v15[1] = v18;
  v19 = &v7[v4[8]];
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_21CB84D44();
  v20 = &v7[v4[9]];
  v28[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEA8, &unk_21CBA38A0);
  sub_21CB84D44();
  v21 = *(&v29 + 1);
  *v20 = v29;
  *(v20 + 1) = v21;
  v22 = v4[10];
  v28[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEB0, &unk_21CBA5440);
  sub_21CB84D44();
  *&v7[v22] = v29;
  swift_unknownObjectWeakAssign();

  v7[v4[7]] = 0;
  *v19 = v10;
  *(v19 + 1) = v9;
  *(v19 + 2) = 0;
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21C9A7E18(v7, a2, type metadata accessor for PMGeneratedPasswordsLogView);
  v23 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF37A8, &qword_21CBB80C8) + 36));
  v24 = v34;
  v23[4] = v33;
  v23[5] = v24;
  v23[6] = v35;
  v25 = v30;
  *v23 = v29;
  v23[1] = v25;
  v26 = v32;
  v23[2] = v31;
  v23[3] = v26;
  return sub_21C9A7E80(v7, type metadata accessor for PMGeneratedPasswordsLogView);
}

uint64_t sub_21C9A6390()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED698, &unk_21CBB8140);
  sub_21C830D18();
  return sub_21CB84C84();
}

uint64_t sub_21C9A6428@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a1;
  v45 = a2;
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  MEMORY[0x28223BE20](v16);
  v42 = &v40 - v17;
  MEMORY[0x28223BE20](v18);
  v43 = &v40 - v19;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v41 = sub_21CB81034();
  v20 = *(v41 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v24 = *(v3 + 8);
  v24(v6, v2);
  v24(v9, v2);
  v24(v12, v2);
  v24(v15, v2);
  swift_setDeallocating();
  (*(v20 + 8))(v23 + v22, v41);
  swift_deallocClassInstance();
  v25 = v43;
  sub_21CB81004();
  v24(v42, v2);
  v24(v25, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_21CBA15B0;
  v27 = *(v44 + 8);
  v28 = v27[3];
  v29 = MEMORY[0x277D83C10];
  *(v26 + 56) = MEMORY[0x277D83B88];
  *(v26 + 64) = v29;
  *(v26 + 32) = v28;
  v30 = v27[4];
  v31 = v27[5];
  *(v26 + 96) = MEMORY[0x277D837D0];
  *(v26 + 104) = sub_21C7C0050();
  *(v26 + 72) = v30;
  *(v26 + 80) = v31;

  v32 = sub_21CB85594();
  v34 = v33;

  v46 = v32;
  v47 = v34;
  sub_21C71F3FC();
  result = sub_21CB84054();
  v36 = v45;
  *v45 = result;
  v36[1] = v37;
  *(v36 + 16) = v38 & 1;
  v36[3] = v39;
  return result;
}

int64x2_t sub_21C9A6874@<Q0>(int64x2_t *a1@<X8>)
{
  v2 = sub_21CB84BB4();
  v3 = sub_21CB84A84();
  a1->i64[0] = v2;
  a1->i64[1] = v3;
  result = vdupq_n_s64(0x4040000000000000uLL);
  a1[1] = result;
  a1[2].i64[0] = 0x4018000000000000;
  return result;
}

uint64_t sub_21C9A68D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v29 = type metadata accessor for PMAccountRowLabelStyle();
  v3 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF37F0, &unk_21CBB8108);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3800, &qword_21CBB8118);
  v30 = *(v11 - 8);
  v31 = v11;
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v11);
  v28 = &v27 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF37E8, &qword_21CBB8100);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v33 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3808, &qword_21CBB8120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3810, &qword_21CBB8128);
  sub_21C6EADEC(&qword_27CDF3818, &qword_27CDF3808, &qword_21CBB8120);
  sub_21C9A7B60();
  sub_21CB84C84();
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v19 = *(v29 + 20);
  *(v5 + v19) = sub_21CB83074();
  sub_21C6EADEC(&qword_27CDF37F8, &qword_27CDF37F0, &unk_21CBB8108);
  sub_21C72C7D4(&qword_27CDEC650, type metadata accessor for PMAccountRowLabelStyle);
  v20 = v28;
  sub_21CB840E4();
  sub_21C9A7E80(v5, type metadata accessor for PMAccountRowLabelStyle);
  (*(v7 + 8))(v10, v6);
  [objc_opt_self() isPasswordsAppInstalled];
  sub_21CB85224();
  sub_21CB82AC4();
  (*(v30 + 32))(v18, v20, v31);
  v21 = &v18[*(v15 + 44)];
  v22 = v39;
  *(v21 + 4) = v38;
  *(v21 + 5) = v22;
  *(v21 + 6) = v40;
  v23 = v35;
  *v21 = v34;
  *(v21 + 1) = v23;
  v24 = v37;
  *(v21 + 2) = v36;
  *(v21 + 3) = v24;
  v25 = v32;
  sub_21C716934(v18, v32, &qword_27CDF37E8, &qword_21CBB8100);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF37D0, &qword_21CBB80F8);
  *(v25 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_21C9A6D74@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21CB832F4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3848, &qword_21CBB8180) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3850, &qword_21CBB8188);
  sub_21C6EADEC(&qword_27CDF3858, &qword_27CDF3850, &qword_21CBB8188);
  return sub_21CB81FC4();
}

uint64_t sub_21C9A6E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v74 = a2;
  v2 = sub_21CB82834();
  v77 = *(v2 - 8);
  KeyPath = v2;
  v3 = *(v77 + 64);
  MEMORY[0x28223BE20](v2);
  v73 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_21CB81024();
  v5 = *(v76 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v76);
  v8 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v66 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v66 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v66 - v16;
  MEMORY[0x28223BE20](v18);
  v79 = v66 - v19;
  MEMORY[0x28223BE20](v20);
  v75 = v66 - v21;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v71 = sub_21CB81034();
  v22 = *(v71 - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v26 = *(v5 + 8);
  v27 = v8;
  v28 = v76;
  v26(v27, v76);
  v26(v11, v28);
  v26(v14, v28);
  v26(v17, v28);
  swift_setDeallocating();
  (*(v22 + 8))(v25 + v24, v71);
  swift_deallocClassInstance();
  v29 = v75;
  sub_21CB81004();
  v26(v79, v28);
  v26(v29, v28);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v30 = swift_allocObject();
  v67 = xmmword_21CBA0690;
  *(v30 + 16) = xmmword_21CBA0690;
  v31 = v72;
  v32 = *(v72 + 8);
  v33 = v32[3];
  v34 = MEMORY[0x277D83C10];
  *(v30 + 56) = MEMORY[0x277D83B88];
  *(v30 + 64) = v34;
  *(v30 + 32) = v33;
  v35 = sub_21CB85594();
  v37 = v36;

  *&v85 = v35;
  *(&v85 + 1) = v37;
  v66[1] = sub_21C71F3FC();
  v38 = sub_21CB84054();
  v69 = v39;
  v70 = v38;
  LOBYTE(v25) = v40;
  v71 = v41;
  sub_21C805AD8();
  v79 = sub_21CB83314();
  v42 = v31 + *(type metadata accessor for PMGeneratedPasswordsSearchResultsRow() + 24);
  v43 = v73;
  sub_21C7448E0(v73);
  LOBYTE(v37) = sub_21CB82824();
  (*(v77 + 8))(v43, KeyPath);
  v73 = (v37 & 1) == 0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v11) = v25 & 1;
  v101 = v25 & 1;
  LODWORD(v72) = v25 & 1;
  LODWORD(v77) = v37 & 1;
  v99 = v37 & 1;
  v44 = v75;
  sub_21CB81014();
  sub_21CB81004();
  v26(v44, v76);
  v45 = swift_allocObject();
  *(v45 + 16) = v67;
  v46 = v32[4];
  v47 = v32[5];
  *(v45 + 56) = MEMORY[0x277D837D0];
  *(v45 + 64) = sub_21C7C0050();
  *(v45 + 32) = v46;
  *(v45 + 40) = v47;

  v48 = sub_21CB85594();
  v50 = v49;

  *&v85 = v48;
  *(&v85 + 1) = v50;
  v51 = sub_21CB84054();
  v53 = v52;
  v55 = v69;
  v54 = v70;
  *&v81 = v70;
  *(&v81 + 1) = v69;
  LOBYTE(v82) = v11;
  *(&v82 + 1) = *v100;
  DWORD1(v82) = *&v100[3];
  v56 = v71;
  *(&v82 + 1) = v71;
  *&v83 = v79;
  *(&v83 + 1) = sub_21C7902AC;
  *&v84[0] = 0;
  v57 = v73;
  *(&v84[0] + 1) = KeyPath;
  *&v84[1] = v73;
  BYTE8(v84[1]) = v77;
  *(v88 + 9) = *(v84 + 9);
  v88[0] = v84[0];
  v86 = v82;
  v87 = v83;
  v85 = v81;
  LOBYTE(v32) = v58 & 1;
  v80 = v58 & 1;
  v59 = v81;
  v60 = v82;
  v61 = v88[1];
  v62 = v74;
  *(v74 + 48) = v84[0];
  *(v62 + 64) = v61;
  v63 = v87;
  *(v62 + 16) = v60;
  *(v62 + 32) = v63;
  *v62 = v59;
  *(v62 + 80) = v51;
  *(v62 + 88) = v52;
  *(v62 + 96) = v58 & 1;
  *(v62 + 104) = v64;
  sub_21C9A7D38(&v81, v89);
  sub_21C79B058(v51, v53, v32);

  sub_21C74A72C(v51, v53, v32);

  v89[0] = v54;
  v89[1] = v55;
  v90 = v72;
  *v91 = *v100;
  *&v91[3] = *&v100[3];
  v92 = v56;
  v93 = v79;
  v94 = sub_21C7902AC;
  v95 = 0;
  v96 = KeyPath;
  v97 = v57;
  v98 = v77;
  return sub_21C9A7DA8(v89);
}

uint64_t sub_21C9A7584@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB84BB4();
  v3 = sub_21CB84A84();
  sub_21CB85214();
  sub_21CB82374();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3830, &qword_21CBB8130) + 36));
  v5 = *(sub_21CB82A84() + 20);
  v6 = *MEMORY[0x277CE0118];
  v7 = sub_21CB831A4();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #6.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAC0, &qword_21CBA2B60) + 36)] = 256;
  *(a1 + 16) = vdupq_n_s64(0x4040000000000000uLL);
  *(a1 + 40) = v23;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 32) = 0x4018000000000000;
  *(a1 + 56) = v24;
  *(a1 + 72) = v25;
  LOBYTE(v2) = sub_21CB83CF4();
  sub_21CB81F24();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3810, &qword_21CBB8128);
  v22 = a1 + *(result + 36);
  *v22 = v2;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_21C9A772C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGeneratedPasswordsSearchResultsRow();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9A7790@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PMGeneratedPasswordsSearchResultsRow() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C9A6030(v4, a1);
}

unint64_t sub_21C9A7808()
{
  result = qword_27CDF37B8;
  if (!qword_27CDF37B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF37A8, &qword_21CBB80C8);
    sub_21C72C7D4(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF37B8);
  }

  return result;
}

uint64_t sub_21C9A78C4()
{
  v1 = type metadata accessor for PMGeneratedPasswordsSearchResultsRow();
  v2 = v0 + *(v1 + 32) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_21C9A7954()
{
  result = qword_27CDF37D8;
  if (!qword_27CDF37D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF37D0, &qword_21CBB80F8);
    sub_21C9A7A0C();
    sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF37D8);
  }

  return result;
}

unint64_t sub_21C9A7A0C()
{
  result = qword_27CDF37E0;
  if (!qword_27CDF37E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF37E8, &qword_21CBB8100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF37F0, &unk_21CBB8108);
    type metadata accessor for PMAccountRowLabelStyle();
    sub_21C6EADEC(&qword_27CDF37F8, &qword_27CDF37F0, &unk_21CBB8108);
    sub_21C72C7D4(&qword_27CDEC650, type metadata accessor for PMAccountRowLabelStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF37E0);
  }

  return result;
}

unint64_t sub_21C9A7B60()
{
  result = qword_27CDF3820;
  if (!qword_27CDF3820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3810, &qword_21CBB8128);
    sub_21C9A7BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3820);
  }

  return result;
}

unint64_t sub_21C9A7BEC()
{
  result = qword_27CDF3828;
  if (!qword_27CDF3828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3830, &qword_21CBB8130);
    sub_21C9A7CA4();
    sub_21C6EADEC(&qword_27CDEBAB8, &qword_27CDEBAC0, &qword_21CBA2B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3828);
  }

  return result;
}

unint64_t sub_21C9A7CA4()
{
  result = qword_27CDF3838;
  if (!qword_27CDF3838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3840, &qword_21CBB8138);
    sub_21C830D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3838);
  }

  return result;
}

uint64_t sub_21C9A7D38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3860, &qword_21CBB81C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9A7DA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3860, &qword_21CBB81C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C9A7E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9A7E80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C9A7EE0()
{
  result = qword_27CDF3870;
  if (!qword_27CDF3870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3878, &unk_21CBB8220);
    sub_21C9A7F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3870);
  }

  return result;
}

unint64_t sub_21C9A7F64()
{
  result = qword_27CDF3880;
  if (!qword_27CDF3880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3798, &unk_21CBB80B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3788, &qword_21CBB80A0);
    sub_21CB82A54();
    sub_21C6EADEC(&qword_27CDF37C8, &qword_27CDF3788, &qword_21CBB80A0);
    sub_21C72C7D4(&qword_27CDED508, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3770, &qword_21CBB8088);
    sub_21C6EADEC(&qword_27CDF37C0, &qword_27CDF3770, &qword_21CBB8088);
    sub_21C830EB0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3880);
  }

  return result;
}

uint64_t sub_21C9A8174()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3888, &qword_21CBB82C8);
  sub_21C9A81F8();
  sub_21C9A825C();
  return sub_21CB84584();
}

unint64_t sub_21C9A81F8()
{
  result = qword_27CDF3890;
  if (!qword_27CDF3890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3888, &qword_21CBB82C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3890);
  }

  return result;
}

unint64_t sub_21C9A825C()
{
  result = qword_27CDF3898;
  if (!qword_27CDF3898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3898);
  }

  return result;
}

uint64_t sub_21C9A82B0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21C9A8364()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C9A83D8(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for PMAccount.Storage(0);
  v2[20] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  sub_21CB858B4();
  v2[22] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v2[23] = v6;
  v2[24] = v5;

  return MEMORY[0x2822009F8](sub_21C9A84A0, v6, v5);
}

uint64_t sub_21C9A84A0()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  v0[25] = v2;
  if (*(v1 + 24))
  {
    v3 = v0[22];

LABEL_5:
    v11 = v0[21];

    v12 = v0[1];

    return v12();
  }

  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[18];
  v7 = type metadata accessor for PMAccount(0);
  sub_21C9AB6C0(v6 + *(v7 + 24), v5, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = v0[21];
  if (EnumCaseMultiPayload == 1)
  {
    v10 = v0[22];

    sub_21C9AB728(v9, type metadata accessor for PMAccount.Storage);
    goto LABEL_5;
  }

  v14 = *v9;
  v0[26] = v14;
  v0[2] = v0;
  v0[3] = sub_21C9A8690;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21CAB1570;
  v0[13] = &block_descriptor_11;
  v0[14] = v15;
  [v2 clearGeneratedPasswordsMatchingSavedAccount:v14 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C9A8690()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21C9A8798, v2, v1);
}

uint64_t sub_21C9A8798()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[19];

  sub_21C6E9BB8();

  sub_21C6E9174(v1, 0);
  v5 = v0[21];

  v6 = v0[1];

  return v6();
}

size_t sub_21C9A8824(uint64_t a1)
{
  v3 = type metadata accessor for PMGeneratedPassword(0);
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  v10 = type metadata accessor for PMAccount.Storage(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x277D84F90];
  if (*(v1 + 24))
  {
    return v14;
  }

  v15 = *(v1 + 16);
  v16 = type metadata accessor for PMAccount(0);
  sub_21C9AB6C0(a1 + *(v16 + 24), v13, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C9AB728(v13, type metadata accessor for PMAccount.Storage);
    return v14;
  }

  v17 = *v13;
  v18 = [v15 generatedPasswordsMatchingSavedAccount_];
  sub_21C6E8F4C(0, &qword_27CDEAFA0, 0x277D49A38);
  v19 = sub_21CB85824();

  v20 = v19;
  if (!(v19 >> 62))
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_6;
    }

LABEL_19:

    sub_21C6E9174(v15, 0);

    return v14;
  }

  v43 = v19;
  v21 = sub_21CB85FA4();
  v20 = v43;
  if (!v21)
  {
    goto LABEL_19;
  }

LABEL_6:
  v22 = v20;
  v44 = v17;
  v45 = v15;
  v51 = v14;
  result = sub_21C7B0B84(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v14 = v51;
    v25 = v22;
    v46 = v22 & 0xC000000000000001;
    v47 = v21;
    v48 = v22;
    do
    {
      if (v46)
      {
        v26 = MEMORY[0x21CF15BD0](v24, v25);
      }

      else
      {
        v26 = *(v25 + 8 * v24 + 32);
      }

      v27 = v26;
      *(v7 + *(v50 + 20)) = v26;
      type metadata accessor for PMGeneratedPassword.Storage(0);
      swift_storeEnumTagMultiPayload();
      v28 = v27;
      v29 = [v28 protectionSpace];
      if (v29)
      {
        v30 = v29;
        v31 = [v29 host];
      }

      else
      {
        v31 = [objc_opt_self() privateBrowsingSentinel];
      }

      v32 = sub_21CB855C4();
      v34 = v33;

      v35 = [v28 password];
      v36 = sub_21CB855C4();
      v38 = v37;

      v39 = [v28 generationDate];
      v40 = v7 + *(type metadata accessor for PMGeneratedPassword.ID(0) + 24);
      sub_21CB80D94();

      *v7 = v32;
      v7[1] = v34;
      v7[2] = v36;
      v7[3] = v38;
      sub_21C7D5F48(v7, v9);
      v51 = v14;
      v42 = *(v14 + 16);
      v41 = *(v14 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_21C7B0B84(v41 > 1, v42 + 1, 1);
        v14 = v51;
      }

      ++v24;
      *(v14 + 16) = v42 + 1;
      sub_21C7D5F48(v9, v14 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v42);
      v25 = v48;
    }

    while (v47 != v24);
    sub_21C6E9174(v45, 0);

    return v14;
  }

  __break(1u);
  return result;
}

void sub_21C9A8C74(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for PMGeneratedPassword(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMGeneratedPassword.Storage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*(v3 + 24) & 1) == 0)
  {
    v15 = *(v3 + 16);
    sub_21C9AB6C0(a1 + *(v7 + 20), v14, type metadata accessor for PMGeneratedPassword.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v17 = *v14;
    if (EnumCaseMultiPayload == 1)
    {

      v18 = v14[2];

      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
      v20 = sub_21CB80DD4();
      (*(*(v20 - 8) + 8))(v14 + v19, v20);
    }

    else
    {
      if (a2)
      {
        aBlock[4] = a2;
        aBlock[5] = a3;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21C6ECBD4;
        aBlock[3] = &block_descriptor_8;
        v21 = _Block_copy(aBlock);
        sub_21C9AB788(v15, 0);
        sub_21C71DD5C(a2);
      }

      else
      {
        v22 = v15;
        v21 = 0;
      }

      [v15 removeGeneratedPassword:v17 completionHandler:v21];
      _Block_release(v21);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v23 = sub_21CAB1704(a1, aBlock[0]);
      v25 = v24;

      if ((v25 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v26 = sub_21CB81DA4();
        sub_21CACA9F8(v23, v10);
        sub_21C9AB728(v10, type metadata accessor for PMGeneratedPassword);
        v26(aBlock, 0);
      }

      sub_21C6E9174(v15, 0);
    }
  }
}

uint64_t sub_21C9A8FB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C9A9030(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C9A90AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CB853D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB85404();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v13 = sub_21CB85CF4();
  aBlock[4] = sub_21C9A96FC;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_21;
  v14 = _Block_copy(aBlock);

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C91A4E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C91A53C();
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v12, v7, v14);
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_21C9A932C(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = type metadata accessor for PMGeneratedPassword.Storage(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = sub_21CB80DD4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = type metadata accessor for PMGeneratedPassword(0);
  sub_21C9AB6C0(a1 + *(v18 + 20), v9, type metadata accessor for PMGeneratedPassword.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = *v9;
  if (EnumCaseMultiPayload == 1)
  {

    v21 = *(v9 + 2);

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
    (*(v11 + 32))(v17, &v9[*(v22 + 64)], v10);
  }

  else
  {
    v23 = [*v9 generationDate];
    sub_21CB80D94();
  }

  sub_21C9AB6C0(v33 + *(v18 + 20), v7, type metadata accessor for PMGeneratedPassword.Storage);
  v24 = swift_getEnumCaseMultiPayload();
  v25 = *v7;
  if (v24 == 1)
  {

    v26 = *(v7 + 2);

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
    (*(v11 + 32))(v15, &v7[*(v27 + 64)], v10);
  }

  else
  {
    v28 = [*v7 generationDate];
    sub_21CB80D94();
  }

  v29 = sub_21CB80D34();
  v30 = *(v11 + 8);
  v30(v15, v10);
  v30(v17, v10);
  return v29 & 1;
}

uint64_t sub_21C9A9634()
{
  sub_21C6E9174(*(v0 + 16), *(v0 + 24));
  v1 = OBJC_IVAR____TtC17PasswordManagerUI24PMGeneratedPasswordStore__generatedPasswords;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB560, &unk_21CBB4090);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C9A9700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v76 = type metadata accessor for PMGeneratedPassword.Storage(0);
  v8 = *(*(v76 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v76);
  v72 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v59 - v11;
  v13 = sub_21CB80DD4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v73 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v75 = &v59 - v18;
  v19 = type metadata accessor for PMGeneratedPassword(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v68 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v77 = &v59 - v24;
  result = MEMORY[0x28223BE20](v23);
  v74 = &v59 - v27;
  v61 = a2;
  if (a3 != a2)
  {
    v28 = result;
    v29 = *a4;
    v30 = *(v26 + 72);
    v70 = (v14 + 8);
    v71 = (v14 + 32);
    v31 = v29 + v30 * (a3 - 1);
    v66 = -v30;
    v67 = v29;
    v32 = a1 - a3;
    v60 = v30;
    v33 = v29 + v30 * a3;
    v69 = v12;
LABEL_5:
    v64 = v31;
    v65 = a3;
    v62 = v33;
    v63 = v32;
    v34 = v32;
    while (1)
    {
      v35 = v74;
      sub_21C9AB6C0(v33, v74, type metadata accessor for PMGeneratedPassword);
      sub_21C9AB6C0(v31, v77, type metadata accessor for PMGeneratedPassword);
      sub_21C9AB6C0(v35 + *(v28 + 20), v12, type metadata accessor for PMGeneratedPassword.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v37 = *v12;
      if (EnumCaseMultiPayload == 1)
      {

        v38 = *(v12 + 2);

        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
        (*v71)(v75, &v12[*(v39 + 64)], v13);
      }

      else
      {
        v40 = v13;
        v41 = [*v12 generationDate];
        sub_21CB80D94();

        v13 = v40;
      }

      v42 = v28;
      v43 = v72;
      sub_21C9AB6C0(v77 + *(v28 + 20), v72, type metadata accessor for PMGeneratedPassword.Storage);
      v44 = swift_getEnumCaseMultiPayload();
      v45 = *v43;
      if (v44 == 1)
      {

        v46 = *(v43 + 16);

        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
        v48 = v73;
        (*v71)(v73, (v43 + *(v47 + 64)), v13);
        v49 = v13;
      }

      else
      {
        v50 = [*v43 generationDate];
        v49 = v13;
        v51 = v50;
        v48 = v73;
        sub_21CB80D94();
      }

      v52 = v75;
      v53 = sub_21CB80D34();
      v54 = v48;
      v55 = v53;
      v56 = *v70;
      (*v70)(v54, v49);
      v56(v52, v49);
      sub_21C9AB728(v77, type metadata accessor for PMGeneratedPassword);
      result = sub_21C9AB728(v74, type metadata accessor for PMGeneratedPassword);
      v13 = v49;
      v28 = v42;
      v12 = v69;
      if ((v55 & 1) == 0)
      {
LABEL_4:
        a3 = v65 + 1;
        v31 = v64 + v60;
        v32 = v63 - 1;
        v33 = v62 + v60;
        if (v65 + 1 == v61)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v67)
      {
        break;
      }

      v57 = v68;
      sub_21C7D5F48(v33, v68);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_21C7D5F48(v57, v31);
      v31 += v66;
      v33 += v66;
      if (__CFADD__(v34++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21C9A9C38(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v167 = a1;
  v196 = type metadata accessor for PMGeneratedPassword.Storage(0);
  v6 = *(*(v196 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v196);
  v9 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v163 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v174 = &v163 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v163 - v15;
  v17 = sub_21CB80DD4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v189 = &v163 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v195 = &v163 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v173 = &v163 - v25;
  MEMORY[0x28223BE20](v24);
  v182 = &v163 - v26;
  v192 = type metadata accessor for PMGeneratedPassword(0);
  v179 = *(v192 - 8);
  v27 = *(v179 + 64);
  v28 = MEMORY[0x28223BE20](v192);
  v169 = &v163 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v186 = &v163 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v197 = &v163 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v194 = &v163 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v163 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v181 = &v163 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  result = MEMORY[0x28223BE20](v41);
  v180 = a3;
  v45 = *(a3 + 8);
  if (v45 < 1)
  {
    v47 = MEMORY[0x277D84F90];
LABEL_110:
    a3 = *v167;
    if (!*v167)
    {
      goto LABEL_150;
    }

    v18 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v184;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v18;
    }

    else
    {
LABEL_144:
      result = sub_21C864538(v18);
    }

    v198 = result;
    v18 = *(result + 16);
    if (v18 >= 2)
    {
      while (*v180)
      {
        v159 = *(result + 16 * v18);
        v160 = result;
        v161 = *(result + 16 * (v18 - 1) + 40);
        sub_21C9AAC30(*v180 + *(v179 + 72) * v159, *v180 + *(v179 + 72) * *(result + 16 * (v18 - 1) + 32), *v180 + *(v179 + 72) * v161, a3);
        if (v38)
        {
        }

        if (v161 < v159)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v160 = sub_21C864538(v160);
        }

        if (v18 - 2 >= *(v160 + 2))
        {
          goto LABEL_138;
        }

        v162 = &v160[16 * v18];
        *v162 = v159;
        *(v162 + 1) = v161;
        v198 = v160;
        sub_21C8644AC(v18 - 1);
        result = v198;
        v18 = *(v198 + 16);
        if (v18 <= 1)
        {
        }
      }

      goto LABEL_148;
    }
  }

  v163 = &v163 - v43;
  v164 = v44;
  v46 = 0;
  v191 = (v18 + 32);
  v47 = MEMORY[0x277D84F90];
  v190 = (v18 + 8);
  v166 = a4;
  v175 = v16;
  v193 = v17;
  v187 = v9;
  v188 = v12;
  v177 = v38;
  while (1)
  {
    v48 = v46;
    v170 = v47;
    if (v46 + 1 < v45)
    {
      v183 = v45;
      v49 = *v180;
      a3 = *(v179 + 72);
      v185 = *v180 + a3 * (v46 + 1);
      v50 = v163;
      sub_21C9AB6C0(v185, v163, type metadata accessor for PMGeneratedPassword);
      v178 = v49;
      v51 = v49 + a3 * v48;
      v52 = v48;
      v53 = v164;
      sub_21C9AB6C0(v51, v164, type metadata accessor for PMGeneratedPassword);
      v54 = v184;
      LODWORD(v176) = sub_21C9A932C(v50, v53);
      v184 = v54;
      if (!v54)
      {
        sub_21C9AB728(v53, type metadata accessor for PMGeneratedPassword);
        result = sub_21C9AB728(v50, type metadata accessor for PMGeneratedPassword);
        v165 = v52;
        v55 = v52 + 2;
        v56 = v178 + a3 * (v52 + 2);
        v57 = a3;
        v178 = a3;
        v18 = v185;
        while (1)
        {
          v78 = v183;
          if (v183 == v55)
          {
            break;
          }

          v67 = v181;
          sub_21C9AB6C0(v56, v181, type metadata accessor for PMGeneratedPassword);
          sub_21C9AB6C0(v18, v38, type metadata accessor for PMGeneratedPassword);
          sub_21C9AB6C0(v67 + *(v192 + 20), v16, type metadata accessor for PMGeneratedPassword.Storage);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v69 = *v16;
          if (EnumCaseMultiPayload == 1)
          {

            v70 = *(v16 + 2);

            v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
            (*v191)(v182, &v16[*(v71 + 64)], v193);
          }

          else
          {
            v72 = [*v16 generationDate];
            sub_21CB80D94();
          }

          v73 = v174;
          v74 = v173;
          sub_21C9AB6C0(&v38[*(v192 + 20)], v174, type metadata accessor for PMGeneratedPassword.Storage);
          v75 = swift_getEnumCaseMultiPayload();
          v76 = *v73;
          v185 = v18;
          if (v75 == 1)
          {

            v58 = *(v73 + 16);

            v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
            v60 = v193;
            (*v191)(v74, (v73 + *(v59 + 64)), v193);
          }

          else
          {
            v77 = [v76 generationDate];
            sub_21CB80D94();

            v60 = v193;
          }

          v61 = v182;
          v62 = sub_21CB80D34();
          v63 = v74;
          v64 = v62 & 1;
          v65 = *v190;
          (*v190)(v63, v60);
          v65(v61, v60);
          a3 = type metadata accessor for PMGeneratedPassword;
          v38 = v177;
          sub_21C9AB728(v177, type metadata accessor for PMGeneratedPassword);
          result = sub_21C9AB728(v181, type metadata accessor for PMGeneratedPassword);
          ++v55;
          v57 = v178;
          v56 += v178;
          v18 = v185 + v178;
          v66 = (v176 & 1) == v64;
          v16 = v175;
          if (!v66)
          {
            v78 = v55 - 1;
            break;
          }
        }

        a4 = v166;
        v48 = v165;
        if (v176)
        {
          if (v78 < v165)
          {
            goto LABEL_143;
          }

          if (v165 < v78)
          {
            a3 = v57 * (v78 - 1);
            v79 = v78 * v57;
            v183 = v78;
            v80 = v78;
            v81 = v165;
            v82 = v165 * v57;
            do
            {
              if (v81 != --v80)
              {
                v83 = *v180;
                if (!*v180)
                {
                  goto LABEL_147;
                }

                v18 = v83 + v82;
                sub_21C7D5F48(v83 + v82, v169);
                if (v82 < a3 || v18 >= v83 + v79)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v82 != a3)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_21C7D5F48(v169, v83 + a3);
                v38 = v177;
                v57 = v178;
              }

              ++v81;
              a3 -= v57;
              v79 -= v57;
              v82 += v57;
            }

            while (v81 < v80);
            a4 = v166;
            v16 = v175;
            v48 = v165;
            v78 = v183;
          }
        }

        goto LABEL_31;
      }

      sub_21C9AB728(v53, type metadata accessor for PMGeneratedPassword);
      sub_21C9AB728(v50, type metadata accessor for PMGeneratedPassword);
    }

    v78 = v46 + 1;
LABEL_31:
    v84 = v180[1];
    if (v78 >= v84)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v78, v48))
    {
      goto LABEL_140;
    }

    if (v78 - v48 >= a4)
    {
LABEL_40:
      v86 = v78;
      if (v78 < v48)
      {
        goto LABEL_139;
      }

      goto LABEL_41;
    }

    if (__OFADD__(v48, a4))
    {
      goto LABEL_141;
    }

    if (v48 + a4 >= v84)
    {
      v85 = v180[1];
    }

    else
    {
      v85 = v48 + a4;
    }

    if (v85 < v48)
    {
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (v78 == v85)
    {
      goto LABEL_40;
    }

    v131 = *v180;
    v132 = *(v179 + 72);
    v133 = *v180 + v132 * (v78 - 1);
    v134 = v48;
    v135 = -v132;
    v165 = v134;
    v136 = v134 - v78;
    v185 = v131;
    v168 = v132;
    v18 = v131 + v78 * v132;
    v137 = v192;
    v171 = v85;
LABEL_93:
    v183 = v78;
    v172 = v18;
    v176 = v136;
    v178 = v133;
    v138 = v133;
LABEL_94:
    v139 = v194;
    sub_21C9AB6C0(v18, v194, type metadata accessor for PMGeneratedPassword);
    sub_21C9AB6C0(v138, v197, type metadata accessor for PMGeneratedPassword);
    sub_21C9AB6C0(v139 + *(v137 + 20), v12, type metadata accessor for PMGeneratedPassword.Storage);
    v140 = swift_getEnumCaseMultiPayload();
    v141 = *v12;
    if (v140 == 1)
    {

      v142 = *(v12 + 2);

      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
      (*v191)(v195, &v12[*(v143 + 64)], v193);
    }

    else
    {
      v144 = [*v12 generationDate];
      sub_21CB80D94();
    }

    sub_21C9AB6C0(v197 + *(v137 + 20), v9, type metadata accessor for PMGeneratedPassword.Storage);
    v145 = swift_getEnumCaseMultiPayload();
    v146 = *v9;
    if (v145 == 1)
    {

      v147 = *(v9 + 2);

      v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
      v149 = v189;
      v150 = v193;
      (*v191)(v189, &v9[*(v148 + 64)], v193);
    }

    else
    {
      v151 = [*v9 generationDate];
      v152 = v189;
      sub_21CB80D94();

      v149 = v152;
      v150 = v193;
    }

    v153 = v195;
    v154 = sub_21CB80D34();
    v155 = v149;
    a3 = v154;
    v156 = *v190;
    (*v190)(v155, v150);
    v156(v153, v150);
    sub_21C9AB728(v197, type metadata accessor for PMGeneratedPassword);
    result = sub_21C9AB728(v194, type metadata accessor for PMGeneratedPassword);
    if (a3)
    {
      break;
    }

    v9 = v187;
    v12 = v188;
    v137 = v192;
LABEL_92:
    v78 = v183 + 1;
    v133 = v178 + v168;
    v136 = v176 - 1;
    v18 = v172 + v168;
    v86 = v171;
    if (v183 + 1 != v171)
    {
      goto LABEL_93;
    }

    v16 = v175;
    v38 = v177;
    v48 = v165;
    if (v171 < v165)
    {
      goto LABEL_139;
    }

LABEL_41:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v47 = v170;
    }

    else
    {
      result = sub_21C86467C(0, *(v170 + 2) + 1, 1, v170);
      v47 = result;
    }

    a3 = *(v47 + 2);
    v87 = *(v47 + 3);
    v18 = a3 + 1;
    if (a3 >= v87 >> 1)
    {
      result = sub_21C86467C((v87 > 1), a3 + 1, 1, v47);
      v47 = result;
    }

    *(v47 + 2) = v18;
    v88 = &v47[16 * a3];
    *(v88 + 4) = v48;
    *(v88 + 5) = v86;
    v185 = *v167;
    if (!v185)
    {
      goto LABEL_149;
    }

    v171 = v86;
    if (a3)
    {
      while (2)
      {
        v89 = v18 - 1;
        if (v18 >= 4)
        {
          v94 = &v47[16 * v18 + 32];
          v95 = *(v94 - 64);
          v96 = *(v94 - 56);
          v100 = __OFSUB__(v96, v95);
          v97 = v96 - v95;
          if (v100)
          {
            goto LABEL_126;
          }

          v99 = *(v94 - 48);
          v98 = *(v94 - 40);
          v100 = __OFSUB__(v98, v99);
          v92 = v98 - v99;
          v93 = v100;
          if (v100)
          {
            goto LABEL_127;
          }

          v101 = &v47[16 * v18];
          v103 = *v101;
          v102 = *(v101 + 1);
          v100 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v100)
          {
            goto LABEL_129;
          }

          v100 = __OFADD__(v92, v104);
          v105 = v92 + v104;
          if (v100)
          {
            goto LABEL_132;
          }

          if (v105 >= v97)
          {
            v123 = &v47[16 * v89 + 32];
            v125 = *v123;
            v124 = *(v123 + 1);
            v100 = __OFSUB__(v124, v125);
            v126 = v124 - v125;
            if (v100)
            {
              goto LABEL_136;
            }

            if (v92 < v126)
            {
              v89 = v18 - 2;
            }
          }

          else
          {
LABEL_60:
            if (v93)
            {
              goto LABEL_128;
            }

            v106 = &v47[16 * v18];
            v108 = *v106;
            v107 = *(v106 + 1);
            v109 = __OFSUB__(v107, v108);
            v110 = v107 - v108;
            v111 = v109;
            if (v109)
            {
              goto LABEL_131;
            }

            v112 = &v47[16 * v89 + 32];
            v114 = *v112;
            v113 = *(v112 + 1);
            v100 = __OFSUB__(v113, v114);
            v115 = v113 - v114;
            if (v100)
            {
              goto LABEL_134;
            }

            if (__OFADD__(v110, v115))
            {
              goto LABEL_135;
            }

            if (v110 + v115 < v92)
            {
              goto LABEL_74;
            }

            if (v92 < v115)
            {
              v89 = v18 - 2;
            }
          }
        }

        else
        {
          if (v18 == 3)
          {
            v90 = *(v47 + 4);
            v91 = *(v47 + 5);
            v100 = __OFSUB__(v91, v90);
            v92 = v91 - v90;
            v93 = v100;
            goto LABEL_60;
          }

          v116 = &v47[16 * v18];
          v118 = *v116;
          v117 = *(v116 + 1);
          v100 = __OFSUB__(v117, v118);
          v110 = v117 - v118;
          v111 = v100;
LABEL_74:
          if (v111)
          {
            goto LABEL_130;
          }

          v119 = &v47[16 * v89];
          v121 = *(v119 + 4);
          v120 = *(v119 + 5);
          v100 = __OFSUB__(v120, v121);
          v122 = v120 - v121;
          if (v100)
          {
            goto LABEL_133;
          }

          if (v122 < v110)
          {
            break;
          }
        }

        a3 = v89 - 1;
        if (v89 - 1 >= v18)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*v180)
        {
          goto LABEL_146;
        }

        v127 = v47;
        v18 = *&v47[16 * a3 + 32];
        v128 = *&v47[16 * v89 + 40];
        v129 = v184;
        sub_21C9AAC30(*v180 + *(v179 + 72) * v18, *v180 + *(v179 + 72) * *&v47[16 * v89 + 32], *v180 + *(v179 + 72) * v128, v185);
        v184 = v129;
        if (v129)
        {
        }

        if (v128 < v18)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = sub_21C864538(v127);
        }

        if (a3 >= *(v127 + 2))
        {
          goto LABEL_125;
        }

        v130 = &v127[16 * a3];
        *(v130 + 4) = v18;
        *(v130 + 5) = v128;
        v198 = v127;
        result = sub_21C8644AC(v89);
        v47 = v198;
        v18 = *(v198 + 16);
        if (v18 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v45 = v180[1];
    v46 = v171;
    a4 = v166;
    if (v171 >= v45)
    {
      goto LABEL_110;
    }
  }

  v137 = v192;
  v12 = v188;
  if (v185)
  {
    a3 = v186;
    sub_21C7D5F48(v18, v186);
    swift_arrayInitWithTakeFrontToBack();
    sub_21C7D5F48(a3, v138);
    v138 += v135;
    v18 += v135;
    v157 = __CFADD__(v136++, 1);
    v9 = v187;
    if (v157)
    {
      goto LABEL_92;
    }

    goto LABEL_94;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

uint64_t sub_21C9AAC30(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v114 = type metadata accessor for PMGeneratedPassword.Storage(0);
  v8 = *(*(v114 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v114);
  v104 = (&v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v103 = &v98 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v98 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v98 - v16;
  v110 = sub_21CB80DD4();
  v18 = *(v110 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v110);
  v102 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v109 = &v98 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v107 = &v98 - v25;
  MEMORY[0x28223BE20](v24);
  v112 = &v98 - v26;
  v115 = type metadata accessor for PMGeneratedPassword(0);
  v27 = *(*(v115 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v115);
  v105 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v108 = &v98 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v113 = &v98 - v33;
  result = MEMORY[0x28223BE20](v32);
  v111 = &v98 - v35;
  v37 = *(v36 + 72);
  if (!v37)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v37 == -1)
  {
    goto LABEL_72;
  }

  v38 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v37 == -1)
  {
    goto LABEL_73;
  }

  v39 = (a2 - a1) / v37;
  v118 = a1;
  v117 = a4;
  if (v39 >= v38 / v37)
  {
    v41 = v38 / v37 * v37;
    if (a4 < a2 || a2 + v41 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v42 = v105;
    }

    else
    {
      v42 = v105;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v111 = a2;
    v69 = a4 + v41;
    if (v41 >= 1)
    {
      v70 = -v37;
      v99 = (v18 + 8);
      v100 = (v18 + 32);
      v71 = a4 + v41;
      v73 = v103;
      v72 = v104;
      v101 = a4;
      v113 = v70;
      do
      {
        v98 = v69;
        v74 = v111;
        v111 += v70;
        v106 = v74;
        v107 = v69;
        while (1)
        {
          if (v74 <= a1)
          {
            v118 = v74;
            v116 = v98;
            goto LABEL_70;
          }

          v75 = a3;
          v76 = (v71 + v70);
          v77 = v108;
          sub_21C9AB6C0(v71 + v70, v108, type metadata accessor for PMGeneratedPassword);
          sub_21C9AB6C0(v111, v42, type metadata accessor for PMGeneratedPassword);
          sub_21C9AB6C0(v77 + *(v115 + 20), v73, type metadata accessor for PMGeneratedPassword.Storage);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v79 = *v73;
          if (EnumCaseMultiPayload == 1)
          {

            v80 = *(v73 + 16);

            v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
            (*v100)(v109, v73 + *(v81 + 64), v110);
          }

          else
          {
            v82 = [*v73 generationDate];
            sub_21CB80D94();
          }

          sub_21C9AB6C0(v42 + *(v115 + 20), v72, type metadata accessor for PMGeneratedPassword.Storage);
          v83 = swift_getEnumCaseMultiPayload();
          v84 = *v72;
          v112 = v76;
          if (v83 == 1)
          {

            v85 = v72[2];

            v86 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
            v87 = v102;
            v88 = v110;
            (*v100)(v102, v86, v110);
          }

          else
          {
            v89 = [v84 generationDate];
            v87 = v102;
            sub_21CB80D94();

            v88 = v110;
          }

          a3 = v75 + v113;
          v90 = v109;
          v91 = sub_21CB80D34();
          v92 = v87;
          v93 = v91;
          v94 = *v99;
          (*v99)(v92, v88);
          v94(v90, v88);
          v42 = v105;
          sub_21C9AB728(v105, type metadata accessor for PMGeneratedPassword);
          sub_21C9AB728(v108, type metadata accessor for PMGeneratedPassword);
          if (v93)
          {
            break;
          }

          v95 = v112;
          v96 = v112;
          if (v75 < v71 || a3 >= v71)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v75 != v71)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v107 = v96;
          v71 = v96;
          v73 = v103;
          v72 = v104;
          v70 = v113;
          v74 = v106;
          if (v95 <= v101)
          {
            v111 = v106;
            v69 = v107;
            goto LABEL_69;
          }
        }

        v73 = v103;
        v72 = v104;
        if (v75 < v106 || a3 >= v106)
        {
          swift_arrayInitWithTakeFrontToBack();
          v97 = v101;
          v69 = v107;
        }

        else
        {
          v97 = v101;
          v69 = v107;
          if (v75 != v106)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v70 = v113;
      }

      while (v71 > v97);
    }

LABEL_69:
    v118 = v111;
    v116 = v69;
  }

  else
  {
    v40 = v39 * v37;
    if (a4 < a1 || a1 + v40 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v109 = (a4 + v40);
    v116 = a4 + v40;
    if (v40 >= 1 && a2 < a3)
    {
      v104 = (v18 + 32);
      v105 = v37;
      v44 = (v18 + 8);
      v108 = v15;
      v106 = a3;
      do
      {
        v45 = v111;
        sub_21C9AB6C0(a2, v111, type metadata accessor for PMGeneratedPassword);
        v46 = a4;
        sub_21C9AB6C0(a4, v113, type metadata accessor for PMGeneratedPassword);
        sub_21C9AB6C0(v45 + *(v115 + 20), v17, type metadata accessor for PMGeneratedPassword.Storage);
        v47 = swift_getEnumCaseMultiPayload();
        v48 = *v17;
        v49 = a2;
        if (v47 == 1)
        {

          v50 = *(v17 + 2);

          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
          v52 = v110;
          (*v104)(v112, &v17[*(v51 + 64)], v110);
        }

        else
        {
          v53 = [*v17 generationDate];
          sub_21CB80D94();

          v52 = v110;
        }

        sub_21C9AB6C0(v113 + *(v115 + 20), v15, type metadata accessor for PMGeneratedPassword.Storage);
        v54 = swift_getEnumCaseMultiPayload();
        v55 = *v15;
        if (v54 == 1)
        {

          v56 = *(v15 + 2);

          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
          v58 = v107;
          (*v104)(v107, &v15[*(v57 + 64)], v52);
          v59 = v52;
        }

        else
        {
          v60 = [*v15 generationDate];
          v59 = v52;
          v61 = v60;
          v58 = v107;
          sub_21CB80D94();
        }

        v62 = v112;
        v63 = sub_21CB80D34();
        v64 = v58;
        v65 = v63;
        v66 = *v44;
        (*v44)(v64, v59);
        v66(v62, v59);
        sub_21C9AB728(v113, type metadata accessor for PMGeneratedPassword);
        sub_21C9AB728(v111, type metadata accessor for PMGeneratedPassword);
        v67 = v105;
        if (v65)
        {
          v68 = v49;
          a2 = v49 + v105;
          v15 = v108;
          if (a1 < v49 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            a4 = v46;
          }

          else
          {
            a4 = v46;
            if (a1 != v68)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          a2 = v49;
          v15 = v108;
          if (a1 < v46 || a1 >= v46 + v105)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v117 = v46 + v67;
          a4 = v46 + v67;
        }

        a1 += v67;
        v118 = a1;
      }

      while (a4 < v109 && a2 < v106);
    }
  }

LABEL_70:
  sub_21C86454C(&v118, &v117, &v116);
  return 1;
}

uint64_t sub_21C9AB6C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9AB728(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_21C9AB788(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t sub_21C9AB7FC()
{
  result = type metadata accessor for PMSharingGroup();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21C9AB884@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v100 = sub_21CB829D4();
  v99 = *(v100 - 8);
  v2 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v98 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for _PMGroupAccountsView(0);
  v5 = v4 - 8;
  v103 = *(v4 - 8);
  v109 = *(v103 + 8);
  MEMORY[0x28223BE20](v4);
  v108 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_21CB83554();
  v81 = *(v83 - 8);
  v7 = *(v81 + 64);
  MEMORY[0x28223BE20](v83);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_21CB83584();
  v84 = *(v104 - 1);
  v10 = *(v84 + 64);
  MEMORY[0x28223BE20](v104);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF38F0, &qword_21CBB8618);
  v82 = *(OpaqueTypeConformance2 - 8);
  v13 = *(v82 + 64);
  MEMORY[0x28223BE20](OpaqueTypeConformance2);
  v15 = &v80 - v14;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF38F8, &qword_21CBB8620);
  v86 = *(v85 - 8);
  v16 = *(v86 + 64);
  MEMORY[0x28223BE20](v85);
  v107 = &v80 - v17;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3900, &qword_21CBB8628);
  v88 = *(v87 - 8);
  v18 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  v110 = &v80 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3908, &qword_21CBB8630);
  v21 = *(v20 - 8);
  v89 = v20 - 8;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v111 = &v80 - v23;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3910, &qword_21CBB8638);
  v24 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v80 - v25;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3918, &qword_21CBB8640);
  v96 = *(v97 - 8);
  v26 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v94 = &v80 - v27;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3920, &qword_21CBB8648);
  v93 = *(v95 - 8);
  v28 = *(v93 + 64);
  MEMORY[0x28223BE20](v95);
  v91 = &v80 - v29;
  v102 = v1;
  v112 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3928, &qword_21CBB8650);
  sub_21C6EADEC(&qword_27CDF3930, &qword_27CDF3928, &qword_21CBB8650);
  sub_21CB83EF4();
  v105 = v5;
  v30 = (v1 + *(v5 + 52));
  v31 = *v30;
  v32 = v30[1];
  type metadata accessor for PMAccountsListModel(0);
  sub_21C705F88(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
  sub_21CB82B54();
  swift_getKeyPath();
  sub_21CB82B74();

  sub_21CB83544();
  sub_21CB83534();
  (*(v81 + 8))(v9, v83);
  v33 = sub_21C6EADEC(&qword_27CDF3938, &qword_27CDF38F0, &qword_21CBB8618);
  v34 = OpaqueTypeConformance2;
  sub_21CB84114();

  (*(v84 + 8))(v12, v104);
  (*(v82 + 8))(v15, v34);
  v35 = v102;
  v36 = v102 + *(v5 + 28);
  v37 = *v36;
  v38 = *(v36 + 8);
  LOBYTE(v113) = v37;
  v114 = v38;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v104 = type metadata accessor for _PMGroupAccountsView;
  v39 = v108;
  sub_21C9AF754(v35, v108, type metadata accessor for _PMGroupAccountsView);
  v40 = *(v103 + 80);
  v41 = (v40 + 16) & ~v40;
  v42 = swift_allocObject();
  v103 = type metadata accessor for _PMGroupAccountsView;
  sub_21C9AF7BC(v39, v42 + v41, type metadata accessor for _PMGroupAccountsView);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB90, &qword_21CBA5268);
  v115 = OpaqueTypeConformance2;
  v116 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = sub_21C815788();
  v44 = v85;
  v45 = v107;
  sub_21CB847B4();

  (*(v86 + 8))(v45, v44);
  v46 = v102;
  v47 = v102 + *(v105 + 32);
  v48 = *v47;
  v49 = *(v47 + 8);
  LOBYTE(v113) = v48;
  v114 = v49;
  sub_21CB84D74();
  LODWORD(v107) = v117;
  v50 = v108;
  sub_21C9AF754(v46, v108, v104);
  v51 = swift_allocObject();
  sub_21C9AF7BC(v50, v51 + v41, v103);
  type metadata accessor for PMGroupInvitationAcceptanceFlow();
  v115 = v44;
  v116 = v83;
  v117 = OpaqueTypeConformance2;
  v118 = v43;
  swift_getOpaqueTypeConformance2();
  sub_21C705F88(&qword_27CDEE938, type metadata accessor for PMGroupInvitationAcceptanceFlow);
  v52 = v111;
  v53 = v87;
  v54 = v110;
  sub_21CB847B4();

  (*(v88 + 8))(v54, v53);
  sub_21C9AF754(v46, v50, v104);
  v110 = v40;
  v55 = swift_allocObject();
  sub_21C9AF7BC(v50, v55 + v41, v103);
  v56 = (v52 + *(v89 + 44));
  *v56 = sub_21C9AFD2C;
  v56[1] = v55;
  v56[2] = 0;
  v56[3] = 0;
  v57 = v46 + *(v105 + 48);
  v58 = *v57;
  if (*v57)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v92;
    v60 = v90;
    v61 = &v90[*(v92 + 36)];
    v62 = v58;
    sub_21CB81DB4();

    sub_21C9AF754(v46, v50, type metadata accessor for _PMGroupAccountsView);
    v63 = swift_allocObject();
    sub_21C9AF7BC(v50, v63 + v41, type metadata accessor for _PMGroupAccountsView);
    v64 = &v61[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED990, &qword_21CBA7E90) + 36)];
    *v64 = sub_21C9AFD44;
    v64[1] = v63;
    sub_21C770170(v111, v60);
    v65 = v98;
    sub_21CB85294();
    v66 = sub_21C9AFDB4();
    v67 = sub_21C705F88(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    v68 = v94;
    v69 = v100;
    sub_21CB849C4();
    (*(v99 + 8))(v65, v69);
    sub_21C7701E0(v60);
    v70 = (v46 + *(type metadata accessor for PMSharingGroup() + 20));
    v72 = *v70;
    v71 = v70[1];
    v113 = v72;
    v114 = v71;
    v115 = v59;
    v116 = v69;
    v117 = v66;
    v118 = v67;
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    v73 = v91;
    v74 = v97;
    sub_21CB842F4();
    (*(v96 + 8))(v68, v74);
    KeyPath = swift_getKeyPath();
    v76 = v101;
    (*(v93 + 32))(v101, v73, v95);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3950, &unk_21CBB86F8);
    v78 = v76 + *(result + 36);
    *v78 = KeyPath;
    *(v78 + 8) = 0;
  }

  else
  {
    v79 = *(v57 + 8);
    type metadata accessor for PMPasswordManagerState();
    sub_21C705F88(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C9AC714@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3958, &qword_21CBB8708);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3960, &qword_21CBB8710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v40 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3968, &qword_21CBB8718);
  v42 = *(v14 - 8);
  v15 = *(v42 + 64);
  MEMORY[0x28223BE20](v14);
  v43 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  v45 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3970, &qword_21CBB8720);
  sub_21C6EADEC(&qword_27CDF3978, &qword_27CDF3970, &qword_21CBB8720);
  v41 = v19;
  sub_21CB85054();
  v20 = sub_21C9ACC28();
  if (v20)
  {
    MEMORY[0x28223BE20](v20);
    *(&v37 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB68, &qword_21CBB8730);
    sub_21C6EADEC(&qword_27CDF3988, &qword_27CDEDB68, &qword_21CBB8730);
    sub_21CB85054();
    (*(v4 + 32))(v13, v7, v3);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v4 + 56))(v13, v21, 1, v3);
  type metadata accessor for PMAccountsListModel(0);
  sub_21C705F88(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
  v38 = sub_21CB82B84();
  v39 = v22;
  v23 = [objc_opt_self() safari_browserDefaults];
  v24 = sub_21CB81E74();
  v25 = v42;
  v26 = v43;
  v27 = v13;
  v28 = *(v42 + 16);
  v29 = v41;
  v28(v43, v41, v14);
  v30 = v40;
  sub_21C6EDBAC(v27, v40, &qword_27CDF3960, &qword_21CBB8710);
  v31 = v44;
  v28(v44, v26, v14);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3980, &qword_21CBB8728);
  sub_21C6EDBAC(v30, &v31[*(v32 + 48)], &qword_27CDF3960, &qword_21CBB8710);
  v33 = &v31[*(v32 + 64)];
  v34 = v39;
  *v33 = v38;
  v33[1] = v34;
  v33[2] = v24;

  sub_21C6EA794(v27, &qword_27CDF3960, &qword_21CBB8710);
  v35 = *(v25 + 8);
  v35(v29, v14);

  sub_21C6EA794(v30, &qword_27CDF3960, &qword_21CBB8710);
  return (v35)(v26, v14);
}

BOOL sub_21C9ACC28()
{
  v1 = *(v0 + *(type metadata accessor for _PMGroupAccountsView(0) + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (*(v7 + 16) && (v2 = sub_21CB10A54(v0), (v3 & 1) != 0))
  {
    v4 = *(*(v7 + 56) + 8 * v2);

    v5 = *(v4 + 16);

    return v5 != 0;
  }

  else
  {

    return 0;
  }
}

__n128 sub_21C9ACD04@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_21CB82644();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for _PMGroupAccountsView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = type metadata accessor for PMEditGroupFlow();
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C9AF754(a1, v18, type metadata accessor for PMSharingGroup);
  sub_21C9AF754(a1, &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _PMGroupAccountsView);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  sub_21C9AF7BC(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for _PMGroupAccountsView);
  v21 = &v18[v15[8]];
  *(v21 + 3) = &type metadata for PMIMessageAvailabilityProviderMain;
  *(v21 + 4) = &off_282E572E8;
  v22 = &v18[v15[7]];
  *v22 = sub_21C9B0050;
  v22[1] = v20;
  v23 = v15[9];
  *&v32 = &unk_282E49158;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBA0, &qword_21CBA5280);
  sub_21C6EADEC(&qword_27CDECBA8, &qword_27CDECBA0, &qword_21CBA5280);
  sub_21C8158AC();
  sub_21CB82654();
  (*(v4 + 16))(v7, v10, v3);
  sub_21CB84D44();
  (*(v4 + 8))(v10, v3);
  v24 = v15[10];
  *&v18[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  sub_21CB85214();
  sub_21CB82AC4();
  v25 = v31;
  sub_21C9AF7BC(v18, v31, type metadata accessor for PMEditGroupFlow);
  v26 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB90, &qword_21CBA5268) + 36);
  v27 = v37;
  *(v26 + 64) = v36;
  *(v26 + 80) = v27;
  *(v26 + 96) = v38;
  v28 = v33;
  *v26 = v32;
  *(v26 + 16) = v28;
  result = v35;
  *(v26 + 32) = v34;
  *(v26 + 48) = result;
  return result;
}

void sub_21C9AD10C(char a1, uint64_t a2)
{
  v4 = sub_21CB823B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a2 + *(type metadata accessor for _PMGroupAccountsView(0) + 28);
    sub_21C95B2C8(v8);
    sub_21CB823A4();
    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_21C9AD1F8(uint64_t a1)
{
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v45 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v43[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v50 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v49 = &v43[-v14];
  MEMORY[0x28223BE20](v15);
  v52 = &v43[-v16];
  MEMORY[0x28223BE20](v17);
  v19 = &v43[-v18];
  MEMORY[0x28223BE20](v20);
  v22 = &v43[-v21];
  v47 = type metadata accessor for _PMGroupAccountsView(0);
  v23 = a1 + *(v47 + 40);
  v24 = *v23;
  if (!*v23)
  {
    v42 = *(v23 + 8);
    type metadata accessor for PMPasswordManagerState();
    sub_21C705F88(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v24;
  sub_21CB81DB4();
  v48 = v25;

  v26 = v3[2];
  v51 = a1;
  v26(v19, a1, v2);
  v46 = v3[7];
  v46(v19, 0, 1, v2);
  v27 = *(v6 + 48);
  sub_21C6EDBAC(v22, v9, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(v19, &v9[v27], &unk_27CDF20B0, &unk_21CBA0090);
  v28 = v3;
  v29 = v3[6];
  if (v29(v9, 1, v2) == 1)
  {
    sub_21C6EA794(v19, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EA794(v22, &unk_27CDF20B0, &unk_21CBA0090);
    if (v29(&v9[v27], 1, v2) == 1)
    {
      sub_21C6EA794(v9, &unk_27CDF20B0, &unk_21CBA0090);
LABEL_9:
      v37 = (v51 + *(v47 + 24));
      v38 = *v37;
      v39 = *(v37 + 1);
      v54 = v38;
      v55 = v39;
      v53 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
      sub_21CB84D64();
      v40 = v49;
      v46(v49, 1, 1, v2);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21C6EDBAC(v40, v50, &unk_27CDF20B0, &unk_21CBA0090);
      v41 = v48;
      sub_21CB81DC4();
      v32 = v40;
      v30 = &unk_27CDF20B0;
      v31 = &unk_21CBA0090;
      return sub_21C6EA794(v32, v30, v31);
    }
  }

  else
  {
    sub_21C6EDBAC(v9, v52, &unk_27CDF20B0, &unk_21CBA0090);
    if (v29(&v9[v27], 1, v2) != 1)
    {
      v33 = v45;
      (v28[4])(v45, &v9[v27], v2);
      sub_21C705F88(&qword_27CDEAC48, MEMORY[0x277D49978]);
      v34 = v52;
      v44 = sub_21CB85574();
      v35 = v28[1];
      v35(v33, v2);
      sub_21C6EA794(v19, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EA794(v22, &unk_27CDF20B0, &unk_21CBA0090);
      v35(v34, v2);
      result = sub_21C6EA794(v9, &unk_27CDF20B0, &unk_21CBA0090);
      if ((v44 & 1) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

    sub_21C6EA794(v19, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EA794(v22, &unk_27CDF20B0, &unk_21CBA0090);
    (v28[1])(v52, v2);
  }

  v30 = &qword_27CDEAC40;
  v31 = &qword_21CBA1A40;
  v32 = v9;
  return sub_21C6EA794(v32, v30, v31);
}

uint64_t sub_21C9AD834(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v48 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v47 = &v45 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v45 - v23;
  v25 = *(v5 + 16);
  v49 = a2;
  v25(&v45 - v23, a2, v4, v22);
  v46 = *(v5 + 56);
  v46(v24, 0, 1, v4);
  v26 = *(v9 + 56);
  sub_21C6EDBAC(a1, v12, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(v24, &v12[v26], &unk_27CDF20B0, &unk_21CBA0090);
  v27 = *(v5 + 48);
  if (v27(v12, 1, v4) == 1)
  {
    sub_21C6EA794(v24, &unk_27CDF20B0, &unk_21CBA0090);
    if (v27(&v12[v26], 1, v4) == 1)
    {
      sub_21C6EA794(v12, &unk_27CDF20B0, &unk_21CBA0090);
LABEL_8:
      v35 = type metadata accessor for _PMGroupAccountsView(0);
      v36 = v49;
      v37 = (v49 + *(v35 + 24));
      v38 = *v37;
      v39 = *(v37 + 1);
      v51 = v38;
      v52 = v39;
      v50 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
      sub_21CB84D64();
      v40 = v36 + *(v35 + 40);
      v41 = *v40;
      if (!*v40)
      {
        v44 = *(v40 + 8);
        type metadata accessor for PMPasswordManagerState();
        sub_21C705F88(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
        result = sub_21CB82B64();
        __break(1u);
        return result;
      }

      v42 = v47;
      v46(v47, 1, 1, v4);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21C6EDBAC(v42, v48, &unk_27CDF20B0, &unk_21CBA0090);
      v43 = v41;
      sub_21CB81DC4();
      v30 = v42;
      v28 = &unk_27CDF20B0;
      v29 = &unk_21CBA0090;
      return sub_21C6EA794(v30, v28, v29);
    }
  }

  else
  {
    sub_21C6EDBAC(v12, v20, &unk_27CDF20B0, &unk_21CBA0090);
    if (v27(&v12[v26], 1, v4) != 1)
    {
      v31 = v45;
      (*(v5 + 32))(v45, &v12[v26], v4);
      sub_21C705F88(&qword_27CDEAC48, MEMORY[0x277D49978]);
      v32 = sub_21CB85574();
      v33 = *(v5 + 8);
      v33(v31, v4);
      sub_21C6EA794(v24, &unk_27CDF20B0, &unk_21CBA0090);
      v33(v20, v4);
      result = sub_21C6EA794(v12, &unk_27CDF20B0, &unk_21CBA0090);
      if ((v32 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_21C6EA794(v24, &unk_27CDF20B0, &unk_21CBA0090);
    (*(v5 + 8))(v20, v4);
  }

  v28 = &qword_27CDEAC40;
  v29 = &qword_21CBA1A40;
  v30 = v12;
  return sub_21C6EA794(v30, v28, v29);
}

uint64_t sub_21C9ADDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3990, &qword_21CBB87B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3998, &qword_21CBB87B8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v22 - v16;
  *v17 = sub_21CB83074();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39A0, &qword_21CBB87C0);
  sub_21C9ADFE8(a1, &v17[*(v18 + 44)]);
  *v10 = sub_21CB83074();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39A8, &qword_21CBB87C8);
  sub_21C9AE398(a1, &v10[*(v19 + 44)]);
  sub_21C6EDBAC(v17, v14, &qword_27CDF3998, &qword_21CBB87B8);
  sub_21C6EDBAC(v10, v7, &qword_27CDF3990, &qword_21CBB87B0);
  sub_21C6EDBAC(v14, a2, &qword_27CDF3998, &qword_21CBB87B8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39B0, &unk_21CBB87D0);
  sub_21C6EDBAC(v7, a2 + *(v20 + 48), &qword_27CDF3990, &qword_21CBB87B0);
  sub_21C6EA794(v10, &qword_27CDF3990, &qword_21CBB87B0);
  sub_21C6EA794(v17, &qword_27CDF3998, &qword_21CBB87B8);
  sub_21C6EA794(v7, &qword_27CDF3990, &qword_21CBB87B0);
  return sub_21C6EA794(v14, &qword_27CDF3998, &qword_21CBB87B8);
}

uint64_t sub_21C9ADFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39C0, &qword_21CBBEE90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v27 - v9;
  *v10 = sub_21CB832F4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39C8, &unk_21CBB87F0) + 44);
  v27[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF730, &qword_21CBBFED0);
  sub_21C6EADEC(&qword_27CDEF738, &qword_27CDEF730, &qword_21CBBFED0);
  sub_21CB81FC4();
  v12 = *(a1 + *(type metadata accessor for PMSharingGroup() + 24));
  sub_21CB13134(MEMORY[0x277D84F90]);
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C81C328(KeyPath, *&v35[0]);

  type metadata accessor for PMGroupMemberImageCache();
  sub_21C705F88(&qword_27CDEECA8, type metadata accessor for PMGroupMemberImageCache);
  v14 = sub_21CB82674();
  v16 = v15;

  *(&v30 + 1) = v14;
  *&v31 = v16;
  *(&v31 + 1) = swift_getKeyPath();
  v32 = 0;
  *&v28[0] = v12;
  *(v28 + 8) = xmmword_21CBAA500;
  *(&v28[1] + 1) = 5;
  *&v29 = 0x3FE0000000000000;
  BYTE8(v29) = 0;

  v17 = sub_21C867B48(MEMORY[0x277D84F98], v12, v28, 40.0);

  *&v30 = v17;
  sub_21C6EDBAC(v10, v7, &qword_27CDF39C0, &qword_21CBBEE90);
  sub_21C6EDBAC(v7, a2, &qword_27CDF39C0, &qword_21CBBEE90);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39D0, &unk_21CBB8820);
  v19 = a2 + *(v18 + 48);
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = a2 + *(v18 + 64);
  v21 = v30;
  v22 = v29;
  v33[2] = v29;
  v33[3] = v30;
  v23 = v28[0];
  v24 = v28[1];
  v33[0] = v28[0];
  v33[1] = v28[1];
  v25 = v31;
  v33[4] = v31;
  v34 = v32;
  *(v20 + 80) = v32;
  *(v20 + 32) = v22;
  *(v20 + 48) = v21;
  *(v20 + 64) = v25;
  *v20 = v23;
  *(v20 + 16) = v24;
  sub_21C87CED0(v33, v35);
  sub_21C6EA794(v10, &qword_27CDF39C0, &qword_21CBBEE90);
  v35[2] = v29;
  v35[3] = v30;
  v35[4] = v31;
  v36 = v32;
  v35[0] = v28[0];
  v35[1] = v28[1];
  sub_21C87CF2C(v35);
  return sub_21C6EA794(v7, &qword_27CDF39C0, &qword_21CBBEE90);
}

uint64_t sub_21C9AE398@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = a1;
  v32 = a2;
  v2 = type metadata accessor for _PMGroupAccountsView(0);
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  sub_21CB81014();
  v17 = sub_21CB81004();
  v19 = v18;
  (*(v5 + 8))(v8, v4);
  v33 = v17;
  v34 = v19;
  v20 = v29;
  sub_21C9AF754(v31, v29, type metadata accessor for _PMGroupAccountsView);
  v21 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v22 = swift_allocObject();
  sub_21C9AF7BC(v20, v22 + v21, type metadata accessor for _PMGroupAccountsView);
  sub_21C71F3FC();
  sub_21CB84DE4();
  v23 = v10[2];
  v23(v13, v16, v9);
  v24 = v32;
  *v32 = 0;
  *(v24 + 8) = 1;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39B8, &unk_21CBB87E0);
  v23(&v25[*(v26 + 48)], v13, v9);
  v27 = v10[1];
  v27(v16, v9);
  return (v27)(v13, v9);
}

uint64_t sub_21C9AE6EC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for _PMGroupAccountsView(0) + 20));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21C9AE760@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a1;
  v55 = a2;
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  MEMORY[0x28223BE20](v16);
  v52 = &v50 - v17;
  MEMORY[0x28223BE20](v18);
  v53 = &v50 - v19;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v51 = sub_21CB81034();
  v20 = *(v51 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v24 = *(v3 + 8);
  v24(v6, v2);
  v24(v9, v2);
  v24(v12, v2);
  v24(v15, v2);
  swift_setDeallocating();
  (*(v20 + 8))(v23 + v22, v51);
  swift_deallocClassInstance();
  v25 = v53;
  sub_21CB81004();
  v24(v52, v2);
  v24(v25, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_21CBA0690;
  v27 = type metadata accessor for PMSharingGroup();
  v28 = v54;
  v29 = *(*(v54 + *(v27 + 24)) + 16);
  v30 = MEMORY[0x277D83C10];
  *(v26 + 56) = MEMORY[0x277D83B88];
  *(v26 + 64) = v30;
  *(v26 + 32) = v29;
  v31 = sub_21CB85594();
  v33 = v32;

  v57 = v31;
  v58 = v33;
  sub_21C71F3FC();
  v34 = sub_21CB84054();
  v36 = v35;
  LOBYTE(v12) = v37;
  v39 = v38;
  v40 = (v28 + *(v27 + 28));
  v41 = v40[1];
  v57 = *v40;
  v58 = v41;

  v42 = sub_21CB84054();
  v44 = v43;
  v45 = v12 & 1;
  v56 = v12 & 1;
  LOBYTE(v57) = v12 & 1;
  LOBYTE(v12) = v46 & 1;
  v59 = v46 & 1;
  v47 = v55;
  *v55 = v34;
  v47[1] = v36;
  *(v47 + 16) = v45;
  v47[3] = v39;
  v47[4] = v42;
  v47[5] = v43;
  *(v47 + 48) = v46 & 1;
  v47[7] = v48;
  sub_21C79B058(v34, v36, v45);

  sub_21C79B058(v42, v44, v12);

  sub_21C74A72C(v42, v44, v12);

  sub_21C74A72C(v34, v36, v56);
}

uint64_t sub_21C9AEC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _PMGroupAccountsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_21CB85C44();
  v8 = *(v7 - 8);
  (*(v8 + 16))(a2, a1, v7);
  (*(v8 + 56))(a2, 0, 2, v7);
  type metadata accessor for PMSystemSettingsNavigationDestination();
  swift_storeEnumTagMultiPayload();
  sub_21C9AF754(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _PMGroupAccountsView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_21C9AF7BC(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for _PMGroupAccountsView);
  sub_21C9AF754(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _PMGroupAccountsView);
  v11 = swift_allocObject();
  sub_21C9AF7BC(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v9, type metadata accessor for _PMGroupAccountsView);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB68, &qword_21CBB8730);
  v13 = a2 + v12[19];
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  v15 = (a2 + v12[18]);
  *v15 = sub_21C9B00D0;
  v15[1] = v10;
  v16 = (a2 + v12[17]);
  *v16 = sub_21C9B00E8;
  v16[1] = v11;
  return result;
}

uint64_t sub_21C9AEEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 2, v4);
  v6 = (a2 + *(type metadata accessor for PMRecentlyDeletedAccountsView(0) + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE0, &qword_21CBB8760);
  *(swift_allocObject() + 16) = 0;
  result = sub_21CB84D44();
  *v6 = v8;
  v6[1] = v9;
  return result;
}

uint64_t sub_21C9AEFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 2, v4);
  v6 = type metadata accessor for PMRecentlyDeletedRow();
  v7 = *(v6 + 20);
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v9 = (a2 + v7);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v15);

  type metadata accessor for PMAccountsState();
  sub_21C705F88(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v10 = sub_21CB82674();
  v12 = v11;

  *v9 = v10;
  v9[1] = v12;
  v13 = a2 + *(v6 + 24);
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  return result;
}

uint64_t sub_21C9AF188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C9AF7BC(a1, a2, type metadata accessor for PMSharingGroup);
  v3 = type metadata accessor for _PMGroupAccountsView(0);
  v4 = a2 + v3[5];
  sub_21CB84D44();
  *v4 = v24;
  *(v4 + 8) = v25;
  v5 = a2 + v3[6];
  sub_21CB84D44();
  *v5 = v24;
  *(v5 + 8) = v25;
  v6 = v3[7];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v7 = v3[8];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v9 = (a2 + v7);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v24);

  type metadata accessor for PMAccountsState();
  sub_21C705F88(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v10 = sub_21CB82674();
  v12 = v11;

  *v9 = v10;
  v9[1] = v12;
  v13 = (a2 + v3[9]);
  v14 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7073E8(v14, v24);

  type metadata accessor for PMGroupsStore();
  sub_21C705F88(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v15 = sub_21CB82674();
  v17 = v16;

  *v13 = v15;
  v13[1] = v17;
  v18 = (a2 + v3[10]);
  type metadata accessor for PMPasswordManagerState();
  sub_21C705F88(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  *v18 = sub_21CB82B84();
  v18[1] = v19;
  v20 = (a2 + v3[11]);
  type metadata accessor for PMAccountsListModel(0);
  sub_21C705F88(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
  *v20 = sub_21CB82B84();
  v20[1] = v21;
  v22 = a2 + v3[12];
  result = swift_getKeyPath();
  *v22 = result;
  *(v22 + 8) = 0;
  return result;
}

uint64_t sub_21C9AF4D0(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = type metadata accessor for PMSharingGroup();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C9AF754(a1, v7, type metadata accessor for PMSharingGroup);
  return a2(v7);
}

uint64_t sub_21C9AF578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB85C44();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a2, v3, v8);
  (*(v9 + 56))(a2, 0, 2, v8);
  sub_21C9AF754(v3, v7, type metadata accessor for PMGroupAccountsView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_21C9AF7BC(v7, v11 + v10, type metadata accessor for PMGroupAccountsView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF38D0, &qword_21CBB84F8);
  v13 = (a2 + *(result + 36));
  *v13 = sub_21C9AF728;
  v13[1] = v11;
  return result;
}

uint64_t sub_21C9AF754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9AF7BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21C9AF86C()
{
  type metadata accessor for PMSharingGroup();
  if (v0 <= 0x3F)
  {
    sub_21C713604(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_21C721A6C();
      if (v2 <= 0x3F)
      {
        sub_21C705CFC();
        if (v3 <= 0x3F)
        {
          sub_21C70640C();
          if (v4 <= 0x3F)
          {
            sub_21C707F4C();
            if (v5 <= 0x3F)
            {
              sub_21C713510();
              if (v6 <= 0x3F)
              {
                sub_21C713604(319, &qword_27CDED658, &type metadata for PMAccountsNavigationStyle, MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
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

uint64_t sub_21C9AFA04(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for _PMGroupAccountsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroy_25Tm()
{
  v1 = type metadata accessor for _PMGroupAccountsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_21CB85C44();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = type metadata accessor for PMSharingGroup();
  v8 = *(v0 + v3 + v7[5] + 8);

  v9 = *(v0 + v3 + v7[6]);

  v10 = *(v0 + v3 + v7[7] + 8);

  v11 = *(v0 + v3 + v1[5] + 8);

  v12 = *(v0 + v3 + v1[6] + 8);

  v13 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21CB823B4();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  v16 = *(v5 + v1[8] + 8);

  v17 = *(v5 + v1[9] + 8);

  v18 = *(v5 + v1[11]);

  sub_21C7025C4(*(v5 + v1[12]), *(v5 + v1[12] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C9AFD44(uint64_t a1)
{
  v3 = *(type metadata accessor for _PMGroupAccountsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C9AD834(a1, v4);
}

unint64_t sub_21C9AFDB4()
{
  result = qword_27CDF3940;
  if (!qword_27CDF3940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3910, &qword_21CBB8638);
    sub_21C9AFE6C();
    sub_21C6EADEC(&qword_27CDED9E0, &qword_27CDED990, &qword_21CBA7E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3940);
  }

  return result;
}

unint64_t sub_21C9AFE6C()
{
  result = qword_27CDF3948;
  if (!qword_27CDF3948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3908, &qword_21CBB8630);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3900, &qword_21CBB8628);
    type metadata accessor for PMGroupInvitationAcceptanceFlow();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF38F8, &qword_21CBB8620);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECB90, &qword_21CBA5268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF38F0, &qword_21CBB8618);
    sub_21C6EADEC(&qword_27CDF3938, &qword_27CDF38F0, &qword_21CBB8618);
    swift_getOpaqueTypeConformance2();
    sub_21C815788();
    swift_getOpaqueTypeConformance2();
    sub_21C705F88(&qword_27CDEE938, type metadata accessor for PMGroupInvitationAcceptanceFlow);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3948);
  }

  return result;
}

void sub_21C9B0050(char a1)
{
  v3 = *(type metadata accessor for _PMGroupAccountsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_21C9AD10C(a1 & 1, v4);
}

uint64_t sub_21C9B0118(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for _PMGroupAccountsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21C9B0194()
{
  result = qword_27CDF39D8;
  if (!qword_27CDF39D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3950, &unk_21CBB86F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3918, &qword_21CBB8640);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3910, &qword_21CBB8638);
    sub_21CB829D4();
    sub_21C9AFDB4();
    sub_21C705F88(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&unk_27CDEBFE0, &qword_27CDEB1E0, &unk_21CBA5270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF39D8);
  }

  return result;
}

uint64_t sub_21C9B0330@<X0>(uint64_t *a1@<X8>)
{
  v20[0] = type metadata accessor for PMAccount(0);
  v2 = *(*(v20[0] - 8) + 64);
  MEMORY[0x28223BE20](v20[0]);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v20[1]);

  type metadata accessor for PMAccountsState();
  sub_21C705FD0(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v6 = sub_21CB82674();
  v8 = v7;

  *a1 = v6;
  a1[1] = v8;
  v9 = type metadata accessor for PMAppAccountDetailsCredentialSecurityView(0);
  v10 = a1 + v9[7];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705FD0(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);

  a1[2] = sub_21CB82674();
  a1[3] = v11;
  v12 = v9[6];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v13 = &v4[*(v20[0] + 28)];
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  v17 = v13[3];
  sub_21C7D33AC(*v13, v15, v16, v17);
  sub_21C719540(v4, type metadata accessor for PMAccount);
  sub_21C7D33F0(*v10, *(v10 + 1), *(v10 + 2), *(v10 + 3));
  *v10 = v14;
  *(v10 + 1) = v15;
  *(v10 + 2) = v16;
  *(v10 + 3) = v17;
  v18 = sub_21C9B0610();

  *(a1 + v9[8]) = v18;
  return result;
}

uint64_t sub_21C9B0610()
{
  v0 = type metadata accessor for PMAccount.Storage(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v70 = (&v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v71 = (&v69 - v4);
  MEMORY[0x28223BE20](v5);
  v75 = (&v69 - v6);
  MEMORY[0x28223BE20](v7);
  v9 = (&v69 - v8);
  v10 = type metadata accessor for PMAccount(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v69 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v76 = &v69 - v14;
  MEMORY[0x28223BE20](v15);
  v73 = &v69 - v16;
  MEMORY[0x28223BE20](v17);
  v74 = &v69 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v69 - v20;
  MEMORY[0x28223BE20](v22);
  v72 = &v69 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v69 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v69 - v28;
  swift_getKeyPath();
  swift_getKeyPath();
  v30 = v10;
  sub_21CB81DB4();

  sub_21C9B5580(&v29[*(v10 + 24)], v9, type metadata accessor for PMAccount.Storage);
  v77 = v0;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719540(v9, type metadata accessor for PMAccount.Storage);
    sub_21C719540(v29, type metadata accessor for PMAccount);
  }

  else
  {
    v31 = *v9;
    v32 = [*v9 credentialTypes];

    sub_21C719540(v29, type metadata accessor for PMAccount);
    if (v32 == 3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v33 = &v26[*(v10 + 28)];
      v34 = *v33;
      v35 = v33[1];
      v37 = v33[2];
      v36 = v33[3];
      sub_21C7D33AC(*v33, v35, v37, v36);
      sub_21C719540(v26, type metadata accessor for PMAccount);
      if (v35)
      {
        if (([v36 issueTypes] & 0x10) != 0)
        {
          v38 = [v36 issueTypes];
          sub_21C7D33F0(v34, v35, v37, v36);
          if ((v38 & 0x20) != 0)
          {
            return 8;
          }
        }

        else
        {
          sub_21C7D33F0(v34, v35, v37, v36);
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v39 = v72;
      sub_21CB81DB4();

      PMAccount.password.getter();
      v41 = v40;
      sub_21C719540(v39, type metadata accessor for PMAccount);
      if (v41)
      {
        v42 = objc_opt_self();
        v43 = sub_21CB85584();

        LOBYTE(v42) = [v42 passwordLooksLikePasswordManagerGeneratedPassword_];

        if (v42)
        {
          return 2;
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v44 = &v21[*(v30 + 28)];
  v45 = *v44;
  v46 = v44[1];
  v48 = v44[2];
  v47 = v44[3];
  sub_21C7D33AC(*v44, v46, v48, v47);
  sub_21C719540(v21, type metadata accessor for PMAccount);
  if (v46)
  {
    if (([v47 issueTypes] & 8) != 0 || (objc_msgSend(v47, sel_issueTypes) & 4) != 0)
    {
      sub_21C7D33F0(v45, v46, v48, v47);
      return 9;
    }

    if (([v47 issueTypes] & 0x10) != 0)
    {
      sub_21C7D33F0(v45, v46, v48, v47);
      return 7;
    }

    if (([v47 issueTypes] & 0x20) != 0)
    {
      sub_21C7D33F0(v45, v46, v48, v47);
      return 6;
    }

    if (([v47 issueTypes] & 2) != 0)
    {
      sub_21C7D33F0(v45, v46, v48, v47);
      return 4;
    }

    if ([v47 issueTypes])
    {
      sub_21C7D33F0(v45, v46, v48, v47);
      return 5;
    }

    if ([objc_opt_self() isPromotePasskeyUpgradesEnabled])
    {
      v49 = [v47 issueTypes];
      sub_21C7D33F0(v45, v46, v48, v47);
      if ((v49 & 0x40) != 0)
      {
        return 11;
      }
    }

    else
    {
      sub_21C7D33F0(v45, v46, v48, v47);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v51 = v74;
  sub_21CB81DB4();

  v52 = v75;
  sub_21C9B5580(v51 + *(v30 + 24), v75, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719540(v52, type metadata accessor for PMAccount.Storage);
    sub_21C719540(v51, type metadata accessor for PMAccount);
    v53 = v76;
  }

  else
  {
    v54 = *v52;
    v55 = [*v52 credentialTypes];

    sub_21C719540(v51, type metadata accessor for PMAccount);
    v53 = v76;
    if (v55 == 2)
    {
      return 2;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v56 = v73;
  sub_21CB81DB4();

  PMAccount.password.getter();
  v58 = v57;
  sub_21C719540(v56, type metadata accessor for PMAccount);
  if (v58)
  {
    v59 = objc_opt_self();
    v60 = sub_21CB85584();

    v61 = [v59 passwordLooksLikePasswordManagerGeneratedPassword_];

    if (v61)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      if (!v78)
      {
        return 0;
      }

      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v62 = v71;
  sub_21C9B5580(v53 + *(v30 + 24), v71, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v63 = *v62;
    v64 = [v63 credentialTypes];

    sub_21C719540(v53, type metadata accessor for PMAccount);
    if ((v64 & 2) == 0)
    {
      goto LABEL_37;
    }

    return 2;
  }

  sub_21C719540(v62, type metadata accessor for PMAccount.Storage);
  sub_21C719540(v53, type metadata accessor for PMAccount);
LABEL_37:
  swift_getKeyPath();
  swift_getKeyPath();
  v65 = v69;
  sub_21CB81DB4();

  v66 = v70;
  sub_21C9B5580(v65 + *(v30 + 24), v70, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719540(v66, type metadata accessor for PMAccount.Storage);
    sub_21C719540(v65, type metadata accessor for PMAccount);
  }

  else
  {
    v67 = *v66;
    v68 = [v67 credentialTypes];

    sub_21C719540(v65, type metadata accessor for PMAccount);
    if (v68 == 4)
    {
      return 10;
    }
  }

  return 3;
}

uint64_t sub_21C9B110C@<X0>(uint64_t a1@<X8>)
{
  v106 = a1;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39F8, &qword_21CBB89E8);
  v103 = *(v105 - 8);
  v1 = *(v103 + 64);
  MEMORY[0x28223BE20](v105);
  v87 = &v87 - v2;
  v3 = type metadata accessor for PMAccount(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v100 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A00, &qword_21CBB89F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v104 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v101 = &v87 - v10;
  MEMORY[0x28223BE20](v11);
  v102 = &v87 - v12;
  v99 = sub_21CB83274();
  v98 = *(v99 - 8);
  v13 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v97 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_21CB83A34();
  v94 = *(v95 - 8);
  v15 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A08, &qword_21CBB89F8);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v87 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A10, &qword_21CBB8A00);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v87 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A18, &qword_21CBB8A08);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v87 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A20, &qword_21CBB8A10);
  v33 = v32 - 8;
  v34 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v87 - v35;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A28, &qword_21CBB8A18);
  v37 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v39 = &v87 - v38;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A30, &qword_21CBB8A20);
  v92 = *(v91 - 8);
  v40 = *(v92 + 64);
  MEMORY[0x28223BE20](v91);
  v89 = &v87 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A38, &qword_21CBB8A28);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v96 = &v87 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v88 = &v87 - v46;
  *v21 = sub_21CB832E4();
  *(v21 + 1) = 0x4020000000000000;
  v21[16] = 0;
  v47 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A40, &qword_21CBB8A30) + 44)];
  *v47 = sub_21CB83074();
  *(v47 + 1) = 0;
  v47[16] = 0;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A48, &qword_21CBB8A38);
  sub_21C9B1B4C(&v47[*(v48 + 44)]);
  LOBYTE(v47) = sub_21CB83CE4();
  sub_21CB81F24();
  v49 = &v21[*(v18 + 44)];
  *v49 = v47;
  *(v49 + 1) = v50;
  *(v49 + 2) = v51;
  *(v49 + 3) = v52;
  *(v49 + 4) = v53;
  v49[40] = 0;
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21C716934(v21, v26, &qword_27CDF3A08, &qword_21CBB89F8);
  v54 = &v26[*(v23 + 44)];
  v55 = v115;
  *(v54 + 4) = v114;
  *(v54 + 5) = v55;
  *(v54 + 6) = v116;
  v56 = v111;
  *v54 = v110;
  *(v54 + 1) = v56;
  v57 = v113;
  *(v54 + 2) = v112;
  *(v54 + 3) = v57;
  KeyPath = swift_getKeyPath();
  sub_21C716934(v26, v31, &qword_27CDF3A10, &qword_21CBB8A00);
  v59 = &v31[*(v28 + 44)];
  *v59 = KeyPath;
  v59[8] = 0;
  v60 = sub_21CB832C4();
  sub_21C716934(v31, v36, &qword_27CDF3A18, &qword_21CBB8A08);
  v61 = *(v33 + 44);
  v62 = v88;
  v63 = &v36[v61];
  *v63 = v60;
  v63[1] = sub_21C7902AC;
  v63[2] = 0;
  v64 = sub_21CB832D4();
  sub_21C716934(v36, v39, &qword_27CDF3A20, &qword_21CBB8A10);
  v65 = v90;
  v66 = &v39[*(v90 + 36)];
  *v66 = v64;
  v66[1] = sub_21C8B5998;
  v66[2] = 0;
  v67 = v93;
  sub_21CB83A24();
  v68 = sub_21C9B52D8(&qword_27CDF3A50, &qword_27CDF3A28, &qword_21CBB8A18, sub_21C9B52A8);
  v69 = v89;
  sub_21CB844F4();
  (*(v94 + 8))(v67, v95);
  sub_21C6EA794(v39, &qword_27CDF3A28, &qword_21CBB8A18);
  v70 = v97;
  sub_21CB83254();
  v108 = v65;
  v109 = v68;
  swift_getOpaqueTypeConformance2();
  v71 = v70;
  v72 = v91;
  sub_21CB84614();
  v73 = v107;
  (*(v98 + 8))(v71, v99);
  (*(v92 + 8))(v69, v72);
  v74 = type metadata accessor for PMAppAccountDetailsCredentialSecurityView(0);
  v75 = v100;
  sub_21C9B5580(v73 + *(v74 + 24), v100, type metadata accessor for PMAccount);
  v76 = *(v74 + 32);
  v77 = *(v73 + v76);
  if (sub_21C9B55E8(v75, *(v73 + v76)) != 4 || v77 == 11 || v77 == 2)
  {
    v78 = v87;
    sub_21C9B304C(v73, v87);
    v79 = v101;
    sub_21C716934(v78, v101, &qword_27CDF39F8, &qword_21CBB89E8);
    v80 = 0;
  }

  else
  {
    v80 = 1;
    v79 = v101;
  }

  (*(v103 + 56))(v79, v80, 1, v105);
  v81 = v102;
  sub_21C716934(v79, v102, &qword_27CDF3A00, &qword_21CBB89F0);
  v82 = v96;
  sub_21C7703F4(v62, v96);
  v83 = v104;
  sub_21C6EDBAC(v81, v104, &qword_27CDF3A00, &qword_21CBB89F0);
  v84 = v106;
  sub_21C7703F4(v82, v106);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A90, &unk_21CBB8A78);
  sub_21C6EDBAC(v83, v84 + *(v85 + 48), &qword_27CDF3A00, &qword_21CBB89F0);
  sub_21C6EA794(v81, &qword_27CDF3A00, &qword_21CBB89F0);
  sub_21C770464(v62);
  sub_21C6EA794(v83, &qword_27CDF3A00, &qword_21CBB89F0);
  return sub_21C770464(v82);
}

uint64_t sub_21C9B1B4C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3AA8, &qword_21CBB8B10);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  sub_21C9B1E60(&v29 - v8);
  v10 = sub_21CB83D34();
  sub_21CB81F24();
  v11 = &v9[*(v3 + 44)];
  *v11 = v10;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 4) = v15;
  v11[40] = 0;
  v16 = sub_21CB832F4();
  v31 = 0;
  sub_21C9B2644(&v41);
  v35[0] = *&v42[32];
  *(v35 + 9) = *&v42[41];
  v33 = *v42;
  v34 = *&v42[16];
  v32 = v41;
  v36[2] = *&v42[16];
  v37[0] = *&v42[32];
  *(v37 + 9) = *&v42[41];
  v36[0] = v41;
  v36[1] = *v42;
  sub_21C6EDBAC(&v32, &v38, &qword_27CDF3AB0, &qword_21CBB8B18);
  sub_21C6EA794(v36, &qword_27CDF3AB0, &qword_21CBB8B18);
  *(&v30[1] + 7) = v33;
  *(&v30[2] + 7) = v34;
  *(&v30[3] + 7) = v35[0];
  v30[4] = *(v35 + 9);
  *(v30 + 7) = v32;
  v17 = v31;
  KeyPath = swift_getKeyPath();
  sub_21C6EDBAC(v9, v6, &qword_27CDF3AA8, &qword_21CBB8B10);
  sub_21C6EDBAC(v6, a1, &qword_27CDF3AA8, &qword_21CBB8B10);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3AB8, &qword_21CBB8B50);
  v20 = a1 + *(v19 + 48);
  *&v38 = v16;
  *(&v38 + 1) = 0x4018000000000000;
  LOBYTE(v39[0]) = v17;
  *(v39 + 1) = v30[0];
  *(&v39[1] + 1) = v30[1];
  *(&v39[2] + 1) = v30[2];
  *(&v39[3] + 1) = v30[3];
  *(&v39[4] + 1) = v30[4];
  *(&v39[5] + 1) = KeyPath;
  v40 = 0;
  v21 = v38;
  v22 = v39[0];
  v23 = v39[2];
  *(v20 + 32) = v39[1];
  *(v20 + 48) = v23;
  *v20 = v21;
  *(v20 + 16) = v22;
  v24 = v39[3];
  v25 = v39[4];
  v26 = v39[5];
  *(v20 + 112) = 0;
  *(v20 + 80) = v25;
  *(v20 + 96) = v26;
  *(v20 + 64) = v24;
  v27 = a1 + *(v19 + 64);
  *v27 = 0;
  *(v27 + 8) = 0;
  sub_21C6EDBAC(&v38, &v41, &qword_27CDF3AC0, &qword_21CBB8B58);
  sub_21C6EA794(v9, &qword_27CDF3AA8, &qword_21CBB8B10);
  *&v42[17] = v30[1];
  *&v42[33] = v30[2];
  *&v42[49] = v30[3];
  v43 = v30[4];
  *&v41 = v16;
  *(&v41 + 1) = 0x4018000000000000;
  v42[0] = v17;
  *&v42[1] = v30[0];
  v44 = KeyPath;
  v45 = 0;
  sub_21C6EA794(&v41, &qword_27CDF3AC0, &qword_21CBB8B58);
  return sub_21C6EA794(v6, &qword_27CDF3AA8, &qword_21CBB8B10);
}

uint64_t sub_21C9B1E60@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3AC8, &qword_21CBB8B60);
  v2 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v44 = &v42 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3AD0, &qword_21CBB8B68);
  v4 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v47 = &v42 - v5;
  v6 = sub_21CB84BD4();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3AD8, &qword_21CBB8B70);
  v10 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v43 = &v42 - v11;
  v12 = type metadata accessor for PMAccount.Storage(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for PMAccount(0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C9B5580(&v20[*(v17 + 32)], v15, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719540(v15, type metadata accessor for PMAccount.Storage);
    sub_21C719540(v20, type metadata accessor for PMAccount);
  }

  else
  {
    v22 = *v15;
    v23 = [v22 credentialTypes];

    sub_21C719540(v20, type metadata accessor for PMAccount);
    if (v23 == 4)
    {
      type metadata accessor for PMPasswordManager();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass_];
      sub_21CB84C74();
      v26 = v42;
      (*(v42 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
      v27 = sub_21CB84C64();

      (*(v26 + 8))(v9, v6);
      sub_21CB85214();
      sub_21CB82374();
      v50 = v27;
      v51 = v56;
      LOBYTE(v52) = v57;
      v53 = v58;
      v54 = v59;
      v55 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF09A8, &unk_21CBAF7E0);
      sub_21C8FD198();
      v28 = v43;
      sub_21CB84494();

      v29 = &qword_27CDF3AD8;
      v30 = &qword_21CBB8B70;
      sub_21C6EDBAC(v28, v47, &qword_27CDF3AD8, &qword_21CBB8B70);
      swift_storeEnumTagMultiPayload();
      sub_21C9B5B08(&qword_27CDF3B08, &qword_27CDF3AD8, &qword_21CBB8B70, sub_21C8FD198);
      sub_21C9B5B08(&qword_27CDF3B10, &qword_27CDF3AC8, &qword_21CBB8B60, sub_21C9B5970);
      sub_21CB83494();
      v31 = v28;
      return sub_21C6EA794(v31, v29, v30);
    }
  }

  v32 = type metadata accessor for PMAppAccountDetailsCredentialSecurityView(0);
  v33 = *(v1 + *(v32 + 32));
  if (v33 <= 3 || v33 - 4 < 6 || v33 == 11)
  {
    v34 = sub_21CB84BB4();
    v35 = v1 + *(v32 + 28);
    if (*(v35 + 8))
    {
      v36 = [*(v35 + 24) hasBeenCompromised];
    }

    else
    {
      v36 = 0;
    }

    v37 = v47;
    v38 = sub_21CB83DB4();
    KeyPath = swift_getKeyPath();
    v50 = v34;
    LOBYTE(v51) = v33;
    BYTE1(v51) = v36;
    v52 = KeyPath;
    v53 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3AE0, &qword_21CBB8BA8);
    sub_21C9B5970();
    v40 = v44;
    sub_21CB84494();

    v29 = &qword_27CDF3AC8;
    v30 = &qword_21CBB8B60;
    sub_21C6EDBAC(v40, v37, &qword_27CDF3AC8, &qword_21CBB8B60);
    swift_storeEnumTagMultiPayload();
    sub_21C9B5B08(&qword_27CDF3B08, &qword_27CDF3AD8, &qword_21CBB8B70, sub_21C8FD198);
    sub_21C9B5B08(&qword_27CDF3B10, &qword_27CDF3AC8, &qword_21CBB8B60, sub_21C9B5970);
    sub_21CB83494();
    v31 = v40;
    return sub_21C6EA794(v31, v29, v30);
  }

  result = sub_21CB861C4();
  __break(1u);
  return result;
}

uint64_t sub_21C9B2644@<X0>(uint64_t a1@<X8>)
{
  sub_21C9B28D0();
  sub_21C71F3FC();
  v2 = sub_21CB84054();
  v4 = v3;
  v6 = v5;
  sub_21CB83EC4();
  v7 = sub_21CB84024();
  v31 = v8;
  v32 = v7;
  v30 = v9;
  v33 = v10;

  sub_21C74A72C(v2, v4, v6 & 1);

  sub_21C9B2D18();
  v11 = sub_21CB84054();
  v13 = v12;
  v15 = v14;
  sub_21CB84B34();
  v16 = sub_21CB83FB4();
  v18 = v17;
  LOBYTE(v2) = v19;

  sub_21C74A72C(v11, v13, v15 & 1);

  sub_21CB83E84();
  v20 = sub_21CB84024();
  v22 = v21;
  LOBYTE(v11) = v23;
  v25 = v24;

  sub_21C74A72C(v16, v18, v2 & 1);

  v26 = *MEMORY[0x277D49BF0];
  sub_21CB855C4();
  v27 = [objc_opt_self() pm_defaults];
  v28 = sub_21CB81E74();
  *a1 = v32;
  *(a1 + 8) = v31;
  *(a1 + 16) = v30 & 1;
  *(a1 + 24) = v33;
  *(a1 + 32) = v20;
  *(a1 + 40) = v22;
  *(a1 + 48) = v11 & 1;
  *(a1 + 56) = v25;
  *(a1 + 64) = v28;
  *(a1 + 72) = 1;
  sub_21C79B058(v32, v31, v30 & 1);

  sub_21C79B058(v20, v22, v11 & 1);

  sub_21C74A72C(v20, v22, v11 & 1);

  sub_21C74A72C(v32, v31, v30 & 1);
}

uint64_t sub_21C9B28D0()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  if (*(v0 + *(type metadata accessor for PMAppAccountDetailsCredentialSecurityView(0) + 32)) > 9u)
  {
    sub_21CB81014();
    v9 = sub_21CB81004();
    (*(v2 + 8))(v8, v1);
  }

  else
  {
    sub_21CB81014();
    sub_21CB81014();
    v9 = sub_21CB80FF4();
    v10 = *(v2 + 8);
    v10(v5, v1);
    v10(v8, v1);
  }

  return v9;
}

uint64_t sub_21C9B2D18()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for PMAppAccountDetailsCredentialSecurityView(0) + 32));
  if (v6 > 5)
  {
    if (v6 > 9 && v6 != 10)
    {
      [objc_opt_self() biometryType];
    }
  }

  else if (v6 <= 2 && v6 > 1)
  {
    [objc_opt_self() biometryType];
  }

  sub_21CB81014();
  v7 = sub_21CB81004();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_21C9B304C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for PMAppAccountDetailsCredentialSecurityView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B8, &qword_21CBA3EB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A98, &unk_21CBB8A88);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v33 - v22;
  sub_21C9B340C(&v33 - v22);
  v24 = *(a1 + *(v4 + 40));
  if (v24 == 11 || v24 == 2)
  {
    sub_21C9B5580(a1, &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountDetailsCredentialSecurityView);
    v26 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v27 = swift_allocObject();
    sub_21C9B5908(&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for PMAppAccountDetailsCredentialSecurityView);
    sub_21CB84DA4();
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  (*(*(v29 - 8) + 56))(v13, v28, 1, v29);
  sub_21C716934(v13, v16, &qword_27CDEC2B8, &qword_21CBA3EB0);
  sub_21C6EDBAC(v23, v20, &qword_27CDF3A98, &unk_21CBB8A88);
  sub_21C6EDBAC(v16, v10, &qword_27CDEC2B8, &qword_21CBA3EB0);
  v30 = v34;
  sub_21C6EDBAC(v20, v34, &qword_27CDF3A98, &unk_21CBB8A88);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3AA0, &qword_21CBB8A98);
  sub_21C6EDBAC(v10, v30 + *(v31 + 48), &qword_27CDEC2B8, &qword_21CBA3EB0);
  sub_21C6EA794(v16, &qword_27CDEC2B8, &qword_21CBA3EB0);
  sub_21C6EA794(v23, &qword_27CDF3A98, &unk_21CBB8A88);
  sub_21C6EA794(v10, &qword_27CDEC2B8, &qword_21CBA3EB0);
  return sub_21C6EA794(v20, &qword_27CDF3A98, &unk_21CBB8A88);
}

uint64_t sub_21C9B340C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PMCredentialSecurityButton(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAccount(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMAppAccountDetailsCredentialSecurityView(0);
  v13 = *(v12 + 24);
  sub_21C9B5580(v1 + v13, v11, type metadata accessor for PMAccount);
  v14 = sub_21C9B55E8(v11, *(v1 + *(v12 + 32)));
  if (v14 == 4)
  {
    v15 = 1;
  }

  else
  {
    v16 = v14;
    sub_21C9B5580(v1 + v13, v7, type metadata accessor for PMAccount);
    v18 = *(v1 + 16);
    v17 = *(v1 + 24);
    type metadata accessor for PMCombinedAccountDetailsModel(0);
    sub_21C705FD0(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
    sub_21CB82684();
    swift_getKeyPath();
    sub_21CB82694();

    v19 = v24[1];
    v20 = v24[2];
    v7[*(v3 + 20)] = v16;
    v21 = v25;
    v22 = &v7[*(v3 + 24)];
    *v22 = v19;
    *(v22 + 1) = v20;
    v22[16] = v21;
    sub_21C9B5908(v7, a1, type metadata accessor for PMCredentialSecurityButton);
    v15 = 0;
  }

  return (*(v4 + 56))(a1, v15, 1, v3);
}

uint64_t sub_21C9B3678(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C9B3710@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v58 = type metadata accessor for PMManagePasskeyOnWebsiteLink();
  v1 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v53 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3BB0, &qword_21CBB8D88);
  v3 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v56 = &v50 - v4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3BB8, &qword_21CBB8D90);
  v5 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v59 = &v50 - v6;
  v7 = sub_21CB81024();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMChangePasswordOnWebsiteLink();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3BC0, &qword_21CBB8D98);
  v15 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v63 = &v50 - v16;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3BC8, &qword_21CBB8DA0);
  v17 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v19 = &v50 - v18;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3BD0, &qword_21CBB8DA8);
  v20 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v57 = &v50 - v21;
  v22 = type metadata accessor for PMCredentialSecurityButton(0);
  v23 = v22 - 8;
  v24 = *(v22 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v31 = &v50 - v30;
  v32 = *(v60 + *(v23 + 28));
  if (v32 > 1)
  {
    if (v32 != 2)
    {
      v14 = v53;
      sub_21C9B5580(v60, &v53[*(v58 + 20)], type metadata accessor for PMAccount);
      *v14 = swift_getKeyPath();
      *(v14 + 1) = 0;
      v14[16] = 0;
      sub_21C9B5580(v14, v56, type metadata accessor for PMManagePasskeyOnWebsiteLink);
      swift_storeEnumTagMultiPayload();
      sub_21C705FD0(&qword_27CDF3BD8, type metadata accessor for PMChangePasswordOnWebsiteLink);
      sub_21C705FD0(&qword_27CDF3BE0, type metadata accessor for PMManagePasskeyOnWebsiteLink);
      v49 = v59;
      sub_21CB83494();
      sub_21C6EDBAC(v49, v63, &qword_27CDF3BB8, &qword_21CBB8D90);
      swift_storeEnumTagMultiPayload();
      sub_21C9B60C0();
      sub_21C9B61A8();
      sub_21CB83494();
      sub_21C6EA794(v49, &qword_27CDF3BB8, &qword_21CBB8D90);
      v48 = type metadata accessor for PMManagePasskeyOnWebsiteLink;
      return sub_21C719540(v14, v48);
    }

    sub_21C9B5580(v60, &v14[v11[5]], type metadata accessor for PMAccount);
    *v14 = swift_getKeyPath();
    *(v14 + 1) = 0;
    v14[16] = 0;
    v38 = &v14[v11[7]];
    v39 = &v14[v11[9]];
    v14[v11[6]] = 0;
    *v38 = 0;
    *(v38 + 1) = 0;
    v14[v11[8]] = 0;
    *v39 = 0;
    *(v39 + 1) = 0;
    sub_21C9B5580(v14, v56, type metadata accessor for PMChangePasswordOnWebsiteLink);
    swift_storeEnumTagMultiPayload();
    sub_21C705FD0(&qword_27CDF3BD8, type metadata accessor for PMChangePasswordOnWebsiteLink);
    sub_21C705FD0(&qword_27CDF3BE0, type metadata accessor for PMManagePasskeyOnWebsiteLink);
    v40 = v59;
    sub_21CB83494();
    v41 = &qword_27CDF3BB8;
    v42 = &qword_21CBB8D90;
    sub_21C6EDBAC(v40, v63, &qword_27CDF3BB8, &qword_21CBB8D90);
  }

  else
  {
    v59 = v29;
    if (!v32)
    {
      sub_21C9B5580(v60, &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMCredentialSecurityButton);
      v33 = (*(v24 + 80) + 16) & ~*(v24 + 80);
      v34 = swift_allocObject();
      sub_21C9B5908(&v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for PMCredentialSecurityButton);
      sub_21CB84DA4();
      v35 = v59;
      (*(v27 + 16))(v19, v31, v59);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
      sub_21C705FD0(&qword_27CDF3BD8, type metadata accessor for PMChangePasswordOnWebsiteLink);
      v36 = v57;
      sub_21CB83494();
      sub_21C6EDBAC(v36, v63, &qword_27CDF3BD0, &qword_21CBB8DA8);
      swift_storeEnumTagMultiPayload();
      sub_21C9B60C0();
      sub_21C9B61A8();
      sub_21CB83494();
      sub_21C6EA794(v36, &qword_27CDF3BD0, &qword_21CBB8DA8);
      return (*(v27 + 8))(v31, v35);
    }

    sub_21C9B5580(v60, &v14[v11[5]], type metadata accessor for PMAccount);
    sub_21CB81014();
    v43 = sub_21CB81004();
    v45 = v44;
    (*(v51 + 8))(v10, v52);
    *v14 = swift_getKeyPath();
    *(v14 + 1) = 0;
    v14[16] = 0;
    v46 = &v14[v11[7]];
    v47 = &v14[v11[9]];
    v14[v11[6]] = 0;
    *v46 = v43;
    v46[1] = v45;
    v14[v11[8]] = 0;
    *v47 = 0;
    *(v47 + 1) = 0;
    sub_21C9B5580(v14, v19, type metadata accessor for PMChangePasswordOnWebsiteLink);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21C705FD0(&qword_27CDF3BD8, type metadata accessor for PMChangePasswordOnWebsiteLink);
    v40 = v57;
    sub_21CB83494();
    v41 = &qword_27CDF3BD0;
    v42 = &qword_21CBB8DA8;
    sub_21C6EDBAC(v40, v63, &qword_27CDF3BD0, &qword_21CBB8DA8);
  }

  swift_storeEnumTagMultiPayload();
  sub_21C9B60C0();
  sub_21C9B61A8();
  sub_21CB83494();
  sub_21C6EA794(v40, v41, v42);
  v48 = type metadata accessor for PMChangePasswordOnWebsiteLink;
  return sub_21C719540(v14, v48);
}

uint64_t sub_21C9B41E0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for PMCredentialSecurityButton(0) + 24));
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  return sub_21CB84F34();
}

uint64_t sub_21C9B4278@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21C9B43A0@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v55 = a1;
  v61 = a3;
  v4 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B40, &qword_21CBB8D38);
  v5 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v7 = &v50 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B48, &qword_21CBB8D40);
  v8 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v10 = &v50 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B50, &qword_21CBB8D48);
  v11 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v59 = &v50 - v12;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B58, &qword_21CBB8D50);
  v13 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v52 = &v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B60, &qword_21CBB8D58);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - v17;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B68, &qword_21CBB8D60);
  v19 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v21 = &v50 - v20;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B70, &qword_21CBB8D68);
  v22 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v53 = &v50 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B78, &qword_21CBB8D70);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v50 - v29;
  MEMORY[0x28223BE20](v31);
  if (v4 <= 3)
  {
    if (v4 > 1)
    {
      v36 = &v50 - v32;
      if (v4 == 2)
      {
        v37 = sub_21CB84AC4();
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B80, &unk_21CBB8D78);
        (*(*(v38 - 8) + 16))(v36, v55, v38);
        *&v36[*(v24 + 36)] = v37;
        sub_21C6EDBAC(v36, v18, &qword_27CDF3B78, &qword_21CBB8D70);
        swift_storeEnumTagMultiPayload();
        sub_21C9B5EA4();
        sub_21CB83494();
        sub_21C6EDBAC(v21, v52, &qword_27CDF3B68, &qword_21CBB8D60);
        swift_storeEnumTagMultiPayload();
        sub_21C9B5F88();
        v39 = v53;
        sub_21CB83494();
        sub_21C6EA794(v21, &qword_27CDF3B68, &qword_21CBB8D60);
        v40 = &qword_27CDF3B70;
        v41 = &qword_21CBB8D68;
        sub_21C6EDBAC(v39, v59, &qword_27CDF3B70, &qword_21CBB8D68);
        swift_storeEnumTagMultiPayload();
        sub_21C9B5FB8(&qword_27CDF3BA0, &qword_27CDF3B70, &qword_21CBB8D68, sub_21C9B5F88);
        sub_21C9B6034();
        sub_21CB83494();
        v42 = v39;
      }

      else
      {
        v43 = sub_21CB84A84();
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B80, &unk_21CBB8D78);
        (*(*(v44 - 8) + 16))(v36, v55, v44);
        *&v36[*(v24 + 36)] = v43;
        sub_21C6EDBAC(v36, v18, &qword_27CDF3B78, &qword_21CBB8D70);
        swift_storeEnumTagMultiPayload();
        sub_21C9B5EA4();
        sub_21CB83494();
        sub_21C6EDBAC(v21, v7, &qword_27CDF3B68, &qword_21CBB8D60);
        swift_storeEnumTagMultiPayload();
        sub_21C9B5F88();
        sub_21CB83494();
        sub_21C6EA794(v21, &qword_27CDF3B68, &qword_21CBB8D60);
        v40 = &qword_27CDF3B48;
        v41 = &qword_21CBB8D40;
        sub_21C6EDBAC(v10, v59, &qword_27CDF3B48, &qword_21CBB8D40);
        swift_storeEnumTagMultiPayload();
        sub_21C9B5FB8(&qword_27CDF3BA0, &qword_27CDF3B70, &qword_21CBB8D68, sub_21C9B5F88);
        sub_21C9B6034();
        sub_21CB83494();
        v42 = v10;
      }

      sub_21C6EA794(v42, v40, v41);
      v30 = v36;
      return sub_21C6EA794(v30, &qword_27CDF3B78, &qword_21CBB8D70);
    }

    goto LABEL_14;
  }

  if ((v4 - 4) < 6)
  {
    if ((a2 & 0x100) != 0)
    {
      v33 = sub_21CB84A64();
    }

    else
    {
      v33 = sub_21CB84AF4();
    }

    v34 = v33;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B80, &unk_21CBB8D78);
    (*(*(v35 - 8) + 16))(v27, v55, v35);
    *&v27[*(v24 + 36)] = v34;
    sub_21C716934(v27, v30, &qword_27CDF3B78, &qword_21CBB8D70);
    sub_21C6EDBAC(v30, v18, &qword_27CDF3B78, &qword_21CBB8D70);
    swift_storeEnumTagMultiPayload();
    sub_21C9B5EA4();
    sub_21CB83494();
    sub_21C6EDBAC(v21, v7, &qword_27CDF3B68, &qword_21CBB8D60);
    swift_storeEnumTagMultiPayload();
    sub_21C9B5F88();
    sub_21CB83494();
    sub_21C6EA794(v21, &qword_27CDF3B68, &qword_21CBB8D60);
    sub_21C6EDBAC(v10, v59, &qword_27CDF3B48, &qword_21CBB8D40);
    swift_storeEnumTagMultiPayload();
    sub_21C9B5FB8(&qword_27CDF3BA0, &qword_27CDF3B70, &qword_21CBB8D68, sub_21C9B5F88);
    sub_21C9B6034();
    sub_21CB83494();
    sub_21C6EA794(v10, &qword_27CDF3B48, &qword_21CBB8D40);
    return sub_21C6EA794(v30, &qword_27CDF3B78, &qword_21CBB8D70);
  }

  if (v4 == 11)
  {
LABEL_14:
    v45 = &v50 - v32;
    v46 = sub_21CB84AC4();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B80, &unk_21CBB8D78);
    (*(*(v47 - 8) + 16))(v45, v55, v47);
    *&v45[*(v24 + 36)] = v46;
    sub_21C6EDBAC(v45, v18, &qword_27CDF3B78, &qword_21CBB8D70);
    swift_storeEnumTagMultiPayload();
    sub_21C9B5EA4();
    sub_21CB83494();
    sub_21C6EDBAC(v21, v52, &qword_27CDF3B68, &qword_21CBB8D60);
    swift_storeEnumTagMultiPayload();
    sub_21C9B5F88();
    v48 = v53;
    sub_21CB83494();
    sub_21C6EA794(v21, &qword_27CDF3B68, &qword_21CBB8D60);
    sub_21C6EDBAC(v48, v59, &qword_27CDF3B70, &qword_21CBB8D68);
    swift_storeEnumTagMultiPayload();
    sub_21C9B5FB8(&qword_27CDF3BA0, &qword_27CDF3B70, &qword_21CBB8D68, sub_21C9B5F88);
    sub_21C9B6034();
    sub_21CB83494();
    sub_21C6EA794(v48, &qword_27CDF3B70, &qword_21CBB8D68);
    v30 = v45;
    return sub_21C6EA794(v30, &qword_27CDF3B78, &qword_21CBB8D70);
  }

  result = sub_21CB861C4();
  __break(1u);
  return result;
}