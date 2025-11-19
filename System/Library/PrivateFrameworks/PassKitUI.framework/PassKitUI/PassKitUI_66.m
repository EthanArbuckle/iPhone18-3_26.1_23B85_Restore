void sub_1BD7263DC(uint64_t a1, void (*a2)(uint64_t, unint64_t, void, uint64_t), uint64_t a3)
{
  v116 = sub_1BE04BD74();
  v120 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v6);
  v114 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v115 = &v109 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v112 = &v109 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v110 = &v109 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v111 = &v109 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v113 = &v109 - v22;
  v23 = sub_1BE04BAC4();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BE04D214();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v109 - v35;
  v37 = swift_allocObject();
  v118 = a2;
  v119 = a3;
  *(v37 + 16) = a2;
  *(v37 + 24) = a3;
  v121 = v37;
  v122 = a1;
  v38 = *(a1 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup);
  sub_1BE048964();
  v39 = [v38 methods];
  sub_1BD0E5E8C(0, &qword_1EBD45968);
  v40 = sub_1BE052744();

  if (v40 >> 62)
  {
    if (sub_1BE053704())
    {
LABEL_3:
      if ((v40 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1BFB40900](0, v40);
      }

      else
      {
        if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_39;
        }

        v41 = *(v40 + 32);
      }

      v117 = v41;

      sub_1BE04D0C4();
      v42 = sub_1BE04D204();
      v43 = sub_1BE052C54();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1BD026000, v42, v43, "Showing setup assistant OTP enter later alert", v44, 2u);
        MEMORY[0x1BFB45F20](v44, -1, -1);
      }

      v45 = *(v29 + 8);
      v45(v36, v28);
      sub_1BE04BC34();
      v46 = sub_1BE04BAB4();
      (*(v24 + 8))(v27, v23);
      v47 = v117;
      v48 = [v117 type];
      if (v48 <= 3)
      {
        v49 = v120;
        if (v48 >= 2)
        {
          if (v48 == 2)
          {
            objc_opt_self();
            v50 = swift_dynamicCastObjCClass();
            if (v50)
            {
              v51 = v50;
              v52 = v47;
              if ([v51 direction] == 1)
              {
                v113 = v52;
                v53 = *(v49 + 104);
                v54 = v111;
                LODWORD(v115) = *MEMORY[0x1E69B80D8];
                v55 = v116;
                v114 = v53;
                (v53)(v111);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
                v56 = swift_allocObject();
                *(v56 + 16) = xmmword_1BE0B69E0;
                v57 = [*(v122 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController) pass];
                if (v57)
                {
                  v58 = v57;
                  v59 = [v57 organizationName];

                  v60 = sub_1BE052434();
                  v62 = v61;

                  *(v56 + 56) = MEMORY[0x1E69E6158];
                  *(v56 + 64) = sub_1BD110550();
                  *(v56 + 32) = v60;
                  *(v56 + 40) = v62;
                  v118 = sub_1BE04B714();

                  v63 = *(v49 + 8);
                  v120 = v49 + 8;
                  v63(v54, v55);
                  v64 = sub_1BE052404();
                  v65 = PKDeviceSpecificLocalizedStringKeyForKey(v64, v46 & 1);

                  if (v65)
                  {
                    sub_1BE052434();

                    v66 = v110;
                    (v114)(v110, v115, v55);
                    v67 = PKPassKitBundle();
                    if (v67)
                    {
                      v68 = v67;
                      sub_1BE04B6F4();

                      v63(v66, v55);
LABEL_31:
                      v105 = v117;
                      v106 = sub_1BE052404();

                      v107 = sub_1BE052404();

                      v108 = [objc_opt_self() errorWithTitle:v106 message:v107 severity:6];

                      sub_1BD72374C(v108, sub_1BD72713C, v121);

                      return;
                    }

                    goto LABEL_47;
                  }

LABEL_46:

                  __break(1u);
LABEL_47:

                  __break(1u);
                  goto LABEL_48;
                }

LABEL_45:

                __break(1u);
                goto LABEL_46;
              }
            }

            goto LABEL_23;
          }

          if (v48 == 3)
          {
            v89 = *(v120 + 104);
            v90 = v113;
            LODWORD(v115) = *MEMORY[0x1E69B80D8];
            v91 = v116;
            v114 = v89;
            (v89)(v113);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
            v92 = swift_allocObject();
            *(v92 + 16) = xmmword_1BE0B69E0;
            v93 = [*(v122 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController) pass];
            if (v93)
            {
              v94 = v93;
              v95 = [v93 organizationName];

              v96 = sub_1BE052434();
              v98 = v97;

              *(v92 + 56) = MEMORY[0x1E69E6158];
              *(v92 + 64) = sub_1BD110550();
              *(v92 + 32) = v96;
              *(v92 + 40) = v98;
              v118 = sub_1BE04B714();

              v99 = *(v49 + 8);
              v120 = v49 + 8;
              v99(v90, v91);
              v100 = sub_1BE052404();
              v101 = PKDeviceSpecificLocalizedStringKeyForKey(v100, v46 & 1);

              if (v101)
              {
                sub_1BE052434();

                v102 = v112;
                (v114)(v112, v115, v91);
                v103 = PKPassKitBundle();
                if (v103)
                {
                  v104 = v103;
                  sub_1BE04B6F4();

                  v99(v102, v91);
                  goto LABEL_31;
                }

                goto LABEL_44;
              }

LABEL_43:

              __break(1u);
LABEL_44:

              __break(1u);
              goto LABEL_45;
            }

LABEL_42:

            __break(1u);
            goto LABEL_43;
          }

LABEL_48:

          sub_1BE053994();
          __break(1u);
          return;
        }

LABEL_23:
        sub_1BE04D0C4();
        v86 = sub_1BE04D204();
        v87 = sub_1BE052C54();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_1BD026000, v86, v87, "no title or message to show cannot create alert", v88, 2u);
          MEMORY[0x1BFB45F20](v88, -1, -1);
        }

        v45(v32, v28);
        v118(0x7361207075746573, 0xEF746E6174736973, 0, 1);

        return;
      }

      v69 = v120;
      if ((v48 - 4) >= 2)
      {
        if ((v48 - 6) >= 2)
        {
          goto LABEL_48;
        }

        goto LABEL_23;
      }

      LODWORD(v113) = v46;
      v70 = *(v120 + 104);
      v71 = v115;
      v72 = v116;
      LODWORD(v112) = *MEMORY[0x1E69B80D8];
      v111 = v70;
      (v70)(v115);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_1BE0B69E0;
      v74 = [*(v122 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController) pass];
      if (v74)
      {
        v75 = v74;
        v76 = [v74 organizationName];

        v77 = sub_1BE052434();
        v79 = v78;

        *(v73 + 56) = MEMORY[0x1E69E6158];
        *(v73 + 64) = sub_1BD110550();
        *(v73 + 32) = v77;
        *(v73 + 40) = v79;
        v118 = sub_1BE04B714();

        v80 = *(v69 + 8);
        v80(v71, v72);
        v81 = sub_1BE052404();
        v82 = PKDeviceSpecificLocalizedStringKeyForKey(v81, v113 & 1);

        if (v82)
        {
          sub_1BE052434();

          v83 = v114;
          (v111)(v114, v112, v72);
          v84 = PKPassKitBundle();
          if (v84)
          {
            v85 = v84;
            sub_1BE04B6F4();

            v80(v83, v72);
            goto LABEL_31;
          }

          goto LABEL_41;
        }

LABEL_40:

        __break(1u);
LABEL_41:

        __break(1u);
        goto LABEL_42;
      }

LABEL_39:

      __break(1u);
      goto LABEL_40;
    }
  }

  else if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v118(0x7361207075746573, 0xEF746E6174736973, 0, 1);
}

uint64_t sub_1BD7271C4()
{
  v0 = sub_1BE049B44();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v11 - v7;
  sub_1BE0499E4();
  v9 = (*(v1 + 88))(v8, v0);
  if (v9 == *MEMORY[0x1E6967B18])
  {
    return sub_1BE04A954();
  }

  if (v9 == *MEMORY[0x1E6967B10])
  {
    return sub_1BE04A944();
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000020, 0x80000001BE1375E0);
  sub_1BE0499E4();
  sub_1BE053974();
  (*(v1 + 8))(v4, v0);
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD7273EC@<X0>(uint64_t a1@<X8>)
{
  v26[1] = a1;
  v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD515E8);
  MEMORY[0x1EEE9AC00](v26[0], v1);
  v3 = v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD515F0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD515F8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v26 - v10;
  v12 = sub_1BE04EB24();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD70A2A0(v16);
  v17 = sub_1BE04EB14();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    *v11 = sub_1BE04F504();
    *(v11 + 1) = 0;
    v11[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51628);
    sub_1BD728A94(&v11[*(v18 + 44)]);
    v19 = sub_1BE051464();
    KeyPath = swift_getKeyPath();
    v21 = &v11[*(v8 + 36)];
    *v21 = KeyPath;
    v21[1] = v19;
    v22 = &qword_1EBD515F8;
    sub_1BD0DE19C(v11, v7, &qword_1EBD515F8);
    swift_storeEnumTagMultiPayload();
    sub_1BD7294DC();
    sub_1BD0DE4F4(&qword_1EBD51620, &qword_1EBD515E8);
    sub_1BE04F9A4();
    v23 = v11;
  }

  else
  {
    *v3 = sub_1BE04F4E4();
    *(v3 + 1) = 0;
    v3[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51600);
    sub_1BD727778(&v3[*(v24 + 44)]);
    v22 = &qword_1EBD515E8;
    sub_1BD0DE19C(v3, v7, &qword_1EBD515E8);
    swift_storeEnumTagMultiPayload();
    sub_1BD7294DC();
    sub_1BD0DE4F4(&qword_1EBD51620, &qword_1EBD515E8);
    sub_1BE04F9A4();
    v23 = v3;
  }

  return sub_1BD0DE53C(v23, v22);
}

uint64_t sub_1BD727778@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51690);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51698);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v23 - v16;
  *v17 = sub_1BE04F7C4();
  *(v17 + 1) = 0x4000000000000000;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD516A0);
  sub_1BD7279D4(&v17[*(v18 + 44)]);
  *v9 = sub_1BE04F504();
  *(v9 + 1) = 0x4020000000000000;
  v9[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD516A8);
  sub_1BD728098(&v9[*(v19 + 44)]);
  sub_1BD0DE19C(v17, v13, &qword_1EBD51698);
  sub_1BD0DE19C(v9, v5, &qword_1EBD51690);
  sub_1BD0DE19C(v13, a1, &qword_1EBD51698);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD516B0);
  v21 = a1 + *(v20 + 48);
  *v21 = 0x4024000000000000;
  *(v21 + 8) = 0;
  sub_1BD0DE19C(v5, a1 + *(v20 + 64), &qword_1EBD51690);
  sub_1BD0DE53C(v9, &qword_1EBD51690);
  sub_1BD0DE53C(v17, &qword_1EBD51698);
  sub_1BD0DE53C(v5, &qword_1EBD51690);
  return sub_1BD0DE53C(v13, &qword_1EBD51698);
}

uint64_t sub_1BD7279D4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v20 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v20 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v20 - v16;
  sub_1BD727B84();
  sub_1BD727D44(v13);
  sub_1BD0DE19C(v17, v9, &qword_1EBD3C0E8);
  sub_1BD0DE19C(v13, v5, &qword_1EBD3C0E8);
  sub_1BD0DE19C(v9, a1, &qword_1EBD3C0E8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD516C0);
  sub_1BD0DE19C(v5, a1 + *(v18 + 48), &qword_1EBD3C0E8);
  sub_1BD0DE53C(v13, &qword_1EBD3C0E8);
  sub_1BD0DE53C(v17, &qword_1EBD3C0E8);
  sub_1BD0DE53C(v5, &qword_1EBD3C0E8);
  return sub_1BD0DE53C(v9, &qword_1EBD3C0E8);
}

uint64_t sub_1BD727B84()
{
  type metadata accessor for FinanceKitTransactionCell();
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v0 = sub_1BE0506C4();
  v2 = v1;
  v4 = v3;
  sub_1BE050324();
  v5 = sub_1BE0505F4();
  v7 = v6;
  v9 = v8;

  sub_1BD0DDF10(v0, v2, v4 & 1);

  v10 = sub_1BE0505D4();
  v12 = v11;
  LOBYTE(v0) = v13;
  sub_1BD0DDF10(v5, v7, v9 & 1);

  swift_getKeyPath();
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108);
  sub_1BD1B9C50();
  sub_1BE050DE4();

  sub_1BD0DDF10(v10, v12, v0 & 1);
}

void sub_1BD727D44(uint64_t a1@<X8>)
{
  v3 = sub_1BE04EB24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FinanceKitTransactionCell();
  v39 = *(v1 + *(v8 + 32));
  v43 = v3;
  v44 = a1;
  v41 = v4;
  v42 = v1;
  v40 = v7;
  if (v39 == 1)
  {
    v9 = sub_1BE052404();
    v10 = PKLocalizedPaymentString(v9);

    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = sub_1BE052434();
    v13 = v12;
  }

  else
  {
    v14 = (v1 + *(v8 + 24));
    v13 = v14[1];
    if (v13)
    {
      v11 = *v14;
      sub_1BE048C84();
    }

    else
    {
      v13 = 0xE100000000000000;
      v11 = 10;
    }
  }

  v45 = v11;
  v46 = v13;
  sub_1BD0DDEBC();
  v15 = sub_1BE0506C4();
  v17 = v16;
  v19 = v18;
  sub_1BE0502A4();
  v20 = sub_1BE0505F4();
  v22 = v21;
  v24 = v23;

  sub_1BD0DDF10(v15, v17, v19 & 1);

  if (v39)
  {
    v25 = sub_1BE0513B4();
  }

  else
  {
    v26 = [objc_opt_self() secondaryLabelColor];
    v25 = sub_1BE0511C4();
  }

  v45 = v25;
  v27 = sub_1BE050574();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1BD0DDF10(v20, v22, v24 & 1);

  v34 = v40;
  sub_1BD70A2A0(v40);
  v35 = sub_1BE04EB14();
  (*(v41 + 8))(v34, v43);
  if (v35)
  {
    v36 = 2;
  }

  else
  {
    v36 = 1;
  }

  KeyPath = swift_getKeyPath();
  v45 = v27;
  v46 = v29;
  v47 = v31 & 1;
  v48 = v33;
  v49 = KeyPath;
  v50 = v36;
  v51 = 0;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108);
  sub_1BD1B9C50();
  sub_1BE050DE4();

  sub_1BD0DDF10(v27, v29, v31 & 1);
}

uint64_t sub_1BD728098@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51630);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51668);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v20 - v16;
  sub_1BD728288(&v20 - v16);
  sub_1BD728724(v9);
  sub_1BD0DE19C(v17, v13, &qword_1EBD51668);
  sub_1BD0DE19C(v9, v5, &qword_1EBD51630);
  sub_1BD0DE19C(v13, a1, &qword_1EBD51668);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD516B8);
  sub_1BD0DE19C(v5, a1 + *(v18 + 48), &qword_1EBD51630);
  sub_1BD0DE53C(v9, &qword_1EBD51630);
  sub_1BD0DE53C(v17, &qword_1EBD51668);
  sub_1BD0DE53C(v5, &qword_1EBD51630);
  return sub_1BD0DE53C(v13, &qword_1EBD51668);
}

uint64_t sub_1BD728288@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v44 = sub_1BE050674();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v3);
  v41 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1BE04EB24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51678);
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v10);
  v42 = &v36[-v11];
  v12 = type metadata accessor for FinanceKitTransactionCell();
  v13 = (v1 + *(v12 + 28));
  v14 = v13[1];
  *&v52[0] = *v13;
  *(&v52[0] + 1) = v14;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v15 = sub_1BE0506C4();
  v17 = v16;
  v19 = v18;
  sub_1BE0502A4();
  v40 = sub_1BE0505F4();
  v39 = v20;
  v37 = v21;
  v38 = v22;

  sub_1BD0DDF10(v15, v17, v19 & 1);

  sub_1BD70A2A0(v9);
  v23 = sub_1BE04EB14();
  (*(v6 + 8))(v9, v5);
  KeyPath = swift_getKeyPath();
  if (*(v2 + *(v12 + 32)) == 1)
  {
    v25 = [objc_opt_self() secondaryLabelColor];
    v26 = sub_1BE0511C4();
  }

  else
  {
    v26 = sub_1BE051464();
  }

  v27 = v26;
  if (v23)
  {
    v28 = 0.5;
  }

  else
  {
    v28 = 1.0;
  }

  v29 = swift_getKeyPath();
  v53 = v37 & 1;
  *&v48 = v40;
  *(&v48 + 1) = v39;
  LOBYTE(v49) = v37 & 1;
  *(&v49 + 1) = v38;
  *&v50 = KeyPath;
  *(&v50 + 1) = v28;
  *&v51 = v29;
  *(&v51 + 1) = v27;
  v30 = v41;
  sub_1BE050664();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51680);
  v32 = sub_1BD7295C0();
  v33 = v42;
  sub_1BE050A54();
  (*(v43 + 8))(v30, v44);
  v52[0] = v48;
  v52[1] = v49;
  v52[2] = v50;
  v52[3] = v51;
  sub_1BD0DE53C(v52, &qword_1EBD51680);
  sub_1BE052434();
  *&v48 = v31;
  *(&v48 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  v34 = v46;
  sub_1BE050DE4();

  return (*(v45 + 8))(v33, v34);
}

double sub_1BD728724@<D0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = sub_1BE04EB24();
  v1 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51650);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - v8;
  v10 = sub_1BE051574();
  v11 = sub_1BE050324();
  KeyPath = swift_getKeyPath();
  *&v28 = v10;
  *(&v28 + 1) = KeyPath;
  *&v29 = v11;
  sub_1BE0503A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49180);
  sub_1BD0F14E8();
  sub_1BE050854();

  v13 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51658) + 36)];
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EFB0) + 28);
  v15 = *MEMORY[0x1E69816C8];
  v16 = sub_1BE0515D4();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = swift_getKeyPath();
  v17 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51660) + 36)];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = [objc_opt_self() tertiaryLabelColor];
  *&v9[*(v6 + 44)] = sub_1BE0511C4();
  sub_1BD70A2A0(v4);
  sub_1BE04EB14();
  v19 = *(v1 + 8);
  v20 = v26;
  v19(v4, v26);
  sub_1BD70A2A0(v4);
  sub_1BE04EB14();
  v19(v4, v20);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v21 = v27;
  sub_1BD0A8268(v9, v27);
  v22 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51630) + 36));
  v23 = v29;
  *v22 = v28;
  v22[1] = v23;
  result = *&v30;
  v22[2] = v30;
  return result;
}

uint64_t sub_1BD728A94@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51630);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51638);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v22 - v16;
  *v17 = sub_1BE04F7C4();
  *(v17 + 1) = 0x4000000000000000;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51640);
  sub_1BD728CC4(&v17[*(v18 + 44)]);
  sub_1BD728724(v9);
  sub_1BD0DE19C(v17, v13, &qword_1EBD51638);
  sub_1BD0DE19C(v9, v5, &qword_1EBD51630);
  sub_1BD0DE19C(v13, a1, &qword_1EBD51638);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51648);
  v20 = a1 + *(v19 + 48);
  *v20 = 0x4024000000000000;
  *(v20 + 8) = 0;
  sub_1BD0DE19C(v5, a1 + *(v19 + 64), &qword_1EBD51630);
  sub_1BD0DE53C(v9, &qword_1EBD51630);
  sub_1BD0DE53C(v17, &qword_1EBD51638);
  sub_1BD0DE53C(v5, &qword_1EBD51630);
  return sub_1BD0DE53C(v13, &qword_1EBD51638);
}

uint64_t sub_1BD728CC4@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51668);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v28 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v28 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v28 - v23;
  sub_1BD727B84();
  sub_1BD727D44(v20);
  sub_1BD728288(v8);
  sub_1BD0DE19C(v24, v16, &qword_1EBD3C0E8);
  sub_1BD0DE19C(v20, v12, &qword_1EBD3C0E8);
  sub_1BD0DE19C(v8, v4, &qword_1EBD51668);
  v25 = v29;
  sub_1BD0DE19C(v16, v29, &qword_1EBD3C0E8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51670);
  sub_1BD0DE19C(v12, v25 + *(v26 + 48), &qword_1EBD3C0E8);
  sub_1BD0DE19C(v4, v25 + *(v26 + 64), &qword_1EBD51668);
  sub_1BD0DE53C(v8, &qword_1EBD51668);
  sub_1BD0DE53C(v20, &qword_1EBD3C0E8);
  sub_1BD0DE53C(v24, &qword_1EBD3C0E8);
  sub_1BD0DE53C(v4, &qword_1EBD51668);
  sub_1BD0DE53C(v12, &qword_1EBD3C0E8);
  return sub_1BD0DE53C(v16, &qword_1EBD3C0E8);
}

double sub_1BD728F64@<D0>(uint64_t a1@<X8>)
{
  sub_1BD7273EC(a1);
  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD515E0) + 36);
  result = 16.0;
  *v2 = xmmword_1BE0F30A0;
  *(v2 + 16) = xmmword_1BE0F0E90;
  *(v2 + 32) = 0;
  return result;
}

uint64_t sub_1BD728FC0@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v11 = a1[1];
  v12 = v4;
  v10 = a1[2];
  v5 = *(a1 + 48);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for FinanceKitTransactionCell();
  v7 = a1[1];
  *(a2 + v6[5]) = *a1;
  *(a2 + v6[6]) = v7;
  *(a2 + v6[7]) = a1[2];
  *(a2 + v6[8]) = v5;
  sub_1BD206260(&v12, v9);
  sub_1BD0DE19C(&v11, v9, &qword_1EBD3A5C8);
  return sub_1BD206260(&v10, v9);
}

double sub_1BD7290A0@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for FinanceKitTransactionCell();
  sub_1BD729208();
  sub_1BE048964();
  sub_1BE051704();
  v2 = sub_1BE051464();
  KeyPath = swift_getKeyPath();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD515A0) + 36));
  *v4 = KeyPath;
  v4[1] = v2;
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD515A8) + 36);
  result = 16.0;
  *v5 = xmmword_1BE0F30A0;
  *(v5 + 16) = xmmword_1BE0F0E90;
  *(v5 + 32) = 0;
  return result;
}

uint64_t type metadata accessor for FinanceKitTransactionCell()
{
  result = qword_1EBD515B0;
  if (!qword_1EBD515B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BD729208()
{
  result = qword_1EBD51598;
  if (!qword_1EBD51598)
  {
    type metadata accessor for FinanceKitTransactionCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51598);
  }

  return result;
}

void sub_1BD729288()
{
  sub_1BD25EFF4();
  if (v0 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BD729324()
{
  result = qword_1EBD515C0;
  if (!qword_1EBD515C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD515A8);
    sub_1BD7293DC();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD515C0);
  }

  return result;
}

unint64_t sub_1BD7293DC()
{
  result = qword_1EBD515C8;
  if (!qword_1EBD515C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD515A0);
    sub_1BD0DE4F4(&qword_1EBD515D0, &qword_1EBD515D8);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD515C8);
  }

  return result;
}

unint64_t sub_1BD7294DC()
{
  result = qword_1EBD51608;
  if (!qword_1EBD51608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD515F8);
    sub_1BD0DE4F4(&qword_1EBD51610, &qword_1EBD51618);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51608);
  }

  return result;
}

unint64_t sub_1BD7295C0()
{
  result = qword_1EBD51688;
  if (!qword_1EBD51688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51680);
    sub_1BD166FEC();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51688);
  }

  return result;
}

unint64_t sub_1BD729678()
{
  result = qword_1EBD516C8;
  if (!qword_1EBD516C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD515E0);
    sub_1BD729730();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD516C8);
  }

  return result;
}

unint64_t sub_1BD729730()
{
  result = qword_1EBD516D0;
  if (!qword_1EBD516D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD516D8);
    sub_1BD7297B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD516D0);
  }

  return result;
}

unint64_t sub_1BD7297B4()
{
  result = qword_1EBD516E0;
  if (!qword_1EBD516E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD516E8);
    sub_1BD7294DC();
    sub_1BD0DE4F4(&qword_1EBD51620, &qword_1EBD515E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD516E0);
  }

  return result;
}

void sub_1BD72986C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BE04B8D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v62 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04B944();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v59 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v63 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v50 - v17;
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, sel_loadView, v16);
  v19 = [v1 explanationView];
  if (!v19)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = v19;
  v21 = objc_opt_self();
  v22 = [v21 systemBackgroundColor];
  [v20 setTopBackgroundColor_];

  [v20 setShowPrivacyView_];
  [v1 setShowDoneButton_];
  v57 = v1;
  [v1 setShowCancelButton_];
  v23 = [objc_opt_self() systemFontOfSize_];
  v24 = [objc_opt_self() configurationWithFont_];

  v25 = v24;
  v26 = sub_1BE052404();
  v27 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  v52 = v25;
  v58 = v3;
  if (v27 && (v28 = [v21 systemBlueColor], v29 = objc_msgSend(v27, sel_imageWithTintColor_, v28), v27, v28, v29))
  {
    v30 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
    v31 = v29;
    v32 = [v30 initWithImage_];
    [v20 setHeroView_];

    [v20 setTopLogoPadding_];
    v51 = v31;
  }

  else
  {
    v51 = 0;
  }

  v33 = *(v11 + 104);
  v56 = *MEMORY[0x1E69B80D8];
  v55 = v33;
  v33(v18);
  v34 = PKPassKitBundle();
  if (!v34)
  {
    goto LABEL_18;
  }

  v35 = v34;
  sub_1BE04B6F4();

  v36 = *(v11 + 8);
  v53 = v11 + 8;
  v54 = v10;
  v36(v18, v10);
  v37 = sub_1BE052404();

  [v20 setTitleText_];

  v38 = v59;
  sub_1BE04BB94();
  v39 = v62;
  sub_1BE04B924();
  (*(v60 + 8))(v38, v61);
  v40 = (*(v4 + 88))(v39, v58);
  if (v40 == *MEMORY[0x1E69B7F78])
  {
    v41 = v63;
  }

  else
  {
    v41 = v63;
    if (v40 != *MEMORY[0x1E69B7F80] && v40 != *MEMORY[0x1E69B7F70] && v40 != *MEMORY[0x1E69B7F68] && v40 != *MEMORY[0x1E69B7F88])
    {
      goto LABEL_22;
    }
  }

  v42 = v54;
  v55(v41, v56, v54);
  v43 = PKPassKitBundle();
  if (!v43)
  {
    goto LABEL_19;
  }

  v44 = v43;
  sub_1BE04B6F4();

  v36(v41, v42);
  v45 = sub_1BE052404();

  [v20 setBodyText_];

  v46 = [v20 dockView];
  if (v46)
  {
    v47 = v46;
    v48 = [v46 footerView];
    if (v48)
    {
      v49 = v48;
      [v48 setSetUpLaterButton_];

      return;
    }

    goto LABEL_21;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD72A1A0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result + OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD8659A4(v1, &off_1F3BB6830, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD72A248(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v3[16] = *(v5 + 64);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD72A358, v2, 0);
}

uint64_t sub_1BD72A358()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = sub_1BD72B040(&qword_1EBD52550, MEMORY[0x1E6969530]);
  v4 = MEMORY[0x1BFB3FC10](v1, v3);
  v5 = OBJC_IVAR____TtC9PassKitUI32FinanceKitSpendingSummaryFetcher_cache;
  v0[19] = v4;
  v0[20] = v5;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_1BD149084(v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v0[21] = v9;
    sub_1BE048964();
    v10 = swift_task_alloc();
    v0[22] = v10;
    v11 = sub_1BE049814();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    *v10 = v0;
    v10[1] = sub_1BD72A6C4;
    v13 = v0[11];
    v14 = MEMORY[0x1E69E7288];
    v15 = v9;
    v16 = v11;
  }

  else
  {
    v18 = v0[17];
    v17 = v0[18];
    v19 = v0[15];
    v21 = v0[12];
    v20 = v0[13];
    v22 = sub_1BE0528D4();
    (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
    sub_1BD36E78C(v21, v18);
    v23 = sub_1BD72B040(&qword_1EBD51728, type metadata accessor for FinanceKitSpendingSummaryFetcher);
    v24 = (*(v19 + 80) + 40) & ~*(v19 + 80);
    v25 = swift_allocObject();
    v25[2] = v20;
    v25[3] = v23;
    v25[4] = v20;
    sub_1BD36E854(v18, v25 + v24);
    swift_retain_n();
    v26 = sub_1BDA548A4(0, 0, v17, &unk_1BE0F34F0, v25);
    v0[24] = v26;
    swift_beginAccess();
    sub_1BE048964();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v2 + v5);
    *(v2 + v5) = 0x8000000000000000;
    sub_1BD1DBDD4(v26, v4, isUniquelyReferenced_nonNull_native);
    *(v2 + v5) = v31;
    swift_endAccess();
    v28 = swift_task_alloc();
    v0[25] = v28;
    v29 = sub_1BE049814();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    *v28 = v0;
    v28[1] = sub_1BD72A868;
    v13 = v0[11];
    v14 = MEMORY[0x1E69E7288];
    v15 = v26;
    v16 = v29;
  }

  return MEMORY[0x1EEE6DA10](v13, v15, v16, v12, v14);
}

uint64_t sub_1BD72A6C4()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_1BD72AA0C;
  }

  else
  {
    v4 = sub_1BD72A7F0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD72A7F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD72A868()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_1BD72AA8C;
  }

  else
  {
    v4 = sub_1BD72A994;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD72A994()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD72AA0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD72AA8C()
{
  v1 = *(v0 + 152);
  swift_beginAccess();
  sub_1BD6B1EE0(v1);
  swift_endAccess();

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD72AB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BD72AB7C, a4, 0);
}

uint64_t sub_1BD72AB7C()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC9PassKitUI32FinanceKitSpendingSummaryFetcher_accountID;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1BD72AC3C;
  v4 = v0[4];
  v5 = v0[2];

  return MEMORY[0x1EEDC14A8](v5, v1 + v2, v4);
}

uint64_t sub_1BD72AC3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BD72AD30()
{
  v1 = OBJC_IVAR____TtC9PassKitUI32FinanceKitSpendingSummaryFetcher_cache;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + v1) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v8)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      *(v0 + v1) = MEMORY[0x1E69E7CC8];
    }

    v8 = *(v4 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      do
      {
LABEL_9:
        v8 &= v8 - 1;
        sub_1BE049814();
        sub_1BE048964();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
        sub_1BE052944();
      }

      while (v8);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD72AE9C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI32FinanceKitSpendingSummaryFetcher_accountID;
  v2 = sub_1BE04AFE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for FinanceKitSpendingSummaryFetcher()
{
  result = qword_1EBD51718;
  if (!qword_1EBD51718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD72AF88()
{
  result = sub_1BE04AFE4();
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

uint64_t sub_1BD72B040(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD72B088(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD0F985C;

  return sub_1BD72AB58(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1BD72B1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BE04F504();
  sub_1BD72B2F4(a1, a2, a4, &v15);
  v8 = v17;
  LOBYTE(a2) = BYTE2(v17);
  v11 = v16;
  v12 = v15;
  LOBYTE(v15) = BYTE2(v17);
  v9 = sub_1BE051234();
  v13[0] = 1;
  *&v13[24] = v11;
  *&v13[8] = v12;
  *&v13[40] = v8;
  v13[42] = a2;
  *&v14 = swift_getKeyPath();
  *(&v14 + 1) = v9;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51730);
  sub_1BD72B5A4();
  sub_1BE050DE4();

  v17 = *&v13[16];
  v18 = *&v13[32];
  v19 = v14;
  v15 = v7;
  v16 = *v13;
  return sub_1BD72B688(&v15);
}

double sub_1BD72B2F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1BE04F614();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  if (a3)
  {
    sub_1BE048C84();
    sub_1BE04F604();
    sub_1BE04F5F4();
    sub_1BE051574();
    sub_1BE04F5D4();

    sub_1BE04F5F4();
    sub_1BE04F5E4();
    sub_1BE04F5F4();
    sub_1BE04F634();
    v12 = sub_1BE050694();
  }

  else
  {
    *&v16 = a1;
    *(&v16 + 1) = a2;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v12 = sub_1BE0506C4();
  }

  v13 = v10;
  v14 = v11;
  sub_1BE0502A4();
  sub_1BE0505F4();

  sub_1BD0DDF10(v12, v13, v14 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48340);
  sub_1BD4E2C64();
  sub_1BE04F9A4();
  result = *&v16;
  *a4 = v16;
  *(a4 + 16) = v17;
  *(a4 + 32) = v18;
  *(a4 + 34) = v19;
  return result;
}

unint64_t sub_1BD72B5A4()
{
  result = qword_1EBD51738;
  if (!qword_1EBD51738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51730);
    sub_1BD0DE4F4(&qword_1EBD51740, &qword_1EBD51748);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51738);
  }

  return result;
}

uint64_t sub_1BD72B688(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD72B6F0()
{
  result = qword_1EBD51750;
  if (!qword_1EBD51750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51758);
    sub_1BD72B5A4();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51750);
  }

  return result;
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1BD72B7C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD72B810(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
      *(result + 232) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD72B8B4@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51760);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v29[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51768);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v29[-v14];
  sub_1BD72BC10(v16, v17);
  v18 = *(v1 + 184);
  *&v31[160] = *(v1 + 168);
  *&v31[176] = v18;
  v19 = *(v1 + 216);
  *&v31[192] = *(v1 + 200);
  *&v31[208] = v19;
  v20 = *(v1 + 120);
  *&v31[96] = *(v1 + 104);
  *&v31[112] = v20;
  v21 = *(v1 + 152);
  *&v31[128] = *(v1 + 136);
  *&v31[144] = v21;
  v22 = *(v1 + 56);
  *&v31[32] = *(v1 + 40);
  *&v31[48] = v22;
  v23 = *(v1 + 88);
  *&v31[64] = *(v1 + 72);
  *&v31[80] = v23;
  v24 = *(v1 + 24);
  *v31 = *(v1 + 8);
  *&v31[16] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48C18);
  MEMORY[0x1BFB3E970](v30, v25);
  v33[10] = *&v30[160];
  v33[11] = *&v30[176];
  v34 = *&v30[192];
  v33[6] = *&v30[96];
  v33[7] = *&v30[112];
  v33[9] = *&v30[144];
  v33[8] = *&v30[128];
  v33[2] = *&v30[32];
  v33[3] = *&v30[48];
  v33[5] = *&v30[80];
  v33[4] = *&v30[64];
  v33[1] = *&v30[16];
  v33[0] = *v30;
  sub_1BD4FBC18(v33);
  if (BYTE2(v34) == 1)
  {
    sub_1BD72C688(v7);
    sub_1BD72E360(v7, v15);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  (*(v4 + 56))(v15, v26, 1, v3);
  memcpy(v29, v32, sizeof(v29));
  sub_1BD0DE19C(v15, v11, &qword_1EBD51768);
  memcpy(v30, v29, sizeof(v30));
  memcpy(a1, v29, 0x1E1uLL);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51770);
  sub_1BD0DE19C(v11, a1 + *(v27 + 48), &qword_1EBD51768);
  sub_1BD0DE19C(v30, v31, &qword_1EBD51778);
  sub_1BD0DE53C(v15, &qword_1EBD51768);
  sub_1BD0DE53C(v11, &qword_1EBD51768);
  memcpy(v31, v29, sizeof(v31));
  return sub_1BD0DE53C(v31, &qword_1EBD51778);
}

void *sub_1BD72BC10(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v5 = *(v2 + 184);
  v123[10] = *(v2 + 168);
  v123[11] = v5;
  v6 = *(v2 + 216);
  v123[12] = *(v2 + 200);
  v123[13] = v6;
  v7 = *(v2 + 120);
  v123[6] = *(v2 + 104);
  v123[7] = v7;
  v8 = *(v2 + 152);
  v123[8] = *(v2 + 136);
  v123[9] = v8;
  v9 = *(v2 + 56);
  v123[2] = *(v2 + 40);
  v123[3] = v9;
  v10 = *(v2 + 88);
  v123[4] = *(v2 + 72);
  v123[5] = v10;
  v11 = *(v2 + 24);
  v123[0] = *(v2 + 8);
  v123[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48C18);
  MEMORY[0x1BFB3E970](__dst, v12);
  v124[10] = *&__dst[160];
  v124[11] = *&__dst[176];
  v125 = *&__dst[192];
  v124[6] = *&__dst[96];
  v124[7] = *&__dst[112];
  v124[9] = *&__dst[144];
  v124[8] = *&__dst[128];
  v124[2] = *&__dst[32];
  v124[3] = *&__dst[48];
  v124[5] = *&__dst[80];
  v124[4] = *&__dst[64];
  v124[1] = *&__dst[16];
  v124[0] = *__dst;
  sub_1BD4FBC18(v124);
  if (*(&v125 + 1) == 1)
  {
    sub_1BD72CAC4(sub_1BD72D060, sub_1BD72D568, &v32);
    sub_1BD72CAC4(sub_1BD72D9A8, sub_1BD72DEB4, &v47);
    v29 = v44;
    v30 = v45;
    v31 = v46;
    v25 = v40;
    v26 = v41;
    v28 = v43;
    v27 = v42;
    v21 = v36;
    v22 = v37;
    v24 = v39;
    v23 = v38;
    v17 = v32;
    v18 = v33;
    v20 = v35;
    v19 = v34;
    v104 = v59;
    v105 = v60;
    v106 = v61;
    v100 = v55;
    v101 = v56;
    v103 = v58;
    v102 = v57;
    v96 = v51;
    v97 = v52;
    v99 = v54;
    v98 = v53;
    v92 = v47;
    v93 = v48;
    v95 = v50;
    v94 = v49;
    v74 = v44;
    v75 = v45;
    v76 = v46;
    v70 = v40;
    v71 = v41;
    v73 = v43;
    v72 = v42;
    v66 = v36;
    v67 = v37;
    v69 = v39;
    v68 = v38;
    v62 = v32;
    v63 = v33;
    v65 = v35;
    v64 = v34;
    v14[12] = v44;
    v14[13] = v45;
    v14[8] = v40;
    v14[9] = v41;
    v14[10] = v42;
    v14[11] = v43;
    v14[4] = v36;
    v14[5] = v37;
    v14[6] = v38;
    v14[7] = v39;
    v14[0] = v32;
    v14[1] = v33;
    v14[2] = v34;
    v14[3] = v35;
    v89 = v59;
    v90 = v60;
    v91 = v61;
    v85 = v55;
    v86 = v56;
    v88 = v58;
    v87 = v57;
    v81 = v51;
    v82 = v52;
    v84 = v54;
    v83 = v53;
    v77 = v47;
    v78 = v48;
    v80 = v50;
    v79 = v49;
    v14[26] = v58;
    v14[27] = v59;
    v14[28] = v60;
    v14[29] = v61;
    v14[22] = v54;
    v14[23] = v55;
    v14[24] = v56;
    v14[25] = v57;
    v14[18] = v50;
    v14[19] = v51;
    v14[20] = v52;
    v14[21] = v53;
    v14[14] = v46;
    v14[15] = v47;
    v14[16] = v48;
    v14[17] = v49;
    sub_1BD0DE19C(&v32, v123, &qword_1EBD51780);
    sub_1BD0DE19C(&v47, v123, &qword_1EBD51780);
    sub_1BD0DE19C(&v62, v123, &qword_1EBD51780);
    sub_1BD0DE19C(&v77, v123, &qword_1EBD51780);
    sub_1BD0DE53C(&v92, &qword_1EBD51780);
    v119 = v29;
    v120 = v30;
    v121 = v31;
    v115 = v25;
    v116 = v26;
    v118 = v28;
    v117 = v27;
    v111 = v21;
    v112 = v22;
    v114 = v24;
    v113 = v23;
    v107 = v17;
    v108 = v18;
    v110 = v20;
    v109 = v19;
    sub_1BD0DE53C(&v107, &qword_1EBD51780);
    memcpy(__dst, v14, 0x1E0uLL);
    sub_1BD72E3DC(__dst);
  }

  else
  {
    sub_1BD72CAC4(sub_1BD72D9A8, sub_1BD72DEB4, &v32);
    sub_1BD72CAC4(sub_1BD72D060, sub_1BD72D568, &v47);
    v29 = v44;
    v30 = v45;
    v31 = v46;
    v25 = v40;
    v26 = v41;
    v28 = v43;
    v27 = v42;
    v21 = v36;
    v22 = v37;
    v24 = v39;
    v23 = v38;
    v17 = v32;
    v18 = v33;
    v20 = v35;
    v19 = v34;
    v104 = v59;
    v105 = v60;
    v106 = v61;
    v100 = v55;
    v101 = v56;
    v103 = v58;
    v102 = v57;
    v96 = v51;
    v97 = v52;
    v99 = v54;
    v98 = v53;
    v92 = v47;
    v93 = v48;
    v95 = v50;
    v94 = v49;
    v74 = v44;
    v75 = v45;
    v76 = v46;
    v70 = v40;
    v71 = v41;
    v73 = v43;
    v72 = v42;
    v66 = v36;
    v67 = v37;
    v69 = v39;
    v68 = v38;
    v62 = v32;
    v63 = v33;
    v65 = v35;
    v64 = v34;
    __src[12] = v44;
    __src[13] = v45;
    __src[8] = v40;
    __src[9] = v41;
    __src[11] = v43;
    __src[10] = v42;
    __src[4] = v36;
    __src[5] = v37;
    __src[7] = v39;
    __src[6] = v38;
    __src[0] = v32;
    __src[1] = v33;
    __src[2] = v34;
    __src[3] = v35;
    v89 = v59;
    v90 = v60;
    v91 = v61;
    v85 = v55;
    v86 = v56;
    v88 = v58;
    v87 = v57;
    v81 = v51;
    v82 = v52;
    v84 = v54;
    v83 = v53;
    v77 = v47;
    v78 = v48;
    v80 = v50;
    v79 = v49;
    __src[26] = v58;
    __src[27] = v59;
    __src[28] = v60;
    __src[29] = v61;
    __src[22] = v54;
    __src[23] = v55;
    __src[24] = v56;
    __src[25] = v57;
    __src[18] = v50;
    __src[19] = v51;
    __src[20] = v52;
    __src[21] = v53;
    __src[14] = v46;
    __src[15] = v47;
    __src[16] = v48;
    __src[17] = v49;
    sub_1BD0DE19C(&v32, v123, &qword_1EBD51780);
    sub_1BD0DE19C(&v47, v123, &qword_1EBD51780);
    sub_1BD0DE19C(&v62, v123, &qword_1EBD51780);
    sub_1BD0DE19C(&v77, v123, &qword_1EBD51780);
    sub_1BD0DE53C(&v92, &qword_1EBD51780);
    v119 = v29;
    v120 = v30;
    v121 = v31;
    v115 = v25;
    v116 = v26;
    v118 = v28;
    v117 = v27;
    v111 = v21;
    v112 = v22;
    v114 = v24;
    v113 = v23;
    v107 = v17;
    v108 = v18;
    v110 = v20;
    v109 = v19;
    sub_1BD0DE53C(&v107, &qword_1EBD51780);
    memcpy(__dst, __src, 0x1E0uLL);
    sub_1BD72E3D0(__dst);
  }

  memcpy(v123, __dst, 0x1E1uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51788);
  sub_1BD0DE4F4(&qword_1EBD51790, &qword_1EBD51788);
  sub_1BE04F9A4();
  sub_1BD0DE53C(&v47, &qword_1EBD51780);
  sub_1BD0DE53C(&v32, &qword_1EBD51780);
  memcpy(v123, v15, 0x1E1uLL);
  return memcpy(v4, v123, 0x1E1uLL);
}

id sub_1BD72C688@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41590);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v24 - v11;
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v24[0] = sub_1BE04B6F4();
    v16 = v15;

    (*(v3 + 8))(v6, v2);
    v17 = *(v1 + 184);
    v47 = *(v1 + 168);
    v48 = v17;
    v18 = *(v1 + 216);
    v49 = *(v1 + 200);
    v50 = v18;
    v19 = *(v1 + 120);
    v43 = *(v1 + 104);
    v44 = v19;
    v20 = *(v1 + 152);
    v45 = *(v1 + 136);
    v46 = v20;
    v21 = *(v1 + 56);
    v39 = *(v1 + 40);
    v40 = v21;
    v22 = *(v1 + 88);
    v41 = *(v1 + 72);
    v42 = v22;
    v23 = *(v1 + 24);
    v37 = *(v1 + 8);
    v38 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48C18);
    sub_1BE051914();
    swift_getKeyPath();
    v47 = v51[10];
    v48 = v51[11];
    v49 = v51[12];
    v50 = v51[13];
    v43 = v51[6];
    v44 = v51[7];
    v45 = v51[8];
    v46 = v51[9];
    v39 = v51[2];
    v40 = v51[3];
    v41 = v51[4];
    v42 = v51[5];
    v37 = v51[0];
    v38 = v51[1];
    sub_1BE051904();

    sub_1BD0DE53C(v51, &qword_1EBD48C18);
    v54 = v33;
    v55 = v34;
    v56 = v35;
    v57 = v36;
    v52 = v31;
    v53 = v32;
    swift_getKeyPath();
    v27 = v54;
    v28 = v55;
    v29 = v56;
    v30 = v57;
    v25 = v52;
    v26 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48C20);
    sub_1BE051904();

    sub_1BD0DE53C(&v52, &unk_1EBD48C20);
    v24[2] = v24[0];
    v24[3] = v16;
    sub_1BD0DDEBC();
    sub_1BE051E14();
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD415D8, &qword_1EBD41590);
    sub_1BE050DE4();

    return (*(v8 + 8))(v12, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD72CAC4@<X0>(void (*a1)(__int128 *__return_ptr, uint64_t)@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t)@<X1>, _OWORD *a3@<X8>)
{
  v7 = *(v3 + 184);
  v128 = *(v3 + 168);
  v129 = v7;
  v8 = *(v3 + 216);
  v130 = *(v3 + 200);
  v131 = v8;
  v9 = *(v3 + 120);
  v124 = *(v3 + 104);
  v125 = v9;
  v10 = *(v3 + 152);
  v126 = *(v3 + 136);
  v127 = v10;
  v11 = *(v3 + 56);
  v120 = *(v3 + 40);
  v121 = v11;
  v12 = *(v3 + 88);
  v122 = *(v3 + 72);
  v123 = v12;
  v13 = *(v3 + 24);
  v118 = *(v3 + 8);
  v119 = v13;
  v14 = *(v3 + 184);
  v114 = *(v3 + 168);
  v115 = v14;
  v15 = *(v3 + 216);
  v116 = *(v3 + 200);
  v117 = v15;
  v16 = *(v3 + 120);
  v110 = *(v3 + 104);
  v111 = v16;
  v17 = *(v3 + 152);
  v112 = *(v3 + 136);
  v113 = v17;
  v18 = *(v3 + 56);
  v106 = *(v3 + 40);
  v107 = v18;
  v19 = *(v3 + 88);
  v108 = *(v3 + 72);
  v109 = v19;
  v20 = *(v3 + 24);
  v104 = *(v3 + 8);
  v105 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48C18);
  MEMORY[0x1BFB3E970](&v91);
  v132[10] = v101;
  v132[11] = v102;
  v133 = v103;
  v132[6] = v97;
  v132[7] = v98;
  v132[9] = v100;
  v132[8] = v99;
  v132[2] = v93;
  v132[3] = v94;
  v132[5] = v96;
  v132[4] = v95;
  v132[1] = v92;
  v132[0] = v91;
  v22 = sub_1BD4FBC18(v132);
  if (v133 == 1)
  {
    a1(&v104, v22);
    v47 = *(&v104 + 1);
    v48 = v104;
    v45 = *(&v105 + 1);
    v46 = v105;
    v43 = v107;
    v44 = *(&v106 + 1);
    v54 = v108;
    v55 = v106;
    v52 = v109;
    v53 = *(&v108 + 1);
    v50 = v110;
    v51 = *(&v109 + 1);
    v49 = *(&v110 + 1);
    v41 = v111;
    v42 = *(&v107 + 1);
  }

  else
  {
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v54 = 0;
    v55 = 0;
    v43 = 0;
    v44 = 0;
    v41 = 0;
    v42 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v49 = 0;
  }

  v114 = v128;
  v115 = v129;
  v116 = v130;
  v117 = v131;
  v110 = v124;
  v111 = v125;
  v112 = v126;
  v113 = v127;
  v106 = v120;
  v107 = v121;
  v108 = v122;
  v109 = v123;
  v104 = v118;
  v105 = v119;
  MEMORY[0x1BFB3E970](&v78, v21);
  v101 = v88;
  v102 = v89;
  v103 = v90;
  v97 = v84;
  v98 = v85;
  v99 = v86;
  v100 = v87;
  v93 = v80;
  v94 = v81;
  v95 = v82;
  v96 = v83;
  v91 = v78;
  v92 = v79;
  v23 = sub_1BD4FBC18(&v91);
  if (BYTE1(v103) == 1)
  {
    a2(&v104, v23);
    v24 = *(&v104 + 1);
    v25 = v104;
    v27 = *(&v105 + 1);
    v26 = v105;
    v28 = *(&v106 + 1);
    v29 = v106;
    v30 = *(&v107 + 1);
    v31 = v107;
    v32 = *(&v108 + 1);
    v33 = v108;
    v34 = *(&v109 + 1);
    v35 = v109;
    v36 = *(&v110 + 1);
    v37 = v110;
    v38 = v111;
  }

  else
  {
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v26 = 0;
    v24 = 0;
    v25 = 0;
    v36 = 0;
    v38 = 0;
  }

  *&v70 = v25;
  *(&v70 + 1) = v24;
  *&v71 = v26;
  *(&v71 + 1) = v27;
  *&v72 = v29;
  *(&v72 + 1) = v28;
  *&v73 = v31;
  *(&v73 + 1) = v30;
  *&v74 = v33;
  *(&v74 + 1) = v32;
  *&v75 = v35;
  *(&v75 + 1) = v34;
  *&v76 = v37;
  *(&v76 + 1) = v36;
  *&v61[56] = v73;
  *&v61[40] = v72;
  *&v61[24] = v71;
  *&v61[104] = v76;
  *&v61[88] = v75;
  *&v61[72] = v74;
  *&v62 = v48;
  *(&v62 + 1) = v47;
  *&v63 = v46;
  *(&v63 + 1) = v45;
  *&v64 = v55;
  *(&v64 + 1) = v44;
  *&v65 = v43;
  *(&v65 + 1) = v42;
  *&v66 = v54;
  *(&v66 + 1) = v53;
  *&v67 = v52;
  *(&v67 + 1) = v51;
  *&v68 = v50;
  *(&v68 + 1) = v49;
  v56 = v64;
  v57 = v65;
  *v61 = v41;
  v59 = v67;
  v60 = v68;
  v58 = v66;
  *&v61[8] = v70;
  *&v61[120] = v38;
  v39 = v63;
  *a3 = v62;
  a3[1] = v39;
  a3[4] = v58;
  a3[5] = v59;
  a3[2] = v56;
  a3[3] = v57;
  a3[8] = *&v61[16];
  a3[9] = *&v61[32];
  a3[6] = v60;
  a3[7] = *v61;
  a3[13] = *&v61[96];
  a3[14] = *&v61[112];
  a3[11] = *&v61[64];
  a3[12] = *&v61[80];
  a3[10] = *&v61[48];
  *&v78 = v25;
  *(&v78 + 1) = v24;
  *&v79 = v26;
  *(&v79 + 1) = v27;
  *&v80 = v29;
  *(&v80 + 1) = v28;
  *&v81 = v31;
  *(&v81 + 1) = v30;
  *&v82 = v33;
  *(&v82 + 1) = v32;
  *&v83 = v35;
  *(&v83 + 1) = v34;
  *&v84 = v37;
  *(&v84 + 1) = v36;
  v77 = v38;
  *&v85 = v38;
  v69 = v41;
  sub_1BD0DE19C(&v62, &v104, &qword_1EBD51798);
  sub_1BD0DE19C(&v70, &v104, &qword_1EBD51798);
  sub_1BD0DE53C(&v78, &qword_1EBD51798);
  *&v104 = v48;
  *(&v104 + 1) = v47;
  *&v105 = v46;
  *(&v105 + 1) = v45;
  *&v106 = v55;
  *(&v106 + 1) = v44;
  *&v107 = v43;
  *(&v107 + 1) = v42;
  *&v108 = v54;
  *(&v108 + 1) = v53;
  *&v109 = v52;
  *(&v109 + 1) = v51;
  *&v110 = v50;
  *(&v110 + 1) = v49;
  *&v111 = v41;
  return sub_1BD0DE53C(&v104, &qword_1EBD51798);
}

id sub_1BD72D060@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69B8068], v4, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v106 = *v2;
    v12 = sub_1BE04B6F4();
    v53 = v13;
    v54 = v12;

    (*(v5 + 8))(v9, v4);
    v14 = *(v2 + 184);
    v91 = *(v2 + 168);
    v92 = v14;
    v15 = *(v2 + 216);
    v93 = *(v2 + 200);
    v94 = v15;
    v16 = *(v2 + 120);
    v87 = *(v2 + 104);
    v88 = v16;
    v17 = *(v2 + 152);
    v89 = *(v2 + 136);
    v90 = v17;
    v18 = *(v2 + 56);
    v83 = *(v2 + 40);
    v84 = v18;
    v19 = *(v2 + 88);
    v85 = *(v2 + 72);
    v86 = v19;
    v20 = *(v2 + 24);
    v81 = *(v2 + 8);
    v82 = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48C18);
    sub_1BE051914();
    swift_getKeyPath();
    v91 = v95[10];
    v92 = v95[11];
    v93 = v95[12];
    v94 = v95[13];
    v87 = v95[6];
    v88 = v95[7];
    v89 = v95[8];
    v90 = v95[9];
    v83 = v95[2];
    v84 = v95[3];
    v85 = v95[4];
    v86 = v95[5];
    v81 = v95[0];
    v82 = v95[1];
    sub_1BE051904();

    sub_1BD0DE53C(v95, &qword_1EBD48C18);
    v98 = v55[2];
    v99 = v55[3];
    v100 = v55[4];
    v101 = v55[5];
    v96 = v55[0];
    v97 = v55[1];
    swift_getKeyPath();
    v77 = v98;
    v78 = v99;
    v79 = v100;
    v80 = v101;
    v75 = v96;
    v76 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48C20);
    sub_1BE051904();

    sub_1BD0DE53C(&v96, &unk_1EBD48C20);
    v22 = v71;
    v23 = v72;
    v24 = v73;
    v52 = v74;
    v25 = *(v2 + 184);
    v67 = *(v2 + 168);
    v68 = v25;
    v26 = *(v2 + 216);
    v69 = *(v2 + 200);
    v70 = v26;
    v27 = *(v2 + 120);
    v63 = *(v2 + 104);
    v64 = v27;
    v28 = *(v2 + 152);
    v65 = *(v2 + 136);
    v66 = v28;
    v29 = *(v2 + 56);
    v59 = *(v2 + 40);
    v60 = v29;
    v30 = *(v2 + 88);
    v61 = *(v2 + 72);
    v62 = v30;
    v31 = *(v2 + 24);
    v57 = *(v2 + 8);
    v58 = v31;
    MEMORY[0x1BFB3E970](v107, v21);
    v32 = sub_1BD4F79E0();
    sub_1BD4FBC18(v107);
    v33 = *MEMORY[0x1E69B9838];
    v56 = 0;
    v34 = v33;
    sub_1BE051694();
    LOBYTE(v11) = v57;
    v35 = *(&v57 + 1);
    v56 = 0;
    sub_1BE051694();
    v36 = v57;
    v37 = *(&v57 + 1);
    v38 = v106;
    v39 = *MEMORY[0x1E69DE4C8];
    *&v57 = v22;
    *(&v57 + 1) = v23;
    v40 = v52;
    v41 = v53;
    *&v58 = v24;
    *(&v58 + 1) = v52;
    LOBYTE(v59) = v106;
    *(&v59 + 1) = *v105;
    DWORD1(v59) = *&v105[3];
    v42 = v54;
    *(&v59 + 1) = v54;
    *&v60 = v53;
    BYTE8(v60) = v32;
    HIDWORD(v60) = *&v104[3];
    *(&v60 + 9) = *v104;
    *&v61 = v34;
    *(&v61 + 1) = v39;
    *&v62 = 2;
    BYTE8(v62) = v11;
    HIDWORD(v62) = *&v103[3];
    *(&v62 + 9) = *v103;
    *&v63 = v35;
    BYTE8(v63) = v36;
    HIDWORD(v63) = *&v102[3];
    v43 = *v102;
    *(&v63 + 9) = *v102;
    *&v64 = v37;
    v45 = v61;
    v44 = v62;
    v46 = v63;
    *(a1 + 112) = v37;
    *(a1 + 80) = v44;
    *(a1 + 96) = v46;
    v47 = v57;
    v48 = v58;
    v49 = v59;
    *(a1 + 48) = v60;
    *(a1 + 64) = v45;
    *(a1 + 16) = v48;
    *(a1 + 32) = v49;
    *a1 = v47;
    *&v81 = v22;
    *(&v81 + 1) = v23;
    *&v82 = v24;
    *(&v82 + 1) = v40;
    LOBYTE(v83) = v38;
    DWORD1(v83) = *&v105[3];
    *(&v83 + 1) = *v105;
    *(&v83 + 1) = v42;
    *&v84 = v41;
    BYTE8(v84) = v32;
    HIDWORD(v84) = *&v104[3];
    *(&v84 + 9) = *v104;
    *&v85 = v34;
    *(&v85 + 1) = v39;
    *&v86 = 2;
    BYTE8(v86) = v11;
    HIDWORD(v86) = *&v103[3];
    *(&v86 + 9) = *v103;
    *&v87 = v35;
    BYTE8(v87) = v36;
    HIDWORD(v87) = *&v102[3];
    *(&v87 + 9) = v43;
    *&v88 = v37;
    v50 = v39;
    sub_1BD5C75CC(&v57, v55);
    return sub_1BD5C7604(&v81);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD72D568@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69B8068], v4, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v96 = *v2;
    v12 = sub_1BE04B6F4();
    v43 = v13;
    v44 = v12;

    (*(v5 + 8))(v9, v4);
    v14 = *(v2 + 184);
    v85 = *(v2 + 168);
    v86 = v14;
    v15 = *(v2 + 216);
    v87 = *(v2 + 200);
    v88 = v15;
    v16 = *(v2 + 120);
    v81 = *(v2 + 104);
    v82 = v16;
    v17 = *(v2 + 152);
    v83 = *(v2 + 136);
    v84 = v17;
    v18 = *(v2 + 56);
    v77 = *(v2 + 40);
    v78 = v18;
    v19 = *(v2 + 88);
    v79 = *(v2 + 72);
    v80 = v19;
    v20 = *(v2 + 24);
    v75 = *(v2 + 8);
    v76 = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48C18);
    sub_1BE051914();
    swift_getKeyPath();
    v85 = v89[10];
    v86 = v89[11];
    v87 = v89[12];
    v88 = v89[13];
    v81 = v89[6];
    v82 = v89[7];
    v83 = v89[8];
    v84 = v89[9];
    v77 = v89[2];
    v78 = v89[3];
    v79 = v89[4];
    v80 = v89[5];
    v75 = v89[0];
    v76 = v89[1];
    sub_1BE051904();

    sub_1BD0DE53C(v89, &qword_1EBD48C18);
    v92 = v71;
    v93 = v72;
    v94 = v73;
    v95 = v74;
    v90 = v69;
    v91 = v70;
    swift_getKeyPath();
    v65 = v92;
    v66 = v93;
    v67 = v94;
    v68 = v95;
    v63 = v90;
    v64 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48C20);
    sub_1BE051904();

    sub_1BD0DE53C(&v90, &unk_1EBD48C20);
    v42 = v60;
    v22 = v62;
    v41 = v61;
    v23 = *(v2 + 184);
    v56 = *(v2 + 168);
    v57 = v23;
    v24 = *(v2 + 216);
    v58 = *(v2 + 200);
    v59 = v24;
    v25 = *(v2 + 120);
    v52 = *(v2 + 104);
    v53 = v25;
    v26 = *(v2 + 152);
    v54 = *(v2 + 136);
    v55 = v26;
    v27 = *(v2 + 56);
    v48 = *(v2 + 40);
    v49 = v27;
    v28 = *(v2 + 88);
    v50 = *(v2 + 72);
    v51 = v28;
    v29 = *(v2 + 24);
    v46 = *(v2 + 8);
    v47 = v29;
    MEMORY[0x1BFB3E970](v97, v21);
    v30 = sub_1BD4F7BC8();
    sub_1BD4FBC18(v97);
    v31 = *MEMORY[0x1E69B9AA8];
    v45 = 0;
    v32 = v31;
    sub_1BE051694();
    v33 = v46;
    v34 = *(&v46 + 1);
    v45 = 0;
    result = sub_1BE051694();
    v35 = v46;
    v36 = *(&v46 + 1);
    v37 = v96;
    *a1 = v42;
    *(a1 + 16) = v41;
    *(a1 + 24) = v22;
    *(a1 + 32) = v37;
    *(a1 + 33) = v75;
    *(a1 + 36) = *(&v75 + 3);
    *(a1 + 40) = v44;
    *(a1 + 48) = v43;
    *(a1 + 56) = v30;
    *(a1 + 57) = v46;
    *(a1 + 60) = *(&v46 + 3);
    *(a1 + 64) = v32;
    *(a1 + 72) = xmmword_1BE0BBAF0;
    *(a1 + 88) = v33;
    v38 = v69;
    *(a1 + 92) = *(&v69 + 3);
    *(a1 + 89) = v38;
    *(a1 + 96) = v34;
    *(a1 + 104) = v35;
    v39 = v63;
    *(a1 + 108) = *(&v63 + 3);
    *(a1 + 105) = v39;
    *(a1 + 112) = v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD72D9A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69B8068], v4, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v106 = *v2;
    v12 = sub_1BE04B6F4();
    v53 = v13;
    v54 = v12;

    (*(v5 + 8))(v9, v4);
    v14 = *(v2 + 184);
    v91 = *(v2 + 168);
    v92 = v14;
    v15 = *(v2 + 216);
    v93 = *(v2 + 200);
    v94 = v15;
    v16 = *(v2 + 120);
    v87 = *(v2 + 104);
    v88 = v16;
    v17 = *(v2 + 152);
    v89 = *(v2 + 136);
    v90 = v17;
    v18 = *(v2 + 56);
    v83 = *(v2 + 40);
    v84 = v18;
    v19 = *(v2 + 88);
    v85 = *(v2 + 72);
    v86 = v19;
    v20 = *(v2 + 24);
    v81 = *(v2 + 8);
    v82 = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48C18);
    sub_1BE051914();
    swift_getKeyPath();
    v91 = v95[10];
    v92 = v95[11];
    v93 = v95[12];
    v94 = v95[13];
    v87 = v95[6];
    v88 = v95[7];
    v89 = v95[8];
    v90 = v95[9];
    v83 = v95[2];
    v84 = v95[3];
    v85 = v95[4];
    v86 = v95[5];
    v81 = v95[0];
    v82 = v95[1];
    sub_1BE051904();

    sub_1BD0DE53C(v95, &qword_1EBD48C18);
    v98 = v55[2];
    v99 = v55[3];
    v100 = v55[4];
    v101 = v55[5];
    v96 = v55[0];
    v97 = v55[1];
    swift_getKeyPath();
    v77 = v98;
    v78 = v99;
    v79 = v100;
    v80 = v101;
    v75 = v96;
    v76 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48C20);
    sub_1BE051904();

    sub_1BD0DE53C(&v96, &unk_1EBD48C20);
    v22 = v71;
    v23 = v72;
    v24 = v73;
    v52 = v74;
    v25 = *(v2 + 184);
    v67 = *(v2 + 168);
    v68 = v25;
    v26 = *(v2 + 216);
    v69 = *(v2 + 200);
    v70 = v26;
    v27 = *(v2 + 120);
    v63 = *(v2 + 104);
    v64 = v27;
    v28 = *(v2 + 152);
    v65 = *(v2 + 136);
    v66 = v28;
    v29 = *(v2 + 56);
    v59 = *(v2 + 40);
    v60 = v29;
    v30 = *(v2 + 88);
    v61 = *(v2 + 72);
    v62 = v30;
    v31 = *(v2 + 24);
    v57 = *(v2 + 8);
    v58 = v31;
    MEMORY[0x1BFB3E970](v107, v21);
    v32 = sub_1BD4F7AD4();
    sub_1BD4FBC18(v107);
    v33 = *MEMORY[0x1E69B97C8];
    v56 = 0;
    v34 = v33;
    sub_1BE051694();
    LOBYTE(v11) = v57;
    v35 = *(&v57 + 1);
    v56 = 0;
    sub_1BE051694();
    v36 = v57;
    v37 = *(&v57 + 1);
    v38 = v106;
    v39 = *MEMORY[0x1E69DE4B0];
    *&v57 = v22;
    *(&v57 + 1) = v23;
    v40 = v52;
    v41 = v53;
    *&v58 = v24;
    *(&v58 + 1) = v52;
    LOBYTE(v59) = v106;
    *(&v59 + 1) = *v105;
    DWORD1(v59) = *&v105[3];
    v42 = v54;
    *(&v59 + 1) = v54;
    *&v60 = v53;
    BYTE8(v60) = v32;
    HIDWORD(v60) = *&v104[3];
    *(&v60 + 9) = *v104;
    *&v61 = v34;
    *(&v61 + 1) = v39;
    *&v62 = 2;
    BYTE8(v62) = v11;
    HIDWORD(v62) = *&v103[3];
    *(&v62 + 9) = *v103;
    *&v63 = v35;
    BYTE8(v63) = v36;
    HIDWORD(v63) = *&v102[3];
    v43 = *v102;
    *(&v63 + 9) = *v102;
    *&v64 = v37;
    v45 = v61;
    v44 = v62;
    v46 = v63;
    *(a1 + 112) = v37;
    *(a1 + 80) = v44;
    *(a1 + 96) = v46;
    v47 = v57;
    v48 = v58;
    v49 = v59;
    *(a1 + 48) = v60;
    *(a1 + 64) = v45;
    *(a1 + 16) = v48;
    *(a1 + 32) = v49;
    *a1 = v47;
    *&v81 = v22;
    *(&v81 + 1) = v23;
    *&v82 = v24;
    *(&v82 + 1) = v40;
    LOBYTE(v83) = v38;
    DWORD1(v83) = *&v105[3];
    *(&v83 + 1) = *v105;
    *(&v83 + 1) = v42;
    *&v84 = v41;
    BYTE8(v84) = v32;
    HIDWORD(v84) = *&v104[3];
    *(&v84 + 9) = *v104;
    *&v85 = v34;
    *(&v85 + 1) = v39;
    *&v86 = 2;
    BYTE8(v86) = v11;
    HIDWORD(v86) = *&v103[3];
    *(&v86 + 9) = *v103;
    *&v87 = v35;
    BYTE8(v87) = v36;
    HIDWORD(v87) = *&v102[3];
    *(&v87 + 9) = v43;
    *&v88 = v37;
    v50 = v39;
    sub_1BD5C75CC(&v57, v55);
    return sub_1BD5C7604(&v81);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD72DEB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69B8068], v4, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v96 = *v2;
    v12 = sub_1BE04B6F4();
    v43 = v13;
    v44 = v12;

    (*(v5 + 8))(v9, v4);
    v14 = *(v2 + 184);
    v85 = *(v2 + 168);
    v86 = v14;
    v15 = *(v2 + 216);
    v87 = *(v2 + 200);
    v88 = v15;
    v16 = *(v2 + 120);
    v81 = *(v2 + 104);
    v82 = v16;
    v17 = *(v2 + 152);
    v83 = *(v2 + 136);
    v84 = v17;
    v18 = *(v2 + 56);
    v77 = *(v2 + 40);
    v78 = v18;
    v19 = *(v2 + 88);
    v79 = *(v2 + 72);
    v80 = v19;
    v20 = *(v2 + 24);
    v75 = *(v2 + 8);
    v76 = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48C18);
    sub_1BE051914();
    swift_getKeyPath();
    v85 = v89[10];
    v86 = v89[11];
    v87 = v89[12];
    v88 = v89[13];
    v81 = v89[6];
    v82 = v89[7];
    v83 = v89[8];
    v84 = v89[9];
    v77 = v89[2];
    v78 = v89[3];
    v79 = v89[4];
    v80 = v89[5];
    v75 = v89[0];
    v76 = v89[1];
    sub_1BE051904();

    sub_1BD0DE53C(v89, &qword_1EBD48C18);
    v92 = v71;
    v93 = v72;
    v94 = v73;
    v95 = v74;
    v90 = v69;
    v91 = v70;
    swift_getKeyPath();
    v65 = v92;
    v66 = v93;
    v67 = v94;
    v68 = v95;
    v63 = v90;
    v64 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48C20);
    sub_1BE051904();

    sub_1BD0DE53C(&v90, &unk_1EBD48C20);
    v42 = v60;
    v22 = v62;
    v41 = v61;
    v23 = *(v2 + 184);
    v56 = *(v2 + 168);
    v57 = v23;
    v24 = *(v2 + 216);
    v58 = *(v2 + 200);
    v59 = v24;
    v25 = *(v2 + 120);
    v52 = *(v2 + 104);
    v53 = v25;
    v26 = *(v2 + 152);
    v54 = *(v2 + 136);
    v55 = v26;
    v27 = *(v2 + 56);
    v48 = *(v2 + 40);
    v49 = v27;
    v28 = *(v2 + 88);
    v50 = *(v2 + 72);
    v51 = v28;
    v29 = *(v2 + 24);
    v46 = *(v2 + 8);
    v47 = v29;
    MEMORY[0x1BFB3E970](v97, v21);
    v30 = sub_1BD4F7CBC();
    sub_1BD4FBC18(v97);
    v31 = *MEMORY[0x1E69B9AA0];
    v45 = 0;
    v32 = v31;
    sub_1BE051694();
    v33 = v46;
    v34 = *(&v46 + 1);
    v45 = 0;
    result = sub_1BE051694();
    v35 = v46;
    v36 = *(&v46 + 1);
    v37 = v96;
    *a1 = v42;
    *(a1 + 16) = v41;
    *(a1 + 24) = v22;
    *(a1 + 32) = v37;
    *(a1 + 33) = v75;
    *(a1 + 36) = *(&v75 + 3);
    *(a1 + 40) = v44;
    *(a1 + 48) = v43;
    *(a1 + 56) = v30;
    *(a1 + 57) = v46;
    *(a1 + 60) = *(&v46 + 3);
    *(a1 + 64) = v32;
    *(a1 + 72) = xmmword_1BE0BBAF0;
    *(a1 + 88) = v33;
    v38 = v69;
    *(a1 + 92) = *(&v69 + 3);
    *(a1 + 89) = v38;
    *(a1 + 96) = v34;
    *(a1 + 104) = v35;
    v39 = v63;
    *(a1 + 108) = *(&v63 + 3);
    *(a1 + 105) = v39;
    *(a1 + 112) = v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD72E360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PaymentPassRow.init(pass:model:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 1;
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t PaymentPassRow.init(pass:model:includeContactButtons:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = a3;
  *a4 = result;
  *(a4 + 8) = a2;
  return result;
}

uint64_t PaymentPassRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = sub_1BE04FF64();
  v2 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD517B0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v21 - v8;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD517B8);
  v10 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v11);
  v13 = &v21 - v12;
  v14 = *v1;
  v15 = *(v1 + 8);
  v16 = *(v1 + 16);
  *v9 = sub_1BE04F504();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD517C0);
  sub_1BD72E6DC(v14, v15, v16, &v9[*(v17 + 44)]);
  sub_1BE04FF44();
  v18 = sub_1BD0DE4F4(&qword_1EBD517C8, &qword_1EBD517B0);
  sub_1BE050D14();
  (*(v2 + 8))(v5, v23);
  sub_1BD0DE53C(v9, &qword_1EBD517B0);
  sub_1BE052434();
  v25 = v6;
  v26 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v22;
  sub_1BE050DE4();

  return (*(v10 + 8))(v13, v19);
}

uint64_t sub_1BD72E6DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v65 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD517F0);
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v59 = (&v53 - v9);
  v57 = sub_1BE04FB64();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v10);
  v53 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD517F8);
  v54 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v12);
  v55 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51800);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v62 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v66 = &v53 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51808);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v61 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v53 - v30;
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v67 = a1;
  v68 = a2;
  v69 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CCB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51810);
  sub_1BD0DE4F4(&qword_1EBD4CCC0, &qword_1EBD4CCB8);
  sub_1BD7309A8();
  v60 = v31;
  sub_1BE051614();
  v32 = 1;
  if (a3)
  {
    v73 = a1;
    v33 = a1;
    v34 = v53;
    sub_1BE04FB54();
    sub_1BD730A5C();
    sub_1BD730AB0(&qword_1EBD3F3E0, MEMORY[0x1E697C720]);
    v35 = v17;
    v36 = v57;
    sub_1BE050894();
    (*(v56 + 8))(v34, v36);

    v37 = v54;
    v38 = *(v54 + 16);
    v39 = v55;
    v40 = v58;
    v38(v55, v35, v58);
    v41 = v59;
    *v59 = 0;
    *(v41 + 8) = 1;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51830);
    v38((v41 + *(v42 + 48)), v39, v40);
    v43 = *(v37 + 8);
    v43(v35, v40);
    v43(v39, v40);
    sub_1BD0A84E0(v41, v66);
    v32 = 0;
  }

  v44 = v66;
  (*(v63 + 56))(v66, v32, 1, v64);
  v45 = *(v25 + 16);
  v46 = v60;
  v47 = v61;
  v45(v61, v60, v24);
  v48 = v62;
  sub_1BD0A8470(v44, v62);
  v49 = v65;
  v45(v65, v47, v24);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51820);
  sub_1BD0A8470(v48, &v49[*(v50 + 48)]);
  sub_1BD0DE53C(v44, &qword_1EBD51800);
  v51 = *(v25 + 8);
  v51(v46, v24);
  sub_1BD0DE53C(v48, &qword_1EBD51800);
  return (v51)(v47, v24);
}

uint64_t sub_1BD72ED30@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v66 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v67 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v60 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v65 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v61 = v60 - v16;
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = v60 - v20;
  v22 = [a1 organizationName];
  v23 = sub_1BE052434();
  v25 = v24;

  v68 = v23;
  v69 = v25;
  sub_1BD0DDEBC();
  v26 = sub_1BE0506C4();
  v28 = v27;
  v68 = v26;
  v69 = v27;
  v30 = v29 & 1;
  v70 = v29 & 1;
  v71 = v31;
  sub_1BE052434();
  sub_1BE050DE4();

  sub_1BD0DDF10(v26, v28, v30);

  v32 = sub_1BD408D0C(a1);
  if (v33)
  {
    v68 = v32;
    v69 = v33;
    v34 = sub_1BE0506C4();
    v36 = v35;
    v38 = v37;
    v60[1] = v39;
    v40 = [a1 isAppleCardPass];
    v60[0] = v21;
    if (v40 && (v41 = WalletSettingsModel.transactionsModelForPass(pass:)(a1), swift_getKeyPath(), v68 = v41, sub_1BD730AB0(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel), sub_1BE04B594(), , v42 = *&v41[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account], v43 = v42, v41, v42) && (v44 = [v43 state], v43, (v44 - 2) <= 2))
    {
      v45 = sub_1BE0513B4();
    }

    else
    {
      v45 = sub_1BE051494();
    }

    v68 = v45;
    v46 = sub_1BE050574();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    sub_1BD0DDF10(v34, v36, v38 & 1);

    v68 = v46;
    v69 = v48;
    v70 = v50 & 1;
    v71 = v52;
    sub_1BE052434();
    v53 = v61;
    sub_1BE050DE4();

    sub_1BD0DDF10(v46, v48, v50 & 1);

    sub_1BD133260(v53, v10);
    v54 = 0;
    v21 = v60[0];
  }

  else
  {
    v54 = 1;
  }

  (*(v63 + 56))(v10, v54, 1, v64);
  v55 = v65;
  sub_1BD0DE19C(v21, v65, &qword_1EBD452C0);
  v56 = v67;
  sub_1BD0DE19C(v10, v67, &unk_1EBD5BB60);
  v57 = v66;
  sub_1BD0DE19C(v55, v66, &qword_1EBD452C0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47228);
  sub_1BD0DE19C(v56, v57 + *(v58 + 48), &unk_1EBD5BB60);
  sub_1BD0DE53C(v10, &unk_1EBD5BB60);
  sub_1BD0DE53C(v21, &qword_1EBD452C0);
  sub_1BD0DE53C(v56, &unk_1EBD5BB60);
  return sub_1BD0DE53C(v55, &qword_1EBD452C0);
}

uint64_t sub_1BD72F264@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PassImage(0);
  v15 = *(v4 - 1);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 paymentPass];
  if (v9)
  {
    *&v8[v4[6]] = v9;
    type metadata accessor for WrappedPass(0);
    swift_storeEnumTagMultiPayload();
    PKPassFrontFaceContentSize();
    *(v8 + 3) = 0x4049000000000000;
    *(v8 + 4) = v11 / v10 * 50.0;
    *v8 = sub_1BD70C870;
    *(v8 + 1) = 0;
    v8[16] = 0;
    v8[v4[7]] = 1;
    *&v8[v4[8]] = 1911;
    sub_1BD5A57BC(v8, a2);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v13 = *(v15 + 56);

    return v13(a2, 1, 1, v4);
  }
}

uint64_t sub_1BD72F414@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v100 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v89 - v9;
  v11 = sub_1BE04AA64();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v90 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v89 = &v89 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v89 - v20;
  v22 = type metadata accessor for WalletSettingsModel(0);
  v94 = a1;
  v23 = [a1 paymentPass];
  v93 = v22;
  if (v23)
  {
    v24 = v23;
    v25 = sub_1BE052434();
    sub_1BD4089F0(v24, v25, v26, v10);

    v27 = v12;
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      v28 = *(v12 + 32);
      v28(v21, v10, v11);
      v91 = 0x80000001BE12D840;
      v29 = v89;
      (*(v12 + 16))(v89, v21, v11);
      v30 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v96 = swift_allocObject();
      v28((v96 + v30), v29, v11);
      *(&v99 + 1) = sub_1BE051494();
      *&v99 = swift_getKeyPath();
      v31 = sub_1BE050224();
      sub_1BE04E1F4();
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      (*(v12 + 8))(v21, v11);
      v97 = sub_1BD730BDC;
      v98 = v31;
      v95 = 0xE400000000000000;
      v40 = 0xD000000000000011;
      v101 = 1280065859;
      goto LABEL_6;
    }
  }

  else
  {
    v27 = v12;
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_1BD0DE53C(v10, &unk_1EBD3CF70);
  v40 = 0;
  v91 = 0;
  v101 = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0uLL;
  v33 = 0;
  v35 = 0;
  v37 = 0;
  v39 = 0;
  v12 = v27;
LABEL_6:
  v41 = [v94 paymentPass];
  v42 = v100;
  if (!v41)
  {
    (*(v12 + 56))(v100, 1, 1, v11);
    goto LABEL_10;
  }

  v43 = v41;
  v94 = v13;
  v44 = sub_1BE052434();
  v45 = v11;
  sub_1BD4089F0(v43, v44, v46, v42);
  v42 = v100;

  if ((*(v12 + 48))(v42, 1, v11) == 1)
  {
LABEL_10:
    sub_1BD0DE53C(v42, &unk_1EBD3CF70);
    v71 = 0;
    v70 = 0;
    v69 = 0;
    v68 = 0;
    v67 = 0;
    v65 = 0;
    v64 = 0;
    v54 = 0;
    v66 = 0;
    v57 = 0;
    v59 = 0;
    v61 = 0;
    v63 = 0;
    goto LABEL_11;
  }

  v47 = *(v12 + 32);
  v48 = v90;
  v47(v90, v42, v45);
  v49 = v89;
  (*(v12 + 16))(v89, v48, v45);
  v50 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v51 = swift_allocObject();
  v52 = v51 + v50;
  v53 = v51;
  v47(v52, v49, v45);
  v54 = sub_1BE051494();
  KeyPath = swift_getKeyPath();
  LOBYTE(v47) = sub_1BE050224();
  sub_1BE04E1F4();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  (*(v12 + 8))(v90, v45);
  v64 = KeyPath;
  v65 = v53;
  v66 = v47;
  v67 = sub_1BD7308B0;
  v68 = 0xE700000000000000;
  v69 = 0x45544953424557;
  v70 = 0xEB000000006C6C69;
  v71 = 0x662E697261666173;
LABEL_11:
  v92 = v40;
  *&v114 = v40;
  v72 = v91;
  *(&v114 + 1) = v91;
  *&v115 = v101;
  v73 = v95;
  v74 = v96;
  v75 = v97;
  v76 = v98;
  *(&v115 + 1) = v95;
  *&v116 = v97;
  v77 = v99;
  *(&v116 + 1) = v96;
  v117 = v99;
  *&v118 = v98;
  *(&v118 + 1) = v33;
  *&v119[0] = v35;
  *(&v119[0] + 1) = v37;
  *&v119[1] = v39;
  BYTE8(v119[1]) = 0;
  v102 = v114;
  v103 = v115;
  *(v107 + 9) = *(v119 + 9);
  v106 = v118;
  v107[0] = v119[0];
  v104 = v116;
  v105 = v99;
  *&v120 = v71;
  *(&v120 + 1) = v70;
  *&v121 = v69;
  *(&v121 + 1) = v68;
  *&v122 = v67;
  *(&v122 + 1) = v65;
  *&v123 = v64;
  *(&v123 + 1) = v54;
  *&v124 = v66;
  *(&v124 + 1) = v57;
  *&v125[0] = v59;
  *(&v125[0] + 1) = v61;
  *&v125[1] = v63;
  BYTE8(v125[1]) = 0;
  v108 = v120;
  v109 = v121;
  *(v113 + 9) = *(v125 + 9);
  v112 = v124;
  v113[0] = v125[0];
  v110 = v122;
  v111 = v123;
  v78 = v115;
  *a2 = v114;
  a2[1] = v78;
  v79 = v104;
  v80 = v105;
  v81 = v107[0];
  a2[4] = v106;
  a2[5] = v81;
  a2[2] = v79;
  a2[3] = v80;
  v82 = v107[1];
  v83 = v108;
  v84 = v110;
  a2[8] = v109;
  a2[9] = v84;
  a2[6] = v82;
  a2[7] = v83;
  v85 = v111;
  v86 = v112;
  v87 = v113[0];
  *(a2 + 201) = *(v113 + 9);
  a2[11] = v86;
  a2[12] = v87;
  a2[10] = v85;
  v126[0] = v71;
  v126[1] = v70;
  v126[2] = v69;
  v126[3] = v68;
  v126[4] = v67;
  v126[5] = v65;
  v126[6] = v64;
  v126[7] = v54;
  v126[8] = v66;
  v126[9] = v57;
  v126[10] = v59;
  v126[11] = v61;
  v126[12] = v63;
  v127 = 0;
  sub_1BD0DE19C(&v114, v128, &qword_1EBD517E8);
  sub_1BD0DE19C(&v120, v128, &qword_1EBD517E8);
  sub_1BD0DE53C(v126, &qword_1EBD517E8);
  v128[0] = v92;
  v128[1] = v72;
  v128[2] = v101;
  v128[3] = v73;
  v128[4] = v75;
  v128[5] = v74;
  v129 = v77;
  v130 = v76;
  v131 = v33;
  v132 = v35;
  v133 = v37;
  v134 = v39;
  v135 = 0;
  return sub_1BD0DE53C(v128, &qword_1EBD517E8);
}

void _s9PassKitUI7openURL3urly10Foundation0E0V_tF_0()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_1BE04A9C4();
  sub_1BD1ABAC0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1BD730AB0(&qword_1EBD37B90, type metadata accessor for OpenExternalURLOptionsKey);
  v2 = sub_1BE052224();

  [v0 openURL:v1 options:v2 completionHandler:0];
}

double sub_1BD72FCD4@<D0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v12 = sub_1BE04F7B4();
  v25 = 1;
  sub_1BD72FFAC(a1, &v14);
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v27 = v14;
  v28 = v15;
  v37[6] = v20;
  v37[7] = v21;
  v37[8] = v22;
  v37[2] = v16;
  v37[3] = v17;
  v37[4] = v18;
  v37[5] = v19;
  v36 = v23;
  v38 = v23;
  v37[0] = v14;
  v37[1] = v15;
  sub_1BD0DE19C(&v27, v13, &qword_1EBD51848);
  sub_1BD0DE53C(v37, &qword_1EBD51848);
  *&v24[103] = v33;
  *&v24[119] = v34;
  *&v24[135] = v35;
  v24[151] = v36;
  *&v24[39] = v29;
  *&v24[55] = v30;
  *&v24[71] = v31;
  *&v24[87] = v32;
  *&v24[7] = v27;
  *&v24[23] = v28;
  LOBYTE(a1) = v25;
  sub_1BE051CD4();
  sub_1BE04EE54();
  *&v26[55] = v17;
  *&v26[71] = v18;
  *&v26[87] = v19;
  *&v26[103] = v20;
  *&v26[7] = v14;
  *&v26[23] = v15;
  *&v26[39] = v16;
  v4 = *&v24[112];
  *(a2 + 113) = *&v24[96];
  *(a2 + 129) = v4;
  *(a2 + 145) = *&v24[128];
  v5 = *&v24[48];
  *(a2 + 49) = *&v24[32];
  *(a2 + 65) = v5;
  v6 = *&v24[80];
  *(a2 + 81) = *&v24[64];
  *(a2 + 97) = v6;
  v7 = *&v24[16];
  *(a2 + 17) = *v24;
  *(a2 + 33) = v7;
  v8 = *&v26[80];
  *(a2 + 233) = *&v26[64];
  *(a2 + 249) = v8;
  *(a2 + 265) = *&v26[96];
  v9 = *&v26[16];
  *(a2 + 169) = *v26;
  *(a2 + 185) = v9;
  result = *&v26[32];
  v11 = *&v26[48];
  *(a2 + 201) = *&v26[32];
  *a2 = v12;
  *(a2 + 8) = 0;
  *(a2 + 16) = a1;
  *(a2 + 161) = *&v24[144];
  *(a2 + 280) = *&v26[111];
  *(a2 + 217) = v11;
  return result;
}

id sub_1BD72FFAC@<X0>(uint64_t a1@<X3>, _OWORD *a2@<X8>)
{
  v52 = a1;
  v54 = a2;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v52 - v9;
  sub_1BE048C84();
  v53 = sub_1BE051574();
  v11 = sub_1BE050354();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v57 = sub_1BE0503B4();
  sub_1BD0DE53C(v10, &qword_1EBD49130);
  KeyPath = swift_getKeyPath();
  v55 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  LOBYTE(v80) = 0;
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80F0], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v21 = result;
    v22 = sub_1BE04B6F4();
    v24 = v23;

    (*(v3 + 8))(v6, v2);
    v80 = v22;
    v81 = v24;
    sub_1BD0DDEBC();
    v25 = sub_1BE0506C4();
    v27 = v26;
    v29 = v28;
    sub_1BE050454();
    v30 = sub_1BE0505F4();
    v32 = v31;
    v34 = v33;
    v52 = v35;

    sub_1BD0DDF10(v25, v27, v29 & 1);

    LOBYTE(v27) = sub_1BE0501F4();
    sub_1BE04E1F4();
    v36 = v34 & 1;
    v95 = v34 & 1;
    v92 = 0;
    v37 = v53;
    *&v71 = v53;
    *(&v71 + 1) = KeyPath;
    *&v72 = v57;
    BYTE8(v72) = v55;
    HIDWORD(v72) = *(v96 + 3);
    *(&v72 + 9) = v96[0];
    *&v73 = v13;
    *(&v73 + 1) = v15;
    *&v74 = v17;
    *(&v74 + 1) = v19;
    v75 = 0;
    LOBYTE(v70[0]) = 0;
    v68 = v73;
    v69 = v74;
    v66 = v71;
    v67 = v72;
    *&v76 = v30;
    *(&v76 + 1) = v32;
    v38 = v32;
    LOBYTE(v77) = v36;
    DWORD1(v77) = *&v94[3];
    *(&v77 + 1) = *v94;
    v39 = v52;
    *(&v77 + 1) = v52;
    LOBYTE(v78) = v27;
    DWORD1(v78) = *&v93[3];
    *(&v78 + 1) = *v93;
    *(&v78 + 1) = v40;
    *&v79[0] = v41;
    *(&v79[0] + 1) = v42;
    *&v79[1] = v43;
    BYTE8(v79[1]) = 0;
    *(v70 + 8) = v76;
    *(&v70[4] + 1) = *(v79 + 9);
    *(&v70[3] + 8) = v79[0];
    *(&v70[2] + 8) = v78;
    *(&v70[1] + 8) = v77;
    v44 = v72;
    v45 = v54;
    *v54 = v71;
    v45[1] = v44;
    v46 = v68;
    v47 = v69;
    v48 = v70[1];
    v45[4] = v70[0];
    v45[5] = v48;
    v45[2] = v46;
    v45[3] = v47;
    v49 = v70[2];
    v50 = v70[3];
    v51 = v70[4];
    *(v45 + 144) = v70[5];
    v45[7] = v50;
    v45[8] = v51;
    v45[6] = v49;
    v80 = v30;
    v81 = v38;
    v82 = v36;
    *v83 = *v94;
    *&v83[3] = *&v94[3];
    v84 = v39;
    v85 = v27;
    *v86 = *v93;
    *&v86[3] = *&v93[3];
    v87 = v40;
    v88 = v41;
    v89 = v42;
    v90 = v43;
    v91 = 0;
    sub_1BD0DE19C(&v71, v58, &qword_1EBD51850);
    sub_1BD0DE19C(&v76, v58, &unk_1EBD3DF90);
    sub_1BD0DE53C(&v80, &unk_1EBD3DF90);
    v58[0] = v37;
    v58[1] = KeyPath;
    v58[2] = v57;
    v59 = v55;
    *v60 = v96[0];
    *&v60[3] = *(v96 + 3);
    v61 = v13;
    v62 = v15;
    v63 = v17;
    v64 = v19;
    v65 = 0;
    return sub_1BD0DE53C(v58, &qword_1EBD51850);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1BD730470@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1BE04F504();
  v29 = 1;
  sub_1BD72F414(v3, &v15);
  v40 = v25;
  v41 = v26;
  v42[0] = v27[0];
  *(v42 + 9) = *(v27 + 9);
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v30 = v15;
  v31 = v16;
  v43[10] = v25;
  v43[11] = v26;
  v44[0] = v27[0];
  *(v44 + 9) = *(v27 + 9);
  v43[6] = v21;
  v43[7] = v22;
  v43[8] = v23;
  v43[9] = v24;
  v43[2] = v17;
  v43[3] = v18;
  v43[4] = v19;
  v43[5] = v20;
  v43[0] = v15;
  v43[1] = v16;
  sub_1BD0DE19C(&v30, &v14, &qword_1EBD517E0);
  sub_1BD0DE53C(v43, &qword_1EBD517E0);
  *(&v28[10] + 7) = v40;
  *(&v28[11] + 7) = v41;
  *(&v28[12] + 7) = v42[0];
  v28[13] = *(v42 + 9);
  *(&v28[6] + 7) = v36;
  *(&v28[7] + 7) = v37;
  *(&v28[8] + 7) = v38;
  *(&v28[9] + 7) = v39;
  *(&v28[2] + 7) = v32;
  *(&v28[3] + 7) = v33;
  *(&v28[4] + 7) = v34;
  *(&v28[5] + 7) = v35;
  *(v28 + 7) = v30;
  *(&v28[1] + 7) = v31;
  v5 = v28[11];
  *(a1 + 177) = v28[10];
  *(a1 + 193) = v5;
  v6 = v28[13];
  *(a1 + 209) = v28[12];
  *(a1 + 225) = v6;
  v7 = v28[7];
  *(a1 + 113) = v28[6];
  *(a1 + 129) = v7;
  v8 = v28[9];
  *(a1 + 145) = v28[8];
  *(a1 + 161) = v8;
  v9 = v28[3];
  *(a1 + 49) = v28[2];
  *(a1 + 65) = v9;
  v10 = v28[5];
  *(a1 + 81) = v28[4];
  *(a1 + 97) = v10;
  result = *v28;
  v12 = v28[1];
  *(a1 + 17) = v28[0];
  v13 = v29;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v13;
  *(a1 + 33) = v12;
  return result;
}

unint64_t sub_1BD730758()
{
  result = qword_1EBD517D0;
  if (!qword_1EBD517D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD517D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD517B0);
    sub_1BD0DE4F4(&qword_1EBD517C8, &qword_1EBD517B0);
    swift_getOpaqueTypeConformance2();
    sub_1BD730AB0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD517D0);
  }

  return result;
}

uint64_t objectdestroyTm_84()
{
  v1 = sub_1BE04AA64();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_1BD7309A8()
{
  result = qword_1EBD51818;
  if (!qword_1EBD51818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51810);
    sub_1BD730AB0(&qword_1EBD39FE0, type metadata accessor for PassImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51818);
  }

  return result;
}

unint64_t sub_1BD730A5C()
{
  result = qword_1EBD51828;
  if (!qword_1EBD51828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51828);
  }

  return result;
}

uint64_t sub_1BD730AB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD730B24()
{
  result = qword_1EBD51858;
  if (!qword_1EBD51858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51860);
    sub_1BD0DE4F4(&qword_1EBD51868, &unk_1EBD51870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51858);
  }

  return result;
}

uint64_t sub_1BD730CB4()
{
  v1 = v0;
  v2 = sub_1BE04B944();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04C384();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04C3A4();
  if (!*(v12 + 16))
  {

    return 2;
  }

  (*(v8 + 16))(v11, v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

  v13 = sub_1BE04C2E4();
  (*(v8 + 8))(v11, v7);
  if (!v13)
  {
    return 2;
  }

  v14 = sub_1BE04C3C4();
  v15 = *(v14 + 16);
  if (v15)
  {
    v31 = v13;
    v32 = v0;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1BE0538E4();
    v17 = *(v3 + 16);
    v16 = v3 + 16;
    v33 = v17;
    v18 = *(v16 + 64);
    v30[1] = v14;
    v19 = v14 + ((v18 + 32) & ~v18);
    v20 = *(v16 + 56);
    do
    {
      v33(v6, v19, v2);
      sub_1BE04B8E4();
      (*(v16 - 8))(v6, v2);
      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
      v19 += v20;
      --v15;
    }

    while (v15);

    v21 = v34;
    v13 = v31;
    v1 = v32;
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  sub_1BD3F059C(v21);

  v23 = *(v1 + OBJC_IVAR____TtC9PassKitUI32ProvisioningDevicePickerFlowItem_reporter);
  v24 = objc_allocWithZone(PKAddPaymentPassDevicePickerViewController);
  v25 = v13;
  v26 = sub_1BE052724();

  v27 = [v24 initWithPaymentWebServices:v26 configuration:v25 reporter:v23];

  if (v27)
  {
    v28 = v27;
    v29 = v27;
    [v29 setDelegate_];

    return v28;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1BD731028()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningDevicePickerFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD731064(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI32ProvisioningDevicePickerFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD7310B0(uint64_t (*a1)(BOOL, unint64_t, unint64_t, uint64_t))
{
  v2 = *(sub_1BE04C3C4() + 16);

  return a1(v2 > 1, 0xD000000000000035, 0x80000001BE1378D0, 2);
}

id sub_1BD7311A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningDevicePickerFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningDevicePickerFlowItem_identifier];
  *v7 = 0xD000000000000014;
  *(v7 + 1) = 0x80000001BE137910;
  *&v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningDevicePickerFlowItem_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningDevicePickerFlowItem_configuration] = a2;
  sub_1BE052434();
  sub_1BE048964();
  sub_1BE048964();
  v8 = sub_1BE04BB74();

  *&v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningDevicePickerFlowItem_reporter] = v8;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1BD7312A8(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04B944();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v47 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v48 = &v47 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v49 = &v47 - v18;
  v19 = sub_1BE04C3C4();
  v20 = v19;
  v53 = *(v19 + 16);
  if (v53)
  {
    v47 = v8;
    v21 = 0;
    v52 = v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v54 = v5 + 16;
    v50 = v1;
    v51 = (v5 + 8);
    v22 = a1;
    while (v21 < *(v20 + 16))
    {
      v23 = *(v5 + 16);
      v23(v12, v52 + *(v5 + 72) * v21, v4);
      v24 = sub_1BE04B8E4();
      v25 = v24;
      if (a1)
      {
        sub_1BD731728();
        v26 = a1;
        v27 = v4;
        v28 = v26;
        v29 = sub_1BE053074();

        v4 = v27;
        if (v29)
        {

          v30 = *(v5 + 32);
          v31 = v48;
          v30(v48, v12, v27);
          v32 = v49;
          v30(v49, v31, v27);
          v2 = v50;
          v23(v47, v32, v27);
          sub_1BE04BBA4();
          v33 = sub_1BE04B8E4();
          v34 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService_];

          if (v34)
          {
            sub_1BE04BBE4();
            v35 = *(v2 + OBJC_IVAR____TtC9PassKitUI32ProvisioningDevicePickerFlowItem_reporter);
            if (v35)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1BE0B6CA0;
              v37 = *MEMORY[0x1E69BA680];
              *(inited + 32) = *MEMORY[0x1E69BA680];
              *(inited + 40) = sub_1BE052434();
              *(inited + 48) = v38;
              v39 = *MEMORY[0x1E69BA5F8];
              *(inited + 56) = *MEMORY[0x1E69BA5F8];
              v40 = v37;
              v41 = v39;
              *(inited + 64) = sub_1BE04B904();
              *(inited + 72) = v42;
              sub_1BD1AAF50(inited);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
              swift_arrayDestroy();
              type metadata accessor for PKAnalyticsKey(0);
              sub_1BD1F0E18();
              v43 = sub_1BE052224();

              [v35 reportEvent_];
            }

            (*v51)(v32, v27);
            goto LABEL_14;
          }

LABEL_18:
          __break(1u);
          return;
        }
      }

      else
      {
      }

      ++v21;
      (*v51)(v12, v4);
      a1 = v22;
      if (v53 == v21)
      {

        v2 = v50;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_14:
  v44 = v2 + OBJC_IVAR____TtC9PassKitUI32ProvisioningDevicePickerFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v45 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(v2, &off_1F3BB8EE0, ObjectType, v45);
    swift_unknownObjectRelease();
  }
}

unint64_t sub_1BD731728()
{
  result = qword_1EBD45630;
  if (!qword_1EBD45630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD45630);
  }

  return result;
}

uint64_t sub_1BD731794()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v7 - v2;
  PKOBKHeaderSymbolImagePointSize();
  v4 = sub_1BE050354();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = sub_1BE0503B4();
  result = sub_1BD3FA0F4(v3);
  qword_1EBDAB4C0 = v5;
  return result;
}

uint64_t sub_1BD731878()
{
  result = sub_1BE0513C4();
  qword_1EBDAB4C8 = result;
  return result;
}

void sub_1BD7318FC()
{
  v0 = PKOBKHeaderIconImageSize();
  v1 = PKOBKHeaderIconImageSize();
  qword_1EBDAB4E8 = *&v0;
  unk_1EBDAB4F0 = *&v1;
}

uint64_t sub_1BD731990()
{
  v0 = PKOBKHeaderTitleFont();
  result = sub_1BE050484();
  qword_1EBDAB510 = result;
  return result;
}

uint64_t sub_1BD7319BC()
{
  v0 = PKOBKHeaderTitleTextColor();
  result = sub_1BE0511C4();
  qword_1EBDAB518 = result;
  return result;
}

uint64_t sub_1BD7319E8()
{
  v0 = PKOBKHeaderSubtitleFont();
  result = sub_1BE050484();
  qword_1EBDAB520 = result;
  return result;
}

uint64_t sub_1BD731A14()
{
  v0 = PKOBKHeaderSubtitleTextColor();
  result = sub_1BE0511C4();
  qword_1EBDAB528 = result;
  return result;
}

uint64_t sub_1BD731AA4()
{
  v0 = PKOBKListSubtitleCellTitleFont();
  result = sub_1BE050484();
  qword_1EBDAB548 = result;
  return result;
}

uint64_t sub_1BD731AD0()
{
  v0 = PKOBKListSubtitleCellTitleTextColor();
  result = sub_1BE0511C4();
  qword_1EBDAB550 = result;
  return result;
}

uint64_t sub_1BD731AFC()
{
  v0 = PKOBKListSubtitleCellSubtitleTextColor();
  result = sub_1BE0511C4();
  qword_1EBDAB558 = result;
  return result;
}

id sub_1BD731B28()
{
  result = PKOBKListInlineCellSubtitleFont();
  qword_1EBDAB560 = result;
  return result;
}

id sub_1BD731B50()
{
  result = PKOBKListInlineCellSubtitleColor();
  qword_1EBDAB568 = result;
  return result;
}

uint64_t sub_1BD731B78()
{
  v0 = PKOBKListInlineCellTitleFont();
  result = sub_1BE050484();
  qword_1EBDAB570 = result;
  return result;
}

uint64_t sub_1BD731BA4()
{
  v0 = PKOBKListInlineCellTitleColor();
  result = sub_1BE0511C4();
  qword_1EBDAB578 = result;
  return result;
}

uint64_t sub_1BD731BD0()
{
  v0 = PKOBKListInlineCellSubtitleFont();
  result = sub_1BE050484();
  qword_1EBDAB580 = result;
  return result;
}

uint64_t sub_1BD731BFC()
{
  v0 = PKOBKListInlineCellSubtitleColor();
  result = sub_1BE0511C4();
  qword_1EBDAB588 = result;
  return result;
}

uint64_t sub_1BD731C28()
{
  v0 = PKOBKLearnMoreButtonFont();
  result = sub_1BE050484();
  qword_1EBDAB590 = result;
  return result;
}

uint64_t sub_1BD731C54()
{
  v0 = PKOBKLearnMoreButtonColor();
  result = sub_1BE0511C4();
  qword_1EBDAB598 = result;
  return result;
}

double sub_1BD731C80()
{
  result = 6.0;
  qword_1EBDAB5A0 = 0x4018000000000000;
  return result;
}

uint64_t sub_1BD731C98()
{
  result = sub_1BE051CE4();
  *&xmmword_1EBDAB5A8 = result;
  *(&xmmword_1EBDAB5A8 + 1) = v1;
  return result;
}

uint64_t sub_1BD731CBC()
{
  v0 = PKOBKBulletTitleTextColor();
  result = sub_1BE0511C4();
  qword_1EBDAB5B8 = result;
  return result;
}

uint64_t sub_1BD731CE8()
{
  v0 = PKOBKBulletSubtitleFont();
  result = sub_1BE050484();
  qword_1EBDAB5C0 = result;
  return result;
}

uint64_t sub_1BD731D14()
{
  v0 = PKOBKBulletSubtitleTextColor();
  result = sub_1BE0511C4();
  qword_1EBDAB5C8 = result;
  return result;
}

double sub_1BD731D40()
{
  result = 26.0;
  qword_1EBDAB5D0 = 0x403A000000000000;
  return result;
}

double sub_1BD731D78()
{
  result = 17.0;
  qword_1EBDAB5E0 = 0x4031000000000000;
  return result;
}

double sub_1BD731D90()
{
  result = 14.0;
  qword_1EBDAB5E8 = 0x402C000000000000;
  return result;
}

double sub_1BD731DA8()
{
  result = 28.0;
  qword_1EBDAB5F0 = 0x403C000000000000;
  return result;
}

double sub_1BD731DC0()
{
  result = 4.0;
  qword_1EBDAB5F8 = 0x4010000000000000;
  return result;
}

double sub_1BD731DD8()
{
  result = 58.0;
  qword_1EBDAB600 = 0x404D000000000000;
  return result;
}

uint64_t sub_1BD731DF0()
{
  v0 = PKOBKFooterCaptionFont();
  result = sub_1BE050484();
  qword_1EBDAB608 = result;
  return result;
}

uint64_t sub_1BD731E1C()
{
  v0 = PKOBKFooterCaptionTextColor();
  result = sub_1BE0511C4();
  qword_1EBDAB610 = result;
  return result;
}

uint64_t sub_1BD731E88()
{
  v0 = PKOBKDockPrimaryButtonFont();
  result = sub_1BE050484();
  qword_1EBDAB628 = result;
  return result;
}

uint64_t sub_1BD731F14()
{
  result = sub_1BE051424();
  qword_1EBDAB648 = result;
  return result;
}

uint64_t sub_1BD731F34()
{
  result = sub_1BE0513C4();
  qword_1EBDAB650 = result;
  return result;
}

uint64_t sub_1BD731F54()
{
  result = sub_1BE051464();
  qword_1EBDAB658 = result;
  return result;
}

uint64_t sub_1BD731F74()
{
  v0 = [objc_opt_self() systemGray6Color];
  result = sub_1BE0511C4();
  qword_1EBDAB660 = result;
  return result;
}

uint64_t View.pkOBKLinkStyle(symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = PKNaturalUIEnabled();
  if (PKNaturalUIEnabled())
  {
    v9 = sub_1BE051CE4();
  }

  else
  {
    v9 = sub_1BE051CD4();
  }

  v12[0] = a1;
  v12[1] = a2;
  v13 = v8 ^ 1;
  v14 = v9;
  v15 = v10;
  return MEMORY[0x1BFB3E0D0](v12, a3, &type metadata for PKOBKLinkModifier, a4);
}

uint64_t View.pkOBKBulletLinkStyle()(uint64_t a1, uint64_t a2)
{
  if (qword_1EBD36E40 != -1)
  {
    swift_once();
  }

  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  v7 = xmmword_1EBDAB5A8;
  return MEMORY[0x1BFB3E0D0](v5, a1, &type metadata for PKOBKLinkModifier, a2);
}

uint64_t sub_1BD7321C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    if (qword_1EBD36D68 != -1)
    {
      swift_once();
    }

    sub_1BE048964();
  }

  v5 = qword_1EBD36D60;
  sub_1BE048964();
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_1EBDAB4C0;
  KeyPath = swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51940);
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51948) + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  sub_1BE048964();
  v10 = sub_1BE051484();
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51950) + 36)) = v10;
  v11 = sub_1BE0501E4();
  if (qword_1EBD36D70 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51958) + 36);
  *v20 = v11;
  *(v20 + 8) = v13;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  v21 = sub_1BE0501F4();
  if (qword_1EBD36D78 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51960);
  v31 = a3 + *(result + 36);
  *v31 = v21;
  *(v31 + 8) = v23;
  *(v31 + 16) = v25;
  *(v31 + 24) = v27;
  *(v31 + 32) = v29;
  *(v31 + 40) = 0;
  return result;
}

uint64_t sub_1BD73244C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EBD36D80 != -1)
  {
    swift_once();
  }

  sub_1BE051CD4();
  sub_1BE04E5E4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51968);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51970) + 36));
  *v5 = v33;
  v5[1] = v34;
  v5[2] = v35;
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51978) + 36);
  *v6 = 0;
  *(v6 + 8) = 1;
  if (qword_1EBD36D90 != -1)
  {
    swift_once();
  }

  v7 = qword_1EBDAB4F8;
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51980) + 36));
  v9 = *(sub_1BE04EDE4() + 20);
  v10 = *MEMORY[0x1E697F468];
  v11 = sub_1BE04F684();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = v7;
  v8[1] = v7;
  *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)) = 256;
  v12 = sub_1BE0501E4();
  if (qword_1EBD36D98 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51988) + 36);
  *v21 = v12;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  v22 = sub_1BE0501F4();
  if (qword_1EBD36DA0 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51990);
  v32 = a2 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

__n128 sub_1BD732758@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v44 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51998);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519A0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519A8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v40 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519B0);
  MEMORY[0x1EEE9AC00](v42, v16);
  v18 = &v40 - v17;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519B8);
  MEMORY[0x1EEE9AC00](v43, v19);
  v21 = &v40 - v20;
  v22 = PKNaturalUIEnabled() ^ 1;
  KeyPath = swift_getKeyPath();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519C0);
  (*(*(v24 - 8) + 16))(v6, v41, v24);
  v25 = &v6[*(v3 + 44)];
  *v25 = KeyPath;
  v25[8] = v22;
  v26 = &v11[*(v8 + 44)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
  v28 = sub_1BE0505C4();
  (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
  *v26 = swift_getKeyPath();
  sub_1BD0DE204(v6, v11, &qword_1EBD51998);
  if (qword_1EBD36DA8 != -1)
  {
    swift_once();
  }

  v29 = qword_1EBDAB510;
  v30 = swift_getKeyPath();
  sub_1BD0DE204(v11, v15, &qword_1EBD519A0);
  v31 = &v15[*(v12 + 36)];
  *v31 = v30;
  v31[1] = v29;
  sub_1BE048964();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  sub_1BD0DE204(v15, v18, &qword_1EBD519A8);
  v32 = &v18[*(v42 + 36)];
  v33 = v46;
  *v32 = v45;
  *(v32 + 1) = v33;
  *(v32 + 2) = v47;
  if (qword_1EBD36DB0 != -1)
  {
    swift_once();
  }

  v34 = qword_1EBDAB518;
  sub_1BD0DE204(v18, v21, &qword_1EBD519B0);
  *&v21[*(v43 + 36)] = v34;
  sub_1BE048964();
  if (PKNaturalUIEnabled())
  {
    sub_1BE051CE4();
  }

  else
  {
    sub_1BE051CD4();
  }

  sub_1BE04EE54();
  v35 = v44;
  sub_1BD0DE204(v21, v44, &qword_1EBD519B8);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519C8) + 36);
  v37 = v53;
  *(v36 + 64) = v52;
  *(v36 + 80) = v37;
  *(v36 + 96) = v54;
  v38 = v49;
  *v36 = v48;
  *(v36 + 16) = v38;
  result = v51;
  *(v36 + 32) = v50;
  *(v36 + 48) = result;
  return result;
}

__n128 sub_1BD732C5C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v44 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519D0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519D8);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519E0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v40 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519E8);
  MEMORY[0x1EEE9AC00](v42, v16);
  v18 = &v40 - v17;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519F0);
  MEMORY[0x1EEE9AC00](v43, v19);
  v21 = &v40 - v20;
  v22 = PKNaturalUIEnabled() ^ 1;
  KeyPath = swift_getKeyPath();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519F8);
  (*(*(v24 - 8) + 16))(v6, v41, v24);
  v25 = &v6[*(v3 + 44)];
  *v25 = KeyPath;
  v25[8] = v22;
  v26 = &v11[*(v8 + 44)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
  v28 = sub_1BE0505C4();
  (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
  *v26 = swift_getKeyPath();
  sub_1BD0DE204(v6, v11, &qword_1EBD519D0);
  if (qword_1EBD36DB8 != -1)
  {
    swift_once();
  }

  v29 = qword_1EBDAB520;
  v30 = swift_getKeyPath();
  sub_1BD0DE204(v11, v15, &qword_1EBD519D8);
  v31 = &v15[*(v12 + 36)];
  *v31 = v30;
  v31[1] = v29;
  sub_1BE048964();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  sub_1BD0DE204(v15, v18, &qword_1EBD519E0);
  v32 = &v18[*(v42 + 36)];
  v33 = v46;
  *v32 = v45;
  *(v32 + 1) = v33;
  *(v32 + 2) = v47;
  if (qword_1EBD36DC0 != -1)
  {
    swift_once();
  }

  v34 = qword_1EBDAB528;
  sub_1BD0DE204(v18, v21, &qword_1EBD519E8);
  *&v21[*(v43 + 36)] = v34;
  sub_1BE048964();
  if (PKNaturalUIEnabled())
  {
    sub_1BE051CE4();
  }

  else
  {
    sub_1BE051CD4();
  }

  sub_1BE04EE54();
  v35 = v44;
  sub_1BD0DE204(v21, v44, &qword_1EBD519F0);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A00) + 36);
  v37 = v53;
  *(v36 + 64) = v52;
  *(v36 + 80) = v37;
  *(v36 + 96) = v54;
  v38 = v49;
  *v36 = v48;
  *(v36 + 16) = v38;
  result = v51;
  *(v36 + 32) = v50;
  *(v36 + 48) = result;
  return result;
}

id sub_1BD733160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51918);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51920);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v20 - v14;
  if (PKIsVision())
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51928);
    (*(*(v16 - 8) + 16))(v15, a1, v16);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD51930, &qword_1EBD51928);
    sub_1BD7344C4();
    return sub_1BE04F9A4();
  }

  else
  {
    v20[0] = a2;
    result = PKProvisioningSecondaryBackgroundColor();
    if (result)
    {
      v20[1] = sub_1BE0511C4();
      v18 = sub_1BE0518D4();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51928);
      (*(*(v19 - 8) + 16))(v7, a1, v19);
      *&v7[*(v4 + 36)] = v18;
      sub_1BD0DE204(v7, v11, &qword_1EBD51918);
      sub_1BD0DE19C(v11, v15, &qword_1EBD51918);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&qword_1EBD51930, &qword_1EBD51928);
      sub_1BD7344C4();
      sub_1BE04F9A4();
      return sub_1BD0DE53C(v11, &qword_1EBD51918);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

__n128 sub_1BD733474@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A08);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A10);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v24 - v10;
  if (qword_1EBD36E98 != -1)
  {
    swift_once();
  }

  v12 = qword_1EBDAB608;
  KeyPath = swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A18);
  (*(*(v14 - 8) + 16))(v7, a1, v14);
  v15 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A20) + 36)];
  *v15 = KeyPath;
  v15[1] = v12;
  v16 = qword_1EBD36EA0;
  sub_1BE048964();
  if (v16 != -1)
  {
    swift_once();
  }

  *&v7[*(v4 + 36)] = qword_1EBDAB610;
  sub_1BE048964();
  v17 = PKNaturalUIEnabled() ^ 1;
  v18 = swift_getKeyPath();
  sub_1BD0DE204(v7, v11, &qword_1EBD51A08);
  v19 = &v11[*(v8 + 36)];
  *v19 = v18;
  v19[8] = v17;
  if (PKNaturalUIEnabled())
  {
    sub_1BE051CE4();
  }

  else
  {
    sub_1BE051CD4();
  }

  sub_1BE04EE54();
  sub_1BD0DE204(v11, a2, &qword_1EBD51A10);
  v20 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A28) + 36);
  v21 = v24[5];
  *(v20 + 64) = v24[4];
  *(v20 + 80) = v21;
  *(v20 + 96) = v24[6];
  v22 = v24[1];
  *v20 = v24[0];
  *(v20 + 16) = v22;
  result = v24[3];
  *(v20 + 32) = v24[2];
  *(v20 + 48) = result;
  return result;
}

uint64_t sub_1BD733758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A38);
  MEMORY[0x1EEE9AC00](v40, v5);
  v7 = &v39 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A40);
  MEMORY[0x1EEE9AC00](v41, v8);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v42 = &v39 - v16;
  v17 = *(a1 + 8);
  if (v17)
  {
    sub_1BE048C84();
    v17 = sub_1BE051574();
    if (qword_1EBD36E28 != -1)
    {
      swift_once();
    }

    v18 = qword_1EBDAB590;
    KeyPath = swift_getKeyPath();
    v20 = qword_1EBD36E30;
    sub_1BE048964();
    if (v20 != -1)
    {
      swift_once();
    }

    v21 = qword_1EBDAB598;
    swift_retain_n();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
  }

  else
  {
    KeyPath = 0;
    v18 = 0;
    v21 = 0;
  }

  if (qword_1EBD36E28 != -1)
  {
    swift_once();
  }

  v22 = qword_1EBDAB590;
  v23 = swift_getKeyPath();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A48);
  (*(*(v24 - 8) + 16))(v7, v39, v24);
  v25 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A50) + 36)];
  *v25 = v23;
  v25[1] = v22;
  v26 = qword_1EBD36E30;
  sub_1BE048964();
  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_1EBDAB598;
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A58) + 36)] = v27;
  v28 = *(a1 + 16);
  v29 = swift_getKeyPath();
  v30 = &v7[*(v40 + 36)];
  *v30 = v29;
  v30[8] = v28;
  sub_1BE048964();
  sub_1BE04EE54();
  sub_1BD0DE204(v7, v13, &qword_1EBD51A38);
  v31 = &v13[*(v41 + 36)];
  v32 = v49;
  *(v31 + 4) = v48;
  *(v31 + 5) = v32;
  *(v31 + 6) = v50;
  v33 = v45;
  *v31 = v44;
  *(v31 + 1) = v33;
  v34 = v47;
  *(v31 + 2) = v46;
  *(v31 + 3) = v34;
  v35 = v42;
  sub_1BD0DE204(v13, v42, &qword_1EBD51A40);
  v36 = v43;
  sub_1BD0DE19C(v35, v43, &qword_1EBD51A40);
  *a3 = v17;
  a3[1] = KeyPath;
  a3[2] = v18;
  a3[3] = v21;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A60);
  sub_1BD0DE19C(v36, a3 + *(v37 + 48), &qword_1EBD51A40);
  sub_1BD7345A8(v17);
  sub_1BD73460C(v17);
  sub_1BD0DE53C(v35, &qword_1EBD51A40);
  sub_1BD0DE53C(v36, &qword_1EBD51A40);
  return sub_1BD73460C(v17);
}

uint64_t sub_1BD733C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v11[0] = *v2;
  v11[1] = v5;
  v12 = *(v2 + 32);
  v6 = sub_1BE04F4D4();
  if (qword_1EBD36E38 != -1)
  {
    v10 = v6;
    swift_once();
    v6 = v10;
  }

  v7 = qword_1EBDAB5A0;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A30);
  return sub_1BD733758(v11, a1, (a2 + *(v8 + 44)));
}

__n128 sub_1BD733CD8@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A68);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v23 - v8;
  v10 = PKOBKBulletTitleFont(a2 & 1);
  v11 = sub_1BE050484();
  KeyPath = swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A70);
  (*(*(v13 - 8) + 16))(v9, a1, v13);
  v14 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A78) + 36)];
  *v14 = KeyPath;
  v14[1] = v11;
  if (qword_1EBD36E48 != -1)
  {
    swift_once();
  }

  v15 = qword_1EBDAB5B8;
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A80) + 36)] = v15;
  v16 = swift_getKeyPath();
  v17 = &v9[*(v6 + 36)];
  *v17 = v16;
  v17[8] = 0;
  v18 = qword_1EBD36E40;
  sub_1BE048964();
  if (v18 != -1)
  {
    swift_once();
  }

  sub_1BE04EE54();
  sub_1BD0DE204(v9, a3, &qword_1EBD51A68);
  v19 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A88) + 36);
  v20 = v23[5];
  *(v19 + 64) = v23[4];
  *(v19 + 80) = v20;
  *(v19 + 96) = v23[6];
  v21 = v23[1];
  *v19 = v23[0];
  *(v19 + 16) = v21;
  result = v23[3];
  *(v19 + 32) = v23[2];
  *(v19 + 48) = result;
  return result;
}

__n128 sub_1BD733F58@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A90);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v21 - v6;
  if (qword_1EBD36E50 != -1)
  {
    swift_once();
  }

  v8 = qword_1EBDAB5C0;
  KeyPath = swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A98);
  (*(*(v10 - 8) + 16))(v7, a1, v10);
  v11 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51AA0) + 36)];
  *v11 = KeyPath;
  v11[1] = v8;
  v12 = qword_1EBD36E58;
  sub_1BE048964();
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_1EBDAB5C8;
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51AA8) + 36)] = v13;
  v14 = swift_getKeyPath();
  v15 = &v7[*(v4 + 36)];
  *v15 = v14;
  v15[8] = 0;
  v16 = qword_1EBD36E40;
  sub_1BE048964();
  if (v16 != -1)
  {
    swift_once();
  }

  sub_1BE04EE54();
  sub_1BD0DE204(v7, a2, &qword_1EBD51A90);
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51AB0) + 36);
  v18 = v21[5];
  *(v17 + 64) = v21[4];
  *(v17 + 80) = v18;
  *(v17 + 96) = v21[6];
  v19 = v21[1];
  *v17 = v21[0];
  *(v17 + 16) = v19;
  result = v21[3];
  *(v17 + 32) = v21[2];
  *(v17 + 48) = result;
  return result;
}

unint64_t sub_1BD734220()
{
  result = qword_1EBD541F0;
  if (!qword_1EBD541F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD541F0);
  }

  return result;
}

unint64_t sub_1BD734274()
{
  result = qword_1EBD51910;
  if (!qword_1EBD51910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51910);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx07PassKitB030PKOBKHeaderSymbolImageModifier33_AB9F32A9D32F8DF5F2C195D64B5628C9LLVGAaBHPxAaBHD1__AhA0cK0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1BE04EBD4();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1BD7344C4()
{
  result = qword_1EBD51938;
  if (!qword_1EBD51938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51918);
    sub_1BD0DE4F4(&qword_1EBD51930, &qword_1EBD51928);
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51938);
  }

  return result;
}

uint64_t sub_1BD7345A8(uint64_t result)
{
  if (result)
  {
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();

    return sub_1BE048964();
  }

  return result;
}

uint64_t sub_1BD73460C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1BD73466C()
{
  result = qword_1EBD51AB8;
  if (!qword_1EBD51AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51AC0);
    sub_1BD0DE4F4(&qword_1EBD51930, &qword_1EBD51928);
    sub_1BD7344C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51AB8);
  }

  return result;
}

unint64_t sub_1BD734724()
{
  result = qword_1EBD51AC8;
  if (!qword_1EBD51AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51960);
    sub_1BD7347B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51AC8);
  }

  return result;
}

unint64_t sub_1BD7347B0()
{
  result = qword_1EBD51AD0;
  if (!qword_1EBD51AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51958);
    sub_1BD73483C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51AD0);
  }

  return result;
}

unint64_t sub_1BD73483C()
{
  result = qword_1EBD51AD8;
  if (!qword_1EBD51AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51950);
    sub_1BD7348F4();
    sub_1BD0DE4F4(&qword_1EBD51AF0, &qword_1EBD51AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51AD8);
  }

  return result;
}

unint64_t sub_1BD7348F4()
{
  result = qword_1EBD51AE0;
  if (!qword_1EBD51AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51948);
    sub_1BD0DE4F4(&qword_1EBD51AE8, &qword_1EBD51940);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51AE0);
  }

  return result;
}

unint64_t sub_1BD7349D8()
{
  result = qword_1EBD51B00;
  if (!qword_1EBD51B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51990);
    sub_1BD734A64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B00);
  }

  return result;
}

unint64_t sub_1BD734A64()
{
  result = qword_1EBD51B08;
  if (!qword_1EBD51B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51988);
    sub_1BD734AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B08);
  }

  return result;
}

unint64_t sub_1BD734AF0()
{
  result = qword_1EBD51B10;
  if (!qword_1EBD51B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51980);
    sub_1BD734BA8();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B10);
  }

  return result;
}

unint64_t sub_1BD734BA8()
{
  result = qword_1EBD51B18;
  if (!qword_1EBD51B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51978);
    sub_1BD734C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B18);
  }

  return result;
}

unint64_t sub_1BD734C34()
{
  result = qword_1EBD51B20;
  if (!qword_1EBD51B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51970);
    sub_1BD0DE4F4(&qword_1EBD51B28, &qword_1EBD51968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B20);
  }

  return result;
}

unint64_t sub_1BD734CEC()
{
  result = qword_1EBD51B30;
  if (!qword_1EBD51B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD519C8);
    sub_1BD734D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B30);
  }

  return result;
}

unint64_t sub_1BD734D78()
{
  result = qword_1EBD51B38;
  if (!qword_1EBD51B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD519B8);
    sub_1BD734E30();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B38);
  }

  return result;
}

unint64_t sub_1BD734E30()
{
  result = qword_1EBD51B40;
  if (!qword_1EBD51B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD519B0);
    sub_1BD734EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B40);
  }

  return result;
}

unint64_t sub_1BD734EBC()
{
  result = qword_1EBD51B48;
  if (!qword_1EBD51B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD519A8);
    sub_1BD734F74();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B48);
  }

  return result;
}

unint64_t sub_1BD734F74()
{
  result = qword_1EBD51B50;
  if (!qword_1EBD51B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD519A0);
    sub_1BD73502C();
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B50);
  }

  return result;
}

unint64_t sub_1BD73502C()
{
  result = qword_1EBD51B58;
  if (!qword_1EBD51B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51998);
    sub_1BD0DE4F4(&qword_1EBD51B60, &qword_1EBD519C0);
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B58);
  }

  return result;
}

unint64_t sub_1BD735110()
{
  result = qword_1EBD51B68;
  if (!qword_1EBD51B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51A00);
    sub_1BD73519C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B68);
  }

  return result;
}

unint64_t sub_1BD73519C()
{
  result = qword_1EBD51B70;
  if (!qword_1EBD51B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD519F0);
    sub_1BD735254();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B70);
  }

  return result;
}

unint64_t sub_1BD735254()
{
  result = qword_1EBD51B78;
  if (!qword_1EBD51B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD519E8);
    sub_1BD7352E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B78);
  }

  return result;
}

unint64_t sub_1BD7352E0()
{
  result = qword_1EBD51B80;
  if (!qword_1EBD51B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD519E0);
    sub_1BD735398();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B80);
  }

  return result;
}

unint64_t sub_1BD735398()
{
  result = qword_1EBD51B88;
  if (!qword_1EBD51B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD519D8);
    sub_1BD735450();
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B88);
  }

  return result;
}

unint64_t sub_1BD735450()
{
  result = qword_1EBD51B90;
  if (!qword_1EBD51B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD519D0);
    sub_1BD0DE4F4(&qword_1EBD51B98, &qword_1EBD519F8);
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B90);
  }

  return result;
}

unint64_t sub_1BD735534()
{
  result = qword_1EBD51BA0;
  if (!qword_1EBD51BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51A28);
    sub_1BD7355C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51BA0);
  }

  return result;
}

unint64_t sub_1BD7355C0()
{
  result = qword_1EBD51BA8;
  if (!qword_1EBD51BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51A10);
    sub_1BD735678();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51BA8);
  }

  return result;
}

unint64_t sub_1BD735678()
{
  result = qword_1EBD51BB0;
  if (!qword_1EBD51BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51A08);
    sub_1BD735730();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51BB0);
  }

  return result;
}

unint64_t sub_1BD735730()
{
  result = qword_1EBD51BB8;
  if (!qword_1EBD51BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51A20);
    sub_1BD0DE4F4(&qword_1EBD51BC0, &qword_1EBD51A18);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51BB8);
  }

  return result;
}

unint64_t sub_1BD735814()
{
  result = qword_1EBD51BD8;
  if (!qword_1EBD51BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51A88);
    sub_1BD7358A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51BD8);
  }

  return result;
}

unint64_t sub_1BD7358A0()
{
  result = qword_1EBD51BE0;
  if (!qword_1EBD51BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51A68);
    sub_1BD735958();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51BE0);
  }

  return result;
}

unint64_t sub_1BD735958()
{
  result = qword_1EBD51BE8;
  if (!qword_1EBD51BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51A80);
    sub_1BD735A10();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51BE8);
  }

  return result;
}

unint64_t sub_1BD735A10()
{
  result = qword_1EBD51BF0;
  if (!qword_1EBD51BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51A78);
    sub_1BD0DE4F4(&qword_1EBD51BF8, &qword_1EBD51A70);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51BF0);
  }

  return result;
}

unint64_t sub_1BD735AF4()
{
  result = qword_1EBD51C00;
  if (!qword_1EBD51C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51AB0);
    sub_1BD735B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51C00);
  }

  return result;
}

unint64_t sub_1BD735B80()
{
  result = qword_1EBD51C08;
  if (!qword_1EBD51C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51A90);
    sub_1BD735C38();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51C08);
  }

  return result;
}

unint64_t sub_1BD735C38()
{
  result = qword_1EBD51C10;
  if (!qword_1EBD51C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51AA8);
    sub_1BD735CF0();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51C10);
  }

  return result;
}

unint64_t sub_1BD735CF0()
{
  result = qword_1EBD51C18;
  if (!qword_1EBD51C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51AA0);
    sub_1BD0DE4F4(&qword_1EBD51C20, &qword_1EBD51A98);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51C18);
  }

  return result;
}

uint64_t sub_1BD735E48@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, int *a3@<X2>, uint64_t (*a4)(BOOL, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v47 = a5;
  v8 = a2(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v55 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v54 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v61 = &v46 - v17;
  v18 = sub_1BE049204();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.n128_f64[0] = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v46 - v25;
  v28 = *(a1 + 16);
  if (v28)
  {
    v46 = a4;
    v30 = *(v19 + 16);
    v29 = v19 + 16;
    v31 = a1 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
    v59 = *(v29 + 56);
    v60 = v30;
    v57 = (v29 + 72);
    v58 = (v29 + 16);
    v56 = *a3;
    v48 = (v29 + 80);
    v49 = (v29 - 8);
    v32 = (v9 + 32);
    v33 = MEMORY[0x1E69E7CC0];
    v52 = v9;
    v53 = v8;
    v50 = &v46 - v25;
    v51 = v29;
    v30(v27, v31, v18, v26);
    while (1)
    {
      (*v58)(v22, v27, v18);
      v34 = (*v57)(v22, v18);
      if (v34 == v56)
      {
        (*v48)(v22, v18);
        v35 = *v32;
        v36 = v55;
        (*v32)(v55, v22, v8);
        v37 = v8;
        v38 = v54;
        v35(v54, v36, v37);
        v35(v61, v38, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = v46(0, *(v33 + 16) + 1, 1, v33);
        }

        v40 = *(v33 + 16);
        v39 = *(v33 + 24);
        if (v40 >= v39 >> 1)
        {
          v33 = v46(v39 > 1, v40 + 1, 1, v33);
        }

        *(v33 + 16) = v40 + 1;
        v9 = v52;
        v41 = v33 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v52 + 72) * v40;
        v8 = v53;
        v35(v41, v61, v53);
        v27 = v50;
      }

      else
      {
        (*v49)(v22, v18);
      }

      v31 += v59;
      if (!--v28)
      {
        break;
      }

      v60(v27, v31, v18, v26);
    }
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  if (*(v33 + 16))
  {
    v42 = v47;
    (*(v9 + 16))(v47, v33 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8, v26);
    v43 = v9;
    v44 = 0;
  }

  else
  {
    v43 = v9;
    v44 = 1;
    v42 = v47;
  }

  return (*(v43 + 56))(v42, v44, 1, v8);
}

uint64_t sub_1BD736290(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48360);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48358);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v30 - v12;
  v14 = sub_1BE0491B4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a1, v13, &qword_1EBD3F7C0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BD0DE53C(v13, &qword_1EBD3F7C0);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    sub_1BE0491A4();
    v19 = sub_1BE049294();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v9, 1, v19) == 1)
    {
      sub_1BD0DE53C(v9, &qword_1EBD48358);
    }

    else
    {
      v21 = sub_1BE049284();
      v23 = v22;
      (*(v20 + 8))(v9, v19);
      if (v23)
      {
        (*(v15 + 8))(v18, v14);
        return v21;
      }
    }

    sub_1BE049194();
    v25 = sub_1BE04A0D4();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v5, 1, v25) == 1)
    {
      (*(v15 + 8))(v18, v14);
      sub_1BD0DE53C(v5, &qword_1EBD48360);
    }

    else
    {
      v27 = sub_1BE04A0B4();
      v29 = v28;
      (*(v15 + 8))(v18, v14);
      (*(v26 + 8))(v5, v25);
      if (v29)
      {
        return v27;
      }
    }
  }

  return sub_1BE0499B4();
}

uint64_t sub_1BD736680()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48358);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48360);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = sub_1BE0491B4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TransactionContext(0);
  if ((sub_1BE049124() & 1) == 0)
  {
    return 0;
  }

  sub_1BD0DE19C(v0 + *(v18 + 28), v12, &qword_1EBD3F7C0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BD0DE53C(v12, &qword_1EBD3F7C0);
    return 0;
  }

  (*(v14 + 32))(v17, v12, v13);
  sub_1BE049194();
  v20 = sub_1BE04A0D4();
  v21 = (*(*(v20 - 8) + 48))(v8, 1, v20);
  sub_1BD0DE53C(v8, &qword_1EBD48360);
  if (v21 == 1)
  {
    sub_1BE0491A4();
    (*(v14 + 8))(v17, v13);
    v22 = sub_1BE049294();
    v23 = (*(*(v22 - 8) + 48))(v4, 1, v22) != 1;
    sub_1BD0DE53C(v4, &qword_1EBD48358);
    return v23;
  }

  else
  {
    (*(v14 + 8))(v17, v13);
    return 1;
  }
}

uint64_t sub_1BD7369D4()
{
  v1[19] = v0;
  v2 = sub_1BE04D214();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48358);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD736AD8, 0, 0);
}

uint64_t sub_1BD736AD8()
{
  v1 = v0[24];
  sub_1BE0491A4();
  v2 = sub_1BE049294();
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = v0[24];
  if (v5 == 1)
  {
    sub_1BD0DE53C(v0[24], &qword_1EBD48358);
LABEL_6:

    v15 = v0[1];

    return v15(0);
  }

  v7 = sub_1BE049274();
  v8 = *(v3 + 8);
  v8(v6, v2);
  if (!v7)
  {
    goto LABEL_6;
  }

  v20 = v8;
  v9 = v0[23];
  v10 = [objc_allocWithZone(MEMORY[0x1E696F260]) init];
  v0[25] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BE0B69E0;
  *(v11 + 56) = MEMORY[0x1E69E76D8];
  *(v11 + 32) = v7;
  v12 = sub_1BE052724();

  [v10 _setMuids_];

  sub_1BE0491A4();
  v13 = v4(v9, 1, v2);
  v14 = v0[23];
  if (v13 == 1)
  {
    sub_1BD0DE53C(v0[23], &qword_1EBD48358);
  }

  else
  {
    v17 = sub_1BE049264();
    v20(v14, v2);
    if ((v17 & 0x100000000) == 0 && v17 >= 1)
    {
      [v10 _setResultProviderID_];
    }
  }

  v18 = [objc_allocWithZone(MEMORY[0x1E696F248]) initWithRequest_];
  v0[26] = v18;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1BD736E64;
  v19 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51C88);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD16F63C;
  v0[13] = &block_descriptor_169;
  v0[14] = v19;
  [v18 startWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD736E64()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_1BD7370CC;
  }

  else
  {
    v2 = sub_1BD736F74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD736F74()
{
  v1 = v0[18];
  v2 = [v1 mapItems];
  sub_1BD73A8A8();
  v3 = sub_1BE052744();

  if (v3 >> 62)
  {
    result = sub_1BE053704();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = v0[25];
    v9 = v0[26];

    v6 = 0;
    goto LABEL_9;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1BFB40900](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;
  v8 = v0[25];
  v7 = v0[26];

LABEL_9:

  v11 = v0[1];

  return v11(v6);
}

uint64_t sub_1BD7370CC()
{
  v1 = v0[27];
  swift_willThrow();
  sub_1BE04D114();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BD026000, v3, v4, "MapKit error: %@", v6, 0xCu);
    sub_1BD0DE53C(v7, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v7, -1, -1);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    v10 = (v0 + 26);
    v11 = v3;
    v3 = v0[25];
  }

  else
  {
    v11 = v0[26];
    v10 = (v0 + 25);
  }

  v12 = v0[27];
  v14 = v0[21];
  v13 = v0[22];
  v15 = v0[20];

  (*(v14 + 8))(v13, v15);

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_1BD7372C0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7D8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v12 - v5;
  v7 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__transaction;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v7, v6, &qword_1EBD3F7D8);
  v8 = sub_1BD73A94C(v6, a1);
  sub_1BD0DE53C(v6, &qword_1EBD3F7D8);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    v12[-2] = v1;
    v12[-1] = a1;
    v12[2] = v1;
    sub_1BD73A904(&qword_1EBD51C98, _s9ViewModelCMa_3);
    sub_1BE04B584();
  }

  else
  {
    sub_1BD0DE19C(a1, v6, &qword_1EBD3F7D8);
    swift_beginAccess();
    sub_1BD2C7C4C(v6, v1 + v7, &qword_1EBD3F7D8);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD3F7D8);
}

uint64_t sub_1BD7374EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v12 - v5;
  v7 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__account;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v7, v6, &qword_1EBD498C8);
  v8 = sub_1BD73AC6C(v6, a1);
  sub_1BD0DE53C(v6, &qword_1EBD498C8);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    v12[-2] = v1;
    v12[-1] = a1;
    v12[2] = v1;
    sub_1BD73A904(&qword_1EBD51C98, _s9ViewModelCMa_3);
    sub_1BE04B584();
  }

  else
  {
    sub_1BD0DE19C(a1, v6, &qword_1EBD498C8);
    swift_beginAccess();
    sub_1BD2C7C4C(v6, v1 + v7, &qword_1EBD498C8);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD498C8);
}

uint64_t sub_1BD7376F4()
{
  swift_getKeyPath();
  sub_1BD73A904(&qword_1EBD51C98, _s9ViewModelCMa_3);
  sub_1BE04B594();

  return sub_1BE048C84();
}

uint64_t sub_1BD7377A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__insights;
  v4 = sub_1BE048C84();
  v5 = sub_1BD400C98(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1BD73A904(&qword_1EBD51C98, _s9ViewModelCMa_3);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD737920@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1BD73A904(&qword_1EBD51C98, _s9ViewModelCMa_3);
  sub_1BE04B594();

  v7 = *a1;
  swift_beginAccess();
  return sub_1BD0DE19C(v9 + v7, a3, a2);
}

uint64_t sub_1BD737A00(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v12 - v5;
  v7 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__historyToken;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v7, v6, &qword_1EBD3F788);
  v8 = sub_1BD73AF8C(v6, a1);
  sub_1BD0DE53C(v6, &qword_1EBD3F788);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    v12[-2] = v1;
    v12[-1] = a1;
    v12[2] = v1;
    sub_1BD73A904(&qword_1EBD51C98, _s9ViewModelCMa_3);
    sub_1BE04B584();
  }

  else
  {
    sub_1BD0DE19C(a1, v6, &qword_1EBD3F788);
    swift_beginAccess();
    sub_1BD2C7C4C(v6, v1 + v7, &qword_1EBD3F788);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD3F788);
}

uint64_t sub_1BD737C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7D8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v29 - v12;
  v14 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__transaction;
  v15 = sub_1BE049A94();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(v4 + v14, 1, 1, v15);
  v18 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__account;
  v19 = sub_1BE0495A4();
  (*(*(v19 - 8) + 56))(v4 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__historyToken;
  v21 = sub_1BE048F54();
  (*(*(v21 - 8) + 56))(v4 + v20, 1, 1, v21);
  sub_1BE04B5C4();
  (*(v16 + 16))(v13, a1, v15);
  v17(v13, 0, 1, v15);
  sub_1BD0DE53C(v4 + v14, &qword_1EBD3F7D8);
  sub_1BD0DE204(v13, v4 + v14, &qword_1EBD3F7D8);
  sub_1BE049A14();
  v22 = sub_1BE04AFE4();
  (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
  sub_1BD0DE204(v9, v4 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_transactionID, &qword_1EBD39980);
  v23 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_institution;
  v24 = sub_1BE049184();
  v25 = *(v24 - 8);
  v26 = v4 + v23;
  v27 = v29;
  (*(v25 + 16))(v26, v29, v24);
  *(v4 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_style) = v30;
  (*(v25 + 8))(v27, v24);
  (*(v16 + 8))(a1, v15);
  *(v4 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__insights) = MEMORY[0x1E69E7CC0];
  return v4;
}

uint64_t sub_1BD737F84()
{
  v1[14] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8);
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC8);
  v1[17] = swift_task_alloc();
  v2 = sub_1BE049B64();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v3 = sub_1BE049C24();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v4 = sub_1BE049A94();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0);
  v1[27] = swift_task_alloc();
  v5 = sub_1BE049D74();
  v1[28] = v5;
  v1[29] = *(v5 - 8);
  v1[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  v1[31] = swift_task_alloc();
  v6 = sub_1BE04AFE4();
  v1[32] = v6;
  v1[33] = *(v6 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7D8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v7 = sub_1BE04D214();
  v1[39] = v7;
  v1[40] = *(v7 - 8);
  v1[41] = swift_task_alloc();
  sub_1BE0528A4();
  v1[42] = sub_1BE052894();
  v9 = sub_1BE052844();
  v1[43] = v9;
  v1[44] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD7383B8, v9, v8);
}

uint64_t sub_1BD7383B8()
{
  sub_1BE04D044();
  v1 = sub_1BE04D204();
  v2 = sub_1BE052C34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BD026000, v1, v2, "Load view model", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v5 = v0[40];
  v4 = v0[41];
  v6 = v0[38];
  v7 = v0[39];
  v8 = v0[24];
  v9 = v0[25];
  v10 = v0[14];

  (*(v5 + 8))(v4, v7);
  swift_getKeyPath();
  v0[45] = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel___observationRegistrar;
  v0[10] = v10;
  v0[46] = sub_1BD73A904(&qword_1EBD51C98, _s9ViewModelCMa_3);
  sub_1BE04B594();

  v11 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__transaction;
  v0[47] = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__transaction;
  swift_beginAccess();
  sub_1BD0DE19C(v10 + v11, v6, &qword_1EBD3F7D8);
  v12 = *(v9 + 48);
  v0[48] = v12;
  v0[49] = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v8) = v12(v6, 1, v8);
  sub_1BD0DE53C(v6, &qword_1EBD3F7D8);
  if (v8 != 1)
  {
    goto LABEL_6;
  }

  v13 = v0[32];
  v14 = v0[33];
  v15 = v0[31];
  sub_1BD0DE19C(v0[14] + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_transactionID, v15, &qword_1EBD39980);
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    sub_1BD0DE53C(v0[31], &qword_1EBD39980);
LABEL_6:
    v16 = v0[48];
    v17 = v0[47];
    v18 = v0[36];
    v19 = v0[24];
    v20 = v0[14];
    swift_getKeyPath();
    v0[11] = v20;
    sub_1BE04B594();

    sub_1BD0DE19C(v20 + v17, v18, &qword_1EBD3F7D8);
    if (v16(v18, 1, v19) == 1)
    {
      v21 = v0[36];

      sub_1BD0DE53C(v21, &qword_1EBD3F7D8);

      v22 = v0[1];

      return v22();
    }

    else
    {
      v24 = v0[26];
      v25 = v0[17];
      (*(v0[25] + 32))(v24, v0[36], v0[24]);
      v0[54] = sub_1BE0490F4();
      v0[55] = sub_1BE0490B4();
      v26 = swift_task_alloc();
      v0[56] = v26;
      *(v26 + 16) = v24;
      v27 = sub_1BE0495A4();
      v0[57] = v27;
      v0[12] = v27;
      sub_1BE04B444();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF8);
      (*(*(v28 - 8) + 56))(v25, 0, 1, v28);
      sub_1BE049B54();
      v29 = swift_task_alloc();
      v0[58] = v29;
      *v29 = v0;
      v29[1] = sub_1BD738FF8;
      v30 = v0[23];
      v31 = v0[20];

      return MEMORY[0x1EEDC14B8](v30, v31);
    }
  }

  v32 = v0[35];
  v33 = v0[27];
  v34 = v0[24];
  (*(v0[33] + 32))(v32, v0[31], v0[32]);
  sub_1BE0490F4();
  v0[50] = sub_1BE0490B4();
  v35 = swift_task_alloc();
  v0[51] = v35;
  *(v35 + 16) = v32;
  v0[13] = v34;
  sub_1BE04B444();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0);
  (*(*(v36 - 8) + 56))(v33, 0, 1, v36);
  v37 = sub_1BE049CE4();
  v38 = MEMORY[0x1E6967BC8];
  v0[5] = v37;
  v0[6] = v38;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1BE049CD4();
  v39 = swift_task_alloc();
  v0[52] = v39;
  *v39 = v0;
  v39[1] = sub_1BD738A98;
  v40 = v0[30];

  return MEMORY[0x1EEDC14D8](v40, v0 + 2);
}

uint64_t sub_1BD738A98()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = *(v2 + 344);
    v4 = *(v2 + 352);
    v5 = sub_1BD7396CC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 16);
    v3 = *(v2 + 344);
    v4 = *(v2 + 352);
    v5 = sub_1BD738BD8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD738BD8()
{
  v1 = sub_1BE049D54();
  if (*(v1 + 16))
  {
    (*(v0[25] + 16))(v0[37], v1 + ((*(v0[25] + 80) + 32) & ~*(v0[25] + 80)), v0[24]);
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v0[37];
  v27 = v0[35];
  v4 = v0[33];
  v26 = v0[32];
  v5 = v0[29];
  v6 = v0[30];
  v7 = v0[28];
  v9 = v0[24];
  v8 = v0[25];

  (*(v8 + 56))(v3, v2, 1, v9);
  sub_1BD7372C0(v3);
  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v27, v26);

  v10 = v0[48];
  v11 = v0[47];
  v12 = v0[36];
  v13 = v0[24];
  v14 = v0[14];
  swift_getKeyPath();
  v0[11] = v14;
  sub_1BE04B594();

  sub_1BD0DE19C(v14 + v11, v12, &qword_1EBD3F7D8);
  if (v10(v12, 1, v13) == 1)
  {
    v15 = v0[36];

    sub_1BD0DE53C(v15, &qword_1EBD3F7D8);

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[26];
    v19 = v0[17];
    (*(v0[25] + 32))(v18, v0[36], v0[24]);
    v0[54] = sub_1BE0490F4();
    v0[55] = sub_1BE0490B4();
    v20 = swift_task_alloc();
    v0[56] = v20;
    *(v20 + 16) = v18;
    v21 = sub_1BE0495A4();
    v0[57] = v21;
    v0[12] = v21;
    sub_1BE04B444();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF8);
    (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
    sub_1BE049B54();
    v23 = swift_task_alloc();
    v0[58] = v23;
    *v23 = v0;
    v23[1] = sub_1BD738FF8;
    v24 = v0[23];
    v25 = v0[20];

    return MEMORY[0x1EEDC14B8](v24, v25);
  }
}

uint64_t sub_1BD738FF8()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  *(*v1 + 472) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 352);
  v7 = *(v2 + 344);
  if (v0)
  {
    v8 = sub_1BD739830;
  }

  else
  {
    v8 = sub_1BD7391B4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BD7391B4()
{
  v1 = sub_1BE049C14();
  v2 = v0[57];
  if (*(v1 + 16))
  {
    v3 = *(v2 - 8);
    (*(v3 + 16))(v0[16], v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

    v4 = 0;
  }

  else
  {

    v3 = *(v2 - 8);
    v4 = 1;
  }

  v5 = v0[16];
  (*(v3 + 56))(v5, v4, 1, v0[57]);
  sub_1BD7374EC(v5);
  v0[60] = sub_1BE0490B4();
  sub_1BE049A14();
  v6 = swift_task_alloc();
  v0[61] = v6;
  *v6 = v0;
  v6[1] = sub_1BD73937C;
  v7 = v0[34];

  return MEMORY[0x1EEDC1500](v7);
}

uint64_t sub_1BD73937C(uint64_t a1)
{
  v4 = *v2;
  v4[62] = v1;

  v5 = v4[34];
  v6 = v4[33];
  v7 = v4[32];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    v8 = v4[43];
    v9 = v4[44];
    v10 = sub_1BD73998C;
  }

  else
  {
    v4[63] = a1;
    (*(v6 + 8))(v5, v7);

    v8 = v4[43];
    v9 = v4[44];
    v10 = sub_1BD739528;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1BD739528()
{
  v1 = v0[63];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[15];

  sub_1BD7377A0(v1);
  sub_1BE049C04();
  sub_1BD737A00(v8);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BD7396CC()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BD739830()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BD73998C()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v6 = v0[22];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BD739B04@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v20[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F828);
  v4 = *(v3 - 8);
  v21 = v3;
  v22 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v20 - v16;
  sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  (*(v9 + 8))(v12, v8);
  sub_1BE04AFE4();
  sub_1BE04A7B4();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F830);
  a2[4] = sub_1BD58197C();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1BD0DE4F4(&qword_1EBD38F20, &qword_1EBD38EF0);
  sub_1BD0DE4F4(&qword_1EBD3F850, &qword_1EBD3F828);
  sub_1BD73A904(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v18 = v21;
  sub_1BE04A714();
  (*(v22 + 8))(v7, v18);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1BD739EA0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v26 = a1;
  v29 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E60);
  v2 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v3);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E68);
  v7 = *(v6 - 8);
  v30 = v6;
  v31 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E70);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - v14;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E78);
  v16 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v17);
  v19 = &v26 - v18;
  sub_1BD0DE4F4(&qword_1EBD38E80, &qword_1EBD38E70);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  (*(v12 + 8))(v15, v11);
  sub_1BE049A94();
  sub_1BE04A7B4();
  swift_getKeyPath();
  sub_1BD0DE4F4(&qword_1EBD38E88, &qword_1EBD38E60);
  v20 = v28;
  sub_1BE04A724();

  (*(v2 + 8))(v5, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E90);
  v22 = v29;
  v29[3] = v21;
  v22[4] = sub_1BD0F9E9C();
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_1BD0DE4F4(&qword_1EBD38ED0, &qword_1EBD38E78);
  sub_1BD0DE4F4(&qword_1EBD38ED8, &qword_1EBD38E68);
  sub_1BD73A904(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v23 = v27;
  v24 = v30;
  sub_1BE04A714();
  (*(v31 + 8))(v10, v24);
  return (*(v16 + 8))(v19, v23);
}

uint64_t sub_1BD73A334()
{
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__transaction, &qword_1EBD3F7D8);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__account, &qword_1EBD498C8);

  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__historyToken, &qword_1EBD3F788);
  v1 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_institution;
  v2 = sub_1BE049184();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_transactionID, &qword_1EBD39980);
  v3 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel___observationRegistrar;
  v4 = sub_1BE04B5D4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_1BD73A4C8()
{
  sub_1BD73A854(319, &qword_1EBD51C68, MEMORY[0x1E6967A40]);
  if (v0 <= 0x3F)
  {
    sub_1BD73A854(319, &qword_1EBD4D598, MEMORY[0x1E6967810]);
    if (v1 <= 0x3F)
    {
      sub_1BD73A854(319, &qword_1EBD3F768, MEMORY[0x1E69675F8]);
      if (v2 <= 0x3F)
      {
        sub_1BE049184();
        if (v3 <= 0x3F)
        {
          sub_1BD73A854(319, &qword_1EBD36A28, MEMORY[0x1E69695A8]);
          if (v4 <= 0x3F)
          {
            sub_1BE04B5D4();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1BD73A750()
{
  sub_1BE049A94();
  if (v0 <= 0x3F)
  {
    sub_1BE0495A4();
    if (v1 <= 0x3F)
    {
      sub_1BE049184();
      if (v2 <= 0x3F)
      {
        sub_1BD73A854(319, &qword_1EBD46190, MEMORY[0x1E69676D0]);
        if (v3 <= 0x3F)
        {
          sub_1BD73A854(319, &qword_1EBD51C80, MEMORY[0x1E6967C18]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD73A854(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1BD73A8A8()
{
  result = qword_1EBD51C90;
  if (!qword_1EBD51C90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD51C90);
  }

  return result;
}

uint64_t sub_1BD73A904(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD73A94C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE049A94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7D8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51CA0);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1BD0DE19C(a1, &v24 - v16, &qword_1EBD3F7D8);
  sub_1BD0DE19C(a2, &v17[v18], &qword_1EBD3F7D8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1BD0DE19C(v17, v12, &qword_1EBD3F7D8);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1BD73A904(&qword_1EBD459C0, MEMORY[0x1E6967A40]);
      v21 = sub_1BE052334();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1BD0DE53C(v17, &qword_1EBD3F7D8);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v17, &qword_1EBD51CA0);
    v20 = 1;
    return v20 & 1;
  }

  sub_1BD0DE53C(v17, &qword_1EBD3F7D8);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1BD73AC6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE0495A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D840);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1BD0DE19C(a1, &v24 - v16, &qword_1EBD498C8);
  sub_1BD0DE19C(a2, &v17[v18], &qword_1EBD498C8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1BD0DE19C(v17, v12, &qword_1EBD498C8);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1BD73A904(&qword_1EBD4D848, MEMORY[0x1E6967810]);
      v21 = sub_1BE052334();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1BD0DE53C(v17, &qword_1EBD498C8);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v17, &qword_1EBD4D840);
    v20 = 1;
    return v20 & 1;
  }

  sub_1BD0DE53C(v17, &qword_1EBD498C8);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1BD73AF8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE048F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F950);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1BD0DE19C(a1, &v24 - v16, &qword_1EBD3F788);
  sub_1BD0DE19C(a2, &v17[v18], &qword_1EBD3F788);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1BD0DE19C(v17, v12, &qword_1EBD3F788);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1BD73A904(&qword_1EBD3F958, MEMORY[0x1E69675F8]);
      v21 = sub_1BE052334();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1BD0DE53C(v17, &qword_1EBD3F788);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v17, &qword_1EBD3F950);
    v20 = 1;
    return v20 & 1;
  }

  sub_1BD0DE53C(v17, &qword_1EBD3F788);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1BD73B2E0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__insights) = *(v0 + 24);
  sub_1BE048C84();
}

uint64_t sub_1BD73B3C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51CA8);
  MEMORY[0x1EEE9AC00](v70, v3);
  v71 = &v60 - v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51CB0);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v5);
  v67 = &v60 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37288);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v7);
  v73 = &v60 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51CB8);
  v9 = *(v64 - 1);
  MEMORY[0x1EEE9AC00](v64, v10);
  v12 = &v60 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51CC0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v60 - v15;
  sub_1BD73BDB0(v2, &v60 - v15);
  v17 = sub_1BE04F434();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 104))(v22, *MEMORY[0x1E697C438], v17, v20);
  v23 = sub_1BD73FB5C();
  sub_1BE050E84();
  (*(v18 + 8))(v22, v17);
  sub_1BD0DE53C(v16, &qword_1EBD51CC0);
  v74 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D18);
  *&v76[0] = v13;
  *(&v76[0] + 1) = v23;
  swift_getOpaqueTypeConformance2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51D20);
  v25 = sub_1BD0DE4F4(&qword_1EBD51D28, &qword_1EBD51D20);
  *&v76[0] = v24;
  *(&v76[0] + 1) = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v64;
  sub_1BE051024();
  (*(v9 + 8))(v12, v26);
  sub_1BE0528A4();
  sub_1BD73FF48(v2, v76);
  v27 = sub_1BE052894();
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E85E0];
  *(v28 + 16) = v27;
  *(v28 + 24) = v29;
  v30 = *(v2 + 80);
  *(v28 + 96) = *(v2 + 64);
  *(v28 + 112) = v30;
  *(v28 + 128) = *(v2 + 96);
  v31 = *(v2 + 16);
  *(v28 + 32) = *v2;
  *(v28 + 48) = v31;
  v32 = *(v2 + 48);
  *(v28 + 64) = *(v2 + 32);
  *(v28 + 80) = v32;
  v33 = sub_1BE0528D4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = &v60 - v37;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v63 = sub_1BE04EAA4();
    v64 = &v60;
    v62 = *(v63 - 8);
    MEMORY[0x1EEE9AC00](v63, v39);
    v61 = &v60 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v76[0] = 0;
    *(&v76[0] + 1) = 0xE000000000000000;
    sub_1BE053834();

    *&v76[0] = 0xD00000000000003CLL;
    *(&v76[0] + 1) = 0x80000001BE137A20;
    v75 = 53;
    v41 = sub_1BE053B24();
    MEMORY[0x1BFB3F610](v41);

    v44 = MEMORY[0x1EEE9AC00](v42, v43);
    (*(v34 + 16))(&v60 - v37, &v60 - v37, v33, v44);
    v45 = v61;
    sub_1BE04EA94();
    (*(v34 + 8))(v38, v33);
    v46 = v67;
    (*(v65 + 32))(v67, v73, v66);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37290);
    (*(v62 + 32))(&v46[*(v47 + 36)], v45, v63);
  }

  else
  {
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37298);
    v46 = v67;
    v49 = &v67[*(v48 + 36)];
    v50 = sub_1BE04E7B4();
    (*(v34 + 32))(&v49[*(v50 + 20)], &v60 - v37, v33);
    *v49 = &unk_1BE0F45A0;
    *(v49 + 1) = v28;
    (*(v65 + 32))(v46, v73, v66);
  }

  v51 = v71;
  (*(v68 + 32))(v71, v46, v69);
  v52 = (v51 + *(v70 + 36));
  *v52 = sub_1BD73D408;
  v52[1] = 0;
  v52[2] = 0;
  v52[3] = 0;
  v76[0] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D30);
  sub_1BE0516A4();
  v53 = v75;
  swift_getKeyPath();
  *&v76[0] = v53;
  sub_1BD7407B8(&qword_1EBD402C0, _s9ViewModelCMa_0);
  sub_1BE04B594();

  v54 = *(v53 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriod);

  LOBYTE(v75) = v54;
  v55 = swift_allocObject();
  v56 = *(v2 + 80);
  *(v55 + 80) = *(v2 + 64);
  *(v55 + 96) = v56;
  *(v55 + 112) = *(v2 + 96);
  v57 = *(v2 + 16);
  *(v55 + 16) = *v2;
  *(v55 + 32) = v57;
  v58 = *(v2 + 48);
  *(v55 + 48) = *(v2 + 32);
  *(v55 + 64) = v58;
  sub_1BD73FF48(v2, v76);
  sub_1BD74002C();
  sub_1BD296BD8();
  sub_1BE051064();

  return sub_1BD0DE53C(v51, &qword_1EBD51CA8);
}

uint64_t sub_1BD73BDB0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D50);
  v3 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v4);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D58);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v37 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v11 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v12);
  v14 = &v37 - v13;
  v41 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D30);
  sub_1BE0516A4();
  v15 = v44;
  swift_getKeyPath();
  *&v41 = v15;
  sub_1BD7407B8(&qword_1EBD402C0, _s9ViewModelCMa_0);
  sub_1BE04B594();

  v16 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriodSpendingSummaries;
  swift_beginAccess();
  v17 = *(v15 + v16);
  sub_1BE048C84();

  if (v17)
  {
    sub_1BD73C2E0(v17, v6);

    v18 = v40;
    (*(v3 + 16))(v10, v6, v40);
    swift_storeEnumTagMultiPayload();
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CE0);
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CE8);
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CF0);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28);
    v23 = sub_1BD73FD5C();
    v24 = sub_1BD73FE40();
    *&v41 = v21;
    *(&v41 + 1) = v22;
    v42 = v23;
    v43 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v26 = sub_1BD73FEBC();
    *&v41 = v19;
    *(&v41 + 1) = v20;
    v42 = OpaqueTypeConformance2;
    v43 = v26;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BE04F9A4();
    return (*(v3 + 8))(v6, v18);
  }

  else
  {
    sub_1BE04E4F4();
    v28 = v38;
    (*(v11 + 16))(v10, v14, v38);
    swift_storeEnumTagMultiPayload();
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CE0);
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CE8);
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CF0);
    v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28);
    v33 = sub_1BD73FD5C();
    v34 = sub_1BD73FE40();
    *&v41 = v31;
    *(&v41 + 1) = v32;
    v42 = v33;
    v43 = v34;
    v35 = swift_getOpaqueTypeConformance2();
    v36 = sub_1BD73FEBC();
    *&v41 = v29;
    *(&v41 + 1) = v30;
    v42 = v35;
    v43 = v36;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BE04F9A4();
    return (*(v11 + 8))(v14, v28);
  }
}

uint64_t sub_1BD73C2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v115 = a2;
  v5 = _s31SpendingSummaryDetailsViewModelVMa(0);
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v93 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04FF24();
  v107 = *(v8 - 8);
  v108 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v118 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52030);
  v99 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v11);
  v13 = &v90 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D60);
  v15 = *(v14 - 8);
  v97 = v14;
  v98 = v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v94 = &v90 - v17;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D68);
  v102 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104, v18);
  v20 = &v90 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D70);
  v105 = *(v21 - 8);
  v106 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v103 = &v90 - v23;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D78);
  MEMORY[0x1EEE9AC00](v101, v24);
  v116 = &v90 - v25;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D08);
  MEMORY[0x1EEE9AC00](v109, v26);
  v110 = &v90 - v27;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51CF0);
  MEMORY[0x1EEE9AC00](v111, v28);
  v119 = &v90 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51CE0);
  v113 = *(v30 - 8);
  v114 = v30;
  MEMORY[0x1EEE9AC00](v30, v31);
  v112 = &v90 - v32;
  v120 = a1;
  v121 = v3;
  sub_1BE0501B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D80);
  sub_1BD740364();
  sub_1BE04E304();
  sub_1BE051C64();
  v33 = MEMORY[0x1E6981CD0];
  v34 = MEMORY[0x1E6981CD8];
  sub_1BE04F694();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DC0);
  v36 = sub_1BD0DE4F4(&qword_1EBD51DC8, &qword_1EBD51D60);
  *&v122 = v34;
  *(&v122 + 1) = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_1BD740598();
  v39 = v97;
  *&v122 = v97;
  *(&v122 + 1) = &type metadata for MinimalNavigationItemAdaptor;
  v123 = v36;
  v124 = v38;
  v40 = swift_getOpaqueTypeConformance2();
  v100 = v20;
  v41 = v39;
  v42 = v13;
  v43 = v117;
  v95 = OpaqueTypeConformance2;
  v96 = v35;
  v44 = v94;
  sub_1BE0510C4();
  (*(v99 + 8))(v42, v43);
  (*(v98 + 8))(v44, v41);
  sub_1BE04FA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  LOBYTE(v35) = sub_1BE0501B4();
  *(inited + 32) = v35;
  v46 = sub_1BE050194();
  *(inited + 33) = v46;
  sub_1BE0501A4();
  sub_1BE0501A4();
  if (sub_1BE0501A4() != v35)
  {
    sub_1BE0501A4();
  }

  sub_1BE0501A4();
  if (sub_1BE0501A4() != v46)
  {
    sub_1BE0501A4();
  }

  v47 = v111;
  *&v122 = v41;
  *(&v122 + 1) = v117;
  v123 = v96;
  v124 = v36;
  v125 = v95;
  v126 = v40;
  swift_getOpaqueTypeConformance2();
  v49 = v103;
  v48 = v104;
  v50 = v118;
  v51 = v100;
  sub_1BE050BC4();
  (*(v107 + 8))(v50, v108);
  (*(v102 + 8))(v51, v48);
  v52 = [objc_opt_self() systemGroupedBackgroundColor];
  v53 = sub_1BE0511C4();
  LOBYTE(v50) = sub_1BE0501D4();
  v54 = v116;
  (*(v105 + 32))(v116, v49, v106);
  v55 = v54 + *(v101 + 36);
  *v55 = v53;
  *(v55 + 8) = v50;
  v130 = *v3;
  v122 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D30);
  sub_1BE0516A4();
  v56 = v129;
  swift_getKeyPath();
  *&v122 = v56;
  sub_1BD7407B8(&qword_1EBD402C0, _s9ViewModelCMa_0);
  sub_1BE04B594();

  v57 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriodSpendingSummaries;
  swift_beginAccess();
  v58 = *(v56 + v57);
  sub_1BE048C84();

  if (v58)
  {
    v59 = *(v58 + 16);
    if (v59)
    {
      v60 = v93;
      sub_1BD740974(v58 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * (v59 - 1), v93, _s31SpendingSummaryDetailsViewModelVMa);

      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
      v62 = sub_1BD7407B8(&qword_1EBD52550, MEMORY[0x1E6969530]);
      v58 = MEMORY[0x1BFB3FC10](v61, v62);
      v63 = v60;
      v54 = v116;
      sub_1BD740A50(v63, _s31SpendingSummaryDetailsViewModelVMa);
    }

    else
    {

      v58 = 0;
    }
  }

  v64 = v110;
  sub_1BD0DE204(v54, v110, &qword_1EBD51D78);
  *(v64 + *(v109 + 52)) = v58;
  v65 = swift_allocObject();
  v66 = *(v3 + 80);
  *(v65 + 80) = *(v3 + 64);
  *(v65 + 96) = v66;
  *(v65 + 112) = *(v3 + 96);
  v67 = *(v3 + 16);
  *(v65 + 16) = *v3;
  *(v65 + 32) = v67;
  v68 = *(v3 + 48);
  *(v65 + 48) = *(v3 + 32);
  *(v65 + 64) = v68;
  v69 = v64;
  v70 = v119;
  sub_1BD0DE204(v69, v119, &qword_1EBD51D08);
  v71 = (v70 + *(v47 + 36));
  *v71 = sub_1BD740D58;
  v71[1] = 0;
  v71[2] = sub_1BD7405EC;
  v71[3] = v65;
  v127 = *(v3 + 16);
  v128 = *(v3 + 32);
  sub_1BD73FF48(v3, &v122);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0);
  sub_1BE0516A4();
  if (BYTE8(v122) == 1)
  {
    v122 = v130;
    sub_1BE0516A4();
    v72 = v127;
    swift_getKeyPath();
    *&v122 = v72;
    sub_1BE04B594();

    v73 = *(v72 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedSpendingSummaryID);
    v74 = *(v72 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedSpendingSummaryID + 8);
  }

  else
  {
    v74 = 0;
    v73 = v122;
  }

  *&v127 = v73;
  BYTE8(v127) = v74;
  v75 = swift_allocObject();
  v76 = *(v3 + 80);
  *(v75 + 80) = *(v3 + 64);
  *(v75 + 96) = v76;
  *(v75 + 112) = *(v3 + 96);
  v77 = *(v3 + 16);
  *(v75 + 16) = *v3;
  *(v75 + 32) = v77;
  v78 = *(v3 + 48);
  *(v75 + 48) = *(v3 + 32);
  *(v75 + 64) = v78;
  sub_1BD73FF48(v3, &v122);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28);
  v80 = sub_1BD73FD5C();
  v81 = sub_1BD73FE40();
  v82 = v112;
  v83 = v119;
  sub_1BE051064();

  sub_1BD0DE53C(v83, &qword_1EBD51CF0);
  v122 = *(v3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DE0);
  sub_1BE0516A4();
  v84 = swift_allocObject();
  v85 = *(v3 + 80);
  *(v84 + 80) = *(v3 + 64);
  *(v84 + 96) = v85;
  *(v84 + 112) = *(v3 + 96);
  v86 = *(v3 + 16);
  *(v84 + 16) = *v3;
  *(v84 + 32) = v86;
  v87 = *(v3 + 48);
  *(v84 + 48) = *(v3 + 32);
  *(v84 + 64) = v87;
  sub_1BD73FF48(v3, &v122);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51CE8);
  *&v122 = v47;
  *(&v122 + 1) = v79;
  v123 = v80;
  v124 = v81;
  swift_getOpaqueTypeConformance2();
  sub_1BD73FEBC();
  v88 = v114;
  sub_1BE051064();

  return (*(v113 + 8))(v82, v88);
}

uint64_t sub_1BD73D02C(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D20);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11[-v7];
  sub_1BE04FB34();
  v12 = a1;
  sub_1BD5AE74C();
  sub_1BE04E424();
  v9 = sub_1BD0DE4F4(&qword_1EBD51D28, &qword_1EBD51D20);
  MEMORY[0x1BFB3CC50](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BD73D1D0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D30);
  sub_1BE0516C4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D48);
  sub_1BE051904();

  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1BD73D2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_1BE0528A4();
  v3[6] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD73D348, v5, v4);
}

uint64_t sub_1BD73D348()
{
  *(v0 + 16) = **(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D30);
  sub_1BE0516A4();
  *(v0 + 72) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F8798;

  return sub_1BD292B5C();
}

void sub_1BD73D408()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69BB6F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v3 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v4 = sub_1BE052434();
  v5 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  v7 = *v5;
  *(inited + 56) = *v5;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v8;
  v9 = v3;
  v10 = v7;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD7407B8(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v11 = sub_1BE052224();

  [v0 subject:v1 sendEvent:v11];
}

uint64_t sub_1BD73D590(_BYTE *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20[-v8 - 8];
  LOBYTE(a1) = *a1;
  v10 = *a2;
  v11 = sub_1BE0528D4();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_1BE0528A4();
  sub_1BD73FF48(a3, v20);
  v12 = sub_1BE052894();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  v15 = *(a3 + 80);
  *(v13 + 96) = *(a3 + 64);
  *(v13 + 112) = v15;
  *(v13 + 128) = *(a3 + 96);
  v16 = *(a3 + 16);
  *(v13 + 32) = *a3;
  *(v13 + 48) = v16;
  v17 = *(a3 + 48);
  *(v13 + 64) = *(a3 + 32);
  *(v13 + 80) = v17;
  *(v13 + 136) = a1;
  *(v13 + 137) = v10;
  sub_1BD122C00(0, 0, v9, &unk_1BE0F45F8, v13);
}

uint64_t sub_1BD73D6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 194) = a6;
  *(v6 + 193) = a5;
  *(v6 + 224) = a4;
  sub_1BE0528A4();
  *(v6 + 232) = sub_1BE052894();
  v8 = sub_1BE052844();
  *(v6 + 240) = v8;
  *(v6 + 248) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BD73D798, v8, v7);
}

uint64_t sub_1BD73D798()
{
  *(v0 + 168) = **(v0 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D30);
  sub_1BE0516A4();
  *(v0 + 256) = *(v0 + 216);
  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v1[1] = sub_1BD73D864;
  v2 = *(v0 + 194);
  v3 = *(v0 + 193);

  return sub_1BD2935D4(v3, v2);
}

uint64_t sub_1BD73D864()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1BD73D9A8, v3, v2);
}

uint64_t sub_1BD73D9A8()
{
  v1 = *(v0 + 224);

  v2 = *(v1 + 16);
  *(v0 + 136) = *(v1 + 32);
  *(v0 + 120) = v2;
  *(v0 + 184) = 0;
  *(v0 + 192) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0);
  sub_1BE0516B4();
  v3 = *(v1 + 80);
  *(v0 + 160) = *(v1 + 96);
  *(v0 + 144) = v3;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D40);
  sub_1BE0516B4();
  v4 = sub_1BE052434();
  v6 = v5;
  v7 = objc_opt_self();
  v8 = *MEMORY[0x1E69BB6F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v10 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v11 = sub_1BE052434();
  v12 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v11;
  *(inited + 48) = v13;
  v14 = *v12;
  *(inited + 56) = *v12;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v15;
  v16 = *MEMORY[0x1E69BA440];
  *(inited + 80) = *MEMORY[0x1E69BA440];
  *(inited + 88) = v4;
  *(inited + 96) = v6;
  v17 = v10;
  v18 = v14;
  v19 = v16;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD7407B8(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v20 = sub_1BE052224();

  [v7 subject:v8 sendEvent:v20];

  v21 = *(v0 + 8);

  return v21();
}

double sub_1BD73DC38@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a3;
  v102 = sub_1BE04FF24();
  v100 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v5);
  v91 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04FC54();
  v92 = *(v7 - 8);
  v93 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v90 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE0500F4();
  v85 = *(v10 - 8);
  v86 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v83 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v80 - v15;
  v17 = sub_1BE050114();
  v18 = *(v17 - 8);
  v87 = v17;
  v88 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DB0);
  v84 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v22);
  v24 = &v80 - v23;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DA8);
  v89 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v25);
  v81 = &v80 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DA0);
  v95 = *(v27 - 8);
  v96 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v108 = &v80 - v29;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D98);
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v30);
  v94 = &v80 - v31;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D90);
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v32);
  v98 = &v80 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DE8);
  v105 = *(v34 - 8);
  v106 = v34;
  MEMORY[0x1EEE9AC00](v34, v35);
  v104 = &v80 - v36;
  sub_1BE050194();
  v110 = a1;
  v111 = a2;
  v109 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51DF8);
  v38 = sub_1BD0DE4F4(&qword_1EBD51E00, &qword_1EBD51DF8);
  *&v112 = v37;
  *(&v112 + 1) = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v80;
  sub_1BE04E304();
  sub_1BE0500E4();
  v41 = v85;
  v40 = v86;
  (*(v85 + 16))(v83, v16, v86);
  sub_1BE050104();
  (*(v41 + 8))(v16, v40);
  v42 = sub_1BD0DE4F4(&qword_1EBD51DB8, &qword_1EBD51DB0);
  v43 = MEMORY[0x1E697CC08];
  v45 = v81;
  v44 = v82;
  v46 = v87;
  sub_1BE050D44();
  v47 = v21;
  v48 = v91;
  v49 = v46;
  (*(v88 + 8))(v47, v46);
  (*(v84 + 8))(v24, v44);
  v50 = sub_1BE0501C4();
  v51 = v90;
  sub_1BE04FC44();
  *&v112 = v44;
  *(&v112 + 1) = v49;
  *&v113 = v42;
  *(&v113 + 1) = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1BFB3DB30](v50, 0x402E000000000000, 0, v51, v39, OpaqueTypeConformance2);
  (*(v92 + 8))(v51, v93);
  (*(v89 + 8))(v45, v39);
  sub_1BE04FA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  LOBYTE(v44) = sub_1BE0501B4();
  *(inited + 32) = v44;
  v54 = sub_1BE050194();
  *(inited + 33) = v54;
  sub_1BE0501A4();
  sub_1BE0501A4();
  if (sub_1BE0501A4() != v44)
  {
    sub_1BE0501A4();
  }

  sub_1BE0501A4();
  if (sub_1BE0501A4() != v54)
  {
    sub_1BE0501A4();
  }

  *&v112 = v39;
  *(&v112 + 1) = OpaqueTypeConformance2;
  v93 = swift_getOpaqueTypeConformance2();
  v55 = v94;
  v56 = v96;
  v57 = v108;
  sub_1BE050BC4();
  (*(v100 + 8))(v48, v102);
  (*(v95 + 8))(v57, v56);
  v117 = *v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D30);
  sub_1BE0516C4();
  v58 = v112;
  v59 = v113;
  swift_getKeyPath();
  v120 = v58;
  v121 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D48);
  sub_1BE051904();

  v60 = v112;
  v61 = v113;
  v62 = BYTE8(v113);

  v117 = v60;
  v118 = v61;
  v119 = v62;
  v115 = v56;
  v116 = v93;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = MEMORY[0x1E69E6530];
  v65 = MEMORY[0x1E69E6540];
  v67 = v98;
  v66 = v99;
  sub_1BE050AD4();

  v68 = v55;
  v69 = v109;
  (*(v97 + 8))(v68, v66);
  v70 = swift_allocObject();
  v71 = *(v69 + 80);
  *(v70 + 80) = *(v69 + 64);
  *(v70 + 96) = v71;
  *(v70 + 112) = *(v69 + 96);
  v72 = *(v69 + 16);
  *(v70 + 16) = *v69;
  *(v70 + 32) = v72;
  v73 = *(v69 + 48);
  *(v70 + 48) = *(v69 + 32);
  *(v70 + 64) = v73;
  sub_1BD73FF48(v69, &v112);
  *&v112 = v66;
  *(&v112 + 1) = v64;
  *&v113 = v63;
  *(&v113 + 1) = v65;
  swift_getOpaqueTypeConformance2();
  v75 = v103;
  v74 = v104;
  sub_1BE050E94();

  (*(v101 + 8))(v67, v75);
  v112 = *(v69 + 80);
  *&v113 = *(v69 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D40);
  sub_1BE0516A4();
  if (BYTE8(v117) == 1)
  {
    v112 = *(v69 + 56);
    *&v113 = *(v69 + 72);
    sub_1BE0516A4();
  }

  sub_1BE051CD4();
  sub_1BE04E5E4();
  v76 = v107;
  (*(v105 + 32))(v107, v74, v106);
  v77 = (v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D80) + 36));
  v78 = v113;
  *v77 = v112;
  v77[1] = v78;
  result = *&v114;
  v77[2] = v114;
  return result;
}

uint64_t sub_1BD73E824(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04FBA4();
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DF8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v12[-v9];
  sub_1BE04F4E4();
  v13 = a1;
  v14 = a2;
  v15 = 0;
  sub_1BD7407B8(&qword_1EBD3FDB8, MEMORY[0x1E697FCB0]);
  sub_1BE053DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51E08);
  sub_1BD740630();
  sub_1BE04E2C4();
  sub_1BD0DE4F4(&qword_1EBD51E00, &qword_1EBD51DF8);
  sub_1BE050CC4();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1BD73EA4C(uint64_t a1, uint64_t a2)
{
  sub_1BD6CABD4(a1);
  v11 = v3;
  swift_getKeyPath();
  v4 = swift_allocObject();
  v5 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v5;
  *(v4 + 112) = *(a2 + 96);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  v7 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1BD740748;
  *(v8 + 24) = v4;
  sub_1BD73FF48(a2, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51E28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51E20);
  sub_1BD0DE4F4(&qword_1EBD51E30, &qword_1EBD51E28);
  sub_1BD0DE4F4(&qword_1EBD51E18, &qword_1EBD51E20);
  return sub_1BE0519C4();
}

uint64_t sub_1BD73EBF4@<X0>(uint64_t *a1@<X8>)
{
  _s31SpendingSummaryDetailsViewModelVMa(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v3 = sub_1BD7407B8(&qword_1EBD52550, MEMORY[0x1E6969530]);
  result = MEMORY[0x1BFB3FC10](v2, v3);
  *a1 = result;
  return result;
}

uint64_t sub_1BD73EC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_1BE04F7B4();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51E38);
  return sub_1BD73ECF8(a2, a3, a1, a4 + *(v8 + 44));
}

uint64_t sub_1BD73ECF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v51 = a4;
  v6 = _s31SpendingSummaryDetailsViewModelVMa(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6, v10);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51E40) - 8;
  MEMORY[0x1EEE9AC00](v49, v11);
  v50 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v45 - v15;
  v46 = a1;
  sub_1BD740974(a1, &v45 - v15, _s31SpendingSummaryDetailsViewModelVMa);
  type metadata accessor for NavigationController();
  sub_1BD7407B8(&qword_1EBD38DA8, type metadata accessor for NavigationController);
  v17 = sub_1BE04EEC4();
  v19 = v18;
  v20 = _s17SummaryDetailViewVMa(0);
  v21 = &v16[*(v20 + 24)];
  *v21 = v17;
  v21[1] = v19;
  v22 = &v16[*(v20 + 28)];
  v54 = 0;
  sub_1BE051694();
  v23 = v53;
  *v22 = v52[0];
  *(v22 + 1) = v23;
  v47 = *(v7 + 36);
  sub_1BD740974(a1, &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), _s31SpendingSummaryDetailsViewModelVMa);
  v24 = *(v8 + 80);
  v25 = (v24 + 16) & ~v24;
  v26 = (v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_1BD740800(&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v25);
  v28 = v27 + v26;
  v29 = *(a2 + 80);
  *(v28 + 64) = *(a2 + 64);
  *(v28 + 80) = v29;
  *(v28 + 96) = *(a2 + 96);
  v30 = *(a2 + 16);
  *v28 = *a2;
  *(v28 + 16) = v30;
  v31 = *(a2 + 48);
  *(v28 + 32) = *(a2 + 32);
  *(v28 + 48) = v31;
  *(v27 + ((v26 + 111) & 0xFFFFFFFFFFFFFFF8)) = v48;
  v32 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51E48) + 36)];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51E50);
  sub_1BD73FF48(a2, v52);
  sub_1BE0528B4();
  v34 = *(v33 + 40);
  v35 = v46;
  sub_1BD740974(v46 + v47, &v32[v34], _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
  *v32 = &unk_1BE0F4770;
  *(v32 + 1) = v27;
  *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51E58) + 36)] = 256;
  sub_1BD740974(v35, &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), _s31SpendingSummaryDetailsViewModelVMa);
  v36 = swift_allocObject();
  v37 = *(a2 + 80);
  *(v36 + 80) = *(a2 + 64);
  *(v36 + 96) = v37;
  *(v36 + 112) = *(a2 + 96);
  v38 = *(a2 + 16);
  *(v36 + 16) = *a2;
  *(v36 + 32) = v38;
  v39 = *(a2 + 48);
  *(v36 + 48) = *(a2 + 32);
  *(v36 + 64) = v39;
  sub_1BD740800(&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + ((v24 + 120) & ~v24));
  v40 = v50;
  v41 = &v16[*(v49 + 44)];
  *v41 = sub_1BD740D58;
  *(v41 + 1) = 0;
  *(v41 + 2) = sub_1BD7409DC;
  *(v41 + 3) = v36;
  sub_1BD0DE19C(v16, v40, &qword_1EBD51E40);
  v42 = v51;
  sub_1BD0DE19C(v40, v51, &qword_1EBD51E40);
  v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51E60) + 48);
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_1BD73FF48(a2, v52);
  sub_1BD0DE53C(v16, &qword_1EBD51E40);
  return sub_1BD0DE53C(v40, &qword_1EBD51E40);
}

uint64_t sub_1BD73F148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa(0);
  v3[8] = swift_task_alloc();
  sub_1BE0528A4();
  v3[9] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[10] = v5;
  v3[11] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD73F210, v5, v4);
}

uint64_t sub_1BD73F210()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = _s31SpendingSummaryDetailsViewModelVMa(0);
  sub_1BD740974(v2 + *(v3 + 28), v1, _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
  v4 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v5 = (*(*(v4 - 8) + 48))(v1, 1, v4);
  v6 = *(v0 + 64);
  if (v5 == 1)
  {
    v7 = *(v0 + 48);
    sub_1BD740A50(*(v0 + 64), _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
    *(v0 + 16) = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D30);
    sub_1BE0516A4();
    *(v0 + 96) = *(v0 + 32);
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    *v8 = v0;
    v8[1] = sub_1BD73F3CC;
    v9 = *(v0 + 56);

    return sub_1BD294854(v9);
  }

  else
  {

    sub_1BD740A50(v6, _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1BD73F3CC()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1BD73F510, v3, v2);
}

uint64_t sub_1BD73F510()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD73F578(double *a1, uint64_t a2)
{
  v3 = *a1;
  _s31SpendingSummaryDetailsViewModelVMa(0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v5 = sub_1BD7407B8(&qword_1EBD52550, MEMORY[0x1E6969530]);
  v6 = MEMORY[0x1BFB3FC10](v4, v5);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v12 = v8;
  v13 = v7;
  v11[2] = v7;
  v11[3] = v8;
  sub_1BD0DE19C(&v13, v11, &qword_1EBD51CE8);
  sub_1BD0DE19C(&v12, v11, &qword_1EBD51E68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DE0);
  sub_1BE0516A4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[0] = v11[4];
  sub_1BD1DBF6C(v6, isUniquelyReferenced_nonNull_native, v3);
  v11[0] = v7;
  v11[1] = v8;
  sub_1BE0516B4();
  sub_1BD0DE53C(&v13, &qword_1EBD51CE8);
  return sub_1BD0DE53C(&v12, &qword_1EBD51E68);
}

uint64_t sub_1BD73F794()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D60);
  sub_1BD0DE4F4(&qword_1EBD51DC8, &qword_1EBD51D60);
  sub_1BD740598();
  return sub_1BE050D84();
}

uint64_t sub_1BD73F898()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0);
  sub_1BE0516A4();
  if (v4 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D30);
    sub_1BE0516A4();
    swift_getKeyPath();
    sub_1BD7407B8(&qword_1EBD402C0, _s9ViewModelCMa_0);
    sub_1BE04B594();

    v0 = *(v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedSpendingSummaryID);
    v1 = *(v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedSpendingSummaryID + 8);

    if (v1)
    {
      return result;
    }
  }

  else
  {
    v0 = v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DE0);
  sub_1BE0516A4();
  if (*(v3 + 16))
  {
    sub_1BD149084(v0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D40);
  sub_1BE0516A4();
  return sub_1BE0516B4();
}

unint64_t sub_1BD73FB5C()
{
  result = qword_1EBD51CC8;
  if (!qword_1EBD51CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CC0);
    sub_1BD73FBE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51CC8);
  }

  return result;
}

unint64_t sub_1BD73FBE0()
{
  result = qword_1EBD51CD0;
  if (!qword_1EBD51CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28);
    sub_1BD73FD5C();
    sub_1BD73FE40();
    swift_getOpaqueTypeConformance2();
    sub_1BD73FEBC();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51CD0);
  }

  return result;
}

unint64_t sub_1BD73FD5C()
{
  result = qword_1EBD51CF8;
  if (!qword_1EBD51CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CF0);
    sub_1BD0DE4F4(&qword_1EBD51D00, &qword_1EBD51D08);
    sub_1BD0DE4F4(&qword_1EBD4B618, &qword_1EBD4B620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51CF8);
  }

  return result;
}

unint64_t sub_1BD73FE40()
{
  result = qword_1EBD40CC8;
  if (!qword_1EBD40CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40CC8);
  }

  return result;
}

unint64_t sub_1BD73FEBC()
{
  result = qword_1EBD51D10;
  if (!qword_1EBD51D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CE8);
    sub_1BD0F9764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51D10);
  }

  return result;
}

uint64_t sub_1BD73FF80()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD126968;

  return sub_1BD73D2B0(v2, v3, v0 + 32);
}

unint64_t sub_1BD74002C()
{
  result = qword_1EBD51D38;
  if (!qword_1EBD51D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37288);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51D18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CC0);
    sub_1BD73FB5C();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51D20);
    sub_1BD0DE4F4(&qword_1EBD51D28, &qword_1EBD51D20);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51D38);
  }

  return result;
}

uint64_t objectdestroyTm_85()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD74028C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 137);
  v7 = *(v1 + 136);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD126968;

  return sub_1BD73D6F8(a1, v4, v5, v1 + 32, v7, v6);
}

unint64_t sub_1BD740364()
{
  result = qword_1EBD51D88;
  if (!qword_1EBD51D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51D80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51D90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51D98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51DA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51DA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51DB0);
    sub_1BE050114();
    sub_1BD0DE4F4(&qword_1EBD51DB8, &qword_1EBD51DB0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51D88);
  }

  return result;
}

unint64_t sub_1BD740598()
{
  result = qword_1EBD51DD0;
  if (!qword_1EBD51DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51DD0);
  }

  return result;
}

unint64_t sub_1BD740630()
{
  result = qword_1EBD51E10;
  if (!qword_1EBD51E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51E08);
    sub_1BD0DE4F4(&qword_1EBD51E18, &qword_1EBD51E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51E10);
  }

  return result;
}

uint64_t objectdestroy_6Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD740750(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50180);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_1BD7407B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD740800(uint64_t a1, uint64_t a2)
{
  v4 = _s31SpendingSummaryDetailsViewModelVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD740864()
{
  v2 = *(_s31SpendingSummaryDetailsViewModelVMa(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + ((v4 + 111) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD0F985C;

  return sub_1BD73F148(v0 + v3, v0 + v4, v5);
}

uint64_t sub_1BD740974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD7409DC(double *a1)
{
  _s31SpendingSummaryDetailsViewModelVMa(0);

  return sub_1BD73F578(a1, v1 + 16);
}

uint64_t sub_1BD740A50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD740AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = sub_1BE04B2F4();
  v4 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0;
  v27 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28);
  sub_1BE051694();
  v23 = v30;
  v24 = v28;
  v33 = v29;
  v26 = sub_1BD1AE284(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51CE8);
  sub_1BE051694();
  v21 = v29;
  v22 = v28;
  v26 = 0;
  v27 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48058);
  sub_1BE051694();
  v20 = v28;
  v8 = v30;
  v32 = v29;
  v26 = 0;
  v27 = 1;
  sub_1BE051694();
  v9 = v28;
  v10 = v30;
  v31 = v29;
  sub_1BE048964();
  sub_1BE04B1E4();
  _s9ViewModelCMa_0(0);
  v11 = swift_allocObject();
  *(v11 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__isSetup) = 0;
  *(v11 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriod) = 0;
  v12 = v11 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedSpendingSummaryID;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v11 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriodSpendingSummaries) = 0;
  sub_1BE04B5C4();
  *(v11 + 16) = a1;
  (*(v4 + 32))(v11 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel_calendar, v7, v25);
  v26 = v11;
  result = sub_1BE051694();
  v14 = v29;
  v15 = v33;
  v16 = v32;
  v17 = v31;
  *a2 = v28;
  *(a2 + 8) = v14;
  v18 = v23;
  *(a2 + 16) = v24;
  *(a2 + 24) = v15;
  *(a2 + 32) = v18;
  v19 = v21;
  *(a2 + 40) = v22;
  *(a2 + 48) = v19;
  *(a2 + 56) = v20;
  *(a2 + 64) = v16;
  *(a2 + 72) = v8;
  *(a2 + 80) = v9;
  *(a2 + 88) = v17;
  *(a2 + 96) = v10;
  return result;
}

char *MaskedPANSuffixView.init(suffix:foregroundColor:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = OBJC_IVAR___PKMaskedPANSuffixView_fontSize;
  PKPaymentPassPANSuffixFontSize();
  *&v3[v7] = v8;
  *&v3[OBJC_IVAR___PKMaskedPANSuffixView_viewSpacing] = 0x4018000000000000;
  v9 = &v3[OBJC_IVAR___PKMaskedPANSuffixView_suffix];
  *v9 = a1;
  *(v9 + 1) = a2;
  *&v3[OBJC_IVAR___PKMaskedPANSuffixView_foregroundColor] = a3;
  sub_1BE048C84();
  v10 = a3;
  PKPassFrontFaceContentSize();
  v12 = v11;
  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v16 = OBJC_IVAR___PKMaskedPANSuffixView_maskedPANLabel;
  *&v3[OBJC_IVAR___PKMaskedPANSuffixView_maskedPANLabel] = v15;
  v17 = *&v3[v7];
  v18 = *MEMORY[0x1E69DB978];
  v19 = v15;
  v20 = PKDefaultSystemFontOfSizeAndWeight(v17, v18);
  [v19 setFont_];

  [*&v3[v16] setLineBreakMode_];
  [*&v3[v16] setNumberOfLines_];
  [*&v3[v16] setTextAlignment_];
  v21 = *&v3[v16];
  v22 = v10;
  [v21 setTextColor_];
  [*&v3[v16] setAdjustsFontForContentSizeCategory_];
  result = PKPANMask();
  if (result)
  {
    v24 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD430F8);
    inited = swift_initStackObject();
    v26 = *MEMORY[0x1E69DB660];
    *(inited + 32) = *MEMORY[0x1E69DB660];
    *(inited + 16) = xmmword_1BE0B69E0;
    *(inited + 64) = MEMORY[0x1E69E6530];
    *(inited + 40) = 1;
    v27 = v26;
    sub_1BD1ACD28(inited);
    swift_setDeallocating();
    sub_1BD3726C0(inited + 32);
    v28 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    type metadata accessor for Key(0);
    sub_1BD372728();
    v29 = sub_1BE052224();

    v30 = [v28 initWithString:v24 attributes:v29];

    [*&v3[v16] setAttributedText_];
    [*&v3[v16] sizeThatFits_];
    v31 = &v3[OBJC_IVAR___PKMaskedPANSuffixView_maskedSize];
    *v31 = v32;
    *(v31 + 1) = v33;
    v34 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v35 = OBJC_IVAR___PKMaskedPANSuffixView_suffixLabel;
    *&v3[OBJC_IVAR___PKMaskedPANSuffixView_suffixLabel] = v34;
    v36 = *&v3[v7];
    v37 = v34;
    v38 = PKDefaultSystemFontOfSizeAndWeight(v36, v18);
    [v37 setFont_];

    [*&v3[v35] setLineBreakMode_];
    [*&v3[v35] setNumberOfLines_];
    [*&v3[v35] setTextAlignment_];
    v39 = *&v3[v35];
    [v39 setTextColor_];

    v40 = *&v3[v35];
    v41 = sub_1BE052404();

    [v40 setText_];

    [*&v3[v35] setAdjustsFontForContentSizeCategory_];
    [*&v3[v35] sizeThatFits_];
    v42 = &v3[OBJC_IVAR___PKMaskedPANSuffixView_suffixSize];
    *v42 = v43;
    *(v42 + 1) = v44;
    v51.receiver = v3;
    v51.super_class = type metadata accessor for MaskedPANSuffixView();
    v45 = objc_msgSendSuper2(&v51, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v46 = *&v45[OBJC_IVAR___PKMaskedPANSuffixView_maskedPANLabel];
    v47 = v45;
    [v47 addSubview_];
    [v47 addSubview_];
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    v50 = v49 + *&v47[OBJC_IVAR___PKMaskedPANSuffixView_suffixSize] + 6.0;
    if (v48 <= *&v47[OBJC_IVAR___PKMaskedPANSuffixView_suffixSize + 8])
    {
      v48 = *&v47[OBJC_IVAR___PKMaskedPANSuffixView_suffixSize + 8];
    }

    [v47 setFrame_];

    return v47;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD74136C(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for MaskedPANSuffixView();
  objc_msgSendSuper2(&v6, sel_sizeThatFits_, a1, a2);
  [v2 bounds];
  PKContentAlignmentMake();
  return PKSizeAlignedInRect();
}

id sub_1BD741504(char a1)
{
  v3 = (v1 + OBJC_IVAR___PKMaskedPANSuffixView_maskedSize);
  PKContentAlignmentMake();
  result = PKSizeAlignedInRect();
  v8 = *(v1 + OBJC_IVAR___PKMaskedPANSuffixView_suffixSize);
  v7 = *(v1 + OBJC_IVAR___PKMaskedPANSuffixView_suffixSize + 8);
  if ((a1 & 1) == 0)
  {
    v9 = v5 + *v3 + 6.0;
    v10 = v6;
    [*(v1 + OBJC_IVAR___PKMaskedPANSuffixView_maskedPANLabel) setFrame_];
    return [*(v1 + OBJC_IVAR___PKMaskedPANSuffixView_suffixLabel) setFrame_];
  }

  return result;
}

id MaskedPANSuffixView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MaskedPANSuffixView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MaskedPANSuffixView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_1BD7417CC@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BE04CDA4();
  sub_1BD751B3C(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  *(a3 + 32) = sub_1BE04EEC4();
  *(a3 + 40) = v6;
  v16[0] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EB8);
  sub_1BE051694();
  v7 = *(&v17[0] + 1);
  *(a3 + 96) = v17[0];
  *(a3 + 104) = v7;
  *(a3 + 112) = sub_1BD2522E4;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_1BD0DE19C(v17, v16, &qword_1EBD51EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0);
  sub_1BE051694();
  sub_1BD0DE53C(v17, &qword_1EBD51EC0);
  *(a3 + 184) = sub_1BD24B1AC;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  *(a3 + 208) = swift_getKeyPath();
  *(a3 + 216) = 0;
  *(a3 + 224) = swift_getKeyPath();
  *(a3 + 232) = 0;
  *(a3 + 240) = sub_1BD7496DC;
  *(a3 + 248) = 0;
  *(a3 + 256) = 0;
  *(a3 + 264) = 0x65746E6F43706D61;
  *(a3 + 272) = 0xEA0000000000746ELL;
  v16[0] = 0;
  sub_1BE051694();
  v8 = *(&v17[0] + 1);
  *(a3 + 280) = v17[0];
  *(a3 + 288) = v8;
  *(a3 + 48) = a1;
  type metadata accessor for AMPAuthorizationModel();
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = a1;
  sub_1BE04D8B4();

  sub_1BD751B3C(&qword_1EBD36168, type metadata accessor for AMPAuthorizationModel);
  *a3 = sub_1BE04E954();
  *(a3 + 8) = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  type metadata accessor for AuthenticatorModel();
  sub_1BD751B3C(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  v11 = sub_1BE04E954();
  v13 = v12;

  *(a3 + 16) = v11;
  *(a3 + 24) = v13;
  result = *a2;
  v15 = *(a2 + 16);
  *(a3 + 56) = *a2;
  *(a3 + 72) = v15;
  *(a3 + 88) = *(a2 + 32);
  return result;
}

uint64_t sub_1BD741B2C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52060);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE28);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0BA770;
  v5 = v4 + v3;
  v6 = *(v1 + 48);
  v7 = *MEMORY[0x1E69BCA88];
  v8 = sub_1BE04C974();
  v9 = *(*(v8 - 8) + 104);
  v9(v5, v7, v8);
  *(v5 + v6) = 0;
  v10 = *(v1 + 48);
  v9(v5 + v2, *MEMORY[0x1E69BCA40], v8);
  *(v5 + v2 + v10) = 1;
  v11 = *(v1 + 48);
  v9(v5 + 2 * v2, *MEMORY[0x1E69BCA48], v8);
  *(v5 + 2 * v2 + v11) = 2;
  v12 = *(v1 + 48);
  v9(v5 + 3 * v2, *MEMORY[0x1E69BCA80], v8);
  *(v5 + 3 * v2 + v12) = 3;
  v13 = *(v1 + 48);
  v9(v5 + 4 * v2, *MEMORY[0x1E69BCA78], v8);
  *(v5 + 4 * v2 + v13) = 4;
  v14 = *(v1 + 48);
  v9(v5 + 5 * v2, *MEMORY[0x1E69BCA38], v8);
  *(v5 + 5 * v2 + v14) = 5;
  v15 = *(v1 + 48);
  v9(v5 + 6 * v2, *MEMORY[0x1E69BCA50], v8);
  *(v5 + 6 * v2 + v15) = 6;
  v16 = *(v1 + 48);
  v9(v5 + 7 * v2, *MEMORY[0x1E69BCA60], v8);
  *(v5 + 7 * v2 + v16) = 7;
  v17 = *(v1 + 48);
  v9(v5 + 8 * v2, *MEMORY[0x1E69BCA70], v8);
  *(v5 + 8 * v2 + v17) = 8;
  v18 = *(v1 + 48);
  v9(v5 + 9 * v2, *MEMORY[0x1E69BCA58], v8);
  *(v5 + 9 * v2 + v18) = 9;
  v19 = *(v1 + 48);
  v9(v5 + 10 * v2, *MEMORY[0x1E69BCA30], v8);
  *(v5 + 10 * v2 + v19) = 10;
  v20 = *(v1 + 48);
  v9(v5 + 11 * v2, *MEMORY[0x1E69BCA68], v8);
  *(v5 + 11 * v2 + v20) = 11;
  v21 = sub_1BD1AB490(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    if ([Strong respondsToSelector_])
    {
      if (*(v21 + 16) && (v24 = sub_1BD1490C0(a1), (v25 & 1) != 0))
      {
        v26 = *(*(v21 + 56) + 8 * v24);
      }

      else
      {
        v26 = 0;
      }

      [v23 didEncounterAuthorizationEvent_];
    }

    else
    {
    }

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1BD741FBC()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v7, v8, "suspendAuthenticatorEvaluation", v9, 2u);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v11 = sub_1BE04CA44();

  if (v11)
  {
    [*(v10 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) cancelEvaluationWithOptions_];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v13 = v16[0];
    sub_1BE04CA54();
    v14 = *(v13 + qword_1EBD55580);
    v15 = *(v13 + qword_1EBD55580 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    v16[0] = v14;
    v16[1] = v15;
    return sub_1BE04D8C4();
  }

  return result;
}

uint64_t sub_1BD74224C(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v7, v8, "resumeAuthenticatorEvaluation", v9, 2u);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  v10 = (*(v3 + 8))(v6, v2);
  return a1(v10);
}

id sub_1BD7423CC(uint64_t (*a1)(void))
{
  v41 = a1;
  v2 = v1;
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v40 - v10;
  sub_1BE04D084();
  v12 = sub_1BE04D204();
  v13 = sub_1BE052C54();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1BD026000, v12, v13, "Stop state machine", v14, 2u);
    MEMORY[0x1BFB45F20](v14, -1, -1);
  }

  v15 = *(v4 + 8);
  v16 = v15(v11, v3);
  v18 = MEMORY[0x1E69E7D40];
  v19 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xC0);
  if ((*(v2 + v19) & 1) == 0 && (*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xB0)) & 1) == 0)
  {
    sub_1BE04D1E4();
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C34();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BD026000, v20, v21, "Tried to stop a state machine that was already stopped.", v22, 2u);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    v16 = v15(v8, v3);
  }

  *(v2 + v19) = 0;
  *(v2 + *((*v18 & *v2) + 0xB0)) = 0;
  MEMORY[0x1EEE9AC00](v16, v17);
  v23 = v41(0);
  *(&v40 - 2) = v23;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v25);
  *(&v40 - 2) = v23;
  swift_getKeyPath();
  sub_1BE04D8B4();

  v26 = *(*&v43[0] + qword_1EBDAADC0);
  sub_1BE048964();

  *(v26 + 224) = 1;
  v27 = *(v26 + 192);
  v44 = *(v26 + 176);
  v45 = v27;
  v46 = *(v26 + 208);
  v28 = *(v26 + 128);
  v43[0] = *(v26 + 112);
  v43[1] = v28;
  v29 = *(v26 + 160);
  v43[2] = *(v26 + 144);
  v43[3] = v29;
  sub_1BD0DE19C(v43, v42, &unk_1EBD45E50);

  if (v44)
  {
    sub_1BD0DE53C(v43, &unk_1EBD45E50);
  }

  v30 = *(v2 + *((*v18 & *v2) + 0xD8));
  [v30 setCancelReason_];
  result = [*(v2 + *((*v18 & *v2) + 0xD0)) paymentRequest];
  if (result)
  {
    v32 = result;
    v33 = [result isPeerPaymentRequest];

    if (v33)
    {
      MEMORY[0x1BFB41980](*MEMORY[0x1E69BA158], 0);
    }

    v34 = *(v2 + *((*v18 & *v2) + 0x70));
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v35 = sub_1BE04CA44();

    if (v35)
    {
      [*(v34 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) cancelEvaluationWithOptions_];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v36 = v42[0];
      sub_1BE04CA54();
      v37 = *(v36 + qword_1EBD55580);
      v38 = *(v36 + qword_1EBD55580 + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      v42[0] = v37;
      v42[1] = v38;
      sub_1BE04D8C4();
    }

    [v30 didCancel];
    *(v34 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_delegate + 8) = 0;
    swift_unknownObjectWeakAssign();
    v39 = OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator;
    [*(v34 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) invalidate];
    return [*(v34 + v39) setDelegate_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD742A2C(uint64_t (*a1)(void))
{
  v3 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v27 - v11;
  v13 = MEMORY[0x1E69E7D40];
  if (*(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xB0)) == 1)
  {
    sub_1BE04D1E4();
    v14 = sub_1BE04D204();
    v15 = sub_1BE052C34();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1BD026000, v14, v15, "Attempted to pause state machine while it's waiting for app protection unlock to start. Removing hold to resume on start", v16, 2u);
      MEMORY[0x1BFB45F20](v16, -1, -1);
    }

    result = (*(v5 + 8))(v12, v4);
    v18 = *((*v13 & *v3) + 0xB8);
    if (*(v3 + v18) == 1)
    {
      *(v3 + v18) = 0;
    }
  }

  else
  {
    sub_1BE04D084();
    v19 = sub_1BE04D204();
    v20 = sub_1BE052C54();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1BD026000, v19, v20, "Pause state machine", v21, 2u);
      MEMORY[0x1BFB45F20](v21, -1, -1);
    }

    v22 = (*(v5 + 8))(v9, v4);
    MEMORY[0x1EEE9AC00](v22, v23);
    v24 = a1(0);
    *(&v27 - 2) = v24;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v26);
    *(&v27 - 2) = v24;
    swift_getKeyPath();
    sub_1BE04D8B4();

    sub_1BE04CAA4();

    sub_1BD741FBC();
    return [*(v3 + *((*v13 & *v3) + 0xD8)) didResignActive_];
  }

  return result;
}

id sub_1BD742DF8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v5 = v2;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v28 - v13;
  v15 = MEMORY[0x1E69E7D40];
  if (*(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0xB0)) == 1)
  {
    sub_1BE04D1E4();
    v16 = sub_1BE04D204();
    v17 = sub_1BE052C34();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1BD026000, v16, v17, "Attempted to resume state machine while it's waiting for app protection unlock start. Holding until start has been called", v18, 2u);
      MEMORY[0x1BFB45F20](v18, -1, -1);
    }

    result = (*(v7 + 8))(v14, v6);
    *(v5 + *((*v15 & *v5) + 0xB8)) = 1;
  }

  else
  {
    sub_1BE04D084();
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C54();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BD026000, v20, v21, "Resume state machine", v22, 2u);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    v23 = (*(v7 + 8))(v11, v6);
    MEMORY[0x1EEE9AC00](v23, v24);
    v25 = a1(0);
    *(&v28 - 2) = v25;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v27);
    *(&v28 - 2) = v25;
    swift_getKeyPath();
    sub_1BE04D8B4();

    sub_1BE04CAA4();

    sub_1BD74224C(a2);
    return [*(v5 + *((*v15 & *v5) + 0xD8)) didBecomeActive_];
  }

  return result;
}

id sub_1BD743180(char a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  result = [*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0)) paymentRequest];
  if (result)
  {
    v6 = result;
    v7 = [result isPeerPaymentRequest];

    if (v7)
    {
      MEMORY[0x1BFB41980](*MEMORY[0x1E69BA158], 0);
    }

    v8 = *(v2 + *((*v4 & *v2) + 0x70));
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v9 = sub_1BE04CA44();

    if (v9)
    {
      [*(v8 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) cancelEvaluationWithOptions_];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      sub_1BE04CA54();
      v10 = *(v12 + qword_1EBD55580);
      v11 = *(v12 + qword_1EBD55580 + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      v12 = v10;
      v13 = v11;
      sub_1BE04D8C4();
    }

    result = [*(v2 + *((*v4 & *v2) + 0xD8)) didCancel];
    if (a1)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        [result authorizationDidFinishWithError_];
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD7433DC(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v50 = a3;
  v51 = a5;
  v49 = a4;
  v8 = v6;
  v11 = sub_1BE04D214();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69E7D40];
  v48 = a1;
  v52 = a6;
  if (a1)
  {
    goto LABEL_5;
  }

  v47 = v14;
  v18 = *(v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0xD0));
  result = [v18 paymentRequest];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = result;
  v21 = [result requestType];

  if (v21 == 13)
  {
    v17 = MEMORY[0x1E69E7D40];
LABEL_5:
    result = [*(v8 + *((*v17 & *v8) + 0x60) + 32) paymentRequest];
    if (result)
    {
      v22 = result;
      sub_1BD0E5E8C(0, &unk_1EBD35E80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B6CA0;
      v24 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      v25 = sub_1BE052434();
      v26 = MEMORY[0x1E69BABE8];
      *(inited + 40) = v25;
      *(inited + 48) = v27;
      v28 = *v26;
      *(inited + 56) = *v26;
      *(inited + 64) = sub_1BE052434();
      *(inited + 72) = v29;
      v30 = v24;
      v31 = v28;
      v32 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      swift_arrayDestroy();
      sub_1BD6B14D4(v32, v22);

      MEMORY[0x1EEE9AC00](v33, v34);
      v35 = v50(0);
      *(&v46 - 2) = v35;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v37);
      *(&v46 - 2) = v35;
      swift_getKeyPath();
      sub_1BE04D8B4();

      sub_1BD6B261C(v53);

      if (a2)
      {
        v38 = a2;
      }

      else
      {
        v38 = sub_1BD743890(v48, 0, v49);
      }

      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = a2;
      sub_1BE048964();
      sub_1BD7F2940(v38, v52, v39);
    }

    __break(1u);
    goto LABEL_17;
  }

  result = [v18 paymentRequest];
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v41 = result;
  v42 = [result disablePasscodeFallback];

  v17 = MEMORY[0x1E69E7D40];
  if (v42)
  {
    goto LABEL_5;
  }

  sub_1BE04D084();
  v43 = sub_1BE04D204();
  v44 = sub_1BE052C34();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1BD026000, v43, v44, "Cannot evaluate policy, cancelling", v45, 2u);
    MEMORY[0x1BFB45F20](v45, -1, -1);
  }

  (*(v12 + 8))(v16, v47);
  return sub_1BD743180(1);
}

uint64_t sub_1BD743890(uint64_t a1, int a2, uint64_t (*a3)(void))
{
  v5 = v3;
  v84 = a2;
  v83 = a1;
  v6 = sub_1BE04BD74();
  v89 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v80 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  v86 = &v80 - v16;
  v87 = sub_1BE04D214();
  v17 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v18);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a3(0);
  v91 = v21;
  swift_getKeyPath();
  v90 = v21;
  swift_getKeyPath();
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v22 = v92[0];
  v23 = objc_allocWithZone(MEMORY[0x1E69BC748]);
  v85 = v22;
  v24 = [v23 initWithPolicy_];
  if (!v24)
  {
    goto LABEL_48;
  }

  v26 = v24;
  v81 = v10;
  v82 = v14;
  v88 = v6;
  MEMORY[0x1EEE9AC00](v24, v25);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v28);
  swift_getKeyPath();
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v29 = PKAuthenticatorPolicyDescription_0(v92[0]);
  if (!v29)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v30 = v29;
  v31 = sub_1BE052434();
  v33 = v32;

  v92[0] = v31;
  v92[1] = v33;
  v34 = sub_1BE052644();
  v36 = v35;
  sub_1BE04D084();
  sub_1BE048C84();
  v37 = sub_1BE04D204();
  v38 = sub_1BE052C54();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v92[0] = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_1BD123690(v34, v36, v92);
    _os_log_impl(&dword_1BD026000, v37, v38, "New authenticator policy is %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x1BFB45F20](v40, -1, -1);
    MEMORY[0x1BFB45F20](v39, -1, -1);
  }

  (*(v17 + 8))(v20, v87);
  v41 = *(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0xD0));
  v42 = [v41 paymentRequest];
  v43 = v88;
  if (!v42)
  {
    goto LABEL_43;
  }

  v44 = v42;
  v45 = v89;
  if ((v84 & 1) == 0)
  {
    [v26 setInitialAuthenticatorState_];
  }

  if (([v44 _isAMPPayment] & 1) != 0 || objc_msgSend(v44, sel_requestType) == 7 || objc_msgSend(v44, sel_requestType) == 13)
  {
    v46 = [v44 externalizedContext];
    if (v46)
    {
      v47 = v46;
      v48 = sub_1BE04AAC4();
      v50 = v49;

      v51 = sub_1BE04AAB4();
      sub_1BD1245AC(v48, v50);
    }

    else
    {
      v51 = 0;
    }

    [v26 setExternalizedContext_];

    v52 = [v44 accesssControlRef];
    v53 = &selRef_setAccessControlRef_;
LABEL_15:
    [v26 *v53];

    goto LABEL_16;
  }

  if ([v44 requestType] == 6)
  {
    v75 = [v44 externalizedContext];
    if (v75)
    {
      v76 = v75;
      v77 = sub_1BE04AAC4();
      v79 = v78;

      v52 = sub_1BE04AAB4();
      sub_1BD1245AC(v77, v79);
    }

    else
    {
      v52 = 0;
    }

    v53 = &selRef_setExternalizedContext_;
    goto LABEL_15;
  }

LABEL_16:
  if ([v44 _isAMPPayment])
  {
    [v26 setMaxBiometryFailures_];
  }

  v54 = v86;
  if (v85 == 6 || v85 == 3)
  {
    (*(v45 + 104))(v86, *MEMORY[0x1E69B8068], v43);
    v55 = PKPassKitBundle();
    if (v55)
    {
      v56 = v55;
      sub_1BE04B6F4();

      (*(v45 + 8))(v54, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1BE0B69E0;
      v58 = [v41 pass];
      if (v58)
      {
        v59 = v58;

        v60 = [v59 localizedDescription];

        v61 = sub_1BE052434();
        v63 = v62;

        *(v57 + 56) = MEMORY[0x1E69E6158];
        *(v57 + 64) = sub_1BD110550();
        *(v57 + 32) = v61;
        *(v57 + 40) = v63;
        sub_1BE052454();

        v64 = sub_1BE052404();

        [v26 setPINTitle_];

        v65 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        [v26 setPINLength_];

        goto LABEL_24;
      }

LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      result = sub_1BE053994();
      __break(1u);
      return result;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_24:
  v66 = [v44 localizedConfirmationTitle];
  if (v66)
  {
    v67 = v66;
LABEL_33:
    [v26 setPasscodeTitle_];

    goto LABEL_34;
  }

  if ([v44 confirmationStyle] == 1)
  {
    v68 = v89;
    v69 = v82;
    (*(v89 + 104))(v82, *MEMORY[0x1E69B8068], v43);
    v70 = PKPassKitBundle();
    if (v70)
    {
      v71 = v70;
LABEL_32:
      sub_1BE04B6F4();

      (*(v68 + 8))(v69, v43);
      v67 = sub_1BE052404();

      goto LABEL_33;
    }

    goto LABEL_46;
  }

  v72 = [v44 confirmationStyle];
  v68 = v89;
  if (v72 == 3)
  {
    v69 = v81;
    (*(v89 + 104))(v81, *MEMORY[0x1E69B8068], v43);
    v73 = PKPassKitBundle();
    if (v73)
    {
      v71 = v73;
      goto LABEL_32;
    }

    goto LABEL_47;
  }

LABEL_34:
  if ([v44 useLocationBasedAuthorization])
  {
    [v26 setUseLocationBasedAuthorization_];
  }

  return v26;
}

void sub_1BD7442F4(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t (*a7)(void), uint64_t a8)
{
  v178 = a8;
  v179 = a5;
  v186 = a7;
  v187 = a6;
  v180 = a4;
  v189 = a3;
  v9 = sub_1BE04C974();
  v190 = *(v9 - 8);
  v191 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v185 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v188 = &v177 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E40);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v183 = (&v177 - v17);
  v184 = sub_1BE04C7B4();
  v182 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184, v18);
  v181 = (&v177 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_1BE04D214();
  v21 = *(v20 - 8);
  v193 = v20;
  v194 = v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v177 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v29 = &v177 - v28;
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v33 = &v177 - v32;
  v35 = MEMORY[0x1EEE9AC00](v31, v34);
  v37 = &v177 - v36;
  v39 = MEMORY[0x1EEE9AC00](v35, v38);
  v41 = &v177 - v40;
  MEMORY[0x1EEE9AC00](v39, v42);
  v44 = &v177 - v43;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v46 = Strong;
  v177 = v33;
  v47 = [a2 result];
  v48 = *((*MEMORY[0x1E69E7D40] & *v46) + 0x60);
  v192 = v46;
  v49 = [*&v46[v48 + 32] paymentRequest];
  if (!v49)
  {
    __break(1u);
    goto LABEL_76;
  }

  v50 = v49;
  sub_1BD6B99C4(v47, v49);

  v51 = [a2 result];
  v52 = a2;
  if (v51 <= 3)
  {
    v53 = v192;
    if (v51 <= 1)
    {
      if (v51)
      {
        if (v51 == 1)
        {
          sub_1BE04D084();
          v54 = sub_1BE04D204();
          v55 = sub_1BE052C54();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            *v56 = 0;
            _os_log_impl(&dword_1BD026000, v54, v55, "Authentication canceled by user", v56, 2u);
            MEMORY[0x1BFB45F20](v56, -1, -1);
          }

          (*(v194 + 8))(v44, v193);
          v57 = [*(v53 + *((*MEMORY[0x1E69E7D40] & *v53) + 0xD8)) didResolveError];
          MEMORY[0x1EEE9AC00](v57, v58);
          v59 = v189(0);
          *(&v177 - 2) = v59;
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath, v61);
          *(&v177 - 2) = v59;
          swift_getKeyPath();
          sub_1BE04D8B4();

          sub_1BE04CB64();

          return;
        }

LABEL_20:

        return;
      }

      v87 = *((*MEMORY[0x1E69E7D40] & *v192) + 0xD8);
      if ([*&v192[v87] state] == 5)
      {
        v88 = [a2 biometricMatch];
        if (v88)
        {
          MEMORY[0x1EEE9AC00](v88, v89);
          v90 = v189(0);
          *(&v177 - 2) = v90;
          v91 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v91, v92);
          *(&v177 - 2) = v90;
          swift_getKeyPath();
          sub_1BE04D8B4();

          sub_1BE048964();

          sub_1BDA75178(8, 17, 0, 0);
        }

        IsAvailable = PKPearlIsAvailable();
        if ((IsAvailable & 1) == 0)
        {
          IsAvailable = PKOpticIDIsAvailable();
          if ((IsAvailable & 1) == 0)
          {
            v95 = [*(v53 + v87) beginDelayingAuthorizedState];
            MEMORY[0x1EEE9AC00](v95, v96);
            v97 = v189(0);
            *(&v177 - 2) = v97;
            v98 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v98, v99);
            *(&v177 - 2) = v97;
            swift_getKeyPath();
            sub_1BE04D8B4();

            sub_1BE048964();

            v100 = swift_allocObject();
            swift_unknownObjectWeakInit();
            sub_1BE048964();
            sub_1BDA75178(11, 17, v179, v100);

            if (0.5 - CFAbsoluteTimeGetCurrent() > 0.0)
            {
              IsAvailable = [*(v53 + v87) delayAuthorizedStateByDuration_];
            }
          }
        }

        MEMORY[0x1EEE9AC00](IsAvailable, v94);
        v101 = v189(0);
        *(&v177 - 2) = v101;
        v102 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v102, v103);
        *(&v177 - 2) = v101;
        swift_getKeyPath();
        sub_1BE04D8B4();

        v105 = v181;
        v104 = v182;
        v106 = v184;
        (*(v182 + 104))(v181, *MEMORY[0x1E69BC988], v184);
        v107 = sub_1BE051F44();
        v108 = v183;
        (*(*(v107 - 8) + 56))(v183, 1, 1, v107);
        sub_1BD83C0A8(v105, 0, 0, v108);

        sub_1BD0DE53C(v108, &unk_1EBD45E40);
        (*(v104 + 8))(v105, v106);
        v109 = swift_unknownObjectWeakLoadStrong();
        if (v109)
        {
          [v109 authorizationWillStart];
          swift_unknownObjectRelease();
        }

        v110 = *(v53 + v87);
        v111 = [v52 credential];
        if (v111)
        {
          v112 = v111;
          v113 = sub_1BE04AAC4();
          v115 = v114;

          v116 = sub_1BE04AAB4();
          sub_1BD1245AC(v113, v115);
        }

        else
        {
          v116 = 0;
        }

        [v110 didAuthenticateWithCredential_];

        swift_unknownObjectRelease();
        return;
      }

      v141 = v177;
      sub_1BE04D084();
      v142 = sub_1BE04D204();
      v143 = sub_1BE052C54();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        *v144 = 0;
        _os_log_impl(&dword_1BD026000, v142, v143, "Authentication successful but in wrong state - discarding credential", v144, 2u);
        MEMORY[0x1BFB45F20](v144, -1, -1);
      }

      else
      {
      }

      v145 = *(v194 + 8);
      v146 = v141;
      goto LABEL_57;
    }

    if (v51 == 2)
    {
      sub_1BE04D084();
      v117 = sub_1BE04D204();
      v118 = sub_1BE052C54();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        *v119 = 0;
        _os_log_impl(&dword_1BD026000, v117, v118, "Authentication canceled by app", v119, 2u);
        MEMORY[0x1BFB45F20](v119, -1, -1);
      }

      else
      {
      }

      v145 = *(v194 + 8);
      v146 = v41;
LABEL_57:
      v157 = v193;
LABEL_73:
      v145(v146, v157);
      return;
    }

    v62 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
LABEL_13:
    sub_1BE04D084();
    v63 = sub_1BE04D204();
    v64 = sub_1BE052C54();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1BD026000, v63, v64, "Authentication canceled by biometry or selected fallback", v65, 2u);
      MEMORY[0x1BFB45F20](v65, -1, -1);
    }

    (*(v194 + 8))(v29, v193);
    v66 = MEMORY[0x1E69E7D40];
    v67 = *((*MEMORY[0x1E69E7D40] & *v53) + 0xD0);
    v68 = [*(v53 + v67) v62[60]];
    v69 = v188;
    if (v68)
    {
      v70 = v68;
      v71 = [v68 requestType];
      v73 = v190;
      v72 = v191;
      if (v71 == 13)
      {
        [*(v53 + *((*v66 & *v53) + 0xD8)) didResolveError];
      }

      else if ([v70 _isAMPPayment])
      {
        sub_1BD7472D8(v186);
      }

      (*(v73 + 104))(v69, *MEMORY[0x1E69BCA48], v72);
      v138 = [*(v53 + v67) v62[60]];
      if (v138)
      {
        v139 = v138;
        v140 = [v138 _isAMPPayment];

        if (v140)
        {
          v187(v69);
        }

        (*(v73 + 8))(v69, v72);
        return;
      }

      goto LABEL_77;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v53 = v192;
  if ((v51 - 4) >= 2)
  {
    if (v51 != 6)
    {
      v62 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
      if (v51 != 7)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    sub_1BE04D084();
    v120 = sub_1BE04D204();
    v121 = sub_1BE052C54();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&dword_1BD026000, v120, v121, "Triggered biolockout", v122, 2u);
      MEMORY[0x1BFB45F20](v122, -1, -1);
    }

    (*(v194 + 8))(v37, v193);
    v123 = MEMORY[0x1E69E7D40];
    v124 = *((*MEMORY[0x1E69E7D40] & *v53) + 0xD0);
    v125 = [*(v53 + v124) paymentRequest];
    if (!v125)
    {
      goto LABEL_78;
    }

    v126 = v125;
    if ([v125 _isPVKRequest])
    {
      v127 = v192;
      v128 = *(v127 + *((*v123 & *v127) + 0xD8));
      v129 = *MEMORY[0x1E69BBBC8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B69E0;
      *(inited + 32) = 0xD000000000000015;
      *(inited + 40) = 0x80000001BE128F00;
      v131 = v128;
      v132 = v129;
      v133 = [v52 result];
      *(inited + 72) = MEMORY[0x1E69E6530];
      *(inited + 48) = v133;
      sub_1BD1AACF8(inited);
      swift_setDeallocating();
      sub_1BD0DE53C(inited + 32, &qword_1EBD52080);
      v134 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v135 = sub_1BE052224();

      v136 = [v134 initWithDomain:v132 code:-1 userInfo:v135];

      v137 = sub_1BE04A844();
      [v131 didEncounterFatalError_];

      return;
    }

    v148 = &selRef__endReportingIfNecessary;
    if ([v126 requestType] == 13)
    {
      MEMORY[0x1EEE9AC00](13, v147);
      v149 = v189(0);
      *(&v177 - 2) = v149;
      v150 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v150, v151);
      *(&v177 - 2) = v149;
      swift_getKeyPath();
      v152 = v192;
      sub_1BE04D8B4();

      v153 = *(v196 + qword_1EBDAADC0);
      sub_1BE048964();

      v154 = *(v153 + 61);

      if (v154)
      {
        sub_1BD747090(v180, v178);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v155, v156);
        *(&v177 - 2) = v149;
        v162 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v162, v163);
        *(&v177 - 2) = v149;
        swift_getKeyPath();
        sub_1BE04D8B4();

        sub_1BE04CA74();

        MEMORY[0x1EEE9AC00](v164, v165);
        *(&v177 - 2) = v149;
        v166 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v166, v167);
        *(&v177 - 2) = v149;
        swift_getKeyPath();
        sub_1BE04D8B4();

        v168 = v196;
        v169 = v196 + qword_1EBDAADA8;
        v196 = *(v196 + qword_1EBDAADA8);
        v197 = *(v169 + 16);
        v198 = *(v169 + 32);
        v170 = v196;
        v171 = v198;
        v199 = *(&v196 + 1);
        v200[0] = *(&v197 + 1);
        sub_1BE048964();
        v172 = v170;
        sub_1BD0DE19C(&v199, v195, &qword_1EBD3D490);
        sub_1BD0DE19C(v200, v195, &qword_1EBD40150);
        v173 = v171;
        sub_1BE048964();
        sub_1BDA74FEC(&v196, v168, 0, 0);

        sub_1BD0DE53C(&v199, &qword_1EBD3D490);
        sub_1BD0DE53C(v200, &qword_1EBD40150);

        v148 = &selRef__endReportingIfNecessary;
      }

      v159 = v185;
LABEL_69:
      (*(v190 + 104))(v159, *MEMORY[0x1E69BCA48], v191);
      v174 = [*&v152[v124] paymentRequest];
      if (v174)
      {
        v175 = v174;
        v176 = [v174 v148[454]];

        if (v176)
        {
          v187(v159);
        }

        v157 = v191;
        v145 = *(v190 + 8);
        v146 = v159;
        goto LABEL_73;
      }

      goto LABEL_79;
    }

    v158 = [*&v192[v124] paymentRequest];
    v159 = v185;
    if (!v158)
    {
LABEL_80:
      __break(1u);
      return;
    }

    v160 = v158;
    if ([v158 _isAMPPayment])
    {
      v152 = v192;
      v161 = [*&v192[v124] mode];

      if (v161 == 1)
      {
LABEL_68:
        sub_1BD7472D8(v186);
        goto LABEL_69;
      }
    }

    else
    {

      v152 = v192;
    }

    if (![v126 _isAMPPayment])
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  sub_1BE04D084();
  v74 = sub_1BE04D204();
  v75 = sub_1BE052C54();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_1BD026000, v74, v75, "Authentication pre-empted or failed", v76, 2u);
    MEMORY[0x1BFB45F20](v76, -1, -1);
  }

  (*(v194 + 8))(v25, v193);
  v77 = *(v53 + *((*MEMORY[0x1E69E7D40] & *v53) + 0xD8));
  v78 = *MEMORY[0x1E69BBBC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30);
  v79 = swift_initStackObject();
  *(v79 + 16) = xmmword_1BE0B69E0;
  *(v79 + 32) = 0xD000000000000015;
  *(v79 + 40) = 0x80000001BE128F00;
  v80 = v77;
  v81 = v78;
  v82 = [v52 result];
  *(v79 + 72) = MEMORY[0x1E69E6530];
  *(v79 + 48) = v82;
  sub_1BD1AACF8(v79);
  swift_setDeallocating();
  sub_1BD0DE53C(v79 + 32, &qword_1EBD52080);
  v83 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v84 = sub_1BE052224();

  v85 = [v83 initWithDomain:v81 code:-1 userInfo:v84];

  v86 = sub_1BE04A844();
  [v80 didEncounterFatalError_];
}