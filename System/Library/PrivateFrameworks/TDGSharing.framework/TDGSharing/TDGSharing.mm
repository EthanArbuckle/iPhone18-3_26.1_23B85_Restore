uint64_t WFSetupServerDelegateSupportedClasses()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  return [v0 setWithObjects:{v1, objc_opt_class(), 0}];
}

void *sub_26C66D2E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8708, &qword_26C6DA428);
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8710, &unk_26C6DA430);
  v6 = *(v5 - 8);
  v38 = v5 - 8;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v40 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = v35 - v10;
  v36 = sub_26C6D8BD8();
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v36);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26C6D8C08();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v17 = sub_26C6D8978();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_26C6779D0(0, &qword_2804A8718, 0x277D85C90);
  v35[0] = "@NSError@NSDictionary>20";
  v35[1] = v19;
  sub_26C6D8968();
  v43 = MEMORY[0x277D84F90];
  sub_26C677A18(&qword_2804A8720, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8728, &qword_26C6DA580);
  sub_26C677B18(&qword_2804A8730, &qword_2804A8728, &qword_26C6DA580);
  sub_26C6D8C88();
  (*(v11 + 104))(v14, *MEMORY[0x277D85268], v36);
  v0[2] = sub_26C6D8C18();
  v0[4] = 0;
  v0[5] = 0;
  v21 = v38;
  v20 = v39;
  v22 = *(v38 + 56);
  v24 = v41;
  v23 = v42;
  (*(v41 + 104))(v39, *MEMORY[0x277D85778], v42);
  v25 = v37;
  sub_26C6D8B18();
  (*(v24 + 8))(v20, v23);
  v26 = v40;
  sub_26C677AA8(v25, v40);
  v27 = *(v21 + 56);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8738, &unk_26C6DA440);
  v1[9] = v28;
  v1[10] = sub_26C677B18(&qword_2804A8740, &qword_2804A8738, &unk_26C6DA440);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 6);
  v30 = *(v28 - 8);
  (*(v30 + 32))(boxed_opaque_existential_1, v26, v28);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  v32 = *(v31 - 8);
  (*(v32 + 8))(v26 + v27, v31);
  sub_26C677AA8(v25, v26);
  (*(v32 + 32))(v1 + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v26 + *(v21 + 56), v31);
  (*(v30 + 8))(v26, v28);
  v33 = [objc_allocWithZone(MEMORY[0x277D54CE0]) init];
  v1[3] = v33;
  [v33 setAdvertiseRate_];
  [v1[3] setDispatchQueue_];
  [v1[3] setNeedsSetup_];
  [v1[3] setOverrideScreenOff_];
  [v1[3] setSessionFlags_];
  sub_26C677B60(v25, &qword_2804A8710, &unk_26C6DA430);
  return v1;
}

uint64_t sub_26C66D8B0()
{
  v1 = v0;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD228);
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_26C67A77C(0x74696E696564, 0xE600000000000000, &v10);
    _os_log_impl(&dword_26C66B000, v3, v4, "Running SFServiceAgent::%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6A7490](v6, -1, -1);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 48));
  v7 = OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  return v1;
}

uint64_t sub_26C66DA64()
{
  sub_26C66D8B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_26C66DABC(uint64_t a1, unint64_t a2)
{
  if (*(v2 + 40))
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v3 = sub_26C6D8898();
    __swift_project_value_buffer(v3, qword_2804AD228);
    oslog = sub_26C6D8878();
    v4 = sub_26C6D8BB8();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26C66B000, oslog, v4, "sharingRestartAssertionClient::preventExit is already active", v5, 2u);
      v6 = v5;
LABEL_12:
      MEMORY[0x26D6A7490](v6, -1, -1);
    }
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D54C30]) init];
    v10 = *(v2 + 40);
    *(v2 + 40) = v9;
    v11 = v9;

    if (v11)
    {
      v12 = sub_26C6D89E8();
      [v11 preventExitForLocaleReason_];
    }

    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v13 = sub_26C6D8898();
    __swift_project_value_buffer(v13, qword_2804AD228);

    oslog = sub_26C6D8878();
    v14 = sub_26C6D8BB8();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_26C67A77C(a1, a2, &v18);
      _os_log_impl(&dword_26C66B000, oslog, v14, "sharingRestartAssertionClient::preventExit activated for reason: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x26D6A7490](v16, -1, -1);
      v6 = v15;
      goto LABEL_12;
    }
  }
}

void sub_26C66DD20()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = v0;
    v3 = qword_2804A8598;
    v4 = v1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_26C6D8898();
    __swift_project_value_buffer(v5, qword_2804AD228);
    v6 = sub_26C6D8878();
    v7 = sub_26C6D8BB8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26C66B000, v6, v7, "Invalidating sharingRestartAssertionClient::preventExit", v8, 2u);
      MEMORY[0x26D6A7490](v8, -1, -1);
    }

    [v4 invalidate];
    v9 = *(v2 + 40);
    *(v2 + 40) = 0;
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v10 = sub_26C6D8898();
    __swift_project_value_buffer(v10, qword_2804AD228);
    oslog = sub_26C6D8878();
    v11 = sub_26C6D8BB8();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26C66B000, oslog, v11, "sharingRestartAssertionClient::preventExit is already released.", v12, 2u);
      MEMORY[0x26D6A7490](v12, -1, -1);
    }

    v9 = oslog;
  }
}

uint64_t sub_26C66DF00(char a1, char a2)
{
  *(v3 + 144) = v2;
  *(v3 + 185) = a2;
  *(v3 + 184) = a1;
  *(v3 + 152) = *v2;
  type metadata accessor for SFServiceAgent();
  sub_26C677A18(&qword_2804A86A0, type metadata accessor for SFServiceAgent);
  v5 = sub_26C6D8AD8();
  *(v3 + 160) = v5;
  *(v3 + 168) = v4;

  return MEMORY[0x2822009F8](sub_26C66DFE8, v5, v4);
}

uint64_t sub_26C66DFE8()
{
  v1 = v0[19];
  v2 = *(v0 + 185);
  v3 = *(v0 + 184);
  v4 = *(v0[18] + 24);
  [v4 setIdentifier_];
  [v4 setDeviceActionType_];
  [v4 setPayloadDovePeace2_];
  sub_26C66E3B8();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v0[14] = sub_26C67696C;
  v0[15] = v6;
  v7 = MEMORY[0x277D85DD0];
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26C675260;
  v0[13] = &block_descriptor_79;
  v8 = _Block_copy(v0 + 10);
  v9 = v0[15];

  [v4 setReceivedObjectHandler_];
  _Block_release(v8);
  v0[2] = v0;
  v0[3] = sub_26C66E204;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F0, &qword_26C6DA3C8);
  v0[10] = v7;
  v0[11] = 1107296256;
  v0[12] = sub_26C6A4DB4;
  v0[13] = &block_descriptor_82;
  v0[14] = v10;
  [v4 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26C66E204()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 176) = v3;
  v4 = *(v1 + 168);
  v5 = *(v1 + 160);
  if (v3)
  {
    v6 = sub_26C66E34C;
  }

  else
  {
    v6 = sub_26C66E334;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_26C66E34C()
{
  v1 = *(v0 + 176);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 176);

  return v2();
}

void sub_26C66E3B8()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[3];
  v4 = swift_allocObject();
  swift_weakInit();
  v24 = sub_26C677500;
  v25 = v4;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_26C670B0C;
  v23 = &block_descriptor_91;
  v5 = _Block_copy(&v20);

  [v3 setInterruptionHandler_];
  _Block_release(v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v24 = sub_26C677508;
  v25 = v6;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_26C670B0C;
  v23 = &block_descriptor_95;
  v7 = _Block_copy(&v20);

  [v3 setInvalidationHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v24 = sub_26C677510;
  v25 = v8;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_26C67102C;
  v23 = &block_descriptor_99;
  v9 = _Block_copy(&v20);

  [v3 setPeerDisconnectedHandler_];
  _Block_release(v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v24 = sub_26C677518;
  v25 = v10;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_26C671E20;
  v23 = &block_descriptor_103;
  v11 = _Block_copy(&v20);

  [v3 setSessionStartedHandler_];
  _Block_release(v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v24 = sub_26C677520;
  v25 = v12;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_26C672090;
  v23 = &block_descriptor_107;
  v13 = _Block_copy(&v20);

  [v3 setPromptForPINHandler_];
  _Block_release(v13);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v2;
  v24 = sub_26C677560;
  v25 = v15;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_26C671E20;
  v23 = &block_descriptor_114;
  v16 = _Block_copy(&v20);

  [v3 setSessionSecuredHandler_];
  _Block_release(v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v2;
  v24 = sub_26C677568;
  v25 = v18;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_26C674054;
  v23 = &block_descriptor_121;
  v19 = _Block_copy(&v20);

  [v3 setSessionEndedHandler_];
  _Block_release(v19);
}

id sub_26C66E89C()
{
  v1 = v0;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD228);
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_26C67A77C(0x6164696C61766E69, 0xEC00000029286574, &v9);
    _os_log_impl(&dword_26C66B000, v3, v4, "Running SFServiceAgent::%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6A7490](v6, -1, -1);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  sub_26C66EA08();
  v7 = *(v1 + 24);

  return [v7 invalidate];
}

id sub_26C66EA08()
{
  v1 = *(v0 + 24);
  [v1 setInterruptionHandler_];
  [v1 setInvalidationHandler_];
  [v1 setPeerDisconnectedHandler_];
  [v1 setSessionStartedHandler_];
  [v1 setPromptForPINHandler_];
  [v1 setSessionSecuredHandler_];
  [v1 setSessionEndedHandler_];

  return [v1 setReceivedObjectHandler_];
}

uint64_t sub_26C66EAD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v155 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v157 = &v153 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v156 = &v153 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v158 = &v153 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v153 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v153 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v153 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v153 - v21;
  v161 = sub_26C6D8838();
  v23 = *(v161 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v161);
  v153 = &v153 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v154 = &v153 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v153 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v153 - v32;
  v160 = a1;
  sub_26C6766E8(a1, v169);
  if (v172 > 1u)
  {
    if (v172 == 2)
    {
      v55 = v162[4];
      v56 = v23;
      if (v55 && (v57 = [v55 peerDevice]) != 0)
      {
        v58 = v57;
        v59 = [v57 identifier];

        v60 = v158;
        if (v59)
        {
          v61 = v156;
          sub_26C6D8818();

          v62 = 0;
        }

        else
        {
          v62 = 1;
          v61 = v156;
        }

        v97 = v161;
        (*(v56 + 56))(v61, v62, 1, v161);
        sub_26C6767B0(v61, v60);
        if ((*(v56 + 48))(v60, 1, v97) != 1)
        {
          v108 = v154;
          (*(v56 + 32))(v154, v60, v97);
          v109 = v162[3];
          v110 = sub_26C6D89E8();

          v111 = sub_26C6D87F8();
          [v109 pairSetupTryPIN:v110 peer:v111];

          return (*(v56 + 8))(v108, v97);
        }
      }

      else
      {
        v75 = *(v23 + 56);
        v60 = v158;
        v75(v158, 1, 1, v161);
      }

      sub_26C677B60(v60, &qword_2804A86E0, &qword_26C6DA3B8);
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v98 = sub_26C6D8898();
      __swift_project_value_buffer(v98, qword_2804AD228);
      sub_26C6766E8(v160, v168);
      v99 = sub_26C6D8878();
      v100 = sub_26C6D8BA8();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v164[0] = v102;
        *v101 = 136380675;
        sub_26C6766E8(v168, v167);
        v103 = sub_26C6D8A18();
        v105 = v104;
        sub_26C676820(v168);
        v106 = sub_26C67A77C(v103, v105, v164);

        *(v101 + 4) = v106;
        v107 = "Can't send pinAction: %{private}s without a connected peer.";
LABEL_54:
        _os_log_impl(&dword_26C66B000, v99, v100, v107, v101, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v102);
        MEMORY[0x26D6A7490](v102, -1, -1);
        MEMORY[0x26D6A7490](v101, -1, -1);

LABEL_56:
        v76 = 2;
        LOWORD(v168[0]) = 2;
        v77 = 1;
        BYTE2(v168[0]) = 1;
        sub_26C67675C();
        swift_willThrowTypedImpl();
        return v76 | (v77 << 16);
      }
    }

    else
    {
      v34 = v23;
      if (v172 == 3)
      {
        sub_26C676744(v169, v168);
        sub_26C67749C(v168, v167);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86A8, &qword_26C6DA388);
        sub_26C6779D0(0, &qword_2804A86B0, 0x277D54CE8);
        v35 = swift_dynamicCast();
        v36 = v161;
        if (v35)
        {
          v37 = v164[0];
          v38 = [v164[0] peerDevice];
          if (!v38)
          {
            v96 = *(v23 + 56);
            v43 = v157;
            v96(v157, 1, 1, v36);
LABEL_70:
            sub_26C677B60(v43, &qword_2804A86E0, &qword_26C6DA3B8);
            if (qword_2804A8598 != -1)
            {
              swift_once();
            }

            v140 = sub_26C6D8898();
            __swift_project_value_buffer(v140, qword_2804AD228);
            v141 = v37;
            v142 = sub_26C6D8878();
            v143 = sub_26C6D8BA8();

            if (os_log_type_enabled(v142, v143))
            {
              v144 = swift_slowAlloc();
              v145 = swift_slowAlloc();
              *v144 = 138412290;
              *(v144 + 4) = v141;
              *v145 = v141;
              v146 = v141;
              _os_log_impl(&dword_26C66B000, v142, v143, "Unable to determine peer identifier from %@ to dismiss session.", v144, 0xCu);
              sub_26C677B60(v145, &qword_2804A9070, &qword_26C6DA3C0);
              MEMORY[0x26D6A7490](v145, -1, -1);
              MEMORY[0x26D6A7490](v144, -1, -1);
            }

            v76 = 2;
            LOWORD(v167[0]) = 2;
            v77 = 1;
            BYTE2(v167[0]) = 1;
            sub_26C67675C();
            swift_willThrowTypedImpl();

            v130 = v168;
LABEL_75:
            __swift_destroy_boxed_opaque_existential_1Tm(v130);
            return v76 | (v77 << 16);
          }

          v39 = v38;
          v40 = [v38 identifier];

          if (v40)
          {
            v41 = v155;
            sub_26C6D8818();

            v42 = 0;
            v43 = v157;
          }

          else
          {
            v42 = 1;
            v43 = v157;
            v41 = v155;
          }

          (*(v34 + 56))(v41, v42, 1, v36);
          sub_26C6767B0(v41, v43);
          if ((*(v34 + 48))(v43, 1, v36) == 1)
          {
            goto LABEL_70;
          }

          v147 = v153;
          (*(v34 + 32))(v153, v43, v36);
          v162 = v162[3];
          v148 = sub_26C6D87F8();
          v149 = [v37 sessionFlags];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_26C6DA0F0;
          v167[0] = 0xD000000000000022;
          v167[1] = 0x800000026C6DEF30;
          sub_26C6D8CD8();
          *(inited + 96) = MEMORY[0x277D839B0];
          *(inited + 72) = 1;
          sub_26C689E88(inited);
          swift_setDeallocating();
          sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
          v151 = sub_26C6D89A8();

          [v162 sendToPeer:v148 flags:v149 object:v151];

          (*(v34 + 8))(v147, v36);
          v94 = v168;
          return __swift_destroy_boxed_opaque_existential_1Tm(v94);
        }

        v76 = 1;
        LOWORD(v167[0]) = 1;
        BYTE2(v167[0]) = 1;
        sub_26C67675C();
        swift_willThrowTypedImpl();
        __swift_destroy_boxed_opaque_existential_1Tm(v168);
        v77 = 1;
        return v76 | (v77 << 16);
      }

      v63 = v161;
      v64 = v162[4];
      if (v64 && (v65 = [v64 peerDevice]) != 0)
      {
        v66 = v65;
        v67 = [v65 identifier];

        if (v67)
        {
          sub_26C6D8818();

          v68 = 0;
        }

        else
        {
          v68 = 1;
        }

        (*(v34 + 56))(v14, v68, 1, v63);
        sub_26C6767B0(v14, v17);
        if ((*(v34 + 48))(v17, 1, v63) != 1)
        {
          (*(v34 + 32))(v31, v17, v63);
          v117 = v162[3];
          v118 = sub_26C6D87F8();
          [v117 pairSetupWithFlags:24 peer:v118];

          return (*(v34 + 8))(v31, v63);
        }
      }

      else
      {
        (*(v23 + 56))(v17, 1, 1, v63);
      }

      sub_26C677B60(v17, &qword_2804A86E0, &qword_26C6DA3B8);
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v112 = sub_26C6D8898();
      __swift_project_value_buffer(v112, qword_2804AD228);
      sub_26C6766E8(v160, v168);
      v99 = sub_26C6D8878();
      v100 = sub_26C6D8BA8();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v164[0] = v102;
        *v101 = 136446210;
        sub_26C6766E8(v168, v167);
        v113 = sub_26C6D8A18();
        v115 = v114;
        sub_26C676820(v168);
        v116 = sub_26C67A77C(v113, v115, v164);

        *(v101 + 4) = v116;
        v107 = "Can't send %{public}s without a connected peer.";
        goto LABEL_54;
      }
    }

    sub_26C676820(v168);
    goto LABEL_56;
  }

  if (!v172)
  {
    v45 = v170;
    v44 = v171;
    sub_26C676744(v169, v164);
    v46 = v162[4];
    if (!v46)
    {
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v78 = sub_26C6D8898();
      __swift_project_value_buffer(v78, qword_2804AD228);
      sub_26C6766E8(v160, v168);
      v79 = sub_26C6D8878();
      v80 = sub_26C6D8BA8();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v163 = v82;
        *v81 = 136446210;
        sub_26C6766E8(v168, v167);
        v83 = sub_26C6D8A18();
        v85 = v84;
        sub_26C676820(v168);
        v86 = sub_26C67A77C(v83, v85, &v163);

        *(v81 + 4) = v86;
        _os_log_impl(&dword_26C66B000, v79, v80, "Can't send %{public}s without a connected session.", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v82);
        MEMORY[0x26D6A7490](v82, -1, -1);
        MEMORY[0x26D6A7490](v81, -1, -1);
      }

      else
      {

        sub_26C676820(v168);
      }

      LOWORD(v168[0]) = 0;
      v77 = 1;
      BYTE2(v168[0]) = 1;
      sub_26C67675C();
      swift_willThrowTypedImpl();
      sub_26C676904(v45);
      __swift_destroy_boxed_opaque_existential_1Tm(v164);
      v76 = 0;
      return v76 | (v77 << 16);
    }

    __swift_project_boxed_opaque_existential_1(v164, v165);
    DynamicType = swift_getDynamicType();
    v48 = v166;
    v49 = *(v166 + 8);
    v50 = v46;
    v49(DynamicType, v48);
    v51 = sub_26C6D89E8();

    v52 = v165;
    v53 = v166;
    __swift_project_boxed_opaque_existential_1(v164, v165);
    if ((*(v53 + 16))(v52, v53))
    {
      v54 = sub_26C6D89A8();
    }

    else
    {
      v54 = 0;
    }

    v87 = v165;
    v88 = v166;
    __swift_project_boxed_opaque_existential_1(v164, v165);
    (*(v88 + 24))(v87, v88);
    v89 = sub_26C6D89A8();

    if (v45)
    {
      v90 = swift_allocObject();
      *(v90 + 16) = v45;
      *(v90 + 24) = v44;
      v91 = sub_26C676964;
    }

    else
    {
      v91 = nullsub_1;
      v90 = 0;
    }

    v92 = swift_allocObject();
    *(v92 + 16) = v91;
    *(v92 + 24) = v90;
    v168[4] = sub_26C67694C;
    v168[5] = v92;
    v168[0] = MEMORY[0x277D85DD0];
    v168[1] = 1107296256;
    v168[2] = sub_26C6A4ED8;
    v168[3] = &block_descriptor_69;
    v93 = _Block_copy(v168);
    sub_26C676954(v45);

    [v50 sendRequestID:v51 options:v54 request:v89 responseHandler:v93];
    _Block_release(v93);

    sub_26C676904(v45);
    v94 = v164;
    return __swift_destroy_boxed_opaque_existential_1Tm(v94);
  }

  sub_26C676744(v169, v164);
  v69 = v162[4];
  if (!v69 || (v70 = [v69 peerDevice]) == 0)
  {
    (*(v23 + 56))(v22, 1, 1, v161);
LABEL_60:
    sub_26C677B60(v22, &qword_2804A86E0, &qword_26C6DA3B8);
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v121 = sub_26C6D8898();
    __swift_project_value_buffer(v121, qword_2804AD228);
    sub_26C6766E8(v160, v168);
    v122 = sub_26C6D8878();
    v123 = sub_26C6D8BA8();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v163 = v125;
      *v124 = 136446210;
      sub_26C6766E8(v168, v167);
      v126 = sub_26C6D8A18();
      v128 = v127;
      sub_26C676820(v168);
      v129 = sub_26C67A77C(v126, v128, &v163);

      *(v124 + 4) = v129;
      _os_log_impl(&dword_26C66B000, v122, v123, "Can't send %{public}s without a connected peer.", v124, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v125);
      MEMORY[0x26D6A7490](v125, -1, -1);
      MEMORY[0x26D6A7490](v124, -1, -1);
    }

    else
    {

      sub_26C676820(v168);
    }

    v76 = 2;
    LOWORD(v168[0]) = 2;
    v77 = 1;
    BYTE2(v168[0]) = 1;
    sub_26C67675C();
    swift_willThrowTypedImpl();
    v130 = v164;
    goto LABEL_75;
  }

  v71 = v70;
  v72 = [v70 identifier];

  v73 = v161;
  if (v72)
  {
    sub_26C6D8818();

    v74 = 0;
  }

  else
  {
    v74 = 1;
  }

  (*(v23 + 56))(v20, v74, 1, v73);
  v119 = v20;
  v120 = v23;
  sub_26C6767B0(v119, v22);
  if ((*(v23 + 48))(v22, 1, v73) == 1)
  {
    goto LABEL_60;
  }

  (*(v23 + 32))(v33, v22, v73);
  v162 = v162[3];
  v131 = sub_26C6D87F8();
  v132 = v33;
  v133 = v165;
  v134 = v166;
  __swift_project_boxed_opaque_existential_1(v164, v165);
  v135 = (*(v134 + 24))(v133, v134);
  v136 = v165;
  v137 = v166;
  __swift_project_boxed_opaque_existential_1(v164, v165);
  v138 = v159;
  v139 = (*(v137 + 32))(v136, v137);
  if (v138)
  {

    v76 = v139 & 0x1FF;
    LOWORD(v168[0]) = v76;
    BYTE2(v168[0]) = 0;
    sub_26C67675C();
    swift_willThrowTypedImpl();
    (*(v120 + 8))(v132, v73);
    __swift_destroy_boxed_opaque_existential_1Tm(v164);
    v77 = 0;
    return v76 | (v77 << 16);
  }

  v152 = sub_26C6D89A8();

  [v162 sendToPeer:v131 flags:v135 object:v152];

  (*(v120 + 8))(v132, v73);
  return __swift_destroy_boxed_opaque_existential_1Tm(v164);
}

void sub_26C66FF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26C67749C(a1, &v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86A8, &qword_26C6DA388);
  sub_26C6779D0(0, &qword_2804A86B0, 0x277D54CE8);
  if (swift_dynamicCast())
  {
    v5 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA100;
    v13 = 0x746365726964;
    v14 = 0xE600000000000000;
    sub_26C6D8CD8();
    v7 = MEMORY[0x277D839B0];
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = 1;
    v13 = 0xD000000000000010;
    v14 = 0x800000026C6DEEB0;
    sub_26C6D8CD8();
    *(inited + 168) = v7;
    *(inited + 144) = 1;
    sub_26C689E88(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
    swift_arrayDestroy();
    (*(a3 + 8))(a2, a3);
    v8 = sub_26C6D89E8();

    v9 = sub_26C6D89A8();

    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = a3;
    v11[4] = v10;
    v17 = sub_26C676584;
    v18 = v11;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_26C6A4FBC;
    v16 = &block_descriptor;
    v12 = _Block_copy(&v13);

    [v5 registerRequestID:v8 options:v9 handler:v12];
    _Block_release(v12);
  }
}

uint64_t sub_26C670224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  v51 = *(v12 - 8);
  v13 = *(v51 + 64);
  MEMORY[0x28223BE20](v12);
  v50 = &v46 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C8, &qword_26C6DA3A8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v48 = &v46 - v20;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v21 = sub_26C6D8898();
  __swift_project_value_buffer(v21, qword_2804AD228);

  v22 = sub_26C6D8878();
  v23 = sub_26C6D8BB8();

  v24 = os_log_type_enabled(v22, v23);
  v25 = a2;
  v49 = v19;
  if (v24)
  {
    v26 = swift_slowAlloc();
    v47 = v12;
    v27 = v26;
    v28 = swift_slowAlloc();
    v53[0] = v28;
    *v27 = 136446466;
    v29 = (*(a6 + 8))(a5, a6);
    v31 = sub_26C67A77C(v29, v30, v53);
    v46 = a3;
    v32 = a4;
    v33 = v31;

    *(v27 + 4) = v33;
    *(v27 + 12) = 2082;
    v34 = sub_26C6D89C8();
    v36 = sub_26C67A77C(v34, v35, v53);

    *(v27 + 14) = v36;
    a4 = v32;
    a3 = v46;
    _os_log_impl(&dword_26C66B000, v22, v23, "Request %{public}s invoked with request: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v28, -1, -1);
    v37 = v27;
    v12 = v47;
    MEMORY[0x26D6A7490](v37, -1, -1);
  }

  v38 = *(a6 + 32);
  v56[3] = a5;
  v56[4] = a6;
  __swift_allocate_boxed_opaque_existential_1(v56);
  v38(v25, v55, a5, a6);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v40 = v51;
    v41 = v50;
    (*(v51 + 16))(v50, Strong + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v12);

    sub_26C67749C(v56, v53);
    v53[5] = a3;
    v53[6] = a4;
    v54 = 3;

    v42 = v48;
    sub_26C6D8B28();
    (*(v40 + 8))(v41, v12);
    v43 = 0;
  }

  else
  {
    v43 = 1;
    v42 = v48;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
  (*(*(v44 - 8) + 56))(v42, v43, 1, v44);
  sub_26C677B60(v42, &qword_2804A86C8, &qword_26C6DA3A8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v56);
}

uint64_t sub_26C6708FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C8, &qword_26C6DA3A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v1 + 16))(v4, Strong + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v0);

    v13[1] = 1;
    v14 = 0u;
    v15 = 0u;
    v16 = 5;
    v17 = 4;
    sub_26C6D8B28();
    (*(v1 + 8))(v4, v0);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
  (*(*(v11 - 8) + 56))(v8, v10, 1, v11);
  return sub_26C677B60(v8, &qword_2804A86C8, &qword_26C6DA3A8);
}

uint64_t sub_26C670B0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_26C670B50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C8, &qword_26C6DA3A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v17 - v7;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v9 = sub_26C6D8898();
  __swift_project_value_buffer(v9, qword_2804AD228);
  v10 = sub_26C6D8878();
  v11 = sub_26C6D8BB8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26C66B000, v10, v11, "SFServiceAgent::service.invalidationHandler triggered", v12, 2u);
    MEMORY[0x26D6A7490](v12, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v1 + 16))(v4, Strong + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v0);

    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v19 = 5;
    v20 = 4;
    sub_26C6D8B28();
    (*(v1 + 8))(v4, v0);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
  (*(*(v15 - 8) + 56))(v8, v14, 1, v15);
  return sub_26C677B60(v8, &qword_2804A86C8, &qword_26C6DA3A8);
}

uint64_t sub_26C670E1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C8, &qword_26C6DA3A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v1 + 16))(v4, Strong + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v0);

    v13[1] = 2;
    v14 = 0u;
    v15 = 0u;
    v16 = 5;
    v17 = 4;
    sub_26C6D8B28();
    (*(v1 + 8))(v4, v0);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
  (*(*(v11 - 8) + 56))(v8, v10, 1, v11);
  return sub_26C677B60(v8, &qword_2804A86C8, &qword_26C6DA3A8);
}

uint64_t sub_26C67102C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_26C6D8838();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  sub_26C6D8818();

  v12 = a3;
  v11(v9, a3);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26C671140(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_26C6D8B08();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v8[5] = a1;
  v9 = a1;
  sub_26C68AF90(0, 0, v5, &unk_26C6DA420, v8);
}

uint64_t sub_26C67129C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  v5[18] = v6;
  v7 = *(v6 - 8);
  v5[19] = v7;
  v8 = *(v7 + 64) + 15;
  v5[20] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C8, &qword_26C6DA3A8) - 8) + 64) + 15;
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C6713A0, 0, 0);
}

uint64_t sub_26C6713A0()
{
  v1 = *(v0 + 128);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 176) = Strong;
  if (Strong)
  {
    type metadata accessor for SFServiceAgent();
    sub_26C677A18(&qword_2804A86A0, type metadata accessor for SFServiceAgent);
    v4 = sub_26C6D8AD8();

    return MEMORY[0x2822009F8](sub_26C67160C, v4, v3);
  }

  else
  {
    v5 = *(v0 + 128);
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    if (v6)
    {
      v7 = *(v0 + 160);
      v8 = *(v0 + 144);
      v9 = *(v0 + 152);
      v10 = *(v0 + 136);
      (*(v9 + 16))(v7, v6 + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v8);

      *(v0 + 40) = sub_26C6779D0(0, &qword_2804A86B0, 0x277D54CE8);
      *(v0 + 48) = &off_287D2B198;
      *(v0 + 16) = v10;
      *(v0 + 72) = 0;
      v11 = v10;
      sub_26C6D8B28();
      (*(v9 + 8))(v7, v8);
      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
    (*(*(v15 - 8) + 56))(v13, v12, 1, v15);
    sub_26C677B60(v13, &qword_2804A86C8, &qword_26C6DA3A8);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_26C67160C()
{
  v1 = *(v0 + 176);
  sub_26C671830(*(v0 + 136));

  return MEMORY[0x2822009F8](sub_26C671680, 0, 0);
}

uint64_t sub_26C671680()
{
  v1 = *(v0 + 128);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    v6 = *(v0 + 136);
    (*(v5 + 16))(v3, Strong + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v4);

    v7 = sub_26C6779D0(0, &qword_2804A86B0, 0x277D54CE8);
    *(v0 + 16) = v6;
    *(v0 + 40) = v7;
    *(v0 + 48) = &off_287D2B198;
    *(v0 + 72) = 0;
    v8 = v6;
    sub_26C6D8B28();
    (*(v5 + 8))(v3, v4);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v11 = *(v0 + 160);
  v10 = *(v0 + 168);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
  (*(*(v12 - 8) + 56))(v10, v9, 1, v12);
  sub_26C677B60(v10, &qword_2804A86C8, &qword_26C6DA3A8);

  v13 = *(v0 + 8);

  return v13();
}

void sub_26C671830(void *a1)
{
  v2 = v1;
  v4 = sub_26C6D8838();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v55 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v55 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  if (*(v2 + 32))
  {
    v58 = v5;
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v22 = sub_26C6D8898();
    __swift_project_value_buffer(v22, qword_2804AD228);
    v23 = a1;

    v59 = sub_26C6D8878();
    v24 = sub_26C6D8BA8();

    if (os_log_type_enabled(v59, v24))
    {
      v55 = v8;
      v25 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v60 = v56;
      *v25 = 136446466;
      v57 = v24;
      if (a1)
      {
        v26 = [v23 peerDevice];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 identifier];

          if (v28)
          {
            sub_26C6D8818();

            v29 = v58;
            (*(v58 + 56))(v19, 0, 1, v4);
          }

          else
          {
            v29 = v58;
            (*(v58 + 56))(v19, 1, 1, v4);
          }

          sub_26C6767B0(v19, v21);
          if (!(*(v29 + 48))(v21, 1, v4))
          {
            v40 = v55;
            (*(v29 + 16))(v55, v21, v4);
            v41 = sub_26C677B60(v21, &qword_2804A86E0, &qword_26C6DA3B8);
            v42 = MEMORY[0x26D6A66E0](v41);
            v43 = v29;
            v44 = v42;
            v32 = v45;
            (*(v43 + 8))(v40, v4);
            v33 = v44;
            goto LABEL_19;
          }

          sub_26C677B60(v21, &qword_2804A86E0, &qword_26C6DA3B8);
        }
      }

      v32 = 0xE300000000000000;
      v33 = 7104878;
LABEL_19:
      v34 = sub_26C67A77C(v33, v32, &v60);

      *(v25 + 4) = v34;
      *(v25 + 12) = 2082;
      v35 = *(v2 + 32);
      if (v35)
      {
        v36 = [v35 peerDevice];
        if (v36)
        {
          v37 = v36;
          v38 = [v36 identifier];

          if (v38)
          {
            sub_26C6D8818();

            v39 = 0;
          }

          else
          {
            v39 = 1;
          }

          v46 = v58;
          (*(v58 + 56))(v13, v39, 1, v4);
          sub_26C6767B0(v13, v16);
          if (!(*(v46 + 48))(v16, 1, v4))
          {
            v51 = v55;
            (*(v46 + 16))(v55, v16, v4);
            v52 = sub_26C677B60(v16, &qword_2804A86E0, &qword_26C6DA3B8);
            v53 = MEMORY[0x26D6A66E0](v52);
            v47 = v54;
            (*(v46 + 8))(v51, v4);
            v48 = v53;
            goto LABEL_28;
          }

          sub_26C677B60(v16, &qword_2804A86E0, &qword_26C6DA3B8);
        }
      }

      v47 = 0xE300000000000000;
      v48 = 7104878;
LABEL_28:
      v49 = sub_26C67A77C(v48, v47, &v60);

      *(v25 + 14) = v49;
      _os_log_impl(&dword_26C66B000, v59, v57, "Ignoring secondary peer: %{public}s, we're already active with: %{public}s", v25, 0x16u);
      v50 = v56;
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v50, -1, -1);
      MEMORY[0x26D6A7490](v25, -1, -1);

      return;
    }

    v31 = v59;
  }

  else
  {
    *(v2 + 32) = a1;
    v30 = a1;

    sub_26C675314();
  }
}

void sub_26C671E20(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_26C671E88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C8, &qword_26C6DA3A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v1 + 16))(v4, Strong + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v0);

    v14 = 0;
    memset(v13, 0, sizeof(v13));
    v15 = 5;
    sub_26C6D8B28();
    (*(v1 + 8))(v4, v0);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
  (*(*(v11 - 8) + 56))(v8, v10, 1, v11);
  return sub_26C677B60(v8, &qword_2804A86C8, &qword_26C6DA3A8);
}

uint64_t sub_26C672090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_26C6720F0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_26C6D8B08();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a1;
  v11[6] = a3;

  v12 = a1;
  sub_26C68AF90(0, 0, v9, &unk_26C6DA410, v11);
}

uint64_t sub_26C672214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  v5[20] = v7;
  v8 = *(v7 - 8);
  v5[21] = v8;
  v9 = *(v8 + 64) + 15;
  v5[22] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C8, &qword_26C6DA3A8) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C67235C, 0, 0);
}

uint64_t sub_26C67235C()
{
  v46 = v0;
  v1 = *(v0 + 128);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    type metadata accessor for SFServiceAgent();
    sub_26C677A18(&qword_2804A86A0, type metadata accessor for SFServiceAgent);
    v4 = sub_26C6D8AD8();

    return MEMORY[0x2822009F8](sub_26C67284C, v4, v3);
  }

  else
  {
    if (sub_26C676C20(0, *(v0 + 136)))
    {
      v5 = *(v0 + 128);
      swift_beginAccess();
      v6 = swift_weakLoadStrong();
      v7 = 1;
      if (v6)
      {
        v8 = *(v0 + 176);
        v9 = *(v0 + 160);
        v10 = *(v0 + 168);
        v11 = *(v0 + 136);
        (*(v10 + 16))(v8, v6 + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v9);

        *(v0 + 40) = sub_26C6779D0(0, &qword_2804A86B0, 0x277D54CE8);
        *(v0 + 48) = &off_287D2B198;
        *(v0 + 16) = v11;
        *(v0 + 72) = 1;
        v12 = v11;
        sub_26C6D8B28();
        (*(v10 + 8))(v8, v9);
        v7 = 0;
      }

      v13 = *(v0 + 184);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
      (*(*(v14 - 8) + 56))(v13, v7, 1, v14);
      sub_26C677B60(v13, &qword_2804A86C8, &qword_26C6DA3A8);
    }

    else
    {
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 136);
      v16 = sub_26C6D8898();
      __swift_project_value_buffer(v16, qword_2804AD228);
      v17 = v15;
      v18 = sub_26C6D8878();
      v19 = sub_26C6D8BA8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = *(v0 + 136);
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v45 = v22;
        *v21 = 136446210;
        v23 = [v20 identifier];
        if (v23)
        {
          v24 = *(v0 + 144);
          v25 = v23;
          sub_26C6D8818();

          v26 = 0;
        }

        else
        {
          v26 = 1;
        }

        v28 = *(v0 + 144);
        v27 = *(v0 + 152);
        v29 = sub_26C6D8838();
        v30 = *(v29 - 8);
        (*(v30 + 56))(v28, v26, 1, v29);
        sub_26C6767B0(v28, v27);
        v31 = (*(v30 + 48))(v27, 1, v29);
        v32 = *(v0 + 152);
        if (v31 == 1)
        {
          sub_26C677B60(*(v0 + 152), &qword_2804A86E0, &qword_26C6DA3B8);
          v33 = 0;
          v34 = 0xE000000000000000;
        }

        else
        {
          v35 = *(v0 + 152);
          v36 = sub_26C6D87D8();
          v34 = v37;
          (*(v30 + 8))(v32, v29);
          v33 = v36;
        }

        v38 = sub_26C67A77C(v33, v34, &v45);

        *(v21 + 4) = v38;
        _os_log_impl(&dword_26C66B000, v18, v19, "Received session secured from non-active session %{public}s. Ignoring.", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x26D6A7490](v22, -1, -1);
        MEMORY[0x26D6A7490](v21, -1, -1);
      }
    }

    v40 = *(v0 + 176);
    v39 = *(v0 + 184);
    v42 = *(v0 + 144);
    v41 = *(v0 + 152);

    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_26C67284C()
{
  v1 = *(*(v0 + 192) + 32);
  *(v0 + 200) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_26C6728C4, 0, 0);
}

uint64_t sub_26C6728C4()
{
  v44 = v0;
  v1 = *(v0 + 200);
  v2 = sub_26C676C20(v1, *(v0 + 136));

  if (v2)
  {
    v3 = *(v0 + 128);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v5 = 1;
    if (Strong)
    {
      v6 = *(v0 + 176);
      v7 = *(v0 + 160);
      v8 = *(v0 + 168);
      v9 = *(v0 + 136);
      (*(v8 + 16))(v6, Strong + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v7);

      *(v0 + 40) = sub_26C6779D0(0, &qword_2804A86B0, 0x277D54CE8);
      *(v0 + 48) = &off_287D2B198;
      *(v0 + 16) = v9;
      *(v0 + 72) = 1;
      v10 = v9;
      sub_26C6D8B28();
      (*(v8 + 8))(v6, v7);
      v5 = 0;
    }

    v11 = *(v0 + 184);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
    (*(*(v12 - 8) + 56))(v11, v5, 1, v12);
    sub_26C677B60(v11, &qword_2804A86C8, &qword_26C6DA3A8);
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 136);
    v14 = sub_26C6D8898();
    __swift_project_value_buffer(v14, qword_2804AD228);
    v15 = v13;
    v16 = sub_26C6D8878();
    v17 = sub_26C6D8BA8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 136);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v43 = v20;
      *v19 = 136446210;
      v21 = [v18 identifier];
      if (v21)
      {
        v22 = *(v0 + 144);
        v23 = v21;
        sub_26C6D8818();

        v24 = 0;
      }

      else
      {
        v24 = 1;
      }

      v26 = *(v0 + 144);
      v25 = *(v0 + 152);
      v27 = sub_26C6D8838();
      v28 = *(v27 - 8);
      (*(v28 + 56))(v26, v24, 1, v27);
      sub_26C6767B0(v26, v25);
      v29 = (*(v28 + 48))(v25, 1, v27);
      v30 = *(v0 + 152);
      if (v29 == 1)
      {
        sub_26C677B60(*(v0 + 152), &qword_2804A86E0, &qword_26C6DA3B8);
        v31 = 0;
        v32 = 0xE000000000000000;
      }

      else
      {
        v33 = *(v0 + 152);
        v34 = sub_26C6D87D8();
        v32 = v35;
        (*(v28 + 8))(v30, v27);
        v31 = v34;
      }

      v36 = sub_26C67A77C(v31, v32, &v43);

      *(v19 + 4) = v36;
      _os_log_impl(&dword_26C66B000, v16, v17, "Received session secured from non-active session %{public}s. Ignoring.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x26D6A7490](v20, -1, -1);
      MEMORY[0x26D6A7490](v19, -1, -1);
    }
  }

  v38 = *(v0 + 176);
  v37 = *(v0 + 184);
  v40 = *(v0 + 144);
  v39 = *(v0 + 152);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_26C672CFC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  v12 = sub_26C6D8B08();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a3;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a4;

  v14 = a1;
  v15 = a2;
  sub_26C68AF90(0, 0, v11, &unk_26C6DA3F0, v13);
}

uint64_t sub_26C672E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8) - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  v6[26] = v8;
  v9 = *(v8 - 8);
  v6[27] = v9;
  v10 = *(v9 + 64) + 15;
  v6[28] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C8, &qword_26C6DA3A8) - 8) + 64) + 15;
  v6[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C672F90, 0, 0);
}

uint64_t sub_26C672F90()
{
  v69 = v0;
  v1 = *(v0 + 152);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 240) = Strong;
  if (Strong)
  {
    type metadata accessor for SFServiceAgent();
    sub_26C677A18(&qword_2804A86A0, type metadata accessor for SFServiceAgent);
    v3 = sub_26C6D8AD8();
    v5 = v4;
    v6 = sub_26C673644;
LABEL_3:

    return MEMORY[0x2822009F8](v6, v3, v5);
  }

  if (sub_26C676C20(0, *(v0 + 160)))
  {
    v7 = *(v0 + 152);
    swift_beginAccess();
    v8 = swift_weakLoadStrong();
    *(v0 + 256) = v8;
    if (v8)
    {
      type metadata accessor for SFServiceAgent();
      sub_26C677A18(&qword_2804A86A0, type metadata accessor for SFServiceAgent);
      v3 = sub_26C6D8AD8();
      v5 = v9;
      v6 = sub_26C673CF0;
      goto LABEL_3;
    }

    v22 = *(v0 + 152);
    swift_beginAccess();
    v23 = swift_weakLoadStrong();
    if (v23)
    {
      v24 = *(v0 + 160);
      (*(*(v0 + 216) + 16))(*(v0 + 224), v23 + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, *(v0 + 208));

      v25 = [v24 identifier];
      if (v25)
      {
        v26 = *(v0 + 192);
        v27 = v25;
        sub_26C6D8818();

        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      v43 = *(v0 + 192);
      v42 = *(v0 + 200);
      v44 = sub_26C6D8838();
      v45 = *(v44 - 8);
      (*(v45 + 56))(v43, v28, 1, v44);
      sub_26C6767B0(v43, v42);
      v46 = (*(v45 + 48))(v42, 1, v44);
      v47 = *(v0 + 200);
      if (v46 == 1)
      {
        sub_26C677B60(*(v0 + 200), &qword_2804A86E0, &qword_26C6DA3B8);
        v48 = 0;
        v49 = 0;
      }

      else
      {
        v50 = *(v0 + 200);
        v48 = sub_26C6D87D8();
        v49 = v51;
        (*(v45 + 8))(v47, v44);
      }

      v53 = *(v0 + 224);
      v52 = *(v0 + 232);
      v54 = *(v0 + 208);
      v55 = *(v0 + 216);
      v56 = *(v0 + 168);
      *(v0 + 16) = v48;
      *(v0 + 24) = v49;
      *(v0 + 32) = v56;
      *(v0 + 56) = 4;
      *(v0 + 72) = 4;
      v57 = v56;
      sub_26C6D8B28();
      (*(v55 + 8))(v53, v54);
      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    v58 = *(v0 + 232);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
    (*(*(v59 - 8) + 56))(v58, v41, 1, v59);
    sub_26C677B60(v58, &qword_2804A86C8, &qword_26C6DA3A8);
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 160);
    v11 = sub_26C6D8898();
    __swift_project_value_buffer(v11, qword_2804AD228);
    v12 = v10;
    v13 = sub_26C6D8878();
    v14 = sub_26C6D8BA8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 160);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v68 = v17;
      *v16 = 136446210;
      v18 = [v15 identifier];
      if (v18)
      {
        v19 = *(v0 + 176);
        v20 = v18;
        sub_26C6D8818();

        v21 = 0;
      }

      else
      {
        v21 = 1;
      }

      v30 = *(v0 + 176);
      v29 = *(v0 + 184);
      v31 = sub_26C6D8838();
      v32 = *(v31 - 8);
      (*(v32 + 56))(v30, v21, 1, v31);
      sub_26C6767B0(v30, v29);
      v33 = (*(v32 + 48))(v29, 1, v31);
      v34 = *(v0 + 184);
      if (v33 == 1)
      {
        sub_26C677B60(*(v0 + 184), &qword_2804A86E0, &qword_26C6DA3B8);
        v35 = 0;
        v36 = 0xE000000000000000;
      }

      else
      {
        v37 = *(v0 + 184);
        v38 = sub_26C6D87D8();
        v36 = v39;
        (*(v32 + 8))(v34, v31);
        v35 = v38;
      }

      v40 = sub_26C67A77C(v35, v36, &v68);

      *(v16 + 4) = v40;
      _os_log_impl(&dword_26C66B000, v13, v14, "Received session ended from non-active session %{public}s. Ignoring.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x26D6A7490](v17, -1, -1);
      MEMORY[0x26D6A7490](v16, -1, -1);
    }
  }

  v61 = *(v0 + 224);
  v60 = *(v0 + 232);
  v63 = *(v0 + 192);
  v62 = *(v0 + 200);
  v65 = *(v0 + 176);
  v64 = *(v0 + 184);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_26C673644()
{
  v1 = *(*(v0 + 240) + 32);
  *(v0 + 248) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_26C6736BC, 0, 0);
}

uint64_t sub_26C6736BC()
{
  v66 = v0;
  v1 = *(v0 + 248);
  v2 = sub_26C676C20(v1, *(v0 + 160));

  if (v2)
  {
    v3 = *(v0 + 152);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 256) = Strong;
    if (Strong)
    {
      type metadata accessor for SFServiceAgent();
      sub_26C677A18(&qword_2804A86A0, type metadata accessor for SFServiceAgent);
      v6 = sub_26C6D8AD8();

      return MEMORY[0x2822009F8](sub_26C673CF0, v6, v5);
    }

    v19 = *(v0 + 152);
    swift_beginAccess();
    v20 = swift_weakLoadStrong();
    if (v20)
    {
      v21 = *(v0 + 160);
      (*(*(v0 + 216) + 16))(*(v0 + 224), v20 + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, *(v0 + 208));

      v22 = [v21 identifier];
      if (v22)
      {
        v23 = *(v0 + 192);
        v24 = v22;
        sub_26C6D8818();

        v25 = 0;
      }

      else
      {
        v25 = 1;
      }

      v40 = *(v0 + 192);
      v39 = *(v0 + 200);
      v41 = sub_26C6D8838();
      v42 = *(v41 - 8);
      (*(v42 + 56))(v40, v25, 1, v41);
      sub_26C6767B0(v40, v39);
      v43 = (*(v42 + 48))(v39, 1, v41);
      v44 = *(v0 + 200);
      if (v43 == 1)
      {
        sub_26C677B60(*(v0 + 200), &qword_2804A86E0, &qword_26C6DA3B8);
        v45 = 0;
        v46 = 0;
      }

      else
      {
        v47 = *(v0 + 200);
        v45 = sub_26C6D87D8();
        v46 = v48;
        (*(v42 + 8))(v44, v41);
      }

      v50 = *(v0 + 224);
      v49 = *(v0 + 232);
      v51 = *(v0 + 208);
      v52 = *(v0 + 216);
      v53 = *(v0 + 168);
      *(v0 + 16) = v45;
      *(v0 + 24) = v46;
      *(v0 + 32) = v53;
      *(v0 + 56) = 4;
      *(v0 + 72) = 4;
      v54 = v53;
      sub_26C6D8B28();
      (*(v52 + 8))(v50, v51);
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v55 = *(v0 + 232);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
    (*(*(v56 - 8) + 56))(v55, v38, 1, v56);
    sub_26C677B60(v55, &qword_2804A86C8, &qword_26C6DA3A8);
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 160);
    v8 = sub_26C6D8898();
    __swift_project_value_buffer(v8, qword_2804AD228);
    v9 = v7;
    v10 = sub_26C6D8878();
    v11 = sub_26C6D8BA8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 160);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v65 = v14;
      *v13 = 136446210;
      v15 = [v12 identifier];
      if (v15)
      {
        v16 = *(v0 + 176);
        v17 = v15;
        sub_26C6D8818();

        v18 = 0;
      }

      else
      {
        v18 = 1;
      }

      v27 = *(v0 + 176);
      v26 = *(v0 + 184);
      v28 = sub_26C6D8838();
      v29 = *(v28 - 8);
      (*(v29 + 56))(v27, v18, 1, v28);
      sub_26C6767B0(v27, v26);
      v30 = (*(v29 + 48))(v26, 1, v28);
      v31 = *(v0 + 184);
      if (v30 == 1)
      {
        sub_26C677B60(*(v0 + 184), &qword_2804A86E0, &qword_26C6DA3B8);
        v32 = 0;
        v33 = 0xE000000000000000;
      }

      else
      {
        v34 = *(v0 + 184);
        v35 = sub_26C6D87D8();
        v33 = v36;
        (*(v29 + 8))(v31, v28);
        v32 = v35;
      }

      v37 = sub_26C67A77C(v32, v33, &v65);

      *(v13 + 4) = v37;
      _os_log_impl(&dword_26C66B000, v10, v11, "Received session ended from non-active session %{public}s. Ignoring.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x26D6A7490](v14, -1, -1);
      MEMORY[0x26D6A7490](v13, -1, -1);
    }
  }

  v58 = *(v0 + 224);
  v57 = *(v0 + 232);
  v60 = *(v0 + 192);
  v59 = *(v0 + 200);
  v62 = *(v0 + 176);
  v61 = *(v0 + 184);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_26C673CF0()
{
  v1 = *(v0 + 256);
  sub_26C671830(0);

  return MEMORY[0x2822009F8](sub_26C673D64, 0, 0);
}

uint64_t sub_26C673D64()
{
  v1 = *(v0 + 152);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 160);
    (*(*(v0 + 216) + 16))(*(v0 + 224), Strong + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, *(v0 + 208));

    v4 = [v3 identifier];
    if (v4)
    {
      v5 = *(v0 + 192);
      v6 = v4;
      sub_26C6D8818();

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v10 = *(v0 + 192);
    v9 = *(v0 + 200);
    v11 = sub_26C6D8838();
    v12 = *(v11 - 8);
    (*(v12 + 56))(v10, v7, 1, v11);
    sub_26C6767B0(v10, v9);
    v13 = (*(v12 + 48))(v9, 1, v11);
    v14 = *(v0 + 200);
    if (v13 == 1)
    {
      sub_26C677B60(*(v0 + 200), &qword_2804A86E0, &qword_26C6DA3B8);
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v17 = *(v0 + 200);
      v15 = sub_26C6D87D8();
      v16 = v18;
      (*(v12 + 8))(v14, v11);
    }

    v20 = *(v0 + 224);
    v19 = *(v0 + 232);
    v21 = *(v0 + 208);
    v22 = *(v0 + 216);
    v23 = *(v0 + 168);
    *(v0 + 16) = v15;
    *(v0 + 24) = v16;
    *(v0 + 32) = v23;
    *(v0 + 56) = 4;
    *(v0 + 72) = 4;
    v24 = v23;
    sub_26C6D8B28();
    (*(v22 + 8))(v20, v21);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v25 = *(v0 + 232);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
  (*(*(v26 - 8) + 56))(v25, v8, 1, v26);
  sub_26C677B60(v25, &qword_2804A86C8, &qword_26C6DA3A8);
  v28 = *(v0 + 224);
  v27 = *(v0 + 232);
  v30 = *(v0 + 192);
  v29 = *(v0 + 200);
  v32 = *(v0 + 176);
  v31 = *(v0 + 184);

  v33 = *(v0 + 8);

  return v33();
}

void sub_26C674054(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_26C6740E0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = sub_26C6D8B08();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a1;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a2;
  *(v15 + 64) = a5;
  v16 = a1;

  sub_26C68AF90(0, 0, v13, &unk_26C6DA3E0, v15);
}

uint64_t sub_26C674224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *(v7 + 76) = a7;
  *(v7 + 352) = a5;
  *(v7 + 360) = a6;
  *(v7 + 344) = a4;
  v8 = sub_26C6D8838();
  *(v7 + 368) = v8;
  v9 = *(v8 - 8);
  *(v7 + 376) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 384) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8) - 8) + 64) + 15;
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  *(v7 + 408) = v12;
  v13 = *(v12 - 8);
  *(v7 + 416) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 424) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C8, &qword_26C6DA3A8) - 8) + 64) + 15;
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C6743E8, 0, 0);
}

uint64_t sub_26C6743E8()
{
  v72 = v0;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = sub_26C6D8898();
  *(v0 + 456) = __swift_project_value_buffer(v3, qword_2804AD228);
  v4 = v2;

  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 344);
    v7 = *(v0 + 352);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v71[0] = v11;
    *v9 = 138543618;
    v12 = [v8 peerDevice];
    *(v9 + 4) = v12;
    *v10 = v12;
    *(v9 + 12) = 2082;
    v13 = sub_26C6D89C8();
    v15 = sub_26C67A77C(v13, v14, v71);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_26C66B000, v5, v6, "Received the following objects from [%{public}@]: %{public}s", v9, 0x16u);
    sub_26C677B60(v10, &qword_2804A9070, &qword_26C6DA3C0);
    MEMORY[0x26D6A7490](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D6A7490](v11, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v16 = *(v0 + 360);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 464) = Strong;
  if (Strong)
  {
    type metadata accessor for SFServiceAgent();
    sub_26C677A18(&qword_2804A86A0, type metadata accessor for SFServiceAgent);
    v19 = sub_26C6D8AD8();

    return MEMORY[0x2822009F8](sub_26C674C1C, v19, v18);
  }

  if ((sub_26C677038(0, *(v0 + 344)) & 1) == 0)
  {
    sub_26C69DDF0(*(v0 + 352), *(v0 + 76), (v0 + 73), v0 + 208);
    v32 = *(v0 + 360);
    swift_beginAccess();
    v33 = swift_weakLoadStrong();
    if (v33)
    {
      v34 = *(v0 + 448);
      v36 = *(v0 + 416);
      v35 = *(v0 + 424);
      v37 = *(v0 + 408);
      (*(v36 + 16))(v35, v33 + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v37);

      sub_26C67749C(v0 + 208, v0 + 80);
      *(v0 + 136) = 2;
      sub_26C6D8B28();
      (*(v36 + 8))(v35, v37);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
      v38 = 0;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
      v38 = 1;
    }

    v39 = *(v0 + 448);
    goto LABEL_28;
  }

  v20 = *(v0 + 456);
  v21 = *(v0 + 344);
  v22 = sub_26C6D8878();
  v23 = sub_26C6D8BA8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 344);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v71[0] = v26;
    *v25 = 136315138;
    v27 = [v24 peerDevice];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 identifier];

      if (v29)
      {
        v30 = *(v0 + 392);
        sub_26C6D8818();

        v31 = 0;
      }

      else
      {
        v31 = 1;
      }

      v41 = *(v0 + 392);
      v40 = *(v0 + 400);
      v42 = *(v0 + 368);
      v43 = *(v0 + 376);
      (*(v43 + 56))(v41, v31, 1, v42);
      sub_26C6767B0(v41, v40);
      v44 = (*(v43 + 48))(v40, 1, v42);
      v45 = *(v0 + 400);
      if (!v44)
      {
        v48 = *(v0 + 376);
        v47 = *(v0 + 384);
        v49 = *(v0 + 368);
        (*(v48 + 16))(v47, *(v0 + 400), v49);
        sub_26C677B60(v45, &qword_2804A86E0, &qword_26C6DA3B8);
        v50 = sub_26C6D87D8();
        v46 = v51;
        (*(v48 + 8))(v47, v49);
        v27 = v50;
        goto LABEL_23;
      }

      sub_26C677B60(*(v0 + 400), &qword_2804A86E0, &qword_26C6DA3B8);
      v27 = 0;
    }

    v46 = 0xE000000000000000;
LABEL_23:
    v52 = sub_26C67A77C(v27, v46, v71);

    *(v25 + 4) = v52;
    _os_log_impl(&dword_26C66B000, v22, v23, "New Session with secondary Peer Device: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x26D6A7490](v26, -1, -1);
    MEMORY[0x26D6A7490](v25, -1, -1);
  }

  v53 = *(v0 + 360);
  swift_beginAccess();
  v54 = swift_weakLoadStrong();
  if (v54)
  {
    v55 = *(v0 + 440);
    v57 = *(v0 + 416);
    v56 = *(v0 + 424);
    v58 = *(v0 + 408);
    v59 = *(v0 + 344);
    (*(v57 + 16))(v56, v54 + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v58);

    *(v0 + 168) = sub_26C6779D0(0, &qword_2804A86B0, 0x277D54CE8);
    *(v0 + 176) = &off_287D2B198;
    *(v0 + 144) = v59;
    *(v0 + 184) = 0;
    *(v0 + 200) = 4;
    v60 = v59;
    sub_26C6D8B28();
    (*(v57 + 8))(v56, v58);
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = *(v0 + 440);
LABEL_28:
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
  (*(*(v61 - 8) + 56))(v39, v38, 1, v61);
  sub_26C677B60(v39, &qword_2804A86C8, &qword_26C6DA3A8);
  v63 = *(v0 + 440);
  v62 = *(v0 + 448);
  v65 = *(v0 + 424);
  v64 = *(v0 + 432);
  v67 = *(v0 + 392);
  v66 = *(v0 + 400);
  v68 = *(v0 + 384);

  v69 = *(v0 + 8);

  return v69();
}

uint64_t sub_26C674C1C()
{
  v1 = *(*(v0 + 464) + 32);
  *(v0 + 472) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_26C674C94, 0, 0);
}

uint64_t sub_26C674C94()
{
  v55 = v0;
  v1 = *(v0 + 472);
  v2 = sub_26C677038(v1, *(v0 + 344));

  if ((v2 & 1) == 0)
  {
    sub_26C69DDF0(*(v0 + 352), *(v0 + 76), (v0 + 73), v0 + 208);
    v15 = *(v0 + 360);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v17 = *(v0 + 448);
      v19 = *(v0 + 416);
      v18 = *(v0 + 424);
      v20 = *(v0 + 408);
      (*(v19 + 16))(v18, Strong + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v20);

      sub_26C67749C(v0 + 208, v0 + 80);
      *(v0 + 136) = 2;
      sub_26C6D8B28();
      (*(v19 + 8))(v18, v20);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
      v21 = 0;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
      v21 = 1;
    }

    v22 = *(v0 + 448);
    goto LABEL_20;
  }

  v3 = *(v0 + 456);
  v4 = *(v0 + 344);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BA8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 344);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v54 = v9;
    *v8 = 136315138;
    v10 = [v7 peerDevice];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 identifier];

      if (v12)
      {
        v13 = *(v0 + 392);
        sub_26C6D8818();

        v14 = 0;
      }

      else
      {
        v14 = 1;
      }

      v24 = *(v0 + 392);
      v23 = *(v0 + 400);
      v25 = *(v0 + 368);
      v26 = *(v0 + 376);
      (*(v26 + 56))(v24, v14, 1, v25);
      sub_26C6767B0(v24, v23);
      v27 = (*(v26 + 48))(v23, 1, v25);
      v28 = *(v0 + 400);
      if (!v27)
      {
        v31 = *(v0 + 376);
        v30 = *(v0 + 384);
        v32 = *(v0 + 368);
        (*(v31 + 16))(v30, *(v0 + 400), v32);
        sub_26C677B60(v28, &qword_2804A86E0, &qword_26C6DA3B8);
        v33 = sub_26C6D87D8();
        v29 = v34;
        (*(v31 + 8))(v30, v32);
        v10 = v33;
        goto LABEL_15;
      }

      sub_26C677B60(*(v0 + 400), &qword_2804A86E0, &qword_26C6DA3B8);
      v10 = 0;
    }

    v29 = 0xE000000000000000;
LABEL_15:
    v35 = sub_26C67A77C(v10, v29, &v54);

    *(v8 + 4) = v35;
    _os_log_impl(&dword_26C66B000, v5, v6, "New Session with secondary Peer Device: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D6A7490](v9, -1, -1);
    MEMORY[0x26D6A7490](v8, -1, -1);
  }

  v36 = *(v0 + 360);
  swift_beginAccess();
  v37 = swift_weakLoadStrong();
  if (v37)
  {
    v38 = *(v0 + 440);
    v40 = *(v0 + 416);
    v39 = *(v0 + 424);
    v41 = *(v0 + 408);
    v42 = *(v0 + 344);
    (*(v40 + 16))(v39, v37 + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v41);

    *(v0 + 168) = sub_26C6779D0(0, &qword_2804A86B0, 0x277D54CE8);
    *(v0 + 176) = &off_287D2B198;
    *(v0 + 144) = v42;
    *(v0 + 184) = 0;
    *(v0 + 200) = 4;
    v43 = v42;
    sub_26C6D8B28();
    (*(v40 + 8))(v39, v41);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = *(v0 + 440);
LABEL_20:
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
  (*(*(v44 - 8) + 56))(v22, v21, 1, v44);
  sub_26C677B60(v22, &qword_2804A86C8, &qword_26C6DA3A8);
  v46 = *(v0 + 440);
  v45 = *(v0 + 448);
  v48 = *(v0 + 424);
  v47 = *(v0 + 432);
  v50 = *(v0 + 392);
  v49 = *(v0 + 400);
  v51 = *(v0 + 384);

  v52 = *(v0 + 8);

  return v52();
}

void sub_26C675260(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_26C6D89B8();

  v5 = a2;
  v4();
}

void sub_26C675314()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = swift_allocObject();
    swift_weakInit();
    v15 = sub_26C677694;
    v16 = v2;
    aBlock = MEMORY[0x277D85DD0];
    v12 = 1107296256;
    v13 = sub_26C6AABE4;
    v14 = &block_descriptor_129;
    v3 = _Block_copy(&aBlock);
    v4 = v1;

    [v4 setErrorHandler_];
    _Block_release(v3);
    v15 = sub_26C675DD4;
    v16 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v12 = 1107296256;
    v13 = sub_26C675FCC;
    v14 = &block_descriptor_132;
    v5 = _Block_copy(&aBlock);
    [v4 setReceivedRequestHandler_];
    _Block_release(v5);
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v6 = sub_26C6D8898();
    __swift_project_value_buffer(v6, qword_2804AD228);
    oslog = sub_26C6D8878();
    v7 = sub_26C6D8BA8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      aBlock = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_26C67A77C(0xD000000000000019, 0x800000026C6DF050, &aBlock);
      _os_log_impl(&dword_26C66B000, oslog, v7, "%{public}s called with nil session.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D6A7490](v9, -1, -1);
      MEMORY[0x26D6A7490](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_26C6755C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_26C6D8B08();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = v7;
  v9 = a1;
  sub_26C68AF90(0, 0, v5, &unk_26C6DA400, v8);
}

uint64_t sub_26C675728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  v5[20] = v7;
  v8 = *(v7 - 8);
  v5[21] = v8;
  v9 = *(v8 + 64) + 15;
  v5[22] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C8, &qword_26C6DA3A8) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C675870, 0, 0);
}

uint64_t sub_26C675870()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 136);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = *(v0 + 136);
      (*(*(v0 + 168) + 16))(*(v0 + 176), Strong + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, *(v0 + 160));
      v5 = v1;

      swift_beginAccess();
      v6 = swift_weakLoadStrong();
      *(v0 + 192) = v6;
      if (v6)
      {
        type metadata accessor for SFServiceAgent();
        sub_26C677A18(&qword_2804A86A0, type metadata accessor for SFServiceAgent);
        v8 = sub_26C6D8AD8();

        return MEMORY[0x2822009F8](sub_26C675AD4, v8, v7);
      }

      v11 = *(v0 + 176);
      v10 = *(v0 + 184);
      v12 = *(v0 + 160);
      v13 = *(v0 + 168);
      v14 = *(v0 + 128);
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v14;
      *(v0 + 56) = 3;
      *(v0 + 72) = 4;
      sub_26C6D8B28();
      (*(v13 + 8))(v11, v12);
      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v15 = *(v0 + 184);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
    (*(*(v16 - 8) + 56))(v15, v9, 1, v16);
    sub_26C677B60(v15, &qword_2804A86C8, &qword_26C6DA3A8);
  }

  v18 = *(v0 + 176);
  v17 = *(v0 + 184);
  v20 = *(v0 + 144);
  v19 = *(v0 + 152);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_26C675AD4()
{
  v1 = *(*(v0 + 192) + 32);
  *(v0 + 200) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_26C675B4C, 0, 0);
}

uint64_t sub_26C675B4C()
{
  v1 = *(v0 + 200);
  if (v1)
  {
    v2 = [*(v0 + 200) identifier];

    if (v2)
    {
      v3 = *(v0 + 144);
      sub_26C6D8818();

      v4 = 0;
    }

    else
    {
      v4 = 1;
    }

    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = sub_26C6D8838();
    v9 = *(v8 - 8);
    (*(v9 + 56))(v7, v4, 1, v8);
    sub_26C6767B0(v7, v6);
    v10 = (*(v9 + 48))(v6, 1, v8);
    v11 = *(v0 + 152);
    if (v10 == 1)
    {
      sub_26C677B60(*(v0 + 152), &qword_2804A86E0, &qword_26C6DA3B8);
      v1 = 0;
      v5 = 0;
    }

    else
    {
      v12 = *(v0 + 152);
      v1 = sub_26C6D87D8();
      v5 = v13;
      (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = *(v0 + 176);
  v14 = *(v0 + 184);
  v16 = *(v0 + 160);
  v17 = *(v0 + 168);
  v18 = *(v0 + 128);
  *(v0 + 16) = v1;
  *(v0 + 24) = v5;
  *(v0 + 32) = v18;
  *(v0 + 56) = 3;
  *(v0 + 72) = 4;
  sub_26C6D8B28();
  (*(v17 + 8))(v15, v16);
  v19 = *(v0 + 184);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  sub_26C677B60(v19, &qword_2804A86C8, &qword_26C6DA3A8);
  v22 = *(v0 + 176);
  v21 = *(v0 + 184);
  v24 = *(v0 + 144);
  v23 = *(v0 + 152);

  v25 = *(v0 + 8);

  return v25();
}

void sub_26C675DD4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void *, unint64_t))
{
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v5 = sub_26C6D8898();
  __swift_project_value_buffer(v5, qword_2804AD240);

  v6 = sub_26C6D8878();
  v7 = sub_26C6D8BA8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = sub_26C6D89C8();
    v12 = sub_26C67A77C(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_26C66B000, v6, v7, "Unregistered Request Received: %s sending back error.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D6A7490](v9, -1, -1);
    MEMORY[0x26D6A7490](v8, -1, -1);
  }

  sub_26C676694();
  v13 = swift_allocError();
  *v14 = 3;
  v15 = sub_26C689E88(MEMORY[0x277D84F90]);
  a3(a1, v13, v15);
}

uint64_t sub_26C675FCC(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = sub_26C6D89B8();
  v9 = _Block_copy(a4);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  v7(a2, v8, sub_26C6776D4, v10);
}

void sub_26C6760B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = sub_26C6D86E8();
    if (a3)
    {
LABEL_3:
      v8 = sub_26C6D89A8();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a4 + 16))(a4, a1, v7);
}

id sub_26C676168()
{
  v1 = [*v0 messageSessionTemplate];

  return v1;
}

uint64_t type metadata accessor for SFServiceAgent()
{
  result = qword_2804A85E8;
  if (!qword_2804A85E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26C6761F4()
{
  sub_26C677C10(319, &qword_2804A85F8, &type metadata for SharingServiceEvent, MEMORY[0x277D85788]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void *sub_26C676438@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26C676448(uint64_t a1)
{
  result = sub_26C677A18(&qword_2804A86A0, type metadata accessor for SFServiceAgent);
  *(a1 + 8) = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26C676514()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C67654C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x26D6A7490);
  }

  return result;
}

unint64_t sub_26C676694()
{
  result = qword_2804A86D8;
  if (!qword_2804A86D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A86D8);
  }

  return result;
}

uint64_t sub_26C676744(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_26C67675C()
{
  result = qword_2804A86E8;
  if (!qword_2804A86E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A86E8);
  }

  return result;
}

uint64_t sub_26C6767B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26C676904(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26C676914()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C676954(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26C676984(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26C6769FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26C676A4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_26C676B2C;

  return sub_26C674224(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_26C676B2C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

BOOL sub_26C676C20(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = sub_26C6D8838();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](a1);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v39 - v24;
  if (!v23 || (v26 = [v23 peerDevice]) == 0)
  {
    (*(v18 + 56))(v16, 1, 1, v17);
LABEL_8:
    v11 = v16;
LABEL_9:
    sub_26C677B60(v11, &qword_2804A86E0, &qword_26C6DA3B8);
    return 0;
  }

  v42 = v22;
  v27 = v26;
  v28 = [v26 identifier];

  if (v28)
  {
    sub_26C6D8818();

    v29 = *(v18 + 56);
    v29(v14, 0, 1, v17);
  }

  else
  {
    v29 = *(v18 + 56);
    v29(v14, 1, 1, v17);
  }

  sub_26C6767B0(v14, v16);
  v30 = *(v18 + 48);
  if (v30(v16, 1, v17) == 1)
  {
    goto LABEL_8;
  }

  v41 = v29;
  v40 = *(v18 + 32);
  v40(v25, v16, v17);
  v32 = [a2 peerDevice];
  if (!v32)
  {
    v41(v11, 1, 1, v17);
LABEL_17:
    (*(v18 + 8))(v25, v17);
    goto LABEL_9;
  }

  v33 = v32;
  v34 = [v32 identifier];

  if (v34)
  {
    sub_26C6D8818();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v41(v8, v35, 1, v17);
  sub_26C6767B0(v8, v11);
  if (v30(v11, 1, v17) == 1)
  {
    goto LABEL_17;
  }

  v36 = v42;
  v40(v42, v11, v17);
  v37 = sub_26C6D8808();
  v38 = *(v18 + 8);
  v38(v36, v17);
  v38(v25, v17);
  return (v37 & 1) != 0;
}

uint64_t sub_26C677038(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8) - 8) + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v40 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = sub_26C6D8838();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](a1);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v40 - v23;
  if (!v22 || (v25 = [v22 peerDevice]) == 0)
  {
    (*(v17 + 56))(v15, 1, 1, v16);
LABEL_8:
    v30 = v15;
    goto LABEL_9;
  }

  v43 = v21;
  v26 = v25;
  v27 = [v25 identifier];

  if (v27)
  {
    sub_26C6D8818();

    v28 = *(v17 + 56);
    v28(v13, 0, 1, v16);
  }

  else
  {
    v28 = *(v17 + 56);
    v28(v13, 1, 1, v16);
  }

  sub_26C6767B0(v13, v15);
  v29 = *(v17 + 48);
  if (v29(v15, 1, v16) == 1)
  {
    goto LABEL_8;
  }

  v42 = v28;
  v41 = *(v17 + 32);
  v41(v24, v15, v16);
  v33 = [a2 peerDevice];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 identifier];

    if (v35)
    {
      sub_26C6D8818();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    v42(v7, v36, 1, v16);
    sub_26C6767B0(v7, v10);
    if (v29(v10, 1, v16) != 1)
    {
      v37 = v43;
      v41(v43, v10, v16);
      sub_26C677A18(&qword_2804A8700, MEMORY[0x277CC95F0]);
      v38 = sub_26C6D89D8();
      v39 = *(v17 + 8);
      v39(v37, v16);
      v39(v24, v16);
      v31 = v38 ^ 1;
      return v31 & 1;
    }
  }

  else
  {
    v42(v10, 1, 1, v16);
  }

  (*(v17 + 8))(v24, v16);
  v30 = v10;
LABEL_9:
  sub_26C677B60(v30, &qword_2804A86E0, &qword_26C6DA3B8);
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_26C67749C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26C677528()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C677570()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26C6775C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26C677C9C;

  return sub_26C672E2C(a1, v4, v5, v6, v7, v9);
}

uint64_t sub_26C67769C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C6776DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26C677724(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26C677C9C;

  return sub_26C675728(a1, v4, v5, v7, v6);
}

uint64_t sub_26C6777EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26C677C9C;

  return sub_26C672214(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_142Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_26C677910(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26C677C9C;

  return sub_26C67129C(a1, v4, v5, v7, v6);
}

uint64_t sub_26C6779D0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26C677A18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26C677AA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8710, &unk_26C6DA430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C677B18(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26C677B60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_26C677C10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_26C677CFC()
{
  v0 = sub_26C6D89E8();
  sub_26C677D78();
  v1 = sub_26C6D89A8();
  AnalyticsSendEvent();
}

unint64_t sub_26C677D78()
{
  result = qword_2804A8758;
  if (!qword_2804A8758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804A8758);
  }

  return result;
}

unint64_t sub_26C677DD4(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v16];
  v2 = v16;
  if (v1)
  {
    v3 = sub_26C6D87A8();
    v5 = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA100;
    v16 = 28783;
    v17 = 0xE200000000000000;
    sub_26C6D8CD8();
    *(inited + 96) = MEMORY[0x277D849A8];
    *(inited + 72) = 5;
    v16 = 1635017060;
    v17 = 0xE400000000000000;
    sub_26C6D8CD8();
    *(inited + 168) = MEMORY[0x277CC9318];
    *(inited + 144) = v3;
    *(inited + 152) = v5;
    v7 = sub_26C689E88(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
    swift_arrayDestroy();
  }

  else
  {
    v8 = v2;
    v9 = sub_26C6D86F8();

    swift_willThrow();
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v10 = sub_26C6D8898();
    __swift_project_value_buffer(v10, qword_2804AD258);
    v11 = sub_26C6D8878();
    v12 = sub_26C6D8BA8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26C66B000, v11, v12, "Failed to encode WFSetupData in LegacySetupDataObject!", v13, 2u);
      MEMORY[0x26D6A7490](v13, -1, -1);
    }

    LOWORD(v16) = 257;
    sub_26C678378();
    swift_willThrowTypedImpl();

    LOBYTE(v16) = 1;
    v7 = 257;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

unint64_t sub_26C678094()
{
  result = sub_26C677DD4(*v0);
  if (v1)
  {
    return result | ((BYTE1(result) & 1) << 8);
  }

  return result;
}

uint64_t sub_26C6780D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_26C678118(a1);
  if (v3)
  {
    *a2 = result;
    a2[1] = BYTE1(result) & 1;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_26C678118(uint64_t a1)
{
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v3 = sub_26C689928(v12), (v4 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v3, v13);
    sub_26C678324(v12);
    if (swift_dynamicCast())
    {
      sub_26C6783CC();
      type metadata accessor for WFSetupData();
      v5 = sub_26C6D8BC8();
      if (v1)
      {

        sub_26C678418(1635017060, 0xE400000000000000);
      }

      else
      {
        v11 = v5;
        sub_26C678418(1635017060, 0xE400000000000000);
        result = v11;
        if (v11)
        {
          return result;
        }
      }
    }
  }

  else
  {
    sub_26C678324(v12);
  }

  if (qword_2804A85A8 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD258);
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BA8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26C66B000, v7, v8, "Unable to dearchive WFSetupData in TransmittableObject.", v9, 2u);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v12[0] = 257;
  sub_26C678378();
  swift_willThrowTypedImpl();
  LOBYTE(v12[0]) = 1;
  return 257;
}

unint64_t sub_26C678378()
{
  result = qword_2804A8760;
  if (!qword_2804A8760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8760);
  }

  return result;
}

unint64_t sub_26C6783CC()
{
  result = qword_2804A8768;
  if (!qword_2804A8768)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804A8768);
  }

  return result;
}

uint64_t sub_26C678418(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26C67846C(uint64_t a1, uint64_t *a2)
{
  sub_26C67749C(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 32));
  sub_26C676744(v5, v3 + 32);
  return swift_endAccess();
}

uint64_t RapportFileTransferTargetAgent.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  RapportFileTransferTargetAgent.init()();
  return v3;
}

uint64_t RapportFileTransferTargetAgent.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8770, &qword_26C6DA570);
  v41 = *(v0 - 8);
  v42 = v0;
  v1 = *(v41 + 64);
  MEMORY[0x28223BE20](v0);
  v40 = v36 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8778, &qword_26C6DA578);
  v4 = *(v3 - 8);
  v39 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = v36 - v9;
  v37 = sub_26C6D8BD8();
  v10 = *(v37 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v37);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26C6D8C08();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v16 = sub_26C6D8978();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_26C6779D0(0, &qword_2804A8718, 0x277D85C90);
  v36[0] = "ring.SFServiceAgent";
  v36[1] = v18;
  sub_26C6D8968();
  v44 = MEMORY[0x277D84F90];
  sub_26C67AE00(&qword_2804A8720, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8728, &qword_26C6DA580);
  sub_26C677B18(&qword_2804A8730, &qword_2804A8728, &qword_26C6DA580);
  sub_26C6D8C88();
  (*(v10 + 104))(v13, *MEMORY[0x277D85268], v37);
  v19 = sub_26C6D8C18();
  v20 = v42;
  v21 = v43;
  *(v43 + 16) = v19;
  v23 = v39;
  v22 = v40;
  v24 = *(v39 + 56);
  v25 = v41;
  (*(v41 + 104))(v40, *MEMORY[0x277D85778], v20);
  v26 = v38;
  sub_26C6D8B18();
  (*(v25 + 8))(v22, v20);
  sub_26C678AFC(v26, v8);
  v27 = *(v23 + 56);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8780, &qword_26C6DA588);
  *(v21 + 56) = v28;
  *(v21 + 64) = sub_26C677B18(&qword_2804A8788, &qword_2804A8780, &qword_26C6DA588);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v21 + 32));
  v30 = *(v28 - 8);
  (*(v30 + 32))(boxed_opaque_existential_1, v8, v28);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8790, &unk_26C6DA590);
  v32 = *(v31 - 8);
  (*(v32 + 8))(&v8[v27], v31);
  sub_26C678AFC(v26, v8);
  (*(v32 + 32))(v21 + OBJC_IVAR____TtC10TDGSharing30RapportFileTransferTargetAgent_output, &v8[*(v23 + 56)], v31);
  (*(v30 + 8))(v8, v28);
  v33 = [objc_allocWithZone(MEMORY[0x277D44190]) init];
  *(v21 + 24) = v33;
  [v33 setDispatchQueue_];
  v34 = *(v21 + 24);
  [v34 setFlags_];

  sub_26C677B60(v26, &qword_2804A8778, &qword_26C6DA578);
  return v21;
}

uint64_t sub_26C678AFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8778, &qword_26C6DA578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C678B6C(_BYTE *a1)
{
  v47[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 24);
  v45 = 0;
  if ([v3 prepareTemplateAndReturnError_])
  {
    v4 = *(v1 + 24);
    v5 = v45;
    v6 = [v4 selfPublicKey];
    if (v6)
    {
      v7 = v6;
      v8 = sub_26C6D87A8();
      v10 = v9;

      v11 = [*(v1 + 24) targetID];
      if (v11)
      {
        v12 = v11;
        sub_26C6D8A08();

        sub_26C6798EC();
        goto LABEL_22;
      }

      sub_26C678418(v8, v10);
    }

    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v22 = sub_26C6D8898();
    __swift_project_value_buffer(v22, qword_2804AD288);

    v23 = v1;
    v24 = sub_26C6D8878();
    v8 = sub_26C6D8BA8();

    if (os_log_type_enabled(v24, v8))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47[0] = v26;
      *v25 = 136380931;
      v27 = [*(v23 + 24) selfPublicKey];
      if (v27)
      {
        v28 = v27;
        v29 = sub_26C6D87A8();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0xF000000000000000;
      }

      v45 = v29;
      v46 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A87A8, &qword_26C6DA5A0);
      v32 = sub_26C6D8A18();
      v34 = sub_26C67A77C(v32, v33, v47);

      *(v25 + 4) = v34;
      *(v25 + 12) = 2081;
      v35 = [*(v23 + 24) targetID];
      if (v35)
      {
        v36 = v35;
        v37 = sub_26C6D8A08();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0;
      }

      v45 = v37;
      v46 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A87B0, &qword_26C6DA5A8);
      v40 = sub_26C6D8A18();
      v42 = sub_26C67A77C(v40, v41, v47);

      *(v25 + 14) = v42;
      _os_log_impl(&dword_26C66B000, v24, v8, "Session Template missing public key: %{private}s or target id: %{private}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v26, -1, -1);
      MEMORY[0x26D6A7490](v25, -1, -1);
    }

    *a1 = 0;
    LOBYTE(v45) = 0;
    sub_26C67A728();
    swift_willThrowTypedImpl();
  }

  else
  {
    v13 = v45;
    v14 = sub_26C6D86F8();

    swift_willThrow();
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v15 = sub_26C6D8898();
    __swift_project_value_buffer(v15, qword_2804AD288);
    v16 = v14;
    v17 = sub_26C6D8878();
    v8 = sub_26C6D8BA8();

    if (os_log_type_enabled(v17, v8))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138477827;
      v20 = v14;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_26C66B000, v17, v8, "Failed to prepare file transfer template: %{private}@", v18, 0xCu);
      sub_26C677B60(v19, &qword_2804A9070, &qword_26C6DA3C0);
      MEMORY[0x26D6A7490](v19, -1, -1);
      MEMORY[0x26D6A7490](v18, -1, -1);
    }

    *a1 = 0;
    LOBYTE(v45) = 0;
    sub_26C67A728();
    swift_willThrowTypedImpl();
  }

LABEL_22:
  v43 = *MEMORY[0x277D85DE8];
  return v8;
}

id sub_26C67902C()
{
  v1 = v0;
  v2 = sub_26C6D8778();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 24);
  v8 = sub_26C6D8798();
  [v7 setPeerPublicKey_];

  v9 = *(v1 + 24);
  v10 = NSTemporaryDirectory();
  sub_26C6D8A08();

  sub_26C6D8728();

  v11 = sub_26C6D8738();
  (*(v3 + 8))(v6, v2);
  [v9 setTemporaryDirectoryURL_];

  return [*(v1 + 24) activate];
}

uint64_t sub_26C6791B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8770, &qword_26C6DA570);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v28[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8778, &qword_26C6DA578);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v28[-v12];
  [*(v0 + 24) finish];
  [*(v0 + 24) invalidate];
  v14 = *(v7 + 56);
  (*(v2 + 104))(v5, *MEMORY[0x277D85778], v1);
  sub_26C6D8B18();
  (*(v2 + 8))(v5, v1);
  sub_26C678AFC(v13, v11);
  v15 = *(v7 + 56);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8780, &qword_26C6DA588);
  v30 = v16;
  v31 = sub_26C677B18(&qword_2804A8788, &qword_2804A8780, &qword_26C6DA588);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
  v18 = *(v16 - 8);
  (*(v18 + 32))(boxed_opaque_existential_1, v11, v16);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  sub_26C676744(&v29, v0 + 32);
  swift_endAccess();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8790, &unk_26C6DA590);
  v20 = *(v19 - 8);
  (*(v20 + 8))(&v11[v15], v19);
  sub_26C678AFC(v13, v11);
  v21 = *(v7 + 56);
  v22 = OBJC_IVAR____TtC10TDGSharing30RapportFileTransferTargetAgent_output;
  swift_beginAccess();
  (*(v20 + 40))(v0 + v22, &v11[v21], v19);
  swift_endAccess();
  (*(v18 + 8))(v11, v16);
  v23 = [objc_allocWithZone(MEMORY[0x277D44190]) init];
  v24 = *(v0 + 24);
  *(v0 + 24) = v23;
  v25 = v23;

  [v25 setDispatchQueue_];
  v26 = *(v0 + 24);
  [v26 setFlags_];

  return sub_26C677B60(v13, &qword_2804A8778, &qword_26C6DA578);
}

void sub_26C679594(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_26C6D8778();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v13 = sub_26C6D8898();
  __swift_project_value_buffer(v13, qword_2804AD288);
  (*(v9 + 16))(v12, a3, v8);

  v14 = sub_26C6D8878();
  v15 = sub_26C6D8BB8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = a1;
    v17 = v16;
    v28 = swift_slowAlloc();
    v30 = v28;
    *v17 = 136446466;
    *(v17 + 4) = sub_26C67A77C(v29, a2, &v30);
    *(v17 + 12) = 2082;
    sub_26C67AE00(&qword_2804A87B8, MEMORY[0x277CC9260]);
    HIDWORD(v27) = v15;
    v18 = sub_26C6D8E28();
    v19 = v4;
    v21 = v20;
    (*(v9 + 8))(v12, v8);
    v22 = sub_26C67A77C(v18, v21, &v30);
    v4 = v19;

    *(v17 + 14) = v22;
    _os_log_impl(&dword_26C66B000, v14, BYTE4(v27), "Rapport Send File with %{public}s, url: %{public}s", v17, 0x16u);
    v23 = v28;
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v23, -1, -1);
    MEMORY[0x26D6A7490](v17, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v24 = [objc_allocWithZone(MEMORY[0x277D44180]) init];
  v25 = sub_26C6D89E8();
  [v24 setFilename_];

  v26 = sub_26C6D8738();
  [v24 setItemURL_];

  [*(v4 + 24) addItem_];
}

uint64_t sub_26C6798EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8790, &unk_26C6DA590);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v8 = OBJC_IVAR____TtC10TDGSharing30RapportFileTransferTargetAgent_output;
  swift_beginAccess();
  v9 = *(v2 + 16);
  v9(v7, v0 + v8, v1);
  v10 = *(v0 + 24);
  v9(v5, v7, v1);
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  (*(v2 + 32))(v12 + v11, v5, v1);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_26C67B194;
  *(v13 + 24) = v12;
  v28 = sub_26C67B260;
  v29 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_26C6AAC78;
  v27 = &block_descriptor_0;
  v14 = _Block_copy(&aBlock);
  v15 = v10;

  [v15 setReceivedItemHandler_];
  _Block_release(v14);

  v16 = *(v0 + 24);
  v28 = sub_26C679F1C;
  v29 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_26C671E20;
  v27 = &block_descriptor_15;
  v17 = _Block_copy(&aBlock);
  v18 = v16;
  [v18 setProgressHandler_];
  _Block_release(v17);

  v19 = *(v0 + 24);
  v28 = sub_26C67A0B4;
  v29 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_26C6AABE4;
  v27 = &block_descriptor_18;
  v20 = _Block_copy(&aBlock);
  v21 = v19;
  [v21 setCompletionHandler_];
  _Block_release(v20);

  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_26C679C48(void *a1, uint64_t (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A87E0, &qword_26C6DA6A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v9 = sub_26C6D8898();
  __swift_project_value_buffer(v9, qword_2804AD288);
  v10 = a1;
  v11 = sub_26C6D8878();
  v12 = sub_26C6D8BB8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = v8;
    v14 = v13;
    v29 = swift_slowAlloc();
    v33[0] = v29;
    *v14 = 136446210;
    v15 = v10;
    v32 = a2;
    v16 = v15;
    v17 = [v15 description];
    v28 = v12;
    v18 = v17;
    v19 = sub_26C6D8A08();
    v31 = v4;
    v21 = v20;

    v22 = sub_26C67A77C(v19, v21, v33);
    v4 = v31;

    *(v14 + 4) = v22;
    a2 = v32;
    _os_log_impl(&dword_26C66B000, v11, v28, "Target Transfer Item Received Event: %{public}s", v14, 0xCu);
    v23 = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x26D6A7490](v23, -1, -1);
    v24 = v14;
    v8 = v30;
    MEMORY[0x26D6A7490](v24, -1, -1);
  }

  v33[3] = sub_26C6779D0(0, &qword_2804A87E8, 0x277D44180);
  v33[4] = &protocol witness table for RPFileTransferItem;
  v33[0] = v10;
  v34 = 0;
  v25 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8790, &unk_26C6DA590);
  sub_26C6D8B28();
  (*(v5 + 8))(v8, v4);
  return a2(0);
}

void sub_26C679F1C(void *a1)
{
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD288);
  v3 = a1;
  oslog = sub_26C6D8878();
  v4 = sub_26C6D8BB8();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v7 = v3;
    v8 = [v7 description];
    v9 = sub_26C6D8A08();
    v11 = v10;

    v12 = sub_26C67A77C(v9, v11, &v14);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_26C66B000, oslog, v4, "Target Progress Event: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6A7490](v6, -1, -1);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }
}

void sub_26C67A0B4(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v3 = sub_26C6D8898();
    __swift_project_value_buffer(v3, qword_2804AD288);
    v4 = a1;
    v5 = sub_26C6D8878();
    v6 = sub_26C6D8BB8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446210;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
      v10 = sub_26C6D8A18();
      v12 = sub_26C67A77C(v10, v11, &v18);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_26C66B000, v5, v6, "Target Transfer Failed: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D6A7490](v8, -1, -1);
      MEMORY[0x26D6A7490](v7, -1, -1);

      return;
    }

    v16 = a1;
  }

  else
  {
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v13 = sub_26C6D8898();
    __swift_project_value_buffer(v13, qword_2804AD288);
    oslog = sub_26C6D8878();
    v14 = sub_26C6D8BB8();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_26C66B000, oslog, v14, "Target Transfer Complete", v15, 2u);
      MEMORY[0x26D6A7490](v15, -1, -1);
    }

    v16 = oslog;
  }
}

uint64_t RapportFileTransferTargetAgent.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v1 = OBJC_IVAR____TtC10TDGSharing30RapportFileTransferTargetAgent_output;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8790, &unk_26C6DA590);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t RapportFileTransferTargetAgent.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v1 = OBJC_IVAR____TtC10TDGSharing30RapportFileTransferTargetAgent_output;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8790, &unk_26C6DA590);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26C67A498(_BYTE *a1)
{
  result = sub_26C678B6C(&v4);
  if (v1)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26C67A4DC()
{
  v1 = [*v0 filename];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26C6D8A08();

  return v3;
}

uint64_t sub_26C67A544@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 itemURL];
  if (v3)
  {
    v4 = v3;
    sub_26C6D8758();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_26C6D8778();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_26C67A5F8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26C67A644(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_26C67A6CC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_26C67A77C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_26C67A728()
{
  result = qword_2804A87A0;
  if (!qword_2804A87A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A87A0);
  }

  return result;
}

uint64_t sub_26C67A77C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26C67A848(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26C676984(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_26C67A848(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26C67A954(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26C6D8D18();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26C67A954(uint64_t a1, unint64_t a2)
{
  v4 = sub_26C67A9A0(a1, a2);
  sub_26C67AAD0(&unk_287D2A9A8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26C67A9A0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26C67ABBC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26C6D8D18();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26C6D8A68();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26C67ABBC(v10, 0);
        result = sub_26C6D8CE8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26C67AAD0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26C67AC30(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26C67ABBC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A87F0, &qword_26C6DA6A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26C67AC30(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A87F0, &qword_26C6DA6A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_26C67AD24(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_26C67AD34(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_26C67ADA8(uint64_t a1)
{
  result = sub_26C67AE00(&qword_2804A87C0, type metadata accessor for RapportFileTransferTargetAgent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26C67AE00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for RapportFileTransferTargetAgent()
{
  result = qword_2804A87C8;
  if (!qword_2804A87C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26C67AE94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_26C67749C(v3 + 32, a2);
}

void sub_26C67AEEC()
{
  sub_26C67B0B0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_26C67B0B0()
{
  if (!qword_2804A87D8)
  {
    v0 = sub_26C6D8B48();
    if (!v1)
    {
      atomic_store(v0, &qword_2804A87D8);
    }
  }
}

uint64_t sub_26C67B100()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8790, &unk_26C6DA590);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26C67B194(void *a1, uint64_t (*a2)(void))
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8790, &unk_26C6DA590) - 8) + 80);

  return sub_26C679C48(a1, a2);
}

uint64_t sub_26C67B228()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t WFSetupData.BuildError.errorDescription.getter()
{
  v1 = *v0;
  sub_26C6D8CF8();
  MEMORY[0x26D6A6940](0xD000000000000032, 0x800000026C6DF1D0);
  v2 = WFSetupData.PropertyKey.rawValue.getter();
  MEMORY[0x26D6A6940](v2);

  MEMORY[0x26D6A6940](46, 0xE100000000000000);
  return 0;
}

uint64_t WFSetupData.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  WFSetupData.Builder.init()();
  return v0;
}

uint64_t WFSetupData.Builder.init()()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 514;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = 0;
  *(v0 + 72) = 2;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xF000000000000000;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 514;
  *(v0 + 184) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 200) = 514;
  *(v0 + 208) = xmmword_26C6DA6C0;
  *(v0 + 224) = 33686018;
  *(v0 + 228) = 2;
  *(v0 + 240) = 0;
  *(v0 + 248) = 0;
  *(v0 + 232) = 0;
  *(v0 + 256) = 514;
  *(v0 + 258) = 2;
  *(v0 + 264) = 0;
  *(v0 + 272) = 1;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0xF000000000000000;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD2A0);
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26C66B000, v3, v4, "Initializing WFSetupData.Builder.", v5, 2u);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  return v1;
}

id sub_26C67B4EC()
{
  v1 = *(v0 + 40);
  if (v1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v3 = *(v0 + 41);
    if (v3 == 2)
    {
      v2 = 5;
    }

    else if (*(v0 + 48))
    {
      v4 = *(v0 + 56);
      if (v4)
      {
        v5 = *(v0 + 64);
        if (v5)
        {
          v6 = *(v0 + 72);
          if (v6 == 2)
          {
            v2 = 7;
          }

          else if (*(v0 + 88))
          {
            if (*(v0 + 136))
            {
              if (*(v0 + 152))
              {
                v7 = *(v0 + 160);
                if (v7 == 2)
                {
                  v2 = 13;
                }

                else
                {
                  v8 = *(v0 + 161);
                  if (v8 == 2)
                  {
                    v2 = 14;
                  }

                  else if (*(v0 + 176))
                  {
                    v9 = *(v0 + 200);
                    if (v9 == 2)
                    {
                      v2 = 17;
                    }

                    else
                    {
                      v10 = *(v0 + 201);
                      if (v10 == 2)
                      {
                        v2 = 18;
                      }

                      else if (*(v0 + 224) == 2)
                      {
                        v2 = 20;
                      }

                      else if (*(v0 + 225) == 2)
                      {
                        v2 = 21;
                      }

                      else
                      {
                        v61 = *(v0 + 225);
                        v62 = *(v0 + 224);
                        v63 = *(v0 + 176);
                        v64 = *(v0 + 48);
                        v67 = *(v0 + 88);
                        v68 = *(v0 + 136);
                        v70 = *(v0 + 152);
                        v65 = v4;
                        v66 = v5;
                        v60 = *(v0 + 226);
                        if (v60 == 2)
                        {
                          v2 = 22;
                        }

                        else
                        {
                          v59 = *(v0 + 227);
                          if (v59 == 2)
                          {
                            v2 = 23;
                          }

                          else
                          {
                            v58 = *(v0 + 228);
                            if (v58 == 2)
                            {
                              v2 = 24;
                            }

                            else
                            {
                              v57 = *(v0 + 256);
                              if (v57 == 2)
                              {
                                v2 = 27;
                              }

                              else
                              {
                                v56 = *(v0 + 257);
                                if (v56 == 2)
                                {
                                  v2 = 28;
                                }

                                else
                                {
                                  v55 = *(v0 + 258);
                                  if (v55 == 2)
                                  {
                                    v2 = 29;
                                  }

                                  else if (*(v0 + 272))
                                  {
                                    v2 = 30;
                                  }

                                  else
                                  {
                                    v54 = *(v0 + 288);
                                    if (v54)
                                    {
                                      v53 = *(v0 + 296);
                                      if (v53)
                                      {
                                        v45 = *(v0 + 304);
                                        if (v45)
                                        {
                                          v32 = *(v0 + 80);
                                          v33 = *(v0 + 128);
                                          v34 = *(v0 + 144);
                                          v42 = *(v0 + 264);
                                          v43 = *(v0 + 280);
                                          v29 = *(v0 + 32);
                                          v30 = *(v0 + 24);
                                          v48 = *(v0 + 104);
                                          v49 = *(v0 + 96);
                                          v31 = *(v0 + 112);
                                          v50 = *(v0 + 120);
                                          v35 = *(v0 + 184);
                                          v36 = *(v0 + 168);
                                          v46 = *(v0 + 16);
                                          v47 = *(v0 + 192);
                                          v51 = *(v0 + 216);
                                          v52 = *(v0 + 208);
                                          v37 = *(v0 + 240);
                                          v38 = *(v0 + 232);
                                          v41 = *(v0 + 312);
                                          v39 = *(v0 + 248);
                                          v40 = *(v0 + 320);
                                          v44 = type metadata accessor for WFSetupData();
                                          v11 = objc_allocWithZone(v44);
                                          *&v11[OBJC_IVAR___WFSetupDataInternal_version] = 0;
                                          *&v11[OBJC_IVAR___WFSetupDataInternal_keyboards] = v46;
                                          v12 = &v11[OBJC_IVAR___WFSetupDataInternal_appleID];
                                          *v12 = v30;
                                          v12[1] = v29;
                                          v11[OBJC_IVAR___WFSetupDataInternal_usesSameAccountForiTunes] = v1 & 1;
                                          v11[OBJC_IVAR___WFSetupDataInternal_isConnectedToWiFi] = v3 & 1;
                                          *&v11[OBJC_IVAR___WFSetupDataInternal_networks] = v64;
                                          *&v11[OBJC_IVAR___WFSetupDataInternal_networkPasswords] = v65;
                                          *&v11[OBJC_IVAR___WFSetupDataInternal_localePreferences] = v66;
                                          v11[OBJC_IVAR___WFSetupDataInternal_isAutomaticTimeZoneEnabled] = v6 & 1;
                                          v13 = &v11[OBJC_IVAR___WFSetupDataInternal_timeZone];
                                          *v13 = v32;
                                          v13[1] = v67;
                                          v14 = &v11[OBJC_IVAR___WFSetupDataInternal_accessibilitySettings];
                                          *v14 = v49;
                                          v14[1] = v48;
                                          v15 = &v11[OBJC_IVAR___WFSetupDataInternal_firstName];
                                          *v15 = v31;
                                          v15[1] = v50;
                                          v16 = &v11[OBJC_IVAR___WFSetupDataInternal_deviceModel];
                                          *v16 = v33;
                                          v16[1] = v68;
                                          v17 = &v11[OBJC_IVAR___WFSetupDataInternal_deviceClass];
                                          v18 = v70;
                                          *v17 = v34;
                                          v17[1] = v18;
                                          v11[OBJC_IVAR___WFSetupDataInternal_hasHomeButton] = v7 & 1;
                                          v11[OBJC_IVAR___WFSetupDataInternal_isRestoring] = v8 & 1;
                                          v19 = &v11[OBJC_IVAR___WFSetupDataInternal_deviceName];
                                          *v19 = v36;
                                          v19[1] = v63;
                                          v20 = &v11[OBJC_IVAR___WFSetupDataInternal_backupUUID];
                                          *v20 = v35;
                                          v20[1] = v47;
                                          v11[OBJC_IVAR___WFSetupDataInternal_isBackupEnabled] = v9 & 1;
                                          v11[OBJC_IVAR___WFSetupDataInternal_isOptedInToLocationServices] = v10 & 1;
                                          v11[OBJC_IVAR___WFSetupDataInternal_isOptedInToDeviceAnalytics] = v60 & 1;
                                          v21 = &v11[OBJC_IVAR___WFSetupDataInternal_locationServicesData];
                                          *v21 = v52;
                                          v21[1] = v51;
                                          v11[OBJC_IVAR___WFSetupDataInternal_isOptedInToFindMyDevice] = v62 & 1;
                                          v11[OBJC_IVAR___WFSetupDataInternal_isOptedInToAppAnalytics] = v61 & 1;
                                          v11[OBJC_IVAR___WFSetupDataInternal_siriAssistantIsEnabled] = v59 & 1;
                                          v11[OBJC_IVAR___WFSetupDataInternal_siriVoiceTriggerIsEnabled] = v58 & 1;
                                          v22 = &v11[OBJC_IVAR___WFSetupDataInternal_siriAssistantLanguageCode];
                                          *v22 = v38;
                                          v22[1] = v37;
                                          *&v11[OBJC_IVAR___WFSetupDataInternal_siriAssistantOutputVoice] = v39;
                                          v11[OBJC_IVAR___WFSetupDataInternal_siriDataSharingIsEnabled] = v57 & 1;
                                          v11[OBJC_IVAR___WFSetupDataInternal_dictationIsEnabled] = v56 & 1;
                                          v11[OBJC_IVAR___WFSetupDataInternal_suppressDictationOptIn] = v55 & 1;
                                          *&v11[OBJC_IVAR___WFSetupDataInternal_deviceTermsIdentifier] = v42;
                                          v23 = &v11[OBJC_IVAR___WFSetupDataInternal_productVersion];
                                          *v23 = v43;
                                          v23[1] = v54;
                                          *&v11[OBJC_IVAR___WFSetupDataInternal_anisetteDataProvider] = v53;
                                          *&v11[OBJC_IVAR___WFSetupDataInternal_prescriptionRecords] = v45;
                                          v24 = &v11[OBJC_IVAR___WFSetupDataInternal_walletData];
                                          *v24 = v41;
                                          v24[1] = v40;

                                          v25 = v53;

                                          swift_unknownObjectRetain();
                                          sub_26C67ED18(v49, v48);

                                          sub_26C67ED18(v52, v51);
                                          v26 = v39;

                                          sub_26C67ED18(v41, v40);
                                          v69.receiver = v11;
                                          v69.super_class = v44;
                                          return objc_msgSendSuper2(&v69, sel_init);
                                        }

                                        v2 = 33;
                                      }

                                      else
                                      {
                                        v2 = 32;
                                      }
                                    }

                                    else
                                    {
                                      v2 = 31;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    v2 = 15;
                  }
                }
              }

              else
              {
                v2 = 12;
              }
            }

            else
            {
              v2 = 11;
            }
          }

          else
          {
            v2 = 8;
          }
        }

        else
        {
          v2 = 6;
        }
      }

      else
      {
        v2 = 4;
      }
    }

    else
    {
      v2 = 3;
    }
  }

  sub_26C67ECC4();
  swift_allocError();
  *v28 = v2;
  return swift_willThrow();
}

uint64_t sub_26C67BBD0(uint64_t a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  swift_unknownObjectRetain();
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8800, &qword_26C6DA6E0);
    v9 = sub_26C6D8A18();
    v11 = sub_26C67A77C(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set keyboards %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  v12 = *(v2 + 16);
  *(v2 + 16) = a1;
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
}

uint64_t sub_26C67BD6C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);

  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    if (a2)
    {
      v11 = a1;
    }

    else
    {
      v11 = 7104878;
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    v13 = sub_26C67A77C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Set appleID: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v14 = *(v3 + 32);
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
}

uint64_t sub_26C67BF1C(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set usesSameAccountForiTunes: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 40) = a1 & 1;
}

uint64_t sub_26C67C030(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set isConnectedToWiFi: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 41) = a1 & 1;
}

uint64_t sub_26C67C144(uint64_t a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);

  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v9 = sub_26C67EE24();
    v10 = MEMORY[0x26D6A69B0](a1, v9);
    v12 = sub_26C67A77C(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set networks: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  v13 = *(v2 + 48);
  *(v2 + 48) = a1;
}

uint64_t sub_26C67C2D8(uint64_t a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set networkPasswords", v7, 2u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  v8 = *(v2 + 56);
  *(v2 + 56) = a1;
}

uint64_t sub_26C67C3E8(uint64_t a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);

  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = sub_26C6D89C8();
    v11 = sub_26C67A77C(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set localePreferences: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  v12 = *(v2 + 64);
  *(v2 + 64) = a1;
}

uint64_t sub_26C67C58C(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set isAutomaticTimeZoneEnabled: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 72) = a1 & 1;
}

uint64_t sub_26C67C6A0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);

  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_26C67A77C(a1, a2, &v13);
    _os_log_impl(&dword_26C66B000, v7, v8, "Set timeZone: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v11 = *(v3 + 88);
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
}

uint64_t sub_26C67C81C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);
  sub_26C67ED18(a1, a2);
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();
  sub_26C67EE70(a1, a2);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    if (a2 >> 60 == 15)
    {
      v11 = 7104878;
    }

    else
    {
      v11 = 0x3E617461443CLL;
    }

    if (a2 >> 60 == 15)
    {
      v12 = 0xE300000000000000;
    }

    else
    {
      v12 = 0xE600000000000000;
    }

    v13 = sub_26C67A77C(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Set accessibilitySettings: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v14 = *(v3 + 96);
  v15 = *(v3 + 104);
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;
  sub_26C67EE70(v14, v15);
  sub_26C67ED18(a1, a2);
}

uint64_t sub_26C67C9E0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);

  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    if (a2)
    {
      v11 = a1;
    }

    else
    {
      v11 = 7104878;
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    v13 = sub_26C67A77C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Set firstName: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v14 = *(v3 + 120);
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
}

uint64_t sub_26C67CB90(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);

  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    if (a2)
    {
      v11 = a1;
    }

    else
    {
      v11 = 7104878;
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    v13 = sub_26C67A77C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Set deviceModel: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v14 = *(v3 + 136);
  *(v3 + 128) = a1;
  *(v3 + 136) = a2;
}

uint64_t sub_26C67CD40(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);

  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    if (a2)
    {
      v11 = a1;
    }

    else
    {
      v11 = 7104878;
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    v13 = sub_26C67A77C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Set deviceClass: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v14 = *(v3 + 152);
  *(v3 + 144) = a1;
  *(v3 + 152) = a2;
}

uint64_t sub_26C67CEF0(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set hasHomeButton: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 160) = a1 & 1;
}

uint64_t sub_26C67D004(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set isRestoring: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 161) = a1 & 1;
}

uint64_t sub_26C67D118(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);

  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    if (a2)
    {
      v11 = a1;
    }

    else
    {
      v11 = 7104878;
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    v13 = sub_26C67A77C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Set deviceName: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v14 = *(v3 + 176);
  *(v3 + 168) = a1;
  *(v3 + 176) = a2;
}

uint64_t sub_26C67D2C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);

  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A87B0, &qword_26C6DA5A8);
    v11 = sub_26C6D8A18();
    v13 = sub_26C67A77C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Set backupUUID: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v14 = *(v3 + 192);
  *(v3 + 184) = a1;
  *(v3 + 192) = a2;
}

uint64_t sub_26C67D474(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set isBackupEnabled: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 200) = a1 & 1;
}

uint64_t sub_26C67D588(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set isOptedInToLocationServices: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 201) = a1 & 1;
}

uint64_t sub_26C67D69C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);
  sub_26C67ED18(a1, a2);
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();
  sub_26C67EE70(a1, a2);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    if (a2 >> 60 == 15)
    {
      v11 = 7104878;
    }

    else
    {
      v11 = 0x3E617461443CLL;
    }

    if (a2 >> 60 == 15)
    {
      v12 = 0xE300000000000000;
    }

    else
    {
      v12 = 0xE600000000000000;
    }

    v13 = sub_26C67A77C(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Set locationServicesData: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v14 = *(v3 + 208);
  v15 = *(v3 + 216);
  *(v3 + 208) = a1;
  *(v3 + 216) = a2;
  sub_26C67EE70(v14, v15);
  sub_26C67ED18(a1, a2);
}

uint64_t sub_26C67D860(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set isOptedInToFindMyDevice: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 224) = a1 & 1;
}

uint64_t sub_26C67D974(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set isOptedInToDeviceAnalytics: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 226) = a1 & 1;
}

uint64_t sub_26C67DA88(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set isOptedInToAppAnalytics: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 225) = a1 & 1;
}

uint64_t sub_26C67DB9C(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set siriAssistantIsEnabled: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 227) = a1 & 1;
}

uint64_t sub_26C67DCB0(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set siriVoiceTriggerIsEnabled: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 228) = a1 & 1;
}

uint64_t sub_26C67DDC4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);

  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    if (a2)
    {
      v11 = a1;
    }

    else
    {
      v11 = 7104878;
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    v13 = sub_26C67A77C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Set siriAssistantLanguageCode: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v14 = *(v3 + 240);
  *(v3 + 232) = a1;
  *(v3 + 240) = a2;
}

uint64_t sub_26C67DF74(void *a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = a1;
  v6 = sub_26C6D8878();
  v7 = sub_26C6D8BB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8810, &qword_26C6DA6E8);
    v11 = sub_26C6D8A18();
    v13 = sub_26C67A77C(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v6, v7, "Set siriAssistantOutputVoice: %s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D6A7490](v9, -1, -1);
    MEMORY[0x26D6A7490](v8, -1, -1);
  }

  v14 = *(v2 + 248);
  *(v2 + 248) = a1;

  v15 = v5;
}

uint64_t sub_26C67E10C(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set siriDataSharingIsEnabled: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 256) = a1 & 1;
}

uint64_t sub_26C67E220(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set dictationIsEnabled: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 257) = a1 & 1;
}

uint64_t sub_26C67E334(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set suppressDictationOptIn: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 258) = a1 & 1;
}

uint64_t sub_26C67E448(uint64_t a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set deviceTermsIdentifier: %ld.", v7, 0xCu);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 264) = a1;
  *(v2 + 272) = 0;
}

uint64_t sub_26C67E558(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);

  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_26C67A77C(a1, a2, &v13);
    _os_log_impl(&dword_26C66B000, v7, v8, "Set productVersion: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v11 = *(v3 + 288);
  *(v3 + 280) = a1;
  *(v3 + 288) = a2;
}

uint64_t sub_26C67E6D4(void *a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = a1;
  v6 = sub_26C6D8878();
  v7 = sub_26C6D8BB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = [v5 description];
    v11 = sub_26C6D8A08();
    v13 = v12;

    v14 = sub_26C67A77C(v11, v13, &v18);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_26C66B000, v6, v7, "Set anisetteDataProvider: %s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D6A7490](v9, -1, -1);
    MEMORY[0x26D6A7490](v8, -1, -1);
  }

  v15 = *(v2 + 296);
  *(v2 + 296) = v5;
  v16 = v5;
}

uint64_t sub_26C67E888(uint64_t a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);

  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v9 = type metadata accessor for PrescriptionRecord();
    v10 = MEMORY[0x26D6A69C0](a1, v9);
    v12 = sub_26C67A77C(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set prescription records: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  v13 = *(v2 + 304);
  *(v2 + 304) = a1;
}

uint64_t sub_26C67EA1C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);
  sub_26C67ED18(a1, a2);
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();
  sub_26C67EE70(a1, a2);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    if (a2 >> 60 == 15)
    {
      v11 = 7104878;
    }

    else
    {
      v11 = 0x3E617461443CLL;
    }

    if (a2 >> 60 == 15)
    {
      v12 = 0xE300000000000000;
    }

    else
    {
      v12 = 0xE600000000000000;
    }

    v13 = sub_26C67A77C(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Set wallet data: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v14 = *(v3 + 312);
  v15 = *(v3 + 320);
  *(v3 + 312) = a1;
  *(v3 + 320) = a2;
  sub_26C67EE70(v14, v15);
  sub_26C67ED18(a1, a2);
}

uint64_t WFSetupData.Builder.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 88);

  sub_26C67EE70(*(v0 + 96), *(v0 + 104));
  v7 = *(v0 + 120);

  v8 = *(v0 + 136);

  v9 = *(v0 + 152);

  v10 = *(v0 + 176);

  v11 = *(v0 + 192);

  sub_26C67EE70(*(v0 + 208), *(v0 + 216));
  v12 = *(v0 + 240);

  v13 = *(v0 + 288);

  v14 = *(v0 + 304);

  sub_26C67EE70(*(v0 + 312), *(v0 + 320));
  return v0;
}

uint64_t WFSetupData.Builder.__deallocating_deinit()
{
  WFSetupData.Builder.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_26C67ECC4()
{
  result = qword_2804A87F8;
  if (!qword_2804A87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A87F8);
  }

  return result;
}

uint64_t sub_26C67ED18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26C67ED2C(a1, a2);
  }

  return a1;
}

uint64_t sub_26C67ED2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_26C67ED80(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_26C67EDF4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_26C67EE24()
{
  result = qword_2804A8808;
  if (!qword_2804A8808)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804A8808);
  }

  return result;
}

uint64_t sub_26C67EE70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26C678418(a1, a2);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for WFSetupData.PropertyKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_17;
  }

  if (a2 + 34 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 34) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 34;
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

      return (*a1 | (v4 << 8)) - 34;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v8 = v6 - 35;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WFSetupData.PropertyKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDE)
  {
    v4 = 0;
  }

  if (a2 > 0xDD)
  {
    v5 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransmittableRequestError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransmittableRequestError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransmittableResponseError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransmittableResponseError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26C67F9D8()
{
  result = qword_2804A8818;
  if (!qword_2804A8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8818);
  }

  return result;
}

uint64_t sub_26C67FA74()
{
  v1 = *v0;
  sub_26C6D8EE8();
  MEMORY[0x26D6A6DF0](v1);
  return sub_26C6D8F08();
}

uint64_t sub_26C67FABC()
{
  v1 = *v0;
  sub_26C6D8EE8();
  MEMORY[0x26D6A6DF0](v1);
  return sub_26C6D8F08();
}

unint64_t sub_26C67FB04()
{
  result = qword_2804A8820;
  if (!qword_2804A8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8820);
  }

  return result;
}

unint64_t WFSetupData.PropertyKey.rawValue.getter()
{
  result = 0x6472616F6279656BLL;
  switch(*v0)
  {
    case 1:
      result = 0x4449656C707061;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x736B726F7774656ELL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
    case 0x16:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0x656E6F5A656D6974;
      break;
    case 9:
    case 0x1E:
      result = 0xD000000000000015;
      break;
    case 0xA:
      result = 0x6D614E7473726966;
      break;
    case 0xB:
      result = 0x6F4D656369766564;
      break;
    case 0xC:
      result = 0x6C43656369766564;
      break;
    case 0xD:
      result = 0x42656D6F48736168;
      break;
    case 0xE:
      result = 0x726F747365527369;
      break;
    case 0xF:
      result = 0x614E656369766564;
      break;
    case 0x10:
      result = 0x555570756B636162;
      break;
    case 0x11:
      result = 0x70756B6361427369;
      break;
    case 0x12:
      result = 0xD00000000000001BLL;
      break;
    case 0x13:
    case 0x20:
      result = 0xD000000000000014;
      break;
    case 0x14:
    case 0x15:
      result = 0xD000000000000017;
      break;
    case 0x17:
    case 0x1D:
      result = 0xD000000000000016;
      break;
    case 0x18:
    case 0x19:
      result = 0xD000000000000019;
      break;
    case 0x1A:
      result = 0xD000000000000018;
      break;
    case 0x1B:
      result = 0xD000000000000018;
      break;
    case 0x1C:
      result = 0xD000000000000012;
      break;
    case 0x1F:
      result = 0x56746375646F7270;
      break;
    case 0x21:
      result = 0xD000000000000013;
      break;
    case 0x22:
      result = 0x614474656C6C6177;
      break;
    default:
      return result;
  }

  return result;
}

id WFSetupData.__allocating_init(keyboards:appleID:usesSameAccountForiTunes:isConnectedToWiFi:networks:networkPasswords:localePreferences:isAutomaticTimeZoneEnabled:timeZone:accessibilitySettings:firstName:deviceModel:deviceClass:hasHomeButton:isRestoring:deviceName:backupUUID:isBackupEnabled:isOptedInToLocationServices:isOptedInToDeviceAnalytics:locationServicesData:isOptedInToFindMyDevice:isOptedInToAppAnalytics:siriAssistantIsEnabled:siriVoiceTriggerIsEnabled:siriAssistantLanguageCode:siriAssistantOutputVoice:siriDataSharingIsEnabled:dictationIsEnabled:suppressDictationOptIn:deviceTermsIdentifier:productVersion:anisetteDataProvider:prescriptionRecords:walletData:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v51 = objc_allocWithZone(v47);
  *&v51[OBJC_IVAR___WFSetupDataInternal_version] = 0;
  *&v51[OBJC_IVAR___WFSetupDataInternal_keyboards] = a1;
  v52 = &v51[OBJC_IVAR___WFSetupDataInternal_appleID];
  *v52 = a2;
  v52[1] = a3;
  v51[OBJC_IVAR___WFSetupDataInternal_usesSameAccountForiTunes] = a4;
  v51[OBJC_IVAR___WFSetupDataInternal_isConnectedToWiFi] = a5;
  *&v51[OBJC_IVAR___WFSetupDataInternal_networks] = a6;
  *&v51[OBJC_IVAR___WFSetupDataInternal_networkPasswords] = a7;
  *&v51[OBJC_IVAR___WFSetupDataInternal_localePreferences] = a8;
  v51[OBJC_IVAR___WFSetupDataInternal_isAutomaticTimeZoneEnabled] = a9;
  v53 = &v51[OBJC_IVAR___WFSetupDataInternal_timeZone];
  *v53 = a10;
  v53[1] = a11;
  v54 = &v51[OBJC_IVAR___WFSetupDataInternal_accessibilitySettings];
  *v54 = a12;
  v54[1] = a13;
  v55 = &v51[OBJC_IVAR___WFSetupDataInternal_firstName];
  *v55 = a14;
  v55[1] = a15;
  v56 = &v51[OBJC_IVAR___WFSetupDataInternal_deviceModel];
  *v56 = a16;
  v56[1] = a17;
  v57 = &v51[OBJC_IVAR___WFSetupDataInternal_deviceClass];
  *v57 = a18;
  v57[1] = a19;
  v51[OBJC_IVAR___WFSetupDataInternal_hasHomeButton] = a20;
  v51[OBJC_IVAR___WFSetupDataInternal_isRestoring] = a21;
  v58 = &v51[OBJC_IVAR___WFSetupDataInternal_deviceName];
  *v58 = a22;
  v58[1] = a23;
  v59 = &v51[OBJC_IVAR___WFSetupDataInternal_backupUUID];
  *v59 = a24;
  v59[1] = a25;
  v51[OBJC_IVAR___WFSetupDataInternal_isBackupEnabled] = a26;
  v51[OBJC_IVAR___WFSetupDataInternal_isOptedInToLocationServices] = a27;
  v51[OBJC_IVAR___WFSetupDataInternal_isOptedInToDeviceAnalytics] = a28;
  v60 = &v51[OBJC_IVAR___WFSetupDataInternal_locationServicesData];
  *v60 = a29;
  v60[1] = a30;
  v51[OBJC_IVAR___WFSetupDataInternal_isOptedInToFindMyDevice] = a31;
  v51[OBJC_IVAR___WFSetupDataInternal_isOptedInToAppAnalytics] = a32;
  v51[OBJC_IVAR___WFSetupDataInternal_siriAssistantIsEnabled] = a33;
  v51[OBJC_IVAR___WFSetupDataInternal_siriVoiceTriggerIsEnabled] = a34;
  v61 = &v51[OBJC_IVAR___WFSetupDataInternal_siriAssistantLanguageCode];
  *v61 = a35;
  v61[1] = a36;
  *&v51[OBJC_IVAR___WFSetupDataInternal_siriAssistantOutputVoice] = a37;
  v51[OBJC_IVAR___WFSetupDataInternal_siriDataSharingIsEnabled] = a38;
  v51[OBJC_IVAR___WFSetupDataInternal_dictationIsEnabled] = a39;
  v51[OBJC_IVAR___WFSetupDataInternal_suppressDictationOptIn] = a40;
  *&v51[OBJC_IVAR___WFSetupDataInternal_deviceTermsIdentifier] = a41;
  v62 = &v51[OBJC_IVAR___WFSetupDataInternal_productVersion];
  *v62 = a42;
  v62[1] = a43;
  *&v51[OBJC_IVAR___WFSetupDataInternal_anisetteDataProvider] = a44;
  *&v51[OBJC_IVAR___WFSetupDataInternal_prescriptionRecords] = a45;
  v63 = &v51[OBJC_IVAR___WFSetupDataInternal_walletData];
  *v63 = a46;
  v63[1] = a47;
  v71.receiver = v51;
  v71.super_class = v70;
  return objc_msgSendSuper2(&v71, sel_init);
}

uint64_t WFSetupData.appleID.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_appleID);
  v2 = *(v0 + OBJC_IVAR___WFSetupDataInternal_appleID + 8);

  return v1;
}

uint64_t WFSetupData.walletData.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_walletData);
  sub_26C67ED18(v1, *(v0 + OBJC_IVAR___WFSetupDataInternal_walletData + 8));
  return v1;
}

id sub_26C6804FC(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + *a3);
  sub_26C6779D0(0, a4, a5);

  v6 = sub_26C6D8A98();

  return v6;
}

uint64_t WFSetupData.timeZone.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_timeZone);
  v2 = *(v0 + OBJC_IVAR___WFSetupDataInternal_timeZone + 8);

  return v1;
}

uint64_t WFSetupData.accessibilitySettings.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_accessibilitySettings);
  sub_26C67ED18(v1, *(v0 + OBJC_IVAR___WFSetupDataInternal_accessibilitySettings + 8));
  return v1;
}

uint64_t WFSetupData.firstName.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_firstName);
  v2 = *(v0 + OBJC_IVAR___WFSetupDataInternal_firstName + 8);

  return v1;
}

uint64_t WFSetupData.deviceModel.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_deviceModel);
  v2 = *(v0 + OBJC_IVAR___WFSetupDataInternal_deviceModel + 8);

  return v1;
}

uint64_t WFSetupData.deviceClass.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_deviceClass);
  v2 = *(v0 + OBJC_IVAR___WFSetupDataInternal_deviceClass + 8);

  return v1;
}

uint64_t WFSetupData.deviceName.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_deviceName);
  v2 = *(v0 + OBJC_IVAR___WFSetupDataInternal_deviceName + 8);

  return v1;
}

uint64_t WFSetupData.backupUUID.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_backupUUID);
  v2 = *(v0 + OBJC_IVAR___WFSetupDataInternal_backupUUID + 8);

  return v1;
}

id sub_26C68089C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 8);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *v3;
    sub_26C67ED2C(*v3, *(v3 + 8));
    v7 = sub_26C6D8798();
    sub_26C67EE70(v6, v4);
    v5 = v7;
  }

  return v5;
}

uint64_t WFSetupData.locationServicesData.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_locationServicesData);
  sub_26C67ED18(v1, *(v0 + OBJC_IVAR___WFSetupDataInternal_locationServicesData + 8));
  return v1;
}

id sub_26C680A0C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = sub_26C6D89E8();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t WFSetupData.siriAssistantLanguageCode.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_siriAssistantLanguageCode);
  v2 = *(v0 + OBJC_IVAR___WFSetupDataInternal_siriAssistantLanguageCode + 8);

  return v1;
}

void *WFSetupData.siriAssistantOutputVoice.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_siriAssistantOutputVoice);
  v2 = v1;
  return v1;
}

id sub_26C680B80(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_26C6D89E8();

  return v6;
}

uint64_t WFSetupData.productVersion.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_productVersion);
  v2 = *(v0 + OBJC_IVAR___WFSetupDataInternal_productVersion + 8);

  return v1;
}

id WFSetupData.init(keyboards:appleID:usesSameAccountForiTunes:isConnectedToWiFi:networks:networkPasswords:localePreferences:isAutomaticTimeZoneEnabled:timeZone:accessibilitySettings:firstName:deviceModel:deviceClass:hasHomeButton:isRestoring:deviceName:backupUUID:isBackupEnabled:isOptedInToLocationServices:isOptedInToDeviceAnalytics:locationServicesData:isOptedInToFindMyDevice:isOptedInToAppAnalytics:siriAssistantIsEnabled:siriVoiceTriggerIsEnabled:siriAssistantLanguageCode:siriAssistantOutputVoice:siriDataSharingIsEnabled:dictationIsEnabled:suppressDictationOptIn:deviceTermsIdentifier:productVersion:anisetteDataProvider:prescriptionRecords:walletData:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  *&v47[OBJC_IVAR___WFSetupDataInternal_version] = 0;
  *&v47[OBJC_IVAR___WFSetupDataInternal_keyboards] = a1;
  v48 = &v47[OBJC_IVAR___WFSetupDataInternal_appleID];
  *v48 = a2;
  v48[1] = a3;
  v47[OBJC_IVAR___WFSetupDataInternal_usesSameAccountForiTunes] = a4;
  v47[OBJC_IVAR___WFSetupDataInternal_isConnectedToWiFi] = a5;
  *&v47[OBJC_IVAR___WFSetupDataInternal_networks] = a6;
  *&v47[OBJC_IVAR___WFSetupDataInternal_networkPasswords] = a7;
  *&v47[OBJC_IVAR___WFSetupDataInternal_localePreferences] = a8;
  v47[OBJC_IVAR___WFSetupDataInternal_isAutomaticTimeZoneEnabled] = a9;
  v49 = &v47[OBJC_IVAR___WFSetupDataInternal_timeZone];
  *v49 = a10;
  v49[1] = a11;
  v50 = &v47[OBJC_IVAR___WFSetupDataInternal_accessibilitySettings];
  *v50 = a12;
  v50[1] = a13;
  v51 = &v47[OBJC_IVAR___WFSetupDataInternal_firstName];
  *v51 = a14;
  v51[1] = a15;
  v52 = &v47[OBJC_IVAR___WFSetupDataInternal_deviceModel];
  *v52 = a16;
  v52[1] = a17;
  v53 = &v47[OBJC_IVAR___WFSetupDataInternal_deviceClass];
  *v53 = a18;
  v53[1] = a19;
  v47[OBJC_IVAR___WFSetupDataInternal_hasHomeButton] = a20;
  v47[OBJC_IVAR___WFSetupDataInternal_isRestoring] = a21;
  v54 = &v47[OBJC_IVAR___WFSetupDataInternal_deviceName];
  *v54 = a22;
  v54[1] = a23;
  v55 = &v47[OBJC_IVAR___WFSetupDataInternal_backupUUID];
  *v55 = a24;
  v55[1] = a25;
  v47[OBJC_IVAR___WFSetupDataInternal_isBackupEnabled] = a26;
  v47[OBJC_IVAR___WFSetupDataInternal_isOptedInToLocationServices] = a27;
  v47[OBJC_IVAR___WFSetupDataInternal_isOptedInToDeviceAnalytics] = a28;
  v56 = &v47[OBJC_IVAR___WFSetupDataInternal_locationServicesData];
  *v56 = a29;
  v56[1] = a30;
  v47[OBJC_IVAR___WFSetupDataInternal_isOptedInToFindMyDevice] = a31;
  v47[OBJC_IVAR___WFSetupDataInternal_isOptedInToAppAnalytics] = a32;
  v47[OBJC_IVAR___WFSetupDataInternal_siriAssistantIsEnabled] = a33;
  v47[OBJC_IVAR___WFSetupDataInternal_siriVoiceTriggerIsEnabled] = a34;
  v57 = &v47[OBJC_IVAR___WFSetupDataInternal_siriAssistantLanguageCode];
  *v57 = a35;
  v57[1] = a36;
  *&v47[OBJC_IVAR___WFSetupDataInternal_siriAssistantOutputVoice] = a37;
  v47[OBJC_IVAR___WFSetupDataInternal_siriDataSharingIsEnabled] = a38;
  v47[OBJC_IVAR___WFSetupDataInternal_dictationIsEnabled] = a39;
  v47[OBJC_IVAR___WFSetupDataInternal_suppressDictationOptIn] = a40;
  *&v47[OBJC_IVAR___WFSetupDataInternal_deviceTermsIdentifier] = a41;
  v58 = &v47[OBJC_IVAR___WFSetupDataInternal_productVersion];
  *v58 = a42;
  v58[1] = a43;
  *&v47[OBJC_IVAR___WFSetupDataInternal_anisetteDataProvider] = a44;
  *&v47[OBJC_IVAR___WFSetupDataInternal_prescriptionRecords] = a45;
  v59 = &v47[OBJC_IVAR___WFSetupDataInternal_walletData];
  *v59 = a46;
  v59[1] = a47;
  v61.receiver = v47;
  v61.super_class = type metadata accessor for WFSetupData();
  return objc_msgSendSuper2(&v61, sel_init);
}

uint64_t sub_26C681410(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR___WFSetupDataInternal_keyboards);
  if (v4)
  {
    v5 = *(v2 + OBJC_IVAR___WFSetupDataInternal_keyboards);
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = 0;
    v97 = 0;
    v98 = 0;
  }

  v96 = v4;
  v99 = ObjectType;
  v95 = 0;
  swift_unknownObjectRetain();
  sub_26C682010(&v96, &v95);
  sub_26C682188(&v96);
  v7 = *(v2 + OBJC_IVAR___WFSetupDataInternal_appleID + 8);
  if (v7)
  {
    v8 = *(v2 + OBJC_IVAR___WFSetupDataInternal_appleID);
    v9 = MEMORY[0x277D837D0];
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v98 = 0;
  }

  v96 = v8;
  v97 = v7;
  v99 = v9;
  v95 = 1;

  sub_26C682010(&v96, &v95);
  sub_26C682188(&v96);
  v10 = *(v2 + OBJC_IVAR___WFSetupDataInternal_usesSameAccountForiTunes);
  v11 = sub_26C6D89E8();
  [a1 encodeBool:v10 forKey:v11];

  v96 = *(v2 + OBJC_IVAR___WFSetupDataInternal_networks);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8958, &qword_26C6DAAD0);
  v12 = sub_26C6D8E68();
  v13 = sub_26C6D89E8();
  [a1 encodeObject:v12 forKey:v13];
  swift_unknownObjectRelease();

  v96 = *(v2 + OBJC_IVAR___WFSetupDataInternal_networkPasswords);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8960, &qword_26C6DAAD8);
  v14 = sub_26C6D8E68();
  v15 = sub_26C6D89E8();
  [a1 encodeObject:v14 forKey:v15];
  swift_unknownObjectRelease();

  v16 = *(v2 + OBJC_IVAR___WFSetupDataInternal_isConnectedToWiFi);
  v17 = sub_26C6D89E8();
  [a1 encodeBool:v16 forKey:v17];

  v96 = *(v2 + OBJC_IVAR___WFSetupDataInternal_localePreferences);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8968, &qword_26C6DBE50);
  v18 = sub_26C6D8E68();
  v19 = sub_26C6D89E8();
  [a1 encodeObject:v18 forKey:v19];
  swift_unknownObjectRelease();

  v20 = *(v2 + OBJC_IVAR___WFSetupDataInternal_isAutomaticTimeZoneEnabled);
  v21 = sub_26C6D89E8();
  [a1 encodeBool:v20 forKey:v21];

  v22 = *(v2 + OBJC_IVAR___WFSetupDataInternal_timeZone + 8);
  v96 = *(v2 + OBJC_IVAR___WFSetupDataInternal_timeZone);
  v97 = v22;

  v23 = sub_26C6D8E68();
  v24 = sub_26C6D89E8();
  [a1 encodeObject:v23 forKey:v24];
  swift_unknownObjectRelease();

  v25 = *(v2 + OBJC_IVAR___WFSetupDataInternal_accessibilitySettings);
  v26 = *(v2 + OBJC_IVAR___WFSetupDataInternal_accessibilitySettings + 8);
  if (v26 >> 60 == 15)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v98 = 0;
  }

  else
  {
    v29 = MEMORY[0x277CC9318];
    v27 = *(v2 + OBJC_IVAR___WFSetupDataInternal_accessibilitySettings);
    v28 = *(v2 + OBJC_IVAR___WFSetupDataInternal_accessibilitySettings + 8);
  }

  v96 = v27;
  v97 = v28;
  v99 = v29;
  v95 = 9;
  sub_26C67ED18(v25, v26);
  sub_26C682010(&v96, &v95);
  sub_26C682188(&v96);
  v30 = *(v2 + OBJC_IVAR___WFSetupDataInternal_firstName + 8);
  if (v30)
  {
    v31 = *(v2 + OBJC_IVAR___WFSetupDataInternal_firstName);
    v32 = MEMORY[0x277D837D0];
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v98 = 0;
  }

  v96 = v31;
  v97 = v30;
  v99 = v32;
  v95 = 10;

  sub_26C682010(&v96, &v95);
  sub_26C682188(&v96);
  v33 = *(v2 + OBJC_IVAR___WFSetupDataInternal_deviceModel + 8);
  v96 = *(v2 + OBJC_IVAR___WFSetupDataInternal_deviceModel);
  v97 = v33;

  v34 = sub_26C6D8E68();
  v35 = sub_26C6D89E8();
  [a1 encodeObject:v34 forKey:v35];
  swift_unknownObjectRelease();

  v36 = *(v2 + OBJC_IVAR___WFSetupDataInternal_deviceClass + 8);
  v96 = *(v2 + OBJC_IVAR___WFSetupDataInternal_deviceClass);
  v97 = v36;

  v37 = sub_26C6D8E68();
  v38 = sub_26C6D89E8();
  [a1 encodeObject:v37 forKey:v38];
  swift_unknownObjectRelease();

  v39 = *(v2 + OBJC_IVAR___WFSetupDataInternal_hasHomeButton);
  v40 = sub_26C6D89E8();
  [a1 encodeBool:v39 forKey:v40];

  v41 = *(v2 + OBJC_IVAR___WFSetupDataInternal_isRestoring);
  v42 = sub_26C6D89E8();
  [a1 encodeBool:v41 forKey:v42];

  v43 = *(v2 + OBJC_IVAR___WFSetupDataInternal_deviceName + 8);
  v96 = *(v2 + OBJC_IVAR___WFSetupDataInternal_deviceName);
  v97 = v43;

  v44 = sub_26C6D8E68();
  v45 = sub_26C6D89E8();
  [a1 encodeObject:v44 forKey:v45];
  swift_unknownObjectRelease();

  v46 = *(v2 + OBJC_IVAR___WFSetupDataInternal_backupUUID + 8);
  if (v46)
  {
    v47 = *(v2 + OBJC_IVAR___WFSetupDataInternal_backupUUID);
    v48 = MEMORY[0x277D837D0];
  }

  else
  {
    v47 = 0;
    v48 = 0;
    v98 = 0;
  }

  v96 = v47;
  v97 = v46;
  v99 = v48;
  v95 = 16;

  sub_26C682010(&v96, &v95);
  sub_26C682188(&v96);
  v49 = *(v2 + OBJC_IVAR___WFSetupDataInternal_isBackupEnabled);
  v50 = sub_26C6D89E8();
  [a1 encodeBool:v49 forKey:v50];

  v51 = *(v2 + OBJC_IVAR___WFSetupDataInternal_isOptedInToLocationServices);
  v52 = sub_26C6D89E8();
  [a1 encodeBool:v51 forKey:v52];

  v53 = *(v2 + OBJC_IVAR___WFSetupDataInternal_locationServicesData);
  v54 = *(v2 + OBJC_IVAR___WFSetupDataInternal_locationServicesData + 8);
  if (v54 >> 60 == 15)
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v98 = 0;
  }

  else
  {
    v57 = MEMORY[0x277CC9318];
    v55 = *(v2 + OBJC_IVAR___WFSetupDataInternal_locationServicesData);
    v56 = *(v2 + OBJC_IVAR___WFSetupDataInternal_locationServicesData + 8);
  }

  v96 = v55;
  v97 = v56;
  v99 = v57;
  v95 = 19;
  sub_26C67ED18(v53, v54);
  sub_26C682010(&v96, &v95);
  sub_26C682188(&v96);
  v58 = *(v2 + OBJC_IVAR___WFSetupDataInternal_isOptedInToFindMyDevice);
  v59 = sub_26C6D89E8();
  [a1 encodeBool:v58 forKey:v59];

  v60 = *(v2 + OBJC_IVAR___WFSetupDataInternal_isOptedInToAppAnalytics);
  v61 = sub_26C6D89E8();
  [a1 encodeBool:v60 forKey:v61];

  v62 = *(v2 + OBJC_IVAR___WFSetupDataInternal_isOptedInToDeviceAnalytics);
  v63 = sub_26C6D89E8();
  [a1 encodeBool:v62 forKey:v63];

  v64 = *(v2 + OBJC_IVAR___WFSetupDataInternal_siriAssistantIsEnabled);
  v65 = sub_26C6D89E8();
  [a1 encodeBool:v64 forKey:v65];

  v66 = *(v2 + OBJC_IVAR___WFSetupDataInternal_siriVoiceTriggerIsEnabled);
  v67 = sub_26C6D89E8();
  [a1 encodeBool:v66 forKey:v67];

  v68 = *(v2 + OBJC_IVAR___WFSetupDataInternal_siriAssistantLanguageCode + 8);
  if (v68)
  {
    v69 = *(v2 + OBJC_IVAR___WFSetupDataInternal_siriAssistantLanguageCode);
    v70 = MEMORY[0x277D837D0];
  }

  else
  {
    v69 = 0;
    v70 = 0;
    v98 = 0;
  }

  v96 = v69;
  v97 = v68;
  v99 = v70;
  v95 = 25;

  sub_26C682010(&v96, &v95);
  sub_26C682188(&v96);
  v71 = *(v2 + OBJC_IVAR___WFSetupDataInternal_siriAssistantOutputVoice);
  if (v71)
  {
    v72 = sub_26C6779D0(0, &qword_2804A8978, 0x277CEF528);
  }

  else
  {
    v72 = 0;
    v97 = 0;
    v98 = 0;
  }

  v96 = v71;
  v99 = v72;
  v95 = 26;
  v73 = v71;
  sub_26C682010(&v96, &v95);
  sub_26C682188(&v96);
  v74 = *(v2 + OBJC_IVAR___WFSetupDataInternal_siriDataSharingIsEnabled);
  v75 = sub_26C6D89E8();
  [a1 encodeBool:v74 forKey:v75];

  v76 = *(v2 + OBJC_IVAR___WFSetupDataInternal_dictationIsEnabled);
  v77 = sub_26C6D89E8();
  [a1 encodeBool:v76 forKey:v77];

  v78 = *(v2 + OBJC_IVAR___WFSetupDataInternal_suppressDictationOptIn);
  v79 = sub_26C6D89E8();
  [a1 encodeBool:v78 forKey:v79];

  v80 = *(v2 + OBJC_IVAR___WFSetupDataInternal_deviceTermsIdentifier);
  v81 = sub_26C6D89E8();
  [a1 encodeInteger:v80 forKey:v81];

  v82 = *(v2 + OBJC_IVAR___WFSetupDataInternal_productVersion + 8);
  v96 = *(v2 + OBJC_IVAR___WFSetupDataInternal_productVersion);
  v97 = v82;

  v83 = sub_26C6D8E68();
  v84 = sub_26C6D89E8();
  [a1 encodeObject:v83 forKey:v84];
  swift_unknownObjectRelease();

  v85 = *(v2 + OBJC_IVAR___WFSetupDataInternal_anisetteDataProvider);
  v86 = sub_26C6D89E8();
  [a1 encodeObject:v85 forKey:v86];

  v96 = *(v2 + OBJC_IVAR___WFSetupDataInternal_prescriptionRecords);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8970, &qword_26C6DAAE0);
  v87 = sub_26C6D8E68();
  v88 = sub_26C6D89E8();
  [a1 encodeObject:v87 forKey:v88];
  swift_unknownObjectRelease();

  v89 = *(v2 + OBJC_IVAR___WFSetupDataInternal_walletData);
  v90 = *(v2 + OBJC_IVAR___WFSetupDataInternal_walletData + 8);
  if (v90 >> 60 == 15)
  {
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v98 = 0;
  }

  else
  {
    v93 = MEMORY[0x277CC9318];
    v91 = *(v2 + OBJC_IVAR___WFSetupDataInternal_walletData);
    v92 = *(v2 + OBJC_IVAR___WFSetupDataInternal_walletData + 8);
  }

  v96 = v91;
  v97 = v92;
  v99 = v93;
  v95 = 34;
  sub_26C67ED18(v89, v90);
  sub_26C682010(&v96, &v95);
  return sub_26C682188(&v96);
}

void sub_26C682010(uint64_t a1, char *a2)
{
  if (*(a1 + 24))
  {
    v3 = v2;
    v4 = *a2;
    sub_26C684E18(a1, v13);
    v5 = v14;
    if (v14)
    {
      v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
      v7 = *(v5 - 8);
      v8 = *(v7 + 64);
      MEMORY[0x28223BE20](v6);
      v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v10);
      v11 = sub_26C6D8E38();
      (*(v7 + 8))(v10, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
    }

    else
    {
      v11 = 0;
    }

    LOBYTE(v13[0]) = v4;
    WFSetupData.PropertyKey.rawValue.getter();
    v12 = sub_26C6D89E8();

    [v3 encodeObject:v11 forKey:v12];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_26C682188(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8950, &qword_26C6DAC50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id WFSetupData.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___WFSetupDataInternal_version) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8980, &qword_26C6DAC60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26C6DAAA0;
  v4 = sub_26C6779D0(0, &qword_2804A8988, 0x277CBEA60);
  *(v3 + 32) = v4;
  v5 = sub_26C6779D0(0, &qword_2804A8990, 0x277CCACA8);
  *(v3 + 40) = v5;
  v6 = sub_26C6779D0(0, &qword_2804A8808, 0x277CBEAC0);
  *(v3 + 48) = v6;
  v7 = sub_26C6D89E8();
  v8 = [a1 containsValueForKey_];

  if (v8)
  {
    sub_26C6D8C48();

    v9 = *(&v178 + 1);
    if (*(&v178 + 1))
    {
      v10 = __swift_project_boxed_opaque_existential_1(&v177, *(&v178 + 1));
      v11 = *(v9 - 8);
      v12 = *(v11 + 64);
      MEMORY[0x28223BE20](v10);
      v14 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v14);
      v172 = sub_26C6D8E38();
      (*(v11 + 8))(v14, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(&v177);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v172 = 0;
LABEL_6:
  v15 = swift_allocObject();
  v169 = xmmword_26C6DA0F0;
  *(v15 + 16) = xmmword_26C6DA0F0;
  *(v15 + 32) = v5;
  v16 = sub_26C6D89E8();
  v17 = [a1 containsValueForKey_];

  if (!v17)
  {

    v177 = 0u;
    v178 = 0u;
    goto LABEL_16;
  }

  sub_26C6D8C48();

  if (!*(&v178 + 1))
  {
LABEL_16:
    sub_26C682188(&v177);
    v19 = 0;
    v171 = 0;
    goto LABEL_17;
  }

  v18 = swift_dynamicCast();
  if (v18)
  {
    v19 = v175;
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = v176;
  }

  else
  {
    v20 = 0;
  }

  v171 = v20;
LABEL_17:
  v21 = sub_26C6D89E8();
  v168 = [a1 decodeBoolForKey_];

  v22 = sub_26C6D89E8();
  v167 = [a1 decodeBoolForKey_];

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26C6DAAB0;
  *(v23 + 32) = v4;
  *(v23 + 40) = v6;
  *(v23 + 48) = sub_26C6779D0(0, &qword_2804A89A0, 0x277CBEAA8);
  v24 = sub_26C6779D0(0, &qword_2804A89A8, 0x277CCABB0);
  *(v23 + 56) = v24;
  *(v23 + 64) = v5;
  v170 = sub_26C6779D0(0, &qword_2804A89B0, 0x277CBEA90);
  *(v23 + 72) = v170;
  sub_26C6D8C48();

  if (!*(&v178 + 1))
  {

    sub_26C682188(&v177);
LABEL_33:
    if (qword_2804A85B0 != -1)
    {
      swift_once();
    }

    v36 = sub_26C6D8898();
    __swift_project_value_buffer(v36, qword_2804AD270);
    v37 = sub_26C6D8878();
    v38 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_56;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Unexpectedly failed to decode networks";
    goto LABEL_55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8958, &qword_26C6DAAD0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_33;
  }

  v164 = v19;
  v25 = v175;
  v26 = swift_allocObject();
  v165 = xmmword_26C6DA100;
  *(v26 + 16) = xmmword_26C6DA100;
  *(v26 + 32) = v4;
  *(v26 + 40) = v5;
  sub_26C6D8C48();

  if (!*(&v178 + 1))
  {

    sub_26C682188(&v177);
LABEL_39:
    if (qword_2804A85B0 != -1)
    {
      swift_once();
    }

    v41 = sub_26C6D8898();
    __swift_project_value_buffer(v41, qword_2804AD270);
    v37 = sub_26C6D8878();
    v38 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_56;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Unexpectedly failed to decode network passwords";
    goto LABEL_55;
  }

  v166 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8960, &qword_26C6DAAD8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_39;
  }

  v27 = v175;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_26C6DAAC0;
  *(v28 + 32) = v4;
  *(v28 + 40) = v6;
  *(v28 + 48) = v5;
  *(v28 + 56) = v24;
  *(v28 + 64) = v170;
  sub_26C6D8C48();

  if (!*(&v178 + 1))
  {

    sub_26C682188(&v177);
LABEL_45:
    if (qword_2804A85B0 != -1)
    {
      swift_once();
    }

    v42 = sub_26C6D8898();
    __swift_project_value_buffer(v42, qword_2804AD270);
    v37 = sub_26C6D8878();
    v38 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_56;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Unexpectedly failed to decode locale preferences";
    goto LABEL_55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8968, &qword_26C6DBE50);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_45;
  }

  v29 = v175;
  v30 = sub_26C6D89E8();
  v163 = [a1 decodeBoolForKey_];

  v31 = swift_allocObject();
  *(v31 + 16) = v169;
  *(v31 + 32) = v5;
  sub_26C6D8C48();

  if (!*(&v178 + 1))
  {

    sub_26C682188(&v177);
LABEL_51:
    if (qword_2804A85B0 != -1)
    {
      swift_once();
    }

    v43 = sub_26C6D8898();
    __swift_project_value_buffer(v43, qword_2804AD270);
    v37 = sub_26C6D8878();
    v38 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_56;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Unexpectedly failed to decode the time zone settings";
LABEL_55:
    _os_log_impl(&dword_26C66B000, v37, v38, v40, v39, 2u);
    MEMORY[0x26D6A7490](v39, -1, -1);
LABEL_56:

    swift_unknownObjectRelease();
LABEL_57:
    type metadata accessor for WFSetupData();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_51;
  }

  v157 = v175;
  v160 = v176;
  v32 = swift_allocObject();
  *(v32 + 16) = v169;
  *(v32 + 32) = v170;
  v158 = 0xD000000000000015;
  sub_26C6D8C48();

  if (*(&v178 + 1))
  {
    v33 = swift_dynamicCast();
    v34 = v175;
    if (!v33)
    {
      v34 = 0;
    }

    v161 = v34;
    v35 = 0xF000000000000000;
    if (v33)
    {
      v35 = v176;
    }
  }

  else
  {
    sub_26C682188(&v177);
    v161 = 0;
    v35 = 0xF000000000000000;
  }

  v162 = v35;
  v45 = swift_allocObject();
  *(v45 + 16) = v169;
  *(v45 + 32) = v5;
  v46 = sub_26C6D89E8();
  v47 = [a1 containsValueForKey_];

  v159 = v29;
  if (!v47)
  {

    v177 = 0u;
    v178 = 0u;
    goto LABEL_68;
  }

  sub_26C6D8C48();

  if (!*(&v178 + 1))
  {
LABEL_68:
    sub_26C682188(&v177);
    v49 = 0;
    v50 = 0;
    goto LABEL_69;
  }

  v48 = swift_dynamicCast();
  if (v48)
  {
    v49 = v175;
  }

  else
  {
    v49 = 0;
  }

  if (v48)
  {
    v50 = v176;
  }

  else
  {
    v50 = 0;
  }

LABEL_69:
  v51 = swift_allocObject();
  *(v51 + 16) = v169;
  *(v51 + 32) = v5;
  sub_26C6D8C48();

  if (!*(&v178 + 1))
  {

    sub_26C682188(&v177);
LABEL_85:
    if (qword_2804A85B0 != -1)
    {
      swift_once();
    }

    v64 = sub_26C6D8898();
    __swift_project_value_buffer(v64, qword_2804AD270);
    v65 = sub_26C6D8878();
    v66 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v65, v66))
    {
      goto LABEL_102;
    }

    v67 = swift_slowAlloc();
    *v67 = 0;
    v68 = "Unexpectedly failed to decode the accessibility settings";
    goto LABEL_101;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_85;
  }

  v155 = v49;
  v52 = v176;
  v154 = v175;
  v53 = swift_allocObject();
  *(v53 + 16) = v169;
  *(v53 + 32) = v5;
  sub_26C6D8C48();

  if (!*(&v178 + 1))
  {

    sub_26C682188(&v177);
LABEL_91:
    if (qword_2804A85B0 != -1)
    {
      swift_once();
    }

    v69 = sub_26C6D8898();
    __swift_project_value_buffer(v69, qword_2804AD270);
    v65 = sub_26C6D8878();
    v66 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v65, v66))
    {
      goto LABEL_102;
    }

    v67 = swift_slowAlloc();
    *v67 = 0;
    v68 = "Unexpectedly failed to decode the device class";
    goto LABEL_101;
  }

  v156 = v52;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_91;
  }

  v54 = v176;
  v153 = v175;
  v55 = sub_26C6D89E8();
  v152 = [a1 decodeBoolForKey_];

  v56 = sub_26C6D89E8();
  v151 = [a1 decodeBoolForKey_];

  v57 = swift_allocObject();
  *(v57 + 16) = v169;
  *(v57 + 32) = v5;
  sub_26C6D8C48();

  if (!*(&v178 + 1))
  {

    sub_26C682188(&v177);
LABEL_97:
    if (qword_2804A85B0 != -1)
    {
      swift_once();
    }

    v70 = sub_26C6D8898();
    __swift_project_value_buffer(v70, qword_2804AD270);
    v65 = sub_26C6D8878();
    v66 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v65, v66))
    {
      goto LABEL_102;
    }

    v67 = swift_slowAlloc();
    *v67 = 0;
    v68 = "Unexpectedly failed to decode the device name";
LABEL_101:
    _os_log_impl(&dword_26C66B000, v65, v66, v68, v67, 2u);
    MEMORY[0x26D6A7490](v67, -1, -1);
LABEL_102:
    swift_unknownObjectRelease();
    sub_26C67EE70(v161, v162);

    goto LABEL_57;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_97;
  }

  v150 = v50;
  v140 = v175;
  v145 = v176;
  v58 = swift_allocObject();
  *(v58 + 16) = v169;
  *(v58 + 32) = v5;
  v59 = sub_26C6D89E8();
  v60 = [a1 containsValueForKey_];

  v143 = v54;
  if (!v60)
  {

    v177 = 0u;
    v178 = 0u;
    goto LABEL_104;
  }

  sub_26C6D8C48();

  if (!*(&v178 + 1))
  {
LABEL_104:
    sub_26C682188(&v177);
    v139 = 0;
    v146 = 0;
    goto LABEL_105;
  }

  v61 = swift_dynamicCast();
  v62 = v175;
  if (!v61)
  {
    v62 = 0;
  }

  v139 = v62;
  if (v61)
  {
    v63 = v176;
  }

  else
  {
    v63 = 0;
  }

  v146 = v63;
LABEL_105:
  v71 = sub_26C6D89E8();
  v138 = [a1 decodeBoolForKey_];

  v72 = sub_26C6D89E8();
  v137 = [a1 decodeBoolForKey_];

  v73 = swift_allocObject();
  *(v73 + 16) = v169;
  *(v73 + 32) = v170;
  v141 = 0xD000000000000014;
  sub_26C6D8C48();

  if (*(&v178 + 1))
  {
    v74 = swift_dynamicCast();
    v75 = v175;
    if (!v74)
    {
      v75 = 0;
    }

    v148 = v75;
    v76 = 0xF000000000000000;
    if (v74)
    {
      v76 = v176;
    }
  }

  else
  {
    sub_26C682188(&v177);
    v148 = 0;
    v76 = 0xF000000000000000;
  }

  v149 = v76;
  v77 = sub_26C6D89E8();
  v136 = [a1 decodeBoolForKey_];

  v78 = sub_26C6D89E8();
  v135 = [a1 decodeBoolForKey_];

  v79 = sub_26C6D89E8();
  v134 = [a1 decodeBoolForKey_];

  v142 = 0xD000000000000016;
  v80 = sub_26C6D89E8();
  v133 = [a1 decodeBoolForKey_];

  v81 = sub_26C6D89E8();
  v132 = [a1 decodeBoolForKey_];

  v82 = swift_allocObject();
  *(v82 + 16) = v169;
  *(v82 + 32) = v5;
  sub_26C6D8C48();

  if (*(&v178 + 1))
  {
    v83 = swift_dynamicCast();
    v84 = v175;
    if (!v83)
    {
      v84 = 0;
    }

    v131 = v84;
    if (v83)
    {
      v85 = v176;
    }

    else
    {
      v85 = 0;
    }

    v144 = v85;
  }

  else
  {
    sub_26C682188(&v177);
    v131 = 0;
    v144 = 0;
  }

  v86 = swift_allocObject();
  *(v86 + 16) = v169;
  *(v86 + 32) = sub_26C6779D0(0, &qword_2804A8978, 0x277CEF528);
  sub_26C6D8C48();

  if (*(&v178 + 1))
  {
    v87 = swift_dynamicCast();
    v88 = v175;
    if (!v87)
    {
      v88 = 0;
    }

    v147 = v88;
  }

  else
  {
    sub_26C682188(&v177);
    v147 = 0;
  }

  v89 = sub_26C6D89E8();
  v130 = [a1 decodeBoolForKey_];

  v90 = sub_26C6D89E8();
  v129 = [a1 decodeBoolForKey_];

  v91 = sub_26C6D89E8();
  LODWORD(v142) = [a1 decodeBoolForKey_];

  v92 = sub_26C6D89E8();
  v93 = [a1 decodeIntegerForKey_];

  v94 = swift_allocObject();
  *(v94 + 16) = v165;
  *(v94 + 32) = type metadata accessor for PrescriptionRecord();
  *(v94 + 40) = v4;
  sub_26C6D8C48();

  if (!*(&v178 + 1))
  {

    sub_26C682188(&v177);
LABEL_137:
    if (qword_2804A85B0 != -1)
    {
      swift_once();
    }

    v106 = sub_26C6D8898();
    __swift_project_value_buffer(v106, qword_2804AD270);
    v107 = sub_26C6D8878();
    v108 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v107, v108))
    {
      goto LABEL_154;
    }

    v109 = swift_slowAlloc();
    *v109 = 0;
    v110 = "Unexpectedly failed to decode the prescription records. ";
    goto LABEL_153;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8970, &qword_26C6DAAE0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_137;
  }

  v95 = v175;
  v96 = swift_allocObject();
  *(v96 + 16) = v169;
  *(v96 + 32) = v5;
  sub_26C6D8C48();

  if (!*(&v178 + 1))
  {

    sub_26C682188(&v177);
LABEL_143:
    if (qword_2804A85B0 != -1)
    {
      swift_once();
    }

    v111 = sub_26C6D8898();
    __swift_project_value_buffer(v111, qword_2804AD270);
    v107 = sub_26C6D8878();
    v108 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v107, v108))
    {
      goto LABEL_154;
    }

    v109 = swift_slowAlloc();
    *v109 = 0;
    v110 = "Unexpectedly failed to decode the product version. ";
    goto LABEL_153;
  }

  v97 = v27;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_143;
  }

  v158 = v175;
  *&v165 = v176;
  v98 = swift_allocObject();
  *(v98 + 16) = v169;
  *(v98 + 32) = type metadata accessor for WFSetupServerAnisetteDataProvider();
  sub_26C6D8C48();

  if (!*(&v178 + 1))
  {

    sub_26C682188(&v177);
LABEL_149:
    if (qword_2804A85B0 != -1)
    {
      swift_once();
    }

    v112 = sub_26C6D8898();
    __swift_project_value_buffer(v112, qword_2804AD270);
    v107 = sub_26C6D8878();
    v108 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v107, v108))
    {
      goto LABEL_154;
    }

    v109 = swift_slowAlloc();
    *v109 = 0;
    v110 = "Unexpectedly failed to decode the anisette data provider. ";
LABEL_153:
    _os_log_impl(&dword_26C66B000, v107, v108, v110, v109, 2u);
    MEMORY[0x26D6A7490](v109, -1, -1);
LABEL_154:
    swift_unknownObjectRelease();
    sub_26C67EE70(v161, v162);
    sub_26C67EE70(v148, v149);

    goto LABEL_57;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_149;
  }

  v99 = v175;
  v100 = swift_allocObject();
  *(v100 + 16) = v169;
  *(v100 + 32) = v170;
  v101 = sub_26C6D89E8();
  v102 = [a1 containsValueForKey_];

  if (v102)
  {
    sub_26C6D8C48();

    if (*(&v178 + 1))
    {
      v103 = swift_dynamicCast();
      v104 = v175;
      v105 = v176;
      if (!v103)
      {
        v104 = 0;
        v105 = 0xF000000000000000;
      }

      goto LABEL_157;
    }
  }

  else
  {

    v177 = 0u;
    v178 = 0u;
  }

  sub_26C682188(&v177);
  v104 = 0;
  v105 = 0xF000000000000000;
LABEL_157:
  v113 = v173;
  *&v173[OBJC_IVAR___WFSetupDataInternal_keyboards] = v172;
  v114 = &v113[OBJC_IVAR___WFSetupDataInternal_appleID];
  *v114 = v164;
  v114[1] = v171;
  v113[OBJC_IVAR___WFSetupDataInternal_usesSameAccountForiTunes] = v168;
  v113[OBJC_IVAR___WFSetupDataInternal_isConnectedToWiFi] = v167;
  *&v113[OBJC_IVAR___WFSetupDataInternal_networks] = v166;
  *&v113[OBJC_IVAR___WFSetupDataInternal_networkPasswords] = v97;
  *&v113[OBJC_IVAR___WFSetupDataInternal_localePreferences] = v159;
  v113[OBJC_IVAR___WFSetupDataInternal_isAutomaticTimeZoneEnabled] = v163;
  v115 = &v113[OBJC_IVAR___WFSetupDataInternal_timeZone];
  *v115 = v157;
  v115[1] = v160;
  v116 = &v113[OBJC_IVAR___WFSetupDataInternal_accessibilitySettings];
  *v116 = v161;
  v116[1] = v162;
  v117 = &v113[OBJC_IVAR___WFSetupDataInternal_firstName];
  *v117 = v155;
  v117[1] = v150;
  v118 = &v113[OBJC_IVAR___WFSetupDataInternal_deviceModel];
  *v118 = v154;
  v118[1] = v156;
  v119 = &v113[OBJC_IVAR___WFSetupDataInternal_deviceClass];
  *v119 = v153;
  v119[1] = v143;
  v113[OBJC_IVAR___WFSetupDataInternal_hasHomeButton] = v152;
  v113[OBJC_IVAR___WFSetupDataInternal_isRestoring] = v151;
  v120 = &v113[OBJC_IVAR___WFSetupDataInternal_deviceName];
  *v120 = v140;
  v120[1] = v145;
  v121 = &v113[OBJC_IVAR___WFSetupDataInternal_backupUUID];
  *v121 = v139;
  v121[1] = v146;
  v113[OBJC_IVAR___WFSetupDataInternal_isBackupEnabled] = v138;
  v113[OBJC_IVAR___WFSetupDataInternal_isOptedInToLocationServices] = v137;
  v113[OBJC_IVAR___WFSetupDataInternal_isOptedInToDeviceAnalytics] = v134;
  v122 = &v113[OBJC_IVAR___WFSetupDataInternal_locationServicesData];
  *v122 = v148;
  v122[1] = v149;
  v113[OBJC_IVAR___WFSetupDataInternal_isOptedInToFindMyDevice] = v136;
  v113[OBJC_IVAR___WFSetupDataInternal_isOptedInToAppAnalytics] = v135;
  v113[OBJC_IVAR___WFSetupDataInternal_siriAssistantIsEnabled] = v133;
  v113[OBJC_IVAR___WFSetupDataInternal_siriVoiceTriggerIsEnabled] = v132;
  v123 = &v113[OBJC_IVAR___WFSetupDataInternal_siriAssistantLanguageCode];
  *v123 = v131;
  v123[1] = v144;
  *&v113[OBJC_IVAR___WFSetupDataInternal_siriAssistantOutputVoice] = v147;
  v113[OBJC_IVAR___WFSetupDataInternal_siriDataSharingIsEnabled] = v130;
  v113[OBJC_IVAR___WFSetupDataInternal_dictationIsEnabled] = v129;
  v113[OBJC_IVAR___WFSetupDataInternal_suppressDictationOptIn] = v142;
  *&v113[OBJC_IVAR___WFSetupDataInternal_deviceTermsIdentifier] = v93;
  v124 = &v113[OBJC_IVAR___WFSetupDataInternal_productVersion];
  *v124 = v158;
  v124[1] = v165;
  *&v113[OBJC_IVAR___WFSetupDataInternal_anisetteDataProvider] = v99;
  *&v113[OBJC_IVAR___WFSetupDataInternal_prescriptionRecords] = v95;
  v125 = &v113[OBJC_IVAR___WFSetupDataInternal_walletData];
  *v125 = v104;
  v125[1] = v105;
  v126 = type metadata accessor for WFSetupData();
  v174.receiver = v113;
  v174.super_class = v126;
  v127 = objc_msgSendSuper2(&v174, sel_init);

  return v127;
}

TDGSharing::WFSetupData::PropertyKey_optional __swiftcall WFSetupData.PropertyKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26C6D8E58();

  v5 = 0;
  v6 = 17;
  switch(v3)
  {
    case 0:
      goto LABEL_27;
    case 1:
      v5 = 1;
      goto LABEL_27;
    case 2:
      v5 = 2;
      goto LABEL_27;
    case 3:
      v5 = 3;
      goto LABEL_27;
    case 4:
      v5 = 4;
      goto LABEL_27;
    case 5:
      v5 = 5;
      goto LABEL_27;
    case 6:
      v5 = 6;
      goto LABEL_27;
    case 7:
      v5 = 7;
      goto LABEL_27;
    case 8:
      v5 = 8;
      goto LABEL_27;
    case 9:
      v5 = 9;
      goto LABEL_27;
    case 10:
      v5 = 10;
      goto LABEL_27;
    case 11:
      v5 = 11;
      goto LABEL_27;
    case 12:
      v5 = 12;
      goto LABEL_27;
    case 13:
      v5 = 13;
      goto LABEL_27;
    case 14:
      v5 = 14;
      goto LABEL_27;
    case 15:
      v5 = 15;
      goto LABEL_27;
    case 16:
      v5 = 16;
LABEL_27:
      v6 = v5;
      break;
    case 17:
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
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    default:
      v6 = 35;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26C68476C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = WFSetupData.PropertyKey.rawValue.getter();
  v4 = v3;
  if (v2 == WFSetupData.PropertyKey.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26C6D8E48();
  }

  return v7 & 1;
}

uint64_t sub_26C684808()
{
  v1 = *v0;
  sub_26C6D8EE8();
  WFSetupData.PropertyKey.rawValue.getter();
  sub_26C6D8A38();

  return sub_26C6D8F08();
}

uint64_t sub_26C684870()
{
  v2 = *v0;
  WFSetupData.PropertyKey.rawValue.getter();
  sub_26C6D8A38();
}

uint64_t sub_26C6848D4()
{
  v1 = *v0;
  sub_26C6D8EE8();
  WFSetupData.PropertyKey.rawValue.getter();
  sub_26C6D8A38();

  return sub_26C6D8F08();
}

unint64_t sub_26C684944@<X0>(unint64_t *a1@<X8>)
{
  result = WFSetupData.PropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id WFSetupData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFSetupData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFSetupData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26C684BC4()
{
  result = qword_2804A89B8;
  if (!qword_2804A89B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A89B8);
  }

  return result;
}

uint64_t dispatch thunk of WFSetupData.__allocating_init(keyboards:appleID:usesSameAccountForiTunes:isConnectedToWiFi:networks:networkPasswords:localePreferences:isAutomaticTimeZoneEnabled:timeZone:accessibilitySettings:firstName:deviceModel:deviceClass:hasHomeButton:isRestoring:deviceName:backupUUID:isBackupEnabled:isOptedInToLocationServices:isOptedInToDeviceAnalytics:locationServicesData:isOptedInToFindMyDevice:isOptedInToAppAnalytics:siriAssistantIsEnabled:siriVoiceTriggerIsEnabled:siriAssistantLanguageCode:siriAssistantOutputVoice:siriDataSharingIsEnabled:dictationIsEnabled:suppressDictationOptIn:deviceTermsIdentifier:productVersion:anisetteDataProvider:prescriptionRecords:walletData:)()
{
  v1 = *(v0 + 368);

  return v1();
}

uint64_t sub_26C684E18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8950, &qword_26C6DAC50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PrescriptionRecord.accPayload.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFPrescriptionRecord_accPayload);
  sub_26C67ED2C(v1, *(v0 + OBJC_IVAR___WFPrescriptionRecord_accPayload + 8));
  return v1;
}

uint64_t PrescriptionRecord.enrollmentName.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFPrescriptionRecord_enrollmentName);
  v2 = *(v0 + OBJC_IVAR___WFPrescriptionRecord_enrollmentName + 8);

  return v1;
}

uint64_t PrescriptionRecord.enrollmentDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___WFPrescriptionRecord_enrollmentDate;
  v4 = sub_26C6D87B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrescriptionRecord.leftLensFactoryCalibrationData.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFPrescriptionRecord_leftLensFactoryCalibrationData);
  v2 = *(v0 + OBJC_IVAR___WFPrescriptionRecord_leftLensFactoryCalibrationData + 8);

  return v1;
}

uint64_t PrescriptionRecord.rightLensFactoryCalibrationData.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFPrescriptionRecord_rightLensFactoryCalibrationData);
  v2 = *(v0 + OBJC_IVAR___WFPrescriptionRecord_rightLensFactoryCalibrationData + 8);

  return v1;
}

id PrescriptionRecord.__allocating_init(accPayload:enrollmentName:enrollmentDate:leftLensFactoryCalibrationData:rightLensFactoryCalibrationData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = objc_allocWithZone(v9);
  *&v17[OBJC_IVAR___WFPrescriptionRecord_version] = 0x3FF0000000000000;
  v18 = &v17[OBJC_IVAR___WFPrescriptionRecord_accPayload];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v17[OBJC_IVAR___WFPrescriptionRecord_enrollmentName];
  *v19 = a3;
  *(v19 + 1) = a4;
  v20 = OBJC_IVAR___WFPrescriptionRecord_enrollmentDate;
  v21 = sub_26C6D87B8();
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v17[v20], a5, v21);
  v23 = &v17[OBJC_IVAR___WFPrescriptionRecord_leftLensFactoryCalibrationData];
  *v23 = a6;
  *(v23 + 1) = a7;
  v24 = &v17[OBJC_IVAR___WFPrescriptionRecord_rightLensFactoryCalibrationData];
  *v24 = a8;
  *(v24 + 1) = a9;
  v28.receiver = v17;
  v28.super_class = v9;
  v25 = objc_msgSendSuper2(&v28, sel_init);
  (*(v22 + 8))(a5, v21);
  return v25;
}

id PrescriptionRecord.init(accPayload:enrollmentName:enrollmentDate:leftLensFactoryCalibrationData:rightLensFactoryCalibrationData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *&v9[OBJC_IVAR___WFPrescriptionRecord_version] = 0x3FF0000000000000;
  v14 = &v9[OBJC_IVAR___WFPrescriptionRecord_accPayload];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v9[OBJC_IVAR___WFPrescriptionRecord_enrollmentName];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = OBJC_IVAR___WFPrescriptionRecord_enrollmentDate;
  v17 = sub_26C6D87B8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v9[v16], a5, v17);
  v19 = &v9[OBJC_IVAR___WFPrescriptionRecord_leftLensFactoryCalibrationData];
  *v19 = a6;
  *(v19 + 1) = a7;
  v20 = &v9[OBJC_IVAR___WFPrescriptionRecord_rightLensFactoryCalibrationData];
  *v20 = a8;
  *(v20 + 1) = a9;
  v23.receiver = v9;
  v23.super_class = type metadata accessor for PrescriptionRecord();
  v21 = objc_msgSendSuper2(&v23, sel_init);
  (*(v18 + 8))(a5, v17);
  return v21;
}

uint64_t type metadata accessor for PrescriptionRecord()
{
  result = qword_2804A8AB0;
  if (!qword_2804A8AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26C68534C(void *a1)
{
  v3 = sub_26C6D87B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v50 - v9;
  v11 = *(v1 + OBJC_IVAR___WFPrescriptionRecord_accPayload + 8);
  *&v52 = *(v1 + OBJC_IVAR___WFPrescriptionRecord_accPayload);
  *(&v52 + 1) = v11;
  sub_26C67ED2C(v52, v11);
  v12 = sub_26C6D8E68();
  v13 = sub_26C6D89E8();
  [a1 encodeObject:v12 forKey:v13];
  swift_unknownObjectRelease();

  v14 = *(v4 + 16);
  v14(v10, v1 + OBJC_IVAR___WFPrescriptionRecord_enrollmentDate, v3);
  v14(v8, v10, v3);
  v15 = sub_26C6D8E68();
  v16 = sub_26C6D89E8();
  [a1 encodeObject:v15 forKey:v16];
  swift_unknownObjectRelease();

  (*(v4 + 8))(v10, v3);
  v17 = *(v1 + OBJC_IVAR___WFPrescriptionRecord_enrollmentName + 8);
  v18 = MEMORY[0x277D837D0];
  if (v17)
  {
    v19 = *(v1 + OBJC_IVAR___WFPrescriptionRecord_enrollmentName);
    *(&v53 + 1) = MEMORY[0x277D837D0];
    *&v52 = v19;
    *(&v52 + 1) = v17;
    sub_26C684E18(&v52, v50);
    v20 = v51;
    if (v51)
    {
      v21 = __swift_project_boxed_opaque_existential_1(v50, v51);
      v22 = *(v20 - 8);
      v23 = *(v22 + 64);
      MEMORY[0x28223BE20](v21);
      v25 = v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v25);

      v26 = sub_26C6D8E38();
      (*(v22 + 8))(v25, v20);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
    }

    else
    {

      v26 = 0;
    }

    v27 = sub_26C6D89E8();
    [a1 encodeObject:v26 forKey:v27];
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  sub_26C677B60(&v52, &qword_2804A8950, &qword_26C6DAC50);
  v28 = *(v1 + OBJC_IVAR___WFPrescriptionRecord_leftLensFactoryCalibrationData + 8);
  if (v28)
  {
    v29 = *(v1 + OBJC_IVAR___WFPrescriptionRecord_leftLensFactoryCalibrationData);
    *(&v53 + 1) = v18;
    *&v52 = v29;
    *(&v52 + 1) = v28;
    sub_26C684E18(&v52, v50);
    v30 = v51;
    if (v51)
    {
      v31 = __swift_project_boxed_opaque_existential_1(v50, v51);
      v32 = *(v30 - 8);
      v33 = *(v32 + 64);
      MEMORY[0x28223BE20](v31);
      v35 = v50 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v32 + 16))(v35);

      v36 = sub_26C6D8E38();
      (*(v32 + 8))(v35, v30);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
    }

    else
    {

      v36 = 0;
    }

    v37 = sub_26C6D89E8();
    [a1 encodeObject:v36 forKey:v37];
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  sub_26C677B60(&v52, &qword_2804A8950, &qword_26C6DAC50);
  v38 = (v1 + OBJC_IVAR___WFPrescriptionRecord_rightLensFactoryCalibrationData);
  v39 = *(v1 + OBJC_IVAR___WFPrescriptionRecord_rightLensFactoryCalibrationData + 8);
  if (v39)
  {
    v40 = *v38;
    *(&v53 + 1) = v18;
    *&v52 = v40;
    *(&v52 + 1) = v39;
    sub_26C684E18(&v52, v50);
    v41 = v51;
    if (v51)
    {
      v42 = __swift_project_boxed_opaque_existential_1(v50, v51);
      v43 = *(v41 - 8);
      v44 = *(v43 + 64);
      MEMORY[0x28223BE20](v42);
      v46 = v50 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v46);

      v47 = sub_26C6D8E38();
      (*(v43 + 8))(v46, v41);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
    }

    else
    {

      v47 = 0;
    }

    v48 = sub_26C6D89E8();
    [a1 encodeObject:v47 forKey:v48];
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  return sub_26C677B60(&v52, &qword_2804A8950, &qword_26C6DAC50);
}

id PrescriptionRecord.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A8A40, &qword_26C6DAC58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v54 - v6;
  v8 = sub_26C6D87B8();
  v9 = *(v8 - 8);
  v58 = v8;
  v59 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v57 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR___WFPrescriptionRecord_version] = 0x3FF0000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8980, &qword_26C6DAC60);
  v12 = swift_allocObject();
  v60 = xmmword_26C6DA0F0;
  *(v12 + 16) = xmmword_26C6DA0F0;
  v13 = sub_26C6779D0(0, &qword_2804A8990, 0x277CCACA8);
  *(v12 + 32) = v13;
  sub_26C6D8C48();

  if (v65)
  {
    v14 = swift_dynamicCast();
    v15 = v62;
    v16 = v63;
    if (!v14)
    {
      v15 = 0;
      v16 = 0;
    }
  }

  else
  {
    sub_26C677B60(v64, &qword_2804A8950, &qword_26C6DAC50);
    v15 = 0;
    v16 = 0;
  }

  v17 = &v1[OBJC_IVAR___WFPrescriptionRecord_leftLensFactoryCalibrationData];
  *v17 = v15;
  v17[1] = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v60;
  *(v18 + 32) = v13;
  sub_26C6D8C48();

  if (v65)
  {
    v19 = swift_dynamicCast();
    v20 = v62;
    v21 = v63;
    if (!v19)
    {
      v20 = 0;
      v21 = 0;
    }
  }

  else
  {
    sub_26C677B60(v64, &qword_2804A8950, &qword_26C6DAC50);
    v20 = 0;
    v21 = 0;
  }

  v22 = &v1[OBJC_IVAR___WFPrescriptionRecord_rightLensFactoryCalibrationData];
  *v22 = v20;
  v22[1] = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v60;
  *(v23 + 32) = v13;
  sub_26C6D8C48();

  if (v65)
  {
    v24 = swift_dynamicCast();
    v25 = v62;
    v26 = v63;
    if (!v24)
    {
      v25 = 0;
      v26 = 0;
    }
  }

  else
  {
    sub_26C677B60(v64, &qword_2804A8950, &qword_26C6DAC50);
    v25 = 0;
    v26 = 0;
  }

  v27 = &v1[OBJC_IVAR___WFPrescriptionRecord_enrollmentName];
  *v27 = v25;
  v27[1] = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = v60;
  *(v28 + 32) = sub_26C6779D0(0, &qword_2804A89B0, 0x277CBEA90);
  sub_26C6D8C48();

  if (!v65)
  {
    sub_26C677B60(v64, &qword_2804A8950, &qword_26C6DAC50);
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_2804A8590 != -1)
    {
      swift_once();
    }

    v41 = sub_26C6D8898();
    __swift_project_value_buffer(v41, qword_2804AD210);
    v42 = sub_26C6D8878();
    v43 = sub_26C6D8BA8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_26C66B000, v42, v43, "Failed to decode and retrieve accPayload from record. ", v44, 2u);
      MEMORY[0x26D6A7490](v44, -1, -1);
    }

    goto LABEL_30;
  }

  v29 = v62;
  v30 = v63;
  v31 = &v2[OBJC_IVAR___WFPrescriptionRecord_accPayload];
  *v31 = v62;
  v31[1] = v30;
  v55 = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = v60;
  *(v32 + 32) = sub_26C6779D0(0, &qword_2804A89A0, 0x277CBEAA8);
  *&v60 = v29;
  v56 = v30;
  sub_26C67ED2C(v29, v30);
  sub_26C6D8C48();

  if (v65)
  {
    v33 = v58;
    v34 = swift_dynamicCast();
    v35 = v59;
    (*(v59 + 56))(v7, v34 ^ 1u, 1, v33);
    if ((*(v35 + 48))(v7, 1, v33) != 1)
    {
      sub_26C678418(v60, v56);
      v36 = *(v35 + 32);
      v37 = v57;
      v36(v57, v7, v33);
      v36(&v2[OBJC_IVAR___WFPrescriptionRecord_enrollmentDate], v37, v33);
      v38 = type metadata accessor for PrescriptionRecord();
      v61.receiver = v2;
      v61.super_class = v38;
      v39 = objc_msgSendSuper2(&v61, sel_init);

      return v39;
    }
  }

  else
  {
    sub_26C677B60(v64, &qword_2804A8950, &qword_26C6DAC50);
    (*(v59 + 56))(v7, 1, 1, v58);
  }

  sub_26C677B60(v7, &unk_2804A8A40, &qword_26C6DAC58);
  if (qword_2804A8590 != -1)
  {
    swift_once();
  }

  v45 = sub_26C6D8898();
  __swift_project_value_buffer(v45, qword_2804AD210);
  v46 = sub_26C6D8878();
  v47 = sub_26C6D8BA8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_26C66B000, v46, v47, "Failed to decode and retrieve enrollmentDate from record. ", v48, 2u);
    MEMORY[0x26D6A7490](v48, -1, -1);
  }

  sub_26C678418(v60, v56);

  sub_26C678418(*v55, v55[1]);
LABEL_30:
  v49 = v27[1];

  v50 = v17[1];

  v51 = v22[1];

  type metadata accessor for PrescriptionRecord();
  v52 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v53 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}