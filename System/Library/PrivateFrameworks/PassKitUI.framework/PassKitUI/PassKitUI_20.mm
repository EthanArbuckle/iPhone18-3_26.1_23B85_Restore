uint64_t sub_1BD257B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F3B0);
  v108 = *(v3 - 8);
  v109 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v107 = &v93 - v5;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52030);
  MEMORY[0x1EEE9AC00](v102, v6);
  v101 = &v93 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A48);
  v105 = *(v8 - 8);
  v106 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v104 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v103 = &v93 - v13;
  v94 = type metadata accessor for PeerPaymentModel();
  v14 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v15);
  v93 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v93 - v19;
  v21 = _s11TotalAmountVMa(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = _s14PaymentSummaryVMa();
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for PaymentTotalAmountItem();
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F3B8);
  v99 = *(v33 - 8);
  v100 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v96 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v95 = &v93 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F3C0);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v112 = &v93 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42, v43);
  v111 = &v93 - v45;
  v97 = a1;
  v46 = *(a1 + 8) + qword_1EBDAAD68;
  [*(v46 + 32) fundingMode];
  [*(v46 + 32) fundingMode];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v98 = v24;
  sub_1BD25A3E0(v28, v24, _s11TotalAmountVMa);
  sub_1BD25A968(v28, _s14PaymentSummaryVMa);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v47 = v94;

  if ((*(v14 + 48))(v20, 1, v47))
  {
    sub_1BD0DE53C(v20, &qword_1EBD45480);
  }

  else
  {
    v48 = v93;
    sub_1BD25A3E0(v20, v93, type metadata accessor for PeerPaymentModel);
    sub_1BD0DE53C(v20, &qword_1EBD45480);
    v49 = (v48 + *(v47 + 24));
    v50 = v49[3];
    v123 = v49[2];
    v124 = v50;
    v51 = v49[5];
    v125 = v49[4];
    v126 = v51;
    v52 = v49[1];
    v121 = *v49;
    v122 = v52;
    sub_1BD0DE19C(&v121, v120, &unk_1EBD521D0);
    sub_1BD25A968(v48, type metadata accessor for PeerPaymentModel);
    if (v121 != 1)
    {
      v53 = *(&v126 + 1);
      v90 = *(&v126 + 1);
      sub_1BD0DE53C(&v121, &unk_1EBD521D0);
      if (!v53)
      {
        goto LABEL_5;
      }

      v91 = [v90 title];

      if (v91)
      {
        v53 = sub_1BE052434();
        v54 = v92;

        goto LABEL_6;
      }
    }
  }

  v53 = 0;
LABEL_5:
  v54 = 0;
LABEL_6:
  v55 = sub_1BD258594();
  v57 = v56;
  v58 = &v32[v29[6]];
  v59 = &v32[v29[7]];
  *&v120[0] = 0x7FEFFFFFFFFFFFFFLL;
  sub_1BE051694();
  v60 = *(&v121 + 1);
  *v59 = v121;
  *(v59 + 1) = v60;
  sub_1BD25AAFC(v98, v32, _s11TotalAmountVMa);
  v61 = &v32[v29[5]];
  *v61 = v53;
  v61[1] = v54;
  *v58 = v55;
  *(v58 + 1) = v57;
  LOBYTE(v55) = sub_1BE04CAE4();
  KeyPath = swift_getKeyPath();
  v63 = swift_allocObject();
  *(v63 + 16) = v55 & 1;
  v64 = v96;
  sub_1BD25A3E0(v32, v96, type metadata accessor for PaymentTotalAmountItem);
  v65 = v100;
  v66 = (v64 + *(v100 + 36));
  *v66 = KeyPath;
  v66[1] = sub_1BD185ABC;
  v66[2] = v63;
  sub_1BD25A968(v32, type metadata accessor for PaymentTotalAmountItem);
  v67 = v95;
  sub_1BD25A370(v64, v95);
  v68 = v111;
  sub_1BD25A370(v67, v111);
  (*(v99 + 56))(v68, 0, 1, v65);
  sub_1BE051C64();
  v69 = MEMORY[0x1E6981CD0];
  v70 = MEMORY[0x1E6981CD8];
  sub_1BE04F694();
  *&v121 = v70;
  *(&v121 + 1) = v69;
  swift_getOpaqueTypeConformance2();
  sub_1BD0EEEE0();
  v71 = v103;
  sub_1BE051C84();
  sub_1BD2589C8(&v113);
  v72 = v112;
  sub_1BD0DE19C(v68, v112, &qword_1EBD3F3C0);
  v74 = v104;
  v73 = v105;
  v75 = *(v105 + 16);
  v76 = v106;
  v75(v104, v71, v106);
  v77 = v72;
  v78 = v107;
  sub_1BD0DE19C(v77, v107, &qword_1EBD3F3C0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F3C8);
  v75((v78 + *(v79 + 48)), v74, v76);
  v80 = (v78 + *(v79 + 64));
  v81 = v117;
  v82 = v118;
  v120[4] = v117;
  v120[5] = v118;
  v83 = v119;
  v120[6] = v119;
  v84 = v114;
  v120[0] = v113;
  v120[1] = v114;
  v86 = v115;
  v85 = v116;
  v120[2] = v115;
  v120[3] = v116;
  *v80 = v113;
  v80[1] = v84;
  v80[4] = v81;
  v80[5] = v82;
  v80[2] = v86;
  v80[3] = v85;
  v80[6] = v83;
  sub_1BD0EEF94(v120, &v121);
  v87 = *(v73 + 8);
  v87(v71, v76);
  sub_1BD0DE53C(v111, &qword_1EBD3F3C0);
  v125 = v117;
  v126 = v118;
  v127 = v119;
  v121 = v113;
  v122 = v114;
  v123 = v115;
  v124 = v116;
  sub_1BD0EEFF0(&v121);
  v87(v74, v76);
  sub_1BD0DE53C(v112, &qword_1EBD3F3C0);
  v88 = v110;
  sub_1BD0DE204(v78, v110, &qword_1EBD3F3B0);
  return (*(v108 + 56))(v88, 0, 1, v109);
}

uint64_t (*sub_1BD258594())()
{
  v1 = type metadata accessor for PaymentSheet();
  v27 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v28 = v3;
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = _s11TotalAmountVMa(0);
  MEMORY[0x1EEE9AC00](v31, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s14PaymentSummaryVMa();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PeerPaymentModel();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v26 - v18;
  v29 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((*(v12 + 48))(v19, 1, v11))
  {
    sub_1BD0DE53C(v19, &qword_1EBD45480);
  }

  else
  {
    sub_1BD25A3E0(v19, v15, type metadata accessor for PeerPaymentModel);
    sub_1BD0DE53C(v19, &qword_1EBD45480);
    v20 = v15[*(v11 + 64)];
    sub_1BD25A968(v15, type metadata accessor for PeerPaymentModel);
    if (v20)
    {
      return 0;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD25A3E0(v10, v6, _s11TotalAmountVMa);
  sub_1BD25A968(v10, _s14PaymentSummaryVMa);
  v21 = v6[*(v31 + 48)];
  sub_1BD25A968(v6, _s11TotalAmountVMa);
  if (v21)
  {
    return 0;
  }

  v23 = v30;
  sub_1BD25A3E0(v29, v30, type metadata accessor for PaymentSheet);
  v24 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v25 = swift_allocObject();
  sub_1BD25AAFC(v23, v25 + v24, type metadata accessor for PaymentSheet);
  return sub_1BD25A8DC;
}

uint64_t sub_1BD2589C8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PaymentSheet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  sub_1BD25A3E0(v1, &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PaymentSheet);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1BD25AAFC(&v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for PaymentSheet);
  v18 = 0;
  KeyPath = swift_getKeyPath();
  v17[0] = 0;
  sub_1BE04CDA4();
  sub_1BD25AAB4(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  sub_1BE048964();
  v10 = sub_1BE04EEC4();
  v12 = v11;
  type metadata accessor for AuthenticatorModel();
  sub_1BD25AAB4(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  result = sub_1BE04E954();
  v14 = v18;
  v15 = v17[0];
  *a1 = result;
  *(a1 + 8) = v16;
  *(a1 + 16) = sub_1BD31FF5C;
  *(a1 + 24) = 0;
  *(a1 + 32) = v14;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = v15;
  *(a1 + 56) = v10;
  *(a1 + 64) = v12;
  *(a1 + 72) = sub_1BD25A310;
  *(a1 + 80) = v8;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x4014000000000000;
  return result;
}

uint64_t sub_1BD258BF8()
{
  v0 = sub_1BE04C614();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69BC8B8], v0, v3);
  sub_1BD254B98(v5);
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_1BD258CE4(int a1)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v32 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v30[-v7];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v30[-v11];
  v13 = sub_1BE04C614();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v30[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v30[-v20];
  v22 = type metadata accessor for PaymentSheet();
  v23 = *(v22 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180);
  v33 = v23;
  v34 = v1;
  sub_1BE0516A4();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1BD0DE53C(v12, &qword_1EBD3D520);
  }

  (*(v14 + 32))(v21, v12, v13);
  if (v31)
  {
    (*(v14 + 16))(v17, v21, v13);
    v25 = (*(v14 + 88))(v17, v13);
    if (v25 == *MEMORY[0x1E69BC8B8])
    {
      v26 = 3;
    }

    else if (v25 == *MEMORY[0x1E69BC8E0])
    {
      v26 = 7;
    }

    else if (v25 == *MEMORY[0x1E69BC8B0])
    {
      v26 = 6;
    }

    else
    {
      (*(v14 + 8))(v17, v13);
      v26 = 2;
    }

    sub_1BD6B2184(1, v26, 0);
  }

  v27 = (v34 + *(v22 + 56));
  v28 = *v27;
  v29 = *(v27 + 1);
  v36 = v28;
  v37 = v29;
  v35 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  (*(v14 + 56))(v8, 1, 1, v13);
  sub_1BD0DE19C(v8, v32, &qword_1EBD3D520);
  sub_1BE0516B4();
  sub_1BD0DE53C(v8, &qword_1EBD3D520);
  return (*(v14 + 8))(v21, v13);
}

uint64_t sub_1BD25908C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD25910C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

unint64_t sub_1BD259180()
{
  result = qword_1EBD3F1F8;
  if (!qword_1EBD3F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F1F8);
  }

  return result;
}

void sub_1BD2591FC()
{
  sub_1BD259758();
  if (v0 <= 0x3F)
  {
    sub_1BD0EDF50();
    if (v1 <= 0x3F)
    {
      sub_1BD0EDFE4();
      if (v2 <= 0x3F)
      {
        sub_1BD259964(319, &qword_1EBD3F218, type metadata accessor for PaymentAuthorizationModel, type metadata accessor for PaymentAuthorizationStateMachineWrapper);
        if (v3 <= 0x3F)
        {
          sub_1BD2599C8(319, &qword_1EBD3F220, &qword_1EBD3F228, &unk_1BE0C5B10, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1BD259964(319, &qword_1EBD3F230, type metadata accessor for PKMerchantCapability, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1BD259964(319, &qword_1EBD3F238, type metadata accessor for ProvisioningAvailableCredentialsProvider, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_1BD2599C8(319, &qword_1EBD388E0, &qword_1EBD51EC0, &unk_1BE0B7120, MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  sub_1BD2599C8(319, &qword_1EBD388E8, &qword_1EBD55590, &unk_1BE0B7128, MEMORY[0x1E6981790]);
                  if (v8 <= 0x3F)
                  {
                    sub_1BD2599C8(319, &qword_1EBD3A210, &qword_1EBD3D520, &unk_1BE0C12E0, MEMORY[0x1E6981790]);
                    if (v9 <= 0x3F)
                    {
                      sub_1BD259914(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                      if (v10 <= 0x3F)
                      {
                        sub_1BD259914(319, &unk_1EBD59650, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
                        if (v11 <= 0x3F)
                        {
                          sub_1BD2599C8(319, &qword_1EBD3F240, &qword_1EBD3F1E8, &unk_1BE0C5958, MEMORY[0x1E6981790]);
                          if (v12 <= 0x3F)
                          {
                            sub_1BD2599C8(319, &qword_1EBD39360, &qword_1EBD49710, &unk_1BE0B8580, MEMORY[0x1E6981790]);
                            if (v13 <= 0x3F)
                            {
                              sub_1BD2599C8(319, &qword_1EBD3F248, &unk_1EBD43B50, &unk_1BE102360, MEMORY[0x1E6981790]);
                              if (v14 <= 0x3F)
                              {
                                sub_1BD1031B4();
                                if (v15 <= 0x3F)
                                {
                                  sub_1BD2597EC();
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1BD259880();
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1BD259964(319, &qword_1EBD388F8, MEMORY[0x1E69BC9D0], MEMORY[0x1E697DCC0]);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_1BD259914(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                                        if (v19 <= 0x3F)
                                        {
                                          sub_1BD259964(319, &qword_1EBD38900, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_1BD2599C8(319, &qword_1EBD38908, &qword_1EBD38898, &unk_1BE0B72C0, MEMORY[0x1E697DCC0]);
                                            if (v21 <= 0x3F)
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
      }
    }
  }
}

void sub_1BD259758()
{
  if (!qword_1EBD3F210)
  {
    type metadata accessor for PaymentAuthorizationModel(255);
    sub_1BD25AAB4(&qword_1EBD3F1F0, type metadata accessor for PaymentAuthorizationModel);
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD3F210);
    }
  }
}

void sub_1BD2597EC()
{
  if (!qword_1EBD3F250)
  {
    type metadata accessor for BankConnectInterface();
    sub_1BD25AAB4(&qword_1EBD3F258, type metadata accessor for BankConnectInterface);
    v0 = sub_1BE04E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD3F250);
    }
  }
}

void sub_1BD259880()
{
  if (!qword_1EBD59630)
  {
    sub_1BD250AA8();
    sub_1BD25AAB4(&qword_1EBD35E40, sub_1BD250AA8);
    v0 = sub_1BE04EED4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD59630);
    }
  }
}

void sub_1BD259914(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1BD259964(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD2599C8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

double sub_1BD259A48@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaymentSheet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD2DFA44(v4, a1);
}

unint64_t sub_1BD259AB8()
{
  result = qword_1EBD3F2E0;
  if (!qword_1EBD3F2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F2D8);
    sub_1BD259B44();
    sub_1BD10EC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F2E0);
  }

  return result;
}

unint64_t sub_1BD259B44()
{
  result = qword_1EBD3F2E8;
  if (!qword_1EBD3F2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F2F0);
    sub_1BD259BD0();
    sub_1BD259C5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F2E8);
  }

  return result;
}

unint64_t sub_1BD259BD0()
{
  result = qword_1EBD3F2F8;
  if (!qword_1EBD3F2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F300);
    sub_1BD259C5C();
    sub_1BD10EBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F2F8);
  }

  return result;
}

unint64_t sub_1BD259C5C()
{
  result = qword_1EBD3F308;
  if (!qword_1EBD3F308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F310);
    sub_1BD0DE4F4(&qword_1EBD3F318, &qword_1EBD3F320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F308);
  }

  return result;
}

uint64_t sub_1BD259D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentSheet() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD2540E0(a1, v6, a2);
}

unint64_t sub_1BD259DEC()
{
  result = qword_1EBD3F348;
  if (!qword_1EBD3F348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F278);
    sub_1BD0DE4F4(&qword_1EBD3F350, &qword_1EBD3F270);
    sub_1BD0DE4F4(&qword_1EBD3F358, &qword_1EBD3F360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F348);
  }

  return result;
}

uint64_t sub_1BD259ED0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaymentSheet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD255598(v4, a1);
}

uint64_t sub_1BD259F58(uint64_t a1)
{
  type metadata accessor for PaymentSheet();

  return sub_1BD25593C(a1);
}

uint64_t sub_1BD259FE0(uint64_t *a1)
{
  type metadata accessor for PaymentSheet();

  return sub_1BD2564E8(a1);
}

uint64_t sub_1BD25A068(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PaymentSheet() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1BD25A184(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, uint64_t))
{
  v5 = *(a1(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(a2(0) - 8);
  v9 = v3 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return a3(v3 + v6, v9);
}

uint64_t sub_1BD25A28C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PaymentSheet() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1BD25A370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F3B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD25A3E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for PaymentSheet();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 112))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 88);
  }

  if (*(v2 + 144))
  {
  }

  v3 = v2 + v1[13];
  v4 = sub_1BE04C614();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180);

  v7 = v2 + v1[15];
  if (!v6(v7, 1, v4))
  {
    (*(v5 + 8))(v7, v4);
  }

  sub_1BD0D45CC();

  v8 = v1[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1BE04C884();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  sub_1BD0D4604(*(v2 + v1[26]), *(v2 + v1[26] + 8));
  v10 = v1[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04EB24();
    (*(*(v11 - 8) + 8))(v2 + v10, v11);
  }

  else
  {
  }

  v12 = v1[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38888);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BE04FD04();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v2 + v12, 1, v13))
    {
      (*(v14 + 8))(v2 + v12, v13);
    }
  }

  else
  {
  }

  sub_1BD0D4604(*(v2 + v1[29]), *(v2 + v1[29] + 8));

  return swift_deallocObject();
}

uint64_t sub_1BD25A8F4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PaymentSheet() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD25A968(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD25A9C8()
{
  result = qword_1EBD3F3D8;
  if (!qword_1EBD3F3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD521E0);
    sub_1BD25AAB4(&unk_1EBD52200, type metadata accessor for SheetButton);
    sub_1BD25AAB4(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F3D8);
  }

  return result;
}

uint64_t sub_1BD25AAB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD25AAFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD25AB64()
{
  result = qword_1EBD3F3E8;
  if (!qword_1EBD3F3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F3F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F2C8);
    sub_1BD0DE4F4(&qword_1EBD3F388, &qword_1EBD3F2C8);
    swift_getOpaqueTypeConformance2();
    sub_1BD25AAB4(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F3E8);
  }

  return result;
}

uint64_t type metadata accessor for PaymentPassUnavailableItem()
{
  result = qword_1EBD3F3F8;
  if (!qword_1EBD3F3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD25AD08()
{
  type metadata accessor for UnavailablePass(319);
  if (v0 <= 0x3F)
  {
    sub_1BD0FA9D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD25ADA8@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = sub_1BE04C744();
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v62 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F408);
  v65 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v61 = v54 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F410);
  v60 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v8);
  v10 = v54 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F418);
  MEMORY[0x1EEE9AC00](v70, v11);
  v69 = v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F420);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v54 - v15;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F428);
  MEMORY[0x1EEE9AC00](v71, v17);
  v19 = v54 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F430);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = v54 - v23;
  v25 = type metadata accessor for PaymentPassUnavailableItem();
  v27 = *(v1 + *(v25 + 20));
  v66 = v13;
  if (v27)
  {
    v65 = v54;
    MEMORY[0x1EEE9AC00](v25, v26);
    sub_1BD0D44B8(v27);
    v28 = sub_1BD0DE4F4(&qword_1EBD3F468, &qword_1EBD3F408);
    sub_1BE048964();
    sub_1BE051704();
    (*(v21 + 16))(v16, v24, v20);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD3F460, &qword_1EBD3F430);
    v72 = v5;
    v73 = v28;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    sub_1BD057F64(v19, v69);
    swift_storeEnumTagMultiPayload();
    sub_1BD25BFE4();
    sub_1BE04F9A4();
    sub_1BD0D4744(v27);
    sub_1BD057FD4(v19);
    return (*(v21 + 8))(v24, v20);
  }

  else
  {
    v55 = v16;
    v56 = v10;
    v57 = v20;
    v58 = v19;
    v30 = v61;
    v31 = v62;
    v59 = v5;
    v32 = (v1 + *(v25 + 24));
    v33 = *v32;
    if (*v32)
    {
      v54[1] = v54;
      v34 = v32[1];
      MEMORY[0x1EEE9AC00](v25, v26);
      v37 = MEMORY[0x1EEE9AC00](v35, v36);
      (*(v38 + 104))(v31, *MEMORY[0x1E69BC940], v37);
      type metadata accessor for PassImage(0);
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F438);
      sub_1BD25BEA8();
      sub_1BD25BF00();
      v39 = v30;
      sub_1BE04C6A4();
      v40 = swift_allocObject();
      v41 = v33;
      *(v40 + 16) = v33;
      *(v40 + 24) = v34;
      v42 = sub_1BD0DE4F4(&qword_1EBD3F468, &qword_1EBD3F408);
      sub_1BE048964();
      v43 = v56;
      v44 = v59;
      sub_1BE0509D4();

      (v65[1])(v39, v44);
      v45 = v60;
      v46 = v67;
      (*(v60 + 16))(v55, v43, v67);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&qword_1EBD3F460, &qword_1EBD3F430);
      v72 = v44;
      v73 = v42;
      swift_getOpaqueTypeConformance2();
      v47 = v58;
      sub_1BE04F9A4();
      sub_1BD057F64(v47, v69);
      swift_storeEnumTagMultiPayload();
      sub_1BD25BFE4();
      sub_1BE04F9A4();
      sub_1BD0D4744(v41);
      sub_1BD057FD4(v47);
      return (*(v45 + 8))(v43, v46);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v25, v26);
      v50 = MEMORY[0x1EEE9AC00](v48, v49);
      (*(v51 + 104))(v31, *MEMORY[0x1E69BC940], v50);
      type metadata accessor for PassImage(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F438);
      sub_1BD25BEA8();
      sub_1BD25BF00();
      sub_1BE04C6A4();
      v52 = v65;
      v53 = v59;
      (v65[2])(v69, v30, v59);
      swift_storeEnumTagMultiPayload();
      sub_1BD25BFE4();
      sub_1BD0DE4F4(&qword_1EBD3F468, &qword_1EBD3F408);
      sub_1BE04F9A4();
      return (v52[1])(v30, v53);
    }
  }
}

uint64_t sub_1BD25B76C(uint64_t a1)
{
  v2 = sub_1BE04C744();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a1;
  v10 = a1;
  if (*(a1 + *(type metadata accessor for PaymentPassUnavailableItem() + 20)))
  {
    v7 = MEMORY[0x1E69BC950];
  }

  else
  {
    v7 = MEMORY[0x1E69BC940];
  }

  (*(v3 + 104))(v6, *v7, v2);
  type metadata accessor for PassImage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F438);
  sub_1BD25BEA8();
  sub_1BD25BF00();
  return sub_1BE04C6A4();
}

double sub_1BD25B8EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PassImage(0);
  sub_1BD0E8EA0(a1, a2 + v4[6]);
  PKPassFrontFaceContentSize();
  *(a2 + 24) = 0x4044000000000000;
  result = v6 / v5 * 40.0;
  *(a2 + 32) = result;
  *a2 = sub_1BD70C870;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + v4[7]) = 1;
  *(a2 + v4[8]) = 1911;
  return result;
}

double sub_1BD25B984@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04F7C4();
  v16 = 1;
  sub_1BD25BA9C(&v9);
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v17 = v9;
  v18 = v10;
  v24 = v14;
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v23[0] = v9;
  v23[1] = v10;
  sub_1BD25C11C(&v17, v8);
  sub_1BD25C18C(v23);
  *&v15[39] = v19;
  *&v15[55] = v20;
  *&v15[71] = v21;
  *&v15[87] = v22;
  *&v15[7] = v17;
  *&v15[23] = v18;
  v3 = v16;
  KeyPath = swift_getKeyPath();
  v5 = *&v15[48];
  *(a1 + 49) = *&v15[32];
  *(a1 + 65) = v5;
  *(a1 + 81) = *&v15[64];
  *(a1 + 96) = *&v15[79];
  result = *v15;
  v7 = *&v15[16];
  *(a1 + 17) = *v15;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 33) = v7;
  *(a1 + 112) = KeyPath;
  *(a1 + 120) = 0;
  return result;
}

id sub_1BD25BA9C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v54 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1BD4930A8();
  v60 = v5;
  v53 = sub_1BD0DDEBC();
  v6 = sub_1BE0506C4();
  v18 = v7;
  v9 = v8;
  sub_1BE050324();
  v10 = sub_1BE0505F4();
  v12 = v11;
  v14 = v13;

  sub_1BD0DDF10(v6, v18, v9 & 1);

  sub_1BE051224();
  v15 = sub_1BE050564();
  v57 = v16;
  LODWORD(v18) = v17;
  v20 = v19;

  sub_1BD0DDF10(v10, v12, v14 & 1);

  KeyPath = swift_getKeyPath();
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (PKOslo2024UIUpdatesEnabled())
  {
    goto LABEL_4;
  }

  HIDWORD(v49) = v18;
  v50 = KeyPath;
  v51 = v15;
  v52 = v20;
  v27 = v54;
  v26 = v55;
  v28 = v56;
  (*(v55 + 104))(v54, *MEMORY[0x1E69B8068], v56);
  result = PKPassKitBundle();
  if (result)
  {
    v30 = result;
    v31 = sub_1BE04B6F4();
    v33 = v32;

    (*(v26 + 8))(v27, v28);
    v59 = v31;
    v60 = v33;
    v34 = sub_1BE0506C4();
    v36 = v35;
    LOBYTE(v33) = v37;
    sub_1BE0502F4();
    v18 = sub_1BE0505F4();
    v39 = v38;
    v41 = v40;

    sub_1BD0DDF10(v34, v36, v33 & 1);

    sub_1BE051264();
    v22 = sub_1BE050564();
    v23 = v42;
    LOBYTE(v33) = v43;
    v25 = v44;

    sub_1BD0DDF10(v18, v39, v41 & 1);

    v24 = v33 & 1;
    sub_1BD0D7F18(v22, v23, v33 & 1);
    sub_1BE048C84();
    v15 = v51;
    v20 = v52;
    KeyPath = v50;
    LOBYTE(v18) = BYTE4(v49);
LABEL_4:
    v45 = v18 & 1;
    LOBYTE(v59) = v45;
    v58 = 0;
    v46 = v57;
    sub_1BD0D7F18(v15, v57, v45);
    sub_1BE048C84();
    sub_1BE048964();
    sub_1BD1969AC(v22, v23, v24, v25);
    sub_1BD1969F0(v22, v23, v24, v25);
    v47 = v59;
    v48 = v58;
    *a1 = v15;
    *(a1 + 8) = v46;
    *(a1 + 16) = v47;
    *(a1 + 24) = v20;
    *(a1 + 32) = KeyPath;
    *(a1 + 40) = 1;
    *(a1 + 48) = v48;
    *(a1 + 56) = v22;
    *(a1 + 64) = v23;
    *(a1 + 72) = v24;
    *(a1 + 80) = v25;
    sub_1BD1969F0(v22, v23, v24, v25);
    sub_1BD0DDF10(v15, v46, v45);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD25BEA8()
{
  result = qword_1EBD39FE0;
  if (!qword_1EBD39FE0)
  {
    type metadata accessor for PassImage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39FE0);
  }

  return result;
}

unint64_t sub_1BD25BF00()
{
  result = qword_1EBD3F440;
  if (!qword_1EBD3F440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F438);
    sub_1BD0DE4F4(&qword_1EBD3F448, &qword_1EBD3F450);
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F440);
  }

  return result;
}

unint64_t sub_1BD25BFE4()
{
  result = qword_1EBD3F458;
  if (!qword_1EBD3F458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F428);
    sub_1BD0DE4F4(&qword_1EBD3F460, &qword_1EBD3F430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F408);
    sub_1BD0DE4F4(&qword_1EBD3F468, &qword_1EBD3F408);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F458);
  }

  return result;
}

uint64_t sub_1BD25C11C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD25C18C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD25C1F4()
{
  result = qword_1EBD3F478;
  if (!qword_1EBD3F478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F480);
    sub_1BD25BFE4();
    sub_1BD0DE4F4(&qword_1EBD3F468, &qword_1EBD3F408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F478);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UIFlowItemDismissalConfiguration(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1BD25C380(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F488);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v10 - v5;
  if (*v1)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F490);
  (*(*(v8 - 8) + 16))(v6, a1, v8);
  *&v6[*(v3 + 36)] = v7;
  sub_1BD25C49C();
  sub_1BE050A24();
  return sub_1BD25C58C(v6);
}

unint64_t sub_1BD25C49C()
{
  result = qword_1EBD3F498;
  if (!qword_1EBD3F498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F488);
    sub_1BD25C528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F498);
  }

  return result;
}

unint64_t sub_1BD25C528()
{
  result = qword_1EBD3F4A0;
  if (!qword_1EBD3F4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F4A0);
  }

  return result;
}

uint64_t sub_1BD25C58C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD25C5F4()
{
  result = qword_1EBD3F4A8;
  if (!qword_1EBD3F4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3F4B0);
    sub_1BD25C49C();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F4A8);
  }

  return result;
}

id sub_1BD25C680()
{
  ObjectType = swift_getObjectType();
  sub_1BD25C6C8();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BD25C6C8()
{
  v1 = OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_isActive;
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_isActive) == 1)
  {
    v2 = OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_passcodeAssertion;
    if (*(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_ownsPasscodeAssertion) == 1 && *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_passcodeAssertion))
    {
      sub_1BE048964();
      sub_1BE04C244();

      v2 = OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_passcodeAssertion;
    }

    *(v0 + v2) = 0;

    *(v0 + v1) = 0;
  }

  v3 = [objc_opt_self() sharedInstance];
  if (v3)
  {
    v4 = v3;
    [v3 unregisterObserver_];
  }
}

uint64_t sub_1BD25C8F8(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04B944();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD55100);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v27 = *&v2[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_requirements];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F500);
  sub_1BD126024(&qword_1EBD55110, &unk_1EBD3F500);
  sub_1BE052674();
  v14 = sub_1BE04BDF4();
  v15 = (*(*(v14 - 8) + 48))(v13, 1, v14);
  sub_1BD0DE53C(v13, &unk_1EBD55100);
  if (v15 == 1)
  {
    return a1(0xD00000000000001CLL, 0x80000001BE11F740, 0, 1);
  }

  if (*&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_passcodeAssertion] && (v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_ownsPasscodeAssertion] & 1) == 0)
  {
    sub_1BE048964();
    if (sub_1BE04C224())
    {
      v21 = 0xD000000000000017;
      v22 = 0x80000001BE11F780;
      v23 = 1;
    }

    else
    {
      v22 = 0x80000001BE11F760;
      v21 = 0xD000000000000013;
      v23 = 0;
    }

    a1(v21, v22, 0, v23);
  }

  else
  {
    v17 = [objc_opt_self() sharedInstance];
    if (v17)
    {
      v18 = v17;
      [v17 registerObserver_];
    }

    sub_1BE04C264();
    sub_1BE04BB94();
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = v3;
    sub_1BE048964();
    v20 = v3;
    MEMORY[0x1BFB392E0](v9, sub_1BD25D6C4, v19);

    return (*(v25 + 8))(v9, v26);
  }
}

uint64_t sub_1BD25CC54(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1BE051F54();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v14 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v25 = sub_1BE052D54();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v19 = a2 & 1;
  *(v18 + 24) = a2 & 1;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  aBlock[4] = sub_1BD25D6E0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_36;
  v20 = _Block_copy(aBlock);
  sub_1BD25D6F4(a1, v19);
  sub_1BE048964();
  v21 = a5;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  v22 = v25;
  MEMORY[0x1BFB3FDF0](0, v17, v13, v20);
  _Block_release(v20);

  (*(v27 + 8))(v13, v10);
  return (*(v14 + 8))(v17, v26);
}

uint64_t sub_1BD25CF38(void *a1, char a2, void (*a3)(id, unint64_t, unint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    sub_1BD25D6F4(a1, 1);
    sub_1BE048964();
    sub_1BD25D700(a1, a5, a3, a4, a1);
    sub_1BD25D6D4(a1, 1);
  }

  else
  {
    if (sub_1BE04C224())
    {
      sub_1BE04C244();
      v10 = 0xD000000000000017;
      v11 = 0x80000001BE11F780;
      v12 = 1;
    }

    else
    {
      *(a5 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_isActive) = 1;
      *(a5 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_passcodeAssertion) = a1;
      sub_1BE048964();

      v11 = 0x80000001BE11F760;
      v10 = 0xD000000000000013;
      v12 = 0;
    }

    return (a3)(v10, v11, 0, v12);
  }
}

id sub_1BD25D068(uint64_t a1)
{
  v3 = sub_1BE04BAC4();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04B8D4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v40 - v14;
  v16 = sub_1BE04B944();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for ProvisioningPasscodeUpgradeExplanationFlowItem();
    if (swift_dynamicCastClass())
    {
      v41 = v6;
      v21 = v1;
      sub_1BE04BB94();
      sub_1BE04B924();
      (*(v17 + 8))(v20, v16);
      (*(v8 + 104))(v11, *MEMORY[0x1E69B7F80], v7);
      v22 = sub_1BE04B8C4();
      v23 = *(v8 + 8);
      v23(v11, v7);
      v23(v15, v7);
      if (v22)
      {
        v24 = objc_allocWithZone(type metadata accessor for ProvisioningPasscodeUpgradeWatchChangeFlowItem());
        v25 = v21;
        v26 = sub_1BE048964();
        v27 = sub_1BD3CC938(v26);
      }

      else if (PKIsChinaSKU() & 1) != 0 || (PKUsePasscodeUpgradeFlow() & 1) != 0 || (v31 = v41, sub_1BE04BC34(), v32 = sub_1BE04BA54(), (*(v42 + 8))(v31, v43), (v32))
      {
        v33 = objc_allocWithZone(type metadata accessor for ProvisioningPasscodeUpgradeCurrentPasscodeFlowItem());
        v34 = v21;
        v35 = sub_1BE048964();
        v27 = sub_1BD9DD35C(v35);
      }

      else
      {
        v37 = objc_allocWithZone(type metadata accessor for ProvisioningPasscodeUpgradeChangeFlowItem());
        v38 = v21;
        v39 = sub_1BE048964();
        v27 = sub_1BD25EC70(v39);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v28 = *&v1[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_context];
    v29 = *&v1[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_requirements];
    objc_allocWithZone(type metadata accessor for ProvisioningPasscodeUpgradeExplanationFlowItem());
    sub_1BE048964();
    sub_1BE048C84();
    v30 = v1;
    v27 = sub_1BD7B49A4(v28, v29);
  }

  return v27;
}

uint64_t sub_1BD25D490()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD25D4CC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD25D5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_isActive] = 0;
  v8 = OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_passcodeAssertion;
  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_passcodeAssertion] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_identifier];
  *v9 = 0xD000000000000026;
  v9[1] = 0x80000001BE0C6260;
  v10 = OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_dismissalConfiguration;
  v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_dismissalConfiguration] = 2;
  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_requirements] = a2;
  v3[v10] = 1;
  *&v3[v8] = a3;
  sub_1BE048964();
  sub_1BE048964();

  v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_ownsPasscodeAssertion] = a3 == 0;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_1BD25D6D4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_1BD25D6F4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return sub_1BE048964();
  }
}

void sub_1BD25D700(id a1, uint64_t a2, void (*a3)(id, unint64_t, unint64_t, uint64_t), uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  aBlock[0] = a1;
  sub_1BE048964();
  v11 = a5;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  sub_1BD0E5E8C(0, qword_1EBD45AD0);
  if (swift_dynamicCast())
  {
    if ([v32 hasLocalizedTitleAndMessage])
    {
      a1 = [v32 displayableError];

      goto LABEL_14;
    }
  }

  v13 = sub_1BE04A844();
  v14 = [v13 domain];

  v15 = sub_1BE052434();
  v17 = v16;

  if (v15 == sub_1BE052434() && v17 == v18)
  {
LABEL_12:

    goto LABEL_13;
  }

  v20 = sub_1BE053B84();

  if ((v20 & 1) == 0)
  {
    a1 = PKDisplayableErrorForCommonType();
    if (a1)
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  v21 = a1;
LABEL_14:
  v22 = a1;
  v23 = sub_1BE04A844();

  v24 = swift_allocObject();
  *(v24 + 16) = sub_1BD25DAD8;
  *(v24 + 24) = v10;
  aBlock[4] = sub_1BD214190;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_15_1;
  v25 = _Block_copy(aBlock);
  sub_1BE048964();

  v26 = PKAlertForDisplayableErrorWithCancelHandler(v23, 0, v25);
  _Block_release(v25);

  if (v26)
  {
    v27 = a2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = *(v27 + 8);
      ObjectType = swift_getObjectType();
      (*(v28 + 24))(v26, ObjectType, v28);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v30 = v11;
    a3(v11, 0xD00000000000001ELL, 0x80000001BE11F7A0, 4);
  }
}

uint64_t objectdestroyTm_18()
{

  return swift_deallocObject();
}

void sub_1BD25DAD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = v2;
  v1(v2, 0xD00000000000001ELL, 0x80000001BE11F7A0, 4);
}

uint64_t sub_1BD25DB54(uint64_t result)
{
  if ((result & 1) == 0 && *(v1 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_isActive) == 1)
  {
    sub_1BD25C6C8();
    v2 = v1 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      memset(v5, 0, sizeof(v5));
      v6 = 2;
      sub_1BD865A00(v1, &off_1F3B99F60, v5, ObjectType, v3);
      swift_unknownObjectRelease();
      return sub_1BD0DE53C(v5, &unk_1EBD3F510);
    }
  }

  return result;
}

void sub_1BD25DCFC()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v58 - v9;
  v11 = sub_1BE04BD74();
  v65 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v64 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v58 - v16;
  v18 = v0 + OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong() && (v19 = *(v18 + 8), ObjectType = swift_getObjectType(), v21 = (*(v19 + 32))(v0, &off_1F3B9A0C8, ObjectType, v19), v23 = v22, swift_unknownObjectRelease(), v21) && (v24 = swift_getObjectType(), v25 = (*(v23 + 56))(v24, v23), swift_unknownObjectRelease(), v25))
  {
    v61 = v25;
    v63 = v1;
    v62 = [objc_allocWithZone(MEMORY[0x1E696EEA8]) init];
    v26 = objc_opt_self();
    v27 = sub_1BE052A94();
    v28 = [v26 localizedStringFromNumber:v27 numberStyle:5];

    v29 = sub_1BE052434();
    v31 = v30;

    v32 = sub_1BE052404();
    v33 = PKDeviceSpecificLocalizedStringKeyForKey(v32, 0);

    if (v33)
    {
      sub_1BE052434();

      v34 = v65;
      v35 = *(v65 + 104);
      v60 = *MEMORY[0x1E69B80D8];
      v59 = v35;
      v35(v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1BE0B69E0;
      *(v36 + 56) = MEMORY[0x1E69E6158];
      *(v36 + 64) = sub_1BD110550();
      *(v36 + 32) = v29;
      *(v36 + 40) = v31;
      sub_1BE04B714();

      v37 = *(v34 + 8);
      v37(v17, v11);
      v38 = sub_1BE052404();

      v39 = v62;
      [v62 setPasscodePrompt_];

      [v39 setHidePasscodeRecoveryMessage_];
      aBlock = sub_1BE052434();
      v67 = v40;
      MEMORY[0x1BFB3F610](0x70757465732F2F3ALL, 0xE800000000000000);
      sub_1BE04AA54();

      v41 = sub_1BE04AA64();
      v42 = *(v41 - 8);
      v43 = 0;
      if ((*(v42 + 48))(v10, 1, v41) != 1)
      {
        v43 = sub_1BE04A9C4();
        (*(v42 + 8))(v10, v41);
      }

      [v39 setCalloutURL_];

      v44 = v64;
      v59(v64, v60, v11);
      v45 = PKPassKitBundle();
      v46 = v63;
      if (v45)
      {
        v47 = v45;
        sub_1BE04B6F4();

        v37(v44, v11);
        v48 = sub_1BE052404();

        [v39 setCalloutReason_];

        v49 = [objc_allocWithZone(MEMORY[0x1E696EEA0]) init];
        v50 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v70 = sub_1BD25ED90;
        v71 = v50;
        aBlock = MEMORY[0x1E69E9820];
        v67 = 1107296256;
        v68 = sub_1BD14E1D8;
        v69 = &block_descriptor_37;
        v51 = _Block_copy(&aBlock);

        v52 = v61;
        [v49 startInParentVC:v61 options:v39 completion:v51];
        _Block_release(v51);
        v53 = *(v46 + OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_service);
        *(v46 + OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_service) = v49;
        v54 = v49;

        [*(v46 + OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_reporter) reportViewAppeared];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1BE04D0E4();
    v55 = sub_1BE04D204();
    v56 = sub_1BE052C54();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1BD026000, v55, v56, "Unable to fetch renderer to show passcode upgrade", v57, 2u);
      MEMORY[0x1BFB45F20](v57, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1BD25E48C(uint64_t a1, void *a2)
{
  v3 = sub_1BE051F54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v13 = sub_1BE052D54();
  v14 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v14;
  aBlock[4] = sub_1BD25ED98;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_10_1;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v7, v17);
  _Block_release(v17);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

void sub_1BD25E760(void *a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v36 - v9;
  if (a1)
  {
    v11 = a1;
    sub_1BE04D0E4();
    v12 = a1;
    v13 = sub_1BE04D204();
    v14 = sub_1BE052C54();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1BD026000, v13, v14, "Failed with error: %@", v15, 0xCu);
      sub_1BD0DE53C(v16, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v16, -1, -1);
      MEMORY[0x1BFB45F20](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_1BE04D0E4();
    v19 = sub_1BE04D204();
    v20 = sub_1BE052C54();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1BD026000, v19, v20, "Successfully changed passcode", v21, 2u);
      MEMORY[0x1BFB45F20](v21, -1, -1);
    }

    v6 = v10;
  }

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = *(Strong + OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_service);
    *(Strong + OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_service) = 0;

    if (a1)
    {
      v25 = *&v23[OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_reporter];
      v26 = a1;
      if (v25)
      {
        v27 = v25;
        v28 = sub_1BE04A844();
        [v27 reportError:v28 context:0];
      }

      v33 = swift_unknownObjectWeakLoadStrong();
      if (v33)
      {
        v34 = v33;
        v35 = v23;
        sub_1BD25EDA0(v34);
      }

      else
      {
      }
    }

    else
    {
      v29 = *&v23[OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_reporter];
      if (v29)
      {
        [v29 reportPageCompleted:1 context:0];
      }

      v30 = swift_unknownObjectWeakLoadStrong();
      if (v30)
      {
        v31 = v30;
        v32 = v23;
        sub_1BD25EBB8(v32, v31, &off_1F3B9A0C8);
      }
    }
  }
}

uint64_t sub_1BD25EB14()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD25EB50(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD25EBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_passcodeAssertion))
  {
    sub_1BE048964();
    sub_1BE04C234();
  }

  v6 = a2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(a1, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1BD25EC70(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_service] = 0;
  *&v1[OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = &v1[OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_identifier];
  *v5 = 0xD000000000000029;
  *(v5 + 1) = 0x80000001BE0C62C0;
  *&v1[OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_context] = a1;
  swift_unknownObjectWeakAssign();
  sub_1BE052434();
  sub_1BE048964();
  v6 = sub_1BE04BB74();

  *&v2[OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_reporter] = v6;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_1BD25EDA0(uint64_t a1)
{
  v7 = [objc_opt_self() errorWithSeverity_];
  v2 = sub_1BE052404();
  [v7 addInternalDebugDescription_];

  v3 = a1 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v8[0] = v7;
    v9 = 1;
    v6 = v7;
    sub_1BD865A00(a1, &off_1F3B99F60, v8, ObjectType, v4);

    swift_unknownObjectRelease();
    sub_1BD0DE53C(v8, &unk_1EBD3F510);
  }

  else
  {
  }
}

uint64_t type metadata accessor for AccessibilityAdaptivePadding()
{
  result = qword_1EBD3F550;
  if (!qword_1EBD3F550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD25EF68()
{
  sub_1BD25EFF4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BD25EFF4()
{
  if (!qword_1EBD38900)
  {
    sub_1BE04EB24();
    v0 = sub_1BE04E3A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD38900);
    }
  }
}

uint64_t sub_1BD25F068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BE04EB24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1BD70A2A0(v9);
  sub_1BE04EB14();
  (*(v6 + 8))(v9, v5);
  sub_1BE04E1F4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F560);
  (*(*(v19 - 8) + 16))(a2, a1, v19);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F568);
  v21 = a2 + *(result + 36);
  *v21 = v10;
  *(v21 + 8) = v12;
  *(v21 + 16) = v14;
  *(v21 + 24) = v16;
  *(v21 + 32) = v18;
  *(v21 + 40) = 0;
  return result;
}

unint64_t sub_1BD25F214()
{
  result = qword_1EBD3F570;
  if (!qword_1EBD3F570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F568);
    sub_1BD25F2A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F570);
  }

  return result;
}

unint64_t sub_1BD25F2A0()
{
  result = qword_1EBD3F578;
  if (!qword_1EBD3F578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F578);
  }

  return result;
}

uint64_t sub_1BD25F304(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v109 = &v100 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v106 = &v100 - v8;
  v105 = sub_1BE04B824();
  v9 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v10);
  v102 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v103 = &v100 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F660);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v113 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v112 = &v100 - v20;
  v114 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  v111 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v21);
  v115 = (&v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v100 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v100 - v29;
  v31 = sub_1BE04D214();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v108 = &v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v100 - v37;
  sub_1BE04D094();
  v116 = a1;
  sub_1BD26681C(a1, v30);
  v39 = v1;
  v40 = sub_1BE04D204();
  v41 = sub_1BE052C54();

  v42 = os_log_type_enabled(v40, v41);
  v110 = v32;
  v104 = v9;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v100 = v26;
    v44 = v43;
    v107 = swift_slowAlloc();
    v124[0] = v107;
    *v44 = 136315394;
    v101 = v41;
    v45 = NearbyPeerPaymentReceiverState.description.getter();
    v46 = v31;
    v48 = v47;
    sub_1BD266EB0(v30, type metadata accessor for NearbyPeerPaymentReceiverState);
    v49 = sub_1BD123690(v45, v48, v124);
    v31 = v46;

    *(v44 + 4) = v49;
    *(v44 + 12) = 2080;
    v50 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_state;
    swift_beginAccess();
    v51 = v100;
    sub_1BD26681C(v39 + v50, v100);
    v52 = NearbyPeerPaymentReceiverState.description.getter();
    v54 = v53;
    sub_1BD266EB0(v51, type metadata accessor for NearbyPeerPaymentReceiverState);
    v55 = sub_1BD123690(v52, v54, v124);

    *(v44 + 14) = v55;
    _os_log_impl(&dword_1BD026000, v40, v101, "NearbyPeerPayment: ReceiverView: State changed from: %s to: %s", v44, 0x16u);
    v56 = v107;
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v56, -1, -1);
    MEMORY[0x1BFB45F20](v44, -1, -1);

    v107 = *(v110 + 8);
    v107(v38, v31);
  }

  else
  {

    sub_1BD266EB0(v30, type metadata accessor for NearbyPeerPaymentReceiverState);
    v107 = *(v32 + 8);
    v107(v38, v31);
    v51 = v26;
  }

  v57 = v112;
  sub_1BD26681C(v116, v112);
  v58 = *(v111 + 56);
  v59 = v114;
  v58(v57, 0, 1, v114);
  v60 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_state;
  swift_beginAccess();
  v61 = v113;
  sub_1BD26681C(v39 + v60, v113);
  v58(v61, 0, 1, v59);
  sub_1BD261084(v57, v61);
  sub_1BD0DE53C(v61, &qword_1EBD3F660);
  sub_1BD0DE53C(v57, &qword_1EBD3F660);
  v62 = v115;
  sub_1BD26681C(v39 + v60, v115);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v64 = &qword_1EBD3F000;
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      sub_1BD043990(v62, v124);
      sub_1BD0EE8CC(v124, v120);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD399D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6D0);
      if (swift_dynamicCast())
      {
        v116 = v31;
        sub_1BD043990(&v117, v123);
        v65 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
        swift_beginAccess();
        sub_1BD0EE8CC(v39 + v65, v120);
        v66 = v121;
        v67 = v122;
        __swift_project_boxed_opaque_existential_1(v120, v121);
        v68 = v103;
        (*(v67 + 40))(v66, v67);
        v69 = v68;
        v70 = sub_1BE04C4C4();
        v71 = *(v70 - 8);
        if ((*(v71 + 48))(v69, 1, v70) == 1)
        {
          __swift_destroy_boxed_opaque_existential_0(v120);
          sub_1BD0DE53C(v69, &unk_1EBD476F0);
        }

        else
        {
          sub_1BE04C454();
          v64 = &qword_1EBD3F000;
          (*(v71 + 8))(v69, v70);
          __swift_destroy_boxed_opaque_existential_0(v120);
        }

        sub_1BE04B8B4();

        __swift_destroy_boxed_opaque_existential_0(v123);
        v31 = v116;
      }

      else
      {
        v119 = 0;
        v117 = 0u;
        v118 = 0u;
        sub_1BD0DE53C(&v117, &unk_1EBD47840);
      }

      sub_1BD0EE8CC(v124, v120);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F6E0);
      if (swift_dynamicCast())
      {
        sub_1BD043990(&v117, v123);
        __swift_project_boxed_opaque_existential_1(v123, v123[3]);
        v96 = v106;
        sub_1BE04B854();
        v98 = v104;
        v97 = v105;
        if ((*(v104 + 48))(v96, 1, v105) == 1)
        {
          __swift_destroy_boxed_opaque_existential_0(v124);
          sub_1BD0DE53C(v96, &unk_1EBD3F6C0);
        }

        else
        {
          v99 = v102;
          (*(v98 + 32))(v102, v96, v97);
          _s9PassKitUI9AnalyticsO27trackNearbyPeerPaymentError13analyticsInfoy0aB4Core0fgH0O0dK0V_tFZ_0();
          (*(v98 + 8))(v99, v97);
          __swift_destroy_boxed_opaque_existential_0(v124);
        }

        __swift_destroy_boxed_opaque_existential_0(v123);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v124);
        v119 = 0;
        v117 = 0u;
        v118 = 0u;
        sub_1BD0DE53C(&v117, &qword_1EBD3F6E8);
      }

      goto LABEL_15;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v78 = v62;
      goto LABEL_14;
    }

    sub_1BD266EB0(v62, type metadata accessor for NearbyPeerPaymentReceiverState);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680);

    sub_1BD0DE53C(v62, &unk_1EBD3F690);
  }

  sub_1BD26681C(v39 + v60, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  v73 = v51;
  v74 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v75;
  v76 = v74;
  v77 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  sub_1BD0DE53C(inited + 32, &qword_1EBD3F590);
  _s9PassKitUI9AnalyticsO33trackNearbyPeerPaymentReceiveFlow5state4withyAA0fgH13ReceiverStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(v73, v77);

  v78 = v73;
LABEL_14:
  sub_1BD266EB0(v78, type metadata accessor for NearbyPeerPaymentReceiverState);
LABEL_15:
  v79 = v64[179];
  swift_beginAccess();
  sub_1BD0EE8CC(v39 + v79, v124);
  v80 = v125;
  v81 = v126;
  __swift_project_boxed_opaque_existential_1(v124, v125);
  v82 = (*(v81 + 48))(v80, v81);
  result = __swift_destroy_boxed_opaque_existential_0(v124);
  if (v82)
  {
    if (*(v39 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_currentLockState))
    {
      sub_1BD0EE8CC(v39 + v79, v124);
      v84 = v125;
      v85 = v126;
      __swift_project_boxed_opaque_existential_1(v124, v125);
      (*(v85 + 112))(v84, v85);
      return __swift_destroy_boxed_opaque_existential_0(v124);
    }

    else
    {
      v86 = v108;
      sub_1BE04D094();
      v87 = sub_1BE04D204();
      v88 = sub_1BE052C54();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_1BD026000, v87, v88, "NearbyPeerPayment: ReceiverView: prompting for auth before auto accept", v89, 2u);
        MEMORY[0x1BFB45F20](v89, -1, -1);
      }

      v107(v86, v31);
      v90 = sub_1BE0528D4();
      v91 = v109;
      (*(*(v90 - 8) + 56))(v109, 1, 1, v90);
      sub_1BE0528A4();
      v92 = v39;
      v93 = sub_1BE052894();
      v94 = swift_allocObject();
      v95 = MEMORY[0x1E69E85E0];
      v94[2] = v93;
      v94[3] = v95;
      v94[4] = v92;
      sub_1BD122C00(0, 0, v91, &unk_1BE0C64F8, v94);
    }
  }

  return result;
}

uint64_t sub_1BD260010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_1BE0528A4();
  v4[9] = sub_1BE052894();
  v6 = sub_1BE052844();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD2600A8, v6, v5);
}

uint64_t sub_1BD2600A8()
{
  v1 = *(v0 + 64);
  *(v0 + 96) = *(v1 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_authModel);
  v2 = (v1 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_unlockToAcceptAuthContent);
  v3 = v2[2];
  v4 = *v2;
  *(v0 + 32) = v2[1];
  *(v0 + 48) = v3;
  *(v0 + 16) = v4;
  sub_1BE048964();
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1BD26017C;

  return sub_1BDA809C4(v0 + 16, 0);
}

uint64_t sub_1BD26017C()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1BD267314, v3, v2);
}

uint64_t NearbyPeerPaymentReceiverViewController.__allocating_init(userInfo:screenEdgeSwipeAction:dismissAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1BD265B54(a1, a2, a3, a4, a5);

  return v12;
}

uint64_t NearbyPeerPaymentReceiverViewController.init(userInfo:screenEdgeSwipeAction:dismissAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1BD265B54(a1, a2, a3, a4, a5);

  return v5;
}

uint64_t sub_1BD260488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15[-v10];
  v12 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_state;
  swift_beginAccess();
  sub_1BD26681C(v2 + v12, v11);
  v13 = _s9PassKitUI30NearbyPeerPaymentReceiverStateO2eeoiySbAC_ACtFZ_0(v11, a2);
  result = sub_1BD266EB0(v11, type metadata accessor for NearbyPeerPaymentReceiverState);
  if ((v13 & 1) == 0)
  {
    sub_1BD26681C(a2, v11);
    sub_1BD26681C(v2 + v12, v7);
    swift_beginAccess();
    sub_1BD266E48(v11, v2 + v12, type metadata accessor for NearbyPeerPaymentReceiverState);
    swift_endAccess();
    sub_1BD25F304(v7);
    sub_1BD266EB0(v7, type metadata accessor for NearbyPeerPaymentReceiverState);
    return sub_1BD266EB0(v11, type metadata accessor for NearbyPeerPaymentReceiverState);
  }

  return result;
}

uint64_t sub_1BD2605F4(char a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    sub_1BE04D094();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C54();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v10, v11, "NearbyPeerPayment: user accepting transfer after unlocking", v12, 2u);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    v13 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
    swift_beginAccess();
    sub_1BD0EE8CC(v2 + v13, v17);
    v14 = v18;
    v15 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v15 + 112))(v14, v15);
    __swift_destroy_boxed_opaque_existential_0(v17);
    sub_1BE048964();
    sub_1BDA81064();
  }

  return result;
}

uint64_t sub_1BD2608DC(char a1, SEL *a2)
{
  v5 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for NearbyPeerPaymentReceiverViewController();
  v19.receiver = v2;
  v19.super_class = v9;
  objc_msgSendSuper2(&v19, *a2, a1 & 1);
  v10 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_state;
  swift_beginAccess();
  sub_1BD26681C(v2 + v10, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  v12 = MEMORY[0x1E69BA680];
  *(inited + 16) = xmmword_1BE0B69E0;
  v13 = *v12;
  *(inited + 32) = *v12;
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v14;
  v15 = v13;
  v16 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  sub_1BD0DE53C(inited + 32, &qword_1EBD3F590);
  _s9PassKitUI9AnalyticsO33trackNearbyPeerPaymentReceiveFlow5state4withyAA0fgH13ReceiverStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(v8, v16);

  return sub_1BD266EB0(v8, type metadata accessor for NearbyPeerPaymentReceiverState);
}

id sub_1BD260AB4()
{
  v27.receiver = v0;
  v27.super_class = type metadata accessor for NearbyPeerPaymentReceiverViewController();
  objc_msgSendSuper2(&v27, sel_viewDidLayoutSubviews);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  [result bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  MaxY = CGRectGetMaxY(v28);
  result = [v0 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = result;
  [result safeAreaInsets];
  v14 = v13;

  result = [v0 view];
  if (result)
  {
    v15 = result;
    v16 = MaxY - v14 + -70.0 + -30.0;
    [result bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v29.origin.x = v18;
    v29.origin.y = v20;
    v29.size.width = v22;
    v29.size.height = v24;
    MidX = CGRectGetMidX(v29);
    v26 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_vfxViewController] + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_ringCenter;
    swift_beginAccess();
    *v26 = MidX;
    *(v26 + 8) = v16;
    *(v26 + 16) = 0;
    return sub_1BD632A40(MidX, v16);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1BD260CAC()
{
  v1 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
  swift_beginAccess();
  sub_1BD0EE8CC(v0 + v1, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 96))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_1BD260DC8(uint64_t a1, void *a2)
{
  sub_1BD38EACC(a2);
  v4 = v2 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  v7 = *(v6 + 72);
  v8 = a2;
  v7(a2, v5, v6);
  return swift_endAccess();
}

id sub_1BD260F48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [v2 presentViewController:a2 animated:1 completion:0];
  }

  __break(1u);
  return result;
}

void sub_1BD260F90()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentingViewController];

    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

id sub_1BD261084(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v126 = v3;
  ObjectType = swift_getObjectType();
  v119 = sub_1BE04BD74();
  v125 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v6);
  v118 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v117 = &v115 - v10;
  v120 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  MEMORY[0x1EEE9AC00](v120, v11);
  v121 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v115 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v115 - v18;
  v20 = sub_1BE04C4C4();
  v123 = *(v20 - 8);
  v124 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v116 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v127 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F660);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v128 = (&v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v115 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F668);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = &v115 - v36;
  v39 = *(v38 + 56);
  sub_1BD0DE19C(a1, &v115 - v36, &qword_1EBD3F660);
  sub_1BD0DE19C(a2, &v37[v39], &qword_1EBD3F660);
  v40 = *(v24 + 48);
  if (v40(v37, 1, v23) == 1)
  {
    if (v40(&v37[v39], 1, v23) == 1)
    {
      return sub_1BD0DE53C(v37, &qword_1EBD3F660);
    }

    goto LABEL_6;
  }

  sub_1BD0DE19C(v37, v33, &qword_1EBD3F660);
  if (v40(&v37[v39], 1, v23) == 1)
  {
    sub_1BD266EB0(v33, type metadata accessor for NearbyPeerPaymentReceiverState);
LABEL_6:
    sub_1BD0DE53C(v37, &unk_1EBD3F668);
    goto LABEL_7;
  }

  v55 = &v37[v39];
  v56 = v127;
  sub_1BD266F10(v55, v127);
  v57 = _s9PassKitUI30NearbyPeerPaymentReceiverStateO2eeoiySbAC_ACtFZ_0(v33, v56);
  sub_1BD266EB0(v56, type metadata accessor for NearbyPeerPaymentReceiverState);
  sub_1BD266EB0(v33, type metadata accessor for NearbyPeerPaymentReceiverState);
  result = sub_1BD0DE53C(v37, &qword_1EBD3F660);
  if (v57)
  {
    return result;
  }

LABEL_7:
  v42 = v128;
  sub_1BD0DE19C(a2, v128, &qword_1EBD3F660);
  if (v40(v42, 1, v23) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v46 = v126;
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 4)
        {
          v69 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v70 = swift_allocObject();
          v71 = ObjectType;
          *(v70 + 16) = v69;
          *(v70 + 24) = v71;
          v72 = sub_1BD266E30;
          goto LABEL_29;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
        v43 = swift_allocObject();
        v44 = v43;
        v45 = xmmword_1BE0C63C0;
        v47 = *&v46[OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView];
        v48 = &OBJC_IVAR___PKNearbyPeerPaymentViewController_metadataView;
        goto LABEL_9;
      }

      sub_1BD043990(v42, v130);
      v66 = *&v46[OBJC_IVAR___PKNearbyPeerPaymentViewController_errorView];
      sub_1BD0EE8CC(v130, v129);
      v67 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error;
      swift_beginAccess();
      sub_1BD266DC0(v129, v66 + v67);
      swift_endAccess();
      sub_1BD97A1FC();
      sub_1BD0DE53C(v129, &qword_1EBD3F678);
      result = [v46 view];
      if (result)
      {
        v68 = result;
        [result addSubview_];

        __swift_destroy_boxed_opaque_existential_0(v130);
        goto LABEL_28;
      }

      __break(1u);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        sub_1BD266EB0(v42, type metadata accessor for NearbyPeerPaymentReceiverState);
        goto LABEL_28;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680);

      v58 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
      swift_beginAccess();
      sub_1BD0EE8CC(&v46[v58], v130);
      v59 = v131;
      v60 = v132;
      __swift_project_boxed_opaque_existential_1(v130, v131);
      (*(v60 + 40))(v59, v60);
      v62 = v123;
      v61 = v124;
      if (v123[6](v19, 1, v124) == 1)
      {
        sub_1BD0DE53C(v19, &unk_1EBD476F0);
        __swift_destroy_boxed_opaque_existential_0(v130);
        v63 = v119;
        v64 = v125;
        v65 = v117;
      }

      else
      {
        v73 = v116;
        v62[4](v116, v19, v61);
        __swift_destroy_boxed_opaque_existential_0(v130);
        sub_1BE04C474();
        v74 = sub_1BE053344();
        sub_1BE04C494();
        v75 = sub_1BE052404();

        v76 = PKCurrencyAmountMake();

        v77 = OBJC_IVAR___PKNearbyPeerPaymentViewController_amount;
        swift_beginAccess();
        v78 = *&v46[v77];
        *&v46[v77] = v76;
        v79 = v76;

        sub_1BD38D490();
        v80 = v115;
        v62[2](v115, v73, v61);
        (v62[7])(v80, 0, 1, v61);
        sub_1BD28D16C(0, 0, v80);
        sub_1BD0DE53C(v80, &unk_1EBD476F0);
        result = [v46 view];
        v64 = v125;
        v65 = v117;
        if (!result)
        {
LABEL_36:
          __break(1u);
          return result;
        }

        v81 = result;
        [result setNeedsLayout];

        (v62[1])(v73, v61);
        v63 = v119;
      }

      v82 = *(*&v46[OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView] + OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_buttonsView);
      v83 = *MEMORY[0x1E69B8050];
      v84 = *(v64 + 104);
      v84(v65, v83, v63);
      v124 = v82;
      result = PKPassKitBundle();
      if (result)
      {
        v85 = result;
        v86 = v65;
        v87 = sub_1BE04B6F4();
        v89 = v88;

        v90 = *(v64 + 8);
        v125 = v64 + 8;
        v123 = v90;
        (v90)(v86, v63);
        v91 = v63;
        v92 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v93 = v121;
        sub_1BE04AFD4();
        v94 = type metadata accessor for NearbyPeerPaymentButtonsView.Action(0);
        v95 = &v93[*(v94 + 20)];
        *v95 = v87;
        v95[1] = v89;
        v96 = &v93[*(v94 + 24)];
        *v96 = sub_1BD266E38;
        v96[1] = v92;
        v97 = v118;
        v84(v118, v83, v91);
        result = PKPassKitBundle();
        if (result)
        {
          v98 = result;
          v99 = v93;
          v100 = &v93[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F688) + 48)];
          v101 = v97;
          v102 = sub_1BE04B6F4();
          v104 = v103;

          (v123)(v101, v91);
          v105 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1BE04AFD4();
          v106 = &v100[*(v94 + 20)];
          *v106 = v102;
          v106[1] = v104;
          v107 = &v100[*(v94 + 24)];
          *v107 = sub_1BD266E40;
          v107[1] = v105;
          swift_storeEnumTagMultiPayload();
          v108 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
          v109 = v124;
          swift_beginAccess();
          sub_1BD266E48(v99, v109 + v108, type metadata accessor for NearbyPeerPaymentButtonsView.Style);
          swift_endAccess();
          sub_1BD3BB48C();

          sub_1BD266EB0(v99, type metadata accessor for NearbyPeerPaymentButtonsView.Style);
          sub_1BD0DE53C(v128, &unk_1EBD3F690);
          goto LABEL_28;
        }

        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v43 = swift_allocObject();
  v44 = v43;
  v45 = xmmword_1BE0C63C0;
  v46 = v126;
  v47 = *&v126[OBJC_IVAR___PKNearbyPeerPaymentViewController_metadataView];
  v48 = &OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView;
LABEL_9:
  *(v43 + 16) = v45;
  v49 = *&v46[*v48];
  *(v43 + 32) = v47;
  *(v43 + 40) = v49;
  v50 = *&v46[OBJC_IVAR___PKNearbyPeerPaymentViewController_errorView];
  *(v43 + 48) = v50;
  v51 = v47;
  v52 = v49;
  v53 = v50;
  sub_1BD2659AC(v44, 0, 0, 0.0);

LABEL_28:
  v70 = 0;
  v72 = PKEdgeInsetsMake;
LABEL_29:
  v110 = v72;
  v111 = *&v46[OBJC_IVAR___PKNearbyPeerPaymentViewController_vfxViewController];
  type metadata accessor for NearbyPeerPaymentReceiverVFXViewController();
  if (!swift_dynamicCastClass())
  {
  }

  v112 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_state;
  swift_beginAccess();
  v113 = v127;
  sub_1BD26681C(&v46[v112], v127);
  v114 = v111;
  NearbyPeerPaymentReceiverVFXViewController.setState(_:completion:)(v113, v110, v70);

  return sub_1BD266EB0(v113, type metadata accessor for NearbyPeerPaymentReceiverState);
}

void sub_1BD261E00()
{
  v0 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v126 = (&v115 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_1BE04B7D4();
  v122 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v120 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04B824();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v121 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v123 = &v115 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v125 = &v115 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v124 = &v115 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v127 = &v115 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v128 = &v115 - v29;
  v30 = sub_1BE04D214();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v115 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v36 = Strong;
  v117 = v7;
  v118 = v6;
  sub_1BE04D094();
  v37 = sub_1BE04D204();
  v38 = sub_1BE052C54();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v119 = v14;
    v40 = v11;
    v41 = v10;
    v42 = v36;
    v43 = v3;
    v44 = v39;
    *v39 = 0;
    _os_log_impl(&dword_1BD026000, v37, v38, "NearbyPeerPayment: user accepted transfer", v39, 2u);
    v45 = v44;
    v3 = v43;
    v36 = v42;
    v10 = v41;
    v11 = v40;
    v14 = v119;
    MEMORY[0x1BFB45F20](v45, -1, -1);
  }

  (*(v31 + 8))(v34, v30);
  v46 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_accountResolutionController;
  v47 = [*&v36[OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_accountResolutionController] currentPeerPaymentAccountResolution];
  if ((v36[OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_currentLockState] & 1) == 0)
  {
    v57 = sub_1BE0528D4();
    v58 = v128;
    (*(*(v57 - 8) + 56))(v128, 1, 1, v57);
    sub_1BE0528A4();
    v59 = v36;
    v60 = sub_1BE052894();
    v61 = swift_allocObject();
    v62 = MEMORY[0x1E69E85E0];
    v61[2] = v60;
    v61[3] = v62;
    v61[4] = v59;
    sub_1BD122C00(0, 0, v58, &unk_1BE0C64E0, v61);

    return;
  }

  v48 = v47;
  if (!v47)
  {
    v63 = v11;
    v64 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
    swift_beginAccess();
    sub_1BD0EE8CC(&v36[v64], &aBlock);
    v65 = v132;
    v66 = v133;
    __swift_project_boxed_opaque_existential_1(&aBlock, v132);
    v67 = (*(v66 + 7))(v65, v66);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    if ((v67 & 1) == 0)
    {
      v101 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_state;
      swift_beginAccess();
      v102 = v126;
      sub_1BD26681C(&v36[v101], v126);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B6CA0;
      v104 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      v105 = sub_1BE052434();
      v106 = MEMORY[0x1E69BA440];
      *(inited + 40) = v105;
      *(inited + 48) = v107;
      v108 = *v106;
      *(inited + 56) = *v106;
      *(inited + 64) = sub_1BE052434();
      *(inited + 72) = v109;
      v110 = v104;
      v111 = v108;
      v112 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      swift_arrayDestroy();
      _s9PassKitUI9AnalyticsO33trackNearbyPeerPaymentReceiveFlow5state4withyAA0fgH13ReceiverStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(v102, v112);

      sub_1BD266EB0(v102, type metadata accessor for NearbyPeerPaymentReceiverState);
      sub_1BD0EE8CC(&v36[v64], &aBlock);
      v113 = v132;
      v114 = v133;
      __swift_project_boxed_opaque_existential_1(&aBlock, v132);
      (*(v114 + 14))(v113, v114);

      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      return;
    }

    v119 = v14;
    v116 = v3;
    v68 = *MEMORY[0x1E69B8050];
    v69 = v63;
    v70 = *(v63 + 104);
    v71 = v124;
    v70(v124, v68, v10);
    v72 = PKPassKitBundle();
    if (v72)
    {
      v73 = v72;
      sub_1BE04B6F4();

      v128 = *(v69 + 8);
      (v128)(v71, v10);
      v74 = v125;
      LODWORD(v127) = v68;
      v126 = v70;
      v70(v125, v68, v10);
      v75 = PKPassKitBundle();
      if (v75)
      {
        v76 = v10;
        v77 = v75;
        sub_1BE04B6F4();

        (v128)(v74, v76);
        v78 = sub_1BE052404();

        v79 = sub_1BE052404();

        v125 = [objc_opt_self() alertControllerWithTitle:v78 message:v79 preferredStyle:1];

        v80 = v123;
        v126(v123, v127, v76);
        v81 = PKPassKitBundle();
        if (v81)
        {
          v82 = v81;
          sub_1BE04B6F4();

          (v128)(v80, v76);
          v83 = swift_allocObject();
          *(v83 + 16) = v36;
          v84 = v36;
          v85 = sub_1BE052404();

          v133 = sub_1BD266F74;
          v134 = v83;
          aBlock = MEMORY[0x1E69E9820];
          v130 = 1107296256;
          v131 = sub_1BD198918;
          v132 = &block_descriptor_38;
          v86 = _Block_copy(&aBlock);

          v87 = objc_opt_self();
          v124 = [v87 actionWithTitle:v85 style:0 handler:v86];
          _Block_release(v86);

          v88 = v119;
          v126(v119, v127, v76);
          v89 = PKPassKitBundle();
          if (v89)
          {
            v90 = v89;
            sub_1BE04B6F4();

            (v128)(v88, v76);
            v91 = swift_allocObject();
            *(v91 + 16) = v84;
            v92 = v84;
            v93 = sub_1BE052404();

            v133 = sub_1BD266F7C;
            v134 = v91;
            aBlock = MEMORY[0x1E69E9820];
            v130 = 1107296256;
            v131 = sub_1BD198918;
            v132 = &block_descriptor_51_0;
            v94 = _Block_copy(&aBlock);

            v95 = [v87 actionWithTitle:v93 style:1 handler:v94];
            _Block_release(v94);

            v96 = v125;
            v97 = v124;
            [v125 addAction_];
            [v96 addAction_];
            PKAccessibilityIDAlertSet(v96, *MEMORY[0x1E69B9618]);
            [v92 presentViewController:v96 animated:1 completion:0];
            sub_1BE052434();
            (*(v122 + 104))(v120, *MEMORY[0x1E69B7EF8], v116);
            v98 = v121;
            sub_1BE04B7F4();
            _s9PassKitUI9AnalyticsO27trackNearbyPeerPaymentError13analyticsInfoy0aB4Core0fgH0O0dK0V_tFZ_0();

            (*(v117 + 8))(v98, v118);
            return;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  v49 = [objc_allocWithZone(MEMORY[0x1E69B8F08]) init];
  [v49 setRegistrationFlowState_];
  v50 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
  swift_beginAccess();
  sub_1BD0EE8CC(&v36[v50], &aBlock);
  v51 = v132;
  v52 = v133;
  __swift_project_boxed_opaque_existential_1(&aBlock, v132);
  v53 = v127;
  (*(v52 + 5))(v51, v52);
  v54 = sub_1BE04C4C4();
  v55 = *(v54 - 8);
  if ((*(v55 + 48))(v53, 1, v54) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    sub_1BD0DE53C(v53, &unk_1EBD476F0);
    v56 = 0;
  }

  else
  {
    sub_1BE04C3E4();
    (*(v55 + 8))(v53, v54);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    v56 = sub_1BE052404();
  }

  [v49 setSenderAddress_];

  [v49 setPaymentMode_];
  v99 = *&v36[v46];
  v100 = v49;
  [v99 presentFlowForAccountResolution:v48 configuration:v100 completion:0];
}

uint64_t sub_1BD262D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_1BE0528A4();
  v4[9] = sub_1BE052894();
  v6 = sub_1BE052844();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD262DD8, v6, v5);
}

uint64_t sub_1BD262DD8()
{
  v1 = *(v0 + 64);
  *(v0 + 96) = *(v1 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_authModel);
  v2 = (v1 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_unlockToAcceptAuthContent);
  v3 = v2[2];
  v4 = *v2;
  *(v0 + 32) = v2[1];
  *(v0 + 48) = v3;
  *(v0 + 16) = v4;
  sub_1BE048964();
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1BD262EAC;

  return sub_1BDA809C4(v0 + 16, 0);
}

uint64_t sub_1BD262EAC()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1BD262FF0, v3, v2);
}

uint64_t sub_1BD262FF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD263050(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v2 = sub_1BE04B7D4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04B824();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE052434();
  v14 = v13;
  sub_1BE052434();
  (*(v3 + 104))(v6, *MEMORY[0x1E69B7EF8], v2);
  sub_1BE04B7F4();
  _s9PassKitUI9AnalyticsO31trackNearbyPeerPaymentButtonTap_13analyticsInfoySS_0aB4Core0fgH0O0dL0VtFZ_0(v12, v14);

  (*(v8 + 8))(v11, v7);
  v15 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
  v16 = v21;
  swift_beginAccess();
  sub_1BD0EE8CC(v16 + v15, v22);
  v17 = v23;
  v18 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v18 + 112))(v17, v18);
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_1BD263284(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v2 = sub_1BE04B7D4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04B824();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE052434();
  v14 = v13;
  sub_1BE052434();
  (*(v3 + 104))(v6, *MEMORY[0x1E69B7EF8], v2);
  sub_1BE04B7F4();
  _s9PassKitUI9AnalyticsO31trackNearbyPeerPaymentButtonTap_13analyticsInfoySS_0aB4Core0fgH0O0dL0VtFZ_0(v12, v14);

  (*(v8 + 8))(v11, v7);
  v15 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
  v16 = v23;
  swift_beginAccess();
  sub_1BD0EE8CC(v16 + v15, v24);
  v17 = v25;
  v18 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = *(v18 + 120);
  sub_1BE048964();
  v20(sub_1BD267038, v19, v17, v18);

  return __swift_destroy_boxed_opaque_existential_0(v24);
}

uint64_t sub_1BD26350C()
{
  v0 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v22[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_state;
    v6 = result;
    swift_beginAccess();
    sub_1BD26681C(v6 + v5, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v8 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    v9 = sub_1BE052434();
    v10 = MEMORY[0x1E69BA440];
    *(inited + 40) = v9;
    *(inited + 48) = v11;
    v12 = *v10;
    *(inited + 56) = *v10;
    *(inited + 64) = sub_1BE052434();
    *(inited + 72) = v13;
    v14 = v8;
    v15 = v12;
    v16 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
    swift_arrayDestroy();
    _s9PassKitUI9AnalyticsO33trackNearbyPeerPaymentReceiveFlow5state4withyAA0fgH13ReceiverStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(v3, v16);

    sub_1BD266EB0(v3, type metadata accessor for NearbyPeerPaymentReceiverState);
    v17 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
    swift_beginAccess();
    sub_1BD0EE8CC(v6 + v17, v23);
    v18 = v24;
    v19 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = *(v19 + 120);
    sub_1BE048964();
    v21(sub_1BD267318, v20, v18, v19);

    return __swift_destroy_boxed_opaque_existential_0(v23);
  }

  return result;
}

uint64_t sub_1BD263778()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR___PKNearbyPeerPaymentViewController_dismissAction);
    v2 = result;
    sub_1BE048964();

    v1(0, 0);
  }

  return result;
}

void sub_1BD263804()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
    swift_beginAccess();
    sub_1BD0EE8CC(v1 + v2, v5);
    v3 = v6;
    v4 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    LOBYTE(v2) = (*(v4 + 88))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v5);
    if ((v2 & 1) == 0)
    {
      sub_1BD263998(1, 0);
    }
  }
}

void sub_1BD2638D4(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1BE053704();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB40900](i, a1);
      }

      else
      {
        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      [v6 setAlpha_];
    }
  }
}

uint64_t sub_1BD263998(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v77) = a2;
  v68 = a1;
  v4 = sub_1BE051F54();
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v75 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1BE051FA4();
  v76 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v7);
  v73 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051F44();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v67 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v63 = (&v59 - v14);
  v78 = sub_1BE051FC4();
  v66 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v15);
  v64 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v65 = &v59 - v19;
  v20 = sub_1BE052DC4();
  v62 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
  swift_beginAccess();
  sub_1BD0EE8CC(v2 + v25, &aBlock);
  v27 = v82;
  v26 = v83;
  __swift_project_boxed_opaque_existential_1(&aBlock, v82);
  v28 = v26[12];
  sub_1BE048964();
  v28(v27, v26);
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  if (v77)
  {
    v29 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_timer;
    if (*(v2 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_timer))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1BE052E04();
      swift_unknownObjectRelease();
    }

    *(v2 + v29) = 0;
    swift_unknownObjectRelease();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v56 = *(Strong + OBJC_IVAR___PKNearbyPeerPaymentViewController_dismissAction);
      v57 = Strong;
      sub_1BE048964();
      v56(0, 0);
    }
  }

  else
  {
    v60 = v24;

    sub_1BD0E5E8C(0, &unk_1EBD39A90);
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v30 = sub_1BE052D54();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD267238(&unk_1EBD3F6A0, MEMORY[0x1E69E80B0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AA0);
    sub_1BD26710C();
    sub_1BE053664();
    v31 = sub_1BE052DD4();

    (*(v62 + 8))(v23, v20);
    v61 = v3;
    v77 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_timer;
    *(v3 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_timer) = v31;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    v33 = v64;
    sub_1BE051FB4();
    v34 = v63;
    *v63 = v68;
    v36 = v69;
    v35 = v70;
    (*(v69 + 104))(v34, *MEMORY[0x1E69E7F48], v70);
    v37 = v65;
    MEMORY[0x1BFB3F070](v33, v34);
    v38 = *(v36 + 8);
    v38(v34, v35);
    v39 = *(v66 + 8);
    v39(v33, v78);
    sub_1BD85BB68(v34);
    v40 = v67;
    sub_1BD85BBDC(v67);
    MEMORY[0x1BFB3FF60](v37, v34, v40, ObjectType);
    swift_unknownObjectRelease();
    v38(v40, v35);
    v38(v34, v35);
    v39(v37, v78);
    v41 = v61;
    v43 = v71;
    v42 = v72;
    v44 = v60;
    if (*(v61 + v77))
    {
      swift_getObjectType();
      v45 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v46 = swift_allocObject();
      v46[2] = v45;
      v46[3] = sub_1BD267104;
      v46[4] = v44;
      v83 = sub_1BD267170;
      v84 = v46;
      aBlock = MEMORY[0x1E69E9820];
      v80 = 1107296256;
      v81 = sub_1BD126964;
      v82 = &block_descriptor_103;
      v47 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      sub_1BE048964();
      sub_1BE048964();
      v48 = v73;
      sub_1BD85BC54();
      v49 = v75;
      sub_1BD56AC68();
      sub_1BE052DE4();
      _Block_release(v47);
      swift_unknownObjectRelease();
      v50 = *(v43 + 8);
      v50(v49, v42);
      v51 = *(v76 + 8);
      v76 += 8;
      v51(v48, v74);

      if (*(v41 + v77))
      {
        swift_getObjectType();
        v83 = sub_1BD264F34;
        v84 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v80 = 1107296256;
        v81 = sub_1BD126964;
        v82 = &block_descriptor_106_0;
        v52 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();
        v53 = v73;
        sub_1BD56AC64();
        v54 = v75;
        sub_1BD56AC68();
        sub_1BE052DF4();
        _Block_release(v52);
        swift_unknownObjectRelease();
        v50(v54, v42);
        v51(v53, v74);
        if (*(v61 + v77))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_1BE052E14();
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t sub_1BD26430C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR___PKNearbyPeerPaymentViewController_dismissAction);
    v2 = result;
    sub_1BE048964();
    v1(0, 0);
  }

  return result;
}

void sub_1BD264398(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v105[1] = a3;
  v106 = a2;
  v115 = *MEMORY[0x1E69E9840];
  v3 = sub_1BE04A3B4();
  v109 = *(v3 - 1);
  v110 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v108 = v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v107 = v105 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v105 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v105 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v105 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v105 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v105 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v111 = v105 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = v105 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = v105 - v42;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = v105 - v46;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v49 = Strong;
    if ([*(Strong + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_accountResolutionController) currentPeerPaymentAccountResolution] == 1)
    {
      v50 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
      swift_beginAccess();
      v110 = v49;
      sub_1BD0EE8CC(v49 + v50, v112);
      v51 = v113;
      v52 = v114;
      __swift_project_boxed_opaque_existential_1(v112, v113);
      (*(v52 + 40))(v51, v52);
      __swift_destroy_boxed_opaque_existential_0(v112);
      v53 = [objc_allocWithZone(MEMORY[0x1E69B8F08]) init];
      v54 = v47;
      v55 = v53;
      v109 = v54;
      sub_1BD0DE19C(v54, v43, &unk_1EBD476F0);
      v56 = sub_1BE04C4C4();
      v57 = *(v56 - 8);
      v58 = *(v57 + 48);
      if (v58(v43, 1, v56) == 1)
      {
        sub_1BD0DE53C(v43, &unk_1EBD476F0);
        v59 = 0;
      }

      else
      {
        v59 = sub_1BE04C3F4();
        (*(v57 + 8))(v43, v56);
      }

      v69 = v55;
      [v55 setCurrencyAmount_];

      [v55 setRegistrationFlowState_];
      v70 = v109;
      sub_1BD0DE19C(v109, v39, &unk_1EBD476F0);
      if (v58(v39, 1, v56) == 1)
      {
        sub_1BD0DE53C(v39, &unk_1EBD476F0);
        v71 = 0;
      }

      else
      {
        sub_1BE04C3E4();
        (*(v57 + 8))(v39, v56);
        v71 = sub_1BE052404();
      }

      v81 = v111;
      [v69 setSenderAddress_];

      [v69 setPaymentMode_];
      v82 = PKPeerPaymentGetSetupSensitiveURLWithConfiguration();
      if (v82)
      {
        v83 = v82;
        sub_1BE04A9F4();

        v84 = 0;
      }

      else
      {
        v84 = 1;
      }

      v85 = sub_1BE04AA64();
      v86 = *(v85 - 8);
      (*(v86 + 56))(v32, v84, 1, v85);
      sub_1BD226B4C(v32, v81);
      v87 = [objc_allocWithZone(MEMORY[0x1E6963608]) init];
      sub_1BD0DE19C(v81, v28, &unk_1EBD3CF70);
      v88 = 0;
      if ((*(v86 + 48))(v28, 1, v85) != 1)
      {
        v88 = sub_1BE04A9C4();
        (*(v86 + 8))(v28, v85);
      }

      v112[0] = 0;
      v89 = [v87 openURL:v88 configuration:0 error:v112];

      if (v89)
      {
        v90 = v112[0];

        sub_1BD0DE53C(v81, &unk_1EBD3CF70);
        sub_1BD0DE53C(v70, &unk_1EBD476F0);
        return;
      }

      v91 = v112[0];
      v92 = sub_1BE04A854();

      swift_willThrow();
      sub_1BD0DE53C(v81, &unk_1EBD3CF70);
      v93 = &unk_1EBD476F0;
      v94 = v70;
    }

    else
    {
      v60 = v49;
      v61 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
      swift_beginAccess();
      sub_1BD0EE8CC(v60 + v61, v112);
      v62 = v113;
      v63 = v114;
      __swift_project_boxed_opaque_existential_1(v112, v113);
      LOBYTE(v61) = (*(v63 + 56))(v62, v63);
      v64 = __swift_destroy_boxed_opaque_existential_0(v112);
      if ((v61 & 1) == 0)
      {
        if ((*(v60 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_currentLockState) & 1) == 0)
        {
          v106(v64);

          return;
        }

        v72 = v108;
        sub_1BE04A3A4();
        sub_1BE052434();
        sub_1BE04A394();
        v73 = sub_1BE052434();
        MEMORY[0x1BFB37400](v73);
        v74 = v107;
        sub_1BE04A364();
        v75 = [objc_allocWithZone(MEMORY[0x1E6963608]) init];
        sub_1BD0DE19C(v74, v9, &unk_1EBD3CF70);
        v76 = sub_1BE04AA64();
        v77 = *(v76 - 8);
        v78 = 0;
        if ((*(v77 + 48))(v9, 1, v76) != 1)
        {
          v78 = sub_1BE04A9C4();
          (*(v77 + 8))(v9, v76);
        }

        v112[0] = 0;
        v79 = [v75 openURL:v78 configuration:0 error:v112];

        if (v79)
        {
          v80 = v112[0];

          sub_1BD0DE53C(v74, &unk_1EBD3CF70);
          (*(v109 + 8))(v72, v110);
          return;
        }

        v103 = v112[0];
        v104 = sub_1BE04A854();

        swift_willThrow();
        sub_1BD0DE53C(v74, &unk_1EBD3CF70);
        (*(v109 + 8))(v72, v110);
        v102 = v104;
        goto LABEL_33;
      }

      v65 = v60;
      v66 = PKPeerPaymentGetVerifyIdentitySensitiveURL();
      if (v66)
      {
        v67 = v66;
        sub_1BE04A9F4();

        v68 = 0;
      }

      else
      {
        v68 = 1;
      }

      v95 = sub_1BE04AA64();
      v96 = *(v95 - 8);
      (*(v96 + 56))(v20, v68, 1, v95);
      sub_1BD226B4C(v20, v24);
      v97 = [objc_allocWithZone(MEMORY[0x1E6963608]) init];
      sub_1BD0DE19C(v24, v16, &unk_1EBD3CF70);
      v98 = 0;
      if ((*(v96 + 48))(v16, 1, v95) != 1)
      {
        v98 = sub_1BE04A9C4();
        (*(v96 + 8))(v16, v95);
      }

      v112[0] = 0;
      v99 = [v97 openURL:v98 configuration:0 error:v112];

      if (v99)
      {
        v100 = v112[0];

        sub_1BD0DE53C(v24, &unk_1EBD3CF70);
        return;
      }

      v101 = v112[0];
      v92 = sub_1BE04A854();

      swift_willThrow();
      v93 = &unk_1EBD3CF70;
      v94 = v24;
    }

    sub_1BD0DE53C(v94, v93);
    v102 = v92;
LABEL_33:
  }
}

uint64_t sub_1BD264F34()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D094();
  v5 = sub_1BE04D204();
  v6 = sub_1BE052C54();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v5, v6, "NearbyPeerPayment: Auto deep link timer cancelled", v7, 2u);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BD2650F0(uint64_t a1, uint64_t a2)
{
  sub_1BD0E5E8C(0, &qword_1EBD3F5A0);
  sub_1BE051D54();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1BE048964();
  sub_1BE052FB4();
}

uint64_t sub_1BD2651C4(uint64_t a1, uint64_t a2)
{
  sub_1BD0E5E8C(0, &qword_1EBD3F5A0);
  sub_1BE051D04();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1BE048964();
  sub_1BE052FB4();
}

id sub_1BD2652B8(uint64_t a1)
{
  [*(a1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_metadataView) setAlpha_];
  [*(a1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView) setAlpha_];
  [*(a1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_divider) setAlpha_];
  v2 = *(a1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_scrollView);

  return [v2 setAlpha_];
}

uint64_t sub_1BD265410()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor);
  sub_1BD266EB0(v0 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_state, type metadata accessor for NearbyPeerPaymentReceiverState);

  return swift_unknownObjectRelease();
}

id NearbyPeerPaymentReceiverViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentReceiverViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD265610(uint64_t result)
{
  if (*(v1 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_currentLockState) != (result & 1))
  {
    *(v1 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_currentLockState) = result & 1;
  }

  return result;
}

uint64_t sub_1BD2656AC(uint64_t a1, uint64_t a2)
{
  sub_1BD0E5E8C(0, &qword_1EBD3F5A0);
  sub_1BE051D54();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1BE048964();
  sub_1BE052FB4();
}

uint64_t sub_1BD265780(uint64_t a1, uint64_t a2)
{
  sub_1BD0E5E8C(0, &qword_1EBD3F5A0);
  sub_1BE051D04();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1BE048964();
  sub_1BE052FB4();
}

BOOL sub_1BD2658B4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1BE053824();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

void sub_1BD2659AC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a4;
  v17 = sub_1BD267054;
  v18 = v9;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1BD126964;
  v16 = &block_descriptor_63;
  v10 = _Block_copy(&v13);
  sub_1BE048C84();

  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v17 = sub_1BD267060;
  v18 = v11;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1BD976224;
  v16 = &block_descriptor_69;
  v12 = _Block_copy(&v13);
  sub_1BD0D44B8(a2);

  [v8 animateWithDuration:v10 animations:v12 completion:0.25];
  _Block_release(v12);
  _Block_release(v10);
}

uint64_t sub_1BD265B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v121 = a4;
  v122 = a5;
  v120 = a3;
  v119 = a2;
  v8 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1BE04AF64();
  v126 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v12);
  v109 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v128 = &v108 - v16;
  v17 = sub_1BE04BD74();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v125 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v108 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v108 - v27;
  v29 = [objc_opt_self() sharedInstance];
  if (!v29)
  {
    __break(1u);
    goto LABEL_25;
  }

  v30 = v29;
  v118 = a1;
  v115 = v11;
  v31 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_peerPaymentAccount;
  v32 = [v29 account];

  v117 = v31;
  *(v6 + v31) = v32;
  v108 = v8;
  swift_storeEnumTagMultiPayload();
  v33 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_lockStateMonitor;
  type metadata accessor for LockStateMonitor();
  swift_allocObject();
  v34 = sub_1BD4DA4FC();
  v116 = v33;
  *(v6 + v33) = v34;
  v35 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_authModel;
  type metadata accessor for DeviceAuthenticationModel();
  v36 = swift_allocObject();
  *(v36 + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  LOBYTE(v129) = 0;
  sub_1BE04D874();
  swift_endAccess();
  v37 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  *(v36 + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_context) = v37;
  v123 = v6;
  *(v6 + v35) = v36;
  v38 = *MEMORY[0x1E69B8050];
  v39 = *(v18 + 104);
  v39(v28, v38, v17);
  v40 = PKPassKitBundle();
  if (!v40)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v41 = v40;
  v114 = sub_1BE04B6F4();
  v113 = v42;

  v43 = *(v18 + 8);
  v127 = v18 + 8;
  v43(v28, v17);
  v39(v24, v38, v17);
  v44 = PKPassKitBundle();
  if (!v44)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v45 = v44;
  v112 = sub_1BE04B6F4();
  v111 = v46;

  v43(v24, v17);
  v47 = v125;
  v39(v125, v38, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v48 = swift_allocObject();
  v110 = xmmword_1BE0B69E0;
  *(v48 + 16) = xmmword_1BE0B69E0;
  v49 = PKDeviceName();
  if (!v49)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v50 = v49;
  v51 = v123;
  v52 = (v123 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_unlockToAcceptAuthContent);
  v53 = sub_1BE052434();
  v55 = v54;

  *(v48 + 56) = MEMORY[0x1E69E6158];
  *(v48 + 64) = sub_1BD110550();
  *(v48 + 32) = v53;
  *(v48 + 40) = v55;
  v56 = sub_1BE04B714();
  v58 = v57;

  v43(v47, v17);
  v59 = v113;
  *v52 = v114;
  v52[1] = v59;
  v60 = v111;
  v52[2] = v112;
  v52[3] = v60;
  v52[4] = v56;
  v52[5] = v58;
  v61 = v51;
  *(v51 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_timer) = 0;
  v62 = v118;
  if (*(v118 + 16))
  {
    v63 = sub_1BD148F70(0x6144706F6F426673, 0xED000079654B6574);
    v64 = v124;
    if (v65)
    {
      v129 = *(*(v62 + 56) + 8 * v63);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v66 = v131;
        if (v131)
        {
          v67 = v130;
          v130 = 0;
          sub_1BE048C84();
          LOBYTE(v67) = sub_1BD2658B4(v67, v66);

          if (v67)
          {
            sub_1BE04AAF4();
            if (!*(v62 + 16))
            {
              goto LABEL_21;
            }

            goto LABEL_15;
          }
        }
      }
    }
  }

  else
  {
    v64 = v124;
  }

  sub_1BE04AEF4();
  if (!*(v62 + 16))
  {
    goto LABEL_21;
  }

LABEL_15:
  sub_1BD148F70(0x74736F486975, 0xE600000000000000);
  if ((v68 & 1) == 0)
  {
    goto LABEL_21;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v69 = swift_dynamicCastObjCClass();
  if (!v69)
  {
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  v70 = [v69 unsignedIntegerValue];
  swift_unknownObjectRelease();
  if (v70 == 1)
  {
    v71 = type metadata accessor for MockReceiverTransferMonitor(0);
    v72 = swift_allocObject();
    swift_storeEnumTagMultiPayload();
    v73 = OBJC_IVAR____TtC9PassKitUI27MockReceiverTransferMonitor_senderMetadata;
    v74 = sub_1BE04C4C4();
    (*(*(v74 - 8) + 56))(v72 + v73, 1, 1, v74);
    v75 = (v72 + OBJC_IVAR____TtC9PassKitUI27MockReceiverTransferMonitor_delegate);
    *v75 = 0;
    v75[1] = 0;
    *(v72 + OBJC_IVAR____TtC9PassKitUI27MockReceiverTransferMonitor_isDebug) = 1;
    *(v72 + OBJC_IVAR____TtC9PassKitUI27MockReceiverTransferMonitor_appearanceData) = 0;
    v76 = &off_1F3BA9618;
    goto LABEL_22;
  }

  if (!v70)
  {
LABEL_21:
    v77 = v109;
    (*(v126 + 16))(v109, v128, v64);
    v71 = type metadata accessor for NearbyPeerPaymentTransferMonitor(0);
    swift_allocObject();
    v72 = sub_1BD4A2730(v77);
    sub_1BD4AA048();
    v76 = &protocol witness table for NearbyPeerPaymentTransferMonitor;
LABEL_22:
    v78 = (v61 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor);
    v78[3] = v71;
    v78[4] = v76;
    *v78 = v72;
    sub_1BE048964();
    v79 = sub_1BD4DA364();

    *(v61 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_currentLockState) = v79 & 1;
    v80 = *(v61 + v117);
    v81 = objc_opt_self();
    v82 = v80;
    v83 = [v81 sharedService];
    v84 = [objc_allocWithZone(MEMORY[0x1E69B8A60]) init];
    v85 = [objc_allocWithZone(PKPeerPaymentAccountResolutionController) initWithAccount:v82 webService:v83 context:10 delegate:0 passLibraryDataProvider:v84];

    if (v85)
    {

      *(v61 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_accountResolutionController) = v85;
      v86 = v120;
      sub_1BE048964();
      v87 = v122;
      sub_1BE048964();
      v88 = NearbyPeerPaymentViewController.init(context:screenEdgeSwipeAction:dismissAction:)(0, v119, v86, v121, v87);
      [v88 setOverrideUserInterfaceStyle_];
      v89 = v88 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
      swift_beginAccess();
      v90 = *(v89 + 24);
      v91 = *(v89 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
      v92 = *(v91 + 16);
      v93 = v88;
      v92(v88, &protocol witness table for NearbyPeerPaymentReceiverViewController, v90, v91);
      swift_endAccess();
      v94 = *&v93[OBJC_IVAR___PKNearbyPeerPaymentViewController_identityManager];
      swift_getKeyPath();
      v130 = v94;
      sub_1BD267238(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
      v95 = v94;
      sub_1BE04B594();

      v96 = *&v95[OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData];

      swift_beginAccess();
      v97 = *(v89 + 24);
      v98 = *(v89 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v89, v97);
      (*(v98 + 72))(v96, v97, v98);
      swift_endAccess();
      *(*&v93[OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_lockStateMonitor] + 24) = &off_1F3B9A270;
      swift_unknownObjectWeakAssign();
      *(*&v93[OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_authModel] + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_delegate + 8) = &off_1F3B9A280;
      swift_unknownObjectWeakAssign();
      v99 = *&v93[OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_accountResolutionController];
      [v99 setDelegate_];

      v100 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_state;
      swift_beginAccess();
      v101 = v115;
      sub_1BD26681C(&v93[v100], v115);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      inited = swift_initStackObject();
      *(inited + 16) = v110;
      v103 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      *(inited + 40) = sub_1BE052434();
      *(inited + 48) = v104;
      v105 = v103;
      v106 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      sub_1BD0DE53C(inited + 32, &qword_1EBD3F590);
      _s9PassKitUI9AnalyticsO33trackNearbyPeerPaymentReceiveFlow5state4withyAA0fgH13ReceiverStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(v101, v106);

      sub_1BD266EB0(v101, type metadata accessor for NearbyPeerPaymentReceiverState);
      (*(v126 + 8))(v128, v64);
      return v93;
    }

    goto LABEL_28;
  }

LABEL_29:
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD26681C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for NearbyPeerPaymentReceiverViewController()
{
  result = qword_1EBD3F648;
  if (!qword_1EBD3F648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_1BD26691C(void *a1)
{
  if (!a1)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  if ([a1 currentPeerPaymentAccountResolution] == 1)
  {
    v2 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
    swift_beginAccess();
    sub_1BD0EE8CC(v1 + v2, v10);
    v3 = v11;
    v4 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = *(v4 + 120);
    sub_1BE048964();
    v6(sub_1BD26717C, v5, v3, v4);

    __swift_destroy_boxed_opaque_existential_0(v10);
    return;
  }

  v7 = [v1 view];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 pkui_viewControllerFromResponderChain];

  if (v9)
  {
    [v9 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1BD266B18()
{
  result = type metadata accessor for NearbyPeerPaymentReceiverState(319);
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

uint64_t sub_1BD266DC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F678);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD266E48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD266EB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD266F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD266F84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD262D40(a1, v4, v5, v6);
}

uint64_t sub_1BD267060(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

id sub_1BD26709C()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_metadataView) setAlpha_];
  v2 = *(v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView);

  return [v2 setAlpha_];
}

unint64_t sub_1BD26710C()
{
  result = qword_1EBD3F6B0;
  if (!qword_1EBD3F6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD39AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F6B0);
  }

  return result;
}

uint64_t sub_1BD267184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD260010(a1, v4, v5, v6);
}

uint64_t sub_1BD267238(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_1BD267280@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

id sub_1BD267354()
{
  _s12DetailsModelVMa(0);
  if (sub_1BE0493A4() == 5259847 && v0 == 0xE300000000000000)
  {

    goto LABEL_8;
  }

  v2 = sub_1BE053B84();

  if (v2)
  {
LABEL_8:
    v3 = sub_1BE052404();
    v4 = PKUIImageNamed(v3);
    goto LABEL_9;
  }

  v3 = sub_1BE052404();
  PKUIScreenScale();
  v4 = PKIconForPDFName();
LABEL_9:
  v5 = v4;

  return v5;
}

uint64_t sub_1BD2674D4@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  v7 = *a1;
  swift_beginAccess();
  return sub_1BD2733BC(v9 + v7, a3, a2);
}

uint64_t sub_1BD2675D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v7 = *a3;
  swift_beginAccess();
  sub_1BD272780(a2, a1 + v7, a4);
  return swift_endAccess();
}

uint64_t sub_1BD2676A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  swift_beginAccess();
  sub_1BD273D04(a2, a1 + v7, a4);
  return swift_endAccess();
}

uint64_t sub_1BD267724()
{
  swift_getKeyPath();
  sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel);
  sub_1BD2726F8(v1, *(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 8));
  return v1;
}

uint64_t sub_1BD2677F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel);
  v6 = *(a1 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel);
  v7 = *(a1 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 8);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  sub_1BD2726F8(a2, a3);
  return sub_1BD27273C(v6, v7);
}

uint64_t sub_1BD267870()
{
  swift_getKeyPath();
  sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__onTransactionDeleted);
  sub_1BD0D44B8(v1);
  return v1;
}

uint64_t sub_1BD267930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__onTransactionDeleted);
  v4 = *(a1 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__onTransactionDeleted);
  *v3 = a2;
  v3[1] = a3;
  sub_1BD0D44B8(a2);
  return sub_1BD0D4744(v4);
}

uint64_t sub_1BD2679AC@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  v7 = *a1;
  swift_beginAccess();
  return sub_1BD0DE19C(v9 + v7, a3, a2);
}

uint64_t sub_1BD267A8C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10[-v6];
  sub_1BD0DE19C(a1, &v10[-v6], &qword_1EBD3F790);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B584();

  return sub_1BD0DE53C(v7, &qword_1EBD3F790);
}

uint64_t sub_1BD267C00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  v8 = *a2;
  swift_beginAccess();
  return sub_1BD0DE19C(v7 + v8, a4, a3);
}

uint64_t sub_1BD267CE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_1BD0DE19C(a1, &v7 - v4, &qword_1EBD3F788);
  return sub_1BD267D90(v5);
}

uint64_t sub_1BD267D90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v12 - v5;
  v7 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyToken;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v7, v6, &qword_1EBD3F788);
  v8 = sub_1BD272B8C(v6, a1);
  sub_1BD0DE53C(v6, &qword_1EBD3F788);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    v12[-2] = v1;
    v12[-1] = a1;
    v12[2] = v1;
    sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa);
    sub_1BE04B584();
  }

  else
  {
    sub_1BD0DE19C(a1, v6, &qword_1EBD3F788);
    swift_beginAccess();
    sub_1BD273C60(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD3F788);
}

uint64_t sub_1BD267F98()
{
  swift_getKeyPath();
  sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  return *(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__isLoading);
}

uint64_t sub_1BD268040@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__isLoading);
  return result;
}

uint64_t sub_1BD2680F0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__isLoading) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__isLoading) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD268208(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v79 = a2;
  v70 = a1;
  v80 = sub_1BE048F54();
  v4 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v5);
  v75 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TransactionContext(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v74 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v73 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE049834();
  v71 = *(v14 - 8);
  v72 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v69 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = _s12DetailsModelVMa(0) - 8;
  MEMORY[0x1EEE9AC00](v68, v17);
  v67 = (&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_1BE049A94();
  v20 = *(v19 - 8);
  v77 = v19;
  v78 = v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v76 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v64 = &v60 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v60 - v28;
  v30 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyModel;
  v31 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
  (*(*(v31 - 8) + 56))(v3 + v30, 1, 1, v31);
  v32 = (v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel);
  *v32 = 0u;
  v32[1] = 0u;
  v33 = (v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__onTransactionDeleted);
  *v33 = 0;
  v33[1] = 0;
  v34 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__transactionContext;
  v35 = (v8 + 56);
  v36 = *(v8 + 56);
  v63 = v35;
  v36(v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__transactionContext, 1, 1, v7);
  v37 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyToken;
  v65 = v4;
  v61 = *(v4 + 56);
  v61(v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyToken, 1, 1, v80);
  *(v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__isLoading) = 0;
  sub_1BE04B5C4();
  v66 = type metadata accessor for TransactionContext;
  v38 = v70;
  sub_1BD2733BC(v70, v29, type metadata accessor for TransactionContext);
  v36(v29, 0, 1, v7);
  sub_1BD0DE53C(v3 + v34, &qword_1EBD3F790);
  sub_1BD0DE204(v29, v3 + v34, &qword_1EBD3F790);
  v63 = *(v4 + 16);
  v39 = v64;
  v40 = v80;
  v63(v64, v79, v80);
  v61(v39, 0, 1, v40);
  v62 = v3;
  sub_1BD0DE53C(v3 + v37, &qword_1EBD3F788);
  sub_1BD0DE204(v39, v3 + v37, &qword_1EBD3F788);
  (*(v78 + 16))(v76, v38, v77);
  v41 = v38;
  v42 = sub_1BE049174();
  v44 = v43;
  v46 = v67;
  v45 = v68;
  sub_1BE049974();
  v47 = v45;
  sub_1BE0499A4();
  v48 = v69;
  sub_1BE049984();
  v49 = sub_1BE049824();
  v51 = v50;
  (*(v71 + 8))(v48, v72);
  *v46 = v42;
  v46[1] = v44;
  v52 = (v46 + *(v47 + 36));
  *v52 = v49;
  v52[1] = v51;
  v53 = v62;
  sub_1BD2727E8(v46, v62 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__detailsModel, _s12DetailsModelVMa);
  v54 = v74;
  sub_1BD2733BC(v41, v74, v66);
  v55 = v75;
  v56 = v79;
  v57 = v80;
  v63(v75, v79, v80);
  v58 = v73;
  sub_1BD60709C(v54, v55, v73);
  (*(v65 + 8))(v56, v57);
  sub_1BD273424(v41, type metadata accessor for TransactionContext);
  (*(v78 + 8))(v76, v77);
  sub_1BD2727E8(v58, v53 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__selectedModel, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  return v53;
}

uint64_t sub_1BD2688EC()
{
  v1[33] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780);
  v1[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0);
  v1[35] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0);
  v1[36] = v2;
  v1[37] = *(v2 - 8);
  v1[38] = swift_task_alloc();
  v3 = sub_1BE049C74();
  v1[39] = v3;
  v1[40] = *(v3 - 8);
  v1[41] = swift_task_alloc();
  v4 = sub_1BE049A94();
  v1[42] = v4;
  v1[43] = *(v4 - 8);
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v5 = sub_1BE049D74();
  v1[47] = v5;
  v1[48] = *(v5 - 8);
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v6 = sub_1BE04AFE4();
  v1[51] = v6;
  v1[52] = *(v6 - 8);
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v7 = sub_1BE049834();
  v1[56] = v7;
  v1[57] = *(v7 - 8);
  v1[58] = swift_task_alloc();
  v8 = sub_1BE0498F4();
  v1[59] = v8;
  v1[60] = *(v8 - 8);
  v1[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v9 = sub_1BE048F54();
  v1[64] = v9;
  v1[65] = *(v9 - 8);
  v1[66] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  v1[67] = swift_task_alloc();
  v10 = type metadata accessor for TransactionContext(0);
  v1[68] = v10;
  v1[69] = *(v10 - 8);
  v1[70] = swift_task_alloc();
  sub_1BE0528A4();
  v1[71] = sub_1BE052894();
  v12 = sub_1BE052844();
  v1[72] = v12;
  v1[73] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1BD268DF8, v12, v11);
}

uint64_t sub_1BD268DF8()
{
  v1 = v0[16].i64[1];
  swift_getKeyPath();
  v0[11].i64[1] = v1;
  v0[37].i64[0] = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel___observationRegistrar;
  v0[37].i64[1] = sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  v2 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__isLoading;
  v0[38].i64[0] = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__isLoading;
  if (*(v1 + v2))
  {

LABEL_7:

    v15 = v0->i64[1];

    return v15();
  }

  v43 = v2;
  v3 = v0[34].i64[1];
  v44 = v0[34].i64[0];
  v4 = v0[33].i64[1];
  v5 = v0[16].i64[1];
  swift_getKeyPath();
  v0[12].i64[0] = v5;
  sub_1BE04B594();

  v6 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__transactionContext;
  swift_beginAccess();
  sub_1BD0DE19C(v5 + v6, v4, &qword_1EBD3F790);
  v7 = (*(v3 + 48))(v4, 1, v44);
  v8 = v0[33].i64[1];
  if (v7 == 1)
  {

    sub_1BD0DE53C(v8, &qword_1EBD3F790);
    goto LABEL_7;
  }

  v9 = v0[32].i64[1];
  v10 = v0[31].i64[1];
  v45 = v0[32].i64[0];
  v11 = v0[16].i64[1];
  sub_1BD2727E8(v8, v0[35].i64[0], type metadata accessor for TransactionContext);
  swift_getKeyPath();
  v0[12].i64[1] = v11;
  sub_1BE04B594();

  v12 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyToken;
  swift_beginAccess();
  sub_1BD0DE19C(v11 + v12, v10, &qword_1EBD3F788);
  if ((*(v9 + 48))(v10, 1, v45) == 1)
  {
    v13 = v0[35].i64[0];
    v14 = v0[31].i64[1];

    sub_1BD0DE53C(v14, &qword_1EBD3F788);
    sub_1BD273424(v13, type metadata accessor for TransactionContext);
    goto LABEL_7;
  }

  (*(v0[32].i64[1] + 32))(v0[33].i64[0], v0[31].i64[1], v0[32].i64[0]);
  if (*(v1 + v43) == 1)
  {
    *(v1 + v43) = 1;
  }

  else
  {
    v17 = v0[16].i64[1];
    swift_getKeyPath();
    v18 = swift_task_alloc();
    *(v18 + 16) = v17;
    *(v18 + 24) = 1;
    v0[13].i64[0] = v17;
    sub_1BE04B584();
  }

  (*(v0[30].i64[0] + 104))(v0[30].i64[1], *MEMORY[0x1E6967930], v0[29].i64[1]);
  sub_1BE049984();
  sub_1BE049584();
  sub_1BE049A14();
  v0[2].i64[1] = &type metadata for BankConnectFeatureFlags;
  v0[3].i64[0] = sub_1BD1671B0();
  v0[1].i8[0] = 2;
  v19 = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0(v0[1].i64);
  v20 = v0[21].i64[0];
  if (v19)
  {
    v21 = v0[35].i64[0];
    v22 = v0[23].i64[0];
    v23 = v0[21].i64[1];
    v25 = v0[20].i64[0];
    v24 = v0[20].i64[1];
    v26 = v0[19].i64[1];
    sub_1BE0490F4();
    v0[38].i64[1] = sub_1BE0490B4();
    v27 = *(v23 + 16);
    v0[39].i64[0] = v27;
    v0[39].i64[1] = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v27(v22, v21, v20);
    (*(v25 + 104))(v24, *MEMORY[0x1E6967BA8], v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DE0);
    *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
    swift_getKeyPath();
    sub_1BD272850(&qword_1EBD525D0, MEMORY[0x1E6969530]);
    sub_1BE04A4F4();
    v28 = sub_1BE049C94();
    v29 = MEMORY[0x1E6967BB0];
    v0[7].i64[1] = v28;
    v0[8].i64[0] = v29;
    __swift_allocate_boxed_opaque_existential_1(v0[6].i64);
    sub_1BE049C84();
    v30 = swift_task_alloc();
    v0[40].i64[0] = v30;
    *v30 = v0;
    v30[1] = sub_1BD269774;
    v31 = v0[25].i64[0];
    v32 = v0 + 6;
  }

  else
  {
    v33 = v0[30].i64[1];
    v34 = v0[29].i64[0];
    v36 = v0[18].i64[1];
    v35 = v0[19].i64[0];
    v37 = v0[17].i64[1];
    v38 = v0[18].i64[0];
    v39 = swift_task_alloc();
    v0[41].i64[0] = v39;
    v39[1] = vextq_s8(v0[27], v0[27], 8uLL);
    v39[2].i64[0] = v34;
    v39[2].i64[1] = v33;
    v0[13].i64[1] = v20;
    sub_1BE04B444();
    sub_1BE0490F4();
    v0[41].i64[1] = sub_1BE0490B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DE0);
    *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
    swift_getKeyPath();
    sub_1BD272850(&qword_1EBD525D0, MEMORY[0x1E6969530]);
    sub_1BE04A4F4();
    (*(v36 + 16))(v37, v35, v38);
    (*(v36 + 56))(v37, 0, 1, v38);
    v40 = sub_1BE049CE4();
    v41 = MEMORY[0x1E6967BC8];
    v0[5].i64[0] = v40;
    v0[5].i64[1] = v41;
    __swift_allocate_boxed_opaque_existential_1(&v0[3].i64[1]);
    sub_1BE049CD4();
    v42 = swift_task_alloc();
    v0[42].i64[0] = v42;
    *v42 = v0;
    v42[1] = sub_1BD269C54;
    v31 = v0[24].i64[1];
    v32 = (v0 + 56);
  }

  return MEMORY[0x1EEDC14D8](v31, v32);
}

uint64_t sub_1BD269774()
{
  v2 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v3 = *(v2 + 584);
    v4 = *(v2 + 576);
    v5 = sub_1BD26A61C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 96);
    v3 = *(v2 + 584);
    v4 = *(v2 + 576);
    v5 = sub_1BD2698A8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD2698A8()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = sub_1BE049D54();
  v5 = (*(v3 + 8))(v1, v2);
  v6 = *(v4 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = 0;
    v9 = *(v0 + 344);
    v33 = *(v4 + 16);
    v35 = v4;
    v37 = (v9 + 32);
    while (v8 < *(v4 + 16))
    {
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = *(v9 + 72);
      (*(v0 + 624))(*(v0 + 360), v4 + v10 + v11 * v8, *(v0 + 336));
      if (sub_1BE049A74())
      {
        v12 = *v37;
        (*v37)(*(v0 + 352), *(v0 + 360), *(v0 + 336));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BD531B68(0, *(v7 + 16) + 1, 1);
        }

        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1BD531B68(v13 > 1, v14 + 1, 1);
        }

        v15 = *(v0 + 352);
        v16 = *(v0 + 336);
        *(v7 + 16) = v14 + 1;
        v5 = v12(v7 + v10 + v14 * v11, v15, v16);
        v6 = v33;
        v4 = v35;
      }

      else
      {
        v5 = (*(v9 + 8))(*(v0 + 360), *(v0 + 336));
      }

      if (v6 == ++v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    *(v0 + 688) = v7;
    v17 = sub_1BE048964();
    sub_1BD270B6C(v17);
    sub_1BE0490F4();
    *(v0 + 696) = sub_1BE0490B4();
    v18 = *(v7 + 16);
    if (v18)
    {
      v19 = *(v0 + 416);
      v20 = *(v0 + 344);
      v38 = MEMORY[0x1E69E7CC0];
      sub_1BD531F28(0, v18, 0);
      v21 = v38;
      v22 = *(v20 + 16);
      v20 += 16;
      v23 = v7 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
      v34 = *(v20 + 56);
      v36 = v22;
      v24 = (v20 - 8);
      do
      {
        v25 = *(v0 + 368);
        v26 = *(v0 + 336);
        v36(v25, v23, v26);
        sub_1BE049A14();
        (*v24)(v25, v26);
        v28 = *(v38 + 16);
        v27 = *(v38 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1BD531F28(v27 > 1, v28 + 1, 1);
        }

        v29 = *(v0 + 424);
        v30 = *(v0 + 408);
        *(v38 + 16) = v28 + 1;
        (*(v19 + 32))(v38 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v28, v29, v30);
        v23 += v34;
        --v18;
      }

      while (v18);
    }

    else
    {

      v21 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 704) = v21;
    v31 = swift_task_alloc();
    *(v0 + 712) = v31;
    *v31 = v0;
    v31[1] = sub_1BD26A010;
    v5 = v21;
  }

  return MEMORY[0x1EEDC1510](v5);
}

uint64_t sub_1BD269C54()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v3 = *(v2 + 584);
    v4 = *(v2 + 576);
    v5 = sub_1BD26A910;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 56);
    v3 = *(v2 + 584);
    v4 = *(v2 + 576);
    v5 = sub_1BD269D88;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD269D88()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[47];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[36];
  v7 = sub_1BE049D54();
  (*(v1 + 8))(v2, v3);
  (*(v5 + 8))(v4, v6);
  sub_1BE048C84();

  v0[86] = v7;
  sub_1BD270B6C(v7);
  sub_1BE0490F4();
  v0[87] = sub_1BE0490B4();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v0[52];
    v10 = v0[43];
    v25 = MEMORY[0x1E69E7CC0];
    sub_1BD531F28(0, v8, 0);
    v11 = v25;
    v13 = *(v10 + 16);
    v12 = v10 + 16;
    v14 = v7 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v23 = *(v12 + 56);
    v24 = v13;
    do
    {
      v15 = v0[46];
      v16 = v0[42];
      v24(v15, v14, v16);
      sub_1BE049A14();
      (*(v12 - 8))(v15, v16);
      v18 = *(v25 + 16);
      v17 = *(v25 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1BD531F28(v17 > 1, v18 + 1, 1);
      }

      v19 = v0[53];
      v20 = v0[51];
      *(v25 + 16) = v18 + 1;
      (*(v9 + 32))(v25 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18, v19, v20);
      v14 += v23;
      --v8;
    }

    while (v8);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v0[88] = v11;
  v21 = swift_task_alloc();
  v0[89] = v21;
  *v21 = v0;
  v21[1] = sub_1BD26A010;

  return MEMORY[0x1EEDC1510](v11);
}

uint64_t sub_1BD26A010(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 720) = v1;

  if (v1)
  {

    v5 = v4[73];
    v6 = v4[72];
    v7 = sub_1BD26AC34;
  }

  else
  {

    v4[91] = a1;
    v5 = v4[73];
    v6 = v4[72];
    v7 = sub_1BD26A194;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BD26A194()
{
  v1 = v0[91];
  v2 = v0[86];
  v34 = v0[76];
  v3 = v0[70];
  v22 = v0[66];
  v4 = v0[65];
  v5 = v0[64];
  v6 = v0[62];
  v33 = v0[61];
  v31 = v0[60];
  v32 = v0[59];
  v29 = v0[56];
  v30 = v0[58];
  v27 = v0[55];
  v28 = v0[57];
  v24 = v0[52];
  v25 = v0[51];
  v26 = v0[54];
  v7 = v0[34];
  v23 = v0[33];

  v8 = swift_task_alloc();
  *(v8 + 16) = v1;
  *(v8 + 24) = v3;
  v9 = sub_1BDA3DA80(sub_1BD273D84, v8, v2);

  (*(v4 + 16))(v6, v22, v5);
  (*(v4 + 56))(v6, 0, 1, v5);
  sub_1BD720F44(v9, v6, v7);
  v10 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  swift_getKeyPath();
  v11 = swift_task_alloc();
  *(v11 + 16) = v23;
  *(v11 + 24) = v7;
  v0[30] = v23;
  sub_1BE04B584();

  sub_1BD0DE53C(v7, &qword_1EBD3F780);
  v12 = *(v24 + 8);
  v12(v26, v25);
  v12(v27, v25);
  (*(v28 + 8))(v30, v29);
  (*(v31 + 8))(v33, v32);
  if (*(v23 + v34) == 1)
  {
    v13 = v0[66];
    v14 = v0[65];
    v15 = v0[64];
    v16 = v0[33];
    swift_getKeyPath();
    v17 = swift_task_alloc();
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    v0[31] = v16;
    sub_1BE04B584();

    (*(v14 + 8))(v13, v15);
  }

  else
  {
    v18 = v0[76];
    v19 = v0[33];
    (*(v0[65] + 8))(v0[66], v0[64]);
    *(v19 + v18) = 0;
  }

  sub_1BD273424(v0[70], type metadata accessor for TransactionContext);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1BD26A61C()
{
  v1 = v0[60];
  v21 = v0[61];
  v22 = v0[76];
  v2 = v0[58];
  v3 = v0[56];
  v4 = v0[57];
  v6 = v0[54];
  v5 = v0[55];
  v8 = v0[51];
  v7 = v0[52];
  v19 = v0[33];
  v20 = v0[59];

  __swift_destroy_boxed_opaque_existential_0((v0 + 12));
  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  (*(v4 + 8))(v2, v3);
  (*(v1 + 8))(v21, v20);
  if (*(v19 + v22) == 1)
  {
    v10 = v0[66];
    v11 = v0[65];
    v12 = v0[64];
    v13 = v0[33];
    swift_getKeyPath();
    v14 = swift_task_alloc();
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    v0[32] = v13;
    sub_1BE04B584();

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v15 = v0[76];
    v16 = v0[33];
    (*(v0[65] + 8))(v0[66], v0[64]);
    *(v16 + v15) = 0;
  }

  sub_1BD273424(v0[70], type metadata accessor for TransactionContext);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1BD26A910()
{
  v1 = v0[60];
  v24 = v0[61];
  v25 = v0[76];
  v2 = v0[57];
  v20 = v0[56];
  v21 = v0[58];
  v4 = v0[54];
  v3 = v0[55];
  v6 = v0[51];
  v5 = v0[52];
  v7 = v0[37];
  v8 = v0[38];
  v9 = v0[36];
  v22 = v0[33];
  v23 = v0[59];

  (*(v7 + 8))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0((v0 + 7));
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v3, v6);
  (*(v2 + 8))(v21, v20);
  (*(v1 + 8))(v24, v23);
  if (*(v22 + v25) == 1)
  {
    v11 = v0[66];
    v12 = v0[65];
    v13 = v0[64];
    v14 = v0[33];
    swift_getKeyPath();
    v15 = swift_task_alloc();
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    v0[28] = v14;
    sub_1BE04B584();

    (*(v12 + 8))(v11, v13);
  }

  else
  {
    v16 = v0[76];
    v17 = v0[33];
    (*(v0[65] + 8))(v0[66], v0[64]);
    *(v17 + v16) = 0;
  }

  sub_1BD273424(v0[70], type metadata accessor for TransactionContext);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1BD26AC34()
{
  v1 = v0[60];
  v21 = v0[61];
  v22 = v0[76];
  v2 = v0[58];
  v3 = v0[56];
  v4 = v0[57];
  v6 = v0[54];
  v5 = v0[55];
  v8 = v0[51];
  v7 = v0[52];
  v19 = v0[33];
  v20 = v0[59];

  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  (*(v4 + 8))(v2, v3);
  (*(v1 + 8))(v21, v20);
  if (*(v19 + v22) == 1)
  {
    v10 = v0[66];
    v11 = v0[65];
    v12 = v0[64];
    v13 = v0[33];
    swift_getKeyPath();
    v14 = swift_task_alloc();
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    v0[29] = v13;
    sub_1BE04B584();

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v15 = v0[76];
    v16 = v0[33];
    (*(v0[65] + 8))(v0[66], v0[64]);
    *(v16 + v15) = 0;
  }

  sub_1BD273424(v0[70], type metadata accessor for TransactionContext);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1BD26AF20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v130 = a5;
  v121 = a4;
  v112 = a3;
  v140 = a2;
  v133 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE0);
  v8 = *(v7 - 8);
  v134 = v7;
  v135 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v132 = v95 - v10;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7F0);
  v131 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v11);
  v124 = v95 - v12;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7F8);
  v126 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125, v13);
  v122 = v95 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F800);
  v16 = *(v15 - 8);
  v127 = v15;
  v128 = v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v123 = v95 - v18;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F808);
  v118 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v19);
  v109 = v95 - v20;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F810);
  v114 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v21);
  v106 = v95 - v22;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F818);
  v116 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v23);
  v108 = v95 - v24;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F820);
  v103 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v25);
  v101 = v95 - v26;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F828);
  v145 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v27);
  v29 = v95 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = v95 - v33;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF0);
  v144 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97, v35);
  v37 = v95 - v36;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F830);
  v100 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v38);
  v96 = v95 - v39;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F838);
  v105 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104, v40);
  v141 = v95 - v41;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F840);
  v111 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v42);
  v142 = v95 - v43;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F848);
  v120 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v44);
  v107 = v95 - v45;
  v46 = *a1;
  v47 = sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8);
  v146 = v46;
  v136 = v47;
  sub_1BE04A7C4();
  swift_getKeyPath();
  v147 = v30;
  sub_1BE04A724();

  v137 = *(v31 + 8);
  v138 = v31 + 8;
  v137(v34, v30);
  v95[4] = sub_1BE04AFE4();
  v48 = v29;
  sub_1BE04A7B4();
  v139 = MEMORY[0x1E6968D58];
  v95[3] = sub_1BD0DE4F4(&qword_1EBD38F20, &qword_1EBD38EF0);
  v140 = MEMORY[0x1E6968D20];
  v95[2] = sub_1BD0DE4F4(&qword_1EBD3F850, &qword_1EBD3F828);
  v95[1] = sub_1BD272850(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v49 = v37;
  v50 = v97;
  v51 = v98;
  sub_1BE04A714();
  v52 = *(v145 + 8);
  v145 += 8;
  v53 = v48;
  v52(v48, v51);
  v54 = *(v144 + 8);
  v144 += 8;
  v54(v49, v50);
  v143 = v34;
  v55 = v147;
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  v56 = v137;
  v137(v34, v55);
  sub_1BE04A7B4();
  v57 = v101;
  sub_1BE04A744();
  v52(v53, v51);
  v54(v49, v50);
  v145 = MEMORY[0x1E6968D08];
  sub_1BD0DE4F4(&qword_1EBD3F858, &qword_1EBD3F830);
  sub_1BD0DE4F4(&qword_1EBD3F860, &qword_1EBD3F820);
  v58 = v96;
  v59 = v99;
  v60 = v102;
  sub_1BE04A784();
  (*(v103 + 8))(v57, v60);
  (*(v100 + 8))(v58, v59);
  v61 = v143;
  v62 = v147;
  sub_1BE04A7C4();
  swift_getKeyPath();
  v63 = v106;
  sub_1BE04A724();

  v56(v61, v62);
  v64 = v56;
  sub_1BE049834();
  v65 = v109;
  sub_1BE04A7B4();
  sub_1BD0DE4F4(&qword_1EBD3F868, &qword_1EBD3F810);
  sub_1BD0DE4F4(&qword_1EBD3F870, &qword_1EBD3F808);
  sub_1BD272850(&qword_1EBD3F878, MEMORY[0x1E69678D8]);
  v66 = v108;
  v67 = v63;
  v68 = v65;
  v69 = v113;
  v70 = v117;
  sub_1BE04A714();
  (*(v118 + 8))(v68, v70);
  (*(v114 + 8))(v67, v69);
  v144 = MEMORY[0x1E6968B68];
  sub_1BD0DE4F4(&qword_1EBD3F880, &qword_1EBD3F838);
  sub_1BD0DE4F4(&qword_1EBD3F888, &qword_1EBD3F818);
  v71 = v141;
  v72 = v104;
  v73 = v115;
  sub_1BE04A784();
  (*(v116 + 8))(v66, v73);
  (*(v105 + 8))(v71, v72);
  v74 = v143;
  v75 = v147;
  sub_1BE04A7C4();
  swift_getKeyPath();
  v76 = v122;
  sub_1BE04A724();

  v64(v74, v75);
  sub_1BE0498F4();
  v77 = v124;
  sub_1BE04A7B4();
  sub_1BD0DE4F4(&qword_1EBD3F890, &qword_1EBD3F7F8);
  sub_1BD0DE4F4(&qword_1EBD3F898, &qword_1EBD3F7F0);
  sub_1BD272850(&qword_1EBD3F8A0, MEMORY[0x1E6967938]);
  v78 = v123;
  v79 = v76;
  v80 = v77;
  v81 = v125;
  v82 = v129;
  sub_1BE04A714();
  (*(v131 + 8))(v80, v82);
  (*(v126 + 8))(v79, v81);
  sub_1BD0DE4F4(&qword_1EBD3F8A8, &qword_1EBD3F840);
  sub_1BD0DE4F4(&qword_1EBD3F8B0, &qword_1EBD3F800);
  v83 = v107;
  v84 = v142;
  v85 = v110;
  v86 = v127;
  sub_1BE04A784();
  (*(v128 + 8))(v78, v86);
  (*(v111 + 8))(v84, v85);
  v87 = v143;
  v88 = v147;
  sub_1BE04A7C4();
  swift_getKeyPath();
  v89 = v132;
  sub_1BE04A724();

  v137(v87, v88);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F8B8);
  v91 = v133;
  v133[3] = v90;
  v91[4] = sub_1BD273538();
  __swift_allocate_boxed_opaque_existential_1(v91);
  sub_1BD0DE4F4(&qword_1EBD3F948, &qword_1EBD3F848);
  sub_1BD0DE4F4(qword_1EBD38F90, &qword_1EBD38EE0);
  v92 = v119;
  v93 = v134;
  sub_1BE04A784();
  (*(v135 + 8))(v89, v93);
  return (*(v120 + 8))(v83, v92);
}

uint64_t sub_1BD26C14C(uint64_t a1)
{
  v2 = sub_1BE049834();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1BE049994();
}

uint64_t sub_1BD26C238()
{
  v1[11] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7B0);
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7E0);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  v1[17] = swift_task_alloc();
  v3 = sub_1BE049E74();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v4 = sub_1BE04D214();
  v1[21] = v4;
  v1[22] = *(v4 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  v1[26] = swift_task_alloc();
  v5 = type metadata accessor for TransactionContext(0);
  v1[27] = v5;
  v1[28] = *(v5 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = sub_1BE0528A4();
  v1[31] = sub_1BE052894();
  v7 = sub_1BE052844();
  v1[32] = v7;
  v1[33] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD26C548, v7, v6);
}

uint64_t sub_1BD26C548()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[11];
  swift_getKeyPath();
  v0[8] = v4;
  sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  v5 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__transactionContext;
  swift_beginAccess();
  sub_1BD0DE19C(v4 + v5, v3, &qword_1EBD3F790);
  v6 = (*(v2 + 48))(v3, 1, v1);
  v7 = v0[26];
  if (v6 == 1)
  {

    sub_1BD0DE53C(v7, &qword_1EBD3F790);
    sub_1BE04D114();
    v8 = sub_1BE04D204();
    v9 = sub_1BE052C54();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[24];
    v12 = v0[21];
    v13 = v0[22];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1BD026000, v8, v9, "Missing properties, could not observe transactions", v14, 2u);
      MEMORY[0x1BFB45F20](v14, -1, -1);
    }

    (*(v13 + 8))(v11, v12);

    v15 = v0[1];

    return v15();
  }

  else
  {
    sub_1BD2727E8(v7, v0[29], type metadata accessor for TransactionContext);
    sub_1BE04D114();
    v16 = sub_1BE04D204();
    v17 = sub_1BE052C54();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1BD026000, v16, v17, "Observing transactions", v18, 2u);
      MEMORY[0x1BFB45F20](v18, -1, -1);
    }

    v19 = v0[25];
    v21 = v0[21];
    v20 = v0[22];
    v22 = v0[17];
    v34 = v0[16];
    v23 = v0[11];

    v24 = *(v20 + 8);
    v0[34] = v24;
    v24(v19, v21);
    sub_1BE0490F4();
    sub_1BE0490B4();
    sub_1BE049584();
    v25 = sub_1BE04AFE4();
    (*(*(v25 - 8) + 56))(v22, 0, 1, v25);
    swift_getKeyPath();
    v0[9] = v23;
    sub_1BE04B594();

    v26 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyToken;
    swift_beginAccess();
    sub_1BD0DE19C(v23 + v26, v34, &qword_1EBD3F788);
    sub_1BE048FD4();
    v27 = v0[16];
    v28 = v0[17];

    sub_1BD0DE53C(v27, &qword_1EBD3F788);
    sub_1BD0DE53C(v28, &qword_1EBD39980);
    sub_1BE049E64();

    v0[35] = sub_1BE052894();
    v30 = sub_1BD272850(&qword_1EBD3F7E8, MEMORY[0x1E6967C80]);
    v31 = swift_task_alloc();
    v0[36] = v31;
    *v31 = v0;
    v31[1] = sub_1BD26CB98;
    v32 = v0[18];
    v33 = v0[15];

    return MEMORY[0x1EEE6D8C8](v33, v32, v30);
  }
}

uint64_t sub_1BD26CB98()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1BE052844();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1BD26CF88;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1BE052844();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1BD26CD30;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1BD26CD30()
{

  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return MEMORY[0x1EEE6DFA0](sub_1BD26CD94, v1, v2);
}

uint64_t sub_1BD26CD94()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[29];
    v6 = v0[19];
    v5 = v0[20];
    v7 = v0[18];

    (*(v6 + 8))(v5, v7);
    sub_1BD273424(v4, type metadata accessor for TransactionContext);

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v3 + 32))(v0[14], v1, v2);
    v10 = swift_task_alloc();
    v0[38] = v10;
    *v10 = v0;
    v10[1] = sub_1BD26D154;
    v11 = v0[14];

    return sub_1BD26D940(v11);
  }
}

uint64_t sub_1BD26CF88()
{
  v0[10] = v0[37];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  swift_willThrowTypedImpl();

  v1 = v0[32];
  v2 = v0[33];

  return MEMORY[0x1EEE6DFA0](sub_1BD26D024, v1, v2);
}

uint64_t sub_1BD26D024()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];

  (*(v2 + 8))(v1, v3);
  sub_1BD273424(v0[29], type metadata accessor for TransactionContext);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BD26D154()
{
  v2 = *v1;
  v2[39] = v0;

  if (v0)
  {
    v3 = v2[32];
    v4 = v2[33];

    return MEMORY[0x1EEE6DFA0](sub_1BD26D500, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[40] = v5;
    *v5 = v2;
    v5[1] = sub_1BD26D2C4;
    v6 = v2[14];

    return sub_1BD26ED6C(v6);
  }
}

uint64_t sub_1BD26D2C4()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_1BD26D720;
  }

  else
  {
    v5 = sub_1BD26D400;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD26D400()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v0[35] = sub_1BE052894();
  v1 = sub_1BD272850(&qword_1EBD3F7E8, MEMORY[0x1E6967C80]);
  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_1BD26CB98;
  v3 = v0[18];
  v4 = v0[15];

  return MEMORY[0x1EEE6D8C8](v4, v3, v1);
}

uint64_t sub_1BD26D500()
{
  v1 = v0[39];
  sub_1BE04D114();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to perform transaction update with: %@", v5, 0xCu);
    sub_1BD0DE53C(v6, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  v9 = v0[34];
  v10 = v0[23];
  v11 = v0[21];

  v9(v10, v11);
  (*(v0[13] + 8))(v0[14], v0[12]);
  v0[35] = sub_1BE052894();
  v12 = sub_1BD272850(&qword_1EBD3F7E8, MEMORY[0x1E6967C80]);
  v13 = swift_task_alloc();
  v0[36] = v13;
  *v13 = v0;
  v13[1] = sub_1BD26CB98;
  v14 = v0[18];
  v15 = v0[15];

  return MEMORY[0x1EEE6D8C8](v15, v14, v12);
}

uint64_t sub_1BD26D720()
{
  v1 = v0[41];
  sub_1BE04D114();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to perform transaction update with: %@", v5, 0xCu);
    sub_1BD0DE53C(v6, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  v9 = v0[34];
  v10 = v0[23];
  v11 = v0[21];

  v9(v10, v11);
  (*(v0[13] + 8))(v0[14], v0[12]);
  v0[35] = sub_1BE052894();
  v12 = sub_1BD272850(&qword_1EBD3F7E8, MEMORY[0x1E6967C80]);
  v13 = swift_task_alloc();
  v0[36] = v13;
  *v13 = v0;
  v13[1] = sub_1BD26CB98;
  v14 = v0[18];
  v15 = v0[15];

  return MEMORY[0x1EEE6D8C8](v15, v14, v12);
}

uint64_t sub_1BD26D940(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  v2[15] = swift_task_alloc();
  v3 = sub_1BE049834();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = _s12DetailsModelVMa(0);
  v2[20] = swift_task_alloc();
  v4 = sub_1BE049A94();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7D8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v5 = sub_1BE04D214();
  v2[26] = v5;
  v2[27] = *(v5 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v6 = sub_1BE04AFE4();
  v2[30] = v6;
  v2[31] = *(v6 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  v2[34] = swift_task_alloc();
  v7 = sub_1BE048F54();
  v2[35] = v7;
  v2[36] = *(v7 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  v2[39] = swift_task_alloc();
  v8 = type metadata accessor for TransactionContext(0);
  v2[40] = v8;
  v2[41] = *(v8 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  sub_1BE0528A4();
  v2[44] = sub_1BE052894();
  v10 = sub_1BE052844();
  v2[45] = v10;
  v2[46] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD26DD40, v10, v9);
}

uint64_t sub_1BD26DD40()
{
  v1 = v0[41];
  v48 = v0[40];
  v2 = v0[39];
  v3 = v0[14];
  swift_getKeyPath();
  v0[8] = v3;
  v0[47] = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel___observationRegistrar;
  v0[48] = sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__transactionContext;
  swift_beginAccess();
  sub_1BD0DE19C(v3 + v4, v2, &qword_1EBD3F790);
  if ((*(v1 + 48))(v2, 1, v48) == 1)
  {
    v5 = v0[39];

    sub_1BD0DE53C(v5, &qword_1EBD3F790);
LABEL_12:

    v38 = v0[1];

    return v38();
  }

  v6 = v0[36];
  v49 = v0[35];
  v7 = v0[34];
  v8 = v0[14];
  sub_1BD2727E8(v0[39], v0[43], type metadata accessor for TransactionContext);
  swift_getKeyPath();
  v0[9] = v8;
  sub_1BE04B594();

  v9 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyToken;
  swift_beginAccess();
  sub_1BD0DE19C(v8 + v9, v7, &qword_1EBD3F788);
  if ((*(v6 + 48))(v7, 1, v49) == 1)
  {
    v10 = v0[34];
    sub_1BD273424(v0[43], type metadata accessor for TransactionContext);

    sub_1BD0DE53C(v10, &qword_1EBD3F788);
    goto LABEL_12;
  }

  v11 = v0[33];
  v13 = v0[30];
  v12 = v0[31];
  (*(v0[36] + 32))(v0[38], v0[34], v0[35]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7B0);
  v14 = sub_1BE0490C4();
  sub_1BE049A14();
  v15 = sub_1BD438738(v11, v14);

  v16 = *(v12 + 8);
  v0[49] = v16;
  v0[50] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v11, v13);
  if (v15)
  {
    sub_1BE04D114();
    v17 = sub_1BE04D204();
    v18 = sub_1BE052C54();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BD026000, v17, v18, "Transaction deleted", v19, 2u);
      MEMORY[0x1BFB45F20](v19, -1, -1);
    }

    v20 = v0[29];
    v22 = v0[26];
    v21 = v0[27];
    v23 = v0[14];

    (*(v21 + 8))(v20, v22);
    swift_getKeyPath();
    v0[12] = v23;
    sub_1BE04B594();

    v24 = *(v23 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__onTransactionDeleted);
    if (v24)
    {
      v25 = sub_1BE048964();
      v24(v25);
      sub_1BD0D4744(v24);
    }
  }

  v26 = v0[32];
  v28 = v0[24];
  v27 = v0[25];
  v29 = v0[21];
  v30 = v0[22];
  sub_1BE049A14();
  v31 = sub_1BE0490D4();
  *(swift_task_alloc() + 16) = v26;
  sub_1BD1CED84(sub_1BD273484, v31, v27);

  sub_1BD0DE19C(v27, v28, &qword_1EBD3F7D8);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    v32 = v0[43];
    v33 = v0[38];
    v34 = v0[35];
    v35 = v0[36];
    v37 = v0[24];
    v36 = v0[25];

    sub_1BD0DE53C(v36, &qword_1EBD3F7D8);
    (*(v35 + 8))(v33, v34);
    sub_1BD273424(v32, type metadata accessor for TransactionContext);
    sub_1BD0DE53C(v37, &qword_1EBD3F7D8);
    (v0[49])(v0[32], v0[30]);
    goto LABEL_12;
  }

  (*(v0[22] + 32))(v0[23], v0[24], v0[21]);
  sub_1BE04D114();
  v40 = sub_1BE04D204();
  v41 = sub_1BE052C54();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1BD026000, v40, v41, "Transaction updated, updating view", v42, 2u);
    MEMORY[0x1BFB45F20](v42, -1, -1);
  }

  v44 = v0[27];
  v43 = v0[28];
  v45 = v0[26];

  (*(v44 + 8))(v43, v45);
  sub_1BE0490F4();
  v0[51] = sub_1BE0490B4();
  v46 = swift_task_alloc();
  v0[52] = v46;
  *v46 = v0;
  v46[1] = sub_1BD26E4B0;
  v47 = v0[32];

  return MEMORY[0x1EEDC1500](v47);
}

uint64_t sub_1BD26E4B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 424) = v1;

  if (v1)
  {
    v5 = v4[45];
    v6 = v4[46];
    v7 = sub_1BD26EAB4;
  }

  else
  {
    v4[54] = a1;
    v5 = v4[45];
    v6 = v4[46];
    v7 = sub_1BD26E5F4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BD26E5F4()
{
  v26 = *(v0 + 432);
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);
  v23 = v2;
  v24 = *(v0 + 344);
  v28 = *(v0 + 288);
  v29 = *(v0 + 296);
  v30 = *(v0 + 280);
  v31 = *(v0 + 304);
  v32 = *(v0 + 200);
  v34 = *(v0 + 184);
  v3 = *(v0 + 160);
  v35 = *(v0 + 176);
  v36 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  v22 = *(v0 + 128);
  v27 = *(v0 + 120);
  v33 = *(v0 + 112);

  v25 = v2[5];
  v7 = sub_1BE049574();
  v9 = v8;
  sub_1BE049934();
  sub_1BE0499A4();
  sub_1BE049984();
  v10 = sub_1BE049824();
  v12 = v11;
  (*(v6 + 8))(v5, v22);
  *v3 = v7;
  v3[1] = v9;
  v13 = (v3 + *(v4 + 28));
  *v13 = v10;
  v13[1] = v12;
  swift_getKeyPath();
  v14 = swift_task_alloc();
  *(v14 + 16) = v33;
  *(v14 + 24) = v3;
  *(v0 + 80) = v33;
  sub_1BE04B584();

  sub_1BD273424(v3, _s12DetailsModelVMa);
  (*(v35 + 16))(v1, v34, v36);
  v15 = v23[5];
  v16 = sub_1BE0495A4();
  (*(*(v16 - 8) + 16))(v1 + v15, v24 + v25, v16);
  v17 = v23[6];
  v18 = sub_1BE049184();
  (*(*(v18 - 8) + 16))(v1 + v17, v24 + v17, v18);
  sub_1BD735DE0(v26, v1 + v23[7]);
  sub_1BD735E14(v26, v1 + v23[8]);

  (*(v28 + 16))(v29, v31, v30);
  sub_1BD60709C(v1, v29, v27);
  swift_getKeyPath();
  v19 = swift_task_alloc();
  *(v19 + 16) = v33;
  *(v19 + 24) = v27;
  *(v0 + 88) = v33;
  sub_1BE04B584();

  (*(v35 + 8))(v34, v36);
  sub_1BD0DE53C(v32, &qword_1EBD3F7D8);
  (*(v28 + 8))(v31, v30);
  sub_1BD273424(v24, type metadata accessor for TransactionContext);

  sub_1BD273424(v27, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  (*(v0 + 392))(*(v0 + 256), *(v0 + 240));

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1BD26EAB4()
{
  v13 = v0[49];
  v1 = v0[43];
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[35];
  v5 = v0[32];
  v12 = v0[30];
  v6 = v0[25];
  v7 = v0[22];
  v8 = v0[23];
  v9 = v0[21];

  (*(v7 + 8))(v8, v9);
  sub_1BD0DE53C(v6, &qword_1EBD3F7D8);
  (*(v3 + 8))(v2, v4);
  sub_1BD273424(v1, type metadata accessor for TransactionContext);
  v13(v5, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1BD26EC80()
{
  v0 = sub_1BE04AFE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE049A14();
  v5 = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_1BD26ED6C(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = sub_1BE04AFE4();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v4 = sub_1BE049A94();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v5 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction(0);
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v6 = sub_1BE048F54();
  v2[34] = v6;
  v2[35] = *(v6 - 8);
  v2[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v7 = type metadata accessor for TransactionContext(0);
  v2[39] = v7;
  v2[40] = *(v7 - 8);
  v2[41] = swift_task_alloc();
  sub_1BE0528A4();
  v2[42] = sub_1BE052894();
  v9 = sub_1BE052844();
  v2[43] = v9;
  v2[44] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD26F0C0, v9, v8);
}

uint64_t sub_1BD26F0C0()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[38];
  v4 = v0[17];
  swift_getKeyPath();
  v0[11] = v4;
  v0[45] = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel___observationRegistrar;
  v0[46] = sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  v5 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__transactionContext;
  swift_beginAccess();
  sub_1BD0DE19C(v4 + v5, v3, &qword_1EBD3F790);
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) != 1)
  {
    v8 = v0[35];
    v89 = v0[34];
    v91 = v6;
    v9 = v0[33];
    v10 = v0[17];
    sub_1BD2727E8(v0[38], v0[41], type metadata accessor for TransactionContext);
    swift_getKeyPath();
    v0[12] = v10;
    sub_1BE04B594();

    v11 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyToken;
    swift_beginAccess();
    sub_1BD0DE19C(v10 + v11, v9, &qword_1EBD3F788);
    if ((*(v8 + 48))(v9, 1, v89) == 1)
    {
      v12 = v0[41];
      v13 = v0[33];

      sub_1BD0DE53C(v13, &qword_1EBD3F788);
      sub_1BD273424(v12, type metadata accessor for TransactionContext);
      goto LABEL_5;
    }

    v16 = v0[31];
    v17 = v0[17];
    (*(v0[35] + 32))(v0[36], v0[33], v0[34]);
    swift_getKeyPath();
    v0[14] = v17;
    sub_1BE04B594();

    v18 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyModel;
    swift_beginAccess();
    sub_1BD0DE19C(v17 + v18, v16, &qword_1EBD3F780);
    v19 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
    v0[47] = v19;
    v20 = *(v19 - 8);
    v0[48] = v20;
    v21 = (*(v20 + 48))(v16, 1, v19);
    v22 = v0[31];
    if (v21)
    {
      sub_1BD0DE53C(v22, &qword_1EBD3F780);
    }

    else
    {
      v23 = *v22;
      v24 = v0[31];
      sub_1BE048C84();
      sub_1BD0DE53C(v24, &qword_1EBD3F780);
      v25 = *(v23 + 16);
      if (v25)
      {
        v26 = v0[28];
        v27 = v0[29];
        v28 = v0[23];
        v29 = *(v0[27] + 40);
        v30 = v23 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
        v85 = (v28 + 16);
        v87 = v28;
        v88 = (v28 + 32);
        v90 = *(v26 + 72);
        v96 = MEMORY[0x1E69E7CC0];
        v86 = v29;
        do
        {
          v31 = v0[39];
          v32 = v0[37];
          v33 = v0[29];
          sub_1BD2733BC(v30, v33, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction);
          sub_1BD0DE19C(v27 + v29, v32, &qword_1EBD3F790);
          sub_1BD273424(v33, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction);
          v34 = v91(v32, 1, v31);
          v35 = v0[37];
          if (v34 == 1)
          {
            sub_1BD0DE53C(v0[37], &qword_1EBD3F790);
          }

          else
          {
            v37 = v0[25];
            v36 = v0[26];
            v38 = v0[22];
            (*v85)(v37, v0[37], v38);
            sub_1BD273424(v35, type metadata accessor for TransactionContext);
            v39 = *v88;
            (*v88)(v36, v37, v38);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v96 = sub_1BD1D825C(0, v96[2] + 1, 1, v96);
            }

            v41 = v96[2];
            v40 = v96[3];
            if (v41 >= v40 >> 1)
            {
              v96 = sub_1BD1D825C(v40 > 1, v41 + 1, 1, v96);
            }

            v42 = v0[26];
            v43 = v0[22];
            v96[2] = v41 + 1;
            v39(v96 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v41, v42, v43);
            v29 = v86;
          }

          v30 += v90;
          --v25;
        }

        while (v25);

LABEL_22:
        v44 = v0[41];
        v0[13] = v96;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7B0);
        v45 = sub_1BE0490E4();
        v46 = sub_1BE0490D4();
        sub_1BDA7A904(v46);
        v47 = swift_task_alloc();
        *(v47 + 16) = v44;
        v48 = sub_1BD1CEA30(sub_1BD272914, v47, v45);

        v49 = *(v48 + 16);
        v50 = MEMORY[0x1E69E7CC0];
        if (v49)
        {
          v51 = v0[23];
          v52 = v0[19];
          v97 = MEMORY[0x1E69E7CC0];
          sub_1BD531F28(0, v49, 0);
          v50 = v97;
          v54 = *(v51 + 16);
          v53 = v51 + 16;
          v55 = v48 + ((*(v53 + 64) + 32) & ~*(v53 + 64));
          v92 = *(v53 + 56);
          v94 = v54;
          do
          {
            v56 = v0[24];
            v57 = v0[22];
            v94(v56, v55, v57);
            sub_1BE049A14();
            (*(v53 - 8))(v56, v57);
            v59 = *(v97 + 16);
            v58 = *(v97 + 24);
            if (v59 >= v58 >> 1)
            {
              sub_1BD531F28(v58 > 1, v59 + 1, 1);
            }

            v60 = v0[21];
            v61 = v0[18];
            *(v97 + 16) = v59 + 1;
            (*(v52 + 32))(v97 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v59, v60, v61);
            v55 += v92;
            --v49;
          }

          while (v49);
        }

        v62 = sub_1BE0490C4();
        sub_1BDA7A930(v62);
        sub_1BE048C84();
        v63 = sub_1BD272EAC(v0 + 13, v50);

        v65 = v0[13];
        v66 = v65[2];
        if (v63 > v66)
        {
          __break(1u);
        }

        else if ((v63 & 0x8000000000000000) == 0)
        {
          if (!__OFADD__(v66, v63 - v66))
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v63 > v65[3] >> 1)
            {
              if (v66 <= v63)
              {
                v68 = v63;
              }

              else
              {
                v68 = v66;
              }

              v65 = sub_1BD1D825C(isUniquelyReferenced_nonNull_native, v68, 1, v65);
              v0[13] = v65;
            }

            sub_1BD1DDE18(v63, v66, 0);

            v0[13] = v65;
            sub_1BDA7A904(v48);
            sub_1BE0490F4();
            v69 = sub_1BE0490B4();
            v70 = v0[13];
            v0[49] = v69;
            v0[50] = v70;
            v71 = *(v70 + 16);
            v72 = MEMORY[0x1E69E7CC0];
            if (v71)
            {
              v73 = v0[23];
              v74 = v0[19];
              v98 = MEMORY[0x1E69E7CC0];
              sub_1BD531F28(0, v71, 0);
              v72 = v98;
              v75 = *(v73 + 16);
              v73 += 16;
              v76 = v70 + ((*(v73 + 64) + 32) & ~*(v73 + 64));
              v93 = *(v73 + 56);
              v95 = v75;
              v77 = (v73 - 8);
              do
              {
                v78 = v0[24];
                v79 = v0[22];
                v95(v78, v76, v79);
                sub_1BE049A14();
                (*v77)(v78, v79);
                v81 = *(v98 + 16);
                v80 = *(v98 + 24);
                if (v81 >= v80 >> 1)
                {
                  sub_1BD531F28(v80 > 1, v81 + 1, 1);
                }

                v82 = v0[20];
                v83 = v0[18];
                *(v98 + 16) = v81 + 1;
                (*(v74 + 32))(v98 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v81, v82, v83);
                v76 += v93;
                --v71;
              }

              while (v71);
            }

            v0[51] = v72;
            v84 = swift_task_alloc();
            v0[52] = v84;
            *v84 = v0;
            v84[1] = sub_1BD26FB9C;
            v64 = v72;

            return MEMORY[0x1EEDC1510](v64);
          }

LABEL_47:
          __break(1u);
          return MEMORY[0x1EEDC1510](v64);
        }

        __break(1u);
        goto LABEL_47;
      }
    }

    v96 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v7 = v0[38];

  sub_1BD0DE53C(v7, &qword_1EBD3F790);
LABEL_5:

  v14 = v0[1];

  return v14();
}

uint64_t sub_1BD26FB9C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 424) = v1;

  if (v1)
  {

    v5 = v4[43];
    v6 = v4[44];
    v7 = sub_1BD270000;
  }

  else
  {

    v4[54] = a1;
    v5 = v4[43];
    v6 = v4[44];
    v7 = sub_1BD26FD08;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BD26FD08()
{
  v1 = v0[54];
  v2 = v0[50];
  v3 = v0[48];
  v4 = v0[41];
  v17 = v4;
  v5 = v0[35];
  v6 = v0[36];
  v13 = v0[34];
  v7 = v0[32];
  v14 = v0[30];
  v15 = v0[47];
  v16 = v0[17];

  v8 = swift_task_alloc();
  *(v8 + 16) = v1;
  *(v8 + 24) = v4;
  sub_1BE048C84();
  v9 = sub_1BDA3DA80(sub_1BD273368, v8, v2);

  (*(v5 + 16))(v7, v6, v13);
  (*(v5 + 56))(v7, 0, 1, v13);
  sub_1BD720F44(v9, v7, v14);
  (*(v3 + 56))(v14, 0, 1, v15);
  swift_getKeyPath();
  v10 = swift_task_alloc();
  *(v10 + 16) = v16;
  *(v10 + 24) = v14;
  v0[15] = v16;
  sub_1BE04B584();

  sub_1BD0DE53C(v14, &qword_1EBD3F780);
  sub_1BD270B6C(v2);

  (*(v5 + 8))(v6, v13);
  sub_1BD273424(v17, type metadata accessor for TransactionContext);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BD270000()
{
  v1 = v0[41];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[34];

  (*(v2 + 8))(v3, v4);
  sub_1BD273424(v1, type metadata accessor for TransactionContext);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1BD270158(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = sub_1BE0498F4();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v45 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v44 = v43 - v8;
  v49 = sub_1BE04AFE4();
  v9 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v10);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v43 - v15;
  v17 = sub_1BE049834();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v43 - v24;
  v48 = a1;
  sub_1BE049984();
  (*(v18 + 104))(v21, *MEMORY[0x1E6967850], v17);
  sub_1BD272850(&qword_1EBD3F7C8, MEMORY[0x1E69678D8]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  v26 = *(v18 + 8);
  v26(v21, v17);
  v26(v25, v17);
  if (v54 == v53 && (sub_1BE049A64(), type metadata accessor for TransactionContext(0), sub_1BE049584(), v27 = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0(), v30 = *(v9 + 8), v29 = v9 + 8, v28 = v30, v31 = v49, v30(v12, v49), v30(v16, v31), (v27 & 1) != 0) && (v43[0] = v12, v43[1] = v29, v32 = v44, sub_1BE049A24(), v34 = v45, v33 = v46, v35 = v47, (*(v46 + 104))(v45, *MEMORY[0x1E6967930], v47), sub_1BD272850(&qword_1EBD3F7D0, MEMORY[0x1E6967938]), sub_1BE0526E4(), sub_1BE0526E4(), v36 = *(v33 + 8), v36(v34, v35), v36(v32, v35), v52 == v51) && (v37 = v16, sub_1BE049A14(), v38 = v43[0], sub_1BE049A14(), sub_1BD272850(&unk_1EBD36A30, MEMORY[0x1E69695A8]), v39 = v49, v40 = sub_1BE052334(), v28(v38, v39), v28(v37, v39), (v40 & 1) == 0))
  {
    v41 = sub_1BE049A74();
  }

  else
  {
    v41 = 0;
  }

  return v41 & 1;
}

uint64_t sub_1BD27064C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  v42 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7B8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v45 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v44 = &v41 - v11;
  v43 = sub_1BE049184();
  v50 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v12);
  v49 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1BE0495A4();
  v14 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v15);
  v47 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1BE049A94();
  v17 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BE04AFE4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE049A14();
  if (*(a2 + 16) && (v26 = sub_1BD14951C(v25), (v27 & 1) != 0))
  {
    v28 = *(*(a2 + 56) + 8 * v26);
    v29 = *(v22 + 8);
    sub_1BE048C84();
    v29(v25, v21);
  }

  else
  {
    (*(v22 + 8))(v25, v21);
    v28 = 0;
  }

  v30 = v41;
  (*(v17 + 16))(v20, a1, v41);
  v31 = type metadata accessor for TransactionContext(0);
  v32 = v42;
  (*(v14 + 16))(v47, v42 + v31[5], v48);
  v33 = v43;
  (*(v50 + 16))(v49, v32 + v31[6], v43);
  v35 = v44;
  v34 = v45;
  if (v28)
  {
    v36 = sub_1BE048C84();
    sub_1BD735DE0(v36, v35);

    sub_1BD735E14(v28, v34);
  }

  else
  {
    v37 = sub_1BE0491B4();
    (*(*(v37 - 8) + 56))(v35, 1, 1, v37);
    v38 = sub_1BE049E04();
    (*(*(v38 - 8) + 56))(v34, 1, 1, v38);
  }

  v39 = v46;
  (*(v17 + 32))(v46, v20, v30);
  (*(v14 + 32))(v39 + v31[5], v47, v48);
  (*(v50 + 32))(v39 + v31[6], v49, v33);
  sub_1BD0DE204(v35, v39 + v31[7], &qword_1EBD3F7C0);
  return sub_1BD0DE204(v34, v39 + v31[8], &qword_1EBD3F7B8);
}

void sub_1BD270B6C(uint64_t a1)
{
  v2 = v1;
  v171 = a1;
  v154 = sub_1BE04BD74();
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154, v3);
  v152 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1BE04B0F4();
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151, v5);
  v149 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1BE049B44();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138, v7);
  v136 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v135 = &v132 - v11;
  v12 = sub_1BE049904();
  v169 = *(v12 - 8);
  v170 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v161 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v160 = (&v132 - v17);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810);
  MEMORY[0x1EEE9AC00](v148, v18);
  v147 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v146 = &v132 - v22;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0);
  MEMORY[0x1EEE9AC00](v145, v23);
  v155 = &v132 - v24;
  v156 = sub_1BE04AF64();
  v159 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156, v25);
  v172 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v173 = &v132 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v157 = (&v132 - v32);
  v33 = sub_1BE0493F4();
  v34 = *(v33 - 8);
  v167 = v33;
  v168 = v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v132 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1BE049A94();
  v158 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v39);
  v174 = &v132 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v134 = &v132 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v132 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v51 = &v132 - v50;
  v52 = type metadata accessor for TransactionContext(0);
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v54);
  v56 = &v132 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v57 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel___observationRegistrar;
  v177 = v2;
  v58 = sub_1BD272850(&qword_1EBD3F798, _s9ViewModelCMa);
  v143 = v57;
  v142 = v58;
  sub_1BE04B594();

  v59 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__transactionContext;
  swift_beginAccess();
  v144 = v2;
  sub_1BD0DE19C(v2 + v59, v51, &qword_1EBD3F790);
  if ((*(v53 + 48))(v51, 1, v52) == 1)
  {
    v60 = &qword_1EBD3F790;
    v61 = v51;
LABEL_21:
    sub_1BD0DE53C(v61, v60);
    return;
  }

  sub_1BD2727E8(v51, v56, type metadata accessor for TransactionContext);
  v62 = *(v158 + 2);
  v166 = v38;
  v162 = v62;
  v163 = v158 + 16;
  v62(v47, v56, v38);
  sub_1BE0499A4();
  v141 = sub_1BE0493A4();
  v140 = v63;
  v64 = v168 + 8;
  v165 = *(v168 + 1);
  v165(v37, v167);
  v65 = v157;
  sub_1BE04AEF4();
  v66 = sub_1BE04AE64();
  v67 = PKStartOfYear();

  v139 = v47;
  if (!v67)
  {
    __break(1u);
    goto LABEL_25;
  }

  v68 = v173;
  sub_1BE04AEE4();

  v69 = sub_1BE04AE64();
  v70 = PKEndOfYear();

  v71 = v156;
  if (!v70)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v72 = v172;
  sub_1BE04AEE4();

  v73 = v72;
  sub_1BD272850(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  if ((sub_1BE052314() & 1) == 0)
  {
    __break(1u);
LABEL_23:
    v56 = sub_1BD1D825C(0, *(v56 + 2) + 1, 1, v56);
    goto LABEL_10;
  }

  v164 = v37;
  v168 = v64;
  v133 = v56;
  v74 = v159;
  v75 = *(v159 + 32);
  v76 = v146;
  v75(v146, v68, v71);
  v77 = v148;
  v75((v76 + *(v148 + 48)), v73, v71);
  v78 = v147;
  sub_1BD0DE19C(v76, v147, &unk_1EBD38810);
  v79 = *(v77 + 48);
  v80 = v155;
  v75(v155, v78, v71);
  v81 = *(v74 + 8);
  v81(v78 + v79, v71);
  sub_1BD0DE204(v76, v78, &unk_1EBD38810);
  v75(&v80[*(v145 + 36)], (v78 + *(v77 + 48)), v71);
  v159 = v74 + 8;
  v148 = v81;
  v82 = (v81)(v78, v71);
  MEMORY[0x1EEE9AC00](v82, v83);
  v84 = v141;
  *(&v132 - 4) = v80;
  *(&v132 - 3) = v84;
  *(&v132 - 2) = v140;
  v85 = v171;
  sub_1BE048C84();
  v86 = sub_1BD1CEA30(sub_1BD272898, (&v132 - 6), v85);
  v87 = v160;
  v88 = v139;
  sub_1BE049A34();
  v89 = v169;
  v90 = v170;
  v91 = v161;
  (*(v169 + 104))(v161, *MEMORY[0x1E6967980], v170);
  sub_1BD272850(&qword_1EBD3F7A0, MEMORY[0x1E6967988]);
  LOBYTE(v78) = sub_1BE052334();
  v92 = *(v89 + 8);
  v92(v91, v90);
  v92(v87, v90);
  v147 = 0;
  if (v78)
  {
    v37 = v166;
LABEL_13:
    v101 = v174;
    v56 = v86;
    goto LABEL_14;
  }

  v93 = v135;
  sub_1BE0499E4();
  v94 = v137;
  v95 = v136;
  v96 = v138;
  (*(v137 + 104))(v136, *MEMORY[0x1E6967B10], v138);
  sub_1BD272850(&qword_1EBD3F7A8, MEMORY[0x1E6967B20]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  v97 = *(v94 + 8);
  v97(v95, v96);
  v97(v93, v96);
  v37 = v166;
  if (v175 != v176)
  {
    goto LABEL_13;
  }

  v64 = v134;
  v162(v134, v88, v166);
  v56 = v86;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v158;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  v100 = *(v56 + 2);
  v99 = *(v56 + 3);
  if (v100 >= v99 >> 1)
  {
    v56 = sub_1BD1D825C(v99 > 1, v100 + 1, 1, v56);
  }

  *(v56 + 2) = v100 + 1;
  v65[4](&v56[((*(v65 + 80) + 32) & ~*(v65 + 80)) + v65[9] * v100], v64, v37);
  v101 = v174;
LABEL_14:
  v173 = (MEMORY[0x1BFB403C0](0) >> 48);
  v170 = HIWORD(v102);
  v103 = *(v56 + 2);
  LODWORD(v169) = HIWORD(v104);
  if (v103)
  {
    v105 = (v158[80] + 32) & ~v158[80];
    v146 = v56;
    v171 = HIDWORD(v102);
    v172 = (v102 >> 16);
    v106 = &v56[v105];
    v107 = *(v158 + 9);
    v160 = (v158 + 8);
    v161 = v107;
    do
    {
      v162(v101, v106, v37);
      v108 = v164;
      sub_1BE0499A4();
      sub_1BE0493C4();
      v170 = v109;
      LODWORD(v169) = v110;
      v165(v108, v167);
      v101 = v174;
      v37 = v166;
      v111 = sub_1BE053384();
      v172 = (v112 >> 16);
      v173 = HIWORD(v111);
      v171 = HIDWORD(v112);
      v113 = HIWORD(v112);
      v115 = HIWORD(v114);
      (*v160)(v101, v37);
      v106 = &v161[v106];
      --v103;
    }

    while (v103);
    LODWORD(v169) = v115;
    v170 = v113;
  }

  else
  {
  }

  v116 = v164;
  sub_1BE049404();
  v117 = v149;
  sub_1BE04B054();
  v118 = sub_1BE0493E4();
  v120 = v119;
  (*(v150 + 8))(v117, v151);
  v165(v116, v167);
  v121 = v153;
  v122 = v152;
  v123 = v154;
  (*(v153 + 104))(v152, *MEMORY[0x1E69B8040], v154);
  v124 = PKPassKitBundle();
  if (v124)
  {
    v125 = v124;
    v126 = sub_1BE04B6F4();
    v128 = v127;

    (*(v121 + 8))(v122, v123);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v130);
    v131 = v144;
    *(&v132 - 6) = v144;
    *(&v132 - 5) = v118;
    *(&v132 - 4) = v120;
    *(&v132 - 3) = v126;
    *(&v132 - 2) = v128;
    v175 = v131;
    sub_1BE04B584();

    (v148)(v157, v156);
    (*(v158 + 1))(v139, v37);
    sub_1BD273424(v133, type metadata accessor for TransactionContext);
    v60 = &unk_1EBD387B0;
    v61 = v155;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

BOOL sub_1BD271CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v51 = a3;
  v4 = sub_1BE049B44();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v42 = &v42 - v9;
  v10 = sub_1BE049904();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v47 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v46 = &v42 - v15;
  v16 = sub_1BE0493F4();
  v50 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE04AF64();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE049974();
  sub_1BD272850(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  if (sub_1BE052304())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0);
    v25 = sub_1BE052314();
    (*(v21 + 8))(v24, v20);
    if (v25)
    {
      sub_1BE0499A4();
      v26 = sub_1BE0493A4();
      v28 = v27;
      (*(v50 + 8))(v19, v16);
      if (v26 == v51 && v28 == v52)
      {
      }

      else
      {
        v30 = sub_1BE053B84();

        if ((v30 & 1) == 0)
        {
          return 0;
        }
      }

      v31 = v46;
      sub_1BE049A34();
      v33 = v47;
      v32 = v48;
      v34 = v49;
      (*(v48 + 104))(v47, *MEMORY[0x1E6967980], v49);
      sub_1BD272850(&qword_1EBD3F7A0, MEMORY[0x1E6967988]);
      v35 = sub_1BE052334();
      v36 = *(v32 + 8);
      v36(v33, v34);
      v36(v31, v34);
      if ((v35 & 1) == 0)
      {
        v37 = v42;
        sub_1BE0499E4();
        v39 = v43;
        v38 = v44;
        v40 = v45;
        (*(v44 + 104))(v43, *MEMORY[0x1E6967B10], v45);
        sub_1BD272850(&qword_1EBD3F7A8, MEMORY[0x1E6967B20]);
        sub_1BE0526E4();
        sub_1BE0526E4();
        v41 = *(v38 + 8);
        v41(v39, v40);
        v41(v37, v40);
        return v54 == v53;
      }
    }
  }

  else
  {
    (*(v21 + 8))(v24, v20);
  }

  return 0;
}

uint64_t sub_1BD272208()
{
  sub_1BD273424(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__detailsModel, _s12DetailsModelVMa);
  sub_1BD273424(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__selectedModel, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyModel, &qword_1EBD3F780);
  sub_1BD27273C(*(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel), *(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 8));
  sub_1BD0D4744(*(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__onTransactionDeleted));
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__transactionContext, &qword_1EBD3F790);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyToken, &qword_1EBD3F788);
  v1 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1BD2723A0()
{
  _s12DetailsModelVMa(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(319);
    if (v1 <= 0x3F)
    {
      sub_1BD2725E8(319, &qword_1EBD3F758, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
      if (v2 <= 0x3F)
      {
        sub_1BD2725E8(319, &qword_1EBD3F760, type metadata accessor for TransactionContext);
        if (v3 <= 0x3F)
        {
          sub_1BD2725E8(319, &qword_1EBD3F768, MEMORY[0x1E69675F8]);
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

void sub_1BD2725E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1BD272664()
{
  result = sub_1BE04AF64();
  if (v1 <= 0x3F)
  {
    result = sub_1BE0493F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BD2726F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1BE048C84();

    return sub_1BE048C84();
  }

  return result;
}

uint64_t sub_1BD27273C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1BD272780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD2727E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD272850(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD272934(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BE04AFE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = v10 == 0;
  v21 = v10;
  if (!v10)
  {
    return 0;
  }

  v20[3] = v2;
  v23 = (v6 + 8);
  v12 = 0;
  v13 = *(sub_1BE049A94() - 8);
  v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v20[1] = *(v13 + 72);
  v20[2] = v14;
  do
  {
    v22 = v11;
    sub_1BE049A14();
    v15 = 0;
    v16 = *(a2 + 16);
    while (v16 != v15)
    {
      v17 = v15 + 1;
      sub_1BD272850(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
      v18 = sub_1BE052334();
      v15 = v17;
      if (v18)
      {
        (*v23)(v9, v5);
        return v12;
      }
    }

    (*v23)(v9, v5);
    v11 = ++v12 == v21;
  }

  while (v12 != v21);
  return 0;
}

uint64_t sub_1BD272B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE048F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F950);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_1BD0DE19C(a1, &v24 - v15, &qword_1EBD3F788);
  sub_1BD0DE19C(a2, &v16[v18], &qword_1EBD3F788);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1BD0DE19C(v16, v12, &qword_1EBD3F788);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_1BD272850(&qword_1EBD3F958, MEMORY[0x1E69675F8]);
      v21 = sub_1BE052334();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1BD0DE53C(v16, &qword_1EBD3F788);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v16, &qword_1EBD3F950);
    v20 = 1;
    return v20 & 1;
  }

  sub_1BD0DE53C(v16, &qword_1EBD3F788);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1BD272EAC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1BE049A94();
  v9 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v40 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v40 - v19;
  v42 = a1;
  v21 = *a1;
  v22 = v58;
  result = sub_1BD272934(v21, a2);
  if (!v22)
  {
    v25 = v21;
    v56 = v20;
    v45 = v16;
    if (v24)
    {
      return *(v21 + 16);
    }

    else
    {
      v26 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_34:
        __break(1u);
      }

      else
      {
        v47 = (v9 + 8);
        v48 = (v5 + 8);
        v40 = 0;
        v41 = (v9 + 40);
        v27 = v55;
        v46 = v9;
        v44 = v12;
        v53 = v9 + 16;
LABEL_9:
        while (1)
        {
          v29 = v25[2];
          if (v26 == v29)
          {
            break;
          }

          if (v26 >= v29)
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          v57 = result;
          v30 = (*(v9 + 80) + 32) & ~*(v9 + 80);
          v58 = v25;
          v49 = v30;
          v50 = *(v9 + 72);
          v51 = v25 + v30;
          v31 = *(v9 + 16);
          v54 = v50 * v26;
          v52 = v31;
          (v31)(v56, v25 + v30 + v50 * v26, v27);
          sub_1BE049A14();
          v32 = 0;
          v33 = *(a2 + 16);
          while (v33 != v32)
          {
            v34 = v32 + 1;
            sub_1BD272850(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
            v35 = sub_1BE052334();
            v32 = v34;
            if (v35)
            {
              (*v48)(v8, v4);
              v27 = v55;
              (*v47)(v56, v55);
              v9 = v46;
              result = v57;
              v25 = v58;
              v28 = __OFADD__(v26++, 1);
              if (v28)
              {
                goto LABEL_28;
              }

              goto LABEL_9;
            }
          }

          (*v48)(v8, v4);
          v27 = v55;
          (*v47)(v56, v55);
          result = v57;
          if (v57 == v26)
          {
            v9 = v46;
            v25 = v58;
          }

          else
          {
            if ((v57 & 0x8000000000000000) != 0)
            {
              goto LABEL_30;
            }

            if (v57 >= v58[2])
            {
              goto LABEL_31;
            }

            v43 = v58[2];
            v36 = v51;
            v50 *= v57;
            v37 = v52;
            result = (v52)(v45, &v51[v50], v27);
            if (v26 >= v43)
            {
              goto LABEL_32;
            }

            v37(v44, &v36[v54], v55);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v38 = v58;
            }

            else
            {
              v38 = sub_1BD4FFF40(v58);
            }

            v39 = *v41;
            v52 = v38 + v49;
            v27 = v55;
            v58 = v39;
            result = (v39)(v38 + v49 + v50, v44, v55);
            if (v26 >= v38[2])
            {
              goto LABEL_33;
            }

            (v58)(&v52[v54], v45, v27);
            v25 = v38;
            *v42 = v38;
            v9 = v46;
            result = v57;
          }

          v28 = __OFADD__(result++, 1);
          if (v28)
          {
            goto LABEL_29;
          }

          v28 = __OFADD__(v26++, 1);
          if (v28)
          {
            goto LABEL_28;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1BD2733BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD273424(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD273538()
{
  result = qword_1EBD3F8C0;
  if (!qword_1EBD3F8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F8B8);
    sub_1BD2735DC();
    sub_1BD0FA424(&qword_1EBD38F80, &qword_1EBD38EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F8C0);
  }

  return result;
}

unint64_t sub_1BD2735DC()
{
  result = qword_1EBD3F8C8;
  if (!qword_1EBD3F8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F848);
    sub_1BD273668();
    sub_1BD273AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F8C8);
  }

  return result;
}

unint64_t sub_1BD273668()
{
  result = qword_1EBD3F8D0;
  if (!qword_1EBD3F8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F840);
    sub_1BD2736F4();
    sub_1BD273948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F8D0);
  }

  return result;
}

unint64_t sub_1BD2736F4()
{
  result = qword_1EBD3F8D8;
  if (!qword_1EBD3F8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F838);
    sub_1BD2738C0(&qword_1EBD3F8E0, &qword_1EBD3F830);
    sub_1BD2738C0(&qword_1EBD3F8F0, &qword_1EBD3F820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F8D8);
  }

  return result;
}

unint64_t sub_1BD2737D8()
{
  result = qword_1EBD3F8E8;
  if (!qword_1EBD3F8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F828);
    v1 = MEMORY[0x1E69695A8];
    sub_1BD272850(&qword_1EBD38F58, MEMORY[0x1E69695A8]);
    sub_1BD272850(&qword_1EBD38F68, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F8E8);
  }

  return result;
}

uint64_t sub_1BD2738C0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_1BD0FA424(&qword_1EBD38F70, &qword_1EBD38EF0);
    sub_1BD2737D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD273948()
{
  result = qword_1EBD3F8F8;
  if (!qword_1EBD3F8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F818);
    sub_1BD0FA424(&qword_1EBD3F900, &qword_1EBD3F810);
    sub_1BD2739EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F8F8);
  }

  return result;
}

unint64_t sub_1BD2739EC()
{
  result = qword_1EBD3F908;
  if (!qword_1EBD3F908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F808);
    v1 = MEMORY[0x1E69678D8];
    sub_1BD272850(&qword_1EBD3F910, MEMORY[0x1E69678D8]);
    sub_1BD272850(&qword_1EBD3F918, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F908);
  }

  return result;
}

unint64_t sub_1BD273AD4()
{
  result = qword_1EBD3F920;
  if (!qword_1EBD3F920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F800);
    sub_1BD0FA424(&qword_1EBD3F928, &qword_1EBD3F7F8);
    sub_1BD273B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F920);
  }

  return result;
}

unint64_t sub_1BD273B78()
{
  result = qword_1EBD3F930;
  if (!qword_1EBD3F930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F7F0);
    v1 = MEMORY[0x1E6967938];
    sub_1BD272850(&qword_1EBD3F938, MEMORY[0x1E6967938]);
    sub_1BD272850(&qword_1EBD3F940, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F930);
  }

  return result;
}

uint64_t sub_1BD273C60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD273D04(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD273E78(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v48 = a2;
  v49 = a1;
  v55[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1BE04BA14();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v43 = &v41 - v8;
  v9 = sub_1BE04BAC4();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v47 = v2;
  v14 = sub_1BD187A4C(v2, KeyPath);

  v15 = (v14 + 32);
  v16 = *(v14 + 16);
  v53 = 0x80000001BE1182F0;
  v54 = 0x80000001BE118310;
  v51 = 0x80000001BE118280;
  v52 = 0x80000001BE1182A0;
  v50 = 0x80000001BE118260;
  while (2)
  {
    if (v16)
    {
      switch(*v15)
      {
        case 9:

          break;
        default:
          v17 = sub_1BE053B84();

          ++v15;
          --v16;
          if ((v17 & 1) == 0)
          {
            continue;
          }

          break;
      }

      return v49(0x6F63206775626564uLL, 0xEC0000006769666ELL, 0, 0);
    }

    else
    {

      sub_1BE04BC34();
      v18 = sub_1BE04BAB4();
      v19 = v42;
      v20 = *(v41 + 8);
      v20(v12, v42);
      v21 = v49;
      if (v18)
      {
        v49(0xD000000000000012, 0x80000001BE11FE20, 0, 1);
      }

      sub_1BE04BC34();
      v22 = v43;
      sub_1BE04BA24();
      v20(v12, v19);
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F988) + 48);
      v24 = *MEMORY[0x1E69B8010];
      v25 = sub_1BE04B9F4();
      v26 = v44;
      (*(*(v25 - 8) + 104))(v44, v24, v25);
      v27 = *MEMORY[0x1E69B7FF8];
      v28 = sub_1BE04B9E4();
      (*(*(v28 - 8) + 104))(&v26[v23], v27, v28);
      v30 = v45;
      v29 = v46;
      (*(v45 + 104))(v26, *MEMORY[0x1E69B8028], v46);
      LOBYTE(v27) = MEMORY[0x1BFB38A90](v22, v26);
      v31 = *(v30 + 8);
      v31(v26, v29);
      v31(v22, v29);
      if (v27)
      {
        PKSetHasSeenApplePayEducation();
        return v21(0xD000000000000027, 0x80000001BE11FDF0, 0, 1);
      }

      else
      {
        v33 = objc_opt_self();
        v34 = sub_1BE04BC84();
        v55[0] = 0;
        v35 = [v33 shouldPresentForPass:v34 inEducationContext:0 reason:v55];

        v36 = v55[0];
        if (v55[0])
        {
          v37 = v55[0];
        }

        else
        {
          sub_1BD274AF0();
          sub_1BE0530A4();
        }

        v38 = v36;
        v39 = sub_1BE052494();
        v21(v35, v39, v40, 2);
      }
    }
  }
}

id sub_1BD274578()
{
  v0 = sub_1BE04BAC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0F4();
  v10 = sub_1BE04D204();
  v11 = sub_1BE052C54();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1BD026000, v10, v11, "Showing Apple Pay education controller", v12, 2u);
    MEMORY[0x1BFB45F20](v12, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  PKSetHasSeenApplePayEducation();
  v13 = sub_1BE04BC84();
  sub_1BE04BC34();
  v14 = sub_1BE04B9A4();
  (*(v1 + 8))(v4, v0);
  v15 = [objc_allocWithZone(PKEducationViewController) initWithPaymentPass:v13 setupContext:v14 educationContext:0];

  if (v15)
  {
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD274AE8;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD2749B0;
    aBlock[3] = &block_descriptor_39;
    v17 = _Block_copy(aBlock);
    v18 = v15;

    [v18 setContinueHandler_];
    _Block_release(v17);

    sub_1BE052434();
    v19 = v18;
    v20 = sub_1BE04BB74();

    [v19 setReporter_];
  }

  return v15;
}

void sub_1BD2748DC(void (*a1)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_4:
    if (!a1)
    {
      return;
    }

    goto LABEL_5;
  }

  v3 = Strong;
  v4 = Strong + OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = v3;
    sub_1BD8659A4(v7, &off_1F3B9A600, ObjectType, v5);

    Strong = swift_unknownObjectRelease();
    goto LABEL_4;
  }

  if (!a1)
  {
    return;
  }

LABEL_5:
  a1(Strong);
}

uint64_t sub_1BD2749B0(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v3 = sub_1BD166E88;
  }

  else
  {
    v4 = 0;
  }

  sub_1BE048964();
  v2(v3, v4);
  sub_1BD0D4744(v3);
}

uint64_t sub_1BD274A58()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD274A94(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

unint64_t sub_1BD274AF0()
{
  result = qword_1EBD45E60;
  if (!qword_1EBD45E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD45E60);
  }

  return result;
}

uint64_t FlightWidgetHeaderView.init(iconImage:flightCode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t FlightWidgetHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = sub_1BE04FF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F990);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  *v10 = sub_1BE04F504();
  *(v10 + 1) = 0x4018000000000000;
  v10[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F998);
  sub_1BD274D18(v11, v12, v13, &v10[*(v14 + 44)]);
  sub_1BE04FF44();
  sub_1BD0DE4F4(&qword_1EBD3F9A0, &qword_1EBD3F990);
  sub_1BE050D14();
  (*(v3 + 8))(v6, v2);
  return sub_1BD0DE53C(v10, &qword_1EBD3F990);
}

uint64_t sub_1BD274D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F9A8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F9B0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (v28 - v22);
  *v23 = sub_1BE051CB4();
  v23[1] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F9B8);
  sub_1BD275380(a2, a3, v23 + *(v25 + 44));
  v28[1] = a1;
  v28[2] = a2;
  v28[3] = a3;
  sub_1BD274F70();
  sub_1BD0DE19C(v23, v19, &qword_1EBD3F9B0);
  sub_1BD0DE19C(v15, v11, &qword_1EBD3F9A8);
  sub_1BD0DE19C(v19, a4, &qword_1EBD3F9B0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F9C0);
  sub_1BD0DE19C(v11, a4 + *(v26 + 48), &qword_1EBD3F9A8);
  sub_1BD0DE53C(v15, &qword_1EBD3F9A8);
  sub_1BD0DE53C(v23, &qword_1EBD3F9B0);
  sub_1BD0DE53C(v11, &qword_1EBD3F9A8);
  return sub_1BD0DE53C(v19, &qword_1EBD3F9B0);
}

uint64_t sub_1BD274F70()
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v0 = sub_1BE0506C4();
  v2 = v1;
  v4 = v3;
  sub_1BE050464();
  v5 = sub_1BE0505F4();
  v7 = v6;
  v9 = v8;

  sub_1BD0DDF10(v0, v2, v4 & 1);

  sub_1BE0513E4();
  v10 = sub_1BE050574();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1BD0DDF10(v5, v7, v9 & 1);

  *&v18 = v10;
  *(&v18 + 1) = v12;
  LOBYTE(v19) = v14 & 1;
  *(&v19 + 1) = v16;
  *&v20 = swift_getKeyPath();
  *(&v20 + 1) = 0x3FE0000000000000;
  *&v21 = swift_getKeyPath();
  BYTE8(v21) = 1;
  *&v22 = swift_getKeyPath();
  *(&v22 + 1) = 1;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F9C8);
  sub_1BD275AC4();
  sub_1BE050DE4();

  v23[2] = v20;
  v23[3] = v21;
  v23[4] = v22;
  v24 = 0;
  v23[0] = v18;
  v23[1] = v19;
  return sub_1BD0DE53C(v23, &qword_1EBD3F9C8);
}

void sub_1BD275190(uint64_t a1@<X8>)
{
  v3 = sub_1BE051584();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v1;
  if (*v1)
  {
    v9 = 12.0;
  }

  else
  {
    v9 = 23.0;
  }

  v10 = PKUIGetWalletAppIconWithSize(v9, v9);
  if (v10)
  {
    v11 = v10;
    sub_1BE051544();
    (*(v4 + 104))(v7, *MEMORY[0x1E6981630], v3);
    v12 = sub_1BE0515E4();

    (*(v4 + 8))(v7, v3);
    sub_1BE051CD4();
    sub_1BE04E5E4();

    v18[8] = 1;
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v16 = 1;
    v17 = (v8 != 0) << 62;
  }

  else
  {
    v12 = 0;
    v17 = 0;
    v16 = 0;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a1 = v12;
  *(a1 + 8) = 0;
  *(a1 + 16) = v16;
  *(a1 + 24) = v13;
  *(a1 + 40) = v14;
  *(a1 + 56) = v15;
  *(a1 + 72) = v17;
  *(a1 + 80) = v17;
}

uint64_t sub_1BD275380@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v39 = a1;
  v40 = a2;
  v4 = sub_1BE051584();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F9E8);
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v36 = &v32 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F9F0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v32 - v18;
  if (v19)
  {
    v33 = v19;
    v32 = v19;
    sub_1BE051544();
    v35 = a3;
    (*(v5 + 104))(v8, *MEMORY[0x1E6981630], v4);
    v21 = sub_1BE0515E4();
    v34 = v15;
    v22 = v21;

    (*(v5 + 8))(v8, v4);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    *&v41[22] = v59;
    *&v41[38] = v60;
    *&v41[6] = v58;
    *(v51 + 2) = *v41;
    LOBYTE(v53) = 1;
    v50 = v22;
    LOWORD(v51[0]) = 1;
    *(&v51[1] + 2) = *&v41[16];
    *(&v51[2] + 2) = *&v41[32];
    *&v51[3] = *(&v60 + 1);
    BYTE8(v51[3]) = 0;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA08);
    sub_1BD275C34();
    v23 = v36;
    a3 = v35;
    sub_1BE050DE4();
    v24 = v33;

    v54 = v51[0];
    v55 = v51[1];
    v56[0] = v51[2];
    *(v56 + 9) = *(&v51[2] + 9);
    v53 = v50;
    v15 = v34;
    sub_1BD0DE53C(&v53, &qword_1EBD3FA08);
    sub_1BD275D14(v23, v20);
    (*(v37 + 56))(v20, 0, 1, v38);
  }

  else
  {
    v24 = 0;
    (*(v37 + 56))(&v32 - v18, 1, 1, v38);
  }

  *&v53 = v24;
  *(&v53 + 1) = v39;
  *&v54 = v40;
  sub_1BD275190(v48);
  sub_1BD0DE19C(v20, v15, &qword_1EBD3F9F0);
  v44 = v48[2];
  v45 = v48[3];
  v46 = v48[4];
  v47 = v49;
  v42 = v48[0];
  v43 = v48[1];
  sub_1BD0DE19C(v15, a3, &qword_1EBD3F9F0);
  v25 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F9F8) + 48);
  v27 = v45;
  v26 = v46;
  v51[2] = v45;
  v51[3] = v46;
  v28 = v47;
  v52 = v47;
  v29 = v43;
  v51[0] = v43;
  v51[1] = v44;
  v30 = v42;
  v50 = v42;
  *(v25 + 32) = v44;
  *(v25 + 48) = v27;
  *(v25 + 64) = v26;
  *(v25 + 80) = v28;
  *v25 = v30;
  *(v25 + 16) = v29;
  sub_1BD0DE19C(&v50, &v53, &qword_1EBD3FA00);
  sub_1BD0DE53C(v20, &qword_1EBD3F9F0);
  v55 = v44;
  v56[0] = v45;
  v56[1] = v46;
  v57 = v47;
  v53 = v42;
  v54 = v43;
  sub_1BD0DE53C(&v53, &qword_1EBD3FA00);
  return sub_1BD0DE53C(v15, &qword_1EBD3F9F0);
}

uint64_t sub_1BD27585C@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = sub_1BE04FF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F990);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  *v10 = sub_1BE04F504();
  *(v10 + 1) = 0x4018000000000000;
  v10[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F998);
  sub_1BD274D18(v11, v12, v13, &v10[*(v14 + 44)]);
  sub_1BE04FF44();
  sub_1BD0DE4F4(&qword_1EBD3F9A0, &qword_1EBD3F990);
  sub_1BE050D14();
  (*(v3 + 8))(v6, v2);
  return sub_1BD0DE53C(v10, &qword_1EBD3F990);
}

uint64_t sub_1BD275A2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BD275A74(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1BD275AC4()
{
  result = qword_1EBD3F9D0;
  if (!qword_1EBD3F9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F9C8);
    sub_1BD275B7C();
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F9D0);
  }

  return result;
}

unint64_t sub_1BD275B7C()
{
  result = qword_1EBD3F9D8;
  if (!qword_1EBD3F9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F9E0);
    sub_1BD166FEC();
    sub_1BD0DE4F4(&qword_1EBD38AB0, &qword_1EBD38AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F9D8);
  }

  return result;
}

unint64_t sub_1BD275C34()
{
  result = qword_1EBD3FA10;
  if (!qword_1EBD3FA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FA08);
    sub_1BD23F914();
    sub_1BD275CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FA10);
  }

  return result;
}

unint64_t sub_1BD275CC0()
{
  result = qword_1EBD3FA18;
  if (!qword_1EBD3FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FA18);
  }

  return result;
}

uint64_t sub_1BD275D14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F9E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD275D90@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for PeerPaymentGroupedPaymentsView();
  sub_1BD0DE19C(v1 + *(v12 + 24), v11, &qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BE04E664();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1BE052C44();
    v15 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

void PeerPaymentGroupedPaymentsView.init(request:transactionSourceCollection:context:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0x4040000000000000;
  v8 = *(type metadata accessor for PeerPaymentGroupedPaymentsView() + 24);
  *(a4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  swift_storeEnumTagMultiPayload();
  objc_allocWithZone(type metadata accessor for PeerPaymentGroupedPaymentsModel(0));
  v9 = a1;
  v10 = a2;
  PeerPaymentGroupedPaymentsModel.init(request:transactionSourceCollection:context:)(v9, v10, a3);
  v12 = v11;
  sub_1BE051694();

  a4[1] = v13;
  a4[2] = v14;
}

uint64_t type metadata accessor for PeerPaymentGroupedPaymentsView()
{
  result = qword_1EBD3FA80;
  if (!qword_1EBD3FA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PeerPaymentGroupedPaymentsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA28);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v13[-v6];
  *a1 = sub_1BE04F7B4();
  *(a1 + 8) = 0x4034000000000000;
  *(a1 + 16) = 0;
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA30) + 44);
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA38);
  sub_1BD0DE4F4(&qword_1EBD3FA40, &qword_1EBD3FA38);
  sub_1BE0504E4();
  v14 = v1;
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA48);
  sub_1BD0DE4F4(&qword_1EBD3FA50, &qword_1EBD3FA28);
  sub_1BD279F20();
  sub_1BE050954();
  (*(v4 + 8))(v7, v3);
  v9 = sub_1BE04EC54();
  v10 = sub_1BE0501F4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA68);
  v12 = v8 + *(result + 36);
  *v12 = v9;
  *(v12 + 8) = v10;
  return result;
}

uint64_t sub_1BD27632C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v88 = a2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FAC8);
  v96 = *(v98 - 1);
  MEMORY[0x1EEE9AC00](v98, v3);
  v83 = v80 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v80 - v7;
  v9 = sub_1BE04AA64();
  v84 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v82 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FAD8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v87 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v99 = v80 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v100 = v80 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v80 - v23;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FAE0);
  v86 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97, v25);
  v95 = v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v80 - v29;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FAE8);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v31);
  v91 = v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = v80 - v35;
  v102 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FAF0);
  sub_1BD27A19C();
  v89 = v36;
  sub_1BE051A44();
  v101 = a1;
  sub_1BD2774A0(a1, &v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
  sub_1BD27A340();
  sub_1BD27AC24(&qword_1EBD512E0, &qword_1EBD39E98);
  v90 = v30;
  v37 = v84;
  sub_1BE051A54();
  v81 = a1;
  v39 = *(a1 + 8);
  v38 = *(a1 + 16);
  v104 = v39;
  v105 = v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FAB0);
  sub_1BE0516A4();
  v41 = v103;
  sub_1BD8F8D70(v8);

  v42 = (*(v37 + 48))(v8, 1, v9);
  v94 = v24;
  if (v42 == 1)
  {
    sub_1BD0DE53C(v8, &unk_1EBD3CF70);
    v85 = *(v96 + 56);
    v85(v24, 1, 1, v98);
  }

  else
  {
    v43 = v82;
    v44 = (*(v37 + 32))(v82, v8, v9);
    v80[1] = v40;
    MEMORY[0x1EEE9AC00](v44, v45);
    v80[-2] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FB90);
    sub_1BD27A53C();
    v46 = v83;
    sub_1BE051A44();
    v47 = v96;
    v48 = v98;
    (*(v96 + 32))(v24, v46, v98);
    v85 = *(v47 + 56);
    v85(v24, 0, 1, v48);
    (*(v37 + 8))(v43, v9);
  }

  v104 = v39;
  v105 = v38;
  sub_1BE0516A4();
  v49 = v103;
  swift_getKeyPath();
  v50 = v39;
  v104 = v49;
  sub_1BD27A95C(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();

  v51 = *&v49[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request];
  sub_1BE048964();

  swift_getKeyPath();
  v104 = v51;
  sub_1BD27A95C(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest);
  sub_1BE04B594();

  v52 = v51[24];

  if (v52 & 1) != 0 || (v104 = v50, v105 = v38, sub_1BE0516A4(), v53 = v103, swift_getKeyPath(), v104 = v53, sub_1BE04B594(), , v54 = *&v53[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request], sub_1BE048964(), v53, swift_getKeyPath(), v104 = v54, sub_1BE04B594(), , v55 = *(v54 + 2), , LOBYTE(v54) = [v55 isPaid], v55, (v54))
  {
    v58 = 1;
    v59 = v98;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v56, v57);
    v80[-2] = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FB90);
    sub_1BD27A53C();
    v60 = v83;
    sub_1BE051A44();
    v61 = v98;
    (*(v96 + 32))(v100, v60, v98);
    v59 = v61;
    v58 = 0;
  }

  v62 = v94;
  v63 = v100;
  v85(v100, v58, 1, v59);
  v64 = *(v92 + 16);
  v65 = v91;
  v66 = v93;
  v64(v91, v89, v93);
  v67 = v86;
  v98 = *(v86 + 16);
  v68 = v95;
  (v98)(v95, v90, v97);
  sub_1BD0DE19C(v62, v99, &qword_1EBD3FAD8);
  v69 = v63;
  v70 = v87;
  sub_1BD0DE19C(v69, v87, &qword_1EBD3FAD8);
  v71 = v88;
  v64(v88, v65, v66);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FBB0);
  v73 = v97;
  (v98)(&v71[v72[12]], v68, v97);
  v74 = v99;
  sub_1BD0DE19C(v99, &v71[v72[16]], &qword_1EBD3FAD8);
  sub_1BD0DE19C(v70, &v71[v72[20]], &qword_1EBD3FAD8);
  sub_1BD0DE53C(v100, &qword_1EBD3FAD8);
  sub_1BD0DE53C(v94, &qword_1EBD3FAD8);
  v75 = *(v67 + 8);
  v76 = v73;
  v75(v90, v73);
  v77 = *(v92 + 8);
  v78 = v93;
  v77(v89, v93);
  sub_1BD0DE53C(v70, &qword_1EBD3FAD8);
  sub_1BD0DE53C(v74, &qword_1EBD3FAD8);
  v75(v95, v76);
  return (v77)(v91, v78);
}

uint64_t sub_1BD276EA8(uint64_t a1)
{
  v2 = type metadata accessor for PeerPaymentGroupedPaymentsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v11[3] = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FAB0);
  sub_1BE0516A4();
  sub_1BD8F8890();
  v7 = v6;

  v11[2] = v7;
  sub_1BD27A628(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1BD27A68C(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FBC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FB60);
  sub_1BD0DE4F4(&qword_1EBD3FBC8, &qword_1EBD3FBC0);
  sub_1BD27A3C4();
  sub_1BD27A95C(&unk_1EBD3FBD0, type metadata accessor for TransactionPresentation);
  return sub_1BE0519D4();
}

double sub_1BD2770B8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PeerPaymentGroupedPaymentsView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = *a1;
  sub_1BD27A628(a2, &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_1BD27A68C(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  v17 = 0;
  swift_retain_n();
  v13 = sub_1BE04F794();
  v14 = v17;
  *a3 = v10;
  *(a3 + 8) = sub_1BD27A9A4;
  *(a3 + 16) = v12;
  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = v14;
  *(a3 + 64) = v13;
  *(a3 + 72) = sub_1BD277450;
  *(a3 + 80) = 0;
  return result;
}

void sub_1BD277210(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FAB0);
  sub_1BE0516A4();
  v4 = *&v19[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel_transactionSourceCollection];

  v5 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v6 = [objc_opt_self() requiredContactKeys];
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56750);
    sub_1BE052744();

    v8 = sub_1BE052724();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E69B8740]) initWithContactStore:v5 keysToFetch:v8];

  v10 = [objc_opt_self() sharedService];
  v11 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  LOBYTE(v18) = 0;
  v12 = [objc_allocWithZone(PKPaymentTransactionDetailViewController) initWithTransaction:v3 transactionSourceCollection:v4 familyCollection:0 account:0 accountUserCollection:0 bankConnectInstitution:0 physicalCards:0 contactResolver:v9 peerPaymentWebService:v10 paymentServiceDataProvider:v11 detailViewStyle:0 allowTransactionLinks:v18];

  if (v12)
  {
    v13 = sub_1BE04F7B4();
    v14 = v12;
    v15 = sub_1BE04EC54();
    v16 = sub_1BE0501D4();

    v17 = 1;
  }

  else
  {
    v13 = 0;
    v17 = 0;
    v15 = 0;
    v16 = 0;
  }

  *a2 = v13;
  *(a2 + 8) = 0;
  *(a2 + 16) = v17;
  *(a2 + 24) = v12;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
}

id sub_1BD2774A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v30 = v8;
  v31 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FAB0);
  sub_1BE0516A4();
  v10 = v29;
  swift_getKeyPath();
  v30 = v10;
  sub_1BD27A95C(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();

  v11 = *&v10[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request];
  sub_1BE048964();

  swift_getKeyPath();
  v30 = v11;
  sub_1BD27A95C(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest);
  sub_1BE04B594();

  LOBYTE(a1) = v11[24];

  if ((a1 & 1) == 0)
  {
    v30 = v8;
    v31 = v9;
    sub_1BE0516A4();
    v12 = v29;
    swift_getKeyPath();
    v30 = v12;
    sub_1BE04B594();

    v13 = *&v12[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request];
    sub_1BE048964();

    swift_getKeyPath();
    v30 = v13;
    sub_1BE04B594();

    v14 = *(v13 + 2);

    LODWORD(v13) = [v14 isPaid];

    if (!v13)
    {
      result = 0;
      v22 = 0;
      v25 = 0;
      v23 = 0;
      goto LABEL_6;
    }
  }

  v16 = v27;
  v15 = v28;
  (*(v27 + 104))(v7, *MEMORY[0x1E69B8050], v28);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_1BE04B6F4();
    v21 = v20;

    (*(v16 + 8))(v7, v15);
    v30 = v19;
    v31 = v21;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    v25 = v24 & 1;
LABEL_6:
    *a2 = result;
    a2[1] = v22;
    a2[2] = v25;
    a2[3] = v23;
    return result;
  }

  __break(1u);
  return result;
}

int *sub_1BD277830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v32 = a2;
  v29 = sub_1BE04AA64();
  v2 = *(v29 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v29, v4);
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v30 = *(v10 - 8);
  v31 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v28 - v13;
  (*(v6 + 104))(v9, *MEMORY[0x1E69B8050], v5, v12);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v6 + 8))(v9, v5);
    *&v33 = v17;
    *(&v33 + 1) = v19;
    v20 = v29;
    (*(v2 + 16))(&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v29);
    v21 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v22 = swift_allocObject();
    (*(v2 + 32))(v22 + v21, &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
    sub_1BD0DDEBC();
    sub_1BE051744();
    sub_1BE051CE4();
    sub_1BE04EE54();
    v23 = v32;
    (*(v30 + 32))(v32, v14, v31);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FB90);
    v24 = (v23 + result[9]);
    v25 = v38;
    v24[4] = v37;
    v24[5] = v25;
    v24[6] = v39;
    v26 = v34;
    *v24 = v33;
    v24[1] = v26;
    v27 = v36;
    v24[2] = v35;
    v24[3] = v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD277BBC()
{
  v0 = sub_1BE04A9C4();
  PKOpenURL();
}

int *sub_1BD277C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v30 = a2;
  v2 = type metadata accessor for PeerPaymentGroupedPaymentsView();
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v10 = *(v29 - 8);
  v12 = MEMORY[0x1EEE9AC00](v29, v11);
  v14 = &v27 - v13;
  (*(v6 + 104))(v9, *MEMORY[0x1E69B8050], v5, v12);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v6 + 8))(v9, v5);
    *&v31 = v17;
    *(&v31 + 1) = v19;
    sub_1BD27A628(v28, &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v21 = swift_allocObject();
    sub_1BD27A68C(&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    sub_1BD0DDEBC();
    sub_1BE051744();
    sub_1BE051CE4();
    sub_1BE04EE54();
    v22 = v30;
    (*(v10 + 32))(v30, v14, v29);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FB90);
    v23 = (v22 + result[9]);
    v24 = v36;
    v23[4] = v35;
    v23[5] = v24;
    v23[6] = v37;
    v25 = v32;
    *v23 = v31;
    v23[1] = v25;
    v26 = v34;
    v23[2] = v33;
    v23[3] = v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD277F64(uint64_t a1)
{
  v2 = sub_1BE04E664();
  v14 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v16 = v7;
  v17 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FAB0);
  sub_1BE0516A4();
  v8 = v15;
  swift_getKeyPath();
  v16 = v8;
  sub_1BD27A95C(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();

  v9 = *&v8[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request];
  sub_1BE048964();

  if (v9[24] == 1)
  {
    v9[24] = 1;
    sub_1BD8F75F8(1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v13 = &v13;
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    *(&v13 - 2) = v9;
    *(&v13 - 8) = 1;
    v16 = v9;
    sub_1BD27A95C(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest);
    sub_1BE04B584();
  }

  v16 = v7;
  v17 = v6;
  sub_1BE0516A4();
  v12 = *&v15[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel_context];

  if (!v12)
  {
    sub_1BD275D90(v5);
    sub_1BE04E654();
    (*(v14 + 8))(v5, v2);
  }
}

void sub_1BD278240(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v25 = *(a1 + 8);
  v26 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FAB0);
  sub_1BE0516A4();
  v10 = v24[1];
  swift_getKeyPath();
  v25 = v10;
  sub_1BD27A95C(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();

  v11 = *&v10[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request];
  sub_1BE048964();

  swift_getKeyPath();
  v25 = v11;
  sub_1BD27A95C(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest);
  sub_1BE04B594();

  v12 = *(v11 + 2);

  v13 = PKPeerPaymentTotalAmountReceivedForPendingRequest(v12);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = [v13 formattedStringValue];
  if (!v14)
  {

LABEL_6:
    v16 = 0;
    v18 = 0;
    v21 = 0;
    v23 = 0;
    goto LABEL_7;
  }

  v15 = v14;
  v16 = sub_1BE052434();
  v18 = v17;

  (*(v5 + 104))(v8, *MEMORY[0x1E69B8050], v4);
  v19 = PKPassKitBundle();
  if (v19)
  {
    v20 = v19;
    v21 = sub_1BE04B6F4();
    v23 = v22;

    (*(v5 + 8))(v8, v4);
LABEL_7:
    *a2 = v16;
    a2[1] = v18;
    a2[2] = v21;
    a2[3] = v23;
    return;
  }

  __break(1u);
}