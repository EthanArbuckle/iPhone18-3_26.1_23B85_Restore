uint64_t sub_100162564()
{
  v1 = v0[159];
  v0[161] = sub_100036B18(v0[144] + v0[160]);

  return _swift_task_switch(sub_1001625DC, 0, 0);
}

void sub_1001625DC()
{
  v180 = v0;
  v1 = v0 + 784;
  v2 = *(v0 + 1272);

  v3 = *(v0 + 1288);
  v4 = *(v0 + 1264);
  v5 = *(v0 + 1200);
  v6 = *(v0 + 1152);
  v7 = 0;
  v178 = sub_100009830(0, *(v4 + 16), 0, &_swiftEmptyArrayStorage);
  *(v0 + 1136) = v178;
  v8 = (v4 + 64);
  v157 = v4;
  v9 = -1;
  v10 = -1 << *(v4 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  isa = v9 & *(v4 + 64);
  v151 = v6 + *(*v6 + 280);
  v12 = (63 - v10) >> 6;
  v170 = (v5 + 16);
  v156 = v6;
  v152 = *(*v6 + 248);
  v171 = v5;
  v177 = v0 + 784;
  v159 = v3;
  v153 = v12;
  v154 = (v4 + 64);
  while (isa)
  {
LABEL_9:
    v14 = __clz(__rbit64(isa)) | (v7 << 6);
    v15 = (*(v157 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = (*(v157 + 56) + (v14 << 7));
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[3];
    *(v0 + 48) = v18[2];
    *(v0 + 64) = v21;
    *(v0 + 16) = v19;
    *(v0 + 32) = v20;
    v22 = v18[4];
    v23 = v18[5];
    v24 = v18[6];
    *(v0 + 121) = *(v18 + 105);
    *(v0 + 96) = v23;
    *(v0 + 112) = v24;
    *(v0 + 80) = v22;
    *(v0 + 1120) = 0;
    *(v0 + 1128) = 0xE000000000000000;
    v25 = *(v0 + 56);
    v165 = v16;
    if (v25 >> 60 == 15)
    {
      if (!*(v3 + 16))
      {

        sub_10001208C(v0 + 16, v0 + 656, &qword_100230150, &unk_1001D3700);
LABEL_16:
        v34 = 0;
        v175 = 0xE000000000000000;
        goto LABEL_17;
      }

      v27 = *(v0 + 32);
      v26 = *(v0 + 40);

      sub_10001208C(v0 + 16, v0 + 528, &qword_100230150, &unk_1001D3700);
      v28 = sub_100006028(v27, v26);
      if ((v29 & 1) == 0)
      {
        goto LABEL_16;
      }

      v30 = *(v0 + 1152);
      v31 = (*(v3 + 56) + 16 * v28);
      v32 = *v31;
      v33 = v31[1];
      sub_100012038(*v31, v33);
      v34 = sub_10016B23C(v32, v33);
      v36 = v35;
      sub_100011E48(v32, v33);
    }

    else
    {
      v37 = *(v0 + 1152);
      v38 = *(v0 + 48);

      sub_10001208C(v0 + 16, v0 + 144, &qword_100230150, &unk_1001D3700);
      sub_100089C38(v38, v25);
      v34 = sub_10016B23C(v38, v25);
      v36 = v39;
      sub_10002683C(v38, v25);
    }

    swift_beginAccess();
    *(v0 + 1120) = v34;
    v175 = v36;
    *(v0 + 1128) = v36;
LABEL_17:
    v167 = *(v0 + 16);
    v40 = v167 >> 62;
    v172 = v34;
    v161 = *(v0 + 24);
    if ((v167 >> 62) - 1 < 2 || v40 && v167 & 0xFFFFFFFFFFFFFFFELL ^ 0xC000000000000000 | *(v0 + 24))
    {
      v41 = 0xE900000000000064;
      v168 = 0x65746164696C6156;
    }

    else
    {
      v168 = 0x6164696C61766E55;
      v41 = 0xEB00000000646574;
    }

    v42 = *(v0 + 1240);
    v43 = *(v0 + 1152);
    sub_10001208C(v0 + 16, v0 + 272, &qword_100230150, &unk_1001D3700);

    sub_10001208C(v0 + 16, v0 + 400, &qword_100230150, &unk_1001D3700);

    v44 = sub_1001D0E50();
    v45 = v17;
    v46 = sub_1001D1E00();

    v163 = v46;
    if (os_log_type_enabled(v44, v46))
    {
      v150 = v41;
      v47 = swift_slowAlloc();
      v179[0] = swift_slowAlloc();
      *v47 = 136316418;
      *(v47 + 4) = sub_1000954E0(*v151, *(v151 + 8), v179);
      *(v47 + 12) = 2080;
      v48 = sub_1000954E0(v165, v45, v179);

      *(v47 + 14) = v48;
      *(v47 + 22) = 2080;
      sub_1001ABB9C(v167);
      sub_100011F00(v0 + 16, &qword_100230150, &unk_1001D3700);
      if (v40 > 1)
      {
        v49 = v175;
        v50 = v168;
        v53 = v0 + 16;
        if (v40 == 2)
        {
          sub_100011F00(v53, &qword_100230150, &unk_1001D3700);
          v52 = 0xE800000000000000;
          v51 = 0x64656873696E6966;
        }

        else
        {
          sub_100011F00(v53, &qword_100230150, &unk_1001D3700);
          v54 = 0x6465696669726576;
          if (v167 ^ 0xC000000000000008 | v161)
          {
            v54 = 0x79654B746E6573;
          }

          v55 = 0xE800000000000000;
          if (v167 ^ 0xC000000000000008 | v161)
          {
            v55 = 0xE700000000000000;
          }

          v56 = 0x6966697265766E75;
          if (v167 ^ 0xC000000000000000 | v161)
          {
            v56 = 0x6E69796669726576;
          }

          v57 = 0xE900000000000067;
          if (!(v167 ^ 0xC000000000000000 | v161))
          {
            v57 = 0xEA00000000006465;
          }

          if (v167 <= 0xC000000000000007)
          {
            v51 = v56;
          }

          else
          {
            v51 = v54;
          }

          if (v167 <= 0xC000000000000007)
          {
            v52 = v57;
          }

          else
          {
            v52 = v55;
          }
        }
      }

      else
      {
        v49 = v175;
        v50 = v168;
        sub_100011F00(v0 + 16, &qword_100230150, &unk_1001D3700);
        if (v40)
        {
          v51 = 0x6E69766965636572;
          v52 = 0xE900000000000067;
        }

        else
        {
          sub_10012853C(v167);
          v51 = 0x6465696669726576;
          v52 = 0xEE0064656C696146;
        }
      }

      v58 = sub_1000954E0(v51, v52, v179);

      *(v47 + 24) = v58;
      *(v47 + 32) = 2080;
      *(v47 + 34) = sub_1000954E0(v50, v150, v179);
      *(v47 + 42) = 2080;
      v59 = *(v0 + 32);
      v60 = *(v0 + 40);

      v61 = sub_1000954E0(v59, v60, v179);

      *(v47 + 44) = v61;
      *(v47 + 52) = 2080;

      v62 = sub_1000954E0(v172, v49, v179);

      *(v47 + 54) = v62;
      _os_log_impl(&_mh_execute_header, v44, v163, "%s Request Log: Attestation: %s %s <%s %s: %s>", v47, 0x3Eu);
      swift_arrayDestroy();
    }

    else
    {
      sub_100011F00(v0 + 16, &qword_100230150, &unk_1001D3700);

      sub_100011F00(v0 + 16, &qword_100230150, &unk_1001D3700);
    }

    v63 = *(v0 + 1232);
    sub_1001D0D00();
    v64 = *(v0 + 32);
    v65 = *(v0 + 40);

    sub_1001D0CD0();
    sub_1001D0CE0();

    sub_1001D0CC0();
    if (*(v156 + v152) == 1)
    {
      v66 = *(v0 + 1232);
      v67 = *(v0 + 136);
      sub_1001D0CB0();
    }

    (*v170)(*(v0 + 1224), *(v0 + 1232), *(v0 + 1192));
    v1 = v0 + 784;
    v69 = v178[2];
    v68 = v178[3];
    if (v69 >= v68 >> 1)
    {
      v178 = sub_100009830(v68 > 1, v69 + 1, 1, v178);
    }

    isa &= isa - 1;
    v70 = *(v0 + 1232);
    v71 = *(v0 + 1224);
    v72 = *(v0 + 1192);
    sub_100011F00(v0 + 16, &qword_100230150, &unk_1001D3700);
    (*(v171 + 8))(v70, v72);
    v178[2] = v69 + 1;
    (*(v171 + 32))(v178 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v69, v71, v72);

    *(v0 + 1136) = v178;
    v3 = v159;
    v12 = v153;
    v8 = v154;
  }

  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_86;
    }

    if (v13 >= v12)
    {
      break;
    }

    isa = v8[v13].isa;
    ++v7;
    if (isa)
    {
      v7 = v13;
      goto LABEL_9;
    }
  }

  v73 = *(v0 + 1264);
  v74 = *(v0 + 1256);
  v75 = *(v0 + 140);
  v76 = *(v0 + 1248);
  v77 = *(v0 + 1152);

  os_unfair_lock_lock((v77 + v76));
  v78 = *(v77 + v76 + v75 + *(v74 + 148));

  os_unfair_lock_unlock((v77 + v76));
  v79 = 0;
  v80 = v78 + 64;
  v81 = -1;
  v160 = v78 + 64;
  v162 = v78;
  v82 = -1 << *(v78 + 32);
  if (-v82 < 64)
  {
    v81 = ~(-1 << -v82);
  }

  v83 = v81 & *(v78 + 64);
  v84 = (63 - v82) >> 6;
  v158 = v84;
  if (v83)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v85 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      break;
    }

    if (v85 >= v84)
    {
      v125 = *(v0 + 1152);

      v126 = *(v125 + *(*v125 + 344));
      v127 = v125 + *(*v125 + 240);
      *(v0 + 1144) = sub_1001D0870();
      sub_100011AC0(&qword_1002292B8, &qword_1001DD2C0);
      sub_1000594F0();
      v128 = sub_1001CF800();
      v129 = *(v0 + 1184);
      v130 = *(v0 + 1176);
      v131 = *(v0 + 1160);
      v132 = *(v0 + 1152);
      v133 = v128;
      v135 = v134;

      sub_1001D1800();
      v136 = sub_1001D17F0();
      if (v137)
      {
        v138 = v136;
      }

      else
      {
        v138 = 0;
      }

      if (v137)
      {
        v139 = v137;
      }

      else
      {
        v139 = 0xE000000000000000;
      }

      v140 = swift_task_alloc();
      v140[2] = v132;
      v140[3] = v138;
      v140[4] = v139;
      v140[5] = v0 + 1136;
      sub_1001D0D90();

      v141 = *(*v132 + 336);
      type metadata accessor for BiomeReporter();
      sub_1001115D0();
      (*(*(v0 + 1168) + 8))(*(v0 + 1176), *(v0 + 1160));
      sub_100011E48(v133, v135);
      v142 = *(v0 + 1136);

      v143 = *(v0 + 1232);
      v144 = *(v0 + 1224);
      v145 = *(v0 + 1216);
      v146 = *(v0 + 1208);
      v147 = *(v0 + 1184);
      v148 = *(v0 + 1176);

      v149 = *(v0 + 8);

      v149();
      return;
    }

    v83 = *(v80 + 8 * v85);
    ++v79;
    if (v83)
    {
      v79 = v85;
      do
      {
LABEL_57:
        v173 = *(v0 + 1240);
        v86 = *(v0 + 1152);
        v87 = __clz(__rbit64(v83)) | (v79 << 6);
        v88 = (*(v162 + 48) + 16 * v87);
        v89 = v88[1];
        v166 = *v88;
        v90 = *(v162 + 56) + 72 * v87;
        v92 = *(v90 + 32);
        v91 = *(v90 + 48);
        v93 = *(v90 + 16);
        *(v1 + 64) = *(v90 + 64);
        *(v1 + 32) = v92;
        *(v1 + 48) = v91;
        *(v1 + 16) = v93;
        *v1 = *v90;
        v94 = *(v0 + 808);
        v95 = *(v0 + 816);

        sub_10001208C(v1, v0 + 856, &qword_100230140, &qword_1001D36F0);
        v176 = sub_10016B23C(v94, v95);
        v97 = v96;
        v164 = *(v0 + 800);
        v98 = 0x65746164696C6156;
        if (v164 != 2)
        {
          v98 = 0x6164696C61766E55;
        }

        v169 = v98;
        if (v164 == 2)
        {
          v99 = 0xE900000000000064;
        }

        else
        {
          v99 = 0xEB00000000646574;
        }

        sub_10001208C(v1, v0 + 928, &qword_100230140, &qword_1001D36F0);

        sub_10001208C(v1, v0 + 1000, &qword_100230140, &qword_1001D36F0);

        v100 = v97;
        v101 = sub_1001D0E50();
        v102 = sub_1001D1E00();

        v174 = v99;

        if (os_log_type_enabled(v101, v102))
        {
          v155 = v101;
          v103 = swift_slowAlloc();
          v179[0] = swift_slowAlloc();
          *v103 = 136316418;
          *(v103 + 4) = sub_1000954E0(*v151, *(v151 + 8), v179);
          *(v103 + 12) = 2080;
          v104 = sub_1000954E0(v166, v89, v179);

          *(v103 + 14) = v104;
          *(v103 + 22) = 2080;
          sub_1001ABBAC(v164);
          sub_100011F00(v177, &qword_100230140, &qword_1001D36F0);
          sub_100011F00(v177, &qword_100230140, &qword_1001D36F0);
          if (v164)
          {
            v105 = v176;
            v106 = v169;
            if (v164 == 2)
            {
              v108 = 0xE800000000000000;
              v107 = 0x6465696669726576;
            }

            else if (v164 == 1)
            {
              v107 = 0x6E69796669726576;
              v108 = 0xE900000000000067;
            }

            else
            {
              sub_100127D1C(v164);
              v107 = 0x6465696669726576;
              v108 = 0xEE0064656C696146;
            }
          }

          else
          {
            v107 = 0x6966697265766E75;
            v108 = 0xEA00000000006465;
            v105 = v176;
            v106 = v169;
          }

          v109 = sub_1000954E0(v107, v108, v179);

          *(v103 + 24) = v109;
          *(v103 + 32) = 2080;
          *(v103 + 34) = sub_1000954E0(v106, v174, v179);
          *(v103 + 42) = 2080;
          v110 = *(v0 + 784);
          v111 = *(v0 + 792);

          v112 = sub_1000954E0(v110, v111, v179);

          *(v103 + 44) = v112;
          *(v103 + 52) = 2080;
          *(v103 + 54) = sub_1000954E0(v105, v100, v179);
          _os_log_impl(&_mh_execute_header, v155, v102, "%s Request Log: Proxied Attestation: %s %s <%s %s: %s>", v103, 0x3Eu);
          swift_arrayDestroy();
        }

        else
        {
          sub_100011F00(v177, &qword_100230140, &qword_1001D36F0);

          sub_100011F00(v177, &qword_100230140, &qword_1001D36F0);
        }

        v113 = *(v0 + 1216);
        v114 = *(v0 + 1208);
        v115 = *(v0 + 1192);
        sub_1001D0D00();
        v116 = *(v0 + 784);
        v117 = *(v0 + 792);

        sub_1001D0CD0();
        sub_1001D0CE0();
        sub_1001D0CC0();
        v118 = *(v0 + 824);
        v119 = *(v0 + 832);

        sub_1001D0CF0();
        (*v170)(v114, v113, v115);
        v121 = v178[2];
        v120 = v178[3];
        if (v121 >= v120 >> 1)
        {
          v178 = sub_100009830(v120 > 1, v121 + 1, 1, v178);
        }

        v1 = v0 + 784;
        v83 &= v83 - 1;
        v122 = *(v0 + 1216);
        v123 = *(v0 + 1208);
        v124 = *(v0 + 1192);
        sub_100011F00(v177, &qword_100230140, &qword_1001D36F0);
        (*(v171 + 8))(v122, v124);
        v178[2] = v121 + 1;
        (*(v171 + 32))(v178 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v121, v123, v124);
        *(v0 + 1136) = v178;
        v84 = v158;
        v80 = v160;
      }

      while (v83);
    }
  }

LABEL_86:
  __break(1u);
}

uint64_t sub_1001637E0(uint64_t a1, int *a2)
{
  v3[7] = v2;
  v5 = sub_1001D0DC0();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();
  v8 = sub_1001D20D0();
  v3[11] = v8;
  v9 = *(v8 - 8);
  v3[12] = v9;
  v10 = *(v9 + 64) + 15;
  v3[13] = swift_task_alloc();
  v14 = (a2 + *a2);
  v11 = a2[1];
  v12 = swift_task_alloc();
  v3[14] = v12;
  *v12 = v3;
  v12[1] = sub_10016399C;

  return v14(v3 + 4);
}

uint64_t sub_10016399C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_100163FD8;
  }

  else
  {
    v3 = sub_100163AB0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100163AB0()
{
  v58 = v0;
  v1 = v0[4];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = v0[7];
  sub_1001428C0(v1, v2 != 0);
  v7 = *(*v6 + 184);
  v8 = *(*v6 + 152);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v4 + 8))(v3, v5);
  v9 = v0[2];
  v56 = v0[3];
  v10 = (v6 + *(*v6 + 144));
  os_unfair_lock_lock(v10);
  v11 = v10 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  if (v2)
  {
    v12 = v0[13];
    v55 = v0[10];
    v13 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
    v14 = &v11[*(v13 + 108)];
    v15 = *v14;
    v16 = *(v14 + 1);
    v17 = *(v14 + 2);
    *v14 = v1;
    *(v14 + 1) = v9;
    *(v14 + 2) = v56;
    v18 = v14[24];
    v14[24] = 1;
    sub_1001428C0(v1, 1);
    swift_errorRetain();
    sub_100128734(v15, v16, v17, v18);
    v19 = &v11[*(v13 + 96)];
    v20 = *v19;
    *v19 = v1;
    v21 = v19[8];
    v19[8] = 3;
    sub_1001AF874(v20, v21);
    os_unfair_lock_unlock(v10);
    v0[6] = v1;
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    sub_100142304(v1, 1);

    v22 = v0[1];
  }

  else
  {
    v24 = v0[9];
    v23 = v0[10];
    v26 = v0[7];
    v25 = v0[8];
    v27 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
    v28 = &v11[*(v27 + 108)];
    v29 = *v28;
    v30 = *(v28 + 1);
    v31 = *(v28 + 2);
    *v28 = v9;
    *(v28 + 1) = v56;
    *(v28 + 2) = 0;
    v32 = v28[24];
    v28[24] = 0;
    sub_100128734(v29, v30, v31, v32);
    v33 = &v11[*(v27 + 96)];
    v34 = *v33;
    *v33 = 1;
    v35 = v33[8];
    v33[8] = 4;
    sub_1001AF874(v34, v35);
    os_unfair_lock_unlock(v10);
    v36 = *(*v26 + 296);
    (*(v24 + 16))(v23, v26 + *(*v26 + 304), v25);
    v37 = sub_1001D0DE0();
    v38 = sub_1001D1EA0();
    if (sub_1001D1ED0())
    {
      v39 = v0[10];
      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = sub_1001D0DB0();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, v38, v41, "OTTSent", "", v40, 2u);
    }

    v43 = v0[9];
    v42 = v0[10];
    v45 = v0[7];
    v44 = v0[8];

    (*(v43 + 8))(v42, v44);
    v46 = *(*v45 + 272);

    v47 = sub_1001D0E50();
    v48 = sub_1001D1E00();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = v0[7];
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v57 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_1000954E0(*(v49 + *(*v49 + 280)), *(v49 + *(*v49 + 280) + 8), &v57);
      _os_log_impl(&_mh_execute_header, v47, v48, "%s Sent auth message on data stream", v50, 0xCu);
      sub_100011CF0(v51);
    }

    v52 = v0[13];
    v53 = v0[10];

    v22 = v0[1];
  }

  return v22();
}

uint64_t sub_100163FD8()
{
  v57 = v0;
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[7];
  sub_1001428C0(v1, v1 != 0);
  v6 = *(*v5 + 184);
  v7 = *(*v5 + 152);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v3 + 8))(v2, v4);
  v8 = v0[2];
  v55 = v0[3];
  v9 = (v5 + *(*v5 + 144));
  os_unfair_lock_lock(v9);
  v10 = v9 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  if (v1)
  {
    v11 = v0[13];
    v54 = v0[10];
    v12 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
    v13 = &v10[*(v12 + 108)];
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = *(v13 + 2);
    *v13 = v1;
    *(v13 + 1) = v8;
    *(v13 + 2) = v55;
    v17 = v13[24];
    v13[24] = 1;
    sub_1001428C0(v1, 1);
    swift_errorRetain();
    sub_100128734(v14, v15, v16, v17);
    v18 = &v10[*(v12 + 96)];
    v19 = *v18;
    *v18 = v1;
    v20 = v18[8];
    v18[8] = 3;
    sub_1001AF874(v19, v20);
    os_unfair_lock_unlock(v9);
    v0[6] = v1;
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    sub_100142304(v1, 1);

    v21 = v0[1];
  }

  else
  {
    v23 = v0[9];
    v22 = v0[10];
    v25 = v0[7];
    v24 = v0[8];
    v26 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
    v27 = &v10[*(v26 + 108)];
    v28 = *v27;
    v29 = *(v27 + 1);
    v30 = *(v27 + 2);
    *v27 = v8;
    *(v27 + 1) = v55;
    *(v27 + 2) = 0;
    v31 = v27[24];
    v27[24] = 0;
    sub_100128734(v28, v29, v30, v31);
    v32 = &v10[*(v26 + 96)];
    v33 = *v32;
    *v32 = 1;
    v34 = v32[8];
    v32[8] = 4;
    sub_1001AF874(v33, v34);
    os_unfair_lock_unlock(v9);
    v35 = *(*v25 + 296);
    (*(v23 + 16))(v22, v25 + *(*v25 + 304), v24);
    v36 = sub_1001D0DE0();
    v37 = sub_1001D1EA0();
    if (sub_1001D1ED0())
    {
      v38 = v0[10];
      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = sub_1001D0DB0();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, v37, v40, "OTTSent", "", v39, 2u);
    }

    v42 = v0[9];
    v41 = v0[10];
    v44 = v0[7];
    v43 = v0[8];

    (*(v42 + 8))(v41, v43);
    v45 = *(*v44 + 272);

    v46 = sub_1001D0E50();
    v47 = sub_1001D1E00();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = v0[7];
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v56 = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_1000954E0(*(v48 + *(*v48 + 280)), *(v48 + *(*v48 + 280) + 8), &v56);
      _os_log_impl(&_mh_execute_header, v46, v47, "%s Sent auth message on data stream", v49, 0xCu);
      sub_100011CF0(v50);
    }

    v51 = v0[13];
    v52 = v0[10];

    v21 = v0[1];
  }

  return v21();
}

void sub_1001644FC()
{
  v1 = v0;
  v2 = sub_1001D0DC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001D20D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v0 + 184);
  v15 = *(*v0 + 152);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v9 + 8))(v13, v8);
  v16 = v34[0];
  v17 = v34[1];
  v18 = (v1 + *(*v1 + 144));
  os_unfair_lock_lock(v18);
  v19 = v18 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  v20 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v21 = &v19[*(v20 + 96)];
  v22 = v21[8];
  if (v22 <= 1)
  {
    if (v21[8])
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v22 != 2)
  {
    if (v22 == 3)
    {
      goto LABEL_8;
    }

    *v21 = 0;
LABEL_6:
    v21[8] = 1;
  }

  v23 = &v19[*(v20 + 124)];
  *v23 = v16;
  *(v23 + 1) = v17;
  v23[16] = 0;
LABEL_8:
  os_unfair_lock_unlock(v18);
  v24 = *(*v1 + 296);
  (*(v3 + 16))(v7, v1 + *(*v1 + 304), v2);
  v25 = sub_1001D0DE0();
  v26 = sub_1001D1EA0();
  if (sub_1001D1ED0())
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = sub_1001D0DB0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, v26, v28, "ReadyForMoreChunks", "", v27, 2u);
  }

  (*(v3 + 8))(v7, v2);
  v29 = *(*v1 + 272);

  v30 = sub_1001D0E50();
  v31 = sub_1001D1E00();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_1000954E0(*(v1 + *(*v1 + 280)), *(v1 + *(*v1 + 280) + 8), v34);
    _os_log_impl(&_mh_execute_header, v30, v31, "%s readyForMoreChunks received", v32, 0xCu);
    sub_100011CF0(v33);
  }
}

uint64_t sub_100164990()
{
  v1 = sub_1001D0DC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*v0 + 296);
  (*(v2 + 16))(v6, v0 + *(*v0 + 304), v1);
  v8 = sub_1001D0DE0();
  v9 = sub_1001D1EA0();
  if (sub_1001D1ED0())
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_1001D0DB0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, v9, v11, "ReceivedOutgoingUserDataChunk", "", v10, 2u);
  }

  return (*(v2 + 8))(v6, v1);
}

void sub_100164B24()
{
  v1 = v0;
  v2 = sub_1001D20D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(*v0 + 184);
  v9 = *(*v0 + 152);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v3 + 8))(v7, v2);
  v10 = v15;
  v11 = v16;
  v12 = (v1 + *(*v1 + 144));
  os_unfair_lock_lock(v12);
  v13 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
  sub_100164D1C(v12 + *(v13 + 28), v10, v11);
  os_unfair_lock_unlock(v12);
}

uint64_t sub_100164D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v7 = a1 + *(result + 96);
  v8 = *(v7 + 8);
  v9 = v8 >= 2;
  v10 = v8 - 2;
  if (v9)
  {
    if (v10 < 2)
    {
      return result;
    }

    if (!*v7)
    {
      sub_1001D2030(49);

      v12._countAndFlagsBits = sub_10011C5EC(0, 4u);
      sub_1001D18B0(v12);

      v13._object = 0x80000001001E7630;
      v13._countAndFlagsBits = 0xD000000000000020;
      sub_1001D18B0(v13);
      result = sub_1001D2180();
      __break(1u);
      return result;
    }

    *v7 = 0;
  }

  *(v7 + 8) = 2;
  v11 = a1 + *(result + 128);
  *v11 = a2;
  *(v11 + 8) = a3;
  *(v11 + 16) = 0;
  return result;
}

uint64_t sub_100164E68(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v126 = a4;
  v160 = a1;
  v131 = type metadata accessor for ValidatedAttestation();
  v6 = *(*(v131 - 8) + 64);
  __chkstk_darwin(v131, v7);
  v142 = &v122[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v143 = type metadata accessor for ValidatedAttestationOrAttestation();
  v9 = *(*(v143 - 8) + 64);
  result = __chkstk_darwin(v143, v10);
  v15 = &v122[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    goto LABEL_39;
  }

  v16 = *(a2 + 16);
  if (v16)
  {
    v125 = *(*v126 + 272);
    v17 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v141 = *(v12 + 72);
    *&v14 = 136315138;
    v123 = v14;
    v124 = xmmword_1001D7160;
    v130 = xmmword_1001E1390;
    v129 = xmmword_1001D6800;
    v132 = &v122[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
    do
    {
      sub_1001AFCB4(v17, v15, type metadata accessor for ValidatedAttestationOrAttestation);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v18 = *(v15 + 3);
        v149 = *(v15 + 2);
        v150 = v18;
        v19 = *(v15 + 5);
        v151 = *(v15 + 4);
        v152 = v19;
        v20 = *v15;
        v148 = *(v15 + 1);
        v147 = v20;
        v21 = *(&v148 + 1);
        if (*(&v148 + 1) >> 60 == 15)
        {
          sub_100089C90(&v147, &v153);
          v22 = sub_1001D0E50();
          v23 = sub_1001D1DE0();
          sub_10005AF88(&v147);
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            *&v153 = v25;
            *v24 = v123;
            v26 = v147;

            v27 = sub_1000954E0(v26, *(&v26 + 1), &v153);

            *(v24 + 4) = v27;
            _os_log_impl(&_mh_execute_header, v22, v23, "bundle missing for attestation: %s", v24, 0xCu);
            sub_100011CF0(v25);
          }

          result = sub_10005AF88(&v147);
          goto LABEL_5;
        }

        v144 = v17;
        v145 = v16;
        v138 = *(v15 + 12);
        v53 = *(&v147 + 1);
        v140 = v147;
        v54 = v148;
        v55 = *(&v149 + 1);
        v128 = v149;
        v56 = *(&v150 + 1);
        v135 = v150;
        v57 = *(&v151 + 1);
        v137 = v151;
        v58 = *(&v152 + 1);
        v139 = v152;
        v59 = *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 144);
        sub_100089C38(v54, v21);
        v134 = v54;
        v136 = v21;
        sub_100089C38(v54, v21);
        v133 = v58;

        v60 = v160;
        v61 = *(v160 + v59);

        v62 = v55;
        v63 = v53;

        v64 = v56;
        v65 = v140;

        v66 = v57;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v127 = v59;
        v68 = *(v60 + v59);
        v146 = v68;
        v69 = sub_100006028(v65, v53);
        v71 = v68[2];
        v72 = (v70 & 1) == 0;
        v73 = __OFADD__(v71, v72);
        v74 = v71 + v72;
        if (v73)
        {
          goto LABEL_35;
        }

        v75 = v70;
        if (v68[3] >= v74)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v121 = v69;
            sub_10001136C();
            v69 = v121;
          }
        }

        else
        {
          sub_10000EDB0(v74, isUniquelyReferenced_nonNull_native);
          v69 = sub_100006028(v65, v53);
          if ((v75 & 1) != (v76 & 1))
          {
            goto LABEL_38;
          }
        }

        v100 = v133;
        v101 = v139;
        v102 = v66;
        v103 = v134;
        v104 = v138;
        v105 = v137;
        v106 = v135;
        v107 = v128;
        if (v75)
        {
          v84 = v146;
          v108 = v146[7] + (v69 << 7);
          v109 = *(v108 + 48);
          v111 = *v108;
          v110 = *(v108 + 16);
          v155 = *(v108 + 32);
          v156 = v109;
          v153 = v111;
          v154 = v110;
          v113 = *(v108 + 80);
          v112 = *(v108 + 96);
          v114 = *(v108 + 64);
          *&v159[9] = *(v108 + 105);
          v158 = v113;
          *v159 = v112;
          v157 = v114;
          *v108 = v124;
          *(v108 + 16) = v65;
          *(v108 + 24) = v63;
          v115 = v136;
          *(v108 + 32) = v103;
          *(v108 + 40) = v115;
          *(v108 + 48) = v104;
          *(v108 + 56) = v107;
          *(v108 + 64) = v62;
          *(v108 + 72) = v106;
          *(v108 + 80) = v64;
          *(v108 + 88) = v105;
          *(v108 + 96) = v102;
          *(v108 + 104) = v101;
          *(v108 + 112) = v100;
          *(v108 + 120) = 0;
          sub_100011F00(&v153, &qword_100230150, &unk_1001D3700);
          sub_10005AF88(&v147);
          result = sub_10002683C(v103, v115);
        }

        else
        {
          v84 = v146;
          v146[(v69 >> 6) + 8] |= 1 << v69;
          v116 = (v84[6] + 16 * v69);
          *v116 = v65;
          v116[1] = v63;
          v117 = v84[7] + (v69 << 7);
          *v117 = v124;
          *(v117 + 16) = v65;
          *(v117 + 24) = v63;
          v118 = v136;
          *(v117 + 32) = v103;
          *(v117 + 40) = v118;
          *(v117 + 48) = v104;
          *(v117 + 56) = v107;
          *(v117 + 64) = v62;
          *(v117 + 72) = v106;
          *(v117 + 80) = v64;
          *(v117 + 88) = v105;
          *(v117 + 96) = v102;
          *(v117 + 104) = v101;
          *(v117 + 112) = v100;
          *(v117 + 120) = 0;

          sub_10005AF88(&v147);
          result = sub_10002683C(v103, v118);
          v119 = v84[2];
          v73 = __OFADD__(v119, 1);
          v120 = v119 + 1;
          if (v73)
          {
            goto LABEL_37;
          }

          v84[2] = v120;
        }

        v98 = v160;
        v99 = &v152;
      }

      else
      {
        v144 = v17;
        v145 = v16;
        v140 = *&v15[*(sub_100011AC0(qword_10022E650, &unk_1001DF500) + 48)];
        v28 = v142;
        sub_1001B0368(v15, v142, type metadata accessor for ValidatedAttestation);
        v30 = *v28;
        v29 = v28[1];
        v31 = v28[5];
        v136 = v28[4];
        v32 = v28[7];
        v138 = v28[6];
        v33 = (v28 + *(v131 + 36));
        v34 = v33[1];
        v137 = *v33;
        v35 = v28[10];
        v36 = v28[11];
        v139 = v35;
        v37 = *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 144);
        v135 = v36;

        v38 = v160;
        v39 = *(v160 + v37);

        v134 = v31;

        v40 = v32;

        v41 = v34;

        v42 = swift_isUniquelyReferenced_nonNull_native();
        v133 = v37;
        v43 = *(v38 + v37);
        *&v147 = v43;
        v44 = v30;
        v46 = sub_100006028(v30, v29);
        v47 = *(v43 + 16);
        v48 = (v45 & 1) == 0;
        v49 = v47 + v48;
        if (__OFADD__(v47, v48))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          sub_1001D24F0();
          __break(1u);
LABEL_39:
          sub_100011AC0(&qword_10022FF28, &unk_1001E1C60);
          result = sub_1001D2460();
          __break(1u);
          return result;
        }

        v50 = v45;
        if (*(v43 + 24) >= v49)
        {
          if ((v42 & 1) == 0)
          {
            sub_10001136C();
          }
        }

        else
        {
          sub_10000EDB0(v49, v42);
          v51 = sub_100006028(v30, v29);
          if ((v50 & 1) != (v52 & 1))
          {
            goto LABEL_38;
          }

          v46 = v51;
        }

        v77 = v140;
        v78 = v135;
        v79 = v139;
        v80 = v138;
        v81 = v137;
        v82 = v134;
        v83 = v136;
        if (v50)
        {
          v84 = v147;
          v85 = *(v147 + 56) + (v46 << 7);
          v86 = *(v85 + 48);
          v88 = *v85;
          v87 = *(v85 + 16);
          v155 = *(v85 + 32);
          v156 = v86;
          v153 = v88;
          v154 = v87;
          v90 = *(v85 + 80);
          v89 = *(v85 + 96);
          v91 = *(v85 + 64);
          *&v159[9] = *(v85 + 105);
          v158 = v90;
          *v159 = v89;
          v157 = v91;
          *v85 = v130;
          *(v85 + 16) = v44;
          *(v85 + 24) = v29;
          *(v85 + 32) = v129;
          *(v85 + 48) = v77;
          *(v85 + 56) = v83;
          *(v85 + 64) = v82;
          *(v85 + 72) = v80;
          *(v85 + 80) = v40;
          *&v89 = v81;
          *(&v89 + 1) = v41;
          *&v86 = v79;
          *(&v86 + 1) = v78;
          *(v85 + 104) = v86;
          *(v85 + 88) = v89;
          *(v85 + 120) = 0;
          sub_100011F00(&v153, &qword_100230150, &unk_1001D3700);
        }

        else
        {
          v84 = v147;
          *(v147 + 8 * (v46 >> 6) + 64) |= 1 << v46;
          v92 = (v84[6] + 16 * v46);
          *v92 = v44;
          v92[1] = v29;
          v93 = v84[7] + (v46 << 7);
          *v93 = v130;
          *(v93 + 16) = v44;
          *(v93 + 24) = v29;
          *(v93 + 32) = v129;
          *(v93 + 48) = v77;
          *(v93 + 56) = v83;
          *(v93 + 64) = v82;
          *(v93 + 72) = v80;
          *&v94 = v81;
          *(&v94 + 1) = v41;
          *&v95 = v79;
          *(&v95 + 1) = v78;
          *(v93 + 80) = v40;
          *(v93 + 104) = v95;
          *(v93 + 88) = v94;
          *(v93 + 120) = 0;
          v96 = v84[2];
          v73 = __OFADD__(v96, 1);
          v97 = v96 + 1;
          if (v73)
          {
            goto LABEL_36;
          }

          v84[2] = v97;
        }

        result = sub_1001AFB98(v142, type metadata accessor for ValidatedAttestation);
        v98 = v160;
        v99 = &v156;
      }

      *(v98 + *(v99 - 32)) = v84;
      v15 = v132;
      v16 = v145;
      v17 = v144;
LABEL_5:
      v17 += v141;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_1001658A0(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = sub_1001D0F00();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  __chkstk_darwin(v3, v5);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001D0DC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001D20D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*v1 + 184);
  v20 = *(*v1 + 152);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v14 + 8))(v18, v13);
  v21 = v40;
  v22 = v41;
  v23 = (v2 + *(*v2 + 144));
  os_unfair_lock_lock(v23);
  v24 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
  v25 = sub_100165CF0(v23 + *(v24 + 28), 1, v21, v22, v39, v2);
  os_unfair_lock_unlock(v23);
  v26 = *(*v2 + 296);
  (*(v8 + 16))(v12, v2 + *(*v2 + 304), v7);
  v27 = sub_1001D0DE0();
  v28 = sub_1001D1EA0();
  if (sub_1001D1ED0())
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = sub_1001D0DB0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, v28, v30, "AttestationsReceivedFromRopes", "", v29, 2u);
  }

  result = (*(v8 + 8))(v12, v7);
  if (v25)
  {
    v33 = v36;
    v32 = v37;
    v34 = v38;
    (*(v37 + 104))(v36, enum case for NWActivity.CompletionReason.success(_:), v38);

    sub_1001D0F20();

    return (*(v32 + 8))(v33, v34);
  }

  return result;
}

uint64_t sub_100165CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v163 = a6;
  v167 = a5;
  v10 = type metadata accessor for ValidatedAttestation();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v140 = (&v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v157 = type metadata accessor for ValidatedAttestationOrAttestation();
  v169 = *(v157 - 8);
  v14 = *(v169 + 64);
  v16 = __chkstk_darwin(v157, v15);
  v143 = (&v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v16, v18);
  v159 = &v138 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v24 = &v138 - v23;
  __chkstk_darwin(v22, v25);
  v164 = &v138 - v26;
  v27 = sub_100011AC0(&qword_10022FDC8, &qword_1001E18D8);
  v28 = *(*(v27 - 8) + 64);
  v30 = __chkstk_darwin(v27 - 8, v29);
  v165 = &v138 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v32);
  v34 = &v138 - v33;
  v35 = sub_100011AC0(&qword_10022FE90, &qword_1001E1B78);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8, v37);
  v39 = &v138 - v38;
  v40 = sub_100011AC0(&qword_10022FE98, &qword_1001E1B80);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8, v42);
  v168 = &v138 - v43;
  v44 = sub_100011AC0(&unk_100230130, &unk_1001E16A0);
  v45 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44, v46);
  v48 = (&v138 - v47);
  v160 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v49 = a1 + v160[29];
  if ((*(v49 + 24) & 1) == 0)
  {
    v50 = __OFADD__(*v49, a2);
    a2 += *v49;
    if (v50)
    {
      goto LABEL_45;
    }

    a3 = *(v49 + 8);
    a4 = *(v49 + 16);
  }

  *v49 = a2;
  *(v49 + 8) = a3;
  *(v49 + 16) = a4;
  *(v49 + 24) = 0;
  v51 = v160[21];
  sub_10001208C(a1 + v51, v48, &unk_100230130, &unk_1001E16A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v156 = a1;
  if (EnumCaseMultiPayload <= 2)
  {
    v53 = v157;
    v54 = v164;
    v139 = *v48;
    sub_100011F00(a1 + v51, &unk_100230130, &unk_1001E16A0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v139 = 0;
    v53 = v157;
    v54 = v164;
    if ((EnumCaseMultiPayload - 5) >= 2)
    {
      v55 = EnumCaseMultiPayload == 3;
      v56 = v167;
      if (!v55)
      {
        v57 = v167;
        v58 = sub_1001D0200();
        (*(*(v58 - 8) + 8))(v48, v58);
        v56 = v57;
        v139 = 0;
      }

      goto LABEL_10;
    }
  }

  v56 = v167;
LABEL_10:
  sub_10001208C(v56, v39, &qword_10022FE90, &qword_1001E1B78);
  v59 = v34;
  sub_1001B0368(v39, v34, type metadata accessor for ValidatedAttestationOrAttestation);
  v60 = v169;
  v61 = v169 + 56;
  v62 = *(v169 + 56);
  v62(v59, 0, 1, v53);
  v63 = v168;
  v62(v168, 1, 1, v53);
  sub_10001BAC8(v59, v63, &qword_10022FDC8, &qword_1001E18D8);
  v162 = *(*v163 + 272);
  v64 = v165;
  sub_1000DBEF4(v63, v165, &qword_10022FDC8, &qword_1001E18D8);
  v167 = v61;
  v166 = v62;
  v62(v63, 1, 1, v53);
  v65 = *(v60 + 48);
  v169 = v60 + 48;
  v66 = v65(v64, 1, v53);
  v68 = v159;
  v69 = v156;
  if (v66 == 1)
  {
LABEL_11:
    sub_100011F00(v168, &qword_10022FE98, &qword_1001E1B80);
    return v139;
  }

  *&v67 = 136315138;
  v154 = v67;
  v142 = xmmword_1001D7160;
  v155 = v65;
  v141 = v24;
  while (1)
  {
    sub_1001B0368(v64, v54, type metadata accessor for ValidatedAttestationOrAttestation);
    sub_1001AFCB4(v54, v24, type metadata accessor for ValidatedAttestationOrAttestation);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1001AFCB4(v54, v68, type metadata accessor for ValidatedAttestationOrAttestation);
      v78 = sub_1001D0E50();
      v79 = sub_1001D1DE0();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *&v177 = v81;
        *v80 = v154;
        v82 = v143;
        sub_1001B0368(v68, v143, type metadata accessor for ValidatedAttestationOrAttestation);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v83 = v82[3];
          v172 = v82[2];
          v173 = v83;
          v84 = v82[5];
          v174 = v82[4];
          v175 = v84;
          v85 = v82[1];
          v170 = *v82;
          v171 = v85;
          v86 = *(&v170 + 1);
          v87 = v170;

          sub_10005AF88(&v170);
        }

        else
        {
          v112 = v140;
          sub_1001B0368(v82, v140, type metadata accessor for ValidatedAttestation);
          v87 = *v112;
          v86 = v112[1];

          v113 = v112;
          v53 = v157;
          sub_1001AFB98(v113, type metadata accessor for ValidatedAttestation);
        }

        v114 = sub_1000954E0(v87, v86, &v177);

        *(v80 + 4) = v114;
        _os_log_impl(&_mh_execute_header, v78, v79, "Received unexpected validated attestation nodeID: %s", v80, 0xCu);
        sub_100011CF0(v81);

        v54 = v164;
        sub_1001AFB98(v164, type metadata accessor for ValidatedAttestationOrAttestation);
        v69 = v156;
        v65 = v155;
      }

      else
      {

        sub_1001AFB98(v68, type metadata accessor for ValidatedAttestationOrAttestation);
        sub_1001AFB98(v54, type metadata accessor for ValidatedAttestationOrAttestation);
      }

      sub_1001AFB98(v24, type metadata accessor for ValidatedAttestation);
      goto LABEL_15;
    }

    v72 = *(v24 + 1);
    v177 = *v24;
    v178 = v72;
    v73 = *(v24 + 5);
    v181 = *(v24 + 4);
    v182 = v73;
    v74 = *(v24 + 3);
    v179 = *(v24 + 2);
    v180 = v74;
    v161 = *(v24 + 12);
    v75 = v177;
    v76 = v160[36];
    if (*(*(v69 + v76) + 16))
    {
      sub_100006028(v177, *(&v177 + 1));
      if (v77)
      {
        sub_10005AF88(&v177);
        v54 = v164;
        sub_1001AFB98(v164, type metadata accessor for ValidatedAttestationOrAttestation);
        v68 = v159;
        goto LABEL_16;
      }
    }

    v158 = v75;
    if (*(&v178 + 1) >> 60 != 15)
    {
      break;
    }

    sub_100089C90(&v177, &v170);
    v88 = sub_1001D0E50();
    v89 = sub_1001D1DE0();
    sub_10005AF88(&v177);
    v90 = os_log_type_enabled(v88, v89);
    v53 = v157;
    if (v90)
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *&v170 = v92;
      *v91 = v154;

      v93 = sub_1000954E0(v158, *(&v75 + 1), &v170);

      *(v91 + 4) = v93;
      _os_log_impl(&_mh_execute_header, v88, v89, "bundle missing for attestation: %s", v91, 0xCu);
      sub_100011CF0(v92);
      v65 = v155;

      sub_10005AF88(&v177);
    }

    else
    {
      sub_10005AF88(&v177);
    }

    v54 = v164;
    sub_1001AFB98(v164, type metadata accessor for ValidatedAttestationOrAttestation);
LABEL_42:
    v68 = v159;
LABEL_15:
    v64 = v165;
LABEL_16:
    v71 = v168;
    sub_1000DBEF4(v168, v64, &qword_10022FDC8, &qword_1001E18D8);
    v166(v71, 1, 1, v53);
    if (v65(v64, 1, v53) == 1)
    {
      goto LABEL_11;
    }
  }

  v94 = v178;
  v95 = *(&v179 + 1);
  v144 = v179;
  v147 = v180;
  v96 = v69;
  v97 = *(&v180 + 1);
  v98 = *(&v181 + 1);
  v149 = v181;
  v99 = *(&v182 + 1);
  v151 = v182;
  v100 = *(&v178 + 1);
  sub_100089C38(v178, *(&v178 + 1));
  v153 = v94;
  v145 = v100;
  sub_100089C38(v94, v100);
  v152 = v99;

  v101 = *(v96 + v76);

  v146 = v95;

  v148 = v97;

  v150 = v98;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v183 = *(v96 + v76);
  v103 = v183;
  v105 = sub_100006028(v158, *(&v75 + 1));
  v106 = v103[2];
  v107 = (v104 & 1) == 0;
  v108 = v106 + v107;
  if (!__OFADD__(v106, v107))
  {
    v109 = v104;
    if (v103[3] >= v108)
    {
      v24 = v141;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10001136C();
      }
    }

    else
    {
      sub_10000EDB0(v108, isUniquelyReferenced_nonNull_native);
      v110 = sub_100006028(v75, *(&v75 + 1));
      v24 = v141;
      if ((v109 & 1) != (v111 & 1))
      {
        goto LABEL_46;
      }

      v105 = v110;
    }

    v65 = v155;
    if (v109)
    {
      v115 = v183;
      v116 = v183[7] + (v105 << 7);
      v117 = *(v116 + 32);
      v119 = *v116;
      v118 = *(v116 + 16);
      v173 = *(v116 + 48);
      v172 = v117;
      v170 = v119;
      v171 = v118;
      v121 = *(v116 + 80);
      v120 = *(v116 + 96);
      v122 = *(v116 + 64);
      *&v176[9] = *(v116 + 105);
      v175 = v121;
      *v176 = v120;
      v174 = v122;
      *v116 = v142;
      *(v116 + 16) = v75;
      v123 = v153;
      v124 = v145;
      *(v116 + 32) = v153;
      *(v116 + 40) = v124;
      v125 = v144;
      *(v116 + 48) = v161;
      *(v116 + 56) = v125;
      v126 = v147;
      *(v116 + 64) = v146;
      *(v116 + 72) = v126;
      v127 = v149;
      *(v116 + 80) = v148;
      *(v116 + 88) = v127;
      v128 = v151;
      *(v116 + 96) = v150;
      *(v116 + 104) = v128;
      *(v116 + 112) = v152;
      *(v116 + 120) = 0;
      sub_100011F00(&v170, &qword_100230150, &unk_1001D3700);
      sub_10005AF88(&v177);
      sub_10002683C(v123, v124);
      v54 = v164;
      sub_1001AFB98(v164, type metadata accessor for ValidatedAttestationOrAttestation);
    }

    else
    {
      v115 = v183;
      v183[(v105 >> 6) + 8] |= 1 << v105;
      *(v115[6] + 16 * v105) = v75;
      v129 = v115[7] + (v105 << 7);
      *v129 = v142;
      *(v129 + 16) = v75;
      v130 = v153;
      v131 = v145;
      *(v129 + 32) = v153;
      *(v129 + 40) = v131;
      v132 = v144;
      *(v129 + 48) = v161;
      *(v129 + 56) = v132;
      v133 = v147;
      *(v129 + 64) = v146;
      *(v129 + 72) = v133;
      v134 = v149;
      *(v129 + 80) = v148;
      *(v129 + 88) = v134;
      v135 = v151;
      *(v129 + 96) = v150;
      *(v129 + 104) = v135;
      *(v129 + 112) = v152;
      *(v129 + 120) = 0;

      sub_10005AF88(&v177);
      sub_10002683C(v130, v131);
      v54 = v164;
      sub_1001AFB98(v164, type metadata accessor for ValidatedAttestationOrAttestation);
      v136 = v115[2];
      v50 = __OFADD__(v136, 1);
      v137 = v136 + 1;
      if (v50)
      {
        goto LABEL_44;
      }

      v115[2] = v137;
    }

    v69 = v156;
    *(v156 + v76) = v115;
    v53 = v157;
    goto LABEL_42;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1001D24F0();
  __break(1u);
  return result;
}

uint64_t sub_100166C04(uint64_t a1)
{
  v2 = sub_100011AC0(&unk_100230130, &unk_1001E16A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2, v4);
  v6 = (&v13 - v5);
  v7 = *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 84);
  sub_10001208C(a1 + v7, v6, &unk_100230130, &unk_1001E16A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v11 = *v6;
    sub_100011F00(a1 + v7, &unk_100230130, &unk_1001E16A0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if ((EnumCaseMultiPayload - 5) >= 2 && EnumCaseMultiPayload != 3)
    {
      v10 = sub_1001D0200();
      (*(*(v10 - 8) + 8))(v6, v10);
    }

    return 0;
  }

  return v11;
}

uint64_t sub_100166D64(uint64_t a1, uint64_t a2, int *a3)
{
  v4[5] = a2;
  v4[6] = v3;
  v4[4] = a1;
  v6 = sub_1001D0DC0();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = sub_1001D20D0();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = type metadata accessor for ThimbledEvent();
  v4[13] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v17 = *(*(sub_100011AC0(&qword_100227DE0, &qword_1001D3B00) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v18 = sub_1001CFDD0();
  v4[19] = v18;
  v19 = *(v18 - 8);
  v4[20] = v19;
  v20 = *(v19 + 64) + 15;
  v4[21] = swift_task_alloc();
  v21 = sub_1001CFDA0();
  v4[22] = v21;
  v22 = *(v21 - 8);
  v4[23] = v22;
  v23 = *(v22 + 64) + 15;
  v4[24] = swift_task_alloc();
  v24 = sub_1001CFD60();
  v4[25] = v24;
  v25 = *(v24 - 8);
  v4[26] = v25;
  v26 = *(v25 + 64) + 15;
  v4[27] = swift_task_alloc();
  v30 = (a3 + *a3);
  v27 = a3[1];
  v28 = swift_task_alloc();
  v4[28] = v28;
  *v28 = v4;
  v28[1] = sub_100167100;

  return v30();
}

uint64_t sub_100167100()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_100167D74;
  }

  else
  {
    v3 = sub_100167214;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100167214()
{
  v127 = v0;
  v123 = v0[27];
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v120 = v0[21];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[6];
  v107 = v0[29];
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  (*(v2 + 16))(v1, v6 + *(*v6 + 320), v3);
  v7 = (v6 + *(*v6 + 224));
  v8 = v7[1];
  v112 = *v7;
  v9 = v6 + *(*v6 + 256);
  v113 = *(v9 + 160);
  v117 = *(v9 + 168);
  v10 = (v6 + *(*v6 + 192));
  v11 = v10[1];
  v114 = *v10;
  v12 = (v6 + *(*v6 + 208));
  v13 = v12[1];
  v108 = *v12;
  (*(v5 + 16))(v120, v6 + *(*v6 + 264), v4);
  sub_100011AC0(&qword_10022FE50, &unk_1001E1A50);
  v14 = sub_100011AC0(&qword_10022BCF0, &qword_1001DB808);
  v15 = *(*(v14 - 8) + 72);
  v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001D3AF0;
  v18 = (v17 + v16);
  v19 = *(v14 + 48);
  *v18 = 0;
  v121 = v13;

  v115 = v11;

  sub_1001428C0(v20, v107 != 0);
  sub_1001CFD20();
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v22 = v0[24];
  v110 = v0[21];
  v111 = v0[29];
  *&v18[v19] = v21;
  v23 = enum case for EventValue.int(_:);
  v24 = sub_1001CFEE0();
  v124 = *(v24 - 8);
  v109 = v17;
  v25 = *(v124 + 104);
  v25(&v18[v19], v23, v24);
  v26 = &v18[v15 + *(v14 + 48)];
  v18[v15] = 6;
  *v26 = sub_1001CFD70();
  v26[1] = v27;
  v28 = enum case for EventValue.string(_:);
  v29 = v26;
  v30 = v25;
  v25(v29, enum case for EventValue.string(_:), v24);
  v31 = &v18[2 * v15];
  v32 = *(v14 + 48);
  *v31 = 1;
  v33 = &v31[v32];
  *v33 = v112;
  v33[1] = v8;
  (v25)();
  v34 = &v18[3 * v15];
  v35 = *(v14 + 48);
  *v34 = 2;
  v36 = &v34[v35];
  *v36 = v113;
  v36[1] = v117;
  (v25)();
  v37 = &v18[4 * v15];
  v38 = *(v14 + 48);
  *v37 = 4;
  v39 = &v37[v38];
  *v39 = v114;
  v39[1] = v115;
  (v25)();
  v40 = &v18[5 * v15];
  v41 = &v40[*(v14 + 48)];
  *v40 = 5;
  *v41 = sub_1001CFDB0();
  v41[1] = v42;
  v25(v41, v28, v24);

  v43 = sub_1000D5B30(v109);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v126 = v43;
  v44 = v0[18];
  if (v111)
  {
    v118 = v30;
    v46 = v0[4];
    v45 = v0[5];
    sub_1001CFED0();
    v47 = *(v124 + 56);
    v47(v44, 0, 1, v24);
    sub_100016DC8(v44, 7);
    *v44 = v46;
    v44[1] = v45;
    v30 = v118;
    v118(v44, v28, v24);
    v47(v44, 0, 1, v24);

    v48 = sub_100016DC8(v44, 9);
    *v44 = sub_10012603C(v48);
    v44[1] = v49;
    v118(v44, v28, v24);
    v47(v44, 0, 1, v24);
    v50 = sub_100016DC8(v44, 8);
    sub_100142304(v50, 1);
    v51 = v121;
    if (!v121)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_1001CFED0();
  v47 = *(v124 + 56);
  v47(v44, 0, 1, v24);
  sub_100016DC8(v44, 7);
  v51 = v121;
  if (v121)
  {
LABEL_6:
    v52 = v0[18];
    *v52 = v108;
    v52[1] = v51;
    v30(v52, v28, v24);
    v47(v52, 0, 1, v24);
    sub_100016DC8(v52, 3);
  }

LABEL_7:
  v125 = v0[29];
  v54 = v0[26];
  v53 = v0[27];
  v56 = v0[24];
  v55 = v0[25];
  v58 = v0[22];
  v57 = v0[23];
  v60 = v0[16];
  v59 = v0[17];
  v61 = v0[14];
  v119 = v59;
  v122 = v0[15];
  v116 = v0[13];
  v62 = v0[6];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v57 + 8))(v56, v58);
  (*(v54 + 8))(v53, v55);
  v63 = v126;
  v64 = *(*v62 + 288);
  v61[3] = &type metadata for KDataSendMetric;
  v61[4] = sub_1001AF3F0();
  v65 = swift_allocObject();
  *v61 = v65;
  v65[2] = 0xD000000000000015;
  v65[3] = 0x80000001001E75B0;
  v65[4] = v63;
  v65[5] = 0;
  v65[6] = 0;
  swift_storeEnumTagMultiPayload();
  sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  sub_1001D1BC0();
  v66 = (*(v60 + 8))(v119, v122);
  if (v125)
  {
    v67 = 1;
  }

  else
  {
    v78 = v0[11];
    v77 = v0[12];
    v79 = v0[10];
    v81 = v0[5];
    v80 = v0[6];
    v82 = v0[4];
    v83 = *(*v80 + 184);
    v84 = *(*v80 + 152);
    sub_1001D20F0();
    sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
    sub_1001D2500();
    sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
    sub_1001D2110();
    (*(v78 + 8))(v77, v79);
    v85 = v0[2];
    v86 = v0[3];
    v87 = (v80 + *(*v80 + 144));
    os_unfair_lock_lock(v87);
    v88 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
    v89 = sub_1001688F4(v87 + *(v88 + 28), v82, v81, v85, v86, v80);
    os_unfair_lock_unlock(v87);
    if (v107)
    {
      return;
    }

    v90 = v0[6];
    v91 = *(*v90 + 296);
    (*(v0[8] + 16))(v0[9], v90 + *(*v90 + 304), v0[7]);
    v92 = sub_1001D0DE0();
    v93 = sub_1001D1EA0();
    if (sub_1001D1ED0())
    {
      v94 = v0[9];
      v95 = swift_slowAlloc();
      *v95 = 0;
      v96 = sub_1001D0DB0();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v92, v93, v96, "SentKeyToNode", "", v95, 2u);
    }

    v98 = v0[8];
    v97 = v0[9];
    v99 = v0[7];

    v66 = (*(v98 + 8))(v97, v99);
    if (v89)
    {
      v100 = *(*v0[6] + 272);

      v101 = sub_1001D0E50();
      v102 = sub_1001D1E00();

      v103 = os_log_type_enabled(v101, v102);
      if (v103)
      {
        v104 = v0[6];
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v126 = v106;
        *v105 = 136315138;
        *(v105 + 4) = sub_1000954E0(*(v104 + *(*v104 + 280)), *(v104 + *(*v104 + 280) + 8), &v126);
        _os_log_impl(&_mh_execute_header, v101, v102, "%s First key sent to node.", v105, 0xCu);
        sub_100011CF0(v106);
      }

      sub_100142304(v103, 0);

      goto LABEL_10;
    }

    v67 = 0;
  }

  sub_100142304(v66, v67);
LABEL_10:
  v68 = v0[27];
  v69 = v0[24];
  v70 = v0[21];
  v72 = v0[17];
  v71 = v0[18];
  v73 = v0[14];
  v74 = v0[12];
  v75 = v0[9];

  v76 = v0[1];

  v76();
}

uint64_t sub_100167D74()
{
  v125 = v0;
  v1 = v0[29];
  v121 = v0[27];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v119 = v0[21];
  v5 = v0[20];
  v116 = v0[19];
  v6 = v0[6];
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  (*(v3 + 16))(v2, v6 + *(*v6 + 320), v4);
  v7 = (v6 + *(*v6 + 224));
  v8 = v7[1];
  v108 = *v7;
  v9 = v6 + *(*v6 + 256);
  v110 = *(v9 + 160);
  v113 = *(v9 + 168);
  v10 = (v6 + *(*v6 + 192));
  v11 = v10[1];
  v111 = *v10;
  v12 = (v6 + *(*v6 + 208));
  v13 = v12[1];
  v104 = *v12;
  (*(v5 + 16))(v119, v6 + *(*v6 + 264), v116);
  sub_100011AC0(&qword_10022FE50, &unk_1001E1A50);
  v14 = sub_100011AC0(&qword_10022BCF0, &qword_1001DB808);
  v15 = *(*(v14 - 8) + 72);
  v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001D3AF0;
  v18 = (v17 + v16);
  v19 = *(v14 + 48);
  *v18 = 0;
  v117 = v13;

  v109 = v8;

  v120 = v1;
  sub_1001428C0(v1, v1 != 0);
  result = sub_1001CFD20();
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v22 = v0[24];
  v106 = v0[21];
  v107 = v0[29];
  *&v18[v19] = v21;
  v23 = enum case for EventValue.int(_:);
  v24 = sub_1001CFEE0();
  v122 = *(v24 - 8);
  v105 = v17;
  v25 = *(v122 + 104);
  v25(&v18[v19], v23, v24);
  v26 = &v18[v15 + *(v14 + 48)];
  v18[v15] = 6;
  *v26 = sub_1001CFD70();
  v26[1] = v27;
  v28 = enum case for EventValue.string(_:);
  v29 = v26;
  v30 = v25;
  v25(v29, enum case for EventValue.string(_:), v24);
  v31 = &v18[2 * v15];
  v32 = *(v14 + 48);
  *v31 = 1;
  v33 = &v31[v32];
  *v33 = v108;
  v33[1] = v109;
  (v25)();
  v34 = &v18[3 * v15];
  v35 = *(v14 + 48);
  *v34 = 2;
  v36 = &v34[v35];
  *v36 = v110;
  v36[1] = v113;
  (v25)();
  v37 = &v18[4 * v15];
  v38 = *(v14 + 48);
  *v37 = 4;
  v39 = &v37[v38];
  *v39 = v111;
  v39[1] = v11;
  (v25)();
  v40 = &v18[5 * v15];
  v41 = &v40[*(v14 + 48)];
  *v40 = 5;
  *v41 = sub_1001CFDB0();
  v41[1] = v42;
  v25(v41, v28, v24);

  v43 = sub_1000D5B30(v105);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v124 = v43;
  v44 = v0[18];
  if (v107)
  {
    v114 = v30;
    v46 = v0[4];
    v45 = v0[5];
    sub_1001CFED0();
    v47 = *(v122 + 56);
    v47(v44, 0, 1, v24);
    sub_100016DC8(v44, 7);
    *v44 = v46;
    v44[1] = v45;
    v30 = v114;
    v114(v44, v28, v24);
    v47(v44, 0, 1, v24);

    sub_100016DC8(v44, 9);
    *v44 = sub_10012603C(v120);
    v44[1] = v48;
    v114(v44, v28, v24);
    v47(v44, 0, 1, v24);
    sub_100016DC8(v44, 8);
    sub_100142304(v120, 1);
    v49 = v117;
    if (!v117)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_1001CFED0();
  v47 = *(v122 + 56);
  v47(v44, 0, 1, v24);
  sub_100016DC8(v44, 7);
  v49 = v117;
  if (v117)
  {
LABEL_6:
    v50 = v0[18];
    *v50 = v104;
    v50[1] = v49;
    v30(v50, v28, v24);
    v47(v50, 0, 1, v24);
    sub_100016DC8(v50, 3);
  }

LABEL_7:
  v123 = v0[29];
  v52 = v0[26];
  v51 = v0[27];
  v54 = v0[24];
  v53 = v0[25];
  v56 = v0[22];
  v55 = v0[23];
  v58 = v0[16];
  v57 = v0[17];
  v59 = v0[14];
  v115 = v57;
  v118 = v0[15];
  v112 = v0[13];
  v60 = v0[6];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v55 + 8))(v54, v56);
  (*(v52 + 8))(v51, v53);
  v61 = v124;
  v62 = *(*v60 + 288);
  v59[3] = &type metadata for KDataSendMetric;
  v59[4] = sub_1001AF3F0();
  v63 = swift_allocObject();
  *v59 = v63;
  v63[2] = 0xD000000000000015;
  v63[3] = 0x80000001001E75B0;
  v63[4] = v61;
  v63[5] = 0;
  v63[6] = 0;
  swift_storeEnumTagMultiPayload();
  sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  sub_1001D1BC0();
  (*(v58 + 8))(v115, v118);
  if (v123)
  {
    v64 = v120;
    v65 = 1;
  }

  else
  {
    v76 = v0[11];
    v75 = v0[12];
    v77 = v0[10];
    v79 = v0[5];
    v78 = v0[6];
    v80 = v0[4];
    v81 = *(*v78 + 184);
    v82 = *(*v78 + 152);
    sub_1001D20F0();
    sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
    sub_1001D2500();
    sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
    sub_1001D2110();
    (*(v76 + 8))(v75, v77);
    v83 = v0[2];
    v84 = v0[3];
    v85 = (v78 + *(*v78 + 144));
    os_unfair_lock_lock(v85);
    v86 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
    v87 = sub_1001688F4(v85 + *(v86 + 28), v80, v79, v83, v84, v78);
    os_unfair_lock_unlock(v85);
    v88 = v0[6];
    v89 = *(*v88 + 296);
    (*(v0[8] + 16))(v0[9], v88 + *(*v88 + 304), v0[7]);
    v90 = sub_1001D0DE0();
    v91 = sub_1001D1EA0();
    if (sub_1001D1ED0())
    {
      v92 = v0[9];
      v93 = swift_slowAlloc();
      *v93 = 0;
      v94 = sub_1001D0DB0();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v90, v91, v94, "SentKeyToNode", "", v93, 2u);
    }

    v96 = v0[8];
    v95 = v0[9];
    v97 = v0[7];

    (*(v96 + 8))(v95, v97);
    if (v87)
    {
      v98 = *(*v0[6] + 272);

      v99 = sub_1001D0E50();
      v100 = sub_1001D1E00();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = v0[6];
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v124 = v103;
        *v102 = 136315138;
        *(v102 + 4) = sub_1000954E0(*(v101 + *(*v101 + 280)), *(v101 + *(*v101 + 280) + 8), &v124);
        _os_log_impl(&_mh_execute_header, v99, v100, "%s First key sent to node.", v102, 0xCu);
        sub_100011CF0(v103);
      }

      sub_100142304(v120, 0);

      goto LABEL_10;
    }

    v64 = v120;
    v65 = 0;
  }

  sub_100142304(v64, v65);
LABEL_10:
  v66 = v0[27];
  v67 = v0[24];
  v68 = v0[21];
  v70 = v0[17];
  v69 = v0[18];
  v71 = v0[14];
  v72 = v0[12];
  v73 = v0[9];

  v74 = v0[1];

  return v74();
}

uint64_t sub_1001688F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = a6;
  v71 = a4;
  v72 = a5;
  v9 = sub_1001D0DC0();
  v69 = *(v9 - 8);
  v70 = v9;
  v10 = *(v69 + 64);
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v65 - v16;
  v18 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v19 = *(v18 + 144);
  v20 = *(a1 + v19);
  if (!*(v20 + 16))
  {
    return 0;
  }

  v21 = v18;
  v22 = sub_100006028(a2, a3);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

  v24 = (*(v20 + 56) + (v22 << 7));
  v25 = v24[3];
  v27 = *v24;
  v26 = v24[1];
  v80[2] = v24[2];
  v80[3] = v25;
  v80[0] = v27;
  v80[1] = v26;
  v28 = v24[4];
  v29 = v24[5];
  v30 = v24[6];
  *(v81 + 9) = *(v24 + 105);
  v80[5] = v29;
  v81[0] = v30;
  v80[4] = v28;
  v31 = v27;
  v32 = v24[2];
  v82 = v24[1];
  v83 = v32;
  v33 = v24[3];
  v34 = v24[4];
  *(v87 + 9) = *(v24 + 105);
  v35 = v24[6];
  v86 = v24[5];
  v87[0] = v35;
  v84 = v33;
  v85 = v34;
  if (v31 >> 62 != 3 || v31 != 0xC000000000000008)
  {
    v88 = v31;
    v93 = v86;
    v94[0] = v87[0];
    *(v94 + 9) = *(v87 + 9);
    v89 = v82;
    v90 = v83;
    v91 = v84;
    v92 = v85;
    sub_10001208C(v80, &v73, &qword_100230150, &unk_1001D3700);
    v43 = &v88;
LABEL_16:
    sub_100011F00(v43, &qword_100230150, &unk_1001D3700);
    return 0;
  }

  v92 = v85;
  v93 = v86;
  v94[0] = v87[0];
  *(v94 + 9) = *(v87 + 9);
  v67 = xmmword_1001E13A0;
  v88 = xmmword_1001E13A0;
  v89 = v82;
  v90 = v83;
  v91 = v84;

  sub_10001208C(v80, &v73, &qword_100230150, &unk_1001D3700);
  sub_10001208C(&v88, &v73, &qword_100230150, &unk_1001D3700);
  v36 = *(a1 + v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v73 = *(a1 + v19);
  sub_10001B1A4(&v88, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + v19) = v73;
  v39 = a1 + *(v21 + 120);
  if (*(v39 + 24))
  {
    v40 = 1;
    v42 = v71;
    v41 = v72;
    goto LABEL_10;
  }

  v44 = *(v39 + 16);
  v45 = __OFADD__(v44, 1);
  v40 = v44 + 1;
  if (!v45)
  {
    v42 = *v39;
    v41 = *(v39 + 8);
LABEL_10:
    *v39 = v42;
    *(v39 + 8) = v41;
    *(v39 + 16) = v40;
    *(v39 + 24) = 0;
    v46 = (a1 + *(v21 + 100));
    v47 = v46[3];
    if ((v47 >> 61) - 1 >= 4 && !(v47 >> 61))
    {
      v48 = *v46;
      v71 = v46[1];
      v66 = v46[2];
      v49 = *(*v68 + 296);
      v50 = v68 + *(*v68 + 304);
      v65 = *(v69 + 16);
      v65(v17, v50, v70);
      v72 = v48;

      v51 = sub_1001D0DE0();
      v52 = sub_1001D1E90();
      if (sub_1001D1ED0())
      {
        v53 = swift_slowAlloc();
        LODWORD(v68) = v52;
        v54 = v53;
        *v53 = 0;
        v55 = sub_1001D0DB0();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, v68, v55, "SentKey", "", v54, 2u);
      }

      v56 = v70;
      v65(v14, v17, v70);
      v57 = sub_1001D0E30();
      v58 = *(v57 + 48);
      v59 = *(v57 + 52);
      swift_allocObject();
      v60 = 1;
      v61 = sub_1001D0E20();
      (*(v69 + 8))(v17, v56);
      v62 = v72;
      sub_1001AF240(v72, v71, v66, v47);
      *(v46 + 1) = xmmword_1001E13B0;
      v63 = v84;
      v77 = v85;
      v78 = v86;
      v79[0] = v87[0];
      *(v79 + 9) = *(v87 + 9);
      v64 = v83;
      v73 = v67;
      v74 = v82;
      *v46 = v62;
      v46[1] = v61;
      v75 = v64;
      v76 = v63;
      sub_100011F00(&v73, &qword_100230150, &unk_1001D3700);
      return v60;
    }

    v77 = v85;
    v78 = v86;
    v79[0] = v87[0];
    *(v79 + 9) = *(v87 + 9);
    v73 = v67;
    v74 = v82;
    v75 = v83;
    v76 = v84;
    v43 = &v73;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_100168E14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001D0E00();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001D0DC0();
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  __chkstk_darwin(v11, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001D0F00();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (v3 + *(*v3 + 144));
  os_unfair_lock_lock(v22);
  v23 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
  sub_100169284(v22 + *(v23 + 28), a1, a2, v3, &v38);
  os_unfair_lock_unlock(v22);
  if ((~(v38 & v39) & 0xF000000000000007) != 0)
  {
    if ((v39 & 0x8000000000000000) == 0)
    {
      (*(v17 + 104))(v21, enum case for NWActivity.CompletionReason.success(_:), v16);
      sub_1001D0F20();
      sub_100011F00(&v38, &qword_10022FE28, &qword_1001E1A28);
      (*(v17 + 8))(v21, v16);
      return;
    }

    v33 = v40;
    v24 = v41;
    (*(v17 + 104))(v21, enum case for NWActivity.CompletionReason.success(_:), v16);
    sub_1001D0F20();
    (*(v17 + 8))(v21, v16);
    v25 = v3 + *(*v3 + 296);
    v26 = sub_1001D0DE0();
    sub_1001D0E10();
    v27 = sub_1001D1E80();
    if ((sub_1001D1ED0() & 1) == 0)
    {
      goto LABEL_16;
    }

    if ((v24 & 1) == 0)
    {
      v28 = v33;
      if (v33)
      {
LABEL_12:

        sub_1001D0E40();

        v29 = v34;
        if ((*(v34 + 88))(v10, v6) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v30 = "[Error] Interval already ended";
        }

        else
        {
          (*(v29 + 8))(v10, v6);
          v30 = "";
        }

        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = sub_1001D0DB0();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v27, v32, v28, v30, v31, 2u);

LABEL_16:

        sub_100011F00(&v38, &qword_10022FE28, &qword_1001E1A28);
        (*(v35 + 8))(v15, v36);
        return;
      }

      __break(1u);
    }

    if (v33 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v33 & 0xFFFFF800) == 0xD800)
      {
LABEL_20:
        __break(1u);
        return;
      }

      if (v33 >> 16 <= 0x10)
      {
        v28 = &v37;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_20;
  }
}

unint64_t sub_100169284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v95 = a4;
  v9 = sub_1001D0DC0();
  v97 = *(v9 - 8);
  v98 = v9;
  v10 = *(v97 + 64);
  v12 = __chkstk_darwin(v9, v11);
  v96 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12, v14);
  v17 = &v87 - v16;
  __chkstk_darwin(v15, v18);
  v94 = &v87 - v19;
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v21 = *(result + 144);
  v22 = *(a1 + v21);
  v23 = *(v22 + 16);
  if (!v23)
  {
    goto LABEL_14;
  }

  v24 = result;
  v92 = a2;
  v93 = a3;
  result = sub_100006028(a2, a3);
  if ((v25 & 1) == 0)
  {
LABEL_13:
    v23 = 0;
LABEL_14:
    v70 = 0;
    v69 = 0;
    v45 = 0xF000000000000007;
    v68 = 0xF000000000000007;
    goto LABEL_15;
  }

  v26 = (*(v22 + 56) + (result << 7));
  v27 = v26[3];
  v29 = *v26;
  v28 = v26[1];
  v106[2] = v26[2];
  v106[3] = v27;
  v106[0] = v29;
  v106[1] = v28;
  v30 = v26[4];
  v31 = v26[5];
  v32 = v26[6];
  *(v107 + 9) = *(v26 + 105);
  v106[5] = v31;
  v107[0] = v32;
  v106[4] = v30;
  v33 = v29;
  v34 = v26[2];
  v108 = v26[1];
  v109 = v34;
  v35 = v26[3];
  v36 = v26[4];
  *(v113 + 9) = *(v26 + 105);
  v37 = v26[6];
  v112 = v26[5];
  v113[0] = v37;
  v110 = v35;
  v111 = v36;
  if (v33 >> 62 != 3 || v33 != 0xC000000000000009)
  {
    v114 = v33;
    v119 = v112;
    v120[0] = v113[0];
    *(v120 + 9) = *(v113 + 9);
    v115 = v108;
    v116 = v109;
    v117 = v110;
    v118 = v111;
    sub_10001208C(v106, &v99, &qword_100230150, &unk_1001D3700);
    v71 = &v114;
LABEL_12:
    result = sub_100011F00(v71, &qword_100230150, &unk_1001D3700);
    goto LABEL_13;
  }

  v118 = v111;
  v119 = v112;
  v120[0] = v113[0];
  *(v120 + 9) = *(v113 + 9);
  v91 = xmmword_1001E13C0;
  v114 = xmmword_1001E13C0;
  v115 = v108;
  v116 = v109;
  v117 = v110;
  v38 = v93;

  sub_10001208C(v106, &v99, &qword_100230150, &unk_1001D3700);
  sub_10001208C(&v114, &v99, &qword_100230150, &unk_1001D3700);
  v39 = *(a1 + v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v99 = *(a1 + v21);
  sub_10001B1A4(&v114, v92, v38, isUniquelyReferenced_nonNull_native);

  *(a1 + v21) = v99;
  v41 = (a1 + *(v24 + 100));
  v42 = v41[3];
  v43 = v42 >> 61;
  if ((v42 >> 61) > 2)
  {
LABEL_20:
    v103 = v111;
    v104 = v112;
    v105[0] = v113[0];
    *(v105 + 9) = *(v113 + 9);
    v99 = v91;
    v100 = v108;
    v101 = v109;
    v102 = v110;
    v71 = &v99;
    goto LABEL_12;
  }

  v45 = *v41;
  v44 = v41[1];
  v46 = v41[2];
  if (v43)
  {
    if (v43 == 1)
    {
      v88 = v41[2];
      v89 = v42;
      v47 = v94;
      v48 = *(*v95 + 296);
      v49 = v44;
      v50 = v95 + *(*v95 + 304);
      v87 = *(v97 + 16);
      v87(v94, v50, v98);

      v90 = v49;
      v51 = v47;

      v52 = sub_1001D0DE0();
      v53 = sub_1001D1E90();
      if (sub_1001D1ED0())
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        LODWORD(v95) = v53;
        v55 = v54;
        v56 = sub_1001D0DB0();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v52, v95, v56, "NodeResponse", "", v55, 2u);
      }

      v57 = v51;
      v58 = v51;
      v59 = v98;
      v87(v96, v57, v98);
      v60 = sub_1001D0E30();
      v61 = *(v60 + 48);
      v62 = *(v60 + 52);
      swift_allocObject();
      v63 = sub_1001D0E20();
      (*(v97 + 8))(v58, v59);
      v64 = v93;

      v65 = v90;
      sub_1001AF240(v45, v90, v88, v89);
      v66 = v110;
      v103 = v111;
      v104 = v112;
      v105[0] = v113[0];
      *(v105 + 9) = *(v113 + 9);
      v67 = v109;
      v99 = v91;
      v100 = v108;
      *v41 = v92;
      v41[1] = v64;
      v41[2] = 0;
      v41[3] = v63 | 0x4000000000000000;
      v68 = v65 | 0x8000000000000000;
      v101 = v67;
      v102 = v66;
      result = sub_100011F00(&v99, &qword_100230150, &unk_1001D3700);
      v69 = 2;
      v23 = "SentKey";
      v70 = 7;
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v88 = v41[2];
  v89 = v42;
  v90 = v44;
  v72 = *(*v95 + 296);
  v73 = v95 + *(*v95 + 304);
  v94 = *(v97 + 16);
  (v94)(v17, v73, v98);

  v74 = sub_1001D0DE0();
  v75 = sub_1001D1E90();
  if (sub_1001D1ED0())
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    LODWORD(v95) = v75;
    v77 = v76;
    v78 = sub_1001D0DB0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v74, v95, v78, "NodeResponse", "", v77, 2u);
  }

  v79 = v98;
  (v94)(v96, v17, v98);
  v80 = sub_1001D0E30();
  v81 = *(v80 + 48);
  v82 = *(v80 + 52);
  swift_allocObject();
  v83 = sub_1001D0E20();
  (*(v97 + 8))(v17, v79);
  v84 = v93;

  sub_1001AF240(v45, v90, v88, v89);
  v85 = v110;
  v103 = v111;
  v104 = v112;
  v105[0] = v113[0];
  *(v105 + 9) = *(v113 + 9);
  v86 = v109;
  v99 = v91;
  v100 = v108;
  *v41 = v92;
  v41[1] = v84;
  v41[2] = 0;
  v41[3] = v83 | 0x4000000000000000;
  v101 = v86;
  v102 = v85;
  result = sub_100011F00(&v99, &qword_100230150, &unk_1001D3700);
  v68 = 0;
  v23 = 0;
  v70 = 0;
  v69 = 0;
LABEL_15:
  *a5 = v45;
  *(a5 + 8) = v68;
  *(a5 + 16) = v23;
  *(a5 + 24) = v70;
  *(a5 + 32) = v69;
  return result;
}

uint64_t sub_1001699DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v114 = a3;
  v105 = a2;
  v104 = a1;
  v117 = type metadata accessor for ThimbledEvent();
  v5 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117, v6);
  v119 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v116 = *(v118 - 8);
  v8 = *(v116 + 64);
  __chkstk_darwin(v118, v9);
  v115 = &v94 - v10;
  v11 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v111 = (&v94 - v14);
  v15 = sub_1001CFDD0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1001CFDA0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21, v24);
  v26 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1001CFD60();
  v107 = *(v108 - 8);
  v27 = *(v107 + 64);
  __chkstk_darwin(v108, v28);
  v30 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  v31 = *v4;
  v32 = &v4[*(*v4 + 192)];
  v34 = *v32;
  v33 = v32[1];
  v121 = v34;
  v123 = v33;
  v35 = *(v31 + 320);
  v109 = v22;
  v110 = v21;
  v36 = *(v22 + 16);
  v120 = v26;
  v36(v26, &v4[v35], v21);
  v37 = *v4;
  v38 = &v4[*(*v4 + 224)];
  v39 = v38[1];
  v98 = *v38;
  v40 = &v4[v37[32]];
  v42 = *(v40 + 20);
  v41 = *(v40 + 21);
  v100 = v42;
  v102 = v41;
  v43 = &v4[v37[26]];
  v44 = v43[1];
  v95 = *v43;
  v45 = v37[33];
  v112 = v16;
  v113 = v15;
  v46 = *(v16 + 16);
  v122 = v20;
  v46(v20, &v4[v45], v15);
  sub_100011AC0(&qword_10022FE30, &unk_1001E1A30);
  v47 = sub_100011AC0(&qword_10022BCE0, &unk_1001DB7E8);
  v48 = *(*(v47 - 8) + 72);
  v49 = (*(*(v47 - 8) + 80) + 32) & ~*(*(v47 - 8) + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1001D3ED0;
  v101 = v50;
  v51 = v50 + v49;
  v52 = *(v47 + 48);
  *(v50 + v49) = 0;
  v103 = v44;

  v99 = v39;

  v106 = v30;
  result = sub_1001CFD20();
  if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v54 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v54 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v97 = v4;
  *(v51 + v52) = v54;
  v55 = enum case for EventValue.int(_:);
  v56 = sub_1001CFEE0();
  v96 = *(v56 - 8);
  v57 = *(v96 + 104);
  (v57)(v51 + v52, v55, v56);
  v58 = (v51 + v48 + *(v47 + 48));
  *(v51 + v48) = 4;
  v59 = v123;
  *v58 = v121;
  v58[1] = v59;
  v60 = enum case for EventValue.string(_:);
  v57();
  v61 = (v51 + 2 * v48);
  v62 = &v61[*(v47 + 48)];
  *v61 = 6;

  *v62 = sub_1001CFD70();
  v62[1] = v63;
  (v57)(v62, v60, v56);
  v64 = (v51 + 3 * v48);
  v65 = *(v47 + 48);
  *v64 = 1;
  v66 = &v64[v65];
  v67 = v99;
  *v66 = v98;
  v66[1] = v67;
  v57();
  v68 = (v51 + 4 * v48);
  v69 = *(v47 + 48);
  *v68 = 2;
  v70 = &v68[v69];
  v71 = v102;
  *v70 = v100;
  v70[1] = v71;
  v57();
  v72 = (v51 + 5 * v48);
  v73 = &v72[*(v47 + 48)];
  *v72 = 5;
  *v73 = sub_1001CFDB0();
  v73[1] = v74;
  (v57)(v73, v60, v56);
  v75 = (v51 + 6 * v48);
  v76 = v96;
  v77 = *(v47 + 48);
  *v75 = 9;
  v78 = &v75[v77];
  v79 = v105;
  *v78 = v104;
  v78[1] = v79;
  v57();

  v80 = sub_1000D5D18(v101);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v126 = v80;
  v81 = v111;
  v82 = v103;
  if (v103)
  {
    *v111 = v95;
    v81[1] = v82;
    (v57)(v81, v60, v56);
    (*(v76 + 56))(v81, 0, 1, v56);
    sub_10001705C(v81, 3);
  }

  v83 = v118;
  if (v114)
  {
    swift_getErrorValue();
    v84 = v124;
    v85 = v125;
    swift_errorRetain();
    Error.telemetryString.getter(v84, v85, v81);
    v86 = *(v76 + 56);
    v86(v81, 0, 1, v56);
    sub_10001705C(v81, 8);
    sub_1001CFED0();
    v86(v81, 0, 1, v56);
    sub_10001705C(v81, 7);
  }

  else
  {
    sub_1001CFED0();
    (*(v76 + 56))(v81, 0, 1, v56);
    sub_10001705C(v81, 7);
  }

  v87 = v97;
  v88 = v119;
  (*(v112 + 8))(v122, v113);
  (*(v109 + 8))(v120, v110);
  (*(v107 + 8))(v106, v108);
  v89 = v126;
  v90 = *(*v87 + 288);
  v88[3] = &type metadata for TrustedEndpointResponseMetric;
  v88[4] = sub_1001AF304();
  v91 = swift_allocObject();
  *v88 = v91;
  v91[2] = 0xD000000000000015;
  v91[3] = 0x80000001001E7590;
  v92 = v121;
  v91[4] = v89;
  v91[5] = v92;
  v91[6] = v123;
  swift_storeEnumTagMultiPayload();
  sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  v93 = v115;
  sub_1001D1BC0();
  return (*(v116 + 8))(v93, v83);
}

void sub_10016A3F4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001D0E00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1001D0DC0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = (v2 + *(*v2 + 144));
  os_unfair_lock_lock(v17);
  v18 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
  v19 = sub_10016A6BC(v17 + *(v18 + 28), a1, a2);
  os_unfair_lock_unlock(v17);
  if (v19)
  {
    v20 = v2 + *(*v2 + 296);
    v21 = sub_1001D0DE0();
    sub_1001D0E10();
    v22 = sub_1001D1E80();
    if (sub_1001D1ED0())
    {

      sub_1001D0E40();

      if ((*(v6 + 88))(v10, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v23 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v10, v5);
        v23 = "";
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = sub_1001D0DB0();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v22, v25, "NodeResponse", v23, v24, 2u);
    }

    (*(v12 + 8))(v16, v11);
  }
}

uint64_t sub_10016A6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v7 = *(v6 + 144);
  v8 = *(a1 + v7);
  if (*(v8 + 16))
  {
    v9 = v6;
    v10 = sub_100006028(a2, a3);
    if (v11)
    {
      v12 = (*(v8 + 56) + (v10 << 7));
      v13 = v12[3];
      v15 = *v12;
      v14 = v12[1];
      v40[2] = v12[2];
      v40[3] = v13;
      v40[0] = v15;
      v40[1] = v14;
      v16 = v12[4];
      v17 = v12[5];
      v18 = v12[6];
      *(v41 + 9) = *(v12 + 105);
      v40[5] = v17;
      v41[0] = v18;
      v40[4] = v16;
      v19 = v15;
      v20 = v12[2];
      v42 = v12[1];
      v43 = v20;
      v21 = v12[3];
      v22 = v12[4];
      *(v47 + 9) = *(v12 + 105);
      v23 = v12[6];
      v46 = v12[5];
      v47[0] = v23;
      v44 = v21;
      v45 = v22;
      if (v19 >> 62 == 1)
      {
        v24 = v19 & 1 | 0x8000000000000000;
        *&v48 = v24;
        *(&v48 + 1) = *(&v19 + 1);
        v55 = *(&v19 + 1);
        v53 = v46;
        v54[0] = v47[0];
        *(v54 + 9) = *(v47 + 9);
        v49 = v42;
        v50 = v43;
        v51 = v44;
        v52 = v45;

        sub_10001208C(v40, &v32, &qword_100230150, &unk_1001D3700);
        sub_10001208C(&v48, &v32, &qword_100230150, &unk_1001D3700);
        v25 = *(a1 + v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = *(a1 + v7);
        sub_10001B1A4(&v48, a2, a3, isUniquelyReferenced_nonNull_native);

        *(a1 + v7) = v32;
        v27 = a1 + *(v9 + 100);
        v28 = *(v27 + 24);
        if (v28 >> 61 == 2)
        {
          *(v27 + 24) = 0x6000000000000000;
          v29 = v28 & 0x1FFFFFFFFFFFFFFFLL;
          v32 = v24;
          v33 = v55;
          v38 = v46;
          v39[0] = v47[0];
          *(v39 + 9) = *(v47 + 9);
          v34 = v42;
          v35 = v43;
          v36 = v44;
          v37 = v45;
          sub_100011F00(&v32, &qword_100230150, &unk_1001D3700);
          return v29;
        }

        v32 = v24;
        v33 = v55;
        v38 = v46;
        v39[0] = v47[0];
        *(v39 + 9) = *(v47 + 9);
        v34 = v42;
        v35 = v43;
        v36 = v44;
        v37 = v45;
        v31 = &v32;
      }

      else
      {
        v48 = v19;
        v53 = v46;
        v54[0] = v47[0];
        *(v54 + 9) = *(v47 + 9);
        v49 = v42;
        v50 = v43;
        v51 = v44;
        v52 = v45;
        sub_10001208C(v40, &v32, &qword_100230150, &unk_1001D3700);
        v31 = &v48;
      }

      sub_100011F00(v31, &qword_100230150, &unk_1001D3700);
    }
  }

  return 0;
}

void sub_10016A96C(uint64_t a1)
{
  v3 = sub_1001D0E00();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  v6 = __chkstk_darwin(v3, v5);
  v53 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v8);
  v10 = v52 - v9;
  v11 = sub_1001D0F00();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1001D0DC0();
  v58 = *(v17 - 8);
  v59 = v17;
  v18 = *(v58 + 64);
  v20 = __chkstk_darwin(v17, v19);
  v56 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v22);
  v57 = v52 - v23;
  v24 = (v1 + *(*v1 + 144));
  os_unfair_lock_lock(v24);
  v25 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
  sub_10016B034(v24 + *(v25 + 28), a1, &v62);
  v26 = v62;
  v52[1] = v63;
  os_unfair_lock_unlock(v24);
  v27 = v62;
  if ((~v62 & 0xF000000000000007) != 0)
  {
    if (!(v62 >> 62))
    {
      (*(v12 + 104))(v16, enum case for NWActivity.CompletionReason.failure(_:), v11);
      sub_1001D0F20();
      sub_100011F00(&v62, &qword_10022FE60, &qword_1001E1A60);
      (*(v12 + 8))(v16, v11);
      return;
    }

    v52[0] = v26;
    v28 = v63;
    if (v62 >> 62 == 1)
    {
      v29 = v64;
      v30 = v66;
      (*(v12 + 104))(v16, enum case for NWActivity.CompletionReason.failure(_:), v11);
      sub_1001D0F20();
      (*(v12 + 8))(v16, v11);
      v31 = v1 + *(*v1 + 296);
      v32 = sub_1001D0DE0();
      v33 = v56;
      sub_1001D0E10();
      v34 = sub_1001D1E80();
      if ((sub_1001D1ED0() & 1) == 0)
      {
LABEL_28:

        sub_100011F00(&v62, &qword_10022FE60, &qword_1001E1A60);
        (*(v58 + 8))(v33, v59);
        return;
      }

      v27 = v28;
      if (v30)
      {
        if (!(v29 >> 32))
        {
          v36 = v54;
          v35 = v55;
          v37 = v53;
          if ((v29 & 0xFFFFF800) == 0xD800)
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          if (v29 >> 16 <= 0x10)
          {
            v29 = &v61;
            goto LABEL_18;
          }

          goto LABEL_36;
        }
      }

      else
      {
        if (v29)
        {
          v36 = v54;
          v35 = v55;
          v37 = v53;
LABEL_18:

          sub_1001D0E40();

          if ((*(v36 + 88))(v37, v35) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v43 = "[Error] Interval already ended";
          }

          else
          {
            (*(v36 + 8))(v37, v35);
            v43 = "";
          }

          v47 = swift_slowAlloc();
          *v47 = 0;
          v48 = sub_1001D0DB0();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, v34, v48, v29, v43, v47, 2u);

          goto LABEL_28;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_34;
    }

    v38 = v65;
    v39 = v1 + *(*v1 + 296);
    v40 = sub_1001D0DE0();
    v41 = v57;
    sub_1001D0E10();
    LODWORD(v56) = sub_1001D1E80();
    if ((sub_1001D1ED0() & 1) == 0)
    {

      sub_100011F00(&v62, &qword_10022FE60, &qword_1001E1A60);
      (*(v58 + 8))(v41, v59);
      return;
    }

    if (v38)
    {
      if (HIDWORD(v28))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if ((v28 & 0xFFFFF800) == 0xD800)
      {
LABEL_39:
        __break(1u);
        os_unfair_lock_unlock(v27);
        __break(1u);
        return;
      }

      if (v28 >> 16 > 0x10)
      {
        goto LABEL_37;
      }

      v42 = &v60;
    }

    else
    {
      if (!v28)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v42 = v28;
    }

    sub_1001AF444(v52[0]);
    sub_1001D0E40();
    sub_100011F00(&v62, &qword_10022FE60, &qword_1001E1A60);
    v45 = v54;
    v44 = v55;
    if ((*(v54 + 88))(v10, v55) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v46 = "[Error] Interval already ended";
    }

    else
    {
      (*(v45 + 8))(v10, v44);
      v46 = "";
    }

    v49 = v57;
    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = sub_1001D0DB0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, v56, v51, v42, v46, v50, 2u);

    sub_100011F00(&v62, &qword_10022FE60, &qword_1001E1A60);
    (*(v58 + 8))(v49, v59);
  }
}

const char *sub_10016B034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_errorRetain();
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  if (swift_dynamicCast())
  {
    if (*(v17 + 16))
    {
      a2 = *(v17 + 32);
      swift_errorRetain();
    }

    else
    {
      sub_100089BE4();
      a2 = swift_allocError();
      *v6 = v15;
      *(v6 + 1) = v16;
      *(v6 + 8) = v17;
    }
  }

  else
  {
    swift_errorRetain();
  }

  v7 = (a1 + *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 100));
  v9 = v7 + 1;
  result = v7[1];
  v10 = v7[3];
  v11 = v10 >> 61;
  if ((v10 >> 61) > 2)
  {
    if (v11 == 3 || v11 == 4)
    {

      result = 0;
      v13 = 0;
      v14 = 0;
      LOBYTE(v11) = 0;
    }

    else
    {
      result = 0;
      v13 = 0;
      v14 = 0;
      LOBYTE(v11) = 0;
      *v7 = a2;
      *v9 = 0;
      v7[2] = 0;
      v7[3] = 0x8000000000000000;
    }

    v12 = 0xF000000000000007;
  }

  else
  {
    v12 = *v7;
    if (v11)
    {
      if (v11 == 1)
      {
        *v7 = a2;
        *v9 = 0;
        v7[2] = 0;
        v7[3] = 0x8000000000000000;
        v12 |= 0x4000000000000000uLL;
        LOBYTE(v11) = 2;
        v13 = "SentKey";
        v14 = 7;
      }

      else
      {

        LOBYTE(v11) = 0;
        *v7 = a2;
        *v9 = 0;
        v7[2] = 0;
        v7[3] = 0x8000000000000000;
        v12 = v10 & 0x1FFFFFFFFFFFFFFFLL | 0x8000000000000000;
        result = "ReceivingResponse";
        v14 = 2;
        v13 = 17;
      }
    }

    else
    {
      result = 0;
      v13 = 0;
      v14 = 0;
      *v7 = a2;
      *v9 = 0;
      v7[2] = 0;
      v7[3] = 0x8000000000000000;
    }
  }

  *a3 = v12;
  *(a3 + 8) = result;
  *(a3 + 16) = v13;
  *(a3 + 24) = v14;
  *(a3 + 32) = v11;
  return result;
}

uint64_t sub_10016B23C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1001CFFB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8, v11);
  v13 = &v16[-v12];
  sub_100012038(a1, a2);
  sub_1001CFFA0();
  (*(v5 + 32))(v13, v10, v4);
  v14 = sub_1001CFF90();
  (*(v5 + 8))(v13, v4);
  return v14;
}

uint64_t sub_10016B5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v17 - v10;
  v12 = a2 + *(*a2 + 160);
  sub_1001CFD70();
  sub_1001D0D50();
  sub_1001CFD50();
  v13 = sub_1001CFD60();
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  sub_1001D0D60();
  v14 = a2 + *(*a2 + 240);
  sub_1001D0890();
  sub_1001D0D20();

  sub_1001D0D30();
  v15 = *a5;

  return sub_1001D0D40();
}

uint64_t sub_10016B71C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      sub_1001D2030(18);

      v4 = 0xD000000000000010;
      goto LABEL_8;
    }

    v2 = 1701080942;
LABEL_6:
    v4 = v2 & 0xFFFF0000FFFFFFFFLL | 0x202C00000000;
LABEL_8:
    v5._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v5);

    return v4;
  }

  if (a2 == 2)
  {
    v2 = 1635017060;
    goto LABEL_6;
  }

  return 1953460082;
}

uint64_t sub_10016B800()
{
  v1[2] = v0;
  v2 = sub_1001D0270();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1001D02F0();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for PowerAssertion();
  v1[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_10016B94C, 0, 0);
}

uint64_t sub_10016B94C()
{
  v36 = v0;
  v1 = *(**(v0 + 16) + 392);
  v2 = sub_1001D0E50();
  v3 = sub_1001D1DD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running TrustedRequest", v4, 2u);
  }

  v5 = *(v0 + 16);

  swift_retain_n();
  v6 = sub_1001D0E50();
  v7 = sub_1001D1DD0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 16);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v10 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v34 = sub_1001D23A0();
    v35 = v11;
    v38._countAndFlagsBits = 58;
    v38._object = 0xE100000000000000;
    sub_1001D18B0(v38);
    v12 = sub_1000954E0(v34, v35, &v33);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;

    v13 = sub_10012C8DC();
    v15 = v14;

    v16 = sub_1000954E0(v13, v15, &v33);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Configuration: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v17 = *(v0 + 16);
  }

  v19 = *(v0 + 72);
  v18 = *(v0 + 80);
  v21 = *(v0 + 56);
  v20 = *(v0 + 64);
  v23 = *(v0 + 40);
  v22 = *(v0 + 48);
  v24 = *(v0 + 24);
  v25 = *(v0 + 32);
  v26 = *(v0 + 16);
  (*(v21 + 104))(v20, enum case for TC2LogCategory.daemon(_:), v22);
  sub_1001D08B0();
  (*(v21 + 8))(v20, v22);
  *(v18 + *(v19 + 24)) = 0;
  v27 = (v18 + *(v19 + 20));
  *v27 = 0xD000000000000030;
  v27[1] = 0x80000001001E74C0;
  sub_10014A444();
  (*(v25 + 104))(v23, enum case for StepIdentifier.privateCloudComputeRequestInDaemon(_:), v24);
  v28 = async function pointer to withAppleIntelligenceEvent<A>(isolation:id:step:operation:)[1];
  v29 = swift_task_alloc();
  *(v0 + 88) = v29;
  *v29 = v0;
  v29[1] = sub_10016BD34;
  v30 = *(v0 + 40);
  v31 = *(v0 + 16);

  return withAppleIntelligenceEvent<A>(isolation:id:step:operation:)();
}

uint64_t sub_10016BD34()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_10016BF4C;
  }

  else
  {
    v6 = sub_10016BEA4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10016BEA4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];
  sub_10014A754();
  sub_1001AFB98(v1, type metadata accessor for PowerAssertion);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10016BF4C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];
  sub_10014A754();
  sub_1001AFB98(v1, type metadata accessor for PowerAssertion);

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t sub_10016BFF4(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_1001D0200();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = *(*(sub_100011AC0(&qword_10022FCE0, &qword_1001E1668) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = *(*(sub_100011AC0(&qword_10022D2D0, &qword_1001E1670) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v8 = swift_task_alloc();
  v2[15] = v8;
  *v8 = v2;
  v8[1] = sub_10016C184;

  return sub_10016D004();
}

uint64_t sub_10016C184()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_10016C704;
  }

  else
  {
    v3 = sub_10016C298;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_10016C298()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = (*(*(v0 + 40) + *(**(v0 + 40) + 280)) + OBJC_IVAR____TtC20privatecloudcomputed22IncomingUserDataReader_stateLock);
  os_unfair_lock_lock(v3);
  v4 = sub_100011AC0(&qword_10022D1F0, &qword_1001E15C0);
  sub_100112654(v3 + *(v4 + 28), 0, v2);
  os_unfair_lock_unlock(v3);
  if (!v1)
  {
    v5 = *(v0 + 104);
    sub_10001208C(*(v0 + 112), v5, &qword_10022D2D0, &qword_1001E1670);
    v6 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
    v7 = *(v6 - 8);
    v8 = (*(v7 + 48))(v5, 1, v6);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    if (v8 == 1)
    {
      sub_100011F00(*(v0 + 112), &qword_10022D2D0, &qword_1001E1670);
      sub_100011F00(v9, &qword_10022D2D0, &qword_1001E1670);
    }

    else
    {
      *(v0 + 16) = xmmword_1001D6800;
      sub_1001D1AA0();
      sub_100011F00(v10, &qword_10022D2D0, &qword_1001E1670);
      (*(v7 + 8))(v9, v6);
    }

    v11 = *(*(v0 + 40) + *(**(v0 + 40) + 368));
    (*(*(v0 + 56) + 56))(*(v0 + 80), 1, 1, *(v0 + 48));
    v12 = swift_task_alloc();
    *(v0 + 136) = v12;
    *v12 = v0;
    v12[1] = sub_10016C518;
    v13 = *(v0 + 80);

    sub_10016008C(v13);
  }
}

uint64_t sub_10016C518()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 88);
  v6 = *(*v0 + 80);
  v7 = *(*v0 + 72);
  v8 = *(*v0 + 64);
  v11 = *v0;

  sub_100011F00(v6, &qword_10022FCE0, &qword_1001E1668);

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_10016C704()
{
  v60 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  static PrivateCloudComputeError.wrapAny(error:)(*(v0 + 128), v1);
  v6 = *(*v5 + 392);
  v7 = *(v4 + 16);
  *(v0 + 144) = v7;
  *(v0 + 152) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v56 = v7;
  v7(v2, v1, v3);

  swift_errorRetain();
  v8 = sub_1001D0E50();
  v9 = sub_1001D1DE0();

  if (os_log_type_enabled(v8, v9))
  {
    v50 = *(v0 + 64);
    v51 = *(v0 + 56);
    v52 = *(v0 + 128);
    v53 = v9;
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v57 = v54;
    *v12 = 136315650;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v58 = sub_1001D23A0();
    v59 = v14;
    v62._countAndFlagsBits = 58;
    v62._object = 0xE100000000000000;
    sub_1001D18B0(v62);
    v15 = sub_1000954E0(v58, v59, &v57);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2112;
    sub_1001B0458(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError);
    swift_allocError();
    v56(v16, v50, v11);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    v18 = *(v51 + 8);
    v18(v50, v11);
    *(v12 + 14) = v17;
    *v13 = v17;
    *(v12 + 22) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v19;
    v13[1] = v19;
    _os_log_impl(&_mh_execute_header, v8, v53, "%s sendRopesRequest pccError=%@ from error=%@", v12, 0x20u);
    sub_100011AC0(&unk_1002301D0, &qword_1001D4F50);
    swift_arrayDestroy();

    sub_100011CF0(v54);
  }

  else
  {
    v21 = *(v0 + 56);
    v20 = *(v0 + 64);
    v22 = *(v0 + 48);

    v18 = *(v21 + 8);
    v18(v20, v22);
  }

  *(v0 + 160) = v18;
  v23 = *(v0 + 96);
  v24 = *(v0 + 72);
  v26 = *(v0 + 40);
  v25 = *(v0 + 48);
  v27 = *(*v26 + 280);
  *(v0 + 168) = sub_1001B0458(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError);
  v28 = swift_allocError();
  v56(v29, v24, v25);
  v30 = (*(v26 + v27) + OBJC_IVAR____TtC20privatecloudcomputed22IncomingUserDataReader_stateLock);
  os_unfair_lock_lock(v30);
  v31 = sub_100011AC0(&qword_10022D1F0, &qword_1001E15C0);
  sub_100112654(v30 + *(v31 + 28), v28, v23);
  os_unfair_lock_unlock(v30);
  v32 = *(v0 + 88);
  sub_10001208C(*(v0 + 96), v32, &qword_10022D2D0, &qword_1001E1670);
  v33 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
  v34 = *(v33 - 8);
  v35 = (*(v34 + 48))(v32, 1, v33);
  v36 = *(v0 + 88);
  v37 = *(v0 + 96);
  if (v35 == 1)
  {
    sub_100011F00(v37, &qword_10022D2D0, &qword_1001E1670);
    sub_100011F00(v36, &qword_10022D2D0, &qword_1001E1670);
  }

  else
  {
    *(v0 + 32) = v28;
    swift_errorRetain();
    sub_1001D1A90();
    sub_100011F00(v37, &qword_10022D2D0, &qword_1001E1670);
    (*(v34 + 8))(v36, v33);
  }

  v38 = *(v0 + 72);
  v55 = *(v0 + 80);
  v39 = *(v0 + 48);
  v40 = *(v0 + 56);
  v41 = *(v0 + 40);
  v42 = *(*v41 + 272);
  v43 = swift_allocError();
  v56(v44, v38, v39);
  v45 = *(v41 + v42);
  sub_100118764(v43);

  v46 = *(v41 + *(*v41 + 368));
  v56(v55, v38, v39);
  (*(v40 + 56))(v55, 0, 1, v39);
  v47 = swift_task_alloc();
  *(v0 + 176) = v47;
  *v47 = v0;
  v47[1] = sub_10016CDB0;
  v48 = *(v0 + 80);

  return sub_10016008C(v48);
}

uint64_t sub_10016CDB0()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 80);
  v4 = *v0;

  sub_100011F00(v2, &qword_10022FCE0, &qword_1001E1668);

  return _swift_task_switch(sub_10016CED8, 0, 0);
}

uint64_t sub_10016CED8()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[14];
  v13 = v0[13];
  v14 = v0[12];
  v7 = v0[9];
  v15 = v0[11];
  v16 = v0[10];
  v8 = v0[7];
  v17 = v0[8];
  v9 = v0[6];
  swift_allocError();
  v4(v10, v7, v9);
  swift_willThrow();

  v2(v7, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10016D004()
{
  v1[12] = v0;
  v2 = sub_1001D0F40();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_10016D0D0, 0, 0);
}

uint64_t sub_10016D0D0()
{
  v1 = *(v0 + 96);
  sub_10016DA04();
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_10016D168;
  v3 = *(v0 + 96);

  return sub_10016DC24();
}

uint64_t sub_10016D168(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v5 = *v2;
  *(*v2 + 144) = a1;

  if (v1)
  {
    v7 = *(v3 + 120);
    v6 = *(v3 + 128);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_10016D2C0, 0, 0);
  }
}

uint64_t sub_10016D2C0()
{
  v1 = v0[12] + qword_100243500;
  v2 = *(v1 + 73);
  v3 = *(v1 + 96);
  v36 = type metadata accessor for TrustedRequestConfiguration();
  v37 = v1;
  v4 = (v1 + *(v36 + 108));
  v5 = *v4;
  v6 = v4[1];
  sub_1001D1210();
  v0[19] = sub_1001D1200();
  v7 = sub_1001D1240();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_1001D1230();
  sub_1001D1270();
  v11 = sub_1001D1260();
  if (v3 == 1)
  {
    sub_1001D11F0();
    nw_parameters_set_privacy_proxy_fail_closed();
    swift_unknownObjectRelease();
  }

  sub_1001D11E0();
  if (v2)
  {
    v12 = sub_1001D1220();
    v0[6] = sub_100096568;
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100059234;
    v0[5] = &unk_100222B10;
    v13 = _Block_copy(v0 + 2);
    sub_100015A10(0, &qword_100229300, OS_dispatch_queue_ptr);
    v14 = sub_1001D1E40();
    sec_protocol_options_set_verify_block(v12, v13, v14);

    _Block_release(v13);
    swift_unknownObjectRelease();
  }

  sub_1001D11D0();
  sub_100011AC0(&qword_100228C30, &qword_1001D53E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001D54B0;
  *(v15 + 32) = v11;
  *(v15 + 40) = v10;

  sub_1001D11C0();

  sub_1001D12D0();
  v16 = sub_1001D12C0();
  sub_1001D11D0();

  v17 = sub_1001D11B0();
  if (*v18 >> 62 && (result = sub_1001D2190(), result < 0))
  {
    __break(1u);
  }

  else
  {
    v19 = v0[16];
    v34 = v0[18];
    v35 = v0[15];
    v20 = v0[14];
    v32 = v0[13];
    v33 = v0[12];
    sub_10005A0B8(0, 0, v16);

    v17(v0 + 8, 0);

    v21 = *(v36 + 64);
    v22 = sub_1001CFB10();
    (*(*(v22 - 8) + 16))(v19, v37 + v21, v22);
    (*(v20 + 104))(v19, enum case for NWEndpoint.url(_:), v32);
    sub_100015A10(0, &qword_100229300, OS_dispatch_queue_ptr);
    v23 = sub_1001D1E40();
    v0[20] = v23;
    v24 = qword_1002434F8;
    v25 = swift_task_alloc();
    v0[21] = v25;
    *(v25 + 16) = v33;
    *(v25 + 24) = v34;
    (*(v20 + 16))(v35, v19, v32);
    v26 = sub_1001D11A0();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();

    v29 = sub_1001D1140();
    v0[22] = v29;
    v30 = swift_task_alloc();
    v0[23] = v30;
    *v30 = v0;
    v30[1] = sub_10016D770;

    return sub_100135C64(sub_100135C64, v29, v23, v33 + v24, 1953460082, 0xE400000000000000, &unk_1001E16F0, v25);
  }

  return result;
}

uint64_t sub_10016D770()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_10016D948;
  }

  else
  {
    v3 = sub_10016D884;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10016D884()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v8 = v0[14];

  (*(v8 + 8))(v5, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10016D948()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];

  (*(v7 + 8))(v5, v6);
  v8 = v0[24];
  v10 = v0[15];
  v9 = v0[16];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10016DA04()
{
  v1 = v0;
  v2 = type metadata accessor for ThimbledEvent();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2, v4);
  v5 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v18 - v9;
  v11 = v0 + qword_100243500;
  result = type metadata accessor for TrustedRequestConfiguration();
  if (*(v11 + *(result + 136)) == 1)
  {
    v13 = v1 + *(*v1 + 392);
    v14 = sub_1001D0E50();
    v15 = sub_1001D1DC0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Server driven configuration is outdated, scheduling a fetch", v16, 2u);
    }

    v17 = *(*v1 + 360);
    swift_storeEnumTagMultiPayload();
    sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
    sub_1001D1BC0();
    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_10016DC24()
{
  v1[13] = v0;
  v2 = sub_100011AC0(&qword_1002292A0, &qword_1001D6410);
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();
  v5 = *(*(sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v6 = sub_1001CFDA0();
  v1[18] = v6;
  v7 = *(v6 - 8);
  v1[19] = v7;
  v8 = *(v7 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v9 = *(*(sub_100011AC0(&qword_100227A38, &unk_1001D35F0) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v10 = sub_1001D01B0();
  v1[23] = v10;
  v11 = *(v10 - 8);
  v1[24] = v11;
  v12 = *(v11 + 64) + 15;
  v1[25] = swift_task_alloc();
  v13 = sub_1001CFD60();
  v1[26] = v13;
  v14 = *(v13 - 8);
  v1[27] = v14;
  v15 = *(v14 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v16 = *(*(sub_100011AC0(&qword_100227E08, &unk_1001D3B30) - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  v17 = sub_1001D0260();
  v1[31] = v17;
  v18 = *(v17 - 8);
  v1[32] = v18;
  v19 = *(v18 + 64) + 15;
  v1[33] = swift_task_alloc();
  v20 = sub_1001D08A0();
  v1[34] = v20;
  v21 = *(v20 - 8);
  v1[35] = v21;
  v22 = *(v21 + 64) + 15;
  v1[36] = swift_task_alloc();
  v23 = type metadata accessor for TrustedRequestConfiguration();
  v1[37] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v1[38] = swift_task_alloc();

  return _swift_task_switch(sub_10016DFAC, 0, 0);
}

uint64_t sub_10016DFAC()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 272);
  v6 = *(v0 + 104);
  v7 = qword_100243500;
  *(v0 + 312) = qword_100243500;
  sub_1001AFCB4(v6 + v7, v1, type metadata accessor for TrustedRequestConfiguration);
  (*(v4 + 16))(v3, v6 + qword_100243508, v5);
  v8 = *(v2 + 112);
  v9 = (v1 + *(v2 + 108));
  v10 = v9[1];
  v27 = *v9;
  if (*(v1 + v8 + 8))
  {
    v25 = *(v1 + v8 + 8);
    v26 = *(v1 + v8);
  }

  else
  {
    v25 = 0xE000000000000000;
    v26 = 0;
  }

  v11 = *(v0 + 304);
  v13 = *(v0 + 280);
  v12 = *(v0 + 288);
  v14 = *(v0 + 272);
  v23 = *(v0 + 232);
  v24 = *(v0 + 296);
  v15 = *(v0 + 104);

  v16 = sub_1001D0890();
  v18 = v17;
  v19 = sub_1001D0870();
  (*(v13 + 8))(v12, v14);
  sub_1001AFB98(v11, type metadata accessor for TrustedRequestConfiguration);
  *(v0 + 16) = v27;
  *(v0 + 24) = v10;
  *(v0 + 32) = v26;
  *(v0 + 40) = v25;
  *(v0 + 48) = v16;
  *(v0 + 56) = v18;
  *(v0 + 64) = v19;
  v20 = *(*v15 + 312);
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  *(v0 + 352) = *(v24 + 116);
  v21 = *(v15 + v20);
  *(v0 + 320) = v21;

  return _swift_task_switch(sub_10016E178, v21, 0);
}

uint64_t sub_10016E178()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  sub_1000EED5C(v2, (v0 + 16), *(v0 + 104) + *(v0 + 312) + *(v0 + 352), *(v0 + 240));
  sub_10001BB30(v0 + 16);
  v5 = *(v4 + 8);
  *(v0 + 328) = v5;
  *(v0 + 336) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v3);

  return _swift_task_switch(sub_10016E234, 0, 0);
}

uint64_t sub_10016E234()
{
  v54 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 352);
    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    v7 = *(v0 + 136);
    v8 = *(v0 + 104) + *(v0 + 312);
    sub_100011F00(v3, &qword_100227E08, &unk_1001D3B30);
    sub_10001208C(v8 + v4, v7, &qword_1002288B0, &qword_1001D5FC0);
    if ((*(v6 + 48))(v7, 1, v5) == 1)
    {
      v9 = *(v0 + 104);
      sub_100011F00(*(v0 + 136), &qword_1002288B0, &qword_1001D5FC0);
      v10 = *(*v9 + 392);

      v11 = sub_1001D0E50();
      v12 = sub_1001D1E00();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = *(v0 + 144);
        v14 = *(v0 + 104);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v51 = v16;
        *v15 = 136315138;
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
        v52 = sub_1001D23A0();
        v53 = v17;
        v56._countAndFlagsBits = 58;
        v56._object = 0xE100000000000000;
        sub_1001D18B0(v56);
        v18 = sub_1000954E0(v52, v53, &v51);

        *(v15 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v11, v12, "%s no session identifier on request", v15, 0xCu);
        sub_100011CF0(v16);
      }

      v19 = *(v0 + 304);
      v20 = *(v0 + 288);
      v21 = *(v0 + 264);
      v23 = *(v0 + 232);
      v22 = *(v0 + 240);
      v24 = *(v0 + 224);
      v25 = *(v0 + 200);
      v27 = *(v0 + 168);
      v26 = *(v0 + 176);
      v28 = *(v0 + 160);
      v47 = *(v0 + 136);
      v49 = *(v0 + 128);

      v29 = *(v0 + 8);

      return v29(0);
    }

    else
    {
      v38 = *(v0 + 320);
      v39 = *(v0 + 232);
      (*(*(v0 + 152) + 32))(*(v0 + 168), *(v0 + 136), *(v0 + 144));
      _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();

      return _swift_task_switch(sub_10016E798, v38, 0);
    }
  }

  else
  {
    v41 = *(v0 + 304);
    v42 = *(v0 + 288);
    v31 = *(v0 + 264);
    v43 = *(v0 + 232);
    v44 = *(v0 + 224);
    v32 = *(v0 + 216);
    v34 = *(v0 + 192);
    v33 = *(v0 + 200);
    v40 = *(v0 + 208);
    v36 = *(v0 + 176);
    v35 = *(v0 + 184);
    v45 = *(v0 + 168);
    v46 = *(v0 + 160);
    v48 = *(v0 + 136);
    v50 = *(v0 + 128);
    (*(v2 + 32))(v31, v3, v1);
    (*(v34 + 104))(v33, enum case for PrivateCloudComputeError.Code.deniedDueToRateLimit(_:), v35);
    sub_1001D0240();
    (*(v32 + 56))(v36, 0, 1, v40);
    sub_1001D0200();
    sub_1001B0458(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01C0();
    swift_willThrow();
    (*(v2 + 8))(v31, v1);

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_10016E798()
{
  v16 = v0[41];
  v17 = v0[42];
  v1 = v0[40];
  v2 = v0[28];
  v3 = v0[26];
  v14 = v0[29];
  v15 = v0[21];
  v4 = v0[15];
  v5 = v0[16];
  v13 = v0[14];
  v6 = v1 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model;
  swift_beginAccess();
  v7 = *(v6 + 24);
  v8 = (v1 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config);
  v10 = *(v1 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config + 24);
  v9 = *(v1 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config + 32);
  sub_100024DC8(v8, v10);

  sub_1001D0430();
  sub_1001D0210();
  (*(v4 + 8))(v5, v13);
  v11 = v0[12];
  sub_1001CFCF0();
  v0[43] = sub_1000FB3F4(v2, v15, v7);

  v16(v2, v3);
  v16(v14, v3);

  return _swift_task_switch(sub_10016E920, 0, 0);
}

uint64_t sub_10016E920()
{
  v42 = v0;
  v1 = *(**(v0 + 104) + 392);
  (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 168), *(v0 + 144));

  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 160);
    v35 = *(v0 + 344);
    v37 = *(v0 + 168);
    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    v7 = *(v0 + 104);
    v8 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v8 = 136315650;
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v40 = sub_1001D23A0();
    v41 = v9;
    v44._countAndFlagsBits = 58;
    v44._object = 0xE100000000000000;
    sub_1001D18B0(v44);
    v10 = sub_1000954E0(v40, v41, &v39);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v11 = v4;
    v12 = sub_1001D23A0();
    v14 = v13;
    v15 = *(v6 + 8);
    v15(v11, v5);
    v16 = sub_1000954E0(v12, v14, &v39);

    *(v8 + 14) = v16;
    *(v8 + 22) = 2048;
    *(v8 + 24) = v35;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s using session identifier %s with progress %lu", v8, 0x20u);
    swift_arrayDestroy();

    v15(v37, v5);
  }

  else
  {
    v18 = *(v0 + 160);
    v17 = *(v0 + 168);
    v19 = *(v0 + 144);
    v20 = *(v0 + 152);

    v21 = *(v20 + 8);
    v21(v18, v19);
    v21(v17, v19);
  }

  v22 = *(v0 + 304);
  v23 = *(v0 + 288);
  v24 = *(v0 + 264);
  v26 = *(v0 + 232);
  v25 = *(v0 + 240);
  v27 = *(v0 + 224);
  v28 = *(v0 + 200);
  v30 = *(v0 + 168);
  v29 = *(v0 + 176);
  v31 = *(v0 + 160);
  v34 = *(v0 + 136);
  v36 = *(v0 + 128);
  v38 = *(v0 + 344);

  v32 = *(v0 + 8);

  return v32(v38);
}

uint64_t sub_10016EC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[129] = a6;
  v6[128] = a5;
  v6[127] = a4;
  v6[126] = a2;
  v8 = sub_100011AC0(&qword_10022FD18, &unk_1001E1700);
  v6[130] = v8;
  v9 = *(v8 - 8);
  v6[131] = v9;
  v10 = *(v9 + 64) + 15;
  v6[132] = swift_task_alloc();
  v11 = sub_100011AC0(&qword_10022F158, &qword_1001E06C0);
  v6[133] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[134] = swift_task_alloc();
  v13 = type metadata accessor for ValidatedAttestationOrAttestation();
  v6[135] = v13;
  v14 = *(v13 - 8);
  v6[136] = v14;
  v15 = *(v14 + 64) + 15;
  v6[137] = swift_task_alloc();
  v16 = sub_100011AC0(&qword_10022FD20, &qword_1001E1710);
  v6[138] = v16;
  v17 = *(v16 - 8);
  v6[139] = v17;
  v18 = *(v17 + 64) + 15;
  v6[140] = swift_task_alloc();
  v19 = sub_100011AC0(&qword_10022FD28, &qword_1001E1718);
  v6[141] = v19;
  v20 = *(v19 - 8);
  v6[142] = v20;
  v21 = *(v20 + 64) + 15;
  v6[143] = swift_task_alloc();
  v22 = sub_100011AC0(&qword_10022FD30, &qword_1001E1720);
  v6[144] = v22;
  v23 = *(v22 - 8);
  v6[145] = v23;
  v24 = *(v23 + 64) + 15;
  v6[146] = swift_task_alloc();
  v6[107] = a3;

  return _swift_task_switch(sub_10016EF28, 0, 0);
}

uint64_t sub_10016EF28()
{
  v1 = *(v0 + 1016);
  v2 = *(*(v0 + 1024) + *(**(v0 + 1024) + 368));
  *(v0 + 1176) = v2;
  sub_1001D0F30();
  v3 = sub_1001D0F10();
  v4 = sub_1001D0F10();
  v5 = *(v1 + 8);
  sub_1001D1030();
  sub_1001D1030();
  v6 = *(*v2 + 144);
  *(v0 + 1184) = v6;
  v7 = (v2 + v6);
  os_unfair_lock_lock((v2 + v6));
  v8 = *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  *(v0 + 852) = v8;
  sub_10015E07C(v7 + v8, v4, v3);
  v9 = *(v0 + 1024);
  os_unfair_lock_unlock(v7);

  v10 = swift_allocObject();
  *(v0 + 1192) = v10;
  *(v10 + 16) = &unk_1001E1730;
  *(v10 + 24) = v9;

  sub_100011AC0(&qword_10022FD38, &qword_1001E1748);
  swift_asyncLet_begin();
  v11 = *(*v2 + 296);
  v12 = *(*v2 + 304);
  swift_retain_n();
  v13 = swift_task_alloc();
  *(v0 + 1200) = v13;
  *v13 = v0;
  v13[1] = sub_10016F1C0;
  v14 = *(v0 + 1024);

  return sub_100127D2C("LoadAttestationsFromCache", 25, 2, v2 + v12, v2 + v11, v14);
}

uint64_t sub_10016F1C0(uint64_t a1, char a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 1200);
  v7 = *v3;
  *(v5 + 1208) = a1;
  *(v5 + 849) = a2;
  *(v5 + 1216) = v2;

  v8 = *(v4 + 1024);

  if (v2)
  {
  }

  else
  {

    return _swift_task_switch(sub_10016F31C, 0, 0);
  }
}

void sub_10016F31C()
{
  v1 = *(v0 + 1216);
  v2 = *(v0 + 849);
  v3 = *(v0 + 1208);
  v4 = *(v0 + 852);
  v5 = *(v0 + 1176);
  v6 = (v5 + *(v0 + 1184));
  os_unfair_lock_lock(v6);
  sub_100164E68(v6 + v4, v3, v2 & 1, v5);
  os_unfair_lock_unlock(v6);
  if (!v1)
  {
    if (*(v0 + 849))
    {

      swift_willThrowTypedImpl();
    }

    else
    {
      v7 = *(v0 + 1208);
      v8 = *(v0 + 1168);
      v9 = *(v0 + 1144);
      v10 = *(v0 + 1120);
      v11 = *(v0 + 1112);
      v12 = *(v0 + 1104);
      v13 = *(v0 + 1080);
      v14 = *(v0 + 1024);

      (*(v11 + 104))(v10, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v12);
      sub_1001D1BB0();
      (*(v11 + 8))(v10, v12);
      v15 = *(v7 + 16);
      if (v15)
      {
        v16 = *(v0 + 1088);
        v17 = v7 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
        v18 = *(v16 + 72);
        v19 = (*(v0 + 1048) + 8);
        do
        {
          v20 = *(v0 + 1144);
          v21 = *(v0 + 1128);
          v22 = *(v0 + 1056);
          v23 = *(v0 + 1040);
          sub_1001AFCB4(v17, *(v0 + 1096), type metadata accessor for ValidatedAttestationOrAttestation);
          sub_1001D1BC0();
          (*v19)(v22, v23);
          v17 += v18;
          --v15;
        }

        while (v15);
      }

      v24 = *(v0 + 1072);
      v25 = *(v0 + 1064);
      sub_100011AC0(&qword_10022EE80, &qword_1001E01A8);
      v26 = swift_allocObject();
      *(v0 + 1224) = v26;
      *(v26 + 16) = 0;
      *(v26 + 24) = &_swiftEmptyArrayStorage;
      *(v26 + 32) = 0;
      v27 = swift_allocObject();
      *(v0 + 1232) = v27;
      *(v27 + 16) = 0;
      *(v27 + 24) = &_swiftEmptyArrayStorage;
      *(v27 + 32) = 0;
      v28 = sub_100011AC0(&qword_10022FD40, &unk_1001E1750);
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      v31 = swift_allocObject();
      *(v0 + 1240) = v31;
      v32 = (v31 + *(*v31 + 88));
      *v24 = &_swiftEmptyArrayStorage;
      swift_storeEnumTagMultiPayload();
      *v32 = 0;
      v33 = *(sub_100011AC0(&qword_10022F148, &qword_1001E06B0) + 28);
      v34 = sub_100011AC0(&qword_10022FD48, &qword_1001E1760);
      bzero(v32 + v33, *(*(v34 - 8) + 64));
      sub_1000DBEF4(v24, v32 + v33, &qword_10022F158, &qword_1001E06C0);
      sub_100011AC0(&qword_10022FD50, &qword_1001E1768);
      v35 = swift_allocObject();
      *(v0 + 1248) = v35;
      *(v35 + 16) = 0;
      *(v35 + 24) = &_swiftEmptyArrayStorage;
      *(v35 + 32) = 0;

      _swift_asyncLet_get_throwing(v0 + 16);
    }
  }
}

uint64_t sub_10016F6A8()
{
  *(v1 + 1256) = v0;
  if (v0)
  {
    sub_1001ABE28(*(v1 + 1208), 0);
    v2 = sub_10016FC20;
  }

  else
  {
    v2 = sub_10016F72C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016F72C()
{
  v19 = *(v0 + 1248);
  v15 = *(v0 + 1232);
  v14 = *(v0 + 1224);
  v1 = *(v0 + 1208);
  v16 = *(v0 + 1168);
  v17 = *(v0 + 1240);
  v2 = *(v0 + 1144);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 1024);
  v13 = *(v0 + 1016);
  v5 = *(v0 + 1008);
  v6 = *(v0 + 760);
  *(v0 + 696) = *(v0 + 744);
  *(v0 + 712) = v6;
  *(v0 + 728) = *(v0 + 776);
  v7 = sub_100011AC0(&qword_10022FD58, &qword_1001E1770);
  v8 = sub_100011AC0(&qword_10022FD60, &qword_1001E1778);
  v9 = swift_task_alloc();
  *(v0 + 1264) = v9;
  v9[2] = v4;
  v9[3] = v0 + 696;
  v9[4] = v3;
  v9[5] = v1;
  v9[6] = v5;
  v9[7] = v0 + 856;
  v9[8] = v2;
  v9[9] = v15;
  v9[10] = v14;
  v9[11] = v19;
  v9[12] = v13;
  v9[13] = v17;
  v9[14] = v16;
  sub_10001208C(v0 + 696, v0 + 792, &qword_10022FD38, &qword_1001E1748);
  v10 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v11 = swift_task_alloc();
  *(v0 + 1272) = v11;
  *v11 = v0;
  v11[1] = sub_10016F900;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 840, v7, v8, 0, 0, &unk_1001E1788, v9, v7);
}

uint64_t sub_10016F900()
{
  v1 = *(*v0 + 1272);
  v2 = *(*v0 + 1264);
  v3 = *(*v0 + 1208);
  v5 = *v0;

  sub_1001ABE28(v3, 0);

  return _swift_task_switch(sub_10016FA38, 0, 0);
}

uint64_t sub_10016FA38()
{
  v1 = *(v0 + 840);
  *(v0 + 1280) = v1;
  v2 = *(v0 + 1248);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1232);
  v5 = *(v0 + 1224);
  v6 = *(v0 + 1160);
  v7 = *(v0 + 1152);
  v12 = v7;
  v13 = *(v0 + 1168);
  v8 = *(v0 + 1144);
  v9 = *(v0 + 1136);
  v10 = *(v0 + 1128);
  if (*(v0 + 848))
  {
    *(v0 + 1000) = v1;
    swift_errorRetain();
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    sub_100011F00(v0 + 696, &qword_10022FD38, &qword_1001E1748);

    sub_100142304(v1, 1);
  }

  else
  {
    sub_100011F00(v0 + 696, &qword_10022FD38, &qword_1001E1748);
  }

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v13, v12);

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_10016FC20()
{
  v1 = v0[156];
  v2 = v0[155];
  v3 = v0[154];
  v4 = v0[153];
  v5 = v0[146];
  v6 = v0[145];
  v7 = v0[144];
  v8 = v0[143];
  v9 = v0[142];
  v10 = v0[141];

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);

  return _swift_asyncLet_finish(v0 + 2);
}

uint64_t sub_10016FD34()
{
  v1 = v0[157];
  v2 = v0[149];
  v3 = v0[146];
  v4 = v0[143];
  v5 = v0[140];
  v6 = v0[137];
  v7 = v0[134];
  v8 = v0[132];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10016FE14()
{
  v1 = v0[149];
  v2 = v0[146];
  v3 = v0[143];
  v4 = v0[140];
  v5 = v0[137];
  v6 = v0[134];
  v7 = v0[132];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10016FEEC()
{
  v1 = v0[160];
  v2 = v0[149];
  v3 = v0[146];
  v4 = v0[143];
  v5 = v0[140];
  v6 = v0[137];
  v7 = v0[134];
  v8 = v0[132];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10016FFB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return _swift_task_switch(sub_10016FFD0, 0, 0);
}

uint64_t sub_10016FFD0()
{
  v1 = *(*(v0 + 72) + *(**(v0 + 72) + 368));

  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1001700A8;
  v3 = *(v0 + 72);

  return sub_10011CBDC(v0 + 16, v1, v3);
}

uint64_t sub_1001700A8()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1001701E8;
  }

  else
  {
    v3 = sub_1001701BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001701BC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  v1[2] = v3;
  return (*(v0 + 8))();
}

uint64_t sub_100170200(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_1001702F4;

  return v6(v2 + 16);
}

uint64_t sub_1001702F4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 64);
    v6 = *(v2 + 16);
    v7 = *(v2 + 48);
    v5[1] = *(v2 + 32);
    v5[2] = v7;
    *v5 = v6;
  }

  v8 = *(v4 + 8);

  return v8();
}

uint64_t sub_10017040C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001704B0;

  return sub_1001242F0();
}

uint64_t sub_1001704B0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1001705AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 552) = v23;
  *(v8 + 544) = v22;
  *(v8 + 512) = v20;
  *(v8 + 528) = v21;
  *(v8 + 496) = a7;
  *(v8 + 504) = a8;
  *(v8 + 480) = a5;
  *(v8 + 488) = a6;
  *(v8 + 464) = a3;
  *(v8 + 472) = a4;
  *(v8 + 448) = a1;
  *(v8 + 456) = a2;
  v9 = *(*(sub_100011AC0(&qword_10022FD68, &qword_1001E17A0) - 8) + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = swift_task_alloc();
  *(v8 + 584) = swift_task_alloc();
  v10 = sub_100011AC0(&qword_10022FD30, &qword_1001E1720);
  *(v8 + 592) = v10;
  v11 = *(v10 - 8);
  *(v8 + 600) = v11;
  *(v8 + 608) = *(v11 + 64);
  *(v8 + 616) = swift_task_alloc();
  v12 = type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0);
  *(v8 + 624) = v12;
  v13 = *(v12 - 8);
  *(v8 + 632) = v13;
  *(v8 + 640) = *(v13 + 64);
  *(v8 + 648) = swift_task_alloc();
  v14 = sub_100011AC0(&qword_10022FD28, &qword_1001E1718);
  *(v8 + 656) = v14;
  v15 = *(v14 - 8);
  *(v8 + 664) = v15;
  *(v8 + 672) = *(v15 + 64);
  *(v8 + 680) = swift_task_alloc();
  v16 = *(type metadata accessor for NWAsyncConnection.Inbound(0) - 8);
  *(v8 + 688) = v16;
  *(v8 + 696) = *(v16 + 64);
  *(v8 + 704) = swift_task_alloc();
  v17 = *(*(sub_100011AC0(&qword_100229350, &unk_1001D6BA0) - 8) + 64) + 15;
  *(v8 + 712) = swift_task_alloc();

  return _swift_task_switch(sub_10017086C, 0, 0);
}

uint64_t sub_10017086C()
{
  *(v0 + 720) = *(**(v0 + 456) + 392);
  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Entered main task group", v3, 2u);
  }

  v4 = *(v0 + 712);
  v69 = v4;
  v5 = *(v0 + 704);
  v6 = *(v0 + 688);
  v7 = *(v0 + 680);
  v55 = v7;
  v56 = *(v0 + 696);
  v58 = *(v0 + 672);
  v8 = *(v0 + 664);
  v9 = *(v0 + 656);
  v79 = *(v0 + 640);
  v75 = *(v0 + 648);
  v77 = *(v0 + 632);
  v73 = *(v0 + 536);
  v67 = *(v0 + 528);
  v82 = *(v0 + 520);
  v10 = *(v0 + 504);
  v11 = *(v0 + 488);
  v63 = *(v0 + 496);
  v65 = *(v0 + 512);
  v60 = *(v0 + 472);
  v61 = *(v0 + 480);
  v83 = *(v0 + 464);
  v81 = *(v0 + 456);
  v71 = *(v0 + 448);

  v85 = sub_1001D1BA0();
  v86 = *(*(v85 - 8) + 56);
  (v86)(v4, 1, 1, v85);
  sub_1001AFCB4(v11, v5, type metadata accessor for NWAsyncConnection.Inbound);
  (*(v8 + 16))(v7, v10, v9);
  v12 = (*(v6 + 80) + 104) & ~*(v6 + 80);
  v57 = (v56 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v8;
  v14 = (*(v8 + 80) + v57 + 8) & ~*(v8 + 80);
  v59 = (v58 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v81;
  v18 = *v83;
  v17 = v83[1];
  *(v16 + 72) = v83[2];
  *(v16 + 40) = v18;
  *(v16 + 56) = v17;
  *(v16 + 88) = v60;
  *(v16 + 96) = v61;
  sub_1001B0368(v5, v16 + v12, type metadata accessor for NWAsyncConnection.Inbound);
  *(v16 + v57) = v63;
  (*(v13 + 32))(v16 + v14, v55, v9);
  *(v16 + v59) = v65;
  *(v16 + v15) = v82;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v67;

  sub_10001208C(v83, v0 + 16, &qword_10022FD38, &qword_1001E1748);

  sub_10015C7D4(v4, &unk_1001E17B0, v16, &unk_100222E40, &qword_10022FD58, &qword_1001E1770, &unk_1001E1AF8);
  sub_100011F00(v4, &qword_100229350, &unk_1001D6BA0);
  (v86)(v4, 1, 1, v85);
  sub_1001AFCB4(v73, v75, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
  v19 = *(v77 + 80);
  v78 = ~v19;
  v20 = (v19 + 40) & ~v19;
  v21 = (v79 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v80 = v19;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v65;
  sub_1001B0368(v75, v23 + v20, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
  *(v23 + v21) = v81;
  *(v23 + v22) = v82;
  v24 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  v25 = *v83;
  v26 = v83[2];
  v24[1] = v83[1];
  v24[2] = v26;
  *v24 = v25;

  sub_10001208C(v83, v0 + 64, &qword_10022FD38, &qword_1001E1748);

  sub_10015C7D4(v69, &unk_1001E17C0, v23, &unk_100222E40, &qword_10022FD58, &qword_1001E1770, &unk_1001E1AF8);
  sub_100011F00(v69, &qword_100229350, &unk_1001D6BA0);
  v27 = v81 + qword_100243500;
  if (*(v27 + *(type metadata accessor for TrustedRequestConfiguration() + 96)) == 1)
  {
    v28 = *(v0 + 712);
    v29 = *(v0 + 648);
    v30 = *(v0 + 640);
    v31 = *(v0 + 544);
    v32 = *(v0 + 536);
    v33 = *(v0 + 448);
    v34 = *(v0 + 456);
    (v86)(v28, 1, 1, v85);
    sub_1001AFCB4(v32, v29, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v34;
    v35[5] = v31;
    sub_1001B0368(v29, v35 + ((v80 + 48) & v78), type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);

    sub_10015C7D4(v28, &unk_1001E17F8, v35, &unk_100222E40, &qword_10022FD58, &qword_1001E1770, &unk_1001E1AF8);
    sub_100011F00(v28, &qword_100229350, &unk_1001D6BA0);
  }

  v74 = *(v0 + 712);
  v36 = *(v0 + 648);
  v62 = v36;
  v66 = *(v0 + 640);
  v84 = *(v0 + 624);
  v37 = *(v0 + 616);
  v38 = *(v0 + 608);
  v39 = *(v0 + 600);
  v40 = *(v0 + 592);
  v41 = *(v0 + 552);
  v72 = *(v0 + 544);
  v42 = *(v0 + 536);
  v68 = *(v0 + 512);
  v70 = *(v0 + 528);
  v64 = *(v0 + 456);
  v76 = *(v0 + 448);
  v86();
  (*(v39 + 16))(v37, v41, v40);
  sub_1001AFCB4(v42, v36, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
  v43 = (*(v39 + 80) + 40) & ~*(v39 + 80);
  v44 = (v38 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 2) = 0;
  *(v47 + 3) = 0;
  *(v47 + 4) = v64;
  (*(v39 + 32))(&v47[v43], v37, v40);
  *&v47[v44] = v68;
  *&v47[v45] = v72;
  *&v47[v46] = v70;
  sub_1001B0368(v62, &v47[(v80 + v46 + 8) & v78], type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);

  sub_10015C7D4(v74, &unk_1001E17D0, v47, &unk_100222E40, &qword_10022FD58, &qword_1001E1770, &unk_1001E1AF8);
  sub_100011F00(v74, &qword_100229350, &unk_1001D6BA0);
  *(v0 + 136) = v84;
  *(v0 + 144) = &off_100221910;
  v48 = sub_10003B47C((v0 + 112));
  sub_1001AFCB4(v42, v48, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
  (v86)(v74, 1, 1, v85);
  sub_100044698(v0 + 112, v0 + 152);
  v49 = swift_allocObject();
  v49[2] = 0;
  v49[3] = 0;
  sub_1000446FC((v0 + 152), (v49 + 4));
  v49[9] = v64;

  sub_10015C7D4(v74, &unk_1001E17E0, v49, &unk_100222E40, &qword_10022FD58, &qword_1001E1770, &unk_1001E1AF8);
  sub_100011F00(v74, &qword_100229350, &unk_1001D6BA0);
  sub_100011CF0((v0 + 112));
  *(v0 + 728) = qword_1002434F8;
  *(v0 + 736) = 0u;
  *(v0 + 752) = 0u;
  v50 = async function pointer to TaskGroup.next(isolation:)[1];
  v51 = swift_task_alloc();
  *(v0 + 768) = v51;
  v52 = sub_100011AC0(&qword_10022FD70, &qword_1001E17E8);
  *v51 = v0;
  v51[1] = sub_100171248;
  v53 = *(v0 + 448);

  return TaskGroup.next(isolation:)(v0 + 384, 0, 0, v52);
}

uint64_t sub_100171248()
{
  v1 = *(*v0 + 768);
  v3 = *v0;

  return _swift_task_switch(sub_100171344, 0, 0);
}

uint64_t sub_100171344()
{
  v177 = v0;
  v1 = *(v0 + 392);
  if (v1 > 0xFD)
  {
    v2 = *(v0 + 760);
    if (v2)
    {
      *(v0 + 432) = v2;
      swift_errorRetain();
      sub_100011AC0(&qword_100227A58, &qword_1001D3600);
      if (swift_dynamicCast())
      {
        v3 = *(v0 + 192);
        v4 = *(v0 + 193);
        v5 = *(v0 + 200);
        if (v3 == 18 || v3 == 29)
        {
          v6 = *(v0 + 752);
          v7 = *(v0 + 744);
          v8 = *(v0 + 736);
          sub_100089BE4();
          v9 = swift_allocError();
          *v10 = v3;
          *(v10 + 1) = v4;
          *(v10 + 8) = v5;

LABEL_66:

          v175 = 1;
          goto LABEL_69;
        }

        v91 = *(v0 + 200);
      }
    }

    v92 = *(v0 + 736);
    if (v92)
    {
      v93 = *(v0 + 584);
      *(v0 + 424) = v92;
      swift_errorRetain();
      swift_errorRetain();
      sub_100011AC0(&qword_100227A58, &qword_1001D3600);
      v94 = sub_1001D1AC0();
      v95 = swift_dynamicCast();
      v96 = *(*(v94 - 8) + 56);
      if (!v95)
      {
        v116 = *(v0 + 760);
        v117 = *(v0 + 752);
        v118 = *(v0 + 744);
        v119 = *(v0 + 584);
        v175 = 1;
        v96(v119, 1, 1, v94);
        sub_100011F00(v119, &qword_10022FD68, &qword_1001E17A0);

        v9 = *(v0 + 736);
        goto LABEL_69;
      }

      v97 = *(v0 + 584);
      v96(v97, 0, 1, v94);
      sub_100011F00(v97, &qword_10022FD68, &qword_1001E17A0);
    }

    if (v2)
    {
      v98 = *(v0 + 576);
      *(v0 + 416) = *(v0 + 760);
      swift_errorRetain();
      swift_errorRetain();
      sub_100011AC0(&qword_100227A58, &qword_1001D3600);
      v99 = sub_1001D1AC0();
      v100 = swift_dynamicCast();
      v101 = *(*(v99 - 8) + 56);
      if (!v100)
      {
        v120 = *(v0 + 752);
        v121 = *(v0 + 744);
        v122 = *(v0 + 736);
        v123 = *(v0 + 576);
        v175 = 1;
        v101(v123, 1, 1, v99);
        sub_100011F00(v123, &qword_10022FD68, &qword_1001E17A0);

        v9 = *(v0 + 760);
        goto LABEL_69;
      }

      v102 = *(v0 + 576);
      v101(v102, 0, 1, v99);
      sub_100011F00(v102, &qword_10022FD68, &qword_1001E17A0);
    }

    v103 = *(v0 + 744);
    if (!v103)
    {
LABEL_42:
      v109 = *(v0 + 752);
      if (v109)
      {
        v110 = *(v0 + 560);
        *(v0 + 400) = v109;
        swift_errorRetain();
        swift_errorRetain();
        sub_100011AC0(&qword_100227A58, &qword_1001D3600);
        v111 = sub_1001D1AC0();
        v112 = swift_dynamicCast();
        v113 = *(*(v111 - 8) + 56);
        if (!v112)
        {
          v153 = *(v0 + 760);
          v154 = *(v0 + 744);
          v155 = *(v0 + 736);
          v156 = *(v0 + 560);
          v175 = 1;
          v113(v156, 1, 1, v111);
          sub_100011F00(v156, &qword_10022FD68, &qword_1001E17A0);

          v9 = *(v0 + 752);
          goto LABEL_69;
        }

        v114 = *(v0 + 560);
        v113(v114, 0, 1, v111);
        sub_100011F00(v114, &qword_10022FD68, &qword_1001E17A0);

        v115 = *(v0 + 752);
      }

      else
      {
        v115 = 0;
      }

      if (!(v115 | *(v0 + 760) | *(v0 + 744) | *(v0 + 736)))
      {
        v9 = 0;
        v175 = 0;
        goto LABEL_69;
      }

      sub_1001D1AC0();
      sub_1001B0458(&qword_1002295E0, &type metadata accessor for CancellationError);
      v9 = swift_allocError();
      sub_1001D16E0();

      goto LABEL_66;
    }

    v104 = *(v0 + 568);
    *(v0 + 408) = v103;
    swift_errorRetain();
    swift_errorRetain();
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    v105 = sub_1001D1AC0();
    v106 = swift_dynamicCast();
    v107 = *(*(v105 - 8) + 56);
    if (v106)
    {
      v108 = *(v0 + 568);
      v107(v108, 0, 1, v105);
      sub_100011F00(v108, &qword_10022FD68, &qword_1001E17A0);

      goto LABEL_42;
    }

    v124 = *(v0 + 760);
    v125 = *(v0 + 752);
    v126 = *(v0 + 736);
    v127 = *(v0 + 568);
    v175 = 1;
    v107(v127, 1, 1, v105);
    sub_100011F00(v127, &qword_10022FD68, &qword_1001E17A0);

    v9 = *(v0 + 744);
LABEL_69:
    v157 = *(v0 + 712);
    v158 = *(v0 + 704);
    v159 = *(v0 + 680);
    v160 = *(v0 + 648);
    v161 = *(v0 + 616);
    v162 = *(v0 + 584);
    v163 = *(v0 + 576);
    v164 = *(v0 + 568);
    v165 = *(v0 + 560);

    v166 = *(v0 + 8);

    return v166(v9, v175);
  }

  v11 = *(v0 + 384);
  v12 = v1 >> 5;
  if (v1 >> 5 <= 1)
  {
    if (v12)
    {
      v78 = *(v0 + 720);
      v79 = *(v0 + 456);
      if (v1)
      {
        sub_1001ACB00(*(v0 + 384), *(v0 + 392));

        sub_1001ACB00(v11, v1);
        v80 = sub_1001D0E50();
        v81 = sub_1001D1E00();

        sub_1001ACADC(v11, v1);
        v82 = os_log_type_enabled(v80, v81);
        v83 = *(v0 + 752);
        if (v82)
        {
          v173 = *(v0 + 728);
          v84 = *(v0 + 456);
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v176 = v87;
          *v85 = 136315394;
          sub_1001CFDA0();
          sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
          *(v0 + 272) = sub_1001D23A0();
          *(v0 + 280) = v88;
          v184._countAndFlagsBits = 58;
          v184._object = 0xE100000000000000;
          sub_1001D18B0(v184);
          v89 = sub_1000954E0(*(v0 + 272), *(v0 + 280), &v176);

          *(v85 + 4) = v89;
          *(v85 + 12) = 2112;
          sub_1001ACB14(v11, v1);
          v90 = _swift_stdlib_bridgeErrorToNSError();
          *(v85 + 14) = v90;
          *v86 = v90;
          _os_log_impl(&_mh_execute_header, v80, v81, "%s Data substream task failed. Error: %@", v85, 0x16u);
          sub_100011F00(v86, &unk_1002301D0, &qword_1001D4F50);

          sub_100011CF0(v87);
        }

        else
        {
          v169 = *(v0 + 752);
        }

        sub_1001ACADC(v11, v1);
        v53 = *(v0 + 736);
        *&v52 = v11;
        *(&v52 + 1) = *(v0 + 760);
        goto LABEL_60;
      }

      v144 = *(v0 + 456);

      v69 = sub_1001D0E50();
      v70 = sub_1001D1E00();

      if (!os_log_type_enabled(v69, v70))
      {
        goto LABEL_58;
      }

      v145 = *(v0 + 728);
      v146 = *(v0 + 456);
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v176 = v74;
      *v73 = 136315138;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      *(v0 + 288) = sub_1001D23A0();
      *(v0 + 296) = v147;
      v188._countAndFlagsBits = 58;
      v188._object = 0xE100000000000000;
      sub_1001D18B0(v188);
      v148 = sub_1000954E0(*(v0 + 288), *(v0 + 296), &v176);

      *(v73 + 4) = v148;
      v77 = "%s Data substream task finished successfully";
    }

    else
    {
      v29 = *(v0 + 720);
      v30 = *(v0 + 456);
      if (v1)
      {
        sub_1001ACB00(*(v0 + 384), *(v0 + 392));

        sub_1001ACB00(v11, v1);
        v31 = sub_1001D0E50();
        v32 = sub_1001D1E00();

        sub_1001ACADC(v11, v1);
        if (os_log_type_enabled(v31, v32))
        {
          v174 = *(v0 + 728);
          v33 = *(v0 + 456);
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v176 = v36;
          *v34 = 136315394;
          sub_1001CFDA0();
          sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
          *(v0 + 352) = sub_1001D23A0();
          *(v0 + 360) = v37;
          v180._countAndFlagsBits = 58;
          v180._object = 0xE100000000000000;
          sub_1001D18B0(v180);
          v38 = sub_1000954E0(*(v0 + 352), *(v0 + 360), &v176);

          *(v34 + 4) = v38;
          *(v34 + 12) = 2112;
          sub_1001ACB14(v11, v1);
          v39 = _swift_stdlib_bridgeErrorToNSError();
          *(v34 + 14) = v39;
          *v35 = v39;
          _os_log_impl(&_mh_execute_header, v31, v32, "%s Ropes request failed. Error: %@", v34, 0x16u);
          sub_100011F00(v35, &unk_1002301D0, &qword_1001D4F50);

          sub_100011CF0(v36);
        }

        v40 = *(v0 + 720);
        v41 = *(v0 + 456);

        v42 = sub_1001D0E50();
        v43 = sub_1001D1DD0();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = *(v0 + 728);
          v45 = *(v0 + 456);
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v176 = v47;
          *v46 = 136315138;
          sub_1001CFDA0();
          sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
          *(v0 + 336) = sub_1001D23A0();
          *(v0 + 344) = v48;
          v181._countAndFlagsBits = 58;
          v181._object = 0xE100000000000000;
          sub_1001D18B0(v181);
          v49 = sub_1000954E0(*(v0 + 336), *(v0 + 344), &v176);

          *(v46 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v42, v43, "%s Cancelling main task group", v46, 0xCu);
          sub_100011CF0(v47);
        }

        v50 = *(v0 + 736);
        v51 = **(v0 + 448);
        sub_100011AC0(&qword_10022FD58, &qword_1001E1770);
        sub_1001D1AE0();

        sub_1001ACADC(v11, v1);
        v52 = *(v0 + 752);
        *&v53 = v11;
        *(&v53 + 1) = *(v0 + 744);
        goto LABEL_60;
      }

      v139 = *(v0 + 456);

      v69 = sub_1001D0E50();
      v70 = sub_1001D1E00();

      if (!os_log_type_enabled(v69, v70))
      {
        goto LABEL_58;
      }

      v140 = *(v0 + 728);
      v141 = *(v0 + 456);
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v176 = v74;
      *v73 = 136315138;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      *(v0 + 368) = sub_1001D23A0();
      *(v0 + 376) = v142;
      v187._countAndFlagsBits = 58;
      v187._object = 0xE100000000000000;
      sub_1001D18B0(v187);
      v143 = sub_1000954E0(*(v0 + 368), *(v0 + 376), &v176);

      *(v73 + 4) = v143;
      v77 = "%s Ropes request finished successfully";
    }

LABEL_57:
    _os_log_impl(&_mh_execute_header, v69, v70, v77, v73, 0xCu);
    sub_100011CF0(v74);

LABEL_58:

    sub_1001ACADC(v11, v1);
    goto LABEL_59;
  }

  if (v12 == 2)
  {
    v54 = *(v0 + 720);
    v55 = *(v0 + 456);
    if (v1)
    {
      sub_1001ACB00(*(v0 + 384), *(v0 + 392));

      sub_1001ACB00(v11, v1);
      v56 = sub_1001D0E50();
      v57 = sub_1001D1E00();

      sub_1001ACADC(v11, v1);
      v58 = os_log_type_enabled(v56, v57);
      v59 = *(v0 + 744);
      if (v58)
      {
        v172 = *(v0 + 728);
        v60 = *(v0 + 456);
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v176 = v63;
        *v61 = 136315394;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
        *(v0 + 304) = sub_1001D23A0();
        *(v0 + 312) = v64;
        v182._countAndFlagsBits = 58;
        v182._object = 0xE100000000000000;
        sub_1001D18B0(v182);
        v65 = sub_1000954E0(*(v0 + 304), *(v0 + 312), &v176);

        *(v61 + 4) = v65;
        *(v61 + 12) = 2112;
        sub_1001ACB14(v11, v1);
        v66 = _swift_stdlib_bridgeErrorToNSError();
        *(v61 + 14) = v66;
        *v62 = v66;
        _os_log_impl(&_mh_execute_header, v56, v57, "%s Response bypass substream task failed. Error: %@", v61, 0x16u);
        sub_100011F00(v62, &unk_1002301D0, &qword_1001D4F50);

        sub_100011CF0(v63);
      }

      else
      {
        v167 = *(v0 + 744);
      }

      sub_1001ACADC(v11, v1);
      v52 = *(v0 + 752);
      *&v53 = *(v0 + 736);
      *(&v53 + 1) = v11;
      goto LABEL_60;
    }

    v128 = *(v0 + 456);

    v69 = sub_1001D0E50();
    v70 = sub_1001D1E00();

    if (!os_log_type_enabled(v69, v70))
    {
      goto LABEL_58;
    }

    v129 = *(v0 + 728);
    v130 = *(v0 + 456);
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v176 = v74;
    *v73 = 136315138;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    *(v0 + 320) = sub_1001D23A0();
    *(v0 + 328) = v131;
    v185._countAndFlagsBits = 58;
    v185._object = 0xE100000000000000;
    sub_1001D18B0(v185);
    v132 = sub_1000954E0(*(v0 + 320), *(v0 + 328), &v176);

    *(v73 + 4) = v132;
    v77 = "%s Response bypass substream task finished successfully";
    goto LABEL_57;
  }

  if (v12 == 3)
  {
    if (v1)
    {
      *(v0 + 440) = v11;
      sub_1001ACB00(v11, v1);
      sub_1001ACB14(v11, v1);
      sub_100011AC0(&qword_100227A58, &qword_1001D3600);
      if (swift_dynamicCast())
      {
        v13 = *(v0 + 224);
        v14 = *(v0 + 232);

        if (v13 == 18 || v13 == 29)
        {
          v15 = **(v0 + 448);
          sub_100011AC0(&qword_10022FD58, &qword_1001E1770);
          sub_1001D1AE0();
        }
      }

      v16 = *(v0 + 720);
      v17 = *(v0 + 456);

      sub_1001ACB00(v11, v1);
      v18 = sub_1001D0E50();
      v19 = sub_1001D1E00();

      sub_1001ACADC(v11, v1);
      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 760);
      if (v20)
      {
        v171 = *(v0 + 728);
        v22 = *(v0 + 456);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v176 = v25;
        *v23 = 136315394;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
        *(v0 + 240) = sub_1001D23A0();
        *(v0 + 248) = v26;
        v179._countAndFlagsBits = 58;
        v179._object = 0xE100000000000000;
        sub_1001D18B0(v179);
        v27 = sub_1000954E0(*(v0 + 240), *(v0 + 248), &v176);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2112;
        sub_1001ACB14(v11, v1);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 14) = v28;
        *v24 = v28;
        _os_log_impl(&_mh_execute_header, v18, v19, "%s Node substreams task failed. error: %@", v23, 0x16u);
        sub_100011F00(v24, &unk_1002301D0, &qword_1001D4F50);

        sub_100011CF0(v25);
      }

      else
      {
        v168 = *(v0 + 760);
      }

      sub_1001ACADC(v11, v1);
      v53 = *(v0 + 736);
      *&v52 = *(v0 + 752);
      *(&v52 + 1) = v11;
      goto LABEL_60;
    }

    v133 = *(v0 + 720);
    v134 = *(v0 + 456);

    v69 = sub_1001D0E50();
    v70 = sub_1001D1E00();

    if (!os_log_type_enabled(v69, v70))
    {
      goto LABEL_58;
    }

    v135 = *(v0 + 728);
    v136 = *(v0 + 456);
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v176 = v74;
    *v73 = 136315138;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    *(v0 + 256) = sub_1001D23A0();
    *(v0 + 264) = v137;
    v186._countAndFlagsBits = 58;
    v186._object = 0xE100000000000000;
    sub_1001D18B0(v186);
    v138 = sub_1000954E0(*(v0 + 256), *(v0 + 264), &v176);

    *(v73 + 4) = v138;
    v77 = "%s Node substreams task finished successfully";
    goto LABEL_57;
  }

  v67 = *(v0 + 720);
  v68 = *(v0 + 456);

  v69 = sub_1001D0E50();
  v70 = sub_1001D1E00();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = *(v0 + 728);
    v72 = *(v0 + 456);
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v176 = v74;
    *v73 = 136315138;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    *(v0 + 208) = sub_1001D23A0();
    *(v0 + 216) = v75;
    v183._countAndFlagsBits = 58;
    v183._object = 0xE100000000000000;
    sub_1001D18B0(v183);
    v76 = sub_1000954E0(*(v0 + 208), *(v0 + 216), &v176);

    *(v73 + 4) = v76;
    v77 = "%s Connection metrics reporting finished";
    goto LABEL_57;
  }

LABEL_59:
  v53 = *(v0 + 736);
  v52 = *(v0 + 752);
LABEL_60:
  *(v0 + 736) = v53;
  *(v0 + 752) = v52;
  v149 = async function pointer to TaskGroup.next(isolation:)[1];
  v150 = swift_task_alloc();
  *(v0 + 768) = v150;
  v151 = sub_100011AC0(&qword_10022FD70, &qword_1001E17E8);
  *v150 = v0;
  v150[1] = sub_100171248;
  v152 = *(v0 + 448);

  return TaskGroup.next(isolation:)(v0 + 384, 0, 0, v151);
}

uint64_t sub_100172AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v171 = a3;
  v174 = a2;
  v166 = type metadata accessor for ValidatedAttestation();
  v9 = *(*(v166 - 8) + 64);
  __chkstk_darwin(v166, v10);
  v165 = v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for ValidatedAttestationOrAttestation();
  v167 = *(v168 - 8);
  v12 = *(v167 + 64);
  v14 = __chkstk_darwin(v168, v13);
  v169 = v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v175 = v156 - v17;
  v18 = sub_1001D1380();
  v181 = *(v18 - 8);
  v19 = *(v181 + 8);
  v21 = __chkstk_darwin(v18, v20);
  v172 = v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v23);
  v25 = v156 - v24;
  v26 = sub_1001D0ED0();
  v178 = *(v26 - 8);
  v179 = v26;
  v27 = *(v178 + 64);
  __chkstk_darwin(v26, v28);
  v177 = v156 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1001D1810();
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8, v32);
  v173 = qword_100243508;
  v33 = sub_1001D0870();
  v34 = v4 + qword_100243500;
  v190 = type metadata accessor for TrustedRequestConfiguration();
  v35 = v190[19];
  v180 = v34;
  LODWORD(v35) = *(v34 + v35);
  v176 = v25;
  if (v35 == 1)
  {
    v36 = sub_1001A6DA4(&off_10021CA38);
    swift_arrayDestroy();

    v37 = sub_1001A735C(v33, v36, v6);

    swift_bridgeObjectRelease_n();

    v33 = v37;
  }

  v38 = *(v6 + *(*v6 + 344));
  v184 = v33;
  sub_100011AC0(&qword_1002292B8, &qword_1001DD2C0);
  sub_1000594F0();
  v39 = sub_1001CF800();
  v41 = v40;

  if (!v5)
  {
    v160 = a1;
    v170 = v6;
    v163 = 0;
    v164 = a4;
    sub_1001D1800();
    v161 = v39;
    v162 = v41;
    v43 = sub_1001D17F0();
    if (v44)
    {
      v45 = v43;
    }

    else
    {
      v45 = 0;
    }

    v158 = v45;
    v46 = 0xE000000000000000;
    if (v44)
    {
      v46 = v44;
    }

    v157 = v46;
    sub_100011AC0(&qword_10022FF18, &qword_1001E1C50);
    v47 = sub_100011AC0(&qword_10022FF20, &qword_1001E1C58);
    v48 = *(*(v47 - 8) + 72);
    v49 = (*(*(v47 - 8) + 80) + 32) & ~*(*(v47 - 8) + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1001D3C60;
    v159 = v50;
    v51 = v50 + v49;
    v52 = (v50 + v49 + *(v47 + 48));
    if (qword_1002276A8 != -1)
    {
      swift_once();
    }

    v53 = sub_10003A37C(v18, qword_100242D78);
    v54 = *(v181 + 2);
    v54(v51, v53, v18);
    v156[1] = qword_1002434F8;
    v55 = v170;
    *v52 = sub_1001CFD70();
    v52[1] = v56;
    v57 = (v51 + v48 + *(v47 + 48));
    if (qword_1002276B0 != -1)
    {
      swift_once();
    }

    v58 = sub_10003A37C(v18, qword_100242D90);
    v54(v51 + v48, v58, v18);
    v59 = v55 + *(*v55 + 320);
    v60 = *(v59 + 152);
    *v57 = *(v59 + 144);
    v57[1] = v60;
    v61 = (v51 + 2 * v48 + *(v47 + 48));
    v62 = qword_1002276B8;

    if (v62 != -1)
    {
      swift_once();
    }

    v63 = sub_10003A37C(v18, qword_100242DA8);
    v54(v51 + 2 * v48, v63, v18);
    *v61 = sub_1001D0890();
    v61[1] = v64;
    v65 = (v51 + 3 * v48 + *(v47 + 48));
    if (qword_1002276C0 != -1)
    {
      swift_once();
    }

    v66 = sub_10003A37C(v18, qword_100242DC0);
    v54(v51 + 3 * v48, v66, v18);
    v67 = v157;
    *v65 = v158;
    v65[1] = v67;
    v68 = v180;
    if (qword_1002276C8 != -1)
    {
      swift_once();
    }

    v69 = sub_10003A37C(v18, qword_100242DD8);
    v54(v51 + 4 * v48, v69, v18);
    v70 = *(v68 + v190[33]);
    v181 = v54;
    if (v70)
    {
      if (v70 == 1)
      {
        v71 = 0xE300000000000000;
        v72 = 7827308;
      }

      else
      {
        v71 = 0xEA0000000000646ELL;
        v72 = 0x756F72676B636162;
      }
    }

    else
    {
      v71 = 0xE400000000000000;
      v72 = 1751607656;
    }

    v73 = (v51 + 4 * v48 + *(v47 + 48));
    *v73 = v72;
    v73[1] = v71;
    v74 = (v51 + 5 * v48 + *(v47 + 48));
    if (qword_1002276D8 != -1)
    {
      swift_once();
    }

    v75 = sub_10003A37C(v18, qword_100242E08);
    v76 = v181;
    v181(v51 + 5 * v48, v75, v18);
    v77 = (v68 + v190[27]);
    v78 = v77[1];
    *v74 = *v77;
    v74[1] = v78;
    v79 = (v51 + 6 * v48 + *(v47 + 48));
    v80 = qword_1002276E0;

    if (v80 != -1)
    {
      swift_once();
    }

    v81 = sub_10003A37C(v18, qword_100242E20);
    v76(v51 + 6 * v48, v81, v18);
    v184 = v174;
    *v79 = sub_1001D23A0();
    v79[1] = v82;
    v83 = (v51 + 7 * v48 + *(v47 + 48));
    sub_1001D1330();
    *v83 = 0xD000000000000011;
    v83[1] = 0x80000001001E7730;
    v84 = (v51 + 8 * v48 + *(v47 + 48));
    sub_1001D1370();
    *v84 = 0xD000000000000014;
    v84[1] = 0x80000001001E13D0;
    v85 = (v51 + 9 * v48 + *(v47 + 48));
    sub_1001D1340();
    v184 = 0;
    v185 = 0xE000000000000000;
    sub_1001D2030(23);

    v184 = 0xD000000000000014;
    v185 = 0x80000001001E7750;
    v86 = *(v160 + 16);
    v87 = *(v160 + 24);
    v182 = sub_1001CFBF0(0);
    v183 = v88;
    v188 = 43;
    v189 = 0xE100000000000000;
    v186 = 45;
    v187 = 0xE100000000000000;
    sub_100011EAC();
    v89 = sub_1001D1F30();
    v91 = v90;

    v182 = v89;
    v183 = v91;
    v188 = 47;
    v189 = 0xE100000000000000;
    v186 = 95;
    v187 = 0xE100000000000000;
    v92 = sub_1001D1F30();
    v94 = v93;

    v182 = v92;
    v183 = v94;
    v188 = 61;
    v189 = 0xE100000000000000;
    v186 = 0;
    v187 = 0xE000000000000000;
    v95 = sub_1001D1F30();
    v97 = v96;

    v191._countAndFlagsBits = v95;
    v191._object = v97;
    sub_1001D18B0(v191);

    v192._countAndFlagsBits = 34;
    v192._object = 0xE100000000000000;
    sub_1001D18B0(v192);
    v98 = v185;
    *v85 = v184;
    v85[1] = v98;
    v99 = v177;
    sub_1001D0EC0();
    v100 = v180;
    v101 = (v180 + v190[28]);
    v102 = v176;
    v103 = v170;
    if (v101[1])
    {
      v104 = *v101;
      v105 = qword_1002276D0;

      if (v105 != -1)
      {
        swift_once();
      }

      v106 = sub_10003A37C(v18, qword_100242DF0);
      v181(v102, v106, v18);
      sub_1001D0EF0();
    }

    v107 = [objc_opt_self() automatedDeviceGroup];
    if (v107)
    {
      v108 = v102;
      v109 = v107;
      sub_1001D17D0();

      if (qword_1002276E8 != -1)
      {
        swift_once();
      }

      v110 = sub_10003A37C(v18, qword_100242E38);
      v102 = v108;
      v181(v108, v110, v18);
      sub_1001D0EF0();
    }

    v111 = v190;
    v112 = (v100 + v190[20]);
    v113 = v181;
    if (v112[1])
    {
      v114 = *v112;
      v115 = qword_1002276F0;

      if (v115 != -1)
      {
        swift_once();
      }

      v116 = sub_10003A37C(v18, qword_100242E50);
      v113(v102, v116, v18);
      sub_1001D0EF0();
      v111 = v190;
    }

    v117 = (v100 + v111[21]);
    if (v117[1])
    {
      v118 = *v117;
      v119 = qword_1002276F8;

      if (v119 != -1)
      {
        swift_once();
      }

      v120 = sub_10003A37C(v18, qword_100242E68);
      v113(v102, v120, v18);
      sub_1001D0EF0();
      v111 = v190;
    }

    v121 = (v100 + v111[22]);
    if (v121[1])
    {
      v122 = *v121;
      v123 = qword_100227718;

      if (v123 != -1)
      {
        swift_once();
      }

      v124 = sub_10003A37C(v18, qword_100242EC8);
      v113(v102, v124, v18);
      sub_1001D0EF0();
      v111 = v190;
    }

    v125 = (v100 + v111[25]);
    if (v125[1])
    {
      v126 = *v125;
      v127 = qword_100227730;

      if (v127 != -1)
      {
        swift_once();
      }

      v128 = sub_10003A37C(v18, qword_100242F10);
      v113(v102, v128, v18);
      sub_1001D0EF0();
      v111 = v190;
    }

    v129 = v175;
    if (*(v100 + v111[23]) != 2)
    {
      if (qword_100227728 != -1)
      {
        swift_once();
      }

      v130 = sub_10003A37C(v18, qword_100242EF8);
      v181(v172, v130, v18);
      sub_1001D0EF0();
      v100 = v180;
    }

    v131 = v181;
    if (*(v100 + 72) == 1)
    {
      if (qword_100227720 != -1)
      {
        swift_once();
      }

      v132 = sub_10003A37C(v18, qword_100242EE0);
      v131(v102, v132, v18);
      sub_1001D0EF0();
    }

    if (*(v100 + 40))
    {
      v133 = *(v100 + 32);
      v134 = qword_100227700;

      if (v134 != -1)
      {
        swift_once();
      }

      v135 = sub_10003A37C(v18, qword_100242E80);
      v131(v102, v135, v18);
      sub_1001D0EF0();
      if (qword_100227708 != -1)
      {
        swift_once();
      }

      v136 = sub_10003A37C(v18, qword_100242E98);
      v131(v102, v136, v18);
      sub_1001D0EF0();
    }

    else if (*(v171 + 16))
    {
      sub_1001AFCB4(v171 + ((*(v167 + 80) + 32) & ~*(v167 + 80)), v129, type metadata accessor for ValidatedAttestationOrAttestation);
      v150 = v169;
      sub_1001AFCB4(v129, v169, type metadata accessor for ValidatedAttestationOrAttestation);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1001AFB98(v150, type metadata accessor for ValidatedAttestationOrAttestation);
        sub_1001AFB98(v129, type metadata accessor for ValidatedAttestationOrAttestation);
      }

      else
      {
        v151 = v165;
        sub_1001B0368(v150, v165, type metadata accessor for ValidatedAttestation);
        v152 = (v151 + *(v166 + 36));
        v153 = *v152;
        v154 = v152[1];

        sub_1001AFB98(v151, type metadata accessor for ValidatedAttestation);
        if (v154)
        {
          if (qword_100227700 != -1)
          {
            swift_once();
          }

          v155 = sub_10003A37C(v18, qword_100242E80);
          v181(v102, v155, v18);
          sub_1001D0EF0();
        }

        sub_1001AFB98(v129, type metadata accessor for ValidatedAttestationOrAttestation);
      }
    }

    v137 = *(*v103 + 392);

    v138 = sub_1001D0E50();
    v139 = sub_1001D1E00();

    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      *v140 = 136315394;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      v184 = sub_1001D23A0();
      v185 = v141;
      v193._countAndFlagsBits = 2629690;
      v193._object = 0xE300000000000000;
      sub_1001D18B0(v193);
      v194._countAndFlagsBits = 1953460082;
      v194._object = 0xE400000000000000;
      sub_1001D18B0(v194);
      v195._countAndFlagsBits = 41;
      v195._object = 0xE100000000000000;
      sub_1001D18B0(v195);
      v142 = sub_1000954E0(v184, v185, &v188);

      *(v140 + 4) = v142;
      *(v140 + 12) = 2080;
      swift_beginAccess();
      v143 = HTTPFields.loggingDescription.getter();
      v145 = sub_1000954E0(v143, v144, &v188);

      *(v140 + 14) = v145;
      _os_log_impl(&_mh_execute_header, v138, v139, "%s sending headers\n%s", v140, 0x16u);
      swift_arrayDestroy();
    }

    sub_100011E48(v161, v162);

    v146 = v164;
    swift_beginAccess();
    v147 = v178;
    v148 = v146;
    v149 = v179;
    (*(v178 + 16))(v148, v99, v179);
    return (*(v147 + 8))(v99, v149);
  }

  return result;
}

uint64_t sub_100173F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[4] = a2;
  v4[2] = a1;
  return _swift_task_switch(sub_100173F5C, 0, 0);
}

uint64_t sub_100173F5C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  *(v0 + 152) = 0;
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = 0x10000;
  *(v0 + 64) = *(v1 + *(*v1 + 368));
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  *(v4 + 40) = 1;
  *(v4 + 48) = 2;
  *(v4 + 56) = v0 + 16;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_10017409C;

  return (sub_1001637E0)();
}

uint64_t sub_10017409C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_100174388;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1001741B8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001741B8()
{
  *(v0 + 153) = 0;
  v1 = *(v0 + 48);
  v2 = *(v1 + *(*v1 + 272));
  *(v0 + 96) = v2;
  v3 = OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_waiterIDGenerator;
  *(v0 + 104) = OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_waiterIDGenerator;
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = swift_task_alloc();
  v14 = v6;
  *(v0 + 112) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = 1;
  *(v6 + 32) = 2;
  *(v6 + 40) = v0 + 153;
  *(v6 + 48) = v0 + 16;
  *(v6 + 56) = v0 + 152;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v15 = *(v2 + v3);
  do
  {
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v16 = v15;
    atomic_compare_exchange_strong_explicit((*(v0 + 96) + *(v0 + 104)), &v16, v15 + 1, memory_order_relaxed, memory_order_relaxed);
    v17 = v16 == v15;
    v15 = v16;
  }

  while (!v17);
  v18 = *(v0 + 96);
  v19 = swift_task_alloc();
  *(v0 + 120) = v19;
  v19[2] = v18;
  v19[3] = v15;
  v19[4] = &unk_1001E1AC0;
  v19[5] = v14;
  v20 = swift_task_alloc();
  *(v0 + 128) = v20;
  *(v20 + 16) = v18;
  *(v20 + 24) = v15;
  v21 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  *(v6 + 8) = sub_1001743F8;
  v7 = &unk_1001E1AC8;
  v9 = sub_100119C4C;
  v13 = &type metadata for () + 8;
  v8 = v19;
  v10 = v20;
  v11 = 0;
  v12 = 0;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_100174388()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[11];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1001743F8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v9 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_100174900;
  }

  else
  {
    v6 = v2[15];
    v5 = v2[16];
    v7 = v2[14];

    v4 = sub_100174528;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100174528()
{
  v38 = v0;
  if (*(v0 + 153) == 1)
  {
    v1 = *(**(v0 + 48) + 392);

    v2 = sub_1001D0E50();
    v3 = sub_1001D1E00();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 48);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v34 = v6;
      *v5 = 136315138;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      v35 = sub_1001D23A0();
      v36 = v7;
      v40._countAndFlagsBits = 2629690;
      v40._object = 0xE300000000000000;
      sub_1001D18B0(v40);
      v37._countAndFlagsBits = 0x202C61746164;
      v37._object = 0xE600000000000000;
      *(v0 + 24) = 1;
      v41._countAndFlagsBits = sub_1001D23A0();
      sub_1001D18B0(v41);

      sub_1001D18B0(v37);

      v42._countAndFlagsBits = 41;
      v42._object = 0xE100000000000000;
      sub_1001D18B0(v42);
      v8 = sub_1000954E0(v35, v36, &v34);

      *(v5 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "%s Finished sending all user data", v5, 0xCu);
      sub_100011CF0(v6);
    }

    v9 = *(v0 + 56);
    v10 = *(v0 + 64);
    sub_100164B24();

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    v17 = *(v0 + 32);
    v18 = swift_task_alloc();
    v26 = v18;
    *(v0 + 112) = v18;
    *(v18 + 16) = v16;
    *(v18 + 24) = 1;
    *(v18 + 32) = 2;
    *(v18 + 40) = v0 + 153;
    *(v18 + 48) = v0 + 16;
    *(v18 + 56) = v0 + 152;
    *(v18 + 64) = v15;
    *(v18 + 72) = v17;
    v27 = *(v14 + v13);
    do
    {
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v18, v19, v20, v21, v22, v23, v24, v25);
      }

      v28 = v27;
      atomic_compare_exchange_strong_explicit((*(v0 + 96) + *(v0 + 104)), &v28, v27 + 1, memory_order_relaxed, memory_order_relaxed);
      v29 = v28 == v27;
      v27 = v28;
    }

    while (!v29);
    v30 = *(v0 + 96);
    v31 = swift_task_alloc();
    *(v0 + 120) = v31;
    v31[2] = v30;
    v31[3] = v27;
    v31[4] = &unk_1001E1AC0;
    v31[5] = v26;
    v32 = swift_task_alloc();
    *(v0 + 128) = v32;
    *(v32 + 16) = v30;
    *(v32 + 24) = v27;
    v33 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
    v18 = swift_task_alloc();
    *(v0 + 136) = v18;
    *v18 = v0;
    *(v18 + 8) = sub_1001743F8;
    v19 = &unk_1001E1AC8;
    v21 = sub_100119C4C;
    v25 = &type metadata for () + 8;
    v20 = v31;
    v22 = v32;
    v23 = 0;
    v24 = 0;

    return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_100174900()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[7];

  v5 = v0[18];
  v6 = v0[1];

  return v6();
}

uint64_t sub_10017498C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return _swift_task_switch(sub_1001749B0, 0, 0);
}

void sub_1001749B0()
{
  v23 = v0;
  v1 = *(**(v0 + 56) + 392);

  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 56);
    v5 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v20 = sub_1001D23A0();
    v21 = v8;
    v25._countAndFlagsBits = 2629690;
    v25._object = 0xE300000000000000;
    sub_1001D18B0(v25);
    sub_1001D2030(18);

    v22._countAndFlagsBits = 0xD000000000000010;
    v22._object = 0x80000001001E7540;
    *(v0 + 24) = v5;
    v26._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v26);

    sub_1001D18B0(v22);

    v27._countAndFlagsBits = 41;
    v27._object = 0xE100000000000000;
    sub_1001D18B0(v27);
    v9 = sub_1000954E0(v20, v21, &v19);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s starting response bypass context=%ld", v6, 0x16u);
    sub_100011CF0(v7);
  }

  v10 = *(v0 + 32);
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v0 + 56);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    sub_1001D2030(18);

    v22._countAndFlagsBits = 0xD000000000000010;
    v22._object = 0x80000001001E7540;
    *(v0 + 16) = v10;
    v28._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v28);

    countAndFlagsBits = v22._countAndFlagsBits;
    object = v22._object;
    *(v0 + 64) = v22._object;
    v14 = swift_task_alloc();
    *(v0 + 72) = v14;
    *(v14 + 16) = v11;
    *(v14 + 24) = v10;
    *(v14 + 32) = 1;
    v15 = swift_task_alloc();
    *(v0 + 80) = v15;
    *v15 = v0;
    v15[1] = sub_100174D44;
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    v18 = *(v0 + 32);

    sub_100198D5C(sub_100198D5C, v18, countAndFlagsBits, object, &unk_1001E1808, v16, &unk_1001E1818, v14);
  }
}

uint64_t sub_100174D44()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v5 = sub_1001701E8;
  }

  else
  {
    v5 = sub_100013F2C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100174E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[105] = a7;
  v7[104] = a6;
  v7[103] = a5;
  v7[102] = a4;
  v7[101] = a3;
  v7[95] = a2;
  v8 = sub_100011AC0(&qword_10022F188, &qword_1001E06F0);
  v7[106] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[107] = swift_task_alloc();
  v10 = sub_100011AC0(&qword_10022FDA8, &qword_1001E1878);
  v7[108] = v10;
  v11 = *(v10 - 8);
  v7[109] = v11;
  v12 = *(v11 + 64) + 15;
  v7[110] = swift_task_alloc();
  v13 = sub_100011AC0(&qword_10022FDB0, &qword_1001E1880);
  v7[111] = v13;
  v14 = *(v13 - 8);
  v7[112] = v14;
  v15 = *(v14 + 64) + 15;
  v7[113] = swift_task_alloc();
  v16 = sub_100011AC0(&qword_10022FDB8, &qword_1001E1888);
  v7[114] = v16;
  v17 = *(v16 - 8);
  v7[115] = v17;
  v7[116] = *(v17 + 64);
  v7[117] = swift_task_alloc();
  v7[118] = swift_task_alloc();

  return _swift_task_switch(sub_100175098, 0, 0);
}

uint64_t sub_100175098()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 936);
  v19 = *(v0 + 928);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 904);
  v6 = *(v0 + 880);
  v7 = *(v0 + 872);
  v8 = *(v0 + 864);
  v23 = *(v0 + 808);
  v9 = *(v0 + 760);
  v20 = *(v0 + 832);
  v21 = *(v0 + 816);
  (*(v7 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v8);
  sub_1001D1BB0();
  (*(v7 + 8))(v6, v8);
  (*(v3 + 16))(v2, v1, v4);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v2, v4);
  *(v11 + ((v19 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v12 = swift_allocObject();
  *(v0 + 952) = v12;
  *(v12 + 16) = &unk_1001E1898;
  *(v12 + 24) = v11;

  swift_asyncLet_begin();
  v13 = sub_100011AC0(&qword_10022FDC0, &qword_1001E18A8);
  v14 = sub_100011AC0(&qword_10022FD60, &qword_1001E1778);
  v15 = swift_task_alloc();
  *(v0 + 960) = v15;
  *(v15 + 16) = v9;
  *(v15 + 24) = v23;
  *(v15 + 32) = v5;
  *(v15 + 40) = v21;
  *(v15 + 56) = vextq_s8(v20, v20, 8uLL);
  v16 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v17 = swift_task_alloc();
  *(v0 + 968) = v17;
  *v17 = v0;
  v17[1] = sub_100175354;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 696, v13, v14, 0, 0, &unk_1001E18B8, v15, v13);
}

uint64_t sub_100175354()
{
  v1 = *(*v0 + 968);
  v2 = *(*v0 + 960);
  v4 = *v0;

  return _swift_task_switch(sub_10017546C, 0, 0);
}

uint64_t sub_10017546C()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 888);
  *(v0 + 976) = *(v0 + 696);
  *(v0 + 705) = *(v0 + 704);
  sub_1001D1BD0();

  return _swift_asyncLet_get(v0 + 16);
}

uint64_t sub_100175504()
{
  if (*(v0 + 705))
  {
    *(v0 + 712) = *(v0 + 976);
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
  }

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_1001755D4()
{
  v32 = v0;
  v1 = v0[119];
  v2 = v0[113];
  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[95];
  (*(v0[115] + 8))(v0[118], v0[114]);
  (*(v3 + 8))(v2, v4);
  sub_100183F84(v5);

  v6 = v5 + qword_100243500;
  if (*(v6 + *(type metadata accessor for TrustedRequestConfiguration() + 96)) == 1)
  {
    v7 = v0[107];
    v8 = v0[106];
    v9 = v0[103];
    sub_100089BE4();
    v10 = swift_allocError();
    *v11 = 5916;
    *(v11 + 8) = &_swiftEmptyArrayStorage;
    v12 = (v9 + *(*v9 + 88));
    os_unfair_lock_lock(v12);
    v13 = *(sub_100011AC0(&qword_10022F148, &qword_1001E06B0) + 28);
    *v7 = v10;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    LOBYTE(v8) = sub_10019ACD8(v7);
    sub_100011F00(v7, &qword_10022F188, &qword_1001E06F0);
    os_unfair_lock_unlock(v12);

    if (v8)
    {
      v14 = *(*v0[95] + 392);

      v15 = sub_1001D0E50();
      v16 = sub_1001D1DD0();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = v0[95];
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v29 = v19;
        *v18 = 136315138;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
        v30 = sub_1001D23A0();
        v31 = v20;
        v34._countAndFlagsBits = 58;
        v34._object = 0xE100000000000000;
        sub_1001D18B0(v34);
        v21 = sub_1000954E0(v30, v31, &v29);

        *(v18 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v15, v16, "%s No response bypass context received from any node", v18, 0xCu);
        sub_100011CF0(v19);
      }
    }
  }

  v22 = v0[118];
  v23 = v0[117];
  v24 = v0[113];
  v25 = v0[110];
  v26 = v0[107];

  v27 = v0[1];

  return v27();
}

uint64_t sub_10017594C()
{
  v1 = v0[119];
  v2 = v0[113];
  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[95];
  (*(v0[115] + 8))(v0[118], v0[114]);
  (*(v3 + 8))(v2, v4);
  sub_100183F84(v5);

  v6 = v5 + qword_100243500;
  if (*(v6 + *(type metadata accessor for TrustedRequestConfiguration() + 96)) == 1)
  {
    v7 = v0[122];
    v8 = v0[107];
    v9 = v0[106];
    v10 = (v0[103] + *(*v0[103] + 88));
    os_unfair_lock_lock(v10);
    v11 = *(sub_100011AC0(&qword_10022F148, &qword_1001E06B0) + 28);
    *v8 = v7;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    sub_10019ACD8(v8);
    sub_100011F00(v8, &qword_10022F188, &qword_1001E06F0);
    os_unfair_lock_unlock(v10);
  }

  v12 = v0[122];
  v13 = v0[118];
  v14 = v0[117];
  v15 = v0[113];
  v16 = v0[110];
  v17 = v0[107];
  swift_willThrow();

  v18 = v0[1];
  v19 = v0[122];

  return v18();
}

uint64_t sub_100175B14()
{
  v1[10] = v0;
  v2 = sub_1001CFD60();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = *(*(sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v6 = sub_1001D08A0();
  v1[15] = v6;
  v7 = *(v6 - 8);
  v1[16] = v7;
  v8 = *(v7 + 64) + 15;
  v1[17] = swift_task_alloc();
  v9 = type metadata accessor for TrustedRequestConfiguration();
  v1[18] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_100175C98, 0, 0);
}

uint64_t sub_100175C98()
{
  v75 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[10];
  v71 = v6 + qword_100243500;
  sub_1001AFCB4(v6 + qword_100243500, v1, type metadata accessor for TrustedRequestConfiguration);
  (*(v3 + 16))(v4, v6 + qword_100243508, v5);
  v7 = *(v2 + 112);
  v8 = (v1 + *(v2 + 108));
  v9 = v8[1];
  v69 = *v8;
  v70 = v2;
  if (*(v1 + v7 + 8))
  {
    v66 = *(v1 + v7 + 8);
    v67 = *(v1 + v7);
  }

  else
  {
    v66 = 0xE000000000000000;
    v67 = 0;
  }

  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[17];
  v13 = v0[15];
  v14 = v0[10];

  v15 = sub_1001D0890();
  v17 = v16;
  v18 = sub_1001D0870();
  (*(v11 + 8))(v12, v13);
  sub_1001AFB98(v10, type metadata accessor for TrustedRequestConfiguration);
  v0[2] = v69;
  v0[3] = v9;
  v0[4] = v67;
  v0[5] = v66;
  v0[6] = v15;
  v0[7] = v17;
  v0[8] = v18;
  v19 = *(*v14 + 392);

  v20 = sub_1001D0E50();
  v21 = sub_1001D1E00();

  if (os_log_type_enabled(v20, v21))
  {
    v68 = v21;
    v22 = v0[18];
    v23 = v0[10];
    v24 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v24 = 136316930;
    v25 = sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v73 = sub_1001D23A0();
    v74 = v26;
    v77._countAndFlagsBits = 58;
    v77._object = 0xE100000000000000;
    sub_1001D18B0(v77);
    v27 = sub_1000954E0(v73, v74, &v72);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    v28 = v71;
    *(v24 + 14) = sub_1000954E0(*(v71 + *(v70 + 108)), *(v71 + *(v70 + 108) + 8), &v72);
    *(v24 + 22) = 2080;
    v29 = (v71 + *(v22 + 120));
    if (v29[1])
    {
      v30 = *v29;
      v31 = v29[1];
    }

    else
    {
      v31 = 0xE300000000000000;
      v30 = 7104878;
    }

    v32 = v0[18];

    v33 = sub_1000954E0(v30, v31, &v72);

    *(v24 + 24) = v33;
    *(v24 + 32) = 2080;
    *(v24 + 34) = sub_1000954E0(*(v71 + *(v32 + 104)), *(v71 + *(v32 + 104) + 8), &v72);
    *(v24 + 42) = 2080;
    v34 = (v71 + *(v70 + 112));
    if (v34[1])
    {
      v35 = *v34;
      v36 = v34[1];
    }

    else
    {
      v36 = 0xE300000000000000;
      v35 = 7104878;
    }

    v37 = v0[18];
    v38 = v0[14];

    v39 = sub_1000954E0(v35, v36, &v72);

    *(v24 + 44) = v39;
    *(v24 + 52) = 2080;
    sub_10001208C(v71 + *(v37 + 116), v38, &qword_1002288B0, &qword_1001D5FC0);
    v40 = *(v25 - 8);
    v41 = (*(v40 + 48))(v38, 1, v25);
    v42 = v0[14];
    if (v41 == 1)
    {
      sub_100011F00(v0[14], &qword_1002288B0, &qword_1001D5FC0);
      v43 = 0xE300000000000000;
      v44 = 7104878;
    }

    else
    {
      v45 = v0[14];
      v46 = sub_1001CFD70();
      v43 = v47;
      (*(v40 + 8))(v42, v25);
      v44 = v46;
    }

    v48 = sub_1000954E0(v44, v43, &v72);

    *(v24 + 54) = v48;
    *(v24 + 62) = 2080;
    v49 = sub_1001D0890();
    v51 = sub_1000954E0(v49, v50, &v72);

    *(v24 + 64) = v51;
    *(v24 + 72) = 2080;
    v52 = sub_1001D0870();
    v53 = sub_10015A550(v52);

    v73 = v53;

    sub_100152064(&v73);

    v0[9] = v73;
    sub_100011AC0(&unk_100230200, &qword_1001D4F80);
    sub_100024B78(&qword_1002281F0, &unk_100230200, &qword_1001D4F80);
    v54 = sub_1001D1750();
    v56 = v55;

    v57 = sub_1000954E0(v54, v56, &v72);

    *(v24 + 74) = v57;
    _os_log_impl(&_mh_execute_header, v20, v68, "%s updating rate limiter with attribution\nbundleID: %s\noriginatingBundleID: %s\nclientBundleID: %s\nfeatureID: %s\nsessionID: %s\n\nworkloadType: %s\nworkloadTags: \n%s", v24, 0x52u);
    swift_arrayDestroy();
  }

  else
  {

    v28 = v71;
  }

  v58 = v0[13];
  v59 = v0[10];
  v60 = *(*v59 + 312);
  v61 = *(v0[18] + 116);
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  v62 = *(v59 + v60);
  v63 = swift_task_alloc();
  v0[20] = v63;
  *v63 = v0;
  v63[1] = sub_100176350;
  v64 = v0[13];

  return sub_1000F0CD4((v0 + 2), v28 + v61, v64);
}

uint64_t sub_100176350()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 136);
  v5 = *(*v0 + 112);
  v6 = *(*v0 + 104);
  v7 = *(*v0 + 96);
  v8 = *(*v0 + 88);
  v11 = *v0;

  sub_10001BB30(v1 + 16);
  (*(v7 + 8))(v6, v8);

  v9 = *(v11 + 8);

  return v9();
}

void sub_100176514(uint64_t a1)
{
  v1 = *(*a1 + 392);

  oslog = sub_1001D0E50();
  v2 = sub_1001D1DD0();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v8 = sub_1001D23A0();
    v9 = v5;
    v12._countAndFlagsBits = 2629690;
    v12._object = 0xE300000000000000;
    sub_1001D18B0(v12);
    v13._countAndFlagsBits = 1953460082;
    v13._object = 0xE400000000000000;
    sub_1001D18B0(v13);
    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    sub_1001D18B0(v14);
    v6 = sub_1000954E0(v8, v9, &v10);

    *(v3 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v2, "%s Finished root connection subtask", v3, 0xCu);
    sub_100011CF0(v4);
  }
}

uint64_t sub_1001766D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a2;
  v6[5] = a4;
  v6[2] = a3;
  v6[3] = a1;
  return _swift_task_switch(sub_100176700, 0, 0);
}

uint64_t sub_100176700()
{
  v1 = *(v0 + 56);
  v10 = *(v0 + 40);
  v2 = *(v0 + 32) + *(**(v0 + 32) + 336);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = v0 + 16;
  *(v3 + 24) = v10;
  *(v3 + 40) = v1;
  v4 = swift_allocObject();
  *(v0 + 72) = v4;
  *(v4 + 16) = &unk_1001E1BE0;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *(v5 + 16) = &unk_1001E1BF0;
  *(v5 + 24) = v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = xmmword_1001E13D0;
  v6 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_100176894;
  v8 = *(v0 + 24);

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v8, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_1001E1C00, v5, &type metadata for () + 8);
}

uint64_t sub_100176894()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_100176A4C;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1001769B0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001769B0()
{
  v1 = v0[9];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v4 = v0[8];

    v5 = v0[1];

    return v5();
  }

  return result;
}

uint64_t sub_100176A4C()
{
  v2 = v0[9];
  v1 = v0[10];

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[8];

    v6 = v0[1];
    v7 = v0[12];

    return v6();
  }

  return result;
}

uint64_t sub_100176AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = sub_100011AC0(&qword_10022F1A8, &qword_1001E0870);
  v5[30] = v6;
  v7 = *(v6 - 8);
  v5[31] = v7;
  v8 = *(v7 + 64) + 15;
  v5[32] = swift_task_alloc();
  v9 = type metadata accessor for ThimbledEvent();
  v5[33] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[34] = swift_task_alloc();
  v11 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v5[35] = v11;
  v12 = *(v11 - 8);
  v5[36] = v12;
  v13 = *(v12 + 64) + 15;
  v5[37] = swift_task_alloc();
  v14 = sub_1001D08A0();
  v5[38] = v14;
  v15 = *(v14 - 8);
  v5[39] = v15;
  v16 = *(v15 + 64) + 15;
  v5[40] = swift_task_alloc();
  v17 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v5[41] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v5[42] = swift_task_alloc();
  v19 = *(*(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected(0) - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v20 = sub_1001D0F00();
  v5[45] = v20;
  v21 = *(v20 - 8);
  v5[46] = v21;
  v22 = *(v21 + 64) + 15;
  v5[47] = swift_task_alloc();
  v23 = *(*(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0) - 8) + 64) + 15;
  v5[48] = swift_task_alloc();
  v24 = *(*(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0) - 8) + 64) + 15;
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v25 = *(*(type metadata accessor for Proto_Ropes_Common_Attestation(0) - 8) + 64) + 15;
  v5[51] = swift_task_alloc();
  v26 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v5[52] = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v28 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
  v5[56] = v28;
  v29 = *(v28 - 8);
  v5[57] = v29;
  v30 = *(v29 + 64) + 15;
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v31 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v5[61] = v31;
  v32 = *(v31 - 8);
  v5[62] = v32;
  v33 = *(v32 + 64) + 15;
  v5[63] = swift_task_alloc();
  v34 = *(*(sub_100011AC0(&qword_10022FE70, &qword_1001E1B38) - 8) + 64) + 15;
  v5[64] = swift_task_alloc();
  v35 = sub_100011AC0(&qword_10022FE78, &unk_1001E1B40);
  v5[65] = v35;
  v36 = *(v35 - 8);
  v5[66] = v36;
  v37 = *(v36 + 64) + 15;
  v5[67] = swift_task_alloc();
  v38 = sub_100011AC0(&qword_100229620, &qword_1001D69C8);
  v5[68] = v38;
  v39 = *(*(v38 - 8) + 64) + 15;
  v5[69] = swift_task_alloc();
  v40 = type metadata accessor for NWAsyncConnection.Inbound(0);
  v5[70] = v40;
  v41 = *(*(v40 - 8) + 64) + 15;
  v5[71] = swift_task_alloc();
  v42 = *(*(sub_100011AC0(&qword_10022FE80, &qword_1001E1B50) - 8) + 64) + 15;
  v5[72] = swift_task_alloc();

  return _swift_task_switch(sub_10017707C, 0, 0);
}

uint64_t sub_10017707C()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v14 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v7 = *(v0 + 232);
  sub_1001AFCB4(*(v0 + 200), *(v0 + 568), type metadata accessor for NWAsyncConnection.Inbound);
  sub_1001B0458(&qword_10022EE88, type metadata accessor for NWAsyncConnection.Inbound);

  sub_1001D24B0();
  (*(v5 + 16))(v4, v1, v6);
  sub_100024B78(&qword_10022FE88, &qword_10022FE78, &unk_1001E1B40);
  sub_1001D1C90();
  v8 = v3 + *(v14 + 80);
  *v8 = 0;
  *(v8 + 8) = 2;
  *(v3 + *(v14 + 76)) = xmmword_1001D3A00;
  v9 = *v7;
  *(v0 + 584) = *(*v7 + 392);
  *(v0 + 592) = qword_1002434F8;
  *(v0 + 600) = qword_100243508;
  *(v0 + 608) = qword_100243500;
  *(v0 + 616) = *(v9 + 368);
  *(v0 + 624) = *(v9 + 360);
  *(v0 + 172) = enum case for NWActivity.CompletionReason.success(_:);
  v10 = swift_task_alloc();
  *(v0 + 632) = v10;
  *v10 = v0;
  v10[1] = sub_100177314;
  v11 = *(v0 + 552);
  v12 = *(v0 + 512);

  return sub_100082910(v12);
}

uint64_t sub_100177314()
{
  v2 = *(*v1 + 632);
  v5 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v3 = sub_100179634;
  }

  else
  {
    v3 = sub_100177428;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100177428()
{
  v290 = v0;
  v1 = v0;
  v2 = v0[64];
  v3 = (*(v0[57] + 48))(v2, 1, v0[56]);
  v4 = v0[73];
  if (v3 == 1)
  {
    v5 = v1[29];
    sub_100011F00(v1[69], &qword_100229620, &qword_1001D69C8);

    v6 = sub_1001D0E50();
    v7 = sub_1001D1DD0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v1[74];
      v9 = v1[72];
      v10 = v1[29];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v287 = v12;
      *v11 = 136315138;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      v288 = sub_1001D23A0();
      v289 = v13;
      v292._countAndFlagsBits = 2629690;
      v292._object = 0xE300000000000000;
      sub_1001D18B0(v292);
      v293._countAndFlagsBits = 1953460082;
      v293._object = 0xE400000000000000;
      sub_1001D18B0(v293);
      v294._countAndFlagsBits = 41;
      v294._object = 0xE100000000000000;
      sub_1001D18B0(v294);
      v14 = sub_1000954E0(v288, v289, &v287);

      *(v11 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s Received all messages on ropes stream", v11, 0xCu);
      sub_100011CF0(v12);

      v15 = v9;
    }

    else
    {
      v33 = v1[72];

      v15 = v33;
    }

    sub_100011F00(v15, &qword_10022FE80, &qword_1001E1B50);
    v34 = v1[72];
    v35 = v1[71];
    v36 = v1[69];
    v37 = v1[67];
    v39 = v1[63];
    v38 = v1[64];
    v40 = v1;
    v43 = v1 + 59;
    v42 = v1[59];
    v41 = v43[1];
    v44 = v40[58];
    v45 = v40[55];
    v255 = v40[54];
    v256 = v40[53];
    v257 = v40[51];
    v258 = v40[50];
    v259 = v40[49];
    v260 = v40[48];
    v261 = v40[47];
    v262 = v40[44];
    v263 = v40[43];
    v266 = v40[42];
    v269 = v40[40];
    v272 = v40[37];
    v277 = v40[34];
    v285 = v40[32];

    v46 = v40[1];

    v46();
    return;
  }

  v17 = v1[59];
  v16 = v1[60];
  v18 = v1[29];
  sub_1001B0368(v2, v16, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
  sub_1001AFCB4(v16, v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);

  v19 = sub_1001D0E50();
  v20 = sub_1001D1E00();

  v284 = v1;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v1[74];
    v22 = v1[59];
    v23 = v1[55];
    v24 = v1[52];
    v25 = v1[29];
    v26 = swift_slowAlloc();
    v288 = swift_slowAlloc();
    *v26 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v1[18] = sub_1001D23A0();
    v1[19] = v27;
    v295._countAndFlagsBits = 2629690;
    v295._object = 0xE300000000000000;
    sub_1001D18B0(v295);
    v296._countAndFlagsBits = 1953460082;
    v296._object = 0xE400000000000000;
    sub_1001D18B0(v296);
    v297._countAndFlagsBits = 41;
    v297._object = 0xE100000000000000;
    sub_1001D18B0(v297);
    v28 = sub_1000954E0(v1[18], v1[19], &v288);

    *(v26 + 4) = v28;
    v1 = v284;
    *(v26 + 12) = 2080;
    sub_10001208C(v22, v23, &qword_10022AA88, &qword_1001D9620);
    v29 = sub_1001D1820();
    v31 = v30;
    sub_1001AFB98(v22, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
    v32 = sub_1000954E0(v29, v31, &v288);

    *(v26 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s received message: %s", v26, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v47 = v1[59];

    sub_1001AFB98(v47, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
  }

  v48 = v1[54];
  sub_10001208C(v1[60], v48, &qword_10022AA88, &qword_1001D9620);
  v49 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
  {
    v50 = v1[60];
    v51 = v1[54];
    v52 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse;
LABEL_13:
    sub_1001AFB98(v50, v52);
    v53 = v51;
LABEL_14:
    sub_100011F00(v53, &qword_10022AA88, &qword_1001D9620);
LABEL_15:
    v54 = swift_task_alloc();
    v1[79] = v54;
    *v54 = v1;
    v54[1] = sub_100177314;
    v55 = v1[69];
    v56 = v1[64];

    sub_100082910(v56);
    return;
  }

  sub_10001208C(v1[54], v1[53], &qword_10022AA88, &qword_1001D9620);
  LODWORD(v57) = swift_getEnumCaseMultiPayload();
  if (v57 > 4)
  {
    if (v57 <= 6)
    {
LABEL_41:
      if (v57 == 5)
      {
        v96 = v1[73];
        v97 = v1[29];
        sub_1001B0368(v1[53], v1[48], type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);

        v98 = sub_1001D0E50();
        v99 = sub_1001D1DD0();

        if (os_log_type_enabled(v98, v99))
        {
          v280 = v1[75];
          v100 = v1[74];
          v101 = v1[40];
          v102 = v284[39];
          v103 = v284[38];
          v104 = v284[29];
          v105 = swift_slowAlloc();
          v288 = swift_slowAlloc();
          *v105 = 136315394;
          sub_1001CFDA0();
          sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
          v284[14] = sub_1001D23A0();
          v284[15] = v106;
          v301._countAndFlagsBits = 2629690;
          v301._object = 0xE300000000000000;
          sub_1001D18B0(v301);
          v302._countAndFlagsBits = 1953460082;
          v302._object = 0xE400000000000000;
          sub_1001D18B0(v302);
          v303._countAndFlagsBits = 41;
          v303._object = 0xE100000000000000;
          sub_1001D18B0(v303);
          v107 = sub_1000954E0(v284[14], v284[15], &v288);

          *(v105 + 4) = v107;
          *(v105 + 12) = 2080;
          (*(v102 + 16))(v101, v104 + v280, v103);
          v1 = v284;
          v108 = sub_1001D1820();
          v110 = sub_1000954E0(v108, v109, &v288);

          *(v105 + 14) = v110;
          _os_log_impl(&_mh_execute_header, v98, v99, "%s received expired attestation message for parameters  %s. Will refresh attestations out of band", v105, 0x16u);
          swift_arrayDestroy();
        }

        v111 = v1[75];
        v274 = v1[60];
        v281 = v1[54];
        v112 = v1[48];
        v113 = v1[38];
        v114 = v1[39];
        v115 = v1[36];
        v116 = v1[37];
        v117 = v1[34];
        v267 = v1[78];
        v271 = v1[35];
        v118 = v1[33];
        v119 = v1[29];
        v120 = *(sub_100011AC0(&unk_1002301C0, &qword_1001E1B70) + 48);
        sub_1001AFCB4(v112, v117, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
        v121 = v117 + v120;
        v1 = v284;
        (*(v114 + 16))(v121, v119 + v111, v113);
        swift_storeEnumTagMultiPayload();
        sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
        sub_1001D1BC0();
        (*(v115 + 8))(v116, v271);
        sub_1001AFB98(v112, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
        sub_1001AFB98(v274, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
        v53 = v281;
        goto LABEL_14;
      }

      v162 = v1[80];
      v163 = v1[77];
      v164 = v1[29];
      v165 = v1[26];
      sub_100011AC0(&qword_10022FD28, &qword_1001E1718);
      sub_1001D1BD0();
      v166 = (*(v164 + v163) + *(**(v164 + v163) + 144));
      os_unfair_lock_lock(v166);
      v167 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
      v168 = sub_100166C04(v166 + *(v167 + 28));
      os_unfair_lock_unlock(v166);
      if (v162)
      {
        return;
      }

      if (v168)
      {
        v202 = v1[46];
        v201 = v1[47];
        v203 = v1[45];
        (*(v202 + 104))(v201, *(v1 + 43), v203);

        sub_1001D0F20();

        (*(v202 + 8))(v201, v203);
      }

      goto LABEL_26;
    }

    if (v57 == 7)
    {
      v128 = v1[73];
      v129 = v1[43];
      v130 = v1[44];
      v131 = v1[29];
      sub_1001B0368(v1[53], v130, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
      sub_1001AFCB4(v130, v129, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);

      v132 = sub_1001D0E50();
      v133 = sub_1001D1DC0();

      if (os_log_type_enabled(v132, v133))
      {
        v134 = v1[74];
        v135 = v1[43];
        v136 = v1[29];
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v288 = v138;
        *v137 = 136315394;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
        v1[12] = sub_1001D23A0();
        v1[13] = v139;
        v304._countAndFlagsBits = 2629690;
        v304._object = 0xE300000000000000;
        sub_1001D18B0(v304);
        v305._countAndFlagsBits = 1953460082;
        v305._object = 0xE400000000000000;
        sub_1001D18B0(v305);
        v306._countAndFlagsBits = 41;
        v306._object = 0xE100000000000000;
        sub_1001D18B0(v306);
        v140 = sub_1000954E0(v1[12], v1[13], &v288);

        *(v137 + 4) = v140;
        *(v137 + 12) = 1024;
        LODWORD(v134) = *v135;
        sub_1001AFB98(v135, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
        *(v137 + 14) = v134;
        _os_log_impl(&_mh_execute_header, v132, v133, "%s trusted proxy node selected ohttpContext=%u", v137, 0x12u);
        sub_100011CF0(v138);
      }

      else
      {
        sub_1001AFB98(v1[43], type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
      }

      v169 = v1[28];
      v170 = *v1[44];
      os_unfair_lock_lock((v169 + 16));
      if ((*(v169 + 33) & 1) == 0)
      {
        v81 = *(v169 + 24);
        v265 = *(v169 + 32);
        v82 = v81 & 0xFFFFFFFFFFFFFF8;
        v279 = v170;
        if (v81 >> 62)
        {
          goto LABEL_98;
        }

        v171 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v171)
        {
          goto LABEL_59;
        }

LABEL_99:
        v244 = v1[28];
        sub_1001AFB84(v81, v265, 0, sub_1001428C4);
        v170 = v279;
        *(v244 + 24) = v279;
        *(v244 + 32) = 256;
      }

      v245 = v1[77];
      v77 = v1[60];
      v51 = v1[54];
      v246 = v1[44];
      v247 = v1[29];
      os_unfair_lock_unlock((v1[28] + 16));
      v248 = (*(v247 + v245) + *(**(v247 + v245) + 144));
      os_unfair_lock_lock(v248);
      v249 = *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
      v250 = v248 + v249 + *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 156);
      *v250 = v170;
      v250[8] = 0;
      os_unfair_lock_unlock(v248);
      sub_1001AFB98(v246, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
      v78 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse;
      goto LABEL_101;
    }

    if (v57 == 8)
    {
LABEL_26:
      v77 = v1[53];
      v51 = v1[54];
      sub_1001AFB98(v1[60], type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
      v78 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type;
LABEL_101:
      v52 = v78;
      v50 = v77;
      goto LABEL_13;
    }

    v144 = v1[41];
    v143 = v1[42];
    sub_1001B0368(v1[53], v143, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    v145 = v143 + *(v144 + 20);
    if (*(v145 + 9))
    {
      v146 = v1[60];
      v147 = v1[42];
LABEL_81:
      sub_1001AFB98(v147, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
      v199 = v146;
      goto LABEL_82;
    }

    v182 = *v145;
    v183 = *(v145 + 8);
    v1[4] = 0;
    v1[5] = 0xE000000000000000;
    v1[20] = v182;
    *(v1 + 168) = v183 & 1;
    sub_1001D2120();
    v185 = v1[4];
    v184 = v1[5];
    if ((v183 & 1) != 0 && ((1 << v182) & 0x73) == 0)
    {
      if (v182 == 2)
      {
        v286 = v1[4];
        v205 = v1[75];
        v206 = v1[73];
        v207 = v1[29];
        v208 = sub_1001D0890();
        v210 = v209;
        sub_1001D0870();
        v211 = sub_1001D1710();
        v213 = v212;

        v214 = sub_1001D0E50();
        v215 = sub_1001D1DE0();

        if (os_log_type_enabled(v214, v215))
        {
          v216 = v1[74];
          v276 = v1[42];
          v282 = v1[60];
          v268 = v211;
          v217 = v1[29];
          v218 = swift_slowAlloc();
          v288 = swift_slowAlloc();
          *v218 = 136315906;
          sub_1001CFDA0();
          v264 = v208;
          sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
          v1[8] = sub_1001D23A0();
          v1[9] = v219;
          v313._countAndFlagsBits = 2629690;
          v313._object = 0xE300000000000000;
          sub_1001D18B0(v313);
          v314._countAndFlagsBits = 1953460082;
          v314._object = 0xE400000000000000;
          sub_1001D18B0(v314);
          v315._countAndFlagsBits = 41;
          v315._object = 0xE100000000000000;
          sub_1001D18B0(v315);
          v220 = sub_1000954E0(v1[8], v1[9], &v288);

          *(v218 + 4) = v220;
          *(v218 + 12) = 2082;
          v221 = sub_1000954E0(v286, v184, &v288);

          *(v218 + 14) = v221;
          *(v218 + 22) = 2080;
          v222 = sub_1000954E0(v264, v210, &v288);

          *(v218 + 24) = v222;
          *(v218 + 32) = 2080;
          v223 = sub_1000954E0(v268, v213, &v288);

          *(v218 + 34) = v223;
          _os_log_impl(&_mh_execute_header, v214, v215, "%s request denial: reason=%{public}s, type=%s, parameters=%s", v218, 0x2Au);
          swift_arrayDestroy();

          v198 = v276;
          goto LABEL_72;
        }

        v146 = v1[60];
        v204 = v1[42];
      }

      else
      {
        v224 = v1[29] + v1[76];
        v225 = (v224 + *(type metadata accessor for TrustedRequestConfiguration() + 112));
        if (v225[1])
        {
          v283 = *v225;
          v226 = v225[1];
        }

        else
        {
          v226 = 0xE300000000000000;
          v283 = 7104878;
        }

        v227 = v1[73];

        v228 = sub_1001D0E50();
        v229 = sub_1001D1DE0();

        if (os_log_type_enabled(v228, v229))
        {
          v230 = v1[74];
          v231 = v1[29];
          v232 = swift_slowAlloc();
          v288 = swift_slowAlloc();
          *v232 = 136315650;
          sub_1001CFDA0();
          sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
          v284[10] = sub_1001D23A0();
          v284[11] = v233;
          v316._countAndFlagsBits = 2629690;
          v316._object = 0xE300000000000000;
          sub_1001D18B0(v316);
          v317._countAndFlagsBits = 1953460082;
          v317._object = 0xE400000000000000;
          sub_1001D18B0(v317);
          v318._countAndFlagsBits = 41;
          v318._object = 0xE100000000000000;
          sub_1001D18B0(v318);
          v234 = sub_1000954E0(v284[10], v284[11], &v288);

          *(v232 + 4) = v234;
          *(v232 + 12) = 2082;
          v235 = sub_1000954E0(v185, v184, &v288);

          *(v232 + 14) = v235;
          *(v232 + 22) = 2082;
          *(v232 + 24) = sub_1000954E0(v283, v226, &v288);
          _os_log_impl(&_mh_execute_header, v228, v229, "%s request denial: reason=%{public}s, featureID=%{public}s", v232, 0x20u);
          swift_arrayDestroy();
          v1 = v284;
        }

        else
        {
        }

        v236 = v1[73];
        v237 = v1[29];

        v238 = sub_1001D0E50();
        v239 = sub_1001D1DF0();

        v240 = os_log_type_enabled(v238, v239);
        v146 = v1[60];
        v204 = v1[42];
        if (v240)
        {
          v241 = swift_slowAlloc();
          v242 = swift_slowAlloc();
          v288 = v242;
          *v241 = 136315138;
          v243 = sub_1000954E0(v283, v226, &v288);

          *(v241 + 4) = v243;
          _os_log_impl(&_mh_execute_header, v238, v239, "FEATURE_ID_BLOCKED: %s", v241, 0xCu);
          sub_100011CF0(v242);

          goto LABEL_80;
        }
      }
    }

    else
    {
      v186 = v1[73];
      v187 = v1[29];

      v188 = sub_1001D0E50();
      v189 = sub_1001D1DE0();

      if (os_log_type_enabled(v188, v189))
      {
        v190 = v1[74];
        v282 = v1[60];
        v191 = v1[42];
        v192 = v1[29];
        v193 = swift_slowAlloc();
        v288 = swift_slowAlloc();
        *v193 = 136315394;
        sub_1001CFDA0();
        v194 = v185;
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
        v284[6] = sub_1001D23A0();
        v284[7] = v195;
        v310._countAndFlagsBits = 2629690;
        v310._object = 0xE300000000000000;
        sub_1001D18B0(v310);
        v311._countAndFlagsBits = 1953460082;
        v311._object = 0xE400000000000000;
        sub_1001D18B0(v311);
        v312._countAndFlagsBits = 41;
        v312._object = 0xE100000000000000;
        sub_1001D18B0(v312);
        v196 = sub_1000954E0(v284[6], v284[7], &v288);

        *(v193 + 4) = v196;
        *(v193 + 12) = 2082;
        v197 = sub_1000954E0(v194, v184, &v288);

        *(v193 + 14) = v197;
        _os_log_impl(&_mh_execute_header, v188, v189, "%s request denial: reason=%{public}s", v193, 0x16u);
        swift_arrayDestroy();
        v1 = v284;

        v198 = v191;
LABEL_72:
        sub_1001AFB98(v198, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
        v199 = v282;
LABEL_82:
        sub_1001AFB98(v199, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
        v53 = v1[54];
        goto LABEL_14;
      }

      v146 = v1[60];
      v204 = v1[42];
    }

LABEL_80:
    v147 = v204;
    goto LABEL_81;
  }

  if (v57 <= 2)
  {
    if (v57 < 2)
    {
      v58 = v1[73];
      v59 = v1[60];
      v60 = v1[58];
      v61 = v1[54];
      v62 = v1[29];
      sub_1001AFB98(v1[53], type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      sub_100011F00(v61, &qword_10022AA88, &qword_1001D9620);
      sub_1001AFCB4(v59, v60, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);

      v63 = sub_1001D0E50();
      v64 = sub_1001D1DF0();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = v1[74];
        v278 = v1[60];
        v66 = v1[58];
        v67 = v1[55];
        v68 = v284[52];
        v69 = v284[29];
        v70 = swift_slowAlloc();
        v288 = swift_slowAlloc();
        *v70 = 136315394;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
        v284[2] = sub_1001D23A0();
        v284[3] = v71;
        v298._countAndFlagsBits = 2629690;
        v298._object = 0xE300000000000000;
        sub_1001D18B0(v298);
        v299._countAndFlagsBits = 1953460082;
        v299._object = 0xE400000000000000;
        sub_1001D18B0(v299);
        v300._countAndFlagsBits = 41;
        v300._object = 0xE100000000000000;
        sub_1001D18B0(v300);
        v72 = sub_1000954E0(v284[2], v284[3], &v288);

        *(v70 + 4) = v72;
        *(v70 + 12) = 2080;
        sub_10001208C(v66, v67, &qword_10022AA88, &qword_1001D9620);
        v1 = v284;
        v73 = sub_1001D1820();
        v75 = v74;
        sub_1001AFB98(v66, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
        v76 = sub_1000954E0(v73, v75, &v288);

        *(v70 + 14) = v76;
        _os_log_impl(&_mh_execute_header, v63, v64, "%s attestation response unexpected: %s", v70, 0x16u);
        swift_arrayDestroy();

        sub_1001AFB98(v278, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
      }

      else
      {
        v141 = v1[60];
        v142 = v1[58];

        sub_1001AFB98(v142, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
        sub_1001AFB98(v141, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
      }

      goto LABEL_15;
    }

    v122 = v1[60];
    v123 = v1[54];
    v124 = v1[51];
    v125 = v1[29];
    v126 = v1[26];
    sub_1001B0368(v1[53], v124, type metadata accessor for Proto_Ropes_Common_Attestation);
    sub_10017ADEC(v124, v126);
    v127 = type metadata accessor for Proto_Ropes_Common_Attestation;
    goto LABEL_75;
  }

  if (v57 != 3)
  {
    v148 = v1[73];
    v149 = v1[49];
    v150 = v1[50];
    v151 = v1[29];
    sub_1001B0368(v1[53], v150, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_1001AFCB4(v150, v149, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);

    v152 = sub_1001D0E50();
    v153 = sub_1001D1DD0();

    if (os_log_type_enabled(v152, v153))
    {
      v154 = v1[74];
      v155 = v1[49];
      v156 = v1[29];
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v288 = v158;
      *v157 = 136315394;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      v1[16] = sub_1001D23A0();
      v1[17] = v159;
      v307._countAndFlagsBits = 2629690;
      v307._object = 0xE300000000000000;
      sub_1001D18B0(v307);
      v308._countAndFlagsBits = 1953460082;
      v308._object = 0xE400000000000000;
      sub_1001D18B0(v308);
      v309._countAndFlagsBits = 41;
      v309._object = 0xE100000000000000;
      sub_1001D18B0(v309);
      v160 = sub_1000954E0(v1[16], v1[17], &v288);

      *(v157 + 4) = v160;
      *(v157 + 12) = 2048;
      v161 = *(*v155 + 16);
      sub_1001AFB98(v155, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
      *(v157 + 14) = v161;
      _os_log_impl(&_mh_execute_header, v152, v153, "%s received %ld rate limit configurations", v157, 0x16u);
      sub_100011CF0(v158);
    }

    else
    {
      sub_1001AFB98(v1[49], type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    }

    v122 = v1[60];
    v123 = v1[54];
    v124 = v1[50];
    v200 = v1[29];
    sub_10017B838(v124);
    v127 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList;
LABEL_75:
    sub_1001AFB98(v124, v127);
    sub_1001AFB98(v122, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
    v53 = v123;
    goto LABEL_14;
  }

  v79 = v1[27];
  v80 = *(v1[29] + v1[77]);
  sub_1001644FC();
  os_unfair_lock_lock((v79 + 16));
  if (*(v79 + 33))
  {
LABEL_104:
    v252 = v1[60];
    v254 = v1[53];
    v253 = v1[54];
    os_unfair_lock_unlock((v1[27] + 16));
    sub_1001AFB98(v252, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
    sub_1001AFB98(v254, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v53 = v253;
    goto LABEL_14;
  }

  v81 = *(v79 + 24);
  v82 = v81 & 0xFFFFFFFFFFFFFF8;
  v270 = *(v79 + 32);
  if (v81 >> 62)
  {
    v83 = sub_1001D2190();
    if (v83)
    {
      goto LABEL_31;
    }

    goto LABEL_103;
  }

  v83 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v83)
  {
LABEL_103:
    v251 = v1[27];
    sub_1001AFB84(v81, v270, 0, sub_1001428C4);
    *(v251 + 24) = 0;
    *(v251 + 32) = 256;
    goto LABEL_104;
  }

LABEL_31:
  v84 = 0;
  v273 = v83;
  v279 = v81 & 0xC000000000000001;
  while (v279)
  {
    v57 = sub_1001D2040();
    v85 = v57;
    v86 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_36:
    v87 = v1[61];
    v88 = v1[62];
    v89 = (v85 + *(*v85 + 88));
    os_unfair_lock_lock(v89);
    v90 = *(sub_100011AC0(&qword_10022F1D8, &unk_1001E0860) + 28);
    if (!(*(v88 + 48))(v89 + v90, 1, v87))
    {
      v91 = v82;
      v92 = v81;
      v93 = v284[62];
      v94 = v284[63];
      v95 = v284[61];
      (*(v93 + 16))(v94, v89 + v90, v95);
      sub_1001D1AA0();
      (*(v93 + 8))(v94, v95);
      v81 = v92;
      v82 = v91;
      v83 = v273;
    }

    os_unfair_lock_unlock(v89);

    ++v84;
    v1 = v284;
    if (v86 == v83)
    {
      goto LABEL_103;
    }
  }

  if (v84 < *(v82 + 16))
  {
    v85 = *(v81 + 8 * v84 + 32);

    v86 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  v171 = sub_1001D2190();
  if (!v171)
  {
    goto LABEL_99;
  }

LABEL_59:
  if (v171 >= 1)
  {
    v172 = 0;
    v173 = v81 & 0xC000000000000001;
    v275 = v171;
    do
    {
      if (v173)
      {
        v174 = sub_1001D2040();
      }

      else
      {
        if (v172 >= *(v82 + 16))
        {
          goto LABEL_97;
        }

        v174 = *(v81 + 8 * v172 + 32);
      }

      v175 = v1[30];
      v176 = v1[31];
      v177 = (v174 + *(*v174 + 88));
      os_unfair_lock_lock(v177);
      v178 = *(sub_100011AC0(&qword_10022F198, &qword_1001E0718) + 28);
      if (!(*(v176 + 48))(v177 + v178, 1, v175))
      {
        v180 = v284[31];
        v179 = v284[32];
        v181 = v284[30];
        (*(v180 + 16))(v179, v177 + v178, v181);
        v284[24] = v279;
        v171 = v275;
        sub_1001D1AA0();
        (*(v180 + 8))(v179, v181);
        v173 = v81 & 0xC000000000000001;
      }

      ++v172;
      os_unfair_lock_unlock(v177);

      v1 = v284;
    }

    while (v171 != v172);
    goto LABEL_99;
  }

  __break(1u);
}

uint64_t sub_100179634()
{
  v0[22] = v0[80];
  v0[81] = sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1001796CC, 0, 0);
}

uint64_t sub_1001796CC()
{
  v1 = v0[80];
  v2 = v0[27];
  sub_100011F00(v0[69], &qword_100229620, &qword_1001D69C8);
  os_unfair_lock_lock((v2 + 16));
  if ((*(v2 + 33) & 1) == 0)
  {
    v3 = *(v2 + 24);
    v45 = *(v2 + 32);
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
    v47 = v1;
    if (v3 >> 62)
    {
      goto LABEL_20;
    }

    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v6 = v0[80];
    swift_errorRetain();
    if (v5)
    {
      v7 = 0;
      v57 = v3 & 0xC000000000000001;
      v49 = v4;
      v51 = v3;
      v55 = v5;
      do
      {
        if (v57)
        {
          v9 = sub_1001D2040();
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v7 >= *(v4 + 16))
          {
            __break(1u);
LABEL_20:
            v5 = sub_1001D2190();
            goto LABEL_4;
          }

          v9 = *(v3 + 8 * v7 + 32);

          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_14;
          }
        }

        v11 = v0[80];
        v12 = v0[61];
        v13 = v0[62];
        v14 = (v9 + *(*v9 + 88));
        swift_errorRetain();
        os_unfair_lock_lock(v14);
        v15 = *(sub_100011AC0(&qword_10022F1D8, &unk_1001E0860) + 28);
        if (!(*(v13 + 48))(v14 + v15, 1, v12))
        {
          v53 = v0[81];
          v16 = v0[80];
          v18 = v0[62];
          v17 = v0[63];
          v19 = v0[61];
          (*(v18 + 16))(v17, v14 + v15, v19);
          v20 = swift_allocError();
          *v21 = v16;
          v0[23] = v20;
          v3 = v51;
          swift_errorRetain();
          sub_1001D1A90();
          v22 = v19;
          v4 = v49;
          (*(v18 + 8))(v17, v22);
        }

        v8 = v0[80];
        os_unfair_lock_unlock(v14);

        ++v7;
      }

      while (v10 != v55);
    }

    v23 = v0[27];
    sub_1001AFB84(v3, v45, 0, sub_1001428C4);
    *(v23 + 24) = v47;
    *(v23 + 32) = 257;
  }

  v24 = v0[80];
  v25 = v0[72];
  v26 = v0[71];
  v27 = v0[69];
  v28 = v0[67];
  v30 = v0[63];
  v29 = v0[64];
  v32 = v0[59];
  v31 = v0[60];
  v36 = v0[58];
  v37 = v0[55];
  v38 = v0[54];
  v39 = v0[53];
  v40 = v0[51];
  v41 = v0[50];
  v42 = v0[49];
  v43 = v0[48];
  v44 = v0[47];
  v46 = v0[44];
  v48 = v0[43];
  v50 = v0[42];
  v52 = v0[40];
  v54 = v0[37];
  v56 = v0[34];
  v58 = v0[32];
  os_unfair_lock_unlock((v0[27] + 16));
  swift_willThrow();
  sub_100011F00(v25, &qword_10022FE80, &qword_1001E1B50);

  v33 = v0[1];
  v34 = v0[80];

  return v33();
}

uint64_t sub_100179AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a2;
  v15 = a3;
  sub_1001B0458(&qword_10022ABD0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
  sub_1001D0B50();
  sub_100011F00(a1, &qword_10022AA80, &unk_1001E1C40);
  sub_1001B0368(v10, a1, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
}

uint64_t sub_100179C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a3;
  v5 = type metadata accessor for ValidatedAttestationOrAttestation();
  v68 = *(v5 - 8);
  v6 = *(v68 + 64);
  __chkstk_darwin(v5 - 8, v7);
  v77 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping(0);
  v78 = *(v9 - 8);
  v79 = v9;
  v10 = *(v78 + 64);
  __chkstk_darwin(v9, v11);
  v67 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
  v14 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13 - 8, v15);
  v73 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16, v18);
  v71 = &v66 - v20;
  __chkstk_darwin(v19, v21);
  v23 = &v66 - v22;
  v24 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v25 = *(v24 - 8);
  v26 = v25[8];
  v28 = __chkstk_darwin(v24, v27);
  v72 = (&v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __chkstk_darwin(v28, v30);
  v70 = (&v66 - v32);
  __chkstk_darwin(v31, v33);
  v35 = &v66 - v34;
  *a1 = 1;
  v80 = a2;
  v36 = a2 + qword_100243500;
  v37 = *(type metadata accessor for TrustedRequestConfiguration() + 96);
  v74 = v36;
  if (*(v36 + v37) == 1)
  {
    v38 = *(a1 + 16);

    *(a1 + 16) = &off_10021CF20;
  }

  v39 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 32);
  sub_10001208C(a1 + v39, v23, &qword_1002293A8, &unk_1001D6530);
  v40 = v25[6];
  if (v40(v23, 1, v24) == 1)
  {
    *v35 = &_swiftEmptyArrayStorage;
    *(v35 + 9) = 0;
    v41 = &v35[*(v24 + 32)];
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    v42 = v40;
    if (v40(v23, 1, v24) != 1)
    {
      sub_100011F00(v23, &qword_1002293A8, &unk_1001D6530);
    }
  }

  else
  {
    v42 = v40;
    sub_1001B0368(v23, v35, type metadata accessor for Proto_Ropes_Common_Capabilities);
  }

  v35[8] = 1;
  sub_100011F00(a1 + v39, &qword_1002293A8, &unk_1001D6530);
  sub_1001B0368(v35, a1 + v39, type metadata accessor for Proto_Ropes_Common_Capabilities);
  v43 = v25[7];
  v76 = v25 + 7;
  v69 = v43;
  v43(a1 + v39, 0, 1, v24);
  LODWORD(v74) = *(v74 + 72);
  v44 = v71;
  sub_10001208C(a1 + v39, v71, &qword_1002293A8, &unk_1001D6530);
  v45 = v42;
  if (v42(v44, 1, v24) == 1)
  {
    v46 = v70;
    *v70 = &_swiftEmptyArrayStorage;
    *(v46 + 4) = 0;
    v47 = v46 + *(v24 + 32);
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    if (v42(v44, 1, v24) != 1)
    {
      sub_100011F00(v44, &qword_1002293A8, &unk_1001D6530);
    }
  }

  else
  {
    v46 = v70;
    sub_1001B0368(v44, v70, type metadata accessor for Proto_Ropes_Common_Capabilities);
  }

  v48 = v74;
  *(v46 + 10) = v74;
  sub_100011F00(a1 + v39, &qword_1002293A8, &unk_1001D6530);
  sub_1001B0368(v46, a1 + v39, type metadata accessor for Proto_Ropes_Common_Capabilities);
  v49 = v69;
  v69(a1 + v39, 0, 1, v24);
  v50 = v73;
  sub_10001208C(a1 + v39, v73, &qword_1002293A8, &unk_1001D6530);
  if (v45(v50, 1, v24) == 1)
  {
    v51 = v45;
    v52 = v72;
    *v72 = &_swiftEmptyArrayStorage;
    v52[8] = 0;
    v52[10] = 0;
    v53 = &v52[*(v24 + 32)];
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    v54 = v51(v50, 1, v24);
    v48 = v74;
    if (v54 != 1)
    {
      sub_100011F00(v50, &qword_1002293A8, &unk_1001D6530);
    }
  }

  else
  {
    v52 = v72;
    sub_1001B0368(v50, v72, type metadata accessor for Proto_Ropes_Common_Capabilities);
  }

  v52[9] = v48;
  sub_100011F00(a1 + v39, &qword_1002293A8, &unk_1001D6530);
  sub_1001B0368(v52, a1 + v39, type metadata accessor for Proto_Ropes_Common_Capabilities);
  v49(a1 + v39, 0, 1, v24);
  v55 = *(v75 + 16);
  v56 = &_swiftEmptyArrayStorage;
  if (v55)
  {
    v74 = a1;
    v81 = &_swiftEmptyArrayStorage;
    sub_100151774(0, v55, 0);
    v56 = v81;
    v57 = v67;
    v58 = v75 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
    v76 = *(v68 + 72);
    do
    {
      v59 = v77;
      v60 = sub_1001AFCB4(v58, v77, type metadata accessor for ValidatedAttestationOrAttestation);
      __chkstk_darwin(v60, v61);
      *(&v66 - 2) = v80;
      *(&v66 - 1) = v59;
      sub_1001B0458(&qword_10022AAC0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);
      sub_1001D0B50();
      sub_1001AFB98(v59, type metadata accessor for ValidatedAttestationOrAttestation);
      v81 = v56;
      v63 = v56[2];
      v62 = v56[3];
      if (v63 >= v62 >> 1)
      {
        sub_100151774(v62 > 1, v63 + 1, 1);
        v56 = v81;
      }

      v56[2] = v63 + 1;
      sub_1001B0368(v57, v56 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v63, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);
      v58 += v76;
      --v55;
    }

    while (v55);
    a1 = v74;
  }

  v64 = *(a1 + 8);

  *(a1 + 8) = v56;
  return result;
}

uint64_t sub_10017A49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a1;
  v5 = type metadata accessor for ValidatedAttestation();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v87 = (v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = type metadata accessor for ValidatedAttestationOrAttestation();
  v9 = *(*(v90 - 8) + 64);
  v11 = __chkstk_darwin(v90, v10);
  v13 = (v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v11, v14);
  v89 = v81 - v16;
  v18 = __chkstk_darwin(v15, v17);
  v20 = (v81 - v19);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (v81 - v23);
  v26 = __chkstk_darwin(v22, v25);
  v28 = v81 - v27;
  __chkstk_darwin(v26, v29);
  v31 = v81 - v30;
  v32 = *(*a2 + 392);
  sub_1001AFCB4(a3, v81 - v30, type metadata accessor for ValidatedAttestationOrAttestation);
  sub_1001AFCB4(a3, v28, type metadata accessor for ValidatedAttestationOrAttestation);

  v33 = sub_1001D0E50();
  v34 = sub_1001D1E00();

  if (os_log_type_enabled(v33, v34))
  {
    v83 = v34;
    v85 = a3;
    v86 = v28;
    v84 = v33;
    v35 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v93 = v82;
    *v35 = 136315650;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v91 = sub_1001D23A0();
    v92 = v36;
    v94._countAndFlagsBits = 2629690;
    v94._object = 0xE300000000000000;
    sub_1001D18B0(v94);
    v95._countAndFlagsBits = 1953460082;
    v95._object = 0xE400000000000000;
    sub_1001D18B0(v95);
    v96._countAndFlagsBits = 41;
    v96._object = 0xE100000000000000;
    sub_1001D18B0(v96);
    v37 = sub_1000954E0(v91, v92, &v93);

    *(v35 + 4) = v37;
    *(v35 + 12) = 2080;
    sub_1001B0368(v31, v24, type metadata accessor for ValidatedAttestationOrAttestation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = *v24;
      v38 = v24[1];
      v40 = v24[2];
      v41 = v24[3];
      v42 = v24[5];
      v43 = v24[7];
      v44 = v24[9];
      v45 = v24[11];
      sub_10002683C(v40, v41);
    }

    else
    {
      v47 = v87;
      sub_1001B0368(v24, v87, type metadata accessor for ValidatedAttestation);
      v39 = *v47;
      v38 = v47[1];

      sub_1001AFB98(v47, type metadata accessor for ValidatedAttestation);
    }

    v48 = sub_1000954E0(v39, v38, &v93);

    *(v35 + 14) = v48;
    *(v35 + 22) = 1024;
    v49 = v86;
    sub_1001AFCB4(v86, v20, type metadata accessor for ValidatedAttestationOrAttestation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v50 = v20[1];
      v51 = v20[2];
      v52 = v20[3];
      v53 = v20[5];
      v54 = v20[7];
      v81[1] = v20[9];
      v55 = v20[11];
      v56 = v20[12];

      v57 = v52;
      v49 = v86;
      sub_10002683C(v51, v57);
    }

    else
    {
      v56 = *(v20 + *(sub_100011AC0(qword_10022E650, &unk_1001DF500) + 48));
      result = sub_1001AFB98(v20, type metadata accessor for ValidatedAttestation);
    }

    v46 = v89;
    if (HIDWORD(v56))
    {
      goto LABEL_20;
    }

    sub_1001AFB98(v49, type metadata accessor for ValidatedAttestationOrAttestation);
    *(v35 + 24) = v56;
    v59 = v84;
    _os_log_impl(&_mh_execute_header, v84, v83, "%s adding prefetched attestation for node: %s ohttpContext: %u", v35, 0x1Cu);
    swift_arrayDestroy();

    a3 = v85;
  }

  else
  {
    sub_1001AFB98(v28, type metadata accessor for ValidatedAttestationOrAttestation);

    sub_1001AFB98(v31, type metadata accessor for ValidatedAttestationOrAttestation);
    v46 = v89;
  }

  sub_1001AFCB4(a3, v46, type metadata accessor for ValidatedAttestationOrAttestation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v61 = v88;
  if (EnumCaseMultiPayload == 1)
  {
    v62 = v46;
    v64 = *v46;
    v63 = v46[1];
    v65 = v62[5];
    v66 = v13;
    v67 = a3;
    v68 = v62[7];
    v69 = v62[9];
    v70 = v62[11];
    sub_10002683C(v62[2], v62[3]);
    a3 = v67;
    v13 = v66;
  }

  else
  {
    v71 = v87;
    sub_1001B0368(v46, v87, type metadata accessor for ValidatedAttestation);
    v64 = *v71;
    v63 = v71[1];

    sub_1001AFB98(v71, type metadata accessor for ValidatedAttestation);
  }

  v72 = *(v61 + 8);

  *v61 = v64;
  *(v61 + 8) = v63;
  sub_1001AFCB4(a3, v13, type metadata accessor for ValidatedAttestationOrAttestation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v73 = v13[1];
    v74 = v13[2];
    v75 = v13[3];
    v76 = v13[5];
    v77 = v13[7];
    v78 = v13[9];
    v79 = v13[11];
    v80 = v13[12];

    sub_10002683C(v74, v75);
  }

  else
  {
    v80 = *(v13 + *(sub_100011AC0(qword_10022E650, &unk_1001DF500) + 48));
    result = sub_1001AFB98(v13, type metadata accessor for ValidatedAttestation);
  }

  if (!HIDWORD(v80))
  {
    *(v61 + 16) = v80;
    return result;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10017ABC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a2;
  sub_1001B0458(&qword_1002299D8, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
  sub_1001D0B50();
  sub_100011F00(a1, &qword_100229920, &qword_1001D7190);
  sub_1001B0368(v8, a1, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
  v9 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
}

double sub_10017AD50(uint64_t *a1, __int128 *a2)
{
  v11 = *a2;
  v4 = *a1;
  v5 = a1[1];
  sub_1001AF8C0(&v11, &v10);
  sub_100011E48(v4, v5);
  *a1 = v11;
  v10 = a2[2];
  v6 = a1[2];
  v7 = a1[3];
  sub_1001AF8C0(&v10, &v9);
  sub_100011E48(v6, v7);
  result = *&v10;
  *(a1 + 1) = v10;
  return result;
}

uint64_t sub_10017ADEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v93 = sub_100011AC0(&qword_10022FD18, &unk_1001E1700);
  v92 = *(v93 - 8);
  v6 = *(v92 + 64);
  __chkstk_darwin(v93, v7);
  v91 = v84 - v8;
  v9 = sub_100011AC0(&qword_10022FE90, &qword_1001E1B78);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v89 = v84 - v12;
  v96 = type metadata accessor for ValidatedAttestationOrAttestation();
  v13 = *(*(v96 - 8) + 64);
  v15 = __chkstk_darwin(v96, v14);
  v90 = v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v17);
  v19 = v84 - v18;
  v95 = sub_1001D08A0();
  v94 = *(v95 - 8);
  v20 = *(v94 + 64);
  __chkstk_darwin(v95, v21);
  v23 = v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v24 = *(*(v98 - 8) + 64);
  v26 = __chkstk_darwin(v98, v25);
  v87 = (v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __chkstk_darwin(v26, v28);
  v31 = v84 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = (v84 - v34);
  __chkstk_darwin(v33, v36);
  v38 = v84 - v37;
  v39 = *(*v3 + 392);
  v97 = a1;
  sub_1001AFCB4(a1, v84 - v37, type metadata accessor for Proto_Ropes_Common_Attestation);

  v84[1] = v39;
  v40 = sub_1001D0E50();
  v41 = sub_1001D1DD0();

  v42 = os_log_type_enabled(v40, v41);
  v85 = v31;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v88 = v3;
    v45 = v44;
    v100 = v44;
    *v43 = 136315394;
    sub_1001CFDA0();
    v86 = a2;
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    *&v102[0] = sub_1001D23A0();
    *(&v102[0] + 1) = v46;
    v103._countAndFlagsBits = 58;
    v103._object = 0xE100000000000000;
    sub_1001D18B0(v103);
    v47 = sub_1000954E0(*&v102[0], *(&v102[0] + 1), &v100);

    *(v43 + 4) = v47;
    a2 = v86;
    *(v43 + 12) = 1024;
    v48 = &v38[*(v98 + 28)];
    if (v48[4])
    {
      v49 = 0;
    }

    else
    {
      v49 = *v48;
    }

    sub_1001AFB98(v38, type metadata accessor for Proto_Ropes_Common_Attestation);
    *(v43 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s attestation ohttpContext=%u", v43, 0x12u);
    sub_100011CF0(v45);
    v3 = v88;
  }

  else
  {
    sub_1001AFB98(v38, type metadata accessor for Proto_Ropes_Common_Attestation);
  }

  v50 = v97;
  sub_1001AFCB4(v97, v35, type metadata accessor for Proto_Ropes_Common_Attestation);
  (*(v94 + 16))(v23, v3 + qword_100243508, v95);
  sub_10008AC80(v35, v23, v102);
  v51 = (v50 + *(v98 + 28));
  if (*(v51 + 4))
  {
    v52 = 0;
  }

  else
  {
    v52 = *v51;
  }

  v53 = v102[3];
  *(v19 + 2) = v102[2];
  *(v19 + 3) = v53;
  v54 = v102[5];
  *(v19 + 4) = v102[4];
  *(v19 + 5) = v54;
  v55 = v102[1];
  *v19 = v102[0];
  *(v19 + 1) = v55;
  *(v19 + 12) = v52;
  swift_storeEnumTagMultiPayload();
  v56 = *(v50 + 16);
  v57 = *(v50 + 24);
  v58 = HIBYTE(v57) & 0xF;
  if ((v57 & 0x2000000000000000) == 0)
  {
    v58 = v56 & 0xFFFFFFFFFFFFLL;
  }

  if (!v58 || (v59 = v102[0], v102[0] == __PAIR128__(v57, v56)) || (sub_1001D2470() & 1) != 0)
  {
    sub_100089C90(v102, &v100);
LABEL_16:
    v60 = *(v3 + *(*v3 + 368));
    v61 = v89;
    sub_1001AFCB4(v19, v89, type metadata accessor for ValidatedAttestationOrAttestation);
    sub_1001658A0(v61);
    sub_100011F00(v61, &qword_10022FE90, &qword_1001E1B78);
    sub_1001AFCB4(v19, v90, type metadata accessor for ValidatedAttestationOrAttestation);
    sub_100011AC0(&qword_10022FD28, &qword_1001E1718);
    v62 = v91;
    sub_1001D1BC0();
    sub_10005AF88(v102);
    (*(v92 + 8))(v62, v93);
    return sub_1001AFB98(v19, type metadata accessor for ValidatedAttestationOrAttestation);
  }

  v64 = v3;
  v65 = v85;
  sub_1001AFCB4(v50, v85, type metadata accessor for Proto_Ropes_Common_Attestation);
  v66 = v87;
  sub_1001AFCB4(v50, v87, type metadata accessor for Proto_Ropes_Common_Attestation);

  sub_100089C90(v102, &v100);
  v67 = sub_1001D0E50();
  v68 = sub_1001D1DE0();

  if (!os_log_type_enabled(v67, v68))
  {
    sub_1001AFB98(v66, type metadata accessor for Proto_Ropes_Common_Attestation);

    sub_1001AFB98(v65, type metadata accessor for Proto_Ropes_Common_Attestation);
    v3 = v64;
    goto LABEL_16;
  }

  LODWORD(v98) = v68;
  v86 = a2;
  v69 = swift_slowAlloc();
  v97 = swift_slowAlloc();
  v99 = v97;
  *v69 = 136315906;
  sub_1001CFDA0();
  sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
  v88 = v64;
  v100 = sub_1001D23A0();
  v101 = v70;
  v104._countAndFlagsBits = 58;
  v104._object = 0xE100000000000000;
  sub_1001D18B0(v104);
  v71 = sub_1000954E0(v100, v101, &v99);

  *(v69 + 4) = v71;
  *(v69 + 12) = 2080;

  v72 = sub_1000954E0(v59, *(&v59 + 1), &v99);

  *(v69 + 14) = v72;
  *(v69 + 22) = 2080;
  v73 = *(v65 + 16);
  v74 = *(v65 + 24);

  sub_1001AFB98(v65, type metadata accessor for Proto_Ropes_Common_Attestation);
  v75 = sub_1000954E0(v73, v74, &v99);

  *(v69 + 24) = v75;
  *(v69 + 32) = 2048;
  v76 = *v66;
  v77 = v66[1];
  v78 = v77 >> 62;
  if ((v77 >> 62) > 1)
  {
    v79 = 0;
    if (v78 != 2)
    {
      goto LABEL_28;
    }

    v81 = v76 + 16;
    v76 = *(v76 + 16);
    v80 = *(v81 + 8);
    v79 = v80 - v76;
    if (!__OFSUB__(v80, v76))
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  else if (!v78)
  {
    v79 = BYTE6(v77);
LABEL_28:
    sub_1001AFB98(v87, type metadata accessor for Proto_Ropes_Common_Attestation);
    *(v69 + 34) = v79;
    _os_log_impl(&_mh_execute_header, v67, v98, "%s node id does not match attestation bundle calculated=%s fromServer=%s bundleSize=%ld bytes", v69, 0x2Au);
    swift_arrayDestroy();

    v3 = v88;
    goto LABEL_16;
  }

  v82 = __OFSUB__(HIDWORD(v76), v76);
  v83 = HIDWORD(v76) - v76;
  if (!v82)
  {
    v79 = v83;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_10017B838(uint64_t *a1)
{
  v3 = sub_100011AC0(&qword_100229348, &unk_1001D64C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v38 - v6;
  v8 = type metadata accessor for RateLimitConfiguration(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v8, v11);
  v48 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v46 = &v38 - v15;
  v40 = type metadata accessor for ThimbledEvent();
  v16 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40, v17);
  v42 = (&v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v39 = *(v41 - 8);
  v19 = *(v39 + 64);
  __chkstk_darwin(v41, v20);
  v38 = &v38 - v21;
  v22 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22 - 8, v25);
  v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  v47 = *(*a1 + 16);
  if (v47)
  {
    v29 = 0;
    v43 = v9;
    v30 = (v9 + 48);
    v31 = &_swiftEmptyArrayStorage;
    v44 = v8;
    v45 = v1;
    while (v29 < *(v28 + 16))
    {
      sub_1001AFCB4(v28 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v29, v27, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      sub_10017EADC(v27, v1, v7);
      sub_1001AFB98(v27, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      if ((*v30)(v7, 1, v8) == 1)
      {
        sub_100011F00(v7, &qword_100229348, &unk_1001D64C0);
      }

      else
      {
        v32 = v46;
        sub_1001B0368(v7, v46, type metadata accessor for RateLimitConfiguration);
        sub_1001B0368(v32, v48, type metadata accessor for RateLimitConfiguration);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_1000097E0(0, v31[2] + 1, 1, v31);
        }

        v34 = v31[2];
        v33 = v31[3];
        if (v34 >= v33 >> 1)
        {
          v31 = sub_1000097E0(v33 > 1, v34 + 1, 1, v31);
        }

        v31[2] = v34 + 1;
        sub_1001B0368(v48, v31 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v34, type metadata accessor for RateLimitConfiguration);
        v8 = v44;
        v1 = v45;
      }

      if (v47 == ++v29)
      {
        goto LABEL_13;
      }
    }

    __break(1u);

    sub_1001AFB98(v27, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);

    __break(1u);
  }

  else
  {
    v31 = &_swiftEmptyArrayStorage;
LABEL_13:
    v35 = *(*v1 + 360);
    *v42 = v31;
    swift_storeEnumTagMultiPayload();
    sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
    v36 = v38;
    sub_1001D1BC0();
    return (*(v39 + 8))(v36, v41);
  }

  return result;
}

uint64_t sub_10017BD24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v311 = a1;
  v5 = sub_100011AC0(&unk_100230110, &unk_1001D6520);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v261 = &v253 - v8;
  v302 = sub_100011AC0(&qword_10022FEA0, &qword_1001E1B88);
  v276 = *(v302 - 8);
  v9 = *(v276 + 64);
  __chkstk_darwin(v302, v10);
  v260 = &v253 - v11;
  v275 = sub_100011AC0(&qword_10022FEA8, &qword_1001E1B90);
  v12 = *(*(v275 - 8) + 64);
  __chkstk_darwin(v275, v13);
  v277 = &v253 - v14;
  v15 = sub_100011AC0(&qword_10022FEB0, &qword_1001E1B98);
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15 - 8, v17);
  v284 = &v253 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18, v20);
  v262 = &v253 - v22;
  v24 = __chkstk_darwin(v21, v23);
  v292 = &v253 - v25;
  __chkstk_darwin(v24, v26);
  v286 = &v253 - v27;
  v28 = sub_1001D05C0();
  v304 = *(v28 - 8);
  v305 = v28;
  v29 = *(v304 + 64);
  __chkstk_darwin(v28, v30);
  v274 = &v253 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = sub_100011AC0(&qword_10022FEB8, &qword_1001E1BA0);
  v32 = *(*(v298 - 8) + 64);
  __chkstk_darwin(v298, v33);
  v306 = &v253 - v34;
  v35 = sub_100011AC0(&qword_10022FEC0, &qword_1001E1BA8);
  v36 = *(*(v35 - 8) + 64);
  v38 = __chkstk_darwin(v35 - 8, v37);
  v283 = &v253 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v38, v40);
  v293 = &v253 - v42;
  v44 = __chkstk_darwin(v41, v43);
  v309 = (&v253 - v45);
  __chkstk_darwin(v44, v46);
  v310 = &v253 - v47;
  v289 = sub_1001D02E0();
  v288 = *(v289 - 8);
  v48 = *(v288 + 64);
  __chkstk_darwin(v289, v49);
  v287 = &v253 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = type metadata accessor for ThimbledEvent();
  v51 = *(*(v280 - 8) + 64);
  __chkstk_darwin(v280, v52);
  v282 = (&v253 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v281 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v279 = *(v281 - 8);
  v54 = *(v279 + 64);
  __chkstk_darwin(v281, v55);
  v278 = &v253 - v56;
  v263 = type metadata accessor for TrustedRequestConfiguration();
  v57 = *(*(v263 - 8) + 64);
  v59 = __chkstk_darwin(v263, v58);
  v291 = &v253 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59, v61);
  v271 = &v253 - v62;
  v269 = sub_1001CFD60();
  v267 = *(v269 - 8);
  v63 = *(v267 + 64);
  v65 = __chkstk_darwin(v269, v64);
  v264 = &v253 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65, v67);
  v265 = &v253 - v68;
  v268 = type metadata accessor for RateLimitTimingDetails(0);
  v69 = *(*(v268 - 8) + 64);
  v71 = __chkstk_darwin(v268, v70);
  v285 = (&v253 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v71, v73);
  v270 = &v253 - v74;
  v266 = type metadata accessor for RateLimitConfiguration(0);
  v272 = *(v266 - 8);
  v75 = *(v272 + 64);
  __chkstk_darwin(v266, v76);
  v273 = (&v253 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = sub_1001D0FF0();
  v79 = *(v78 - 8);
  v80 = *(v79 + 64);
  __chkstk_darwin(v78, v81);
  v83 = &v253 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1001D06D0();
  v85 = *(v84 - 8);
  v86 = v85[8];
  v88 = __chkstk_darwin(v84, v87);
  v297 = &v253 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __chkstk_darwin(v88, v90);
  v296 = &v253 - v92;
  v94 = __chkstk_darwin(v91, v93);
  v295 = &v253 - v95;
  v97 = __chkstk_darwin(v94, v96);
  v99 = &v253 - v98;
  __chkstk_darwin(v97, v100);
  v102 = &v253 - v101;
  (*(v79 + 16))(v83, v311, v78);
  v103 = v85;

  v303 = a2;
  sub_100129638(v83, a2, v102);
  v104 = *(*v3 + 392);
  v105 = v85[2];
  v312 = v102;
  v307 = v105;
  v308 = v85 + 2;
  v105(v99, v102, v84);

  v294 = v104;
  v106 = sub_1001D0E50();
  v107 = sub_1001D1DD0();
  v311 = v3;

  v108 = os_log_type_enabled(v106, v107);
  v301 = v84;
  v299 = v85;
  if (v108)
  {
    v109 = swift_slowAlloc();
    v315 = swift_slowAlloc();
    *v109 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v313 = sub_1001D23A0();
    v314 = v110;
    v316._countAndFlagsBits = 58;
    v316._object = 0xE100000000000000;
    sub_1001D18B0(v316);
    v111 = sub_1000954E0(v313, v314, &v315);

    *(v109 + 4) = v111;
    *(v109 + 12) = 2080;
    v112 = sub_1001D0620();
    v114 = v113;
    v300 = v103[1];
    v300(v99, v84);
    v115 = sub_1000954E0(v112, v114, &v315);

    *(v109 + 14) = v115;
    _os_log_impl(&_mh_execute_header, v106, v107, "%s %s", v109, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v300 = v85[1];
    v300(v99, v84);
  }

  v116 = sub_1001D0640();
  v118 = v305;
  v117 = v306;
  v119 = v309;
  v120 = v310;
  if (v116)
  {
    v121 = sub_1001D05D0();
    if ((v122 & 1) == 0)
    {
      v123 = *&v121;
      v124 = v311 + qword_100243500;
      v125 = v263;
      v126 = *(v263 + 112);
      v127 = (v311 + qword_100243500 + *(v263 + 108));
      v128 = v127[1];
      v258 = *v127;
      v129 = *(v311 + qword_100243500 + v126 + 8);
      v256 = *(v311 + qword_100243500 + v126);
      v257 = v129;

      v259 = v128;

      v255 = sub_1001D0890();
      v254 = v130;
      v131 = sub_1001D0870();
      if (*(v124 + *(v125 + 76)) == 1)
      {
        v132 = sub_1001A6DA4(&off_10021CA38);
        swift_arrayDestroy();
        v133 = v118;
        v134 = v311;

        v135 = v290;
        v136 = sub_1001A735C(v131, v132, v134);
        v137 = v135;

        swift_bridgeObjectRelease_n();
        v118 = v133;

        v131 = v136;
      }

      else
      {
        v137 = v290;
      }

      v263 = sub_10015A2E8(v131);
      v290 = v137;

      v138 = v265;
      _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
      v139 = v271;
      sub_1001AFCB4(v124, v271, type metadata accessor for TrustedRequestConfiguration);
      v140 = v267;
      v141 = v264;
      v142 = v269;
      (*(v267 + 16))(v264, v138, v269);
      v143 = *(v139 + 64);
      v144 = v291;
      sub_1001AFCB4(v139, v291, type metadata accessor for TrustedRequestConfiguration);
      v145 = v285;
      *v285 = 0.0;
      if (v123 < 0.0)
      {
        v146 = 0.0;
      }

      else
      {
        v146 = v123;
      }

      v147 = *(v144 + 56);
      if (*(v144 + 48) >= v146)
      {
        v148 = v146;
      }

      else
      {
        v148 = *(v144 + 48);
      }

      v145[1] = v148;
      v149 = v268;
      v150 = v145 + *(v268 + 24);
      sub_1001CFCE0();
      v151 = *(v140 + 8);
      v151(v141, v142);
      sub_1001AFB98(v139, type metadata accessor for TrustedRequestConfiguration);
      v151(v138, v142);
      if (v143 == 0.0)
      {
        v143 = *(v291 + 64);
      }

      sub_1001AFB98(v291, type metadata accessor for TrustedRequestConfiguration);
      v152 = 1.0;
      if (v143 <= 1.0)
      {
        v152 = v143;
      }

      if (v143 < 0.0)
      {
        v152 = 0.0;
      }

      v153 = v285;
      *(v285 + *(v149 + 28)) = v148 * v152;
      v154 = v270;
      sub_1001B0368(v153, v270, type metadata accessor for RateLimitTimingDetails);
      v155 = v273;
      v156 = v259;
      *v273 = v258;
      v155[1] = v156;
      v157 = v257;
      v155[2] = v256;
      v155[3] = v157;
      v158 = v254;
      v155[4] = v255;
      v155[5] = v158;
      v155[6] = v263;
      sub_1001B0368(v154, v155 + *(v266 + 20), type metadata accessor for RateLimitTimingDetails);
      v159 = *(*v311 + 360);
      sub_100011AC0(&qword_100227AE8, &qword_1001D3680);
      v160 = *(v272 + 72);
      v161 = (*(v272 + 80) + 32) & ~*(v272 + 80);
      v162 = swift_allocObject();
      *(v162 + 16) = xmmword_1001D39F0;
      sub_1001AFCB4(v155, v162 + v161, type metadata accessor for RateLimitConfiguration);
      *v282 = v162;
      swift_storeEnumTagMultiPayload();
      sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
      v163 = v278;
      sub_1001D1BC0();
      (*(v279 + 8))(v163, v281);
      sub_1001AFB98(v155, type metadata accessor for RateLimitConfiguration);
      v119 = v309;
      v120 = v310;
    }
  }

  v164 = sub_1001D06B0();
  if (v165)
  {
    v166 = v165;
    v291 = v164;
    v167 = *(v311 + qword_100243500 + 80);
    v168 = *(v311 + qword_100243500 + 88);
    v169 = v288;
    v170 = v287;
    v171 = v289;
    (*(v288 + 104))(v287, enum case for TC2Environment.production(_:), v289);
    v172 = sub_1001D02B0();
    v174 = v173;
    (*(v169 + 8))(v170, v171);
    if (v167 == v172 && v168 == v174)
    {
    }

    else
    {
      v175 = sub_1001D2470();

      if ((v175 & 1) == 0)
      {
        v176 = sub_1001D05F0();
        v178 = v177;
        v289 = sub_1001D05E0();
        v179 = v311;
        v181 = v180;
        v182 = sub_1001D0600();
        v184 = v183;
        v185 = sub_1001D0630();
        v186 = *(*v179 + 360);
        v187 = v282;
        *v282 = v291;
        v187[1] = v166;
        v187[2] = v176;
        v187[3] = v178;
        v187[4] = v289;
        v187[5] = v181;
        v188 = v309;
        v189 = v305;
        v187[6] = v182;
        v187[7] = v184;
        v119 = v188;
        v187[8] = v185;
        v187[9] = v190;
        swift_storeEnumTagMultiPayload();
        sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
        v118 = v189;
        v191 = v278;
        sub_1001D1BC0();
        (*(v279 + 8))(v191, v281);
        v120 = v310;
        goto LABEL_29;
      }
    }

    v119 = v309;
    v120 = v310;
LABEL_29:
    v117 = v306;
  }

  sub_1001D06A0();
  v192 = v304;
  (*(v304 + 104))(v119, enum case for RopesResponseMetadata.StatusCode.ok(_:), v118);
  (*(v192 + 56))(v119, 0, 1, v118);
  v193 = *(v298 + 48);
  sub_10001208C(v120, v117, &qword_10022FEC0, &qword_1001E1BA8);
  sub_10001208C(v119, v117 + v193, &qword_10022FEC0, &qword_1001E1BA8);
  v194 = v119;
  v195 = *(v192 + 48);
  if (v195(v117, 1, v118) == 1)
  {
    sub_100011F00(v194, &qword_10022FEC0, &qword_1001E1BA8);
    sub_100011F00(v120, &qword_10022FEC0, &qword_1001E1BA8);
    v196 = v195(v117 + v193, 1, v118);
    v197 = v312;
    if (v196 == 1)
    {
      sub_100011F00(v117, &qword_10022FEC0, &qword_1001E1BA8);
      v198 = v292;
      goto LABEL_37;
    }

LABEL_35:
    sub_100011F00(v117, &qword_10022FEB8, &qword_1001E1BA0);
    goto LABEL_43;
  }

  v199 = v293;
  sub_10001208C(v117, v293, &qword_10022FEC0, &qword_1001E1BA8);
  if (v195(v117 + v193, 1, v118) == 1)
  {
    sub_100011F00(v194, &qword_10022FEC0, &qword_1001E1BA8);
    sub_100011F00(v120, &qword_10022FEC0, &qword_1001E1BA8);
    (*(v304 + 8))(v199, v118);
    v197 = v312;
    goto LABEL_35;
  }

  v200 = v304;
  v201 = v117 + v193;
  v202 = v274;
  (*(v304 + 32))(v274, v201, v118);
  sub_1001B0458(&qword_10022FED8, &type metadata accessor for RopesResponseMetadata.StatusCode);
  v203 = sub_1001D1790();
  v204 = *(v200 + 8);
  v204(v202, v118);
  v205 = v194;
  v198 = v292;
  sub_100011F00(v205, &qword_10022FEC0, &qword_1001E1BA8);
  sub_100011F00(v120, &qword_10022FEC0, &qword_1001E1BA8);
  v204(v293, v118);
  sub_100011F00(v117, &qword_10022FEC0, &qword_1001E1BA8);
  v197 = v312;
  if ((v203 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_37:
  v206 = v286;
  sub_1001D0610();
  v207 = enum case for RopesResponseMetadata.ErrorCode.success(_:);
  v208 = sub_1001D06C0();
  (*(*(v208 - 8) + 104))(v198, v207, v208);
  v209 = v302;
  swift_storeEnumTagMultiPayload();
  v210 = v198;
  v211 = v276;
  (*(v276 + 56))(v210, 0, 1, v209);
  v212 = *(v275 + 48);
  v213 = v277;
  sub_10001208C(v206, v277, &qword_10022FEB0, &qword_1001E1B98);
  sub_10001208C(v210, v213 + v212, &qword_10022FEB0, &qword_1001E1B98);
  v214 = *(v211 + 48);
  if (v214(v213, 1, v209) == 1)
  {
    sub_100011F00(v210, &qword_10022FEB0, &qword_1001E1B98);
    sub_100011F00(v206, &qword_10022FEB0, &qword_1001E1B98);
    if (v214(v213 + v212, 1, v302) == 1)
    {
      sub_100011F00(v213, &qword_10022FEB0, &qword_1001E1B98);
      v197 = v312;
      return (v300)(v197, v301);
    }

    goto LABEL_42;
  }

  v215 = v262;
  sub_10001208C(v213, v262, &qword_10022FEB0, &qword_1001E1B98);
  if (v214(v213 + v212, 1, v302) == 1)
  {
    sub_100011F00(v292, &qword_10022FEB0, &qword_1001E1B98);
    sub_100011F00(v286, &qword_10022FEB0, &qword_1001E1B98);
    sub_100011F00(v215, &qword_10022FEA0, &qword_1001E1B88);
LABEL_42:
    sub_100011F00(v213, &qword_10022FEA8, &qword_1001E1B90);
    v197 = v312;
    goto LABEL_43;
  }

  v245 = v213 + v212;
  v246 = v260;
  sub_1000DBEF4(v245, v260, &qword_10022FEA0, &qword_1001E1B88);
  sub_1001AFBF8();
  v247 = v215;
  v248 = sub_1001D1790();
  sub_100011F00(v246, &qword_10022FEA0, &qword_1001E1B88);
  sub_100011F00(v292, &qword_10022FEB0, &qword_1001E1B98);
  sub_100011F00(v286, &qword_10022FEB0, &qword_1001E1B98);
  sub_100011F00(v247, &qword_10022FEA0, &qword_1001E1B88);
  sub_100011F00(v213, &qword_10022FEB0, &qword_1001E1B98);
  v197 = v312;
  if (v248)
  {
    return (v300)(v197, v301);
  }

LABEL_43:
  v216 = v295;
  v217 = v301;
  v218 = v307;
  v307(v295, v197, v301);
  v219 = v296;
  v218(v296, v197, v217);

  v220 = sub_1001D0E50();
  v221 = sub_1001D1DE0();

  if (os_log_type_enabled(v220, v221))
  {
    LODWORD(v306) = v221;
    v309 = v220;
    v310 = 7104878;
    v222 = swift_slowAlloc();
    v304 = swift_slowAlloc();
    v315 = v304;
    *v222 = 136315906;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v313 = sub_1001D23A0();
    v314 = v223;
    v317._countAndFlagsBits = 58;
    v317._object = 0xE100000000000000;
    sub_1001D18B0(v317);
    v224 = sub_1000954E0(v313, v314, &v315);

    *(v222 + 4) = v224;
    *(v222 + 12) = 2082;
    v225 = v283;
    sub_1001D06A0();
    v226 = sub_1001D0300();
    v228 = v227;
    sub_100011F00(v225, &qword_10022FEC0, &qword_1001E1BA8);
    v229 = v216;
    v230 = v300;
    v300(v229, v217);
    v231 = sub_1000954E0(v226, v228, &v315);

    *(v222 + 14) = v231;
    *(v222 + 22) = 2082;
    v232 = v284;
    sub_1001D0610();
    v233 = sub_1001D0300();
    v235 = v234;
    sub_100011F00(v232, &qword_10022FEB0, &qword_1001E1B98);
    v230(v219, v217);
    v236 = sub_1000954E0(v233, v235, &v315);

    *(v222 + 24) = v236;
    *(v222 + 32) = 2080;
    sub_1001D12A0();
    sub_1001D1250();
    v237 = sub_1001D1070();

    if (v237)
    {
      sub_1001D1290();
      v238 = swift_dynamicCastClass();
      v239 = v309;
      if (v238)
      {
        v240 = v261;
        sub_1001D1280();

        v241 = sub_1001D0ED0();
        v242 = *(v241 - 8);
        if ((*(v242 + 48))(v240, 1, v241) != 1)
        {
          v310 = HTTPFields.loggingDescription.getter();
          v244 = v250;
          (*(v242 + 8))(v240, v241);
          goto LABEL_55;
        }

        sub_100011F00(v240, &unk_100230110, &unk_1001D6520);
      }

      else
      {
      }

      v244 = 0xE300000000000000;
    }

    else
    {
      v244 = 0xE300000000000000;
      v239 = v309;
    }

LABEL_55:
    v251 = sub_1000954E0(v310, v244, &v315);

    *(v222 + 34) = v251;
    _os_log_impl(&_mh_execute_header, v239, v306, "%s ROPES response indicates a failure\nstatus: %{public}s\nreceivedErrorCode: %{public}s\ntrailers:\n%s", v222, 0x2Au);
    swift_arrayDestroy();

    goto LABEL_56;
  }

  v243 = v216;
  v230 = v300;
  v300(v219, v217);
  v230(v243, v217);
LABEL_56:
  v252 = v312;
  v307(v297, v312, v217);
  sub_1001D0200();
  sub_1001B0458(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError);
  swift_allocError();
  sub_1001D01A0();
  swift_willThrow();
  return (v230)(v252, v217);
}