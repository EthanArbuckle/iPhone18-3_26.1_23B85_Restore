uint64_t sub_1BD821488(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v34 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v29 - v9);
  v11 = sub_1BE04D214();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    if (a2)
    {
      v33 = a3;
      sub_1BE04D0D4();
      v18 = v17;
      v19 = sub_1BE04D204();
      v20 = sub_1BE052C54();

      if (os_log_type_enabled(v19, v20))
      {
        v32 = v20;
        v21 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v35 = v30;
        v31 = v21;
        *v21 = 136315138;
        if (*&v18[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
        {
          sub_1BE048964();
          v29 = sub_1BE04C0A4();
          v23 = v22;

          v24 = v29;
        }

        else
        {
          v24 = 0;
          v23 = 0xE000000000000000;
        }

        v26 = sub_1BD123690(v24, v23, &v35);

        v27 = v31;
        *(v31 + 1) = v26;
        _os_log_impl(&dword_1BD026000, v19, v32, "[%s] User failed to authenticate to exit lost mode", v27, 0xCu);
        v28 = v30;
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x1BFB45F20](v28, -1, -1);
        MEMORY[0x1BFB45F20](v27, -1, -1);
      }

      (*(v12 + 8))(v15, v11);
      *v10 = 0;
      v25 = MEMORY[0x1E69B8168];
      a3 = v33;
    }

    else
    {
      v25 = MEMORY[0x1E69B8160];
    }

    (*(v7 + 104))(v10, *v25, v6);
    a3(v10);

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_1BD8217A4(void *a1, unsigned __int8 a2, void (*a3)(char *), uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v7 = sub_1BE04C534();
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v35 - v14;
  v16 = sub_1BE04C384();
  v17 = *(v16 - 8);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v16, v18);
  v22 = (&v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      *v15 = a1;
      (*(v12 + 104))(v15, *MEMORY[0x1E69B8168], v11, v20.n128_f64[0]);
      v26 = a1;
    }

    else
    {
      *v15 = [objc_opt_self() errorWithSeverity_];
      (*(v12 + 104))(v15, *MEMORY[0x1E69B8168], v11);
    }

LABEL_14:
    v37(v15);
    return (*(v12 + 8))(v15, v11);
  }

  if (!a2)
  {
    if (*&v4[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
    {
      *v22 = a1;
      v23 = v19;
      (*(v17 + 104))(v22, *MEMORY[0x1E69B82A8], v19, v20.n128_f64[0]);
      sub_1BE048964();
      v24 = a1;
      sub_1BE04C084();

      (*(v17 + 8))(v22, v23);
    }

    v25 = v36;
    (*(v36 + 104))(v10, *MEMORY[0x1E69B8308], v7, v20);
    sub_1BE04BF54();
    (*(v25 + 8))(v10, v7);
    goto LABEL_14;
  }

  v27 = [a1 secureElementPass];
  if (v27)
  {
    v28 = v27;
    sub_1BE04BD64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1BE0B7020;
    *(v29 + 32) = v28;
    v30 = v28;
    sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
    v31 = sub_1BE04BC74();
    v32 = *&v4[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses];
    *&v4[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = v31;
  }

  v33 = v38;
  sub_1BE048964();
  sub_1BD826978(v4, v37, v33, &unk_1F3BBE9E0, sub_1BD82B5FC, &block_descriptor_266);
}

void sub_1BD821C18(void *a1, char a2, void (*a3)(char *), uint64_t a4)
{
  v23 = a3;
  v8 = sub_1BE04C534();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v22 - v17;
  if (a2)
  {
    if (a2 == 1)
    {
      *v18 = a1;
      (*(v14 + 104))(v18, *MEMORY[0x1E69B8168], v13, v16);
      v19 = a1;
    }

    else
    {
      (*(v9 + 104))(v12, *MEMORY[0x1E69B8308], v8, v16);
      sub_1BE04BF54();
      (*(v9 + 8))(v12, v8);
    }

    v23(v18);
    (*(v14 + 8))(v18, v13);
  }

  else
  {
    v20 = *&v4[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses];
    *&v4[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = a1;
    v21 = a1;

    sub_1BD826978(v4, v23, a4, &unk_1F3BBE990, sub_1BD82B5FC, &block_descriptor_258);
  }
}

void sub_1BD821E70(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v82 = a3;
  v83 = a2;
  v5 = sub_1BE04C384();
  v81 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v76 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55160);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v76 - v16);
  v18 = sub_1BE04C014();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD82B3DC(a1, v21, MEMORY[0x1E69B8180]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v55 = *v21;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45580);
      sub_1BD226B4C(&v21[*(v56 + 48)], v12);
      v57 = PKPaymentCardIneligibleReasonForRequirementsStatus(v55);
      v58 = swift_allocObject();
      *(v58 + 16) = v83;
      *(v58 + 24) = v82;
      sub_1BE048964();
      sub_1BD81938C(v57, v12, sub_1BD82B44C, v58);

      sub_1BD0DE53C(v12, &unk_1EBD3CF70);
      return;
    }

    v24 = *v21;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45570) + 48);
    v26 = *MEMORY[0x1E69B8308];
    v27 = sub_1BE04C534();
    (*(*(v27 - 8) + 104))(v17, v26, v27);
    *(v17 + v25) = v24;
    (*(v14 + 104))(v17, *MEMORY[0x1E69B8170], v13);
    v28 = v24;
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v23 = *(v21 + 1);

      sub_1BD0E5E8C(0, &qword_1EBD55168);
      sub_1BE04BF44();
      v83(v17);
      (*(v14 + 8))(v17, v13);
      sub_1BD81C3AC(v23);

      return;
    }

    v54 = *v21;
    *v17 = *v21;
    (*(v14 + 104))(v17, *MEMORY[0x1E69B8168], v13);
    v28 = v54;
    goto LABEL_37;
  }

  v29 = *v21;
  v30 = *(v21 + 1);
  v31 = *(v3 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel);
  if (v31)
  {
    if (v30 >> 62)
    {
      if (sub_1BE053704())
      {
LABEL_10:
        v79 = v29;
        v80 = v31;
        v32 = [v80 visiblePaymentSetupFields];
        if (v32)
        {
          v33 = v32;
          sub_1BD0E5E8C(0, &qword_1EBD4E6C0);
          v34 = sub_1BE052744();

          if (v34 >> 62)
          {
            v35 = sub_1BE053704();
          }

          else
          {
            v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v35)
          {
            sub_1BD3F0574(v30);

            v59 = sub_1BE052724();

            v60 = v80;
            [v80 updateWithPaymentSetupFields_];

            v61 = v3 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v62 = *(v61 + 8);
              ObjectType = swift_getObjectType();
              (*(v62 + 16))(ObjectType, v62);
              swift_unknownObjectRelease();
            }

            v64 = [v60 validValuesProvidedForVisibleFields];
            v65 = v79;
            if (v64 && ([v60 hasVisibleEditableFields] & 1) == 0)
            {
              v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45570) + 48);
              v67 = MEMORY[0x1E69B8308];
            }

            else
            {
              v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45570) + 48);
              v67 = MEMORY[0x1E69B8300];
            }

            v69 = *v67;
            v70 = sub_1BE04C534();
            (*(*(v70 - 8) + 104))(v17, v69, v70);
            *(v17 + v66) = v65;
            (*(v14 + 104))(v17, *MEMORY[0x1E69B8170], v13);
            v71 = v65;
            v83(v17);

            goto LABEL_38;
          }

          v36 = sub_1BE052724();
          v37 = v80;
          v38 = [v80 secondaryEntryFieldsModelWithPaymentSetupFields_];

          if (!v38)
          {

            return;
          }

          v39 = [v38 validValuesProvidedForVisibleFields];
          if (([v38 hasVisibleEditableFields] & 1) == 0)
          {
            if (v39)
            {
              goto LABEL_20;
            }

            goto LABEL_32;
          }

          v77 = v39;
          v78 = v3;
          v40 = *(v3 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex);
          sub_1BE048964();
          v41 = sub_1BE04C3A4();

          if ((v40 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v76 = v38;
            if (v40 < *(v41 + 16))
            {
              v42 = v81;
              (*(v81 + 16))(v8, v41 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v40, v5);

              v43 = sub_1BE04C324();
              (*(v42 + 8))(v8, v5);
              v3 = v78;
              v38 = v76;
              if (v77 && (v43 & 1) == 0)
              {
LABEL_20:
                sub_1BD3F0574(v30);

                v44 = sub_1BE052724();

                v45 = v80;
                [v80 updateWithPaymentSetupFields_];

                v46 = v3 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer;
                if (swift_unknownObjectWeakLoadStrong())
                {
                  v47 = *(v46 + 8);
                  v48 = swift_getObjectType();
                  (*(v47 + 16))(v48, v47);
                  swift_unknownObjectRelease();
                }

                v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45570) + 48);
                v50 = *MEMORY[0x1E69B8308];
                v51 = sub_1BE04C534();
                (*(*(v51 - 8) + 104))(v17, v50, v51);
                v52 = v79;
                *(v17 + v49) = v79;
                (*(v14 + 104))(v17, *MEMORY[0x1E69B8170], v13);
                v53 = v52;
                v83(v17);

                goto LABEL_38;
              }

LABEL_32:

              v68 = swift_allocObject();
              *(v68 + 16) = v83;
              *(v68 + 24) = v82;
              sub_1BE048964();
              sub_1BD8182B4(v38, 0, 0, sub_1BD82B444, v68);

              return;
            }
          }

          __break(1u);
        }

        __break(1u);
        return;
      }
    }

    else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }
  }

  v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45570) + 48);
  v73 = *MEMORY[0x1E69B8308];
  v74 = sub_1BE04C534();
  (*(*(v74 - 8) + 104))(v17, v73, v74);
  *(v17 + v72) = v29;
  (*(v14 + 104))(v17, *MEMORY[0x1E69B8170], v13);
  v28 = v29;
LABEL_37:
  v75 = v28;
  v83(v17);

LABEL_38:
  (*(v14 + 8))(v17, v13);
}

uint64_t sub_1BD8228B4(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55160);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  sub_1BD0E5E8C(0, &qword_1EBD55168);
  sub_1BE04BF44();
  a1(v6);
  return (*(v3 + 8))(v6, v2);
}

void sub_1BD8229B0(void *a1, unsigned __int8 a2, void (*a3)(void *), uint64_t a4)
{
  v181 = a4;
  v182 = a3;
  v7 = sub_1BE04BD74();
  v179 = *(v7 - 8);
  v180 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v176 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v168 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v168 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v175 = &v168 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v174 = &v168 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v173 = &v168 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v168 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v168 - v33;
  v35 = sub_1BE04D214();
  v177 = *(v35 - 8);
  v178 = v35;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v168 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v168 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD456A0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v48 = (&v168 - v47);
  if (a2 <= 1u)
  {
    v174 = v46;
    v175 = v45;
    if (!a2)
    {
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD456A8) + 48);
      v50 = *MEMORY[0x1E69B8308];
      v51 = sub_1BE04C534();
      (*(*(v51 - 8) + 104))(v48, v50, v51);
      *(v48 + v49) = a1;
      v53 = v174;
      v52 = v175;
      (*(v174 + 13))(v48, *MEMORY[0x1E69B8170], v175);
LABEL_6:
      v54 = a1;
      v182(v48);
      (*(v53 + 1))(v48, v52);
      return;
    }

    v55 = &v4[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v57 = Strong;
      v58 = *(v55 + 1);
      v59 = swift_unknownObjectWeakLoadStrong();
      if (v59)
      {
        v172 = v58;
        v170 = v59;
        sub_1BE04D0D4();
        v60 = v4;
        v61 = sub_1BE04D204();
        v62 = sub_1BE052C54();

        v63 = os_log_type_enabled(v61, v62);
        v173 = v57;
        v171 = v60;
        if (v63)
        {
          v64 = swift_slowAlloc();
          v169 = swift_slowAlloc();
          aBlock = v169;
          *v64 = 136315138;
          if (*&v60[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
          {
            sub_1BE048964();
            v65 = sub_1BE04C0A4();
            v67 = v66;
          }

          else
          {
            v65 = 0;
            v67 = 0xE000000000000000;
          }

          v93 = sub_1BD123690(v65, v67, &aBlock);

          *(v64 + 4) = v93;
          _os_log_impl(&dword_1BD026000, v61, v62, "[%s] Prompting for timeout", v64, 0xCu);
          v94 = v169;
          __swift_destroy_boxed_opaque_existential_0(v169);
          MEMORY[0x1BFB45F20](v94, -1, -1);
          MEMORY[0x1BFB45F20](v64, -1, -1);
        }

        (*(v177 + 8))(v38, v178);
        v95 = *MEMORY[0x1E69B80D8];
        v96 = v179;
        v97 = v180;
        v177 = v179[13];
        v178 = (v179 + 13);
        (v177)(v17, v95, v180);
        v98 = PKPassKitBundle();
        if (v98)
        {
          v99 = v98;
          sub_1BE04B6F4();

          v100 = v96[1];
          v100(v17, v97);
          v101 = sub_1BE052404();

          v102 = [objc_opt_self() alertControllerWithTitle:v101 message:0 preferredStyle:1];

          (v177)(v13, v95, v97);
          v103 = PKPassKitBundle();
          if (v103)
          {
            v104 = v103;
            sub_1BE04B6F4();

            v169 = v100;
            v100(v13, v97);
            v105 = swift_allocObject();
            v107 = v171;
            v106 = v172;
            v108 = v173;
            v105[2] = v171;
            v105[3] = v108;
            v105[4] = v106;
            v172 = v107;
            swift_unknownObjectRetain();
            v109 = sub_1BE052404();

            v187 = sub_1BD82B2BC;
            v188 = v105;
            aBlock = MEMORY[0x1E69E9820];
            v184 = 1107296256;
            v185 = sub_1BD198918;
            v186 = &block_descriptor_216;
            v110 = _Block_copy(&aBlock);

            v111 = objc_opt_self();
            v112 = [v111 actionWithTitle:v109 style:0 handler:v110];
            _Block_release(v110);

            v179 = v102;
            [v102 addAction_];
            v113 = v176;
            (v177)(v176, *MEMORY[0x1E69B8068], v97);
            v114 = PKPassKitBundle();
            if (v114)
            {
              v115 = v114;
              sub_1BE04B6F4();

              v169(v113, v97);
              v116 = swift_allocObject();
              v117 = v172;
              *(v116 + 16) = v172;
              v118 = v117;
              v119 = sub_1BE052404();

              v187 = sub_1BD82B2C8;
              v188 = v116;
              aBlock = MEMORY[0x1E69E9820];
              v184 = 1107296256;
              v185 = sub_1BD198918;
              v186 = &block_descriptor_222;
              v120 = _Block_copy(&aBlock);

              v121 = [v111 actionWithTitle:v119 style:1 handler:v120];
              _Block_release(v120);

              v122 = v179;
              [v179 addAction_];
              v123 = v170;
              [v170 presentViewController:v122 animated:1 completion:0];
              sub_1BD0E5E8C(0, &unk_1EBD55150);
              sub_1BE04BF44();
              v182(v48);
              swift_unknownObjectRelease();

              (*(v174 + 1))(v48, v175);
              return;
            }

            goto LABEL_40;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      swift_unknownObjectRelease();
    }

    v85 = [objc_opt_self() errorWithSeverity_];
    v86 = sub_1BE052404();
    [v85 addInternalDebugDescription_];

    *v48 = v85;
    v88 = v174;
    v87 = v175;
    (*(v174 + 13))(v48, *MEMORY[0x1E69B8168], v175);
    v89 = v85;
    v182(v48);

    (*(v88 + 1))(v48, v87);
    return;
  }

  if (a2 == 2)
  {
    *v48 = a1;
    v52 = v45;
    v53 = v46;
    (*(v46 + 13))(v48, *MEMORY[0x1E69B8168], v45);
    goto LABEL_6;
  }

  v68 = v46;
  v69 = v45;
  v70 = v182;
  if (a1)
  {
    sub_1BD0E5E8C(0, &unk_1EBD55150);
    sub_1BE04BF44();
    v70(v48);
LABEL_23:
    (*(v68 + 1))(v48, v69);
    return;
  }

  v71 = &v4[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate];
  v72 = swift_unknownObjectWeakLoadStrong();
  if (!v72)
  {
LABEL_22:
    v90 = [objc_opt_self() errorWithSeverity_];
    v91 = sub_1BE052404();
    [v90 addInternalDebugDescription_];

    *v48 = v90;
    (*(v68 + 13))(v48, *MEMORY[0x1E69B8168], v69);
    v92 = v90;
    v182(v48);

    goto LABEL_23;
  }

  v73 = v72;
  v74 = *(v71 + 1);
  v75 = swift_unknownObjectWeakLoadStrong();
  if (!v75)
  {
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v172 = v74;
  v170 = v75;
  v176 = v73;
  sub_1BE04D0D4();
  v76 = v4;
  v77 = sub_1BE04D204();
  v78 = sub_1BE052C54();

  v79 = os_log_type_enabled(v77, v78);
  v171 = v76;
  if (v79)
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    aBlock = v81;
    *v80 = 136315138;
    if (*&v76[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      v82 = sub_1BE04C0A4();
      v84 = v83;
    }

    else
    {
      v82 = 0;
      v84 = 0xE000000000000000;
    }

    v124 = sub_1BD123690(v82, v84, &aBlock);

    *(v80 + 4) = v124;
    _os_log_impl(&dword_1BD026000, v77, v78, "[%s] Prompting for fall back", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v81);
    MEMORY[0x1BFB45F20](v81, -1, -1);
    MEMORY[0x1BFB45F20](v80, -1, -1);
  }

  (*(v177 + 8))(v42, v178);
  v125 = *MEMORY[0x1E69B80D8];
  v126 = v179;
  v127 = v180;
  v177 = v179[13];
  v178 = (v179 + 13);
  (v177)(v34, v125, v180);
  v128 = PKPassKitBundle();
  if (!v128)
  {
    goto LABEL_41;
  }

  v129 = v128;
  sub_1BE04B6F4();

  v130 = v34;
  v131 = v126[1];
  v131(v130, v127);
  (v177)(v30, v125, v127);
  v132 = PKPassKitBundle();
  if (!v132)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v133 = v132;
  sub_1BE04B6F4();

  v131(v30, v127);
  v134 = sub_1BE052404();

  v135 = sub_1BE052404();

  v179 = [objc_opt_self() alertControllerWithTitle:v134 message:v135 preferredStyle:1];

  v136 = v173;
  (v177)(v173, v125, v127);
  v137 = PKPassKitBundle();
  if (!v137)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v138 = v137;
  sub_1BE04B6F4();

  v173 = v131;
  v131(v136, v127);
  v139 = swift_allocObject();
  v140 = v181;
  v139[2] = v182;
  v139[3] = v140;
  v141 = v171;
  v142 = v172;
  v143 = v176;
  v139[4] = v171;
  v139[5] = v143;
  v139[6] = v142;
  v144 = v141;
  sub_1BE048964();
  swift_unknownObjectRetain();
  v145 = sub_1BE052404();

  v187 = sub_1BD82B2EC;
  v188 = v139;
  aBlock = MEMORY[0x1E69E9820];
  v184 = 1107296256;
  v185 = sub_1BD198918;
  v186 = &block_descriptor_228_0;
  v146 = _Block_copy(&aBlock);

  v171 = objc_opt_self();
  v147 = [v171 actionWithTitle:v145 style:0 handler:v146];
  _Block_release(v146);

  [v179 addAction_];
  v148 = v174;
  (v177)(v174, v125, v127);
  v149 = PKPassKitBundle();
  if (!v149)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v150 = v149;
  sub_1BE04B6F4();

  (v173)(v148, v127);
  v151 = swift_allocObject();
  v151[2] = v182;
  v151[3] = v140;
  v152 = v176;
  v151[4] = v144;
  v151[5] = v152;
  v151[6] = v172;
  v153 = v144;
  sub_1BE048964();
  swift_unknownObjectRetain();
  v154 = sub_1BE052404();

  v187 = sub_1BD82B350;
  v188 = v151;
  aBlock = MEMORY[0x1E69E9820];
  v184 = 1107296256;
  v185 = sub_1BD198918;
  v186 = &block_descriptor_234;
  v155 = _Block_copy(&aBlock);

  v156 = v171;
  v157 = [v171 actionWithTitle:v154 style:0 handler:v155];
  _Block_release(v155);

  [v179 addAction_];
  v158 = v175;
  (v177)(v175, *MEMORY[0x1E69B8068], v127);
  v159 = PKPassKitBundle();
  if (v159)
  {
    v160 = v159;
    sub_1BE04B6F4();

    (v173)(v158, v127);
    v161 = swift_allocObject();
    v161[2] = v182;
    v161[3] = v140;
    v161[4] = v153;
    v162 = v153;
    sub_1BE048964();
    v163 = sub_1BE052404();

    v187 = sub_1BD82B39C;
    v188 = v161;
    aBlock = MEMORY[0x1E69E9820];
    v184 = 1107296256;
    v185 = sub_1BD198918;
    v186 = &block_descriptor_240;
    v164 = _Block_copy(&aBlock);

    v165 = [v156 actionWithTitle:v163 style:1 handler:v164];
    _Block_release(v164);

    v166 = v179;
    [v179 addAction_];
    v167 = v170;
    [v170 presentViewController:v166 animated:1 completion:0];

    swift_unknownObjectRelease();
    return;
  }

LABEL_45:
  __break(1u);
}

uint64_t sub_1BD823D10(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD456A0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v16 - v13;
  sub_1BD0E5E8C(0, &unk_1EBD55150);
  sub_1BE04BF44();
  a2(v14);
  (*(v11 + 8))(v14, v10);
  sub_1BD814F6C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BD826868(a5, a7, result, &off_1F3BB4FF0);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD823E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BD814F6C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BD826868(a3, 0, result, &off_1F3BB4FF0);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1BD823ED8(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v201 = a3;
  v202 = a1;
  v203 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v194 = v3;
  v195 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v193 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v192 = &v181 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v181 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v181 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v181 - v20;
  v22 = sub_1BE04D214();
  v191 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v181 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE04C384();
  v196 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v181 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v181 - v32;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45588);
  v197 = *(v199 - 1);
  MEMORY[0x1EEE9AC00](v199, v34);
  v198 = &v181 - v35;
  v36 = sub_1BE04BF64();
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = (&v181 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD82B3DC(v202, v39, MEMORY[0x1E69B8178]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v190 = v25;
    v188 = v22;
    v189 = v21;
    v186 = v17;
    v187 = v13;
    v202 = v33;
    if (!EnumCaseMultiPayload)
    {
      v70 = *v39;
      v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD550F0) + 48);
      v72 = *MEMORY[0x1E69B8308];
      v73 = sub_1BE04C534();
      v74 = v198;
      (*(*(v73 - 8) + 104))(v198, v72, v73);
      *&v74[v71] = v70;
      v75 = v197;
      v76 = v199;
      (*(v197 + 104))(v74, *MEMORY[0x1E69B8170], v199);
      v77 = v70;
      v203(v74);

      return (*(v75 + 8))(v74, v76);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v50 = *v39;
      v49 = v39[1];
      v29 = v200;
      v51 = *&v200[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
      if (!v51)
      {
        goto LABEL_52;
      }

      if (!(v49 >> 62))
      {
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_10:
          v52 = v51;
          sub_1BD3F0574(v49);

          v53 = sub_1BE052724();

          [v52 updateWithPaymentSetupFields_];

          v54 = &v29[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
          if (swift_unknownObjectWeakLoadStrong())
          {
            v55 = *(v54 + 1);
            ObjectType = swift_getObjectType();
            (*(v55 + 16))(ObjectType, v55);
            swift_unknownObjectRelease();
          }

          v57 = [v52 validValuesProvidedForVisibleFields];
          v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD550F0) + 48);
          v59 = sub_1BE04C534();
          v60 = (v197 + 104);
          v61 = (v197 + 8);
          if (v57)
          {
            v62 = MEMORY[0x1E69B8308];
          }

          else
          {
            v62 = MEMORY[0x1E69B8300];
          }

          v120 = v198;
          (*(*(v59 - 8) + 104))(v198, *v62, v59);
          *&v120[v58] = v50;
          v121 = v199;
          (*v60)(v120, *MEMORY[0x1E69B8170], v199);
          v122 = v50;
          v203(v120);

          return (*v61)(v120, v121);
        }

LABEL_52:

        v174 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD550F0) + 48);
        v175 = *MEMORY[0x1E69B8308];
        v176 = sub_1BE04C534();
        v177 = v198;
        (*(*(v176 - 8) + 104))(v198, v175, v176);
        *&v177[v174] = v50;
        v178 = v197;
        v179 = v199;
        (*(v197 + 104))(v177, *MEMORY[0x1E69B8170], v199);
        v180 = v50;
        v203(v177);

        return (*(v178 + 8))(v177, v179);
      }

LABEL_51:
      if (sub_1BE053704())
      {
        goto LABEL_10;
      }

      goto LABEL_52;
    }

    v50 = *v39;
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45590);
    sub_1BD226B4C(v39 + *(v78 + 48), v202);
    v79 = v200;
    v49 = *&v200[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration];
    v80 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex;
    v81 = *&v200[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex];
    sub_1BE048964();
    v51 = sub_1BE04C3A4();

    if ((v81 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v185 = v80;
      if (v81 < *(v51 + 16))
      {
        v82 = v196;
        v183 = ((*(v82 + 80) + 32) & ~*(v82 + 80));
        v182 = *(v196 + 72);
        v184 = *(v196 + 16);
        (v184)(v29, &v183[v51 + v182 * v81], v26);

        v83 = sub_1BE04C334();
        v84 = *(v82 + 8);
        v84(v29, v26);
        if (v83)
        {
          v85 = PKProvisioningErrorForAppleBalanceEligibilityStatus();
          if (v85)
          {
            v86 = v85;
            v87 = sub_1BE04A844();

            v88 = [objc_opt_self() errorWithUnderlyingError:v87 defaultSeverity:5];
            v90 = v197;
            v89 = v198;
            *v198 = v88;
            v91 = v199;
            (*(v90 + 104))(v89, *MEMORY[0x1E69B8168], v199);
            v92 = v88;
            v203(v89);

            (*(v90 + 8))(v89, v91);
            return sub_1BD0DE53C(v202, &unk_1EBD3CF70);
          }
        }

        if (v50 != 10)
        {
          goto LABEL_35;
        }

        v96 = *&v79[v185];
        sub_1BE048964();
        v97 = sub_1BE04C3A4();

        if ((v96 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v96 < *(v97 + 16))
        {
          (v184)(v29, &v183[v97 + v96 * v182], v26);

          v98 = sub_1BE04C344();
          v84(v29, v26);
          if (v98)
          {
            v99 = &v79[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate];
            Strong = swift_unknownObjectWeakLoadStrong();
            v101 = v202;
            if (Strong)
            {
              v102 = Strong;
              v103 = *(v99 + 1);
              v104 = swift_unknownObjectWeakLoadStrong();
              if (v104)
              {
                v183 = v104;
                v196 = v102;
                v105 = v190;
                sub_1BE04D0D4();
                v106 = v79;
                v107 = sub_1BE04D204();
                v108 = sub_1BE052C54();

                v109 = os_log_type_enabled(v107, v108);
                v185 = v103;
                v184 = v106;
                if (v109)
                {
                  v110 = swift_slowAlloc();
                  v111 = swift_slowAlloc();
                  aBlock = v111;
                  *v110 = 136315138;
                  v112 = v188;
                  if (*&v106[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
                  {
                    sub_1BE048964();
                    v113 = sub_1BE04C0A4();
                    v115 = v114;
                  }

                  else
                  {
                    v113 = 0;
                    v115 = 0xE000000000000000;
                  }

                  v129 = sub_1BD123690(v113, v115, &aBlock);

                  *(v110 + 4) = v129;
                  _os_log_impl(&dword_1BD026000, v107, v108, "[%s] Prompting for fall back", v110, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v111);
                  MEMORY[0x1BFB45F20](v111, -1, -1);
                  MEMORY[0x1BFB45F20](v110, -1, -1);

                  (v191)[1](v190, v112);
                }

                else
                {

                  (v191)[1](v105, v188);
                }

                v130 = v189;
                v131 = *MEMORY[0x1E69B80D8];
                v133 = v194;
                v132 = v195;
                v134 = v195 + 104;
                v200 = *(v195 + 104);
                (v200)(v189, v131, v194);
                result = PKPassKitBundle();
                if (result)
                {
                  v135 = result;
                  sub_1BE04B6F4();

                  v137 = *(v132 + 8);
                  v136 = v132 + 8;
                  v199 = v137;
                  (v137)(v130, v133);
                  v138 = v186;
                  (v200)(v186, v131, v133);
                  result = PKPassKitBundle();
                  if (result)
                  {
                    v139 = result;
                    sub_1BE04B6F4();

                    (v199)(v138, v133);
                    v140 = sub_1BE052404();

                    v141 = sub_1BE052404();

                    v198 = [objc_opt_self() alertControllerWithTitle:v140 message:v141 preferredStyle:1];

                    v142 = v187;
                    v197 = v134;
                    (v200)(v187, v131, v133);
                    result = PKPassKitBundle();
                    if (result)
                    {
                      v143 = result;
                      sub_1BE04B6F4();

                      (v199)(v142, v133);
                      v144 = swift_allocObject();
                      v195 = v136;
                      v145 = v144;
                      v146 = v133;
                      v147 = v201;
                      v144[2] = v203;
                      v144[3] = v147;
                      v148 = v184;
                      v149 = v196;
                      v144[4] = v184;
                      v144[5] = v149;
                      v150 = v185;
                      v144[6] = v185;
                      v151 = v148;
                      sub_1BE048964();
                      swift_unknownObjectRetain();
                      v152 = sub_1BE052404();

                      v208 = sub_1BD82AF78;
                      v209 = v145;
                      aBlock = MEMORY[0x1E69E9820];
                      v205 = 1107296256;
                      v206 = sub_1BD198918;
                      v207 = &block_descriptor_119;
                      v153 = _Block_copy(&aBlock);

                      v191 = objc_opt_self();
                      v154 = [v191 actionWithTitle:v152 style:0 handler:v153];
                      _Block_release(v153);

                      [v198 addAction_];
                      v155 = v192;
                      (v200)(v192, v131, v146);
                      result = PKPassKitBundle();
                      if (result)
                      {
                        v156 = result;
                        sub_1BE04B6F4();

                        v157 = v194;
                        (v199)(v155, v194);
                        v158 = swift_allocObject();
                        v158[2] = v203;
                        v158[3] = v147;
                        v159 = v196;
                        v158[4] = v151;
                        v158[5] = v159;
                        v158[6] = v150;
                        v160 = v151;
                        sub_1BE048964();
                        swift_unknownObjectRetain();
                        v161 = sub_1BE052404();

                        v208 = sub_1BD82AF94;
                        v209 = v158;
                        aBlock = MEMORY[0x1E69E9820];
                        v205 = 1107296256;
                        v206 = sub_1BD198918;
                        v207 = &block_descriptor_125_1;
                        v162 = _Block_copy(&aBlock);

                        v163 = v191;
                        v164 = [v191 actionWithTitle:v161 style:0 handler:v162];
                        _Block_release(v162);

                        [v198 addAction_];
                        v165 = v193;
                        (v200)(v193, *MEMORY[0x1E69B8068], v157);
                        result = PKPassKitBundle();
                        if (result)
                        {
                          v166 = result;
                          sub_1BE04B6F4();

                          (v199)(v165, v194);
                          v167 = swift_allocObject();
                          v167[2] = v203;
                          v167[3] = v147;
                          v167[4] = v160;
                          v168 = v160;
                          sub_1BE048964();
                          v169 = sub_1BE052404();

                          v208 = sub_1BD82AFB0;
                          v209 = v167;
                          aBlock = MEMORY[0x1E69E9820];
                          v205 = 1107296256;
                          v206 = sub_1BD198918;
                          v207 = &block_descriptor_131_1;
                          v170 = _Block_copy(&aBlock);

                          v171 = [v163 actionWithTitle:v169 style:1 handler:v170];
                          _Block_release(v170);

                          v172 = v198;
                          [v198 addAction_];
                          v173 = v183;
                          [v183 presentViewController:v172 animated:1 completion:0];
                          swift_unknownObjectRelease();

                          return sub_1BD0DE53C(v202, &unk_1EBD3CF70);
                        }

LABEL_59:
                        __break(1u);
                        return result;
                      }

LABEL_58:
                      __break(1u);
                      goto LABEL_59;
                    }

LABEL_57:
                    __break(1u);
                    goto LABEL_58;
                  }

LABEL_56:
                  __break(1u);
                  goto LABEL_57;
                }

LABEL_55:
                __break(1u);
                goto LABEL_56;
              }

              swift_unknownObjectRelease();
            }

            v123 = [objc_opt_self() errorWithSeverity_];
            v124 = sub_1BE052404();
            [v123 addInternalDebugDescription_];

            v126 = v197;
            v125 = v198;
            *v198 = v123;
            v127 = v199;
            (*(v126 + 104))(v125, *MEMORY[0x1E69B8168], v199);
            v128 = v123;
            v203(v125);

            (*(v126 + 8))(v125, v127);
            return sub_1BD0DE53C(v101, &unk_1EBD3CF70);
          }

LABEL_35:
          v116 = PKPaymentCardIneligibleReasonForEligibilityStatus(v50);
          v117 = swift_allocObject();
          *(v117 + 16) = v203;
          *(v117 + 24) = v201;
          sub_1BE048964();
          v118 = v116;
          v119 = v202;
          sub_1BD81938C(v118, v202, sub_1BD82AF4C, v117);

          return sub_1BD0DE53C(v119, &unk_1EBD3CF70);
        }

        __break(1u);
        goto LABEL_55;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  if (EnumCaseMultiPayload > 4)
  {
    v63 = v201;
    v64 = v203;
    if (EnumCaseMultiPayload == 5)
    {
      v65 = *v39;
      v67 = v197;
      v66 = v198;
      *v198 = v65;
      v68 = v199;
      (*(v67 + 104))(v66, *MEMORY[0x1E69B8168], v199);
      v69 = v65;
      v64(v66);

      return (*(v67 + 8))(v66, v68);
    }

    v95 = *v39;
    sub_1BE048964();
    sub_1BD829BC0(v95, v200, v64, v63);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v41 = *v39;
      sub_1BE04BD64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1BE0B7020;
      *(v42 + 32) = v41;
      v43 = v41;
      sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
      v44 = sub_1BE04BC74();
      v45 = v200;
      v46 = *&v200[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses];
      *&v200[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = v44;

      v47 = v201;
      sub_1BE048964();
      sub_1BD827494(v45, v203, v47);
    }

    v93 = *v39;
    v94 = v201;
    sub_1BE048964();
    sub_1BD827FAC(v93, v200, v203, v94);
  }
}

uint64_t sub_1BD825424(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45588);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v16 - v13;
  sub_1BD0E5E8C(0, &qword_1EBD45688);
  sub_1BE04BF44();
  a2(v14);
  (*(v11 + 8))(v14, v10);
  sub_1BD814F6C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BD826868(a5, a7, result, &off_1F3BB4FF0);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD825574(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v14 - v12;
  sub_1BD0E5E8C(0, a7);
  sub_1BE04BF44();
  a2(v13);
  (*(v10 + 8))(v13, v9);
  sub_1BD81521C();
}

uint64_t sub_1BD825680(void (*a1)(char *), uint64_t a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v11 - v8;
  *(&v11 - v8) = 0;
  (*(v5 + 104))(&v11 - v8, *MEMORY[0x1E69B8168], v4, v7);
  a1(v9);
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1BD825780(char a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45588);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v11 - v8;
  if (a1)
  {
    (*(v5 + 104))(v9, *MEMORY[0x1E69B8160], v4, v7);
  }

  else
  {
    sub_1BD0E5E8C(0, &qword_1EBD45688);
    sub_1BE04BF44();
  }

  a2(v9);
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1BD8258B0(uint64_t a1, void (*a2)(void *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45588);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v21 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = (&v21 - v13);
  (*(v10 + 16))(&v21 - v13, a1, v9, v12);
  v15 = (*(v10 + 88))(v14, v9);
  if (v15 == *MEMORY[0x1E69B8170])
  {
    (*(v10 + 96))(v14, v9);
    (*(v5 + 104))(v8, *MEMORY[0x1E69B8160], v4);
    a2(v8);
    (*(v5 + 8))(v8, v4);
    v16 = sub_1BE04C534();
    return (*(*(v16 - 8) + 8))(v14, v16);
  }

  else if (v15 == *MEMORY[0x1E69B8168])
  {
    v18 = v15;
    (*(v10 + 96))(v14, v9);
    v19 = *v14;
    *v8 = v19;
    (*(v5 + 104))(v8, v18, v4);
    v20 = v19;
    a2(v8);

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    *v8 = 0;
    (*(v5 + 104))(v8);
    a2(v8);
    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v14, v9);
  }
}

uint64_t sub_1BD825BD4(void *a1, char a2, void (*a3)(char *), uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD455A0);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v20 - v13;
  if (!a2)
  {
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD550D0) + 48);
    v17 = *MEMORY[0x1E69B8308];
    v18 = sub_1BE04C534();
    (*(*(v18 - 8) + 104))(v14, v17, v18);
    *&v14[v16] = a1;
    (*(v10 + 104))(v14, *MEMORY[0x1E69B8170], v9);
    sub_1BE048C84();
LABEL_8:
    a3(v14);
    return (*(v10 + 8))(v14, v9);
  }

  if (a2 != 1)
  {
    *v14 = a1;
    (*(v10 + 104))(v14, *MEMORY[0x1E69B8168], v9, v12);
    v19 = a1;
    goto LABEL_8;
  }

  sub_1BE048964();
  sub_1BD8287C0(a1, v4, a3, a4);
}

uint64_t sub_1BD825DE8(char a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD455A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v18 - v11;
  if (a1)
  {
    if (PKDynamicSEAllocationFakeFullSE())
    {
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD550D0) + 48);
      v14 = *MEMORY[0x1E69B8308];
      v15 = sub_1BE04C534();
      (*(*(v15 - 8) + 104))(v12, v14, v15);
      *&v12[v13] = MEMORY[0x1E69E7CC0];
      v16 = MEMORY[0x1E69B8170];
    }

    else
    {
      v16 = MEMORY[0x1E69B8160];
    }

    (*(v5 + 104))(v12, *v16, v4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45680);
    sub_1BE04BF44();
    v12 = v8;
  }

  a2(v12);
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_1BD825FC4(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v3 = sub_1BE04AA64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04C534();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v23 - v16;
  v18 = sub_1BE04BD84();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD82B3DC(v24, v21, MEMORY[0x1E69B8108]);
  if ((*(v4 + 48))(v21, 1, v3) == 1)
  {
    (*(v9 + 104))(v12, *MEMORY[0x1E69B8308], v8);
    sub_1BE04BF54();
    (*(v9 + 8))(v12, v8);
    v25(v17);
    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    (*(v4 + 32))(v7, v21, v3);
    sub_1BD819C44(v7, v25, v26);
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1BD8262CC(void *a1, char a2, void (*a3)(void *))
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD455B0);
  v9 = *(v8 - 8);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = (&v27 - v12);
  if (a2)
  {
    *v13 = a1;
    v14 = MEMORY[0x1E69B8168];
  }

  else
  {
    v15 = *(v4 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses);
    if (v15)
    {
      v16 = v15;
      sub_1BE04BC54();
    }

    else
    {
      *(v4 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses) = a1;
      v17 = a1;
    }

    [*(v4 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel) unhideFieldsWithEnteredValues];
    v18 = v4 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v18 + 8);
      ObjectType = swift_getObjectType();
      (*(v19 + 16))(ObjectType, v19);
      swift_unknownObjectRelease();
    }

    v21 = sub_1BE04BC84();
    sub_1BD826510(v21);

    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D68) + 48);
    v23 = *MEMORY[0x1E69B8308];
    v24 = sub_1BE04C534();
    (*(*(v24 - 8) + 104))(v13, v23, v24);
    *(v13 + v22) = a1;
    v14 = MEMORY[0x1E69B8170];
  }

  (*(v9 + 104))(v13, *v14, v8, v11);
  v25 = a1;
  a3(v13);
  return (*(v9 + 8))(v13, v8);
}

void sub_1BD826510(void *a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04B944();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BB94();
  v12 = sub_1BE04B8E4();
  (*(v8 + 8))(v11, v7);
  if ([a1 supportsDeviceAssessmentAccordingToService_] && (PKHasSeenDeviceAssessmentEducation() & 1) == 0)
  {
    sub_1BE04D0F4();
    v13 = sub_1BE04D204();
    v14 = sub_1BE052C54();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1BD026000, v13, v14, "Pass supports device assessment, marking device assessment education acknowledgment.", v15, 2u);
      MEMORY[0x1BFB45F20](v15, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    PKSetHasSeenDeviceAssessmentEducation();
  }
}

void sub_1BD826868(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  objc_allocWithZone(swift_getObjectType());
  v8 = sub_1BE048964();
  v12 = sub_1BD87305C(v8, 1, a2);

  v9 = a3 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(a1, a4, v12, &off_1F3BC0A18, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1BD826978(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v96 = a6;
  v95 = a5;
  v94 = a4;
  v111 = a3;
  v112 = a2;
  v7 = sub_1BE051F54();
  v103 = *(v7 - 8);
  v104 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v101 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1BE051FA4();
  v100 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v10);
  v99 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1BE051FC4();
  v98 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v12);
  v93 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v97 = &v92 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v109 = *(v17 - 8);
  v110 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v92 - v19;
  v21 = sub_1BE04D214();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v106 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v92 - v27;
  sub_1BE04D0D4();
  v29 = a1;
  v30 = sub_1BE04D204();
  v31 = sub_1BE052C54();

  v32 = os_log_type_enabled(v30, v31);
  v107 = v22;
  v108 = v21;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v33 = 136315138;
    if (*&v29[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      v35 = sub_1BE04C0A4();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0xE000000000000000;
    }

    v39 = sub_1BD123690(v35, v37, aBlock);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_1BD026000, v30, v31, "[%s] Coordinator did complete", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x1BFB45F20](v34, -1, -1);
    MEMORY[0x1BFB45F20](v33, -1, -1);

    v38 = *(v107 + 8);
    v38(v28, v108);
  }

  else
  {

    v38 = *(v22 + 8);
    v38(v28, v21);
  }

  v40 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer;
  if (*&v29[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
  {
    sub_1BE048964();
    v41 = sub_1BE04C0C4();

    v42 = (v41 >> 8) & 1;
  }

  else
  {
    v42 = 0;
  }

  sub_1BE04BF44();
  v112(v20);
  (*(v109 + 8))(v20, v110);
  sub_1BD81679C();
  v43 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex;
  v44 = *&v29[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex];
  sub_1BE048964();
  v45 = sub_1BE04C3A4();

  v46 = *(v45 + 16);

  if (v44 >= v46 - 1)
  {
    v58 = &v29[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v59 = *(v58 + 1);
      ObjectType = swift_getObjectType();
      LOBYTE(aBlock[0]) = 12;
      (*(*(v59 + 8) + 8))(aBlock, 0, ObjectType);
      swift_unknownObjectRelease();
    }

    v61 = *&v29[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses];
    if (!v61)
    {
      v74 = *&v29[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
      if (v74)
      {
        [v74 reportProvisioningCompleteWithSuccess_];
      }

      v61 = [objc_opt_self() errorWithSeverity_];
      v75 = sub_1BE052404();
      [v61 addInternalDebugDescription_];

      v76 = &v29[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v66 = *(v76 + 1);
        v67 = swift_getObjectType();
        v68 = *(v66 + 8);
        v69 = v61;
        v70 = v29;
        v71 = v61;
        v72 = 1;
        goto LABEL_27;
      }

LABEL_28:

      return;
    }

    v62 = *&v29[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
    if (v62)
    {
      v63 = v61;
      v64 = sub_1BE04BC84();
      [v62 setProvisionedPass_];

      [v62 reportProvisioningCompleteWithSuccess_];
      if (v42)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v77 = v61;
      if (v42)
      {
LABEL_20:
        v65 = &v29[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v66 = *(v65 + 1);
          v67 = swift_getObjectType();
          v68 = *(v66 + 8);
          v69 = v61;
          v70 = v29;
          v71 = v61;
          v72 = 0;
LABEL_27:
          v68(v70, v71, v72, v67, v66);
          swift_unknownObjectRelease();

          return;
        }

        goto LABEL_28;
      }
    }

    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v111 = sub_1BE052D54();
    v78 = v93;
    sub_1BE051FB4();
    v79 = v97;
    sub_1BE051FF4();
    v112 = *(v98 + 8);
    (v112)(v78, v105);
    v80 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v81 = swift_allocObject();
    *(v81 + 16) = v80;
    *(v81 + 24) = v61;
    aBlock[4] = v95;
    aBlock[5] = v81;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = v96;
    v82 = _Block_copy(aBlock);
    v83 = v61;

    v84 = v99;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
    v85 = v101;
    v86 = v104;
    sub_1BE053664();
    v87 = v111;
    MEMORY[0x1BFB3FD90](v79, v84, v85, v82);
    _Block_release(v82);

    (*(v103 + 8))(v85, v86);
    (*(v100 + 8))(v84, v102);
    (v112)(v79, v105);
    return;
  }

  v47 = *&v29[v43];
  v48 = v47 + 1;
  if (__OFADD__(v47, 1))
  {
    __break(1u);
  }

  else
  {
    *&v29[v43] = v48;
    v49 = v106;
    sub_1BE04D0D4();
    v50 = v29;
    v51 = sub_1BE04D204();
    v52 = sub_1BE052C54();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v53 = 136315394;
      if (*&v29[v40])
      {
        sub_1BE048964();
        v55 = sub_1BE04C0A4();
        v57 = v56;
      }

      else
      {
        v55 = 0;
        v57 = 0xE000000000000000;
      }

      v88 = sub_1BD123690(v55, v57, aBlock);

      *(v53 + 4) = v88;
      *(v53 + 12) = 2048;
      *(v53 + 14) = v48;
      _os_log_impl(&dword_1BD026000, v51, v52, "[%s] Coordinator completed provisioning and moving on to credential at index %ld", v53, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x1BFB45F20](v54, -1, -1);
      MEMORY[0x1BFB45F20](v53, -1, -1);

      v73 = v106;
    }

    else
    {

      v73 = v49;
    }

    v38(v73, v108);
    v89 = *&v50[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
    if (v89)
    {
      v90 = *&v50[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
    }

    else
    {
      v90 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
      v89 = 0;
    }

    v91 = v89;
    sub_1BD8145A8(v90);
  }
}

void sub_1BD827494(void *a1, void (*a2)(char *), uint64_t a3)
{
  v104 = a3;
  v105 = a2;
  v4 = sub_1BE051F54();
  v96 = *(v4 - 8);
  v97 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v94 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1BE051FA4();
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v7);
  v92 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1BE051FC4();
  v91 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v9);
  v89 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v90 = &v89 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45588);
  v102 = *(v14 - 8);
  v103 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v89 - v16;
  v18 = sub_1BE04D214();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v99 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v89 - v24;
  sub_1BE04D0D4();
  v26 = a1;
  v27 = sub_1BE04D204();
  v28 = sub_1BE052C54();

  v29 = os_log_type_enabled(v27, v28);
  v100 = v19;
  v101 = v18;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136315138;
    if (*&v26[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      v32 = sub_1BE04C0A4();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0xE000000000000000;
    }

    v36 = sub_1BD123690(v32, v34, aBlock);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_1BD026000, v27, v28, "[%s] Coordinator did complete", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x1BFB45F20](v31, -1, -1);
    MEMORY[0x1BFB45F20](v30, -1, -1);

    v35 = *(v100 + 8);
    v35(v25, v101);
  }

  else
  {

    v35 = *(v19 + 8);
    v35(v25, v18);
  }

  v37 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer;
  if (*&v26[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
  {
    sub_1BE048964();
    v38 = sub_1BE04C0C4();

    v39 = (v38 >> 8) & 1;
  }

  else
  {
    v39 = 0;
  }

  sub_1BD0E5E8C(0, &qword_1EBD45688);
  sub_1BE04BF44();
  v105(v17);
  (*(v102 + 8))(v17, v103);
  sub_1BD81679C();
  v40 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex;
  v41 = *&v26[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex];
  sub_1BE048964();
  v42 = sub_1BE04C3A4();

  v43 = *(v42 + 16);

  if (v41 >= v43 - 1)
  {
    v55 = &v26[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v56 = *(v55 + 1);
      ObjectType = swift_getObjectType();
      LOBYTE(aBlock[0]) = 12;
      (*(*(v56 + 8) + 8))(aBlock, 0, ObjectType);
      swift_unknownObjectRelease();
    }

    v58 = *&v26[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses];
    if (!v58)
    {
      v71 = *&v26[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
      if (v71)
      {
        [v71 reportProvisioningCompleteWithSuccess_];
      }

      v58 = [objc_opt_self() errorWithSeverity_];
      v72 = sub_1BE052404();
      [v58 addInternalDebugDescription_];

      v73 = &v26[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v63 = *(v73 + 1);
        v64 = swift_getObjectType();
        v65 = *(v63 + 8);
        v66 = v58;
        v67 = v26;
        v68 = v58;
        v69 = 1;
        goto LABEL_27;
      }

LABEL_28:

      return;
    }

    v59 = *&v26[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
    if (v59)
    {
      v60 = v58;
      v61 = sub_1BE04BC84();
      [v59 setProvisionedPass_];

      [v59 reportProvisioningCompleteWithSuccess_];
      if (v39)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v74 = v58;
      if (v39)
      {
LABEL_20:
        v62 = &v26[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v63 = *(v62 + 1);
          v64 = swift_getObjectType();
          v65 = *(v63 + 8);
          v66 = v58;
          v67 = v26;
          v68 = v58;
          v69 = 0;
LABEL_27:
          v65(v67, v68, v69, v64, v63);
          swift_unknownObjectRelease();

          return;
        }

        goto LABEL_28;
      }
    }

    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v104 = sub_1BE052D54();
    v75 = v89;
    sub_1BE051FB4();
    v76 = v90;
    sub_1BE051FF4();
    v105 = *(v91 + 8);
    (v105)(v75, v98);
    v77 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v78 = swift_allocObject();
    *(v78 + 16) = v77;
    *(v78 + 24) = v58;
    aBlock[4] = sub_1BD82B00C;
    aBlock[5] = v78;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_153_0;
    v79 = _Block_copy(aBlock);
    v80 = v58;

    v81 = v92;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
    v82 = v94;
    v83 = v97;
    sub_1BE053664();
    v84 = v104;
    MEMORY[0x1BFB3FD90](v76, v81, v82, v79);
    _Block_release(v79);

    (*(v96 + 8))(v82, v83);
    (*(v93 + 8))(v81, v95);
    (v105)(v76, v98);
    return;
  }

  v44 = *&v26[v40];
  v45 = v44 + 1;
  if (__OFADD__(v44, 1))
  {
    __break(1u);
  }

  else
  {
    *&v26[v40] = v45;
    v46 = v99;
    sub_1BE04D0D4();
    v47 = v26;
    v48 = sub_1BE04D204();
    v49 = sub_1BE052C54();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v50 = 136315394;
      if (*&v26[v37])
      {
        sub_1BE048964();
        v52 = sub_1BE04C0A4();
        v54 = v53;
      }

      else
      {
        v52 = 0;
        v54 = 0xE000000000000000;
      }

      v85 = sub_1BD123690(v52, v54, aBlock);

      *(v50 + 4) = v85;
      *(v50 + 12) = 2048;
      *(v50 + 14) = v45;
      _os_log_impl(&dword_1BD026000, v48, v49, "[%s] Coordinator completed provisioning and moving on to credential at index %ld", v50, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x1BFB45F20](v51, -1, -1);
      MEMORY[0x1BFB45F20](v50, -1, -1);

      v70 = v99;
    }

    else
    {

      v70 = v46;
    }

    v35(v70, v101);
    v86 = *&v47[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
    if (v86)
    {
      v87 = *&v47[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
    }

    else
    {
      v87 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
      v86 = 0;
    }

    v88 = v86;
    sub_1BD8145A8(v87);
  }
}

uint64_t sub_1BD827FAC(uint64_t a1, char *a2, void (*a3)(char *), uint64_t a4)
{
  v8 = sub_1BE04B944();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v78 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45588);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v12);
  v68 = &v66 - v13;
  v14 = sub_1BE04CFC4();
  v76 = *(v14 - 8);
  v77 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v74 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v66 - v19;
  v75 = sub_1BE04CFE4();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v21);
  v84 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1BE04D214();
  v23 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v24);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  v72 = a3;
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
  v82 = v20;
  v83 = v27;
  if (*&a2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
  {
    sub_1BE048964();
    sub_1BE048964();
    v79 = sub_1BE04C0A4();
    v29 = v28;
  }

  else
  {
    sub_1BE048964();
    v79 = 0;
    v29 = 0xE000000000000000;
  }

  v71 = a4;
  sub_1BE04D0D4();
  sub_1BE048C84();
  sub_1BE048C84();
  v30 = sub_1BE04D204();
  v31 = sub_1BE052C54();

  v32 = os_log_type_enabled(v30, v31);
  v67 = a1;
  v81 = v29;
  if (v32)
  {
    v33 = v29;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v66 = a2;
    v36 = v35;
    aBlock[0] = v35;
    *v34 = 136315394;
    *(v34 + 4) = sub_1BD123690(v79, v33, aBlock);
    *(v34 + 12) = 2080;
    v37 = MEMORY[0x1BFB3F7F0](a1, MEMORY[0x1E69E6158]);
    v39 = v9;
    v40 = v8;
    v41 = sub_1BD123690(v37, v38, aBlock);

    *(v34 + 14) = v41;
    v8 = v40;
    v9 = v39;
    _os_log_impl(&dword_1BD026000, v30, v31, "[%s] Showing SE Full Clean Up UI For %s", v34, 0x16u);
    swift_arrayDestroy();
    v42 = v36;
    a2 = v66;
    MEMORY[0x1BFB45F20](v42, -1, -1);
    MEMORY[0x1BFB45F20](v34, -1, -1);
  }

  (*(v23 + 8))(v26, v80);
  v43 = v82;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v45 = Strong;
    v46 = a2;
    v47 = *&a2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context];
    sub_1BE04B694();
    sub_1BE04CFB4();
    v48 = sub_1BE04CFD4();
    v49 = sub_1BE052E34();
    if (sub_1BE053494())
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = sub_1BE04CFA4();
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v48, v49, v51, "provisioning:getSecureElementSnapshot", "", v50, 2u);
      MEMORY[0x1BFB45F20](v50, -1, -1);
    }

    v53 = v76;
    v52 = v77;
    (*(v76 + 16))(v74, v43, v77);
    sub_1BE04D024();
    swift_allocObject();
    v54 = sub_1BE04D014();
    (*(v53 + 8))(v43, v52);
    (*(v73 + 8))(v84, v75);
    v55 = v78;
    sub_1BE04BB94();
    v56 = sub_1BE04B934();
    (*(v9 + 8))(v55, v8);
    if ([v56 respondsToSelector_])
    {
      v57 = swift_allocObject();
      v58 = v79;
      v57[2] = v54;
      v57[3] = v58;
      v59 = v67;
      v57[4] = v81;
      v57[5] = v59;
      v60 = v83;
      v57[6] = sub_1BD82B014;
      v57[7] = v60;
      v57[8] = v47;
      v57[9] = v45;
      v57[10] = v46;
      aBlock[4] = sub_1BD82B684;
      aBlock[5] = v57;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD715170;
      aBlock[3] = &block_descriptor_163_1;
      v61 = _Block_copy(aBlock);
      sub_1BE048C84();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      v62 = v45;
      v63 = v46;
      sub_1BE048964();

      [v56 currentSecureElementSnapshot_];
      _Block_release(v61);

      swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  else
  {

    sub_1BD0E5E8C(0, &qword_1EBD45688);
    v65 = v68;
    sub_1BE04BF44();
    v72(v65);
    (*(v69 + 8))(v65, v70);
  }
}

uint64_t sub_1BD8287C0(uint64_t a1, char *a2, void (*a3)(char *), uint64_t a4)
{
  v8 = sub_1BE04B944();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v78 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD455A0);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v12);
  v68 = &v66 - v13;
  v14 = sub_1BE04CFC4();
  v76 = *(v14 - 8);
  v77 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v74 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v66 - v19;
  v75 = sub_1BE04CFE4();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v21);
  v84 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1BE04D214();
  v23 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v24);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  v72 = a3;
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
  v82 = v20;
  v83 = v27;
  if (*&a2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
  {
    sub_1BE048964();
    sub_1BE048964();
    v79 = sub_1BE04C0A4();
    v29 = v28;
  }

  else
  {
    sub_1BE048964();
    v79 = 0;
    v29 = 0xE000000000000000;
  }

  v71 = a4;
  sub_1BE04D0D4();
  sub_1BE048C84();
  sub_1BE048C84();
  v30 = sub_1BE04D204();
  v31 = sub_1BE052C54();

  v32 = os_log_type_enabled(v30, v31);
  v67 = a1;
  v81 = v29;
  if (v32)
  {
    v33 = v29;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v66 = a2;
    v36 = v35;
    aBlock[0] = v35;
    *v34 = 136315394;
    *(v34 + 4) = sub_1BD123690(v79, v33, aBlock);
    *(v34 + 12) = 2080;
    v37 = MEMORY[0x1BFB3F7F0](a1, MEMORY[0x1E69E6158]);
    v39 = v9;
    v40 = v8;
    v41 = sub_1BD123690(v37, v38, aBlock);

    *(v34 + 14) = v41;
    v8 = v40;
    v9 = v39;
    _os_log_impl(&dword_1BD026000, v30, v31, "[%s] Showing SE Full Clean Up UI For %s", v34, 0x16u);
    swift_arrayDestroy();
    v42 = v36;
    a2 = v66;
    MEMORY[0x1BFB45F20](v42, -1, -1);
    MEMORY[0x1BFB45F20](v34, -1, -1);
  }

  (*(v23 + 8))(v26, v80);
  v43 = v82;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v45 = Strong;
    v46 = a2;
    v47 = *&a2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context];
    sub_1BE04B694();
    sub_1BE04CFB4();
    v48 = sub_1BE04CFD4();
    v49 = sub_1BE052E34();
    if (sub_1BE053494())
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = sub_1BE04CFA4();
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v48, v49, v51, "provisioning:getSecureElementSnapshot", "", v50, 2u);
      MEMORY[0x1BFB45F20](v50, -1, -1);
    }

    v53 = v76;
    v52 = v77;
    (*(v76 + 16))(v74, v43, v77);
    sub_1BE04D024();
    swift_allocObject();
    v54 = sub_1BE04D014();
    (*(v53 + 8))(v43, v52);
    (*(v73 + 8))(v84, v75);
    v55 = v78;
    sub_1BE04BB94();
    v56 = sub_1BE04B934();
    (*(v9 + 8))(v55, v8);
    if ([v56 respondsToSelector_])
    {
      v57 = swift_allocObject();
      v58 = v79;
      v57[2] = v54;
      v57[3] = v58;
      v59 = v67;
      v57[4] = v81;
      v57[5] = v59;
      v60 = v83;
      v57[6] = sub_1BD82AE74;
      v57[7] = v60;
      v57[8] = v47;
      v57[9] = v45;
      v57[10] = v46;
      aBlock[4] = sub_1BD82AE7C;
      aBlock[5] = v57;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD715170;
      aBlock[3] = &block_descriptor_90_1;
      v61 = _Block_copy(aBlock);
      sub_1BE048C84();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      v62 = v45;
      v63 = v46;
      sub_1BE048964();

      [v56 currentSecureElementSnapshot_];
      _Block_release(v61);

      swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45680);
    v65 = v68;
    sub_1BE04BF44();
    v72(v65);
    (*(v69 + 8))(v65, v70);
  }
}

uint64_t sub_1BD828FD0(uint64_t a1)
{
  if (a1 == 2 || a1 == 1)
  {
    return sub_1BE052434();
  }

  sub_1BE053834();

  v1 = sub_1BE053B24();
  MEMORY[0x1BFB3F610](v1);

  return 0xD00000000000002CLL;
}

uint64_t sub_1BD8290F8(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (a1)
  {
    v5 = [a1 aclType];
    v6 = 2 * (v5 == 2);
    if (v5 == 1)
    {
      v6 = 1;
    }

    if (a2)
    {
      a1 = 0;
    }

    else
    {
      a1 = v6;
    }
  }

  return v3(a1);
}

id sub_1BD829158(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v92 = a4;
  v90 = a3;
  v88 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v86 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v87 = &v76 - v10;
  v11 = sub_1BE04BD74();
  v93 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v76 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v76 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v89 = &v76 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v76 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v76 - v32;
  v34 = sub_1BE04A844();
  v91 = objc_opt_self();
  v94 = [v91 errorWithUnderlyingError:v34 defaultSeverity:5];

  sub_1BD112BE0(&unk_1F3B8F6D8);
  v96 = a1;
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  type metadata accessor for CIDVUIBiometricBindingEnrollmentError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return v94;
  }

  v85 = v11;
  v36 = v95;
  v96 = v95;
  sub_1BD82B4EC(&qword_1EBD38068, 255, type metadata accessor for CIDVUIBiometricBindingEnrollmentError);
  sub_1BE04A814();
  v37 = sub_1BD6CF234(v95);

  if ((v37 & 1) == 0)
  {

    return v94;
  }

  v96 = v36;
  sub_1BE04A814();
  v84 = v36;
  if (v95 != -2)
  {
    v55 = *MEMORY[0x1E69B80E8];
    v56 = v93;
    v57 = *(v93 + 104);
    v58 = v85;
    v57(v18, v55, v85);
    result = PKPassKitBundle();
    if (result)
    {
      v59 = result;
      v86 = sub_1BE04B6F4();
      v87 = v60;

      v61 = *(v56 + 8);
      v93 = v56 + 8;
      v61(v18, v58);
      v62 = v90;
      if (v90)
      {
        v14 = v89;
        v57(v89, v55, v58);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_1BE0B69E0;
        *(v63 + 56) = MEMORY[0x1E69E6158];
        *(v63 + 64) = sub_1BD110550();
        *(v63 + 32) = v88;
        *(v63 + 40) = v62;
        sub_1BE048C84();
        sub_1BE04B714();
      }

      else
      {
        v57(v14, v55, v58);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v64 = result;
        sub_1BE04B6F4();

        v58 = v85;
      }

      v61(v14, v58);
      v65 = sub_1BE052404();

      v66 = sub_1BE052404();

      v67 = [v91 errorWithTitle:v65 message:v66 severity:5];

      return v67;
    }

    goto LABEL_25;
  }

  v77 = v22;
  v38 = -13;
  if ((v92 & 1) == 0)
  {
    v38 = -12;
  }

  v83 = v38;
  v39 = *MEMORY[0x1E69B80E8];
  v40 = *(v93 + 104);
  v41 = v85;
  v40(v33, v39, v85);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v43 = result;
  v79 = sub_1BE04B6F4();
  v80 = v44;

  v45 = *(v93 + 8);
  v93 += 8;
  v45(v33, v41);
  v81 = v39;
  v82 = v40;
  v40(v29, v39, v41);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v46 = result;
  v47 = v41;
  v78 = sub_1BE04B6F4();
  v83 = v48;

  v45(v29, v41);
  v49 = v87;
  sub_1BE04AA54();

  v50 = v90;
  v51 = v45;
  if (v90)
  {
    v52 = v89;
    v53 = v47;
    v82(v89, v81, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1BE0B69E0;
    *(v54 + 56) = MEMORY[0x1E69E6158];
    *(v54 + 64) = sub_1BD110550();
    *(v54 + 32) = v88;
    *(v54 + 40) = v50;
    sub_1BE048C84();
    v51 = v45;
    sub_1BE04B714();

LABEL_20:
    v69 = v86;
    v51(v52, v53);
    sub_1BD38F438(v49, v69);
    v70 = sub_1BE052404();

    v71 = sub_1BE052404();

    v72 = sub_1BE052404();

    v73 = sub_1BE04AA64();
    v74 = *(v73 - 8);
    v75 = 0;
    if ((*(v74 + 48))(v69, 1, v73) != 1)
    {
      v75 = sub_1BE04A9C4();
      (*(v74 + 8))(v69, v73);
    }

    v67 = [v91 errorWithTitle:v70 message:v71 severity:5 recoveryTitle:v72 recoveryURL:v75];

    sub_1BD0DE53C(v49, &unk_1EBD3CF70);
    return v67;
  }

  v52 = v77;
  v82(v77, v81, v47);
  result = PKPassKitBundle();
  if (result)
  {
    v68 = result;
    sub_1BE04B6F4();

    v53 = v85;
    goto LABEL_20;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_1BD829BC0(uint64_t a1, char *a2, void (*a3)(void *), uint64_t a4)
{
  v113 = a1;
  v101 = sub_1BE04B944();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v7);
  v99 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1BE04BDB4();
  v105 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v9);
  v116 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04BDF4();
  v12 = *(v11 - 8);
  v118 = v11;
  v119 = v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v115 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD55100);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v99 - v17;
  v103 = sub_1BE04BAC4();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v19);
  v21 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE04C534();
  v107 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v109 = *(v26 - 8);
  v110 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v108 = (&v99 - v28);
  v106 = sub_1BE04D214();
  v29 = *(v106 - 1);
  MEMORY[0x1EEE9AC00](v106, v30);
  v32 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = swift_allocObject();
  *(v33 + 16) = a3;
  *(v33 + 24) = a4;
  v111 = v33;
  v112 = v22;
  v34 = a2;
  if (*&a2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
  {
    sub_1BE048964();
    sub_1BE048964();
    v104 = sub_1BE04C0A4();
    v114 = v35;
  }

  else
  {
    sub_1BE048964();
    v104 = 0;
    v114 = 0xE000000000000000;
  }

  v36 = v113;
  v37 = *(v113 + 16);
  if (!v37)
  {
    sub_1BE04D0D4();
    v63 = v114;
    sub_1BE048C84();
    v64 = sub_1BE04D204();
    v65 = sub_1BE052C54();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v103 = a4;
      v67 = v66;
      v68 = a3;
      v69 = swift_slowAlloc();
      aBlock = v69;
      *v67 = 136315138;
      v70 = sub_1BD123690(v104, v63, &aBlock);

      *(v67 + 4) = v70;
      _os_log_impl(&dword_1BD026000, v64, v65, "[%s] Successfully resolved all missing requirements", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      v71 = v69;
      a3 = v68;
      MEMORY[0x1BFB45F20](v71, -1, -1);
      MEMORY[0x1BFB45F20](v67, -1, -1);
    }

    else
    {
    }

    (*(v29 + 8))(v32, v106);
    v95 = v109;
    v94 = v110;
    v97 = v107;
    v96 = v108;
    v98 = v112;
    (*(v107 + 13))(v25, *MEMORY[0x1E69B8308], v112);
    sub_1BE04BF54();
    (*(v97 + 1))(v25, v98);
    sub_1BD8258B0(v96, a3);
    (*(v95 + 8))(v96, v94);
LABEL_25:

    return;
  }

  v38 = sub_1BD68DC7C(v113);
  if (v39 == 2 || (v40 = v38, (v41 = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    aBlock = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F500);
    sub_1BD0DE4F4(&qword_1EBD55110, &unk_1EBD3F500);
    sub_1BE052674();
    v51 = (*(v119 + 48))(v18, 1, v118);
    sub_1BD0DE53C(v18, &unk_1EBD55100);
    if (v51 != 1 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (v53 = Strong, v54 = [Strong navigationController], v53, v54))
    {
      v55 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion;
      v56 = v111;
      if (*&v34[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion])
      {
        sub_1BE048964();
        sub_1BE04C244();

        *&v34[v55] = 0;
      }

      sub_1BE04C264();
      v57 = v99;
      sub_1BE04BB94();
      v58 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v59 = swift_allocObject();
      v60 = v104;
      v59[2] = v58;
      v59[3] = v60;
      v59[4] = v114;
      v59[5] = v113;
      v59[6] = v34;
      v59[7] = sub_1BD82B0C0;
      v59[8] = v56;
      v59[9] = v54;
      sub_1BE048C84();
      v61 = v34;
      sub_1BE048964();
      sub_1BE048964();
      v62 = v54;
      MEMORY[0x1BFB392E0](v57, sub_1BD82B0C8, v59);

      (*(v100 + 8))(v57, v101);
    }

    else
    {
      v107 = a3;
      v103 = a4;

      v106 = [objc_opt_self() errorWithCommonType:1 severity:5];
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1BD03B254(0, v37, 0);
      v72 = aBlock;
      v73 = *(v119 + 16);
      v74 = v113 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
      v113 = *(v119 + 72);
      v114 = v73;
      v112 = (v105 + 8);
      v119 += 16;
      v75 = (v119 - 8);
      do
      {
        v76 = v115;
        v77 = v118;
        v114(v115, v74, v118);
        v78 = v116;
        sub_1BE04BDE4();
        v79 = sub_1BE04BDA4();
        v81 = v80;
        (*v112)(v78, v117);
        (*v75)(v76, v77);
        aBlock = v72;
        v83 = *(v72 + 16);
        v82 = *(v72 + 24);
        if (v83 >= v82 >> 1)
        {
          sub_1BD03B254((v82 > 1), v83 + 1, 1);
          v72 = aBlock;
        }

        *(v72 + 16) = v83 + 1;
        v84 = v72 + 16 * v83;
        *(v84 + 32) = v79;
        *(v84 + 40) = v81;
        v74 += v113;
        --v37;
      }

      while (v37);
      aBlock = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
      sub_1BD0DE4F4(&qword_1EBD55120, &unk_1EBD45AA0);
      v85 = sub_1BE0522E4();
      v87 = v86;

      aBlock = 0;
      v121 = 0xE000000000000000;
      sub_1BE053834();

      aBlock = 0xD000000000000016;
      v121 = 0x80000001BE123A30;
      MEMORY[0x1BFB3F610](v85, v87);

      v88 = sub_1BE052404();

      v89 = v106;
      [v106 addInternalDebugDescription_];

      v91 = v108;
      v90 = v109;
      *v108 = v89;
      v92 = v110;
      (*(v90 + 104))(v91, *MEMORY[0x1E69B8168], v110);
      v93 = v89;
      sub_1BD8258B0(v91, v107);

      (*(v90 + 8))(v91, v92);
    }

    goto LABEL_25;
  }

  v42 = v41;

  sub_1BE04BC34();
  v43 = sub_1BE04B9A4();
  (*(v102 + 8))(v21, v103);
  v44 = [objc_allocWithZone(PKSecurityCapabilitiesController) initWithRequirements:v40 context:v43];
  if (v44)
  {
    v45 = v44;
    v46 = swift_allocObject();
    v46[2] = v113;
    v46[3] = v34;
    v47 = v111;
    v46[4] = sub_1BD82B0C0;
    v46[5] = v47;
    v124 = sub_1BD82B0CC;
    v125 = v46;
    aBlock = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122 = sub_1BD68F010;
    v123 = &block_descriptor_176_0;
    v48 = _Block_copy(&aBlock);
    v49 = v45;
    v42 = v42;
    sub_1BE048C84();
    v50 = v34;
    sub_1BE048964();

    [v49 presentSecurityRepairFlowWithPresentingViewController:v42 completion:v48];

    _Block_release(v48);
  }

  else
  {
  }
}

uint64_t sub_1BD82A898(void *a1, char a2, void (*a3)(void *))
{
  v6 = sub_1BE04C534();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = (&v19 - v15);
  if (a2)
  {
    *v16 = a1;
    (*(v12 + 104))(v16, *MEMORY[0x1E69B8168], v11, v14);
    v17 = a1;
  }

  else
  {
    (*(v7 + 104))(v10, *MEMORY[0x1E69B8308], v6, v14);
    sub_1BE04BF54();
    (*(v7 + 8))(v10, v6);
  }

  a3(v16);
  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_1BD82AA88(void *a1, char a2, void (*a3)(void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45690);
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = (&v21 - v10);
  if (a2)
  {
    if (a2 != 1)
    {
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD55140) + 48);
      v18 = *MEMORY[0x1E69B8308];
      v19 = sub_1BE04C534();
      (*(*(v19 - 8) + 104))(v11, v18, v19);
      *(v11 + v17) = 0;
      (*(v7 + 104))(v11, *MEMORY[0x1E69B8170], v6);
      goto LABEL_7;
    }

    *v11 = a1;
    v12 = MEMORY[0x1E69B8168];
  }

  else
  {
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD55140) + 48);
    v14 = *MEMORY[0x1E69B8308];
    v15 = sub_1BE04C534();
    (*(*(v15 - 8) + 104))(v11, v14, v15);
    *(v11 + v13) = a1;
    v12 = MEMORY[0x1E69B8170];
  }

  (*(v7 + 104))(v11, *v12, v6, v9);
  v16 = a1;
LABEL_7:
  a3(v11);
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_1BD82ACB4(void *a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v12 = *(v11 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = (&v23 - v15);
  if (a2)
  {
    *v16 = a1;
    v17 = MEMORY[0x1E69B8168];
  }

  else
  {
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) + 48);
    v19 = *MEMORY[0x1E69B8308];
    v20 = sub_1BE04C534();
    (*(*(v20 - 8) + 104))(v16, v19, v20);
    *(v16 + v18) = a1;
    v17 = MEMORY[0x1E69B8170];
  }

  (*(v12 + 104))(v16, *v17, v11, v14);
  v21 = a1;
  a3(v16);
  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_1BD82AEB8(uint64_t a1)
{
  v3 = *(v1 + 24);
  [*(v1 + 16) dismissViewControllerAnimated:1 completion:0];
  return v3(a1);
}

uint64_t objectdestroy_86Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_178Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroy_169Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_142Tm_0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroy_115Tm()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD82B3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD82B4EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1BD82B68C@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v40 = type metadata accessor for BankAccountSheet();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccountServiceSheet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v38 - v12;
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v38 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v38 - v19;
  v38 = *(v1 + 8);
  sub_1BD834498(v1, &v38 - v19, type metadata accessor for AccountServiceSheet);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v41 = swift_allocObject();
  sub_1BD834430(v20, v41 + v21, type metadata accessor for AccountServiceSheet);
  sub_1BD834498(v1, v17, type metadata accessor for AccountServiceSheet);
  v22 = swift_allocObject();
  sub_1BD834430(v17, v22 + v21, type metadata accessor for AccountServiceSheet);
  sub_1BD834498(v1, v13, type metadata accessor for AccountServiceSheet);
  v23 = swift_allocObject();
  sub_1BD834430(v13, v23 + v21, type metadata accessor for AccountServiceSheet);
  v24 = v39;
  sub_1BD834498(v1, v39, type metadata accessor for AccountServiceSheet);
  v25 = v38;
  v26 = v40;
  v27 = swift_allocObject();
  sub_1BD834430(v24, v27 + v21, type metadata accessor for AccountServiceSheet);
  v28 = &v4[*(v26 + 48)];
  v47 = 0;
  sub_1BE051694();
  v29 = *(&v44 + 1);
  *v28 = v44;
  *(v28 + 1) = v29;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v44 == 1)
  {

    v30 = 1;
    v31 = v43;
  }

  else
  {
    v32 = v45;
    v33 = v46;
    *(v4 + 5) = v44;
    *(v4 + 6) = v32;
    v4[112] = v33;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    *v4 = v25;
    *(v4 + 1) = sub_1BD8338F0;
    *(v4 + 2) = v41;
    *(v4 + 3) = sub_1BD833908;
    *(v4 + 4) = v22;
    *(v4 + 5) = sub_1BD8345B4;
    *(v4 + 6) = v23;
    *(v4 + 7) = sub_1BD8345A8;
    *(v4 + 8) = v27;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4();

    *(v4 + 9) = v44;
    sub_1BD4EDC40();
    v34 = [swift_getObjCClassFromMetadata() appearance];
    v35 = [objc_opt_self() clearColor];
    [v34 setBackgroundColor_];

    v36 = v43;
    sub_1BD834430(v4, v43, type metadata accessor for BankAccountSheet);
    v30 = 0;
    v31 = v36;
  }

  return (*(v42 + 56))(v31, v30, 1, v26);
}

uint64_t sub_1BD82BBB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = type metadata accessor for PeerPaymentModel();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v57 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v58 = &v57 - v8;
  v62 = type metadata accessor for TransferOptionsSheet();
  v65 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v9);
  v63 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AccountServiceSheet();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11 - 8, v14);
  v16 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v57 - v19;
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v57 - v23;
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v57 - v26;
  v61 = *(v2 + 8);
  sub_1BD834498(v2, &v57 - v26, type metadata accessor for AccountServiceSheet);
  v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v64 = swift_allocObject();
  sub_1BD834430(v27, v64 + v28, type metadata accessor for AccountServiceSheet);
  sub_1BD834498(v2, v24, type metadata accessor for AccountServiceSheet);
  v29 = swift_allocObject();
  sub_1BD834430(v24, v29 + v28, type metadata accessor for AccountServiceSheet);
  sub_1BD834498(v2, v20, type metadata accessor for AccountServiceSheet);
  v30 = swift_allocObject();
  v31 = v20;
  v32 = v62;
  sub_1BD834430(v31, v30 + v28, type metadata accessor for AccountServiceSheet);
  sub_1BD834498(v2, v16, type metadata accessor for AccountServiceSheet);
  v33 = swift_allocObject();
  v34 = v33 + v28;
  v35 = v61;
  v36 = v63;
  sub_1BD834430(v16, v34, type metadata accessor for AccountServiceSheet);
  v37 = v36 + *(v32 + 48);
  v70 = 0;
  sub_1BE051694();
  v38 = *(&v67 + 1);
  *v37 = v67;
  *(v37 + 8) = v38;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v67 == 1)
  {

    v39 = 1;
    v40 = v66;
  }

  else
  {
    v41 = v68;
    v42 = v69;
    *(v36 + 64) = v67;
    *(v36 + 80) = v41;
    *(v36 + 96) = v42;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    *v36 = v35;
    *(v36 + 8) = sub_1BD833908;
    *(v36 + 16) = v64;
    *(v36 + 24) = sub_1BD833AF4;
    *(v36 + 32) = v29;
    *(v36 + 40) = sub_1BD833B5C;
    *(v36 + 48) = v30;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4();

    *(v36 + 56) = v67;
    sub_1BD4EDC40();
    v43 = [swift_getObjCClassFromMetadata() appearance];
    v44 = [objc_opt_self() clearColor];
    [v43 setBackgroundColor_];

    v45 = [objc_allocWithZone(type metadata accessor for PeerPaymentAccountResolutionControllerModel()) init];
    swift_getKeyPath();
    swift_getKeyPath();
    v46 = v58;
    sub_1BE04D8B4();

    if ((*(v59 + 48))(v46, 1, v60))
    {
      sub_1BD0DE53C(v46, &qword_1EBD45480);
      v47 = 0;
    }

    else
    {
      v48 = v57;
      sub_1BD834498(v46, v57, type metadata accessor for PeerPaymentModel);
      sub_1BD0DE53C(v46, &qword_1EBD45480);
      v47 = *v48;
      sub_1BD834500(v48, type metadata accessor for PeerPaymentModel);
    }

    v49 = *&v45[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_account];
    *&v45[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_account] = v47;
    v50 = v47;

    sub_1BD4EBF78();
    v51 = &v45[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_updateAccountAction];
    v52 = *&v45[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_updateAccountAction];
    *v51 = sub_1BD833BB4;
    v51[1] = v33;
    sub_1BD0D4744(v52);
    v53 = &v45[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_verificationContext];
    *v53 = 2;
    v53[8] = 0;
    v54 = swift_allocObject();
    *(v54 + 16) = v45;
    v55 = v36 + *(v32 + 44);
    *v55 = sub_1BD833C58;
    *(v55 + 8) = v54;
    *(v55 + 16) = 0;
    v40 = v66;
    sub_1BD834430(v36, v66, type metadata accessor for TransferOptionsSheet);
    v39 = 0;
  }

  return (*(v65 + 56))(v40, v39, 1, v32);
}

uint64_t sub_1BD82C33C@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F3D0);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551A0);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551A8);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v36 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551B0);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v28 = &v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v36 - v30;
  sub_1BD82C73C(&v36 - v30);
  sub_1BD82D600(v23);
  v38 = v15;
  sub_1BD82E414(v15);
  sub_1BD82F3CC(v7);
  v39 = v28;
  sub_1BD0DE19C(v31, v28, &qword_1EBD551B0);
  v37 = v20;
  sub_1BD0DE19C(v23, v20, &qword_1EBD551A8);
  v36 = v12;
  sub_1BD0DE19C(v15, v12, &qword_1EBD551A0);
  v32 = v40;
  sub_1BD0DE19C(v7, v40, &qword_1EBD3F3D0);
  v33 = v41;
  sub_1BD0DE19C(v28, v41, &qword_1EBD551B0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551B8);
  sub_1BD0DE19C(v20, v33 + v34[12], &qword_1EBD551A8);
  sub_1BD0DE19C(v12, v33 + v34[16], &qword_1EBD551A0);
  sub_1BD0DE19C(v32, v33 + v34[20], &qword_1EBD3F3D0);
  sub_1BD0DE53C(v7, &qword_1EBD3F3D0);
  sub_1BD0DE53C(v38, &qword_1EBD551A0);
  sub_1BD0DE53C(v23, &qword_1EBD551A8);
  sub_1BD0DE53C(v31, &qword_1EBD551B0);
  sub_1BD0DE53C(v32, &qword_1EBD3F3D0);
  sub_1BD0DE53C(v36, &qword_1EBD551A0);
  sub_1BD0DE53C(v37, &qword_1EBD551A8);
  return sub_1BD0DE53C(v39, &qword_1EBD551B0);
}

uint64_t sub_1BD82C73C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55360);
  v131 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v130 = &v107 - v5;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55368);
  v126 = *(v128 - 8);
  v7 = MEMORY[0x1EEE9AC00](v128, v6);
  v115 = (&v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v9);
  v114 = &v107 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55370);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v129 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v127 = &v107 - v16;
  v17 = type metadata accessor for AccountServiceSheet();
  v116 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v117 = v19;
  v118 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AvailablePass(0);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v124 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v119 = &v107 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F1C8);
  v125 = *(v26 - 1);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v31);
  v121 = &v107 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v122 = &v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v120 = &v107 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v43 = &v107 - v42;
  MEMORY[0x1EEE9AC00](v41, v44);
  v46 = &v107 - v45;
  v47 = type metadata accessor for PeerPaymentModel();
  v48 = *(v47 - 1);
  MEMORY[0x1EEE9AC00](v47, v49);
  v51 = &v107 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55378);
  v54 = MEMORY[0x1EEE9AC00](v52 - 8, v53);
  MEMORY[0x1EEE9AC00](v54, v55);
  v132 = &v107 - v57;
  v123 = v1;
  v58 = *(v1 + 8);
  if (*(v58 + qword_1EBDAB038) == 1)
  {
    v110 = v56;
    v111 = v3;
    v112 = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v59 = *(v48 + 48);
    v60 = v59(v46, 1, v47);
    v113 = v58;
    if (v60 == 1)
    {
      sub_1BD0DE53C(v46, &qword_1EBD45480);
    }

    else
    {
      sub_1BD834430(v46, v51, type metadata accessor for PeerPaymentModel);
      if (v51[v47[13]] == 1)
      {
        if ((PKOslo2024UIUpdatesEnabled() & 1) != 0 || (v51[v47[11]] & 1) == 0)
        {
          v108 = 0;
          v109 = 0;
        }

        else
        {
          v63 = v118;
          sub_1BD834498(v123, v118, type metadata accessor for AccountServiceSheet);
          v64 = (*(v116 + 80) + 16) & ~*(v116 + 80);
          v109 = swift_allocObject();
          sub_1BD834430(v63, v109 + v64, type metadata accessor for AccountServiceSheet);
          v108 = sub_1BD8343C4;
        }

        v68 = v119;
        sub_1BD834498(&v51[v47[5]], v119, type metadata accessor for AvailablePass);
        sub_1BD834498(v68, v124, type metadata accessor for AvailablePass);
        (*(v48 + 56))(v43, 1, 1, v47);
        v107 = v26[16];
        v30[v107] = 0;
        v69 = v26[17];
        *&v30[v69] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
        swift_storeEnumTagMultiPayload();
        v70 = sub_1BE051C54();
        v71 = 40.0;
        if (v70)
        {
          v71 = 36.0;
        }

        *&v30[v26[18]] = v71;
        v72 = v26[19];
        v73 = sub_1BE051C54();
        sub_1BD834500(v68, type metadata accessor for AvailablePass);
        sub_1BD834500(v51, type metadata accessor for PeerPaymentModel);
        v30[v72] = (v73 & 1) == 0;
        sub_1BD834430(v124, v30, type metadata accessor for AvailablePass);
        *&v30[v26[9]] = 0;
        sub_1BD0DE19C(v43, &v30[v26[10]], &qword_1EBD45480);
        v74 = &v30[v26[11]];
        *(v74 + 3) = 0u;
        *(v74 + 4) = 0u;
        *(v74 + 1) = 0u;
        *(v74 + 2) = 0u;
        *v74 = 0u;
        v30[v26[12]] = 1;
        v75 = &v30[v26[13]];
        *(v75 + 4) = 0;
        *v75 = 0u;
        *(v75 + 1) = 0u;
        v76 = &v30[v26[14]];
        v77 = v109;
        *v76 = v108;
        v76[1] = v77;
        v78 = &v30[v26[15]];
        *v78 = 0;
        *(v78 + 1) = 0;
        v79 = v43;
        v80 = v120;
        sub_1BD0DE204(v79, v120, &qword_1EBD45480);
        if (v59(v80, 1, v47) == 1)
        {
          sub_1BD0DE53C(v80, &qword_1EBD45480);
          v66 = v128;
          v67 = v127;
        }

        else
        {
          v81 = (v80 + v47[6]);
          v82 = v81[3];
          v136 = v81[2];
          v137 = v82;
          v83 = v81[5];
          v138 = v81[4];
          v139 = v83;
          v84 = v81[1];
          v134 = *v81;
          v135 = v84;
          sub_1BD0DE19C(&v134, v133, &unk_1EBD521D0);
          sub_1BD834500(v80, type metadata accessor for PeerPaymentModel);
          v66 = v128;
          v67 = v127;
          if (v134 != 1)
          {
            v85 = *(&v135 + 1);
            v86 = v139;
            sub_1BD0DE53C(&v134, &unk_1EBD521D0);
            if (v85 || (v86 & 1) != 0)
            {
              v30[v107] = 1;
            }
          }
        }

        v87 = v121;
        sub_1BD0DE204(v30, v121, &qword_1EBD3F1C8);
        sub_1BD0DE204(v87, v132, &qword_1EBD3F1C8);
        v65 = 0;
LABEL_23:
        v88 = 1;
        (*(v125 + 56))(v132, v65, 1, v26);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1BE04D8B4();

        v89 = v134;
        if (v134)
        {
          if (v134 == 1)
          {
LABEL_31:
            (*(v126 + 56))(v67, v88, 1, v66);
            v101 = v132;
            v102 = v110;
            sub_1BD0DE19C(v132, v110, &qword_1EBD55378);
            v103 = v129;
            sub_1BD0DE19C(v67, v129, &qword_1EBD55370);
            v104 = v130;
            sub_1BD0DE19C(v102, v130, &qword_1EBD55378);
            v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55380);
            sub_1BD0DE19C(v103, v104 + *(v105 + 48), &qword_1EBD55370);
            sub_1BD0DE53C(v67, &qword_1EBD55370);
            sub_1BD0DE53C(v101, &qword_1EBD55378);
            sub_1BD0DE53C(v103, &qword_1EBD55370);
            sub_1BD0DE53C(v102, &qword_1EBD55378);
            v106 = v112;
            sub_1BD0DE204(v104, v112, &qword_1EBD55360);
            return (*(v131 + 56))(v106, 0, 1, v111);
          }

          v90 = *(&v134 + 1);
          if (v136)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v91 = v90;
            v92 = v89;
            sub_1BE04D8B4();

            v93 = v118;
            sub_1BD834498(v123, v118, type metadata accessor for AccountServiceSheet);
            v94 = (*(v116 + 80) + 16) & ~*(v116 + 80);
            v95 = swift_allocObject();
            sub_1BD834430(v93, v95 + v94, type metadata accessor for AccountServiceSheet);
            v96 = sub_1BD8345B0;
            if (PKOslo2024UIUpdatesEnabled())
            {

              v96 = 0;
              v95 = 0;
            }

            v97 = v115;
            *v115 = v92;
            *(v97 + 8) = v90;
            v98 = v122;
            sub_1BD0DE19C(v122, v97 + v66[9], &qword_1EBD45480);
            sub_1BD830220((v97 + v66[10]));
            sub_1BD17195C(v89, v90);

            sub_1BD0DE53C(v98, &qword_1EBD45480);
            *(v97 + v66[11]) = 0;
            v99 = (v97 + v66[12]);
            *v99 = v96;
            v99[1] = v95;
            v100 = v114;
            sub_1BD0DE204(v97, v114, &qword_1EBD55368);
            sub_1BD0DE204(v100, v67, &qword_1EBD55368);
            v88 = 0;
            goto LABEL_31;
          }

          sub_1BD17195C(v134, *(&v134 + 1));
        }

        goto LABEL_31;
      }

      sub_1BD834500(v51, type metadata accessor for PeerPaymentModel);
    }

    v65 = 1;
    v66 = v128;
    v67 = v127;
    goto LABEL_23;
  }

  v61 = *(v131 + 56);

  return v61(a1, 1, 1, v3);
}

uint64_t sub_1BD82D600@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55328);
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v95 = (&v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v7);
  v101 = (&v90 - v8);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55330);
  MEMORY[0x1EEE9AC00](v102, v9);
  v104 = &v90 - v10;
  v11 = type metadata accessor for AccountServiceSheet();
  v96 = *(v11 - 8);
  v12 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v97 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v106 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55338);
  v18 = MEMORY[0x1EEE9AC00](v103, v17);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v100 = &v90 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v98 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v99 = &v90 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v33 = &v90 - v32;
  MEMORY[0x1EEE9AC00](v31, v34);
  v36 = &v90 - v35;
  v37 = type metadata accessor for PeerPaymentModel();
  v38 = *(v37 - 1);
  MEMORY[0x1EEE9AC00](v37, v39);
  v107 = &v90 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55340);
  MEMORY[0x1EEE9AC00](v41, v42);
  v105 = v1;
  if (*(*(v1 + 8) + qword_1EBDAB038) == 2)
  {
    v91 = &v90 - v45;
    v92 = v44;
    v93 = v43;
    v90 = v3;
    v94 = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v46 = *(v38 + 48);
    if (v46(v36, 1, v37) == 1)
    {
      sub_1BD0DE53C(v36, &qword_1EBD45480);
    }

    else
    {
      v49 = v36;
      v50 = v107;
      sub_1BD834430(v49, v107, type metadata accessor for PeerPaymentModel);
      if (v50[v37[13]] == 1)
      {
        sub_1BD834498(&v50[v37[5]], v106, type metadata accessor for AvailablePass);
        (*(v38 + 56))(v33, 1, 1, v37);
        if (PKOslo2024UIUpdatesEnabled())
        {
          v101 = 0;
          v51 = 0;
          v52 = v103;
        }

        else
        {
          v52 = v103;
          if (v50[v37[12]])
          {
            v67 = v97;
            sub_1BD834498(v105, v97, type metadata accessor for AccountServiceSheet);
            v68 = (*(v96 + 80) + 16) & ~*(v96 + 80);
            v51 = swift_allocObject();
            sub_1BD834430(v67, v51 + v68, type metadata accessor for AccountServiceSheet);
            v101 = sub_1BD8343BC;
          }

          else
          {
            v101 = 0;
            v51 = 0;
          }
        }

        v103 = v52[16];
        v20[v103] = 0;
        v70 = v52[17];
        *&v20[v70] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
        swift_storeEnumTagMultiPayload();
        v71 = sub_1BE051C54();
        v72 = 40.0;
        if (v71)
        {
          v72 = 36.0;
        }

        *&v20[v52[18]] = v72;
        v73 = v52[19];
        v20[v73] = (sub_1BE051C54() & 1) == 0;
        v74 = v106;
        sub_1BD834498(v106, v20, type metadata accessor for AvailablePass);
        *&v20[v52[9]] = 0;
        sub_1BD0DE19C(v33, &v20[v52[10]], &qword_1EBD45480);
        v75 = &v20[v52[11]];
        *(v75 + 3) = 0u;
        *(v75 + 4) = 0u;
        *(v75 + 1) = 0u;
        *(v75 + 2) = 0u;
        *v75 = 0u;
        sub_1BD830838(v105, &v20[v52[12]]);
        sub_1BD834500(v74, type metadata accessor for AvailablePass);
        v76 = &v20[v52[13]];
        *(v76 + 4) = 0;
        *v76 = 0u;
        *(v76 + 1) = 0u;
        v77 = &v20[v52[14]];
        *v77 = v101;
        v77[1] = v51;
        v78 = &v20[v52[15]];
        *v78 = 0;
        *(v78 + 1) = 0;
        v79 = v99;
        sub_1BD0DE204(v33, v99, &qword_1EBD45480);
        if (v46(v79, 1, v37) == 1)
        {
          sub_1BD0DE53C(v79, &qword_1EBD45480);
          v80 = v107;
        }

        else
        {
          v81 = (v79 + v37[6]);
          v82 = v81[3];
          v111 = v81[2];
          v112 = v82;
          v83 = v81[5];
          v113 = v81[4];
          v114 = v83;
          v84 = v81[1];
          v109 = *v81;
          v110 = v84;
          sub_1BD0DE19C(&v109, v108, &unk_1EBD521D0);
          sub_1BD834500(v79, type metadata accessor for PeerPaymentModel);
          v80 = v107;
          if (v109 != 1)
          {
            v85 = *(&v110 + 1);
            v86 = v114;
            sub_1BD0DE53C(&v109, &unk_1EBD521D0);
            if (v85 || (v86 & 1) != 0)
            {
              v20[v103] = 1;
            }
          }
        }

        v87 = v100;
        sub_1BD0DE204(v20, v100, &qword_1EBD55338);
        sub_1BD0DE19C(v87, v104, &qword_1EBD55338);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD55350, &qword_1EBD55338);
        sub_1BD0DE4F4(&qword_1EBD55358, &qword_1EBD55328);
        v66 = v91;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v87, &qword_1EBD55338);
        sub_1BD834500(v80, type metadata accessor for PeerPaymentModel);
        goto LABEL_32;
      }

      sub_1BD834500(v50, type metadata accessor for PeerPaymentModel);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v53 = v109;
    if (v109)
    {
      if (v109 == 1)
      {
LABEL_21:
        v69 = 1;
        v66 = v91;
LABEL_33:
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55348);
        (*(*(v88 - 8) + 56))(v66, v69, 1, v88);
        v89 = v94;
        sub_1BD0DE204(v66, v94, &qword_1EBD55340);
        return (*(v92 + 56))(v89, 0, 1, v93);
      }

      v54 = *(&v109 + 1);
      if (v111)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v107 = v54;
        v55 = v53;
        sub_1BE04D8B4();

        v56 = v97;
        sub_1BD834498(v105, v97, type metadata accessor for AccountServiceSheet);
        v57 = (*(v96 + 80) + 16) & ~*(v96 + 80);
        v58 = swift_allocObject();
        sub_1BD834430(v56, v58 + v57, type metadata accessor for AccountServiceSheet);
        v59 = sub_1BD8345AC;
        if (PKOslo2024UIUpdatesEnabled())
        {

          v59 = 0;
          v58 = 0;
        }

        v60 = v90;
        v61 = v95;
        *v95 = v55;
        *(v61 + 8) = v54;
        sub_1BD0DE204(v98, v61 + v60[9], &qword_1EBD45480);
        *(v61 + v60[10]) = 1;
        *(v61 + v60[11]) = 1;
        v62 = (v61 + v60[12]);
        *v62 = v59;
        v62[1] = v58;
        v63 = v101;
        sub_1BD0DE204(v61, v101, &qword_1EBD55328);
        sub_1BD0DE19C(v63, v104, &qword_1EBD55328);
        swift_storeEnumTagMultiPayload();
        v106 = sub_1BD0DE4F4(&qword_1EBD55350, &qword_1EBD55338);
        sub_1BD0DE4F4(&qword_1EBD55358, &qword_1EBD55328);
        v64 = v55;
        v65 = v107;
        v66 = v91;
        sub_1BE04F9A4();
        sub_1BD17195C(v53, v54);

        sub_1BD0DE53C(v101, &qword_1EBD55328);
LABEL_32:
        v69 = 0;
        goto LABEL_33;
      }

      sub_1BD17195C(v109, *(&v109 + 1));
    }

    goto LABEL_21;
  }

  v47 = *(v44 + 56);

  return v47(a1, 1, 1);
}

uint64_t sub_1BD82E414@<X0>(uint64_t a1@<X8>)
{
  v120 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551C0);
  v118 = *(v2 - 8);
  v119 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v114 = &v81[-v4];
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551C8);
  MEMORY[0x1EEE9AC00](v110, v5);
  v111 = &v81[-v6];
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551D0);
  v96 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v7);
  v95 = &v81[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551D8);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = &v81[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v14);
  v113 = &v81[-v15];
  v102 = sub_1BE04C624();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v16);
  v104 = &v81[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551E0);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v18);
  v105 = &v81[-v19];
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551E8);
  MEMORY[0x1EEE9AC00](v109, v20);
  v123 = &v81[-v21];
  v22 = type metadata accessor for AccountServiceSheet();
  v99 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v100 = v24;
  v115 = &v81[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_1BE04C894();
  v26 = *(v25 - 8);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v122 = &v81[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v81[-v31];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551F0);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v33);
  v35 = &v81[-v34];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551F8);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v108 = &v81[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38, v40);
  v121 = &v81[-v41];
  v103 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v44 = v126;
  if (!v126)
  {
    return (*(v118 + 56))(v120, 1, 1, v119);
  }

  v94 = v13;
  v84 = v81;
  v92 = v127;
  v91 = v128;
  v90 = v129;
  v89 = v130;
  v88 = v131;
  v87 = v132;
  v45 = MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v45, v46);
  v47 = *MEMORY[0x1E69BC9E8];
  v116 = v26;
  v48 = *(v26 + 104);
  v83 = v32;
  v82 = v47;
  v117 = v25;
  v85 = v48;
  v48(v32);
  v93 = v44;
  v86 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B60);
  sub_1BD83428C(&qword_1EBD55208, &qword_1EBD55200, &unk_1BE0FBEC8, sub_1BD833CE8);
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42B58);
  v50 = sub_1BD0DE4F4(&qword_1EBD42B70, &qword_1EBD42B58);
  v124 = v49;
  v125 = v50;
  swift_getOpaqueTypeConformance2();
  v51 = v83;
  sub_1BE04C6B4();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD55220, &qword_1EBD551F0);
  v52 = v98;
  sub_1BE050DE4();

  (*(v97 + 8))(v35, v52);
  v53 = v115;
  sub_1BD834498(v103, v115, type metadata accessor for AccountServiceSheet);
  v54 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v55 = swift_allocObject();
  sub_1BD834430(v53, &v55[v54], type metadata accessor for AccountServiceSheet);
  LODWORD(v99) = PKOslo2024UIUpdatesEnabled();
  if (v99)
  {

    v115 = 0;
    v100 = 0;
    v56 = v82;
  }

  else
  {
    v115 = v55;
    v56 = *MEMORY[0x1E69BCA00];
    v100 = sub_1BD8345AC;
  }

  v58 = v122;
  v59 = v117;
  v60 = v85(v122, v56, v117);
  v62 = MEMORY[0x1EEE9AC00](v60, v61);
  MEMORY[0x1EEE9AC00](v62, v63);
  (*(v116 + 16))(v51, v58, v59);
  (*(v101 + 104))(v104, *MEMORY[0x1E69BC910], v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55228);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55230);
  sub_1BD833D44();
  sub_1BD83428C(&qword_1EBD55240, &qword_1EBD55230, &unk_1BE0FBEE0, sub_1BD833E00);
  v64 = v105;
  sub_1BE04C6C4();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD552A8, &qword_1EBD551E0);
  v65 = v123;
  v66 = v107;
  sub_1BE050DE4();

  v67 = (*(v106 + 8))(v64, v66);
  if (v99)
  {
    sub_1BD0DE19C(v65, v111, &qword_1EBD551E8);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD552B0, &qword_1EBD551D0);
    sub_1BD834114();
    v69 = v113;
    sub_1BE04F9A4();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v67, v68);
    sub_1BD834114();
    v70 = v115;
    sub_1BE048964();
    v71 = v95;
    v115 = v70;
    sub_1BE051704();
    v72 = v96;
    v73 = v112;
    (*(v96 + 16))(v111, v71, v112);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD552B0, &qword_1EBD551D0);
    v69 = v113;
    sub_1BE04F9A4();
    (*(v72 + 8))(v71, v73);
  }

  v74 = v118;
  v75 = v121;
  v76 = v108;
  sub_1BD0DE19C(v121, v108, &qword_1EBD551F8);
  v77 = v94;
  sub_1BD0DE19C(v69, v94, &qword_1EBD551D8);
  v78 = v114;
  sub_1BD0DE19C(v76, v114, &qword_1EBD551F8);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD552C0);
  sub_1BD0DE19C(v77, &v78[*(v79 + 48)], &qword_1EBD551D8);

  sub_1BD8341FC(v93);
  sub_1BD0D4744(v100);
  sub_1BD0DE53C(v69, &qword_1EBD551D8);
  (*(v116 + 8))(v122, v117);
  sub_1BD0DE53C(v75, &qword_1EBD551F8);
  sub_1BD0DE53C(v77, &qword_1EBD551D8);
  sub_1BD0DE53C(v76, &qword_1EBD551F8);
  v80 = v120;
  sub_1BD0DE204(v78, v120, &qword_1EBD551C0);
  (*(v74 + 56))(v80, 0, 1, v119);
  return sub_1BD0DE53C(v123, &qword_1EBD551E8);
}

uint64_t sub_1BD82F3CC@<X0>(uint64_t a1@<X8>)
{
  v122 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v105 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v104 = &v102 - v7;
  v119 = sub_1BE04FB64();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v8);
  v117 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v106 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v110 = &v102 - v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v107 = &v102 - v18;
  v19 = type metadata accessor for Passes(0);
  v20 = *(v19 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v112 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v108 = &v102 - v25;
  v121 = type metadata accessor for SheetButton();
  v27 = MEMORY[0x1EEE9AC00](v121, v26);
  v29 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v30);
  v114 = &v102 - v31;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD521E0);
  MEMORY[0x1EEE9AC00](v115, v32);
  v116 = &v102 - v33;
  v34 = type metadata accessor for AccountServiceSheet();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34 - 8, v37);
  v38 = &v102 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  v41 = MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v111 = &v102 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v120 = &v102 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v49 = &v102 - v48;
  v51 = MEMORY[0x1EEE9AC00](v47, v50);
  v53 = &v102 - v52;
  MEMORY[0x1EEE9AC00](v51, v54);
  v56 = &v102 - v55;
  v57 = *(v20 + 56);
  v113 = v19;
  v57(&v102 - v55, 1, 1, v19);
  sub_1BE04C8E4();
  sub_1BD834498(v1, v38, type metadata accessor for AccountServiceSheet);
  v58 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v59 = swift_allocObject();
  sub_1BD834430(v38, v59 + v58, type metadata accessor for AccountServiceSheet);
  if (!PKOslo2024UIUpdatesEnabled())
  {

    v64 = 1;
    v65 = v122;
    goto LABEL_27;
  }

  v102 = v59;
  v103 = v56;
  sub_1BD0DE19C(v56, v53, &unk_1EBD43B40);
  sub_1BD0DE19C(v127, v126, &qword_1EBD51EC0);
  v60 = *(v121 + 40);
  *&v29[v60] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  v61 = v29;
  swift_storeEnumTagMultiPayload();
  v109 = v53;
  sub_1BD0DE19C(v53, v49, &unk_1EBD43B40);
  v62 = *(v20 + 48);
  v63 = v113;
  if (v62(v49, 1, v113) == 1)
  {
    sub_1BD0DE53C(v49, &unk_1EBD43B40);
  }

  else
  {
    v66 = v49;
    v67 = v108;
    sub_1BD834430(v66, v108, type metadata accessor for Passes);
    if (*(v67 + *(v63 + 24)))
    {
      v68 = v107;
      sub_1BD0DE19C(v67, v107, &qword_1EBD520A0);
      v69 = type metadata accessor for AvailablePass(0);
      v70 = (*(*(v69 - 8) + 48))(v68, 1, v69);
      sub_1BD0DE53C(v68, &qword_1EBD520A0);
      if (v70 == 1 && !*(*(v67 + *(v63 + 28)) + 16))
      {
        v71 = v105;
        sub_1BD4941F8(v105);
        sub_1BD0DE53C(v71, &qword_1EBD3C3F8);
      }
    }

    sub_1BD834500(v67, type metadata accessor for Passes);
  }

  v72 = v61;
  sub_1BD0DE19C(v126, &v123, &qword_1EBD51EC0);
  v73 = v109;
  v74 = v120;
  if (v124)
  {
    sub_1BD0EF554(&v123, v125);
    __swift_project_boxed_opaque_existential_1(v125, v125[3]);
    v75 = sub_1BE04C704();
    __swift_destroy_boxed_opaque_existential_0(v125);
    if (v75)
    {
      v76 = v63;
      v77 = 5;
      goto LABEL_21;
    }
  }

  else
  {
    sub_1BD0DE53C(&v123, &qword_1EBD51EC0);
  }

  v78 = v111;
  sub_1BD0DE19C(v73, v111, &unk_1EBD43B40);
  if (v62(v78, 1, v63) == 1)
  {
    v76 = v63;
    sub_1BD0DE53C(v78, &unk_1EBD43B40);
LABEL_20:
    v77 = 2;
    goto LABEL_21;
  }

  v79 = v78;
  v80 = v112;
  sub_1BD834430(v79, v112, type metadata accessor for Passes);
  if ((*(v80 + *(v63 + 24)) & 1) == 0 || (v81 = v106, sub_1BD0DE19C(v112, v106, &qword_1EBD520A0), v82 = type metadata accessor for AvailablePass(0), v83 = (*(*(v82 - 8) + 48))(v81, 1, v82), sub_1BD0DE53C(v81, &qword_1EBD520A0), v80 = v112, v83 != 1) || *(*(v112 + *(v63 + 28)) + 16))
  {
    v76 = v63;
    sub_1BD834500(v80, type metadata accessor for Passes);
    goto LABEL_20;
  }

  v76 = v63;
  v97 = v104;
  v98 = v112;
  sub_1BD4941F8(v104);
  v99 = type metadata accessor for UnavailablePass(0);
  v100 = (*(*(v99 - 8) + 48))(v97, 1, v99);
  v101 = v97;
  v74 = v120;
  sub_1BD0DE53C(v101, &qword_1EBD3C3F8);
  sub_1BD834500(v98, type metadata accessor for Passes);
  if (v100 == 1)
  {
    v77 = 2;
  }

  else
  {
    v77 = 4;
  }

LABEL_21:
  v56 = v103;
  *v72 = v77;
  sub_1BD0DE19C(v73, v74, &unk_1EBD43B40);
  if (v62(v74, 1, v76) == 1)
  {
    sub_1BD0DE53C(v126, &qword_1EBD51EC0);
    sub_1BD0DE53C(v73, &unk_1EBD43B40);
    sub_1BD0DE53C(v74, &unk_1EBD43B40);
    v84 = 0;
    v85 = 0;
    v86 = v102;
  }

  else
  {
    v87 = v110;
    sub_1BD0DE19C(v74, v110, &qword_1EBD520A0);
    sub_1BD834500(v74, type metadata accessor for Passes);
    v88 = type metadata accessor for AvailablePass(0);
    v89 = (*(*(v88 - 8) + 48))(v87, 1, v88);
    v86 = v102;
    if (v89 == 1)
    {
      sub_1BD0DE53C(v126, &qword_1EBD51EC0);
      sub_1BD0DE53C(v109, &unk_1EBD43B40);
      sub_1BD0DE53C(v87, &qword_1EBD520A0);
      v84 = 0;
      v85 = 0;
    }

    else
    {
      v84 = sub_1BD49C81C();
      v85 = v90;
      sub_1BD0DE53C(v126, &qword_1EBD51EC0);
      sub_1BD0DE53C(v109, &unk_1EBD43B40);
      sub_1BD834500(v87, type metadata accessor for AvailablePass);
    }
  }

  *(v72 + 32) = v84;
  *(v72 + 40) = v85;
  *(v72 + 24) = 0;
  *(v72 + 48) = 0;
  *(v72 + 8) = sub_1BD833C60;
  *(v72 + 16) = v86;
  *(v72 + 56) = 0;
  v91 = v114;
  sub_1BD834430(v72, v114, type metadata accessor for SheetButton);
  sub_1BE052434();
  sub_1BD834560(&unk_1EBD52200, type metadata accessor for SheetButton);
  sub_1BE048964();
  v92 = v116;
  sub_1BE050DE4();

  sub_1BD834500(v91, type metadata accessor for SheetButton);
  v93 = v117;
  sub_1BE04FB54();
  sub_1BD25A9C8();
  sub_1BD834560(&qword_1EBD3F3E0, MEMORY[0x1E697C720]);
  v65 = v122;
  v94 = v119;
  sub_1BE050894();

  (*(v118 + 8))(v93, v94);
  sub_1BD0DE53C(v92, &unk_1EBD521E0);
  v64 = 0;
LABEL_27:
  sub_1BD0DE53C(v127, &qword_1EBD51EC0);
  sub_1BD0DE53C(v56, &unk_1EBD43B40);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD521F0);
  return (*(*(v95 - 8) + 56))(v65, v64, 1, v95);
}

uint64_t sub_1BD830220@<X0>(uint64_t *a1@<X8>)
{
  v17 = a1;
  v1 = type metadata accessor for AccountServiceAuthorizationModel.AccountServicePaymentDetails(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454A8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v16 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD0DE19C(v13, v10, &qword_1EBD454A8);
  if ((*(v2 + 48))(v10, 1, v1) == 1)
  {
    result = sub_1BD0DE53C(v13, &qword_1EBD454A8);
    v15 = 0;
  }

  else
  {
    sub_1BD834430(v10, v5, type metadata accessor for AccountServiceAuthorizationModel.AccountServicePaymentDetails);
    sub_1BD83046C(v5, &v18);
    sub_1BD834500(v5, type metadata accessor for AccountServiceAuthorizationModel.AccountServicePaymentDetails);
    result = sub_1BD0DE53C(v13, &qword_1EBD454A8);
    v15 = v18;
  }

  *v17 = v15;
  return result;
}

uint64_t sub_1BD83046C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a1;
  v32 = a2;
  v30 = type metadata accessor for AppleCardBillPaymentDetailsView();
  MEMORY[0x1EEE9AC00](v30, v2);
  v29 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s15PaymentDateInfoVMa();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B098);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v29 - v14;
  v16 = type metadata accessor for PeerPaymentModel();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AccountServiceAuthorizationModel.AccountServicePaymentDetails(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD834498(v31, v24, type metadata accessor for AccountServiceAuthorizationModel.AccountServicePaymentDetails);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BD834430(v24, v7, _s15PaymentDateInfoVMa);
    sub_1BD834498(v7, v29, _s15PaymentDateInfoVMa);
    sub_1BD834560(&qword_1EBD55388, type metadata accessor for AppleCardBillPaymentDetailsView);
    v25 = sub_1BE0518D4();
    v26 = _s15PaymentDateInfoVMa;
    v27 = v7;
  }

  else
  {
    sub_1BD834430(v24, v20, type metadata accessor for PeerPaymentModel);
    sub_1BD834498(v20, v11, type metadata accessor for PeerPaymentModel);
    (*(v17 + 56))(v11, 0, 1, v16);
    sub_1BD6D4050(v11, v15);
    sub_1BD5785A8();
    v25 = sub_1BE0518D4();
    v26 = type metadata accessor for PeerPaymentModel;
    v27 = v20;
  }

  result = sub_1BD834500(v27, v26);
  *v32 = v25;
  return result;
}

id sub_1BD830838@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (*(*(a1 + 8) + qword_1EBDAB048))
  {
    goto LABEL_4;
  }

  (*(v5 + 104))(v9, *MEMORY[0x1E69B80E0], v4);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v5 + 8))(v9, v4);
    v30[2] = v15;
    v30[3] = v17;
    sub_1BD0DDEBC();
    v18 = sub_1BE0506C4();
    v20 = v19;
    LOBYTE(v14) = v21;
    sub_1BE0502C4();
    v22 = sub_1BE0505F4();
    v24 = v23;
    v26 = v25;

    sub_1BD0DDF10(v18, v20, v14 & 1);

    sub_1BE051234();
    v10 = sub_1BE050564();
    v11 = v27;
    LOBYTE(v20) = v28;
    v13 = v29;

    sub_1BD0DDF10(v22, v24, v26 & 1);

    v12 = v20 & 1;
LABEL_4:
    *a2 = v10;
    a2[1] = v11;
    a2[2] = v12;
    a2[3] = v13;
    return result;
  }

  __break(1u);
  return result;
}

id sub_1BD830A7C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B440);
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v41 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55218);
  v44 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v41 - v12;
  v14 = sub_1BE04AA64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && [a2 type] == 4)
  {
    v41 = a3;
    result = PKPassKitUIBundle();
    if (result)
    {
      v20 = result;
      v21 = sub_1BE052404();
      v22 = sub_1BE052404();
      v23 = [v20 URLForResource:v21 withExtension:v22];

      if (v23)
      {
        sub_1BE04A9F4();

        v24 = sub_1BE04A9C4();
        (*(v15 + 8))(v18, v14);
      }

      else
      {
        v24 = 0;
      }

      v26 = PKUIScreenScale();
      v27 = PKUIImageFromPDF(v24, 36.0, 36.0, v26);

      if (v27)
      {
        v28 = sub_1BE051544();
        v29 = v43;
        v30 = v9 + *(v43 + 36);
        v31 = *(sub_1BE04EDE4() + 20);
        v32 = *MEMORY[0x1E697F468];
        v33 = sub_1BE04F684();
        (*(*(v33 - 8) + 104))(&v30[v31], v32, v33);
        __asm { FMOV            V0.2D, #8.0 }

        *v30 = _Q0;
        *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
        *v9 = v28;
        sub_1BD0DE204(v9, v13, &qword_1EBD3B440);
        v39 = 0;
      }

      else
      {
        v39 = 1;
        v29 = v43;
      }

      (*(v42 + 56))(v13, v39, 1, v29);
      v40 = v41;
      sub_1BD0DE204(v13, v41, &qword_1EBD55218);
      return (*(v44 + 56))(v40, 0, 1, v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v25 = *(v44 + 56);

    return v25(a3, 1, 1, v10);
  }

  return result;
}

uint64_t sub_1BD830EB8(uint64_t a1)
{
  v2 = sub_1BE04FF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B58);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13 - v9;
  *v10 = sub_1BE04F7C4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45370);
  sub_1BD831078(a1, &v10[*(v11 + 44)]);
  sub_1BE04FF44();
  sub_1BD0DE4F4(&qword_1EBD42B70, &qword_1EBD42B58);
  sub_1BE050D14();
  (*(v3 + 8))(v6, v2);
  return sub_1BD0DE53C(v10, &qword_1EBD42B58);
}

id sub_1BD831078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v59 = a2;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v58 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v57 = &v54 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v56 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v54 = &v54 - v18;
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80E0], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v20 = result;
    v21 = sub_1BE04B6F4();
    v23 = v22;

    (*(v3 + 8))(v6, v2);
    v60 = v21;
    v61 = v23;
    sub_1BD0DDEBC();
    v24 = sub_1BE0506C4();
    v26 = v25;
    LOBYTE(v20) = v27;
    sub_1BE0502C4();
    v28 = sub_1BE0505F4();
    v30 = v29;
    v32 = v31;

    sub_1BD0DDF10(v24, v26, v20 & 1);

    sub_1BE051234();
    v33 = sub_1BE050564();
    v35 = v34;
    LOBYTE(v26) = v36;
    v38 = v37;

    sub_1BD0DDF10(v28, v30, v32 & 1);

    v60 = v33;
    v61 = v35;
    v62 = v26 & 1;
    v63 = v38;
    sub_1BE052434();
    v39 = v54;
    sub_1BE050DE4();

    sub_1BD0DDF10(v33, v35, v26 & 1);

    v40 = v39;
    if (*(v55 + 32))
    {
      v41 = *(v55 + 24);
      v42 = *(v55 + 32);
    }

    else
    {
      v41 = 0;
      v42 = 0xE000000000000000;
    }

    v60 = v41;
    v61 = v42;
    sub_1BE048C84();
    v43 = sub_1BE0506C4();
    v45 = v44;
    v60 = v43;
    v61 = v44;
    v47 = v46 & 1;
    v62 = v46 & 1;
    v63 = v48;
    sub_1BE052434();
    v49 = v56;
    sub_1BE050DE4();

    sub_1BD0DDF10(v43, v45, v47);

    v50 = v57;
    sub_1BD0DE19C(v40, v57, &qword_1EBD452C0);
    v51 = v58;
    sub_1BD0DE19C(v49, v58, &qword_1EBD452C0);
    v52 = v59;
    sub_1BD0DE19C(v50, v59, &qword_1EBD452C0);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45380);
    sub_1BD0DE19C(v51, v52 + *(v53 + 48), &qword_1EBD452C0);
    sub_1BD0DE53C(v49, &qword_1EBD452C0);
    sub_1BD0DE53C(v40, &qword_1EBD452C0);
    sub_1BD0DE53C(v51, &qword_1EBD452C0);
    return sub_1BD0DE53C(v50, &qword_1EBD452C0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD83152C(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55320);
  MEMORY[0x1EEE9AC00](v20[0], v1);
  v3 = (v20 - v2);
  v4 = type metadata accessor for PassImage(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v20 - v10;
  v12 = type metadata accessor for PeerPaymentModel();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BD0DE53C(v11, &qword_1EBD45480);
  }

  else
  {
    sub_1BD834430(v11, v16, type metadata accessor for PeerPaymentModel);
    if (v16[*(v12 + 52)])
    {
      sub_1BD834498(&v16[*(v12 + 20)], &v7[v4[6]], type metadata accessor for WrappedPass);
      PKPassFrontFaceContentSize();
      *(v7 + 3) = 0x4044000000000000;
      *(v7 + 4) = v18 / v17 * 40.0;
      *v7 = sub_1BD70C870;
      *(v7 + 1) = 0;
      v7[16] = 0;
      v7[v4[7]] = 1;
      *&v7[v4[8]] = 1911;
      sub_1BD834498(v7, v3, type metadata accessor for PassImage);
      swift_storeEnumTagMultiPayload();
      sub_1BD834560(&qword_1EBD39FE0, type metadata accessor for PassImage);
      sub_1BE04F9A4();
      sub_1BD834500(v7, type metadata accessor for PassImage);
      sub_1BD834500(v16, type metadata accessor for PeerPaymentModel);
      return;
    }

    sub_1BD834500(v16, type metadata accessor for PeerPaymentModel);
  }

  v19 = PKPassKitUIBundle();
  *v3 = sub_1BE0515F4();
  swift_storeEnumTagMultiPayload();
  sub_1BD834560(&qword_1EBD39FE0, type metadata accessor for PassImage);
  sub_1BE048964();
  sub_1BE04F9A4();
}

uint64_t sub_1BD8319B0@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55298);
  MEMORY[0x1EEE9AC00](v61, v1);
  v59 = (&v55 - v2);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD552C8);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v3);
  v60 = &v55 - v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55290);
  MEMORY[0x1EEE9AC00](v70, v5);
  v64 = &v55 - v6;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD552D0);
  MEMORY[0x1EEE9AC00](v68, v7);
  v69 = &v55 - v8;
  v9 = sub_1BE04FF64();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55278);
  MEMORY[0x1EEE9AC00](v55, v13);
  v15 = &v55 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD552D8);
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v16);
  v18 = &v55 - v17;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55270);
  MEMORY[0x1EEE9AC00](v67, v19);
  v57 = &v55 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v55 - v23;
  v25 = type metadata accessor for PeerPaymentModel();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55250);
  v72 = *(v30 - 8);
  v73 = v30;
  MEMORY[0x1EEE9AC00](v30, v31);
  v71 = &v55 - v32;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v77)
  {
    sub_1BD8341FC(v77);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      sub_1BD0DE53C(v24, &qword_1EBD45480);
    }

    else
    {
      sub_1BD834430(v24, v29, type metadata accessor for PeerPaymentModel);
      if (v29[*(v25 + 52)] == 1)
      {
        *v15 = sub_1BE04F7C4();
        *(v15 + 1) = 0;
        v15[16] = 1;
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD552E8);
        sub_1BD832518(v29, &v15[*(v35 + 44)]);
        sub_1BE04FF44();
        v36 = sub_1BD0DE4F4(&qword_1EBD55280, &qword_1EBD55278);
        v37 = v55;
        sub_1BE050D14();
        (*(v65 + 8))(v12, v66);
        sub_1BD0DE53C(v15, &qword_1EBD55278);
        sub_1BE052434();
        v77 = v37;
        v78 = v36;
        swift_getOpaqueTypeConformance2();
        v38 = v57;
        v39 = v58;
        sub_1BE050DE4();

        (*(v56 + 8))(v18, v39);
        sub_1BD0DE19C(v38, v69, &qword_1EBD55270);
        swift_storeEnumTagMultiPayload();
        sub_1BD833EBC();
        sub_1BD833FE8();
        v40 = v71;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v38, &qword_1EBD55270);
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55260);
        (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
        sub_1BD834500(v29, type metadata accessor for PeerPaymentModel);
LABEL_11:
        v34 = v74;
        sub_1BD0DE204(v40, v74, &qword_1EBD55250);
        v33 = 0;
        return (*(v72 + 56))(v34, v33, 1, v73);
      }

      sub_1BD834500(v29, type metadata accessor for PeerPaymentModel);
    }

    v40 = v71;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v42 = v77;
    if (v77 == 1)
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55260);
      (*(*(v43 - 8) + 56))(v40, 1, 1, v43);
    }

    else
    {
      v44 = v78;
      v58 = v79;
      v71 = v80;
      LOBYTE(v81) = v81 & 1;
      v45 = sub_1BE04F7C4();
      v46 = v59;
      *v59 = v45;
      *(v46 + 8) = 0;
      *(v46 + 16) = 1;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD552E0);
      sub_1BD8330A8(&v77, (v46 + *(v47 + 44)));
      sub_1BE04FF44();
      v48 = sub_1BD0DE4F4(&qword_1EBD552A0, &qword_1EBD55298);
      v49 = v60;
      v50 = v61;
      sub_1BE050D14();
      (*(v65 + 8))(v12, v66);
      sub_1BD0DE53C(v46, &qword_1EBD55298);
      sub_1BE052434();
      v75 = v50;
      v76 = v48;
      swift_getOpaqueTypeConformance2();
      v51 = v63;
      v52 = v64;
      sub_1BE050DE4();

      (*(v62 + 8))(v49, v51);
      sub_1BD0DE19C(v52, v69, &qword_1EBD55290);
      swift_storeEnumTagMultiPayload();
      sub_1BD833EBC();
      sub_1BD833FE8();
      sub_1BE04F9A4();
      sub_1BD17195C(v42, v44);

      sub_1BD0DE53C(v52, &qword_1EBD55290);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55260);
      (*(*(v53 - 8) + 56))(v40, 0, 1, v53);
    }

    goto LABEL_11;
  }

  v33 = 1;
  v34 = v74;
  return (*(v72 + 56))(v34, v33, 1, v73);
}

id sub_1BD832518@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a1;
  v113 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v101 = &v100 - v4;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD502B8);
  MEMORY[0x1EEE9AC00](v108, v5);
  v102 = &v100 - v6;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD552F0);
  MEMORY[0x1EEE9AC00](v106, v7);
  v107 = (&v100 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD552F8);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v112 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v111 = &v100 - v14;
  v15 = sub_1BE04BD74();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v110 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v109 = &v100 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v114 = &v100 - v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v100 - v31;
  (*(v16 + 104))(v19, *MEMORY[0x1E69B80E0], v15);
  result = PKPassKitBundle();
  if (result)
  {
    v34 = result;
    v35 = sub_1BE04B6F4();
    v37 = v36;

    (*(v16 + 8))(v19, v15);
    *&v120 = v35;
    *(&v120 + 1) = v37;
    v103 = sub_1BD0DDEBC();
    v38 = sub_1BE0506C4();
    v40 = v39;
    LOBYTE(v35) = v41;
    sub_1BE0502C4();
    v42 = sub_1BE0505F4();
    v44 = v43;
    v46 = v45;

    sub_1BD0DDF10(v38, v40, v35 & 1);

    sub_1BE051234();
    v47 = sub_1BE050564();
    v49 = v48;
    LOBYTE(v35) = v50;
    v52 = v51;

    sub_1BD0DDF10(v42, v44, v46 & 1);

    *&v120 = v47;
    *(&v120 + 1) = v49;
    LOBYTE(v121) = v35 & 1;
    *(&v121 + 1) = v52;
    sub_1BE052434();
    v104 = v32;
    sub_1BE050DE4();

    sub_1BD0DDF10(v47, v49, v35 & 1);

    v53 = &v105[*(type metadata accessor for PeerPaymentModel() + 20)];
    *&v120 = sub_1BD4943B0();
    *(&v120 + 1) = v54;
    v55 = sub_1BE0506C4();
    v57 = v56;
    LOBYTE(v49) = v58;
    sub_1BE051224();
    v59 = sub_1BE050564();
    v61 = v60;
    v63 = v62;
    v65 = v64;

    sub_1BD0DDF10(v55, v57, v49 & 1);

    *&v120 = v59;
    *(&v120 + 1) = v61;
    v63 &= 1u;
    LOBYTE(v121) = v63;
    *(&v121 + 1) = v65;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v59, v61, v63);

    v66 = type metadata accessor for AvailablePass(0);
    v67 = *&v53[v66[9]];
    if (v67)
    {
      v68 = v67;
      v69 = [v68 formattedStringValue];
      v105 = v68;
      if (v69)
      {
        v70 = v69;
        v71 = sub_1BE052434();
        v73 = v72;

        v74 = 1;
      }

      else
      {

        v67 = 0;
        v74 = 0;
        v71 = 0;
        v73 = 0;
      }

      v103 = v71;
      v115 = v67;
      v116 = v74;
      v117 = v71;
      v118 = v73;
      v119 = 0;
      sub_1BD68CE48(v67);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F450);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F468);
      sub_1BD83428C(&qword_1EBD4F448, &qword_1EBD4F450, &unk_1BE0ED530, sub_1BD68C870);
      sub_1BD83428C(&qword_1EBD4F460, &qword_1EBD4F468, &unk_1BE0ED538, sub_1BD68C8C4);
      sub_1BE04F9A4();
      v84 = v122;
      v85 = v121;
      v86 = v107;
      *v107 = v120;
      v86[1] = v85;
      *(v86 + 32) = v84;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F440);
      sub_1BD68C78C();
      sub_1BD834308();
      v87 = v111;
      sub_1BE04F9A4();

      sub_1BD68CE88(v67);
    }

    else
    {
      v75 = &v53[v66[8]];
      v76 = *(v75 + 1);
      if (v76)
      {
        v77 = *v75;
        v105 = v76;
        v78 = [v105 formattedStringValue];
        if (v78)
        {
          v79 = v78;
          v80 = sub_1BE052434();
          v82 = v81;

          v83 = v77 & 1;
        }

        else
        {

          v83 = 0;
          v76 = 0;
          v80 = 0;
          v82 = 0;
        }

        v115 = v83;
        v116 = v76;
        v117 = v80;
        v118 = v82;
        v119 = 1;
        sub_1BD68CDC8(v83, v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F450);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F468);
        sub_1BD83428C(&qword_1EBD4F448, &qword_1EBD4F450, &unk_1BE0ED530, sub_1BD68C870);
        sub_1BD83428C(&qword_1EBD4F460, &qword_1EBD4F468, &unk_1BE0ED538, sub_1BD68C8C4);
        sub_1BE04F9A4();
        v90 = v122;
        v91 = v121;
        v92 = v107;
        *v107 = v120;
        v92[1] = v91;
        *(v92 + 32) = v90;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F440);
        sub_1BD68C78C();
        sub_1BD834308();
        v87 = v111;
        sub_1BE04F9A4();

        sub_1BD68CE08(v83, v76);
      }

      else
      {
        v88 = v101;
        sub_1BD0DE19C(&v53[v66[7]], v101, &qword_1EBD39FF0);
        v89 = v102;
        sub_1BD3AEF64(v88, v102);
        sub_1BD0DE19C(v89, v107, &qword_1EBD502B8);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F440);
        sub_1BD68C78C();
        sub_1BD834308();
        v87 = v111;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v89, &qword_1EBD502B8);
      }
    }

    v93 = v104;
    v94 = v109;
    sub_1BD0DE19C(v104, v109, &qword_1EBD452C0);
    v95 = v114;
    v96 = v110;
    sub_1BD0DE19C(v114, v110, &qword_1EBD452C0);
    v97 = v112;
    sub_1BD0DE19C(v87, v112, &qword_1EBD552F8);
    v98 = v113;
    sub_1BD0DE19C(v94, v113, &qword_1EBD452C0);
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55310);
    sub_1BD0DE19C(v96, v98 + *(v99 + 48), &qword_1EBD452C0);
    sub_1BD0DE19C(v97, v98 + *(v99 + 64), &qword_1EBD552F8);
    sub_1BD0DE53C(v87, &qword_1EBD552F8);
    sub_1BD0DE53C(v95, &qword_1EBD452C0);
    sub_1BD0DE53C(v93, &qword_1EBD452C0);
    sub_1BD0DE53C(v97, &qword_1EBD552F8);
    sub_1BD0DE53C(v96, &qword_1EBD452C0);
    return sub_1BD0DE53C(v94, &qword_1EBD452C0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD8330A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v87 = a1;
  v88 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v90 = &v82[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v89 = &v82[-v8];
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v91 = &v82[-v11];
  MEMORY[0x1EEE9AC00](v10, v12);
  v92 = &v82[-v13];
  v14 = sub_1BE04BD74();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v82[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 104))(v18, *MEMORY[0x1E69B80E0], v14);
  result = PKPassKitBundle();
  if (result)
  {
    v20 = result;
    v21 = sub_1BE04B6F4();
    v23 = v22;

    (*(v15 + 8))(v18, v14);
    v93 = v21;
    v94 = v23;
    v24 = sub_1BD0DDEBC();
    v25 = sub_1BE0506C4();
    v27 = v26;
    LOBYTE(v21) = v28;
    sub_1BE0502C4();
    v29 = sub_1BE0505F4();
    v31 = v30;
    v33 = v32;

    sub_1BD0DDF10(v25, v27, v21 & 1);

    sub_1BE051234();
    v34 = sub_1BE050564();
    v84 = v35;
    v85 = v34;
    v83 = v36;
    v86 = v37;

    sub_1BD0DDF10(v29, v31, v33 & 1);

    v38 = *v87;
    if (*v87 && (v39 = [v38 bankName]) != 0)
    {
      v40 = v39;
      v41 = sub_1BE052434();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0xE000000000000000;
    }

    v93 = v41;
    v94 = v43;
    v87 = v24;
    v44 = sub_1BE0506C4();
    v46 = v45;
    v48 = v47;
    sub_1BE051224();
    v49 = sub_1BE050564();
    v51 = v50;
    v53 = v52;
    v55 = v54;

    sub_1BD0DDF10(v44, v46, v48 & 1);

    v93 = v49;
    v94 = v51;
    v95 = v53 & 1;
    v96 = v55;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v49, v51, v53 & 1);

    if (v38)
    {
      v56 = sub_1BD41F634(v38);
    }

    else
    {
      v56 = 0;
      v57 = 0xE000000000000000;
    }

    v93 = v56;
    v94 = v57;
    v58 = sub_1BE0506C4();
    v60 = v59;
    v62 = v61;
    sub_1BE0502C4();
    v63 = sub_1BE0505F4();
    v65 = v64;
    v67 = v66;

    sub_1BD0DDF10(v58, v60, v62 & 1);

    sub_1BE051234();
    v68 = sub_1BE050564();
    v70 = v69;
    LOBYTE(v60) = v71;
    v73 = v72;

    sub_1BD0DDF10(v63, v65, v67 & 1);

    v93 = v68;
    v94 = v70;
    v95 = v60 & 1;
    v96 = v73;
    sub_1BE052434();
    v74 = v91;
    sub_1BE050DE4();

    sub_1BD0DDF10(v68, v70, v60 & 1);

    v75 = v89;
    sub_1BD0DE19C(v92, v89, &qword_1EBD452C0);
    v76 = v90;
    sub_1BD0DE19C(v74, v90, &qword_1EBD452C0);
    v77 = v88;
    v78 = v84;
    v79 = v85;
    *v88 = v85;
    v77[1] = v78;
    v80 = v83 & 1;
    *(v77 + 16) = v83 & 1;
    v77[3] = v86;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55318);
    sub_1BD0DE19C(v75, v77 + *(v81 + 48), &qword_1EBD452C0);
    sub_1BD0DE19C(v76, v77 + *(v81 + 64), &qword_1EBD452C0);
    sub_1BD0D7F18(v79, v78, v80);
    sub_1BE048C84();
    sub_1BD0DE53C(v91, &qword_1EBD452C0);
    sub_1BD0DE53C(v92, &qword_1EBD452C0);
    sub_1BD0DE53C(v76, &qword_1EBD452C0);
    sub_1BD0DE53C(v75, &qword_1EBD452C0);
    sub_1BD0DDF10(v79, v78, v80);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD8336F0(void *a1)
{
  sub_1BD394CCC(a1);
  sub_1BD6B2184(1, 2u, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38990);
  return sub_1BE0516B4();
}

void sub_1BD83376C(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v3 == 1 || (sub_1BE048C84(), sub_1BD833A10(v3, v4), !v5) || (, swift_getKeyPath(), swift_getKeyPath(), sub_1BE04D8B4(), , , sub_1BE048C84(), sub_1BD833A10(v3, v4), v2 = *(v5 + 16), , !v2))
  {
    sub_1BD391D44(0);
  }

  sub_1BD394CCC(a1);
  sub_1BD3EED58(a1);
}

uint64_t sub_1BD833920(int a1)
{
  sub_1BD391D44(a1);
  sub_1BD6B2184(1, 2u, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38990);
  return sub_1BE0516B4();
}

uint64_t sub_1BD83399C()
{
  sub_1BD6B2184(1, 2u, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38990);
  return sub_1BE0516B4();
}

void *sub_1BD833A10(void *result, void *a2)
{
  if (result != 1)
  {
    sub_1BD17195C(result, a2);
  }

  return result;
}

uint64_t sub_1BD833A60(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AccountServiceSheet() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

id sub_1BD833BB4(uint64_t a1)
{
  v3 = *(type metadata accessor for AccountServiceSheet() - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 8) + qword_1EBDAAD68;
  [*(v4 + 32) setPeerPaymentAccount_];
  v5 = *v4;

  return [v5 didChangePeerPaymentUsage_];
}

unint64_t sub_1BD833D44()
{
  result = qword_1EBD55238;
  if (!qword_1EBD55238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55228);
    sub_1BD834560(&qword_1EBD39FE0, type metadata accessor for PassImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55238);
  }

  return result;
}

unint64_t sub_1BD833E30()
{
  result = qword_1EBD55258;
  if (!qword_1EBD55258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55260);
    sub_1BD833EBC();
    sub_1BD833FE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55258);
  }

  return result;
}

unint64_t sub_1BD833EBC()
{
  result = qword_1EBD55268;
  if (!qword_1EBD55268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55278);
    sub_1BD0DE4F4(&qword_1EBD55280, &qword_1EBD55278);
    swift_getOpaqueTypeConformance2();
    sub_1BD834560(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55268);
  }

  return result;
}

unint64_t sub_1BD833FE8()
{
  result = qword_1EBD55288;
  if (!qword_1EBD55288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55298);
    sub_1BD0DE4F4(&qword_1EBD552A0, &qword_1EBD55298);
    swift_getOpaqueTypeConformance2();
    sub_1BD834560(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55288);
  }

  return result;
}

unint64_t sub_1BD834114()
{
  result = qword_1EBD552B8;
  if (!qword_1EBD552B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD551E8);
    sub_1BD0DE4F4(&qword_1EBD552A8, &qword_1EBD551E0);
    sub_1BD834560(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD552B8);
  }

  return result;
}

void *sub_1BD8341FC(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BD83428C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD834308()
{
  result = qword_1EBD55300;
  if (!qword_1EBD55300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD502B8);
    sub_1BD834560(&qword_1EBD55308, type metadata accessor for CashBalanceSubtextView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55300);
  }

  return result;
}

uint64_t sub_1BD834430(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD834498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD834500(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD834560(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD834660@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1BD8381B4(&qword_1EBD51C98, _s9ViewModelCMa_3);
  sub_1BE04B594();

  v8 = *a2;
  swift_beginAccess();
  return sub_1BD0DE19C(v7 + v8, a4, a3);
}

uint64_t sub_1BD83476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v15 - v12;
  sub_1BD0DE19C(a1, &v15 - v12, a5);
  return a7(v13);
}

uint64_t sub_1BD834818@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD8381B4(&qword_1EBD51C98, _s9ViewModelCMa_3);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__insights);
  return sub_1BE048C84();
}

uint64_t sub_1BD834944@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55390);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v24[-1] - v6;
  sub_1BD834C68(v1, &v24[-1] - v6);
  v8 = *v1;
  v25 = *(v2 + 1);
  v9 = v25;
  v10 = swift_allocObject();
  v11 = v2[1];
  *(v10 + 16) = *v2;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v2 + 32);
  v12 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55398) + 36)];
  sub_1BE04E7B4();
  sub_1BE048964();
  sub_1BD0DE19C(&v25, v24, &qword_1EBD553A0);
  sub_1BD389EB8();
  sub_1BE0528B4();
  *v12 = &unk_1BE0FC140;
  *(v12 + 1) = v10;
  v13 = sub_1BE051D74();
  v24[0] = v8;
  v24[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553A8);
  sub_1BE0516A4();
  v14 = v24[3];
  swift_getKeyPath();
  v24[0] = v14;
  sub_1BD8381B4(&qword_1EBD51C98, _s9ViewModelCMa_3);
  sub_1BE04B594();

  v15 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__transaction;
  swift_beginAccess();
  v16 = &v7[*(v4 + 44)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553B0);
  sub_1BD0DE19C(v14 + v15, v16 + *(v17 + 36), &qword_1EBD3F7D8);

  *v16 = v13;
  type metadata accessor for NavigationController();
  sub_1BD8381B4(&qword_1EBD38DA8, type metadata accessor for NavigationController);
  v18 = sub_1BE04E3C4();
  v19 = sub_1BE04D804();
  v20 = v23;
  sub_1BD0DE19C(v7, v23, &qword_1EBD55390);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553B8) + 36));
  *v21 = v19;
  v21[1] = v18;
  return sub_1BD0DE53C(v7, &qword_1EBD55390);
}

uint64_t sub_1BD834C68@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v240 = a2;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553C0);
  MEMORY[0x1EEE9AC00](v238, v3);
  v239 = &v175 - v4;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553C8);
  MEMORY[0x1EEE9AC00](v196, v5);
  v197 = (&v175 - v6);
  v7 = sub_1BE049B44();
  v185 = *(v7 - 8);
  v186 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v184 = &v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v183 = &v175 - v12;
  v13 = sub_1BE049104();
  v194 = *(v13 - 8);
  v195 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v193 = &v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v192 = &v175 - v18;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553D0);
  MEMORY[0x1EEE9AC00](v201, v19);
  v209 = &v175 - v20;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553D8);
  MEMORY[0x1EEE9AC00](v199, v21);
  v200 = (&v175 - v22);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553E0);
  MEMORY[0x1EEE9AC00](v206, v23);
  v202 = &v175 - v24;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553E8);
  MEMORY[0x1EEE9AC00](v180, v25);
  v181 = &v175 - v26;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553F0);
  MEMORY[0x1EEE9AC00](v191, v27);
  v182 = &v175 - v28;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553F8);
  MEMORY[0x1EEE9AC00](v210, v29);
  v212 = &v175 - v30;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55400);
  MEMORY[0x1EEE9AC00](v203, v31);
  v205 = &v175 - v32;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55408);
  MEMORY[0x1EEE9AC00](v188, v33);
  v189 = &v175 - v34;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55410);
  MEMORY[0x1EEE9AC00](v204, v35);
  v190 = &v175 - v36;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55418);
  MEMORY[0x1EEE9AC00](v211, v37);
  v207 = &v175 - v38;
  v187 = type metadata accessor for FinanceKitTransactionTypeView();
  MEMORY[0x1EEE9AC00](v187, v39);
  v198 = &v175 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_1BE049834();
  v215 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208, v41);
  v214 = &v175 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55420);
  MEMORY[0x1EEE9AC00](v224, v43);
  v213 = &v175 - v44;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55428);
  MEMORY[0x1EEE9AC00](v220, v45);
  v222 = &v175 - v46;
  v226 = type metadata accessor for FinanceKitTransactionDetailView();
  MEMORY[0x1EEE9AC00](v226, v47);
  v217 = &v175 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1BE049184();
  v227 = *(v49 - 8);
  v228 = v49;
  MEMORY[0x1EEE9AC00](v49, v50);
  v216 = &v175 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55430);
  MEMORY[0x1EEE9AC00](v237, v52);
  v223 = &v175 - v53;
  v218 = type metadata accessor for TransactionContext(0);
  MEMORY[0x1EEE9AC00](v218, v54);
  v219 = &v175 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56, v57);
  v221 = &v175 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  MEMORY[0x1EEE9AC00](v59 - 8, v60);
  v229 = &v175 - v61;
  v62 = sub_1BE048F54();
  v63 = *(v62 - 8);
  v232 = v62;
  v233 = v63;
  MEMORY[0x1EEE9AC00](v62, v64);
  v225 = &v175 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66, v67);
  v230 = &v175 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8);
  MEMORY[0x1EEE9AC00](v69 - 8, v70);
  v72 = &v175 - v71;
  v73 = sub_1BE0495A4();
  v234 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v74);
  v231 = &v175 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7D8);
  MEMORY[0x1EEE9AC00](v76 - 8, v77);
  v79 = &v175 - v78;
  v80 = sub_1BE049A94();
  v81 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v82);
  v84 = &v175 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = *a1;
  v242 = *a1;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553A8);
  sub_1BE0516A4();
  v85 = v241[0];
  swift_getKeyPath();
  *&v242 = v85;
  v235 = sub_1BD8381B4(&qword_1EBD51C98, _s9ViewModelCMa_3);
  sub_1BE04B594();

  v86 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__transaction;
  swift_beginAccess();
  sub_1BD0DE19C(v85 + v86, v79, &qword_1EBD3F7D8);

  if ((*(v81 + 48))(v79, 1, v80) != 1)
  {
    (*(v81 + 32))(v84, v79, v80);
    v242 = v249;
    sub_1BE0516A4();
    v89 = v241[0];
    swift_getKeyPath();
    *&v242 = v89;
    sub_1BE04B594();

    v90 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__account;
    swift_beginAccess();
    sub_1BD0DE19C(v89 + v90, v72, &qword_1EBD498C8);

    v91 = v234;
    if ((*(v234 + 48))(v72, 1, v73) == 1)
    {
      (*(v81 + 8))(v84, v80);
      v87 = &qword_1EBD498C8;
      v88 = v72;
      goto LABEL_6;
    }

    v179 = v84;
    v101 = v231;
    (*(v91 + 32))(v231, v72, v73);
    v242 = v249;
    sub_1BE0516A4();
    v102 = v241[0];
    swift_getKeyPath();
    *&v242 = v102;
    sub_1BE04B594();

    v103 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__historyToken;
    swift_beginAccess();
    v79 = v229;
    sub_1BD0DE19C(v102 + v103, v229, &qword_1EBD3F788);

    v104 = v232;
    v105 = v233;
    if ((*(v233 + 48))(v79, 1, v232) == 1)
    {
      (*(v91 + 8))(v101, v73);
      (*(v81 + 8))(v179, v80);
      v87 = &qword_1EBD3F788;
      goto LABEL_3;
    }

    (*(v105 + 32))(v230, v79, v104);
    v177 = v81;
    v106 = *(v81 + 16);
    v107 = v80;
    v108 = v221;
    v178 = v107;
    v106(v221, v179);
    v109 = v218;
    v110 = *(v91 + 16);
    v111 = v108 + *(v218 + 20);
    v229 = v73;
    v110(v111, v101, v73);
    v242 = v249;
    sub_1BE0516A4();
    v112 = v108 + v109[6];
    v176 = *(v227 + 16);
    v176(v112, v241[0] + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_institution, v228);

    v242 = v249;
    sub_1BE0516A4();
    v113 = v241[0];
    swift_getKeyPath();
    *&v242 = v113;
    sub_1BE04B594();

    v114 = *(v113 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__insights);
    sub_1BE048C84();

    sub_1BD735DE0(v114, v108 + v109[7]);

    v242 = v249;
    sub_1BE0516A4();
    v115 = v241[0];
    swift_getKeyPath();
    *&v242 = v115;
    v116 = v233;
    sub_1BE04B594();

    v117 = *(v115 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__insights);
    sub_1BE048C84();

    v118 = v109[8];
    v119 = v232;
    sub_1BD735E14(v117, v108 + v118);

    v242 = v249;
    sub_1BE0516A4();
    v120 = *(v241[0] + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_style);

    v121 = v225;
    if (v120)
    {
      goto LABEL_15;
    }

    v242 = v249;
    sub_1BE0516A4();
    v122 = v216;
    v123 = v228;
    v176(v216, v241[0] + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_institution, v228);

    if (sub_1BE049144() == 0xD000000000000021 && 0x80000001BE13C0F0 == v124)
    {

      (*(v227 + 8))(v122, v123);
      v119 = v232;
      v116 = v233;
LABEL_15:
      v127 = v219;
      sub_1BD837DB0(v108, v219, type metadata accessor for TransactionContext);
      (*(v116 + 16))(v121, v230, v119);
      v128 = v217;
      sub_1BD80B518(v127, v121, v217);
      sub_1BD837DB0(v128, v222, type metadata accessor for FinanceKitTransactionDetailView);
      swift_storeEnumTagMultiPayload();
      sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView);
      sub_1BD837858(&qword_1EBD55450, &qword_1EBD55420, &unk_1BE0FC208, sub_1BD83790C);
      v129 = v223;
      sub_1BE04F9A4();
      sub_1BD837E18(v128, type metadata accessor for FinanceKitTransactionDetailView);
LABEL_16:
      sub_1BD0DE19C(v129, v239, &qword_1EBD55430);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55438);
      sub_1BD837770();
      sub_1BD837C4C();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v129, &qword_1EBD55430);
      sub_1BD837E18(v108, type metadata accessor for TransactionContext);
      (*(v116 + 8))(v230, v119);
      (*(v234 + 8))(v231, v229);
      return (*(v177 + 8))(v179, v178);
    }

    v125 = v123;
    v126 = sub_1BE053B84();

    (*(v227 + 8))(v122, v125);
    v119 = v232;
    v116 = v233;
    if (v126)
    {
      goto LABEL_15;
    }

    v130 = v214;
    sub_1BE049984();
    v131 = v208;
    v132 = (*(v215 + 88))(v130, v208);
    if (v132 == *MEMORY[0x1E69678B8])
    {
      v133 = v192;
      sub_1BE049564();
      v135 = v193;
      v134 = v194;
      v136 = v195;
      (*(v194 + 104))(v193, *MEMORY[0x1E6967698], v195);
      sub_1BD8381B4(&qword_1EBD554A8, MEMORY[0x1E69676A0]);
      sub_1BE0526E4();
      sub_1BE0526E4();
      v137 = *(v134 + 8);
      v137(v135, v136);
      v137(v133, v136);
      v119 = v232;
      if (v242 == v241[0] && (v138 = v183, sub_1BE0499E4(), v140 = v184, v139 = v185, v141 = v186, (*(v185 + 104))(v184, *MEMORY[0x1E6967B10], v186), sub_1BD8381B4(&qword_1EBD3F7A8, MEMORY[0x1E6967B20]), sub_1BE0526E4(), sub_1BE0526E4(), v142 = *(v139 + 8), v142(v140, v141), v142(v138, v141), v242 == LOWORD(v241[0])))
      {
        v143 = v219;
        sub_1BD837DB0(v108, v219, type metadata accessor for TransactionContext);
        v144 = v225;
        (*(v233 + 16))(v225, v230, v119);
        sub_1BD53E90C(v143, v144, &v242);
        v145 = v243;
        v146 = v197;
        *v197 = v242;
        v146[1] = v145;
        v147 = v245;
        v146[2] = v244;
        v146[3] = v147;
        swift_storeEnumTagMultiPayload();
        sub_1BD837BF8();
        sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView);
        v148 = v209;
        sub_1BE04F9A4();
      }

      else
      {
        v157 = v219;
        sub_1BD837DB0(v108, v219, type metadata accessor for TransactionContext);
        v158 = v225;
        (*(v233 + 16))(v225, v230, v119);
        v159 = v217;
        sub_1BD80B518(v157, v158, v217);
        sub_1BD837DB0(v159, v197, type metadata accessor for FinanceKitTransactionDetailView);
        swift_storeEnumTagMultiPayload();
        sub_1BD837BF8();
        sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView);
        v148 = v209;
        sub_1BE04F9A4();
        sub_1BD837E18(v159, type metadata accessor for FinanceKitTransactionDetailView);
      }

      v129 = v223;
      sub_1BD0DE19C(v148, v200, &qword_1EBD553D0);
      swift_storeEnumTagMultiPayload();
      sub_1BD837BF8();
      sub_1BD837858(&qword_1EBD55488, &qword_1EBD553D0, &unk_1BE0FC1B8, sub_1BD837BF8);
      v160 = v202;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v160, v205, &qword_1EBD553E0);
      swift_storeEnumTagMultiPayload();
      sub_1BD837998();
      sub_1BD837B40();
      v161 = v207;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v160, &qword_1EBD553E0);
      sub_1BD0DE19C(v161, v212, &qword_1EBD55418);
      swift_storeEnumTagMultiPayload();
      sub_1BD83790C();
      sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView);
      v156 = v213;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v161, &qword_1EBD55418);
      sub_1BD0DE53C(v209, &qword_1EBD553D0);
      goto LABEL_42;
    }

    v129 = v223;
    v119 = v232;
    v149 = v230;
    v150 = v219;
    if (v132 != *MEMORY[0x1E6967850] && v132 != *MEMORY[0x1E69678A0] && v132 != *MEMORY[0x1E69678B0] && v132 != *MEMORY[0x1E6967878] && v132 != *MEMORY[0x1E69678C0] && v132 != *MEMORY[0x1E6967890] && v132 != *MEMORY[0x1E69678C8])
    {
      if (v132 == *MEMORY[0x1E6967870])
      {
        goto LABEL_29;
      }

      if (v132 == *MEMORY[0x1E69678D0])
      {
        *(&v243 + 1) = &type metadata for BankConnectFeatureFlags;
        *&v244 = sub_1BD1671B0();
        LOBYTE(v242) = 2;
        v162 = sub_1BE04C584();
        __swift_destroy_boxed_opaque_existential_0(&v242);
        sub_1BD837DB0(v108, v150, type metadata accessor for TransactionContext);
        (*(v233 + 16))(v121, v149, v119);
        if (v162)
        {
          v163 = v121;
          v164 = v198;
          sub_1BD590CB0(v150, v163, v198);
          sub_1BD837DB0(v164, v181, type metadata accessor for FinanceKitTransactionTypeView);
          swift_storeEnumTagMultiPayload();
          sub_1BD8381B4(&qword_1EBD55468, type metadata accessor for FinanceKitTransactionTypeView);
          sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView);
          v165 = v182;
          sub_1BE04F9A4();
          v166 = type metadata accessor for FinanceKitTransactionTypeView;
          v167 = v164;
        }

        else
        {
          v172 = v217;
          sub_1BD80B518(v150, v121, v217);
          sub_1BD837DB0(v172, v181, type metadata accessor for FinanceKitTransactionDetailView);
          swift_storeEnumTagMultiPayload();
          sub_1BD8381B4(&qword_1EBD55468, type metadata accessor for FinanceKitTransactionTypeView);
          sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView);
          v165 = v182;
          sub_1BE04F9A4();
          v166 = type metadata accessor for FinanceKitTransactionDetailView;
          v167 = v172;
        }

        sub_1BD837E18(v167, v166);
        sub_1BD0DE19C(v165, v189, &qword_1EBD553F0);
        swift_storeEnumTagMultiPayload();
        sub_1BD8381B4(&qword_1EBD55468, type metadata accessor for FinanceKitTransactionTypeView);
        sub_1BD837A54();
        v173 = v190;
        sub_1BE04F9A4();
        sub_1BD0DE19C(v173, v205, &qword_1EBD55410);
        swift_storeEnumTagMultiPayload();
        sub_1BD837998();
        sub_1BD837B40();
        v174 = v207;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v173, &qword_1EBD55410);
        sub_1BD0DE19C(v174, v212, &qword_1EBD55418);
        swift_storeEnumTagMultiPayload();
        sub_1BD83790C();
        sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView);
        v156 = v213;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v174, &qword_1EBD55418);
        sub_1BD0DE53C(v182, &qword_1EBD553F0);
        goto LABEL_42;
      }

      if (v132 != *MEMORY[0x1E6967858] && v132 != *MEMORY[0x1E6967880] && v132 != *MEMORY[0x1E6967868] && v132 != *MEMORY[0x1E6967898])
      {
        if (v132 != *MEMORY[0x1E69678A8])
        {
          sub_1BD837DB0(v108, v219, type metadata accessor for TransactionContext);
          (*(v233 + 16))(v121, v149, v119);
          v168 = v217;
          sub_1BD80B518(v150, v121, v217);
          sub_1BD837DB0(v168, v212, type metadata accessor for FinanceKitTransactionDetailView);
          swift_storeEnumTagMultiPayload();
          sub_1BD83790C();
          sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView);
          v156 = v213;
          sub_1BE04F9A4();
          sub_1BD837E18(v168, type metadata accessor for FinanceKitTransactionDetailView);
          (*(v215 + 8))(v214, v131);
          goto LABEL_42;
        }

LABEL_29:
        sub_1BD837DB0(v108, v219, type metadata accessor for TransactionContext);
        (*(v233 + 16))(v121, v149, v119);
        sub_1BD53E90C(v150, v121, &v242);
        v151 = v243;
        v152 = v200;
        *v200 = v242;
        v152[1] = v151;
        v153 = v245;
        v152[2] = v244;
        v152[3] = v153;
        swift_storeEnumTagMultiPayload();
        sub_1BD53E1DC(&v242, v241);
        sub_1BD837BF8();
        sub_1BD837858(&qword_1EBD55488, &qword_1EBD553D0, &unk_1BE0FC1B8, sub_1BD837BF8);
        v154 = v202;
        sub_1BE04F9A4();
        sub_1BD0DE19C(v154, v205, &qword_1EBD553E0);
        swift_storeEnumTagMultiPayload();
        sub_1BD837998();
        sub_1BD837B40();
        v155 = v207;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v154, &qword_1EBD553E0);
        sub_1BD0DE19C(v155, v212, &qword_1EBD55418);
        swift_storeEnumTagMultiPayload();
        sub_1BD83790C();
        sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView);
        v156 = v213;
        sub_1BE04F9A4();
        sub_1BD837D5C(&v242);
        sub_1BD0DE53C(v155, &qword_1EBD55418);
LABEL_42:
        sub_1BD0DE19C(v156, v222, &qword_1EBD55420);
        swift_storeEnumTagMultiPayload();
        sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView);
        sub_1BD837858(&qword_1EBD55450, &qword_1EBD55420, &unk_1BE0FC208, sub_1BD83790C);
        sub_1BE04F9A4();
        sub_1BD0DE53C(v156, &qword_1EBD55420);
        v116 = v233;
        goto LABEL_16;
      }
    }

    sub_1BD837DB0(v108, v219, type metadata accessor for TransactionContext);
    (*(v233 + 16))(v121, v149, v119);
    v169 = v198;
    sub_1BD590CB0(v150, v121, v198);
    sub_1BD837DB0(v169, v189, type metadata accessor for FinanceKitTransactionTypeView);
    swift_storeEnumTagMultiPayload();
    sub_1BD8381B4(&qword_1EBD55468, type metadata accessor for FinanceKitTransactionTypeView);
    sub_1BD837A54();
    v170 = v190;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v170, v205, &qword_1EBD55410);
    swift_storeEnumTagMultiPayload();
    sub_1BD837998();
    sub_1BD837B40();
    v171 = v207;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v170, &qword_1EBD55410);
    sub_1BD0DE19C(v171, v212, &qword_1EBD55418);
    swift_storeEnumTagMultiPayload();
    sub_1BD83790C();
    sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView);
    v156 = v213;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v171, &qword_1EBD55418);
    sub_1BD837E18(v198, type metadata accessor for FinanceKitTransactionTypeView);
    goto LABEL_42;
  }

  v87 = &qword_1EBD3F7D8;
LABEL_3:
  v88 = v79;
LABEL_6:
  sub_1BD0DE53C(v88, v87);
  v92 = [objc_opt_self() systemGroupedBackgroundColor];
  v93 = sub_1BE0511C4();
  sub_1BE051CD4();
  sub_1BE04EE54();
  v94 = sub_1BE04EC54();
  v95 = sub_1BE0501D4();
  v96 = v244;
  v97 = v239;
  *(v239 + 56) = v245;
  v98 = v247;
  *(v97 + 72) = v246;
  *(v97 + 88) = v98;
  *(v97 + 104) = v248;
  v99 = v243;
  *(v97 + 8) = v242;
  *(v97 + 24) = v99;
  *v97 = v93;
  *(v97 + 40) = v96;
  *(v97 + 120) = v94;
  *(v97 + 128) = v95;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55438);
  sub_1BD837770();
  sub_1BD837C4C();
  return sub_1BE04F9A4();
}

uint64_t sub_1BD837234(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_1BE04D214();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_1BE0528A4();
  v1[9] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD837328, v4, v3);
}

uint64_t sub_1BD837328()
{
  *(v0 + 16) = **(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553A8);
  sub_1BE0516A4();
  *(v0 + 96) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1BD8373E8;

  return sub_1BD737F84();
}

uint64_t sub_1BD8373E8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1BD837504;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1BD73F510;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD837504()
{
  v1 = v0[14];

  sub_1BE04D114();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to load transaction view with error: %@", v7, 0xCu);
    sub_1BD0DE53C(v8, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v8, -1, -1);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BD8376DC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BD0F985C;

  return sub_1BD837234(v0 + 16);
}

unint64_t sub_1BD837770()
{
  result = qword_1EBD55440;
  if (!qword_1EBD55440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55430);
    sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView);
    sub_1BD837858(&qword_1EBD55450, &qword_1EBD55420, &unk_1BE0FC208, sub_1BD83790C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55440);
  }

  return result;
}

uint64_t sub_1BD837858(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD83790C()
{
  result = qword_1EBD55458;
  if (!qword_1EBD55458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55418);
    sub_1BD837998();
    sub_1BD837B40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55458);
  }

  return result;
}

unint64_t sub_1BD837998()
{
  result = qword_1EBD55460;
  if (!qword_1EBD55460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55410);
    sub_1BD8381B4(&qword_1EBD55468, type metadata accessor for FinanceKitTransactionTypeView);
    sub_1BD837A54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55460);
  }

  return result;
}

unint64_t sub_1BD837A54()
{
  result = qword_1EBD55470;
  if (!qword_1EBD55470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD553F0);
    sub_1BD8381B4(&qword_1EBD55468, type metadata accessor for FinanceKitTransactionTypeView);
    sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55470);
  }

  return result;
}

unint64_t sub_1BD837B40()
{
  result = qword_1EBD55478;
  if (!qword_1EBD55478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD553E0);
    sub_1BD837BF8();
    sub_1BD837858(&qword_1EBD55488, &qword_1EBD553D0, &unk_1BE0FC1B8, sub_1BD837BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55478);
  }

  return result;
}

unint64_t sub_1BD837BF8()
{
  result = qword_1EBD55480;
  if (!qword_1EBD55480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55480);
  }

  return result;
}

unint64_t sub_1BD837C4C()
{
  result = qword_1EBD55490;
  if (!qword_1EBD55490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55438);
    sub_1BD837CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55490);
  }

  return result;
}

unint64_t sub_1BD837CD8()
{
  result = qword_1EBD55498;
  if (!qword_1EBD55498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD554A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55498);
  }

  return result;
}

uint64_t sub_1BD837DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD837E18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD837E78()
{
  result = qword_1EBD554B0;
  if (!qword_1EBD554B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD553B8);
    sub_1BD837F30();
    sub_1BD0DE4F4(&qword_1EBD554F0, &qword_1EBD554F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD554B0);
  }

  return result;
}

unint64_t sub_1BD837F30()
{
  result = qword_1EBD554B8;
  if (!qword_1EBD554B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55390);
    sub_1BD837FE8();
    sub_1BD0DE4F4(&qword_1EBD554E8, &qword_1EBD553B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD554B8);
  }

  return result;
}

unint64_t sub_1BD837FE8()
{
  result = qword_1EBD554C0;
  if (!qword_1EBD554C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55398);
    sub_1BD8380A4();
    sub_1BD8381B4(&qword_1EBD37148, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD554C0);
  }

  return result;
}

unint64_t sub_1BD8380A4()
{
  result = qword_1EBD554C8;
  if (!qword_1EBD554C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD554D0);
    sub_1BD838128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD554C8);
  }

  return result;
}

unint64_t sub_1BD838128()
{
  result = qword_1EBD554D8;
  if (!qword_1EBD554D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD554E0);
    sub_1BD837770();
    sub_1BD837C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD554D8);
  }

  return result;
}

uint64_t sub_1BD8381B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD838200()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD838274()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD8382E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD83835C(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = v1[10];
  v11 = v1[11];
  v33 = v4;
  v1[7] = v3;
  v12 = *(a1 + 8);
  v34 = *(a1 + 8);
  *(v1 + 4) = v12;
  v1[10] = v4;
  v1[11] = v5;
  v1[12] = v6;
  sub_1BD40FB5C(v7, v8, v9, v10, v11);
  if (v1[3])
  {
    v13 = v3;
    sub_1BD0DE19C(&v34, &v31, &qword_1EBD3D490);
    sub_1BD0DE19C(&v33, &v31, &qword_1EBD40150);
    v14 = v5;
    sub_1BE048964();
    sub_1BD78EE98(a1);
    if (!v1[4])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v29 = v3;
  sub_1BD0DE19C(&v34, &v31, &qword_1EBD3D490);
  sub_1BD0DE19C(&v33, &v31, &qword_1EBD40150);
  v30 = v5;
  sub_1BE048964();
  if (v1[4])
  {
LABEL_3:
    sub_1BD917644(a1);
  }

LABEL_4:
  if (v1[5])
  {
    sub_1BD7806B8(a1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v15 = v31;
  if (v15 != (sub_1BD83942C() & 1))
  {
    v16 = sub_1BD83942C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v31) = v16 & 1;
    sub_1BE048964();
    sub_1BE04D8C4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v18 = v31;
  v17 = v32;
  if (v18 == sub_1BD839658() && v17 == v19)
  {
  }

  else
  {
    v20 = sub_1BE053B84();

    if ((v20 & 1) == 0)
    {
      v21 = sub_1BD839658();
      v23 = v22;
      swift_getKeyPath();
      swift_getKeyPath();
      v31 = v21;
      v32 = v23;
      sub_1BE048964();
      sub_1BE04D8C4();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v24 = v31;
  v25 = sub_1BD839918();
  v26 = sub_1BD84252C(v24, v25);

  if ((v26 & 1) == 0)
  {
    v28 = sub_1BD839918();
    swift_getKeyPath();
    swift_getKeyPath();
    v31 = v28;
    sub_1BE048964();
    return sub_1BE04D8C4();
  }

  return result;
}

uint64_t sub_1BD838704@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD838784()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD8387F8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BD838878()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD8388FC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD83897C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void *sub_1BD8389F8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(a1 + 8);
  v85 = *a1;
  v84 = v5;
  v6 = *(a1 + 24);
  v83 = *(a1 + 16);
  v82 = v6;
  v88 = *(a1 + 32);
  v81 = v4;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55540);
  v86 = *(v87 - 1);
  MEMORY[0x1EEE9AC00](v87, v7);
  v9 = &v74 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v74 - v18;
  *(v2 + 11) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 7) = 0u;
  v20 = OBJC_IVAR____TtC9PassKitUI15ShippingContact__isValid;
  LOBYTE(v89) = 0;
  sub_1BE04D874();
  v77 = v16;
  v21 = *(v16 + 32);
  v78 = v15;
  v21(v2 + v20, v19, v15);
  v22 = OBJC_IVAR____TtC9PassKitUI15ShippingContact__formattedSummary;
  v89 = 0;
  v90 = 0xE000000000000000;
  sub_1BE04D874();
  v79 = v11;
  v23 = *(v11 + 32);
  v80 = v10;
  v23(v2 + v22, v14, v10);
  v24 = OBJC_IVAR____TtC9PassKitUI15ShippingContact__missingFields;
  v89 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55538);
  sub_1BE04D874();
  (v86[4])(v2 + v24, v9, v87);
  v25 = v88;
  v26 = sub_1BD83A1CC(v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98E0;
  v28 = *MEMORY[0x1E69BB7C0];
  *(inited + 32) = *MEMORY[0x1E69BB7C0];
  v29 = *MEMORY[0x1E69BB7D0];
  v30 = *MEMORY[0x1E69BB7C8];
  *(inited + 40) = *MEMORY[0x1E69BB7D0];
  *(inited + 48) = v30;
  v31 = *MEMORY[0x1E69BB7B8];
  *(inited + 56) = *MEMORY[0x1E69BB7B8];
  v32 = v28;
  v33 = v29;
  v76 = v30;
  v34 = v31;
  LOBYTE(v30) = sub_1BD83A018(inited, v26);
  swift_setDeallocating();
  type metadata accessor for PKContactField(0);
  swift_arrayDestroy();
  if (v30)
  {

    v89 = *(a1 + 8);
    sub_1BD0DE53C(&v89, &qword_1EBD3D490);
    v98 = *(a1 + 24);
    sub_1BD0DE53C(&v98, &qword_1EBD40150);

    sub_1BD40FB5C(v2[7], v2[8], v2[9], v2[10], v2[11]);
    (*(v77 + 8))(v2 + OBJC_IVAR____TtC9PassKitUI15ShippingContact__isValid, v78);
    (*(v79 + 8))(v2 + OBJC_IVAR____TtC9PassKitUI15ShippingContact__formattedSummary, v80);
    (v86[1])(v2 + OBJC_IVAR____TtC9PassKitUI15ShippingContact__missingFields, v87);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v87 = v25;
    v2[2] = v26;
    sub_1BE048C84();
    v35 = sub_1BD6CC0DC(v32, v26);
    v36 = sub_1BD6CC0DC(v33, v26);
    v37 = v36;
    v75 = v34;
    if (v35 & 1) != 0 || (v36)
    {
      v39 = a1;
      v40 = *a1;
      v41 = *(v39 + 8);
      v97 = *(v39 + 24);
      v98 = v41;
      type metadata accessor for PersonName(0);
      swift_allocObject();
      v42 = v40;
      sub_1BD0DE19C(&v98, &v89, &qword_1EBD3D490);
      sub_1BD0DE19C(&v97, &v89, &qword_1EBD40150);
      v43 = v87;
      sub_1BE048964();
      v38 = sub_1BD790560(v39, v37 & 1);

      sub_1BD0DE53C(&v98, &qword_1EBD3D490);
      sub_1BD0DE53C(&v97, &qword_1EBD40150);
    }

    else
    {
      v38 = 0;
      v39 = a1;
    }

    v2[3] = v38;
    if (sub_1BD6CC0DC(v76, v26))
    {
      v45 = *v39;
      v44 = *(v39 + 8);
      v95 = *(v39 + 24);
      v96 = v44;
      type metadata accessor for PhoneNumbers();
      swift_allocObject();
      v86 = v87;
      v46 = v45;
      sub_1BD0DE19C(&v96, &v89, &qword_1EBD3D490);
      sub_1BD0DE19C(&v95, &v89, &qword_1EBD40150);
      sub_1BE048964();
      v47 = sub_1BD9197C0(v39);

      sub_1BD0DE53C(&v96, &qword_1EBD3D490);
      sub_1BD0DE53C(&v95, &qword_1EBD40150);
    }

    else
    {
      v47 = 0;
    }

    v48 = v75;
    v2[4] = v47;
    v49 = sub_1BD6CC0DC(v48, v26);

    if (v49)
    {
      v51 = *v39;
      v50 = *(v39 + 8);
      v93 = *(v39 + 24);
      v94 = v50;
      type metadata accessor for EmailAddresses();
      swift_allocObject();
      v52 = v87;
      v53 = v87;
      v54 = v51;
      sub_1BD0DE19C(&v94, &v89, &qword_1EBD3D490);
      sub_1BD0DE19C(&v93, &v89, &qword_1EBD40150);
      sub_1BE048964();
      v55 = sub_1BD77DAC4(v39);
    }

    else
    {
      v55 = 0;
      v52 = v87;
    }

    v2[5] = v55;
    v56 = [v52 contactFormatValidator];
    v58 = *v39;
    v57 = *(v39 + 8);
    v91 = *(v39 + 24);
    v92 = v57;
    v59 = v2[7];
    v60 = v2[8];
    v61 = v52;
    v62 = v2[9];
    v63 = v2[10];
    v64 = v2[11];
    v65 = v85;
    v2[6] = v56;
    v2[7] = v65;
    v66 = v83;
    v2[8] = v84;
    v2[9] = v66;
    v2[10] = v82;
    *(v2 + 11) = v88;
    v67 = v61;
    v68 = v58;
    sub_1BD0DE19C(&v92, &v89, &qword_1EBD3D490);
    sub_1BD0DE19C(&v91, &v89, &qword_1EBD40150);
    sub_1BE048964();
    sub_1BD40FB5C(v59, v60, v62, v63, v64);
    LOBYTE(v59) = sub_1BD83942C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v89) = v59 & 1;
    sub_1BE048964();
    sub_1BE04D8C4();
    v69 = sub_1BD839658();
    v71 = v70;
    swift_getKeyPath();
    swift_getKeyPath();
    v89 = v69;
    v90 = v71;
    sub_1BE048964();
    sub_1BE04D8C4();
    v72 = sub_1BD839918();
    swift_getKeyPath();
    swift_getKeyPath();
    v89 = v72;
    sub_1BE048964();
    sub_1BE04D8C4();

    sub_1BD0DE53C(&v92, &qword_1EBD3D490);
    sub_1BD0DE53C(&v91, &qword_1EBD40150);
  }

  return v2;
}

uint64_t sub_1BD83942C()
{
  if (v0[3])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4();

    if (v5 >> 62)
    {
      v2 = sub_1BE053704();

      if (v2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v1 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v1)
      {
LABEL_4:

        return 0;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v5 >> 62)
    {
      v3 = sub_1BE053704();
    }

    else
    {
      v3 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v3)
    {
      return 0;
    }
  }

  if (!v0[5] || (swift_getKeyPath(), swift_getKeyPath(), sub_1BE048964(), sub_1BE04D8B4(), , , , v5 == 1))
  {
    if (!v0[4])
    {
      return 1;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4();

    if (v5 == 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1BD839658()
{
  v1 = v0;
  if (!*(v0 + 24))
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v2 = sub_1BD78E86C();
  if (!v3)
  {
    v6 = MEMORY[0x1E69E7CC0];
    v10 = sub_1BD78EB10();
    if (!v11)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v4 = v2;
  v5 = v3;
  v6 = sub_1BD03B038(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1BD03B038((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[16 * v8];
  *(v9 + 4) = v4;
  *(v9 + 5) = v5;
  v10 = sub_1BD78EB10();
  if (v11)
  {
LABEL_9:
    v12 = v10;
    v13 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1BD03B038(0, *(v6 + 2) + 1, 1, v6);
    }

    v15 = *(v6 + 2);
    v14 = *(v6 + 3);
    if (v15 >= v14 >> 1)
    {
      v6 = sub_1BD03B038((v14 > 1), v15 + 1, 1, v6);
    }

    *(v6 + 2) = v15 + 1;
    v16 = &v6[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
  }

LABEL_14:
  if (*(v1 + 40))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v25)
    {
    }
  }

  if (*(v1 + 32))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v25)
    {
      v17 = sub_1BD99F5F8(v25);
      v19 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1BD03B038(0, *(v6 + 2) + 1, 1, v6);
      }

      v21 = *(v6 + 2);
      v20 = *(v6 + 3);
      if (v21 >= v20 >> 1)
      {
        v6 = sub_1BD03B038((v20 > 1), v21 + 1, 1, v6);
      }

      *(v6 + 2) = v21 + 1;
      v22 = &v6[16 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
  sub_1BD03B274();
  v23 = sub_1BE0522E4();

  return v23;
}

id sub_1BD839918()
{
  v1 = v0;
  v20 = MEMORY[0x1E69E7CD0];
  v2 = v0[3];
  if (v2)
  {
    swift_retain_n();
    v3 = sub_1BD78E86C();
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = v3;
    v6 = v4;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_1BD2A5794(&v19, *MEMORY[0x1E69BB7C0]);
    }

    else
    {
LABEL_7:
    }

    if (*(v2 + OBJC_IVAR____TtC9PassKitUI10PersonName_requiresPhoneticName) != 1)
    {
      goto LABEL_14;
    }

    v8 = sub_1BD78EB10();
    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = v8;
    v11 = v9;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      sub_1BD2A5794(&v19, *MEMORY[0x1E69BB7D0]);
    }

    else
    {
LABEL_14:
    }
  }

  if (v1[5])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v13 = MEMORY[0x1E69BB7B8];
    if (v19)
    {

      sub_1BD2A5794(&v19, *v13);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v14 = v19;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v19 != 4 || v14)
    {
      sub_1BD2A5794(&v19, *v13);
    }
  }

  if (v1[4])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v19)
    {

      sub_1BD2A5794(&v19, *MEMORY[0x1E69BB7C8]);
    }
  }

  v15 = v1[2];
  v16 = v20;
  if (*(v20 + 16) <= v15[2] >> 3)
  {
    v19 = v15;
    sub_1BE048C84();
    sub_1BD5350D8(v16);

    return v19;
  }

  else
  {
    sub_1BE048C84();
    v17 = sub_1BD2ADFEC(v16, v15);

    return v17;
  }
}

uint64_t sub_1BD839C80()
{

  sub_1BD40FB5C(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  v1 = OBJC_IVAR____TtC9PassKitUI15ShippingContact__isValid;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI15ShippingContact__formattedSummary;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9PassKitUI15ShippingContact__missingFields;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55540);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_1BD839DBC()
{
  sub_1BD839C80();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShippingContact()
{
  result = qword_1EBD55520;
  if (!qword_1EBD55520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD839E68()
{
  sub_1BD540F14(319, &qword_1EBD368F0);
  if (v0 <= 0x3F)
  {
    sub_1BD540F14(319, &unk_1EBD49E00);
    if (v1 <= 0x3F)
    {
      sub_1BD839FB4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BD839FB4()
{
  if (!qword_1EBD55530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55538);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD55530);
    }
  }
}

uint64_t sub_1BD83A018(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v19 = *(a1 + 16);
  v20 = a1 + 32;
  v5 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_6;
    }

    v7 = *(v20 + 8 * v4);
    sub_1BE052434();
    sub_1BE053D04();
    v8 = v7;
    sub_1BE052524();
    v9 = sub_1BE053D64();

    v10 = -1 << *(a2 + 32);
    v11 = v9 & ~v10;
    if ((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      break;
    }

LABEL_5:

    v2 = v19;
LABEL_6:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v12 = ~v10;
  while (1)
  {
    v13 = sub_1BE052434();
    v15 = v14;
    if (v13 == sub_1BE052434() && v15 == v16)
    {

      return 0;
    }

    v18 = sub_1BE053B84();

    if (v18)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  return 0;
}

id sub_1BD83A1CC(void *a1)
{
  result = [a1 paymentRequest];
  if (result)
  {
    v3 = result;
    v4 = [result requiredShippingContactFields];

    type metadata accessor for PKContactField(0);
    sub_1BD231AF0();
    v5 = sub_1BE052A34();

    v10 = v5;
    v6 = *MEMORY[0x1E69BB7D8];
    sub_1BE048C84();
    v7 = sub_1BD6CC0DC(v6, v5);

    if ((v7 & 1) == 0)
    {
      return v10;
    }

    result = [a1 paymentRequest];
    if (result)
    {
      v8 = result;
      v9 = [result shippingContactEditingMode];

      if (v9 == 1)
      {
      }

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI11BankAccountVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD83A334(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_1BD83A390(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1BD83A3F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1BD83A444(v5, v7) & 1;
}

uint64_t sub_1BD83A444(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    v6 = *(a1 + 8);
    v7 = *(a2 + 8);
    v8 = v7;
    v9 = v5;
    v10 = sub_1BD41F4F4(v4, v6, v9, v7);

    if ((v10 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v5)
  {
    goto LABEL_16;
  }

  v11 = *(a1 + 16);
  v12 = *(a2 + 16);
  if (v11)
  {
    if (!v12)
    {
      goto LABEL_16;
    }

    sub_1BE048C84();
    sub_1BD3FFF58(v11, v12);
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v12)
  {
    goto LABEL_16;
  }

  v15 = *(a1 + 24);
  v16 = *(a2 + 24);
  if (v15)
  {
    if (v16)
    {
      sub_1BE048C84();
      sub_1BD3FFF58(v15, v16);
      v18 = v17;

      if (v18)
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    v19 = 0;
    return v19 & 1;
  }

  if (v16)
  {
    goto LABEL_16;
  }

LABEL_14:
  v19 = *(a1 + 32) ^ *(a2 + 32) ^ 1;
  return v19 & 1;
}

void sub_1BD83A564(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 paymentRequest];
  if (!v4)
  {
    goto LABEL_50;
  }

  v5 = v4;
  v6 = [v4 bankAccounts];

  if (!v6)
  {
    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  sub_1BD0E5E8C(0, &qword_1EBD45530);
  v7 = sub_1BE052744();

  if (v7 >> 62)
  {
    v8 = sub_1BE053704();
    v31 = a2;
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = a2;
    if (v8)
    {
LABEL_5:
      if (v8 >= 1)
      {
        v9 = 0;
        v10 = MEMORY[0x1E69E7CC0];
        v11 = MEMORY[0x1E69E7CC0];
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x1BFB40900](v9, v7);
          }

          else
          {
            v14 = *(v7 + 8 * v9 + 32);
          }

          v15 = v14;
          if ([v14 status] == 2)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_1BD1D7A7C(0, *(v10 + 2) + 1, 1, v10);
            }

            v17 = *(v10 + 2);
            v16 = *(v10 + 3);
            v18 = v17 + 1;
            if (v17 >= v16 >> 1)
            {
              v12 = sub_1BD1D7A7C((v16 > 1), v17 + 1, 1, v10);
              v10 = v12;
            }

            else
            {
              v12 = v10;
            }
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v11 = sub_1BD1D7A7C(0, *(v11 + 2) + 1, 1, v11);
            }

            v17 = *(v11 + 2);
            v19 = *(v11 + 3);
            v18 = v17 + 1;
            if (v17 >= v19 >> 1)
            {
              v12 = sub_1BD1D7A7C((v19 > 1), v17 + 1, 1, v11);
              v11 = v12;
            }

            else
            {
              v12 = v11;
            }
          }

          ++v9;
          *(v12 + 2) = v18;
          v13 = &v12[16 * v17];
          *(v13 + 4) = v15;
          *(v13 + 5) = 0;
        }

        while (v8 != v9);
        goto LABEL_25;
      }

      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
LABEL_25:

  a2 = v31;
LABEL_26:
  v20 = [a1 paymentRequest];
  if (!v20)
  {
LABEL_51:
    __break(1u);
    return;
  }

  v21 = v20;
  v22 = [v20 requestType];
  if ([a1 itemForType_])
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    *v33 = 0u;
    v34 = 0u;
  }

  v35[0] = *v33;
  v35[1] = v34;
  if (*(&v34 + 1))
  {
    sub_1BD0E5E8C(0, &qword_1EBD4AD98);
    if (swift_dynamicCast())
    {
      v23 = v32;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    sub_1BD14EC0C(v35);
    v23 = 0;
  }

  v24 = [a1 paymentSummaryItems];
  if (!v24)
  {
    if (v22 == 2)
    {
      goto LABEL_43;
    }

LABEL_42:

    goto LABEL_43;
  }

  v25 = v24;
  v26 = sub_1BE052744();

  if (v22 != 2)
  {
    goto LABEL_42;
  }

  if (v26)
  {
    if (*(v26 + 16) == 3)
    {
      sub_1BD038CD0(v26 + 64, v35);

      sub_1BD0E5E8C(0, &qword_1EBD3D4A0);
      if (swift_dynamicCast())
      {
        v27 = [v33[0] amount];
      }

      else
      {
        v27 = 0;
      }

      v30 = [a1 currencyCode];
      v28 = PKCurrencyAmountMake();

      goto LABEL_44;
    }

    goto LABEL_42;
  }

LABEL_43:
  v28 = 0;
LABEL_44:
  v29 = [a1 bankAccount];

  if (!v29)
  {

    v28 = 0;
  }

  *a2 = v29;
  *(a2 + 8) = v28;
  *(a2 + 16) = v11;
  *(a2 + 24) = v10;
  *(a2 + 32) = v23 != 0;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1BD83AA24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 216);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD83AA6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 216) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BD83AAF4()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B8068], v0, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();

    (*(v1 + 8))(v5, v0);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD83AC90()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B8068], v0, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();

    (*(v1 + 8))(v5, v0);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD83AE54(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[11];
  v17[10] = a1[10];
  v17[11] = v2;
  v3 = a1[13];
  v17[12] = a1[12];
  v17[13] = v3;
  v4 = a1[7];
  v17[6] = a1[6];
  v17[7] = v4;
  v5 = a1[9];
  v17[8] = a1[8];
  v17[9] = v5;
  v6 = a1[3];
  v17[2] = a1[2];
  v17[3] = v6;
  v7 = a1[5];
  v17[4] = a1[4];
  v17[5] = v7;
  v8 = a1[1];
  v17[0] = *a1;
  v17[1] = v8;
  v9 = a2[11];
  v18[10] = a2[10];
  v18[11] = v9;
  v10 = a2[13];
  v18[12] = a2[12];
  v18[13] = v10;
  v11 = a2[7];
  v18[6] = a2[6];
  v18[7] = v11;
  v12 = a2[9];
  v18[8] = a2[8];
  v18[9] = v12;
  v13 = a2[3];
  v18[2] = a2[2];
  v18[3] = v13;
  v14 = a2[5];
  v18[4] = a2[4];
  v18[5] = v14;
  v15 = a2[1];
  v18[0] = *a2;
  v18[1] = v15;
  return sub_1BD83AEF8(v17, v18) & 1;
}

uint64_t sub_1BD83AEF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v72[2] = *(a1 + 32);
  v72[3] = v4;
  v5 = *(a1 + 80);
  v72[4] = *(a1 + 64);
  v72[5] = v5;
  v6 = *(a1 + 16);
  v72[0] = *a1;
  v72[1] = v6;
  v7 = *(a2 + 16);
  v71[0] = *a2;
  v71[1] = v7;
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  v10 = *(a2 + 80);
  v71[4] = *(a2 + 64);
  v71[5] = v10;
  v71[2] = v8;
  v71[3] = v9;
  v11 = *&v72[0];
  v12 = *&v71[0];
  if (!*&v72[0])
  {
    if (!*&v71[0])
    {
      *&v61[40] = *(a1 + 40);
      *&v61[56] = *(a1 + 56);
      *&v61[72] = *(a1 + 72);
      v29 = *(a1 + 88);
      *v61 = 0;
      *&v61[88] = v29;
      *&v61[8] = *(a1 + 8);
      *&v61[24] = *(a1 + 24);
      sub_1BD0DE19C(v72, &v73, &qword_1EBD45FA8);
      sub_1BD0DE19C(v71, &v73, &qword_1EBD45FA8);
      sub_1BD0DE53C(v61, &qword_1EBD45FA8);
      goto LABEL_14;
    }

LABEL_7:
    *&v61[40] = *(a1 + 40);
    *&v61[56] = *(a1 + 56);
    *&v61[72] = *(a1 + 72);
    v20 = *(a1 + 88);
    *v61 = *&v72[0];
    *&v61[88] = v20;
    *&v61[96] = *&v71[0];
    *&v61[8] = *(a1 + 8);
    *&v61[24] = *(a1 + 24);
    v62 = *(a2 + 24);
    *&v61[104] = *(a2 + 8);
    v21 = *(a2 + 40);
    v22 = *(a2 + 56);
    v23 = *(a2 + 72);
    *&v66 = *(a2 + 88);
    v65 = v23;
    v64 = v22;
    v63 = v21;
    sub_1BD0DE19C(v72, &v73, &qword_1EBD45FA8);
    sub_1BD0DE19C(v71, &v73, &qword_1EBD45FA8);
    v24 = &unk_1EBD55548;
LABEL_8:
    v25 = v61;
LABEL_10:
    sub_1BD0DE53C(v25, v24);
    goto LABEL_11;
  }

  if (!*&v71[0])
  {
    goto LABEL_7;
  }

  *&v61[40] = *(a2 + 40);
  *&v61[56] = *(a2 + 56);
  *&v61[72] = *(a2 + 72);
  v13 = *(a2 + 88);
  *v61 = *&v71[0];
  *&v61[88] = v13;
  *&v61[8] = *(a2 + 8);
  *&v61[24] = *(a2 + 24);
  sub_1BD0DE19C(v72, &v73, &qword_1EBD45FA8);
  sub_1BD0DE19C(v71, &v73, &qword_1EBD45FA8);
  if ((sub_1BD3FE0F0(v11, v12) & 1) == 0)
  {
    sub_1BD0DE53C(v61, &qword_1EBD45FA8);
    v76 = *(a1 + 40);
    v77 = *(a1 + 56);
    v78 = *(a1 + 72);
    v26 = *(a1 + 88);
    v73 = v11;
    *&v79 = v26;
    v74 = *(a1 + 8);
    v75 = *(a1 + 24);
    v25 = &v73;
    v24 = &qword_1EBD45FA8;
    goto LABEL_10;
  }

  v14 = *(a1 + 56);
  v81[2] = *(a1 + 40);
  v81[3] = v14;
  v81[4] = *(a1 + 72);
  v82 = *(a1 + 88);
  v15 = *(a1 + 24);
  v81[0] = *(a1 + 8);
  v81[1] = v15;
  v16 = *(a2 + 56);
  v83[2] = *(a2 + 40);
  v83[3] = v16;
  v83[4] = *(a2 + 72);
  v84 = *(a2 + 88);
  v17 = *(a2 + 24);
  v83[0] = *(a2 + 8);
  v83[1] = v17;
  v18 = sub_1BD5C795C(v81, v83);
  sub_1BD0DE53C(v61, &qword_1EBD45FA8);
  v76 = *(a1 + 40);
  v77 = *(a1 + 56);
  v78 = *(a1 + 72);
  v19 = *(a1 + 88);
  v73 = v11;
  *&v79 = v19;
  v74 = *(a1 + 8);
  v75 = *(a1 + 24);
  sub_1BD0DE53C(&v73, &qword_1EBD45FA8);
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v30 = *(a1 + 176);
  v70[4] = *(a1 + 160);
  v70[5] = v30;
  v70[6] = *(a1 + 192);
  v31 = *(a1 + 112);
  v70[0] = *(a1 + 96);
  v70[1] = v31;
  v32 = *(a1 + 144);
  v70[2] = *(a1 + 128);
  v70[3] = v32;
  v33 = *(a2 + 112);
  v69[0] = *(a2 + 96);
  v69[1] = v33;
  v34 = *(a2 + 128);
  v35 = *(a2 + 144);
  v36 = *(a2 + 192);
  v69[5] = *(a2 + 176);
  v69[6] = v36;
  v37 = *(a2 + 160);
  v69[3] = v35;
  v69[4] = v37;
  v69[2] = v34;
  v38 = *&v70[0];
  if (*&v70[0])
  {
    if (*&v69[0])
    {
      *v52 = *&v69[0];
      *&v52[8] = *(a2 + 104);
      *&v52[24] = *(a2 + 120);
      *&v52[40] = *(a2 + 136);
      *&v52[104] = *(a2 + 200);
      *&v52[88] = *(a2 + 184);
      *&v52[72] = *(a2 + 168);
      *&v52[56] = *(a2 + 152);
      *v61 = *v52;
      *&v61[16] = *&v52[16];
      *&v61[80] = *&v52[80];
      *&v61[96] = *&v52[96];
      *&v61[48] = *&v52[48];
      *&v61[64] = *&v52[64];
      *&v61[32] = *&v52[32];
      v39 = *(a1 + 104);
      v40 = *(a1 + 120);
      v76 = *(a1 + 136);
      v75 = v40;
      v74 = v39;
      v41 = *(a1 + 152);
      v42 = *(a1 + 168);
      v43 = *(a1 + 200);
      v79 = *(a1 + 184);
      v78 = v42;
      v77 = v41;
      v80 = v43;
      v73 = *&v70[0];
      sub_1BD0DE19C(v70, &v53, &qword_1EBD4C950);
      sub_1BD0DE19C(v69, &v53, &qword_1EBD4C950);
      v44 = sub_1BD514E48(&v73, v61);
      sub_1BD0DE53C(v52, &qword_1EBD4C950);
      v53 = v38;
      v57 = *(a1 + 152);
      v58 = *(a1 + 168);
      v59 = *(a1 + 184);
      v60 = *(a1 + 200);
      v54 = *(a1 + 104);
      v55 = *(a1 + 120);
      v56 = *(a1 + 136);
      sub_1BD0DE53C(&v53, &qword_1EBD4C950);
      if ((v44 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (*&v69[0])
  {
LABEL_19:
    *&v61[56] = *(a1 + 152);
    *&v61[72] = *(a1 + 168);
    *&v61[88] = *(a1 + 184);
    v45 = *(a1 + 200);
    *v61 = *&v70[0];
    *&v61[104] = v45;
    *&v61[112] = *&v69[0];
    *&v61[8] = *(a1 + 104);
    *&v61[24] = *(a1 + 120);
    *&v61[40] = *(a1 + 136);
    v46 = *(a2 + 104);
    v47 = *(a2 + 120);
    v64 = *(a2 + 136);
    v63 = v47;
    v62 = v46;
    v48 = *(a2 + 152);
    v49 = *(a2 + 168);
    v50 = *(a2 + 184);
    v68 = *(a2 + 200);
    v67 = v50;
    v66 = v49;
    v65 = v48;
    sub_1BD0DE19C(v70, &v73, &qword_1EBD4C950);
    sub_1BD0DE19C(v69, &v73, &qword_1EBD4C950);
    v24 = &unk_1EBD55550;
    goto LABEL_8;
  }

  *&v61[56] = *(a1 + 152);
  *&v61[72] = *(a1 + 168);
  *&v61[88] = *(a1 + 184);
  v51 = *(a1 + 200);
  *v61 = 0;
  *&v61[104] = v51;
  *&v61[8] = *(a1 + 104);
  *&v61[24] = *(a1 + 120);
  *&v61[40] = *(a1 + 136);
  sub_1BD0DE19C(v70, &v73, &qword_1EBD4C950);
  sub_1BD0DE19C(v69, &v73, &qword_1EBD4C950);
  sub_1BD0DE53C(v61, &qword_1EBD4C950);
LABEL_21:
  if (*(a1 + 208) == *(a2 + 208))
  {
    v27 = sub_1BD84252C(*(a1 + 216), *(a2 + 216));
    return v27 & 1;
  }

LABEL_11:
  v27 = 0;
  return v27 & 1;
}

id sub_1BD83B564@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = [a1 paymentRequest];
  if (result)
  {
    v7 = result;
    v8 = [result shippingType];

    v9 = a1;
    sub_1BD6D4E94(v9, v26);
    v10 = v9;
    sub_1BE048964();
    sub_1BD514FE8(v10, a2, v27);
    result = [v10 paymentRequest];
    if (result)
    {
      v11 = result;
      v12 = [result requiredShippingContactFields];

      type metadata accessor for PKContactField(0);
      sub_1BD231AF0();
      v13 = sub_1BE052A34();

      v16 = v26[2];
      v17 = v26[3];
      v18 = v26[4];
      v19 = v26[5];
      v14 = v26[0];
      v15 = v26[1];
      v24 = v27[5];
      v25 = v27[6];
      v22 = v27[2];
      v23 = v27[3];
      v20 = v27[0];
      v21 = v27[1];
      *(a3 + 160) = v27[4];
      *(a3 + 176) = v24;
      *(a3 + 192) = v25;
      *(a3 + 128) = v22;
      *(a3 + 144) = v23;
      *(a3 + 96) = v20;
      *(a3 + 112) = v21;
      *(a3 + 64) = v18;
      *(a3 + 80) = v19;
      *(a3 + 32) = v16;
      *(a3 + 48) = v17;
      *a3 = v14;
      *(a3 + 16) = v15;
      *(a3 + 208) = v8;
      *(a3 + 216) = v13;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for AuthenticatorModel()
{
  result = qword_1EBD363E8;
  if (!qword_1EBD363E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD83B748()
{
  sub_1BD83F988(319, &unk_1EBD368E0, type metadata accessor for PKAuthenticatorPolicy, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1BD83F988(319, &qword_1EBD368B8, type metadata accessor for PKAuthenticatorCoachingState, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      sub_1BD83F988(319, &unk_1EBD368A0, type metadata accessor for PKAuthenticatorEvaluationStateChangeEvent, MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        sub_1BD83F988(319, &qword_1EBD36928, MEMORY[0x1E69BC990], MEMORY[0x1E695C070]);
        if (v3 <= 0x3F)
        {
          sub_1BD83F8D4();
          if (v4 <= 0x3F)
          {
            sub_1BD83F924();
            if (v5 <= 0x3F)
            {
              sub_1BD83F988(319, &qword_1EBD36A28, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                swift_initClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

__n128 sub_1BD83BA6C@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = v4;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1BD83BB10()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD83BB88()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

id sub_1BD83BBFC()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v0 + qword_1EBDAADA8 + 32) paymentRequest];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = [result requestType];

  if (v9 == 13 && (sub_1BE04CA64() & 1) != 0)
  {
    (*(v2 + 104))(v6, *MEMORY[0x1E69B8068], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v10 = result;
      v11 = sub_1BE04B6F4();

      (*(v2 + 8))(v6, v1);
      return v11;
    }

    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_1BD83BD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v35 = *(a1 + 8);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = (v3 + qword_1EBDAADA8);
  v9 = *(v3 + qword_1EBDAADA8);
  v10 = *(v3 + qword_1EBDAADA8 + 32);
  v31 = *(v3 + qword_1EBDAADA8 + 24);
  v11 = *(a1 + 16);
  *v8 = *a1;
  v8[1] = v11;
  v8[2] = *(a1 + 32);
  v12 = v5;
  sub_1BD0DE19C(&v35, v36, &qword_1EBD3D490);
  v30 = v6;
  v13 = v6;
  v14 = v3;
  v29 = v13;
  v15 = v7;
  sub_1BE048964();

  swift_unknownObjectRelease();
  v16 = sub_1BD84038C(v15);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v36[0] = v16;
  sub_1BE048964();
  sub_1BE04D8C4();
  v17 = v8[1];
  v36[0] = *v8;
  v36[1] = v17;
  v37 = v8[2];
  v18 = *&v36[0];
  v19 = v37;
  v38 = *(&v36[0] + 1);
  v39 = *(&v17 + 1);
  sub_1BE048964();
  v20 = v18;
  sub_1BD0DE19C(&v38, v34, &qword_1EBD3D490);
  sub_1BD0DE19C(&v39, v34, &qword_1EBD40150);
  v21 = v19;
  sub_1BE048964();
  sub_1BDA74FEC(v36, v14, a2, a3);

  sub_1BD0DE53C(&v38, &qword_1EBD3D490);
  sub_1BD0DE53C(&v39, &qword_1EBD40150);

  v22 = *(a1 + 16);
  if (v22 == 7)
  {
    if (v30)
    {
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v24 = v23;
        v25 = qword_1EBD36FA0;
        v26 = v29;
        if (v25 != -1)
        {
          swift_once();
        }

        sub_1BD6CF234([v24 kind]);
      }
    }
  }

  else
  {
    if (qword_1EBD36418 != -1)
    {
      v28 = *(a1 + 16);
      swift_once();
      v22 = v28;
    }

    sub_1BD6CF234(v22);
  }

  return sub_1BE04CAF4();
}

uint64_t sub_1BD83C0A8(uint64_t (*a1)(), uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  v5 = v4;
  v90 = a2;
  v91 = a4;
  v88 = a3;
  v92 = a1;
  v6 = sub_1BE051F54();
  v86 = *(v6 - 8);
  v87 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v84 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1BE051FA4();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v9);
  v82 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1BE051FC4();
  v81 = *(v96 - 8);
  v12 = MEMORY[0x1EEE9AC00](v96, v11);
  v77 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v95 = &v74 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v75 = &v74 - v18;
  v98 = sub_1BE04AFE4();
  v80 = *(v98 - 8);
  v20 = MEMORY[0x1EEE9AC00](v98, v19);
  v78 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v94 = &v74 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E40);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v74 - v26;
  v28 = sub_1BE051F44();
  v97 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v93 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE04C7B4();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v35 = MEMORY[0x1EEE9AC00](v31, v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v74 - v37;
  v39 = swift_allocObject();
  v79 = v5;
  swift_weakInit();
  v40 = *(v32 + 16);
  v40(v38, v92, v31);
  v89 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40(v89, v38, v31);
  v41 = (*(v32 + 80) + 40) & ~*(v32 + 80);
  v42 = swift_allocObject();
  v43 = v90;
  *(v42 + 2) = v39;
  *(v42 + 3) = v43;
  v44 = v88;
  *(v42 + 4) = v88;
  v45 = *(v32 + 32);
  v92 = v42;
  v45(v42 + v41, v38, v31);
  sub_1BD0DE19C(v91, v27, &unk_1EBD45E40);
  v46 = v97;
  LODWORD(v38) = (*(v97 + 48))(v27, 1, v28);
  sub_1BD0D44B8(v43);
  if (v38 == 1)
  {
    sub_1BE048964();
    sub_1BD0DE53C(v27, &unk_1EBD45E40);
    v47 = v43;
    v48 = v89;
    sub_1BD83ECA4(v39, v47, v44, v89);

    return (*(v32 + 8))(v48, v31);
  }

  else
  {
    (*(v32 + 8))(v89, v31);
    v50 = *(v46 + 32);
    v51 = v93;
    v74 = v28;
    v50(v93, v27, v28);
    v52 = v94;
    sub_1BE04AFD4();
    v53 = v80;
    v54 = *(v80 + 16);
    v55 = v75;
    v56 = v98;
    v54(v75, v52, v98);
    (*(v53 + 56))(v55, 0, 1, v56);
    v57 = qword_1EBD36428;
    v58 = v79;
    swift_beginAccess();
    sub_1BD12651C(v55, v58 + v57);
    swift_endAccess();
    v59 = v77;
    sub_1BE051FB4();
    MEMORY[0x1BFB3F070](v59, v51);
    v91 = *(v81 + 8);
    v91(v59, v96);
    sub_1BD14BE3C();
    v90 = sub_1BE052D54();
    v60 = swift_allocObject();
    swift_weakInit();
    v61 = v78;
    v62 = v98;
    v54(v78, v52, v98);
    v63 = (*(v53 + 80) + 24) & ~*(v53 + 80);
    v64 = (v76 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = swift_allocObject();
    *(v65 + 16) = v60;
    (*(v53 + 32))(v65 + v63, v61, v62);
    v66 = (v65 + v64);
    v67 = v92;
    *v66 = sub_1BD83F9F4;
    v66[1] = v67;
    aBlock[4] = sub_1BD83FA5C;
    aBlock[5] = v65;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_189;
    v68 = _Block_copy(aBlock);
    sub_1BE048964();

    v69 = v82;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD8405B0(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
    v70 = v84;
    v71 = v87;
    sub_1BE053664();
    v72 = v95;
    v73 = v90;
    MEMORY[0x1BFB3FD90](v95, v69, v70, v68);
    _Block_release(v68);

    (*(v86 + 8))(v70, v71);
    (*(v83 + 8))(v69, v85);
    v91(v72, v96);
    (*(v53 + 8))(v94, v98);
    return (*(v97 + 8))(v93, v74);
  }
}

void sub_1BD83CA74(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  v6 = v5;
  v47 = a5;
  v11 = sub_1BE04BD74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v46 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    v44 = v12;
    swift_getKeyPath();
    swift_getKeyPath();
    v45 = a4;
    sub_1BE04D8B4();

    v15 = *(&v49[0] + 1);
    v43 = *&v49[0];
    swift_getKeyPath();
    swift_getKeyPath();
    *&v49[0] = a1;
    *(&v49[0] + 1) = a2;
    sub_1BE048964();
    sub_1BE04D8C4();
    v12 = v44;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4();

    v16 = v15;
    a4 = v45;
    sub_1BDA74F1C(v43, v16, *&v49[0], *(&v49[0] + 1));
  }

  v17 = qword_1EBDAADC0;
  v18 = *(v6 + qword_1EBDAADC0);
  if (*(v18 + 225) != 1 || (v19 = sub_1BE04CB34(), v18 = *(v6 + v17), (v19 & 1) == 0) || *(v18 + 60) != 1)
  {
    if ((*(v18 + 225) & 1) == 0 && (sub_1BE04CB34() & 1) == 0 && *(*(v6 + v17) + 60) == 1)
    {
      v36 = [*(v6 + qword_1EBDAADA8 + 32) paymentRequest];
      if (!v36)
      {
        goto LABEL_19;
      }

      v37 = v36;
      v38 = [v36 _isAMPPayment];

      if (v38)
      {
        sub_1BE04CB64();
      }
    }

    if ((v47 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *&v49[0] = a4;
      sub_1BE048964();
      sub_1BE04D8C4();
    }

    v39 = *(v6 + qword_1EBDAADA8 + 16);
    v49[0] = *(v6 + qword_1EBDAADA8);
    v49[1] = v39;
    v50 = *(v6 + qword_1EBDAADA8 + 32);
    v40 = *&v49[0];
    v41 = v50;
    v51 = *(&v49[0] + 1);
    v52[0] = *(&v39 + 1);
    sub_1BE048964();
    v42 = v40;
    sub_1BD0DE19C(&v51, v48, &qword_1EBD3D490);
    sub_1BD0DE19C(v52, v48, &qword_1EBD40150);
    v35 = v41;
    sub_1BE048964();
    sub_1BDA74FEC(v49, v6, 0, 0);

    sub_1BD0DE53C(&v51, &qword_1EBD3D490);
    sub_1BD0DE53C(v52, &qword_1EBD40150);

    goto LABEL_17;
  }

  v20 = *MEMORY[0x1E69BBBC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  *(inited + 32) = sub_1BE052434();
  *(inited + 40) = v22;
  v23 = v46;
  (*(v12 + 104))(v46, *MEMORY[0x1E69B8068], v11);
  v24 = v20;
  v25 = PKPassKitBundle();
  if (v25)
  {
    v26 = v25;
    v27 = sub_1BE04B6F4();
    v29 = v28;

    (*(v12 + 8))(v23, v11);
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v27;
    *(inited + 56) = v29;
    sub_1BD1AACF8(inited);
    swift_setDeallocating();
    sub_1BD0DE53C(inited + 32, &qword_1EBD52080);
    v30 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v31 = sub_1BE052224();

    v32 = [v30 initWithDomain:v24 code:-2012 userInfo:v31];

    v33 = *(v6 + qword_1EBDAADA8);
    v34 = v32;
    v35 = sub_1BE04A844();

    [v33 didEncounterError_];
LABEL_17:

    return;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

double sub_1BD83D050@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

id sub_1BD83D0D4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v5 = v4;
  v88 = a4;
  v80[0] = a3;
  v89 = a2;
  v87 = a1;
  v80[1] = *v4;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD555C0);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v6);
  v84 = v80 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555B8);
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v8);
  v81 = v80 - v9;
  v92 = sub_1BE04BD74();
  v97 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v10);
  v96 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555B0);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v12);
  v93 = v80 - v13;
  v14 = sub_1BE04C7B4();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v91 = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v80 - v20;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD555A0);
  v22 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v23);
  v25 = v80 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55598);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = v80 - v29;
  v31 = qword_1EBD36400;
  *&v100 = 2;
  type metadata accessor for PKAuthenticatorPolicy(0);
  sub_1BE04D874();
  v32 = v26;
  v33 = v92;
  (*(v27 + 32))(v5 + v31, v30, v32);
  v34 = qword_1EBD36448;
  *&v100 = 0;
  type metadata accessor for PKAuthenticatorCoachingState(0);
  sub_1BE04D874();
  (*(v22 + 32))(v5 + v34, v25, v90);
  v35 = qword_1EBD36438;
  (*(v15 + 104))(v21, *MEMORY[0x1E69BC988], v14);
  (*(v15 + 16))(v91, v21, v14);
  v36 = v93;
  sub_1BE04D874();
  v37 = v21;
  v38 = v96;
  v39 = v14;
  v40 = v5;
  (*(v15 + 8))(v37, v39);
  v41 = v97;
  (*(v94 + 32))(v5 + v35, v36, v95);
  (*(v41 + 104))(v38, *MEMORY[0x1E69B8068], v33);
  result = PKPassKitBundle();
  if (result)
  {
    v43 = result;
    v44 = qword_1EBD36410;
    v45 = sub_1BE04B6F4();
    v47 = v46;

    (*(v41 + 8))(v38, v33);
    v100 = 0uLL;
    v101 = 6uLL;
    v102 = 0uLL;
    v103 = 0;
    v104 = v45;
    v105 = v47;
    v106 = 0;
    v107 = 1;
    v109 = 0;
    v110 = 0;
    v108 = 0;
    v48 = v81;
    sub_1BE04D874();
    (*(v82 + 32))(v5 + v44, v48, v83);
    v49 = qword_1EBD55568;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55590);
    v50 = v84;
    sub_1BE04D874();
    (*(v85 + 32))(v5 + v49, v50, v86);
    *(v5 + qword_1EBD55570) = 0;
    v51 = (v5 + qword_1EBDAADB0);
    *v51 = 0;
    v51[1] = 0;
    v52 = qword_1EBD36428;
    v53 = sub_1BE04AFE4();
    (*(*(v53 - 8) + 56))(v5 + v52, 1, 1, v53);
    IsAvailable = PKUserIntentIsAvailable();
    v55 = 3;
    if (!IsAvailable)
    {
      v55 = 0;
    }

    v56 = (v5 + qword_1EBD55580);
    *v56 = v55;
    v56[1] = 0;
    v57 = v87;
    v59 = *v87;
    v58 = *(v87 + 8);
    v60 = *(v87 + 32);
    v111 = *(v87 + 24);
    v112 = v58;
    v61 = (v5 + qword_1EBDAADA8);
    v62 = *(v87 + 32);
    v61[1] = *(v87 + 16);
    v61[2] = v62;
    *v61 = *v57;
    if (v88)
    {
      v63 = objc_opt_self();
      v64 = v59;
      sub_1BD0DE19C(&v112, &v100, &qword_1EBD3D490);
      sub_1BD0DE19C(&v111, &v100, &qword_1EBD40150);
      v65 = v60;
      v66 = v60;
      sub_1BE048964();
      v67 = [v63 userIntentStyle];
      v68 = v89;
    }

    else
    {
      v69 = v59;
      sub_1BD0DE19C(&v112, &v100, &qword_1EBD3D490);
      sub_1BD0DE19C(&v111, &v100, &qword_1EBD40150);
      v65 = v60;
      v70 = v60;
      sub_1BE048964();
      v68 = v89;
      v67 = v80[0];
    }

    *(v40 + qword_1EBDAADB8) = v67;
    v71 = *v56;
    v72 = v56[1];
    swift_beginAccess();
    v98 = v71;
    v99 = v72;
    type metadata accessor for PKAuthenticatorEvaluationStateChangeEvent(0);
    sub_1BE04D874();
    swift_endAccess();
    if (v68 == 2)
    {
      v73 = sub_1BE04CA94();
    }

    else
    {
      v73 = v68;
    }

    type metadata accessor for GlyphManager();
    swift_allocObject();
    *(v40 + qword_1EBDAADC0) = sub_1BDA74A50(v57, v73 & 1);
    v74 = v59;
    sub_1BD0DE19C(&v112, &v100, &qword_1EBD3D490);
    sub_1BD0DE19C(&v111, &v100, &qword_1EBD40150);
    v75 = v65;
    sub_1BE048964();
    v76 = sub_1BE04CC24();
    v77 = *(v76 + qword_1EBDAADC0);
    v78 = swift_allocObject();
    swift_weakInit();
    v79 = *(v77 + 96);
    *(v77 + 96) = sub_1BD840520;
    *(v77 + 104) = v78;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD0D4744(v79);

    sub_1BD83DE78();

    sub_1BD0DE53C(&v112, &qword_1EBD3D490);
    sub_1BD0DE53C(&v111, &qword_1EBD40150);

    return v76;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD83DB64(__int128 *a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BD83DBD8(a1, a2 & 1);
  }

  return result;
}

uint64_t sub_1BD83DBD8(__int128 *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E40);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v24[-v6];
  v8 = sub_1BE04C7B4();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v24[-v15];
  v17 = *(v9 + 104);
  v17(&v24[-v15], *MEMORY[0x1E69BC988], v8);
  if (a2)
  {
    v17(v13, *MEMORY[0x1E69BC980], v8);
  }

  else
  {
    (*(v9 + 16))(v13, v16, v8);
  }

  v18 = sub_1BE051F44();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  sub_1BD83C0A8(v13, 0, 0, v7);
  sub_1BD0DE53C(v7, &unk_1EBD45E40);
  v19 = *(v9 + 8);
  v19(v13, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v20 = a1[5];
  v29 = a1[4];
  v30 = v20;
  v31 = a1[6];
  v21 = a1[1];
  v25 = *a1;
  v26 = v21;
  v22 = a1[3];
  v27 = a1[2];
  v28 = v22;
  sub_1BE048964();
  sub_1BD146D60(a1, v24);
  sub_1BE04D8C4();
  return (v19)(v16, v8);
}

uint64_t sub_1BD83DE78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D240);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v84 = v59 - v2;
  v3 = sub_1BE052D34();
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v77 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555D0);
  MEMORY[0x1EEE9AC00](v72, v6);
  v71 = v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555D8);
  v9 = *(v8 - 8);
  v73 = v8;
  v74 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v69 = v59 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555E0);
  v80 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v12);
  v70 = v59 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555E8);
  v81 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v14);
  v75 = v59 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555F0);
  v17 = *(v16 - 8);
  v82 = v16;
  v83 = v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v76 = v59 - v19;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555F8);
  MEMORY[0x1EEE9AC00](v68, v20);
  v62 = v59 - v21;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600);
  v23 = MEMORY[0x1EEE9AC00](v67, v22);
  v25 = v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55608);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = v59 - v30;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55610);
  MEMORY[0x1EEE9AC00](v61, v32);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55618);
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v33);
  v35 = v59 - v34;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55620);
  v66 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v36);
  v60 = v59 - v37;
  sub_1BE04CBA4();
  v38 = MEMORY[0x1E695C068];
  sub_1BD0DE4F4(&unk_1EBD36958, &qword_1EBD55608);
  sub_1BE04D8F4();
  (*(v28 + 8))(v31, v27);
  sub_1BE04CAD4();
  v59[0] = v25;
  sub_1BE04CA84();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555B0);
  sub_1BE04D884();
  swift_endAccess();
  sub_1BD0DE4F4(&qword_1EBD369B0, &qword_1EBD55610);
  v59[1] = v38;
  sub_1BD0DE4F4(&qword_1EBD36950, &qword_1EBD55600);
  sub_1BD0DE4F4(&qword_1EBD36970, &qword_1EBD555F8);
  sub_1BE04D7B4();
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1BD840528;
  *(v40 + 24) = v39;
  sub_1BD0DE4F4(&qword_1EBD369B8, &qword_1EBD55618);
  v41 = v60;
  v42 = v63;
  sub_1BE04D8F4();

  (*(v64 + 8))(v35, v42);
  v43 = sub_1BE04CC14();
  sub_1BD0DE4F4(&qword_1EBD369A0, &qword_1EBD55620);
  v44 = v65;
  sub_1BE04D964();
  (*(v66 + 8))(v41, v44);
  v43(v87, 0);
  sub_1BE04CA84();
  sub_1BE04CBE4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555B8);
  sub_1BE04D884();
  swift_endAccess();
  sub_1BD0DE4F4(&qword_1EBD36968, &qword_1EBD555D0);
  v45 = v69;
  sub_1BE04D7A4();
  sub_1BD0DE4F4(&unk_1EBD369C0, &qword_1EBD555D8);
  v46 = v70;
  v47 = v73;
  sub_1BE04D904();
  (*(v74 + 8))(v45, v47);
  v48 = v77;
  sub_1BE052D24();
  sub_1BD14BE3C();
  v49 = sub_1BE052D54();
  v87[0] = v49;
  v50 = sub_1BE052D14();
  v51 = v84;
  (*(*(v50 - 8) + 56))(v84, 1, 1, v50);
  sub_1BD0DE4F4(&qword_1EBD36988, &qword_1EBD555E0);
  sub_1BD8405B0(&qword_1EBD35EA0, sub_1BD14BE3C);
  v52 = v75;
  v53 = v78;
  sub_1BE04D934();
  sub_1BD0DE53C(v51, &unk_1EBD4D240);

  (*(v85 + 8))(v48, v86);
  (*(v80 + 8))(v46, v53);
  sub_1BD0DE4F4(&unk_1EBD36978, &qword_1EBD555E8);
  v54 = v76;
  v55 = v79;
  sub_1BE04D944();
  (*(v81 + 8))(v52, v55);
  v56 = sub_1BE04CBC4();
  sub_1BD0DE4F4(&unk_1EBD36990, &qword_1EBD555F0);
  v57 = v82;
  sub_1BE04D964();
  (*(v83 + 8))(v54, v57);
  return v56(v87, 0);
}

uint64_t sub_1BD83EB9C(char a1, char a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1 & 1) == 0 || (a2)
    {

      return 0;
    }

    v7 = result + qword_1EBDAADA8;
    if ([*(result + qword_1EBDAADA8 + 32) fundingMode] == 2)
    {
      v8 = *(v7 + 32);
      v9 = [v8 selectedPaymentOffer];

      if (!v9)
      {
        return 0;
      }
    }

    else
    {
    }

    if (a3)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_1BD83ECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BE04C7B4();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v27[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v27[-v18];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v22 = sub_1BE04AFE4();
    (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
    v23 = qword_1EBD36428;
    swift_beginAccess();
    sub_1BD12651C(v19, v21 + v23);
    swift_endAccess();
    v24 = (v21 + qword_1EBDAADB0);
    v25 = *(v21 + qword_1EBDAADB0);
    *v24 = a2;
    v24[1] = a3;
    sub_1BD0D44B8(a2);
    sub_1BD0D4744(v25);
    v26 = *(v8 + 16);
    v26(v15, a4, v7);
    swift_getKeyPath();
    swift_getKeyPath();
    v26(v12, v15, v7);
    sub_1BE04D8C4();
    return (*(v8 + 8))(v15, v7);
  }

  return result;
}

uint64_t sub_1BD83EF20(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = sub_1BE04AFE4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v34 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AD0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = v32 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    v32[1] = a4;
    v33 = a3;
    v25 = qword_1EBD36428;
    swift_beginAccess();
    (*(v8 + 16))(v22, a2, v7);
    (*(v8 + 56))(v22, 0, 1, v7);
    v26 = *(v11 + 48);
    sub_1BD0DE19C(v24 + v25, v14, &qword_1EBD39980);
    sub_1BD0DE19C(v22, &v14[v26], &qword_1EBD39980);
    v27 = *(v8 + 48);
    if (v27(v14, 1, v7) == 1)
    {
      sub_1BD0DE53C(v22, &qword_1EBD39980);
      if (v27(&v14[v26], 1, v7) == 1)
      {
        v28 = sub_1BD0DE53C(v14, &qword_1EBD39980);
        goto LABEL_10;
      }
    }

    else
    {
      sub_1BD0DE19C(v14, v19, &qword_1EBD39980);
      if (v27(&v14[v26], 1, v7) != 1)
      {
        v29 = v34;
        (*(v8 + 32))(v34, &v14[v26], v7);
        sub_1BD8405B0(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
        v30 = sub_1BE052334();
        v31 = *(v8 + 8);
        v31(v29, v7);
        sub_1BD0DE53C(v22, &qword_1EBD39980);
        v31(v19, v7);
        v28 = sub_1BD0DE53C(v14, &qword_1EBD39980);
        if ((v30 & 1) == 0)
        {
        }

LABEL_10:
        v33(v28);
      }

      sub_1BD0DE53C(v22, &qword_1EBD39980);
      (*(v8 + 8))(v19, v7);
    }

    return sub_1BD0DE53C(v14, &unk_1EBD39AD0);
  }

  return result;
}

uint64_t sub_1BD83F3A4()
{
  v1 = qword_1EBD36400;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55598);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EBD36448;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD555A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = qword_1EBD36430;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42800);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = qword_1EBD36438;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555B0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = qword_1EBD36410;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555B8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = qword_1EBD55568;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD555C0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);

  v13 = *(v0 + qword_1EBDAADA8);
  v14 = *(v0 + qword_1EBDAADA8 + 24);
  v15 = *(v0 + qword_1EBDAADA8 + 32);

  swift_unknownObjectRelease();
  sub_1BD0D4744(*(v0 + qword_1EBDAADB0));
  return sub_1BD0DE53C(v0 + qword_1EBD36428, &qword_1EBD39980);
}

uint64_t sub_1BD83F60C()
{
  v0 = sub_1BE04CC44();
  v1 = qword_1EBD36400;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55598);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EBD36448;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD555A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = qword_1EBD36430;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42800);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = qword_1EBD36438;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555B0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = qword_1EBD36410;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555B8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = qword_1EBD55568;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD555C0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);

  v13 = *(v0 + qword_1EBDAADA8);
  v14 = *(v0 + qword_1EBDAADA8 + 24);
  v15 = *(v0 + qword_1EBDAADA8 + 32);

  swift_unknownObjectRelease();
  sub_1BD0D4744(*(v0 + qword_1EBDAADB0));
  sub_1BD0DE53C(v0 + qword_1EBD36428, &qword_1EBD39980);
  return v0;
}

uint64_t sub_1BD83F880()
{
  sub_1BD83F60C();

  return swift_deallocClassInstance();
}

void sub_1BD83F8D4()
{
  if (!qword_1EBD36920)
  {
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD36920);
    }
  }
}