uint64_t sub_1AD484A40(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  if (!a1)
  {
    return a2(0);
  }

  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a1;
  v15[7] = a6;
  v16 = sub_1ADB06720();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = a1;
  *(v17 + 40) = 0;
  *(v17 + 48) = sub_1AD487250;
  *(v17 + 56) = v15;
  v18 = a1;

  sub_1AD457038(0, 0, v14, &unk_1ADB82608, v17);
}

uint64_t sub_1AD484BD8(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = a7;
  v15 = *(a1 + OBJC_IVAR____PKProvisioningSEStorageManager_secureElement);

  v16 = a4;

  v17 = [v15 primarySecureElementIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1ADB063B0();
    v21 = v20;

    v22 = swift_allocObject();
    v22[2] = sub_1AD488654;
    v22[3] = v14;
    v22[4] = v19;
    v22[5] = v21;
    v29[4] = sub_1AD4885F0;
    v29[5] = v22;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 1107296256;
    v29[2] = sub_1AD482FD0;
    v29[3] = &block_descriptor_301;
    v23 = _Block_copy(v29);

    [v15 accessAsyncSecureElementManagerSessionWithHandler_];
    _Block_release(v23);
  }

  else
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v25 = sub_1ADB05FA0();
    __swift_project_value_buffer(v25, qword_1EB59AB68);
    v26 = sub_1ADB05F80();
    v27 = sub_1ADB06850();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1AD337000, v26, v27, "SEStorage: Failed to get SEID", v28, 2u);
      MEMORY[0x1B26F9F20](v28, -1, -1);
    }

    a2(0);
  }
}

uint64_t _s11PassKitCore28ProvisioningSEStorageManagerC14reserveStorage3for8metadata10completionySaySSG_SDySSypGSgySay10Foundation4UUIDVGSg_Sbs5Error_pSgtctF_0(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4)
{
  v8 = sub_1AD47F0C4(a1);
  if (PKDisableDynamicSEAllocation())
  {

    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1ADB05FA0();
    __swift_project_value_buffer(v9, qword_1EB59AB68);
    v10 = sub_1ADB05F80();
    v11 = sub_1ADB06860();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1AD337000, v10, v11, "SEStorage: Feature disabled", v12, 2u);
      MEMORY[0x1B26F9F20](v12, -1, -1);
    }

    return (a3)(MEMORY[0x1E69E7CC0], 0, 0);
  }

  else
  {
    v14 = swift_allocObject();
    v14[2] = a3;
    v14[3] = a4;
    v14[4] = v4;
    v14[5] = v8;
    v14[6] = a2;
    if (a2)
    {
      if (*(a2 + 16))
      {
        swift_bridgeObjectRetain_n();

        v15 = v4;

        v16 = sub_1AD425BEC(0x65644970756F7267, 0xEF7265696669746ELL);
        if (v17)
        {
          sub_1AD3C94C4(*(a2 + 56) + 32 * v16, &aBlock);
          if (swift_dynamicCast())
          {

            v18 = v15;

            sub_1AD484BD8(v18, sub_1AD488650, v14, v18, v72, v73, a2);

            swift_bridgeObjectRelease_n();
            return swift_bridgeObjectRelease_n();
          }
        }
      }

      else
      {

        v43 = v4;
      }

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
        v71 = a3;
        v48 = swift_slowAlloc();
        aBlock = v48;
        *v47 = 136315138;
        v49 = sub_1ADB061A0();
        v50 = MEMORY[0x1B26F66B0](v8, v49);
        v52 = sub_1AD3CA88C(v50, v51, &aBlock);

        *(v47 + 4) = v52;
        _os_log_impl(&dword_1AD337000, v45, v46, "SEStorage: Attempting to reserve space for %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
        v53 = v48;
        a3 = v71;
        MEMORY[0x1B26F9F20](v53, -1, -1);
        MEMORY[0x1B26F9F20](v47, -1, -1);
      }

      v54 = swift_allocObject();
      *(v54 + 16) = a3;
      *(v54 + 24) = a4;
      *(v54 + 32) = v4;
      *(v54 + 40) = v8;
      *(v54 + 48) = 0;
      *(v54 + 56) = a2;
      v55 = *&v4[OBJC_IVAR____PKProvisioningSEStorageManager_secureElement];
      swift_bridgeObjectRetain_n();
      v56 = v4;
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v57 = v56;
      v58 = [v55 primarySecureElementIdentifier];
      if (v58)
      {
        v59 = v58;
        v60 = sub_1ADB063B0();
        v62 = v61;

        v63 = swift_allocObject();
        v63[2] = sub_1AD488648;
        v63[3] = v54;
        v63[4] = v60;
        v63[5] = v62;
        v78 = sub_1AD4885F0;
        v79 = v63;
        aBlock = MEMORY[0x1E69E9820];
        v75 = 1107296256;
        v76 = sub_1AD482FD0;
        v77 = &block_descriptor_290;
        v64 = _Block_copy(&aBlock);

        [v55 accessAsyncSecureElementManagerSessionWithHandler_];
        _Block_release(v64);
      }

      else
      {
        v65 = sub_1ADB05F80();
        v66 = sub_1ADB06850();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_1AD337000, v65, v66, "SEStorage: Failed to get SEID", v67, 2u);
          MEMORY[0x1B26F9F20](v67, -1, -1);
        }

        a3(MEMORY[0x1E69E7CC0], 0, 0);
      }

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v19 = qword_1EB5981C0;

      v20 = v4;

      if (v19 != -1)
      {
        swift_once();
      }

      v21 = sub_1ADB05FA0();
      __swift_project_value_buffer(v21, qword_1EB59AB68);

      v22 = sub_1ADB05F80();
      v23 = sub_1ADB06860();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        aBlock = v25;
        *v24 = 136315138;
        v26 = sub_1ADB061A0();
        v27 = MEMORY[0x1B26F66B0](v8, v26);
        v29 = v20;
        v30 = sub_1AD3CA88C(v27, v28, &aBlock);

        *(v24 + 4) = v30;
        v20 = v29;
        _os_log_impl(&dword_1AD337000, v22, v23, "SEStorage: Attempting to reserve space for %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x1B26F9F20](v25, -1, -1);
        MEMORY[0x1B26F9F20](v24, -1, -1);
      }

      v31 = swift_allocObject();
      *(v31 + 16) = a3;
      *(v31 + 24) = a4;
      *(v31 + 32) = v20;
      *(v31 + 40) = v8;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      v32 = *&v20[OBJC_IVAR____PKProvisioningSEStorageManager_secureElement];
      swift_bridgeObjectRetain_n();
      v33 = a3;
      v34 = v20;
      swift_retain_n();
      v35 = v34;
      v36 = [v32 primarySecureElementIdentifier];
      if (v36)
      {
        v37 = v36;
        v38 = sub_1ADB063B0();
        v40 = v39;

        v41 = swift_allocObject();
        v41[2] = sub_1AD488648;
        v41[3] = v31;
        v41[4] = v38;
        v41[5] = v40;
        v78 = sub_1AD4885F0;
        v79 = v41;
        aBlock = MEMORY[0x1E69E9820];
        v75 = 1107296256;
        v76 = sub_1AD482FD0;
        v77 = &block_descriptor_279;
        v42 = _Block_copy(&aBlock);

        [v32 accessAsyncSecureElementManagerSessionWithHandler_];
        _Block_release(v42);

        swift_bridgeObjectRelease_n();
      }

      else
      {
        v68 = sub_1ADB05F80();
        v69 = sub_1ADB06850();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_1AD337000, v68, v69, "SEStorage: Failed to get SEID", v70, 2u);
          MEMORY[0x1B26F9F20](v70, -1, -1);
        }

        v33(MEMORY[0x1E69E7CC0], 0, 0);

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }
    }
  }
}

void sub_1AD485840(uint64_t a1, uint64_t a2, char *a3, void (**a4)(void, void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  v9 = sub_1AD47F0C4(a1);
  if (!PKDisableDynamicSEAllocation())
  {
    if (!a2)
    {
      v32 = qword_1EB5981C0;
      swift_retain_n();
      v33 = a3;
      swift_bridgeObjectRetain_n();
      v34 = v33;
      if (v32 != -1)
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
        v95 = swift_slowAlloc();
        aBlock = v95;
        *v38 = 136315138;
        v39 = sub_1ADB061A0();
        v40 = MEMORY[0x1B26F66B0](v9, v39);
        v42 = sub_1AD3CA88C(v40, v41, &aBlock);

        *(v38 + 4) = v42;
        _os_log_impl(&dword_1AD337000, v36, v37, "SEStorage: Attempting to reserve space for %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v95);
        MEMORY[0x1B26F9F20](v95, -1, -1);
        MEMORY[0x1B26F9F20](v38, -1, -1);
      }

      v43 = swift_allocObject();
      *(v43 + 16) = a4;
      v44 = swift_allocObject();
      *(v44 + 16) = sub_1AD4885E8;
      *(v44 + 24) = v43;
      *(v44 + 32) = v34;
      *(v44 + 40) = v9;
      *(v44 + 48) = 0;
      *(v44 + 56) = 0;
      v45 = *&v34[OBJC_IVAR____PKProvisioningSEStorageManager_secureElement];
      _Block_copy(a4);
      v46 = v34;

      _Block_copy(a4);

      v47 = v46;

      v48 = [v45 primarySecureElementIdentifier];
      if (v48)
      {
        v49 = v48;
        v50 = sub_1ADB063B0();
        v52 = v51;

        v53 = swift_allocObject();
        v53[2] = sub_1AD487244;
        v53[3] = v44;
        v53[4] = v50;
        v53[5] = v52;
        v103 = sub_1AD4885F0;
        v104 = v53;
        aBlock = MEMORY[0x1E69E9820];
        v100 = 1107296256;
        v101 = sub_1AD482FD0;
        v102 = &block_descriptor_72_0;
        v54 = _Block_copy(&aBlock);

        [v45 accessAsyncSecureElementManagerSessionWithHandler_];
        v55 = v54;
      }

      else
      {
        v84 = sub_1ADB05F80();
        v85 = sub_1ADB06850();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&dword_1AD337000, v84, v85, "SEStorage: Failed to get SEID", v86, 2u);
          MEMORY[0x1B26F9F20](v86, -1, -1);
        }

        _Block_copy(a4);
        _Block_copy(a4);
        sub_1ADB05E30();
        v87 = sub_1ADB06600();
        (a4)[2](a4, v87, 0, 0);

        _Block_release(a4);
        v55 = a4;
      }

      _Block_release(v55);

      _Block_release(a4);

      swift_bridgeObjectRelease_n();
      goto LABEL_41;
    }

    if (*(a2 + 16))
    {
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      v15 = a3;
      swift_bridgeObjectRetain_n();
      v16 = v15;
      v17 = sub_1AD425BEC(0x65644970756F7267, 0xEF7265696669746ELL);
      if (v18)
      {
        sub_1AD3C94C4(*(a2 + 56) + 32 * v17, &aBlock);
        if (swift_dynamicCast())
        {

          v19 = swift_allocObject();
          v19[2] = sub_1AD48723C;
          v19[3] = v8;
          v19[4] = v16;
          v19[5] = v9;
          v19[6] = a2;
          v20 = swift_allocObject();
          v20[2] = sub_1AD487248;
          v20[3] = v19;
          v20[4] = v16;
          v20[5] = v97;
          v20[6] = v98;
          v20[7] = a2;
          v21 = *&v16[OBJC_IVAR____PKProvisioningSEStorageManager_secureElement];
          v22 = v16;
          swift_bridgeObjectRetain_n();
          swift_retain_n();
          v23 = v22;
          v94 = v9;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v24 = v23;

          v25 = [v21 primarySecureElementIdentifier];
          if (v25)
          {
            v26 = v25;
            v27 = sub_1ADB063B0();
            v29 = v28;

            v30 = swift_allocObject();
            v30[2] = sub_1AD48724C;
            v30[3] = v20;
            v30[4] = v27;
            v30[5] = v29;
            v103 = sub_1AD4885F0;
            v104 = v30;
            aBlock = MEMORY[0x1E69E9820];
            v100 = 1107296256;
            v101 = sub_1AD482FD0;
            v102 = &block_descriptor_100;
            v31 = _Block_copy(&aBlock);

            [v21 accessAsyncSecureElementManagerSessionWithHandler_];
            _Block_release(v31);
          }

          else
          {
            v88 = v8;
            if (qword_1EB5981C0 != -1)
            {
              swift_once();
            }

            v89 = sub_1ADB05FA0();
            __swift_project_value_buffer(v89, qword_1EB59AB68);
            v90 = sub_1ADB05F80();
            v91 = sub_1ADB06850();
            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              *v92 = 0;
              _os_log_impl(&dword_1AD337000, v90, v91, "SEStorage: Failed to get SEID", v92, 2u);
              MEMORY[0x1B26F9F20](v92, -1, -1);
            }

            v93 = v24;

            sub_1AD47F864(0, sub_1AD48723C, v88, v93, v94, a2);
          }

          swift_bridgeObjectRelease_n();

          swift_bridgeObjectRelease_n();
LABEL_41:
          swift_bridgeObjectRelease_n();
          goto LABEL_42;
        }
      }
    }

    else
    {
      swift_retain_n();
      v56 = a3;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v57 = v56;
    }

    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v58 = sub_1ADB05FA0();
    __swift_project_value_buffer(v58, qword_1EB59AB68);

    v59 = sub_1ADB05F80();
    v60 = sub_1ADB06860();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      aBlock = v62;
      *v61 = 136315138;
      v63 = sub_1ADB061A0();
      v64 = MEMORY[0x1B26F66B0](v9, v63);
      v66 = v9;
      v67 = sub_1AD3CA88C(v64, v65, &aBlock);

      *(v61 + 4) = v67;
      v9 = v66;
      _os_log_impl(&dword_1AD337000, v59, v60, "SEStorage: Attempting to reserve space for %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x1B26F9F20](v62, -1, -1);
      MEMORY[0x1B26F9F20](v61, -1, -1);
    }

    v68 = swift_allocObject();
    *(v68 + 16) = a4;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_1AD4885E8;
    *(v69 + 24) = v68;
    *(v69 + 32) = a3;
    *(v69 + 40) = v9;
    *(v69 + 48) = 0;
    *(v69 + 56) = a2;
    v70 = *&a3[OBJC_IVAR____PKProvisioningSEStorageManager_secureElement];
    _Block_copy(a4);
    v71 = a3;

    _Block_copy(a4);

    v72 = v71;

    v73 = [v70 primarySecureElementIdentifier];
    if (v73)
    {
      v96 = v70;
      v74 = v73;
      v75 = sub_1ADB063B0();
      v77 = v76;

      v78 = swift_allocObject();
      v78[2] = sub_1AD488648;
      v78[3] = v69;
      v78[4] = v75;
      v78[5] = v77;
      v103 = sub_1AD4885F0;
      v104 = v78;
      aBlock = MEMORY[0x1E69E9820];
      v100 = 1107296256;
      v101 = sub_1AD482FD0;
      v102 = &block_descriptor_87_1;
      v79 = _Block_copy(&aBlock);

      [v96 accessAsyncSecureElementManagerSessionWithHandler_];
    }

    else
    {
      v80 = sub_1ADB05F80();
      v81 = sub_1ADB06850();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_1AD337000, v80, v81, "SEStorage: Failed to get SEID", v82, 2u);
        MEMORY[0x1B26F9F20](v82, -1, -1);
      }

      _Block_copy(a4);
      _Block_copy(a4);
      sub_1ADB05E30();
      v83 = sub_1ADB06600();
      (a4)[2](a4, v83, 0, 0);

      _Block_release(a4);
      v79 = a4;
    }

    _Block_release(v79);

    _Block_release(a4);

    swift_bridgeObjectRelease_n();
    goto LABEL_41;
  }

  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v10 = sub_1ADB05FA0();
  __swift_project_value_buffer(v10, qword_1EB59AB68);
  v11 = sub_1ADB05F80();
  v12 = sub_1ADB06860();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1AD337000, v11, v12, "SEStorage: Feature disabled", v13, 2u);
    MEMORY[0x1B26F9F20](v13, -1, -1);
  }

  sub_1ADB05E30();
  v14 = sub_1ADB06600();
  (a4)[2](a4, v14, 0, 0);

LABEL_42:
  _Block_release(a4);
  _Block_release(a4);
}

uint64_t sub_1AD486660(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = *(a1 + OBJC_IVAR____PKProvisioningSEStorageManager_secureElement);

  sub_1AD3C5F14(a2);
  v10 = [v9 primarySecureElementIdentifier];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1ADB063B0();
    v14 = v13;

    v15 = swift_allocObject();
    v15[2] = sub_1AD4880DC;
    v15[3] = v8;
    v15[4] = v12;
    v15[5] = v14;
    v22[4] = sub_1AD4885F0;
    v22[5] = v15;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1107296256;
    v22[2] = sub_1AD482FD0;
    v22[3] = &block_descriptor_259;
    v16 = _Block_copy(v22);

    [v9 accessAsyncSecureElementManagerSessionWithHandler_];
    _Block_release(v16);
  }

  else
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v18 = sub_1ADB05FA0();
    __swift_project_value_buffer(v18, qword_1EB59AB68);
    v19 = sub_1ADB05F80();
    v20 = sub_1ADB06850();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1AD337000, v19, v20, "SEStorage: Failed to get SEID", v21, 2u);
      MEMORY[0x1B26F9F20](v21, -1, -1);
    }

    if (a2)
    {
      a2();
    }
  }
}

uint64_t sub_1AD4868CC(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1AD452788;
  *(v5 + 24) = v4;
  v6 = *(a1 + OBJC_IVAR____PKProvisioningSEStorageManager_secureElement);
  _Block_copy(a2);

  v7 = [v6 primarySecureElementIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1ADB063B0();
    v11 = v10;

    v12 = swift_allocObject();
    v12[2] = sub_1AD487234;
    v12[3] = v5;
    v12[4] = v9;
    v12[5] = v11;
    v19[4] = sub_1AD4885F0;
    v19[5] = v12;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1AD482FD0;
    v19[3] = &block_descriptor_51_1;
    v13 = _Block_copy(v19);

    [v6 accessAsyncSecureElementManagerSessionWithHandler_];
    _Block_release(v13);
  }

  else
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v15 = sub_1ADB05FA0();
    __swift_project_value_buffer(v15, qword_1EB59AB68);
    v16 = sub_1ADB05F80();
    v17 = sub_1ADB06850();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1AD337000, v16, v17, "SEStorage: Failed to get SEID", v18, 2u);
      MEMORY[0x1B26F9F20](v18, -1, -1);
    }

    a2[2](a2, 0);
  }
}

uint64_t sub_1AD486B68(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + OBJC_IVAR____PKProvisioningSEStorageManager_secureElement);

  v8 = [v7 primarySecureElementIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1ADB063B0();
    v12 = v11;

    v13 = swift_allocObject();
    v13[2] = sub_1AD488660;
    v13[3] = v6;
    v13[4] = v10;
    v13[5] = v12;
    v20[4] = sub_1AD4885F0;
    v20[5] = v13;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = sub_1AD482FD0;
    v20[3] = &block_descriptor_249;
    v14 = _Block_copy(v20);

    [v7 accessAsyncSecureElementManagerSessionWithHandler_];
    _Block_release(v14);
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
    v18 = sub_1ADB06850();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1AD337000, v17, v18, "SEStorage: Failed to get SEID", v19, 2u);
      MEMORY[0x1B26F9F20](v19, -1, -1);
    }

    a2(0);
  }
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AD486DE8(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = *(a1 + OBJC_IVAR____PKProvisioningSEStorageManager_secureElement);

  v10 = a4;
  v11 = [v9 primarySecureElementIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1ADB063B0();
    v15 = v14;

    v16 = swift_allocObject();
    v16[2] = sub_1AD487DCC;
    v16[3] = v8;
    v16[4] = v13;
    v16[5] = v15;
    v23[4] = sub_1AD4885F0;
    v23[5] = v16;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1107296256;
    v23[2] = sub_1AD482FD0;
    v23[3] = &block_descriptor_197;
    v17 = _Block_copy(v23);

    [v9 accessAsyncSecureElementManagerSessionWithHandler_];
    _Block_release(v17);
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
    v21 = sub_1ADB06850();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1AD337000, v20, v21, "SEStorage: Failed to get SEID", v22, 2u);
      MEMORY[0x1B26F9F20](v22, -1, -1);
    }

    a2(MEMORY[0x1E69E7CC0]);
  }
}

void sub_1AD48709C()
{
  v1 = *(v0 + 16);
  v2 = sub_1ADB06600();
  (*(v1 + 16))(v1, v2);
}

void sub_1AD4870FC(uint64_t a1, void *aBlock)
{
  _Block_copy(aBlock);
  if (PKDisableDynamicSEAllocation())
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v4 = sub_1ADB05FA0();
    __swift_project_value_buffer(v4, qword_1EB59AB68);
    v5 = sub_1ADB05F80();
    v6 = sub_1ADB06860();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1AD337000, v5, v6, "SEStorage: Feature disabled", v7, 2u);
      MEMORY[0x1B26F9F20](v7, -1, -1);
    }

    (*(aBlock + 2))(aBlock, 0);
  }

  else
  {
    _Block_copy(aBlock);
    sub_1AD4868CC(a1, aBlock);
    _Block_release(aBlock);
  }

  _Block_release(aBlock);
}

uint64_t sub_1AD487260(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AD3D0F70;

  return sub_1AD483094(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t type metadata accessor for ProvisioningSEStorageManager.ReservationEntry()
{
  result = qword_1EB59AEA0;
  if (!qword_1EB59AEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AD487384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProvisioningSEStorageManager.ReservationEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AD4873E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProvisioningSEStorageManager.ReservationEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AD48744C(uint64_t a1)
{
  v2 = type metadata accessor for ProvisioningSEStorageManager.ReservationEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AD4874A8(uint64_t a1)
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
  v11[1] = sub_1AD3D0F70;

  return sub_1AD481FF8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_115Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_110Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AD487640(uint64_t a1)
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

  return sub_1AD480138(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AD48771C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AD3D0F70;

  return sub_1AD47EC08(a1, v4, v5, v7, v6);
}

uint64_t sub_1AD4877DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  sub_1AD487834(v1, v2, v3);
}

void sub_1AD487834(char *a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = qword_1EB5981C0;

  if (v7 != -1)
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
    *v11 = 0;
    _os_log_impl(&dword_1AD337000, v9, v10, "SEStorage: Performing TSM sync to cleanup SE", v11, 2u);
    MEMORY[0x1B26F9F20](v11, -1, -1);
  }

  v12 = *&a1[OBJC_IVAR____PKProvisioningSEStorageManager_webService];
  if (v12)
  {
    v13 = v12;
    v14 = [v13 context];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 TSMPushTopics];

      if (v16)
      {
        v17 = sub_1ADB06610();
      }

      else
      {
        v17 = MEMORY[0x1E69E7CC0];
      }

      v36 = [objc_allocWithZone(PKAsyncUnaryOperationComposer) init];
      v21 = *(v17 + 16);
      if (v21)
      {
        v35 = v13;
        v22 = (v17 + 40);
        do
        {
          v24 = *(v22 - 1);
          v23 = *v22;
          v25 = swift_allocObject();
          v25[2] = a1;
          v25[3] = v24;
          v25[4] = v23;
          v41 = sub_1AD487DB8;
          v42 = v25;
          aBlock = MEMORY[0x1E69E9820];
          v38 = 1107296256;
          v39 = sub_1AD433EF4;
          v40 = &block_descriptor_175;
          v26 = _Block_copy(&aBlock);

          v27 = a1;

          [v36 addOperation_];
          _Block_release(v26);
          v22 += 2;
          --v21;
        }

        while (v21);

        v28 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
        v29 = swift_allocObject();
        *(v29 + 16) = sub_1AD42F7F8;
        *(v29 + 24) = v6;
        v41 = sub_1AD487DC4;
        v42 = v29;
        aBlock = MEMORY[0x1E69E9820];
        v38 = 1107296256;
        v39 = sub_1AD434CF8;
        v40 = &block_descriptor_181;
        v30 = _Block_copy(&aBlock);

        v31 = [v36 evaluateWithInput:v28 completion:v30];
        _Block_release(v30);

        swift_unknownObjectRelease();
      }

      else
      {

        v32 = sub_1ADB05F80();
        v33 = sub_1ADB06860();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_1AD337000, v32, v33, "SEStorage: Failed to find TSM topics to perform sync", v34, 2u);
          MEMORY[0x1B26F9F20](v34, -1, -1);
        }

        a2();
      }
    }

    else
    {

      __break(1u);
    }
  }

  else
  {
    v18 = sub_1ADB05F80();
    v19 = sub_1ADB06860();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1AD337000, v18, v19, "SEStorage: Failed to perform TSM sync because missing webService", v20, 2u);
      MEMORY[0x1B26F9F20](v20, -1, -1);
    }

    a2();
  }
}

uint64_t objectdestroy_154Tm(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

unint64_t sub_1AD487DE0()
{
  result = qword_1EB59AE78;
  if (!qword_1EB59AE78)
  {
    sub_1ADB05E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59AE78);
  }

  return result;
}

uint64_t sub_1AD487E38(uint64_t a1)
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

  return sub_1AD482B60(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_105Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AD487F88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 41);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AD3D0F70;

  return sub_1AD48119C(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t objectdestroyTm_1(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1AD4880E8(uint64_t a1)
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
  v10[1] = sub_1AD3D0F70;

  return sub_1AD47C4B0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_89Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_64Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_92Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1AD488320()
{
  result = qword_1EB59C220;
  if (!qword_1EB59C220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB59A750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C220);
  }

  return result;
}

void sub_1AD4883AC()
{
  sub_1ADB05E30();
  if (v0 <= 0x3F)
  {
    sub_1AD48847C();
    if (v1 <= 0x3F)
    {
      sub_1AD4884CC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1AD48847C()
{
  if (!qword_1EB5980B0)
  {
    v0 = sub_1ADB06A20();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB5980B0);
    }
  }
}

void sub_1AD4884CC()
{
  if (!qword_1EB598A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB59A750);
    v0 = sub_1ADB06A20();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB598A78);
    }
  }
}

unint64_t sub_1AD488540()
{
  result = qword_1EB59AEB8;
  if (!qword_1EB59AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59AEB8);
  }

  return result;
}

id ProvisioningStepSetupAccount.__allocating_init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  *&v7[OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_context] = a1;
  v10 = &v7[OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_credential];
  *v10 = *a2;
  *(v10 + 2) = v8;
  v10[24] = v9;
  *&v7[OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_sharedState] = a3;
  v12.receiver = v7;
  v12.super_class = v3;
  return objc_msgSendSuper2(&v12, sel_init);
}

id ProvisioningStepSetupAccount.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  *&v3[OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_context] = a1;
  v5 = *(a2 + 24);
  v6 = &v3[OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_credential];
  *v6 = *a2;
  *(v6 + 2) = v4;
  v6[24] = v5;
  *&v3[OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_sharedState] = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for ProvisioningStepSetupAccount();
  return objc_msgSendSuper2(&v8, sel_init);
}

id ProvisioningStepSetupAccount.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProvisioningStepSetupAccount.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningStepSetupAccount();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1AD4888B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for ProvisioningStepSetupAccount();
  v9 = objc_allocWithZone(v8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  *&v9[OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_context] = a1;
  v12 = &v9[OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_credential];
  *v12 = *a2;
  *(v12 + 2) = v10;
  v12[24] = v11;
  *&v9[OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_sharedState] = a3;
  v14.receiver = v9;
  v14.super_class = v8;
  result = objc_msgSendSuper2(&v14, sel_init);
  *a4 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_11PassKitCore28ProvisioningStepSetupAccountC0fG6ResultO(uint64_t a1)
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

uint64_t sub_1AD4889B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AD488A00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AD488A44(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

void sub_1AD488A6C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = [*&v4[OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_sharedState] sid];
  v10 = sub_1ADB063B0();
  v12 = v11;

  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v12;
  v13[4] = a1;
  v13[5] = a3;
  v13[6] = a4;
  v13[7] = a2;
  v13[8] = v4;
  v18[4] = sub_1AD48B918;
  v18[5] = v13;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1AD48BA9C;
  v18[3] = &block_descriptor_18;
  v14 = _Block_copy(v18);
  v15 = a1;

  v16 = a2;
  v17 = v4;

  [v16 peerPaymentPassDetailsWithCompletion_];
  _Block_release(v14);
}

void sub_1AD488BB4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void (*a6)(id, uint64_t), uint64_t a7, uint64_t a8, unint64_t a9)
{
  v13 = a2;
  if (!a1)
  {
    goto LABEL_9;
  }

  v16 = a1;
  v17 = [v16 identifier];
  if (!v17)
  {
LABEL_8:

    v13 = a2;
LABEL_9:
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v27 = sub_1ADB05FA0();
    __swift_project_value_buffer(v27, qword_1EB59AB68);

    v28 = sub_1ADB05F80();
    v29 = sub_1ADB06850();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37 = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_1AD3CA88C(a8, a9, &v37);
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_1AD3CA88C(v13, a3, &v37);
      _os_log_impl(&dword_1AD337000, v28, v29, "[%s] ProvisioningStepSetupAccount: Failed to lookup peer payment account for accountIdentifier: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26F9F20](v31, -1, -1);
      MEMORY[0x1B26F9F20](v30, -1, -1);
    }

    v32 = [objc_opt_self() errorWithSeverity_];
    v33 = sub_1ADB06370();
    [v32 addInternalDebugDescription_];

    v16 = v32;
    a6(v32, 2);
    v36 = v16;
    goto LABEL_17;
  }

  v18 = v17;
  v35 = a8;
  v19 = a6;
  v20 = a7;
  v21 = sub_1ADB063B0();
  v23 = v22;

  if (v21 == a2 && v23 == a3)
  {

    v26 = v20;
    a6 = v19;
  }

  else
  {
    v25 = sub_1ADB06F50();

    v26 = v20;
    a6 = v19;
    a8 = v35;
    if ((v25 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v34 = [objc_allocWithZone(PKPeerPaymentCredential) initWithPeerPaymentAccount_];
  if (!v34)
  {
    __break(1u);
    return;
  }

  v36 = v34;
  sub_1AD488A6C(v34, a5, a6, v26);
LABEL_17:
}

uint64_t sub_1AD488ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1AD3D3200(0, &unk_1EB59A7B0);
    v4 = sub_1ADB06610();
  }

  if (a3)
  {
    sub_1AD3D3200(0, &unk_1EB59A7B0);
    a3 = sub_1ADB06610();
  }

  v5(v4, a3);
}

void sub_1AD488F9C(int a1, int a2, id a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ([a3 respondsToSelector_])
  {
    v17 = swift_allocObject();
    v17[2] = a6;
    v17[3] = a7;
    v17[4] = a8;
    v17[5] = a9;
    v17[6] = a10;
    v17[7] = a11;
    v17[8] = a4;
    v17[9] = a5;
    swift_unknownObjectRetain();
    v18 = a6;
    v19 = a7;

    v20 = sub_1ADB06370();
    v22[4] = sub_1AD48B9CC;
    v22[5] = v17;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1107296256;
    v22[2] = sub_1AD48BA9C;
    v22[3] = &block_descriptor_46;
    v21 = _Block_copy(v22);

    [a3 accountWithIdentifier:v20 completion:v21];
    _Block_release(v21);

    swift_unknownObjectRelease();
  }
}

void sub_1AD489128(void *a1, void *a2, void *a3, uint64_t a4, void (*a5)(void, void), uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  if (a1)
  {
    v15 = objc_allocWithZone(PKAccountCredential);
    v16 = a1;
    v17 = [v15 initWithAccount_];
    if (v17)
    {
      v18 = v17;
      v19 = [a3 sharingInstanceIdentifier];
      [v18 setSharingInstanceIdentifier_];

      v20 = [*(a4 + OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_sharedState) sid];
      v21 = sub_1ADB063B0();
      v23 = v22;

      v24 = *(a4 + OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_context);
      swift_beginAccess();
      v25 = *(v24 + 16);
      v26 = swift_allocObject();
      v26[2] = v21;
      v26[3] = v23;
      v26[4] = v18;
      v26[5] = a5;
      v26[6] = a6;
      v26[7] = v25;
      aBlock[4] = sub_1AD48BAA0;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AD3D96E8;
      aBlock[3] = &block_descriptor_53;
      v27 = _Block_copy(aBlock);
      v28 = v25;
      v29 = v18;

      [v28 setupAccountCredentialForProvisioning:v29 completion:v27];
      _Block_release(v27);
    }

    else
    {
      __break(1u);
    }

    return;
  }

  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v32 = sub_1ADB05FA0();
  __swift_project_value_buffer(v32, qword_1EB59AB68);

  v33 = a2;
  v34 = sub_1ADB05F80();
  v35 = sub_1ADB06850();

  if (os_log_type_enabled(v34, v35))
  {
    v45 = a5;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v36 = 136315650;
    *(v36 + 4) = sub_1AD3CA88C(a7, a8, aBlock);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_1AD3CA88C(a9, a10, aBlock);
    *(v36 + 22) = 2112;
    if (a2)
    {
      v39 = a2;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      v41 = v40;
    }

    else
    {
      v40 = 0;
      v41 = 0;
    }

    *(v36 + 24) = v40;
    *v37 = v41;
    _os_log_impl(&dword_1AD337000, v34, v35, "[%s] ProvisioningStepSetupAccount: Failed to lookup account for accountIdentifier: %s error: %@", v36, 0x20u);
    sub_1AD3CAFA0(v37);
    MEMORY[0x1B26F9F20](v37, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1B26F9F20](v38, -1, -1);
    MEMORY[0x1B26F9F20](v36, -1, -1);

    a5 = v45;
    if (!a2)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (!a2)
    {
LABEL_13:
      v42 = 0;
      goto LABEL_14;
    }
  }

  v42 = sub_1ADB05CB0();
LABEL_14:
  v43 = [objc_opt_self() errorWithUnderlyingError:v42 defaultSeverity:5];

  v44 = sub_1ADB06370();
  [v43 addInternalDebugDescription_];

  v47 = v43;
  a5(v43, 2);
}

void sub_1AD4895CC(char a1, void *a2, uint64_t a3, unint64_t a4, id a5, void (*a6)(id, uint64_t), uint64_t a7, void *a8)
{
  if (a1)
  {
    v14 = [a5 passDetailsResponse];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 status];

      v17 = v16 + 1;
      if (v16 + 1 <= 6)
      {
        if (((1 << v17) & 0x19) == 0)
        {
          if (((1 << v17) & 0x22) != 0)
          {
            if (qword_1EB5981C0 != -1)
            {
              swift_once();
            }

            v18 = sub_1ADB05FA0();
            __swift_project_value_buffer(v18, qword_1EB59AB68);

            v19 = sub_1ADB05F80();
            v20 = sub_1ADB06860();

            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              v22 = swift_slowAlloc();
              aBlock[0] = v22;
              *v21 = 136315138;
              *(v21 + 4) = sub_1AD3CA88C(a3, a4, aBlock);
              _os_log_impl(&dword_1AD337000, v19, v20, "[%s] ProvisioningStepSetupAccount: existing pass available to download", v21, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v22);
              MEMORY[0x1B26F9F20](v22, -1, -1);
              MEMORY[0x1B26F9F20](v21, -1, -1);
            }

            v23 = swift_allocObject();
            v23[2] = a3;
            v23[3] = a4;
            v23[4] = a6;
            v23[5] = a7;
            aBlock[4] = sub_1AD48B90C;
            aBlock[5] = v23;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1AD48BA9C;
            aBlock[3] = &block_descriptor_12_1;
            v24 = _Block_copy(aBlock);

            [a8 ingestSecureElementPassForCredential:a5 completion:v24];
            _Block_release(v24);
            return;
          }

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
            *(v47 + 4) = sub_1AD3CA88C(a3, a4, aBlock);
            _os_log_impl(&dword_1AD337000, v45, v46, "[%s] ProvisioningStepSetupAccount: pass available to provision", v47, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v48);
            MEMORY[0x1B26F9F20](v48, -1, -1);
            MEMORY[0x1B26F9F20](v47, -1, -1);
          }

          v49 = a5;
          v50 = 0;
LABEL_34:
          a6(v49, v50);
          return;
        }

        if (qword_1EB5981C0 != -1)
        {
          swift_once();
        }

        v39 = sub_1ADB05FA0();
        __swift_project_value_buffer(v39, qword_1EB59AB68);

        v40 = sub_1ADB05F80();
        v41 = sub_1ADB06860();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          aBlock[0] = v43;
          *v42 = 136315138;
          *(v42 + 4) = sub_1AD3CA88C(a3, a4, aBlock);
          _os_log_impl(&dword_1AD337000, v40, v41, "[%s] ProvisioningStepSetupAccount: pass unavailable to provision", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v43);
          MEMORY[0x1B26F9F20](v43, -1, -1);
          MEMORY[0x1B26F9F20](v42, -1, -1);
        }

LABEL_33:
        v49 = 0;
        v50 = 3;
        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    sub_1ADB06CE0();
    __break(1u);
    return;
  }

  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v26 = sub_1ADB05FA0();
  __swift_project_value_buffer(v26, qword_1EB59AB68);

  v27 = a5;
  v28 = a2;
  v29 = sub_1ADB05F80();
  v30 = sub_1ADB06850();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = a6;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v32 = 136315650;
    *(v32 + 4) = sub_1AD3CA88C(a3, a4, aBlock);
    *(v32 + 12) = 2112;
    *(v32 + 14) = v27;
    *v33 = v27;
    *(v32 + 22) = 2112;
    v35 = v27;
    if (a2)
    {
      v36 = a2;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      v38 = v37;
    }

    else
    {
      v37 = 0;
      v38 = 0;
    }

    *(v32 + 24) = v37;
    v33[1] = v38;
    _os_log_impl(&dword_1AD337000, v29, v30, "[%s] ProvisioningStepSetupAccount: Failed to get pass details for account: %@ error: %@", v32, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59A340);
    swift_arrayDestroy();
    MEMORY[0x1B26F9F20](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1B26F9F20](v34, -1, -1);
    MEMORY[0x1B26F9F20](v32, -1, -1);

    a6 = v31;
    if (!a2)
    {
      goto LABEL_33;
    }
  }

  else
  {

    if (!a2)
    {
      goto LABEL_33;
    }
  }

  v51 = a2;
  v52 = sub_1ADB05CB0();
  v53 = [objc_opt_self() errorWithUnderlyingError:v52 defaultSeverity:5];

  v54 = sub_1ADB06370();
  [v53 addInternalDebugDescription_];

  v55 = v53;
  a6(v53, 2);
}

void sub_1AD489D84(void *a1, id a2, uint64_t a3, unint64_t a4, void (*a5)(void *, uint64_t))
{
  if (a1)
  {
    v9 = qword_1EB5981C0;
    v10 = a1;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_1ADB05FA0();
    __swift_project_value_buffer(v11, qword_1EB59AB68);

    v12 = sub_1ADB05F80();
    v13 = sub_1ADB06860();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1AD3CA88C(a3, a4, &v27);
      _os_log_impl(&dword_1AD337000, v12, v13, "[%s] ProvisioningStepSetupAccount: successfully downloaded shell pass", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1B26F9F20](v15, -1, -1);
      MEMORY[0x1B26F9F20](v14, -1, -1);
    }

    v26 = v10;
    a5(a1, 1);

    v16 = v26;

LABEL_8:

    return;
  }

  if (a2)
  {
    v18 = a2;
    v19 = sub_1ADB05CB0();
    v20 = [objc_opt_self() errorWithUnderlyingError:v19 defaultSeverity:4];

    a5(v20, 2);
    v16 = a2;

    goto LABEL_8;
  }

  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v21 = sub_1ADB05FA0();
  __swift_project_value_buffer(v21, qword_1EB59AB68);

  v22 = sub_1ADB05F80();
  v23 = sub_1ADB06860();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1AD3CA88C(a3, a4, &v27);
    _os_log_impl(&dword_1AD337000, v22, v23, "[%s] ProvisioningStepSetupAccount: failed to download shell pass, and no error returned", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1B26F9F20](v25, -1, -1);
    MEMORY[0x1B26F9F20](v24, -1, -1);
  }

  a5(0, 3);
}

void sub_1AD48A104(void *a1, void *a2, uint64_t a3, unint64_t a4, void *a5, void (*a6)(id, uint64_t), uint64_t a7, void *a8, void *a9)
{
  if (!a1)
  {
    goto LABEL_5;
  }

  v59 = a1;
  v16 = [v59 remoteCredential];
  if (!v16 || (v16, a2))
  {

LABEL_5:
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v17 = sub_1ADB05FA0();
    __swift_project_value_buffer(v17, qword_1EB59AB68);

    v18 = a5;
    v19 = a2;
    v20 = sub_1ADB05F80();
    v21 = sub_1ADB06850();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v22 = 136315650;
      *(v22 + 4) = sub_1AD3CA88C(a3, a4, aBlock);
      *(v22 + 12) = 2112;
      *(v22 + 14) = v18;
      *v23 = v18;
      *(v22 + 22) = 2112;
      v25 = v18;
      if (a2)
      {
        v26 = a2;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        v28 = v27;
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      *(v22 + 24) = v27;
      v23[1] = v28;
      _os_log_impl(&dword_1AD337000, v20, v21, "[%s] ProvisioningStepSetupAccount: Failed to get pass details for account: %@ error: %@", v22, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59A340);
      swift_arrayDestroy();
      MEMORY[0x1B26F9F20](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1B26F9F20](v24, -1, -1);
      MEMORY[0x1B26F9F20](v22, -1, -1);

      if (!a2)
      {
        goto LABEL_16;
      }
    }

    else
    {

      if (!a2)
      {
LABEL_16:
        a6(0, 3);
        return;
      }
    }

    v29 = a2;
    v30 = sub_1ADB05CB0();
    v31 = [objc_opt_self() errorWithUnderlyingError:v30 defaultSeverity:5];

    v32 = sub_1ADB06370();
    [v31 addInternalDebugDescription_];

    v33 = v31;
    a6(v31, 2);

    v34 = a2;

LABEL_13:

    return;
  }

  [a5 setPassDetailsResponse_];
  v35 = [v59 status];
  v36 = v35 + 1;
  if (v35 + 1 <= 6)
  {
    if (((1 << v36) & 0x19) != 0)
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
        *(v47 + 4) = sub_1AD3CA88C(a3, a4, aBlock);
        _os_log_impl(&dword_1AD337000, v45, v46, "[%s] ProvisioningStepSetupAccount: pass unavailable to provision", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
        MEMORY[0x1B26F9F20](v48, -1, -1);
        MEMORY[0x1B26F9F20](v47, -1, -1);
      }

      v42 = 0;
      v43 = 3;
      goto LABEL_30;
    }

    if (((1 << v36) & 0x64) != 0)
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
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        aBlock[0] = v41;
        *v40 = 136315138;
        *(v40 + 4) = sub_1AD3CA88C(a3, a4, aBlock);
        _os_log_impl(&dword_1AD337000, v38, v39, "[%s] ProvisioningStepSetupAccount: pass available to provision", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v41);
        MEMORY[0x1B26F9F20](v41, -1, -1);
        MEMORY[0x1B26F9F20](v40, -1, -1);
      }

      v42 = a5;
      v43 = 0;
LABEL_30:
      a6(v42, v43);
      v34 = v59;

      goto LABEL_13;
    }

    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v49 = sub_1ADB05FA0();
    __swift_project_value_buffer(v49, qword_1EB59AB68);

    v50 = sub_1ADB05F80();
    v51 = sub_1ADB06860();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      aBlock[0] = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_1AD3CA88C(a3, a4, aBlock);
      _os_log_impl(&dword_1AD337000, v50, v51, "[%s] ProvisioningStepSetupAccount: existing pass available to download", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x1B26F9F20](v53, -1, -1);
      MEMORY[0x1B26F9F20](v52, -1, -1);
    }

    v54 = [a8 targetDevice];
    if (v54)
    {
      v55 = v54;
      v56 = swift_allocObject();
      v56[2] = a9;
      v56[3] = a3;
      v56[4] = a4;
      v56[5] = a6;
      v56[6] = a7;
      aBlock[4] = sub_1AD48B94C;
      aBlock[5] = v56;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AD471E08;
      aBlock[3] = &block_descriptor_24_3;
      v57 = _Block_copy(aBlock);

      v58 = a9;

      [v55 downloadPassIfNecessaryWithCompletion_];

      _Block_release(v57);
      swift_unknownObjectRelease();
      return;
    }

    __break(1u);
  }

  sub_1ADB06CE0();
  __break(1u);
}

void sub_1AD48A954(char a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void *, uint64_t))
{
  v5 = a5;
  if ((a1 & 1) == 0)
  {
    a5(0, 3);
    return;
  }

  v7 = *(a2 + OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_context);
  swift_beginAccess();
  v8 = *(v7 + 72);
  v9 = *(v7 + 80);
  v10 = v8;
  v11 = [v10 targetDevice];
  if (!v11)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  v12 = v11;
  v38 = v9;
  if ([v11 respondsToSelector_])
  {
    v13 = v10;
    v14 = [v12 paymentWebService:v13 passesOfType:1];
    swift_unknownObjectRelease();
    if (v14)
    {
      sub_1AD3D3200(0, &unk_1EB599EE0);
      v15 = sub_1ADB06610();
      v35 = v13;

      v16 = sub_1AD3D1BF0(v15);

      if (v16)
      {
        v36 = v5;
        v5 = (v16 & 0xFFFFFFFFFFFFFF8);
        if (v16 >> 62)
        {
          v17 = sub_1ADB06D00();
        }

        else
        {
          v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v17)
        {
          v18 = 0;
          while (1)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1B26F6CC0](v18, v16);
            }

            else
            {
              if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_34;
              }

              v19 = *(v16 + 8 * v18 + 32);
            }

            v20 = v19;
            v21 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              __break(1u);
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            if ([v19 isPeerPaymentPass])
            {
              break;
            }

            ++v18;
            if (v21 == v17)
            {
              goto LABEL_21;
            }
          }

          if (qword_1EB5981C0 != -1)
          {
            swift_once();
          }

          v27 = sub_1ADB05FA0();
          __swift_project_value_buffer(v27, qword_1EB59AB68);

          v28 = sub_1ADB05F80();
          v29 = sub_1ADB06860();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v39 = v31;
            *v30 = 136315138;
            *(v30 + 4) = sub_1AD3CA88C(a3, a4, &v39);
            _os_log_impl(&dword_1AD337000, v28, v29, "[%s] ProvisioningStepSetupAccount: successfully downloaded provisioned pass", v30, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v31);
            MEMORY[0x1B26F9F20](v31, -1, -1);
            MEMORY[0x1B26F9F20](v30, -1, -1);
          }

          else
          {
          }

          v32 = [objc_allocWithZone(PKPaymentProvisioningPassData) initWithSecureElementPass_];
          if (v32)
          {
            v33 = v32;

            v34 = v33;
            v36(v33, 1);

            return;
          }

          goto LABEL_38;
        }

LABEL_21:
        swift_bridgeObjectRelease_n();
        v5 = v36;
      }
    }

    else
    {
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  if (qword_1EB5981C0 != -1)
  {
LABEL_35:
    swift_once();
  }

  v22 = sub_1ADB05FA0();
  __swift_project_value_buffer(v22, qword_1EB59AB68);

  v23 = sub_1ADB05F80();
  v24 = sub_1ADB06860();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v39 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1AD3CA88C(a3, a4, &v39);
    _os_log_impl(&dword_1AD337000, v23, v24, "[%s] ProvisioningStepSetupAccount: unable to find peer payment pass after successful download", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1B26F9F20](v26, -1, -1);
    MEMORY[0x1B26F9F20](v25, -1, -1);
  }

  v5(0, 3);
}

void sub_1AD48AE44(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v11 = *&a2[OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_sharedState];

  v12 = [v11 sid];
  v13 = sub_1ADB063B0();
  v15 = v14;

  v16 = [a1 accountIdentifier];
  if (v16)
  {
    v17 = v16;
    v48 = sub_1ADB063B0();
    v19 = v18;
  }

  else
  {
    v48 = 0;
    v19 = 0xE000000000000000;
  }

  v20 = [a1 feature];
  v21 = v20;
  if (v20 <= 1)
  {
    if (v20)
    {
      if (v20 != 1)
      {
        goto LABEL_23;
      }

      v32 = *&a2[OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_context];
      swift_beginAccess();
      v33 = *(v32 + 80);
      if (v33)
      {
        v34 = v33;
        v35 = [v34 targetDevice];
        if (!v35)
        {
LABEL_22:

          __break(1u);
          goto LABEL_23;
        }

        v36 = v35;
        v37 = swift_allocObject();
        v37[2] = v48;
        v37[3] = v19;
        v37[4] = a2;
        v37[5] = v34;
        v37[6] = sub_1AD48BA7C;
        v37[7] = v10;
        v37[8] = v13;
        v37[9] = v15;
        v53 = sub_1AD48B95C;
        v54 = v37;
        aBlock = MEMORY[0x1E69E9820];
        v50 = 1107296256;
        v51 = sub_1AD3CE960;
        v52 = &block_descriptor_34_0;
        v38 = _Block_copy(&aBlock);
        v39 = a2;

        v40 = v34;

        [v36 updateAccountWithCompletion_];
        _Block_release(v38);

LABEL_19:
        swift_unknownObjectRelease();
        return;
      }
    }

LABEL_16:

    v41 = [objc_opt_self() errorWithSeverity_];
    aBlock = 0;
    v50 = 0xE000000000000000;
    sub_1ADB06C10();
    MEMORY[0x1B26F6530](0xD000000000000025, 0x80000001ADBA0CF0);
    v55 = v21;
    type metadata accessor for PKFeatureIdentifier(0);
    sub_1ADB06CD0();
    v42 = sub_1ADB06370();

    [v41 addInternalDebugDescription_];

    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {

      return;
    }

    v43 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    v45 = *(v43 + 32);
    v46 = v41;
    v45(v41, 2, a4, a5, ObjectType, v43);

    goto LABEL_19;
  }

  if ((v20 - 2) < 2)
  {
LABEL_8:
    v47 = v13;
    v22 = *&a2[OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_context];
    swift_beginAccess();
    v23 = *(v22 + 72);
    v24 = *(v22 + 80);
    v25 = v23;
    v26 = [v25 targetDevice];
    if (v26)
    {
      v27 = v26;

      if ([v27 respondsToSelector_])
      {
        v28 = swift_allocObject();
        v28[2] = v27;
        v28[3] = v48;
        v28[4] = v19;
        v28[5] = a1;
        v28[6] = a2;
        v28[7] = sub_1AD48BA7C;
        v28[8] = v10;
        v28[9] = v47;
        v28[10] = v15;
        v53 = sub_1AD48B990;
        v54 = v28;
        aBlock = MEMORY[0x1E69E9820];
        v50 = 1107296256;
        v51 = sub_1AD488ED8;
        v52 = &block_descriptor_40;
        v29 = _Block_copy(&aBlock);
        swift_unknownObjectRetain_n();
        v30 = a1;
        v31 = a2;

        [v27 updatedAccountsForProvisioningWithCompletion_];
        _Block_release(v29);

        swift_unknownObjectRelease_n();
        return;
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v20 == 4)
  {
    goto LABEL_16;
  }

  if (v20 == 5)
  {
    goto LABEL_8;
  }

LABEL_23:

  sub_1ADB06CE0();
  __break(1u);
}

uint64_t sub_1AD48B44C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = &a1[OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_credential];
  if (!a1[OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_credential + 24])
  {
    v14 = *v9;
    v13 = *(v9 + 1);
    v15 = *(v9 + 2);
    swift_retain_n();
    swift_retain_n();
    sub_1AD3DF24C(v14, v13, v15, 0);
    v16 = [v14 accountCredential];
    if (v16)
    {
      v17 = v16;
      v18 = [*&a1[OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_sharedState] sid];
      v40 = v15;
      v19 = sub_1ADB063B0();
      v21 = v20;

      v22 = *&a1[OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_context];
      swift_beginAccess();
      v23 = *(v22 + 16);
      v24 = swift_allocObject();
      v24[2] = v19;
      v24[3] = v21;
      v24[4] = v17;
      v24[5] = sub_1AD48B8E4;
      v24[6] = v8;
      v24[7] = v23;
      aBlock[4] = sub_1AD48B8F0;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AD3D96E8;
      aBlock[3] = &block_descriptor_22;
      v25 = _Block_copy(aBlock);
      v26 = v23;
      v27 = v17;

      [v26 setupAccountCredentialForProvisioning:v27 completion:v25];
      _Block_release(v25);

      v28 = v14;
      v29 = v13;
      v30 = v40;
    }

    else
    {
      v32 = [v14 peerPaymentCredential];
      if (v32)
      {
        v33 = v32;
        v34 = *&a1[OBJC_IVAR____TtC11PassKitCore28ProvisioningStepSetupAccount_context];
        swift_beginAccess();
        v35 = *(v34 + 80);
        if (v35)
        {
          v36 = v35;
          sub_1AD488A6C(v33, v36, sub_1AD48B8E4, v8);
          sub_1AD3CC2E0(v14, v13, v15, 0);
        }
      }

      v37 = [v14 accountReferenceCredential];
      if (!v37)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v38 = *(a2 + 24);
          ObjectType = swift_getObjectType();
          (*(v38 + 32))(0, 3, a3, a4, ObjectType, v38);
          swift_unknownObjectRelease();
        }

        sub_1AD3CC2E0(v14, v13, v15, 0);
        goto LABEL_8;
      }

      v27 = v37;

      sub_1AD48AE44(v27, a1, a2, a3, a4);

      v28 = v14;
      v29 = v13;
      v30 = v15;
    }

    sub_1AD3CC2E0(v28, v29, v30, 0);
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    swift_retain_n();
    swift_retain_n();
LABEL_8:
  }

  v10 = *(a2 + 24);
  v11 = swift_getObjectType();
  v12 = *(v10 + 32);
  swift_retain_n();
  swift_retain_n();
  v12(0, 3, a3, a4, v11, v10);

  swift_unknownObjectRelease();
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

id ProvisioningCarKeyStepFindReader.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  *&v3[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_carConfiguration] = 0;
  v5 = &v3[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_commonCompletion];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v3[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_session] = 0;
  *&v3[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_bindingAttestation] = xmmword_1ADB812F0;
  v6 = &v3[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_onDidStartPairing];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v3[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_context] = a1;
  LOBYTE(v6) = *(a2 + 24);
  v7 = &v3[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_credential];
  *v7 = *a2;
  *(v7 + 2) = v4;
  v7[24] = v6;
  *&v3[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_sharedState] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for ProvisioningCarKeyStepFindReader();
  return objc_msgSendSuper2(&v9, sel_init);
}

id ProvisioningCarKeyStepFindReader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProvisioningCarKeyStepFindReader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningCarKeyStepFindReader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1AD48BD5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = objc_allocWithZone(type metadata accessor for ProvisioningCarKeyStepFindReader());
  result = ProvisioningCarKeyStepFindReader.init(context:credential:sharedState:)(a1, a2, a3);
  *a4 = result;
  return result;
}

id ProvisioningCarKeyStepFindReader.terminateOperation(success:output:completion:)(uint64_t a1, id a2, uint64_t (*a3)(uint64_t, id))
{
  if (a1)
  {
    return a3(a1, a2);
  }

  if (!a2)
  {
    return a3(a1, a2);
  }

  a1 = [a2 identifier];
  if (!a1)
  {
    return a3(a1, a2);
  }

  v5 = a1;
  sub_1ADB063B0();

  v6 = *(v3 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_context);
  swift_beginAccess();
  v7 = *(v6 + 72);
  v8 = *(v6 + 80);
  v9 = v7;
  result = [v9 targetDevice];
  if (result)
  {
    v11 = result;

    if ([v11 respondsToSelector_])
    {
      v12 = sub_1ADB06370();
      [v11 deleteKeyMaterialForSubCredentialId_];

      swift_unknownObjectRelease();
    }

    else
    {

      a1 = swift_unknownObjectRelease();
    }

    return a3(a1, a2);
  }

  __break(1u);
  return result;
}

void sub_1AD48BF2C(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (Strong + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_bindingAttestation);
    v7 = *(Strong + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_bindingAttestation);
    v8 = *(Strong + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_bindingAttestation + 8);
    *v6 = a1;
    v6[1] = a2;
    sub_1AD422FC4(a1, a2);
    sub_1AD422FB0(v7, v8);
    v9 = [objc_opt_self() createSessionWithDelegate_];
    if (v9)
    {
      v10 = *&v5[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_session];
      *&v5[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_session] = v9;
      v11 = v9;

      [v11 startSession];
    }

    else
    {
      v12 = *&v5[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_context];
      v13 = *&v5[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_credential + 8];
      v14 = *&v5[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_credential + 16];
      v15 = v5[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_credential + 24];
      v18 = *&v5[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_credential];
      v19 = v13;
      v20 = v14;
      v21 = v15;
      sub_1AD3DF24C(v18, v13, v14, v15);
      v16 = sub_1AD433FC8(0, v12, &v18);
      sub_1AD3CC2E0(v18, v19, v20, v21);
      v17 = sub_1ADB06370();
      [v16 addInternalDebugDescription_];

      v11 = v16;
      sub_1AD48C0C4(v16, 1);
    }
  }
}

uint64_t sub_1AD48C0C4(void *a1, char a2)
{
  v5 = sub_1ADB06040();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1ADB06060();
  v9 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AD3DAB68();
  v12 = sub_1ADB068B0();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  aBlock[4] = sub_1AD48DB3C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD471DC4;
  aBlock[3] = &block_descriptor_23;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  v16 = v2;

  sub_1ADB06050();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AD48DB60(&qword_1EB598900, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD3D7750();
  sub_1ADB06B00();
  MEMORY[0x1B26F6950](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v19);
}

void sub_1AD48C388(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_context);
  swift_beginAccess();
  v8 = *(v7 + 72);
  v9 = *(v7 + 48);
  type metadata accessor for ProvisioningCarKeyUtility();
  *(swift_initStackObject() + 16) = v8;
  v18 = a1;
  v19 = 0;
  v10 = *(v3 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_sharedState);
  v11 = v8;
  v12 = v9;
  v13 = a1;
  v14 = [v10 sid];
  v15 = sub_1ADB063B0();
  v17 = v16;

  ProvisioningCarKeyUtility.generatingBindingAttestation(_:existingSalt:sid:completion:)(&v18, 0, 0, v15, v17, a2, a3);
}

void sub_1AD48C4A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_session);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_carConfiguration);
    if (v2)
    {
      v3 = *(v0 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_sharedState);
      v4 = v2;
      v29 = v1;
      v5 = [v3 sid];
      v28 = sub_1ADB063B0();
      v7 = v6;

      v8 = [v4 manufacturerOrIssuerIdentifier];
      if (!v8)
      {
        sub_1ADB063B0();
        v8 = sub_1ADB06370();
      }

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
        v30 = v16;
        *v15 = 136315394;
        *(v15 + 4) = sub_1AD3CA88C(v28, v7, &v30);
        *(v15 + 12) = 2080;
        v17 = sub_1AD3CA88C(v9, v11, &v30);

        *(v15 + 14) = v17;
        _os_log_impl(&dword_1AD337000, v13, v14, "[%s] Starting preWarm for %s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B26F9F20](v16, -1, -1);
        MEMORY[0x1B26F9F20](v15, -1, -1);
      }

      else
      {
      }

      v18 = [v29 prewarmWithManufacturerIdentifier_];
      if (v18)
      {

        v19 = v18;
        v20 = sub_1ADB05F80();
        v21 = sub_1ADB06860();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v30 = v24;
          *v22 = 136315394;
          v25 = sub_1AD3CA88C(v28, v7, &v30);

          *(v22 + 4) = v25;
          *(v22 + 12) = 2112;
          v26 = v19;
          v27 = _swift_stdlib_bridgeErrorToNSError();
          *(v22 + 14) = v27;
          *v23 = v27;
          _os_log_impl(&dword_1AD337000, v20, v21, "[%s] Failed to preWarm with error: %@", v22, 0x16u);
          sub_1AD3CAFA0(v23);
          MEMORY[0x1B26F9F20](v23, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v24);
          MEMORY[0x1B26F9F20](v24, -1, -1);
          MEMORY[0x1B26F9F20](v22, -1, -1);
        }

        else
        {
        }

        sub_1AD48C8A0(v19);
      }

      else
      {
      }
    }
  }
}

void sub_1AD48C8A0(void *a1)
{
  v12 = a1;
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BD40);
  type metadata accessor for DAError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v4 = v16;
  v12 = v16;
  sub_1AD48DB60(&unk_1EB59AF80, type metadata accessor for DAError);
  sub_1ADB05C80();
  if ((v16 | 8) != 0xA || (v5 = *(v1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_carConfiguration)) == 0)
  {
LABEL_8:

LABEL_9:
    v7 = *(v1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_context);
    v8 = *(v1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_credential + 8);
    v9 = *(v1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_credential + 16);
    v10 = *(v1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_credential + 24);
    v12 = *(v1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_credential);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1AD3DF24C(v12, v8, v9, v10);
    v11 = sub_1AD433FC8(a1, v7, &v12);
    sub_1AD3CC2E0(v12, v13, v14, v15);
    v4 = v11;
    sub_1AD48C0C4(v11, 1);
    v6 = v4;
    goto LABEL_10;
  }

  v6 = v5;
  if (([v6 passwordEnteredManually] & 1) == 0)
  {

    goto LABEL_8;
  }

  sub_1AD48C0C4(0, 2);
LABEL_10:
}

void sub_1AD48CA4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_session);
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_carConfiguration);
  if (!v3)
  {
    return;
  }

  v4 = *(v2 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_sharedState);
  v5 = v1;
  v6 = v3;
  v7 = [v4 sid];
  v58 = sub_1ADB063B0();
  v9 = v8;

  v10 = *(v2 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_context);
  swift_beginAccess();
  v11 = *(v10 + 72);
  v12 = *(v10 + 80);
  v13 = qword_1EB5981C0;
  v14 = v11;
  v61 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = sub_1ADB05FA0();
  __swift_project_value_buffer(v15, qword_1EB59AB68);

  v16 = sub_1ADB05F80();
  v17 = sub_1ADB06860();

  v60 = v9;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v62 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1AD3CA88C(v58, v9, &v62);
    _os_log_impl(&dword_1AD337000, v16, v17, "[%s] Starting to find reader", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1B26F9F20](v19, -1, -1);
    MEMORY[0x1B26F9F20](v18, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59BB00);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1ADB789F0;
  *(v20 + 32) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59AF90);
  v21 = sub_1ADB06600();

  v22 = PKMeContactWithKeysToFetch(v21);

  v59 = v22;
  if (!v22)
  {
    goto LABEL_11;
  }

  v23 = [v22 givenName];
  v24 = sub_1ADB063B0();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {
LABEL_11:
    v28 = [v14 targetDevice];
    if (!v28)
    {
      __break(1u);
      return;
    }

    v29 = v28;
    v30 = v14;
    v31 = [v29 deviceDescriptionForPaymentWebService_];

    swift_unknownObjectRelease();
    if (!v31)
    {

      v32 = 0;
      goto LABEL_16;
    }

    sub_1ADB063B0();
  }

  v32 = sub_1ADB06370();
LABEL_16:
  v33 = [v6 password];
  if (!v33)
  {
    sub_1ADB063B0();
    v33 = sub_1ADB06370();
  }

  v34 = [v6 supportedRadioTechnologies];
  v35 = (v2 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_bindingAttestation);
  v36 = *(v2 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_bindingAttestation + 8);
  if (v36 >> 60 == 15)
  {
    v37 = 0;
  }

  else
  {
    v38 = v14;
    v39 = v6;
    v40 = v5;
    v41 = *v35;
    sub_1AD3C7528(*v35, v36);
    v37 = sub_1ADB05D50();
    v42 = v41;
    v5 = v40;
    v6 = v39;
    v14 = v38;
    sub_1AD422FB0(v42, v36);
  }

  v43 = [v5 startPairingWithKeyDisplayName:v32 pairingPassword:v33 radioTechnologies:v34 bindingAttestation:v37];

  if (v43)
  {

    v44 = v43;
    v45 = sub_1ADB05F80();
    v46 = sub_1ADB06860();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      log = v45;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v62 = v49;
      *v47 = 136315394;
      v50 = v14;
      v51 = v6;
      v52 = v5;
      v53 = sub_1AD3CA88C(v58, v60, &v62);

      *(v47 + 4) = v53;
      v5 = v52;
      v6 = v51;
      v14 = v50;
      *(v47 + 12) = 2112;
      v54 = v44;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 14) = v55;
      *v48 = v55;
      _os_log_impl(&dword_1AD337000, log, v46, "[%s] Failed to start pairing with error: %@", v47, 0x16u);
      sub_1AD3CAFA0(v48);
      MEMORY[0x1B26F9F20](v48, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1B26F9F20](v49, -1, -1);
      MEMORY[0x1B26F9F20](v47, -1, -1);
    }

    else
    {
    }

    v56 = v59;
    sub_1AD48C8A0(v44);
  }

  else
  {

    v56 = v59;
  }
}

void sub_1AD48D068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_session;
  v7 = *(a1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_session);
  if (v7)
  {
    [v7 endSession];
    v8 = *(a1 + v6);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + v6) = 0;

  v9 = (a1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_commonCompletion);
  v10 = *(a1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_commonCompletion);
  if (v10)
  {
    *v9 = 0;
    v9[1] = 0;
    v10(a2, a3);

    sub_1AD3C5FB8(v10);
  }
}

Swift::Void __swiftcall ProvisioningCarKeyStepFindReader.appletSubcredentialPairingSession(_:didEndPairingWith:registrationData:)(PKAppletSubcredentialPairingSession_optional *_, PKAppletSubcredential_optional *didEndPairingWith, PKSubcredentialEncryptedContainer_optional *registrationData)
{
  if (didEndPairingWith)
  {
    [(PKAppletSubcredential_optional *)didEndPairingWith setTrackingRequest:registrationData];

    sub_1AD48C0C4(didEndPairingWith, 0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1AD48D3E0(uint64_t a1)
{
  if (a1 == 4)
  {
    v2 = *(v1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_context);
    v3 = *(v1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_credential + 8);
    v4 = *(v1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_credential + 16);
    v5 = *(v1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_credential + 24);
    v9 = *(v1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_credential);
    v10 = v3;
    v11 = v4;
    v12 = v5;
    sub_1AD3DF24C(v9, v3, v4, v5);
    v6 = sub_1AD433FC8(0, v2, &v9);
    sub_1AD3CC2E0(v9, v10, v11, v12);
    v7 = sub_1ADB06370();
    [v6 addInternalDebugDescription_];

    v8 = v6;
    sub_1AD48C0C4(v6, 1);
  }

  else if (a1 == 2)
  {

    sub_1AD48C4A0();
  }
}

void _s11PassKitCore32ProvisioningCarKeyStepFindReaderC041appletSubcredentialPairingSessionDidBeginL0yySo08PKAppletklM0CSgF_0()
{
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1ADB05FA0();
  __swift_project_value_buffer(v1, qword_1EB59AB68);
  v2 = v0;
  v3 = sub_1ADB05F80();
  v4 = sub_1ADB06860();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = [*&v2[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_sharedState] sid];
    v8 = sub_1ADB063B0();
    v10 = v9;

    v11 = sub_1AD3CA88C(v8, v10, &v14);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1AD337000, v3, v4, "[%s] Pairing did begin", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1B26F9F20](v6, -1, -1);
    MEMORY[0x1B26F9F20](v5, -1, -1);
  }

  v12 = *&v2[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_onDidStartPairing];
  if (v12)
  {

    v12(v13);

    sub_1AD3C5FB8(v12);
  }
}

void sub_1AD48D6F8(void *a1)
{
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v3 = sub_1ADB05FA0();
  __swift_project_value_buffer(v3, qword_1EB59AB68);
  v4 = v1;
  v5 = sub_1ADB05F80();
  v6 = sub_1ADB06860();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = [*&v4[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_sharedState] sid];
    v10 = sub_1ADB063B0();
    v12 = v11;

    v13 = sub_1AD3CA88C(v10, v12, &v14);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1AD337000, v5, v6, "[%s] Pairing failed with error", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1B26F9F20](v8, -1, -1);
    MEMORY[0x1B26F9F20](v7, -1, -1);
  }

  if (a1)
  {
    sub_1AD48C8A0(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1AD48D8A0(void *a1)
{
  if (a1)
  {
    v3 = a1;
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v4 = sub_1ADB05FA0();
    __swift_project_value_buffer(v4, qword_1EB59AB68);
    v5 = a1;
    v6 = v1;
    v7 = sub_1ADB05F80();
    v8 = sub_1ADB06860();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v9 = 136315394;
      v12 = [*&v6[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_sharedState] sid];
      v13 = sub_1ADB063B0();
      v15 = v14;

      v16 = sub_1AD3CA88C(v13, v15, &v19);

      *(v9 + 4) = v16;
      *(v9 + 12) = 2112;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v18;
      *v10 = v18;
      _os_log_impl(&dword_1AD337000, v7, v8, "[%s] Failed to preWarm with error: %@", v9, 0x16u);
      sub_1AD3CAFA0(v10);
      MEMORY[0x1B26F9F20](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1B26F9F20](v11, -1, -1);
      MEMORY[0x1B26F9F20](v9, -1, -1);
    }

    sub_1AD48C8A0(a1);
  }

  else
  {

    sub_1AD48CA4C();
  }
}

uint64_t get_enum_tag_for_layout_string_11PassKitCore32ProvisioningCarKeyStepFindReaderC0hI6ResultO(uint64_t a1)
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

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AD48DB60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static Serializer.data(from:format:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v3);

  return sub_1AD48F24C(v6, a2, v3, v4, v5);
}

uint64_t sub_1AD48DC00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ADB06F50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1ADB06F50();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1AD48DCCC(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1AD48DCFC(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ADB06F50();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1AD48DDB8()
{
  sub_1ADB07090();
  sub_1AD361674(v2, *v0);
  return sub_1ADB070D0();
}

uint64_t sub_1AD48DE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AD48DC00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AD48DE58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AD400044();
  *a1 = result;
  return result;
}

uint64_t sub_1AD48DE90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AD48DEE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1AD48DF5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AD48DFB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1AD48E004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AD48DCFC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1AD48E040@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1AD48E084(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AD48E0D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CodableResult.encode(to:)(void *a1, void *a2)
{
  v53 = a1;
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v56 = a2[2];
  v4 = v56;
  v57 = v3;
  v58 = v5;
  v59 = v6;
  v60 = v7;
  v61 = v8;
  v46 = type metadata accessor for CodableResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1ADB06EE0();
  v48 = *(v9 - 8);
  v49 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v45 = v36 - v11;
  v47 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v43 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v4;
  v57 = v3;
  v58 = v5;
  v59 = v6;
  v60 = v7;
  v61 = v8;
  v13 = type metadata accessor for CodableResult.SuccessCodingKeys();
  v14 = swift_getWitnessTable();
  v38 = v13;
  v36[1] = v14;
  v41 = sub_1ADB06EE0();
  v40 = *(v41 - 8);
  v15 = MEMORY[0x1EEE9AC00](v41);
  v37 = v36 - v16;
  v39 = *(v4 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v36[0] = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v6;
  v52 = v4;
  v56 = v4;
  v57 = v3;
  v42 = v3;
  v58 = v5;
  v59 = v6;
  v60 = v7;
  v61 = v8;
  v50 = v8;
  type metadata accessor for CodableResult.CodingKeys();
  swift_getWitnessTable();
  v22 = sub_1ADB06EE0();
  v54 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v36 - v23;
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  sub_1ADB07150();
  (*(v19 + 16))(v21, v55, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v47;
    v27 = v42;
    v26 = v43;
    (*(v47 + 32))(v43, v21, v42);
    LOBYTE(v56) = 1;
    v28 = v45;
    sub_1ADB06E40();
    v29 = v49;
    sub_1ADB06ED0();
    (*(v48 + 8))(v28, v29);
    (*(v25 + 8))(v26, v27);
  }

  else
  {
    v30 = v39;
    v31 = v36[0];
    v32 = v52;
    (*(v39 + 32))(v36[0], v21, v52);
    LOBYTE(v56) = 0;
    v33 = v37;
    sub_1ADB06E40();
    v34 = v41;
    sub_1ADB06ED0();
    (*(v40 + 8))(v33, v34);
    (*(v30 + 8))(v31, v32);
  }

  return (*(v54 + 8))(v24, v22);
}

uint64_t CodableResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v84 = a1;
  v71 = a8;
  *&v80 = a2;
  *(&v80 + 1) = a3;
  *&v81 = a4;
  *(&v81 + 1) = a5;
  v82 = a6;
  v83 = a7;
  v68 = type metadata accessor for CodableResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v60 = sub_1ADB06E30();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v69 = &v54 - v14;
  *&v80 = a2;
  *(&v80 + 1) = a3;
  *&v81 = a4;
  *(&v81 + 1) = a5;
  v82 = a6;
  v83 = a7;
  v15 = type metadata accessor for CodableResult.SuccessCodingKeys();
  v16 = swift_getWitnessTable();
  v65 = v15;
  v64 = v16;
  v58 = sub_1ADB06E30();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v66 = &v54 - v17;
  *&v80 = a2;
  *(&v80 + 1) = a3;
  *&v81 = a4;
  *(&v81 + 1) = a5;
  v82 = a6;
  v83 = a7;
  type metadata accessor for CodableResult.CodingKeys();
  v76 = swift_getWitnessTable();
  v72 = sub_1ADB06E30();
  v75 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v19 = &v54 - v18;
  v61 = a2;
  *&v80 = a2;
  *(&v80 + 1) = a3;
  v74 = a3;
  v63 = a4;
  *&v81 = a4;
  *(&v81 + 1) = a5;
  v62 = a6;
  v82 = a6;
  v83 = a7;
  v20 = type metadata accessor for CodableResult();
  v70 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v54 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v54 - v27;
  __swift_project_boxed_opaque_existential_1(v84, v84[3]);
  v73 = v19;
  v29 = v77;
  sub_1ADB07120();
  if (!v29)
  {
    v76 = v23;
    v56 = v26;
    v55 = v28;
    v77 = v20;
    v30 = v73;
    v31 = v72;
    *&v78 = sub_1ADB06E20();
    sub_1ADB066A0();
    swift_getWitnessTable();
    *&v80 = sub_1ADB06AE0();
    *(&v80 + 1) = v32;
    *&v81 = v33;
    *(&v81 + 1) = v34;
    sub_1ADB06AD0();
    swift_getWitnessTable();
    sub_1ADB067F0();
    v35 = v78;
    if (v78 == 2 || (v54 = v80, v78 = v80, v79 = v81, (sub_1ADB06810() & 1) == 0))
    {
      v39 = sub_1ADB06C60();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5982A0);
      *v41 = v77;
      sub_1ADB06D80();
      sub_1ADB06C50();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
      swift_willThrow();
      (*(v75 + 8))(v30, v31);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v35)
      {
        LOBYTE(v78) = 1;
        v36 = v69;
        sub_1ADB06D70();
        v38 = v70;
        v37 = v71;
        v44 = v60;
        sub_1ADB06E10();
        v45 = v75;
        (*(v59 + 8))(v36, v44);
        (*(v45 + 8))(v30, v31);
        swift_unknownObjectRelease();
        v51 = v76;
        v50 = v77;
      }

      else
      {
        LOBYTE(v78) = 0;
        v42 = v66;
        v43 = v31;
        sub_1ADB06D70();
        v38 = v70;
        v37 = v71;
        v51 = v56;
        v46 = v58;
        sub_1ADB06E10();
        v47 = v42;
        v48 = v75;
        (*(v57 + 8))(v47, v46);
        (*(v48 + 8))(v30, v43);
        swift_unknownObjectRelease();
        v50 = v77;
      }

      swift_storeEnumTagMultiPayload();
      v52 = *(v38 + 32);
      v53 = v55;
      v52(v55, v51, v50);
      v52(v37, v53, v50);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v84);
}

uint64_t Serializer.Format.hashValue.getter()
{
  sub_1ADB07090();
  MEMORY[0x1B26F7130](0);
  return sub_1ADB070D0();
}

uint64_t static Serializer.value<A>(from:format:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  sub_1ADB05970();
  swift_allocObject();
  sub_1ADB05960();
  sub_1ADB05950();

  v4 = *(*(a1 - 8) + 56);

  return v4(a2, 0, 1, a1);
}

uint64_t sub_1AD48F24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_2, a1, a3);
  __swift_project_boxed_opaque_existential_1(v10, v11);
  sub_1ADB059D0();
  swift_allocObject();
  sub_1ADB059C0();
  v8 = sub_1ADB059B0();

  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

unint64_t sub_1AD48F470()
{
  result = qword_1EB59B060[0];
  if (!qword_1EB59B060[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB59B060);
  }

  return result;
}

uint64_t sub_1AD48F4CC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AD48F548(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1AD48F670(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_2(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_1AD48F9C0(uint64_t a1)
{
  if (*(a1 + 152))
  {
    v51[0] = *(a1 + 160);
    if (*(&v51[0] + 1))
    {

      sub_1AD3D0E9C(v51, v50, &qword_1EB598868);
      v2 = sub_1ADB06370();
      sub_1AD3D0E3C(v51, &qword_1EB598868);
      v3 = [v2 pk_decodeHexadecimal];
      if (v3)
      {
        v4 = v3;
        v5 = sub_1ADB05D70();
        v7 = v6;

LABEL_10:
        v14 = sub_1ADB06370();
        v15 = sub_1ADB06370();
        v16 = sub_1ADB06370();
        if (((*(a1 + 56) | *(a1 + 48)) & 0x8000000000000000) == 0)
        {
          v40 = *(a1 + 56);
          v41 = *(a1 + 48);
          v43 = v16;
          v44 = v15;
          v45 = v14;
          v42 = sub_1ADB06370();

          v39 = sub_1ADB06370();

          v17 = sub_1ADB06370();
          if (v7 >> 60 == 15)
          {
            v18 = 0;
          }

          else
          {
            v18 = sub_1ADB05D50();
          }

          v47 = v7;
          v49 = v5;
          if (*(a1 + 104))
          {

            v19 = sub_1ADB06370();
          }

          else
          {
            v19 = 0;
          }

          v20 = sub_1ADB06600();

          v21 = sub_1ADB06370();
          v22 = [v21 pk_decodeHexadecimal];

          if (v22)
          {

            v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
            sub_1AD41199C(a1);
            v24 = sub_1ADB05D70();
            v26 = v25;

            v27 = sub_1ADB05D50();
            sub_1AD3C757C(v24, v26);
            [v23 initWithMerchantIdentifier:v45 merchantSessionIdentifier:v44 nonce:v43 epochTimestamp:v41 expiresAt:v40 displayName:v42 initiativeContext:v39 initiative:v17 ampEnrollmentPinning:v18 operationalAnalyticsIdentifier:v19 signedFields:v20 signature:v27];

            sub_1AD422FB0(v49, v47);
            return;
          }

          goto LABEL_27;
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }
    }

    else
    {
    }

    v5 = 0;
    v7 = 0xF000000000000000;
    goto LABEL_10;
  }

  v8 = sub_1ADB06370();
  v9 = sub_1ADB06370();
  v10 = sub_1ADB06370();
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  if ((v12 | v11) < 0)
  {
    goto LABEL_26;
  }

  v13 = v10;
  v46 = v9;
  v48 = v8;

  v28 = sub_1ADB06370();

  v29 = sub_1ADB06370();
  if (*(a1 + 104))
  {

    v30 = sub_1ADB06370();
  }

  else
  {
    v30 = 0;
  }

  v31 = sub_1ADB06370();
  v32 = [v31 pk_decodeHexadecimal];

  if (!v32)
  {
    goto LABEL_28;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1AD41199C(a1);
  v34 = objc_allocWithZone(ObjCClassFromMetadata);
  v35 = sub_1ADB05D70();
  v37 = v36;

  v38 = sub_1ADB05D50();
  sub_1AD3C757C(v35, v37);
  [v34 initWithMerchantIdentifier:v48 merchantSessionIdentifier:v46 nonce:v13 epochTimestamp:v11 expiresAt:v12 domain:v28 displayName:v29 operationalAnalyticsIdentifier:v30 signature:v38];
}

id sub_1AD48FE7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AE30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_1ADB05D20();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADB05D10();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1AD412938(a1);
    sub_1AD3D0E3C(v4, &qword_1EB59AE30);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v11 = sub_1ADB06370();
    v12 = sub_1ADB06370();
    v13 = sub_1ADB05CE0();
    v14 = sub_1ADB06370();
    sub_1AD412938(a1);
    v15 = [v10 initWithOrderTypeIdentifier:v11 orderIdentifier:v12 webServiceURL:v13 authenticationToken:v14];

    (*(v6 + 8))(v8, v5);
    return v15;
  }
}

id sub_1AD490098(uint64_t a1)
{
  v1 = a1;
  v41 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  if (v2)
  {
    v23 = objc_opt_self();
    v24 = v1;
    v3 = 0;
    v26 = 0;
    for (i = v2 - 1; ; --i)
    {
      v25 = v3;
      v5 = v1 + v3;
      v31 = *(v5 + 160);
      v32 = *(v5 + 176);
      *v33 = *(v5 + 192);
      *&v33[10] = *(v5 + 202);
      v27 = *(v5 + 96);
      v28 = *(v5 + 112);
      v29 = *(v5 + 128);
      v30 = *(v5 + 144);
      v6 = *(v5 + 218);

      v7 = sub_1ADB06370();

      v8 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v9 = sub_1ADB06370();

      v10 = [v8 initWithString_];

      v11 = [v23 summaryItemWithLabel:v7 amount:v10];
      v12 = v11;
      v13 = sub_1ADB06370();

      [v12 setIdentifier_];

      v14 = sub_1ADB06370();

      [v12 setDetail_];

      v38 = v31;
      v39 = v32;
      v40[0] = *v33;
      *(v40 + 10) = *&v33[10];
      v34 = v27;
      v35 = v28;
      v36 = v29;
      v37 = v30;
      if (sub_1AD40DCD8(&v34) != 1)
      {
        v42[4] = v38;
        v42[5] = v39;
        v43[0] = v40[0];
        *(v43 + 9) = *(v40 + 9);
        v42[0] = v34;
        v42[1] = v35;
        v42[2] = v36;
        v42[3] = v37;
        sub_1AD3D3200(0, &qword_1EB59B270);
        v15 = sub_1AD491598(v42);
        [v12 setDateComponentsRange_];
      }

      v16 = v26;
      if (v6)
      {
        v1 = v24;
        if (!v26)
        {
          v17 = v12;
          v16 = v12;
        }
      }

      else
      {
        v1 = v24;
      }

      v18 = v12;
      MEMORY[0x1B26F6680]();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1ADB06640();
      }

      sub_1ADB06670();

      if (!i)
      {
        break;
      }

      v26 = v16;
      v3 = v25 + 192;
    }
  }

  else
  {

    v16 = 0;
  }

  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1AD3D3200(0, &qword_1EB59B268);
  v20 = sub_1ADB06600();

  v21 = [v19 initWithMethods:v20 defaultMethod:v16];

  return v21;
}

id sub_1AD490434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598BC8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v47 - v3;
  v5 = type metadata accessor for RemoteNetworkPaymentCodable.Types.LineItem(0);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AE30);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v47 - v11;
  v13 = sub_1ADB05D20();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v53 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v47 - v17;
  v19 = type metadata accessor for RemoteNetworkPaymentCodable.Types.RecurringPaymentRequest(0);
  sub_1ADB05D10();
  v20 = *(v14 + 48);
  if (v20(v12, 1, v13) != 1)
  {
    v51 = v4;
    v47[0] = *(v14 + 32);
    v47[1] = v14 + 32;
    (v47[0])(v18, v12, v13);
    v22 = v13;
    v23 = sub_1AD4994C4((a1 + v19[5]));
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v52 = v22;
      v48 = v23;
      v49 = v14;
      v50 = v7;
      v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v25 = sub_1ADB06370();
      v57 = v18;
      v26 = sub_1ADB05CE0();
      v27 = v24;
      v28 = a1;
      v21 = [v27 initWithPaymentDescription:v25 regularBilling:v21 managementURL:v26];

      v29 = *(a1 + v19[7] + 8);
      v30 = v21;
      if (v29)
      {
        v29 = sub_1ADB06370();
      }

      [v21 setBillingAgreement_];

      v33 = v49;
      v32 = v50;
      if (*(v28 + v19[9] + 8))
      {
        v34 = v50;
        v35 = v54;
        sub_1ADB05D10();
        v36 = v52;
        if (v20(v35, 1, v52) == 1)
        {
          sub_1AD3D0E3C(v35, &qword_1EB59AE30);
        }

        else
        {
          v37 = v53;
          (v47[0])(v53, v35, v36);
          v38 = sub_1ADB05CE0();
          [v21 setTokenNotificationURL_];

          (*(v33 + 8))(v37, v36);
        }

        v32 = v34;
      }

      v39 = v51;
      sub_1AD3D0E9C(v28 + v19[6], v51, &qword_1EB598BC8);
      if ((*(v55 + 48))(v39, 1, v56) == 1)
      {
        (*(v33 + 8))(v57, v52);

        sub_1AD499B58(v28, type metadata accessor for RemoteNetworkPaymentCodable.Types.RecurringPaymentRequest);
        sub_1AD3D0E3C(v39, &qword_1EB598BC8);
        return v21;
      }

      sub_1AD499C64(v39, v32, type metadata accessor for RemoteNetworkPaymentCodable.Types.LineItem);
      v40 = sub_1AD4994C4(v32);
      objc_opt_self();
      v41 = swift_dynamicCastObjCClass();
      v42 = v57;
      v43 = v48;
      if (v41)
      {
        v44 = v41;
        v45 = v40;
        [v21 setTrialBilling_];
      }

      else
      {
      }

      sub_1AD499B58(v32, type metadata accessor for RemoteNetworkPaymentCodable.Types.LineItem);
      (*(v33 + 8))(v42, v52);
      v31 = v28;
    }

    else
    {

      (*(v14 + 8))(v18, v22);
      v31 = a1;
    }

    sub_1AD499B58(v31, type metadata accessor for RemoteNetworkPaymentCodable.Types.RecurringPaymentRequest);
    return v21;
  }

  sub_1AD499B58(a1, type metadata accessor for RemoteNetworkPaymentCodable.Types.RecurringPaymentRequest);
  sub_1AD3D0E3C(v12, &qword_1EB59AE30);
  return 0;
}

id sub_1AD490A5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AE30);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v31 - v6;
  v8 = sub_1ADB05D20();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v31 - v13;
  v15 = type metadata accessor for RemoteNetworkPaymentCodable.Types.AutomaticReloadPaymentRequest(0);
  sub_1ADB05D10();
  v16 = *(v9 + 48);
  if (v16(v7, 1, v8) != 1)
  {
    v34 = v16;
    v31[0] = *(v9 + 32);
    v31[1] = v9 + 32;
    (v31[0])(v14, v7, v8);
    v18 = v14;
    v19 = sub_1AD4994C4((a1 + v15[5]));
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v32 = v12;
      v33 = v5;
      v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v21 = sub_1ADB06370();
      v35 = v18;
      v22 = sub_1ADB05CE0();
      v17 = [v20 initWithPaymentDescription:v21 automaticReloadBilling:v17 managementURL:v22];

      v23 = *(a1 + v15[6] + 8);
      v24 = v17;
      if (v23)
      {
        v23 = sub_1ADB06370();
      }

      v25 = v33;
      [v17 setBillingAgreement_];

      v26 = a1 + v15[8];
      v27 = v32;
      if (*(v26 + 8))
      {
        sub_1ADB05D10();
        if (v34(v25, 1, v8) == 1)
        {
          (*(v9 + 8))(v35, v8);

          sub_1AD499B58(a1, type metadata accessor for RemoteNetworkPaymentCodable.Types.AutomaticReloadPaymentRequest);
          sub_1AD3D0E3C(v25, &qword_1EB59AE30);
          return v17;
        }

        (v31[0])(v27, v25, v8);
        v28 = sub_1ADB05CE0();
        [v17 setTokenNotificationURL_];

        v29 = *(v9 + 8);
        v29(v27, v8);
        v29(v35, v8);
      }

      else
      {
        (*(v9 + 8))(v35, v8);
      }
    }

    else
    {

      (*(v9 + 8))(v18, v8);
    }

    sub_1AD499B58(a1, type metadata accessor for RemoteNetworkPaymentCodable.Types.AutomaticReloadPaymentRequest);
    return v17;
  }

  sub_1AD499B58(a1, type metadata accessor for RemoteNetworkPaymentCodable.Types.AutomaticReloadPaymentRequest);
  sub_1AD3D0E3C(v7, &qword_1EB59AE30);
  return 0;
}

id sub_1AD490E9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B278);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v47 - v3;
  v5 = sub_1ADB05EE0();
  v58 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598880);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AE30);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v47 - v13;
  v15 = sub_1ADB05D20();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v55 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - v19;
  v21 = type metadata accessor for RemoteNetworkPaymentCodable.Types.DeferredPaymentRequest(0);
  sub_1ADB05D10();
  v57 = *(v16 + 48);
  if (v57(v14, 1, v15) != 1)
  {
    v53 = v12;
    v48 = *(v16 + 32);
    v49 = v16 + 32;
    v48(v20, v14, v15);
    v23 = sub_1AD4994C4((a1 + v21[5]));
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      v50 = v23;
      v51 = v5;
      v54 = v15;
      v52 = v4;
      v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v25 = a1;
      v26 = sub_1ADB06370();
      v60 = v20;
      v27 = sub_1ADB05CE0();
      v22 = [v24 initWithPaymentDescription:v26 deferredBilling:v22 managementURL:v27];

      a1 = v25;
      v28 = *(v25 + 8);
      v29 = v22;
      if (v28)
      {
        v28 = sub_1ADB06370();
      }

      v30 = v53;
      [v22 setBillingAgreement_];

      v31 = v25 + v21[10];
      v33 = v51;
      v32 = v52;
      if (*(v31 + 8))
      {
        sub_1ADB05D10();
        v34 = v54;
        if (v57(v30, 1, v54) == 1)
        {
          sub_1AD3D0E3C(v30, &qword_1EB59AE30);
        }

        else
        {
          v35 = v55;
          v48(v55, v30, v34);
          v36 = sub_1ADB05CE0();
          [v22 setTokenNotificationURL_];

          (*(v16 + 8))(v35, v34);
        }
      }

      v37 = v59;
      sub_1AD3D0E9C(a1 + v21[6], v59, &qword_1EB598880);
      v38 = sub_1ADB05DE0();
      v39 = *(v38 - 8);
      v40 = 0;
      if ((*(v39 + 48))(v37, 1, v38) != 1)
      {
        v40 = sub_1ADB05D80();
        (*(v39 + 8))(v37, v38);
      }

      [v22 setFreeCancellationDate_];

      if (*(a1 + v21[7] + 8))
      {
        sub_1ADB05EA0();
        v41 = v58;
        v42 = (*(v58 + 48))(v32, 1, v33);
        v43 = v50;
        if (v42 == 1)
        {
          (*(v16 + 8))(v60, v54);

          sub_1AD499B58(a1, type metadata accessor for RemoteNetworkPaymentCodable.Types.DeferredPaymentRequest);
          sub_1AD3D0E3C(v32, &qword_1EB59B278);
          return v22;
        }

        v44 = v56;
        (*(v41 + 32))(v56, v32, v33);
        v45 = sub_1ADB05EB0();
        [v22 setFreeCancellationDateTimeZone_];

        (*(v41 + 8))(v44, v33);
        (*(v16 + 8))(v60, v54);
      }

      else
      {
        (*(v16 + 8))(v60, v54);
      }
    }

    else
    {

      (*(v16 + 8))(v20, v15);
    }

    sub_1AD499B58(a1, type metadata accessor for RemoteNetworkPaymentCodable.Types.DeferredPaymentRequest);
    return v22;
  }

  sub_1AD499B58(a1, type metadata accessor for RemoteNetworkPaymentCodable.Types.DeferredPaymentRequest);
  sub_1AD3D0E3C(v14, &qword_1EB59AE30);
  return 0;
}

id sub_1AD491598(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B278);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v42 = v26 - v3;
  v4 = sub_1ADB05E70();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B280);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v26 - v9;
  v40 = sub_1ADB05B70();
  v11 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v14 = *a1;
  v50 = *(a1 + 8);
  v33 = *(a1 + 16);
  v34 = v14;
  v49 = *(a1 + 24);
  v29 = *(a1 + 32);
  v48 = *(a1 + 40);
  v47 = *(a1 + 56);
  v39 = *MEMORY[0x1E6969868];
  v38 = *(v5 + 104);
  v35 = v4;
  v38(v7);
  sub_1ADB05E80();
  v15 = *(v5 + 8);
  v36 = v5 + 8;
  v37 = v15;
  v15(v7, v4);
  v30 = sub_1ADB05E90();
  v16 = *(v30 - 8);
  v31 = *(v16 + 56);
  v32 = v16 + 56;
  v31(v10, 0, 1, v30);
  v27 = sub_1ADB05EE0();
  v17 = *(v27 - 8);
  v18 = *(v17 + 56);
  v28 = v17 + 56;
  v18(v42, 1, 1, v27);
  sub_1ADB05B60();
  v34 = sub_1ADB05B00();
  v19 = *(v11 + 8);
  v20 = v40;
  v19(v13, v40);
  v33 = *(a1 + 64);
  v46 = *(a1 + 72);
  v29 = *(a1 + 80);
  v45 = *(a1 + 88);
  v26[2] = *(a1 + 96);
  v44 = *(a1 + 104);
  v26[1] = *(a1 + 112);
  v43 = *(a1 + 120);
  v21 = v35;
  (v38)(v7, v39, v35);
  sub_1ADB05E80();
  v37(v7, v21);
  v31(v10, 0, 1, v30);
  v18(v42, 1, 1, v27);
  sub_1ADB05B60();
  v22 = sub_1ADB05B00();
  v19(v13, v20);
  v23 = v34;
  v24 = [v41 initWithStartDateComponents:v34 endDateComponents:v22];

  return v24;
}

id sub_1AD491B38(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5989D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v39 - v3;
  v5 = sub_1ADB05C30();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v39 - v10;
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a1[1])
  {
    v13 = objc_allocWithZone(MEMORY[0x1E695CF50]);

    v14 = sub_1ADB06370();

    v15 = [v13 initWithStringValue_];

    [v12 setPhoneNumber_];
  }

  if (a1[3])
  {

    v16 = sub_1ADB06370();
  }

  else
  {
    v16 = 0;
  }

  [v12 setEmailAddress_];

  v17 = a1[5];
  v39[0] = v12;
  if (v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = a1[7] != 0;
  }

  v19 = a1[9];
  if (v19 || a1[11] != 0 || v18)
  {
    sub_1ADB05C20();

    sub_1ADB05BB0();

    sub_1ADB05BD0();
    if (v19 || a1[11])
    {
      sub_1ADB05C20();

      sub_1ADB05BB0();

      sub_1ADB05BD0();
      (*(v6 + 16))(v4, v9, v5);
      (*(v6 + 56))(v4, 0, 1, v5);
      sub_1ADB05C00();
      (*(v6 + 8))(v9, v5);
    }

    v20 = sub_1ADB05BE0();
    [v39[0] setName_];

    (*(v6 + 8))(v11, v5);
  }

  v21 = a1[12];
  if (v21 || a1[14] || a1[16] || a1[18] || a1[20] || a1[22] || a1[24] || a1[26])
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E695CF30]) init];
    if (v21)
    {
      v23 = *(v21 + 16);
      if (v23)
      {

        v24 = 0;
        v25 = (v21 + 40);
        do
        {
          v26 = *(v25 - 1);
          v27 = *v25;

          v28._countAndFlagsBits = v26;
          v28._object = v27;
          CNMutablePostalAddress.setStreetLine(_:at:)(v28, v24);

          v25 += 2;
          ++v24;
        }

        while (v23 != v24);
      }
    }

    if (a1[14])
    {

      v29 = sub_1ADB06370();

      [v22 setSubLocality_];
    }

    v30 = v39[0];
    if (a1[16])
    {

      v31 = sub_1ADB06370();

      [v22 setCity_];
    }

    if (a1[20])
    {

      v32 = sub_1ADB06370();

      [v22 setSubAdministrativeArea_];
    }

    if (a1[22])
    {

      v33 = sub_1ADB06370();

      [v22 setState_];
    }

    if (a1[18])
    {

      v34 = sub_1ADB06370();

      [v22 setPostalCode_];
    }

    if (a1[24])
    {

      v35 = sub_1ADB06370();

      [v22 setCountry_];
    }

    if (a1[26])
    {

      sub_1AD40D6CC(a1);
      v36 = sub_1ADB06370();

      [v22 setISOCountryCode_];
    }

    else
    {
      sub_1AD40D6CC(a1);
    }

    [v22 copy];
    sub_1ADB06AC0();
    swift_unknownObjectRelease();
    sub_1AD3D3200(0, &qword_1EB59B298);
    if (swift_dynamicCast())
    {
      v37 = v39[1];
    }

    else
    {
      v37 = 0;
    }

    [v30 setPostalAddress_];
  }

  else
  {
    sub_1AD40D6CC(a1);
    return v39[0];
  }

  return v30;
}

id sub_1AD4921EC(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v2 setInstallmentItemType_];
  if (a1[2])
  {
    v3 = objc_allocWithZone(MEMORY[0x1E696AB90]);

    v4 = sub_1ADB06370();

    v5 = [v3 initWithString_];

    [v2 setAmount_];
  }

  if (a1[4])
  {

    v6 = sub_1ADB06370();
  }

  else
  {
    v6 = 0;
  }

  [v2 setCurrencyCode_];

  if (a1[6])
  {

    v7 = sub_1ADB06370();
  }

  else
  {
    v7 = 0;
  }

  [v2 setProgramIdentifier_];

  if (a1[8])
  {
    v8 = objc_allocWithZone(MEMORY[0x1E696AB90]);

    v9 = sub_1ADB06370();

    v10 = [v8 initWithString_];

    [v2 setApr_];
  }

  if (a1[10])
  {

    v11 = sub_1ADB06370();
    sub_1AD40E8E0(a1);
  }

  else
  {
    sub_1AD40E8E0(a1);
    v11 = 0;
  }

  [v2 setProgramTerms_];

  return v2;
}

void *sub_1AD492430(unsigned __int8 *a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = sub_1ADB06410();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = v6;
  v8 = *a1;
  if (v8 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 & 1;
  }

  [v6 setFeature_];
  if (*(a1 + 2))
  {

    v10 = sub_1ADB05D30();
    v12 = v11;

    v13 = 0;
    if (v12 >> 60 != 15)
    {
      v13 = sub_1ADB05D50();
      sub_1AD422FB0(v10, v12);
    }

    [v7 setMerchandisingImageData_];
  }

  if (*(a1 + 4))
  {
    v14 = objc_allocWithZone(MEMORY[0x1E696AB90]);

    v15 = sub_1ADB06370();

    v16 = [v14 initWithString_];

    [v7 setOpenToBuyThresholdAmount_];
  }

  if (*(a1 + 6))
  {
    v17 = objc_allocWithZone(MEMORY[0x1E696AB90]);

    v18 = sub_1ADB06370();

    v19 = [v17 initWithString_];

    [v7 setBindingTotalAmount_];
  }

  if (*(a1 + 8))
  {

    v20 = sub_1ADB06370();
  }

  else
  {
    v20 = 0;
  }

  [v7 setCurrencyCode_];

  [v7 setInStorePurchase_];
  if (*(a1 + 11))
  {

    v21 = sub_1ADB06370();
  }

  else
  {
    v21 = 0;
  }

  [v7 setInstallmentMerchantIdentifier_];

  if (*(a1 + 13))
  {

    v22 = sub_1ADB06370();
  }

  else
  {
    v22 = 0;
  }

  [v7 setReferrerIdentifier_];

  v23 = *(a1 + 14);
  if (v23)
  {
    v24 = *(v23 + 16);
    if (v24)
    {
      v43 = v3;
      v44 = v2;
      v45 = MEMORY[0x1E69E7CC0];
      sub_1ADB06CA0();
      sub_1AD3D3200(0, &qword_1EB59B2B8);
      v25 = v23 + 32;
      do
      {
        v26 = *(v25 + 16);
        v47[0] = *v25;
        v47[1] = v26;
        v27 = *(v25 + 32);
        v28 = *(v25 + 48);
        v29 = *(v25 + 64);
        v48 = *(v25 + 80);
        v47[3] = v28;
        v47[4] = v29;
        v47[2] = v27;
        sub_1AD40E8A8(v47, v46);
        sub_1AD4921EC(v47);
        sub_1ADB06C80();
        sub_1ADB06CB0();
        sub_1ADB06CC0();
        sub_1ADB06C90();
        v25 += 88;
        --v24;
      }

      while (v24);
      v2 = v44;
      v3 = v43;
    }

    sub_1AD3D3200(0, &qword_1EB59B2B8);
    v30 = sub_1ADB06600();
  }

  else
  {
    v30 = 0;
  }

  [v7 setInstallmentItems_];

  [v7 setRetailChannel_];
  if (*(a1 + 16))
  {

    sub_1AD40EB70(a1);
    sub_1ADB063F0();
    v31 = sub_1ADB063C0();
    v33 = v32;

    (*(v3 + 8))(v5, v2);
    if (v33 >> 60 != 15)
    {
      v34 = objc_opt_self();
      v35 = sub_1ADB05D50();
      v46[0] = 0;
      v36 = [v34 JSONObjectWithData:v35 options:0 error:v46];

      if (v36)
      {
        v37 = v46[0];
        sub_1ADB06AC0();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B2B0);
        if (swift_dynamicCast())
        {
          v38 = sub_1ADB06260();

LABEL_36:
          [v7 setApplicationMetadata_];

          sub_1AD422FB0(v31, v33);
          return v7;
        }
      }

      else
      {
        v39 = v46[0];
        v40 = sub_1ADB05CC0();

        swift_willThrow();
      }

      v38 = 0;
      goto LABEL_36;
    }
  }

  else
  {
    sub_1AD40EB70(a1);
  }

  return v7;
}

id sub_1AD492AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteNetworkPaymentCodable.Types.LineItem(0);
  v70 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v65 - v8;
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = type metadata accessor for RemoteNetworkPaymentCodable.Types.PaymentRequest(0);
  v12 = v10;
  v13 = sub_1ADB06370();
  [v12 setCountryCode_];

  v14 = sub_1ADB06370();
  [v12 setCurrencyCode_];

  sub_1AD4992A0(*(a1 + v11[16]));
  type metadata accessor for PKPaymentNetwork(0);
  v15 = sub_1ADB06600();

  [v12 setSupportedNetworks_];

  v16 = sub_1AD499488(*(a1 + v11[15]));
  v68 = v12;
  [v12 setMerchantCapabilities_];
  v71 = v11;
  if (*(a1 + v11[5]))
  {
    v17 = *(a1 + v11[5]);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1AD499CCC(a1, v9, type metadata accessor for RemoteNetworkPaymentCodable.Types.LineItem);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1AD425408(0, v17[2] + 1, 1, v17);
  }

  v19 = v17[2];
  v18 = v17[3];
  v20 = v19 + 1;
  v69 = a1;
  if (v19 >= v18 >> 1)
  {
    v17 = sub_1AD425408(v18 > 1, v19 + 1, 1, v17);
  }

  v17[2] = v20;
  v21 = (LOBYTE(v70[2].data) + 32) & ~LOBYTE(v70[2].data);
  v67 = v17;
  v22 = v17 + v21;
  info = v70[2].info;
  sub_1AD499C64(v9, v22 + info * v19, type metadata accessor for RemoteNetworkPaymentCodable.Types.LineItem);
  *&v103[0] = MEMORY[0x1E69E7CC0];
  sub_1ADB06CA0();
  do
  {
    sub_1AD499CCC(v22, v7, type metadata accessor for RemoteNetworkPaymentCodable.Types.LineItem);
    sub_1AD4994C4(v7);
    sub_1AD499B58(v7, type metadata accessor for RemoteNetworkPaymentCodable.Types.LineItem);
    sub_1ADB06C80();
    sub_1ADB06CB0();
    sub_1ADB06CC0();
    sub_1ADB06C90();
    v22 += info;
    --v20;
  }

  while (v20);
  sub_1AD3D3200(0, &qword_1EB59A3B0);
  v24 = sub_1ADB06600();

  v25 = v68;
  [v68 setPaymentSummaryItems_];

  v26 = v71;
  v27 = v69;
  if (*(v69 + SHIDWORD(v71[2].length) + 8))
  {
    v28 = sub_1ADB05D30();
    v30 = 0;
    if (v29 >> 60 != 15)
    {
      v31 = v28;
      v32 = v29;
      v30 = sub_1ADB05D50();
      sub_1AD422FB0(v31, v32);
    }

    [v25 setApplicationData_];
  }

  if (*(v27 + SLODWORD(v26[3].isa)))
  {

    sub_1AD499108(v33);

    v34 = sub_1ADB06780();

    [v25 setSupportedCountries_];
  }

  [v25 setRequestType_];
  [v25 setConfirmationStyle_];
  v35 = *(a2 + 184);
  v85 = *(a2 + 168);
  v86 = v35;
  v87 = *(a2 + 200);
  v88 = *(a2 + 216);
  v36 = *(a2 + 120);
  v81 = *(a2 + 104);
  v82 = v36;
  v37 = *(a2 + 152);
  v83 = *(a2 + 136);
  v84 = v37;
  v38 = *(a2 + 56);
  v77 = *(a2 + 40);
  v78 = v38;
  v39 = *(a2 + 88);
  v79 = *(a2 + 72);
  v80 = v39;
  v40 = *(a2 + 24);
  v75 = *(a2 + 8);
  v76 = v40;
  v41 = *(a2 + 184);
  v99 = *(a2 + 168);
  v100 = v41;
  v101 = *(a2 + 200);
  v102 = *(a2 + 216);
  v42 = *(a2 + 120);
  v95 = *(a2 + 104);
  v96 = v42;
  v43 = *(a2 + 152);
  v97 = *(a2 + 136);
  v98 = v43;
  v44 = *(a2 + 56);
  v91 = *(a2 + 40);
  v92 = v44;
  v45 = *(a2 + 88);
  v93 = *(a2 + 72);
  v94 = v45;
  v46 = *(a2 + 24);
  v89 = *(a2 + 8);
  v90 = v46;
  if (sub_1AD40D860(&v89) != 1)
  {
    v103[10] = v99;
    v103[11] = v100;
    v103[12] = v101;
    v104 = v102;
    v103[6] = v95;
    v103[7] = v96;
    v103[8] = v97;
    v103[9] = v98;
    v103[2] = v91;
    v103[3] = v92;
    v103[4] = v93;
    v103[5] = v94;
    v103[0] = v89;
    v103[1] = v90;
    sub_1AD3D3200(0, &qword_1EB59B288);
    v73[10] = v85;
    v73[11] = v86;
    v73[12] = v87;
    v74 = v88;
    v73[6] = v81;
    v73[7] = v82;
    v73[8] = v83;
    v73[9] = v84;
    v73[2] = v77;
    v73[3] = v78;
    v73[4] = v79;
    v73[5] = v80;
    v73[0] = v75;
    v73[1] = v76;
    sub_1AD3D0E9C(&v75, v72, &qword_1EB5990A8);
    sub_1AD40ED74(v73, v72);
    v47 = sub_1AD491B38(v103);
    [v25 setShippingContact_];

    v48 = sub_1AD491B38(v103);
    [v25 setBillingContact_];
  }

  v49 = *a2;
  if (*a2)
  {

    sub_1AD40EF7C(a2);
    v50 = *(v49 + 16);
    if (v50)
    {
      *&v73[0] = MEMORY[0x1E69E7CC0];
      sub_1AD4506E8(0, v50, 0);
      v51 = *&v73[0];
      v71 = @"post";
      v70 = @"phone";
      v52 = 32;
      do
      {
        v53 = *(v49 + v52);
        v54 = v71;
        if (v53 == 3)
        {
          v54 = v70;
        }

        if (v53 == 2)
        {
          v54 = @"phoneticName";
        }

        if (*(v49 + v52))
        {
          v55 = @"name";
        }

        else
        {
          v55 = @"email";
        }

        if (*(v49 + v52) <= 1u)
        {
          v56 = v55;
        }

        else
        {
          v56 = v54;
        }

        v57 = v56;
        *&v73[0] = v51;
        v59 = *(v51 + 16);
        v58 = *(v51 + 24);
        if (v59 >= v58 >> 1)
        {
          v66 = v57;
          sub_1AD4506E8((v58 > 1), v59 + 1, 1);
          v57 = v66;
          v51 = *&v73[0];
        }

        *(v51 + 16) = v59 + 1;
        *(v51 + 8 * v59 + 32) = v57;
        ++v52;
        --v50;
      }

      while (v50);

      v25 = v68;
      v27 = v69;
      v60 = v71;
    }

    else
    {

      v60 = @"post";
      v51 = MEMORY[0x1E69E7CC0];
    }

    v61 = sub_1AD4991A0(v51);

    *&v73[0] = v61;

    if (sub_1AD50C790(v60, v61))
    {
    }

    type metadata accessor for PKContactField(0);
    sub_1AD499BB8();
    v62 = sub_1ADB06780();

    [v25 setRequiredBillingContactFields_];

    v63 = sub_1ADB06780();

    [v25 setRequiredShippingContactFields_];
  }

  else
  {
    sub_1AD40EF7C(a2);
  }

  sub_1AD499B58(v27, type metadata accessor for RemoteNetworkPaymentCodable.Types.PaymentRequest);
  return v25;
}

id sub_1AD4933A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598A90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v173 = &v154 - v3;
  v4 = type metadata accessor for RemoteNetworkPaymentCodable.Types.DeferredPaymentRequest(0);
  v171 = *(v4 - 8);
  v172 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v160 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v161 = &v154 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598A88);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v170 = &v154 - v9;
  v10 = type metadata accessor for RemoteNetworkPaymentCodable.Types.AutomaticReloadPaymentRequest(0);
  v165 = *(v10 - 8);
  v166 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v158 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v159 = &v154 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598A80);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v164 = &v154 - v15;
  v16 = type metadata accessor for RemoteNetworkPaymentCodable.Types.RecurringPaymentRequest(0);
  v162 = *(v16 - 8);
  v163 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v156 = &v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v157 = &v154 - v19;
  v20 = type metadata accessor for RemoteNetworkPaymentCodable.Types.LineItem(0);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v154 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v154 - v25;
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28 = type metadata accessor for RemoteNetworkPaymentCodable.Types.PaymentRequest(0);
  v29 = sub_1AD499488(*(a1 + v28[15]));
  v30 = v27;
  [v30 setMerchantCapabilities_];
  sub_1AD4992A0(*(a1 + v28[16]));
  type metadata accessor for PKPaymentNetwork(0);
  v31 = sub_1ADB06600();

  [v30 setSupportedNetworks_];

  v32 = sub_1ADB06370();
  [v30 setCountryCode_];

  v33 = sub_1ADB06370();
  [v30 setCurrencyCode_];

  [v30 setSupportsCouponCode_];
  if (*(a1 + v28[27] + 8))
  {
    v34 = sub_1ADB06370();
  }

  else
  {
    v34 = 0;
  }

  [v30 setCouponCode_];

  if (*(a1 + v28[5]))
  {
    v35 = *(a1 + v28[5]);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  sub_1AD499CCC(a1, v26, type metadata accessor for RemoteNetworkPaymentCodable.Types.LineItem);
  v36 = v35;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v174 = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = sub_1AD425408(0, v35[2] + 1, 1, v35);
  }

  v39 = v36[2];
  v38 = v36[3];
  v40 = v39 + 1;
  if (v39 >= v38 >> 1)
  {
    v36 = sub_1AD425408(v38 > 1, v39 + 1, 1, v36);
  }

  v36[2] = v40;
  v41 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v167 = v36;
  v42 = v36 + v41;
  v43 = *(v21 + 72);
  sub_1AD499C64(v26, v42 + v43 * v39, type metadata accessor for RemoteNetworkPaymentCodable.Types.LineItem);
  *&v274[0] = MEMORY[0x1E69E7CC0];
  sub_1ADB06CA0();
  do
  {
    sub_1AD499CCC(v42, v24, type metadata accessor for RemoteNetworkPaymentCodable.Types.LineItem);
    sub_1AD4994C4(v24);
    sub_1AD499B58(v24, type metadata accessor for RemoteNetworkPaymentCodable.Types.LineItem);
    sub_1ADB06C80();
    sub_1ADB06CB0();
    sub_1ADB06CC0();
    sub_1ADB06C90();
    v42 += v43;
    --v40;
  }

  while (v40);
  sub_1AD3D3200(0, &qword_1EB59A3B0);
  v44 = sub_1ADB06600();

  [v30 setPaymentSummaryItems_];

  v45 = v174;
  if (*(a1 + *(v174 + 32)))
  {
    sub_1AD3D3200(0, &qword_1EB59A3D8);

    v47 = sub_1AD490098(v46);
    [v30 setAvailableShippingMethods_];
  }

  [v30 setShippingType_];
  if (*(a1 + v45[23] + 8))
  {
    v48 = sub_1ADB05D30();
    v50 = 0;
    if (v49 >> 60 != 15)
    {
      v51 = v48;
      v52 = v49;
      v50 = sub_1ADB05D50();
      sub_1AD422FB0(v51, v52);
    }

    [v30 setApplicationData_];
  }

  if (*(a1 + v45[24]))
  {

    sub_1AD499108(v53);

    v54 = sub_1ADB06780();

    [v30 setSupportedCountries_];
  }

  v55 = *(a1 + v45[21]);
  v168 = v30;
  v169 = a1;
  if (v55)
  {
    v56 = *(v55 + 16);
    v57 = MEMORY[0x1E69E7CC0];
    if (v56)
    {
      *&v274[0] = MEMORY[0x1E69E7CC0];
      sub_1AD4506E8(0, v56, 0);
      v57 = *&v274[0];
      v58 = (v55 + 32);
      v175 = @"post";
      do
      {
        v60 = *v58++;
        v59 = v60;
        v61 = v175;
        if (v60 == 3)
        {
          v61 = @"phone";
        }

        if (v59 == 2)
        {
          v61 = @"phoneticName";
        }

        if (v59)
        {
          v62 = @"name";
        }

        else
        {
          v62 = @"email";
        }

        if (v59 <= 1)
        {
          v63 = v62;
        }

        else
        {
          v63 = v61;
        }

        v64 = v63;
        *&v274[0] = v57;
        v66 = *(v57 + 16);
        v65 = *(v57 + 24);
        if (v66 >= v65 >> 1)
        {
          v155 = v64;
          sub_1AD4506E8((v65 > 1), v66 + 1, 1);
          v64 = v155;
          v57 = *&v274[0];
        }

        *(v57 + 16) = v66 + 1;
        *(v57 + 8 * v66 + 32) = v64;
        --v56;
      }

      while (v56);
      v30 = v168;
      a1 = v169;
      v45 = v174;
    }

    sub_1AD4991A0(v57);

    type metadata accessor for PKContactField(0);
    sub_1AD499BB8();
    v67 = sub_1ADB06780();

    [v30 setRequiredShippingContactFields_];
  }

  v68 = *(a1 + v45[19]);
  if (v68)
  {
    v69 = *(v68 + 16);
    v70 = MEMORY[0x1E69E7CC0];
    if (v69)
    {
      *&v274[0] = MEMORY[0x1E69E7CC0];
      sub_1AD4506E8(0, v69, 0);
      v70 = *&v274[0];
      v71 = (v68 + 32);
      v175 = @"post";
      do
      {
        v73 = *v71++;
        v72 = v73;
        v74 = v175;
        if (v73 == 3)
        {
          v74 = @"phone";
        }

        if (v72 == 2)
        {
          v74 = @"phoneticName";
        }

        if (v72)
        {
          v75 = @"name";
        }

        else
        {
          v75 = @"email";
        }

        if (v72 <= 1)
        {
          v76 = v75;
        }

        else
        {
          v76 = v74;
        }

        v77 = v76;
        *&v274[0] = v70;
        v79 = *(v70 + 16);
        v78 = *(v70 + 24);
        if (v79 >= v78 >> 1)
        {
          v155 = v77;
          sub_1AD4506E8((v78 > 1), v79 + 1, 1);
          v77 = v155;
          v70 = *&v274[0];
        }

        *(v70 + 16) = v79 + 1;
        *(v70 + 8 * v79 + 32) = v77;
        --v69;
      }

      while (v69);
      v30 = v168;
      a1 = v169;
      v45 = v174;
    }

    sub_1AD4991A0(v70);

    type metadata accessor for PKContactField(0);
    sub_1AD499BB8();
    v80 = sub_1ADB06780();

    [v30 setRequiredBillingContactFields_];
  }

  v81 = a1 + v45[22];
  v82 = *(v81 + 176);
  v83 = *(v81 + 144);
  v242 = *(v81 + 160);
  v243 = v82;
  v84 = *(v81 + 176);
  v244 = *(v81 + 192);
  v85 = *(v81 + 112);
  v86 = *(v81 + 80);
  v238 = *(v81 + 96);
  v239 = v85;
  v87 = *(v81 + 112);
  v88 = *(v81 + 144);
  v240 = *(v81 + 128);
  v241 = v88;
  v89 = *(v81 + 48);
  v90 = *(v81 + 16);
  v234 = *(v81 + 32);
  v235 = v89;
  v91 = *(v81 + 48);
  v92 = *(v81 + 80);
  v236 = *(v81 + 64);
  v237 = v92;
  v93 = *(v81 + 16);
  v232 = *v81;
  v233 = v93;
  v256 = v242;
  v257 = v84;
  v258 = *(v81 + 192);
  v252 = v238;
  v253 = v87;
  v254 = v240;
  v255 = v83;
  v248 = v234;
  v249 = v91;
  v250 = v236;
  v251 = v86;
  v245 = *(v81 + 208);
  v259 = *(v81 + 208);
  v246 = v232;
  v247 = v90;
  if (sub_1AD40D860(&v246) != 1)
  {
    v274[10] = v256;
    v274[11] = v257;
    v274[12] = v258;
    v275 = v259;
    v274[6] = v252;
    v274[7] = v253;
    v274[8] = v254;
    v274[9] = v255;
    v274[2] = v248;
    v274[3] = v249;
    v274[4] = v250;
    v274[5] = v251;
    v274[0] = v246;
    v274[1] = v247;
    sub_1AD3D3200(0, &qword_1EB59B288);
    v270 = v242;
    v271 = v243;
    v272 = v244;
    v273 = v245;
    v266 = v238;
    v267 = v239;
    v268 = v240;
    v269 = v241;
    v262 = v234;
    v263 = v235;
    v264 = v236;
    v265 = v237;
    v260 = v232;
    v261 = v233;
    sub_1AD40ED74(&v260, &v218);
    v94 = sub_1AD491B38(v274);
    [v30 setShippingContact_];
  }

  v95 = a1 + v45[20];
  v96 = *(v95 + 176);
  v97 = *(v95 + 144);
  v214 = *(v95 + 160);
  v215 = v96;
  v98 = *(v95 + 176);
  v216 = *(v95 + 192);
  v99 = *(v95 + 112);
  v100 = *(v95 + 80);
  v210 = *(v95 + 96);
  v211 = v99;
  v101 = *(v95 + 112);
  v102 = *(v95 + 144);
  v212 = *(v95 + 128);
  v213 = v102;
  v103 = *(v95 + 48);
  v104 = *(v95 + 16);
  v206 = *(v95 + 32);
  v207 = v103;
  v105 = *(v95 + 48);
  v106 = *(v95 + 80);
  v208 = *(v95 + 64);
  v209 = v106;
  v107 = *(v95 + 16);
  v204 = *v95;
  v205 = v107;
  v228 = v214;
  v229 = v98;
  v230 = *(v95 + 192);
  v224 = v210;
  v225 = v101;
  v226 = v212;
  v227 = v97;
  v220 = v206;
  v221 = v105;
  v222 = v208;
  v223 = v100;
  v217 = *(v95 + 208);
  v231 = *(v95 + 208);
  v218 = v204;
  v219 = v104;
  v108 = sub_1AD40D860(&v218);
  v109 = v164;
  if (v108 != 1)
  {
    v270 = v228;
    v271 = v229;
    v272 = v230;
    v273 = v231;
    v266 = v224;
    v267 = v225;
    v268 = v226;
    v269 = v227;
    v262 = v220;
    v263 = v221;
    v264 = v222;
    v265 = v223;
    v260 = v218;
    v261 = v219;
    sub_1AD3D3200(0, &qword_1EB59B288);
    v191[3] = v214;
    v191[4] = v215;
    v191[5] = v216;
    v192 = v217;
    v190 = v210;
    v191[0] = v211;
    v191[1] = v212;
    v191[2] = v213;
    v186 = v206;
    v187 = v207;
    v188 = v208;
    v189 = v209;
    v184 = v204;
    v185 = v205;
    sub_1AD40ED74(&v184, &v176);
    v110 = sub_1AD491B38(&v260);
    [v30 setBillingContact_];
  }

  if (*(a1 + v45[28]) == 2)
  {
    v111 = 2;
  }

  else
  {
    v111 = 1;
  }

  [v30 setShippingContactEditingMode_];
  [v30 setApplePayLaterAvailability_];
  v112 = (a1 + v45[18]);
  v113 = v112[1];
  if (v113)
  {
    v114 = *v112;

    v115 = sub_1AD49493C(v114, v113);
    if ((v115 & 0x10000) == 0)
    {
      [v30 setMerchantCategoryCode_];
    }
  }

  v116 = (a1 + v45[25]);
  v117 = v116[5];
  v118 = v116[7];
  v202 = v116[6];
  v203[0] = v118;
  *(v203 + 9) = *(v116 + 121);
  v119 = v116[1];
  v120 = v116[3];
  v198 = v116[2];
  v199 = v120;
  v121 = v116[3];
  v122 = v116[5];
  v200 = v116[4];
  v201 = v122;
  v123 = v116[1];
  v196 = *v116;
  v197 = v123;
  v124 = v116[7];
  v182 = v202;
  v183[0] = v124;
  *(v183 + 9) = *(v116 + 121);
  v178 = v198;
  v179 = v121;
  v180 = v200;
  v181 = v117;
  v176 = v196;
  v177 = v119;
  if (sub_1AD40F26C(&v176) != 1)
  {
    v190 = v182;
    v191[0] = v183[0];
    *(v191 + 9) = *(v183 + 9);
    v186 = v178;
    v187 = v179;
    v188 = v180;
    v189 = v181;
    v184 = v176;
    v185 = v177;
    sub_1AD3D3200(0, &qword_1EB59B2A8);
    v194[6] = v202;
    v195[0] = v203[0];
    *(v195 + 9) = *(v203 + 9);
    v194[2] = v198;
    v194[3] = v199;
    v194[4] = v200;
    v194[5] = v201;
    v194[0] = v196;
    v194[1] = v197;
    sub_1AD40EB38(v194, &v193);
    v125 = sub_1AD492430(&v184);
    [v30 setInstallmentConfiguration_];
  }

  sub_1AD3D0E9C(a1 + v45[9], v109, &qword_1EB598A80);
  if ((*(v162 + 48))(v109, 1, v163) == 1)
  {
    sub_1AD3D0E3C(v109, &qword_1EB598A80);
  }

  else
  {
    v126 = v109;
    v127 = v157;
    sub_1AD499C64(v126, v157, type metadata accessor for RemoteNetworkPaymentCodable.Types.RecurringPaymentRequest);
    sub_1AD3D3200(0, &qword_1EB59A3C8);
    v128 = v156;
    sub_1AD499CCC(v127, v156, type metadata accessor for RemoteNetworkPaymentCodable.Types.RecurringPaymentRequest);
    v129 = sub_1AD490434(v128);
    [v30 setRecurringPaymentRequest_];

    sub_1AD499B58(v127, type metadata accessor for RemoteNetworkPaymentCodable.Types.RecurringPaymentRequest);
  }

  v130 = v170;
  sub_1AD3D0E9C(a1 + v45[10], v170, &qword_1EB598A88);
  if ((*(v165 + 48))(v130, 1, v166) == 1)
  {
    sub_1AD3D0E3C(v130, &qword_1EB598A88);
  }

  else
  {
    v131 = v159;
    sub_1AD499C64(v130, v159, type metadata accessor for RemoteNetworkPaymentCodable.Types.AutomaticReloadPaymentRequest);
    sub_1AD3D3200(0, &qword_1EB59A3C0);
    v132 = v158;
    sub_1AD499CCC(v131, v158, type metadata accessor for RemoteNetworkPaymentCodable.Types.AutomaticReloadPaymentRequest);
    v133 = sub_1AD490A5C(v132);
    [v30 setAutomaticReloadPaymentRequest_];

    sub_1AD499B58(v131, type metadata accessor for RemoteNetworkPaymentCodable.Types.AutomaticReloadPaymentRequest);
  }

  v134 = v173;
  sub_1AD3D0E9C(a1 + v45[12], v173, &qword_1EB598A90);
  if ((*(v171 + 48))(v134, 1, v172) == 1)
  {
    sub_1AD3D0E3C(v134, &qword_1EB598A90);
  }

  else
  {
    v135 = v161;
    sub_1AD499C64(v134, v161, type metadata accessor for RemoteNetworkPaymentCodable.Types.DeferredPaymentRequest);
    sub_1AD3D3200(0, &qword_1EB59A3B8);
    v136 = v160;
    sub_1AD499CCC(v135, v160, type metadata accessor for RemoteNetworkPaymentCodable.Types.DeferredPaymentRequest);
    v137 = sub_1AD490E9C(v136);
    [v30 setDeferredPaymentRequest_];

    sub_1AD499B58(v135, type metadata accessor for RemoteNetworkPaymentCodable.Types.DeferredPaymentRequest);
  }

  v138 = *(a1 + v45[11]);
  if (v138)
  {
    v139 = *(v138 + 16);
    if (v139)
    {
      *&v194[0] = MEMORY[0x1E69E7CC0];
      sub_1ADB06CA0();
      v140 = v138 + 104;
      do
      {
        v175 = v139;
        v150 = *(v140 - 24);
        v151 = *(v140 - 16);
        v170 = *(v140 - 8);
        v171 = v150;

        v174 = sub_1ADB06370();
        v173 = sub_1ADB06370();
        v172 = sub_1ADB06370();
        if (v151)
        {

          v171 = sub_1ADB06370();
        }

        else
        {
          v171 = 0;
        }

        v140 += 80;
        v141 = objc_allocWithZone(PKPaymentTokenContext);
        v142 = objc_allocWithZone(MEMORY[0x1E696AB90]);
        v143 = sub_1ADB06370();
        v144 = [v142 initWithString_];

        v145 = v141;
        v147 = v173;
        v146 = v174;
        v149 = v171;
        v148 = v172;
        [v145 initWithMerchantIdentifier:v174 externalIdentifier:v173 merchantName:v172 merchantDomain:v171 amount:v144];

        sub_1ADB06C80();
        sub_1ADB06CB0();
        sub_1ADB06CC0();
        sub_1ADB06C90();
        v139 = (v175 - 1);
      }

      while (v175 != 1);

      v30 = v168;
      a1 = v169;
    }

    else
    {
    }

    sub_1AD3D3200(0, &qword_1EB59A3D0);
    v152 = sub_1ADB06600();

    [v30 setMultiTokenContexts_];
  }

  else
  {
  }

  sub_1AD499B58(a1, type metadata accessor for RemoteNetworkPaymentCodable.Types.PaymentRequest);
  return v30;
}

uint64_t sub_1AD49493C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
    return v25 & 0xFFFEFFFF | ((v24 & 1) << 16);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_1AD498B1C(result, a2, 10);

    v24 = HIWORD(v6) & 1;
LABEL_63:
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v6;
    }

    return v25 & 0xFFFEFFFF | ((v24 & 1) << 16);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1ADB06C70();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LOWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = (10 * v6);
              if (v15 != 10 * v6)
              {
                goto LABEL_61;
              }

              v6 = v15 + v14;
              if ((v15 + v14) != v6)
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = (10 * v6);
            if (v20 != 10 * v6)
            {
              goto LABEL_61;
            }

            v6 = v20 + v19;
            if ((v20 + v19) != v6)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LOWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LOWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = (10 * v6);
            if (v9 != 10 * v6)
            {
              goto LABEL_61;
            }

            v6 = v9 - v8;
            if ((v9 - v8) != v6)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = (10 * v6);
          if (v23 != 10 * v6)
          {
            break;
          }

          v6 = v23 + v22;
          if ((v23 + v22) != v6)
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LOWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = (10 * v6);
          if (v12 != 10 * v6)
          {
            break;
          }

          v6 = v12 - v11;
          if ((v12 - v11) != v6)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = (10 * v6);
        if (v18 != 10 * v6)
        {
          break;
        }

        v6 = v18 + v17;
        if ((v18 + v17) != v6)
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

void *sub_1AD494C6C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB598778);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1AD494CE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1ADB07090();
  sub_1ADB06460();
  v8 = sub_1ADB070D0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1ADB06F50() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1AD49606C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1AD494E30(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1ADB063B0();
  sub_1ADB07090();
  sub_1ADB06460();
  v7 = sub_1ADB070D0();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_1ADB063B0();
      v13 = v12;
      if (v11 == sub_1ADB063B0() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_1ADB06F50();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_1AD4961EC(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_1AD494FDC(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1ADB07090();
  ProvisioningRequirement.RequirementType.rawValue.getter();
  sub_1ADB06460();

  v6 = sub_1ADB070D0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_112:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    sub_1AD4963D4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    result = 1;
    goto LABEL_115;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xE400000000000000;
    v11 = 845247336;
    switch(*(*(v5 + 48) + v8))
    {
      case 1:
        v10 = 0xE700000000000000;
        v11 = 0x656574616E616DLL;
        break;
      case 2:
        v11 = 0xD000000000000014;
        v10 = 0x80000001ADB9C240;
        break;
      case 3:
        v10 = 0xE800000000000000;
        v11 = 0x65646F6373736170;
        break;
      case 4:
        v11 = 0x6150676E6F727473;
        v12 = 1868788595;
        goto LABEL_16;
      case 5:
        v11 = 0x75536E6F69676572;
        v10 = 0xEF646574726F7070;
        break;
      case 6:
        v10 = 0xE500000000000000;
        v11 = 0x746C756461;
        break;
      case 7:
        v11 = 0x634164756F6C6369;
        v10 = 0xED0000746E756F63;
        break;
      case 8:
        v11 = 0x6E4974656C6C6177;
        v10 = 0xEF64656C6C617473;
        break;
      case 9:
        v11 = 0xD000000000000017;
        v10 = 0x80000001ADB9C2B0;
        break;
      case 0xA:
        v11 = 0xD000000000000012;
        v10 = 0x80000001ADB9C2D0;
        break;
      case 0xB:
        v11 = 0xD000000000000015;
        v10 = 0x80000001ADB9C2F0;
        break;
      case 0xC:
        v11 = 0xD000000000000011;
        v10 = 0x80000001ADB9C310;
        break;
      case 0xD:
        v11 = 0xD000000000000029;
        v10 = 0x80000001ADB9C330;
        break;
      case 0xE:
        v11 = 0xD000000000000015;
        v10 = 0x80000001ADB9C360;
        break;
      case 0xF:
        v11 = 0xD000000000000016;
        v10 = 0x80000001ADB9C380;
        break;
      case 0x10:
        v11 = 0xD000000000000012;
        v10 = 0x80000001ADB9C3A0;
        break;
      case 0x11:
        v11 = 0xD000000000000016;
        v10 = 0x80000001ADB9C3C0;
        break;
      case 0x12:
        v11 = 0xD000000000000013;
        v10 = 0x80000001ADB9C3E0;
        break;
      case 0x13:
        v11 = 0xD000000000000021;
        v10 = 0x80000001ADB9C400;
        break;
      case 0x14:
        v11 = 0xD000000000000022;
        v10 = 0x80000001ADB9C430;
        break;
      case 0x15:
        v11 = 0xD000000000000018;
        v10 = 0x80000001ADB9C460;
        break;
      case 0x16:
        v11 = 0xD000000000000016;
        v10 = 0x80000001ADB9C480;
        break;
      case 0x17:
        v10 = 0xE800000000000000;
        v11 = 0x7473657547746F6ELL;
        break;
      case 0x18:
        v11 = 0x6972616853746F6ELL;
        v12 = 1867343726;
LABEL_16:
        v10 = v12 | 0xEE00656400000000;
        break;
      case 0x19:
        v11 = 0x76416E6F6D656164;
        v10 = 0xEF656C62616C6961;
        break;
      case 0x1A:
        v11 = 0xD000000000000020;
        v10 = 0x80000001ADB9C4C0;
        break;
      case 0x1B:
        v11 = 0xD000000000000010;
        v10 = 0x80000001ADB9C4F0;
        break;
      case 0x1C:
        v11 = 0x5344496863756F74;
        v10 = 0xED0000726F736E65;
        break;
      case 0x1D:
        v11 = 0xD000000000000018;
        v10 = 0x80000001ADB9C510;
        break;
      case 0x1E:
        v11 = 0xD000000000000010;
        v10 = 0x80000001ADB9C530;
        break;
      case 0x1F:
        v11 = 0xD000000000000017;
        v10 = 0x80000001ADB9C550;
        break;
      case 0x20:
        v11 = 0xD000000000000015;
        v10 = 0x80000001ADB9C570;
        break;
      case 0x21:
        v11 = 0xD000000000000020;
        v10 = 0x80000001ADB9C590;
        break;
      case 0x22:
        v11 = 0xD000000000000016;
        v10 = 0x80000001ADB9C5C0;
        break;
      default:
        break;
    }

    v13 = 0xE400000000000000;
    v14 = 845247336;
    switch(a2)
    {
      case 1:
        v13 = 0xE700000000000000;
        if (v11 == 0x656574616E616DLL)
        {
          goto LABEL_106;
        }

        goto LABEL_107;
      case 2:
        v13 = 0x80000001ADB9C240;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 3:
        v13 = 0xE800000000000000;
        if (v11 != 0x65646F6373736170)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 4:
        v15 = 0x6150676E6F727473;
        v16 = 1868788595;
        goto LABEL_62;
      case 5:
        v19 = 0x75536E6F69676572;
        v20 = 0x6574726F7070;
        goto LABEL_89;
      case 6:
        v13 = 0xE500000000000000;
        if (v11 != 0x746C756461)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 7:
        v17 = 0x634164756F6C6369;
        v18 = 0x746E756F63;
        goto LABEL_102;
      case 8:
        v19 = 0x6E4974656C6C6177;
        v20 = 0x656C6C617473;
LABEL_89:
        v13 = v20 & 0xFFFFFFFFFFFFLL | 0xEF64000000000000;
        if (v11 != v19)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 9:
        v13 = 0x80000001ADB9C2B0;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 10:
        v13 = 0x80000001ADB9C2D0;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 11:
        v13 = 0x80000001ADB9C2F0;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 12:
        v13 = 0x80000001ADB9C310;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 13:
        v13 = 0x80000001ADB9C330;
        if (v11 != 0xD000000000000029)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 14:
        v13 = 0x80000001ADB9C360;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 15:
        v13 = 0x80000001ADB9C380;
        if (v11 != 0xD000000000000016)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 16:
        v13 = 0x80000001ADB9C3A0;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 17:
        v13 = 0x80000001ADB9C3C0;
        if (v11 != 0xD000000000000016)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 18:
        v13 = 0x80000001ADB9C3E0;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 19:
        v13 = 0x80000001ADB9C400;
        if (v11 != 0xD000000000000021)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 20:
        v13 = 0x80000001ADB9C430;
        if (v11 != 0xD000000000000022)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 21:
        v13 = 0x80000001ADB9C460;
        if (v11 != 0xD000000000000018)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 22:
        v13 = 0x80000001ADB9C480;
        if (v11 != 0xD000000000000016)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 23:
        v13 = 0xE800000000000000;
        if (v11 != 0x7473657547746F6ELL)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 24:
        v15 = 0x6972616853746F6ELL;
        v16 = 1867343726;
LABEL_62:
        v13 = v16 | 0xEE00656400000000;
        if (v11 != v15)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 25:
        v13 = 0xEF656C62616C6961;
        if (v11 != 0x76416E6F6D656164)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 26:
        v13 = 0x80000001ADB9C4C0;
        if (v11 != 0xD000000000000020)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 27:
        v13 = 0x80000001ADB9C4F0;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 28:
        v17 = 0x5344496863756F74;
        v18 = 0x726F736E65;
LABEL_102:
        v13 = v18 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v11 != v17)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 29:
        v14 = 0xD000000000000018;
        v13 = 0x80000001ADB9C510;
        goto LABEL_105;
      case 30:
        v13 = 0x80000001ADB9C530;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 31:
        v13 = 0x80000001ADB9C550;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 32:
        v13 = 0x80000001ADB9C570;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 33:
        v13 = 0x80000001ADB9C590;
        if (v11 != 0xD000000000000020)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 34:
        v13 = 0x80000001ADB9C5C0;
        if (v11 != 0xD000000000000016)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      default:
LABEL_105:
        if (v11 != v14)
        {
          goto LABEL_107;
        }

LABEL_106:
        if (v10 != v13)
        {
LABEL_107:
          v21 = sub_1ADB06F50();

          if (v21)
          {
            goto LABEL_114;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_112;
          }

          continue;
        }

LABEL_114:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_115:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_1AD495920()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B290);
  result = sub_1ADB06BF0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1ADB07090();
      sub_1ADB06460();
      result = sub_1ADB070D0();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AD495B80()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B2A0);
  result = sub_1ADB06BF0();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1ADB063B0();
      sub_1ADB07090();
      sub_1ADB06460();
      v17 = sub_1ADB070D0();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AD495DFC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B2C0);
  result = sub_1ADB06BF0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1ADB07090();
      ProvisioningRequirement.RequirementType.rawValue.getter();
      sub_1ADB06460();

      result = sub_1ADB070D0();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AD49606C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1AD495920();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1AD496D64();
      goto LABEL_16;
    }

    sub_1AD497150();
  }

  v10 = *v4;
  sub_1ADB07090();
  sub_1ADB06460();
  result = sub_1ADB070D0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1ADB06F50();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1ADB06FE0();
  __break(1u);
  return result;
}

uint64_t sub_1AD4961EC(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1AD495B80();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1AD496EC0();
      goto LABEL_16;
    }

    sub_1AD497388();
  }

  v9 = *v3;
  sub_1ADB063B0();
  sub_1ADB07090();
  sub_1ADB06460();
  v10 = sub_1ADB070D0();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for PKContactField(0);
    do
    {
      v13 = sub_1ADB063B0();
      v15 = v14;
      if (v13 == sub_1ADB063B0() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_1ADB06F50();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1ADB06FE0();
  __break(1u);
  return result;
}

uint64_t sub_1AD4963D4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1AD495DFC();
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_1AD497010();
        goto LABEL_119;
      }

      sub_1AD4975DC();
    }

    v9 = *v3;
    sub_1ADB07090();
    ProvisioningRequirement.RequirementType.rawValue.getter();
    sub_1ADB06460();

    result = sub_1ADB070D0();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xE400000000000000;
        v13 = 845247336;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v12 = 0xE700000000000000;
            v13 = 0x656574616E616DLL;
            break;
          case 2:
            v13 = 0xD000000000000014;
            v12 = 0x80000001ADB9C240;
            break;
          case 3:
            v12 = 0xE800000000000000;
            v13 = 0x65646F6373736170;
            break;
          case 4:
            v13 = 0x6150676E6F727473;
            v14 = 1868788595;
            goto LABEL_23;
          case 5:
            v13 = 0x75536E6F69676572;
            v12 = 0xEF646574726F7070;
            break;
          case 6:
            v12 = 0xE500000000000000;
            v13 = 0x746C756461;
            break;
          case 7:
            v13 = 0x634164756F6C6369;
            v12 = 0xED0000746E756F63;
            break;
          case 8:
            v13 = 0x6E4974656C6C6177;
            v12 = 0xEF64656C6C617473;
            break;
          case 9:
            v13 = 0xD000000000000017;
            v12 = 0x80000001ADB9C2B0;
            break;
          case 0xA:
            v13 = 0xD000000000000012;
            v12 = 0x80000001ADB9C2D0;
            break;
          case 0xB:
            v13 = 0xD000000000000015;
            v12 = 0x80000001ADB9C2F0;
            break;
          case 0xC:
            v13 = 0xD000000000000011;
            v12 = 0x80000001ADB9C310;
            break;
          case 0xD:
            v13 = 0xD000000000000029;
            v12 = 0x80000001ADB9C330;
            break;
          case 0xE:
            v13 = 0xD000000000000015;
            v12 = 0x80000001ADB9C360;
            break;
          case 0xF:
            v13 = 0xD000000000000016;
            v12 = 0x80000001ADB9C380;
            break;
          case 0x10:
            v13 = 0xD000000000000012;
            v12 = 0x80000001ADB9C3A0;
            break;
          case 0x11:
            v13 = 0xD000000000000016;
            v12 = 0x80000001ADB9C3C0;
            break;
          case 0x12:
            v13 = 0xD000000000000013;
            v12 = 0x80000001ADB9C3E0;
            break;
          case 0x13:
            v13 = 0xD000000000000021;
            v12 = 0x80000001ADB9C400;
            break;
          case 0x14:
            v13 = 0xD000000000000022;
            v12 = 0x80000001ADB9C430;
            break;
          case 0x15:
            v13 = 0xD000000000000018;
            v12 = 0x80000001ADB9C460;
            break;
          case 0x16:
            v13 = 0xD000000000000016;
            v12 = 0x80000001ADB9C480;
            break;
          case 0x17:
            v12 = 0xE800000000000000;
            v13 = 0x7473657547746F6ELL;
            break;
          case 0x18:
            v13 = 0x6972616853746F6ELL;
            v14 = 1867343726;
LABEL_23:
            v12 = v14 | 0xEE00656400000000;
            break;
          case 0x19:
            v13 = 0x76416E6F6D656164;
            v12 = 0xEF656C62616C6961;
            break;
          case 0x1A:
            v13 = 0xD000000000000020;
            v12 = 0x80000001ADB9C4C0;
            break;
          case 0x1B:
            v13 = 0xD000000000000010;
            v12 = 0x80000001ADB9C4F0;
            break;
          case 0x1C:
            v13 = 0x5344496863756F74;
            v12 = 0xED0000726F736E65;
            break;
          case 0x1D:
            v13 = 0xD000000000000018;
            v12 = 0x80000001ADB9C510;
            break;
          case 0x1E:
            v13 = 0xD000000000000010;
            v12 = 0x80000001ADB9C530;
            break;
          case 0x1F:
            v13 = 0xD000000000000017;
            v12 = 0x80000001ADB9C550;
            break;
          case 0x20:
            v13 = 0xD000000000000015;
            v12 = 0x80000001ADB9C570;
            break;
          case 0x21:
            v13 = 0xD000000000000020;
            v12 = 0x80000001ADB9C590;
            break;
          case 0x22:
            v13 = 0xD000000000000016;
            v12 = 0x80000001ADB9C5C0;
            break;
          default:
            break;
        }

        v15 = 0xE400000000000000;
        v16 = 845247336;
        switch(v6)
        {
          case 1:
            v15 = 0xE700000000000000;
            if (v13 == 0x656574616E616DLL)
            {
              goto LABEL_113;
            }

            goto LABEL_114;
          case 2:
            v15 = 0x80000001ADB9C240;
            if (v13 != 0xD000000000000014)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 3:
            v15 = 0xE800000000000000;
            if (v13 != 0x65646F6373736170)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 4:
            v17 = 0x6150676E6F727473;
            v18 = 1868788595;
            goto LABEL_69;
          case 5:
            v21 = 0x75536E6F69676572;
            v22 = 0x6574726F7070;
            goto LABEL_96;
          case 6:
            v15 = 0xE500000000000000;
            if (v13 != 0x746C756461)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 7:
            v19 = 0x634164756F6C6369;
            v20 = 0x746E756F63;
            goto LABEL_109;
          case 8:
            v21 = 0x6E4974656C6C6177;
            v22 = 0x656C6C617473;
LABEL_96:
            v15 = v22 & 0xFFFFFFFFFFFFLL | 0xEF64000000000000;
            if (v13 != v21)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 9:
            v15 = 0x80000001ADB9C2B0;
            if (v13 != 0xD000000000000017)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 10:
            v15 = 0x80000001ADB9C2D0;
            if (v13 != 0xD000000000000012)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 11:
            v15 = 0x80000001ADB9C2F0;
            if (v13 != 0xD000000000000015)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 12:
            v15 = 0x80000001ADB9C310;
            if (v13 != 0xD000000000000011)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 13:
            v15 = 0x80000001ADB9C330;
            if (v13 != 0xD000000000000029)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 14:
            v15 = 0x80000001ADB9C360;
            if (v13 != 0xD000000000000015)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 15:
            v15 = 0x80000001ADB9C380;
            if (v13 != 0xD000000000000016)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 16:
            v15 = 0x80000001ADB9C3A0;
            if (v13 != 0xD000000000000012)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 17:
            v15 = 0x80000001ADB9C3C0;
            if (v13 != 0xD000000000000016)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 18:
            v15 = 0x80000001ADB9C3E0;
            if (v13 != 0xD000000000000013)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 19:
            v15 = 0x80000001ADB9C400;
            if (v13 != 0xD000000000000021)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 20:
            v15 = 0x80000001ADB9C430;
            if (v13 != 0xD000000000000022)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 21:
            v15 = 0x80000001ADB9C460;
            if (v13 != 0xD000000000000018)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 22:
            v15 = 0x80000001ADB9C480;
            if (v13 != 0xD000000000000016)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 23:
            v15 = 0xE800000000000000;
            if (v13 != 0x7473657547746F6ELL)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 24:
            v17 = 0x6972616853746F6ELL;
            v18 = 1867343726;
LABEL_69:
            v15 = v18 | 0xEE00656400000000;
            if (v13 != v17)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 25:
            v15 = 0xEF656C62616C6961;
            if (v13 != 0x76416E6F6D656164)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 26:
            v15 = 0x80000001ADB9C4C0;
            if (v13 != 0xD000000000000020)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 27:
            v15 = 0x80000001ADB9C4F0;
            if (v13 != 0xD000000000000010)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 28:
            v19 = 0x5344496863756F74;
            v20 = 0x726F736E65;
LABEL_109:
            v15 = v20 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v13 != v19)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 29:
            v16 = 0xD000000000000018;
            v15 = 0x80000001ADB9C510;
            goto LABEL_112;
          case 30:
            v15 = 0x80000001ADB9C530;
            if (v13 != 0xD000000000000010)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 31:
            v15 = 0x80000001ADB9C550;
            if (v13 != 0xD000000000000017)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 32:
            v15 = 0x80000001ADB9C570;
            if (v13 != 0xD000000000000015)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 33:
            v15 = 0x80000001ADB9C590;
            if (v13 != 0xD000000000000020)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          case 34:
            v15 = 0x80000001ADB9C5C0;
            if (v13 != 0xD000000000000016)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          default:
LABEL_112:
            if (v13 != v16)
            {
              goto LABEL_114;
            }

LABEL_113:
            if (v12 == v15)
            {
              goto LABEL_122;
            }

LABEL_114:
            v23 = sub_1ADB06F50();

            if (v23)
            {
              goto LABEL_123;
            }

            a2 = (a2 + 1) & v11;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_119:
  v24 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + a2) = v6;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
LABEL_122:

LABEL_123:
    result = sub_1ADB06FE0();
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v27;
  }

  return result;
}

void *sub_1AD496D64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B290);
  v2 = *v0;
  v3 = sub_1ADB06BE0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1AD496EC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B2A0);
  v2 = *v0;
  v3 = sub_1ADB06BE0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1AD497010()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B2C0);
  v2 = *v0;
  v3 = sub_1ADB06BE0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1AD497150()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B290);
  result = sub_1ADB06BF0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1ADB07090();

      sub_1ADB06460();
      result = sub_1ADB070D0();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1AD497388()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B2A0);
  result = sub_1ADB06BF0();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1ADB063B0();
      sub_1ADB07090();
      v17 = v16;
      sub_1ADB06460();
      v18 = sub_1ADB070D0();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1AD4975DC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B2C0);
  result = sub_1ADB06BF0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1ADB07090();
      ProvisioningRequirement.RequirementType.rawValue.getter();
      sub_1ADB06460();

      result = sub_1ADB070D0();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1AD49781C()
{
  v0 = sub_1ADB06550();
  v4 = sub_1AD49789C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1AD49789C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1ADB06A50();
    if (!v9 || (v10 = v9, v11 = sub_1AD494C6C(v9, 0), v12 = sub_1AD4979F4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1ADB06450();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1ADB06450();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1ADB06C70();
LABEL_4:

  return sub_1ADB06450();
}

unint64_t sub_1AD4979F4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1AD497C14(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1ADB064F0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1ADB06C70();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1AD497C14(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1ADB064C0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1AD497C14(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1ADB06500();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B26F6560](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1AD497C90()
{
  v1 = v0;
  v2 = *v0;
  sub_1ADB063B0();
  sub_1ADB07090();
  sub_1ADB06460();
  v3 = sub_1ADB070D0();

  v4 = -1 << *(v2 + 32);
  v5 = v3 & ~v4;
  if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

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

    if (v12)
    {
      goto LABEL_11;
    }

    v5 = (v5 + 1) & v6;
    if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v1;
  v17 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AD496EC0();
    v15 = v17;
  }

  v13 = *(*(v15 + 48) + 8 * v5);
  sub_1AD498774(v5);
  *v1 = v17;
  return v13;
}

unint64_t sub_1AD497E20@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  sub_1ADB07090();
  ProvisioningRequirement.RequirementType.rawValue.getter();
  sub_1ADB06460();

  result = sub_1ADB070D0();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_112:
    *a2 = 35;
    return result;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xE400000000000000;
    v11 = 845247336;
    switch(*(*(v5 + 48) + v8))
    {
      case 1:
        v10 = 0xE700000000000000;
        v11 = 0x656574616E616DLL;
        break;
      case 2:
        v11 = 0xD000000000000014;
        v10 = 0x80000001ADB9C240;
        break;
      case 3:
        v10 = 0xE800000000000000;
        v11 = 0x65646F6373736170;
        break;
      case 4:
        v11 = 0x6150676E6F727473;
        v12 = 1868788595;
        goto LABEL_16;
      case 5:
        v11 = 0x75536E6F69676572;
        v10 = 0xEF646574726F7070;
        break;
      case 6:
        v10 = 0xE500000000000000;
        v11 = 0x746C756461;
        break;
      case 7:
        v11 = 0x634164756F6C6369;
        v10 = 0xED0000746E756F63;
        break;
      case 8:
        v11 = 0x6E4974656C6C6177;
        v10 = 0xEF64656C6C617473;
        break;
      case 9:
        v11 = 0xD000000000000017;
        v10 = 0x80000001ADB9C2B0;
        break;
      case 0xA:
        v11 = 0xD000000000000012;
        v10 = 0x80000001ADB9C2D0;
        break;
      case 0xB:
        v11 = 0xD000000000000015;
        v10 = 0x80000001ADB9C2F0;
        break;
      case 0xC:
        v11 = 0xD000000000000011;
        v10 = 0x80000001ADB9C310;
        break;
      case 0xD:
        v11 = 0xD000000000000029;
        v10 = 0x80000001ADB9C330;
        break;
      case 0xE:
        v11 = 0xD000000000000015;
        v10 = 0x80000001ADB9C360;
        break;
      case 0xF:
        v11 = 0xD000000000000016;
        v10 = 0x80000001ADB9C380;
        break;
      case 0x10:
        v11 = 0xD000000000000012;
        v10 = 0x80000001ADB9C3A0;
        break;
      case 0x11:
        v11 = 0xD000000000000016;
        v10 = 0x80000001ADB9C3C0;
        break;
      case 0x12:
        v11 = 0xD000000000000013;
        v10 = 0x80000001ADB9C3E0;
        break;
      case 0x13:
        v11 = 0xD000000000000021;
        v10 = 0x80000001ADB9C400;
        break;
      case 0x14:
        v11 = 0xD000000000000022;
        v10 = 0x80000001ADB9C430;
        break;
      case 0x15:
        v11 = 0xD000000000000018;
        v10 = 0x80000001ADB9C460;
        break;
      case 0x16:
        v11 = 0xD000000000000016;
        v10 = 0x80000001ADB9C480;
        break;
      case 0x17:
        v10 = 0xE800000000000000;
        v11 = 0x7473657547746F6ELL;
        break;
      case 0x18:
        v11 = 0x6972616853746F6ELL;
        v12 = 1867343726;
LABEL_16:
        v10 = v12 | 0xEE00656400000000;
        break;
      case 0x19:
        v11 = 0x76416E6F6D656164;
        v10 = 0xEF656C62616C6961;
        break;
      case 0x1A:
        v11 = 0xD000000000000020;
        v10 = 0x80000001ADB9C4C0;
        break;
      case 0x1B:
        v11 = 0xD000000000000010;
        v10 = 0x80000001ADB9C4F0;
        break;
      case 0x1C:
        v11 = 0x5344496863756F74;
        v10 = 0xED0000726F736E65;
        break;
      case 0x1D:
        v11 = 0xD000000000000018;
        v10 = 0x80000001ADB9C510;
        break;
      case 0x1E:
        v11 = 0xD000000000000010;
        v10 = 0x80000001ADB9C530;
        break;
      case 0x1F:
        v11 = 0xD000000000000017;
        v10 = 0x80000001ADB9C550;
        break;
      case 0x20:
        v11 = 0xD000000000000015;
        v10 = 0x80000001ADB9C570;
        break;
      case 0x21:
        v11 = 0xD000000000000020;
        v10 = 0x80000001ADB9C590;
        break;
      case 0x22:
        v11 = 0xD000000000000016;
        v10 = 0x80000001ADB9C5C0;
        break;
      default:
        break;
    }

    v13 = 0xE400000000000000;
    v14 = 845247336;
    switch(a1)
    {
      case 1:
        v13 = 0xE700000000000000;
        if (v11 == 0x656574616E616DLL)
        {
          goto LABEL_106;
        }

        goto LABEL_107;
      case 2:
        v13 = 0x80000001ADB9C240;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 3:
        v13 = 0xE800000000000000;
        if (v11 != 0x65646F6373736170)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 4:
        v15 = 0x6150676E6F727473;
        v16 = 1868788595;
        goto LABEL_62;
      case 5:
        v19 = 0x75536E6F69676572;
        v20 = 0x6574726F7070;
        goto LABEL_89;
      case 6:
        v13 = 0xE500000000000000;
        if (v11 != 0x746C756461)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 7:
        v17 = 0x634164756F6C6369;
        v18 = 0x746E756F63;
        goto LABEL_102;
      case 8:
        v19 = 0x6E4974656C6C6177;
        v20 = 0x656C6C617473;
LABEL_89:
        v13 = v20 & 0xFFFFFFFFFFFFLL | 0xEF64000000000000;
        if (v11 != v19)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 9:
        v13 = 0x80000001ADB9C2B0;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 10:
        v13 = 0x80000001ADB9C2D0;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 11:
        v13 = 0x80000001ADB9C2F0;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 12:
        v13 = 0x80000001ADB9C310;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 13:
        v13 = 0x80000001ADB9C330;
        if (v11 != 0xD000000000000029)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 14:
        v13 = 0x80000001ADB9C360;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 15:
        v13 = 0x80000001ADB9C380;
        if (v11 != 0xD000000000000016)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 16:
        v13 = 0x80000001ADB9C3A0;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 17:
        v13 = 0x80000001ADB9C3C0;
        if (v11 != 0xD000000000000016)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 18:
        v13 = 0x80000001ADB9C3E0;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 19:
        v13 = 0x80000001ADB9C400;
        if (v11 != 0xD000000000000021)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 20:
        v13 = 0x80000001ADB9C430;
        if (v11 != 0xD000000000000022)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 21:
        v13 = 0x80000001ADB9C460;
        if (v11 != 0xD000000000000018)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 22:
        v13 = 0x80000001ADB9C480;
        if (v11 != 0xD000000000000016)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 23:
        v13 = 0xE800000000000000;
        if (v11 != 0x7473657547746F6ELL)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 24:
        v15 = 0x6972616853746F6ELL;
        v16 = 1867343726;
LABEL_62:
        v13 = v16 | 0xEE00656400000000;
        if (v11 != v15)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 25:
        v13 = 0xEF656C62616C6961;
        if (v11 != 0x76416E6F6D656164)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 26:
        v13 = 0x80000001ADB9C4C0;
        if (v11 != 0xD000000000000020)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 27:
        v13 = 0x80000001ADB9C4F0;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 28:
        v17 = 0x5344496863756F74;
        v18 = 0x726F736E65;
LABEL_102:
        v13 = v18 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v11 != v17)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 29:
        v14 = 0xD000000000000018;
        v13 = 0x80000001ADB9C510;
        goto LABEL_105;
      case 30:
        v13 = 0x80000001ADB9C530;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 31:
        v13 = 0x80000001ADB9C550;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 32:
        v13 = 0x80000001ADB9C570;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 33:
        v13 = 0x80000001ADB9C590;
        if (v11 != 0xD000000000000020)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 34:
        v13 = 0x80000001ADB9C5C0;
        if (v11 != 0xD000000000000016)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      default:
LABEL_105:
        if (v11 != v14)
        {
          goto LABEL_107;
        }

LABEL_106:
        if (v10 != v13)
        {
LABEL_107:
          v21 = sub_1ADB06F50();

          if (v21)
          {
            goto LABEL_114;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_112;
          }

          continue;
        }

LABEL_114:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v25 = *v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AD497010();
          v23 = v25;
        }

        *a2 = *(*(v23 + 48) + v8);
        result = sub_1AD498954(v8);
        *v3 = v25;
        return result;
    }
  }
}