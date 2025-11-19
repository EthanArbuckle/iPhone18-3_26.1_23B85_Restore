uint64_t sub_1BD9C6B5C()
{
  v1[24] = v0;
  v2 = sub_1BE04AF64();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9C6C4C, 0, 0);
}

uint64_t sub_1BD9C6C4C()
{
  v1 = *(v0[24] + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_1BE04D8B4();

  v3 = v0[20];
  v0[32] = v3;
  if ([v3 state] == 4 || (v4 = *(v0[24] + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountService)) == 0)
  {

    v7 = v0[1];

    return v7(0);
  }

  else
  {
    v5 = [v3 accountIdentifier];
    v0[33] = v5;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1BD9C6E8C;
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AE58);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD9CD6B0;
    v0[13] = &block_descriptor_111_1;
    v0[14] = v6;
    [v4 paymentFundingSourcesForAccountIdentifier:v5 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1BD9C6E8C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD9C6F6C, 0, 0);
}

void sub_1BD9C6F6C()
{
  v1 = v0[21];

  if (!v1)
  {

    v55 = 0;
    goto LABEL_121;
  }

  v125 = MEMORY[0x1E69E7CC0];
  v126 = MEMORY[0x1E69E7CC0];
  v127 = MEMORY[0x1E69E7CC0];
  v116 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v2 = (v1 & 0xFFFFFFFFFFFFFF8);
  if (v1 >> 62)
  {
    goto LABEL_128;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    v123 = v2;
    v117 = v0;
    v124 = i;
    if (!i)
    {
      v113 = MEMORY[0x1E69E7CC0];
      v114 = MEMORY[0x1E69E7CC0];
LABEL_84:
      v56 = [v0[32] accountIdentifier];
      HasDismissedAppleCardBankVerificationMessage = PKSavingsHasDismissedAppleCardBankVerificationMessage();

      if ((HasDismissedAppleCardBankVerificationMessage & 1) != 0 || (v2 = [v0[32] accountIdentifier], v58 = PKFundingSourceIdsMigratedToSavings(), v2, !v58))
      {
LABEL_88:
        v62 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v59 = sub_1BE052744();

        if (i)
        {
          v60 = 0;
          v105 = v0 + 22;
          v122 = v1 & 0xC000000000000001;
          v111 = MEMORY[0x1E69E7CC0];
          v61 = v123;
          v103 = v59;
          while (1)
          {
            if (v122)
            {
              v63 = MEMORY[0x1BFB40900](v60, v1);
            }

            else
            {
              if (v60 >= v61[2])
              {
                goto LABEL_127;
              }

              v63 = *(v1 + 8 * v60 + 32);
            }

            v64 = v63;
            v65 = v60 + 1;
            if (__OFADD__(v60, 1))
            {
              goto LABEL_126;
            }

            v2 = v1;
            v66 = [v63 identifier];
            if (!v66)
            {
              goto LABEL_131;
            }

            v67 = v66;
            v68 = sub_1BE052434();
            v70 = v69;

            v0[18] = v68;
            v0[19] = v70;
            v71 = swift_task_alloc();
            *(v71 + 16) = v0 + 18;
            LOBYTE(v68) = sub_1BD2FF084(sub_1BD20DFC4, v71, v59);

            if ((v68 & 1) == 0)
            {
              break;
            }

            v72 = [v64 fundingDetails];
            if (!v72)
            {
              break;
            }

            v73 = v72;
            objc_opt_self();
            v74 = swift_dynamicCastObjCClass();
            v1 = v2;
            if (v74)
            {
              v75 = [v74 verificationDetails];
              if (!v75)
              {

                goto LABEL_90;
              }

              v76 = v75;
              if ([v75 status] != 1)
              {

                goto LABEL_90;
              }

              v77 = [v76 options];
              if (v77)
              {
                v78 = v77;
                sub_1BD0E5E8C(0, &qword_1EBD3D270);
                v109 = sub_1BE052744();

                *v105 = v116;
                v79 = swift_task_alloc();
                *(v79 + 16) = v105;
                v107 = sub_1BD30114C(sub_1BD9D13E8, v79, v109);

                if ((v107 & 1) == 0)
                {

                  v1 = v2;
                  v59 = v103;
                  goto LABEL_90;
                }

                v112 = v64;
                MEMORY[0x1BFB3F7A0]();
                v59 = v103;
                if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1BE052774();
                }

                sub_1BE0527C4();

                v111 = v127;
              }

              else
              {
              }

              goto LABEL_107;
            }

LABEL_90:
            ++v60;
            v61 = v123;
            if (v65 == v124)
            {
              goto LABEL_114;
            }
          }

LABEL_107:
          v1 = v2;
          goto LABEL_90;
        }

        v111 = MEMORY[0x1E69E7CC0];
LABEL_114:

        v62 = v111;
      }

      v0 = v117;

      v128 = MEMORY[0x1E69E7CC0];
      sub_1BD9CD754(v113);
      v81 = v80;

      sub_1BDA7B020(v81);
      sub_1BD9CE160(v114);
      v83 = v82;

      sub_1BDA7B020(v83);
      sub_1BD9CEDDC(v62);
      v85 = v84;

      if (v85)
      {
        v86 = v85;
        MEMORY[0x1BFB3F7A0]();
        if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();

        v87 = v116;
        v0 = v117;
        v88 = v117[32];
      }

      else
      {
        v87 = v117[32];
        v88 = v116;
      }

      v55 = v128;
LABEL_121:

      v89 = v0[1];

      (v89)(v55);
      return;
    }

    v118 = 0;
    v4 = 0;
    v5 = v0[26];
    v6 = v1 & 0xC000000000000001;
    v121 = (v1 + 32);
    v106 = (v5 + 32);
    v108 = v0 + 23;
    v104 = (v5 + 8);
    v7 = &selRef_thumbnailWidth;
    v0 = &selRef_startPrecursorPassFlowWithNavController_context_pass_precursorController_parentNavController_presentNavController_completion_;
    v113 = MEMORY[0x1E69E7CC0];
    v114 = MEMORY[0x1E69E7CC0];
LABEL_10:
    if (v6)
    {
      v11 = MEMORY[0x1BFB40900](v4, v1);
    }

    else
    {
      if (v4 >= v2[2])
      {
        goto LABEL_125;
      }

      v11 = *&v121[8 * v4];
    }

    v10 = v11;
    if (!__OFADD__(v4++, 1))
    {
      break;
    }

    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    ;
  }

  if ([v11 v7[254]] != 1)
  {
    goto LABEL_9;
  }

  v13 = [v10 fundingDetails];
  if (!v13)
  {
LABEL_8:
    i = v124;
LABEL_9:

    if (v4 == i)
    {
      goto LABEL_81;
    }

    goto LABEL_10;
  }

  v9 = v13;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    v8 = v9;
    v9 = v10;
    v7 = &selRef_thumbnailWidth;
LABEL_7:

    v10 = v9;
    v2 = v123;
    goto LABEL_8;
  }

  v15 = v14;
  if ([v14 status] == 1)
  {

    v118 = 1;
    i = v124;
    v7 = &selRef_thumbnailWidth;
    if (v4 == v124)
    {
      goto LABEL_88;
    }

    goto LABEL_10;
  }

  if ([v15 &selRef_submitAnswer_] != 2)
  {
    v8 = v10;
    v7 = &selRef_thumbnailWidth;
    goto LABEL_7;
  }

  v16 = [v15 verificationDetails];
  if (!v16)
  {
    v8 = v10;
    v7 = &selRef_thumbnailWidth;
    goto LABEL_7;
  }

  v8 = v16;
  v17 = [v16 status];
  v7 = &selRef_thumbnailWidth;
  if (v17 != 1)
  {
    if (v17 != 3)
    {

      goto LABEL_7;
    }

    v18 = [v8 pendingAttempt];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 expiryDate];
      if (v20)
      {
        v99 = v19;
        v101 = v1;
        v22 = v117[30];
        v21 = v117[31];
        v119 = v117[29];
        v96 = v117[25];
        v23 = v20;
        sub_1BE04AEE4();

        v94 = *v106;
        (*v106)(v21, v22, v96);
        sub_1BE04AEF4();
        sub_1BD9D146C(&qword_1EBD525D0, MEMORY[0x1E6969530]);
        LOBYTE(v23) = sub_1BE0522F4();
        v24 = *v104;
        (*v104)(v119, v96);
        if (v23)
        {
          v24(v117[31], v117[25]);

          v118 = 1;
          v2 = v123;
          i = v124;
          v1 = v101;
          v7 = &selRef_thumbnailWidth;
          if (v4 == v124)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v120 = v24;
          v41 = [v99 sentDate];
          if (v41)
          {
            v43 = v117[27];
            v42 = v117[28];
            v98 = v117[25];
            v44 = v41;
            sub_1BE04AEE4();

            v94(v42, v43, v98);
            v45 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
            v46 = sub_1BE04AE64();
            LODWORD(v42) = [v45 isDateAtLeastNDays:3 afterDate:v46];

            if (v42)
            {
              v47 = v10;
              MEMORY[0x1BFB3F7A0]();
              if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1BE052774();
              }

              v115 = v117[31];
              v48 = v117[28];
              v49 = v117[25];
              sub_1BE0527C4();

              v120(v48, v49);
              v120(v115, v49);
              v114 = v126;
              v118 = 1;
              v2 = v123;
              i = v124;
              v1 = v101;
              v7 = &selRef_thumbnailWidth;
              if (v4 == v124)
              {
                goto LABEL_88;
              }
            }

            else
            {
              v50 = v117[31];
              v51 = v117[28];
              v52 = v117[25];

              v120(v51, v52);
              v120(v50, v52);
              v118 = 1;
              v2 = v123;
              i = v124;
              v1 = v101;
              v7 = &selRef_thumbnailWidth;
              if (v4 == v124)
              {
                goto LABEL_88;
              }
            }
          }

          else
          {
            v24(v117[31], v117[25]);

            v118 = 1;
            v2 = v123;
            i = v124;
            v1 = v101;
            v7 = &selRef_thumbnailWidth;
            if (v4 == v124)
            {
              goto LABEL_88;
            }
          }
        }
      }

      else
      {

        v118 = 1;
        v2 = v123;
        i = v124;
        if (v4 == v124)
        {
          goto LABEL_88;
        }
      }
    }

    else
    {

      v118 = 1;
      v2 = v123;
      i = v124;
      if (v4 == v124)
      {
        goto LABEL_88;
      }
    }

    goto LABEL_10;
  }

  v102 = v1;
  v25 = [v10 identifier];
  HasDismissedBankVerificationExpirationMessage = PKSavingsHasDismissedBankVerificationExpirationMessage();

  if (HasDismissedBankVerificationExpirationMessage)
  {
    v1 = v102;
    v7 = &selRef_thumbnailWidth;
    goto LABEL_72;
  }

  v27 = [v8 failedAttempt];
  v7 = &selRef_thumbnailWidth;
  if (!v27)
  {
    v1 = v102;
    goto LABEL_72;
  }

  v28 = v27;
  v1 = v102;
  if ([v27 failureReason] != 3 || (v29 = objc_msgSend(v8, sel_recoveryActions)) == 0)
  {

    goto LABEL_72;
  }

  v30 = v29;
  v90 = v28;
  sub_1BD0E5E8C(0, &qword_1EBD5AE60);
  v31 = sub_1BE052744();

  v32 = v31;
  v97 = v31;
  if (v31 >> 62)
  {
    v33 = sub_1BE053704();
    v32 = v31;
    if (!v33)
    {
LABEL_70:

      goto LABEL_71;
    }
  }

  else
  {
    v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      goto LABEL_70;
    }
  }

  v34 = 0;
  v93 = v33;
  v95 = v32 & 0xC000000000000001;
  v91 = v32 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v95)
    {
      v35 = MEMORY[0x1BFB40900](v34);
    }

    else
    {
      if (v34 >= *(v91 + 16))
      {
        goto LABEL_130;
      }

      v35 = *(v32 + 8 * v34 + 32);
    }

    v100 = (v34 + 1);
    if (__OFADD__(v34, 1))
    {
      break;
    }

    v36 = v35;
    v110 = v35;
    if ([v35 type] == 2)
    {
      v37 = [v36 verificationOptions];
      sub_1BD0E5E8C(0, &qword_1EBD3D270);
      v38 = sub_1BE052744();

      *v108 = v116;
      v39 = swift_task_alloc();
      *(v39 + 16) = v108;
      v92 = sub_1BD30114C(sub_1BD9D17E8, v39, v38);

      if (v92)
      {

        v40 = v10;
        MEMORY[0x1BFB3F7A0]();
        v1 = v102;
        if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();

        v113 = v125;
LABEL_71:
        v7 = &selRef_thumbnailWidth;
LABEL_72:
        v53 = [v8 failedAttempt];
        if (v53)
        {

          v118 = 1;
          v2 = v123;
          i = v124;
          if (v4 == v124)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v54 = [v8 pendingAttempt];

          if (v54)
          {

            v118 = 1;
            v2 = v123;
            i = v124;
            v7 = &selRef_thumbnailWidth;
            if (v4 == v124)
            {
              goto LABEL_88;
            }
          }

          else
          {
            v2 = v123;
            i = v124;
            v7 = &selRef_thumbnailWidth;
            if (v4 == v124)
            {
LABEL_81:
              if (v118)
              {
                goto LABEL_88;
              }

              v0 = v117;
              goto LABEL_84;
            }
          }
        }

        goto LABEL_10;
      }

      v1 = v102;
    }

    ++v34;
    v32 = v97;
    if (v100 == v93)
    {
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
}

void sub_1BD9C7E58()
{
  v1 = sub_1BE04BD74();
  v73 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v63 - v7;
  v9 = sub_1BE04AA64();
  v72 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel;
  v14 = *(v0 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v14;
  sub_1BE04D8B4();

  v16 = aBlock[0];
  if (!aBlock[0])
  {
    return;
  }

  v17 = [aBlock[0] apy];

  if (!v17)
  {
    return;
  }

  v71 = v1;
  v18 = *(v0 + v13);
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v18;
  sub_1BE04D8B4();

  v20 = aBlock[0];
  if (!aBlock[0] || (v21 = [aBlock[0] formattedAPY], v20, !v21))
  {

    return;
  }

  v22 = sub_1BE052434();
  v24 = v23;

  v25 = PKSavingsPreviousAPYForUpdateMessage();
  if (!v25)
  {

    goto LABEL_14;
  }

  v68 = v22;
  v69 = v24;
  v70 = v25;
  v26 = *(v0 + v13);
  swift_getKeyPath();
  swift_getKeyPath();
  v27 = v26;
  sub_1BE04D8B4();

  v28 = aBlock[0];
  if (!aBlock[0])
  {

LABEL_18:

    return;
  }

  v29 = [aBlock[0] apyFormatter];

  v30 = v70;
  v31 = [v29 stringFromNumber_];

  if (!v31)
  {

    goto LABEL_18;
  }

  v32 = sub_1BE052434();
  v34 = v33;

  if (v68 == v32 && v69 == v34 || (sub_1BE053B84() & 1) != 0)
  {

LABEL_14:

    return;
  }

  v66 = v32;
  v67 = v34;
  sub_1BE0533F4();
  v35 = sub_1BE0533F4();
  LODWORD(v65) = MEMORY[0x1BFB403F0](v35);
  v36 = [objc_allocWithZone(PKDashboardPassMessage) init];
  v37 = sub_1BE052404();
  [v36 setIdentifier_];

  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BD9D1314;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_103_3;
  v39 = _Block_copy(aBlock);

  [v36 setActionOnDismiss_];
  _Block_release(v39);
  v40 = PKPassKitUIBundle();
  if (!v40)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v41 = v40;
  v42 = sub_1BE052404();
  v43 = sub_1BE052404();
  v44 = [v41 URLForResource:v42 withExtension:v43];

  v45 = v73;
  if (v44)
  {
    sub_1BE04A9F4();

    v44 = sub_1BE04A9C4();
    (*(v72 + 8))(v12, v9);
  }

  v46 = PKUIScreenScale();
  v47 = PKUIImageFromPDF(v44, 45.0, 45.0, v46);

  if (!v47)
  {
    goto LABEL_31;
  }

  [v36 setImage_];

  v48 = v45[13];
  LODWORD(v72) = *MEMORY[0x1E69B80E0];
  v64 = v48;
  v48(v8);
  v49 = PKPassKitBundle();
  if (!v49)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v50 = v49;
  v51 = v65;
  v52 = 0xD00000000000001ELL;
  if ((v65 & 1) == 0)
  {
    v52 = 0xD00000000000001CLL;
  }

  v65 = v52;
  if (v51)
  {
    v53 = "DASHBOARD_APY_UPDATE_MESSAGE";
  }

  else
  {
    v53 = "DASHBOARD_APY_UPDATE_TITLE";
  }

  v63[1] = v53;
  sub_1BE04B6F4();

  v73 = v45[1];
  v54 = v71;
  (v73)(v8, v71);
  v55 = sub_1BE052404();

  [v36 setTitle_];

  v64(v4, v72, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1BE0B6CA0;
  v57 = MEMORY[0x1E69E6158];
  *(v56 + 56) = MEMORY[0x1E69E6158];
  v58 = sub_1BD110550();
  v59 = v67;
  *(v56 + 32) = v66;
  *(v56 + 40) = v59;
  *(v56 + 96) = v57;
  *(v56 + 104) = v58;
  v61 = v68;
  v60 = v69;
  *(v56 + 64) = v58;
  *(v56 + 72) = v61;
  *(v56 + 80) = v60;
  sub_1BE04B714();

  (v73)(v4, v54);
  v62 = sub_1BE052404();

  [v36 setMessage_];
}

uint64_t sub_1BD9C8680()
{
  v1[38] = v0;
  v2 = sub_1BE04BD74();
  v1[39] = v2;
  v1[40] = *(v2 - 8);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v3 = sub_1BE04AA64();
  v1[45] = v3;
  v1[46] = *(v3 - 8);
  v1[47] = swift_task_alloc();
  v4 = sub_1BE04AF64();
  v1[48] = v4;
  v1[49] = *(v4 - 8);
  v1[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9C881C, 0, 0);
}

uint64_t sub_1BD9C881C()
{
  if (PKSavingsHideCashTransferMessage())
  {
    goto LABEL_22;
  }

  v1 = *(*(v0 + 304) + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_1BE04D8B4();

  v3 = *(v0 + 288);
  *(v0 + 408) = v3;
  v4 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
  v5 = [v3 savingsDetails];
  if (!v5)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = v5;
  v7 = [v5 createdDate];

  if (v7)
  {
    v9 = *(v0 + 392);
    v8 = *(v0 + 400);
    v10 = *(v0 + 384);
    sub_1BE04AEE4();

    v11 = sub_1BE04AE64();
    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v4 isDateAtLeastNDays:14 afterDate:v11];

  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = [objc_opt_self() sharedService];
  if (!v13)
  {
    goto LABEL_26;
  }

  v14 = v13;
  v15 = [v13 peerPaymentService];

  if (!v15)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = [v15 account];
  *(v0 + 416) = v16;

  if (!v16)
  {
LABEL_21:

    goto LABEL_22;
  }

  v17 = [objc_opt_self() sharedInstance];
  if (!v17)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = v17;
  v19 = [v16 associatedPassUniqueID];
  v20 = [v18 passWithUniqueID_];

  if (v20)
  {
    v21 = [v20 paymentPass];
    *(v0 + 424) = v21;

    if (v21)
    {
      v22 = v16;
      v23 = v21;
      if (PKPeerPaymentCanPerformAccountServicePayments())
      {
        v24 = [v3 oneTimeDepositWithAppleCashFeatureDescriptor];
        *(v0 + 432) = v24;
        if (v24)
        {
          v25 = v24;
          v26 = [v22 currentBalance];
          if (v26)
          {
            v27 = v26;
            v28 = [v26 amount];

            if (v28)
            {
              sub_1BE0533E4();
            }

            goto LABEL_22;
          }

LABEL_29:
          __break(1u);
          __break(1u);

          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          return MEMORY[0x1EEE6DEC8](v31);
        }
      }

      goto LABEL_21;
    }
  }

LABEL_22:

  v29 = *(v0 + 8);

  return v29(0);
}

uint64_t sub_1BD9C9AC8()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD9C9BA8, 0, 0);
}

void sub_1BD9C9BA8()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 296);

  if (!v2 || (v2 >> 62 ? (v3 = sub_1BE053704()) : (v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v3 < 1))
  {
    v10 = [objc_allocWithZone(PKDashboardPassMessage) init];
    v11 = sub_1BE052404();
    [v10 setIdentifier_];

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v0 + 224) = sub_1BD9D12C0;
    *(v0 + 232) = v12;
    *(v0 + 192) = MEMORY[0x1E69E9820];
    *(v0 + 200) = 1107296256;
    *(v0 + 208) = sub_1BD126964;
    *(v0 + 216) = &block_descriptor_85_0;
    v13 = _Block_copy((v0 + 192));

    [v10 setActionOnDismiss_];
    _Block_release(v13);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v0 + 272) = sub_1BD9D130C;
    *(v0 + 280) = v14;
    *(v0 + 240) = MEMORY[0x1E69E9820];
    *(v0 + 248) = 1107296256;
    *(v0 + 256) = sub_1BD198918;
    *(v0 + 264) = &block_descriptor_89_2;
    v15 = _Block_copy((v0 + 240));

    [v10 setActionOnButtonPress_];
    _Block_release(v15);
    v16 = PKPassKitUIBundle();
    if (v16)
    {
      v17 = v16;
      v18 = sub_1BE052404();
      v19 = sub_1BE052404();
      v20 = [v17 URLForResource:v18 withExtension:v19];

      if (v20)
      {
        v21 = *(v0 + 368);
        v22 = *(v0 + 376);
        v23 = *(v0 + 360);
        sub_1BE04A9F4();

        v24 = sub_1BE04A9C4();
        (*(v21 + 8))(v22, v23);
      }

      else
      {
        v24 = 0;
      }

      v25 = PKUIScreenScale();
      v26 = PKUIImageFromPDF(v24, 45.0, 45.0, v25);

      if (v26)
      {
        v27 = *(v0 + 516);
        [v10 setImage_];

        v28 = *(v0 + 440);
        if (v27)
        {
          v29 = sub_1BE053344();
          v30 = PKCurrencyAmountMake();

          if (!v30)
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v31 = [v30 minimalFormattedStringValue];

          if (!v31)
          {
            v69 = *(v0 + 496);
            v70 = *(v0 + 464);
            v72 = *(v0 + 424);
            v71 = *(v0 + 432);
            v73 = *(v0 + 408);

            v10 = 0;
            goto LABEL_20;
          }

          v85 = v10;
          v32 = *(v0 + 352);
          v33 = *(v0 + 320);
          v34 = sub_1BE052434();
          v74 = v35;
          v75 = v34;

          v82 = *MEMORY[0x1E69B80E0];
          v79 = *(v33 + 104);
          v79(v32);
          v36 = PKPassKitBundle();
          if (!v36)
          {
LABEL_30:
            __break(1u);
            return;
          }

          v37 = v36;
          v38 = *(v0 + 344);
          v39 = *(v0 + 352);
          v40 = *(v0 + 312);
          v41 = *(v0 + 320);
          sub_1BE04B6F4();

          v42 = *(v41 + 8);
          v42(v39, v40);
          v43 = sub_1BE052404();

          v10 = v85;
          [v85 setTitle_];

          v44 = v82;
          (v79)(v38, v82, v40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_1BE0B69E0;
          *(v45 + 56) = MEMORY[0x1E69E6158];
          *(v45 + 64) = sub_1BD110550();
          *(v45 + 32) = v75;
          *(v45 + 40) = v74;
          sub_1BE04B714();

          v42(v38, v40);
          v46 = sub_1BE052404();
          v47 = v79;
        }

        else
        {
          v77 = *(v0 + 472);
          v80 = *(v0 + 480);
          v48 = *(v0 + 344);
          v83 = *(v0 + 336);
          v49 = *(v0 + 312);
          v50 = *(v0 + 320);

          v51 = *MEMORY[0x1E69B80E0];
          v52 = *(v50 + 104);
          v52(v48, v51, v49);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
          v53 = swift_allocObject();
          *(v53 + 16) = xmmword_1BE0B69E0;
          *(v53 + 56) = MEMORY[0x1E69E6158];
          *(v53 + 64) = sub_1BD110550();
          *(v53 + 32) = v77;
          *(v53 + 40) = v80;
          sub_1BE04B714();

          v42 = *(v50 + 8);
          v42(v48, v49);
          v54 = sub_1BE052404();

          [v10 setTitle_];

          v52(v83, v51, v49);
          v55 = PKPassKitBundle();
          if (!v55)
          {
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v56 = v55;
          v57 = *(v0 + 336);
          v58 = *(v0 + 312);
          sub_1BE04B6F4();

          v42(v57, v58);
          v46 = sub_1BE052404();
          v44 = v51;
          v47 = v52;
        }

        v86 = v42;
        v59 = *(v0 + 328);
        v60 = *(v0 + 312);

        [v10 setMessage_];

        v47(v59, v44, v60);
        v61 = PKPassKitBundle();
        if (v61)
        {
          v62 = v61;
          v81 = *(v0 + 496);
          v84 = *(v0 + 464);
          v63 = *(v0 + 424);
          v64 = *(v0 + 416);
          v76 = *(v0 + 432);
          v78 = *(v0 + 408);
          v65 = *(v0 + 328);
          v66 = *(v0 + 312);
          sub_1BE04B6F4();

          v86(v65, v66);
          v67 = sub_1BE052404();

          [v10 setButtonTitle_];

          goto LABEL_20;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  v4 = *(v0 + 496);
  v5 = *(v0 + 464);
  v6 = *(v0 + 432);
  v8 = *(v0 + 416);
  v7 = *(v0 + 424);
  v9 = *(v0 + 408);

  v10 = 0;
LABEL_20:

  v68 = *(v0 + 8);

  v68(v10);
}

void sub_1BD9CA53C()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v45 - v8;
  v10 = sub_1BE04AA64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((PKSavingsHasDismissedEducationInterestMessage() & 1) == 0)
  {
    v49 = v5;
    v50 = v2;
    v15 = *(v0 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v15;
    sub_1BE04D8B4();

    v17 = aBlock[0];
    if (aBlock[0])
    {
      v18 = v11;
      v19 = [aBlock[0] formattedAPY];

      if (v19)
      {
        v20 = sub_1BE052434();
        v47 = v21;
        v48 = v20;

        v22 = [objc_allocWithZone(PKDashboardPassMessage) init];
        v23 = sub_1BE052404();
        [v22 setIdentifier_];

        v24 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_1BD9D1274;
        aBlock[5] = v24;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD126964;
        aBlock[3] = &block_descriptor_73_0;
        v25 = _Block_copy(aBlock);

        [v22 setActionOnDismiss_];
        _Block_release(v25);
        v26 = PKPassKitUIBundle();
        if (v26)
        {
          v27 = v26;
          v28 = sub_1BE052404();
          v29 = sub_1BE052404();
          v30 = [v27 URLForResource:v28 withExtension:v29];

          if (v30)
          {
            sub_1BE04A9F4();

            v31 = sub_1BE04A9C4();
            (*(v18 + 8))(v14, v10);
          }

          else
          {
            v31 = 0;
          }

          v32 = v48;
          v33 = PKUIScreenScale();
          v34 = PKUIImageFromPDF(v31, 45.0, 45.0, v33);

          if (v34)
          {
            [v22 setImage_];

            v35 = *MEMORY[0x1E69B80E0];
            v36 = v50;
            v46 = *(v50 + 104);
            v46(v9, v35, v1);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
            v37 = swift_allocObject();
            *(v37 + 16) = xmmword_1BE0B69E0;
            *(v37 + 56) = MEMORY[0x1E69E6158];
            *(v37 + 64) = sub_1BD110550();
            v38 = v47;
            *(v37 + 32) = v32;
            *(v37 + 40) = v38;
            sub_1BE04B714();

            v39 = *(v36 + 8);
            v39(v9, v1);
            v40 = sub_1BE052404();

            [v22 setTitle_];

            v41 = v49;
            v46(v49, v35, v1);
            v42 = PKPassKitBundle();
            if (v42)
            {
              v43 = v42;
              sub_1BE04B6F4();

              v39(v41, v1);
              v44 = sub_1BE052404();

              [v22 setMessage_];

              return;
            }

LABEL_15:
            __break(1u);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_15;
      }
    }
  }
}

void sub_1BD9CAAF8()
{
  v89 = sub_1BE04BD74();
  v93 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v1);
  v88 = &v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v82 - v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v86 = &v82 - v9;
  v10 = sub_1BE04AA64();
  v84 = *(v10 - 8);
  v85 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v83 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04AF64();
  v92 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v91 = &v82 - v19;
  v20 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel;
  v21 = *(v0 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v21;
  sub_1BE04D8B4();

  v23 = aBlock;
  v24 = [aBlock accountIdentifier];

  v87 = v6;
  v25 = v13;
  if (v24)
  {
    v90 = sub_1BE052434();
    v94 = v26;
  }

  else
  {
    v90 = 0;
    v94 = 0;
  }

  v27 = *(v0 + v20);
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v27;
  sub_1BE04D8B4();

  v29 = aBlock;
  v30 = [aBlock supportedContactMethodForAddingBeneficiaries];

  v31 = *(v0 + v20);
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v31;
  sub_1BE04D8B4();

  v33 = aBlock;
  v34 = [aBlock supportsAddBeneficiaries];

  if (!v34 || v30 != 3 && (v30 != 2 || ![objc_opt_self() deviceSupportsBusinessChat]))
  {

LABEL_15:

    return;
  }

  HasDismissedAddBeneficiaryMessage = PKSavingsHasDismissedAddBeneficiaryMessage();

  if (HasDismissedAddBeneficiaryMessage)
  {
    goto LABEL_15;
  }

  v36 = *(v0 + v20);
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v36;
  sub_1BE04D8B4();

  v38 = aBlock;
  v39 = [aBlock createdDate];

  if (!v39)
  {
    goto LABEL_15;
  }

  v82 = v0;
  sub_1BE04AEE4();

  v41 = v91;
  v40 = v92;
  v42 = v25;
  (*(v92 + 32))(v91, v16, v25);
  v43 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
  v44 = sub_1BE04AE64();
  v45 = [v43 isDateLessThanNDays:10 afterDate:v44];

  if (!v45)
  {
    (*(v40 + 8))(v41, v25);
    goto LABEL_15;
  }

  v46 = [objc_allocWithZone(PKDashboardPassMessage) init];
  v47 = sub_1BE052404();
  [v46 setIdentifier_];

  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = swift_allocObject();
  v50 = v94;
  v49[2] = v90;
  v49[3] = v50;
  v49[4] = v48;
  v99 = sub_1BD9D125C;
  v100 = v49;
  aBlock = MEMORY[0x1E69E9820];
  v96 = 1107296256;
  v97 = sub_1BD126964;
  v98 = &block_descriptor_46_3;
  v51 = _Block_copy(&aBlock);
  sub_1BE048C84();

  [v46 setActionOnDismiss_];
  _Block_release(v51);
  v52 = PKPassKitUIBundle();
  if (!v52)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v53 = v52;
  v54 = sub_1BE052404();
  v55 = sub_1BE052404();
  v56 = [v53 URLForResource:v54 withExtension:v55];

  if (v56)
  {
    v57 = v83;
    sub_1BE04A9F4();

    v58 = sub_1BE04A9C4();
    (*(v84 + 8))(v57, v85);
  }

  else
  {
    v58 = 0;
  }

  v59 = v89;
  v60 = v93;
  v89 = v42;
  v61 = PKUIScreenScale();
  v62 = PKUIImageFromPDF(v58, 45.0, 45.0, v61);

  if (!v62)
  {
    goto LABEL_23;
  }

  [v46 setImage_];

  v63 = *MEMORY[0x1E69B80E0];
  v64 = *(v60 + 104);
  v65 = v86;
  v64(v86, v63, v59);
  sub_1BE04B714();
  v66 = *(v60 + 8);
  v93 = v60 + 8;
  v86 = v66;
  (v66)(v65, v59);
  v67 = sub_1BE052404();

  [v46 setTitle_];

  v68 = v87;
  v64(v87, v63, v59);
  v69 = PKPassKitBundle();
  if (!v69)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v70 = v69;
  sub_1BE04B6F4();

  v71 = v68;
  v72 = v86;
  (v86)(v71, v59);
  v73 = sub_1BE052404();

  [v46 setMessage_];

  v74 = v88;
  v64(v88, v63, v59);
  v75 = PKPassKitBundle();
  if (v75)
  {
    v76 = v75;
    sub_1BE04B6F4();

    v72(v74, v59);
    v77 = sub_1BE052404();

    [v46 setButtonTitle_];

    v78 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v79 = swift_allocObject();
    v79[2] = v78;
    v79[3] = v30;
    v80 = v94;
    v79[4] = v90;
    v79[5] = v80;
    v99 = sub_1BD9D1268;
    v100 = v79;
    aBlock = MEMORY[0x1E69E9820];
    v96 = 1107296256;
    v97 = sub_1BD198918;
    v98 = &block_descriptor_53_3;
    v81 = _Block_copy(&aBlock);

    [v46 setActionOnButtonPress_];
    _Block_release(v81);
    (*(v92 + 8))(v91, v89);
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_1BD9CB54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  v5 = swift_task_alloc();
  *(v4 + 32) = v5;
  *v5 = v4;
  v5[1] = sub_1BD9CB5E0;

  return sub_1BD9CB77C();
}

uint64_t sub_1BD9CB5E0(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD9CB6E0, 0, 0);
}

uint64_t sub_1BD9CB6E0()
{
  v0[2] = v0[5];
  sub_1BE048964();
  sub_1BE04D824();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BD9CB77C()
{
  v1[31] = v0;
  v2 = sub_1BE04D214();
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9CB83C, 0, 0);
}

uint64_t sub_1BD9CB83C()
{
  v1 = *(v0[31] + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_discoveryService);
  if (v1)
  {
    v2 = *MEMORY[0x1E69BB890];
    v0[35] = *MEMORY[0x1E69BB890];
    v0[2] = v0;
    v0[7] = v0 + 30;
    v0[3] = sub_1BD9CB9CC;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5AE78);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD9CF978;
    v0[13] = &block_descriptor_217;
    v0[14] = v3;
    [v1 dialogRequestsForPlacement:v2 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v4 = v0[1];
    v5 = MEMORY[0x1E69E7CC0];

    return v4(v5);
  }
}

uint64_t sub_1BD9CB9CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_1BD9CBE10;
  }

  else
  {
    v2 = sub_1BD9CBADC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD9CBADC()
{
  v1 = v0[30];

  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    goto LABEL_16;
  }

  if (v1 >> 62)
  {
    v3 = sub_1BE053704();
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_15:

    goto LABEL_16;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  v20 = v2;
  result = sub_1BE0538E4();
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  v19 = objc_opt_self();
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1BFB40900](v5, v1);
    }

    else
    {
      v13 = *(v1 + 8 * v5 + 32);
    }

    v14 = v13;
    v0[22] = sub_1BD277BBC;
    v0[23] = 0;
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1BD9CF98C;
    v0[21] = &block_descriptor_220_0;
    v15 = _Block_copy(v0 + 18);
    v16 = [v19 messageFromDialogRequest:v14 withAction:v15];
    _Block_release(v15);

    v17 = [v16 identifier];
    if (v17)
    {
      v6 = v17;
      v7 = sub_1BE052434();
      v9 = v8;

      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = v7;
      v11[4] = v9;
      v0[28] = sub_1BD9D1634;
      v0[29] = v11;
      v0[24] = MEMORY[0x1E69E9820];
      v0[25] = 1107296256;
      v0[26] = sub_1BD126964;
      v0[27] = &block_descriptor_227_0;
      v12 = _Block_copy(v0 + 24);

      [v16 setActionOnDismiss_];

      _Block_release(v12);
    }

    else
    {
    }

    ++v5;
    sub_1BE0538C4();
    sub_1BE0538F4();
    sub_1BE053904();
    sub_1BE0538D4();
  }

  while (v3 != v5);

  v2 = v20;
LABEL_16:

  v18 = v0[1];

  return v18(v2);
}

uint64_t sub_1BD9CBE10()
{
  v2 = v0[35];
  v1 = v0[36];
  swift_willThrow();

  sub_1BE04D1E4();
  v3 = v1;
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C54();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[36];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BD026000, v4, v5, "Failed to fetch dialog requests: %@", v8, 0xCu);
    sub_1BD0DE53C(v9, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[33] + 8))(v0[34], v0[32]);

  v12 = v0[1];
  v13 = MEMORY[0x1E69E7CC0];

  return v12(v13);
}

void sub_1BD9CBFAC(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(PKAccountViewInterfaceConfiguration) init];
  [v5 setDestination_];
  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  sub_1BE04D8B4();

  [v5 setAccount_];
  [v5 setFundingSource_];
  v8 = *(v2 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentDestinationWithConfiguration);
  if (v8)
  {
    sub_1BE048964();
    v8(v5);
    sub_1BD0D4744(v8);
  }
}

void sub_1BD9CC0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([objc_opt_self() deviceSupportsBusinessChat])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [objc_allocWithZone(MEMORY[0x1E69B8418]) initWithOtherTopicForAccount_];
      sub_1BD9CC1D0(v6);
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8C4();
    }
  }
}

void sub_1BD9CC1D0(uint64_t a1)
{
  v3 = [objc_allocWithZone(PKBusinessChatController) init];
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  sub_1BE04D8B4();

  v6 = [objc_allocWithZone(PKBusinessChatAccountContext) initWithAccount:v7 topic:a1];
  [v3 openBusinessChatWithContext:v6 completion:0];
}

uint64_t sub_1BD9CC2C8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1BE04D8C4();
  }

  return result;
}

uint64_t sub_1BD9CC34C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  PKSavingsSetPreviousAPYForUpdateMessage();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1BE0528D4();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_1BD122C00(0, 0, v3, &unk_1BE10B250, v7);
  }

  return result;
}

uint64_t sub_1BD9CC474()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v9 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(result + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentActionSheet);
    if (v6)
    {
      sub_1BE048964();
      v6(0, 0, 0x100000000);
      sub_1BD0D4744(v6);
    }

    v7 = sub_1BE0528D4();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v5;
    sub_1BD122C00(0, 0, v3, &unk_1BE10B278, v8);
  }

  return result;
}

uint64_t sub_1BD9CC5DC(uint64_t a1, void (*a2)(uint64_t, double), uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v15 - v9;
  a2(1, v8);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE0528D4();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v12;
    sub_1BD122C00(0, 0, v10, a4, v14);
  }

  return result;
}

uint64_t sub_1BD9CC710()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1BD9CC834();
    v6 = sub_1BE0528D4();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_1BD122C00(0, 0, v3, &unk_1BE10B240, v7);
  }

  return result;
}

void sub_1BD9CC834()
{
  if ((PKSavingsHideCashTransferMessage() & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_1BE04D8B4();

    v3 = [objc_opt_self() sharedService];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 peerPaymentService];

      if (v5)
      {
        v6 = [v5 account];

        if (!v6)
        {
LABEL_11:

          return;
        }

        v7 = [v12 oneTimeDepositWithAppleCashFeatureDescriptor];
        if (!v7)
        {
LABEL_10:

          goto LABEL_11;
        }

        v8 = v7;
        v9 = [v6 currentBalance];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 amount];

          if (v11)
          {
            sub_1BE0533E4();
          }

          goto LABEL_10;
        }

LABEL_15:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1BD9CCBA0(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BD9CCBC4, 0, 0);
}

uint64_t sub_1BD9CCBC4()
{
  v1 = v0[27];
  v2 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_rdfiTransferCompleted;
  v0[28] = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_rdfiTransferCompleted;
  if ((*(v1 + v2) & 1) == 0)
  {
    v4 = v0[25];
    v3 = v0[26];
    v5 = [objc_allocWithZone(MEMORY[0x1E69B8EC8]) init];
    v0[29] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    *(inited + 32) = v4;
    *(inited + 40) = v3;
    sub_1BE048C84();
    sub_1BD537298(inited);
    swift_setDeallocating();
    sub_1BD1BCDE4(inited + 32);
    v7 = sub_1BE052A24();

    [v5 setTransactionSourceIdentifiers_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BE0B7020;
    *(v8 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1BD0E5E8C(0, &qword_1EBD3D270);
    v9 = sub_1BE052724();

    [v5 setTransactionTypes_];

    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BE0B7020;
    *(v10 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v11 = sub_1BE052724();

    [v5 setFundingSourceTypes_];

    [v5 setLimit_];
    v12 = *(v1 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_transactionProvider);
    v0[30] = v12;
    if (v12)
    {
      v0[2] = v0;
      v0[7] = v0 + 24;
      v0[3] = sub_1BD9CCF58;
      v13 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1BD9C18BC;
      v0[13] = &block_descriptor_182_2;
      v0[14] = v13;
      [v12 transactionsForRequest:v5 completion:v0 + 10];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    *(v0[27] + v0[28]) = 1;
  }

  v14 = v0[1];

  return v14(1);
}

uint64_t sub_1BD9CCF58()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD9CD038, 0, 0);
}

uint64_t sub_1BD9CD038()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);

  if (v2)
  {
    if (v2 >> 62)
    {
      v3 = sub_1BE053704();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v3)
    {
      v4 = 0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v4 = 1;
LABEL_8:
  *(*(v0 + 216) + *(v0 + 224)) = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1BD9CD0F8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v3 - 8, a2);
  v5 = &v12 - v4;
  if (v6)
  {
    v7 = sub_1BE052404();
  }

  else
  {
    v7 = 0;
  }

  PKSavingsSetHasDismissedAddBeneficiaryMessage();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE0528D4();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    sub_1BD122C00(0, 0, v5, &unk_1BE10B1D8, v11);
  }

  return result;
}

uint64_t sub_1BD9CD254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v19 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    if (a3 == 3)
    {
      sub_1BD9CBFAC(13, 0);
      if (!a5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (a3 == 2)
      {
        v13 = *(result + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
        swift_getKeyPath();
        swift_getKeyPath();
        v14 = v13;
        sub_1BE04D8B4();

        v15 = v19;
        v16 = [objc_allocWithZone(MEMORY[0x1E69B8418]) initWithBeneficiaryTopicForAccount_];

        sub_1BD9CC1D0(v16);
      }

      if (!a5)
      {
        goto LABEL_7;
      }
    }

    a5 = sub_1BE052404();
LABEL_7:
    PKSavingsSetHasDismissedAddBeneficiaryMessage();

    v17 = sub_1BE0528D4();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v12;
    sub_1BD122C00(0, 0, v10, &unk_1BE10B1D0, v18);
  }

  return result;
}

void sub_1BD9CD480()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BD9CD4D4();
  }
}

void sub_1BD9CD4D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v12[-v3];
  v5 = *&v0[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel];
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;
  sub_1BE04D8B4();

  v7 = v13;
  if (v13)
  {
    v8 = [v13 fccStepUpRequired];

    if (v8)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v12[7] = 1;
      sub_1BE048964();
      sub_1BE04D8C4();
      v9 = sub_1BE0528D4();
      (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = v0;
      v11 = v0;
      sub_1BD122C00(0, 0, v4, &unk_1BE10B2D0, v10);
    }
  }
}

uint64_t sub_1BD9CD6C4(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = 0;
  if (a2)
  {
    sub_1BD0E5E8C(0, a3);
    v6 = sub_1BE052744();
  }

  **(*(v5 + 64) + 40) = v6;

  return MEMORY[0x1EEE6DED8](v5);
}

void sub_1BD9CD754(unint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v83 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v67 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v84 = &v67 - v12;
  v69 = sub_1BE04AA64();
  v13 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v14);
  v68 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_28:
    v16 = sub_1BE053704();
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_29:
    v92 = MEMORY[0x1E69E7CC0];
    return;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_29;
  }

LABEL_3:
  v78 = v9;
  v17 = 0;
  v82 = (v85 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierExpiredBankVerification);
  v90 = a1 & 0xC000000000000001;
  v70 = a1 & 0xFFFFFFFFFFFFFF8;
  v81 = &v96;
  v67 = (v13 + 1);
  v18 = *MEMORY[0x1E69B80E0];
  v77 = "TE_BANK_VERIFICATION_BUTTON";
  v74 = "D_BANK_VERIFICATION_TITLE";
  v71 = "D_BANK_VERIFICATION_MESSAGE";
  v92 = MEMORY[0x1E69E7CC0];
  v13 = &selRef_findDateFromDates_option_;
  v75 = xmmword_1BE0B69E0;
  v73 = a1;
  v72 = v16;
  v79 = v2;
  v76 = (v3 + 1);
  v80 = (v3 + 13);
  while (1)
  {
    if (v90)
    {
      v19 = MEMORY[0x1BFB40900](v17, a1);
    }

    else
    {
      if (v17 >= *(v70 + 16))
      {
        goto LABEL_27;
      }

      v19 = *(a1 + 8 * v17 + 32);
    }

    v9 = v19;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v93 = v17 + 1;
    v20 = [v19 v13[171]];
    if (!v20)
    {

      goto LABEL_5;
    }

    v3 = v20;
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (!v21)
    {

      goto LABEL_5;
    }

    v88 = v3;
    v89 = v21;
    v22 = [objc_allocWithZone(PKDashboardPassMessage) init];
    v24 = *v82;
    v23 = v82[1];
    v25 = [v9 identifier];
    if (!v25)
    {
      goto LABEL_35;
    }

    v26 = v25;
    v87 = v17;
    v27 = sub_1BE052434();
    v29 = v28;

    aBlock = v24;
    v95 = v23;
    sub_1BE048C84();
    MEMORY[0x1BFB3F610](v27, v29);

    v30 = sub_1BE052404();

    [v22 setIdentifier_];

    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v9;
    *(v32 + 24) = v31;
    v98 = sub_1BD9D14CC;
    v99 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v95 = 1107296256;
    v96 = sub_1BD126964;
    v97 = &block_descriptor_142_1;
    v33 = _Block_copy(&aBlock);
    v34 = v9;

    [v22 setActionOnDismiss_];
    _Block_release(v33);
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = v34;
    v98 = sub_1BD9D14D4;
    v99 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v95 = 1107296256;
    v37 = v22;
    v96 = sub_1BD198918;
    v97 = &block_descriptor_149;
    v38 = _Block_copy(&aBlock);
    v39 = v34;

    [v22 setActionOnButtonPress_];
    _Block_release(v38);
    v40 = PKPassKitUIBundle();
    if (!v40)
    {
      goto LABEL_33;
    }

    v41 = v40;
    v42 = sub_1BE052404();
    v43 = sub_1BE052404();
    v44 = [v41 URLForResource:v42 withExtension:v43];

    v45 = v84;
    v46 = v80;
    if (v44)
    {
      v47 = v68;
      sub_1BE04A9F4();

      v48 = sub_1BE04A9C4();
      (*v67)(v47, v69);
    }

    else
    {
      v48 = 0;
    }

    v49 = PKUIScreenScale();
    v50 = PKUIImageFromPDF(v48, 45.0, 45.0, v49);

    if (!v50)
    {
      break;
    }

    v86 = v39;
    [v22 setImage_];

    v51 = v79;
    v92 = *v46;
    v92(v45, v18, v79);
    v52 = PKPassKitBundle();
    if (!v52)
    {
      goto LABEL_36;
    }

    v53 = v52;
    sub_1BE04B6F4();

    v9 = v76;
    v91 = *v76;
    v91(v45, v51);
    v54 = sub_1BE052404();

    [v22 setTitle_];

    v2 = v78;
    v92(v78, v18, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v55 = swift_allocObject();
    *(v55 + 16) = v75;
    v56 = [v89 name];
    if (!v56)
    {
      goto LABEL_34;
    }

    v57 = v56;
    v58 = sub_1BE052434();
    v60 = v59;

    *(v55 + 56) = MEMORY[0x1E69E6158];
    *(v55 + 64) = sub_1BD110550();
    *(v55 + 32) = v58;
    *(v55 + 40) = v60;
    sub_1BE04B714();

    v91(v2, v51);
    v61 = sub_1BE052404();

    [v37 setMessage_];

    v62 = v83;
    v92(v83, v18, v51);
    v63 = PKPassKitBundle();
    if (!v63)
    {
      goto LABEL_32;
    }

    v64 = v63;
    sub_1BE04B6F4();

    v91(v62, v51);
    v65 = sub_1BE052404();

    [v37 setButtonTitle_];

    v66 = v37;
    v3 = &v100;
    MEMORY[0x1BFB3F7A0]();
    v17 = v87;
    if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    v92 = v100;
    a1 = v73;
    v16 = v72;
    v13 = &selRef_findDateFromDates_option_;
LABEL_5:
    ++v17;
    if (v93 == v16)
    {
      return;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_1BD9CE160(unint64_t a1)
{
  v112 = sub_1BE04BD74();
  v2 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v3);
  v101 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v111 = &v86 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v102 = &v86 - v10;
  v89 = sub_1BE04AA64();
  v11 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v12);
  v88 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v86 - v20;
  v22 = sub_1BE04AF64();
  v23 = *(v22 - 1);
  MEMORY[0x1EEE9AC00](v22, v24);
  v114 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_38:
    v119 = sub_1BE053704();
    if (v119)
    {
      goto LABEL_3;
    }

LABEL_39:
    v113 = MEMORY[0x1E69E7CC0];
    return;
  }

  v119 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v119)
  {
    goto LABEL_39;
  }

LABEL_3:
  v26 = 0;
  v100 = (v106 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierCompleteBankVerification);
  v120 = a1 & 0xC000000000000001;
  v115 = a1 & 0xFFFFFFFFFFFFFF8;
  v116 = (v23 + 56);
  v110 = (v23 + 48);
  v99 = (v23 + 32);
  v98 = v123;
  v87 = v11 + 1;
  v108 = *MEMORY[0x1E69B80E0];
  v109 = (v2 + 104);
  v97 = "CATION_BUTTON_VIEW";
  v27 = (v2 + 8);
  v95 = "TE_BANK_VERIFICATION_TITLE";
  v91 = "TE_BANK_VERIFICATION_MESSAGE";
  v90 = (v23 + 8);
  v113 = MEMORY[0x1E69E7CC0];
  v96 = xmmword_1BE0B6CA0;
  v2 = v119;
  v94 = a1;
  v93 = v17;
  v92 = v21;
  v118 = v22;
  v107 = v27;
  while (1)
  {
    if (v120)
    {
      v28 = MEMORY[0x1BFB40900](v26, a1);
    }

    else
    {
      if (v26 >= *(v115 + 16))
      {
        goto LABEL_37;
      }

      v28 = *(a1 + 8 * v26 + 32);
    }

    v11 = v28;
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v30 = [v28 fundingDetails];
    if (v30)
    {
      break;
    }

LABEL_5:
    ++v26;
    if (v29 == v2)
    {
      return;
    }
  }

  v23 = v30;
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (!v31)
  {

    goto LABEL_5;
  }

  v117 = v31;
  v32 = [v31 verificationDetails];
  if (!v32 || (v33 = v32, v22 = [v32 pendingAttempt], v33, !v22))
  {

    (*v116)(v21, 1, 1, v118);
    v2 = v119;
LABEL_22:
    sub_1BD0DE53C(v21, &unk_1EBD39970);
    goto LABEL_5;
  }

  v34 = [v22 expiryDate];

  if (v34)
  {
    sub_1BE04AEE4();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v22 = v118;
  v2 = v119;
  (*v116)(v17, v35, 1, v118);
  sub_1BD1CBBEC(v17, v21);
  if ((*v110)(v21, 1, v22) == 1)
  {

    goto LABEL_22;
  }

  (*v99)(v114, v21, v22);
  v36 = [objc_allocWithZone(PKDashboardPassMessage) init];
  v38 = *v100;
  v37 = v100[1];
  v39 = [v11 identifier];
  if (!v39)
  {
    goto LABEL_47;
  }

  v40 = v39;
  v41 = sub_1BE052434();
  v43 = v42;

  aBlock = v38;
  v122 = v37;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v41, v43);

  v44 = sub_1BE052404();

  [v36 setIdentifier_];

  [v36 setActionOnDismiss_];
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = v11;
  v123[2] = sub_1BD9D1804;
  v123[3] = v46;
  aBlock = MEMORY[0x1E69E9820];
  v122 = 1107296256;
  v123[0] = sub_1BD198918;
  v123[1] = &block_descriptor_135_2;
  v47 = _Block_copy(&aBlock);
  v105 = v11;

  [v36 setActionOnButtonPress_];
  _Block_release(v47);
  v48 = PKPassKitUIBundle();
  if (!v48)
  {
    goto LABEL_46;
  }

  v49 = v48;
  v50 = v36;
  v51 = sub_1BE052404();
  v52 = sub_1BE052404();
  v53 = [v49 URLForResource:v51 withExtension:v52];

  v54 = v109;
  if (v53)
  {
    v55 = v88;
    sub_1BE04A9F4();

    v56 = sub_1BE04A9C4();
    (*v87)(v55, v89);
  }

  else
  {
    v56 = 0;
  }

  v57 = v102;
  v58 = v108;
  v59 = PKUIScreenScale();
  v60 = PKUIImageFromPDF(v56, 45.0, 45.0, v59);

  if (!v60)
  {
    goto LABEL_45;
  }

  [v50 setImage_];

  v61 = v112;
  v113 = *v54;
  v113(v57, v58, v112);
  v62 = PKPassKitBundle();
  if (!v62)
  {
    goto LABEL_44;
  }

  v63 = v62;
  v104 = sub_1BE04B6F4();

  v103 = *v107;
  v103(v57, v61);
  v64 = sub_1BE052404();

  v104 = v50;
  [v50 setTitle_];

  v113(v111, v58, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v65 = swift_allocObject();
  *(v65 + 16) = v96;
  v66 = [v117 name];
  if (!v66)
  {
    goto LABEL_43;
  }

  v67 = v66;
  v117 = v23;
  v68 = sub_1BE052434();
  v70 = v69;

  v71 = MEMORY[0x1E69E6158];
  *(v65 + 56) = MEMORY[0x1E69E6158];
  v72 = sub_1BD110550();
  *(v65 + 64) = v72;
  *(v65 + 32) = v68;
  *(v65 + 40) = v70;
  v73 = sub_1BE04AE64();
  v74 = PKMediumDayAndLongMonthStringFromDate();

  if (!v74)
  {
    goto LABEL_42;
  }

  v75 = sub_1BE052434();
  v77 = v76;

  *(v65 + 96) = v71;
  *(v65 + 104) = v72;
  *(v65 + 72) = v75;
  *(v65 + 80) = v77;
  v78 = v111;
  sub_1BE04B714();

  v79 = v112;
  v22 = v107;
  v23 = v103;
  v103(v78, v112);
  v80 = sub_1BE052404();

  v81 = v104;
  [v104 setMessage_];

  v82 = v101;
  v113(v101, v108, v79);
  v83 = PKPassKitBundle();
  if (v83)
  {
    v84 = v83;
    sub_1BE04B6F4();

    (v23)(v82, v79);
    v85 = sub_1BE052404();

    [v81 setButtonTitle_];

    v11 = v81;
    MEMORY[0x1BFB3F7A0]();
    if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    (*v90)(v114, v118);
    v113 = v124;
    a1 = v94;
    v17 = v93;
    v21 = v92;
    v2 = v119;
    goto LABEL_5;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

void sub_1BD9CEDDC(unint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v50 - v9;
  v11 = sub_1BE04AA64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v16 = sub_1BE053704();
    v17 = v16 == 1;
    if (v16 >= 1)
    {
LABEL_3:
      v52 = v12;
      v53 = v3;
      v56 = v11;
      v57 = v16;
      v54 = v6;
      v55 = v2;
      v18 = !v17;
      v19 = [objc_allocWithZone(PKDashboardPassMessage) init];
      v20 = sub_1BE052404();
      [v19 setIdentifier_];

      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v62 = sub_1BD9D14B4;
      v63 = v21;
      aBlock = MEMORY[0x1E69E9820];
      v59 = 1107296256;
      v60 = sub_1BD126964;
      v61 = &block_descriptor_116_1;
      v22 = _Block_copy(&aBlock);

      [v19 setActionOnDismiss_];
      _Block_release(v22);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v18;
      *(v24 + 32) = a1;
      v62 = sub_1BD9D14BC;
      v63 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v59 = 1107296256;
      v60 = sub_1BD198918;
      v61 = &block_descriptor_123_1;
      v25 = _Block_copy(&aBlock);
      sub_1BE048C84();

      [v19 setActionOnButtonPress_];
      _Block_release(v25);
      v26 = PKPassKitUIBundle();
      if (v26)
      {
        v27 = v26;
        v28 = sub_1BE052404();
        v29 = sub_1BE052404();
        v30 = [v27 URLForResource:v28 withExtension:v29];

        if (v30)
        {
          sub_1BE04A9F4();

          v31 = sub_1BE04A9C4();
          (*(v52 + 8))(v15, v56);
        }

        else
        {
          v31 = 0;
        }

        v32 = PKUIScreenScale();
        v33 = PKUIImageFromPDF(v31, 45.0, 45.0, v32);

        if (v33)
        {
          [v19 setImage_];

          LODWORD(v52) = *MEMORY[0x1E69B80E0];
          v34 = v53;
          v56 = *(v53 + 13);
          v35 = v55;
          v56(v10);
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
          v36 = swift_allocObject();
          v50 = xmmword_1BE0B69E0;
          v37 = MEMORY[0x1E69E6530];
          *(v36 + 16) = xmmword_1BE0B69E0;
          v38 = MEMORY[0x1E69E65A8];
          *(v36 + 56) = v37;
          *(v36 + 64) = v38;
          v39 = v57;
          *(v36 + 32) = v57;
          sub_1BE04B714();

          v40 = *(v34 + 1);
          v40(v10, v35);
          v41 = sub_1BE052404();

          v42 = v19;
          [v19 setTitle_];

          v43 = v52;
          (v56)(v10, v52, v35);
          v44 = swift_allocObject();
          *(v44 + 16) = v50;
          *(v44 + 56) = MEMORY[0x1E69E6530];
          *(v44 + 64) = MEMORY[0x1E69E65A8];
          *(v44 + 32) = v39;
          sub_1BE04B714();

          v53 = v40;
          v40(v10, v35);
          v45 = sub_1BE052404();

          [v19 setMessage_];

          v46 = v54;
          (v56)(v54, v43, v35);
          v47 = PKPassKitBundle();
          if (v47)
          {
            v48 = v47;
            sub_1BE04B6F4();

            v53(v46, v35);
            v49 = sub_1BE052404();

            [v42 setButtonTitle_];

            return;
          }

          goto LABEL_17;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v16 == 1;
    if (v16 >= 1)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_1BD9CF518(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v12 - v5;
  v7 = [a1 identifier];
  PKSetSavingsHasDismissedBankVerificationExpirationMessage();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE0528D4();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    sub_1BD122C00(0, 0, v6, &unk_1BE10B270, v11);
  }

  return result;
}

void sub_1BD9CF66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1BD9CBFAC(12, a3);
  }
}

uint64_t sub_1BD9CF6CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v12 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
    v6 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v5;
    sub_1BE04D8B4();

    v8 = v12;
    v9 = [v12 accountIdentifier];

    PKSetSavingsHasDismissedAppleCardBankVerificationMessage();
    v10 = sub_1BE0528D4();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v6;
    sub_1BD122C00(0, 0, v3, &unk_1BE10B260, v11);
  }

  return result;
}

void sub_1BD9CF88C(uint64_t a1, uint64_t a2, char a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a3)
    {
      sub_1BD9CBFAC(4, 0);
LABEL_13:

      return;
    }

    if (a4 >> 62)
    {
      if (sub_1BE053704())
      {
        goto LABEL_6;
      }
    }

    else if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((a4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB40900](0, a4);
      }

      else
      {
        if (!*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v8 = *(a4 + 32);
      }

      v9 = v8;
      goto LABEL_12;
    }

    v9 = 0;
LABEL_12:
    sub_1BD9CBFAC(12, v9);

    v7 = v9;
    goto LABEL_13;
  }
}

uint64_t sub_1BD9CF98C(uint64_t a1)
{
  v2 = sub_1BE04AA64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1BE04A9F4();
  sub_1BE048964();
  v7(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_1BD9CFA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    sub_1BE048C84();
    sub_1BD2A5644(&v9, a2, a3);
    swift_endAccess();
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v9 = *(v7 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_engagementMessages);
    v8 = v7;
    sub_1BE048964();
    sub_1BE048C84();
    sub_1BE04D824();
  }
}

void sub_1BD9CFBCC()
{
  sub_1BD0E4578(319, &qword_1EBD5AD40, &qword_1EBD3BD10);
  if (v0 <= 0x3F)
  {
    sub_1BD1E1120();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD9CFDB4(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = a3;
  v6 = sub_1BE051F54();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE051FA4();
  v39 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel;
  v15 = *(v3 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v15;
  sub_1BE04D8B4();

  v17 = aBlock[0];
  v18 = [aBlock[0] transactionSourceIdentifier];

  if (v18)
  {
    v19 = sub_1BE052434();
    v21 = v20;

    if (!a2)
    {
      goto LABEL_8;
    }

    if (v19 == a1 && v21 == a2)
    {
    }

    else
    {
      v22 = sub_1BE053B84();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }
  }

  else if (a2)
  {
    return;
  }

  v23 = *(v3 + v14);
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v23;
  sub_1BE04D8B4();

  v25 = aBlock[0];
  if (!aBlock[0])
  {
    return;
  }

  v26 = [aBlock[0] fccStepUpRequired];

  if (!v26)
  {
    return;
  }

  if (!v42)
  {
    goto LABEL_30;
  }

  v27 = [v42 transfers];
  if (!v27)
  {
    return;
  }

  v28 = v27;
  sub_1BD0E5E8C(0, &qword_1EBD4AD60);
  v29 = sub_1BE052744();

  if (!(v29 >> 62))
  {
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_8:

    return;
  }

  if (!sub_1BE053704())
  {
    goto LABEL_8;
  }

LABEL_16:
  if ((v29 & 0xC000000000000001) == 0)
  {
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v30 = *(v29 + 32);
      goto LABEL_19;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v30 = MEMORY[0x1BFB40900](0, v29);
LABEL_19:
  v31 = v30;

  v32 = [v31 externalAccount];
  if (!v32)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v33 = v32;
  v34 = [v32 type];

  if (v34 == 5 && [v42 transactionType] == 6 && (*(v3 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_rdfiTransferCompleted) & 1) == 0)
  {
    *(v3 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_rdfiTransferCompleted) = 1;
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v42 = sub_1BE052D54();
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD9D1510;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_200_1;
    v36 = _Block_copy(aBlock);

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD9D146C(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
    v37 = v41;
    sub_1BE053664();
    v38 = v42;
    MEMORY[0x1BFB3FDF0](0, v13, v9, v36);
    _Block_release(v36);

    (*(v40 + 8))(v9, v37);
    (*(v39 + 8))(v13, v10);
  }

  else
  {
  }
}

uint64_t sub_1BD9D03EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE0528D4();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    sub_1BD122C00(0, 0, v7, a3, v11);
  }

  return result;
}

uint64_t sub_1BD9D05B8()
{
  v1 = OBJC_IVAR____TtC9PassKitUI14FCCStepUpModel__loading;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9PassKitUI14FCCStepUpModel__completed, v2);
  v4 = OBJC_IVAR____TtC9PassKitUI14FCCStepUpModel__action;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5AE48);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

void sub_1BD9D0704()
{
  sub_1BD1E1120();
  if (v0 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD5AE38, &qword_1EBD5AE40);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1BD9D07E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5AE48);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v16 - v9;
  v11 = OBJC_IVAR____TtC9PassKitUI14FCCStepUpModel__loading;
  LOBYTE(v16[0]) = 0;
  sub_1BE04D874();
  v12 = *(v7 + 32);
  v12(v0 + v11, v10, v6);
  v13 = OBJC_IVAR____TtC9PassKitUI14FCCStepUpModel__completed;
  LOBYTE(v16[0]) = 0;
  sub_1BE04D874();
  v12(v0 + v13, v10, v6);
  v14 = OBJC_IVAR____TtC9PassKitUI14FCCStepUpModel__action;
  v16[0] = 0;
  v16[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AE40);
  sub_1BE04D874();
  (*(v2 + 32))(v0 + v14, v5, v1);
  return v0;
}

uint64_t sub_1BD9D09F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FA4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE052434();
  if (a2)
  {
    if (v14 == a1 && v15 == a2)
    {
    }

    else
    {
      v17 = sub_1BE053B84();

      if ((v17 & 1) == 0)
      {
        return result;
      }
    }

    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v23 = sub_1BE052D54();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD9D1548;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_209_2;
    v20 = _Block_copy(aBlock);

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD9D146C(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    v22 = v9;
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
    sub_1BE053664();
    v21 = v23;
    MEMORY[0x1BFB3FDF0](0, v13, v8, v20);
    _Block_release(v20);

    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v13, v22);
  }
}

void sub_1BD9D0D7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE051F54();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE051FA4();
  v25 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v14;
  sub_1BE04D8B4();

  v16 = aBlock[0];
  v17 = [aBlock[0] accountIdentifier];

  if (v17)
  {
    v18 = sub_1BE052434();
    v20 = v19;

    if (!a2)
    {

      return;
    }

    if (v18 == a1 && v20 == a2)
    {
    }

    else
    {
      v21 = sub_1BE053B84();

      if ((v21 & 1) == 0)
      {
        return;
      }
    }
  }

  else if (a2)
  {
    return;
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v22 = sub_1BE052D54();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BD9D1170;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_235;
  v24 = _Block_copy(aBlock);

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD9D146C(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v9, v24);
  _Block_release(v24);

  (*(v26 + 8))(v9, v6);
  (*(v25 + 8))(v13, v10);
}

uint64_t sub_1BD9D11A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD9C3530(a1, v4, v5, v6);
}

uint64_t sub_1BD9D131C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD9C3530(a1, v4, v5, v6);
}

uint64_t sub_1BD9D146C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD9D1580(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD9CB54C(a1, v4, v5, v6);
}

unint64_t sub_1BD9D1640()
{
  result = qword_1EBD35EA0;
  if (!qword_1EBD35EA0)
  {
    sub_1BD0E5E8C(255, &qword_1EBD35E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD35EA0);
  }

  return result;
}

uint64_t _s14PaymentSummaryVMa()
{
  result = qword_1EBD5AEF0;
  if (!qword_1EBD5AEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD9D187C()
{
  _s11TotalAmountVMa(319);
  if (v0 <= 0x3F)
  {
    sub_1BD9D1A28();
    if (v1 <= 0x3F)
    {
      sub_1BD9D1AE8(319, &qword_1EBD5AF08, &_s10CouponCodeVN, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PKPaymentRequestType(319);
        if (v3 <= 0x3F)
        {
          sub_1BD9D1AE8(319, &qword_1EBD5AF10, &type metadata for RecurringPaymentRequest, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1BD9D1AE8(319, &qword_1EBD5AF18, &type metadata for AutomaticReloadPaymentRequest, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1BD9D1A90();
              if (v6 <= 0x3F)
              {
                sub_1BD9D1AE8(319, &qword_1EBD5AF28, &_s19PaymentTokenContextVN, MEMORY[0x1E69E62F8]);
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

void sub_1BD9D1A28()
{
  if (!qword_1EBD5AF00)
  {
    sub_1BD0E5E8C(255, &qword_1EBD3D4A0);
    v0 = sub_1BE052804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD5AF00);
    }
  }
}

void sub_1BD9D1A90()
{
  if (!qword_1EBD5AF20)
  {
    type metadata accessor for DeferredPaymentRequest();
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD5AF20);
    }
  }
}

void sub_1BD9D1AE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_1BD9D1B48@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v145 = a4;
  v148 = a3;
  v149 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41380);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v133 - v9);
  v11 = _s22SummaryItemPricingTypeOMa(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v144 = (&v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = _s11TotalAmountVMa(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for Passes(0);
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143, v18);
  v20 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v152 = &v133 - v23;
  v24 = _s14PaymentSummaryVMa();
  v25 = (a5 + v24[9]);
  *(v25 + 2) = 0u;
  *(v25 + 3) = 0u;
  *v25 = 0u;
  *(v25 + 1) = 0u;
  v141 = v25;
  v26 = a5 + v24[10];
  *(v26 + 48) = 0;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0u;
  v140 = v26;
  *v26 = 0u;
  v27 = v24[11];
  v28 = type metadata accessor for DeferredPaymentRequest();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v139 = v27;
  v138 = v28;
  v137 = v30;
  v136 = v29 + 56;
  (v30)(a5 + v27, 1, 1);
  v146 = a1;
  result = [a1 paymentSummaryItems];
  if (!result)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v32 = result;
  v135 = v10;
  v151 = a5;
  v33 = sub_1BE052744();

  v34 = *(v33 + 16);
  v150 = v24;
  v147 = v20;
  if (v34)
  {
    v134 = v14;
    v155 = MEMORY[0x1E69E7CC0];
    sub_1BE0538E4();
    v35 = v33 + 32;
    do
    {
      sub_1BD038CD0(v35, v153);
      sub_1BD1B6140(v153, &v154);
      sub_1BD0E5E8C(0, &qword_1EBD3D4A0);
      swift_dynamicCast();
      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
      v35 += 32;
      --v34;
    }

    while (v34);

    v36 = v155;
    v24 = v150;
    v14 = v134;
    v20 = v147;
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
  }

  *&v154 = v36;
  v37 = v146;
  result = [v146 paymentRequest];
  if (!result)
  {
    goto LABEL_60;
  }

  v38 = result;
  v39 = [result requestType];

  if (v39 == 5)
  {
    sub_1BD6AFAA8();
  }

  result = [v37 paymentRequest];
  if (!result)
  {
    goto LABEL_61;
  }

  v41 = result;
  v42 = [result requestType];

  v43 = v152;
  *(v151 + v24[8]) = v42;
  sub_1BD0DE19C(v149, v43, &qword_1EBD45480);
  sub_1BD9D3594(v148, v20);
  v44 = v37;
  result = [v44 paymentRequest];
  if (!result)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v45 = result;
  v46 = [result requestType];

  *v17 = v46;
  *&v17[*(v14 + 68)] = v145;
  result = [v44 totalSummaryItem];
  if (!result)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v47 = result;
  v48 = [result amount];

  *(v17 + 1) = v48;
  if (v46 == 10)
  {
    v49 = [v44 transactionAmount];
  }

  else
  {
    v49 = 0;
  }

  v50 = v14;
  *(v17 + 2) = v49;
  result = [v44 currencyCode];
  if (!result)
  {
    goto LABEL_64;
  }

  v51 = result;
  v52 = sub_1BE052434();
  v54 = v53;

  *(v17 + 3) = v52;
  *(v17 + 4) = v54;
  sub_1BE048C84();
  result = [v44 merchantName];
  if (!result)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v55 = result;
  v56 = sub_1BE052434();
  v58 = v57;

  *(v17 + 5) = v56;
  *(v17 + 6) = v58;
  result = [v44 paymentRequest];
  if (!result)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v59 = result;
  v60 = [result recurringPaymentRequest];

  if (v60)
  {
  }

  v17[56] = v60 == 0;
  result = [v44 totalSummaryItem];
  if (!result)
  {
    goto LABEL_67;
  }

  v61 = v144;
  sub_1BD1C870C(result, v52, v54, v144);
  sub_1BD9D3658(v61, &v17[v50[10]], _s22SummaryItemPricingTypeOMa);
  result = [v44 totalSummaryItem];
  if (!result)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v62 = result;
  v63 = [result type];

  v17[v50[11]] = v63 == 1;
  *&v17[v50[13]] = [v44 fundingMode];
  sub_1BD0DE19C(v152, &v17[v50[15]], &qword_1EBD45480);
  v64 = v50[16];
  v65 = v147;
  sub_1BD9D3594(v147, &v17[v64]);
  (*(v142 + 56))(&v17[v64], 0, 1, v143);
  *&v17[v50[14]] = [v44 selectedPaymentOffer];
  result = [v44 paymentRequest];
  v66 = v150;
  if (!result)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v67 = result;
  v68 = [result APIType];

  if ((v68 - 1) >= 2)
  {

    sub_1BD9D35F8(v65, type metadata accessor for Passes);
    sub_1BD0DE53C(v152, &qword_1EBD45480);
    v17[v50[12]] = 0;
  }

  else
  {
    v69 = [v44 isIssuerInstallmentsRepayment];

    sub_1BD9D35F8(v65, type metadata accessor for Passes);
    sub_1BD0DE53C(v152, &qword_1EBD45480);
    v17[v50[12]] = v69;
  }

  v70 = v151;
  sub_1BD9D3658(v17, v151, _s11TotalAmountVMa);
  v71 = v154;
  *(v70 + v66[5]) = v154;
  v146 = v71;
  sub_1BE048C84();
  result = [v44 currencyCode];
  if (!result)
  {
    goto LABEL_70;
  }

  v72 = result;
  v73 = sub_1BE052434();
  v75 = v74;

  v76 = (v70 + v66[6]);
  v152 = v73;
  *v76 = v73;
  v76[1] = v75;
  v77 = v44;
  v78 = sub_1BD5A5C94(v77);
  v79 = (v70 + v66[7]);
  *v79 = v78;
  v79[1] = v80;
  v79[2] = v81;
  v79[3] = v82;
  result = [v77 paymentRequest];
  if (result)
  {
    v83 = result;
    v84 = [result recurringPaymentRequest];

    v147 = v77;
    if (v84)
    {
      sub_1BE048C84();
      v85 = [v84 paymentDescription];
      v145 = sub_1BE052434();
      v87 = v86;

      v88 = [v84 billingAgreement];
      if (v88)
      {
        v89 = v88;
        v90 = sub_1BE052434();
        v92 = v91;
      }

      else
      {
        v90 = 0;
        v92 = 0;
      }

      v93 = [v84 regularBilling];
      v94 = [v84 trialBilling];

      v95 = v141;
      v96 = *(v141 + 1);
      v153[0] = *v141;
      v153[1] = v96;
      v97 = *(v141 + 3);
      v153[2] = *(v141 + 2);
      v153[3] = v97;
      sub_1BD0DE53C(v153, &qword_1EBD41378);
      *v95 = v145;
      v95[1] = v87;
      v95[2] = v152;
      v95[3] = v75;
      v95[4] = v90;
      v95[5] = v92;
      v95[6] = v93;
      v95[7] = v94;
      v77 = v147;
    }

    result = [v77 paymentRequest];
    if (!result)
    {
      goto LABEL_72;
    }

    v98 = result;
    v99 = [result automaticReloadPaymentRequest];

    if (v99)
    {
      sub_1BE048C84();
      v100 = [v99 paymentDescription];
      v101 = sub_1BE052434();
      v103 = v102;

      v104 = [v99 billingAgreement];
      if (v104)
      {
        v105 = v104;
        v106 = sub_1BE052434();
        v108 = v107;
      }

      else
      {
        v106 = 0;
        v108 = 0;
      }

      v109 = [v99 automaticReloadBilling];

      v110 = v140;
      sub_1BD2ED910(*v140, *(v140 + 8), *(v140 + 16), *(v140 + 24), *(v140 + 32), *(v140 + 40), *(v140 + 48));
      *v110 = v101;
      v110[1] = v103;
      v110[2] = v152;
      v110[3] = v75;
      v110[4] = v106;
      v110[5] = v108;
      v110[6] = v109;
    }

    result = [v77 paymentRequest];
    if (!result)
    {
      goto LABEL_73;
    }

    v111 = result;
    v112 = [result deferredPaymentRequest];

    if (v112)
    {
      sub_1BE048C84();
      v113 = v135;
      sub_1BD9D3E14(v112, v152, v75, v135);
      v137(v113, 0, 1, v138);
      sub_1BD9D36C0(v113, v70 + v139);
    }

    result = [v77 paymentRequest];
    if (!result)
    {
      goto LABEL_74;
    }

    v114 = result;

    v115 = [v114 multiTokenContexts];

    sub_1BD0E5E8C(0, &qword_1EBD5AF40);
    v116 = sub_1BE052744();

    if (v116 >> 62)
    {
      v117 = sub_1BE053704();
      if (v117)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v117 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v117)
      {
LABEL_46:
        *&v153[0] = MEMORY[0x1E69E7CC0];
        result = sub_1BD531A84(0, v117 & ~(v117 >> 63), 0);
        if ((v117 & 0x8000000000000000) == 0)
        {
          v118 = 0;
          v119 = *&v153[0];
          v120 = v116;
          v152 = v116 & 0xC000000000000001;
          v121 = v116;
          v122 = v117;
          do
          {
            if (v152)
            {
              v123 = MEMORY[0x1BFB40900](v118, v120);
            }

            else
            {
              v123 = *(v120 + 8 * v118 + 32);
            }

            v124 = v123;
            v125 = [v123 merchantName];
            v126 = sub_1BE052434();
            v128 = v127;

            v129 = [v124 amount];
            *&v153[0] = v119;
            v131 = *(v119 + 16);
            v130 = *(v119 + 24);
            if (v131 >= v130 >> 1)
            {
              sub_1BD531A84((v130 > 1), v131 + 1, 1);
              v119 = *&v153[0];
            }

            ++v118;
            *(v119 + 16) = v131 + 1;
            v132 = (v119 + 24 * v131);
            v132[4] = v126;
            v132[5] = v128;
            v132[6] = v129;
            v120 = v121;
          }

          while (v122 != v118);

          sub_1BD9D35F8(v148, type metadata accessor for Passes);
          result = sub_1BD0DE53C(v149, &qword_1EBD45480);
          v70 = v151;
          goto LABEL_57;
        }

        __break(1u);
        goto LABEL_59;
      }
    }

    sub_1BD9D35F8(v148, type metadata accessor for Passes);
    result = sub_1BD0DE53C(v149, &qword_1EBD45480);
    v119 = MEMORY[0x1E69E7CC0];
LABEL_57:
    *(v70 + v150[12]) = v119;
    return result;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_1BD9D2974(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  return sub_1BE053074() & 1;
}

uint64_t sub_1BD9D29F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeferredPaymentRequest();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41380);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v127 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AF30);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v127 - v15;
  if (!sub_1BD1CB32C(a1, a2))
  {
    goto LABEL_18;
  }

  v17 = _s14PaymentSummaryVMa();
  if ((sub_1BD3FE5A4(*(a1 + v17[5]), *(a2 + v17[5])) & 1) == 0)
  {
    goto LABEL_18;
  }

  v18 = v17[6];
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v19 == *v21 && v20 == v21[1];
  if (!v22 && (sub_1BE053B84() & 1) == 0)
  {
    goto LABEL_18;
  }

  v143 = v13;
  v144 = v5;
  v141 = v8;
  v142 = v12;
  v145 = v4;
  v146 = v16;
  v147 = v17;
  v23 = v17[7];
  v25 = *(a1 + v23);
  v24 = *(a1 + v23 + 8);
  v26 = *(a1 + v23 + 16);
  v148 = *(a1 + v23 + 24);
  v27 = (a2 + v23);
  v29 = *v27;
  v28 = v27[1];
  v30 = v27[2];
  v31 = v27[3];
  if (!v24)
  {
    if (!v28)
    {
      goto LABEL_21;
    }

LABEL_16:
    sub_1BD2726F8(*v27, v27[1]);
    sub_1BD2726F8(v25, v24);
    sub_1BD27273C(v25, v24);
    v33 = v29;
    v34 = v28;
    goto LABEL_17;
  }

  if (!v28)
  {
    goto LABEL_16;
  }

  if ((v25 != v29 || v24 != v28) && (sub_1BE053B84() & 1) == 0)
  {
    sub_1BD2726F8(v29, v28);
    sub_1BD2726F8(v25, v24);

    v33 = v25;
    v34 = v24;
    goto LABEL_17;
  }

  LODWORD(v140) = v30 ^ v26;
  sub_1BD2726F8(v29, v28);
  v32 = v148;
  sub_1BD2726F8(v25, v24);
  if ((v140 & 1) == 0)
  {
    v37 = sub_1BD3FE590(v32, v31);

    sub_1BD27273C(v25, v24);
    if ((v37 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    v38 = v147;
    if (*(a1 + v147[8]) != *(a2 + v147[8]))
    {
      goto LABEL_18;
    }

    v39 = (a1 + v147[9]);
    v40 = v39[1];
    v41 = v39[3];
    v166 = v39[2];
    v167 = v41;
    v42 = v39[1];
    v165[0] = *v39;
    v165[1] = v42;
    v43 = (a2 + v147[9]);
    v44 = v43[3];
    v168[2] = v43[2];
    v168[3] = v44;
    v45 = v43[1];
    v168[0] = *v43;
    v168[1] = v45;
    v46 = v165[0];
    v162 = v40;
    v163 = v166;
    v164 = v39[3];
    if (*(&v165[0] + 1))
    {
      if (*(&v168[0] + 1))
      {
        v149 = v168[0];
        v47 = v43[2];
        v150 = v43[1];
        v151 = v47;
        v152 = v43[3];
        v156 = v47;
        v157 = v152;
        v154 = v168[0];
        v155 = v150;
        v48 = v39[1];
        v49 = v39[2];
        v169[3] = v39[3];
        v169[2] = v49;
        v169[1] = v48;
        v169[0] = v165[0];
        sub_1BD0DE19C(v165, v153, &qword_1EBD41378);
        sub_1BD0DE19C(v168, v153, &qword_1EBD41378);
        v50 = sub_1BD9E3E98(v169, &v154);
        sub_1BD0DE53C(&v149, &qword_1EBD41378);
        v153[0] = v46;
        v153[1] = v162;
        v153[2] = v163;
        v153[3] = v164;
        sub_1BD0DE53C(v153, &qword_1EBD41378);
        if ((v50 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_30:
        v54 = v38[10];
        v55 = *(a1 + v54);
        v56 = *(a1 + v54 + 8);
        v57 = *(a1 + v54 + 16);
        v58 = *(a1 + v54 + 24);
        v59 = *(a1 + v54 + 32);
        v60 = *(a1 + v54 + 40);
        v61 = *(a1 + v54 + 48);
        v62 = (a2 + v54);
        v63 = *v62;
        v64 = v62[1];
        v148 = v62[2];
        v140 = v62[3];
        v65 = v62[4];
        v137 = v63;
        v138 = v65;
        v66 = v62[5];
        v136 = v62[6];
        v139 = v66;
        if (v56)
        {
          if (v64)
          {
            v135 = v57;
            v131 = v56;
            v132 = v58;
            v130 = v55;
            if ((v55 != v63 || v56 != v64) && (v67 = v60, v68 = v61, v69 = v64, v70 = sub_1BE053B84(), v64 = v69, v61 = v68, v60 = v67, v58 = v132, v57 = v135, (v70 & 1) == 0) || (v57 != v148 || v58 != v140) && (v71 = v58, v72 = v60, v73 = v61, v74 = v64, v75 = sub_1BE053B84(), v64 = v74, v61 = v73, v60 = v72, v58 = v71, v57 = v135, v56 = v131, (v75 & 1) == 0))
            {
              v90 = v57;
              v128 = v59;
              v91 = v60;
              v92 = v61;
              v93 = v64;
              sub_1BD2ED8B0(v55, v56, v90, v58, v59, v60, v61);
              v95 = v137;
              v94 = v138;
              v96 = v148;
              v98 = v139;
              v97 = v140;
              v99 = v136;
              sub_1BD2ED8B0(v137, v93, v148, v140, v138, v139, v136);
              sub_1BD2ED910(v95, v93, v96, v97, v94, v98, v99);
              sub_1BD2ED910(v130, v131, v135, v132, v128, v91, v92);
              goto LABEL_18;
            }

            v134 = v64;
            v129 = v61;
            if (v60)
            {
              if (!v139)
              {
                v79 = 0;
                goto LABEL_58;
              }

              if (v59 != v138 || v60 != v139)
              {
                v76 = v60;
                v77 = v61;
                v78 = sub_1BE053B84();
                v61 = v77;
                v60 = v76;
                v57 = v135;
                if ((v78 & 1) == 0)
                {
                  v79 = v139;
LABEL_58:
                  v101 = v60;
                  goto LABEL_59;
                }
              }
            }

            else if (v139)
            {
              v79 = v139;
              v101 = 0;
LABEL_59:
              v116 = v57;
              v117 = v59;
              sub_1BD2ED8B0(v55, v56, v116, v58, v59, v101, v61);
              v118 = v137;
              v119 = v138;
              v120 = v134;
              v121 = v148;
              v122 = v140;
              v123 = v136;
              sub_1BD2ED8B0(v137, v134, v148, v140, v138, v79, v136);
              sub_1BD2ED910(v118, v120, v121, v122, v119, v79, v123);
              sub_1BD2ED910(v130, v131, v135, v132, v117, v60, v129);
              goto LABEL_18;
            }

            v127 = sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
            v128 = v59;
            v133 = v60;
            sub_1BD2ED8B0(v55, v56, v57, v58, v59, v60, v129);
            v102 = v137;
            v103 = v134;
            v104 = v148;
            v105 = v140;
            v106 = v136;
            sub_1BD2ED8B0(v137, v134, v148, v140, v138, v139, v136);
            v107 = sub_1BE053074();
            sub_1BD2ED910(v102, v103, v104, v105, v138, v139, v106);
            sub_1BD2ED910(v130, v131, v135, v132, v128, v133, v129);
            if ((v107 & 1) == 0)
            {
              goto LABEL_18;
            }

LABEL_51:
            v108 = v38[11];
            v109 = *(v143 + 48);
            v110 = v146;
            sub_1BD0DE19C(a1 + v108, v146, &qword_1EBD41380);
            v111 = a2 + v108;
            v112 = v110;
            sub_1BD0DE19C(v111, v110 + v109, &qword_1EBD41380);
            v113 = v145;
            v114 = *(v144 + 48);
            if (v114(v110, 1, v145) == 1)
            {
              if (v114(v110 + v109, 1, v113) == 1)
              {
                sub_1BD0DE53C(v110, &qword_1EBD41380);
                goto LABEL_61;
              }
            }

            else
            {
              v115 = v142;
              sub_1BD0DE19C(v112, v142, &qword_1EBD41380);
              if (v114(v112 + v109, 1, v113) != 1)
              {
                v124 = v112 + v109;
                v125 = v141;
                sub_1BD9D3658(v124, v141, type metadata accessor for DeferredPaymentRequest);
                v126 = sub_1BD9D4100(v115, v125);
                sub_1BD9D35F8(v125, type metadata accessor for DeferredPaymentRequest);
                sub_1BD9D35F8(v115, type metadata accessor for DeferredPaymentRequest);
                sub_1BD0DE53C(v112, &qword_1EBD41380);
                if ((v126 & 1) == 0)
                {
                  goto LABEL_18;
                }

LABEL_61:
                v35 = sub_1BD3FE5B8(*(a1 + v38[12]), *(a2 + v38[12]));
                return v35 & 1;
              }

              sub_1BD9D35F8(v115, type metadata accessor for DeferredPaymentRequest);
            }

            sub_1BD0DE53C(v112, &qword_1EBD5AF30);
            goto LABEL_18;
          }
        }

        else if (!v64)
        {
          v135 = v57;
          v100 = v61;
          sub_1BD2ED8B0(v55, 0, v57, v58, v59, v60, v61);
          sub_1BD2ED8B0(v137, 0, v148, v140, v138, v139, v136);
          sub_1BD2ED910(v55, 0, v135, v58, v59, v60, v100);
          goto LABEL_51;
        }

        v80 = v63;
        v81 = v56;
        v82 = v56;
        v133 = v60;
        v134 = v64;
        v83 = v61;
        v84 = v64;
        sub_1BD2ED8B0(v55, v82, v57, v58, v59, v60, v61);
        v85 = v80;
        v86 = v84;
        v87 = v139;
        v88 = v138;
        v89 = v136;
        sub_1BD2ED8B0(v85, v86, v148, v140, v138, v139, v136);
        sub_1BD2ED910(v55, v81, v57, v58, v59, v133, v83);
        sub_1BD2ED910(v137, v134, v148, v140, v88, v87, v89);
        goto LABEL_18;
      }
    }

    else if (!*(&v168[0] + 1))
    {
      v154 = *&v165[0];
      v53 = v39[2];
      v155 = v39[1];
      v156 = v53;
      v157 = v39[3];
      sub_1BD0DE19C(v165, v169, &qword_1EBD41378);
      sub_1BD0DE19C(v168, v169, &qword_1EBD41378);
      sub_1BD0DE53C(&v154, &qword_1EBD41378);
      goto LABEL_30;
    }

    v154 = v165[0];
    v51 = v39[2];
    v155 = v39[1];
    v156 = v51;
    v157 = v39[3];
    v158 = v168[0];
    v52 = v43[2];
    v159 = v43[1];
    v160 = v52;
    v161 = v43[3];
    sub_1BD0DE19C(v165, v169, &qword_1EBD41378);
    sub_1BD0DE19C(v168, v169, &qword_1EBD41378);
    sub_1BD0DE53C(&v154, &qword_1EBD5AF38);
    goto LABEL_18;
  }

  v33 = v25;
  v34 = v24;
LABEL_17:
  sub_1BD27273C(v33, v34);
LABEL_18:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1BD9D3594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Passes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD9D35F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD9D3658(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD9D36C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41380);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FinanceKitTransactionDebugView()
{
  result = qword_1EBD5AF48;
  if (!qword_1EBD5AF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD9D37A4()
{
  result = sub_1BE04AFE4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BD9D382C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v7 - v2;
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_1BE053834();

  v7 = 0xD00000000000001CLL;
  v8 = 0x80000001BE146460;
  v4 = sub_1BE04AF74();
  MEMORY[0x1BFB3F610](v4);

  sub_1BE04AA54();

  v5 = sub_1BE04AA64();
  result = (*(*(v5 - 8) + 48))(v3, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
    return sub_1BE0504B4();
  }

  return result;
}

void sub_1BD9D3A30(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x80000001BE1464A0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BD9D3A60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE051574();
  *a1 = result;
  return result;
}

uint64_t sub_1BD9D3AA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AF58);
  sub_1BD0DE4F4(&qword_1EBD5AF60, &qword_1EBD5AF58);
  return sub_1BE051A24();
}

unint64_t sub_1BD9D3B7C()
{
  result = qword_1EBD5AF68;
  if (!qword_1EBD5AF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5AF70);
    sub_1BD0DE4F4(&qword_1EBD5AF60, &qword_1EBD5AF58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AF68);
  }

  return result;
}

uint64_t type metadata accessor for DeferredPaymentRequest()
{
  result = qword_1EBD5AF78;
  if (!qword_1EBD5AF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD9D3CB4()
{
  sub_1BD1C86BC();
  if (v0 <= 0x3F)
  {
    sub_1BD9D3DC0(319, &qword_1EBD36A40, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      sub_1BD9D3DC0(319, &qword_1EBD3A738, MEMORY[0x1E6969BC0]);
      if (v2 <= 0x3F)
      {
        sub_1BD0E5E8C(319, &qword_1EBD5AF88);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD9D3DC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1BD9D3E14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v38 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v15 = &v37 - v14;
  v16 = [a1 paymentDescription];
  v17 = sub_1BE052434();
  v19 = v18;

  v20 = [a1 billingAgreement];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1BE052434();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v25 = [a1 freeCancellationDate];
  if (v25)
  {
    v26 = v25;
    sub_1BE04AEE4();

    v27 = sub_1BE04AF64();
    (*(*(v27 - 8) + 56))(v15, 0, 1, v27);
  }

  else
  {
    v28 = sub_1BE04AF64();
    (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
  }

  v29 = [a1 freeCancellationDateTimeZone];
  if (v29)
  {
    v30 = v29;
    sub_1BE04B394();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = sub_1BE04B3B4();
  (*(*(v32 - 8) + 56))(v10, v31, 1, v32);
  v33 = [a1 deferredBilling];

  *a4 = v17;
  a4[1] = v19;
  v34 = v38;
  a4[2] = a2;
  a4[3] = v34;
  a4[4] = v22;
  a4[5] = v24;
  v35 = type metadata accessor for DeferredPaymentRequest();
  sub_1BD0DE204(v15, a4 + v35[7], &unk_1EBD39970);
  result = sub_1BD0DE204(v10, a4 + v35[8], &unk_1EBD3D260);
  *(a4 + v35[9]) = v33;
  return result;
}

uint64_t sub_1BD9D4104(void *a1, void *a2)
{
  v4 = sub_1BE04B3B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v52 = &v48 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A748);
  MEMORY[0x1EEE9AC00](v53, v12);
  v54 = &v48 - v13;
  v14 = sub_1BE04AF64();
  v55 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v48 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v48 - v24;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1BE053B84() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1BE053B84() & 1) == 0)
  {
    goto LABEL_28;
  }

  v26 = a1[5];
  v27 = a2[5];
  if (v26)
  {
    if (!v27 || (a1[4] != a2[4] || v26 != v27) && (sub_1BE053B84() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v27)
  {
    goto LABEL_28;
  }

  v51 = v8;
  v48 = v5;
  v49 = v4;
  v50 = type metadata accessor for DeferredPaymentRequest();
  v28 = *(v50 + 28);
  v29 = *(v22 + 48);
  sub_1BD0DE19C(a1 + v28, v25, &unk_1EBD39970);
  sub_1BD0DE19C(a2 + v28, &v25[v29], &unk_1EBD39970);
  v30 = *(v55 + 48);
  if (v30(v25, 1, v14) != 1)
  {
    sub_1BD0DE19C(v25, v21, &unk_1EBD39970);
    v33 = v30(&v25[v29], 1, v14);
    v32 = v51;
    if (v33 != 1)
    {
      v35 = v55;
      (*(v55 + 32))(v17, &v25[v29], v14);
      sub_1BD16009C(&qword_1EBD3E460, MEMORY[0x1E6969530]);
      v36 = sub_1BE052334();
      v37 = *(v35 + 8);
      v37(v17, v14);
      v37(v21, v14);
      sub_1BD0DE53C(v25, &unk_1EBD39970);
      if ((v36 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    (*(v55 + 8))(v21, v14);
LABEL_19:
    v34 = &qword_1EBD3A750;
LABEL_27:
    sub_1BD0DE53C(v25, v34);
    goto LABEL_28;
  }

  v31 = v30(&v25[v29], 1, v14);
  v32 = v51;
  if (v31 != 1)
  {
    goto LABEL_19;
  }

  sub_1BD0DE53C(v25, &unk_1EBD39970);
LABEL_21:
  v38 = *(v50 + 32);
  v25 = v54;
  v39 = *(v53 + 48);
  sub_1BD0DE19C(a1 + v38, v54, &unk_1EBD3D260);
  sub_1BD0DE19C(a2 + v38, &v25[v39], &unk_1EBD3D260);
  v41 = v48;
  v40 = v49;
  v42 = *(v48 + 48);
  if (v42(v25, 1, v49) == 1)
  {
    if (v42(&v25[v39], 1, v40) == 1)
    {
      sub_1BD0DE53C(v25, &unk_1EBD3D260);
LABEL_31:
      sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
      v44 = sub_1BE053074();
      return v44 & 1;
    }

    goto LABEL_26;
  }

  v43 = v52;
  sub_1BD0DE19C(v25, v52, &unk_1EBD3D260);
  if (v42(&v25[v39], 1, v40) == 1)
  {
    (*(v41 + 8))(v43, v40);
LABEL_26:
    v34 = &qword_1EBD3A748;
    goto LABEL_27;
  }

  (*(v41 + 32))(v32, &v25[v39], v40);
  sub_1BD16009C(&qword_1EBD3A758, MEMORY[0x1E6969BC0]);
  v46 = sub_1BE052334();
  v47 = *(v41 + 8);
  v47(v32, v40);
  v47(v43, v40);
  sub_1BD0DE53C(v25, &unk_1EBD3D260);
  if (v46)
  {
    goto LABEL_31;
  }

LABEL_28:
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_1BD9D4804@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04EFE4();
  *a1 = result & 1;
  return result;
}

uint64_t PKAccountPromotionCollectionViewCell.configure(promotion:remoteImagePreparer:actionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1BE04D214();
  MEMORY[0x1EEE9AC00](v10, v11);
  objc_allocWithZone(type metadata accessor for AccountPromotionViewModel());
  v12 = sub_1BD36B3CC(a1);
  MEMORY[0x1EEE9AC00](v12, v13);
  v17[-6] = v14;
  v17[-5] = v5;
  v17[-4] = a3;
  v17[-3] = a4;
  v17[-2] = a2;
  v15 = v14;
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AF90);
  v17[4] = sub_1BD9D4D54();
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_1BD9D4DB8();
  sub_1BE04FCE4();
  MEMORY[0x1BFB3FEF0](v17);

  return 1;
}

id sub_1BD9D4B28@<X0>(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = [a1 contentView];
  [v10 directionalLayoutMargins];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  type metadata accessor for AccountPromotionViewModel();
  sub_1BD9D4E0C();
  v19 = a2;
  v20 = sub_1BE04E954();
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4AB00);
  sub_1BE051694();
  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  *a6 = v20;
  *(a6 + 8) = v22;
  *(a6 + 16) = v12;
  *(a6 + 24) = v14;
  *(a6 + 32) = v16;
  *(a6 + 40) = v18;
  *(a6 + 48) = a3;
  *(a6 + 56) = a4;
  *(a6 + 64) = v27;
  *(a6 + 72) = v28;
  *(a6 + 80) = KeyPath;
  *(a6 + 88) = 0;
  *(a6 + 96) = v24;
  *(a6 + 104) = 0;
  *(a6 + 112) = a5;
  sub_1BE048964();

  return a5;
}

unint64_t sub_1BD9D4D54()
{
  result = qword_1EBD5AF98;
  if (!qword_1EBD5AF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5AF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AF98);
  }

  return result;
}

unint64_t sub_1BD9D4DB8()
{
  result = qword_1EBD5AFA0;
  if (!qword_1EBD5AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AFA0);
  }

  return result;
}

unint64_t sub_1BD9D4E0C()
{
  result = qword_1EBD5AFA8;
  if (!qword_1EBD5AFA8)
  {
    type metadata accessor for AccountPromotionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AFA8);
  }

  return result;
}

unint64_t TileContextDetailsTableViewLayoutStyle.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

id TileContextDetailsTableViewEntry.__allocating_init(title:detail:style:axID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  sub_1BE04AFD4();
  v16 = &v15[OBJC_IVAR___PKTileContextDetailsTableViewEntry_content];
  *v16 = a1;
  *(v16 + 1) = a2;
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  *(v16 + 4) = a5;
  type metadata accessor for TileContextDetailsTableViewEntry.Content(0);
  swift_storeEnumTagMultiPayload();
  v17 = &v15[OBJC_IVAR___PKTileContextDetailsTableViewEntry_axID];
  *v17 = a6;
  *(v17 + 1) = a7;
  v19.receiver = v15;
  v19.super_class = v7;
  return objc_msgSendSuper2(&v19, sel_init);
}

id TileContextDetailsTableViewEntry.init(title:detail:style:axID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1BE04AFD4();
  v15 = &v7[OBJC_IVAR___PKTileContextDetailsTableViewEntry_content];
  *v15 = a1;
  *(v15 + 1) = a2;
  *(v15 + 2) = a3;
  *(v15 + 3) = a4;
  *(v15 + 4) = a5;
  type metadata accessor for TileContextDetailsTableViewEntry.Content(0);
  swift_storeEnumTagMultiPayload();
  v16 = &v7[OBJC_IVAR___PKTileContextDetailsTableViewEntry_axID];
  *v16 = a6;
  *(v16 + 1) = a7;
  v18.receiver = v7;
  v18.super_class = type metadata accessor for TileContextDetailsTableViewEntry(0);
  return objc_msgSendSuper2(&v18, sel_init);
}

id TileContextDetailsTableViewEntry.__allocating_init(title:actionURL:axID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  sub_1BE04AFD4();
  v12 = &v11[OBJC_IVAR___PKTileContextDetailsTableViewEntry_content];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AFB8) + 48);
  *v12 = a1;
  *(v12 + 1) = a2;
  v14 = sub_1BE04AA64();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v12[v13], a3, v14);
  type metadata accessor for TileContextDetailsTableViewEntry.Content(0);
  swift_storeEnumTagMultiPayload();
  v16 = &v11[OBJC_IVAR___PKTileContextDetailsTableViewEntry_axID];
  *v16 = a4;
  *(v16 + 1) = a5;
  v19.receiver = v11;
  v19.super_class = v5;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v15 + 8))(a3, v14);
  return v17;
}

id TileContextDetailsTableViewEntry.init(title:actionURL:axID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BE04AFD4();
  v11 = &v5[OBJC_IVAR___PKTileContextDetailsTableViewEntry_content];
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AFB8) + 48);
  *v11 = a1;
  *(v11 + 1) = a2;
  v13 = sub_1BE04AA64();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v11[v12], a3, v13);
  type metadata accessor for TileContextDetailsTableViewEntry.Content(0);
  swift_storeEnumTagMultiPayload();
  v15 = &v5[OBJC_IVAR___PKTileContextDetailsTableViewEntry_axID];
  *v15 = a4;
  *(v15 + 1) = a5;
  v18.receiver = v5;
  v18.super_class = type metadata accessor for TileContextDetailsTableViewEntry(0);
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v14 + 8))(a3, v13);
  return v16;
}

uint64_t sub_1BD9D5594(uint64_t a1)
{
  sub_1BD0DE19C(a1, v5, &qword_1EBD3EC90);
  if (!v6)
  {
    sub_1BD0DE53C(v5, &qword_1EBD3EC90);
    goto LABEL_5;
  }

  type metadata accessor for TileContextDetailsTableViewEntry(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = sub_1BD9D7C04(v1 + OBJC_IVAR___PKTileContextDetailsTableViewEntry_content, v4 + OBJC_IVAR___PKTileContextDetailsTableViewEntry_content);

  return v2 & 1;
}

uint64_t TileContextDetailsTableViewEntry.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___PKTileContextDetailsTableViewEntry_uniqueIdentifier;
  v4 = sub_1BE04AFE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1BD9D585C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR___PKTileContextDetailsTableViewEntry_uniqueIdentifier;
  v5 = sub_1BE04AFE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1BD9D58D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B080);
  MEMORY[0x1EEE9AC00](v95, v3);
  v86 = &v72 - v4;
  v87 = sub_1BE04AA64();
  v85 = *(v87 - 1);
  MEMORY[0x1EEE9AC00](v87, v5);
  v84 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B088);
  MEMORY[0x1EEE9AC00](v94, v7);
  v9 = &v72 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B090);
  MEMORY[0x1EEE9AC00](v78, v10);
  v12 = &v72 - v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B098);
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v13);
  v77 = &v72 - v14;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B0A0);
  MEMORY[0x1EEE9AC00](v93, v15);
  v80 = &v72 - v16;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B0A8);
  MEMORY[0x1EEE9AC00](v91, v17);
  v92 = &v72 - v18;
  v19 = sub_1BE04FF64();
  v82 = *(v19 - 8);
  v83 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47240);
  MEMORY[0x1EEE9AC00](v73, v23);
  v25 = &v72 - v24;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B0B0);
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v26);
  v28 = &v72 - v27;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B0B8);
  MEMORY[0x1EEE9AC00](v89, v29);
  v75 = &v72 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B0C0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v88 = &v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v90 = &v72 - v36;
  v37 = type metadata accessor for TileContextDetailsTableViewEntry.Content(0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = (&v72 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = a1;
  sub_1BD9D85D4(a1 + OBJC_IVAR___PKTileContextDetailsTableViewEntry_content, v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v43 = *v40;
  v44 = v40[1];
  if (EnumCaseMultiPayload == 1)
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AFB8);
    v46 = v85;
    v47 = v40 + *(v45 + 48);
    v48 = v84;
    v49 = v87;
    (*(v85 + 32))(v84, v47, v87);
    v50 = v86;
    sub_1BD9D639C(v43, v44, v48, v41, v86);

    sub_1BD0DE19C(v50, v9, &qword_1EBD5B080);
    swift_storeEnumTagMultiPayload();
    sub_1BD9D88B0();
    sub_1BD9D8C44();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v50, &qword_1EBD5B080);
    return (*(v46 + 8))(v48, v49);
  }

  v85 = v31;
  v86 = v41;
  v87 = v9;
  v52 = v40[2];
  v53 = v40[3];
  v54 = v40[4];
  if (v54)
  {
    if (v54 != 1)
    {
      v97 = v40[4];
      result = sub_1BE053BE4();
      __break(1u);
      return result;
    }

    *v25 = sub_1BE04F7C4();
    *(v25 + 1) = 0;
    v25[16] = 1;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47218);
    sub_1BD9D66BC(v43, v44, v52, v53, &v25[*(v66 + 44)]);
    sub_1BE04FF44();
    v67 = sub_1BD0DE4F4(&qword_1EBD47238, &qword_1EBD47240);
    v68 = v73;
    sub_1BE050D14();
    (*(v82 + 8))(v22, v83);
    sub_1BD0DE53C(v25, &qword_1EBD47240);
    v97 = v68;
    v98 = v67;
    swift_getOpaqueTypeConformance2();
    v69 = v75;
    v70 = v76;
    sub_1BE050DE4();
    (*(v74 + 8))(v28, v70);
    v63 = &qword_1EBD5B0B8;
    sub_1BD0DE19C(v69, v92, &qword_1EBD5B0B8);
    swift_storeEnumTagMultiPayload();
    sub_1BD9D893C();
    sub_1BD9D8A68();
    v64 = v88;
    sub_1BE04F9A4();
    v65 = v69;
  }

  else
  {
    *v12 = sub_1BE04F4B4();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B120);
    sub_1BD9D6AE4(v43, v44, v52, v53, &v12[*(v55 + 44)]);
    KeyPath = swift_getKeyPath();
    v57 = v78;
    v58 = &v12[*(v78 + 36)];
    *v58 = KeyPath;
    *(v58 + 1) = 1;
    v58[16] = 0;
    sub_1BE04FF44();
    v59 = sub_1BD9D8B60();
    v60 = v77;
    sub_1BE050D14();
    (*(v82 + 8))(v22, v83);
    sub_1BD0DE53C(v12, &qword_1EBD5B090);
    v97 = v57;
    v98 = v59;
    swift_getOpaqueTypeConformance2();
    v62 = v80;
    v61 = v81;
    sub_1BE050DE4();
    (*(v79 + 8))(v60, v61);
    v63 = &qword_1EBD5B0A0;
    sub_1BD0DE19C(v62, v92, &qword_1EBD5B0A0);
    swift_storeEnumTagMultiPayload();
    sub_1BD9D893C();
    sub_1BD9D8A68();
    v64 = v88;
    sub_1BE04F9A4();
    v65 = v62;
  }

  sub_1BD0DE53C(v65, v63);
  v71 = v90;
  sub_1BD0CA84C(v64, v90);

  sub_1BD0DE19C(v71, v87, &qword_1EBD5B0C0);
  swift_storeEnumTagMultiPayload();
  sub_1BD9D88B0();
  sub_1BD9D8C44();
  sub_1BE04F9A4();
  return sub_1BD0DE53C(v71, &qword_1EBD5B0C0);
}

uint64_t sub_1BD9D639C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a4;
  v32 = a5;
  v27 = a1;
  v28 = a3;
  v6 = sub_1BE04FF64();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04AA64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B100);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v27 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B130);
  v20 = *(v19 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v27 - v23;
  v33 = v27;
  v34 = a2;
  (*(v11 + 16))(v14, v28, v10, v22);
  sub_1BD0DDEBC();
  sub_1BE048C84();
  sub_1BE0504C4();
  sub_1BE04E884();
  sub_1BE04FF44();
  v25 = sub_1BD9D8D3C();
  sub_1BE050D14();
  (*(v29 + 8))(v9, v30);
  sub_1BD0DE53C(v18, &qword_1EBD5B100);
  v33 = v15;
  v34 = v25;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();
  return (*(v20 + 8))(v24, v19);
}

uint64_t sub_1BD9D66BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a3;
  v48 = a4;
  v53 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v51 = &v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v49 = *(v14 - 8);
  v50 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v47 - v20;
  v54 = a1;
  v55 = a2;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v22 = sub_1BE0506C4();
  v24 = v23;
  v54 = v22;
  v55 = v23;
  v26 = v25 & 1;
  v56 = v25 & 1;
  v57 = v27;
  sub_1BE052434();
  v52 = v21;
  sub_1BE050DE4();

  sub_1BD0DDF10(v22, v24, v26);

  if (v48)
  {
    v54 = v47;
    v55 = v48;
    sub_1BE048C84();
    v28 = sub_1BE0506C4();
    v30 = v29;
    v32 = v31;
    v33 = [objc_opt_self() secondaryLabelColor];
    sub_1BE0511C4();
    v34 = sub_1BE050564();
    v36 = v35;
    v38 = v37;
    v48 = v10;
    v40 = v39;

    sub_1BD0DDF10(v28, v30, v32 & 1);

    v54 = v34;
    v55 = v36;
    v56 = v38 & 1;
    v57 = v40;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v34, v36, v38 & 1);
    v10 = v48;

    v41 = v51;
    sub_1BD0DE204(v17, v51, &qword_1EBD452C0);
    v42 = 0;
  }

  else
  {
    v42 = 1;
    v41 = v51;
  }

  (*(v49 + 56))(v41, v42, 1, v50);
  v43 = v52;
  sub_1BD0DE19C(v52, v17, &qword_1EBD452C0);
  sub_1BD0DE19C(v41, v10, &unk_1EBD5BB60);
  v44 = v53;
  sub_1BD0DE19C(v17, v53, &qword_1EBD452C0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47228);
  sub_1BD0DE19C(v10, v44 + *(v45 + 48), &unk_1EBD5BB60);
  sub_1BD0DE53C(v41, &unk_1EBD5BB60);
  sub_1BD0DE53C(v43, &qword_1EBD452C0);
  sub_1BD0DE53C(v10, &unk_1EBD5BB60);
  return sub_1BD0DE53C(v17, &qword_1EBD452C0);
}

uint64_t sub_1BD9D6AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a3;
  v65 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CB0);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v60 = (&v57 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CB8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v61 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v63 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v59 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v62 = &v57 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v57 - v25;
  v68 = a1;
  v69 = a2;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v27 = sub_1BE0506C4();
  v29 = v28;
  v68 = v27;
  v69 = v28;
  v31 = v30 & 1;
  v70 = v30 & 1;
  v71 = v32;
  sub_1BE052434();
  v64 = v26;
  sub_1BE050DE4();

  sub_1BD0DDF10(v27, v29, v31);

  v33 = 1;
  if (a4)
  {
    v68 = v58;
    v69 = a4;
    sub_1BE048C84();
    v34 = sub_1BE0506C4();
    v36 = v35;
    v38 = v37;
    v39 = [objc_opt_self() secondaryLabelColor];
    sub_1BE0511C4();
    v40 = sub_1BE050564();
    v42 = v41;
    v44 = v43;
    v46 = v45;

    sub_1BD0DDF10(v34, v36, v38 & 1);

    v68 = v40;
    v69 = v42;
    v70 = v44 & 1;
    v71 = v46;
    sub_1BE052434();
    v47 = v62;
    sub_1BE050DE4();

    sub_1BD0DDF10(v40, v42, v44 & 1);

    v48 = v59;
    sub_1BD0DE19C(v47, v59, &qword_1EBD452C0);
    v49 = v60;
    *v60 = 0;
    *(v49 + 8) = 1;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CF0);
    sub_1BD0DE19C(v48, v49 + *(v50 + 48), &qword_1EBD452C0);
    sub_1BD0DE53C(v47, &qword_1EBD452C0);
    sub_1BD0DE53C(v48, &qword_1EBD452C0);
    v51 = v63;
    sub_1BD0DE204(v49, v63, &qword_1EBD44CB0);
    v33 = 0;
  }

  else
  {
    v47 = v62;
    v51 = v63;
  }

  (*(v66 + 56))(v51, v33, 1, v67);
  v52 = v64;
  sub_1BD0DE19C(v64, v47, &qword_1EBD452C0);
  v53 = v61;
  sub_1BD0DE19C(v51, v61, &qword_1EBD44CB8);
  v54 = v65;
  sub_1BD0DE19C(v47, v65, &qword_1EBD452C0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B128);
  sub_1BD0DE19C(v53, v54 + *(v55 + 48), &qword_1EBD44CB8);
  sub_1BD0DE53C(v51, &qword_1EBD44CB8);
  sub_1BD0DE53C(v52, &qword_1EBD452C0);
  sub_1BD0DE53C(v53, &qword_1EBD44CB8);
  return sub_1BD0DE53C(v47, &qword_1EBD452C0);
}

void sub_1BD9D7018(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_1BE04FF64();
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v72 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04F424();
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v69 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04FB94();
  v62 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B000);
  v59 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v55 - v15;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B008);
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v17);
  v19 = &v55 - v18;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B010);
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v20);
  v22 = &v55 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B018);
  v24 = *(v23 - 8);
  v65 = v23;
  v66 = v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v55 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B020);
  v29 = *(v28 - 8);
  v67 = v28;
  v68 = v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v58 = &v55 - v31;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B028);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v32);
  v34 = &v55 - v33;
  v80 = a1;
  v75 = &v80;
  v76 = sub_1BD0FFA90;
  v77 = 0;
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B030);
  sub_1BD9D840C();
  sub_1BE0504E4();

  sub_1BE04FB84();
  v35 = sub_1BD0DE4F4(&qword_1EBD5B048, &qword_1EBD5B000);
  v36 = MEMORY[0x1E697C750];
  sub_1BE051144();
  (*(v62 + 8))(v12, v9);
  (*(v59 + 8))(v16, v13);
  sub_1BE050234();
  v80 = v13;
  v81 = v9;
  v82 = v35;
  v83 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v60;
  sub_1BE050904();
  v39 = v38;
  (*(v61 + 8))(v19, v38);
  sub_1BE0501C4();
  v40 = v69;
  sub_1BE04F414();
  v80 = v39;
  v81 = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v63;
  sub_1BE0508F4();
  (*(v70 + 8))(v40, v71);
  (*(v64 + 8))(v22, v42);
  v80 = v42;
  v81 = v41;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v58;
  v45 = v65;
  sub_1BE050D24();
  (*(v66 + 8))(v27, v45);
  v46 = v72;
  sub_1BE04FF54();
  v80 = v45;
  v81 = v43;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v67;
  sub_1BE050D14();
  (*(v73 + 8))(v46, v74);
  (*(v68 + 8))(v44, v48);
  v49 = sub_1BE052404();
  v50 = PKLocalizedTicketingString(v49);

  if (v50)
  {
    v51 = sub_1BE052434();
    v53 = v52;

    v80 = v51;
    v81 = v53;
    v78 = v48;
    v79 = v47;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DDEBC();
    v54 = v56;
    sub_1BE050C34();

    (*(v55 + 8))(v34, v54);
  }

  else
  {
    __break(1u);
  }
}

uint64_t static TileContextDetailsListHostView.create(entries:)()
{
  v0 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AFC0));
  sub_1BE048C84();
  return sub_1BE04EAC4();
}

id TileContextDetailsListHostView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TileContextDetailsListHostView.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TileContextDetailsListHostView();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1BD9D7A84(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BD9D7ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1BE048C84();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B050);
  sub_1BE04AFE4();
  sub_1BD0DE4F4(&qword_1EBD5B058, &qword_1EBD5B050);
  sub_1BD9D8490();
  sub_1BD9D8530(&qword_1EBD5B060, type metadata accessor for TileContextDetailsTableViewEntry);
  return sub_1BE0519D4();
}

uint64_t sub_1BD9D7C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AA64();
  v56 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v53 - v10;
  v12 = type metadata accessor for TileContextDetailsTableViewEntry.Content(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v53 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B068);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v53 - v22;
  v25 = (&v53 + *(v24 + 56) - v22);
  sub_1BD9D85D4(a1, &v53 - v22);
  sub_1BD9D85D4(a2, v25);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1BD9D85D4(v23, v19);
    v38 = *v19;
    v37 = v19[1];
    v40 = v19[2];
    v39 = v19[3];
    v41 = v19[4];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      goto LABEL_12;
    }

    v42 = *v25;
    v43 = v25[1];
    v45 = v25[2];
    v44 = v25[3];
    v56 = v25[4];
    if (v38 == v42 && v37 == v43)
    {
    }

    else
    {
      v47 = sub_1BE053B84();

      if ((v47 & 1) == 0)
      {

LABEL_31:

        goto LABEL_32;
      }
    }

    if (v39)
    {
      if (!v44)
      {
        goto LABEL_31;
      }

      if (v40 == v45 && v39 == v44)
      {
      }

      else
      {
        v51 = sub_1BE053B84();

        if ((v51 & 1) == 0)
        {
          goto LABEL_32;
        }
      }
    }

    else if (v44)
    {
      goto LABEL_31;
    }

    v48 = v41 == v56;
    goto LABEL_36;
  }

  sub_1BD9D85D4(v23, v15);
  v27 = *v15;
  v26 = *(v15 + 1);
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AFB8) + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v25[1];
    v54 = *v25;
    v55 = v27;
    v30 = v11;
    v31 = v26;
    v32 = *(v56 + 32);
    v33 = v30;
    v32();
    (v32)(v7, v25 + v28, v4);
    if (v55 == v54 && v31 == v29)
    {
    }

    else
    {
      v35 = sub_1BE053B84();

      if ((v35 & 1) == 0)
      {
        v36 = *(v56 + 8);
        v36(v7, v4);
        v36(v33, v4);
LABEL_32:
        sub_1BD9D8578(v23);
        goto LABEL_33;
      }
    }

    v48 = sub_1BE04A9E4();
    v49 = *(v56 + 8);
    v49(v7, v4);
    v49(v33, v4);
LABEL_36:
    sub_1BD9D8578(v23);
    return v48 & 1;
  }

  (*(v56 + 8))(&v15[v28], v4);
LABEL_12:

  sub_1BD0DE53C(v23, &qword_1EBD5B068);
LABEL_33:
  v48 = 0;
  return v48 & 1;
}

unint64_t sub_1BD9D80AC()
{
  result = qword_1EBD5AFC8;
  if (!qword_1EBD5AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AFC8);
  }

  return result;
}

uint64_t sub_1BD9D8160()
{
  result = sub_1BE04AFE4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TileContextDetailsTableViewEntry.Content(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1BD9D8284()
{
  sub_1BD9D82F8();
  if (v0 <= 0x3F)
  {
    sub_1BD9D8378();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BD9D82F8()
{
  if (!qword_1EBD5AFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A5C8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBD5AFF0);
    }
  }
}

void sub_1BD9D8378()
{
  if (!qword_1EBD5AFF8)
  {
    sub_1BE04AA64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBD5AFF8);
    }
  }
}

unint64_t sub_1BD9D840C()
{
  result = qword_1EBD5B038;
  if (!qword_1EBD5B038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B030);
    sub_1BD9D8490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B038);
  }

  return result;
}

unint64_t sub_1BD9D8490()
{
  result = qword_1EBD5B040;
  if (!qword_1EBD5B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B040);
  }

  return result;
}

void *sub_1BD9D84E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v7 = *a1;
  result = v4(&v6, &v7);
  *a2 = v6;
  return result;
}

uint64_t sub_1BD9D8530(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD9D8578(uint64_t a1)
{
  v2 = type metadata accessor for TileContextDetailsTableViewEntry.Content(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD9D85D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TileContextDetailsTableViewEntry.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD9D8648()
{
  result = qword_1EBD5B070;
  if (!qword_1EBD5B070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B078);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B020);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B010);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B008);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B000);
    sub_1BE04FB94();
    sub_1BD0DE4F4(&qword_1EBD5B048, &qword_1EBD5B000);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD9D8530(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B070);
  }

  return result;
}

unint64_t sub_1BD9D88B0()
{
  result = qword_1EBD5B0C8;
  if (!qword_1EBD5B0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B0C0);
    sub_1BD9D893C();
    sub_1BD9D8A68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B0C8);
  }

  return result;
}

unint64_t sub_1BD9D893C()
{
  result = qword_1EBD5B0D0;
  if (!qword_1EBD5B0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B0B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47240);
    sub_1BD0DE4F4(&qword_1EBD47238, &qword_1EBD47240);
    swift_getOpaqueTypeConformance2();
    sub_1BD9D8530(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B0D0);
  }

  return result;
}

unint64_t sub_1BD9D8A68()
{
  result = qword_1EBD5B0D8;
  if (!qword_1EBD5B0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B0A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B090);
    sub_1BD9D8B60();
    swift_getOpaqueTypeConformance2();
    sub_1BD9D8530(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B0D8);
  }

  return result;
}

unint64_t sub_1BD9D8B60()
{
  result = qword_1EBD5B0E0;
  if (!qword_1EBD5B0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B090);
    sub_1BD0DE4F4(&qword_1EBD5B0E8, &qword_1EBD5B0F0);
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B0E0);
  }

  return result;
}

unint64_t sub_1BD9D8C44()
{
  result = qword_1EBD5B0F8;
  if (!qword_1EBD5B0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B100);
    sub_1BD9D8D3C();
    swift_getOpaqueTypeConformance2();
    sub_1BD9D8530(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B0F8);
  }

  return result;
}

unint64_t sub_1BD9D8D3C()
{
  result = qword_1EBD5B108;
  if (!qword_1EBD5B108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B100);
    sub_1BD0DE4F4(&qword_1EBD53E30, &qword_1EBD53E38);
    sub_1BD0DE4F4(&qword_1EBD5B110, &qword_1EBD5B118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B108);
  }

  return result;
}

unint64_t sub_1BD9D8E20()
{
  result = qword_1EBD5B138;
  if (!qword_1EBD5B138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B140);
    sub_1BD9D88B0();
    sub_1BD9D8C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B138);
  }

  return result;
}

uint64_t type metadata accessor for AppleCardBillingAddressSection()
{
  result = qword_1EBD5B148;
  if (!qword_1EBD5B148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD9D8F24()
{
  sub_1BD9D9088(319, &qword_1EBD5B158, &qword_1EBD456C0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for WalletSettingsModel(319);
    if (v1 <= 0x3F)
    {
      sub_1BD9D9088(319, &qword_1EBD3DB10, &qword_1EBD3CCE0);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PKFeatureIdentifier(319);
        if (v3 <= 0x3F)
        {
          sub_1BD10EE48();
          if (v4 <= 0x3F)
          {
            sub_1BD23BC4C(319, &qword_1EBD42960, &qword_1EBD393C8);
            if (v5 <= 0x3F)
            {
              sub_1BD23BC4C(319, &qword_1EBD3E9B0, &qword_1EBD416C0);
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

void sub_1BD9D9088(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1BD0E5E8C(255, a3);
    v4 = sub_1BE0516D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BD9D90FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for AppleCardBillingAddressSection();
  v4 = *(v3 - 8);
  v30 = v3 - 8;
  v31 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B160);
  MEMORY[0x1EEE9AC00](v28, v12);
  v14 = &v26 - v13;
  v32 = v1;
  sub_1BD9D9ED4();
  sub_1BD9DA0A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B168);
  sub_1BD1103C8();
  sub_1BD9DAF24();
  sub_1BE051A34();
  sub_1BD9DB0F4(v1, v7);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_1BD20FB68(v7, v16 + v15);
  v17 = &v14[*(v28 + 36)];
  *v17 = sub_1BD9DB158;
  v17[1] = v16;
  v17[2] = 0;
  v17[3] = 0;
  v18 = *(v2 + 72);
  v33 = *(v2 + 64);
  v34 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v27 = v7;
  sub_1BD9DB0F4(v2, v7);
  v19 = swift_allocObject();
  sub_1BD20FB68(v7, v19 + v15);
  sub_1BD9DB1E0();
  sub_1BD5F9944();
  v20 = v29;
  sub_1BE050F64();

  sub_1BD0DE53C(v14, &qword_1EBD5B160);
  v21 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B1B0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
  sub_1BE0516C4();
  v22 = v27;
  sub_1BD9DB0F4(v2, v27);
  v23 = swift_allocObject();
  sub_1BD20FB68(v22, v23 + v15);
  result = type metadata accessor for ErrorAlertModifier(0);
  v25 = (v21 + *(result + 20));
  *v25 = sub_1BD9DB2FC;
  v25[1] = v23;
  return result;
}

uint64_t sub_1BD9D9510()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  sub_1BD9DAFDC();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  return sub_1BE04E844();
}

uint64_t sub_1BD9D9600(uint64_t a1)
{
  v2 = type metadata accessor for AppleCardBillingAddressSection();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  sub_1BD9DB0F4(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1BD20FB68(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  return sub_1BE051704();
}

id sub_1BD9D978C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F0], v2, v5);
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

id sub_1BD9D98F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_1BE04BD74();
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B1B8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABE0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v46 - v13;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B1C0);
  MEMORY[0x1EEE9AC00](v50, v15);
  v17 = &v46 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B190);
  MEMORY[0x1EEE9AC00](v51, v18);
  v20 = &v46 - v19;
  v54 = *(a1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990);
  sub_1BE0516A4();
  v21 = v53;
  if (v53)
  {
    result = [v53 pkFormattedContactAddressWithoutName];
    if (result)
    {
      v23 = result;
      v24 = sub_1BE052434();
      v26 = v25;

      *&v54 = v24;
      *(&v54 + 1) = v26;
      sub_1BD0DDEBC();
      v27 = sub_1BE0506C4();
      v29 = v28;
      *v17 = v27;
      *(v17 + 1) = v28;
      v31 = v30 & 1;
      v17[16] = v30 & 1;
      *(v17 + 3) = v32;
      swift_storeEnumTagMultiPayload();
      sub_1BD0D7F18(v27, v29, v31);
      sub_1BE048C84();
      sub_1BD0D7F18(v27, v29, v31);
      sub_1BD9DB068();
      sub_1BE048C84();
      sub_1BE04F9A4();

      sub_1BD0DDF10(v27, v29, v31);

      sub_1BD0DDF10(v27, v29, v31);
    }

    __break(1u);
    goto LABEL_11;
  }

  v47 = v11;
  v48 = v7;
  v33 = v49;
  v34 = *(a1 + 88);
  LOBYTE(v54) = *(a1 + 80);
  *(&v54 + 1) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v53)
  {
    sub_1BE04E4F4();
    v35 = &v14[*(v47 + 36)];
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABF0) + 28);
    v37 = *MEMORY[0x1E697DC20];
    v38 = sub_1BE04E364();
    (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
    *v35 = swift_getKeyPath();
    sub_1BD0DE19C(v14, v10, &qword_1EBD3ABE0);
    swift_storeEnumTagMultiPayload();
    sub_1BD171000();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v14, &qword_1EBD3ABE0);
  }

  else
  {
    (*(v33 + 104))(v6, *MEMORY[0x1E69B80F0], v3);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v39 = result;
    v40 = sub_1BE04B6F4();
    v42 = v41;

    (*(v33 + 8))(v6, v3);
    *&v54 = v40;
    *(&v54 + 1) = v42;
    sub_1BD0DDEBC();
    *v10 = sub_1BE0506C4();
    *(v10 + 1) = v43;
    v10[16] = v44 & 1;
    *(v10 + 3) = v45;
    swift_storeEnumTagMultiPayload();
    sub_1BD171000();
    sub_1BE04F9A4();
  }

  sub_1BD0DE19C(v20, v17, &qword_1EBD5B190);
  swift_storeEnumTagMultiPayload();
  sub_1BD9DB068();
  sub_1BE04F9A4();
  return sub_1BD0DE53C(v20, &qword_1EBD5B190);
}

id sub_1BD9D9ED4()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B80F0], v0, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v1 + 8))(v5, v0);
    v16 = v8;
    v17 = v10;
    sub_1BD0DDEBC();
    v11 = sub_1BE0506C4();
    v13 = v12;
    v16 = v11;
    v17 = v12;
    LOBYTE(v10) = v14 & 1;
    v18 = v14 & 1;
    v19 = v15;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v11, v13, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD9DA0A4()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B80F0], v0, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v1 + 8))(v5, v0);
    v26 = v8;
    v27 = v10;
    sub_1BD0DDEBC();
    v11 = sub_1BE0506C4();
    v13 = v12;
    LOBYTE(v7) = v14;
    LODWORD(v26) = sub_1BE04FC94();
    v15 = sub_1BE050574();
    v17 = v16;
    v19 = v18;
    sub_1BD0DDF10(v11, v13, v7 & 1);

    sub_1BE050454();
    v20 = sub_1BE0505F4();
    v22 = v21;
    LOBYTE(v8) = v23;
    v25 = v24;

    sub_1BD0DDF10(v15, v17, v19 & 1);

    v26 = v20;
    v27 = v22;
    LOBYTE(v8) = v8 & 1;
    v28 = v8;
    v29 = v25;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v20, v22, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD9DA31C(uint64_t a1)
{
  v2 = type metadata accessor for AppleCardBillingAddressSection();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BE052404();
    sub_1BD9DB0F4(a1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v10 = swift_allocObject();
    sub_1BD20FB68(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
    aBlock[4] = sub_1BD9DB424;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD14E1D8;
    aBlock[3] = &block_descriptor_19_6;
    v11 = _Block_copy(aBlock);

    [v7 userInfoForAccountIdentifier:v8 forceFetch:1 completion:v11];
    _Block_release(v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD9DA4D0(void *a1, uint64_t a2)
{
  if (!a2)
  {
    if (a1)
    {
      v2 = [a1 creditUserInfo];
      if (v2)
      {
        v3 = v2;
        v4 = [v2 primaryUser];

        if (v4)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990);
          sub_1BE0516B4();
        }
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

id sub_1BD9DA5AC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for AppleCardBillingAddressSection();
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v39 = v5;
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v34 - v13;
  v15 = a1[1];
  *&v49 = *a1;
  *(&v49 + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4CD90);
  sub_1BE0516A4();
  v36 = v44;
  v16 = a1[2];
  v17 = *MEMORY[0x1E69B80F0];
  v18 = *(v7 + 104);
  v18(v14, v17, v6);
  v37 = v16;
  sub_1BE048964();
  result = PKPassKitBundle();
  if (result)
  {
    v20 = result;
    v35 = sub_1BE04B6F4();
    v34 = v21;

    v22 = *(v7 + 8);
    v22(v14, v6);
    v18(v10, v17, v6);
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = sub_1BE04B6F4();
      v26 = v25;

      v22(v10, v6);
      v27 = v40;
      sub_1BD9DB0F4(a1, v40);
      v28 = (*(v38 + 80) + 16) & ~*(v38 + 80);
      v29 = swift_allocObject();
      sub_1BD20FB68(v27, v29 + v28);
      *&v44 = v36;
      sub_1BD0E5E8C(0, &qword_1EBD456C0);
      sub_1BE051694();
      v44 = v49;
      *&v45 = v37;
      *(&v45 + 1) = v35;
      *&v46 = v34;
      *(&v46 + 1) = v24;
      *&v47 = v26;
      BYTE8(v47) = 0;
      *(&v47 + 9) = *v43;
      HIDWORD(v47) = *&v43[3];
      *&v48 = sub_1BD9DB314;
      *(&v48 + 1) = v29;
      v50 = v37;
      v51 = v35;
      v52 = v34;
      v53 = v24;
      v54 = v26;
      v55 = 0;
      *&v56[3] = *&v43[3];
      *v56 = *v43;
      v57 = sub_1BD9DB314;
      v58 = v29;
      sub_1BD5F9A10(&v44, v42);
      result = sub_1BD5F9A48(&v49);
      v30 = v47;
      v31 = v48;
      v32 = v41;
      v41[2] = v46;
      v32[3] = v30;
      v32[4] = v31;
      v33 = v45;
      *v32 = v44;
      v32[1] = v33;
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

void sub_1BD9DA9AC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppleCardBillingAddressSection();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = *(v1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990);
  sub_1BE0516A4();
  v9 = v25;
  v10 = [objc_opt_self() sharedInstance];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1BE052404();
    sub_1BD9DB0F4(v2, &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = swift_allocObject();
    sub_1BD20FB68(v8, v15 + v13);
    *(v15 + v14) = v9;
    v23 = sub_1BD9DB378;
    v24 = v15;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v21 = sub_1BD14E1D8;
    v22 = &block_descriptor_236;
    v16 = _Block_copy(&aBlock);
    v17 = v9;

    [v11 updateUserInfoForAccountIdentifier:v12 contact:a1 completion:v16];
    _Block_release(v16);

    v18 = *(v2 + 64);
    v19 = *(v2 + 72);
    LOBYTE(aBlock) = v18;
    *(&aBlock + 1) = v19;
    LOBYTE(v25) = 0;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516B4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD9DAC08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v10 - v6;
  v8 = type metadata accessor for FeatureError(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for AppleCardBillingAddressSection();
  sub_1BD0DE19C(v7, v3, &qword_1EBD416C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v7, &qword_1EBD416C0);
}

uint64_t sub_1BD9DAD48(void *a1, void *a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v22 - v14;
  v16 = a3[13];
  if (a2 || !a1)
  {
    v24 = a3[12];
    v25 = v16;
    v23 = a4;
    v19 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990);
    sub_1BE0516B4();
    v20 = a3[7];
    if (a2)
    {
      a2 = sub_1BE04A844();
    }

    v21 = PKAccountDisplayableError();

    FeatureError.init(feature:error:)(v20, v21, v15);
    type metadata accessor for AppleCardBillingAddressSection();
    sub_1BD0DE19C(v15, v11, &qword_1EBD416C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    sub_1BE0516B4();
    return sub_1BD0DE53C(v15, &qword_1EBD416C0);
  }

  else
  {
    v24 = a3[12];
    v25 = v16;
    v23 = a1;
    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990);
    return sub_1BE0516B4();
  }
}

unint64_t sub_1BD9DAF24()
{
  result = qword_1EBD5B170;
  if (!qword_1EBD5B170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B168);
    sub_1BD9DAFDC();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B170);
  }

  return result;
}

unint64_t sub_1BD9DAFDC()
{
  result = qword_1EBD5B178;
  if (!qword_1EBD5B178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B180);
    sub_1BD9DB068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B178);
  }

  return result;
}

unint64_t sub_1BD9DB068()
{
  result = qword_1EBD5B188;
  if (!qword_1EBD5B188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B190);
    sub_1BD171000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B188);
  }

  return result;
}

uint64_t sub_1BD9DB0F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCardBillingAddressSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1BD9DB170@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(type metadata accessor for AppleCardBillingAddressSection() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1BD9DA5AC(v4, a1);
}

unint64_t sub_1BD9DB1E0()
{
  result = qword_1EBD5B198;
  if (!qword_1EBD5B198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B160);
    sub_1BD9DB26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B198);
  }

  return result;
}

unint64_t sub_1BD9DB26C()
{
  result = qword_1EBD5B1A0;
  if (!qword_1EBD5B1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B1A8);
    sub_1BD1103C8();
    sub_1BD9DAF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B1A0);
  }

  return result;
}

uint64_t sub_1BD9DB378(void *a1, void *a2)
{
  v5 = *(type metadata accessor for AppleCardBillingAddressSection() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BD9DAD48(a1, a2, (v2 + v6), v7);
}

uint64_t sub_1BD9DB424(void *a1, uint64_t a2)
{
  type metadata accessor for AppleCardBillingAddressSection();

  return sub_1BD9DA4D0(a1, a2);
}

uint64_t objectdestroyTm_117()
{
  v1 = (type metadata accessor for AppleCardBillingAddressSection() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = (v2 + v1[14]);
  v4 = type metadata accessor for FeatureError(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {

    v5 = *(v4 + 20);
    v6 = sub_1BE04B824();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);

  return swift_deallocObject();
}

uint64_t sub_1BD9DB6B0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppleCardBillingAddressSection() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD9DB724()
{
  result = qword_1EBD5B1C8;
  if (!qword_1EBD5B1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B1B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B160);
    sub_1BD9DB1E0();
    sub_1BD5F9944();
    swift_getOpaqueTypeConformance2();
    sub_1BD9DB838(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B1C8);
  }

  return result;
}

uint64_t sub_1BD9DB838(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD9DB888()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD9DB8FC()
{
  v1 = OBJC_IVAR____TtC9PassKitUI19PresentationContext__presenter;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D3E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PresentationContext()
{
  result = qword_1EBD361A0;
  if (!qword_1EBD361A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD9DB9F8()
{
  sub_1BD9DBA88();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD9DBA88()
{
  if (!qword_1EBD368B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D3F8);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD368B0);
    }
  }
}

uint64_t sub_1BD9DBAEC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PresentationContext();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

id HowToUseWalletViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HowToUseWalletViewProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HowToUseWalletViewProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HowToUseWalletViewProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HowToUseWalletViewProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *_s9PassKitUI26HowToUseWalletViewProviderC04makeH10Controller5model15destinationCardSo06UIViewK0CSgSo05PKHowefG5ModelC_So0pefgN0CSgtFZ_0(void *a1, void *a2)
{
  if (!PKEvergreenEducationEnabled())
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B1D0);
  sub_1BE051694();
  v4 = a2;
  v5 = a1;
  sub_1BE051694();
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B1D8));
  v7 = sub_1BE04F894();
  v8 = [v5 titleKey];
  if (v8 && (v9 = v8, v10 = [v5 localizationBundle], v11 = PKLocalizedHowToUseWalletStringWithBundle(v9, v10), v9, v10, v11))
  {
    v12 = [v7 navigationItem];
    [v12 setTitle_];
  }

  else
  {
    v12 = [v7 navigationItem];
    v13 = sub_1BE052404();
    v11 = PKLocalizedPaymentString(v13);

    [v12 setTitle_];
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:0 action:0];
  sub_1BD3FB6B0();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_1BE0530B4();
  [v14 setPrimaryAction_];

  v17 = v7;
  v18 = [v17 navigationItem];
  [v18 setRightBarButtonItem_];

  return v7;
}

id sub_1BD9DBF48(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1BD0E5E8C(0, &qword_1EBD3D270);
    v3 = sub_1BE052724();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  v6 = 0;
  if ((*(v5 + 48))(a2, 1, v4) != 1)
  {
    v6 = sub_1BE04A9C4();
    (*(v5 + 8))(a2, v4);
  }

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStoreIDs:v3 defaultLaunchURL:v6];

  return v7;
}

id sub_1BD9DC084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_linkedApplication] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_identifier];
  *v8 = 0xD000000000000013;
  *(v8 + 1) = 0x80000001BE146760;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_product] = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_inApp] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1BD9DC238(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v32 - v17;
  v19 = *(v2 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_inApp);
  if (v19)
  {
    v32 = v2;
    v33 = a2;
    v20 = v19;
    v21 = [v20 associatedStoreIdentifiers];
    if (v21)
    {
      v22 = v21;
      sub_1BD0E5E8C(0, &qword_1EBD3D270);
      v23 = sub_1BE052744();
    }

    else
    {
      v23 = 0;
    }

    v24 = [v20 appLaunchURL];
    if (v24)
    {
      v25 = v24;
      sub_1BE04A9F4();

      (*(v6 + 32))(v18, v9, v5);
      (*(v6 + 56))(v18, 0, 1, v5);
    }

    else
    {
      (*(v6 + 56))(v18, 1, 1, v5);
    }

    sub_1BD0E5E8C(0, &unk_1EBD5B210);
    sub_1BD38F438(v18, v13);
    v26 = sub_1BD9DBF48(v23, v13);
    v27 = v26;
    if (v26 && ![v26 state])
    {
      v28 = swift_allocObject();
      v29 = v33;
      *(v28 + 16) = a1;
      *(v28 + 24) = v29;
      aBlock[4] = sub_1BD19E0B8;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_237;
      v30 = _Block_copy(aBlock);
      sub_1BE048964();

      [v27 reloadApplicationStateIfNecessaryWithCompletion_];

      _Block_release(v30);
      sub_1BD226BBC(v18);
      v31 = *(v32 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_linkedApplication);
      *(v32 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_linkedApplication) = v27;
    }

    else
    {
      a1(1);

      sub_1BD226BBC(v18);
    }
  }

  else
  {
    (a1)(0, v16);
  }
}

uint64_t sub_1BD9DC5B0()
{
  v1 = sub_1BE04BAC4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_linkedApplication);
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  v8 = v0;
  sub_1BE04BC34();
  v9 = sub_1BE04B9A4();
  (*(v2 + 8))(v5, v1);
  v10 = [objc_allocWithZone(PKPaymentSetupAppRequiredViewController) initWithSetupContext:v9 product:*(v8 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_product) linkedApplication:v7];
  if (v10)
  {
    sub_1BE052434();
    v11 = v10;
    v12 = sub_1BE04BB74();

    [v11 setReporter_];
  }

  return v10;
}

uint64_t sub_1BD9DC758()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD9DC794(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD9DC8AC(void (*a1)(void, void, void, void), uint64_t a2)
{
  v51 = a2;
  v50 = a1;
  v2 = sub_1BE04BD74();
  v52 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v47 - v7;
  v9 = sub_1BE04B8D4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v47 - v16;
  v18 = sub_1BE04B944();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BB94();
  sub_1BE04B924();
  (*(v19 + 8))(v22, v18);
  (*(v10 + 104))(v13, *MEMORY[0x1E69B7F80], v9);
  sub_1BD9DD4AC(&qword_1EBD55170, MEMORY[0x1E69B7F90]);
  v23 = sub_1BE052334();
  v24 = *(v10 + 8);
  v24(v13, v9);
  v24(v17, v9);
  if (v23)
  {
    v50(0, 0, 0, 0);
    return;
  }

  v48 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B2B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  *(inited + 32) = 2;
  v47 = inited + 32;
  v26 = *(v52 + 104);
  v26(v8, *MEMORY[0x1E69B80F8], v2);
  v27 = PKPassKitBundle();
  if (!v27)
  {
    __break(1u);
    goto LABEL_8;
  }

  v28 = v27;
  v29 = sub_1BE04B6F4();
  v31 = v30;

  v32 = *(v52 + 8);
  v32(v8, v2);
  v33 = MEMORY[0x1E69E6158];
  *(inited + 40) = v29;
  *(inited + 48) = v31;
  *(inited + 64) = v33;
  *(inited + 72) = 1021;
  v34 = v49;
  v26(v49, *MEMORY[0x1E69B80D0], v2);
  v35 = PKPassKitBundle();
  if (!v35)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v36 = v35;
  v37 = sub_1BE04B6F4();
  v39 = v38;

  v32(v34, v2);
  *(inited + 80) = v37;
  *(inited + 88) = v39;
  *(inited + 104) = MEMORY[0x1E69E6158];
  *(inited + 112) = 1062;
  *(inited + 144) = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  v40 = sub_1BD1AB050(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE20);
  swift_arrayDestroy();
  sub_1BD1A7FCC(v40);

  v41 = sub_1BE052224();

  v42 = swift_allocObject();
  v43 = v51;
  v42[2] = v50;
  v42[3] = v43;
  v44 = v48;
  v42[4] = v48;
  aBlock[4] = sub_1BD9DD430;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD1AA864;
  aBlock[3] = &block_descriptor_238;
  v45 = _Block_copy(aBlock);
  sub_1BE048964();
  v46 = v44;

  [v46 evaluatePolicy:1025 options:v41 reply:v45];
  _Block_release(v45);
}

uint64_t sub_1BD9DCEE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1BE051F54();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v14 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v25 = sub_1BE052D54();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  aBlock[4] = sub_1BD9DD43C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_9_10;
  v19 = _Block_copy(aBlock);
  sub_1BE048C84();
  v20 = a2;
  sub_1BE048964();
  v21 = a5;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD9DD4AC(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v22 = v25;
  MEMORY[0x1BFB3FDF0](0, v17, v13, v19);
  _Block_release(v19);

  (*(v27 + 8))(v13, v10);
  return (*(v14 + 8))(v17, v26);
}

uint64_t sub_1BD9DD1CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI50ProvisioningPasscodeUpgradeCurrentPasscodeFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD9DD208(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI50ProvisioningPasscodeUpgradeCurrentPasscodeFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD9DD258()
{
  v1 = [objc_allocWithZone(PKCurrentDevicePasscodeViewController) initWithDelegate_];
  sub_1BE052434();
  v2 = sub_1BE04BB74();

  [v1 setReporter_];

  return v1;
}

id sub_1BD9DD35C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9PassKitUI50ProvisioningPasscodeUpgradeCurrentPasscodeFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR____TtC9PassKitUI50ProvisioningPasscodeUpgradeCurrentPasscodeFlowItem_identifier];
  *v4 = 0xD000000000000032;
  *(v4 + 1) = 0x80000001BE10BC00;
  *&v1[OBJC_IVAR____TtC9PassKitUI50ProvisioningPasscodeUpgradeCurrentPasscodeFlowItem_context] = a1;
  swift_unknownObjectWeakAssign();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  sub_1BE048964();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1BD9DD43C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v2 = 0x6961662068747561;
    v3 = 0xEB0000000064656CLL;
    v4 = 3;
  }

  return (*(v0 + 32))(v2, v3, 0, v4);
}

uint64_t sub_1BD9DD4AC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD9DD4F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(v3 + OBJC_IVAR____TtC9PassKitUI50ProvisioningPasscodeUpgradeCurrentPasscodeFlowItem_context);
    objc_allocWithZone(type metadata accessor for ProvisioningPasscodeUpgradeNewPasscodeFlowItem());
    sub_1BE048964();
    sub_1BE048C84();
    v16 = v7;
    v9 = sub_1BD302300(v8, a1, a2);

    v10 = v3 + OBJC_IVAR____TtC9PassKitUI50ProvisioningPasscodeUpgradeCurrentPasscodeFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD865948(v3, &off_1F3BCB0F0, v9, &off_1F3B9DD48, ObjectType, v11);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v13 = v3 + OBJC_IVAR____TtC9PassKitUI50ProvisioningPasscodeUpgradeCurrentPasscodeFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 8);
      v15 = swift_getObjectType();
      sub_1BD8659A4(v3, &off_1F3BCB0F0, v15, v14);

      swift_unknownObjectRelease();
    }
  }
}

id PKPaymentTransactionFoundInMailViewCell.configure(messageID:senderEmailAddress:dateSent:title:subject:subtitle:deeplinkURL:)()
{
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B2B8);
  v2[4] = sub_1BD9DD8F4();
  __swift_allocate_boxed_opaque_existential_1(v2);
  type metadata accessor for FinanceKitFoundInMailRowView();
  sub_1BD9DD958();
  sub_1BE04FCE4();
  MEMORY[0x1BFB3FD10](v2);
  return [v0 setNeedsUpdateConfiguration];
}

uint64_t sub_1BD9DD76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = type metadata accessor for FinanceKitFoundInMailRowView();
  v17 = v16[6];
  v18 = sub_1BE04AF64();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&a9[v17], a5, v18);
  (*(v19 + 56))(&a9[v17], 0, 1, v18);
  sub_1BD38F438(a13, &a9[v16[10]]);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v20 = &a9[v16[7]];
  *v20 = a6;
  *(v20 + 1) = a7;
  v21 = &a9[v16[8]];
  *v21 = a8;
  *(v21 + 1) = a10;
  v22 = &a9[v16[9]];
  *v22 = a11;
  *(v22 + 1) = a12;
  v23 = &a9[v16[11]];
  *v23 = 0;
  *(v23 + 1) = 0;
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();

  return sub_1BE048C84();
}

unint64_t sub_1BD9DD8F4()
{
  result = qword_1EBD5B2C0;
  if (!qword_1EBD5B2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B2B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B2C0);
  }

  return result;
}

unint64_t sub_1BD9DD958()
{
  result = qword_1EBD5AAB8;
  if (!qword_1EBD5AAB8)
  {
    type metadata accessor for FinanceKitFoundInMailRowView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AAB8);
  }

  return result;
}

id PKPaymentTransactionFoundInMailViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id PKPaymentTransactionFoundInMailViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v7 = sub_1BE052404();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, a1, v7);

  return v8;
}

id PKPaymentTransactionFoundInMailViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKPaymentTransactionFoundInMailViewCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PKPaymentTransactionFoundInMailViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD9DE0A8(void *a1)
{
  v1 = [a1 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
  v2 = sub_1BE052744();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:

    return 0;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB40900](0, v2);
LABEL_6:
    v5 = v4;

    v6 = [v5 value];

    if (v6)
    {
      v7 = sub_1BE052434();

      return v7;
    }

    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_1BD9DE1C4(int a1, int a2, int a3, id a4)
{
  [a4 mutableCopy];
  sub_1BE053624();
  swift_unknownObjectRelease();
  sub_1BD0E5E8C(0, &qword_1EBD4DF70);
  swift_dynamicCast();
  v4 = sub_1BE052404();
  v5 = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:0 value:v4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE0B7020;
  *(v6 + 32) = v5;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
  v8 = sub_1BE052724();

  [v12 setEmailAddresses_];

  sub_1BD6B04D8();
  v9 = v12;
  v10 = sub_1BE052404();

  [v9 setValueSource_];

  return v9;
}

id sub_1BD9DE3A0@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  result = sub_1BD9DE1C4(a1, a2, a3, *v4);
  *a4 = result;
  return result;
}

unint64_t sub_1BD9DE3CC(uint64_t a1)
{
  *(a1 + 8) = sub_1BD9DE3FC();
  result = sub_1BD9DE450();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1BD9DE3FC()
{
  result = qword_1EBD5B2C8;
  if (!qword_1EBD5B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B2C8);
  }

  return result;
}

unint64_t sub_1BD9DE450()
{
  result = qword_1EBD5B2D0;
  if (!qword_1EBD5B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B2D0);
  }

  return result;
}

void sub_1BD9DE4A4()
{
  v0 = objc_opt_self();
  v1 = sub_1BE052724();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BE0B69E0;
  sub_1BE052434();
  v3 = sub_1BE052404();
  v4 = objc_allocWithZone(MEMORY[0x1E695CEE0]);
  v5 = sub_1BE052404();

  v6 = [v4 initWithLabel:v5 value:v3];

  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
  *(v2 + 32) = v6;
  v7 = sub_1BE052724();

  v8 = sub_1BE052724();
  v9 = [v0 pkContactWithNameComponents:0 postalAddresses:v1 emailAddresses:v7 phoneNumbers:v8];

  if (v9)
  {

    sub_1BD6B04D8();
    v10 = v9;
    v11 = sub_1BE052404();

    [v10 setValueSource_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD9DE6A4()
{

  sub_1BD0D4534(v0 + 32);

  return swift_deallocClassInstance();
}

char *sub_1BD9DE718(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BE0B98D0;
    v16 = *(v2 + 16);
    v15 = *(v2 + 24);
    v17 = objc_allocWithZone(type metadata accessor for ProvisioningInAppHeroFlowItem());
    sub_1BE048964();
    sub_1BE048964();
    *(v14 + 32) = sub_1BD2AF2E8(v16, v15);
    *(v14 + 40) = &off_1F3B9B580;
    v18 = objc_allocWithZone(type metadata accessor for ProvisioningDevicePickerFlowItem());
    v19 = sub_1BD7311A0(v16, v15);

    *(v14 + 48) = v19;
    *(v14 + 56) = &off_1F3BB8EE0;
    v20 = type metadata accessor for ProvisioningDeviceFullFlowItem();
    v21 = objc_allocWithZone(v20);
    v21[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_didComplete] = 0;
    *&v21[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v22 = &v21[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_identifier];
    *v22 = 0xD000000000000012;
    v22[1] = 0x80000001BE12B2F0;
    v23 = OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_dismissalConfiguration;
    v21[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_dismissalConfiguration] = 2;
    *&v21[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_context] = v16;
    *&v21[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_configuration] = v15;
    v21[v23] = 1;
    v27.receiver = v21;
    v27.super_class = v20;
    sub_1BE048964();
    sub_1BE048964();
    *(v14 + 64) = objc_msgSendSuper2(&v27, sel_init);
    *(v14 + 72) = &off_1F3BC2038;
    type metadata accessor for UIStaticFlowSection();
    v24 = swift_allocObject();
    *(v24 + 24) = 0;
    swift_unknownObjectWeakInit();
    result = v24;
    *(v24 + 40) = 0x626E4F7070416E49;
    *(v24 + 48) = 0xEF676E696472616FLL;
    *(v24 + 56) = v14;
    *(v24 + 32) = 514;
    return result;
  }

  ObjectType = swift_getObjectType();
  if ((*(a2 + 8))(ObjectType, a2) == 0x626E4F7070416E49 && v5 == 0xEF676E696472616FLL)
  {

    goto LABEL_12;
  }

  v7 = sub_1BE053B84();

  if (v7)
  {
LABEL_12:
    v25 = *(v2 + 16);
    v26 = *(v2 + 24);
    objc_allocWithZone(type metadata accessor for ProvisioningInAppAddPassFlowItem());
    sub_1BE048964();
    sub_1BE048964();
    return sub_1BDA8F780(v25, v26);
  }

  type metadata accessor for ProvisioningInAppAddPassFlowItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v9 = *&result[OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_provisionedPasses];
    if (v9)
    {
      v10 = objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
      v11 = v9;
      v12 = sub_1BE048964();
      v13 = sub_1BD989980(v12, v11);

      return v13;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1BD9DEAAC()
{
  sub_1BD1C86BC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PKPaymentRewardsRedemptionStatus(319);
    if (v1 <= 0x3F)
    {
      sub_1BD9DEC28(319, &qword_1EBD45140, MEMORY[0x1E6968FB0]);
      if (v2 <= 0x3F)
      {
        sub_1BD9DEC28(319, &qword_1EBD36A40, MEMORY[0x1E6969530]);
        if (v3 <= 0x3F)
        {
          sub_1BD0E5E8C(319, &qword_1EBD43B00);
          if (v4 <= 0x3F)
          {
            sub_1BD9DEC7C();
            if (v5 <= 0x3F)
            {
              sub_1BD0E5E8C(319, qword_1EBD4F790);
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

void sub_1BD9DEC28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1BD9DEC7C()
{
  if (!qword_1EBD56518)
  {
    sub_1BD0E5E8C(255, &qword_1EBD43B00);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD56518);
    }
  }
}

uint64_t sub_1BD9DECE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v88 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v75 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v86 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v89 = &v75 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v75 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v90 = &v75 - v28;
  v29 = sub_1BD9DF62C();
  if (v29 && (v30 = v29, v31 = [v29 monetaryValue], v30, (v85 = v31) != 0))
  {
    v87 = v11;
    v32 = [a1 details];
    v33 = [v32 originalTransaction];

    v34 = [a1 identifier];
    v35 = sub_1BE052434();
    v83 = v36;
    v84 = v35;

    if (v33 && (v37 = [v33 merchantRawName]) != 0)
    {
      v38 = v37;
      v39 = sub_1BE052434();
      v81 = v40;
      v82 = v39;
    }

    else
    {
      v81 = 0;
      v82 = 0;
    }

    v44 = sub_1BD9DF6D0();
    v79 = v45;
    v80 = v44;
    v78 = [v33 monetaryValue];
    if (v33)
    {
      v46 = [v33 descriptionText];
      if (v46)
      {
        v47 = v46;
        v76 = sub_1BE052434();
        v77 = v48;
      }

      else
      {
        v76 = 0;
        v77 = 0;
      }

      v50 = [v33 timestamp];
      if (v50)
      {
        v51 = v50;
        sub_1BE04AEE4();

        v49 = *(v5 + 56);
        v49(v25, 0, 1, v4);
      }

      else
      {
        v49 = *(v5 + 56);
        v49(v25, 1, 1, v4);
      }

      sub_1BD0DE204(v25, v90, &unk_1EBD39970);
    }

    else
    {
      v49 = *(v5 + 56);
      v49(v90, 1, 1, v4);
      v76 = 0;
      v77 = 0;
    }

    v75 = [a1 status];
    v52 = [a1 statusLink];
    if (v52)
    {
      v53 = v87;
      v54 = v52;
      sub_1BE04A9F4();

      v55 = 0;
    }

    else
    {
      v55 = 1;
      v53 = v87;
    }

    v56 = sub_1BE04AA64();
    (*(*(v56 - 8) + 56))(v53, v55, 1, v56);
    v57 = [a1 createdAt];
    if (v57)
    {
      v58 = v88;
      v59 = v57;
      sub_1BE04AEE4();

      v60 = *(v5 + 32);
      v60(v18, v58, v4);
      v49(v18, 0, 1, v4);
      v61 = v89;
      v60(v89, v18, v4);
      v49(v61, 0, 1, v4);
    }

    else
    {
      v62 = 1;
      v49(v18, 1, 1, v4);
      v63 = [a1 updatedAt];
      if (v63)
      {
        v64 = v86;
        v65 = v63;
        sub_1BE04AEE4();

        v66 = v64;
        v62 = 0;
      }

      else
      {
        v66 = v86;
      }

      v49(v66, v62, 1, v4);
      v61 = v89;
      sub_1BD0DE204(v66, v89, &unk_1EBD39970);
      if ((*(v5 + 48))(v18, 1, v4) != 1)
      {
        sub_1BD0DE53C(v18, &unk_1EBD39970);
      }
    }

    v67 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];

    v68 = v83;
    *a2 = v84;
    a2[1] = v68;
    v69 = v81;
    a2[2] = v82;
    a2[3] = v69;
    v70 = type metadata accessor for RedemptionPresentation(0);
    *(a2 + v70[9]) = v85;
    v71 = (a2 + v70[10]);
    v72 = v79;
    *v71 = v80;
    v71[1] = v72;
    *(a2 + v70[12]) = v78;
    sub_1BD0DE204(v90, a2 + v70[11], &unk_1EBD39970);
    v73 = (a2 + v70[13]);
    v74 = v77;
    *v73 = v76;
    v73[1] = v74;
    a2[4] = v75;
    sub_1BD0DE204(v87, a2 + v70[7], &unk_1EBD3CF70);
    sub_1BD0DE204(v61, a2 + v70[8], &unk_1EBD39970);
    *(a2 + v70[14]) = v67;
    return (*(*(v70 - 1) + 56))(a2, 0, 1, v70);
  }

  else
  {

    v41 = type metadata accessor for RedemptionPresentation(0);
    v42 = *(*(v41 - 8) + 56);

    return v42(a2, 1, 1, v41);
  }
}

id sub_1BD9DF44C()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for RedemptionPresentation(0) + 52) + 8) && (v6 = sub_1BE052404(), v7 = PKMerchantFormattedDisplayName(), v6, v7))
  {
    v8 = sub_1BE052434();

    return v8;
  }

  else if (*(v0 + 24) && (v10 = sub_1BE052404(), v11 = PKMerchantFormattedDisplayName(), v10, v11))
  {
    v12 = sub_1BE052434();

    return v12;
  }

  else
  {
    (*(v2 + 104))(v5, *MEMORY[0x1E69B8088], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v13 = result;
      v14 = sub_1BE04B6F4();

      (*(v2 + 8))(v5, v1);
      return v14;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1BD9DF62C()
{
  v1 = [v0 details];
  if (!v1 || (v2 = v1, v3 = [v1 redeemed], v2, (result = v3) == 0))
  {
    result = [v0 details];
    if (result)
    {
      v5 = result;
      v6 = [result intended];

      return v6;
    }
  }

  return result;
}

id sub_1BD9DF6D0()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v20 - v7;
  result = sub_1BD9DF62C();
  if (result)
  {
    v10 = result;
    v11 = [result type];
    if (v11 == 3)
    {
      (*(v1 + 104))(v8, *MEMORY[0x1E69B8088], v0);
      result = PKPassKitBundle();
      if (result)
      {
        v12 = result;
        v13 = sub_1BE04B6F4();

        (*(v1 + 8))(v8, v0);
        return v13;
      }

      __break(1u);
    }

    else
    {
      if ((v11 - 1) <= 1)
      {
        v14 = [v10 value];
        if (v14)
        {
          v20[1] = 0;
          v20[2] = 0;
          v21 = 0;
          v22 = 1;
          v15 = v14;
          sub_1BE0533E4();

          if (v22 != 1)
          {
            v16 = sub_1BE053454();
            v18 = v17;
            (*(v1 + 104))(v4, *MEMORY[0x1E69B8088], v0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
            v19 = swift_allocObject();
            *(v19 + 16) = xmmword_1BE0B69E0;
            *(v19 + 56) = MEMORY[0x1E69E6158];
            *(v19 + 64) = sub_1BD110550();
            *(v19 + 32) = v16;
            *(v19 + 40) = v18;
            v13 = sub_1BE04B714();

            (*(v1 + 8))(v4, v0);
            return v13;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_1BD9DF9BC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v29[-v6];
  sub_1BD9DF44C();
  v8 = sub_1BE052404();

  [a1 setPrimaryString_];

  sub_1BE052F14();
  v9 = sub_1BE052404();

  [a1 setSecondaryString_];

  v10 = type metadata accessor for RedemptionPresentation(0);
  sub_1BD0DE19C(v1 + v10[8], v7, &unk_1EBD39970);
  v11 = sub_1BE04AF64();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v7, 1, v11) != 1)
  {
    v13 = sub_1BE04AE64();
    (*(v12 + 8))(v7, v11);
  }

  v14 = PKRelativeDateStringWithFullDateForUnits();

  if (v14)
  {
    sub_1BE052434();

    v15 = sub_1BE052404();
  }

  else
  {
    v15 = 0;
  }

  [a1 setTertiaryString_];

  [a1 setPrimaryImage_];
  [a1 setShowsDisclosureView_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD430F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v17 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v18 = sub_1BD0E5E8C(0, &qword_1EBD43100);
  v19 = v17;
  sub_1BE051224();
  *(inited + 40) = sub_1BE052FE4();
  v20 = *MEMORY[0x1E69DB600];
  *(inited + 64) = v18;
  *(inited + 72) = v20;
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 clearColor];
  *(inited + 104) = v18;
  *(inited + 80) = v23;
  sub_1BD1ACD28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF68);
  swift_arrayDestroy();
  v24 = [*(v2 + v10[9]) formattedStringValue];
  if (v24)
  {
    v25 = v24;
    v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    type metadata accessor for Key(0);
    sub_1BD9E1D18(&qword_1EBD37B80, type metadata accessor for Key);
    v27 = sub_1BE052224();

    v28 = [v26 initWithString:v25 attributes:v27];

    [a1 setTransactionValueAttributedText_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD9DFDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9E1D18(&qword_1EBD5B450, type metadata accessor for RedemptionView);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD9DFE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9E1D18(&qword_1EBD5B450, type metadata accessor for RedemptionView);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD9DFEEC()
{
  sub_1BD9E1D18(&qword_1EBD5B450, type metadata accessor for RedemptionView);
  sub_1BE04F964();
  __break(1u);
}

uint64_t sub_1BD9DFF44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B340);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  swift_getKeyPath();
  sub_1BD9E1D18(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  sub_1BE04A5E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B348);
  sub_1BD0DE4F4(&qword_1EBD5B350, &qword_1EBD5B348);
  sub_1BD0DE4F4(&qword_1EBD5B358, &qword_1EBD5B340);
  v5 = sub_1BE052664();
  (*(v1 + 8))(v4, v0);

  return v5;
}

uint64_t sub_1BD9E0170@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v37 = sub_1BE04E2E4();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B2E8);
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B2F0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B2F8);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14, v16);
  v33 = &v33 - v17;
  v39 = v2;
  v18 = sub_1BE04F7B4();
  LOBYTE(v41[0]) = 1;
  sub_1BD9E0C2C(v47);
  v40[3] = *&v48[9];
  *(&v40[2] + 7) = *v48;
  *(&v40[1] + 7) = v47[1];
  *(v40 + 7) = v47[0];
  v19 = v41[0];
  v41[0] = v18;
  v41[1] = 0;
  v42 = v19;
  v46 = v40[3];
  v45 = v40[2];
  v44 = v40[1];
  v43 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B308);
  sub_1BD0DE4F4(&qword_1EBD5B310, &qword_1EBD5B300);
  sub_1BD9E1AA4();
  sub_1BE051A24();
  v20 = v35;
  v21 = v37;
  (*(v35 + 104))(v5, *MEMORY[0x1E697DAD8], v37);
  sub_1BD9E1B88();
  v22 = v34;
  sub_1BE050B84();
  (*(v20 + 8))(v5, v21);
  (*(v36 + 8))(v8, v22);
  v23 = &v13[*(v10 + 44)];
  *v23 = 0x4008000000000000;
  *(v23 + 1) = 0;
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v23[32] = 0;
  v24 = *(sub_1BD9DFF44() + 16);

  if (v24)
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  v26 = v33;
  sub_1BD0DE204(v13, v33, &qword_1EBD5B2F0);
  *(v26 + *(v15 + 44)) = v25;
  v27 = swift_allocObject();
  v28 = *(v2 + 16);
  *(v27 + 16) = *v2;
  *(v27 + 32) = v28;
  *(v27 + 48) = *(v2 + 32);
  *(v27 + 64) = *(v2 + 48);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B338);
  v30 = v38;
  v31 = (v38 + *(v29 + 36));
  sub_1BE04E7B4();
  sub_1BD9E1CE0(v2, v41);
  sub_1BE0528B4();
  *v31 = &unk_1BE10BF38;
  v31[1] = v27;
  return sub_1BD0DE204(v26, v30, &qword_1EBD5B2F8);
}

double sub_1BD9E064C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BD9DFF44();
  swift_getKeyPath();
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = *(a1 + 48);
  v10 = v4;
  sub_1BD9E1CE0(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B360);
  sub_1BD9E1DC4();
  sub_1BE0504E4();

  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B308) + 36);
  *(v7 + 32) = 0;
  result = 0.0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  return result;
}

uint64_t sub_1BD9E0784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for RedemptionPresentation(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BD6065D0(a1, v10);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v11 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  sub_1BD605158(v10, v13 + v11);
  v14 = v13 + v12;
  v15 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(a2 + 32);
  *(v14 + 48) = *(a2 + 48);
  sub_1BD6065D0(a1, v10);
  v16 = swift_allocObject();
  sub_1BD605158(v10, v16 + v11);
  *a3 = sub_1BD9E1EB4;
  a3[1] = v13;
  a3[2] = sub_1BD9E1F50;
  a3[3] = v16;
  return sub_1BD9E1CE0(a2, v19);
}

double sub_1BD9E090C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for RedemptionPresentation(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD6065D0(a1, v10);
  v27 = *(a2 + 16);
  v11 = v7[12];
  v12 = *&v10[v7[11]];
  v14 = *&v10[v11];
  v13 = *&v10[v11 + 8];
  v15 = v7[13];
  v16 = type metadata accessor for PaymentRewardsDetailItem(0);
  sub_1BD0DE19C(&v10[v15], a3 + v16[6], &unk_1EBD39970);
  v17 = *(v10 + 4);
  v18 = *&v10[v7[14]];
  sub_1BD0DE19C(&v10[v7[9]], a3 + v16[9], &unk_1EBD3CF70);
  sub_1BD206260(&v27, v26);
  v19 = v18;
  v20 = v12;
  sub_1BE048C84();
  v21 = sub_1BD9DF44C();
  v23 = v22;
  sub_1BD606634(v10);
  *a3 = v20;
  a3[1] = v14;
  a3[2] = v13;
  *(a3 + v16[7]) = v17;
  *(a3 + v16[8]) = v18;
  v24 = (a3 + v16[10]);
  *v24 = v21;
  v24[1] = v23;
  result = *&v27;
  *(a3 + v16[11]) = v27;
  return result;
}

uint64_t sub_1BD9E0A8C(uint64_t a1)
{
  v2 = sub_1BE04FF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B390);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v14 - v9;
  sub_1BD6065D0(a1, &v14 - v9);
  v11 = sub_1BE04F794();
  v12 = &v10[*(v7 + 36)];
  *v12 = v11;
  v12[1] = sub_1BD9E0C24;
  v12[2] = 0;
  sub_1BE04FF44();
  sub_1BD9E1FC0();
  sub_1BE050D14();
  (*(v3 + 8))(v6, v2);
  return sub_1BD0DE53C(v10, &qword_1EBD5B390);
}

id sub_1BD9E0C2C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE050474();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 104))(v12, *MEMORY[0x1E69B8088], v7, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v8 + 8))(v12, v7);
    v34 = v15;
    v35 = v17;
    sub_1BD0DDEBC();
    v18 = sub_1BE0506C4();
    v20 = v19;
    LOBYTE(v14) = v21;
    (*(v3 + 104))(v6, *MEMORY[0x1E6980F08], v2);
    sub_1BE050364();
    sub_1BE050284();
    (*(v3 + 8))(v6, v2);
    v22 = sub_1BE0505F4();
    v24 = v23;
    v26 = v25;

    sub_1BD0DDF10(v18, v20, v14 & 1);

    v34 = sub_1BE051224();
    v27 = sub_1BE050574();
    v29 = v28;
    LOBYTE(v15) = v30;
    v32 = v31;
    sub_1BD0DDF10(v22, v24, v26 & 1);

    LOBYTE(v34) = 0;
    v37 = v15 & 1;
    v36 = 0;
    *a1 = 0x4018000000000000;
    *(a1 + 8) = 0;
    *(a1 + 16) = v27;
    *(a1 + 24) = v29;
    *(a1 + 32) = v15 & 1;
    *(a1 + 40) = v32;
    *(a1 + 48) = 0x4018000000000000;
    *(a1 + 56) = 0;
    sub_1BD0D7F18(v27, v29, v15 & 1);
    sub_1BE048C84();
    sub_1BD0DDF10(v27, v29, v15 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD9E0F70(uint64_t a1)
{
  v1[2] = a1;
  sub_1BE0528A4();
  v1[3] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD9E1008, v3, v2);
}

uint64_t sub_1BD9E1008()
{
  v1 = v0[2];
  v2 = v1[5];
  if (v2)
  {
    v3 = v1[4];
    v4 = v1[6];
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = sub_1BD24D250;

    return sub_1BD5FDFB8(v3, v2, v4);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1BD9E1140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a7;
  v27 = a3;
  v28 = a4;
  v29 = a9;
  v25 = a2;
  v38 = MEMORY[0x1E6981E70];
  v39 = a6;
  v40 = MEMORY[0x1E6981E60];
  v41 = a8;
  sub_1BE04E8F4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v13 = sub_1BE051874();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v24 - v20;
  v30 = a5;
  v31 = a6;
  v32 = v26;
  v33 = a8;
  v34 = a1;
  v35 = v25;
  v36 = v27;
  v37 = v28;
  sub_1BE051CD4();
  sub_1BE051864();
  swift_getWitnessTable();
  sub_1BD147308(v17);
  v22 = *(v14 + 8);
  v22(v17, v13);
  sub_1BD147308(v21);
  return (v22)(v21, v13);
}

uint64_t sub_1BD9E1378@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *, uint64_t)@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v47 = a5;
  v48 = a6;
  v50 = a4;
  v51 = a3;
  v44 = a1;
  v45 = a2;
  v52 = a7;
  v49 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v43 = &v42 - v10;
  v56 = MEMORY[0x1E6981E70];
  v57 = v11;
  v58 = MEMORY[0x1E6981E60];
  v59 = v12;
  v13 = sub_1BE04E8F4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v42 - v16;
  v18 = sub_1BE04EBD4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v42 - v25;
  sub_1BDA5C818(v44, v45);
  WitnessTable = swift_getWitnessTable();
  sub_1BE050FE4();
  (*(v14 + 8))(v17, v13);
  v55[2] = WitnessTable;
  v55[3] = MEMORY[0x1E697E5C0];
  v28 = v18;
  v44 = swift_getWitnessTable();
  v29 = v26;
  v42 = v22;
  sub_1BD147308(v22);
  v30 = v19;
  v45 = *(v19 + 8);
  v31 = v45(v22, v28);
  v32 = v46;
  v51(v31);
  v33 = v43;
  v34 = v47;
  v35 = v48;
  sub_1BD147308(v32);
  v36 = v49;
  v51 = *(v49 + 8);
  (v51)(v32, v34);
  v37 = *(v30 + 16);
  v38 = v42;
  v37(v42, v29, v28);
  v56 = v38;
  (*(v36 + 16))(v32, v33, v34);
  v57 = v32;
  v55[0] = v28;
  v55[1] = v34;
  v53 = v44;
  v54 = v35;
  sub_1BD13A4C4(&v56, 2uLL, v55);
  v39 = v51;
  (v51)(v33, v34);
  v40 = v45;
  v45(v29, v28);
  v39(v32, v34);
  return v40(v38, v28);
}

uint64_t sub_1BD9E17C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B378);
  sub_1BD0DE4F4(&qword_1EBD5B388, &qword_1EBD5B380);
  sub_1BD0DE4F4(&qword_1EBD5B370, &qword_1EBD5B378);
  return sub_1BE0519C4();
}

void sub_1BD9E1928(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for PaymentRewardsLatestRedemptionsViewModel();
  sub_1BD9E1D18(&qword_1EBD4FD10, type metadata accessor for PaymentRewardsLatestRedemptionsViewModel);
  sub_1BE048964();
  v4 = sub_1BE04E954();
  v6 = v5;
  v7 = [a1 programName];
  v8 = sub_1BE052434();
  v10 = v9;

  v11 = [a1 passUniqueID];
  v12 = sub_1BE052434();
  v14 = v13;

  v15 = [a1 transactionSourceIdentifiers];
  v16 = sub_1BE052A34();

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v10;
  a2[4] = v12;
  a2[5] = v14;
  a2[6] = v16;
}

unint64_t sub_1BD9E1AA4()
{
  result = qword_1EBD5B318;
  if (!qword_1EBD5B318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B308);
    sub_1BD0DE4F4(&qword_1EBD5B320, &qword_1EBD5B328);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B318);
  }

  return result;
}

unint64_t sub_1BD9E1B88()
{
  result = qword_1EBD5B330;
  if (!qword_1EBD5B330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B2E8);
    sub_1BD0DE4F4(&qword_1EBD5B310, &qword_1EBD5B300);
    sub_1BD9E1AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B330);
  }

  return result;
}

uint64_t sub_1BD9E1C4C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BD0F985C;

  return sub_1BD9E0F70(v0 + 16);
}

uint64_t sub_1BD9E1D18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_118()
{

  return swift_deallocObject();
}

unint64_t sub_1BD9E1DC4()
{
  result = qword_1EBD5B368;
  if (!qword_1EBD5B368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B360);
    sub_1BD0DE4F4(&qword_1EBD5B370, &qword_1EBD5B378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B368);
  }

  return result;
}

double sub_1BD9E1E74@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

double sub_1BD9E1EB4@<D0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for RedemptionPresentation(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1BD9E090C(v1 + v4, v5, a1);
}

uint64_t sub_1BD9E1F50()
{
  v1 = *(type metadata accessor for RedemptionPresentation(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD9E0A8C(v2);
}

unint64_t sub_1BD9E1FC0()
{
  result = qword_1EBD5B398;
  if (!qword_1EBD5B398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B390);
    sub_1BD9E1D18(&qword_1EBD5B3A0, type metadata accessor for RedemptionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B398);
  }

  return result;
}

uint64_t sub_1BD9E20C4()
{
  result = type metadata accessor for RedemptionPresentation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BD9E2130()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1BD9E2184()
{
  result = qword_1EBD5B438;
  if (!qword_1EBD5B438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B338);
    sub_1BD9E2240();
    sub_1BD9E1D18(&qword_1EBD37148, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B438);
  }

  return result;
}

unint64_t sub_1BD9E2240()
{
  result = qword_1EBD5B440;
  if (!qword_1EBD5B440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B2F8);
    sub_1BD9E22CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B440);
  }

  return result;
}

unint64_t sub_1BD9E22CC()
{
  result = qword_1EBD5B448;
  if (!qword_1EBD5B448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B2F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B2E8);
    sub_1BD9E1B88();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B448);
  }

  return result;
}

uint64_t sub_1BD9E248C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v42 = a1;
  v45 = a3;
  v44 = sub_1BE04FF64();
  v3 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E8F0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E8F8);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E900);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E908);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v41 - v23;
  *v10 = sub_1BE04F7C4();
  *(v10 + 1) = 0x4000000000000000;
  v10[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E910);
  sub_1BD9E28E8(v42, v43, &v10[*(v25 + 44)]);
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD0DE204(v10, v15, &qword_1EBD3E8F0);
  v26 = &v15[*(v12 + 44)];
  v27 = v53;
  *(v26 + 4) = v52;
  *(v26 + 5) = v27;
  *(v26 + 6) = v54;
  v28 = v49;
  *v26 = v48;
  *(v26 + 1) = v28;
  v29 = v51;
  *(v26 + 2) = v50;
  *(v26 + 3) = v29;
  LOBYTE(v12) = sub_1BE0501D4();
  sub_1BE04E1F4();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_1BD0DE204(v15, v19, &qword_1EBD3E8F8);
  v38 = &v19[*(v16 + 36)];
  *v38 = v12;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  sub_1BE04FF44();
  v39 = sub_1BD238ED0();
  sub_1BE050D14();
  (*(v3 + 8))(v6, v44);
  sub_1BD0DE53C(v19, &qword_1EBD3E900);
  sub_1BE052434();
  v46 = v16;
  v47 = v39;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();

  return (*(v21 + 8))(v24, v20);
}

id sub_1BD9E28E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a1;
  v65 = a2;
  v68 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E930);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v69 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v67 = &v64 - v8;
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v66 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v70 = &v64 - v20;
  (*(v10 + 104))(v13, *MEMORY[0x1E69B8068], v9, v19);
  result = PKPassKitBundle();
  if (result)
  {
    v22 = result;
    v23 = sub_1BE04B6F4();
    v25 = v24;

    (*(v10 + 8))(v13, v9);
    v71 = v23;
    v72 = v25;
    sub_1BD0DDEBC();
    v26 = sub_1BE0506C4();
    v28 = v27;
    LOBYTE(v22) = v29;
    sub_1BE050324();
    v30 = sub_1BE0505F4();
    v32 = v31;
    v34 = v33;

    sub_1BD0DDF10(v26, v28, v22 & 1);

    sub_1BE051224();
    v35 = sub_1BE050564();
    v37 = v36;
    v39 = v38;
    v41 = v40;

    sub_1BD0DDF10(v30, v32, v34 & 1);

    KeyPath = swift_getKeyPath();
    v71 = v35;
    v72 = v37;
    v73 = v39 & 1;
    v74 = v41;
    v75 = KeyPath;
    v76 = 1;
    v77 = 0;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108);
    sub_1BD1B9C50();
    sub_1BE050DE4();

    sub_1BD0DDF10(v35, v37, v39 & 1);

    v71 = v64;
    v72 = v65;
    sub_1BE048C84();
    v43 = sub_1BE0506C4();
    v45 = v44;
    LOBYTE(v41) = v46;
    sub_1BE050324();
    v47 = sub_1BE0505F4();
    v49 = v48;
    LOBYTE(v37) = v50;

    sub_1BD0DDF10(v43, v45, v41 & 1);

    sub_1BE051234();
    v51 = sub_1BE050564();
    v53 = v52;
    LOBYTE(v32) = v54;
    v56 = v55;

    sub_1BD0DDF10(v47, v49, v37 & 1);

    v57 = swift_getKeyPath();
    v71 = v51;
    v72 = v53;
    LOBYTE(v32) = v32 & 1;
    v73 = v32;
    v74 = v56;
    v75 = v57;
    LOBYTE(v76) = 0;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD391C0);
    sub_1BD0FF49C();
    v58 = v67;
    sub_1BE050DE4();

    sub_1BD0DDF10(v51, v53, v32);

    v59 = v70;
    v60 = v66;
    sub_1BD0DE19C(v70, v66, &qword_1EBD3C0E8);
    v61 = v69;
    sub_1BD0DE19C(v58, v69, &qword_1EBD3E930);
    v62 = v68;
    sub_1BD0DE19C(v60, v68, &qword_1EBD3C0E8);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E938);
    sub_1BD0DE19C(v61, v62 + *(v63 + 48), &qword_1EBD3E930);
    sub_1BD0DE53C(v58, &qword_1EBD3E930);
    sub_1BD0DE53C(v59, &qword_1EBD3C0E8);
    sub_1BD0DE53C(v61, &qword_1EBD3E930);
    return sub_1BD0DE53C(v60, &qword_1EBD3C0E8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD9E2ED0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E8A0);
  v6 = a1 + v5[21];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a1 + v5[22];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  result = sub_1BD9E248C(v3, v4, a1);
  v9 = a1 + v5[19];
  *v9 = 0x4020000000000000;
  *(v9 + 8) = 0;
  *(a1 + v5[20]) = 1;
  return result;
}

void sub_1BD9E2F94(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PKCredentialCenterViewController_hostingVC;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1BD9E2FF4()
{
  v1 = OBJC_IVAR___PKCredentialCenterViewController_hostingVC;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BD9E3048(uint64_t a1)
{
  v3 = OBJC_IVAR___PKCredentialCenterViewController_hostingVC;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CredentialCenterViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *CredentialCenterViewController.init()()
{
  sub_1BE051694();
  v1 = v9;
  v12 = v8;
  type metadata accessor for CredentialCenterModel(0);
  swift_allocObject();
  CredentialCenterModel.init(userDefaultCredentialIdentifier:)(0, 0);
  sub_1BD324AE4();
  v8 = sub_1BE04E954();
  v9 = v2;
  v10 = v12;
  v11 = v1;
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B460));
  *&v0[OBJC_IVAR___PKCredentialCenterViewController_hostingVC] = sub_1BE04F894();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CredentialCenterViewController();
  v4 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
  v5 = OBJC_IVAR___PKCredentialCenterViewController_hostingVC;
  swift_beginAccess();
  [v4 addChildViewController_];
  return v4;
}

uint64_t CredentialCenterView.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1BE051694();
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  type metadata accessor for CredentialCenterModel(0);
  swift_allocObject();
  CredentialCenterModel.init(userDefaultCredentialIdentifier:)(0, 0);
  sub_1BD324AE4();
  result = sub_1BE04E954();
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

id sub_1BD9E339C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CredentialCenterViewController();
  objc_msgSendSuper2(&v5, sel_loadView);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR___PKCredentialCenterViewController_hostingVC;
    swift_beginAccess();
    result = [*&v0[v3] view];
    if (result)
    {
      v4 = result;
      [v2 addSubview_];

      return [*&v0[v3] didMoveToParentViewController_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id CredentialCenterViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CredentialCenterViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CredentialCenterViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CredentialCenterView.model.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}