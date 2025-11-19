uint64_t sub_21CB31C2C@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = sub_21CB81024();
  v54 = *(v2 - 8);
  v3 = *(v54 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  v55 = *(type metadata accessor for PMSignInWithAppleAccountDetailsView() + 52);
  v56 = v1;
  PMAccount.signInWithAppleAccount.getter(v19);
  v20 = type metadata accessor for PMSignInWithAppleAccount();
  v21 = *(*(v20 - 8) + 48);
  if (v21(v19, 1, v20) == 1)
  {
    sub_21C6EA794(v19, &qword_27CDEB2A8, &qword_21CBA1670);
LABEL_5:
    v25 = 1;
    v27 = v58;
    v26 = v59;
    return (*(v57 + 56))(v26, v25, 1, v27);
  }

  v22 = &v19[*(v20 + 56)];
  v23 = *(v22 + 1);
  v53 = *v22;

  sub_21C719900(v19, type metadata accessor for PMSignInWithAppleAccount);
  if (!v23)
  {
    goto LABEL_5;
  }

  [objc_opt_self() isAppleAccountBrandingEnabled];
  v24 = (v54 + 8);
  v52 = v23;
  sub_21CB81014();
  v51 = sub_21CB81004();
  v54 = v28;
  v29 = *v24;
  (*v24)(v8, v2);
  sub_21CB81014();
  sub_21CB81014();
  v30 = sub_21CB80FF4();
  v49 = v31;
  v50 = v30;
  v29(v5, v2);
  v29(v8, v2);
  PMAccount.signInWithAppleAccount.getter(v16);
  if (v21(v16, 1, v20) == 1)
  {
    sub_21C6EA794(v16, &qword_27CDEB2A8, &qword_21CBA1670);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v34 = &v16[*(v20 + 52)];
    v32 = *v34;
    v33 = *(v34 + 1);

    sub_21C719900(v16, type metadata accessor for PMSignInWithAppleAccount);
  }

  v27 = v58;
  v60 = 0;
  sub_21CB84D44();
  v35 = v62;
  v12[88] = v61;
  *(v12 + 12) = v35;
  v60 = 0;
  sub_21CB84D44();
  v36 = v62;
  v12[104] = v61;
  *(v12 + 14) = v36;
  v60 = 0;
  sub_21CB84D44();
  v37 = v62;
  v12[120] = v61;
  *(v12 + 16) = v37;
  v60 = 0;
  sub_21CB84D44();
  v38 = v62;
  v12[136] = v61;
  *(v12 + 18) = v38;
  *(v12 + 19) = swift_getKeyPath();
  *(v12 + 20) = 0;
  v12[168] = 0;
  *(v12 + 22) = swift_getKeyPath();
  v12[184] = 0;
  v39 = v27[29];
  *&v12[v39] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v40 = &v12[v27[30]];
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21CB3917C(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  *v40 = sub_21CB823C4();
  v40[1] = v41;
  v42 = v27[31];
  type metadata accessor for PMWiFiDetailsModel();
  sub_21CB3917C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB821F4();
  *&v12[v27[32]] = 0;
  v43 = &v12[v27[33]];
  *v43 = 0x707954656772616CLL;
  *(v43 + 1) = 0xE900000000000065;
  v44 = v54;
  *v12 = v51;
  *(v12 + 1) = v44;
  v45 = v49;
  *(v12 + 2) = v50;
  *(v12 + 3) = v45;
  v46 = v52;
  *(v12 + 4) = v53;
  *(v12 + 5) = v46;
  *(v12 + 6) = 0;
  v12[56] = 1;
  *(v12 + 57) = 0;
  *(v12 + 8) = v32;
  *(v12 + 9) = v33;
  *(v12 + 20) = 257;
  *(v12 + 42) = 256;
  v12[86] = 0;
  v47 = v59;
  sub_21C716934(v12, v59, &qword_27CDF1B78, &qword_21CBBE2D0);
  v26 = v47;
  v25 = 0;
  return (*(v57 + 56))(v26, v25, 1, v27);
}

uint64_t sub_21CB322CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  sub_21CB81014();
  sub_21CB81014();
  v32 = sub_21CB80FF4();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v9, v5);
  v15(v12, v5);
  sub_21CB81014();
  sub_21CB81014();
  v16 = sub_21CB80FF4();
  v18 = v17;
  v15(v9, v5);
  v15(v12, v5);
  v34 = 0;
  sub_21CB84D44();
  v19 = v36;
  *(a3 + 88) = v35;
  *(a3 + 96) = v19;
  v34 = 0;
  sub_21CB84D44();
  v20 = v36;
  *(a3 + 104) = v35;
  *(a3 + 112) = v20;
  v34 = 0;
  sub_21CB84D44();
  v21 = v36;
  *(a3 + 120) = v35;
  *(a3 + 128) = v21;
  v34 = 0;
  sub_21CB84D44();
  v22 = v36;
  *(a3 + 136) = v35;
  *(a3 + 144) = v22;
  *(a3 + 152) = swift_getKeyPath();
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  *(a3 + 176) = swift_getKeyPath();
  *(a3 + 184) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  v24 = v23[29];
  *(a3 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v25 = (a3 + v23[30]);
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21CB3917C(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  *v25 = sub_21CB823C4();
  v25[1] = v26;
  v27 = v23[31];
  type metadata accessor for PMWiFiDetailsModel();
  sub_21CB3917C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB821F4();
  *(a3 + v23[32]) = 0;
  v28 = (a3 + v23[33]);
  *v28 = 0x707954656772616CLL;
  v28[1] = 0xE900000000000065;
  v29 = v33;
  *a3 = v32;
  *(a3 + 8) = v14;
  *(a3 + 16) = v16;
  *(a3 + 24) = v18;
  *(a3 + 32) = v29;
  *(a3 + 40) = a2;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  *(a3 + 57) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 257;
  *(a3 + 84) = 256;
  *(a3 + 86) = 0;
}

uint64_t sub_21CB326FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  sub_21CB81014();
  sub_21CB81014();
  v32 = sub_21CB80FF4();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v9, v5);
  v15(v12, v5);
  sub_21CB81014();
  sub_21CB81014();
  v16 = sub_21CB80FF4();
  v18 = v17;
  v15(v9, v5);
  v15(v12, v5);
  v34 = 0;
  sub_21CB84D44();
  v19 = v36;
  *(a3 + 88) = v35;
  *(a3 + 96) = v19;
  v34 = 0;
  sub_21CB84D44();
  v20 = v36;
  *(a3 + 104) = v35;
  *(a3 + 112) = v20;
  v34 = 0;
  sub_21CB84D44();
  v21 = v36;
  *(a3 + 120) = v35;
  *(a3 + 128) = v21;
  v34 = 0;
  sub_21CB84D44();
  v22 = v36;
  *(a3 + 136) = v35;
  *(a3 + 144) = v22;
  *(a3 + 152) = swift_getKeyPath();
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  *(a3 + 176) = swift_getKeyPath();
  *(a3 + 184) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  v24 = v23[29];
  *(a3 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v25 = (a3 + v23[30]);
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21CB3917C(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  *v25 = sub_21CB823C4();
  v25[1] = v26;
  v27 = v23[31];
  type metadata accessor for PMWiFiDetailsModel();
  sub_21CB3917C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB821F4();
  *(a3 + v23[32]) = 0;
  v28 = (a3 + v23[33]);
  *v28 = 0x707954656772616CLL;
  v28[1] = 0xE900000000000065;
  v29 = v33;
  *a3 = v32;
  *(a3 + 8) = v14;
  *(a3 + 16) = v16;
  *(a3 + 24) = v18;
  *(a3 + 32) = v29;
  *(a3 + 40) = a2;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  *(a3 + 57) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 257;
  *(a3 + 84) = 256;
  *(a3 + 86) = 0;
}

uint64_t sub_21CB32B20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF94F8, &qword_21CBCB7B0);
  v149 = *(v4 - 8);
  v150 = v4;
  v5 = *(v149 + 64);
  MEMORY[0x28223BE20](v4);
  v146 = &v119 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9500, &unk_21CBCB7B8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v145 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v144 = &v119 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED6E0, &qword_21CBBE3A0);
  v142 = *(v12 - 8);
  v143 = v12;
  v13 = *(v142 + 64);
  MEMORY[0x28223BE20](v12);
  v141 = &v119 - v14;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9508, &unk_21CBCB7C8);
  v15 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v139 = &v119 - v16;
  v122 = type metadata accessor for PMAccount.MockData(0);
  v17 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v123 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v132 = *(v133 - 8);
  v19 = *(v132 + 64);
  MEMORY[0x28223BE20](v133);
  v129 = &v119 - v20;
  v21 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v131 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_21CB81024();
  v125 = *(v126 - 8);
  v24 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v124 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v119 - v27;
  v29 = type metadata accessor for PMAccount(0);
  v130 = *(v29 - 8);
  v30 = *(v130 + 64);
  MEMORY[0x28223BE20](v29);
  v128 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v32 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v135 = &v119 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v134 = &v119 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9510, &qword_21CBCB7D8);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v140 = &v119 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v138 = &v119 - v40;
  v41 = type metadata accessor for PMAccount.Storage(0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v127 = (&v119 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v44);
  v46 = (&v119 - v45);
  MEMORY[0x28223BE20](v47);
  v49 = (&v119 - v48);
  v50 = type metadata accessor for PMSignInWithAppleAccountDetailsView();
  v51 = v2 + v50[13];
  v136 = v29;
  v52 = *(v29 + 24);
  v53 = v51;
  sub_21CB38794(v51 + v52, v49, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719900(v49, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v54 = *v49;
    v55 = [v54 userIsNeverSaveMarker];

    if (v55)
    {
      v56 = 1;
      return (*(v149 + 56))(a1, v56, 1, v150);
    }
  }

  v147 = a1;
  v57 = *(v2 + v50[11] + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v58 = *(v152 + 16);

  if (!v58)
  {
    v56 = 1;
    a1 = v147;
    return (*(v149 + 56))(a1, v56, 1, v150);
  }

  sub_21CB38794(v53 + v52, v46, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = sub_21C719900(v46, type metadata accessor for PMAccount.Storage);
    v60 = v144;
  }

  else
  {
    v61 = *v46;
    v62 = [v61 isCurrentUserOriginalContributor];

    v60 = v144;
    if (v62)
    {
      v63 = (v2 + v50[10]);
      v64 = *v63;
      v65 = *(v63 + 1);
      LOBYTE(v152) = v64;
      v153 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
      v59 = sub_21CB84D54();
      if ((v151 & 1) == 0)
      {
        v121 = v53;
        v80 = v128;
        sub_21CB38794(v53, v128, type metadata accessor for PMAccount);
        sub_21CB81014();
        v81 = v124;
        sub_21CB81014();
        v120 = sub_21CB80FF4();
        v119 = v82;
        v83 = *(v125 + 8);
        v84 = v81;
        v85 = v126;
        v83(v84, v126);
        v83(v28, v85);
        v86 = v148;
        v87 = v135;
        v88 = &v135[*(v148 + 32)];
        KeyPath = swift_getKeyPath();
        if (qword_27CDEA4C0 != -1)
        {
          swift_once();
        }

        sub_21CB86544();
        sub_21C7072A8(KeyPath, v152);

        type metadata accessor for PMAccountsState();
        sub_21CB3917C(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
        v90 = sub_21CB82674();
        v92 = v91;

        *v88 = v90;
        v88[1] = v92;
        v93 = (v87 + v86[9]);
        v94 = swift_getKeyPath();
        sub_21CB86544();
        sub_21C7073E8(v94, v152);

        type metadata accessor for PMGroupsStore();
        sub_21CB3917C(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
        v95 = sub_21CB82674();
        v97 = v96;

        *v93 = v95;
        v93[1] = v97;
        v98 = (v87 + v86[12]);
        v151 = sub_21CB12DEC(MEMORY[0x277D84F90]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D0, &unk_21CBA25B0);
        sub_21CB84D44();
        v99 = v153;
        *v98 = v152;
        v98[1] = v99;
        v100 = v87 + v86[13];
        LOBYTE(v151) = 0;
        sub_21CB84D44();
        v101 = v153;
        *v100 = v152;
        *(v100 + 8) = v101;
        sub_21CB38794(v80, v87, type metadata accessor for PMAccount);
        v102 = (v87 + v86[5]);
        v103 = v119;
        *v102 = v120;
        v102[1] = v103;
        v104 = v127;
        sub_21CB38794(v80 + *(v136 + 24), v127, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C719900(v80, type metadata accessor for PMAccount);
          v105 = v123;
          sub_21CB3910C(v104, v123, type metadata accessor for PMAccount.MockData);
          v106 = v129;
          sub_21C6EDBAC(v105 + *(v122 + 72), v129, &unk_27CDF20B0, &unk_21CBA0090);
          v107 = type metadata accessor for PMAccount.MockData;
          v108 = v105;
        }

        else
        {
          v109 = *v104;
          v106 = v129;
          sub_21CB85B94();

          v107 = type metadata accessor for PMAccount;
          v108 = v80;
        }

        sub_21C719900(v108, v107);
        a1 = v147;
        v68 = v142;
        v67 = v143;
        v66 = v141;
        v69 = v138;
        v110 = v131;
        sub_21C716934(v106, v131, &unk_27CDF20B0, &unk_21CBA0090);
        (*(v132 + 56))(v110, 0, 2, v133);
        v111 = v148;
        v112 = v135;
        v113 = &v135[*(v148 + 40)];
        *(v113 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30) + 28)) = 0;
        sub_21CB3910C(v110, v113, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
        v114 = &v112[v111[11]];
        v115 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
        (*(*(v115 - 8) + 56))(v114, 1, 1, v115);
        v116 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
        (*(v130 + 56))(&v114[*(v116 + 20)], 1, 1, v136);
        type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
        swift_storeEnumTagMultiPayload();
        *&v114[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0) + 28)] = 0;
        v112[v111[6]] = 1;
        v112[v111[7]] = 0;
        v117 = v112;
        v118 = v134;
        sub_21CB3910C(v117, v134, type metadata accessor for PMMoveAccountToGroupPicker);
        sub_21CB38794(v118, v139, type metadata accessor for PMMoveAccountToGroupPicker);
        swift_storeEnumTagMultiPayload();
        sub_21CB3917C(&qword_27CDEC910, type metadata accessor for PMMoveAccountToGroupPicker);
        sub_21C831C64();
        sub_21CB83494();
        sub_21C719900(v118, type metadata accessor for PMMoveAccountToGroupPicker);
        goto LABEL_12;
      }
    }
  }

  MEMORY[0x28223BE20](v59);
  *(&v119 - 2) = v2;
  v66 = v141;
  sub_21CB825D4();
  v68 = v142;
  v67 = v143;
  (*(v142 + 16))(v139, v66, v143);
  swift_storeEnumTagMultiPayload();
  sub_21CB3917C(&qword_27CDEC910, type metadata accessor for PMMoveAccountToGroupPicker);
  sub_21C831C64();
  v69 = v138;
  sub_21CB83494();
  (*(v68 + 8))(v66, v67);
  a1 = v147;
LABEL_12:
  v70 = sub_21C7CBA64();
  if (v71)
  {
    MEMORY[0x28223BE20](v70);
    *(&v119 - 2) = v72;
    *(&v119 - 1) = v73;
    sub_21CB825D4();

    (*(v68 + 32))(v60, v66, v67);
    v74 = 0;
  }

  else
  {
    v74 = 1;
  }

  (*(v68 + 56))(v60, v74, 1, v67);
  v75 = v140;
  sub_21C6EDBAC(v69, v140, &qword_27CDF9510, &qword_21CBCB7D8);
  v76 = v145;
  sub_21C6EDBAC(v60, v145, &qword_27CDF9500, &unk_21CBCB7B8);
  v77 = v146;
  sub_21C6EDBAC(v75, v146, &qword_27CDF9510, &qword_21CBCB7D8);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9518, &qword_21CBCB828);
  sub_21C6EDBAC(v76, v77 + *(v78 + 48), &qword_27CDF9500, &unk_21CBCB7B8);
  sub_21C6EA794(v60, &qword_27CDF9500, &unk_21CBCB7B8);
  sub_21C6EA794(v69, &qword_27CDF9510, &qword_21CBCB7D8);
  sub_21C6EA794(v76, &qword_27CDF9500, &unk_21CBCB7B8);
  sub_21C6EA794(v75, &qword_27CDF9510, &qword_21CBCB7D8);
  sub_21C716934(v77, a1, &qword_27CDF94F8, &qword_21CBCB7B0);
  v56 = 0;
  return (*(v149 + 56))(a1, v56, 1, v150);
}

uint64_t sub_21CB33C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED6E0, &qword_21CBBE3A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  v17 = sub_21CB80DD4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1 + *(type metadata accessor for PMSignInWithAppleAccountDetailsView() + 52);
  PMAccount.signInWithAppleAccount.getter(v12);
  v23 = type metadata accessor for PMSignInWithAppleAccount();
  if ((*(*(v23 - 8) + 48))(v12, 1, v23) == 1)
  {
    sub_21C6EA794(v12, &qword_27CDEB2A8, &qword_21CBA1670);
    (*(v18 + 56))(v16, 1, 1, v17);
  }

  else
  {
    sub_21C6EDBAC(&v12[*(v23 + 28)], v16, &unk_27CDED250, &qword_21CBA64C0);
    sub_21C719900(v12, type metadata accessor for PMSignInWithAppleAccount);
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      v25 = (*(v18 + 32))(v21, v16, v17);
      MEMORY[0x28223BE20](v25);
      *(&v27 - 2) = v21;
      sub_21CB825D4();
      (*(v18 + 8))(v21, v17);
      (*(v5 + 32))(a2, v8, v4);
      v24 = 0;
      return (*(v5 + 56))(a2, v24, 1, v4);
    }
  }

  sub_21C6EA794(v16, &unk_27CDED250, &qword_21CBA64C0);
  v24 = 1;
  return (*(v5 + 56))(a2, v24, 1, v4);
}

uint64_t sub_21CB34030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9530, &unk_21CBCB8C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v25[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55A0, &qword_21CBBE3B8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v25[-v16];
  v18 = (a1 + *(type metadata accessor for PMSignInWithAppleAccountDetailsView() + 56));
  v19 = *v18;
  v20 = v18[1];

  v21 = sub_21CB34C04();
  v26 = a1;
  sub_21CA26210(v19, v20, v21, v22, sub_21CB39104, v17);
  sub_21CB31C2C(v10);
  sub_21C6EDBAC(v17, v14, &qword_27CDF55A0, &qword_21CBBE3B8);
  sub_21C6EDBAC(v10, v7, &qword_27CDF9530, &unk_21CBCB8C0);
  sub_21C6EDBAC(v14, a2, &qword_27CDF55A0, &qword_21CBBE3B8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9538, &unk_21CBCB8D0);
  sub_21C6EDBAC(v7, a2 + *(v23 + 48), &qword_27CDF9530, &unk_21CBCB8C0);
  sub_21C6EA794(v10, &qword_27CDF9530, &unk_21CBCB8C0);
  sub_21C6EA794(v17, &qword_27CDF55A0, &qword_21CBBE3B8);
  sub_21C6EA794(v7, &qword_27CDF9530, &unk_21CBCB8C0);
  return sub_21C6EA794(v14, &qword_27CDF55A0, &qword_21CBBE3B8);
}

uint64_t sub_21CB34278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9520, &unk_21CBCB830);
  v3 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v81 = &v66 - v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF94D0, &unk_21CBCB790);
  v5 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v7 = &v66 - v6;
  v8 = type metadata accessor for PMSignInWithAppleAccountDetailsView();
  v68 = *(v8 - 8);
  v9 = *(v68 + 64);
  MEMORY[0x28223BE20](v8);
  v69 = v10;
  v70 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v72 = *(v11 - 8);
  v73 = v11;
  v12 = *(v72 + 64);
  MEMORY[0x28223BE20](v11);
  v71 = &v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B8, &qword_21CBA3EB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v74 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v75 = &v66 - v18;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  v19 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v77 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v82 = &v66 - v22;
  v23 = type metadata accessor for PMSignInWithAppleAccount();
  v24 = *(v23 - 1);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v76 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v66 - v32;
  v34 = *(v8 + 52);
  v35 = a1;
  PMAccount.signInWithAppleAccount.getter(&v66 - v32);
  v36 = *(v24 + 48);
  if (v36(v33, 1, v23) == 1)
  {
    sub_21C6EA794(v33, &qword_27CDEB2A8, &qword_21CBA1670);
  }

  else
  {
    v67 = v7;
    v37 = &v33[v23[9]];
    v38 = *v37;
    v39 = v37[1];

    sub_21C719900(v33, type metadata accessor for PMSignInWithAppleAccount);
    if (v39)
    {
      sub_21CB322CC(v38, v39, v82);

      v40 = v35 + *(v8 + 40);
      v41 = *v40;
      v42 = *(v40 + 8);
      v85 = v41;
      v86 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
      sub_21CB84D54();
      if (v84)
      {
        v43 = v70;
        sub_21CB38794(v35, v70, type metadata accessor for PMSignInWithAppleAccountDetailsView);
        v44 = (*(v68 + 80) + 16) & ~*(v68 + 80);
        v45 = swift_allocObject();
        sub_21CB3910C(v43, v45 + v44, type metadata accessor for PMSignInWithAppleAccountDetailsView);
        v46 = v71;
        sub_21CB84DA4();
        v48 = v72;
        v47 = v73;
        v49 = v75;
        (*(v72 + 32))(v75, v46, v73);
        v50 = 0;
        v51 = v83;
      }

      else
      {
        v50 = 1;
        v51 = v83;
        v49 = v75;
        v48 = v72;
        v47 = v73;
      }

      (*(v48 + 56))(v49, v50, 1, v47);
      v59 = v82;
      v60 = v77;
      sub_21C6EDBAC(v82, v77, &qword_27CDF1B78, &qword_21CBBE2D0);
      v61 = v74;
      sub_21C6EDBAC(v49, v74, &qword_27CDEC2B8, &qword_21CBA3EB0);
      v62 = v67;
      sub_21C6EDBAC(v60, v67, &qword_27CDF1B78, &qword_21CBBE2D0);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9528, &qword_21CBCB840);
      sub_21C6EDBAC(v61, v62 + *(v63 + 48), &qword_27CDEC2B8, &qword_21CBA3EB0);
      sub_21C6EA794(v61, &qword_27CDEC2B8, &qword_21CBA3EB0);
      sub_21C6EA794(v60, &qword_27CDF1B78, &qword_21CBBE2D0);
      sub_21C6EDBAC(v62, v81, &qword_27CDF94D0, &unk_21CBCB790);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDF94C8, &qword_27CDF94D0, &unk_21CBCB790);
      sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0);
      sub_21CB83494();
      sub_21C6EA794(v62, &qword_27CDF94D0, &unk_21CBCB790);
      sub_21C6EA794(v49, &qword_27CDEC2B8, &qword_21CBA3EB0);
      sub_21C6EA794(v59, &qword_27CDF1B78, &qword_21CBBE2D0);
      goto LABEL_15;
    }
  }

  PMAccount.signInWithAppleAccount.getter(v30);
  v52 = v36(v30, 1, v23);
  v51 = v83;
  if (v52 != 1)
  {
    v53 = v76;
    sub_21CB3910C(v30, v76, type metadata accessor for PMSignInWithAppleAccount);
    v54 = (v53 + v23[15]);
    v55 = v54[1];
    if (!v55 || (v56 = *v54, !sub_21C8A137C(2u, *(v53 + v23[8]))))
    {
      sub_21C719900(v53, type metadata accessor for PMSignInWithAppleAccount);
      goto LABEL_12;
    }

    v57 = v77;
    sub_21CB326FC(v56, v55, v77);

    sub_21C6EDBAC(v57, v81, &qword_27CDF1B78, &qword_21CBBE2D0);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF94C8, &qword_27CDF94D0, &unk_21CBCB790);
    sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0);
    sub_21CB83494();
    sub_21C6EA794(v57, &qword_27CDF1B78, &qword_21CBBE2D0);
    sub_21C719900(v53, type metadata accessor for PMSignInWithAppleAccount);
LABEL_15:
    v58 = 0;
    goto LABEL_16;
  }

  sub_21C6EA794(v30, &qword_27CDEB2A8, &qword_21CBA1670);
LABEL_12:
  v58 = 1;
LABEL_16:
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF94C0, &qword_21CBCB788);
  return (*(*(v64 - 8) + 56))(v51, v58, 1, v64);
}

uint64_t sub_21CB34C04()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  v14 = sub_21CB80DD4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21CB85174();
  result = 0;
  if ((v19 & 1) == 0)
  {
    v21 = v0 + *(type metadata accessor for PMSignInWithAppleAccountDetailsView() + 52);
    PMAccount.signInWithAppleAccount.getter(v9);
    v22 = type metadata accessor for PMSignInWithAppleAccount();
    if ((*(*(v22 - 8) + 48))(v9, 1, v22) == 1)
    {
      sub_21C6EA794(v9, &qword_27CDEB2A8, &qword_21CBA1670);
      (*(v15 + 56))(v13, 1, 1, v14);
LABEL_5:
      sub_21C6EA794(v13, &unk_27CDED250, &qword_21CBA64C0);
      return 0;
    }

    sub_21C6EDBAC(&v9[*(v22 + 28)], v13, &unk_27CDED250, &qword_21CBA64C0);
    sub_21C719900(v9, type metadata accessor for PMSignInWithAppleAccount);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      goto LABEL_5;
    }

    (*(v15 + 32))(v18, v13, v14);
    sub_21CB81014();
    sub_21CB81004();
    (*(v2 + 8))(v5, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_21CBA0690;
    if (qword_27CDEA3B8 != -1)
    {
      swift_once();
    }

    v24 = qword_27CDF2480;
    [qword_27CDF2480 setDoesRelativeDateFormatting_];
    v25 = sub_21CB80D24();
    v26 = [v24 stringFromDate_];

    v27 = sub_21CB855C4();
    v29 = v28;

    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = sub_21C7C0050();
    *(v23 + 32) = v27;
    *(v23 + 40) = v29;
    v30 = sub_21CB85594();

    (*(v15 + 8))(v18, v14);
    return v30;
  }

  return result;
}

uint64_t sub_21CB35094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_21CB80E34();
  v87 = *(v3 - 8);
  v88 = v3;
  v4 = *(v87 + 64);
  MEMORY[0x28223BE20](v3);
  v86 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v85 = &v73 - v7;
  v79 = type metadata accessor for PMAccount.MockData(0);
  v8 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v80 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for PMAccount.Storage(0);
  v10 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v12 = (&v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v82 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v83 = &v73 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v73 - v20;
  v22 = type metadata accessor for PMAccountIcon();
  v23 = *(v22 - 8);
  v89 = v22;
  v90 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v84 = &v73 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v73 - v31;
  v33 = type metadata accessor for PMSignInWithAppleAccount();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v73 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for PMSignInWithAppleAccountDetailsView();
  v39 = a1;
  v40 = a1 + *(v38 + 52);
  PMAccount.signInWithAppleAccount.getter(v32);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    sub_21C6EA794(v32, &qword_27CDEB2A8, &qword_21CBA1670);
    v41 = 1;
    v42 = v91;
    v43 = v89;
  }

  else
  {
    sub_21CB3910C(v32, v37, type metadata accessor for PMSignInWithAppleAccount);
    v44 = (v39 + *(v38 + 56));
    v45 = v44[1];
    v76 = *v44;
    v46 = *(v33 + 20);
    v47 = sub_21CB85B74();
    v48 = *(v47 - 8);
    (*(v48 + 16))(v21, &v37[v46], v47);
    v74 = *(v48 + 56);
    v74(v21, 0, 1, v47);
    v49 = type metadata accessor for PMAccount(0);
    sub_21CB38794(v40 + *(v49 + 24), v12, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v77 = v37;
    v78 = v21;
    if (EnumCaseMultiPayload == 1)
    {
      v51 = v80;
      sub_21CB3910C(v12, v80, type metadata accessor for PMAccount.MockData);
      v52 = v82;
      sub_21C6EDBAC(v51 + *(v79 + 72), v82, &unk_27CDF20B0, &unk_21CBA0090);

      sub_21C719900(v51, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v53 = *v12;

      v52 = v82;
      sub_21CB85B94();
    }

    v43 = v89;
    v75 = v45;
    v54 = v83;
    sub_21C716934(v52, v83, &unk_27CDF20B0, &unk_21CBA0090);
    v55 = sub_21CB85C44();
    v56 = (*(*(v55 - 8) + 48))(v54, 1, v55) != 1;
    sub_21C6EA794(v54, &unk_27CDF20B0, &unk_21CBA0090);
    KeyPath = swift_getKeyPath();
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(KeyPath, v93);

    type metadata accessor for PMAccountsState();
    sub_21CB3917C(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
    v58 = sub_21CB82674();
    v60 = v59;

    *v26 = v58;
    *(v26 + 1) = v60;
    *(v26 + 2) = swift_getKeyPath();
    *(v26 + 3) = swift_getKeyPath();
    *(v26 + 4) = swift_getKeyPath();
    v92 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA08, &qword_21CBA2A40);
    sub_21CB84D44();
    *(v26 + 40) = v93;
    v61 = v43[11];
    v74(&v26[v61], 1, 1, v47);
    v62 = &v26[v43[16]];
    v63 = &v26[v43[17]];
    *v63 = sub_21C7E79A0;
    *(v63 + 1) = 0;
    v63[16] = 0;
    v64 = v43[18];
    v65 = v85;
    sub_21CB80E24();
    v66 = v87;
    v67 = v88;
    (*(v87 + 16))(v86, v65, v88);
    sub_21CB84D44();
    (*(v66 + 8))(v65, v67);
    sub_21C719900(v77, type metadata accessor for PMSignInWithAppleAccount);
    v68 = v75;
    *(v26 + 7) = v76;
    *(v26 + 8) = v68;
    *(v26 + 9) = 0;
    *(v26 + 10) = 0;
    sub_21C805878(v78, &v26[v61]);
    v26[v43[12]] = 1;
    v26[v43[13]] = 1;
    v26[v43[14]] = 1;
    v69 = &v26[v43[15]];
    *v69 = xmmword_21CBA4340;
    v69[16] = 0;
    *v62 = v56;
    *(v62 + 8) = vdupq_n_s64(0x3FC999999999999AuLL);
    *(v62 + 24) = xmmword_21CBCB3D0;
    *(v62 + 5) = 0;
    *(v62 + 6) = 0;
    v70 = v84;
    sub_21CB3910C(v26, v84, type metadata accessor for PMAccountIcon);
    v71 = v70;
    v42 = v91;
    sub_21CB3910C(v71, v91, type metadata accessor for PMAccountIcon);
    v41 = 0;
  }

  return (*(v90 + 56))(v42, v41, 1, v43);
}

uint64_t sub_21CB35978@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CDEA3B8 != -1)
  {
    swift_once();
  }

  v2 = qword_27CDF2480;
  [qword_27CDF2480 setDoesRelativeDateFormatting_];
  v3 = sub_21CB80D24();
  v4 = [v2 stringFromDate_];

  sub_21CB855C4();
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_21CB35A7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMSignInWithAppleAccountDetailsView();
  sub_21CB38794(a1 + *(v8 + 52), v7, type metadata accessor for PMAccount);
  v9 = type metadata accessor for PMCombinedAccountDetailsModel(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_21CA4B79C(v7);
  return sub_21C9B0330(a2);
}

uint64_t sub_21CB35B5C(uint64_t a1)
{
  v2 = type metadata accessor for PMSignInWithAppleAccountDetailsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_21CB858E4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_21CB38794(a1, v5, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  sub_21CB858B4();
  v11 = sub_21CB858A4();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21CB3910C(v5, v13 + v12, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  sub_21C98B308(0, 0, v9, &unk_21CBCB850, v13);
}

uint64_t sub_21CB35D3C()
{
  v0[2] = sub_21CB858B4();
  v0[3] = sub_21CB858A4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21C74FDC4;

  return sub_21CB35DE8();
}

uint64_t sub_21CB35DE8()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0) - 8) + 64) + 15;
  v0[2] = swift_task_alloc();
  v2 = sub_21CB80BE4();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();
  sub_21CB858B4();
  v0[6] = sub_21CB858A4();
  v6 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21CB35F10, v6, v5);
}

id sub_21CB35F10()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_21CB80BD4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[6];
    v5 = v0[2];

    sub_21C6EA794(v5, &qword_27CDEC300, &qword_21CBA3ED0);
  }

  else
  {
    (*(v0[4] + 32))(v0[5], v0[2], v0[3]);
    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[3];
    v11 = v0[4];

    v12 = sub_21CB80B74();
    sub_21C73181C(MEMORY[0x277D84F90]);
    v13 = sub_21CB85464();

    [v7 openSensitiveURL:v12 withOptions:v13];

    (*(v11 + 8))(v9, v10);
  }

  v14 = v0[5];
  v15 = v0[2];

  v16 = v0[1];

  return v16();
}

uint64_t sub_21CB360D8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21CB36204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMSignInWithAppleAccountDetailsView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18[-v9];
  sub_21CB81ED4();
  v11 = sub_21CB81F14();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  sub_21CB38794(a1, &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PMSignInWithAppleAccountDetailsView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_21CB3910C(&v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9468, &qword_21CBCB718);
  sub_21C6EADEC(&qword_27CDF9470, &qword_27CDF9468, &qword_21CBCB718);
  sub_21CB84D94();
  v14 = sub_21CB84A64();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9440, &qword_21CBCB6F0);
  v17 = (a2 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = v14;
  return result;
}

void sub_21CB36470(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount.Storage(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PMSignInWithAppleAccountDetailsView();
  v7 = a1 + *(v6 + 52);
  v8 = type metadata accessor for PMAccount(0);
  sub_21CB38794(v7 + *(v8 + 24), v5, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719900(v5, type metadata accessor for PMAccount.Storage);
    if (qword_27CDEA478 != -1)
    {
      swift_once();
    }

    v9 = sub_21CB81C84();
    __swift_project_value_buffer(v9, qword_27CE186F8);
    v10 = sub_21CB81C64();
    v11 = sub_21CB85AE4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21C6E5000, v10, v11, "Saved account nil, unable to show ＂Stop using Sign in with Apple＂ alert.", v12, 2u);
      MEMORY[0x21CF16D90](v12, -1, -1);
    }
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
    v13 = *(*(v8 - 8) + 72);
    v14 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21CBA0690;
    sub_21CB38794(v7, v15 + v14, type metadata accessor for PMAccount);
    v16 = sub_21C87E898(v15);
    v17 = (a1 + *(v6 + 32));
    v18 = v17[1];
    v22 = *v17;
    v23 = v18;
    v21[1] = v16;
    v21[2] = v19;
    v21[3] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF93C8, &qword_21CBCB610);
    sub_21CB84D64();
  }
}

__n128 sub_21CB36708@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB83074();
  sub_21CB367A0(v5);
  *&v4[48] = *&v6[9];
  *&v4[39] = *v6;
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 17) = *v4;
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 65) = *&v4[48];
  return result;
}

uint64_t sub_21CB367A0@<X0>(uint64_t a1@<X8>)
{
  sub_21CB368DC();
  sub_21C71F3FC();
  v2 = sub_21CB84054();
  v4 = v3;
  v6 = v5;
  sub_21CB84A64();
  v7 = sub_21CB83FC4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_21C74A72C(v2, v4, v6 & 1);

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11 & 1;
  *(a1 + 40) = v13;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_21C79B058(v7, v9, v11 & 1);

  sub_21C74A72C(v7, v9, v11 & 1);
}

uint64_t sub_21CB368DC()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for PMAccount.Storage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v0 + *(type metadata accessor for PMSignInWithAppleAccountDetailsView() + 52);
  v14 = type metadata accessor for PMAccount(0);
  sub_21CB38794(v13 + *(v14 + 24), v12, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719900(v12, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v15 = *v12;
    [*v12 isCurrentUserOriginalContributor];
  }

  sub_21CB81014();
  sub_21CB81014();
  v16 = sub_21CB80FF4();
  v17 = *(v2 + 8);
  v17(v5, v1);
  v17(v8, v1);
  return v16;
}

uint64_t sub_21CB36B48@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v34 = sub_21CB82A04();
  v32 = *(v34 - 8);
  v1 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v31 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PMSignInWithAppleAccountDetailsView();
  v29 = *(v3 - 8);
  v28[1] = *(v29 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v28[0] = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMPlatformRoleButton();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_21CB81F14();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81F04();
  sub_21CB81014();
  v19 = sub_21CB81004();
  v21 = v20;
  (*(v6 + 8))(v9, v5);
  (*(v15 + 16))(v13 + *(v10 + 20), v18, v14);
  v22 = v28[0];
  sub_21CB38794(v30, v28[0], type metadata accessor for PMSignInWithAppleAccountDetailsView);
  v23 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v24 = swift_allocObject();
  sub_21CB3910C(v22, v24 + v23, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  *v13 = v19;
  v13[1] = v21;
  v25 = (v13 + *(v10 + 24));
  *v25 = sub_21CB383C8;
  v25[1] = v24;
  v26 = v31;
  sub_21CB829E4();
  sub_21CB3917C(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
  sub_21CB84334();
  (*(v32 + 8))(v26, v34);
  sub_21C719900(v13, type metadata accessor for PMPlatformRoleButton);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_21CB36F6C(uint64_t a1)
{
  v2 = type metadata accessor for PMSignInWithAppleAccountDetailsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21CB38794(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSignInWithAppleAccountDetailsView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_21CB3910C(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  return sub_21CB84DA4();
}

uint64_t sub_21CB370C0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for PMSignInWithAppleAccountDetailsView() + 40));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21CB37144@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v14 - v4;
  sub_21CB372D0(v14 - v4);
  v6 = type metadata accessor for PMSharingGroup();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_21C6EA794(v5, &qword_27CDF7670, &unk_21CBAA8F0);
    if (qword_27CDEA498 != -1)
    {
      swift_once();
    }

    v8 = qword_27CE18748;
    v7 = qword_27CE18750;
  }

  else
  {
    v9 = &v5[*(v6 + 20)];
    v8 = *v9;
    v7 = v9[1];

    sub_21C719900(v5, type metadata accessor for PMSharingGroup);
  }

  v14[0] = v8;
  v14[1] = v7;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21CB372D0@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = sub_21CB85C44();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.MockData(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMAccount.Storage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v34 - v21;
  v23 = type metadata accessor for PMSignInWithAppleAccountDetailsView();
  v24 = *(v23 + 52);
  v36 = v1;
  v25 = v1 + v24;
  v26 = type metadata accessor for PMAccount(0);
  sub_21CB38794(v25 + *(v26 + 24), v12, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CB3910C(v12, v8, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v8[*(v5 + 72)], v19, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C719900(v8, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v27 = *v12;
    sub_21CB85B94();
  }

  sub_21C716934(v19, v22, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(v22, v16, &unk_27CDF20B0, &unk_21CBA0090);
  v29 = v37;
  v28 = v38;
  if ((*(v37 + 48))(v16, 1, v38) == 1)
  {
    sub_21C6EA794(v22, &unk_27CDF20B0, &unk_21CBA0090);
    v30 = type metadata accessor for PMSharingGroup();
    return (*(*(v30 - 8) + 56))(v39, 1, 1, v30);
  }

  else
  {
    v32 = v35;
    (*(v29 + 32))(v35, v16, v28);
    v33 = *(v36 + *(v23 + 44) + 8);
    sub_21CA1D444(v32, v39);
    (*(v29 + 8))(v32, v28);
    return sub_21C6EA794(v22, &unk_27CDF20B0, &unk_21CBA0090);
  }
}

uint64_t sub_21CB376B0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  sub_21CB81014();
  sub_21CB81014();
  v10 = sub_21CB80FF4();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v6, v2);
  v13(v9, v2);
  v18[0] = v10;
  v18[1] = v12;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_21CB37858@<X0>(uint64_t a1@<X8>)
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

void sub_21CB379A8()
{
  sub_21CB37B98();
  if (v0 <= 0x3F)
  {
    sub_21C70DB24(319, &qword_27CDEB178, MEMORY[0x277CDD848]);
    if (v1 <= 0x3F)
    {
      sub_21C70DB24(319, &qword_27CDEB898, MEMORY[0x277CDFA28]);
      if (v2 <= 0x3F)
      {
        sub_21C705CFC();
        if (v3 <= 0x3F)
        {
          sub_21CB37C2C();
          if (v4 <= 0x3F)
          {
            sub_21CB37C90(319, &qword_27CDF1428, &type metadata for PMAccountDetailsPresentationStyle, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_21CB37C90(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_21C70640C();
                if (v7 <= 0x3F)
                {
                  sub_21CB37C90(319, &qword_27CDF1420, &type metadata for PMAccountDetailsContext, MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for PMAccount(319);
                    if (v9 <= 0x3F)
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

void sub_21CB37B98()
{
  if (!qword_27CDF9348)
  {
    type metadata accessor for PMSignInWithAppleAccountDetailsModel();
    sub_21CB3917C(&qword_27CDF68E8, type metadata accessor for PMSignInWithAppleAccountDetailsModel);
    v0 = sub_21CB826A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF9348);
    }
  }
}

void sub_21CB37C2C()
{
  if (!qword_27CDF9350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAEF8, &unk_21CBA0740);
    v0 = sub_21CB84D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF9350);
    }
  }
}

void sub_21CB37C90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_21CB37CFC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PMSignInWithAppleAccountDetailsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CB2EEA8(v4, a1);
}

unint64_t sub_21CB37D74()
{
  result = qword_27CDF9380;
  if (!qword_27CDF9380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9358, &qword_21CBCB578);
    sub_21CB37E2C();
    sub_21C6EADEC(&qword_27CDEB288, &qword_27CDEB238, &qword_21CBA1570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9380);
  }

  return result;
}

unint64_t sub_21CB37E2C()
{
  result = qword_27CDF9388;
  if (!qword_27CDF9388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9370, &qword_21CBCB598);
    sub_21C6EADEC(&qword_27CDF9390, &qword_27CDF9398, &unk_21CBCB5E0);
    sub_21C6EADEC(&qword_27CDEB278, &qword_27CDEB280, &unk_21CBA7D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9388);
  }

  return result;
}

unint64_t sub_21CB37F10()
{
  result = qword_27CDF93B0;
  if (!qword_27CDF93B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF93A8, &qword_21CBCB5F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF93B8, &unk_21CBCB600);
    sub_21C6EADEC(&qword_27CDF93C0, &qword_27CDF93B8, &unk_21CBCB600);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDA80, &unk_21CBA81E0);
    sub_21C6EADEC(&qword_27CDF2770, &qword_27CDEDA80, &unk_21CBA81E0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF93B0);
  }

  return result;
}

uint64_t sub_21CB3806C(uint64_t a1)
{
  v4 = *(type metadata accessor for PMSignInWithAppleAccountDetailsView() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C6F35D0;

  return sub_21CB307D4(a1, v1 + v5);
}

unint64_t sub_21CB38144()
{
  result = qword_27CDF93D0;
  if (!qword_27CDF93D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9368, &unk_21CBCB588);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9358, &qword_21CBCB578);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9378, &qword_21CBCB5D8);
    sub_21CB37D74();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF93A0, &qword_21CBCB5F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF93A8, &qword_21CBCB5F8);
    sub_21CB37F10();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C72EC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF93D0);
  }

  return result;
}

uint64_t sub_21CB382AC(uint64_t a1)
{
  v4 = *(type metadata accessor for PMSignInWithAppleAccountDetailsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C6F35D0;

  return sub_21CB30A78(a1, v6, v7, v1 + v5);
}

unint64_t sub_21CB3844C()
{
  result = qword_27CDF9448;
  if (!qword_27CDF9448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9440, &qword_21CBCB6F0);
    sub_21C6EADEC(&qword_27CDF9450, &qword_27CDF9458, &unk_21CBCB6F8);
    sub_21C6EADEC(&unk_27CDEC1B0, &qword_27CDEB968, &qword_21CBA26F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9448);
  }

  return result;
}

uint64_t sub_21CB38548(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMSignInWithAppleAccountDetailsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

double sub_21CB385BC@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *&result = sub_21CB36708(a1).n128_u64[0];
  return result;
}

unint64_t sub_21CB385D4()
{
  result = qword_27CDF94B8;
  if (!qword_27CDF94B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF94C0, &qword_21CBCB788);
    sub_21C6EADEC(&qword_27CDF94C8, &qword_27CDF94D0, &unk_21CBCB790);
    sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF94B8);
  }

  return result;
}

unint64_t sub_21CB386DC()
{
  result = qword_27CDF94E8;
  if (!qword_27CDF94E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF94E0, &qword_21CBCB7A8);
    sub_21C6EADEC(&qword_27CDF94F0, &qword_27CDF94F8, &qword_21CBCB7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF94E8);
  }

  return result;
}

uint64_t sub_21CB38794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_29Tm_0()
{
  v1 = v0;
  v2 = type metadata accessor for PMSignInWithAppleAccountDetailsView();
  v3 = *(*(v2 - 1) + 80);
  v71 = *(*(v2 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + ((v3 + 32) & ~v3);
  v6 = *(v5 + 8);

  v7 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB823B4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB82834();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = *(v5 + v2[7] + 8);

  v14 = v5 + v2[8];
  if (*v14)
  {

    v15 = *(v14 + 8);
  }

  v16 = *(v14 + 24);

  sub_21C7025C4(*(v5 + v2[9]), *(v5 + v2[9] + 8));
  v17 = *(v5 + v2[10] + 8);

  v18 = *(v5 + v2[11] + 8);

  sub_21C940E04(*(v5 + v2[12]), *(v5 + v2[12] + 8));
  v19 = v5 + v2[13];
  v20 = *(v19 + 8);

  v21 = type metadata accessor for PMAccount(0);
  v22 = (v19 + v21[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v24 = *(v22 + 1);

  v25 = *(v22 + 3);

  v70 = v21;
  if (EnumCaseMultiPayload == 1)
  {
    v26 = *(v22 + 5);

    v27 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v28 = v27[7];
    v29 = sub_21CB85B74();
    (*(*(v29 - 8) + 8))(&v22[v28], v29);
    v30 = *&v22[v27[8] + 8];

    v31 = v27[9];
    v32 = sub_21CB85C44();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(&v22[v31], 1, v32))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v58 = *(v22 + 4);

  v59 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v60 = v59[7];
  v61 = sub_21CB85C04();
  v62 = *(v61 - 8);
  if (!(*(v62 + 48))(&v22[v60], 1, v61))
  {
    (*(v62 + 8))(&v22[v60], v61);
  }

  v63 = v59[8];
  v64 = sub_21CB85BB4();
  v65 = *(v64 - 8);
  if (!(*(v65 + 48))(&v22[v63], 1, v64))
  {
    (*(v65 + 8))(&v22[v63], v64);
  }

  v31 = v59[9];
  v32 = sub_21CB85C44();
  v33 = *(v32 - 8);
  v21 = v70;
  if (!(*(v33 + 48))(&v22[v31], 1, v32))
  {
LABEL_11:
    (*(v33 + 8))(&v22[v31], v32);
  }

LABEL_12:
  v34 = v19 + v21[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v69 = v1;
    v35 = *(v34 + 8);

    v36 = *(v34 + 24);

    v37 = *(v34 + 40);

    v38 = *(v34 + 56);

    v39 = type metadata accessor for PMAccount.MockData(0);
    v40 = v39[8];
    v41 = sub_21CB80DD4();
    v42 = *(v41 - 8);
    v43 = *(v42 + 48);
    if (!v43(v34 + v40, 1, v41))
    {
      (*(v42 + 8))(v34 + v40, v41);
    }

    v44 = *(v34 + v39[9]);

    v45 = *(v34 + v39[10] + 8);

    v46 = *(v34 + v39[11] + 8);

    v47 = v39[12];
    if (!v43(v34 + v47, 1, v41))
    {
      (*(v42 + 8))(v34 + v47, v41);
    }

    v48 = v39[15];
    v49 = sub_21CB85BB4();
    v50 = *(v49 - 8);
    v1 = v69;
    if (!(*(v50 + 48))(v34 + v48, 1, v49))
    {
      (*(v50 + 8))(v34 + v48, v49);
    }

    v51 = v39[16];
    v52 = sub_21CB85C04();
    v53 = *(v52 - 8);
    if (!(*(v53 + 48))(v34 + v51, 1, v52))
    {
      (*(v53 + 8))(v34 + v51, v52);
    }

    v54 = *(v34 + v39[17] + 8);

    v55 = v39[18];
    v56 = sub_21CB85C44();
    v57 = *(v56 - 8);
    v21 = v70;
    if (!(*(v57 + 48))(v34 + v55, 1, v56))
    {
      (*(v57 + 8))(v34 + v55, v56);
    }
  }

  else
  {
  }

  v66 = v19 + v21[7];
  if (*(v66 + 8))
  {
  }

  v67 = *(v5 + v2[14] + 8);

  return MEMORY[0x2821FE8E8](v1, ((v3 + 32) & ~v3) + v71, v3 | 7);
}

uint64_t sub_21CB39014()
{
  v2 = *(type metadata accessor for PMSignInWithAppleAccountDetailsView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21C702EFC;

  return sub_21CB35D3C();
}

uint64_t sub_21CB3910C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB3917C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CB391CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PMOsloHeaderContentView.init(icon:badge:title:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_21CB813C4();
  (*(*(v14 - 8) + 56))(a7, 1, 1, v14);
  v15 = type metadata accessor for PMOsloHeaderContentView(0);
  v16 = v15[5];
  v17 = type metadata accessor for PMOsloBadge(0);
  (*(*(v17 - 8) + 56))(a7 + v16, 1, 1, v17);
  v18 = v15[7];
  v19 = (a7 + v15[6]);
  v20 = (a7 + v18);
  sub_21C7D3344(a1, a7, &qword_27CDECC98, &unk_21CBCB9B0);
  result = sub_21C7D3344(a2, a7 + v16, &unk_27CDF2CA0, &unk_21CBA5520);
  *v19 = a3;
  v19[1] = a4;
  *v20 = a5;
  v20[1] = a6;
  return result;
}

uint64_t PMOsloHeaderContentView.title.getter()
{
  v1 = (v0 + *(type metadata accessor for PMOsloHeaderContentView(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PMOsloHeaderContentView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PMOsloHeaderContentView(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PMOsloHeaderContentView.message.getter()
{
  v1 = (v0 + *(type metadata accessor for PMOsloHeaderContentView(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PMOsloHeaderContentView.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PMOsloHeaderContentView(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PMOsloHeaderContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21CB832E4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9580, &qword_21CBCB9C0);
  sub_21CB3976C(v1, a1 + *(v3 + 44));
  v4 = sub_21CB83CD4();
  sub_21CB81F24();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9588, &qword_21CBCB9C8);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_21CB3976C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v3 = sub_21CB83274();
  v137 = *(v3 - 8);
  v138 = v3;
  v4 = *(v137 + 64);
  MEMORY[0x28223BE20](v3);
  v136 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9778, &qword_21CBCBC78);
  v6 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v129 = &v122 - v7;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9780, &qword_21CBCBC80);
  v8 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v131 = &v122 - v9;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9788, &qword_21CBCBC88);
  v10 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v132 = &v122 - v11;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9790, &qword_21CBCBC90);
  v12 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v135 = &v122 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9798, &qword_21CBCBC98);
  v141 = *(v14 - 8);
  v142 = v14;
  v15 = *(v141 + 64);
  MEMORY[0x28223BE20](v14);
  v133 = &v122 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF97A0, &qword_21CBCBCA0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v143 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v146 = &v122 - v21;
  v123 = type metadata accessor for PMOsloHeaderImageView(0);
  v22 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v124 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF97A8, &qword_21CBCBCA8);
  v24 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v26 = &v122 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF97B0, &qword_21CBCBCB0);
  v28 = *(v27 - 8);
  v139 = v27;
  v140 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v125 = &v122 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC98, &unk_21CBCB9B0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v122 - v33;
  v35 = sub_21CB813C4();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v122 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF97B8, &qword_21CBCBCB8);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v145 = &v122 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = &v122 - v44;
  sub_21C6EDBAC(a1, v34, &qword_27CDECC98, &unk_21CBCB9B0);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_21C6EA794(v34, &qword_27CDECC98, &unk_21CBCB9B0);
    v46 = 1;
    v47 = a1;
  }

  else
  {
    (*(v36 + 32))(v39, v34, v35);
    v48 = v124;
    (*(v36 + 16))(v124, v39, v35);
    v49 = type metadata accessor for PMOsloHeaderContentView(0);
    v47 = a1;
    sub_21C6EDBAC(a1 + *(v49 + 20), v48 + *(v123 + 20), &unk_27CDF2CA0, &unk_21CBA5520);
    sub_21CB85224();
    sub_21CB82AC4();
    sub_21CB3EBE8(v48, v26, type metadata accessor for PMOsloHeaderImageView);
    v50 = &v26[*(v126 + 36)];
    v51 = v176[7];
    *(v50 + 4) = v176[6];
    *(v50 + 5) = v51;
    *(v50 + 6) = v176[8];
    v52 = v176[3];
    *v50 = v176[2];
    *(v50 + 1) = v52;
    v53 = v176[5];
    *(v50 + 2) = v176[4];
    *(v50 + 3) = v53;
    sub_21CB3EC50();
    v54 = v125;
    sub_21CB84494();
    sub_21C6EA794(v26, &qword_27CDF97A8, &qword_21CBCBCA8);
    (*(v36 + 8))(v39, v35);
    sub_21C716934(v54, v45, &qword_27CDF97B0, &qword_21CBCBCB0);
    v46 = 0;
  }

  v55 = *(v140 + 7);
  v140 = v45;
  v55(v45, v46, 1, v139);
  v56 = type metadata accessor for PMOsloHeaderContentView(0);
  v57 = (v47 + *(v56 + 24));
  v58 = v57[1];
  if (v58)
  {
    *&v166 = *v57;
    *(&v166 + 1) = v58;
    sub_21C71F3FC();
    v139 = v56;
    v59 = v47;

    v60 = sub_21CB84054();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    KeyPath = swift_getKeyPath();
    v68 = sub_21CB83E34();
    v69 = swift_getKeyPath();
    LOBYTE(v159[0]) = v64 & 1;
    *&v161 = v60;
    *(&v161 + 1) = v62;
    LOBYTE(v162) = v64 & 1;
    *(&v162 + 1) = v66;
    *&v163 = KeyPath;
    BYTE8(v163) = 0;
    *&v164 = v69;
    *(&v164 + 1) = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF23D8, &unk_21CBCBD30);
    sub_21C95BFC8();
    v70 = v129;
    sub_21CB846B4();
    v166 = v161;
    v167 = v162;
    v168 = v163;
    v169 = v164;
    v47 = v59;
    v56 = v139;
    sub_21C6EA794(&v166, &qword_27CDF23D8, &unk_21CBCBD30);
    v71 = swift_getKeyPath();
    v72 = v70 + *(v127 + 36);
    *v72 = v71;
    *(v72 + 8) = 0;
    *(v72 + 16) = 1;
    sub_21CB85224();
    sub_21CB82AC4();
    v73 = v131;
    sub_21C716934(v70, v131, &qword_27CDF9778, &qword_21CBCBC78);
    v74 = (v73 + *(v128 + 36));
    v75 = v176[14];
    v74[4] = v176[13];
    v74[5] = v75;
    v74[6] = v176[15];
    v76 = v176[10];
    *v74 = v176[9];
    v74[1] = v76;
    v77 = v176[12];
    v74[2] = v176[11];
    v74[3] = v77;
    v78 = v132;
    sub_21C716934(v73, v132, &qword_27CDF9780, &qword_21CBCBC80);
    *(v78 + *(v130 + 36)) = 256;
    LOBYTE(v73) = sub_21CB83D04();
    *(v47 + *(v56 + 28) + 8);
    sub_21CB81F24();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v87 = v135;
    sub_21C716934(v78, v135, &qword_27CDF9788, &qword_21CBCBC88);
    v88 = v87 + *(v134 + 36);
    *v88 = v73;
    *(v88 + 8) = v80;
    *(v88 + 16) = v82;
    *(v88 + 24) = v84;
    *(v88 + 32) = v86;
    *(v88 + 40) = 0;
    v89 = v136;
    sub_21CB83264();
    sub_21CB3E950();
    v90 = v133;
    sub_21CB84594();
    (*(v137 + 8))(v89, v138);
    sub_21C6EA794(v87, &qword_27CDF9790, &qword_21CBCBC90);
    v91 = v146;
    sub_21C716934(v90, v146, &qword_27CDF9798, &qword_21CBCBC98);
    (*(v141 + 56))(v91, 0, 1, v142);
  }

  else
  {
    (*(v141 + 56))(v146, 1, 1, v142);
  }

  v92 = (v47 + *(v56 + 28));
  v93 = v92[1];
  if (v93)
  {
    *&v166 = *v92;
    *(&v166 + 1) = v93;
    sub_21C71F3FC();

    v94 = sub_21CB84054();
    v96 = v95;
    v98 = v97;
    v100 = v99;
    v101 = swift_getKeyPath();
    v102 = swift_getKeyPath();
    LOBYTE(v159[0]) = v98 & 1;
    LOBYTE(v148) = 1;
    sub_21CB85224();
    sub_21CB82AC4();
    *&v147[55] = v176[19];
    *&v147[71] = v176[20];
    *&v147[87] = v176[21];
    *&v147[103] = v177;
    *&v147[7] = v176[16];
    *&v147[23] = v176[17];
    *&v147[39] = v176[18];
    *(&v165[4] + 1) = *&v147[64];
    *(&v165[5] + 1) = *&v147[80];
    *(&v165[6] + 1) = *&v147[96];
    *(v165 + 1) = *v147;
    *(&v165[1] + 1) = *&v147[16];
    *(&v165[2] + 1) = *&v147[32];
    *&v161 = v94;
    *(&v161 + 1) = v96;
    LOBYTE(v162) = v98 & 1;
    *(&v162 + 1) = v100;
    *&v163 = v101;
    BYTE8(v163) = 0;
    v164 = v102;
    LOBYTE(v165[0]) = 1;
    *&v165[7] = *(&v177 + 1);
    *(&v165[3] + 1) = *&v147[48];
    WORD4(v165[7]) = 256;
    nullsub_1(&v161);
    v174 = v165[4];
    v175 = v165[5];
    v176[0] = v165[6];
    *(v176 + 10) = *(&v165[6] + 10);
    v170 = v165[0];
    v171 = v165[1];
    v172 = v165[2];
    v173 = v165[3];
    v166 = v161;
    v167 = v162;
    v168 = v163;
    v169 = v164;
  }

  else
  {
    sub_21CB3E92C(&v166);
  }

  v103 = v140;
  v104 = v145;
  sub_21C6EDBAC(v140, v145, &qword_27CDF97B8, &qword_21CBCBCB8);
  v105 = v146;
  v106 = v143;
  sub_21C78BCA0(v146, v143);
  v157 = v175;
  v158[0] = v176[0];
  *(v158 + 10) = *(v176 + 10);
  v153 = v171;
  v154 = v172;
  v155 = v173;
  v156 = v174;
  v148 = v166;
  v149 = v167;
  v150 = v168;
  v151 = v169;
  v152 = v170;
  v107 = v104;
  v108 = v144;
  sub_21C6EDBAC(v107, v144, &qword_27CDF97B8, &qword_21CBCBCB8);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF97C0, &qword_21CBCBCC0);
  sub_21C78BCA0(v106, v108 + *(v109 + 48));
  v110 = *(v109 + 64);
  v111 = v155;
  v159[8] = v156;
  v159[9] = v157;
  v112 = v157;
  v160[0] = v158[0];
  *(v160 + 10) = *(v158 + 10);
  v114 = v151;
  v159[4] = v152;
  v113 = v152;
  v159[5] = v153;
  v115 = v153;
  v159[6] = v154;
  v116 = v154;
  v159[7] = v155;
  v117 = v150;
  v118 = v148;
  v159[0] = v148;
  v159[1] = v149;
  v119 = v149;
  v159[2] = v150;
  v159[3] = v151;
  v120 = (v108 + v110);
  v120[8] = v156;
  v120[9] = v112;
  v120[10] = v158[0];
  *(v120 + 170) = *(v158 + 10);
  v120[4] = v113;
  v120[5] = v115;
  v120[6] = v116;
  v120[7] = v111;
  *v120 = v118;
  v120[1] = v119;
  v120[2] = v117;
  v120[3] = v114;
  sub_21C6EDBAC(v159, &v161, &qword_27CDF97C8, &qword_21CBCBCC8);
  sub_21C6EA794(v105, &qword_27CDF97A0, &qword_21CBCBCA0);
  sub_21C6EA794(v103, &qword_27CDF97B8, &qword_21CBCBCB8);
  v165[4] = v156;
  v165[5] = v157;
  v165[6] = v158[0];
  *(&v165[6] + 10) = *(v158 + 10);
  v165[0] = v152;
  v165[1] = v153;
  v165[2] = v154;
  v165[3] = v155;
  v161 = v148;
  v162 = v149;
  v163 = v150;
  v164 = v151;
  sub_21C6EA794(&v161, &qword_27CDF97C8, &qword_21CBCBCC8);
  sub_21C6EA794(v106, &qword_27CDF97A0, &qword_21CBCBCA0);
  return sub_21C6EA794(v145, &qword_27CDF97B8, &qword_21CBCBCB8);
}

uint64_t sub_21CB3A614@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21CB832E4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9580, &qword_21CBCB9C0);
  sub_21CB3976C(v1, a1 + *(v3 + 44));
  v4 = sub_21CB83CD4();
  sub_21CB81F24();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9588, &qword_21CBCB9C8);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_21CB3A6CC@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_21CB813C4();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v47 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v43[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF95F0, &qword_21CBCBB18);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v43[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF95F8, &qword_21CBCBB20);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v46 = &v43[-v16];
  *v12 = sub_21CB851F4();
  v12[1] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9600, &qword_21CBCBB28);
  sub_21CB3A9F4(v12 + *(v18 + 44));
  v44 = sub_21CB83CF4();
  v45 = v3[2];
  v45(v8, v1, v2);
  v19 = v3[11];
  v19(v8, v2);
  v20 = v3[1];
  v20(v8, v2);
  sub_21CB81F24();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v46;
  sub_21C716934(v12, v46, &qword_27CDF95F0, &qword_21CBCBB18);
  v30 = &v29[*(v14 + 44)];
  *v30 = v44;
  *(v30 + 1) = v22;
  *(v30 + 2) = v24;
  *(v30 + 3) = v26;
  *(v30 + 4) = v28;
  v30[40] = 0;
  LOBYTE(v12) = sub_21CB83D04();
  v31 = v47;
  v45(v47, v1, v2);
  v19(v31, v2);
  v20(v31, v2);
  sub_21CB81F24();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v48;
  sub_21C716934(v29, v48, &qword_27CDF95F8, &qword_21CBCBB20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9608, &qword_21CBCBB30);
  v42 = v40 + *(result + 36);
  *v42 = v12;
  *(v42 + 8) = v33;
  *(v42 + 16) = v35;
  *(v42 + 24) = v37;
  *(v42 + 32) = v39;
  *(v42 + 40) = 0;
  return result;
}

uint64_t sub_21CB3A9F4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9610, &qword_21CBCBB38);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9618, &qword_21CBCBB40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  sub_21CB3ACA4(&v25 - v15);
  sub_21CB3C174(v9);
  sub_21CB84A94();
  v17 = sub_21CB84B04();

  v18 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9620, &qword_21CBCBB48) + 36)];
  *v18 = v17;
  *(v18 + 8) = xmmword_21CBCB9A0;
  *(v18 + 3) = 0x4000000000000000;
  v19 = sub_21CB83304();
  v20 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9628, &qword_21CBCBB50) + 36)];
  *v20 = v19;
  v20[1] = sub_21CB3D078;
  v20[2] = 0;
  v21 = sub_21CB83064();
  v22 = &v9[*(v3 + 44)];
  *v22 = v21;
  v22[1] = sub_21CB3D0A8;
  v22[2] = 0;
  sub_21C6EDBAC(v16, v13, &qword_27CDF9618, &qword_21CBCBB40);
  sub_21C6EDBAC(v9, v6, &qword_27CDF9610, &qword_21CBCBB38);
  sub_21C6EDBAC(v13, a1, &qword_27CDF9618, &qword_21CBCBB40);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9630, &qword_21CBCBB58);
  sub_21C6EDBAC(v6, a1 + *(v23 + 48), &qword_27CDF9610, &qword_21CBCBB38);
  sub_21C6EA794(v9, &qword_27CDF9610, &qword_21CBCBB38);
  sub_21C6EA794(v16, &qword_27CDF9618, &qword_21CBCBB40);
  sub_21C6EA794(v6, &qword_27CDF9610, &qword_21CBCBB38);
  return sub_21C6EA794(v13, &qword_27CDF9618, &qword_21CBCBB40);
}

uint64_t sub_21CB3ACA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v138 = a1;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96F8, &qword_21CBCBBE8);
  v3 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v118 = &v110 - v4;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9700, &qword_21CBCBBF0);
  v5 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v119 = &v110 - v6;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9638, &qword_21CBCBB60);
  v7 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v111 = &v110 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9658, &qword_21CBCBB80);
  v113 = *(v9 - 8);
  v114 = v9;
  v10 = *(v113 + 64);
  MEMORY[0x28223BE20](v9);
  v112 = (&v110 - v11);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9660, &qword_21CBCBB88);
  v12 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v115 = &v110 - v13;
  v14 = sub_21CB81A04();
  v121 = *(v14 - 1);
  v122 = v14;
  v15 = *(v121 + 64);
  MEMORY[0x28223BE20](v14);
  v120 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9708, &qword_21CBCBBF8);
  v17 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v127 = (&v110 - v18);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9710, &qword_21CBCBC00);
  v19 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v129 = &v110 - v20;
  v21 = sub_21CB84BD4();
  v124 = *(v21 - 8);
  v125 = v21;
  v22 = *(v124 + 64);
  MEMORY[0x28223BE20](v21);
  v123 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9718, &qword_21CBCBC08);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v110 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CA0, &unk_21CBA5520);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v110 - v33;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9720, &qword_21CBCBC10);
  v35 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v136 = &v110 - v36;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9728, &qword_21CBCBC18);
  v37 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v130 = (&v110 - v38);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9730, &unk_21CBCBC20);
  v39 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v132 = &v110 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v44 = &v110 - v43;
  v45 = sub_21CB813C4();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v110 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v46 + 16))(v50, v2, v45, v48);
  v51 = (*(v46 + 88))(v50, v45);
  if (v51 == *MEMORY[0x277CBA688])
  {
    (*(v46 + 96))(v50, v45);
    v52 = *v50;
    v53 = *(v50 + 1);
    v54 = sub_21CB84BB4();
    if (!PMOnboardingShouldShowIconBadge())
    {
      goto LABEL_13;
    }

    if (qword_27CDEA4B0 != -1)
    {
      swift_once();
    }

    if ((sub_21C900A10(v2, qword_27CDF9578) & 1) == 0)
    {
LABEL_13:
      v58 = type metadata accessor for PMOsloHeaderImageView(0);
      sub_21C6EDBAC(v2 + *(v58 + 20), v34, &unk_27CDF2CA0, &unk_21CBA5520);
      v59 = type metadata accessor for PMOsloBadge(0);
      (*(*(v59 - 8) + 48))(v34, 1, v59);
      sub_21C6EA794(v34, &unk_27CDF2CA0, &unk_21CBA5520);
    }

    v60 = sub_21CB83DC4();
    (*(*(v60 - 8) + 56))(v44, 1, 1, v60);
    v61 = sub_21CB83E14();
    sub_21C6EA794(v44, &qword_27CDEBB58, &qword_21CBAF8A0);
    KeyPath = swift_getKeyPath();
    v63 = sub_21CB84A74();
    *&v139[0] = v54;
    *(&v139[0] + 1) = KeyPath;
    *&v139[1] = v61;
    *(&v139[1] + 1) = v63;
    LOBYTE(v139[2]) = 0;
LABEL_19:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4570, &unk_21CBBADB0);
    sub_21C8FD504();
    sub_21CB83494();
    v89 = v142[16];
    v90 = *v142;
    v91 = v130;
    *v130 = v141;
    v91[1] = v90;
    *(v91 + 32) = v89;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9748, &qword_21CBCBC30);
    sub_21CB3E6D8();
    sub_21CB3E75C();
    v92 = v132;
    sub_21CB83494();
    sub_21C6EDBAC(v92, v136, &qword_27CDF9730, &unk_21CBCBC20);
    swift_storeEnumTagMultiPayload();
    sub_21CB3E64C();
    sub_21CB3E8A0();
    sub_21CB83494();

    v80 = v92;
    v81 = &qword_27CDF9730;
    v82 = &unk_21CBCBC20;
    return sub_21C6EA794(v80, v81, v82);
  }

  if (v51 == *MEMORY[0x277CBA680])
  {
    (*(v46 + 96))(v50, v45);
    v55 = *v50;
    v56 = *(v50 + 1);
    v57 = sub_21CB84C14();
    if (!PMOnboardingShouldShowIconBadge())
    {
      goto LABEL_17;
    }

    if (qword_27CDEA4B0 != -1)
    {
      swift_once();
    }

    if ((sub_21C900A10(v2, qword_27CDF9578) & 1) == 0)
    {
LABEL_17:
      v83 = type metadata accessor for PMOsloHeaderImageView(0);
      sub_21C6EDBAC(v2 + *(v83 + 20), v31, &unk_27CDF2CA0, &unk_21CBA5520);
      v84 = type metadata accessor for PMOsloBadge(0);
      (*(*(v84 - 8) + 48))(v31, 1, v84);
      sub_21C6EA794(v31, &unk_27CDF2CA0, &unk_21CBA5520);
    }

    v85 = sub_21CB83DC4();
    (*(*(v85 - 8) + 56))(v44, 1, 1, v85);
    v86 = sub_21CB83E14();
    sub_21C6EA794(v44, &qword_27CDEBB58, &qword_21CBAF8A0);
    v87 = swift_getKeyPath();
    v88 = sub_21CB84A74();
    *&v139[0] = v57;
    *(&v139[0] + 1) = v87;
    *&v139[1] = v86;
    *(&v139[1] + 1) = v88;
    LOBYTE(v139[2]) = 1;
    goto LABEL_19;
  }

  if (v51 == *MEMORY[0x277CBA678])
  {
    (*(v46 + 96))(v50, v45);
    v64 = *v50;
    v65 = *(v50 + 1);
    v122 = *(v50 + 2);
    sub_21CB84C74();
    v66 = *MEMORY[0x277CE1020];
    v67 = sub_21CB84C34();
    v68 = *(v67 - 8);
    (*(v68 + 104))(v27, v66, v67);
    (*(v68 + 56))(v27, 0, 1, v67);
    sub_21CB84C04();

    sub_21C6EA794(v27, &qword_27CDF9718, &qword_21CBCBC08);
    v70 = v123;
    v69 = v124;
    v71 = v125;
    (*(v124 + 104))(v123, *MEMORY[0x277CE0FE0], v125);
    v72 = sub_21CB84C64();

    (*(v69 + 8))(v70, v71);
    [objc_opt_self() headerIconSize];
    sub_21CB85214();
    sub_21CB82374();
    LOBYTE(v141) = 1;
    *&v140[6] = v144;
    *&v140[22] = v145;
    *&v140[38] = v146;
    v73 = sub_21CB84A74();
    v141 = v72;
    *v142 = 1;
    *&v142[2] = *v140;
    *&v142[18] = *&v140[16];
    *&v142[34] = *&v140[32];
    *&v142[48] = *&v140[46];
    *&v142[56] = v73;
    v74 = *v142;
    v75 = *&v142[16];
    v76 = *&v142[48];
    v77 = v127;
    v127[3] = *&v142[32];
    v77[4] = v76;
    v77[1] = v74;
    v77[2] = v75;
    *v77 = v72;
    swift_storeEnumTagMultiPayload();
    sub_21C6EDBAC(&v141, v139, &qword_27CDF9760, &qword_21CBCBC38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9760, &qword_21CBCBC38);
    sub_21CB3E7E8();
    sub_21CB3E194();
    v78 = v129;
    sub_21CB83494();
    sub_21C6EDBAC(v78, v130, &qword_27CDF9710, &qword_21CBCBC00);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9748, &qword_21CBCBC30);
    sub_21CB3E6D8();
    sub_21CB3E75C();
    v79 = v132;
    sub_21CB83494();
    sub_21C6EA794(v78, &qword_27CDF9710, &qword_21CBCBC00);
    sub_21C6EDBAC(v79, v136, &qword_27CDF9730, &unk_21CBCBC20);
    swift_storeEnumTagMultiPayload();
    sub_21CB3E64C();
    sub_21CB3E8A0();
    sub_21CB83494();

    sub_21C6EA794(&v141, &qword_27CDF9760, &qword_21CBCBC38);
    v80 = v79;
    v81 = &qword_27CDF9730;
    v82 = &unk_21CBCBC20;
    return sub_21C6EA794(v80, v81, v82);
  }

  if (v51 == *MEMORY[0x277CBA668])
  {
    (*(v46 + 96))(v50, v45);
    (*(v121 + 32))(v120, v50, v122);
    sub_21C6E8F4C(0, &qword_27CDF4610, 0x277CBA968);
    [objc_opt_self() headerIconSize];
    v94 = sub_21CB85D94();
    if (v94)
    {
      v95 = v94;
      v96 = sub_21CB84BA4();
      v97 = v112;
      sub_21CB3D0D8(0, v96, v112);

      v98 = v115;
      sub_21C716934(v97, v115, &qword_27CDF9658, &qword_21CBCBB80);
      v99 = 0;
    }

    else
    {
      v99 = 1;
      v98 = v115;
    }

    (*(v113 + 56))(v98, v99, 1, v114);
    sub_21C6EDBAC(v98, v127, &qword_27CDF9660, &qword_21CBCBB88);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9760, &qword_21CBCBC38);
    sub_21CB3E7E8();
    sub_21CB3E194();
    v108 = v129;
    sub_21CB83494();
    sub_21C6EDBAC(v108, v130, &qword_27CDF9710, &qword_21CBCBC00);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9748, &qword_21CBCBC30);
    sub_21CB3E6D8();
    sub_21CB3E75C();
    v109 = v132;
    sub_21CB83494();
    sub_21C6EA794(v108, &qword_27CDF9710, &qword_21CBCBC00);
    sub_21C6EDBAC(v109, v136, &qword_27CDF9730, &unk_21CBCBC20);
    swift_storeEnumTagMultiPayload();
    sub_21CB3E64C();
    sub_21CB3E8A0();
    sub_21CB83494();
    sub_21C6EA794(v109, &qword_27CDF9730, &unk_21CBCBC20);
    sub_21C6EA794(v98, &qword_27CDF9660, &qword_21CBCBB88);
    return (*(v121 + 8))(v120, v122);
  }

  else
  {
    if (v51 == *MEMORY[0x277CBA670])
    {
      (*(v46 + 96))(v50, v45);
      v100 = *v50;
      sub_21CB84BA4();
      v102 = v123;
      v101 = v124;
      v103 = v125;
      (*(v124 + 104))(v123, *MEMORY[0x277CE0FE0], v125);
      v104 = sub_21CB84C64();

      (*(v101 + 8))(v102, v103);
      [objc_opt_self() headerIconSize];
      sub_21CB85214();
      sub_21CB82374();
      *(v139 + 6) = v144;
      *(&v139[1] + 6) = v145;
      *(&v139[2] + 6) = v146;
      *&v142[2] = v139[0];
      v143 = 1;
      v141 = v104;
      *v142 = 1;
      *&v142[18] = v139[1];
      *&v142[34] = v139[2];
      *&v142[48] = *(&v146 + 1);
      v105 = v111;
      sub_21CB3D394(0, v111);
      sub_21C6EA794(&v141, &qword_27CDEBAA0, &unk_21CBA2B50);
      sub_21C6EDBAC(v105, v118, &qword_27CDF9638, &qword_21CBCBB60);
      swift_storeEnumTagMultiPayload();
      sub_21CB3E388();
      v106 = v119;
      sub_21CB83494();
      sub_21C6EDBAC(v106, v136, &qword_27CDF9700, &qword_21CBCBBF0);
      swift_storeEnumTagMultiPayload();
      sub_21CB3E64C();
      sub_21CB3E8A0();
      sub_21CB83494();

      sub_21C6EA794(v106, &qword_27CDF9700, &qword_21CBCBBF0);
      v80 = v105;
      v81 = &qword_27CDF9638;
      v82 = &qword_21CBCBB60;
      return sub_21C6EA794(v80, v81, v82);
    }

    swift_storeEnumTagMultiPayload();
    sub_21CB3E388();
    v107 = v119;
    sub_21CB83494();
    sub_21C6EDBAC(v107, v136, &qword_27CDF9700, &qword_21CBCBBF0);
    swift_storeEnumTagMultiPayload();
    sub_21CB3E64C();
    sub_21CB3E8A0();
    sub_21CB83494();
    sub_21C6EA794(v107, &qword_27CDF9700, &qword_21CBCBBF0);
    return (*(v46 + 8))(v50, v45);
  }
}

uint64_t sub_21CB3C174@<X0>(uint64_t a1@<X8>)
{
  v105 = a1;
  v95 = sub_21CB84BD4();
  v94 = *(v95 - 8);
  v2 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9638, &qword_21CBCBB60);
  v4 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v89 = &v84 - v5;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9640, &qword_21CBCBB68);
  v6 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v103 = &v84 - v7;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9648, &qword_21CBCBB70);
  v8 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v98 = &v84 - v9;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9650, &qword_21CBCBB78);
  v10 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v100 = &v84 - v11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9658, &qword_21CBCBB80);
  v86 = *(v87 - 8);
  v12 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = (&v84 - v13);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9660, &qword_21CBCBB88);
  v14 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v88 = &v84 - v15;
  v92 = sub_21CB81A04();
  v91 = *(v92 - 1);
  v16 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9668, &qword_21CBCBB90);
  v106 = *(v107 - 8);
  v18 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v104 = &v84 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CA0, &unk_21CBA5520);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v84 - v22;
  v24 = type metadata accessor for PMOsloBadge(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v84 - v30;
  v32 = sub_21CB813C4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v84 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v37, v1, v32, v35);
  v38 = (*(v33 + 88))(v37, v32);
  v39 = 1;
  if (v38 != *MEMORY[0x277CBA688] && v38 != *MEMORY[0x277CBA680] && v38 != *MEMORY[0x277CBA678])
  {
    if (v38 == *MEMORY[0x277CBA670] || v38 == *MEMORY[0x277CBA668])
    {
      v39 = 2;
    }

    else
    {
      v39 = 1;
    }
  }

  (*(v33 + 8))(v37, v32);
  v41 = type metadata accessor for PMOsloHeaderImageView(0);
  sub_21C6EDBAC(v1 + *(v41 + 20), v23, &unk_27CDF2CA0, &unk_21CBA5520);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_21C6EA794(v23, &unk_27CDF2CA0, &unk_21CBA5520);
    v42 = 1;
    v43 = v105;
  }

  else
  {
    v44 = v31;
    sub_21CB3EBE8(v23, v31, type metadata accessor for PMOsloBadge);
    sub_21CB3E584(v31, v28, type metadata accessor for PMOsloBadge);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v46 = v104;
      if (EnumCaseMultiPayload == 1)
      {
        v92 = *v28;
        sub_21CB84BA4();
        v47 = v94;
        v48 = v93;
        v49 = v95;
        (*(v94 + 104))(v93, *MEMORY[0x277CE0FE0], v95);
        v50 = sub_21CB84C64();

        (*(v47 + 8))(v48, v49);
        v51 = objc_opt_self();
        v52 = &selRef_headerSmallBadgeIconSize;
        if (v39 != 2)
        {
          v52 = &selRef_headerBadgeIconSize;
        }

        [v51 *v52];
        sub_21CB85214();
        sub_21CB82374();
        *(v108 + 6) = v113;
        *(&v108[1] + 6) = v114;
        *(&v108[2] + 6) = v115;
        *&v110[2] = v108[0];
        v112 = 1;
        v109 = v50;
        *v110 = 1;
        *&v110[18] = v108[1];
        *&v110[34] = v108[2];
        *&v110[48] = *(&v115 + 1);
        v53 = v89;
        sub_21CB3D394(v39, v89);
        sub_21C6EA794(&v109, &qword_27CDEBAA0, &unk_21CBA2B50);
        sub_21C6EDBAC(v53, v98, &qword_27CDF9638, &qword_21CBCBB60);
        swift_storeEnumTagMultiPayload();
        sub_21CB3E194();
        sub_21CB3E388();
        v54 = v100;
        sub_21CB83494();
        sub_21C6EDBAC(v54, v103, &qword_27CDF9650, &qword_21CBCBB78);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9670, &qword_21CBCBB98);
        sub_21CB3E108();
        sub_21CB3E440();
        sub_21CB83494();

        sub_21C6EA794(v54, &qword_27CDF9650, &qword_21CBCBB78);
        v55 = v53;
        v56 = &qword_27CDF9638;
        v57 = &qword_21CBCBB60;
      }

      else
      {
        v66 = *v28;
        v67 = *(v28 + 1);
        v69 = *(v28 + 2);
        v68 = *(v28 + 3);
        sub_21CB84BB4();
        v70 = v94;
        v71 = v46;
        v72 = v93;
        v73 = v95;
        (*(v94 + 104))(v93, *MEMORY[0x277CE0FE0], v95);
        v74 = sub_21CB84C64();

        v75 = v72;
        v46 = v71;
        (*(v70 + 8))(v75, v73);
        LODWORD(v73) = v39;
        v76 = objc_opt_self();

        v77 = &selRef_headerSmallBadgeIconSize;
        if (v73 != 2)
        {
          v77 = &selRef_headerBadgeIconSize;
        }

        [v76 *v77];
        sub_21CB85214();
        sub_21CB82374();
        v112 = 1;
        v109 = v74;
        *v110 = 1;
        *&v110[2] = v113;
        *&v110[6] = WORD2(v113);
        *&v110[8] = v69;
        *&v110[16] = v68;
        v78 = *&v110[48];
        v79 = v103;
        *(v103 + 48) = *&v110[32];
        *(v79 + 64) = v78;
        *(v79 + 80) = v111;
        v80 = *&v110[16];
        v81 = *v110;
        *v79 = v109;
        *(v79 + 16) = v81;
        *(v79 + 32) = v80;
        swift_storeEnumTagMultiPayload();
        sub_21C6EDBAC(&v109, v108, &qword_27CDF9670, &qword_21CBCBB98);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9670, &qword_21CBCBB98);
        sub_21CB3E108();
        sub_21CB3E440();
        sub_21CB83494();

        v55 = &v109;
        v56 = &qword_27CDF9670;
        v57 = &qword_21CBCBB98;
      }

      sub_21C6EA794(v55, v56, v57);
      sub_21CB3E5EC(v44, type metadata accessor for PMOsloBadge);
      v43 = v105;
    }

    else
    {
      (*(v91 + 32))(v90, v28, v92);
      v58 = objc_opt_self();
      v59 = &selRef_headerSmallBadgeIconSize;
      if (v39 != 2)
      {
        v59 = &selRef_headerBadgeIconSize;
      }

      [v58 *v59];
      sub_21C6E8F4C(0, &qword_27CDF4610, 0x277CBA968);
      v60 = sub_21CB85D94();
      v43 = v105;
      v46 = v104;
      if (v60)
      {
        v61 = v60;
        v62 = sub_21CB84BA4();
        v63 = v85;
        sub_21CB3D0D8(v39, v62, v85);

        v64 = v88;
        sub_21C716934(v63, v88, &qword_27CDF9658, &qword_21CBCBB80);
        v65 = 0;
      }

      else
      {
        v65 = 1;
        v64 = v88;
      }

      (*(v86 + 56))(v64, v65, 1, v87);
      sub_21C6EDBAC(v64, v98, &qword_27CDF9660, &qword_21CBCBB88);
      swift_storeEnumTagMultiPayload();
      sub_21CB3E194();
      sub_21CB3E388();
      v82 = v100;
      sub_21CB83494();
      sub_21C6EDBAC(v82, v103, &qword_27CDF9650, &qword_21CBCBB78);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9670, &qword_21CBCBB98);
      sub_21CB3E108();
      sub_21CB3E440();
      sub_21CB83494();
      sub_21C6EA794(v82, &qword_27CDF9650, &qword_21CBCBB78);
      sub_21C6EA794(v64, &qword_27CDF9660, &qword_21CBCBB88);
      (*(v91 + 8))(v90, v92);
      sub_21CB3E5EC(v31, type metadata accessor for PMOsloBadge);
    }

    sub_21C716934(v46, v43, &qword_27CDF9668, &qword_21CBCBB90);
    v42 = 0;
  }

  return (*(v106 + 56))(v43, v42, 1, v107);
}

uint64_t sub_21CB3D0D8@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_21CB82A84();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [objc_opt_self() *off_27831D080[a1]];
  v12 = v11;
  v13 = *(v7 + 28);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_21CB831A4();
  (*(*(v15 - 8) + 104))(&v10[v13], v14, v15);
  *v10 = v12;
  *(v10 + 1) = v12;
  v16 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9698, &unk_21CBCBBA0) + 36);
  v17 = MEMORY[0x277CDFC08];
  sub_21CB3E584(v10, v16, MEMORY[0x277CDFC08]);
  *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAC0, &qword_21CBA2B60) + 36)) = 256;
  *a3 = a2;
  v18 = objc_opt_self();

  v19 = [v18 iconBorderColor];
  v20 = sub_21CB84A24();
  [v18 iconBorderWidth];
  sub_21CB82164();
  v21 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9658, &qword_21CBCBB80) + 36);
  sub_21CB3E584(v10, v21, v17);
  v22 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96E0, &qword_21CBCBBD0) + 36);
  v23 = v35;
  *v22 = *&v34[8];
  *(v22 + 16) = v23;
  *(v22 + 32) = v36;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96E8, &qword_21CBCBBD8);
  *(v21 + *(v24 + 52)) = v20;
  *(v21 + *(v24 + 56)) = 256;
  v25 = sub_21CB85214();
  v27 = v26;
  v28 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96F0, &qword_21CBCBBE0) + 36));
  *v28 = v25;
  v28[1] = v27;
  v29 = sub_21CB85214();
  v31 = v30;
  sub_21CB3E5EC(v10, v17);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96A8, &unk_21CBCBBB0);
  v33 = (v21 + *(result + 36));
  *v33 = v29;
  v33[1] = v31;
  return result;
}

uint64_t sub_21CB3D394@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_21CB82A84();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() *off_27831D080[a1]];
  v12 = v11;
  v13 = *(v7 + 28);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_21CB831A4();
  (*(*(v15 - 8) + 104))(&v10[v13], v14, v15);
  *v10 = v12;
  *(v10 + 1) = v12;
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA90, &qword_21CBA2B48) + 36);
  v17 = MEMORY[0x277CDFC08];
  sub_21CB3E584(v10, v16, MEMORY[0x277CDFC08]);
  *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAC0, &qword_21CBA2B60) + 36)) = 256;
  v18 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v18;
  *(a2 + 64) = *(v3 + 64);
  v19 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v19;
  v20 = objc_opt_self();
  sub_21C6EDBAC(v3, v37, &qword_27CDEBAA0, &unk_21CBA2B50);
  v21 = [v20 iconBorderColor];
  v22 = sub_21CB84A24();
  [v20 iconBorderWidth];
  sub_21CB82164();
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9638, &qword_21CBCBB60) + 36);
  sub_21CB3E584(v10, v23, v17);
  v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96E0, &qword_21CBCBBD0) + 36);
  v25 = v37[1];
  *v24 = v37[0];
  *(v24 + 16) = v25;
  *(v24 + 32) = v38;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96E8, &qword_21CBCBBD8);
  *(v23 + *(v26 + 52)) = v22;
  *(v23 + *(v26 + 56)) = 256;
  v27 = sub_21CB85214();
  v29 = v28;
  v30 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96F0, &qword_21CBCBBE0) + 36));
  *v30 = v27;
  v30[1] = v29;
  v31 = sub_21CB85214();
  v33 = v32;
  sub_21CB3E5EC(v10, v17);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96A8, &unk_21CBCBBB0);
  v35 = (v23 + *(result + 36));
  *v35 = v31;
  v35[1] = v33;
  return result;
}

uint64_t sub_21CB3D67C()
{
  v0 = sub_21CB813C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  v8 = sub_21CB81814();
  v9 = sub_21CB01200(v8, sub_21CB3D7B8, 0);

  v12 = v9;
  sub_21CB81394();
  sub_21CA96B80(v7, v4);
  result = (*(v1 + 8))(v7, v0);
  qword_27CDF9578 = v12;
  return result;
}

uint64_t sub_21CB3D7BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82E04();
  *a1 = result;
  return result;
}

uint64_t _s17PasswordManagerUI11PMOsloBadgeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = sub_21CB81A04();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMOsloBadge(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v40 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9770, &qword_21CBCBC70);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v40 - v19;
  v22 = (&v40 + *(v21 + 56) - v19);
  sub_21CB3E584(a1, &v40 - v19, type metadata accessor for PMOsloBadge);
  sub_21CB3E584(v41, v22, type metadata accessor for PMOsloBadge);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v27 = v40;
    sub_21CB3E584(v20, v16, type metadata accessor for PMOsloBadge);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v27 + 32))(v6, v22, v3);
      v26 = MEMORY[0x21CF114F0](v16, v6);
      v37 = *(v27 + 8);
      v37(v6, v3);
      v37(v16, v3);
      goto LABEL_22;
    }

    (*(v27 + 8))(v16, v3);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_21CB3E584(v20, v13, type metadata accessor for PMOsloBadge);
    v24 = *v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = *v22;
      sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
      v26 = sub_21CB85DD4();

LABEL_22:
      sub_21CB3E5EC(v20, type metadata accessor for PMOsloBadge);
      return v26 & 1;
    }

    goto LABEL_16;
  }

  sub_21CB3E584(v20, v10, type metadata accessor for PMOsloBadge);
  v29 = *v10;
  v28 = v10[1];
  v31 = v10[2];
  v30 = v10[3];
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v33 = v22[2];
    v32 = v22[3];
    if (v29 == *v22 && v28 == v22[1])
    {
      v38 = v22[1];
    }

    else
    {
      v35 = v22[1];
      v36 = sub_21CB86344();

      if ((v36 & 1) == 0)
      {
LABEL_24:

        sub_21CB3E5EC(v20, type metadata accessor for PMOsloBadge);
        goto LABEL_17;
      }
    }

    if (sub_21CB84A54())
    {
      v26 = sub_21CB84A54();

      goto LABEL_22;
    }

    goto LABEL_24;
  }

LABEL_16:
  sub_21C6EA794(v20, &qword_27CDF9770, &qword_21CBCBC70);
LABEL_17:
  v26 = 0;
  return v26 & 1;
}

void sub_21CB3DCDC()
{
  sub_21CB3DDB0(319, &qword_27CDF95A0, MEMORY[0x277CBA690]);
  if (v0 <= 0x3F)
  {
    sub_21CB3DDB0(319, &qword_27CDEE588, type metadata accessor for PMOsloBadge);
    if (v1 <= 0x3F)
    {
      sub_21C6EDA64();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CB3DDB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB85E54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21CB3DE04()
{
  sub_21CB81A04();
  if (v0 <= 0x3F)
  {
    sub_21CB3DE8C();
    if (v1 <= 0x3F)
    {
      sub_21CB3DEE4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_21CB3DE8C()
{
  if (!qword_27CDF95B8)
  {
    v0 = sub_21C6E8F4C(0, &qword_27CDEBB30, 0x277D755B8);
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF95B8);
    }
  }
}

void sub_21CB3DEE4()
{
  if (!qword_27CDF95C0)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CDF95C0);
    }
  }
}

unint64_t sub_21CB3DF4C()
{
  result = qword_27CDF95C8;
  if (!qword_27CDF95C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9588, &qword_21CBCB9C8);
    sub_21C6EADEC(&qword_27CDF95D0, &qword_27CDF95D8, &unk_21CBCBAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF95C8);
  }

  return result;
}

void sub_21CB3E04C()
{
  sub_21CB813C4();
  if (v0 <= 0x3F)
  {
    sub_21CB3DDB0(319, &qword_27CDEE588, type metadata accessor for PMOsloBadge);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21CB3E108()
{
  result = qword_27CDF9678;
  if (!qword_27CDF9678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9650, &qword_21CBCBB78);
    sub_21CB3E194();
    sub_21CB3E388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9678);
  }

  return result;
}

unint64_t sub_21CB3E194()
{
  result = qword_27CDF9680;
  if (!qword_27CDF9680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9660, &qword_21CBCBB88);
    sub_21CB3E218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9680);
  }

  return result;
}

unint64_t sub_21CB3E218()
{
  result = qword_27CDF9688;
  if (!qword_27CDF9688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9658, &qword_21CBCBB80);
    sub_21CB3E2D0();
    sub_21C6EADEC(&qword_27CDF96A0, &qword_27CDF96A8, &unk_21CBCBBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9688);
  }

  return result;
}

unint64_t sub_21CB3E2D0()
{
  result = qword_27CDF9690;
  if (!qword_27CDF9690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9698, &unk_21CBCBBA0);
    sub_21C6EADEC(&qword_27CDEBAB8, &qword_27CDEBAC0, &qword_21CBA2B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9690);
  }

  return result;
}

unint64_t sub_21CB3E388()
{
  result = qword_27CDF96B0;
  if (!qword_27CDF96B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9638, &qword_21CBCBB60);
    sub_21C7E8F5C();
    sub_21C6EADEC(&qword_27CDF96A0, &qword_27CDF96A8, &unk_21CBCBBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF96B0);
  }

  return result;
}

unint64_t sub_21CB3E440()
{
  result = qword_27CDF96B8;
  if (!qword_27CDF96B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9670, &qword_21CBCBB98);
    sub_21CB3E4CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF96B8);
  }

  return result;
}

unint64_t sub_21CB3E4CC()
{
  result = qword_27CDF96C0;
  if (!qword_27CDF96C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF96C8, &qword_21CBCBBC0);
    sub_21C738AA4();
    sub_21C6EADEC(&qword_27CDF96D0, &qword_27CDF96D8, &qword_21CBCBBC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF96C0);
  }

  return result;
}

uint64_t sub_21CB3E584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB3E5EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CB3E64C()
{
  result = qword_27CDF9738;
  if (!qword_27CDF9738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9730, &unk_21CBCBC20);
    sub_21CB3E6D8();
    sub_21CB3E75C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9738);
  }

  return result;
}

unint64_t sub_21CB3E6D8()
{
  result = qword_27CDF9740;
  if (!qword_27CDF9740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9748, &qword_21CBCBC30);
    sub_21C8FD504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9740);
  }

  return result;
}

unint64_t sub_21CB3E75C()
{
  result = qword_27CDF9750;
  if (!qword_27CDF9750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9710, &qword_21CBCBC00);
    sub_21CB3E7E8();
    sub_21CB3E194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9750);
  }

  return result;
}

unint64_t sub_21CB3E7E8()
{
  result = qword_27CDF9758;
  if (!qword_27CDF9758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9760, &qword_21CBCBC38);
    sub_21C738A18();
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9758);
  }

  return result;
}

unint64_t sub_21CB3E8A0()
{
  result = qword_27CDF9768;
  if (!qword_27CDF9768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9700, &qword_21CBCBBF0);
    sub_21CB3E388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9768);
  }

  return result;
}

double sub_21CB3E92C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 170) = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_21CB3E950()
{
  result = qword_27CDF97D0;
  if (!qword_27CDF97D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9790, &qword_21CBCBC90);
    sub_21CB3E9DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF97D0);
  }

  return result;
}

unint64_t sub_21CB3E9DC()
{
  result = qword_27CDF97D8;
  if (!qword_27CDF97D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9788, &qword_21CBCBC88);
    sub_21CB3EA68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF97D8);
  }

  return result;
}

unint64_t sub_21CB3EA68()
{
  result = qword_27CDF97E0;
  if (!qword_27CDF97E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9780, &qword_21CBCBC80);
    sub_21CB3EAF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF97E0);
  }

  return result;
}

unint64_t sub_21CB3EAF4()
{
  result = qword_27CDF97E8;
  if (!qword_27CDF97E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9778, &qword_21CBCBC78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF23D8, &unk_21CBCBD30);
    sub_21C95BFC8();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF97E8);
  }

  return result;
}

uint64_t sub_21CB3EBE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CB3EC50()
{
  result = qword_27CDF97F0;
  if (!qword_27CDF97F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF97A8, &qword_21CBCBCA8);
    sub_21CB3ECDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF97F0);
  }

  return result;
}

unint64_t sub_21CB3ECDC()
{
  result = qword_27CDF97F8;
  if (!qword_27CDF97F8)
  {
    type metadata accessor for PMOsloHeaderImageView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF97F8);
  }

  return result;
}

unint64_t sub_21CB3ED34()
{
  result = qword_27CDF9800;
  if (!qword_27CDF9800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9608, &qword_21CBCBB30);
    sub_21CB3EDC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9800);
  }

  return result;
}

unint64_t sub_21CB3EDC0()
{
  result = qword_27CDF9808;
  if (!qword_27CDF9808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF95F8, &qword_21CBCBB20);
    sub_21C6EADEC(&qword_27CDF9810, &qword_27CDF95F0, &qword_21CBCBB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9808);
  }

  return result;
}

uint64_t sub_21CB3EEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v29 = a3;
  v28 = sub_21CB83E74();
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v28);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v31 = a2;
  sub_21C71F3FC();

  v9 = sub_21CB84054();
  v11 = v10;
  v13 = v12;
  LODWORD(v30) = sub_21CB837E4();
  v14 = sub_21CB83FC4();
  v16 = v15;
  v18 = v17;
  sub_21C74A72C(v9, v11, v13 & 1);

  sub_21CB83EB4();
  v19 = v28;
  (*(v5 + 104))(v8, *MEMORY[0x277CE0A10], v28);
  sub_21CB83EA4();

  (*(v5 + 8))(v8, v19);
  v20 = sub_21CB84024();
  v22 = v21;
  LOBYTE(v8) = v23;
  v25 = v24;

  sub_21C74A72C(v14, v16, v18 & 1);

  v27 = v29;
  *v29 = v20;
  v27[1] = v22;
  *(v27 + 16) = v8 & 1;
  v27[3] = v25;
  return result;
}

uint64_t sub_21CB3F0BC@<X0>(uint64_t a1@<X8>)
{
  v14 = *v1;
  v15 = v1[1];
  sub_21CB85054();
  v3 = sub_21CB83D44();
  sub_21CB81F24();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9818, &qword_21CBCBDD0);
  v13 = a1 + *(result + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

unint64_t sub_21CB3F180()
{
  result = qword_27CDF9820;
  if (!qword_27CDF9820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9818, &qword_21CBCBDD0);
    sub_21CB3F20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9820);
  }

  return result;
}

unint64_t sub_21CB3F20C()
{
  result = qword_27CDF9828;
  if (!qword_27CDF9828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9830, &qword_21CBCBDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9828);
  }

  return result;
}

uint64_t type metadata accessor for PMAdapativeStackLabeledContentStyle()
{
  result = qword_27CDF9838;
  if (!qword_27CDF9838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CB3F308()
{
  sub_21C72C81C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21CB3F3A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_21CB82834();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + *(type metadata accessor for PMAdapativeStackLabeledContentStyle() + 24);
  sub_21C7448E0(v10);
  LOBYTE(v11) = sub_21CB82824();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v15 = sub_21CB832F4();
    v16 = 0x4000000000000000;
    v17 = 0;
    sub_21CB3FB20();
  }

  else
  {
    v15 = *v3;
    v16 = 0;
    v17 = 1;
    sub_21CB3FACC();
  }

  *a2 = sub_21CB85274();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9850, &qword_21CBCBE40);
  return sub_21CB3F520(a1, v3, a2 + *(v12 + 44));
}

uint64_t sub_21CB3F520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v5 = sub_21CB83B84();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v5);
  v59 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9860, &qword_21CBCBE48);
  v8 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v63 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v51 - v11;
  MEMORY[0x28223BE20](v12);
  v62 = &v51 - v13;
  v14 = sub_21CB82834();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_21CB83B94();
  v19 = *(v53 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v53);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9868, &qword_21CBCBE50);
  v23 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v51 - v26;
  MEMORY[0x28223BE20](v28);
  v54 = &v51 - v29;
  v58 = a1;
  sub_21CB83BA4();
  if (*(a2 + 8))
  {
    v30 = 0;
    LOBYTE(v31) = 1;
  }

  else
  {
    v32 = a2 + *(type metadata accessor for PMAdapativeStackLabeledContentStyle() + 24);
    sub_21C7448E0(v18);
    v31 = sub_21CB82824();
    (*(v15 + 8))(v18, v14);
    v30 = ~v31 & 1;
  }

  KeyPath = swift_getKeyPath();
  (*(v19 + 32))(v27, v22, v53);
  v34 = &v27[*(v52 + 36)];
  *v34 = KeyPath;
  *(v34 + 1) = v30;
  v34[16] = v31 & 1;
  v35 = v54;
  sub_21C716934(v27, v54, &qword_27CDF9868, &qword_21CBCBE50);
  v36 = *(type metadata accessor for PMAdapativeStackLabeledContentStyle() + 24);
  sub_21C7448E0(v18);
  v37 = sub_21CB82824();
  v38 = *(v15 + 8);
  v38(v18, v14);
  LODWORD(v53) = (v37 & 1) == 0;
  v39 = v59;
  sub_21CB83BB4();
  sub_21C7448E0(v18);
  v40 = sub_21CB82824();
  v38(v18, v14);
  v41 = swift_getKeyPath();
  v42 = v56;
  (*(v60 + 32))(v56, v39, v61);
  v43 = v42 + *(v57 + 36);
  *v43 = v41;
  *(v43 + 8) = (v40 & 1) == 0;
  *(v43 + 16) = v40 & 1;
  v44 = v62;
  sub_21C716934(v42, v62, &qword_27CDF9860, &qword_21CBCBE48);
  v45 = v55;
  sub_21C6EDBAC(v35, v55, &qword_27CDF9868, &qword_21CBCBE50);
  v46 = v63;
  sub_21C6EDBAC(v44, v63, &qword_27CDF9860, &qword_21CBCBE48);
  v47 = v64;
  sub_21C6EDBAC(v45, v64, &qword_27CDF9868, &qword_21CBCBE50);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9870, &qword_21CBCBE88);
  v49 = v47 + *(v48 + 48);
  *v49 = 0;
  *(v49 + 8) = v53;
  *(v49 + 9) = v37 & 1;
  sub_21C6EDBAC(v46, v47 + *(v48 + 64), &qword_27CDF9860, &qword_21CBCBE48);
  sub_21C6EA794(v44, &qword_27CDF9860, &qword_21CBCBE48);
  sub_21C6EA794(v35, &qword_27CDF9868, &qword_21CBCBE50);
  sub_21C6EA794(v46, &qword_27CDF9860, &qword_21CBCBE48);
  return sub_21C6EA794(v45, &qword_27CDF9868, &qword_21CBCBE50);
}

unint64_t sub_21CB3FACC()
{
  result = qword_27CDF9848;
  if (!qword_27CDF9848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9848);
  }

  return result;
}

unint64_t sub_21CB3FB20()
{
  result = qword_27CDF9858;
  if (!qword_27CDF9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9858);
  }

  return result;
}

unint64_t sub_21CB3FB74()
{
  result = qword_27CDF9878;
  if (!qword_27CDF9878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9850, &qword_21CBCBE40);
    sub_21C6EADEC(&qword_27CDF9880, &qword_27CDF9888, &qword_21CBCBE90);
    sub_21C6EADEC(&qword_27CDF9890, &qword_27CDF9898, &qword_21CBCBE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9878);
  }

  return result;
}

uint64_t sub_21CB3FC5C(unsigned __int8 a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_21CB81014();
  if (a1 > 1u)
  {
    v10 = sub_21CB81004();
    (*(v3 + 8))(v9, v2);
  }

  else
  {
    sub_21CB81014();
    v10 = sub_21CB80FF4();
    v11 = *(v3 + 8);
    v11(v6, v2);
    v11(v9, v2);
  }

  return v10;
}

unint64_t sub_21CB3FE88@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21C713C64(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_21CB3FED4()
{
  result = qword_27CDF98A0;
  if (!qword_27CDF98A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEB80, &qword_21CBAABC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF98A0);
  }

  return result;
}

uint64_t sub_21CB3FF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21CB82804();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21C7316D8(*v2, *(v2 + 8)))
  {
    sub_21CB827F4();
  }

  else
  {
    sub_21CB827E4();
  }

  KeyPath = swift_getKeyPath();
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF98A8, &qword_21CBCC0D8) + 36));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF98B0, &qword_21CBCC0E0);
  (*(v6 + 32))(v11 + *(v12 + 28), v9, v5);
  *v11 = KeyPath;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF98B8, &qword_21CBCC0E8);
  return (*(*(v13 - 8) + 16))(a2, a1, v13);
}

uint64_t sub_21CB400EC(uint64_t a1)
{
  v2 = sub_21CB82804();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_21CB82C74();
}

unint64_t sub_21CB401B4()
{
  result = qword_27CDF98C0;
  if (!qword_27CDF98C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF98A8, &qword_21CBCC0D8);
    sub_21C6EADEC(&qword_27CDF98C8, &qword_27CDF98B8, &qword_21CBCC0E8);
    sub_21C6EADEC(&qword_27CDF98D0, &qword_27CDF98B0, &qword_21CBCC0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF98C0);
  }

  return result;
}

uint64_t sub_21CB40298(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = type metadata accessor for PMAppSourceListModel.Source(0);
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v39 - v21;
  MEMORY[0x28223BE20](v20);
  v25 = &v39 - v23;
  v26 = *a1;
  v27 = *a4;
  if (v26 != 1)
  {
    v43 = v24;
    v40 = v12;
    swift_getKeyPath();
    v44 = v27;
    sub_21C7062A0(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
    sub_21CB810D4();

    v28 = a5;
    v29 = v8;
    v30 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
    swift_beginAccess();
    sub_21C744908(v28, v22, type metadata accessor for PMAppSourceListModel.Source);
    v41 = v9[7];
    v42 = v9 + 7;
    v41(v22, 0, 1, v29);
    v31 = *(v13 + 48);
    v32 = v27 + v30;
    v33 = v29;
    sub_21C6EDBAC(v32, v16, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C6EDBAC(v22, &v16[v31], &qword_27CDEAC20, &qword_21CBAD710);
    v34 = v9[6];
    if (v34(v16, 1, v29) == 1)
    {
      sub_21C6EA794(v22, &qword_27CDEAC20, &qword_21CBAD710);
      if (v34(&v16[v31], 1, v29) == 1)
      {
        sub_21C6EA794(v16, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_10:
        v41(v25, 1, 1, v33);
        return sub_21C742C88(v25);
      }
    }

    else
    {
      v35 = v43;
      sub_21C6EDBAC(v16, v43, &qword_27CDEAC20, &qword_21CBAD710);
      if (v34(&v16[v31], 1, v33) != 1)
      {
        v37 = v40;
        sub_21C744970(&v16[v31], v40, type metadata accessor for PMAppSourceListModel.Source);
        v38 = sub_21C918FE4(v35, v37);
        sub_21C7463DC(v37);
        sub_21C6EA794(v22, &qword_27CDEAC20, &qword_21CBAD710);
        sub_21C7463DC(v35);
        result = sub_21C6EA794(v16, &qword_27CDEAC20, &qword_21CBAD710);
        if ((v38 & 1) == 0)
        {
          return result;
        }

        goto LABEL_10;
      }

      sub_21C6EA794(v22, &qword_27CDEAC20, &qword_21CBAD710);
      sub_21C7463DC(v35);
    }

    return sub_21C6EA794(v16, &unk_27CDED310, &unk_21CBA0150);
  }

  sub_21C744908(a5, &v39 - v23, type metadata accessor for PMAppSourceListModel.Source);
  (v9[7])(v25, 0, 1, v8);
  return sub_21C742C88(v25);
}

uint64_t sub_21CB40750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821305F8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_21CB4087C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDF98F8, qword_21CBCC810);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21C6EDBAC(a1, &v6 - v4, qword_27CDF98F8, qword_21CBCC810);
  return sub_21CB82D54();
}

uint64_t sub_21CB4094C(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for PMSourceGrid() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PMAppSourceListModel.Source(0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21CB40298(a1, v7, v8, (v1 + v4), v9);
}

uint64_t sub_21CB40A44()
{
  sub_21C741570();
  sub_21CB82F94();
  return v1;
}

uint64_t sub_21CB40A90()
{
  [objc_opt_self() defaultStrongPasswordLength];
  result = sub_21CB85784();
  qword_27CE18768 = result;
  unk_27CE18770 = v1;
  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21CB40AFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_21CB40B44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CB40BB4@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = sub_21CB82F84();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9AA0, &qword_21CBCC798);
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v49);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9AA8, &qword_21CBCC7A0);
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9AB0, &qword_21CBCC7A8);
  v13 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v45 - v14;
  v55 = v1;
  v15 = *(v1 + 16);
  v51 = v12;
  if (v15)
  {
    if (qword_27CDEA4B8 != -1)
    {
      swift_once();
    }

    v16 = &qword_27CE18768;
  }

  else
  {
    v16 = v1;
  }

  v18 = *v16;
  v17 = v16[1];

  v59 = v18;
  v60 = v19;
  sub_21C71F3FC();
  v20 = sub_21CB84054();
  v22 = v21;
  v59 = v20;
  v60 = v21;
  v24 = v23 & 1;
  v61 = v23 & 1;
  v62 = v25;
  v26 = MEMORY[0x277CE0BD8];
  v27 = MEMORY[0x277CE0BC8];
  sub_21CB843B4();
  sub_21C74A72C(v20, v22, v24);

  v59 = v26;
  v60 = v27;
  v28 = 1;
  swift_getOpaqueTypeConformance2();
  v29 = v51;
  v30 = v49;
  sub_21CB844B4();
  (*(v5 + 8))(v8, v30);
  if (v15)
  {
    v31 = 0;
    v32 = v55;
  }

  else
  {
    v32 = v55;
    LOWORD(v60) = *(v55 + 32);
    v28 = *(v55 + 24);
    v59 = v28;
    if (BYTE1(v60) == 1)
    {
      v31 = v60;
    }

    else
    {

      sub_21CB85B04();
      v33 = sub_21CB83C94();
      sub_21CB81C14();

      v34 = v46;
      sub_21CB82F74();
      swift_getAtKeyPath();
      sub_21CB4108C(&v59);
      (*(v47 + 8))(v34, v48);
      v28 = v57;
      v31 = v58;
    }
  }

  KeyPath = swift_getKeyPath();
  v36 = v54;
  (*(v52 + 32))(v54, v29, v53);
  v37 = v36 + *(v50 + 36);
  *v37 = KeyPath;
  *(v37 + 8) = v28;
  *(v37 + 16) = v31 & 1;
  v38 = *(v32 + 17);
  v39 = *MEMORY[0x277D49BF0];
  sub_21CB855C4();
  v40 = [objc_opt_self() pm_defaults];
  v41 = sub_21CB81E74();
  v42 = v56;
  sub_21C78C088(v36, v56);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9AC0, &unk_21CBCC7E8);
  v44 = v42 + *(result + 36);
  *v44 = v41;
  *(v44 + 8) = v38;
  return result;
}

uint64_t sub_21CB4108C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9AB8, &qword_21CBCC7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21CB410F4()
{
  result = qword_27CDF9AC8;
  if (!qword_27CDF9AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9AC0, &unk_21CBCC7E8);
    sub_21CB41180();
    sub_21C99CCA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9AC8);
  }

  return result;
}

unint64_t sub_21CB41180()
{
  result = qword_27CDF9AD0;
  if (!qword_27CDF9AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9AB0, &qword_21CBCC7A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9AA0, &qword_21CBCC798);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21CB41278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9AD0);
  }

  return result;
}

unint64_t sub_21CB41278()
{
  result = qword_27CDEB900;
  if (!qword_27CDEB900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB900);
  }

  return result;
}

uint64_t sub_21CB412DC()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  return sub_21CB84F34();
}

uint64_t sub_21CB41338@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a3;
  v75 = a4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9B88, &qword_21CBCC890);
  v6 = *(*(v77 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v77);
  v76 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v66 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEECF0, &qword_21CBAF890);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B70, &qword_21CBCC878);
  sub_21CB828F4();
  sub_21CB83B74();
  sub_21CB828F4();
  *&v98 = sub_21CB828F4();
  *(&v98 + 1) = MEMORY[0x277CE1180];
  *&v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B78, &qword_21CBCC880);
  *(&v99 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B80, &qword_21CBCC888);
  swift_getTupleTypeMetadata();
  sub_21CB85354();
  swift_getWitnessTable();
  v11 = sub_21CB84E14();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v66 - v17;
  v78 = a2;
  v79 = v74;
  v80 = a1;
  sub_21CB83074();
  sub_21CB84E04();
  WitnessTable = swift_getWitnessTable();
  v73 = v18;
  v70 = WitnessTable;
  sub_21C72BE10(v16, v11, WitnessTable);
  v69 = v12;
  v71 = *(v12 + 8);
  v72 = v12 + 8;
  v71(v16, v11);
  v68 = a1;
  v20 = a1[1];
  *&v98 = *a1;
  *(&v98 + 1) = v20;
  sub_21C71F3FC();

  v21 = sub_21CB84054();
  v23 = v22;
  *&v98 = v21;
  *(&v98 + 1) = v22;
  LOBYTE(v18) = v24 & 1;
  LOBYTE(v99) = v24 & 1;
  *(&v99 + 1) = v25;
  sub_21CB84624();
  sub_21C74A72C(v21, v23, v18);

  LOBYTE(v20) = sub_21CB83D14();
  sub_21CB81F24();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9BE0, &qword_21CBCC8D8) + 36)];
  *v34 = v20;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  KeyPath = swift_getKeyPath();
  v36 = *(v77 + 36);
  v74 = v10;
  v37 = &v10[v36];
  *v37 = KeyPath;
  *(v37 + 1) = 0;
  v37[16] = 1;
  v38 = v68[3];
  if (v38)
  {
    *&v98 = v68[2];
    *(&v98 + 1) = v38;

    v39 = sub_21CB84054();
    v41 = v40;
    v43 = v42;
    sub_21CB83E94();
    v44 = sub_21CB84024();
    v67 = v45;
    v68 = v44;
    v47 = v46;
    v49 = v48;

    sub_21C74A72C(v39, v41, v43 & 1);

    LOBYTE(v39) = sub_21CB83D14();
    sub_21CB81F24();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    LOBYTE(v98) = v49 & 1;
    LOBYTE(v96[0]) = 0;
    LODWORD(v41) = sub_21CB837E4();
    v58 = swift_getKeyPath();
    v59 = 1;
    *&v98 = v68;
    *(&v98 + 1) = v47;
    LOBYTE(v99) = v49 & 1;
    *(&v99 + 1) = v67;
    LOBYTE(v100) = v39;
    *(&v100 + 1) = v51;
    *&v101 = v53;
    *(&v101 + 1) = v55;
    *&v102 = v57;
    BYTE8(v102) = 0;
    HIDWORD(v102) = v41;
    v103 = v58;
  }

  else
  {
    v59 = 0;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
  }

  v104 = v59;
  v60 = v73;
  (*(v69 + 16))(v16, v73, v11);
  v93 = 0;
  v94 = 0;
  v95[0] = v16;
  v95[1] = &v93;
  v61 = v74;
  v62 = v76;
  sub_21C6EDBAC(v74, v76, &qword_27CDF9B88, &qword_21CBCC890);
  v90 = v102;
  v91 = v103;
  v92 = v104;
  v86 = v98;
  v87 = v99;
  v88 = v100;
  v89 = v101;
  v95[2] = v62;
  v95[3] = &v86;
  sub_21C6EDBAC(&v98, v96, &qword_27CDF9B90, &qword_21CBCC898);
  v85[0] = v11;
  v85[1] = MEMORY[0x277CE1180];
  v85[2] = v77;
  v85[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9B90, &qword_21CBCC898);
  v81 = v70;
  v82 = MEMORY[0x277CE1170];
  v83 = sub_21C74A73C();
  v84 = sub_21C74A1D4(&qword_27CDF9BF8, &qword_27CDF9B90, &qword_21CBCC898, sub_21C74A8B0);
  sub_21C74A55C(v95, 4uLL, v85);
  sub_21C6EA794(&v98, &qword_27CDF9B90, &qword_21CBCC898);
  sub_21C6EA794(v61, &qword_27CDF9B88, &qword_21CBCC890);
  v63 = v60;
  v64 = v71;
  v71(v63, v11);
  v96[4] = v90;
  v96[5] = v91;
  v97 = v92;
  v96[0] = v86;
  v96[1] = v87;
  v96[2] = v88;
  v96[3] = v89;
  sub_21C6EA794(v96, &qword_27CDF9B90, &qword_21CBCC898);
  sub_21C6EA794(v62, &qword_27CDF9B88, &qword_21CBCC890);
  return v64(v16, v11);
}

uint64_t sub_21CB41A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v107 = a1;
  v103 = a3;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9C20, &qword_21CBCC920);
  v97 = *(v99 - 8);
  v4 = *(v97 + 64);
  MEMORY[0x28223BE20](v99);
  v88 = v86 - v5;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9B80, &qword_21CBCC888);
  v6 = *(*(v100 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v100);
  v102 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v101 = v86 - v9;
  v10 = sub_21CB83124();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v86[1] = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9C28, &qword_21CBCC928);
  v94 = *(v104 - 8);
  v13 = *(v94 + 64);
  MEMORY[0x28223BE20](v104);
  v87 = v86 - v14;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9B78, &qword_21CBCC880);
  v15 = *(*(v96 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v96);
  v98 = v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v106 = v86 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEECF0, &qword_21CBAF890);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  sub_21CB828F4();
  v93 = sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B70, &qword_21CBCC878);
  v95 = sub_21CB828F4();
  sub_21CB83B74();
  v19 = sub_21CB828F4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v86 - v22;
  v24 = sub_21CB828F4();
  v105 = *(v24 - 8);
  v25 = *(v105 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = v86 - v29;
  v86[0] = type metadata accessor for PMSourceTile();
  sub_21C749784(v86[0], v23);
  sub_21CB83D14();
  v31 = sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890);
  v129 = a2;
  v130 = v31;
  WitnessTable = swift_getWitnessTable();
  v33 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
  v127 = WitnessTable;
  v128 = v33;
  v125 = swift_getWitnessTable();
  v126 = MEMORY[0x277CDF678];
  v34 = swift_getWitnessTable();
  v35 = sub_21C6EADEC(&qword_27CDF9C30, &qword_27CDF9B70, &qword_21CBCC878);
  v123 = v34;
  v124 = v35;
  v36 = swift_getWitnessTable();
  v37 = sub_21C74422C(&qword_27CDEB908, MEMORY[0x277CDE470]);
  v121 = v36;
  v122 = v37;
  v38 = swift_getWitnessTable();
  sub_21CB84884();
  v39 = v23;
  v40 = v107;
  (*(v20 + 8))(v39, v19);
  v119 = v38;
  v120 = MEMORY[0x277CDF918];
  v41 = swift_getWitnessTable();
  v93 = v30;
  v90 = v41;
  sub_21C72BE10(v28, v24, v41);
  v42 = *(v105 + 8);
  v95 = v28;
  v89 = v24;
  v92 = v105 + 8;
  v91 = v42;
  v42(v28, v24);
  if (*(v40 + 40) & 1) != 0 || (*(v40 + 56))
  {
    v43 = 1;
    v44 = v101;
    v45 = v99;
    v46 = v106;
  }

  else
  {
    v47 = *(v40 + 32);
    sub_21CB83114();
    sub_21CB83104();
    v115 = v47;
    sub_21CB830E4();
    sub_21CB83104();
    sub_21CB83144();
    v48 = sub_21CB84034();
    v50 = v49;
    v52 = v51;
    v115 = sub_21CB426E0(v86[0], MEMORY[0x277CE0F50]);
    v53 = sub_21CB83FC4();
    v55 = v54;
    v57 = v56;
    sub_21C74A72C(v48, v50, v52 & 1);

    v115 = sub_21C74F120(v47);
    v116 = v58;
    sub_21C71F3FC();
    v59 = sub_21CB83FE4();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    sub_21C74A72C(v53, v55, v57 & 1);

    v66 = sub_21CB85254();
    v67 = v87;
    v68 = &v87[*(v104 + 36)];
    v69 = v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB920, &qword_21CBCC940) + 28);
    sub_21CB82B14();
    *v68 = swift_getKeyPath();
    *v67 = v59;
    *(v67 + 8) = v61;
    *(v67 + 16) = v63 & 1;
    *(v67 + 24) = v65;
    *(v67 + 32) = v66;
    v40 = v107;
    *(v67 + 40) = v47;
    v46 = v106;
    sub_21C716934(v67, v106, &qword_27CDF9C28, &qword_21CBCC928);
    v43 = 0;
    v44 = v101;
    v45 = v99;
  }

  (*(v94 + 56))(v46, v43, 1, v104);
  v70 = 1;
  if (*(v40 + 56) == 1)
  {
    v71 = v88;
    sub_21CB82234();
    v72 = sub_21CB837E4();
    *(v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9C70, &qword_21CBCC948) + 36)) = v72;
    v73 = v46;
    v74 = (v71 + *(v45 + 36));
    v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13A0, &qword_21CBB1100) + 28);
    v76 = *MEMORY[0x277CDF440];
    v77 = sub_21CB82064();
    (*(*(v77 - 8) + 104))(v74 + v75, v76, v77);
    *v74 = swift_getKeyPath();
    v46 = v73;
    sub_21C716934(v71, v44, &qword_27CDF9C20, &qword_21CBCC920);
    v70 = 0;
  }

  (*(v97 + 56))(v44, v70, 1, v45);
  v78 = v95;
  v79 = v93;
  v80 = v89;
  (*(v105 + 16))(v95, v93, v89);
  v113 = 0;
  v114 = 1;
  v115 = v78;
  v116 = &v113;
  v81 = v98;
  sub_21C6EDBAC(v46, v98, &qword_27CDF9B78, &qword_21CBCC880);
  v117 = v81;
  v82 = v102;
  sub_21C6EDBAC(v44, v102, &qword_27CDF9B80, &qword_21CBCC888);
  v118 = v82;
  v112[0] = v80;
  v112[1] = MEMORY[0x277CE1180];
  v112[2] = v96;
  v112[3] = v100;
  v108 = v90;
  v109 = MEMORY[0x277CE1170];
  v110 = sub_21C74A1D4(&qword_27CDF9C38, &qword_27CDF9B78, &qword_21CBCC880, sub_21C74A308);
  v111 = sub_21C74A1D4(&qword_27CDF9C58, &qword_27CDF9B80, &qword_21CBCC888, sub_21C74A4A4);
  sub_21C74A55C(&v115, 4uLL, v112);
  sub_21C6EA794(v44, &qword_27CDF9B80, &qword_21CBCC888);
  sub_21C6EA794(v106, &qword_27CDF9B78, &qword_21CBCC880);
  v83 = v79;
  v84 = v91;
  v91(v83, v80);
  sub_21C6EA794(v82, &qword_27CDF9B80, &qword_21CBCC888);
  sub_21C6EA794(v81, &qword_27CDF9B78, &qword_21CBCC880);
  return v84(v78, v80);
}

uint64_t sub_21CB426E0(uint64_t a1, uint64_t (*a2)(void))
{
  if (sub_21C749ED4(a1))
  {

    return sub_21CB84AD4();
  }

  else
  {

    return a2();
  }
}

uint64_t sub_21CB42764()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for PMSourceTile() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  return sub_21CB412DC();
}

unint64_t sub_21CB427E0()
{
  result = qword_27CDF9BF0;
  if (!qword_27CDF9BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9BE0, &qword_21CBCC8D8);
    sub_21C74A7F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9BF0);
  }

  return result;
}

uint64_t sub_21CB4286C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_21CB428B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CB428F4(uint64_t a1, char *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  return sub_21CB84F34();
}

uint64_t sub_21CB42980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9C80, &qword_21CBCCAD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-v7];
  v11 = a1;
  v12 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB83774();
  sub_21C6EADEC(&qword_27CDF9C88, &qword_27CDF9C80, &qword_21CBCCAD0);
  sub_21CB842D4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21CB42B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v28 - v8;
  v10 = sub_21CB83ED4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[2] = a1;
  v28[3] = a2;
  sub_21C71F3FC();

  v15 = sub_21CB84054();
  v17 = v16;
  v19 = v18;
  (*(v11 + 104))(v14, *MEMORY[0x277CE0A80], v10);
  v20 = sub_21CB83DC4();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  sub_21CB83E24();
  sub_21C9E1150(v9);
  (*(v11 + 8))(v14, v10);
  v21 = sub_21CB84024();
  v23 = v22;
  LOBYTE(v14) = v24;
  v26 = v25;

  sub_21C74A72C(v15, v17, v19 & 1);

  *a3 = v21;
  *(a3 + 8) = v23;
  *(a3 + 16) = v14 & 1;
  *(a3 + 24) = v26;
  return result;
}

uint64_t sub_21CB42DB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB84BB4();
  *a1 = result;
  return result;
}

uint64_t sub_21CB42DF0@<X0>(uint64_t (**a1)()@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_21CB42E5C;
  a1[1] = v5;
}

uint64_t sub_21CB42E64()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  return sub_21CB84C84();
}

uint64_t sub_21CB42EE4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9D40, &qword_21CBCCC08);
  v84 = *(v2 - 8);
  v85 = v2;
  v3 = *(v84 + 64);
  MEMORY[0x28223BE20](v2);
  v83 = &v61 - v4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9D48, &qword_21CBCCC10);
  v74 = *(v82 - 8);
  v5 = *(v74 + 64);
  MEMORY[0x28223BE20](v82);
  v81 = &v61 - v6;
  v71 = type metadata accessor for PMRecentlyDeletedAccountsSource();
  v7 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v80 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9D50, &qword_21CBCCC18);
  v70 = *(v72 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x28223BE20](v72);
  v69 = &v61 - v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9D58, &qword_21CBCCC20);
  v73 = *(v79 - 8);
  v11 = *(v73 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v61 - v12;
  v13 = sub_21CB85C44();
  v76 = *(v13 - 8);
  v77 = v13;
  v14 = *(v76 + 64);
  MEMORY[0x28223BE20](v13);
  v75 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9D60, &qword_21CBCCC28);
  v67 = *(v68 - 8);
  v16 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v66 = &v61 - v17;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9D68, &qword_21CBCCC30);
  v64 = *(v65 - 8);
  v18 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v20 = &v61 - v19;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9D70, &qword_21CBCCC38);
  v62 = *(v63 - 8);
  v21 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v23 = &v61 - v22;
  v24 = type metadata accessor for PMSystemSettingsNavigationDestination();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9D78, &qword_21CBCCC40);
  v29 = *(v28 - 8);
  v87 = v28;
  v88 = v29;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v61 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CB4515C();
  v34 = v32;
  sub_21CB864F4();
  sub_21CB450F4(v86, v27, type metadata accessor for PMSystemSettingsNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v93 = 4;
        sub_21CB452C0();
        v60 = v69;
        v36 = v87;
        sub_21CB862A4();
        v37 = *(v70 + 8);
        v38 = v60;
        v59 = v72;
        goto LABEL_16;
      }

      v91 = 2;
      sub_21CB45368();
      v51 = v66;
      v36 = v87;
      sub_21CB862A4();
      v37 = *(v67 + 8);
      v38 = v51;
      v39 = &v98;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v89 = 0;
      sub_21CB45410();
      v36 = v87;
      sub_21CB862A4();
      v37 = *(v62 + 8);
      v38 = v23;
      v39 = &v96;
    }

    else
    {
      v90 = 1;
      sub_21CB453BC();
      v36 = v87;
      sub_21CB862A4();
      v37 = *(v64 + 8);
      v38 = v20;
      v39 = &v97;
    }

    v59 = *(v39 - 32);
LABEL_16:
    v37(v38, v59);
    return (*(v88 + 8))(v32, v36);
  }

  v40 = v78;
  v41 = v79;
  v42 = v81;
  v43 = v82;
  v44 = v83;
  v45 = v84;
  v46 = v85;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v47 = v80;
      sub_21CB45204(v27, v80, type metadata accessor for PMRecentlyDeletedAccountsSource);
      v94 = 5;
      sub_21CB4526C();
      v48 = v42;
      v49 = v87;
      sub_21CB862A4();
      sub_21CB45B50(&qword_27CDF9D80, type metadata accessor for PMRecentlyDeletedAccountsSource);
      sub_21CB862C4();
      (*(v74 + 8))(v48, v43);
      sub_21CB45AF0(v47, type metadata accessor for PMRecentlyDeletedAccountsSource);
      return (*(v88 + 8))(v34, v49);
    }

    else
    {
      v56 = *v27;
      v57 = v27[1];
      v95 = 6;
      sub_21CB451B0();
      v58 = v87;
      sub_21CB862A4();
      sub_21CB862B4();

      (*(v45 + 8))(v44, v46);
      return (*(v88 + 8))(v34, v58);
    }
  }

  else
  {
    v52 = v76;
    v53 = v75;
    v54 = v77;
    (*(v76 + 32))(v75, v27, v77);
    v92 = 3;
    sub_21CB45314();
    v55 = v87;
    sub_21CB862A4();
    sub_21CB45B50(&qword_27CDF7DC8, MEMORY[0x277D49978]);
    sub_21CB862C4();
    (*(v73 + 8))(v40, v41);
    (*(v52 + 8))(v53, v54);
    return (*(v88 + 8))(v34, v55);
  }
}

uint64_t sub_21CB43920()
{
  v1 = type metadata accessor for PMRecentlyDeletedAccountsSource();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = sub_21CB85C44();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMSystemSettingsNavigationDestination();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB450F4(v0, v16, type metadata accessor for PMSystemSettingsNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_21CB45204(v16, v7, type metadata accessor for PMRecentlyDeletedAccountsSource);
        MEMORY[0x21CF15F90](5);
        sub_21CB450F4(v7, v4, type metadata accessor for PMRecentlyDeletedAccountsSource);
        v19 = (*(v9 + 48))(v4, 2, v8);
        if (v19)
        {
          MEMORY[0x21CF15F90](v19 != 1);
        }

        else
        {
          (*(v9 + 32))(v12, v4, v8);
          MEMORY[0x21CF15F90](2);
          sub_21CB45B50(&qword_27CDF8950, MEMORY[0x277D49978]);
          sub_21CB85494();
          (*(v9 + 8))(v12, v8);
        }

        return sub_21CB45AF0(v7, type metadata accessor for PMRecentlyDeletedAccountsSource);
      }

      else
      {
        v20 = *v16;
        v21 = v16[1];
        MEMORY[0x21CF15F90](6);
        sub_21CB854C4();
      }
    }

    else
    {
      (*(v9 + 32))(v12, v16, v8);
      MEMORY[0x21CF15F90](3);
      sub_21CB45B50(&qword_27CDF8950, MEMORY[0x277D49978]);
      sub_21CB85494();
      return (*(v9 + 8))(v12, v8);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return MEMORY[0x21CF15F90](2);
    }

    else
    {
      return MEMORY[0x21CF15F90](4);
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return MEMORY[0x21CF15F90](0);
  }

  else
  {
    return MEMORY[0x21CF15F90](1);
  }
}

uint64_t sub_21CB43CF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9CB8, &qword_21CBCCBC0);
  v90 = *(v87 - 8);
  v3 = *(v90 + 64);
  MEMORY[0x28223BE20](v87);
  v100 = &v72 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9CC0, &qword_21CBCCBC8);
  v88 = *(v5 - 8);
  v89 = v5;
  v6 = *(v88 + 64);
  MEMORY[0x28223BE20](v5);
  v93 = &v72 - v7;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9CC8, &qword_21CBCCBD0);
  v83 = *(v85 - 8);
  v8 = *(v83 + 64);
  MEMORY[0x28223BE20](v85);
  v92 = &v72 - v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9CD0, &qword_21CBCCBD8);
  v86 = *(v84 - 8);
  v10 = *(v86 + 64);
  MEMORY[0x28223BE20](v84);
  v91 = &v72 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9CD8, &qword_21CBCCBE0);
  v81 = *(v82 - 8);
  v12 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v99 = &v72 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9CE0, &qword_21CBCCBE8);
  v80 = *(v79 - 8);
  v14 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  v98 = &v72 - v15;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9CE8, &qword_21CBCCBF0);
  v77 = *(v78 - 8);
  v16 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v96 = &v72 - v17;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9CF0, &qword_21CBCCBF8);
  v95 = *(v97 - 8);
  v18 = *(v95 + 64);
  MEMORY[0x28223BE20](v97);
  v20 = &v72 - v19;
  v21 = type metadata accessor for PMSystemSettingsNavigationDestination();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v27 = &v72 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v72 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v72 - v32;
  v35 = a1[3];
  v34 = a1[4];
  v101 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v35);
  sub_21CB4515C();
  v36 = v102;
  sub_21CB864E4();
  if (v36)
  {
    return __swift_destroy_boxed_opaque_existential_0(v101);
  }

  v37 = v96;
  v73 = v24;
  v74 = v30;
  v75 = v27;
  v38 = v98;
  v39 = v99;
  v40 = v100;
  v102 = v21;
  v76 = v33;
  v41 = v95;
  v42 = v97;
  v43 = sub_21CB86294();
  v44 = (2 * *(v43 + 16)) | 1;
  v103 = v43;
  v104 = v43 + 32;
  v105 = 0;
  v106 = v44;
  v45 = sub_21CADE0C4();
  v46 = v42;
  if (v45 == 7 || v105 != v106 >> 1)
  {
    v50 = sub_21CB86104();
    v51 = v42;
    swift_allocError();
    v53 = v52;
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D80, &qword_21CBCCC00) + 48);
    *v53 = v102;
    sub_21CB86264();
    sub_21CB860F4();
    (*(*(v50 - 8) + 104))(v53, *MEMORY[0x277D84160], v50);
    swift_willThrow();
    (*(v41 + 8))(v20, v51);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v101);
  }

  if (v45 <= 2u)
  {
    if (v45)
    {
      if (v45 == 1)
      {
        v107 = 1;
        sub_21CB453BC();
        sub_21CB86254();
        (*(v80 + 8))(v38, v79);
      }

      else
      {
        v107 = 2;
        sub_21CB45368();
        sub_21CB86254();
        (*(v81 + 8))(v39, v82);
      }

      (*(v41 + 8))(v20, v42);
      swift_unknownObjectRelease();
      v56 = v76;
    }

    else
    {
      v107 = 0;
      sub_21CB45410();
      sub_21CB86254();
      (*(v77 + 8))(v37, v78);
      (*(v41 + 8))(v20, v42);
      swift_unknownObjectRelease();
      v56 = v76;
    }

    swift_storeEnumTagMultiPayload();
    goto LABEL_21;
  }

  if (v45 > 4u)
  {
    v57 = v94;
    if (v45 == 5)
    {
      v107 = 5;
      sub_21CB4526C();
      v58 = v93;
      sub_21CB86254();
      type metadata accessor for PMRecentlyDeletedAccountsSource();
      sub_21CB45B50(&qword_27CDF9D10, type metadata accessor for PMRecentlyDeletedAccountsSource);
      v65 = v75;
      v59 = v89;
      sub_21CB86284();
      (*(v88 + 8))(v58, v59);
      (*(v41 + 8))(v20, v42);
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    v107 = 6;
    sub_21CB451B0();
    v61 = v42;
    sub_21CB86254();
    v62 = v87;
    v63 = sub_21CB86274();
    v64 = v40;
    v69 = v68;
    (*(v90 + 8))(v64, v62);
    (*(v41 + 8))(v20, v61);
    swift_unknownObjectRelease();
    v70 = v73;
    *v73 = v63;
    v70[1] = v69;
    swift_storeEnumTagMultiPayload();
    v71 = v70;
    v56 = v76;
    sub_21CB45204(v71, v76, type metadata accessor for PMSystemSettingsNavigationDestination);
    v67 = v101;
    v47 = v57;
  }

  else
  {
    v47 = v94;
    v48 = v41;
    if (v45 == 3)
    {
      v107 = 3;
      sub_21CB45314();
      v49 = v91;
      sub_21CB86254();
      sub_21CB85C44();
      sub_21CB45B50(&qword_27CDF7D90, MEMORY[0x277D49978]);
      v65 = v74;
      v66 = v84;
      sub_21CB86284();
      (*(v86 + 8))(v49, v66);
      (*(v48 + 8))(v20, v42);
      swift_unknownObjectRelease();
LABEL_23:
      swift_storeEnumTagMultiPayload();
      v56 = v76;
      sub_21CB45204(v65, v76, type metadata accessor for PMSystemSettingsNavigationDestination);
LABEL_21:
      v67 = v101;
      v47 = v94;
      goto LABEL_22;
    }

    v107 = 4;
    sub_21CB452C0();
    v60 = v92;
    sub_21CB86254();
    (*(v83 + 8))(v60, v85);
    (*(v41 + 8))(v20, v46);
    swift_unknownObjectRelease();
    v56 = v76;
    swift_storeEnumTagMultiPayload();
    v67 = v101;
  }

LABEL_22:
  sub_21CB45204(v56, v47, type metadata accessor for PMSystemSettingsNavigationDestination);
  return __swift_destroy_boxed_opaque_existential_0(v67);
}

uint64_t sub_21CB44AFC(uint64_t a1)
{
  v2 = sub_21CB451B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CB44B38(uint64_t a1)
{
  v2 = sub_21CB451B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CB44B74()
{
  v1 = *v0;
  v2 = 0x64726F7773736170;
  v3 = 0x796C746E65636572;
  if (v1 != 5)
  {
    v3 = 0x44746E756F636361;
  }

  v4 = 0x70756F7267;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 != 1)
  {
    v5 = 0x6F7773736150796DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21CB44C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CB46438(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CB44CB0(uint64_t a1)
{
  v2 = sub_21CB4515C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CB44CEC(uint64_t a1)
{
  v2 = sub_21CB4515C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CB44D28(uint64_t a1)
{
  v2 = sub_21CB45314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CB44D64(uint64_t a1)
{
  v2 = sub_21CB45314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CB44DA0(uint64_t a1)
{
  v2 = sub_21CB452C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CB44DDC(uint64_t a1)
{
  v2 = sub_21CB452C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CB44E18(uint64_t a1)
{
  v2 = sub_21CB45368();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CB44E54(uint64_t a1)
{
  v2 = sub_21CB45368();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CB44E90(uint64_t a1)
{
  v2 = sub_21CB45410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CB44ECC(uint64_t a1)
{
  v2 = sub_21CB45410();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CB44F08(uint64_t a1)
{
  v2 = sub_21CB4526C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CB44F44(uint64_t a1)
{
  v2 = sub_21CB4526C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CB44F80(uint64_t a1)
{
  v2 = sub_21CB453BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CB44FBC(uint64_t a1)
{
  v2 = sub_21CB453BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CB44FF8()
{
  sub_21CB86484();
  sub_21CB43920();
  return sub_21CB864D4();
}

uint64_t sub_21CB4503C()
{
  sub_21CB86484();
  sub_21CB43920();
  return sub_21CB864D4();
}

uint64_t sub_21CB450F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CB4515C()
{
  result = qword_27CDF9CF8;
  if (!qword_27CDF9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9CF8);
  }

  return result;
}

unint64_t sub_21CB451B0()
{
  result = qword_27CDF9D00;
  if (!qword_27CDF9D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9D00);
  }

  return result;
}

uint64_t sub_21CB45204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CB4526C()
{
  result = qword_27CDF9D08;
  if (!qword_27CDF9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9D08);
  }

  return result;
}

unint64_t sub_21CB452C0()
{
  result = qword_27CDF9D18;
  if (!qword_27CDF9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9D18);
  }

  return result;
}

unint64_t sub_21CB45314()
{
  result = qword_27CDF9D20;
  if (!qword_27CDF9D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9D20);
  }

  return result;
}

unint64_t sub_21CB45368()
{
  result = qword_27CDF9D28;
  if (!qword_27CDF9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9D28);
  }

  return result;
}

unint64_t sub_21CB453BC()
{
  result = qword_27CDF9D30;
  if (!qword_27CDF9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9D30);
  }

  return result;
}

unint64_t sub_21CB45410()
{
  result = qword_27CDF9D38;
  if (!qword_27CDF9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9D38);
  }

  return result;
}

uint64_t sub_21CB45464(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = type metadata accessor for PMRecentlyDeletedAccountsSource();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB85C44();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMSystemSettingsNavigationDestination();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9D88, &qword_21CBCCC48);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v25 = (&v43 + *(v24 + 56) - v23);
  v26 = a1;
  v27 = &v43 - v23;
  sub_21CB450F4(v26, &v43 - v23, type metadata accessor for PMSystemSettingsNavigationDestination);
  sub_21CB450F4(v44, v25, type metadata accessor for PMSystemSettingsNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_34;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_34;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_34;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  v29 = v43;
  if (!EnumCaseMultiPayload)
  {
    sub_21CB450F4(v27, v20, type metadata accessor for PMSystemSettingsNavigationDestination);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v29 + 8))(v20, v7);
LABEL_28:
      sub_21CB45A88(v27);
      goto LABEL_29;
    }

    v36 = v29;
    (*(v29 + 32))(v10, v25, v7);
    sub_21CB45B50(&qword_27CDECD58, MEMORY[0x277D49978]);
    sub_21CB857F4();
    sub_21CB857F4();
    if (v47 == v45 && v48 == v46)
    {
      v37 = *(v29 + 8);
      v37(v10, v7);

      v37(v20, v7);
    }

    else
    {
      v41 = sub_21CB86344();
      v42 = *(v36 + 8);
      v42(v10, v7);

      v42(v20, v7);
      if ((v41 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v39 = v27;
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_21CB450F4(v27, v14, type metadata accessor for PMSystemSettingsNavigationDestination);
    v32 = *v14;
    v31 = v14[1];
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      goto LABEL_28;
    }

    if (v32 == *v25 && v31 == v25[1])
    {
      v38 = v25[1];
    }

    else
    {
      v34 = v25[1];
      v35 = sub_21CB86344();

      if ((v35 & 1) == 0)
      {
LABEL_21:
        sub_21CB45AF0(v27, type metadata accessor for PMSystemSettingsNavigationDestination);
LABEL_29:
        v30 = 0;
        return v30 & 1;
      }
    }

LABEL_34:
    v39 = v27;
LABEL_35:
    sub_21CB45AF0(v39, type metadata accessor for PMSystemSettingsNavigationDestination);
    v30 = 1;
    return v30 & 1;
  }

  sub_21CB450F4(v27, v17, type metadata accessor for PMSystemSettingsNavigationDestination);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21CB45AF0(v17, type metadata accessor for PMRecentlyDeletedAccountsSource);
    goto LABEL_28;
  }

  sub_21CB45204(v25, v6, type metadata accessor for PMRecentlyDeletedAccountsSource);
  v30 = sub_21CADE0F8(v17, v6);
  sub_21CB45AF0(v6, type metadata accessor for PMRecentlyDeletedAccountsSource);
  sub_21CB45AF0(v17, type metadata accessor for PMRecentlyDeletedAccountsSource);
  sub_21CB45AF0(v27, type metadata accessor for PMSystemSettingsNavigationDestination);
  return v30 & 1;
}

uint64_t sub_21CB45A88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9D88, &qword_21CBCCC48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CB45AF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CB45B50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PMSystemSettingsNavigationDestination.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PMSystemSettingsNavigationDestination.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21CB45D5C()
{
  result = qword_27CDF9D90;
  if (!qword_27CDF9D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9D90);
  }

  return result;
}

unint64_t sub_21CB45DB4()
{
  result = qword_27CDF9D98;
  if (!qword_27CDF9D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9D98);
  }

  return result;
}

unint64_t sub_21CB45E0C()
{
  result = qword_27CDF9DA0;
  if (!qword_27CDF9DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DA0);
  }

  return result;
}

unint64_t sub_21CB45E64()
{
  result = qword_27CDF9DA8;
  if (!qword_27CDF9DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DA8);
  }

  return result;
}

unint64_t sub_21CB45EBC()
{
  result = qword_27CDF9DB0;
  if (!qword_27CDF9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DB0);
  }

  return result;
}

unint64_t sub_21CB45F14()
{
  result = qword_27CDF9DB8;
  if (!qword_27CDF9DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DB8);
  }

  return result;
}

unint64_t sub_21CB45F6C()
{
  result = qword_27CDF9DC0;
  if (!qword_27CDF9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DC0);
  }

  return result;
}

unint64_t sub_21CB45FC4()
{
  result = qword_27CDF9DC8;
  if (!qword_27CDF9DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DC8);
  }

  return result;
}

unint64_t sub_21CB4601C()
{
  result = qword_27CDF9DD0;
  if (!qword_27CDF9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DD0);
  }

  return result;
}

unint64_t sub_21CB46074()
{
  result = qword_27CDF9DD8;
  if (!qword_27CDF9DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DD8);
  }

  return result;
}

unint64_t sub_21CB460CC()
{
  result = qword_27CDF9DE0;
  if (!qword_27CDF9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DE0);
  }

  return result;
}

unint64_t sub_21CB46124()
{
  result = qword_27CDF9DE8;
  if (!qword_27CDF9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DE8);
  }

  return result;
}

unint64_t sub_21CB4617C()
{
  result = qword_27CDF9DF0;
  if (!qword_27CDF9DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DF0);
  }

  return result;
}

unint64_t sub_21CB461D4()
{
  result = qword_27CDF9DF8;
  if (!qword_27CDF9DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DF8);
  }

  return result;
}

unint64_t sub_21CB4622C()
{
  result = qword_27CDF9E00;
  if (!qword_27CDF9E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E00);
  }

  return result;
}

unint64_t sub_21CB46284()
{
  result = qword_27CDF9E08;
  if (!qword_27CDF9E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E08);
  }

  return result;
}

unint64_t sub_21CB462DC()
{
  result = qword_27CDF9E10;
  if (!qword_27CDF9E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E10);
  }

  return result;
}

unint64_t sub_21CB46334()
{
  result = qword_27CDF9E18;
  if (!qword_27CDF9E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E18);
  }

  return result;
}

unint64_t sub_21CB4638C()
{
  result = qword_27CDF9E20;
  if (!qword_27CDF9E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E20);
  }

  return result;
}

unint64_t sub_21CB463E4()
{
  result = qword_27CDF9E28;
  if (!qword_27CDF9E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E28);
  }

  return result;
}

uint64_t sub_21CB46438(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64726F7773736170 && a2 == 0xEF736E6F6974704FLL;
  if (v4 || (sub_21CB86344() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000021CB9C6D0 == a2 || (sub_21CB86344() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F7773736150796DLL && a2 == 0xEB00000000736472 || (sub_21CB86344() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_21CB86344() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CB9C6F0 == a2 || (sub_21CB86344() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x796C746E65636572 && a2 == 0xEF646574656C6544 || (sub_21CB86344() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x44746E756F636361 && a2 == 0xED00006C69617465)
  {

    return 6;
  }

  else
  {
    v6 = sub_21CB86344();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_21CB466C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_21CB829D4();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccountsView();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9E78, &unk_21CBCD520);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9F30, &unk_21CBCD570);
  v15 = *(v38 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v38);
  v18 = &v37 - v17;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9E50, &qword_21CBCD508);
  v19 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v21 = &v37 - v20;
  PMAccountsView.init()(v10);
  v22 = *(a1 + 48);
  if (v22)
  {
    v23 = v22;
    v24 = sub_21CACB1D0();

    type metadata accessor for PMAccountsListModel(0);
    sub_21C7062E8(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
    v25 = sub_21CB81CE4();
    sub_21CB495D4(v10, v14, type metadata accessor for PMAccountsView);
    v26 = &v14[*(v11 + 36)];
    *v26 = v25;
    v26[1] = v24;
    sub_21CB85294();
    sub_21CB48EB0();
    sub_21C7062E8(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    v27 = v40;
    sub_21CB849C4();
    (*(v39 + 8))(v6, v27);
    sub_21C6EA794(v14, &qword_27CDF9E78, &unk_21CBCD520);
    type metadata accessor for PMPasswordManagerState();
    sub_21C7062E8(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
    v28 = sub_21CB82B84();
    v30 = v29;
    (*(v15 + 32))(v21, v18, v38);
    v31 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9E70, &qword_21CBCD518) + 36)];
    *v31 = v28;
    v31[1] = v30;
    type metadata accessor for PMSystemSettingsNavigationDestination();
    v32 = swift_allocObject();
    v33 = *(a1 + 16);
    v32[1] = *a1;
    v32[2] = v33;
    v34 = *(a1 + 48);
    v32[3] = *(a1 + 32);
    v32[4] = v34;
    sub_21C82F854(a1, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9E58, &qword_21CBCD510);
    sub_21CB48D14();
    sub_21C7062E8(&qword_27CDF7C90, type metadata accessor for PMSystemSettingsNavigationDestination);
    sub_21CB48FEC();
    sub_21CB84564();

    return sub_21C78C480(v21);
  }

  else
  {
    v36 = *(a1 + 56);
    type metadata accessor for PMPasswordManagerState();
    sub_21C7062E8(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21CB46C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v171 = a1;
  v172 = a2;
  v131 = type metadata accessor for PMAccountDetailsView(0);
  v132 = *(v131 - 8);
  v2 = *(v132 + 64);
  MEMORY[0x28223BE20](v131);
  v127 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v156 = &v126 - v6;
  v138 = type metadata accessor for PMAccount(0);
  v137 = *(v138 - 8);
  v7 = *(v137 + 64);
  MEMORY[0x28223BE20](v138);
  v126 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9F20, &qword_21CBCD560);
  v9 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164);
  v130 = &v126 - v10;
  v149 = type metadata accessor for PMRecentlyDeletedAccountsView(0);
  v11 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v155 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMRecentlyDeletedAccountsSource();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v154 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9F38, &qword_21CBCD580);
  v16 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v162 = &v126 - v17;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9F40, &unk_21CBCD588);
  v18 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v147 = &v126 - v19;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9F08, &qword_21CBCD558);
  v20 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v148 = &v126 - v21;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9EF8, &qword_21CBCD550);
  v22 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v170);
  v163 = &v126 - v23;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v24 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v135 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v134 = &v126 - v27;
  v145 = type metadata accessor for PMGroupInvitationsList();
  v28 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v139 = (&v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = type metadata accessor for PMGroupAccountsView(0);
  v128 = *(v129 - 8);
  v30 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v153 = &v126 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v152 = &v126 - v34;
  v151 = type metadata accessor for PMSharingGroup();
  v150 = *(v151 - 8);
  v35 = *(v150 + 64);
  MEMORY[0x28223BE20](v151);
  v37 = &v126 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9EE0, &qword_21CBCD548);
  v38 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142);
  v40 = &v126 - v39;
  v158 = sub_21CB85C44();
  v157 = *(v158 - 8);
  v41 = *(v157 + 64);
  MEMORY[0x28223BE20](v158);
  v43 = &v126 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9F48, &qword_21CBCD598);
  v44 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140);
  v141 = &v126 - v45;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9EC8, &qword_21CBCD540);
  v46 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169);
  v144 = &v126 - v47;
  v143 = type metadata accessor for PMPasswordsSecurityView();
  v48 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v133 = (&v126 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9F50, &qword_21CBCD5A0);
  v50 = *(*(v173 - 8) + 64);
  MEMORY[0x28223BE20](v173);
  v175 = &v126 - v51;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9F58, &qword_21CBCD5A8);
  v52 = *(*(v166 - 8) + 64);
  MEMORY[0x28223BE20](v166);
  v168 = &v126 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9F60, &qword_21CBCD5B0);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v57 = &v126 - v56;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9EB0, &qword_21CBCD538);
  v58 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167);
  v60 = &v126 - v59;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9EA0, &qword_21CBCD530);
  v61 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174);
  v165 = &v126 - v62;
  v63 = type metadata accessor for PMPasswordOptionsView();
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v66 = &v126 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for PMSystemSettingsNavigationDestination();
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v70 = (&v126 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB4963C(v171, v70, type metadata accessor for PMSystemSettingsNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_21CACE64C(v66);
        sub_21CB4963C(v66, v57, type metadata accessor for PMPasswordOptionsView);
        swift_storeEnumTagMultiPayload();
        sub_21C7062E8(&qword_27CDED570, type metadata accessor for PMPasswordOptionsView);
        sub_21C7062E8(&qword_27CDF9EB8, type metadata accessor for PMPasswordsSecurityView);
        sub_21CB83494();
        sub_21C6EDBAC(v60, v168, &qword_27CDF9EB0, &qword_21CBCD538);
        swift_storeEnumTagMultiPayload();
        sub_21CB49104();
        sub_21CB491F0();
        v72 = v165;
        sub_21CB83494();
        sub_21C6EA794(v60, &qword_27CDF9EB0, &qword_21CBCD538);
        sub_21C6EDBAC(v72, v175, &qword_27CDF9EA0, &qword_21CBCD530);
        swift_storeEnumTagMultiPayload();
        sub_21CB49078();
        sub_21CB49384();
        sub_21CB83494();
        sub_21C6EA794(v72, &qword_27CDF9EA0, &qword_21CBCD530);
        return sub_21CB496A4(v66, type metadata accessor for PMPasswordOptionsView);
      }

      else
      {
        v108 = v133;
        sub_21CAD2478(v133);
        sub_21CB4963C(v108, v57, type metadata accessor for PMPasswordsSecurityView);
        swift_storeEnumTagMultiPayload();
        sub_21C7062E8(&qword_27CDED570, type metadata accessor for PMPasswordOptionsView);
        sub_21C7062E8(&qword_27CDF9EB8, type metadata accessor for PMPasswordsSecurityView);
        sub_21CB83494();
        sub_21C6EDBAC(v60, v168, &qword_27CDF9EB0, &qword_21CBCD538);
        swift_storeEnumTagMultiPayload();
        sub_21CB49104();
        sub_21CB491F0();
        v109 = v165;
        sub_21CB83494();
        sub_21C6EA794(v60, &qword_27CDF9EB0, &qword_21CBCD538);
        sub_21C6EDBAC(v109, v175, &qword_27CDF9EA0, &qword_21CBCD530);
        swift_storeEnumTagMultiPayload();
        sub_21CB49078();
        sub_21CB49384();
        sub_21CB83494();
        sub_21C6EA794(v109, &qword_27CDF9EA0, &qword_21CBCD530);
        return sub_21CB496A4(v108, type metadata accessor for PMPasswordsSecurityView);
      }
    }

    if (EnumCaseMultiPayload != 5)
    {
      v177 = *(v159 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA40, &qword_21CBA8088);
      sub_21CB84D54();
      v110 = v139;
      *v139 = v176;
      type metadata accessor for PMPasswordManagerState();
      sub_21C7062E8(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
      *(v110 + 8) = sub_21CB82B84();
      *(v110 + 16) = v111;
      v112 = v145;
      v113 = *(v145 + 24);
      *(v110 + v113) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE8, &qword_21CBAE7D0);
      swift_storeEnumTagMultiPayload();
      v114 = *(v112 + 28);
      v115 = v134;
      (*(v157 + 56))(v134, 1, 1, v158);
      sub_21C6EDBAC(v115, v135, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21CB84D44();
      sub_21C6EA794(v115, &unk_27CDF20B0, &unk_21CBA0090);
      v116 = v110 + *(v112 + 32);
      *v116 = swift_getKeyPath();
      *(v116 + 8) = 0;
      sub_21CB4963C(v110, v147, type metadata accessor for PMGroupInvitationsList);
      swift_storeEnumTagMultiPayload();
      sub_21C7062E8(&qword_27CDF0250, type metadata accessor for PMGroupInvitationsList);
      sub_21C7062E8(&qword_27CDF9F10, type metadata accessor for PMRecentlyDeletedAccountsView);
      v117 = v148;
      sub_21CB83494();
      sub_21C6EDBAC(v117, v162, &qword_27CDF9F08, &qword_21CBCD558);
      swift_storeEnumTagMultiPayload();
      sub_21CB49410();
      sub_21CB494FC();
      v118 = v163;
      sub_21CB83494();
      sub_21C6EA794(v117, &qword_27CDF9F08, &qword_21CBCD558);
      sub_21C6EDBAC(v118, v175, &qword_27CDF9EF8, &qword_21CBCD550);
      swift_storeEnumTagMultiPayload();
      sub_21CB49078();
      sub_21CB49384();
      sub_21CB83494();
      sub_21C6EA794(v118, &qword_27CDF9EF8, &qword_21CBCD550);
      return sub_21CB496A4(v110, type metadata accessor for PMGroupInvitationsList);
    }

    swift_storeEnumTagMultiPayload();
    sub_21CB4927C();
    sub_21CB492D0();
    v87 = v144;
    sub_21CB83494();
    sub_21C6EDBAC(v87, v168, &qword_27CDF9EC8, &qword_21CBCD540);
    swift_storeEnumTagMultiPayload();
    sub_21CB49104();
    sub_21CB491F0();
    v88 = v165;
    sub_21CB83494();
    sub_21C6EA794(v87, &qword_27CDF9EC8, &qword_21CBCD540);
    sub_21C6EDBAC(v88, v175, &qword_27CDF9EA0, &qword_21CBCD530);
    swift_storeEnumTagMultiPayload();
    sub_21CB49078();
    sub_21CB49384();
    sub_21CB83494();
    v89 = v88;
    v90 = &qword_27CDF9EA0;
    v91 = &qword_21CBCD530;
    return sub_21C6EA794(v89, v90, v91);
  }

  v74 = v150;
  v75 = v151;
  v76 = v37;
  v77 = v152;
  v78 = v153;
  v171 = v43;
  v79 = v156;
  v80 = v155;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v81 = v154;
      sub_21CB495D4(v70, v154, type metadata accessor for PMRecentlyDeletedAccountsSource);
      sub_21CB4963C(v81, v80, type metadata accessor for PMRecentlyDeletedAccountsSource);
      v82 = (v80 + *(v149 + 20));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE0, &qword_21CBB8760);
      v83 = swift_allocObject();
      *(v83 + 16) = 0;
      v176 = v83;
      sub_21CB84D44();
      v84 = *(&v177 + 1);
      *v82 = v177;
      v82[1] = v84;
      sub_21CB4963C(v80, v147, type metadata accessor for PMRecentlyDeletedAccountsView);
      swift_storeEnumTagMultiPayload();
      sub_21C7062E8(&qword_27CDF0250, type metadata accessor for PMGroupInvitationsList);
      sub_21C7062E8(&qword_27CDF9F10, type metadata accessor for PMRecentlyDeletedAccountsView);
      v85 = v148;
      sub_21CB83494();
      sub_21C6EDBAC(v85, v162, &qword_27CDF9F08, &qword_21CBCD558);
      swift_storeEnumTagMultiPayload();
      sub_21CB49410();
      sub_21CB494FC();
      v86 = v163;
      sub_21CB83494();
      sub_21C6EA794(v85, &qword_27CDF9F08, &qword_21CBCD558);
      sub_21C6EDBAC(v86, v175, &qword_27CDF9EF8, &qword_21CBCD550);
      swift_storeEnumTagMultiPayload();
      sub_21CB49078();
      sub_21CB49384();
      sub_21CB83494();
      sub_21C6EA794(v86, &qword_27CDF9EF8, &qword_21CBCD550);
      sub_21CB496A4(v80, type metadata accessor for PMRecentlyDeletedAccountsView);
      return sub_21CB496A4(v81, type metadata accessor for PMRecentlyDeletedAccountsSource);
    }

    v99 = *v70;
    v98 = v70[1];
    v100 = *(v159 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v102 = v177;
    *&v177 = v99;
    *(&v177 + 1) = v98;
    MEMORY[0x28223BE20](v101);
    *(&v126 - 2) = &v177;
    sub_21C968D04(sub_21C7AE738, v102, v79);

    if ((*(v137 + 48))(v79, 1, v138) == 1)
    {
      sub_21C6EA794(v79, &unk_27CDEBE60, &unk_21CB9FF40);
      v103 = 1;
      v104 = v175;
      v105 = v131;
      v106 = v132;
      v107 = v130;
    }

    else
    {
      v121 = v126;
      sub_21CB495D4(v79, v126, type metadata accessor for PMAccount);
      v122 = v121;
      v123 = v127;
      sub_21CB495D4(v122, v127, type metadata accessor for PMAccount);
      v124 = v123;
      v107 = v130;
      sub_21CB495D4(v124, v130, type metadata accessor for PMAccountDetailsView);
      v103 = 0;
      v104 = v175;
      v105 = v131;
      v106 = v132;
    }

    (*(v106 + 56))(v107, v103, 1, v105);
    sub_21C6EDBAC(v107, v162, &qword_27CDF9F20, &qword_21CBCD560);
    swift_storeEnumTagMultiPayload();
    sub_21CB49410();
    sub_21CB494FC();
    v125 = v163;
    sub_21CB83494();
    sub_21C6EDBAC(v125, v104, &qword_27CDF9EF8, &qword_21CBCD550);
    swift_storeEnumTagMultiPayload();
    sub_21CB49078();
    sub_21CB49384();
    sub_21CB83494();
    sub_21C6EA794(v125, &qword_27CDF9EF8, &qword_21CBCD550);
    v89 = v107;
    v90 = &qword_27CDF9F20;
    v91 = &qword_21CBCD560;
    return sub_21C6EA794(v89, v90, v91);
  }

  v92 = v171;
  (*(v157 + 32))(v171, v70, v158);
  v93 = *(v159 + 24);
  sub_21CA1D444(v92, v77);
  if ((*(v74 + 48))(v77, 1, v75) == 1)
  {
    sub_21C6EA794(v77, &qword_27CDF7670, &unk_21CBAA8F0);
    v94 = 1;
    v95 = v175;
    v96 = v165;
    v97 = v40;
  }

  else
  {
    sub_21CB495D4(v77, v76, type metadata accessor for PMSharingGroup);
    sub_21CB495D4(v76, v78, type metadata accessor for PMSharingGroup);
    v97 = v40;
    sub_21CB495D4(v78, v40, type metadata accessor for PMGroupAccountsView);
    v94 = 0;
    v95 = v175;
    v96 = v165;
  }

  v119 = v141;
  (*(v128 + 56))(v97, v94, 1, v129);
  sub_21C6EDBAC(v97, v119, &qword_27CDF9EE0, &qword_21CBCD548);
  swift_storeEnumTagMultiPayload();
  sub_21CB4927C();
  sub_21CB492D0();
  v120 = v144;
  sub_21CB83494();
  sub_21C6EDBAC(v120, v168, &qword_27CDF9EC8, &qword_21CBCD540);
  swift_storeEnumTagMultiPayload();
  sub_21CB49104();
  sub_21CB491F0();
  sub_21CB83494();
  sub_21C6EA794(v120, &qword_27CDF9EC8, &qword_21CBCD540);
  sub_21C6EDBAC(v96, v95, &qword_27CDF9EA0, &qword_21CBCD530);
  swift_storeEnumTagMultiPayload();
  sub_21CB49078();
  sub_21CB49384();
  sub_21CB83494();
  sub_21C6EA794(v96, &qword_27CDF9EA0, &qword_21CBCD530);
  sub_21C6EA794(v97, &qword_27CDF9EE0, &qword_21CBCD548);
  return (*(v157 + 8))(v171, v158);
}

uint64_t sub_21CB48750@<X0>(uint64_t a1@<X8>)
{
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  type metadata accessor for PMPasswordManagerState();
  sub_21C7062E8(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  v2 = sub_21CB82B54();
  swift_getKeyPath();
  sub_21CB82B74();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7778, &qword_21CBC5CB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9E30, &qword_21CBCD500);
  sub_21C6EADEC(&qword_27CDF9E38, &qword_27CDF7778, &qword_21CBC5CB0);
  sub_21C6EADEC(&qword_27CDF9E40, &qword_27CDF7778, &qword_21CBC5CB0);
  sub_21C6EADEC(&qword_27CDF9E48, &qword_27CDF7778, &qword_21CBC5CB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9E50, &qword_21CBCD508);
  type metadata accessor for PMSystemSettingsNavigationDestination();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9E58, &qword_21CBCD510);
  sub_21CB48D14();
  sub_21C7062E8(&qword_27CDF7C90, type metadata accessor for PMSystemSettingsNavigationDestination);
  sub_21CB48FEC();
  swift_getOpaqueTypeConformance2();
  sub_21CB82914();
  v3 = sub_21CB82B84();
  v5 = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9F28, &qword_21CBCD568);
  v7 = (a1 + *(result + 36));
  *v7 = v3;
  v7[1] = v5;
  return result;
}

uint64_t sub_21CB48A2C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v22 - v4;
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v23);

  type metadata accessor for PMAccountsState();
  sub_21C7062E8(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v7 = sub_21CB82674();
  v9 = v8;

  v10 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7073E8(v10, v23);

  type metadata accessor for PMGroupsStore();
  sub_21C7062E8(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v11 = sub_21CB82674();
  v13 = v12;

  v14 = sub_21CB85C44();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = type metadata accessor for PMGroupInvitationsListModel(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v22[1] = sub_21C9C6E08(v5);
  sub_21CB84D44();
  v18 = v23;
  v19 = v24;
  type metadata accessor for PMPasswordManagerState();
  sub_21C7062E8(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  result = sub_21CB82B84();
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  a1[4] = v18;
  a1[5] = v19;
  a1[6] = result;
  a1[7] = v21;
  return result;
}

unint64_t sub_21CB48D14()
{
  result = qword_27CDF9E60;
  if (!qword_27CDF9E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9E50, &qword_21CBCD508);
    sub_21CB48D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E60);
  }

  return result;
}

unint64_t sub_21CB48D98()
{
  result = qword_27CDF9E68;
  if (!qword_27CDF9E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9E70, &qword_21CBCD518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9E78, &unk_21CBCD520);
    sub_21CB829D4();
    sub_21CB48EB0();
    sub_21C7062E8(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    sub_21CB48F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E68);
  }

  return result;
}

unint64_t sub_21CB48EB0()
{
  result = qword_27CDF9E80;
  if (!qword_27CDF9E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9E78, &unk_21CBCD520);
    sub_21C7062E8(&qword_27CDED198, type metadata accessor for PMAccountsView);
    sub_21C6EADEC(&qword_27CDECF60, &qword_27CDED1C0, &qword_21CBA5BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E80);
  }

  return result;
}

unint64_t sub_21CB48F98()
{
  result = qword_27CDF9E88;
  if (!qword_27CDF9E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E88);
  }

  return result;
}

unint64_t sub_21CB48FEC()
{
  result = qword_27CDF9E90;
  if (!qword_27CDF9E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9E58, &qword_21CBCD510);
    sub_21CB49078();
    sub_21CB49384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E90);
  }

  return result;
}

unint64_t sub_21CB49078()
{
  result = qword_27CDF9E98;
  if (!qword_27CDF9E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9EA0, &qword_21CBCD530);
    sub_21CB49104();
    sub_21CB491F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E98);
  }

  return result;
}

unint64_t sub_21CB49104()
{
  result = qword_27CDF9EA8;
  if (!qword_27CDF9EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9EB0, &qword_21CBCD538);
    sub_21C7062E8(&qword_27CDED570, type metadata accessor for PMPasswordOptionsView);
    sub_21C7062E8(&qword_27CDF9EB8, type metadata accessor for PMPasswordsSecurityView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9EA8);
  }

  return result;
}

unint64_t sub_21CB491F0()
{
  result = qword_27CDF9EC0;
  if (!qword_27CDF9EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9EC8, &qword_21CBCD540);
    sub_21CB4927C();
    sub_21CB492D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9EC0);
  }

  return result;
}

unint64_t sub_21CB4927C()
{
  result = qword_27CDF9ED0;
  if (!qword_27CDF9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9ED0);
  }

  return result;
}

unint64_t sub_21CB492D0()
{
  result = qword_27CDF9ED8;
  if (!qword_27CDF9ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9EE0, &qword_21CBCD548);
    sub_21C7062E8(&qword_27CDF9EE8, type metadata accessor for PMGroupAccountsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9ED8);
  }

  return result;
}

unint64_t sub_21CB49384()
{
  result = qword_27CDF9EF0;
  if (!qword_27CDF9EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9EF8, &qword_21CBCD550);
    sub_21CB49410();
    sub_21CB494FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9EF0);
  }

  return result;
}

unint64_t sub_21CB49410()
{
  result = qword_27CDF9F00;
  if (!qword_27CDF9F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9F08, &qword_21CBCD558);
    sub_21C7062E8(&qword_27CDF0250, type metadata accessor for PMGroupInvitationsList);
    sub_21C7062E8(&qword_27CDF9F10, type metadata accessor for PMRecentlyDeletedAccountsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9F00);
  }

  return result;
}

unint64_t sub_21CB494FC()
{
  result = qword_27CDF9F18;
  if (!qword_27CDF9F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9F20, &qword_21CBCD560);
    sub_21C7062E8(&qword_27CDEB1D8, type metadata accessor for PMAccountDetailsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9F18);
  }

  return result;
}

uint64_t sub_21CB495D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB4963C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB496A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CB49704()
{
  result = qword_27CDF9F68;
  if (!qword_27CDF9F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9F28, &qword_21CBCD568);
    sub_21C6EADEC(&qword_27CDF9F70, &qword_27CDF9F78, &qword_21CBCD658);
    sub_21CB497BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9F68);
  }

  return result;
}

unint64_t sub_21CB497BC()
{
  result = qword_27CDF9F80[0];
  if (!qword_27CDF9F80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDF9F80);
  }

  return result;
}

void sub_21CB49810()
{
  sub_21CB49968(319, &qword_27CDEB890, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21C72C81C();
    if (v1 <= 0x3F)
    {
      sub_21CB49968(319, &qword_27CDEE4A0, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_21C7226D8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21CB49968(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_21CB499FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for PMAdapativeStackLabeledContentStyle();
  v33 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v35 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA008, &qword_21CBCD6D0);
  v8 = sub_21CB825E4();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v32 = &v31 - v10;
  v11 = *(a1 + 24);
  v34 = sub_21CB4A1DC();
  v53 = v11;
  v54 = v34;
  WitnessTable = swift_getWitnessTable();
  v37 = WitnessTable;
  v36 = sub_21CAA5114();
  v49 = v8;
  v50 = v3;
  v51 = WitnessTable;
  v52 = v36;
  v39 = MEMORY[0x277CDEA88];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  v46 = v7;
  v47 = v11;
  v21 = v40;
  v48 = v40;
  v43 = v7;
  v44 = v11;
  v45 = v40;
  sub_21CB825D4();
  LOBYTE(v7) = *(v21 + *(v35 + 52));
  *v6 = sub_21CB83034();
  v6[8] = v7;
  v22 = v33;
  v23 = *(v33 + 24);
  *&v6[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v24 = v22;
  v25 = v37;
  v26 = v36;
  v27 = v32;
  sub_21CB844C4();
  sub_21CAA516C(v6);
  (*(v41 + 8))(v27, v8);
  v49 = v8;
  v50 = v24;
  v51 = v25;
  v52 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21C72BE10(v17, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v29 = *(v14 + 8);
  v29(v17, OpaqueTypeMetadata2);
  sub_21C72BE10(v20, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v29)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_21CB49DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_21CB82834();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - v10;
  v12 = type metadata accessor for PMTextField();
  v13 = v12[10];
  v14 = (a1 + v12[11]);
  v15 = v14[1];
  v35 = *v14;
  v36 = v15;
  v16 = a1 + v13;
  v27[2] = a1;
  v17 = *(a1 + v13);
  v19 = *(a1 + v13 + 16);
  v18 = *(v16 + 24);
  v32 = v17;
  v33 = v19;
  v34 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  sub_21CB84F54();
  v27[1] = v31;
  v20 = v12[9];
  sub_21C7448E0(v7);
  sub_21CB82824();
  v21 = *(v4 + 8);
  v21(v7, v3);
  sub_21C71F3FC();
  sub_21CB85324();
  sub_21C7448E0(v7);
  LOBYTE(a1) = sub_21CB82824();
  v21(v7, v3);
  if (a1)
  {
    v22 = 0;
  }

  else
  {
    v22 = 2;
  }

  KeyPath = swift_getKeyPath();
  v24 = v30;
  (*(v28 + 32))(v30, v11, v29);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA008, &qword_21CBCD6D0);
  v26 = v24 + *(result + 36);
  *v26 = KeyPath;
  *(v26 + 8) = v22;
  return result;
}

uint64_t sub_21CB4A090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v13 = a1 + *(type metadata accessor for PMTextField() + 56);
  v14 = *(v13 + 8);
  (*v13)();
  sub_21C72BE10(v9, a2, a3);
  v15 = *(v6 + 8);
  v15(v9, a2);
  sub_21C72BE10(v12, a2, a3);
  return (v15)(v12, a2);
}

unint64_t sub_21CB4A1DC()
{
  result = qword_27CDFA010;
  if (!qword_27CDFA010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA008, &qword_21CBCD6D0);
    sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
    sub_21C6EADEC(&qword_27CDED860, &qword_27CDED868, &unk_21CBA7B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA010);
  }

  return result;
}

uint64_t sub_21CB4A2C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_21CB49DE4(v1[4], a1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21CB4A2FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CB4A350(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_21CB4A414(v7, v9) & 1;
}

unint64_t sub_21CB4A3C0()
{
  result = qword_27CDFA018[0];
  if (!qword_27CDFA018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDFA018);
  }

  return result;
}

uint64_t sub_21CB4A414(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (sub_21CB84C44() & 1) == 0 || ((*(a1 + 16) ^ *(a2 + 16)))
  {
    return 0;
  }

  if ((*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_21CB86344() & 1) == 0 || (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
  {
    return 1;
  }

  return sub_21CB86344();
}

uint64_t sub_21CB4A518(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 233) = a4;
  *(v4 + 168) = a2;
  *(v4 + 176) = a3;
  *(v4 + 160) = a1;
  sub_21CB858B4();
  *(v4 + 184) = sub_21CB858A4();
  v6 = sub_21CB85874();
  *(v4 + 192) = v6;
  *(v4 + 200) = v5;

  return MEMORY[0x2822009F8](sub_21CB4A5B8, v6, v5);
}

uint64_t sub_21CB4A5B8()
{
  v1 = *(v0 + 160);
  if (v1 <= 1)
  {
    if (!v1)
    {
      v14 = *(v0 + 184);

      if (qword_27CDEA470 != -1)
      {
        swift_once();
      }

      v15 = sub_21CB81C84();
      __swift_project_value_buffer(v15, qword_27CE186E0);
      v10 = sub_21CB81C64();
      v11 = sub_21CB85AF4();
      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_21;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Tip context: performed an action on a none tip type.";
      goto LABEL_20;
    }

    if (v1 == 1)
    {
      v2 = objc_opt_self();
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 232;
      *(v0 + 24) = sub_21CB4A984;
      v3 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F90, &unk_21CBBFE80);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_21CA92000;
      *(v0 + 104) = &block_descriptor_43;
      *(v0 + 112) = v3;
      [v2 setUserVisibleKeychainSyncEnabled:1 withCompletion:v0 + 80];

      return MEMORY[0x282200938](v0 + 16);
    }

LABEL_12:
    v8 = *(v0 + 184);

    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v9 = sub_21CB81C84();
    __swift_project_value_buffer(v9, qword_27CE186E0);
    v10 = sub_21CB81C64();
    v11 = sub_21CB85AF4();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_21;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Tip context: performed an action on an unknown tip type.";
LABEL_20:
    _os_log_impl(&dword_21C6E5000, v10, v11, v13, v12, 2u);
    MEMORY[0x21CF16D90](v12, -1, -1);
LABEL_21:

LABEL_22:
    v16 = *(v0 + 8);

    return v16();
  }

  if (v1 != 2)
  {
    if (v1 == 3)
    {
      v4 = *(v0 + 184);
      v5 = *(v0 + 233);

      if (v5)
      {
        v6 = *(v0 + 176);
        if (v6)
        {
          v7 = *(v6 + 64);
          sub_21C9175A4(0);
        }
      }

      else
      {
        v18 = *(v0 + 168);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 144) = 0;
        v19 = v18;
        sub_21CB81DC4();
      }

      goto LABEL_22;
    }

    goto LABEL_12;
  }

  v17 = swift_task_alloc();
  *(v0 + 216) = v17;
  *v17 = v0;
  v17[1] = sub_21CB4AB14;

  return sub_21CA857C4();
}

uint64_t sub_21CB4A984()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  v4 = *(v1 + 200);
  v5 = *(v1 + 192);
  if (v3)
  {
    v6 = sub_21CB4AD28;
  }

  else
  {
    v6 = sub_21CB4AAB4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21CB4AAB4()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CB4AB14(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = a1;

  v4 = *(v2 + 200);
  v5 = *(v2 + 192);

  return MEMORY[0x2822009F8](sub_21CB4AC3C, v5, v4);
}

uint64_t sub_21CB4AC3C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 184);
  v3 = *(v0 + 233);

  if (v3)
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 224);
    if (v4)
    {
      v6 = *(v4 + 64);
      v7 = *(v0 + 224);

      sub_21C9175A4(v1);
    }
  }

  else
  {
    v8 = *(v0 + 168);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 152) = v1;
    v9 = v8;
    sub_21CB81DC4();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_21CB4AD28()
{
  v1 = v0[26];
  v2 = v0[23];

  swift_willThrow();
  sub_21CB4ADA8();

  v3 = v0[1];

  return v3();
}

id sub_21CB4ADA8()
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
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_21C79C324(v3);
  }

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

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21CB4AFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_21CB4BD58(a3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_21CB4B058()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21CB4B090(uint64_t a1)
{
  v2 = *v1;
  [objc_opt_self() userDidAcknowledgeTip_];
  return sub_21C6F1B88();
}

uint64_t sub_21CB4B0D4()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21CB4B1B8()
{
  sub_21CB86484();
  MEMORY[0x21CF15F90](v0);
  return sub_21CB864D4();
}

uint64_t sub_21CB4B248()
{
  sub_21CB86484();
  v1 = *v0;
  sub_21CB4B18C();
  return sub_21CB864D4();
}

uint64_t sub_21CB4B2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v67 = *(v5 - 8);
  v6 = *(v67 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_21CB86484();
  v11 = type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  sub_21CB4C634(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
  v62 = v11;
  sub_21CB85494();
  v64 = v5;
  v12 = *(a1 + *(v5 + 20));
  v63 = a2;
  v61 = v12;
  sub_21CB864A4();
  if (v12)
  {
    v13 = v12;
    sub_21CB85DE4();
  }

  v14 = sub_21CB864D4();
  v15 = v9 + 56;
  v16 = -1 << *(v9 + 32);
  v17 = v14 & ~v16;
  if (((*(v9 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
LABEL_116:
    result = (*(v67 + 56))(v63, 1, 1, v64);
    goto LABEL_117;
  }

  v71 = 0;
  v75 = ~v16;
  v18 = *a1;
  v19 = *(a1 + 8);
  v76 = *(v67 + 72);
  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19 == 0xC000000000000000;
  }

  v21 = !v20;
  v74 = v21;
  v22 = v19 >> 62;
  v72 = v18;
  v23 = HIDWORD(v18) - v18;
  v24 = __OFSUB__(HIDWORD(v18), v18);
  v70 = v24;
  v68 = v19;
  v69 = v23;
  v73 = BYTE6(v19);
  v65 = v9;
  v66 = v9 + 56;
  while (1)
  {
    v25 = v76 * v17;
    sub_21CADB840(*(v9 + 48) + v76 * v17, v8);
    v26 = *v8;
    v27 = v8[1];
    v28 = v27 >> 62;
    if (v27 >> 62 == 3)
    {
      if (v26)
      {
        v29 = 0;
      }

      else
      {
        v29 = v27 == 0xC000000000000000;
      }

      v31 = !v29 || v22 < 3;
      if (((v31 | v74) & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_36:
      v32 = 0;
      if (v22 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }

    if (v28 > 1)
    {
      if (v28 != 2)
      {
        goto LABEL_36;
      }

      v34 = *(v26 + 16);
      v33 = *(v26 + 24);
      v35 = __OFSUB__(v33, v34);
      v32 = v33 - v34;
      if (v35)
      {
        goto LABEL_122;
      }

      if (v22 > 1)
      {
        goto LABEL_37;
      }
    }

    else if (v28)
    {
      LODWORD(v32) = HIDWORD(v26) - v26;
      if (__OFSUB__(HIDWORD(v26), v26))
      {
        goto LABEL_123;
      }

      v32 = v32;
      if (v22 > 1)
      {
LABEL_37:
        if (v22 != 2)
        {
          if (v32)
          {
            goto LABEL_111;
          }

          goto LABEL_63;
        }

        v38 = *(v72 + 16);
        v37 = *(v72 + 24);
        v35 = __OFSUB__(v37, v38);
        v36 = v37 - v38;
        if (v35)
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
          goto LABEL_128;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v32 = BYTE6(v27);
      if (v22 > 1)
      {
        goto LABEL_37;
      }
    }

LABEL_33:
    v36 = v73;
    if (v22)
    {
      v36 = v69;
      if (v70)
      {
        goto LABEL_121;
      }
    }

LABEL_39:
    if (v32 != v36)
    {
      goto LABEL_111;
    }

    if (v32 >= 1)
    {
      if (v28 > 1)
      {
        if (v28 != 2)
        {
          *&v78[6] = 0;
          *v78 = 0;
LABEL_62:
          v12 = v71;
          sub_21CA8FA10(v78, v72, v68, &v77);
          v71 = v12;
          if (!v77)
          {
            goto LABEL_111;
          }

          goto LABEL_63;
        }

        v39 = *(v26 + 16);
        v12 = *(v26 + 24);
        v40 = sub_21CB808C4();
        if (v40)
        {
          v41 = sub_21CB808F4();
          if (__OFSUB__(v39, v41))
          {
            goto LABEL_126;
          }

          v40 += v39 - v41;
        }

        v35 = __OFSUB__(v12, v39);
        v12 = (v12 - v39);
        if (v35)
        {
          goto LABEL_125;
        }
      }

      else
      {
        if (!v28)
        {
          *v78 = *v8;
          *&v78[8] = v27;
          v78[10] = BYTE2(v27);
          v78[11] = BYTE3(v27);
          v78[12] = BYTE4(v27);
          v78[13] = BYTE5(v27);
          goto LABEL_62;
        }

        v12 = v26;
        if (v26 >> 32 < v26)
        {
          goto LABEL_124;
        }

        v40 = sub_21CB808C4();
        if (v40)
        {
          v42 = sub_21CB808F4();
          if (__OFSUB__(v12, v42))
          {
            goto LABEL_127;
          }

          v40 += v12 - v42;
        }
      }

      sub_21CB808E4();
      v12 = v71;
      sub_21CA8FA10(v40, v72, v68, v78);
      v71 = v12;
      v9 = v65;
      v15 = v66;
      if ((v78[0] & 1) == 0)
      {
        goto LABEL_111;
      }
    }

LABEL_63:
    if ((v8[2] != *(a1 + 16) || v8[3] != *(a1 + 24)) && (sub_21CB86344() & 1) == 0 || (v8[4] != *(a1 + 32) || v8[5] != *(a1 + 40)) && (sub_21CB86344() & 1) == 0)
    {
      goto LABEL_111;
    }

    v43 = v8[6];
    v44 = *(a1 + 48);
    if (*(a1 + 56) == 1)
    {
      if (v44 <= 1)
      {
        if (v44)
        {
          if (v43 != 1)
          {
            goto LABEL_111;
          }
        }

        else if (v43)
        {
          goto LABEL_111;
        }
      }

      else if (v44 == 2)
      {
        if (v43 != 2)
        {
          goto LABEL_111;
        }
      }

      else if (v44 == 3)
      {
        if (v43 != 3)
        {
          goto LABEL_111;
        }
      }

      else if (v43 != 4)
      {
        goto LABEL_111;
      }
    }

    else if (v43 != v44)
    {
      goto LABEL_111;
    }

    v45 = v8[8];
    v46 = *(a1 + 64);
    if (*(a1 + 72) == 1)
    {
      if (v46)
      {
        if (v46 == 1)
        {
          if (v45 != 1)
          {
            goto LABEL_111;
          }
        }

        else if (v45 != 2)
        {
          goto LABEL_111;
        }
      }

      else if (v45)
      {
        goto LABEL_111;
      }
    }

    else if (v45 != v46)
    {
      goto LABEL_111;
    }

    v47 = v8[10];
    v48 = *(a1 + 80);
    if (*(a1 + 88) == 1)
    {
      if (v48)
      {
        if (v48 == 1)
        {
          if (v47 != 1)
          {
            goto LABEL_111;
          }
        }

        else if (v47 != 2)
        {
          goto LABEL_111;
        }
      }

      else if (v47)
      {
        goto LABEL_111;
      }
    }

    else if (v47 != v48)
    {
      goto LABEL_111;
    }

    if (v8[12] != *(a1 + 96) || (v12 = *(v62 + 44), sub_21CB811C4(), sub_21CB4C634(&unk_27CDF8A70, MEMORY[0x277D216C8]), (sub_21CB85574() & 1) == 0))
    {
LABEL_111:
      sub_21CADB8EC(v8);
      goto LABEL_112;
    }

    v12 = *(v8 + *(v64 + 20));
    if (!v12)
    {
      break;
    }

    v49 = v61;
    if (!v61)
    {
      goto LABEL_111;
    }

    sub_21C7B1B18();
    v50 = v49;
    v51 = v12;
    v52 = sub_21CB85DD4();
    sub_21CADB8EC(v8);

    v15 = v66;
    if (v52)
    {
      goto LABEL_118;
    }

LABEL_112:
    v17 = (v17 + 1) & v75;
    if (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_116;
    }
  }

  v12 = v61;
  v53 = v61;
  sub_21CADB8EC(v8);
  if (v12)
  {

    goto LABEL_112;
  }

LABEL_118:
  v12 = v60;
  v56 = *v60;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v12;
  *v78 = *v12;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_119;
  }

LABEL_128:
  sub_21CA9DD1C();
  v58 = *v78;
LABEL_119:
  v59 = v63;
  sub_21CB4C67C(*(v58 + 48) + v25, v63);
  sub_21CB4BFBC(v17);
  *v12 = *v78;
  result = (*(v67 + 56))(v59, 0, 1, v64);
LABEL_117:
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21CB4BAE4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_21CB86484();
  sub_21CB854C4();
  v7 = sub_21CB864D4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_21CB86344() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21CA9DBC0();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_21CB4C2C8(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_21CB4BC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_21CB86484();
  sub_21CB854C4();
  result = sub_21CB864D4();
  v10 = -1 << *(v7 + 32);
  v11 = result & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      if (*v13 == a1 && v13[1] == a2)
      {
        break;
      }

      result = sub_21CB86344();
      if (result)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v21 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21CA9E078();
      v17 = v21;
    }

    v18 = (*(v17 + 48) + 16 * v11);
    v20 = *v18;
    v19 = v18[1];
    *a3 = v20;
    a3[1] = v19;
    result = sub_21CB4C2C8(v11);
    *v3 = v21;
  }

  else
  {
LABEL_9:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_21CB4BD58(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = sub_21CB85FF4();

    if (v6)
    {
      v7 = sub_21CB4BEC8(v4, a1);

      return v7;
    }

    return 0;
  }

  v9 = *(v3 + 40);
  sub_21CB86484();
  MEMORY[0x21CF15F90](a1);
  v10 = sub_21CB864D4();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (*(*(v3 + 48) + 8 * v12) != a1)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v1;
  v18 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21CA9E9B4();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v12);
  sub_21CB4C48C(v12);
  result = v17;
  *v1 = v18;
  return result;
}

uint64_t sub_21CB4BEC8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;

  v5 = sub_21CB85FA4();
  v6 = swift_unknownObjectRetain();
  v7 = sub_21CA977CC(v6, v5);
  v16 = v7;
  v8 = *(v7 + 40);
  sub_21CB86484();
  MEMORY[0x21CF15F90](a2);
  v9 = sub_21CB864D4();
  v10 = v7 + 56;
  v11 = -1 << *(v7 + 32);
  v12 = v9 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v7 + 48);
    while (1)
    {
      v7 = *(v14 + 8 * v12);
      if (v7 == a2)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  sub_21CB4C48C(v12);
  *v2 = v16;
  return v7;
}

uint64_t sub_21CB4BFBC(unint64_t a1)
{
  v32 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v32);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = sub_21CB85F34();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v31 = v12;
      v15 = (v14 + 1) & v12;
      v16 = *(v3 + 72);
      while (1)
      {
        v17 = v9;
        v18 = v16;
        v19 = v16 * v11;
        sub_21CADB840(*(v8 + 48) + v16 * v11, v7);
        v20 = *(v8 + 40);
        sub_21CB86484();
        type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
        sub_21CB4C634(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
        sub_21CB85494();
        v21 = *&v7[*(v32 + 20)];
        sub_21CB864A4();
        if (v21)
        {
          v22 = v21;
          sub_21CB85DE4();
        }

        v23 = sub_21CB864D4();
        sub_21CADB8EC(v7);
        v24 = v31;
        v25 = v23 & v31;
        if (a1 >= v15)
        {
          break;
        }

        v16 = v18;
        if (v25 < v15)
        {
          goto LABEL_13;
        }

LABEL_14:
        v26 = v16 * a1;
        if ((v16 * a1) < v19 || *(v8 + 48) + v16 * a1 >= *(v8 + 48) + v19 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v11;
          if (v26 == v19)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v11;
LABEL_6:
        v11 = (v11 + 1) & v24;
        v9 = v17;
        if (((*(v17 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v16 = v18;
      if (v25 < v15)
      {
        goto LABEL_6;
      }

LABEL_13:
      if (a1 < v25)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

LABEL_18:

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v27 = *(v8 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v29;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_21CB4C2C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_21CB85F34();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_21CB86484();

        sub_21CB854C4();
        v15 = sub_21CB864D4();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_21CB4C48C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_21CB85F34();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_21CB86484();
        MEMORY[0x21CF15F90](v12);
        v13 = sub_21CB864D4() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_21CB4C634(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CB4C67C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_21CB4C6E0@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  result = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_21CB4C798()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_observeTipsHandle;
  if (*(v0 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_observeTipsHandle))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_observeTipsHandle);

    sub_21CB85944();
  }

  v3 = OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore__tip;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED220, &qword_21CBA6458);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider));
  v5 = *(v0 + v1);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21CB4C8A8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v3 = v7;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  v14 = v9;
  v15 = v10;
  if (v8)
  {
    v11 = v16;
    v12 = v17;
    v13 = v18;
    v10 = v15;
    v9 = v14;
    sub_21CB4CA34(&v7);
    if (v3 == a1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_21CB81DC4();
    }
  }

  else
  {
    v8 = 0;
    v11 = v16;
    v12 = v17;
    v13 = v18;
    v10 = v15;
    v9 = v14;
    sub_21CB4CA34(&v7);
  }

  v4 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider + 24);
  v5 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider), v4);
  return (*(v5 + 32))(a1, v4, v5);
}

uint64_t sub_21CB4CA34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED230, &unk_21CBA6460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21CB4CAD8()
{
  result = qword_27CDFA120;
  if (!qword_27CDFA120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA120);
  }

  return result;
}

uint64_t sub_21CB4CB48@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v54 = sub_21CB83274();
  v52 = *(v54 - 8);
  v2 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v51 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB83874();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB83A34();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA128, &qword_21CBCDD08);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v41 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA130, &qword_21CBCDD10);
  v44 = *(v15 - 8);
  v16 = *(v44 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA138, &qword_21CBCDD18);
  v47 = *(v45 - 8);
  v19 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  v21 = &v41 - v20;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA140, &qword_21CBCDD20);
  v22 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v24 = &v41 - v23;
  *v14 = sub_21CB851E4();
  v14[1] = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA148, &qword_21CBCDD28);
  sub_21CB4D10C(v1, v14 + *(v26 + 44));
  v27 = sub_21CB83CF4();
  sub_21CB81F24();
  v28 = v14 + *(v11 + 36);
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_21CB83A24();
  v33 = sub_21CB4F928();
  sub_21CB844F4();
  (*(v42 + 8))(v10, v43);
  sub_21C6EA794(v14, &qword_27CDFA128, &qword_21CBCDD08);
  v55 = v1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA168, &qword_21CBCDD38);
  v56 = v11;
  v57 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = sub_21C6EADEC(&qword_27CDFA170, &qword_27CDFA168, &qword_21CBCDD38);
  sub_21CB844E4();
  (*(v44 + 8))(v18, v15);
  v37 = v48;
  sub_21CB83864();
  v56 = v15;
  v57 = v34;
  v58 = OpaqueTypeConformance2;
  v59 = v36;
  swift_getOpaqueTypeConformance2();
  v38 = v45;
  sub_21CB84484();
  (*(v49 + 8))(v37, v50);
  (*(v47 + 8))(v21, v38);
  v39 = v51;
  sub_21CB83254();
  sub_21CB828D4();
  (*(v52 + 8))(v39, v54);
  return sub_21C6EA794(v24, &qword_27CDFA140, &qword_21CBCDD20);
}

uint64_t sub_21CB4D10C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for PMTipView();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_21CB81024();
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v32);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1C0, &qword_21CBCDE20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v19 = sub_21CB83054();
  if (*a1 > 3uLL)
  {
    v20 = 0x4028000000000000;
  }

  else
  {
    v20 = qword_21CBCDEF0[*a1];
  }

  *v15 = v19;
  *(v15 + 1) = v20;
  v15[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1C8, &qword_21CBCDE28);
  sub_21CB4D48C(a1, &v15[*(v21 + 44)]);
  sub_21C716934(v15, v18, &qword_27CDFA1C0, &qword_21CBCDE20);
  sub_21CB81014();
  v22 = sub_21CB81004();
  v24 = v23;
  (*(v5 + 8))(v8, v32);
  v25 = a1;
  v26 = v34;
  sub_21CB4FF80(v25, v34, type metadata accessor for PMTipView);
  v27 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v28 = swift_allocObject();
  sub_21CB4F9E8(v26, v28 + v27);
  sub_21C6EDBAC(v18, v12, &qword_27CDFA1C0, &qword_21CBCDE20);
  v29 = v35;
  sub_21C6EDBAC(v12, v35, &qword_27CDFA1C0, &qword_21CBCDE20);
  v30 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1D0, &qword_21CBCDE30) + 48));
  *v30 = v22;
  v30[1] = v24;
  v30[2] = sub_21CB501C4;
  v30[3] = v28;

  sub_21C6EA794(v18, &qword_27CDFA1C0, &qword_21CBCDE20);

  return sub_21C6EA794(v12, &qword_27CDFA1C0, &qword_21CBCDE20);
}

uint64_t sub_21CB4D48C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1D8, &qword_21CBCDE38);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1E0, &qword_21CBCDE40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1E8, &qword_21CBCDE48);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v39 - v23;
  sub_21CB4D7B4();
  v25 = sub_21CB83D14();
  *a1;
  sub_21CB81F24();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_21C716934(v13, v21, &qword_27CDFA1E0, &qword_21CBCDE40);
  v34 = &v21[*(v15 + 44)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  sub_21C716934(v21, v24, &qword_27CDFA1E8, &qword_21CBCDE48);
  *v9 = sub_21CB832F4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1F0, &qword_21CBCDE50);
  sub_21CB4DA88(a1, &v9[*(v35 + 44)]);
  sub_21C6EDBAC(v24, v18, &qword_27CDFA1E8, &qword_21CBCDE48);
  sub_21C6EDBAC(v9, v6, &qword_27CDFA1D8, &qword_21CBCDE38);
  v36 = v40;
  sub_21C6EDBAC(v18, v40, &qword_27CDFA1E8, &qword_21CBCDE48);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1F8, &qword_21CBCDE58);
  sub_21C6EDBAC(v6, v36 + *(v37 + 48), &qword_27CDFA1D8, &qword_21CBCDE38);
  sub_21C6EA794(v9, &qword_27CDFA1D8, &qword_21CBCDE38);
  sub_21C6EA794(v24, &qword_27CDFA1E8, &qword_21CBCDE48);
  sub_21C6EA794(v6, &qword_27CDFA1D8, &qword_21CBCDE38);
  return sub_21C6EA794(v18, &qword_27CDFA1E8, &qword_21CBCDE48);
}

uint64_t sub_21CB4D7B4()
{
  v1 = sub_21CB84BD4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA230, &qword_21CBCDEB8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v28 - v9;
  v11 = v0[1];
  (*(v2 + 104))(v5, *MEMORY[0x277CE0FE0], v1, v8);
  v12 = sub_21CB84C64();
  (*(v2 + 8))(v5, v1);
  v13 = sub_21CB84B14();
  v14 = v0[12];
  v15 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA238, &qword_21CBCDEC0) + 36)];
  v16 = *(sub_21CB82A84() + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_21CB831A4();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  *v15 = v14;
  *(v15 + 1) = v14;
  *v10 = v12;
  *(v10 + 1) = v13;
  *(v10 + 2) = 0;
  *(v10 + 12) = 1;
  v19 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA240, &qword_21CBCDEC8) + 36)];
  sub_21CB4E8A8(v19);
  v20 = sub_21CB85214();
  v22 = v21;
  v23 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA248, &qword_21CBCDED0) + 36));
  *v23 = v20;
  v23[1] = v22;
  v24 = v0[11];
  sub_21CB85214();
  sub_21CB82374();
  v25 = &v10[*(v6 + 36)];
  v26 = v28[1];
  *v25 = v28[0];
  *(v25 + 1) = v26;
  *(v25 + 2) = v28[2];
  sub_21CB4FCF8();
  sub_21CB84494();
  return sub_21C6EA794(v10, &qword_27CDFA230, &qword_21CBCDEB8);
}

uint64_t sub_21CB4DA88@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA178, &unk_21CBCDD40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = &v33 - v7;
  v38 = sub_21CB84FB4();
  v35 = *(v38 - 8);
  v8 = v35;
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA200, &qword_21CBCDE60);
  v37 = *(v14 - 8);
  v15 = v37;
  v16 = *(v37 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v33 - v20;
  v43 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA208, &qword_21CBCDE68);
  sub_21C6EADEC(&qword_27CDFA210, &qword_27CDFA208, &qword_21CBCDE68);
  v22 = v21;
  v36 = v21;
  sub_21CB81FC4();
  v34 = v13;
  sub_21CB84FA4();
  v23 = v42;
  sub_21CB4E170(v42);
  v24 = *(v15 + 16);
  v24(v18, v22, v14);
  v33 = *(v8 + 16);
  v25 = v41;
  v26 = v38;
  v33(v41, v13, v38);
  v27 = v39;
  sub_21C6EDBAC(v23, v39, &qword_27CDFA178, &unk_21CBCDD40);
  v28 = v40;
  v24(v40, v18, v14);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA218, &qword_21CBCDE70);
  v33(&v28[*(v29 + 48)], v25, v26);
  sub_21C6EDBAC(v27, &v28[*(v29 + 64)], &qword_27CDFA178, &unk_21CBCDD40);
  sub_21C6EA794(v42, &qword_27CDFA178, &unk_21CBCDD40);
  v30 = *(v35 + 8);
  v30(v34, v26);
  v31 = *(v37 + 8);
  v31(v36, v14);
  sub_21C6EA794(v27, &qword_27CDFA178, &unk_21CBCDD40);
  v30(v41, v26);
  return (v31)(v18, v14);
}

uint64_t sub_21CB4DE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA220, &qword_21CBCDE78);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v37 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v35 - v8;
  v36 = a1;
  v10 = *(a1 + 32);
  v39 = *(a1 + 24);
  v40 = v10;
  v35[1] = sub_21C71F3FC();

  v11 = sub_21CB84054();
  v13 = v12;
  LOBYTE(v10) = v14;
  v16 = v15;
  KeyPath = swift_getKeyPath();
  v39 = v11;
  v40 = v13;
  v41 = v10 & 1;
  v42 = v16;
  v43 = KeyPath;
  v44 = 0;
  v45 = 1;
  sub_21CB83DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB960, &qword_21CBBAFA0);
  sub_21C7E397C();
  sub_21CB840D4();
  sub_21C74A72C(v11, v13, v10 & 1);

  LOBYTE(v11) = sub_21CB83D34();
  sub_21CB81F24();
  v18 = &v9[*(v4 + 44)];
  *v18 = v11;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  v23 = *(v36 + 48);
  v39 = *(v36 + 40);
  v40 = v23;

  v24 = sub_21CB84054();
  v26 = v25;
  LOBYTE(v11) = v27;
  v29 = v28;
  v30 = swift_getKeyPath();
  v31 = v37;
  sub_21C6EDBAC(v9, v37, &qword_27CDFA220, &qword_21CBCDE78);
  v32 = v38;
  sub_21C6EDBAC(v31, v38, &qword_27CDFA220, &qword_21CBCDE78);
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA228, &qword_21CBCDEB0) + 48);
  *v33 = v24;
  *(v33 + 8) = v26;
  LOBYTE(v11) = v11 & 1;
  *(v33 + 16) = v11;
  *(v33 + 24) = v29;
  *(v33 + 32) = v30;
  *(v33 + 40) = 0;
  *(v33 + 48) = 1;
  sub_21C79B058(v24, v26, v11);

  sub_21C6EA794(v9, &qword_27CDFA220, &qword_21CBCDE78);
  sub_21C74A72C(v24, v26, v11);

  return sub_21C6EA794(v31, &qword_27CDFA220, &qword_21CBCDE78);
}

uint64_t sub_21CB4E170@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA188, &qword_21CBCDD58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA190, &qword_21CBCDD60);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA198, &qword_21CBCDD68);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v42 - v16;
  *v7 = sub_21CB83074();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1A0, &unk_21CBCDD70);
  sub_21CB4ED50(v2, &v7[*(v18 + 44)]);
  sub_21CB85224();
  sub_21CB82AC4();
  sub_21C716934(v7, v12, &qword_27CDFA188, &qword_21CBCDD58);
  v19 = &v12[*(v9 + 44)];
  v20 = v42[5];
  *(v19 + 4) = v42[4];
  *(v19 + 5) = v20;
  *(v19 + 6) = v42[6];
  v21 = v42[1];
  *v19 = v42[0];
  *(v19 + 1) = v21;
  v22 = v42[3];
  *(v19 + 2) = v42[2];
  *(v19 + 3) = v22;
  LOBYTE(v7) = sub_21CB83CF4();
  sub_21CB81F24();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_21C716934(v12, v17, &qword_27CDFA190, &qword_21CBCDD60);
  v31 = &v17[*(v14 + 44)];
  *v31 = v7;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  LOBYTE(v7) = sub_21CB83D04();
  sub_21CB81F24();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_21C716934(v17, a1, &qword_27CDFA198, &qword_21CBCDD68);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA178, &unk_21CBCDD40);
  v41 = a1 + *(result + 36);
  *v41 = v7;
  *(v41 + 8) = v33;
  *(v41 + 16) = v35;
  *(v41 + 24) = v37;
  *(v41 + 32) = v39;
  *(v41 + 40) = 0;
  return result;
}

uint64_t sub_21CB4E434@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA178, &unk_21CBCDD40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for PMTipView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - v19;
  sub_21CB4FF80(a1, &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMTipView);
  v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v22 = swift_allocObject();
  sub_21CB4F9E8(&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  sub_21CB84DA4();
  sub_21CB4E170(v9);
  v23 = v14[2];
  v23(v17, v20, v13);
  sub_21C6EDBAC(v9, v6, &qword_27CDFA178, &unk_21CBCDD40);
  v24 = v29;
  v23(v29, v17, v13);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA180, &qword_21CBCDD50);
  sub_21C6EDBAC(v6, &v24[*(v25 + 48)], &qword_27CDFA178, &unk_21CBCDD40);
  sub_21C6EA794(v9, &qword_27CDFA178, &unk_21CBCDD40);
  v26 = v14[1];
  v26(v20, v13);
  sub_21C6EA794(v6, &qword_27CDFA178, &unk_21CBCDD40);
  return (v26)(v17, v13);
}

uint64_t sub_21CB4E780@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21CB4E8A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB82A84();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA290, &qword_21CBCDEE8);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v27 - v11;
  if (*(v1 + 16) == 1)
  {
    v13 = *(v1 + 96);
    v14 = *(v3 + 20);
    v15 = *MEMORY[0x277CE0118];
    v27 = v9;
    v16 = sub_21CB831A4();
    (*(*(v16 - 8) + 104))(&v6[v14], v15, v16);
    *v6 = v13;
    *(v6 + 1) = v13;
    sub_21CB84A84();
    v17 = sub_21CB84B04();

    sub_21CB82164();
    sub_21CB4FF80(v6, v12, MEMORY[0x277CDFC08]);
    v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96E0, &qword_21CBCBBD0) + 36)];
    v19 = v29;
    *v18 = v28;
    *(v18 + 1) = v19;
    *(v18 + 4) = v30;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96E8, &qword_21CBCBBD8);
    *&v12[*(v20 + 52)] = v17;
    *&v12[*(v20 + 56)] = 256;
    v21 = sub_21CB85214();
    v23 = v22;
    sub_21C74B294(v6);
    v24 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96F0, &qword_21CBCBBE0) + 36)];
    *v24 = v21;
    v24[1] = v23;
    sub_21C716934(v12, a1, &qword_27CDFA290, &qword_21CBCDEE8);
    return (*(v27 + 56))(a1, 0, 1, v7);
  }

  else
  {
    v26 = *(v9 + 56);

    return v26(a1, 1, 1, v7, v10);
  }
}

uint64_t sub_21CB4EB90@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FD0, &qword_21CBB92A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15[-v6];
  v8 = *(v1 + 152);
  v15[16] = *(v1 + 144);
  v16 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  if (v15[15] == 1)
  {
    sub_21CB82234();
    v9 = &v7[*(v3 + 36)];
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13A0, &qword_21CBB1100) + 28);
    v11 = *MEMORY[0x277CDF438];
    v12 = sub_21CB82064();
    (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
    *v9 = swift_getKeyPath();
    sub_21C716934(v7, a1, &qword_27CDF1FD0, &qword_21CBB92A0);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return (*(v4 + 56))(a1, v13, 1, v3);
}

uint64_t sub_21CB4ED50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_21CB83634();
  v4 = *(v3 - 8);
  v52 = v3;
  v53 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMTipView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1A8, &qword_21CBCDD80);
  v15 = *(v51 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v51);
  v50 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v48 = &v46 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1B0, &unk_21CBCDD88);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v49 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v46 - v24;
  v47 = &v46 - v24;
  sub_21CB4EB90(&v46 - v24);
  v26 = *(a1 + 64);
  v56 = *(a1 + 56);
  v57 = v26;
  sub_21CB4FF80(a1, &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMTipView);
  v27 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v28 = swift_allocObject();
  sub_21CB4F9E8(&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  sub_21C71F3FC();

  sub_21CB84DE4();
  v29 = *(a1 + 152);
  LOBYTE(v56) = *(a1 + 144);
  v57 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  v30 = v55;
  KeyPath = swift_getKeyPath();
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  v33 = &v14[*(v11 + 36)];
  *v33 = KeyPath;
  v33[1] = sub_21C735744;
  v33[2] = v32;
  v34 = v7;
  sub_21CB83624();
  sub_21C844588();
  sub_21CB5017C(&qword_27CDF2658, MEMORY[0x277CDE0B8]);
  v35 = v48;
  v36 = v52;
  sub_21CB84124();
  (*(v53 + 8))(v34, v36);
  sub_21C6EA794(v14, &qword_27CDEDA98, &unk_21CBABCB0);
  v37 = v25;
  v38 = v49;
  sub_21C6EDBAC(v37, v49, &qword_27CDFA1B0, &unk_21CBCDD88);
  v39 = v15[2];
  v41 = v50;
  v40 = v51;
  v39(v50, v35, v51);
  v42 = v54;
  sub_21C6EDBAC(v38, v54, &qword_27CDFA1B0, &unk_21CBCDD88);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1B8, &unk_21CBCDDD0);
  v39((v42 + *(v43 + 48)), v41, v40);
  v44 = v15[1];
  v44(v35, v40);
  sub_21C6EA794(v47, &qword_27CDFA1B0, &unk_21CBCDD88);
  v44(v41, v40);
  return sub_21C6EA794(v38, &qword_27CDFA1B0, &unk_21CBCDD88);
}

uint64_t sub_21CB4F29C(uint64_t a1)
{
  v2 = type metadata accessor for PMTipView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_21CB858E4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_21CB4FF80(a1, v5, type metadata accessor for PMTipView);
  sub_21CB858B4();
  v11 = sub_21CB858A4();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21CB4F9E8(v5, v13 + v12);
  sub_21C98B308(0, 0, v9, &unk_21CBCDDE8, v13);
}

uint64_t sub_21CB4F468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_21CB858B4();
  v4[9] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x2822009F8](sub_21CB4F500, v6, v5);
}

uint64_t sub_21CB4F500()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 144);
  *(v0 + 59) = v2;
  v3 = *(v1 + 152);
  *(v0 + 57) = 1;
  *(v0 + 96) = v3;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;

  *(v0 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D64();
  v4 = *v1;
  v5 = *(v1 + 128);
  *(v0 + 112) = v5;
  if (v5)
  {
    v6 = *(type metadata accessor for PMTipView() + 44);
    v7 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
    sub_21CB821D4();
    v8 = *(v0 + 48);
    if ((*(v0 + 56) & 1) == 0)
    {
      j_j__swift_release(*(v0 + 48), 0);
      v8 = 0;
    }

    *(v0 + 120) = v8;
    v9 = *(*(v0 + 64) + 104);
    v10 = swift_task_alloc();
    *(v0 + 128) = v10;
    *v10 = v0;
    v10[1] = sub_21CB4F6F0;

    return sub_21CB4A518(v4, v7, v8, v9);
  }

  else
  {
    v12 = *(*(v0 + 64) + 136);
    type metadata accessor for PMPasswordManagerState();
    sub_21CB5017C(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);

    return sub_21CB82B64();
  }
}

uint64_t sub_21CB4F6F0()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v8 = *v0;

  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21CB4F84C, v6, v5);
}

uint64_t sub_21CB4F84C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 59);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);

  *(v0 + 32) = v3;
  *(v0 + 40) = v1;
  *(v0 + 58) = 0;
  sub_21CB84D64();

  v6 = (*(v5 + 120) + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider);
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_0(v6, v7);
  (*(v8 + 40))(v7, v8);
  v9 = *(v0 + 8);

  return v9();
}

unint64_t sub_21CB4F928()
{
  result = qword_27CDFA150;
  if (!qword_27CDFA150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA128, &qword_21CBCDD08);
    sub_21C6EADEC(&qword_27CDFA158, &qword_27CDFA160, &qword_21CBCDD30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA150);
  }

  return result;
}

uint64_t sub_21CB4F9E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMTipView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CB4FA50()
{
  v1 = *(type metadata accessor for PMTipView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CB4F29C(v2);
}

uint64_t sub_21CB4FAB0(uint64_t a1)
{
  v4 = *(type metadata accessor for PMTipView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21CB4F468(a1, v6, v7, v1 + v5);
}

uint64_t sub_21CB4FBC4(uint64_t a1)
{
  v2 = sub_21CB82064();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  return MEMORY[0x21CF12720](v6);
}

uint64_t sub_21CB4FC8C()
{
  v1 = *(type metadata accessor for PMTipView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v3 = v2[15];
  return sub_21CB4C8A8(*v2);
}

unint64_t sub_21CB4FCF8()
{
  result = qword_27CDFA250;
  if (!qword_27CDFA250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA230, &qword_21CBCDEB8);
    sub_21CB4FD84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA250);
  }

  return result;
}

unint64_t sub_21CB4FD84()
{
  result = qword_27CDFA258;
  if (!qword_27CDFA258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA240, &qword_21CBCDEC8);
    sub_21CB4FE3C();
    sub_21C6EADEC(&qword_27CDFA288, &qword_27CDFA248, &qword_21CBCDED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA258);
  }

  return result;
}

unint64_t sub_21CB4FE3C()
{
  result = qword_27CDFA260;
  if (!qword_27CDFA260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA238, &qword_21CBCDEC0);
    sub_21CB4FEF4();
    sub_21C6EADEC(&qword_27CDFA278, &qword_27CDFA280, &qword_21CBCDEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA260);
  }

  return result;
}

unint64_t sub_21CB4FEF4()
{
  result = qword_27CDFA268;
  if (!qword_27CDFA268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA270, &qword_21CBCDED8);
    sub_21C87D040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA268);
  }

  return result;
}

uint64_t sub_21CB4FF80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CB4FFE8()
{
  result = qword_27CDFA298;
  if (!qword_27CDFA298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA140, &qword_21CBCDD20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA130, &qword_21CBCDD10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA168, &qword_21CBCDD38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA128, &qword_21CBCDD08);
    sub_21CB4F928();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDFA170, &qword_27CDFA168, &qword_21CBCDD38);
    swift_getOpaqueTypeConformance2();
    sub_21CB5017C(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA298);
  }

  return result;
}

uint64_t sub_21CB5017C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CB501C8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81104();
  v12 = sub_21CB51BEC(a1, a2);
  v14 = v13;

  v15 = sub_21CB51A00(v12, v14);
  v17 = v16;

  sub_21CB81014();
  v18 = sub_21CB81004();
  v20 = v19;
  (*(v8 + 8))(v11, v7);
  v21 = sub_21CB80BE4();
  (*(*(v21 - 8) + 8))(a3, v21);
  *(v3 + 16) = v18;
  *(v3 + 24) = v20;
  v22 = MEMORY[0x277D84F90];
  *(v3 + 32) = v15;
  *(v3 + 40) = v17;
  *(v3 + 48) = v22;
  *(v3 + 56) = 256;
  *(v3 + 58) = 0;
  return v3;
}

uint64_t sub_21CB50384()
{
  v1 = *(v0 + 3);
  v3 = *(v0 + 5);
  v2 = *(v0 + 6);

  v4 = OBJC_IVAR____TtCE17PasswordManagerUICSo62PMSafariAutoFillEditingStrongPasswordInformationViewController21ConfigurationProvider___observationRegistrar;
  v5 = sub_21CB81114();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21CB50454@<X0>(void *a1@<X8>)
{
  *a1 = 0x6C69636E6570;
  a1[1] = 0xE600000000000000;
  v2 = *MEMORY[0x277CBA688];
  v3 = sub_21CB813C4();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

id static PMSafariAutoFillEditingStrongPasswordInformationViewController.shouldShowView.getter()
{
  result = [objc_opt_self() isPasswordsAppInstalled];
  if (result)
  {
    v1 = [objc_opt_self() pm_defaults];
    v2 = sub_21CB85584();
    v3 = [v1 BOOLForKey_];

    return (v3 ^ 1);
  }

  return result;
}

uint64_t PMSafariAutoFillEditingStrongPasswordInformationViewController.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void PMSafariAutoFillEditingStrongPasswordInformationViewController.contentSize.getter()
{
  swift_getObjectType();
  if ([swift_getObjCClassFromMetadata() shouldShowView])
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      [v1 intrinsicContentSize];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t PMSafariAutoFillEditingStrongPasswordInformationViewController.websiteTitle.getter()
{
  v1 = OBJC_IVAR___PMSafariAutoFillEditingStrongPasswordInformationViewController__anywebsiteTitle;
  swift_beginAccess();
  sub_21C7A3394(v0 + v1, v4);
  swift_dynamicCast();
  return v3;
}

uint64_t PMSafariAutoFillEditingStrongPasswordInformationViewController.websiteTitle.setter(uint64_t a1, uint64_t a2)
{
  v6 = MEMORY[0x277D837D0];
  *&v5 = a1;
  *(&v5 + 1) = a2;
  v3 = OBJC_IVAR___PMSafariAutoFillEditingStrongPasswordInformationViewController__anywebsiteTitle;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v2 + v3));
  sub_21C731A9C(&v5, (v2 + v3));
  return swift_endAccess();
}

void sub_21CB50B30(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 websiteTitle];
  v4 = sub_21CB855C4();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t PMSafariAutoFillEditingStrongPasswordInformationViewController.formURL.getter()
{
  v1 = OBJC_IVAR___PMSafariAutoFillEditingStrongPasswordInformationViewController__anyFormURL;
  swift_beginAccess();
  sub_21C7A3394(v0 + v1, v3);
  sub_21CB80BE4();
  return swift_dynamicCast();
}

uint64_t PMSafariAutoFillEditingStrongPasswordInformationViewController.formURL.setter(uint64_t a1)
{
  v3 = sub_21CB80BE4();
  v8 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
  (*(*(v3 - 8) + 32))(boxed_opaque_existential_0, a1, v3);
  v5 = OBJC_IVAR___PMSafariAutoFillEditingStrongPasswordInformationViewController__anyFormURL;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v5));
  sub_21C731A9C(v7, (v1 + v5));
  return swift_endAccess();
}

void sub_21CB50F0C(id *a1)
{
  v1 = [*a1 formURL];
  sub_21CB80B94();
}

id PMSafariAutoFillEditingStrongPasswordInformationViewController.init(websiteTitle:url:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_21CB85584();

  v6 = sub_21CB80B74();
  v7 = [v4 initWithWebsiteTitle:v5 url:v6];

  v8 = sub_21CB80BE4();
  (*(*(v8 - 8) + 8))(a3, v8);
  return v7;
}

id PMSafariAutoFillEditingStrongPasswordInformationViewController.init(websiteTitle:url:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_21CB80BE4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v13 = &v4[OBJC_IVAR___PMSafariAutoFillEditingStrongPasswordInformationViewController__anywebsiteTitle];
  v13[3] = MEMORY[0x277D837D0];
  *v13 = a1;
  v13[1] = a2;
  v14 = &v4[OBJC_IVAR___PMSafariAutoFillEditingStrongPasswordInformationViewController__anyFormURL];
  v14[3] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  v16 = *(v9 + 16);
  v16(boxed_opaque_existential_0, a3, v8);
  v16(v12, a3, v8);
  v17 = _s21ConfigurationProviderCMa_2();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();

  sub_21CB501C8(a1, a2, v12);
  *&v4[OBJC_IVAR___PMSafariAutoFillEditingStrongPasswordInformationViewController_configurationProvider] = v20;
  v23.receiver = v4;
  v23.super_class = PMSafariAutoFillEditingStrongPasswordInformationViewController;
  v21 = objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, 0, 0);
  (*(v9 + 8))(a3, v8);
  return v21;
}

uint64_t _s21ConfigurationProviderCMa_2()
{
  result = qword_27CDFA2F0;
  if (!qword_27CDFA2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id PMSafariAutoFillEditingStrongPasswordInformationViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void PMSafariAutoFillEditingStrongPasswordInformationViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  sub_21CB861C4();
  __break(1u);
}

Swift::Void __swiftcall PMSafariAutoFillEditingStrongPasswordInformationViewController.loadView()()
{
  v1 = *&v0[OBJC_IVAR___PMSafariAutoFillEditingStrongPasswordInformationViewController_configurationProvider];
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_21C6EDBAC(v11, v10, &unk_27CDFA2C0, &unk_21CBA68A0);

  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDFA2C0, &unk_21CBA68A0);
  sub_21CB84D44();
  sub_21C6EA794(v11, &unk_27CDFA2C0, &unk_21CBA68A0);
  v13[0] = sub_21CB518E4;
  v13[1] = v2;
  v13[2] = nullsub_1;
  v13[3] = 0;
  v16 = v1;
  v17 = 0;
  sub_21C6EA794(v18, &qword_27CDF3260, &qword_21CBAF450);
  v18[5] = 0;
  sub_21C6EDBAC(&v7, v18, &unk_27CDFA2C0, &unk_21CBA68A0);
  v14 = 0u;
  v15 = 0u;
  v4 = objc_opt_self();
  v18[6] = [v4 biometryType];
  LOBYTE(v4) = [v4 isPad];
  sub_21C6EA794(&v7, &unk_27CDFA2C0, &unk_21CBA68A0);
  v19 = v4;
  sub_21C6EDBAC(v13, &v7, &qword_27CDFA2D0, &qword_21CBCDF10);
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA2D8, &qword_21CBCDF18));
  v6 = sub_21CB827D4();
  sub_21C6EA794(v13, &qword_27CDFA2D0, &qword_21CBCDF10);
  [v3 setView_];
}

id PMSafariAutoFillEditingStrongPasswordInformationViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id sub_21CB51804(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() pm_defaults];
  v4 = sub_21CB85584();
  [v3 setBool:1 forKey:v4];

  result = [a2 delegate];
  if (result)
  {
    [result editingStrongPasswordInformationViewShouldClose_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21CB51918()
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

unint64_t type metadata accessor for PMSafariAutoFillEditingStrongPasswordInformationViewController()
{
  result = qword_27CDFA360;
  if (!qword_27CDFA360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDFA360);
  }

  return result;
}

uint64_t sub_21CB51A00(uint64_t a1, unint64_t a2)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_6;
  }

  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {

    sub_21CB81014();
    sub_21CB81004();
    (*(v5 + 8))(v8, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21CBA0690;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_21C7C0050();
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    v11 = sub_21CB855F4();
  }

  else
  {
LABEL_6:
    sub_21CB81014();
    v11 = sub_21CB81004();
    (*(v5 + 8))(v8, v4);
  }

  return v11;
}

uint64_t sub_21CB51BEC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = a1;
  }

  else
  {
    result = sub_21CB80BB4();
    if (!v5)
    {
      return result;
    }

    v6 = sub_21CB85584();

    v7 = [v6 safari_highLevelDomainForPasswordManager];

    v3 = sub_21CB855C4();
  }

  return v3;
}

uint64_t sub_21CB51C9C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = sub_21CB858B4();
  v3[13] = sub_21CB858A4();
  v8 = sub_21CB85874();
  v3[14] = v8;
  v3[15] = v7;

  return MEMORY[0x2822009F8](sub_21CB51DB0, v8, v7);
}

uint64_t sub_21CB51DB0()
{
  v1 = *(v0 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v0 + 64);
    v36 = *(v0 + 56);
    v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      v7 = *(v0 + 72);
      sub_21CB566E8(v6 + *(v5 + 72) * v4, v7, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v1 = *(v7 + *(v36 + 20));
      if (v1)
      {
        v8 = *(v0 + 32);
        sub_21C7B1B18();
        v9 = v1;
        v10 = v8;
        v1 = sub_21CB85DD4();

        if (v1)
        {
          break;
        }
      }

      ++v4;
      sub_21CB568AC(*(v0 + 72), type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      if (v3 == v4)
      {
        goto LABEL_12;
      }
    }

    v12 = *(v0 + 80);
    v11 = *(v0 + 88);
    v13 = *(v0 + 72);

    sub_21CB5692C(v13, v12, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    sub_21CB5692C(v12, v11, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    v14 = *(v11 + *(v36 + 20));
    *(v0 + 128) = v14;
    if (!v14)
    {
      v29 = *(v0 + 104);
      v30 = *(v0 + 88);

      v22 = v30;
      goto LABEL_17;
    }

    v15 = *(v0 + 40);
    v1 = v14;
    v16 = [v15 totpGenerators];
    v17 = sub_21CB85824();

    if (!(v17 >> 62))
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_10;
    }

LABEL_24:
    v18 = sub_21CB85FA4();
LABEL_10:

    if (v18)
    {
      v19 = *(v0 + 104);
      v20 = *(v0 + 88);
      v21 = *(v0 + 48);

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 184) = 1;

      sub_21CB81DC4();

      v22 = v20;
LABEL_17:
      sub_21CB568AC(v22, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      goto LABEL_13;
    }

    v31 = *(*(v0 + 48) + 16);
    v32 = qword_27CDEA4C0;

    if (v32 != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 96);
    sub_21CB86544();
    *(v0 + 136) = sub_21C7072A8(v31, *(v0 + 24));

    *(v0 + 144) = sub_21CB858A4();
    v35 = sub_21CB85874();
    *(v0 + 152) = v35;
    *(v0 + 160) = v34;

    return MEMORY[0x2822009F8](sub_21CB521C8, v35, v34);
  }

  else
  {
LABEL_12:
    v23 = *(v0 + 104);

LABEL_13:
    v25 = *(v0 + 80);
    v24 = *(v0 + 88);
    v26 = *(v0 + 72);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_21CB521C8()
{
  v1 = v0[17];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v3 = v0[16];
    v4 = *(v0[17] + 24);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 80);
    v15 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[22] = v8;
    *v8 = v0;
    v8[1] = sub_21CB5235C;
    v9 = v0[5];

    return v15(v3, v9, ObjectType, v4);
  }

  else
  {
    v11 = v0[17];
    v12 = v0[18];

    v13 = v0[14];
    v14 = v0[15];

    return MEMORY[0x2822009F8](sub_21CB5250C, v13, v14);
  }
}

uint64_t sub_21CB5235C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_21CB524A0, v5, v4);
}

uint64_t sub_21CB524A0()
{
  v1 = v0[17];
  v2 = v0[18];

  v3 = v0[14];
  v4 = v0[15];

  return MEMORY[0x2822009F8](sub_21CB5250C, v3, v4);
}

uint64_t sub_21CB5250C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 48);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 185) = 0;

  sub_21CB81DC4();
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_21CB56750;
  *(v6 + 24) = v5;
  sub_21CB85254();
  sub_21CB82524();

  sub_21CB568AC(v3, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 72);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_21CB526A0(uint64_t a1)
{
  sub_21CB86484();
  type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  sub_21CB564C0(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
  sub_21CB85494();
  v3 = *(v1 + *(a1 + 20));
  sub_21CB864A4();
  if (v3)
  {
    v4 = v3;
    sub_21CB85DE4();
  }

  return sub_21CB864D4();
}

void sub_21CB52770(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  sub_21CB564C0(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
  sub_21CB85494();
  v4 = *(v2 + *(a2 + 20));
  if (v4)
  {
    sub_21CB864A4();
    v5 = v4;
    sub_21CB85DE4();
  }

  else
  {
    sub_21CB864A4();
  }
}

uint64_t sub_21CB52858(uint64_t a1, uint64_t a2)
{
  sub_21CB86484();
  type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  sub_21CB564C0(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
  sub_21CB85494();
  v4 = *(v2 + *(a2 + 20));
  sub_21CB864A4();
  if (v4)
  {
    v5 = v4;
    sub_21CB85DE4();
  }

  return sub_21CB864D4();
}

uint64_t sub_21CB529C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();
}

uint64_t sub_21CB52A38(uint64_t a1)
{
  v2 = v1;
  v46 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABF8, &unk_21CBAB590);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA408, &qword_21CBCE0E8);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v42 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA3D8, &qword_21CBCDFE0);
  v9 = *(*(v42 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v42);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA400, &unk_21CBCE0D8);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  *(v2 + 16) = swift_getKeyPath();
  *(v2 + 24) = 0;
  v25 = OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__suggestedAccounts;
  v51 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA3C8, &qword_21CBCDFD8);
  sub_21CB81D74();
  (*(v21 + 32))(v2 + v25, v24, v20);
  v26 = OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__isFailedToAddAlertPresented;
  LOBYTE(v51) = 0;
  sub_21CB81D74();
  v27 = *(v16 + 32);
  v27(v2 + v26, v19, v15);
  v28 = OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__isDiscardAlertPresented;
  LOBYTE(v51) = 0;
  sub_21CB81D74();
  v27(v2 + v28, v19, v15);
  v29 = OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__isDuplicateGeneratorAlertPresented;
  LOBYTE(v51) = 0;
  sub_21CB81D74();
  v27(v2 + v29, v19, v15);
  v30 = OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__isAddToSuggestedAccountAlertPresented;
  LOBYTE(v51) = 0;
  sub_21CB81D74();
  v27(v2 + v30, v19, v15);
  v31 = OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__addToSuggestedAccountAlertAccountAndCode;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA410, &qword_21CBCE200);
  (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
  sub_21CB567A8(v14, v12);
  v33 = v43;
  sub_21CB81D74();
  sub_21C6EA794(v14, &qword_27CDFA3D8, &qword_21CBCDFE0);
  (*(v44 + 32))(v2 + v31, v33, v45);
  swift_beginAccess();
  v50 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA3B8, &qword_21CBCDFD0);
  sub_21CB81D74();
  swift_endAccess();
  v34 = *(v2 + 16);
  v35 = qword_27CDEA4C0;

  if (v35 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v34, v51);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21CB53120(v51);

  v36 = *(v2 + 16);

  sub_21CB86544();
  sub_21C7072A8(v36, v51);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  v37 = v47;
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21CB56820();
  v38 = v49;
  v39 = sub_21CB81E04();

  (*(v48 + 8))(v37, v38);
  v40 = *(v2 + 24);
  *(v2 + 24) = v39;

  return v2;
}

uint64_t sub_21CB53120(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v238 = &v232 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v239 = &v232 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v245 = &v232 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v251 = &v232 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v256 = &v232 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v232 - v17;
  MEMORY[0x28223BE20](v16);
  v265 = &v232 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA418, &qword_21CBCE250);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v264 = &v232 - v22;
  v244 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v273 = *(v244 - 8);
  v23 = *(v273 + 64);
  v24 = MEMORY[0x28223BE20](v244);
  v242 = &v232 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v260 = &v232 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v261 = &v232 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v268 = &v232 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v263 = &v232 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v233 = &v232 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v235 = &v232 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v234 = &v232 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v236 = &v232 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v253 = &v232 - v43;
  MEMORY[0x28223BE20](v42);
  v249 = &v232 - v44;
  v241 = type metadata accessor for PMAccount.MockData(0);
  v45 = *(*(v241 - 8) + 64);
  MEMORY[0x28223BE20](v241);
  v240 = &v232 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = type metadata accessor for PMAccount.Storage(0);
  v47 = *(*(v248 - 8) + 64);
  MEMORY[0x28223BE20](v248);
  v255 = (&v232 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v276 = type metadata accessor for PMAccount(0);
  v49 = *(v276 - 8);
  v50 = *(v49 + 64);
  v51 = MEMORY[0x28223BE20](v276);
  v237 = &v232 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v250 = &v232 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v262 = &v232 - v56;
  MEMORY[0x28223BE20](v55);
  v58 = &v232 - v57;
  swift_getKeyPath();
  swift_getKeyPath();
  v59 = sub_21CB81DA4();
  v61 = v60;
  v62 = *v60;

  *v61 = MEMORY[0x277D84F98];
  v59(&v280, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v274 = v2;
  sub_21CB81DB4();

  v63 = sub_21CB00A44(v280);

  v279 = v63;
  v278 = MEMORY[0x277D84FA0];
  v247 = *(a1 + 16);
  if (!v247)
  {
LABEL_128:
  }

  v64 = 0;
  v243 = 0;
  v246 = a1 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
  v272 = *(v49 + 72);
  v275 = (v49 + 56);
  v270 = (v49 + 48);
  v65 = v261;
  v66 = v255;
  v254 = v18;
  v271 = v58;
  while (1)
  {
    v252 = v64;
    sub_21CB566E8(v246 + v272 * v64, v58, type metadata accessor for PMAccount);
    sub_21CB566E8(&v58[*(v276 + 24)], v66, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v67 = v240;
    sub_21CB5692C(v66, v240, type metadata accessor for PMAccount.MockData);
    v68 = *(v67 + *(v241 + 56));
    v69 = v68;
    sub_21CB568AC(v67, type metadata accessor for PMAccount.MockData);
    if (!v68)
    {
      goto LABEL_14;
    }

LABEL_4:

LABEL_5:
    v70 = v252 + 1;
    sub_21CB568AC(v58, type metadata accessor for PMAccount);
    v64 = v70;
    if (v70 == v247)
    {
      goto LABEL_128;
    }
  }

  v69 = *v66;
  v71 = [*v66 totpGenerators];
  sub_21C7B1B18();
  v72 = sub_21CB85824();

  if (!(v72 >> 62))
  {
    if (!*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (sub_21CB85FA4())
  {
LABEL_9:
    if ((v72 & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CF15BD0](0, v72);
      swift_unknownObjectRelease();
    }

    else if (!*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_136;
    }

    goto LABEL_4;
  }

LABEL_13:

LABEL_14:
  v73 = v279;
  v74 = v279 + 56;
  v75 = 1 << *(v279 + 32);
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  else
  {
    v76 = -1;
  }

  v77 = v76 & *(v279 + 56);
  v78 = (v75 + 63) >> 6;

  v79 = 0;
  v80 = MEMORY[0x277D84F90];
  v259 = MEMORY[0x277D84F90];
LABEL_18:
  v81 = v278;
  v269 = v80;
  while (v77)
  {
LABEL_26:
    v84 = __clz(__rbit64(v77));
    v77 &= v77 - 1;
    v85 = *(v273 + 72);
    v86 = v249;
    sub_21CB566E8(v73[6] + v85 * (v84 | (v79 << 6)), v249, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    v87 = v86;
    v82 = v253;
    sub_21CB5692C(v87, v253, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    if ((sub_21C8FF314(v82, v81) & 1) == 0)
    {
      v88 = *(v82 + *(v244 + 20));
      if (v88)
      {
        v89 = [v88 heuristicallyDeterminedServiceNameHints];
        if (v89)
        {
          v267 = v73;
          v90 = v89;
          v91 = sub_21CB85824();

          MEMORY[0x28223BE20](v92);
          *(&v232 - 2) = v271;
          v93 = v243;
          LOBYTE(v90) = sub_21C8A13AC(sub_21CB5690C, (&v232 - 4), v91);
          v243 = v93;

          if (v90)
          {
            v94 = v253;
            v95 = *(v253 + 24);
            v96 = HIBYTE(v95) & 0xF;
            if ((v95 & 0x2000000000000000) == 0)
            {
              v96 = *(v253 + 16) & 0xFFFFFFFFFFFFLL;
            }

            if (!v96)
            {
              goto LABEL_48;
            }

            PMAccount.userName.getter();
            if (v97)
            {
              v98 = sub_21CB85634();
              v100 = v99;

              v101 = sub_21CB85634();
              if (v100)
              {
                if (v98 == v101 && v100 == v102)
                {

                  v94 = v253;
                  goto LABEL_40;
                }

                v103 = sub_21CB86344();

                v94 = v253;
                if (v103)
                {
LABEL_40:
                  sub_21CB566E8(v94, v236, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                  v80 = v269;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v80 = sub_21CA4F3F8(0, v80[2] + 1, 1, v80);
                  }

                  v105 = v80[2];
                  v104 = v80[3];
                  if (v105 >= v104 >> 1)
                  {
                    v80 = sub_21CA4F3F8(v104 > 1, v105 + 1, 1, v80);
                  }

                  v80[2] = v105 + 1;
                  sub_21CB5692C(v236, v80 + ((*(v273 + 80) + 32) & ~*(v273 + 80)) + v105 * v85, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                  v106 = v253;
                  v107 = v235;
                  sub_21CB566E8(v253, v235, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                  v108 = v234;
                  sub_21CA941C8(v234, v107);
                  sub_21CB568AC(v108, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                  v109 = v106;
LABEL_45:
                  sub_21CB568AC(v109, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                  v65 = v261;
                  v73 = v267;
                  goto LABEL_18;
                }

LABEL_48:
                sub_21CB566E8(v94, v233, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v259 = sub_21CA4F3F8(0, v259[2] + 1, 1, v259);
                }

                v111 = v259[2];
                v110 = v259[3];
                if (v111 >= v110 >> 1)
                {
                  v259 = sub_21CA4F3F8(v110 > 1, v111 + 1, 1, v259);
                }

                v80 = v269;
                v112 = v259;
                v259[2] = v111 + 1;
                sub_21CB5692C(v233, v112 + ((*(v273 + 80) + 32) & ~*(v273 + 80)) + v111 * v85, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                v109 = v253;
                goto LABEL_45;
              }
            }

            else
            {
              sub_21CB85634();
            }

            v94 = v253;
            goto LABEL_48;
          }

          v82 = v253;
          v80 = v269;
          v73 = v267;
        }

        else
        {
          v82 = v253;
        }
      }
    }

    sub_21CB568AC(v82, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    v65 = v261;
  }

  while (1)
  {
    v83 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      break;
    }

    if (v83 >= v78)
    {

      if (v80[2])
      {

        v113 = v268;
        v58 = v271;
        v267 = v80[2];
        if (!v267)
        {

LABEL_126:
          v66 = v255;
          goto LABEL_5;
        }

        v114 = 0;
        v266 = v80 + ((*(v273 + 80) + 32) & ~*(v273 + 80));
        while (2)
        {
          if (v114 >= v80[2])
          {
            goto LABEL_130;
          }

          v117 = *(v273 + 72);
          v118 = v263;
          sub_21CB566E8(&v266[v117 * v114], v263, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
          v119 = v264;
          sub_21CB4B2E0(v118, v264);
          sub_21C6EA794(v119, &qword_27CDFA418, &qword_21CBCE250);
          sub_21CB5692C(v118, v113, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
          v120 = v265;
          sub_21CB566E8(v58, v265, type metadata accessor for PMAccount);
          v121 = v276;
          v122 = *v275;
          (*v275)(v120, 0, 1, v276);
          swift_getKeyPath();
          swift_getKeyPath();
          v123 = sub_21CB81DA4();
          v125 = v124;
          if ((*v270)(v120, 1, v121) == 1)
          {
            sub_21C6EA794(v120, &unk_27CDEBE60, &unk_21CB9FF40);
            v126 = *v125;
            v127 = sub_21CB10AEC(v113);
            if (v128)
            {
              v129 = v127;
              v130 = *v125;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v277 = *v125;
              *v125 = 0x8000000000000000;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_21C8D55C4();
              }

              v132 = v277;
              sub_21CB568AC(v277[6] + v129 * v117, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
              v116 = v254;
              sub_21CB5692C(*(v132 + 56) + v129 * v272, v254, type metadata accessor for PMAccount);
              sub_21CADAE5C(v129, v132);
              v113 = v268;
              sub_21CB568AC(v268, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
              v133 = *v125;
              *v125 = v132;

              v115 = 0;
            }

            else
            {
              sub_21CB568AC(v113, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
              v115 = 1;
              v116 = v254;
            }

            v122(v116, v115, 1, v276);
            sub_21C6EA794(v116, &unk_27CDEBE60, &unk_21CB9FF40);
LABEL_58:
            v80 = v269;
            ++v114;
            v123(&v280, 0);

            v58 = v271;
            if (v267 == v114)
            {

              v65 = v261;
              goto LABEL_126;
            }

            continue;
          }

          break;
        }

        sub_21CB5692C(v120, v262, type metadata accessor for PMAccount);
        v134 = *v125;
        v135 = swift_isUniquelyReferenced_nonNull_native();
        v277 = *v125;
        v136 = v277;
        *v125 = 0x8000000000000000;
        v138 = sub_21CB10AEC(v113);
        v139 = v136[2];
        v140 = (v137 & 1) == 0;
        v141 = v139 + v140;
        if (__OFADD__(v139, v140))
        {
          goto LABEL_132;
        }

        v142 = v137;
        if (v136[3] >= v141)
        {
          if (v135)
          {
            v145 = v277;
            if ((v137 & 1) == 0)
            {
              goto LABEL_69;
            }
          }

          else
          {
            sub_21C8D55C4();
            v145 = v277;
            if ((v142 & 1) == 0)
            {
              goto LABEL_69;
            }
          }
        }

        else
        {
          sub_21C8D1658(v141, v135);
          v143 = sub_21CB10AEC(v268);
          if ((v142 & 1) != (v144 & 1))
          {
            goto LABEL_139;
          }

          v138 = v143;
          v145 = v277;
          if ((v142 & 1) == 0)
          {
LABEL_69:
            v145[(v138 >> 6) + 8] |= 1 << v138;
            v113 = v268;
            sub_21CB566E8(v268, v145[6] + v138 * v117, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
            sub_21CB5692C(v262, v145[7] + v138 * v272, type metadata accessor for PMAccount);
            sub_21CB568AC(v113, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
            v146 = v145[2];
            v147 = __OFADD__(v146, 1);
            v148 = v146 + 1;
            if (v147)
            {
              goto LABEL_133;
            }

            v145[2] = v148;
            goto LABEL_74;
          }
        }

        sub_21C897944(v262, v145[7] + v138 * v272);
        v113 = v268;
        sub_21CB568AC(v268, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
LABEL_74:
        v149 = *v125;
        *v125 = v145;

        goto LABEL_58;
      }

      v150 = v259;
      v66 = v255;
      v58 = v271;
      v258 = v259[2];
      if (!v258)
      {
LABEL_124:

        goto LABEL_5;
      }

      v151 = 0;
      v257 = v259 + ((*(v273 + 80) + 32) & ~*(v273 + 80));
      while (2)
      {
        if (v151 >= v150[2])
        {
          goto LABEL_131;
        }

        v154 = *(v273 + 72);
        sub_21CB566E8(&v257[v154 * v151], v65, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        v155 = v280;
        if (*(v280 + 16))
        {
          v156 = sub_21CB10AEC(v65);
          if (v157)
          {
            v158 = v256;
            sub_21CB566E8(*(v155 + 56) + v156 * v272, v256, type metadata accessor for PMAccount);

            v159 = *v275;
            (*v275)(v158, 0, 1, v276);
            sub_21C6EA794(v158, &unk_27CDEBE60, &unk_21CB9FF40);
            if ((sub_21C8FF314(v65, v278) & 1) == 0)
            {
              v266 = v154;
              v160 = v65;
              v161 = v242;
              sub_21CB566E8(v160, v242, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
              v162 = v239;
              v163 = v276;
              v159(v239, 1, 1, v276);
              swift_getKeyPath();
              KeyPath = swift_getKeyPath();
              v267 = sub_21CB81DA4();
              v166 = v165;
              v167 = (*v270)(v162, 1, v163);
              v269 = KeyPath;
              if (v167 == 1)
              {
                sub_21C6EA794(v162, &unk_27CDEBE60, &unk_21CB9FF40);
                v168 = *v166;
                v169 = sub_21CB10AEC(v161);
                if (v170)
                {
                  v171 = v169;
                  v172 = *v166;
                  v173 = swift_isUniquelyReferenced_nonNull_native();
                  v277 = *v166;
                  *v166 = 0x8000000000000000;
                  if (!v173)
                  {
                    sub_21C8D55C4();
                  }

                  v174 = v277;
                  sub_21CB568AC(v277[6] + v171 * v266, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                  v175 = v238;
                  sub_21CB5692C(*(v174 + 56) + v171 * v272, v238, type metadata accessor for PMAccount);
                  sub_21CADAE5C(v171, v174);
                  sub_21CB568AC(v242, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                  v176 = *v166;
                  *v166 = v174;

                  v177 = 0;
                  v65 = v261;
                  v58 = v271;
                }

                else
                {
                  sub_21CB568AC(v161, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                  v177 = 1;
                  v175 = v238;
                  v65 = v261;
                }

                v159(v175, v177, 1, v276);
                sub_21C6EA794(v175, &unk_27CDEBE60, &unk_21CB9FF40);
                v66 = v255;
              }

              else
              {
                v213 = v237;
                sub_21CB5692C(v162, v237, type metadata accessor for PMAccount);
                v214 = *v166;
                v215 = swift_isUniquelyReferenced_nonNull_native();
                v277 = *v166;
                v216 = v277;
                *v166 = 0x8000000000000000;
                v217 = sub_21CB10AEC(v161);
                v219 = v216[2];
                v220 = (v218 & 1) == 0;
                v147 = __OFADD__(v219, v220);
                v221 = v219 + v220;
                if (v147)
                {
                  goto LABEL_137;
                }

                v222 = v218;
                if (v216[3] >= v221)
                {
                  if ((v215 & 1) == 0)
                  {
                    v230 = v217;
                    sub_21C8D55C4();
                    v217 = v230;
                    v161 = v242;
                  }
                }

                else
                {
                  sub_21C8D1658(v221, v215);
                  v217 = sub_21CB10AEC(v161);
                  if ((v222 & 1) != (v223 & 1))
                  {
                    goto LABEL_139;
                  }
                }

                v58 = v271;
                v224 = v277;
                if (v222)
                {
                  sub_21C897944(v213, v277[7] + v217 * v272);
                  sub_21CB568AC(v161, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                }

                else
                {
                  v277[(v217 >> 6) + 8] |= 1 << v217;
                  v225 = v217;
                  sub_21CB566E8(v161, v224[6] + v217 * v266, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                  sub_21CB5692C(v213, v224[7] + v225 * v272, type metadata accessor for PMAccount);
                  sub_21CB568AC(v161, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                  v226 = v224[2];
                  v147 = __OFADD__(v226, 1);
                  v227 = v226 + 1;
                  if (v147)
                  {
                    goto LABEL_138;
                  }

                  v224[2] = v227;
                }

                v228 = *v166;
                *v166 = v224;

                v65 = v261;
                v66 = v255;
              }

              v150 = v259;
              (v267)(&v280, 0);
LABEL_83:
            }

            ++v151;
            sub_21CB568AC(v65, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
            if (v258 == v151)
            {
              goto LABEL_124;
            }

            continue;
          }
        }

        break;
      }

      v266 = v154;

      v178 = v65;
      v179 = *v275;
      v180 = v256;
      v181 = v276;
      (*v275)(v256, 1, 1, v276);
      sub_21C6EA794(v180, &unk_27CDEBE60, &unk_21CB9FF40);
      v182 = v260;
      sub_21CB566E8(v178, v260, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v183 = v251;
      sub_21CB566E8(v58, v251, type metadata accessor for PMAccount);
      v179(v183, 0, 1, v181);
      v184 = swift_getKeyPath();
      v185 = swift_getKeyPath();
      v267 = v184;
      v269 = v185;
      v186 = sub_21CB81DA4();
      v188 = v187;
      if ((*v270)(v183, 1, v181) == 1)
      {
        sub_21C6EA794(v183, &unk_27CDEBE60, &unk_21CB9FF40);
        v189 = *v188;
        v190 = sub_21CB10AEC(v182);
        if (v191)
        {
          v192 = v190;
          v193 = *v188;
          v194 = swift_isUniquelyReferenced_nonNull_native();
          v277 = *v188;
          *v188 = 0x8000000000000000;
          if (!v194)
          {
            sub_21C8D55C4();
          }

          v195 = v277;
          sub_21CB568AC(v277[6] + v192 * v266, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
          v153 = v245;
          sub_21CB5692C(*(v195 + 56) + v192 * v272, v245, type metadata accessor for PMAccount);
          sub_21CADAE5C(v192, v195);
          sub_21CB568AC(v260, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
          v196 = *v188;
          *v188 = v195;

          v152 = 0;
          v58 = v271;
        }

        else
        {
          sub_21CB568AC(v182, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
          v152 = 1;
          v153 = v245;
        }

        v179(v153, v152, 1, v276);
        sub_21C6EA794(v153, &unk_27CDEBE60, &unk_21CB9FF40);
        v65 = v261;
        v66 = v255;
      }

      else
      {
        sub_21CB5692C(v183, v250, type metadata accessor for PMAccount);
        v197 = *v188;
        v198 = swift_isUniquelyReferenced_nonNull_native();
        v277 = *v188;
        v199 = v277;
        *v188 = 0x8000000000000000;
        v200 = sub_21CB10AEC(v182);
        v202 = v199[2];
        v203 = (v201 & 1) == 0;
        v147 = __OFADD__(v202, v203);
        v204 = v202 + v203;
        if (v147)
        {
          goto LABEL_134;
        }

        v205 = v201;
        if (v199[3] >= v204)
        {
          v65 = v261;
          if ((v198 & 1) == 0)
          {
            v229 = v200;
            sub_21C8D55C4();
            v200 = v229;
            v65 = v261;
          }
        }

        else
        {
          sub_21C8D1658(v204, v198);
          v200 = sub_21CB10AEC(v260);
          v65 = v261;
          if ((v205 & 1) != (v206 & 1))
          {
            goto LABEL_139;
          }
        }

        v58 = v271;
        v207 = v277;
        if (v205)
        {
          sub_21C897944(v250, v277[7] + v200 * v272);
          sub_21CB568AC(v260, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
        }

        else
        {
          v277[(v200 >> 6) + 8] |= 1 << v200;
          v208 = v200;
          v209 = v260;
          sub_21CB566E8(v260, v207[6] + v200 * v266, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
          sub_21CB5692C(v250, v207[7] + v208 * v272, type metadata accessor for PMAccount);
          sub_21CB568AC(v209, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
          v210 = v207[2];
          v147 = __OFADD__(v210, 1);
          v211 = v210 + 1;
          if (v147)
          {
            goto LABEL_135;
          }

          v207[2] = v211;
        }

        v212 = *v188;
        *v188 = v207;

        v66 = v255;
      }

      v150 = v259;
      v186(&v280, 0);
      goto LABEL_83;
    }

    v77 = *(v74 + 8 * v83);
    ++v79;
    if (v77)
    {
      v79 = v83;
      goto LABEL_26;
    }
  }

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
  result = sub_21CB863B4();
  __break(1u);
  return result;
}

uint64_t sub_21CB54E14(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = MEMORY[0x28223BE20](result);
    MEMORY[0x28223BE20](v3);
    sub_21CB85254();
    sub_21CB82524();
  }

  return result;
}

id sub_21CB54F18(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = a1[1];
  v10 = type metadata accessor for PMAccount(0);
  sub_21CB566E8(a2 + *(v10 + 24), v7, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CB568AC(v7, type metadata accessor for PMAccount.Storage);
    return 0;
  }

  else
  {
    v12 = *v7;
    v13 = sub_21CB85584();
    v14 = [v12 matchesServiceNameHintString_];

    return v14;
  }
}

uint64_t sub_21CB55044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (*(v12 + 16) && (v4 = sub_21CB10AEC(a1), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v12 + 56);
    v8 = type metadata accessor for PMAccount(0);
    v9 = *(v8 - 8);
    sub_21CB566E8(v7 + *(v9 + 72) * v6, a2, type metadata accessor for PMAccount);

    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  else
  {

    v11 = type metadata accessor for PMAccount(0);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }
}

uint64_t sub_21CB551C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for PMAccount.Storage(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  sub_21CB858B4();
  v3[7] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v3[8] = v7;
  v3[9] = v6;

  return MEMORY[0x2822009F8](sub_21CB55294, v7, v6);
}

uint64_t sub_21CB55294()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for PMAccount(0);
  sub_21CB566E8(v3 + *(v4 + 24), v2, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);

    sub_21CB568AC(v6, type metadata accessor for PMAccount.Storage);
LABEL_8:
    v16 = *(v0 + 32);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 104) = 1;

    sub_21CB81DC4();
    v17 = *(v0 + 48);

    v18 = *(v0 + 8);

    return v18();
  }

  v7 = *(v0 + 48);
  v8 = *(v0 + 16);
  v9 = *v7;
  *(v0 + 80) = *v7;
  v10 = *(v8 + *(type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) + 20));
  *(v0 + 88) = v10;
  if (!v10)
  {
    v15 = *(v0 + 56);

    goto LABEL_8;
  }

  v11 = v10;
  v12 = swift_task_alloc();
  *(v0 + 96) = v12;
  *v12 = v0;
  v12[1] = sub_21CB5546C;
  v13 = *(v0 + 32);

  return sub_21CB51C9C(v11, v9);
}

uint64_t sub_21CB5546C()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_21CB5558C, v4, v3);
}

uint64_t sub_21CB5558C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];

  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21CB55600(uint64_t a1, uint64_t a2)
{
  v7[2] = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_21CB81DA4();
  v4 = v3;
  result = sub_21CB64C1C(sub_21CB56788, v7);
  v6 = *(*v4 + 16);
  if (v6 < result)
  {
    __break(1u);
  }

  else
  {
    sub_21CB655AC(result, v6);
    v2(v8, 0);
  }

  return result;
}

uint64_t sub_21CB556D8(uint64_t *a1, uint64_t a2)
{
  if (sub_21CA900DC(a1, a2))
  {
    v4 = *(type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5)
    {
      if (v6)
      {
        sub_21C7B1B18();
        v7 = v6;
        v8 = v5;
        v9 = sub_21CB85DD4();

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_21CB55774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA3D8, &qword_21CBCDFE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA410, &qword_21CBCE200);
  v12 = *(v11 + 48);
  sub_21CB566E8(a2, v10, type metadata accessor for PMAccount);
  sub_21CB566E8(a1, &v10[v12], type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB567A8(v10, v7);

  sub_21CB81DC4();
  sub_21C6EA794(v10, &qword_27CDFA3D8, &qword_21CBCDFE0);
  swift_getKeyPath();
  swift_getKeyPath();
  v14[15] = 1;

  return sub_21CB81DC4();
}

BOOL sub_21CB55968()
{
  v0 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v5 = v18;
  v18 = MEMORY[0x277D84F90];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v0 + 20);
    v8 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = *(v1 + 72);
    v10 = MEMORY[0x277D84F90];
    do
    {
      sub_21CB566E8(v8, v4, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v11 = *&v4[v7];
      v12 = v11;
      v13 = sub_21CB568AC(v4, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      if (v11)
      {
        MEMORY[0x21CF15300](v13);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21CB85834();
        }

        sub_21CB85854();
        v10 = v18;
      }

      v8 += v9;
      --v6;
    }

    while (v6);

    if (!(v10 >> 62))
    {
      goto LABEL_9;
    }

LABEL_12:
    v15 = sub_21CB85FA4();
    goto LABEL_10;
  }

  v10 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_12;
  }

LABEL_9:
  v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:

  return v15 == 0;
}

BOOL sub_21CB55BA4()
{
  v0 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v5 = v18;
  v18 = MEMORY[0x277D84F90];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v0 + 20);
    v8 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = *(v1 + 72);
    v10 = MEMORY[0x277D84F90];
    do
    {
      sub_21CB566E8(v8, v4, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v11 = *&v4[v7];
      v12 = v11;
      v13 = sub_21CB568AC(v4, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      if (v11)
      {
        MEMORY[0x21CF15300](v13);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21CB85834();
        }

        sub_21CB85854();
        v10 = v18;
      }

      v8 += v9;
      --v6;
    }

    while (v6);

    if (!(v10 >> 62))
    {
      goto LABEL_9;
    }

LABEL_12:
    v15 = sub_21CB85FA4();
    goto LABEL_10;
  }

  v10 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_12;
  }

LABEL_9:
  v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:

  return v15 != 0;
}

void sub_21CB55DE0()
{
  v0 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v5 = v11;
  v6 = *(v11 + 16);
  if (v6)
  {
    v7 = 0;
    while (v7 < *(v5 + 16))
    {
      sub_21CB566E8(v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v7, v4, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v8 = *&v4[*(v0 + 20)];
      v9 = v8;
      sub_21CB568AC(v4, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      if (v8)
      {

        if (v6 != ++v7)
        {
          continue;
        }
      }

      goto LABEL_6;
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

uint64_t sub_21CB55F94()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__codesToMigrate;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA3F8, &qword_21CBCE0D0);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__suggestedAccounts;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA400, &unk_21CBCE0D8);
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__isFailedToAddAlertPresented;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v9 = *(*(v8 - 8) + 8);
  v9(&v0[v7], v8);
  v9(&v0[OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__isDiscardAlertPresented], v8);
  v9(&v0[OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__isDuplicateGeneratorAlertPresented], v8);
  v9(&v0[OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__isAddToSuggestedAccountAlertPresented], v8);
  v10 = OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__addToSuggestedAccountAlertAccountAndCode;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA408, &qword_21CBCE0E8);
  (*(*(v11 - 8) + 8))(&v0[v10], v11);
  v12 = *(*v0 + 48);
  v13 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_21CB561C0()
{
  sub_21C6EA5CC(319, &qword_27CDFA3B0, &qword_27CDFA3B8, &qword_21CBCDFD0);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_21C6EA5CC(319, &qword_27CDFA3C0, &qword_27CDFA3C8, &qword_21CBCDFD8);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_21C6E7ED8();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_21C6EA5CC(319, &qword_27CDFA3D0, &qword_27CDFA3D8, &qword_21CBCDFE0);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_21CB563AC()
{
  type metadata accessor for PMOfflineMigrationPayload.OTPParameters(319);
  if (v0 <= 0x3F)
  {
    sub_21C6EBED4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21CB564C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CB56558@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21CB565D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21CB56654(uint64_t *a1, uint64_t a2)
{
  if (sub_21CA900DC(a1, a2))
  {
    v4 = *(type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5)
    {
      if (v6)
      {
        sub_21C7B1B18();
        v7 = v6;
        v8 = v5;
        v9 = sub_21CB85DD4();

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_21CB566E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB56758()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_21CB567A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA3D8, &qword_21CBCDFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CB56820()
{
  result = qword_27CDEAC08;
  if (!qword_27CDEAC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEABF8, &unk_21CBAB590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAC08);
  }

  return result;
}

uint64_t sub_21CB56884()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_21CB53120(v1);
}

uint64_t sub_21CB568AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CB5692C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB569D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v50 - v6;
  v8 = sub_21CB83ED4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  v13 = *(a1 + 24);
  v54 = *(a1 + 32);
  v55 = v13;
  *&v57 = v13;
  *(&v57 + 1) = v54;
  v53 = sub_21C71F3FC();

  v14 = sub_21CB84054();
  v50 = v15;
  v51 = v14;
  v17 = v16;
  v19 = v18;
  (*(v9 + 104))(v12, *MEMORY[0x277CE0A68], v8);
  v20 = *MEMORY[0x277CE0980];
  v21 = sub_21CB83DC4();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v7, v20, v21);
  (*(v22 + 56))(v7, 0, 1, v21);
  sub_21CB83E24();
  sub_21C9E1150(v7);
  (*(v9 + 8))(v12, v8);
  v23 = v51;
  v24 = sub_21CB84024();
  v26 = v25;
  LOBYTE(v7) = v27;

  sub_21C74A72C(v23, v17, v19 & 1);

  LODWORD(v57) = sub_21CB837E4();
  v28 = sub_21CB83FC4();
  v30 = v29;
  LOBYTE(v9) = v31;
  sub_21C74A72C(v24, v26, v7 & 1);

  v57 = *(v52 + 8);
  v56 = *(v52 + 8);

  v32 = sub_21CB83FE4();
  v34 = v33;
  LOBYTE(v8) = v35;
  sub_21C74A72C(v28, v30, v9 & 1);

  sub_21C81A534(&v57);
  v36 = sub_21CB83FF4();
  v38 = v37;
  LOBYTE(v9) = v39;
  v41 = v40;
  sub_21C74A72C(v32, v34, v8 & 1);

  v42 = *MEMORY[0x277D49BF0];
  sub_21CB855C4();
  v43 = [objc_opt_self() pm_defaults];
  v44 = sub_21CB81E74();
  v45 = sub_21CB85254();
  LOBYTE(v8) = v9 & 1;
  LOBYTE(v56) = v9 & 1;
  v46 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA420, &unk_21CBCE420) + 36));
  LODWORD(v23) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB920, &qword_21CBCC940) + 28);
  v47 = v54;

  sub_21CB82B04();
  result = swift_getKeyPath();
  *v46 = result;
  *a2 = v36;
  *(a2 + 8) = v38;
  *(a2 + 16) = v8;
  *(a2 + 24) = v41;
  *(a2 + 32) = v44;
  *(a2 + 40) = 1;
  v49 = v55;
  *(a2 + 48) = v45;
  *(a2 + 56) = v49;
  *(a2 + 64) = v47;
  return result;
}

id sub_21CB56E3C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 8) = sub_21CB569D8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  return v2;
}

unint64_t sub_21CB56E64()
{
  result = qword_27CDFA428;
  if (!qword_27CDFA428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA430, &unk_21CBCE460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA428);
  }

  return result;
}

uint64_t sub_21CB56EC8(uint64_t *a1, int a2)
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

uint64_t sub_21CB56F10(uint64_t result, int a2, int a3)
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

uint64_t sub_21CB56F8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v108 = a1;
  v103 = sub_21CB829D4();
  v104 = *(v103 - 8);
  v3 = *(v104 + 64);
  MEMORY[0x28223BE20](v103);
  v102 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_21CB82FD4();
  v98 = *(v99 - 8);
  v5 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v97 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_21CB81024();
  v114 = *(v113 - 8);
  v7 = *(v114 + 64);
  MEMORY[0x28223BE20](v113);
  v112 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB830D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA438, &qword_21CBCE518);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v85 - v16;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA440, &qword_21CBCE520);
  v91 = *(v90 - 8);
  v18 = *(v91 + 64);
  MEMORY[0x28223BE20](v90);
  v85 = &v85 - v19;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA448, &qword_21CBCE528);
  v94 = *(v93 - 8);
  v20 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  v86 = &v85 - v21;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA450, &qword_21CBCE530);
  v96 = *(v95 - 8);
  v22 = *(v96 + 64);
  MEMORY[0x28223BE20](v95);
  v88 = &v85 - v23;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA458, &qword_21CBCE538);
  v101 = *(v100 - 8);
  v24 = *(v101 + 64);
  MEMORY[0x28223BE20](v100);
  v89 = &v85 - v25;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA460, &qword_21CBCE540);
  v26 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v109 = &v85 - v27;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA468, &qword_21CBCE548);
  v107 = *(v106 - 8);
  v28 = *(v107 + 64);
  MEMORY[0x28223BE20](v106);
  v105 = &v85 - v29;
  v116 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA470, &qword_21CBCE550);
  sub_21C6EADEC(&qword_27CDFA478, &qword_27CDFA470, &qword_21CBCE550);
  sub_21CB83EF4();
  sub_21CB830A4();
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA480, &qword_21CBCE558) + 36);
  (*(v10 + 16))(&v17[v30], v13, v9);
  v31 = *(v10 + 56);
  v31(&v17[v30], 0, 1, v9);
  KeyPath = swift_getKeyPath();
  v33 = &v17[*(v14 + 36)];
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
  (*(v10 + 32))(v33 + v34, v13, v9);
  v31(v33 + v34, 0, 1, v9);
  *v33 = KeyPath;
  v35 = v112;
  sub_21CB81014();
  v36 = sub_21CB81004();
  v38 = v37;
  v111 = *(v114 + 8);
  v114 += 8;
  v111(v35, v113);
  v117 = v36;
  v118 = v38;
  v39 = sub_21CB5CFA4();
  v40 = sub_21C71F3FC();
  v41 = v85;
  v42 = MEMORY[0x277D837D0];
  v43 = v40;
  v92 = v40;
  sub_21CB842F4();

  sub_21C6EA794(v17, &qword_27CDFA438, &qword_21CBCE518);
  v44 = v98;
  v45 = v97;
  v46 = v99;
  (*(v98 + 104))(v97, *MEMORY[0x277CDDDC0], v99);
  v117 = v14;
  v118 = v42;
  v119 = v39;
  v120 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v86;
  v49 = v90;
  sub_21CB84684();
  (*(v44 + 8))(v45, v46);
  (*(v91 + 8))(v41, v49);
  v50 = v102;
  sub_21CB85294();
  v117 = v49;
  v118 = OpaqueTypeConformance2;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = sub_21CB5E1A4(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
  v53 = v88;
  v54 = v93;
  v55 = v103;
  sub_21CB849C4();
  (*(v104 + 8))(v50, v55);
  (*(v94 + 8))(v48, v54);
  v117 = v54;
  v118 = v55;
  v119 = v51;
  v120 = v52;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v89;
  v58 = v95;
  sub_21CB84644();
  (*(v96 + 8))(v53, v58);
  v59 = v87;
  v115 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA4A8, &qword_21CBCE5A8);
  v117 = v58;
  v118 = v56;
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDFA4B0, &qword_27CDFA4A8, &qword_21CBCE5A8);
  v60 = v109;
  v61 = v100;
  sub_21CB84894();
  (*(v101 + 8))(v57, v61);
  v104 = *(v59 + 48);
  v62 = *(v59 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v63 = v117;
  v64 = *(v59 + 8);
  v65 = *(v59 + 24);
  v66 = *(v59 + 40);
  v67 = swift_allocObject();
  v68 = *(v59 + 16);
  v67[1] = *v59;
  v67[2] = v68;
  v69 = *(v59 + 48);
  v67[3] = *(v59 + 32);
  v67[4] = v69;
  v70 = &v60[*(v110 + 36)];
  *v70 = v63;
  *(v70 + 1) = sub_21CB5D148;
  *(v70 + 2) = v67;

  v103 = v62;

  v71 = v112;
  sub_21CB81014();
  v72 = sub_21CB81004();
  v74 = v73;
  v111(v71, v113);
  v125 = v72;
  v126 = v74;
  type metadata accessor for PMTOTPMigrationModel(0);
  sub_21CB5E1A4(&qword_27CDEB078, type metadata accessor for PMTOTPMigrationModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v75 = sub_21CB5D180();
  v76 = v92;
  v77 = v105;
  v78 = v109;
  sub_21CB84754();

  sub_21C6EA794(v78, &qword_27CDFA460, &qword_21CBCE540);
  v79 = v112;
  sub_21CB81014();
  v80 = sub_21CB81004();
  v82 = v81;
  v111(v79, v113);
  v127 = v80;
  v128 = v82;
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v117 = v110;
  v118 = MEMORY[0x277D837D0];
  v119 = MEMORY[0x277CE1428];
  v120 = MEMORY[0x277CE0BD8];
  v121 = v75;
  v122 = v76;
  v123 = MEMORY[0x277CE1410];
  v124 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v83 = v106;
  sub_21CB84764();

  return (*(v107 + 8))(v77, v83);
}

uint64_t sub_21CB57F38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA508, &unk_21CBCE738);
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = sub_21CB81024();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v16 = sub_21CB81004();
  v31 = v17;
  v32 = v16;
  (*(v12 + 8))(v15, v11);
  v35 = *(a1 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v34[2] = v34[0];
  v18 = *(a1 + 8);
  v19 = *(a1 + 24);
  v20 = *(a1 + 40);
  v21 = swift_allocObject();
  v22 = *(a1 + 16);
  v21[1] = *a1;
  v21[2] = v22;
  v23 = *(a1 + 48);
  v21[3] = *(a1 + 32);
  v21[4] = v23;

  sub_21C6EDBAC(&v35, v34, &qword_27CDFA500, &qword_21CBCE6A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA3B8, &qword_21CBCDFD0);
  type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA510, &qword_21CBCE748);
  sub_21C6EADEC(&qword_27CDFA518, &qword_27CDFA3B8, &qword_21CBCDFD0);
  sub_21CB5D474();
  sub_21CB5E1A4(&qword_27CDFA538, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  sub_21CB84FF4();
  v24 = v4[2];
  v24(v7, v10, v3);
  v25 = v33;
  v26 = v31;
  *v33 = v32;
  v25[1] = v26;
  v27 = v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA540, &qword_21CBCE758);
  v24(v27 + *(v28 + 48), v7, v3);
  v29 = v4[1];

  v29(v10, v3);
  v29(v7, v3);
}

uint64_t sub_21CB58334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA4D0, &qword_21CBCE670);
  v3 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v47 - v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA4D8, &qword_21CBCE678);
  v54 = *(v57 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v57);
  v50 = &v47 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FB0, &qword_21CBCE680);
  v49 = *(v55 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v55);
  v48 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA4E0, &qword_21CBCE688);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v47 - v13;
  v14 = sub_21CB83604();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA4E8, &qword_21CBCE690);
  v52 = *(v16 - 8);
  v53 = v16;
  v17 = *(v52 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - v18;
  sub_21CB835C4();
  v61 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA4F0, &unk_21CBCE698);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1748, &qword_21CBBDF70);
  v22 = sub_21C844588();
  v23 = sub_21C71F3FC();
  v24 = sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70);
  v62 = v20;
  v63 = MEMORY[0x277D837D0];
  v64 = v21;
  v65 = MEMORY[0x277CE0BD8];
  v25 = v19;
  v66 = v22;
  v67 = v23;
  v68 = v24;
  v69 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_21CB82194();
  v26 = *(a1 + 56);
  sub_21CB55DE0();
  if (v27)
  {
    v28 = sub_21CB835D4();
    MEMORY[0x28223BE20](v28);
    *(&v47 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FB8, &unk_21CBB2E00);
    sub_21C94B574();
    v29 = v48;
    sub_21CB82194();
    v30 = sub_21C6EADEC(&qword_27CDFA4F8, &qword_27CDF1FB0, &qword_21CBCE680);
    v31 = v50;
    v32 = v55;
    MEMORY[0x21CF131E0](v29, v55, v30);
    v33 = v54;
    v34 = v51;
    v35 = v57;
    (*(v54 + 16))(v51, v31, v57);
    (*(v33 + 56))(v34, 0, 1, v35);
    v62 = v32;
    v63 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v37 = v56;
    MEMORY[0x21CF13220](v34, v35, OpaqueTypeConformance2);
    sub_21C6EA794(v34, &qword_27CDFA4E0, &qword_21CBCE688);
    (*(v33 + 8))(v31, v35);
    (*(v49 + 8))(v29, v32);
  }

  else
  {
    v38 = v51;
    v39 = v57;
    (*(v54 + 56))(v51, 1, 1, v57);
    v40 = sub_21C6EADEC(&qword_27CDFA4F8, &qword_27CDF1FB0, &qword_21CBCE680);
    v62 = v55;
    v63 = v40;
    v41 = swift_getOpaqueTypeConformance2();
    v37 = v56;
    MEMORY[0x21CF13220](v38, v39, v41);
    sub_21C6EA794(v38, &qword_27CDFA4E0, &qword_21CBCE688);
  }

  v42 = v58;
  v43 = *(v59 + 48);
  v45 = v52;
  v44 = v53;
  (*(v52 + 16))(v58, v25, v53);
  sub_21C6EDBAC(v37, &v42[v43], &qword_27CDFA4E0, &qword_21CBCE688);
  sub_21CB83394();
  sub_21C6EA794(v37, &qword_27CDFA4E0, &qword_21CBCE688);
  return (*(v45 + 8))(v25, v44);
}

uint64_t sub_21CB58A30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - v5;
  v7 = sub_21CB81024();
  v36 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v12 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v39 = &v34 - v13;
  sub_21CB81014();
  v14 = sub_21CB81004();
  v16 = v15;
  v35 = *(v8 + 8);
  v35(v11, v7);
  v41 = v14;
  v42 = v16;
  sub_21CB81ED4();
  v17 = sub_21CB81F14();
  (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
  v18 = *(v2 + 8);
  v19 = *(v2 + 24);
  v20 = *(v2 + 40);
  v34 = *(v2 + 48);
  v21 = *(v2 + 56);
  v22 = swift_allocObject();
  v23 = *(v2 + 16);
  v22[1] = *v2;
  v22[2] = v23;
  v24 = *(v2 + 48);
  v22[3] = *(v2 + 32);
  v22[4] = v24;
  sub_21C71F3FC();

  v25 = v39;
  sub_21CB84DC4();
  LOBYTE(v19) = sub_21CB55968();
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v19 & 1;
  v28 = &v25[*(v37 + 36)];
  *v28 = KeyPath;
  v28[1] = sub_21C87E800;
  v28[2] = v27;
  sub_21CB81014();
  v29 = sub_21CB81004();
  v31 = v30;
  v35(v11, v36);
  v43 = v29;
  v44 = v31;
  type metadata accessor for PMTOTPMigrationModel(0);
  sub_21CB5E1A4(&qword_27CDEB078, type metadata accessor for PMTOTPMigrationModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v40 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1748, &qword_21CBBDF70);
  sub_21C844588();
  sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70);
  v32 = v39;
  sub_21CB84424();

  return sub_21C6EA794(v32, &qword_27CDEDA98, &unk_21CBABCB0);
}

uint64_t sub_21CB58F18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB81F14();
  v30 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81EE4();
  sub_21CB81014();
  v14 = sub_21CB81004();
  v16 = v15;
  (*(v5 + 8))(v8, v4);
  v17 = type metadata accessor for PMPlatformRoleButton();
  (*(v10 + 16))(a2 + *(v17 + 20), v13, v9);
  v18 = *(a1 + 8);
  v19 = *(a1 + 24);
  v20 = *(a1 + 40);
  v32 = *(a1 + 48);
  v29 = *(&v32 + 1);
  v21 = swift_allocObject();
  v22 = *(a1 + 16);
  *(v21 + 1) = *a1;
  *(v21 + 2) = v22;
  v23 = *(a1 + 48);
  *(v21 + 3) = *(a1 + 32);
  *(v21 + 4) = v23;
  *a2 = v14;
  a2[1] = v16;
  v24 = (a2 + *(v17 + 24));
  *v24 = sub_21CB5E3D4;
  v24[1] = v21;

  sub_21C6EDBAC(&v32, v31, &qword_27CDFA500, &qword_21CBCE6A8);
  LOBYTE(a1) = sub_21CB55BA4();
  (*(v10 + 8))(v13, v30);
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = a1 & 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FB8, &unk_21CBB2E00);
  v28 = (a2 + *(result + 36));
  *v28 = KeyPath;
  v28[1] = sub_21C735744;
  v28[2] = v26;
  return result;
}

uint64_t sub_21CB591F0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21CB59344()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA530, &qword_21CBCE750);
  sub_21C6EADEC(&qword_27CDFA528, &qword_27CDFA530, &qword_21CBCE750);
  return sub_21CB85054();
}

uint64_t sub_21CB593E8@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA548, &unk_21CBCE760);
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B8, &qword_21CBA3EB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA550, &qword_21CBCE770);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v39 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA558, &qword_21CBCE778);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v46 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v42 = &v39 - v23;
  v47 = sub_21CB832F4();
  v53 = 0;
  sub_21CB5A26C(a1, &v50);
  v57 = *&v51[4];
  v58 = *&v51[6];
  v59[0] = *&v51[8];
  *(v59 + 9) = *(&v51[9] + 1);
  v54 = v50;
  v55 = *v51;
  v56 = *&v51[2];
  v60[0] = v50;
  v60[1] = *v51;
  v60[2] = *&v51[2];
  v60[3] = *&v51[4];
  v60[4] = *&v51[6];
  v61[0] = *&v51[8];
  *(v61 + 9) = *(&v51[9] + 1);
  sub_21C6EDBAC(&v54, &v48, &qword_27CDFA560, &qword_21CBCE780);
  sub_21C6EA794(v60, &qword_27CDFA560, &qword_21CBCE780);
  *(&v52[3] + 7) = v57;
  *(&v52[4] + 7) = v58;
  *(&v52[5] + 7) = v59[0];
  v52[6] = *(v59 + 9);
  *(v52 + 7) = v54;
  *(&v52[1] + 7) = v55;
  *(&v52[2] + 7) = v56;
  v43 = v53;
  if (*(a1 + *(type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) + 20)))
  {
    sub_21CB599F4(a1, v18);
    sub_21CB59EA0(a1, v12);
    v24 = v39;
    sub_21C6EDBAC(v18, v39, &qword_27CDFA550, &qword_21CBCE770);
    v25 = v40;
    sub_21C6EDBAC(v12, v40, &qword_27CDEC2B8, &qword_21CBA3EB0);
    v26 = v41;
    sub_21C6EDBAC(v24, v41, &qword_27CDFA550, &qword_21CBCE770);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA578, &unk_21CBCE798);
    sub_21C6EDBAC(v25, v26 + *(v27 + 48), &qword_27CDEC2B8, &qword_21CBA3EB0);
    sub_21C6EA794(v12, &qword_27CDEC2B8, &qword_21CBA3EB0);
    sub_21C6EA794(v18, &qword_27CDFA550, &qword_21CBCE770);
    sub_21C6EA794(v25, &qword_27CDEC2B8, &qword_21CBA3EB0);
    sub_21C6EA794(v24, &qword_27CDFA550, &qword_21CBCE770);
    v28 = v42;
    sub_21C716934(v26, v42, &qword_27CDFA548, &unk_21CBCE760);
    v29 = 0;
  }

  else
  {
    v29 = 1;
    v28 = v42;
  }

  (*(v44 + 56))(v28, v29, 1, v45);
  v30 = v46;
  sub_21C6EDBAC(v28, v46, &qword_27CDFA558, &qword_21CBCE778);
  *&v49[97] = v52[6];
  *&v49[81] = v52[5];
  *&v49[65] = v52[4];
  *&v49[49] = v52[3];
  *&v49[17] = v52[1];
  v31 = v47;
  *&v48 = v47;
  *(&v48 + 1) = 0x4010000000000000;
  v32 = v43;
  v49[0] = v43;
  *&v49[1] = v52[0];
  *&v49[33] = v52[2];
  v33 = *&v49[96];
  *(a2 + 96) = *&v49[80];
  *(a2 + 112) = v33;
  *(a2 + 128) = v49[112];
  v34 = *v49;
  *a2 = v48;
  *(a2 + 16) = v34;
  v35 = *&v49[32];
  *(a2 + 32) = *&v49[16];
  *(a2 + 48) = v35;
  v36 = *&v49[64];
  *(a2 + 64) = *&v49[48];
  *(a2 + 80) = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA568, &qword_21CBCE788);
  sub_21C6EDBAC(v30, a2 + *(v37 + 48), &qword_27CDFA558, &qword_21CBCE778);
  sub_21C6EDBAC(&v48, &v50, &qword_27CDFA570, &qword_21CBCE790);
  sub_21C6EA794(v28, &qword_27CDFA558, &qword_21CBCE778);
  sub_21C6EA794(v30, &qword_27CDFA558, &qword_21CBCE778);
  *(&v51[6] + 1) = v52[3];
  *(&v51[8] + 1) = v52[4];
  *(&v51[10] + 1) = v52[5];
  *(&v51[12] + 1) = v52[6];
  *(v51 + 1) = v52[0];
  *(&v51[2] + 1) = v52[1];
  *&v50 = v31;
  *(&v50 + 1) = 0x4010000000000000;
  LOBYTE(v51[0]) = v32;
  *(&v51[4] + 1) = v52[2];
  return sub_21C6EA794(&v50, &qword_27CDFA570, &qword_21CBCE790);
}

uint64_t sub_21CB599F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA580, &qword_21CBCE7A8);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA588, &qword_21CBCE7B0);
  v46 = *(v44 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  v45 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v41 - v14;
  v16 = type metadata accessor for PMAccount(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v22 = *(v2 + 56);
  v43 = a1;
  sub_21CB55044(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_21C6EA794(v15, &unk_27CDEBE60, &unk_21CB9FF40);
    return (*(v48 + 56))(v50, 1, 1, v49);
  }

  else
  {
    sub_21CB5D5CC(v15, v20, type metadata accessor for PMAccount);
    v24 = v20;
    v25 = sub_21CB832F4();
    v41 = v25;
    v42 = v20;
    LOBYTE(v55[0]) = 1;
    sub_21CB5AD14(v21, v20, v52);
    *&v51[7] = v52[0];
    *&v51[23] = v52[1];
    *&v51[39] = v52[2];
    *&v51[55] = v52[3];
    v26 = v55[0];
    v27 = v47;
    sub_21CB5B364(v43, v24, v47);
    v29 = v45;
    v28 = v46;
    v30 = *(v46 + 16);
    v31 = v27;
    v32 = v44;
    v30(v45, v31, v44);
    v53 = v25;
    v54[0] = v26;
    *&v54[1] = *v51;
    *&v54[17] = *&v51[16];
    *&v54[33] = *&v51[32];
    *&v54[49] = *&v51[48];
    v33 = *&v51[63];
    *&v54[64] = *&v51[63];
    v34 = *v54;
    *v7 = v25;
    *(v7 + 1) = v34;
    v35 = *&v54[16];
    v36 = *&v54[32];
    v37 = *&v54[48];
    *(v7 + 10) = v33;
    *(v7 + 3) = v36;
    *(v7 + 4) = v37;
    *(v7 + 2) = v35;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA590, &qword_21CBCE7B8);
    v30(&v7[*(v38 + 48)], v29, v32);
    sub_21C6EDBAC(&v53, v55, &qword_27CDFA598, &qword_21CBCE7C0);
    v39 = *(v28 + 8);
    v39(v47, v32);
    v39(v29, v32);
    v55[0] = v41;
    v55[1] = 0;
    v56 = v26;
    v58 = *&v51[16];
    v59 = *&v51[32];
    *v60 = *&v51[48];
    *&v60[15] = *&v51[63];
    v57 = *v51;
    sub_21C6EA794(v55, &qword_27CDFA598, &qword_21CBCE7C0);
    v40 = v50;
    sub_21C716934(v7, v50, &qword_27CDFA580, &qword_21CBCE7A8);
    (*(v48 + 56))(v40, 0, 1, v49);
    return sub_21C7D4A64(v42);
  }
}

uint64_t sub_21CB59EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v9 = sub_21CB81024();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v33 - v16;
  v18 = *(a1 + *(type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) + 20));
  if (v18)
  {
    v40 = *(v2 + 48);
    v34 = v18;
    v35 = a2;
    v19 = v2;
    sub_21CB55044(a1, v17);
    v20 = type metadata accessor for PMAccount(0);
    (*(*(v20 - 8) + 48))(v17, 1, v20);
    sub_21C6EA794(v17, &unk_27CDEBE60, &unk_21CB9FF40);
    sub_21CB81014();
    v21 = sub_21CB81004();
    v23 = v22;
    (*(v10 + 8))(v13, v9);
    v38 = v21;
    v39 = v23;
    v24 = *(v19 + 8);
    v25 = *(v19 + 24);
    v26 = *(v19 + 40);
    v27 = swift_allocObject();
    v28 = *(v19 + 16);
    *(v27 + 16) = *v19;
    *(v27 + 32) = v28;
    v29 = *(v19 + 48);
    *(v27 + 48) = *(v19 + 32);
    *(v27 + 64) = v29;
    *(v27 + 80) = v34;

    sub_21C6EDBAC(&v40, v37, &qword_27CDFA500, &qword_21CBCE6A8);
    sub_21C71F3FC();
    sub_21CB84DE4();
    v30 = v35;
    (*(v36 + 32))(v35, v8, v5);
    return (*(v36 + 56))(v30, 0, 1, v5);
  }

  else
  {
    v32 = *(v36 + 56);

    return v32(a2, 1, 1, v5);
  }
}

__n128 sub_21CB5A26C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v54 - v10;
  v12 = sub_21CB83ED4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + *(type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) + 20));
  if (v17)
  {
    v56 = v17;
    *&v86 = sub_21CB5E1EC(a1);
    *(&v86 + 1) = v18;
    sub_21C71F3FC();
    v19 = sub_21CB84054();
    v21 = v20;
    v23 = v22;
    (*(v13 + 104))(v16, *MEMORY[0x277CE0A68], v12);
    v24 = sub_21CB83DC4();
    (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
    sub_21CB83DE4();
    sub_21CB83E24();
    sub_21C6EA794(v11, &qword_27CDEBB58, &qword_21CBAF8A0);
    (*(v13 + 8))(v16, v12);
    v25 = sub_21CB84024();
    v27 = v26;
    v29 = v28;
    v31 = v30;

    sub_21C74A72C(v19, v21, v23 & 1);

    v32 = v56;
    v56 = v32;
    sub_21C79B058(v25, v27, v29 & 1);

    sub_21C79B058(v25, v27, v29 & 1);

    sub_21C74A72C(v25, v27, v29 & 1);

    *&v88[8] = v80;
    *&v88[24] = v81;
    *v89 = v82;
    LOBYTE(v70) = v29 & 1;
    LOBYTE(v65) = 0;
    *&v86 = v25;
    *(&v86 + 1) = v27;
    LOBYTE(v87) = v29 & 1;
    *(&v87 + 1) = v73[0];
    DWORD1(v87) = *(v73 + 3);
    *(&v87 + 1) = v31;
    *v88 = v32;
    *&v89[16] = v83;
    v89[32] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5A8, &qword_21CBCE970);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5B0, &qword_21CBCE978);
    sub_21C6EADEC(&qword_27CDFA5B8, &qword_27CDFA5A8, &qword_21CBCE970);
    sub_21C6EADEC(&qword_27CDFA5C0, &qword_27CDFA5B0, &qword_21CBCE978);
    sub_21CB83494();

    sub_21C74A72C(v25, v27, v29 & 1);
  }

  else
  {
    v33 = sub_21CB83034();
    LOBYTE(v58) = 1;
    sub_21CB5AA44(a1, &v86);
    v34 = v86;
    LOBYTE(v86) = v88[0];
    v70 = v33;
    LOBYTE(v71[0]) = v58;
    *(v71 + 8) = v34;
    *(&v71[1] + 8) = v87;
    BYTE8(v71[2]) = v88[0];
    v72 = *&v88[8];
    sub_21CB81014();
    v35 = sub_21CB81004();
    v37 = v36;
    (*(v4 + 8))(v7, v3);
    *&v86 = v35;
    *(&v86 + 1) = v37;
    sub_21C71F3FC();
    v38 = sub_21CB84054();
    v40 = v39;
    v42 = v41;
    LODWORD(v86) = sub_21CB837E4();
    v43 = sub_21CB83FC4();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    sub_21C74A72C(v38, v40, v42 & 1);

    v69 = v72;
    v74 = v72;
    v67 = v71[1];
    v68 = v71[2];
    v73[2] = v71[1];
    v73[3] = v71[2];
    v65 = v70;
    v66 = v71[0];
    v73[0] = v70;
    v73[1] = v71[0];
    v79 = v72;
    v77 = v71[1];
    v78 = v71[2];
    v75 = v70;
    v76 = v71[0];
    v64 = v47 & 1;
    sub_21C6EDBAC(&v70, &v86, &qword_27CDFA5A0, &qword_21CBCE968);
    sub_21C79B058(v43, v45, v47 & 1);

    sub_21C6EDBAC(v73, &v86, &qword_27CDFA5A0, &qword_21CBCE968);
    sub_21C79B058(v43, v45, v47 & 1);

    v55 = v43;
    sub_21C74A72C(v43, v45, v47 & 1);
    v56 = v49;

    v82 = v67;
    v83 = v68;
    v84 = v69;
    v80 = v65;
    v81 = v66;
    sub_21C6EA794(&v80, &qword_27CDFA5A0, &qword_21CBCE968);
    v85 = 1;
    *v88 = v77;
    *&v88[16] = v78;
    v86 = v75;
    v87 = v76;
    *&v88[32] = v79;
    *v89 = v43;
    *&v89[8] = v45;
    v89[16] = v47 & 1;
    *&v89[24] = v49;
    v89[32] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5A8, &qword_21CBCE970);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5B0, &qword_21CBCE978);
    sub_21C6EADEC(&qword_27CDFA5B8, &qword_27CDFA5A8, &qword_21CBCE970);
    sub_21C6EADEC(&qword_27CDFA5C0, &qword_27CDFA5B0, &qword_21CBCE978);
    sub_21CB83494();
    sub_21C74A72C(v55, v45, v47 & 1);

    sub_21C6EA794(&v70, &qword_27CDFA5A0, &qword_21CBCE968);
  }

  *&v89[8] = v63[0];
  *&v89[17] = *(v63 + 9);
  v86 = v58;
  v87 = v59;
  *v88 = v60;
  *&v88[16] = v61;
  v50 = *&v89[8];
  v51 = v57;
  *(v57 + 64) = v62;
  *(v51 + 80) = v50;
  *(v51 + 89) = *&v89[17];
  v52 = v87;
  *v51 = v86;
  *(v51 + 16) = v52;
  result = *&v88[16];
  *(v51 + 32) = *v88;
  *(v51 + 48) = result;
  return result;
}

uint64_t sub_21CB5AA44@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  v8 = sub_21CB83ED4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_21CB84BB4();
  v29 = sub_21CB84AF4();
  v31 = sub_21CB5E1EC(a1);
  v32 = v13;
  sub_21C71F3FC();
  v14 = sub_21CB84054();
  v16 = v15;
  v18 = v17;
  (*(v9 + 104))(v12, *MEMORY[0x277CE0A68], v8);
  v19 = sub_21CB83DC4();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  sub_21CB83DE4();
  sub_21CB83E24();
  sub_21C6EA794(v7, &qword_27CDEBB58, &qword_21CBAF8A0);
  (*(v9 + 8))(v12, v8);
  v20 = sub_21CB84024();
  v22 = v21;
  LOBYTE(v12) = v23;
  v25 = v24;

  sub_21C74A72C(v14, v16, v18 & 1);

  v26 = v29;
  *a2 = v30;
  *(a2 + 8) = v26;
  *(a2 + 16) = v20;
  *(a2 + 24) = v22;
  *(a2 + 32) = v12 & 1;
  *(a2 + 40) = v25;

  sub_21C79B058(v20, v22, v12 & 1);

  sub_21C74A72C(v20, v22, v12 & 1);
}

uint64_t sub_21CB5AD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v52 = a2;
  v54 = a3;
  v4 = type metadata accessor for PMAccount(0);
  v51 = *(v4 - 8);
  v50 = *(v51 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v43 - v7;
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  *&v56 = v13;
  *(&v56 + 1) = v15;
  sub_21C71F3FC();
  v16 = sub_21CB84054();
  v18 = v17;
  LOBYTE(v13) = v19;
  sub_21CB83D64();
  v20 = sub_21CB84024();
  v22 = v21;
  v24 = v23;

  sub_21C74A72C(v16, v18, v13 & 1);

  sub_21CB84B34();
  v25 = sub_21CB83FB4();
  v46 = v26;
  v47 = v27;
  v44 = v28;

  sub_21C74A72C(v20, v22, v24 & 1);

  v43 = *(a1 + 8);
  v45 = *(a1 + 24);
  v48 = *(a1 + 40);
  v56 = *(a1 + 48);
  v29 = v52;
  v30 = v49;
  sub_21CB5D564(v52, v49, type metadata accessor for PMAccount);
  v31 = *(v51 + 80);
  v32 = swift_allocObject();
  v33 = *(a1 + 16);
  v32[1] = *a1;
  v32[2] = v33;
  v34 = *(a1 + 48);
  v32[3] = *(a1 + 32);
  v32[4] = v34;
  sub_21CB5D5CC(v30, v32 + ((v31 + 80) & ~v31), type metadata accessor for PMAccount);
  v35 = v29;
  v36 = v53;
  sub_21CB5D564(v35, v53, type metadata accessor for PMAccount);
  v37 = swift_allocObject();
  sub_21CB5D5CC(v36, v37 + ((v31 + 16) & ~v31), type metadata accessor for PMAccount);
  v38 = v44 & 1;
  v57 = v44 & 1;
  v39 = v54;
  v41 = v46;
  v40 = v47;
  *v54 = v25;
  v39[1] = v41;
  *(v39 + 16) = v38;
  v39[3] = v40;
  v39[4] = sub_21CB5E134;
  v39[5] = v37;
  v39[6] = sub_21CB5E0CC;
  v39[7] = v32;

  sub_21C6EDBAC(&v56, v55, &qword_27CDFA500, &qword_21CBCE6A8);
  sub_21C79B058(v25, v41, v38);

  sub_21C74A72C(v25, v41, v38);
}

uint64_t sub_21CB5B120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21CB5D564(a1, a2, type metadata accessor for PMAccount);
  v3 = sub_21CB837E4();
  v4 = type metadata accessor for PMAccountRow();
  v5 = a2 + v4[7];
  v6 = MEMORY[0x277CE04E8];
  *(v5 + 24) = MEMORY[0x277CE04F8];
  *(v5 + 32) = v6;
  *v5 = v3;
  v7 = v4[9];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v9 = (a2 + v7);
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v22);

  type metadata accessor for PMGroupsStore();
  sub_21CB5E1A4(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v10 = sub_21CB82674();
  v12 = v11;

  *v9 = v10;
  v9[1] = v12;
  v13 = a2 + v4[10];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a2 + v4[11];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = v4[12];
  *(a2 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v16 = v4[13];
  *(a2 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v17 = v4[14];
  result = swift_getKeyPath();
  *(a2 + v17) = result;
  v19 = (a2 + v4[5]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (a2 + v4[6]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (a2 + v4[8]);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_21CB5B364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v69 = a1;
  v70 = a2;
  v73 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA3D8, &qword_21CBCDFE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = v60 - v9;
  v10 = type metadata accessor for PMAccount(0);
  v68 = *(v10 - 8);
  v65 = *(v68 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v61 = *(v13 - 8);
  v14 = *(v61 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21CB81024();
  v63 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v71 = *(v21 - 8);
  v72 = v21;
  v22 = *(v71 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = v60 - v23;
  sub_21CB81014();
  v25 = sub_21CB81004();
  v27 = v26;
  v28 = *(v17 + 8);
  v62 = v17 + 8;
  v64 = v28;
  v28(v20, v16);
  v75 = v25;
  v76 = v27;
  v29 = *(v4 + 8);
  v31 = *(v4 + 40);
  v30 = *(v4 + 48);
  v60[0] = *(v4 + 24);
  v60[1] = v31;
  v67 = v30;
  v32 = *(v4 + 56);
  sub_21CB5D564(v69, v15, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  v33 = v12;
  sub_21CB5D564(v70, v12, type metadata accessor for PMAccount);
  v34 = (*(v61 + 80) + 80) & ~*(v61 + 80);
  v35 = (v14 + *(v68 + 80) + v34) & ~*(v68 + 80);
  v36 = swift_allocObject();
  v37 = *(v4 + 16);
  v36[1] = *v4;
  v36[2] = v37;
  v38 = *(v4 + 32);
  v39 = *(v4 + 48);
  v68 = v4;
  v36[3] = v38;
  v36[4] = v39;
  sub_21CB5D5CC(v15, v36 + v34, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  sub_21CB5D5CC(v33, v36 + v35, type metadata accessor for PMAccount);
  v40 = sub_21C71F3FC();

  v41 = MEMORY[0x277D837D0];
  v69 = v40;
  v70 = v24;
  sub_21CB84DE4();
  sub_21CB81014();
  sub_21CB81004();
  v64(v20, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_21CBA0690;
  swift_getKeyPath();
  swift_getKeyPath();
  v43 = v66;
  sub_21CB81DB4();

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA410, &qword_21CBCE200);
  v45 = *(*(v44 - 8) + 48);
  v65 = v44;
  if (v45(v43, 1))
  {
    sub_21C6EA794(v43, &qword_27CDFA3D8, &qword_21CBCDFE0);
    v46 = 0;
    v47 = 0;
  }

  else
  {
    sub_21CB5D564(v43, v33, type metadata accessor for PMAccount);
    sub_21C6EA794(v43, &qword_27CDFA3D8, &qword_21CBCDFE0);
    v46 = PMAccount.userVisibleDomain.getter();
    v47 = v48;
    sub_21C7D4A64(v33);
  }

  *(v42 + 56) = v41;
  *(v42 + 64) = sub_21C7C0050();
  if (v47)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0;
  }

  v50 = 0xE000000000000000;
  if (v47)
  {
    v50 = v47;
  }

  *(v42 + 32) = v49;
  *(v42 + 40) = v50;
  v51 = sub_21CB85594();
  v53 = v52;
  v66 = v52;

  v77 = v51;
  v78 = v53;
  type metadata accessor for PMTOTPMigrationModel(0);
  sub_21CB5E1A4(&qword_27CDEB078, type metadata accessor for PMTOTPMigrationModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v74;
  sub_21CB81DB4();

  MEMORY[0x28223BE20](v55);
  MEMORY[0x28223BE20](v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1748, &qword_21CBBDF70);
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70);
  v57 = v72;
  v58 = v70;
  sub_21CB84414();

  sub_21C6EA794(v54, &qword_27CDFA3D8, &qword_21CBCDFE0);

  return (*(v71 + 8))(v58, v57);
}

uint64_t sub_21CB5BC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v67 = a2;
  v68 = a1;
  v73 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v72 = v56 - v7;
  v8 = type metadata accessor for PMAccount(0);
  v65 = *(v8 - 8);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v63 = *(v10 - 8);
  v61 = *(v63 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v57 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21CB81024();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v21 = *(v20 - 8);
  v22 = v21[8];
  MEMORY[0x28223BE20](v20);
  v71 = v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v70 = v56 - v25;
  MEMORY[0x28223BE20](v26);
  v69 = v56 - v27;
  MEMORY[0x28223BE20](v28);
  v62 = v56 - v29;
  sub_21CB81014();
  sub_21CB81014();
  v30 = sub_21CB80FF4();
  v32 = v31;
  v33 = *(v13 + 8);
  v58 = v13 + 8;
  v60 = v33;
  v59 = v12;
  v33(v16, v12);
  v33(v19, v12);
  v75 = v30;
  v76 = v32;
  v34 = *(a3 + 8);
  v56[1] = *(a3 + 24);
  v56[2] = *(a3 + 40);
  v77 = *(a3 + 48);
  v35 = v57;
  sub_21CB5D564(v67, v57, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  v36 = v64;
  sub_21CB5D564(v68, v64, type metadata accessor for PMAccount);
  v37 = (*(v63 + 80) + 80) & ~*(v63 + 80);
  v38 = (v61 + *(v65 + 80) + v37) & ~*(v65 + 80);
  v39 = swift_allocObject();
  v40 = *(a3 + 16);
  v39[1] = *a3;
  v39[2] = v40;
  v41 = *(a3 + 48);
  v39[3] = *(a3 + 32);
  v39[4] = v41;
  sub_21CB5D5CC(v35, v39 + v37, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  sub_21CB5D5CC(v36, v39 + v38, type metadata accessor for PMAccount);

  sub_21C6EDBAC(&v77, v74, &qword_27CDFA500, &qword_21CBCE6A8);
  sub_21C71F3FC();
  v42 = v62;
  sub_21CB84DE4();
  sub_21CB81014();
  v43 = sub_21CB81004();
  v45 = v44;
  v60(v19, v59);
  v75 = v43;
  v76 = v45;
  v46 = v72;
  sub_21CB81EF4();
  v47 = sub_21CB81F14();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  v48 = v69;
  sub_21CB84DC4();
  v49 = v21[2];
  v50 = v70;
  v49(v70, v42, v20);
  v51 = v71;
  v49(v71, v48, v20);
  v52 = v73;
  v49(v73, v50, v20);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v49(&v52[*(v53 + 48)], v51, v20);
  v54 = v21[1];
  v54(v48, v20);
  v54(v42, v20);
  v54(v51, v20);
  return (v54)(v50, v20);
}

uint64_t sub_21CB5C310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v5 = type metadata accessor for PMAccount(0);
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - v13;
  v15 = sub_21CB858E4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = *(a1 + 8);
  v17 = *(a1 + 24);
  v18 = *(a1 + 40);
  v32 = *(a1 + 48);
  sub_21CB5D564(a2, v10, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  sub_21CB5D564(v29, v7, type metadata accessor for PMAccount);
  sub_21CB858B4();

  sub_21C6EDBAC(&v32, v31, &qword_27CDFA500, &qword_21CBCE6A8);
  v19 = sub_21CB858A4();
  v20 = (*(v28 + 80) + 96) & ~*(v28 + 80);
  v21 = (v9 + *(v30 + 80) + v20) & ~*(v30 + 80);
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v19;
  *(v22 + 24) = v23;
  v24 = *(a1 + 16);
  *(v22 + 32) = *a1;
  *(v22 + 48) = v24;
  v25 = *(a1 + 48);
  *(v22 + 64) = *(a1 + 32);
  *(v22 + 80) = v25;
  sub_21CB5D5CC(v10, v22 + v20, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  sub_21CB5D5CC(v7, v22 + v21, type metadata accessor for PMAccount);
  sub_21C98B308(0, 0, v14, &unk_21CBCE850, v22);
}

uint64_t sub_21CB5C634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_21CB858B4();
  v6[3] = sub_21CB858A4();
  v10 = *(a4 + 56);
  v11 = swift_task_alloc();
  v6[4] = v11;
  *v11 = v6;
  v11[1] = sub_21C74FDC4;

  return sub_21CB551C8(a5, a6);
}

uint64_t sub_21CB5C6F8(uint64_t a1)
{
  v1 = *(a1 + 56);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21CB5C794@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v48 - v5;
  v7 = sub_21CB81024();
  v51 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v12);
  v55 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v54 = v48 - v17;
  MEMORY[0x28223BE20](v18);
  v53 = v48 - v19;
  MEMORY[0x28223BE20](v20);
  v49 = v48 - v21;
  sub_21CB81014();
  v22 = sub_21CB81004();
  v24 = v23;
  v25 = *(v8 + 8);
  v50 = v8 + 8;
  v52 = v25;
  v25(v11, v7);
  v58 = v22;
  v59 = v24;
  sub_21CB81ED4();
  v26 = sub_21CB81F14();
  v27 = *(v26 - 8);
  v48[0] = *(v27 + 56);
  v48[1] = v27 + 56;
  (v48[0])(v6, 0, 1, v26);
  v28 = *(a1 + 8);
  v29 = *(a1 + 24);
  v30 = *(a1 + 40);
  v60 = *(a1 + 48);
  v31 = swift_allocObject();
  v32 = *(a1 + 16);
  v31[1] = *a1;
  v31[2] = v32;
  v33 = *(a1 + 48);
  v31[3] = *(a1 + 32);
  v31[4] = v33;

  sub_21C6EDBAC(&v60, v57, &qword_27CDFA500, &qword_21CBCE6A8);
  sub_21C71F3FC();
  v34 = v49;
  sub_21CB84DC4();
  sub_21CB81014();
  v35 = sub_21CB81004();
  v37 = v36;
  v52(v11, v51);
  v58 = v35;
  v59 = v37;
  sub_21CB81EF4();
  (v48[0])(v6, 0, 1, v26);
  v38 = v53;
  sub_21CB84DC4();
  v39 = v13[2];
  v40 = v54;
  v41 = v34;
  v39(v54, v34, v12);
  v42 = v55;
  v43 = v38;
  v39(v55, v38, v12);
  v44 = v56;
  v39(v56, v40, v12);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v39(&v44[*(v45 + 48)], v42, v12);
  v46 = v13[1];
  v46(v43, v12);
  v46(v41, v12);
  v46(v42, v12);
  return (v46)(v40, v12);
}

uint64_t sub_21CB5CC88@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21CB5CDB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_21CB56F8C(a1);
}

uint64_t sub_21CB5CDF8(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();
}

uint64_t sub_21CB5CE74(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA3D8, &qword_21CBCDFE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_21C6EDBAC(a1, &v13 - v9, &qword_27CDFA3D8, &qword_21CBCDFE0);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6EDBAC(v10, v7, &qword_27CDFA3D8, &qword_21CBCDFE0);

  sub_21CB81DC4();
  return sub_21C6EA794(v10, &qword_27CDFA3D8, &qword_21CBCDFE0);
}

unint64_t sub_21CB5CFA4()
{
  result = qword_27CDFA488;
  if (!qword_27CDFA488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA438, &qword_21CBCE518);
    sub_21CB5D05C();
    sub_21C6EADEC(&qword_27CDEB288, &qword_27CDEB238, &qword_21CBA1570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA488);
  }

  return result;
}

unint64_t sub_21CB5D05C()
{
  result = qword_27CDFA490;
  if (!qword_27CDFA490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA480, &qword_21CBCE558);
    sub_21C6EADEC(&qword_27CDFA498, &qword_27CDFA4A0, &unk_21CBCE598);
    sub_21C6EADEC(&qword_27CDEB278, &qword_27CDEB280, &unk_21CBA7D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA490);
  }

  return result;
}

uint64_t sub_21CB5D148(uint64_t result)
{
  if (!*(*result + 16))
  {
    v2 = *(v1 + 48);
    v3 = *(v1 + 56);
    return v2();
  }

  return result;
}

unint64_t sub_21CB5D180()
{
  result = qword_27CDFA4B8;
  if (!qword_27CDFA4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA460, &qword_21CBCE540);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA458, &qword_21CBCE538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA4A8, &qword_21CBCE5A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA450, &qword_21CBCE530);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA448, &qword_21CBCE528);
    sub_21CB829D4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA440, &qword_21CBCE520);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA438, &qword_21CBCE518);
    sub_21CB5CFA4();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21CB5E1A4(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDFA4B0, &qword_27CDFA4A8, &qword_21CBCE5A8);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDFA4C0, &qword_27CDFA4C8, &qword_21CBCE620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA4B8);
  }

  return result;
}

unint64_t sub_21CB5D474()
{
  result = qword_27CDFA520;
  if (!qword_27CDFA520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA510, &qword_21CBCE748);
    sub_21C6EADEC(&qword_27CDFA528, &qword_27CDFA530, &qword_21CBCE750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA520);
  }

  return result;
}

uint64_t sub_21CB5D538()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = v0[5];
  return v2(v1);
}

uint64_t sub_21CB5D564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB5D5CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB5D634()
{
  v1 = *(type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  v5 = v0 + v2;
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));
  v7 = *(v0 + 72);
  return sub_21CB55774(v5, v6);
}

uint64_t sub_21CB5D704(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA410, &qword_21CBCE200);
  return v4(a1, a1 + *(v5 + 48));
}

uint64_t objectdestroy_58Tm()
{
  v1 = (type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for PMAccount(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v65 = *(*(v5 - 1) + 64);
  v8 = v0[3];

  v9 = v0[5];

  v10 = v0[7];

  v11 = v0[9];

  v12 = (v0 + v3);
  sub_21C7A34C0(*v12, v12[1]);
  v13 = v12[3];

  v14 = v12[5];

  v15 = *(type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0) + 44);
  v16 = sub_21CB811C4();
  (*(*(v16 - 8) + 8))(v12 + v15, v16);

  v66 = v7;
  v17 = v0 + v7;
  v18 = *(v0 + v7 + 8);

  v19 = v0 + v7 + v5[5];
  type metadata accessor for PMAccount.UniqueID(0);
  LODWORD(v12) = swift_getEnumCaseMultiPayload();
  v20 = *(v19 + 1);

  v21 = *(v19 + 3);

  if (v12 == 1)
  {
    v22 = *(v19 + 5);

    v23 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v24 = v23[7];
    v25 = sub_21CB85B74();
    (*(*(v25 - 8) + 8))(&v19[v24], v25);
    v26 = *&v19[v23[8] + 8];

    v27 = v23[9];
    v28 = sub_21CB85C44();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(&v19[v27], 1, v28))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v54 = *(v19 + 4);

  v55 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v56 = v55[7];
  v57 = sub_21CB85C04();
  v58 = *(v57 - 8);
  if (!(*(v58 + 48))(&v19[v56], 1, v57))
  {
    (*(v58 + 8))(&v19[v56], v57);
  }

  v59 = v55[8];
  v60 = sub_21CB85BB4();
  v61 = *(v60 - 8);
  if (!(*(v61 + 48))(&v19[v59], 1, v60))
  {
    (*(v61 + 8))(&v19[v59], v60);
  }

  v27 = v55[9];
  v28 = sub_21CB85C44();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(&v19[v27], 1, v28))
  {
LABEL_3:
    (*(v29 + 8))(&v19[v27], v28);
  }

LABEL_4:
  v30 = &v17[v5[6]];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v64 = v2;
    v31 = *(v30 + 1);

    v32 = *(v30 + 3);

    v33 = *(v30 + 5);

    v34 = *(v30 + 7);

    v35 = type metadata accessor for PMAccount.MockData(0);
    v36 = v35[8];
    v37 = sub_21CB80DD4();
    v38 = *(v37 - 8);
    v39 = *(v38 + 48);
    if (!v39(&v30[v36], 1, v37))
    {
      (*(v38 + 8))(&v30[v36], v37);
    }

    v40 = *&v30[v35[9]];

    v41 = *&v30[v35[10] + 8];

    v42 = *&v30[v35[11] + 8];

    v43 = v35[12];
    if (!v39(&v30[v43], 1, v37))
    {
      (*(v38 + 8))(&v30[v43], v37);
    }

    v44 = v35[15];
    v45 = sub_21CB85BB4();
    v46 = *(v45 - 8);
    if (!(*(v46 + 48))(&v30[v44], 1, v45))
    {
      (*(v46 + 8))(&v30[v44], v45);
    }

    v47 = v35[16];
    v48 = sub_21CB85C04();
    v49 = *(v48 - 8);
    v2 = v64;
    if (!(*(v49 + 48))(&v30[v47], 1, v48))
    {
      (*(v49 + 8))(&v30[v47], v48);
    }

    v50 = *&v30[v35[17] + 8];

    v51 = v35[18];
    v52 = sub_21CB85C44();
    v53 = *(v52 - 8);
    if (!(*(v53 + 48))(&v30[v51], 1, v52))
    {
      (*(v53 + 8))(&v30[v51], v52);
    }
  }

  else
  {
  }

  v62 = &v17[v5[7]];
  if (*(v62 + 1))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v66 + v65, v2 | v6 | 7);
}

uint64_t sub_21CB5DEA8()
{
  v1 = *(type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_21CB5C310(v0 + 16, v0 + v2, v5);
}

uint64_t sub_21CB5DF78(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PMAccount(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21C702EFC;

  return sub_21CB5C634(a1, v10, v11, v1 + 32, v1 + v6, v1 + v9);
}

uint64_t sub_21CB5E0CC()
{
  v1 = *(type metadata accessor for PMAccount(0) - 8);
  v2 = *(v0 + 24);
  return (*(v0 + 16))(v0 + ((*(v1 + 80) + 80) & ~*(v1 + 80)));
}

uint64_t sub_21CB5E134@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PMAccount(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CB5B120(v4, a1);
}

uint64_t sub_21CB5E1A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CB5E1EC(void *a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  v7 = a1[5];
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  v11 = a1[2];
  v10 = a1[3];
  if (v9)
  {
    v12 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v12 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      sub_21CB81014();
      sub_21CB81004();
      (*(v3 + 8))(v6, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_21CBA15B0;
      v14 = MEMORY[0x277D837D0];
      *(v13 + 56) = MEMORY[0x277D837D0];
      v15 = sub_21C7C0050();
      *(v13 + 32) = v8;
      *(v13 + 40) = v7;
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 64) = v15;
      *(v13 + 72) = v11;
      *(v13 + 80) = v10;

      v11 = sub_21CB85594();
    }

    else
    {

      return v8;
    }
  }

  else
  {
  }

  return v11;
}

uint64_t sub_21CB5E3D8()
{
  v0 = sub_21CB807A4();
  v52 = *(v0 - 8);
  v1 = *(v52 + 64);
  MEMORY[0x28223BE20](v0);
  v51 = v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21CB80814();
  v56 = *(v3 - 8);
  v4 = *(v56 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF48A0, &unk_21CBBBAF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v47 - v9;
  v11 = sub_21CB80894();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v53 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21CB80BC4();
  v17 = MEMORY[0x277D84FA0];
  if (v16)
  {
    v18 = v15;
    v19 = v16;
    v50 = v0;
    if (v15 == 0x6874756170746FLL && v16 == 0xE700000000000000 || (sub_21CB86344() & 1) != 0 || v18 == 0x746F2D656C707061 && v19 == 0xED00006874756170)
    {
    }

    else
    {
      v35 = sub_21CB86344();

      if ((v35 & 1) == 0)
      {
        return v17;
      }
    }

    sub_21CB80844();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_21CB5EADC(v10);
      return v17;
    }

    v20 = v53;
    (*(v12 + 32))(v53, v10, v11);
    v61 = v17;
    v21 = sub_21CB80824();
    v49 = v12;
    if (v21)
    {
      v47[1] = v21;
      v48 = v11;
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = *(v56 + 16);
        v24 = v21 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
        v54 = *(v56 + 72);
        v55 = v23;
        v56 += 16;
        v25 = (v56 - 8);
        v26 = MEMORY[0x277D84F90];
        v23(v6, v24, v3);
        while (1)
        {
          if (sub_21CB807F4() == 0x726575737369 && v27 == 0xE600000000000000)
          {
          }

          else
          {
            v28 = sub_21CB86344();

            if ((v28 & 1) == 0)
            {
              (*v25)(v6, v3);
              goto LABEL_14;
            }
          }

          v29 = sub_21CB80804();
          v31 = v30;
          (*v25)(v6, v3);
          if (v31)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_21CA4F2EC(0, *(v26 + 2) + 1, 1, v26);
            }

            v33 = *(v26 + 2);
            v32 = *(v26 + 3);
            if (v33 >= v32 >> 1)
            {
              v26 = sub_21CA4F2EC((v32 > 1), v33 + 1, 1, v26);
            }

            *(v26 + 2) = v33 + 1;
            v34 = &v26[16 * v33];
            *(v34 + 4) = v29;
            *(v34 + 5) = v31;
          }

LABEL_14:
          v24 += v54;
          if (!--v22)
          {
            goto LABEL_29;
          }

          v55(v6, v24, v3);
        }
      }

      v26 = MEMORY[0x277D84F90];
LABEL_29:

      if (*(v26 + 2))
      {
        v36 = *(v26 + 4);
        v37 = *(v26 + 5);

        sub_21CA94078(&v59, v36, v37);
      }

      v11 = v48;
      v20 = v53;
    }

    v59 = sub_21CB80864();
    v60 = v38;
    v39 = v51;
    sub_21CB80774();
    sub_21C71F3FC();
    v40 = sub_21CB85EA4();
    v42 = v41;
    (*(v52 + 8))(v39, v50);

    v59 = v40;
    v60 = v42;
    v57 = 58;
    v58 = 0xE100000000000000;
    v43 = sub_21CB85E84();

    if (v43[2] == 2)
    {
      v44 = v43[4];
      v45 = v43[5];

      sub_21CA94078(&v59, v44, v45);

      (*(v49 + 8))(v20, v11);
    }

    else
    {
      (*(v49 + 8))(v20, v11);
    }

    return v61;
  }

  return v17;
}

uint64_t sub_21CB5EA14()
{
  v0 = sub_21CB80BC4();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    if (v0 == 0x6874756170746FLL && v1 == 0xE700000000000000 || (sub_21CB86344() & 1) != 0 || v2 == 0x746F2D656C707061 && v3 == 0xED00006874756170)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_21CB86344();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_21CB5EADC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF48A0, &unk_21CBBBAF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CB5EB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5C8, &qword_21CBCE980);
  v3 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v87 = &v74 - v4;
  v81 = sub_21CB81024();
  v80 = *(v81 - 8);
  v5 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5D0, &qword_21CBCE988);
  v85 = *(v8 - 8);
  v86 = v8;
  v9 = *(v85 + 64);
  MEMORY[0x28223BE20](v8);
  v83 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v96 = &v74 - v12;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5D8, &qword_21CBCE990);
  v13 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v92 = &v74 - v14;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5E0, &qword_21CBCE998);
  v15 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v84 = &v74 - v16;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1860, &qword_21CBB2090);
  v78 = *(v79 - 8);
  v17 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v74 = &v74 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1968, &qword_21CBB22D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v74 - v24;
  MEMORY[0x28223BE20](v26);
  v89 = &v74 - v27;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5E8, &qword_21CBCE9A0);
  v82 = *(v97 - 8);
  v28 = *(v82 + 64);
  MEMORY[0x28223BE20](v97);
  v76 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v74 - v31;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5F0, &qword_21CBCE9A8);
  v33 = *(v88 - 8);
  v34 = *(v33 + 8);
  MEMORY[0x28223BE20](v88);
  v75 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v74 - v37;
  v39 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v95 = a1;
  v98 = a1;
  if (v99 == 1)
  {
    v96 = v33;
    v86 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA620, &qword_21CBCEA08);
    sub_21C6EADEC(&qword_27CDFA628, &qword_27CDFA620, &qword_21CBCEA08);
    v87 = v38;
    v40 = sub_21CB85054();
    MEMORY[0x28223BE20](v40);
    *(&v74 - 2) = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA630, &qword_21CBCEA10);
    sub_21C6EADEC(&qword_27CDFA638, &qword_27CDFA630, &qword_21CBCEA10);
    sub_21CB85054();
    v41 = sub_21C92FD78();
    v77 = v32;
    if (v41)
    {
      v42 = v74;
      sub_21C92FF5C(v74);
      v43 = v89;
      sub_21C716934(v42, v89, &qword_27CDF1860, &qword_21CBB2090);
      v44 = 0;
      v45 = v86;
    }

    else
    {
      v44 = 1;
      v45 = v86;
      v43 = v89;
    }

    (*(v78 + 56))(v43, v44, 1, v79);
    v61 = *(v96 + 2);
    v62 = v75;
    v63 = v88;
    v61(v75, v87, v88);
    v64 = v82;
    v65 = *(v82 + 16);
    v66 = v76;
    v65(v76, v77, v97);
    sub_21C6EDBAC(v43, v45, &qword_27CDF1968, &qword_21CBB22D0);
    v67 = v84;
    v61(v84, v62, v63);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA640, &qword_21CBCEA18);
    v69 = v97;
    v65((v67 + *(v68 + 48)), v66, v97);
    sub_21C6EDBAC(v45, v67 + *(v68 + 64), &qword_27CDF1968, &qword_21CBB22D0);
    sub_21C6EA794(v45, &qword_27CDF1968, &qword_21CBB22D0);
    v70 = *(v64 + 8);
    v70(v66, v69);
    v71 = *(v96 + 1);
    v96 += 8;
    v72 = v62;
    v73 = v88;
    v71(v72, v88);
    sub_21C6EDBAC(v67, v92, &qword_27CDFA5E0, &qword_21CBCE998);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDFA610, &qword_27CDFA5E0, &qword_21CBCE998);
    sub_21C6EADEC(&qword_27CDFA618, &qword_27CDFA5C8, &qword_21CBCE980);
    sub_21CB83494();
    sub_21C6EA794(v67, &qword_27CDFA5E0, &qword_21CBCE998);
    sub_21C6EA794(v89, &qword_27CDF1968, &qword_21CBB22D0);
    v70(v77, v97);
    return (v71)(v87, v73);
  }

  else
  {
    sub_21CB81014();
    v46 = sub_21CB81004();
    v48 = v47;
    (*(v80 + 8))(v7, v81);
    v99 = v46;
    v100 = v48;
    sub_21C71F3FC();
    v99 = sub_21CB84054();
    v100 = v49;
    v101 = v50 & 1;
    v102 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5F8, &qword_21CBCE9F8);
    v97 = MEMORY[0x277CE14C0];
    sub_21C6EADEC(&qword_27CDFA600, &qword_27CDFA5F8, &qword_21CBCE9F8);
    v52 = v96;
    sub_21CB85064();
    sub_21C932F7C(v25);
    v53 = v85;
    v54 = v86;
    v55 = *(v85 + 16);
    v56 = v83;
    v55(v83, v52, v86);
    sub_21C6EDBAC(v25, v22, &qword_27CDF1968, &qword_21CBB22D0);
    v57 = v87;
    v55(v87, v56, v54);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA608, &qword_21CBCEA00);
    sub_21C6EDBAC(v22, v57 + *(v58 + 48), &qword_27CDF1968, &qword_21CBB22D0);
    sub_21C6EA794(v22, &qword_27CDF1968, &qword_21CBB22D0);
    v59 = *(v53 + 8);
    v59(v56, v54);
    sub_21C6EDBAC(v57, v92, &qword_27CDFA5C8, &qword_21CBCE980);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDFA610, &qword_27CDFA5E0, &qword_21CBCE998);
    sub_21C6EADEC(&qword_27CDFA618, &qword_27CDFA5C8, &qword_21CBCE980);
    sub_21CB83494();
    sub_21C6EA794(v57, &qword_27CDFA5C8, &qword_21CBCE980);
    sub_21C6EA794(v25, &qword_27CDF1968, &qword_21CBB22D0);
    return (v59)(v96, v54);
  }
}

uint64_t sub_21CB5F738@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B80, &qword_21CBB2550);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v48 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B88, &qword_21CBB2558);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v41 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1858, &qword_21CBB1FA8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v41 - v30;
  v47 = &v41 - v30;
  sub_21C924A48(&v41 - v30);
  v45 = v24;
  sub_21CB5FB90(v24);
  v44 = v21;
  sub_21CB6015C(v21);
  sub_21CB60734(v18);
  v41 = v6;
  sub_21CB60D0C(v6);
  v46 = v28;
  sub_21C6EDBAC(v31, v28, &qword_27CDF1858, &qword_21CBB1FA8);
  v43 = v15;
  sub_21C6EDBAC(v24, v15, &qword_27CDF1B88, &qword_21CBB2558);
  v42 = v12;
  sub_21C6EDBAC(v21, v12, &qword_27CDF1B88, &qword_21CBB2558);
  v32 = v18;
  v33 = v18;
  v34 = v50;
  sub_21C6EDBAC(v32, v50, &qword_27CDF1B88, &qword_21CBB2558);
  v35 = v6;
  v36 = v48;
  sub_21C6EDBAC(v35, v48, &qword_27CDF1B80, &qword_21CBB2550);
  v37 = v28;
  v38 = v49;
  sub_21C6EDBAC(v37, v49, &qword_27CDF1858, &qword_21CBB1FA8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA650, &qword_21CBCEA28);
  sub_21C6EDBAC(v15, v38 + v39[12], &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EDBAC(v12, v38 + v39[16], &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EDBAC(v34, v38 + v39[20], &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EDBAC(v36, v38 + v39[24], &qword_27CDF1B80, &qword_21CBB2550);
  sub_21C6EA794(v41, &qword_27CDF1B80, &qword_21CBB2550);
  sub_21C6EA794(v33, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EA794(v44, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EA794(v45, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EA794(v47, &qword_27CDF1858, &qword_21CBB1FA8);
  sub_21C6EA794(v36, &qword_27CDF1B80, &qword_21CBB2550);
  sub_21C6EA794(v50, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EA794(v42, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EA794(v43, &qword_27CDF1B88, &qword_21CBB2558);
  return sub_21C6EA794(v46, &qword_27CDF1858, &qword_21CBB1FA8);
}

uint64_t sub_21CB5FB90@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B80, &qword_21CBB2550);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - v19;
  v21 = (*(v1 + 8) + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_fileVaultRecoveryKeyModel);
  if (v21[1])
  {
    v22 = v21[2];
    v45 = v21[3];
    v46 = v22;
    v48 = v17;

    sub_21CB81014();
    v23 = sub_21CB81004();
    v43 = v24;
    v44 = v23;
    v47 = a1;
    v25 = *(v4 + 8);
    v25(v10, v3);
    sub_21CB81014();
    sub_21CB81014();
    v42 = sub_21CB80FF4();
    v27 = v26;
    v25(v7, v3);
    v25(v10, v3);
    v49 = 0;
    sub_21CB84D44();
    v28 = v51;
    v14[88] = v50;
    *(v14 + 12) = v28;
    v49 = 0;
    sub_21CB84D44();
    v29 = v51;
    v14[104] = v50;
    *(v14 + 14) = v29;
    v49 = 0;
    sub_21CB84D44();
    v30 = v51;
    v14[120] = v50;
    *(v14 + 16) = v30;
    v49 = 0;
    sub_21CB84D44();
    v31 = v51;
    v14[136] = v50;
    *(v14 + 18) = v31;
    *(v14 + 19) = swift_getKeyPath();
    *(v14 + 20) = 0;
    v14[168] = 0;
    *(v14 + 22) = swift_getKeyPath();
    v14[184] = 0;
    v32 = v11[29];
    *&v14[v32] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
    swift_storeEnumTagMultiPayload();
    v33 = &v14[v11[30]];
    type metadata accessor for PMCombinedAccountDetailsModel(0);
    sub_21C6F0748(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
    *v33 = sub_21CB823C4();
    v33[1] = v34;
    v35 = v11[31];
    type metadata accessor for PMWiFiDetailsModel();
    sub_21C6F0748(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
    sub_21CB821F4();
    *&v14[v11[32]] = 0;
    v36 = &v14[v11[33]];
    *v36 = 0x707954656772616CLL;
    *(v36 + 1) = 0xE900000000000065;
    v37 = v43;
    *v14 = v44;
    *(v14 + 1) = v37;
    *(v14 + 2) = v42;
    *(v14 + 3) = v27;
    v38 = v45;
    *(v14 + 4) = v46;
    *(v14 + 5) = v38;
    *(v14 + 6) = 0;
    v14[56] = 1;
    *(v14 + 57) = 0;
    *(v14 + 8) = 0;
    *(v14 + 9) = 0;
    *(v14 + 20) = 257;
    *(v14 + 42) = 256;
    v14[86] = 0;
    sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0);
    sub_21CB845C4();
    sub_21C6EA794(v14, &qword_27CDF1B78, &qword_21CBBE2D0);
    v39 = v47;
    sub_21C716934(v20, v47, &qword_27CDF1B80, &qword_21CBB2550);
    return (*(v48 + 56))(v39, 0, 1, v15);
  }

  else
  {
    v41 = *(v17 + 56);

    return v41(a1, 1, 1, v15, v18);
  }
}

uint64_t sub_21CB6015C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B80, &qword_21CBB2550);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v43 - v19;
  v21 = (*(v1 + 8) + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_fileVaultRecoveryKeyModel);
  if (v21[1] && (v22 = v21[5]) != 0)
  {
    v23 = v21[4];
    v46 = v22;
    v47 = v23;
    v49 = v17;

    sub_21CB81014();
    v24 = sub_21CB81004();
    v44 = v25;
    v45 = v24;
    v48 = a1;
    v26 = *(v4 + 8);
    v26(v10, v3);
    sub_21CB81014();
    sub_21CB81014();
    v43 = sub_21CB80FF4();
    v28 = v27;
    v26(v7, v3);
    v26(v10, v3);
    v50 = 0;
    sub_21CB84D44();
    v29 = v52;
    v14[88] = v51;
    *(v14 + 12) = v29;
    v50 = 0;
    sub_21CB84D44();
    v30 = v52;
    v14[104] = v51;
    *(v14 + 14) = v30;
    v50 = 0;
    sub_21CB84D44();
    v31 = v52;
    v14[120] = v51;
    *(v14 + 16) = v31;
    v50 = 0;
    sub_21CB84D44();
    v32 = v52;
    v14[136] = v51;
    *(v14 + 18) = v32;
    *(v14 + 19) = swift_getKeyPath();
    *(v14 + 20) = 0;
    v14[168] = 0;
    *(v14 + 22) = swift_getKeyPath();
    v14[184] = 0;
    v33 = v11[29];
    *&v14[v33] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
    swift_storeEnumTagMultiPayload();
    v34 = &v14[v11[30]];
    type metadata accessor for PMCombinedAccountDetailsModel(0);
    sub_21C6F0748(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
    *v34 = sub_21CB823C4();
    v34[1] = v35;
    v36 = v11[31];
    type metadata accessor for PMWiFiDetailsModel();
    sub_21C6F0748(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
    sub_21CB821F4();
    *&v14[v11[32]] = 0;
    v37 = &v14[v11[33]];
    *v37 = 0x707954656772616CLL;
    *(v37 + 1) = 0xE900000000000065;
    v38 = v44;
    *v14 = v45;
    *(v14 + 1) = v38;
    *(v14 + 2) = v43;
    *(v14 + 3) = v28;
    v39 = v46;
    *(v14 + 4) = v47;
    *(v14 + 5) = v39;
    *(v14 + 6) = 0;
    v14[56] = 1;
    *(v14 + 57) = 0;
    *(v14 + 8) = 0;
    *(v14 + 9) = 0;
    *(v14 + 20) = 257;
    *(v14 + 42) = 256;
    v14[86] = 0;
    sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0);
    sub_21CB845C4();
    sub_21C6EA794(v14, &qword_27CDF1B78, &qword_21CBBE2D0);
    v40 = v48;
    sub_21C716934(v20, v48, &qword_27CDF1B80, &qword_21CBB2550);
    return (*(v49 + 56))(v40, 0, 1, v15);
  }

  else
  {
    v42 = *(v17 + 56);

    return v42(a1, 1, 1, v15, v18);
  }
}

uint64_t sub_21CB60734@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B80, &qword_21CBB2550);
  v16 = *(*(v15 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v21 = &v45 - v20;
  v22 = (*(v1 + 8) + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_fileVaultRecoveryKeyModel);
  v23 = v22[1];
  if (v23)
  {
    v47 = *v22;
    v49 = v21;
    v50 = v18;
    v51 = v17;

    sub_21CB81014();
    v24 = sub_21CB81004();
    v45 = v25;
    v46 = v24;
    v48 = a1;
    v26 = *(v4 + 8);
    v26(v10, v3);
    sub_21CB81014();
    sub_21CB81014();
    v27 = sub_21CB80FF4();
    v29 = v28;
    v26(v7, v3);
    v26(v10, v3);
    v52 = 0;
    sub_21CB84D44();
    v30 = v54;
    v14[88] = v53;
    *(v14 + 12) = v30;
    v52 = 0;
    sub_21CB84D44();
    v31 = v54;
    v14[104] = v53;
    *(v14 + 14) = v31;
    v52 = 0;
    sub_21CB84D44();
    v32 = v54;
    v14[120] = v53;
    *(v14 + 16) = v32;
    v52 = 0;
    sub_21CB84D44();
    v33 = v54;
    v14[136] = v53;
    *(v14 + 18) = v33;
    *(v14 + 19) = swift_getKeyPath();
    *(v14 + 20) = 0;
    v14[168] = 0;
    *(v14 + 22) = swift_getKeyPath();
    v14[184] = 0;
    v34 = v11[29];
    *&v14[v34] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
    swift_storeEnumTagMultiPayload();
    v35 = &v14[v11[30]];
    type metadata accessor for PMCombinedAccountDetailsModel(0);
    sub_21C6F0748(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
    *v35 = sub_21CB823C4();
    v35[1] = v36;
    v37 = v11[31];
    type metadata accessor for PMWiFiDetailsModel();
    sub_21C6F0748(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
    sub_21CB821F4();
    *&v14[v11[32]] = 0;
    v38 = &v14[v11[33]];
    *v38 = 0x707954656772616CLL;
    *(v38 + 1) = 0xE900000000000065;
    v39 = v45;
    *v14 = v46;
    *(v14 + 1) = v39;
    *(v14 + 2) = v27;
    *(v14 + 3) = v29;
    *(v14 + 4) = v47;
    *(v14 + 5) = v23;
    *(v14 + 6) = 0;
    v14[56] = 1;
    *(v14 + 57) = 0;
    *(v14 + 8) = 0;
    *(v14 + 9) = 0;
    *(v14 + 20) = 257;
    *(v14 + 42) = 256;
    v14[86] = 0;
    sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0);
    v40 = v49;
    sub_21CB845C4();
    sub_21C6EA794(v14, &qword_27CDF1B78, &qword_21CBBE2D0);
    v41 = v40;
    v42 = v48;
    sub_21C716934(v41, v48, &qword_27CDF1B80, &qword_21CBB2550);
    return (*(v50 + 56))(v42, 0, 1, v51);
  }

  else
  {
    v44 = *(v18 + 56);

    return v44(a1, 1, 1, v19);
  }
}

uint64_t sub_21CB60D0C@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v48 - v4;
  v6 = sub_21CB83ED4();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v6);
  v49 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB81024();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  v17 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v19 = &v48 - v18;
  v20 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v57 = v60;
  sub_21CB81014();
  v21 = sub_21CB81004();
  v55 = v22;
  v56 = v21;
  v23 = *(v10 + 8);
  v23(v16, v9);
  sub_21CB81014();
  sub_21CB81014();
  v52 = sub_21CB80FF4();
  v54 = v24;
  v23(v13, v9);
  v23(v16, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v25 = v60;
  v26 = v61;
  v28 = v49;
  v27 = v50;
  v29 = v51;
  (*(v50 + 104))(v49, *MEMORY[0x277CE0A68], v51);
  v30 = *MEMORY[0x277CE0980];
  v31 = sub_21CB83DC4();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v5, v30, v31);
  (*(v32 + 56))(v5, 0, 1, v31);
  v33 = v28;
  v34 = sub_21CB83E24();
  sub_21C6EA794(v5, &qword_27CDEBB58, &qword_21CBAF8A0);
  (*(v27 + 8))(v33, v29);
  v59 = 0;
  sub_21CB84D44();
  v35 = v61;
  v19[88] = v60;
  *(v19 + 12) = v35;
  v59 = 0;
  sub_21CB84D44();
  v36 = v61;
  v19[104] = v60;
  *(v19 + 14) = v36;
  v59 = 0;
  sub_21CB84D44();
  v37 = v61;
  v19[120] = v60;
  *(v19 + 16) = v37;
  v59 = 0;
  sub_21CB84D44();
  v38 = v61;
  v19[136] = v60;
  *(v19 + 18) = v38;
  *(v19 + 19) = swift_getKeyPath();
  *(v19 + 20) = 0;
  v19[168] = 0;
  *(v19 + 22) = swift_getKeyPath();
  v19[184] = 0;
  v39 = v53;
  v40 = *(v53 + 116);
  *&v19[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v41 = &v19[v39[30]];
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C6F0748(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  *v41 = sub_21CB823C4();
  v41[1] = v42;
  v43 = v39[31];
  type metadata accessor for PMWiFiDetailsModel();
  sub_21C6F0748(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB821F4();
  *&v19[v39[32]] = 0;
  v44 = &v19[v39[33]];
  *v44 = 0x707954656772616CLL;
  *(v44 + 1) = 0xE900000000000065;
  v45 = v55;
  *v19 = v56;
  *(v19 + 1) = v45;
  v46 = v54;
  *(v19 + 2) = v52;
  *(v19 + 3) = v46;
  *(v19 + 4) = v25;
  *(v19 + 5) = v26;
  *(v19 + 6) = v34;
  *(v19 + 28) = 257;
  v19[58] = v57;
  *(v19 + 8) = 0;
  *(v19 + 9) = 0;
  *(v19 + 20) = 257;
  *(v19 + 42) = 256;
  v19[86] = 0;
  sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0);
  sub_21CB845C4();
  return sub_21C6EA794(v19, &qword_27CDF1B78, &qword_21CBBE2D0);
}

uint64_t sub_21CB61400@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A78, &qword_21CBB2388);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v30 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A80, &qword_21CBB2390);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A88, &qword_21CBB2398);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v30 - v21;
  sub_21C92D9F4(&v30 - v21);
  if (sub_21C92FB9C())
  {
    *v8 = sub_21CB85214();
    v8[1] = v23;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AA8, &qword_21CBB23B0);
    sub_21C937180(a1, v8 + *(v24 + 44));
    v25 = sub_21CB832C4();
    v26 = (v8 + *(v4 + 36));
    *v26 = v25;
    v26[1] = sub_21C7902AC;
    v26[2] = 0;
    sub_21C78E4F4(v8, v15);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  (*(v5 + 56))(v15, v27, 1, v4);
  sub_21C6EDBAC(v22, v19, &qword_27CDF1A88, &qword_21CBB2398);
  sub_21C6EDBAC(v15, v12, &qword_27CDF1A80, &qword_21CBB2390);
  sub_21C6EDBAC(v19, a2, &qword_27CDF1A88, &qword_21CBB2398);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA648, &qword_21CBCEA20);
  sub_21C6EDBAC(v12, a2 + *(v28 + 48), &qword_27CDF1A80, &qword_21CBB2390);
  sub_21C6EA794(v15, &qword_27CDF1A80, &qword_21CBB2390);
  sub_21C6EA794(v22, &qword_27CDF1A88, &qword_21CBB2398);
  sub_21C6EA794(v12, &qword_27CDF1A80, &qword_21CBB2390);
  return sub_21C6EA794(v19, &qword_27CDF1A88, &qword_21CBB2398);
}

uint64_t sub_21CB61704@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A78, &qword_21CBB2388);
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = *(v80 + 8);
  MEMORY[0x28223BE20](v3);
  v79 = (&v79 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A80, &qword_21CBB2390);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v83 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v85 = &v79 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A88, &qword_21CBB2398);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v82 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v91 = &v79 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B80, &qword_21CBB2550);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v90 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v79 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B88, &qword_21CBB2558);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v89 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v94 = &v79 - v26;
  MEMORY[0x28223BE20](v27);
  v88 = &v79 - v28;
  MEMORY[0x28223BE20](v29);
  v93 = &v79 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v79 - v32;
  MEMORY[0x28223BE20](v34);
  v92 = &v79 - v35;
  v36 = sub_21CB82F84();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v79 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1CA0, &unk_21CBB2700);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v87 = &v79 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v86 = &v79 - v45;
  v46 = a1 + *(type metadata accessor for PMCombinedAccountDetailsView() + 44);
  v47 = *v46;
  if (v46[8] == 1)
  {
    LOBYTE(v95) = *v46;
  }

  else
  {

    sub_21CB85B04();
    v48 = v33;
    v49 = sub_21CB83C94();
    sub_21CB81C14();

    v33 = v48;
    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v47, 0);
    (*(v37 + 8))(v40, v36);
    LOBYTE(v47) = v95;
  }

  v50 = v86;
  if (v47 == 1)
  {

    if (sub_21C930630())
    {
LABEL_7:
      v52 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v51 = sub_21CB86344();

    if ((v51 & 1) != 0 && sub_21C930630())
    {
      goto LABEL_7;
    }
  }

  sub_21C924A48(v50);
  v52 = 0;
LABEL_10:
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1858, &qword_21CBB1FA8);
  v54 = 1;
  (*(*(v53 - 8) + 56))(v50, v52, 1, v53);
  sub_21CB5FB90(v92);
  sub_21CB6015C(v33);
  sub_21CB60734(v93);
  sub_21CB60D0C(v21);
  sub_21C92D9F4(v91);
  v55 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v57 = v95;
  v56 = v96;

  v58 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v58 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (v58)
  {
    v59 = sub_21CB85214();
    v60 = v79;
    *v79 = v59;
    *(v60 + 8) = v61;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AA8, &qword_21CBB23B0);
    sub_21C937180(a1, v60 + *(v62 + 44));
    v63 = sub_21CB832C4();
    v64 = v81;
    v65 = (v60 + *(v81 + 9));
    *v65 = v63;
    v65[1] = sub_21C7902AC;
    v65[2] = 0;
    sub_21C78E4F4(v60, v85);
    v54 = 0;
  }

  else
  {
    v64 = v81;
  }

  v66 = v85;
  (*(v80 + 7))(v85, v54, 1, v64);
  v67 = v87;
  sub_21C6EDBAC(v50, v87, &qword_27CDF1CA0, &unk_21CBB2700);
  v68 = v88;
  sub_21C6EDBAC(v92, v88, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EDBAC(v33, v94, &qword_27CDF1B88, &qword_21CBB2558);
  v81 = v33;
  v69 = v89;
  sub_21C6EDBAC(v93, v89, &qword_27CDF1B88, &qword_21CBB2558);
  v70 = v21;
  v71 = v66;
  v80 = v21;
  v72 = v90;
  sub_21C6EDBAC(v70, v90, &qword_27CDF1B80, &qword_21CBB2550);
  v73 = v82;
  sub_21C6EDBAC(v91, v82, &qword_27CDF1A88, &qword_21CBB2398);
  v74 = v83;
  sub_21C6EDBAC(v71, v83, &qword_27CDF1A80, &qword_21CBB2390);
  v75 = v67;
  v76 = v84;
  sub_21C6EDBAC(v75, v84, &qword_27CDF1CA0, &unk_21CBB2700);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA658, &unk_21CBCEB90);
  sub_21C6EDBAC(v68, v76 + v77[12], &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EDBAC(v94, v76 + v77[16], &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EDBAC(v69, v76 + v77[20], &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EDBAC(v72, v76 + v77[24], &qword_27CDF1B80, &qword_21CBB2550);
  sub_21C6EDBAC(v73, v76 + v77[28], &qword_27CDF1A88, &qword_21CBB2398);
  sub_21C6EDBAC(v74, v76 + v77[32], &qword_27CDF1A80, &qword_21CBB2390);
  sub_21C6EA794(v71, &qword_27CDF1A80, &qword_21CBB2390);
  sub_21C6EA794(v91, &qword_27CDF1A88, &qword_21CBB2398);
  sub_21C6EA794(v80, &qword_27CDF1B80, &qword_21CBB2550);
  sub_21C6EA794(v93, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EA794(v81, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EA794(v92, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EA794(v86, &qword_27CDF1CA0, &unk_21CBB2700);
  sub_21C6EA794(v74, &qword_27CDF1A80, &qword_21CBB2390);
  sub_21C6EA794(v73, &qword_27CDF1A88, &qword_21CBB2398);
  sub_21C6EA794(v90, &qword_27CDF1B80, &qword_21CBB2550);
  sub_21C6EA794(v89, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EA794(v94, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EA794(v88, &qword_27CDF1B88, &qword_21CBB2558);
  return sub_21C6EA794(v87, &qword_27CDF1CA0, &unk_21CBB2700);
}

void sub_21CB6212C(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_21CB85584();
  [a1 setText_];
}

id sub_21CB62198(uint64_t a1, int a2, id a3)
{
  result = [a3 systemLayoutSizeFittingSize_];
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_21CB621E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB622D4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_21CB62248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB622D4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_21CB622AC()
{
  sub_21CB622D4();
  sub_21CB83454();
  __break(1u);
}

unint64_t sub_21CB622D4()
{
  result = qword_27CDFA660;
  if (!qword_27CDFA660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA660);
  }

  return result;
}

id sub_21CB62328()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
  [v0 setScrollEnabled_];
  v1 = [v0 textContainer];
  [v1 setLineFragmentPadding_];

  [v0 setTextContainerInset_];
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 clearColor];
  [v3 setBackgroundColor_];

  [v3 setEditable_];
  v5 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  LODWORD(v6) = 1132068864;
  [v3 setContentCompressionResistancePriority:0 forAxis:v6];
  v7 = [v2 secondaryLabelColor];
  [v3 setTextColor_];

  return v3;
}

unint64_t sub_21CB624DC()
{
  result = qword_27CDFA668;
  if (!qword_27CDFA668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA668);
  }

  return result;
}

uint64_t sub_21CB6253C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_21CB62578()
{
  result = qword_27CDFA670;
  if (!qword_27CDFA670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA670);
  }

  return result;
}

unint64_t sub_21CB625DC()
{
  result = qword_27CDFA678;
  if (!qword_27CDFA678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA678);
  }

  return result;
}

uint64_t PMWiFiNetworksStore.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  PMWiFiNetworksStore.init()();
  return v3;
}

uint64_t sub_21CB62678()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CB626EC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE660, &unk_21CBC3820);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE668, &qword_21CBAA0F0);
  sub_21CB81D94();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_21CB6288C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();
}

uint64_t sub_21CB62908(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_21C6EF0A0(a1, &v13 - v9);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6EF0A0(v10, v7);

  sub_21CB81DC4();
  return sub_21C6EA794(v10, &qword_27CDEE678, &unk_21CBBA210);
}

uint64_t sub_21CB62A28()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();
}

uint64_t sub_21CB62AA0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA6D8, &qword_21CBCF040);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA690, &qword_21CBCEF38);
  sub_21CB81D94();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_21CB62C40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21CB62CC0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21CB62D34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CB62DA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_21CB81D84();
  return swift_endAccess();
}

uint64_t sub_21CB62E24(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  sub_21CB81D94();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_21CB62FC4(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_21CB81D84();
  return swift_endAccess();
}

uint64_t PMWiFiNetworksStore.deinit()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface;
  [*(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface) invalidate];
  v2 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__savedNetworks;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE668, &qword_21CBAA0F0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__activeWiFiNetwork;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA690, &qword_21CBCEF38);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__loadedNetworks;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__showDemoWiFiNetworks);

  return v0;
}

uint64_t PMWiFiNetworksStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface;
  [*(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface) invalidate];
  v2 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__savedNetworks;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE668, &qword_21CBAA0F0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__activeWiFiNetwork;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA690, &qword_21CBCEF38);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__loadedNetworks;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__showDemoWiFiNetworks);

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21CB632F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_21CB858E4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_21C98B608(0, 0, v3, &unk_21CBCF030, v6);
}

uint64_t sub_21CB63440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_21CB63460, 0, 0);
}

uint64_t sub_21CB63460()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_21C6EF374();
  }

  **(v0 + 40) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CB634FC(uint64_t a1)
{
  v3 = type metadata accessor for PMWiFiNetwork();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v20 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__showDemoWiFiNetworks);

  sub_21CB81E94();

  if ((v21[0] & 1) == 0)
  {
    result = [objc_opt_self() isRunningInStoreDemoMode];
    if ((result & 1) == 0 && (*(a1 + *(v3 + 36)) & 1) == 0)
    {
      v20[1] = v20;
      MEMORY[0x28223BE20](result);
      v20[-2] = a1;
      swift_getKeyPath();
      swift_getKeyPath();
      v20[2] = v1;
      v12 = sub_21CB81DA4();
      v14 = v13;
      result = sub_21CB64C74(sub_21CB64B48, &v20[-4], type metadata accessor for PMWiFiNetwork, sub_21C862E7C, type metadata accessor for PMWiFiNetwork, sub_21CAA1140);
      v15 = *(*v14 + 16);
      if (v15 < result)
      {
        __break(1u);
      }

      else
      {
        sub_21CB655D8(result, v15, sub_21C6F0E94, sub_21CAA3F24);
        v12(v21, 0);

        v16 = sub_21CB858E4();
        (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
        v17 = swift_allocObject();
        swift_weakInit();
        sub_21C73A880(a1, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMWiFiNetwork);
        v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v19 = swift_allocObject();
        *(v19 + 16) = 0;
        *(v19 + 24) = 0;
        sub_21C6F0E30(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
        *(v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
        sub_21C9E6C0C(0, 0, v9, &unk_21CBCEFA0, v19);

        return sub_21C6EA794(v9, &qword_27CDF1D50, &qword_21CBA0C00);
      }
    }
  }

  return result;
}

uint64_t sub_21CB638AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x277D85DE8];
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21CB6393C, 0, 0);
}

uint64_t sub_21CB6393C()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 72);
  v2 = *(v1 + *(type metadata accessor for PMWiFiNetwork() + 56));
  *(v0 + 88) = v2;
  if (v2)
  {
    v3 = *(v0 + 80);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 96) = Strong;
    if (Strong)
    {
      *(v0 + 104) = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface;
      sub_21CB858B4();
      v5 = v2;
      *(v0 + 112) = sub_21CB858A4();
      v6 = sub_21CB85874();
      v8 = sub_21CB63B20;
LABEL_6:
      v12 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2822009F8](v8, v6, v7);
    }

    v9 = *(v0 + 80);
    v10 = v2;
    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    *(v0 + 128) = v11;
    if (v11)
    {
      *(v0 + 136) = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface;
      sub_21CB858B4();
      *(v0 + 144) = sub_21CB858A4();
      v6 = sub_21CB85874();
      v8 = sub_21CB63D8C;
      goto LABEL_6;
    }
  }

  v13 = *(v0 + 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

uint64_t sub_21CB63B20()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  v4 = *(v3 + v2);
  v0[15] = v4;
  v5 = v4;

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21CB63BD4, 0, 0);
}

uint64_t sub_21CB63BD4()
{
  v15 = *MEMORY[0x277D85DE8];
  *(v0 + 40) = 0;
  v1 = *(v0 + 120);
  v2 = [v1 setPassword:0 knownNetworkProfile:*(v0 + 88) error:v0 + 40];

  v3 = *(v0 + 40);
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v5 = v3;
    v6 = sub_21CB80B14();

    swift_willThrow();
  }

  v7 = *(v0 + 80);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    *(v0 + 136) = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface;
    sub_21CB858B4();
    *(v0 + 144) = sub_21CB858A4();
    v9 = sub_21CB85874();
    v11 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_21CB63D8C, v9, v10);
  }

  else
  {

    v12 = *(v0 + 8);
    v13 = *MEMORY[0x277D85DE8];

    return v12();
  }
}

uint64_t sub_21CB63D8C()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  v4 = *(v3 + v2);
  v0[19] = v4;
  v5 = v4;

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21CB63E40, 0, 0);
}

uint64_t sub_21CB63E40()
{
  v11 = *MEMORY[0x277D85DE8];
  v0[8] = 0;
  v1 = v0[19];
  v2 = [v1 removeKnownNetworkProfile:v0[11] reason:2 error:v0 + 8];

  v3 = v0[8];
  v4 = v0[11];
  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v6 = v3;
    v7 = sub_21CB80B14();

    swift_willThrow();
  }

  v8 = v0[1];
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_21CB63F48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v52 = v43 - v7;
  v54 = type metadata accessor for PMWiFiNetwork();
  v8 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v46 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v43 - v13;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v49 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__showDemoWiFiNetworks;
  v18 = (v15 + 63) >> 6;
  v47 = v12;
  v51 = (v12 + 48);
  v45 = v11 + 7;
  v55 = a1;

  v20 = 0;
  for (i = v14; v17; result = sub_21CB656B0(v30, type metadata accessor for PMWiFiNetwork))
  {
LABEL_10:
    while (1)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = (*(v55 + 48) + ((v20 << 10) | (16 * v22)));
      v25 = *v23;
      v24 = v23[1];
      swift_getKeyPath();
      swift_getKeyPath();

      v26 = v53;
      sub_21CB81DB4();

      v28 = v56[0];
      v56[0] = v25;
      v56[1] = v24;
      MEMORY[0x28223BE20](v27);
      v43[-2] = v56;
      v29 = v52;
      sub_21C9693F8(sub_21C7AE738, v28, v52);

      if ((*v51)(v29, 1, v54) != 1)
      {
        break;
      }

      result = sub_21C6EA794(v29, &qword_27CDEE678, &unk_21CBBA210);
      if (!v17)
      {
        goto LABEL_6;
      }
    }

    v30 = i;
    sub_21C6F0E30(v29, i);
    v31 = *(v26 + v49);

    sub_21CB81E94();

    if ((v56[0] & 1) == 0)
    {
      v32 = [objc_opt_self() isRunningInStoreDemoMode];
      if (!v32 && (*(v30 + *(v54 + 36)) & 1) == 0)
      {
        v43[1] = v43;
        MEMORY[0x28223BE20](v32);
        v44 = &v43[-4];
        v43[-2] = v30;
        swift_getKeyPath();
        swift_getKeyPath();
        v43[0] = sub_21CB81DA4();
        v34 = v33;
        result = sub_21CB64C74(sub_21CB65778, v44, type metadata accessor for PMWiFiNetwork, sub_21C862E7C, type metadata accessor for PMWiFiNetwork, sub_21CAA1140);
        v35 = *(*v34 + 16);
        if (v35 < result)
        {
          goto LABEL_20;
        }

        sub_21CB655D8(result, v35, sub_21C6F0E94, sub_21CAA3F24);
        (v43[0])(v56, 0);

        v36 = sub_21CB858E4();
        (*(*(v36 - 8) + 56))(v48, 1, 1, v36);
        v37 = swift_allocObject();
        swift_weakInit();
        v38 = v46;
        sub_21C73A880(v30, v46, type metadata accessor for PMWiFiNetwork);
        v39 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v40 = (v45 + v39) & 0xFFFFFFFFFFFFFFF8;
        v41 = swift_allocObject();
        *(v41 + 16) = 0;
        *(v41 + 24) = 0;
        sub_21C6F0E30(v38, v41 + v39);
        *(v41 + v40) = v37;
        v42 = v48;
        sub_21C9E6C0C(0, 0, v48, &unk_21CBCEFA8, v41);

        sub_21C6EA794(v42, &qword_27CDF1D50, &qword_21CBA0C00);
        v30 = i;
      }
    }
  }

LABEL_6:
  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
    }

    v17 = *(a1 + 56 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21CB64580()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v34 = &v31 - v4;
  v5 = type metadata accessor for PMWiFiNetwork();
  v32 = *(v5 - 1);
  v33 = v32;
  v6 = *(v32 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - v14;
  v16 = *(v13 + 28);
  sub_21CB80DA4();
  v17 = sub_21CB80DD4();
  v18 = *(*(v17 - 8) + 56);
  v18(&v15[v16], 0, 1, v17);
  v19 = v5[8];
  sub_21CB80DA4();
  v18(&v15[v19], 0, 1, v17);
  *v15 = 0x46695720656D6F48;
  *(v15 + 1) = 0xE900000000000069;
  *(v15 + 2) = 0x46695720656D6F48;
  *(v15 + 3) = 0xE900000000000069;
  *(v15 + 4) = 0xD000000000000014;
  *(v15 + 5) = 0x800000021CB9D100;
  v15[v5[9]] = 0;
  v15[v5[10]] = 0;
  *&v15[v5[11]] = 0;
  *&v15[v5[12]] = 16;
  v15[v5[13]] = 0;
  *&v15[v5[14]] = 0;
  v20 = v5[7];
  sub_21CB80DA4();
  v18(&v12[v20], 0, 1, v17);
  v21 = v5[8];
  sub_21CB80DA4();
  v18(&v12[v21], 0, 1, v17);
  *v12 = 0x695720A9C3666143;
  *(v12 + 1) = 0xAA00000000006946;
  *(v12 + 2) = 0x695720A9C3666143;
  *(v12 + 3) = 0xAA00000000006946;
  *(v12 + 4) = 0xD000000000000014;
  *(v12 + 5) = 0x800000021CB9D120;
  v12[v5[9]] = 0;
  v12[v5[10]] = 0;
  *&v12[v5[11]] = 0;
  *&v12[v5[12]] = 16;
  v12[v5[13]] = 0;
  *&v12[v5[14]] = 0;
  v22 = v5[7];
  sub_21CB80DA4();
  v18(&v9[v22], 0, 1, v17);
  v23 = v5[8];
  sub_21CB80DA4();
  v18(&v9[v23], 0, 1, v17);
  *v9 = 0x466957206B726F57;
  *(v9 + 1) = 0xE900000000000069;
  *(v9 + 2) = 0x466957206B726F57;
  *(v9 + 3) = 0xE900000000000069;
  *(v9 + 4) = 0xD000000000000014;
  *(v9 + 5) = 0x800000021CB9D140;
  v9[v5[9]] = 0;
  v9[v5[10]] = 0;
  *&v9[v5[11]] = 0;
  *&v9[v5[12]] = 16;
  v9[v5[13]] = 0;
  *&v9[v5[14]] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB008, &qword_21CBC0C30);
  v24 = v33;
  v25 = *(v32 + 72);
  v26 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_21CBA15A0;
  v28 = v27 + v26;
  sub_21C73A880(v15, v28, type metadata accessor for PMWiFiNetwork);
  sub_21C73A880(v12, v28 + v25, type metadata accessor for PMWiFiNetwork);
  sub_21C73A880(v9, v28 + 2 * v25, type metadata accessor for PMWiFiNetwork);
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v27;

  sub_21CB81DC4();
  v29 = v34;
  sub_21C73A880(v15, v34, type metadata accessor for PMWiFiNetwork);
  (*(v24 + 56))(v29, 0, 1, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6EF0A0(v29, v35);

  sub_21CB81DC4();
  sub_21C6EA794(v29, &qword_27CDEE678, &unk_21CBBA210);
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = 1;

  sub_21CB81DC4();
  sub_21CB656B0(v9, type metadata accessor for PMWiFiNetwork);
  sub_21CB656B0(v12, type metadata accessor for PMWiFiNetwork);
  return sub_21CB656B0(v15, type metadata accessor for PMWiFiNetwork);
}

uint64_t sub_21CB64B7C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_21CB85FA4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_21CB860E4();
  *v1 = result;
  return result;
}

uint64_t sub_21CB64C74(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t (*)(uint64_t), uint64_t, uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t))
{
  v49 = a6;
  v58 = a5;
  v11 = a3(0);
  v56 = *(v11 - 8);
  v12 = *(v56 + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v46 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  v21 = *v6;
  result = a4(a1, a2, *v6);
  if (!v7)
  {
    v55 = v20;
    v50 = v18;
    v48 = v15;
    if (v23)
    {
      return *(v21 + 16);
    }

    v51 = a1;
    v52 = a2;
    v47 = v6;
    v57 = result;
    v24 = result + 1;
    if (__OFADD__(result, 1))
    {
LABEL_27:
      __break(1u);
      return result;
    }

    for (i = v21; ; v21 = i)
    {
      v28 = *(v21 + 16);
      v27 = (v21 + 16);
      v26 = v28;
      if (v24 == v28)
      {
        break;
      }

      if (v24 >= v26)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v29 = i;
      v53 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v30 = i + v53;
      v31 = *(v56 + 72);
      v54 = v31 * v24;
      v32 = i + v53 + v31 * v24;
      v33 = v55;
      v34 = v58;
      sub_21C73A880(v32, v55, v58);
      v35 = v51(v33);
      result = sub_21CB656B0(v33, v34);
      if (v35)
      {
        i = v29;
      }

      else
      {
        v36 = v57;
        i = v29;
        if (v24 != v57)
        {
          if ((v57 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          v37 = *v27;
          if (v57 >= v37)
          {
            goto LABEL_24;
          }

          v38 = v31 * v57;
          v39 = v30 + v31 * v57;
          v40 = v58;
          result = sub_21C73A880(v39, v50, v58);
          if (v24 >= v37)
          {
            goto LABEL_25;
          }

          v41 = v54;
          v42 = v48;
          sub_21C73A880(v30 + v54, v48, v40);
          v43 = v40;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            i = v49(i);
          }

          v44 = v50;
          v45 = i + v53;
          result = sub_21CB65710(v42, i + v53 + v38, v43);
          if (v24 >= *(i + 16))
          {
            goto LABEL_26;
          }

          result = sub_21CB65710(v44, v45 + v41, v43);
          *v47 = i;
          v36 = v57;
        }

        v57 = v36 + 1;
      }

      ++v24;
    }

    return v57;
  }

  return result;
}

uint64_t sub_21CB64F74(uint64_t a1)
{
  v4 = *(type metadata accessor for PMWiFiNetwork() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21CB638AC(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_21Tm()
{
  v1 = type metadata accessor for PMWiFiNetwork();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v17 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = v1[7];
  v10 = sub_21CB80DD4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v13 = v1[8];
  if (!v12(v5 + v13, 1, v10))
  {
    (*(v11 + 8))(v5 + v13, v10);
  }

  v14 = (v17 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v15 = *(v0 + v14);

  return MEMORY[0x2821FE8E8](v0, v14 + 8, v2 | 7);
}

uint64_t sub_21CB6538C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C6F35D0;

  return sub_21CB63440(a1, v4, v5, v6);
}

uint64_t sub_21CB6546C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a2;
    v8 = a1;
    v9 = *v6;
    v10 = *v6 >> 62;
    if (!v10)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  v20 = a4;
  v21 = a3;
  v22 = a6;
  v23 = a5;
  result = sub_21CB85FA4();
  a5 = v23;
  a6 = v22;
  a3 = v21;
  a4 = v20;
  if (result < v7)
  {
    goto LABEL_16;
  }

LABEL_4:
  v12 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v24 = a6;
  v14 = v13 - v12;
  if (__OFSUB__(v13, v12))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v15 = a5;
  v16 = a3;
  v17 = a4;
  if (v10)
  {
    v18 = sub_21CB85FA4();
  }

  else
  {
    v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = __OFADD__(v18, v14);
  result = v18 + v14;
  if (v19)
  {
    goto LABEL_20;
  }

  sub_21CB64B7C(result);

  return sub_21CAA4014(v8, v7, v13, v16, v17, v15, v24);
}

uint64_t sub_21CB655D8(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_21CB656B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CB65710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

Swift::String __swiftcall PMWiFiNetwork.userVisibleType(isActive:)(Swift::Bool isActive)
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMWiFiNetwork();
  if (*(v1 + *(v8 + 36)) == 1 || *(v1 + *(v8 + 52)) == 1)
  {
    sub_21CB81014();
    v9 = sub_21CB81004();
    v11 = v10;
    (*(v4 + 8))(v7, v3);
LABEL_6:
    v17 = v9;
    v18 = v11;
    goto LABEL_10;
  }

  if (isActive)
  {
    sub_21CB81014();
    sub_21CB81004();
    (*(v4 + 8))(v7, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_21CBA0690;
    v13 = PMWiFiNetwork.localizedSecurityType.getter();
    v15 = v14;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_21C7C0050();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    v9 = sub_21CB85594();
    v11 = v16;

    goto LABEL_6;
  }

  v17 = PMWiFiNetwork.localizedSecurityType.getter();
LABEL_10:
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

uint64_t PMWiFiNetwork.qrCodeURI.getter()
{
  v1 = type metadata accessor for PMWiFiNetwork();
  result = 0;
  if ((*(v0 + *(v1 + 36)) & 1) == 0)
  {
    return sub_21C807A74(v0);
  }

  return result;
}

uint64_t PMWiFiNetworkIdentifier.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static PMWiFiNetworkIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CB86344();
  }
}

uint64_t sub_21CB65B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CB86344();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CB65BA0(uint64_t a1)
{
  v2 = sub_21CB6723C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CB65BDC(uint64_t a1)
{
  v2 = sub_21CB6723C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PMWiFiNetworkIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA6E0, &qword_21CBCF048);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CB6723C();
  sub_21CB864F4();
  sub_21CB862B4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t PMWiFiNetworkIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_21CB854C4();
}

uint64_t PMWiFiNetworkIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CB86484();
  sub_21CB854C4();
  return sub_21CB864D4();
}

uint64_t PMWiFiNetworkIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA6F0, &unk_21CBCF050);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CB6723C();
  sub_21CB864E4();
  if (!v2)
  {
    v11 = sub_21CB86274();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CB65F34(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA6E0, &qword_21CBCF048);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CB6723C();
  sub_21CB864F4();
  sub_21CB862B4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t PMWiFiNetwork.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t PMWiFiNetwork.ssid.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PMWiFiNetwork.password.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PMWiFiNetwork.addedAtDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PMWiFiNetwork() + 28);

  return sub_21CAA444C(v3, a1);
}

uint64_t PMWiFiNetwork.lastJoinedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PMWiFiNetwork() + 32);

  return sub_21CAA444C(v3, a1);
}

uint64_t PMWiFiNetwork.localizedSecurityType.getter()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for PMWiFiNetwork() + 48));
  sub_21CB81014();
  v7 = sub_21CB81004();
  (*(v2 + 8))(v5, v1);
  return v7;
}

void PMWiFiNetwork.hash(into:)()
{
  v1 = sub_21CB80DD4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = *v0;
  v13 = v0[1];
  sub_21CB854C4();
  v14 = v0[2];
  v15 = v0[3];
  sub_21CB854C4();
  if (v0[5])
  {
    v16 = v0[4];
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v17 = type metadata accessor for PMWiFiNetwork();
  sub_21CAA444C(v0 + v17[7], v11);
  v18 = *(v2 + 48);
  if (v18(v11, 1, v1) == 1)
  {
    v19 = v2;
    sub_21CB864A4();
  }

  else
  {
    v20 = *(v2 + 32);
    v29 = v8;
    v21 = v30;
    v20(v30, v11, v1);
    sub_21CB864A4();
    sub_21CB674EC(&qword_27CDEC280, MEMORY[0x277CC9578]);
    sub_21CB85494();
    v19 = v2;
    v22 = v21;
    v8 = v29;
    (*(v2 + 8))(v22, v1);
  }

  sub_21CAA444C(v0 + v17[8], v8);
  if (v18(v8, 1, v1) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    v23 = v30;
    (*(v19 + 32))(v30, v8, v1);
    sub_21CB864A4();
    sub_21CB674EC(&qword_27CDEC280, MEMORY[0x277CC9578]);
    sub_21CB85494();
    (*(v19 + 8))(v23, v1);
  }

  v24 = *(v0 + v17[9]);
  sub_21CB864A4();
  v25 = *(v0 + v17[10]);
  sub_21CB864A4();
  MEMORY[0x21CF15F90](*(v0 + v17[11]));
  MEMORY[0x21CF15F90](*(v0 + v17[12]));
  v26 = *(v0 + v17[13]);
  sub_21CB864A4();
  v27 = *(v0 + v17[14]);
  sub_21CB864A4();
  if (v27)
  {
    v28 = v27;
    sub_21CB85DE4();
  }
}

uint64_t PMWiFiNetwork.hashValue.getter()
{
  sub_21CB86484();
  PMWiFiNetwork.hash(into:)();
  return sub_21CB864D4();
}

uint64_t sub_21CB6689C()
{
  sub_21CB86484();
  PMWiFiNetwork.hash(into:)();
  return sub_21CB864D4();
}

uint64_t sub_21CB668E0()
{
  sub_21CB86484();
  PMWiFiNetwork.hash(into:)();
  return sub_21CB864D4();
}

uint64_t sub_21CB6691C()
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

char *sub_21CB66AE8(char *result)
{
  v2 = *result;
  if (*result)
  {
    v3 = v1[5];
    if (!v3)
    {
      return result;
    }

    v4 = v1[4];
  }

  else
  {
    v4 = v1[2];
    v3 = v1[3];
  }

  if (qword_27CDEA480 != -1)
  {
    swift_once();
  }

  v5 = *(qword_27CE18710 + 16);
  sub_21CADAA84(v4, v3, v2);
}

uint64_t _s17PasswordManagerUI13PMWiFiNetworkV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_21CB80DD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v47[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3E0, &unk_21CBA1A70);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v47[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v47[-v21];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21CB86344() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  v23 = a1[5];
  v24 = a2[5];
  if (v23)
  {
    if (!v24 || (a1[4] != a2[4] || v23 != v24) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v51 = v13;
  v52 = v8;
  v53 = type metadata accessor for PMWiFiNetwork();
  v25 = *(v53 + 28);
  v26 = *(v16 + 48);
  sub_21CAA444C(a1 + v25, v22);
  sub_21CAA444C(a2 + v25, &v22[v26]);
  v54 = v5;
  v27 = *(v5 + 48);
  if (v27(v22, 1, v4) == 1)
  {
    if (v27(&v22[v26], 1, v4) == 1)
    {
      sub_21C6EA794(v22, &unk_27CDED250, &qword_21CBA64C0);
      goto LABEL_21;
    }

LABEL_19:
    v28 = v22;
LABEL_27:
    sub_21C6EA794(v28, &qword_27CDEB3E0, &unk_21CBA1A70);
    return 0;
  }

  sub_21CAA444C(v22, v15);
  if (v27(&v22[v26], 1, v4) == 1)
  {
    (*(v54 + 8))(v15, v4);
    goto LABEL_19;
  }

  v29 = *(v54 + 32);
  v49 = v27;
  v30 = v52;
  v29(v52, &v22[v26], v4);
  sub_21CB674EC(&qword_27CDEB3E8, MEMORY[0x277CC9578]);
  v48 = sub_21CB85574();
  v50 = *(v54 + 8);
  v31 = v30;
  v27 = v49;
  v50(v31, v4);
  v50(v15, v4);
  sub_21C6EA794(v22, &unk_27CDED250, &qword_21CBA64C0);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v32 = v53;
  v33 = *(v53 + 32);
  v34 = *(v16 + 48);
  sub_21CAA444C(a1 + v33, v20);
  sub_21CAA444C(a2 + v33, &v20[v34]);
  if (v27(v20, 1, v4) != 1)
  {
    v35 = v51;
    sub_21CAA444C(v20, v51);
    if (v27(&v20[v34], 1, v4) != 1)
    {
      v37 = v54;
      v38 = v52;
      (*(v54 + 32))(v52, &v20[v34], v4);
      sub_21CB674EC(&qword_27CDEB3E8, MEMORY[0x277CC9578]);
      v39 = sub_21CB85574();
      v40 = *(v37 + 8);
      v40(v38, v4);
      v40(v35, v4);
      sub_21C6EA794(v20, &unk_27CDED250, &qword_21CBA64C0);
      if ((v39 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_31;
    }

    (*(v54 + 8))(v35, v4);
    goto LABEL_26;
  }

  if (v27(&v20[v34], 1, v4) != 1)
  {
LABEL_26:
    v28 = v20;
    goto LABEL_27;
  }

  sub_21C6EA794(v20, &unk_27CDED250, &qword_21CBA64C0);
LABEL_31:
  if (*(a1 + v32[9]) == *(a2 + v32[9]) && *(a1 + v32[10]) == *(a2 + v32[10]) && *(a1 + v32[11]) == *(a2 + v32[11]) && *(a1 + v32[12]) == *(a2 + v32[12]) && *(a1 + v32[13]) == *(a2 + v32[13]))
  {
    v41 = v32[14];
    v42 = *(a1 + v41);
    v43 = *(a2 + v41);
    if (v42)
    {
      if (v43)
      {
        sub_21C6EE9BC();
        v44 = v43;
        v45 = v42;
        v46 = sub_21CB85DD4();

        if (v46)
        {
          return 1;
        }
      }
    }

    else if (!v43)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_21CB6723C()
{
  result = qword_27CDFA6E8;
  if (!qword_27CDFA6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA6E8);
  }

  return result;
}

unint64_t sub_21CB672E0()
{
  result = qword_27CDFA708;
  if (!qword_27CDFA708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA708);
  }

  return result;
}

unint64_t sub_21CB67338()
{
  result = qword_27CDFA710;
  if (!qword_27CDFA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA710);
  }

  return result;
}

unint64_t sub_21CB673E8()
{
  result = qword_27CDFA730;
  if (!qword_27CDFA730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA730);
  }

  return result;
}

unint64_t sub_21CB67440()
{
  result = qword_27CDFA738;
  if (!qword_27CDFA738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA738);
  }

  return result;
}

unint64_t sub_21CB67498()
{
  result = qword_27CDFA740;
  if (!qword_27CDFA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA740);
  }

  return result;
}

uint64_t sub_21CB674EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PMVerificationCodeRow()
{
  result = qword_27CDFA748;
  if (!qword_27CDFA748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CB675A8()
{
  type metadata accessor for PMAccount(319);
  if (v0 <= 0x3F)
  {
    sub_21C7226D8();
    if (v1 <= 0x3F)
    {
      sub_21C7086F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21CB67668@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = type metadata accessor for PMVerificationCodeRow();
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA758, &qword_21CBCF480);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA760, &qword_21CBCF488);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA768, &qword_21CBCF490);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA770, &qword_21CBCF498);
  v50 = *(v49 - 8);
  v18 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  v20 = &v46 - v19;
  *v8 = sub_21CB83074();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA778, &qword_21CBCF4A0);
  sub_21CB67C0C(v2, &v8[*(v21 + 44)]);
  [objc_opt_self() isPasswordsAppInstalled];
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21C716934(v8, v13, &qword_27CDFA758, &qword_21CBCF480);
  v22 = &v13[*(v10 + 44)];
  v23 = v62;
  *(v22 + 4) = v61;
  *(v22 + 5) = v23;
  *(v22 + 6) = v63;
  v24 = v58;
  *v22 = v57;
  *(v22 + 1) = v24;
  v25 = v60;
  *(v22 + 2) = v59;
  *(v22 + 3) = v25;
  v26 = sub_21CB83D34();
  sub_21CB81F24();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_21C716934(v13, v17, &qword_27CDFA760, &qword_21CBCF488);
  v35 = &v17[*(v14 + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = v2;
  v37 = v2;
  v38 = v47;
  sub_21CB69E68(v37, v47, type metadata accessor for PMVerificationCodeRow);
  v39 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v40 = swift_allocObject();
  sub_21CB69DB8(v38, v40 + v39, type metadata accessor for PMVerificationCodeRow);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v42 = sub_21CB69BFC();
  v43 = sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
  sub_21CB848F4();

  sub_21C6EA794(v17, &qword_27CDFA768, &qword_21CBCF490);
  v52 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA798, &unk_21CBCF4A8);
  v53 = v14;
  v54 = v41;
  v55 = v42;
  v56 = v43;
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDFA7A0, &qword_27CDFA798, &unk_21CBCF4A8);
  v44 = v49;
  sub_21CB84154();
  return (*(v50 + 8))(v20, v44);
}

uint64_t sub_21CB67C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = type metadata accessor for PMVerificationCodeRow();
  v4 = v3 - 8;
  v69 = *(v3 - 8);
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v3);
  v70 = v6;
  v71 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB81024();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  MEMORY[0x28223BE20](v7);
  v66 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA7B0, &qword_21CBCF4C0);
  v74 = *(v13 - 8);
  v75 = v13;
  v14 = *(v74 + 64);
  MEMORY[0x28223BE20](v13);
  v72 = &v66 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA7B8, &qword_21CBCF4C8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v77 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v66 - v20;
  v22 = type metadata accessor for PMAccountRow();
  v23 = *(*(v22 - 1) + 64);
  MEMORY[0x28223BE20](v22);
  v76 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v66 - v26;
  sub_21CB69E68(a1, &v66 - v26, type metadata accessor for PMAccount);
  v28 = (a1 + *(v4 + 28));
  v29 = v28[1];
  v73 = *v28;

  v30 = sub_21CB837E4();
  v31 = MEMORY[0x277CE04E8];
  v32 = &v27[v22[7]];
  *(v32 + 3) = MEMORY[0x277CE04F8];
  *(v32 + 4) = v31;
  *v32 = v30;
  v33 = &v27[v22[9]];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v81);

  type metadata accessor for PMGroupsStore();
  sub_21CB69E20(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v35 = sub_21CB82674();
  v37 = v36;

  *v33 = v35;
  v33[1] = v37;
  v38 = &v27[v22[10]];
  *v38 = swift_getKeyPath();
  v38[8] = 0;
  v39 = &v27[v22[11]];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  v40 = v22[12];
  *&v27[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v41 = v22[13];
  *&v27[v41] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v42 = v22[14];
  *&v27[v42] = swift_getKeyPath();
  v43 = &v27[v22[5]];
  *v43 = 0;
  *(v43 + 1) = 0;
  v44 = &v27[v22[6]];
  *v44 = 0;
  *(v44 + 1) = 0;
  v45 = &v27[v22[8]];
  *v45 = v73;
  *(v45 + 1) = v29;
  sub_21CB683EC();
  if (v46)
  {
    v81 = v46;
    v82 = sub_21CB685FC;
    v83 = 0;
    v84 = 1;
    v47 = v46;
    sub_21CB81014();
    v48 = v66;
    sub_21CB81014();
    v49 = sub_21CB80FF4();
    v51 = v50;
    v52 = *(v67 + 8);
    v53 = v48;
    v54 = v68;
    v52(v53, v68);
    v52(v12, v54);
    v79 = v49;
    v80 = v51;
    v55 = v71;
    sub_21CB69E68(a1, v71, type metadata accessor for PMVerificationCodeRow);
    v56 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v57 = swift_allocObject();
    sub_21CB69DB8(v55, v57 + v56, type metadata accessor for PMVerificationCodeRow);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA7C8, &unk_21CBCF5E0);
    sub_21C6EADEC(&qword_27CDFA7D0, &qword_27CDFA7C8, &unk_21CBCF5E0);
    sub_21C71F3FC();
    v58 = v72;
    sub_21CB84474();

    sub_21C716934(v58, v21, &qword_27CDFA7B0, &qword_21CBCF4C0);
    v59 = 0;
  }

  else
  {
    v59 = 1;
  }

  (*(v74 + 56))(v21, v59, 1, v75);
  v60 = v76;
  sub_21CB69E68(v27, v76, type metadata accessor for PMAccountRow);
  v61 = v77;
  sub_21C78E8D0(v21, v77);
  v62 = v78;
  sub_21CB69E68(v60, v78, type metadata accessor for PMAccountRow);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA7C0, &qword_21CBCF5D8);
  v64 = v62 + *(v63 + 48);
  *v64 = 0;
  *(v64 + 8) = 1;
  sub_21C78E8D0(v61, v62 + *(v63 + 64));
  sub_21C6EA794(v21, &qword_27CDFA7B8, &qword_21CBCF4C8);
  sub_21CB69ED0(v27, type metadata accessor for PMAccountRow);
  sub_21C6EA794(v61, &qword_27CDFA7B8, &qword_21CBCF4C8);
  return sub_21CB69ED0(v60, type metadata accessor for PMAccountRow);
}

void sub_21CB683EC()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.Storage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount(0);
  sub_21CB69E68(v0 + *(v9 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CB69DB8(v8, v4, type metadata accessor for PMAccount.MockData);
    v10 = *&v4[*(v1 + 56)];
    sub_21CB69ED0(v4, type metadata accessor for PMAccount.MockData);
    return;
  }

  v11 = *v8;
  v12 = [*v8 totpGenerators];
  sub_21C7B1B18();
  v13 = sub_21CB85824();

  if (v13 >> 62)
  {
    if (!sub_21CB85FA4())
    {
      goto LABEL_9;
    }
  }

  else if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

    return;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CF15BD0](0, v13);
    goto LABEL_9;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v13 + 32);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_21CB685FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v48 - v5;
  v7 = sub_21CB83ED4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA7D8, &qword_21CBCF5F0);
  v12 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v14 = &v48 - v13;
  v50 = a1;
  v15 = *(a1 + 24);
  v52 = *(a1 + 32);
  v53 = v15;
  *&v57 = v15;
  *(&v57 + 1) = v52;
  v51 = sub_21C71F3FC();

  v16 = sub_21CB84054();
  v48 = v17;
  v49 = v16;
  v19 = v18;
  v21 = v20;
  (*(v8 + 104))(v11, *MEMORY[0x277CE0A68], v7);
  v22 = *MEMORY[0x277CE0980];
  v23 = sub_21CB83DC4();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v6, v22, v23);
  (*(v24 + 56))(v6, 0, 1, v23);
  sub_21CB83E04();
  sub_21CB83E24();
  sub_21C6EA794(v6, &qword_27CDEBB58, &qword_21CBAF8A0);
  (*(v8 + 8))(v11, v7);
  v25 = v49;
  v26 = sub_21CB84024();
  v28 = v27;
  LOBYTE(v11) = v29;

  sub_21C74A72C(v25, v19, v21 & 1);

  v57 = *(v50 + 8);
  v56 = *(v50 + 8);

  v30 = sub_21CB83FE4();
  v32 = v31;
  LOBYTE(v25) = v33;
  sub_21C74A72C(v26, v28, v11 & 1);

  sub_21C81A534(&v57);
  v34 = sub_21CB83FF4();
  v36 = v35;
  LOBYTE(v11) = v37;
  v39 = v38;
  sub_21C74A72C(v30, v32, v25 & 1);

  v40 = *MEMORY[0x277D49BF0];
  sub_21CB855C4();
  v41 = [objc_opt_self() pm_defaults];
  v42 = sub_21CB81E74();
  v43 = sub_21CB85254();
  LOBYTE(v32) = v11 & 1;
  LOBYTE(v56) = v11 & 1;
  v44 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA420, &unk_21CBCE420) + 36)];
  LODWORD(v25) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB920, &qword_21CBCC940) + 28);
  v45 = v52;

  sub_21CB82B04();
  *v44 = swift_getKeyPath();
  *v14 = v34;
  *(v14 + 1) = v36;
  v14[16] = v32;
  *(v14 + 3) = v39;
  *(v14 + 4) = v42;
  v14[40] = 1;
  v46 = v53;
  *(v14 + 6) = v43;
  *(v14 + 7) = v46;
  *(v14 + 8) = v45;
  *&v14[*(v54 + 36)] = sub_21CB837E4();
  sub_21CB69F8C();
  sub_21CB84984();
  return sub_21C6EA794(v14, &qword_27CDFA7D8, &qword_21CBCF5F0);
}

void sub_21CB68AB4()
{
  v1 = sub_21CB80DD4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccount.MockData(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMAccount.Storage(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for PMAccount(0);
  sub_21CB69E68(v0 + *(v14 + 24), v13, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CB69DB8(v13, v9, type metadata accessor for PMAccount.MockData);
    v15 = *&v9[*(v6 + 56)];
    v16 = v15;
    sub_21CB69ED0(v9, type metadata accessor for PMAccount.MockData);
    if (!v15)
    {
      return;
    }

    goto LABEL_10;
  }

  v17 = *v13;
  v18 = [*v13 totpGenerators];
  sub_21C7B1B18();
  v19 = sub_21CB85824();

  if (v19 >> 62)
  {
    if (sub_21CB85FA4())
    {
      goto LABEL_6;
    }

LABEL_14:

    return;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x21CF15BD0](0, v19);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v20 = *(v19 + 32);
  }

  v16 = v20;

LABEL_10:
  if (qword_27CDEA480 != -1)
  {
    swift_once();
  }

  v21 = qword_27CE18710;
  sub_21CB80DA4();
  v22 = sub_21CB80D24();
  (*(v2 + 8))(v5, v1);
  v23 = [v16 codeForDate_];

  v24 = sub_21CB855C4();
  v26 = v25;

  v27 = *(v21 + 16);
  sub_21CADAA84(v24, v26, 1);
}

uint64_t sub_21CB68E00(uint64_t a1)
{
  v2 = type metadata accessor for PMVerificationCodeRow();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21CB69E68(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMVerificationCodeRow);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_21CB69DB8(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PMVerificationCodeRow);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  return sub_21CB84DA4();
}

uint64_t sub_21CB68F94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  v77 = sub_21CB83834();
  v79 = *(v77 - 8);
  v3 = *(v79 + 64);
  MEMORY[0x28223BE20](v77);
  v68 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v78 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v75 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = &v66 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v66 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v85 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v84 = &v66 - v21;
  v22 = type metadata accessor for PMVerificationCodeRow();
  v23 = v22 - 8;
  v24 = *(v22 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v80 = *(v26 - 8);
  v81 = v26;
  v27 = *(v80 + 64);
  MEMORY[0x28223BE20](v26);
  v83 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v66 - v30;
  sub_21CB69E68(a1, &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMVerificationCodeRow);
  v32 = *(v24 + 80);
  v33 = (v32 + 16) & ~v32;
  v72 = v25;
  v70 = v32;
  v34 = swift_allocObject();
  v71 = v33;
  v35 = v34 + v33;
  v36 = v77;
  v73 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB69DB8(v73, v35, type metadata accessor for PMVerificationCodeRow);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v38 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  v82 = v31;
  v39 = v79;
  v69 = v37;
  v40 = v76;
  sub_21CB84DA4();
  v41 = *(v23 + 36);
  v42 = a1;
  v43 = v78;
  v74 = v42;
  sub_21C728D50(v16);
  (*(v39 + 104))(v40, *MEMORY[0x277CE0558], v36);
  (*(v39 + 56))(v40, 0, 1, v36);
  v44 = *(v6 + 56);
  sub_21C6EDBAC(v16, v43, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v40, v43 + v44, &qword_27CDEC390, &qword_21CBA40E0);
  v45 = *(v39 + 48);
  if (v45(v43, 1, v36) == 1)
  {
    v67 = v38;
    sub_21C6EA794(v40, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
    if (v45(v43 + v44, 1, v36) == 1)
    {
      sub_21C6EA794(v43, &qword_27CDEC390, &qword_21CBA40E0);
      v46 = v84;
      v47 = v80;
LABEL_8:
      v56 = v73;
      sub_21CB69E68(v74, v73, type metadata accessor for PMVerificationCodeRow);
      v57 = v71;
      v58 = swift_allocObject();
      sub_21CB69DB8(v56, v58 + v57, type metadata accessor for PMVerificationCodeRow);
      v50 = v83;
      sub_21CB84DA4();
      v51 = v81;
      (*(v47 + 32))(v46, v50, v81);
      v49 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v66 = v16;
    v48 = v75;
    sub_21C6EDBAC(v43, v75, &qword_27CDEC390, &qword_21CBA40E0);
    if (v45(v43 + v44, 1, v36) != 1)
    {
      v67 = v38;
      v52 = v43 + v44;
      v53 = v68;
      (*(v39 + 32))(v68, v52, v36);
      sub_21CB69E20(&qword_27CDEE538, MEMORY[0x277CE0570]);
      v54 = sub_21CB85574();
      v55 = *(v39 + 8);
      v55(v53, v36);
      sub_21C6EA794(v40, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v66, &qword_27CDEC390, &qword_21CBA40E0);
      v55(v48, v36);
      sub_21C6EA794(v43, &qword_27CDEC390, &qword_21CBA40E0);
      v46 = v84;
      v47 = v80;
      if ((v54 & 1) == 0)
      {
        v49 = 1;
        v50 = v83;
        v51 = v81;
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_21C6EA794(v40, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v66, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v39 + 8))(v48, v36);
  }

  sub_21C6EA794(v43, &qword_27CDEE530, &unk_21CBA9D80);
  v49 = 1;
  v50 = v83;
  v46 = v84;
  v47 = v80;
  v51 = v81;
LABEL_10:
  (*(v47 + 56))(v46, v49, 1, v51);
  v59 = *(v47 + 16);
  v60 = v82;
  v59(v50, v82, v51);
  v61 = v85;
  sub_21C6EDBAC(v46, v85, &qword_27CDEB8C0, &unk_21CBA26A0);
  v62 = v86;
  v59(v86, v50, v51);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA7A8, &qword_21CBCF4B8);
  sub_21C6EDBAC(v61, &v62[*(v63 + 48)], &qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21C6EA794(v46, &qword_27CDEB8C0, &unk_21CBA26A0);
  v64 = *(v47 + 8);
  v64(v60, v51);
  sub_21C6EA794(v61, &qword_27CDEB8C0, &unk_21CBA26A0);
  return (v64)(v50, v51);
}

uint64_t sub_21CB698B4()
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

uint64_t sub_21CB69A4C()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v9[0] = v5;
  v9[1] = v7;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21CB69B8C()
{
  v1 = *(type metadata accessor for PMVerificationCodeRow() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CB68E00(v2);
}

unint64_t sub_21CB69BFC()
{
  result = qword_27CDFA780;
  if (!qword_27CDFA780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA768, &qword_21CBCF490);
    sub_21CB69C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA780);
  }

  return result;
}

unint64_t sub_21CB69C88()
{
  result = qword_27CDFA788;
  if (!qword_27CDFA788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA760, &qword_21CBCF488);
    sub_21C6EADEC(&qword_27CDFA790, &qword_27CDFA758, &qword_21CBCF480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA788);
  }

  return result;
}

uint64_t sub_21CB69D4C()
{
  v1 = type metadata accessor for PMVerificationCodeRow();
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_21CB69DB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB69E20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CB69E68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB69ED0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21CB69F30()
{
  v1 = *(type metadata accessor for PMVerificationCodeRow() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_21CB68AB4();
}

unint64_t sub_21CB69F8C()
{
  result = qword_27CDFA7E0;
  if (!qword_27CDFA7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA7D8, &qword_21CBCF5F0);
    sub_21CB6A044();
    sub_21C6EADEC(&qword_27CDEC730, &qword_27CDEC738, &unk_21CBA6BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA7E0);
  }

  return result;
}

unint64_t sub_21CB6A044()
{
  result = qword_27CDFA7E8;
  if (!qword_27CDFA7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA420, &unk_21CBCE420);
    sub_21CB6A0FC();
    sub_21C6EADEC(&qword_27CDEB938, &qword_27CDEB920, &qword_21CBCC940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA7E8);
  }

  return result;
}

unint64_t sub_21CB6A0FC()
{
  result = qword_27CDFA7F0;
  if (!qword_27CDFA7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA7F8, &qword_21CBCF628);
    sub_21CB6A1B4();
    sub_21C6EADEC(&qword_27CDEB930, &qword_27CDEB918, &unk_21CBA26D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA7F0);
  }

  return result;
}

unint64_t sub_21CB6A1B4()
{
  result = qword_27CDFA800;
  if (!qword_27CDFA800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CDFA808, &unk_21CBCF630);
    sub_21C99CCA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA800);
  }

  return result;
}

void sub_21CB6A244(uint64_t a1)
{
  sub_21C6EDA64();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21CB6A2D4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 16) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_21CB6A42C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 16] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

uint64_t sub_21CB6A664(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v22 = MEMORY[0x277CE0BD8];
  v23 = v3;
  v24 = MEMORY[0x277CE0BC8];
  v25 = v2;
  v4 = sub_21CB84CC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v15[-v10];
  v19 = v3;
  v20 = v2;
  v21 = v1;
  v16 = v3;
  v17 = v2;
  v18 = v1;
  sub_21CB84C84();
  WitnessTable = swift_getWitnessTable();
  sub_21C72BE10(v8, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v8, v4);
  sub_21C72BE10(v11, v4, WitnessTable);
  return (v13)(v11, v4);
}

uint64_t sub_21CB6A830@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    v4 = *a1;
    v5 = a1[1];
  }

  v6 = type metadata accessor for PMPasskeyAccountRegistrationFieldCell();

  sub_21C71F3FC();
  v7 = sub_21CB84054();
  v9 = v8;
  v11 = v10;
  v20 = *(a1 + *(v6 + 40));

  v12 = sub_21CB83FC4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_21C74A72C(v7, v9, v11 & 1);

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v18;
  return result;
}

uint64_t sub_21CB6A954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMPasskeyAccountRegistrationFieldCell();
  sub_21C72BE10(a1 + *(v10 + 36), a2, a3);
  sub_21C72BE10(v9, a2, a3);
  return (*(v6 + 8))(v9, a2);
}

uint64_t sub_21CB6AA50@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21CB6A830(*(v1 + 32), a1);
}

uint64_t sub_21CB6AA68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21CB6AAB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CB6AB28@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a1[1];
  v9 = *a1;
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B08, &qword_21CBCF820);
  sub_21C6EADEC(&qword_27CDFA8A0, &qword_27CDF1B08, &qword_21CBCF820);
  sub_21CB84C84();
  v12 = *(a1 + 8);
  v11 = *(a1 + 24);
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8A8, &qword_21CBCF828) + 36);
  *v6 = v9;
  *(v6 + 16) = v8;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  sub_21C805950(&v12, v10);
  return sub_21C805950(&v11, v10);
}

uint64_t sub_21CB6AC6C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21CB6AD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 40);
  sub_21CB84D44();
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B08, &qword_21CBCF820);
  v4 = *(v3 + 44);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B18, &unk_21CBB3F50);
  swift_storeEnumTagMultiPayload();
  v5 = *(v3 + 48);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  return swift_storeEnumTagMultiPayload();
}

id sub_21CB6AE94@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 8) = sub_21CB6AB28;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  return v2;
}

uint64_t sub_21CB6AEBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a1;
  v42 = a2;
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v16);
  v39 = &v37 - v17;
  MEMORY[0x28223BE20](v18);
  v40 = &v37 - v19;
  v37 = "sibility Action)";
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v38 = sub_21CB81034();
  v20 = *(v38 - 8);
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
  (*(v20 + 8))(v23 + v22, v38);
  swift_deallocClassInstance();
  v25 = v40;
  sub_21CB81004();
  v24(v39, v2);
  v24(v25, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_21CBA0690;
  v27 = *v41;
  v28 = MEMORY[0x277D83C10];
  *(v26 + 56) = MEMORY[0x277D83B88];
  *(v26 + 64) = v28;
  *(v26 + 32) = v27;
  v29 = sub_21CB85594();
  v31 = v30;

  v43 = v29;
  v44 = v31;
  sub_21C71F3FC();
  result = sub_21CB84054();
  v33 = v42;
  *v42 = result;
  v33[1] = v34;
  *(v33 + 16) = v35 & 1;
  v33[3] = v36;
  return result;
}

uint64_t sub_21CB6B2E0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA890, &qword_21CBCF780);
  sub_21C6EADEC(&qword_27CDFA898, &qword_27CDFA890, &qword_21CBCF780);
  return sub_21CB84654();
}

uint64_t sub_21CB6B438@<X0>(uint64_t a1@<X8>)
{
  v124 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  v122 = *(v2 - 8);
  v3 = *(v122 + 64);
  MEMORY[0x28223BE20](v2);
  v120 = &v101 - v4;
  v119 = type metadata accessor for PMVerificationCodesList();
  v110 = *(v119 - 8);
  v5 = *(v110 + 64);
  MEMORY[0x28223BE20](v119);
  v111 = v6;
  v112 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMSetUpVerificationCodeAlertPurpose(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v117 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_21CB81024();
  v10 = *(v103 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v103);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v101 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8F0, &qword_21CBCF968);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v101 - v19;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8F8, &qword_21CBCF970);
  v104 = *(v102 - 8);
  v21 = v104[8];
  MEMORY[0x28223BE20](v102);
  v23 = &v101 - v22;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA900, &qword_21CBCF978);
  v106 = *(v107 - 8);
  v24 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v105 = &v101 - v25;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA908, &qword_21CBCF980);
  v114 = *(v116 - 8);
  v26 = *(v114 + 64);
  MEMORY[0x28223BE20](v116);
  v113 = &v101 - v27;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA910, &qword_21CBCF988);
  v28 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v115 = &v101 - v29;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA918, &qword_21CBCF990);
  v30 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v118 = &v101 - v31;
  sub_21CB6C2CC(v1, v20);
  *&v123 = v2;
  v121 = v1;
  sub_21CB85084();
  v32 = v127;
  swift_getKeyPath();
  *&v127 = v32;
  sub_21CB70C00(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  v33 = *(v32 + 48);
  v34 = *(v32 + 56);

  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    sub_21CB81014();
    v36 = sub_21CB81004();
    v38 = v37;
    (*(v10 + 8))(v16, v103);
  }

  else
  {
    sub_21CB81014();
    sub_21CB81014();
    v36 = sub_21CB80FF4();
    v38 = v39;
    v40 = *(v10 + 8);
    v41 = v13;
    v42 = v103;
    v40(v41, v103);
    v40(v16, v42);
  }

  *&v127 = v36;
  *(&v127 + 1) = v38;
  v43 = sub_21CB6FC44();
  v44 = sub_21C71F3FC();
  v45 = MEMORY[0x277D837D0];
  sub_21CB842F4();

  sub_21C6EA794(v20, &qword_27CDFA8F0, &qword_21CBCF968);
  v46 = sub_21CB85184();
  v103 = &v101;
  MEMORY[0x28223BE20](v46);
  v47 = v121;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA978, &qword_21CBCF9E8);
  *&v127 = v17;
  *(&v127 + 1) = v45;
  v128 = v43;
  v129 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v102;
  *&v127 = v102;
  *(&v127 + 1) = v45;
  v128 = OpaqueTypeConformance2;
  v129 = v44;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = MEMORY[0x277CE1350];
  v53 = v105;
  sub_21CB84974();
  v54 = (v104[1])(v23, v50);
  v104 = &v101;
  MEMORY[0x28223BE20](v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA980, &qword_21CBCF9F0);
  *&v127 = v50;
  *(&v127 + 1) = v52;
  v128 = v48;
  v129 = OpaqueTypeConformance2;
  v130 = MEMORY[0x277CE1340];
  v131 = v51;
  swift_getOpaqueTypeConformance2();
  v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA988, &qword_21CBCF9F8);
  v56 = sub_21C6EADEC(&qword_27CDFA990, &qword_27CDFA988, &qword_21CBCF9F8);
  *&v127 = v55;
  *(&v127 + 1) = v56;
  swift_getOpaqueTypeConformance2();
  v57 = v113;
  v58 = v107;
  sub_21CB84894();
  (*(v106 + 8))(v53, v58);
  v59 = v119;
  v60 = v47 + *(v119 + 20);
  v61 = *v60;
  v62 = *(v60 + 8);
  LOBYTE(v125) = v61;
  v126 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v106 = *(&v127 + 1);
  v107 = v127;
  LODWORD(v105) = v128;
  v63 = type metadata accessor for PMAccount(0);
  v64 = v117;
  (*(*(v63 - 8) + 56))(v117, 1, 1, v63);
  v65 = v47;
  v66 = v112;
  sub_21CB705FC(v47, v112, type metadata accessor for PMVerificationCodesList);
  v67 = (*(v110 + 80) + 16) & ~*(v110 + 80);
  v68 = swift_allocObject();
  sub_21CB70664(v66, v68 + v67, type metadata accessor for PMVerificationCodesList);
  v69 = v115;
  v70 = &v115[*(v108 + 36)];
  v71 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  sub_21CB705FC(v64, &v70[v71[5]], type metadata accessor for PMSetUpVerificationCodeAlertPurpose);
  v72 = &v70[v71[7]];
  v125 = 0;
  v126 = 0xE000000000000000;
  sub_21CB84D44();
  v73 = v128;
  *v72 = v127;
  *(v72 + 2) = v73;
  v74 = &v70[v71[8]];
  LOBYTE(v125) = 0;
  sub_21CB84D44();
  v75 = *(&v127 + 1);
  *v74 = v127;
  *(v74 + 1) = v75;
  v76 = v71[9];
  v125 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1478, &qword_21CBB1660);
  sub_21CB84D44();
  *&v70[v76] = v127;
  v77 = &v70[v71[10]];
  LOBYTE(v125) = 0;
  sub_21CB84D44();
  v78 = *(&v127 + 1);
  *v77 = v127;
  *(v77 + 1) = v78;
  v79 = &v70[v71[11]];
  LOBYTE(v125) = 0;
  sub_21CB84D44();
  v80 = *(&v127 + 1);
  *v79 = v127;
  *(v79 + 1) = v80;
  v81 = &v70[v71[12]];
  LOBYTE(v125) = 0;
  sub_21CB84D44();
  sub_21CB70798(v64, type metadata accessor for PMSetUpVerificationCodeAlertPurpose);
  v82 = *(&v127 + 1);
  *v81 = v127;
  *(v81 + 1) = v82;
  v83 = v71[13];
  *&v70[v83] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v84 = v106;
  *v70 = v107;
  *(v70 + 1) = v84;
  v70[16] = v105;
  v85 = &v70[v71[6]];
  *v85 = sub_21CB6FFB8;
  v85[1] = v68;
  (*(v114 + 32))(v69, v57, v116);
  v86 = *(v65 + *(v59 + 36));
  v87 = *(v109 + 36);
  type metadata accessor for PMHandleInboundTOTPMigrationURLModel(0);
  sub_21CB70C00(&qword_27CDEAE18, type metadata accessor for PMHandleInboundTOTPMigrationURLModel);

  v88 = v118;
  sub_21CB850A4();
  sub_21C716934(v69, v88, &qword_27CDFA910, &qword_21CBCF988);
  v89 = v120;
  v90 = v123;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  (*(v122 + 8))(v89, v90);
  v123 = v127;
  v91 = v128;
  v92 = v129;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA998, &qword_21CBCFA38);
  v94 = v124;
  v95 = (v124 + *(v93 + 36));
  *v95 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v96 = type metadata accessor for PMContentListSearchable();
  v97 = v96[5];
  *(v95 + v97) = swift_getKeyPath();
  v98 = v96[6];
  type metadata accessor for PMAppRootNavigationModel();
  sub_21CB70C00(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB821F4();
  v99 = v95 + v96[7];
  *v99 = v123;
  *(v99 + 2) = v91;
  *(v99 + 3) = v92;
  return sub_21C716934(v88, v94, &qword_27CDFA918, &qword_21CBCF990);
}

uint64_t sub_21CB6C2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA960, &qword_21CBCF9D8);
  v3 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v80 = v70 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA18, &qword_21CBCFB50);
  v5 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v82 = v70 - v6;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA20, &qword_21CBCFB58);
  v75 = *(v83 - 8);
  v7 = *(v75 + 64);
  MEMORY[0x28223BE20](v83);
  v74 = v70 - v8;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA940, &qword_21CBCF9C8);
  v9 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v84 = v70 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA28, &unk_21CBCFB60);
  v11 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v88 = v70 - v12;
  v13 = type metadata accessor for PMEmptyStateDetailView.Source(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v72 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for PMEmptyStateDetailView(0);
  v16 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v73 = (v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_21CB83834();
  v78 = *(v18 - 8);
  v79 = v18;
  v19 = *(v78 + 64);
  MEMORY[0x28223BE20](v18);
  v71 = v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v21 = *(*(v76 - 1) + 64);
  MEMORY[0x28223BE20](v76);
  v77 = v70 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v70 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v70 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  sub_21CB85084();
  v34 = v91;
  swift_getKeyPath();
  v35 = &unk_27CDFA000;
  v91 = v34;
  v36 = sub_21CB70C00(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  v37 = *(v34 + 24);

  v38 = *(v37 + 16);

  if (!v38)
  {
    v70[0] = v36;
    v70[1] = v33;
    v39 = *(type metadata accessor for PMVerificationCodesList() + 32);
    v70[2] = a1;
    sub_21C728D50(v32);
    v41 = v78;
    v40 = v79;
    (*(v78 + 104))(v29, *MEMORY[0x277CE0558], v79);
    (*(v41 + 56))(v29, 0, 1, v40);
    v42 = v77;
    v43 = *(v76 + 12);
    sub_21C6EDBAC(v32, v77, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EDBAC(v29, v42 + v43, &qword_27CDEC390, &qword_21CBA40E0);
    v44 = *(v41 + 48);
    if (v44(v42, 1, v40) == 1)
    {
      sub_21C6EA794(v29, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v32, &qword_27CDEC390, &qword_21CBA40E0);
      if (v44(v42 + v43, 1, v40) == 1)
      {
        sub_21C6EA794(v42, &qword_27CDEC390, &qword_21CBA40E0);
        v45 = v72;
        v46 = v73;
LABEL_14:
        v69 = sub_21CB85C44();
        (*(*(v69 - 8) + 56))(v45, 3, 6, v69);
        sub_21C9E14F8(v45, 1, v46);
        sub_21CB705FC(v46, v88, type metadata accessor for PMEmptyStateDetailView);
        swift_storeEnumTagMultiPayload();
        sub_21CB70C00(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
        sub_21CB6FD84();
        sub_21CB83494();
        return sub_21CB70798(v46, type metadata accessor for PMEmptyStateDetailView);
      }

      goto LABEL_7;
    }

    v76 = v29;
    sub_21C6EDBAC(v42, v26, &qword_27CDEC390, &qword_21CBA40E0);
    if (v44(v42 + v43, 1, v40) == 1)
    {
      sub_21C6EA794(v76, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v32, &qword_27CDEC390, &qword_21CBA40E0);
      (*(v41 + 8))(v26, v40);
LABEL_7:
      sub_21C6EA794(v42, &qword_27CDEE530, &unk_21CBA9D80);
      v35 = &unk_27CDFA000;
      goto LABEL_8;
    }

    v66 = v71;
    (*(v41 + 32))(v71, v42 + v43, v40);
    sub_21CB70C00(&qword_27CDEE538, MEMORY[0x277CE0570]);
    v67 = sub_21CB85574();
    v68 = *(v41 + 8);
    v68(v66, v40);
    sub_21C6EA794(v76, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v32, &qword_27CDEC390, &qword_21CBA40E0);
    v68(v26, v40);
    sub_21C6EA794(v42, &qword_27CDEC390, &qword_21CBA40E0);
    v45 = v72;
    v46 = v73;
    v35 = &unk_27CDFA000;
    if (v67)
    {
      goto LABEL_14;
    }
  }

LABEL_8:
  sub_21CB85084();
  v47 = v91;
  swift_getKeyPath();
  v48 = v35[339];
  v91 = v47;
  sub_21CB810D4();

  v49 = *(v47 + 24);

  v50 = *(v49 + 16);

  if (v50)
  {
    v51 = v80;
    sub_21CB6CEE0();
    v52 = sub_21CB85214();
    v54 = v53;
    v55 = v51 + *(v85 + 36);
    sub_21CB6D180(v55);
    v56 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA970, &qword_21CBCF9E0) + 36));
    *v56 = v52;
    v56[1] = v54;
    sub_21C6EDBAC(v51, v82, &qword_27CDFA960, &qword_21CBCF9D8);
    swift_storeEnumTagMultiPayload();
    v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA948, &qword_21CBCF9D0);
    v58 = sub_21C6EADEC(&qword_27CDFA950, &qword_27CDFA948, &qword_21CBCF9D0);
    v91 = v57;
    v92 = v58;
    swift_getOpaqueTypeConformance2();
    sub_21CB6FE80();
    v59 = v84;
    sub_21CB83494();
    sub_21C6EA794(v51, &qword_27CDFA960, &qword_21CBCF9D8);
  }

  else
  {
    v60 = v74;
    sub_21CB6CEE0();
    v61 = v75;
    v62 = v83;
    (*(v75 + 16))(v82, v60, v83);
    swift_storeEnumTagMultiPayload();
    v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA948, &qword_21CBCF9D0);
    v64 = sub_21C6EADEC(&qword_27CDFA950, &qword_27CDFA948, &qword_21CBCF9D0);
    v91 = v63;
    v92 = v64;
    swift_getOpaqueTypeConformance2();
    sub_21CB6FE80();
    v59 = v84;
    sub_21CB83494();
    (*(v61 + 8))(v60, v62);
  }

  sub_21C6EDBAC(v59, v88, &qword_27CDFA940, &qword_21CBCF9C8);
  swift_storeEnumTagMultiPayload();
  sub_21CB70C00(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
  sub_21CB6FD84();
  sub_21CB83494();
  return sub_21C6EA794(v59, &qword_27CDFA940, &qword_21CBCF9C8);
}

uint64_t sub_21CB6CEE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA948, &qword_21CBCF9D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-v9];
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  (*(v2 + 8))(v5, v1);
  v18 = v21;
  v19 = v22;
  v20 = v23;
  v15 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA38, &qword_21CBCFBC8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAA40, &qword_21CBCFBD0);
  v12 = sub_21CB70354();
  v16 = v11;
  v17 = v12;
  swift_getOpaqueTypeConformance2();
  sub_21CB83F24();
  sub_21C6EADEC(&qword_27CDFA950, &qword_27CDFA948, &qword_21CBCF9D0);
  sub_21CB845F4();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_21CB6D180@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA30, &qword_21CBCFB98);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  sub_21CB85084();
  v6 = v21;
  swift_getKeyPath();
  v21 = v6;
  sub_21CB70C00(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  v7 = *(v6 + 40);

  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 1;
    v10 = v20;
  }

  else
  {
    sub_21CB85084();
    v11 = v21;
    swift_getKeyPath();
    v21 = v11;
    sub_21CB810D4();

    v12 = *(v11 + 48);
    v13 = *(v11 + 56);

    sub_21CB83784();

    v14 = [objc_opt_self() systemGroupedBackgroundColor];
    v15 = sub_21CB84A24();
    v16 = sub_21CB83CE4();
    v17 = &v5[*(v1 + 36)];
    *v17 = v15;
    v17[8] = v16;
    v18 = v20;
    sub_21CB702DC(v5, v20);
    v9 = 0;
    v10 = v18;
  }

  return (*(v2 + 56))(v10, v9, 1, v1);
}

uint64_t sub_21CB6D3F4()
{
  sub_21CB6D4E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8F8, &qword_21CBCF970);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA8F0, &qword_21CBCF968);
  sub_21CB6FC44();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  sub_21CB84444();
}

uint64_t sub_21CB6D4E0()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  MEMORY[0x28223BE20](v14);
  v33 = &v31 - v15;
  MEMORY[0x28223BE20](v16);
  v34 = &v31 - v17;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v32 = sub_21CB81034();
  v18 = *(v32 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v22 = *(v1 + 8);
  v22(v4, v0);
  v22(v7, v0);
  v22(v10, v0);
  v22(v13, v0);
  swift_setDeallocating();
  (*(v18 + 8))(v21 + v20, v32);
  swift_deallocClassInstance();
  v23 = v34;
  sub_21CB81004();
  v22(v33, v0);
  v22(v23, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21CBA0690;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  sub_21CB85084();
  v25 = v35;
  swift_getKeyPath();
  v35 = v25;
  sub_21CB70C00(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  v26 = *(v25 + 40);

  v27 = *(v26 + 16);

  v28 = MEMORY[0x277D83C10];
  *(v24 + 56) = MEMORY[0x277D83B88];
  *(v24 + 64) = v28;
  *(v24 + 32) = v27;
  v29 = sub_21CB85594();

  return v29;
}

uint64_t sub_21CB6D988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA9A0, &qword_21CBCFA98);
  v3 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - v4;
  v5 = sub_21CB83604();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA9A8, &qword_21CBCFAA0);
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v29);
  v10 = &v27 - v9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA9B0, &qword_21CBCFAA8);
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v27);
  v14 = &v27 - v13;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA988, &qword_21CBCF9F8);
  v15 = *(v28 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v28);
  v18 = &v27 - v17;
  sub_21CB6F1A8(v14);
  sub_21CB835F4();
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA9B8, &qword_21CBCFAB0);
  sub_21C6EADEC(&qword_27CDFA9C0, &qword_27CDFA9B8, &qword_21CBCFAB0);
  sub_21CB82AA4();
  v19 = v30;
  v20 = *(v31 + 48);
  v21 = v27;
  (*(v11 + 16))(v30, v14, v27);
  v22 = &v19[v20];
  v23 = v29;
  (*(v7 + 16))(v22, v10, v29);
  sub_21CB83394();
  (*(v7 + 8))(v10, v23);
  (*(v11 + 8))(v14, v21);
  v24 = sub_21C6EADEC(&qword_27CDFA990, &qword_27CDFA988, &qword_21CBCF9F8);
  v25 = v28;
  MEMORY[0x21CF131E0](v18, v28, v24);
  return (*(v15 + 8))(v18, v25);
}

void sub_21CB6DD68(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v3 = sub_21CB82F84();
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v3);
  v58 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB80BE4();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - v11;
  v13 = type metadata accessor for PMSetUpVerificationCodeAlertError(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1610, &unk_21CBB1810);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v57 - v22);
  sub_21C6EDBAC(a1, &v57 - v22, &qword_27CDF1610, &unk_21CBB1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CB70664(v23, v19, type metadata accessor for PMSetUpVerificationCodeAlertError);
    sub_21CB70C00(&qword_27CDF1618, type metadata accessor for PMSetUpVerificationCodeAlertError);
    swift_willThrowTypedImpl();
    v24 = swift_allocError();
    sub_21CB70664(v19, v25, type metadata accessor for PMSetUpVerificationCodeAlertError);
    v65 = v24;
    v26 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
    if (swift_dynamicCast())
    {
      v28 = v61;
      v27 = v62;
      v29 = (*(v61 + 48))(v16, 3, v62);
      if (v29 == 1)
      {
LABEL_6:
        v31 = v65;
        goto LABEL_19;
      }

      if (!v29)
      {
        (*(v28 + 32))(v9, v16, v27);
        v30 = *(v63 + *(type metadata accessor for PMVerificationCodesList() + 36));
        sub_21C9F8EDC();
        (*(v28 + 8))(v9, v27);
        goto LABEL_6;
      }

      sub_21CB70798(v16, type metadata accessor for PMSetUpVerificationCodeAlertError);
    }

    v48 = v24;
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v49 = sub_21CB81C84();
    __swift_project_value_buffer(v49, qword_27CE186E0);
    v50 = v24;
    v51 = sub_21CB81C64();
    v52 = sub_21CB85AF4();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138543362;
      v55 = v24;
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 4) = v56;
      *v54 = v56;
      _os_log_impl(&dword_21C6E5000, v51, v52, "Cannot create verification code generator. %{public}@", v53, 0xCu);
      sub_21C6EA794(v54, &unk_27CDF76B0, &qword_21CBA2BE0);
      MEMORY[0x21CF16D90](v54, -1, -1);
      MEMORY[0x21CF16D90](v53, -1, -1);

LABEL_20:
      return;
    }

    v31 = v24;
LABEL_19:

    goto LABEL_20;
  }

  v32 = *v23;
  v33 = [*v23 exportableURL];
  if (v33)
  {
    v34 = v33;
    sub_21CB80B94();

    v35 = type metadata accessor for PMVerificationCodesList();
    v36 = v63;
    v37 = (v63 + *(v35 + 20));
    v38 = *v37;
    v39 = *(v37 + 1);
    LOBYTE(v65) = v38;
    v66 = v39;
    v64 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    sub_21CB84D64();
    v40 = v36 + *(v35 + 24);
    v42 = *v40;
    v41 = *(v40 + 8);
    if (*(v40 + 16) == 1)
    {
    }

    else
    {

      sub_21CB85B04();
      v45 = sub_21CB83C94();
      sub_21CB81C14();

      v46 = v58;
      sub_21CB82F74();
      swift_getAtKeyPath();
      sub_21C79C1F4();
      (*(v59 + 8))(v46, v60);
      v42 = v65;
    }

    v47 = v62;
    v42(v12);

    (*(v61 + 8))(v12, v47);
  }

  else
  {
    v43 = v63 + *(type metadata accessor for PMVerificationCodesList() + 20);
    v44 = *(v43 + 8);
    LOBYTE(v65) = *v43;
    v66 = v44;
    v64 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    sub_21CB84D64();
  }
}

uint64_t sub_21CB6E440(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA40, &qword_21CBCFBD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8[-v5];
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA58, &qword_21CBCFBD8);
  sub_21CB703E4();
  sub_21CB85054();
  sub_21CB82334();
  sub_21CB70354();
  sub_21CB84514();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21CB6E584(uint64_t a1)
{
  v2 = type metadata accessor for PMVerificationCodesList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  sub_21CB85084();
  swift_getKeyPath();
  sub_21CB70C00(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  v5 = *(v10 + 40);

  v10 = v5;
  sub_21CB705FC(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMVerificationCodesList);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_21CB70664(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PMVerificationCodesList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA68, &qword_21CBCFBE0);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730);
  sub_21CB70468();
  sub_21CB70C00(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  return sub_21CB84FF4();
}

uint64_t sub_21CB6E828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v66 = sub_21CB83834();
  v72 = *(v66 - 8);
  v4 = *(v72 + 64);
  MEMORY[0x28223BE20](v66);
  v62 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v7 = *(v6 - 8);
  v71 = v6 - 8;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v63 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v76 = &v62 - v14;
  MEMORY[0x28223BE20](v15);
  v77 = &v62 - v16;
  v17 = sub_21CB83A34();
  v69 = *(v17 - 8);
  v70 = v17;
  v18 = *(v69 + 64);
  MEMORY[0x28223BE20](v17);
  v68 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for PMVerificationCodeRow();
  v20 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA78, &qword_21CBCFBE8);
  v73 = *(v23 - 8);
  v74 = v23;
  v24 = *(v73 + 64);
  MEMORY[0x28223BE20](v23);
  v78 = &v62 - v25;
  v26 = type metadata accessor for PMAccount(0);
  v64 = *(v26 - 8);
  v27 = *(v64 + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for PMVerificationCodesList();
  v30 = v29 - 8;
  v31 = *(v29 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB705FC(v2, v33, type metadata accessor for PMVerificationCodesList);
  sub_21CB705FC(a1, v28, type metadata accessor for PMAccount);
  v34 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v35 = (v32 + *(v64 + 80) + v34) & ~*(v64 + 80);
  v36 = swift_allocObject();
  v37 = v36 + v34;
  v38 = v77;
  sub_21CB70664(v33, v37, type metadata accessor for PMVerificationCodesList);
  sub_21CB70664(v28, v36 + v35, type metadata accessor for PMAccount);
  v39 = v67;
  sub_21CB705FC(a1, v22, type metadata accessor for PMAccount);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  sub_21CB85084();
  v40 = v79;
  swift_getKeyPath();
  v79 = v40;
  sub_21CB70C00(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  v42 = *(v40 + 48);
  v41 = *(v40 + 56);

  v43 = v65;
  v44 = &v22[*(v65 + 20)];
  *v44 = v42;
  *(v44 + 1) = v41;
  v45 = &v22[*(v43 + 24)];
  *v45 = sub_21CB706CC;
  v45[1] = v36;
  v46 = *(v43 + 28);
  *&v22[v46] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();

  v47 = v68;
  sub_21CB83A24();
  sub_21CB70C00(&qword_27CDFAA70, type metadata accessor for PMVerificationCodeRow);
  v48 = v76;
  sub_21CB844F4();
  (*(v69 + 8))(v47, v70);
  sub_21CB70798(v22, type metadata accessor for PMVerificationCodeRow);
  v49 = *(v30 + 40);
  v50 = v72;
  sub_21C728D50(v38);
  v51 = v66;
  (*(v50 + 104))(v48, *MEMORY[0x277CE0558], v66);
  (*(v50 + 56))(v48, 0, 1, v51);
  v52 = *(v71 + 56);
  sub_21C6EDBAC(v38, v39, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v48, v39 + v52, &qword_27CDEC390, &qword_21CBA40E0);
  v53 = *(v50 + 48);
  if (v53(v39, 1, v51) != 1)
  {
    v55 = v63;
    sub_21C6EDBAC(v39, v63, &qword_27CDEC390, &qword_21CBA40E0);
    if (v53(v39 + v52, 1, v51) != 1)
    {
      v56 = v39 + v52;
      v57 = v62;
      (*(v50 + 32))(v62, v56, v51);
      sub_21CB70C00(&qword_27CDEE538, MEMORY[0x277CE0570]);
      v58 = sub_21CB85574();

      v59 = *(v50 + 8);
      v59(v57, v51);
      sub_21C6EA794(v76, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v77, &qword_27CDEC390, &qword_21CBA40E0);
      v59(v55, v51);
      sub_21C6EA794(v39, &qword_27CDEC390, &qword_21CBA40E0);
      v54 = v58 ^ 1;
      goto LABEL_8;
    }

    sub_21C6EA794(v76, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v77, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v50 + 8))(v55, v51);
    goto LABEL_6;
  }

  sub_21C6EA794(v48, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v38, &qword_27CDEC390, &qword_21CBA40E0);
  if (v53(v39 + v52, 1, v51) != 1)
  {
LABEL_6:
    sub_21C6EA794(v39, &qword_27CDEE530, &unk_21CBA9D80);
    v54 = 1;
    goto LABEL_8;
  }

  sub_21C6EA794(v39, &qword_27CDEC390, &qword_21CBA40E0);
  v54 = 0;
LABEL_8:
  v60 = v75;
  (*(v73 + 32))(v75, v78, v74);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA68, &qword_21CBCFBE0);
  *(v60 + *(result + 36)) = v54 & 1;
  return result;
}

uint64_t sub_21CB6F1A8@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA9D0, &qword_21CBCFAC0);
  v1 = *(v47 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v47);
  v44 = v40 - v3;
  v4 = sub_21CB83604();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v40[1] = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA9D8, &qword_21CBCFAC8);
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v40 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA9E0, &unk_21CBCFAD0);
  v43 = *(v46 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v46);
  v42 = v40 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v40 - v15;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA9E8, &qword_21CBCFAE0);
  v17 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v40 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  sub_21CB85084();
  v23 = sub_21CB712BC();

  if ((v23 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_21CB85084();
  sub_21CB71B34(v16);

  v24 = type metadata accessor for PMAccount(0);
  if ((*(*(v24 - 8) + 48))(v16, 1, v24) == 1)
  {
    sub_21C6EA794(v16, &unk_27CDEBE60, &unk_21CB9FF40);
LABEL_6:
    v34 = v47;
    (*(v1 + 56))(v19, 1, 1, v47);
    v35 = sub_21C6EADEC(&qword_27CDFA9F0, &qword_27CDFA9D8, &qword_21CBCFAC8);
    v49 = v7;
    v50 = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = v46;
    v50 = OpaqueTypeConformance2;
    v37 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v19, v34, v37);
    sub_21C6EA794(v19, &qword_27CDFA9E8, &qword_21CBCFAE0);
    goto LABEL_7;
  }

  v25 = PMAccount.totpGenerator.getter();
  v26 = sub_21CB70798(v16, type metadata accessor for PMAccount);
  if (!v25)
  {
    goto LABEL_6;
  }

  MEMORY[0x28223BE20](v26);
  v40[-2] = v25;
  sub_21CB835E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA00, &unk_21CBCFAE8);
  sub_21CB701D0();
  sub_21CB82194();
  v27 = sub_21C6EADEC(&qword_27CDFA9F0, &qword_27CDFA9D8, &qword_21CBCFAC8);
  v28 = v42;
  sub_21CB82784();
  (*(v41 + 8))(v10, v7);
  v49 = v7;
  v50 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v44;
  v31 = v46;
  MEMORY[0x21CF131E0](v28, v46, v29);
  v32 = v47;
  (*(v1 + 16))(v19, v30, v47);
  (*(v1 + 56))(v19, 0, 1, v32);
  v49 = v31;
  v50 = v29;
  v33 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF13220](v19, v32, v33);

  sub_21C6EA794(v19, &qword_27CDFA9E8, &qword_21CBCFAE0);
  (*(v1 + 8))(v30, v32);
  (*(v43 + 8))(v28, v31);
LABEL_7:
  v38 = sub_21CB70090();
  MEMORY[0x21CF131E0](v22, v45, v38);
  return sub_21C6EA794(v22, &qword_27CDFA9E8, &qword_21CBCFAE0);
}

uint64_t sub_21CB6F870@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for PMVerificationCodesList();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_21CB831C4();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  sub_21CB831B4();
  sub_21CB705FC(a1, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMVerificationCodesList);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_21CB70664(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PMVerificationCodesList);
  v17 = v8[2];
  v17(v11, v14, v7);
  v25 = 1;
  v17(a2, v11, v7);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA9C8, &qword_21CBCFAB8);
  v19 = &a2[*(v18 + 48)];
  v20 = v25;
  *v19 = 0;
  v19[8] = v20;
  v21 = &a2[*(v18 + 64)];
  *v21 = sub_21CB70030;
  v21[1] = v16;
  sub_21C7335A8(sub_21CB70030, v16);
  v22 = v8[1];
  v22(v14, v7);
  sub_21C71B710(sub_21CB70030);
  return (v22)(v11, v7);
}

uint64_t sub_21CB6FAFC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for PMVerificationCodesList() + 20));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

id sub_21CB6FB70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_21CB83D94();
  KeyPath = swift_getKeyPath();
  *a2 = a1;
  a2[1] = KeyPath;
  a2[2] = v3;

  return a1;
}

uint64_t sub_21CB6FBCC(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  sub_21CB85084();
  v4 = *a2;
  v3 = a2[1];

  sub_21CB70C48(v4, v3);
}

unint64_t sub_21CB6FC44()
{
  result = qword_27CDFA920;
  if (!qword_27CDFA920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA8F0, &qword_21CBCF968);
    sub_21CB6FCC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA920);
  }

  return result;
}

unint64_t sub_21CB6FCC8()
{
  result = qword_27CDFA928;
  if (!qword_27CDFA928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA930, &qword_21CBCF9C0);
    sub_21CB70C00(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
    sub_21CB6FD84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA928);
  }

  return result;
}

unint64_t sub_21CB6FD84()
{
  result = qword_27CDFA938;
  if (!qword_27CDFA938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA940, &qword_21CBCF9C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA948, &qword_21CBCF9D0);
    sub_21C6EADEC(&qword_27CDFA950, &qword_27CDFA948, &qword_21CBCF9D0);
    swift_getOpaqueTypeConformance2();
    sub_21CB6FE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA938);
  }

  return result;
}

unint64_t sub_21CB6FE80()
{
  result = qword_27CDFA958;
  if (!qword_27CDFA958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA960, &qword_21CBCF9D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA948, &qword_21CBCF9D0);
    sub_21C6EADEC(&qword_27CDFA950, &qword_27CDFA948, &qword_21CBCF9D0);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDFA968, &qword_27CDFA970, &qword_21CBCF9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA958);
  }

  return result;
}

void sub_21CB6FFB8(uint64_t a1)
{
  v3 = *(type metadata accessor for PMVerificationCodesList() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_21CB6DD68(a1, v4);
}

uint64_t sub_21CB70030()
{
  v1 = *(type metadata accessor for PMVerificationCodesList() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CB6FAFC(v2);
}

unint64_t sub_21CB70090()
{
  result = qword_27CDFA9F8;
  if (!qword_27CDFA9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA9E8, &qword_21CBCFAE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA9E0, &unk_21CBCFAD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA9D8, &qword_21CBCFAC8);
    sub_21C6EADEC(&qword_27CDFA9F0, &qword_27CDFA9D8, &qword_21CBCFAC8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA9F8);
  }

  return result;
}

unint64_t sub_21CB701D0()
{
  result = qword_27CDFAA08;
  if (!qword_27CDFAA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAA00, &unk_21CBCFAE8);
    sub_21CB70288();
    sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAA08);
  }

  return result;
}

unint64_t sub_21CB70288()
{
  result = qword_27CDFAA10;
  if (!qword_27CDFAA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAA10);
  }

  return result;
}

uint64_t sub_21CB702DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA30, &qword_21CBCFB98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CB70354()
{
  result = qword_27CDFAA48;
  if (!qword_27CDFAA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAA40, &qword_21CBCFBD0);
    sub_21CB703E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAA48);
  }

  return result;
}

unint64_t sub_21CB703E4()
{
  result = qword_27CDFAA50;
  if (!qword_27CDFAA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAA58, &qword_21CBCFBD8);
    sub_21CB70468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAA50);
  }

  return result;
}

unint64_t sub_21CB70468()
{
  result = qword_27CDFAA60;
  if (!qword_27CDFAA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAA68, &qword_21CBCFBE0);
    type metadata accessor for PMVerificationCodeRow();
    sub_21CB70C00(&qword_27CDFAA70, type metadata accessor for PMVerificationCodeRow);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF4C98, &qword_27CDF4C90, &unk_21CBBC650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAA60);
  }

  return result;
}

uint64_t sub_21CB70588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMVerificationCodesList() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_21CB6E828(a1, a2);
}

uint64_t sub_21CB705FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB70664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB706CC()
{
  v1 = *(type metadata accessor for PMVerificationCodesList() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  v5 = (v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));

  return sub_21CB6FBCC(v0 + v2, v5);
}

uint64_t sub_21CB70798(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CB707F8()
{
  result = qword_27CDFAA80;
  if (!qword_27CDFAA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA998, &qword_21CBCFA38);
    sub_21CB708B4();
    sub_21CB70C00(&qword_27CDEEE60, type metadata accessor for PMContentListSearchable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAA80);
  }

  return result;
}

unint64_t sub_21CB708B4()
{
  result = qword_27CDFAA88;
  if (!qword_27CDFAA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA918, &qword_21CBCF990);
    sub_21CB70970();
    sub_21CB70C00(&qword_27CDEADB8, type metadata accessor for PMHandleInboundTOTPMigrationURLModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAA88);
  }

  return result;
}

unint64_t sub_21CB70970()
{
  result = qword_27CDFAA90;
  if (!qword_27CDFAA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA910, &qword_21CBCF988);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA900, &qword_21CBCF978);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA980, &qword_21CBCF9F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA8F8, &qword_21CBCF970);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA978, &qword_21CBCF9E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA8F0, &qword_21CBCF968);
    sub_21CB6FC44();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA988, &qword_21CBCF9F8);
    sub_21C6EADEC(&qword_27CDFA990, &qword_27CDFA988, &qword_21CBCF9F8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21CB70C00(&qword_27CDF1608, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAA90);
  }

  return result;
}

uint64_t sub_21CB70C00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CB70C48(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 80);
  v5 = *(v2 + 88);
  if (v5)
  {
    if (a2)
    {
      if (v6 == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v8 = *(v2 + 80);
      v9 = *(v2 + 88);
      if (sub_21CB86344())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
    sub_21CB810C4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  sub_21CB72C70(v6, v5);
}

uint64_t sub_21CB70DC4()
{
  swift_getKeyPath();
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  v1 = *(v0 + 24);
}

uint64_t sub_21CB70E68()
{
  swift_getKeyPath();
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  v1 = *(v0 + 40);
}

uint64_t sub_21CB70F0C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  v2 = *(v0 + 48);
  v1 = *(v4 + 56);

  return v2;
}

uint64_t sub_21CB70FBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_21CB71068(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21CB710A8(v2, v3);
}

uint64_t sub_21CB710A8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (v6 = *(v2 + 56), (sub_21CB86344() & 1) != 0))
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;

    return sub_21CB726C0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21CB7120C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  v2 = *(v0 + 80);
  v1 = *(v4 + 88);

  return v2;
}

uint64_t sub_21CB712BC()
{
  v1 = v0;
  v74 = type metadata accessor for PMAccount.MockData(0);
  v2 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for PMAccount.Storage(0);
  v4 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v72 = (&v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = (&v67 - v7);
  v78 = type metadata accessor for PMAccount(0);
  v9 = *(v78 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v78);
  v77 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v67 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v19 = &v67 - v18;
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC17PasswordManagerUI28PMVerificationCodesListModel___observationRegistrar;
  v80 = v1;
  v70 = sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  v71 = v20;
  sub_21CB810D4();

  v21 = *(v1 + 40);
  v22 = *(v21 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v69 = v1;
    v80 = MEMORY[0x277D84F90];

    sub_21C7B1400(0, v22, 0);
    v23 = v80;
    v24 = *(v9 + 80);
    v67 = v21;
    v68 = v9;
    v25 = v21 + ((v24 + 32) & ~v24);
    v26 = *(v9 + 72);
    v76 = v8;
    while (1)
    {
      sub_21C80EABC(v25, v14, type metadata accessor for PMAccount);
      sub_21C80EABC(&v14[*(v78 + 24)], v8, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      v75 = v22;
      v27 = v14;
      v28 = v19;
      v29 = v26;
      v30 = v16;
      v31 = v73;
      sub_21C8399BC(v8, v73, type metadata accessor for PMAccount.MockData);
      v32 = *(v31 + *(v74 + 56));
      v33 = v32;
      sub_21C719960(v31, type metadata accessor for PMAccount.MockData);
      if (v32)
      {
        v16 = v30;
        v26 = v29;
        v19 = v28;
        v14 = v27;
        v22 = v75;
        goto LABEL_12;
      }

      v39 = 1;
      v16 = v30;
      v26 = v29;
      v19 = v28;
      v14 = v27;
      v22 = v75;
      v8 = v76;
LABEL_17:
      sub_21C719960(v14, type metadata accessor for PMAccount);
      v40 = sub_21CB80DD4();
      (*(*(v40 - 8) + 56))(v19, v39, 1, v40);
      v80 = v23;
      v42 = *(v23 + 16);
      v41 = *(v23 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_21C7B1400(v41 > 1, v42 + 1, 1);
        v23 = v80;
      }

      *(v23 + 16) = v42 + 1;
      sub_21C6F1098(v19, v23 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v42);
      v25 += v26;
      if (!--v22)
      {

        v9 = v68;
        v1 = v69;
        goto LABEL_22;
      }
    }

    v34 = *v8;
    v35 = [*v8 totpGenerators];
    sub_21C7B1B18();
    v36 = sub_21CB85824();

    if (v36 >> 62)
    {
      result = sub_21CB85FA4();
      if (result)
      {
LABEL_8:
        if ((v36 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x21CF15BD0](0, v36);
        }

        else
        {
          if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            return result;
          }

          v38 = *(v36 + 32);
        }

        v33 = v38;

LABEL_12:
        v34 = [v33 initialDate];

        sub_21CB80D94();
        v39 = 0;
LABEL_16:
        v8 = v76;

        goto LABEL_17;
      }
    }

    else
    {
      result = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_8;
      }
    }

    v39 = 1;
    goto LABEL_16;
  }

LABEL_22:
  v43 = sub_21CB0143C(v23);

  v44 = *(v43 + 16);

  v45 = v72;
  if (v44 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  v80 = v1;
  sub_21CB810D4();

  v46 = *(v1 + 40);
  v47 = *(v46 + 16);
  v48 = MEMORY[0x277D84F90];
  if (!v47)
  {
    goto LABEL_44;
  }

  v80 = MEMORY[0x277D84F90];

  sub_21C7B13E0(0, v47, 0);
  v48 = v80;
  v49 = *(v9 + 80);
  v76 = v46;
  v50 = v46 + ((v49 + 32) & ~v49);
  v51 = *(v9 + 72);
  do
  {
    v52 = v77;
    sub_21C80EABC(v50, v77, type metadata accessor for PMAccount);
    sub_21C80EABC(v52 + *(v78 + 24), v45, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v53 = v73;
      sub_21C8399BC(v45, v73, type metadata accessor for PMAccount.MockData);
      v54 = *(v53 + *(v74 + 56));
      v55 = v54;
      sub_21C719960(v53, type metadata accessor for PMAccount.MockData);
      if (!v54)
      {
        v56 = 0;
        v57 = 1;
        goto LABEL_38;
      }
    }

    else
    {
      v58 = *v45;
      v59 = [*v45 totpGenerators];
      sub_21C7B1B18();
      v60 = sub_21CB85824();

      if (v60 >> 62)
      {
        result = sub_21CB85FA4();
        if (!result)
        {
LABEL_36:

          v56 = 0;
          v57 = 1;
          goto LABEL_37;
        }
      }

      else
      {
        result = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_36;
        }
      }

      if ((v60 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x21CF15BD0](0, v60);
      }

      else
      {
        if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v61 = *(v60 + 32);
      }

      v55 = v61;
    }

    v56 = [v55 codeGenerationPeriod];
    v57 = 0;
    v58 = v55;
LABEL_37:

LABEL_38:
    sub_21C719960(v77, type metadata accessor for PMAccount);
    v80 = v48;
    v63 = *(v48 + 16);
    v62 = *(v48 + 24);
    if (v63 >= v62 >> 1)
    {
      sub_21C7B13E0((v62 > 1), v63 + 1, 1);
      v48 = v80;
    }

    *(v48 + 16) = v63 + 1;
    v64 = v48 + 16 * v63;
    *(v64 + 32) = v56;
    *(v64 + 40) = v57;
    v50 += v51;
    --v47;
    v45 = v72;
  }

  while (v47);

LABEL_44:
  v65 = sub_21CB015A8(v48);

  v66 = *(v65 + 16);

  return v66 == 1;
}

uint64_t sub_21CB71B34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = type metadata accessor for PMAccount.MockData(0);
  v4 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PMAccount.Storage(0);
  v7 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for PMAccount(0);
  v10 = *(v28 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v28);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v29 = v1;
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  v14 = v1[5];
  v15 = *(v14 + 16);
  if (!v15)
  {
    v23 = 1;
    return (*(v10 + 56))(a1, v23, 1, v28);
  }

  v24 = a1;
  v27 = v10;
  v16 = v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80));

  v18 = 0;
  while (1)
  {
    if (v18 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_21C80EABC(v16 + *(v27 + 72) * v18, v13, type metadata accessor for PMAccount);
    sub_21C80EABC(&v13[*(v28 + 24)], v9, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_21C8399BC(v9, v6, type metadata accessor for PMAccount.MockData);
    v19 = *&v6[*(v25 + 56)];
    v2 = v19;
    sub_21C719960(v6, type metadata accessor for PMAccount.MockData);
    if (v19)
    {
      goto LABEL_16;
    }

LABEL_4:
    ++v18;
    result = sub_21C719960(v13, type metadata accessor for PMAccount);
    if (v15 == v18)
    {

      v23 = 1;
      a1 = v24;
      v10 = v27;
      return (*(v10 + 56))(a1, v23, 1, v28);
    }
  }

  v2 = *v9;
  v20 = [*v9 totpGenerators];
  sub_21C7B1B18();
  v21 = sub_21CB85824();

  result = v21;
  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v22 = sub_21CB85FA4();
  result = v21;
  if (!v22)
  {
LABEL_9:

    goto LABEL_4;
  }

LABEL_11:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_20:
    MEMORY[0x21CF15BD0](0, result);

    swift_unknownObjectRelease();
LABEL_16:

    a1 = v24;
    v10 = v27;
LABEL_17:

    sub_21C8399BC(v13, a1, type metadata accessor for PMAccount);
    v23 = 0;
    return (*(v10 + 56))(a1, v23, 1, v28);
  }

  a1 = v24;
  v10 = v27;
  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_21CB71F70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  *a2 = *(v3 + 24);
}

uint64_t sub_21CB7201C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21CB72048(v4);
}

uint64_t sub_21CB72048(uint64_t a1)
{
  v3 = *(v1 + 24);

  v5 = sub_21C714F88(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 24);
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21CB7219C()
{
  swift_getKeyPath();
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  v1 = *(v0 + 32);
}

uint64_t sub_21CB72240@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  *a2 = *(v3 + 32);
}

uint64_t sub_21CB722EC(uint64_t a1)
{
  v2 = v1;
  if (!*(v1 + 32))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
    sub_21CB810C4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21CB81CC4();
  sub_21CB73730(&qword_27CDEAC18, MEMORY[0x277CBCDA8]);

  v4 = sub_21CB85574();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(v2 + 32);
LABEL_7:
  *(v2 + 32) = a1;
}

uint64_t sub_21CB72494@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  *a2 = *(v3 + 40);
}

uint64_t sub_21CB72540(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21CB7256C(v4);
}

uint64_t sub_21CB7256C(uint64_t a1)
{
  v3 = *(v1 + 40);

  v5 = sub_21C714F88(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 40);
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21CB726C0()
{
  v1 = v0;
  swift_getKeyPath();
  v17 = v0;
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  v2 = v0[7];
  v3 = v0[6] & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  if (v3)
  {
    v4 = v0[2];
    v5 = qword_27CDEA4C0;

    if (v5 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v6 = sub_21C7072A8(v4, v17);

    swift_getKeyPath();
    sub_21CB810D4();

    v7 = v1[3];
    swift_getKeyPath();

    sub_21CB810D4();

    v9 = v1[6];
    v8 = v1[7];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = *(v6 + 24);
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 48);

      v14 = v13(ObjectType, v11);
      swift_unknownObjectRelease();
      Strong = [v14 associatedDomainsManager];
    }

    else
    {
    }

    matched = _s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(v7, v9, v8, Strong);
  }

  else
  {
    swift_getKeyPath();
    sub_21CB810D4();

    matched = v0[3];
  }

  return sub_21CB7256C(matched);
}

uint64_t sub_21CB72978()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  v2 = *(v0 + 64);
  v1 = *(v4 + 72);

  return v2;
}

uint64_t sub_21CB72A28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  v5 = *(v3 + 64);
  v4 = *(v3 + 72);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_21CB736F0;
  a2[1] = v6;
}

uint64_t sub_21CB72B00(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_getKeyPath();
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);

  sub_21CB810C4();
}

uint64_t sub_21CB72C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_21CB735B4(a2, a3);
}

uint64_t sub_21CB72C70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  v7 = v2[11];
  if (!a2)
  {
    if (!v7)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (!v7 || (v2[10] != a1 || v7 != a2) && (result = sub_21CB86344(), (result & 1) == 0))
  {
LABEL_8:
    swift_getKeyPath();
    sub_21CB810D4();

    v9 = v2[8];
    v8 = v2[9];
    swift_getKeyPath();

    sub_21CB810D4();

    v10 = v2[10];
    v11 = v3[11];

    v9(a1, a2, v10, v11);
  }

  return result;
}

uint64_t sub_21CB72E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;

  sub_21CB72C70(v3, v4);
}

void *sub_21CB72E64()
{
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x277D84F90];
  v0[2] = KeyPath;
  v0[3] = v2;
  v0[4] = 0;
  v0[5] = v2;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v0[8] = nullsub_1;
  v0[9] = 0;
  v0[10] = 0;
  v0[11] = 0;
  sub_21CB81104();
  sub_21CB72ECC();
  return v0;
}

uint64_t sub_21CB72ECC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABF8, &unk_21CBAB590);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - v4;
  v6 = *(v0 + 16);
  v7 = qword_27CDEA4C0;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v6, v10[1]);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21CB56820();
  v8 = sub_21CB81E04();

  (*(v2 + 8))(v5, v1);
  return sub_21CB722EC(v8);
}

uint64_t sub_21CB730C8(uint64_t *a1)
{
  v2 = type metadata accessor for PMAccount(0);
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;

    sub_21CB72048(v9);
    swift_getKeyPath();
    v10 = OBJC_IVAR____TtC17PasswordManagerUI28PMVerificationCodesListModel___observationRegistrar;
    v24 = v8;
    v22[0] = sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
    v22[1] = v10;
    sub_21CB810D4();

    v11 = v8[3];
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = v11 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v14 = v8[3];

      v15 = 0;
      while (v15 < *(v11 + 16))
      {
        sub_21C80EABC(v13 + *(v23 + 72) * v15, v5, type metadata accessor for PMAccount);
        v16 = *v5;
        v17 = v5[1];
        swift_getKeyPath();
        v24 = v8;
        sub_21CB810D4();

        v18 = v8[11];
        if (v18)
        {
          if (v16 == v8[10] && v18 == v17)
          {
            sub_21C719960(v5, type metadata accessor for PMAccount);
LABEL_17:

            goto LABEL_18;
          }

          v19 = sub_21CB86344();
          result = sub_21C719960(v5, type metadata accessor for PMAccount);
          if (v19)
          {
            goto LABEL_17;
          }
        }

        else
        {
          result = sub_21C719960(v5, type metadata accessor for PMAccount);
        }

        if (v12 == ++v15)
        {

          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:
      if (v8[11])
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v22[-3] = 0;
        v22[-2] = 0;
        v22[-4] = v8;
        v24 = v8;
        sub_21CB810C4();
      }

      else
      {
        v21 = v8[10];
        v8[10] = 0;
        v8[11] = 0;
        sub_21CB72C70(v21, 0);
      }

LABEL_18:
      sub_21CB726C0();
    }
  }

  return result;
}

char *sub_21CB73428()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = *(v0 + 5);

  v5 = *(v0 + 7);

  v6 = *(v0 + 9);

  v7 = *(v0 + 11);

  v8 = OBJC_IVAR____TtC17PasswordManagerUI28PMVerificationCodesListModel___observationRegistrar;
  v9 = sub_21CB81114();
  (*(*(v9 - 8) + 8))(&v0[v8], v9);
  return v0;
}

uint64_t sub_21CB734C0()
{
  sub_21CB73428();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21CB73520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v9[0] = a1;
  v9[1] = a2;
  v8[0] = a3;
  v8[1] = a4;
  return v5(v9, v8);
}

uint64_t sub_21CB73560()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  sub_21CB735B4(v2, v3);
}

uint64_t sub_21CB735B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2[9];
  v3[8] = a1;
  v3[9] = a2;

  swift_getKeyPath();
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  v6 = v3[8];
  v5 = v3[9];
  swift_getKeyPath();

  sub_21CB810D4();

  v8 = v3[10];
  v7 = v3[11];

  v6(0, 0, v8, v7);
}

uint64_t sub_21CB736F0(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], *a2, a2[1]);
}

uint64_t sub_21CB73730(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t keypath_set_22Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_21CB737AC()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 56);
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;

  return sub_21CB726C0();
}

uint64_t sub_21CB737FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21CB73838(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_21CB73880(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CB73920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](a1);
  (*(v14 + 16))(&v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18, v16);
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v19[6] = a2;
  v19[7] = a3;
  sub_21CB82304();
  return (*(v14 + 8))(a1, a4);
}

uint64_t sub_21CB73A78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v54 = a3;
  v55 = a6;
  v46 = a5;
  v56 = a4;
  v53 = a2;
  v57 = a7;
  v8 = sub_21CB80DD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  v50 = sub_21CB83964();
  v16 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v45 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB83B74();
  v47 = sub_21CB828F4();
  v49 = sub_21CB74744(&qword_27CDFAB30, MEMORY[0x277CE06F0]);
  v18 = sub_21CB82314();
  v51 = *(v18 - 8);
  v19 = *(v51 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - v20;
  v22 = sub_21CB828F4();
  v52 = *(v22 - 8);
  v23 = *(v52 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27 = MEMORY[0x28223BE20](v26).n128_u64[0];
  v48 = &v45 - v28;
  v29 = [a1 initialDate];
  sub_21CB80D94();

  v30 = v8;
  (*(v9 + 16))(v12, v15, v8);
  v31 = v45;
  sub_21CB83954();
  (*(v9 + 8))(v15, v30);
  v32 = swift_allocObject();
  v34 = v54;
  v33 = v55;
  *(v32 + 16) = v46;
  *(v32 + 24) = v33;
  v35 = v53;
  *(v32 + 32) = a1;
  *(v32 + 40) = v35;
  *(v32 + 48) = v34;
  *(v32 + 56) = v56;
  v36 = sub_21CB74744(&qword_27CDEB908, MEMORY[0x277CDE470]);
  v61 = v33;
  v62 = v36;
  v37 = a1;

  v38 = v47;
  WitnessTable = swift_getWitnessTable();
  sub_21CB73920(v31, sub_21CB744DC, v32, v50, v38, v49, WitnessTable);
  v60 = WitnessTable;
  v40 = swift_getWitnessTable();
  sub_21CB845C4();
  (*(v51 + 8))(v21, v18);
  v58 = v40;
  v59 = v36;
  v41 = swift_getWitnessTable();
  v42 = v48;
  sub_21C72BE10(v25, v22, v41);
  v43 = *(v52 + 8);
  v43(v25, v22);
  sub_21C72BE10(v42, v22, v41);
  return (v43)(v42, v22);
}

uint64_t sub_21CB73F78@<X0>(void *a1@<X1>, void (*a2)(void *)@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v55 = a6;
  v46 = a4;
  v44[1] = a3;
  v45 = a2;
  v56 = a7;
  v50 = sub_21CB83274();
  v52 = *(v50 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  v48 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(a5 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB83B74();
  v54 = a5;
  v15 = sub_21CB828F4();
  v53 = *(v15 - 8);
  v16 = *(v53 + 64);
  MEMORY[0x28223BE20](v15);
  v49 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v51 = v44 - v19;
  v44[0] = sub_21CB80DD4();
  v20 = *(v44[0] - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v44[0]);
  v23 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF91C8, &qword_21CBCAF70);
  sub_21CB822E4();
  v24 = sub_21CB7FE58();
  v25 = sub_21CB80D24();
  v26 = [a1 codeForDate_];

  v27 = sub_21CB855C4();
  v29 = v28;

  v30 = sub_21CB7FFD4();
  v32 = v31;
  v33 = [a1 codeGenerationPeriod];
  v60[0] = v24;
  v60[1] = v27;
  v60[2] = v29;
  v60[3] = v30;
  v60[4] = v32;
  *&v60[5] = 1.0 - v24 / v33;
  v45(v60);

  if (v46)
  {
    v34 = v48;
    sub_21CB83224();
    v35 = v50;
  }

  else
  {
    v59 = MEMORY[0x277D84F90];
    sub_21CB74744(&qword_27CDF4520, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4528, &unk_21CBBAD40);
    sub_21CB7478C();
    v34 = v48;
    v35 = v50;
    sub_21CB85F14();
  }

  v36 = v49;
  v38 = v54;
  v37 = v55;
  sub_21CB84594();
  (*(v52 + 8))(v34, v35);
  (*(v47 + 8))(v14, v38);
  (*(v20 + 8))(v23, v44[0]);
  v39 = sub_21CB74744(&qword_27CDEB908, MEMORY[0x277CDE470]);
  v57 = v37;
  v58 = v39;
  WitnessTable = swift_getWitnessTable();
  v41 = v51;
  sub_21C72BE10(v36, v15, WitnessTable);
  v42 = *(v53 + 8);
  v42(v36, v15);
  sub_21C72BE10(v41, v15, WitnessTable);
  return (v42)(v41, v15);
}

uint64_t sub_21CB744F0@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a6;
  v30 = a5;
  v27 = a3;
  v28 = a2;
  v26 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF91C8, &qword_21CBCAF70);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  v20 = sub_21CB822F4();
  v22 = *(v20 - 8);
  result = v20 - 8;
  if (*(v22 + 64) == v9)
  {
    (*(v8 + 16))(v11, v26, v7);
    v28(v11);
    (*(v8 + 8))(v11, v7);
    v23 = v30;
    sub_21C72BE10(v16, a4, v30);
    v24 = *(v12 + 8);
    v24(v16, a4);
    sub_21C72BE10(v19, a4, v23);
    return (v24)(v19, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21CB74734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  return sub_21CB744F0(a1, *(v2 + 48), *(v2 + 56), *(v2 + 24), *(v2 + 40), a2);
}

uint64_t sub_21CB74744(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21CB7478C()
{
  result = qword_27CDF4530;
  if (!qword_27CDF4530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4528, &unk_21CBBAD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4530);
  }

  return result;
}

uint64_t sub_21CB74800()
{
  sub_21CB85214();
  sub_21CB82AB4();
  sub_21CB828F4();
  swift_getWitnessTable();
  sub_21CB82AD4();
  sub_21CB828F4();
  sub_21CB74BB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_21CB846F4();
}

uint64_t sub_21CB7495C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27 = a7;
  v28 = a4;
  v25 = a5;
  v26 = a3;
  v29 = a1;
  v30 = a2;
  v31 = a9;
  sub_21CB82AB4();
  sub_21CB828F4();
  v40 = a8;
  v41 = MEMORY[0x277CDFC30];
  swift_getWitnessTable();
  sub_21CB82AD4();
  v11 = sub_21CB828F4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  v32 = v25;
  v33 = a6;
  v34 = v27;
  v35 = a8;
  v36 = v26;
  v37 = v28;
  v19 = sub_21CB74BB4();
  sub_21CB84864();
  WitnessTable = swift_getWitnessTable();
  v38 = v19;
  v39 = WitnessTable;
  v21 = swift_getWitnessTable();
  sub_21C72BE10(v15, v11, v21);
  v22 = *(v12 + 8);
  v22(v15, v11);
  sub_21C72BE10(v18, v11, v21);
  return (v22)(v18, v11);
}

unint64_t sub_21CB74BB4()
{
  result = qword_27CDFAB38;
  if (!qword_27CDFAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAB38);
  }

  return result;
}

uint64_t sub_21CB74C08@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v28 = a1;
  v29 = a4;
  v6 = sub_21CB85284();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a2 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB82AB4();
  v15 = sub_21CB828F4();
  v26 = *(v15 - 8);
  v16 = *(v26 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v26 - v21;
  v28(v20);
  (*(v7 + 104))(v10, *MEMORY[0x277CE13C0], v6);
  sub_21CB849A4();
  (*(v7 + 8))(v10, v6);
  (*(v27 + 8))(v14, a2);
  v30 = a3;
  v31 = MEMORY[0x277CDFC30];
  WitnessTable = swift_getWitnessTable();
  sub_21C72BE10(v18, v15, WitnessTable);
  v24 = *(v26 + 8);
  v24(v18, v15);
  sub_21C72BE10(v22, v15, WitnessTable);
  return (v24)(v22, v15);
}

uint64_t sub_21CB74EF4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  return sub_21CB74C08(*(v1 + 48), *(v1 + 24), *(v1 + 40), a1);
}

uint64_t sub_21CB74F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (MGGetBoolAnswer())
  {
    if (a1 == 1)
    {
      goto LABEL_5;
    }

LABEL_6:
    sub_21CB81014();
    sub_21CB81004();
    (*(v7 + 8))(v13, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D83B88];
    *(v16 + 16) = xmmword_21CBA0690;
    v18 = MEMORY[0x277D83C10];
    *(v16 + 56) = v17;
    *(v16 + 64) = v18;
    *(v16 + 32) = a1;
    goto LABEL_7;
  }

  if (a1 != 1)
  {
    goto LABEL_6;
  }

LABEL_5:
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FF4();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v14(v13, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21CBA0690;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_21C7C0050();
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;

LABEL_7:
  v19 = sub_21CB85594();

  return v19;
}

uint64_t sub_21CB75210()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() currentDevice];
  [v5 deviceClass];

  sub_21CB81014();
  v6 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_21CB75364()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() currentDevice];
  [v5 deviceClass];

  sub_21CB81014();
  v6 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_21CB754B8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() currentDevice];
  [v5 deviceClass];

  sub_21CB81014();
  v6 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_21CB7560C()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() currentDevice];
  [v5 deviceClass];

  sub_21CB81014();
  v6 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v6;
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21CB75784(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CB757CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CB7584C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v46 = sub_21CB83A34();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v46);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAB48, &qword_21CBD01C8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAB50, &qword_21CBD01D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAB58, &qword_21CBD01D8);
  v47 = *(v53 - 8);
  v15 = *(v47 + 64);
  MEMORY[0x28223BE20](v53);
  v17 = &v44 - v16;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAB60, &qword_21CBD01E0);
  v18 = *(v54 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v54);
  v48 = &v44 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAB68, &qword_21CBD01E8);
  v21 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v51 = &v44 - v22;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAB70, &qword_21CBD01F0);
  v23 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v25 = &v44 - v24;
  if (*(a1 + 72))
  {
    sub_21CB75F74(v25);
    sub_21C78FAD8(v25, v51);
    swift_storeEnumTagMultiPayload();
    sub_21CB77714();
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
    v27 = sub_21CB775B0();
    v28 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    v55 = v11;
    v56 = v26;
    v57 = v27;
    v58 = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v55 = v53;
    v56 = v26;
    v57 = OpaqueTypeConformance2;
    v58 = v28;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    return sub_21C6EA794(v25, &qword_27CDFAB70, &qword_21CBD01F0);
  }

  else
  {
    *v10 = sub_21CB83074();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAB78, &unk_21CBD01F8);
    sub_21CB76AB8(a1, &v10[*(v31 + 44)]);
    sub_21CB83A24();
    v45 = v18;
    sub_21C6EADEC(&qword_27CDFAB80, &qword_27CDFAB48, &qword_21CBD01C8);
    sub_21CB844F4();
    (*(v3 + 8))(v6, v46);
    v32 = sub_21C6EA794(v10, &qword_27CDFAB48, &qword_21CBD01C8);
    MEMORY[0x28223BE20](v32);
    *(&v44 - 2) = a1;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
    v34 = sub_21CB775B0();
    v35 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21CB844E4();
    sub_21C6EA794(v14, &qword_27CDFAB50, &qword_21CBD01D0);
    v36 = swift_allocObject();
    v37 = *(a1 + 48);
    v36[3] = *(a1 + 32);
    v36[4] = v37;
    *(v36 + 74) = *(a1 + 58);
    v38 = *(a1 + 16);
    v36[1] = *a1;
    v36[2] = v38;
    sub_21CB776DC(a1, &v55);
    v55 = v11;
    v56 = v33;
    v57 = v34;
    v58 = v35;
    v39 = swift_getOpaqueTypeConformance2();
    v40 = v48;
    v41 = v53;
    sub_21CB848F4();

    (*(v47 + 8))(v17, v41);
    v42 = v45;
    v43 = v54;
    (*(v45 + 16))(v51, v40, v54);
    swift_storeEnumTagMultiPayload();
    sub_21CB77714();
    v55 = v41;
    v56 = v33;
    v57 = v39;
    v58 = v35;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    return (*(v42 + 8))(v40, v43);
  }
}

uint64_t sub_21CB75F74@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFABA8, &qword_21CBD0218);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v61 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE080, &qword_21CBD0220);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v78 = &v61 - v9;
  v10 = sub_21CB81024();
  v71 = *(v10 - 8);
  v11 = *(v71 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v72 = *(v17 - 8);
  v18 = *(v72 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v61 - v19;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF988, &unk_21CBAC958);
  v73 = *(v79 - 8);
  v21 = *(v73 + 64);
  MEMORY[0x28223BE20](v79);
  v23 = &v61 - v22;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFABA0, &qword_21CBD0210);
  v76 = *(v80 - 8);
  v24 = *(v76 + 64);
  MEMORY[0x28223BE20](v80);
  v74 = &v61 - v25;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAB98, &qword_21CBD0208);
  v77 = *(v81 - 8);
  v26 = *(v77 + 64);
  MEMORY[0x28223BE20](v81);
  v75 = &v61 - v27;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFABB0, &unk_21CBD0228);
  v28 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  if (*(v1 + 72) & 1) != 0 && (*(v1 + 73))
  {
    v31 = *(v1 + 40);
    v86 = *(v1 + 24);
    v87 = v31;
    v69 = &v61 - v29;
    v70 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
    sub_21CB84F54();
    v65 = *(&v83 + 1);
    v66 = v83;
    v64 = v84;
    v63 = v85;
    sub_21CB81014();
    sub_21CB81014();
    v32 = sub_21CB80FF4();
    v68 = a1;
    v34 = v33;
    v67 = v3;
    v62 = v23;
    v35 = *(v71 + 8);
    v35(v13, v10);
    v35(v16, v10);
    *&v86 = v32;
    *(&v86 + 1) = v34;
    sub_21C71F3FC();
    sub_21CB84054();
    sub_21CB852F4();
    v36 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
    v37 = v62;
    sub_21CB841E4();
    (*(v72 + 8))(v20, v17);
    *&v86 = v17;
    *(&v86 + 1) = v36;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = v74;
    v40 = v79;
    sub_21CB841D4();
    (*(v73 + 8))(v37, v40);
    v41 = v78;
    sub_21CB83A84();
    v42 = sub_21CB83A94();
    (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
    *&v86 = v40;
    *(&v86 + 1) = OpaqueTypeConformance2;
    v43 = swift_getOpaqueTypeConformance2();
    v44 = v75;
    v45 = v80;
    sub_21CB84664();
    sub_21C6EA794(v41, &qword_27CDEE080, &qword_21CBD0220);
    (*(v76 + 8))(v39, v45);
    *&v86 = v45;
    *(&v86 + 1) = v43;
    v46 = swift_getOpaqueTypeConformance2();
    v47 = v69;
    v48 = v81;
    MEMORY[0x21CF14040](1, v81, v46);
    (*(v77 + 8))(v44, v48);
    v49 = v70;
    v50 = v82;
    (*(v70 + 16))(v6, v47, v82);
    swift_storeEnumTagMultiPayload();
    *&v86 = v48;
    *(&v86 + 1) = v46;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    return (*(v49 + 8))(v47, v50);
  }

  else
  {
    v52 = *(v1 + 40);
    v86 = *(v1 + 24);
    v87 = v52;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
    MEMORY[0x21CF14A20](&v83, v53);
    v86 = v83;
    sub_21C71F3FC();
    *v6 = sub_21CB84054();
    *(v6 + 1) = v54;
    v6[16] = v55 & 1;
    *(v6 + 3) = v56;
    swift_storeEnumTagMultiPayload();
    v57 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
    *&v86 = v17;
    *(&v86 + 1) = v57;
    v58 = swift_getOpaqueTypeConformance2();
    *&v86 = v79;
    *(&v86 + 1) = v58;
    v59 = swift_getOpaqueTypeConformance2();
    *&v86 = v80;
    *(&v86 + 1) = v59;
    v60 = swift_getOpaqueTypeConformance2();
    *&v86 = v81;
    *(&v86 + 1) = v60;
    swift_getOpaqueTypeConformance2();
    return sub_21CB83494();
  }
}

uint64_t sub_21CB76928@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  sub_21CB81014();
  sub_21CB81014();
  v10 = sub_21CB80FF4();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v6, v2);
  v13(v9, v2);
  v18[0] = v10;
  v18[1] = v12;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_21CB76AB8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB82A54();
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFABB8, &qword_21CBD0238);
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFABC0, &qword_21CBD0240);
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  v21 = *(a1 + 40);
  v46[0] = *(a1 + 24);
  v46[1] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  MEMORY[0x21CF14A20](&v47, v22);
  v46[0] = v47;
  sub_21C71F3FC();
  v39 = sub_21CB84054();
  v38 = v23;
  v40 = v24;
  v41 = v25;
  v26 = swift_allocObject();
  v27 = a1[3];
  v26[3] = a1[2];
  v26[4] = v27;
  *(v26 + 74) = *(a1 + 58);
  v28 = a1[1];
  v26[1] = *a1;
  v26[2] = v28;
  v45 = a1;
  sub_21CB776DC(a1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFABC8, &unk_21CBD0248);
  sub_21CB778EC();
  sub_21CB84DA4();
  sub_21CB82A44();
  sub_21C6EADEC(&qword_27CDFABD8, &qword_27CDFABB8, &qword_21CBD0238);
  sub_21CB779A4();
  v37 = v20;
  v29 = v43;
  sub_21CB84124();
  (*(v44 + 8))(v8, v29);
  (*(v42 + 8))(v12, v9);
  v30 = v14[2];
  v30(v17, v20, v13);
  v31 = v39;
  v32 = v38;
  *a2 = v39;
  *(a2 + 8) = v32;
  v33 = v40 & 1;
  *(a2 + 16) = v40 & 1;
  *(a2 + 24) = v41;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFABE0, &qword_21CBD0258);
  v30((a2 + *(v34 + 64)), v17, v13);
  sub_21C79B058(v31, v32, v33);
  v35 = v14[1];

  v35(v37, v13);
  v35(v17, v13);
  sub_21C74A72C(v31, v32, v33);
}

uint64_t sub_21CB76F34(__int128 *a1)
{
  v2 = sub_21CB82F84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v21 - v9;
  v11 = sub_21CB80BE4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 40);
  v22 = *(a1 + 24);
  v23 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  MEMORY[0x21CF14A20](v21, v17);
  *&v22 = 0x2F2F3A7370747468;
  *(&v22 + 1) = 0xE800000000000000;
  MEMORY[0x21CF151F0](v21[0], v21[1]);

  sub_21CB80BD4();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_21C6EA794(v10, &qword_27CDEC300, &qword_21CBA3ED0);
  }

  (*(v12 + 32))(v15, v10, v11);
  v22 = *a1;
  LOBYTE(v23) = *(a1 + 16);
  v19 = v22;
  if (v23 == 1)
  {
  }

  else
  {

    sub_21CB85B04();
    v20 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C6EA794(&v22, &qword_27CDF2F10, &unk_21CBB68B0);
    (*(v3 + 8))(v6, v2);
    v19 = v21[0];
  }

  v19(v15);

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_21CB7727C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);

  v5 = sub_21CB84BB4();
  result = sub_21CB837E4();
  *a2 = v5;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_21CB772CC(_OWORD *a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v15 = v7;
  v16 = v9;
  v10 = swift_allocObject();
  v11 = a1[3];
  v10[3] = a1[2];
  v10[4] = v11;
  *(v10 + 74) = *(a1 + 58);
  v12 = a1[1];
  v10[1] = *a1;
  v10[2] = v12;
  sub_21CB776DC(a1, v14);
  sub_21C71F3FC();
  return sub_21CB84DE4();
}

uint64_t sub_21CB7744C(uint64_t a1)
{
  if (qword_27CDEA480 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_27CE18710;
  v2 = *(a1 + 40);
  v8 = *(a1 + 24);
  v9 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  MEMORY[0x21CF14A20](v7, v3);
  v4 = *(v1 + 16);
  sub_21CADAA84(v7[0], v7[1], 0);
}

uint64_t sub_21CB77504@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v8[0] = v3;
  *(v8 + 10) = *(v1 + 58);
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  *a1 = sub_21CB83074();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAB40, &qword_21CBD01C0);
  return sub_21CB7584C(v7, a1 + *(v5 + 44));
}

unint64_t sub_21CB775B0()
{
  result = qword_27CDFAB88;
  if (!qword_27CDFAB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAB50, &qword_21CBD01D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAB48, &qword_21CBD01C8);
    sub_21C6EADEC(&qword_27CDFAB80, &qword_27CDFAB48, &qword_21CBD01C8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAB88);
  }

  return result;
}

unint64_t sub_21CB77714()
{
  result = qword_27CDFAB90;
  if (!qword_27CDFAB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAB70, &qword_21CBD01F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAB98, &qword_21CBD0208);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFABA0, &qword_21CBD0210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
    sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAB90);
  }

  return result;
}

unint64_t sub_21CB778EC()
{
  result = qword_27CDFABD0;
  if (!qword_27CDFABD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFABC8, &unk_21CBD0248);
    sub_21C6EADEC(&qword_27CDEC730, &qword_27CDEC738, &unk_21CBA6BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFABD0);
  }

  return result;
}

unint64_t sub_21CB779A4()
{
  result = qword_27CDED508;
  if (!qword_27CDED508)
  {
    sub_21CB82A54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED508);
  }

  return result;
}

unint64_t sub_21CB77A6C()
{
  result = qword_27CDFAC00;
  if (!qword_27CDFAC00)
  {
    sub_21C897E98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAC00);
  }

  return result;
}

id sub_21CB77AC4(void *a1)
{
  v1 = a1;
  WBSSavedAccount.recentlyDeletedDetailViewDeleteSectionFooter.getter();

  v2 = sub_21CB85584();

  return v2;
}

uint64_t WBSSavedAccount.recentlyDeletedDetailViewDeleteSectionFooter.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v267 = &v261 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v269 = &v261 - v6;
  MEMORY[0x28223BE20](v7);
  v266 = &v261 - v8;
  MEMORY[0x28223BE20](v9);
  v265 = &v261 - v10;
  v11 = sub_21CB85C44();
  v12 = *(v11 - 8);
  v270 = v11;
  v271 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v264 = &v261 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v268 = &v261 - v16;
  MEMORY[0x28223BE20](v17);
  v263 = &v261 - v18;
  MEMORY[0x28223BE20](v19);
  v262 = &v261 - v20;
  v21 = sub_21CB81024();
  v22 = *(v21 - 8);
  v278 = v21;
  v279 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v274 = &v261 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v275 = &v261 - v26;
  MEMORY[0x28223BE20](v27);
  v276 = &v261 - v28;
  MEMORY[0x28223BE20](v29);
  v277 = &v261 - v30;
  MEMORY[0x28223BE20](v31);
  v286 = &v261 - v32;
  MEMORY[0x28223BE20](v33);
  v287 = &v261 - v34;
  v35 = sub_21CB80F14();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v261 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_21CB80F24();
  v280 = *(v40 - 8);
  v281 = v40;
  v41 = *(v280 + 64);
  MEMORY[0x28223BE20](v40);
  v43 = &v261 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v47 = &v261 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v283 = &v261 - v49;
  v289 = sub_21CB80DD4();
  v50 = *(v289 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v289);
  v53 = &v261 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v56 = &v261 - v55;
  MEMORY[0x28223BE20](v57);
  v288 = &v261 - v58;
  v285 = [objc_opt_self() recentlyDeletedExpirationTimeInDays];
  sub_21CB80F04();
  v59 = *MEMORY[0x277CC9968];
  v282 = v36;
  v60 = v35;
  (*(v36 + 104))(v39, v59, v35);
  v284 = v1;
  v61 = [v1 lastModifiedDate];
  if (v61)
  {
    v62 = v61;
    sub_21CB80D94();

    v63 = v289;
    v64 = *(v50 + 32);
    v64(v47, v53, v289);
    (*(v50 + 56))(v47, 0, 1, v63);
    v64(v56, v47, v63);
  }

  else
  {
    v65 = v289;
    (*(v50 + 56))(v47, 1, 1, v289);
    v66 = [objc_opt_self() now];
    sub_21CB80D94();

    if ((*(v50 + 48))(v47, 1, v65) != 1)
    {
      sub_21C6EA794(v47, &unk_27CDED250, &qword_21CBA64C0);
    }
  }

  v67 = v283;
  sub_21CB80EF4();
  v69 = v50 + 8;
  v68 = *(v50 + 8);
  v70 = v289;
  v68(v56, v289);
  (*(v282 + 8))(v39, v60);
  (*(v280 + 8))(v43, v281);
  v71 = *(v50 + 48);
  if (v71(v67, 1, v70) == 1)
  {
    v72 = [objc_opt_self() now];
    sub_21CB80D94();

    v73 = v71(v67, 1, v289);
    v74 = v284;
    if (v73 != 1)
    {
      sub_21C6EA794(v67, &unk_27CDED250, &qword_21CBA64C0);
    }
  }

  else
  {
    (*(v50 + 32))(v288, v67, v289);
    v74 = v284;
  }

  sub_21CB80DA4();
  v75 = sub_21CB80D24();
  v68(v53, v289);
  v76 = sub_21CB80D24();
  v77 = [v75 safari:v76 numberOfDaysUntilDate:?];

  v78 = (v77 + 1);
  if (__OFADD__(v77, 1))
  {
    __break(1u);
LABEL_72:
    swift_once();
LABEL_34:
    v95 = sub_21CB81C84();
    __swift_project_value_buffer(v95, qword_27CE186E0);
    v96 = sub_21CB81C64();
    v97 = sub_21CB85AF4();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 134217984;
      *(v98 + 4) = v285;
      _os_log_impl(&dword_21C6E5000, v96, v97, "FileVault Recovery Key displayed a credential older than %ld days in Recently Deleted.", v98, 0xCu);
      MEMORY[0x21CF16D90](v98, -1, -1);
    }

LABEL_51:

    v108 = v287;
    sub_21CB81014();
    v109 = sub_21CB81004();
    (*(v279 + 8))(v108, v278);
    goto LABEL_70;
  }

  v79 = [v74 credentialTypes];
  if ((v79 - 8) >= 2)
  {
    if (v79 == 1)
    {
      if (v78 > 0)
      {
        v285 = v77 + 1;
        v272 = v68;
        v273 = v69;
        if ([v74 isSavedInSharedGroup] && (objc_msgSend(v74, sel_isCurrentUserOriginalContributor) & 1) == 0)
        {
          v88 = v265;
          sub_21CB85B94();
          v90 = v270;
          v89 = v271;
          if ((*(v271 + 48))(v88, 1, v270) == 1)
          {
            sub_21C6EA794(v88, &unk_27CDF20B0, &unk_21CBA0090);
          }

          else
          {
            v158 = v262;
            (*(v89 + 32))(v262, v88, v90);
            v159 = [objc_opt_self() sharedManager];
            v160 = [v74 originalContributorParticipantID];
            sub_21CB85B64();
            v161 = sub_21CB85584();

            v162 = [v159 nameForOriginalContributorParticipantID:v160 inGroupID:v161];

            if (v162)
            {
              v163 = sub_21CB855C4();
              v283 = v164;
              v284 = v163;

              sub_21CB81014();
              sub_21CB81014();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
              v165 = sub_21CB81034();
              v166 = *(v165 - 8);
              v167 = *(v166 + 72);
              v168 = (*(v166 + 80) + 32) & ~*(v166 + 80);
              v169 = swift_allocObject();
              v170 = v277;
              sub_21CB81014();
              v171 = v276;
              sub_21CB81014();
              v172 = v275;
              sub_21CB81014();
              v173 = v274;
              sub_21CB81014();
              sub_21CB80FE4();
              v174 = *(v279 + 8);
              v175 = v173;
              v176 = v278;
              v174(v175, v278);
              v174(v172, v176);
              v174(v171, v176);
              v174(v170, v176);
              swift_setDeallocating();
              (*(v166 + 8))(v169 + v168, v165);
              swift_deallocClassInstance();
              v177 = v287;
              sub_21CB81004();
              v174(v286, v176);
              v174(v177, v176);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
              v178 = swift_allocObject();
              *(v178 + 16) = xmmword_21CBA15B0;
              v179 = MEMORY[0x277D83C10];
              *(v178 + 56) = MEMORY[0x277D83B88];
              *(v178 + 64) = v179;
              *(v178 + 32) = v285;
              *(v178 + 96) = MEMORY[0x277D837D0];
              *(v178 + 104) = sub_21C7C0050();
              v180 = v283;
              *(v178 + 72) = v284;
              *(v178 + 80) = v180;
              v109 = sub_21CB85594();

              (*(v271 + 8))(v262, v270);
              goto LABEL_69;
            }

            (*(v271 + 8))(v158, v90);
          }
        }

        sub_21CB81014();
        sub_21CB81014();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
        v234 = sub_21CB81034();
        v235 = *(v234 - 8);
        v236 = *(v235 + 72);
        v237 = (*(v235 + 80) + 32) & ~*(v235 + 80);
        v238 = swift_allocObject();
        v239 = v277;
        sub_21CB81014();
        v240 = v276;
        sub_21CB81014();
        v241 = v275;
        sub_21CB81014();
        v242 = v274;
        sub_21CB81014();
        sub_21CB80FE4();
        v243 = *(v279 + 8);
        v244 = v242;
        v245 = v278;
        v243(v244, v278);
        v243(v241, v245);
        v243(v240, v245);
        v243(v239, v245);
        swift_setDeallocating();
        (*(v235 + 8))(v238 + v237, v234);
        swift_deallocClassInstance();
        v246 = v287;
        sub_21CB81004();
        v243(v286, v245);
        v243(v246, v245);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v247 = swift_allocObject();
        v248 = MEMORY[0x277D83B88];
        *(v247 + 16) = xmmword_21CBA0690;
        v249 = MEMORY[0x277D83C10];
        *(v247 + 56) = v248;
        *(v247 + 64) = v249;
        *(v247 + 32) = v285;
        v109 = sub_21CB85594();

        goto LABEL_69;
      }

      if (qword_27CDEA470 != -1)
      {
        swift_once();
      }

      v102 = sub_21CB81C84();
      __swift_project_value_buffer(v102, qword_27CE186E0);
      v96 = sub_21CB81C64();
      v103 = sub_21CB85AF4();
      if (os_log_type_enabled(v96, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 134217984;
        *(v104 + 4) = v285;
        _os_log_impl(&dword_21C6E5000, v96, v103, "Passwords displayed a credential older than %ld days in Recently Deleted.", v104, 0xCu);
        MEMORY[0x21CF16D90](v104, -1, -1);
      }
    }

    else if (v79 == 2)
    {
      if (v78 > 0)
      {
        v285 = v77 + 1;
        v272 = v68;
        v80 = [v74 isSavedInSharedGroup];
        v273 = v69;
        if (!v80 || ([v74 isCurrentUserOriginalContributor] & 1) != 0)
        {
          goto LABEL_63;
        }

        v81 = v266;
        sub_21CB85B94();
        v83 = v270;
        v82 = v271;
        if ((*(v271 + 48))(v81, 1, v270) == 1)
        {
          sub_21C6EA794(v81, &unk_27CDF20B0, &unk_21CBA0090);
LABEL_63:
          sub_21CB81014();
          sub_21CB81014();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
          v221 = sub_21CB81034();
          v222 = *(v221 - 8);
          v223 = *(v222 + 72);
          v224 = (*(v222 + 80) + 32) & ~*(v222 + 80);
          v225 = swift_allocObject();
          v226 = v277;
          sub_21CB81014();
          v227 = v276;
          sub_21CB81014();
          v228 = v275;
          sub_21CB81014();
          v229 = v274;
          sub_21CB81014();
          sub_21CB80FE4();
          v230 = *(v279 + 8);
          v231 = v229;
          v232 = v278;
          v230(v231, v278);
          v230(v228, v232);
          v230(v227, v232);
          v233 = v226;
LABEL_68:
          v230(v233, v232);
          swift_setDeallocating();
          (*(v222 + 8))(v225 + v224, v221);
          swift_deallocClassInstance();
          v256 = v287;
          sub_21CB81004();
          v230(v286, v232);
          v230(v256, v232);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
          v257 = swift_allocObject();
          v258 = MEMORY[0x277D83B88];
          *(v257 + 16) = xmmword_21CBA0690;
          v259 = MEMORY[0x277D83C10];
          *(v257 + 56) = v258;
          *(v257 + 64) = v259;
          *(v257 + 32) = v285;
          v109 = sub_21CB85594();

          goto LABEL_69;
        }

        v134 = v81;
        v135 = v263;
        (*(v82 + 32))(v263, v134, v83);
        v136 = [objc_opt_self() sharedManager];
        v137 = [v74 originalContributorParticipantID];
        sub_21CB85B64();
        v138 = sub_21CB85584();

        v139 = [v136 nameForOriginalContributorParticipantID:v137 inGroupID:v138];

        if (!v139)
        {
          (*(v271 + 8))(v135, v83);
          goto LABEL_63;
        }

        v140 = sub_21CB855C4();
        v283 = v141;
        v284 = v140;

        sub_21CB81014();
        sub_21CB81014();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
        v142 = sub_21CB81034();
        v143 = *(v142 - 8);
        v144 = *(v143 + 72);
        v145 = (*(v143 + 80) + 32) & ~*(v143 + 80);
        v146 = swift_allocObject();
        v147 = v277;
        sub_21CB81014();
        v148 = v276;
        sub_21CB81014();
        v149 = v275;
        sub_21CB81014();
        v150 = v274;
        sub_21CB81014();
        sub_21CB80FE4();
        v151 = *(v279 + 8);
        v152 = v150;
        v153 = v278;
        v151(v152, v278);
        v151(v149, v153);
        v151(v148, v153);
        v151(v147, v153);
        swift_setDeallocating();
        (*(v143 + 8))(v146 + v145, v142);
        swift_deallocClassInstance();
        v154 = v287;
        sub_21CB81004();
        v151(v286, v153);
        v151(v154, v153);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v155 = swift_allocObject();
        *(v155 + 16) = xmmword_21CBA15B0;
        v156 = MEMORY[0x277D83C10];
        *(v155 + 56) = MEMORY[0x277D83B88];
        *(v155 + 64) = v156;
        *(v155 + 32) = v285;
        *(v155 + 96) = MEMORY[0x277D837D0];
        *(v155 + 104) = sub_21C7C0050();
        v157 = v283;
        *(v155 + 72) = v284;
        *(v155 + 80) = v157;
        v109 = sub_21CB85594();

        (*(v271 + 8))(v263, v270);
LABEL_69:
        v68 = v272;
        goto LABEL_70;
      }

      if (qword_27CDEA470 != -1)
      {
        swift_once();
      }

      v99 = sub_21CB81C84();
      __swift_project_value_buffer(v99, qword_27CE186E0);
      v96 = sub_21CB81C64();
      v100 = sub_21CB85AF4();
      if (os_log_type_enabled(v96, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 134217984;
        *(v101 + 4) = v285;
        _os_log_impl(&dword_21C6E5000, v96, v100, "Passwords displayed a credential older than %ld days in Recently Deleted.", v101, 0xCu);
        MEMORY[0x21CF16D90](v101, -1, -1);
      }
    }

    else
    {
      if (v78 > 0)
      {
        v285 = v77 + 1;
        v272 = v68;
        v91 = [v74 isSavedInSharedGroup];
        v273 = v69;
        if (v91 && ([v74 isCurrentUserOriginalContributor] & 1) == 0)
        {
          v92 = v267;
          sub_21CB85B94();
          v94 = v270;
          v93 = v271;
          if ((*(v271 + 48))(v92, 1, v270) == 1)
          {
            sub_21C6EA794(v92, &unk_27CDF20B0, &unk_21CBA0090);
          }

          else
          {
            v181 = v92;
            v182 = v264;
            (*(v93 + 32))(v264, v181, v94);
            v183 = [objc_opt_self() sharedManager];
            v184 = [v74 originalContributorParticipantID];
            sub_21CB85B64();
            v185 = sub_21CB85584();

            v186 = [v183 nameForOriginalContributorParticipantID:v184 inGroupID:v185];

            if (v186)
            {
              v187 = sub_21CB855C4();
              v283 = v188;
              v284 = v187;

              sub_21CB81014();
              sub_21CB81014();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
              v189 = sub_21CB81034();
              v190 = *(v189 - 8);
              v191 = *(v190 + 72);
              v192 = (*(v190 + 80) + 32) & ~*(v190 + 80);
              v193 = swift_allocObject();
              v194 = v277;
              sub_21CB81014();
              v195 = v276;
              sub_21CB81014();
              v196 = v275;
              sub_21CB81014();
              v197 = v274;
              sub_21CB81014();
              sub_21CB80FE4();
              v198 = *(v279 + 8);
              v199 = v197;
              v200 = v278;
              v198(v199, v278);
              v198(v196, v200);
              v198(v195, v200);
              v198(v194, v200);
              swift_setDeallocating();
              (*(v190 + 8))(v193 + v192, v189);
              swift_deallocClassInstance();
              v201 = v287;
              sub_21CB81004();
              v198(v286, v200);
              v198(v201, v200);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
              v202 = swift_allocObject();
              *(v202 + 16) = xmmword_21CBA15B0;
              v203 = MEMORY[0x277D83C10];
              *(v202 + 56) = MEMORY[0x277D83B88];
              *(v202 + 64) = v203;
              *(v202 + 32) = v285;
              *(v202 + 96) = MEMORY[0x277D837D0];
              *(v202 + 104) = sub_21C7C0050();
              v204 = v283;
              *(v202 + 72) = v284;
              *(v202 + 80) = v204;
              v109 = sub_21CB85594();

              (*(v271 + 8))(v264, v270);
              goto LABEL_69;
            }

            (*(v271 + 8))(v182, v94);
          }
        }

        sub_21CB81014();
        sub_21CB81014();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
        v221 = sub_21CB81034();
        v222 = *(v221 - 8);
        v250 = *(v222 + 72);
        v224 = (*(v222 + 80) + 32) & ~*(v222 + 80);
        v225 = swift_allocObject();
        v251 = v277;
        sub_21CB81014();
        v252 = v276;
        sub_21CB81014();
        v253 = v275;
        sub_21CB81014();
        v254 = v274;
        sub_21CB81014();
        sub_21CB80FE4();
        v230 = *(v279 + 8);
        v255 = v254;
        v232 = v278;
        v230(v255, v278);
        v230(v253, v232);
        v230(v252, v232);
        v233 = v251;
        goto LABEL_68;
      }

      if (qword_27CDEA470 != -1)
      {
        swift_once();
      }

      v105 = sub_21CB81C84();
      __swift_project_value_buffer(v105, qword_27CE186E0);
      v96 = sub_21CB81C64();
      v106 = sub_21CB85AF4();
      if (os_log_type_enabled(v96, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 134217984;
        *(v107 + 4) = v285;
        _os_log_impl(&dword_21C6E5000, v96, v106, "Passwords displayed a credential older than %ld days in Recently Deleted.", v107, 0xCu);
        MEMORY[0x21CF16D90](v107, -1, -1);
      }
    }

    goto LABEL_51;
  }

  if (v78 <= 0)
  {
    if (qword_27CDEA470 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

  v273 = v69;
  v285 = v77 + 1;
  v84 = [v74 isSavedInSharedGroup];
  v272 = v68;
  if (v84 && ([v74 isCurrentUserOriginalContributor] & 1) == 0)
  {
    v85 = v269;
    sub_21CB85B94();
    v87 = v270;
    v86 = v271;
    if ((*(v271 + 48))(v85, 1, v270) == 1)
    {
      sub_21C6EA794(v85, &unk_27CDF20B0, &unk_21CBA0090);
    }

    else
    {
      v110 = v268;
      (*(v86 + 32))(v268, v85, v87);
      v111 = v86;
      v112 = [objc_opt_self() sharedManager];
      v113 = [v74 originalContributorParticipantID];
      sub_21CB85B64();
      v114 = sub_21CB85584();

      v115 = [v112 nameForOriginalContributorParticipantID:v113 inGroupID:v114];

      if (v115)
      {
        v116 = sub_21CB855C4();
        v283 = v117;
        v284 = v116;

        sub_21CB81014();
        sub_21CB81014();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
        v118 = sub_21CB81034();
        v119 = *(v118 - 8);
        v120 = *(v119 + 72);
        v121 = (*(v119 + 80) + 32) & ~*(v119 + 80);
        v122 = swift_allocObject();
        v123 = v277;
        sub_21CB81014();
        v124 = v276;
        sub_21CB81014();
        v125 = v275;
        sub_21CB81014();
        v126 = v274;
        sub_21CB81014();
        sub_21CB80FE4();
        v127 = *(v279 + 8);
        v128 = v126;
        v129 = v278;
        v127(v128, v278);
        v127(v125, v129);
        v127(v124, v129);
        v127(v123, v129);
        swift_setDeallocating();
        (*(v119 + 8))(v122 + v121, v118);
        swift_deallocClassInstance();
        v130 = v287;
        sub_21CB81004();
        v127(v286, v129);
        v127(v130, v129);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v131 = swift_allocObject();
        *(v131 + 16) = xmmword_21CBA15B0;
        v132 = MEMORY[0x277D83C10];
        *(v131 + 56) = MEMORY[0x277D83B88];
        *(v131 + 64) = v132;
        *(v131 + 32) = v285;
        *(v131 + 96) = MEMORY[0x277D837D0];
        *(v131 + 104) = sub_21C7C0050();
        v133 = v283;
        *(v131 + 72) = v284;
        *(v131 + 80) = v133;
        v109 = sub_21CB85594();

        (*(v271 + 8))(v268, v270);
        goto LABEL_69;
      }

      (*(v111 + 8))(v110, v87);
    }
  }

  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v205 = sub_21CB81034();
  v206 = *(v205 - 8);
  v207 = *(v206 + 72);
  v208 = (*(v206 + 80) + 32) & ~*(v206 + 80);
  v209 = swift_allocObject();
  v210 = v277;
  sub_21CB81014();
  v211 = v276;
  sub_21CB81014();
  v212 = v275;
  sub_21CB81014();
  v213 = v274;
  sub_21CB81014();
  sub_21CB80FE4();
  v214 = *(v279 + 8);
  v215 = v213;
  v216 = v278;
  v214(v215, v278);
  v214(v212, v216);
  v214(v211, v216);
  v214(v210, v216);
  swift_setDeallocating();
  (*(v206 + 8))(v209 + v208, v205);
  swift_deallocClassInstance();
  v217 = v287;
  sub_21CB81004();
  v214(v286, v216);
  v214(v217, v216);
  v68 = v272;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v218 = swift_allocObject();
  v219 = MEMORY[0x277D83B88];
  *(v218 + 16) = xmmword_21CBA0690;
  v220 = MEMORY[0x277D83C10];
  *(v218 + 56) = v219;
  *(v218 + 64) = v220;
  *(v218 + 32) = v285;
  v109 = sub_21CB85594();

LABEL_70:
  v68(v288, v289);
  return v109;
}

double sub_21CB7A264@<D0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, *&v20[0]);

  type metadata accessor for PMAccountsState();
  sub_21C706330(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v7 = sub_21CB82674();
  v9 = v8;

  a1[2] = v7;
  a1[3] = v9;
  v10 = type metadata accessor for PMSecurityRecommendationPlatter();
  v11 = v10[6];
  *(a1 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v12 = v10[7];
  *(a1 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v13 = v10[8];
  *&v20[0] = 0x4079000000000000;
  sub_21CA468F4();

  sub_21CB82244();
  v14 = a1 + v10[9];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C706330(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);

  *a1 = sub_21CB82674();
  a1[1] = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v16 = *v5;
  v17 = v5[1];

  sub_21C7199C0(v5, type metadata accessor for PMAccount);
  sub_21C832578(v16, v17, v20);

  sub_21C7D33F0(*v14, *(v14 + 1), *(v14 + 2), *(v14 + 3));
  result = *v20;
  v19 = v20[1];
  *v14 = v20[0];
  *(v14 + 1) = v19;
  return result;
}

uint64_t type metadata accessor for PMSecurityRecommendationPlatter()
{
  result = qword_27CDFAC10;
  if (!qword_27CDFAC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CB7A5F4()
{
  sub_21C940C08();
  if (v0 <= 0x3F)
  {
    sub_21C705CFC();
    if (v1 <= 0x3F)
    {
      sub_21C7086F8();
      if (v2 <= 0x3F)
      {
        sub_21C721A6C();
        if (v3 <= 0x3F)
        {
          sub_21CB7A6D8();
          if (v4 <= 0x3F)
          {
            sub_21CB7A734();
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

void sub_21CB7A6D8()
{
  if (!qword_27CDFAC20)
  {
    sub_21CA468F4();
    v0 = sub_21CB82264();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDFAC20);
    }
  }
}

void sub_21CB7A734()
{
  if (!qword_27CDEB2F0)
  {
    v0 = sub_21CB85E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEB2F0);
    }
  }
}

uint64_t sub_21CB7A7A0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC28, &qword_21CBD0488);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC30, &qword_21CBD0490);
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for PMSecurityRecommendationPlatter();
  v15 = (v1 + *(v14 + 36));
  v16 = v15[1];
  if (v16)
  {
    v48 = v7;
    v44 = v3;
    v17 = v15[3];
    v45 = v15[2];
    v46 = *v15;
    MEMORY[0x28223BE20](v14);

    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC38, &qword_21CBD0498);
    v47 = a1;
    sub_21C6EADEC(&qword_27CDFAC40, &qword_27CDFAC38, &qword_21CBD0498);
    sub_21CB85054();
    v19 = sub_21CB83CF4();
    sub_21CB81F24();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC48, &qword_21CBD04A0) + 36)];
    *v28 = v19;
    *(v28 + 1) = v21;
    *(v28 + 2) = v23;
    *(v28 + 3) = v25;
    *(v28 + 4) = v27;
    v28[40] = 0;
    v29 = sub_21CB83D04();
    sub_21CB81F24();
    v30 = &v6[*(v44 + 36)];
    *v30 = v29;
    *(v30 + 1) = v31;
    *(v30 + 2) = v32;
    *(v30 + 3) = v33;
    *(v30 + 4) = v34;
    v30[40] = 0;
    sub_21CB85214();
    sub_21CB82AC4();
    sub_21C7D33F0(v46, v16, v45, v17);
    sub_21C716934(v6, v10, &qword_27CDFAC28, &qword_21CBD0488);
    v35 = v48;
    v36 = &v10[*(v48 + 36)];
    v37 = v55;
    *(v36 + 4) = v54;
    *(v36 + 5) = v37;
    *(v36 + 6) = v56;
    v38 = v51;
    *v36 = v50;
    *(v36 + 1) = v38;
    v39 = v53;
    *(v36 + 2) = v52;
    *(v36 + 3) = v39;
    sub_21C716934(v10, v13, &qword_27CDFAC30, &qword_21CBD0490);
    v40 = v47;
    sub_21C716934(v13, v47, &qword_27CDFAC30, &qword_21CBD0490);
    return (*(v49 + 56))(v40, 0, 1, v35);
  }

  else
  {
    v42 = *(v49 + 56);

    return v42(a1, 1, 1, v7);
  }
}

uint64_t sub_21CB7ABD8@<X0>(void *a1@<X4>, uint64_t a2@<X8>)
{
  *a2 = sub_21CB832E4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC50, &qword_21CBD04A8);
  return sub_21CB7AC60(a1, a2 + *(v4 + 44));
}

uint64_t sub_21CB7AC60@<X0>(void *a1@<X4>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC58, &qword_21CBD04B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = type metadata accessor for PMAccountIcon();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  sub_21CB7B210(&v41 - v13);
  v47 = sub_21CB832E4();
  v79 = 0;
  sub_21CB7BCA0(a1, v82);
  *&v78[7] = v82[0];
  *&v78[23] = v82[1];
  *&v78[39] = v82[2];
  *&v78[55] = v82[3];
  v45 = v79;
  v15 = *(type metadata accessor for PMSecurityRecommendationPlatter() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC08, &qword_21CBD0408);
  sub_21CB82254();
  sub_21CB85214();
  sub_21CB82AC4();
  KeyPath = swift_getKeyPath();
  v44 = KeyPath;
  v43 = sub_21CB83CF4();
  sub_21CB81F24();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v80 = 0;
  LOBYTE(a1) = sub_21CB83D04();
  sub_21CB81F24();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v81 = 0;
  sub_21CB7BEAC(v8);
  v33 = v49;
  sub_21CB7E298(v14, v49, type metadata accessor for PMAccountIcon);
  v34 = v48;
  sub_21C6EDBAC(v8, v48, &qword_27CDFAC58, &qword_21CBD04B0);
  v42 = v8;
  v35 = v46;
  sub_21CB7E298(v33, v46, type metadata accessor for PMAccountIcon);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC60, &qword_21CBD04E8);
  v37 = *(v36 + 48);
  *(&v57[4] + 1) = *&v78[16];
  *(&v57[6] + 1) = *&v78[32];
  *(&v57[8] + 1) = *&v78[48];
  *(&v57[2] + 1) = *v78;
  *&v57[11] = v50;
  *&v57[13] = v51;
  *&v57[17] = v53;
  *&v57[19] = v54;
  *&v57[21] = v55;
  *&v57[23] = v56;
  v38 = v47;
  v57[0] = v47;
  v57[1] = 0x4010000000000000;
  v39 = v45;
  LOBYTE(v57[2]) = v45;
  *&v57[15] = v52;
  v57[10] = *&v78[63];
  v57[25] = KeyPath;
  LOBYTE(v57[26]) = 1;
  LOBYTE(KeyPath) = v43;
  LOBYTE(v57[27]) = v43;
  v57[28] = v18;
  v57[29] = v20;
  v57[30] = v22;
  v57[31] = v24;
  LOBYTE(v57[32]) = 0;
  LOBYTE(v57[33]) = a1;
  v57[34] = v26;
  v57[35] = v28;
  v57[36] = v30;
  v57[37] = v32;
  LOBYTE(v57[38]) = 0;
  memcpy((v35 + v37), v57, 0x131uLL);
  sub_21C6EDBAC(v34, v35 + *(v36 + 64), &qword_27CDFAC58, &qword_21CBD04B0);
  sub_21C6EDBAC(v57, v58, &qword_27CDFAC68, &qword_21CBD04F0);
  sub_21C6EA794(v42, &qword_27CDFAC58, &qword_21CBD04B0);
  sub_21C7199C0(v14, type metadata accessor for PMAccountIcon);
  sub_21C6EA794(v34, &qword_27CDFAC58, &qword_21CBD04B0);
  v61 = *&v78[16];
  v62 = *&v78[32];
  *v63 = *&v78[48];
  v60 = *v78;
  *&v63[71] = v53;
  *&v63[87] = v54;
  *&v63[103] = v55;
  *&v63[119] = v56;
  *&v63[23] = v50;
  *&v63[39] = v51;
  v58[0] = v38;
  v58[1] = 0x4010000000000000;
  v59 = v39;
  *&v63[55] = v52;
  *&v63[15] = *&v78[63];
  v64 = v44;
  v65 = 1;
  v66 = KeyPath;
  v67 = v18;
  v68 = v20;
  v69 = v22;
  v70 = v24;
  v71 = 0;
  v72 = a1;
  v73 = v26;
  v74 = v28;
  v75 = v30;
  v76 = v32;
  v77 = 0;
  sub_21C6EA794(v58, &qword_27CDFAC68, &qword_21CBD04F0);
  return sub_21C7199C0(v49, type metadata accessor for PMAccountIcon);
}

double sub_21CB7B210@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v83 - v8;
  v10 = sub_21CB80E34();
  v89 = *(v10 - 8);
  v90 = v10;
  v11 = *(v89 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v88 = &v83 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v91 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v83 - v20;
  v22 = type metadata accessor for PMAccount(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v83 - v27;
  v29 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v93 != 1)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v30 = v93;

  v31 = HIBYTE(*(&v30 + 1)) & 0xFLL;
  if ((*(&v30 + 1) & 0x2000000000000000) == 0)
  {
    v31 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v87 = *(&v93 + 1);
    v91 = v93;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v32 = PMAccount.userVisibleDomain.getter();
    v85 = v33;
    v86 = v32;
    sub_21C7199C0(v28, type metadata accessor for PMAccount);
    v34 = sub_21CB85B74();
    v35 = *(*(v34 - 8) + 56);
    v35(v21, 1, 1, v34);
    KeyPath = swift_getKeyPath();
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(KeyPath, v93);

    type metadata accessor for PMAccountsState();
    sub_21C706330(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
    v37 = sub_21CB82674();
    v39 = v38;

    *a1 = v37;
    *(a1 + 8) = v39;
    *(a1 + 16) = swift_getKeyPath();
    *(a1 + 24) = swift_getKeyPath();
    *(a1 + 32) = swift_getKeyPath();
    v92 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA08, &qword_21CBA2A40);
    sub_21CB84D44();
    *(a1 + 40) = v93;
    v40 = type metadata accessor for PMAccountIcon();
    v41 = v40[11];
    v35((a1 + v41), 1, 1, v34);
    v42 = v40[16];
    v43 = a1 + v40[17];
    *v43 = sub_21C7E79A0;
    *(v43 + 8) = 0;
    *(v43 + 16) = 0;
    v44 = v40[18];
    v45 = v88;
    sub_21CB80E24();
    v47 = v89;
    v46 = v90;
    (*(v89 + 16))(v13, v45, v90);
    sub_21CB84D44();
    (*(v47 + 8))(v45, v46);
    v49 = v86;
    v48 = v87;
    *(a1 + 56) = v91;
    *(a1 + 64) = v48;
    v50 = v85;
    *(a1 + 72) = v49;
    *(a1 + 80) = v50;
    v51 = a1 + v41;
    v52 = v21;
  }

  else
  {
LABEL_8:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    PMAccount.signInWithAppleAccount.getter(v9);
    v53 = type metadata accessor for PMSignInWithAppleAccount();
    v54 = *(*(v53 - 8) + 48);
    if (v54(v9, 1, v53) == 1)
    {
      sub_21C6EA794(v9, &qword_27CDEB2A8, &qword_21CBA1670);
      v55 = PMAccount.titleForSorting.getter();
      v86 = v56;
      v87 = v55;
    }

    else
    {
      v57 = &v9[*(v53 + 24)];
      v58 = *v57;
      v86 = *(v57 + 1);
      v87 = v58;

      sub_21C7199C0(v9, type metadata accessor for PMSignInWithAppleAccount);
    }

    v59 = PMAccount.userVisibleDomain.getter();
    v84 = v60;
    v85 = v59;
    PMAccount.signInWithAppleAccount.getter(v6);
    if (v54(v6, 1, v53) == 1)
    {
      sub_21C6EA794(v6, &qword_27CDEB2A8, &qword_21CBA1670);
      v61 = sub_21CB85B74();
      (*(*(v61 - 8) + 56))(v91, 1, 1, v61);
    }

    else
    {
      v62 = *(v53 + 20);
      v63 = sub_21CB85B74();
      v64 = *(v63 - 8);
      v65 = &v6[v62];
      v66 = v91;
      (*(v64 + 16))(v91, v65, v63);
      sub_21C7199C0(v6, type metadata accessor for PMSignInWithAppleAccount);
      (*(v64 + 56))(v66, 0, 1, v63);
    }

    v67 = swift_getKeyPath();
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(v67, v93);

    type metadata accessor for PMAccountsState();
    sub_21C706330(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
    v68 = sub_21CB82674();
    v70 = v69;

    *a1 = v68;
    *(a1 + 8) = v70;
    *(a1 + 16) = swift_getKeyPath();
    *(a1 + 24) = swift_getKeyPath();
    *(a1 + 32) = swift_getKeyPath();
    v92 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA08, &qword_21CBA2A40);
    sub_21CB84D44();
    *(a1 + 40) = v93;
    v40 = type metadata accessor for PMAccountIcon();
    v71 = v40[11];
    v72 = sub_21CB85B74();
    (*(*(v72 - 8) + 56))(a1 + v71, 1, 1, v72);
    v42 = v40[16];
    v73 = a1 + v40[17];
    *v73 = sub_21C7E79A0;
    *(v73 + 8) = 0;
    *(v73 + 16) = 0;
    v74 = v40[18];
    v75 = v88;
    sub_21CB80E24();
    v76 = v89;
    v77 = v90;
    (*(v89 + 16))(v13, v75, v90);
    sub_21CB84D44();
    (*(v76 + 8))(v75, v77);
    sub_21C7199C0(v25, type metadata accessor for PMAccount);
    v78 = v86;
    *(a1 + 56) = v87;
    *(a1 + 64) = v78;
    v79 = v84;
    *(a1 + 72) = v85;
    *(a1 + 80) = v79;
    v51 = a1 + v71;
    v52 = v91;
  }

  sub_21C805878(v52, v51);
  *(a1 + v40[12]) = 1;
  *(a1 + v40[13]) = 1;
  *(a1 + v40[14]) = 1;
  v80 = a1 + v42;
  v81 = a1 + v40[15];
  *v81 = xmmword_21CBA4340;
  *(v81 + 16) = 0;
  result = 0.0;
  *(v80 + 16) = 0u;
  *(v80 + 32) = 0u;
  *v80 = 0u;
  *(v80 + 48) = 1;
  return result;
}

uint64_t sub_21CB7BCA0@<X0>(id a1@<X3>, uint64_t a2@<X8>)
{
  v3 = [a1 localizedHeadline];
  sub_21CB855C4();

  sub_21C71F3FC();
  v4 = sub_21CB84054();
  v6 = v5;
  v8 = v7;
  sub_21CB83E34();
  v9 = sub_21CB84024();
  v11 = v10;
  v13 = v12;

  sub_21C74A72C(v4, v6, v8 & 1);

  v14 = sub_21CB84014();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_21C74A72C(v9, v11, v13 & 1);

  v21 = [a1 localizedBody];
  sub_21CB855C4();

  v22 = sub_21CB84054();
  v24 = v23;
  v25 = v18 & 1;
  v31 = v18 & 1;
  v27 = v26 & 1;
  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v25;
  *(a2 + 24) = v20;
  *(a2 + 32) = v22;
  *(a2 + 40) = v23;
  *(a2 + 48) = v26 & 1;
  *(a2 + 56) = v28;
  sub_21C79B058(v14, v16, v25);

  sub_21C79B058(v22, v24, v27);

  sub_21C74A72C(v22, v24, v27);

  sub_21C74A72C(v14, v16, v31);
}

uint64_t sub_21CB7BEAC@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC70, &unk_21CBD04F8);
  v2 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v80 - v3;
  v90 = sub_21CB82A54();
  v83 = *(v90 - 8);
  v4 = *(v83 + 64);
  MEMORY[0x28223BE20](v90);
  v87 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for PMSecurityRecommendationPlatter();
  v80 = *(v94 - 8);
  v6 = *(v80 + 64);
  MEMORY[0x28223BE20](v94);
  v81 = v7;
  v82 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v84 = *(v8 - 8);
  v85 = v8;
  v9 = *(v84 + 64);
  MEMORY[0x28223BE20](v8);
  v95 = &v80 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC78, &qword_21CBD0508);
  v11 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v89 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC80, &qword_21CBD0510);
  v97 = *(v13 - 8);
  v98 = v13;
  v14 = *(v97 + 64);
  MEMORY[0x28223BE20](v13);
  v86 = &v80 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC88, &qword_21CBD0518);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v100 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v99 = &v80 - v20;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC90, &qword_21CBD0520);
  v21 = *(v93 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v93);
  v24 = &v80 - v23;
  v25 = type metadata accessor for PMAccount.Storage(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for PMAccount(0);
  v30 = v29 - 8;
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC98, &qword_21CBD0528);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v96 = &v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v102 = &v80 - v38;
  v39 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21CB7E298(&v33[*(v30 + 32)], v28, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7199C0(v33, type metadata accessor for PMAccount);
    sub_21C7199C0(v28, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v40 = *v28;
    v41 = [*v28 hasValidWebsite];

    sub_21C7199C0(v33, type metadata accessor for PMAccount);
    if (v41)
    {
      sub_21CB7C9C8(v24);
      v42 = sub_21CB83D04();
      sub_21CB81F24();
      v43 = v93;
      v44 = &v24[*(v93 + 36)];
      *v44 = v42;
      *(v44 + 1) = v45;
      *(v44 + 2) = v46;
      *(v44 + 3) = v47;
      *(v44 + 4) = v48;
      v44[40] = 0;
      sub_21CB7E228(v24, v102);
      v49 = v43;
      v50 = 0;
      v51 = v99;
      v52 = v95;
      goto LABEL_6;
    }
  }

  v50 = 1;
  v51 = v99;
  v52 = v95;
  v49 = v93;
LABEL_6:
  v53 = 1;
  (*(v21 + 56))(v102, v50, 1, v49);
  v54 = (v1 + *(v94 + 36));
  v55 = v54[1];
  if (v55)
  {
    v56 = *v54;
    v57 = v54[2];
    v58 = v54[3];
    v59 = v82;
    sub_21CB7E298(v1, v82, type metadata accessor for PMSecurityRecommendationPlatter);
    v60 = (*(v80 + 80) + 16) & ~*(v80 + 80);
    v61 = (v81 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v94 = v83 + 8;
    v95 = v56;
    v99 = v57;
    v62 = swift_allocObject();
    sub_21CB7DF70(v59, v62 + v60);
    v63 = v62 + v61;
    *v63 = v56;
    *(v63 + 8) = v55;
    *(v63 + 16) = (v57 & 1) != 0;
    *(v63 + 24) = v58;
    sub_21C7D33AC(v56, v55, v57, v58);

    v64 = v58;
    sub_21CB84DA4();
    v65 = v52;
    v66 = v87;
    sub_21CB82A44();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21C706330(&qword_27CDED508, MEMORY[0x277CDDB18]);
    v68 = v89;
    v67 = v90;
    v69 = v85;
    sub_21CB84124();
    (*v94)(v66, v67);
    (*(v84 + 8))(v65, v69);
    v70 = v68 + *(v88 + 36);
    v71 = *MEMORY[0x277CE0118];
    v72 = sub_21CB831A4();
    (*(*(v72 - 8) + 104))(v70, v71, v72);
    *(v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFACA8, &qword_21CBD0538) + 36)) = 0;
    sub_21C6EDBAC(v68, v91, &qword_27CDFAC78, &qword_21CBD0508);
    swift_storeEnumTagMultiPayload();
    sub_21CB7DFEC();
    v73 = v86;
    sub_21CB83494();
    sub_21C7D33F0(v95, v55, v99, v58);
    sub_21C6EA794(v68, &qword_27CDFAC78, &qword_21CBD0508);
    sub_21C716934(v73, v51, &qword_27CDFAC80, &qword_21CBD0510);
    v53 = 0;
  }

  (*(v97 + 56))(v51, v53, 1, v98);
  v74 = v102;
  v75 = v96;
  sub_21C6EDBAC(v102, v96, &qword_27CDFAC98, &qword_21CBD0528);
  v76 = v100;
  sub_21C6EDBAC(v51, v100, &qword_27CDFAC88, &qword_21CBD0518);
  v77 = v101;
  sub_21C6EDBAC(v75, v101, &qword_27CDFAC98, &qword_21CBD0528);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFACA0, &qword_21CBD0530);
  sub_21C6EDBAC(v76, v77 + *(v78 + 48), &qword_27CDFAC88, &qword_21CBD0518);
  sub_21C6EA794(v51, &qword_27CDFAC88, &qword_21CBD0518);
  sub_21C6EA794(v74, &qword_27CDFAC98, &qword_21CBD0528);
  sub_21C6EA794(v76, &qword_27CDFAC88, &qword_21CBD0518);
  return sub_21C6EA794(v75, &qword_27CDFAC98, &qword_21CBD0528);
}

uint64_t sub_21CB7C9C8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PMChangePasswordOnWebsiteLink();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = &v7[v4[7]];
  sub_21CB81DB4();

  *v7 = swift_getKeyPath();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v10 = &v7[v4[9]];
  v11 = &v7[v4[11]];
  v7[v4[8]] = 0;
  *v10 = 0;
  v10[1] = 0;
  v7[v4[10]] = 1;
  *v11 = 0;
  v11[1] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  LOBYTE(v4) = v16[15];
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  sub_21CB7E298(v7, a1, type metadata accessor for PMChangePasswordOnWebsiteLink);
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFACC0, &qword_21CBD05E0) + 36));
  *v14 = KeyPath;
  v14[1] = sub_21C735744;
  v14[2] = v13;
  return sub_21C7199C0(v7, type metadata accessor for PMChangePasswordOnWebsiteLink);
}

uint64_t sub_21CB7CBB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for PMSecurityRecommendationPlatter();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_21CB858E4();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_21CB7E298(a1, v13, type metadata accessor for PMSecurityRecommendationPlatter);
  sub_21CB858B4();

  v19 = a5;
  v20 = sub_21CB858A4();
  v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v20;
  *(v23 + 24) = v24;
  sub_21CB7DF70(v13, v23 + v21);
  v25 = v23 + v22;
  *v25 = a2;
  *(v25 + 8) = a3;
  *(v25 + 16) = a4;
  *(v25 + 24) = v19;
  sub_21C98B308(0, 0, v17, &unk_21CBD05F0, v23);
}

uint64_t sub_21CB7CDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 314) = a7;
  *(v8 + 96) = a6;
  *(v8 + 104) = a8;
  *(v8 + 80) = a4;
  *(v8 + 88) = a5;
  v9 = sub_21CB823B4();
  *(v8 + 112) = v9;
  v10 = *(v9 - 8);
  *(v8 + 120) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v12 = sub_21CB83834();
  *(v8 + 136) = v12;
  v13 = *(v12 - 8);
  *(v8 + 144) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  *(v8 + 160) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0) - 8) + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = sub_21CB858B4();
  *(v8 + 240) = sub_21CB858A4();
  v19 = sub_21CB85874();
  *(v8 + 248) = v19;
  *(v8 + 256) = v18;

  return MEMORY[0x2822009F8](sub_21CB7CFE8, v19, v18);
}

uint64_t sub_21CB7CFE8()
{
  v1 = v0[29];
  v0[33] = *(v0[10] + 24);
  v0[34] = sub_21CB858A4();
  v3 = sub_21CB85874();
  v0[35] = v3;
  v0[36] = v2;

  return MEMORY[0x2822009F8](sub_21CB7D080, v3, v2);
}

uint64_t sub_21CB7D080()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 314);
  v4 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB000, &unk_21CBB0000);
  inited = swift_initStackObject();
  *(v0 + 296) = inited;
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = v4;
  *(inited + 40) = v1;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v0 + 304) = v7;
  *v7 = v0;
  v7[1] = sub_21CB7D17C;
  v8 = *(v0 + 264);

  return sub_21C833508(inited);
}

uint64_t sub_21CB7D17C()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 296);
  v7 = *v0;

  swift_setDeallocating();
  sub_21C8F1684(v3 + 32);
  v4 = *(v1 + 288);
  v5 = *(v1 + 280);

  return MEMORY[0x2822009F8](sub_21CB7D2C8, v5, v4);
}

uint64_t sub_21CB7D2C8()
{
  v1 = v0[34];

  v2 = v0[31];
  v3 = v0[32];

  return MEMORY[0x2822009F8](sub_21CB7D32C, v2, v3);
}

uint64_t sub_21CB7D32C()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  v8 = *(v0 + 80);

  v63 = type metadata accessor for PMSecurityRecommendationPlatter();
  v64 = *(v63 + 24);
  sub_21C728D50(v2);
  v66 = v6[13];
  v66(v3, *MEMORY[0x277CE0558], v7);
  v65 = v6[7];
  v65(v3, 0, 1, v7);
  v67 = v5;
  v9 = *(v5 + 48);
  sub_21C6EDBAC(v2, v4, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v3, v4 + v9, &qword_27CDEC390, &qword_21CBA40E0);
  v10 = v6[6];
  v68 = v10;
  if (v10(v4, 1, v7) == 1)
  {
    v11 = *(v0 + 224);
    v12 = *(v0 + 136);
    sub_21C6EA794(*(v0 + 216), &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v11, &qword_27CDEC390, &qword_21CBA40E0);
    if (v10(v4 + v9, 1, v12) == 1)
    {
      sub_21C6EA794(*(v0 + 176), &qword_27CDEC390, &qword_21CBA40E0);
      goto LABEL_8;
    }

LABEL_6:
    sub_21C6EA794(*(v0 + 176), &qword_27CDEE530, &unk_21CBA9D80);
    goto LABEL_9;
  }

  v13 = *(v0 + 136);
  sub_21C6EDBAC(*(v0 + 176), *(v0 + 208), &qword_27CDEC390, &qword_21CBA40E0);
  v14 = v10(v4 + v9, 1, v13);
  v15 = *(v0 + 216);
  v62 = *(v0 + 224);
  v16 = *(v0 + 208);
  if (v14 == 1)
  {
    v17 = *(v0 + 136);
    v18 = *(v0 + 144);
    sub_21C6EA794(v15, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v62, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v18 + 8))(v16, v17);
    goto LABEL_6;
  }

  v61 = *(v0 + 176);
  v19 = *(v0 + 144);
  v20 = *(v0 + 152);
  v21 = *(v0 + 136);
  (*(v19 + 32))(v20, v4 + v9, v21);
  sub_21C706330(&qword_27CDEE538, MEMORY[0x277CE0570]);
  v60 = sub_21CB85574();
  v22 = *(v19 + 8);
  v22(v20, v21);
  sub_21C6EA794(v15, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v62, &qword_27CDEC390, &qword_21CBA40E0);
  v22(v16, v21);
  sub_21C6EA794(v61, &qword_27CDEC390, &qword_21CBA40E0);
  if ((v60 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  v23 = *(v0 + 264);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if ((*(v0 + 313) & 1) == 0)
  {
LABEL_9:
    v25 = *(v0 + 192);
    v24 = *(v0 + 200);
    v26 = *(v0 + 168);
    v27 = *(v0 + 136);
    sub_21C728D50(v24);
    v66(v25, *MEMORY[0x277CE0560], v27);
    v65(v25, 0, 1, v27);
    v28 = *(v67 + 48);
    sub_21C6EDBAC(v24, v26, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EDBAC(v25, v26 + v28, &qword_27CDEC390, &qword_21CBA40E0);
    if (v68(v26, 1, v27) == 1)
    {
      v29 = *(v0 + 200);
      v30 = *(v0 + 136);
      sub_21C6EA794(*(v0 + 192), &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v29, &qword_27CDEC390, &qword_21CBA40E0);
      if (v68(v26 + v28, 1, v30) == 1)
      {
        sub_21C6EA794(*(v0 + 168), &qword_27CDEC390, &qword_21CBA40E0);
        goto LABEL_16;
      }
    }

    else
    {
      v31 = *(v0 + 136);
      sub_21C6EDBAC(*(v0 + 168), *(v0 + 184), &qword_27CDEC390, &qword_21CBA40E0);
      v32 = v68(v26 + v28, 1, v31);
      v34 = *(v0 + 192);
      v33 = *(v0 + 200);
      v35 = *(v0 + 184);
      if (v32 != 1)
      {
        v69 = *(v0 + 168);
        v38 = *(v0 + 144);
        v39 = *(v0 + 152);
        v40 = *(v0 + 136);
        (*(v38 + 32))(v39, v26 + v28, v40);
        sub_21C706330(&qword_27CDEE538, MEMORY[0x277CE0570]);
        v41 = sub_21CB85574();
        v42 = *(v38 + 8);
        v42(v39, v40);
        sub_21C6EA794(v34, &qword_27CDEC390, &qword_21CBA40E0);
        sub_21C6EA794(v33, &qword_27CDEC390, &qword_21CBA40E0);
        v42(v35, v40);
        sub_21C6EA794(v69, &qword_27CDEC390, &qword_21CBA40E0);
        if ((v41 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_16:
        v43 = *(v0 + 264);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        if (*(v0 + 312))
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v36 = *(v0 + 136);
      v37 = *(v0 + 144);
      sub_21C6EA794(*(v0 + 192), &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v33, &qword_27CDEC390, &qword_21CBA40E0);
      (*(v37 + 8))(v35, v36);
    }

    sub_21C6EA794(*(v0 + 168), &qword_27CDEE530, &unk_21CBA9D80);
    goto LABEL_18;
  }

LABEL_17:
  v44 = *(v0 + 120);
  v45 = *(v0 + 128);
  v46 = *(v0 + 112);
  v47 = *(v0 + 80) + *(v63 + 28);
  sub_21C95B2C8(v45);
  sub_21CB823A4();
  (*(v44 + 8))(v45, v46);
LABEL_18:
  v49 = *(v0 + 216);
  v48 = *(v0 + 224);
  v51 = *(v0 + 200);
  v50 = *(v0 + 208);
  v53 = *(v0 + 184);
  v52 = *(v0 + 192);
  v55 = *(v0 + 168);
  v54 = *(v0 + 176);
  v56 = *(v0 + 152);
  v57 = *(v0 + 128);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_21CB7DAD0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  sub_21CB81014();
  sub_21CB81014();
  v10 = sub_21CB80FF4();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v6, v2);
  v13(v9, v2);
  v26[2] = v10;
  v26[3] = v12;
  sub_21C71F3FC();
  v14 = sub_21CB84054();
  v16 = v15;
  LOBYTE(v9) = v17;
  sub_21CB84A64();
  v18 = sub_21CB83FB4();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_21C74A72C(v14, v16, v9 & 1);

  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v22 & 1;
  *(a1 + 24) = v24;
  return result;
}

uint64_t sub_21CB7DCBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB000, &unk_21CBB0000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a4;
  *(inited + 56) = a5;

  v11 = a5;
  sub_21C83532C(inited);
  swift_setDeallocating();
  return sub_21C8F1684(inited + 32);
}

uint64_t sub_21CB7DD70@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  sub_21CB81014();
  sub_21CB81014();
  v10 = sub_21CB80FF4();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v6, v2);
  v13(v9, v2);
  v26[2] = v10;
  v26[3] = v12;
  sub_21C71F3FC();
  v14 = sub_21CB84054();
  v16 = v15;
  LOBYTE(v9) = v17;
  sub_21CB84A64();
  v18 = sub_21CB83FB4();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_21C74A72C(v14, v16, v9 & 1);

  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v22 & 1;
  *(a1 + 24) = v24;
  return result;
}

uint64_t sub_21CB7DF5C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_21CB7ABD8(*(v1 + 48), a1);
}

uint64_t sub_21CB7DF70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSecurityRecommendationPlatter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CB7DFEC()
{
  result = qword_27CDFACB0;
  if (!qword_27CDFACB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAC78, &qword_21CBD0508);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
    sub_21CB82A54();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21C706330(&qword_27CDED508, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDFACB8, &qword_27CDFACA8, &qword_21CBD0538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFACB0);
  }

  return result;
}

uint64_t sub_21CB7E17C(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PMSecurityRecommendationPlatter() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];

  return a1(v1 + v3, v5, v6, v7, v8);
}

uint64_t sub_21CB7E228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC90, &qword_21CBD0520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CB7E298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB7E300(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PMSecurityRecommendationPlatter() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_21C702EFC;

  return sub_21CB7CDD0(a1, v7, v8, v1 + v6, v10, v11, v12, v13);
}

unint64_t sub_21CB7E44C()
{
  result = qword_27CDFACC8;
  if (!qword_27CDFACC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFACD0, &qword_21CBD0720);
    sub_21CB7E4D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFACC8);
  }

  return result;
}

unint64_t sub_21CB7E4D0()
{
  result = qword_27CDFACD8;
  if (!qword_27CDFACD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAC30, &qword_21CBD0490);
    sub_21CB7E588(&qword_27CDFACE0, &qword_27CDFAC28, &qword_21CBD0488, sub_21CB7E60C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFACD8);
  }

  return result;
}

uint64_t sub_21CB7E588(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CB7E63C()
{
  result = qword_27CDFACF0;
  if (!qword_27CDFACF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFACF8, &qword_21CBD0728);
    sub_21C6EADEC(&qword_27CDFAC40, &qword_27CDFAC38, &qword_21CBD0498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFACF0);
  }

  return result;
}

id sub_21CB7E6F8(int a1, id a2)
{
  v2 = [a2 role];
  v3 = [objc_allocWithZone(MEMORY[0x277D75958]) initWithName:0 sessionRole:v2];

  type metadata accessor for PMSceneDelegate();
  [v3 setDelegateClass_];
  return v3;
}

void sub_21CB7E778()
{
  v0 = [objc_opt_self() sharedStore];
  [v0 savePendingChangesBeforeTermination];
}

id PMUIApplicationDelegate.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PMUIApplicationDelegate();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_21CB7E884@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PMUIApplicationDelegate();
  result = sub_21CB81CF4();
  *a1 = result;
  return result;
}

id sub_21CB7E8D0()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate____lazy_storage___blurEffectView;
  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate____lazy_storage___blurEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate____lazy_storage___blurEffectView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setUserInteractionEnabled_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_21CB7E984(int a1, id a2)
{
  v3 = [a2 type];
  sub_21CB855C4();

  v4 = sub_21CB86244();

  if (v4 <= 2)
  {
    v6 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_selectedQuickAction);
    return sub_21CB81D04();
  }

  return result;
}

void sub_21CB7EAD8(int a1, char a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_lockedWindow;
  v7 = *&v3[OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_lockedWindow];
  if (v7)
  {
    [v7 alpha];
    if (((v8 != 1.0) ^ a1))
    {
      return;
    }
  }

  else if ((a1 & 1) == 0)
  {
    return;
  }

  v9 = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_keyWindow;
  v10 = *&v3[OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_keyWindow];
  if (!v10 || (v11 = *&v3[v6]) == 0)
  {
    v15 = 0x65736C6166;
    aBlock.a = 0.0;
    aBlock.b = -2.68156159e154;
    sub_21CB86094();
    MEMORY[0x21CF151F0](0xD00000000000002BLL, 0x800000021CB9E310);
    if (a1)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    v17 = 0xE400000000000000;
    if (a1)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    MEMORY[0x21CF151F0](v16, v18);

    MEMORY[0x21CF151F0](0xD000000000000056, 0x800000021CB9E340);
    v19 = *&v3[v9];
    if (v19)
    {
      v20 = 0x65736C6166;
    }

    else
    {
      v20 = 1702195828;
    }

    if (v19)
    {
      v21 = 0xE500000000000000;
    }

    else
    {
      v21 = 0xE400000000000000;
    }

    MEMORY[0x21CF151F0](v20, v21);

    MEMORY[0x21CF151F0](0x646469487369202CLL, 0xEC000000203A6E65);
    v22 = *&v3[v9];
    if (v22 && ([v22 isHidden] & 1) != 0)
    {
      v23 = 1702195828;
    }

    else
    {
      v17 = 0xE500000000000000;
      v23 = 0x65736C6166;
    }

    MEMORY[0x21CF151F0](v23, v17);

    MEMORY[0x21CF151F0](0x3A6168706C61202CLL, 0xE900000000000020);
    v24 = *&v3[v9];
    if (v24)
    {
      [v24 alpha];
    }

    v25 = sub_21CB85974();
    MEMORY[0x21CF151F0](v25);

    MEMORY[0x21CF151F0](0xD000000000000019, 0x800000021CB9E3A0);
    if (*&v3[v6])
    {
      v26 = 0x65736C6166;
    }

    else
    {
      v26 = 1702195828;
    }

    if (*&v3[v6])
    {
      v27 = 0xE500000000000000;
    }

    else
    {
      v27 = 0xE400000000000000;
    }

    MEMORY[0x21CF151F0](v26, v27);

    MEMORY[0x21CF151F0](0x646469487369202CLL, 0xEC000000203A6E65);
    v28 = *&v3[v6];
    if (v28 && ([v28 isHidden] & 1) != 0)
    {
      v29 = 0xE400000000000000;
      v30 = 1702195828;
    }

    else
    {
      v29 = 0xE500000000000000;
      v30 = 0x65736C6166;
    }

    MEMORY[0x21CF151F0](v30, v29);

    MEMORY[0x21CF151F0](0x3A6168706C61202CLL, 0xE900000000000020);
    v31 = *&v3[v6];
    if (v31)
    {
      [v31 alpha];
    }

    v32 = sub_21CB85974();
    MEMORY[0x21CF151F0](v32);

    MEMORY[0x21CF151F0](0xD000000000000020, 0x800000021CB9E3C0);
    v33 = *&v3[v9];
    v34 = *&v3[v6];
    if (v33)
    {
      if (v34)
      {
        sub_21C6E8F4C(0, &qword_27CDFAE20, 0x277D75DA0);
        v35 = v34;
        v36 = v33;
        v37 = sub_21CB85DD4();

        if (v37)
        {
          goto LABEL_43;
        }
      }
    }

    else if (!v34)
    {
LABEL_43:
      v38 = 0xE400000000000000;
      v15 = 1702195828;
LABEL_46:
      MEMORY[0x21CF151F0](v15, v38);

      v39 = *&aBlock.a;
      if (qword_27CDEA470 != -1)
      {
        swift_once();
      }

      v40 = sub_21CB81C84();
      __swift_project_value_buffer(v40, qword_27CE186E0);

      osloga = sub_21CB81C64();
      v41 = sub_21CB85AF4();

      if (os_log_type_enabled(osloga, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *&aBlock.a = v43;
        *v42 = 136315138;
        v44 = sub_21C98E004(v39, *(&v39 + 1), &aBlock);

        *(v42 + 4) = v44;
        _os_log_impl(&dword_21C6E5000, osloga, v41, "%s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x21CF16D90](v43, -1, -1);
        MEMORY[0x21CF16D90](v42, -1, -1);

        return;
      }

      goto LABEL_52;
    }

    v38 = 0xE500000000000000;
    goto LABEL_46;
  }

  if (a2)
  {
    oslog = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_animator;
    v12 = *&v3[OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_animator];
    v13 = v10;
    v14 = v11;
    if (v12)
    {
      [v12 stopAnimation_];
    }

    v46 = v10;
    v47 = sub_21CB7E8D0();
    [v46 addSubview_];

    v89 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF76D8, &qword_21CBD0830);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_21CBD0730;
    v49 = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate____lazy_storage___blurEffectView;
    v50 = [*&v3[OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate____lazy_storage___blurEffectView] topAnchor];
    v51 = [v46 topAnchor];

    v52 = [v50 constraintEqualToAnchor_];
    *(v48 + 32) = v52;
    v53 = [*&v3[v49] leadingAnchor];
    v54 = [v46 leadingAnchor];

    v55 = [v53 constraintEqualToAnchor_];
    *(v48 + 40) = v55;
    v56 = [*&v3[v49] trailingAnchor];
    v57 = [v46 trailingAnchor];

    v58 = [v56 constraintEqualToAnchor_];
    *(v48 + 48) = v58;
    v59 = [*&v3[v49] bottomAnchor];
    v60 = [v46 bottomAnchor];

    v61 = [v59 constraintEqualToAnchor_];
    *(v48 + 56) = v61;
    sub_21C6E8F4C(0, &unk_27CDF8A50, 0x277CCAAD0);
    v62 = sub_21CB85814();

    [v89 activateConstraints_];

    CGAffineTransformMakeScale(&v93, 1.1, 1.1);
    if (a1)
    {

      aBlock = v93;
      [v11 setTransform_];
      v63 = swift_allocObject();
      *(v63 + 16) = v11;
      *(v63 + 24) = v3;
      v64 = objc_allocWithZone(MEMORY[0x277D75D40]);
      *&aBlock.tx = sub_21CB7FDE0;
      *&aBlock.ty = v63;
      *&aBlock.a = MEMORY[0x277D85DD0];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_21C6ECBD4;
      *&aBlock.d = &block_descriptor_36;
      v65 = _Block_copy(&aBlock);
      v66 = v11;
      v67 = v3;

      v68 = [v64 initWithDuration:2 curve:v65 animations:0.5];
      _Block_release(v65);
      v69 = *(&oslog->isa + v3);
      *(&oslog->isa + v3) = v68;
      v70 = v68;

      if (v70)
      {
        v71 = swift_allocObject();
        v71[2] = v67;
        v71[3] = v46;
        v71[4] = v66;
        *&aBlock.tx = sub_21CB7FE30;
        *&aBlock.ty = v71;
        *&aBlock.a = MEMORY[0x277D85DD0];
        *&aBlock.b = 1107296256;
        v72 = &block_descriptor_42_0;
LABEL_60:
        *&aBlock.c = sub_21CB7F7FC;
        *&aBlock.d = v72;
        v84 = _Block_copy(&aBlock);
        v85 = v46;
        v86 = v66;
        v87 = v67;

        [(objc_class *)v70 addCompletion:v84];
        _Block_release(v84);
      }
    }

    else
    {
      [v46 setAlpha_];

      *&aBlock.a = 0x3FF0000000000000uLL;
      aBlock.c = 0.0;
      aBlock.d = 1.0;
      *&aBlock.tx = 0uLL;
      [v11 setTransform_];
      v73 = *&v3[v49];
      v74 = objc_opt_self();
      v75 = v73;
      v76 = [v74 effectWithStyle_];
      [v75 setEffect_];

      v77 = swift_allocObject();
      *(v77 + 16) = v11;
      *(v77 + 24) = v3;
      v78 = *&v93.c;
      *(v77 + 32) = *&v93.a;
      *(v77 + 48) = v78;
      *(v77 + 64) = *&v93.tx;
      v79 = objc_allocWithZone(MEMORY[0x277D75D40]);
      *&aBlock.tx = sub_21CB7FDC8;
      *&aBlock.ty = v77;
      *&aBlock.a = MEMORY[0x277D85DD0];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_21C6ECBD4;
      *&aBlock.d = &block_descriptor_46;
      v80 = _Block_copy(&aBlock);
      v66 = v11;
      v67 = v3;

      v81 = [v79 initWithDuration:2 curve:v80 animations:0.3];
      _Block_release(v80);
      v82 = *(&oslog->isa + v3);
      *(&oslog->isa + v3) = v81;
      v70 = v81;

      if (v70)
      {
        v83 = swift_allocObject();
        v83[2] = v66;
        v83[3] = v67;
        v83[4] = v46;
        *&aBlock.tx = sub_21CB7FDD4;
        *&aBlock.ty = v83;
        *&aBlock.a = MEMORY[0x277D85DD0];
        *&aBlock.b = 1107296256;
        v72 = &block_descriptor_30_0;
        goto LABEL_60;
      }
    }

    v88 = *(&oslog->isa + v3);
    [v88 startAnimation];

    return;
  }

  v45 = v10;
  osloga = v11;
  sub_21C738B28(a1 & 1);

LABEL_52:
}

void sub_21CB7F6C4(void *a1)
{
  [a1 setAlpha_];
  v4[0] = 0x3FF0000000000000;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0x3FF0000000000000;
  v4[4] = 0;
  v4[5] = 0;
  [a1 setTransform_];
  v2 = sub_21CB7E8D0();
  v3 = [objc_opt_self() effectWithStyle_];
  [v2 setEffect_];
}

id sub_21CB7F770(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_21CB7E8D0();
  [v6 removeFromSuperview];

  [a3 setAlpha_];
  [a3 setAccessibilityElementsHidden_];

  return [a4 makeKeyWindow];
}

uint64_t sub_21CB7F7FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_21CB7F850(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 40);
  [a1 setAlpha_];
  v7 = sub_21CB7E8D0();
  [v7 setEffect_];

  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = v5;
  v12 = v6;
  return [a1 setTransform_];
}

id sub_21CB7F8E0(int a1, id a2, uint64_t a3, void *a4)
{
  v7[0] = 0x3FF0000000000000;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = 0x3FF0000000000000;
  v7[4] = 0;
  v7[5] = 0;
  [a2 setTransform_];
  v5 = sub_21CB7E8D0();
  [v5 removeFromSuperview];

  [a4 setAccessibilityElementsHidden_];
  return [a4 makeKeyWindow];
}

void sub_21CB7F96C()
{
  v0 = sub_21CB807D4();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  sub_21CB86034();
  if (!*(v1 + 16) || (v2 = sub_21CB10D50(v4), (v3 & 1) == 0))
  {

    sub_21C8E1980(v4);
LABEL_8:
    v5 = 0u;
    v6 = 0u;
    goto LABEL_9;
  }

  sub_21C7A3394(*(v1 + 56) + 32 * v2, &v5);
  sub_21C8E1980(v4);

  if (!*(&v6 + 1))
  {
LABEL_9:
    sub_21CA0B028(&v5);
    return;
  }

  if (swift_dynamicCast())
  {
    sub_21CB7EAD8(v4[0], v4[1]);
  }
}

id PMSceneDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_21CB7FBA4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t objectdestroy_26Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21CB7FE58()
{
  v1 = v0;
  v2 = sub_21CB80DD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB80D24();
  v8 = [v1 startDateOfIntervalContainingDate_];

  sub_21CB80D94();
  result = sub_21CB80D64();
  v11 = floor(-v10);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [v1 codeGenerationPeriod];
  (*(v3 + 8))(v6, v2);
  result = v13 - v12;
  if (__OFSUB__(v13, v12))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_21CB7FFD4()
{
  v1 = v0;
  v2 = sub_21CB80D24();
  v3 = [v1 codeForDate_];

  v4 = sub_21CB855C4();

  v5 = sub_21CB85694();

  if (v5 >= 5)
  {
    [v1 numberOfDigitsInCode];
    sub_21CB856C4();
    sub_21CB85704();
  }

  return v4;
}

void __getSKStoreReviewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSKStoreReviewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PMAppStoreReviewHelper.m" lineNumber:16 description:{@"Unable to find class %s", "SKStoreReviewController"}];

  __break(1u);
}

void __getSKStoreReviewControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *StoreKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PMAppStoreReviewHelper.m" lineNumber:10 description:{@"%s", *a1}];

  __break(1u);
}

void __getSFSafariViewControllerConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSFSafariViewControllerConfigurationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PMSafariViewController.m" lineNumber:32 description:{@"Unable to find class %s", "SFSafariViewControllerConfiguration"}];

  __break(1u);
}

void SafariServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SafariServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PMSafariViewController.m" lineNumber:30 description:{@"%s", *a1}];

  __break(1u);
}

void __getSFSafariViewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSFSafariViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PMSafariViewController.m" lineNumber:31 description:{@"Unable to find class %s", "SFSafariViewController"}];

  __break(1u);
}