void sub_1BD745978(uint64_t a1, void *a2, uint64_t (*a3)(void, double), uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v181 = a7;
  v182 = a5;
  v188 = a6;
  v183 = a4;
  v191 = a3;
  v8 = sub_1BE04C974();
  v192 = *(v8 - 8);
  v193 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v189 = &v179 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v190 = &v179 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E40);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v186 = (&v179 - v16);
  v187 = sub_1BE04C7B4();
  v185 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187, v17);
  v184 = (&v179 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_1BE04D214();
  v20 = *(v19 - 8);
  v195 = v19;
  v196 = v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v179 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v179 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v179 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v179 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v179 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v179 - v42;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v45 = Strong;
  v180 = v31;
  v46 = [a2 result];
  v47 = *((*MEMORY[0x1E69E7D40] & *v45) + 0x60);
  v194 = v45;
  v48 = [*&v45[v47 + 32] paymentRequest];
  if (!v48)
  {
    __break(1u);
    goto LABEL_73;
  }

  v49 = v48;
  sub_1BD6B99C4(v46, v48);

  v50 = [a2 result];
  v51 = a2;
  if (v50 > 3)
  {
    v52 = v194;
    if ((v50 - 4) < 2)
    {
      sub_1BE04D084();
      v73 = sub_1BE04D204();
      v74 = sub_1BE052C54();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_1BD026000, v73, v74, "Authentication pre-empted or failed", v75, 2u);
        MEMORY[0x1BFB45F20](v75, -1, -1);
      }

      (*(v196 + 8))(v23, v195);
      v76 = *(v52 + *((*MEMORY[0x1E69E7D40] & *v52) + 0xD8));
      v77 = *MEMORY[0x1E69BBBC8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B69E0;
      *(inited + 32) = 0xD000000000000015;
      *(inited + 40) = 0x80000001BE128F00;
      v79 = v76;
      v80 = v77;
      v81 = [v51 result];
      *(inited + 72) = MEMORY[0x1E69E6530];
      *(inited + 48) = v81;
      sub_1BD1AACF8(inited);
      swift_setDeallocating();
      sub_1BD0DE53C(inited + 32, &qword_1EBD52080);
      v82 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v83 = sub_1BE052224();

      v84 = [v82 initWithDomain:v80 code:-1 userInfo:v83];

      v85 = sub_1BE04A844();
      [v79 didEncounterFatalError_];

      return;
    }

    if (v50 != 6)
    {
      if (v50 != 7)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    sub_1BE04D084();
    v122 = sub_1BE04D204();
    v123 = sub_1BE052C54();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_1BD026000, v122, v123, "Triggered biolockout", v124, 2u);
      MEMORY[0x1BFB45F20](v124, -1, -1);
    }

    (*(v196 + 8))(v35, v195);
    v125 = MEMORY[0x1E69E7D40];
    v126 = *((*MEMORY[0x1E69E7D40] & *v52) + 0xD0);
    v127 = [*(v52 + v126) paymentRequest];
    v128 = v193;
    if (!v127)
    {
      goto LABEL_75;
    }

    v129 = v127;
    v130 = [v127 _isPVKRequest];
    v131 = v192;
    if (v130)
    {
      v132 = v194;
      v133 = *(v132 + *((*v125 & *v132) + 0xD8));
      v134 = *MEMORY[0x1E69BBBC8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30);
      v135 = swift_initStackObject();
      *(v135 + 16) = xmmword_1BE0B69E0;
      *(v135 + 32) = 0xD000000000000015;
      *(v135 + 40) = 0x80000001BE128F00;
      v136 = v133;
      v137 = v134;
      v138 = [v51 result];
      *(v135 + 72) = MEMORY[0x1E69E6530];
      *(v135 + 48) = v138;
      sub_1BD1AACF8(v135);
      swift_setDeallocating();
      sub_1BD0DE53C(v135 + 32, &qword_1EBD52080);
      v139 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v140 = sub_1BE052224();

      v141 = [v139 initWithDomain:v137 code:-1 userInfo:v140];

      v142 = sub_1BE04A844();
      [v136 didEncounterFatalError_];

      return;
    }

    v151 = &selRef__endReportingIfNecessary;
    if ([v129 requestType] == 13)
    {
      v152 = MEMORY[0x1EEE9AC00](13, v150);
      v153 = v191(0, v152);
      *(&v179 - 2) = v153;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v155);
      *(&v179 - 2) = v153;
      swift_getKeyPath();
      v156 = v194;
      sub_1BE04D8B4();

      v157 = *(v198 + qword_1EBDAADC0);
      sub_1BE048964();

      v158 = *(v157 + 61);

      if (v158)
      {
        sub_1BD747090(v183, v181);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v159, v160);
        *(&v179 - 2) = v153;
        v164 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v164, v165);
        *(&v179 - 2) = v153;
        swift_getKeyPath();
        sub_1BE04D8B4();

        sub_1BE04CA74();

        MEMORY[0x1EEE9AC00](v166, v167);
        *(&v179 - 2) = v153;
        v168 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v168, v169);
        *(&v179 - 2) = v153;
        swift_getKeyPath();
        sub_1BE04D8B4();

        v170 = v198;
        v171 = v198 + qword_1EBDAADA8;
        v198 = *(v198 + qword_1EBDAADA8);
        v199 = *(v171 + 16);
        v200 = *(v171 + 32);
        v172 = v198;
        v173 = v200;
        v201 = *(&v198 + 1);
        v202[0] = *(&v199 + 1);
        sub_1BE048964();
        v174 = v172;
        sub_1BD0DE19C(&v201, v197, &qword_1EBD3D490);
        sub_1BD0DE19C(v202, v197, &qword_1EBD40150);
        v175 = v173;
        sub_1BE048964();
        sub_1BDA74FEC(&v198, v170, 0, 0);

        sub_1BD0DE53C(&v201, &qword_1EBD3D490);
        v131 = v192;
        sub_1BD0DE53C(v202, &qword_1EBD40150);

        v128 = v193;
      }

      v151 = &selRef__endReportingIfNecessary;
LABEL_67:
      (*(v131 + 104))(v189, *MEMORY[0x1E69BCA48], v128);
      v176 = [*&v156[v126] paymentRequest];
      if (v176)
      {
        v177 = v176;
        v178 = [v176 v151[454]];

        if (v178)
        {
          sub_1BD741B2C(v189);
        }

        (*(v131 + 8))(v189, v128);
        return;
      }

      goto LABEL_76;
    }

    v161 = [*&v194[v126] paymentRequest];
    if (!v161)
    {
LABEL_77:
      __break(1u);
      return;
    }

    v162 = v161;
    if ([v161 _isAMPPayment])
    {
      v156 = v194;
      v163 = [*&v194[v126] mode];

      if (v163 == 1)
      {
LABEL_66:
        sub_1BD7472D8(v188);
        goto LABEL_67;
      }
    }

    else
    {

      v156 = v194;
    }

    if (![v129 _isAMPPayment])
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  v52 = v194;
  if (v50 > 1)
  {
    if (v50 == 2)
    {
      sub_1BE04D084();
      v119 = sub_1BE04D204();
      v120 = sub_1BE052C54();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        *v121 = 0;
        _os_log_impl(&dword_1BD026000, v119, v120, "Authentication canceled by app", v121, 2u);
        MEMORY[0x1BFB45F20](v121, -1, -1);
      }

      else
      {
      }

      (*(v196 + 8))(v39, v195);
      return;
    }

LABEL_15:
    sub_1BE04D084();
    v62 = sub_1BE04D204();
    v63 = sub_1BE052C54();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1BD026000, v62, v63, "Authentication canceled by biometry or selected fallback", v64, 2u);
      MEMORY[0x1BFB45F20](v64, -1, -1);
    }

    (*(v196 + 8))(v27, v195);
    v65 = MEMORY[0x1E69E7D40];
    v66 = *((*MEMORY[0x1E69E7D40] & *v52) + 0xD0);
    v67 = [*(v52 + v66) paymentRequest];
    v68 = v192;
    v69 = v190;
    if (v67)
    {
      v70 = v67;
      v71 = [v67 requestType];
      v72 = v193;
      if (v71 == 13)
      {
        [*(v52 + *((*v65 & *v52) + 0xD8)) didResolveError];
      }

      else if ([v70 _isAMPPayment])
      {
        sub_1BD7472D8(v188);
      }

      (*(v68 + 104))(v69, *MEMORY[0x1E69BCA48], v72);
      v143 = [*(v52 + v66) paymentRequest];
      if (v143)
      {
        v144 = v143;
        v145 = [v143 _isAMPPayment];

        if (v145)
        {
          sub_1BD741B2C(v69);
        }

        (*(v68 + 8))(v69, v72);
        return;
      }

      goto LABEL_74;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v50)
  {
    if (v50 == 1)
    {
      sub_1BE04D084();
      v53 = sub_1BE04D204();
      v54 = sub_1BE052C54();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_1BD026000, v53, v54, "Authentication canceled by user", v55, 2u);
        MEMORY[0x1BFB45F20](v55, -1, -1);
      }

      (*(v196 + 8))(v43, v195);
      v56 = [*(v52 + *((*MEMORY[0x1E69E7D40] & *v52) + 0xD8)) didResolveError];
      v58 = MEMORY[0x1EEE9AC00](v56, v57);
      v59 = v191(0, v58);
      *(&v179 - 2) = v59;
      v60 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v60, v61);
      *(&v179 - 2) = v59;
      swift_getKeyPath();
      sub_1BE04D8B4();

      sub_1BE04CB64();

      return;
    }

LABEL_13:

    return;
  }

  v86 = *((*MEMORY[0x1E69E7D40] & *v194) + 0xD8);
  if ([*&v194[v86] state] == 5)
  {
    v87 = [a2 biometricMatch];
    if (v87)
    {
      v89 = MEMORY[0x1EEE9AC00](v87, v88);
      v90 = v191(0, v89);
      *(&v179 - 2) = v90;
      v91 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v91, v92);
      *(&v179 - 2) = v90;
      swift_getKeyPath();
      sub_1BE04D8B4();

      sub_1BE048964();

      sub_1BDA75178(8, 17, 0, 0);
    }

    IsAvailable = PKPearlIsAvailable();
    if ((IsAvailable & 1) == 0)
    {
      IsAvailable = PKOpticIDIsAvailable();
      if (!IsAvailable)
      {
        v95 = [*(v52 + v86) beginDelayingAuthorizedState];
        v97 = MEMORY[0x1EEE9AC00](v95, v96);
        v98 = v191(0, v97);
        *(&v179 - 2) = v98;
        v99 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v99, v100);
        *(&v179 - 2) = v98;
        swift_getKeyPath();
        sub_1BE04D8B4();

        sub_1BE048964();

        v101 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1BE048964();
        sub_1BDA75178(11, 17, v182, v101);

        if (0.5 - CFAbsoluteTimeGetCurrent() > 0.0)
        {
          IsAvailable = [*(v52 + v86) delayAuthorizedStateByDuration_];
        }
      }
    }

    v102 = MEMORY[0x1EEE9AC00](IsAvailable, v94);
    v103 = v191(0, v102);
    *(&v179 - 2) = v103;
    v104 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v104, v105);
    *(&v179 - 2) = v103;
    swift_getKeyPath();
    sub_1BE04D8B4();

    v107 = v184;
    v106 = v185;
    v108 = v187;
    (*(v185 + 104))(v184, *MEMORY[0x1E69BC988], v187);
    v109 = sub_1BE051F44();
    v110 = v186;
    (*(*(v109 - 8) + 56))(v186, 1, 1, v109);
    sub_1BD83C0A8(v107, 0, 0, v110);

    sub_1BD0DE53C(v110, &unk_1EBD45E40);
    (*(v106 + 8))(v107, v108);
    v111 = swift_unknownObjectWeakLoadStrong();
    if (v111)
    {
      [v111 authorizationWillStart];
      swift_unknownObjectRelease();
    }

    v112 = *(v52 + v86);
    v113 = [v51 credential];
    if (v113)
    {
      v114 = v113;
      v115 = sub_1BE04AAC4();
      v117 = v116;

      v118 = sub_1BE04AAB4();
      sub_1BD1245AC(v115, v117);
    }

    else
    {
      v118 = 0;
    }

    [v112 didAuthenticateWithCredential_];

    swift_unknownObjectRelease();
  }

  else
  {
    v146 = v180;
    sub_1BE04D084();
    v147 = sub_1BE04D204();
    v148 = sub_1BE052C54();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      *v149 = 0;
      _os_log_impl(&dword_1BD026000, v147, v148, "Authentication successful but in wrong state - discarding credential", v149, 2u);
      MEMORY[0x1BFB45F20](v149, -1, -1);
    }

    else
    {
    }

    (*(v196 + 8))(v146, v195);
  }
}

id sub_1BD747090(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x70));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v5 = sub_1BE04CA44();

  if (v5)
  {
    [*(v4 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) cancelEvaluationWithOptions_];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    sub_1BE04CA54();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8C4();
  }

  result = [objc_allocWithZone(MEMORY[0x1E69BC748]) initWithPolicy_];
  if (result)
  {
    v7 = result;
    [result setPasscodeOnly_];
    v8 = sub_1BE052404();
    v9 = PKLocalizedIdentityString(v8);

    [v7 setPasscodeTitle_];
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE048964();
    sub_1BD7F2940(v7, a2, v10);
  }

  return result;
}

void sub_1BD7472D8(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E40);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v38[-v5 - 8];
  v37 = sub_1BE04C7B4();
  v7 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v8);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v12 = sub_1BE04CA44();

  if (v12)
  {
    [*(v11 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) cancelEvaluationWithOptions_];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v15 = v39;
    sub_1BE04CA54();
    v16 = *(v15 + qword_1EBD55580);
    v17 = *(v15 + qword_1EBD55580 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v39 = v16;
    *(&v39 + 1) = v17;
    v13 = sub_1BE04D8C4();
  }

  MEMORY[0x1EEE9AC00](v13, v14);
  v18 = a1(0);
  *(&v37 - 2) = v18;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v20);
  *(&v37 - 2) = v18;
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BE04C994();

  MEMORY[0x1EEE9AC00](v21, v22);
  *(&v37 - 2) = v18;
  v23 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v23, v24);
  *(&v37 - 2) = v18;
  swift_getKeyPath();
  sub_1BE04D8B4();

  v25 = v37;
  (*(v7 + 104))(v10, *MEMORY[0x1E69BC980], v37);
  v26 = sub_1BE051F44();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  sub_1BD83C0A8(v10, 0, 0, v6);

  sub_1BD0DE53C(v6, &unk_1EBD45E40);
  v27 = (*(v7 + 8))(v10, v25);
  MEMORY[0x1EEE9AC00](v27, v28);
  *(&v37 - 2) = v18;
  v29 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v29, v30);
  *(&v37 - 2) = v18;
  swift_getKeyPath();
  sub_1BE04D8B4();

  v31 = v39;
  v32 = v39 + qword_1EBDAADA8;
  v39 = *(v39 + qword_1EBDAADA8);
  v40 = *(v32 + 16);
  v41 = *(v32 + 32);
  v33 = v39;
  v34 = v41;
  v42 = *(&v39 + 1);
  v43 = *(&v40 + 1);
  sub_1BE048964();
  v35 = v33;
  sub_1BD0DE19C(&v42, v38, &qword_1EBD3D490);
  sub_1BD0DE19C(&v43, v38, &qword_1EBD40150);
  v36 = v34;
  sub_1BE048964();
  sub_1BDA74FEC(&v39, v31, 0, 0);

  sub_1BD0DE53C(&v42, &qword_1EBD3D490);
  sub_1BD0DE53C(&v43, &qword_1EBD40150);
}

void sub_1BD7478D8()
{
  v1 = sub_1BE04D214();
  v26 = *(v1 - 8);
  v27 = v1;
  v3 = MEMORY[0x1EEE9AC00](v1, v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v26 - v7;
  v9 = sub_1BE04C7B4();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v26 - v16;
  v18 = type metadata accessor for AccountServiceAuthorizationModel(0);
  v29 = v18;
  swift_getKeyPath();
  v28 = v18;
  swift_getKeyPath();
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  (*(v10 + 104))(v14, *MEMORY[0x1E69BC980], v9);
  LOBYTE(v18) = sub_1BE04C7A4();
  v19 = *(v10 + 8);
  v19(v14, v9);
  v19(v17, v9);
  if (v18)
  {
    sub_1BE04D084();
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C54();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BD026000, v20, v21, "Passcode required, not automatically resuming authentication", v22, 2u);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    (*(v26 + 8))(v8, v27);
  }

  else if ([*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8)) state] == 5)
  {
    sub_1BD752338(type metadata accessor for AccountServiceAuthorizationModel, type metadata accessor for AccountServiceAuthorizationModel, type metadata accessor for AccountServiceAuthorizationModel, &unk_1F3BB9BD8, sub_1BD753B38);
  }

  else
  {
    sub_1BE04D084();
    v23 = sub_1BE04D204();
    v24 = sub_1BE052C54();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BD026000, v23, v24, "Not in authenticate state, not resuming authentication", v25, 2u);
      MEMORY[0x1BFB45F20](v25, -1, -1);
    }

    (*(v26 + 8))(v5, v27);
  }
}

void sub_1BD747D18()
{
  v1 = sub_1BE04D214();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v26 - v7;
  v9 = sub_1BE04C7B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v26 - v16;
  v18 = type metadata accessor for IdentityAuthorizationModel(0);
  v29 = v18;
  swift_getKeyPath();
  v28 = v18;
  swift_getKeyPath();
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  (*(v10 + 104))(v13, *MEMORY[0x1E69BC980], v9);
  LOBYTE(v18) = sub_1BE04C7A4();
  v19 = *(v10 + 8);
  v19(v13, v9);
  v19(v17, v9);
  if (v18)
  {
    sub_1BE04D084();
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C54();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BD026000, v20, v21, "Passcode required, not automatically resuming authentication", v22, 2u);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    (*(v26 + 8))(v8, v27);
  }

  else if ([*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8)) state] == 5)
  {
    sub_1BD752338(type metadata accessor for IdentityAuthorizationModel, type metadata accessor for IdentityAuthorizationModel, type metadata accessor for IdentityAuthorizationModel, &unk_1F3BB9980, sub_1BD75371C);
  }

  else
  {
    sub_1BE04D084();
    v23 = sub_1BE04D204();
    v24 = sub_1BE052C54();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BD026000, v23, v24, "Not in authenticate state, not resuming authentication", v25, 2u);
      MEMORY[0x1BFB45F20](v25, -1, -1);
    }

    (*(v26 + 8))(v4, v27);
  }
}

void sub_1BD748158()
{
  v1 = sub_1BE04D214();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v26 - v7;
  v9 = sub_1BE04C7B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v26 - v16;
  v18 = type metadata accessor for PaymentAuthorizationModel(0);
  v29 = v18;
  swift_getKeyPath();
  v28 = v18;
  swift_getKeyPath();
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  (*(v10 + 104))(v13, *MEMORY[0x1E69BC980], v9);
  LOBYTE(v18) = sub_1BE04C7A4();
  v19 = *(v10 + 8);
  v19(v13, v9);
  v19(v17, v9);
  if (v18)
  {
    sub_1BE04D084();
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C54();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BD026000, v20, v21, "Passcode required, not automatically resuming authentication", v22, 2u);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    (*(v26 + 8))(v8, v27);
  }

  else if ([*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8)) state] == 5)
  {
    sub_1BD752338(type metadata accessor for PaymentAuthorizationModel, type metadata accessor for PaymentAuthorizationModel, type metadata accessor for PaymentAuthorizationModel, &unk_1F3BB9A48, sub_1BD753878);
  }

  else
  {
    sub_1BE04D084();
    v23 = sub_1BE04D204();
    v24 = sub_1BE052C54();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BD026000, v23, v24, "Not in authenticate state, not resuming authentication", v25, 2u);
      MEMORY[0x1BFB45F20](v25, -1, -1);
    }

    (*(v26 + 8))(v4, v27);
  }
}

void sub_1BD748598()
{
  v1 = sub_1BE04D214();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v26 - v7;
  v9 = sub_1BE04C7B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v26 - v16;
  v18 = type metadata accessor for AMPAuthorizationModel();
  v29 = v18;
  swift_getKeyPath();
  v28 = v18;
  swift_getKeyPath();
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  (*(v10 + 104))(v13, *MEMORY[0x1E69BC980], v9);
  LOBYTE(v18) = sub_1BE04C7A4();
  v19 = *(v10 + 8);
  v19(v13, v9);
  v19(v17, v9);
  if (v18)
  {
    sub_1BE04D084();
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C54();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BD026000, v20, v21, "Passcode required, not automatically resuming authentication", v22, 2u);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    (*(v26 + 8))(v8, v27);
  }

  else if ([*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8)) state] == 5)
  {
    sub_1BD752338(type metadata accessor for AMPAuthorizationModel, type metadata accessor for AMPAuthorizationModel, type metadata accessor for AMPAuthorizationModel, &unk_1F3BB9660, sub_1BD752BD4);
  }

  else
  {
    sub_1BE04D084();
    v23 = sub_1BE04D204();
    v24 = sub_1BE052C54();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BD026000, v23, v24, "Not in authenticate state, not resuming authentication", v25, 2u);
      MEMORY[0x1BFB45F20](v25, -1, -1);
    }

    (*(v26 + 8))(v4, v27);
  }
}

void sub_1BD7489D8()
{
  v1 = sub_1BE04D214();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v26 - v7;
  v9 = sub_1BE04C7B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v26 - v16;
  v18 = type metadata accessor for VirtualCardAuthorizationModel();
  v29 = v18;
  swift_getKeyPath();
  v28 = v18;
  swift_getKeyPath();
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  (*(v10 + 104))(v13, *MEMORY[0x1E69BC980], v9);
  LOBYTE(v18) = sub_1BE04C7A4();
  v19 = *(v10 + 8);
  v19(v13, v9);
  v19(v17, v9);
  if (v18)
  {
    sub_1BE04D084();
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C54();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BD026000, v20, v21, "Passcode required, not automatically resuming authentication", v22, 2u);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    (*(v26 + 8))(v8, v27);
  }

  else if ([*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8)) state] == 5)
  {
    sub_1BD752338(type metadata accessor for VirtualCardAuthorizationModel, type metadata accessor for VirtualCardAuthorizationModel, type metadata accessor for VirtualCardAuthorizationModel, &unk_1F3BB9B10, sub_1BD753A60);
  }

  else
  {
    sub_1BE04D084();
    v23 = sub_1BE04D204();
    v24 = sub_1BE052C54();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BD026000, v23, v24, "Not in authenticate state, not resuming authentication", v25, 2u);
      MEMORY[0x1BFB45F20](v25, -1, -1);
    }

    (*(v26 + 8))(v4, v27);
  }
}

uint64_t sub_1BD748E18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE051FA4();
  v27 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v24 = sub_1BE052D54();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = a1;
    aBlock[4] = v25;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = v26;
    v20 = _Block_copy(aBlock);
    v21 = a1;

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD751B3C(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    v26 = v12;
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
    sub_1BE053664();
    v22 = v24;
    MEMORY[0x1BFB3FDF0](0, v15, v11, v20);
    _Block_release(v20);

    (*(v8 + 8))(v11, v7);
    return (*(v27 + 8))(v15, v26);
  }

  return result;
}

void sub_1BD749150(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), void (*a4)(void))
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if ([a2 result])
    {
      sub_1BE04D084();
      v15 = sub_1BE04D204();
      v16 = sub_1BE052C54();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1BD026000, v15, v16, "Passcode to clear biolockout pre-empted or failed", v17, 2u);
        MEMORY[0x1BFB45F20](v17, -1, -1);
      }

      (*(v8 + 8))(v11, v7);
      v18 = *(v13 + *((*MEMORY[0x1E69E7D40] & *v13) + 0xD8));
      v19 = *MEMORY[0x1E69BBBC8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B69E0;
      *(inited + 32) = 0xD000000000000015;
      *(inited + 40) = 0x80000001BE128F00;
      v21 = v18;
      v22 = v19;
      v23 = [a2 result];
      *(inited + 72) = MEMORY[0x1E69E6530];
      *(inited + 48) = v23;
      sub_1BD1AACF8(inited);
      swift_setDeallocating();
      sub_1BD0DE53C(inited + 32, &qword_1EBD52080);
      v24 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v25 = sub_1BE052224();

      v26 = [v24 initWithDomain:v22 code:-1 userInfo:v25];

      v27 = sub_1BE04A844();
      [v21 didEncounterFatalError_];

      v13 = v27;
    }

    else
    {
      v43 = a4;
      v28 = MEMORY[0x1EEE9AC00](0, v14);
      v29 = a3(v28);
      *(&v42 - 2) = v29;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v31);
      *(&v42 - 2) = v29;
      swift_getKeyPath();
      sub_1BE04D8B4();

      sub_1BE04CA74();

      MEMORY[0x1EEE9AC00](v32, v33);
      *(&v42 - 2) = v29;
      v34 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v34, v35);
      *(&v42 - 2) = v29;
      swift_getKeyPath();
      sub_1BE04D8B4();

      v36 = v45;
      v37 = v45 + qword_1EBDAADA8;
      v45 = *(v45 + qword_1EBDAADA8);
      v46 = *(v37 + 16);
      v47 = *(v37 + 32);
      v38 = v45;
      v39 = v47;
      v48 = *(&v45 + 1);
      v49[0] = *(&v46 + 1);
      sub_1BE048964();
      v40 = v38;
      sub_1BD0DE19C(&v48, v44, &qword_1EBD3D490);
      sub_1BD0DE19C(v49, v44, &qword_1EBD40150);
      v41 = v39;
      sub_1BE048964();
      sub_1BDA74FEC(&v45, v36, 0, 0);

      sub_1BD0DE53C(&v48, &qword_1EBD3D490);
      sub_1BD0DE53C(v49, &qword_1EBD40150);

      v43();
    }
  }
}

uint64_t sub_1BD7496DC()
{
  type metadata accessor for ScrollViewManager();
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC9PassKitUI17ScrollViewManager_proxy;
  v2 = sub_1BE04ECA4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_1BD749760@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v60 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51ED0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v60 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51ED8);
  MEMORY[0x1EEE9AC00](v61, v10);
  v12 = &v60 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EE0);
  MEMORY[0x1EEE9AC00](v63, v13);
  v64 = &v60 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EE8);
  MEMORY[0x1EEE9AC00](v74, v15);
  v65 = &v60 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EF0);
  v66 = *(v17 - 8);
  v67 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v75 = &v60 - v19;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EF8);
  MEMORY[0x1EEE9AC00](v68, v20);
  v69 = &v60 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51F00);
  v71 = *(v22 - 8);
  v72 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v70 = &v60 - v24;
  sub_1BD74A210(v5);
  v25 = v1;
  if (*(v1 + 32))
  {
    sub_1BE048964();
    sub_1BE04CD14();

    v26 = sub_1BE051D94();
    v27 = *(v1 + 24);
    v28 = &v9[*(v6 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F0A0);
    v62 = v27;
    sub_1BE04CB14();
    *v28 = v26;
    sub_1BD0DE204(v5, v9, &qword_1EBD51EC8);
    sub_1BE048964();
    sub_1BE04CD14();

    v29 = sub_1BE051D94();
    v30 = sub_1BE04CB54();
    sub_1BD0DE19C(v9, v12, &qword_1EBD51ED0);
    v31 = &v12[*(v61 + 36)];
    *v31 = v29;
    v31[8] = v30 & 1;
    sub_1BD0DE53C(v9, &qword_1EBD51ED0);
    sub_1BE048964();
    sub_1BE04CD14();

    v32 = sub_1BE051D94();
    v33 = v25;
    type metadata accessor for KeyboardObserver();
    sub_1BD751B3C(&qword_1EBD36500, type metadata accessor for KeyboardObserver);
    sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v34 = v79[0];
    LOBYTE(v29) = v79[1];
    v35 = v64;
    sub_1BD0DE204(v12, v64, &qword_1EBD51ED8);
    v36 = v35 + *(v63 + 36);
    *v36 = v32;
    *(v36 + 8) = v34;
    *(v36 + 16) = v29;
    sub_1BD394D3C(v33, v79);
    v37 = swift_allocObject();
    memcpy((v37 + 16), v79, 0x128uLL);
    v38 = v35;
    v39 = v65;
    sub_1BD0DE204(v38, v65, &qword_1EBD51EE0);
    v40 = (v39 + *(v74 + 36));
    *v40 = sub_1BD751C8C;
    v40[1] = v37;
    v40[2] = 0;
    v40[3] = 0;
    LOBYTE(v40) = *(v33 + 96);
    v41 = *(v33 + 104);
    v60 = v33;
    LOBYTE(v76) = v40;
    v77 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B80);
    sub_1BE0516C4();
    v76 = v79[0];
    v77 = v79[1];
    v78 = v79[2];
    sub_1BD394D3C(v33, v79);
    v42 = swift_allocObject();
    memcpy((v42 + 16), v79, 0x128uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F10);
    sub_1BD7531A4(&qword_1EBD51F18, &qword_1EBD51EE8, &unk_1BE0F4BD0, sub_1BD751D74);
    sub_1BD752080();
    sub_1BD0DE4F4(&qword_1EBD367B0, &qword_1EBD51F10);
    sub_1BE051124();

    sub_1BD0DE53C(v39, &qword_1EBD51EE8);
    v43 = v60;
    type metadata accessor for AuthenticatorModel();
    sub_1BD751B3C(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
    sub_1BE04E964();
    swift_getKeyPath();
    sub_1BE04E974();

    v74 = v76;
    v65 = v77;
    LOBYTE(v33) = v78;
    sub_1BD394D3C(v43, v79);
    v44 = swift_allocObject();
    memcpy((v44 + 16), v79, 0x128uLL);
    sub_1BD0E5E8C(0, &qword_1EBD35E30);
    sub_1BD0EE33C();
    v45 = sub_1BE04EEC4();
    v47 = v46;
    type metadata accessor for PresentationContext();
    sub_1BD751B3C(&unk_1EBD361B0, type metadata accessor for PresentationContext);
    v48 = sub_1BE04EEC4();
    v50 = v49;
    v80 = 0;
    v51 = v69;
    (*(v66 + 32))(v69, v75, v67);
    v52 = v51 + *(v68 + 36);
    v53 = v65;
    *v52 = v74;
    *(v52 + 8) = v53;
    *(v52 + 16) = v33;
    *(v52 + 17) = v81[0];
    *(v52 + 20) = *(v81 + 3);
    *(v52 + 24) = sub_1BD7520D4;
    *(v52 + 32) = v44;
    *(v52 + 40) = v45;
    *(v52 + 48) = v47;
    *(v52 + 56) = v48;
    *(v52 + 64) = v50;
    *(v52 + 72) = sub_1BD644BF8;
    *(v52 + 80) = 0;
    *(v52 + 88) = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80);
    sub_1BE0516C4();
    sub_1BD7520DC();
    v54 = v70;
    sub_1BE050704();
    sub_1BD0DE53C(v79, &qword_1EBD51FA0);
    sub_1BD0DE53C(v51, &qword_1EBD51EF8);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FA8);
    v56 = v73;
    sub_1BE04C924();
    sub_1BD394D3C(v43, v79);
    v57 = swift_allocObject();
    memcpy((v57 + 16), v79, 0x128uLL);
    result = (*(v71 + 32))(v56, v54, v72);
    v59 = (v56 + *(v55 + 56));
    *v59 = sub_1BD752278;
    v59[1] = v57;
  }

  else
  {
    sub_1BE04CDA4();
    sub_1BD751B3C(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD74A210@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A8);
  MEMORY[0x1EEE9AC00](v78, v3);
  v79 = (&v67 - v4);
  v5 = sub_1BE04F3D4();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v71 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FB0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v67 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520B0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v67 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F58);
  v68 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16, v17);
  v70 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v67 - v21;
  v69 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v77 = &v67 - v26;
  sub_1BD74BD48(v86);
  v92 = v86[4];
  v93 = v86[5];
  v94 = v87;
  v88 = v86[0];
  v89 = v86[1];
  v90 = v86[2];
  v91 = v86[3];
  sub_1BD74CBC0(v15);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520B8);
  (*(*(v27 - 8) + 56))(v15, 0, 1, v27);
  sub_1BD0DE19C(v1 + 56, v84, &qword_1EBD3D498);
  v28 = v84[3];
  if (v84[3])
  {
    __swift_project_boxed_opaque_existential_1(v84, v84[3]);
    v28 = sub_1BE04C814();
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_0(v84);
  }

  else
  {
    sub_1BD0DE53C(v84, &qword_1EBD3D498);
    v30 = 0;
  }

  sub_1BD74C378(v28, v30, v11);
  sub_1BD0D4744(v28);
  sub_1BD0DE19C(v1 + 56, v84, &qword_1EBD3D498);
  v75 = v15;
  v76 = v11;
  if (v84[3])
  {
    __swift_project_boxed_opaque_existential_1(v84, v84[3]);
    v31 = sub_1BE04C814();
    __swift_destroy_boxed_opaque_existential_0(v84);
    if (v31)
    {
      sub_1BD0D4744(v31);
      v74 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1BD0DE53C(v84, &qword_1EBD3D498);
  }

  v74 = 0;
LABEL_9:
  v32 = *(v1 + 24);
  v33 = *(v2 + 48);
  v85[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51FD0);
  v85[4] = sub_1BD0DE4F4(qword_1EBD35F78, &unk_1EBD51FD0);
  v85[0] = v33;
  sub_1BD394D3C(v2, v84);
  v34 = swift_allocObject();
  memcpy((v34 + 16), v84, 0x128uLL);
  v35 = &v22[v16[26]];
  sub_1BD0E5E8C(0, &qword_1EBD35E30);
  sub_1BD0EE33C();
  sub_1BE048964();
  v36 = v33;
  *v35 = sub_1BE04EEC4();
  v35[1] = v37;
  v38 = &v22[v16[27]];
  v39 = sub_1BE04CDA4();
  sub_1BD751B3C(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  v67 = v39;
  *v38 = sub_1BE04EEC4();
  v38[1] = v40;
  v41 = &v22[v16[28]];
  LOBYTE(v83[0]) = 0;
  sub_1BE051694();
  v42 = v84[1];
  *v41 = v84[0];
  *(v41 + 1) = v42;
  v43 = &v22[v16[29]];
  *v43 = swift_getKeyPath();
  v43[8] = 0;
  *(v22 + 12) = v94;
  v44 = v93;
  *(v22 + 4) = v92;
  *(v22 + 5) = v44;
  v45 = v89;
  *v22 = v88;
  *(v22 + 1) = v45;
  v46 = v91;
  *(v22 + 2) = v90;
  *(v22 + 3) = v46;
  v47 = v75;
  sub_1BD0DE19C(v75, &v22[v16[17]], &qword_1EBD520B0);
  v48 = v76;
  sub_1BD0DE19C(v76, &v22[v16[18]], &qword_1EBD51FB0);
  *&v22[v16[19]] = 0;
  v22[v16[20]] = v74;
  *&v22[v16[21]] = v32;
  sub_1BD0EE8CC(v85, &v22[v16[22]]);
  v22[v16[23]] = 1;
  v49 = &v22[v16[25]];
  *v49 = sub_1BD752D90;
  v49[1] = v34;
  sub_1BD0EE8CC(v85, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF0);
  if (swift_dynamicCast())
  {
    sub_1BD043990(v81, v84);
    v50 = v84[3];
    v51 = v84[4];
    __swift_project_boxed_opaque_existential_1(v84, v84[3]);
    (*(v51 + 56))(v83, v50, v51);
    sub_1BD0DE53C(v48, &qword_1EBD51FB0);
    sub_1BD0DE53C(v47, &qword_1EBD520B0);
    __swift_destroy_boxed_opaque_existential_0(v85);
    v22[v16[24]] = v83[0];
    __swift_destroy_boxed_opaque_existential_0(v84);
  }

  else
  {
    sub_1BD0DE53C(v48, &qword_1EBD51FB0);
    sub_1BD0DE53C(v47, &qword_1EBD520B0);
    __swift_destroy_boxed_opaque_existential_0(v85);
    v82 = 0;
    memset(v81, 0, sizeof(v81));
    sub_1BD0DE53C(v81, &qword_1EBD389A0);
    v22[v16[24]] = 2;
  }

  v52 = v22;
  v53 = v77;
  sub_1BD0DE204(v52, v77, &qword_1EBD51F58);
  if (*(v2 + 32))
  {
    sub_1BE048964();
    v54 = sub_1BE04CD54();

    if (v54)
    {
      v55 = *(v2 + 208);
      if (*(v2 + 216) == 1)
      {
        if (v55)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1BE048964();
        sub_1BE052C44();
        v56 = sub_1BE050174();
        sub_1BE04CF84();

        v57 = v71;
        sub_1BE04F3C4();
        swift_getAtKeyPath();
        sub_1BD0D4604(v55, 0);
        (*(v72 + 8))(v57, v73);
        if (v84[0])
        {
          goto LABEL_22;
        }
      }

      v58 = *(v2 + 224);
      if (*(v2 + 232) == 1)
      {
        if ((v58 & 1) == 0)
        {
LABEL_20:
          v59 = v70;
          sub_1BD0DE19C(v53, v70, &qword_1EBD51F58);
          sub_1BD394D3C(v2, v84);
          v60 = (*(v68 + 80) + 16) & ~*(v68 + 80);
          v61 = (v69 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
          v62 = swift_allocObject();
          sub_1BD0DE204(v59, v62 + v60, &qword_1EBD51F58);
          memcpy((v62 + v61), v84, 0x128uLL);
          v63 = v79;
          *v79 = sub_1BD752DB4;
          v63[1] = v62;
LABEL_23:
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F48);
          sub_1BD0DE4F4(&qword_1EBD51F40, &qword_1EBD51F48);
          sub_1BD0DE4F4(&qword_1EBD51F50, &qword_1EBD51F58);
          sub_1BE04F9A4();
          return sub_1BD0DE53C(v53, &qword_1EBD51F58);
        }
      }

      else
      {
        sub_1BE048964();
        sub_1BE052C44();
        v64 = sub_1BE050174();
        sub_1BE04CF84();

        v65 = v71;
        sub_1BE04F3C4();
        swift_getAtKeyPath();
        sub_1BD0D4604(v58, 0);
        (*(v72 + 8))(v65, v73);
        if ((v84[0] & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

LABEL_22:
    sub_1BD0DE19C(v53, v79, &qword_1EBD51F58);
    goto LABEL_23;
  }

  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BD74ACFC()
{
  v0 = type metadata accessor for Passes(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v15 - v11;
  sub_1BD742DF8(type metadata accessor for AMPAuthorizationModel, sub_1BD748598);
  type metadata accessor for BankConnectInterface();
  sub_1BD751B3C(&qword_1EBD3F258, type metadata accessor for BankConnectInterface);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((*(v1 + 48))(v8, 1, v0))
  {
    sub_1BD0DE53C(v8, &unk_1EBD43B40);
    v13 = type metadata accessor for AvailablePass(0);
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  }

  else
  {
    sub_1BD7535C8(v8, v4, type metadata accessor for Passes);
    sub_1BD0DE53C(v8, &unk_1EBD43B40);
    sub_1BD0DE19C(v4, v12, &qword_1EBD520A0);
    sub_1BD7536BC(v4, type metadata accessor for Passes);
  }

  sub_1BD8FE0E0(v12);

  return sub_1BD0DE53C(v12, &qword_1EBD520A0);
}

id sub_1BD74B040@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52088);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v27[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52090);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v27[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52098);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v27[-v15];
  result = [*(*(a1 + 48) + *((*MEMORY[0x1E69E7D40] & **(a1 + 48)) + 0xD0)) paymentRequest];
  if (result)
  {
    v18 = result;
    v19 = [result requestType];

    sub_1BD392764(v19, v7);
    sub_1BD394D3C(a1, v27);
    v20 = swift_allocObject();
    memcpy((v20 + 16), v27, 0x128uLL);
    sub_1BD0DE204(v7, v11, &qword_1EBD52088);
    v21 = &v11[*(v8 + 36)];
    *v21 = sub_1BD752D78;
    v21[1] = v20;
    v21[2] = 0;
    v21[3] = 0;
    sub_1BD394D3C(a1, v27);
    v22 = swift_allocObject();
    memcpy((v22 + 16), v27, 0x128uLL);
    sub_1BD0DE204(v11, v16, &qword_1EBD52090);
    v23 = &v16[*(v12 + 36)];
    *v23 = 0;
    v23[1] = 0;
    v23[2] = sub_1BD752D80;
    v23[3] = v22;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F10);
    sub_1BE04CA34();
    sub_1BD394D3C(a1, v27);
    v25 = swift_allocObject();
    memcpy((v25 + 16), v27, 0x128uLL);
    result = sub_1BD0DE204(v16, a2, &qword_1EBD52098);
    v26 = (a2 + *(v24 + 56));
    *v26 = sub_1BD752D88;
    v26[1] = v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD74B368()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v12 - v2;
  v4 = type metadata accessor for Passes(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD742A2C(type metadata accessor for AMPAuthorizationModel);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1BD0DE53C(v3, &unk_1EBD43B40);
  }

  sub_1BD753654(v3, v8, type metadata accessor for Passes);
  type metadata accessor for BankConnectInterface();
  sub_1BD751B3C(&qword_1EBD3F258, type metadata accessor for BankConnectInterface);
  sub_1BE04E3C4();
  v10 = sub_1BE048C84();
  v11 = sub_1BD537108(v10);

  sub_1BD8FD0E0(v11, v8);

  return sub_1BD7536BC(v8, type metadata accessor for Passes);
}

void sub_1BD74B5E8()
{
  sub_1BD742DF8(type metadata accessor for AMPAuthorizationModel, sub_1BD748598);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v9[4] = v6;
  v9[5] = v7;
  v9[6] = v8;
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  sub_1BE048C84();
  sub_1BD146D0C(v9);
  if (*(&v2 + 1))
  {
    v0 = *MEMORY[0x1E69DD888];
    v1 = sub_1BE052404();

    UIAccessibilityPostNotification(v0, v1);
  }
}

uint64_t sub_1BD74B6FC(uint64_t a1)
{
  v2 = sub_1BE04CA04();
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (result != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B80);
    return sub_1BE0516B4();
  }

  return result;
}

uint64_t sub_1BD74B7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FB0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FB8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v37 - v10;
  sub_1BD74BD48(v44);
  v50 = v44[4];
  v51 = v44[5];
  v52 = v45;
  v46 = v44[0];
  v47 = v44[1];
  v48 = v44[2];
  v49 = v44[3];
  sub_1BD74C05C(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51FC0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  sub_1BD0DE19C(a1 + 56, v42, &qword_1EBD3D498);
  v13 = v42[3];
  v38 = v11;
  if (v42[3])
  {
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    v13 = sub_1BE04C7F4();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_0(v42);
  }

  else
  {
    sub_1BD0DE53C(v42, &qword_1EBD3D498);
    v15 = 0;
  }

  sub_1BD74C378(v13, v15, v7);
  sub_1BD0D4744(v13);
  v16 = *(a1 + 24);
  v17 = *(a1 + 48);
  v43[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51FD0);
  v43[4] = sub_1BD0DE4F4(qword_1EBD35F78, &unk_1EBD51FD0);
  v43[0] = v17;
  sub_1BD394D3C(a1, v42);
  v18 = swift_allocObject();
  memcpy((v18 + 16), v42, 0x128uLL);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51FE0);
  v20 = (a2 + v19[26]);
  sub_1BD0E5E8C(0, &qword_1EBD35E30);
  sub_1BD0EE33C();
  sub_1BE048964();
  v21 = v17;
  v22 = v7;
  *v20 = sub_1BE04EEC4();
  v20[1] = v23;
  v24 = (a2 + v19[27]);
  sub_1BE04CDA4();
  sub_1BD751B3C(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  *v24 = sub_1BE04EEC4();
  v24[1] = v25;
  v26 = a2 + v19[28];
  LOBYTE(v41[0]) = 0;
  sub_1BE051694();
  v27 = v42[1];
  *v26 = v42[0];
  *(v26 + 8) = v27;
  v28 = a2 + v19[29];
  *v28 = swift_getKeyPath();
  *(v28 + 8) = 0;
  v29 = v47;
  *a2 = v46;
  *(a2 + 16) = v29;
  *(a2 + 96) = v52;
  v30 = v51;
  *(a2 + 64) = v50;
  *(a2 + 80) = v30;
  v31 = v49;
  *(a2 + 32) = v48;
  *(a2 + 48) = v31;
  v32 = v38;
  sub_1BD0DE19C(v38, a2 + v19[17], &qword_1EBD51FB8);
  sub_1BD0DE19C(v22, a2 + v19[18], &qword_1EBD51FB0);
  *(a2 + v19[19]) = 0;
  *(a2 + v19[20]) = 1;
  *(a2 + v19[21]) = v16;
  sub_1BD0EE8CC(v43, a2 + v19[22]);
  *(a2 + v19[23]) = 1;
  v33 = (a2 + v19[25]);
  *v33 = sub_1BD753CBC;
  v33[1] = v18;
  sub_1BD0EE8CC(v43, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF0);
  if (swift_dynamicCast())
  {
    sub_1BD043990(v39, v42);
    v34 = v42[3];
    v35 = v42[4];
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    (*(v35 + 56))(v41, v34, v35);
    sub_1BD0DE53C(v22, &qword_1EBD51FB0);
    sub_1BD0DE53C(v32, &qword_1EBD51FB8);
    __swift_destroy_boxed_opaque_existential_0(v43);
    *(a2 + v19[24]) = v41[0];
    return __swift_destroy_boxed_opaque_existential_0(v42);
  }

  else
  {
    sub_1BD0DE53C(v22, &qword_1EBD51FB0);
    sub_1BD0DE53C(v32, &qword_1EBD51FB8);
    __swift_destroy_boxed_opaque_existential_0(v43);
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    result = sub_1BD0DE53C(v39, &qword_1EBD389A0);
    *(a2 + v19[24]) = 2;
  }

  return result;
}

double sub_1BD74BD48@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23 - v6;
  sub_1BE04CB14();
  v8 = sub_1BE04CB04();
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8);
  sub_1BD0DE53C(v7, &unk_1EBD52000);
  sub_1BD394D3C(v2, v25);
  v10 = swift_allocObject();
  memcpy((v10 + 16), v25, 0x128uLL);
  if (v9 == 1)
  {
    v11 = sub_1BD753CBC;
  }

  else
  {
    v11 = sub_1BD752BCC;
  }

  v24 = v11;
  v12 = sub_1BE04C8C4();
  v14 = v13;
  v15 = sub_1BE04CAE4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v25[0])
  {
    v16 = 0;
  }

  else
  {
    sub_1BD0DE19C(v2 + 56, v25, &qword_1EBD3D498);
    v16 = v25[3];
    if (v25[3])
    {
      __swift_project_boxed_opaque_existential_1(v25, v25[3]);
      v16 = sub_1BE04C824();
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_0(v25);
      if (v16)
      {
        v19 = swift_allocObject();
        *(v19 + 16) = v16;
        *(v19 + 24) = v18;
        v16 = sub_1BD752BC4;
        goto LABEL_11;
      }
    }

    else
    {
      sub_1BD0DE53C(v25, &qword_1EBD3D498);
    }
  }

  v19 = 0;
LABEL_11:
  v20 = sub_1BE051C54();
  v21 = 18.0;
  if (v20)
  {
    v21 = 10.0;
  }

  *a1 = v12;
  *(a1 + 8) = v14;
  strcpy((a1 + 16), "ApplePayLogo");
  *(a1 + 29) = 0;
  *(a1 + 30) = -5120;
  *(a1 + 32) = v24;
  *(a1 + 40) = v10;
  *(a1 + 48) = v15 & 1;
  *(a1 + 56) = v16;
  *(a1 + 64) = v19;
  *(a1 + 72) = 0x4032000000000000;
  *(a1 + 80) = v21;
  result = 68.0;
  *(a1 + 88) = xmmword_1BE0B7110;
  return result;
}

uint64_t sub_1BD74C05C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04E8A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25[-1] - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52070);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v25[-1] - v15;
  sub_1BD0DE19C(v1 + 56, v25, &qword_1EBD3D498);
  if (v26)
  {
    v24 = a1;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v17 = sub_1BE04C804();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_0(v25);
    if (v17)
    {
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      *(v20 + 24) = v19;
      sub_1BE048964();
      sub_1BE04C664();
      sub_1BE04E894();
      (*(v4 + 16))(v7, v11, v3);
      sub_1BD751B3C(&unk_1EBD36878, MEMORY[0x1E697E410]);
      v21 = sub_1BE04E644();
      sub_1BD0D4744(v17);
      (*(v4 + 8))(v11, v3);
      *&v16[*(v12 + 36)] = v21;
      a1 = v24;
      sub_1BD0DE204(v16, v24, &unk_1EBD52070);
      v22 = 0;
    }

    else
    {
      v22 = 1;
      a1 = v24;
    }
  }

  else
  {
    sub_1BD0DE53C(v25, &qword_1EBD3D498);
    v22 = 1;
  }

  return (*(v13 + 56))(a1, v22, 1, v12);
}

uint64_t sub_1BD74C378@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v34 = a1;
  v35 = a2;
  v6 = sub_1BE04E8A4();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v37 = &v33 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v33 - v19;
  sub_1BE04CB14();
  v21 = sub_1BE04CB04();
  v22 = 1;
  v23 = (*(*(v21 - 8) + 48))(v20, 1, v21);
  sub_1BD0DE53C(v20, &unk_1EBD52000);
  v24 = v23 == 1;
  v25 = a3;
  if (v24)
  {
    v26 = *(v4 + 288);
    v41 = *(v4 + 280);
    v42 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516A4();
    if (v40)
    {
      v22 = 1;
    }

    else
    {
      *v16 = sub_1BE04F7B4();
      *(v16 + 1) = 0;
      v16[16] = 0;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52010);
      sub_1BD750A24(v4, v34, v35, &v16[*(v27 + 44)]);
      v28 = v37;
      sub_1BE04E894();
      v30 = v38;
      v29 = v39;
      (*(v38 + 16))(v36, v28, v39);
      sub_1BD751B3C(&unk_1EBD36878, MEMORY[0x1E697E410]);
      v31 = sub_1BE04E644();
      (*(v30 + 8))(v28, v29);
      *&v16[*(v12 + 36)] = v31;
      sub_1BD0DE204(v16, v25, &qword_1EBD51FF8);
      v22 = 0;
    }
  }

  return (*(v13 + 56))(v25, v22, 1, v12);
}

id sub_1BD74C6F8()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(*(v1 + 24) + qword_1EBDAADA8 + 32) paymentRequest];
  if (v8)
  {
    v9 = v8;
    sub_1BD6B50F8(1, v8);
  }

  else
  {
    sub_1BE04D084();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C34();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v10, v11, "paymentRequest was nil when trying to call trackButtonTag for dismiss.", v12, 2u);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
  }

  return sub_1BD7423CC(type metadata accessor for AMPAuthorizationModel);
}

uint64_t sub_1BD74C89C(uint64_t a1)
{
  sub_1BD0DE19C(a1, &v3, &qword_1EBD51EC0);
  if (v4)
  {
    sub_1BD043990(&v3, &v5);
    __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
    if (sub_1BE04C714())
    {
      sub_1BD0EE8CC(&v5, &v3);
      sub_1BD0DE19C(&v3, &v2, &qword_1EBD51EC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80);
      sub_1BE0516B4();
      sub_1BD0DE53C(&v3, &qword_1EBD51EC0);
      return __swift_destroy_boxed_opaque_existential_0(&v5);
    }

    __swift_destroy_boxed_opaque_existential_0(&v5);
  }

  else
  {
    sub_1BD0DE53C(&v3, &qword_1EBD51EC0);
  }

  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  sub_1BD0DE19C(&v5, &v3, &qword_1EBD51EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80);
  sub_1BE0516B4();
  return sub_1BD0DE53C(&v5, &qword_1EBD51EC0);
}

uint64_t sub_1BD74CA14()
{
  v0 = sub_1BE04C974();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v11 - v7;
  v9 = sub_1BE04CB04();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1BE04CB24();
  (*(v1 + 104))(v4, *MEMORY[0x1E69BCA70], v0);
  sub_1BD741B2C(v4);
  (*(v1 + 8))(v4, v0);
  sub_1BD741FBC();
  return sub_1BD74224C(sub_1BD748598);
}

uint64_t sub_1BD74CBC0@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520F0);
  MEMORY[0x1EEE9AC00](v63, v2);
  v56 = &v55 - v3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520C0);
  MEMORY[0x1EEE9AC00](v61, v4);
  v62 = &v55 - v5;
  v6 = sub_1BE04E8A4();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v55 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520E0);
  MEMORY[0x1EEE9AC00](v60, v13);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v55 - v18;
  v20 = sub_1BE04CB04();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v1;
  sub_1BE04CB14();
  v26 = v20;
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1BD0DE53C(v19, &unk_1EBD52000);
    sub_1BD394D3C(v25, v65);
    v27 = swift_allocObject();
    memcpy((v27 + 16), v65, 0x128uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52110);
    sub_1BD0DE4F4(&qword_1EBD52118, &qword_1EBD52110);
    v28 = v56;
    sub_1BE04C664();
    sub_1BE04E894();
    v30 = v57;
    v29 = v58;
    (*(v57 + 16))(v59, v12, v58);
    sub_1BD751B3C(&unk_1EBD36878, MEMORY[0x1E697E410]);
    v31 = sub_1BE04E644();
    (*(v30 + 8))(v12, v29);
    v32 = v62;
    *(v28 + *(v63 + 36)) = v31;
    sub_1BD0DE19C(v28, v32, &qword_1EBD520F0);
    swift_storeEnumTagMultiPayload();
    sub_1BD7531A4(&qword_1EBD52120, &qword_1EBD520E0, &unk_1BE0F4F38, sub_1BD753174);
    sub_1BD7534B4();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v28, &qword_1EBD520F0);
  }

  else
  {
    v34 = v21;
    v35 = v24;
    v36 = v24;
    v37 = v26;
    (*(v21 + 32))(v36, v19, v26);
    sub_1BD74DCA4(v35);
    v38 = sub_1BE0501F4();
    sub_1BD74DFDC();
    sub_1BE04E1F4();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v47 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52140) + 36)];
    *v47 = v38;
    *(v47 + 1) = v40;
    *(v47 + 2) = v42;
    *(v47 + 3) = v44;
    *(v47 + 4) = v46;
    v47[40] = 0;
    *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52130) + 36)] = 256;
    sub_1BE04E894();
    v49 = v57;
    v48 = v58;
    (*(v57 + 16))(v59, v12, v58);
    sub_1BD751B3C(&unk_1EBD36878, MEMORY[0x1E697E410]);
    v50 = sub_1BE04E644();
    (*(v49 + 8))(v12, v48);
    *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520D0) + 36)] = v50;
    sub_1BD394D3C(v25, v65);
    v51 = swift_allocObject();
    memcpy((v51 + 16), v65, 0x128uLL);
    v52 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520D8) + 36)];
    *v52 = sub_1BD753598;
    v52[1] = v51;
    v52[2] = 0;
    v52[3] = 0;
    sub_1BD394D3C(v25, v65);
    v53 = swift_allocObject();
    memcpy((v53 + 16), v65, 0x128uLL);
    v54 = &v15[*(v60 + 36)];
    *v54 = 0;
    *(v54 + 1) = 0;
    *(v54 + 2) = sub_1BD753598;
    *(v54 + 3) = v53;
    sub_1BD0DE19C(v15, v62, &qword_1EBD520E0);
    swift_storeEnumTagMultiPayload();
    sub_1BD7531A4(&qword_1EBD52120, &qword_1EBD520E0, &unk_1BE0F4F38, sub_1BD753174);
    sub_1BD7534B4();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v15, &qword_1EBD520E0);
    return (*(v34 + 8))(v35, v37);
  }
}

uint64_t sub_1BD74D378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v20 = a2;
  v21 = a3;
  v22 = a1;
  v23 = a4;
  v4 = sub_1BE04ECA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F58);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v13 = &v20 - v12;
  sub_1BD0DE19C(v20, &v20 - v12, &qword_1EBD51F58);
  sub_1BD394D3C(v21, v24);
  (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v4);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (*(v5 + 80) + v15 + 296) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_1BD0DE204(v13, v17 + v14, &qword_1EBD51F58);
  memcpy((v17 + v15), v24, 0x128uLL);
  result = (*(v5 + 32))(v17 + v16, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v19 = v23;
  *v23 = sub_1BD752E6C;
  v19[1] = v17;
  return result;
}

uint64_t sub_1BD74D5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a4;
  v24 = a1;
  v25 = a5;
  v26 = a2;
  v6 = sub_1BE04E6A4();
  v22 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = sub_1BE04ECA4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v14 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD394D3C(a3, v27);
  (*(v11 + 16))(v14, v23, v10);
  (*(v7 + 16))(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v6);
  v15 = (*(v11 + 80) + 312) & ~*(v11 + 80);
  v16 = (v12 + *(v7 + 80) + v15) & ~*(v7 + 80);
  v17 = swift_allocObject();
  memcpy((v17 + 16), v27, 0x128uLL);
  (*(v11 + 32))(v17 + v15, v14, v10);
  (*(v7 + 32))(v17 + v16, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  v18 = v25;
  sub_1BD0DE19C(v26, v25, &qword_1EBD51F58);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520F8);
  v20 = (v18 + *(result + 36));
  *v20 = sub_1BD752F6C;
  v20[1] = v17;
  v20[2] = 0;
  v20[3] = 0;
  return result;
}

uint64_t sub_1BD74D80C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52100);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  type metadata accessor for ScrollViewManager();
  sub_1BD751B3C(&qword_1EBD52108, type metadata accessor for ScrollViewManager);
  v7 = sub_1BE04E3C4();
  v8 = sub_1BE04ECA4();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a2, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10 = OBJC_IVAR____TtC9PassKitUI17ScrollViewManager_proxy;
  swift_beginAccess();
  sub_1BD75303C(v6, v7 + v10);
  swift_endAccess();

  return sub_1BD74D9BC();
}

uint64_t sub_1BD74D9BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52100);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v19[-v4];
  v6 = sub_1BE04ECA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_1BE04E684();
  if (v13 < v12)
  {
    v14 = *(v0 + 288);
    v22[0] = *(v0 + 280);
    v23 = v14;
    v19[8] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516B4();
    type metadata accessor for ScrollViewManager();
    sub_1BD751B3C(&qword_1EBD52108, type metadata accessor for ScrollViewManager);
    v15 = sub_1BE04E3C4();
    v16 = *(v0 + 264);
    v17 = *(v1 + 272);
    sub_1BE051E74();
    sub_1BD394D3C(v1, v22);
    v20 = v16;
    v21 = v17;
    v18 = OBJC_IVAR____TtC9PassKitUI17ScrollViewManager_proxy;
    swift_beginAccess();
    sub_1BD0DE19C(v15 + v18, v5, &qword_1EBD52100);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_1BD0DE53C(v5, &qword_1EBD52100);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      sub_1BE04EC94();
      sub_1BD751380(v22);

      (*(v7 + 8))(v10, v6);
    }

    return sub_1BD7530AC(v22);
  }

  return result;
}

uint64_t sub_1BD74DCA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520C8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v18 - v4;
  v6 = sub_1BE04C864();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04CB04();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a1, v11, v14);
  if ((*(v12 + 88))(v16, v11) == *MEMORY[0x1E69BCAB8])
  {
    (*(v12 + 96))(v16, v11);
    (*(v7 + 32))(v10, v16, v6);
    (*(v7 + 16))(v5, v10, v6);
    swift_storeEnumTagMultiPayload();
    sub_1BD751B3C(&qword_1EBD36A20, MEMORY[0x1E69BC9A8]);
    sub_1BE04F9A4();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD751B3C(&qword_1EBD36A20, MEMORY[0x1E69BC9A8]);
    sub_1BE04F9A4();
    return (*(v12 + 8))(v16, v11);
  }
}

double sub_1BD74DFDC()
{
  v1 = sub_1BE04F3D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 208);
  if (*(v0 + 216) == 1)
  {
    result = 17.0;
    if (v6)
    {
      return result;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v8 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v6, 0);
    (*(v2 + 8))(v5, v1);
    result = 17.0;
    if (v11)
    {
      return result;
    }
  }

  type metadata accessor for KeyboardObserver();
  sub_1BD751B3C(&qword_1EBD36500, type metadata accessor for KeyboardObserver);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = v9 + 17.0;
  if (v10)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1BD74E208(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52100);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v28 - v4;
  v6 = sub_1BE04ECA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04F3D4();
  v29 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 32))
  {
    sub_1BE04CDA4();
    sub_1BD751B3C(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
    result = sub_1BE04EEB4();
    __break(1u);
    return result;
  }

  sub_1BE048964();
  v15 = sub_1BE04CD54();

  if (v15)
  {
    v17 = *(a1 + 208);
    if (*(a1 + 216) == 1)
    {
      if (v17)
      {
        return result;
      }
    }

    else
    {
      sub_1BE048964();
      sub_1BE052C44();
      v18 = sub_1BE050174();
      v28 = v5;
      v19 = v18;
      sub_1BE04CF84();

      v5 = v28;
      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0D4604(v17, 0);
      result = (*(v29 + 8))(v14, v11);
      if (v30)
      {
        return result;
      }
    }

    v20 = *(a1 + 224);
    if (*(a1 + 232) == 1)
    {
      if (v20)
      {
        return result;
      }
    }

    else
    {
      sub_1BE048964();
      sub_1BE052C44();
      v21 = sub_1BE050174();
      v28 = v5;
      v22 = v21;
      sub_1BE04CF84();

      v5 = v28;
      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0D4604(v20, 0);
      result = (*(v29 + 8))(v14, v11);
      if (v30)
      {
        return result;
      }
    }

    type metadata accessor for ScrollViewManager();
    sub_1BD751B3C(&qword_1EBD52108, type metadata accessor for ScrollViewManager);
    v23 = sub_1BE04E3C4();
    MEMORY[0x1BFB3EDF0](0.5, 1.0, 0.0);
    v24 = v5;
    v25 = OBJC_IVAR____TtC9PassKitUI17ScrollViewManager_proxy;
    swift_beginAccess();
    sub_1BD0DE19C(v23 + v25, v24, &qword_1EBD52100);
    if ((*(v7 + 48))(v24, 1, v6) == 1)
    {

      return sub_1BD0DE53C(v24, &qword_1EBD52100);
    }

    else
    {
      v26 = (*(v7 + 32))(v10, v24, v6);
      MEMORY[0x1EEE9AC00](v26, v27);
      *(&v28 - 2) = v10;
      swift_retain_n();
      sub_1BE04E7D4();

      return (*(v7 + 8))(v10, v6);
    }
  }

  return result;
}

uint64_t sub_1BD74E764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a2;
  v3 = sub_1BE04F3D4();
  v154 = *(v3 - 8);
  v155 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v153 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52170);
  v158 = *(v6 - 8);
  v159 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v149 = &v136 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41448);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v148 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v147 = &v136 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v141 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v151 = &v136 - v20;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F1C8);
  MEMORY[0x1EEE9AC00](v140, v21);
  v142 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v145 = &v136 - v25;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52180);
  MEMORY[0x1EEE9AC00](v144, v26);
  v146 = &v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v143 = &v136 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v152 = &v136 - v33;
  v34 = type metadata accessor for Passes(0);
  v156 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v35);
  v150 = &v136 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v139 = &v136 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v136 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v47 = &v136 - v46;
  v157 = type metadata accessor for AvailablePass(0);
  v48 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157, v49);
  v51 = &v136 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v136 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52188);
  MEMORY[0x1EEE9AC00](v56 - 8, v57);
  v161 = &v136 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59, v60);
  v160 = &v136 - v61;
  v163 = a1;
  v62 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v63 = v156;

  v64 = *(v63 + 48);
  if (v64(v43, 1, v34))
  {
    sub_1BD0DE53C(v43, &unk_1EBD43B40);
    (*(v48 + 56))(v47, 1, 1, v157);
LABEL_4:
    sub_1BD0DE53C(v47, &qword_1EBD520A0);
    v66 = v160;
    (*(v158 + 56))(v160, 1, 1, v159);
    v67 = v163;
    goto LABEL_5;
  }

  v137 = v51;
  v138 = v62;
  v156 = v55;
  v65 = v150;
  sub_1BD7535C8(v43, v150, type metadata accessor for Passes);
  sub_1BD0DE53C(v43, &unk_1EBD43B40);
  sub_1BD0DE19C(v65, v47, &qword_1EBD520A0);
  sub_1BD7536BC(v65, type metadata accessor for Passes);
  if ((*(v48 + 48))(v47, 1, v157) == 1)
  {
    goto LABEL_4;
  }

  v86 = v156;
  sub_1BD753654(v47, v156, type metadata accessor for AvailablePass);
  sub_1BD7535C8(v86, v137, type metadata accessor for AvailablePass);
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v138;
  v88 = v139;
  sub_1BE04D8B4();

  if (v64(v88, 1, v34))
  {
    sub_1BD0DE53C(v88, &unk_1EBD43B40);
    v89 = 0;
  }

  else
  {
    sub_1BD7535C8(v88, v65, type metadata accessor for Passes);
    sub_1BD0DE53C(v88, &unk_1EBD43B40);
    v89 = *(v65 + *(v34 + 20));
    v97 = v89;
    sub_1BD7536BC(v65, type metadata accessor for Passes);
  }

  v98 = v151;
  v99 = v140;
  v100 = type metadata accessor for PeerPaymentModel();
  v150 = *(v100 - 8);
  (*(v150 + 56))(v98, 1, 1, v100);
  sub_1BE04C8E4();
  v101 = 0;
  v102 = 0;
  v157 = qword_1EBDAAD80;
  if ((*(v87 + qword_1EBDAAD80) & 1) == 0)
  {
    sub_1BD394D3C(v163, v164);
    v102 = swift_allocObject();
    memcpy((v102 + 16), v164, 0x128uLL);
    v101 = sub_1BD753630;
    if (PKOslo2024UIUpdatesEnabled())
    {

      v101 = 0;
      v102 = 0;
    }
  }

  v103 = v142;
  v140 = v99[16];
  v142[v140] = 0;
  v104 = v99[17];
  *(v103 + v104) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
  swift_storeEnumTagMultiPayload();
  v105 = sub_1BE051C54();
  v106 = 40.0;
  if (v105)
  {
    v106 = 36.0;
  }

  *(v103 + v99[18]) = v106;
  v107 = v99[19];
  *(v103 + v107) = (sub_1BE051C54() & 1) == 0;
  sub_1BD753654(v137, v103, type metadata accessor for AvailablePass);
  *(v103 + v99[9]) = v89;
  v108 = v151;
  sub_1BD0DE19C(v151, v103 + v99[10], &qword_1EBD45480);
  v109 = (v103 + v99[11]);
  v109[3] = 0u;
  v109[4] = 0u;
  v109[1] = 0u;
  v109[2] = 0u;
  *v109 = 0u;
  *(v103 + v99[12]) = 1;
  v110 = v103 + v99[13];
  v111 = v173;
  *v110 = v172;
  *(v110 + 16) = v111;
  *(v110 + 32) = v174;
  v112 = (v103 + v99[14]);
  *v112 = v101;
  v112[1] = v102;
  v113 = (v103 + v99[15]);
  *v113 = 0;
  v113[1] = 0;
  v114 = v141;
  sub_1BD0DE204(v108, v141, &qword_1EBD45480);
  if ((*(v150 + 48))(v114, 1, v100) == 1)
  {
    sub_1BD0DE53C(v114, &qword_1EBD45480);
    v67 = v163;
    v115 = v145;
    v116 = v138;
  }

  else
  {
    v117 = (v114 + *(v100 + 24));
    v118 = v117[3];
    v164[2] = v117[2];
    v164[3] = v118;
    v119 = v117[5];
    v164[4] = v117[4];
    v164[5] = v119;
    v120 = v117[1];
    v164[0] = *v117;
    v164[1] = v120;
    sub_1BD0DE19C(v164, &v179, &unk_1EBD521D0);
    sub_1BD7536BC(v114, type metadata accessor for PeerPaymentModel);
    v67 = v163;
    v115 = v145;
    v116 = v138;
    if (*&v164[0] != 1)
    {
      v121 = *(&v164[1] + 1);
      v122 = v164[5];
      sub_1BD0DE53C(v164, &unk_1EBD521D0);
      if (v121 || (v122 & 1) != 0)
      {
        *(v103 + v140) = 1;
      }
    }
  }

  sub_1BD0DE204(v103, v115, &qword_1EBD3F1C8);
  v123 = sub_1BE04CAE4();
  KeyPath = swift_getKeyPath();
  v125 = swift_allocObject();
  *(v125 + 16) = v123 & 1;
  v126 = v143;
  sub_1BD0DE204(v115, v143, &qword_1EBD3F1C8);
  v127 = (v126 + *(v144 + 36));
  *v127 = KeyPath;
  v127[1] = sub_1BD10DF54;
  v127[2] = v125;
  v128 = v152;
  sub_1BD0DE204(v126, v152, &qword_1EBD52180);
  v66 = v160;
  if (*(v116 + v157))
  {
    v129 = 0;
    v130 = 0;
  }

  else
  {
    sub_1BD394D3C(v67, v164);
    v130 = swift_allocObject();
    memcpy((v130 + 16), v164, 0x128uLL);
    v129 = sub_1BD753CC0;
  }

  v131 = v147;
  v132 = v148;
  v133 = v146;
  sub_1BD74F994(v129, v130, v147);
  sub_1BD0D4744(v129);
  sub_1BD0DE19C(v128, v133, &qword_1EBD52180);
  sub_1BD0DE19C(v131, v132, &qword_1EBD41448);
  v134 = v149;
  sub_1BD0DE19C(v133, v149, &qword_1EBD52180);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C8);
  sub_1BD0DE19C(v132, v134 + *(v135 + 48), &qword_1EBD41448);
  sub_1BD0DE53C(v131, &qword_1EBD41448);
  sub_1BD0DE53C(v152, &qword_1EBD52180);
  sub_1BD7536BC(v156, type metadata accessor for AvailablePass);
  sub_1BD0DE53C(v132, &qword_1EBD41448);
  sub_1BD0DE53C(v133, &qword_1EBD52180);
  sub_1BD0DE204(v134, v66, &unk_1EBD52170);
  (*(v158 + 56))(v66, 0, 1, v159);
LABEL_5:
  v68 = *(v67 + 208);
  if (*(v67 + 216) == 1)
  {
    v184 = v68 & 1;
    if (v68)
    {
LABEL_13:
      sub_1BD0DE19C(v67 + 56, &v172, &qword_1EBD3D498);
      if (*(&v173 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v172, *(&v173 + 1));
        v83 = sub_1BE04C834();
        if (v83)
        {
          v84 = v83;
          v85 = v83();
          sub_1BD0D4744(v84);
          __swift_destroy_boxed_opaque_existential_0(&v172);
LABEL_21:
          LOBYTE(v165) = 1;
          *&v179 = v85;
          v183 = 1;
          goto LABEL_22;
        }

        __swift_destroy_boxed_opaque_existential_0(&v172);
      }

      else
      {
        sub_1BD0DE53C(&v172, &qword_1EBD3D498);
      }

      v85 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v69 = sub_1BE050174();
    sub_1BE04CF84();

    v70 = v153;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v68, 0);
    (*(v154 + 8))(v70, v155);
    if (v184)
    {
      goto LABEL_13;
    }
  }

  v71 = *(v67 + 224);
  if (*(v67 + 232) == 1)
  {
    if (v71)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v81 = sub_1BE050174();
    sub_1BE04CF84();

    v82 = v153;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v71, 0);
    (*(v154 + 8))(v82, v155);
    if (v179)
    {
      goto LABEL_13;
    }
  }

  v72 = sub_1BE04F7B4();
  LOBYTE(v172) = 1;
  sub_1BD7508E8(v67, &v179);
  v73 = v179;
  v74 = BYTE8(v179);
  v75 = v181[16];
  v76 = v180;
  v77 = *v181;
  LOBYTE(v179) = v181[16];
  v78 = v172;
  v80 = *(v67 + 264);
  v79 = *(v67 + 272);
  LOBYTE(v172) = 0;
  v179 = v72;
  LOBYTE(v180) = v78;
  *(&v180 + 1) = v73;
  v181[0] = v74;
  *&v181[8] = v76;
  *&v181[24] = v77;
  v181[40] = v75;
  *&v182 = v80;
  *(&v182 + 1) = v79;
  v183 = 0;
  sub_1BE048C84();
LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD40);
  sub_1BD0DE4F4(&unk_1EBD521A0, &unk_1EBD52190);
  sub_1BD2169EC();
  sub_1BE04F9A4();
  v90 = v161;
  sub_1BD0DE19C(v66, v161, &qword_1EBD52188);
  v169 = v164[4];
  v170 = v164[5];
  v171 = v164[6];
  v165 = v164[0];
  v166 = v164[1];
  v167 = v164[2];
  v168 = v164[3];
  v91 = v162;
  sub_1BD0DE19C(v90, v162, &qword_1EBD52188);
  v92 = v91 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521B0) + 48);
  v176 = v169;
  v177 = v170;
  v178 = v171;
  v172 = v165;
  v173 = v166;
  v174 = v167;
  v175 = v168;
  sub_1BD0DE19C(&v172, &v179, &qword_1EBD521B8);
  sub_1BD0DE53C(v66, &qword_1EBD52188);
  v93 = v177;
  *(v92 + 64) = v176;
  *(v92 + 80) = v93;
  *(v92 + 96) = v178;
  v94 = v173;
  *v92 = v172;
  *(v92 + 16) = v94;
  v95 = v175;
  *(v92 + 32) = v174;
  *(v92 + 48) = v95;
  v179 = v165;
  v180 = v166;
  v183 = v171;
  *&v181[32] = v169;
  v182 = v170;
  *v181 = v167;
  *&v181[16] = v168;
  sub_1BD0DE53C(&v179, &qword_1EBD521B8);
  return sub_1BD0DE53C(v90, &qword_1EBD52188);
}

uint64_t sub_1BD74F994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v114 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v113 = &v110 - v12;
  v129 = sub_1BE04FB64();
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v13);
  v127 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v115 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v123 = &v110 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v110 - v23;
  v134 = type metadata accessor for Passes(0);
  v122 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v25);
  v116 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v110 - v29;
  v132 = type metadata accessor for SheetButton();
  MEMORY[0x1EEE9AC00](v132, v31);
  v33 = &v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v124 = &v110 - v36;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD521E0);
  MEMORY[0x1EEE9AC00](v125, v37);
  v126 = &v110 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v42 = &v110 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v130 = &v110 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v110 - v48;
  MEMORY[0x1EEE9AC00](v50, v51);
  v131 = &v110 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v110 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F3D0);
  MEMORY[0x1EEE9AC00](v57, v58);
  v133 = &v110 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65.n128_f64[0] = MEMORY[0x1EEE9AC00](v60, v61);
  if (a1)
  {
    v117 = &v110 - v64;
    v118 = v63;
    v119 = v62;
    v120 = a1;
    v121 = a3;
    v112 = *(*(v3 + 8) + qword_1EBDAAED0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4();

    sub_1BE04C8E4();
    if (!PKOslo2024UIUpdatesEnabled())
    {
      sub_1BD0D4744(v120);
      v74 = 1;
      v75 = v133;
      v76 = v56;
LABEL_36:
      sub_1BD0DE53C(v139, &qword_1EBD51EC0);
      sub_1BD0DE53C(v76, &unk_1EBD43B40);
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD521F0);
      (*(*(v102 - 8) + 56))(v75, v74, 1, v102);
      v103 = v117;
      sub_1BD0DE204(v75, v117, &qword_1EBD3F3D0);
      v104 = v103;
      v105 = v121;
      sub_1BD0DE204(v104, v121, &qword_1EBD3F3D0);
      return (*(v118 + 56))(v105, 0, 1, v119);
    }

    v111 = a2;
    v110 = v56;
    v66 = v56;
    v67 = v131;
    sub_1BD0DE19C(v66, v131, &unk_1EBD43B40);
    sub_1BD0DE19C(v139, v138, &qword_1EBD51EC0);
    v68 = *(v132 + 40);
    *&v33[v68] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE19C(v67, v49, &unk_1EBD43B40);
    v69 = *(v122 + 48);
    v70 = v134;
    if (v69(v49, 1, v134) == 1)
    {
      sub_1BD0DE53C(v49, &unk_1EBD43B40);
      v71 = v123;
    }

    else
    {
      sub_1BD753654(v49, v30, type metadata accessor for Passes);
      v71 = v123;
      if (v30[*(v70 + 24)])
      {
        sub_1BD0DE19C(v30, v24, &qword_1EBD520A0);
        v77 = type metadata accessor for AvailablePass(0);
        v78 = (*(*(v77 - 8) + 48))(v24, 1, v77);
        v70 = v134;
        sub_1BD0DE53C(v24, &qword_1EBD520A0);
        if (v78 == 1 && !*(*&v30[*(v70 + 28)] + 16))
        {
          v79 = v114;
          sub_1BD4941F8(v114);
          sub_1BD0DE53C(v79, &qword_1EBD3C3F8);
        }
      }

      sub_1BD7536BC(v30, type metadata accessor for Passes);
    }

    sub_1BD0DE19C(v138, &v135, &qword_1EBD51EC0);
    v75 = v133;
    v80 = v131;
    if (v136)
    {
      sub_1BD043990(&v135, v137);
      __swift_project_boxed_opaque_existential_1(v137, v137[3]);
      v70 = v134;
      v81 = sub_1BE04C704();
      __swift_destroy_boxed_opaque_existential_0(v137);
      v82 = v130;
      if (v81)
      {
        v83 = 5;
LABEL_29:
        *v33 = v83;
        sub_1BD0DE19C(v80, v82, &unk_1EBD43B40);
        if (v69(v82, 1, v70) == 1)
        {
          sub_1BD0DE53C(v138, &qword_1EBD51EC0);
          sub_1BD0DE53C(v80, &unk_1EBD43B40);
          sub_1BD0DE53C(v82, &unk_1EBD43B40);
          v90 = 0;
          v91 = 0;
          v92 = v111;
          v93 = v120;
          v76 = v110;
        }

        else
        {
          sub_1BD0DE19C(v82, v71, &qword_1EBD520A0);
          sub_1BD7536BC(v82, type metadata accessor for Passes);
          v94 = type metadata accessor for AvailablePass(0);
          v95 = (*(*(v94 - 8) + 48))(v71, 1, v94);
          v92 = v111;
          v76 = v110;
          if (v95 == 1)
          {
            sub_1BD0DE53C(v138, &qword_1EBD51EC0);
            sub_1BD0DE53C(v80, &unk_1EBD43B40);
            sub_1BD0DE53C(v71, &qword_1EBD520A0);
            v90 = 0;
            v91 = 0;
          }

          else
          {
            v90 = sub_1BD49C81C(v95);
            v91 = v96;
            sub_1BD0DE53C(v138, &qword_1EBD51EC0);
            sub_1BD0DE53C(v80, &unk_1EBD43B40);
            sub_1BD7536BC(v71, type metadata accessor for AvailablePass);
          }

          v93 = v120;
        }

        *(v33 + 4) = v90;
        *(v33 + 5) = v91;
        v33[24] = 0;
        *(v33 + 6) = 0;
        *(v33 + 1) = v93;
        *(v33 + 2) = v92;
        v33[56] = 0;
        v97 = v33;
        v98 = v124;
        sub_1BD753654(v97, v124, type metadata accessor for SheetButton);
        sub_1BE052434();
        sub_1BD751B3C(&unk_1EBD52200, type metadata accessor for SheetButton);
        sub_1BE048964();
        v99 = v126;
        sub_1BE050DE4();

        sub_1BD7536BC(v98, type metadata accessor for SheetButton);
        v100 = v127;
        sub_1BE04FB54();
        sub_1BD25A9C8();
        sub_1BD751B3C(&qword_1EBD3F3E0, MEMORY[0x1E697C720]);
        v101 = v129;
        sub_1BE050894();
        sub_1BD0D4744(v93);
        (*(v128 + 8))(v100, v101);
        sub_1BD0DE53C(v99, &unk_1EBD521E0);
        v74 = 0;
        goto LABEL_36;
      }
    }

    else
    {
      sub_1BD0DE53C(&v135, &qword_1EBD51EC0);
      v82 = v130;
    }

    sub_1BD0DE19C(v80, v42, &unk_1EBD43B40);
    if (v69(v42, 1, v70) == 1)
    {
      sub_1BD0DE53C(v42, &unk_1EBD43B40);
    }

    else
    {
      v84 = v42;
      v85 = v116;
      sub_1BD753654(v84, v116, type metadata accessor for Passes);
      if ((*(v85 + *(v70 + 24)) & 1) != 0 && (v86 = v115, sub_1BD0DE19C(v116, v115, &qword_1EBD520A0), v87 = type metadata accessor for AvailablePass(0), v88 = (*(*(v87 - 8) + 48))(v86, 1, v87), sub_1BD0DE53C(v86, &qword_1EBD520A0), v85 = v116, v89 = v88 == 1, v70 = v134, v89) && !*(*(v116 + *(v134 + 28)) + 16))
      {
        v106 = v113;
        sub_1BD4941F8(v113);
        v107 = type metadata accessor for UnavailablePass(0);
        v108 = (*(*(v107 - 8) + 48))(v106, 1, v107);
        v109 = v106;
        v82 = v130;
        sub_1BD0DE53C(v109, &qword_1EBD3C3F8);
        sub_1BD7536BC(v116, type metadata accessor for Passes);
        if (v108 != 1)
        {
          v83 = 4;
          goto LABEL_29;
        }
      }

      else
      {
        sub_1BD7536BC(v85, type metadata accessor for Passes);
      }
    }

    v83 = v112;
    if (v112 != 2)
    {
      if (v112 == 13)
      {
        v83 = 7;
      }

      else
      {
        v83 = 0;
      }
    }

    goto LABEL_29;
  }

  v72 = *(v63 + 56);

  return v72(a3, 1, 1, v65);
}

uint64_t sub_1BD7508E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD0DE19C(a1 + 56, v15, &qword_1EBD3D498);
  v4 = v16;
  if (v16)
  {
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v5 = sub_1BE04C834();
    if (v5)
    {
      v6 = v5;
      v4 = v5();
      sub_1BD0D4744(v6);
      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v15);
      v4 = 0;
    }
  }

  else
  {
    sub_1BD0DE53C(v15, &qword_1EBD3D498);
  }

  v7 = sub_1BE0501F4();
  v8 = *(a1 + 288);
  LOBYTE(v15[0]) = *(a1 + 280);
  v15[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v14 == 1)
  {
    sub_1BE04C7C4();
  }

  result = sub_1BE04E1F4();
  *a2 = v4;
  *(a2 + 8) = v7;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_1BD750A24@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v62 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52020);
  v69 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v66 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52028);
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v61 = (&v58 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52030);
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A48);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v58 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52040);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v68 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v67 = &v58 - v28;
  KeyPath = a1;
  if (sub_1BE04C8A4())
  {
    v58 = v6;
    v59 = a4;
    if (v62)
    {
      v62 = v62();
      sub_1BE048964();
      sub_1BE051C64();
      v29 = MEMORY[0x1E6981CD0];
      v30 = MEMORY[0x1E6981CD8];
      sub_1BE04F694();
      v73[0] = v30;
      v73[1] = v29;
      swift_getOpaqueTypeConformance2();
      sub_1BD0EEEE0();
      sub_1BE051C84();
      v31 = *(v15 + 16);
      v31(v18, v22, v14);
      v32 = v61;
      *v61 = v62;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52058);
      v31((v32 + *(v33 + 48)), v18, v14);
      v34 = *(v15 + 8);
      v34(v22, v14);
      v34(v18, v14);

      v35 = v67;
      sub_1BD0DE204(v32, v67, &qword_1EBD52028);
      (*(v63 + 56))(v35, 0, 1, v64);
    }

    else
    {
      v35 = v67;
      (*(v63 + 56))(v67, 1, 1, v64);
    }

    sub_1BD394D3C(KeyPath, v73);
    v64 = swift_allocObject();
    memcpy((v64 + 16), v73, 0x128uLL);
    LOBYTE(v74) = 0;
    KeyPath = swift_getKeyPath();
    v71 = 0;
    sub_1BE04CDA4();
    sub_1BD751B3C(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
    sub_1BE048964();
    v38 = sub_1BE04EEC4();
    v62 = v38;
    v63 = v39;
    type metadata accessor for AuthenticatorModel();
    sub_1BD751B3C(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
    v40 = sub_1BE04E954();
    v42 = v41;
    v43 = v74;
    v44 = v71;
    LODWORD(v61) = v71;
    v45 = v35;
    v46 = v68;
    sub_1BD0DE19C(v45, v68, &qword_1EBD52040);
    v47 = v46;
    v48 = v66;
    sub_1BD0DE19C(v47, v66, &qword_1EBD52040);
    v49 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52048) + 48));
    *&v74 = v40;
    *(&v74 + 1) = v42;
    v75 = sub_1BD31FF5C;
    v76 = 0;
    LOBYTE(v77) = v43;
    *(&v77 + 1) = *v72;
    DWORD1(v77) = *&v72[3];
    *(&v77 + 1) = KeyPath;
    LOBYTE(v78) = v44;
    *(&v78 + 1) = *v70;
    DWORD1(v78) = *&v70[3];
    v50 = v63;
    *(&v78 + 1) = v38;
    *&v79 = v63;
    v51 = v64;
    *(&v79 + 1) = sub_1BD752BBC;
    v80 = v64;
    *&v81 = 0;
    *(&v81 + 1) = 0x4014000000000000;
    *v49 = v74;
    v49[1] = sub_1BD31FF5C;
    v52 = v77;
    v53 = v78;
    v54 = v81;
    v49[5] = v80;
    v49[6] = v54;
    v55 = v79;
    v49[3] = v53;
    v49[4] = v55;
    v49[2] = v52;
    sub_1BD0EEF94(&v74, v73);
    sub_1BD0DE53C(v67, &qword_1EBD52040);
    v73[0] = v40;
    v73[1] = v42;
    v73[2] = sub_1BD31FF5C;
    v73[3] = 0;
    LOBYTE(v73[4]) = v43;
    *(&v73[4] + 1) = *v72;
    HIDWORD(v73[4]) = *&v72[3];
    v73[5] = KeyPath;
    LOBYTE(v73[6]) = v61;
    *(&v73[6] + 1) = *v70;
    HIDWORD(v73[6]) = *&v70[3];
    v73[7] = v62;
    v73[8] = v50;
    v73[9] = sub_1BD752BBC;
    v73[10] = v51;
    v73[11] = 0;
    v73[12] = 0;
    v73[13] = 0x4014000000000000;
    sub_1BD0EEFF0(v73);
    sub_1BD0DE53C(v68, &qword_1EBD52040);
    v56 = v48;
    v57 = v59;
    sub_1BD0DE204(v56, v59, &qword_1EBD52020);
    return (*(v69 + 56))(v57, 0, 1, v58);
  }

  else
  {
    v36 = *(v69 + 56);

    return v36(a4, 1, 1, v6);
  }
}

void sub_1BD7511CC(uint64_t a1)
{
  v2 = sub_1BE04C974();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 48);
  (*(v3 + 104))(v7, *MEMORY[0x1E69BCA60], v2, v5);
  sub_1BD741B2C(v7);
  (*(v3 + 8))(v7, v2);
  v9 = MEMORY[0x1E69E7D40];
  sub_1BD7F2C38();
  v10 = *(v8 + *((*v9 & *v8) + 0xD0));
  v11 = [v10 paymentRequest];
  if (v11)
  {
    v12 = v11;
    if ([v11 _isAMPPayment])
    {
      v13 = [v10 mode];

      if (v13 == 1)
      {
        [v10 fallbackToBypassMode];
      }
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD751380(uint64_t a1)
{
  v2 = sub_1BE051F54();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v29 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FC4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v26 - v16;
  if (*(a1 + 32))
  {
    sub_1BE048964();
    sub_1BE04CD44();
    v19 = v18;

    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v27 = sub_1BE052D54();
    sub_1BE051FB4();
    sub_1BE051FF4();
    v28 = *(v10 + 8);
    v28(v13, v9);
    sub_1BD394D3C(a1, v35);
    v20 = swift_allocObject();
    memcpy((v20 + 16), v35, 0x128uLL);
    *(v20 + 312) = v19;
    v34[4] = sub_1BD7530DC;
    v34[5] = v20;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 1107296256;
    v34[2] = sub_1BD126964;
    v34[3] = &block_descriptor_138_0;
    v21 = _Block_copy(v34);

    sub_1BE051F74();
    v35[0] = MEMORY[0x1E69E7CC0];
    sub_1BD751B3C(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
    v22 = v29;
    v23 = v33;
    sub_1BE053664();
    v24 = v27;
    MEMORY[0x1BFB3FD90](v17, v8, v22, v21);
    _Block_release(v21);

    (*(v32 + 8))(v22, v23);
    (*(v30 + 8))(v8, v31);
    return (v28)(v17, v9);
  }

  else
  {
    sub_1BE04CDA4();
    sub_1BD751B3C(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD7517FC(uint64_t a1, double a2)
{
  v21[1] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52100);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v21 - v6;
  v8 = sub_1BE04ECA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScrollViewManager();
  sub_1BD751B3C(&qword_1EBD52108, type metadata accessor for ScrollViewManager);
  v13 = sub_1BE04E3C4();
  MEMORY[0x1BFB3EDF0](a2, 1.0, 0.0);
  v14 = OBJC_IVAR____TtC9PassKitUI17ScrollViewManager_proxy;
  swift_beginAccess();
  sub_1BD0DE19C(v13 + v14, v7, &qword_1EBD52100);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    v15 = sub_1BD0DE53C(v7, &qword_1EBD52100);
  }

  else
  {
    v16 = (*(v9 + 32))(v12, v7, v8);
    MEMORY[0x1EEE9AC00](v16, v17);
    v21[-2] = v12;
    swift_retain_n();
    sub_1BE04E7D4();

    (*(v9 + 8))(v12, v8);
  }

  v18 = MEMORY[0x1BFB3EDF0](v15, a2, 1.0, 0.0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21[-2] = a1;
  sub_1BE04E7D4();
}

uint64_t sub_1BD751B3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD751B8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 296))
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

uint64_t sub_1BD751BD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_86()
{

  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  }

  sub_1BD0D45CC();
  if (*(v0 + 176))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 152);
  }

  sub_1BD0D45CC();
  sub_1BD0D4604(*(v0 + 224), *(v0 + 232));
  sub_1BD0D4604(*(v0 + 240), *(v0 + 248));
  sub_1BD0D45CC();

  return swift_deallocObject();
}

unint64_t sub_1BD751D74()
{
  result = qword_1EBD51F20;
  if (!qword_1EBD51F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51EE0);
    sub_1BD751E2C();
    sub_1BD0DE4F4(&qword_1EBD36798, &unk_1EBD51F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51F20);
  }

  return result;
}

unint64_t sub_1BD751E2C()
{
  result = qword_1EBD51F28;
  if (!qword_1EBD51F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51ED8);
    sub_1BD751EE4();
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51F28);
  }

  return result;
}

unint64_t sub_1BD751EE4()
{
  result = qword_1EBD51F30;
  if (!qword_1EBD51F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51ED0);
    sub_1BD751F9C();
    sub_1BD0DE4F4(&qword_1EBD36790, &qword_1EBD3F0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51F30);
  }

  return result;
}

unint64_t sub_1BD751F9C()
{
  result = qword_1EBD51F38;
  if (!qword_1EBD51F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51EC8);
    sub_1BD0DE4F4(&qword_1EBD51F40, &qword_1EBD51F48);
    sub_1BD0DE4F4(&qword_1EBD51F50, &qword_1EBD51F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51F38);
  }

  return result;
}

unint64_t sub_1BD752080()
{
  result = qword_1EBD365A8;
  if (!qword_1EBD365A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD365A8);
  }

  return result;
}

unint64_t sub_1BD7520DC()
{
  result = qword_1EBD51F88;
  if (!qword_1EBD51F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51EF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51EE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51F10);
    sub_1BD7531A4(&qword_1EBD51F18, &qword_1EBD51EE8, &unk_1BE0F4BD0, sub_1BD751D74);
    sub_1BD752080();
    sub_1BD0DE4F4(&qword_1EBD367B0, &qword_1EBD51F10);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD51F90, &qword_1EBD51F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51F88);
  }

  return result;
}

void sub_1BD752338(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v58 = a3;
  v59 = a4;
  v9 = v5;
  v10 = sub_1BE04D214();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v56 - v17;
  v19 = a1(0);
  v61 = v19;
  swift_getKeyPath();
  v60 = v19;
  swift_getKeyPath();
  sub_1BE04D8B4();

  LOBYTE(a1) = sub_1BE04CA44();

  if ((a1 & 1) == 0)
  {
    sub_1BE04D084();
    v23 = sub_1BE04D204();
    v24 = sub_1BE052C54();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BD026000, v23, v24, "handleAuthenticate", v25, 2u);
      MEMORY[0x1BFB45F20](v25, -1, -1);
    }

    v56 = a5;
    v57 = a2;

    (*(v11 + 8))(v15, v10);
    v26 = *(v9 + *((*MEMORY[0x1E69E7D40] & *v9) + 0xD0));
    v27 = [v26 paymentRequest];
    if (v27)
    {
      v28 = v27;
      v29 = objc_opt_self();
      MEMORY[0x1EEE9AC00](v29, v30);
      *(&v56 - 2) = v19;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v32);
      *(&v56 - 2) = v19;
      swift_getKeyPath();
      sub_1BE04D8B4();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      [v29 currentStateForPolicy_];
      v33 = [v28 disablePasscodeFallback];
      MEMORY[0x1EEE9AC00](v33, v34);
      *(&v56 - 2) = v19;
      v35 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v35, v36);
      *(&v56 - 2) = v19;
      swift_getKeyPath();
      sub_1BE04D8B4();

      sub_1BE04CB44();

      if ([v28 _isAMPPayment])
      {
        v37 = [v28 accesssControlRef];
        v38 = v57;
        if (!v37 || (v39 = v37, v40 = [v29 currentStateForAccessControl_], v39, (v41 = v40) == 0))
        {
          sub_1BD7472D8(v38);
          v42 = [v26 paymentRequest];
          if (v42)
          {
            v43 = v42;
            if ([v42 _isAMPPayment])
            {
              v44 = [v26 mode];

              if (v44 == 1)
              {
                v45 = [v26 fallbackToBypassMode];
              }
            }

            else
            {
            }

            MEMORY[0x1EEE9AC00](v45, v46);
            *(&v56 - 2) = v19;
            v54 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v54, v55);
            *(&v56 - 2) = v19;
            swift_getKeyPath();
            sub_1BE04D8B4();

            sub_1BE04CB64();

            goto LABEL_23;
          }

LABEL_25:
          __break(1u);
          return;
        }
      }

      else
      {
        v47 = [v28 requestType];
        v38 = v57;
        if ((v47 == 7 || (v48 = [v28 requestType], v48 == 13)) && (v48 = objc_msgSend(v28, sel_accesssControlRef)) != 0)
        {
          v50 = v48;
          v51 = [v29 currentStateForAccessControl_];

          v41 = v51;
        }

        else
        {
          MEMORY[0x1EEE9AC00](v48, v49);
          *(&v56 - 2) = v19;
          v52 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v52, v53);
          *(&v56 - 2) = v19;
          swift_getKeyPath();
          sub_1BE04D8B4();

          swift_getKeyPath();
          swift_getKeyPath();
          sub_1BE04D8B4();

          v41 = [v29 currentStateForPolicy_];
        }
      }

      sub_1BD7433DC(v41, 0, v58, v38, v59, v56);
LABEL_23:

      return;
    }

    __break(1u);
    goto LABEL_25;
  }

  sub_1BE04D084();
  v20 = sub_1BE04D204();
  v21 = sub_1BE052C54();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1BD026000, v20, v21, "AuthenticationWrapper - already authenticating, ignoring evaluation request", v22, 2u);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  (*(v11 + 8))(v18, v10);
}

__CFString *PKAuthenticatorPolicyDescription_0(unint64_t a1)
{
  if (a1 > 0xA)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_1E80105F0[a1];
    v2 = off_1E8010598[a1];
  }

  return v1;
}

uint64_t sub_1BD752DB4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F58) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1BD74D378(a1, v2 + v6, v7, a2);
}

uint64_t sub_1BD752E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F58) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1BE04ECA4() - 8);
  v9 = v2 + ((v7 + *(v8 + 80) + 296) & ~*(v8 + 80));

  return sub_1BD74D5A8(a1, v2 + v6, v2 + v7, v9, a2);
}

uint64_t sub_1BD752F6C()
{
  v1 = *(sub_1BE04ECA4() - 8);
  v2 = (*(v1 + 80) + 312) & ~*(v1 + 80);
  sub_1BE04E6A4();

  return sub_1BD74D80C(v0 + 16, v0 + v2);
}

uint64_t sub_1BD75303C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52100);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD7531A4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD753228()
{
  result = qword_1EBD367D0;
  if (!qword_1EBD367D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD520D0);
    sub_1BD7532E0();
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD367D0);
  }

  return result;
}

unint64_t sub_1BD7532E0()
{
  result = qword_1EBD367E8;
  if (!qword_1EBD367E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD52130);
    sub_1BD75336C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD367E8);
  }

  return result;
}

unint64_t sub_1BD75336C()
{
  result = qword_1EBD36828;
  if (!qword_1EBD36828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD52140);
    sub_1BD7533F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36828);
  }

  return result;
}

unint64_t sub_1BD7533F8()
{
  result = qword_1EBD36748;
  if (!qword_1EBD36748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD52150);
    sub_1BD751B3C(&qword_1EBD36A20, MEMORY[0x1E69BC9A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36748);
  }

  return result;
}

unint64_t sub_1BD7534B4()
{
  result = qword_1EBD52160;
  if (!qword_1EBD52160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD520F0);
    sub_1BD0DE4F4(&qword_1EBD52168, &qword_1EBD520E8);
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52160);
  }

  return result;
}

uint64_t sub_1BD7535C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD753654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD7536BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id PKIdentityDataReleaseConfiguration.__allocating_init(recognizedElements:relyingPartyName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC9PassKitUI34PKIdentityDataReleaseConfiguration_recognizedElements] = a1;
  v8 = &v7[OBJC_IVAR____TtC9PassKitUI34PKIdentityDataReleaseConfiguration_relyingPartyName];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id PKIdentityDataReleaseConfiguration.init(recognizedElements:relyingPartyName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI34PKIdentityDataReleaseConfiguration_recognizedElements] = a1;
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI34PKIdentityDataReleaseConfiguration_relyingPartyName];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id PKIdentityDataReleaseConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *PKDataReleaseElementsCell.dataReleaseConfiguration.getter()
{
  v1 = OBJC_IVAR____TtC9PassKitUI25PKDataReleaseElementsCell_dataReleaseConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PKDataReleaseElementsCell.dataReleaseConfiguration.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI25PKDataReleaseElementsCell_dataReleaseConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52248);
  v6[4] = sub_1BD7546EC();
  __swift_allocate_boxed_opaque_existential_1(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52258);
  sub_1BD754750();
  sub_1BE04FCE4();
  MEMORY[0x1BFB3FEF0](v6);
}

uint64_t sub_1BD7541D4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9PassKitUI25PKDataReleaseElementsCell_dataReleaseConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52248);
  v8[4] = sub_1BD7546EC();
  __swift_allocate_boxed_opaque_existential_1(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52258);
  sub_1BD754750();
  sub_1BE04FCE4();
  return MEMORY[0x1BFB3FEF0](v8);
}

void (*PKDataReleaseElementsCell.dataReleaseConfiguration.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  return sub_1BD754338;
}

void sub_1BD754338(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v4, v5);
    v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52248);
    v3[4] = sub_1BD7546EC();
    __swift_allocate_boxed_opaque_existential_1(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52258);
    sub_1BD754750();
    sub_1BE04FCE4();
    MEMORY[0x1BFB3FEF0](v3);
  }

  free(v3);
}

uint64_t sub_1BD75442C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = sub_1BE04DA24();
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04DA84();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE0520B4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC9PassKitUI25PKDataReleaseElementsCell_dataReleaseConfiguration;
  swift_beginAccess();
  v18 = *(a1 + v17);
  if (v18)
  {
    (*(v8 + 16))(v11, *(*(v18 + OBJC_IVAR____TtC9PassKitUI34PKIdentityDataReleaseConfiguration_recognizedElements) + OBJC_IVAR___PKISO180135RecognizedElements__elementCategoryGroups) + OBJC_IVAR____TtC9PassKitUIP33_A466B0C86051506D4B63D9964ADCC88940IdentityDocumentElementCategoryGroupsBox_wrapped, v7);
    (*(v3 + 104))(v6, *MEMORY[0x1E6997D20], v24);
    sub_1BE048C84();
    sub_1BE0520A4();
    v19 = v25;
    (*(v13 + 32))(v25, v16, v12);
    v20 = 0;
    v21 = v19;
  }

  else
  {
    v20 = 1;
    v21 = v25;
  }

  return (*(v13 + 56))(v21, v20, 1, v12);
}

unint64_t sub_1BD7546EC()
{
  result = qword_1EBD52250;
  if (!qword_1EBD52250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52250);
  }

  return result;
}

unint64_t sub_1BD754750()
{
  result = qword_1EBD52260;
  if (!qword_1EBD52260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52258);
    sub_1BD7547D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52260);
  }

  return result;
}

unint64_t sub_1BD7547D4()
{
  result = qword_1EBD3F1C0;
  if (!qword_1EBD3F1C0)
  {
    sub_1BE0520B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F1C0);
  }

  return result;
}

id PKDataReleaseElementsCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PKDataReleaseElementsCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9PassKitUI25PKDataReleaseElementsCell_dataReleaseConfiguration] = 0;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id PKDataReleaseElementsCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKDataReleaseElementsCell.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9PassKitUI25PKDataReleaseElementsCell_dataReleaseConfiguration] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void sub_1BD754B48(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 monetaryValue];
  if (!v4)
  {
    sub_1BD759280(v19);
    v10 = *&v19[8];
    v8 = *v19;
    v15 = *&v19[16];
    v16 = v20;
    v17 = v21;
    v18 = v22;
LABEL_7:
    *a2 = v8;
    *(a2 + 8) = v10;
    *(a2 + 16) = v15;
    *(a2 + 32) = v16;
    *(a2 + 40) = v17;
    *(a2 + 41) = v18;
    return;
  }

  v5 = v4;
  v6 = [v4 amount];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BE0533F4();
    v10 = v9;
    v12 = v11;

    v13 = [a1 value];
    if (v13)
    {
      v14 = v13;
      sub_1BE0533E4();
    }

    v17 = 1;
    v18 = 0;
    *v19 = v12;
    memset(&v19[4], 0, 20);
    v15 = *v19;
    v16 = *&v19[16];
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BD754C88()
{
  v1 = v0;
  v2 = type metadata accessor for PaymentPassHubView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v6 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v33 - v9;
  v11 = v0 + *(v2 + 112);
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v39) = v12;
  v40 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v38 != 1)
  {
    return;
  }

  if ((sub_1BD757B1C(1) & 1) == 0)
  {
    return;
  }

  v14 = *(v0 + *(v2 + 80));
  if (!v14)
  {
    return;
  }

  v36 = v4;
  v37 = v3;
  v39 = MEMORY[0x1E69E7CC0];
  if (v14 >> 62)
  {
LABEL_20:
    v15 = sub_1BE053704();
    if (v15)
    {
LABEL_6:
      v33 = v1;
      v34 = v10;
      v35 = v6;
      v6 = 0;
      v10 = (v14 & 0xC000000000000001);
      v1 = &selRef_thumbnailWidth;
      do
      {
        if (v10)
        {
          v16 = MEMORY[0x1BFB40900](v6, v14);
        }

        else
        {
          if (v6 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v16 = *(v14 + 8 * v6 + 32);
        }

        v17 = v16;
        v18 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        if ([v16 type] == 1)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }

        ++v6;
      }

      while (v18 != v15);
      v19 = v39;
      v10 = v34;
      v6 = v35;
      v1 = v33;
      v20 = v37;
      if ((v39 & 0x8000000000000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_6;
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
  v20 = v37;
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
  {
LABEL_22:
    if ((v19 & 0x4000000000000000) == 0)
    {
      if (!*(v19 + 16))
      {
LABEL_31:

        return;
      }

      goto LABEL_24;
    }
  }

LABEL_30:
  if (!sub_1BE053704())
  {
    goto LABEL_31;
  }

LABEL_24:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1BFB40900](0, v19);
  }

  else
  {
    if (!*(v19 + 16))
    {
      __break(1u);
      return;
    }

    v21 = *(v19 + 32);
  }

  v22 = v21;

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v25 = sub_1BE0528D4();
    (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
    sub_1BD75D80C(v1, v6, type metadata accessor for PaymentPassHubView);
    sub_1BE0528A4();
    v26 = v22;
    v27 = sub_1BE052894();
    v28 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v29 = v10;
    v30 = (v36 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    v32 = MEMORY[0x1E69E85E0];
    *(v31 + 16) = v27;
    *(v31 + 24) = v32;
    sub_1BD75D368(v6, v31 + v28, type metadata accessor for PaymentPassHubView);
    *(v31 + v30) = v24;
    sub_1BD122C00(0, 0, v29, &unk_1BE0F50F0, v31);
  }

  else
  {
  }
}

void sub_1BD755098()
{
  v1 = v0;
  v2 = sub_1BE04AFE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PaymentPassHubView(0);
  v8 = (v0 + v7[31]);
  v9 = v8[1];
  v52 = *v8;
  v53 = v9;
  v54 = v8[2];
  v55 = *(v8 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394D0);
  sub_1BE0516A4();
  if (v51)
  {
    goto LABEL_15;
  }

  v43 = v45;
  v44 = v46;
  v11 = v47;
  v10 = v48;
  v42 = v49;
  v12 = v50;
  v52 = *(v0 + v7[30]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268);
  sub_1BE0516A4();
  v13 = v45;
  if (!v45)
  {
    goto LABEL_15;
  }

  v41 = v3;
  sub_1BD758D50();
  if (!v14)
  {
    v17 = v13;
LABEL_14:

LABEL_15:
    (*(v1 + v7[19]))(0);
    return;
  }

  v15 = v14;
  v16 = WrappedPass.secureElementPass.getter();
  if (!v16)
  {
    v17 = v15;
    v15 = v13;
    goto LABEL_13;
  }

  v17 = v16;
  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (!v39 || (v40 = v17, v18 = sub_1BD758F20(), v17 = v40, (v18 & 1) == 0) || (v19 = sub_1BD7591CC(), v17 = v40, (v19 & 1) == 0))
  {

LABEL_13:
    goto LABEL_14;
  }

  v20 = MEMORY[0x1BFB403C0](0);
  if (MEMORY[0x1BFB40440](v43, v44, v11, v20, v21, v22))
  {
LABEL_9:
    (*(v1 + v7[19]))(0);

    return;
  }

  MEMORY[0x1BFB403C0](0);
  if (v12)
  {
    v23 = v13;
    v24 = sub_1BE053344();
    v25 = 0;
  }

  else
  {
    *(&v27 + 1) = v10;
    *&v27 = v11;
    v26 = v27 >> 32;
    *(&v27 + 1) = v42;
    *&v27 = v10;
    v42 = v27 >> 32;
    if (MEMORY[0x1BFB40440](v26))
    {
      goto LABEL_9;
    }

    v28 = v13;
    v24 = sub_1BE053344();
    v25 = sub_1BE053344();
  }

  v29 = [objc_allocWithZone(MEMORY[0x1E69B8CD0]) initWithRewardsBalance:v13 amount:v24 value:v25];

  v30 = objc_allocWithZone(MEMORY[0x1E69B9208]);
  v31 = v29;
  v32 = v15;
  v33 = [v30 initWithPaymentPass_];
  sub_1BE04AFD4();
  sub_1BE04AF74();
  (*(v41 + 8))(v6, v2);
  v34 = objc_allocWithZone(MEMORY[0x1E69B9210]);
  v35 = sub_1BE052404();

  v36 = [v34 initWithRewardsRedemptionIntent:v31 criteria:v32 passDetails:v33 sessionIdentifier:v35];

  v37 = *(v1 + v7[19]);
  v38 = v36;
  v37(v36);
}

void sub_1BD7554A8(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for PaymentPassHubView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD7587B8();
  if (v8)
  {
    v9 = v8;
    sub_1BD75D80C(v1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassHubView);
    v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v11 = swift_allocObject();
    sub_1BD75D368(v7, v11 + v10, type metadata accessor for PaymentPassHubView);
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    v13[3] = 0;
    v13[4] = 0;
    v13[2] = 0;
    v13[5] = sub_1BD75F818;
    v13[6] = v11;
    aBlock[4] = sub_1BD3A376C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD198918;
    aBlock[3] = &block_descriptor_47_2;
    v14 = _Block_copy(aBlock);
    sub_1BE048964();

    v15 = [v12 hyperlinkSourcesFromApplyFooter:v9 linkTapped:v14];
    _Block_release(v14);
    if (v15)
    {
      sub_1BD0E5E8C(0, &qword_1EBD43EA8);
      v16 = sub_1BE052744();
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    v20 = [v9 footerText];
    v18 = sub_1BE052434();
    v19 = v21;

    v17 = 4;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  *a1 = v16;
  a1[1] = v17;
  a1[2] = 0;
  a1[3] = v18;
  a1[5] = 0;
  a1[6] = 0;
  a1[4] = v19;
}

void sub_1BD755748(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PaymentPassHubView(0);
  v55 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4, v5);
  v56 = v6;
  v57 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DC50);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52298);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v47 - v13;
  if (sub_1BD757B1C(1))
  {
    v52 = v10;
    v53 = v11;
    v15 = *&v1[v4[20]];
    v51 = v7;
    v54 = a1;
    if (!v15)
    {
LABEL_33:
      v25 = &v2[v4[27]];
      v27 = *v25;
      v26 = *(v25 + 1);
      v59 = v27;
      v60 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668);
      sub_1BE0516A4();
      v28 = sub_1BD6CF234(1, v58);

      v29 = *&v2[v4[17]];
      if (v29)
      {
        v30 = [v29 type] == 1;
      }

      else
      {
        v30 = 0;
      }

      if (v15 && (v31 = *&v2[v4[18]]) != 0 && (v32 = [v31 ineligibleDetailsForCriteria_]) != 0)
      {
        v56 = v32;
        v33 = [v32 isEligible] ^ 1;
      }

      else
      {
        v56 = 0;
        v33 = 1;
      }

      v34 = v57;
      sub_1BD75D80C(v2, v57, type metadata accessor for PaymentPassHubView);
      v35 = (*(v55 + 80) + 26) & ~*(v55 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = v15;
      *(v36 + 24) = (v28 & 1) == 0;
      *(v36 + 25) = v30;
      v37 = sub_1BD75D368(v34, v36 + v35, type metadata accessor for PaymentPassHubView);
      MEMORY[0x1EEE9AC00](v37, v38);
      *(&v47 - 4) = v2;
      *(&v47 - 3) = v15;
      *(&v47 - 16) = v28 & 1;
      *(&v47 - 15) = v30;
      sub_1BD10E5DC();
      v39 = v15;
      v40 = v52;
      sub_1BE051704();
      KeyPath = swift_getKeyPath();
      v42 = swift_allocObject();
      *(v42 + 16) = v33 & 1;
      v43 = (v40 + *(v51 + 36));
      *v43 = KeyPath;
      v43[1] = sub_1BD185ABC;
      v43[2] = v42;
      if (v33)
      {
        v44 = 0.4;
      }

      else
      {
        v44 = 1.0;
      }

      sub_1BD0DE204(v40, v14, &qword_1EBD4DC50);
      *&v14[*(v53 + 36)] = v44;
      sub_1BE052434();
      sub_1BD75D600();
      v45 = v54;
      sub_1BE050DE4();

      sub_1BD0DE53C(v14, &qword_1EBD52298);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD522A0);
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      return;
    }

    v49 = v4;
    v50 = v14;
    v59 = MEMORY[0x1E69E7CC0];
    if (v15 >> 62)
    {
LABEL_22:
      v16 = sub_1BE053704();
      if (v16)
      {
LABEL_5:
        v48 = v2;
        v17 = 0;
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1BFB40900](v17, v15);
          }

          else
          {
            if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v18 = *(v15 + 8 * v17 + 32);
          }

          v2 = v18;
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

          if ([v18 type] == 1)
          {
            sub_1BE0538C4();
            sub_1BE0538F4();
            sub_1BE053904();
            sub_1BE0538D4();
          }

          else
          {
          }

          ++v17;
        }

        while (v19 != v16);
        v22 = v59;
        v2 = v48;
        v4 = v49;
        v14 = v50;
        if ((v59 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_5;
      }
    }

    v22 = MEMORY[0x1E69E7CC0];
    v4 = v49;
    v14 = v50;
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
    {
LABEL_24:
      if ((v22 & 0x4000000000000000) == 0)
      {
        if (!*(v22 + 16))
        {
LABEL_32:

          v15 = 0;
          goto LABEL_33;
        }

LABEL_26:
        if ((v22 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1BFB40900](0, v22);
        }

        else
        {
          if (!*(v22 + 16))
          {
            __break(1u);
            return;
          }

          v23 = *(v22 + 32);
        }

        v24 = v23;

        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (!v15)
        {
        }

        goto LABEL_33;
      }
    }

LABEL_31:
    if (!sub_1BE053704())
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD522A0);
  v21 = *(*(v20 - 8) + 56);

  v21(a1, 1, 1, v20);
}

uint64_t sub_1BD755DF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PaymentPassHubView(0);
  v52 = *(v4 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v7 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DC50);
  MEMORY[0x1EEE9AC00](v53, v8);
  v54 = &v46[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52298);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v46[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD522A0);
  v56 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v55 = &v46[-v16];
  sub_1BD758D50();
  if (v17)
  {
    v18 = v17;
    v19 = *(v1 + *(v4 + 72));
    if (v19)
    {
      v20 = (v1 + *(v4 + 108));
      v50 = a1;
      v51 = v14;
      v22 = v20[1];
      v58 = *v20;
      v21 = v58;
      v59 = v22;
      v48 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668);
      sub_1BE0516A4();
      v47 = sub_1BD6CF234(2);

      v49 = sub_1BD7595D4();
      v58 = v21;
      v59 = v22;
      sub_1BE0516A4();
      v23 = *(v57 + 16);

      v24 = v23 == 0;
      sub_1BD75D80C(v2, &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PaymentPassHubView);
      v25 = (*(v52 + 80) + 17) & ~*(v52 + 80);
      v26 = v25 + v5;
      v27 = v26 & 0xFFFFFFFFFFFFFFF8;
      v52 = v10;
      v28 = ((v26 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      *(v29 + 16) = v24;
      v30 = sub_1BD75D368(v7, v29 + v25, type metadata accessor for PaymentPassHubView);
      *(v29 + v26) = v47 & 1;
      v31 = v48;
      *(v29 + v27 + 8) = v48;
      *(v29 + v28) = v18;
      MEMORY[0x1EEE9AC00](v30, v32);
      *&v46[-32] = v2;
      *&v46[-24] = v18;
      v46[-16] = v33;
      sub_1BD10E5DC();
      v34 = v31;
      v35 = v18;
      v36 = v54;
      sub_1BE051704();
      KeyPath = swift_getKeyPath();
      v38 = swift_allocObject();
      v39 = (v49 & 1) == 0;
      *(v38 + 16) = v49 & 1;
      v40 = (v36 + *(v53 + 36));
      *v40 = KeyPath;
      v40[1] = sub_1BD10DF54;
      v40[2] = v38;
      if (v39)
      {
        v41 = 1.0;
      }

      else
      {
        v41 = 0.4;
      }

      sub_1BD0DE204(v36, v13, &qword_1EBD4DC50);
      *&v13[*(v52 + 36)] = v41;
      sub_1BE052434();
      sub_1BD75D600();
      v42 = v55;
      sub_1BE050DE4();

      sub_1BD0DE53C(v13, &qword_1EBD52298);
      v43 = v50;
      sub_1BD0DE204(v42, v50, &qword_1EBD522A0);
      return (*(v56 + 56))(v43, 0, 1, v51);
    }
  }

  v45 = *(v56 + 56);

  return v45(a1, 1, 1, v14);
}

void sub_1BD75634C(int a1)
{
  LODWORD(v114) = a1;
  v2 = type metadata accessor for PaymentPassHubView(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v94 - v8);
  v10 = sub_1BE04D214();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v94 - v17;
  if (PKHideCardBenefitRewards())
  {
    return;
  }

  v19 = *(v1 + v2[18]);
  if (!v19)
  {
    return;
  }

  v110 = v11;
  v111 = v15;
  v113 = v19;
  v20 = v1;
  v21 = WrappedPass.secureElementPass.getter();
  if (v21)
  {
    v112 = v21;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      v109 = v22;
      v23 = [v22 uniqueID];
      if (v23)
      {
        v106 = v18;
        v24 = v23;
        v25 = sub_1BE052434();
        v27 = *(v1 + v2[20]);
        if (!v27)
        {

          v33 = 0;
          v34 = 0;
          goto LABEL_59;
        }

        v107 = v24;
        v101 = v10;
        v98 = v25;
        v108 = v26;
        v99 = v3;
        v100 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
        v120[0] = MEMORY[0x1E69E7CC0];
        if (v27 >> 62)
        {
          goto LABEL_28;
        }

        for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
        {
          v104 = v1;
          v105 = v4;
          v102 = v9;
          v103 = v2;
          v4 = 0;
          v20 = (v27 & 0xC000000000000001);
          v9 = &selRef_thumbnailWidth;
          while (1)
          {
            if (v20)
            {
              v29 = MEMORY[0x1BFB40900](v4, v27);
            }

            else
            {
              if (v4 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_27;
              }

              v29 = *(v27 + 8 * v4 + 32);
            }

            v30 = v29;
            v2 = (v4 + 1);
            if (__OFADD__(v4, 1))
            {
              break;
            }

            if ([v29 type] == 2)
            {
              v1 = v120;
              sub_1BE0538C4();
              sub_1BE0538F4();
              sub_1BE053904();
              sub_1BE0538D4();
            }

            else
            {
            }

            ++v4;
            if (v2 == i)
            {
              v32 = v120[0];
              v2 = v103;
              v20 = v104;
              v9 = v102;
              v4 = v105;
              goto LABEL_30;
            }
          }

          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          ;
        }

        v32 = MEMORY[0x1E69E7CC0];
LABEL_30:
        if (v32 < 0 || (v32 & 0x4000000000000000) != 0)
        {
          if (sub_1BE053704())
          {
LABEL_33:
            if ((v32 & 0xC000000000000001) != 0)
            {
              v35 = MEMORY[0x1BFB40900](0, v32);
            }

            else
            {
              if (!*(v32 + 16))
              {
                __break(1u);
                return;
              }

              v35 = *(v32 + 32);
            }

            v36 = v35;

            objc_opt_self();
            v34 = swift_dynamicCastObjCClass();
            v1 = v20;
            if (v34)
            {
              v33 = [v113 ineligibleDetailsForCriteria_];
              if (v33)
              {
                v37 = v36;
                v38 = v33;
                if ([v38 isEligible])
                {
                  v104 = v37;
                  v105 = v33;
                  v39 = (v20 + v2[30]);
                  v40 = *v39;
                  v41 = v39[1];
                  v120[0] = *v39;
                  v120[1] = v41;
                  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268);
                  sub_1BE0516A4();
                  if (v116 && (v116, (v114 & 1) == 0))
                  {

                    v120[0] = v40;
                    v120[1] = v41;
                    sub_1BE0516A4();
                    v57 = v38;
                    v58 = v116;
                    *v120 = *(v20 + v2[32]);
                    v59 = v57;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52290);
                    sub_1BE0516A4();
                    v60 = v116;
                    sub_1BD6B4444(v58, v105, v116, v20 + v2[14]);

                    v61 = v104;
                  }

                  else
                  {
                    v105 = v4;

                    v114 = v38;
                    v42 = [v34 identifier];
                    if (!v42)
                    {
                      sub_1BE052434();
                      v42 = sub_1BE052404();
                    }

                    v97 = sub_1BE052434();
                    v102 = v43;
                    v44 = [v113 rewardsBalanceForPassUniqueID_];
                    v120[0] = v40;
                    v120[1] = v41;
                    v116 = v44;
                    sub_1BE0516B4();
                    v120[0] = v40;
                    v120[1] = v41;
                    sub_1BE0516A4();
                    v45 = v116;
                    if (v116)
                    {
                      v46 = v106;
                      sub_1BE04D154();
                      v47 = v45;
                      v48 = sub_1BE04D204();
                      v49 = sub_1BE052C14();

                      LODWORD(v103) = v49;
                      if (os_log_type_enabled(v48, v49))
                      {
                        v50 = swift_slowAlloc();
                        v96 = swift_slowAlloc();
                        v120[0] = v96;
                        *v50 = 136315138;
                        v51 = [v47 identifier];
                        v52 = sub_1BE052434();
                        v95 = v47;
                        v54 = v53;

                        v55 = sub_1BD123690(v52, v54, v120);

                        *(v50 + 4) = v55;
                        _os_log_impl(&dword_1BD026000, v48, v103, "Loaded redeemable payment rewards balance (%s) from DB", v50, 0xCu);
                        v56 = v96;
                        __swift_destroy_boxed_opaque_existential_0(v96);
                        MEMORY[0x1BFB45F20](v56, -1, -1);
                        MEMORY[0x1BFB45F20](v50, -1, -1);

                        (*(v110 + 8))(v106, v101);
                      }

                      else
                      {

                        (*(v110 + 8))(v46, v101);
                      }
                    }

                    v62 = v107;
                    v63 = [v113 loadingDetailsForRewardsBalanceForCriteriaIdentifier:v42 passUniqueID:v107];

                    if (v63 && [v63 state] != 2)
                    {
                    }

                    else
                    {
                      v107 = v63;
                      sub_1BE04D154();
                      v64 = sub_1BE04D204();
                      v65 = sub_1BE052C14();
                      if (os_log_type_enabled(v64, v65))
                      {
                        v66 = swift_slowAlloc();
                        *v66 = 0;
                        _os_log_impl(&dword_1BD026000, v64, v65, "Fetching redeemable payment rewards balance from server", v66, 2u);
                        MEMORY[0x1BFB45F20](v66, -1, -1);
                      }

                      (*(v110 + 8))(v111, v101);
                      v67 = v20;
                      v68 = (v20 + v2[27]);
                      v70 = v68[1];
                      v120[0] = *v68;
                      v69 = v120[0];
                      v120[1] = v70;
                      sub_1BE048964();
                      sub_1BE048C84();
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668);
                      sub_1BE0516A4();
                      sub_1BD2A598C(&v119, 2);
                      v116 = v69;
                      v117 = v70;
                      v115 = v118;
                      sub_1BE0516B4();

                      v71 = sub_1BE0528D4();
                      (*(*(v71 - 8) + 56))(v9, 1, 1, v71);
                      v72 = v100;
                      sub_1BD75D80C(v67, v100, type metadata accessor for PaymentPassHubView);
                      sub_1BE0528A4();
                      v113 = v113;
                      v111 = v114;
                      v114 = v112;
                      v73 = sub_1BE052894();
                      v74 = (*(v99 + 80) + 32) & ~*(v99 + 80);
                      v75 = (v105 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
                      v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
                      v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
                      v78 = v9;
                      v79 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
                      v80 = swift_allocObject();
                      v81 = MEMORY[0x1E69E85E0];
                      *(v80 + 16) = v73;
                      *(v80 + 24) = v81;
                      sub_1BD75D368(v72, v80 + v74, type metadata accessor for PaymentPassHubView);
                      v82 = v111;
                      *(v80 + v75) = v111;
                      v83 = v113;
                      *(v80 + v76) = v113;
                      *(v80 + v77) = v109;
                      v84 = (v80 + v79);
                      v85 = v102;
                      *v84 = v97;
                      v84[1] = v85;
                      v86 = (v80 + ((v79 + 23) & 0xFFFFFFFFFFFFFFF8));
                      v87 = v108;
                      *v86 = v98;
                      v86[1] = v87;
                      sub_1BD122C00(0, 0, v78, &unk_1BE0F5140, v80);
                    }
                  }

                  return;
                }
              }
            }

            else
            {

              v33 = 0;
            }

LABEL_59:
            v88 = (v1 + v2[30]);
            v90 = v88[1];
            v120[0] = *v88;
            v89 = v120[0];
            v120[1] = v90;
            v116 = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268);
            v91 = v1;
            sub_1BE0516B4();
            v120[0] = v89;
            v120[1] = v90;
            sub_1BE0516A4();
            v92 = v116;
            *v120 = *(v1 + v2[32]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52290);
            sub_1BE0516A4();
            v93 = v116;
            sub_1BD6B4444(v92, v33, v116, v91 + v2[14]);

            return;
          }
        }

        else if (*(v32 + 16))
        {
          goto LABEL_33;
        }

        v33 = 0;
        v34 = 0;
        v1 = v20;
        goto LABEL_59;
      }
    }

    v31 = v112;
  }

  else
  {
    v31 = v113;
  }
}

void sub_1BD756F34(uint64_t a1@<X8>)
{
  v2 = v1;
  v79 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = &v66 - v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  v7 = MEMORY[0x1EEE9AC00](v71, v6);
  v70 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v66 - v10;
  v74 = type metadata accessor for PaymentPassHubRewardsApplyView(0);
  v13 = MEMORY[0x1EEE9AC00](v74, v12);
  v76 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v75 = &v66 - v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52288);
  v17 = *(v78 - 8);
  v19 = MEMORY[0x1EEE9AC00](v78, v18);
  v73 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v72 = &v66 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v66 - v25;
  v27 = _s14PaymentSummaryVMa();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for PaymentPassHubView(0);
  v84 = *(v1 + v32[30]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268);
  sub_1BE0516A4();
  v33 = v80;
  if (!v80)
  {
    goto LABEL_15;
  }

  sub_1BD0DE19C(v1 + v32[14], v26, &unk_1EBD43B30);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {

    sub_1BD0DE53C(v26, &unk_1EBD43B30);
LABEL_15:
    v51 = 1;
    v53 = v78;
    v52 = v79;
LABEL_16:
    (*(v17 + 56))(v52, v51, 1, v53);
    return;
  }

  sub_1BD75D368(v26, v31, _s14PaymentSummaryVMa);
  sub_1BD758D50();
  if (!v34)
  {
    sub_1BD75D874(v31, _s14PaymentSummaryVMa);
    goto LABEL_8;
  }

  v35 = v34;
  if (sub_1BD7595D4())
  {
    sub_1BD75D874(v31, _s14PaymentSummaryVMa);

LABEL_8:
    goto LABEL_15;
  }

  v36 = *(v1 + v32[17]);
  if (!v36 || [v36 type] != 2)
  {

    sub_1BD75D874(v31, _s14PaymentSummaryVMa);
    goto LABEL_15;
  }

  v69 = v35;
  v37 = *(v31 + 1);
  v68 = objc_allocWithZone(MEMORY[0x1E69B8780]);
  v38 = v37;
  v39 = sub_1BE052404();
  v40 = [v68 initWithAmount:v38 currency:v39 exponent:0];

  if (v40)
  {
    v67 = v40;
    v68 = sub_1BD75BBD4(v40, v33);
    v41 = (v2 + v32[31]);
    v42 = v41[1];
    v80 = *v41;
    v81 = v42;
    v82 = v41[2];
    v83 = *(v41 + 6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394D0);
    sub_1BE0516C4();
    v43 = v74;
    v44 = type metadata accessor for MultiHyperLinkDetailSheet();
    v45 = 1;
    (*(*(v44 - 8) + 56))(v11, 1, 1, v44);
    sub_1BD0DE19C(v11, v70, &unk_1EBD45160);
    v46 = v76;
    sub_1BE051694();
    sub_1BD0DE53C(v11, &unk_1EBD45160);
    v47 = [v69 redemptionTermsURL];
    v48 = v77;
    if (v47)
    {
      v49 = v47;
      sub_1BE04A9F4();

      v45 = 0;
    }

    v50 = v78;
    v54 = sub_1BE04AA64();
    (*(*(v54 - 8) + 56))(v48, v45, 1, v54);
    sub_1BD0DE204(v48, v46, &unk_1EBD3CF70);
    v55 = swift_allocObject();
    v56 = v85;
    *(v55 + 40) = v84;
    v57 = v69;
    *(v55 + 16) = v33;
    *(v55 + 24) = v57;
    *(v55 + 32) = v67;
    *(v55 + 56) = v56;
    *(v55 + 72) = v86[0];
    *(v55 + 82) = *(v86 + 10);
    v58 = v46 + *(v43 + 20);
    *v58 = sub_1BD75D358;
    *(v58 + 8) = v55;
    *(v58 + 16) = 0;
    v59 = v75;
    sub_1BD75D368(v46, v75, type metadata accessor for PaymentPassHubRewardsApplyView);
    v60 = v59;
    v61 = v73;
    sub_1BD75D368(v60, v73, type metadata accessor for PaymentPassHubRewardsApplyView);
    *(v61 + *(v50 + 52)) = v68;
    sub_1BD75D874(v31, _s14PaymentSummaryVMa);
    v62 = v61;
    v63 = v72;
    sub_1BD0DE204(v62, v72, &qword_1EBD52288);
    v64 = v63;
    v65 = v79;
    sub_1BD0DE204(v64, v79, &qword_1EBD52288);
    v53 = v50;
    v52 = v65;
    v51 = 0;
    goto LABEL_16;
  }

  __break(1u);
}

id sub_1BD757714@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52270);
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for PaymentPassHubView(0);
  v13 = *(v1 + *(v12 + 72));
  if (v13)
  {
    sub_1BD49C81C(v12);
    v14 = sub_1BE052404();

    v15 = [v13 merchandisingOfferForPassUniqueID_];

    if (v15)
    {
      v16 = [v15 other];
      if (v16)
      {
        v17 = v16;
        sub_1BD0E5E8C(0, &qword_1EBD3EB48);
        v18 = sub_1BE052744();

        if (v18 >> 62)
        {
          if (sub_1BE053704() >= 1)
          {
LABEL_6:
            v29 = a1;
            (*(v4 + 104))(v7, *MEMORY[0x1E69B8068], v3);
            result = PKPassKitBundle();
            if (result)
            {
              v20 = result;
              v21 = sub_1BE04B6F4();
              v23 = v22;

              (*(v4 + 8))(v7, v3);
              v31 = v21;
              v32 = v23;
              sub_1BD0DDEBC();
              v31 = sub_1BE0506C4();
              v32 = v24;
              v33 = v25 & 1;
              v34 = v26;
              MEMORY[0x1EEE9AC00](v31, v24);
              *(&v29 - 2) = v18;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52278);
              sub_1BD75D2D4();
              sub_1BE051A24();

              v27 = v29;
              (*(v30 + 32))(v29, v11, v8);
              return (*(v30 + 56))(v27, 0, 1, v8);
            }

            else
            {
              __break(1u);
            }

            return result;
          }
        }

        else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
        {
          goto LABEL_6;
        }
      }

      else
      {
      }
    }
  }

  v28 = *(v30 + 56);

  return v28(a1, 1, 1, v8);
}

uint64_t sub_1BD757B1C(id a1)
{
  v3 = *(v1 + *(type metadata accessor for PaymentPassHubView(0) + 80));
  if (!v3)
  {
    return 0;
  }

  v18 = MEMORY[0x1E69E7CC0];
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_19:
    v5 = sub_1BE053704();
    if (v5)
    {
LABEL_4:
      v6 = 0;
      v7 = v3 & 0xC000000000000001;
      v17 = v3;
      do
      {
        if (v7)
        {
          v8 = MEMORY[0x1BFB40900](v6, v3);
        }

        else
        {
          if (v6 >= *(v4 + 16))
          {
            goto LABEL_18;
          }

          v8 = *(v3 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        if ([v8 type] == a1)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
          v3 = v17;
        }

        else
        {
        }

        ++v6;
      }

      while (v10 != v5);
      v11 = v18;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
  {
LABEL_21:
    if ((v11 & 0x4000000000000000) == 0)
    {
      v13 = *(v11 + 16);
      goto LABEL_23;
    }
  }

LABEL_27:
  v16 = v11;
  v13 = sub_1BE053704();
  v11 = v16;
LABEL_23:
  v12 = v13 != 0;
  if (!v13)
  {
LABEL_29:

    return v12;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1BFB40900](0, v11);
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v14 = *(v11 + 16);

  if (v14)
  {
    return 1;
  }

  __break(1u);
  return result;
}

void sub_1BD757D08(void *a1, char a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for PaymentPassHubView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v12 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v25 - v15;
  if (a1 && (a2 & 1) != 0 && (a3 & 1) == 0)
  {
    v17 = a1;
    sub_1BD6B2184(7, 6u, 0);
    v18 = sub_1BE0528D4();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
    sub_1BD75D80C(a4, &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassHubView);
    sub_1BE0528A4();
    v19 = v17;
    v20 = sub_1BE052894();
    v21 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E85E0];
    *(v23 + 16) = v20;
    *(v23 + 24) = v24;
    sub_1BD75D368(v12, v23 + v21, type metadata accessor for PaymentPassHubView);
    *(v23 + v22) = v19;
    sub_1BD122C00(0, 0, v16, &unk_1BE0F51A8, v23);
  }
}

uint64_t sub_1BD757F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1BE0528A4();
  *(v4 + 24) = sub_1BE052894();
  v6 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD757FD4, v6, v5);
}

uint64_t sub_1BD757FD4()
{

  sub_1BD75D004(1);
  v1 = *(v0 + 8);

  return v1();
}

double sub_1BD75803C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_1BD75819C(a2);
  v12 = v11;
  v13 = sub_1BD758318(a2);
  v15 = v14;
  v16 = type metadata accessor for PaymentPassHubView(0);
  v17 = *(a1 + *(v16 + 72));
  if (!v17)
  {
    goto LABEL_5;
  }

  sub_1BD49C81C(v16);
  v18 = sub_1BE052404();

  v19 = [v17 merchandisingOfferForPassUniqueID_];

  if (!v19)
  {
    goto LABEL_6;
  }

  v20 = [v19 installments];

  if (v20)
  {
    sub_1BD0E5E8C(0, &qword_1EBD3EB48);
    v19 = sub_1BE052744();
  }

  else
  {
LABEL_5:
    v19 = 0;
  }

LABEL_6:
  if (a4)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  if (a3)
  {
    v21 = 1;
  }

  *a5 = v10;
  *(a5 + 8) = v12;
  *(a5 + 16) = 0;
  *(a5 + 24) = v13;
  *(a5 + 32) = v15;
  *(a5 + 40) = v19;
  *(a5 + 48) = v21;
  result = 5.30584611e199;
  *(a5 + 56) = xmmword_1BE0F50C0;
  *(a5 + 72) = 2;
  *(a5 + 80) = 0x4042000000000000;
  return result;
}

id sub_1BD75819C(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 && (v8 = [v5 localizedTitleOverride]) != 0)
  {
    v9 = v8;
    v10 = sub_1BE052434();

    return v10;
  }

  else
  {
    (*(v3 + 104))(v7, *MEMORY[0x1E69B8068], v2);
    result = PKPassKitBundle();
    if (result)
    {
      v12 = result;
      v13 = sub_1BE04B6F4();

      (*(v3 + 8))(v7, v2);
      return v13;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1BD758318(void *a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = v43 - v11;
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v43 - v14;
  v16 = type metadata accessor for PaymentPassHubView(0);
  v17 = (v1 + *(v16 + 108));
  v19 = *v17;
  v18 = v17[1];
  v43[2] = v19;
  v43[3] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668);
  sub_1BE0516A4();
  v20 = sub_1BD6CF234(1, v43[1]);

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
      v28 = *(v1 + *(v16 + 72));
      if (v28)
      {
        v29 = [v28 ineligibleDetailsForCriteria_];
        if (v29)
        {
          v30 = v29;
          if (([v29 isEligible] & 1) == 0)
          {
            v37 = [v28 configuration];
            v38 = [v37 currencyCode];

            if (v38)
            {
              v39 = sub_1BE052434();
              v41 = v40;
            }

            else
            {
              v39 = 0;
              v41 = 0;
            }

            sub_1BD480FEC(v39, v41);
            v27 = v42;

            return v27;
          }
        }
      }

      v31 = [a1 localizedSubtitleOverride];
      if (v31)
      {
        v32 = v31;
        v27 = sub_1BE052434();

        if (sub_1BE052534() < 1)
        {

          return 0;
        }

        return v27;
      }

      v34 = [a1 programName];
      if (v34)
      {
        v35 = v34;
        v27 = sub_1BE052434();

        return v27;
      }
    }

    (*(v4 + 104))(v8, *MEMORY[0x1E69B8078], v3);
    result = PKPassKitBundle();
    if (result)
    {
      v36 = result;
      v27 = sub_1BE04B6F4();

      (*(v4 + 8))(v8, v3);
      return v27;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = *(v1 + *(v16 + 72));
  if (!v22 || (sub_1BD49C81C(v21), v23 = sub_1BE052404(), , v24 = [v22 preconfiguredInstallmentOfferStateForPassUniqueID_], v23, (v24 - 3) > 1))
  {
    (*(v4 + 104))(v12, *MEMORY[0x1E69B8078], v3);
    result = PKPassKitBundle();
    if (result)
    {
      v33 = result;
      v27 = sub_1BE04B6F4();

      (*(v4 + 8))(v12, v3);
      return v27;
    }

    __break(1u);
    goto LABEL_26;
  }

  (*(v4 + 104))(v15, *MEMORY[0x1E69B8078], v3);
  result = PKPassKitBundle();
  if (result)
  {
    v26 = result;
    v27 = sub_1BE04B6F4();

    (*(v4 + 8))(v15, v3);
    return v27;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1BD7587B8()
{
  v1 = v0;
  v2 = type metadata accessor for PaymentPassHubView(0);
  v3 = v2;
  v4 = *(v0 + *(v2 + 72));
  if (v4)
  {
    sub_1BD49C81C(v2);
    v5 = sub_1BE052404();

    v6 = [v4 merchandisingOfferForPassUniqueID_];

    if (v6)
    {
      v7 = [v6 dynamicContent];

      if (v7)
      {
        v8 = [v7 dynamicContentPageForPageType_];

        if (v8)
        {
          v9 = [v8 footerContent];

          if (v9)
          {
            if (sub_1BD757B1C(1) & 1) != 0 || (sub_1BD757B1C(2))
            {
              return;
            }
          }
        }
      }
    }
  }

  if ((sub_1BD757B1C(1) & 1) == 0)
  {
    return;
  }

  v10 = *(v1 + *(v3 + 80));
  if (!v10)
  {
    return;
  }

  v20 = MEMORY[0x1E69E7CC0];
  if (v10 >> 62)
  {
LABEL_28:
    v11 = sub_1BE053704();
    if (v11)
    {
LABEL_14:
      v12 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1BFB40900](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        if ([v13 type] == 1)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }

        ++v12;
      }

      while (v15 != v11);
      v16 = v20;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_39;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_39;
  }

LABEL_30:
  if ((v16 & 0x4000000000000000) != 0)
  {
LABEL_39:
    if (!sub_1BE053704())
    {
      goto LABEL_40;
    }

    goto LABEL_32;
  }

  if (!*(v16 + 16))
  {
LABEL_40:

    return;
  }

LABEL_32:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1BFB40900](0, v16);
  }

  else
  {
    if (!*(v16 + 16))
    {
      __break(1u);
      return;
    }

    v17 = *(v16 + 32);
  }

  v18 = v17;

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    [v19 disclosureFooter];
  }
}

uint64_t sub_1BD758ABC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  v10 = sub_1BE04AA64();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v11 = type metadata accessor for MultiHyperLinkDetailSheet();
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  type metadata accessor for PaymentPassHubView(0);
  sub_1BD0DE19C(v9, v6, &unk_1EBD45160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v9, &unk_1EBD45160);
}

uint64_t sub_1BD758C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1BE0528A4();
  *(v4 + 24) = sub_1BE052894();
  v6 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD758CE8, v6, v5);
}

uint64_t sub_1BD758CE8()
{

  sub_1BD75D004(0);
  v1 = *(v0 + 8);

  return v1();
}

void sub_1BD758D50()
{
  v1 = *(v0 + *(type metadata accessor for PaymentPassHubView(0) + 80));
  if (!v1)
  {
    return;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_18:
    v2 = sub_1BE053704();
    if (v2)
    {
LABEL_4:
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1BFB40900](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        if ([v4 type] == 2)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }

        ++v3;
      }

      while (v6 != v2);
      v7 = v10;
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_4;
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
  {
LABEL_20:
    if ((v7 & 0x4000000000000000) == 0)
    {
      if (!*(v7 + 16))
      {
LABEL_28:

        return;
      }

      goto LABEL_22;
    }
  }

LABEL_27:
  if (!sub_1BE053704())
  {
    goto LABEL_28;
  }

LABEL_22:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1BFB40900](0, v7);
  }

  else
  {
    if (!*(v7 + 16))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);
  }

  v9 = v8;

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
  }
}

uint64_t sub_1BD758F20()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v20 - v4;
  v6 = _s14PaymentSummaryVMa();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PaymentPassHubView(0);
  v22 = *(v0 + *(v11 + 120));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268);
  sub_1BE0516A4();
  v12 = v21;
  if (!v21)
  {
    goto LABEL_4;
  }

  sub_1BD0DE19C(v1 + *(v11 + 56), v5, &unk_1EBD43B30);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    sub_1BD0DE53C(v5, &unk_1EBD43B30);
LABEL_4:
    LOBYTE(v13) = 0;
    return v13 & 1;
  }

  sub_1BD75D368(v5, v10, _s14PaymentSummaryVMa);
  v14 = [v12 monetaryValue];
  v13 = [v14 currency];

  if (v13)
  {
    v15 = sub_1BE052434();
    v17 = v16;

    if (v15 == *(v10 + 3) && v17 == *(v10 + 4))
    {
      LOBYTE(v13) = 1;
    }

    else
    {
      LOBYTE(v13) = sub_1BE053B84();
    }

    sub_1BD75D874(v10, _s14PaymentSummaryVMa);
  }

  else
  {
    sub_1BE048C84();

    sub_1BD75D874(v10, _s14PaymentSummaryVMa);
  }

  return v13 & 1;
}

id sub_1BD7591CC()
{
  type metadata accessor for PaymentPassHubView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268);
  sub_1BE0516A4();
  if (!v2)
  {
    return 0;
  }

  if ([v2 isRedeemable] && objc_msgSend(v2, sel_isValid))
  {
    v0 = [v2 isPositive];
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void sub_1BD759280(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v39[-v5];
  v7 = _s14PaymentSummaryVMa();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for PaymentPassHubView(0);
  *v39 = *(v1 + *(v12 + 120));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268);
  sub_1BE0516A4();
  v13 = v40;
  v14 = 0uLL;
  if (!v40)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1;
LABEL_20:
    *a1 = v15;
    *(a1 + 8) = v16;
    *(a1 + 16) = v14;
    *(a1 + 32) = v17;
    *(a1 + 40) = v13;
    *(a1 + 41) = v18;
    return;
  }

  sub_1BD0DE19C(v1 + *(v12 + 56), v6, &unk_1EBD43B30);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_1BD0DE53C(v6, &unk_1EBD43B30);
LABEL_19:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    LOBYTE(v13) = 0;
    v18 = 1;
    v14 = 0uLL;
    goto LABEL_20;
  }

  sub_1BD75D368(v6, v11, _s14PaymentSummaryVMa);
  if ((sub_1BD758F20() & 1) == 0 || (sub_1BD7591CC() & 1) == 0)
  {

    sub_1BD75D874(v11, _s14PaymentSummaryVMa);
    goto LABEL_19;
  }

  v19 = sub_1BE0533F4();
  v21 = v20;
  v23 = v22;
  v24 = [v13 monetaryValue];
  v25 = [v24 amount];

  if (v25)
  {
    v26 = sub_1BE0533F4();
    v28 = v27;
    v30 = v29;

    v31 = MEMORY[0x1BFB403F0](v19, v21, v23, v26, v28, v30);
    if (v31)
    {
      v15 = v19;
    }

    else
    {
      v15 = v26;
    }

    if (v31)
    {
      v16 = v21;
    }

    else
    {
      v16 = v28;
    }

    if (v31)
    {
      v32 = v23;
    }

    else
    {
      v32 = v30;
    }

    sub_1BD994058(v19, v21, v23);
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v39[0] = BYTE4(v38) & 1;
    LOBYTE(v13) = BYTE4(v38) & 1;
    sub_1BD75D874(v11, _s14PaymentSummaryVMa);
    v18 = 0;
    *v39 = v32;
    *&v39[4] = v34;
    *&v39[12] = v36;
    *&v39[20] = v38;
    v14 = *v39;
    v17 = *&v39[16];
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_1BD7595D4()
{
  sub_1BD758D50();
  if (!v1)
  {
    v7 = 0;
    return v7 & 1;
  }

  v2 = v1;
  v3 = *(v0 + *(type metadata accessor for PaymentPassHubView(0) + 72));
  if (v3)
  {
    v4 = [v3 ineligibleDetailsForCriteria_];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 isEligible] ^ 1;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 1;
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668);
  sub_1BE0516A4();
  v8 = sub_1BD6CF234(2);

  if ((v8 & 1) != 0 || v6)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52290);
    sub_1BE0516A4();
    if (!v12 || (v10 = [v12 code], v12, v10 != 40030))
    {
      if (sub_1BD758F20())
      {
        v11 = sub_1BD7591CC();

        v7 = v11 ^ 1;
        return v7 & 1;
      }
    }
  }

  v7 = 1;
  return v7 & 1;
}

void sub_1BD759770(char a1, uint64_t a2, char a3, void *a4, void *a5)
{
  v10 = type metadata accessor for PaymentPassHubView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v14 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v35 - v17;
  if (a1)
  {
    v19 = *(a2 + *(v10 + 68));
    if ((!v19 || [v19 type] != 2) && (a3 & 1) == 0)
    {
      v36 = a5;
      sub_1BD6B2184(8, 6u, 0);
      v20 = [a4 configuration];
      [v20 context];

      sub_1BD49C81C(v21);
      v22 = sub_1BE052404();

      LODWORD(v20) = PKHasSeenPaymentOfferRewardsExplanationScreen();

      if (v20)
      {
        sub_1BD759280(v37);
        v23 = a2 + *(v10 + 124);
        v24 = *(v23 + 16);
        v42[0] = *v23;
        v42[1] = v24;
        v26 = *v23;
        v25 = *(v23 + 16);
        v42[2] = *(v23 + 32);
        v43 = *(v23 + 48);
        v38 = v26;
        v39 = v25;
        v40 = *(v23 + 32);
        v41 = *(v23 + 48);
        sub_1BD0DE19C(v42, v44, &qword_1EBD394D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394D0);
        sub_1BE0516B4();
        v44[0] = v38;
        v44[1] = v39;
        v44[2] = v40;
        v45 = v41;
        sub_1BD0DE53C(v44, &qword_1EBD394D0);
        sub_1BD755098();
      }

      else
      {
        v27 = sub_1BE0528D4();
        (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
        sub_1BD75D80C(a2, &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassHubView);
        sub_1BE0528A4();
        v28 = a4;
        v29 = v36;
        v30 = sub_1BE052894();
        v31 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v32 = (v12 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
        v33 = swift_allocObject();
        v34 = MEMORY[0x1E69E85E0];
        *(v33 + 16) = v30;
        *(v33 + 24) = v34;
        sub_1BD75D368(v14, v33 + v31, type metadata accessor for PaymentPassHubView);
        *(v33 + v32) = v28;
        *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;
        sub_1BD122C00(0, 0, v18, &unk_1BE0F5190, v33);
      }
    }
  }
}

uint64_t sub_1BD759B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_1BE0528A4();
  v6[3] = sub_1BE052894();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1BD16DB04;

  return sub_1BD759BF0(a5, a6);
}

uint64_t sub_1BD759BF0(uint64_t a1, uint64_t a2)
{
  v3[46] = a2;
  v3[47] = v2;
  v3[45] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39350);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v4 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  v3[50] = v4;
  v3[51] = *(v4 - 8);
  v3[52] = swift_task_alloc();
  v3[53] = type metadata accessor for PaymentPassHubView(0);
  v3[54] = swift_task_alloc();
  sub_1BE0528A4();
  v3[55] = sub_1BE052894();
  v6 = sub_1BE052844();
  v3[56] = v6;
  v3[57] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD759D5C, v6, v5);
}

uint64_t sub_1BD759D5C()
{
  v42 = v0;
  v1 = v0[54];
  v3 = v0[46];
  v2 = v0[47];
  v0[38] = 0;
  sub_1BD75D80C(v2, v1, type metadata accessor for PaymentPassHubView);
  v4 = [v3 identifier];
  v5 = v4;
  v6 = v4;
  if (!v4)
  {
    sub_1BE052434();
    v6 = sub_1BE052404();

    sub_1BE052434();
    v5 = sub_1BE052404();
  }

  v0[58] = v5;
  v7 = v0[45];
  v8 = v4;
  v9 = [v7 dynamicContentPageForCriteriaIdentifier:v6 pageType:18];
  v0[59] = v9;

  swift_beginAccess();
  v0[38] = v9;
  if (v9)
  {

    v10 = v0[58];
    v11 = v0[59];
    v13 = v0[51];
    v12 = v0[52];
    v14 = v0[49];
    v15 = v0[50];
    v40 = v0[48];
    v16 = v0[45];
    v17 = v0[46];
    v18 = [v16 dynamicContentPageForCriteriaIdentifier:v10 pageType:18];

    v0[38] = v18;
    *v12 = v16;
    v12[1] = v17;
    v12[2] = v18;
    swift_storeEnumTagMultiPayload();
    sub_1BD75D80C(v12, v14, type metadata accessor for PaymentPassHubView.DetailSheet);
    (*(v13 + 56))(v14, 0, 1, v15);
    sub_1BD0DE19C(v14, v40, &qword_1EBD39350);
    v19 = v18;
    v20 = v16;
    v21 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0);
    sub_1BE0516B4();
    sub_1BD0DE53C(v14, &qword_1EBD39350);
    sub_1BD75D874(v12, type metadata accessor for PaymentPassHubView.DetailSheet);
    v22 = v0[54];
    if (v11)
    {
      sub_1BD75D874(v22, type metadata accessor for PaymentPassHubView);
    }

    else
    {
      v33 = (v22 + *(v0[53] + 108));
      v35 = *v33;
      v34 = v33[1];
      v0[34] = *v33;
      v0[35] = v34;
      v36 = v22;
      sub_1BE048964();
      sub_1BE048C84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668);
      sub_1BE0516A4();
      sub_1BD535FA8(2);
      v37 = v0[43];
      v0[36] = v35;
      v0[37] = v34;
      v0[44] = v37;
      sub_1BE0516B4();
      sub_1BD75D874(v36, type metadata accessor for PaymentPassHubView);
    }

    v38 = v0[1];

    return v38();
  }

  else
  {
    v23 = v0[46];
    v24 = (v0[47] + *(v0[53] + 108));
    v25 = *v24;
    v26 = v24[1];
    v0[26] = *v24;
    v0[27] = v26;
    sub_1BE048964();
    sub_1BE048C84();
    v0[60] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668);
    sub_1BE0516A4();
    sub_1BD2A598C(&v41, 2);
    v27 = v0[39];
    v0[28] = v25;
    v0[29] = v26;
    v0[40] = v27;
    sub_1BE0516B4();

    v28 = [v23 identifier];
    if (!v28)
    {
      sub_1BE052434();
      v28 = sub_1BE052404();
    }

    v0[61] = v28;
    v29 = v0[45];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B7020;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    sub_1BD112388(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1BD0E5E8C(0, &qword_1EBD3D270);
    sub_1BD214890(&qword_1EBD3E5A8, &qword_1EBD3D270);
    v31 = sub_1BE052A24();
    v0[62] = v31;

    v0[2] = v0;
    v0[7] = v0 + 64;
    v0[3] = sub_1BD75A370;
    v32 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C30);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD22B1E0;
    v0[13] = &block_descriptor_27_0;
    v0[14] = v32;
    [v29 updateDynamicContentPageForCriteriaIdentifier:v28 pageTypes:v31 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1BD75A370()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 504) = v2;
  if (v2)
  {

    v3 = *(v1 + 448);
    v4 = *(v1 + 456);
    v5 = sub_1BD75A740;
  }

  else
  {
    v3 = *(v1 + 448);
    v4 = *(v1 + 456);
    v5 = sub_1BD75A488;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD75A488()
{
  v1 = v0[61];
  v2 = v0[62];

  v3 = v0[58];
  v4 = v0[59];
  v6 = v0[51];
  v5 = v0[52];
  v7 = v0[49];
  v8 = v0[50];
  v22 = v0[48];
  v9 = v0[45];
  v10 = v0[46];
  v11 = [v9 dynamicContentPageForCriteriaIdentifier:v3 pageType:18];

  v0[38] = v11;
  *v5 = v9;
  v5[1] = v10;
  v5[2] = v11;
  swift_storeEnumTagMultiPayload();
  sub_1BD75D80C(v5, v7, type metadata accessor for PaymentPassHubView.DetailSheet);
  (*(v6 + 56))(v7, 0, 1, v8);
  sub_1BD0DE19C(v7, v22, &qword_1EBD39350);
  v12 = v11;
  v13 = v9;
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0);
  sub_1BE0516B4();
  sub_1BD0DE53C(v7, &qword_1EBD39350);
  sub_1BD75D874(v5, type metadata accessor for PaymentPassHubView.DetailSheet);
  if (v4)
  {
    sub_1BD75D874(v0[54], type metadata accessor for PaymentPassHubView);
  }

  else
  {
    v15 = v0[54];
    v16 = (v15 + *(v0[53] + 108));
    v18 = *v16;
    v17 = v16[1];
    v0[34] = *v16;
    v0[35] = v17;
    sub_1BE048964();
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668);
    sub_1BE0516A4();
    sub_1BD535FA8(2);
    v19 = v0[43];
    v0[36] = v18;
    v0[37] = v17;
    v0[44] = v19;
    sub_1BE0516B4();
    sub_1BD75D874(v15, type metadata accessor for PaymentPassHubView);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1BD75A740()
{
  v1 = v0[62];
  v2 = v0[61];
  v20 = v0[63];
  v3 = v0[52];
  v18 = v0[53];
  v19 = v0[54];
  v4 = v0[50];
  v5 = v0[51];
  v6 = v0[49];
  v17 = v0[48];
  v7 = v0[45];
  v8 = v0[46];

  swift_willThrow();

  *v3 = v7;
  v3[1] = v8;
  v3[2] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1BD75D80C(v3, v6, type metadata accessor for PaymentPassHubView.DetailSheet);
  (*(v5 + 56))(v6, 0, 1, v4);
  sub_1BD0DE19C(v6, v17, &qword_1EBD39350);
  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0);
  sub_1BE0516B4();
  sub_1BD0DE53C(v6, &qword_1EBD39350);
  sub_1BD75D874(v3, type metadata accessor for PaymentPassHubView.DetailSheet);
  v11 = (v19 + *(v18 + 108));
  v12 = *v11;
  v13 = v11[1];
  v0[30] = *v11;
  v0[31] = v13;
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE0516A4();
  sub_1BD535FA8(2);
  v14 = v0[41];
  v0[32] = v12;
  v0[33] = v13;
  v0[42] = v14;
  sub_1BE0516B4();

  sub_1BD75D874(v19, type metadata accessor for PaymentPassHubView);

  v15 = v0[1];

  return v15();
}

double sub_1BD75A98C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PaymentPassHubView(0);
  v9 = *(a1 + *(v8 + 72));
  if (v9)
  {
    v10 = [v9 ineligibleDetailsForCriteria_];
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1BD75AB74();
  v13 = v12;
  v14 = sub_1BD75ADFC(v10);
  v26 = v14;
  v16 = v15;
  if (v9)
  {
    v25 = v13;
    v17 = v11;
    sub_1BD49C81C(v14);
    v18 = sub_1BE052404();

    v19 = [v9 merchandisingOfferForPassUniqueID_];

    if (v19)
    {
      v20 = [v19 rewards];

      if (v20)
      {
        sub_1BD0E5E8C(0, &qword_1EBD3EB48);
        v19 = sub_1BE052744();
      }

      else
      {
        v19 = 0;
      }
    }

    v11 = v17;
    v13 = v25;
    if (a3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v19 = 0;
    if (a3)
    {
LABEL_16:

      v23 = 1;
      goto LABEL_17;
    }
  }

  v21 = *(a1 + *(v8 + 68));
  if (!v21)
  {

    goto LABEL_13;
  }

  v22 = [v21 type];

  if (v22 != 2)
  {
LABEL_13:
    v23 = 0;
    goto LABEL_17;
  }

  v23 = 2;
LABEL_17:
  *a4 = v11;
  *(a4 + 8) = v13;
  *(a4 + 16) = 0;
  *(a4 + 24) = v26;
  *(a4 + 32) = v16;
  *(a4 + 40) = v19;
  *(a4 + 48) = v23;
  result = 1.7101179e214;
  *(a4 + 56) = xmmword_1BE0F50D0;
  *(a4 + 72) = 2;
  *(a4 + 80) = 0x4042000000000000;
  return result;
}

id sub_1BD75AB74()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - v8;
  v21 = *(v0 + *(type metadata accessor for PaymentPassHubView(0) + 120));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268);
  sub_1BE0516A4();
  v10 = v20;
  if (v20)
  {
    (*(v2 + 104))(v9, *MEMORY[0x1E69B8088], v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BE0B69E0;
    v12 = [v10 programName];
    v13 = sub_1BE052434();
    v15 = v14;

    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1BD110550();
    *(v11 + 32) = v13;
    *(v11 + 40) = v15;
    v16 = sub_1BE04B714();

    v6 = v9;
LABEL_5:
    (*(v2 + 8))(v6, v1);
    return v16;
  }

  (*(v2 + 104))(v6, *MEMORY[0x1E69B8088], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    v16 = sub_1BE04B6F4();

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1BD75ADFC(void *a1)
{
  v115 = a1;
  v2 = sub_1BE053304();
  v107 = *(v2 - 8);
  v108 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v106 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v113 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v109 = &v106 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v111 = &v106 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v112 = &v106 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v114 = &v106 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v110 = &v106 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v106 - v27;
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = &v106 - v31;
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = &v106 - v35;
  MEMORY[0x1EEE9AC00](v34, v37);
  v39 = &v106 - v38;
  v40 = type metadata accessor for PaymentPassHubView(0);
  v41 = v1;
  v42 = (v1 + v40[27]);
  v44 = *v42;
  v43 = v42[1];
  *&v116 = v44;
  *(&v116 + 1) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668);
  sub_1BE0516A4();
  v45 = sub_1BD6CF234(2);

  if (v45)
  {
    (*(v6 + 104))(v39, *MEMORY[0x1E69B8088], v5);
    result = PKPassKitBundle();
    if (result)
    {
      v47 = result;
      v48 = v6;
      v49 = sub_1BE04B6F4();

      (*(v48 + 8))(v39, v5);
      return v49;
    }

    __break(1u);
    goto LABEL_60;
  }

  v50 = v5;
  v51 = v6;
  if (!v115)
  {
    goto LABEL_8;
  }

  v52 = v115;
  if ([v52 isEligible])
  {

LABEL_8:
    v116 = *(v41 + v40[32]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52290);
    sub_1BE0516A4();
    v53 = v119;
    if (v119)
    {
      v54 = [v119 code];

      if (v54 == 40030)
      {
        v55 = v51;
        v28 = v114;
        (*(v51 + 104))(v114, *MEMORY[0x1E69B8088], v50);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v52 = result;
        v49 = sub_1BE04B6F4();
LABEL_30:

        (*(v55 + 8))(v28, v50);
        return v49;
      }
    }

    v116 = *(v41 + v40[30]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268);
    sub_1BE0516A4();
    v56 = v119;
    v57 = v50;
    if (v119)
    {
      v58 = v51;
      if ([v119 isRedeemable])
      {
        if (sub_1BD758F20())
        {
          v59 = [v56 monetaryValue];
          v60 = [v56 type];
          v61 = [v59 formattedStringValue];
          if (!v61)
          {

            return 0;
          }

          v62 = v61;
          v63 = sub_1BE052434();
          v65 = v64;

          if ([v56 type] == 3)
          {
            v66 = v109;
            (*(v58 + 104))(v109, *MEMORY[0x1E69B8088], v50);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
            v67 = swift_allocObject();
            *(v67 + 16) = xmmword_1BE0B69E0;
            *(v67 + 56) = MEMORY[0x1E69E6158];
            *(v67 + 64) = sub_1BD110550();
            *(v67 + 32) = v63;
            *(v67 + 40) = v65;
            v49 = sub_1BE04B714();

LABEL_58:

            v81 = *(v58 + 8);
            v82 = v66;
            goto LABEL_37;
          }

          v115 = v63;
          v90 = [v56 value];
          if (v90)
          {
            v116 = 0uLL;
            v117 = 0;
            v118 = 1;
            v91 = v90;
            sub_1BE0533E4();

            if (v118 != 1)
            {
              v92 = v106;
              MEMORY[0x1BFB37210]();
              sub_1BD75D68C(&qword_1EBD45110, MEMORY[0x1E6969FD0]);
              v93 = v108;
              sub_1BE053464();
              (*(v107 + 8))(v92, v93);
              v94 = v116;
              if (v60 == 2)
              {
                v114 = "ANCE_TYPE_UNKNOWN";
                v95 = v109;
                (*(v58 + 104))(v109, *MEMORY[0x1E69B8088], v50);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
                v101 = swift_allocObject();
                *(v101 + 16) = xmmword_1BE0B6CA0;
                v102 = MEMORY[0x1E69E6158];
                *(v101 + 56) = MEMORY[0x1E69E6158];
                v103 = sub_1BD110550();
                *(v101 + 32) = v94;
                *(v101 + 96) = v102;
                *(v101 + 104) = v103;
                v104 = v115;
                *(v101 + 64) = v103;
                *(v101 + 72) = v104;
                *(v101 + 80) = v65;
                goto LABEL_55;
              }

              v114 = v116;
              if (v60 == 1)
              {
                v113 = "DEEM_REWARDS_BALANCE_TYPE_MILES";
                v95 = v109;
                (*(v58 + 104))(v109, *MEMORY[0x1E69B8088], v50);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
                v96 = swift_allocObject();
                *(v96 + 16) = xmmword_1BE0B6CA0;
                v97 = MEMORY[0x1E69E6158];
                *(v96 + 56) = MEMORY[0x1E69E6158];
                v98 = sub_1BD110550();
                v99 = v115;
                *(v96 + 32) = v114;
                *(v96 + 40) = *(&v94 + 1);
                *(v96 + 96) = v97;
                *(v96 + 104) = v98;
                *(v96 + 64) = v98;
                *(v96 + 72) = v99;
                *(v96 + 80) = v65;
LABEL_55:
                v49 = sub_1BE04B714();

                (*(v58 + 8))(v95, v50);
                return v49;
              }

              v57 = v50;
            }
          }

          v66 = v109;
          (*(v58 + 104))(v109, *MEMORY[0x1E69B8088], v57);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
          v105 = swift_allocObject();
          *(v105 + 16) = xmmword_1BE0B69E0;
          *(v105 + 56) = MEMORY[0x1E69E6158];
          *(v105 + 64) = sub_1BD110550();
          *(v105 + 32) = v115;
          *(v105 + 40) = v65;
          v49 = sub_1BE04B714();

          goto LABEL_58;
        }

        v78 = v111;
        (*(v51 + 104))(v111, *MEMORY[0x1E69B8088], v50);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v80 = result;
        v49 = sub_1BE04B6F4();
      }

      else
      {
        v78 = v112;
        (*(v51 + 104))(v112, *MEMORY[0x1E69B8088], v50);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v79 = result;
        v49 = sub_1BE04B6F4();
      }

      v81 = *(v51 + 8);
      v82 = v78;
LABEL_37:
      v81(v82, v57);
      return v49;
    }

    v75 = v113;
    (*(v51 + 104))(v113, *MEMORY[0x1E69B8088], v50);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v76 = result;
    v49 = sub_1BE04B6F4();

    (*(v51 + 8))(v75, v50);
    return v49;
  }

  v68 = [v52 reason];
  if (v68 <= 12)
  {
    if (v68 == 7)
    {
      v86 = v6;
      (*(v6 + 104))(v36, *MEMORY[0x1E69B8088], v50);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v87 = result;
      v49 = sub_1BE04B6F4();

      (*(v86 + 8))(v36, v50);
      return v49;
    }

    if (v68 == 8)
    {
      v69 = *(v41 + v40[18]);
      if (v69)
      {
        v70 = [v69 configuration];
        v71 = [v70 currencyCode];

        if (v71)
        {
          v72 = sub_1BE052434();
          v74 = v73;

          v69 = v72;
LABEL_53:
          sub_1BD480FEC(v69, v74);
          v49 = v100;

          return v49;
        }

        v69 = 0;
      }

      v74 = 0;
      goto LABEL_53;
    }

LABEL_39:
    v83 = v6;
    v84 = v110;
    (*(v6 + 104))(v110, *MEMORY[0x1E69B8088], v5);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v85 = result;
    v49 = sub_1BE04B6F4();

    (*(v83 + 8))(v84, v50);
    return v49;
  }

  if (v68 != 13)
  {
    if (v68 == 14)
    {
      v55 = v6;
      (*(v6 + 104))(v28, *MEMORY[0x1E69B8088], v50);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v77 = result;
      v49 = sub_1BE04B6F4();

      goto LABEL_30;
    }

    goto LABEL_39;
  }

  v88 = v6;
  (*(v6 + 104))(v32, *MEMORY[0x1E69B8088], v50);
  result = PKPassKitBundle();
  if (result)
  {
    v89 = result;
    v49 = sub_1BE04B6F4();

    (*(v88 + 8))(v32, v50);
    return v49;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_1BD75BBD4(void *a1, void *a2)
{
  sub_1BE053D74();
  v4 = [a1 formattedStringValue];
  if (v4)
  {
    v5 = v4;
    sub_1BE052434();
  }

  sub_1BE052524();

  v6 = [a2 monetaryValue];
  v7 = [v6 formattedStringValue];

  if (v7)
  {
    sub_1BE052434();
  }

  sub_1BE052524();

  return sub_1BE053D54();
}

void sub_1BD75BCE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v30 - v10);
  v12 = type metadata accessor for PaymentPassHubView(0);
  v13 = (a2 + v12[27]);
  v14 = v13[1];
  v33 = *v13;
  v15 = v33;
  v34 = v14;
  sub_1BE048964();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668);
  sub_1BE0516A4();
  sub_1BD535FA8(1);
  v31 = v15;
  v32 = v14;
  v30 = v35;
  sub_1BE0516B4();

  v16 = (a2 + v12[29]);
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v33) = *v16;
  v34 = v18;
  LOBYTE(v31) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  sub_1BD0DE19C(a1, v11, &unk_1EBD57C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v11;
    if (*v11)
    {
      v20 = v19;
      v21 = sub_1BE04A844();

      v22 = (a2 + v12[26]);
      v23 = v22[1];
      v33 = *v22;
      v24 = v33;
      v34 = v23;
      v31 = v21;
      sub_1BE048964();
      v25 = v21;
      v26 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0);
      sub_1BE0516B4();
    }

    else
    {
      LOBYTE(v33) = v17;
      v34 = v18;
      LOBYTE(v31) = 1;
      sub_1BE0516B4();
    }
  }

  else
  {
    sub_1BD75D368(v11, v7, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
    v27 = *(v7 + 1);
    if (v27)
    {
      v28 = *(a2 + v12[19]);
      v29 = v27;
      v28(v27);
    }

    sub_1BD75D874(v7, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
  }
}

uint64_t sub_1BD75BFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 520) = v15;
  *(v8 + 504) = v14;
  *(v8 + 488) = a7;
  *(v8 + 496) = a8;
  *(v8 + 472) = a5;
  *(v8 + 480) = a6;
  *(v8 + 464) = a4;
  v9 = sub_1BE04D214();
  *(v8 + 528) = v9;
  *(v8 + 536) = *(v9 - 8);
  *(v8 + 544) = swift_task_alloc();
  *(v8 + 552) = swift_task_alloc();
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  sub_1BE0528A4();
  *(v8 + 576) = sub_1BE052894();
  v11 = sub_1BE052844();
  *(v8 + 584) = v11;
  *(v8 + 592) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1BD75C118, v11, v10);
}

uint64_t sub_1BD75C118()
{
  v2 = v0[60];
  v1 = v0[61];
  v3 = sub_1BE052404();
  v0[75] = v3;
  v0[2] = v0;
  v0[7] = v0 + 658;
  v0[3] = sub_1BD75C254;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C30);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD22B1E0;
  v0[13] = &block_descriptor_171;
  v0[14] = v4;
  [v2 updateRewardsBalanceForPass:v1 criteriaIdentifier:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD75C254()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 608) = v2;
  v3 = *(v1 + 592);
  v4 = *(v1 + 584);
  if (v2)
  {
    v5 = sub_1BD75C6D0;
  }

  else
  {
    v5 = sub_1BD75C384;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD75C384()
{
  v36 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 480);
  v3 = *(v0 + 464);

  v4 = sub_1BE052404();
  v5 = [v2 rewardsBalanceForPassUniqueID_];

  v6 = (v3 + *(type metadata accessor for PaymentPassHubView(0) + 120));
  v7 = *v6;
  v8 = v6[1];
  *(v0 + 400) = *v6;
  *(v0 + 408) = v8;
  *(v0 + 448) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268);
  sub_1BE0516B4();
  *(v0 + 416) = v7;
  *(v0 + 424) = v8;
  sub_1BE0516A4();
  v9 = *(v0 + 456);
  if (v9)
  {
    sub_1BE04D154();
    v10 = v9;
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C14();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 560);
    v15 = *(v0 + 536);
    v16 = *(v0 + 528);
    if (v13)
    {
      v34 = *(v0 + 528);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35 = v18;
      *v17 = 136315138;
      v19 = [v10 identifier];
      v20 = sub_1BE052434();
      v33 = v14;
      v22 = v21;

      v23 = sub_1BD123690(v20, v22, &v35);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_1BD026000, v11, v12, "Fetched redeemable payment rewards balance (%s)", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1BFB45F20](v18, -1, -1);
      MEMORY[0x1BFB45F20](v17, -1, -1);

      (*(v15 + 8))(v33, v34);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }
  }

  else
  {
    sub_1BE04D154();
    v24 = sub_1BE04D204();
    v25 = sub_1BE052C14();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 568);
    v28 = *(v0 + 536);
    v29 = *(v0 + 528);
    if (v26)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1BD026000, v24, v25, "Fetched no redeemable payment rewards balance", v30, 2u);
      MEMORY[0x1BFB45F20](v30, -1, -1);
    }

    (*(v28 + 8))(v27, v29);
  }

  sub_1BD75CB14(*(v0 + 464), *(v0 + 472));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1BD75C6D0()
{
  v1 = *(v0 + 600);

  swift_willThrow();

  v2 = sub_1BE04A844();
  if ([v2 code] == 40030)
  {
    sub_1BE04D154();
    v3 = sub_1BE04D204();
    v4 = sub_1BE052C14();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BD026000, v3, v4, "Payment rewards balance opted-out", v5, 2u);
      MEMORY[0x1BFB45F20](v5, -1, -1);
    }

    v6 = *(v0 + 552);
    v7 = *(v0 + 536);
    v8 = *(v0 + 528);
    v9 = *(v0 + 464);

    (*(v7 + 8))(v6, v8);
    v10 = type metadata accessor for PaymentPassHubView(0);
    *(v0 + 368) = *(v9 + v10[32]);
    *(v0 + 432) = v2;
    v11 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52290);
    sub_1BE0516B4();
    *(v0 + 384) = *(v9 + v10[30]);
    *(v0 + 440) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268);
    sub_1BE0516B4();
    v12 = (v9 + v10[31]);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    *(v0 + 248) = *(v12 + 6);
    *(v0 + 232) = v15;
    *(v0 + 216) = v14;
    *(v0 + 200) = v13;
    v16 = *v12;
    v17 = v12[1];
    v18 = v12[2];
    *(v0 + 304) = *(v12 + 6);
    *(v0 + 272) = v17;
    *(v0 + 288) = v18;
    *(v0 + 256) = v16;
    *(v0 + 616) = 0u;
    *(v0 + 632) = 0u;
    *(v0 + 641) = 0u;
    *(v0 + 657) = 1;
    sub_1BD0DE19C(v0 + 200, v0 + 312, &qword_1EBD394D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394D0);
    sub_1BE0516B4();
    v19 = *(v0 + 272);
    *(v0 + 144) = *(v0 + 256);
    *(v0 + 160) = v19;
    *(v0 + 176) = *(v0 + 288);
    *(v0 + 192) = *(v0 + 304);
    sub_1BD0DE53C(v0 + 144, &qword_1EBD394D0);
    v20 = *(v9 + v10[17]);
    if (v20)
    {
      v21 = [v20 type];
      v22 = *(v0 + 608);
      if (v21 == 2)
      {
        (*(*(v0 + 464) + v10[19]))(0);
      }

      v23 = v22;
    }

    else
    {
      v34 = *(v0 + 608);

      v23 = v34;
    }
  }

  else
  {
    v24 = *(v0 + 608);
    sub_1BE04D154();
    v25 = v24;
    v26 = sub_1BE04D204();
    v27 = sub_1BE052C34();

    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 608);
    if (v28)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = v29;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_1BD026000, v26, v27, "Could not refresh payment rewards balance, %@", v30, 0xCu);
      sub_1BD0DE53C(v31, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v31, -1, -1);
      MEMORY[0x1BFB45F20](v30, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
  }

  sub_1BD75CB14(*(v0 + 464), *(v0 + 472));

  v35 = *(v0 + 8);

  return v35();
}

void sub_1BD75CB14(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for PaymentPassHubView(0);
  v5 = *(a1 + *(v4 + 108));
  sub_1BE048964();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668);
  sub_1BE0516A4();
  sub_1BD535FA8(2);
  sub_1BE0516B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268);
  sub_1BE0516A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52290);
  sub_1BE0516A4();
  sub_1BD6B4444(v5, a2, v5, a1 + *(v4 + 56));
}

uint64_t sub_1BD75CC60()
{
  swift_getKeyPath();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB28);
  sub_1BD0DE4F4(&qword_1EBD3EB38, &qword_1EBD3EB28);
  sub_1BD214890(&qword_1EBD3EB40, &qword_1EBD3EB48);
  sub_1BD10E5DC();
  return sub_1BE0519C4();
}

void sub_1BD75CD68(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 merchandisingDynamicContent];
  if (!v3)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v7 = 0;
    v9 = 0xE000000000000000;
LABEL_12:
    v21 = 3;
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [v3 title];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BE052434();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v14 = [v4 subtitle];
  if (v14)
  {
    v15 = v14;
    v12 = sub_1BE052434();
    v13 = v16;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v17 = [v4 systemIcon];
  if (!v17)
  {

    v10 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  v18 = v17;
  v19 = [v17 imageName];

  v10 = sub_1BE052434();
  v11 = v20;

  v21 = 2;
LABEL_13:
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = 0;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v21;
  *(a2 + 80) = 0x4042000000000000;
}

uint64_t sub_1BD75CEE4(uint64_t a1)
{
  v4 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD126968;

  return sub_1BD758C50(a1, v6, v7, v1 + v5);
}

uint64_t sub_1BD75D004(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for PaymentPassHubView(0);
  v5 = (v4 - 8);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v9 = (v1 + v5[29]);
  v10 = v9[1];
  *&v22 = *v9;
  *(&v22 + 1) = v10;
  sub_1BE048964();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668);
  sub_1BE0516A4();
  sub_1BD2A598C(&v24, 1);
  v20 = v22;
  v21 = v10;
  v19[1] = v23;
  sub_1BE0516B4();

  v22 = *(v1 + v5[28]);
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0);
  sub_1BE0516B4();
  v11 = (v1 + v5[25]);
  v13 = *v11;
  v12 = v11[1];
  *&v22 = v13;
  *(&v22 + 1) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394B0);
  sub_1BE0516A4();
  if (*(v1 + v5[24]))
  {
    v14 = v20;
    sub_1BD75D80C(v2, v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassHubView);
    v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v16 = swift_allocObject();
    sub_1BD75D368(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PaymentPassHubView);
    v17 = sub_1BE048964();
    sub_1BD8C1B80(v17, a1 & 1, sub_1BD75D2B4, v16);
  }

  else
  {
    type metadata accessor for PresentationContext();
    sub_1BD75D68C(&unk_1EBD361B0, type metadata accessor for PresentationContext);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD75D2D4()
{
  result = qword_1EBD52280;
  if (!qword_1EBD52280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52278);
    sub_1BD10E5DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52280);
  }

  return result;
}

uint64_t sub_1BD75D368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD75D3D0(uint64_t a1)
{
  v3 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v1 + 24);
  v15 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1BD0F985C;

  return sub_1BD75BFDC(a1, v15, v14, v1 + v4, v8, v9, v10, v11);
}

void sub_1BD75D554()
{
  v1 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8);

  sub_1BD759770(v4, v0 + v2, v5, v7, v6);
}

unint64_t sub_1BD75D600()
{
  result = qword_1EBD522A8;
  if (!qword_1EBD522A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52298);
    sub_1BD638FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD522A8);
  }

  return result;
}

uint64_t sub_1BD75D68C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD75D6D4(uint64_t a1)
{
  v4 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD126968;

  return sub_1BD759B2C(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_1BD75D80C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD75D874(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BD75D8D4()
{
  v1 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v5 = v0 + ((*(v1 + 80) + 26) & ~*(v1 + 80));

  sub_1BD757D08(v2, v3, v4, v5);
}

uint64_t objectdestroyTm_87()
{
  v1 = v0;
  v2 = type metadata accessor for PaymentPassHubView(0);
  v3 = *(*(v2 - 1) + 80);
  v157 = *(*(v2 - 1) + 64);
  swift_unknownObjectRelease();
  v158 = (v3 + 32) & ~v3;
  v4 = v0 + v158;
  v5 = (v0 + v158 + v2[5]);
  type metadata accessor for WrappedPass(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v7 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v8 = sub_1BE04CF34();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v9 = type metadata accessor for AvailablePass(0);
  v10 = v5 + v9[6];
  v160 = type metadata accessor for IdentityCredential(0);
  v155 = *(*(v160 - 8) + 48);
  if (!v155(v10, 1))
  {

    v11 = *(v160 + 20);
    v12 = sub_1BE04DA84();
    (*(*(v12 - 8) + 8))(&v10[v11], v12);
  }

  v13 = (v5 + v9[7]);
  v162 = type metadata accessor for BalanceInfo(0);
  v154 = *(*(v162 - 8) + 48);
  if (!v154(v13, 1))
  {

    v14 = *(v162 + 28);
    v15 = sub_1BE04AF64();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v13 + v14, 1, v15))
    {
      (*(v16 + 8))(v13 + v14, v15);
    }
  }

  v17 = v5 + v9[10];
  v159 = type metadata accessor for PassEligibleRewardsInfo();
  v153 = *(*(v159 - 8) + 48);
  v161 = v9;
  v156 = v1;
  if (!v153(v17, 1))
  {
    if (*(v17 + 2) != 1)
    {
    }

    if (*(v17 + 9) != 1)
    {
    }

    v18 = *(v159 + 28);
    v19 = sub_1BE04AF64();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (!v21(&v17[v18], 1, v19))
    {
      (*(v20 + 8))(&v17[v18], v19);
    }

    v22 = *(v159 + 32);
    if (!v21(&v17[v22], 1, v19))
    {
      (*(v20 + 8))(&v17[v22], v19);
    }
  }

  v23 = (v5 + v9[12]);
  if (*v23)
  {
  }

  v24 = (v5 + v9[13]);
  if (*v24)
  {
  }

  v25 = (v4 + v2[7]);
  v152 = *(*(v9 - 1) + 48);
  if (!v152(v25, 1, v9))
  {
    v26 = swift_getEnumCaseMultiPayload();
    if (v26 == 2)
    {

      v27 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v28 = sub_1BE04CF34();
      (*(*(v28 - 8) + 8))(v25 + v27, v28);
    }

    else if (v26 <= 1)
    {
    }

    v29 = v25 + v9[6];
    if (!(v155)(v29, 1, v160))
    {

      v30 = *(v160 + 20);
      v31 = sub_1BE04DA84();
      (*(*(v31 - 8) + 8))(&v29[v30], v31);
    }

    v32 = (v25 + v9[7]);
    if (!(v154)(v32, 1, v162))
    {

      v33 = *(v162 + 28);
      v34 = sub_1BE04AF64();
      v35 = *(v34 - 8);
      if (!(*(v35 + 48))(v32 + v33, 1, v34))
      {
        (*(v35 + 8))(v32 + v33, v34);
      }
    }

    v36 = v25 + v9[10];
    if (!(v153)(v36, 1, v159))
    {
      if (*(v36 + 2) != 1)
      {
      }

      if (*(v36 + 9) != 1)
      {
      }

      v37 = *(v159 + 28);
      v38 = sub_1BE04AF64();
      v39 = *(v38 - 8);
      v40 = *(v39 + 48);
      if (!v40(&v36[v37], 1, v38))
      {
        (*(v39 + 8))(&v36[v37], v38);
      }

      v41 = *(v159 + 32);
      if (!v40(&v36[v41], 1, v38))
      {
        (*(v39 + 8))(&v36[v41], v38);
      }
    }

    v42 = (v25 + v9[12]);
    if (*v42)
    {
    }

    v43 = (v25 + v9[13]);
    if (*v43)
    {
    }
  }

  v44 = type metadata accessor for Passes(0);

  v45 = v4 + v2[8];
  if (*(v45 + 48))
  {
    sub_1BD0D455C(*v45, *(v45 + 8), *(v45 + 16));
  }

  v46 = v4 + v2[14];
  v47 = _s14PaymentSummaryVMa();
  if (!(*(*(v47 - 1) + 48))(v46, 1, v47))
  {

    v48 = _s11TotalAmountVMa(0);
    v49 = v46 + v48[10];
    _s22SummaryItemPricingTypeOMa(0);
    v50 = swift_getEnumCaseMultiPayload();
    v151 = v47;
    switch(v50)
    {
      case 2:

        break;
      case 1:
        v58 = sub_1BE04AF64();
        (*(*(v58 - 8) + 8))(v49, v58);
        break;
      case 0:
        v148 = v44;
        v51 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
        v52 = *(v51 + 24);
        v53 = sub_1BE04AF64();
        v54 = *(v53 - 8);
        v55 = *(v54 + 48);
        if (!v55(v49 + v52, 1, v53))
        {
          (*(v54 + 8))(v49 + v52, v53);
        }

        v56 = v54;
        v57 = *(v51 + 28);
        if (!v55(v49 + v57, 1, v53))
        {
          (*(v56 + 8))(v49 + v57, v53);
        }

        v9 = v161;
        v44 = v148;
        v47 = v151;
        break;
    }

    v59 = (v46 + v48[15]);
    v60 = v48;
    v61 = type metadata accessor for PeerPaymentModel();
    if ((*(*(v61 - 1) + 48))(v59, 1, v61))
    {
      goto LABEL_91;
    }

    v146 = v60;
    v149 = v44;

    v62 = (v59 + v61[5]);
    v63 = swift_getEnumCaseMultiPayload();
    if (v63 == 2)
    {

      v65 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v66 = sub_1BE04CF34();
      (*(*(v66 - 8) + 8))(v62 + v65, v66);
    }

    else
    {
      if (v63 != 1)
      {
        v64 = v160;
        if (!v63)
        {

          v64 = v160;
        }

        goto LABEL_68;
      }
    }

    v64 = v160;
LABEL_68:
    v67 = v62 + v161[6];
    if (!(v155)(v67, 1, v64))
    {

      v68 = *(v160 + 20);
      v69 = sub_1BE04DA84();
      (*(*(v69 - 8) + 8))(&v67[v68], v69);
    }

    v70 = (v62 + v161[7]);
    if (!(v154)(v70, 1, v162))
    {

      v71 = *(v162 + 28);
      v72 = sub_1BE04AF64();
      v73 = *(v72 - 8);
      if (!(*(v73 + 48))(v70 + v71, 1, v72))
      {
        (*(v73 + 8))(v70 + v71, v72);
      }
    }

    v74 = v62 + v161[10];
    if (!(v153)(v74, 1, v159))
    {
      if (*(v74 + 2) != 1)
      {
      }

      if (*(v74 + 9) != 1)
      {
      }

      v75 = *(v159 + 28);
      v76 = sub_1BE04AF64();
      v144 = *(v76 - 8);
      v143 = v75;
      v77 = &v74[v75];
      v78 = *(v144 + 48);
      if (!v78(v77, 1, v76))
      {
        (*(v144 + 8))(&v74[v143], v76);
      }

      v79 = *(v159 + 32);
      if (!v78(&v74[v79], 1, v76))
      {
        (*(v144 + 8))(&v74[v79], v76);
      }
    }

    v80 = (v62 + v161[12]);
    if (*v80)
    {
    }

    v81 = (v62 + v161[13]);
    v47 = v151;
    if (*v81)
    {
    }

    v9 = v161;

    v82 = v59;
    v83 = (v59 + v61[6]);
    v44 = v149;
    if (*v83 != 1)
    {

      if (v83[3])
      {
      }

      v82 = v59;
    }

    v60 = v146;
LABEL_91:
    v84 = (v46 + v60[16]);
    v1 = v156;
    if (!(*(*(v44 - 8) + 48))(v84, 1, v44))
    {
      if (!v152(v84, 1, v9))
      {
        v85 = swift_getEnumCaseMultiPayload();
        v150 = v44;
        if (v85 == 2)
        {

          v86 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v87 = sub_1BE04CF34();
          (*(*(v87 - 8) + 8))(v84 + v86, v87);
        }

        else if (v85 <= 1)
        {
        }

        v88 = v84 + v9[6];
        if (!(v155)(v88, 1, v160))
        {

          v89 = *(v160 + 20);
          v90 = sub_1BE04DA84();
          (*(*(v90 - 8) + 8))(&v88[v89], v90);
        }

        v91 = (v84 + v9[7]);
        if (!(v154)(v91, 1, v162))
        {

          v92 = *(v162 + 28);
          v93 = sub_1BE04AF64();
          v94 = *(v93 - 8);
          if (!(*(v94 + 48))(v91 + v92, 1, v93))
          {
            (*(v94 + 8))(v91 + v92, v93);
          }
        }

        v95 = v84 + v161[10];
        if (!(v153)(v95, 1, v159))
        {
          if (*(v95 + 2) != 1)
          {
          }

          if (*(v95 + 9) != 1)
          {
          }

          v96 = *(v159 + 28);
          v97 = sub_1BE04AF64();
          v147 = *(v97 - 8);
          v145 = v96;
          v98 = &v95[v96];
          v99 = *(v147 + 48);
          if (!v99(v98, 1, v97))
          {
            (*(v147 + 8))(&v95[v145], v97);
          }

          v100 = *(v159 + 32);
          if (!v99(&v95[v100], 1, v97))
          {
            (*(v147 + 8))(&v95[v100], v97);
          }
        }

        v101 = (v84 + v161[12]);
        if (*v101)
        {
        }

        v102 = (v84 + v161[13]);
        v47 = v151;
        if (*v102)
        {
        }

        v9 = v161;

        v44 = v150;
      }
    }

    if (*(v46 + v47[7] + 8))
    {
    }

    v103 = v46 + v47[9];
    if (*(v103 + 8))
    {
    }

    v104 = v46 + v47[10];
    if (*(v104 + 8))
    {
    }

    v105 = v46 + v47[11];
    v106 = type metadata accessor for DeferredPaymentRequest();
    if (!(*(*(v106 - 1) + 48))(v105, 1, v106))
    {

      v107 = v106[7];
      v108 = sub_1BE04AF64();
      v109 = *(v108 - 8);
      if (!(*(v109 + 48))(v105 + v107, 1, v108))
      {
        (*(v109 + 8))(v105 + v107, v108);
      }

      v110 = v106[8];
      v111 = sub_1BE04B3B4();
      v112 = *(v111 - 8);
      if (!(*(v112 + 48))(v105 + v110, 1, v111))
      {
        (*(v112 + 8))(v105 + v110, v111);
      }

      v9 = v161;
    }
  }

  v113 = (v4 + v2[24]);
  v114 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  if (!(*(*(v114 - 8) + 48))(v113, 1, v114))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v115 = v113 + 2;
    }

    else
    {
      if (!v152(v113, 1, v9))
      {
        v116 = swift_getEnumCaseMultiPayload();
        if (v116 == 2)
        {

          v118 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v119 = sub_1BE04CF34();
          (*(*(v119 - 8) + 8))(v113 + v118, v119);
          v117 = v162;
        }

        else
        {
          v117 = v162;
          if (v116 <= 1)
          {
          }
        }

        v120 = v113 + v9[6];
        if (!(v155)(v120, 1, v160))
        {

          v121 = *(v160 + 20);
          v122 = sub_1BE04DA84();
          (*(*(v122 - 8) + 8))(&v120[v121], v122);
        }

        v123 = (v113 + v9[7]);
        if (!(v154)(v123, 1, v117))
        {

          v124 = *(v117 + 28);
          v125 = sub_1BE04AF64();
          v126 = *(v125 - 8);
          if (!(*(v126 + 48))(v123 + v124, 1, v125))
          {
            (*(v126 + 8))(v123 + v124, v125);
          }
        }

        v127 = v113 + v9[10];
        if (!(v153)(v127, 1, v159))
        {
          if (*(v127 + 2) != 1)
          {
          }

          if (*(v127 + 9) != 1)
          {
          }

          v128 = *(v159 + 28);
          v129 = sub_1BE04AF64();
          v130 = *(v129 - 8);
          v131 = *(v130 + 48);
          if (!v131(&v127[v128], 1, v129))
          {
            (*(v130 + 8))(&v127[v128], v129);
          }

          v132 = *(v159 + 32);
          v1 = v156;
          v9 = v161;
          if (!v131(&v127[v132], 1, v129))
          {
            (*(v130 + 8))(&v127[v132], v129);
          }
        }

        v133 = (v113 + v9[12]);
        if (*v133)
        {
        }

        v134 = (v113 + v9[13]);
        if (*v134)
        {
        }
      }

      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);

      v136 = v113 + *(v135 + 64);

      v115 = (v136 + 32);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0);

  v137 = (v4 + v2[25]);
  v138 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v138 - 8) + 48))(v137, 1, v138))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v139 = sub_1BE04AA64();
      (*(*(v139 - 8) + 8))(v137, v139);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  v140 = v2[33];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v141 = sub_1BE04E354();
    (*(*(v141 - 8) + 8))(v4 + v140, v141);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD75F6F8(uint64_t a1)
{
  v4 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD126968;

  return sub_1BD757F3C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1BD75F830(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t block_copy_helper_45_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

void sub_1BD75FA10(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PKPassActionWidgetViewModel__account;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    sub_1BD75FBB0();
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD3CCE0);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1BD75FB80(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD75FA10(v1);
}

unint64_t sub_1BD75FBB0()
{
  result = qword_1EBD522B8;
  if (!qword_1EBD522B8)
  {
    type metadata accessor for PassActionWidgetViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD522B8);
  }

  return result;
}

uint64_t type metadata accessor for PassActionWidgetViewModel()
{
  result = qword_1EBD52308;
  if (!qword_1EBD52308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1BD75FC78(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___PKPassActionWidgetViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD75FBB0();
  sub_1BE04B594();

  *v4 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  v4[7] = sub_1BD75F92C();
  return sub_1BD75FD80;
}

void sub_1BD75FEC8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PKPassActionWidgetViewModel__bankConnectAccount;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    sub_1BD75FBB0();
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &unk_1EBD59D60);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1BD760038(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD75FEC8(v1);
}

void (*sub_1BD76008C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___PKPassActionWidgetViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD75FBB0();
  sub_1BE04B594();

  *v4 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  v4[7] = sub_1BD75FDE4();
  return sub_1BD760194;
}

void sub_1BD7601F8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void *sub_1BD7602C8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_getKeyPath();
  sub_1BD75FBB0();
  v6 = a1;
  sub_1BE04B594();

  v7 = *a4;
  swift_beginAccess();
  v8 = *&v6[v7];
  v9 = v8;

  return v8;
}

void *sub_1BD760388(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1BD75FBB0();
  sub_1BE04B594();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = v5;
  return v5;
}

void sub_1BD760470(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PKPassActionWidgetViewModel__paymentPass;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    sub_1BD75FBB0();
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &unk_1EBD40340);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

id sub_1BD7605E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1BD75FBB0();
  sub_1BE04B594();

  v6 = *a2;
  swift_beginAccess();
  v7 = *(v5 + v6);
  *a3 = v7;

  return v7;
}

void sub_1BD760688(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD760470(v1);
}

void sub_1BD7606B8(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = *(a1 + v5);
  *(a1 + v5) = a2;
  v7 = a2;
}

void (*sub_1BD760748(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___PKPassActionWidgetViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD75FBB0();
  sub_1BE04B594();

  *v4 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  v4[7] = sub_1BD760254();
  return sub_1BD760850;
}

uint64_t sub_1BD760A40()
{
  swift_getKeyPath();
  sub_1BD75FBB0();
  sub_1BE04B594();

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1BD760B94()
{
  swift_getKeyPath();
  sub_1BD75FBB0();
  sub_1BE04B584();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD760C34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD75FBB0();
  sub_1BE04B594();

  v4 = OBJC_IVAR___PKPassActionWidgetViewModel__delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1BD760CCC()
{
  swift_getKeyPath();
  sub_1BD75FBB0();
  sub_1BE04B584();
}

uint64_t sub_1BD760D68(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___PKPassActionWidgetViewModel__delegate;
  swift_beginAccess();
  *(a1 + v4) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void (*sub_1BD760DF4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___PKPassActionWidgetViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD75FBB0();
  sub_1BE04B594();

  *v4 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  v4[7] = sub_1BD760920();
  return sub_1BD760EFC;
}

id PassActionWidgetViewModel.__allocating_init(viewStyle:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___PKPassActionWidgetViewModel__account] = 0;
  *&v3[OBJC_IVAR___PKPassActionWidgetViewModel__bankConnectAccount] = 0;
  *&v3[OBJC_IVAR___PKPassActionWidgetViewModel__paymentPass] = 0;
  *&v3[OBJC_IVAR___PKPassActionWidgetViewModel__delegate] = 0;
  sub_1BE04B5C4();
  *&v3[OBJC_IVAR___PKPassActionWidgetViewModel_viewStyle] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PassActionWidgetViewModel.init(viewStyle:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___PKPassActionWidgetViewModel__account] = 0;
  *&v1[OBJC_IVAR___PKPassActionWidgetViewModel__bankConnectAccount] = 0;
  *&v1[OBJC_IVAR___PKPassActionWidgetViewModel__paymentPass] = 0;
  *&v1[OBJC_IVAR___PKPassActionWidgetViewModel__delegate] = 0;
  sub_1BE04B5C4();
  *&v1[OBJC_IVAR___PKPassActionWidgetViewModel_viewStyle] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PassActionWidgetViewModel();
  return objc_msgSendSuper2(&v4, sel_init);
}

BOOL sub_1BD76112C()
{
  v0 = *(sub_1BD76115C() + 2);

  return v0 != 0;
}

char *sub_1BD76115C()
{
  swift_getKeyPath();
  sub_1BD75FBB0();
  sub_1BE04B594();

  v1 = OBJC_IVAR___PKPassActionWidgetViewModel__delegate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  swift_unknownObjectRetain();
  if ((sub_1BD76193C() & 1) != 0 || (sub_1BD761ABC()) && [objc_opt_self() deviceSupportsBusinessChat] && (objc_msgSend(v2, sel_respondsToSelector_, sel_openBusinessChat))
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    swift_unknownObjectRetain();
    if (sub_1BD761ABC())
    {
      v4 = 5;
    }

    else
    {
      v4 = 4;
    }

    v5 = swift_allocObject();
    *(v5 + 16) = sub_1BD762740;
    *(v5 + 24) = v3;
    sub_1BE048964();
    v6 = sub_1BD1D95CC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_1BD1D95CC((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[24 * v8];
    v9[32] = v4;
    v9[33] = 0;
    *(v9 + 5) = sub_1BD267328;
    *(v9 + 6) = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1BD7617D4();
  if (v11)
  {
    v12 = v10;
    v13 = v11;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v14 && ([v2 respondsToSelector_] & 1) != 0)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v2;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_1BD76272C;
      *(v16 + 24) = v15;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_1BD1B6CB0;
      *(v17 + 24) = v16;
      swift_unknownObjectRetain();
      sub_1BE048964();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1BD1D95CC(0, *(v6 + 2) + 1, 1, v6);
      }

      v19 = *(v6 + 2);
      v18 = *(v6 + 3);
      if (v19 >= v18 >> 1)
      {
        v6 = sub_1BD1D95CC((v18 > 1), v19 + 1, 1, v6);
      }

      *(v6 + 2) = v19 + 1;
      v20 = &v6[24 * v19];
      *(v20 + 16) = 0;
      *(v20 + 5) = sub_1BD1B6CB0;
      *(v20 + 6) = v17;
    }
  }

  v21 = sub_1BD761930();
  if (v22)
  {
    v23 = v21;
    v24 = v22;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v25 && ([v2 respondsToSelector_] & 1) != 0)
    {
      v26 = swift_allocObject();
      *(v26 + 16) = v2;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_1BD76271C;
      *(v27 + 24) = v26;
      swift_unknownObjectRetain();
      sub_1BE048964();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1BD1D95CC(0, *(v6 + 2) + 1, 1, v6);
      }

      v29 = *(v6 + 2);
      v28 = *(v6 + 3);
      if (v29 >= v28 >> 1)
      {
        v6 = sub_1BD1D95CC((v28 > 1), v29 + 1, 1, v6);
      }

      *(v6 + 2) = v29 + 1;
      v30 = &v6[24 * v29];
      *(v30 + 16) = 1;
      *(v30 + 5) = sub_1BD214190;
      *(v30 + 6) = v27;
    }
  }

  v31 = sub_1BD7617E0();
  if (v32)
  {
    v33 = v31;
    v34 = v32;

    v35 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v35 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (v35 && ([v2 respondsToSelector_] & 1) != 0)
    {
      v36 = swift_allocObject();
      *(v36 + 16) = v2;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_1BD76270C;
      *(v37 + 24) = v36;
      swift_unknownObjectRetain();
      sub_1BE048964();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1BD1D95CC(0, *(v6 + 2) + 1, 1, v6);
      }

      v39 = *(v6 + 2);
      v38 = *(v6 + 3);
      if (v39 >= v38 >> 1)
      {
        v6 = sub_1BD1D95CC((v38 > 1), v39 + 1, 1, v6);
      }

      *(v6 + 2) = v39 + 1;
      v40 = &v6[24 * v39];
      *(v40 + 16) = 2;
      *(v40 + 5) = sub_1BD267328;
      *(v40 + 6) = v37;
    }
  }

  if (*(v6 + 2) == 1)
  {
    v41 = v6[32] == 0;
    sub_1BE048964();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1BD1D95CC(0, 2, 1, v6);
    }

    v43 = *(v6 + 2);
    v42 = *(v6 + 3);
    if (v43 >= v42 >> 1)
    {
      v6 = sub_1BD1D95CC((v42 > 1), v43 + 1, 1, v6);
    }

    swift_unknownObjectRelease();

    *(v6 + 2) = v43 + 1;
    v44 = &v6[24 * v43];
    v44[32] = v41;
    v44[33] = 1;
    *(v44 + 5) = PKEdgeInsetsMake;
    *(v44 + 6) = 0;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v6;
}

uint64_t sub_1BD7617EC(void *a1)
{
  swift_getKeyPath();
  *&v8 = v1;
  sub_1BD75FBB0();
  sub_1BE04B594();

  v3 = OBJC_IVAR___PKPassActionWidgetViewModel__paymentPass;
  swift_beginAccess();
  v4 = *(v8 + v3);
  if (!v4)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_1BD0DE53C(&v8, &qword_1EBD3EC90);
    return 0;
  }

  if ([v4 localizedValueForFieldKey_])
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

id sub_1BD76193C()
{
  v1 = v0;
  swift_getKeyPath();
  v16 = v0;
  sub_1BD75FBB0();
  sub_1BE04B594();

  v2 = OBJC_IVAR___PKPassActionWidgetViewModel__paymentPass;
  swift_beginAccess();
  result = *(v0 + v2);
  if (!result)
  {
    return result;
  }

  result = [result associatedAccountServiceAccountIdentifier];
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = sub_1BE052434();
  v7 = v6;

  swift_getKeyPath();
  sub_1BE04B594();

  v8 = *(v1 + v2);
  if (!v8 || (v9 = [v8 businessChatIdentifier]) == 0)
  {

    return 0;
  }

  v10 = v9;
  v11 = sub_1BE052434();
  v13 = v12;

  if ((v7 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v14 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    return 0;
  }

  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v11 & 0xFFFFFFFFFFFFLL;
  }

  return (v15 != 0);
}