uint64_t sub_1BD52B960()
{
  v2 = *v1;
  *(*v1 + 824) = v0;

  if (v0)
  {
    v3 = sub_1BD52E6CC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 16);
    v3 = sub_1BD52BA8C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BD52BA8C()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  v4 = sub_1BE049D54();
  v0[104] = v4;
  (*(v2 + 8))(v1, v3);
  v0[105] = sub_1BE0490B4();
  v5 = *(v4 + 16);
  v0[106] = v5;
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = v0[71];
    v8 = v0[67];
    v22 = MEMORY[0x1E69E7CC0];
    sub_1BD531F28(0, v5, 0);
    v6 = v22;
    v10 = *(v8 + 16);
    v9 = v8 + 16;
    v11 = v4 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v20 = *(v9 + 56);
    v21 = v10;
    do
    {
      v12 = v0[69];
      v13 = v0[66];
      v21(v12, v11, v13);
      sub_1BE049A14();
      (*(v9 - 8))(v12, v13);
      v15 = *(v22 + 16);
      v14 = *(v22 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1BD531F28(v14 > 1, v15 + 1, 1);
      }

      v16 = v0[77];
      v17 = v0[70];
      *(v22 + 16) = v15 + 1;
      (*(v7 + 32))(v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v16, v17);
      v11 += v20;
      --v5;
    }

    while (v5);
  }

  v0[107] = v6;
  v18 = swift_task_alloc();
  v0[108] = v18;
  *v18 = v0;
  v18[1] = sub_1BD52BCB8;

  return MEMORY[0x1EEDC1480](v6);
}

uint64_t sub_1BD52BCB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 872) = a1;
  *(v3 + 880) = v1;

  if (v1)
  {

    v4 = sub_1BD52E99C;
  }

  else
  {
    v4 = sub_1BD52BE2C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BD52BE2C()
{
  v1 = v0 + 27;
  v2 = v0[106];
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[104];
    v5 = v0[71];
    v6 = v0[67];
    v106 = MEMORY[0x1E69E7CC0];
    sub_1BD531F28(0, v2, 0);
    v7 = 0;
    v8 = v106;
    v9 = *(v6 + 16);
    v6 += 16;
    v10 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v97 = *(v6 + 56);
    v99 = v9;
    v11 = (v6 - 8);
    do
    {
      v12 = v0[69];
      v13 = v0[66];
      v99(v12, v10, v13);
      sub_1BE049A64();
      (*v11)(v12, v13);
      v15 = *(v106 + 16);
      v14 = *(v106 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1BD531F28(v14 > 1, v15 + 1, 1);
      }

      v16 = v0[106];
      v17 = v0[76];
      v18 = v0[70];
      ++v7;
      *(v106 + 16) = v15 + 1;
      (*(v5 + 32))(v106 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v17, v18);
      v10 += v97;
    }

    while (v7 != v16);
    v1 = v0 + 27;
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v19 = sub_1BD537330(v8);

  v0[27] = v19;
  v0[111] = OBJC_IVAR____TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher_accounts;
  swift_beginAccess();
  v20 = sub_1BE048C84();
  sub_1BD5351F0(v20);

  if (*(v0[27] + 16))
  {
    v21 = v0[62];
    v22 = v0[54];
    v23 = swift_task_alloc();
    v0[112] = v23;
    *(v23 + 16) = v1;
    v0[28] = v22;
    sub_1BE04B444();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF8);
    (*(*(v24 - 8) + 56))(v21, 0, 1, v24);
    sub_1BE049B54();
    v0[113] = sub_1BE0490B4();
    v25 = swift_task_alloc();
    v0[114] = v25;
    *v25 = v0;
    v25[1] = sub_1BD52C848;
    v26 = v0[65];
    v27 = v0[61];

    return MEMORY[0x1EEDC14B8](v27, v26);
  }

  v28 = v0[104];
  v104 = v3;
  v29 = sub_1BD1AB78C(v3);
  v105 = v29;
  v30 = sub_1BD1AD454(v3);
  v107 = v30;
  v31 = *(v28 + 16);
  v32 = v0[109];
  if (v31)
  {
    v33 = v0[67];
    v34 = v0[55];
    v91 = v0[34];
    v90 = OBJC_IVAR____TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher_accountIDToInstitution;
    v36 = *(v33 + 16);
    v33 += 16;
    v35 = v36;
    v37 = v0[104] + ((*(v33 + 64) + 32) & ~*(v33 + 64));
    v102 = *(v33 + 56);
    v38 = (v0[71] + 8);
    v85 = v34;
    v86 = (v34 + 48);
    v87 = (v34 + 56);
    v100 = (v33 - 8);
    v92 = v0[109];
    v89 = v36;
    v88 = v38;
    while (1)
    {
      v35(v0[68], v37, v0[66]);
      sub_1BE049A14();
      if (*(v32 + 16))
      {
        v40 = sub_1BD14951C(v0[73]);
        v39 = *v38;
        if (v41)
        {
          v42 = v0[73];
          v43 = v0[70];
          v44 = *v38;
          v45 = *(*(v32 + 56) + 8 * v40);
          v96 = v44;
          v44(v42, v43);
          sub_1BE049A64();
          swift_beginAccess();
          v46 = *(v91 + v90);
          if (*(v46 + 16) && (v47 = sub_1BD14951C(v0[72]), (v48 & 1) != 0))
          {
            v49 = *(*(v46 + 56) + 8 * v47);
            v50 = v49;
          }

          else
          {
            v49 = 0;
          }

          v51 = v45;
          swift_endAccess();
          v95 = v49;
          v52 = [objc_opt_self() transactionFromFKPaymentTransaction:v45 institution:v49];
          MEMORY[0x1BFB3F7A0]();
          if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BE052774();
          }

          v53 = v0[111];
          v54 = v0[34];
          v94 = v52;
          sub_1BE0527C4();
          v55 = [v45 transactionId];
          v56 = sub_1BE052434();
          v93 = v57;

          swift_beginAccess();
          v58 = *(v54 + v53);
          if (*(v58 + 16) && (v59 = sub_1BD14951C(v0[72]), (v60 & 1) != 0))
          {
            (*(v85 + 16))(v0[35], *(v58 + 56) + *(v85 + 72) * v59, v0[54]);
            v61 = 0;
          }

          else
          {
            v61 = 1;
          }

          v62 = v0[54];
          v63 = v0[35];
          (*v87)(v63, v61, 1, v62);
          v64 = (*v86)(v63, 1, v62);
          v65 = v0[35];
          if (v64)
          {
            v66 = 0;
            v67 = 0;
          }

          else
          {
            v66 = sub_1BE049534();
            v67 = v68;
          }

          sub_1BD0DE53C(v65, &qword_1EBD498C8);
          swift_endAccess();
          v69 = v0[72];
          v70 = v0[70];
          sub_1BD6B06D0(v66, v67, v56, v93);
          v71 = [v51 transactionId];
          v72 = sub_1BE052434();
          v74 = v73;

          sub_1BD6B07D8(v95, v72, v74);
          v38 = v88;
          v96(v69, v70);
          v3 = v104;
          v32 = v92;
          v35 = v89;
          goto LABEL_16;
        }
      }

      else
      {
        v39 = *v38;
      }

      v39(v0[73], v0[70]);
LABEL_16:
      (*v100)(v0[68], v0[66]);
      v37 += v102;
      if (!--v31)
      {

        v101 = v105;
        v103 = v107;
        v98 = v3;
        goto LABEL_35;
      }
    }
  }

  v103 = v30;

  v98 = MEMORY[0x1E69E7CC0];
  v101 = v29;
LABEL_35:
  v75 = v0[98];
  v76 = v0[97];
  v77 = v0[96];
  v78 = v0[95];
  v79 = v0[91];
  v80 = v0[90];
  v81 = v0[89];
  (*(v0[87] + 8))(v0[88], v0[86]);
  v82 = *(v77 + 8);
  v82(v76, v78);

  (*(v80 + 8))(v79, v81);
  v82(v75, v78);

  v83 = v0[1];

  return v83(v98, v101, v103);
}

uint64_t sub_1BD52C848()
{
  *(*v1 + 920) = v0;

  if (v0)
  {

    v2 = sub_1BD52EC64;
  }

  else
  {
    v2 = sub_1BD52C998;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD52C998()
{
  v1 = v0[60];
  v2 = v0[61];
  v3 = v0[59];
  v4 = sub_1BE049C14();
  v0[116] = v4;
  v5 = (*(v1 + 8))(v2, v3);
  v7 = *(v4 + 16);
  v0[117] = v7;
  v120 = v7;
  v122 = v4;
  v124 = v0;
  if (v7)
  {
    v8 = 0;
    v9 = v0[55];
    v116 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v113 = v0[71];
    v118 = v9;
    v111 = (v9 + 40);
    do
    {
      if (v8 >= *(v122 + 16))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        return MEMORY[0x1EEDC14C8](v5, v6);
      }

      v10 = v0[111];
      v11 = v0[75];
      v13 = v0[57];
      v12 = v0[58];
      v14 = v0[54];
      v15 = v0[34];
      v127 = *(v118 + 72);
      (*(v118 + 16))(v12, v116 + v127 * v8, v14);
      sub_1BE049584();
      swift_beginAccess();
      v16 = *(v118 + 32);
      v16(v13, v12, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *(v15 + v10);
      *(v15 + v10) = 0x8000000000000000;
      v5 = sub_1BD14951C(v11);
      v19 = v18[2];
      v20 = (v6 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_50;
      }

      v23 = v6;
      if (v18[3] >= v22)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = v5;
          sub_1BD507498();
          v5 = v33;
        }
      }

      else
      {
        v24 = v0[75];
        sub_1BD502884(v22, isUniquelyReferenced_nonNull_native);
        v5 = sub_1BD14951C(v24);
        if ((v23 & 1) != (v25 & 1))
        {

          return sub_1BE053C14();
        }
      }

      v26 = v0[75];
      v27 = v0[70];
      v28 = v0[57];
      v29 = v0[54];
      if (v23)
      {
        (*v111)(v18[7] + v5 * v127, v0[57], v0[54]);
        (*(v113 + 8))(v26, v27);
      }

      else
      {
        v18[(v5 >> 6) + 8] |= 1 << v5;
        v30 = v5;
        (*(v113 + 16))(v18[6] + *(v113 + 72) * v5, v26, v27);
        v16(v18[7] + v30 * v127, v28, v29);
        v5 = (*(v113 + 8))(v26, v27);
        v31 = v18[2];
        v21 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v21)
        {
          goto LABEL_51;
        }

        v18[2] = v32;
        v0 = v124;
      }

      ++v8;
      *(v0[34] + v0[111]) = v18;

      v5 = swift_endAccess();
    }

    while (v120 != v8);
  }

  v34 = sub_1BE048C84();
  v35 = sub_1BD529194(v34);

  v36 = sub_1BD537298(v35);

  v0[29] = v36;
  v0[118] = OBJC_IVAR____TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher_accountIDToInstitution;
  swift_beginAccess();
  v37 = sub_1BE048C84();
  sub_1BD529554(v37);
  v39 = v38;

  sub_1BD530B30(v39);

  if (!*(v0[29] + 16))
  {
    (*(v0[64] + 8))(v0[65], v0[63]);

    v45 = v0[104];
    v46 = MEMORY[0x1E69E7CC0];
    v130 = MEMORY[0x1E69E7CC0];
    v47 = sub_1BD1AB78C(MEMORY[0x1E69E7CC0]);
    v131 = v47;
    v48 = sub_1BD1AD454(v46);
    v132 = v48;
    v49 = *(v45 + 16);
    v50 = v0[109];
    if (!v49)
    {
      v129 = v48;

      v121 = MEMORY[0x1E69E7CC0];
      v126 = v47;
LABEL_46:
      v95 = v0[98];
      v96 = v0[97];
      v97 = v0[96];
      v98 = v0[95];
      v99 = v0[91];
      v100 = v0[90];
      v101 = v0[89];
      (*(v0[87] + 8))(v0[88], v0[86]);
      v102 = *(v97 + 8);
      v102(v96, v98);

      (*(v100 + 8))(v99, v101);
      v102(v95, v98);

      v103 = v0[1];

      return v103(v121, v126, v129);
    }

    v51 = v0[67];
    v52 = v0[55];
    v109 = OBJC_IVAR____TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher_accountIDToInstitution;
    v110 = v0[34];
    v54 = *(v51 + 16);
    v51 += 16;
    v53 = v54;
    v55 = v0[104] + ((*(v51 + 64) + 32) & ~*(v51 + 64));
    v128 = *(v51 + 56);
    v56 = (v0[71] + 8);
    v104 = v52;
    v105 = (v52 + 48);
    v106 = (v52 + 56);
    v125 = (v51 - 8);
    v57 = MEMORY[0x1E69E7CC0];
    v112 = v0[109];
    v107 = v56;
    v108 = v54;
    while (1)
    {
      v53(v0[68], v55, v0[66]);
      sub_1BE049A14();
      if (*(v50 + 16))
      {
        v59 = sub_1BD14951C(v0[73]);
        v58 = *v56;
        if (v60)
        {
          v61 = v0[73];
          v62 = v0[70];
          v63 = *v56;
          v123 = *(*(v50 + 56) + 8 * v59);
          v119 = v63;
          v63(v61, v62);
          sub_1BE049A64();
          swift_beginAccess();
          v64 = *(v110 + v109);
          if (*(v64 + 16))
          {
            v65 = sub_1BD14951C(v0[72]);
            v66 = &selRef_provisioningCardIconURL;
            if (v67)
            {
              v68 = *(*(v64 + 56) + 8 * v65);
              v69 = v68;
            }

            else
            {
              v68 = 0;
            }
          }

          else
          {
            v68 = 0;
            v66 = &selRef_provisioningCardIconURL;
          }

          swift_endAccess();
          v70 = [objc_opt_self() transactionFromFKPaymentTransaction:v123 institution:v68];
          MEMORY[0x1BFB3F7A0]();
          if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BE052774();
          }

          v71 = v0[111];
          v72 = v0[34];
          v117 = v70;
          sub_1BE0527C4();
          v73 = [v123 v66[2]];
          v74 = sub_1BE052434();
          v114 = v75;
          v115 = v74;

          swift_beginAccess();
          v76 = *(v72 + v71);
          if (*(v76 + 16) && (v77 = sub_1BD14951C(v0[72]), (v78 & 1) != 0))
          {
            (*(v104 + 16))(v0[35], *(v76 + 56) + *(v104 + 72) * v77, v0[54]);
            v79 = 0;
          }

          else
          {
            v79 = 1;
          }

          v80 = v124[54];
          v81 = v124[35];
          (*v106)(v81, v79, 1, v80);
          v82 = (*v105)(v81, 1, v80);
          v83 = v124[35];
          v84 = v68;
          if (v82)
          {
            v85 = 0;
            v86 = 0;
          }

          else
          {
            v85 = sub_1BE049534();
            v86 = v87;
          }

          sub_1BD0DE53C(v83, &qword_1EBD498C8);
          v0 = v124;
          swift_endAccess();
          v88 = v124[72];
          v89 = v124[70];
          sub_1BD6B06D0(v85, v86, v115, v114);
          v90 = [v123 v66[2]];
          v91 = sub_1BE052434();
          v93 = v92;

          sub_1BD6B07D8(v84, v91, v93);
          v56 = v107;
          v119(v88, v89);
          v57 = v130;
          v50 = v112;
          v53 = v108;
          goto LABEL_23;
        }
      }

      else
      {
        v58 = *v56;
      }

      v0 = v124;
      v58(v124[73], v124[70]);
LABEL_23:
      (*v125)(v0[68], v0[66]);
      v55 += v128;
      if (!--v49)
      {

        v126 = v131;
        v129 = v132;
        v121 = v57;
        goto LABEL_46;
      }
    }
  }

  v40 = v0[50];
  v41 = v0[41];
  v42 = swift_task_alloc();
  v0[119] = v42;
  *(v42 + 16) = v0 + 29;
  v0[30] = v41;
  sub_1BE04B444();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E00);
  (*(*(v43 - 8) + 56))(v40, 0, 1, v43);
  sub_1BE049CB4();
  v0[120] = sub_1BE0490B4();
  v44 = swift_task_alloc();
  v0[121] = v44;
  *v44 = v0;
  v44[1] = sub_1BD52D608;
  v6 = v0[53];
  v5 = v0[49];

  return MEMORY[0x1EEDC14C8](v5, v6);
}

uint64_t sub_1BD52D608()
{
  *(*v1 + 976) = v0;

  if (v0)
  {

    v2 = sub_1BD52EF60;
  }

  else
  {
    v2 = sub_1BD52D764;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

unint64_t sub_1BD52D764()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  v4 = sub_1BE049D34();
  (*(v2 + 8))(v1, v3);
  result = sub_1BD1AD268(MEMORY[0x1E69E7CC0]);
  v6 = result;
  v186 = *(v4 + 16);
  if (!v186)
  {
LABEL_15:
    v33 = v6;
    v34 = v0[117];

    if (v34)
    {
      v35 = 0;
      v36 = v0[55];
      v37 = *(v36 + 16);
      v36 += 16;
      v182 = v37;
      v38 = v0[42];
      v39 = v0[116] + ((*(v36 + 64) + 32) & ~*(v36 + 64));
      v177 = (v36 - 8);
      v179 = (v0[39] + 8);
      v174 = (v38 + 56);
      v166 = (v38 + 16);
      v171 = (v38 + 48);
      v162 = (v38 + 8);
      v164 = (v38 + 32);
      v158 = v38;
      v160 = v0[71];
      v168 = *(v36 + 56);
      v170 = (v160 + 8);
      do
      {
        v187 = v39;
        v190 = v35;
        v41 = v0[56];
        v42 = v0[54];
        v43 = v0[40];
        v44 = v0[38];
        v182(v41, v39, v42);
        sub_1BE049524();
        v45 = sub_1BE049E24();
        v47 = v46;
        (*v179)(v43, v44);
        sub_1BE049584();
        (*v177)(v41, v42);
        if (v33[2])
        {
          v48 = sub_1BD148F70(v45, v47);
          v50 = v49;

          if (v50)
          {
            (*(v158 + 16))(v0[37], v33[7] + *(v158 + 72) * v48, v0[41]);
            v51 = 0;
            goto LABEL_24;
          }
        }

        else
        {
        }

        v51 = 1;
LABEL_24:
        v52 = v0[41];
        v54 = v0[36];
        v53 = v0[37];
        (*v174)(v53, v51, 1, v52);
        sub_1BD0DE19C(v53, v54, &qword_1EBD498D0);
        if ((*v171)(v54, 1, v52) == 1)
        {
          sub_1BD0DE53C(v0[37], &qword_1EBD498D0);
          swift_beginAccess();
LABEL_32:
          v73 = sub_1BD14951C(v0[74]);
          if (v74)
          {
            v75 = v73;
            v76 = v0[118];
            v77 = v0[34];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v79 = *(v77 + v76);
            *(v77 + v76) = 0x8000000000000000;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1BD5071FC();
            }

            v80 = v0[118];
            v81 = v0[74];
            v82 = v0[70];
            v83 = v0[34];
            v84 = *(v160 + 8);
            v84(*(v79 + 48) + *(v160 + 72) * v75, v82);

            sub_1BD5056BC(v75, v79);
            v84(v81, v82);
            *(v83 + v80) = v79;
          }

          else
          {
            (*v170)(v0[74], v0[70]);
          }

          goto LABEL_18;
        }

        v56 = v0[43];
        v55 = v0[44];
        v57 = v0[41];
        v58 = v0[37];
        (*v164)(v55, v0[36], v57);
        sub_1BD0E5E8C(0, &qword_1EBD498E8);
        (*v166)(v56, v55, v57);
        v59 = sub_1BE052BF4();
        (*v162)(v55, v57);
        sub_1BD0DE53C(v58, &qword_1EBD498D0);
        swift_beginAccess();
        if (!v59)
        {
          goto LABEL_32;
        }

        v60 = v0[118];
        v61 = v0[74];
        v62 = v0[34];
        v63 = swift_isUniquelyReferenced_nonNull_native();
        v64 = *(v62 + v60);
        *(v62 + v60) = 0x8000000000000000;
        v66 = sub_1BD14951C(v61);
        v67 = v64[2];
        v68 = (v65 & 1) == 0;
        result = v67 + v68;
        if (__OFADD__(v67, v68))
        {
          goto LABEL_75;
        }

        v69 = v65;
        if (v64[3] >= result)
        {
          if (v63)
          {
            if ((v65 & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          else
          {
            sub_1BD5071FC();
            if ((v69 & 1) == 0)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
          v70 = v0[74];
          sub_1BD502480(result, v63);
          v71 = sub_1BD14951C(v70);
          if ((v69 & 1) != (v72 & 1))
          {
            goto LABEL_69;
          }

          v66 = v71;
          if ((v69 & 1) == 0)
          {
LABEL_40:
            v87 = v0[74];
            v88 = v0[70];
            v64[(v66 >> 6) + 8] |= 1 << v66;
            result = (*(v160 + 16))(v64[6] + *(v160 + 72) * v66, v87, v88);
            *(v64[7] + 8 * v66) = v59;
            v89 = v64[2];
            v23 = __OFADD__(v89, 1);
            v90 = v89 + 1;
            if (v23)
            {
              goto LABEL_76;
            }

            v64[2] = v90;
            goto LABEL_42;
          }
        }

        v85 = v64[7];
        v86 = *(v85 + 8 * v66);
        *(v85 + 8 * v66) = v59;

LABEL_42:
        v91 = v0[118];
        v92 = v0[34];
        (*v170)(v0[74], v0[70]);
        *(v92 + v91) = v64;
LABEL_18:
        v35 = v190 + 1;
        v40 = v0[117];
        swift_endAccess();
        v39 = v187 + v168;
      }

      while (v190 + 1 != v40);
    }

    v93 = v0[65];
    v94 = v0[63];
    v95 = v0[64];
    v97 = v0[52];
    v96 = v0[53];
    v98 = v0[51];

    (*(v97 + 8))(v96, v98);
    (*(v95 + 8))(v93, v94);

    v99 = v0[104];
    v100 = MEMORY[0x1E69E7CC0];
    v193 = MEMORY[0x1E69E7CC0];
    v101 = sub_1BD1AB78C(MEMORY[0x1E69E7CC0]);
    v194 = v101;
    v102 = sub_1BD1AD454(v100);
    v196 = v102;
    v103 = *(v99 + 16);
    v104 = v0[109];
    if (!v103)
    {
      v192 = v102;

      v185 = MEMORY[0x1E69E7CC0];
      v189 = v101;
LABEL_66:
      v148 = v0[98];
      v149 = v0[97];
      v150 = v0[96];
      v151 = v0[95];
      v152 = v0[91];
      v153 = v0[90];
      v154 = v0[89];
      (*(v0[87] + 8))(v0[88], v0[86]);
      v155 = *(v150 + 8);
      v155(v149, v151);

      (*(v153 + 8))(v152, v154);
      v155(v148, v151);

      v156 = v0[1];

      return v156(v185, v189, v192);
    }

    v105 = v0[67];
    v106 = v0[55];
    v169 = v0[34];
    v167 = OBJC_IVAR____TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher_accountIDToInstitution;
    v108 = *(v105 + 16);
    v105 += 16;
    v107 = v108;
    v109 = v0[104] + ((*(v105 + 64) + 32) & ~*(v105 + 64));
    v191 = *(v105 + 56);
    v110 = (v0[71] + 8);
    v157 = v106;
    v159 = (v106 + 48);
    v161 = (v106 + 56);
    v188 = (v105 - 8);
    v111 = MEMORY[0x1E69E7CC0];
    v172 = v0[109];
    v165 = v108;
    v163 = v110;
    while (1)
    {
      v107(v0[68], v109, v0[66]);
      sub_1BE049A14();
      if (*(v104 + 16))
      {
        v113 = sub_1BD14951C(v0[73]);
        v112 = *v110;
        if (v114)
        {
          v115 = v0[73];
          v116 = v0[70];
          v117 = *v110;
          v118 = *(*(v104 + 56) + 8 * v113);
          v183 = v117;
          v117(v115, v116);
          sub_1BE049A64();
          swift_beginAccess();
          v119 = *(v169 + v167);
          if (*(v119 + 16) && (v120 = sub_1BD14951C(v0[72]), (v121 & 1) != 0))
          {
            v122 = *(*(v119 + 56) + 8 * v120);
            v123 = v122;
          }

          else
          {
            v122 = 0;
          }

          v124 = v118;
          swift_endAccess();
          v180 = v122;
          v125 = [objc_opt_self() transactionFromFKPaymentTransaction:v118 institution:v122];
          MEMORY[0x1BFB3F7A0]();
          if (*((v193 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v193 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BE052774();
          }

          v126 = v0[111];
          v127 = v0[34];
          v178 = v125;
          sub_1BE0527C4();
          v128 = [v118 transactionId];
          v129 = sub_1BE052434();
          v175 = v130;

          swift_beginAccess();
          v131 = *(v127 + v126);
          if (*(v131 + 16) && (v132 = sub_1BD14951C(v0[72]), (v133 & 1) != 0))
          {
            (*(v157 + 16))(v0[35], *(v131 + 56) + *(v157 + 72) * v132, v0[54]);
            v134 = 0;
          }

          else
          {
            v134 = 1;
          }

          v135 = v0[54];
          v136 = v0[35];
          (*v161)(v136, v134, 1, v135);
          v137 = (*v159)(v136, 1, v135);
          v138 = v0[35];
          if (v137)
          {
            v139 = 0;
            v140 = 0;
          }

          else
          {
            v139 = sub_1BE049534();
            v140 = v141;
          }

          sub_1BD0DE53C(v138, &qword_1EBD498C8);
          swift_endAccess();
          v142 = v0[72];
          v143 = v0[70];
          sub_1BD6B06D0(v139, v140, v129, v175);
          v144 = [v124 transactionId];
          v145 = sub_1BE052434();
          v147 = v146;

          sub_1BD6B07D8(v180, v145, v147);
          v110 = v163;
          v183(v142, v143);
          v111 = v193;
          v104 = v172;
          v107 = v165;
          goto LABEL_47;
        }
      }

      else
      {
        v112 = *v110;
      }

      v112(v0[73], v0[70]);
LABEL_47:
      (*v188)(v0[68], v0[66]);
      v109 += v191;
      if (!--v103)
      {

        v189 = v194;
        v192 = v196;
        v185 = v111;
        goto LABEL_66;
      }
    }
  }

  v7 = 0;
  v8 = v0[42];
  v181 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v184 = v8;
  v176 = v4;
  v173 = (v8 + 40);
  while (v7 < *(v4 + 16))
  {
    v10 = v0[45];
    v11 = v0[46];
    v12 = v0[41];
    v13 = *(v184 + 72);
    (*(v184 + 16))(v11, v181 + v13 * v7, v12);
    v14 = sub_1BE049144();
    v15 = v6;
    v17 = v16;
    v18 = *(v184 + 32);
    v18(v10, v11, v12);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v195 = v15;
    result = sub_1BD148F70(v14, v17);
    v21 = v15[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_73;
    }

    v25 = v20;
    if (v15[3] >= v24)
    {
      if ((v19 & 1) == 0)
      {
        v32 = result;
        sub_1BD507470();
        result = v32;
      }
    }

    else
    {
      sub_1BD50285C(v24, v19);
      result = sub_1BD148F70(v14, v17);
      if ((v25 & 1) != (v26 & 1))
      {
LABEL_69:

        return sub_1BE053C14();
      }
    }

    v27 = v0[45];
    v28 = v0[41];
    if (v25)
    {
      v9 = result;

      v6 = v195;
      result = (*v173)(v195[7] + v9 * v13, v27, v28);
    }

    else
    {
      v195[(result >> 6) + 8] |= 1 << result;
      v29 = (v195[6] + 16 * result);
      *v29 = v14;
      v29[1] = v17;
      v6 = v195;
      result = (v18)(v195[7] + result * v13, v27, v28);
      v30 = v195[2];
      v23 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v23)
      {
        goto LABEL_74;
      }

      v195[2] = v31;
    }

    ++v7;
    v4 = v176;
    if (v186 == v7)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_1BD52E6CC()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  (*(v0[87] + 8))(v0[88], v0[86]);
  v4 = *(v2 + 8);
  v4(v1, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  v5 = v0[98];
  v6 = v0[95];
  (*(v0[90] + 8))(v0[91], v0[89]);
  v4(v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BD52E99C()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  (*(v0[87] + 8))(v0[88], v0[86]);
  v4 = *(v2 + 8);
  v4(v1, v3);
  v5 = v0[98];
  v6 = v0[95];
  (*(v0[90] + 8))(v0[91], v0[89]);
  v4(v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BD52EC64()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  v4 = v0[88];
  v5 = v0[87];
  v6 = v0[86];
  (*(v0[64] + 8))(v0[65], v0[63]);
  (*(v5 + 8))(v4, v6);
  v7 = *(v2 + 8);
  v7(v1, v3);

  v8 = v0[98];
  v9 = v0[95];
  (*(v0[90] + 8))(v0[91], v0[89]);
  v7(v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1BD52EF60()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  v4 = v0[88];
  v5 = v0[87];
  v6 = v0[86];
  v7 = v0[65];
  v9 = v0[63];
  v8 = v0[64];
  (*(v0[52] + 8))(v0[53], v0[51]);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v10 = *(v2 + 8);
  v10(v1, v3);

  v11 = v0[98];
  v12 = v0[95];
  (*(v0[90] + 8))(v0[91], v0[89]);
  v10(v11, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1BD52F294@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v107 = a3;
  v108 = a4;
  v120 = a2;
  v115 = a5;
  v116 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E08);
  v6 = *(v5 - 8);
  v113 = v5;
  v114 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v104 = &v75 - v8;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49A08);
  v101 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v9);
  v95 = &v75 - v10;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49A10);
  v106 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v11);
  v97 = &v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49A18);
  v14 = *(v13 - 8);
  v109 = v13;
  v110 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v98 = &v75 - v16;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49A20);
  v105 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v17);
  v121 = &v75 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49A28);
  v20 = *(v19 - 8);
  v111 = v19;
  v112 = v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v99 = &v75 - v22;
  v118 = sub_1BE04A7A4();
  v23 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118, v24);
  v117 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49A30);
  v123 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v26);
  v28 = &v75 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v75 - v32;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49A38);
  v122 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v34);
  v36 = &v75 - v35;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49A40);
  v96 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v37);
  v93 = &v75 - v38;
  v116 = *v116;
  v81 = sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8);
  sub_1BE04A7C4();
  swift_getKeyPath();
  v80 = v29;
  sub_1BE04A724();

  v39 = *(v30 + 8);
  v83 = v30 + 8;
  v84 = v39;
  v39(v33, v29);
  v82 = sub_1BE04AF64();
  v40 = v28;
  sub_1BE04A7B4();
  v92 = *MEMORY[0x1E6968C40];
  v41 = *(v23 + 104);
  v90 = v23 + 104;
  v91 = v41;
  v42 = v117;
  v43 = v118;
  v41(v117);
  v86 = MEMORY[0x1E6968D58];
  v78 = sub_1BD0DE4F4(&qword_1EBD49A48, &qword_1EBD49A38);
  v89 = MEMORY[0x1E6968D20];
  v77 = sub_1BD0DE4F4(&qword_1EBD49A50, &qword_1EBD49A30);
  v79 = MEMORY[0x1E6969530];
  sub_1BD538AA4(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  v44 = v42;
  v45 = v85;
  v46 = v119;
  sub_1BE04A774();
  v47 = *(v23 + 8);
  v87 = v23 + 8;
  v88 = v47;
  v47(v44, v43);
  v48 = *(v123 + 8);
  v123 += 8;
  v76 = v48;
  v48(v40, v46);
  v49 = *(v122 + 8);
  v122 += 8;
  v75 = v49;
  v49(v36, v45);
  v50 = v80;
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  v51 = v84;
  v84(v33, v50);
  sub_1BE04A7B4();
  sub_1BD538AA4(&qword_1EBD3E460, v79);
  v52 = v119;
  sub_1BE04A714();
  v76(v40, v52);
  v75(v36, v45);
  sub_1BE04A7C4();
  swift_getKeyPath();
  v53 = v95;
  sub_1BE04A724();

  v51(v33, v50);
  swift_getKeyPath();
  sub_1BD0DE4F4(&qword_1EBD49A58, &qword_1EBD49A08);
  v54 = v97;
  v55 = v53;
  v56 = v100;
  sub_1BE04A724();

  (*(v101 + 8))(v55, v56);
  v124 = v107;
  v125 = v108;
  v57 = v104;
  sub_1BE04A7B4();
  v59 = v117;
  v58 = v118;
  v91(v117, v92, v118);
  sub_1BD0DE4F4(&qword_1EBD49A60, &qword_1EBD49A10);
  sub_1BD0DE4F4(&qword_1EBD38E58, &qword_1EBD38E08);
  v60 = v98;
  v61 = v57;
  v62 = v102;
  v63 = v113;
  sub_1BE04A774();
  v88(v59, v58);
  (*(v114 + 8))(v61, v63);
  (*(v106 + 8))(v54, v62);
  sub_1BD0DE4F4(&qword_1EBD49A68, &qword_1EBD49A20);
  sub_1BD0DE4F4(&qword_1EBD49A70, &qword_1EBD49A18);
  v64 = v99;
  v65 = v121;
  v66 = v103;
  v67 = v109;
  sub_1BE04A784();
  (*(v110 + 8))(v60, v67);
  (*(v105 + 8))(v65, v66);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49A78);
  v69 = v115;
  v115[3] = v68;
  v69[4] = sub_1BD538E6C();
  __swift_allocate_boxed_opaque_existential_1(v69);
  sub_1BD0DE4F4(&qword_1EBD49AD8, &qword_1EBD49A40);
  sub_1BD0DE4F4(&qword_1EBD49AE0, &qword_1EBD49A28);
  v70 = v93;
  v71 = v64;
  v72 = v94;
  v73 = v111;
  sub_1BE04A794();
  (*(v112 + 8))(v71, v73);
  return (*(v96 + 8))(v70, v72);
}

uint64_t sub_1BD5300B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

uint64_t sub_1BD530188@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE049C34();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD5301F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v71 = a3;
  v63 = a2;
  v74 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49B40);
  v6 = *(v5 - 8);
  v72 = v5;
  v73 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v69 = v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49B48);
  v10 = *(v9 - 8);
  v75 = v9;
  v76 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v70 = v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE0);
  v14 = *(v13 - 8);
  v65 = v13;
  v66 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v64 = v53 - v16;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7F0);
  v61 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v17);
  v19 = v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = v53 - v23;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7F8);
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v25);
  v27 = v53 - v26;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F800);
  v62 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v28);
  v53[0] = v53 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49B50);
  v31 = *(v30 - 8);
  v67 = v30;
  v68 = v31;
  MEMORY[0x1EEE9AC00](v30, v32);
  v77 = v53 - v33;
  v55 = *a1;
  v34 = sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  v54 = *(v21 + 8);
  v54(v24, v20);
  v56 = v21 + 8;
  sub_1BE0498F4();
  v35 = v19;
  sub_1BE04A7B4();
  v53[1] = MEMORY[0x1E6968D58];
  sub_1BD0DE4F4(&qword_1EBD3F890, &qword_1EBD3F7F8);
  v63 = MEMORY[0x1E6968D20];
  sub_1BD0DE4F4(&qword_1EBD3F898, &qword_1EBD3F7F0);
  sub_1BD538AA4(&qword_1EBD3F8A0, MEMORY[0x1E6967938]);
  v36 = v57;
  v37 = v59;
  sub_1BE04A714();
  (*(v61 + 8))(v35, v37);
  (*(v58 + 8))(v27, v36);
  sub_1BE04A7C4();
  swift_getKeyPath();
  v38 = v64;
  sub_1BE04A724();

  v39 = v54;
  v54(v24, v20);
  sub_1BD0DE4F4(&qword_1EBD3F8B0, &qword_1EBD3F800);
  sub_1BD0DE4F4(qword_1EBD38F90, &qword_1EBD38EE0);
  v40 = v53[0];
  v41 = v38;
  v42 = v60;
  v43 = v65;
  sub_1BE04A784();
  (*(v66 + 8))(v41, v43);
  (*(v62 + 8))(v40, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0);
  v44 = v69;
  sub_1BE04A7B4();
  sub_1BE04A7C4();
  v79 = v20;
  v80 = v24;
  sub_1BD0DE4F4(&qword_1EBD49B58, &qword_1EBD49B40);
  v78 = v34;
  v45 = v70;
  v46 = v72;
  sub_1BE04A764();
  (*(v73 + 8))(v44, v46);
  v39(v24, v20);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49B60);
  v48 = v74;
  v74[3] = v47;
  v48[4] = sub_1BD5394CC();
  __swift_allocate_boxed_opaque_existential_1(v48);
  sub_1BD0DE4F4(&qword_1EBD49B98, &qword_1EBD49B50);
  sub_1BD0DE4F4(&qword_1EBD49BA0, &qword_1EBD49B48);
  v49 = v77;
  v50 = v67;
  v51 = v75;
  sub_1BE04A784();
  (*(v76 + 8))(v45, v51);
  return (*(v68 + 8))(v49, v50);
}

uint64_t sub_1BD530B30(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;
        sub_1BE048C84();
        sub_1BD535BA0(v5, v4);

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t sub_1BD530BAC@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E70);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E78);
  v10 = *(v9 - 8);
  v22 = v9;
  v23 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF8);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v21 - v17;
  v24 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F08);
  sub_1BE04A7B4();
  sub_1BD0DE4F4(&qword_1EBD38E80, &qword_1EBD38E70);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  (*(v5 + 8))(v8, v4);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49B30);
  a2[4] = sub_1BD539440();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1BD0DE4F4(&qword_1EBD38F18, &qword_1EBD38EF8);
  sub_1BD0DE4F4(&qword_1EBD38ED0, &qword_1EBD38E78);
  sub_1BD0DE4F4(&qword_1EBD38F28, &qword_1EBD38F08);
  sub_1BD538AA4(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v19 = v22;
  sub_1BE04A754();
  (*(v23 + 8))(v13, v19);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1BD530F94@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E10);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E18);
  v10 = *(v9 - 8);
  v22 = v9;
  v23 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49AE8);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v21 - v17;
  v24 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49AF0);
  sub_1BE04A7B4();
  sub_1BD0DE4F4(&qword_1EBD38E20, &qword_1EBD38E10);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  (*(v5 + 8))(v8, v4);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49AF8);
  a2[4] = sub_1BD539274();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1BD0DE4F4(&qword_1EBD49B20, &qword_1EBD49AE8);
  sub_1BD0DE4F4(&qword_1EBD38E50, &qword_1EBD38E18);
  sub_1BD0DE4F4(&qword_1EBD49B28, &qword_1EBD49AF0);
  v19 = v22;
  sub_1BE04A754();
  (*(v23 + 8))(v13, v19);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1BD5314D4(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1BD53159C;

  return PKPagedTransactionListBankConnectFetcher.fetchTransactions(limit:before:)(a1, a2);
}

uint64_t sub_1BD53159C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 32);
  if (v0)
  {
    v8 = sub_1BE04A844();

    (v7)[2](v7, 0, 0, 0, v8);
    _Block_release(v7);
  }

  else
  {
    sub_1BD0E5E8C(0, &qword_1EBD4AB10);
    v9 = sub_1BE052724();
    v10 = sub_1BE052224();
    sub_1BD0E5E8C(0, &qword_1EBD498E8);
    v11 = sub_1BE052224();
    (v7)[2](v7, v9, v10, v11, 0);

    _Block_release(v7);
  }

  v12 = *(v6 + 8);

  return v12();
}

id PKPagedTransactionListBankConnectFetcher.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher_accounts;
  v3 = MEMORY[0x1E69E7CC0];
  *&v0[v2] = sub_1BD1AD564(MEMORY[0x1E69E7CC0]);
  v4 = OBJC_IVAR____TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher_accountIDToInstitution;
  *&v0[v4] = sub_1BD1AD784(v3);
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

char *sub_1BD531958(char *a1, int64_t a2, char a3)
{
  result = sub_1BD5324BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BD531978(void *a1, int64_t a2, char a3)
{
  result = sub_1BD5325D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BD531998(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3C9E8, &unk_1BE0BFC20, MEMORY[0x1E69B8150]);
  *v3 = result;
  return result;
}

char *sub_1BD5319DC(char *a1, int64_t a2, char a3)
{
  result = sub_1BD532734(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BD5319FC(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49978, &unk_1BE0DF778, type metadata accessor for UnavailablePass);
  *v3 = result;
  return result;
}

size_t sub_1BD531A40(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49940, &unk_1BE0DF718, type metadata accessor for AvailablePass);
  *v3 = result;
  return result;
}

char *sub_1BD531A84(char *a1, int64_t a2, char a3)
{
  result = sub_1BD53286C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BD531AA4(char *a1, int64_t a2, char a3)
{
  result = sub_1BD53298C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BD531AC4(void *a1, int64_t a2, char a3)
{
  result = sub_1BD532AB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BD531AE4(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49998, &unk_1BE0DF7A0, type metadata accessor for IdentityCredential);
  *v3 = result;
  return result;
}

void *sub_1BD531B28(void *a1, int64_t a2, char a3)
{
  result = sub_1BD532BE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BD531B48(void *a1, int64_t a2, char a3)
{
  result = sub_1BD532D30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BD531B68(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3CA68, &unk_1BE0BFCA0, MEMORY[0x1E6967A40]);
  *v3 = result;
  return result;
}

size_t sub_1BD531BAC(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3CC10, &unk_1BE0BFE50, type metadata accessor for AccountDebugCKTransaction);
  *v3 = result;
  return result;
}

size_t sub_1BD531BF0(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3CC18, &unk_1BE0DF6F0, type metadata accessor for AccountDebugCKReward);
  *v3 = result;
  return result;
}

void *sub_1BD531C34(void *a1, int64_t a2, char a3)
{
  result = sub_1BD5340C4(a1, a2, a3, *v3, &qword_1EBD40A40, &unk_1BE0C89A0, &unk_1EBD52590);
  *v3 = result;
  return result;
}

size_t sub_1BD531C74(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3CBD8, &unk_1BE0BFE20, MEMORY[0x1E6967788]);
  *v3 = result;
  return result;
}

size_t sub_1BD531CB8(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3CBF0, &unk_1BE0BFE30, MEMORY[0x1E6967780]);
  *v3 = result;
  return result;
}

size_t sub_1BD531CFC(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3CBD0, &unk_1BE0DFAD0, MEMORY[0x1E6967BE8]);
  *v3 = result;
  return result;
}

void *sub_1BD531D40(void *a1, int64_t a2, char a3)
{
  result = sub_1BD533AE8(a1, a2, a3, *v3, &qword_1EBD499D8, &unk_1BE0DF870, &qword_1EBD499E0);
  *v3 = result;
  return result;
}

void *sub_1BD531D80(void *a1, int64_t a2, char a3)
{
  result = sub_1BD5340C4(a1, a2, a3, *v3, &qword_1EBD49928, &unk_1BE0DF6D8, &qword_1EBD49930);
  *v3 = result;
  return result;
}

char *sub_1BD531DC0(char *a1, int64_t a2, char a3)
{
  result = sub_1BD532FD0(a1, a2, a3, *v3, &qword_1EBD3CB18);
  *v3 = result;
  return result;
}

char *sub_1BD531DF0(char *a1, int64_t a2, char a3)
{
  result = sub_1BD532EDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BD531E10(char *a1, int64_t a2, char a3)
{
  result = sub_1BD532FD0(a1, a2, a3, *v3, &qword_1EBD3CA20);
  *v3 = result;
  return result;
}

char *sub_1BD531E40(char *a1, int64_t a2, char a3)
{
  result = sub_1BD5330BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BD531E60(void *a1, int64_t a2, char a3)
{
  result = sub_1BD5340C4(a1, a2, a3, *v3, &qword_1EBD49970, &unk_1BE0DF768, &qword_1EBD45998);
  *v3 = result;
  return result;
}

size_t sub_1BD531EA0(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49948, &unk_1BE0DF728, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction);
  *v3 = result;
  return result;
}

size_t sub_1BD531EE4(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49950, &unk_1BE0DF730, type metadata accessor for TransactionContext);
  *v3 = result;
  return result;
}

size_t sub_1BD531F28(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3C910, &unk_1BE0BF5D0, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

size_t sub_1BD531F6C(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3C9B8, &unk_1BE0BFBF0, _s31SpendingSummaryDetailsViewModelVMa);
  *v3 = result;
  return result;
}

size_t sub_1BD531FB0(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3CAA8, &unk_1BE0BFCE8, type metadata accessor for DeviceViewModel);
  *v3 = result;
  return result;
}

size_t sub_1BD531FF4(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD46290, &unk_1BE0CC120, MEMORY[0x1E69B82B8]);
  *v3 = result;
  return result;
}

size_t sub_1BD532038(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49908, &unk_1BE0DF6C8, MEMORY[0x1E69B8138]);
  *v3 = result;
  return result;
}

size_t sub_1BD53207C(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49960, &unk_1BE0DF748, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
  *v3 = result;
  return result;
}

size_t sub_1BD5320C0(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49968, &unk_1BE0DF750, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
  *v3 = result;
  return result;
}

size_t sub_1BD532104(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD499C0, &unk_1BE0DF7C8, type metadata accessor for SEStorageUsageCategory);
  *v3 = result;
  return result;
}

char *sub_1BD532148(char *a1, int64_t a2, char a3)
{
  result = sub_1BD533440(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BD532168(char *a1, int64_t a2, char a3)
{
  result = sub_1BD5331C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BD532188(char *a1, int64_t a2, char a3)
{
  result = sub_1BD533544(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BD5321A8(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49BB0, &unk_1BE0DFAA8, MEMORY[0x1E6967810]);
  *v3 = result;
  return result;
}

char *sub_1BD5321EC(char *a1, int64_t a2, char a3)
{
  result = sub_1BD53366C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BD53220C(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD533788(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BD53222C(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49BF8, &unk_1BE0DFB18, type metadata accessor for AdaptiveHStack.SubviewMeasurement);
  *v3 = result;
  return result;
}

size_t sub_1BD532270(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3CAB8, &unk_1BE0E6EA0, type metadata accessor for SEStorageUsageGroup);
  *v3 = result;
  return result;
}

void *sub_1BD5322B4(void *a1, int64_t a2, char a3)
{
  result = sub_1BD533AE8(a1, a2, a3, *v3, &qword_1EBD499A0, &unk_1BE0DF7A8, &qword_1EBD499A8);
  *v3 = result;
  return result;
}

void *sub_1BD5322F4(void *a1, int64_t a2, char a3)
{
  result = sub_1BD533AE8(a1, a2, a3, *v3, &qword_1EBD499B0, &unk_1BE0DF7B8, &qword_1EBD499B8);
  *v3 = result;
  return result;
}

char *sub_1BD532334(char *a1, int64_t a2, char a3)
{
  result = sub_1BD533C30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BD532354(char *a1, int64_t a2, char a3)
{
  result = sub_1BD533D50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BD532374(void *a1, int64_t a2, char a3)
{
  result = sub_1BD533E5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BD532394(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3CAE0, &unk_1BE0DF700, type metadata accessor for UnavailablePaymentMethodItem);
  *v3 = result;
  return result;
}

char *sub_1BD5323D8(char *a1, int64_t a2, char a3)
{
  result = sub_1BD533FB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BD5323F8(void *a1, int64_t a2, char a3)
{
  result = sub_1BD5340C4(a1, a2, a3, *v3, &qword_1EBD3CA78, &unk_1BE0BFCB0, &unk_1EBD5BB70);
  *v3 = result;
  return result;
}

void *sub_1BD532438(void *a1, int64_t a2, char a3)
{
  result = sub_1BD5340C4(a1, a2, a3, *v3, &qword_1EBD49958, &unk_1BE0DF738, &unk_1EBD40A30);
  *v3 = result;
  return result;
}

size_t sub_1BD532478(size_t a1, int64_t a2, char a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49BB8, &unk_1BE0DFAB8, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown);
  *v3 = result;
  return result;
}

char *sub_1BD5324BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BD5325D8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD532734(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD53286C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD499D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD53298C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD499C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BD532AB4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BD532BE8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49988);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49990);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BD532D30(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD532EDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49938);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1BD532FD0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_1BD5330BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49920);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD5331C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CC48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD5332F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD533440(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46838);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1BD533544(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD499F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD53366C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 20);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[20 * v8])
    {
      memmove(v12, v13, 20 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 20 * v8);
  }

  return v10;
}

size_t sub_1BD533788(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BD8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1BD5339A0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49918);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BD533AE8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[3 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 24 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1BD533C30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD533D50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CC50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BD533E5C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD533FB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD499F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BD5340C4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_1BD534248(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

id sub_1BD534488(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1BE0537D4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1BD5345C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39888);
  v2 = *v0;
  v3 = sub_1BE0537D4();
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
        result = sub_1BE048C84();
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

void *sub_1BD53474C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1BE0537D4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1BD53487C()
{
  v1 = v0;
  v2 = type metadata accessor for AvailablePass(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD406F8);
  v7 = *v0;
  v8 = sub_1BE0537D4();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1BD133398(*(v7 + 48) + v22, v6, type metadata accessor for AvailablePass);
        result = sub_1BD2AF470(v6, *(v9 + 48) + v22, type metadata accessor for AvailablePass);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_1BD534A9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD40708);
  v2 = *v0;
  v3 = sub_1BE0537D4();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

void *sub_1BD534C40(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v10 = *v2;
  v11 = sub_1BE0537D4();
  v12 = v11;
  if (*(v10 + 16))
  {
    v26 = v4;
    result = (v11 + 56);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 56 + 8 * v14)
    {
      result = memmove(result, (v10 + 56), 8 * v14);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v10 + 56);
    v20 = (v17 + 63) >> 6;
    v27 = v6 + 32;
    for (i = v6 + 16; v19; result = (*(v6 + 32))(*(v12 + 48) + v24, v9, v5))
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v24 = *(v6 + 72) * (v21 | (v16 << 6));
      (*(v6 + 16))(v9, *(v10 + 48) + v24, v5);
    }

    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v20)
      {

        v4 = v26;
        goto LABEL_21;
      }

      v23 = *(v10 + 56 + 8 * v16);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v12;
  }

  return result;
}

void *sub_1BD534E8C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1BE0537D4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BD534FE4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = sub_1BE048C84();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1BD535538(*(*(v2 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_1BD5350D8(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;
    sub_1BE048C84();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 48) + ((v9 << 9) | (8 * v10)));
        v12 = sub_1BD5357B0();

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_1BD5351F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v19 - v5;
  v7 = sub_1BE04AFE4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 64);
    v15 = (v12 + 63) >> 6;
    v19[0] = v8 + 8;
    v19[1] = v8 + 16;
    sub_1BE048C84();
    v16 = 0;
    while (v14)
    {
      v17 = v16;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      (*(v8 + 16))(v11, *(a1 + 48) + *(v8 + 72) * (v18 | (v17 << 6)), v7);
      sub_1BD535CDC(v11, v6);
      (*(v8 + 8))(v11, v7);
      sub_1BD0DE53C(v6, &qword_1EBD39980);
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        return;
      }

      v14 = *(a1 + 64 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BD53540C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = sub_1BE048C84();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        sub_1BE048C84();
        sub_1BD535BA0(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1BD535538(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1BE053D04();
  sub_1BE052524();

  v5 = sub_1BE053D64();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 3;
  }

  v19 = v1;
  v8 = ~v6;
  while (!*(*(v4 + 48) + v7))
  {
    v10 = 0xE400000000000000;
    v9 = 1919968359;
    v11 = a1;
    if (!a1)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (v11 == 1)
    {
      v12 = 0x726F4B6874756F73;
    }

    else
    {
      v12 = 0xD000000000000010;
    }

    if (v11 == 1)
    {
      v13 = 0xEE00415049506165;
    }

    else
    {
      v13 = 0x80000001BE117610;
    }

    if (v9 == v12)
    {
      goto LABEL_18;
    }

LABEL_19:
    v14 = sub_1BE053B84();

    if (v14)
    {
      goto LABEL_23;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 3;
    }
  }

  if (*(*(v4 + 48) + v7) == 1)
  {
    v9 = 0x726F4B6874756F73;
    v10 = 0xEE00415049506165;
    v11 = a1;
    if (!a1)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v9 = 0xD000000000000010;
  v10 = 0x80000001BE117610;
  v11 = a1;
  if (a1)
  {
    goto LABEL_8;
  }

LABEL_17:
  v13 = 0xE400000000000000;
  if (v9 != 1919968359)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (v10 != v13)
  {
    goto LABEL_19;
  }

LABEL_23:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BD534E8C(&unk_1EBD40640);
    v17 = v20;
  }

  v15 = *(*(v17 + 48) + v7);
  sub_1BD5360C4(v7);
  *v19 = v20;
  return v15;
}

uint64_t sub_1BD5357B0()
{
  v1 = v0;
  v2 = *v0;
  sub_1BE052434();
  sub_1BE053D04();
  sub_1BE052524();
  v3 = sub_1BE053D64();

  v4 = -1 << *(v2 + 32);
  v5 = v3 & ~v4;
  if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  while (1)
  {
    v7 = sub_1BE052434();
    v9 = v8;
    if (v7 == sub_1BE052434() && v9 == v10)
    {
      break;
    }

    v12 = sub_1BE053B84();

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
    sub_1BD534488(&unk_1EBD406A0);
    v15 = v17;
  }

  v13 = *(*(v15 + 48) + 8 * v5);
  sub_1BD5362E0(v5);
  *v1 = v17;
  return v13;
}

uint64_t sub_1BD535950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AvailablePass(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = sub_1BE053D04();
  sub_1BD49C81C(v11);
  sub_1BE052524();

  v12 = sub_1BE053D64();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v23 = v2;
    v24 = v5;
    v25 = a2;
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1BD133398(*(v10 + 48) + v16 * v14, v9, type metadata accessor for AvailablePass);
      v17 = sub_1BD498D50(v9, a1);
      sub_1BD2AF4D8(v9, type metadata accessor for AvailablePass);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v18 = 1;
        a2 = v25;
        goto LABEL_10;
      }
    }

    v19 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v26 = *v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BD53487C();
      v21 = v26;
    }

    a2 = v25;
    sub_1BD2AF470(*(v21 + 48) + v16 * v14, v25, type metadata accessor for AvailablePass);
    sub_1BD5364C0(v14);
    v18 = 0;
    *v19 = v26;
LABEL_10:
    v5 = v24;
  }

  else
  {
    v18 = 1;
  }

  return (*(v6 + 56))(a2, v18, 1, v5);
}

uint64_t sub_1BD535BA0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1BE053D04();
  sub_1BE052524();
  v6 = sub_1BE053D64();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1BE053B84() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BD5345C8();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1BD5368F0(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1BD535CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BE04AFE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1BD538AA4(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
  v32 = a1;
  v11 = sub_1BE052284();
  v12 = v10 + 56;
  v30 = v10 + 56;
  v31 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v16(v9, *(v31 + 48) + v19 * v14, v5);
      sub_1BD538AA4(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
      v20 = sub_1BE052334();
      (*(v17 - 8))(v9, v5);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v30 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v21 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v21, 1, v5);
      }
    }

    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v33 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BD534C40(MEMORY[0x1E69695A8], &qword_1EBD406F0);
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v19 * v14, v5);
    sub_1BD536AB4(v14);
    v21 = 0;
    *v22 = v33;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 56))(a2, v21, 1, v5);
}

uint64_t sub_1BD535FA8(uint64_t a1)
{
  v3 = *v1;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](a1);
  v4 = sub_1BE053D64();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BD53474C(&qword_1EBD40678);
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_1BD536DBC(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_1BD5360C4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_1BE048964();
    v8 = sub_1BE053684();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1BE053D04();
        sub_1BE052524();

        v10 = sub_1BE053D64() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
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

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1BD5362E0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_1BE048964();
    v8 = sub_1BE053684();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_1BE052434();
        sub_1BE053D04();
        v11 = v10;
        sub_1BE052524();
        v12 = sub_1BE053D64();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
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

void sub_1BD5364C0(unint64_t a1)
{
  v3 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v39, v6);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for AvailablePass(0);
  v9 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  v14 = *v1 + 56;
  v15 = -1 << *(*v1 + 32);
  v16 = (a1 + 1) & ~v15;
  if (((1 << v16) & *(v14 + 8 * (v16 >> 6))) != 0)
  {
    v17 = ~v15;
    sub_1BE048964();
    v18 = sub_1BE053684();
    if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) != 0)
    {
      v36 = (v18 + 1) & v17;
      v37 = v17;
      v19 = *(v9 + 72);
      v38 = v14;
      v35 = v19;
      while (1)
      {
        v20 = v19 * v16;
        sub_1BD133398(*(v13 + 48) + v19 * v16, v12, type metadata accessor for AvailablePass);
        sub_1BE053D04();
        sub_1BD133398(v12, v8, type metadata accessor for WrappedPass);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (!EnumCaseMultiPayload)
        {
          break;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v22 = *v8;
          v23 = [*v8 passIdentifier];
          if (!v23)
          {
            goto LABEL_28;
          }

LABEL_12:
          v24 = v23;
          sub_1BE052434();

          goto LABEL_14;
        }

        v25 = v33;
        sub_1BD2AF470(v8, v33, type metadata accessor for PlaceholderPass);
        sub_1BE048C84();
        sub_1BD2AF4D8(v25, type metadata accessor for PlaceholderPass);
LABEL_14:
        sub_1BE052524();

        v26 = sub_1BE053D64();
        sub_1BD2AF4D8(v12, type metadata accessor for AvailablePass);
        v27 = v37;
        v28 = v26 & v37;
        if (a1 >= v36)
        {
          v14 = v38;
          v19 = v35;
          if (v28 < v36)
          {
            goto LABEL_6;
          }

LABEL_18:
          if (a1 < v28)
          {
            goto LABEL_6;
          }

          goto LABEL_19;
        }

        v14 = v38;
        v19 = v35;
        if (v28 < v36)
        {
          goto LABEL_18;
        }

LABEL_19:
        v29 = v19 * a1;
        if ((v19 * a1) < v20 || *(v13 + 48) + v19 * a1 >= *(v13 + 48) + v20 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v16;
          if (v29 == v20)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v16;
LABEL_6:
        v16 = (v16 + 1) & v27;
        if (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v22 = *v8;
      v23 = [*v8 uniqueID];
      if (!v23)
      {
        goto LABEL_29;
      }

      goto LABEL_12;
    }

LABEL_23:

    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v13 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v32;
    ++*(v13 + 36);
  }
}

unint64_t sub_1BD5368F0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_1BE048964();
    v8 = sub_1BE053684();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1BE053D04();
        sub_1BE048C84();
        sub_1BE052524();
        v10 = sub_1BE053D64();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1BD536AB4(int64_t a1)
{
  v3 = sub_1BE04AFE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    sub_1BE048964();
    v13 = sub_1BE053684();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_1BD538AA4(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
        v24 = sub_1BE052284();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }
}

unint64_t sub_1BD536DBC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_1BE048964();
    v8 = sub_1BE053684();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_1BE053D04();
        MEMORY[0x1BFB40DA0](v10);
        v11 = sub_1BE053D64() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1BD536FCC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1BFB3FAE0](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_1BD53704C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for PKPaymentNetwork(0);
  v4 = v3;
  v5 = sub_1BD538AA4(&qword_1EBD37B70, type metadata accessor for PKPaymentNetwork);
  result = MEMORY[0x1BFB3FAE0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1BD2A5358(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1BD537108(uint64_t a1)
{
  v2 = type metadata accessor for AvailablePass(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v16 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1BD538AA4(&qword_1EBD49BF0, type metadata accessor for AvailablePass);
  result = MEMORY[0x1BFB3FAE0](v11, v2, v12);
  v17 = result;
  if (v11)
  {
    v14 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v15 = *(v3 + 72);
    do
    {
      sub_1BD133398(v14, v6, type metadata accessor for AvailablePass);
      sub_1BD2A5B2C(v10, v6);
      sub_1BD2AF4D8(v10, type metadata accessor for AvailablePass);
      v14 += v15;
      --v11;
    }

    while (v11);
    return v17;
  }

  return result;
}

uint64_t sub_1BD537298(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1BFB3FAE0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_1BE048C84();
      sub_1BD2A5644(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1BD537330(uint64_t a1)
{
  v2 = sub_1BE04AFE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1BD538AA4(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1BFB3FAE0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v6, v17, v2);
      sub_1BD2A60D0(v10, v6);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_1BD5374CC(uint64_t a1)
{
  v2 = sub_1BE049B44();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1BD538AA4(&qword_1EBD40688, MEMORY[0x1E6967B20]);
  result = MEMORY[0x1BFB3FAE0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v6, v17, v2);
      sub_1BD2A63B0(v10, v6);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_1BD537668(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    v4 = sub_1BD0E5E8C(0, &qword_1EBD406D0);
    v5 = sub_1BD538E04();
    result = MEMORY[0x1BFB3FAE0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1BFB40900](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1BD2A6690(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1BE053704();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1BD5377A8()
{
  v1 = sub_1BE0498D4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v2 = sub_1BE0495A4();
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v3 = sub_1BE049C24();
  v0[11] = v3;
  v0[12] = *(v3 - 8);
  v0[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC8);
  v0[14] = swift_task_alloc();
  v4 = sub_1BE049B64();
  v0[15] = v4;
  v0[16] = *(v4 - 8);
  v0[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD5379D4, 0, 0);
}

uint64_t sub_1BD5379D4()
{
  v1 = v0[14];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF8);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_1BE049B54();
  sub_1BE0490F4();
  v0[18] = sub_1BE0490B4();
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_1BD537B00;
  v4 = v0[17];
  v5 = v0[13];

  return MEMORY[0x1EEDC14B8](v5, v4);
}

uint64_t sub_1BD537B00()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1BD5380C8;
  }

  else
  {
    v2 = sub_1BD537C30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD537C30()
{
  result = sub_1BE049C14();
  v2 = result;
  v44 = *(result + 16);
  if (v44)
  {
    v3 = 0;
    v4 = *(v0 + 56);
    v5 = *(v0 + 24);
    v40 = *MEMORY[0x1E6967908];
    v38 = (v5 + 8);
    v39 = (v5 + 104);
    v41 = v4;
    v36 = (v4 + 8);
    v37 = (v4 + 32);
    v6 = MEMORY[0x1E69E7CC0];
    v42 = result;
    while (v3 < *(v2 + 16))
    {
      v7 = *(v0 + 40);
      v8 = *(v0 + 32);
      v9 = *(v0 + 16);
      v10 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v11 = *(v41 + 72);
      (*(v41 + 16))(*(v0 + 80), v2 + v10 + v11 * v3, *(v0 + 48));
      sub_1BE049554();
      (*v39)(v8, v40, v9);
      sub_1BD538AA4(&qword_1EBD49BA8, MEMORY[0x1E6967920]);
      sub_1BE0526E4();
      sub_1BE0526E4();
      v12 = *v38;
      (*v38)(v8, v9);
      v12(v7, v9);
      if (*(v0 + 168) == *(v0 + 170))
      {
        v13 = *v37;
        (*v37)(*(v0 + 64), *(v0 + 80), *(v0 + 48));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BD5321A8(0, *(v6 + 16) + 1, 1);
        }

        v2 = v42;
        v15 = *(v6 + 16);
        v14 = *(v6 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1BD5321A8(v14 > 1, v15 + 1, 1);
        }

        v16 = *(v0 + 64);
        v17 = *(v0 + 48);
        *(v6 + 16) = v15 + 1;
        result = v13(v6 + v10 + v15 * v11, v16, v17);
      }

      else
      {
        result = (*v36)(*(v0 + 80), *(v0 + 48));
        v2 = v42;
      }

      if (v44 == ++v3)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_13:

    v18 = *(v6 + 16);
    if (v18)
    {
      v19 = *(v0 + 56);
      v21 = *(v19 + 16);
      v20 = v19 + 16;
      v22 = v6 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
      v43 = *(v20 + 56);
      v45 = v21;
      v23 = MEMORY[0x1E69E7CC0];
      do
      {
        v25 = *(v0 + 72);
        v26 = *(v0 + 48);
        v45(v25, v22, v26);
        v27 = sub_1BE049534();
        v29 = v28;
        (*(v20 - 8))(v25, v26);
        if (v29)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_1BD03B038(0, *(v23 + 2) + 1, 1, v23);
          }

          v31 = *(v23 + 2);
          v30 = *(v23 + 3);
          if (v31 >= v30 >> 1)
          {
            v23 = sub_1BD03B038((v30 > 1), v31 + 1, 1, v23);
          }

          *(v23 + 2) = v31 + 1;
          v24 = &v23[16 * v31];
          *(v24 + 4) = v27;
          *(v24 + 5) = v29;
        }

        v22 += v43;
        --v18;
      }

      while (v18);
    }

    else
    {

      v23 = MEMORY[0x1E69E7CC0];
    }

    v33 = *(v0 + 128);
    v32 = *(v0 + 136);
    v34 = *(v0 + 120);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    (*(v33 + 8))(v32, v34);

    v35 = *(v0 + 8);

    return v35(v23);
  }

  return result;
}

uint64_t sub_1BD5380C8()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BD5381A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0);
  v0[8] = swift_task_alloc();
  v1 = sub_1BE049CE4();
  v0[9] = v1;
  v0[10] = *(v1 - 8);
  v0[11] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0);
  v0[12] = v2;
  v0[13] = *(v2 - 8);
  v0[14] = swift_task_alloc();
  v3 = sub_1BE0498F4();
  v0[15] = v3;
  v0[16] = *(v3 - 8);
  v0[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD538360, 0, 0);
}

uint64_t sub_1BD538360()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  (*(v0[16] + 104))(v1, *MEMORY[0x1E6967930], v0[15]);
  v9 = swift_task_alloc();
  v0[18] = v9;
  *(v9 + 16) = v1;
  v0[7] = sub_1BE049A94();
  sub_1BE04B444();
  (*(v4 + 16))(v7, v2, v3);
  (*(v4 + 56))(v7, 0, 1, v3);
  sub_1BE049CD4();
  sub_1BE0490F4();
  v0[19] = sub_1BE0490B4();
  v10 = MEMORY[0x1E6967BC8];
  v0[5] = v8;
  v0[6] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v6 + 16))(boxed_opaque_existential_1, v5, v8);
  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = sub_1BD53853C;

  return MEMORY[0x1EEDC1518](v0 + 2);
}

uint64_t sub_1BD53853C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_1BD538794;
  }

  else
  {
    *(v4 + 176) = a1;
    __swift_destroy_boxed_opaque_existential_0(v4 + 16);
    v5 = sub_1BD538690;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BD538690()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];
  v8 = v0[22];

  return v7(v8);
}

uint64_t sub_1BD538794()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t type metadata accessor for PKTransactionsPageBoundary()
{
  result = qword_1EBD498F0;
  if (!qword_1EBD498F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD538914()
{
  result = sub_1BE04AF64();
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

unint64_t sub_1BD5389FC()
{
  result = qword_1EBD49900;
  if (!qword_1EBD49900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49900);
  }

  return result;
}

unint64_t sub_1BD538A50()
{
  result = qword_1EBD49910;
  if (!qword_1EBD49910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49910);
  }

  return result;
}

uint64_t sub_1BD538AA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD538AEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD126968;

  return sub_1BD5314D4(v2, v3, v5, v4);
}

uint64_t sub_1BD538BAC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BD52AB44(v2);
}

uint64_t sub_1BD538C58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BD126968;

  return sub_1BD992B34(v2, v3, v4);
}

uint64_t objectdestroy_33Tm()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD538D58()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD126968;

  return sub_1BD52A14C(v2);
}

unint64_t sub_1BD538E04()
{
  result = qword_1EBD49A00;
  if (!qword_1EBD49A00)
  {
    sub_1BD0E5E8C(255, &qword_1EBD406D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49A00);
  }

  return result;
}

unint64_t sub_1BD538E6C()
{
  result = qword_1EBD49A80;
  if (!qword_1EBD49A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49A78);
    sub_1BD5390C4(&qword_1EBD49A88, &qword_1EBD49A40);
    sub_1BD53900C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49A80);
  }

  return result;
}

unint64_t sub_1BD538F24()
{
  result = qword_1EBD49A98;
  if (!qword_1EBD49A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49A30);
    v1 = MEMORY[0x1E6969530];
    sub_1BD538AA4(&qword_1EBD49AA0, MEMORY[0x1E6969530]);
    sub_1BD538AA4(&qword_1EBD49AA8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49A98);
  }

  return result;
}

unint64_t sub_1BD53900C()
{
  result = qword_1EBD49AB0;
  if (!qword_1EBD49AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49A28);
    sub_1BD5390C4(&qword_1EBD49AB8, &qword_1EBD49A20);
    sub_1BD53914C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49AB0);
  }

  return result;
}

uint64_t sub_1BD5390C4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_1BD0FA424(&qword_1EBD49A90, &qword_1EBD49A38);
    sub_1BD538F24();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD53914C()
{
  result = qword_1EBD49AC0;
  if (!qword_1EBD49AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49A18);
    sub_1BD5391D8();
    sub_1BD0F9E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49AC0);
  }

  return result;
}

unint64_t sub_1BD5391D8()
{
  result = qword_1EBD49AC8;
  if (!qword_1EBD49AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49A10);
    sub_1BD0FA424(&qword_1EBD49AD0, &qword_1EBD49A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49AC8);
  }

  return result;
}

unint64_t sub_1BD539274()
{
  result = qword_1EBD49B00;
  if (!qword_1EBD49B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49AF8);
    sub_1BD539300();
    sub_1BD0F9D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49B00);
  }

  return result;
}

unint64_t sub_1BD539300()
{
  result = qword_1EBD49B08;
  if (!qword_1EBD49B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49AE8);
    sub_1BD5393D4(&qword_1EBD49B10);
    sub_1BD5393D4(&qword_1EBD49B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49B08);
  }

  return result;
}

uint64_t sub_1BD5393D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49AF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD539440()
{
  result = qword_1EBD49B38;
  if (!qword_1EBD49B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49B30);
    sub_1BD0FA28C();
    sub_1BD0F9F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49B38);
  }

  return result;
}

unint64_t sub_1BD5394CC()
{
  result = qword_1EBD49B68;
  if (!qword_1EBD49B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49B60);
    sub_1BD539558();
    sub_1BD5395FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49B68);
  }

  return result;
}

unint64_t sub_1BD539558()
{
  result = qword_1EBD49B70;
  if (!qword_1EBD49B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49B50);
    sub_1BD273AD4();
    sub_1BD0FA424(&qword_1EBD38F80, &qword_1EBD38EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49B70);
  }

  return result;
}

unint64_t sub_1BD5395FC()
{
  result = qword_1EBD49B78;
  if (!qword_1EBD49B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49B48);
    sub_1BD5396BC();
    sub_1BD0DE4F4(&qword_1EBD38F78, &qword_1EBD38EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49B78);
  }

  return result;
}

unint64_t sub_1BD5396BC()
{
  result = qword_1EBD49B80;
  if (!qword_1EBD49B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49B40);
    sub_1BD0DE4F4(&qword_1EBD49B88, &qword_1EBD38DF0);
    sub_1BD0DE4F4(&qword_1EBD49B90, &qword_1EBD38DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49B80);
  }

  return result;
}

uint64_t sub_1BD5397B8()
{
  swift_unknownObjectRelease();
  sub_1BD0D4534(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for UIFlowItemConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1BD5398C0()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 8);
  swift_unknownObjectRetain();
  v4 = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return v4;
}

unint64_t sub_1BD5399BC()
{
  result = qword_1EBD49C00;
  if (!qword_1EBD49C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49C00);
  }

  return result;
}

unint64_t sub_1BD539A14()
{
  result = qword_1EBD49C08;
  if (!qword_1EBD49C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49C08);
  }

  return result;
}

uint64_t sub_1BD539A68(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v17 = a1[6];
  v18 = a1[7];
  v15 = a1[9];
  v16 = a1[8];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  v13 = a2[9];
  v14 = a2[8];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1BE053B84() & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_1BE053B84() & 1) == 0 || (v4 != v9 || v5 != v8) && (sub_1BE053B84() & 1) == 0 || (v17 != v11 || v18 != v10) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  if (v16 == v14 && v15 == v13)
  {
    return 1;
  }

  return sub_1BE053B84();
}

__n128 sub_1BD539BE0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 givenName];
  v5 = sub_1BE052434();
  v25 = v6;
  v26 = v5;

  v7 = [a1 familyName];
  v24 = sub_1BE052434();
  v9 = v8;

  v10 = [a1 phoneticGivenName];
  v11 = sub_1BE052434();
  v13 = v12;

  v14 = [a1 phoneticFamilyName];
  v15 = sub_1BE052434();
  v17 = v16;

  v18 = [a1 organizationName];
  v19 = sub_1BE052434();
  v21 = v20;

  *&v28 = v26;
  *(&v28 + 1) = v25;
  v29.n128_u64[0] = v24;
  v29.n128_u64[1] = v9;
  *&v30 = v11;
  *(&v30 + 1) = v13;
  *&v31 = v15;
  *(&v31 + 1) = v17;
  *&v32 = v19;
  *(&v32 + 1) = v21;
  v33[0] = v26;
  v33[1] = v25;
  v33[2] = v24;
  v33[3] = v9;
  v33[4] = v11;
  v33[5] = v13;
  v33[6] = v15;
  v33[7] = v17;
  v33[8] = v19;
  v33[9] = v21;
  sub_1BD4F8278(&v28, v27);
  sub_1BD4F82D4(v33);
  v22 = v31;
  *(a2 + 32) = v30;
  *(a2 + 48) = v22;
  *(a2 + 64) = v32;
  result = v29;
  *a2 = v28;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1BD539D78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v128 = a1;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C10);
  v127 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v3);
  v126 = &v107 - v4;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C18);
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125, v5);
  v123 = &v107 - v6;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C20);
  MEMORY[0x1EEE9AC00](v122, v7);
  v121 = &v107 - v8;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C28);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v9);
  v118 = &v107 - v10;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C30);
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v11);
  v115 = &v107 - v12;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371B0);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v13);
  v130 = &v107 - v14;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C38);
  v112 = *(v131 - 1);
  MEMORY[0x1EEE9AC00](v131, v15);
  v108 = &v107 - v16;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C40);
  v111 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v17);
  v109 = &v107 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C48);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v107 - v21;
  v134 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C50);
  sub_1BD0DE4F4(&qword_1EBD49C58, &qword_1EBD49C50);
  sub_1BE0504E4();
  v23 = sub_1BE04F5B4();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04F584();
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C60) + 36);
  (*(v24 + 16))(&v22[v28], v27, v23);
  v29 = *(v24 + 56);
  v29(&v22[v28], 0, 1, v23);
  KeyPath = swift_getKeyPath();
  v31 = &v22[*(v19 + 36)];
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580) + 28);
  (*(v24 + 32))(v31 + v32, v27, v23);
  v29(v31 + v32, 0, 1, v23);
  *v31 = KeyPath;
  v33 = sub_1BE04F434();
  v34 = *(v33 - 8);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v38 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 104))(v38, *MEMORY[0x1E697C438], v33, v36);
  v39 = sub_1BD53DF88();
  v40 = v109;
  sub_1BE050E84();
  (*(v34 + 8))(v38, v33);
  sub_1BD0DE53C(v22, &qword_1EBD49C48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CD0);
  sub_1BE04EE44();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1BE0B69E0;
  sub_1BE04EE34();
  *&v136 = v19;
  *(&v136 + 1) = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v108;
  v44 = v110;
  MEMORY[0x1BFB3DEF0](0, v41, v110, OpaqueTypeConformance2);

  (*(v111 + 8))(v40, v44);
  v45 = v132;
  v133 = v132;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C88);
  *&v136 = v44;
  *(&v136 + 1) = OpaqueTypeConformance2;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C90);
  v49 = sub_1BD53E12C();
  *&v136 = v48;
  *(&v136 + 1) = v49;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v131;
  v111 = v46;
  v110 = v47;
  v109 = v50;
  sub_1BE051024();
  (v112[1])(v43, v51);
  sub_1BE0528A4();
  v52 = v45;
  sub_1BD53E1DC(v45, &v136);
  v53 = sub_1BE052894();
  v54 = swift_allocObject();
  v55 = MEMORY[0x1E69E85E0];
  *(v54 + 16) = v53;
  *(v54 + 24) = v55;
  v56 = v52[1];
  *(v54 + 32) = *v52;
  *(v54 + 48) = v56;
  v57 = v52[3];
  *(v54 + 64) = v52[2];
  *(v54 + 80) = v57;
  v58 = sub_1BE0528D4();
  v59 = *(v58 - 8);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58, v61);
  v62 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v108 = sub_1BE04EAA4();
    v112 = &v107;
    v107 = *(v108 - 1);
    MEMORY[0x1EEE9AC00](v108, v63);
    v65 = &v107 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v136 = 0;
    *(&v136 + 1) = 0xE000000000000000;
    sub_1BE053834();

    *&v136 = 0xD000000000000038;
    *(&v136 + 1) = 0x80000001BE12DCD0;
    v135 = 78;
    v66 = sub_1BE053B24();
    MEMORY[0x1BFB3F610](v66);

    v69 = MEMORY[0x1EEE9AC00](v67, v68);
    (*(v59 + 16))(&v107 - v62, &v107 - v62, v58, v69);
    sub_1BE04EA94();
    (*(v59 + 8))(&v107 - v62, v58);
    v70 = v115;
    v71 = v114;
    (*(v113 + 32))(v115, v130, v114);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371B8);
    v73 = (*(v107 + 32))(&v70[*(v72 + 36)], v65, v108);
  }

  else
  {
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371C0);
    v70 = v115;
    v76 = &v115[*(v75 + 36)];
    v77 = sub_1BE04E7B4();
    (*(v59 + 32))(&v76[*(v77 + 20)], &v107 - v62, v58);
    *v76 = &unk_1BE0DFF10;
    *(v76 + 1) = v54;
    v71 = v114;
    v73 = (*(v113 + 32))(v70, v130, v114);
  }

  MEMORY[0x1EEE9AC00](v73, v74);
  v78 = v132;
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA48);
  *&v136 = v131;
  *(&v136 + 1) = v111;
  v137 = v110;
  v138 = v109;
  v79 = swift_getOpaqueTypeConformance2();
  *&v136 = v71;
  *(&v136 + 1) = v79;
  swift_getOpaqueTypeConformance2();
  sub_1BD53E2C0(&qword_1EBD3FA58, &qword_1EBD3FA48, &unk_1BE0C6AF0, sub_1BD279FA4);
  v80 = v118;
  v81 = v117;
  sub_1BE050954();
  (*(v116 + 8))(v70, v81);
  v82 = sub_1BE04EC54();
  v83 = sub_1BE050234();
  v84 = v121;
  (*(v119 + 32))(v121, v80, v120);
  v85 = v122;
  v86 = v84 + *(v122 + 36);
  *v86 = v82;
  *(v86 + 8) = v83;
  v87 = sub_1BE0501E4();
  v88 = sub_1BE04FC54();
  v131 = &v107;
  v89 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v90);
  v92 = &v107 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04FC34();
  v93 = sub_1BD53E33C();
  v94 = v123;
  MEMORY[0x1BFB3DB30](v87, 0x406E000000000000, 0, v92, v85, v93);
  (*(v89 + 8))(v92, v88);
  sub_1BD0DE53C(v84, &qword_1EBD49C20);
  v95 = swift_allocObject();
  v96 = v78[1];
  v95[1] = *v78;
  v95[2] = v96;
  v97 = v78[3];
  v95[3] = v78[2];
  v95[4] = v97;
  sub_1BD53E1DC(v78, &v136);
  *&v136 = v85;
  *(&v136 + 1) = v93;
  v98 = swift_getOpaqueTypeConformance2();
  v106 = sub_1BD0F9764();
  v99 = MEMORY[0x1E69E7DE0];
  v100 = v126;
  v101 = v125;
  sub_1BE050DC4();

  (*(v124 + 8))(v94, v101);
  v136 = v78[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  LOBYTE(v92) = v135;
  v102 = sub_1BE0501E4();
  *&v136 = v101;
  *(&v136 + 1) = v99;
  v137 = v98;
  v138 = v106;
  v103 = swift_getOpaqueTypeConformance2();
  v104 = v129;
  MEMORY[0x1BFB3DE60]((v92 & 1) == 0, v102, v129, v103);
  return (*(v127 + 8))(v100, v104);
}

uint64_t sub_1BD53AF04@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D48);
  MEMORY[0x1EEE9AC00](v60, v3);
  v59 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D50);
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v58 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CB8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v63 = &v58 - v14;
  v15 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
  v61 = *(v15 - 8);
  v62 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D58);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v68 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v67 = &v58 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D60);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v58 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D68);
  v64 = *(v29 - 8);
  v65 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v66 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v58 - v34;
  v72 = a1;
  sub_1BD53BBD0(a1, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D70);
  sub_1BD53E2C0(&qword_1EBD49D78, &qword_1EBD49D60, &unk_1BE0DFFE0, sub_1BD53E600);
  sub_1BD53E6E8();
  v36 = v35;
  sub_1BE051A24();
  v73 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CC0);
  sub_1BE0516A4();
  v37 = v74;
  swift_getKeyPath();
  *&v73 = v37;
  sub_1BD53E85C(&qword_1EBD49CC8, _s9ViewModelCMa_2);
  sub_1BE04B594();

  v38 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__brandViewDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v37 + v38, v11, &qword_1EBD49CB8);

  v39 = _s22MerchantBrandViewModelVMa(0);
  if ((*(*(v39 - 8) + 48))(v11, 1, v39))
  {
    sub_1BD0DE53C(v11, &qword_1EBD49CB8);
    v40 = v63;
    (*(v61 + 56))(v63, 1, 1, v62);
  }

  else
  {
    v41 = v58;
    v42 = v59;
    v43 = &v11[*(v39 + 24)];
    v40 = v63;
    sub_1BD0DE19C(v43, v63, &qword_1EBD3F780);
    sub_1BD0DE53C(v11, &qword_1EBD49CB8);
    if ((*(v61 + 48))(v40, 1, v62) != 1)
    {
      v54 = sub_1BD53E8A4(v40, v18, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
      MEMORY[0x1EEE9AC00](v54, v55);
      *(&v58 - 2) = v18;
      sub_1BD53C150(v42);
      type metadata accessor for FinanceKitTransactionHistoryView(0);
      sub_1BD53E7A4();
      sub_1BD53E85C(&qword_1EBD49DB8, type metadata accessor for FinanceKitTransactionHistoryView);
      sub_1BE051A24();
      v57 = v69;
      v56 = v70;
      v44 = v67;
      (*(v69 + 32))(v67, v41, v70);
      (*(v57 + 56))(v44, 0, 1, v56);
      sub_1BD53EC04(v18, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
      goto LABEL_5;
    }
  }

  sub_1BD0DE53C(v40, &qword_1EBD3F780);
  v44 = v67;
  (*(v69 + 56))(v67, 1, 1, v70);
LABEL_5:
  v45 = v64;
  v46 = v65;
  v47 = *(v64 + 16);
  v48 = v66;
  v47(v66, v36, v65);
  v49 = v68;
  sub_1BD0DE19C(v44, v68, &qword_1EBD49D58);
  v50 = v71;
  v47(v71, v48, v46);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49DA8);
  sub_1BD0DE19C(v49, &v50[*(v51 + 48)], &qword_1EBD49D58);
  sub_1BD0DE53C(v44, &qword_1EBD49D58);
  v52 = *(v45 + 8);
  v52(v36, v46);
  sub_1BD0DE53C(v49, &qword_1EBD49D58);
  return (v52)(v48, v46);
}

uint64_t sub_1BD53B778@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v39 = type metadata accessor for FinanceKitSelectedTransactionView(0);
  v3 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CB8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v37 - v9;
  v38 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v38, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v37 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v37 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v37 - v24;
  v41 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CC0);
  sub_1BE0516A4();
  v26 = v42;
  swift_getKeyPath();
  *&v41 = v26;
  sub_1BD53E85C(&qword_1EBD49CC8, _s9ViewModelCMa_2);
  sub_1BE04B594();

  v27 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__brandViewDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v26 + v27, v10, &qword_1EBD49CB8);

  v28 = _s22MerchantBrandViewModelVMa(0);
  if ((*(*(v28 - 8) + 48))(v10, 1, v28))
  {
    sub_1BD0DE53C(v10, &qword_1EBD49CB8);
    v29 = 1;
    v31 = v39;
    v30 = v40;
  }

  else
  {
    sub_1BD53EB9C(&v10[*(v28 + 20)], v21, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
    sub_1BD0DE53C(v10, &qword_1EBD49CB8);
    sub_1BD53E8A4(v21, v25, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
    sub_1BD53EB9C(v25, v17, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
    v32 = v39;
    v33 = &v6[*(v39 + 20)];
    type metadata accessor for NavigationController();
    sub_1BD53E85C(&qword_1EBD38DA8, type metadata accessor for NavigationController);
    *v33 = sub_1BE04EEC4();
    v33[1] = v34;
    sub_1BD53EB9C(v17, v13, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
    sub_1BE051694();
    sub_1BD53EC04(v17, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
    sub_1BD53EC04(v25, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
    v35 = v40;
    sub_1BD53E8A4(v6, v40, type metadata accessor for FinanceKitSelectedTransactionView);
    v29 = 0;
    v30 = v35;
    v31 = v32;
  }

  return (*(v3 + 56))(v30, v29, 1, v31);
}

uint64_t sub_1BD53BBD0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D88);
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v4);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CB8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D40);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CC0);
  sub_1BE0516A4();
  v20 = v39;
  swift_getKeyPath();
  *&v41 = v20;
  sub_1BD53E85C(&qword_1EBD49CC8, _s9ViewModelCMa_2);
  sub_1BE04B594();

  v21 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__brandViewDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v20 + v21, v10, &qword_1EBD49CB8);

  v22 = _s22MerchantBrandViewModelVMa(0);
  if ((*(*(v22 - 8) + 48))(v10, 1, v22))
  {
    sub_1BD0DE53C(v10, &qword_1EBD49CB8);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  else
  {
    sub_1BD0DE19C(&v10[*(v22 + 32)], v14, &qword_1EBD49D40);
    sub_1BD0DE53C(v10, &qword_1EBD49CB8);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      sub_1BD53E8A4(v14, v19, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
      sub_1BD53EB9C(v19, v6, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
      v27 = type metadata accessor for FinanceKitMerchantHeaderView(0);
      v28 = &v6[*(v27 + 20)];
      v38 = 0;
      sub_1BE051694();
      v29 = v40;
      *v28 = v39;
      *(v28 + 1) = v29;
      v30 = &v6[*(v27 + 24)];
      v38 = 0;
      sub_1BE051694();
      sub_1BD53EC04(v19, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
      v31 = v40;
      *v30 = v39;
      *(v30 + 1) = v31;
      v33 = v36;
      v32 = v37;
      v34 = &v6[*(v36 + 36)];
      *v34 = 0u;
      *(v34 + 1) = 0u;
      v34[32] = 1;
      sub_1BD0DE204(v6, v32, &qword_1EBD49D88);
      v25 = v33;
      v24 = v32;
      v23 = 0;
      return (*(v3 + 56))(v24, v23, 1, v25);
    }
  }

  sub_1BD0DE53C(v14, &qword_1EBD49D40);
  v23 = 1;
  v25 = v36;
  v24 = v37;
  return (*(v3 + 56))(v24, v23, 1, v25);
}

uint64_t sub_1BD53C0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD53EB9C(a1, a2, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
  type metadata accessor for NavigationController();
  sub_1BD53E85C(&qword_1EBD38DA8, type metadata accessor for NavigationController);
  v3 = sub_1BE04EEC4();
  v5 = v4;
  result = type metadata accessor for FinanceKitTransactionHistoryView(0);
  v7 = (a2 + *(result + 20));
  *v7 = v3;
  v7[1] = v5;
  return result;
}

int *sub_1BD53C150@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0);
  v7 = MEMORY[0x1EEE9AC00](v36, v6);
  v9 = &v36 - v8;
  (*(v2 + 104))(v5, *MEMORY[0x1E69B80D8], v1, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v12 = sub_1BE04B6F4();
    v14 = v13;

    (*(v2 + 8))(v5, v1);
    v38 = v12;
    v39 = v14;
    sub_1BD0DDEBC();
    v15 = sub_1BE0506C4();
    v17 = v16;
    LOBYTE(v11) = v18;
    sub_1BE0503D4();
    v19 = sub_1BE0505F4();
    v21 = v20;
    v23 = v22;

    sub_1BD0DDF10(v15, v17, v11 & 1);

    v24 = sub_1BE0505D4();
    v26 = v25;
    LOBYTE(v11) = v27;
    v29 = v28;
    sub_1BD0DDF10(v19, v21, v23 & 1);

    v30 = &v9[*(v36 + 36)];
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
    v32 = sub_1BE0505C4();
    (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
    *v30 = swift_getKeyPath();
    *v9 = v24;
    *(v9 + 1) = v26;
    v9[16] = v11 & 1;
    *(v9 + 3) = v29;
    v33 = sub_1BE051464();
    v34 = v9;
    v35 = v37;
    sub_1BD0DE204(v34, v37, &qword_1EBD386A0);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D48);
    *(v35 + result[9]) = v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD53C468(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C90);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v10[-v4];
  v11 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CA8);
  v7 = sub_1BD0DE4F4(&qword_1EBD49CA0, &qword_1EBD49CA8);
  MEMORY[0x1BFB3E5A0](sub_1BD53E5E0, v10, v6, v7);
  v8 = sub_1BD53E12C();
  MEMORY[0x1BFB3CC50](v5, v2, v8);
  return sub_1BD0DE53C(v5, &qword_1EBD49C90);
}

uint64_t sub_1BD53C5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_1BE0528A4();
  v3[6] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD53C63C, v5, v4);
}

uint64_t sub_1BD53C63C()
{
  *(v0 + 16) = **(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CC0);
  sub_1BE0516A4();
  *(v0 + 72) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1BD53C6FC;

  return sub_1BD57C030();
}

uint64_t sub_1BD53C6FC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1BD53EC64;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1BD0F88DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD53C840@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CB8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - v6;
  v17 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CC0);
  sub_1BE0516A4();
  v8 = v18;
  swift_getKeyPath();
  *&v17 = v8;
  sub_1BD53E85C(&qword_1EBD49CC8, _s9ViewModelCMa_2);
  sub_1BE04B594();

  v9 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__brandViewDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v8 + v9, v7, &qword_1EBD49CB8);

  v10 = _s22MerchantBrandViewModelVMa(0);
  if ((*(*(v10 - 8) + 48))(v7, 1, v10))
  {
    result = sub_1BD0DE53C(v7, &qword_1EBD49CB8);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v16 = &v7[*(v10 + 28)];
    v12 = *v16;
    v13 = v16[1];
    v14 = v16[2];
    v15 = v16[3];
    sub_1BD2726F8(*v16, v13);
    result = sub_1BD0DE53C(v7, &qword_1EBD49CB8);
    if (v13)
    {
      goto LABEL_5;
    }

    v12 = 0;
  }

  v14 = 0;
  v15 = 0;
LABEL_5:
  *a2 = v12;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v15;
  return result;
}

uint64_t sub_1BD53CA68@<X0>(double *a1@<X8>)
{
  result = sub_1BE04E9E4();
  v4 = v3 / 114.0;
  if (v3 / 114.0 <= 0.0)
  {
    v4 = 0.0;
  }

  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1BD53CABC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CD0);
  MEMORY[0x1EEE9AC00](v67, v3);
  v66 = &v55 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CD8);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v5);
  v57 = &v55 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CE0);
  v55 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v7);
  v56 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CB8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CE8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v55 - v15;
  v59 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  v17 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v18);
  v58 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CF0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v62 = &v55 - v26;
  v27 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CF8);
  v60 = *(v29 - 8);
  v61 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v55 - v31;
  sub_1BE04FB34();
  v69 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D00);
  sub_1BD0DE4F4(&qword_1EBD49D08, &qword_1EBD49D00);
  sub_1BE04E424();
  v72 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CC0);
  sub_1BE0516A4();
  v33 = v70;
  swift_getKeyPath();
  *&v72 = v33;
  sub_1BD53E85C(&qword_1EBD49CC8, _s9ViewModelCMa_2);
  sub_1BE04B594();

  v34 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__brandViewDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v33 + v34, v12, &qword_1EBD49CB8);

  v35 = _s22MerchantBrandViewModelVMa(0);
  if ((*(*(v35 - 8) + 48))(v12, 1, v35))
  {
    sub_1BD0DE53C(v12, &qword_1EBD49CB8);
    (*(v17 + 56))(v16, 1, 1, v59);
LABEL_4:
    sub_1BD0DE53C(v16, &qword_1EBD49CE8);
    goto LABEL_5;
  }

  v37 = v57;
  v36 = v58;
  v38 = v56;
  sub_1BD0DE19C(&v12[*(v35 + 36)], v16, &qword_1EBD49CE8);
  sub_1BD0DE53C(v12, &qword_1EBD49CB8);
  if ((*(v17 + 48))(v16, 1, v59) == 1)
  {
    goto LABEL_4;
  }

  sub_1BD53E8A4(v16, v36, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  if (sub_1BD51FA14())
  {
    v48 = sub_1BE04FAE4();
    MEMORY[0x1EEE9AC00](v48, v49);
    *(&v55 - 2) = v36;
    type metadata accessor for FinanceKitMerchantBrandViewButtons(0);
    sub_1BD53E85C(&qword_1EBD49D18, type metadata accessor for FinanceKitMerchantBrandViewButtons);
    sub_1BE04E424();
    v50 = sub_1BD0DE4F4(&qword_1EBD49D10, &qword_1EBD49CE0);
    v51 = v64;
    MEMORY[0x1BFB3CC50](v38, v64, v50);
    v52 = v63;
    v53 = v65;
    (*(v63 + 16))(v23, v37, v65);
    (*(v52 + 56))(v23, 0, 1, v53);
    v70 = v51;
    v71 = v50;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = v62;
    MEMORY[0x1BFB3CC80](v23, v53, OpaqueTypeConformance2);
    sub_1BD0DE53C(v23, &qword_1EBD49CF0);
    (*(v52 + 8))(v37, v53);
    (*(v55 + 8))(v38, v51);
    sub_1BD53EC04(v58, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
    goto LABEL_6;
  }

  sub_1BD53EC04(v36, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
LABEL_5:
  v39 = v62;
  v40 = v65;
  (*(v63 + 56))(v23, 1, 1, v65);
  v41 = sub_1BD0DE4F4(&qword_1EBD49D10, &qword_1EBD49CE0);
  v70 = v64;
  v71 = v41;
  v42 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1BFB3CC80](v23, v40, v42);
  sub_1BD0DE53C(v23, &qword_1EBD49CF0);
LABEL_6:
  v43 = v66;
  v44 = *(v67 + 48);
  v46 = v60;
  v45 = v61;
  (*(v60 + 16))(v66, v32, v61);
  sub_1BD0847E8(v39, &v43[v44]);
  sub_1BE04F854();
  sub_1BD0DE53C(v39, &qword_1EBD49CF0);
  return (*(v46 + 8))(v32, v45);
}

uint64_t sub_1BD53D46C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D20);
  return sub_1BD53D4C4(a1, a2 + *(v4 + 44));
}

uint64_t sub_1BD53D4C4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = type metadata accessor for FinanceKitTransactionIcon(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v63 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D28);
  MEMORY[0x1EEE9AC00](v59, v6);
  v62 = &v57 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D30);
  MEMORY[0x1EEE9AC00](v60, v8);
  v61 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D38);
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CB8);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v57 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D40);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v57 - v24;
  v26 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1;
  v70 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CC0);
  sub_1BE0516A4();
  v31 = v69;
  swift_getKeyPath();
  *&v70 = v31;
  sub_1BD53E85C(&qword_1EBD49CC8, _s9ViewModelCMa_2);
  sub_1BE04B594();

  v32 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__brandViewDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v31 + v32, v21, &qword_1EBD49CB8);

  v33 = _s22MerchantBrandViewModelVMa(0);
  if ((*(*(v33 - 8) + 48))(v21, 1, v33))
  {
    sub_1BD0DE53C(v21, &qword_1EBD49CB8);
    (*(v27 + 56))(v25, 1, 1, v26);
LABEL_4:
    sub_1BD0DE53C(v25, &qword_1EBD49D40);
    v38 = 1;
    v40 = v66;
    v39 = v67;
    return (*(v65 + 56))(v39, v38, 1, v40);
  }

  v35 = v62;
  v34 = v63;
  v57 = v13;
  v58 = v17;
  v36 = v61;
  v37 = v64;
  sub_1BD0DE19C(&v21[*(v33 + 32)], v25, &qword_1EBD49D40);
  sub_1BD0DE53C(v21, &qword_1EBD49CB8);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    goto LABEL_4;
  }

  sub_1BD53E8A4(v25, v30, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  v42 = *(v26 + 40);
  v43 = type metadata accessor for FinanceKitTransactionIcon.ViewModel(0);
  sub_1BD0DE19C(&v30[v42], &v34[*(v43 + 20)], &qword_1EBD45CC0);
  *v34 = 0;
  v69 = v37[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  v44 = 0.0;
  if (v68)
  {
    v45 = 1.0;
  }

  else
  {
    v45 = 0.0;
  }

  sub_1BD53E8A4(v34, v35, type metadata accessor for FinanceKitTransactionIcon);
  *(v35 + *(v59 + 36)) = v45;
  v69 = v37[2];
  sub_1BE0516A4();
  if (!v68)
  {
    v44 = 40.0;
  }

  v46 = sub_1BD0DE204(v35, v36, &qword_1EBD49D28);
  v47 = v36 + *(v60 + 36);
  *v47 = 0;
  *(v47 + 8) = v44;
  v48 = MEMORY[0x1BFB3EDF0](v46, 0.5, 1.0, 0.0);
  v69 = v37[2];
  sub_1BE0516A4();
  sub_1BD53EC04(v30, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  v49 = v68;
  v50 = v57;
  sub_1BD0DE204(v36, v57, &qword_1EBD49D30);
  v51 = v66;
  v52 = v50 + *(v66 + 36);
  *v52 = v48;
  *(v52 + 8) = v49;
  v53 = v50;
  v54 = v58;
  sub_1BD0DE204(v53, v58, &qword_1EBD49D38);
  v55 = v54;
  v56 = v67;
  sub_1BD0DE204(v55, v67, &qword_1EBD49D38);
  v40 = v51;
  v39 = v56;
  v38 = 0;
  return (*(v65 + 56))(v39, v38, 1, v40);
}

uint64_t sub_1BD53DBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD53EB9C(a1, a2, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  type metadata accessor for NavigationController();
  sub_1BD53E85C(&qword_1EBD38DA8, type metadata accessor for NavigationController);
  v3 = sub_1BE04EEC4();
  v5 = v4;
  v6 = type metadata accessor for FinanceKitMerchantBrandViewButtons(0);
  v7 = a2 + *(v6 + 20);
  result = sub_1BE051694();
  *v7 = v10;
  *(v7 + 8) = v11;
  v9 = (a2 + *(v6 + 24));
  *v9 = v3;
  v9[1] = v5;
  return result;
}

uint64_t sub_1BD53DD1C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ObservedColor();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD53DD60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD53E85C(&qword_1EBD49CC8, _s9ViewModelCMa_2);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__brandViewDetails;
  swift_beginAccess();
  return sub_1BD0DE19C(v3 + v4, a2, &qword_1EBD49CB8);
}

uint64_t sub_1BD53DE38(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CB8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10[-v6];
  sub_1BD0DE19C(a1, &v10[-v6], &qword_1EBD49CB8);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1BD53E85C(&qword_1EBD49CC8, _s9ViewModelCMa_2);
  sub_1BE04B584();

  return sub_1BD0DE53C(v7, &qword_1EBD49CB8);
}

unint64_t sub_1BD53DF88()
{
  result = qword_1EBD49C68;
  if (!qword_1EBD49C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C48);
    sub_1BD53E040();
    sub_1BD0DE4F4(&qword_1EBD395B8, &qword_1EBD39580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49C68);
  }

  return result;
}

unint64_t sub_1BD53E040()
{
  result = qword_1EBD49C70;
  if (!qword_1EBD49C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C60);
    sub_1BD0DE4F4(&qword_1EBD49C78, &qword_1EBD49C80);
    sub_1BD0DE4F4(&qword_1EBD395A8, &qword_1EBD395B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49C70);
  }

  return result;
}

unint64_t sub_1BD53E12C()
{
  result = qword_1EBD49C98;
  if (!qword_1EBD49C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C90);
    sub_1BD0DE4F4(&qword_1EBD49CA0, &qword_1EBD49CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49C98);
  }

  return result;
}

uint64_t sub_1BD53E214()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD53C5A4(v2, v3, v0 + 32);
}

uint64_t sub_1BD53E2C0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD53E33C()
{
  result = qword_1EBD49CB0;
  if (!qword_1EBD49CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FA48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD371B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C48);
    sub_1BD53DF88();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C90);
    sub_1BD53E12C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD53E2C0(&qword_1EBD3FA58, &qword_1EBD3FA48, &unk_1BE0C6AF0, sub_1BD279FA4);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49CB0);
  }

  return result;
}

unint64_t sub_1BD53E600()
{
  result = qword_1EBD49D80;
  if (!qword_1EBD49D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49D88);
    sub_1BD53E85C(&qword_1EBD49D90, type metadata accessor for FinanceKitMerchantHeaderView);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49D80);
  }

  return result;
}

unint64_t sub_1BD53E6E8()
{
  result = qword_1EBD49D98;
  if (!qword_1EBD49D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49D70);
    sub_1BD53E85C(&qword_1EBD49DA0, type metadata accessor for FinanceKitSelectedTransactionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49D98);
  }

  return result;
}

unint64_t sub_1BD53E7A4()
{
  result = qword_1EBD49DB0;
  if (!qword_1EBD49DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49D48);
    sub_1BD0DE43C();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49DB0);
  }

  return result;
}

uint64_t sub_1BD53E85C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD53E8A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD53E90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE048F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TransactionContext(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  sub_1BE051694();
  v15 = v25;
  v23 = v26;
  LOBYTE(v24) = 0;
  sub_1BE051694();
  v22 = v25;
  v21 = v26;
  type metadata accessor for NavigationController();
  sub_1BD53E85C(&qword_1EBD38DA8, type metadata accessor for NavigationController);
  v16 = sub_1BE04EEC4();
  v18 = v17;
  sub_1BD53EB9C(a1, v14, type metadata accessor for TransactionContext);
  (*(v7 + 16))(v10, a2, v6);
  _s9ViewModelCMa_2(0);
  swift_allocObject();
  v24 = sub_1BD57BCD0(v14, v10);
  sub_1BE051694();
  (*(v7 + 8))(a2, v6);
  result = sub_1BD53EC04(a1, type metadata accessor for TransactionContext);
  v20 = v26;
  *a3 = v25;
  *(a3 + 8) = v20;
  *(a3 + 16) = v15;
  *(a3 + 24) = v23;
  *(a3 + 32) = v22;
  *(a3 + 40) = v21;
  *(a3 + 48) = v16;
  *(a3 + 56) = v18;
  return result;
}

uint64_t sub_1BD53EB9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD53EC04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD53EC68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1BD53ECC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1BD53ED28(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    return 0;
  }

  if (a3 == 2)
  {
    return 1;
  }

  if (a3)
  {
    v8 = objc_allocWithZone(MEMORY[0x1E695CF50]);
    v9 = sub_1BE052404();
    v10 = [v8 initWithStringValue_];

    v11 = [v10 digits];
    if (!v11)
    {
      sub_1BE052434();
      v11 = sub_1BE052404();
    }

    v12 = [objc_allocWithZone(MEMORY[0x1E695CF50]) initWithStringValue_];

    if (a4)
    {
      v13 = [a4 phoneNumberIsValid:v12 forCountryCode:0];
    }

    else
    {

      v13 = 1;
      v10 = v12;
    }
  }

  else
  {
    if (!a4)
    {
      return 1;
    }

    v10 = sub_1BE052404();
    v13 = [a4 emailAddressIsValid_];
  }

  return v13;
}

id sub_1BD53EE80(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v13);
  v17 = &v23 - v15;
  if (v6 == 2)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (!a3)
    {
      v21 = v14;
      (*(v8 + 104))(&v23 - v15, *MEMORY[0x1E69B8068], v16);
      result = PKPassKitBundle();
      if (result)
      {
        v22 = result;
        a2 = sub_1BE04B6F4();

        (*(v8 + 8))(v17, v21);
        return a2;
      }

      goto LABEL_13;
    }

LABEL_8:
    sub_1BE048C84();
    return a2;
  }

  if (a3)
  {
    goto LABEL_8;
  }

  v18 = v14;
  (*(v8 + 104))(v11, *MEMORY[0x1E69B8068], v16);
  result = PKPassKitBundle();
  if (result)
  {
    v20 = result;
    a2 = sub_1BE04B6F4();

    (*(v8 + 8))(v11, v18);
    return a2;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

id sub_1BD53F0A4(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v18 - v10;
  if (v2 == 2)
  {
    return 0;
  }

  v14 = *MEMORY[0x1E69B8068];
  v15 = *(v4 + 104);
  if ((a1 & 1) == 0)
  {
    v15(&v18 - v10, v14, v3, v11);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v15(v7, v14, v3, v11);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = result;
  v17 = sub_1BE04B6F4();
  v12 = v7;
LABEL_8:

  (*(v4 + 8))(v12, v3);
  return v17;
}

uint64_t (*WalletDeepLinkCoordinator.shouldNavigateToAddPass.modify(uint64_t *a1))()
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
  return sub_1BD1D2278;
}

uint64_t (*WalletDeepLinkCoordinator.$shouldNavigateToAddPass.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToAddPass;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD1D2820;
}

uint64_t WalletDeepLinkCoordinator.passUniqueIDToDisplay.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD53F588@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BD53F608()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t WalletDeepLinkCoordinator.passUniqueIDToDisplay.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t (*WalletDeepLinkCoordinator.passUniqueIDToDisplay.modify(uint64_t *a1))()
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
  return sub_1BD540F60;
}

uint64_t sub_1BD53F7C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49DD0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v14 - v10;
  v12 = *(v3 + 16);
  v12(&v14 - v10, a1, v2, v9);
  (v12)(v6, v11, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(v11, v2);
}

uint64_t WalletDeepLinkCoordinator.$passUniqueIDToDisplay.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49DD0);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WalletDeepLinkCoordinator.$passUniqueIDToDisplay.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49DD0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__passUniqueIDToDisplay;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD540F64;
}

uint64_t (*WalletDeepLinkCoordinator.shouldNavigateToFPANImportConsent.modify(uint64_t *a1))()
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
  return sub_1BD540F60;
}

uint64_t (*WalletDeepLinkCoordinator.$shouldNavigateToFPANImportConsent.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToFPANImportConsent;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD540F64;
}

uint64_t (*WalletDeepLinkCoordinator.shouldNavigateToAutoFillPane.modify(uint64_t *a1))()
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
  return sub_1BD540F60;
}

uint64_t (*WalletDeepLinkCoordinator.$shouldNavigateToAutoFillPane.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToAutoFillPane;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD540F64;
}

uint64_t sub_1BD54015C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t (*WalletDeepLinkCoordinator.shouldNavigateToVirtualCardUpgrade.modify(uint64_t *a1))()
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
  return sub_1BD540F60;
}

uint64_t sub_1BD540288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  v11 = *(v3 + 16);
  v11(&v13 - v9, a1, v2);
  v11(v7, v10, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(v10, v2);
}

uint64_t sub_1BD540420(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WalletDeepLinkCoordinator.$shouldNavigateToVirtualCardUpgrade.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToVirtualCardUpgrade;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD540F64;
}

uint64_t WalletDeepLinkCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  WalletDeepLinkCoordinator.init()();
  return v0;
}

uint64_t WalletDeepLinkCoordinator.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v18 - v9;
  v11 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToAddPass;
  LOBYTE(v18[0]) = 0;
  sub_1BE04D874();
  v12 = *(v7 + 32);
  v12(v0 + v11, v10, v6);
  v13 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__passUniqueIDToDisplay;
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1BE04D874();
  (*(v2 + 32))(v0 + v13, v5, v1);
  v14 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToFPANImportConsent;
  LOBYTE(v18[0]) = 0;
  sub_1BE04D874();
  v12(v0 + v14, v10, v6);
  v15 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToAutoFillPane;
  LOBYTE(v18[0]) = 0;
  sub_1BE04D874();
  v12(v0 + v15, v10, v6);
  v16 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToVirtualCardUpgrade;
  LOBYTE(v18[0]) = 0;
  sub_1BE04D874();
  v12(v0 + v16, v10, v6);
  return v0;
}

uint64_t WalletDeepLinkCoordinator.isDeepLinking.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v2[0])
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v0 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v0 = *v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v0)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v2[0])
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v2[0];
}

uint64_t WalletDeepLinkCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToAddPass;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__passUniqueIDToDisplay;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToFPANImportConsent, v2);
  v3(v0 + OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToAutoFillPane, v2);
  v3(v0 + OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToVirtualCardUpgrade, v2);
  return v0;
}

uint64_t WalletDeepLinkCoordinator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToAddPass;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__passUniqueIDToDisplay;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToFPANImportConsent, v2);
  v3(v0 + OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToAutoFillPane, v2);
  v3(v0 + OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToVirtualCardUpgrade, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WalletDeepLinkCoordinator()
{
  result = qword_1EBD49DF0;
  if (!qword_1EBD49DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD540DF8()
{
  sub_1BD540F14(319, &qword_1EBD368F0);
  if (v0 <= 0x3F)
  {
    sub_1BD540F14(319, &unk_1EBD49E00);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD540F14(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BE04D8D4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1BD540F68(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD40650);
    v2 = sub_1BE052744();
  }

  sub_1BE048964();
  v3(v2);
}

void sub_1BD540FF0(uint64_t a1, unint64_t a2, void *a3)
{
  v34 = a3;
  v31 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E50);
  v32 = *(v4 - 8);
  v33 = v4;
  v29[1] = *(v32 + 64);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4, v5);
  v30 = v29 - v7;
  if (!(a2 >> 62))
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_24:
    v35 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

LABEL_23:
  v8 = sub_1BE053704();
  if (!v8)
  {
    goto LABEL_24;
  }

LABEL_3:
  v9 = 0;
  v35 = MEMORY[0x1E69E7CC0];
  do
  {
    v10 = v9;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFB40900](v10, a2, v6);
      }

      else
      {
        if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v11 = *(a2 + 8 * v10 + 32);
      }

      v12 = v11;
      v9 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v13 = [v11 uniqueIdentifier];
      if (!v13)
      {
        sub_1BE052434();
        v13 = sub_1BE052404();
      }

      v14 = [objc_opt_self() passUniqueIdentifierFromSpotlightIdentifier_];

      if (v14)
      {
        break;
      }

      ++v10;
      if (v9 == v8)
      {
        goto LABEL_25;
      }
    }

    v15 = sub_1BE052434();
    v17 = v16;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_1BD03B038(0, *(v35 + 2) + 1, 1, v35);
    }

    v19 = *(v35 + 2);
    v18 = *(v35 + 3);
    if (v19 >= v18 >> 1)
    {
      v35 = sub_1BD03B038((v18 > 1), v19 + 1, 1, v35);
    }

    v20 = v35;
    *(v35 + 2) = v19 + 1;
    v21 = &v20[16 * v19];
    *(v21 + 4) = v15;
    *(v21 + 5) = v17;
  }

  while (v9 != v8);
LABEL_25:
  v22 = sub_1BE052724();

  v23 = v32;
  v24 = v30;
  v25 = v33;
  (*(v32 + 16))(v30, v31, v33);
  v26 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v27 = swift_allocObject();
  (*(v23 + 32))(v27 + v26, v24, v25);
  aBlock[4] = sub_1BD1CD6F0;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD540F68;
  aBlock[3] = &block_descriptor_23_6;
  v28 = _Block_copy(aBlock);

  [v34 getPassesWithUniqueIdentifiers:v22 handler:v28];
  _Block_release(v28);
}

uint64_t sub_1BD54137C()
{
  swift_beginAccess();
  v0 = sub_1BE048C84();
  sub_1BDA7AB24(v0);
  return swift_endAccess();
}

uint64_t sub_1BD5413DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1BD0E5E8C(0, &qword_1EBD49E48);
  v2 = sub_1BE052744();
  sub_1BE048964();
  v1(v2);
}

void sub_1BD541460(uint64_t *a1, id *a2)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = [*a2 uniqueIdentifier];
  if (!v11)
  {
    sub_1BE052434();
    v11 = sub_1BE052404();
  }

  v12 = [objc_opt_self() passUniqueIdentifierFromSpotlightIdentifier_];

  if (v12)
  {
    v31 = v6;
    v30 = sub_1BE052434();
    v14 = v13;

    v15 = objc_allocWithZone(MEMORY[0x1E6964E00]);
    v16 = sub_1BE052404();
    v17 = [v15 initWithKeyName_];

    if (v17)
    {
      v18 = [v10 attributeSet];
      v19 = [v18 valueForCustomKey_];

      if (v19 && (v32[3] = v19, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E20), (swift_dynamicCast() & 1) != 0))
      {
        v20 = v32[0];
        v21 = v32[1];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32[0] = *a1;
        sub_1BD1DB974(v20, v21, v30, v14, isUniquelyReferenced_nonNull_native);

        *a1 = v32[0];
      }

      else
      {
        sub_1BE04D074();
        sub_1BE048C84();
        v23 = sub_1BE04D204();
        v24 = sub_1BE052C34();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v29[1] = v2;
          v27 = v26;
          v32[0] = v26;
          *v25 = 136315138;
          v28 = sub_1BD123690(v30, v14, v32);

          *(v25 + 4) = v28;
          _os_log_impl(&dword_1BD026000, v23, v24, "PassEntityDataProvider: No thumbnail found for %s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v27);
          MEMORY[0x1BFB45F20](v27, -1, -1);
          MEMORY[0x1BFB45F20](v25, -1, -1);
        }

        else
        {
        }

        (*(v31 + 8))(v9, v5);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD5417D4(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 160) = a2;
  *(v3 + 168) = a3;
  *(v3 + 296) = a1;
  v4 = sub_1BE04D214();
  *(v3 + 176) = v4;
  *(v3 + 184) = *(v4 - 8);
  *(v3 + 192) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD541898, 0, 0);
}

uint64_t sub_1BD541898()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[25] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1BD541A1C;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49E10);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD038E38;
    v0[13] = &block_descriptor_118;
    v0[14] = v3;
    [v2 unexpiredPassesOrderedByGroup_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v4 = v0[1];
    v5 = MEMORY[0x1E69E7CC0];

    return v4(v5);
  }
}

uint64_t sub_1BD541A1C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD541AFC, 0, 0);
}

uint64_t sub_1BD541AFC()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  *(v0 + 208) = v2;

  if (v2)
  {
    if (*(v0 + 160))
    {
      result = *(v0 + 168);
      v4 = MEMORY[0x1E69E7CC0];
      *(v0 + 152) = MEMORY[0x1E69E7CC0];
      if (v2 >> 62)
      {
        v15 = result;
        v5 = sub_1BE053704();
        result = v15;
        *(v0 + 216) = v5;
        if (v5)
        {
LABEL_5:
          if (v5 < 1)
          {
            __break(1u);
          }

          else
          {
            *(v0 + 224) = 0;
            *(v0 + 232) = v4;
            v6 = *(v0 + 208);
            sub_1BE048964();
            if ((v6 & 0xC000000000000001) != 0)
            {
              v7 = MEMORY[0x1BFB40900](0, v6);
            }

            else
            {
              v7 = *(v6 + 32);
            }

            v13 = v7;
            *(v0 + 240) = v7;
            v17 = (*(v0 + 160) + **(v0 + 160));
            v14 = swift_task_alloc();
            *(v0 + 248) = v14;
            *v14 = v0;
            v14[1] = sub_1BD541DD0;

            return v17(v13);
          }

          return result;
        }
      }

      else
      {
        v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 216) = v5;
        if (v5)
        {
          goto LABEL_5;
        }
      }

      sub_1BD0D44B8(*(v0 + 160));
      *(v0 + 264) = v4;

      v16 = swift_task_alloc();
      *(v0 + 272) = v16;
      *v16 = v0;
      v16[1] = sub_1BD542128;
      v11 = *(v0 + 296);
      v12 = v4;
    }

    else
    {
      v10 = swift_task_alloc();
      *(v0 + 288) = v10;
      *v10 = v0;
      v10[1] = sub_1BD5422B8;
      v11 = *(v0 + 296);
      v12 = v2;
    }

    return sub_1BD0391EC(v12, v11);
  }

  else
  {

    v8 = *(v0 + 8);
    v9 = MEMORY[0x1E69E7CC0];

    return v8(v9);
  }
}

uint64_t sub_1BD541DD0(char a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = sub_1BD5423F4;
  }

  else
  {
    *(v4 + 297) = a1 & 1;
    v5 = sub_1BD541EFC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BD541EFC()
{
  v1 = *(v0 + 240);
  if (*(v0 + 297))
  {
    v2 = (v0 + 152);
    MEMORY[0x1BFB3F7A0](v1);
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    v3 = *(v0 + 240);
    sub_1BE0527C4();
  }

  else
  {

    v2 = (v0 + 232);
  }

  v4 = *v2;
  v5 = *(v0 + 224) + 1;
  if (v5 == *(v0 + 216))
  {
    *(v0 + 264) = v4;

    v6 = swift_task_alloc();
    *(v0 + 272) = v6;
    *v6 = v0;
    v6[1] = sub_1BD542128;
    v7 = *(v0 + 296);

    return sub_1BD0391EC(v4, v7);
  }

  else
  {
    *(v0 + 224) = v5;
    *(v0 + 232) = v4;
    v9 = *(v0 + 208);
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1BFB40900]();
    }

    else
    {
      v10 = *(v9 + 8 * v5 + 32);
    }

    v11 = v10;
    *(v0 + 240) = v10;
    v13 = (*(v0 + 160) + **(v0 + 160));
    v12 = swift_task_alloc();
    *(v0 + 248) = v12;
    *v12 = v0;
    v12[1] = sub_1BD541DD0;

    return v13(v11);
  }
}

uint64_t sub_1BD542128(uint64_t a1)
{
  *(*v1 + 280) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD542248, 0, 0);
}

uint64_t sub_1BD542248()
{
  sub_1BD0D4744(v0[20]);
  v1 = v0[35];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1BD5422B8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1BD5423F4()
{
  v1 = *(v0 + 256);
  sub_1BE04D074();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 256);
  v7 = *(v0 + 240);
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BD026000, v3, v4, "PassEntityDataProvider: Encountered error during filtering: %@", v8, 0xCu);
    sub_1BD1E236C(v9);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  v12 = *(v0 + 224) + 1;
  if (v12 == *(v0 + 216))
  {
    v13 = *(v0 + 232);
    *(v0 + 264) = v13;

    v14 = swift_task_alloc();
    *(v0 + 272) = v14;
    *v14 = v0;
    v14[1] = sub_1BD542128;
    v15 = *(v0 + 296);

    return sub_1BD0391EC(v13, v15);
  }

  else
  {
    *(v0 + 224) = v12;
    v17 = *(v0 + 208);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1BFB40900]();
    }

    else
    {
      v18 = *(v17 + 8 * v12 + 32);
    }

    v19 = v18;
    *(v0 + 240) = v18;
    v21 = (*(v0 + 160) + **(v0 + 160));
    v20 = swift_task_alloc();
    *(v0 + 248) = v20;
    *v20 = v0;
    v20[1] = sub_1BD541DD0;

    return v21(v19);
  }
}

uint64_t sub_1BD5426E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 184) = a5;
  *(v6 + 192) = a6;
  *(v6 + 336) = a4;
  *(v6 + 168) = a2;
  *(v6 + 176) = a3;
  *(v6 + 160) = a1;
  v7 = sub_1BE04D214();
  *(v6 + 200) = v7;
  *(v6 + 208) = *(v7 - 8);
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD5427CC, 0, 0);
}

uint64_t sub_1BD5427CC()
{
  v1 = [objc_opt_self() sharedInstance];
  *(v0 + 240) = v1;
  if (v1)
  {
    v2 = *(v0 + 168);
    v3 = swift_task_alloc();
    *(v0 + 248) = v3;
    *v3 = v0;
    v3[1] = sub_1BD5428F0;
    v4 = *(v0 + 336);
    v5 = *(v0 + 176);
    v6 = *(v0 + 160);

    return sub_1BD0395F8(0, v6, v2, v5, 0, v4);
  }

  else
  {

    v8 = *(v0 + 8);
    v9 = MEMORY[0x1E69E7CC0];

    return v8(v9);
  }
}

uint64_t sub_1BD5428F0(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD5429F0, 0, 0);
}

uint64_t sub_1BD5429F0()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = swift_task_alloc();
  v0[33] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[34] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C738);
  *v4 = v0;
  v4[1] = sub_1BD542AFC;

  return MEMORY[0x1EEE6DDE0](v0 + 18, 0, 0, 0xD000000000000033, 0x80000001BE12DFD0, sub_1BD5441CC, v3, v5);
}

uint64_t sub_1BD542AFC()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD542C14, 0, 0);
}

char *sub_1BD542C14()
{
  if (!*(v0 + 184))
  {
LABEL_13:
    if (*(v0 + 336) == 1)
    {
      v1 = sub_1BD03ED74(*(v0 + 256));
      v11 = *(v0 + 144);
      v2 = v11;
      if (v11 >> 62)
      {
        goto LABEL_47;
      }

      for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
      {
        v60 = MEMORY[0x1E69E7CC0];
        result = sub_1BD03EF98(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          __break(1u);
          goto LABEL_61;
        }

        v13 = 0;
        v14 = v60;
        v15 = v2;
        v57 = v2;
        v59 = v2 & 0xC000000000000001;
        v56 = v2 & 0xFFFFFFFFFFFFFF8;
        v2 = i;
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v59)
          {
            v17 = MEMORY[0x1BFB40900](v13, v15);
          }

          else
          {
            if (v13 >= *(v56 + 16))
            {
              goto LABEL_45;
            }

            v17 = *(v15 + 8 * v13 + 32);
          }

          v18 = v17;
          result = [v17 uniqueID];
          if (!result)
          {
            goto LABEL_62;
          }

          v19 = result;
          v20 = sub_1BE052434();
          v22 = v21;

          if (!*(v1 + 16))
          {

LABEL_28:
            v30 = 0;
            v29 = 0xF000000000000000;
            goto LABEL_29;
          }

          v23 = sub_1BD148F70(v20, v22);
          v25 = v24;

          if ((v25 & 1) == 0)
          {
            goto LABEL_28;
          }

          v26 = (*(v1 + 56) + 16 * v23);
          v27 = *v26;
          v28 = v26[1];
          sub_1BD041A38(*v26, v28);
          v29 = v28;
          v30 = v27;
LABEL_29:
          sub_1BD02F840(v18, v30, v29, (v0 + 80));
          v32 = *(v60 + 16);
          v31 = *(v60 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_1BD03EF98((v31 > 1), v32 + 1, 1);
          }

          *(v60 + 16) = v32 + 1;
          v33 = (v60 + (v32 << 6));
          v34 = *(v0 + 80);
          v35 = *(v0 + 96);
          v36 = *(v0 + 128);
          v33[4] = *(v0 + 112);
          v33[5] = v36;
          v33[2] = v34;
          v33[3] = v35;
          ++v13;
          v15 = v57;
          if (v16 == v2)
          {

            goto LABEL_49;
          }
        }

        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        ;
      }

      v14 = MEMORY[0x1E69E7CC0];
LABEL_49:
      v47 = (v0 + 232);
      sub_1BE04D074();
      sub_1BE048C84();
      v48 = sub_1BE04D204();
      v49 = sub_1BE052C54();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 134217984;
        *(v50 + 4) = *(v14 + 16);

        v51 = "PassEntityDataProvider: Returning %ld entities with snapshots";
LABEL_55:
        _os_log_impl(&dword_1BD026000, v48, v49, v51, v50, 0xCu);
        MEMORY[0x1BFB45F20](v50, -1, -1);
LABEL_57:

        v52 = *v47;
        v53 = *(v0 + 200);
        v54 = *(v0 + 208);

        (*(v54 + 8))(v52, v53);

        v55 = *(v0 + 8);

        return v55(v14);
      }

      goto LABEL_56;
    }

    v37 = *(v0 + 144);
    if (v37 >> 62)
    {
      v38 = sub_1BE053704();
      if (v38)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v38)
      {
LABEL_35:
        v61 = MEMORY[0x1E69E7CC0];
        result = sub_1BD03EF98(0, v38 & ~(v38 >> 63), 0);
        if (v38 < 0)
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          return result;
        }

        v39 = 0;
        v14 = v61;
        do
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            v40 = MEMORY[0x1BFB40900](v39, v37);
          }

          else
          {
            v40 = *(v37 + 8 * v39 + 32);
          }

          sub_1BD02F840(v40, 0, 0xF000000000000000, (v0 + 16));
          v42 = *(v61 + 16);
          v41 = *(v61 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_1BD03EF98((v41 > 1), v42 + 1, 1);
          }

          ++v39;
          *(v61 + 16) = v42 + 1;
          v43 = (v61 + (v42 << 6));
          v44 = *(v0 + 16);
          v45 = *(v0 + 32);
          v46 = *(v0 + 64);
          v43[4] = *(v0 + 48);
          v43[5] = v46;
          v43[2] = v44;
          v43[3] = v45;
        }

        while (v38 != v39);

LABEL_53:
        v47 = (v0 + 224);
        sub_1BE04D074();
        sub_1BE048C84();
        v48 = sub_1BE04D204();
        v49 = sub_1BE052C54();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 134217984;
          *(v50 + 4) = *(v14 + 16);

          v51 = "PassEntityDataProvider: Returning %ld entities without snapshots";
          goto LABEL_55;
        }

LABEL_56:

        goto LABEL_57;
      }
    }

    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_53;
  }

  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = MEMORY[0x1E69E7CC0];
  v3 = *(v0 + 144);
  *(v0 + 280) = v3;
  if (v3 >> 62)
  {
    v4 = sub_1BE053704();
    *(v0 + 288) = v4;
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 288) = v4;
  if (!v4)
  {
LABEL_12:
    sub_1BE048964();
    v10 = *(v0 + 184);

    sub_1BD0D4744(v10);
    *(v0 + 144) = v2;
    goto LABEL_13;
  }

LABEL_4:
  if (v4 < 1)
  {
    goto LABEL_46;
  }

  *(v0 + 296) = 0;
  *(v0 + 304) = v2;
  v5 = *(v0 + 280);
  sub_1BE048964();
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1BFB40900](0, v5);
  }

  else
  {
    v6 = *(v5 + 32);
  }

  v7 = v6;
  *(v0 + 312) = v6;
  v58 = (*(v0 + 184) + **(v0 + 184));
  v8 = swift_task_alloc();
  *(v0 + 320) = v8;
  *v8 = v0;
  v8[1] = sub_1BD5432B0;

  return v58(v7);
}