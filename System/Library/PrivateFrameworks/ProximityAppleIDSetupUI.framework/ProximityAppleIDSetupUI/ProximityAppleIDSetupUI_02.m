uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

id sub_2611412D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_step);
  v2 = sub_26115A6F4();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    sub_26115A6C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81B30, &qword_261160B70);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26115D860;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_261121EE0();
    *(v6 + 32) = v4;
    *(v6 + 40) = v5;
    sub_26115B6D4();
  }

  v7 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v7 setMinimumLineHeight_];
  [v7 setAlignment_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B10, &unk_261160B60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26115F450;
  v9 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v10 = objc_opt_self();
  v11 = *MEMORY[0x277D743F8];
  v12 = v9;
  v13 = [v10 systemFontOfSize:34.0 weight:v11];
  v14 = sub_26112B474(0, &qword_27FE81B18, 0x277D74300);
  *(inited + 40) = v13;
  v15 = *MEMORY[0x277D74118];
  *(inited + 64) = v14;
  *(inited + 72) = v15;
  *(inited + 104) = sub_26112B474(0, &unk_27FE81B40, 0x277D74240);
  *(inited + 80) = v7;
  v16 = v15;
  v17 = v7;
  sub_261110940(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81B20, &qword_26115DA28);
  swift_arrayDestroy();
  v18 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v19 = sub_26115B674();

  type metadata accessor for Key(0);
  sub_2611439C0();
  v20 = sub_26115B604();

  v21 = [v18 initWithString:v19 attributes:v20];

  return v21;
}

id sub_261141630()
{
  v1 = sub_26115A3F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_step);
  v7 = sub_26115A6E4();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
  }

  else
  {
    (*(v2 + 104))(v5, *MEMORY[0x277D433B8], v1);
    v9 = sub_26115A3E4();
    v10 = v11;
    (*(v2 + 8))(v5, v1);
  }

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B10, &unk_261160B60);
  inited = swift_initStackObject();
  v51 = xmmword_26115D860;
  *(inited + 16) = xmmword_26115D860;
  v13 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v14 = objc_opt_self();
  v48 = v13;
  v49 = v14;
  v15 = [v14 systemFontOfSize_];
  v16 = sub_26112B474(0, &qword_27FE81B18, 0x277D74300);
  *(inited + 64) = v16;
  *(inited + 40) = v15;
  sub_261110940(inited);
  swift_setDeallocating();
  sub_26110CEE0(inited + 32, &unk_27FE81B20, &qword_26115DA28);
  v17 = sub_26115A6F4();
  if (!v18)
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_26115B954();

    v52 = 0xD00000000000001FLL;
    v53 = 0x80000002611648D0;
    MEMORY[0x2666F9DF0](v9, v10);

    MEMORY[0x2666F9DF0](0x454D414E4F4E5FLL, 0xE700000000000000);
    sub_26115B6F4();

    v33 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v34 = sub_26115B674();

    type metadata accessor for Key(0);
    sub_2611439C0();
    v35 = sub_26115B604();

    v36 = [v33 initWithString:v34 attributes:v35];

LABEL_14:
    return v36;
  }

  v19 = v17;
  v20 = v18;
  if (sub_26115A6C4())
  {
    v21 = sub_26115A6D4();
    if (v22)
    {
      v23 = v21;
      v24 = v22;
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_26115B954();

      v52 = 0xD00000000000001FLL;
      v53 = 0x80000002611648D0;
      MEMORY[0x2666F9DF0](v9, v10);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81B30, &qword_261160B70);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_26115F450;
      v26 = MEMORY[0x277D837D0];
      *(v25 + 56) = MEMORY[0x277D837D0];
      v27 = sub_261121EE0();
      *(v25 + 32) = v19;
      *(v25 + 40) = v20;
      *(v25 + 96) = v26;
      *(v25 + 104) = v27;
      *(v25 + 64) = v27;
      *(v25 + 72) = v23;
      *(v25 + 80) = v24;

      sub_26115B6D4();

      v28 = sub_26115B674();
      v29 = sub_26115B674();

      v47 = [v28 rangeOfString_];
      v31 = v30;

      v32 = 0;
      goto LABEL_12;
    }

    v52 = 0;
    v53 = 0xE000000000000000;
    sub_26115B954();

    v52 = 0xD00000000000001FLL;
    v53 = 0x80000002611648D0;
    MEMORY[0x2666F9DF0](v9, v10);

    MEMORY[0x2666F9DF0](0x454D414E4F4E5FLL, 0xE700000000000000);
    sub_26115B6F4();
  }

  else
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_26115B954();

    v52 = 0xD00000000000001BLL;
    v53 = 0x80000002611648F0;
    MEMORY[0x2666F9DF0](v9, v10);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81B30, &qword_261160B70);
    v37 = swift_allocObject();
    *(v37 + 16) = v51;
    *(v37 + 56) = MEMORY[0x277D837D0];
    *(v37 + 64) = sub_261121EE0();
    *(v37 + 32) = v19;
    *(v37 + 40) = v20;
    sub_26115B6D4();
  }

  v47 = 0;
  v31 = 0;
  v32 = 1;
LABEL_12:
  v38 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v39 = sub_26115B674();

  type metadata accessor for Key(0);
  sub_2611439C0();
  v40 = sub_26115B604();

  v36 = [v38 initWithString:v39 attributes:v40];

  if ((v32 & 1) == 0)
  {
    v41 = swift_initStackObject();
    *(v41 + 16) = v51;
    v42 = v48;
    *(v41 + 32) = v48;
    v43 = *MEMORY[0x277D743F8];
    v44 = v42;
    v45 = [v49 systemFontOfSize:17.0 weight:v43];
    *(v41 + 64) = v16;
    *(v41 + 40) = v45;
    sub_261110940(v41);
    swift_setDeallocating();
    sub_26110CEE0(v41 + 32, &unk_27FE81B20, &qword_26115DA28);
    v35 = sub_26115B604();

    [v36 addAttributes:v35 range:{v47, v31}];
    goto LABEL_14;
  }

  return v36;
}

id PASUISignInViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PASUISignInViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASUISignInViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_261141EBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81AE0, &qword_261160B48);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81AE8, &qword_261160B50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - v10;
  v12 = objc_allocWithZone(MEMORY[0x277CECAE0]);
  v13 = a1;
  v14 = [v12 initWithNibName:0 bundle:0];
  v19 = v13;
  v20 = v14;
  v15 = sub_2611438C8();
  sub_26115B414();

  *v6 = sub_26115B024();
  *(v6 + 1) = 0;
  v6[16] = 1;
  LODWORD(v14) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81AF8, &qword_261160B58) + 44);
  *(swift_allocObject() + 16) = v13;
  v16 = v13;
  sub_26115B554();
  v19 = &type metadata for AAUISignInViewControllerWrapper;
  v20 = v15;
  swift_getOpaqueTypeConformance2();
  sub_26114395C();
  sub_26115B3C4();
  sub_26110CEE0(v6, &qword_27FE81AE0, &qword_261160B48);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_261142154(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_continueSignInAction);
  if (v1)
  {
    v2 = *(result + OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_continueSignInAction + 8);

    v1(v3);

    return sub_26111EE94(v1);
  }

  return result;
}

uint64_t sub_2611421BC@<X0>(uint64_t a1@<X8>)
{
  sub_26115B6F4();
  sub_2611123E4();
  result = sub_26115B314();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

id sub_261142234(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_26115AD64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v10 = sub_26115AD54();
  v11 = sub_26115B834();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_261107000, v10, v11, "PASUISignInView makeUIViewController", v12, 2u);
    MEMORY[0x2666FA930](v12, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v13 = a3;
  [v13 setAllowsAccountCreation_];
  [v13 setShowServiceIcons_];
  [v13 setCanEditUsername_];
  v14 = *(a2 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_step);
  sub_26115A6D4();
  if (v15)
  {
    v16 = sub_26115B674();
  }

  else
  {
    v16 = 0;
  }

  [v13 setUsername_];

  [v13 setDelegate_];
  v17 = sub_26115B744();
  [v13 setPrivacyLinkIdentifiers_];

  v18 = sub_261143140();
  [v13 setHeaderImage_];

  [v13 setFooterText_];
  [v13 setTableViewStyle_];
  v19 = [objc_opt_self() secondarySystemBackgroundColor];
  [v13 setCellBackgroundColor_];

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = (a2 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_continueSignInAction);
  v22 = *(a2 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_continueSignInAction);
  v23 = v21[1];
  *v21 = sub_261143B74;
  v21[1] = v20;

  sub_26111EE94(v22);

  return v13;
}

void sub_261142530()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong nextButtonTapped];
  }
}

uint64_t sub_261142594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261143AE8();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2611425F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261143AE8();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26114265C()
{
  sub_261143AE8();
  sub_26115B1C4();
  __break(1u);
}

uint64_t sub_261142694(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E60, &qword_26115DA30);
    v2 = sub_26115B9B4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2611105C8(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_261110684(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_261110684(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_261110684(v32, v33);
    v17 = *(v2 + 40);
    result = sub_26115B914();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_261110684(v33, (*(v2 + 56) + 32 * v10));
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

id PASUISignInViewModel.authenticationContext()()
{
  v1 = v0;
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v5);
  v7 = v26 - v6 + 24;
  sub_26115AD44();
  v8 = sub_26115AD54();
  v9 = sub_26115B804();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_261107000, v8, v9, "PASUISignInViewModel authenticationContext", v10, 2u);
    MEMORY[0x2666FA930](v10, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v11 = __swift_project_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_contextProvider), *(v1 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_contextProvider + 24));
  v12 = *(v1 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel__viewControllerProvider);

  sub_26115A2D4();

  v13 = v27;
  v14 = v28;
  __swift_project_boxed_opaque_existential_1Tm(v26, v27);
  v15 = (*(v14 + 16))(v13, v14);
  v16 = *v11;
  v17 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
  [v17 setPresentingViewController_];
  [v17 setDelegate_];

  __swift_destroy_boxed_opaque_existential_1(v26);
  v18 = v17;
  v19 = sub_2611412D8();
  v20 = [v19 string];

  if (!v20)
  {
    sub_26115B6A4();
    v20 = sub_26115B674();
  }

  [v18 setTitle_];

  v21 = sub_261141630();
  v22 = [v21 string];

  if (!v22)
  {
    sub_26115B6A4();
    v22 = sub_26115B674();
  }

  [v18 setReason_];

  v23 = *(v1 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_step);
  sub_26115A704();
  [v18 setAuthenticationType_];

  return v18;
}

id sub_261142EF8(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_26115AD64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = type metadata accessor for PASUIAppleIDAuthContextProvider();
  v24[4] = &off_287399F58;
  v24[0] = a2;
  v11 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel__viewControllerProvider;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B50, &unk_26115E4D0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *&a3[v11] = sub_26115A2E4();
  v15 = &a3[OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_continueSignInAction];
  *v15 = 0;
  *(v15 + 1) = 0;
  sub_26115AD44();
  v16 = sub_26115AD54();
  v17 = sub_26115B804();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_261107000, v16, v17, "PASUISignInViewModel init", v18, 2u);
    MEMORY[0x2666FA930](v18, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  *&a3[OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_step] = a1;
  sub_26111BED4(v24, &a3[OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_contextProvider]);
  v19 = type metadata accessor for PASUISignInViewModel();
  v23.receiver = a3;
  v23.super_class = v19;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v20;
}

unint64_t sub_2611430EC()
{
  result = qword_27FE81A48;
  if (!qword_27FE81A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81A48);
  }

  return result;
}

id sub_261143140()
{
  v0 = [objc_opt_self() tintColor];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithHierarchicalColor_];

  v3 = [v1 configurationWithPointSize_];
  v4 = [v2 configurationByApplyingConfiguration_];
  v5 = sub_26115B674();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  return v6;
}

uint64_t _s23ProximityAppleIDSetupUI20PASUISignInViewModelC04signfG19ControllerDidCancelyySo08AAUISignfgJ0CF_0()
{
  v0 = sub_26115AD64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v5 = sub_26115AD54();
  v6 = sub_26115B834();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_261107000, v5, v6, "PASUISignInViewModel signInViewControllerDidCancel", v7, 2u);
    MEMORY[0x2666FA930](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2611433A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26115A3D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26115AD64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();

  v14 = sub_26115AD54();
  v15 = sub_26115B834();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = v10;
    v17 = v16;
    v31 = swift_slowAlloc();
    v34 = v31;
    *v17 = 141558274;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2080;
    v18 = sub_26115B624();
    v32 = v9;
    v30 = v8;
    v20 = v14;
    v21 = v15;
    v22 = a1;
    v23 = v5;
    v24 = v4;
    v25 = sub_26111C268(v18, v19, &v34);
    v8 = v30;

    *(v17 + 14) = v25;
    v4 = v24;
    v5 = v23;
    a1 = v22;
    _os_log_impl(&dword_261107000, v20, v21, "PASUISignInViewModel signInViewController didCompleteWithAuthenticationResults\n%{mask.hash}s", v17, 0x16u);
    v26 = v31;
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x2666FA930](v26, -1, -1);
    MEMORY[0x2666FA930](v17, -1, -1);

    (*(v33 + 8))(v13, v32);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  sub_261142694(a1);
  sub_26115A3A4();
  v27 = *(v2 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_step);
  sub_26115A6B4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t _s23ProximityAppleIDSetupUI20PASUISignInViewModelC27willAuthenticateWithContextyySo023AKAppleIDAuthenticationL0CF_0(void *a1)
{
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v7 = a1;
  v8 = sub_26115AD54();
  v9 = sub_26115B804();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 141558274;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2080;
    v12 = [v7 debugDescription];
    v13 = sub_26115B6A4();
    v15 = v14;

    v16 = sub_26111C268(v13, v15, &v19);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_261107000, v8, v9, "PASUISignInViewModel willAuthenticateWithContext\n%{mask.hash}s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2666FA930](v11, -1, -1);
    MEMORY[0x2666FA930](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_2611438C8()
{
  result = qword_27FE81AF0;
  if (!qword_27FE81AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81AF0);
  }

  return result;
}

uint64_t sub_26114391C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_26114395C()
{
  result = qword_27FE81B00;
  if (!qword_27FE81B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81AE0, &qword_261160B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81B00);
  }

  return result;
}

unint64_t sub_2611439C0()
{
  result = qword_27FE80D18;
  if (!qword_27FE80D18)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80D18);
  }

  return result;
}

uint64_t sub_261143A28()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81AE8, &qword_261160B50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81AE0, &qword_261160B48);
  sub_2611438C8();
  swift_getOpaqueTypeConformance2();
  sub_26114395C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_261143AE8()
{
  result = qword_27FE81B58;
  if (!qword_27FE81B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81B58);
  }

  return result;
}

uint64_t sub_261143B3C()
{
  MEMORY[0x2666FA9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double PASUIPickerView.init(presentables:showTitles:stackSize:selectedPresentable:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for CGSize(0);
  sub_26115B514();
  *a6 = a1;
  *(a6 + 8) = a2;
  sub_26115B514();

  result = *&v13;
  *(a6 + 16) = v13;
  *(a6 + 32) = v14;
  *(a6 + 40) = a3;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5;
  return result;
}

uint64_t PASUIPickerView.presentables.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

double PASUIPickerView.stackSize.getter()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B60, &qword_261160CA0);
  sub_26115B524();
  return v2;
}

double sub_261143D18@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B60, &qword_261160CA0);
  sub_26115B524();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_261143D78(__int128 *a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v3 = *a1;
  v4 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B60, &qword_261160CA0);
  return sub_26115B534();
}

uint64_t PASUIPickerView.stackSize.setter()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B60, &qword_261160CA0);
  return sub_26115B534();
}

void (*PASUIPickerView.stackSize.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[2];
  v6 = v1[3];
  *(v3 + 80) = v5;
  *(v3 + 88) = v6;
  v7 = v1[4];
  v4[12] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B60, &qword_261160CA0);
  sub_26115B524();
  return sub_261143EDC;
}

void sub_261143EDC(uint64_t *a1)
{
  v1 = *a1;
  *(*a1 + 24) = *(*a1 + 80);
  v2 = *(v1 + 104);
  *(v1 + 40) = *(v1 + 96);
  *(v1 + 64) = *(v1 + 48);
  sub_26115B534();

  free(v1);
}

double PASUIPickerView.$stackSize.getter()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B60, &qword_261160CA0);
  sub_26115B544();
  return v2;
}

uint64_t PASUIPickerView.selectedPresentable.getter()
{
  v1 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B68, &qword_261160CA8);
  MEMORY[0x2666F9C60](&v4, v2);
  return v4;
}

void *sub_261143FF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B68, &qword_261160CA8);
  result = MEMORY[0x2666F9C60](&v6, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_261144058(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v3 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B68, &qword_261160CA8);
  return sub_26115B594();
}

uint64_t PASUIPickerView.selectedPresentable.setter()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B68, &qword_261160CA8);
  return sub_26115B594();
}

void (*PASUIPickerView.selectedPresentable.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[5];
  v6 = v1[6];
  *(v3 + 64) = v5;
  *(v3 + 72) = v6;
  v7 = v1[7];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B68, &qword_261160CA8);
  MEMORY[0x2666F9C60]();
  return sub_2611441DC;
}

void sub_2611441DC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v2[3] = *(*a1 + 64);
  v2[7] = v2[6];
  v4 = v2[10];
  v5 = v2[11];
  v2[4] = v3;
  v2[5] = v4;
  if (a2)
  {

    sub_26115B594();

    v6 = v2[6];
  }

  else
  {
    sub_26115B594();
  }

  free(v2);
}

uint64_t PASUIPickerView.$selectedPresentable.getter()
{
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B68, &qword_261160CA8);
  sub_26115B5A4();
  return v2;
}

uint64_t PASUIPickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v5[0] = *v1;
  v5[1] = v2;
  v3 = v1[3];
  v5[2] = v1[2];
  v5[3] = v3;
  return sub_26114434C(v5, a1);
}

uint64_t sub_26114434C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81BF8, &qword_261160E60);
  v4 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v6 = v43 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C00, &qword_261160E68);
  v7 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v9 = v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B98, &qword_261160D88);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v45 = v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C08, &qword_261160E70);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = v43 - v17;
  v19 = *a1;
  if (!(*a1 >> 62))
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_15;
  }

  if (v19 < 0)
  {
    v31 = *a1;
  }

  v32 = v16;
  result = sub_26115B9A4();
  if (result != 1)
  {
LABEL_15:
    if (result >= 2)
    {
      v33 = swift_allocObject();
      v34 = *(a1 + 16);
      v33[1] = *a1;
      v33[2] = v34;
      v35 = *(a1 + 48);
      v36 = *(a1 + 16);
      v33[3] = *(a1 + 32);
      v33[4] = v35;
      v47 = v36;
      *&v48 = *(a1 + 32);
      sub_261146CD4(a1, &v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B60, &qword_261160CA0);
      sub_26115B524();
      sub_26115B5C4();
      sub_26115AEC4();
      v37 = v51;
      v38 = BYTE8(v51);
      v39 = v52;
      v40 = v53;
      v56 = BYTE8(v51);
      v55 = v53;
      *v9 = sub_261146CCC;
      *(v9 + 1) = v33;
      *(v9 + 2) = v37;
      v9[24] = v38;
      *(v9 + 4) = v39;
      v9[40] = v40;
      *(v9 + 3) = v54;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81BB0, &qword_261160D90);
      v41 = sub_261145854();
      *&v47 = &type metadata for PASUIPickerPresentableView;
      *(&v47 + 1) = v41;
      swift_getOpaqueTypeConformance2();
      sub_2611458A8();
      v42 = v45;
      sub_26115B104();
      sub_261146D0C(v42, v6);
      swift_storeEnumTagMultiPayload();
      sub_26114579C();
      sub_26110CC00();
      sub_26115B104();

      return sub_26110CEE0(v42, &qword_27FE81B98, &qword_261160D88);
    }

    goto LABEL_17;
  }

  result = sub_26115B9A4();
  v16 = v32;
  if (!result)
  {
LABEL_17:
    swift_storeEnumTagMultiPayload();
    sub_26114579C();
    sub_26110CC00();
    return sub_26115B104();
  }

LABEL_3:
  v43[2] = a2;
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = v16;
    v22 = MEMORY[0x2666FA050](0, v19);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v21 = v16;
    v22 = *(v19 + 32);
  }

  v51 = *(a1 + 40);
  v52 = *(a1 + 56);

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B68, &qword_261160CA8);
  MEMORY[0x2666F9C60](&v47, v23);
  *&v51 = v22;
  v43[1] = v10;
  if (v47)
  {
    sub_26115A5B4();
    sub_261147470(&qword_27FE81C10, MEMORY[0x277D433F0]);
    v24 = sub_26115B664();
  }

  else
  {

    v24 = 0;
  }

  v25 = *(a1 + 8);
  *&v47 = v22;
  BYTE8(v47) = v24 & 1;
  v48 = xmmword_261160C90;
  v49 = 0x405E000000000000;
  v50 = v25;
  v26 = swift_allocObject();
  v27 = *(a1 + 16);
  *(v26 + 16) = *a1;
  *(v26 + 32) = v27;
  v28 = *(a1 + 48);
  *(v26 + 48) = *(a1 + 32);
  *(v26 + 64) = v28;
  *(v26 + 80) = v22;
  swift_retain_n();
  sub_261146CD4(a1, &v51);
  v29 = sub_261145854();
  sub_26115B364();

  (*(v14 + 16))(v9, v18, v21);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81BB0, &qword_261160D90);
  *&v51 = &type metadata for PASUIPickerPresentableView;
  *(&v51 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  sub_2611458A8();
  v30 = v45;
  sub_26115B104();
  sub_261146D0C(v30, v6);
  swift_storeEnumTagMultiPayload();
  sub_26114579C();
  sub_26110CC00();
  sub_26115B104();

  sub_26110CEE0(v30, &qword_27FE81B98, &qword_261160D88);
  return (*(v14 + 8))(v18, v21);
}

uint64_t sub_261144A78@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v51 = a3;
  v50 = sub_26115B134();
  v49 = *(v50 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v50);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C18, &qword_261160E78);
  v7 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v9 = &v40 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C20, &qword_261160E80);
  v46 = *(v47 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v47);
  v12 = &v40 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C28, &qword_261160E88);
  v44 = *(v45 - 8);
  v13 = *(v44 + 64);
  MEMORY[0x28223BE20](v45);
  v43 = &v40 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C30, &qword_261160E90);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C38, &qword_261160E98);
  v20 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v22 = &v40 - v21;
  sub_26115B224();
  v52 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C40, &qword_261160EA0);
  sub_261146D88();
  sub_26115AE34();
  v55 = *(a2 + 16);
  *&v56 = *(a2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B60, &qword_261160CA0);
  sub_26115B524();
  v23 = v54;
  sub_26115AED4();
  v25 = v24;
  sub_26115B5C4();
  sub_26115AEC4();
  v26 = *(v16 + 16);
  v42 = v15;
  v27 = v15;
  v28 = v40;
  v26(v9, v19, v27);
  v29 = &v9[*(v28 + 36)];
  v30 = v56;
  *v29 = v55;
  *(v29 + 1) = v30;
  *(v29 + 2) = v57;
  v31 = sub_261146F24();
  sub_26115B394();
  sub_26110CEE0(v9, &qword_27FE81C18, &qword_261160E78);
  v48 = v6;
  sub_26115B124();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81CA0, &qword_261160EC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26115F450;
  v33 = sub_26115B244();
  *(inited + 32) = v33;
  v34 = sub_26115B224();
  *(inited + 33) = v34;
  sub_26115B234();
  sub_26115B234();
  if (sub_26115B234() != v33)
  {
    sub_26115B234();
  }

  sub_26115B234();
  if (sub_26115B234() != v34)
  {
    sub_26115B234();
  }

  v53 = v28;
  v54 = *&v31;
  swift_getOpaqueTypeConformance2();
  v35 = v43;
  v36 = v48;
  v37 = v47;
  sub_26115B3A4();
  (*(v49 + 8))(v36, v50);
  (*(v46 + 8))(v12, v37);
  (*(v16 + 8))(v19, v42);
  (*(v44 + 32))(v22, v35, v45);
  v38 = &v22[*(v41 + 36)];
  *v38 = v25 * 0.5;
  v38[1] = v23 * 0.5;
  sub_261146FDC();
  sub_26115B3D4();
  return sub_26110CEE0(v22, &qword_27FE81C38, &qword_261160E98);
}

uint64_t sub_2611450E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26115B024();
  *(a2 + 8) = 0x402C000000000000;
  *(a2 + 16) = 0;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81CB0, &qword_261160ED0) + 44);
  v20 = *a1;
  v19[8] = v20;
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  v5[1] = *a1;
  v5[2] = v6;
  v7 = *(a1 + 48);
  v5[3] = *(a1 + 32);
  v5[4] = v7;
  sub_26110CE78(&v20, v19, &qword_27FE81CB8, &qword_261160ED8);
  sub_261146CD4(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81CB8, &qword_261160ED8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C08, &qword_261160E70);
  sub_26111EDDC(&qword_27FE81CC0, &qword_27FE81CB8, &qword_261160ED8);
  v8 = sub_261145854();
  v19[0] = &type metadata for PASUIPickerPresentableView;
  v19[1] = v8;
  swift_getOpaqueTypeConformance2();
  sub_261147470(&qword_27FE81CC8, MEMORY[0x277D433F0]);
  sub_26115B5B4();
  v9 = swift_allocObject();
  v10 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v10;
  v11 = *(a1 + 48);
  v9[3] = *(a1 + 32);
  v9[4] = v11;
  sub_261146CD4(a1, v19);
  v12 = sub_26115B5C4();
  v14 = v13;
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C58, &qword_261160EA8) + 36));
  *v15 = sub_261157A1C;
  v15[1] = 0;
  v15[2] = v12;
  v15[3] = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_261147148;
  *(v16 + 24) = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C40, &qword_261160EA0);
  v18 = (a2 + *(result + 36));
  *v18 = sub_2611471DC;
  v18[1] = v16;
  return result;
}

uint64_t sub_261145384(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v11 = *(a2 + 40);
  v12 = *(a2 + 56);
  swift_retain_n();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B68, &qword_261160CA8);
  MEMORY[0x2666F9C60](&v13, v4);
  *&v11 = v3;
  if (v13)
  {
    sub_26115A5B4();
    sub_261147470(&qword_27FE81C10, MEMORY[0x277D433F0]);
    v5 = sub_26115B664();
  }

  else
  {

    v5 = 0;
  }

  v6 = *(a2 + 8);
  v13 = v3;
  v14 = v5 & 1;
  v15 = xmmword_261160C90;
  v16 = 0x4056000000000000;
  v17 = v6;
  v7 = swift_allocObject();
  v8 = *(a2 + 16);
  *(v7 + 16) = *a2;
  *(v7 + 32) = v8;
  v9 = *(a2 + 48);
  *(v7 + 48) = *(a2 + 32);
  *(v7 + 64) = v9;
  *(v7 + 80) = v3;

  sub_261146CD4(a2, &v11);
  sub_261145854();
  sub_26115B364();
}

uint64_t sub_261145538(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B68, &qword_261160CA8);
  return sub_26115B594();
}

uint64_t sub_26114559C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v5[0] = *v1;
  v5[1] = v2;
  v3 = v1[3];
  v5[2] = v1[2];
  v5[3] = v3;
  return sub_26114434C(v5, a1);
}

uint64_t sub_2611455E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_261145628(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_26114568C()
{
  result = qword_27FE81B70;
  if (!qword_27FE81B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81B78, &qword_261160D78);
    sub_261145710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81B70);
  }

  return result;
}

unint64_t sub_261145710()
{
  result = qword_27FE81B80;
  if (!qword_27FE81B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81B88, &qword_261160D80);
    sub_26114579C();
    sub_26110CC00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81B80);
  }

  return result;
}

unint64_t sub_26114579C()
{
  result = qword_27FE81B90;
  if (!qword_27FE81B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81B98, &qword_261160D88);
    sub_261145854();
    swift_getOpaqueTypeConformance2();
    sub_2611458A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81B90);
  }

  return result;
}

unint64_t sub_261145854()
{
  result = qword_27FE81BA0;
  if (!qword_27FE81BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81BA0);
  }

  return result;
}

unint64_t sub_2611458A8()
{
  result = qword_27FE81BA8;
  if (!qword_27FE81BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81BB0, &qword_261160D90);
    sub_26111EDDC(&qword_27FE81BB8, &qword_27FE81BC0, &qword_261160D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81BA8);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_261145974(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_2611459BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_261145A34@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_26115B4E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_26115A534() & 1) == 0)
  {
    v13 = sub_26115A5A4();
    if (v14 >> 60 != 15)
    {
      v15 = v13;
      v16 = v14;
      v17 = objc_allocWithZone(MEMORY[0x277D755B8]);
      sub_2611478E0(v15, v16);
      v18 = sub_26115A1F4();
      v19 = [v17 initWithData_];

      sub_26112B158(v15, v16);
      if (v19)
      {
        sub_26115B4C4();
        sub_26112B158(v15, v16);
LABEL_8:
        (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
        v20 = sub_26115B504();

        (*(v3 + 8))(v6, v2);
        sub_26115B5C4();
        sub_26115AEC4();
        v29 = v43;
        v31 = v35;
        v38 = v40;
        v37 = v42;
        v34 = 1;
        v24 = v20;
        v25 = v39;
        LOBYTE(v26) = v40;
        v27 = v41;
        LOBYTE(v28) = v42;
        v30 = 256;
        v32 = v36;
        v33 = 1;
        goto LABEL_9;
      }

      sub_26112B158(v15, v16);
    }

    sub_26115B4D4();
    goto LABEL_8;
  }

  sub_26115B4D4();
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
  v7 = sub_26115B504();

  (*(v3 + 8))(v6, v2);
  v8 = sub_26115B484();
  v9 = [objc_opt_self() secondarySystemBackgroundColor];
  v10 = sub_26115B4B4();
  sub_26115B264();
  sub_26115B284();
  v11 = sub_26115B2B4();

  KeyPath = swift_getKeyPath();
  sub_26115B5C4();
  sub_26115AEC4();
  LOBYTE(v39) = 0;
  v24 = v7;
  v25 = v8;
  v26 = v10;
  v27 = KeyPath;
  v28 = v11;
  HIWORD(v32) = 256;
  v33 = 0;
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81CE8, &qword_261160FF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81CF0, &qword_261160FF8);
  sub_2611474F0();
  sub_2611477A4();
  sub_26115B104();
  v21 = v47;
  a1[2] = v46;
  a1[3] = v21;
  a1[4] = v48[0];
  *(a1 + 75) = *(v48 + 11);
  result = *&v44;
  v23 = v45;
  *a1 = v44;
  a1[1] = v23;
  return result;
}

double sub_261145E58@<D0>(_OWORD *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_261145A34(a1);
}

uint64_t sub_261145E64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v25 = sub_26115B064();
  v23 = *(v25 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26115B154();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v20);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81BC8, &qword_261160E30);
  v21 = *(v10 - 8);
  v22 = v10;
  v11 = *(v21 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - v12;
  v14 = sub_26115B074();
  v28 = 1;
  sub_261146204(v2, v31);
  memcpy(v29, v31, sizeof(v29));
  memcpy(v30, v31, sizeof(v30));
  sub_26110CE78(v29, v26, &qword_27FE81BD0, &qword_261160E38);
  sub_26110CEE0(v30, &qword_27FE81BD0, &qword_261160E38);
  memcpy(&v27[7], v29, 0x128uLL);
  v26[0] = v14;
  v26[1] = 0;
  LOBYTE(v26[2]) = v28;
  memcpy(&v26[2] + 1, v27, 0x12FuLL);
  sub_26115B144();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81BD8, &unk_261160E40);
  v16 = sub_26111EDDC(&qword_27FE81BE0, &qword_27FE81BD8, &unk_261160E40);
  sub_26115B3E4();
  (*(v6 + 8))(v9, v20);
  memcpy(v31, v26, 0x140uLL);
  sub_26110CEE0(v31, &qword_27FE81BD8, &unk_261160E40);
  if (*(v19[1] + 8))
  {
    sub_26115B044();
  }

  else
  {
    sub_26115B054();
  }

  v26[0] = v15;
  v26[1] = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v22;
  sub_26115B404();
  (*(v23 + 8))(v5, v25);
  return (*(v21 + 8))(v13, v17);
}

uint64_t sub_261146204@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81248, &qword_26115E930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v71 - v6;
  v92 = sub_26115B2D4();
  v90 = *(v92 - 8);
  v8 = *(v90 + 64);
  MEMORY[0x28223BE20](v92);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26115B5C4();
  v95 = v12;
  v96 = v11;
  v94 = *(a1 + 8);
  v14 = *(a1 + 24);
  v13 = *(a1 + 32);
  v15 = *a1;
  sub_261146C50(a1, &v151);
  v16 = *(a1 + 16);
  v93 = sub_26115B254();
  sub_26115AE24();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v138 = 0;
  if (*(a1 + 40))
  {
    v89 = a2;
    sub_26115B5C4();
    sub_26115AEC4();
    v87 = v141;
    v88 = v139;
    v85 = v144;
    v86 = v143;
    LOBYTE(v125[0]) = 1;
    LOBYTE(v103[0]) = v140;
    LOBYTE(v118) = v142;
    v25 = sub_26115A594();
    v91 = v15;
    if (!v26)
    {
      v25 = sub_26115A584();
      if (!v26)
      {
        v25 = 0;
        v26 = 0xE000000000000000;
      }
    }

    *&v151 = v25;
    *(&v151 + 1) = v26;
    v77 = sub_2611123E4();
    v27 = sub_26115B314();
    v83 = v28;
    v84 = v27;
    v30 = v29;
    v31 = *MEMORY[0x277CE0A68];
    v32 = v90;
    v76 = *(v90 + 104);
    v33 = v92;
    v76(v10, v31, v92);
    v74 = sub_26115B274();
    v34 = *(v74 - 8);
    v73 = *(v34 + 56);
    v75 = v34 + 56;
    v73(v7, 1, 1, v74);
    sub_26115B2A4();
    sub_26110CEE0(v7, &qword_27FE81248, &qword_26115E930);
    v72 = *(v32 + 8);
    v72(v10, v33);
    v71 = v10;
    v35 = v7;
    v36 = v30;
    v38 = v83;
    v37 = v84;
    v79 = sub_26115B2F4();
    v80 = v39;
    v78 = v40;
    v81 = v41;

    sub_261146CA8(v37, v38, v36 & 1);

    sub_26115B5C4();
    sub_26115AEC4();
    v90 = v145;
    v83 = v149;
    v84 = v147;
    v82 = v150;
    v102 = 1;
    v101 = v146;
    v100 = v148;
    *&v151 = sub_26115A544();
    *(&v151 + 1) = v42;
    v77 = sub_26115B314();
    v44 = v43;
    LOBYTE(v38) = v45;
    v46 = v71;
    v47 = v92;
    v76(v71, *MEMORY[0x277CE0AB0], v92);
    v73(v35, 1, 1, v74);
    sub_26115B2A4();
    sub_26110CEE0(v35, &qword_27FE81248, &qword_26115E930);
    v72(v46, v47);
    LOBYTE(v32) = v38;
    v48 = v77;
    v49 = sub_26115B2F4();
    v51 = v50;
    LOBYTE(v46) = v52;
    v92 = v53;

    sub_261146CA8(v48, v44, v32 & 1);

    sub_26115B4A4();
    v54 = sub_26115B2E4();
    v56 = v55;
    LOBYTE(v44) = v57;
    v72 = v58;

    sub_261146CA8(v49, v51, v46 & 1);

    LODWORD(v73) = LOBYTE(v125[0]);
    LODWORD(v74) = LOBYTE(v103[0]);
    LODWORD(v75) = v118;
    LOBYTE(v32) = v78 & 1;
    v99 = v32;
    LODWORD(v76) = v102;
    LODWORD(v77) = v101;
    v78 = v100;
    v98 = v32;
    LOBYTE(v37) = v44 & 1;
    v97 = v44 & 1;
    LODWORD(v92) = v44 & 1;
    v59 = v79;
    v60 = v80;
    sub_261146CB8(v79, v80, v32);
    v61 = v81;

    sub_261146CB8(v54, v56, v37);
    v62 = v72;

    sub_261146CA8(v54, v56, v37);

    sub_261146CA8(v59, v60, v99);

    *&v126 = 0;
    BYTE8(v126) = v73;
    *&v127 = v88;
    BYTE8(v127) = v74;
    *&v128 = v87;
    BYTE8(v128) = v75;
    *&v129 = v86;
    *(&v129 + 1) = v85;
    *&v130 = v59;
    *(&v130 + 1) = v60;
    LOBYTE(v131) = v32;
    *(&v131 + 1) = v61;
    *&v132 = 0;
    BYTE8(v132) = v76;
    *&v133 = v90;
    BYTE8(v133) = v77;
    *&v134 = v84;
    BYTE8(v134) = v78;
    *&v135 = v83;
    *(&v135 + 1) = v82;
    *&v136 = v54;
    *(&v136 + 1) = v56;
    LOBYTE(v137) = v92;
    *(&v137 + 1) = v62;
    nullsub_1(&v126, v63, v64);
    v159 = v134;
    v160 = v135;
    v161 = v136;
    v162 = v137;
    v155 = v130;
    v156 = v131;
    v157 = v132;
    v158 = v133;
    v151 = v126;
    v152 = v127;
    v153 = v128;
    v154 = v129;
    v65 = v89;
    v15 = v91;
  }

  else
  {
    sub_261146C88(&v151);
    v65 = a2;
  }

  v134 = v159;
  v135 = v160;
  v136 = v161;
  v137 = v162;
  v130 = v155;
  v131 = v156;
  v132 = v157;
  v133 = v158;
  v126 = v151;
  v127 = v152;
  v128 = v153;
  v129 = v154;
  v67 = v95;
  v66 = v96;
  *&v118 = v96;
  *(&v118 + 1) = v95;
  v69 = v93;
  v68 = v94;
  LOBYTE(v119) = v94;
  *(&v119 + 1) = v164[0];
  DWORD1(v119) = *(v164 + 3);
  *(&v119 + 1) = v14;
  *&v120 = v13 + 10.0;
  *(&v120 + 1) = v15;
  *&v121 = v13;
  BYTE8(v121) = v93;
  *(&v121 + 9) = *v163;
  HIDWORD(v121) = *&v163[3];
  *&v122 = v18;
  *(&v122 + 1) = v20;
  *&v123 = v22;
  *(&v123 + 1) = v24;
  *&v117[32] = v120;
  *&v117[48] = v121;
  *v117 = v118;
  *&v117[16] = v119;
  *&v117[64] = v122;
  *&v117[80] = v123;
  v125[3] = v154;
  v125[2] = v153;
  v125[1] = v152;
  v125[0] = v151;
  v125[7] = v158;
  v125[6] = v157;
  v125[5] = v156;
  v125[4] = v155;
  v125[10] = v161;
  v125[11] = v162;
  v125[8] = v159;
  v125[9] = v160;
  *&v117[264] = v161;
  *&v117[280] = v162;
  *&v117[232] = v159;
  *&v117[248] = v160;
  *&v117[168] = v155;
  *&v117[184] = v156;
  *&v117[200] = v157;
  *&v117[216] = v158;
  v124 = 0;
  v117[96] = 0;
  *&v117[104] = v151;
  *&v117[120] = v152;
  *&v117[136] = v153;
  *&v117[152] = v154;
  memcpy(v65, v117, 0x128uLL);
  sub_26110CE78(&v118, v103, &qword_27FE81BE8, &qword_261160E50);
  sub_26110CE78(v125, v103, &qword_27FE81BF0, &qword_261160E58);
  sub_26110CEE0(&v126, &qword_27FE81BF0, &qword_261160E58);
  v103[0] = v66;
  v103[1] = v67;
  v104 = v68;
  *v105 = v164[0];
  *&v105[3] = *(v164 + 3);
  v106 = v14;
  v107 = v13 + 10.0;
  v108 = v15;
  v109 = v13;
  v110 = v69;
  *v111 = *v163;
  *&v111[3] = *&v163[3];
  v112 = v18;
  v113 = v20;
  v114 = v22;
  v115 = v24;
  v116 = 0;
  return sub_26110CEE0(v103, &qword_27FE81BE8, &qword_261160E50);
}

double sub_261146B00@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26115B484();
  sub_26115AE74();
  v3 = sub_26115B5C4();
  v5 = v4;
  sub_26115B5C4();
  sub_26115AEC4();
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = v2;
  *(a1 + 48) = 256;
  *(a1 + 56) = v3;
  *(a1 + 64) = v5;
  *(a1 + 72) = v7;
  *(a1 + 88) = v8;
  result = *&v9;
  *(a1 + 104) = v9;
  return result;
}

double sub_261146C08@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  return sub_261146B00(a1);
}

uint64_t sub_261146C14@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[9] = *(v1 + 25);
  return sub_261145E64(a1);
}

double sub_261146C88(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_261146CA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_261146CB8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_261146D0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B98, &qword_261160D88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_261146D88()
{
  result = qword_27FE81C48;
  if (!qword_27FE81C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81C40, &qword_261160EA0);
    sub_261146E40();
    sub_26111EDDC(&qword_27FE81C80, &qword_27FE81C88, &qword_261160EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81C48);
  }

  return result;
}

unint64_t sub_261146E40()
{
  result = qword_27FE81C50;
  if (!qword_27FE81C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81C58, &qword_261160EA8);
    sub_26111EDDC(&qword_27FE81C60, &qword_27FE81C68, &qword_261160EB0);
    sub_26111EDDC(&qword_27FE81C70, &qword_27FE81C78, &qword_261160EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81C50);
  }

  return result;
}

unint64_t sub_261146F24()
{
  result = qword_27FE81C90;
  if (!qword_27FE81C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81C18, &qword_261160E78);
    sub_26111EDDC(&qword_27FE81C98, &qword_27FE81C30, &qword_261160E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81C90);
  }

  return result;
}

unint64_t sub_261146FDC()
{
  result = qword_27FE81CA8;
  if (!qword_27FE81CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81C38, &qword_261160E98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81C20, &qword_261160E80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81C18, &qword_261160E78);
    sub_261146F24();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81CA8);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = v0[2];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_261147148()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B60, &qword_261160CA0);
  return sub_26115B534();
}

uint64_t sub_2611471A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2611471DC(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t objectdestroy_12Tm()
{
  v1 = v0[2];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t getEnumTagSinglePayload for PASUIPickerPresentableView.SelectionView(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PASUIPickerPresentableView.SelectionView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_261147344()
{
  result = qword_27FE81CD0;
  if (!qword_27FE81CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81CD8, qword_261160F48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81BD8, &unk_261160E40);
    sub_26111EDDC(&qword_27FE81BE0, &qword_27FE81BD8, &unk_261160E40);
    swift_getOpaqueTypeConformance2();
    sub_261147470(&qword_27FE81CE0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81CD0);
  }

  return result;
}

uint64_t sub_261147470(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2611474F0()
{
  result = qword_27FE81CF8;
  if (!qword_27FE81CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81CE8, &qword_261160FF0);
    sub_2611475A8();
    sub_26111EDDC(&qword_27FE81D40, &qword_27FE81D48, &qword_261161028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81CF8);
  }

  return result;
}

unint64_t sub_2611475A8()
{
  result = qword_27FE81D00;
  if (!qword_27FE81D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81D08, &qword_261161000);
    sub_261147634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81D00);
  }

  return result;
}

unint64_t sub_261147634()
{
  result = qword_27FE81D10;
  if (!qword_27FE81D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81D18, &qword_261161008);
    sub_2611476EC();
    sub_26111EDDC(&qword_27FE81278, &qword_27FE81280, &qword_26115E9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81D10);
  }

  return result;
}

unint64_t sub_2611476EC()
{
  result = qword_27FE81D20;
  if (!qword_27FE81D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81D28, &qword_261161010);
    sub_26111EDDC(&qword_27FE81D30, &qword_27FE81D38, &unk_261161018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81D20);
  }

  return result;
}

unint64_t sub_2611477A4()
{
  result = qword_27FE81D50;
  if (!qword_27FE81D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81CF0, &qword_261160FF8);
    sub_26114785C();
    sub_26111EDDC(&qword_27FE81D40, &qword_27FE81D48, &qword_261161028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81D50);
  }

  return result;
}

unint64_t sub_26114785C()
{
  result = qword_27FE81D58;
  if (!qword_27FE81D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81D60, &qword_261161030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81D58);
  }

  return result;
}

uint64_t sub_2611478E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_261147940()
{
  result = qword_27FE81D68;
  if (!qword_27FE81D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81D70, &qword_261161068);
    sub_2611474F0();
    sub_2611477A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81D68);
  }

  return result;
}

unint64_t sub_2611479D0()
{
  result = qword_27FE81D78;
  if (!qword_27FE81D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81D80, &qword_261161070);
    sub_26111EDDC(&qword_27FE81D88, &qword_27FE81D90, &qword_261161078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81D78);
  }

  return result;
}

uint64_t PASFlowStepTargetProtoAccountStart.buildView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81D98, &qword_261161080);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v12[0] = v0;
  v9 = sub_261147C20();
  sub_26115B414();
  (*(v2 + 16))(v6, v8, v1);
  v12[0] = &type metadata for PASUITargetProtoAccountStartView;
  v12[1] = v9;
  swift_getOpaqueTypeConformance2();
  v10 = sub_26115B574();
  (*(v2 + 8))(v8, v1);
  return v10;
}

unint64_t sub_261147C20()
{
  result = qword_27FE81DA0;
  if (!qword_27FE81DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81DA0);
  }

  return result;
}

uint64_t sub_261147C74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81D98, &qword_261161080);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v12[0] = *v0;
  v9 = sub_261147C20();
  sub_26115B414();
  (*(v2 + 16))(v6, v8, v1);
  v12[0] = &type metadata for PASUITargetProtoAccountStartView;
  v12[1] = v9;
  swift_getOpaqueTypeConformance2();
  v10 = sub_26115B574();
  (*(v2 + 8))(v8, v1);
  return v10;
}

uint64_t sub_261147E24(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return sub_261131A7C(result, a2);
  }

  return result;
}

uint64_t sub_261147E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a2)
  {
    if (a4)
    {
      return sub_261131C14(a1, a2, a3, a4);
    }
  }

  return result;
}

void sub_261147E88(uint64_t (**a1)(uint64_t result, uint64_t a2)@<X8>)
{
  *a1 = sub_261147E24;
  a1[1] = 0;
  a1[2] = sub_261147E44;
  a1[3] = 0;
}

unint64_t sub_261147EB8()
{
  result = qword_27FE81DA8;
  if (!qword_27FE81DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81DA8);
  }

  return result;
}

uint64_t PASFlowStepTargetStart.buildView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81DB0, &qword_261161160);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v12[0] = v0;
  v9 = sub_26114808C();
  sub_26115B414();
  (*(v2 + 16))(v6, v8, v1);
  v12[0] = &type metadata for PASUITargetStartView;
  v12[1] = v9;
  swift_getOpaqueTypeConformance2();
  v10 = sub_26115B574();
  (*(v2 + 8))(v8, v1);
  return v10;
}

unint64_t sub_26114808C()
{
  result = qword_27FE81DB8;
  if (!qword_27FE81DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81DB8);
  }

  return result;
}

uint64_t sub_2611480E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81DB0, &qword_261161160);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v12[0] = *v0;
  v9 = sub_26114808C();
  sub_26115B414();
  (*(v2 + 16))(v6, v8, v1);
  v12[0] = &type metadata for PASUITargetStartView;
  v12[1] = v9;
  swift_getOpaqueTypeConformance2();
  v10 = sub_26115B574();
  (*(v2 + 8))(v8, v1);
  return v10;
}

uint64_t sub_261148290(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return sub_261122874(result, a2);
  }

  return result;
}

uint64_t sub_2611482B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a2)
  {
    if (a4)
    {
      return sub_261122A0C(a1, a2, a3, a4);
    }
  }

  return result;
}

void sub_2611482F4(uint64_t a1@<X8>)
{
  *a1 = sub_261148290;
  *(a1 + 8) = 0;
  *(a1 + 16) = sub_2611482B0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v1 = MEMORY[0x277D84F90];
  *(a1 + 56) = 0;
  *(a1 + 64) = v1;
}

uint64_t PASFlowStepRepairFamily.buildView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81DC0, &unk_261161240);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B50, &unk_26115E4D0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_26115A2E4();
  v16 = v0;
  v17 = v12;
  v13 = sub_2611484F4();
  sub_26115B414();

  (*(v2 + 16))(v6, v8, v1);
  v16 = &type metadata for PASUIRepairFamilyView;
  v17 = v13;
  swift_getOpaqueTypeConformance2();
  v14 = sub_26115B574();
  (*(v2 + 8))(v8, v1);
  return v14;
}

unint64_t sub_2611484F4()
{
  result = qword_27FE81DC8;
  if (!qword_27FE81DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81DC8);
  }

  return result;
}

uint64_t sub_261148548()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81DC0, &unk_261161240);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *v0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B50, &unk_26115E4D0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_26115A2E4();
  v17 = v9;
  v18 = v13;
  v14 = sub_2611484F4();
  sub_26115B414();

  (*(v2 + 16))(v6, v8, v1);
  v17 = &type metadata for PASUIRepairFamilyView;
  v18 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = sub_26115B574();
  (*(v2 + 8))(v8, v1);
  return v15;
}

double sub_26114872C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80C48, &unk_261160100) + 36));
  v8 = *(sub_26115AF04() + 20);
  swift_retain_n();

  sub_26115B7B4();
  *v7 = &unk_261161330;
  v7[1] = v6;
  *a3 = sub_26110C934;
  *(a3 + 8) = a1;
  *(a3 + 16) = 0;
  *(a3 + 24) = sub_26110C93C;
  *(a3 + 32) = 0;
  *(a3 + 40) = sub_26110C970;
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 1;
  *(a3 + 88) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_26114883C(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_26115B7A4();
  v2[3] = sub_26115B794();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_26110E430;

  return sub_2611488F8(a1, a2);
}

uint64_t sub_2611488F8(uint64_t a1, uint64_t a2)
{
  v2[53] = a1;
  v2[54] = a2;
  v3 = sub_26115AD64();
  v2[55] = v3;
  v4 = *(v3 - 8);
  v2[56] = v4;
  v5 = *(v4 + 64) + 15;
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  sub_26115B7A4();
  v2[61] = sub_26115B794();
  v7 = sub_26115B774();
  v2[62] = v7;
  v2[63] = v6;

  return MEMORY[0x2822009F8](sub_261148A10, v7, v6);
}

uint64_t sub_261148A10()
{
  v59 = v0;
  v1 = v0[60];
  sub_26115AD44();
  v2 = sub_26115AD54();
  v3 = sub_26115B834();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261107000, v2, v3, "PASUIRepairFamilyView repairFamilyForServicesSetup", v4, 2u);
    MEMORY[0x2666FA930](v4, -1, -1);
  }

  v5 = v0[60];
  v6 = v0[55];
  v7 = v0[56];
  v8 = v0[53];

  v9 = *(v7 + 8);
  v9(v5, v6);
  v10 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  v0[64] = v10;
  v11 = sub_26115A834();
  v0[65] = v11;
  if (v11)
  {
    v12 = v11;
    v13 = v0[53];
    v14 = sub_26115A844();
    if (v15)
    {
      v16 = v14;
      v17 = v15;
      v18 = v0[54];
      v55 = v0[53];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E18, &qword_26115D9E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_261161230;
      *(inited + 32) = 0x64497265626D656DLL;
      *(inited + 40) = 0xE800000000000000;
      v20 = sub_26114993C();
      *(inited + 48) = v12;
      *(inited + 72) = v20;
      *(inited + 80) = 0x44495344746C61;
      v21 = MEMORY[0x277D837D0];
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = v16;
      *(inited + 104) = v17;
      *(inited + 120) = v21;
      *(inited + 128) = 0x6574736575716572;
      *(inited + 136) = 0xE900000000000072;
      v22 = v12;
      v23 = sub_26115A384();
      type metadata accessor for AKAppleIDAuthenticationAppProvidedContext(0);
      *(inited + 168) = v24;
      *(inited + 144) = v23;
      sub_26110EC0C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E20, &qword_26115D9E8);
      swift_arrayDestroy();
      v25 = sub_26115B604();

      [v10 setAdditionalParameters_];

      sub_26115A2D4();
      v26 = v0[49];
      v27 = v0[50];
      __swift_project_boxed_opaque_existential_1Tm(v0 + 46, v26);
      v28 = (*(v27 + 16))(v26, v27);
      v29 = [objc_allocWithZone(MEMORY[0x277D083B8]) initWithPresenter_];
      v0[66] = v29;

      __swift_destroy_boxed_opaque_existential_1(v0 + 46);
      [v29 setPresentationType_];
      v30 = swift_allocObject();
      *(v30 + 16) = v55;
      *(v30 + 24) = v18;
      v0[44] = sub_261149988;
      v0[45] = v30;
      v0[40] = MEMORY[0x277D85DD0];
      v0[41] = 1107296256;
      v0[42] = sub_26113432C;
      v0[43] = &block_descriptor_7;
      v31 = _Block_copy(v0 + 40);
      v32 = v0[45];

      [v29 setPresentationHandler_];
      _Block_release(v31);
      v0[2] = v0;
      v0[7] = v0 + 52;
      v0[3] = sub_261149138;
      v33 = swift_continuation_init();
      v0[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E10, qword_261161350);
      v0[32] = MEMORY[0x277D85DD0];
      v0[33] = 1107296256;
      v0[34] = sub_26110E56C;
      v0[35] = &block_descriptor_10;
      v0[36] = v33;
      [v29 performWithContext:v10 completion:?];

      return MEMORY[0x282200938](v0 + 2);
    }
  }

  v34 = sub_26115AAB4();
  sub_261149B08(&qword_27FE81DD0, MEMORY[0x277D43500]);
  v35 = swift_allocError();
  (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D434F8], v34);
  swift_willThrow();

  v37 = v0[57];
  sub_26115AD44();
  v38 = v35;
  v39 = sub_26115AD54();
  v40 = sub_26115B814();

  v41 = os_log_type_enabled(v39, v40);
  v42 = v0[56];
  v43 = v0[57];
  v44 = v0[55];
  if (v41)
  {
    v57 = v9;
    v45 = swift_slowAlloc();
    v56 = v43;
    v46 = swift_slowAlloc();
    v58 = v46;
    *v45 = 136446210;
    v0[51] = v35;
    v47 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB0, qword_261161680);
    v48 = sub_26115B6B4();
    v50 = sub_26111C268(v48, v49, &v58);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_261107000, v39, v40, "PASUIRepairFamilyView repairFamilyForServicesSetup failed: %{public}s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x2666FA930](v46, -1, -1);
    MEMORY[0x2666FA930](v45, -1, -1);

    v57(v56, v44);
  }

  else
  {

    v9(v43, v44);
  }

  v51 = *(MEMORY[0x277D43498] + 4);
  v52 = swift_task_alloc();
  v0[67] = v52;
  *v52 = v0;
  v52[1] = sub_2611496E8;
  v53 = v0[53];

  return MEMORY[0x2821A48F8]();
}

uint64_t sub_261149138()
{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 496);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_261149240, v2, v1);
}

uint64_t sub_261149240()
{
  v50 = v0;
  v1 = v0[59];
  v2 = v0[52];
  sub_26115AD44();
  v3 = v2;
  v4 = sub_26115AD54();
  v5 = sub_26115B834();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 141558274;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_261107000, v4, v5, "PASUIRepairFamilyView repairFamilyForServicesSetup got response %{mask.hash}@", v6, 0x16u);
    sub_26112F444(v7);
    MEMORY[0x2666FA930](v7, -1, -1);
    MEMORY[0x2666FA930](v6, -1, -1);
  }

  v9 = v0[59];
  v10 = v0[55];
  v11 = v0[56];

  v12 = *(v11 + 8);
  v12(v9, v10);
  if ([v3 loadSuccess])
  {
    v13 = v0[66];
    v14 = v0[65];
    v15 = v0[64];
  }

  else
  {
    v16 = v0[58];
    sub_26115AD44();
    v17 = sub_26115AD54();
    v18 = sub_26115B814();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_261107000, v17, v18, "PASUIRepairFamilyView repairFamilyForServicesSetup response: load fail", v19, 2u);
      MEMORY[0x2666FA930](v19, -1, -1);
    }

    v20 = v0[66];
    v21 = v0[65];
    v22 = v0[64];
    v23 = v0[58];
    v24 = v0[55];

    v12(v23, v24);
    v25 = sub_26115AAB4();
    sub_261149B08(&qword_27FE81DD0, MEMORY[0x277D43500]);
    v26 = swift_allocError();
    v28 = v27;
    *v27 = [v3 error];
    (*(*(v25 - 8) + 104))(v28, *MEMORY[0x277D434F0], v25);
    swift_willThrow();

    v29 = v0[57];
    sub_26115AD44();
    v30 = v26;
    v31 = sub_26115AD54();
    v32 = sub_26115B814();

    v33 = os_log_type_enabled(v31, v32);
    v34 = v0[56];
    v35 = v0[57];
    v36 = v0[55];
    if (v33)
    {
      v48 = v0[57];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v49 = v38;
      *v37 = 136446210;
      v0[51] = v26;
      v39 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB0, qword_261161680);
      v40 = sub_26115B6B4();
      v47 = v12;
      v42 = sub_26111C268(v40, v41, &v49);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_261107000, v31, v32, "PASUIRepairFamilyView repairFamilyForServicesSetup failed: %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x2666FA930](v38, -1, -1);
      MEMORY[0x2666FA930](v37, -1, -1);

      v47(v48, v36);
    }

    else
    {

      v12(v35, v36);
    }
  }

  v43 = *(MEMORY[0x277D43498] + 4);
  v44 = swift_task_alloc();
  v0[67] = v44;
  *v44 = v0;
  v44[1] = sub_2611496E8;
  v45 = v0[53];

  return MEMORY[0x2821A48F8]();
}

uint64_t sub_2611496E8()
{
  v1 = *v0;
  v2 = *(*v0 + 536);
  v6 = *v0;

  v3 = *(v1 + 504);
  v4 = *(v1 + 496);

  return MEMORY[0x2822009F8](sub_261149808, v4, v3);
}

uint64_t sub_261149808()
{
  v2 = v0[60];
  v1 = v0[61];
  v4 = v0[58];
  v3 = v0[59];
  v5 = v0[57];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2611498A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26110CAC4;

  return sub_26114883C(v2, v3);
}

unint64_t sub_26114993C()
{
  result = qword_27FE81DD8;
  if (!qword_27FE81DD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE81DD8);
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  return sub_2611105C8(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_9(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

uint64_t sub_2611499D0()
{
  v0 = sub_26115AD64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v5 = sub_26115AD54();
  v6 = sub_26115B834();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_261107000, v5, v6, "PASUIRepairFamilyView familyCirclePresentationHandler", v7, 2u);
    MEMORY[0x2666FA930](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_261149B08(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_261149B54(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_261149BC0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_26115A1D4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_261149D60()
{
  v1 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController____lazy_storage___exHostViewController;
  v2 = *(v0 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController____lazy_storage___exHostViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController____lazy_storage___exHostViewController);
  }

  else
  {
    v4 = sub_261149DC4(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_261149DC4(uint64_t a1)
{
  v2 = sub_26115A294();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_26115A2C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81EC0, &qword_261161478);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x277CC5E70]) init];
  (*(v5 + 16))(v8, a1 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController_identity, v4);
  v14 = *(a1 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController_sceneID);
  v15 = *(a1 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController_sceneID + 8);

  sub_26115A2A4();
  sub_26115B8A4();
  v16 = sub_26115B8B4();
  (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
  sub_26115B8C4();
  [v13 setDelegate_];
  return v13;
}

void *sub_261149FE4()
{
  v1 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController____lazy_storage___sceneProxy;
  if (*(v0 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController____lazy_storage___sceneProxy))
  {
    v2 = *(v0 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController____lazy_storage___sceneProxy);
  }

  else
  {
    type metadata accessor for WeakHostWrapper();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    type metadata accessor for PASUIExtensionProxy();
    v2 = swift_allocObject();
    v2[2] = 0;
    v2[5] = 0;
    swift_unknownObjectWeakInit();
    v2[3] = v3;
    v2[5] = &off_28739AA48;
    swift_unknownObjectWeakAssign();
    v4 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_26114A0B8(void *a1, void *a2, int a3)
{
  v4 = v3;
  v8 = sub_26115AD64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  MEMORY[0x28223BE20](v12);
  v17 = &v48 - v16;
  v18 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController_finished;
  if (*(v4 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController_finished) == 1)
  {
    sub_26115AD44();
    v19 = a3 & 1;
    sub_26114C004(a1, a2, a3 & 1);
    v20 = sub_26115AD54();
    v21 = sub_26115B814();
    sub_26114C050(a1, a2, v19);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v57 = v23;
      *v22 = 141558274;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2080;
      v54 = a1;
      v55 = a2;
      v56 = v19;
      sub_26114C004(a1, a2, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81EB8, &qword_261161470);
      v24 = sub_26115B6B4();
      v26 = sub_26111C268(v24, v25, &v57);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_261107000, v20, v21, "PASUIHostViewController finish with result is discarding result %{mask.hash}s", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x2666FA930](v23, -1, -1);
      MEMORY[0x2666FA930](v22, -1, -1);
    }

    return (*(v9 + 8))(v17, v8);
  }

  else
  {
    v51 = v15;
    v53 = v9;
    sub_26115AD44();
    v52 = a3;
    v28 = a3 & 1;
    sub_26114C004(a1, a2, v28);
    v29 = sub_26115AD54();
    v30 = sub_26115B7F4();
    sub_26114C050(a1, a2, v28);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v50 = v8;
      v32 = v31;
      v49 = swift_slowAlloc();
      v57 = v49;
      *v32 = 141558274;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2080;
      v54 = a1;
      v55 = a2;
      v56 = v28;
      sub_26114C004(a1, a2, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81EB8, &qword_261161470);
      v33 = sub_26115B6B4();
      v35 = sub_26111C268(v33, v34, &v57);

      *(v32 + 14) = v35;
      _os_log_impl(&dword_261107000, v29, v30, "PASUIHostViewController finish with result: %{mask.hash}s", v32, 0x16u);
      v36 = v49;
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x2666FA930](v36, -1, -1);
      v37 = v32;
      v8 = v50;
      MEMORY[0x2666FA930](v37, -1, -1);
    }

    v38 = *(v53 + 8);
    v38(v14, v8);
    *(v4 + v18) = 1;
    if (v52)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v39 = result;
      sub_26115AD44();
      v40 = a1;
      v41 = sub_26115AD54();
      v42 = sub_26115B814();
      sub_26114C050(a1, a2, 1);
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138543362;
        v45 = a1;
        v46 = _swift_stdlib_bridgeErrorToNSError();
        *(v43 + 4) = v46;
        *v44 = v46;
        _os_log_impl(&dword_261107000, v41, v42, "ExtensionViewControllerWrapper.Coordinator hostViewController didFailWith %{public}@", v43, 0xCu);
        sub_26112F444(v44);
        MEMORY[0x2666FA930](v44, -1, -1);
        MEMORY[0x2666FA930](v43, -1, -1);
      }

      v38(v51, v8);
      v47 = *(v39 + 16);
      sub_26115AC84();
    }

    else
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      sub_26112F090(a1, a2);
    }

    return swift_unknownObjectRelease();
  }
}

id sub_26114A620()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASUIExtensionHostViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PASUIExtensionHostViewController()
{
  result = qword_27FE81E10;
  if (!qword_27FE81E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26114A75C()
{
  result = sub_26115A2C4();
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

id sub_26114A814(void *a1)
{
  v2 = v1;
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  result = [v9 isMainThread];
  if (result)
  {
    sub_26115AD44();
    v11 = a1;
    v12 = sub_26115AD54();
    v13 = sub_26115B7F4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      *(v14 + 4) = v11;
      *v15 = v11;
      v16 = v11;
      _os_log_impl(&dword_261107000, v12, v13, "PASUIExtensionHostViewController hostViewControllerDidActivate: %{public}@", v14, 0xCu);
      sub_26112F444(v15);
      MEMORY[0x2666FA930](v15, -1, -1);
      MEMORY[0x2666FA930](v14, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    result = [v9 isMainThread];
    if (result)
    {
      v17 = v2;
      v18 = sub_261149FE4();
      sub_2611310EC(v18);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_26114AAE0()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = sub_261149D60();
  v6[0] = 0;
  v1 = [v0 makeXPCConnectionWithError_];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_26115A1E4();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_26114ABA4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26115B5D4();
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_26115B5F4();
  v12 = *(v26 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v26);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26111EC34();
  v25 = sub_26115B874();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v17 = v24;
  v16[6] = v24;
  aBlock[4] = sub_26114BFF4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26113432C;
  aBlock[3] = &block_descriptor_49_0;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  v20 = a2;

  v21 = v17;

  sub_26115B5E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_261131538();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81EA0, &qword_261160190);
  sub_261131590();
  sub_26115B904();
  v22 = v25;
  MEMORY[0x2666F9F60](0, v15, v11, v18);
  _Block_release(v18);

  (*(v27 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v26);
}

uint64_t sub_26114AE58(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v33 = sub_26115AD64();
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v33);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v13 = a1;
  v14 = a2;
  v15 = sub_26115AD54();
  v16 = sub_26115B7F4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v9;
    v18 = v17;
    v19 = swift_slowAlloc();
    v31 = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v32 = a5;
    v22 = v21;
    v35 = v21;
    *v18 = 141558530;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2080;
    v23 = sub_26115AA24();
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xE000000000000000;
    }

    v26 = sub_26111C268(v23, v25, &v35);

    *(v18 + 14) = v26;
    *(v18 + 22) = 2114;
    *(v18 + 24) = v14;
    *v20 = v14;
    v27 = v14;
    _os_log_impl(&dword_261107000, v15, v16, "PASUIExtensionHostViewController extensionDidFinish with account: %{mask.hash}s, context: %{public}@", v18, 0x20u);
    sub_26112F444(v20);
    v28 = v20;
    a3 = v31;
    MEMORY[0x2666FA930](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x2666FA930](v22, -1, -1);
    MEMORY[0x2666FA930](v18, -1, -1);

    (*(v30 + 8))(v12, v33);
  }

  else
  {

    (*(v9 + 8))(v12, v33);
  }

  a3(0);
  return sub_26114A0B8(v13, v14, 0);
}

uint64_t sub_26114B1A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_26115B5D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26115B5F4();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26111EC34();
  v14 = sub_26115B874();
  v15 = swift_allocObject();
  v15[2] = v2;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_26114BF98;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26113432C;
  aBlock[3] = &block_descriptor_39;
  v16 = _Block_copy(aBlock);
  v17 = v2;

  sub_26115B5E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_261131538();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81EA0, &qword_261160190);
  sub_261131590();
  sub_26115B904();
  MEMORY[0x2666F9F60](0, v13, v9, v16);
  _Block_release(v16);

  (*(v6 + 8))(v9, v5);
  return (*(v10 + 8))(v13, v20);
}

uint64_t sub_26114B438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = sub_26115AD64();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v8 = sub_26115AD54();
  v9 = sub_26115B7F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_261107000, v8, v9, "PASUIExtensionHostViewController promptForFlowCancel", v10, 2u);
    MEMORY[0x2666FA930](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_26112F2FC();
    swift_unknownObjectRelease();
  }

  return a2(0);
}

uint64_t sub_26114B684()
{
  sub_26115BA94();
  MEMORY[0x2666FA180](0);
  return sub_26115BAB4();
}

uint64_t sub_26114B6F0()
{
  sub_26115BA94();
  MEMORY[0x2666FA180](0);
  return sub_26115BAB4();
}

uint64_t sub_26114B82C()
{
  sub_26111D830(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26114B888(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_26114B8C0(void *a1)
{
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  if ([objc_opt_self() isMainThread])
  {
    if (a1)
    {
      v10 = a1;
      sub_26115AD44();
      v11 = a1;
      v12 = sub_26115AD54();
      v13 = sub_26115B814();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138543362;
        v16 = a1;
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v17;
        *v15 = v17;
        _os_log_impl(&dword_261107000, v12, v13, "PASUIExtensionHostViewController hostViewControllerWillDeactivate error: %{public}@", v14, 0xCu);
        sub_26112F444(v15);
        MEMORY[0x2666FA930](v15, -1, -1);
        MEMORY[0x2666FA930](v14, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
      v18 = a1;
      sub_26114A0B8(a1, 0, 1);
    }

    else
    {
      sub_26115AD44();
      v19 = sub_26115AD54();
      v20 = sub_26115B7F4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_261107000, v19, v20, "PASUIExtensionHostViewController hostViewControllerWillDeactivate", v21, 2u);
        MEMORY[0x2666FA930](v21, -1, -1);
      }

      (*(v3 + 8))(v7, v2);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26114BB70(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v14[4] = sub_2611262F4;
    v14[5] = v7;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_261149B54;
    v14[3] = &block_descriptor_29;
    v10 = _Block_copy(v14);
    _Block_copy(a4);

    [v9 extensionDidFinishWith:a1 context:a2 completion:v10];
    _Block_release(v10);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_26114BEEC();
    v12 = swift_allocError();
    _Block_copy(a4);
    v13 = sub_26115A1D4();
    (a4)[2](a4, v13);
  }
}

uint64_t sub_26114BD20(uint64_t a1, void (**a2)(void, void))
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v10[4] = sub_261126120;
    v10[5] = v3;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_261149B54;
    v10[3] = &block_descriptor_8;
    v6 = _Block_copy(v10);
    _Block_copy(a2);

    [v5 promptForFlowCancelWithCompletion_];
    _Block_release(v6);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_26114BEEC();
    v8 = swift_allocError();
    _Block_copy(a2);
    v9 = sub_26115A1D4();
    (a2)[2](a2, v9);
  }
}

uint64_t sub_26114BEB4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_26114BEEC()
{
  result = qword_27FE81E88;
  if (!qword_27FE81E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81E88);
  }

  return result;
}

uint64_t sub_26114BF58()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26114BFA4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id sub_26114C004(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    v5 = a1;
    a1 = a2;
  }

  return a1;
}

void sub_26114C050(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    a1 = a2;
  }
}

unint64_t sub_26114C0B0()
{
  result = qword_27FE81EC8;
  if (!qword_27FE81EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81EC8);
  }

  return result;
}

id sub_26114C154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_26115AD64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277CFDAE8]) initWithCDPContext_];
  v14 = sub_26115B674();
  [v13 setFeatureName_];

  if (*(v5 + 24))
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  [v13 setDeviceToDeviceEncryptionUpgradeUIStyle_];
  [v13 setDeviceToDeviceEncryptionUpgradeType_];
  sub_26115AD44();

  v16 = sub_26115AD54();
  v17 = sub_26115B804();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v38 = v9;
    v19 = v18;
    v36 = swift_slowAlloc();
    v40 = v36;
    *v19 = 136446210;
    v20 = *(v5 + 16);

    sub_26115A2D4();

    v37 = v8;
    v39 = a4;
    v21 = v42;
    v22 = v43;
    __swift_project_boxed_opaque_existential_1Tm(v41, v42);
    v23 = (*(v22 + 16))(v21, v22);
    v24 = [v23 description];
    v25 = sub_26115B6A4();
    v27 = v26;

    __swift_destroy_boxed_opaque_existential_1(v41);
    v28 = v25;
    a4 = v39;
    v29 = sub_26111C268(v28, v27, &v40);

    *(v19 + 4) = v29;
    _os_log_impl(&dword_261107000, v16, v17, "Passing view controller from PASUIManateeRepairHelperProvider: %{public}s", v19, 0xCu);
    v30 = v36;
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x2666FA930](v30, -1, -1);
    MEMORY[0x2666FA930](v19, -1, -1);

    (*(v38 + 8))(v12, v37);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v31 = *(v5 + 16);

  sub_26115A2D4();

  v32 = v42;
  v33 = v43;
  __swift_project_boxed_opaque_existential_1Tm(v41, v42);
  v34 = (*(v33 + 16))(v32, v33);
  [v13 setPresentingViewController_];

  __swift_destroy_boxed_opaque_existential_1(v41);
  [v13 setSecurityUpgradeContext_];
  return v13;
}

void PASUIManateeRepairHelperProvider.helper(withFeatureName:cdpContext:securityUpgradeContext:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = sub_26114C154(a1, a2, a3, a4);
  v7 = [objc_allocWithZone(MEMORY[0x277CFDAF0]) initWithContext_];
  a5[3] = sub_26114C540();
  a5[4] = sub_26114C58C();

  *a5 = v7;
}

unint64_t sub_26114C540()
{
  result = qword_27FE81ED0;
  if (!qword_27FE81ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE81ED0);
  }

  return result;
}

unint64_t sub_26114C58C()
{
  result = qword_27FE81ED8;
  if (!qword_27FE81ED8)
  {
    sub_26114C540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81ED8);
  }

  return result;
}

uint64_t PASUIManateeRepairHelperProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PASUIManateeRepairHelperProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

void sub_26114C63C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *v5;
  v8 = sub_26114C154(a1, a2, a3, a4);
  v9 = [objc_allocWithZone(MEMORY[0x277CFDAF0]) initWithContext_];
  a5[3] = sub_26114C540();
  a5[4] = sub_26114C58C();

  *a5 = v9;
}

uint64_t sub_26114C6D0()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_26114C7EC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81EE0, &qword_261161678);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26114C944;
  v0[13] = &block_descriptor_9;
  v0[14] = v2;
  [v1 performDeviceToDeviceEncryptionStateRepairWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26114C7EC()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);
    v4 = 0;
  }

  else
  {
    v4 = *(*v0 + 152);
    v3 = *(v1 + 8);
    v5 = *v0;
  }

  return v3(v4);
}

uint64_t sub_26114C944(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB0, qword_261161680);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

void sub_26114CA50(void *a1)
{
  v2 = v1;
  v39 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81058, &unk_26115E2F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81060, &unk_261161BA0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81068, &unk_26115E300);
  v42 = *(v40 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81070, &unk_261161BB0);
  v14 = *(v13 - 8);
  v43 = v13;
  v44 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81EE8, qword_261161750);
  v19 = *(v18 - 8);
  v45 = v18;
  v46 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v38 - v21;
  sub_26115B6F4();
  v23 = sub_26115B674();

  [a1 setTitle_];

  v24 = *(v1 + 16);

  sub_26115A2D4();

  swift_getObjectType();
  sub_26115AA14();
  swift_unknownObjectRelease();
  v25 = *(v2 + 16);

  sub_26115A2D4();

  swift_getObjectType();
  sub_26115AA04();
  swift_unknownObjectRelease();
  sub_26111EDDC(&qword_27FE81078, &qword_27FE81060, &unk_261161BA0);
  sub_26115AD74();
  sub_26112B474(0, &qword_27FE81E90, 0x277D85C78);
  v26 = sub_26115B874();
  v47 = v26;
  v27 = sub_26115B854();
  v28 = v41;
  (*(*(v27 - 8) + 56))(v41, 1, 1, v27);
  sub_26111EDDC(&qword_27FE81080, &qword_27FE81068, &unk_26115E300);
  sub_26111EC80();
  v29 = v40;
  sub_26115ADC4();
  sub_26110CEE0(v28, &qword_27FE81058, &unk_26115E2F0);

  (*(v42 + 8))(v12, v29);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E90, &qword_26115DBC8);
  sub_26111EDDC(&qword_27FE81090, &qword_27FE81070, &unk_261161BB0);
  v30 = v43;
  sub_26115ADB4();

  (*(v44 + 8))(v17, v30);
  swift_getKeyPath();
  v31 = v39;
  v47 = v39;
  sub_26111EDDC(&qword_27FE81EF0, &qword_27FE81EE8, qword_261161750);
  v32 = v45;
  sub_26115ADE4();

  (*(v46 + 8))(v22, v32);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  sub_26115B6F4();
  v33 = sub_26115B674();

  sub_26115B6F4();
  v34 = sub_26115B674();

  sub_26115B6F4();
  v35 = sub_26115B674();

  sub_26115B6F4();
  v36 = sub_26115B674();

  v37 = [v31 dismissalConfirmationActionWithTitle:v33 message:v34 confirmButtonTitle:v35 cancelButtonTitle:v36];

  [v31 setDismissButtonAction_];
}

uint64_t sub_26114D168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  if (a4 && a2)
  {
    sub_26115B954();

    MEMORY[0x2666F9DF0](a3, a4);
    MEMORY[0x2666F9DF0](95, 0xE100000000000000);
    MEMORY[0x2666F9DF0](a1, a2);
    v9 = sub_26115B6F4();

    return v9;
  }

  return v5;
}

uint64_t sub_26114D24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_26114E3BC(a1, &v18);
  v25 = v19;
  v24 = v18;
  v26 = v20;
  if (*(&v19 + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
    sub_26115A434();
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v6 = sub_26115A694();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(&v24);
    sub_26110CEE0(&v21, &qword_27FE81098, &qword_26115E5F0);
  }

  else
  {
    sub_26110CEE0(&v21, &qword_27FE81098, &qword_26115E5F0);
    sub_26110CEE0(&v24, &qword_27FE81098, &qword_26115E5F0);
    v6 = 0;
    v8 = 0;
  }

  sub_26114E3BC(a1, &v18);
  v25 = v22;
  v24 = v21;
  v26 = v23;
  if (*(&v22 + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
    sub_26115A434();
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v9 = sub_26115A694();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(&v24);
    sub_26110CEE0(&v18, &qword_27FE81098, &qword_26115E5F0);
  }

  else
  {
    sub_26110CEE0(&v18, &qword_27FE81098, &qword_26115E5F0);
    sub_26110CEE0(&v24, &qword_27FE81098, &qword_26115E5F0);
    v9 = 0;
    v11 = 0;
  }

  v12 = (*(*a2 + 152))(v6, v8, v9, v11);
  v14 = v13;

  *a3 = v12;
  a3[1] = v14;
  return result;
}

void sub_26114D4A8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 subtitle];
  if (v3)
  {
    v4 = v3;
    v5 = sub_26115B6A4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_26114D510(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_26115B674();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setSubtitle_];
}

uint64_t sub_26114D5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = sub_26115B7D4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_26115B7A4();

  v10 = sub_26115B794();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a2;
  v11[5] = a3;
  sub_261112D1C(0, 0, v8, &unk_261161748, v11);
}

void sub_26114D6D0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_26114D738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  v12 = sub_26115B7D4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a3;

  sub_261112D1C(0, 0, v11, a5, v13);
}

uint64_t sub_26114D844(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_26110CAC4;

  return v8();
}

uint64_t sub_26114D92C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_26114D9D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26115B6F4();
  sub_26115B6F4();
  v8 = sub_26115B674();

  v9 = sub_26115B674();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  sub_26115B6F4();
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;

  v12 = sub_26115B674();

  v26 = sub_26114DD60;
  v27 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_26114D6D0;
  v25 = &block_descriptor_10;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:1 handler:v13];
  _Block_release(v13);

  [v10 addAction_];
  sub_26115B6F4();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;

  v17 = sub_26115B674();

  v26 = sub_26114DDB0;
  v27 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_26114D6D0;
  v25 = &block_descriptor_16;
  v18 = _Block_copy(&aBlock);

  v19 = [v14 actionWithTitle:v17 style:2 handler:v18];
  _Block_release(v18);

  [v10 addAction_];
  [a1 presentViewController:v10 animated:1 completion:0];
}

uint64_t sub_26114DD28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26114DDEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26110CAC4;

  return sub_26114D844(a1, v4, v5, v7);
}

uint64_t sub_26114DEAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26110DB28;

  return sub_26113F504(a1, v4, v5, v7);
}

void sub_26114DF6C(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setContentMode_];
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = [objc_opt_self() systemBlueColor];
  }

  v7 = a3;
  [v5 setTintColor_];

  [objc_msgSend(a1 mainView)];
  swift_unknownObjectRelease();
  v8 = [objc_msgSend(a1 mainView)];
  swift_unknownObjectRelease();
  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E0, &qword_261161EF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26115E240;
  v11 = [v5 topAnchor];
  v12 = [v8 topAnchor];
  v13 = [v11 constraintGreaterThanOrEqualToAnchor_];

  *(v10 + 32) = v13;
  v14 = [v5 bottomAnchor];
  v15 = [v8 bottomAnchor];
  v16 = [v14 constraintLessThanOrEqualToAnchor_];

  *(v10 + 40) = v16;
  v17 = [v5 centerXAnchor];
  v18 = [v8 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v10 + 48) = v19;
  v20 = [v5 centerYAnchor];

  v21 = [v8 centerYAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v10 + 56) = v22;
  sub_26112B474(0, &qword_27FE81050, 0x277CCAAD0);
  v23 = sub_26115B744();

  [v9 activateConstraints_];
}

uint64_t sub_26114E2E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26110DB28;

  return sub_2611202E4(a1, v4, v5, v7);
}

uint64_t sub_26114E3BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81EF8, qword_261161790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_26114E440@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for PASUIFamilyPickerProxCardAdapter();
  v5 = swift_allocObject();

  result = sub_26114E544(v6);
  *(a1 + 24) = v4;
  *(a1 + 32) = &off_28739AD30;
  *a1 = v5;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_26114E4A8()
{
  v1 = *v0;
  sub_261150F70(&qword_27FE81F30, MEMORY[0x277D43480]);

  sub_26115AF34();
  sub_261150E00();
  return sub_26115B574();
}

void *sub_26114E544(uint64_t a1)
{
  v2 = v1;
  v1[5] = 0;
  v1[6] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F80, &unk_26115DD50);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v1[7] = sub_26115A2E4();
  v1[4] = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v1[2] = sub_26115A2E4();
  if (MEMORY[0x277D84F90] >> 62 && sub_26115B9A4())
  {
    v10 = sub_261120870(MEMORY[0x277D84F90]);
  }

  else
  {
    v10 = MEMORY[0x277D84FA0];
  }

  v2[3] = v10;
  return v2;
}

void sub_26114E624(int a1, id a2)
{
  if (*(v2 + 40))
  {
    [a2 removeAction_];
  }

  sub_26115B6F4();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_261161880;
  *(v5 + 24) = v4;
  swift_retain_n();
  v6 = sub_26115B674();

  v14[4] = sub_261151020;
  v14[5] = v5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_26114D6D0;
  v14[3] = &block_descriptor_60;
  v7 = _Block_copy(v14);
  v8 = [objc_opt_self() actionWithTitle:v6 style:0 handler:v7];

  _Block_release(v7);

  v9 = [a2 addAction_];

  v10 = *(v2 + 40);
  *(v2 + 40) = v9;
  v11 = v9;

  v12 = *(v2 + 32);
  v13 = sub_26115A794();
  if (v13)
  {
  }

  [v11 setEnabled_];
}

uint64_t sub_26114E84C(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_26115B7A4();
  *(v1 + 48) = sub_26115B794();
  v3 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26114E8E4, v3, v2);
}

uint64_t sub_26114E8E4()
{
  v2 = v0[5];
  v1 = v0[6];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 32);

    sub_26115A7D4();
  }

  v5 = v0[1];

  return v5();
}

void sub_26114E988(id a1)
{
  if (*(v1 + 48))
  {
    [a1 removeAction_];
  }

  sub_26115B6F4();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_261161870;
  *(v4 + 24) = v3;
  swift_retain_n();
  v5 = sub_26115B674();

  v12[4] = sub_26112D960;
  v12[5] = v4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_26114D6D0;
  v12[3] = &block_descriptor_50;
  v6 = _Block_copy(v12);
  v7 = [objc_opt_self() actionWithTitle:v5 style:1 handler:v6];

  _Block_release(v6);

  v8 = [a1 addAction_];

  v9 = *(v1 + 48);
  *(v1 + 48) = v8;
  v10 = v8;

  v11 = *(v1 + 32);
  [v10 setEnabled_];
}

uint64_t sub_26114EB7C(uint64_t a1)
{
  v1[5] = a1;
  sub_26115B7A4();
  v1[6] = sub_26115B794();
  v3 = sub_26115B774();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_26114EC14, v3, v2);
}

uint64_t sub_26114EC14()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[9] = *(Strong + 32);

    v3 = *(MEMORY[0x277D43478] + 4);
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = sub_26114ED1C;

    return MEMORY[0x2821A48C8]();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_26114ED1C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26114EE60, v5, v4);
}

uint64_t sub_26114EE60()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

void sub_26114EEC0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81298, &unk_26115E9C0);
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = *(v77 + 64);
  MEMORY[0x28223BE20](v4);
  v76 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81620, "Fp");
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = *(v74 + 64);
  MEMORY[0x28223BE20](v7);
  v73 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81058, &unk_26115E2F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v71 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81F00, &unk_261161830);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81060, &unk_261161BA0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v66 = &v59 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81F08, &qword_261161840);
  v68 = *(v18 - 8);
  v69 = v18;
  v19 = *(v68 + 64);
  MEMORY[0x28223BE20](v18);
  v67 = &v59 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81F10, &qword_261161848);
  v72 = *(v21 - 8);
  v22 = *(v72 + 64);
  MEMORY[0x28223BE20](v21);
  v70 = &v59 - v23;
  v65 = sub_26115AD64();
  v63 = *(v65 - 8);
  v24 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  swift_unknownObjectRetain();
  v27 = sub_26115AD54();
  v28 = sub_26115B804();
  v29 = a1;
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v27, v28))
  {
    v30 = swift_slowAlloc();
    v61 = v15;
    v31 = v30;
    v32 = swift_slowAlloc();
    v62 = v21;
    v60 = v32;
    v79 = a1;
    aBlock[0] = v32;
    *v31 = 136446210;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81660, &qword_26115F658);
    v33 = sub_26115B6B4();
    v35 = sub_26111C268(v33, v34, aBlock);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_261107000, v27, v28, "PASUIFamilyPickerProxCardAdapter attach to presenter: %{public}s", v31, 0xCu);
    v36 = v60;
    __swift_destroy_boxed_opaque_existential_1(v60);
    v21 = v62;
    MEMORY[0x2666FA930](v36, -1, -1);
    MEMORY[0x2666FA930](v31, -1, -1);
  }

  (*(v63 + 8))(v26, v65);
  v64 = v29;
  sub_26114CA50(v29);
  v37 = *(v2 + 16);

  sub_26115A2D4();

  swift_getObjectType();
  sub_26115AA14();
  swift_unknownObjectRelease();
  v65 = *(v2 + 32);
  sub_26115A784();
  sub_26111EDDC(&qword_27FE81078, &qword_27FE81060, &unk_261161BA0);
  sub_26111EDDC(&qword_27FE81F18, &qword_27FE81F00, &unk_261161830);
  v38 = v67;
  sub_26115AD74();
  sub_26111EC34();
  v39 = sub_26115B874();
  aBlock[0] = v39;
  v40 = sub_26115B854();
  v41 = v71;
  (*(*(v40 - 8) + 56))(v71, 1, 1, v40);
  sub_26111EDDC(&qword_27FE81F20, &qword_27FE81F08, &qword_261161840);
  sub_261150F70(&qword_27FE81088, sub_26111EC34);
  v42 = v69;
  v43 = v70;
  sub_26115ADC4();
  sub_26110CEE0(v41, &qword_27FE81058, &unk_26115E2F0);

  (*(v68 + 8))(v38, v42);
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = swift_allocObject();
  v46 = v64;
  *(v45 + 16) = v44;
  *(v45 + 24) = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_261150530;
  *(v47 + 24) = v45;
  sub_26111EDDC(&qword_27FE81F28, &qword_27FE81F10, &qword_261161848);
  swift_unknownObjectRetain();
  sub_26115ADD4();

  (*(v72 + 8))(v43, v21);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  v48 = v73;
  sub_26115A7B4();
  swift_allocObject();
  swift_weakInit();
  sub_26111EDDC(&qword_27FE81658, &qword_27FE81620, "Fp");
  v49 = v75;
  sub_26115ADD4();

  (*(v74 + 8))(v48, v49);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  v50 = v76;
  sub_26115A774();
  swift_allocObject();
  swift_weakInit();
  sub_26111EDDC(&qword_27FE812A0, &qword_27FE81298, &unk_26115E9C0);
  v51 = v78;
  sub_26115ADD4();

  (*(v77 + 8))(v50, v51);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  v52 = swift_allocObject();
  swift_weakInit();
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = swift_allocObject();
  *(v54 + 16) = v52;
  *(v54 + 24) = v53;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_2611505F4;
  *(v55 + 24) = v54;

  v56 = sub_26115B674();
  aBlock[4] = sub_261124808;
  aBlock[5] = v55;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26114D6D0;
  aBlock[3] = &block_descriptor_11;
  v57 = _Block_copy(aBlock);
  v58 = [objc_opt_self() actionWithTitle:v56 style:0 handler:v57];

  _Block_release(v57);

  [v46 setDismissButtonAction_];
}

uint64_t sub_26114FA54(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_26115AD64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_26115AD44();
    sub_26111EE24(a1, v40);
    swift_bridgeObjectRetain_n();
    v13 = sub_26115AD54();
    v14 = sub_26115B804();
    v15 = a2 >> 62;
    if (os_log_type_enabled(v13, v14))
    {
      v32 = v14;
      v33 = v8;
      v35 = v7;
      v36 = a1;
      v37 = a4;
      v16 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v16 = 136446722;
      sub_26111EE24(v40, v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81098, &qword_26115E5F0);
      v17 = sub_26115B6B4();
      v19 = v18;
      sub_26110CEE0(v40, &qword_27FE81098, &qword_26115E5F0);
      v20 = sub_26111C268(v17, v19, &v39);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2048;
      v34 = a2 >> 62;
      if (v15)
      {
        v21 = sub_26115B9A4();
      }

      else
      {
        v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v16 + 14) = v21;

      *(v16 + 22) = 2082;
      v22 = sub_26115A5B4();
      v23 = MEMORY[0x2666F9E40](a2, v22);
      v25 = sub_26111C268(v23, v24, &v39);

      *(v16 + 24) = v25;
      _os_log_impl(&dword_261107000, v13, v32, "PASUIFamilyPickerProxCardAdapter publishers updating.\ndevice: %{public}s\n%ld member(s): %{public}s", v16, 0x20u);
      v26 = v31;
      swift_arrayDestroy();
      MEMORY[0x2666FA930](v26, -1, -1);
      MEMORY[0x2666FA930](v16, -1, -1);

      (*(v33 + 8))(v11, v35);
      a1 = v36;
      a4 = v37;
      v15 = v34;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      sub_26110CEE0(v40, &qword_27FE81098, &qword_26115E5F0);
      (*(v8 + 8))(v11, v7);
    }

    if (v15)
    {
      v27 = sub_26115B9A4();
    }

    else
    {
      v27 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = v27 == 1;
    sub_261150AA8(a1, v28);
    v29 = sub_26115B674();

    [a4 setTitle_];

    sub_261150018(a1, v28);
    v30 = sub_26115B674();

    [a4 setSubtitle_];

    sub_26114E624(v28, a4);
    sub_26114E988(a4);
  }

  return result;
}

void sub_26114FE38(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 40);
    v4 = v3;

    if (v3)
    {
      if (v1 && (sub_26115A564(), v5))
      {

        v6 = 1;
      }

      else
      {
        v6 = 0;
      }

      [v4 setEnabled_];
    }
  }
}

uint64_t sub_26114FEDC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = [Strong viewController];
      v4 = *(v1 + 32);
      v5 = swift_allocObject();
      *(v5 + 16) = sub_261112550;
      *(v5 + 24) = v4;
      swift_retain_n();
      sub_26114D9D4(v3, &unk_261161858, v4, &unk_26115E9E0, v5);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_261150018(uint64_t a1, char a2)
{
  v3 = v2;
  LOBYTE(v4) = a2;
  v6 = sub_26115A3F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26111EE24(a1, &v27);
  if (v29)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v27, v29);
    sub_26115A434();
    __swift_project_boxed_opaque_existential_1Tm(v26, v26[3]);
    v11 = sub_26115A694();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1(v26);
    __swift_destroy_boxed_opaque_existential_1(&v27);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_16:
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_26115B954();

    v18 = 0x8000000261164D20;
    v19 = 0xD00000000000001CLL;
LABEL_23:
    v27 = v19;
    v28 = v18;
    MEMORY[0x2666F9DF0](v11, v13);

    v24 = sub_26115B6F4();
    goto LABEL_24;
  }

LABEL_15:
  sub_26110CEE0(&v27, &qword_27FE81098, &qword_26115E5F0);
  (*(v7 + 104))(v10, *MEMORY[0x277D433B8], v6);
  v11 = sub_26115A3E4();
  v13 = v17;
  (*(v7 + 8))(v10, v6);
  if ((v4 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  v14 = *(v3 + 32);
  v15 = sub_26115A764();
  v3 = v15;
  if (!(v15 >> 62))
  {
    v4 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4 = sub_26115B9A4();
  if (!v4)
  {
LABEL_21:

LABEL_22:
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_26115B954();

    v18 = 0x8000000261164D40;
    v19 = 0xD00000000000002ALL;
    goto LABEL_23;
  }

LABEL_5:
  v6 = 0;
  v7 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v7)
    {
      v10 = MEMORY[0x2666FA050](v6, v3);
      v16 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_20;
      }

      v10 = *(v3 + 8 * v6 + 32);

      v16 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_14;
      }
    }

    if (sub_26115A554())
    {
      break;
    }

    ++v6;
    if (v16 == v4)
    {
      goto LABEL_21;
    }
  }

  v20 = sub_26115A574();
  v22 = v21;

  if (!v22)
  {
    goto LABEL_22;
  }

  v27 = 0;
  v28 = 0xE000000000000000;
  sub_26115B954();

  v27 = 0xD000000000000024;
  v28 = 0x8000000261164D70;
  MEMORY[0x2666F9DF0](v11, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81B30, &qword_261160B70);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26115D860;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_261121EE0();
  *(v23 + 32) = v20;
  *(v23 + 40) = v22;
  v24 = sub_26115B6D4();

LABEL_24:

  return v24;
}

uint64_t sub_2611503FC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);
}

uint64_t sub_26115043C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_2611504E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261150538()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261150570(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, *(a1 + 40));
}

uint64_t sub_2611505A4()
{
  MEMORY[0x2666FA9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2611505F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_26114FEDC();
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_261150614@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26115A764();
  v7 = sub_26115A764();
  if (v7 >> 62)
  {
    v8 = sub_26115B9A4();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v8 > 1;
  sub_26115A7E4();
  sub_261150F70(&qword_27FE81F30, MEMORY[0x277D43480]);
  sub_26115AF44();
  swift_getKeyPath();
  sub_26115AF54();

  type metadata accessor for CGSize(0);
  sub_26115B514();
  sub_26115B514();

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81688, &qword_26115F780) + 36));
  v12 = *(sub_26115AF04() + 20);

  sub_26115B7B4();
  *v11 = &unk_261161958;
  v11[1] = v10;
  *a3 = v6;
  *(a3 + 8) = v9;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  *(a3 + 32) = v16;
  result = v17;
  *(a3 + 40) = v17;
  *(a3 + 56) = v18;
  return result;
}

uint64_t sub_26115081C(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  sub_26115B7A4();
  v2[8] = sub_26115B794();
  v4 = sub_26115B774();
  v2[9] = v4;
  v2[10] = v3;

  return MEMORY[0x2822009F8](sub_2611508B4, v4, v3);
}

uint64_t sub_2611508B4()
{
  v1 = type metadata accessor for PASUIMonogramMaker();
  v2 = swift_allocObject();
  v0[5] = v1;
  v0[6] = sub_261150F70(&qword_27FE812A8, type metadata accessor for PASUIMonogramMaker);
  v0[2] = v2;
  v3 = *(MEMORY[0x277D43468] + 4);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_26112335C;
  v5 = v0[7];

  return MEMORY[0x2821A4888](v0 + 2);
}

double sub_2611509B4@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_26115B074();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81F40, &qword_261161918);
  *&result = sub_261150614(v4, v3, a1 + *(v5 + 44)).n128_u64[0];
  return result;
}

uint64_t sub_261150A18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26110DB28;

  return sub_261123CEC();
}

uint64_t sub_261150AA8(uint64_t a1, char a2)
{
  v4 = sub_26115A3F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26111EE24(a1, &v17);
  if (v19)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v17, v19);
    sub_26115A434();
    __swift_project_boxed_opaque_existential_1Tm(v16, v16[3]);
    v9 = sub_26115A694();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    sub_26110CEE0(&v17, &qword_27FE81098, &qword_26115E5F0);
    (*(v5 + 104))(v8, *MEMORY[0x277D433B8], v4);
    v9 = sub_26115A3E4();
    v11 = v12;
    (*(v5 + 8))(v8, v4);
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  sub_26115B954();

  if (a2)
  {
    v13 = 0x8000000261164CF0;
    v17 = 0xD000000000000021;
  }

  else
  {
    v13 = 0x8000000261164CD0;
    v17 = 0xD000000000000019;
  }

  v18 = v13;
  MEMORY[0x2666F9DF0](v9, v11);

  v14 = sub_26115B6F4();

  return v14;
}

uint64_t sub_261150CE0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26110DB28;

  return sub_26114EB7C(v0);
}

uint64_t sub_261150D70()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26110DB28;

  return sub_26114E84C(v0);
}

unint64_t sub_261150E00()
{
  result = qword_27FE81F38;
  if (!qword_27FE81F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81F38);
  }

  return result;
}

uint64_t sub_261150E80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_26115A794();
  *a2 = result;
  return result;
}

uint64_t sub_261150EAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26115A7A4();
}

uint64_t sub_261150ED8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26110CAC4;

  return sub_26115081C(v2, v3);
}

uint64_t sub_261150F70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261151040@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  type metadata accessor for PASUIDeviceStringController();
  swift_allocObject();
  sub_2611122C8(v3);
  sub_2611122C8(v5);
  v7 = sub_26111E6AC(v3, v4, v5, v6);
  sub_26111EE94(v5);
  result = sub_26111EE94(v3);
  *a1 = v7;
  return result;
}

uint64_t sub_2611510DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261151994();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_261151140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261151994();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2611511A4()
{
  sub_261151994();
  sub_26115B1C4();
  __break(1u);
}

id sub_2611511CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  *&v4[OBJC_IVAR____TtC23ProximityAppleIDSetupUI34PASUIWelcomeProtoAccountController_activityIndicatorView] = v6;
  v7 = sub_26115B674();

  if (a4)
  {
    v8 = sub_26115B674();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for PASUIWelcomeProtoAccountController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithTitle_detailText_icon_contentLayout_, v7, v8, 0, 2);

  return v9;
}

void sub_261151384()
{
  v1 = *&v0[OBJC_IVAR____TtC23ProximityAppleIDSetupUI34PASUIWelcomeProtoAccountController_activityIndicatorView];
  [v1 removeFromSuperview];
  v2 = [v0 contentView];
  [v2 addSubview_];

  if ([v0 isContentCenterAligned])
  {
    v3 = 100;
  }

  else
  {
    v3 = 101;
  }

  [v1 setActivityIndicatorViewStyle_];
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 centerYAnchor];

    v7 = [v1 centerYAnchor];
    v8 = [v6 constraintEqualToAnchor_];

    LODWORD(v9) = 1132068864;
    [v8 setPriority_];
    v10 = [v0 isContentCenterAligned];
    v11 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E0, &qword_261161EF0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26115E240;
    v13 = [v0 contentView];
    v14 = v13;
    if (v10)
    {
      v15 = &selRef_centerXAnchor;
    }

    else
    {
      v15 = &selRef_leadingAnchor;
    }

    v16 = [v13 *v15];

    v17 = [v1 *v15];
    v18 = [v16 constraintEqualToAnchor_];

    *(v12 + 32) = v18;
    *(v12 + 40) = v8;
    v28 = v8;
    v19 = [v1 topAnchor];
    v20 = [v0 contentView];
    v21 = [v20 topAnchor];

    v22 = [v19 constraintGreaterThanOrEqualToAnchor_];
    *(v12 + 48) = v22;
    v23 = [v0 contentView];
    v24 = [v23 bottomAnchor];

    v25 = [v1 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v12 + 56) = v26;
    sub_26111DEC0();
    v27 = sub_26115B744();

    [v11 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

id sub_261151750()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASUIWelcomeProtoAccountController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2611517D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = [v5 headerView];
  v8 = sub_26115B674();

  [v7 *a5];
}

id sub_261151884()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81F60, &qword_261161B38);
  sub_26115B214();
  v1 = v8[5];
  v0 = v8[6];

  if (!v0)
  {
    v1 = 0;
    v0 = 0xE000000000000000;
  }

  sub_26115B214();
  v2 = v8[7];
  v3 = v8[8];

  v4 = objc_allocWithZone(type metadata accessor for PASUIWelcomeProtoAccountController());
  v5 = sub_2611511CC(v1, v0, v2, v3);
  sub_26115B214();
  v6 = v5;
  sub_26111DF84(v5, &off_28739B108);

  return v6;
}

unint64_t sub_261151994()
{
  result = qword_27FE81F68;
  if (!qword_27FE81F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81F68);
  }

  return result;
}

uint64_t sub_2611519E8(uint64_t a1)
{
  v2 = v1;
  *(v1 + 32) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  *(v1 + 16) = sub_26115A2E4();
  if (MEMORY[0x277D84F90] >> 62 && sub_26115B9A4())
  {
    v6 = sub_261120870(MEMORY[0x277D84F90]);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  *(v2 + 24) = v6;
  return v2;
}

void sub_261151A98(void *a1)
{
  v2 = v1;
  v37 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81058, &unk_26115E2F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81060, &unk_261161BA0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v10);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81068, &unk_26115E300);
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v36);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81070, &unk_261161BB0);
  v16 = *(v15 - 8);
  v38 = v15;
  v39 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_26114CA50(a1);
  v20 = *(v2 + 16);

  sub_26115A2D4();

  swift_getObjectType();
  sub_26115AA14();
  swift_unknownObjectRelease();
  v21 = *(v2 + 16);

  sub_26115A2D4();

  swift_getObjectType();
  sub_26115AA04();
  swift_unknownObjectRelease();
  sub_26111EDDC(&qword_27FE81078, &qword_27FE81060, &unk_261161BA0);
  sub_26115AD74();
  sub_26111EC34();
  v22 = sub_26115B874();
  aBlock[0] = v22;
  v23 = sub_26115B854();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  sub_26111EDDC(&qword_27FE81080, &qword_27FE81068, &unk_26115E300);
  sub_26111EC80();
  v24 = v36;
  sub_26115ADC4();
  sub_26110CEE0(v7, &qword_27FE81058, &unk_26115E2F0);

  (*(v11 + 8))(v14, v24);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v27 = v37;
  *(v26 + 16) = v25;
  *(v26 + 24) = v27;
  sub_26111EDDC(&qword_27FE81090, &qword_27FE81070, &unk_261161BB0);
  swift_unknownObjectRetain();
  v28 = v38;
  sub_26115ADD4();

  (*(v39 + 8))(v19, v28);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_261152A10;
  *(v32 + 24) = v31;

  v33 = sub_26115B674();
  aBlock[4] = sub_261124808;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26114D6D0;
  aBlock[3] = &block_descriptor_12;
  v34 = _Block_copy(aBlock);
  v35 = [objc_opt_self() actionWithTitle:v33 style:0 handler:v34];

  _Block_release(v34);

  [v27 setDismissButtonAction_];
}

void sub_2611520FC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_26114E3BC(a1, &v18);
    v25 = v19;
    v24 = v18;
    v26 = v20;
    if (*(&v19 + 1))
    {
      __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
      sub_26115A434();
      __swift_project_boxed_opaque_existential_1Tm(v16, v17);
      v5 = sub_26115A694();
      v7 = v6;
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(&v24);
      sub_26110CEE0(&v21, &qword_27FE81098, &qword_26115E5F0);
    }

    else
    {
      sub_26110CEE0(&v21, &qword_27FE81098, &qword_26115E5F0);
      sub_26110CEE0(&v24, &qword_27FE81098, &qword_26115E5F0);
      v5 = 0;
      v7 = 0;
    }

    sub_26114E3BC(a1, &v18);
    v25 = v22;
    v24 = v21;
    v26 = v23;
    if (*(&v22 + 1))
    {
      __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
      sub_26115A434();
      __swift_project_boxed_opaque_existential_1Tm(v16, v17);
      sub_26115A694();
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(&v24);
      sub_26110CEE0(&v18, &qword_27FE81098, &qword_26115E5F0);
    }

    else
    {
      sub_26110CEE0(&v18, &qword_27FE81098, &qword_26115E5F0);
      sub_26110CEE0(&v24, &qword_27FE81098, &qword_26115E5F0);
    }

    sub_261152AF8(v5, v7);

    v8 = sub_26115B674();

    [a3 setTitle_];

    sub_26114E3BC(a1, &v18);
    v25 = v19;
    v24 = v18;
    v26 = v20;
    if (*(&v19 + 1))
    {
      __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
      sub_26115A434();
      __swift_project_boxed_opaque_existential_1Tm(v16, v17);
      v9 = sub_26115A694();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(&v24);
      sub_26110CEE0(&v21, &qword_27FE81098, &qword_26115E5F0);
    }

    else
    {
      sub_26110CEE0(&v21, &qword_27FE81098, &qword_26115E5F0);
      sub_26110CEE0(&v24, &qword_27FE81098, &qword_26115E5F0);
      v9 = 0;
      v11 = 0;
    }

    sub_26114E3BC(a1, &v18);
    v25 = v22;
    v24 = v21;
    v26 = v23;
    if (*(&v22 + 1))
    {
      __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
      sub_26115A434();
      __swift_project_boxed_opaque_existential_1Tm(v16, v17);
      v12 = sub_26115A694();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(&v24);
      sub_26110CEE0(&v18, &qword_27FE81098, &qword_26115E5F0);
    }

    else
    {
      sub_26110CEE0(&v18, &qword_27FE81098, &qword_26115E5F0);
      sub_26110CEE0(&v24, &qword_27FE81098, &qword_26115E5F0);
      v12 = 0;
      v14 = 0;
    }

    sub_261152748(v9, v11, v12, v14);

    v15 = sub_26115B674();

    [a3 setSubtitle_];
  }
}

uint64_t sub_261152594()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = [Strong viewController];
      v4 = *(v1 + 32);
      v5 = swift_allocObject();
      *(v5 + 16) = sub_261112550;
      *(v5 + 24) = v4;
      swift_retain_n();
      sub_26114D9D4(v3, &unk_261161BC8, v4, &unk_26115E9E0, v5);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2611526DC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_261152748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26115A3F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
    (*(v9 + 104))(v12, *MEMORY[0x277D433B8], v8);
    a3 = sub_26115A3E4();
    v13 = v15;
    (*(v9 + 8))(v12, v8);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    (*(v9 + 104))(v12, *MEMORY[0x277D433B8], v8);

    a1 = sub_26115A3E4();
    v14 = v16;
    (*(v9 + 8))(v12, v8);
    goto LABEL_6;
  }

  v13 = a4;
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:

  v14 = a2;
LABEL_6:
  v19 = 0;
  v20 = 0xE000000000000000;

  sub_26115B954();

  v19 = 0xD000000000000013;
  v20 = 0x8000000261163380;
  MEMORY[0x2666F9DF0](a3, v13);

  MEMORY[0x2666F9DF0](95, 0xE100000000000000);
  MEMORY[0x2666F9DF0](a1, v14);

  v17 = sub_26115B6F4();

  return v17;
}

uint64_t sub_261152968()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2611529C0()
{
  MEMORY[0x2666FA9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261152A10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_261152594();
}

uint64_t sub_261152A18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261152A68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26110CAC4;

  return sub_261123CEC();
}

uint64_t sub_261152AF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26115A3F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_26115B954();

  v13 = 0xD00000000000001DLL;
  v14 = 0x8000000261164F90;
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D433B8], v4);
    a1 = sub_26115A3E4();
    v9 = v10;
    (*(v5 + 8))(v8, v4);
  }

  MEMORY[0x2666F9DF0](a1, v9);

  v11 = sub_26115B6F4();

  return v11;
}

uint64_t PASFlowStepTargetError.buildView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81F70, qword_261161BD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v12[0] = v0;
  v9 = sub_261152E10();
  sub_26115B414();
  (*(v2 + 16))(v6, v8, v1);
  v12[0] = &type metadata for PASUITargetErrorView;
  v12[1] = v9;
  swift_getOpaqueTypeConformance2();
  v10 = sub_26115B574();
  (*(v2 + 8))(v8, v1);
  return v10;
}

unint64_t sub_261152E10()
{
  result = qword_27FE81F78;
  if (!qword_27FE81F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81F78);
  }

  return result;
}

uint64_t sub_261152E64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81F70, qword_261161BD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v12[0] = *v0;
  v9 = sub_261152E10();
  sub_26115B414();
  (*(v2 + 16))(v6, v8, v1);
  v12[0] = &type metadata for PASUITargetErrorView;
  v12[1] = v9;
  swift_getOpaqueTypeConformance2();
  v10 = sub_26115B574();
  (*(v2 + 8))(v8, v1);
  return v10;
}

uint64_t sub_261153014@<X0>(uint64_t *a1@<X8>)
{
  v14 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81F80, &qword_261161C98);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  *&v15 = sub_261153248;
  *(&v15 + 1) = 0;
  *&v16 = sub_261153264;
  *(&v16 + 1) = 0;
  LOBYTE(v17) = 0;
  *(&v17 + 1) = 0;
  v18 = 0uLL;
  v19 = MEMORY[0x277D84F90];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81F88, &qword_261161CA0);
  v10 = sub_26112812C();
  v11 = sub_261153B58();
  sub_26115B454();
  v20[2] = v17;
  v20[3] = v18;
  v21 = v19;
  v20[0] = v15;
  v20[1] = v16;
  sub_261153D1C(v20);
  (*(v2 + 16))(v6, v8, v1);
  *&v15 = &type metadata for PASUITargetBaseView;
  *(&v15 + 1) = v9;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  swift_getOpaqueTypeConformance2();
  v12 = sub_26115B574();
  result = (*(v2 + 8))(v8, v1);
  *v14 = v12;
  return result;
}

uint64_t sub_261153264(uint64_t a1, uint64_t a2)
{
  v4 = sub_26115A3F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_26115B954();

  v13 = 0xD000000000000015;
  v14 = 0x8000000261164FB0;
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D433B8], v4);
    a1 = sub_26115A3E4();
    v9 = v10;
    (*(v5 + 8))(v8, v4);
  }

  MEMORY[0x2666F9DF0](a1, v9);

  v11 = sub_26115B6F4();

  return v11;
}

uint64_t sub_2611533F8@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_26115AFB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81F98, &qword_261161CA8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81FB0, &qword_261161CB0);
  v12 = *(v11 - 8);
  v25 = v11;
  v26 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81FB8, &qword_261161CB8);
  sub_261153D78();
  sub_26115B554();
  sub_26115AFA4();
  v16 = sub_26111EDDC(&qword_27FE81FA0, &qword_27FE81F98, &qword_261161CA8);
  v17 = sub_261153CD4(&qword_27FE81FA8, MEMORY[0x277CDDB18]);
  sub_26115B354();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
  sub_26115B034();
  v18 = sub_26115B304();
  v20 = v19;
  LOBYTE(v7) = v21;
  v28 = v6;
  v29 = v1;
  v30 = v16;
  v31 = v17;
  swift_getOpaqueTypeConformance2();
  v22 = v25;
  sub_26115B3B4();
  sub_261146CA8(v18, v20, v7 & 1);

  return (*(v26 + 8))(v15, v22);
}

uint64_t sub_2611537B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_26115B7D4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_26115B7A4();

  v7 = sub_26115B794();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a1;
  sub_261112D1C(0, 0, v5, &unk_261161D40, v8);
}

uint64_t sub_2611538D4()
{
  v0[2] = sub_26115B7A4();
  v0[3] = sub_26115B794();
  v1 = *(MEMORY[0x277D43458] + 4);
  v4 = (*MEMORY[0x277D43458] + MEMORY[0x277D43458]);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_26110E430;

  return v4();
}

uint64_t sub_261153998@<X0>(uint64_t a1@<X8>)
{
  sub_26115B4D4();
  sub_26115B2C4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81FF8, &unk_261161CD8);
  sub_261154068();
  sub_26115B424();

  v2 = sub_26115B114();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81FF0, &qword_261161CD0) + 36)) = v2;
  LOBYTE(v2) = sub_26115B254();
  sub_26115AE24();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81FE0, &qword_261161CC8) + 36);
  *v11 = v2;
  *(v11 + 8) = v4;
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  *(v11 + 32) = v10;
  *(v11 + 40) = 0;
  v12 = [objc_opt_self() secondarySystemBackgroundColor];
  v13 = sub_26115B4B4();
  v14 = sub_26115B254();
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81FD0, &qword_261161CC0) + 36);
  *v15 = v13;
  *(v15 + 8) = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81FB8, &qword_261161CB8);
  *(a1 + *(result + 36)) = 256;
  return result;
}

unint64_t sub_261153B58()
{
  result = qword_27FE81F90;
  if (!qword_27FE81F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81F88, &qword_261161CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81F98, &qword_261161CA8);
    sub_26115AFB4();
    sub_26111EDDC(&qword_27FE81FA0, &qword_27FE81F98, &qword_261161CA8);
    sub_261153CD4(&qword_27FE81FA8, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_261153CD4(&qword_27FE81CE0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81F90);
  }

  return result;
}

uint64_t sub_261153CD4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_261153D78()
{
  result = qword_27FE81FC0;
  if (!qword_27FE81FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81FB8, &qword_261161CB8);
    sub_261153E30();
    sub_26111EDDC(&qword_27FE81D40, &qword_27FE81D48, &qword_261161028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81FC0);
  }

  return result;
}

unint64_t sub_261153E30()
{
  result = qword_27FE81FC8;
  if (!qword_27FE81FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81FD0, &qword_261161CC0);
    sub_261153EE8();
    sub_26111EDDC(&qword_27FE82018, &qword_27FE82020, &unk_261161CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81FC8);
  }

  return result;
}

unint64_t sub_261153EE8()
{
  result = qword_27FE81FD8;
  if (!qword_27FE81FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81FE0, &qword_261161CC8);
    sub_261153F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81FD8);
  }

  return result;
}

unint64_t sub_261153F74()
{
  result = qword_27FE81FE8;
  if (!qword_27FE81FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81FF0, &qword_261161CD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81FF8, &unk_261161CD8);
    sub_261154068();
    swift_getOpaqueTypeConformance2();
    sub_26111EDDC(&qword_27FE82008, &qword_27FE82010, &qword_261161CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81FE8);
  }

  return result;
}

unint64_t sub_261154068()
{
  result = qword_27FE82000;
  if (!qword_27FE82000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81FF8, &unk_261161CD8);
    sub_26111EDDC(&qword_27FE81278, &qword_27FE81280, &qword_26115E9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE82000);
  }

  return result;
}

uint64_t sub_261154128()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261154168()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26110CAC4;

  return sub_2611538D4();
}

void sub_261154228(uint64_t *a1@<X8>)
{
  if (xmmword_27FE858D8)
  {
    v2 = *(&xmmword_27FE858D8 + 1);

    v4 = v2(v3);

    *a1 = v4;
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_26115428C(void *a1)
{
  v2 = sub_26115B5D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26115B5F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_26111EC34();
    v13 = sub_26115B874();
    v20 = v7;
    v14 = v13;
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = a1;
    aBlock[4] = sub_261154944;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26113432C;
    aBlock[3] = &block_descriptor_13;
    v17 = _Block_copy(aBlock);
    v18 = a1;

    sub_26115B5E4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_261154964(&qword_27FE816F0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81EA0, &qword_261160190);
    sub_261131590();
    sub_26115B904();
    MEMORY[0x2666F9F60](0, v11, v6, v17);
    _Block_release(v17);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v20);
  }

  return Strong != 0;
}

uint64_t sub_2611545A0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    if (xmmword_27FE858D8)
    {

      sub_2611330E0(a2);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_261154620()
{
  v0 = xmmword_27FE858D8;
  if (xmmword_27FE858D8)
  {
    type metadata accessor for PASUINonUIExtensionConfiguration();
    v1 = swift_allocObject();
    type metadata accessor for AuthenticateProxyObjectFetchingDecorator();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    *(v1 + 16) = v2;
    sub_26115A274();
    sub_261154964(&unk_27FE82030, type metadata accessor for PASUINonUIExtensionConfiguration);

    swift_unknownObjectRetain();
    sub_26115A284();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_261154730(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_weakInit();

  v3 = MEMORY[0x277CE11C8];
  v4 = MEMORY[0x277CE11C0];

  return MEMORY[0x2821169D0](0x746C7561666564, 0xE700000000000000, sub_2611548BC, a1, sub_2611548FC, v2, v3, v4);
}

uint64_t sub_261154880@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PASUIAppExtension();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_2611548C4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261154904()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261154964(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2611549E8()
{
  v1 = sub_26115AD64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  if (v6)
  {

    return v6;
  }

  else
  {
    sub_26115AD44();
    v8 = sub_26115AD54();
    v9 = sub_26115B824();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_261107000, v8, v9, "PASUIViewControllerProvider has no viewController", v10, 2u);
      MEMORY[0x2666FA930](v10, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  }
}

id sub_261154B68()
{
  v1 = v0;
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  if (!v7 || (result = [v7 navigationController]) == 0)
  {
    sub_26115AD44();
    v9 = sub_26115AD54();
    v10 = sub_26115B824();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261107000, v9, v10, "PASUIViewControllerProvider has no navigationController", v11, 2u);
      MEMORY[0x2666FA930](v11, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v12 = sub_2611549E8();
    v13 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

    return v13;
  }

  return result;
}

id sub_261154CFC(void *a1)
{
  v2 = v1;
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v19 = a1;
  v9 = sub_26115AD54();
  v10 = sub_26115B834();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    v13 = v19;
    *(v11 + 4) = v19;
    *v12 = v13;
    v14 = v13;
    _os_log_impl(&dword_261107000, v9, v10, "PASUIViewControllerProvider setViewController %{public}@", v11, 0xCu);
    sub_26112F444(v12);
    MEMORY[0x2666FA930](v12, -1, -1);
    MEMORY[0x2666FA930](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v15 = *(v2 + 16);
  *(v2 + 16) = v19;

  v16 = v19;

  return v16;
}

uint64_t sub_261154EB8()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id sub_261154F80()
{
  sub_261155CD4();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASUICDPEnrollmentObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PASUICDPEnrollmentObserver()
{
  result = qword_27FE820C8;
  if (!qword_27FE820C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2611550C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26115AD64();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E8, &qword_261161EF8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = sub_26115A684();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - v20;
  v22 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_lastStatus;
  swift_beginAccess();
  sub_2611566D0(v2 + v22, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_261156740(v13);
    goto LABEL_7;
  }

  v41 = v4;
  (*(v15 + 32))(v21, v13, v14);
  v23 = sub_26115A674();
  if (v23 >= sub_26115A674())
  {
    (*(v15 + 8))(v21, v14);
LABEL_7:
    (*(v15 + 16))(v11, a1, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    swift_beginAccess();
    sub_2611567A8(v11, v2 + v22);
    swift_endAccess();
    v37 = v2 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v39 = *(v37 + 8);
      swift_getObjectType();
      sub_26115A924();
      return swift_unknownObjectRelease();
    }

    return result;
  }

  v44 = 0;
  v45 = 0xE000000000000000;
  sub_26115B954();

  v44 = 544175136;
  v45 = 0xE400000000000000;
  v24 = *(v15 + 16);
  v24(v19, a1, v14);
  v25 = sub_26115B6B4();
  MEMORY[0x2666F9DF0](v25);

  MEMORY[0x2666F9DF0](0xD000000000000018, 0x8000000261165170);
  v24(v19, v21, v14);
  v26 = sub_26115B6B4();
  MEMORY[0x2666F9DF0](v26);

  v27 = v44;
  v28 = v45;
  v44 = 0xD000000000000030;
  v45 = 0x8000000261165130;
  MEMORY[0x2666F9DF0](v27, v28);

  v30 = v44;
  v29 = v45;
  v31 = v42;
  sub_26115AD44();

  v32 = sub_26115AD54();
  v33 = sub_26115B814();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v44 = v35;
    *v34 = 136446210;
    v36 = sub_26111C268(v30, v29, &v44);

    *(v34 + 4) = v36;
    _os_log_impl(&dword_261107000, v32, v33, "%{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x2666FA930](v35, -1, -1);
    MEMORY[0x2666FA930](v34, -1, -1);
  }

  else
  {
  }

  (*(v43 + 8))(v31, v41);
  return (*(v15 + 8))(v21, v14);
}

uint64_t sub_261155608()
{
  v1 = v0;
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v7 = sub_26115AD54();
  v8 = sub_26115B834();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_261107000, v7, v8, "PASUICDPEnrollmentObserver registerObservers", v9, 2u);
    MEMORY[0x2666FA930](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E0, &qword_261161EF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26115E240;
  v11 = *&v1[OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_notificationCenter];
  v12 = *MEMORY[0x277CFDAD0];
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  v42 = sub_261156628;
  v43 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_261155AF0;
  v41 = &block_descriptor_14;
  v14 = _Block_copy(&aBlock);
  v15 = v12;
  v16 = v1;

  v17 = [v11 addObserverForName:v15 object:0 queue:0 usingBlock:v14];
  _Block_release(v14);

  *(v10 + 32) = v17;
  v18 = *MEMORY[0x277CFDAC8];
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v42 = sub_261156664;
  v43 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_261155AF0;
  v41 = &block_descriptor_17;
  v20 = _Block_copy(&aBlock);
  v21 = v16;
  v22 = v18;

  v23 = [v11 addObserverForName:v22 object:0 queue:0 usingBlock:v20];
  _Block_release(v20);

  *(v10 + 40) = v23;
  v24 = *MEMORY[0x277CFDAB8];
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v42 = sub_261156688;
  v43 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_261155AF0;
  v41 = &block_descriptor_23;
  v26 = _Block_copy(&aBlock);
  v27 = v21;
  v28 = v24;

  v29 = [v11 addObserverForName:v28 object:0 queue:0 usingBlock:v26];
  _Block_release(v26);

  *(v10 + 48) = v29;
  v30 = *MEMORY[0x277CFDAC0];
  v31 = swift_allocObject();
  *(v31 + 16) = v27;
  v42 = sub_2611566AC;
  v43 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_261155AF0;
  v41 = &block_descriptor_29_0;
  v32 = _Block_copy(&aBlock);
  v33 = v27;
  v34 = v30;

  v35 = [v11 addObserverForName:v34 object:0 queue:0 usingBlock:v32];
  _Block_release(v32);

  *(v10 + 56) = v35;
  v36 = *&v33[OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_observers];
  *&v33[OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_observers] = v10;
}

uint64_t sub_261155AF0(uint64_t a1)
{
  v2 = sub_26115A194();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_26115A184();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_261155BE4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = sub_26115A684();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *a3, v4);
  sub_2611550C8(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_261155CD4()
{
  v1 = v0;
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v7 = sub_26115AD54();
  v8 = sub_26115B834();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_261107000, v7, v8, "PASUICDPEnrollmentObserver deregisterObservers", v9, 2u);
    MEMORY[0x2666FA930](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_observers);
  if (v10 >> 62)
  {
LABEL_17:
    v11 = sub_26115B9A4();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_notificationCenter;

  if (v11)
  {
    v13 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x2666FA050](v13, v10);
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_14:
          __break(1u);
        }
      }

      else
      {
        if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v14 = *(v10 + 8 * v13 + 32);
        swift_unknownObjectRetain();
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_14;
        }
      }

      [*(v1 + v12) removeObserver_];
      swift_unknownObjectRelease();
      ++v13;
    }

    while (v15 != v11);
  }
}

void sub_261155F1C()
{
  sub_261155FD4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_261155FD4()
{
  if (!qword_27FE820D8)
  {
    sub_26115A684();
    v0 = sub_26115B8E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE820D8);
    }
  }
}

uint64_t sub_26115626C(uint64_t a1)
{
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v7 = sub_26115AD54();
  v8 = sub_26115B834();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_261107000, v7, v8, "PASUICDPEnrollmentObserver uiController(_:prepareAlertContext:)", v9, 2u);
    MEMORY[0x2666FA930](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return (*(a1 + 16))(a1);
}

uint64_t sub_2611563BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_26115A684();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26115AD64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v13 = sub_26115AD54();
  v14 = sub_26115B834();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v19 = a2;
    v16 = v15;
    *v15 = 0;
    _os_log_impl(&dword_261107000, v13, v14, "PASUICDPEnrollmentObserver uiController(_:preparePresentationContext:)", v15, 2u);
    a2 = v19;
    MEMORY[0x2666FA930](v16, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  (*(v4 + 104))(v7, *MEMORY[0x277D43430], v3);
  sub_2611550C8(v7);
  (*(v4 + 8))(v7, v3);
  return (*(a2 + 16))(a2);
}

uint64_t sub_2611565F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2611566D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E8, &qword_261161EF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261156740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E8, &qword_261161EF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2611567A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E8, &qword_261161EF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26115683C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE82100, qword_2611620C8);
  sub_26115B214();
  v2 = v22[5];
  v1 = v22[6];

  sub_26115B214();
  v4 = v22[7];
  v3 = v22[8];

  v5 = *(v0 + 32);
  v6 = v5;
  if (!v5)
  {
    v6 = sub_2611578D4(*(v0 + 40), *(v0 + 48));
  }

  v7 = v5;
  v8 = sub_26115B674();

  if (v3)
  {
    v9 = sub_26115B674();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(type metadata accessor for PASUIWelcomeController()) initWithTitle:v8 detailText:v9 icon:v6];

  sub_26115B214();
  v11 = v10;
  sub_26111DF84(v10, &off_28739B518);

  v13 = *(v0 + 56);
  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_8;
    }

    return v11;
  }

  result = sub_26115B9A4();
  v14 = result;
  if (!result)
  {
    return v11;
  }

LABEL_8:
  if (v14 >= 1)
  {
    for (i = 0; i != v14; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2666FA050](i, v13);
      }

      else
      {
        v16 = *(v13 + 8 * i + 32);
      }

      v17 = *(v16 + 16);
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = v18;
        v20 = v17;
        v21 = [v11 buttonTray];
        [v21 addButton_];
      }
    }

    return v11;
  }

  __break(1u);
  return result;
}

id sub_261156A9C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI22PASUIWelcomeController_activityIndicatorView);
  v3 = &selRef_startAnimating;
  if (!*(v1 + 64))
  {
    v3 = &selRef_stopAnimating;
  }

  return [v2 *v3];
}

uint64_t sub_261156ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261157880();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_261156B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261157880();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_261156B94()
{
  sub_261157880();
  sub_26115B1C4();
  __break(1u);
}

id sub_261156BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  *&v5[OBJC_IVAR____TtC23ProximityAppleIDSetupUI22PASUIWelcomeController_activityIndicatorView] = v8;
  v9 = sub_26115B674();

  if (a4)
  {
    v10 = sub_26115B674();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v5;
  v13.super_class = type metadata accessor for PASUIWelcomeController();
  v11 = objc_msgSendSuper2(&v13, sel_initWithTitle_detailText_icon_contentLayout_, v9, v10, a5, 2);

  return v11;
}

void sub_261156E04()
{
  v1 = *&v0[OBJC_IVAR____TtC23ProximityAppleIDSetupUI22PASUIWelcomeController_activityIndicatorView];
  [v1 removeFromSuperview];
  v2 = [v0 contentView];
  [v2 addSubview_];

  if ([v0 isContentCenterAligned])
  {
    v3 = 100;
  }

  else
  {
    v3 = 101;
  }

  [v1 setActivityIndicatorViewStyle_];
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 centerYAnchor];

    v7 = [v1 centerYAnchor];
    v8 = [v6 constraintEqualToAnchor_];

    LODWORD(v9) = 1132068864;
    [v8 setPriority_];
    v10 = [v0 isContentCenterAligned];
    v11 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E0, &qword_261161EF0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26115E240;
    v13 = [v0 contentView];
    v14 = v13;
    if (v10)
    {
      v15 = &selRef_centerXAnchor;
    }

    else
    {
      v15 = &selRef_leadingAnchor;
    }

    v16 = [v13 *v15];

    v17 = [v1 *v15];
    v18 = [v16 constraintEqualToAnchor_];

    *(v12 + 32) = v18;
    *(v12 + 40) = v8;
    v28 = v8;
    v19 = [v1 topAnchor];
    v20 = [v0 contentView];
    v21 = [v20 topAnchor];

    v22 = [v19 constraintGreaterThanOrEqualToAnchor_];
    *(v12 + 48) = v22;
    v23 = [v0 contentView];
    v24 = [v23 bottomAnchor];

    v25 = [v1 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v12 + 56) = v26;
    sub_26111DEC0();
    v27 = sub_26115B744();

    [v11 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

void sub_261157170()
{
  v1 = v0;
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v7 = sub_26115AD54();
  v8 = sub_26115B834();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_261107000, v7, v8, "Adding header animation view", v9, 2u);
    MEMORY[0x2666FA930](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  type metadata accessor for PASUIMicaView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 addSubview_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = [v1 headerView];
  v13 = [v12 animationView];

  if (v13)
  {
    v14 = v13;
    [v14 addSubview_];
    v15 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E0, &qword_261161EF0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_261161F00;
    v17 = [v10 centerXAnchor];
    v18 = [v14 centerXAnchor];
    v19 = [v17 constraintEqualToAnchor_];

    *(v16 + 32) = v19;
    v20 = [v10 centerYAnchor];
    v21 = [v14 centerYAnchor];

    v22 = [v20 constraintEqualToAnchor_];
    *(v16 + 40) = v22;
    v23 = [v10 heightAnchor];
    v24 = [v23 constraintEqualToConstant_];

    *(v16 + 48) = v24;
    v25 = [v10 widthAnchor];
    v26 = [v25 constraintEqualToConstant_];

    *(v16 + 56) = v26;
    v27 = [v11 topAnchor];
    v28 = [v10 topAnchor];
    v29 = [v27 constraintEqualToAnchor_];

    *(v16 + 64) = v29;
    v30 = [v11 bottomAnchor];
    v31 = [v10 bottomAnchor];
    v32 = [v30 constraintEqualToAnchor_];

    *(v16 + 72) = v32;
    v33 = [v11 leadingAnchor];
    v34 = [v10 leadingAnchor];
    v35 = [v33 constraintEqualToAnchor_];

    *(v16 + 80) = v35;
    v36 = [v11 trailingAnchor];

    v37 = [v10 trailingAnchor];
    v38 = [v36 constraintEqualToAnchor_];

    *(v16 + 88) = v38;
    sub_26111DEC0();
    v39 = sub_26115B744();

    [v15 activateConstraints_];
  }

  else
  {
    v39 = v10;
    v10 = v11;
  }
}

id sub_261157744()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASUIWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2611577D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261157818(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261157880()
{
  result = qword_27FE820F8;
  if (!qword_27FE820F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE820F8);
  }

  return result;
}

id sub_2611578D4(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    v3 = [objc_opt_self() tintColor];
    v4 = objc_opt_self();
    v5 = [v4 configurationWithHierarchicalColor_];

    v6 = [v4 configurationWithPointSize_];
    v7 = [v5 configurationByApplyingConfiguration_];
    v8 = sub_26115B674();
    v2 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];
  }

  return v2;
}

uint64_t sub_261157A1C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26115B494();
  result = sub_26115AED4();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

unint64_t sub_261157A5C@<X0>(uint64_t a1@<X8>)
{
  started = type metadata accessor for PASUISourceStartViewProxCardAdapter();
  v3 = swift_allocObject();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v3 + 16) = sub_26115A2E4();
  if (MEMORY[0x277D84F90] >> 62 && sub_26115B9A4())
  {
    result = sub_261120870(MEMORY[0x277D84F90]);
  }

  else
  {
    result = MEMORY[0x277D84FA0];
  }

  *(v3 + 24) = result;
  *(a1 + 24) = started;
  *(a1 + 32) = &off_28739AD30;
  *a1 = v3;
  *(a1 + 40) = 0;
  return result;
}

uint64_t PASFlowStepSourceStart.buildView()()
{
  sub_261157B4C();

  return sub_26115B574();
}

unint64_t sub_261157B4C()
{
  result = qword_27FE82108;
  if (!qword_27FE82108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE82108);
  }

  return result;
}

uint64_t sub_261157BB8()
{
  sub_261157B4C();

  return sub_26115B574();
}

uint64_t PASFlowStepSignInResult.buildView()()
{
  sub_26110CC00();

  return sub_26115B574();
}

uint64_t sub_261157C74(void (*a1)(void))
{
  a1();
  v2 = *(v1 + 8);

  return v2();
}

void *sub_261157CEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for PASUIAllSetProxCardAdapter();
  v5 = swift_allocObject();

  result = sub_261157D68(v6);
  *(a1 + 24) = v4;
  *(a1 + 32) = &off_28739AD30;
  *a1 = v5;
  *(a1 + 40) = 0;
  return result;
}

void *sub_261157D68(uint64_t a1)
{
  v2 = v1;
  v1[4] = a1;
  v1[5] = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  v1[2] = sub_26115A2E4();
  if (MEMORY[0x277D84F90] >> 62 && sub_26115B9A4())
  {
    v6 = sub_261120870(MEMORY[0x277D84F90]);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  v2[3] = v6;
  return v2;
}

void sub_261157E18(void *a1)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE82128, &unk_261162300);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_26115D860;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 32) = 0xD00000000000001DLL;
    *(v4 + 40) = 0x8000000261165360;
    v5 = v3;
    sub_26115BA84();

    [a1 removeAction_];
  }

  sub_26115B6F4();

  v6 = sub_26115B674();

  v10[4] = sub_2611590FC;
  v10[5] = v1;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_26114D6D0;
  v10[3] = &block_descriptor_36_0;
  v7 = _Block_copy(v10);
  v8 = [objc_opt_self() actionWithTitle:v6 style:0 handler:v7];

  _Block_release(v7);

  v9 = *(v1 + 40);
  *(v1 + 40) = v8;
}

uint64_t sub_26115800C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_26115B7D4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_26115B7A4();

  v8 = sub_26115B794();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a2;
  sub_261112D1C(0, 0, v6, &unk_261162318, v9);
}

uint64_t sub_261158130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_26115B7A4();
  *(v4 + 24) = sub_26115B794();
  v6 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_2611581C8, v6, v5);
}

uint64_t sub_2611581C8()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = *(v2 + 32);
  sub_26115A464();
  v4 = v0[1];

  return v4();
}

void sub_261158230(void *a1)
{
  v2 = v1;
  v31 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81058, &unk_26115E2F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81060, &unk_261161BA0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE82110, &unk_2611622C0);
  v13 = *(v32 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v32);
  v16 = &v31 - v15;
  sub_26114CA50(a1);
  v17 = *(v2 + 16);

  sub_26115A2D4();

  swift_getObjectType();
  sub_26115AA14();
  swift_unknownObjectRelease();
  sub_26111EC34();
  v18 = sub_26115B874();
  aBlock[0] = v18;
  v19 = sub_26115B854();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  sub_26111EDDC(&qword_27FE81078, &qword_27FE81060, &unk_261161BA0);
  sub_26111EC80();
  sub_26115ADC4();
  sub_26110CEE0(v7, &qword_27FE81058, &unk_26115E2F0);

  (*(v9 + 8))(v12, v8);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v22 = v31;
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  sub_26111EDDC(&qword_27FE82118, &qword_27FE82110, &unk_2611622C0);
  swift_unknownObjectRetain();
  v23 = v32;
  sub_26115ADD4();

  (*(v13 + 8))(v16, v23);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_261158E80;
  *(v27 + 24) = v26;

  v28 = sub_26115B674();
  aBlock[4] = sub_261124808;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26114D6D0;
  aBlock[3] = &block_descriptor_15;
  v29 = _Block_copy(aBlock);
  v30 = [objc_opt_self() actionWithTitle:v28 style:0 handler:v29];

  _Block_release(v29);

  [v22 setDismissButtonAction_];
}

void sub_26115878C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v7 = *(Strong + 32);
  sub_26115A474();
  if (v40)
  {
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    v8 = sub_26115A9C4();
    if (v8)
    {
      v9 = v8;
      sub_26115A954();
      v11 = v10;

      __swift_destroy_boxed_opaque_existential_1(v39);
      if (v11)
      {
        goto LABEL_12;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v39);
    }
  }

  else
  {
    sub_26110CEE0(v39, &qword_27FE82120, &unk_2611622F0);
  }

  sub_26111EE24(a1, v39);
  v12 = v40;
  if (v40)
  {
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    sub_26115A434();
    __swift_project_boxed_opaque_existential_1Tm(v38, v38[3]);
    v13 = sub_26115A694();
    v12 = v14;
    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    sub_26110CEE0(v39, &qword_27FE81098, &qword_26115E5F0);
    v13 = 0;
  }

  sub_261158F68(v13, v12);

LABEL_12:
  v15 = sub_26115B674();

  [a3 setTitle_];

  v16 = *(v6 + 32);
  sub_26115A474();
  if (v40)
  {
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    v17 = sub_26115A9C4();
    if (v17)
    {
      v18 = v17;
      sub_26115A964();
      v20 = v19;

      __swift_destroy_boxed_opaque_existential_1(v39);
      if (v20)
      {
        v21 = sub_26115B674();

        goto LABEL_19;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v39);
    }
  }

  else
  {
    sub_26110CEE0(v39, &qword_27FE82120, &unk_2611622F0);
  }

  v21 = 0;
LABEL_19:
  [a3 setSubtitle_];

  sub_261157E18(a3);
  v22 = *(v6 + 32);
  sub_26115A474();
  if (!v40)
  {
    sub_26110CEE0(v39, &qword_27FE82120, &unk_2611622F0);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1Tm(v39, v40);
  v23 = sub_26115A9C4();
  if (!v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
    goto LABEL_25;
  }

  v24 = v23;
  sub_26115A944();
  v26 = v25;

  __swift_destroy_boxed_opaque_existential_1(v39);
  if (!v26)
  {
LABEL_25:
    v27 = [objc_opt_self() configurationWithPointSize_];
    v28 = sub_26115B674();
    goto LABEL_26;
  }

  v27 = [objc_opt_self() configurationWithPointSize:3 weight:80.0];
  v28 = sub_26115B674();

LABEL_26:
  v29 = [objc_opt_self() systemImageNamed:v28 withConfiguration:v27];

  if (!v29)
  {

    return;
  }

  v30 = *(v6 + 32);
  v31 = v29;
  sub_26115A474();
  if (v40)
  {
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    v32 = sub_26115A9C4();
    if (v32 && (v33 = v32, v34 = sub_26115A934(), v36 = v35, v33, (v36 & 1) == 0))
    {
      if (v34 != 1)
      {
        v38[0] = v34;
        sub_26115BA04();
        __break(1u);
        return;
      }

      v37 = [objc_opt_self() systemGreenColor];
      __swift_destroy_boxed_opaque_existential_1(v39);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v39);
      v37 = 0;
    }
  }

  else
  {
    sub_26110CEE0(v39, &qword_27FE82120, &unk_2611622F0);
    v37 = 0;
  }

  sub_26114DF6C(a3, v31, v37);
}

uint64_t sub_261158C78()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = [Strong viewController];
      v4 = *(v1 + 32);
      v5 = swift_allocObject();
      *(v5 + 16) = sub_261112550;
      *(v5 + 24) = v4;
      swift_retain_n();
      sub_26114D9D4(v3, &unk_2611622D8, v4, &unk_26115E9E0, v5);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_261158DD8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261158E30()
{
  MEMORY[0x2666FA9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261158E80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_261158C78();
}

uint64_t sub_261158E88()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261158ED8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26110DB28;

  return sub_261123CEC();
}

uint64_t sub_261158F68(uint64_t a1, uint64_t a2)
{
  v4 = sub_26115A3F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_26115B954();

  v13 = 0xD000000000000019;
  v14 = 0x8000000261165320;
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D433B8], v4);
    a1 = sub_26115A3E4();
    v9 = v10;
    (*(v5 + 8))(v8, v4);
  }

  MEMORY[0x2666F9DF0](a1, v9);

  v11 = sub_26115B6F4();

  return v11;
}

uint64_t sub_261159104()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261159144(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26110CAC4;

  return sub_261158130(a1, v4, v5, v6);
}

uint64_t sub_261159218@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for PASUISourceErrorProxCardAdapter();
  v5 = swift_allocObject();

  result = sub_2611519E8(v6);
  *(a1 + 24) = v4;
  *(a1 + 32) = &off_28739AD30;
  *a1 = v5;
  *(a1 + 40) = 0;
  return result;
}

void sub_261159280(void *a1)
{
  v2 = v1;
  v29 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81058, &unk_26115E2F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81060, &unk_261161BA0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE82110, &unk_2611622C0);
  v13 = *(v30 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v30);
  v16 = &v29 - v15;
  sub_26114CA50(a1);
  v17 = *(v2 + 16);

  sub_26115A2D4();

  swift_getObjectType();
  sub_26115AA14();
  swift_unknownObjectRelease();
  sub_26111EC34();
  v18 = sub_26115B874();
  aBlock[0] = v18;
  v19 = sub_26115B854();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  sub_26111EDDC(&qword_27FE81078, &qword_27FE81060, &unk_261161BA0);
  sub_26111EC80();
  sub_26115ADC4();
  sub_26110CEE0(v7, &qword_27FE81058, &unk_26115E2F0);

  (*(v9 + 8))(v12, v8);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v22 = v29;
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  sub_26111EDDC(&qword_27FE82118, &qword_27FE82110, &unk_2611622C0);
  swift_unknownObjectRetain();
  v23 = v30;
  sub_26115ADD4();

  (*(v13 + 8))(v16, v23);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_261159CD4;
  *(v25 + 24) = v24;
  swift_retain_n();
  v26 = sub_26115B674();
  aBlock[4] = sub_261124808;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26114D6D0;
  aBlock[3] = &block_descriptor_16;
  v27 = _Block_copy(aBlock);
  v28 = [objc_opt_self() actionWithTitle:v26 style:0 handler:v27];

  _Block_release(v27);

  [v22 setDismissButtonAction_];
}

void sub_261159788(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_26111EE24(a1, v15);
    v5 = v16;
    if (v16)
    {
      __swift_project_boxed_opaque_existential_1Tm(v15, v16);
      sub_26115A434();
      __swift_project_boxed_opaque_existential_1Tm(v13, v14);
      v5 = sub_26115A694();
      v7 = v6;
      __swift_destroy_boxed_opaque_existential_1(v13);
      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      sub_26110CEE0(v15, &qword_27FE81098, &qword_26115E5F0);
      v7 = 0;
    }

    sub_261159E20(v5, v7);

    v8 = sub_26115B674();

    [a3 setTitle_];

    sub_26111EE24(a1, v15);
    v9 = v16;
    if (v16)
    {
      __swift_project_boxed_opaque_existential_1Tm(v15, v16);
      sub_26115A434();
      __swift_project_boxed_opaque_existential_1Tm(v13, v14);
      v9 = sub_26115A694();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1(v13);
      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      sub_26110CEE0(v15, &qword_27FE81098, &qword_26115E5F0);
      v11 = 0;
    }

    sub_261159FB4(v9, v11);

    v12 = sub_26115B674();

    [a3 setSubtitle_];
  }
}

uint64_t sub_2611599AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_26115B7D4();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_26115B7A4();

    v7 = sub_26115B794();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v5;
    sub_261112D1C(0, 0, v3, &unk_2611623A0, v8);
  }

  return result;
}

uint64_t sub_261159B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26115B7A4();
  v4[3] = sub_26115B794();
  v6 = sub_26115B774();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_261159B98, v6, v5);
}

uint64_t sub_261159B98()
{
  v1 = *(*(v0 + 16) + 32);
  v2 = *(MEMORY[0x277D43450] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_26110C78C;

  return MEMORY[0x2821A4870]();
}

uint64_t sub_261159C54()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261159C8C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261159CDC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261159D2C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261159D6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26110CAC4;

  return sub_261159B00(a1, v4, v5, v6);
}

uint64_t sub_261159E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_26115A3F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_26115B954();

  v13 = 0xD000000000000012;
  v14 = 0x80000002611653C0;
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D433B8], v4);
    a1 = sub_26115A3E4();
    v9 = v10;
    (*(v5 + 8))(v8, v4);
  }

  MEMORY[0x2666F9DF0](a1, v9);

  v11 = sub_26115B6F4();

  return v11;
}

uint64_t sub_261159FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26115A3F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_26115B954();

  v13 = 0xD000000000000015;
  v14 = 0x8000000261164FB0;
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D433B8], v4);
    a1 = sub_26115A3E4();
    v9 = v10;
    (*(v5 + 8))(v8, v4);
  }

  MEMORY[0x2666F9DF0](a1, v9);

  v11 = sub_26115B6F4();

  return v11;
}