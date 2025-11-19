uint64_t sub_21C71BCA4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABF8, &unk_21CBAB590);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState);
  v8 = qword_27CDEA4C0;

  if (v8 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v7, v11);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDEAC08, &qword_27CDEABF8, &unk_21CBAB590);
  sub_21CB81E04();

  (*(v3 + 8))(v6, v2);
  swift_getKeyPath();
  v11 = v1;
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810D4();

  v11 = v1;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v11 = v1;
  swift_getKeyPath();
  sub_21CB810E4();
}

uint64_t sub_21C71BFB8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C71C010();
  }

  return result;
}

uint64_t sub_21C71C010()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v156 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v157 = &v149 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v160 = &v149 - v9;
  MEMORY[0x28223BE20](v8);
  v159 = &v149 - v10;
  v165 = sub_21CB85CA4();
  v170 = *(v165 - 8);
  v11 = *(v170 + 8);
  v12 = MEMORY[0x28223BE20](v165);
  v162 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v161 = &v149 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v163 = &v149 - v17;
  v164 = type metadata accessor for PMAccount(0);
  v171 = *(v164 - 8);
  v18 = *(v171 + 64);
  v19 = MEMORY[0x28223BE20](v164);
  v150 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v158 = &v149 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v155 = &v149 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = (&v149 - v26);
  v28 = MEMORY[0x28223BE20](v25);
  v153 = &v149 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v154 = &v149 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v149 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v151 = &v149 - v36;
  MEMORY[0x28223BE20](v35);
  v152 = &v149 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC28, &qword_21CB9FF50);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v169 = &v149 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v149 - v42;
  v44 = type metadata accessor for PMAppRootModel.StagedAccount(0);
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x28223BE20](v44);
  v49 = (&v149 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v47);
  v51 = &v149 - v50;
  swift_getKeyPath();
  v52 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel___observationRegistrar;
  v174 = v1;
  v53 = sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  v167 = v52;
  v168 = v53;
  sub_21CB810D4();
  v54 = v1;

  v55 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__stagedAccount;
  swift_beginAccess();
  sub_21C6EDBAC(v1 + v55, v43, &qword_27CDEAC28, &qword_21CB9FF50);
  v166 = v45;
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
    v56 = v43;
    return sub_21C6EA794(v56, &qword_27CDEAC28, &qword_21CB9FF50);
  }

  sub_21C7A3234(v43, v51, type metadata accessor for PMAppRootModel.StagedAccount);
  sub_21C7A316C(v51, v49, type metadata accessor for PMAppRootModel.StagedAccount);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v34 = v44;
      v76 = *v49;
      v70 = v49[1];
      v44 = v54;
      v101 = *(v54 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState);
      v102 = qword_27CDEA4C0;

      if (v102 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C7072A8(v101, v173);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v103 = v173;
      v54 = *(v173 + 16);
      v104 = v171;
      if (!v54)
      {
LABEL_39:

LABEL_43:

        v78 = v51;
        return sub_21C7A31D4(v78, type metadata accessor for PMAppRootModel.StagedAccount);
      }

      v105 = 0;
      while (v105 < *(v103 + 16))
      {
        sub_21C7A316C(v103 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v105, v27, type metadata accessor for PMAccount);
        v106 = *v27 == v76 && v27[1] == v70;
        if (v106 || (sub_21CB86344() & 1) != 0)
        {

          v121 = v153;
          sub_21C7A3234(v27, v153, type metadata accessor for PMAccount);
          v122 = v154;
          sub_21C7A3234(v121, v154, type metadata accessor for PMAccount);
          v123 = *(*(v44 + 16) + 64);
          v124 = type metadata accessor for PMAppSourceListModel.Source(0);
          v125 = v163;
          swift_storeEnumTagMultiPayload();
          (*(*(v124 - 8) + 56))(v125, 0, 1, v124);

          sub_21C742C88(v125);

          sub_21C8C7090(v122);
          v126 = v169;
          (*(v166 + 56))(v169, 1, 1, v34);
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          *(&v149 - 2) = v44;
          *(&v149 - 1) = v126;
          v173 = v44;
          sub_21CB810C4();

          sub_21C7A31D4(v122, type metadata accessor for PMAccount);
          sub_21C7A31D4(v51, type metadata accessor for PMAppRootModel.StagedAccount);
          v56 = v126;
          return sub_21C6EA794(v56, &qword_27CDEAC28, &qword_21CB9FF50);
        }

        ++v105;
        sub_21C7A31D4(v27, type metadata accessor for PMAccount);
        if (v54 == v105)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v170 = v51;
      v71 = *v49;
      v70 = v49[1];
      v72 = v54;
      v51 = v49[2];
      v54 = v49[3];
      v161 = v72;
      v73 = *&v72[OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState];
      v74 = qword_27CDEA4C0;

      if (v74 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C7072A8(v73, v173);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v75 = v173;
      v76 = *(v173 + 16);
      if (!v76)
      {
LABEL_19:

        v78 = v170;
        return sub_21C7A31D4(v78, type metadata accessor for PMAppRootModel.StagedAccount);
      }

      v77 = 0;
      while (v77 < *(v75 + 16))
      {
        sub_21C7A316C(v75 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v77, v34, type metadata accessor for PMAccount);
        if (sub_21C7A0BCC(v34, v71, v70, v51, v54))
        {

          v128 = v151;
          sub_21C7A3234(v34, v151, type metadata accessor for PMAccount);
          v129 = v152;
          sub_21C7A3234(v128, v152, type metadata accessor for PMAccount);
          v130 = v161;
          v131 = *(*(v161 + 2) + 64);
          v132 = type metadata accessor for PMAppSourceListModel.Source(0);
          v133 = v163;
          swift_storeEnumTagMultiPayload();
          (*(*(v132 - 8) + 56))(v133, 0, 1, v132);

          sub_21C742C88(v133);

          sub_21C8C7090(v129);
          v134 = v169;
          (*(v166 + 56))(v169, 1, 1, v44);
          v135 = swift_getKeyPath();
          MEMORY[0x28223BE20](v135);
          *(&v149 - 2) = v130;
          *(&v149 - 1) = v134;
          v173 = v130;
          sub_21CB810C4();

          sub_21C7A31D4(v129, type metadata accessor for PMAccount);
          sub_21C7A31D4(v170, type metadata accessor for PMAppRootModel.StagedAccount);
          goto LABEL_56;
        }

        ++v77;
        sub_21C7A31D4(v34, type metadata accessor for PMAccount);
        if (v76 == v77)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_59:
    swift_once();
LABEL_21:
    sub_21CB86544();
    sub_21C7072A8(v70, v173);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v82 = v173;
    MEMORY[0x28223BE20](v81);
    *(&v149 - 2) = v76;
    v83 = v159;
    sub_21C968D04(sub_21C7A32B8, v82, v159);

    if ((*(v171 + 48))(v83, 1, v164) == 1)
    {
      sub_21C7A31D4(v51, type metadata accessor for PMAppRootModel.StagedAccount);
      sub_21C6EA794(v83, &unk_27CDEBE60, &unk_21CB9FF40);
      return (*(v170 + 1))(v76, v34);
    }

    else
    {
      v107 = v155;
      sub_21C7A3234(v83, v155, type metadata accessor for PMAccount);
      v108 = *(*(v54 + 16) + 64);
      v109 = type metadata accessor for PMAppSourceListModel.Source(0);
      v110 = v163;
      swift_storeEnumTagMultiPayload();
      (*(*(v109 - 8) + 56))(v110, 0, 1, v109);

      sub_21C742C88(v110);

      sub_21C8C7090(v107);
      v111 = v169;
      (*(v166 + 56))(v169, 1, 1, v44);
      v112 = swift_getKeyPath();
      MEMORY[0x28223BE20](v112);
      *(&v149 - 2) = v54;
      *(&v149 - 1) = v111;
      v173 = v54;
      sub_21CB810C4();

      sub_21C7A31D4(v107, type metadata accessor for PMAccount);
      sub_21C7A31D4(v51, type metadata accessor for PMAppRootModel.StagedAccount);
      sub_21C6EA794(v111, &qword_27CDEAC28, &qword_21CB9FF50);
      return (*(v170 + 1))(v161, v34);
    }
  }

  if (EnumCaseMultiPayload == 2)
  {
    v76 = v161;
    v34 = v165;
    (*(v170 + 4))(v161, v49, v165);
    v70 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState);
    v79 = qword_27CDEA4C0;
    v80 = *(v54 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState);

    if (v79 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v85 = *v49;
    v84 = v49[1];
    v161 = v54;
    v86 = *(v54 + 16);
    swift_getKeyPath();
    v87 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel___observationRegistrar;
    v173 = v86;
    v88 = sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
    sub_21CB810D4();

    v89 = *(v86 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
    if (!(v89 >> 61))
    {
      v159 = v88;
      v160 = v87;
      v162 = v85;
      v164 = v84;
      v165 = v44;
      v170 = v51;
      swift_getKeyPath();
      v173 = v89;
      sub_21C71ACE4(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);

      sub_21CB810D4();

      v173 = v89;
      swift_getKeyPath();
      sub_21CB810F4();

      v90 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs;
      v91 = *(v89 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);
      *(v89 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs) = MEMORY[0x277D84FA0];
      swift_getKeyPath();
      v173 = v89;
      sub_21CB810D4();

      v92 = *(v89 + v90);

      v93 = sub_21C7A2154(v91, v92);

      if ((v93 & 1) == 0)
      {
        v94 = *(v89 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);
        v95 = *(v89 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction + 8);
        swift_getKeyPath();
        v173 = v89;

        sub_21CB810D4();

        v96 = *(v89 + v90);

        v94(v91, v96);
      }

      v173 = v89;
      swift_getKeyPath();
      sub_21CB810E4();

      v97 = *(v86 + 64);
      v98 = type metadata accessor for PMAppSourceListModel.Source(0);
      v99 = v163;
      swift_storeEnumTagMultiPayload();
      (*(*(v98 - 8) + 56))(v99, 0, 1, v98);

      sub_21C742C88(v99);

      if ((*(v86 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState) & 0x8000000000000000) != 0)
      {
        *(v86 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState) = 0x8000000000000000;
      }

      else
      {
        v100 = swift_getKeyPath();
        MEMORY[0x28223BE20](v100);
        *(&v149 - 2) = v86;
        *(&v149 - 1) = 0x8000000000000000;
        v173 = v86;
        sub_21CB810C4();
      }

      v140 = *&v161[OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__globalSearchModel];
      v141 = qword_27CDEA4C0;

      if (v141 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C81C2B8(v140, v173);

      v142 = v164;

      v143 = v162;
      sub_21C8AFCC4(v162, v142);

      sub_21C87FF18(v143, v142);
      swift_getKeyPath();
      v173 = v89;
      sub_21CB810D4();

      v144 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts;
      if (*(*(v89 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts) + 16) == 1)
      {
        swift_getKeyPath();
        v173 = v89;
        sub_21CB810D4();

        v145 = *(v89 + v144);
        if (*(v145 + 16))
        {
          v146 = v150;
          sub_21C7A316C(v145 + ((*(v171 + 80) + 32) & ~*(v171 + 80)), v150, type metadata accessor for PMAccount);
          sub_21C8C7090(v146);
          sub_21C7A31D4(v146, type metadata accessor for PMAccount);
        }
      }

      v134 = v169;
      (*(v166 + 56))(v169, 1, 1, v165);
      v147 = swift_getKeyPath();
      MEMORY[0x28223BE20](v147);
      v148 = v161;
      *(&v149 - 2) = v161;
      *(&v149 - 1) = v134;
      v173 = v148;
      sub_21CB810C4();

      sub_21C7A31D4(v170, type metadata accessor for PMAppRootModel.StagedAccount);
LABEL_56:
      v56 = v134;
      return sub_21C6EA794(v56, &qword_27CDEAC28, &qword_21CB9FF50);
    }

    goto LABEL_43;
  }

  v59 = v162;
  v60 = v49;
  v61 = v165;
  (*(v170 + 4))(v162, v60, v165);
  v62 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState);
  v63 = qword_27CDEA4C0;
  v64 = *(v54 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState);

  if (v63 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v62, v173);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v66 = v173;
  MEMORY[0x28223BE20](v65);
  *(&v149 - 2) = v59;
  v67 = v160;
  sub_21C968D04(sub_21C7A36B4, v66, v160);

  v68 = v171;
  v69 = v164;
  if ((*(v171 + 48))(v67, 1, v164) == 1)
  {
    sub_21C7A31D4(v51, type metadata accessor for PMAppRootModel.StagedAccount);
    sub_21C6EA794(v67, &unk_27CDEBE60, &unk_21CB9FF40);
    return (*(v170 + 1))(v59, v61);
  }

  else
  {
    v113 = v44;
    v114 = v158;
    sub_21C7A3234(v67, v158, type metadata accessor for PMAccount);
    v161 = v54;
    v115 = v69;
    v116 = *(v54 + 16);
    v117 = v157;
    sub_21C7A316C(v114, v157, type metadata accessor for PMAccount);
    (*(v68 + 56))(v117, 0, 1, v115);
    v118 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__accountToShowAfterSelectingSource;
    swift_beginAccess();
    v119 = v156;
    sub_21C6EDBAC(&v116[v118], v156, &unk_27CDEBE60, &unk_21CB9FF40);
    LOBYTE(v118) = sub_21C7A2AE4(v119, v117);
    sub_21C6EA794(v119, &unk_27CDEBE60, &unk_21CB9FF40);
    if (v118)
    {
      v120 = swift_getKeyPath();
      MEMORY[0x28223BE20](v120);
      *(&v149 - 2) = v116;
      *(&v149 - 1) = v117;
      v172 = v116;
      sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
      sub_21CB810C4();
    }

    else
    {
      sub_21C6EDBAC(v117, v119, &unk_27CDEBE60, &unk_21CB9FF40);
      sub_21C8CA328(v119);
    }

    v136 = v166;
    sub_21C6EA794(v117, &unk_27CDEBE60, &unk_21CB9FF40);
    v137 = v169;
    (*(v136 + 56))(v169, 1, 1, v113);
    v138 = swift_getKeyPath();
    MEMORY[0x28223BE20](v138);
    v139 = v161;
    *(&v149 - 2) = v161;
    *(&v149 - 1) = v137;
    v172 = v139;
    sub_21CB810C4();

    sub_21C7A31D4(v158, type metadata accessor for PMAccount);
    sub_21C7A31D4(v51, type metadata accessor for PMAppRootModel.StagedAccount);
    sub_21C6EA794(v137, &qword_27CDEAC28, &qword_21CB9FF50);
    return (*(v170 + 1))(v162, v61);
  }
}

uint64_t sub_21C71DBBC(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C718AB8(v2);
}

uint64_t sub_21C71DC34(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C8C7C18(v2);
}

uint64_t sub_21C71DD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_21C7335A8(a2, a3);
  return sub_21C71B710(v3);
}

uint64_t sub_21C71DD5C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21C71DD7C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  sub_21C71DE60(a1);
  KeyPath = swift_getKeyPath();
  type metadata accessor for PMAccountsNavigationContainerModel();
  sub_21C70E08C(&qword_27CDED538, type metadata accessor for PMAccountsNavigationContainerModel);
  LOBYTE(v5) = *(sub_21CB82134() + 16);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED540, &qword_21CBA6EB8);
  v8 = a1 + *(result + 36);
  *v8 = KeyPath;
  *(v8 + 8) = v5;
  return result;
}

uint64_t sub_21C71DE60@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v49 = type metadata accessor for PMSafariSettingsBreadcrumbs();
  v1 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v3 = (&v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED548, &qword_21CBA6EC0);
  v4 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v6 = &v46 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED550, &qword_21CBA6EC8);
  v7 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v50 = &v46 - v8;
  v48 = type metadata accessor for PMPasswordOptionsView();
  v9 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMAppRootView();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED558, &qword_21CBA6ED0);
  v16 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v54 = &v46 - v17;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED560, &qword_21CBA6ED8);
  v18 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v20 = (&v46 - v19);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED568, &qword_21CBA6EE0);
  v21 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v51 = &v46 - v22;
  type metadata accessor for PMAccountsNavigationContainerModel();
  sub_21C70E08C(&qword_27CDED538, type metadata accessor for PMAccountsNavigationContainerModel);
  v23 = *(sub_21CB82134() + 24);
  sub_21C71E940(v23);

  if (!v23)
  {
    sub_21CB48A2C(v58);
    v31 = v58[1];
    *v20 = v58[0];
    v20[1] = v31;
    v32 = v58[3];
    v20[2] = v58[2];
    v20[3] = v32;
    swift_storeEnumTagMultiPayload();
    sub_21C82F854(v58, v57);
    sub_21C70E038();
    sub_21C70E08C(&qword_27CDED590, type metadata accessor for PMAppRootView);
    v33 = v51;
    sub_21CB83494();
    sub_21C6EDBAC(v33, v54, &qword_27CDED568, &qword_21CBA6EE0);
    swift_storeEnumTagMultiPayload();
    sub_21C70DF7C();
    sub_21C70E0D4();
    sub_21CB83494();
    sub_21C70DE18(v58);
    return sub_21C6EA794(v33, &qword_27CDED568, &qword_21CBA6EE0);
  }

  if (v23 == 1)
  {
    sub_21CACE64C(v11);
    v29 = type metadata accessor for PMPasswordOptionsView;
    sub_21C71E950(v11, v6, type metadata accessor for PMPasswordOptionsView);
    swift_storeEnumTagMultiPayload();
    sub_21C70E08C(&qword_27CDED570, type metadata accessor for PMPasswordOptionsView);
    sub_21C70E08C(&qword_27CDED578, type metadata accessor for PMSafariSettingsBreadcrumbs);
    v30 = v50;
    sub_21CB83494();
    sub_21C6EDBAC(v30, v54, &qword_27CDED550, &qword_21CBA6EC8);
    swift_storeEnumTagMultiPayload();
    sub_21C70DF7C();
    sub_21C70E0D4();
    sub_21CB83494();
    sub_21C6EA794(v30, &qword_27CDED550, &qword_21CBA6EC8);
    v27 = v11;
LABEL_10:
    v28 = v29;
    return sub_21C71E9C8(v27, v28);
  }

  if (v23 != 2)
  {
    type metadata accessor for PMAppRootModel(0);
    sub_21C70E08C(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);

    sub_21CB850A4();
    v35 = v12[5];
    *&v15[v35] = swift_getKeyPath();
    v36 = &v15[v12[6]];
    type metadata accessor for PMSceneDelegate();
    sub_21C70E08C(&qword_27CDEACE0, type metadata accessor for PMSceneDelegate);
    *v36 = sub_21CB82B84();
    v36[1] = v37;
    v38 = v12[7];
    *&v15[v38] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEADD0, &qword_21CBA6F70);
    swift_storeEnumTagMultiPayload();
    v39 = v12[8];
    *&v15[v39] = swift_getKeyPath();
    v40 = &v15[v12[9]];
    KeyPath = swift_getKeyPath();
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C704E4C(KeyPath, *&v58[0]);

    type metadata accessor for PMSecureWindowLockPolicyEnforcer();
    sub_21C70E08C(&qword_27CDFAD10, type metadata accessor for PMSecureWindowLockPolicyEnforcer);
    v42 = sub_21CB82674();
    v44 = v43;

    *v40 = v42;
    v40[1] = v44;
    *&v15[v12[10]] = 0;
    v29 = type metadata accessor for PMAppRootView;
    sub_21C71E950(v15, v20, type metadata accessor for PMAppRootView);
    swift_storeEnumTagMultiPayload();
    sub_21C70E038();
    sub_21C70E08C(&qword_27CDED590, type metadata accessor for PMAppRootView);
    v45 = v51;
    sub_21CB83494();
    sub_21C6EDBAC(v45, v54, &qword_27CDED568, &qword_21CBA6EE0);
    swift_storeEnumTagMultiPayload();
    sub_21C70DF7C();
    sub_21C70E0D4();
    sub_21CB83494();
    sub_21C71E9B8(v23);
    sub_21C6EA794(v45, &qword_27CDED568, &qword_21CBA6EE0);
    v27 = v15;
    goto LABEL_10;
  }

  *v3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v24 = *(v49 + 20);
  v25 = [objc_opt_self() safari_browserDefaults];
  *(v3 + v24) = sub_21CB81E74();
  sub_21C71E950(v3, v6, type metadata accessor for PMSafariSettingsBreadcrumbs);
  swift_storeEnumTagMultiPayload();
  sub_21C70E08C(&qword_27CDED570, type metadata accessor for PMPasswordOptionsView);
  sub_21C70E08C(&qword_27CDED578, type metadata accessor for PMSafariSettingsBreadcrumbs);
  v26 = v50;
  sub_21CB83494();
  sub_21C6EDBAC(v26, v54, &qword_27CDED550, &qword_21CBA6EC8);
  swift_storeEnumTagMultiPayload();
  sub_21C70DF7C();
  sub_21C70E0D4();
  sub_21CB83494();
  sub_21C6EA794(v26, &qword_27CDED550, &qword_21CBA6EC8);
  v27 = v3;
  v28 = type metadata accessor for PMSafariSettingsBreadcrumbs;
  return sub_21C71E9C8(v27, v28);
}

unint64_t sub_21C71E940(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_21C71E950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C71E9B8(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_21C71E9C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for PMOnboardingRootView()
{
  result = qword_27CDEE280;
  if (!qword_27CDEE280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C71EA74()
{
  sub_21C705CFC();
  if (v0 <= 0x3F)
  {
    sub_21C70DA18(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_21C70DA18(319, &qword_27CDEBD50, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_21C70DA18(319, &qword_27CDEE290, sub_21C71ECE8, type metadata accessor for PMDependency);
        if (v3 <= 0x3F)
        {
          sub_21C71ED34(319, &qword_27CDEE298, &qword_27CDEE2A0, &qword_21CBA98C8, type metadata accessor for PMDependency);
          if (v4 <= 0x3F)
          {
            sub_21C70DA18(319, &qword_27CDEACD0, type metadata accessor for PMNotificationManager, type metadata accessor for PMDependency);
            if (v5 <= 0x3F)
            {
              sub_21C71ED98();
              if (v6 <= 0x3F)
              {
                sub_21C71ED34(319, &qword_27CDEE2B0, &qword_27CDEE278, &qword_21CBA9888, MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  sub_21C70DA18(319, &qword_27CDEE2B8, type metadata accessor for UNAuthorizationStatus, MEMORY[0x277CE10B8]);
                  if (v8 <= 0x3F)
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

unint64_t sub_21C71ECE8()
{
  result = qword_27CDECDD0[0];
  if (!qword_27CDECDD0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27CDECDD0);
  }

  return result;
}

void sub_21C71ED34(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21C71ED98()
{
  if (!qword_27CDEE2A8)
  {
    v0 = sub_21CB84F94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEE2A8);
    }
  }
}

uint64_t type metadata accessor for PMICloudTermsAndConditionsAlert()
{
  result = qword_27CDF3338;
  if (!qword_27CDF3338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C71EE6C()
{
  sub_21C70DC98();
  if (v0 <= 0x3F)
  {
    sub_21C71EF60();
    if (v1 <= 0x3F)
    {
      sub_21C71ED98();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21C71EF08()
{
  result = qword_27CDEAE00;
  if (!qword_27CDEAE00)
  {
    type metadata accessor for PMDebugSettingsManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAE00);
  }

  return result;
}

void sub_21C71EF60()
{
  if (!qword_27CDF3348)
  {
    type metadata accessor for PMDebugSettingsManager();
    sub_21C71EF08();
    v0 = sub_21CB826A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF3348);
    }
  }
}

void sub_21C71F004()
{
  if (!qword_27CDF4910)
  {
    type metadata accessor for PMHandleInboundTOTPMigrationURLModel(255);
    v0 = sub_21CB850C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF4910);
    }
  }
}

void sub_21C71F05C()
{
  sub_21C71F004();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21C71F138()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5418, &qword_21CBBDF38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1748, &qword_21CBBDF70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5410, &qword_21CBBDF30);
  sub_21C71F28C();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_21C71F28C()
{
  result = qword_27CDF5440;
  if (!qword_27CDF5440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5410, &qword_21CBBDF30);
    sub_21C71F318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5440);
  }

  return result;
}

unint64_t sub_21C71F318()
{
  result = qword_27CDF5448;
  if (!qword_27CDF5448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5430, &qword_21CBBDF50);
    sub_21C6EADEC(&qword_27CDF5450, &qword_27CDF5428, &qword_21CBBDF48);
    sub_21C6EADEC(&qword_27CDF5458, &qword_27CDF5460, &qword_21CBBDF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5448);
  }

  return result;
}

unint64_t sub_21C71F3FC()
{
  result = qword_27CDEA9F0;
  if (!qword_27CDEA9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEA9F0);
  }

  return result;
}

uint64_t type metadata accessor for PMAppTOTPMigrationModel()
{
  result = qword_27CDEB140;
  if (!qword_27CDEB140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C71F49C()
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

uint64_t type metadata accessor for PMAppTOTPMigrationView()
{
  result = qword_27CDEB160;
  if (!qword_27CDEB160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C71F5AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C71F610()
{
  sub_21C71F5AC(319, &qword_27CDEB170, type metadata accessor for PMAppTOTPMigrationModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_21C71F5AC(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21C71F710()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4918, &qword_21CBBBCD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4920, &qword_21CBBBCE0);
  type metadata accessor for PMAppTOTPMigrationView();
  sub_21C6EADEC(&qword_27CDF4928, &qword_27CDF4918, &qword_21CBBBCD8);
  sub_21C6EADEC(&qword_27CDF4930, &qword_27CDF4920, &qword_21CBBBCE0);
  sub_21C71F850(&qword_27CDF4938, type metadata accessor for PMAppTOTPMigrationView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C71F850(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C71F8D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5380, &unk_21CBBDBF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB190, &qword_21CBA1380);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB198, &qword_21CBA1388);
  sub_21C6EADEC(&qword_27CDF5388, &qword_27CDF5380, &unk_21CBBDBF8);
  sub_21C6EADEC(&qword_27CDEB1A0, &qword_27CDEB190, &qword_21CBA1380);
  sub_21C71FA88();
  return swift_getOpaqueTypeConformance2();
}

void sub_21C71F9F4()
{
  if (!qword_27CDF53B0)
  {
    type metadata accessor for PMInboundOTPAuthURLModel(255);
    sub_21C737438(&qword_27CDEAE10, type metadata accessor for PMInboundOTPAuthURLModel);
    v0 = sub_21CB82154();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF53B0);
    }
  }
}

unint64_t sub_21C71FA88()
{
  result = qword_27CDEB1A8;
  if (!qword_27CDEB1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB198, &qword_21CBA1388);
    sub_21C71FB40();
    sub_21C6EADEC(&qword_27CDEB1B8, &qword_27CDEB1C0, &unk_21CBA1390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB1A8);
  }

  return result;
}

unint64_t sub_21C71FB40()
{
  result = qword_27CDEB1B0;
  if (!qword_27CDEB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB1B0);
  }

  return result;
}

uint64_t type metadata accessor for PMBulkOperationProgressView()
{
  result = qword_27CDEC378;
  if (!qword_27CDEC378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C71FBE0()
{
  if (!qword_27CDEC398)
  {
    type metadata accessor for PMBulkOperationProgress();
    sub_21C705E68(&qword_27CDEC368, type metadata accessor for PMBulkOperationProgress);
    v0 = sub_21CB826A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEC398);
    }
  }
}

void sub_21C71FC74()
{
  sub_21C7086F8();
  if (v0 <= 0x3F)
  {
    sub_21C71FBE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21C71FD14()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC348, &qword_21CBA4078);
  type metadata accessor for PMBulkOperationProgress();
  type metadata accessor for PMBulkOperationProgressView();
  sub_21C6EADEC(&qword_27CDEC350, &qword_27CDEC348, &qword_21CBA4078);
  sub_21C705E68(&qword_27CDEC358, type metadata accessor for PMBulkOperationProgress);
  sub_21C705E68(&qword_27CDEC360, type metadata accessor for PMBulkOperationProgressView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C71FE60()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3350, &unk_21CBB77D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3358, &qword_21CBB77E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3360, &qword_21CBB77E8);
  sub_21C6EADEC(&qword_27CDF3368, &qword_27CDF3358, &qword_21CBB77E0);
  sub_21C71F3FC();
  sub_21C6EADEC(&qword_27CDF3370, &qword_27CDF3360, &qword_21CBB77E8);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C71FFD0(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for PMICloudTermsAndConditionsAlert() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C999028(a1, a2, v6);
}

uint64_t type metadata accessor for PMAppSourceList()
{
  result = qword_27CDF0DA8;
  if (!qword_27CDF0DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C7200AC()
{
  sub_21C720280(319, &qword_27CDF0DB8, type metadata accessor for PMAppSourceListModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_21C705CFC();
    if (v1 <= 0x3F)
    {
      sub_21C70640C();
      if (v2 <= 0x3F)
      {
        sub_21C706378();
        if (v3 <= 0x3F)
        {
          sub_21C713384();
          if (v4 <= 0x3F)
          {
            sub_21C7202E4();
            if (v5 <= 0x3F)
            {
              sub_21C7086F8();
              if (v6 <= 0x3F)
              {
                sub_21C720280(319, &qword_27CDEC5D8, type metadata accessor for PMDebugSettingsManager, type metadata accessor for PMDependency);
                if (v7 <= 0x3F)
                {
                  sub_21C720280(319, &qword_27CDEE7F0, type metadata accessor for PMGlobalAnimationNamespaceContainer, MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
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

void sub_21C720280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C7202E4()
{
  if (!qword_27CDEB890)
  {
    v0 = sub_21CB82074();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEB890);
    }
  }
}

uint64_t type metadata accessor for PMGroupInvitationsList()
{
  result = qword_27CDF3E50;
  if (!qword_27CDF3E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C720380()
{
  type metadata accessor for PMGroupInvitationsListModel(319);
  if (v0 <= 0x3F)
  {
    sub_21C707F4C();
    if (v1 <= 0x3F)
    {
      sub_21C72044C();
      if (v2 <= 0x3F)
      {
        sub_21C708274();
        if (v3 <= 0x3F)
        {
          sub_21C7205C4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21C72044C()
{
  if (!qword_27CDF3E60)
  {
    type metadata accessor for PMDismissAction();
    v0 = sub_21CB82074();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF3E60);
    }
  }
}

uint64_t type metadata accessor for PMDismissAction()
{
  result = qword_27CDF2978;
  if (!qword_27CDF2978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C7204F0()
{
  sub_21CB823B4();
  if (v0 <= 0x3F)
  {
    sub_21C720574();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C720574()
{
  if (!qword_27CDF2988)
  {
    v0 = sub_21CB85E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF2988);
    }
  }
}

void sub_21C7205C4()
{
  if (!qword_27CDED658)
  {
    v0 = sub_21CB82074();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDED658);
    }
  }
}

uint64_t type metadata accessor for PMAppRecentlyDeletedAccountsView()
{
  result = qword_27CDEF9D8;
  if (!qword_27CDEF9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C720660()
{
  sub_21C72079C();
  if (v0 <= 0x3F)
  {
    sub_21C70640C();
    if (v1 <= 0x3F)
    {
      sub_21C70DA7C(319, &qword_27CDEB178, MEMORY[0x277CDD848]);
      if (v2 <= 0x3F)
      {
        sub_21C70DA7C(319, &qword_27CDEC860, MEMORY[0x277CDDAF0]);
        if (v3 <= 0x3F)
        {
          sub_21C7086F8();
          if (v4 <= 0x3F)
          {
            sub_21C7202E4();
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

void sub_21C72079C()
{
  if (!qword_27CDEF9E8)
  {
    type metadata accessor for PMRecentlyDeletedAccountsViewModel(255);
    sub_21C720BCC(&qword_27CDEF9F0, type metadata accessor for PMRecentlyDeletedAccountsViewModel);
    v0 = sub_21CB826A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEF9E8);
    }
  }
}

void sub_21C720830()
{
  v0 = type metadata accessor for PMRecentlyDeletedAccountsSource();
  if (v1 <= 0x3F)
  {
    v18 = *(v0 - 8) + 64;
    sub_21C6EA5CC(319, &qword_27CDF8190, &qword_27CDEFC78, &qword_21CBC7920);
    if (v3 <= 0x3F)
    {
      v19 = *(v2 - 8) + 64;
      sub_21C6EA5CC(319, &qword_27CDF8198, &unk_27CDEBE60, &unk_21CB9FF40);
      if (v5 <= 0x3F)
      {
        v20 = *(v4 - 8) + 64;
        sub_21C6EA5CC(319, &qword_27CDF6430, &qword_27CDF0138, &qword_21CBC0840);
        if (v7 <= 0x3F)
        {
          v21 = *(v6 - 8) + 64;
          sub_21C6EA5CC(319, &qword_27CDF81A0, &qword_27CDF81A8, &qword_21CBC7C70);
          if (v9 <= 0x3F)
          {
            v22 = *(v8 - 8) + 64;
            sub_21C6EA5CC(319, &qword_27CDF6438, &qword_27CDF6440, &qword_21CBC0848);
            if (v11 <= 0x3F)
            {
              v23 = *(v10 - 8) + 64;
              sub_21C7135A4();
              if (v13 <= 0x3F)
              {
                v24 = *(v12 - 8) + 64;
                sub_21C70821C();
                if (v15 <= 0x3F)
                {
                  v25 = *(v14 - 8) + 64;
                  sub_21C6EA5CC(319, &qword_27CDECD28, &qword_27CDECD30, &unk_21CBA5590);
                  if (v17 <= 0x3F)
                  {
                    v26 = *(v16 - 8) + 64;
                    swift_updateClassMetadata2();
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

uint64_t sub_21C720B74()
{
  v0 = type metadata accessor for PMSharingGroup();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_21C720BCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PMAppSecurityRecommendationsList()
{
  result = qword_27CDF0360;
  if (!qword_27CDF0360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C720C60()
{
  sub_21C720CE4();
  if (v0 <= 0x3F)
  {
    sub_21C7086F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C720CE4()
{
  if (!qword_27CDF0370)
  {
    type metadata accessor for PMAppSecurityRecommendationsModel();
    v0 = sub_21CB850C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF0370);
    }
  }
}

uint64_t type metadata accessor for PMVerificationCodesList()
{
  result = qword_27CDFA8C8;
  if (!qword_27CDFA8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C720D88()
{
  sub_21C720EFC(319, &qword_27CDFA8D8, type metadata accessor for PMVerificationCodesListModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_21C7210DC();
    if (v1 <= 0x3F)
    {
      sub_21C721088(319, &qword_27CDFA8E0, &qword_27CDFA8E8, &unk_21CBCF908);
      if (v2 <= 0x3F)
      {
        sub_21C720EFC(319, &qword_27CDEC860, MEMORY[0x277CDDAF0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_21C721088(319, &qword_27CDEC388, &qword_27CDEC390, &qword_21CBA40E0);
          if (v4 <= 0x3F)
          {
            type metadata accessor for PMHandleInboundTOTPMigrationURLModel(319);
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

void sub_21C720EFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for PMVerificationCodesListModel()
{
  result = qword_27CDFAAA0;
  if (!qword_27CDFAAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C720FAC()
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

void sub_21C721088(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21CB82074();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_21C7210DC()
{
  if (!qword_27CDF4000)
  {
    v0 = sub_21CB84D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF4000);
    }
  }
}

uint64_t type metadata accessor for PMWiFiList()
{
  result = qword_27CDF4FA0;
  if (!qword_27CDF4FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C721178()
{
  sub_21C721294(319, &qword_27CDF4FB0, type metadata accessor for PMWiFiListModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_21C721294(319, &qword_27CDEC860, MEMORY[0x277CDDAF0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_21C7202E4();
      if (v2 <= 0x3F)
      {
        sub_21C7086F8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C721294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for PMWiFiListModel()
{
  result = qword_27CDEE638;
  if (!qword_27CDEE638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C721344()
{
  v0 = sub_21CB85114();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_21C721490();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_21CB81114();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21C721490()
{
  if (!qword_27CDEE648)
  {
    type metadata accessor for PMWiFiNetwork();
    v0 = sub_21CB85E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEE648);
    }
  }
}

uint64_t type metadata accessor for PMMultipleAccountsDetailsView()
{
  result = qword_27CDF6B98;
  if (!qword_27CDF6B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C721534()
{
  if (!qword_27CDF6BA8)
  {
    type metadata accessor for PMMultipleAccountsDetailsModel(255);
    v0 = sub_21CB850C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF6BA8);
    }
  }
}

void sub_21C72158C()
{
  sub_21C721534();
  if (v0 <= 0x3F)
  {
    sub_21C705CFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C721630()
{
  sub_21C6F07E4(319, &qword_27CDEABC0, MEMORY[0x277D49978], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for PMMultipleAccountsDetailsModel.State(319);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_21CB81114();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_21C7217AC()
{
  result = qword_27CDEFF50;
  if (!qword_27CDEFF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFF50);
  }

  return result;
}

uint64_t type metadata accessor for PMAddAccountView()
{
  result = qword_27CDEDE58;
  if (!qword_27CDEDE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C72184C()
{
  sub_21C721920();
  if (v0 <= 0x3F)
  {
    sub_21C721A6C();
    if (v1 <= 0x3F)
    {
      sub_21C7219FC();
      if (v2 <= 0x3F)
      {
        sub_21C70640C();
        if (v3 <= 0x3F)
        {
          sub_21C7205C4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21C721920()
{
  if (!qword_27CDEDE68)
  {
    type metadata accessor for PMAddAccountModel(255);
    sub_21C7219B4(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel);
    v0 = sub_21CB826A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEDE68);
    }
  }
}

uint64_t sub_21C7219B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21C7219FC()
{
  if (!qword_27CDEDE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDE78, &qword_21CBA8ED8);
    sub_21C721AD4();
    v0 = sub_21CB81FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEDE70);
    }
  }
}

void sub_21C721A6C()
{
  if (!qword_27CDEB178)
  {
    sub_21CB823B4();
    v0 = sub_21CB82074();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEB178);
    }
  }
}

unint64_t sub_21C721AD4()
{
  result = qword_27CDEDE80;
  if (!qword_27CDEDE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDE78, &qword_21CBA8ED8);
    sub_21C721B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDE80);
  }

  return result;
}

unint64_t sub_21C721B58()
{
  result = qword_27CDEBEC0;
  if (!qword_27CDEBEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBEC0);
  }

  return result;
}

unint64_t sub_21C721BB0()
{
  result = qword_27CDEDE88;
  if (!qword_27CDEDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDE88);
  }

  return result;
}

void sub_21C721C24()
{
  type metadata accessor for PMNewGroupFlow.MoveAccountsConfiguration(319);
  if (v0 <= 0x3F)
  {
    sub_21C721F48();
    if (v1 <= 0x3F)
    {
      sub_21C722010(319, &qword_27CDF2A40, MEMORY[0x277CDD968], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_21C713604(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_21C722074(319, &qword_27CDF6D78, &qword_27CDECBD8, &unk_21CBA5300, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_21C722010(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_21C705CFC();
              if (v6 <= 0x3F)
              {
                sub_21C707F4C();
                if (v7 <= 0x3F)
                {
                  sub_21C70640C();
                  if (v8 <= 0x3F)
                  {
                    sub_21C713604(319, &qword_27CDED658, &type metadata for PMAccountsNavigationStyle, MEMORY[0x277CDF468]);
                    if (v9 <= 0x3F)
                    {
                      sub_21C722010(319, &qword_27CDEC5D8, type metadata accessor for PMDebugSettingsManager, type metadata accessor for PMDependency);
                      if (v10 <= 0x3F)
                      {
                        sub_21C722074(319, &qword_27CDEACF0, &qword_27CDEACF8, &unk_21CBC1FB0, type metadata accessor for PMDependency);
                        if (v11 <= 0x3F)
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

uint64_t sub_21C721EF0()
{
  v0 = type metadata accessor for PMAccount(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_21C721F48()
{
  result = qword_27CDF2A38;
  if (!qword_27CDF2A38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CDF2A38);
  }

  return result;
}

void sub_21C721FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C722010(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C722074(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_21C7220F8()
{
  result = type metadata accessor for PMAccount(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PMSharingGroup();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for PMGeneratedPasswordsLogView()
{
  result = qword_27CDF3588;
  if (!qword_27CDF3588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C7221C8()
{
  sub_21C721A6C();
  if (v0 <= 0x3F)
  {
    sub_21C706378();
    if (v1 <= 0x3F)
    {
      sub_21C7222E0();
      if (v2 <= 0x3F)
      {
        sub_21C722330(319, &qword_27CDF35A0, &qword_27CDEBEA8, &unk_21CBA38A0);
        if (v3 <= 0x3F)
        {
          sub_21C722330(319, &qword_27CDF35A8, &qword_27CDEBEB0, &unk_21CBA5440);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21C7222E0()
{
  if (!qword_27CDF3598)
  {
    v0 = sub_21CB84D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF3598);
    }
  }
}

void sub_21C722330(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21CB84D84();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21C7223B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21C72243C()
{
  if (!qword_27CDF8B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFEE8, &unk_21CBADDE0);
    v0 = sub_21CB84F94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF8B30);
    }
  }
}

void sub_21C7224C0(uint64_t a1)
{
  sub_21C7086F8();
  if (v2 <= 0x3F)
  {
    sub_21C7225E8(319, &qword_27CDEE2A8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 32);
      sub_21CB85E54();
      if (v5 <= 0x3F)
      {
        sub_21C7225E8(319, &qword_27CDEE7A0, &type metadata for PMConfirmationDialogOrAlertPresentation, MEMORY[0x277D83D88]);
        if (v6 <= 0x3F)
        {
          sub_21C7226D8();
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21C7225E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21C722638(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21C722688(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_21C7226D8()
{
  result = qword_27CDEE460;
  if (!qword_27CDEE460)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27CDEE460);
  }

  return result;
}

uint64_t sub_21C722748()
{
  result = sub_21CB818C4();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_21CB80E34();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_21CB81114();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for PMImportView()
{
  result = qword_27CDF60D0;
  if (!qword_27CDF60D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C7228E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C722948()
{
  sub_21C7228E4(319, &qword_27CDF60E0, type metadata accessor for PMCredentialExchangeDataImportModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_21C7228E4(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21C722A48()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0038, &qword_21CBAE200);
  type metadata accessor for PMCredentialExchangeDataImportModel(255);
  type metadata accessor for PMImportView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0030, &qword_21CBAE1F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0028, &qword_21CBAE1F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0138, &qword_21CBC0840);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0020, &qword_21CBAE1E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0108, &qword_21CBAE378);
  sub_21C8E1640();
  sub_21C71B768(&qword_27CDF0120, type metadata accessor for PMCredentialExchangeDataImportModel);
  sub_21C722E44();
  swift_getOpaqueTypeConformance2();
  sub_21C8E1778();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C71B768(&qword_27CDF0130, type metadata accessor for PMImportView);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_21C722C50()
{
  result = qword_27CDF00A0;
  if (!qword_27CDF00A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0098, &qword_21CBAE260);
    sub_21C71B768(&qword_27CDEBDC8, type metadata accessor for PMAddAccountView);
    sub_21C71B768(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF00A0);
  }

  return result;
}

unint64_t sub_21C722D3C()
{
  result = qword_27CDECB50;
  if (!qword_27CDECB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECB50);
  }

  return result;
}

unint64_t sub_21C722D90()
{
  result = qword_27CDF00A8;
  if (!qword_27CDF00A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC390, &qword_21CBA40E0);
    sub_21C71B768(&qword_27CDEE538, MEMORY[0x277CE0570]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF00A8);
  }

  return result;
}

unint64_t sub_21C722E44()
{
  result = qword_27CDF0128;
  if (!qword_27CDF0128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0108, &qword_21CBAE378);
    sub_21C71B768(&qword_27CDF0130, type metadata accessor for PMImportView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0128);
  }

  return result;
}

unint64_t sub_21C722F00()
{
  result = qword_27CDF0148;
  if (!qword_27CDF0148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAED8, &unk_21CBA0730);
    sub_21C71B768(&qword_27CDEADE0, type metadata accessor for PMAccount);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0148);
  }

  return result;
}

uint64_t sub_21C722FC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C723010(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  type metadata accessor for PMConfirmationDialogOrAlertViewModifier();
  swift_getWitnessTable();
  sub_21CB83744();
  swift_getWitnessTable();
  sub_21C71F3FC();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  sub_21CB834A4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_21C7231F4@<X0>(_BYTE *a1@<X8>)
{
  sub_21C723244();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

unint64_t sub_21C723244()
{
  result = qword_27CDED668;
  if (!qword_27CDED668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED668);
  }

  return result;
}

uint64_t sub_21C7232A0(char *a1)
{
  v2 = *a1;
  sub_21C723244();
  return sub_21CB82FA4();
}

uint64_t sub_21C7232EC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PMSceneDelegate();
  result = sub_21CB81CF4();
  *a1 = result;
  return result;
}

uint64_t sub_21C72332C@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v2 = sub_21CB81FE4();
  v82 = *(v2 - 8);
  v83 = v2;
  v3 = *(v82 + 64);
  MEMORY[0x28223BE20](v2);
  v81 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for PMAppRootView();
  v69 = *(v86 - 1);
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v86);
  v85 = v6;
  v77 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v7 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v73 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD08, &qword_21CBA0410);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v63 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD10, &qword_21CBA0418);
  v64 = *(v63 - 8);
  v13 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  v15 = &v63 - v14;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD18, &qword_21CBA0420);
  v67 = *(v68 - 8);
  v16 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v18 = &v63 - v17;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD20, &qword_21CBA0428);
  v70 = *(v71 - 8);
  v19 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v65 = &v63 - v20;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD28, &qword_21CBA0430);
  v21 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v76 = &v63 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD30, &qword_21CBA0438);
  v79 = *(v23 - 8);
  v80 = v23;
  v24 = *(v79 + 64);
  MEMORY[0x28223BE20](v23);
  v78 = &v63 - v25;
  sub_21C723E60(v12);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACA8, &qword_21CBA0358);
  v27 = v1;
  sub_21CB85084();
  v28 = sub_21C7A4648();
  sub_21CB84A04();

  sub_21C6EA794(v12, &qword_27CDEAD08, &qword_21CBA0410);
  v29 = *MEMORY[0x277CCA850];
  sub_21CB855C4();
  v74 = v26;
  sub_21CB85084();
  v89 = v9;
  v90 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = v18;
  v31 = v63;
  sub_21CB845B4();
  v32 = v31;

  (*(v64 + 8))(v15, v31);
  v33 = *(v1 + v86[5]);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v34 = sub_21C725C3C(v33, v89);

  swift_getKeyPath();
  v89 = v34;
  sub_21C705CB4(&qword_27CDF62E0, type metadata accessor for PMNotificationManager);
  sub_21CB810D4();

  v35 = OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager__notifiedAccount;
  swift_beginAccess();
  v36 = v73;
  sub_21C725C54(v34 + v35, v73);

  v37 = v77;
  sub_21C7252BC(v1, v77);
  v38 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v39 = swift_allocObject();
  sub_21C725254(v37, v39 + v38, type metadata accessor for PMAppRootView);
  v87 = v32;
  v88 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21C725DFC();
  v40 = v65;
  v41 = v68;
  v42 = v66;
  sub_21CB84924();

  sub_21C6EA794(v36, &unk_27CDEBE60, &unk_21CB9FF40);
  (*(v67 + 8))(v42, v41);
  v43 = (v27 + v86[6]);
  if (*v43)
  {
    v44 = v40;
    v45 = *(*v43 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_selectedQuickAction);
    sub_21C7252BC(v27, v37);
    v46 = swift_allocObject();
    sub_21C725254(v37, v46 + v38, type metadata accessor for PMAppRootView);
    v47 = v27;
    v48 = v76;
    (*(v70 + 32))(v76, v44, v71);
    v49 = v75;
    *(v48 + *(v75 + 52)) = v45;
    v50 = (v48 + *(v49 + 56));
    *v50 = sub_21C7A48F4;
    v50[1] = v46;
    v51 = v86[7];

    v52 = v81;
    sub_21C7260B0(v81);
    sub_21C7252BC(v47, v37);
    v53 = swift_allocObject();
    sub_21C725254(v37, v53 + v38, type metadata accessor for PMAppRootView);
    sub_21C6EADEC(&qword_27CDEADE8, &qword_27CDEAD28, &qword_21CBA0430);
    sub_21C705CB4(&qword_27CDEADF0, MEMORY[0x277CDD6C8]);
    v54 = v78;
    v55 = v83;
    sub_21CB84934();

    (*(v82 + 8))(v52, v55);
    sub_21C6EA794(v48, &qword_27CDEAD28, &qword_21CBA0430);
    KeyPath = swift_getKeyPath();
    sub_21CB85084();
    v57 = v87;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_21C7A4964;
    *(v58 + 24) = v57;
    v59 = v84;
    (*(v79 + 32))(v84, v54, v80);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEADF8, &qword_21CBA04C8);
    v61 = (v59 + *(result + 36));
    *v61 = KeyPath;
    v61[1] = sub_21C7A4968;
    v61[2] = v58;
  }

  else
  {
    v62 = v43[1];
    type metadata accessor for PMSceneDelegate();
    sub_21C705CB4(&qword_27CDEACE0, type metadata accessor for PMSceneDelegate);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C723E08()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C723E60@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v94 = sub_21CB81024();
  v83 = *(v94 - 8);
  v2 = *(v83 + 64);
  MEMORY[0x28223BE20](v94);
  v81 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for PMAppRootView();
  v89 = *(v90 - 8);
  v86 = *(v89 + 8);
  MEMORY[0x28223BE20](v90);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACA8, &qword_21CBA0358);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v77 - v9;
  v82 = type metadata accessor for PMAppRootNavigationView();
  v11 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD78, &qword_21CBA0460);
  v14 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v92 = &v77 - v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD70, &qword_21CBA0458);
  v79 = *(v80 - 8);
  v16 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v93 = &v77 - v17;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD40, &qword_21CBA0440);
  v18 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v88 = &v77 - v19;
  sub_21CB85084();
  v20 = *(v99 + 16);

  sub_21C724D00(v13);
  v98 = v1;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v21 = *(v7 + 8);
  *&v97 = v7 + 8;
  v21(v10, v6);
  sub_21C7252BC(v1, v5);
  v22 = (v89[80] + 16) & ~v89[80];
  v85 = v89[80];
  v84 = v22 + v86;
  v23 = swift_allocObject();
  v86 = v22;
  v89 = v5;
  sub_21C725254(v5, v23 + v22, type metadata accessor for PMAppRootView);
  type metadata accessor for PMOnboardingRootView();
  sub_21C705CB4(&qword_27CDED210, type metadata accessor for PMAppRootNavigationView);
  sub_21C705CB4(&qword_27CDEAD98, type metadata accessor for PMOnboardingRootView);
  v24 = v92;
  sub_21CB847B4();

  sub_21C719000(v13, type metadata accessor for PMAppRootNavigationView);
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v82 = v10;
  v25 = v10;
  v26 = v24;
  v78 = v6;
  v96 = v21;
  v21(v25, v6);
  v27 = v99;
  LODWORD(v77) = v100;
  v28 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD90, &qword_21CBA0468) + 36)];
  *v28 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v29 = type metadata accessor for PMICloudTermsAndConditionsAlert();
  v30 = *(v29 + 20);
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v32 = (v28 + v30);
  sub_21CB86544();
  sub_21C7253C8(KeyPath, v104);

  type metadata accessor for PMDebugSettingsManager();
  sub_21C705CB4(&qword_27CDEAE00, type metadata accessor for PMDebugSettingsManager);
  v33 = sub_21CB82674();
  v35 = v34;

  *v32 = v33;
  v32[1] = v35;
  v36 = v28 + *(v29 + 24);
  *v36 = v27;
  v36[16] = v77;
  v37 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7072A8(v37, v99);

  type metadata accessor for PMAccountsState();
  sub_21C705CB4(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v38 = sub_21CB82674();
  v40 = v39;

  v41 = &v26[*(v95 + 36)];
  *v41 = v38;
  v41[1] = v40;
  v42 = v81;
  sub_21CB81014();
  v43 = sub_21CB81004();
  v45 = v44;
  v83 = *(v83 + 8);
  (v83)(v42, v94);
  *&v104 = v43;
  *(&v104 + 1) = v45;
  v46 = v82;
  v47 = v78;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v96(v46, v47);
  v77 = sub_21C7A47E4();
  v48 = sub_21C71F3FC();
  v49 = MEMORY[0x277D837D0];
  v50 = v92;
  sub_21CB84764();

  sub_21C6EA794(v50, &qword_27CDEAD78, &qword_21CBA0460);
  sub_21CB81014();
  v51 = sub_21CB81004();
  v53 = v52;
  (v83)(v42, v94);
  v105 = v51;
  v106 = v53;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v96(v46, v47);
  *&v99 = v95;
  *(&v99 + 1) = v49;
  v100 = MEMORY[0x277CE1428];
  v101 = v77;
  v102 = v48;
  v103 = MEMORY[0x277CE1410];
  swift_getOpaqueTypeConformance2();
  v54 = v80;
  v55 = v88;
  v56 = v93;
  sub_21CB84754();

  (*(v79 + 8))(v56, v54);
  v57 = v98;
  sub_21CB85084();
  v58 = *(v99 + 24);

  type metadata accessor for PMInboundOTPAuthURLModel(0);
  sub_21C705CB4(&qword_27CDEAE10, type metadata accessor for PMInboundOTPAuthURLModel);
  v59 = sub_21CB82674();
  v61 = v60;
  v62 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD68, &qword_21CBA0450) + 36));
  *v62 = v59;
  v62[1] = v61;
  sub_21CB85084();
  v63 = *(v99 + 32);

  LODWORD(v45) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD58, &qword_21CBA0448) + 36);
  type metadata accessor for PMHandleInboundTOTPMigrationURLModel(0);
  sub_21C705CB4(&qword_27CDEAE18, type metadata accessor for PMHandleInboundTOTPMigrationURLModel);
  sub_21CB850A4();
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v96(v46, v47);
  v97 = v99;
  v64 = v100;
  v65 = v89;
  sub_21C7252BC(v57, v89);
  v66 = swift_allocObject();
  sub_21C725254(v65, v66 + v86, type metadata accessor for PMAppRootView);
  v105 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAE20, &unk_21CBBF670);
  sub_21CB84D44();
  v67 = v104;
  v105 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAE28, &unk_21CBA0620);
  sub_21CB84D44();
  v68 = v104;
  v69 = v55 + *(v87 + 36);
  *v69 = v97;
  *(v69 + 16) = v64;
  *(v69 + 24) = sub_21C7A4B98;
  *(v69 + 32) = v66;
  *(v69 + 40) = v67;
  *(v69 + 56) = v68;
  v70 = *(v57 + *(v90 + 40));
  v71 = sub_21CB852C4();
  v72 = type metadata accessor for PMGlobalAnimationNamespaceContainer();
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  v75 = swift_allocObject();
  sub_21CB81104();
  *(v75 + 16) = v71;
  sub_21C7A4758();
  sub_21C705CB4(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer);
  sub_21CB84164();

  return sub_21C6EA794(v55, &qword_27CDEAD40, &qword_21CBA0440);
}

uint64_t sub_21C724D00@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB83AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - v8;
  type metadata accessor for PMAppRootNavigationModel();
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB850A4();
  v10 = type metadata accessor for PMAppRootNavigationView();
  v11 = v10[5];
  sub_21CB83AC4();
  (*(v3 + 16))(v7, v9, v2);
  v12 = MEMORY[0x277CDE408];
  sub_21C71B768(&qword_27CDEFF88, MEMORY[0x277CDE408]);
  sub_21C71B768(&qword_27CDEFF90, v12);
  sub_21CB82284();
  (*(v3 + 8))(v9, v2);
  v13 = v10[6];
  *(a1 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v14 = v10[7];
  *(a1 + v14) = swift_getKeyPath();
  v15 = v10[8];
  *(a1 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEADD0, &qword_21CBA6F70);
  swift_storeEnumTagMultiPayload();
  v16 = a1 + v10[9];
  v25[1] = 0;
  v25[2] = 0;
  v26 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF98, &qword_21CBAE0B0);
  sub_21CB84D44();
  v17 = v28;
  v18 = v29;
  *v16 = v27;
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  v19 = v10[10];
  *(a1 + v19) = swift_getKeyPath();
  v20 = v10[11];
  *(a1 + v20) = swift_getKeyPath();
  v21 = v10[12];
  *(a1 + v21) = swift_getKeyPath();
  v22 = a1 + v10[13];
  type metadata accessor for PMGlobalAnimationNamespaceContainer();
  sub_21C71B768(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer);
  result = sub_21CB82084();
  *v22 = result;
  *(v22 + 8) = v24 & 1;
  return result;
}

uint64_t sub_21C7250BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21C72A8B0();
  *a2 = result;
  return result;
}

uint64_t sub_21C7250E8(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 136);
  *(*a2 + 136) = *a1;
}

uint64_t sub_21C72512C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21C72AED8();
  *a2 = result;
  return result;
}

uint64_t sub_21C725158(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 144);
  *(*a2 + 144) = *a1;
}

uint64_t sub_21C7251A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__isShowingOnboardingSheet);
  return result;
}

uint64_t sub_21C725254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7252BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppRootView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C725320@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810D4();

  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_21C7253E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810D4();

  *a2 = *(v3 + 57);
  return result;
}

unint64_t sub_21C7254B4()
{
  result = qword_27CDEAD88;
  if (!qword_27CDEAD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAD90, &qword_21CBA0468);
    type metadata accessor for PMAppRootNavigationView();
    type metadata accessor for PMOnboardingRootView();
    sub_21C705CB4(&qword_27CDED210, type metadata accessor for PMAppRootNavigationView);
    sub_21C705CB4(&qword_27CDEAD98, type metadata accessor for PMOnboardingRootView);
    swift_getOpaqueTypeConformance2();
    sub_21C705CB4(&qword_27CDEADA0, type metadata accessor for PMICloudTermsAndConditionsAlert);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAD88);
  }

  return result;
}

unint64_t sub_21C725620()
{
  result = qword_27CDEADA8;
  if (!qword_27CDEADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEADA8);
  }

  return result;
}

uint64_t sub_21C725678@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810D4();

  *a2 = *(v3 + 58);
  return result;
}

uint64_t sub_21C72574C@<X0>(uint64_t a1@<X8>)
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

id sub_21C725878@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810D4();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_21C725934(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_21C79D23C(v2);
}

unint64_t sub_21C725964()
{
  result = qword_27CDEAD60;
  if (!qword_27CDEAD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAD68, &qword_21CBA0450);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAD70, &qword_21CBA0458);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAD78, &qword_21CBA0460);
    sub_21C7A47E4();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C725B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAD60);
  }

  return result;
}

unint64_t sub_21C725AC0()
{
  result = qword_27CDEAD50;
  if (!qword_27CDEAD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAD58, &qword_21CBA0448);
    sub_21C725964();
    sub_21C705CB4(&qword_27CDEADB8, type metadata accessor for PMHandleInboundTOTPMigrationURLModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAD50);
  }

  return result;
}

unint64_t sub_21C725B7C()
{
  result = qword_27CDEADB0;
  if (!qword_27CDEADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEADB0);
  }

  return result;
}

unint64_t sub_21C725BD0()
{
  result = qword_27CDEADC0;
  if (!qword_27CDEADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEADC0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI9PMAccountVIegn_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21C725C54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C725CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PMAccount.UniqueID(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for PMAccount.Storage(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

unint64_t sub_21C725DFC()
{
  result = qword_27CDEADD8;
  if (!qword_27CDEADD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDEBE60, &unk_21CB9FF40);
    sub_21C705CB4(&qword_27CDEADE0, type metadata accessor for PMAccount);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEADD8);
  }

  return result;
}

uint64_t sub_21C725EB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_21CB82F84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23 - v17);
  sub_21C6EDBAC(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_21CB85B04();
    v22 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_21C7260D8()
{
  v1 = *(type metadata accessor for PMAppRootView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C74176C(v2);
}

double sub_21C726138@<D0>(_OWORD *a1@<X8>)
{
  sub_21C726188();
  sub_21CB82F94();
  result = *&v3;
  *a1 = v3;
  return result;
}

unint64_t sub_21C726188()
{
  result = qword_27CDEACA0;
  if (!qword_27CDEACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEACA0);
  }

  return result;
}

uint64_t sub_21C7261F4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_21C726188();

  return sub_21CB82FA4();
}

uint64_t sub_21C726258@<X0>(uint64_t a1@<X8>)
{
  v176 = a1;
  v167 = sub_21CB81024();
  v166 = *(v167 - 8);
  v2 = *(v166 + 64);
  MEMORY[0x28223BE20](v167);
  v165 = &v143 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  v4 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164);
  v163 = &v143 - v5;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v6 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162);
  v161 = &v143 - v7;
  v8 = type metadata accessor for PMAppRootNavigationView();
  v9 = *(v8 - 8);
  v186 = (v8 - 8);
  v193 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v177 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  v195 = *(v11 - 8);
  v12 = *(v195 + 64);
  MEMORY[0x28223BE20](v11);
  v194 = &v143 - v13;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFF0, &qword_21CBAE1B8);
  v14 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v16 = &v143 - v15;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFF8, &qword_21CBAE1C0);
  v153 = *(v152 - 8);
  v17 = *(v153 + 64);
  MEMORY[0x28223BE20](v152);
  v148 = &v143 - v18;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0000, &qword_21CBAE1C8);
  v155 = *(v154 - 8);
  v19 = *(v155 + 64);
  MEMORY[0x28223BE20](v154);
  v178 = &v143 - v20;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0008, &qword_21CBAE1D0);
  v157 = *(v156 - 8);
  v21 = *(v157 + 64);
  MEMORY[0x28223BE20](v156);
  v179 = &v143 - v22;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0010, &qword_21CBAE1D8);
  v159 = *(v158 - 8);
  v23 = *(v159 + 64);
  MEMORY[0x28223BE20](v158);
  v185 = (&v143 - v24);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0018, &qword_21CBAE1E0);
  v25 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180);
  v181 = &v143 - v26;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0020, &qword_21CBAE1E8);
  v27 = *(*(v183 - 8) + 64);
  MEMORY[0x28223BE20](v183);
  v187 = &v143 - v28;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0028, &qword_21CBAE1F0);
  v168 = *(v170 - 8);
  v29 = *(v168 + 64);
  MEMORY[0x28223BE20](v170);
  v184 = &v143 - v30;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0030, &qword_21CBAE1F8);
  v171 = *(v172 - 8);
  v31 = *(v171 + 64);
  MEMORY[0x28223BE20](v172);
  v169 = &v143 - v32;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0038, &qword_21CBAE200);
  v174 = *(v175 - 8);
  v33 = *(v174 + 64);
  MEMORY[0x28223BE20](v175);
  v173 = &v143 - v34;
  sub_21C727EE4(v16);
  sub_21CB85084();
  v35 = v198;
  v36 = type metadata accessor for PMAppRootNavigationModel();
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB81124();
  v198 = v35;
  v37 = sub_21C8E0800();
  v38 = v149;
  sub_21CB84394();

  sub_21C6EA794(v16, &qword_27CDEFFF0, &qword_21CBAE1B8);

  v39 = v194;
  v189 = v1;
  sub_21CB85094();
  swift_getKeyPath();
  v192 = v11;
  sub_21CB850B4();

  v188 = *(v195 + 8);
  v195 += 8;
  v188(v39, v11);
  v146 = v207;
  v147 = v209;
  v204 = v207;
  v205 = v208;
  v206 = v209;
  v151 = type metadata accessor for PMAppRootNavigationView;
  v40 = v177;
  sub_21C72A2CC(v1, v177, type metadata accessor for PMAppRootNavigationView);
  v41 = *(v193 + 80);
  v160 = ~v41;
  v190 = v41;
  v182 = v10;
  v42 = (v41 + 16) & ~v41;
  v193 = v42;
  v191 = v42 + v10;
  v43 = swift_allocObject();
  v150 = type metadata accessor for PMAppRootNavigationView;
  sub_21C72A334(v40, v43 + v42, type metadata accessor for PMAppRootNavigationView);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA8, &qword_21CBA36B0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0090, &qword_21CBAE258);
  v198 = v38;
  v199 = v36;
  v200 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v149 = sub_21C6EADEC(&qword_27CDEBDC0, &qword_27CDEBDA8, &qword_21CBA36B0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0098, &qword_21CBAE260);
  v46 = sub_21CB83994();
  v47 = sub_21C722C50();
  v198 = v45;
  v199 = v46;
  v200 = v47;
  v201 = MEMORY[0x277CDE2B8];
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v152;
  v50 = v44;
  v51 = v148;
  sub_21CB847C4();

  (*(v153 + 8))(v51, v49);
  v52 = v194;
  v53 = v192;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v54 = v188;
  v188(v52, v53);
  v55 = v209;
  v204 = v207;
  v205 = v208;
  v206 = v209;
  v148 = type metadata accessor for PMNewGroupFlow(0);
  v198 = v49;
  v199 = v50;
  v200 = v144;
  v201 = OpaqueTypeConformance2;
  v202 = v149;
  v203 = v48;
  v153 = MEMORY[0x277CDEE40];
  v152 = swift_getOpaqueTypeConformance2();
  v56 = sub_21C722D3C();
  v57 = sub_21C71B768(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow);
  v58 = v154;
  v59 = v178;
  sub_21CB847C4();

  sub_21C72A584(v55);
  (*(v155 + 8))(v59, v58);
  v60 = v194;
  v61 = v192;
  v62 = v189;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v54(v60, v61);
  v63 = type metadata accessor for PMGeneratedPasswordsLogView();
  v198 = v58;
  v199 = &type metadata for PMNewGroupContext;
  v200 = v148;
  v201 = v152;
  v202 = v56;
  v203 = v57;
  v64 = v177;
  v141 = swift_getOpaqueTypeConformance2();
  v142 = sub_21C71B768(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView);
  v65 = v156;
  v66 = v179;
  sub_21CB847B4();

  v67 = v65;
  (*(v157 + 8))(v66, v65);
  v68 = v62 + *(v186 + 8);
  v69 = v161;
  sub_21C728D50(v161);
  sub_21C72A2CC(v62, v64, v151);
  v70 = swift_allocObject();
  sub_21C72A334(v64, v70 + v193, v150);
  v198 = v67;
  v199 = v63;
  v200 = v141;
  v201 = v142;
  swift_getOpaqueTypeConformance2();
  sub_21C722D90();
  v71 = v181;
  v72 = v158;
  v73 = v185;
  sub_21CB84934();

  sub_21C6EA794(v69, &qword_27CDEC390, &qword_21CBA40E0);
  (*(v159 + 8))(v73, v72);
  KeyPath = swift_getKeyPath();
  v75 = v192;
  sub_21CB85084();
  v76 = v198;
  v77 = &v71[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF00B0, &qword_21CBAE2E0) + 36)];
  *v77 = KeyPath;
  v77[1] = sub_21C72A670;
  v77[2] = v76;
  v78 = v194;
  sub_21CB85094();
  swift_getKeyPath();
  v79 = &v71[*(v180 + 36)];
  sub_21CB850B4();

  v188(v78, v75);
  v80 = *(v62 + *(v186 + 12));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v179 = qword_27CE18778;
  sub_21CB86544();
  v81 = sub_21C72A898(v80, v198);
  v178 = v80;
  v82 = v81;

  swift_getKeyPath();
  v198 = v82;
  v162 = sub_21C71B768(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter);
  sub_21CB810D4();

  v83 = OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportedCredentialData;
  swift_beginAccess();
  v84 = v163;
  sub_21C6EDBAC(v82 + v83, v163, &qword_27CDEFFE8, &qword_21CBAE1B0);

  v85 = v64;
  sub_21C72A2CC(v62, v64, type metadata accessor for PMAppRootNavigationView);
  v86 = v190;
  v87 = swift_allocObject();
  v185 = type metadata accessor for PMAppRootNavigationView;
  sub_21C72A334(v64, v87 + v193, type metadata accessor for PMAppRootNavigationView);
  sub_21C8E0B80();
  sub_21C8E0FDC();
  v88 = v181;
  sub_21CB84934();

  sub_21C6EA794(v84, &qword_27CDEFFE8, &qword_21CBAE1B0);
  sub_21C6EA794(v88, &qword_27CDF0018, &qword_21CBAE1E0);
  v89 = v165;
  sub_21CB81014();
  v181 = sub_21CB81004();
  v180 = v90;
  (*(v166 + 8))(v89, v167);
  v186 = type metadata accessor for PMAppRootNavigationView;
  sub_21C72A2CC(v62, v64, type metadata accessor for PMAppRootNavigationView);
  sub_21CB858B4();
  v91 = sub_21CB858A4();
  v92 = (v86 + 32) & v160;
  v93 = swift_allocObject();
  v94 = MEMORY[0x277D85700];
  *(v93 + 16) = v91;
  *(v93 + 24) = v94;
  v95 = v185;
  sub_21C72A334(v85, v93 + v92, v185);
  v96 = v62;
  sub_21C72A2CC(v62, v85, type metadata accessor for PMAppRootNavigationView);
  v97 = sub_21CB858A4();
  v98 = swift_allocObject();
  *(v98 + 16) = v97;
  *(v98 + 24) = MEMORY[0x277D85700];
  sub_21C72A334(v85, v98 + v92, v95);
  sub_21CB84F64();
  v99 = v198;
  v167 = v199;
  LOBYTE(v86) = v200;
  v100 = v186;
  sub_21C72A2CC(v96, v85, v186);
  v101 = swift_allocObject();
  sub_21C72A334(v85, v101 + v193, v95);
  v102 = swift_allocObject();
  *(v102 + 16) = sub_21C8E1104;
  *(v102 + 24) = v101;
  v103 = swift_getKeyPath();
  v104 = &v187[*(v183 + 36)];
  *v104 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF00F8, &qword_21CBAE368);
  *(v104 + v105[18]) = 0;
  v106 = (v104 + v105[15]);
  v107 = v180;
  *v106 = v181;
  v106[1] = v107;
  v108 = v104 + v105[16];
  v109 = v167;
  *v108 = v99;
  *(v108 + 1) = v109;
  v108[16] = v86;
  *(v104 + v105[17]) = 0;
  *(v104 + v105[19]) = 2;
  v110 = (v104 + v105[20]);
  *v110 = sub_21C8E1174;
  v110[1] = v102;
  v111 = (v104 + v105[21]);
  *v111 = sub_21C8E119C;
  v111[1] = 0;
  v112 = v100;
  sub_21C72A2CC(v96, v85, v100);
  v113 = sub_21CB858A4();
  v114 = swift_allocObject();
  *(v114 + 16) = v113;
  *(v114 + 24) = MEMORY[0x277D85700];
  v115 = v185;
  sub_21C72A334(v85, v114 + v92, v185);
  sub_21C72A2CC(v96, v85, v112);
  v116 = sub_21CB858A4();
  v117 = swift_allocObject();
  *(v117 + 16) = v116;
  *(v117 + 24) = MEMORY[0x277D85700];
  v118 = v117 + v92;
  v119 = v85;
  sub_21C72A334(v85, v118, v115);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0100, &qword_21CBAE370);
  sub_21CB84F64();
  v120 = type metadata accessor for PMCredentialExchangeDataImportModel(0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0108, &qword_21CBAE378);
  v167 = sub_21C8E1640();
  v182 = sub_21C71B768(&qword_27CDF0120, type metadata accessor for PMCredentialExchangeDataImportModel);
  v180 = sub_21C722E44();
  v121 = v183;
  v122 = v120;
  v181 = v120;
  v123 = v187;
  sub_21CB847C4();

  sub_21C6EA794(v123, &qword_27CDF0020, &qword_21CBAE1E8);
  sub_21CB86544();
  v124 = sub_21C72A898(v178, v198);

  swift_getKeyPath();
  v198 = v124;
  sub_21CB810D4();

  v125 = *(v124 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__accountsToExport);

  v204 = v125;
  sub_21C72A2CC(v189, v85, v186);
  v126 = swift_allocObject();
  sub_21C72A334(v85, v126 + v193, v115);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0138, &qword_21CBC0840);
  v198 = v121;
  v199 = v122;
  v200 = v166;
  v201 = v167;
  v202 = v182;
  v203 = v180;
  v128 = swift_getOpaqueTypeConformance2();
  v129 = sub_21C8E1778();
  v130 = v169;
  v131 = v170;
  v132 = v184;
  sub_21CB84934();

  (*(v168 + 8))(v132, v131);
  sub_21CB81974();
  sub_21C72A2CC(v189, v119, v186);
  v133 = swift_allocObject();
  sub_21C72A334(v119, v133 + v193, v185);
  v198 = v131;
  v199 = v127;
  v200 = v128;
  v201 = v129;
  v134 = swift_getOpaqueTypeConformance2();
  v135 = v173;
  v136 = v172;
  sub_21CB845B4();

  (*(v171 + 8))(v130, v136);
  v137 = v194;
  v138 = v192;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v188(v137, v138);
  v204 = v198;
  v205 = v199;
  v206 = v200;
  type metadata accessor for PMImportView();
  v196 = v136;
  v197 = v134;
  swift_getOpaqueTypeConformance2();
  sub_21C71B768(&qword_27CDF0130, type metadata accessor for PMImportView);
  v139 = v175;
  sub_21CB847C4();

  return (*(v174 + 8))(v135, v139);
}

uint64_t sub_21C727E7C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C727EE4@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0060, &qword_21CBAE210);
  v2 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v60 = &v53 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0170, &qword_21CBAE5E0);
  v4 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v65 = &v53 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  v56 = *(v57 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v57);
  v55 = &v53 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0050, &qword_21CBAE208);
  v59 = *(v64 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x28223BE20](v64);
  v58 = &v53 - v9;
  v10 = sub_21CB83834();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v54 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v61 = (&v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v53 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v53 - v26;
  v28 = *(type metadata accessor for PMAppRootNavigationView() + 24);
  v62 = v1;
  sub_21C728D50(v27);
  (*(v11 + 104))(v25, *MEMORY[0x277CE0558], v10);
  (*(v11 + 56))(v25, 0, 1, v10);
  v29 = *(v15 + 56);
  sub_21C6EDBAC(v27, v18, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v25, &v18[v29], &qword_27CDEC390, &qword_21CBA40E0);
  v30 = *(v11 + 48);
  if (v30(v18, 1, v10) != 1)
  {
    sub_21C6EDBAC(v18, v61, &qword_27CDEC390, &qword_21CBA40E0);
    if (v30(&v18[v29], 1, v10) != 1)
    {
      v33 = v54;
      (*(v11 + 32))(v54, &v18[v29], v10);
      sub_21C71B768(&qword_27CDEE538, MEMORY[0x277CE0570]);
      v34 = v61;
      v35 = sub_21CB85574();
      v36 = *(v11 + 8);
      v36(v33, v10);
      sub_21C6EA794(v25, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v27, &qword_27CDEC390, &qword_21CBA40E0);
      v36(v34, v10);
      sub_21C6EA794(v18, &qword_27CDEC390, &qword_21CBA40E0);
      if (v35)
      {
        goto LABEL_9;
      }

LABEL_7:
      v31 = v60;
      sub_21C8DD2CC(v60);
      sub_21C728C88(v31, v65);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDF0048, &qword_27CDF0050, &qword_21CBAE208);
      sub_21C8E08B8();
      sub_21CB83494();
      return sub_21C6EA794(v31, &qword_27CDF0060, &qword_21CBAE210);
    }

    sub_21C6EA794(v25, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v27, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v11 + 8))(v61, v10);
LABEL_6:
    sub_21C6EA794(v18, &qword_27CDEE530, &unk_21CBA9D80);
    goto LABEL_7;
  }

  sub_21C6EA794(v25, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v27, &qword_27CDEC390, &qword_21CBA40E0);
  if (v30(&v18[v29], 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_21C6EA794(v18, &qword_27CDEC390, &qword_21CBA40E0);
LABEL_9:
  v37 = v55;
  v38 = v57;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v39 = (*(v56 + 8))(v37, v38);
  v61 = &v53;
  v74 = v76;
  v75 = v77;
  MEMORY[0x28223BE20](v39);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0178, &qword_21CBAE610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0180, &qword_21CBAE618);
  sub_21C6EADEC(&qword_27CDF0188, &qword_27CDF0178, &qword_21CBAE610);
  sub_21C6EADEC(&qword_27CDF0190, &qword_27CDF0178, &qword_21CBAE610);
  sub_21C6EADEC(&qword_27CDF0198, &qword_27CDF0178, &qword_21CBAE610);
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF01A0, &qword_21CBAE620);
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF01A8, &qword_21CBAE628);
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF01B0, &qword_21CBAE630);
  v43 = type metadata accessor for PMAppRootNavigationModel();
  v44 = type metadata accessor for PMAppSourceList();
  v45 = sub_21C71B768(&qword_27CDF01B8, type metadata accessor for PMAppSourceList);
  v68 = v44;
  v69 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = v42;
  v69 = v43;
  v70 = OpaqueTypeConformance2;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = sub_21C7292FC();
  v49 = sub_21C8E1BB4();
  v68 = v40;
  v69 = &type metadata for PMAppRootNavigationModel.NavigationPath;
  v70 = v41;
  v71 = v47;
  v72 = v48;
  v73 = v49;
  swift_getOpaqueTypeConformance2();
  v50 = v58;
  sub_21CB82914();
  v51 = v59;
  v52 = v64;
  (*(v59 + 16))(v65, v50, v64);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDF0048, &qword_27CDF0050, &qword_21CBAE208);
  sub_21C8E08B8();
  sub_21CB83494();
  return (*(v51 + 8))(v50, v52);
}

uint64_t sub_21C728924(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_21CB839A4();

    return sub_21CB828F4();
  }

  else
  {
    sub_21CB82A94();
    swift_getWitnessTable();
    sub_21CB83734();
    sub_21CB828F4();
    sub_21CB85E54();
    swift_getWitnessTable();
    sub_21CB82A94();
    swift_getWitnessTable();
    sub_21CB83734();
    return sub_21CB828F4();
  }
}

uint64_t sub_21C728A88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_21CB839A4();
    sub_21CB828F4();
  }

  else
  {
    sub_21CB82A94();
    swift_getWitnessTable();
    sub_21CB83734();
    sub_21CB828F4();
    sub_21CB85E54();
    swift_getWitnessTable();
    sub_21CB82A94();
    swift_getWitnessTable();
    sub_21CB83734();
    sub_21CB828F4();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21C728C88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0060, &qword_21CBAE210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_21C728CF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_21C728FD8();
  *a2 = result;
  return result;
}

uint64_t sub_21C728D24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C8C9B20(v4);
}

uint64_t sub_21C728D50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21CB82F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_21C6EDBAC(v2, &v16 - v11, &qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21C716934(v12, a1, &qword_27CDEC390, &qword_21CBA40E0);
  }

  v14 = *v12;
  sub_21CB85B04();
  v15 = sub_21CB83C94();
  sub_21CB81C14();

  sub_21CB82F74();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21C728F30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_21C728FD8()
{
  v1 = v0;
  v2 = *(v0 + 64);
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  v3 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);

  sub_21CB810D4();

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

  sub_21C713194(v5);
  v7 = v6;

  if (v7)
  {

    return &unk_282E48DF8;
  }

  else
  {
    swift_getKeyPath();
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
    sub_21CB810D4();

    if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState) >> 62 == 3)
    {
      return MEMORY[0x277D84F90];
    }

    swift_getKeyPath();
    sub_21CB810D4();

    v9 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact;
    if (!*(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact))
    {
      return MEMORY[0x277D84F90];
    }

    else
    {
      swift_getKeyPath();
      sub_21CB810D4();

      v10 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState);

      v11 = sub_21C8C8514(v10);

      if (v11)
      {
        return &unk_282E48E48;
      }

      swift_getKeyPath();
      sub_21CB810D4();

      if (*(v1 + v9) == 1)
      {
        return &unk_282E48E48;
      }

      else
      {
        return &unk_282E48E20;
      }
    }
  }
}

unint64_t sub_21C7292FC()
{
  result = qword_27CDF01C0;
  if (!qword_27CDF01C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF01C0);
  }

  return result;
}

unint64_t sub_21C729350()
{
  result = qword_27CDF0240;
  if (!qword_27CDF0240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0248, &qword_21CBAE670);
    sub_21C71B768(&qword_27CDF0250, type metadata accessor for PMGroupInvitationsList);
    sub_21C71B768(&qword_27CDF0258, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0240);
  }

  return result;
}

unint64_t sub_21C72943C()
{
  result = qword_27CDF0260;
  if (!qword_27CDF0260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0268, &qword_21CBAE678);
    sub_21C7294F8();
    sub_21C71B768(&qword_27CDF0290, type metadata accessor for PMWiFiList);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0260);
  }

  return result;
}

unint64_t sub_21C7294F8()
{
  result = qword_27CDF0270;
  if (!qword_27CDF0270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0278, &qword_21CBAE680);
    sub_21C71B768(&qword_27CDF0280, type metadata accessor for PMAppSecurityRecommendationsList);
    sub_21C71B768(&qword_27CDF0288, type metadata accessor for PMVerificationCodesList);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0270);
  }

  return result;
}

unint64_t sub_21C7295E4()
{
  result = qword_27CDF0298;
  if (!qword_27CDF0298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF02A0, &qword_21CBAE688);
    sub_21C8E1FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0298);
  }

  return result;
}

unint64_t sub_21C729668()
{
  result = qword_27CDF02B8;
  if (!qword_27CDF02B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF02C0, &qword_21CBAE698);
    sub_21C729724();
    sub_21C71B768(&qword_27CDF02D8, type metadata accessor for PMMultipleAccountsDetailsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF02B8);
  }

  return result;
}

unint64_t sub_21C729724()
{
  result = qword_27CDF02C8;
  if (!qword_27CDF02C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF02D0, &qword_21CBAE6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF02C8);
  }

  return result;
}

unint64_t sub_21C7297A8()
{
  result = qword_27CDF02E0;
  if (!qword_27CDF02E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF02E0);
  }

  return result;
}

uint64_t sub_21C7297FC(uint64_t a1)
{
  v2 = type metadata accessor for PMAppRootNavigationView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF01A0, &qword_21CBAE620);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  sub_21C729AF0(&v18 - v8);
  sub_21C72A2CC(a1, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppRootNavigationView);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_21C72A334(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PMAppRootNavigationView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF01A8, &qword_21CBAE628);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF01B0, &qword_21CBAE630);
  v13 = type metadata accessor for PMAppRootNavigationModel();
  v14 = type metadata accessor for PMAppSourceList();
  v15 = sub_21C71B768(&qword_27CDF01B8, type metadata accessor for PMAppSourceList);
  v19 = v14;
  v20 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v12;
  v20 = v13;
  v21 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21C7292FC();
  sub_21C8E1BB4();
  sub_21CB84564();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21C729AF0@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0338, &qword_21CBAE810);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for PMAppSourceList();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF01B0, &qword_21CBAE630);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  sub_21CB85084();
  v14 = *(v20 + 64);

  sub_21C729E34(v8);
  sub_21CB837F4();
  v15 = sub_21CB83804();
  (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
  v16 = sub_21C71B768(&qword_27CDF01B8, type metadata accessor for PMAppSourceList);
  sub_21CB848B4();
  sub_21C6EA794(v4, &qword_27CDF0338, &qword_21CBAE810);
  sub_21C719300(v8, type metadata accessor for PMAppSourceList);
  sub_21CB85084();
  v17 = v20;
  type metadata accessor for PMAppRootNavigationModel();
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB81124();
  v21 = v16;
  v22 = v17;
  v20 = v5;
  swift_getOpaqueTypeConformance2();
  sub_21CB84394();

  (*(v10 + 8))(v13, v9);
}

uint64_t sub_21C729E34@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PMAppSourceListModel(0);
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB850A4();
  v2 = type metadata accessor for PMAppSourceList();
  v3 = v2[5];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v5 = (a1 + v3);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v30);

  type metadata accessor for PMAccountsState();
  sub_21C72A284(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v6 = sub_21CB82674();
  v8 = v7;

  *v5 = v6;
  v5[1] = v8;
  v9 = (a1 + v2[6]);
  v10 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7073E8(v10, v30);

  type metadata accessor for PMGroupsStore();
  sub_21C72A284(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v11 = sub_21CB82674();
  v13 = v12;

  *v9 = v11;
  v9[1] = v13;
  v14 = (a1 + v2[7]);
  v15 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7073D0(v15, v30);

  type metadata accessor for PMGeneratedPasswordStore();
  sub_21C72A284(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore);
  v16 = sub_21CB82674();
  v18 = v17;

  *v14 = v16;
  v14[1] = v18;
  v19 = (a1 + v2[8]);
  v20 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C704000(v20, v30);

  type metadata accessor for PMTipsStore();
  sub_21C72A284(&qword_27CDED870, type metadata accessor for PMTipsStore);
  v21 = sub_21CB82674();
  v23 = v22;

  *v19 = v21;
  v19[1] = v23;
  v24 = a1 + v2[9];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = v2[10];
  *(a1 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v26 = v2[11];
  *(a1 + v26) = swift_getKeyPath();
  v27 = a1 + v2[12];
  type metadata accessor for PMGlobalAnimationNamespaceContainer();
  sub_21C72A284(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer);
  result = sub_21CB82084();
  *v27 = result;
  *(v27 + 8) = v29 & 1;
  *(a1 + v2[13]) = 0;
  *(a1 + v2[14]) = 1;
  return result;
}

uint64_t sub_21C72A284(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C72A2CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C72A334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C72A39C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__addAccountSheetModel);
}

uint64_t sub_21C72A488@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contextForPresentedNewFamilyGroupFlow);
  *a2 = v4;
  return sub_21C72A574(v4);
}

uint64_t sub_21C72A540(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21C72A574(*a1);
  return sub_21C8C7608(v2);
}

uint64_t sub_21C72A574(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_21C72A584(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_21C72A594@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C6F0700(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__showGeneratedPasswordsSheet);
  return result;
}

uint64_t sub_21C72A678@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__safariViewControllerURL;
  swift_beginAccess();
  return sub_21C6EDBAC(v3 + v4, a2, &qword_27CDEFEE8, &unk_21CBADDE0);
}

uint64_t sub_21C72A758(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

uint64_t sub_21C72A8B0()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v2 = type metadata accessor for PMCredentialExporter(0);
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    v1 = swift_allocObject();
    v5 = OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportedCredentialData;
    v6 = sub_21CB818C4();
    v7 = *(*(v6 - 8) + 56);
    v7(v1 + v5, 1, 1, v6);
    v7(v1 + v5, 1, 1, v6);
    v8 = OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__dataToExportAfterAlert;
    v9 = type metadata accessor for PMCredentialExporter.DataToExportAfterAlert(0);
    v10 = *(*(v9 - 8) + 56);
    v10(v1 + v8, 1, 1, v9);
    v10(v1 + v8, 1, 1, v9);
    *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportManager) = 0;
    *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__accountsToExport) = 0;
    *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__accountsToExportAfterAlert) = 0;
    sub_21CB81104();
    v11 = *(v0 + 136);
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t sub_21C72AA28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21C72A8B0();
  *a2 = result;
  return result;
}

uint64_t sub_21C72AA68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CB818C4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_21C72AB20@<X0>(BOOL *a1@<X8>)
{
  v3 = *(type metadata accessor for PMAppRootNavigationView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21C72AB94(v6, a1);
}

uint64_t sub_21C72AB94@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for PMAppRootNavigationView() + 40));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v4 = sub_21C72A898(v3, v7);

  swift_getKeyPath();
  sub_21C71B768(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter);
  sub_21CB810D4();

  v5 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__accountsToExportAfterAlert);

  if (v5)
  {
  }

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_21C72ACDC@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for PMAppRootNavigationView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21C72AD50(v6, a1);
}

uint64_t sub_21C72AD50@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for PMAppRootNavigationView() + 44));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v4 = sub_21C72AE7C(v3, v7);

  swift_getKeyPath();
  sub_21C71B768(&qword_27CDF0160, type metadata accessor for PMCredentialImporter);
  sub_21CB810D4();

  v5 = *(v4 + 16);

  *a2 = v5;
  return result;
}

uint64_t sub_21C72AE94(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 136);
  *(*a2 + 136) = *a1;
}

uint64_t sub_21C72AED8()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v2 = type metadata accessor for PMCredentialImporter();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    sub_21CB81104();
    v5 = *(v0 + 144);
    *(v0 + 144) = v1;
  }

  return v1;
}

uint64_t sub_21C72AF58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__importModel);
}

uint64_t sub_21C72B044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a1;
  v97 = a3;
  swift_getWitnessTable();
  v4 = sub_21CB83744();
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_21C71F3FC();
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v108 = v4;
  v109 = MEMORY[0x277D837D0];
  v110 = v5;
  v111 = v6;
  v112 = v7;
  v113 = WitnessTable;
  v114 = v9;
  v115 = v11;
  v116 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v89 = *(OpaqueTypeMetadata2 - 8);
  v13 = *(v89 + 64);
  v14 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v88 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v87 = &v82 - v16;
  v100 = v4;
  v108 = v4;
  v109 = MEMORY[0x277D837D0];
  v110 = v5;
  v96 = v5;
  v99 = v6;
  v111 = v6;
  v112 = v7;
  v102 = WitnessTable;
  v103 = v7;
  v113 = WitnessTable;
  v114 = v9;
  v101 = v9;
  v104 = v11;
  v105 = v10;
  v115 = v11;
  v116 = v10;
  v17 = swift_getOpaqueTypeMetadata2();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v82 - v23;
  v92 = v25;
  v93 = OpaqueTypeMetadata2;
  v26 = v90;
  v95 = sub_21CB834A4();
  v94 = *(v95 - 8);
  v27 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v98 = &v82 - v28;
  v29 = sub_21C72B920(*(v26 + *(a2 + 76)));
  v30 = (v26 + *(a2 + 60));
  v31 = v30[1];
  v108 = *v30;
  v109 = v31;
  if (v29)
  {

    v86 = sub_21C72BDAC(a2);
    v32 = *(a2 + 68);
    v85 = *(a2 + 72);
    v33 = *(a2 + 84);
    v34 = (v26 + *(a2 + 80));
    v36 = *v34;
    v35 = v34[1];
    v84 = v36;
    v83 = v35;
    v38 = *(v26 + v33);
    v37 = *(v26 + v33 + 8);
    v39 = *(v26 + v32);
    v40 = swift_checkMetadataState();
    v41 = v104;
    v42 = v101;
    v43 = v99;
    v44 = v88;
    v45 = v96;
    sub_21CB84404();

    v108 = v40;
    v109 = MEMORY[0x277D837D0];
    v110 = v45;
    v46 = v102;
    v111 = v43;
    v112 = v103;
    v113 = v102;
    v114 = v42;
    v115 = v41;
    v116 = v105;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v48 = v87;
    v49 = v93;
    sub_21C72BE10(v44, v93, OpaqueTypeConformance2);
    v50 = *(v89 + 8);
    v50(v44, v49);
    sub_21C72BE10(v48, v49, OpaqueTypeConformance2);
    v108 = v40;
    v109 = MEMORY[0x277D837D0];
    v110 = v45;
    v111 = v43;
    v51 = v103;
    v112 = v103;
    v113 = v46;
    v114 = v101;
    v115 = v104;
    v116 = v105;
    swift_getOpaqueTypeConformance2();
    sub_21C72BE68(v44, v92, v49);
    v50(v44, v49);
    v52 = v48;
    v53 = v49;
  }

  else
  {

    sub_21C72BDAC(a2);
    v89 = v18;
    v86 = v24;
    v88 = v54;
    v87 = *(a2 + 72);
    v55 = *(a2 + 84);
    v56 = (v26 + *(a2 + 80));
    v58 = *v56;
    v57 = v56[1];
    v85 = v58;
    v84 = v57;
    v59 = *(v26 + v55 + 8);
    v83 = *(v26 + v55);
    v60 = swift_checkMetadataState();
    v61 = v101;
    v62 = v102;
    v63 = v99;
    v45 = v96;
    sub_21CB84714();

    v108 = v60;
    v64 = v60;
    v109 = MEMORY[0x277D837D0];
    v110 = v45;
    v111 = v63;
    v112 = v103;
    v113 = v62;
    v114 = v61;
    v65 = v61;
    v115 = v104;
    v116 = v105;
    v66 = swift_getOpaqueTypeConformance2();
    v67 = v86;
    v68 = v92;
    sub_21C72BE10(v22, v92, v66);
    v50 = *(v89 + 8);
    v50(v22, v68);
    sub_21C72BE10(v67, v68, v66);
    v108 = v64;
    v109 = MEMORY[0x277D837D0];
    v110 = v45;
    v51 = v103;
    v111 = v63;
    v112 = v103;
    v113 = v102;
    v114 = v65;
    v115 = v104;
    v116 = v105;
    swift_getOpaqueTypeConformance2();
    sub_21C909A74(v22, v68);
    v50(v22, v68);
    v52 = v86;
    v53 = v68;
  }

  v50(v52, v53);
  v70 = v99;
  v69 = v100;
  v108 = v100;
  v71 = MEMORY[0x277D837D0];
  v109 = MEMORY[0x277D837D0];
  v110 = v45;
  v111 = v99;
  v112 = v51;
  v73 = v101;
  v72 = v102;
  v113 = v102;
  v114 = v101;
  v74 = v104;
  v75 = v105;
  v115 = v104;
  v116 = v105;
  v76 = swift_getOpaqueTypeConformance2();
  v108 = v69;
  v109 = v71;
  v110 = v45;
  v111 = v70;
  v112 = v51;
  v113 = v72;
  v114 = v73;
  v115 = v74;
  v116 = v75;
  v77 = swift_getOpaqueTypeConformance2();
  v106 = v76;
  v107 = v77;
  v78 = v95;
  v79 = swift_getWitnessTable();
  v80 = v98;
  sub_21C72BE10(v98, v78, v79);
  return (*(v94 + 8))(v80, v78);
}

uint64_t sub_21C72B920(unsigned __int8 a1)
{
  v1 = a1;
  v2 = a1;
  v3 = sub_21CB83834();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v26 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  if (v2 == 2)
  {
    sub_21C866E0C(&v26 - v19);
    (*(v4 + 104))(v18, *MEMORY[0x277CE0558], v3);
    (*(v4 + 56))(v18, 0, 1, v3);
    v21 = *(v7 + 48);
    sub_21C6EDBAC(v20, v10, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EDBAC(v18, &v10[v21], &qword_27CDEC390, &qword_21CBA40E0);
    v22 = *(v4 + 48);
    if (v22(v10, 1, v3) == 1)
    {
      sub_21C6EA794(v18, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v20, &qword_27CDEC390, &qword_21CBA40E0);
      if (v22(&v10[v21], 1, v3) == 1)
      {
        sub_21C6EA794(v10, &qword_27CDEC390, &qword_21CBA40E0);
        v1 = 1;
        return v1 & 1;
      }
    }

    else
    {
      sub_21C6EDBAC(v10, v15, &qword_27CDEC390, &qword_21CBA40E0);
      if (v22(&v10[v21], 1, v3) != 1)
      {
        v23 = v27;
        (*(v4 + 32))(v27, &v10[v21], v3);
        sub_21C72BD54();
        v1 = sub_21CB85574();
        v24 = *(v4 + 8);
        v24(v23, v3);
        sub_21C6EA794(v18, &qword_27CDEC390, &qword_21CBA40E0);
        sub_21C6EA794(v20, &qword_27CDEC390, &qword_21CBA40E0);
        v24(v15, v3);
        sub_21C6EA794(v10, &qword_27CDEC390, &qword_21CBA40E0);
        return v1 & 1;
      }

      sub_21C6EA794(v18, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v20, &qword_27CDEC390, &qword_21CBA40E0);
      (*(v4 + 8))(v15, v3);
    }

    sub_21C6EA794(v10, &qword_27CDEE530, &unk_21CBA9D80);
    v1 = 0;
  }

  return v1 & 1;
}

unint64_t sub_21C72BD54()
{
  result = qword_27CDEE538;
  if (!qword_27CDEE538)
  {
    sub_21CB83834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE538);
  }

  return result;
}

uint64_t sub_21C72BDAC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 64));
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  sub_21CB84F54();
  return v4;
}

uint64_t sub_21C72BE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21CB83484();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_21CB83494();
}

uint64_t sub_21C72BFD8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8B38, &unk_21CBC9AE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFE40, &unk_21CBAE4E0);
  type metadata accessor for PMSafariView(255);
  sub_21C6EADEC(&qword_27CDF8B40, &qword_27CDF8B38, &unk_21CBC9AE0);
  sub_21C6EADEC(&qword_27CDF8B48, &qword_27CDEFE40, &unk_21CBAE4E0);
  sub_21C72C134(&qword_27CDF8B50, type metadata accessor for PMSafariView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C72C134(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_21C72C17C@<D0>(_OWORD *a1@<X8>)
{
  sub_21C72C1CC();
  sub_21CB82F94();
  result = *&v3;
  *a1 = v3;
  return result;
}

unint64_t sub_21C72C1CC()
{
  result = qword_27CDF2E80;
  if (!qword_27CDF2E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2E80);
  }

  return result;
}

uint64_t sub_21C72C220@<X0>(void *a1@<X8>)
{
  v1 = *algn_281750E48;
  *a1 = off_281750E40;
  a1[1] = v1;
}

uint64_t sub_21C72C234(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_21C72C1CC();

  return sub_21CB82FA4();
}

uint64_t sub_21C72C294()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8B18, &unk_21CBC9A60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  sub_21CB84F54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8B38, &unk_21CBC9AE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE40, &unk_21CBAE4E0);
  type metadata accessor for PMSafariView(0);
  sub_21C6EADEC(&qword_27CDF8B40, &qword_27CDF8B38, &unk_21CBC9AE0);
  sub_21C6EADEC(&qword_27CDF8B48, &qword_27CDEFE40, &unk_21CBAE4E0);
  sub_21C72C134(&qword_27CDF8B50, type metadata accessor for PMSafariView);
  sub_21CB847C4();
  return sub_21C72C460(v3);
}

uint64_t sub_21C72C460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8B18, &unk_21CBC9A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PMAppAccountsCollectionView()
{
  result = qword_27CDF4EF8;
  if (!qword_27CDF4EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C72C514()
{
  sub_21C72C5BC();
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

void sub_21C72C5BC()
{
  if (!qword_27CDF4F08)
  {
    type metadata accessor for PMAccount(255);
    v0 = sub_21CB85864();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF4F08);
    }
  }
}

uint64_t type metadata accessor for PMGeneratedPasswordsSearchResultsRow()
{
  result = qword_27CDF3758;
  if (!qword_27CDF3758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C72C660()
{
  if (!qword_27CDF3768)
  {
    type metadata accessor for PMGeneratedPasswordsSearchResultsModel();
    sub_21C72C7D4(&qword_27CDEDC18, type metadata accessor for PMGeneratedPasswordsSearchResultsModel);
    v0 = sub_21CB826A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF3768);
    }
  }
}

void sub_21C72C6F4()
{
  sub_21C72C660();
  if (v0 <= 0x3F)
  {
    sub_21C7205C4();
    if (v1 <= 0x3F)
    {
      sub_21C72C81C();
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

uint64_t sub_21C72C7D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21C72C81C()
{
  if (!qword_27CDEB898)
  {
    sub_21CB82834();
    v0 = sub_21CB82074();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEB898);
    }
  }
}

void sub_21C72C894()
{
  sub_21C72CA74(319, &qword_27CDEC840, &qword_27CDEAEF8, &unk_21CBA0740, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_21C72CA74(319, &qword_27CDEC848, &unk_27CDEBE60, &unk_21CB9FF40, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_21C72CB2C(319, &qword_27CDEB6A8, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_21C7226D8();
        if (v3 <= 0x3F)
        {
          sub_21C72CA74(319, &qword_27CDEC850, &qword_27CDEC858, &qword_21CBB1080, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_21C72CB2C(319, &qword_27CDEC860, MEMORY[0x277CDDAF0], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_21C7202E4();
              if (v6 <= 0x3F)
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

void sub_21C72CA74(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21C72CAD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB84D84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C72CB2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C72CBB0()
{
  sub_21C72CC94(319, &qword_27CDF69A0, type metadata accessor for PMMoveAccountToGroupAlert.Configuration, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21C72CC94(319, &qword_27CDF62D0, type metadata accessor for PMAccount, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C72CC94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C72CD18()
{
  type metadata accessor for PMAccount(319);
  if (v0 <= 0x3F)
  {
    sub_21C72CDCC(319, &qword_27CDF65B0, type metadata accessor for PMSharingGroup, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C72CDCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for PMSourceGrid()
{
  result = qword_27CDF98D8;
  if (!qword_27CDF98D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C72CE8C()
{
  type metadata accessor for PMAppSourceListModel(319);
  if (v0 <= 0x3F)
  {
    sub_21C705CFC();
    if (v1 <= 0x3F)
    {
      sub_21C70640C();
      if (v2 <= 0x3F)
      {
        sub_21C706378();
        if (v3 <= 0x3F)
        {
          sub_21C72C81C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27CE18418 == -1)
  {
    if (qword_27CE18420)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27CE18420)
    {
      goto LABEL_3;
    }
  }

  if (qword_27CE18410 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27CE18404 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27CE18404 >= a3)
      {
        result = dword_27CE18408 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21C72D17C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_21C79C38C(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PMManagePasskeyOnWebsiteLink);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_21C79C464(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4, type metadata accessor for PMManagePasskeyOnWebsiteLink);
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA9E0, &unk_21CB9FBC0);
  sub_21C6EADEC(&qword_27CDEA9E8, &qword_27CDEA9E0, &unk_21CB9FBC0);
  return sub_21CB84DA4();
}

uint64_t sub_21C72D30C()
{
  v1 = v0;
  v2 = (type metadata accessor for PMManagePasskeyOnWebsiteLink() - 8);
  v3 = *(*v2 + 80);
  v4 = *(*v2 + 64);
  v59 = (v3 + 16) & ~v3;
  v5 = (v0 + v59);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  sub_21C79C1F4();
  v9 = v5 + v2[7];
  v10 = *(v9 + 8);

  v11 = type metadata accessor for PMAccount(0);
  v12 = (v9 + v11[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *(v12 + 1);

  v15 = *(v12 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v16 = *(v12 + 5);

    v17 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v18 = v17[7];
    v19 = sub_21CB85B74();
    (*(*(v19 - 8) + 8))(&v12[v18], v19);
    v20 = *&v12[v17[8] + 8];

    v21 = v17[9];
    v22 = sub_21CB85C44();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(&v12[v21], 1, v22))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v48 = *(v12 + 4);

  v49 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v50 = v49[7];
  v51 = sub_21CB85C04();
  v52 = *(v51 - 8);
  if (!(*(v52 + 48))(&v12[v50], 1, v51))
  {
    (*(v52 + 8))(&v12[v50], v51);
  }

  v53 = v49[8];
  v54 = sub_21CB85BB4();
  v55 = *(v54 - 8);
  if (!(*(v55 + 48))(&v12[v53], 1, v54))
  {
    (*(v55 + 8))(&v12[v53], v54);
  }

  v21 = v49[9];
  v22 = sub_21CB85C44();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(&v12[v21], 1, v22))
  {
LABEL_3:
    (*(v23 + 8))(&v12[v21], v22);
  }

LABEL_4:
  v24 = v9 + v11[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v58 = v1;
    v25 = *(v24 + 8);

    v26 = *(v24 + 24);

    v27 = *(v24 + 40);

    v28 = *(v24 + 56);

    v29 = type metadata accessor for PMAccount.MockData(0);
    v30 = v29[8];
    v31 = sub_21CB80DD4();
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    if (!v33(v24 + v30, 1, v31))
    {
      (*(v32 + 8))(v24 + v30, v31);
    }

    v34 = *(v24 + v29[9]);

    v35 = *(v24 + v29[10] + 8);

    v36 = *(v24 + v29[11] + 8);

    v37 = v29[12];
    if (!v33(v24 + v37, 1, v31))
    {
      (*(v32 + 8))(v24 + v37, v31);
    }

    v38 = v29[15];
    v39 = sub_21CB85BB4();
    v40 = *(v39 - 8);
    if (!(*(v40 + 48))(v24 + v38, 1, v39))
    {
      (*(v40 + 8))(v24 + v38, v39);
    }

    v41 = v29[16];
    v42 = sub_21CB85C04();
    v43 = *(v42 - 8);
    v1 = v58;
    if (!(*(v43 + 48))(v24 + v41, 1, v42))
    {
      (*(v43 + 8))(v24 + v41, v42);
    }

    v44 = *(v24 + v29[17] + 8);

    v45 = v29[18];
    v46 = sub_21CB85C44();
    v47 = *(v46 - 8);
    if (!(*(v47 + 48))(v24 + v45, 1, v46))
    {
      (*(v47 + 8))(v24 + v45, v46);
    }
  }

  else
  {
  }

  v56 = v9 + v11[7];
  if (*(v56 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v59 + v4, v3 | 7);
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27CE18420;
  if (qword_27CE18420)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27CE18420 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x21CF16410](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27CE18404, &dword_27CE18408);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t type metadata accessor for PMGroupRow()
{
  result = qword_27CDF51F8;
  if (!qword_27CDF51F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C72DD00()
{
  type metadata accessor for PMSharingGroup();
  if (v0 <= 0x3F)
  {
    sub_21C705CFC();
    if (v1 <= 0x3F)
    {
      sub_21C72DE24(319, &qword_27CDF5208);
      if (v2 <= 0x3F)
      {
        sub_21C72DE24(319, &qword_27CDEB890);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C72DDD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21C72DE24(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21CB82074();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t type metadata accessor for PMAppSourceListRowLabelStyle()
{
  result = qword_27CDF1D68;
  if (!qword_27CDF1D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C72DEBC()
{
  sub_21C72DF48();
  if (v0 <= 0x3F)
  {
    sub_21C7202E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C72DF48()
{
  if (!qword_27CDEC5D0)
  {
    sub_21CB834E4();
    v0 = sub_21CB82074();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEC5D0);
    }
  }
}

uint64_t type metadata accessor for PMTipView()
{
  result = qword_27CDFA110;
  if (!qword_27CDFA110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C72DFEC()
{
  sub_21C713384();
  if (v0 <= 0x3F)
  {
    sub_21C707F4C();
    if (v1 <= 0x3F)
    {
      sub_21C7210DC();
      if (v2 <= 0x3F)
      {
        sub_21C72E0C4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C72E0C4()
{
  if (!qword_27CDEF190)
  {
    type metadata accessor for PMAppRootNavigationModel();
    v0 = sub_21CB821E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEF190);
    }
  }
}

uint64_t sub_21C72E134()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for PMSearchable()
{
  result = qword_27CDEE490;
  if (!qword_27CDEE490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C72E1DC()
{
  sub_21C72E390(319, &qword_27CDEE4A0, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_21C85CC4C(319, &qword_27CDEE4A8, &qword_27CDECFE8, &unk_21CBA9A90, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21C72E390(319, &qword_27CDEB308, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21C72E390(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_21C72E434();
          if (v4 <= 0x3F)
          {
            sub_21C85CC4C(319, &qword_27CDEC388, &qword_27CDEC390, &qword_21CBA40E0, MEMORY[0x277CDF468]);
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

void sub_21C72E390(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21C72E3E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C72E434()
{
  if (!qword_27CDEE4B0)
  {
    v0 = sub_21CB81FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEE4B0);
    }
  }
}

uint64_t type metadata accessor for PMDebugSettingsView()
{
  result = qword_27CDF73D0;
  if (!qword_27CDF73D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C72E4E8()
{
  sub_21C721A6C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata accessor for PMExportAccountSelectionView()
{
  result = qword_27CDF7428;
  if (!qword_27CDF7428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C72E5A0()
{
  sub_21C708488(319, &qword_27CDEE7E0, type metadata accessor for PMAppAccountsListModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_21C708488(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_21C721088(319, &qword_27CDF7438, &qword_27CDF7440, &unk_21CBC5030);
      if (v2 <= 0x3F)
      {
        sub_21C721088(319, &qword_27CDEC388, &qword_27CDEC390, &qword_21CBA40E0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21C72E700()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0DF0, &qword_21CBB02A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0DE8, &qword_21CBB0298);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0DE0, &qword_21CBB0290);
  type metadata accessor for PMAppAccountsListModel(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0F00, &qword_21CBB0490);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0DD8, &qword_21CBB0288);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBDD0, &qword_21CBB0460);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0DD0, &qword_21CBB0280);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0EF8, &qword_21CBB0430);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0DC8, &qword_21CBB0278);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0EE8, &qword_21CBB0400);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0DC0, &qword_21CBB0270);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0E00, &qword_21CBB0350);
  sub_21C915AEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0EB8, &qword_21CBB03C0);
  sub_21C9161D8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for PMDebugSettingsView();
  sub_21CB83994();
  sub_21C72A284(&qword_27CDF0EF0, type metadata accessor for PMDebugSettingsView);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C722D3C();
  type metadata accessor for PMNewGroupFlow(255);
  sub_21C72A284(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for PMGeneratedPasswordsLogView();
  sub_21C72A284(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C72A284(&qword_27CDF0F08, type metadata accessor for PMAppAccountsListModel);
  type metadata accessor for PMExportAccountSelectionView();
  sub_21C72A284(&qword_27CDF0F10, type metadata accessor for PMExportAccountSelectionView);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C72EBD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C72EC3C()
{
  result = qword_27CDEBE00;
  if (!qword_27CDEBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBE00);
  }

  return result;
}

unint64_t sub_21C72ECB0()
{
  result = qword_27CDEE4F8;
  if (!qword_27CDEE4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE4B8, &qword_21CBA9CC0);
    sub_21C6EADEC(&qword_27CDEE500, &qword_27CDEE4F0, &qword_21CBA9D28);
    sub_21C6EADEC(&unk_27CDEBFE0, &qword_27CDEB1E0, &unk_21CBA5270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE4F8);
  }

  return result;
}

uint64_t sub_21C72EDD0@<X0>(uint64_t a1@<X8>)
{
  v175 = a1;
  v174 = sub_21CB81024();
  v173 = *(v174 - 8);
  v2 = *(v173 + 64);
  v3 = MEMORY[0x28223BE20](v174);
  v172 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v171 = &v146 - v5;
  v6 = type metadata accessor for PMAppSourceList();
  v7 = *(v6 - 8);
  v184 = (v6 - 8);
  v185 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v189 = v9;
  v190 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_21CB82F84();
  v169 = *(v170 - 8);
  v10 = *(v169 + 64);
  MEMORY[0x28223BE20](v170);
  v168 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v160 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v188 = &v146 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v146 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v146 - v22;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DC0, &qword_21CBB0270);
  v24 = *(*(v182 - 8) + 64);
  MEMORY[0x28223BE20](v182);
  v26 = &v146 - v25;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DC8, &qword_21CBB0278);
  v151 = *(v152 - 8);
  v27 = *(v151 + 64);
  MEMORY[0x28223BE20](v152);
  v177 = &v146 - v28;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DD0, &qword_21CBB0280);
  v153 = *(v156 - 8);
  v29 = *(v153 + 64);
  MEMORY[0x28223BE20](v156);
  v178 = (&v146 - v30);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DD8, &qword_21CBB0288);
  v158 = *(v159 - 8);
  v31 = *(v158 + 64);
  MEMORY[0x28223BE20](v159);
  v179 = &v146 - v32;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DE0, &qword_21CBB0290);
  v161 = *(v181 - 8);
  v33 = *(v161 + 64);
  MEMORY[0x28223BE20](v181);
  v180 = &v146 - v34;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DE8, &qword_21CBB0298);
  v163 = *(v165 - 8);
  v35 = *(v163 + 64);
  MEMORY[0x28223BE20](v165);
  v162 = &v146 - v36;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DF0, &qword_21CBB02A0);
  v166 = *(v167 - 8);
  v37 = *(v166 + 64);
  MEMORY[0x28223BE20](v167);
  v164 = &v146 - v38;
  v186 = v26;
  sub_21C730858();
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v39 = (v13 + 8);
  v40 = *(v13 + 8);
  v40(v23, v12);
  v41 = v39;
  v42 = v210;
  v43 = v211;
  v44 = v212;
  swift_getKeyPath();
  v207 = v42;
  v208 = v43;
  v209 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DF8, &qword_21CBB02F8);
  sub_21CB84F44();

  v183 = v192;
  v176 = v193;
  v147 = v194;
  v150 = v195;

  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v40(v21, v12);
  v45 = v204;
  v149 = v205;
  v46 = v206;
  v47 = v188;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v155 = v12;
  v188 = v41;
  v187 = v40;
  v40(v47, v12);
  v48 = v201;
  v148 = v202;
  v49 = v203;
  v50 = *(v184 + 11);
  v191 = v1;
  v51 = v1 + v50;
  v52 = *v51;
  v154 = *(v51 + 8);
  v157 = v52;
  if (v154 == 1)
  {
    v57 = v52;
  }

  else
  {
    v53 = v203;

    sub_21CB85B04();
    v54 = v46;
    v55 = sub_21CB83C94();
    sub_21CB81C14();

    v46 = v54;
    v56 = v168;
    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v52, 0);
    (*(v169 + 8))(v56, v170);
    v49 = v53;
    v57 = v199;
  }

  v58 = v186 + *(v182 + 36);
  v59 = v176;
  *v58 = v183;
  *(v58 + 8) = v59;
  v60 = v150;
  *(v58 + 16) = v147;
  *(v58 + 24) = v60;
  v61 = v149;
  *(v58 + 32) = v45;
  *(v58 + 40) = v61;
  *(v58 + 48) = v46;
  v62 = v148;
  *(v58 + 56) = v48;
  *(v58 + 64) = v62;
  *(v58 + 72) = v49;
  *(v58 + 73) = (v57 & 1) == 0;
  *(v58 + 74) = 1;
  *(v58 + 80) = 0;
  *(v58 + 88) = 0;
  v198 = 0;

  sub_21CB84D44();
  v63 = v200;
  *(v58 + 96) = v199;
  *(v58 + 104) = v63;
  v64 = sub_21CB81F94();
  v66 = v65;
  LODWORD(v184) = v67;

  *(v58 + 112) = v64 & 1;
  *(v58 + 120) = v66;
  *(v58 + 128) = v184 & 1;
  v68 = *(type metadata accessor for PMSearchable() + 48);
  *(v58 + v68) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  v69 = swift_storeEnumTagMultiPayload();
  MEMORY[0x28223BE20](v69);
  v70 = v191;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0E00, &qword_21CBB0350);
  v72 = sub_21C915AEC();
  v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0EB8, &qword_21CBB03C0);
  v74 = sub_21C9161D8();
  v192 = v73;
  v193 = v74;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v76 = v182;
  v77 = v186;
  sub_21CB84894();
  sub_21C6EA794(v77, &qword_27CDF0DC0, &qword_21CBB0270);
  v78 = v160;
  v79 = v155;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v187(v78, v79);
  v149 = v210;
  LODWORD(v150) = v212;
  v184 = type metadata accessor for PMAppSourceList;
  v80 = v190;
  sub_21C733540(v70, v190, type metadata accessor for PMAppSourceList);
  v186 = *(v185 + 80);
  v81 = (v186 + 16) & ~v186;
  v82 = swift_allocObject();
  v183 = type metadata accessor for PMAppSourceList;
  sub_21C72EBD4(v80, v82 + v81, type metadata accessor for PMAppSourceList);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0EE8, &qword_21CBB0400);
  v192 = v76;
  v193 = v71;
  v194 = v72;
  v195 = OpaqueTypeConformance2;
  v148 = swift_getOpaqueTypeConformance2();
  v84 = type metadata accessor for PMDebugSettingsView();
  v85 = sub_21CB83994();
  v176 = v85;
  v86 = sub_21C72A284(&qword_27CDF0EF0, type metadata accessor for PMDebugSettingsView);
  v192 = v84;
  v193 = v85;
  v194 = v86;
  v195 = MEMORY[0x277CDE2B8];
  v182 = MEMORY[0x277CDEB40];
  v87 = swift_getOpaqueTypeConformance2();
  v88 = v83;
  v89 = v152;
  v90 = v177;
  sub_21CB847B4();

  (*(v151 + 8))(v90, v89);
  v91 = v191;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v187(v78, v79);
  v150 = v210;
  v151 = v212;
  v207 = v210;
  v208 = v211;
  v209 = v212;
  v92 = v190;
  sub_21C733540(v91, v190, v184);
  v185 = v81;
  v93 = swift_allocObject();
  sub_21C72EBD4(v92, v93 + v81, v183);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0EF8, &qword_21CBB0430);
  v192 = v89;
  v193 = v88;
  v194 = v148;
  v195 = v87;
  v177 = MEMORY[0x277CDEE28];
  v149 = swift_getOpaqueTypeConformance2();
  v152 = sub_21C722D3C();
  v94 = type metadata accessor for PMNewGroupFlow(255);
  v95 = sub_21C72A284(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow);
  v96 = v176;
  v192 = v94;
  v193 = v176;
  v194 = v95;
  v195 = MEMORY[0x277CDE2B8];
  v97 = swift_getOpaqueTypeConformance2();
  v98 = v156;
  v99 = v178;
  sub_21CB847C4();

  sub_21C72A584(v151);
  (*(v153 + 8))(v99, v98);
  v100 = v191;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v187(v78, v79);
  LODWORD(v153) = v212;
  v101 = v100;
  v102 = v190;
  sub_21C733540(v101, v190, v184);
  v103 = v185;
  v104 = swift_allocObject();
  sub_21C72EBD4(v102, v104 + v103, v183);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDD0, &qword_21CBB0460);
  v192 = v98;
  v193 = &type metadata for PMNewGroupContext;
  v194 = v147;
  v195 = v149;
  v196 = v152;
  v197 = v97;
  v105 = swift_getOpaqueTypeConformance2();
  v106 = type metadata accessor for PMGeneratedPasswordsLogView();
  v107 = sub_21C72A284(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView);
  v192 = v106;
  v193 = v96;
  v194 = v107;
  v195 = MEMORY[0x277CDE2B8];
  v108 = swift_getOpaqueTypeConformance2();
  v109 = v159;
  v110 = v179;
  sub_21CB847B4();

  (*(v158 + 8))(v110, v109);
  v111 = v191;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v187(v78, v79);
  v207 = v210;
  v208 = v211;
  v209 = v212;
  v112 = v190;
  sub_21C733540(v111, v190, v184);
  v113 = v185;
  v114 = swift_allocObject();
  sub_21C72EBD4(v112, v114 + v113, v183);
  v115 = type metadata accessor for PMAppAccountsListModel(0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F00, &qword_21CBB0490);
  v192 = v109;
  v193 = v178;
  v194 = v105;
  v195 = v108;
  v117 = swift_getOpaqueTypeConformance2();
  v118 = sub_21C72A284(&qword_27CDF0F08, type metadata accessor for PMAppAccountsListModel);
  v119 = type metadata accessor for PMExportAccountSelectionView();
  v120 = sub_21C72A284(&qword_27CDF0F10, type metadata accessor for PMExportAccountSelectionView);
  v192 = v119;
  v193 = v176;
  v194 = v120;
  v195 = MEMORY[0x277CDE2B8];
  v121 = swift_getOpaqueTypeConformance2();
  v184 = v118;
  v187 = v117;
  v122 = v162;
  v123 = v181;
  v188 = v116;
  v124 = v180;
  sub_21CB847C4();

  (*(v161 + 8))(v124, v123);
  if (v154)
  {
    v125 = v157;
  }

  else
  {
    v126 = v157;

    sub_21CB85B04();
    v127 = sub_21CB83C94();
    sub_21CB81C14();

    v128 = v168;
    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v126, 0);
    (*(v169 + 8))(v128, v170);
    v125 = v192;
  }

  LOBYTE(v210) = v125 & 1;
  v129 = v190;
  sub_21C733540(v191, v190, type metadata accessor for PMAppSourceList);
  v130 = v185;
  v131 = swift_allocObject();
  sub_21C72EBD4(v129, v131 + v130, type metadata accessor for PMAppSourceList);
  v192 = v181;
  v193 = v115;
  v194 = v188;
  v195 = v187;
  v196 = v184;
  v197 = v121;
  v132 = swift_getOpaqueTypeConformance2();
  v133 = v164;
  v134 = v165;
  v135 = MEMORY[0x277D839B0];
  sub_21CB84934();

  (*(v163 + 8))(v122, v134);
  v136 = v171;
  sub_21CB81014();
  v137 = v172;
  sub_21CB81014();
  v138 = sub_21CB80FF4();
  v140 = v139;
  v141 = *(v173 + 8);
  v142 = v137;
  v143 = v174;
  v141(v142, v174);
  v141(v136, v143);
  v210 = v138;
  v211 = v140;
  v192 = v134;
  v193 = v135;
  v194 = v132;
  v195 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  v144 = v167;
  sub_21CB842F4();

  return (*(v166 + 8))(v133, v144);
}

uint64_t sub_21C7306FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21C87FF18(v2, v3);
}

uint64_t sub_21C730858()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0E80, &qword_21CBB03A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF10A8, &unk_21CBB0780);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0E38, &qword_21CBB0368);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if (sub_21C730A84())
  {
    sub_21C90B9E4(v11);
    sub_21C6EDBAC(v11, v7, &qword_27CDF0E38, &qword_21CBB0368);
    swift_storeEnumTagMultiPayload();
    sub_21C915CB8();
    sub_21C915F80();
    sub_21CB83494();
    v12 = v11;
    v13 = &qword_27CDF0E38;
    v14 = &qword_21CBB0368;
  }

  else
  {
    sub_21C730D0C(v3);
    sub_21C6EDBAC(v3, v7, &qword_27CDF0E80, &qword_21CBB03A0);
    swift_storeEnumTagMultiPayload();
    sub_21C915CB8();
    sub_21C915F80();
    sub_21CB83494();
    v12 = v3;
    v13 = &qword_27CDF0E80;
    v14 = &qword_21CBB03A0;
  }

  return sub_21C6EA794(v12, v13, v14);
}

BOOL sub_21C730A84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  swift_getKeyPath();
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  v0 = *(v9 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);

  swift_getKeyPath();
  sub_21C72A284(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    return 1;
  }

  sub_21CB85084();
  swift_getKeyPath();
  sub_21CB810D4();

  v5 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchFieldIsPresented);

  if (v5 != 1)
  {
    return 0;
  }

  sub_21CB85084();
  swift_getKeyPath();
  sub_21CB810D4();

  v6 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);

  v7 = sub_21C882110();

  v8 = v7[2];

  return v8 != 0;
}

uint64_t sub_21C730D0C@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = sub_21CB82F84();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF10D8, &qword_21CBB0978);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v40 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0E90, &qword_21CBB03A8);
  v8 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF10E0, &qword_21CBB0980);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  (*(v12 + 8))(v15, v11);
  v21 = v10;
  v46 = v20;
  v22 = v44;
  sub_21C6EDBAC(v20, v44, &qword_27CDF10E0, &qword_21CBB0980);
  (*(v17 + 56))(v22, 0, 1, v16);
  v23 = v45;
  v48 = v1;
  v24 = v1;
  type metadata accessor for PMAppSourceListModel.Source(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF10E8, &qword_21CBB09B0);
  sub_21C72A284(&qword_27CDF10F0, type metadata accessor for PMAppSourceListModel.Source);
  sub_21C6EADEC(&qword_27CDF10F8, &qword_27CDF10E8, &qword_21CBB09B0);
  sub_21CB83F24();
  KeyPath = swift_getKeyPath();
  v26 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0EA0, &qword_21CBB03B0) + 36)];
  *v26 = KeyPath;
  v26[1] = 0;
  v27 = swift_getKeyPath();
  v28 = &v10[*(v23 + 36)];
  *v28 = v27;
  v28[8] = 1;
  v29 = sub_21CB85584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3330, &unk_21CBB0A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = 0x6162656469536E49;
  *(inited + 40) = 0xE900000000000072;
  v31 = v24 + *(type metadata accessor for PMAppSourceList() + 36);
  v32 = *v31;
  if (*(v31 + 8) != 1)
  {

    sub_21CB85B04();
    v33 = sub_21CB83C94();
    sub_21CB81C14();

    v34 = v41;
    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v32, 0);
    (*(v42 + 8))(v34, v43);
    LOBYTE(v32) = v49;
  }

  v35 = 1702195828;
  if ((v32 & 1) == 0)
  {
    v35 = 0x65736C6166;
  }

  v36 = 0xE500000000000000;
  *(inited + 72) = MEMORY[0x277D837D0];
  if (v32)
  {
    v36 = 0xE400000000000000;
  }

  *(inited + 48) = v35;
  *(inited + 56) = v36;
  sub_21C73181C(inited);
  swift_setDeallocating();
  sub_21C6EA794(inited + 32, &qword_27CDF86B0, &unk_21CBB7750);
  v37 = sub_21CB85464();

  v38 = WBSMakeAccessibilityIdentifier();

  sub_21CB855C4();
  sub_21C91603C();
  sub_21CB845C4();

  sub_21C6EA794(v21, &qword_27CDF0E90, &qword_21CBB03A8);
  return sub_21C6EA794(v46, &qword_27CDF10E0, &qword_21CBB0980);
}

uint64_t sub_21C731378@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  return sub_21C6EDBAC(v3 + v4, a2, &qword_27CDEAC20, &qword_21CBAD710);
}

uint64_t sub_21C731450@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v17);

  type metadata accessor for PMAccountsState();
  sub_21C7062A0(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v4 = sub_21CB82674();
  v6 = v5;

  a2[1] = v4;
  a2[2] = v6;
  v7 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7073E8(v7, v17);

  type metadata accessor for PMGroupsStore();
  sub_21C7062A0(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v8 = sub_21CB82674();
  v10 = v9;

  a2[3] = v8;
  a2[4] = v10;
  v11 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7073D0(v11, v17);

  type metadata accessor for PMGeneratedPasswordStore();
  sub_21C7062A0(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore);
  v12 = sub_21CB82674();
  v14 = v13;

  a2[5] = v12;
  a2[6] = v14;
  v15 = *(type metadata accessor for PMSourceGrid() + 32);
  *(a2 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21C7316D8(uint64_t a1, char a2)
{
  v4 = sub_21CB82F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    sub_21CB85B04();
    v9 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(a1, 0);
    (*(v5 + 8))(v8, v4);
    LOBYTE(a1) = v11[15];
  }

  return a1 & 1;
}

unint64_t sub_21C73181C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89F0, &unk_21CBC96F0);
    v3 = sub_21CB86224();
    v4 = a1 + 32;

    while (1)
    {
      sub_21C6EDBAC(v4, &v13, &qword_27CDF86B0, &unk_21CBB7750);
      v5 = v13;
      v6 = v14;
      result = sub_21C731960(v13, v14, sub_21C7319E4);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21C731A9C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21C731960(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_21CB86484();
  sub_21CB854C4();
  v7 = sub_21CB864D4();

  return a3(a1, a2, v7);
}

unint64_t sub_21C7319E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21CB86344())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

_OWORD *sub_21C731A9C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21C731AAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);
}

uint64_t sub_21C731B64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C712BE8(v4);
}

uint64_t sub_21C731B90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C72A284(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  a2[1] = v4;
}

uint64_t sub_21C731C48@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F18, &qword_21CBB0578);
  v33 = *(v36 - 8);
  v1 = *(v33 + 64);
  MEMORY[0x28223BE20](v36);
  v3 = &v32 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0ED8, &qword_21CBB03D0);
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F20, &qword_21CBB0580);
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v35);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0EC8, &qword_21CBB03C8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0EB8, &qword_21CBB03C0);
  v17 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v19 = &v32 - v18;
  if (sub_21CB85174())
  {
    sub_21C732134(v16);
    v20 = sub_21C6EADEC(&qword_27CDF0ED0, &qword_27CDF0EC8, &qword_21CBB03C8);
    MEMORY[0x21CF131E0](v16, v12, v20);
    v38 = v12;
    v39 = v20;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v22 = sub_21C6EADEC(&qword_27CDF0EE0, &qword_27CDF0ED8, &qword_21CBB03D0);
    v38 = v4;
    v39 = v22;
    v23 = swift_getOpaqueTypeConformance2();
    v24 = v35;
    MEMORY[0x21CF131F0](v11, v35, v36, OpaqueTypeConformance2, v23);
    (*(v8 + 8))(v11, v24);
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    sub_21C90CA64(v7);
    v25 = sub_21C6EADEC(&qword_27CDF0EE0, &qword_27CDF0ED8, &qword_21CBB03D0);
    MEMORY[0x21CF131E0](v7, v4, v25);
    v26 = sub_21C6EADEC(&qword_27CDF0ED0, &qword_27CDF0EC8, &qword_21CBB03C8);
    v38 = v12;
    v39 = v26;
    v27 = swift_getOpaqueTypeConformance2();
    v38 = v4;
    v39 = v25;
    v28 = swift_getOpaqueTypeConformance2();
    v29 = v36;
    MEMORY[0x21CF13200](v3, v35, v36, v27, v28);
    (*(v33 + 8))(v3, v29);
    (*(v32 + 8))(v7, v4);
  }

  v30 = sub_21C9161D8();
  MEMORY[0x21CF131E0](v19, v34, v30);
  return sub_21C6EA794(v19, &qword_27CDF0EB8, &qword_21CBB03C0);
}

uint64_t sub_21C732134@<X0>(uint64_t a1@<X8>)
{
  v156 = a1;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F28, &qword_21CBB0588);
  v2 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v154 = &v119 - v3;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F30, &qword_21CBB0590);
  v130 = *(v153 - 8);
  v4 = *(v130 + 64);
  MEMORY[0x28223BE20](v153);
  v129 = &v119 - v5;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F38, &qword_21CBB0598);
  v6 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v121 = &v119 - v7;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F40, &qword_21CBB05A0);
  v128 = *(v152 - 8);
  v8 = *(v128 + 64);
  MEMORY[0x28223BE20](v152);
  v127 = &v119 - v9;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F48, &qword_21CBB05A8);
  v125 = *(v126 - 8);
  v10 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v123 = &v119 - v11;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F50, &qword_21CBB05B0);
  v122 = *(v132 - 8);
  v12 = *(v122 + 64);
  MEMORY[0x28223BE20](v132);
  v131 = &v119 - v13;
  OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F58, &qword_21CBB05B8);
  v142 = *(OpaqueTypeConformance2 - 8);
  v14 = *(v142 + 64);
  MEMORY[0x28223BE20](OpaqueTypeConformance2);
  v141 = &v119 - v15;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F60, &qword_21CBB05C0);
  v145 = *(v158 - 8);
  v16 = *(v145 + 64);
  MEMORY[0x28223BE20](v158);
  v144 = &v119 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F68, &unk_21CBB05C8);
  v150 = *(v18 - 8);
  v151 = v18;
  v19 = *(v150 + 64);
  MEMORY[0x28223BE20](v18);
  v160 = &v119 - v20;
  v134 = sub_21CB83834();
  v135 = *(v134 - 8);
  v21 = *(v135 + 64);
  MEMORY[0x28223BE20](v134);
  v120 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v119 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v136 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v133 = &v119 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v119 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F70, &qword_21CBB05D8);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v149 = &v119 - v38;
  v159 = sub_21CB83604();
  v140 = *(v159 - 8);
  v39 = *(v140 + 64);
  v40 = MEMORY[0x28223BE20](v159);
  v138 = &v119 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v119 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F78, &qword_21CBB05E0);
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = &v119 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F80, &qword_21CBB05E8);
  v147 = *(v49 - 8);
  v148 = v49;
  v50 = *(v147 + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v119 - v51;
  sub_21CB835A4();
  v161 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F88, &qword_21CBB05F0);
  sub_21C7335AC();
  v139 = v43;
  sub_21CB82194();
  v162 = 0x6974704F65726F6DLL;
  v163 = 0xEB00000000736E6FLL;
  v53 = type metadata accessor for PMAppSourceList();
  v137 = *(v1 + *(v53 + 52));
  sub_21CB852C4();
  sub_21C6EADEC(&qword_27CDF0FA8, &qword_27CDF0F78, &qword_21CBB05E0);
  v146 = v52;
  sub_21CB82774();
  v54 = v48;
  v55 = v134;
  (*(v45 + 8))(v54, v44);
  v56 = *(v53 + 40);
  v157 = v1;
  v57 = v135;
  sub_21C728D50(v35);
  v58 = v133;
  (*(v57 + 104))(v133, *MEMORY[0x277CE0558], v55);
  (*(v57 + 56))(v58, 0, 1, v55);
  v59 = *(v24 + 56);
  sub_21C6EDBAC(v35, v27, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v58, &v27[v59], &qword_27CDEC390, &qword_21CBA40E0);
  v60 = *(v57 + 48);
  if (v60(v27, 1, v55) == 1)
  {
    sub_21C6EA794(v58, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v35, &qword_27CDEC390, &qword_21CBA40E0);
    if (v60(&v27[v59], 1, v55) == 1)
    {
      sub_21C6EA794(v27, &qword_27CDEC390, &qword_21CBA40E0);
      v61 = v160;
LABEL_9:
      v85 = v61;
      v86 = v139;
      sub_21CB835F4();
      v87 = v140;
      v88 = (*(v140 + 16))(v138, v86, v159);
      MEMORY[0x28223BE20](v88);
      *(&v119 - 2) = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FB0, &qword_21CBB0600);
      sub_21C91651C();
      v89 = v141;
      sub_21CB82194();
      v162 = 0x70756F724777656ELL;
      v163 = 0xE800000000000000;
      sub_21CB852C4();
      v90 = sub_21C6EADEC(&qword_27CDF0FE0, &qword_27CDF0F58, &qword_21CBB05B8);
      v91 = v144;
      v92 = OpaqueTypeConformance2;
      v93 = MEMORY[0x277D837D0];
      v94 = MEMORY[0x277D837E0];
      sub_21CB82774();
      (*(v142 + 8))(v89, v92);
      v162 = v92;
      v163 = v93;
      v164 = v90;
      v165 = v94;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v95 = v158;
      MEMORY[0x21CF131E0](v91, v158, OpaqueTypeConformance2);
      (*(v145 + 8))(v91, v95);
      v96 = *(v87 + 8);
      v97 = v159;
      v96(v86, v159);
      sub_21CB835F4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FF0, &qword_21CBB0618);
      sub_21C6EADEC(&qword_27CDF0FF8, &qword_27CDF0FF0, &qword_21CBB0618);
      v98 = v131;
      sub_21CB82AA4();
      sub_21CB835F4();
      v99 = v123;
      sub_21C90ECB0(v86, v123);
      v96(v86, v97);
      v100 = *(v124 + 48);
      v101 = *(v124 + 64);
      v80 = v150;
      v75 = v151;
      v102 = v121;
      (*(v150 + 16))(v121, v85, v151);
      v103 = v122;
      (*(v122 + 16))(&v102[v100], v98, v132);
      v104 = v125;
      v105 = v126;
      (*(v125 + 16))(&v102[v101], v99, v126);
      v106 = v127;
      sub_21CB83394();
      v107 = sub_21C6EADEC(&qword_27CDF0FE8, &qword_27CDF0F40, &qword_21CBB05A0);
      v162 = v158;
      v163 = OpaqueTypeConformance2;
      v108 = swift_getOpaqueTypeConformance2();
      v162 = v75;
      v163 = v108;
      v109 = swift_getOpaqueTypeConformance2();
      v110 = v149;
      v111 = v152;
      MEMORY[0x21CF131F0](v106, v152, v153, v107, v109);
      (*(v128 + 8))(v106, v111);
      v112 = v105;
      v78 = v110;
      (*(v104 + 8))(v99, v112);
      (*(v103 + 8))(v131, v132);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_21C6EDBAC(v27, v136, &qword_27CDEC390, &qword_21CBA40E0);
  if (v60(&v27[v59], 1, v55) == 1)
  {
    sub_21C6EA794(v58, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v35, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v57 + 8))(v136, v55);
LABEL_6:
    sub_21C6EA794(v27, &qword_27CDEE530, &unk_21CBA9D80);
    v61 = v160;
    goto LABEL_7;
  }

  v81 = v120;
  (*(v57 + 32))(v120, &v27[v59], v55);
  sub_21C72A284(&qword_27CDEE538, MEMORY[0x277CE0570]);
  v82 = v136;
  v83 = sub_21CB85574();
  v84 = *(v57 + 8);
  v84(v81, v55);
  sub_21C6EA794(v58, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v35, &qword_27CDEC390, &qword_21CBA40E0);
  v84(v82, v55);
  sub_21C6EA794(v27, &qword_27CDEC390, &qword_21CBA40E0);
  v61 = v160;
  if (v83)
  {
    goto LABEL_9;
  }

LABEL_7:
  v62 = v139;
  sub_21CB835A4();
  v63 = v140;
  v64 = (*(v140 + 16))(v138, v62, v159);
  MEMORY[0x28223BE20](v64);
  *(&v119 - 2) = v157;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FB0, &qword_21CBB0600);
  sub_21C91651C();
  v65 = v141;
  sub_21CB82194();
  v162 = 0x70756F724777656ELL;
  v163 = 0xE800000000000000;
  sub_21CB852C4();
  v66 = sub_21C6EADEC(&qword_27CDF0FE0, &qword_27CDF0F58, &qword_21CBB05B8);
  v67 = v144;
  v68 = OpaqueTypeConformance2;
  v69 = MEMORY[0x277D837D0];
  v70 = MEMORY[0x277D837E0];
  sub_21CB82774();
  (*(v142 + 8))(v65, v68);
  v162 = v68;
  v163 = v69;
  v164 = v66;
  v165 = v70;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = v158;
  MEMORY[0x21CF131E0](v67, v158, v71);
  (*(v145 + 8))(v67, v72);
  (*(v63 + 8))(v62, v159);
  v162 = v72;
  v163 = v71;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = v129;
  v75 = v151;
  MEMORY[0x21CF131E0](v61, v151, v73);
  v76 = sub_21C6EADEC(&qword_27CDF0FE8, &qword_27CDF0F40, &qword_21CBB05A0);
  v162 = v75;
  v163 = v73;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = v149;
  v79 = v153;
  MEMORY[0x21CF13200](v74, v152, v153, v76, v77);
  (*(v130 + 8))(v74, v79);
  v80 = v150;
LABEL_10:
  (*(v80 + 8))(v160, v75);
  v113 = v154;
  v114 = *(v155 + 48);
  v116 = v147;
  v115 = v148;
  v117 = v146;
  (*(v147 + 16))(v154, v146, v148);
  sub_21C6EDBAC(v78, &v113[v114], &qword_27CDF0F70, &qword_21CBB05D8);
  sub_21CB83394();
  sub_21C6EA794(v78, &qword_27CDF0F70, &qword_21CBB05D8);
  return (*(v116 + 8))(v117, v115);
}

uint64_t sub_21C733540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C7335AC()
{
  result = qword_27CDF0F90;
  if (!qword_27CDF0F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0F88, &qword_21CBB05F0);
    sub_21C6EADEC(&qword_27CDF0F98, &qword_27CDF0FA0, &qword_21CBB05F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0F90);
  }

  return result;
}

id sub_21C73365C()
{
  v1 = *(v0 + *(type metadata accessor for PMAppSourceList() + 44));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v2 = sub_21C7253C8(v1, v5);

  v3 = *(v2 + 40);

  sub_21CB81E94();

  if (v5 != 1)
  {
    return 0;
  }

  sub_21CB86544();
  sub_21C7253C8(v1, v5);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if ((v5 & 1) == 0)
  {
    return [objc_opt_self() isInternalInstall];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C7337CC()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  sub_21CB85174();
  sub_21CB81014();
  sub_21CB81014();
  v8 = sub_21CB80FF4();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v5, v0);
  v11(v7, v0);
  v13[0] = v8;
  v13[1] = v10;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C733984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8D0, &unk_21CBA4AF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8A8, &unk_21CBACF50);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v29 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  v21 = type metadata accessor for PMAppSourceList();
  if (*(a1 + *(v21 + 56)) == 1)
  {
    v30 = &v29;
    MEMORY[0x28223BE20](v21);
    *(&v29 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
    v31 = a1;
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
    a1 = v31;
    sub_21CB85054();
    (*(v4 + 32))(v20, v7, v3);
    v22 = *(v4 + 56);
    v22(v20, 0, 1, v3);
  }

  else
  {
    v22 = *(v4 + 56);
    v22(v20, 1, 1, v3);
  }

  v23 = sub_21C73365C();
  if (v23)
  {
    v30 = &v29;
    MEMORY[0x28223BE20](v23);
    v31 = v4;
    *(&v29 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
    v24 = v31;
    sub_21CB85054();
    (*(v24 + 32))(v18, v7, v3);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v22(v18, v25, 1, v3);
  sub_21C6EDBAC(v20, v15, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EDBAC(v18, v12, &qword_27CDEC8A8, &unk_21CBACF50);
  v26 = v32;
  sub_21C6EDBAC(v15, v32, &qword_27CDEC8A8, &unk_21CBACF50);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1068, &unk_21CBB06A8);
  sub_21C6EDBAC(v12, v26 + *(v27 + 48), &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v18, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v20, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v12, &qword_27CDEC8A8, &unk_21CBACF50);
  return sub_21C6EA794(v15, &qword_27CDEC8A8, &unk_21CBACF50);
}

uint64_t sub_21C733DF8(uint64_t a1)
{
  v2 = type metadata accessor for PMAppSourceList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21C733540(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppSourceList);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_21C72EBD4(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PMAppSourceList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  return sub_21CB84DA4();
}

uint64_t sub_21C733FCC()
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

uint64_t sub_21C734110(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21C734184(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21C7341D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_21C73427C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__contextForPresentedNewGroupFlow);
  *a2 = v4;
  return sub_21C72A574(v4);
}

uint64_t sub_21C734334(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21C72A574(*a1);
  return sub_21C9175A4(v2);
}

uint64_t sub_21C734368@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_21C734410@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__exportAccountSelectionModel);
}

uint64_t sub_21C7344C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v111 = a2;
  v5 = type metadata accessor for PMSearchable();
  v109 = *(v5 - 8);
  v6 = *(v109 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v116 = v7;
  v110 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_21CB83584();
  v98 = *(v99 - 8);
  v8 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE4B8, &qword_21CBA9CC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v82 - v13;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE4C0, &qword_21CBA9CC8);
  v94 = *(v96 - 8);
  v15 = *(v94 + 64);
  MEMORY[0x28223BE20](v96);
  v17 = &v82 - v16;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE4C8, &qword_21CBA9CD0);
  v95 = *(v97 - 8);
  v18 = *(v95 + 64);
  MEMORY[0x28223BE20](v97);
  v93 = &v82 - v19;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE4D0, &qword_21CBA9CD8);
  v20 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v100 = &v82 - v21;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE4D8, &qword_21CBA9CE0);
  v101 = *(v102 - 8);
  v22 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v115 = &v82 - v23;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE4E0, &qword_21CBA9CE8);
  v105 = *(v107 - 8);
  v24 = *(v105 + 64);
  MEMORY[0x28223BE20](v107);
  v103 = &v82 - v25;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE4E8, &qword_21CBA9CF0);
  v106 = *(v108 - 8);
  v26 = *(v106 + 64);
  MEMORY[0x28223BE20](v108);
  v104 = &v82 - v27;
  KeyPath = swift_getKeyPath();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE4F0, &qword_21CBA9D28);
  (*(*(v29 - 8) + 16))(v14, a1, v29);
  v113 = v11;
  v30 = *(v11 + 36);
  v92 = v14;
  v31 = &v14[v30];
  *v31 = KeyPath;
  v31[8] = 1;
  v32 = *(v3 + 16);
  v33 = *(v3 + 24);
  v121 = *v3;
  v122 = v32;
  v123 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  sub_21CB84F54();
  v91 = v118;
  v89 = v119;
  v90 = v120;
  v34 = *(v3 + 56);
  v35 = *(v3 + 64);
  v36 = *(v3 + 72);
  if (v35)
  {
    v88 = *(v3 + 56);
    v87 = v35;
    v86 = v36;
  }

  else
  {
    v37 = *(v3 + 104);
    LOBYTE(v117) = *(v3 + 96);
    v118 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    sub_21CB84D74();
    v87 = *(&v121 + 1);
    v88 = v121;
    v86 = v122;
  }

  sub_21C85CD7C(v34, v35);
  sub_21C73517C(v10);
  v38 = *(v3 + 88);
  v112 = v3;
  v39 = v10;
  if (v38)
  {
    *&v121 = *(v3 + 80);
    *(&v121 + 1) = v38;
    sub_21C71F3FC();

    v38 = sub_21CB84054();
    v41 = v40;
    v43 = v42;
    v45 = v44 & 1;
  }

  else
  {
    v41 = 0;
    v45 = 0;
    v43 = 0;
  }

  v85 = sub_21C72ECB0();
  v84 = v17;
  v83 = v39;
  v46 = v45;
  v47 = v41;
  v48 = v92;
  sub_21CB84104();
  sub_21C85CDBC(v38, v47, v46, v43);

  (*(v98 + 8))(v83, v99);
  sub_21C6EA794(v48, &qword_27CDEE4B8, &qword_21CBA9CC0);
  *&v121 = v113;
  *(&v121 + 1) = v85;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v93;
  v51 = v96;
  v52 = v84;
  MEMORY[0x21CF14040](1, v96, OpaqueTypeConformance2);
  (*(v94 + 8))(v52, v51);
  v53 = v112;
  v54 = *(v112 + 74);
  v55 = swift_getKeyPath();
  v56 = swift_allocObject();
  *(v56 + 16) = (v54 & 1) == 0;
  v57 = v100;
  (*(v95 + 32))(v100, v50, v97);
  v58 = (v57 + *(v114 + 36));
  *v58 = v55;
  v58[1] = sub_21C735744;
  v58[2] = v56;
  v59 = *(v53 + 120);
  v60 = *(v53 + 128);
  LODWORD(v99) = *(v53 + 112);
  LOBYTE(v121) = v99;
  v113 = v59;
  *(&v121 + 1) = v59;
  LODWORD(v98) = v60;
  LOBYTE(v122) = v60;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE508, &qword_21CBBE3B0);
  sub_21CB81F74();
  v61 = sub_21C85CE00();
  sub_21CB84224();

  sub_21C735104(v57);
  v62 = *(v53 + 40);
  v63 = v53;
  if (v62)
  {
    v64 = *(v53 + 48);
    *&v121 = *(v53 + 32);
    *(&v121 + 1) = v62;
    LOBYTE(v122) = v64 & 1;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
    MEMORY[0x21CF14A20](&v117, v65);
    v66 = v117;
  }

  else
  {
    v66 = 2;
  }

  LOBYTE(v117) = v66;
  v67 = v110;
  sub_21C73567C(v53, v110);
  v68 = (*(v109 + 80) + 16) & ~*(v109 + 80);
  v69 = swift_allocObject();
  sub_21C7356E0(v67, v69 + v68);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE518, &qword_21CBA9D70);
  *&v121 = v114;
  *(&v121 + 1) = v61;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = sub_21C85CF38();
  v72 = v103;
  v73 = v102;
  v74 = v115;
  sub_21CB84934();

  (*(v101 + 8))(v74, v73);
  LOBYTE(v121) = v99;
  *(&v121 + 1) = v113;
  LOBYTE(v122) = v98;
  sub_21CB81F54();
  sub_21C73567C(v63, v67);
  v75 = swift_allocObject();
  sub_21C7356E0(v67, v75 + v68);
  *&v121 = v73;
  *(&v121 + 1) = v109;
  v122 = v70;
  v123 = v71;
  swift_getOpaqueTypeConformance2();
  v76 = v104;
  v77 = v107;
  sub_21CB84934();

  (*(v105 + 8))(v72, v77);
  sub_21C73567C(v112, v67);
  v78 = swift_allocObject();
  sub_21C7356E0(v67, v78 + v68);
  v79 = v111;
  (*(v106 + 32))(v111, v76, v108);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE528, &qword_21CBA9D78);
  v81 = (v79 + *(result + 36));
  *v81 = sub_21C7421E4;
  v81[1] = v78;
  v81[2] = 0;
  v81[3] = 0;
  return result;
}

uint64_t sub_21C735104(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE4D0, &qword_21CBA9CD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C73517C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB83554();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_21CB83834();
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v33[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v33[-v21];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v33[-v24];
  if (*(v1 + 73))
  {
    if ((sub_21CB85174() & 1) == 0)
    {
LABEL_14:
      sub_21CB83544();
      sub_21CB83534();
      return (*(v36 + 8))(v6, v37);
    }

    v35 = a1;
    v26 = v1 + *(type metadata accessor for PMSearchable() + 48);
    sub_21C728D50(v25);
    v27 = v38;
    (*(v38 + 104))(v22, *MEMORY[0x277CE0558], v7);
    (*(v27 + 56))(v22, 0, 1, v7);
    v28 = *(v11 + 48);
    sub_21C70CA1C(v25, v14);
    sub_21C70CA1C(v22, &v14[v28]);
    v29 = *(v27 + 48);
    if (v29(v14, 1, v7) == 1)
    {
      sub_21C6EA794(v22, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v25, &qword_27CDEC390, &qword_21CBA40E0);
      if (v29(&v14[v28], 1, v7) == 1)
      {
        sub_21C6EA794(v14, &qword_27CDEC390, &qword_21CBA40E0);
        goto LABEL_14;
      }
    }

    else
    {
      sub_21C70CA1C(v14, v19);
      if (v29(&v14[v28], 1, v7) != 1)
      {
        v30 = v38;
        (*(v38 + 32))(v10, &v14[v28], v7);
        sub_21C72BD54();
        v34 = sub_21CB85574();
        v31 = *(v30 + 8);
        v31(v10, v7);
        sub_21C6EA794(v22, &qword_27CDEC390, &qword_21CBA40E0);
        sub_21C6EA794(v25, &qword_27CDEC390, &qword_21CBA40E0);
        v31(v19, v7);
        sub_21C6EA794(v14, &qword_27CDEC390, &qword_21CBA40E0);
        if (v34)
        {
          goto LABEL_14;
        }

        return sub_21CB83574();
      }

      sub_21C6EA794(v22, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v25, &qword_27CDEC390, &qword_21CBA40E0);
      (*(v38 + 8))(v19, v7);
    }

    sub_21C6EA794(v14, &qword_27CDEE530, &unk_21CBA9D80);
    return sub_21CB83574();
  }

  return MEMORY[0x28212E540](v23);
}

uint64_t sub_21C73567C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSearchable();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7356E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSearchable();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21C735798()
{
  sub_21C7359C4(319, &qword_27CDEB308, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21C7359C4(319, &qword_27CDF9B60, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21C7359C4(319, &qword_27CDEE2A8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_21C7226D8();
        if (v3 <= 0x3F)
        {
          sub_21C7359C4(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_21C735A14();
            if (v5 <= 0x3F)
            {
              sub_21C7359C4(319, &qword_27CDEB890, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_21C735A6C();
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

void sub_21C735974(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21C7359C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21C735A14()
{
  if (!qword_27CDEC498)
  {
    sub_21CB82054();
    v0 = sub_21CB82074();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEC498);
    }
  }
}

void sub_21C735A6C()
{
  if (!qword_27CDF9B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CDF98F8, qword_21CBCC810);
    v0 = sub_21CB82074();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF9B68);
    }
  }
}

uint64_t sub_21C735B28()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_21C735B84()
{
  result = qword_27CDF9980;
  if (!qword_27CDF9980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9988, &qword_21CBCC448);
    sub_21C6EADEC(&qword_27CDF9990, &qword_27CDF9998, qword_21CBCC450);
    sub_21C735C3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9980);
  }

  return result;
}

unint64_t sub_21C735C3C()
{
  result = qword_27CDF99A0[0];
  if (!qword_27CDF99A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDF99A0);
  }

  return result;
}

unint64_t sub_21C735CB0()
{
  result = qword_27CDEC340;
  if (!qword_27CDEC340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC338, &unk_21CBA3FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC340);
  }

  return result;
}

uint64_t sub_21C735D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC338, &unk_21CBA3FB0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_21C735DAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C735E14()
{
  result = qword_27CDF6FE0;
  if (!qword_27CDF6FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6FE8, &qword_21CBC3A68);
    sub_21C735EA0();
    sub_21C735F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6FE0);
  }

  return result;
}

unint64_t sub_21C735EA0()
{
  result = qword_27CDEF1D0;
  if (!qword_27CDEF1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEBA0, &qword_21CBABC80);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF1D0);
  }

  return result;
}

unint64_t sub_21C735F84()
{
  result = qword_27CDEB908;
  if (!qword_27CDEB908)
  {
    sub_21CB83B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB908);
  }

  return result;
}

uint64_t sub_21C735FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a1;
  v49 = a2;
  v4 = type metadata accessor for PMICloudTermsAndConditionsAlert();
  v5 = *(v4 - 8);
  v42 = v4 - 8;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = v7;
  v9 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB81024();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3350, &unk_21CBB77D0);
  v16 = *(v15 - 8);
  v47 = v15;
  v48 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v45 = v38 - v18;
  sub_21CB81014();
  v19 = sub_21CB81004();
  v21 = v20;
  v43 = v20;
  (*(v11 + 8))(v14, v10);
  v60 = v19;
  v61 = v21;
  sub_21C736718(v3, v9);
  sub_21CB858B4();
  v22 = sub_21CB858A4();
  v23 = *(v5 + 80);
  v24 = (v23 + 32) & ~v23;
  v44 = v8;
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  *(v25 + 16) = v22;
  *(v25 + 24) = v26;
  sub_21C73677C(v9, v25 + v24);
  sub_21C736718(v3, v9);
  v27 = sub_21CB858A4();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v26;
  sub_21C73677C(v9, v28 + v24);
  sub_21CB84F64();
  v38[1] = v54;
  v40 = v3;
  v51 = v3;
  v50 = v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3358, &qword_21CBB77E0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3360, &qword_21CBB77E8);
  v29 = sub_21C6EADEC(&qword_27CDF3368, &qword_27CDF3358, &qword_21CBB77E0);
  v30 = sub_21C71F3FC();
  v37 = sub_21C6EADEC(&qword_27CDF3370, &qword_27CDF3360, &qword_21CBB77E8);
  v31 = v45;
  sub_21CB84754();

  v32 = v40;
  v33 = *(v40 + *(v42 + 28) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  LOBYTE(v60) = v52;
  sub_21C736718(v32, v9);
  v34 = swift_allocObject();
  sub_21C73677C(v9, v34 + ((v23 + 16) & ~v23));
  v52 = v39;
  v53 = MEMORY[0x277D837D0];
  v54 = v41;
  v55 = MEMORY[0x277CE0BD8];
  v56 = v29;
  v57 = v30;
  v58 = v37;
  v59 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v35 = v47;
  sub_21CB84924();

  return (*(v48 + 8))(v31, v35);
}

uint64_t sub_21C7365D8()
{
  v1 = type metadata accessor for PMICloudTermsAndConditionsAlert();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CB82484();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20) + 8);

  v9 = (v5 + *(v1 + 24));
  v10 = *v9;

  v11 = v9[1];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C736718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMICloudTermsAndConditionsAlert();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C73677C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMICloudTermsAndConditionsAlert();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_21C7367E0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for PMICloudTermsAndConditionsAlert() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21C736854(v6, a1);
}

void *sub_21C736854@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for PMICloudTermsAndConditionsAlert() + 24));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  result = MEMORY[0x21CF14A20](&v8, v6);
  *a2 = v8;
  return result;
}

uint64_t sub_21C7368D8@<X0>(char *a1@<X8>)
{
  v47 = a1;
  v50 = sub_21CB82A04();
  v52 = *(v50 - 8);
  v1 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  v3 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_21CB81024();
  v4 = *(v48 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v48);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v51 = *(v49 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  v10 = v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE48, &qword_21CBA3780);
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v46 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v45 = v41 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v44 = v41 - v19;
  MEMORY[0x28223BE20](v18);
  v43 = v41 - v20;
  sub_21CB81014();
  v21 = sub_21CB81004();
  v23 = v22;
  v24 = *(v4 + 8);
  v41[2] = v4 + 8;
  v42 = v24;
  v24(v7, v48);
  v53 = v21;
  v54 = v23;
  v41[1] = sub_21C71F3FC();
  sub_21CB84DE4();
  sub_21CB829F4();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  v25 = v49;
  sub_21CB84334();
  v26 = *(v52 + 8);
  v52 += 8;
  v26(v3, v50);
  v27 = *(v51 + 8);
  v51 += 8;
  v27(v10, v25);
  sub_21CB81014();
  v28 = sub_21CB81004();
  v30 = v29;
  v42(v7, v48);
  v53 = v28;
  v54 = v30;
  sub_21CB84DE4();
  sub_21CB829E4();
  v31 = v44;
  v32 = v49;
  sub_21CB84334();
  v26(v3, v50);
  v27(v10, v32);
  v33 = v12[2];
  v34 = v45;
  v35 = v43;
  v33(v45, v43, v11);
  v36 = v46;
  v33(v46, v31, v11);
  v37 = v47;
  v33(v47, v34, v11);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3378, &unk_21CBB7840);
  v33(&v37[*(v38 + 48)], v36, v11);
  v39 = v12[1];
  v39(v31, v11);
  v39(v35, v11);
  v39(v36, v11);
  return (v39)(v34, v11);
}

uint64_t sub_21C736E68@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21C736F9C()
{
  v2 = *v0;
  v1 = v0[1];
  type metadata accessor for PMAccountsState();
  sub_21C705E68(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC348, &qword_21CBA4078);
  type metadata accessor for PMBulkOperationProgress();
  type metadata accessor for PMBulkOperationProgressView();
  sub_21C6EADEC(&qword_27CDEC350, &qword_27CDEC348, &qword_21CBA4078);
  sub_21C705E68(&qword_27CDEC358, type metadata accessor for PMBulkOperationProgress);
  sub_21C705E68(&qword_27CDEC360, type metadata accessor for PMBulkOperationProgressView);
  sub_21CB847C4();
}

uint64_t sub_21C7371BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C737244()
{
  v2 = *v0;
  v1 = v0[1];
  type metadata accessor for PMInboundOTPAuthURLModel(0);
  sub_21C737438(&qword_27CDEAE10, type metadata accessor for PMInboundOTPAuthURLModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5380, &unk_21CBBDBF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB190, &qword_21CBA1380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB198, &qword_21CBA1388);
  sub_21C6EADEC(&qword_27CDF5388, &qword_27CDF5380, &unk_21CBBDBF8);
  sub_21C6EADEC(&qword_27CDEB1A0, &qword_27CDEB190, &qword_21CBA1380);
  sub_21C71FA88();
  sub_21CB847C4();
}

uint64_t sub_21C737438(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C737480(uint64_t a1)
{
  v3 = *(type metadata accessor for PMInboundOTPAuthURLContext(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_21CA2015C(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_21C737524@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C7375AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8[0] = a2;
  v8[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF48F8, &qword_21CBBBC58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v8 - v5;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  (*(v3 + 8))(v6, v2);
  v8[2] = v8[5];
  v8[3] = v8[6];
  v8[4] = v8[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4918, &qword_21CBBBCD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4920, &qword_21CBBBCE0);
  type metadata accessor for PMAppTOTPMigrationView();
  sub_21C6EADEC(&qword_27CDF4928, &qword_27CDF4918, &qword_21CBBBCD8);
  sub_21C6EADEC(&qword_27CDF4930, &qword_27CDF4920, &qword_21CBBBCE0);
  sub_21C71F850(&qword_27CDF4938, type metadata accessor for PMAppTOTPMigrationView);
  sub_21CB847C4();
}

uint64_t sub_21C737804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C737868@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71F850(&qword_27CDEAE18, type metadata accessor for PMHandleInboundTOTPMigrationURLModel);
  sub_21CB810D4();

  *a2 = *(v3 + 16);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21C737940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(v2 + 8);
  v4 = *v2;
  v5 = v2[1];
  return sub_21C737984(a1, a2);
}

uint64_t sub_21C737984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5410, &qword_21CBBDF30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v54 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5418, &qword_21CBBDF38);
  v58 = *(v60 - 8);
  v9 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v11 = v54 - v10;
  v65 = *v2;
  v66 = *(v2 + 16);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5420, &qword_21CBBDF40);
  MEMORY[0x21CF14A20](&v70, v12);
  v13 = v70;
  v14 = swift_allocObject();
  v15 = *(v3 + 48);
  *(v14 + 48) = *(v3 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(v3 + 64);
  v16 = *(v3 + 16);
  *(v14 + 16) = *v3;
  *(v14 + 32) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5428, &qword_21CBBDF48);
  (*(*(v17 - 8) + 16))(v8, a1, v17);
  v18 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5430, &qword_21CBBDF50) + 36)];
  *v18 = v13;
  *(v18 + 1) = sub_21CA25A34;
  *(v18 + 2) = v14;
  v19 = swift_allocObject();
  v20 = *(v3 + 48);
  *(v19 + 48) = *(v3 + 32);
  *(v19 + 64) = v20;
  *(v19 + 80) = *(v3 + 64);
  v21 = *(v3 + 16);
  *(v19 + 16) = *v3;
  *(v19 + 32) = v21;
  v61 = v5;
  v22 = &v8[*(v5 + 36)];
  *v22 = sub_21C741764;
  v22[1] = v19;
  v22[2] = 0;
  v22[3] = 0;
  v70 = *(v3 + 40);
  sub_21C7380DC(v3, &v65);
  sub_21C7380DC(v3, &v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5438, &qword_21CBBDF58);
  sub_21CB84D54();
  v23 = v65;
  if (v65)
  {
    v24 = sub_21CA22EA0(v65);
    v26 = v25;
  }

  else
  {
    v26 = 0xE100000000000000;
    v24 = 63;
  }

  *&v70 = v24;
  *(&v70 + 1) = v26;
  sub_21CB858B4();
  sub_21C7380DC(v3, &v65);
  v27 = sub_21CB858A4();
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  *(v28 + 16) = v27;
  *(v28 + 24) = v29;
  v30 = *(v3 + 48);
  *(v28 + 64) = *(v3 + 32);
  *(v28 + 80) = v30;
  *(v28 + 96) = *(v3 + 64);
  v31 = *(v3 + 16);
  *(v28 + 32) = *v3;
  *(v28 + 48) = v31;
  sub_21C7380DC(v3, &v65);
  v32 = sub_21CB858A4();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v29;
  v34 = *(v3 + 48);
  *(v33 + 64) = *(v3 + 32);
  *(v33 + 80) = v34;
  *(v33 + 96) = *(v3 + 64);
  v35 = *(v3 + 16);
  *(v33 + 32) = *v3;
  *(v33 + 48) = v35;
  sub_21CB84F64();
  v36 = sub_21C71F28C();
  v56 = sub_21C71F3FC();
  sub_21CB84764();

  sub_21C6EA794(v8, &qword_27CDF5410, &qword_21CBBDF30);
  v70 = *(v3 + 56);
  v65 = *(v3 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5468, &qword_21CBBDF68);
  sub_21CB84D54();
  v37 = v63;
  v57 = v11;
  if (v63)
  {
    v38 = sub_21CA23068(v63);
    v40 = v39;
  }

  else
  {
    v40 = 0xE100000000000000;
    v38 = 63;
  }

  v54[1] = v40;
  v63 = v38;
  v64 = v40;
  sub_21C7380DC(v3, &v65);
  v41 = sub_21CB858A4();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = v29;
  v43 = *(v3 + 48);
  *(v42 + 64) = *(v3 + 32);
  *(v42 + 80) = v43;
  *(v42 + 96) = *(v3 + 64);
  v44 = *(v3 + 16);
  *(v42 + 32) = *v3;
  *(v42 + 48) = v44;
  sub_21C7380DC(v3, &v65);
  v45 = sub_21CB858A4();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = v29;
  v47 = *(v3 + 48);
  *(v46 + 64) = *(v3 + 32);
  *(v46 + 80) = v47;
  *(v46 + 96) = *(v3 + 64);
  v48 = *(v3 + 16);
  *(v46 + 32) = *v3;
  *(v46 + 48) = v48;
  sub_21CB84F64();
  v55 = v66;
  v65 = v70;
  v49 = sub_21CB84D54();
  v54[0] = v54;
  v50 = v62;
  MEMORY[0x28223BE20](v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1748, &qword_21CBBDF70);
  *&v65 = v61;
  *(&v65 + 1) = MEMORY[0x277D837D0];
  v66 = MEMORY[0x277CE1428];
  v67 = v36;
  v68 = v56;
  v69 = MEMORY[0x277CE1410];
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70);
  v51 = v60;
  v52 = v57;
  sub_21CB84734();

  return (*(v58 + 8))(v52, v51);
}

void sub_21C738114(BOOL *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_21C738120(v1 + 32, a1);
}

void sub_21C738120(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  v4 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5438, &qword_21CBBDF58);
  sub_21CB84D54();
  if (v3)
  {
  }

  *a2 = v3 != 0;
}

void sub_21C738188(BOOL *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_21C738194(v1 + 32, a1);
}

void sub_21C738194(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  v4 = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5468, &qword_21CBBDF68);
  sub_21CB84D54();
  if (v3)
  {
  }

  *a2 = v3 != 0;
}

uint64_t sub_21C738290(void *a1, id a2)
{
  v4 = [a2 shortcutItem];
  v5 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_shortcutItemForInitialLaunch);
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_shortcutItemForInitialLaunch) = v4;

  v6 = [a1 delegate];
  if (v6)
  {
    v7 = swift_dynamicCastObjCProtocolConditional();
    v8 = v7;
    if (v7)
    {
      if ([v7 respondsToSelector_])
      {
        v6 = [v8 window];
        goto LABEL_8;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v6 = 0;
  }

LABEL_8:
  v9 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_keyWindow);
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_keyWindow) = v6;

  sub_21C73839C(a1);
  return swift_unknownObjectRelease();
}

void sub_21C73839C(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate__lockPolicyEnforcer;
  v5 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate__lockPolicyEnforcer + 8);

  v6 = [a1 systemProtectionManager];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 isUserAuthenticationEnabled];

    *(v5 + OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer_isUsingSystemProtection) = v8;
    if (v8)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v25) = 1;

      sub_21CB81DC4();
      v9 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    *(v5 + OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer_isUsingSystemProtection) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v25) = 0;

  sub_21CB81DC4();
  v9 = 1;
LABEL_6:
  sub_21CACC6CC(v9, 0);

  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C704E4C(KeyPath, v25);

  type metadata accessor for PMSecureWindowLockPolicyEnforcer();
  sub_21C706AA8();
  v11 = sub_21CB82674();
  v13 = v12;

  v26 = v11;
  v27 = v13;
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAE28, &unk_21CBD0880));
  v15 = sub_21CB833B4();
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = objc_allocWithZone(MEMORY[0x277D75DA0]);
    v19 = a1;
    v20 = [v18 initWithWindowScene_];
    [v20 setRootViewController_];
    [v20 setHidden_];
    v21 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_lockedWindow);
    *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_lockedWindow) = v20;
    v22 = v20;

    v23 = *(v4 + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DB4();

    sub_21C738B28((v26 & 1) == 0);
    v24 = [objc_opt_self() defaultCenter];
    if (qword_27CDEA400 != -1)
    {
      swift_once();
    }

    [v24 addObserver:v2 selector:v26 name:v27 object:?];
  }

  else
  {
    v24 = v15;
  }
}

unint64_t sub_21C73879C()
{
  result = qword_27CDF5CC8;
  if (!qword_27CDF5CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5CC8);
  }

  return result;
}

uint64_t type metadata accessor for PMPasswordsIcon()
{
  result = qword_27CDEE3B0;
  if (!qword_27CDEE3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C73883C()
{
  sub_21C6EDA64();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_21C735A14();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21C738900()
{
  result = qword_27CDF5E60;
  if (!qword_27CDF5E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5DA8, &qword_21CBBFB80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED4E8, &unk_21CBA6BB0);
    sub_21C74DDEC();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF5E68, &qword_27CDF5E70, &unk_21CBBFBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5E60);
  }

  return result;
}

unint64_t sub_21C738A18()
{
  result = qword_27CDEBA98;
  if (!qword_27CDEBA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBAA0, &unk_21CBA2B50);
    sub_21C738AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBA98);
  }

  return result;
}

unint64_t sub_21C738AA4()
{
  result = qword_27CDEBAA8;
  if (!qword_27CDEBAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBAB0, &unk_21CBA9B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBAA8);
  }

  return result;
}

id sub_21C738B28(char a1)
{
  if (a1)
  {
    v2 = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_lockedWindow;
    v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_lockedWindow);
    if (v3)
    {
      v13[0] = 0x3FF0000000000000;
      v13[1] = 0;
      v13[2] = 0;
      v13[3] = 0x3FF0000000000000;
      v13[4] = 0;
      v13[5] = 0;
      [v3 setTransform_];
      v4 = *(v1 + v2);
      if (v4)
      {
        [v4 setAlpha_];
      }
    }

    v5 = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_keyWindow;
    v6 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_keyWindow);
    if (v6)
    {
      [v6 setAlpha_];
      v7 = *(v1 + v5);
      if (v7)
      {
        [v7 setAccessibilityElementsHidden_];
      }
    }

    return [*(v1 + v2) makeKeyWindow];
  }

  else
  {
    v9 = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_keyWindow;
    v10 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_keyWindow);
    if (v10)
    {
      [v10 setAlpha_];
    }

    v11 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_lockedWindow);
    if (v11)
    {
      [v11 setAlpha_];
    }

    v12 = *(v1 + v9);
    if (v12)
    {
      [v12 setAccessibilityElementsHidden_];
      v12 = *(v1 + v9);
    }

    return [v12 makeKeyWindow];
  }
}

uint64_t sub_21C738C6C()
{
  result = sub_21CB85584();
  qword_27CE185B8 = result;
  return result;
}

uint64_t PMAppCommands.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v104 = a1;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEFE8, &qword_21CBAB9B0);
  v3 = *(*(v100 - 1) + 64);
  MEMORY[0x28223BE20](v100);
  v103 = &v89 - v4;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEFF0, &qword_21CBAB9B8);
  v101 = *(v102 - 8);
  v5 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v116 = &v89 - v6;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEFF8, &qword_21CBAB9C0);
  v98 = *(v99 - 8);
  v7 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v114 = &v89 - v8;
  v115 = sub_21CB82984();
  v97 = *(v115 - 8);
  v9 = *(v97 + 64);
  MEMORY[0x28223BE20](v115);
  v122 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF000, &qword_21CBAB9C8);
  v96 = *(v113 - 8);
  v11 = *(v96 + 64);
  MEMORY[0x28223BE20](v113);
  v121 = &v89 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF008, &qword_21CBAB9D0);
  v111 = *(v13 - 8);
  v112 = v13;
  v14 = *(v111 + 64);
  MEMORY[0x28223BE20](v13);
  v120 = &v89 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF010, &qword_21CBAB9D8);
  v109 = *(v16 - 8);
  v110 = v16;
  v17 = *(v109 + 64);
  MEMORY[0x28223BE20](v16);
  v119 = &v89 - v18;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF018, &qword_21CBAB9E0);
  v94 = *(v95 - 8);
  v19 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v90 = &v89 - v20;
  v21 = type metadata accessor for PMWiFiNetwork();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v92 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v93 = &v89 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF020, &qword_21CBAB9E8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v117 = &v89 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF028, &qword_21CBAB9F0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v91 = &v89 - v32;
  v33 = type metadata accessor for PMAccount(0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &v89 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v89 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF030, &qword_21CBAB9F8);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v118 = &v89 - v42;
  v43 = sub_21CB83694();
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF038, &qword_21CBABA00);
  v107 = *(v108 - 8);
  v45 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v47 = &v89 - v46;
  sub_21CB83664();
  v123 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF040, &qword_21CBABA08);
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF048, &qword_21CBABA10);
  v49 = sub_21C89EF80();
  v124 = v48;
  v125 = v49;
  swift_getOpaqueTypeConformance2();
  v106 = v47;
  sub_21CB821A4();
  v50 = type metadata accessor for PMAppCommands();
  v51 = *(v1 + *(v50 + 48) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  LODWORD(v105) = v124;
  if (*(v1 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DB4();

    sub_21C73A8E8(v37, v39, type metadata accessor for PMAccount);
    if (v105)
    {
      v52 = sub_21CB83644();
      v89 = &v89;
      MEMORY[0x28223BE20](v52);
      *(&v89 - 2) = v39;
      *(&v89 - 1) = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF138, &qword_21CBABB58);
      sub_21C89F170(&qword_27CDEF140, &qword_27CDEF138, &qword_21CBABB58, sub_21C89F3A8);
      v53 = v91;
      sub_21CB821A4();
      v54 = v118;
      (*(v30 + 32))(v118, v53, v29);
      (*(v30 + 56))(v54, 0, 1, v29);
      sub_21C8A0514(v39, type metadata accessor for PMAccount);
      goto LABEL_6;
    }

    sub_21C8A0514(v39, type metadata accessor for PMAccount);
  }

  (*(v30 + 56))(v118, 1, 1, v29);
LABEL_6:
  v55 = *(v50 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEB7F0, &unk_21CBA2600);
  sub_21CB821D4();
  v56 = v124;
  v57 = v117;
  if (v125 != 1)
  {
    j__swift_release();
    goto LABEL_12;
  }

  if (!v124)
  {
LABEL_12:
    (*(v94 + 56))(v57, 1, 1, v95);
    goto LABEL_13;
  }

  swift_getKeyPath();
  v124 = v56;
  sub_21C6F0700(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB810D4();

  v58 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  v59 = v56 + v58;
  v60 = v92;
  sub_21C73A7B0(v59, v92, type metadata accessor for PMWiFiNetwork);
  j__swift_release();
  v61 = v93;
  sub_21C73A8E8(v60, v93, type metadata accessor for PMWiFiNetwork);
  if ((v105 & 1) == 0)
  {
    sub_21C8A0514(v61, type metadata accessor for PMWiFiNetwork);
    goto LABEL_12;
  }

  v62 = sub_21CB83644();
  MEMORY[0x28223BE20](v62);
  *(&v89 - 2) = v61;
  *(&v89 - 1) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF108, &qword_21CBABAF8);
  sub_21C89F170(&qword_27CDEF110, &qword_27CDEF108, &qword_21CBABAF8, sub_21C89F2E4);
  v63 = v90;
  sub_21CB821A4();
  v64 = v94;
  v65 = v95;
  (*(v94 + 32))(v57, v63, v95);
  (*(v64 + 56))(v57, 0, 1, v65);
  sub_21C8A0514(v61, type metadata accessor for PMWiFiNetwork);
LABEL_13:
  v66 = sub_21CB83644();
  MEMORY[0x28223BE20](v66);
  *(&v89 - 2) = v2;
  *(&v89 - 8) = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF068, &qword_21CBABA78);
  sub_21C6EADEC(&qword_27CDEF070, &qword_27CDEF068, &qword_21CBABA78);
  sub_21CB821A4();
  v67 = sub_21CB83674();
  MEMORY[0x28223BE20](v67);
  *(&v89 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF078, &qword_21CBABA80);
  sub_21C89F170(&qword_27CDEF080, &qword_27CDEF078, &qword_21CBABA80, sub_21C89F004);
  sub_21CB821C4();
  v68 = sub_21CB83674();
  MEMORY[0x28223BE20](v68);
  *(&v89 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF0A8, &qword_21CBABAA0);
  sub_21C89F0C0();
  sub_21CB821A4();
  sub_21CB82974();
  v69 = sub_21CB83684();
  MEMORY[0x28223BE20](v69);
  *(&v89 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF0E8, &qword_21CBABAC0);
  sub_21C6EADEC(&qword_27CDEF0F0, &qword_27CDEF0E8, &qword_21CBABAC0);
  sub_21CB821B4();
  v70 = sub_21CB83654();
  MEMORY[0x28223BE20](v70);
  *(&v89 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF0F8, &qword_21CBABAC8);
  sub_21C6EADEC(&qword_27CDEF100, &qword_27CDEF0F8, &qword_21CBABAC8);
  sub_21CB821A4();
  v71 = v100[12];
  v72 = v100[16];
  v73 = v100[20];
  v74 = v100[24];
  v75 = v100[28];
  v76 = v100[32];
  v77 = v100[36];
  v105 = v100[40];
  v78 = v103;
  (*(v107 + 16))(v103, v106, v108);
  sub_21C6EDBAC(v118, &v78[v71], &qword_27CDEF030, &qword_21CBAB9F8);
  sub_21C6EDBAC(v117, &v78[v72], &qword_27CDEF020, &qword_21CBAB9E8);
  (*(v109 + 16))(&v78[v73], v119, v110);
  (*(v111 + 16))(&v78[v74], v120, v112);
  v79 = v96;
  (*(v96 + 16))(&v78[v75], v121, v113);
  v80 = v97;
  (*(v97 + 16))(&v78[v76], v122, v115);
  v81 = v98;
  v82 = &v78[v77];
  v83 = v114;
  v84 = v99;
  (*(v98 + 16))(v82, v114, v99);
  v85 = v101;
  v86 = v116;
  v87 = v102;
  (*(v101 + 16))(&v78[v105], v116, v102);
  sub_21CB83384();
  (*(v85 + 8))(v86, v87);
  (*(v81 + 8))(v83, v84);
  (*(v80 + 8))(v122, v115);
  (*(v79 + 8))(v121, v113);
  (*(v111 + 8))(v120, v112);
  (*(v109 + 8))(v119, v110);
  sub_21C6EA794(v117, &qword_27CDEF020, &qword_21CBAB9E8);
  sub_21C6EA794(v118, &qword_27CDEF030, &qword_21CBAB9F8);
  return (*(v107 + 8))(v106, v108);
}

unint64_t sub_21C739F10()
{
  result = qword_27CDEF058;
  if (!qword_27CDEF058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF060, &unk_21CBABA18);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF058);
  }

  return result;
}

uint64_t sub_21C739FC8(uint64_t a1)
{
  v2 = sub_21CB82444();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF048, &qword_21CBABA10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  sub_21C73A150(a1, &v12 - v9);
  sub_21CB82424();
  sub_21CB82574();
  sub_21C89EF80();
  sub_21CB84324();
  (*(v3 + 8))(v6, v2);
  return sub_21C6EA794(v10, &qword_27CDEF048, &qword_21CBABA10);
}

uint64_t sub_21C73A150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF378, &qword_21CBAC088);
  v3 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v37 = &v33 - v4;
  v5 = type metadata accessor for PMAppCommands();
  v6 = v5 - 8;
  v33 = *(v5 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v35 = *(v13 - 8);
  v14 = *(v35 + 64);
  MEMORY[0x28223BE20](v13);
  v34 = &v33 - v15;
  v16 = a1;
  v17 = *(a1 + *(v6 + 56) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v39)
  {
    sub_21CB81014();
    v18 = sub_21CB81004();
    v20 = v19;
    (*(v9 + 8))(v12, v8);
    sub_21C73A7B0(v16, &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppCommands);
    v21 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v22 = swift_allocObject();
    v23 = sub_21C73A8E8(&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for PMAppCommands);
    v39 = v18;
    v40 = v20;
    MEMORY[0x28223BE20](v23);
    *(&v33 - 4) = &v39;
    *(&v33 - 3) = 1801678700;
    *(&v33 - 2) = 0xE400000000000000;
  }

  else
  {
    sub_21CB81014();
    v25 = sub_21CB81004();
    v27 = v26;
    (*(v9 + 8))(v12, v8);
    sub_21C73A7B0(v16, &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppCommands);
    v28 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v29 = swift_allocObject();
    v30 = sub_21C73A8E8(&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for PMAppCommands);
    v39 = v25;
    v40 = v27;
    MEMORY[0x28223BE20](v30);
    *(&v33 - 4) = &v39;
    *(&v33 - 3) = 0x65706F2E6B636F6CLL;
    *(&v33 - 2) = 0xE90000000000006ELL;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  v24 = v34;
  sub_21CB84DA4();

  v31 = v35;
  (*(v35 + 16))(v37, v24, v13);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
  sub_21CB83494();
  return (*(v31 + 8))(v24, v13);
}

uint64_t sub_21C73A7B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C73A818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C73A880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C73A8E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C73A954()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_21C73A960(*(v0 + 16));
}

uint64_t sub_21C73A960(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_21C71F3FC();

  return sub_21CB84CB4();
}

uint64_t sub_21C73A9E0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF2A0, &qword_21CBABF30);
  v109 = *(v6 - 8);
  v110 = v6;
  v7 = *(v109 + 64);
  MEMORY[0x28223BE20](v6);
  v108 = &v93 - v8;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF2A8, &qword_21CBABF38);
  v9 = *(*(v107 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v107);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v105 = &v93 - v14;
  MEMORY[0x28223BE20](v13);
  v111 = &v93 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF2B0, &qword_21CBABF40);
  v97 = *(v16 - 8);
  v98 = v16;
  v17 = *(v97 + 64);
  MEMORY[0x28223BE20](v16);
  v96 = &v93 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF2B8, &qword_21CBABF48);
  v102 = *(v19 - 8);
  v103 = v19;
  v20 = *(v102 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v95 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v94 = &v93 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF2C0, &qword_21CBABF50);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v106 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v115 = &v93 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF2C8, &qword_21CBABF58);
  v99 = *(v29 - 8);
  v100 = v29;
  v30 = *(v99 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v93 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF2D0, &qword_21CBABF60);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v93 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v93 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF2D8, &qword_21CBABF68);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v104 = &v93 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v46 = *(a1 + 16);
  v113 = a3;
  v114 = &v93 - v45;
  v112 = v12;
  v101 = a2;
  if (v46 && (a2 & 1) != 0)
  {
    MEMORY[0x28223BE20](&v93 - v45);
    *(&v93 - 2) = v46;
    *(&v93 - 1) = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF310, &qword_21CBABFB0);
    sub_21C8A035C();
    sub_21CB85054();
    v47 = *(type metadata accessor for PMAppCommands() + 52);
    v93 = a1;
    v48 = *(a1 + v47 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v49 = v116;
    if (v116)
    {
    }

    KeyPath = swift_getKeyPath();
    v51 = swift_allocObject();
    *(v51 + 16) = v49 != 0;
    (*(v99 + 32))(v38, v32, v100);
    v52 = &v38[*(v33 + 36)];
    *v52 = KeyPath;
    v52[1] = sub_21C87E800;
    v52[2] = v51;
    sub_21C716934(v38, v40, &qword_27CDEF2D0, &qword_21CBABF60);
    v53 = v114;
    sub_21C716934(v40, v114, &qword_27CDEF2D0, &qword_21CBABF60);
    (*(v34 + 56))(v53, 0, 1, v33);
    v54 = v105;
    a1 = v93;
  }

  else
  {
    (*(v34 + 56))();
    v54 = v105;
  }

  v55 = type metadata accessor for PMAppCommands();
  v56 = *(v55 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF178, &unk_21CBABBD0);
  sub_21CB821D4();
  v57 = v116;
  v58 = v101;
  if (v117 != 1)
  {
    goto LABEL_18;
  }

  if (!v116)
  {
LABEL_19:
    v74 = 1;
    v75 = v108;
    v73 = v103;
    goto LABEL_20;
  }

  swift_getKeyPath();
  v116 = v57;
  sub_21C6F0700(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v59 = *(v57 + 96);

  j__swift_release();
  sub_21CB821D4();
  if ((v117 & 1) == 0)
  {

LABEL_18:
    j__swift_release();
    goto LABEL_19;
  }

  v60 = v103;
  if (v116 && (v61 = sub_21C900CCC(v59), v62 = j__swift_release(), v61 != 2) && (v58 & 1) != 0)
  {
    MEMORY[0x28223BE20](v62);
    *(&v93 - 32) = v61 & 1;
    *(&v93 - 3) = a1;
    *(&v93 - 2) = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF2F0, &qword_21CBABFA0);
    sub_21C8A0260();
    v63 = v96;
    sub_21CB85054();

    v64 = *(a1 + *(v55 + 52) + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v65 = v116;
    if (v116)
    {
    }

    v66 = v65 != 0;
    v67 = swift_getKeyPath();
    v68 = swift_allocObject();
    *(v68 + 16) = v66;
    v69 = v95;
    (*(v97 + 32))(v95, v63, v98);
    v70 = &v69[*(v60 + 36)];
    *v70 = v67;
    v70[1] = sub_21C87E800;
    v70[2] = v68;
    v71 = v69;
    v72 = v94;
    sub_21C716934(v71, v94, &qword_27CDEF2B8, &qword_21CBABF48);
    sub_21C716934(v72, v115, &qword_27CDEF2B8, &qword_21CBABF48);
    v73 = v60;
    v74 = 0;
    v75 = v108;
  }

  else
  {

    v74 = 1;
    v75 = v108;
    v73 = v60;
  }

LABEL_20:
  v76 = (*(v102 + 56))(v115, v74, 1, v73);
  MEMORY[0x28223BE20](v76);
  *(&v93 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF290, &qword_21CBABF20);
  sub_21C73B6AC();
  sub_21CB85054();
  v77 = *(a1 + *(v55 + 52) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v78 = v116;
  if (v116)
  {
  }

  v79 = v78 != 0;
  v80 = swift_getKeyPath();
  v81 = swift_allocObject();
  *(v81 + 16) = v79;
  (*(v109 + 32))(v54, v75, v110);
  v82 = &v54[*(v107 + 36)];
  *v82 = v80;
  v82[1] = sub_21C87E800;
  v82[2] = v81;
  v83 = v54;
  v84 = v111;
  sub_21C716934(v83, v111, &qword_27CDEF2A8, &qword_21CBABF38);
  v85 = v114;
  v86 = v104;
  sub_21C6EDBAC(v114, v104, &qword_27CDEF2D8, &qword_21CBABF68);
  v87 = v115;
  v88 = v106;
  sub_21C6EDBAC(v115, v106, &qword_27CDEF2C0, &qword_21CBABF50);
  v89 = v112;
  sub_21C6EDBAC(v84, v112, &qword_27CDEF2A8, &qword_21CBABF38);
  v90 = v113;
  sub_21C6EDBAC(v86, v113, &qword_27CDEF2D8, &qword_21CBABF68);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF2E8, &qword_21CBABF70);
  sub_21C6EDBAC(v88, v90 + *(v91 + 48), &qword_27CDEF2C0, &qword_21CBABF50);
  sub_21C6EDBAC(v89, v90 + *(v91 + 64), &qword_27CDEF2A8, &qword_21CBABF38);
  sub_21C6EA794(v84, &qword_27CDEF2A8, &qword_21CBABF38);
  sub_21C6EA794(v87, &qword_27CDEF2C0, &qword_21CBABF50);
  sub_21C6EA794(v85, &qword_27CDEF2D8, &qword_21CBABF68);
  sub_21C6EA794(v89, &qword_27CDEF2A8, &qword_21CBABF38);
  sub_21C6EA794(v88, &qword_27CDEF2C0, &qword_21CBABF50);
  return sub_21C6EA794(v86, &qword_27CDEF2D8, &qword_21CBABF68);
}