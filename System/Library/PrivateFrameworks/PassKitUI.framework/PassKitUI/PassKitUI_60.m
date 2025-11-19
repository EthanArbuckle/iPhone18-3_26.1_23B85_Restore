void sub_1BD68F010(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_1BE048964();
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1BD68F088()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD68F0C4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD68F128(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_securityController] = 0;
  v5[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_promptedUserToUpgrade] = 0;
  v5[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_isRequirementOptional] = 1;
  *&v5[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = &v5[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_identifier];
  *v11 = 0xD000000000000014;
  v11[1] = 0x80000001BE133FC0;
  v12 = OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_dismissalConfiguration;
  v5[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_dismissalConfiguration] = 2;
  *&v5[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_context] = a1;
  *&v5[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_requirements] = a2;
  v13 = &v5[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_feature];
  *v13 = a3;
  v13[8] = a4 & 1;
  v5[v12] = 1;
  sub_1BE052434();
  sub_1BE048964();
  v14 = sub_1BE04BB74();

  *&v5[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_reporter] = v14;
  v16.receiver = v5;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t sub_1BD68F29C()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_isRequirementOptional))
  {
    v1 = -1;
  }

  else
  {
    v1 = 2;
  }

  memset(v3, 0, sizeof(v3));
  v4 = v1;
  sub_1BD68E968(v3);
  return sub_1BD12FF7C(v3);
}

uint64_t sub_1BD68F2F8()
{
  memset(v1, 0, sizeof(v1));
  v2 = 2;
  sub_1BD68E968(v1);
  return sub_1BD12FF7C(v1);
}

uint64_t sub_1BD68F38C(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t static LiveActivityTapIntent.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E695A598];
  v3 = sub_1BE048EA4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t static LiveActivityTapIntent.supportedModes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F5F0);
  sub_1BE048624();
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  sub_1BE048614();
  sub_1BD68F5BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F600);
  sub_1BD0DE4F4(&qword_1EBD4F608, &qword_1EBD4F600);
  return sub_1BE053664();
}

unint64_t sub_1BD68F5BC()
{
  result = qword_1EBD4F5F8;
  if (!qword_1EBD4F5F8)
  {
    sub_1BE048624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F5F8);
  }

  return result;
}

uint64_t static LiveActivityTapIntent.requiredCapabilities.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F610);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BE0B69E0;
  v1 = sub_1BE048AD4();
  v2 = MEMORY[0x1E695A260];
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  sub_1BE048AE4();
  return v0;
}

uint64_t LiveActivityTapIntent.init(passUniqueID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a1;
  v31 = a2;
  v29 = a3;
  v3 = sub_1BE048D74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F618);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v28 - v18;
  v20 = sub_1BE04A884();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F620);
  sub_1BE04A864();
  (*(v21 + 56))(v19, 1, 1, v20);
  v23 = sub_1BE052344();
  v32 = 0;
  v33 = 0;
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = sub_1BE048654();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  (*(v4 + 104))(v7, *MEMORY[0x1E695A500], v3);
  v25 = sub_1BE0488F4();
  v26 = v30;
  *v29 = v25;
  v32 = v26;
  v33 = v31;
  return sub_1BE048884();
}

uint64_t LiveActivityTapIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v1 = sub_1BE048D74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F618);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v18 = sub_1BE04A884();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F620);
  sub_1BE04A864();
  (*(v19 + 56))(v17, 1, 1, v18);
  v21 = sub_1BE052344();
  v26 = 0;
  v27 = 0;
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = sub_1BE048654();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  (*(v2 + 104))(v5, *MEMORY[0x1E695A500], v1);
  *v25 = sub_1BE0488F4();
  v26 = 0;
  v27 = 0;
  return sub_1BE048884();
}

uint64_t LiveActivityTapIntent.perform()(uint64_t a1)
{
  v2[20] = a1;
  v3 = sub_1BE04D214();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[23] = v4;
  v2[24] = v5;
  sub_1BE0528A4();
  v2[25] = sub_1BE052894();
  v7 = sub_1BE052844();
  v2[26] = v7;
  v2[27] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD68FE64, v7, v6);
}

uint64_t sub_1BD68FE64()
{
  sub_1BE048874();
  if (v0[19])
  {
    v1 = [objc_opt_self() sharedInstance];
    v0[28] = v1;
    if (v1)
    {
      v2 = v1;
      v3 = sub_1BE052404();
      v0[29] = v3;

      v0[2] = v0;
      v0[7] = v0 + 31;
      v0[3] = sub_1BD690078;
      v4 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52980);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1BD68F38C;
      v0[13] = &block_descriptor_153;
      v0[14] = v4;
      [v2 presentContactlessInterfaceForPassWithUniqueIdentifier:v3 fromSource:3 completion:v0 + 10];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }
  }

  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_1BD690298;

  return sub_1BD0D7278();
}

uint64_t sub_1BD690078()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1BD690180, v2, v1);
}

uint64_t sub_1BD690180()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 224);
  if (v1 == 1)
  {

    sub_1BE048774();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {

    v5 = swift_task_alloc();
    *(v0 + 240) = v5;
    *v5 = v0;
    v5[1] = sub_1BD690298;

    return sub_1BD0D7278();
  }
}

uint64_t sub_1BD690298(char a1)
{
  v2 = *v1;
  *(*v1 + 249) = a1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1BD6903C0, v4, v3);
}

uint64_t sub_1BD6903C0()
{
  v1 = *(v0 + 249);

  if ((v1 & 1) == 0)
  {
    sub_1BE04D074();
    v2 = sub_1BE04D204();
    v3 = sub_1BE052C34();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1BD026000, v2, v3, "Failed to open Wallet from live activity", v4, 2u);
      MEMORY[0x1BFB45F20](v4, -1, -1);
    }

    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = *(v0 + 168);

    (*(v6 + 8))(v5, v7);
  }

  sub_1BE048774();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1BD6904F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F5F0);
  sub_1BE048624();
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  sub_1BE048614();
  sub_1BD68F5BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F600);
  sub_1BD0DE4F4(&qword_1EBD4F608, &qword_1EBD4F600);
  return sub_1BE053664();
}

uint64_t sub_1BD69063C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E695A598];
  v3 = sub_1BE048EA4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1BD6906B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return LiveActivityTapIntent.perform()(a1);
}

uint64_t sub_1BD69074C(uint64_t a1)
{
  v2 = sub_1BD6908A4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1BD69078C()
{
  result = qword_1EBD4F628;
  if (!qword_1EBD4F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F628);
  }

  return result;
}

unint64_t sub_1BD6907E4()
{
  result = qword_1EBD4F630;
  if (!qword_1EBD4F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F630);
  }

  return result;
}

unint64_t sub_1BD6908A4()
{
  result = qword_1EBD4F638;
  if (!qword_1EBD4F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F638);
  }

  return result;
}

uint64_t sub_1BD690908()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v34 - v17;
  v19 = type metadata accessor for UnavailableIdentityMethodItem();
  sub_1BD0DE19C(v1 + *(v19 + 20), v10, &qword_1EBD3C3F8);
  v20 = type metadata accessor for UnavailablePass(0);
  if ((*(*(v20 - 8) + 48))(v10, 1, v20) == 1)
  {
    sub_1BD0DE53C(v10, &qword_1EBD3C3F8);
    return 0;
  }

  else
  {
    sub_1BD691E00(v10, v14, type metadata accessor for WrappedPass);
    sub_1BD692040(v10, type metadata accessor for UnavailablePass);
    sub_1BD6920A0(v14, v18, type metadata accessor for WrappedPass);
    v21 = sub_1BD4943B0();
    v23 = v22;
    v24 = *(v1 + *(v19 + 24));
    if (v24)
    {
      v25 = [v24 displayName];
      if (v25)
      {
        v26 = v25;
        v35 = sub_1BE052434();
        v28 = v27;

        (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1BE0B6CA0;
        v30 = MEMORY[0x1E69E6158];
        *(v29 + 56) = MEMORY[0x1E69E6158];
        v31 = sub_1BD110550();
        *(v29 + 32) = v21;
        *(v29 + 40) = v23;
        *(v29 + 96) = v30;
        *(v29 + 104) = v31;
        v32 = v35;
        *(v29 + 64) = v31;
        *(v29 + 72) = v32;
        *(v29 + 80) = v28;
        v21 = sub_1BE04B714();

        (*(v3 + 8))(v6, v2);
      }
    }

    sub_1BD692040(v18, type metadata accessor for WrappedPass);
  }

  return v21;
}

uint64_t sub_1BD690CA8()
{
  sub_1BE053D04();
  sub_1BD690DD4();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD690D04()
{
  sub_1BD690DD4();
  sub_1BE052524();
}

uint64_t sub_1BD690D54()
{
  sub_1BE053D04();
  sub_1BD690DD4();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD690DAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD690DD4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD690DD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v27 - v8;
  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  sub_1BD0DE19C(v1, v27 - v8, &qword_1EBD520A0);
  v10 = type metadata accessor for AvailablePass(0);
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  if (v11 == 1)
  {
    sub_1BD0DE53C(v9, &qword_1EBD520A0);
  }

  else
  {
    v12 = sub_1BD49C81C(v11);
    v14 = v13;
    sub_1BD692040(v9, type metadata accessor for AvailablePass);
    MEMORY[0x1BFB3F610](v12, v14);
  }

  v15 = type metadata accessor for UnavailableIdentityMethodItem();
  sub_1BD0DE19C(v1 + *(v15 + 20), v5, &qword_1EBD3C3F8);
  v16 = type metadata accessor for UnavailablePass(0);
  if ((*(*(v16 - 8) + 48))(v5, 1, v16) == 1)
  {
    sub_1BD0DE53C(v5, &qword_1EBD3C3F8);
  }

  else
  {
    v17 = sub_1BD495408();
    v19 = v18;
    sub_1BD692040(v5, type metadata accessor for UnavailablePass);
    MEMORY[0x1BFB3F610](v17, v19);
  }

  v20 = *(v1 + *(v15 + 24));
  if (v20)
  {
    v21 = [v20 applicationIdentifier];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1BE052434();
      v25 = v24;

      MEMORY[0x1BFB3F610](v23, v25);
    }
  }

  return v27[0];
}

uint64_t sub_1BD69108C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnavailablePass(0);
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v57 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v58 = &v57 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E20);
  MEMORY[0x1EEE9AC00](v59, v10);
  v62 = &v57 - v11;
  v12 = type metadata accessor for AvailablePass(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v57 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39738);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v57 - v23;
  v26 = *(v25 + 56);
  v63 = a1;
  sub_1BD0DE19C(a1, &v57 - v23, &qword_1EBD520A0);
  v64 = a2;
  sub_1BD0DE19C(a2, &v24[v26], &qword_1EBD520A0);
  v27 = *(v13 + 48);
  if (v27(v24, 1, v12) == 1)
  {
    if (v27(&v24[v26], 1, v12) == 1)
    {
      sub_1BD0DE53C(v24, &qword_1EBD520A0);
      goto LABEL_8;
    }

LABEL_6:
    v28 = &qword_1EBD39738;
    v29 = v24;
LABEL_15:
    sub_1BD0DE53C(v29, v28);
    goto LABEL_16;
  }

  sub_1BD0DE19C(v24, v20, &qword_1EBD520A0);
  if (v27(&v24[v26], 1, v12) == 1)
  {
    sub_1BD692040(v20, type metadata accessor for AvailablePass);
    goto LABEL_6;
  }

  sub_1BD6920A0(&v24[v26], v16, type metadata accessor for AvailablePass);
  v30 = sub_1BD495008(v20, v16);
  sub_1BD692040(v16, type metadata accessor for AvailablePass);
  sub_1BD692040(v20, type metadata accessor for AvailablePass);
  sub_1BD0DE53C(v24, &qword_1EBD520A0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v31 = type metadata accessor for UnavailableIdentityMethodItem();
  v32 = *(v31 + 20);
  v33 = *(v59 + 48);
  v35 = v62;
  v34 = v63;
  sub_1BD0DE19C(v63 + v32, v62, &qword_1EBD3C3F8);
  v36 = v64 + v32;
  v37 = v64;
  sub_1BD0DE19C(v36, v35 + v33, &qword_1EBD3C3F8);
  v38 = v61;
  v39 = *(v60 + 48);
  if (v39(v35, 1, v61) != 1)
  {
    v40 = v58;
    sub_1BD0DE19C(v35, v58, &qword_1EBD3C3F8);
    if (v39(v35 + v33, 1, v38) == 1)
    {
      sub_1BD692040(v40, type metadata accessor for UnavailablePass);
      goto LABEL_13;
    }

    v43 = v35 + v33;
    v44 = v57;
    sub_1BD6920A0(v43, v57, type metadata accessor for UnavailablePass);
    v45 = sub_1BD492F00();
    v47 = v46;
    if (v45 == sub_1BD492F00() && v47 == v48)
    {
    }

    else
    {
      v49 = sub_1BE053B84();

      if ((v49 & 1) == 0)
      {
        sub_1BD692040(v44, type metadata accessor for UnavailablePass);
        sub_1BD692040(v40, type metadata accessor for UnavailablePass);
        v28 = &qword_1EBD3C3F8;
        goto LABEL_14;
      }
    }

    v50 = *(v38 + 28);
    v51 = sub_1BD498408(*(v40 + v50), *(v40 + v50 + 8), *(v40 + v50 + 16), *(v44 + v50), *(v44 + v50 + 8), *(v44 + v50 + 16));
    sub_1BD692040(v44, type metadata accessor for UnavailablePass);
    sub_1BD692040(v40, type metadata accessor for UnavailablePass);
    sub_1BD0DE53C(v35, &qword_1EBD3C3F8);
    if (v51)
    {
      goto LABEL_23;
    }

LABEL_16:
    v41 = 0;
    return v41 & 1;
  }

  if (v39(v35 + v33, 1, v38) != 1)
  {
LABEL_13:
    v28 = &qword_1EBD47E20;
LABEL_14:
    v29 = v35;
    goto LABEL_15;
  }

  sub_1BD0DE53C(v35, &qword_1EBD3C3F8);
LABEL_23:
  v52 = *(v31 + 24);
  v53 = *(v34 + v52);
  v54 = *(v37 + v52);
  v41 = (v53 | v54) == 0;
  if (v53 && v54)
  {
    sub_1BD131A80();
    v55 = v54;
    v56 = v53;
    v41 = sub_1BE053074();
  }

  return v41 & 1;
}

void *sub_1BD69175C(uint64_t a1)
{
  v2 = type metadata accessor for UnavailableIdentityMethodItem();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v51 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v50 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = type metadata accessor for UnavailablePass(0);
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v43 - v17;
  v19 = type metadata accessor for Passes(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a1, v18, &unk_1EBD43B40);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1BD0DE53C(v18, &unk_1EBD43B40);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1BD6920A0(v18, v23, type metadata accessor for Passes);
  v25 = *&v23[*(v19 + 36)];
  v26 = *(v25 + 16);
  v44 = v23;
  if (v26)
  {
    v27 = v25 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v46 = (v45 + 56);
    v52 = MEMORY[0x1E69E7CC0];
    v28 = *(v45 + 72);
    v45 = v28;
    while (1)
    {
      sub_1BD691E00(v27, v14, type metadata accessor for UnavailablePass);
      sub_1BD691E00(v14, v11, type metadata accessor for WrappedPass);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v32 = v50;
          sub_1BD6920A0(v11, v50, type metadata accessor for PlaceholderPass);
          v31 = [objc_allocWithZone(MEMORY[0x1E69B91E8]) init];
          [v31 setCardType_];
          sub_1BD692040(v32, type metadata accessor for PlaceholderPass);
LABEL_13:
          if ([v31 isIdentityPass])
          {
            v33 = v8;
            v34 = v49;
            v35 = *(v49 + 20);
            v36 = v51;
            sub_1BD691E00(v14, &v51[v35], type metadata accessor for UnavailablePass);
            (*v46)(&v36[v35], 0, 1, v47);
            *&v36[*(v34 + 24)] = 0;
            v37 = type metadata accessor for AvailablePass(0);
            (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
            v38 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v38 = sub_1BD1D7CFC(0, v38[2] + 1, 1, v38);
            }

            v40 = v38[2];
            v39 = v38[3];
            v52 = v38;
            if (v40 >= v39 >> 1)
            {
              v52 = sub_1BD1D7CFC(v39 > 1, v40 + 1, 1, v52);
            }

            sub_1BD692040(v14, type metadata accessor for UnavailablePass);
            v41 = v51;
            v42 = v52;
            v52[2] = v40 + 1;
            sub_1BD6920A0(v41, v42 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v40, type metadata accessor for UnavailableIdentityMethodItem);
            v8 = v33;
            v28 = v45;
          }

          else
          {
            sub_1BD692040(v14, type metadata accessor for UnavailablePass);
          }

          goto LABEL_6;
        }

        sub_1BD692040(v11, type metadata accessor for WrappedPass);
      }

      else
      {
        v30 = *v11;
        v31 = [*v11 secureElementPass];

        if (v31)
        {
          goto LABEL_13;
        }
      }

      sub_1BD692040(v14, type metadata accessor for UnavailablePass);
LABEL_6:
      v27 += v28;
      if (!--v26)
      {
        goto LABEL_20;
      }
    }
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_20:
  sub_1BD692040(v44, type metadata accessor for Passes);
  return v52;
}

uint64_t type metadata accessor for UnavailableIdentityMethodItem()
{
  result = qword_1EBD4F640;
  if (!qword_1EBD4F640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD691E00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BD691E90()
{
  sub_1BD691F80(319, &qword_1EBD365F8, type metadata accessor for AvailablePass);
  if (v0 <= 0x3F)
  {
    sub_1BD691F80(319, &qword_1EBD4F650, type metadata accessor for UnavailablePass);
    if (v1 <= 0x3F)
    {
      sub_1BD691F80(319, &qword_1EBD392F0, sub_1BD131A80);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD691F80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1BD691FE8()
{
  result = qword_1EBD4F658;
  if (!qword_1EBD4F658)
  {
    type metadata accessor for UnavailableIdentityMethodItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F658);
  }

  return result;
}

uint64_t sub_1BD692040(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD6920A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1BD692108()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = PKAccountTransferEligibilityToString();
  if (result)
  {
    v6 = result;
    v7 = sub_1BE052434();
    v9 = v8;

    sub_1BE04D194();
    sub_1BE048C84();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C54();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      v14 = sub_1BD123690(v7, v9, &v16);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_1BD026000, v10, v11, "Transfer eligibility set to %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1BFB45F20](v13, -1, -1);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    else
    {
    }

    return (*(v1 + 8))(v4, v0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD692338()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD6923AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD69244C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v33 = *(v1 - 8);
  v34 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v31 - v3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416E0);
  v5 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v6);
  v8 = &v31 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v31, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4F6A0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v31 - v19;
  v21 = OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel__eligibility;
  v37 = 0;
  type metadata accessor for PKAccountTransferEligibility(0);
  sub_1BE04D874();
  (*(v17 + 32))(v0 + v21, v20, v16);
  v22 = OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel__error;
  v23 = type metadata accessor for FeatureError(0);
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  sub_1BD23C2BC(v15, v11);
  sub_1BE04D874();
  sub_1BD23C32C(v15);
  (*(v5 + 32))(v0 + v22, v8, v32);
  v24 = OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel__loadingTransferEligibility;
  v36 = 0;
  sub_1BE04D874();
  v25 = v34;
  v26 = *(v33 + 32);
  v26(v0 + v24, v4, v34);
  v27 = OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel__loaded;
  v35 = 0;
  sub_1BE04D874();
  v26(v0 + v27, v4, v25);
  *(v0 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_account) = 0;
  v28 = v0 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_transferType;
  *v28 = 0;
  *(v28 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_amount) = 0;
  v29 = OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_paymentWebService;
  *(v0 + v29) = [objc_opt_self() sharedService];
  return v0;
}

uint64_t sub_1BD692824()
{
  v1 = sub_1BE051F54();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((aBlock[0] & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if ((aBlock[0] & 1) == 0)
    {
      v12 = *(v0 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_account);
      if (v12)
      {
        if ((*(v0 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_transferType + 8) & 1) == 0)
        {
          v13 = *(v0 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_amount);
          if (v13)
          {
            v21 = *(v0 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_transferType);
            sub_1BD14BE3C();
            v14 = v12;
            v15 = v13;
            v22 = sub_1BE052D54();
            v16 = swift_allocObject();
            swift_weakInit();
            v17 = swift_allocObject();
            v17[2] = v16;
            v17[3] = v14;
            v17[4] = v21;
            v17[5] = v15;
            aBlock[4] = sub_1BD693C84;
            aBlock[5] = v17;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1BD126964;
            aBlock[3] = &block_descriptor_154;
            v18 = _Block_copy(aBlock);
            v21 = v14;
            v19 = v15;

            sub_1BE051F74();
            aBlock[0] = MEMORY[0x1E69E7CC0];
            sub_1BD14EC84();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
            sub_1BD14ECDC();
            sub_1BE053664();
            v20 = v22;
            MEMORY[0x1BFB3FDF0](0, v10, v5, v18);
            _Block_release(v18);

            (*(v2 + 8))(v5, v1);
            return (*(v7 + 8))(v10, v6);
          }
        }
      }
    }
  }

  return result;
}

void sub_1BD692BD0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 1;
  sub_1BE048964();
  sub_1BE04D8C4();
  v12 = [a2 savingsDetails];
  if (!v12)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [v12 fccStepUpRequired];

  if (!v14)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = 0;
    sub_1BE048964();
    sub_1BE04D8C4();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = 1;
    sub_1BE048964();
    sub_1BE04D8C4();
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = 1;
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD692108();

    return;
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E69B84E0]) init];
  v16 = [a2 accountBaseURL];
  if (v16)
  {
    v17 = v16;
    sub_1BE04A9F4();

    v18 = sub_1BE04A9C4();
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v18 = 0;
  }

  [v15 setBaseURL_];

  v19 = [a2 accountIdentifier];
  [v15 setAccountIdentifier_];

  [v15 setType_];
  v20 = [a2 savingsDetails];
  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = v20;
  v22 = [v20 currencyCode];

  v23 = PKCurrencyAmountMake();
  [v15 setCurrencyAmount_];

  v24 = *(v11 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_paymentWebService);
  if (v24)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v11;
    *(v25 + 24) = a2;
    aBlock[4] = sub_1BD693C90;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD14E1D8;
    aBlock[3] = &block_descriptor_54_0;
    v26 = _Block_copy(aBlock);
    sub_1BE048964();
    v27 = v24;
    v15 = v15;
    v28 = a2;

    [v27 transferEligibilityWithRequest:v15 completion:v26];

    _Block_release(v26);
  }

  else
  {
  }
}

uint64_t sub_1BD69304C(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = sub_1BE051F54();
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BE051FA4();
  v11 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v15 = sub_1BE052D54();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v16;
  v17[5] = a4;
  aBlock[4] = sub_1BD693C98;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_61_1;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  v20 = a2;
  v21 = a4;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v14, v10, v18);
  _Block_release(v18);

  (*(v24 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v23);
}

uint64_t sub_1BD693314(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v20[-v13];
  if (a1 && !a2)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v17 = a1;
      v18 = [v17 eligibility];
      swift_getKeyPath();
      swift_getKeyPath();
      v21 = v18;
      sub_1BE048964();
      sub_1BE04D8C4();
      sub_1BD692108();
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v15 = [a4 feature];
      v16 = a2;
      FeatureError.init(feature:error:)(v15, a2, v14);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BD23C2BC(v14, v10);
      sub_1BE04D8C4();
      sub_1BD23C32C(v14);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v20[8] = 0;
    sub_1BE04D8C4();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v20[7] = 1;
    return sub_1BE04D8C4();
  }

  return result;
}

uint64_t sub_1BD6935AC()
{
  v1 = OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel__eligibility;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4F6A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel__error;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416E0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel__loadingTransferEligibility;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel__loaded, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TransferEligibilityModel()
{
  result = qword_1EBD4F688;
  if (!qword_1EBD4F688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD6937A0()
{
  sub_1BD6938BC();
  if (v0 <= 0x3F)
  {
    sub_1BD693914();
    if (v1 <= 0x3F)
    {
      sub_1BD1E1120();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BD6938BC()
{
  if (!qword_1EBD4F698)
  {
    type metadata accessor for PKAccountTransferEligibility(255);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4F698);
    }
  }
}

void sub_1BD693914()
{
  if (!qword_1EBD416B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD416C0);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD416B8);
    }
  }
}

uint64_t sub_1BD693978@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TransferEligibilityModel();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD6939B8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

id sub_1BD693A38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD692108();
}

uint64_t sub_1BD693AB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD693B2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v11 - v8;
  sub_1BD23C2BC(a1, &v11 - v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD23C2BC(v9, v5);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD23C32C(v9);
}

void sub_1BD693CD4()
{
  sub_1BD6979CC(319, &unk_1EBD4F710, &qword_1EBD3F140, &unk_1BE0C55B8, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1BD6979CC(319, &qword_1EBD42F20, &qword_1EBD3A5C8, &unk_1BE0BAA50, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      sub_1BD6979CC(319, &qword_1EBD4F720, &unk_1EBD4AB00, &unk_1BE0C85C0, MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        sub_1BD6979CC(319, &qword_1EBD4F730, &qword_1EBD4F738, &unk_1BE0EDB78, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1BD693EF8()
{
  v1[12] = v0;
  v2 = sub_1BE04D214();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v1[16] = swift_task_alloc();
  v1[17] = type metadata accessor for IdentityWebPresentmentBrand();
  v1[18] = swift_task_alloc();
  v3 = sub_1BE04DB44();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v4 = sub_1BE04CF34();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v5 = sub_1BE04DB14();
  v1[25] = v5;
  v1[26] = *(v5 - 8);
  v1[27] = swift_task_alloc();
  v6 = sub_1BE04DB54();
  v1[28] = v6;
  v1[29] = *(v6 - 8);
  v1[30] = swift_task_alloc();
  v7 = sub_1BE04DB84();
  v1[31] = v7;
  v1[32] = *(v7 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F738);
  v1[35] = swift_task_alloc();
  v8 = sub_1BE04DBC4();
  v1[36] = v8;
  v1[37] = *(v8 - 8);
  v1[38] = swift_task_alloc();
  sub_1BE0528A4();
  v1[39] = sub_1BE052894();
  v10 = sub_1BE052844();
  v1[40] = v10;
  v1[41] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD6942C0, v10, v9);
}

uint64_t sub_1BD6942C0()
{
  v1 = v0;
  v2 = v0[37];
  v4 = v1[35];
  v3 = v1[36];
  sub_1BD6956F4(v4);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v5 = v1[35];

    sub_1BD0DE53C(v5, &qword_1EBD4F738);
LABEL_16:

    v59 = v1[1];

    return v59();
  }

  v6 = v1[34];
  v60 = v1[33];
  v8 = v1[31];
  v7 = v1[32];
  v61 = v1[30];
  v62 = v1[29];
  v64 = v1[28];
  (*(v1[37] + 32))(v1[38], v1[35], v1[36]);
  sub_1BE04DB94();
  v9 = sub_1BE04DB74();
  v11 = v10;
  v12 = *(v7 + 8);
  v12(v6, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v1[2] = v9;
  v1[3] = v11;
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BE04DB94();
  v13 = sub_1BE04DB64();
  v15 = v14;
  v12(v6, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v1[4] = v13;
  v1[5] = v15;
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BE04DB94();
  sub_1BE04DAF4();
  v12(v60, v8);
  v16 = (*(v62 + 88))(v61, v64);
  if (v16 == *MEMORY[0x1E6997D28])
  {

    sub_1BD0E5E8C(0, qword_1EBD4F790);
    if (qword_1EBD370F0 != -1)
    {
      swift_once();
    }

    v17 = v1[37];
    v18 = v1[38];
    v19 = v1[36];
    v20 = v1[29];
    v63 = v1[28];
    v65 = v1[30];
    v21 = v1[23];
    v22 = v1[24];
    v23 = v1[22];
    v24 = __swift_project_value_buffer(v23, qword_1EBDAB9D8);
    (*(v21 + 16))(v22, v24, v23);
    v25 = sub_1BE052FF4();
    swift_getKeyPath();
    swift_getKeyPath();
    v1[10] = v25;
    sub_1BE048964();
    sub_1BE04D8C4();
    (*(v17 + 8))(v18, v19);
    (*(v20 + 8))(v65, v63);
    goto LABEL_16;
  }

  if (v16 == *MEMORY[0x1E6997D30])
  {
    v66 = v1[38];
    v26 = v1[36];
    v27 = v1[37];
    v29 = v1[29];
    v28 = v1[30];
    v30 = v1[27];
    v31 = v1[28];
    v33 = v1[25];
    v32 = v1[26];

    (*(v29 + 96))(v28, v31);
    (*(v32 + 32))(v30, v28, v33);
    sub_1BE04DB04();
    v34 = sub_1BE052404();

    PKUIScreenScale();
    v35 = PKIconForApplicationIdentifier();

    swift_getKeyPath();
    swift_getKeyPath();
    v1[11] = v35;
    sub_1BE048964();
    sub_1BE04D8C4();
    (*(v32 + 8))(v30, v33);
    (*(v27 + 8))(v66, v26);
    goto LABEL_16;
  }

  if (v16 != *MEMORY[0x1E6997D38])
  {
    v50 = v1[29];
    v51 = v1[30];
    v52 = v1[28];
    (*(v1[37] + 8))(v1[38], v1[36]);

    (*(v50 + 8))(v51, v52);
    goto LABEL_16;
  }

  v36 = v1[30];
  v38 = v1[20];
  v37 = v1[21];
  v39 = v1[19];
  (*(v1[29] + 96))(v36, v1[28]);
  (*(v38 + 32))(v37, v36, v39);
  v40 = sub_1BE04DB24();
  v42 = v41;
  swift_getKeyPath();
  swift_getKeyPath();
  v1[6] = v40;
  v1[7] = v42;
  sub_1BE048964();
  sub_1BE04D8C4();
  v43 = sub_1BE04DB34();
  v1[42] = v43;
  v1[43] = v44;
  if (!v44)
  {
    v53 = v1[38];
    v54 = v1[36];
    v55 = v1[37];
    v57 = v1[20];
    v56 = v1[21];
    v58 = v1[19];

    (*(v57 + 8))(v56, v58);
    (*(v55 + 8))(v53, v54);
    goto LABEL_16;
  }

  v45 = v43;
  v46 = v44;
  sub_1BE048C84();
  v47 = swift_task_alloc();
  v1[44] = v47;
  *v47 = v1;
  v47[1] = sub_1BD6949BC;
  v48 = v1[18];

  return sub_1BD5A8D1C(v48, v45, v46);
}

uint64_t sub_1BD6949BC()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_1BD694D6C;
  }

  else
  {

    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_1BD694AD8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD694AD8()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[8] = v5;
  v0[9] = v4;
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE04D8C4();
  v19 = [objc_allocWithZone(MEMORY[0x1E69B8998]) init];
  sub_1BD0DE19C(v1 + *(v2 + 24), v3, &unk_1EBD3CF70);
  v6 = sub_1BE04AA64();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(v3, 1, v6) != 1)
  {
    v9 = v0[16];
    v8 = sub_1BE04A9C4();
    (*(v7 + 8))(v9, v6);
  }

  v10 = v0[37];
  v18 = v0[38];
  v11 = v0[36];
  v12 = v0[20];
  v13 = v0[21];
  v15 = v0[18];
  v14 = v0[19];
  [v19 setFallbackLogoImageURL_];

  sub_1BD69706C(v15);
  sub_1BD697CC0(v15);
  (*(v12 + 8))(v13, v14);
  (*(v10 + 8))(v18, v11);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1BD694D6C()
{
  v37 = v0;
  v1 = v0[45];

  sub_1BE04D1E4();
  sub_1BE048C84();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[45];
  v7 = v0[43];
  if (v5)
  {
    v8 = v0[42];
    v32 = v0[36];
    v34 = v0[38];
    v29 = v0[21];
    v30 = v0[37];
    v27 = v0[20];
    v28 = v0[19];
    v9 = v0[14];
    v25 = v0[13];
    v26 = v0[15];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = v12;
    *v10 = 136315394;
    v13 = sub_1BD123690(v8, v7, &v36);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2112;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v15;
    *v11 = v15;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to download web presentment branding with identifier: '%s' %@", v10, 0x16u);
    sub_1BD0DE53C(v11, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1BFB45F20](v12, -1, -1);
    MEMORY[0x1BFB45F20](v10, -1, -1);

    (*(v9 + 8))(v26, v25);
    (*(v27 + 8))(v29, v28);
    (*(v30 + 8))(v34, v32);
  }

  else
  {
    v16 = v0[37];
    v33 = v0[36];
    v35 = v0[38];
    v17 = v0[20];
    v31 = v0[21];
    v18 = v0[19];
    v19 = v0[45];
    v20 = v0[14];
    v21 = v0[15];
    v22 = v0[13];

    (*(v20 + 8))(v21, v22);
    (*(v17 + 8))(v31, v18);
    (*(v16 + 8))(v35, v33);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1BD6950DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD695150()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD6951DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD695248()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD6952C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F140);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v11 - v8;
  sub_1BD0DE19C(a1, &v11 - v8, &qword_1EBD3F140);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v9, v5, &qword_1EBD3F140);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD0DE53C(v9, &qword_1EBD3F140);
}

uint64_t sub_1BD695444@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD6954C4(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

id sub_1BD69553C()
{
  v1 = qword_1EBD4F6D8;
  v2 = *(v0 + qword_1EBD4F6D8);
  if (v2)
  {
    v3 = *(v0 + qword_1EBD4F6D8);
LABEL_5:
    v6 = v2;
    return v3;
  }

  result = [objc_allocWithZone(PKPaymentTransactionIconGenerator) initWithCache:1 scale:PKUIScreenScale()];
  if (result)
  {
    v5 = *(v0 + v1);
    *(v0 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_1BD6955E4@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1BD695674()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD6956F4@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4F778);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v15[-v9];
  v11 = qword_1EBD4F6F0;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v11, v10, &unk_1EBD4F778);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F738);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return sub_1BD697BF0(v10, a1);
  }

  sub_1BD0DE53C(v10, &unk_1EBD4F778);
  sub_1BD6958DC(v1, a1);
  sub_1BD0DE19C(a1, v6, &qword_1EBD4F738);
  (*(v13 + 56))(v6, 0, 1, v12);
  swift_beginAccess();
  sub_1BD697B80(v6, v1 + v11);
  return swift_endAccess();
}

void sub_1BD6958DC(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F738);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v24 - v6;
  v25 = *(a1 + qword_1EBDAAD68 + 32);
  v8 = [v25 paymentRequest];
  if (v8)
  {
    v9 = v8;
    v26 = sub_1BE04DBB4();
    v27 = v10;
    sub_1BE048C84();
    sub_1BE0537C4();
    v11 = [v9 clientViewSourceParameter];
    if (v11)
    {
      v12 = v11;

      v13 = sub_1BE052244();

      if (*(v13 + 16) && (v14 = sub_1BD149040(v28), (v15 & 1) != 0))
      {
        sub_1BD038CD0(*(v13 + 56) + 32 * v14, v29);
        sub_1BD149CE8(v28);

        if (swift_dynamicCast())
        {
          v16 = v26;
          v17 = v27;
          sub_1BE04A644();
          swift_allocObject();
          sub_1BE04A634();
          v18 = sub_1BE04DBC4();
          sub_1BD697C60();
          sub_1BE04A624();

          sub_1BD1245AC(v16, v17);
          v22 = *(v18 - 8);
          v23 = *(v22 + 56);
          v23(v7, 0, 1, v18);
          (*(v22 + 32))(a2, v7, v18);
          v23(a2, 0, 1, v18);
          return;
        }
      }

      else
      {

        sub_1BD149CE8(v28);
      }

      v19 = sub_1BE04DBC4();
      (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v20 = sub_1BE04DBC4();
    (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
    v21 = v25;
  }
}

id sub_1BD695CF0(uint64_t a1)
{
  v60 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770);
  v58 = *(v2 - 1);
  v59 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v57 = v49 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FA8);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v5);
  v7 = v49 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4F760);
  v8 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v9);
  v11 = v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F140);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v49 - v18;
  *(v1 + qword_1EBD4F6B0) = vdupq_n_s64(0x404B000000000000uLL);
  v20 = qword_1EBD4F6B8;
  v21 = type metadata accessor for IdentityPassVendor();
  v22 = *(v21 - 8);
  v50 = *(v22 + 56);
  v51 = v21;
  v49[1] = v22 + 56;
  v50(v19, 1, 1);
  sub_1BD0DE19C(v19, v15, &qword_1EBD3F140);
  v53 = v15;
  sub_1BE04D874();
  v52 = v19;
  sub_1BD0DE53C(v19, &qword_1EBD3F140);
  (*(v8 + 32))(v1 + v20, v11, v55);
  v23 = qword_1EBD4F6C0;
  aBlock = 0;
  v62 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
  sub_1BE04D874();
  v24 = *(v54 + 32);
  v25 = v56;
  v24(v1 + v23, v7, v56);
  v26 = qword_1EBD4F6C8;
  aBlock = 0;
  v62 = 0;
  sub_1BE04D874();
  v24(v1 + v26, v7, v25);
  v27 = qword_1EBD4F6D0;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4AB00);
  v28 = v57;
  sub_1BE04D874();
  (*(v58 + 32))(v1 + v27, v28, v59);
  *(v1 + qword_1EBD4F6D8) = 0;
  v29 = qword_1EBD4F6E0;
  aBlock = 0;
  v62 = 0;
  v30 = v60;
  sub_1BE04D874();
  v24(v1 + v29, v7, v25);
  v31 = qword_1EBD4F6E8;
  *(v1 + v31) = [objc_opt_self() sharedInstanceWithRemoteLibrary];
  v32 = qword_1EBD4F6F0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F738);
  (*(*(v33 - 8) + 56))(v1 + v32, 1, 1, v33);
  v34 = *(v30 + 32);
  result = [v34 paymentRequest];
  if (result)
  {
    v59 = result;
    v36 = [result requestType];
    *(v1 + qword_1EBDAB3E8) = v36;
    v38 = *v30;
    v37 = *(v30 + 8);
    v67 = *(v30 + 24);
    v68[0] = v37;
    v39 = *(v30 + 40);
    v40 = v34;
    v41 = v38;
    v57 = v41;
    sub_1BD0DE19C(v68, &aBlock, &qword_1EBD3D490);
    sub_1BD0DE19C(&v67, &aBlock, &qword_1EBD40150);
    v58 = v39;
    sub_1BE048964();
    v42 = sub_1BD46A578(v30);

    sub_1BD0DE53C(v68, &qword_1EBD3D490);
    sub_1BD0DE53C(&v67, &qword_1EBD40150);

    swift_retain_n();
    v43 = sub_1BD69650C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v44 = sub_1BD6969AC();
    v45 = v40;
    v46 = v52;
    sub_1BD876420(v43, v44, v45, v52);
    (v50)(v46, 0, 1, v51);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD0DE19C(v46, v53, &qword_1EBD3F140);
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD0DE53C(v46, &qword_1EBD3F140);
    v47 = swift_allocObject();
    swift_weakInit();

    v65 = sub_1BD697CB8;
    v66 = v47;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_1BD126964;
    v64 = &block_descriptor_155;
    v48 = _Block_copy(&aBlock);

    [v45 setUpdateHandler_];
    _Block_release(v48);

    sub_1BD0DE53C(v68, &qword_1EBD3D490);
    sub_1BD0DE53C(&v67, &qword_1EBD40150);

    return v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD69650C()
{
  v0 = sub_1BE04DAE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v58 = v50 - v7;
  v8 = type metadata accessor for IdentityCredential(0);
  v57 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04DBC4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F738);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v50 - v19;
  sub_1BD6956F4(v50 - v19);
  if ((*(v13 + 48))(v20, 1, v12))
  {
    sub_1BD0DE53C(v20, &qword_1EBD4F738);
    return MEMORY[0x1E69E7CC0];
  }

  v65 = v11;
  (*(v13 + 16))(v16, v20, v12);
  sub_1BD0DE53C(v20, &qword_1EBD4F738);
  v22 = sub_1BE04DBA4();
  (*(v13 + 8))(v16, v12);
  v23 = *(v22 + 16);
  if (!v23)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v66 = MEMORY[0x1E69E7CC0];
  sub_1BD531AE4(0, v23, 0);
  v25 = *(v1 + 16);
  v24 = v1 + 16;
  v26 = v22 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
  v52 = *(v24 + 56);
  v53 = v25;
  v50[1] = v22;
  v51 = (v24 - 8);
  v27 = v58;
  v28 = v65;
  v21 = v66;
  v55 = v24;
  v56 = v0;
  v54 = v4;
  do
  {
    v65 = v23;
    v29 = v53;
    v53(v27, v26, v0);
    v29(v4, v27, v0);
    v30 = sub_1BE04DAC4();
    v63 = v31;
    v64 = v30;
    sub_1BE04DAD4();
    v32 = sub_1BE04DAB4();
    v61 = v33;
    v62 = v32;
    v34 = sub_1BE04DA94();
    v59 = v35;
    v60 = v34;
    v36 = v21;
    v37 = sub_1BE04DAA4();
    v39 = v38;
    v40 = *v51;
    v27 = v58;
    (*v51)(v4, v0);
    v40(v27, v0);
    v41 = v63;
    *v28 = v64;
    v28[1] = v41;
    v42 = (v28 + v8[6]);
    v43 = v61;
    *v42 = v62;
    v42[1] = v43;
    v44 = (v28 + v8[7]);
    v45 = v59;
    *v44 = v60;
    v44[1] = v45;
    v46 = (v28 + v8[8]);
    *v46 = v37;
    v46[1] = v39;
    v21 = v36;
    v66 = v36;
    v47 = *(v36 + 16);
    v48 = *(v21 + 24);
    if (v47 >= v48 >> 1)
    {
      sub_1BD531AE4(v48 > 1, v47 + 1, 1);
      v27 = v58;
      v21 = v66;
    }

    *(v21 + 16) = v47 + 1;
    sub_1BD697B1C(v28, v21 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v47);
    v26 += v52;
    v23 = v65 - 1;
    v0 = v56;
    v4 = v54;
  }

  while (v65 != 1);

  return v21;
}

unint64_t sub_1BD6969AC()
{
  v1 = *(v0 + qword_1EBD4F6E8);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = [v1 passesOfType_];
  sub_1BD0E5E8C(0, &qword_1EBD40650);
  v4 = sub_1BE052744();

  v18 = v2;
  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v8 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      do
      {
        v10 = v8;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1BFB40900](v10, v4);
          }

          else
          {
            if (v10 >= *(v5 + 16))
            {
              goto LABEL_34;
            }

            v11 = *(v4 + 8 * v10 + 32);
          }

          v12 = v11;
          v8 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v10;
          if (v8 == i)
          {
            goto LABEL_20;
          }
        }

        MEMORY[0x1BFB3F7A0]();
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        v9 = v18;
      }

      while (v8 != i);
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

LABEL_20:

    v18 = v7;
    if (v9 >> 62)
    {
      break;
    }

    v4 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_39;
    }

LABEL_22:
    v13 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1BFB40900](v13, v9);
      }

      else
      {
        if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v14 = *(v9 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if ([v14 isIdentityPass])
      {
        sub_1BE0538C4();
        v5 = *(v7 + 16);
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      ++v13;
      if (v16 == v4)
      {
        v2 = v7;
        goto LABEL_40;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

  v4 = sub_1BE053704();
  if (v4)
  {
    goto LABEL_22;
  }

LABEL_39:
  v2 = MEMORY[0x1E69E7CC0];
LABEL_40:

  return v2;
}

uint64_t sub_1BD696C70()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BD696CC8();
  }

  return result;
}

uint64_t sub_1BD696CC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F140);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v24 - v7;
  v10 = *(v0 + qword_1EBDAAD68 + 24);
  v9 = *(v0 + qword_1EBDAAD68 + 32);
  v11 = v10;
  v12 = v9;
  sub_1BD2B1238(v12, v10, &v25);
  v13 = v26;
  if (v26)
  {
    v14 = v25;
    v15 = sub_1BD1C2B14();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = v13;
    v17 = v28;
    *(v16 + 32) = v27;
    *(v16 + 48) = v17;
    v18 = &type metadata for AuthorizationError;
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v15 = 0;
    v24[2] = 0;
    v24[3] = 0;
  }

  v24[1] = v16;
  v24[4] = v18;
  v24[5] = v15;
  sub_1BE04C8F4();
  v19 = sub_1BD69650C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v20 = sub_1BD6969AC();
  v21 = v12;
  sub_1BD876420(v19, v20, v21, v8);
  v22 = type metadata accessor for IdentityPassVendor();
  (*(*(v22 - 8) + 56))(v8, 0, 1, v22);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v8, v4, &qword_1EBD3F140);
  sub_1BE048964();
  sub_1BE04D8C4();

  return sub_1BD0DE53C(v8, &qword_1EBD3F140);
}

uint64_t sub_1BD696F8C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  v14 = *(a1 + 24);
  v15 = v3;
  v5 = (v1 + qword_1EBDAAD68);
  v6 = *(v1 + qword_1EBDAAD68);
  v7 = *(v1 + qword_1EBDAAD68 + 24);
  v8 = *(v1 + qword_1EBDAAD68 + 32);
  v9 = *(a1 + 16);
  *v5 = *a1;
  v5[1] = v9;
  v5[2] = *(a1 + 32);
  v10 = v2;
  sub_1BD0DE19C(&v15, v13, &qword_1EBD3D490);
  sub_1BD0DE19C(&v14, v13, &qword_1EBD40150);
  v11 = v4;
  sub_1BE048964();

  swift_unknownObjectRelease();
  return sub_1BD696CC8();
}

void sub_1BD69706C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = aBlock - v4;
  v6 = [objc_allocWithZone(MEMORY[0x1E69B8998]) init];
  v7 = type metadata accessor for IdentityWebPresentmentBrand();
  sub_1BD0DE19C(a1 + *(v7 + 24), v5, &unk_1EBD3CF70);
  v8 = sub_1BE04AA64();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v5, 1, v8) != 1)
  {
    v10 = sub_1BE04A9C4();
    (*(v9 + 8))(v5, v8);
  }

  [v6 setFallbackLogoImageURL_];

  v11 = sub_1BD69553C();
  v12 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1BD697D1C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD307EA8;
  aBlock[3] = &block_descriptor_35_3;
  v13 = _Block_copy(aBlock);
  v14 = v6;

  v15 = [v11 iconForMerchant:v14 size:0 ignoreLogoURL:0 requestType:v13 iconHandler:{54.0, 54.0}];
  _Block_release(v13);

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = v15;
  sub_1BE048964();
  v16 = v15;
  sub_1BE04D8C4();
}

uint64_t sub_1BD697310(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (a1)
    {
      v8 = sub_1BE0528D4();
      (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
      sub_1BE0528A4();
      v9 = a1;
      sub_1BE048964();
      v10 = sub_1BE052894();
      v11 = swift_allocObject();
      v12 = MEMORY[0x1E69E85E0];
      v11[2] = v10;
      v11[3] = v12;
      v11[4] = v7;
      v11[5] = v9;
      sub_1BD122C00(0, 0, v5, &unk_1BE0EDD68, v11);
    }
  }

  return result;
}

uint64_t sub_1BD697480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_1BE0528A4();
  v5[5] = sub_1BE052894();
  v7 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD697518, v7, v6);
}

uint64_t sub_1BD697518()
{
  v1 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v1;
  sub_1BE048964();
  v2 = v1;
  sub_1BE04D8C4();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1BD6975D4()
{
  v1 = qword_1EBD4F6B8;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4F760);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EBD4F6C0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FA8);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + qword_1EBD4F6C8, v4);
  v6 = qword_1EBD4F6D0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  v5(v0 + qword_1EBD4F6E0, v4);
  return sub_1BD0DE53C(v0 + qword_1EBD4F6F0, &unk_1EBD4F778);
}

uint64_t sub_1BD697760()
{
  v0 = sub_1BE04C954();
  v1 = qword_1EBD36020;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40140);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1EBDAAD68);
  v4 = *(v0 + qword_1EBDAAD68 + 24);
  v5 = *(v0 + qword_1EBDAAD68 + 32);

  swift_unknownObjectRelease();
  v6 = qword_1EBD4F6B8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4F760);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = qword_1EBD4F6C0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FA8);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + qword_1EBD4F6C8, v9);
  v11 = qword_1EBD4F6D0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);

  v10(v0 + qword_1EBD4F6E0, v9);
  sub_1BD0DE53C(v0 + qword_1EBD4F6F0, &unk_1EBD4F778);
  return v0;
}

uint64_t sub_1BD697978()
{
  sub_1BD697760();

  return swift_deallocClassInstance();
}

void sub_1BD6979CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BD697A80()
{
  sub_1BE04DA84();
  if (v0 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD697B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityCredential(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD697B80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4F778);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD697BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F738);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD697C60()
{
  result = qword_1EBD4F788;
  if (!qword_1EBD4F788)
  {
    sub_1BE04DBC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F788);
  }

  return result;
}

uint64_t sub_1BD697CC0(uint64_t a1)
{
  v2 = type metadata accessor for IdentityWebPresentmentBrand();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD697D24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD697480(a1, v4, v5, v7, v6);
}

void sub_1BD697DEC()
{
  sub_1BD1C86BC();
  if (v0 <= 0x3F)
  {
    sub_1BD3F7300();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD697EA4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1BE04AA64() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v8)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v17 + 7;
  v19 = v14 + 8;
  if (a2 > v16)
  {
    v20 = ((v19 + ((v18 + ((v12 + 48) & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + *(v10 + 64);
    v21 = 8 * v20;
    if (v20 > 3)
    {
      goto LABEL_16;
    }

    v23 = ((a2 - v16 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v23))
    {
      v22 = *(a1 + v20);
      if (v22)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v23 <= 0xFF)
      {
        if (v23 < 2)
        {
          goto LABEL_36;
        }

LABEL_16:
        v22 = *(a1 + v20);
        if (!*(a1 + v20))
        {
          goto LABEL_36;
        }

LABEL_23:
        v24 = (v22 - 1) << v21;
        if (v20 > 3)
        {
          v24 = 0;
        }

        if (v20)
        {
          if (v20 <= 3)
          {
            v25 = ((v19 + ((v18 + ((v12 + 48) & ~v12)) & 0xFFFFFFF8)) & ~v14) + *(v10 + 64);
          }

          else
          {
            v25 = 4;
          }

          if (v25 > 2)
          {
            if (v25 == 3)
            {
              v26 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v26 = *a1;
            }
          }

          else if (v25 == 1)
          {
            v26 = *a1;
          }

          else
          {
            v26 = *a1;
          }
        }

        else
        {
          v26 = 0;
        }

        return v16 + (v26 | v24) + 1;
      }

      v22 = *(a1 + v20);
      if (*(a1 + v20))
      {
        goto LABEL_23;
      }
    }
  }

LABEL_36:
  if ((v15 & 0x80000000) == 0)
  {
    v27 = *(a1 + 1);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }

  if (v9 == v16)
  {
    if (v8 >= 2)
    {
      v30 = (*(v7 + 48))((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v29 = *(v10 + 48);

  return v29((v19 + ((v18 + ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v14, v11);
}

void sub_1BD698158(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_1BE04AA64() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v13 + 80);
  v18 = *(v13 + 64);
  if (v12 <= v14)
  {
    v19 = *(v13 + 84);
  }

  else
  {
    v19 = v12;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (v11)
  {
    v22 = v16;
  }

  else
  {
    v22 = v16 + 1;
  }

  v23 = v22 + 7;
  v21 = (v15 + 48) & ~v15;
  v24 = ((v17 + 8 + ((v23 + v21) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + v18;
  if (a3 <= v20)
  {
    goto LABEL_24;
  }

  if (v24 <= 3)
  {
    v25 = ((a3 - v20 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
    if (HIWORD(v25))
    {
      v8 = 4;
      if (v20 >= a2)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

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
      v8 = v26;
    }

    else
    {
      v8 = 0;
    }

LABEL_24:
    if (v20 >= a2)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v8 = 1;
  if (v20 >= a2)
  {
LABEL_34:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v24] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      *&a1[v24] = 0;
    }

    else if (v8)
    {
      a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    if (!a2)
    {
      return;
    }

LABEL_41:
    if ((v19 & 0x80000000) != 0)
    {
      if (v12 == v20)
      {
        if (v11 >= 2)
        {
          v30 = *(v10 + 56);

          v30((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 16) & ~v15, (a2 + 1));
        }
      }

      else
      {
        v31 = *(v13 + 56);

        v31((v17 + 8 + ((v23 + ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 16) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v17, a2, v14);
      }
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = (a2 - 1);
    }

    return;
  }

LABEL_25:
  v27 = ~v20 + a2;
  if (v24 >= 4)
  {
    bzero(a1, ((v17 + 8 + ((v23 + v21) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + v18);
    *a1 = v27;
    v28 = 1;
    if (v8 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v28 = (v27 >> (8 * v24)) + 1;
  if (!v24)
  {
LABEL_56:
    if (v8 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v29 = v27 & ~(-1 << (8 * v24));
  bzero(a1, ((v17 + 8 + ((v23 + v21) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + v18);
  if (v24 == 3)
  {
    *a1 = v29;
    a1[2] = BYTE2(v29);
    goto LABEL_56;
  }

  if (v24 == 2)
  {
    *a1 = v29;
    if (v8 > 1)
    {
LABEL_60:
      if (v8 == 2)
      {
        *&a1[v24] = v28;
      }

      else
      {
        *&a1[v24] = v28;
      }

      return;
    }
  }

  else
  {
    *a1 = v27;
    if (v8 > 1)
    {
      goto LABEL_60;
    }
  }

LABEL_57:
  if (v8)
  {
    a1[v24] = v28;
  }
}

uint64_t sub_1BD698510(uint64_t a1)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F818);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v4 = sub_1BE051774();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v16[-v11];
  v13 = *(a1 + 24);
  v17 = v3;
  v18 = v13;
  v19 = v1;
  sub_1BE051764();
  swift_getWitnessTable();
  sub_1BD147308(v8);
  v14 = *(v5 + 8);
  v14(v8, v4);
  sub_1BD147308(v12);
  return (v14)(v12, v4);
}

uint64_t sub_1BD698714@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v28[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F818);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v28 - v13;
  v15 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v28 - v22;
  v24 = type metadata accessor for SetupBulletContentView();
  sub_1BD147308(a1 + *(v24 + 52));
  *v14 = sub_1BE04F7C4();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F820);
  sub_1BD698990(a1, a2, a3, &v14[*(v25 + 44)]);
  (*(v15 + 16))(v19, v23, a2);
  v30[0] = v19;
  sub_1BD0DE19C(v14, v10, &qword_1EBD4F818);
  v30[1] = v10;
  v29[0] = a2;
  v29[1] = v7;
  v28[2] = a3;
  v28[3] = sub_1BD699058();
  sub_1BD13A4C4(v30, 2uLL, v29);
  sub_1BD0DE53C(v14, &qword_1EBD4F818);
  v26 = *(v15 + 8);
  v26(v23, a2);
  sub_1BD0DE53C(v10, &qword_1EBD4F818);
  return (v26)(v19, a2);
}

uint64_t sub_1BD698990@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v60[1] = a2;
  v61 = a3;
  v68 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F830);
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v60 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v60 - v11;
  v13 = sub_1BE04AA64();
  v62 = *(v13 - 8);
  v63 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v60 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F838);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v73 = v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v76 = v60 - v26;
  v27 = a1[1];
  v77 = *a1;
  v78 = v27;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v28 = sub_1BE0506C4();
  v30 = v29;
  v66 = v31;
  v72 = v32;
  v33 = a1[3];
  if (v33)
  {
    v77 = a1[2];
    v78 = v33;
    sub_1BE048C84();
    v34 = sub_1BE0506C4();
    v36 = v35;
    v70 = v38;
    v71 = v34;
    v65 = v37 & 1;
    sub_1BD0D7F18(v34, v38, v37 & 1);
    v69 = v36;
    sub_1BE048C84();
    v67 = 256;
    v39 = a1[5];
    if (!v39)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v70 = 0;
    v71 = 0;
    v65 = 0;
    v69 = 0;
    v67 = 0;
    v39 = a1[5];
    if (!v39)
    {
      goto LABEL_7;
    }
  }

  v60[0] = a1[4];
  v40 = type metadata accessor for SetupBulletContentView();
  sub_1BD0DE19C(a1 + *(v40 + 44), v12, &unk_1EBD3CF70);
  v42 = v62;
  v41 = v63;
  if ((*(v62 + 48))(v12, 1, v63) != 1)
  {
    (*(v42 + 32))(v20, v12, v41);
    v46 = (*(v42 + 16))(v16, v20, v41);
    v61 = v60;
    MEMORY[0x1EEE9AC00](v46, v47);
    v60[-2] = v60[0];
    v60[-1] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FFF0);
    sub_1BD6990C4();
    sub_1BE0504B4();
    (*(v42 + 8))(v20, v41);
    v45 = v74;
    v48 = v75;
    (*(v74 + 32))(v76, v8, v75);
    v44 = v48;
    v43 = 0;
    goto LABEL_9;
  }

  sub_1BD0DE53C(v12, &unk_1EBD3CF70);
LABEL_7:
  v43 = 1;
  v45 = v74;
  v44 = v75;
LABEL_9:
  v49 = v76;
  (*(v45 + 56))(v76, v43, 1, v44);
  v50 = v73;
  sub_1BD0DE19C(v49, v73, &qword_1EBD4F838);
  v51 = v68;
  v52 = v69;
  *v68 = v28;
  v51[1] = v30;
  v53 = v66 & 1;
  *(v51 + 16) = v66 & 1;
  LODWORD(v75) = v53;
  v74 = v30;
  v64 = v28;
  v51[3] = v72;
  *(v51 + 32) = v33 != 0;
  v55 = v70;
  v54 = v71;
  v51[5] = v71;
  v51[6] = v55;
  v56 = v65;
  v51[7] = v65;
  v51[8] = v52;
  *(v51 + 36) = v67;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F840);
  sub_1BD0DE19C(v50, v51 + *(v57 + 64), &qword_1EBD4F838);
  v58 = v74;
  sub_1BD0D7F18(v28, v74, v53);
  sub_1BE048C84();
  sub_1BD1969AC(v54, v55, v56, v52);
  sub_1BD1969F0(v54, v55, v56, v52);
  sub_1BD0DE53C(v76, &qword_1EBD4F838);
  sub_1BD0DE53C(v50, &qword_1EBD4F838);
  sub_1BD1969F0(v54, v55, v56, v52);
  sub_1BD0DDF10(v64, v58, v75);
}

double sub_1BD698F68@<D0>(uint64_t a1@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v2 = sub_1BE0506C4();
  if (qword_1EBD36E40 != -1)
  {
    v7 = v2;
    v8 = v3;
    v9 = v5;
    v10 = v4;
    swift_once();
    v4 = v10;
    v3 = v8;
    v2 = v7;
    v5 = v9;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v5;
  *(a1 + 48) = 0;
  result = *&xmmword_1EBDAB5A8;
  *(a1 + 56) = xmmword_1EBDAB5A8;
  return result;
}

unint64_t sub_1BD699058()
{
  result = qword_1EBD4F828;
  if (!qword_1EBD4F828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F828);
  }

  return result;
}

unint64_t sub_1BD6990C4()
{
  result = qword_1EBD3FFE8;
  if (!qword_1EBD3FFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FFF0);
    sub_1BD282440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FFE8);
  }

  return result;
}

id sub_1BD699150()
{
  v0 = sub_1BE04AA64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04A874();
  __swift_allocate_value_buffer(v5, qword_1EBDAB400);
  v6 = __swift_project_value_buffer(v5, qword_1EBDAB400);
  result = PKPassKitUIBundle();
  if (result)
  {
    v8 = result;
    v9 = [result bundleURL];

    sub_1BE04A9F4();
    (*(v1 + 32))(v6, v4, v0);
    return (*(*(v5 - 8) + 104))(v6, *MEMORY[0x1E6968DF8], v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for NonMeCardAddressSection()
{
  result = qword_1EBD4F848;
  if (!qword_1EBD4F848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD69933C()
{
  sub_1BD1030A8();
  if (v0 <= 0x3F)
  {
    sub_1BD359720(319, &qword_1EBD40448, &qword_1EBD40450, &unk_1BE0D7250, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1BD359720(319, &qword_1EBD42960, &qword_1EBD393C8, "\b6\r", MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id sub_1BD699464@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F858);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v59 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F860);
  v60 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v58 = &v49 - v15;
  v16 = v1[5];
  v72 = v1[4];
  v73 = v16;
  v74 = v1[6];
  v17 = v1[1];
  v68 = *v1;
  v69 = v17;
  v18 = v1[3];
  v70 = v1[2];
  v71 = v18;
  v19 = sub_1BD514814();
  if (v19 >> 62)
  {
    if (sub_1BE053704() >= 1)
    {
LABEL_3:
      v57 = v10;
      (*(v5 + 104))(v8, *MEMORY[0x1E69B8068], v4);
      result = PKPassKitBundle();
      if (result)
      {
        v21 = result;
        v54 = v9;
        v55 = v13;
        v56 = a1;
        v22 = sub_1BE04B6F4();
        v24 = v23;

        (*(v5 + 8))(v8, v4);
        v64 = v22;
        v65 = v24;
        sub_1BD0DDEBC();
        v64 = sub_1BE0506C4();
        v65 = v25;
        v66 = v26 & 1;
        v67 = v27;
        MEMORY[0x1EEE9AC00](v64, v25);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F868);
        sub_1BD69B7F0();
        sub_1BE051A24();

        v64 = sub_1BD69B060(v2);
        v65 = v28;
        v52 = sub_1BE0506C4();
        v51 = v29;
        v31 = v30;
        v53 = v32;
        v33 = (v2 + *(type metadata accessor for NonMeCardAddressSection() + 36));
        v34 = *v33;
        v35 = v33[1];
        v64 = *v33;
        v65 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990);
        sub_1BE0516A4();
        v36 = v62;
        if (v62)
        {
        }

        LOBYTE(v62) = v36 != 0;
        sub_1BE051944();
        v50 = v66;
        v62 = v34;
        v63 = v35;
        v37 = sub_1BE0516A4();
        v49 = &v49;
        v38 = v61;
        v62 = v61;
        MEMORY[0x1EEE9AC00](v37, v39);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200);
        sub_1BD0E8CBC();
        sub_1BD69BAD4();
        sub_1BD35CEE0();
        v40 = v54;
        v41 = v58;
        v42 = v31;
        v43 = v52;
        v44 = v51;
        v45 = v59;
        sub_1BE050F04();

        sub_1BD0DDF10(v43, v44, v42 & 1);

        (*(v57 + 8))(v45, v40);
        v46 = v56;
        v47 = v55;
        (*(v60 + 32))(v56, v41, v55);
        return (*(v60 + 56))(v46, 0, 1, v47);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_3;
  }

  v48 = *(v60 + 56);

  return v48(a1, 1, 1, v13);
}

__n128 sub_1BD699B00@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = type metadata accessor for NonMeCardAddressSection();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v26 = a1;
  v24[1] = swift_getKeyPath();
  sub_1BD69BB6C(a3, v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  sub_1BD69C33C(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + ((v11 + 24) & ~v11), type metadata accessor for NonMeCardAddressSection);
  v13 = a2;
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F8A0);
  sub_1BD0DE4F4(&qword_1EBD4B6E0, &qword_1EBD38868);
  sub_1BD69B9E4();
  v14 = v25;
  sub_1BE0519C4();
  sub_1BD69BB6C(a3, v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  sub_1BD69C33C(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + ((v11 + 16) & ~v11), type metadata accessor for NonMeCardAddressSection);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1BD69BEA8;
  *(v16 + 24) = v15;
  v17 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F880) + 36));
  *v17 = sub_1BD458BE8;
  v17[1] = v16;
  v18 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F868) + 36));
  __asm { FMOV            V0.2D, #16.0 }

  *v18 = result;
  v18[1] = result;
  v18[2].n128_u8[0] = 0;
  return result;
}

id sub_1BD699DA8@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a4;
  v7 = type metadata accessor for NonMeCardAddressSection();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v46 - v13;
  v15 = *a1;
  if (a2 && (sub_1BD0E8CBC(), v16 = v15, v17 = a2, v18 = sub_1BE053074(), v16, v17, (v18 & 1) != 0))
  {
    v20 = *(a3 + 40) != 2 || *(a3 + 24) != 0;
    LODWORD(v51) = 1;
  }

  else
  {
    LODWORD(v51) = 0;
    v20 = 0;
  }

  v21 = [v15 pk_displayName];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1BE052434();
    v50 = v24;

    v25 = v23;
  }

  else
  {
    v25 = 0;
    v50 = 0;
  }

  v47 = v20;
  v46 = sub_1BD69A1A0(v15, v20);
  v27 = v26;
  sub_1BD69BB6C(a3, v14);
  v28 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v29 = (v9 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = a3;
  v31 = v14;
  v32 = swift_allocObject();
  v49 = type metadata accessor for NonMeCardAddressSection;
  v33 = sub_1BD69C33C(v31, v32 + v28, type metadata accessor for NonMeCardAddressSection);
  v48 = &v46;
  *(v32 + v29) = v15;
  MEMORY[0x1EEE9AC00](v33, v34);
  *(&v46 - 6) = v25;
  v35 = v46;
  *(&v46 - 5) = v50;
  *(&v46 - 4) = v35;
  *(&v46 - 3) = v27;
  *(&v46 - 16) = v47;
  *(&v46 - 15) = v51;
  *(&v46 - 1) = v30;
  v51 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A68);
  sub_1BD35D868();
  sub_1BE051704();

  sub_1BD69BB6C(v30, v31);
  v36 = swift_allocObject();
  v37 = v49;
  sub_1BD69C33C(v31, v36 + v28, v49);
  v39 = v51;
  v38 = v52;
  *(v36 + v29) = v51;
  sub_1BD69BB6C(v30, v38);
  v40 = swift_allocObject();
  sub_1BD69C33C(v38, v40 + v28, v37);
  *(v40 + v29) = v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F8A0);
  v42 = (v53 + *(v41 + 36));
  *v42 = sub_1BD69BFAC;
  v42[1] = v36;
  v42[2] = sub_1BD69C1CC;
  v42[3] = v40;
  v43 = *(type metadata accessor for ListRowGestureActionsModifier() + 24);
  *(v42 + v43) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  swift_storeEnumTagMultiPayload();
  v44 = v39;

  return v44;
}

id sub_1BD69A1A0(id result, char a2)
{
  if (a2)
  {
    v3 = *(v2 + 40);
    if (v3 < 2)
    {
      v4 = *(v2 + 24);
      sub_1BD35D998(v4, *(v2 + 32), v3);
      return v4;
    }
  }

  else
  {
    result = [result pkSingleLineFormattedContactAddress];
    if (result)
    {
LABEL_7:
      v5 = result;
      v4 = sub_1BE052434();

      return v4;
    }

    __break(1u);
  }

  result = [result pkSingleLineFormattedContactAddress];
  if (result)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1BD69A23C(void *a1)
{
  v63 = a1;
  v2 = sub_1BE04D214();
  v60 = *(v2 - 8);
  v61 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051AD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v58 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40528);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40530);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v62 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v58 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v58 - v27;
  type metadata accessor for NonMeCardAddressSection();
  v64 = v1;
  sub_1BD70A2C8(v17);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
  v30 = (*(*(v29 - 8) + 48))(v17, 1, v29);
  v59 = v5;
  if (v30 == 1)
  {
    sub_1BD0DE53C(v17, &qword_1EBD40450);
    v31 = 1;
  }

  else
  {
    MEMORY[0x1BFB3E970](v29);
    sub_1BD0DE53C(v17, &qword_1EBD40520);
    v31 = 0;
  }

  v32 = *(v7 + 56);
  v32(v28, v31, 1, v6);
  (*(v7 + 104))(v24, *MEMORY[0x1E697D710], v6);
  v32(v24, 0, 1, v6);
  v33 = *(v10 + 48);
  sub_1BD69C284(v28, v13);
  sub_1BD69C284(v24, &v13[v33]);
  v34 = *(v7 + 48);
  if (v34(v13, 1, v6) == 1)
  {
    sub_1BD0DE53C(v24, &qword_1EBD40530);
    sub_1BD0DE53C(v28, &qword_1EBD40530);
    if (v34(&v13[v33], 1, v6) == 1)
    {
      sub_1BD0DE53C(v13, &qword_1EBD40530);
      v35 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v36 = v62;
  sub_1BD69C284(v13, v62);
  if (v34(&v13[v33], 1, v6) == 1)
  {
    sub_1BD0DE53C(v24, &qword_1EBD40530);
    sub_1BD0DE53C(v28, &qword_1EBD40530);
    (*(v7 + 8))(v36, v6);
LABEL_9:
    sub_1BD0DE53C(v13, &qword_1EBD40528);
    v35 = 0;
    goto LABEL_11;
  }

  v37 = v58;
  (*(v7 + 32))(v58, &v13[v33], v6);
  sub_1BD69C2F4(&qword_1EBD40538, MEMORY[0x1E697D718]);
  v38 = v36;
  v35 = sub_1BE052334();
  v39 = *(v7 + 8);
  v39(v37, v6);
  sub_1BD0DE53C(v24, &qword_1EBD40530);
  sub_1BD0DE53C(v28, &qword_1EBD40530);
  v39(v38, v6);
  sub_1BD0DE53C(v13, &qword_1EBD40530);
LABEL_11:
  v40 = v63;
  v41 = v64;
  v42 = [v63 valueSource];
  if (!v42)
  {
    [v40 setValueSource_];
    if (v35)
    {
      goto LABEL_13;
    }

LABEL_19:
    (*(v41 + 144))(v40, 0, 0, 1);
    return;
  }

  if ((v35 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v43 = *(v41 + 8);
  if (v43 && (sub_1BD0E8CBC(), v44 = v40, v45 = v43, v46 = sub_1BE053074(), v45, v44, (v46 & 1) != 0))
  {
    if (*(v41 + 40) != 2 || *(v41 + 24) != 0)
    {
      (*(v41 + 144))(v44, 0, 0, 1);
    }
  }

  else
  {
    v47 = v59;
    sub_1BE04D084();
    v48 = v40;
    v49 = sub_1BE04D204();
    v50 = sub_1BE052C54();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v65 = v52;
      *v51 = 136315138;
      v53 = [v48 description];
      v54 = sub_1BE052434();
      v56 = v55;

      v57 = sub_1BD123690(v54, v56, &v65);

      *(v51 + 4) = v57;
      _os_log_impl(&dword_1BD026000, v49, v50, "Selected shipping address: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x1BFB45F20](v52, -1, -1);
      MEMORY[0x1BFB45F20](v51, -1, -1);
    }

    (*(v60 + 8))(v47, v61);
    (*(v41 + 112))(v48);
  }
}

uint64_t sub_1BD69A9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29[2] = a7;
  v30 = a8;
  v14 = type metadata accessor for ShippingAddressRow();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBD36C60 != -1)
  {
    swift_once();
  }

  v19 = qword_1EBDAB200;
  v18 = *algn_1EBDAB208;
  v20 = qword_1EBDAB210;
  v29[1] = qword_1EBDAB210;
  *v17 = a1;
  *(v17 + 1) = a2;
  *(v17 + 2) = a3;
  *(v17 + 3) = a4;
  v17[32] = a5 & 1;
  *(v17 + 5) = v19;
  *(v17 + 6) = v18;
  *(v17 + 7) = v20;
  v17[64] = a6 & 1;
  v21 = v14[9];
  *&v17[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  swift_storeEnumTagMultiPayload();
  v22 = v14[10];
  *&v17[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
  swift_storeEnumTagMultiPayload();
  *&v17[v14[11]] = 0x4028000000000000;
  KeyPath = swift_getKeyPath();
  type metadata accessor for NonMeCardAddressSection();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A68);
  v25 = v30;
  v26 = (v30 + *(v24 + 36));
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D410) + 28);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BD70A2C8(v26 + v27);
  *v26 = KeyPath;
  return sub_1BD69C33C(v17, v25, type metadata accessor for ShippingAddressRow);
}

uint64_t sub_1BD69AC38(uint64_t a1, void *a2)
{
  v3 = objc_allocWithZone(MEMORY[0x1E69B8CF8]);
  v4 = a2;
  v5 = [v3 init];
  [v5 setDefaultShippingAddress_];

  sub_1BD69A23C(v4);
  type metadata accessor for NonMeCardAddressSection();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990);
  return sub_1BE0516B4();
}

uint64_t sub_1BD69ACF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0B7020;
  *(v4 + 32) = a2;
  v5 = a2;
  v3(v4);
}

uint64_t sub_1BD69AD74()
{
  v1 = sub_1BE04B304();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[5];
  v34 = v0[4];
  v35 = v6;
  v36 = v0[6];
  v7 = v0[1];
  v30 = *v0;
  v31 = v7;
  v8 = v0[3];
  v32 = v0[2];
  v33 = v8;
  v9 = sub_1BD514814();
  v10 = *(v0 + 17);
  v25 = *(v0 + 16);
  v24 = v10;
  sub_1BE04B344();
  sub_1BD69C2F4(&unk_1EBD4D4D0, MEMORY[0x1E6969B50]);
  v11 = sub_1BE052AE4();
  if (!v11)
  {

    v20 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v25(v20);
  }

  v12 = v11;
  v29 = MEMORY[0x1E69E7CC0];
  sub_1BE0538E4();
  result = sub_1BE052AD4();
  if (v12 < 0)
  {
    goto LABEL_15;
  }

  v22 = v2;
  v23 = v1;
  v14 = v9 & 0xC000000000000001;
  v27 = v9 & 0xFFFFFFFFFFFFFF8;
  v26 = v9 + 32;
  v15 = v9;
  while (1)
  {
    v16 = sub_1BE052B34();
    v18 = *v17;
    result = v16(v28, 0);
    if (v14)
    {
      MEMORY[0x1BFB40900](v18, v9);
      goto LABEL_5;
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v18 >= *(v27 + 16))
    {
      goto LABEL_14;
    }

    v19 = *(v26 + 8 * v18);
LABEL_5:
    sub_1BE0538C4();
    sub_1BE0538F4();
    sub_1BE053904();
    sub_1BE0538D4();
    sub_1BE052B14();
    --v12;
    v9 = v15;
    if (!v12)
    {
      (*(v22 + 8))(v5, v23);

      v20 = v29;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1BD69B060(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + *(type metadata accessor for NonMeCardAddressSection() + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990);
  sub_1BE0516A4();
  v7 = v16;
  if (!v16)
  {
    return 0;
  }

  v8 = [v16 pkSingleLineFormattedContactAddressIncludingCountryName_];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_1BE052434();
  v11 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BE0B69E0;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1BD110550();
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2);
  v13 = sub_1BE04B714();

  (*(v3 + 8))(v6, v2);
  return v13;
}

uint64_t sub_1BD69B260(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NonMeCardAddressSection();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  sub_1BD69BB6C(a2, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_1BD69C33C(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for NonMeCardAddressSection);
  sub_1BE051704();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  sub_1BE050DE4();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1BD69B4B4()
{
  type metadata accessor for NonMeCardAddressSection();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990);
  return sub_1BE0516B4();
}

id sub_1BD69B518@<X0>(uint64_t a1@<X8>)
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

id sub_1BD69B674@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_1BD69B7F0()
{
  result = qword_1EBD4F870;
  if (!qword_1EBD4F870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F868);
    sub_1BD69B8A8();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F870);
  }

  return result;
}

unint64_t sub_1BD69B8A8()
{
  result = qword_1EBD4F878;
  if (!qword_1EBD4F878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F880);
    sub_1BD69B960();
    sub_1BD0DE4F4(&qword_1EBD44C28, &qword_1EBD4D4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F878);
  }

  return result;
}

unint64_t sub_1BD69B960()
{
  result = qword_1EBD4F888;
  if (!qword_1EBD4F888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F890);
    sub_1BD69B9E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F888);
  }

  return result;
}

unint64_t sub_1BD69B9E4()
{
  result = qword_1EBD4F898;
  if (!qword_1EBD4F898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F8A0);
    sub_1BD0DE4F4(&qword_1EBD42A18, &qword_1EBD42A20);
    sub_1BD69C2F4(&qword_1EBD42A38, type metadata accessor for ListRowGestureActionsModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F898);
  }

  return result;
}

unint64_t sub_1BD69BAD4()
{
  result = qword_1EBD4F8A8;
  if (!qword_1EBD4F8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F858);
    sub_1BD69B7F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F8A8);
  }

  return result;
}

uint64_t sub_1BD69BB6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonMeCardAddressSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD69BBD0()
{
  type metadata accessor for NonMeCardAddressSection();

  return sub_1BD69B4B4();
}

id sub_1BD69BC30@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NonMeCardAddressSection() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1BD699DA8(a1, v6, v7, a2);
}

uint64_t objectdestroyTm_76()
{
  v1 = type metadata accessor for NonMeCardAddressSection();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_1BD35D02C(*(v2 + 24), *(v2 + 32), *(v2 + 40));

  v3 = v2 + *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
    {

      v5 = *(v4 + 32);
      v6 = sub_1BE051AD4();
      (*(*(v6 - 8) + 8))(v3 + v5, v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_12Tm_0()
{
  v1 = type metadata accessor for NonMeCardAddressSection();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;

  sub_1BD35D02C(*(v4 + 24), *(v4 + 32), *(v4 + 40));

  v5 = v0 + v2 + *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {

      v7 = *(v6 + 32);
      v8 = sub_1BE051AD4();
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD69C1E4(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for NonMeCardAddressSection() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_1BD69C284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD69C2F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD69C33C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD69C3A4()
{
  result = qword_1EBD4F8B0;
  if (!qword_1EBD4F8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F8B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F858);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD45200);
    sub_1BD0E8CBC();
    sub_1BD69BAD4();
    sub_1BD35CEE0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F8B0);
  }

  return result;
}

uint64_t sub_1BD69C4BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD69C504(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD69C584@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47490) - 8;
  MEMORY[0x1EEE9AC00](v85, v3);
  v86 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v88 = &v73 - v7;
  v8 = a1[9];
  v84 = a1[8];
  v89 = v8;
  v83 = __swift_project_boxed_opaque_existential_1(a1 + 5, v84);
  v9 = a1[3];
  v108 = a1[2];
  v109 = v9;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v10 = sub_1BE0506C4();
  v12 = v11;
  v14 = v13;
  v15 = sub_1BE0505F4();
  v17 = v16;
  v19 = v18;
  sub_1BD0DDF10(v10, v12, v14 & 1);

  v89 = sub_1BE050574();
  v83 = v20;
  v84 = v21;
  v23 = v22;
  sub_1BD0DDF10(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  v82 = KeyPath;
  v25 = swift_getKeyPath();
  v80 = v25;
  LOBYTE(v97) = v23 & 1;
  v26 = v23 & 1;
  v81 = v26;
  v90 = 0;
  v27 = sub_1BE050224();
  sub_1BE04E1F4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v78 = v34;
  LOBYTE(v108) = 0;
  v79 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v76 = v36;
  v77 = v35;
  v74 = v38;
  v75 = v37;
  v39 = v88;
  sub_1BE051984();
  LOBYTE(v10) = sub_1BE0501E4();
  sub_1BE04E1F4();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8) + 36);
  *v48 = v10;
  *(v48 + 8) = v41;
  *(v48 + 16) = v43;
  *(v48 + 24) = v45;
  *(v48 + 32) = v47;
  *(v48 + 40) = 0;
  LOBYTE(v10) = sub_1BE050224();
  sub_1BE04E1F4();
  v49 = v86;
  v50 = v39 + *(v85 + 44);
  *v50 = v10;
  *(v50 + 8) = v51;
  *(v50 + 16) = v52;
  *(v50 + 24) = v53;
  *(v50 + 32) = v54;
  *(v50 + 40) = 0;
  sub_1BD0DE19C(v39, v49, &qword_1EBD47490);
  v56 = v83;
  v55 = v84;
  *&v97 = v89;
  *(&v97 + 1) = v83;
  LOBYTE(v98) = v26;
  *(&v98 + 1) = *v92;
  DWORD1(v98) = *&v92[3];
  *(&v98 + 1) = v84;
  *&v99 = KeyPath;
  BYTE8(v99) = 0;
  *(&v99 + 9) = *v91;
  HIDWORD(v99) = *&v91[3];
  *&v100 = v25;
  *(&v100 + 1) = 4;
  LOBYTE(v101) = 0;
  DWORD1(v101) = *(v94 + 3);
  *(&v101 + 1) = v94[0];
  BYTE8(v101) = v27;
  *(&v101 + 9) = *v93;
  HIDWORD(v101) = *&v93[3];
  *&v102 = v29;
  *(&v102 + 1) = v31;
  v58 = v77;
  v57 = v78;
  *&v103 = v33;
  *(&v103 + 1) = v78;
  LOBYTE(v104) = 0;
  *(&v104 + 1) = *v96;
  DWORD1(v104) = *&v96[3];
  LOBYTE(v26) = v79;
  BYTE8(v104) = v79;
  HIDWORD(v104) = *&v95[3];
  *(&v104 + 9) = *v95;
  v60 = v75;
  v59 = v76;
  *&v105 = v77;
  *(&v105 + 1) = v76;
  v61 = v74;
  *&v106 = v75;
  *(&v106 + 1) = v74;
  v107 = 0;
  v62 = v105;
  v63 = v106;
  v64 = v87;
  *(v87 + 160) = 0;
  v64[8] = v62;
  v64[9] = v63;
  v65 = v98;
  *v64 = v97;
  v64[1] = v65;
  v66 = v99;
  v67 = v100;
  v68 = v104;
  v64[6] = v103;
  v64[7] = v68;
  v69 = v102;
  v64[4] = v101;
  v64[5] = v69;
  v64[2] = v66;
  v64[3] = v67;
  v70 = v64;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F8C8);
  sub_1BD0DE19C(v49, v70 + *(v71 + 48), &qword_1EBD47490);
  sub_1BD0DE19C(&v97, &v108, &qword_1EBD4F8D0);
  sub_1BD0DE53C(v88, &qword_1EBD47490);
  sub_1BD0DE53C(v49, &qword_1EBD47490);
  v108 = v89;
  v109 = v56;
  v110 = v81;
  *v111 = *v92;
  *&v111[3] = *&v92[3];
  v112 = v55;
  v113 = v82;
  v114 = 0;
  *v115 = *v91;
  *&v115[3] = *&v91[3];
  v116 = v80;
  v117 = 4;
  v118 = 0;
  *&v119[3] = *(v94 + 3);
  *v119 = v94[0];
  v120 = v27;
  *&v121[3] = *&v93[3];
  *v121 = *v93;
  v122 = v29;
  v123 = v31;
  v124 = v33;
  v125 = v57;
  v126 = 0;
  *v127 = *v96;
  *&v127[3] = *&v96[3];
  v128 = v26;
  *&v129[3] = *&v95[3];
  *v129 = *v95;
  v130 = v58;
  v131 = v59;
  v132 = v60;
  v133 = v61;
  v134 = 0;
  return sub_1BD0DE53C(&v108, &qword_1EBD4F8D0);
}

uint64_t sub_1BD69CAC0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F7C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F8C0);
  return sub_1BD69C584(v1, a1 + *(v3 + 44));
}

unint64_t sub_1BD69CB10()
{
  result = qword_1EBD4F8D8;
  if (!qword_1EBD4F8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F8D8);
  }

  return result;
}

void sub_1BD69CC58(void (*a1)(unint64_t, unint64_t, void, uint64_t, double), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v65 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v65 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v65 - v21;
  v23 = sub_1BE04B944();
  v27 = MEMORY[0x1EEE9AC00](v23, v24);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v3 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_product);
  if (!v30)
  {
    a1(0xD000000000000015, 0x80000001BE134380, 0, 3, v27);
    return;
  }

  v72 = v26;
  v73 = v10;
  v74 = v25;
  v75 = v7;
  v76 = v30;
  v31 = [v76 configuration];
  if (!v31)
  {
    __break(1u);
    return;
  }

  v32 = v31;
  v33 = [v31 type];

  if (v33 != 10)
  {
    (a1)(0xD000000000000014, 0x80000001BE1343A0, 0, 1);
LABEL_15:
    v47 = v76;

    return;
  }

  v69 = v6;
  v70 = a1;
  v71 = a2;
  sub_1BD69D3C4(v76);
  if (!v34)
  {
    v70(0xD00000000000001BLL, 0x80000001BE1343C0, 0, 3);
    goto LABEL_15;
  }

  v66 = v14;
  if ([v76 primaryCredentialType] == 140)
  {
    v35 = 2;
  }

  else
  {
    v35 = 1;
  }

  v68 = *(v3 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_context);
  sub_1BE04BB94();
  v36 = objc_allocWithZone(sub_1BE04B624());
  v67 = v35;
  v37 = sub_1BE04B614();
  sub_1BE04D0E4();
  v38 = sub_1BE04D204();
  v39 = sub_1BE052C54();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1BD026000, v38, v39, "Verifying no pass already provisioned", v40, 2u);
    MEMORY[0x1BFB45F20](v40, -1, -1);
  }

  v41 = *(v75 + 8);
  v42 = v22;
  v43 = v69;
  v75 += 8;
  v41(v42, v69);
  v44 = *(v3 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_credential);
  v45 = sub_1BE04B5F4();

  if (v45)
  {
    v46 = v71;
    sub_1BE048964();
    sub_1BD69FE58(v67, v3, v70, v46, sub_1BD69FBD4);

LABEL_32:

    return;
  }

  if ((sub_1BD69DB20() & 1) == 0)
  {
    v55 = v71;
    sub_1BE048964();
    sub_1BD69E94C(v3, v70, v55);

    goto LABEL_32;
  }

  sub_1BE04D0E4();
  v48 = sub_1BE04D204();
  v49 = sub_1BE052C54();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_1BD026000, v48, v49, "Verifying no pending proofing", v50, 2u);
    MEMORY[0x1BFB45F20](v50, -1, -1);
  }

  v41(v18, v43);
  v51 = v37;
  v52 = sub_1BE04B604();
  v53 = v66;
  if (v52)
  {
    v54 = v71;
    sub_1BE048964();
    sub_1BD69FE58(v67, v3, v70, v54, sub_1BD69E460);
LABEL_31:

    goto LABEL_32;
  }

  sub_1BE04BB94();
  v56 = sub_1BE04B934();
  (*(v72 + 8))(v29, v74);
  v57 = [v76 supportsDeviceOS_];
  swift_unknownObjectRelease();
  if (!v57)
  {
    sub_1BE04D0E4();
    v61 = sub_1BE04D204();
    v62 = sub_1BE052C54();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1BD026000, v61, v62, "Device doesn't support product", v63, 2u);
      MEMORY[0x1BFB45F20](v63, -1, -1);
    }

    v41(v73, v43);
    v64 = v71;
    sub_1BE048964();
    sub_1BD69DFD0(v3, v70, v64);
    goto LABEL_31;
  }

  sub_1BE04D0E4();
  v58 = sub_1BE04D204();
  v59 = sub_1BE052C54();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_1BD026000, v58, v59, "Identity requirements satisfied", v60, 2u);
    MEMORY[0x1BFB45F20](v60, -1, -1);
  }

  v41(v53, v43);
  v70(0, 0, 0, 0);
}

uint64_t sub_1BD69D3C4(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v50 - v12;
  v14 = [a1 clientInfo];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1BE052244();
  }

  else
  {
    v16 = sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
  }

  sub_1BE04D0E4();
  sub_1BE048C84();
  v17 = sub_1BE04D204();
  v18 = sub_1BE052C54();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v51 = v4;
    v52 = v8;
    v20 = v5;
    v21 = v19;
    v22 = swift_slowAlloc();
    v55[0] = v22;
    *v21 = 136315138;
    v23 = sub_1BE052254();
    v25 = v2;
    v26 = sub_1BD123690(v23, v24, v55);

    *(v21 + 4) = v26;
    v2 = v25;
    _os_log_impl(&dword_1BD026000, v17, v18, "Setting up proofing flow manager with info %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1BFB45F20](v22, -1, -1);
    v27 = v21;
    v5 = v20;
    v4 = v51;
    v8 = v52;
    MEMORY[0x1BFB45F20](v27, -1, -1);
  }

  v28 = *(v5 + 8);
  v28(v13, v4);
  v53 = sub_1BE052434();
  v54 = v29;
  sub_1BE0537C4();
  if (!*(v16 + 16))
  {
    goto LABEL_13;
  }

  v30 = sub_1BD149040(v55);
  if ((v31 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1BD038CD0(*(v16 + 56) + 32 * v30, v56);
  sub_1BD149CE8(v55);
  if (swift_dynamicCast())
  {
    v32 = v53;
    v53 = sub_1BE052434();
    v54 = v33;
    sub_1BE0537C4();
    if (*(v16 + 16))
    {
      v34 = sub_1BD149040(v55);
      if (v35)
      {
        sub_1BD038CD0(*(v16 + 56) + 32 * v34, v56);
        sub_1BD149CE8(v55);

        if (swift_dynamicCast())
        {
          return v32;
        }

        goto LABEL_23;
      }
    }

LABEL_13:

    sub_1BD149CE8(v55);
    goto LABEL_14;
  }

LABEL_23:

LABEL_14:
  v37 = *(v2 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_precursorPass);
  if (v37)
  {
    v38 = *(v2 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_precursorPass);
    v39 = v38;
    goto LABEL_16;
  }

  v45 = *(v2 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_credential);
  if (!v45)
  {
    v39 = 0;
    goto LABEL_25;
  }

  v46 = [v45 underlyingPaymentPass];
  v39 = v46;
  if (v46)
  {
    v38 = v46;
    v37 = 0;
LABEL_16:
    v40 = v37;
    v41 = [v38 issuerAdministrativeAreaCode];

    if (v41)
    {
      v42 = sub_1BE052434();

      v43 = [v39 issuerCountryCode];
      if (v43)
      {
        v44 = v43;
        sub_1BE052434();

        return v42;
      }
    }
  }

LABEL_25:
  sub_1BE04D0E4();
  v47 = sub_1BE04D204();
  v48 = sub_1BE052C54();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1BD026000, v47, v48, "Failed to find region for proofing", v49, 2u);
    MEMORY[0x1BFB45F20](v49, -1, -1);
  }

  v28(v8, v4);
  return 0;
}

void sub_1BD69D910(void (*a1)(id, unint64_t, unint64_t, uint64_t))
{
  v2 = *MEMORY[0x1E69BC090];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  *(inited + 32) = sub_1BE052434();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v4;
  *(inited + 48) = 0xD00000000000001DLL;
  *(inited + 56) = 0x80000001BE134470;
  v5 = v2;
  sub_1BD1AACF8(inited);
  swift_setDeallocating();
  sub_1BD0DE53C(inited + 32, &qword_1EBD52080);
  v6 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v7 = sub_1BE052224();

  v8 = [v6 initWithDomain:v5 code:-1 userInfo:v7];

  v9 = v8;
  a1(v8, 0xD00000000000001DLL, 0x80000001BE134470, 4);
}

uint64_t sub_1BD69DA94()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD69DAD0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD69DB20()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v15 - v7;
  if (([objc_opt_self() currentStateForPolicy_] & 6) == 0)
  {
    if (UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled() || _AXSAssistiveTouchEnabled())
    {
      sub_1BE04D0E4();
      v10 = sub_1BE04D204();
      v11 = sub_1BE052C54();
      if (!os_log_type_enabled(v10, v11))
      {
        v9 = 1;
        goto LABEL_10;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v10, v11, "Identity product can be added due to AX settings", v12, 2u);
      v9 = 1;
    }

    else
    {
      sub_1BE04D0E4();
      v10 = sub_1BE04D204();
      v14 = sub_1BE052C54();
      if (!os_log_type_enabled(v10, v14))
      {
        v9 = 0;
        v8 = v4;
        goto LABEL_10;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v10, v14, "Identity product can not be added due lack of biometric and AX settings", v12, 2u);
      v9 = 0;
      v8 = v4;
    }

    MEMORY[0x1BFB45F20](v12, -1, -1);
LABEL_10:

    (*(v1 + 8))(v8, v0);
    return v9;
  }

  return 1;
}

void sub_1BD69DD4C(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, unint64_t, void, uint64_t), uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  sub_1BE048964();
  v8 = sub_1BE04A844();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BD6A028C;
  *(v9 + 24) = v7;
  v21 = sub_1BD267328;
  v22 = v9;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1BD126964;
  v20 = &block_descriptor_39_1;
  v10 = _Block_copy(&v17);
  sub_1BE048964();

  v11 = swift_allocObject();
  *(v11 + 16) = sub_1BD6A028C;
  *(v11 + 24) = v7;
  v21 = sub_1BD267328;
  v22 = v11;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1BD126964;
  v20 = &block_descriptor_46_2;
  v12 = _Block_copy(&v17);
  sub_1BE048964();

  v13 = PKAlertForDisplayableErrorWithHandlers(v8, 0, v10, v12);
  _Block_release(v12);
  _Block_release(v10);

  if (v13)
  {
    v14 = a2 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 8);
      ObjectType = swift_getObjectType();
      (*(v15 + 24))(v13, ObjectType, v15);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    a3(0xD000000000000013, 0x80000001BE134520, 0, 1);
  }
}

uint64_t sub_1BD69DFD0(uint64_t a1, void (*a2)(unint64_t, unint64_t, void, uint64_t), uint64_t a3)
{
  v41 = a2;
  v48 = a1;
  v46 = sub_1BE04B8D4();
  v4 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v5);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v40 - v10;
  v44 = sub_1BE04B944();
  v12 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v13);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE04BD74();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v45 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = v40 - v23;
  v25 = *(v17 + 104);
  v43 = *MEMORY[0x1E69B80D8];
  v42 = v25;
  v25(v40 - v23, v22);
  v47 = a3;
  sub_1BE048964();
  v26 = PKPassKitBundle();
  if (!v26)
  {

    __break(1u);
    goto LABEL_6;
  }

  v27 = v26;
  v40[0] = sub_1BE04B6F4();
  v40[1] = v28;

  v29 = *(v17 + 8);
  v29(v24, v16);
  sub_1BE04BB94();
  sub_1BE04B924();
  (*(v12 + 8))(v15, v44);
  v30 = v46;
  (*(v4 + 104))(v7, *MEMORY[0x1E69B7F80], v46);
  sub_1BE04B8C4();
  v31 = *(v4 + 8);
  v31(v7, v30);
  v31(v11, v30);
  v32 = v45;
  v42(v45, v43, v16);
  v33 = PKPassKitBundle();
  if (!v33)
  {
LABEL_6:

    __break(1u);
    goto LABEL_7;
  }

  v34 = v33;
  sub_1BE04B6F4();

  v29(v32, v16);
  v35 = sub_1BE052404();
  v36 = sub_1BE052404();
  v37 = PKDisplayableErrorCustom();

  if (v37)
  {

    v38 = v47;
    sub_1BE048964();
    sub_1BD69DD4C(v37, v48, v41, v38);
  }

LABEL_7:

  __break(1u);
  return result;
}

void sub_1BD69E460(uint64_t a1, uint64_t a2, void (*a3)(id, unint64_t, unint64_t, uint64_t), uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  sub_1BE048964();
  v8 = sub_1BE04A844();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BD6A0284;
  *(v9 + 24) = v7;
  v21 = sub_1BD267328;
  v22 = v9;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1BD126964;
  v20 = &block_descriptor_22_5;
  v10 = _Block_copy(&v17);
  sub_1BE048964();

  v11 = swift_allocObject();
  *(v11 + 16) = sub_1BD6A0284;
  *(v11 + 24) = v7;
  v21 = sub_1BD267328;
  v22 = v11;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1BD126964;
  v20 = &block_descriptor_29_5;
  v12 = _Block_copy(&v17);
  sub_1BE048964();

  v13 = PKAlertForDisplayableErrorWithHandlers(v8, 0, v10, v12);
  _Block_release(v12);
  _Block_release(v10);

  if (v13)
  {
    v14 = a2 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 8);
      ObjectType = swift_getObjectType();
      (*(v15 + 24))(v13, ObjectType, v15);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_1BD69D910(a3);
  }
}

void sub_1BD69E6C8(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, unint64_t, void, uint64_t), uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  sub_1BE048964();
  v8 = sub_1BE04A844();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BD6A02D4;
  *(v9 + 24) = v7;
  v21 = sub_1BD267328;
  v22 = v9;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1BD126964;
  v20 = &block_descriptor_56_0;
  v10 = _Block_copy(&v17);
  sub_1BE048964();

  v11 = swift_allocObject();
  *(v11 + 16) = sub_1BD6A02D4;
  *(v11 + 24) = v7;
  v21 = sub_1BD267328;
  v22 = v11;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1BD126964;
  v20 = &block_descriptor_63_1;
  v12 = _Block_copy(&v17);
  sub_1BE048964();

  v13 = PKAlertForDisplayableErrorWithHandlers(v8, 0, v10, v12);
  _Block_release(v12);
  _Block_release(v10);

  if (v13)
  {
    v14 = a2 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 8);
      ObjectType = swift_getObjectType();
      (*(v15 + 24))(v13, ObjectType, v15);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    a3(0xD000000000000028, 0x80000001BE134850, 0, 3);
  }
}

void sub_1BD69E94C(uint64_t a1, void (*a2)(unint64_t, unint64_t, void, uint64_t), uint64_t a3)
{
  v169 = a2;
  v177 = a1;
  v184 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v164 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v172 = &v154 - v9;
  v171 = sub_1BE04AA64();
  v176 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171, v10);
  v175 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04BD74();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v163 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v162 = &v154 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v165 = &v154 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v159 = &v154 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v161 = &v154 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v156 = &v154 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v160 = &v154 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v174 = &v154 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v155 = &v154 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v158 = &v154 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v157 = &v154 - v45;
  v46 = sub_1BE04D214();
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v48);
  v50 = &v154 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = objc_allocWithZone(MEMORY[0x1E696EE50]);
  v173 = a3;
  sub_1BE048964();
  v52 = [v51 init];
  v179 = 0;
  v53 = [v52 canEvaluatePolicy:1 error:&v179];

  v54 = v179;
  v168 = v179;
  if (v179)
  {
    v178 = v13;
    v55 = v179;
    sub_1BE04D0E4();
    v56 = v55;
    v57 = sub_1BE04D204();
    v58 = sub_1BE052C34();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v170 = v12;
      v61 = v60;
      *v59 = 138412290;
      *(v59 + 4) = v56;
      *v60 = v54;
      v62 = v56;
      _os_log_impl(&dword_1BD026000, v57, v58, "Receive error while performing LocalAuthentication canEvaluatePolicy: %@", v59, 0xCu);
      sub_1BD0DE53C(v61, &unk_1EBD3E590);
      v63 = v61;
      v12 = v170;
      MEMORY[0x1BFB45F20](v63, -1, -1);
      MEMORY[0x1BFB45F20](v59, -1, -1);
    }

    else
    {
      v62 = v57;
      v57 = v56;
    }

    (*(v47 + 8))(v50, v46);
    v13 = v178;
  }

  IsAvailable = PKPearlIsAvailable();
  v65 = *MEMORY[0x1E69B80E8];
  v66 = *(v13 + 104);
  LODWORD(v170) = IsAvailable;
  LODWORD(v178) = v65;
  if (!v53)
  {
    v67 = v174;
    if (IsAvailable)
    {
      v77 = v159;
      v66(v159);
      v78 = PKPassKitBundle();
      if (!v78)
      {
LABEL_82:

        __break(1u);
        goto LABEL_83;
      }

      v79 = v78;
      v166 = sub_1BE04B6F4();
      v167 = v80;

      v72 = *(v13 + 8);
      v72(v77, v12);
      v81 = *(v177 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_product);
      if (v81 && [*(v177 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_product) primaryCredentialType] == 129)
      {
        goto LABEL_25;
      }

      (v66)(v162, v178, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_1BE0B69E0;
      if (v81)
      {
        v99 = [v81 displayName];
        if (v99)
        {
          v100 = v12;
          v101 = v99;
          v81 = sub_1BE052434();
          v103 = v102;

          v12 = v100;
          v67 = v174;
LABEL_48:
          *(v98 + 56) = MEMORY[0x1E69E6158];
          *(v98 + 64) = sub_1BD110550();
          if (v103)
          {
            v119 = v81;
          }

          else
          {
            v119 = 0;
          }

          v120 = 0xE000000000000000;
          if (v103)
          {
            v120 = v103;
          }

          *(v98 + 32) = v119;
          *(v98 + 40) = v120;
          v118 = &v182;
          goto LABEL_70;
        }

        v81 = 0;
      }

      v103 = 0;
      goto LABEL_48;
    }

    v87 = v165;
    v66(v165);
    v88 = PKPassKitBundle();
    if (!v88)
    {
LABEL_84:

      __break(1u);
      goto LABEL_85;
    }

    v89 = v88;
    v166 = sub_1BE04B6F4();
    v167 = v90;

    v72 = *(v13 + 8);
    v72(v87, v12);
    v91 = *(v177 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_product);
    if (v91 && [*(v177 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_product) primaryCredentialType] == 129)
    {
LABEL_25:
      v74 = v156;
      (v66)(v156, v178, v12);
      v165 = sub_1BE04B714();
      goto LABEL_71;
    }

    (v66)(v163, v178, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_1BE0B69E0;
    if (v91)
    {
      v111 = [v91 displayName];
      if (v111)
      {
        v112 = v12;
        v113 = v111;
        v91 = sub_1BE052434();
        v115 = v114;

        v12 = v112;
        v67 = v174;
LABEL_64:
        *(v110 + 56) = MEMORY[0x1E69E6158];
        *(v110 + 64) = sub_1BD110550();
        if (v115)
        {
          v123 = v91;
        }

        else
        {
          v123 = 0;
        }

        v124 = 0xE000000000000000;
        if (v115)
        {
          v124 = v115;
        }

        *(v110 + 32) = v123;
        *(v110 + 40) = v124;
        v118 = &v183;
        goto LABEL_70;
      }

      v91 = 0;
    }

    v115 = 0;
    goto LABEL_64;
  }

  v67 = v174;
  if ((IsAvailable & 1) == 0)
  {
    v82 = v158;
    v66(v158);
    v83 = PKPassKitBundle();
    if (!v83)
    {
LABEL_83:

      __break(1u);
      goto LABEL_84;
    }

    v84 = v83;
    v166 = sub_1BE04B6F4();
    v167 = v85;

    v72 = *(v13 + 8);
    v72(v82, v12);
    v86 = *(v177 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_product);
    if (v86 && [*(v177 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_product) primaryCredentialType] == 129)
    {
      goto LABEL_25;
    }

    (v66)(v161, v178, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_1BE0B69E0;
    if (v86)
    {
      v105 = [v86 displayName];
      if (v105)
      {
        v106 = v12;
        v107 = v105;
        v86 = sub_1BE052434();
        v109 = v108;

        v12 = v106;
        v67 = v174;
LABEL_56:
        *(v104 + 56) = MEMORY[0x1E69E6158];
        *(v104 + 64) = sub_1BD110550();
        if (v109)
        {
          v121 = v86;
        }

        else
        {
          v121 = 0;
        }

        v122 = 0xE000000000000000;
        if (v109)
        {
          v122 = v109;
        }

        *(v104 + 32) = v121;
        *(v104 + 40) = v122;
        v118 = &v181;
        goto LABEL_70;
      }

      v86 = 0;
    }

    v109 = 0;
    goto LABEL_56;
  }

  v68 = v157;
  v66(v157);
  v69 = PKPassKitBundle();
  if (!v69)
  {
LABEL_81:

    __break(1u);
    goto LABEL_82;
  }

  v70 = v69;
  v166 = sub_1BE04B6F4();
  v167 = v71;

  v72 = *(v13 + 8);
  v72(v68, v12);
  v73 = *(v177 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_product);
  if (!v73 || [*(v177 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_product) primaryCredentialType] != 129)
  {
    (v66)(v160, v178, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_1BE0B69E0;
    if (v73)
    {
      v93 = [v73 displayName];
      if (v93)
      {
        v94 = v12;
        v95 = v93;
        v73 = sub_1BE052434();
        v97 = v96;

        v12 = v94;
        v67 = v174;
LABEL_40:
        *(v92 + 56) = MEMORY[0x1E69E6158];
        *(v92 + 64) = sub_1BD110550();
        if (v97)
        {
          v116 = v73;
        }

        else
        {
          v116 = 0;
        }

        v117 = 0xE000000000000000;
        if (v97)
        {
          v117 = v97;
        }

        *(v92 + 32) = v116;
        *(v92 + 40) = v117;
        v118 = &v180;
LABEL_70:
        v74 = *(v118 - 32);
        v165 = sub_1BE04B714();

        goto LABEL_71;
      }

      v73 = 0;
    }

    v97 = 0;
    goto LABEL_40;
  }

  v74 = v155;
  (v66)(v155, v178, v12);
  v75 = PKPassKitBundle();
  if (v75)
  {
    v76 = v75;
    v165 = sub_1BE04B6F4();

LABEL_71:
    v72(v74, v12);
    (v66)(v67, v178, v12);
    v125 = PKPassKitBundle();
    v126 = v172;
    if (!v125)
    {

      __break(1u);
      goto LABEL_79;
    }

    v127 = v125;
    v128 = v12;
    v129 = sub_1BE04B6F4();
    v131 = v130;

    v72(v67, v128);
    v132 = (v176 + 48);
    v133 = v171;
    if (v170)
    {
      sub_1BE04AA54();
      v134 = (*v132)(v126, 1, v133);
      v135 = v175;
      if (v134 != 1)
      {
        goto LABEL_76;
      }

      __break(1u);
    }

    v126 = v164;
    sub_1BE04AA54();
    v136 = (*v132)(v126, 1, v133);
    v135 = v175;
    if (v136 != 1)
    {
LABEL_76:
      v137 = v176;
      (*(v176 + 32))(v135, v126, v133);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B98D0;
      *(inited + 32) = sub_1BE052434();
      *(inited + 40) = v139;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630);
      v140 = swift_allocObject();
      *(v140 + 16) = xmmword_1BE0B69E0;
      *(v140 + 32) = v129;
      *(v140 + 40) = v131;
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
      *(inited + 48) = v140;
      *(inited + 80) = sub_1BE052434();
      *(inited + 88) = v141;
      *(inited + 120) = v133;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
      (*(v137 + 16))(boxed_opaque_existential_1, v135, v133);
      *(inited + 128) = sub_1BE052434();
      *(inited + 136) = v143;
      sub_1BE048C84();
      v144 = PKProvisioningErrorSeverityToString();
      v145 = sub_1BE052434();
      v147 = v146;

      *(inited + 168) = MEMORY[0x1E69E6158];
      *(inited + 144) = v145;
      *(inited + 152) = v147;
      v148 = sub_1BD1AACF8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52080);
      swift_arrayDestroy();
      v149 = sub_1BE052404();

      v150 = sub_1BE052404();

      sub_1BD1A8284(v148);
      v151 = sub_1BE052224();

      v152 = PKDisplayableErrorCustom();

      if (v152)
      {

        v153 = v173;
        sub_1BE048964();
        sub_1BD69E6C8(v152, v177, v169, v153);

        (*(v137 + 8))(v175, v133);

        return;
      }

LABEL_79:

      __break(1u);
    }

    __break(1u);
    goto LABEL_81;
  }

LABEL_85:

  __break(1u);
}

void sub_1BD69FBD4(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, unint64_t, void, uint64_t), uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  sub_1BE048964();
  v8 = sub_1BE04A844();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BD6A023C;
  *(v9 + 24) = v7;
  v21 = sub_1BD267328;
  v22 = v9;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1BD126964;
  v20 = &block_descriptor_156;
  v10 = _Block_copy(&v17);
  sub_1BE048964();

  v11 = swift_allocObject();
  *(v11 + 16) = sub_1BD6A023C;
  *(v11 + 24) = v7;
  v21 = sub_1BD214190;
  v22 = v11;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1BD126964;
  v20 = &block_descriptor_12_4;
  v12 = _Block_copy(&v17);
  sub_1BE048964();

  v13 = PKAlertForDisplayableErrorWithHandlers(v8, 0, v10, v12);
  _Block_release(v12);
  _Block_release(v10);

  if (v13)
  {
    v14 = a2 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 8);
      ObjectType = swift_getObjectType();
      (*(v15 + 24))(v13, ObjectType, v15);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    a3(0xD000000000000014, 0x80000001BE134450, 0, 3);
  }
}

uint64_t sub_1BD69FE58(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id, uint64_t, uint64_t, uint64_t))
{
  v41 = a3;
  v42 = a5;
  v40 = a2;
  v43 = a1;
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v39 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v39 - v17;
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = v39 - v22;
  v24 = *MEMORY[0x1E69B80E8];
  v25 = *(v7 + 104);
  v25(v39 - v22, v24, v6, v21);
  v44 = a4;
  sub_1BE048964();
  v26 = PKPassKitBundle();
  if (!v26)
  {

    __break(1u);
LABEL_14:

    __break(1u);
    goto LABEL_15;
  }

  v27 = v26;
  v39[1] = sub_1BE04B6F4();
  v39[2] = v28;

  v29 = *(v7 + 8);
  v29(v23, v6);
  if (v43 < 2)
  {
    (v25)(v10, v24, v6);
    v30 = PKPassKitBundle();
    if (!v30)
    {
LABEL_15:

      __break(1u);
      goto LABEL_16;
    }

    v31 = v30;
    sub_1BE04B6F4();
    v18 = v10;
    goto LABEL_11;
  }

  if (v43 != 2)
  {
    (v25)(v14, v24, v6);
    v33 = PKPassKitBundle();
    if (!v33)
    {
      goto LABEL_17;
    }

    v31 = v33;
    sub_1BE04B6F4();
    v18 = v14;
    goto LABEL_11;
  }

  (v25)(v18, v24, v6);
  v32 = PKPassKitBundle();
  if (v32)
  {
    v31 = v32;
    sub_1BE04B6F4();
LABEL_11:

    v29(v18, v6);
    v34 = sub_1BE052404();
    v35 = sub_1BE052404();

    v36 = PKDisplayableErrorCustom();

    if (v36)
    {

      v37 = v44;
      sub_1BE048964();
      v42(v36, v40, v41, v37);
    }

    goto LABEL_14;
  }

LABEL_16:

  __break(1u);
LABEL_17:

  __break(1u);
  return result;
}

uint64_t sub_1BD6A0380(__int16 a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04C744();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v18[-v14];
  v21 = a1 & 1;
  v22 = (a1 & 0x100) >> 8;
  v23 = a2;
  v24 = a3;
  v18[16] = a1 & 1;
  v18[17] = v22;
  v19 = a2;
  v20 = a3;
  v16 = MEMORY[0x1E69BC948];
  if ((a1 & 0x100) != 0)
  {
    v16 = MEMORY[0x1E69BC950];
  }

  (*(v7 + 104))(v10, *v16, v6, v13);
  (*(v7 + 32))(v15, v10, v6);
  sub_1BE04C784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  sub_1BD6A0C8C();
  sub_1BD170E70();
  sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
  return sub_1BE04C6E4();
}

uint64_t sub_1BD6A05C8()
{
  sub_1BE0511D4();

  return sub_1BE04C774();
}

id sub_1BD6A0624@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v57[-v11];
  v14 = *(v5 + 104);
  if ((a1 & 0x100) != 0)
  {
    v14(&v57[-v11], *MEMORY[0x1E69B80D8], v4, v12);
    result = PKPassKitBundle();
    if (result)
    {
      v35 = result;
      v36 = sub_1BE04B6F4();
      v38 = v37;

      (*(v5 + 8))(v13, v4);
      *&v63 = v36;
      *(&v63 + 1) = v38;
      sub_1BD0DDEBC();
      v39 = sub_1BE0506C4();
      v41 = v40;
      v43 = v42;
      sub_1BE050324();
      v44 = sub_1BE0505F4();
      v46 = v45;
      v48 = v47;

      sub_1BD0DDF10(v39, v41, v43 & 1);

      sub_1BE0511F4();
      v49 = sub_1BE050564();
      v51 = v50;
      LOBYTE(v36) = v52;
      v54 = v53;

      sub_1BD0DDF10(v44, v46, v48 & 1);

      v58 = v49;
      v59 = v51;
      v60 = v36 & 1;
      v61 = v54;
      v62 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v14(v8, *MEMORY[0x1E69B8068], v4, v12);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();
      v19 = v18;

      (*(v5 + 8))(v8, v4);
      *&v63 = v17;
      *(&v63 + 1) = v19;
      sub_1BD0DDEBC();
      v20 = sub_1BE0506C4();
      v22 = v21;
      LOBYTE(v16) = v23;
      sub_1BE050324();
      v24 = sub_1BE0505F4();
      v26 = v25;
      v28 = v27;

      sub_1BD0DDF10(v20, v22, v16 & 1);

      sub_1BE0511F4();
      v29 = sub_1BE050564();
      v31 = v30;
      LOBYTE(v17) = v32;
      v34 = v33;

      sub_1BD0DDF10(v24, v26, v28 & 1);

      v58 = v29;
      v59 = v31;
      v60 = v17 & 1;
      v61 = v34;
      v62 = 1;
LABEL_6:
      result = sub_1BE04F9A4();
      v55 = v64;
      v56 = v65;
      *a2 = v63;
      *(a2 + 16) = v55;
      *(a2 + 32) = v56;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD6A09FC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v4, v5);
  v9 = &v12 - v8;
  if (a1)
  {
    v13 = v6;
    sub_1BE04E4F4();
    (*(v13 + 32))(a2, v9, v4);
    return (*(v13 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v11 = *(v6 + 56);

    return v11(a2, 1, 1, v4, v7);
  }
}

uint64_t sub_1BD6A0B44()
{
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F918);
  sub_1BD0DE4F4(&qword_1EBD4F920, &qword_1EBD4F918);
  return sub_1BE051704();
}

id sub_1BD6A0C2C@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1BD6A0624(v2 | *(v1 + 16), a1);
}

uint64_t sub_1BD6A0C64(uint64_t (*a1)(void, void, void))
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return a1(v2 | *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

unint64_t sub_1BD6A0C8C()
{
  result = qword_1EBD3C5D8;
  if (!qword_1EBD3C5D8)
  {
    sub_1BE04C784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C5D8);
  }

  return result;
}

void sub_1BD6A0CE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 + 56;
      if (v2 >= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;
      v28 = v6 + 56;
      sub_1BE048C84();
      sub_1BE048C84();
      v11 = 0;
      v26 = v4;
      while (v9)
      {
        v12 = v9;
LABEL_19:
        v9 = (v12 - 1) & v12;
        if (*(v6 + 16))
        {
          v25 = (v12 - 1) & v12;
          v14 = *(*(v4 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v12)))));
          sub_1BE052434();
          sub_1BE053D04();
          v27 = v14;
          sub_1BE052524();
          v15 = sub_1BE053D64();

          v16 = -1 << *(v6 + 32);
          v17 = v15 & ~v16;
          if ((*(v28 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
          {
            v18 = ~v16;
            while (1)
            {
              v19 = sub_1BE052434();
              v21 = v20;
              if (v19 == sub_1BE052434() && v21 == v22)
              {

                goto LABEL_33;
              }

              v24 = sub_1BE053B84();

              if (v24)
              {
                break;
              }

              v17 = (v17 + 1) & v18;
              if (((*(v28 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
              {
                goto LABEL_28;
              }
            }

LABEL_33:

            return;
          }

LABEL_28:

          v9 = v25;
          v4 = v26;
        }
      }

      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v10)
        {

          return;
        }

        v12 = *(v5 + 8 * v13);
        ++v11;
        if (v12)
        {
          v11 = v13;
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1BD6A0F4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v25 = v6 + 56;
  sub_1BE048C84();
  result = sub_1BE048C84();
  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      sub_1BE053D04();
      sub_1BE052434();
      sub_1BE052524();

      result = sub_1BE053D64();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      if ((*(v25 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v23 = v9;
        v24 = v4;
        v17 = ~v15;
        while (1)
        {
          v18 = sub_1BE052434();
          v20 = v19;
          if (v18 == sub_1BE052434() && v20 == v21)
          {

            return 0;
          }

          v22 = sub_1BE053B84();

          if (v22)
          {
            break;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v25 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            v9 = v23;
            v4 = v24;
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_1BD6A1404(uint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = sub_1BE04AF64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == -1)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = *&a1;
  }

  if (byte_1EBD4F940 == 1)
  {
    v15 = v14 != 0.0 || (qword_1EBD4F938 & 0x100) == 0;
    v16 = v14;
    if (v15)
    {
      if (!a3)
      {
        return;
      }

      v17 = qword_1EBD4F938 & 1;
LABEL_22:
      a3(v17);
      return;
    }
  }

  else
  {
    v16 = v14;
    if (!byte_1EBD4F940)
    {
      v16 = v14;
      if (a2)
      {
        v16 = v14;
        if (a2 != -1)
        {
          v18 = *&qword_1EBD4F938;
          v19 = v11;
          sub_1BE04AEF4();
          sub_1BE04AEC4();
          v21 = v20;
          (*(v9 + 8))(v13, v19);
          v22 = v21 - v18;
          if (v14 < v21 - v18)
          {
            v22 = v14;
          }

          v16 = v14 - v22;
        }
      }
    }
  }

  if (v16 == 0.0 && v14 > 0.0)
  {
    if (!a3)
    {
      return;
    }

    v17 = 0;
    goto LABEL_22;
  }

  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  if (v16 <= 0.0)
  {
    v27 = 0;
  }

  else
  {
    v24 = objc_opt_self();
    v25 = swift_allocObject();
    v25[2] = v23;
    v25[3] = a3;
    v25[4] = a4;
    aBlock[4] = sub_1BD6A3848;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD198918;
    aBlock[3] = &block_descriptor_157;
    v26 = _Block_copy(aBlock);
    sub_1BE048964();
    sub_1BD0D44B8(a3);

    v27 = [v24 scheduledTimerWithTimeInterval:0 repeats:v26 block:v16];
    _Block_release(v26);
    v28 = v27;
  }

  v29 = swift_allocObject();
  v29[2] = v23;
  v29[3] = a3;
  v29[4] = a4;
  v29[5] = v27;
  sub_1BE048964();
  sub_1BD0D44B8(a3);
  sub_1BD6A1B1C(sub_1BD6A383C, v29);
}

uint64_t sub_1BD6A1728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BE051F54();
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE051FA4();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v15 = sub_1BE052D54();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  aBlock[4] = sub_1BD6A389C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_22_6;
  v17 = _Block_copy(aBlock);
  sub_1BE048964();
  sub_1BD0D44B8(a3);

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD6A38A8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v14, v10, v17);
  _Block_release(v17);

  (*(v20 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v19);
}

uint64_t sub_1BD6A19FC(uint64_t a1, uint64_t (*a2)(void))
{
  result = swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    result = swift_beginAccess();
    *(a1 + 16) = 1;
    if (a2)
    {
      return a2(0);
    }
  }

  return result;
}

id sub_1BD6A1A7C(char a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    if (a3)
    {
      a3(a1 & 1);
    }
  }

  return [a5 invalidate];
}

void sub_1BD6A1B1C(uint64_t a1, uint64_t a2)
{
  v29[0] = sub_1BE04D214();
  v4 = *(v29[0] - 8);
  MEMORY[0x1EEE9AC00](v29[0], v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04AF64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBD36D00 != -1)
  {
    swift_once();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  swift_beginAccess();
  v14 = off_1EBD4F948;
  sub_1BE048964();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  off_1EBD4F948 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1BD1D761C(0, v14[2] + 1, 1, v14);
    off_1EBD4F948 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1BD1D761C((v16 > 1), v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  v18 = &v14[2 * v17];
  v18[4] = sub_1BD6A38F0;
  v18[5] = v13;
  off_1EBD4F948 = v14;
  swift_endAccess();
  if (byte_1EBD4F940)
  {
    sub_1BE04AEF4();
    sub_1BE04AEC4();
    v20 = v19;
    (*(v9 + 8))(v12, v8);
    qword_1EBD4F938 = v20;
    byte_1EBD4F940 = 0;
    sub_1BE04D0E4();
    v21 = sub_1BE04D204();
    v22 = sub_1BE052C54();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1BD026000, v21, v22, "CardReaderFlowItem: starting prewarm", v23, 2u);
      MEMORY[0x1BFB45F20](v23, -1, -1);
    }

    (*(v4 + 8))(v7, v29[0]);
    sub_1BD14BE3C();
    v24 = sub_1BE052D54();
    v25 = [objc_allocWithZone(MEMORY[0x1E69B9170]) initWithReplyQueue_];

    v26 = swift_allocObject();
    *(v26 + 16) = v29[1];
    *(v26 + 24) = v25;
    aBlock[4] = sub_1BD6A391C;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD6A21A4;
    aBlock[3] = &block_descriptor_31_0;
    v27 = _Block_copy(aBlock);
    v28 = v25;

    [v28 tapToProvisionAvailableWithTimeout:v27 completion:60.0];
    _Block_release(v27);
  }
}

uint64_t sub_1BD6A1F5C(char a1, char a2)
{
  LOBYTE(v2) = a2;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0E4();
  v9 = sub_1BE04D204();
  v10 = sub_1BE052C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109376;
    *(v11 + 4) = a1 & 1;
    *(v11 + 8) = 1024;
    *(v11 + 10) = v2 & 1;
    _os_log_impl(&dword_1BD026000, v9, v10, "CardReaderFlowItem: finished prewarm with available: %{BOOL}d didTimeout: %{BOOL}d", v11, 0xEu);
    MEMORY[0x1BFB45F20](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  if (qword_1EBD36D00 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    swift_beginAccess();
    v12 = off_1EBD4F948;
    off_1EBD4F948 = MEMORY[0x1E69E7CC0];
    v13 = 256;
    if ((v2 & 1) == 0)
    {
      v13 = 0;
    }

    qword_1EBD4F938 = v13 & 0xFFFFFFFFFFFFFFFELL | a1 & 1;
    byte_1EBD4F940 = 1;
    v2 = v12[2];
    if (!v2)
    {
      break;
    }

    v14 = 0;
    a1 &= 1u;
    v15 = (v12 + 5);
    while (v14 < v12[2])
    {
      ++v14;
      v16 = *(v15 - 1);
      HIBYTE(v18) = a1;
      sub_1BE048964();
      v16(&v18 + 7);

      v15 += 16;
      if (v2 == v14)
      {
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }
}

uint64_t sub_1BD6A21A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  sub_1BE048964();
  v5(a2, a3);
}

uint64_t sub_1BD6A2204(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t), void *a2)
{
  v3 = v2;
  v78 = a1;
  v63[1] = swift_getObjectType();
  v77 = sub_1BE04B8D4();
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v5);
  v74 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v73 = v63 - v9;
  v72 = sub_1BE04B944();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v10);
  v70 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v2[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_context];
  KeyPath = swift_getKeyPath();
  sub_1BD187348(v2, &v81);
  v76 = v12;
  sub_1BD7CD0C0();
  v14 = *(&v81 + 1);
  if (*(*(&v81 + 1) + 16) && (sub_1BE053D04(), sub_1BE052524(), v15 = sub_1BE053D64(), v16 = -1 << *(v14 + 32), v17 = v15 & ~v16, ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
  {
    v68 = KeyPath;
    v69 = v2;
    v18 = ~v16;
    while (!*(*(v14 + 48) + v17) || *(*(v14 + 48) + v17) == 1)
    {
      v19 = sub_1BE053B84();

      if (v19)
      {
        goto LABEL_11;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_11:
    v21 = v82;
    v3 = v69;
    KeyPath = v68;
    if (!*(v82 + 16) || (sub_1BE053D04(), sub_1BE052524(), v22 = sub_1BE053D64(), v23 = -1 << *(v21 + 32), v24 = v22 & ~v23, ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0))
    {
      v20 = 1;
      goto LABEL_21;
    }

    v25 = ~v23;
    while (!*(*(v21 + 48) + v24) || *(*(v21 + 48) + v24) == 1)
    {
      v26 = sub_1BE053B84();

      if ((v26 & 1) == 0)
      {
        v24 = (v24 + 1) & v25;
        if ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
        {
          continue;
        }
      }

      v20 = v26 ^ 1;
      goto LABEL_19;
    }

LABEL_8:
    v20 = 0;
LABEL_19:
    v3 = v69;
    KeyPath = v68;
  }

  else
  {
    v20 = 0;
  }

LABEL_21:
  v84 = v81;
  v85 = v82;
  v86 = v83;
  v27 = v3;
  sub_1BD12F770(&v84, v27, KeyPath);

  v87 = *(&v84 + 1);
  sub_1BD58532C(&v87);
  v88 = v85;
  sub_1BD58532C(&v88);
  v89 = *(&v85 + 1);
  sub_1BD58532C(&v89);
  if ((v20 & 1) == 0 && *(v27 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_forceShow) != 1)
  {
    v57 = 0x80000001BE134940;
    v56 = 0xD000000000000013;
    return v78(v56, v57, 0, 1);
  }

  v69 = a2;
  v28 = swift_getKeyPath();
  v68 = v27;
  v67 = v28;
  sub_1BD187348(v27, &v81);
  v65 = v81;
  v29 = v82;
  v66 = *(&v81 + 1);
  v30 = *(&v82 + 1);
  v64 = v83;
  sub_1BE053D04();
  sub_1BE052524();
  v31 = sub_1BE053D64();
  v32 = -1 << *(v29 + 32);
  v33 = v31 & ~v32;
  if ((*(v29 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
  {
    v34 = ~v32;
    while (!*(*(v29 + 48) + v33) || *(*(v29 + 48) + v33) == 1)
    {
      v35 = sub_1BE053B84();

      if (v35)
      {
        goto LABEL_30;
      }

      v33 = (v33 + 1) & v34;
      if (((*(v29 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
LABEL_29:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v29;
    sub_1BD2A939C(2, v33, isUniquelyReferenced_nonNull_native);
    v29 = v79[0];
  }

LABEL_30:
  sub_1BE053D04();
  sub_1BE052524();
  v37 = sub_1BE053D64();
  v38 = -1 << *(v30 + 32);
  v39 = v37 & ~v38;
  if ((*(v30 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
  {
    v40 = ~v38;
    while (!*(*(v30 + 48) + v39) || *(*(v30 + 48) + v39) == 1)
    {
      v41 = sub_1BE053B84();

      if (v41)
      {
        goto LABEL_37;
      }

      v39 = (v39 + 1) & v40;
      if (((*(v30 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
LABEL_36:
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v30;
    sub_1BD2A939C(2, v39, v42);
    v30 = v79[0];
  }

LABEL_37:
  LOBYTE(v79[0]) = v65;
  v79[1] = v66;
  v79[2] = v29;
  v79[3] = v30;
  v80 = v64;
  v43 = v68;
  sub_1BD12F770(v79, v43, v67);

  v44 = v70;
  sub_1BE04BB04();
  v45 = v73;
  sub_1BE04B924();
  (*(v71 + 8))(v44, v72);
  v46 = v75;
  v47 = v74;
  v48 = v77;
  (*(v75 + 104))(v74, *MEMORY[0x1E69B7F78], v77);
  LOBYTE(v44) = sub_1BE04B8C4();
  v49 = *(v46 + 8);
  v49(v47, v48);
  v49(v45, v48);
  v50 = v69;
  if ((v44 & 1) == 0)
  {
    v56 = 0x6E6F687020746F6ELL;
    v57 = 0xE900000000000065;
    return v78(v56, v57, 0, 1);
  }

  v51 = PKTapToProvisionSupportedPaymentNetworks();
  type metadata accessor for PKPaymentNetwork(0);
  sub_1BD6A38A8(&qword_1EBD37B70, type metadata accessor for PKPaymentNetwork);
  v52 = sub_1BE052A34();

  v53 = sub_1BE04BBD4();
  v54 = [v53 allowedPaymentNetworks];

  if (v54)
  {
    v55 = sub_1BE052744();
  }

  else
  {
    v55 = MEMORY[0x1E69E7CC0];
  }

  v58 = sub_1BD53704C(v55);

  if (*(v58 + 16))
  {
    sub_1BD6A0CE4(v52, v58);
    v60 = v59;

    if (v60)
    {
      v56 = 0xD00000000000001CLL;
      v57 = 0x80000001BE134960;
      return v78(v56, v57, 0, 1);
    }
  }

  else
  {
  }

  v62 = swift_allocObject();
  *(v62 + 16) = v78;
  *(v62 + 24) = v50;
  sub_1BE048964();
  sub_1BD6A1404(0x4000000000000000, 1, sub_1BD6A37DC, v62);
}

uint64_t sub_1BD6A2C70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
  v2 = sub_1BE04C384();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0B69E0;
  *(v5 + v4) = [objc_allocWithZone(MEMORY[0x1E69B91F0]) init];
  (*(v3 + 104))(v5 + v4, *MEMORY[0x1E69B8298], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456E0);
  sub_1BE04B944();
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  v6 = *&v0[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_context];
  sub_1BE04BB94();
  sub_1BE04C3D4();
  swift_allocObject();
  v7 = sub_1BE04C394();
  v8 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) &selRef_initWithCounterpartHandles_transactionSourceCollection_paymentDataProvider_];
  [v8 disableDOBPrefill];
  v9 = type metadata accessor for ProvisioningUICoordinator();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v11 = &v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex] = 0;
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects] = MEMORY[0x1E69E7CC0];
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer] = 0;
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel] = 0;
  v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_skipRequirements] = 0;
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = 0;
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = 0;
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion] = 0;
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle] = 0;
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter] = 0;
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context] = v6;
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration] = v7;
  swift_unknownObjectWeakAssign();
  *(v11 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_previouslyAcceptedTerms] = 0;
  sub_1BE048964();
  sub_1BE048964();
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter] = sub_1BE04BBB4();
  v57.receiver = v10;
  v57.super_class = v9;
  v12 = objc_msgSendSuper2(&v57, sel_init);
  *&v12[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = &off_1F3BB4FE0;
  swift_unknownObjectWeakAssign();
  v53 = v12;
  *&v12[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate + 8] = &off_1F3BB4FC8;
  swift_unknownObjectWeakAssign();
  v13 = objc_allocWithZone(type metadata accessor for ProvisioningCardReaderViewController());
  sub_1BE048964();
  v14 = v8;
  v15 = v1;
  v52 = v14;
  sub_1BD6A36F4(v6, v14, v15, v13);
  v17 = v16;

  KeyPath = swift_getKeyPath();
  sub_1BD187348(v15, &v58);
  sub_1BD7CD0C0();
  v19 = *(&v58 + 1);
  v54 = v17;
  if (*(*(&v58 + 1) + 16))
  {
    sub_1BE053D04();
    sub_1BE052524();
    v20 = sub_1BE053D64();
    v21 = -1 << *(v19 + 32);
    v22 = v20 & ~v21;
    if ((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v19 + 48) + v22);
        if (v24 != 1 && v24 != 2)
        {
          break;
        }

        v25 = sub_1BE053B84();

        if (v25)
        {
          goto LABEL_12;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_8;
        }
      }

LABEL_12:
      v27 = *(&v59 + 1);
      v17 = v54;
      if (!*(*(&v59 + 1) + 16) || (sub_1BE053D04(), sub_1BE052524(), v28 = sub_1BE053D64(), v29 = -1 << *(v27 + 32), v30 = v28 & ~v29, ((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0))
      {
        v26 = 1;
        goto LABEL_22;
      }

      v31 = ~v29;
      while (1)
      {
        v32 = *(*(v27 + 48) + v30);
        if (v32 != 1 && v32 != 2)
        {
          break;
        }

        v33 = sub_1BE053B84();

        if ((v33 & 1) == 0)
        {
          v30 = (v30 + 1) & v31;
          if ((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
          {
            continue;
          }
        }

        v26 = v33 ^ 1;
        goto LABEL_20;
      }

LABEL_8:
      v26 = 0;
LABEL_20:
      v17 = v54;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

LABEL_22:
  v61 = v58;
  v62 = v59;
  v63 = v60;
  v34 = v15;
  sub_1BD12F770(&v61, v34, KeyPath);

  v64 = *(&v61 + 1);
  sub_1BD58532C(&v64);
  v65 = v62;
  sub_1BD58532C(&v65);
  v66 = *(&v62 + 1);
  sub_1BD58532C(&v66);
  *(v17 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_showManualEntryPresentFallBackButton) = v26 & 1;
  v35 = swift_getKeyPath();
  sub_1BD187348(v34, &v58);
  v50 = v59;
  v51 = *(&v58 + 1);
  v36 = *(&v59 + 1);
  v48 = v60;
  v49 = v58;
  sub_1BE053D04();
  sub_1BE052524();
  v37 = sub_1BE053D64();
  v38 = -1 << *(v36 + 32);
  v39 = v37 & ~v38;
  if ((*(v36 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
  {
    v40 = ~v38;
    while (1)
    {
      v41 = *(*(v36 + 48) + v39);
      if (v41 != 1 && v41 != 2)
      {
        break;
      }

      v42 = sub_1BE053B84();

      if (v42)
      {
        goto LABEL_29;
      }

      v39 = (v39 + 1) & v40;
      if (((*(v36 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
LABEL_28:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55[0] = v36;
    sub_1BD2A939C(0, v39, isUniquelyReferenced_nonNull_native);
  }

LABEL_29:
  LOBYTE(v55[0]) = v49;
  v55[1] = v51;
  v55[2] = v50;
  v55[3] = v36;
  v56 = v48;
  v44 = v34;
  sub_1BD12F770(v55, v44, v35);

  v45 = *(v54 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator);
  *(v54 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator) = v53;
  v46 = v53;

  swift_unknownObjectWeakAssign();
  *&v46[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = &off_1F3BCC6F8;
  swift_unknownObjectWeakAssign();

  return v54;
}

uint64_t sub_1BD6A35E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD6A3624(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD6A3678(uint64_t a1, void *a2, char a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BD5851D8(v3, a2, a3 & 1, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD6A36F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(a4 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator) = 0;
  *(a4 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_delegate + 8) = 0;
  v7 = swift_unknownObjectWeakInit();
  *(a4 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_footerState) = 0;
  *(a4 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_manualEntryButton) = 0;
  *(a4 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_verifyLaterButton) = 0;
  *(a4 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_showManualEntryPresentFallBackButton) = 0;
  *(v7 + 8) = &off_1F3BB4FB0;
  swift_unknownObjectWeakAssign();
  sub_1BE052434();
  v8 = sub_1BE04BB74();

  sub_1BD376B24(a1, a2, v8);
}

uint64_t sub_1BD6A37DC(char a1)
{
  if (a1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = 0x80000001BE1349A0;
    v2 = 0xD00000000000001CLL;
    v4 = 1;
  }

  return (*(v1 + 16))(v2, v3, 0, v4);
}

uint64_t objectdestroy_15Tm()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD6A38A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s11DetailSheetOMa()
{
  result = qword_1EBD366A0;
  if (!qword_1EBD366A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD6A3980()
{
  sub_1BD1033E0();
  if (v0 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD47AB0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AvailablePass(319);
      if (v2 <= 0x3F)
      {
        sub_1BD0E5E8C(319, &qword_1EBD39D98);
        if (v3 <= 0x3F)
        {
          sub_1BD6A3A50();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD6A3A50()
{
  if (!qword_1EBD4F980)
  {
    type metadata accessor for AvailablePass(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F2E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39250);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBD4F980);
    }
  }
}

uint64_t sub_1BD6A3B14(uint64_t a1)
{
  v2 = sub_1BE04C884();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1BE04F014();
}

uint64_t sub_1BD6A3BDC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v355 = a2;
  v356 = a1;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39350);
  MEMORY[0x1EEE9AC00](v317, v2);
  v316 = &v295 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v315 = &v295 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v342 = &v295 - v9;
  v10 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  *&v343 = &v295 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = type metadata accessor for PaymentPassHubView(0);
  MEMORY[0x1EEE9AC00](v357, v13);
  v351 = (&v295 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v16);
  v307 = &v295 - v17;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v323, v18);
  v321 = &v295 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v322 = &v295 - v22;
  v23 = type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView();
  v318 = *(v23 - 8);
  v319 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v306 = &v295 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v305 = &v295 - v28;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47C40);
  MEMORY[0x1EEE9AC00](v337, v29);
  v320 = &v295 - v30;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F988);
  MEMORY[0x1EEE9AC00](v335, v31);
  v336 = &v295 - v32;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47C20);
  MEMORY[0x1EEE9AC00](v350, v33);
  v338 = &v295 - v34;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F990);
  MEMORY[0x1EEE9AC00](v312, v35);
  v313 = &v295 - v36;
  v37 = type metadata accessor for SafariViewController();
  v302 = *(v37 - 8);
  v303 = v37;
  MEMORY[0x1EEE9AC00](v37, v38);
  v297 = &v295 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v299 = &v295 - v42;
  v298 = sub_1BE04AA64();
  v300 = *(v298 - 8);
  MEMORY[0x1EEE9AC00](v298, v43);
  v296 = &v295 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42558);
  MEMORY[0x1EEE9AC00](v311, v45);
  v301 = &v295 - v46;
  v308 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v308, v47);
  v309 = (&v295 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47C30);
  MEMORY[0x1EEE9AC00](v334, v49);
  v314 = &v295 - v50;
  v51 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  *&v344 = &v295 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v55);
  v324 = &v295 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v332 = &v295 - v59;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47C08);
  MEMORY[0x1EEE9AC00](v331, v60);
  v326 = (&v295 - v61);
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F998);
  v310 = *(v333 - 1);
  MEMORY[0x1EEE9AC00](v333, v62);
  v325 = &v295 - v63;
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9A0);
  MEMORY[0x1EEE9AC00](v352, v64);
  v354 = &v295 - v65;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9A8);
  MEMORY[0x1EEE9AC00](v346, v66);
  v348 = &v295 - v67;
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9B0);
  MEMORY[0x1EEE9AC00](v328, v68);
  v329 = &v295 - v69;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47C00);
  MEMORY[0x1EEE9AC00](v347, v70);
  v330 = &v295 - v71;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47BF0);
  MEMORY[0x1EEE9AC00](v353, v72);
  v349 = &v295 - v73;
  v327 = type metadata accessor for PaymentPassMethodSheet(0);
  v339 = *(v327 - 8);
  MEMORY[0x1EEE9AC00](v327, v74);
  v304 = &v295 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = v75;
  MEMORY[0x1EEE9AC00](v76, v77);
  v341 = &v295 - v78;
  v79 = type metadata accessor for BillingAddressEditor();
  MEMORY[0x1EEE9AC00](v79, v80);
  v82 = &v295 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v83, v84);
  v86 = (&v295 - v85);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  v88 = *(v87 - 8);
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v87 - 8, v90);
  v91 = &v295 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v92, v93);
  v95 = &v295 - v94;
  v96 = _s11DetailSheetOMa();
  MEMORY[0x1EEE9AC00](v96, v97);
  v99 = (&v295 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD6A6F08(v356, v99, _s11DetailSheetOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    *&v344 = v88;
    v351 = v86;
    v356 = v79;
    v134 = v325;
    v135 = v326;
    if (EnumCaseMultiPayload)
    {
      v213 = *v99;
      v214 = v341;
      sub_1BD6A6F08(v345, v341, type metadata accessor for PaymentPassMethodSheet);
      v215 = (*(v339 + 80) + 16) & ~*(v339 + 80);
      v216 = swift_allocObject();
      sub_1BD6A6EA0(v214, v216 + v215, type metadata accessor for PaymentPassMethodSheet);
      *v135 = sub_1BD6A6D34;
      v135[1] = v216;
      v135[2] = v213;
      v217 = *(type metadata accessor for PaymentSetupNavigationController(0) + 24);
      *(v135 + v217) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
      swift_storeEnumTagMultiPayload();
      v351 = v213;
      v218 = sub_1BE04EC54();
      v219 = sub_1BE0501D4();
      v220 = v331;
      v221 = v135 + v331[9];
      *v221 = v218;
      v221[8] = v219;
      v222 = sub_1BD4CD630();
      sub_1BE050E54();
      sub_1BD0DE53C(v135, &qword_1EBD47C08);
      v223 = v310;
      v224 = v333;
      (*(v310 + 16))(v329, v134, v333);
      swift_storeEnumTagMultiPayload();
      sub_1BD6A6C48(&qword_1EBD39490, type metadata accessor for BillingAddressEditor);
      *&v365 = v220;
      *(&v365 + 1) = v222;
      swift_getOpaqueTypeConformance2();
      v225 = v330;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v225, v348, &qword_1EBD47C00);
      swift_storeEnumTagMultiPayload();
      sub_1BD4CD530();
      sub_1BD4CD6EC();
      v226 = v349;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v225, &qword_1EBD47C00);
      sub_1BD0DE19C(v226, v354, &qword_1EBD47BF0);
      swift_storeEnumTagMultiPayload();
      sub_1BD4CD4A4();
      sub_1BD6A6C48(&qword_1EBD412C0, type metadata accessor for PaymentPassHubView);
      sub_1BE04F9A4();

      sub_1BD0DE53C(v226, &qword_1EBD47BF0);
      return (*(v223 + 8))(v134, v224);
    }

    else
    {
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);
      v137 = *(v99 + *(v136 + 48));
      v138 = v99 + *(v136 + 64);
      v139 = *(v138 + 1);
      v365 = *v138;
      v366 = v139;
      *&v367 = *(v138 + 4);
      sub_1BD49C65C(v99, v95);
      LODWORD(v343) = v137 != 0;
      v140 = v356;
      v141 = &v82[v356[5]];
      v295 = v95;
      sub_1BD0DE19C(v95, v141, &qword_1EBD520A0);
      v142 = v341;
      sub_1BD6A6F08(v345, v341, type metadata accessor for PaymentPassMethodSheet);
      sub_1BD0DE19C(v95, v91, &qword_1EBD520A0);
      v143 = (*(v339 + 80) + 16) & ~*(v339 + 80);
      v144 = &v340[*(v344 + 80) + v143] & ~*(v344 + 80);
      v145 = swift_allocObject();
      sub_1BD6A6EA0(v142, v145 + v143, type metadata accessor for PaymentPassMethodSheet);
      sub_1BD49C65C(v91, v145 + v144);
      v146 = &v82[v140[10]];
      *v146 = sub_1BDA570C8;
      *(v146 + 1) = 0;
      v146[16] = 0;
      v147 = &v82[v140[11]];
      v359[0] = 0;
      v148 = v137;
      sub_1BD10D494(&v365, &v361);
      sub_1BE051694();
      v149 = *(&v361 + 1);
      *v147 = v361;
      *(v147 + 1) = v149;
      *&v82[v140[12]] = 0x4064200000000000;
      *v82 = v343;
      v150 = &v82[v140[6]];
      *v150 = 0;
      v150[1] = 0;
      *&v82[v140[7]] = v137;
      v151 = &v82[v140[8]];
      v152 = v366;
      *v151 = v365;
      *(v151 + 1) = v152;
      *(v151 + 4) = v367;
      v153 = &v82[v140[9]];
      *v153 = sub_1BD6A6DC0;
      v153[1] = v145;
      v154 = v351;
      sub_1BD6A6EA0(v82, v351, type metadata accessor for BillingAddressEditor);
      sub_1BD6A6F08(v154, v329, type metadata accessor for BillingAddressEditor);
      swift_storeEnumTagMultiPayload();
      sub_1BD6A6C48(&qword_1EBD39490, type metadata accessor for BillingAddressEditor);
      v155 = sub_1BD4CD630();
      *&v361 = v331;
      *(&v361 + 1) = v155;
      swift_getOpaqueTypeConformance2();
      v156 = v330;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v156, v348, &qword_1EBD47C00);
      swift_storeEnumTagMultiPayload();
      sub_1BD4CD530();
      sub_1BD4CD6EC();
      v157 = v349;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v156, &qword_1EBD47C00);
      sub_1BD0DE19C(v157, v354, &qword_1EBD47BF0);
      swift_storeEnumTagMultiPayload();
      sub_1BD4CD4A4();
      sub_1BD6A6C48(&qword_1EBD412C0, type metadata accessor for PaymentPassHubView);
      sub_1BE04F9A4();
      sub_1BD10D558(&v365);

      sub_1BD0DE53C(v157, &qword_1EBD47BF0);
      sub_1BD6A6F70(v154, type metadata accessor for BillingAddressEditor);
      return sub_1BD0DE53C(v295, &qword_1EBD520A0);
    }
  }

  if (EnumCaseMultiPayload == 2)
  {
    v159 = v332;
    sub_1BD6A6EA0(v99, v332, type metadata accessor for AvailablePass);
    v160 = v159;
    v161 = v309;
    sub_1BD6A6F08(v160, v309, type metadata accessor for WrappedPass);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1BD6A6F70(v161, type metadata accessor for WrappedPass);
      swift_storeEnumTagMultiPayload();
      sub_1BD33E1D4();
      v162 = v314;
      sub_1BE04F9A4();
LABEL_53:
      sub_1BD0DE19C(v162, v336, &qword_1EBD47C30);
      swift_storeEnumTagMultiPayload();
      sub_1BD4CD778();
      sub_1BD4CD804();
      v270 = v338;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v270, v348, &qword_1EBD47C20);
      swift_storeEnumTagMultiPayload();
      sub_1BD4CD530();
      sub_1BD4CD6EC();
      v271 = v349;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v270, &qword_1EBD47C20);
      sub_1BD0DE19C(v271, v354, &qword_1EBD47BF0);
      swift_storeEnumTagMultiPayload();
      sub_1BD4CD4A4();
      sub_1BD6A6C48(&qword_1EBD412C0, type metadata accessor for PaymentPassHubView);
      sub_1BE04F9A4();
      sub_1BD0DE53C(v271, &qword_1EBD47BF0);
      sub_1BD0DE53C(v162, &qword_1EBD47C30);
      v272 = v332;
      return sub_1BD6A6F70(v272, type metadata accessor for AvailablePass);
    }

    v227 = *v161;
    v228 = [v227 localizedValueForFieldKey_];
    v162 = v314;
    if (v228)
    {
      sub_1BE053624();
      swift_unknownObjectRelease();
    }

    else
    {
      v361 = 0u;
      v362 = 0u;
    }

    v261 = v300;
    v262 = v301;
    v365 = v361;
    v366 = v362;
    if (*(&v362 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_51:
        v269 = 1;
LABEL_52:
        (*(v302 + 56))(v262, v269, 1, v303);
        sub_1BD0DE19C(v262, v313, &qword_1EBD42558);
        swift_storeEnumTagMultiPayload();
        sub_1BD33E1D4();
        sub_1BE04F9A4();

        sub_1BD0DE53C(v262, &qword_1EBD42558);
        goto LABEL_53;
      }

      v263 = v299;
      sub_1BE04AA54();
      v264 = v263;

      v265 = v263;
      v266 = v298;
      if ((*(v261 + 48))(v265, 1, v298) != 1)
      {
        v273 = *(v261 + 32);
        v274 = v296;
        v273(v296, v264, v266);
        v275 = v266;
        v276 = v297;
        v273(v297, v274, v275);
        sub_1BD6A6EA0(v276, v262, type metadata accessor for SafariViewController);
        v269 = 0;
        goto LABEL_52;
      }

      v267 = &unk_1EBD3CF70;
      v268 = v264;
    }

    else
    {
      v267 = &qword_1EBD3EC90;
      v268 = &v365;
    }

    sub_1BD0DE53C(v268, v267);
    goto LABEL_51;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60);
    v350 = *(v99 + *(v163 + 48));
    LODWORD(v349) = *(v99 + *(v163 + 64));
    v164 = v324;
    sub_1BD6A6EA0(v99, v324, type metadata accessor for AvailablePass);
    v165 = v345;
    v346 = *(v345 + 8);
    sub_1BD6A6F08(v164, v344, type metadata accessor for AvailablePass);
    v166 = v327;
    sub_1BD6A6F08(v165 + *(v327 + 24), v343, type metadata accessor for Passes);
    v167 = (v165 + v166[7]);
    v168 = v167[3];
    v367 = v167[2];
    v368 = v168;
    v369 = v167[4];
    v169 = v167[1];
    v365 = *v167;
    v366 = v169;
    sub_1BD0DE19C(v165 + v166[9], v342, &unk_1EBD43B30);
    v170 = v166[10];
    v356 = *(v165 + v166[11]);
    v331 = *(v165 + v170);
    v171 = (v165 + v166[14]);
    v172 = *v171;
    v173 = v171[1];
    v174 = (v165 + v166[15]);
    v175 = v174[1];
    v341 = *v174;
    v176 = (v165 + v166[16]);
    v177 = v176[1];
    v337 = *v176;
    v338 = v172;
    v178 = (v165 + v166[13]);
    v179 = *v178;
    v180 = v178[1];
    v181 = (v165 + v166[12]);
    v182 = v181[1];
    v347 = *v181;
    v183 = (v165 + v166[23]);
    v184 = v357;
    v185 = v351;
    v186 = (v351 + v357[22]);
    v187 = v183[1];
    v334 = *v183;
    v335 = v179;
    v330 = v350;
    v340 = v173;
    sub_1BE048964();
    v345 = v175;
    sub_1BE048964();
    v339 = v177;
    sub_1BE048964();
    v336 = v180;
    sub_1BE048964();
    v348 = v182;
    sub_1BE048964();
    v332 = v187;
    sub_1BE048964();
    sub_1BD0DE19C(&v365, &v361, &qword_1EBD395E0);
    type metadata accessor for PresentationContext();
    sub_1BD6A6C48(&unk_1EBD361B0, type metadata accessor for PresentationContext);
    v333 = v356;
    v188 = v331;
    v189 = v331;
    *v186 = sub_1BE04EEC4();
    v186[1] = v190;
    v191 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
    v192 = v315;
    (*(*(v191 - 8) + 56))(v315, 1, 1, v191);
    sub_1BD0DE19C(v192, v316, &qword_1EBD39350);
    sub_1BE051694();
    sub_1BD0DE53C(v192, &qword_1EBD39350);
    v193 = type metadata accessor for MultiHyperLinkDetailSheet();
    v194 = v322;
    (*(*(v193 - 8) + 56))(v322, 1, 1, v193);
    sub_1BD0DE19C(v194, v321, &unk_1EBD45160);
    sub_1BE051694();
    v195 = v194;
    v196 = v188;
    sub_1BD0DE53C(v195, &unk_1EBD45160);
    v197 = v184[26];
    *v359 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710);
    sub_1BE051694();
    *(v185 + v197) = v361;
    v198 = v185 + v184[27];
    *v359 = MEMORY[0x1E69E7CD0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39370);
    sub_1BE051694();
    v199 = *(&v361 + 1);
    *v198 = v361;
    *(v198 + 1) = v199;
    v359[0] = 0;
    sub_1BE051694();
    v329 = *(&v361 + 1);
    v200 = v185 + v184[29];
    v359[0] = 0;
    sub_1BE051694();
    v201 = *(&v361 + 1);
    *v200 = v361;
    *(v200 + 1) = v201;
    v202 = v184[30];
    *v359 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39380);
    sub_1BE051694();
    *(v185 + v202) = v361;
    v203 = v185 + v184[31];
    memset(v359, 0, 41);
    v359[41] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39390);
    sub_1BE051694();
    v204 = v362;
    *v203 = v361;
    *(v203 + 1) = v204;
    *(v203 + 2) = v363;
    *(v203 + 6) = v364;
    v205 = v184[32];
    *&v358[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393A0);
    sub_1BE051694();
    *(v185 + v205) = *v359;
    v206 = v184[33];
    *(v185 + v206) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
    swift_storeEnumTagMultiPayload();
    v328 = v203;
    if (v188)
    {
      v207 = v189;
      v208 = v189;
      sub_1BD49C81C(v208);
      v209 = sub_1BE052404();

      v210 = [v208 paymentOfferCriteriaForPassUniqueID_];

      if (v210)
      {
        sub_1BD0E5E8C(0, &unk_1EBD496A0);
        v212 = sub_1BE052744();
      }

      else
      {
        v212 = 0;
      }

      sub_1BD49C81C(v211);
      v232 = sub_1BE052404();

      v233 = [v208 eligiblePaymentOfferCriteriaForPassUniqueID_];

      if (v233)
      {
        sub_1BD0E5E8C(0, &unk_1EBD496A0);
        v229 = sub_1BE052744();
      }

      else
      {

        v229 = 0;
      }
    }

    else
    {
      v207 = v189;
      v229 = 0;
      v212 = 0;
    }

    v235 = v350;
    v234 = v351;
    v236 = v349;
    *v351 = v346;
    v237 = v357;
    sub_1BD6A6F08(v344, v234 + v357[5], type metadata accessor for AvailablePass);
    sub_1BD6A6F08(v343, v234 + v237[7], type metadata accessor for Passes);
    v238 = v234 + v237[8];
    v239 = v368;
    *(v238 + 2) = v367;
    *(v238 + 3) = v239;
    *(v238 + 4) = v369;
    v240 = v366;
    *v238 = v365;
    *(v238 + 1) = v240;
    v241 = v234 + v237[9];
    v243 = v340;
    v242 = v341;
    *v241 = v338;
    *(v241 + 1) = v243;
    v244 = (v234 + v237[10]);
    *v244 = v242;
    v244[1] = v345;
    v245 = (v234 + v237[11]);
    v246 = v339;
    *v245 = v337;
    v245[1] = v246;
    v247 = (v234 + v237[12]);
    v248 = v336;
    *v247 = v335;
    v247[1] = v248;
    v249 = (v234 + v237[13]);
    v250 = v332;
    *v249 = v334;
    v249[1] = v250;
    sub_1BD0DE19C(v342, v234 + v237[14], &unk_1EBD43B30);
    *(v234 + v237[20]) = v212;
    *(v234 + v237[21]) = v229;
    *(v234 + v237[18]) = v196;
    *(v234 + v237[17]) = v356;
    *(v234 + v237[16]) = 8;
    v251 = (v234 + v237[19]);
    v252 = v348;
    *v251 = v347;
    v251[1] = v252;
    *(v234 + v237[15]) = v236;
    *(v234 + v237[6]) = v235;
    sub_1BE048C84();
    v253 = v333;
    v350 = v207;
    *v359 = WrappedPass.secureElementPass.getter();
    v359[8] = 0;
    v349 = v253;
    if (v212)
    {
      v254 = v196;
      if (v212 >> 62)
      {
LABEL_57:
        v255 = sub_1BE053704();
        if (v255)
        {
LABEL_32:
          v256 = 0;
          while (1)
          {
            if ((v212 & 0xC000000000000001) != 0)
            {
              v257 = MEMORY[0x1BFB40900](v256, v212);
            }

            else
            {
              if (v256 >= *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_56;
              }

              v257 = *(v212 + 8 * v256 + 32);
            }

            v258 = v257;
            v259 = v256 + 1;
            if (__OFADD__(v256, 1))
            {
              __break(1u);
LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

            if ([v257 type] == 1)
            {
              break;
            }

            ++v256;
            if (v259 == v255)
            {
              goto LABEL_58;
            }
          }

          objc_opt_self();
          v260 = swift_dynamicCastObjCClass();
          if (!v260)
          {
          }

          goto LABEL_60;
        }
      }

      else
      {
        v255 = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v255)
        {
          goto LABEL_32;
        }
      }

LABEL_58:
    }

    else
    {
      v254 = v196;
    }

    v260 = 0;
LABEL_60:
    v277 = v357;
    v278 = v351;
    v279 = v351 + v357[28];
    v280 = objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
    v281 = sub_1BD8D1EE0(v359, v254, v260);

    v282 = v278 + v277[23];
    *&v358[0] = v281;
    v283 = v281;
    sub_1BE051694();
    v284 = *&v359[8];
    *v282 = *v359;
    *(v282 + 1) = v284;
    LOBYTE(v281) = sub_1BD8C1A98();

    *v279 = v281 & 1;
    *(v279 + 1) = 0;
    if (v356)
    {
      v285 = v349;
      v286 = [v349 type];
      v287 = v354;
      v288 = v330;
      if (v286 == 2)
      {
        objc_opt_self();
        v289 = swift_dynamicCastObjCClass();
        v290 = v307;
        if (v289)
        {
          v291 = [v289 rewardsRedemptionIntent];
          sub_1BD754B48(v291, v358);

          sub_1BD0DE53C(v342, &unk_1EBD43B30);
          sub_1BD6A6F70(v343, type metadata accessor for Passes);
          sub_1BD6A6F70(v344, type metadata accessor for AvailablePass);
          v292 = v328;
          v293 = *(v328 + 16);
          *v359 = *v328;
          *&v359[16] = v293;
          *&v359[32] = *(v328 + 32);
          v360 = *(v328 + 48);
          sub_1BD0DE53C(v359, &qword_1EBD394D0);
          v294 = v358[1];
          *v292 = v358[0];
          *(v292 + 16) = v294;
          *(v292 + 32) = v358[2];
          *(v292 + 48) = 0;
        }

        else
        {

          sub_1BD0DE53C(v342, &unk_1EBD43B30);
          sub_1BD6A6F70(v343, type metadata accessor for Passes);
          sub_1BD6A6F70(v344, type metadata accessor for AvailablePass);
        }
      }

      else
      {

        sub_1BD0DE53C(v342, &unk_1EBD43B30);
        sub_1BD6A6F70(v343, type metadata accessor for Passes);
        sub_1BD6A6F70(v344, type metadata accessor for AvailablePass);
        v290 = v307;
      }
    }

    else
    {

      sub_1BD0DE53C(v342, &unk_1EBD43B30);
      sub_1BD6A6F70(v343, type metadata accessor for Passes);
      sub_1BD6A6F70(v344, type metadata accessor for AvailablePass);
      v287 = v354;
      v290 = v307;
      v288 = v330;
    }

    sub_1BD6A6EA0(v351, v290, type metadata accessor for PaymentPassHubView);
    sub_1BD6A6F08(v290, v287, type metadata accessor for PaymentPassHubView);
    swift_storeEnumTagMultiPayload();
    sub_1BD4CD4A4();
    sub_1BD6A6C48(&qword_1EBD412C0, type metadata accessor for PaymentPassHubView);
    sub_1BE04F9A4();

    sub_1BD6A6F70(v290, type metadata accessor for PaymentPassHubView);
    v272 = v324;
    return sub_1BD6A6F70(v272, type metadata accessor for AvailablePass);
  }

  v101 = *v99;
  v102 = v327;
  v103 = v345;
  v104 = *(v345 + *(v327 + 40));
  v356 = *v99;
  if (!v104)
  {
    v133 = 1;
    v107 = v320;
LABEL_23:
    v116 = v319;
    goto LABEL_24;
  }

  v105 = v104;
  v106 = [v101 identifier];
  v107 = v320;
  if (!v106)
  {
    sub_1BE052434();
    v106 = sub_1BE052404();
  }

  v108 = [v105 dynamicContentPageForCriteriaIdentifier:v106 pageType:1];

  if (!v108)
  {

    v133 = 1;
    goto LABEL_23;
  }

  v333 = v108;
  v342 = v105;
  v351 = *(v103 + v102[28]);
  if (v351)
  {
    v109 = *(v103 + v102[13]);
    v343 = *(v103 + v102[12]);
    v344 = v109;
    v110 = v341;
    sub_1BD6A6F08(v103, v341, type metadata accessor for PaymentPassMethodSheet);
    v111 = (*(v339 + 80) + 16) & ~*(v339 + 80);
    v339 = swift_allocObject();
    sub_1BD6A6EA0(v110, v339 + v111, type metadata accessor for PaymentPassMethodSheet);
    v112 = v103;
    v113 = v304;
    sub_1BD6A6F08(v112, v304, type metadata accessor for PaymentPassMethodSheet);
    v345 = swift_allocObject();
    sub_1BD6A6EA0(v113, v345 + v111, type metadata accessor for PaymentPassMethodSheet);
    *&v361 = 0;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    v114 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710);
    sub_1BE051694();
    v115 = v306;
    *(v306 + 7) = v365;
    v116 = v319;
    v117 = type metadata accessor for MultiHyperLinkDetailSheet();
    v118 = v322;
    (*(*(v117 - 8) + 56))(v322, 1, 1, v117);
    sub_1BD0DE19C(v118, v321, &unk_1EBD45160);
    sub_1BE051694();
    sub_1BD0DE53C(v118, &unk_1EBD45160);
    v119 = v115 + *(v116 + 60);
    LOBYTE(v361) = 0;
    sub_1BE051694();
    v120 = *(&v365 + 1);
    *v119 = v365;
    *(v119 + 8) = v120;
    v121 = v342;
    *v115 = v342;
    *(v115 + 8) = v114;
    v122 = v351;
    *(v115 + 16) = v333;
    *(v115 + 24) = v122;
    v123 = v343;
    *(v115 + 32) = v344;
    *(v115 + 48) = v123;
    *(v115 + 64) = 0;
    *(v115 + 72) = 0;
    v124 = v339;
    *(v115 + 80) = sub_1BD6A6C90;
    *(v115 + 88) = v124;
    v125 = v345;
    *(v115 + 96) = sub_1BD6A6CA8;
    *(v115 + 104) = v125;
    *&v365 = 0;
    BYTE8(v365) = -32;
    v126 = objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
    v127 = v121;
    v128 = v114;
    v129 = sub_1BD8D1EE0(&v365, v104, v114);

    v130 = (v115 + *(v116 + 64));
    *&v361 = v129;
    sub_1BE051694();
    v131 = *(&v365 + 1);
    *v130 = v365;
    v130[1] = v131;
    v132 = v305;
    sub_1BD6A6EA0(v115, v305, type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView);
    v107 = v320;
    sub_1BD6A6EA0(v132, v320, type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView);
    v133 = 0;
LABEL_24:
    (*(v318 + 56))(v107, v133, 1, v116);
    sub_1BD0DE19C(v107, v336, &qword_1EBD47C40);
    swift_storeEnumTagMultiPayload();
    sub_1BD4CD778();
    sub_1BD4CD804();
    v230 = v338;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v230, v348, &qword_1EBD47C20);
    swift_storeEnumTagMultiPayload();
    sub_1BD4CD530();
    sub_1BD4CD6EC();
    v231 = v349;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v230, &qword_1EBD47C20);
    sub_1BD0DE19C(v231, v354, &qword_1EBD47BF0);
    swift_storeEnumTagMultiPayload();
    sub_1BD4CD4A4();
    sub_1BD6A6C48(&qword_1EBD412C0, type metadata accessor for PaymentPassHubView);
    sub_1BE04F9A4();

    sub_1BD0DE53C(v231, &qword_1EBD47BF0);
    return sub_1BD0DE53C(v107, &qword_1EBD47C40);
  }

  type metadata accessor for PresentationContext();
  sub_1BD6A6C48(&unk_1EBD361B0, type metadata accessor for PresentationContext);
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BD6A6590(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B20);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17 - v10;
  if (a1)
  {
    v12 = type metadata accessor for PaymentPassMethodSheet(0);
    v13 = *(a2 + *(v12 + 56));
    v14 = a1;
    v13();
    (*(a2 + *(v12 + 64)))(v14);
  }

  v15 = _s11DetailSheetOMa();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  type metadata accessor for PaymentPassMethodSheet(0);
  sub_1BD0DE19C(v11, v7, &unk_1EBD43B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v11, &unk_1EBD43B20);
}

uint64_t sub_1BD6A6734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B20);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PaymentPassMethodSheet(0);
  (*(a1 + *(v10 + 68)))();
  v11 = _s11DetailSheetOMa();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_1BD0DE19C(v9, v5, &unk_1EBD43B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v9, &unk_1EBD43B20);
}

uint64_t sub_1BD6A6894()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B20);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v10 - v6;
  v8 = _s11DetailSheetOMa();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for PaymentPassMethodSheet(0);
  sub_1BD0DE19C(v7, v3, &unk_1EBD43B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v7, &unk_1EBD43B20);
}

uint64_t sub_1BD6A69D4()
{
  v1 = _s11DetailSheetOMa();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD6A6F08(v0, v4, _s11DetailSheetOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);

      v8 = *&v4[*(v7 + 64) + 32];

      sub_1BD0DE53C(v4, &qword_1EBD520A0);
      return 0xD00000000000001BLL;
    }

LABEL_9:
    v6 = 0xD000000000000012;
    sub_1BD6A6F70(v4, _s11DetailSheetOMa);
    return v6;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1BD6A6F70(v4, _s11DetailSheetOMa);
    return 0xD000000000000023;
  }

  else
  {

    sub_1BD6A6F70(v4, type metadata accessor for AvailablePass);
    return 0x50746E656D796170;
  }
}

uint64_t sub_1BD6A6C20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD6A69D4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD6A6C48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD6A6CA8()
{
  v1 = type metadata accessor for PaymentPassMethodSheet(0);
  v2 = v1 - 8;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = (*(v3 + *(v1 + 68)))();
  return (*(v3 + *(v2 + 100)))(v4);
}

uint64_t sub_1BD6A6D4C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD6A6DC0(void *a1)
{
  v3 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);

  return sub_1BD6A6590(a1, v1 + v4);
}

uint64_t sub_1BD6A6EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6A6F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6A6F70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1BD6A6FFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_1BD6A7044(uint64_t result, int a2, int a3)
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
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD6A70D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9C0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9C8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v23 - v18;
  *v19 = sub_1BE04F504();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9D0);
  sub_1BD6A79A0(a1, &v19[*(v20 + 44)]);
  sub_1BD6A72DC(v11);
  sub_1BD0DE19C(v19, v15, &qword_1EBD4F9C8);
  sub_1BD6A8E28(v11, v7);
  sub_1BD0DE19C(v15, a2, &qword_1EBD4F9C8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9D8);
  sub_1BD6A8E28(v7, a2 + *(v21 + 48));
  sub_1BD0DE53C(v11, &qword_1EBD4F9C0);
  sub_1BD0DE53C(v19, &qword_1EBD4F9C8);
  sub_1BD0DE53C(v7, &qword_1EBD4F9C0);
  return sub_1BD0DE53C(v15, &qword_1EBD4F9C8);
}

id sub_1BD6A72DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9E0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v64 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9E8);
  MEMORY[0x1EEE9AC00](v12, v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v16, v17);
  v24 = *(v1 + 56);
  if (v24)
  {
    v65 = v22;
    v66 = v64 - v20;
    v67 = v21;
    v68 = v19;
    v69 = v18;
    v70 = a1;
    swift_getErrorValue();
    v25 = v24;
    v81 = sub_1BE053C74();
    v82 = v26;
    v64[0] = sub_1BD0DDEBC();
    v77 = sub_1BE0506C4();
    v76 = v27;
    v29 = v28;
    v79 = v30;
    v78 = sub_1BE0501E4();
    sub_1BE04E1F4();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v80 = v3;
    v39 = v29 & 1;
    LOBYTE(v81) = v29 & 1;
    LOBYTE(v87[0]) = 0;
    v75 = sub_1BE050324();
    KeyPath = swift_getKeyPath();
    v73 = sub_1BE051264();
    v72 = swift_getKeyPath();
    v40 = swift_getKeyPath();
    LOBYTE(v81) = 0;
    v71 = swift_getKeyPath();
    v41 = swift_getKeyPath();
    v64[1] = v8;
    v42 = *(v8 + 36);
    v43 = v4;
    v44 = &v11[v42];
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C318) + 28);
    v46 = *MEMORY[0x1E6980FA8];
    v47 = sub_1BE050554();
    (*(*(v47 - 8) + 104))(v44 + v45, v46, v47);
    *v44 = swift_getKeyPath();
    v48 = v76;
    *v11 = v77;
    *(v11 + 1) = v48;
    v11[16] = v39;
    *(v11 + 17) = v87[0];
    *(v11 + 5) = *(v87 + 3);
    v49 = v80;
    *(v11 + 3) = v79;
    v11[32] = v78;
    *(v11 + 33) = *v86;
    *(v11 + 9) = *&v86[3];
    *(v11 + 5) = v32;
    *(v11 + 6) = v34;
    *(v11 + 7) = v36;
    *(v11 + 8) = v38;
    v11[72] = 0;
    *(v11 + 73) = *v85;
    *(v11 + 19) = *&v85[3];
    v50 = v75;
    *(v11 + 10) = KeyPath;
    *(v11 + 11) = v50;
    v51 = v73;
    *(v11 + 12) = v72;
    *(v11 + 13) = v51;
    *(v11 + 14) = v40;
    *(v11 + 15) = 2;
    v11[128] = 0;
    *(v11 + 129) = *v84;
    *(v11 + 33) = *&v84[3];
    *(v11 + 17) = v71;
    v11[144] = 0;
    LODWORD(v51) = *v83;
    *(v11 + 37) = *&v83[3];
    *(v11 + 145) = v51;
    *(v11 + 19) = v41;
    v11[160] = 1;
    (*(v43 + 104))(v7, *MEMORY[0x1E69B8068], v49);
    result = PKPassKitBundle();
    if (result)
    {
      v53 = result;
      v54 = sub_1BE04B6F4();
      v56 = v55;

      (*(v43 + 8))(v7, v49);
      v81 = v54;
      v82 = v56;
      sub_1BD6A8E98();
      v57 = v65;
      sub_1BE050C34();

      sub_1BD0DE53C(v11, &qword_1EBD4F9E0);
      swift_getErrorValue();
      v81 = sub_1BE053C74();
      v82 = v58;
      v59 = v67;
      v60 = v69;
      sub_1BE04EB94();

      sub_1BD0DE53C(v57, &qword_1EBD4F9E8);
      sub_1BE052434();
      v61 = v66;
      sub_1BE04EBB4();

      sub_1BD0DE53C(v59, &qword_1EBD4F9E8);
      v62 = v70;
      sub_1BD6A9230(v61, v70);
      return (*(v68 + 56))(v62, 0, 1, v60);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v63 = *(v19 + 56);

    return v63(a1, 1, 1, v23);
  }

  return result;
}

uint64_t sub_1BD6A79A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA40);
  MEMORY[0x1EEE9AC00](v113, v3);
  v104 = &v102 - v4;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA48);
  v106 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v5);
  v105 = &v102 - v6;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA50);
  MEMORY[0x1EEE9AC00](v109, v7);
  v112 = &v102 - v8;
  v110 = sub_1BE04FB64();
  v108 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v9);
  v107 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA58);
  v103 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v11);
  v102 = &v102 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA60);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v128 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v127 = &v102 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD488D8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v102 - v21;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA68);
  v121 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v23);
  v25 = &v102 - v24;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA70);
  v123 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122, v26);
  v28 = &v102 - v27;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA78);
  v125 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v29);
  v118 = &v102 - v30;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA80);
  MEMORY[0x1EEE9AC00](v126, v31);
  v119 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v130 = &v102 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v131 = &v102 - v38;
  v39 = *a1;
  v40 = *(a1 + 32);
  v137 = *(a1 + 16);
  v138 = v40;
  v139 = v39;
  v41 = *(a1 + 32);
  v132 = v137;
  v133 = v41;
  swift_bridgeObjectRetain_n();
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70);
  sub_1BE051914();
  v132 = v139;
  v117 = sub_1BD0DDEBC();
  sub_1BE051E14();
  v42 = sub_1BE051224();
  KeyPath = swift_getKeyPath();
  v44 = &v22[*(v19 + 36)];
  *v44 = KeyPath;
  v44[1] = v42;
  v135 = *(a1 + 96);
  LOBYTE(v136) = *(a1 + 112);
  v132 = *(a1 + 96);
  LOBYTE(v133) = *(a1 + 112);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41570);
  sub_1BE04E244();
  v46 = sub_1BD4F0E9C();
  sub_1BE050FC4();

  sub_1BD0DE53C(v22, &qword_1EBD488D8);
  v132 = v135;
  LOBYTE(v133) = v136;
  v115 = v45;
  sub_1BE04E224();
  v47 = swift_allocObject();
  v48 = *(a1 + 80);
  *(v47 + 80) = *(a1 + 64);
  *(v47 + 96) = v48;
  *(v47 + 112) = *(a1 + 96);
  *(v47 + 128) = *(a1 + 112);
  v49 = *(a1 + 16);
  *(v47 + 16) = *a1;
  *(v47 + 32) = v49;
  v50 = *(a1 + 48);
  *(v47 + 48) = *(a1 + 32);
  *(v47 + 64) = v50;
  sub_1BD6A92CC(a1, &v132);
  *&v132 = v19;
  *(&v132 + 1) = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = MEMORY[0x1E69E6370];
  v53 = MEMORY[0x1E69E6388];
  v54 = v120;
  sub_1BE051064();

  (*(v121 + 8))(v25, v54);
  *&v132 = v54;
  *(&v132 + 1) = v52;
  *&v133 = OpaqueTypeConformance2;
  *(&v133 + 1) = v53;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = v118;
  v57 = v122;
  MEMORY[0x1BFB3DDE0](1, v122, v55);
  (*(v123 + 8))(v28, v57);
  v132 = v139;
  *&v134 = v57;
  *(&v134 + 1) = v55;
  v58 = v116;
  swift_getOpaqueTypeConformance2();
  v59 = v119;
  v60 = v124;
  sub_1BE050C34();
  sub_1BD1BCDE4(&v139);
  v61 = v130;
  (*(v125 + 8))(v56, v60);
  v132 = v137;
  v133 = v138;
  MEMORY[0x1BFB3E970](&v134, v58);
  v132 = v134;
  sub_1BE04EB94();

  sub_1BD0DE53C(v59, &qword_1EBD4FA80);
  sub_1BE052434();
  sub_1BE04EBB4();

  sub_1BD0DE53C(v61, &qword_1EBD4FA80);
  v132 = v137;
  v133 = v138;
  MEMORY[0x1BFB3E970](&v134, v58);
  v62 = v134;

  v63 = HIBYTE(*(&v62 + 1)) & 0xFLL;
  if ((*(&v62 + 1) & 0x2000000000000000) == 0)
  {
    v63 = v62 & 0xFFFFFFFFFFFFLL;
  }

  if (!v63 && *(a1 + 64))
  {
    v82 = swift_allocObject();
    v83 = *(a1 + 80);
    *(v82 + 80) = *(a1 + 64);
    *(v82 + 96) = v83;
    *(v82 + 112) = *(a1 + 96);
    *(v82 + 128) = *(a1 + 112);
    v84 = *(a1 + 16);
    *(v82 + 16) = *a1;
    *(v82 + 32) = v84;
    v85 = *(a1 + 48);
    *(v82 + 48) = *(a1 + 32);
    *(v82 + 64) = v85;
    sub_1BD6A92CC(a1, &v132);
    sub_1BE0503D4();
    sub_1BE050374();
    v86 = sub_1BE0503F4();

    *&v132 = sub_1BD6A94E0;
    *(&v132 + 1) = v82;
    *&v133 = v86;
    v87 = v107;
    sub_1BE04FB54();
    v88 = sub_1BD6A940C();
    v89 = sub_1BD6A93C4(&qword_1EBD3F3E0, MEMORY[0x1E697C720]);
    v90 = v102;
    v91 = v110;
    sub_1BE050894();
    (*(v108 + 8))(v87, v91);

    v92 = v103;
    v93 = v111;
    (*(v103 + 16))(v112, v90, v111);
    swift_storeEnumTagMultiPayload();
    *&v132 = &type metadata for ContactButton;
    *(&v132 + 1) = v91;
    *&v133 = v88;
    *(&v133 + 1) = v89;
    swift_getOpaqueTypeConformance2();
    v94 = sub_1BD6A930C();
    *&v132 = v113;
    *(&v132 + 1) = v91;
    *&v133 = v94;
    *(&v133 + 1) = v89;
    swift_getOpaqueTypeConformance2();
    v66 = v127;
    sub_1BE04F9A4();
    (*(v92 + 8))(v90, v93);
LABEL_12:
    v81 = 0;
    goto LABEL_14;
  }

  v132 = v135;
  LOBYTE(v133) = v136;
  sub_1BE04E224();
  if (v134 == 1)
  {
    v132 = v137;
    v133 = v138;
    MEMORY[0x1BFB3E970](&v134, v58);
    v64 = v134;

    v65 = HIBYTE(*(&v64 + 1)) & 0xFLL;
    if ((*(&v64 + 1) & 0x2000000000000000) == 0)
    {
      v65 = v64 & 0xFFFFFFFFFFFFLL;
    }

    v66 = v127;
    if (!v65)
    {
      v81 = 1;
      goto LABEL_14;
    }

    v67 = swift_allocObject();
    v68 = *(a1 + 80);
    *(v67 + 80) = *(a1 + 64);
    *(v67 + 96) = v68;
    *(v67 + 112) = *(a1 + 96);
    *(v67 + 128) = *(a1 + 112);
    v69 = *(a1 + 16);
    *(v67 + 16) = *a1;
    *(v67 + 32) = v69;
    v70 = *(a1 + 48);
    *(v67 + 48) = *(a1 + 32);
    *(v67 + 64) = v70;
    sub_1BD6A92CC(a1, &v132);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41608);
    sub_1BD2F1750();
    v71 = v104;
    sub_1BE051704();
    v72 = v113;
    v73 = (v71 + *(v113 + 36));
    *v73 = sub_1BD1F3E44;
    v73[1] = 0;
    v74 = v107;
    sub_1BE04FB54();
    v126 = sub_1BD6A930C();
    v75 = sub_1BD6A93C4(&qword_1EBD3F3E0, MEMORY[0x1E697C720]);
    v76 = v105;
    v77 = v110;
    sub_1BE050894();
    (*(v108 + 8))(v74, v77);
    sub_1BD0DE53C(v71, &qword_1EBD4FA40);
    v78 = v106;
    v79 = v114;
    (*(v106 + 16))(v112, v76, v114);
    swift_storeEnumTagMultiPayload();
    v80 = sub_1BD6A940C();
    *&v132 = &type metadata for ContactButton;
    *(&v132 + 1) = v77;
    *&v133 = v80;
    *(&v133 + 1) = v75;
    swift_getOpaqueTypeConformance2();
    *&v132 = v72;
    *(&v132 + 1) = v77;
    *&v133 = v126;
    *(&v133 + 1) = v75;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    (*(v78 + 8))(v76, v79);
    goto LABEL_12;
  }

  v81 = 1;
  v66 = v127;
LABEL_14:
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA88);
  (*(*(v95 - 8) + 56))(v66, v81, 1, v95);
  v96 = v131;
  v97 = v130;
  sub_1BD0DE19C(v131, v130, &qword_1EBD4FA80);
  v98 = v128;
  sub_1BD0DE19C(v66, v128, &qword_1EBD4FA60);
  v99 = v129;
  sub_1BD0DE19C(v97, v129, &qword_1EBD4FA80);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA90);
  sub_1BD0DE19C(v98, v99 + *(v100 + 48), &qword_1EBD4FA60);
  sub_1BD0DE53C(v66, &qword_1EBD4FA60);
  sub_1BD0DE53C(v96, &qword_1EBD4FA80);
  sub_1BD0DE53C(v98, &qword_1EBD4FA60);
  return sub_1BD0DE53C(v97, &qword_1EBD4FA80);
}

id sub_1BD6A8BBC()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051574();
  v6 = sub_1BE051494();
  KeyPath = swift_getKeyPath();
  v13[3] = v5;
  v13[4] = KeyPath;
  v13[5] = v6;
  (*(v1 + 104))(v4, *MEMORY[0x1E69B8068], v0);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v1 + 8))(v4, v0);
    v13[1] = v10;
    v13[2] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41620);
    sub_1BD2F17DC();
    sub_1BD0DDEBC();
    sub_1BE050C34();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD6A8DA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v8[4] = *(v1 + 64);
  v8[5] = v3;
  v8[6] = *(v1 + 96);
  v9 = *(v1 + 112);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  v5 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v5;
  *a1 = sub_1BE04F7C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9B8);
  return sub_1BD6A70D0(v8, a1 + *(v6 + 44));
}

uint64_t sub_1BD6A8E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD6A8E98()
{
  result = qword_1EBD4F9F0;
  if (!qword_1EBD4F9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F9E0);
    sub_1BD6A8F50();
    sub_1BD0DE4F4(&qword_1EBD4FA38, &qword_1EBD3C318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F9F0);
  }

  return result;
}

unint64_t sub_1BD6A8F50()
{
  result = qword_1EBD4F9F8;
  if (!qword_1EBD4F9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FA00);
    sub_1BD6A9008();
    sub_1BD0DE4F4(&qword_1EBD38AB0, &qword_1EBD38AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F9F8);
  }

  return result;
}

unint64_t sub_1BD6A9008()
{
  result = qword_1EBD4FA08;
  if (!qword_1EBD4FA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FA10);
    sub_1BD6A90C0();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FA08);
  }

  return result;
}

unint64_t sub_1BD6A90C0()
{
  result = qword_1EBD4FA18;
  if (!qword_1EBD4FA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FA20);
    sub_1BD6A9178();
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FA18);
  }

  return result;
}

unint64_t sub_1BD6A9178()
{
  result = qword_1EBD4FA28;
  if (!qword_1EBD4FA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FA30);
    sub_1BD50C6D8();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FA28);
  }

  return result;
}

uint64_t sub_1BD6A9230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD6A930C()
{
  result = qword_1EBD4FA98;
  if (!qword_1EBD4FA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FA40);
    sub_1BD0DE4F4(&qword_1EBD41628, &qword_1EBD41578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FA98);
  }

  return result;
}

uint64_t sub_1BD6A93C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD6A940C()
{
  result = qword_1EBD4FAA0;
  if (!qword_1EBD4FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FAA0);
  }

  return result;
}

uint64_t objectdestroyTm_77()
{

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD6A94E0()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1BD6A953C@<X0>(uint64_t a1@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  sub_1BE0502A4();
  v7 = sub_1BE0505F4();
  v9 = v8;
  v11 = v10;

  sub_1BD0DDF10(v2, v4, v6 & 1);

  sub_1BE051224();
  v12 = sub_1BE050564();
  v35 = v13;
  v36 = v12;
  v34 = v14;
  v37 = v15;

  sub_1BD0DDF10(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  sub_1BE048C84();
  v16 = sub_1BE0506C4();
  v18 = v17;
  LOBYTE(v9) = v19;
  sub_1BE0502A4();
  v20 = sub_1BE0505F4();
  v22 = v21;
  v24 = v23;

  sub_1BD0DDF10(v16, v18, v9 & 1);

  sub_1BE051234();
  v25 = sub_1BE050564();
  v27 = v26;
  LOBYTE(v16) = v28;
  v32 = v29;

  sub_1BD0DDF10(v20, v22, v24 & 1);

  v30 = swift_getKeyPath();
  *a1 = v36;
  *(a1 + 8) = v35;
  *(a1 + 16) = v34 & 1;
  *(a1 + 24) = v37;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = v25;
  *(a1 + 80) = v27;
  *(a1 + 88) = v16 & 1;
  *(a1 + 96) = v32;
  *(a1 + 104) = v30;
  *(a1 + 112) = 2;
  *(a1 + 120) = 0;
  sub_1BD0D7F18(v36, v35, v34 & 1);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD0D7F18(v25, v27, v16 & 1);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD0DDF10(v25, v27, v16 & 1);

  sub_1BD0DDF10(v36, v35, v34 & 1);
}

double sub_1BD6A9838@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04F504();
  v18 = 1;
  sub_1BD6A953C(&v10);
  v23 = v14;
  v24 = v15;
  v25[0] = v16[0];
  *(v25 + 9) = *(v16 + 9);
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v26[0] = v10;
  v26[1] = v11;
  v26[2] = v12;
  v26[3] = v13;
  v26[4] = v14;
  v26[5] = v15;
  v27[0] = v16[0];
  *(v27 + 9) = *(v16 + 9);
  sub_1BD6A99B8(&v19, &v9);
  sub_1BD6A9A28(v26);
  *(&v17[4] + 7) = v23;
  *(&v17[5] + 7) = v24;
  *(&v17[6] + 7) = v25[0];
  v17[7] = *(v25 + 9);
  *(v17 + 7) = v19;
  *(&v17[1] + 7) = v20;
  *(&v17[2] + 7) = v21;
  *(&v17[3] + 7) = v22;
  v3 = v17[5];
  *(a1 + 81) = v17[4];
  *(a1 + 97) = v3;
  v4 = v17[7];
  *(a1 + 113) = v17[6];
  *(a1 + 129) = v4;
  v5 = v17[1];
  *(a1 + 17) = v17[0];
  *(a1 + 33) = v5;
  result = *&v17[2];
  v7 = v17[3];
  *(a1 + 49) = v17[2];
  v8 = v18;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 65) = v7;
  return result;
}

uint64_t sub_1BD6A99B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FAB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6A9A28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FAB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD6A9A90()
{
  result = qword_1EBD4FAC0;
  if (!qword_1EBD4FAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FAC0);
  }

  return result;
}

unint64_t sub_1BD6A9AF8()
{
  result = qword_1EBD4FAD0;
  if (!qword_1EBD4FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FAD0);
  }

  return result;
}

unint64_t sub_1BD6A9B4C()
{
  result = qword_1EBD4FAD8;
  if (!qword_1EBD4FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FAD8);
  }

  return result;
}

uint64_t sub_1BD6A9BA0()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1BE04A874();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1BE04A884();
  __swift_allocate_value_buffer(v9, qword_1EBDAB418);
  __swift_project_value_buffer(v9, qword_1EBDAB418);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EBDAB400);
  (*(v3 + 16))(v6, v10, v2);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD6A9DB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v20[0] = v20 - v2;
  v3 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1BE04A874();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1BE04A884();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FBC0);
  __swift_allocate_value_buffer(v15, qword_1EBDAB430);
  v16 = __swift_project_value_buffer(v15, qword_1EBDAB430);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v5, qword_1EBDAB400);
  (*(v6 + 16))(v9, v17, v5);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (*(v13 + 56))(v20[0], 1, 1, v12);
  sub_1BE048AC4();
  v18 = sub_1BE048AB4();
  return (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
}

__n128 sub_1BD6AA120@<Q0>(uint64_t a1@<X8>)
{
  sub_1BE048874();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_1BD6AA174()
{
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048884();
}

void (*sub_1BD6AA21C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1BE048864();
  return sub_1BD5191F0;
}

unint64_t sub_1BD6AA290()
{
  result = qword_1EBD4FAE0;
  if (!qword_1EBD4FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FAE0);
  }

  return result;
}

uint64_t sub_1BD6AA2E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BD6AD670();
  v5 = sub_1BD6ABFD0();

  return MEMORY[0x1EEDB3D50](a1, v4, a2, v5);
}

unint64_t sub_1BD6AA350()
{
  result = qword_1EBD4FAE8;
  if (!qword_1EBD4FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FAE8);
  }

  return result;
}

unint64_t sub_1BD6AA3A8()
{
  result = qword_1EBD4FAF0;
  if (!qword_1EBD4FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FAF0);
  }

  return result;
}

uint64_t sub_1BD6AA484@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36D10 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FBC0);
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB430);
  return sub_1BD0DE19C(v3, a1, &qword_1EBD4FBC0);
}

uint64_t sub_1BD6AA514(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1BD6AD670();
  v7 = sub_1BD6AD6C4();
  v8 = sub_1BD6ABFD0();
  *v5 = v2;
  v5[1] = sub_1BD519558;

  return MEMORY[0x1EEDB3D58](a1, a2, v6, v7, v8);
}

uint64_t sub_1BD6AA5E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD6AC024();
  *a1 = result;
  return result;
}

uint64_t sub_1BD6AA610(uint64_t a1)
{
  v2 = sub_1BD6AA290();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1BD6AA650()
{
  result = qword_1EBD4FAF8;
  if (!qword_1EBD4FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FAF8);
  }

  return result;
}

unint64_t sub_1BD6AA6A8()
{
  result = qword_1EBD4FB00;
  if (!qword_1EBD4FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB00);
  }

  return result;
}

uint64_t sub_1BD6AA6FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FBA0);
  __swift_allocate_value_buffer(v0, qword_1EBDAB448);
  __swift_project_value_buffer(v0, qword_1EBDAB448);
  sub_1BE052434();
  MEMORY[0x1BFB3F610](3092282, 0xE300000000000000);
  v1 = sub_1BE052434();
  MEMORY[0x1BFB3F610](v1);

  sub_1BD6AB6CC();
  return sub_1BE048E34();
}