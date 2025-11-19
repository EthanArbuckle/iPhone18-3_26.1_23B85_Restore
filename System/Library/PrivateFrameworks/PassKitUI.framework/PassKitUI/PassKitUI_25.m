void sub_1BD2E4300(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + *(type metadata accessor for PeerPaymentModel() + 24);
  v10 = *v9;
  if (*v9 < 2uLL)
  {
    v11 = 0uLL;
    if (v10 == 1 || (*(v9 + 80) & 1) == 0)
    {
      v33 = 0;
      v34 = -256;
      v35 = 0uLL;
      v36 = 0uLL;
LABEL_18:
      *a2 = v11;
      *(a2 + 16) = v35;
      *(a2 + 32) = v36;
      *(a2 + 48) = v33;
      *(a2 + 56) = v34;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BE0B98D0;
    v13 = sub_1BE0501E4();
    *(v12 + 32) = v13;
    v14 = sub_1BE0501F4();
    *(v12 + 33) = v14;
    v15 = sub_1BE050224();
    *(v12 + 34) = v15;
    v16 = sub_1BE050214();
    sub_1BE050214();
    if (sub_1BE050214() != v13)
    {
      v16 = sub_1BE050214();
    }

    sub_1BE050214();
    if (sub_1BE050214() != v14)
    {
      v16 = sub_1BE050214();
    }

    sub_1BE050214();
    if (sub_1BE050214() != v15)
    {
      v16 = sub_1BE050214();
    }

    sub_1BE04E1F4();
    v51 = 0;
    v50 = 1;
    v37 = 1;
    LOWORD(v38) = 1;
    LOBYTE(v39) = v16;
    v40 = v17;
    v41 = v18;
    v42 = v19;
    v43 = v20;
    v44 = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD414F8);
    sub_1BD2EE288();
    sub_1BD2EE2DC();
    sub_1BE04F9A4();
LABEL_17:
    v11 = v45;
    v35 = v46;
    v36 = v47;
    v33 = v48;
    v34 = v49;
    goto LABEL_18;
  }

  (*(v5 + 104))(v8, *MEMORY[0x1E69B8050], v4);
  v21 = v10;
  v22 = PKPassKitBundle();
  if (v22)
  {
    v23 = v22;
    v24 = sub_1BE04B6F4();
    v26 = v25;

    (*(v5 + 8))(v8, v4);
    v27 = [v21 fees];
    v28 = [v21 feesCurrency];
    v29 = PKFormattedCurrencyStringFromNumber();

    if (v29)
    {
      v30 = sub_1BE052434();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0xE000000000000000;
    }

    v51 = 0;
    v37 = v24;
    v38 = v26;
    v39 = v30;
    v40 = v32;
    HIBYTE(v44) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD414F8);
    sub_1BD2EE288();
    sub_1BD2EE2DC();
    sub_1BE04F9A4();

    goto LABEL_17;
  }

  __break(1u);
}

uint64_t (*sub_1BD2E46D8())()
{
  v1 = type metadata accessor for PaymentSheet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v4);
  v5 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for PeerPaymentModel();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((PKOslo2024UIUpdatesEnabled() & 1) == 0)
  {
    v24 = v2;
    v25 = v0;
    v26 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_1BD0DE53C(v12, &qword_1EBD45480);
    }

    else
    {
      sub_1BD2EE3C8(v12, v17, type metadata accessor for PeerPaymentModel);
      if (v17[*(v13 + 52)] == 1 && v17[*(v13 + 44)] == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1BE04D8B4();

        sub_1BD2EE430(v17, type metadata accessor for PeerPaymentModel);
        v18 = v8[*(v5 + 24)];
        sub_1BD2EE430(v8, type metadata accessor for Passes);
        if ((v18 & 1) == 0)
        {
          v19 = v26;
          sub_1BD2EE220(v25, v26, type metadata accessor for PaymentSheet);
          v20 = (*(v24 + 80) + 16) & ~*(v24 + 80);
          v21 = swift_allocObject();
          sub_1BD2EE3C8(v19, v21 + v20, type metadata accessor for PaymentSheet);
          return sub_1BD2EE3BC;
        }
      }

      else
      {
        sub_1BD2EE430(v17, type metadata accessor for PeerPaymentModel);
      }
    }
  }

  return 0;
}

void sub_1BD2E4AA4(uint64_t a1)
{
  v2 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD2EE220(a1, v13, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = type metadata accessor for WrappedPass;
      v16 = v13;
LABEL_12:
      sub_1BD2EE430(v16, v15);
      return;
    }

    sub_1BD2EE3C8(v13, v9, type metadata accessor for PlaceholderPass);
    v18 = [objc_allocWithZone(MEMORY[0x1E69B91E8]) init];
    [v18 setCardType_];
    sub_1BD2EE430(v9, type metadata accessor for PlaceholderPass);
LABEL_7:
    v19 = [v18 paymentPass];

    if (!v19)
    {
      return;
    }

    v20 = (a1 + *(type metadata accessor for AvailablePass(0) + 52));
    if (*v20)
    {
      v21 = v20[3];
      v22 = v21;
    }

    else
    {
      v21 = 0;
    }

    *v5 = v19;
    v5[1] = v21;
    swift_storeEnumTagMultiPayload();
    sub_1BD6B56B4(v5, 1);
    v15 = type metadata accessor for Analytics.StateChange;
    v16 = v5;
    goto LABEL_12;
  }

  v17 = *v13;
  v18 = [*v13 secureElementPass];

  if (v18)
  {
    goto LABEL_7;
  }
}

uint64_t (*sub_1BD2E4D24())()
{
  v1 = type metadata accessor for PaymentSheet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v4);
  v5 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v0 + 8) + qword_1EBDAB308) == 4)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v10 = *&v8[*(v5 + 28)];
  sub_1BE048C84();
  sub_1BD2EE430(v8, type metadata accessor for Passes);
  v11 = *(v10 + 16);

  if (!v11)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v12 = v8[*(v5 + 32)];
    sub_1BD2EE430(v8, type metadata accessor for Passes);
    if (v12 != 1)
    {
      return 0;
    }
  }

  sub_1BD2EE220(v0, &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentSheet);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  sub_1BD2EE3C8(&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PaymentSheet);
  return sub_1BD2EE510;
}

void sub_1BD2E4FB4()
{
  v1 = v0;
  v2 = type metadata accessor for PaymentSheet();
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v32 = v4;
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v30, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v0 + *(v2 + 72));
  v11 = *v9;
  v10 = v9[1];
  aBlock = *v9;
  v34 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41370);
  sub_1BE0516A4();
  v12 = v39;
  if (v39)
  {
    goto LABEL_9;
  }

  v29 = v5;
  v13 = [objc_opt_self() sharedService];
  v14 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v15 = aBlock;
  v16 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService:v13 paymentOffersController:aBlock];

  aBlock = v11;
  v34 = v10;
  v39 = v16;
  sub_1BE0516B4();
  aBlock = v11;
  v34 = v10;
  sub_1BE0516A4();
  v17 = v39;
  if (v39)
  {
    if (*(v14 + qword_1EBDAB310 + 8))
    {
      sub_1BE048C84();
      v18 = sub_1BE052404();
    }

    else
    {
      v18 = 0;
    }

    [v17 setReferrerIdentifier_];
  }

  aBlock = v11;
  v34 = v10;
  sub_1BE0516A4();
  v12 = v39;
  v5 = v29;
  if (v39)
  {
    [v39 setIncludePendingVerificationCredentials_];
LABEL_9:
  }

  aBlock = v11;
  v34 = v10;
  sub_1BE0516A4();
  v19 = v39;
  if (v39)
  {
    v20 = v1 + *(v2 + 76);
    v21 = *v20;
    v22 = *(v20 + 8);
    LOBYTE(aBlock) = v21;
    v34 = v22;
    LOBYTE(v39) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516B4();
    sub_1BD6B2184(4, 1u, 0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v23 = *&v8[*(v30 + 44)];
    sub_1BE048C84();
    sub_1BD2EE430(v8, type metadata accessor for Passes);
    if (v23)
    {
      type metadata accessor for PKPaymentNetwork(0);
      v24 = sub_1BE052724();
    }

    else
    {
      v24 = 0;
    }

    [v19 setAllowedPaymentNetworks_];

    sub_1BD2EE220(v1, v5, type metadata accessor for PaymentSheet);
    v25 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v26 = swift_allocObject();
    sub_1BD2EE3C8(v5, v26 + v25, type metadata accessor for PaymentSheet);
    v37 = sub_1BD2EE490;
    v38 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_1BD3CC8C0;
    v36 = &block_descriptor_47;
    v27 = _Block_copy(&aBlock);

    [v19 preflightWithCompletion_];
    _Block_release(v27);
  }
}

uint64_t sub_1BD2E5488()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v50 - v10;
  v55 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v55, v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v50 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v50 - v25;
  v27 = type metadata accessor for PeerPaymentModel();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = PKOslo2024UIUpdatesEnabled();
  if (result)
  {
    v51 = v7;
    v52 = v22;
    v53 = v14;
    v33 = *(v56 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    v54 = v33;
    sub_1BE04D8B4();

    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {
      sub_1BD0DE53C(v26, &qword_1EBD45480);
    }

    else
    {
      sub_1BD2EE3C8(v26, v31, type metadata accessor for PeerPaymentModel);
      if (v31[*(v27 + 52)] == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v34 = v52;
        sub_1BE04D8B4();

        v35 = *(v34 + *(v55 + 24));
        sub_1BD2EE430(v34, type metadata accessor for Passes);
        v36 = v3;
        v37 = v53;
        if (v35)
        {
          sub_1BD2EE430(v31, type metadata accessor for PeerPaymentModel);
        }

        else
        {
          v46 = v31[*(v27 + 44)];
          sub_1BD2EE430(v31, type metadata accessor for PeerPaymentModel);
          if ((v46 & 1) == 0)
          {
            return 0;
          }
        }

LABEL_9:
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1BE04D8B4();

        v38 = v55;
        if (v18[*(v55 + 24)] == 1 && (sub_1BD0DE19C(v18, v11, &qword_1EBD520A0), v39 = type metadata accessor for AvailablePass(0), v40 = (*(*(v39 - 8) + 48))(v11, 1, v39), sub_1BD0DE53C(v11, &qword_1EBD520A0), v40 == 1) && !*(*&v18[*(v38 + 28)] + 16))
        {
          v47 = v51;
          sub_1BD4941F8(v51);
          v48 = type metadata accessor for UnavailablePass(0);
          v49 = (*(*(v48 - 8) + 48))(v47, 1, v48);
          sub_1BD0DE53C(v47, &qword_1EBD3C3F8);
          sub_1BD2EE430(v18, type metadata accessor for Passes);
          if (v49 == 1)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_1BE04D8B4();

            if (v57 != 1)
            {
              return 0;
            }
          }
        }

        else
        {
          sub_1BD2EE430(v18, type metadata accessor for Passes);
        }

        if ((sub_1BD2DF874() & 1) == 0)
        {
          return 1;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v41 = v52;
        sub_1BE04D8B4();

        v42 = *(v41 + *(v38 + 28));
        sub_1BE048C84();
        sub_1BD2EE430(v41, type metadata accessor for Passes);
        v43 = *(v42 + 16);

        if (v43)
        {
          return 1;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_1BE04D8B4();

        sub_1BD49404C(v36);
        sub_1BD2EE430(v37, type metadata accessor for Passes);
        v44 = type metadata accessor for UnavailablePass(0);
        v45 = (*(*(v44 - 8) + 48))(v36, 1, v44);
        sub_1BD0DE53C(v36, &qword_1EBD3C3F8);
        return v45 == 1;
      }

      sub_1BD2EE430(v31, type metadata accessor for PeerPaymentModel);
    }

    v36 = v3;
    v37 = v53;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1BD2E5BDC@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v162 = &v131 - v5;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B20);
  MEMORY[0x1EEE9AC00](v153, v6);
  v152 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v151 = &v131 - v10;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v163, v11);
  v156 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v155 = &v131 - v15;
  v134 = sub_1BE04BD74();
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v16);
  v132 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PaymentSheet();
  v147 = *(v18 - 8);
  v19 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v142 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v138 = &v131 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v140 = &v131 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v141 = &v131 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v143 = &v131 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v144 = &v131 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v131 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v43 = &v131 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v47 = &v131 - v46;
  v158 = type metadata accessor for Passes(0);
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158, v48);
  v50 = &v131 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(v1 + 8);
  v137 = qword_1EBDAB308;
  v150 = *(v51 + qword_1EBDAB308);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v149 = v170;
  swift_getKeyPath();
  swift_getKeyPath();
  v159 = v50;
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v172 = v167;
  v173 = v168;
  v174 = v169;
  v170 = v165;
  v171 = v166;
  swift_getKeyPath();
  swift_getKeyPath();
  v160 = v47;
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v52 = _s14PaymentSummaryVMa();
  v53 = *(*(v52 - 8) + 56);
  v161 = v43;
  v53(v43, 0, 1, v52);
  v154 = [*(v51 + qword_1EBDAAD68 + 32) paymentOffersController];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v148 = v165;
  sub_1BD2EE220(v1, v39, type metadata accessor for PaymentSheet);
  v54 = (*(v147 + 80) + 16) & ~*(v147 + 80);
  v147 = swift_allocObject();
  sub_1BD2EE3C8(v39, v147 + v54, type metadata accessor for PaymentSheet);
  sub_1BD2EE220(v1, v39, type metadata accessor for PaymentSheet);
  v146 = swift_allocObject();
  v135 = v39;
  sub_1BD2EE3C8(v39, v146 + v54, type metadata accessor for PaymentSheet);
  v55 = v144;
  sub_1BD2EE220(v1, v144, type metadata accessor for PaymentSheet);
  v145 = swift_allocObject();
  sub_1BD2EE3C8(v55, v145 + v54, type metadata accessor for PaymentSheet);
  v56 = v143;
  sub_1BD2EE220(v1, v143, type metadata accessor for PaymentSheet);
  v144 = swift_allocObject();
  sub_1BD2EE3C8(v56, v144 + v54, type metadata accessor for PaymentSheet);
  v57 = v141;
  sub_1BD2EE220(v1, v141, type metadata accessor for PaymentSheet);
  v143 = swift_allocObject();
  sub_1BD2EE3C8(v57, v143 + v54, type metadata accessor for PaymentSheet);
  v58 = v140;
  sub_1BD2EE220(v1, v140, type metadata accessor for PaymentSheet);
  v141 = swift_allocObject();
  sub_1BD2EE3C8(v58, v141 + v54, type metadata accessor for PaymentSheet);
  v140 = sub_1BD2EB210();
  v139 = v59;
  if (*(v51 + v137) == 10)
  {
    v60 = v133;
    v61 = v132;
    v62 = v134;
    (*(v133 + 104))(v132, *MEMORY[0x1E69B8070], v134);
    v137 = sub_1BE04B714();
    v136 = v63;
    (*(v60 + 8))(v61, v62);
  }

  else
  {
    if (qword_1EBD36C30 != -1)
    {
      swift_once();
    }

    v137 = qword_1EBDAB188;
    v136 = unk_1EBDAB190;
    sub_1BE048C84();
  }

  v64 = v138;
  sub_1BD2EE220(v1, v138, type metadata accessor for PaymentSheet);
  v134 = swift_allocObject();
  sub_1BD2EE3C8(v64, v134 + v54, type metadata accessor for PaymentSheet);
  v65 = v135;
  sub_1BD2EE220(v1, v135, type metadata accessor for PaymentSheet);
  v133 = swift_allocObject();
  sub_1BD2EE3C8(v65, v133 + v54, type metadata accessor for PaymentSheet);
  v66 = v142;
  sub_1BD2EE220(v1, v142, type metadata accessor for PaymentSheet);
  v135 = swift_allocObject();
  sub_1BD2EE3C8(v66, &v135[v54], type metadata accessor for PaymentSheet);
  LODWORD(v138) = sub_1BD2DF874();
  v67 = *(v1 + 80);
  v68 = type metadata accessor for PaymentPassMethodSheet(0);
  v69 = a1 + v68[27];
  memset(v164, 0, sizeof(v164));
  v142 = v67;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41368);
  sub_1BE051694();
  v70 = v168;
  v71 = v166;
  *v69 = v165;
  *(v69 + 1) = v71;
  *(v69 + 2) = v167;
  *(v69 + 6) = v70;
  v72 = (a1 + v68[28]);
  type metadata accessor for PresentationContext();
  sub_1BD2EE53C(&unk_1EBD361B0, type metadata accessor for PresentationContext);
  *v72 = sub_1BE04EEC4();
  v72[1] = v73;
  v74 = v68[29];
  *&v164[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710);
  sub_1BE051694();
  *(a1 + v74) = v165;
  v75 = type metadata accessor for AvailablePass(0);
  v76 = *(v75 - 8);
  v131 = *(v76 + 56);
  v132 = (v76 + 56);
  v77 = v155;
  v131(v155, 1, 1, v75);
  v78 = v156;
  sub_1BD0DE19C(v77, v156, &qword_1EBD520A0);
  sub_1BE051694();
  sub_1BD0DE53C(v77, &qword_1EBD520A0);
  v79 = v68[31];
  *&v164[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B50);
  sub_1BE051694();
  *(a1 + v79) = v165;
  v80 = _s11DetailSheetOMa();
  v81 = v151;
  (*(*(v80 - 8) + 56))(v151, 1, 1, v80);
  sub_1BD0DE19C(v81, v152, &unk_1EBD43B20);
  sub_1BE051694();
  sub_1BD0DE53C(v81, &unk_1EBD43B20);
  v82 = a1 + v68[33];
  LOBYTE(v164[0]) = 0;
  sub_1BE051694();
  v83 = *(&v165 + 1);
  *v82 = v165;
  *(v82 + 1) = v83;
  *&v167 = 0;
  v165 = 0u;
  v166 = 0u;
  sub_1BD0DE19C(&v165, v164, &qword_1EBD51EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0);
  sub_1BE051694();
  sub_1BD0DE53C(&v165, &qword_1EBD51EC0);
  v131(v77, 1, 1, v75);
  sub_1BD0DE19C(v77, v78, &qword_1EBD520A0);
  sub_1BE051694();
  sub_1BD0DE53C(v77, &qword_1EBD520A0);
  v84 = (a1 + v68[36]);
  v85 = MEMORY[0x1E69E7CC0];
  *&v164[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B60);
  sub_1BE051694();
  v86 = *(&v165 + 1);
  *v84 = v165;
  v84[1] = v86;
  v87 = a1 + v68[37];
  v164[0] = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
  sub_1BE051694();
  v88 = v166;
  *v87 = v165;
  *(v87 + 2) = v88;
  v89 = a1 + v68[38];
  LOBYTE(v164[0]) = 0;
  sub_1BE051694();
  v90 = *(&v165 + 1);
  *v89 = v165;
  *(v89 + 1) = v90;
  v91 = a1 + v68[39];
  LOBYTE(v164[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39250);
  sub_1BE051694();
  v92 = *(&v165 + 1);
  *v91 = v165;
  *(v91 + 1) = v92;
  v93 = v68[40];
  *(a1 + v93) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  swift_storeEnumTagMultiPayload();
  v94 = v149;
  *a1 = v150;
  a1[1] = v94;
  v95 = v159;
  sub_1BD2EE220(v159, a1 + v68[6], type metadata accessor for Passes);
  v96 = (a1 + v68[7]);
  v97 = v173;
  v96[2] = v172;
  v96[3] = v97;
  v96[4] = v174;
  v98 = v171;
  *v96 = v170;
  v96[1] = v98;
  v99 = v160;
  sub_1BD0DE19C(v160, a1 + v68[8], &qword_1EBD45480);
  v100 = v161;
  sub_1BD0DE19C(v161, a1 + v68[9], &unk_1EBD43B30);
  v101 = v154;
  *(a1 + v68[10]) = v154;
  *(a1 + v68[11]) = v148;
  v102 = (a1 + v68[12]);
  v103 = v147;
  *v102 = sub_1BD2EE58C;
  v102[1] = v103;
  v104 = (a1 + v68[13]);
  v105 = v146;
  *v104 = sub_1BD2EE584;
  v104[1] = v105;
  v106 = (a1 + v68[14]);
  v107 = v145;
  *v106 = sub_1BD2EE598;
  v106[1] = v107;
  v108 = (a1 + v68[15]);
  v109 = v144;
  *v108 = sub_1BD2EE590;
  v108[1] = v109;
  v110 = (a1 + v68[16]);
  v111 = v143;
  *v110 = sub_1BD2EE594;
  v110[1] = v111;
  v112 = (a1 + v68[17]);
  v113 = v141;
  *v112 = sub_1BD2ED6E0;
  v112[1] = v113;
  v114 = (a1 + v68[18]);
  v115 = v139;
  *v114 = v140;
  v114[1] = v115;
  v116 = (a1 + v68[19]);
  v117 = v136;
  *v116 = v137;
  v116[1] = v117;
  v118 = (a1 + v68[20]);
  v119 = v134;
  *v118 = sub_1BD2ED740;
  v118[1] = v119;
  v120 = (a1 + v68[23]);
  v121 = v133;
  *v120 = sub_1BD2EE588;
  v120[1] = v121;
  v122 = (a1 + v68[24]);
  v123 = v135;
  *v122 = sub_1BD2ED7D4;
  v122[1] = v123;
  *&v165 = v85;
  v124 = v101;
  sub_1BD71580C(v101);
  if (v125)
  {
    sub_1BDA7A810(v125);
    v85 = v165;
  }

  *&v164[0] = v85;
  sub_1BE048C84();
  sub_1BD394CD0(v164);

  v126 = v68[26];
  *(a1 + v68[21]) = *&v164[0];
  v127 = v162;
  sub_1BD2EE220(v95, v162, type metadata accessor for Passes);
  (*(v157 + 56))(v127, 0, 1, v158);
  v165 = 1uLL;
  v166 = 0uLL;
  LOBYTE(v167) = 0;
  *(a1 + v68[22]) = sub_1BD7D51F4(v127, &v165, v101);
  *(a1 + v68[25]) = v138 & 1;
  *(a1 + v126) = v142;
  sub_1BD0E5E8C(0, &qword_1EBD43B70);
  v128 = [swift_getObjCClassFromMetadata() appearance];
  v129 = [objc_opt_self() clearColor];
  [v128 setBackgroundColor_];

  sub_1BD0DE53C(v100, &unk_1EBD43B30);
  sub_1BD0DE53C(v99, &qword_1EBD45480);
  return sub_1BD2EE430(v95, type metadata accessor for Passes);
}

uint64_t sub_1BD2E6FEC@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v100 = &v87 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C940);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v102 = &v87 - v7;
  v8 = _s11TotalAmountVMa(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v94 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s14PaymentSummaryVMa();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v93 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v98 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v92 = &v87 - v19;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v90, v20);
  v89 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v88 = &v87 - v24;
  v25 = type metadata accessor for PaymentSheet();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25 - 8, v28);
  v29 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v87 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v87 - v36;
  v87 = type metadata accessor for PaymentSummarySheet();
  MEMORY[0x1EEE9AC00](v87, v38);
  v40 = &v87 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v101 = &v87 - v43;
  v91 = *(v1 + 8);
  sub_1BD2589C8(v108);
  sub_1BD2EE220(v1, v37, type metadata accessor for PaymentSheet);
  v44 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v99 = swift_allocObject();
  sub_1BD2EE3C8(v37, v99 + v44, type metadata accessor for PaymentSheet);
  sub_1BD2EE220(v1, v33, type metadata accessor for PaymentSheet);
  v97 = swift_allocObject();
  sub_1BD2EE3C8(v33, v97 + v44, type metadata accessor for PaymentSheet);
  sub_1BD2EE220(v1, v29, type metadata accessor for PaymentSheet);
  v96 = swift_allocObject();
  sub_1BD2EE3C8(v29, v96 + v44, type metadata accessor for PaymentSheet);
  v103 = v1;
  v45 = v87;
  sub_1BD2EE220(v1, v29, type metadata accessor for PaymentSheet);
  v95 = swift_allocObject();
  sub_1BD2EE3C8(v29, v95 + v44, type metadata accessor for PaymentSheet);
  *v40 = sub_1BD24B1AC;
  *(v40 + 1) = 0;
  v40[16] = 0;
  v46 = type metadata accessor for MultiHyperLinkDetailSheet();
  v47 = v88;
  (*(*(v46 - 8) + 56))(v88, 1, 1, v46);
  sub_1BD0DE19C(v47, v89, &unk_1EBD45160);
  sub_1BE051694();
  sub_1BD0DE53C(v47, &unk_1EBD45160);
  v48 = &v40[v45[22]];
  v105 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41358);
  sub_1BE051694();
  v49 = v107;
  *v48 = v106;
  *(v48 + 1) = v49;
  v50 = &v40[v45[23]];
  *v50 = swift_getKeyPath();
  v50[8] = 0;
  v51 = &v40[v45[24]];
  *v51 = swift_getKeyPath();
  v51[8] = 0;
  v52 = &v40[v45[25]];
  *v52 = swift_getKeyPath();
  v52[8] = 0;
  v53 = &v40[v45[26]];
  type metadata accessor for PresentationContext();
  sub_1BD2EE53C(&unk_1EBD361B0, type metadata accessor for PresentationContext);
  *v53 = sub_1BE04EEC4();
  v53[1] = v54;
  swift_getKeyPath();
  swift_getKeyPath();
  v55 = v92;
  v56 = v91;
  sub_1BE04D8B4();

  sub_1BD0DE19C(v55, &v40[v45[5]], &qword_1EBD520A0);
  sub_1BD2EE430(v55, type metadata accessor for Passes);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *&v40[v45[8]] = *(v56 + qword_1EBDAB308);
  swift_getKeyPath();
  swift_getKeyPath();
  v57 = v93;
  sub_1BE04D8B4();

  v58 = v94;
  sub_1BD2EE220(v57, v94, _s11TotalAmountVMa);
  sub_1BD2EE430(v57, _s14PaymentSummaryVMa);
  v59 = v58;
  v60 = sub_1BD1C9A74();
  v62 = v61;
  sub_1BD2EE430(v59, _s11TotalAmountVMa);
  v63 = &v40[v45[9]];
  *v63 = v60;
  v63[1] = v62;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *&v40[v45[11]] = v106;
  swift_getKeyPath();
  swift_getKeyPath();
  v64 = v98;
  sub_1BE04D8B4();

  v65 = v100;

  sub_1BD0DE19C(v64, v65, &qword_1EBD520A0);
  sub_1BD2EE430(v64, type metadata accessor for Passes);
  v66 = type metadata accessor for AvailablePass(0);
  if ((*(*(v66 - 8) + 48))(v65, 1, v66) == 1)
  {
    sub_1BD0DE53C(v65, &qword_1EBD520A0);
    v67 = type metadata accessor for PassEligibleRewardsInfo();
    v68 = v102;
    (*(*(v67 - 8) + 56))(v102, 1, 1, v67);
  }

  else
  {
    v69 = v65 + *(v66 + 40);
    v68 = v102;
    sub_1BD0DE19C(v69, v102, &unk_1EBD4C940);
    sub_1BD2EE430(v65, type metadata accessor for AvailablePass);
  }

  sub_1BD0DE204(v68, &v40[v45[12]], &unk_1EBD4C940);
  v70 = &v40[v45[13]];
  v71 = v108[5];
  *(v70 + 4) = v108[4];
  *(v70 + 5) = v71;
  *(v70 + 6) = v108[6];
  v72 = v108[1];
  *v70 = v108[0];
  *(v70 + 1) = v72;
  v73 = v108[3];
  *(v70 + 2) = v108[2];
  *(v70 + 3) = v73;
  v74 = &v40[v45[14]];
  v75 = v99;
  *v74 = sub_1BD2EB5A8;
  v74[1] = v75;
  v76 = &v40[v45[15]];
  v77 = v97;
  *v76 = sub_1BD2EB8CC;
  v76[1] = v77;
  v78 = &v40[v45[16]];
  v79 = v95;
  *v78 = sub_1BD2EB940;
  *(v78 + 1) = v79;
  v80 = &v40[v45[20]];
  v81 = v96;
  *v80 = sub_1BD2EB93C;
  *(v80 + 1) = v81;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *&v40[v45[18]] = v106;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *&v40[v45[17]] = v106;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *&v40[v45[19]] = v106;
  v82 = v101;
  sub_1BD2EE3C8(v40, v101, type metadata accessor for PaymentSummarySheet);
  v83 = *(v103 + 24);
  v84 = v82;
  v85 = v104;
  sub_1BD2EE3C8(v84, v104, type metadata accessor for PaymentSummarySheet);
  *(v85 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41248) + 36)) = v83;
  return sub_1BE048964();
}

void sub_1BD2E7CBC(uint64_t a1@<X8>)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v37, v3);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v35 = &v32 - v7;
  v8 = type metadata accessor for PaymentSheet();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v12 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v32 - v15;
  v17 = *(v1 + 8);
  v33 = v1;
  v34 = v17;
  sub_1BD2EE220(v1, &v32 - v15, type metadata accessor for PaymentSheet);
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v38 = swift_allocObject();
  sub_1BD2EE3C8(v16, v38 + v18, type metadata accessor for PaymentSheet);
  sub_1BD2EE220(v33, v12, type metadata accessor for PaymentSheet);
  v19 = swift_allocObject();
  sub_1BD2EE3C8(v12, v19 + v18, type metadata accessor for PaymentSheet);
  type metadata accessor for ShippingMethodSheet();
  v20 = type metadata accessor for MultiHyperLinkDetailSheet();
  v21 = v35;
  (*(*(v20 - 8) + 56))(v35, 1, 1, v20);
  sub_1BD0DE19C(v21, v36, &unk_1EBD45160);
  sub_1BE051694();
  sub_1BD0DE53C(v21, &unk_1EBD45160);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v55 = v41;
  v56 = v42;
  v57 = v43;
  v58 = v44;
  v51 = v40[6];
  v52 = v40[7];
  v53 = v40[8];
  v54 = v40[9];
  v47 = v40[2];
  v48 = v40[3];
  v49 = v40[4];
  v50 = v40[5];
  v45 = v40[0];
  v46 = v40[1];
  v22 = v42;
  *(a1 + 160) = v41;
  *(a1 + 176) = v22;
  v23 = v58;
  *(a1 + 192) = v57;
  *(a1 + 208) = v23;
  v24 = v52;
  *(a1 + 96) = v51;
  *(a1 + 112) = v24;
  v25 = v54;
  *(a1 + 128) = v53;
  *(a1 + 144) = v25;
  v26 = v48;
  *(a1 + 32) = v47;
  *(a1 + 48) = v26;
  v27 = v50;
  *(a1 + 64) = v49;
  *(a1 + 80) = v27;
  v28 = v46;
  *a1 = v45;
  *(a1 + 16) = v28;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *(a1 + 224) = *&v40[0];
  *(a1 + 232) = sub_1BD2ED4A4;
  *(a1 + 240) = v38;
  *(a1 + 248) = sub_1BD2EE588;
  *(a1 + 256) = v19;
  if (*a1)
  {
    *&v40[0] = *a1;
    *(&v40[2] + 8) = *(a1 + 40);
    *(&v40[3] + 8) = *(a1 + 56);
    *(&v40[4] + 8) = *(a1 + 72);
    *(&v40[5] + 1) = *(a1 + 88);
    *(v40 + 8) = *(a1 + 8);
    *(&v40[1] + 8) = *(a1 + 24);
    v29 = sub_1BD6D4D1C();
  }

  else
  {
    v29 = 0;
  }

  *(a1 + 264) = v29 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *(a1 + 272) = v39;
  sub_1BD0E5E8C(0, &qword_1EBD43B70);
  v30 = [swift_getObjCClassFromMetadata() appearance];
  v31 = [objc_opt_self() clearColor];
  [v30 setBackgroundColor_];
}

void sub_1BD2E81A4(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PaymentSheet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  *&v59 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  *&v58 = &v46 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v57 = &v46 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v46 - v19;
  v21 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v60 = v21;
  sub_1BE04D8B4();

  v109[4] = v104;
  v109[5] = v105;
  v109[6] = v106;
  v109[7] = v107;
  v109[0] = v100;
  v109[1] = v101;
  v109[2] = v102;
  v109[3] = v103;
  v108[2] = v96;
  v108[3] = v97;
  v108[4] = v98;
  v108[5] = v99;
  v108[0] = v94;
  v108[1] = v95;
  sub_1BD0DE19C(v109, &v94, &qword_1EBD4C950);
  sub_1BD2ED540(v108);
  if (*&v109[0])
  {
    sub_1BD0DE53C(v109, &qword_1EBD4C950);
    sub_1BD2EE220(v1, v20, type metadata accessor for PaymentSheet);
    v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v56 = swift_allocObject();
    sub_1BD2EE3C8(v20, v56 + v22, type metadata accessor for PaymentSheet);
    sub_1BD2EE220(v1, v16, type metadata accessor for PaymentSheet);
    v55 = swift_allocObject();
    sub_1BD2EE3C8(v16, v55 + v22, type metadata accessor for PaymentSheet);
    v23 = v57;
    sub_1BD2EE220(v1, v57, type metadata accessor for PaymentSheet);
    v54 = swift_allocObject();
    sub_1BD2EE3C8(v23, v54 + v22, type metadata accessor for PaymentSheet);
    v24 = v58;
    sub_1BD2EE220(v1, v58, type metadata accessor for PaymentSheet);
    v57 = swift_allocObject();
    sub_1BD2EE3C8(v24, v57 + v22, type metadata accessor for PaymentSheet);
    v25 = v59;
    sub_1BD2EE220(v1, v59, type metadata accessor for PaymentSheet);
    v26 = swift_allocObject();
    sub_1BD2EE3C8(v25, v26 + v22, type metadata accessor for PaymentSheet);
    type metadata accessor for PaymentAuthorizationModel(0);
    sub_1BD2EE53C(&qword_1EBD3F1F0, type metadata accessor for PaymentAuthorizationModel);
    sub_1BE04E964();
    swift_getKeyPath();
    sub_1BE04E974();

    v51 = v83;
    v52 = v82;
    v58 = v85;
    v59 = v84;
    v53 = v86;
    v87 = 0uLL;
    *&v88 = 0;
    BYTE8(v88) = -1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41360);
    sub_1BE051694();
    v49 = *(&v94 + 1);
    v50 = v94;
    v48 = v95;
    v47 = BYTE8(v95);
    v46 = v96;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v93[4] = v104;
    v93[5] = v105;
    v93[6] = v106;
    v93[7] = v107;
    v93[0] = v100;
    v93[1] = v101;
    v93[2] = v102;
    v93[3] = v103;
    v89 = v96;
    v90 = v97;
    v91 = v98;
    v92 = v99;
    v87 = v94;
    v88 = v95;
    sub_1BD0DE19C(v93, &v94, &qword_1EBD4C950);
    sub_1BD2ED540(&v87);
    v27 = *&v93[0];
    if (*&v93[0])
    {
      v79 = *(&v93[4] + 8);
      v80 = *(&v93[5] + 8);
      v81 = *(&v93[6] + 1);
      v75 = *(v93 + 8);
      v76 = *(&v93[1] + 8);
      v77 = *(&v93[2] + 8);
      v78 = *(&v93[3] + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v104 = v71;
      v105 = v72;
      v106 = v73;
      v107 = v74;
      v100 = v67;
      v101 = v68;
      v102 = v69;
      v103 = v70;
      v96 = v63;
      v97 = v64;
      v98 = v65;
      v99 = v66;
      v94 = v61;
      v95 = v62;
      v28 = sub_1BD83AC90();
      v30 = v29;
      sub_1BD2ED540(&v94);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v31 = v61;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v32 = v61;
      sub_1BD0E5E8C(0, &qword_1EBD43B70);
      v33 = [swift_getObjCClassFromMetadata() appearance];
      v34 = [objc_opt_self() clearColor];
      [v33 setBackgroundColor_];

      v35 = v77;
      *(a1 + 56) = v78;
      v36 = v80;
      *(a1 + 72) = v79;
      *(a1 + 88) = v36;
      v37 = v76;
      *(a1 + 8) = v75;
      *(a1 + 24) = v37;
      *a1 = v27;
      v38 = v81;
      *(a1 + 40) = v35;
      *(a1 + 104) = v38;
      *(a1 + 112) = v28;
      *(a1 + 120) = v30;
      *(a1 + 128) = sub_1BD2ED594;
      v39 = v55;
      *(a1 + 136) = v56;
      *(a1 + 144) = sub_1BD2ED5AC;
      *(a1 + 152) = v39;
      *(a1 + 160) = sub_1BD2ED5C4;
      *(a1 + 168) = v54;
      *(a1 + 176) = sub_1BD2ED644;
      *(a1 + 184) = v57;
      *(a1 + 192) = sub_1BD2EE588;
      *(a1 + 200) = v26;
      *(a1 + 208) = v31;
      v41 = v49;
      v40 = v50;
      *(a1 + 216) = v32;
      *(a1 + 224) = v40;
      v42 = v48;
      *(a1 + 232) = v41;
      *(a1 + 240) = v42;
      *(a1 + 248) = v47;
      v43 = v51;
      v44 = v52;
      *(a1 + 256) = v46;
      *(a1 + 264) = v44;
      *(a1 + 272) = v43;
      v45 = v58;
      *(a1 + 280) = v59;
      *(a1 + 296) = v45;
      *(a1 + 312) = v53;
      return;
    }

    __break(1u);
  }

  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD2E89CC()
{
  v1 = v0;
  v2 = type metadata accessor for PaymentSheet();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2, v6);
  v7 = type metadata accessor for PaymentSetupNavigationController(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v1 + *(v3 + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41370);
  sub_1BE0516A4();
  v11 = v17;
  if (v17)
  {
    sub_1BD2EE220(v1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentSheet);
    v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v13 = swift_allocObject();
    sub_1BD2EE3C8(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for PaymentSheet);
    *v10 = sub_1BD2ED844;
    v10[1] = v13;
    v10[2] = v11;
    v14 = *(v7 + 24);
    *(v10 + v14) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
    swift_storeEnumTagMultiPayload();
    sub_1BD2EE53C(&qword_1EBD47AC0, type metadata accessor for PaymentSetupNavigationController);
    sub_1BE050E54();
    return sub_1BD2EE430(v10, type metadata accessor for PaymentSetupNavigationController);
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

int *sub_1BD2E8C7C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PaymentSheet();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v6 = _s14PaymentSummaryVMa();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v11 = &v10[*(v7 + 44)];
  v12 = *(v11 + 1);
  v30 = *v11;
  v31 = v12;
  v13 = *(v11 + 3);
  v32 = *(v11 + 2);
  v33 = v13;
  sub_1BD0DE19C(&v30, v29, &qword_1EBD41378);
  sub_1BD2EE430(v10, _s14PaymentSummaryVMa);
  if (*(&v30 + 1))
  {
    v14 = *(&v33 + 1);
    v15 = *(&v32 + 1);
    v27 = v32;
    v16 = *(&v31 + 1);
    v25 = v33;
    v26 = v31;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    sub_1BD2EE220(v1, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentSheet);
    v17 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v18 = swift_allocObject();
    sub_1BD2EE3C8(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PaymentSheet);
    sub_1BE048C84();
    v19 = v14;
    v20 = v25;
    sub_1BE048C84();
    sub_1BD0DE53C(&v30, &qword_1EBD41378);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411F8);
    v22 = a1 + result[9];
    *v22 = v14;
    *(v22 + 8) = v20;
    *(v22 + 16) = v26;
    *(v22 + 24) = v16;
    *(v22 + 32) = 1;
    *(v22 + 40) = xmmword_1BE0C9FB0;
    v23 = (a1 + result[10]);
    *v23 = v27;
    v23[1] = v15;
    v24 = (a1 + result[11]);
    *v24 = sub_1BD2EE588;
    v24[1] = v18;
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

int *sub_1BD2E8FD4@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for PaymentSheet();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v28 = v4;
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s14PaymentSummaryVMa();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v10 = &v9[*(v6 + 48)];
  v11 = v10[1];
  v12 = v10[2];
  v13 = v10[3];
  v14 = v10[4];
  v15 = v10[5];
  v16 = v10[6];
  v26 = *v10;
  sub_1BD2ED8B0(v26, v11, v12, v13, v14, v15, v16);
  sub_1BD2EE430(v9, _s14PaymentSummaryVMa);
  if (v11)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v31;
    sub_1BE04D8B4();

    v18 = v30;
    sub_1BD2EE220(v29, v30, type metadata accessor for PaymentSheet);
    v19 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v20 = swift_allocObject();
    sub_1BD2EE3C8(v18, v20 + v19, type metadata accessor for PaymentSheet);
    sub_1BE048C84();
    v21 = v16;
    sub_1BE048C84();
    sub_1BD2ED910(v26, v11, v12, v13, v14, v15, v16);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411E0);
    v23 = v17 + result[9];
    *v23 = 0x4030000000000000;
    *(v23 + 8) = v21;
    *(v23 + 16) = v12;
    *(v23 + 24) = v13;
    *(v23 + 32) = 1;
    v24 = (v17 + result[10]);
    *v24 = v14;
    v24[1] = v15;
    v25 = (v17 + result[11]);
    *v25 = sub_1BD2EE588;
    v25[1] = v20;
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2E9318@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PaymentSheet();
  v37[0] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v37[1] = v5;
  v39 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41380);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v37 - v8;
  v10 = _s14PaymentSummaryVMa();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DeferredPaymentRequest();
  v16 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = (v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD0DE19C(&v14[*(v11 + 52)], v9, &qword_1EBD41380);
  sub_1BD2EE430(v14, _s14PaymentSummaryVMa);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1BD0DE53C(v9, &qword_1EBD41380);
    result = sub_1BE053994();
    __break(1u);
  }

  else
  {
    sub_1BD2EE3C8(v9, v19, type metadata accessor for DeferredPaymentRequest);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v20 = *(v19 + v15[9]);
    v21 = v15[7];
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411D8);
    v23 = a1 + v22[9];
    v24 = type metadata accessor for DeferredPaymentRequestSummaryRows(0);
    sub_1BD0DE19C(v19 + v21, v23 + v24[7], &unk_1EBD39970);
    sub_1BD0DE19C(v19 + v15[8], v23 + v24[8], &unk_1EBD3D260);
    v25 = v19[2];
    v26 = v19[3];
    *v23 = xmmword_1BE0C9FB0;
    *(v23 + 16) = v20;
    v27 = (v23 + v24[9]);
    *v27 = v25;
    v27[1] = v26;
    *(v23 + v24[10]) = 1;
    v29 = v19[4];
    v28 = v19[5];
    sub_1BE048C84();
    v30 = v20;
    sub_1BE048C84();
    sub_1BD2EE430(v19, type metadata accessor for DeferredPaymentRequest);
    v31 = v39;
    sub_1BD2EE220(v38, v39, type metadata accessor for PaymentSheet);
    v32 = (*(v37[0] + 80) + 16) & ~*(v37[0] + 80);
    v33 = swift_allocObject();
    result = sub_1BD2EE3C8(v31, v33 + v32, type metadata accessor for PaymentSheet);
    v35 = (a1 + v22[10]);
    *v35 = v29;
    v35[1] = v28;
    v36 = (a1 + v22[11]);
    *v36 = sub_1BD2EE588;
    v36[1] = v33;
  }

  return result;
}

void sub_1BD2E97D0(void *a1@<X8>)
{
  v3 = type metadata accessor for PaymentSheet();
  v4 = *(v3 - 8);
  v82 = v3;
  v83 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v84 = v6;
  v85 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s11TotalAmountVMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v81 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v79 = &v71 - v12;
  v13 = _s14PaymentSummaryVMa();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v80 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v78 = &v71 - v18;
  v19 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v71 - v29;
  v86 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD0DE19C(v26, v30, &qword_1EBD520A0);
  sub_1BD2EE430(v26, type metadata accessor for Passes);
  v31 = type metadata accessor for AvailablePass(0);
  if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
  {
    sub_1BD0DE53C(v30, &qword_1EBD520A0);
    goto LABEL_23;
  }

  sub_1BD2EE220(v30, v22, type metadata accessor for WrappedPass);
  sub_1BD2EE430(v30, type metadata accessor for AvailablePass);
  v32 = WrappedPass.secureElementPass.getter();
  sub_1BD2EE430(v22, type metadata accessor for WrappedPass);
  if (!v32)
  {
LABEL_23:
    sub_1BE053994();
    __break(1u);
    goto LABEL_24;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v33 = v88;
  if (!v88)
  {

    goto LABEL_23;
  }

  v34 = v32;
  v35 = [v34 uniqueID];
  if (!v35)
  {
    __break(1u);
LABEL_16:

    goto LABEL_23;
  }

  v36 = v35;

  v26 = [v33 eligiblePaymentOfferCriteriaForPassUniqueID:v36 type:1];
  if (!v26)
  {

    goto LABEL_23;
  }

  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (!v37)
  {
    goto LABEL_16;
  }

  v38 = v37;
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v26;
  sub_1BE04D8B4();

  v39 = v88;
  if (!v88)
  {
    goto LABEL_16;
  }

  if ([v88 type] != 1)
  {

LABEL_22:
    goto LABEL_23;
  }

  v73 = v26;
  v74 = v34;
  v75 = v38;
  v76 = v32;
  v77 = v33;
  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  if (!v40)
  {

    goto LABEL_22;
  }

  v71 = v40;
  v72 = v39;
  swift_getKeyPath();
  swift_getKeyPath();
  v41 = v78;
  sub_1BE04D8B4();

  v42 = v79;
  sub_1BD2EE220(v41, v79, _s11TotalAmountVMa);
  sub_1BD2EE430(v41, _s14PaymentSummaryVMa);
  v78 = *(v42 + 8);
  sub_1BD2EE430(v42, _s11TotalAmountVMa);
  swift_getKeyPath();
  swift_getKeyPath();
  v43 = v80;
  sub_1BE04D8B4();

  v44 = v81;
  sub_1BD2EE220(v43, v81, _s11TotalAmountVMa);
  sub_1BD2EE430(v43, _s14PaymentSummaryVMa);
  v45 = *(v44 + 32);
  v80 = *(v44 + 24);
  sub_1BE048C84();
  sub_1BD2EE430(v44, _s11TotalAmountVMa);
  v46 = v86;
  v47 = *(v86 + *(v82 + 88));
  if (!v47)
  {
LABEL_24:
    type metadata accessor for PresentationContext();
    sub_1BD2EE53C(&unk_1EBD361B0, type metadata accessor for PresentationContext);
    sub_1BE04EEB4();
    __break(1u);
    return;
  }

  v48 = v85;
  sub_1BD2EE220(v86, v85, type metadata accessor for PaymentSheet);
  v49 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v83 = swift_allocObject();
  sub_1BD2EE3C8(v48, v83 + v49, type metadata accessor for PaymentSheet);
  sub_1BD2EE220(v46, v48, type metadata accessor for PaymentSheet);
  v50 = swift_allocObject();
  sub_1BD2EE3C8(v48, v50 + v49, type metadata accessor for PaymentSheet);
  v51 = type metadata accessor for PaymentOfferSelectedInstallmentDetailView();
  v52 = *(v51 + 52);
  *(a1 + v52) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  swift_storeEnumTagMultiPayload();
  v53 = v74;
  v54 = v75;
  v56 = v77;
  v55 = v78;
  *a1 = v74;
  a1[1] = v55;
  a1[2] = v80;
  a1[3] = v45;
  a1[4] = v56;
  a1[5] = v54;
  v87 = v71;
  sub_1BD0E5E8C(0, &qword_1EBD39DA8);
  v57 = v53;
  v58 = v73;
  sub_1BE048964();
  v59 = v56;
  v60 = v72;
  sub_1BE051694();
  v61 = v89;
  a1[6] = v88;
  a1[7] = v61;
  v62 = v83;
  a1[8] = sub_1BD2EE588;
  a1[9] = v62;
  a1[11] = v50;
  a1[12] = v47;
  a1[10] = sub_1BD2EE58C;
  v63 = [v59 configuration];
  v64 = [v63 context];

  if (v64 == 1)
  {
    v65 = 96;
  }

  else
  {
    v65 = 64;
  }

  v88 = v76;
  LOBYTE(v89) = v65;
  v66 = objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
  v67 = sub_1BD8D1EE0(&v88, v56, v54);

  v68 = (a1 + *(v51 + 56));
  v87 = v67;
  v69 = v67;
  sub_1BE051694();

  v70 = v89;
  *v68 = v88;
  v68[1] = v70;
}

void sub_1BD2EA190(void *a1@<X8>)
{
  v61 = a1;
  v2 = type metadata accessor for PaymentSheet();
  v3 = *(v2 - 8);
  v57 = v2;
  v58 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v59 = v5;
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = (&v53 - v17);
  v60 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD0DE19C(v14, v18, &qword_1EBD520A0);
  sub_1BD2EE430(v14, type metadata accessor for Passes);
  v19 = type metadata accessor for AvailablePass(0);
  if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
  {
    goto LABEL_46;
  }

  sub_1BD2EE220(v18, v10, type metadata accessor for WrappedPass);
  sub_1BD2EE430(v18, type metadata accessor for AvailablePass);
  v18 = WrappedPass.secureElementPass.getter();
  sub_1BD2EE430(v10, type metadata accessor for WrappedPass);
  if (!v18)
  {
LABEL_50:
    sub_1BE053994();
    __break(1u);
    goto LABEL_51;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v20 = v63;
  if (!v63)
  {

    goto LABEL_50;
  }

  v21 = v18;
  v22 = [v21 uniqueID];
  if (!v22)
  {
    goto LABEL_45;
  }

  v23 = v22;
  v56 = v20;
  v24 = [v20 paymentOfferCriteriaForPassUniqueID_];

  if (!v24)
  {

    goto LABEL_50;
  }

  sub_1BD0E5E8C(0, &unk_1EBD496A0);
  v25 = sub_1BE052744();

  *&v63 = MEMORY[0x1E69E7CC0];
  if (v25 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v54 = v21;
    v55 = v6;
    v27 = 0;
    v6 = (v25 & 0xC000000000000001);
    v21 = (v25 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v6)
      {
        v28 = MEMORY[0x1BFB40900](v27, v25);
      }

      else
      {
        if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v28 = *(v25 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if ([v28 type] == 1)
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      ++v27;
      if (v30 == i)
      {
        v31 = v63;
        v21 = v54;
        v6 = v55;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v31 = MEMORY[0x1E69E7CC0];
LABEL_23:

  if ((v31 & 0x8000000000000000) == 0 && (v31 & 0x4000000000000000) == 0)
  {
    v18 = v61;
    if (*(v31 + 16))
    {
      goto LABEL_26;
    }

    goto LABEL_43;
  }

  v52 = sub_1BE053704();
  v18 = v61;
  if (!v52)
  {
LABEL_43:

    goto LABEL_50;
  }

LABEL_26:
  if ((v31 & 0xC000000000000001) == 0)
  {
    if (*(v31 + 16))
    {
      v32 = *(v31 + 32);
      goto LABEL_29;
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    sub_1BD0DE53C(v18, &qword_1EBD520A0);
    goto LABEL_50;
  }

  v32 = MEMORY[0x1BFB40900](0, v31);
LABEL_29:
  v33 = v32;

  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (!v34)
  {

    goto LABEL_50;
  }

  v35 = v34;
  v36 = *(v60 + *(v57 + 88));
  if (v36)
  {
    sub_1BD2EE220(v60, v6, type metadata accessor for PaymentSheet);
    v37 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v38 = swift_allocObject();
    sub_1BD2EE3C8(v6, v38 + v37, type metadata accessor for PaymentSheet);
    LOBYTE(v62) = 0;
    sub_1BE048964();
    sub_1BE051694();
    v39 = *(&v63 + 1);
    *(v18 + 80) = v63;
    v18[11] = v39;
    v62 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B50);
    sub_1BE051694();
    *(v18 + 6) = v63;
    v40 = *(type metadata accessor for SelectedPaymentOfferActionView() + 56);
    *(v18 + v40) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
    swift_storeEnumTagMultiPayload();
    v41 = v56;
    *v18 = v21;
    v18[1] = v41;
    v18[3] = v35;
    v18[4] = sub_1BD2EE58C;
    v18[5] = v38;
    v18[9] = v36;
    v42 = v41;
    v43 = [v35 identifier];
    if (!v43)
    {
      sub_1BE052434();
      v43 = sub_1BE052404();
    }

    v44 = [v21 uniqueID];

    v45 = [v42 paymentOfferCollectionForCriteriaIdentifier:v43 passUniqueID:v44];
    v46 = [v45 installmentAssessment];

    v18[2] = v46;
    v18[6] = 0;
    v18[7] = 0;
    if (v46)
    {
      v47 = v46;
      v48 = [v47 dynamicContent];
      if (v48)
      {
        v49 = v48;
        v50 = [v48 dynamicContentPageForPageType_];

        if (v50)
        {
          goto LABEL_38;
        }
      }

      v51 = [v47 dynamicContent];

      if (v51)
      {
        v50 = [v51 dynamicContentPageForPageType_];
        v47 = v51;
LABEL_38:

LABEL_40:
        v18[8] = v50;
        return;
      }
    }

    v50 = 0;
    goto LABEL_40;
  }

LABEL_51:
  type metadata accessor for PresentationContext();
  sub_1BD2EE53C(&unk_1EBD361B0, type metadata accessor for PresentationContext);
  sub_1BE04EEB4();
  __break(1u);
}

uint64_t sub_1BD2EAA3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for PaymentSheet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v27 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v27 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v27 - v18;
  v27[1] = *(v2 + 8);
  sub_1BD2EE220(v2, v27 - v18, type metadata accessor for PaymentSheet);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v28 = swift_allocObject();
  sub_1BD2EE3C8(v19, v28 + v20, type metadata accessor for PaymentSheet);
  sub_1BD2EE220(v2, v15, type metadata accessor for PaymentSheet);
  v27[0] = swift_allocObject();
  sub_1BD2EE3C8(v15, v27[0] + v20, type metadata accessor for PaymentSheet);
  sub_1BD2EE220(v2, v11, type metadata accessor for PaymentSheet);
  v21 = swift_allocObject();
  sub_1BD2EE3C8(v11, v21 + v20, type metadata accessor for PaymentSheet);
  sub_1BD2EE220(v2, v7, type metadata accessor for PaymentSheet);
  v22 = swift_allocObject();
  sub_1BD2EE3C8(v7, v22 + v20, type metadata accessor for PaymentSheet);
  sub_1BD2EE220(v2, v7, type metadata accessor for PaymentSheet);
  v23 = swift_allocObject();
  sub_1BD2EE3C8(v7, v23 + v20, type metadata accessor for PaymentSheet);
  sub_1BD2EE220(v2, v7, type metadata accessor for PaymentSheet);
  v24 = swift_allocObject();
  sub_1BD2EE3C8(v7, v24 + v20, type metadata accessor for PaymentSheet);
  v25 = sub_1BE048964();
  return sub_1BD103524(v25, sub_1BD2ED970, v28, sub_1BD2ED9E8, v27[0], sub_1BD2EDA00, v21, sub_1BD2EDA90, v29, v22, sub_1BD2EE58C, v23, sub_1BD2EE588, v24);
}

uint64_t sub_1BD2EAE30(uint64_t a1, void *a2, int a3)
{
  v30 = a3;
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for PeerPaymentModel();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v29 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v28 - v15;
  v17 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v28 - v23;
  sub_1BD0DE19C(a1, v16, &qword_1EBD520A0);
  v25 = type metadata accessor for AvailablePass(0);
  if ((*(*(v25 - 8) + 48))(v16, 1, v25) == 1)
  {
    result = sub_1BD0DE53C(v16, &qword_1EBD520A0);
  }

  else
  {
    sub_1BD2EE220(v16, v20, type metadata accessor for WrappedPass);
    sub_1BD2EE430(v16, type metadata accessor for AvailablePass);
    sub_1BD2EE3C8(v20, v24, type metadata accessor for WrappedPass);
    sub_1BD39069C(v24, v31, 0);
    result = sub_1BD2EE430(v24, type metadata accessor for WrappedPass);
  }

  if (*(*(v3 + 8) + qword_1EBDAB308) == 9)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      return sub_1BD0DE53C(v8, &qword_1EBD45480);
    }

    else
    {
      v27 = v29;
      sub_1BD2EE3C8(v8, v29, type metadata accessor for PeerPaymentModel);
      if (v30 != 2 && *(v27 + *(v9 + 40)) != (v30 & 1))
      {
        sub_1BD391D2C(v30 & 1);
      }

      return sub_1BD2EE430(v27, type metadata accessor for PeerPaymentModel);
    }
  }

  return result;
}

id sub_1BD2EB210()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v15 - v8;
  v11 = *(*(v0 + 8) + qword_1EBDAB308);
  if (v11 == 9)
  {
    (*(v2 + 104))(v5, *MEMORY[0x1E69B80D8], v1, v9);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v12 = sub_1BE04B6F4();

      (*(v2 + 8))(v5, v1);
      return v12;
    }

    __break(1u);
  }

  else
  {
    if (v11 == 10)
    {
      (*(v2 + 104))(&v15 - v8, *MEMORY[0x1E69B8070], v1, v9);
      v12 = sub_1BE04B714();
      (*(v2 + 8))(v10, v1);
      return v12;
    }

    return sub_1BD4CD14C();
  }

  return result;
}

uint64_t sub_1BD2EB428(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for WrappedPass(0);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    result = [a1 paymentPass];
    if (!result)
    {
      return result;
    }

    v10 = result;
    v11 = [*(*(a2 + 48) + *((*MEMORY[0x1E69E7D40] & **(a2 + 48)) + 0xD8)) acceptedPassForProvisionedPass_];
    if (v11)
    {
      *v8 = v11;
      v12 = v11;
      swift_storeEnumTagMultiPayload();
      v13 = v12;
      v14 = [v13 devicePrimaryPaymentApplication];
      sub_1BD39069C(v8, v14, 0);

      sub_1BD2EE430(v8, type metadata accessor for WrappedPass);
      sub_1BD258CE4(1);

      return 1;
    }

    sub_1BD395F4C();
  }

  return 0;
}

void sub_1BD2EB624(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v30 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v30, v8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1BE04D214();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04D084();
  sub_1BE048C84();
  v16 = sub_1BE04D204();
  v17 = sub_1BE052C54();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v29 = v4;
    v21 = a1;
    v22 = v20;
    v31 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1BD123690(v21, a2, &v31);
    _os_log_impl(&dword_1BD026000, v16, v17, "Callback Handling: changeCouponCode '%s'", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v23 = v22;
    a1 = v21;
    v4 = v29;
    MEMORY[0x1BFB45F20](v23, -1, -1);
    v24 = v19;
    a3 = v28;
    MEMORY[0x1BFB45F20](v24, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  *v10 = a1;
  v10[1] = a2;
  swift_storeEnumTagMultiPayload();
  sub_1BE048C84();
  sub_1BD6B56B4(v10, a3);
  sub_1BD2EE430(v10, type metadata accessor for Analytics.StateChange);
  v25 = *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0xD8));
  v26 = sub_1BE052404();
  [v25 didChangeCouponCode_];
}

id sub_1BD2EB8CC(char a1)
{
  type metadata accessor for PaymentSheet();
  if (a1)
  {
    return sub_1BD742D88();
  }

  else
  {
    return sub_1BD743154();
  }
}

uint64_t sub_1BD2EB944(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24[-v10];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v24[-v14];
  sub_1BD2EBB80(a1);
  v16 = type metadata accessor for PaymentSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180);
  sub_1BE0516A4();
  v17 = sub_1BE04C614();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v15, 1, v17);
  result = sub_1BD0DE53C(v15, &qword_1EBD3D520);
  if (v19 != 1)
  {
    v21 = (a2 + *(v16 + 56));
    v22 = *v21;
    v23 = *(v21 + 1);
    v24[16] = v22;
    v25 = v23;
    v24[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516B4();
    (*(v18 + 56))(v11, 1, 1, v17);
    sub_1BD0DE19C(v11, v7, &qword_1EBD3D520);
    sub_1BE0516B4();
    return sub_1BD0DE53C(v11, &qword_1EBD3D520);
  }

  return result;
}

id sub_1BD2EBB80(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v13 = a1;
  v14 = sub_1BE04D204();
  v15 = sub_1BE052C54();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = v9;
    v17 = v16;
    v30 = swift_slowAlloc();
    v34 = v30;
    *v17 = 136315138;
    v18 = [v13 label];
    v33 = v4;
    v19 = v18;
    v20 = sub_1BE052434();
    v31 = v8;
    v21 = v20;
    v23 = v22;

    v24 = sub_1BD123690(v21, v23, &v34);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_1BD026000, v14, v15, "Callback Handling: didSelectShippingMethod %s", v17, 0xCu);
    v25 = v30;
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1BFB45F20](v25, -1, -1);
    MEMORY[0x1BFB45F20](v17, -1, -1);

    (*(v32 + 8))(v12, v31);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  *v7 = v13;
  swift_storeEnumTagMultiPayload();
  v26 = v13;
  sub_1BD6B56B4(v7, 2);
  sub_1BD2EE430(v7, type metadata accessor for Analytics.StateChange);
  v27 = MEMORY[0x1E69E7D40];
  [*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xD0)) setShippingMethod_];
  sub_1BD393B3C(0, 0, 0);
  return [*(v2 + *((*v27 & *v2) + 0xD8)) didSelectShippingMethod_];
}

id sub_1BD2EBE9C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v13 = a1;
  v14 = sub_1BE04D204();
  v15 = sub_1BE052C54();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = v9;
    v17 = v16;
    v29 = swift_slowAlloc();
    v32 = v29;
    *v17 = 136315138;
    v18 = [v13 description];
    v19 = sub_1BE052434();
    v31 = v4;
    v20 = v19;
    v28 = v8;
    v22 = v21;

    v23 = sub_1BD123690(v20, v22, &v32);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_1BD026000, v14, v15, "Callback Handling: selectedShippingAddress %s", v17, 0xCu);
    v24 = v29;
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1BFB45F20](v24, -1, -1);
    MEMORY[0x1BFB45F20](v17, -1, -1);

    (*(v30 + 8))(v12, v28);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  *v7 = v13;
  swift_storeEnumTagMultiPayload();
  v25 = v13;
  sub_1BD6B56B4(v7, 2);
  sub_1BD2EE430(v7, type metadata accessor for Analytics.StateChange);
  return [*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xD8)) didSelectShippingContact_];
}

void sub_1BD2EC178(void *a1)
{
  v1 = sub_1BD0E6F98(a1);
  sub_1BD2EBE9C(v1);
}

void sub_1BD2EC1EC(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a3 + 48);
  v11 = MEMORY[0x1E69E7D40];
  sub_1BD0E77B0(a1, a2);
  v12 = [*(v10 + *((*v11 & *v10) + 0xD0)) originalShippingAddress];
  if (v12)
  {
    v13 = v12;
    sub_1BD0E5E8C(0, &qword_1EBD406E0);
    v14 = a1;
    v15 = sub_1BE053074();

    if (v15)
    {
      *v9 = a2;
      swift_storeEnumTagMultiPayload();
      v16 = a2;
      sub_1BD6B56B4(v9, 2);
      sub_1BD2EE430(v9, type metadata accessor for Analytics.StateChange);
      [*(v10 + *((*v11 & *v10) + 0xD8)) didSelectShippingContact_];
    }
  }
}

void sub_1BD2EC3A0(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1E69E7D40];
  sub_1BD0E7D54(a1);
  v9 = [*(v2 + *((*v8 & *v2) + 0xD0)) originalShippingAddress];
  if (v9)
  {
    v11 = v9;
    v13 = v9;
    MEMORY[0x1EEE9AC00](v9, v10);
    *(&v12 - 2) = &v13;
    if (sub_1BD30114C(sub_1BD2ED65C, (&v12 - 4), a1))
    {
      *v7 = 0;
      swift_storeEnumTagMultiPayload();
      sub_1BD6B56B4(v7, 2);
      sub_1BD2EE430(v7, type metadata accessor for Analytics.StateChange);
      [*(v2 + *((*v8 & *v2) + 0xD8)) didSelectShippingContact_];
    }
  }
}

uint64_t sub_1BD2EC564(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v16 - v10;
  sub_1BD0DE19C(a2, v7, &qword_1EBD520A0);
  v12 = type metadata accessor for AvailablePass(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1BD0DE53C(v7, &qword_1EBD520A0);
    v13 = 1;
  }

  else
  {
    sub_1BD2EE220(v7, v11, type metadata accessor for WrappedPass);
    sub_1BD2EE430(v7, type metadata accessor for AvailablePass);
    v13 = 0;
  }

  v14 = type metadata accessor for WrappedPass(0);
  (*(*(v14 - 8) + 56))(v11, v13, 1, v14);
  sub_1BD38F590(a1, v11, 0);
  return sub_1BD0DE53C(v11, &unk_1EBD43B90);
}

id sub_1BD2EC76C(void *a1)
{
  sub_1BD3918A4(a1);
  if (!a1)
  {
    return sub_1BD258CE4(1);
  }

  result = [a1 type];
  if (result != 2)
  {
    if (result != 1)
    {
      return sub_1BD258CE4(1);
    }

    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {
      return sub_1BD258CE4(1);
    }

    result = [v3 isPreconfiguredOffer];
    if (!result)
    {
      return sub_1BD258CE4(1);
    }
  }

  return result;
}

uint64_t sub_1BD2EC7FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v18 - v2;
  v4 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04C614();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v13, *MEMORY[0x1E69BC8A8], v8, v11);
  v14 = sub_1BD254B98(v13);
  result = (*(v9 + 8))(v13, v8);
  if (v14)
  {
    result = PKBankConnectEnabled();
    if (result)
    {
      type metadata accessor for PaymentSheet();
      type metadata accessor for BankConnectInterface();
      sub_1BD2EE53C(&qword_1EBD3F258, type metadata accessor for BankConnectInterface);
      sub_1BE04E3C4();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v16 = *&v7[*(v4 + 28)];
      sub_1BE048C84();
      sub_1BD2EE430(v7, type metadata accessor for Passes);
      v17 = sub_1BD537108(v16);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      sub_1BD0DE19C(v7, v3, &qword_1EBD520A0);
      sub_1BD2EE430(v7, type metadata accessor for Passes);
      sub_1BD8FD0E0(v17, v3);

      return sub_1BD0DE53C(v3, &qword_1EBD520A0);
    }
  }

  return result;
}

uint64_t sub_1BD2ECB4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v39 - v2;
  v4 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AvailablePass(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD0DE19C(v7, v3, &qword_1EBD520A0);
  sub_1BD2EE430(v7, type metadata accessor for Passes);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_1BD0DE53C(v3, &qword_1EBD520A0);
    return 0;
  }

  sub_1BD2EE3C8(v3, v12, type metadata accessor for AvailablePass);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v46[2] = v43;
  v46[3] = v44;
  v46[4] = v45;
  v46[0] = v41;
  v46[1] = v42;
  if (v44)
  {
    sub_1BD0DE53C(v46, &qword_1EBD395E0);
    goto LABEL_8;
  }

  v14 = *&v12[*(v8 + 56)];
  if (v14 >> 62)
  {
    if (sub_1BE053704() >= 2)
    {
      goto LABEL_8;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v16 = v41;
  if (!v41 || (sub_1BD49C81C(v15), v17 = sub_1BE052404(), , v18 = [v16 paymentOfferCriteriaForPassUniqueID_], v16, v17, !v18))
  {
LABEL_42:
    sub_1BD2EE430(v12, type metadata accessor for AvailablePass);
    return 0;
  }

  sub_1BD0E5E8C(0, &unk_1EBD496A0);
  v19 = sub_1BE052744();

  v20 = v19 >> 62;
  if (v19 >> 62)
  {
    goto LABEL_40;
  }

  v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
LABEL_41:

    goto LABEL_42;
  }

LABEL_15:
  v40 = v20;
  v20 = 0;
  while (1)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1BFB40900](v20, v19);
    }

    else
    {
      if (v20 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v22 = *(v19 + 8 * v20 + 32);
    }

    v23 = v22;
    v24 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v21 = sub_1BE053704();
      if (!v21)
      {
        goto LABEL_41;
      }

      goto LABEL_15;
    }

    if ([v22 type] == 1)
    {
      break;
    }

    ++v20;
    if (v24 == v21)
    {

      goto LABEL_8;
    }
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {

LABEL_34:

    goto LABEL_8;
  }

  v26 = v25;
  if (v40)
  {
    v27 = sub_1BE053704();
  }

  else
  {
    v27 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v27 != 1)
  {
    goto LABEL_34;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v28 = v41;
  if (!v41)
  {
    goto LABEL_34;
  }

  v29 = [v41 criteriaIdentifier];
  v30 = sub_1BE052434();
  v32 = v31;

  v33 = [v26 identifier];
  v34 = sub_1BE052434();
  v36 = v35;

  if (v30 == v34 && v32 == v36)
  {

    goto LABEL_36;
  }

  v37 = sub_1BE053B84();

  if (v37)
  {
LABEL_36:
    v38 = [v26 suppressPayInFull];

    sub_1BD2EE430(v12, type metadata accessor for AvailablePass);
    return v38 ^ 1;
  }

LABEL_8:
  sub_1BD2EE430(v12, type metadata accessor for AvailablePass);
  return 1;
}

uint64_t sub_1BD2ED1A4(uint64_t a1, unsigned int *a2)
{
  v3 = sub_1BE04C614();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v8, *a2, v3, v6);
  sub_1BD254B98(v8);
  return (*(v4 + 8))(v8, v3);
}

void sub_1BD2ED294(char a1, void *a2, uint64_t a3)
{
  v6 = sub_1BE04C614();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = (a3 + *(type metadata accessor for PaymentSheet() + 76));
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v21) = v12;
  v22 = v13;
  LOBYTE(v20[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  if (a1)
  {
    (*(v7 + 104))(v10, *MEMORY[0x1E69BC890], v6);
    sub_1BD254B98(v10);
    (*(v7 + 8))(v10, v6);
  }

  else if (a2)
  {
    v14 = a2;
    sub_1BD2B1EAC(a2, &v21);
    v15 = v22;
    if (v22)
    {
      v16 = v21;
      v20[3] = &type metadata for AuthorizationError;
      v20[4] = sub_1BD1C2B14();
      v17 = swift_allocObject();
      v20[0] = v17;
      *(v17 + 16) = v16;
      *(v17 + 24) = v15;
      v18 = v24;
      *(v17 + 32) = v23;
      *(v17 + 48) = v18;
      sub_1BD0DE19C(v20, v19, &qword_1EBD51EC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80);
      sub_1BE0516B4();
      sub_1BD0DE53C(v20, &qword_1EBD51EC0);
    }
  }
}

uint64_t sub_1BD2ED4BC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PaymentSheet() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_1BD2ED5C4(void *a1, void *a2)
{
  v5 = *(type metadata accessor for PaymentSheet() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD2EC1EC(a1, a2, v6);
}

void sub_1BD2ED740(uint64_t a1)
{
  v3 = *(type metadata accessor for PaymentSheet() - 8);
  [*(*(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 8) + qword_1EBDAAD68) didChangeFundingMode_];

  sub_1BD6B965C(a1);
}

uint64_t sub_1BD2ED7D4(void *a1)
{
  v3 = *(type metadata accessor for PaymentSheet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD2EB428(a1, v4);
}

uint64_t sub_1BD2ED844()
{
  type metadata accessor for PaymentSheet();
  sub_1BD395F4C();
  return sub_1BD258CE4(1);
}

uint64_t sub_1BD2ED8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a2)
  {
    sub_1BE048C84();
    v8 = a7;
    sub_1BE048C84();

    return sub_1BE048C84();
  }

  return result;
}

uint64_t sub_1BD2ED910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1BD2EDCDC()
{
  result = qword_1EBD41490;
  if (!qword_1EBD41490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41490);
  }

  return result;
}

unint64_t sub_1BD2EDD30()
{
  result = qword_1EBD41498;
  if (!qword_1EBD41498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41418);
    sub_1BD2EDDE8();
    sub_1BD0DE4F4(&qword_1EBD414D8, &qword_1EBD414E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41498);
  }

  return result;
}

unint64_t sub_1BD2EDDE8()
{
  result = qword_1EBD414A0;
  if (!qword_1EBD414A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41410);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD414A8);
    sub_1BD0DE4F4(&qword_1EBD414B0, &qword_1EBD41400);
    sub_1BD2EDF3C();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD414C8, &qword_1EBD414D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD414A0);
  }

  return result;
}

unint64_t sub_1BD2EDF3C()
{
  result = qword_1EBD414B8;
  if (!qword_1EBD414B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD414A8);
    sub_1BD2EDFC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD414B8);
  }

  return result;
}

unint64_t sub_1BD2EDFC0()
{
  result = qword_1EBD414C0;
  if (!qword_1EBD414C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD414C0);
  }

  return result;
}

unint64_t sub_1BD2EE014()
{
  result = qword_1EBD414E8;
  if (!qword_1EBD414E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD413E8);
    sub_1BD2EE53C(&qword_1EBD41488, type metadata accessor for PaymentPassUnavailableItem);
    sub_1BD2EDCDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD414E8);
  }

  return result;
}

uint64_t sub_1BD2EE0FC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_1BD2EE178(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {
    v4 = result;
    v5 = a4;
    v6 = v4;

    return sub_1BE048C84();
  }

  return result;
}

void sub_1BD2EE1C0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
  }
}

uint64_t sub_1BD2EE220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD2EE288()
{
  result = qword_1EBD41500;
  if (!qword_1EBD41500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41500);
  }

  return result;
}

unint64_t sub_1BD2EE2DC()
{
  result = qword_1EBD41508;
  if (!qword_1EBD41508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD414F8);
    sub_1BD2EE368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41508);
  }

  return result;
}

unint64_t sub_1BD2EE368()
{
  result = qword_1EBD41510;
  if (!qword_1EBD41510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41510);
  }

  return result;
}

uint64_t sub_1BD2EE3C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD2EE430(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BD2EE490(char a1, void *a2)
{
  v5 = *(type metadata accessor for PaymentSheet() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD2ED294(a1, a2, v6);
}

uint64_t sub_1BD2EE53C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD2EE5AC(uint64_t a1)
{
  v2 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD0E8EA0(a1, v5);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1BD0E8E44(a1);
    sub_1BD0E8E44(v5);
    return 2;
  }

  v7 = *v5;
  v8 = [v7 bankConnectAccount];
  if (!v8)
  {
    sub_1BD0E8E44(a1);

    return 2;
  }

  v9 = v8;
  v10 = [v8 isAccountEnabled];

  sub_1BD0E8E44(a1);
  return v10;
}

uint64_t type metadata accessor for SafariViewController()
{
  result = qword_1EBD41518;
  if (!qword_1EBD41518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD2EE728()
{
  result = sub_1BE04AA64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1BD2EE794()
{
  v0 = objc_allocWithZone(MEMORY[0x1E697A838]);
  v1 = sub_1BE04A9C4();
  v2 = [v0 initWithURL_];

  [v2 setModalPresentationStyle_];
  return v2;
}

uint64_t sub_1BD2EE7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD2EE974(&qword_1EBD41528);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD2EE87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD2EE974(&qword_1EBD41528);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD2EE8FC()
{
  sub_1BD2EE974(&qword_1EBD41528);
  sub_1BE0500A4();
  __break(1u);
}

uint64_t sub_1BD2EE974(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SafariViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1BD2EE9B8()
{
  v20[8] = *MEMORY[0x1E69E9840];
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v20[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CC38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  *(inited + 32) = 2;
  (*(v1 + 104))(v4, *MEMORY[0x1E69B8058], v0);
  v6 = PKPassKitBundle();
  if (!v6)
  {
    __break(1u);
  }

  v7 = v6;
  v8 = sub_1BE04B6F4();
  v10 = v9;

  (*(v1 + 8))(v4, v0);
  *(inited + 40) = v8;
  *(inited + 48) = v10;
  v11 = sub_1BD1AB678(inited);
  swift_setDeallocating();
  sub_1BD2EEC50(inited + 32);
  v12 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  sub_1BD1A854C(v11);

  v13 = sub_1BE052224();

  v20[0] = 0;
  v14 = [v12 evaluatePolicy:2 options:v13 error:v20];

  if (v14)
  {
    v15 = v20[0];
  }

  else
  {
    v16 = v20[0];
    v17 = sub_1BE04A854();

    swift_willThrow();
    return 0;
  }

  return v12;
}

uint64_t sub_1BD2EEC50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD557F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BD2EECB8()
{
  v20[8] = *MEMORY[0x1E69E9840];
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v20[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CC38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  *(inited + 32) = 2;
  (*(v1 + 104))(v4, *MEMORY[0x1E69B8058], v0);
  v6 = PKPassKitBundle();
  if (!v6)
  {
    __break(1u);
  }

  v7 = v6;
  v8 = sub_1BE04B6F4();
  v10 = v9;

  (*(v1 + 8))(v4, v0);
  *(inited + 40) = v8;
  *(inited + 48) = v10;
  v11 = sub_1BD1AB678(inited);
  swift_setDeallocating();
  sub_1BD2EEC50(inited + 32);
  v12 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  sub_1BD1A854C(v11);

  v13 = sub_1BE052224();

  v20[0] = 0;
  v14 = [v12 evaluatePolicy:2 options:v13 error:v20];

  if (v14)
  {
    v15 = v20[0];
  }

  else
  {
    v16 = v20[0];
    v17 = sub_1BE04A854();

    swift_willThrow();
    return 0;
  }

  return v12;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1BD2EEF84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_1BD2EEFCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD2EF05C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41530);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v36 - v6;
  sub_1BD2F0C60(&v38);
  v8 = v40;
  v37 = v38;
  v36 = v39;
  sub_1BD2EF3A0(&v38);
  v9 = v41;
  v10 = v36;
  *a1 = v37;
  *(a1 + 16) = v10;
  *(a1 + 32) = v8;
  v11 = v39;
  *(a1 + 40) = v38;
  *(a1 + 56) = v11;
  *(a1 + 72) = v40;
  *(a1 + 88) = v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41538);
  v13 = a1 + v12[21];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a1 + v12[22];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = a1 + v12[18];
  *v7 = sub_1BE04F504();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41540);
  sub_1BD2EF630(v2, &v7[*(v16 + 44)]);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v17 = &v7[*(v4 + 36)];
  v18 = v43;
  *v17 = v42;
  *(v17 + 1) = v18;
  *(v17 + 2) = v44;
  sub_1BE052434();
  sub_1BD2F11A4();
  sub_1BE050DE4();

  sub_1BD0DE53C(v7, &qword_1EBD41530);
  LOBYTE(v14) = sub_1BE0501D4();
  sub_1BE04E1F4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41560) + 36);
  *v27 = v14;
  *(v27 + 8) = v20;
  *(v27 + 16) = v22;
  *(v27 + 24) = v24;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  v28 = a1 + v12[19];
  *v28 = 0x4020000000000000;
  *(v28 + 8) = 0;
  *(a1 + v12[20]) = 0;
  v29 = swift_allocObject();
  v30 = v2[7];
  v29[7] = v2[6];
  v29[8] = v30;
  *(v29 + 137) = *(v2 + 121);
  v31 = v2[3];
  v29[3] = v2[2];
  v29[4] = v31;
  v32 = v2[5];
  v29[5] = v2[4];
  v29[6] = v32;
  v33 = v2[1];
  v29[1] = *v2;
  v29[2] = v33;
  v34 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41568) + 36));
  *v34 = sub_1BD2F125C;
  v34[1] = v29;
  v34[2] = 0;
  v34[3] = 0;
  return sub_1BD2F1264(v2, &v38);
}

uint64_t sub_1BD2EF3A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_13:
    v16 = 0;
    v18 = 0;
    v22 = 0;
    v21 = 0;
    goto LABEL_14;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1BFB40900](0, v5);
LABEL_6:
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
    sub_1BE0516A4();
    if (v3 == v25 && v4 == v26)
    {

LABEL_10:
      v10 = [v8 localizedDescription];
      sub_1BE052434();

      sub_1BD0DDEBC();
      v11 = sub_1BE0506C4();
      v13 = v12;
      v15 = v14;
      sub_1BE051264();
      v16 = sub_1BE050564();
      v18 = v17;
      v24 = v19;
      v21 = v20;

      sub_1BD0DDF10(v11, v13, v15 & 1);

      result = swift_getKeyPath();
      v22 = v24 & 1;
      v23 = 2;
LABEL_15:
      *a1 = v16;
      *(a1 + 8) = v18;
      *(a1 + 16) = v22;
      *(a1 + 24) = v21;
      *(a1 + 32) = result;
      *(a1 + 40) = v23;
      *(a1 + 48) = 0;
      return result;
    }

    v9 = sub_1BE053B84();

    if (v9)
    {
      goto LABEL_10;
    }

    v16 = 0;
    v18 = 0;
    v22 = 0;
    v21 = 0;
    result = 0;
LABEL_14:
    v23 = 0;
    goto LABEL_15;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD2EF5C4(uint64_t result)
{
  if (*(result + 72))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41570);
    return sub_1BE04E234();
  }

  return result;
}

uint64_t sub_1BD2EF630@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v155 = a2;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41578);
  v117 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123, v3);
  v116 = &v115 - v4;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41580);
  MEMORY[0x1EEE9AC00](v120, v5);
  v121 = &v115 - v6;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v119 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122, v7);
  v118 = &v115 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41588);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v154 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v153 = &v115 - v14;
  v135 = sub_1BE04EA04();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135, v15);
  v133 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1BE04E414();
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v17);
  v19 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41590);
  v127 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v115 - v22;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41598);
  v131 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v24);
  v125 = &v115 - v25;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD415A0) - 8;
  MEMORY[0x1EEE9AC00](v132, v26);
  v126 = &v115 - v27;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD415A8);
  MEMORY[0x1EEE9AC00](v139, v28);
  v136 = &v115 - v29;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD415B0);
  v140 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142, v30);
  v137 = &v115 - v31;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD415B8);
  v141 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143, v32);
  v138 = &v115 - v33;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD415C0);
  MEMORY[0x1EEE9AC00](v145, v34);
  v144 = &v115 - v35;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD415C8);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148, v36);
  v146 = &v115 - v37;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD415D0);
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152, v38);
  v150 = &v115 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v149 = &v115 - v42;
  v43 = sub_1BD2F09B0();
  v45 = v44;
  v162 = *(a1 + 80);
  v163 = *(a1 + 96);
  v160 = *(a1 + 80);
  v161 = *(a1 + 96);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516C4();
  *&v158 = v43;
  *(&v158 + 1) = v45;
  sub_1BD0DDEBC();
  sub_1BE051E14();
  sub_1BE04E404();
  v46 = sub_1BD0DE4F4(&qword_1EBD415D8, &qword_1EBD41590);
  v47 = v125;
  sub_1BE050974();
  (*(v128 + 8))(v19, v129);
  (*(v127 + 8))(v23, v20);
  v48 = swift_allocObject();
  v49 = *(a1 + 112);
  v48[7] = *(a1 + 96);
  v48[8] = v49;
  *(v48 + 137) = *(a1 + 121);
  v50 = *(a1 + 48);
  v48[3] = *(a1 + 32);
  v48[4] = v50;
  v51 = *(a1 + 80);
  v48[5] = *(a1 + 64);
  v48[6] = v51;
  v52 = *(a1 + 16);
  v48[1] = *a1;
  v48[2] = v52;
  sub_1BD2F1264(a1, &v158);
  v53 = v133;
  sub_1BE04E9F4();
  *&v158 = v20;
  *(&v158 + 1) = v46;
  v54 = v126;
  swift_getOpaqueTypeConformance2();
  v55 = v130;
  sub_1BE051084();

  (*(v134 + 8))(v53, v135);
  (*(v131 + 8))(v47, v55);
  v56 = swift_allocObject();
  v57 = *(a1 + 48);
  v56[3] = *(a1 + 32);
  v56[4] = v57;
  *(v56 + 137) = *(a1 + 121);
  v58 = *(a1 + 112);
  v56[7] = *(a1 + 96);
  v56[8] = v58;
  v59 = *(a1 + 80);
  v56[5] = *(a1 + 64);
  v56[6] = v59;
  v60 = *(a1 + 16);
  v56[1] = *a1;
  v56[2] = v60;
  v61 = (v54 + *(v132 + 44));
  *v61 = sub_1BD2F12A4;
  v61[1] = v56;
  v61[2] = 0;
  v61[3] = 0;
  v62 = *a1;
  v63 = *(a1 + 8);
  v64 = *(a1 + 24);
  v65 = *(a1 + 16);
  if (v64 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1BD2F1264(a1, &v158);
    goto LABEL_9;
  }

  if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  v160 = v162;
  v161 = v163;
  sub_1BD2F1264(a1, &v158);
  sub_1BE0516A4();
  if (__PAIR128__(v63, v62) == v158)
  {

LABEL_6:
    v67 = sub_1BE051264();
    goto LABEL_10;
  }

  v66 = sub_1BE053B84();

  if (v66)
  {
    goto LABEL_6;
  }

LABEL_9:
  v67 = 0;
LABEL_10:
  KeyPath = swift_getKeyPath();
  v69 = v136;
  sub_1BD05C584(v54, v136);
  v70 = v139;
  v71 = (v69 + *(v139 + 36));
  *v71 = KeyPath;
  v71[1] = v67;
  v72 = sub_1BD2F12AC();
  v73 = v137;
  sub_1BE050C44();
  sub_1BD0DE53C(v69, &qword_1EBD415A8);
  *&v158 = v70;
  *(&v158 + 1) = v72;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = v138;
  v76 = v142;
  MEMORY[0x1BFB3DDE0](1, v142, OpaqueTypeConformance2);
  (*(v140 + 8))(v73, v76);
  v77 = swift_getKeyPath();
  v78 = swift_allocObject();
  *(v78 + 16) = v65 & 1;
  v79 = v65;
  v80 = v144;
  (*(v141 + 32))(v144, v75, v143);
  v81 = v145;
  v82 = (v80 + *(v145 + 36));
  *v82 = v77;
  v82[1] = sub_1BD10DF54;
  v82[2] = v78;
  v160 = *(a1 + 104);
  LOBYTE(v161) = *(a1 + 120);
  v158 = *(a1 + 104);
  LOBYTE(v159) = *(a1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41570);
  sub_1BE04E244();
  v83 = sub_1BD2F14A4();
  v84 = v146;
  sub_1BE050FC4();

  sub_1BD0DE53C(v80, &qword_1EBD415C0);
  v158 = v160;
  LOBYTE(v159) = v161;
  sub_1BE04E224();
  v85 = swift_allocObject();
  v86 = *(a1 + 112);
  v85[7] = *(a1 + 96);
  v85[8] = v86;
  *(v85 + 137) = *(a1 + 121);
  v87 = *(a1 + 48);
  v85[3] = *(a1 + 32);
  v85[4] = v87;
  v88 = *(a1 + 80);
  v85[5] = *(a1 + 64);
  v85[6] = v88;
  v89 = *(a1 + 16);
  v85[1] = *a1;
  v85[2] = v89;
  sub_1BD2F1264(a1, &v158);
  *&v158 = v81;
  *(&v158 + 1) = v83;
  swift_getOpaqueTypeConformance2();
  v90 = v149;
  v91 = v148;
  sub_1BE051064();

  (*(v147 + 8))(v84, v91);
  if (v79)
  {
    v92 = v118;
    sub_1BE04E4F4();
    v93 = v119;
    v94 = v122;
    (*(v119 + 16))(v121, v92, v122);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BD0DE4F4(&qword_1EBD41628, &qword_1EBD41578);
    v95 = v153;
  }

  else
  {
    v158 = v160;
    LOBYTE(v159) = v161;
    sub_1BE04E224();
    v95 = v153;
    if (v156 != 1)
    {
      goto LABEL_18;
    }

    v158 = v162;
    v159 = v163;
    sub_1BE0516A4();
    v96 = v156;
    v97 = v157;

    v98 = HIBYTE(v97) & 0xF;
    if ((v97 & 0x2000000000000000) == 0)
    {
      v98 = v96 & 0xFFFFFFFFFFFFLL;
    }

    if (!v98)
    {
LABEL_18:
      v104 = 1;
      goto LABEL_19;
    }

    v99 = swift_allocObject();
    v100 = *(a1 + 112);
    v99[7] = *(a1 + 96);
    v99[8] = v100;
    *(v99 + 137) = *(a1 + 121);
    v101 = *(a1 + 48);
    v99[3] = *(a1 + 32);
    v99[4] = v101;
    v102 = *(a1 + 80);
    v99[5] = *(a1 + 64);
    v99[6] = v102;
    v103 = *(a1 + 16);
    v99[1] = *a1;
    v99[2] = v103;
    sub_1BD2F1264(a1, &v158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41608);
    sub_1BD2F1750();
    v92 = v116;
    sub_1BE051704();
    v93 = v117;
    v94 = v123;
    (*(v117 + 16))(v121, v92, v123);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BD0DE4F4(&qword_1EBD41628, &qword_1EBD41578);
  }

  sub_1BE04F9A4();
  (*(v93 + 8))(v92, v94);
  v104 = 0;
LABEL_19:
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD415F8);
  (*(*(v105 - 8) + 56))(v95, v104, 1, v105);
  v106 = v151;
  v107 = *(v151 + 16);
  v108 = v150;
  v109 = v152;
  v107(v150, v90, v152);
  v110 = v154;
  sub_1BD2F1608(v95, v154);
  v111 = v155;
  v107(v155, v108, v109);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41600);
  sub_1BD2F1608(v110, &v111[*(v112 + 48)]);
  sub_1BD2F1678(v95);
  v113 = *(v106 + 8);
  v113(v90, v109);
  sub_1BD2F1678(v110);
  return (v113)(v108, v109);
}

id sub_1BD2F09B0()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v16 - v8;
  v11 = *MEMORY[0x1E69B8068];
  v12 = *(v2 + 104);
  if (*(v0 + 32) == 1)
  {
    v12(&v16 - v8, v11, v1, v9);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
LABEL_6:

      (*(v2 + 8))(v10, v1);
      return v15;
    }

    __break(1u);
  }

  else
  {
    v12(v5, v11, v1, v9);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
      v10 = v5;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD2F0B7C(uint64_t a1)
{
  v1 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516A4();
  v1();
}

uint64_t sub_1BD2F0BF8()
{
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  return sub_1BE0516B4();
}

id sub_1BD2F0C60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v35 - v10;
  v13 = *MEMORY[0x1E69B8068];
  v14 = *(v4 + 104);
  if (*(v1 + 32) == 1)
  {
    v14(&v35 - v10, v13, v3, v11);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();
      v19 = v18;

      (*(v4 + 8))(v12, v3);
      *&v41 = v17;
      *(&v41 + 1) = v19;
      sub_1BD0DDEBC();
      v20 = sub_1BE053554();
      v22 = v21;

      v36 = v20;
      v37 = v22;
      v36 = sub_1BE0506C4();
      v37 = v23;
      v38 = v24 & 1;
      v39 = v25;
      v40 = 0;
LABEL_6:
      result = sub_1BE04F9A4();
      v33 = v42;
      v34 = v43;
      *a1 = v41;
      *(a1 + 16) = v33;
      *(a1 + 32) = v34;
      return result;
    }

    __break(1u);
  }

  else
  {
    v14(v7, v13, v3, v11);
    result = PKPassKitBundle();
    if (result)
    {
      v26 = result;
      v27 = sub_1BE04B6F4();
      v29 = v28;

      (*(v4 + 8))(v7, v3);
      *&v41 = v27;
      *(&v41 + 1) = v29;
      sub_1BD0DDEBC();
      v36 = sub_1BE0506C4();
      v37 = v31;
      v38 = v30 & 1;
      v39 = v32;
      v40 = 1;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

id sub_1BD2F0F64()
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

unint64_t sub_1BD2F11A4()
{
  result = qword_1EBD41548;
  if (!qword_1EBD41548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41530);
    sub_1BD0DE4F4(&qword_1EBD41550, &qword_1EBD41558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41548);
  }

  return result;
}

unint64_t sub_1BD2F12AC()
{
  result = qword_1EBD415E0;
  if (!qword_1EBD415E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD415A8);
    sub_1BD2F1364();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD415E0);
  }

  return result;
}

unint64_t sub_1BD2F1364()
{
  result = qword_1EBD415E8;
  if (!qword_1EBD415E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD415A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41598);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41590);
    sub_1BD0DE4F4(&qword_1EBD415D8, &qword_1EBD41590);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD415E8);
  }

  return result;
}

unint64_t sub_1BD2F14A4()
{
  result = qword_1EBD415F0;
  if (!qword_1EBD415F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD415C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD415B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD415A8);
    sub_1BD2F12AC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD415F0);
  }

  return result;
}

uint64_t sub_1BD2F1608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41588);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD2F1678(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41588);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_23()
{

  return swift_deallocObject();
}

unint64_t sub_1BD2F1750()
{
  result = qword_1EBD41610;
  if (!qword_1EBD41610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41608);
    sub_1BD2F17DC();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41610);
  }

  return result;
}

unint64_t sub_1BD2F17DC()
{
  result = qword_1EBD41618;
  if (!qword_1EBD41618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41620);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41618);
  }

  return result;
}

unint64_t sub_1BD2F18A4()
{
  result = qword_1EBD41630;
  if (!qword_1EBD41630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41568);
    sub_1BD0DE4F4(&qword_1EBD41638, &qword_1EBD41538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41630);
  }

  return result;
}

unint64_t sub_1BD2F1960()
{
  result = qword_1EBD41640;
  if (!qword_1EBD41640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41640);
  }

  return result;
}

uint64_t sub_1BD2F19B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD2F1A28()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD2F1AA0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

id sub_1BD2F1B14(uint64_t a1)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v37 = &v36 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416E0);
  v5 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416D8);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v36 - v20;
  v22 = OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel__statements;
  v42 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416B0);
  sub_1BE04D874();
  (*(v18 + 32))(&v1[v22], v21, v17);
  v23 = OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel__displayableError;
  v24 = type metadata accessor for FeatureError(0);
  (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
  sub_1BD23C2BC(v16, v13);
  sub_1BE04D874();
  sub_1BD0DE53C(v16, &qword_1EBD416C0);
  (*(v5 + 32))(&v1[v23], v8, v36);
  v25 = OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel__loading;
  LOBYTE(v42) = 0;
  v26 = v37;
  sub_1BE04D874();
  (*(v38 + 32))(&v1[v25], v26, v39);
  v1[OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_loaded] = 0;
  v27 = OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_accountService;
  *&v1[v27] = [objc_opt_self() sharedInstance];
  v28 = OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_statementIDToAccountID;
  *&v1[v28] = sub_1BD1AB78C(MEMORY[0x1E69E7CC0]);
  v29 = OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_exporter;
  type metadata accessor for DocumentExporter();
  v30 = swift_allocObject();
  v31 = OBJC_IVAR____TtC9PassKitUI16DocumentExporter_contentURL;
  v32 = sub_1BE04AA64();
  (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
  *(v30 + OBJC_IVAR____TtC9PassKitUI16DocumentExporter_loading) = 0;
  v33 = OBJC_IVAR____TtC9PassKitUI16DocumentExporter_webService;
  *(v30 + v33) = [objc_opt_self() sharedService];
  *&v1[v29] = v30;
  *&v1[OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_accounts] = v40;
  v34 = type metadata accessor for SavingsStatementsModel(0);
  v41.receiver = v1;
  v41.super_class = v34;
  return objc_msgSendSuper2(&v41, sel_init);
}

void sub_1BD2F1FA0()
{
  if ((*(v0 + OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_loaded) & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if ((aBlock & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock) = 1;
      v1 = v0;
      sub_1BE04D8C4();
      v2 = sub_1BD1AB78C(MEMORY[0x1E69E7CC0]);
      v3 = OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_statementIDToAccountID;
      swift_beginAccess();
      *&v1[v3] = v2;

      v4 = [objc_allocWithZone(MEMORY[0x1E69B8658]) init];
      v5 = OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_accounts;
      v6 = *&v1[OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_accounts];
      if (v6 >> 62)
      {
        v7 = sub_1BE053704();
        v8 = &off_1BE0B1000;
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v8 = &off_1BE0B1000;
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      if (v7 < 1)
      {
        __break(1u);
        goto LABEL_28;
      }

      sub_1BE048C84();
      v9 = 0;
      v10 = *(v8 + 42);
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1BFB40900](v9, v6);
        }

        else
        {
          v11 = *(v6 + 8 * v9 + 32);
        }

        v12 = v11;
        ++v9;
        v13 = swift_allocObject();
        *(v13 + 16) = v1;
        *(v13 + 24) = v12;
        v39 = sub_1BD2F8BAC;
        v40 = v13;
        aBlock = MEMORY[0x1E69E9820];
        v36 = v10;
        v37 = sub_1BD6CF238;
        v38 = &block_descriptor_48;
        v14 = _Block_copy(&aBlock);
        v15 = v1;
        v16 = v12;

        [v4 addOperation_];
        _Block_release(v14);
      }

      while (v7 != v9);

      v8 = &off_1BE0B1000;
LABEL_12:
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      v39 = sub_1BD2F8BB4;
      v40 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v18 = *(v8 + 42);
      v36 = v18;
      v37 = sub_1BD6CF238;
      v38 = &block_descriptor_87;
      v19 = _Block_copy(&aBlock);
      v20 = v1;

      [v4 addOperation_];
      _Block_release(v19);
      v21 = *&v1[v5];
      if (v21 >> 62)
      {
        v22 = sub_1BE053704();
        if (v22)
        {
LABEL_14:
          if (v22 >= 1)
          {
            sub_1BE048C84();
            v23 = 0;
            do
            {
              if ((v21 & 0xC000000000000001) != 0)
              {
                v24 = MEMORY[0x1BFB40900](v23, v21);
              }

              else
              {
                v24 = *(v21 + 8 * v23 + 32);
              }

              v25 = v24;
              ++v23;
              v26 = swift_allocObject();
              *(v26 + 16) = v20;
              *(v26 + 24) = v25;
              v39 = sub_1BD2F8BBC;
              v40 = v26;
              aBlock = MEMORY[0x1E69E9820];
              v36 = v18;
              v37 = sub_1BD6CF238;
              v38 = &block_descriptor_93;
              v27 = _Block_copy(&aBlock);
              v28 = v20;
              v29 = v25;

              [v4 addOperation_];
              _Block_release(v27);
            }

            while (v22 != v23);

            goto LABEL_21;
          }

LABEL_28:
          __break(1u);
          return;
        }
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
          goto LABEL_14;
        }
      }

LABEL_21:
      v30 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
      v31 = swift_allocObject();
      *(v31 + 16) = v20;
      v39 = sub_1BD2F8BC4;
      v40 = v31;
      aBlock = MEMORY[0x1E69E9820];
      v36 = v18;
      v37 = sub_1BD3B21E4;
      v38 = &block_descriptor_99_1;
      v32 = _Block_copy(&aBlock);
      v33 = v20;

      v34 = [v4 evaluateWithInput:v30 completion:v32];
      _Block_release(v32);

      swift_unknownObjectRelease();
    }
  }
}

void sub_1BD2F24FC(int a1, void *a2, uint64_t a3, uint64_t a4, char *a5, id a6)
{
  v6 = *&a5[OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_accountService];
  if (v6)
  {
    v12 = [a6 accountIdentifier];
    v13 = swift_allocObject();
    v13[2] = a5;
    v13[3] = a3;
    v13[4] = a4;
    v13[5] = a2;
    v13[6] = a6;
    v18[4] = sub_1BD2F8C0C;
    v18[5] = v13;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1BD2F2D5C;
    v18[3] = &block_descriptor_134;
    v14 = _Block_copy(v18);
    v15 = a5;
    sub_1BE048964();
    v16 = a2;
    v17 = a6;

    [v6 savingsStatementsForAccountIdentifier:v12 completion:v14];
    _Block_release(v14);
  }
}

uint64_t sub_1BD2F2640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v28 = a7;
  v11 = sub_1BE051F54();
  v31 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1BE051FA4();
  v15 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v29 = sub_1BE052D54();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a6;
  v21 = a6;
  v22 = v28;
  v20[6] = v19;
  v20[7] = v22;
  aBlock[4] = sub_1BD2F8C3C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_141;
  v23 = _Block_copy(aBlock);
  sub_1BE048C84();
  sub_1BE048964();
  v24 = v21;
  v25 = v22;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v26 = v29;
  MEMORY[0x1BFB3FDF0](0, v18, v14, v23);
  _Block_release(v23);

  (*(v31 + 8))(v14, v11);
  return (*(v15 + 8))(v18, v30);
}

uint64_t sub_1BD2F2934(unint64_t a1, uint64_t (*a2)(void *, void), uint64_t a3, void *a4, unint64_t a5, uint64_t a6)
{
  v7 = a2;
  if (!a1)
  {
    v52 = a4;
    return v7(v52, 0);
  }

  v10 = a1;
  sub_1BD3F05B0(a1);
  v11 = sub_1BE052724();

  [a4 addObjectsFromArray_];

  v54 = a4;
  if (v10 >> 62)
  {
    goto LABEL_38;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_39:
    v52 = v54;
    v7 = a2;
    return v7(v52, 0);
  }

  while (v12 >= 1)
  {
    v13 = v10 & 0xC000000000000001;
    swift_beginAccess();
    v14 = 0;
    v57 = a5;
    v58 = a6;
    v56 = v10;
    v61 = v10 & 0xC000000000000001;
    v62 = v12;
    while (1)
    {
      if (v13)
      {
        v16 = MEMORY[0x1BFB40900](v14, v10);
      }

      else
      {
        v16 = *(v10 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 identifier];
      if (!v18)
      {
        goto LABEL_9;
      }

      v19 = v18;
      v20 = sub_1BE052434();
      v22 = v21;

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {

        goto LABEL_9;
      }

      v24 = Strong;
      v25 = [a6 accountIdentifier];
      if (!v25)
      {
        v33 = &v24[OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_statementIDToAccountID];
        swift_beginAccess();
        goto LABEL_25;
      }

      v26 = v24;
      v27 = v20;
      v28 = a5;
      v29 = a6;
      v30 = v25;
      v59 = sub_1BE052434();
      v32 = v31;

      v63 = v26;
      v33 = &v26[OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_statementIDToAccountID];
      swift_beginAccess();
      v60 = v32;
      if (!v32)
      {
        a6 = v29;
        a5 = v28;
        v20 = v27;
        v24 = v63;
LABEL_25:
        v42 = sub_1BD148F70(v20, v22);
        v44 = v43;

        if (v44)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = *v33;
          v65 = *v33;
          *v33 = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1BD5069C0();
            v46 = v65;
          }

          sub_1BD50550C(v42, v46);
          *v33 = v46;
        }

        goto LABEL_8;
      }

      a6 = swift_isUniquelyReferenced_nonNull_native();
      v34 = *v33;
      v64 = *v33;
      *v33 = 0x8000000000000000;
      v35 = v27;
      a5 = sub_1BD148F70(v27, v22);
      v37 = *(v34 + 16);
      v38 = (v36 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        break;
      }

      v10 = v36;
      if (*(v34 + 24) >= v39)
      {
        v24 = v63;
        if (a6)
        {
          a6 = v64;
          if ((v36 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          sub_1BD5069C0();
          a6 = v64;
          if ((v10 & 1) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        sub_1BD501470(v39, a6);
        v40 = sub_1BD148F70(v27, v22);
        v24 = v63;
        if ((v10 & 1) != (v41 & 1))
        {
          goto LABEL_42;
        }

        a5 = v40;
        a6 = v64;
        if ((v10 & 1) == 0)
        {
LABEL_31:
          *(a6 + 8 * (a5 >> 6) + 64) |= 1 << a5;
          v47 = (*(a6 + 48) + 16 * a5);
          *v47 = v35;
          v47[1] = v22;
          v48 = (*(a6 + 56) + 16 * a5);
          *v48 = v59;
          v48[1] = v60;
          v49 = *(a6 + 16);
          v50 = __OFADD__(v49, 1);
          v51 = v49 + 1;
          if (v50)
          {
            goto LABEL_37;
          }

          *(a6 + 16) = v51;
          goto LABEL_7;
        }
      }

      v15 = (*(a6 + 56) + 16 * a5);
      *v15 = v59;
      v15[1] = v60;

LABEL_7:
      *v33 = a6;
      a5 = v57;
      a6 = v58;
      v10 = v56;
LABEL_8:
      swift_endAccess();

      v13 = v61;
      v12 = v62;
LABEL_9:
      ++v14;

      if (v12 == v14)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v12 = sub_1BE053704();
    if (!v12)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_42:
  result = sub_1BE053C14();
  __break(1u);
  return result;
}

uint64_t sub_1BD2F2D5C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD45650);
    v4 = sub_1BE052744();
  }

  sub_1BE048964();
  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1BD2F2E00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v6 = sub_1BE051F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE051FA4();
  v11 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v15 = sub_1BE052D54();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = v16;
  v17[4] = v21;
  v17[5] = a4;
  aBlock[4] = sub_1BD2F8C00;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_128;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v14, v10, v18);
  _Block_release(v18);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v22);
}

void sub_1BD2F30D4(uint64_t a1, uint64_t a2, void (*a3)(id, void))
{
  v5 = 0;
  sub_1BD0E5E8C(0, &qword_1EBD45650);
  sub_1BE052734();
  v4 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  a3(v4, 0);
}

void sub_1BD2F321C(int a1, void *a2, uint64_t a3, uint64_t a4, char *a5, id a6)
{
  v6 = *&a5[OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_accountService];
  if (v6)
  {
    v12 = [a6 accountIdentifier];
    v13 = swift_allocObject();
    v13[2] = a5;
    v13[3] = a6;
    v13[4] = a3;
    v13[5] = a4;
    v13[6] = a2;
    v18[4] = sub_1BD2F8BD4;
    v18[5] = v13;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1BD2F2D5C;
    v18[3] = &block_descriptor_114;
    v14 = _Block_copy(v18);
    v15 = a5;
    v16 = a6;
    sub_1BE048964();
    v17 = a2;

    [v6 updateSavingsStatementsForAccountIdentifier:v12 completion:v14];
    _Block_release(v14);
  }
}

uint64_t sub_1BD2F3360(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v30 = a7;
  v12 = sub_1BE051F54();
  v34 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE051FA4();
  v32 = *(v16 - 8);
  v33 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v31 = sub_1BE052D54();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = v20;
  v21[4] = a4;
  v21[5] = a1;
  v21[6] = a5;
  v21[7] = a6;
  v22 = v30;
  v21[8] = v30;
  aBlock[4] = sub_1BD2F8BEC;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_121;
  v23 = _Block_copy(aBlock);
  v24 = a2;
  sub_1BE048C84();
  sub_1BE048964();
  v25 = v22;
  v26 = a4;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v27 = v31;
  MEMORY[0x1BFB3FDF0](0, v19, v15, v23);
  _Block_release(v23);

  (*(v34 + 8))(v15, v12);
  return (*(v32 + 8))(v19, v33);
}

uint64_t sub_1BD2F3660(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(id, void, __n128), uint64_t a6, void *a7)
{
  v67 = a7;
  v63[1] = a6;
  v64 = a5;
  v72 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = v63 - v17;
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = a1;
      v20 = [a3 feature];
      v21 = a1;
      FeatureError.init(feature:error:)(v20, a1, v18);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BD23C2BC(v18, v13);
      sub_1BE04D8C4();

      sub_1BD0DE53C(v18, &qword_1EBD416C0);
    }
  }

  if (!a4)
  {
    return v64(v67, 0, v16);
  }

  sub_1BD3F05B0(a4);
  v22 = sub_1BE052724();

  [v67 addObjectsFromArray_];

  if (a4 >> 62)
  {
    goto LABEL_39;
  }

  v23 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
    return v64(v67, 0, v16);
  }

LABEL_7:
  if (v23 >= 1)
  {
    v24 = a4 & 0xC000000000000001;
    swift_beginAccess();
    v25 = 0;
    v26 = &selRef_hoursOfDay;
    v65 = a3;
    v66 = a4;
    v70 = a4 & 0xC000000000000001;
    v71 = v23;
    while (1)
    {
      if (v24)
      {
        v29 = MEMORY[0x1BFB40900](v25, a4);
      }

      else
      {
        v29 = *(a4 + 8 * v25 + 32);
      }

      v30 = v29;
      v31 = [v29 v26[20]];
      if (!v31)
      {
        goto LABEL_12;
      }

      v32 = v31;
      v33 = sub_1BE052434();
      v35 = v34;

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {

        goto LABEL_12;
      }

      v37 = Strong;
      v38 = [a3 accountIdentifier];
      if (!v38)
      {
        v42 = &v37[OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_statementIDToAccountID];
        swift_beginAccess();
LABEL_27:
        v51 = sub_1BD148F70(v33, v35);
        v53 = v52;

        if (v53)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = *v42;
          v73 = *v42;
          *v42 = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1BD5069C0();
            v55 = v73;
          }

          sub_1BD50550C(v51, v55);
          *v42 = v55;
        }

        goto LABEL_11;
      }

      v39 = v38;
      v69 = sub_1BE052434();
      v41 = v40;

      v42 = &v37[OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_statementIDToAccountID];
      swift_beginAccess();
      if (!v41)
      {
        goto LABEL_27;
      }

      v68 = v41;
      a4 = swift_isUniquelyReferenced_nonNull_native();
      v73 = *v42;
      v43 = v73;
      *v42 = 0x8000000000000000;
      a3 = sub_1BD148F70(v33, v35);
      v45 = *(v43 + 16);
      v46 = (v44 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        v23 = sub_1BE053704();
        if (!v23)
        {
          return v64(v67, 0, v16);
        }

        goto LABEL_7;
      }

      v48 = v44;
      if (*(v43 + 24) >= v47)
      {
        if (a4)
        {
          a4 = v73;
          if ((v44 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          sub_1BD5069C0();
          a4 = v73;
          if ((v48 & 1) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        sub_1BD501470(v47, a4);
        v49 = sub_1BD148F70(v33, v35);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_42;
        }

        a3 = v49;
        a4 = v73;
        if ((v48 & 1) == 0)
        {
LABEL_33:
          *(a4 + 8 * (a3 >> 6) + 64) |= 1 << a3;
          v56 = (*(a4 + 48) + 16 * a3);
          *v56 = v33;
          v56[1] = v35;
          v57 = (*(a4 + 56) + 16 * a3);
          v58 = v68;
          *v57 = v69;
          v57[1] = v58;
          v59 = *(a4 + 16);
          v60 = __OFADD__(v59, 1);
          v61 = v59 + 1;
          if (v60)
          {
            goto LABEL_38;
          }

          *(a4 + 16) = v61;
          goto LABEL_10;
        }
      }

      v27 = (*(a4 + 56) + 16 * a3);
      v28 = v68;
      *v27 = v69;
      v27[1] = v28;

LABEL_10:
      *v42 = a4;
      a3 = v65;
      a4 = v66;
LABEL_11:
      swift_endAccess();

      v24 = v70;
      v23 = v71;
      v26 = &selRef_hoursOfDay;
LABEL_12:
      ++v25;

      if (v23 == v25)
      {
        return v64(v67, 0, v16);
      }
    }
  }

  __break(1u);
LABEL_42:
  result = sub_1BE053C14();
  __break(1u);
  return result;
}

uint64_t sub_1BD2F3B78(uint64_t a1, void *a2)
{
  v3 = sub_1BE051F54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v13 = sub_1BE052D54();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1BD2F8BCC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_108;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v7, v16);
  _Block_release(v16);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

void sub_1BD2F3E34()
{
  v1 = 0;
  sub_1BD0E5E8C(0, &qword_1EBD45650);
  sub_1BE052734();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8C4();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_loaded] = 1;
  }
}

uint64_t sub_1BD2F3FCC(uint64_t a1, char a2)
{
  v90 = sub_1BE04AF64();
  v5 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v6);
  v89 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1BE04B2D4();
  v8 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v9);
  v87 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v86 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v78 - v16;
  v18 = sub_1BE04B3B4();
  isUniquelyReferenced_nonNull_native = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v85 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v84 = &v78 - v24;
  v25 = sub_1BE04B2F4();
  v79 = *(v25 - 8);
  v80 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v91 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v28 = v92;
  if (a2)
  {
    goto LABEL_32;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v92 >> 62)
  {
    goto LABEL_84;
  }

  v29 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v29 <= a1)
  {
LABEL_32:
    sub_1BE04B2A4();
    v45 = *(v2 + OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_accounts);
    if (v45 >> 62)
    {
      if (!sub_1BE053704())
      {
        goto LABEL_44;
      }
    }

    else if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_44;
    }

    if ((v45 & 0xC000000000000001) != 0)
    {
      sub_1BE048C84();
      v2 = MEMORY[0x1BFB40900](0, v45);
    }

    else
    {
      if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_83;
      }

      v2 = *(v45 + 32);
    }

    v46 = [v2 savingsDetails];

    if (v46)
    {
      v2 = [v46 productTimeZone];

      if (v2)
      {
        v47 = v86;
        sub_1BE04B394();

        v48 = 0;
      }

      else
      {
        v48 = 1;
        v47 = v86;
      }

      (*(isUniquelyReferenced_nonNull_native + 56))(v47, v48, 1, v18);
      sub_1BD196DA8(v47, v17);
      if ((*(isUniquelyReferenced_nonNull_native + 48))(v17, 1, v18) != 1)
      {
        v49 = v84;
        (*(isUniquelyReferenced_nonNull_native + 32))(v84, v17, v18);
        (*(isUniquelyReferenced_nonNull_native + 16))(v85, v49, v18);
        v2 = v91;
        sub_1BE04B2C4();
        v50 = *(isUniquelyReferenced_nonNull_native + 8);
        isUniquelyReferenced_nonNull_native += 8;
        v50(v49, v18);
        goto LABEL_46;
      }

LABEL_45:
      sub_1BD0DE53C(v17, &unk_1EBD3D260);
LABEL_46:
      v52 = v28;
      if (v28 >> 62)
      {
        goto LABEL_74;
      }

      v53 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
        do
        {
          if (v53 < 1)
          {
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            v29 = sub_1BE053704();
            goto LABEL_4;
          }

          v18 = 0;
          v86 = (v52 & 0xC000000000000001);
          LODWORD(v85) = *MEMORY[0x1E6969A68];
          v83 = v5 + 1;
          v84 = (v8 + 104);
          v82 = (v8 + 8);
          a1 = MEMORY[0x1E69E7CC8];
          v81 = v52;
          while (1)
          {
            v54 = v86 ? MEMORY[0x1BFB40900](v18) : *(v52 + 8 * v18 + 32);
            v55 = v54;
            v56 = v87;
            v28 = v88;
            (*v84)(v87, v85, v88);
            v57 = [v55 closingDate];
            v58 = v89;
            sub_1BE04AEE4();

            v8 = sub_1BE04B2E4();
            (*v83)(v58, v90);
            (*v82)(v56, v28);
            if (*(a1 + 16) && (v59 = sub_1BD149084(v8), (v60 & 1) != 0))
            {
              v92 = *(*(a1 + 56) + 8 * v59);
              sub_1BE048C84();
            }

            else
            {
              v92 = MEMORY[0x1E69E7CC0];
            }

            v5 = v55;
            MEMORY[0x1BFB3F7A0]();
            if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BE052774();
            }

            sub_1BE0527C4();
            v17 = v92;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v93 = a1;
            v2 = a1;
            v62 = sub_1BD149084(v8);
            v63 = *(a1 + 16);
            v64 = (v61 & 1) == 0;
            v65 = v63 + v64;
            if (__OFADD__(v63, v64))
            {
              break;
            }

            v28 = v61;
            if (*(a1 + 24) >= v65)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                a1 = v93;
                if (v61)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v2 = &v93;
                sub_1BD506B4C();
                a1 = v93;
                if (v28)
                {
                  goto LABEL_50;
                }
              }
            }

            else
            {
              sub_1BD501744(v65, isUniquelyReferenced_nonNull_native);
              v2 = v93;
              v66 = sub_1BD149084(v8);
              if ((v28 & 1) != (v67 & 1))
              {
                goto LABEL_103;
              }

              v62 = v66;
              a1 = v93;
              if (v28)
              {
LABEL_50:
                *(*(a1 + 56) + 8 * v62) = v17;

                goto LABEL_51;
              }
            }

            *(a1 + 8 * (v62 >> 6) + 64) |= 1 << v62;
            *(*(a1 + 48) + 8 * v62) = v8;
            *(*(a1 + 56) + 8 * v62) = v17;
            v68 = *(a1 + 16);
            v69 = __OFADD__(v68, 1);
            v70 = v68 + 1;
            if (v69)
            {
              goto LABEL_73;
            }

            *(a1 + 16) = v70;

LABEL_51:
            ++v18;
            v52 = v81;
            if (v53 == v18)
            {
              goto LABEL_76;
            }
          }

          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          v71 = sub_1BE053704();
          v52 = v28;
          v53 = v71;
        }

        while (v71);
      }

      a1 = MEMORY[0x1E69E7CC8];
LABEL_76:

      v72 = *(a1 + 16);
      if (v72)
      {
        v73 = sub_1BD1DA024(*(a1 + 16), 0);
        v74 = sub_1BD5EDB10(&v92, v73 + 4, v72, a1);
        swift_bridgeObjectRetain_n();
        sub_1BD0D45FC();
        if (v74 == v72)
        {
LABEL_80:
          v92 = v73;
          sub_1BD2F65E4(&v92);

          (*(v79 + 8))(v91, v80);

          return v92;
        }

        __break(1u);
      }

      sub_1BE048C84();
      v73 = MEMORY[0x1E69E7CC0];
      goto LABEL_80;
    }

LABEL_44:
    v51 = *(isUniquelyReferenced_nonNull_native + 56);
    isUniquelyReferenced_nonNull_native += 56;
    v51(v17, 1, 1, v18);
    goto LABEL_45;
  }

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v83 = v8;
    KeyPath = v92;
    v28 = v5;
    v31 = v92 & 0xFFFFFFFFFFFFFF8;
    v8 = v92 >> 62;
    if (!(v92 >> 62))
    {
      v32 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32 >= a1)
      {
        v33 = a1;
      }

      else
      {
        v33 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a1)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      if (v32 >= v34)
      {
        goto LABEL_14;
      }

      goto LABEL_99;
    }
  }

  if (KeyPath < 0)
  {
    v62 = KeyPath;
  }

  else
  {
    v62 = v31;
  }

  v76 = sub_1BE053704();
  if ((sub_1BE053704() & 0x8000000000000000) == 0)
  {
    if (v76 >= a1)
    {
      v77 = a1;
    }

    else
    {
      v77 = v76;
    }

    if (v76 < 0)
    {
      v77 = a1;
    }

    if (a1)
    {
      v34 = v77;
    }

    else
    {
      v34 = 0;
    }

    if (sub_1BE053704() >= v34)
    {
LABEL_14:
      if ((KeyPath & 0xC000000000000001) != 0 && v34)
      {
        sub_1BD0E5E8C(0, &qword_1EBD45650);
        sub_1BE048C84();
        v35 = 0;
        do
        {
          v36 = v35 + 1;
          sub_1BE053864();
          v35 = v36;
        }

        while (v34 != v36);
      }

      else
      {
        sub_1BE048C84();
      }

      if (v8)
      {
        a1 = sub_1BE0539D4();
        v37 = v38;
        v8 = v39;
        v34 = v40;

        if (v34)
        {
          goto LABEL_25;
        }
      }

      else
      {
        a1 = KeyPath & 0xFFFFFFFFFFFFFF8;
        v37 = (KeyPath & 0xFFFFFFFFFFFFFF8) + 32;
        v34 = (2 * v34) | 1;
        if (v34)
        {
LABEL_25:
          v82 = v37;
          sub_1BE053BB4();
          swift_unknownObjectRetain_n();
          v42 = swift_dynamicCastClass();
          if (!v42)
          {
            swift_unknownObjectRelease();
            v42 = MEMORY[0x1E69E7CC0];
          }

          v43 = *(v42 + 16);

          if (!__OFSUB__(v34 >> 1, v8))
          {
            if (v43 == (v34 >> 1) - v8)
            {
              v44 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              v5 = v28;
              v8 = v83;
              v28 = v44;
              if (v44)
              {
                goto LABEL_32;
              }

              v28 = MEMORY[0x1E69E7CC0];
              goto LABEL_31;
            }

            goto LABEL_101;
          }

LABEL_100:
          __break(1u);
LABEL_101:
          swift_unknownObjectRelease_n();
          v37 = v82;
        }
      }

      sub_1BD1DA430(a1, v37, v8, v34);
      v5 = v28;
      v28 = v41;
      v8 = v83;
LABEL_31:
      swift_unknownObjectRelease();
      goto LABEL_32;
    }

LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  __break(1u);
LABEL_103:
  sub_1BE053C14();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1BD2F4B7C(id **a1, unint64_t *a2)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = v24 - v12;
  v14 = *a1;
  v15 = *a2;
  if (v14 >> 62)
  {
    if (!sub_1BE053704())
    {
      goto LABEL_17;
    }
  }

  else if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    v22 = 0;
    return v22 & 1;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1BFB40900](0, v14, v11);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v16 = v14[4];
  }

  v14 = v16;
  if (!(v15 >> 62))
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  result = sub_1BE053704();
  if (!result)
  {
LABEL_16:

    goto LABEL_17;
  }

LABEL_8:
  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_20:
    v18 = MEMORY[0x1BFB40900](0, v15, v11);
    goto LABEL_11;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v15 + 32);
LABEL_11:
    v19 = v18;
    v20 = [v14 closingDate];
    sub_1BE04AEE4();

    v21 = [v19 closingDate];
    sub_1BE04AEE4();

    v22 = sub_1BE04AE74();
    v23 = *(v5 + 8);
    v23(v8, v4);
    v23(v13, v4);
    return v22 & 1;
  }

  __break(1u);
  return result;
}

char *sub_1BD2F4DC8(void *a1)
{
  v4 = v1;
  v5 = [a1 identifier];
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = v5;
  v3 = sub_1BE052434();
  v2 = v7;

  v8 = OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_statementIDToAccountID;
  swift_beginAccess();
  v1 = *&v4[v8];
  if (!*(v1 + 16) || (sub_1BE048C84(), v3 = sub_1BD148F70(v3, v2), v10 = v9, , (v10 & 1) == 0))
  {

    goto LABEL_24;
  }

  v11 = (*(v1 + 56) + 16 * v3);
  v3 = *v11;
  v2 = v11[1];
  sub_1BE048C84();

  v1 = *&v4[OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_accounts];
  v26 = v4;
  if (v1 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    sub_1BE048C84();
    if (i)
    {
      v13 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1BFB40900](v13, v1);
        }

        else
        {
          if (v13 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v14 = *(v1 + 8 * v13 + 32);
        }

        v4 = v14;
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v16 = [v14 accountIdentifier];
        if (v16)
        {
          v17 = v16;
          v18 = sub_1BE052434();
          v20 = v19;

          if (v18 == v3 && v20 == v2)
          {

            goto LABEL_32;
          }

          v22 = sub_1BE053B84();

          if (v22)
          {

            goto LABEL_32;
          }
        }

        ++v13;
        if (v15 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
    }

    else
    {
LABEL_23:

      v4 = v26;
LABEL_24:
      i = OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_accounts;
      v23 = *&v4[OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_accounts];
      if (!(v23 >> 62))
      {
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
        {
          return 0;
        }

        goto LABEL_26;
      }
    }

    if (sub_1BE053704() != 1)
    {
      return 0;
    }

LABEL_26:
    v24 = *&v4[i];
    if (v24 >> 62)
    {
      if (!sub_1BE053704())
      {
        return 0;
      }
    }

    else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 0;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return *(v24 + 32);
    }

    __break(1u);
LABEL_42:
    ;
  }

  sub_1BE048C84();
  v4 = MEMORY[0x1BFB40900](0, v24);
LABEL_32:

  return v4;
}

uint64_t sub_1BD2F50D4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - v14;
  v16 = type metadata accessor for FeatureError(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_1BD0DE53C(v15, &qword_1EBD416C0);
  }

  sub_1BD230930(v15, v20);
  sub_1BD2F8B48(a1, v11);
  v22 = *(v17 + 56);
  v22(v11, 0, 1, v16);
  v23 = FeatureError.matches(error:)(v11);
  sub_1BD0DE53C(v11, &qword_1EBD416C0);
  if (v23)
  {
    v22(v11, 1, 1, v16);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD23C2BC(v11, v7);
    v24 = v2;
    sub_1BE04D8C4();
    sub_1BD0DE53C(v11, &qword_1EBD416C0);
  }

  return sub_1BD230994(v20);
}

void sub_1BD2F554C()
{
  sub_1BD0E4578(319, &qword_1EBD416A8, &qword_1EBD416B0);
  if (v0 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD416B8, &qword_1EBD416C0);
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

uint64_t sub_1BD2F56B0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SavingsStatementsModel(0);
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

void sub_1BD2F56F0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v15 = &v43 - v14;
  v16 = [a1 identifier];
  if (v16)
  {
    v48 = a1;
    v17 = v16;
    v18 = sub_1BE052434();
    v20 = v19;

    v21 = OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_statementIDToAccountID;
    swift_beginAccess();
    v22 = *(v5 + v21);
    if (*(v22 + 16) && (v47 = a2, v23 = v5, sub_1BE048C84(), v24 = sub_1BD148F70(v18, v20), v26 = v25, , (v26 & 1) != 0))
    {
      v27 = (*(v22 + 56) + 16 * v24);
      v28 = v27[1];
      v49 = *v27;
      sub_1BE048C84();

      v43 = v23;
      v44 = a3;
      v29 = *(v23 + OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_accounts);
      v45 = a4;
      v46 = a5;
      if (v29 >> 62)
      {
        goto LABEL_29;
      }

      for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
      {
        sub_1BE048C84();
        if (!i)
        {
          break;
        }

        v31 = 0;
        v50 = v29 & 0xFFFFFFFFFFFFFF8;
        v51 = v29 & 0xC000000000000001;
        while (1)
        {
          if (v51)
          {
            v32 = MEMORY[0x1BFB40900](v31, v29);
          }

          else
          {
            if (v31 >= *(v50 + 16))
            {
              goto LABEL_28;
            }

            v32 = *(v29 + 8 * v31 + 32);
          }

          v33 = v32;
          v34 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          v35 = [v32 accountIdentifier];
          if (v35)
          {
            v36 = v35;
            v37 = sub_1BE052434();
            v39 = v38;

            if (v37 == v49 && v39 == v28)
            {

LABEL_26:

              sub_1BD95B8A4(v33, v48, v47, v44, v45, v46);

              return;
            }

            v41 = sub_1BE053B84();

            if (v41)
            {
              goto LABEL_26;
            }
          }

          ++v31;
          if (v34 == i)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        ;
      }

LABEL_23:

      a4 = v45;
    }

    else
    {
    }
  }

  v42 = sub_1BE04AA64();
  (*(*(v42 - 8) + 56))(v15, 1, 1, v42);
  a4(v15);
  sub_1BD0DE53C(v15, &unk_1EBD3CF70);
}

void sub_1BD2F5A40(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v60 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v52 - v10;
  v12 = sub_1BE04AA64();
  v13 = *(v12 - 8);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a2;
  if (!a2)
  {
    goto LABEL_23;
  }

  v18 = OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_statementIDToAccountID;
  swift_beginAccess();
  v19 = *(v4 + v18);
  if (!*(v19 + 16))
  {
    goto LABEL_23;
  }

  sub_1BE048C84();
  v20 = sub_1BD148F70(v60, v61);
  if ((v21 & 1) == 0)
  {

LABEL_23:
    (*(v13 + 56))(v11, 1, 1, v12, v15);
    a3(v11);
    sub_1BD0DE53C(v11, &unk_1EBD3CF70);
    return;
  }

  v55 = v12;
  v56 = a3;
  v57 = a4;
  v22 = (*(v19 + 56) + 16 * v20);
  v23 = v22[1];
  v59 = *v22;
  sub_1BE048C84();

  v53 = v4;
  v24 = *(v4 + OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_accounts);
  v58 = v13;
  if (v24 >> 62)
  {
LABEL_36:
    v25 = sub_1BE053704();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = v17;
  sub_1BE048C84();
  if (!v25)
  {
LABEL_22:

    a3 = v56;
    v12 = v55;
    v13 = v58;
    goto LABEL_23;
  }

  v17 = 0;
  v62 = v24 & 0xFFFFFFFFFFFFFF8;
  v63 = v24 & 0xC000000000000001;
  while (1)
  {
    if (v63)
    {
      v26 = MEMORY[0x1BFB40900](v17, v24);
    }

    else
    {
      if (v17 >= *(v62 + 16))
      {
        goto LABEL_35;
      }

      v26 = *(v24 + 8 * v17 + 32);
    }

    v27 = v26;
    v28 = (v17 + 1);
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v29 = [v26 accountIdentifier];
    if (!v29)
    {
      goto LABEL_8;
    }

    v30 = v29;
    v31 = sub_1BE052434();
    v33 = v32;

    if (v31 == v59 && v33 == v23)
    {
      break;
    }

    v35 = sub_1BE053B84();

    if (v35)
    {
      goto LABEL_26;
    }

LABEL_8:

    ++v17;
    if (v28 == v25)
    {
      goto LABEL_22;
    }
  }

LABEL_26:

  v36 = v54;
  v37 = *(v53 + OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_exporter);
  v38 = v58;
  if (*(v37 + OBJC_IVAR____TtC9PassKitUI16DocumentExporter_loading) == 1)
  {
  }

  else
  {
    *(v37 + OBJC_IVAR____TtC9PassKitUI16DocumentExporter_loading) = 1;
    sub_1BD95D644();
    v39 = [objc_allocWithZone(MEMORY[0x1E69B84A0]) init];
    v40 = sub_1BE052404();
    [v39 setDocumentIdentifier_];

    [v39 setAction_];
    v41 = [v27 accountIdentifier];
    [v39 setAccountIdentifier_];

    v42 = [v27 accountBaseURL];
    if (v42)
    {
      v43 = v42;
      sub_1BE04A9F4();

      v44 = sub_1BE04A9C4();
      (*(v38 + 8))(v36, v55);
    }

    else
    {
      v44 = 0;
    }

    v45 = v57;
    [v39 setBaseURL_];

    v46 = *(v37 + OBJC_IVAR____TtC9PassKitUI16DocumentExporter_webService);
    if (v46)
    {
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = swift_allocObject();
      v49 = v56;
      v48[2] = v47;
      v48[3] = v49;
      v48[4] = v45;
      aBlock[4] = sub_1BD2F8C4C;
      aBlock[5] = v48;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD14E1D8;
      aBlock[3] = &block_descriptor_150;
      v50 = _Block_copy(aBlock);
      v51 = v39;
      sub_1BE048964();

      [v46 accountDocumentActionWithRequest:v51 completion:v50];

      _Block_release(v50);
    }

    else
    {
    }
  }
}

uint64_t sub_1BD2F5FCC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v42 = 1;
  v1 = v0;
  sub_1BE04D8C4();
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1BD1AB78C(MEMORY[0x1E69E7CC0]);
  v4 = OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_statementIDToAccountID;
  swift_beginAccess();
  *&v1[v4] = v3;

  v5 = [objc_opt_self() savingsAccountStatementsArray];
  v6 = sub_1BE052744();

  v7 = sub_1BD3FD1E4(v6);

  if (!v7)
  {
    goto LABEL_29;
  }

  v41 = v2;
  v38 = *(v7 + 16);
  if (!v38)
  {
LABEL_28:

    v32 = sub_1BE048C84();
    v40[0] = sub_1BD6D3E38(v32);
    sub_1BD2F6568(v40);

    v33 = v40[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v40[0] = v33;
    v34 = v1;
    sub_1BE04D8C4();
LABEL_29:
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v40[0]) = 0;
    v35 = v1;
    return sub_1BE04D8C4();
  }

  v8 = 0;
  v37 = OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_accounts;
  while (v8 < *(v7 + 16))
  {
    v10 = objc_allocWithZone(MEMORY[0x1E69B9180]);
    sub_1BE048C84();
    v11 = sub_1BE052224();
    v12 = [v10 initWithDictionary_];

    v13 = v12;
    MEMORY[0x1BFB3F7A0]();
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
    v14 = [v13 identifier];
    if (!v14)
    {

      goto LABEL_6;
    }

    v15 = v7;
    v16 = v14;
    v17 = sub_1BE052434();
    v19 = v18;

    v20 = *&v1[v37];
    if (v20 >> 62)
    {
      if (!sub_1BE053704())
      {
        goto LABEL_31;
      }
    }

    else if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    sub_1BE048C84();

    if ((v20 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1BFB40900](0, v20);
    }

    else
    {
      if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v21 = *(v20 + 32);
    }

    v22 = v21;

    v23 = [v22 accountIdentifier];

    if (!v23)
    {
      swift_beginAccess();
LABEL_21:
      v27 = sub_1BD148F70(v17, v19);
      v29 = v28;

      v7 = v15;
      if (v29)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *&v1[v4];
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1BD5069C0();
        }

        sub_1BD50550C(v27, v31);
        *&v1[v4] = v31;
      }

      goto LABEL_5;
    }

    v24 = sub_1BE052434();
    v26 = v25;

    swift_beginAccess();
    if (!v26)
    {
      goto LABEL_21;
    }

    v9 = swift_isUniquelyReferenced_nonNull_native();
    v39 = *&v1[v4];
    sub_1BD1DB308(v24, v26, v17, v19, v9);

    *&v1[v4] = v39;
    v7 = v15;
LABEL_5:
    swift_endAccess();
LABEL_6:
    ++v8;

    if (v38 == v8)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);

  __break(1u);
  return result;
}

id sub_1BD2F64C8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BD2F6568(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1BD5F0648(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1BD2F6650(v6);
  return sub_1BE0538D4();
}

void sub_1BD2F65E4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BD5ED740(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_1BD2F6764(v4);
  *a1 = v2;
}

void sub_1BD2F6650(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BE053B14();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1BD0E5E8C(0, &qword_1EBD45650);
        v6 = sub_1BE0527B4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1BD2F6DB8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BD2F686C(0, v2, 1, a1);
  }
}

void sub_1BD2F6764(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BE053B14();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416B0);
        v5 = sub_1BE0527B4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1BD2F7628(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BD2F6A8C(0, v2, 1, a1);
  }
}

void sub_1BD2F686C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = sub_1BE04AF64();
  MEMORY[0x1EEE9AC00](v37, v8);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v31 - v13;
  v32 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v38 = *a4;
    v16 = v38 + 8 * a3 - 8;
    v17 = a1 - a3;
LABEL_5:
    v34 = v16;
    v35 = a3;
    v18 = *(v38 + 8 * a3);
    v33 = v17;
    v19 = v17;
    while (1)
    {
      v20 = *v16;
      v21 = v18;
      v22 = v20;
      v23 = [v21 openingDate];
      sub_1BE04AEE4();

      v24 = [v22 openingDate];
      v25 = v36;
      sub_1BE04AEE4();

      LOBYTE(v24) = sub_1BE04AE74();
      v26 = *v15;
      v27 = v25;
      v28 = v37;
      (*v15)(v27, v37);
      v26(v14, v28);

      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v16 = v34 + 8;
        v17 = v33 - 1;
        if (v35 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v29 = *v16;
      v18 = *(v16 + 8);
      *v16 = v18;
      *(v16 + 8) = v29;
      v16 -= 8;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BD2F6A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v42 = sub_1BE04AF64();
  MEMORY[0x1EEE9AC00](v42, v8);
  v41 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v40 = &v34 - v13;
  v35 = a2;
  if (a3 == a2)
  {
    return;
  }

  v14 = *a4;
  v39 = (v12 + 8);
  v43 = v14;
  v15 = (v14 + 8 * a3 - 8);
  v16 = a1 - a3;
LABEL_6:
  v37 = v15;
  v38 = a3;
  v17 = *(v43 + 8 * a3);
  v36 = v16;
  v18 = v16;
  while (1)
  {
    v19 = *v15;
    if (v17 >> 62)
    {
      if (!sub_1BE053704())
      {
        goto LABEL_5;
      }
    }

    else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    if ((v17 & 0xC000000000000001) == 0)
    {
      break;
    }

    sub_1BE048C84();
    sub_1BE048C84();
    v21 = MEMORY[0x1BFB40900](0, v17);
LABEL_12:
    v22 = v21;
    if (v19 >> 62)
    {
      if (!sub_1BE053704())
      {
LABEL_4:

LABEL_5:
        a3 = v38 + 1;
        v15 = v37 + 1;
        v16 = v36 - 1;
        if (v38 + 1 == v35)
        {
          return;
        }

        goto LABEL_6;
      }
    }

    else if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    v44 = v18;
    if ((v19 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x1BFB40900](0, v19);
    }

    else
    {
      if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v23 = *(v19 + 32);
    }

    v24 = v23;
    v25 = [v22 closingDate];
    v26 = v40;
    sub_1BE04AEE4();

    v27 = [v24 closingDate];
    v28 = v41;
    sub_1BE04AEE4();

    LOBYTE(v27) = sub_1BE04AE74();
    v29 = *v39;
    v30 = v42;
    (*v39)(v28, v42);
    v29(v26, v30);

    v31 = v44;
    if (v27)
    {
      if (!v43)
      {
        goto LABEL_30;
      }

      v32 = *v15;
      v17 = v15[1];
      *v15 = v17;
      v15[1] = v32;
      --v15;
      v33 = __CFADD__(v31, 1);
      v18 = v31 + 1;
      if (!v33)
      {
        continue;
      }
    }

    goto LABEL_5;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v17 + 32);
    sub_1BE048C84();
    sub_1BE048C84();
    v21 = v20;
    goto LABEL_12;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1BD2F6DB8(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v118 = a1;
  v127 = sub_1BE04AF64();
  MEMORY[0x1EEE9AC00](v127, v9);
  v126 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v125 = &v112 - v14;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_127;
    }

    a4 = v17;
    v18 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = a4;
    }

    else
    {
LABEL_121:
      v107 = sub_1BD5ED6C8(a4);
    }

    v128 = v107;
    v108 = *(v107 + 2);
    if (v108 >= 2)
    {
      while (*v18)
      {
        a4 = *&v107[16 * v108];
        v109 = v107;
        v110 = *&v107[16 * v108 + 24];
        sub_1BD2F8060((*v18 + 8 * a4), (*v18 + 8 * *&v107[16 * v108 + 16]), (*v18 + 8 * v110), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v110 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_1BD5ED6C8(v109);
        }

        if (v108 - 2 >= *(v109 + 2))
        {
          goto LABEL_115;
        }

        v111 = &v109[16 * v108];
        *v111 = a4;
        v111[1] = v110;
        v128 = v109;
        sub_1BD5ED63C(v108 - 1);
        v107 = v128;
        v108 = *(v128 + 2);
        if (v108 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v16 = 0;
  v124 = (v13 + 8);
  v17 = MEMORY[0x1E69E7CC0];
  v117 = a4;
  v113 = a3;
  while (1)
  {
    v18 = v16++;
    if (v16 < v15)
    {
      v122 = v15;
      v115 = v17;
      v116 = v6;
      v19 = *a3;
      v20 = *(*a3 + 8 * v16);
      v121 = 8 * v18;
      v21 = (v19 + 8 * v18);
      v22 = *v21;
      v5 = (v21 + 2);
      v23 = v20;
      v24 = v22;
      v25 = [v23 openingDate];
      v26 = v125;
      sub_1BE04AEE4();

      v27 = [v24 openingDate];
      v28 = v126;
      sub_1BE04AEE4();

      LODWORD(v123) = sub_1BE04AE74();
      v29 = *v124;
      v30 = v127;
      (*v124)(v28, v127);
      v29(v26, v30);

      v114 = v18;
      v31 = (v18 + 2);
      while (1)
      {
        v16 = v122;
        if (v122 == v31)
        {
          break;
        }

        v32 = *(v5 - 8);
        v33 = *v5;
        v34 = v32;
        v35 = [v33 openingDate];
        v36 = v125;
        sub_1BE04AEE4();

        v37 = [v34 openingDate];
        v38 = v126;
        sub_1BE04AEE4();

        LODWORD(v37) = sub_1BE04AE74() & 1;
        v39 = v38;
        v40 = v127;
        v29(v39, v127);
        v29(v36, v40);

        ++v31;
        v5 += 8;
        if ((v123 & 1) != v37)
        {
          v16 = (v31 - 1);
          break;
        }
      }

      v17 = v115;
      v6 = v116;
      a4 = v117;
      v18 = v114;
      v41 = v121;
      if (v123)
      {
        if (v16 < v114)
        {
          goto LABEL_118;
        }

        a3 = v113;
        if (v114 < v16)
        {
          v42 = 8 * v16 - 8;
          v43 = v16;
          v44 = v114;
          do
          {
            if (v44 != --v43)
            {
              v46 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v45 = *(v46 + v41);
              *(v46 + v41) = *(v46 + v42);
              *(v46 + v42) = v45;
            }

            v44 = (v44 + 1);
            v42 -= 8;
            v41 += 8;
          }

          while (v44 < v43);
        }
      }

      else
      {
        a3 = v113;
      }
    }

    v47 = a3[1];
    if (v16 < v47)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_117;
      }

      if (v16 - v18 < a4)
      {
        v48 = (v18 + a4);
        if (__OFADD__(v18, a4))
        {
          goto LABEL_119;
        }

        if (v48 >= v47)
        {
          v48 = a3[1];
        }

        if (v48 < v18)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v16 != v48)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v16 < v18)
    {
      goto LABEL_116;
    }

    v63 = v17;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v17 = v63;
    }

    else
    {
      v17 = sub_1BD1D7844(0, *(v63 + 2) + 1, 1, v63);
    }

    a4 = *(v17 + 2);
    v64 = *(v17 + 3);
    v5 = a4 + 1;
    if (a4 >= v64 >> 1)
    {
      v17 = sub_1BD1D7844((v64 > 1), a4 + 1, 1, v17);
    }

    *(v17 + 2) = v5;
    v65 = &v17[16 * a4];
    *(v65 + 4) = v18;
    *(v65 + 5) = v16;
    v66 = *v118;
    if (!*v118)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v67 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v68 = *(v17 + 4);
          v69 = *(v17 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_56:
          if (v71)
          {
            goto LABEL_105;
          }

          v84 = &v17[16 * v5];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_108;
          }

          v90 = &v17[16 * v67 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_112;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v94 = &v17[16 * v5];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_70:
        if (v89)
        {
          goto LABEL_107;
        }

        v97 = &v17[16 * v67];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_110;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v67 - 1;
        if (v67 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v105 = v17;
        v5 = *&v17[16 * a4 + 32];
        v18 = *&v17[16 * v67 + 40];
        sub_1BD2F8060((*a3 + 8 * v5), (*a3 + 8 * *&v17[16 * v67 + 32]), (*a3 + 8 * v18), v66);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v18 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_1BD5ED6C8(v105);
        }

        if (a4 >= *(v105 + 2))
        {
          goto LABEL_102;
        }

        v106 = &v105[16 * a4];
        *(v106 + 4) = v5;
        *(v106 + 5) = v18;
        v128 = v105;
        a4 = &v128;
        sub_1BD5ED63C(v67);
        v17 = v128;
        v5 = *(v128 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v17[16 * v5 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_103;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_104;
      }

      v79 = &v17[16 * v5];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_106;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_109;
      }

      if (v83 >= v75)
      {
        v101 = &v17[16 * v67 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_113;
        }

        if (v70 < v104)
        {
          v67 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v15 = a3[1];
    a4 = v117;
    if (v16 >= v15)
    {
      goto LABEL_88;
    }
  }

  v115 = v17;
  v116 = v6;
  v123 = *a3;
  v49 = v123 + 8 * v16 - 8;
  v114 = v18;
  a4 = v18 - v16;
  v119 = v48;
LABEL_29:
  v121 = v49;
  v122 = v16;
  v50 = *(v123 + 8 * v16);
  v120 = a4;
  v51 = v49;
  while (1)
  {
    v52 = *v51;
    v5 = v50;
    v53 = v52;
    v54 = [v5 openingDate];
    v55 = v125;
    sub_1BE04AEE4();

    v56 = [v53 openingDate];
    v57 = v126;
    sub_1BE04AEE4();

    LOBYTE(v56) = sub_1BE04AE74();
    v58 = *v124;
    v59 = v57;
    v60 = v127;
    (*v124)(v59, v127);
    v58(v55, v60);

    if ((v56 & 1) == 0)
    {
LABEL_28:
      v16 = v122 + 1;
      v49 = v121 + 8;
      a4 = v120 - 1;
      if ((v122 + 1) != v119)
      {
        goto LABEL_29;
      }

      v16 = v119;
      v17 = v115;
      v6 = v116;
      a3 = v113;
      v18 = v114;
      goto LABEL_36;
    }

    if (!v123)
    {
      break;
    }

    v61 = *v51;
    v50 = *(v51 + 8);
    *v51 = v50;
    *(v51 + 8) = v61;
    v51 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

void sub_1BD2F7628(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v122 = sub_1BE04AF64();
  MEMORY[0x1EEE9AC00](v122, v10);
  v121 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v120 = &v109 - v15;
  v118 = a3;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_127:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_170;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_164:
      v18 = sub_1BD5ED6C8(v18);
    }

    v127 = v18;
    v105 = *(v18 + 2);
    if (v105 >= 2)
    {
      while (*v118)
      {
        v106 = *&v18[16 * v105];
        v107 = *&v18[16 * v105 + 24];
        sub_1BD2F84FC((*v118 + 8 * v106), (*v118 + 8 * *&v18[16 * v105 + 16]), (*v118 + 8 * v107), v5);
        if (v6)
        {
          goto LABEL_137;
        }

        if (v107 < v106)
        {
          goto LABEL_156;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1BD5ED6C8(v18);
        }

        if (v105 - 2 >= *(v18 + 2))
        {
          goto LABEL_157;
        }

        v108 = &v18[16 * v105];
        *v108 = v106;
        *(v108 + 1) = v107;
        v127 = v18;
        sub_1BD5ED63C(v105 - 1);
        v18 = v127;
        v105 = *(v127 + 2);
        if (v105 <= 1)
        {
          goto LABEL_137;
        }
      }

      goto LABEL_168;
    }

LABEL_137:

    return;
  }

  v111 = a4;
  v17 = 0;
  v119 = (v14 + 8);
  v18 = MEMORY[0x1E69E7CC0];
  v109 = a1;
  while (1)
  {
    v19 = v17++;
    v113 = v18;
    if (v17 >= v16)
    {
      goto LABEL_42;
    }

    v20 = *v118;
    v21 = *(*v118 + 8 * v17);
    v5 = *(*v118 + 8 * v19);
    v125 = v5;
    v126 = v21;
    sub_1BE048C84();
    sub_1BE048C84();
    LODWORD(v124) = sub_1BD2F4B7C(&v126, &v125);
    if (v6)
    {

      goto LABEL_137;
    }

    v17 = v19 + 2;
    if (v19 + 2 >= v16)
    {
      if ((v124 & 1) == 0)
      {
        goto LABEL_42;
      }

LABEL_30:
      if (v17 < v19)
      {
        goto LABEL_161;
      }

      goto LABEL_36;
    }

    v110 = v19;
    v22 = (v20 + 8 * v19 + 16);
    v112 = 0;
    v123 = v16;
    v23 = v124;
    do
    {
      v25 = *(v22 - 1);
      v24 = *v22;
      if (*v22 >> 62)
      {
        if (!sub_1BE053704())
        {
          goto LABEL_9;
        }
      }

      else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_9;
      }

      if ((v24 & 0xC000000000000001) != 0)
      {
        sub_1BE048C84();
        sub_1BE048C84();
        v27 = MEMORY[0x1BFB40900](0, v24);
      }

      else
      {
        if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_154;
        }

        v26 = *(v24 + 32);
        sub_1BE048C84();
        sub_1BE048C84();
        v27 = v26;
      }

      v5 = v27;
      if (v25 >> 62)
      {
        if (sub_1BE053704())
        {
          goto LABEL_18;
        }

LABEL_8:

LABEL_9:
        if ((v23 & 1) == 0)
        {
          goto LABEL_10;
        }

        a1 = v109;
        v19 = v110;
        if (v17 < v110)
        {
          goto LABEL_161;
        }

LABEL_36:
        if (v19 < v17)
        {
          v36 = 8 * v17 - 8;
          v37 = 8 * v19;
          v38 = v17;
          v39 = v19;
          do
          {
            if (v39 != --v38)
            {
              v40 = *v118;
              if (!*v118)
              {
                goto LABEL_167;
              }

              v41 = *(v40 + v37);
              *(v40 + v37) = *(v40 + v36);
              *(v40 + v36) = v41;
            }

            ++v39;
            v36 -= 8;
            v37 += 8;
          }

          while (v39 < v38);
        }

        goto LABEL_42;
      }

      if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }

LABEL_18:
      v117 = v17;
      if ((v25 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1BFB40900](0, v25);
      }

      else
      {
        if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_158;
        }

        v28 = *(v25 + 32);
      }

      v29 = v28;
      v30 = [v5 closingDate];
      v31 = v120;
      sub_1BE04AEE4();

      v32 = [v29 closingDate];
      v33 = v121;
      sub_1BE04AEE4();

      LOBYTE(v32) = sub_1BE04AE74();
      v5 = *v119;
      v34 = v122;
      (*v119)(v33, v122);
      (v5)(v31, v34);

      v35 = v124 ^ v32;
      v23 = v124;
      v6 = v112;
      v18 = v113;
      v17 = v117;
      v16 = v123;
      if (v35)
      {
        goto LABEL_33;
      }

LABEL_10:
      ++v17;
      ++v22;
    }

    while (v16 != v17);
    v17 = v16;
LABEL_33:
    a1 = v109;
    v19 = v110;
    if (v23)
    {
      goto LABEL_30;
    }

LABEL_42:
    v42 = v118[1];
    if (v17 >= v42)
    {
      goto LABEL_76;
    }

    if (__OFSUB__(v17, v19))
    {
      goto LABEL_160;
    }

    if (v17 - v19 >= v111)
    {
      goto LABEL_76;
    }

    v43 = v19 + v111;
    if (__OFADD__(v19, v111))
    {
      goto LABEL_162;
    }

    if (v43 >= v42)
    {
      v43 = v118[1];
    }

    if (v43 < v19)
    {
LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    if (v17 == v43)
    {
      goto LABEL_76;
    }

    v112 = v6;
    v123 = *v118;
    v6 = (v123 + 8 * v17 - 8);
    v110 = v19;
    v44 = v19 - v17;
    v114 = v43;
LABEL_53:
    v116 = v6;
    v117 = v17;
    v45 = *(v123 + 8 * v17);
    v115 = v44;
    v46 = v44;
LABEL_54:
    v47 = *v6;
    if (v45 >> 62)
    {
      if (!sub_1BE053704())
      {
        goto LABEL_52;
      }
    }

    else if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_52;
    }

    if ((v45 & 0xC000000000000001) == 0)
    {
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v48 = *(v45 + 32);
        sub_1BE048C84();
        sub_1BE048C84();
        v49 = v48;
        goto LABEL_59;
      }

      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
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
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
      goto LABEL_163;
    }

    sub_1BE048C84();
    sub_1BE048C84();
    v49 = MEMORY[0x1BFB40900](0, v45);
LABEL_59:
    v5 = v49;
    if (!(v47 >> 62))
    {
      break;
    }

    if (sub_1BE053704())
    {
      goto LABEL_61;
    }

LABEL_51:

LABEL_52:
    v17 = v117 + 1;
    v6 = v116 + 1;
    v44 = v115 - 1;
    if (v117 + 1 != v114)
    {
      goto LABEL_53;
    }

    v17 = v114;
    v6 = v112;
    v18 = v113;
    a1 = v109;
    v19 = v110;
LABEL_76:
    if (v17 < v19)
    {
      goto LABEL_159;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1BD1D7844(0, *(v18 + 2) + 1, 1, v18);
    }

    v60 = *(v18 + 2);
    v59 = *(v18 + 3);
    v61 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      v18 = sub_1BD1D7844((v59 > 1), v60 + 1, 1, v18);
    }

    *(v18 + 2) = v61;
    v62 = &v18[16 * v60];
    *(v62 + 4) = v19;
    *(v62 + 5) = v17;
    v63 = *a1;
    if (!*a1)
    {
      goto LABEL_169;
    }

    if (v60)
    {
      while (2)
      {
        v64 = v61 - 1;
        if (v61 >= 4)
        {
          v69 = &v18[16 * v61 + 32];
          v70 = *(v69 - 64);
          v71 = *(v69 - 56);
          v75 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          if (v75)
          {
            goto LABEL_144;
          }

          v74 = *(v69 - 48);
          v73 = *(v69 - 40);
          v75 = __OFSUB__(v73, v74);
          v67 = v73 - v74;
          v68 = v75;
          if (v75)
          {
            goto LABEL_145;
          }

          v76 = &v18[16 * v61];
          v78 = *v76;
          v77 = *(v76 + 1);
          v75 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v75)
          {
            goto LABEL_147;
          }

          v75 = __OFADD__(v67, v79);
          v80 = v67 + v79;
          if (v75)
          {
            goto LABEL_150;
          }

          if (v80 >= v72)
          {
            v98 = &v18[16 * v64 + 32];
            v100 = *v98;
            v99 = *(v98 + 1);
            v75 = __OFSUB__(v99, v100);
            v101 = v99 - v100;
            if (v75)
            {
              goto LABEL_155;
            }

            if (v67 < v101)
            {
              v64 = v61 - 2;
            }
          }

          else
          {
LABEL_96:
            if (v68)
            {
              goto LABEL_146;
            }

            v81 = &v18[16 * v61];
            v83 = *v81;
            v82 = *(v81 + 1);
            v84 = __OFSUB__(v82, v83);
            v85 = v82 - v83;
            v86 = v84;
            if (v84)
            {
              goto LABEL_149;
            }

            v87 = &v18[16 * v64 + 32];
            v89 = *v87;
            v88 = *(v87 + 1);
            v75 = __OFSUB__(v88, v89);
            v90 = v88 - v89;
            if (v75)
            {
              goto LABEL_152;
            }

            if (__OFADD__(v85, v90))
            {
              goto LABEL_153;
            }

            if (v85 + v90 < v67)
            {
              goto LABEL_110;
            }

            if (v67 < v90)
            {
              v64 = v61 - 2;
            }
          }
        }

        else
        {
          if (v61 == 3)
          {
            v65 = *(v18 + 4);
            v66 = *(v18 + 5);
            v75 = __OFSUB__(v66, v65);
            v67 = v66 - v65;
            v68 = v75;
            goto LABEL_96;
          }

          v91 = &v18[16 * v61];
          v93 = *v91;
          v92 = *(v91 + 1);
          v75 = __OFSUB__(v92, v93);
          v85 = v92 - v93;
          v86 = v75;
LABEL_110:
          if (v86)
          {
            goto LABEL_148;
          }

          v94 = &v18[16 * v64];
          v96 = *(v94 + 4);
          v95 = *(v94 + 5);
          v75 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v75)
          {
            goto LABEL_151;
          }

          if (v97 < v85)
          {
            break;
          }
        }

        v102 = v64 - 1;
        if (v64 - 1 >= v61)
        {
          goto LABEL_141;
        }

        if (!*v118)
        {
          goto LABEL_166;
        }

        v5 = *&v18[16 * v102 + 32];
        v103 = *&v18[16 * v64 + 40];
        sub_1BD2F84FC((*v118 + 8 * v5), (*v118 + 8 * *&v18[16 * v64 + 32]), (*v118 + 8 * v103), v63);
        if (v6)
        {
          goto LABEL_137;
        }

        if (v103 < v5)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1BD5ED6C8(v18);
        }

        if (v102 >= *(v18 + 2))
        {
          goto LABEL_143;
        }

        v104 = &v18[16 * v102];
        *(v104 + 4) = v5;
        *(v104 + 5) = v103;
        v127 = v18;
        sub_1BD5ED63C(v64);
        v18 = v127;
        v61 = *(v127 + 2);
        if (v61 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v16 = v118[1];
    if (v17 >= v16)
    {
      goto LABEL_127;
    }
  }

  if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_51;
  }

LABEL_61:
  v124 = v46;
  if ((v47 & 0xC000000000000001) != 0)
  {
    v50 = MEMORY[0x1BFB40900](0, v47);
  }

  else
  {
    if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_140;
    }

    v50 = *(v47 + 32);
  }

  v51 = v50;
  v52 = [v5 closingDate];
  v18 = v120;
  sub_1BE04AEE4();

  v53 = [v51 closingDate];
  v54 = v121;
  sub_1BE04AEE4();

  LOBYTE(v53) = sub_1BE04AE74();
  v5 = *v119;
  v55 = v122;
  (*v119)(v54, v122);
  (v5)(v18, v55);

  if ((v53 & 1) == 0)
  {
    goto LABEL_52;
  }

  v56 = v124;
  if (v123)
  {
    v57 = *v6;
    v45 = v6[1];
    *v6 = v45;
    v6[1] = v57;
    --v6;
    v58 = __CFADD__(v56, 1);
    v46 = v56 + 1;
    if (v58)
    {
      goto LABEL_52;
    }

    goto LABEL_54;
  }

  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
}

uint64_t sub_1BD2F8060(id *a1, id *a2, id *a3, void **a4)
{
  v58 = sub_1BE04AF64();
  v8 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v9);
  v57 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v56 = &v51 - v13;
  v14 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v14 = a2 - a1;
  }

  v15 = v14 >> 3;
  v16 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v16 = a3 - a2;
  }

  v17 = v16 >> 3;
  if (v15 >= v16 >> 3)
  {
    v59 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v17] <= a4)
    {
      memmove(a4, a2, 8 * v17);
    }

    v60 = &a4[v17];
    if (a3 - a2 >= 8 && a2 > v59)
    {
      v52 = (v8 + 8);
LABEL_27:
      v51 = a1;
      v32 = a1 - 1;
      v33 = a3 - 1;
      v34 = v60;
      v53 = a1 - 1;
      do
      {
        v35 = a4;
        v36 = v33;
        v37 = v33 + 1;
        v38 = *--v34;
        v39 = *v32;
        v40 = v38;
        v55 = v40;
        v41 = v39;
        v54 = v41;
        v42 = [v40 openingDate];
        v43 = v56;
        sub_1BE04AEE4();

        v44 = [v41 openingDate];
        v45 = v57;
        sub_1BE04AEE4();

        LOBYTE(v44) = sub_1BE04AE74();
        v46 = *v52;
        v47 = v45;
        v48 = v58;
        (*v52)(v47, v58);
        v46(v43, v48);

        if (v44)
        {
          a4 = v35;
          a3 = v36;
          v49 = v53;
          if (v37 != v51)
          {
            *v36 = *v53;
          }

          if (v60 <= v35 || (a1 = v49, v49 <= v59))
          {
            a1 = v49;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v35;
        if (v37 != v60)
        {
          *v36 = *v34;
        }

        v33 = v36 - 1;
        v60 = v34;
        v32 = v53;
      }

      while (v34 > v35);
      v60 = v34;
      a1 = v51;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v15] <= a4)
    {
      memmove(a4, a1, 8 * v15);
    }

    v60 = &a4[v15];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v55 = a3;
      v18 = (v8 + 8);
      while (1)
      {
        v59 = a1;
        v19 = *a4;
        v20 = *a2;
        v21 = v19;
        v22 = [v20 openingDate];
        v23 = v56;
        sub_1BE04AEE4();

        v24 = [v21 openingDate];
        v25 = v57;
        sub_1BE04AEE4();

        LOBYTE(v24) = sub_1BE04AE74();
        v26 = *v18;
        v27 = v25;
        v28 = v58;
        (*v18)(v27, v58);
        v26(v23, v28);

        if ((v24 & 1) == 0)
        {
          break;
        }

        v29 = a2;
        v30 = v59;
        v31 = v59 == a2++;
        if (!v31)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v30 + 1;
        if (a4 >= v60 || a2 >= v55)
        {
          goto LABEL_39;
        }
      }

      v29 = a4;
      v30 = v59;
      v31 = v59 == a4++;
      if (v31)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v30 = *v29;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v60 - a4 + (v60 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v60 - a4));
  }

  return 1;
}

uint64_t sub_1BD2F84FC(char *a1, char *a2, char *a3, char *a4)
{
  v59 = sub_1BE04AF64();
  v8 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v9);
  v58 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v57 = &v52 - v13;
  v14 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v14 = a2 - a1;
  }

  v15 = v14 >> 3;
  v16 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v16 = a3 - a2;
  }

  v17 = v16 >> 3;
  if (v15 < v16 >> 3)
  {
    if (a4 != a1 || &a1[8 * v15] <= a4)
    {
      memmove(a4, a1, 8 * v15);
    }

    v18 = &a4[8 * v15];
    if (a2 - a1 < 8 || a2 >= a3)
    {
      goto LABEL_68;
    }

    v19 = a2;
    v55 = (v8 + 8);
    v60 = v18;
    while (1)
    {
      v20 = *v19;
      v21 = *a4;
      if (*v19 >> 62)
      {
        result = sub_1BE053704();
        if (!result)
        {
          goto LABEL_30;
        }
      }

      else
      {
        result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_30;
        }
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        sub_1BE048C84();
        sub_1BE048C84();
        v24 = MEMORY[0x1BFB40900](0, v20);
      }

      else
      {
        if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_75;
        }

        v23 = *(v20 + 32);
        sub_1BE048C84();
        sub_1BE048C84();
        v24 = v23;
      }

      v25 = v24;
      if (v21 >> 62)
      {
        result = sub_1BE053704();
        if (!result)
        {
LABEL_29:

LABEL_30:
          v34 = a4;
          v35 = a1 == a4;
          a4 += 8;
          if (v35)
          {
            goto LABEL_32;
          }

LABEL_31:
          *a1 = *v34;
          goto LABEL_32;
        }
      }

      else
      {
        result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_29;
        }
      }

      v56 = v19;
      v62 = a4;
      v61 = a1;
      if ((v21 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1BFB40900](0, v21);
      }

      else
      {
        if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_76;
        }

        v26 = *(v21 + 32);
      }

      v27 = v26;
      v28 = [v25 closingDate];
      v29 = v57;
      sub_1BE04AEE4();

      v30 = [v27 closingDate];
      v31 = v58;
      sub_1BE04AEE4();

      LOBYTE(v30) = sub_1BE04AE74();
      v32 = *v55;
      v33 = v59;
      (*v55)(v31, v59);
      v32(v29, v33);

      v19 = v56;
      a4 = v62;
      v18 = v60;
      a1 = v61;
      if ((v30 & 1) == 0)
      {
        goto LABEL_30;
      }

      v34 = v56;
      v19 = v56 + 8;
      if (v61 != v56)
      {
        goto LABEL_31;
      }

LABEL_32:
      a1 += 8;
      if (a4 >= v18 || v19 >= a3)
      {
        goto LABEL_68;
      }
    }
  }

  if (a4 != a2 || &a2[8 * v17] <= a4)
  {
    memmove(a4, a2, 8 * v17);
  }

  v18 = &a4[8 * v17];
  if (a3 - a2 < 8 || a2 <= a1)
  {
    goto LABEL_70;
  }

  v53 = (v8 + 8);
  v62 = a4;
  v61 = a1;
  do
  {
    v56 = a2;
    a1 = a2 - 8;
    a3 -= 8;
    v36 = v18;
    v54 = a2 - 8;
    while (1)
    {
      v38 = *(v36 - 1);
      v36 -= 8;
      v37 = v38;
      v39 = *a1;
      if (v38 >> 62)
      {
        result = sub_1BE053704();
        if (!result)
        {
          goto LABEL_61;
        }
      }

      else
      {
        result = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_61;
        }
      }

      if ((v37 & 0xC000000000000001) != 0)
      {
        sub_1BE048C84();
        sub_1BE048C84();
        v41 = MEMORY[0x1BFB40900](0, v37);
      }

      else
      {
        if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
          return result;
        }

        v40 = *(v37 + 32);
        sub_1BE048C84();
        sub_1BE048C84();
        v41 = v40;
      }

      v42 = v41;
      if (v39 >> 62)
      {
        result = sub_1BE053704();
        if (!result)
        {
LABEL_60:

          goto LABEL_61;
        }
      }

      else
      {
        result = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_60;
        }
      }

      v60 = v18;
      v55 = a3;
      if ((v39 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x1BFB40900](0, v39);
      }

      else
      {
        if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v43 = *(v39 + 32);
      }

      v44 = v43;
      v45 = [v42 closingDate];
      v46 = v57;
      sub_1BE04AEE4();

      v47 = [v44 closingDate];
      v48 = v58;
      sub_1BE04AEE4();

      LOBYTE(v47) = sub_1BE04AE74();
      v49 = *v53;
      v50 = v59;
      (*v53)(v48, v59);
      v49(v46, v50);

      a4 = v62;
      v18 = v60;
      v51 = v61;
      a1 = v54;
      a3 = v55;
      if (v47)
      {
        break;
      }

LABEL_61:
      if (a3 + 8 != v18)
      {
        *a3 = *v36;
      }

      a3 -= 8;
      v18 = v36;
      if (v36 <= a4)
      {
        v18 = v36;
        a2 = v56;
        goto LABEL_70;
      }
    }

    if (v55 + 8 != v56)
    {
      *v55 = *v54;
    }

    if (v18 <= a4)
    {
      break;
    }

    a2 = a1;
  }

  while (a1 > v51);
LABEL_68:
  a2 = a1;
LABEL_70:
  if (a2 != a4 || a2 >= &a4[(v18 - a4 + (v18 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, a4, 8 * ((v18 - a4) / 8));
  }

  return 1;
}

uint64_t sub_1BD2F8B48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CurvedProgressBar.init(progress:tintColor:icon:rotateIconAlongPath:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *(a4 + 32) = 0x4034000000000000;
  *a4 = a5;
  *(a4 + 8) = result;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

double CurvedProgressBar.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v3;
  v10 = *(v1 + 32);
  v4 = swift_allocObject();
  v5 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v1 + 32);
  sub_1BD2F8E6C(v9, v8);
  v6 = sub_1BE051D94();
  result = *v9;
  *a1 = sub_1BD2F8E64;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = result;
  return result;
}

void *sub_1BD2F8D5C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1BE04E684();
  v5 = v4;
  sub_1BE04E684();
  v13[0] = 0x4010000000000000;
  *&v13[1] = v6 + -4.0;
  *&v13[2] = v5 + -4.0;
  *&v13[3] = v6 + -4.0;
  *&v13[4] = v5 * 0.5;
  v13[5] = 0;
  v7 = sub_1BE051CA4();
  v9 = v8;
  sub_1BD2F8EC0(v13, a1);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v15, __src, sizeof(v15));
  sub_1BD0DE19C(__dst, &v11, &qword_1EBD41720);
  sub_1BD0DE53C(v15, &qword_1EBD41720);
  *a2 = v7;
  a2[1] = v9;
  return memcpy(a2 + 2, __dst, 0x2E0uLL);
}

uint64_t sub_1BD2F8EC0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v5 = v4;
  v52 = v6;
  v7 = sub_1BE051584();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v46 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v5;
  sub_1BE050534();
  v59 = sub_1BE0513E4();
  sub_1BE04E3F4();
  v179 = v184;
  v180 = v185;
  LOBYTE(v181) = v186;
  v200[0] = v184;
  v200[1] = v185;
  v201 = v186;
  sub_1BD2FA37C(v200, v108);
  v10 = sub_1BE051CD4();
  v57 = v11;
  v58 = v10;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v53 = 0;
  v62 = 0;
  v63 = 0;
  v15 = 0;
  v60 = 0;
  v61 = 0;
  v16 = 0;
  v17 = *v3;
  if (*v3 < 1.0)
  {
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v12 = v187;
    v13 = v189;
    v14 = v191;
    v53 = v192;
    v18 = v5[2];
    v62 = v5[3];
    v63 = v18;
    v108[0] = v188;
    v90[0] = v190;
    v60 = v188;
    v61 = v190;
    v15 = sub_1BE0513E4();
    v16 = 1;
  }

  v54 = v16;
  v55 = v15;
  v56 = v14;
  v50 = v13;
  v51 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D0A8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BE0B6CA0;
  *(v19 + 32) = sub_1BE0513C4();
  *(v19 + 40) = sub_1BE0513D4();
  sub_1BE051EB4();
  sub_1BE051EC4();
  MEMORY[0x1BFB3EBB0](v19);
  sub_1BE04E874();
  v20 = sub_1BE051CD4();
  v22 = v21;
  v23 = sub_1BE051CD4();
  v25 = v24;
  *&v49 = v5;
  sub_1BD2F9C68(v3, v5, &v184, v108);
  v146 = *&v108[160];
  v147 = *&v108[176];
  v148 = *&v108[192];
  v142 = *&v108[96];
  v143 = *&v108[112];
  v145 = *&v108[144];
  v144 = *&v108[128];
  v138 = *&v108[32];
  v139 = *&v108[48];
  v141 = *&v108[80];
  v140 = *&v108[64];
  v137 = *&v108[16];
  v136 = *v108;
  v149[10] = *&v108[160];
  v149[11] = *&v108[176];
  v149[12] = *&v108[192];
  v149[6] = *&v108[96];
  v149[7] = *&v108[112];
  v149[9] = *&v108[144];
  v149[8] = *&v108[128];
  v149[2] = *&v108[32];
  v149[3] = *&v108[48];
  v149[5] = *&v108[80];
  v149[4] = *&v108[64];
  v149[1] = *&v108[16];
  v149[0] = *v108;
  sub_1BD0DE19C(&v136, v90, &qword_1EBD41728);
  sub_1BD0DE53C(v149, &qword_1EBD41728);
  v176 = v146;
  v177 = v147;
  v178 = v148;
  v172 = v142;
  v173 = v143;
  v175 = v145;
  v174 = v144;
  v168 = v138;
  v169 = v139;
  v171 = v141;
  v170 = v140;
  v167 = v137;
  v166 = v136;
  v162 = v146;
  v163 = v147;
  v164 = v148;
  v158 = v142;
  v159 = v143;
  v161 = v145;
  v160 = v144;
  v154 = v138;
  v155 = v139;
  v157 = v141;
  v156 = v140;
  v153 = v137;
  v152 = v136;
  *&v120[33] = v148;
  *&v120[27] = v145;
  *&v120[29] = v146;
  *&v120[31] = v147;
  *&v120[19] = v141;
  *&v120[21] = v142;
  *&v120[23] = v143;
  *&v120[25] = v144;
  *&v120[11] = v137;
  *&v120[13] = v138;
  *&v150 = v20;
  *(&v150 + 1) = v22;
  *&v151 = v23;
  *(&v151 + 1) = v25;
  *&v120[15] = v139;
  *&v120[17] = v140;
  *&v120[5] = v150;
  *&v120[7] = v151;
  *&v120[9] = v136;
  v165[0] = v20;
  v165[1] = v22;
  v165[2] = v23;
  v165[3] = v25;
  sub_1BD0DE19C(&v150, v108, &qword_1EBD41730);
  sub_1BD0DE53C(v165, &qword_1EBD41730);
  sub_1BE0513F4();
  v26 = sub_1BE051454();

  if (v17 <= 0.0)
  {
    sub_1BD2FA3D8(&v121);
  }

  else
  {
    v28 = v46;
    v27 = v47;
    v29 = v48;
    (*(v47 + 104))(v46, *MEMORY[0x1E6981630], v48);
    v30 = 0.0;
    v31 = sub_1BE0515E4();
    (*(v27 + 8))(v28, v29);
    sub_1BE051CD4();
    sub_1BE04EE54();
    *&v65[38] = v195;
    *&v65[54] = v196;
    *&v65[70] = v197;
    *&v65[86] = v198;
    *&v65[102] = v199;
    *&v65[6] = v193;
    *&v65[22] = v194;
    v90[0] = 1;
    if (*(v3 + 24))
    {
      v32 = fmax(fmin(v17, 0.99), 0.01);
      v30 = atan2((1.0 - v32 + 1.0 - v32) * (*(v49 + 40) - *(v49 + 8)) + (v32 + v32) * (*(v49 + 24) - *(v49 + 40)), (1.0 - v32 + 1.0 - v32) * (*(v49 + 32) - *v49) + (v32 + v32) * (*(v49 + 16) - *(v49 + 32)));
    }

    sub_1BE051EA4();
    v34 = v33;
    v36 = v35;
    v37 = sub_1BE051424();
    v38 = *(v3 + 8);
    sub_1BE048964();
    sub_1BE0513F4();
    v39 = sub_1BE051454();

    *&v108[82] = *&v65[64];
    *&v108[98] = *&v65[80];
    *&v108[114] = *&v65[96];
    *&v108[18] = *v65;
    *&v108[34] = *&v65[16];
    *&v108[50] = *&v65[32];
    *v108 = v31;
    *&v108[8] = 0;
    v108[16] = 1;
    v108[17] = 0;
    *&v108[128] = *&v65[110];
    *&v108[66] = *&v65[48];
    *&v108[136] = v30;
    *&v108[144] = v34;
    *&v108[152] = v36;
    *&v108[160] = v37;
    *&v108[168] = v38;
    *&v108[184] = xmmword_1BE0CACA0;
    *&v108[176] = v39;
    *&v108[200] = 0x4000000000000000;
    *&v108[208] = vaddq_f64(vaddq_f64(vmulq_n_f64(*v49, (1.0 - v17) * (1.0 - v17)), vmulq_n_f64(*(v49 + 32), v17 * (1.0 - v17 + 1.0 - v17))), vmulq_n_f64(*(v49 + 16), v17 * v17));
    *&v108[224] = 0x4000000000000000;
    PKEdgeInsetsMake(v108, v40);
    v133 = *&v108[192];
    v134 = *&v108[208];
    v135 = *&v108[224];
    v129 = *&v108[128];
    v130 = *&v108[144];
    v132 = *&v108[176];
    v131 = *&v108[160];
    v125 = *&v108[64];
    v126 = *&v108[80];
    v128 = *&v108[112];
    v127 = *&v108[96];
    v121 = *v108;
    v122 = *&v108[16];
    v124 = *&v108[48];
    v123 = *&v108[32];
  }

  v79 = v133;
  v80 = v134;
  v81 = v135;
  v75 = v129;
  v76 = v130;
  v78 = v132;
  v77 = v131;
  v71 = v125;
  v72 = v126;
  v74 = v128;
  v73 = v127;
  v67 = v121;
  v68 = v122;
  v70 = v124;
  v69 = v123;
  v82[2] = v181;
  v82[3] = v182;
  v82[4] = v183;
  v82[1] = v180;
  v82[0] = v179;
  *&v83 = v59;
  WORD4(v83) = 256;
  *(&v83 + 10) = v202;
  HIWORD(v83) = v203;
  *&v84 = v58;
  *(&v84 + 1) = v57;
  v66[2] = v181;
  v66[3] = v182;
  v66[0] = v179;
  v66[1] = v180;
  v66[4] = v183;
  v66[5] = v83;
  v41 = v53;
  *&v85 = v54;
  v43 = v50;
  v42 = v51;
  *(&v85 + 1) = v51;
  *&v86 = v60;
  *(&v86 + 1) = v50;
  *&v87 = v61;
  *(&v87 + 1) = v56;
  *&v88 = v53;
  *(&v88 + 1) = v63;
  *&v89 = v62;
  *(&v89 + 1) = v55;
  v66[6] = v84;
  v66[7] = v85;
  v66[10] = v88;
  v66[11] = v89;
  v66[8] = v86;
  v66[9] = v87;
  memcpy(v90, v120, 0x118uLL);
  v49 = xmmword_1BE0CACB0;
  *&v90[288] = xmmword_1BE0CACB0;
  *&v90[280] = v26;
  *&v90[304] = 0x4000000000000000;
  memcpy(&v66[12], v90, 0x138uLL);
  v103 = v133;
  v104 = v134;
  v105 = v135;
  v99 = v129;
  v100 = v130;
  v102 = v132;
  v101 = v131;
  v95 = v125;
  v96 = v126;
  v98 = v128;
  v97 = v127;
  v91 = v121;
  v92 = v122;
  v94 = v124;
  v93 = v123;
  sub_1BD0DE19C(v82, v108, &qword_1EBD41738);
  sub_1BD0DE19C(&v85, v108, &qword_1EBD41740);
  sub_1BD0DE19C(v90, v108, &qword_1EBD41748);
  sub_1BD0DE19C(&v91, v108, &qword_1EBD41750);
  sub_1BD2FA400(&v184);
  *(&v66[43] + 8) = v103;
  *(&v66[44] + 8) = v104;
  *(&v66[39] + 8) = v99;
  *(&v66[40] + 8) = v100;
  *(&v66[41] + 8) = v101;
  *(&v66[42] + 8) = v102;
  *(&v66[35] + 8) = v95;
  *(&v66[36] + 8) = v96;
  *(&v66[37] + 8) = v97;
  *(&v66[38] + 8) = v98;
  *(&v66[31] + 8) = v91;
  *(&v66[32] + 8) = v92;
  *(&v66[33] + 8) = v93;
  *(&v66[34] + 8) = v94;
  *(&v66[45] + 1) = v105;
  memcpy(v52, v66, 0x2E0uLL);
  v106[12] = v79;
  v106[13] = v80;
  v107 = v81;
  v106[8] = v75;
  v106[9] = v76;
  v106[11] = v78;
  v106[10] = v77;
  v106[4] = v71;
  v106[5] = v72;
  v106[7] = v74;
  v106[6] = v73;
  v106[0] = v67;
  v106[1] = v68;
  v106[3] = v70;
  v106[2] = v69;
  sub_1BD0DE53C(v106, &qword_1EBD41750);
  memcpy(v108, v120, sizeof(v108));
  v110 = v49;
  v109 = v26;
  v111 = 0x4000000000000000;
  sub_1BD0DE53C(v108, &qword_1EBD41748);
  v112[0] = v54;
  v112[1] = v42;
  v112[2] = v60;
  v112[3] = v43;
  v112[4] = v61;
  v112[5] = v56;
  v112[6] = v41;
  v112[7] = v63;
  v112[8] = v62;
  v112[9] = v55;
  sub_1BD0DE53C(v112, &qword_1EBD41740);
  v113[2] = v181;
  v113[3] = v182;
  v113[4] = v183;
  v113[1] = v180;
  v113[0] = v179;
  v114 = v59;
  v115 = 256;
  v116 = v202;
  v117 = v203;
  v118 = v58;
  v119 = v57;
  return sub_1BD0DE53C(v113, &qword_1EBD41738);
}

uint64_t sub_1BD2F9C68@<X0>(double *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = *(a3 + 32);
  v11 = *a1;
  if (*a1 <= 0.0)
  {
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
    v29 = 0;
    v30 = 0;
    v26 = 0;
    v27 = 0;
    v13 = 0;
    v28 = 2;
  }

  else
  {
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v33 = v58;
    v34 = v56;
    v31 = v61;
    v32 = v60;
    v30 = *a2;
    v28 = 0;
    v29 = a2[1];
    LOBYTE(v45[0]) = v57;
    LOBYTE(v39) = v59;
    v13 = v57;
    v26 = v59;
    v27 = 0x3FF0000000000000;
  }

  v14 = sub_1BE051424();
  sub_1BE04E3F4();
  v15 = *(a3 + 1);
  v62[0] = *a3;
  v62[1] = v15;
  v63 = *(a3 + 32);
  sub_1BD2FA37C(v62, v45);
  v16 = sub_1BE051CD4();
  *&v39 = v6;
  *(&v39 + 1) = v7;
  *&v40 = v8;
  *(&v40 + 1) = v9;
  LOBYTE(v41) = v10;
  *(&v41 + 1) = 0;
  *v42 = v11;
  v17 = v36;
  *&v42[8] = v36;
  v18 = v37;
  *&v42[24] = v37;
  v19 = v38;
  *&v42[40] = v38;
  *&v43 = v14;
  WORD4(v43) = 256;
  *&v44 = v16;
  *(&v44 + 1) = v20;
  *a4 = v28;
  *(a4 + 8) = v34;
  *(a4 + 16) = v13;
  *(a4 + 24) = v33;
  *(a4 + 32) = v26;
  *(a4 + 40) = v32;
  *(a4 + 48) = v31;
  *(a4 + 56) = v30;
  *(a4 + 64) = v29;
  *(a4 + 72) = v27;
  v21 = v40;
  *(a4 + 80) = v39;
  *(a4 + 96) = v21;
  v22 = *v42;
  *(a4 + 112) = v41;
  *(a4 + 128) = v22;
  v23 = v44;
  *(a4 + 176) = v43;
  *(a4 + 192) = v23;
  v24 = *&v42[32];
  *(a4 + 144) = *&v42[16];
  *(a4 + 160) = v24;
  v45[0] = v6;
  v45[1] = v7;
  v45[2] = v8;
  v45[3] = v9;
  v46 = v10;
  v47 = 0;
  v48 = v11;
  v50 = v18;
  v49 = v17;
  v51 = v19;
  v52 = v14;
  v53 = 256;
  v54 = v16;
  v55 = v20;
  sub_1BD0DE19C(&v39, v35, &qword_1EBD41758);
  return sub_1BD0DE53C(v45, &qword_1EBD41758);
}

double sub_1BD2F9EA4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v3;
  v10 = *(v1 + 32);
  v4 = swift_allocObject();
  v5 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v1 + 32);
  sub_1BD2F8E6C(v9, v8);
  v6 = sub_1BE051D94();
  result = *v9;
  *a1 = sub_1BD2FA454;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1BD2F9F40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1BD2F9F88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD2F9FE0()
{
  result = qword_1EBD416E8;
  if (!qword_1EBD416E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD416F0);
    sub_1BD0DE4F4(&qword_1EBD416F8, &qword_1EBD41700);
    sub_1BD0DE4F4(&unk_1EBD36770, &qword_1EBD41708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD416E8);
  }

  return result;
}

uint64_t sub_1BD2FA0F0@<X0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  if (a1)
  {
    sub_1BE04E3F4();
    v3 = v26;
    v4 = v27;
    v5 = v28;
    v6 = v29;
    v7 = v30;
    v8 = sub_1BE0501D4();
    sub_1BE04E1F4();
    LOBYTE(v24[0]) = 0;
    v13 = v8;
    v14 = 0x3FD999999999999ALL;
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v14 = 0;
    v13 = 0;
    v4 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  *&v19 = v3;
  *(&v19 + 1) = v4;
  *&v20 = v5;
  *(&v20 + 1) = v6;
  *&v21 = v7;
  *(&v21 + 1) = v14;
  *&v22 = v13;
  *(&v22 + 1) = v9;
  *v23 = v10;
  *&v23[8] = v11;
  *&v23[16] = v12;
  v23[24] = 0;
  v15 = v22;
  a2[2] = v21;
  a2[3] = v15;
  a2[4] = *v23;
  *(a2 + 73) = *&v23[9];
  v16 = v20;
  *a2 = v19;
  a2[1] = v16;
  v24[0] = v3;
  v24[1] = v4;
  v24[2] = v5;
  v24[3] = v6;
  v24[4] = v7;
  v24[5] = v14;
  v24[6] = v13;
  v24[7] = v9;
  v24[8] = v10;
  v24[9] = v11;
  v24[10] = v12;
  v25 = 0;
  sub_1BD0DE19C(&v19, v18, &qword_1EBD41718);
  return sub_1BD0DE53C(v24, &qword_1EBD41718);
}

double sub_1BD2FA24C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1BE051CD4();
  v6 = v5;
  sub_1BD2FA0F0(v3, &v11);
  v18 = v13;
  v19 = v14;
  v20[0] = v15[0];
  *(v20 + 9) = *(v15 + 9);
  v16 = v11;
  v17 = v12;
  *&v22[9] = *(v15 + 9);
  v21[2] = v13;
  v21[3] = v14;
  *v22 = v15[0];
  v21[0] = v11;
  v21[1] = v12;
  sub_1BD0DE19C(&v16, &v10, &qword_1EBD41710);
  sub_1BD0DE53C(v21, &qword_1EBD41710);
  *a1 = v4;
  *(a1 + 8) = v6;
  v7 = v19;
  *(a1 + 48) = v18;
  *(a1 + 64) = v7;
  *(a1 + 80) = v20[0];
  *(a1 + 89) = *(v20 + 9);
  result = *&v16;
  v9 = v17;
  *(a1 + 16) = v16;
  *(a1 + 32) = v9;
  return result;
}

uint64_t objectdestroyTm_24()
{

  return swift_deallocObject();
}

double sub_1BD2FA3D8(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1BD2FA458()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

void (*sub_1BD2FA4CC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BE04D8A4();
  return sub_1BD1D227C;
}

uint64_t sub_1BD2FA5D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD2FA644()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416E0);
  v2 = *(v1 - 8);
  v45 = v1;
  v46 = v2;
  MEMORY[0x1EEE9AC00](v1, v3);
  v44 = &v39 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  v6 = MEMORY[0x1EEE9AC00](v43, v5);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD417F8);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v39 - v19;
  v21 = OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel__userInfo;
  v47 = 0;
  v48 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD417E8);
  sub_1BE04D874();
  (*(v17 + 32))(v0 + v21, v20, v16);
  v22 = OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel__loading;
  LOBYTE(v47) = 0;
  sub_1BE04D874();
  v23 = *(v12 + 32);
  v23(v0 + v22, v15, v11);
  v24 = OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel__updating;
  LOBYTE(v47) = 0;
  sub_1BE04D874();
  v23(v0 + v24, v15, v11);
  v25 = OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel__deletingBeneficiary;
  LOBYTE(v47) = 0;
  sub_1BE04D874();
  v40 = v0;
  v23(v0 + v25, v15, v11);
  v41 = OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel__fetchError;
  v26 = type metadata accessor for FeatureError(0);
  v27 = *(*(v26 - 8) + 56);
  v27(v10, 1, 1, v26);
  v28 = v10;
  v29 = v10;
  v30 = v42;
  sub_1BD23C2BC(v28, v42);
  v31 = v44;
  sub_1BE04D874();
  sub_1BD23C32C(v29);
  v32 = *(v46 + 32);
  v46 += 32;
  v33 = v45;
  v32(v0 + v41, v31, v45);
  v34 = OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel__updateError;
  v27(v29, 1, 1, v26);
  sub_1BD23C2BC(v29, v30);
  sub_1BE04D874();
  sub_1BD23C32C(v29);
  v35 = v40;
  v32(v40 + v34, v31, v33);
  *(v35 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account) = 0;
  v36 = OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_paymentWebService;
  *(v35 + v36) = [objc_opt_self() sharedService];
  v37 = OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_accountService;
  *(v35 + v37) = [objc_opt_self() sharedInstance];
  *(v35 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_updateUserInfoRequest) = 0;
  *(v35 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_assessmentManager) = 0;
  *(v35 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_didFetchODIAssessment) = 0;
  *(v35 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_didFetchDeviceMetadata) = 0;
  return v35;
}

uint64_t sub_1BD2FAB2C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_assessmentManager;
  [*(v0 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_assessmentManager) provideSessionFeedbackDiscarded];
  v2 = OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel__userInfo;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD417F8);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel__loading;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel__updating, v5);
  v6(v0 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel__deletingBeneficiary, v5);
  v7 = OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel__fetchError;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416E0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel__updateError, v8);

  return v0;
}