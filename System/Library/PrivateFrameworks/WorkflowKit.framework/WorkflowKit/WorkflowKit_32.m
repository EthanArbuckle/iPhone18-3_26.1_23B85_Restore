uint64_t sub_1CA592B64(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_1CA94D4B8();
  }

  result = sub_1CA592C40(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_1CA592C40(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1CA592554(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_1CA94C4F8();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1CA592554(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1CA592554(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1CA94C4F8();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

id sub_1CA5930B0()
{
  v308 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9CFC20;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v327 = v12;
  v324 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v297 - v324;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v328 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v326 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v325 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v297 - v325;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v323 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v321 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v29 = v28;
  v30 = sub_1CA94C438();
  v32 = v31;
  v320 = &v297;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v297 - v324;
  sub_1CA948D98();
  v34 = [v328 bundleURL];
  v322 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v297 - v325;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v36);
  *(v24 + 64) = v323;
  *(v24 + 40) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v39 = v321;
  v40 = sub_1CA6B3784();
  v41 = v322;
  v322[20] = v40;
  v41[23] = v39;
  v41[24] = @"IconName";
  v41[25] = 0x68746C616548;
  v41[26] = 0xE600000000000000;
  v41[28] = MEMORY[0x1E69E6158];
  v41[29] = @"Name";
  v42 = @"IconName";
  v43 = @"Name";
  v44 = sub_1CA94C438();
  v46 = v45;
  v47 = sub_1CA94C438();
  v49 = v48;
  v321 = &v297;
  MEMORY[0x1EEE9AC00](v47);
  v50 = v324;
  sub_1CA948D98();
  v51 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v297 - v325;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v54 = sub_1CA2F9F14(v44, v46, v47, v49, 0, 0, &v297 - v50, v52);
  v55 = v322;
  v322[30] = v54;
  v56 = v323;
  v55[33] = v323;
  v55[34] = @"Output";
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v57 = swift_initStackObject();
  v316 = xmmword_1CA9813C0;
  *(v57 + 16) = xmmword_1CA9813C0;
  *(v57 + 32) = 0x656C7069746C754DLL;
  *(v57 + 40) = 0xE800000000000000;
  v58 = MEMORY[0x1E69E6370];
  *(v57 + 48) = 0;
  *(v57 + 72) = v58;
  *(v57 + 80) = 0x614E74757074754FLL;
  *(v57 + 88) = 0xEA0000000000656DLL;
  v59 = @"Output";
  v60 = sub_1CA94C438();
  v320 = v61;
  v62 = sub_1CA94C438();
  v64 = v63;
  v321 = &v297;
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v297 - v50;
  sub_1CA948D98();
  v66 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v297 - v325;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 96) = sub_1CA2F9F14(v60, v320, v62, v64, 0, 0, v65, v67);
  *(v57 + 120) = v56;
  *(v57 + 128) = 0x7365707954;
  *(v57 + 136) = 0xE500000000000000;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v57 + 168) = v310;
  *(v57 + 144) = &unk_1F4A07608;
  v69 = MEMORY[0x1E69E6158];
  v70 = sub_1CA94C1E8();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v306 = v71;
  v72 = v322;
  v322[35] = v70;
  v72[38] = v71;
  v72[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v321 = swift_allocObject();
  *(v321 + 1) = xmmword_1CA981560;
  v320 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v73 = swift_initStackObject();
  *(v73 + 16) = xmmword_1CA981350;
  *(v73 + 32) = @"Class";
  *(v73 + 40) = 0xD00000000000001CLL;
  *(v73 + 48) = 0x80000001CA9CFD50;
  *(v73 + 64) = v69;
  *(v73 + 72) = @"Key";
  *(v73 + 80) = 0xD00000000000001DLL;
  *(v73 + 88) = 0x80000001CA9CFD70;
  *(v73 + 104) = v69;
  *(v73 + 112) = @"Label";
  v74 = @"Class";
  v75 = @"Key";
  v76 = @"Label";
  v77 = v74;
  v78 = v75;
  v79 = v76;
  v314 = v77;
  v313 = v78;
  v315 = v79;
  v80 = @"Parameters";
  v318 = sub_1CA94C438();
  v312 = v81;
  v82 = sub_1CA94C438();
  v84 = v83;
  v319 = &v297;
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v297 - v324;
  sub_1CA948D98();
  v86 = v328;
  v87 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = v325;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v73 + 120) = sub_1CA2F9F14(v318, v312, v82, v84, 0, 0, v85, &v297 - v88);
  v90 = v323;
  *(v73 + 144) = v323;
  *(v73 + 152) = @"Prompt";
  v309 = @"Prompt";
  v318 = sub_1CA94C438();
  v312 = v91;
  v92 = sub_1CA94C438();
  v311 = v93;
  v319 = &v297;
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v297 - v324;
  sub_1CA948D98();
  v95 = [v86 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v318, v312, v92, v311, 0, 0, v94, &v297 - v88);
  *(v73 + 184) = v90;
  *(v73 + 160) = v97;
  _s3__C3KeyVMa_0(0);
  v319 = v98;
  v318 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v321[4] = sub_1CA2F864C();
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_1CA981400;
  v100 = v314;
  *(v99 + 32) = v314;
  *(v99 + 40) = 0xD000000000000014;
  *(v99 + 48) = 0x80000001CA9AB710;
  *(v99 + 64) = MEMORY[0x1E69E6158];
  *(v99 + 72) = @"Description";
  v101 = @"Description";
  v311 = v100;
  v314 = v101;
  v102 = sub_1CA94C438();
  v304 = v103;
  *&v305 = v102;
  v104 = sub_1CA94C438();
  v303 = v105;
  v312 = &v297;
  MEMORY[0x1EEE9AC00](v104);
  v106 = v324;
  sub_1CA948D98();
  v107 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v297 - v325;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v110 = sub_1CA2F9F14(v305, v304, v104, v303, 0, 0, &v297 - v106, v108);
  v111 = v313;
  *(v99 + 80) = v110;
  *(v99 + 104) = v323;
  *(v99 + 112) = v111;
  strcpy((v99 + 120), "WFWorkoutDate");
  *(v99 + 134) = -4864;
  v112 = v315;
  *(v99 + 144) = MEMORY[0x1E69E6158];
  *(v99 + 152) = v112;
  v312 = v111;
  v313 = v112;
  v113 = sub_1CA94C438();
  v304 = v114;
  *&v305 = v113;
  v115 = sub_1CA94C438();
  v303 = v116;
  v315 = &v297;
  MEMORY[0x1EEE9AC00](v115);
  v117 = &v297 - v106;
  sub_1CA948D98();
  v118 = v328;
  v119 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  v120 = v325;
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v99 + 160) = sub_1CA2F9F14(v305, v304, v115, v303, 0, 0, v117, &v297 - v120);
  v122 = v323;
  *(v99 + 184) = v323;
  *(v99 + 192) = @"Placeholder";
  v303 = @"Placeholder";
  v123 = sub_1CA94C438();
  v304 = v124;
  *&v305 = v123;
  v125 = sub_1CA94C438();
  v127 = v126;
  v315 = &v297;
  MEMORY[0x1EEE9AC00](v125);
  v128 = &v297 - v324;
  sub_1CA948D98();
  v129 = [v118 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  sub_1CA948B68();

  v130 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v99 + 200) = sub_1CA2F9F14(v305, v304, v125, v127, 0, 0, v128, &v297 - v120);
  *(v99 + 224) = v122;
  *(v99 + 232) = @"ResultType";
  *(v99 + 240) = 0x676E69727453;
  *(v99 + 248) = 0xE600000000000000;
  v131 = MEMORY[0x1E69E6158];
  *(v99 + 264) = MEMORY[0x1E69E6158];
  *(v99 + 272) = @"TextAlignment";
  *(v99 + 304) = v131;
  v132 = v131;
  *(v99 + 280) = 0x7468676952;
  *(v99 + 288) = 0xE500000000000000;
  v304 = @"TextAlignment";
  v133 = @"ResultType";
  sub_1CA94C1E8();
  v321[5] = sub_1CA2F864C();
  v134 = swift_allocObject();
  v305 = xmmword_1CA9813E0;
  *(v134 + 16) = xmmword_1CA9813E0;
  *(v134 + 32) = @"AllowsDecimalNumbers";
  *(v134 + 40) = 0;
  v135 = v311;
  *(v134 + 64) = MEMORY[0x1E69E6370];
  *(v134 + 72) = v135;
  *(v134 + 80) = 0xD000000000000020;
  *(v134 + 88) = 0x80000001CA9A44A0;
  *(v134 + 104) = v132;
  v136 = v314;
  *(v134 + 112) = v314;
  v315 = v135;
  v314 = v136;
  v137 = @"AllowsDecimalNumbers";
  v302 = sub_1CA94C438();
  v139 = v138;
  v140 = sub_1CA94C438();
  v142 = v141;
  v311 = &v297;
  MEMORY[0x1EEE9AC00](v140);
  v143 = v324;
  sub_1CA948D98();
  v144 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v144);
  v145 = &v297 - v325;
  sub_1CA948B68();

  v146 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v147 = sub_1CA2F9F14(v302, v139, v140, v142, 0, 0, &v297 - v143, v145);
  v148 = v312;
  *(v134 + 120) = v147;
  *(v134 + 144) = v323;
  *(v134 + 152) = v148;
  *(v134 + 160) = 0xD000000000000011;
  *(v134 + 168) = 0x80000001CA9CFF40;
  v149 = v313;
  *(v134 + 184) = MEMORY[0x1E69E6158];
  *(v134 + 192) = v149;
  v312 = v148;
  v313 = v149;
  v150 = sub_1CA94C438();
  v301 = v151;
  v302 = v150;
  v152 = sub_1CA94C438();
  v300 = v153;
  v311 = &v297;
  MEMORY[0x1EEE9AC00](v152);
  v154 = &v297 - v143;
  sub_1CA948D98();
  v155 = v328;
  v156 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v156);
  v157 = &v297 - v325;
  sub_1CA948B68();

  v158 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v134 + 200) = sub_1CA2F9F14(v302, v301, v152, v300, 0, 0, v154, v157);
  v159 = v323;
  v160 = v303;
  *(v134 + 224) = v323;
  *(v134 + 232) = v160;
  v311 = v160;
  v161 = sub_1CA94C438();
  v301 = v162;
  v302 = v161;
  v163 = sub_1CA94C438();
  v300 = v164;
  v303 = &v297;
  MEMORY[0x1EEE9AC00](v163);
  v165 = &v297 - v324;
  sub_1CA948D98();
  v166 = [v155 bundleURL];
  MEMORY[0x1EEE9AC00](v166);
  v167 = v325;
  sub_1CA948B68();

  v168 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v134 + 240) = sub_1CA2F9F14(v302, v301, v163, v300, 0, 0, v165, &v297 - v167);
  *(v134 + 264) = v159;
  *(v134 + 272) = @"PossibleUnits";
  *(v134 + 280) = &unk_1F4A07638;
  v169 = v309;
  *(v134 + 304) = v310;
  *(v134 + 312) = v169;
  v309 = v169;
  v170 = @"PossibleUnits";
  v303 = sub_1CA94C438();
  v172 = v171;
  v173 = sub_1CA94C438();
  v175 = v174;
  v310 = &v297;
  MEMORY[0x1EEE9AC00](v173);
  v176 = &v297 - v324;
  sub_1CA948D98();
  v177 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v177);
  sub_1CA948B68();

  v178 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v134 + 320) = sub_1CA2F9F14(v303, v172, v173, v175, 0, 0, v176, &v297 - v167);
  v179 = v304;
  *(v134 + 344) = v323;
  *(v134 + 352) = v179;
  v180 = MEMORY[0x1E69E6158];
  *(v134 + 384) = MEMORY[0x1E69E6158];
  *(v134 + 360) = 0x7468676952;
  *(v134 + 368) = 0xE500000000000000;
  v310 = v179;
  sub_1CA94C1E8();
  v321[6] = sub_1CA2F864C();
  v181 = swift_allocObject();
  *(v181 + 16) = xmmword_1CA981300;
  v303 = 0xD00000000000001ELL;
  v304 = 0x80000001CA9AAD70;
  v182 = v314;
  *(v181 + 32) = v315;
  *(v181 + 40) = 0xD00000000000001ELL;
  *(v181 + 48) = 0x80000001CA9AAD70;
  *(v181 + 64) = v180;
  *(v181 + 72) = v182;
  v183 = sub_1CA94C438();
  v300 = v184;
  v301 = v183;
  v299 = sub_1CA94C438();
  v186 = v185;
  v302 = &v297;
  MEMORY[0x1EEE9AC00](v299);
  v187 = v324;
  sub_1CA948D98();
  v188 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v188);
  v189 = v325;
  sub_1CA948B68();

  v190 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v181 + 80) = sub_1CA2F9F14(v301, v300, v299, v186, 0, 0, &v297 - v187, &v297 - v189);
  v191 = v323;
  v192 = v312;
  *(v181 + 104) = v323;
  *(v181 + 112) = v192;
  *(v181 + 120) = 0xD000000000000019;
  *(v181 + 128) = 0x80000001CA9D0080;
  v193 = v313;
  *(v181 + 144) = MEMORY[0x1E69E6158];
  *(v181 + 152) = v193;
  v194 = sub_1CA94C438();
  v300 = v195;
  v301 = v194;
  v196 = sub_1CA94C438();
  v299 = v197;
  v302 = &v297;
  MEMORY[0x1EEE9AC00](v196);
  sub_1CA948D98();
  v198 = v328;
  v199 = [v328 bundleURL];
  v298 = &v297;
  MEMORY[0x1EEE9AC00](v199);
  sub_1CA948B68();

  v200 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v181 + 160) = sub_1CA2F9F14(v301, v300, v196, v299, 0, 0, &v297 - v187, &v297 - v189);
  v201 = v311;
  *(v181 + 184) = v191;
  *(v181 + 192) = v201;
  v202 = sub_1CA94C438();
  v300 = v203;
  v301 = v202;
  v299 = sub_1CA94C438();
  v205 = v204;
  v302 = &v297;
  MEMORY[0x1EEE9AC00](v299);
  v206 = v324;
  sub_1CA948D98();
  v207 = [v198 bundleURL];
  v298 = &v297;
  MEMORY[0x1EEE9AC00](v207);
  v208 = v325;
  sub_1CA948B68();

  v209 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v181 + 200) = sub_1CA2F9F14(v301, v300, v299, v205, 0, 0, &v297 - v206, &v297 - v208);
  v210 = v323;
  v211 = v309;
  *(v181 + 224) = v323;
  *(v181 + 232) = v211;
  v212 = sub_1CA94C438();
  v300 = v213;
  v301 = v212;
  v214 = sub_1CA94C438();
  v299 = v215;
  v302 = &v297;
  MEMORY[0x1EEE9AC00](v214);
  sub_1CA948D98();
  v216 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v216);
  sub_1CA948B68();

  v217 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v218 = sub_1CA2F9F14(v301, v300, v214, v299, 0, 0, &v297 - v206, &v297 - v208);
  *(v181 + 264) = v210;
  *(v181 + 240) = v218;
  *(v181 + 272) = sub_1CA94C368();
  *(v181 + 280) = 0x4320657669746341;
  *(v181 + 288) = 0xEF736569726F6C61;
  v219 = MEMORY[0x1E69E6158];
  v220 = v310;
  *(v181 + 304) = MEMORY[0x1E69E6158];
  *(v181 + 312) = v220;
  *(v181 + 344) = v219;
  v221 = v219;
  *(v181 + 320) = 0x7468676952;
  *(v181 + 328) = 0xE500000000000000;
  sub_1CA94C1E8();
  v321[7] = sub_1CA2F864C();
  v222 = swift_allocObject();
  *(v222 + 16) = v305;
  *(v222 + 32) = @"AutocapitalizationType";
  *(v222 + 40) = 1701736270;
  *(v222 + 48) = 0xE400000000000000;
  v223 = v315;
  *(v222 + 64) = v221;
  *(v222 + 72) = v223;
  v224 = v304;
  *(v222 + 80) = v303;
  *(v222 + 88) = v224;
  v225 = v314;
  *(v222 + 104) = v221;
  *(v222 + 112) = v225;
  v226 = @"AutocapitalizationType";
  v227 = sub_1CA94C438();
  v314 = v228;
  v315 = v227;
  v229 = sub_1CA94C438();
  *&v305 = v230;
  v317 = &v297;
  MEMORY[0x1EEE9AC00](v229);
  v231 = &v297 - v206;
  sub_1CA948D98();
  v232 = v328;
  v233 = [v328 bundleURL];
  v304 = &v297;
  MEMORY[0x1EEE9AC00](v233);
  v234 = v325;
  sub_1CA948B68();

  v235 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v222 + 120) = sub_1CA2F9F14(v315, v314, v229, v305, 0, 0, v231, &v297 - v234);
  v236 = v312;
  *(v222 + 144) = v323;
  *(v222 + 152) = v236;
  *(v222 + 160) = 0xD000000000000019;
  *(v222 + 168) = 0x80000001CA9D0260;
  v237 = v313;
  *(v222 + 184) = MEMORY[0x1E69E6158];
  *(v222 + 192) = v237;
  v238 = sub_1CA94C438();
  v314 = v239;
  v315 = v238;
  v240 = sub_1CA94C438();
  v313 = v241;
  v317 = &v297;
  MEMORY[0x1EEE9AC00](v240);
  v242 = &v297 - v324;
  sub_1CA948D98();
  v243 = [v232 bundleURL];
  MEMORY[0x1EEE9AC00](v243);
  sub_1CA948B68();

  v244 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v222 + 200) = sub_1CA2F9F14(v315, v314, v240, v313, 0, 0, v242, &v297 - v234);
  v245 = v323;
  v246 = v311;
  *(v222 + 224) = v323;
  *(v222 + 232) = v246;
  v247 = sub_1CA94C438();
  v314 = v248;
  v315 = v247;
  v249 = sub_1CA94C438();
  v313 = v250;
  v317 = &v297;
  MEMORY[0x1EEE9AC00](v249);
  v251 = v324;
  sub_1CA948D98();
  v252 = [v328 bundleURL];
  v312 = &v297;
  MEMORY[0x1EEE9AC00](v252);
  v253 = &v297 - v325;
  sub_1CA948B68();

  v254 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v222 + 240) = sub_1CA2F9F14(v315, v314, v249, v313, 0, 0, &v297 - v251, v253);
  v255 = v309;
  *(v222 + 264) = v245;
  *(v222 + 272) = v255;
  v256 = sub_1CA94C438();
  v314 = v257;
  v315 = v256;
  v258 = sub_1CA94C438();
  v260 = v259;
  v317 = &v297;
  MEMORY[0x1EEE9AC00](v258);
  sub_1CA948D98();
  v261 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v261);
  v262 = &v297 - v325;
  sub_1CA948B68();

  v263 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v264 = sub_1CA2F9F14(v315, v314, v258, v260, 0, 0, &v297 - v251, v262);
  *(v222 + 304) = v323;
  *(v222 + 280) = v264;
  *(v222 + 312) = sub_1CA94C368();
  *(v222 + 320) = 0xD00000000000001ALL;
  *(v222 + 328) = 0x80000001CA9981B0;
  v265 = MEMORY[0x1E69E6158];
  v266 = v310;
  *(v222 + 344) = MEMORY[0x1E69E6158];
  *(v222 + 352) = v266;
  *(v222 + 384) = v265;
  *(v222 + 360) = 0x7468676952;
  *(v222 + 368) = 0xE500000000000000;
  sub_1CA94C1E8();
  v267 = sub_1CA2F864C();
  v268 = v321;
  v321[8] = v267;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v270 = v322;
  v322[40] = v268;
  v270[43] = v269;
  v270[44] = @"ParameterSummary";
  v271 = @"ParameterSummary";
  v272 = sub_1CA94C438();
  v274 = v273;
  v275 = sub_1CA94C438();
  v277 = v276;
  MEMORY[0x1EEE9AC00](v275);
  v278 = &v297 - v324;
  sub_1CA948D98();
  v279 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v279);
  v280 = &v297 - v325;
  sub_1CA948B68();

  v281 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v282 = sub_1CA2F9F14(v272, v274, v275, v277, 0, 0, v278, v280);
  v283 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v284 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v285 = v322;
  v322[45] = v283;
  v285[48] = v284;
  v285[49] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v286 = swift_allocObject();
  *(v286 + 16) = v316;
  v287 = MEMORY[0x1E69E6158];
  *(v286 + 56) = MEMORY[0x1E69E6158];
  *(v286 + 32) = 0xD000000000000013;
  *(v286 + 40) = 0x80000001CA99A9A0;
  v288 = swift_initStackObject();
  *(v288 + 16) = xmmword_1CA97EDF0;
  *(v288 + 32) = 0x656372756F736552;
  *(v288 + 40) = 0xE900000000000073;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v289 = swift_allocObject();
  *(v289 + 16) = v316;
  v290 = @"RequiredResources";
  *(v289 + 32) = sub_1CA94C1E8();
  *(v289 + 40) = sub_1CA94C1E8();
  *(v289 + 48) = sub_1CA94C1E8();
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v288 + 48) = v289;
  *(v288 + 72) = v291;
  *(v288 + 80) = 0x72756F7365524657;
  *(v288 + 120) = v287;
  *(v288 + 88) = 0xEF7373616C436563;
  *(v288 + 96) = 0xD000000000000019;
  *(v288 + 104) = 0x80000001CA9CC580;
  v292 = sub_1CA94C1E8();
  *(v286 + 88) = v306;
  *(v286 + 64) = v292;
  v329 = 2;
  v330 = 1;
  v293 = type metadata accessor for WFDeviceIdiomResource();
  v294 = objc_allocWithZone(v293);
  WFDeviceIdiomResource.init(requirement:)(&v329);
  *(v286 + 120) = v293;
  *(v286 + 96) = v295;
  v285[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v285[50] = v286;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA595508()
{
  v233 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9D03C0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v250 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v251 = v12;
  v13 = &v225 - v250;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v247 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v248 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v249 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v225 - v249;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v245 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  *&v244 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v232 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v29 = v28;
  v30 = sub_1CA94C438();
  v32 = v31;
  v243 = &v225;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v225 - v250;
  sub_1CA948D98();
  v34 = [v247 bundleURL];
  v246 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v225 - v249;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v36);
  *(v24 + 64) = v245;
  *(v24 + 40) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v39 = v244;
  v40 = sub_1CA6B3784();
  v41 = v246;
  v246[20] = v40;
  v41[23] = v39;
  v41[24] = @"DisabledOnPlatforms";
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v41[25] = &unk_1F4A07828;
  v41[28] = v42;
  v41[29] = @"Input";
  v43 = v42;
  v243 = v42;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v44 = swift_initStackObject();
  v244 = xmmword_1CA981350;
  *(v44 + 16) = xmmword_1CA981350;
  *(v44 + 32) = 0x656C7069746C754DLL;
  *(v44 + 40) = 0xE800000000000000;
  v45 = MEMORY[0x1E69E6370];
  *(v44 + 48) = 1;
  *(v44 + 72) = v45;
  strcpy((v44 + 80), "ParameterKey");
  *(v44 + 93) = 0;
  *(v44 + 94) = -5120;
  *(v44 + 96) = 0x7475706E494657;
  *(v44 + 104) = 0xE700000000000000;
  *(v44 + 120) = MEMORY[0x1E69E6158];
  *(v44 + 128) = 0x6465726975716552;
  *(v44 + 136) = 0xE800000000000000;
  *(v44 + 144) = 1;
  *(v44 + 168) = v45;
  *(v44 + 176) = 0x7365707954;
  *(v44 + 216) = v43;
  *(v44 + 184) = 0xE500000000000000;
  *(v44 + 192) = &unk_1F4A07878;
  v46 = @"DisabledOnPlatforms";
  v47 = @"Input";
  v48 = sub_1CA94C1E8();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v242 = v49;
  v41[30] = v48;
  v41[33] = v49;
  v41[34] = @"Name";
  v50 = @"Name";
  v51 = sub_1CA94C438();
  v238 = v52;
  v239 = v51;
  v53 = sub_1CA94C438();
  v55 = v54;
  v241 = &v225;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v225 - v250;
  sub_1CA948D98();
  v57 = v247;
  v58 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = v249;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v61 = sub_1CA2F9F14(v239, v238, v53, v55, 0, 0, v56, &v225 - v59);
  v63 = v245;
  v62 = v246;
  v246[35] = v61;
  v62[38] = v63;
  v62[39] = @"Output";
  v64 = swift_initStackObject();
  v231 = xmmword_1CA9813C0;
  *(v64 + 16) = xmmword_1CA9813C0;
  *(v64 + 32) = 0x656C7069746C754DLL;
  *(v64 + 40) = 0xE800000000000000;
  *(v64 + 48) = 1;
  *(v64 + 72) = MEMORY[0x1E69E6370];
  *(v64 + 80) = 0x614E74757074754FLL;
  *(v64 + 88) = 0xEA0000000000656DLL;
  v65 = @"Output";
  v66 = sub_1CA94C438();
  v238 = v67;
  v239 = v66;
  v68 = sub_1CA94C438();
  v237 = v69;
  v241 = &v225;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v225 - v250;
  sub_1CA948D98();
  v71 = [v57 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v64 + 96) = sub_1CA2F9F14(v239, v238, v68, v237, 0, 0, v70, &v225 - v59);
  *(v64 + 120) = v63;
  *(v64 + 128) = 0x7365707954;
  *(v64 + 168) = v243;
  *(v64 + 136) = 0xE500000000000000;
  *(v64 + 144) = &unk_1F4A078A8;
  v73 = MEMORY[0x1E69E6158];
  v74 = sub_1CA94C1E8();
  v75 = v246;
  v246[40] = v74;
  v75[43] = v242;
  v75[44] = @"Parameters";
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v243 = swift_allocObject();
  *(v243 + 1) = xmmword_1CA981470;
  v242 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v76 = swift_allocObject();
  *(v76 + 16) = v244;
  *(v76 + 32) = @"Class";
  *(v76 + 40) = 0xD000000000000015;
  *(v76 + 48) = 0x80000001CA99B1E0;
  *(v76 + 64) = v73;
  *(v76 + 72) = @"Key";
  *(v76 + 80) = 0x7475706E494657;
  *(v76 + 88) = 0xE700000000000000;
  *(v76 + 104) = v73;
  *(v76 + 112) = @"Label";
  v77 = @"Class";
  v78 = @"Key";
  v79 = @"Label";
  v80 = v77;
  v81 = v78;
  v82 = v79;
  v234 = v80;
  v235 = v81;
  v236 = v82;
  v83 = @"Parameters";
  v237 = sub_1CA94C438();
  v230 = v84;
  v85 = sub_1CA94C438();
  v229 = v86;
  v238 = &v225;
  MEMORY[0x1EEE9AC00](v85);
  v87 = v250;
  sub_1CA948D98();
  v88 = v247;
  v89 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v225 - v249;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 120) = sub_1CA2F9F14(v237, v230, v85, v229, 0, 0, &v225 - v87, v90);
  v92 = v245;
  *(v76 + 144) = v245;
  *(v76 + 152) = @"Placeholder";
  v230 = @"Placeholder";
  v237 = sub_1CA94C438();
  v229 = v93;
  v94 = sub_1CA94C438();
  v228 = v95;
  v238 = &v225;
  MEMORY[0x1EEE9AC00](v94);
  sub_1CA948D98();
  v96 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v225 - v249;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v99 = sub_1CA2F9F14(v237, v229, v94, v228, 0, 0, &v225 - v87, v97);
  *(v76 + 184) = v92;
  *(v76 + 160) = v99;
  _s3__C3KeyVMa_0(0);
  v238 = v100;
  v237 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v243[4] = sub_1CA2F864C();
  v101 = swift_allocObject();
  *(v101 + 16) = v244;
  *(v101 + 32) = v234;
  *(v101 + 40) = 0xD000000000000011;
  *(v101 + 48) = 0x80000001CA99E620;
  v102 = MEMORY[0x1E69E6158];
  *(v101 + 64) = MEMORY[0x1E69E6158];
  *(v101 + 72) = @"DefaultValue";
  *(v101 + 80) = 0;
  *(v101 + 104) = MEMORY[0x1E69E6370];
  *(v101 + 112) = v235;
  *(v101 + 120) = 0xD00000000000001ALL;
  v229 = 0x80000001CA9D0520;
  *(v101 + 128) = 0x80000001CA9D0520;
  v103 = v236;
  *(v101 + 144) = v102;
  *(v101 + 152) = v103;
  *&v244 = @"DefaultValue";
  v104 = sub_1CA94C438();
  v106 = v105;
  v107 = sub_1CA94C438();
  v109 = v108;
  v228 = &v225;
  MEMORY[0x1EEE9AC00](v107);
  v110 = &v225 - v250;
  sub_1CA948D98();
  v111 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v225 - v249;
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v114 = sub_1CA2F9F14(v104, v106, v107, v109, 0, 0, v110, v112);
  *(v101 + 184) = v245;
  *(v101 + 160) = v114;
  sub_1CA94C1E8();
  v243[5] = sub_1CA2F864C();
  v115 = swift_allocObject();
  v241 = v115;
  *(v115 + 16) = xmmword_1CA981400;
  *(v115 + 32) = v234;
  *(v115 + 40) = 0xD000000000000016;
  *(v115 + 48) = 0x80000001CA99C4A0;
  v116 = MEMORY[0x1E69E6158];
  v117 = v244;
  *(v115 + 64) = MEMORY[0x1E69E6158];
  *(v115 + 72) = v117;
  *(v115 + 80) = 0x746C7561666544;
  *(v115 + 88) = 0xE700000000000000;
  *(v115 + 104) = v116;
  *(v115 + 112) = @"Items";
  *&v244 = swift_allocObject();
  *(v244 + 16) = xmmword_1CA981410;
  v118 = @"Items";
  v119 = sub_1CA94C438();
  v227 = v120;
  v228 = v119;
  v121 = sub_1CA94C438();
  v226 = v122;
  v234 = &v225;
  MEMORY[0x1EEE9AC00](v121);
  v123 = v250;
  sub_1CA948D98();
  v124 = v247;
  v125 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  v126 = v249;
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v128 = sub_1CA2F9F14(v228, v227, v121, v226, 0, 0, &v225 - v123, &v225 - v126);
  *(v244 + 32) = v128;
  v129 = sub_1CA94C438();
  v227 = v130;
  v228 = v129;
  v131 = sub_1CA94C438();
  v226 = v132;
  v234 = &v225;
  MEMORY[0x1EEE9AC00](v131);
  sub_1CA948D98();
  v133 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v133);
  sub_1CA948B68();

  v134 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v135 = sub_1CA2F9F14(v228, v227, v131, v226, 0, 0, &v225 - v123, &v225 - v126);
  v136 = v244;
  *(v244 + 40) = v135;
  v137 = sub_1CA94C438();
  v227 = v138;
  v228 = v137;
  v139 = sub_1CA94C438();
  v226 = v140;
  v234 = &v225;
  MEMORY[0x1EEE9AC00](v139);
  v141 = v250;
  sub_1CA948D98();
  v142 = v247;
  v143 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v143);
  v144 = &v225 - v249;
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v136 + 48) = sub_1CA2F9F14(v228, v227, v139, v226, 0, 0, &v225 - v141, v144);
  v146 = sub_1CA94C438();
  v227 = v147;
  v228 = v146;
  v148 = sub_1CA94C438();
  v226 = v149;
  v234 = &v225;
  MEMORY[0x1EEE9AC00](v148);
  sub_1CA948D98();
  v150 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  v151 = v249;
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v153 = sub_1CA2F9F14(v228, v227, v148, v226, 0, 0, &v225 - v141, &v225 - v151);
  v154 = v244;
  *(v244 + 56) = v153;
  v155 = sub_1CA94C438();
  v227 = v156;
  v228 = v155;
  v157 = sub_1CA94C438();
  v226 = v158;
  v234 = &v225;
  MEMORY[0x1EEE9AC00](v157);
  sub_1CA948D98();
  v159 = v247;
  v160 = [v247 bundleURL];
  v225 = &v225;
  MEMORY[0x1EEE9AC00](v160);
  sub_1CA948B68();

  v161 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v154 + 64) = sub_1CA2F9F14(v228, v227, v157, v226, 0, 0, &v225 - v141, &v225 - v151);
  v162 = sub_1CA94C438();
  v227 = v163;
  v228 = v162;
  v226 = sub_1CA94C438();
  v165 = v164;
  v234 = &v225;
  MEMORY[0x1EEE9AC00](v226);
  v166 = v250;
  sub_1CA948D98();
  v167 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v167);
  sub_1CA948B68();

  v168 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v169 = sub_1CA2F9F14(v228, v227, v226, v165, 0, 0, &v225 - v166, &v225 - v151);
  v170 = v244;
  *(v244 + 72) = v169;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v172 = v241;
  v241[15] = v170;
  v173 = v235;
  v172[18] = v171;
  v172[19] = v173;
  v172[20] = 0xD000000000000019;
  v172[21] = 0x80000001CA9D06A0;
  v174 = v236;
  v172[23] = MEMORY[0x1E69E6158];
  v172[24] = v174;
  v175 = sub_1CA94C438();
  v235 = v176;
  v236 = v175;
  v177 = sub_1CA94C438();
  v234 = v178;
  *&v244 = &v225;
  MEMORY[0x1EEE9AC00](v177);
  sub_1CA948D98();
  v179 = v247;
  v180 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v180);
  v181 = v249;
  sub_1CA948B68();

  v182 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v183 = sub_1CA2F9F14(v236, v235, v177, v234, 0, 0, &v225 - v166, &v225 - v181);
  v184 = v241;
  v241[25] = v183;
  v185 = v245;
  v186 = v230;
  v184[28] = v245;
  v184[29] = v186;
  v187 = sub_1CA94C438();
  v235 = v188;
  v236 = v187;
  v189 = sub_1CA94C438();
  v234 = v190;
  *&v244 = &v225;
  MEMORY[0x1EEE9AC00](v189);
  v191 = &v225 - v250;
  sub_1CA948D98();
  v192 = [v179 bundleURL];
  MEMORY[0x1EEE9AC00](v192);
  sub_1CA948B68();

  v193 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v194 = sub_1CA2F9F14(v236, v235, v189, v234, 0, 0, v191, &v225 - v181);
  v195 = v241;
  v241[30] = v194;
  v195[33] = v185;
  v195[34] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v196 = swift_allocObject();
  *(v196 + 16) = v232;
  v197 = swift_allocObject();
  *(v197 + 16) = v231;
  strcpy((v197 + 32), "WFParameterKey");
  *(v197 + 47) = -18;
  v198 = v229;
  *(v197 + 48) = 0xD00000000000001ALL;
  *(v197 + 56) = v198;
  v199 = MEMORY[0x1E69E6158];
  *(v197 + 72) = MEMORY[0x1E69E6158];
  *(v197 + 80) = 0xD000000000000010;
  *(v197 + 88) = 0x80000001CA993570;
  *(v197 + 96) = 1;
  *(v197 + 120) = MEMORY[0x1E69E6370];
  *(v197 + 128) = 0x72756F7365524657;
  *(v197 + 168) = v199;
  *(v197 + 136) = 0xEF7373616C436563;
  *(v197 + 144) = 0xD00000000000001BLL;
  *(v197 + 152) = 0x80000001CA993590;
  v200 = @"RequiredResources";
  *(v196 + 32) = sub_1CA94C1E8();
  v195[38] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v195[35] = v196;
  sub_1CA94C1E8();
  v201 = sub_1CA2F864C();
  v202 = v243;
  v243[6] = v201;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v204 = v246;
  v246[45] = v202;
  v204[48] = v203;
  v204[49] = @"ParameterSummary";
  v205 = @"ParameterSummary";
  v206 = sub_1CA94C438();
  v208 = v207;
  v209 = sub_1CA94C438();
  v211 = v210;
  MEMORY[0x1EEE9AC00](v209);
  v212 = &v225 - v250;
  sub_1CA948D98();
  v213 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v213);
  v214 = &v225 - v249;
  sub_1CA948B68();

  v215 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v216 = sub_1CA2F9F14(v206, v208, v209, v211, 0, 0, v212, v214);
  v217 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v218 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v219 = v246;
  v246[50] = v217;
  v219[53] = v218;
  v219[54] = @"RequiredResources";
  v220 = swift_allocObject();
  *(v220 + 16) = xmmword_1CA9813B0;
  v252 = 2;
  v253 = 0;
  v221 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v222 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v252);
  *(v220 + 32) = v223;
  v219[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v219[55] = v220;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5970CC()
{
  v156 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9D0760;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = inited;
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438();
  v7 = v6;
  v8 = sub_1CA94C438();
  v10 = v9;
  v11 = sub_1CA948E58();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v161 = v13;
  v165 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v142 - v165;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v163 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v164 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v162 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v142 - v162;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v160 = v21;
  *(v2 + 80) = v20;
  *(v2 + 104) = v21;
  *(v2 + 112) = @"AppDefinition";
  v22 = @"AppDefinition";
  v23 = sub_1CA94C1E8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(v2 + 120) = v23;
  *(v2 + 144) = v24;
  *(v2 + 152) = @"Description";
  v158 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1CA981310;
  *(v25 + 32) = @"DescriptionSummary";
  v26 = @"Description";
  v27 = @"DescriptionSummary";
  v28 = sub_1CA94C438();
  v155 = v29;
  v30 = sub_1CA94C438();
  v32 = v31;
  v157 = &v142;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v142 - v165;
  sub_1CA948D98();
  v34 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v142 - v162;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v28, v155, v30, v32, 0, 0, v33, v35);
  *(v25 + 64) = v160;
  *(v25 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v38 = v158;
  v39 = sub_1CA6B3784();
  v159 = v2;
  *(v2 + 160) = v39;
  *(v2 + 184) = v38;
  *(v2 + 192) = @"IconColor";
  *(v2 + 200) = 2036429383;
  *(v2 + 208) = 0xE400000000000000;
  v40 = MEMORY[0x1E69E6158];
  *(v2 + 224) = MEMORY[0x1E69E6158];
  *(v2 + 232) = @"IconSymbol";
  *(v2 + 240) = 0x7265626D756ELL;
  *(v2 + 248) = 0xE600000000000000;
  *(v2 + 264) = v40;
  *(v2 + 272) = @"LocallyProcessesData";
  v41 = MEMORY[0x1E69E6370];
  *(v2 + 280) = 1;
  *(v2 + 304) = v41;
  *(v2 + 312) = @"Name";
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"LocallyProcessesData";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v48 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  v158 = &v142;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v142 - v165;
  sub_1CA948D98();
  v53 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v142 - v162;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v56 = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  v57 = v159;
  v159[40] = v56;
  v57[43] = v160;
  v57[44] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_1CA981350;
  *(v58 + 32) = 0x75736F6C63736944;
  *(v58 + 40) = 0xEF6C6576654C6572;
  *(v58 + 48) = 0x63696C627550;
  *(v58 + 56) = 0xE600000000000000;
  *(v58 + 72) = MEMORY[0x1E69E6158];
  *(v58 + 80) = 0x656C7069746C754DLL;
  *(v58 + 88) = 0xE800000000000000;
  *(v58 + 96) = 0;
  *(v58 + 120) = MEMORY[0x1E69E6370];
  *(v58 + 128) = 0x614E74757074754FLL;
  *(v58 + 136) = 0xEA0000000000656DLL;
  v59 = @"Output";
  v60 = sub_1CA94C438();
  v157 = v61;
  v62 = sub_1CA94C438();
  v64 = v63;
  v158 = &v142;
  MEMORY[0x1EEE9AC00](v62);
  v65 = v165;
  sub_1CA948D98();
  v66 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v142 - v162;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v58 + 144) = sub_1CA2F9F14(v60, v157, v62, v64, 0, 0, &v142 - v65, v67);
  *(v58 + 168) = v160;
  *(v58 + 176) = 0x7365707954;
  *(v58 + 184) = 0xE500000000000000;
  *(v58 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v58 + 192) = &unk_1F4A07918;
  v69 = MEMORY[0x1E69E6158];
  v70 = sub_1CA94C1E8();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v72 = v159;
  v159[45] = v70;
  v72[48] = v71;
  v72[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v158 = swift_allocObject();
  *(v158 + 1) = xmmword_1CA981360;
  v157 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v73 = swift_allocObject();
  v154 = xmmword_1CA981380;
  *(v73 + 16) = xmmword_1CA981380;
  *(v73 + 32) = @"AllowsDecimalNumbers";
  *(v73 + 40) = 1;
  *(v73 + 64) = MEMORY[0x1E69E6370];
  *(v73 + 72) = @"Class";
  v152 = 0xD000000000000016;
  v153 = 0x80000001CA99C180;
  *(v73 + 80) = 0xD000000000000016;
  *(v73 + 88) = 0x80000001CA99C180;
  *(v73 + 104) = v69;
  *(v73 + 112) = @"Key";
  *(v73 + 120) = 0xD000000000000015;
  *(v73 + 128) = 0x80000001CA9D08A0;
  *(v73 + 144) = v69;
  *(v73 + 152) = @"Label";
  v74 = @"AllowsDecimalNumbers";
  v75 = @"Class";
  v76 = @"Key";
  v77 = @"Label";
  v150 = v74;
  v149 = v75;
  v148 = v76;
  v151 = v77;
  v78 = @"Parameters";
  v79 = sub_1CA94C438();
  v145 = v80;
  v146 = v79;
  v81 = sub_1CA94C438();
  v144 = v82;
  v147 = &v142;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v142 - v65;
  sub_1CA948D98();
  v84 = v163;
  v85 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = v162;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v73 + 160) = sub_1CA2F9F14(v146, v145, v81, v144, 0, 0, v83, &v142 - v86);
  v88 = v160;
  *(v73 + 184) = v160;
  *(v73 + 192) = @"Placeholder";
  v147 = @"Placeholder";
  v89 = sub_1CA94C438();
  v144 = v90;
  v145 = v89;
  v91 = sub_1CA94C438();
  v143 = v92;
  v146 = &v142;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v142 - v165;
  sub_1CA948D98();
  v94 = [v84 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v73 + 200) = sub_1CA2F9F14(v145, v144, v91, v143, 0, 0, v93, &v142 - v86);
  *(v73 + 224) = v88;
  *(v73 + 232) = @"TextAlignment";
  v96 = MEMORY[0x1E69E6158];
  *(v73 + 264) = MEMORY[0x1E69E6158];
  *(v73 + 240) = 0x7468676952;
  *(v73 + 248) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v146 = v97;
  v145 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v144 = @"TextAlignment";
  sub_1CA94C1E8();
  v158[4] = sub_1CA2F864C();
  v98 = swift_allocObject();
  *(v98 + 16) = v154;
  *(v98 + 32) = v150;
  *(v98 + 40) = 1;
  v99 = v149;
  *(v98 + 64) = MEMORY[0x1E69E6370];
  *(v98 + 72) = v99;
  v100 = v153;
  *(v98 + 80) = v152;
  *(v98 + 88) = v100;
  v101 = v148;
  *(v98 + 104) = v96;
  *(v98 + 112) = v101;
  *(v98 + 120) = 0xD000000000000015;
  *(v98 + 128) = 0x80000001CA9D08E0;
  v102 = v151;
  *(v98 + 144) = v96;
  *(v98 + 152) = v102;
  v103 = sub_1CA94C438();
  v153 = v104;
  *&v154 = v103;
  v152 = sub_1CA94C438();
  v106 = v105;
  v155 = &v142;
  MEMORY[0x1EEE9AC00](v152);
  v107 = v165;
  sub_1CA948D98();
  v108 = v163;
  v109 = [v163 bundleURL];
  v151 = &v142;
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v142 - v162;
  sub_1CA948B68();

  v111 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v98 + 160) = sub_1CA2F9F14(v154, v153, v152, v106, 0, 0, &v142 - v107, v110);
  v112 = v160;
  v113 = v147;
  *(v98 + 184) = v160;
  *(v98 + 192) = v113;
  v114 = sub_1CA94C438();
  v153 = v115;
  *&v154 = v114;
  v152 = sub_1CA94C438();
  v117 = v116;
  v155 = &v142;
  MEMORY[0x1EEE9AC00](v152);
  sub_1CA948D98();
  v118 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v118);
  v119 = v162;
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v98 + 200) = sub_1CA2F9F14(v154, v153, v152, v117, 0, 0, &v142 - v107, &v142 - v119);
  v121 = v144;
  *(v98 + 224) = v112;
  *(v98 + 232) = v121;
  *(v98 + 264) = MEMORY[0x1E69E6158];
  *(v98 + 240) = 0x7468676952;
  *(v98 + 248) = 0xE500000000000000;
  sub_1CA94C1E8();
  v122 = sub_1CA2F864C();
  v123 = v158;
  v158[5] = v122;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v125 = v159;
  v159[50] = v123;
  v125[53] = v124;
  v125[54] = @"ParameterSummary";
  v126 = @"ParameterSummary";
  v127 = sub_1CA94C438();
  v129 = v128;
  v130 = sub_1CA94C438();
  v132 = v131;
  v160 = &v142;
  MEMORY[0x1EEE9AC00](v130);
  v133 = &v142 - v165;
  sub_1CA948D98();
  v134 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v136 = sub_1CA2F9F14(v127, v129, v130, v132, 0, 0, v133, &v142 - v119);
  v137 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v138 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v139 = v159;
  v159[55] = v137;
  v139[58] = v138;
  v139[59] = @"ResidentCompatible";
  v139[63] = MEMORY[0x1E69E6370];
  *(v139 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v140 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5982C0()
{
  v119 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA99BD90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v124 = v12;
  v122 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v113 - v122;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v123 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v125 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v126 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v113 - v126;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v121 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = MEMORY[0x1E69E6158];
  v23 = sub_1CA94C1E8();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v23;
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000019;
  *(inited + 168) = 0x80000001CA99A500;
  *(inited + 184) = v22;
  *(inited + 192) = @"Description";
  *&v120 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v117 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v118 = v113;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v113 - v122;
  sub_1CA948D98();
  v33 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v113 - v126;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v117, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v121;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v120;
  *(inited + 200) = sub_1CA6B3784();
  *(inited + 224) = v37;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 1851881795;
  *(inited + 248) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  *(inited + 280) = 0xD000000000000014;
  *(inited + 288) = 0x80000001CA9D0A30;
  *(inited + 304) = v38;
  *(inited + 312) = @"Input";
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  v120 = xmmword_1CA981350;
  *(v39 + 16) = xmmword_1CA981350;
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  v40 = MEMORY[0x1E69E6370];
  *(v39 + 48) = 1;
  *(v39 + 72) = v40;
  strcpy((v39 + 80), "ParameterKey");
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0x7475706E494657;
  *(v39 + 104) = 0xE700000000000000;
  *(v39 + 120) = v38;
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 1;
  *(v39 + 168) = v40;
  *(v39 + 176) = 0x7365707954;
  v41 = v40;
  *(v39 + 184) = 0xE500000000000000;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v118;
  *(v39 + 192) = &unk_1F4A07988;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"Input";
  v45 = sub_1CA94C1E8();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v117 = v46;
  *(inited + 320) = v45;
  *(inited + 344) = v46;
  *(inited + 352) = @"LocallyProcessesData";
  *(inited + 360) = 1;
  *(inited + 384) = v41;
  *(inited + 392) = @"Name";
  v47 = @"LocallyProcessesData";
  v48 = @"Name";
  v49 = sub_1CA94C438();
  v114 = v50;
  v51 = sub_1CA94C438();
  v53 = v52;
  v115 = v113;
  MEMORY[0x1EEE9AC00](v51);
  v54 = v122;
  sub_1CA948D98();
  v55 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  v56 = v113 - v126;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 400) = sub_1CA2F9F14(v49, v114, v51, v53, 0, 0, v113 - v54, v56);
  v58 = v121;
  *(inited + 424) = v121;
  *(inited + 432) = @"Output";
  v59 = swift_allocObject();
  *(v59 + 16) = v120;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 1;
  *(v59 + 120) = MEMORY[0x1E69E6370];
  *(v59 + 128) = 0x614E74757074754FLL;
  *(v59 + 136) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v61 = sub_1CA94C438();
  v114 = v62;
  v115 = v61;
  v63 = sub_1CA94C438();
  v65 = v64;
  v116 = v113;
  MEMORY[0x1EEE9AC00](v63);
  sub_1CA948D98();
  v66 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = v113 - v126;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 144) = sub_1CA2F9F14(v115, v114, v63, v65, 0, 0, v113 - v54, v67);
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 216) = v118;
  *(v59 + 184) = 0xE500000000000000;
  *(v59 + 192) = &unk_1F4A079B8;
  v69 = MEMORY[0x1E69E6158];
  *(inited + 440) = sub_1CA94C1E8();
  *(inited + 464) = v117;
  *(inited + 472) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v118 = swift_allocObject();
  *(v118 + 1) = xmmword_1CA9813B0;
  v117 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v70 = swift_allocObject();
  *(v70 + 16) = v120;
  *(v70 + 32) = @"Class";
  *(v70 + 40) = 0xD000000000000014;
  *(v70 + 48) = 0x80000001CA99B500;
  *(v70 + 64) = v69;
  *(v70 + 72) = @"Key";
  *(v70 + 80) = 0x7475706E494657;
  *(v70 + 88) = 0xE700000000000000;
  *(v70 + 104) = v69;
  *(v70 + 112) = @"Label";
  v71 = @"Parameters";
  v72 = @"Class";
  v73 = @"Key";
  v74 = @"Label";
  v75 = sub_1CA94C438();
  v115 = v76;
  v116 = v75;
  v77 = sub_1CA94C438();
  v114 = v78;
  *&v120 = v113;
  MEMORY[0x1EEE9AC00](v77);
  v79 = v122;
  sub_1CA948D98();
  v80 = v123;
  v81 = [v123 bundleURL];
  v113[1] = v113;
  MEMORY[0x1EEE9AC00](v81);
  v82 = v113 - v126;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 120) = sub_1CA2F9F14(v116, v115, v77, v114, 0, 0, v113 - v79, v82);
  v84 = v121;
  *(v70 + 144) = v121;
  *(v70 + 152) = @"Placeholder";
  v85 = @"Placeholder";
  v86 = sub_1CA94C438();
  v115 = v87;
  v116 = v86;
  v114 = sub_1CA94C438();
  v89 = v88;
  *&v120 = v113;
  MEMORY[0x1EEE9AC00](v114);
  v90 = v113 - v79;
  sub_1CA948D98();
  v91 = [v80 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = v113 - v126;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v116, v115, v114, v89, 0, 0, v90, v92);
  *(v70 + 184) = v84;
  *(v70 + 160) = v94;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v95 = sub_1CA2F864C();
  v96 = v118;
  v118[4] = v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 480) = v96;
  *(inited + 504) = v97;
  *(inited + 512) = @"ParameterSummary";
  v98 = @"ParameterSummary";
  v99 = sub_1CA94C438();
  v101 = v100;
  v102 = sub_1CA94C438();
  v104 = v103;
  v121 = v113;
  MEMORY[0x1EEE9AC00](v102);
  v105 = v113 - v122;
  sub_1CA948D98();
  v106 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = v113 - v126;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v99, v101, v102, v104, 0, 0, v105, v107);
  v110 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(inited + 544) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 520) = v110;
  *(inited + 552) = @"ResidentCompatible";
  *(inited + 584) = MEMORY[0x1E69E6370];
  *(inited + 560) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v111 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA599280()
{
  v230 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  v238 = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9CDEE0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v245 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v246 = v12;
  v13 = &v226 - v245;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v242 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v244 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v243 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v226 - v243;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v241 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v240 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v29 = v28;
  v30 = sub_1CA94C438();
  v32 = v31;
  v237 = &v226;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v226 - v245;
  sub_1CA948D98();
  v34 = [v242 bundleURL];
  v239 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v226 - v243;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v36);
  *(v24 + 64) = v241;
  *(v24 + 40) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v39 = v240;
  v40 = sub_1CA6B3784();
  v41 = v239;
  v239[20] = v40;
  v41[23] = v39;
  v41[24] = @"InputPassthrough";
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 200) = 0;
  v41[28] = v42;
  v41[29] = @"Name";
  v43 = @"InputPassthrough";
  v44 = @"Name";
  v45 = sub_1CA94C438();
  v47 = v46;
  v48 = sub_1CA94C438();
  v50 = v49;
  v240 = &v226;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v226 - v245;
  sub_1CA948D98();
  v52 = v242;
  v53 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v226 - v243;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v56 = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v54);
  v57 = v239;
  v239[30] = v56;
  v58 = v241;
  v57[33] = v241;
  v57[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_1CA981350;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 1;
  *(v59 + 120) = MEMORY[0x1E69E6370];
  *(v59 + 128) = 0x614E74757074754FLL;
  *(v59 + 136) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v61 = sub_1CA94C438();
  v237 = v62;
  v63 = sub_1CA94C438();
  v65 = v64;
  v240 = &v226;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v226 - v245;
  sub_1CA948D98();
  v67 = [v52 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v226 - v243;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 144) = sub_1CA2F9F14(v61, v237, v63, v65, 0, 0, v66, v68);
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 184) = 0xE500000000000000;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v59 + 216) = v229;
  *(v59 + 192) = &unk_1F4A07A28;
  v70 = MEMORY[0x1E69E6158];
  v71 = sub_1CA94C1E8();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v73 = v239;
  v239[35] = v71;
  v73[38] = v72;
  v73[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v235 = swift_allocObject();
  *(v235 + 16) = xmmword_1CA981410;
  v240 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1CA981370;
  v75 = v238;
  *(v74 + 32) = @"Class";
  *(v74 + 40) = v75;
  *(v74 + 48) = 0x80000001CA99B500;
  *(v74 + 64) = v70;
  *(v74 + 72) = @"Key";
  strcpy((v74 + 80), "WFSearchTerm");
  *(v74 + 93) = 0;
  *(v74 + 94) = -5120;
  *(v74 + 104) = v70;
  *(v74 + 112) = @"Label";
  v76 = @"Class";
  v77 = @"Key";
  v78 = @"Label";
  v79 = v76;
  v80 = v77;
  v81 = v78;
  v231 = v79;
  v228 = v80;
  v232 = v81;
  v82 = @"Parameters";
  v237 = sub_1CA94C438();
  *&v234 = v83;
  v84 = sub_1CA94C438();
  v233 = v85;
  v238 = &v226;
  MEMORY[0x1EEE9AC00](v84);
  v86 = v245;
  sub_1CA948D98();
  v87 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = v243;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 120) = sub_1CA2F9F14(v237, v234, v84, v233, 0, 0, &v226 - v86, &v226 - v88);
  v90 = v241;
  *(v74 + 144) = v241;
  *(v74 + 152) = @"Placeholder";
  v91 = @"Placeholder";
  v237 = sub_1CA94C438();
  *&v234 = v92;
  v233 = sub_1CA94C438();
  v94 = v93;
  v238 = &v226;
  MEMORY[0x1EEE9AC00](v233);
  v95 = &v226 - v86;
  sub_1CA948D98();
  v96 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 160) = sub_1CA2F9F14(v237, v234, v233, v94, 0, 0, v95, &v226 - v88);
  *(v74 + 184) = v90;
  *(v74 + 192) = @"TextAlignment";
  v98 = MEMORY[0x1E69E6158];
  *(v74 + 224) = MEMORY[0x1E69E6158];
  *(v74 + 200) = 0x7468676952;
  *(v74 + 208) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v238 = v99;
  v237 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v100 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v235 + 32) = sub_1CA2F864C();
  v101 = swift_allocObject();
  v234 = xmmword_1CA9813C0;
  *(v101 + 16) = xmmword_1CA9813C0;
  v233 = 0x80000001CA99FB10;
  v102 = v231;
  v103 = v232;
  *(v101 + 32) = v231;
  *(v101 + 40) = 0xD00000000000001DLL;
  *(v101 + 48) = 0x80000001CA99FB10;
  v104 = v228;
  *(v101 + 64) = v98;
  *(v101 + 72) = v104;
  *(v101 + 80) = 0x54616964654D4657;
  *(v101 + 88) = 0xEB00000000657079;
  *(v101 + 104) = v98;
  *(v101 + 112) = v103;
  v231 = v102;
  v228 = v104;
  v232 = v103;
  v105 = sub_1CA94C438();
  v226 = v106;
  v107 = sub_1CA94C438();
  v109 = v108;
  v227 = &v226;
  MEMORY[0x1EEE9AC00](v107);
  v110 = v245;
  sub_1CA948D98();
  v111 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v226 - v243;
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v114 = sub_1CA2F9F14(v105, v226, v107, v109, 0, 0, &v226 - v110, v112);
  *(v101 + 144) = v241;
  *(v101 + 120) = v114;
  sub_1CA94C1E8();
  *(v235 + 40) = sub_1CA2F864C();
  v115 = swift_allocObject();
  *(v115 + 16) = v234;
  v116 = v231;
  *(v115 + 32) = v231;
  *(v115 + 40) = 0xD00000000000001DLL;
  v117 = v232;
  *(v115 + 48) = v233;
  v118 = MEMORY[0x1E69E6158];
  v119 = v228;
  *(v115 + 64) = MEMORY[0x1E69E6158];
  *(v115 + 72) = v119;
  *(v115 + 80) = 0x6269727474414657;
  *(v115 + 88) = 0xEB00000000657475;
  *(v115 + 104) = v118;
  *(v115 + 112) = v117;
  v231 = v116;
  v228 = v119;
  v232 = v117;
  v120 = sub_1CA94C438();
  v226 = v121;
  v122 = sub_1CA94C438();
  v124 = v123;
  v227 = &v226;
  MEMORY[0x1EEE9AC00](v122);
  v125 = &v226 - v110;
  sub_1CA948D98();
  v126 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  v127 = &v226 - v243;
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v129 = sub_1CA2F9F14(v120, v226, v122, v124, 0, 0, v125, v127);
  *(v115 + 144) = v241;
  *(v115 + 120) = v129;
  sub_1CA94C1E8();
  *(v235 + 48) = sub_1CA2F864C();
  v130 = swift_allocObject();
  *(v130 + 16) = v234;
  v131 = v231;
  *(v130 + 32) = v231;
  *(v130 + 40) = 0xD00000000000001DLL;
  *(v130 + 48) = v233;
  v132 = MEMORY[0x1E69E6158];
  v133 = v228;
  *(v130 + 64) = MEMORY[0x1E69E6158];
  *(v130 + 72) = v133;
  *(v130 + 80) = 0x797469746E454657;
  *(v130 + 88) = 0xE800000000000000;
  v134 = v232;
  *(v130 + 104) = v132;
  *(v130 + 112) = v134;
  v231 = v131;
  v233 = v133;
  v135 = sub_1CA94C438();
  v227 = v136;
  v137 = sub_1CA94C438();
  v139 = v138;
  v228 = &v226;
  MEMORY[0x1EEE9AC00](v137);
  v140 = &v226 - v245;
  sub_1CA948D98();
  v141 = v242;
  v142 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  v143 = &v226 - v243;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v145 = sub_1CA2F9F14(v135, v227, v137, v139, 0, 0, v140, v143);
  *(v130 + 144) = v241;
  *(v130 + 120) = v145;
  sub_1CA94C1E8();
  v146 = sub_1CA2F864C();
  v147 = v235;
  *(v235 + 56) = v146;
  v148 = swift_allocObject();
  *(v148 + 16) = v234;
  *(v148 + 32) = v231;
  *(v148 + 40) = 0xD000000000000023;
  *(v148 + 48) = 0x80000001CA9CE0E0;
  v149 = MEMORY[0x1E69E6158];
  v150 = v233;
  *(v148 + 64) = MEMORY[0x1E69E6158];
  *(v148 + 72) = v150;
  *(v148 + 80) = 0x72746E756F434657;
  *(v148 + 88) = 0xE900000000000079;
  v151 = v232;
  *(v148 + 104) = v149;
  *(v148 + 112) = v151;
  v152 = sub_1CA94C438();
  v232 = v153;
  v154 = sub_1CA94C438();
  v156 = v155;
  *&v234 = &v226;
  MEMORY[0x1EEE9AC00](v154);
  v157 = &v226 - v245;
  sub_1CA948D98();
  v158 = [v141 bundleURL];
  MEMORY[0x1EEE9AC00](v158);
  v159 = &v226 - v243;
  sub_1CA948B68();

  v160 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v161 = sub_1CA2F9F14(v152, v232, v154, v156, 0, 0, v157, v159);
  *(v148 + 144) = v241;
  *(v148 + 120) = v161;
  sub_1CA94C1E8();
  *(v147 + 64) = sub_1CA2F864C();
  v162 = swift_allocObject();
  *(v162 + 16) = xmmword_1CA981300;
  *(v162 + 32) = v231;
  *(v162 + 40) = 0xD000000000000012;
  *(v162 + 48) = 0x80000001CA99B980;
  v163 = MEMORY[0x1E69E6158];
  *(v162 + 64) = MEMORY[0x1E69E6158];
  *(v162 + 72) = @"DefaultValue";
  v164 = MEMORY[0x1E69E6530];
  *(v162 + 80) = 25;
  v165 = v233;
  *(v162 + 104) = v164;
  *(v162 + 112) = v165;
  *(v162 + 120) = 0x694C6D6574494657;
  *(v162 + 128) = 0xEB0000000074696DLL;
  *(v162 + 144) = v163;
  *(v162 + 152) = @"MaximumValue";
  *(v162 + 160) = 100;
  *(v162 + 184) = v164;
  *(v162 + 192) = @"MinimumValue";
  *(v162 + 200) = 1;
  *(v162 + 224) = v164;
  *(v162 + 232) = @"StepperPrefix";
  v166 = @"DefaultValue";
  v167 = @"MaximumValue";
  v168 = @"MinimumValue";
  v169 = @"StepperPrefix";
  v170 = sub_1CA94C438();
  v233 = v171;
  *&v234 = v170;
  v172 = sub_1CA94C438();
  v232 = v173;
  v236 = &v226;
  MEMORY[0x1EEE9AC00](v172);
  v174 = &v226 - v245;
  sub_1CA948D98();
  v175 = v242;
  v176 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v176);
  v177 = v243;
  sub_1CA948B68();

  v178 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v162 + 240) = sub_1CA2F9F14(v234, v233, v172, v232, 0, 0, v174, &v226 - v177);
  v179 = v241;
  *(v162 + 264) = v241;
  *(v162 + 272) = @"StepperDescription";
  v180 = @"StepperDescription";
  v181 = sub_1CA94C438();
  v233 = v182;
  *&v234 = v181;
  v183 = sub_1CA94C438();
  v232 = v184;
  v236 = &v226;
  MEMORY[0x1EEE9AC00](v183);
  v185 = &v226 - v245;
  sub_1CA948D98();
  v186 = [v175 bundleURL];
  MEMORY[0x1EEE9AC00](v186);
  sub_1CA948B68();

  v187 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v162 + 280) = sub_1CA2F9F14(v234, v233, v183, v232, 0, 0, v185, &v226 - v177);
  *(v162 + 304) = v179;
  *(v162 + 312) = @"StepperNoun";
  v188 = @"StepperNoun";
  v189 = sub_1CA94C438();
  v236 = v189;
  v191 = v190;
  *&v234 = v190;
  v251 = 0;
  v252 = 0xE000000000000000;
  sub_1CA94D408();

  v251 = v189;
  v252 = v191;
  v249 = 10;
  v250 = 0xE100000000000000;
  v247 = 32;
  v248 = 0xE100000000000000;
  sub_1CA27BAF0();
  v251 = sub_1CA94D1B8();
  v252 = v192;
  v193 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v194 = v251;
  v195 = v252;
  MEMORY[0x1EEE9AC00](v193);
  v196 = &v226 - v245;
  sub_1CA948D98();
  v197 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v197);
  v198 = &v226 - v243;
  sub_1CA948B68();

  v199 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v200 = sub_1CA2F9F14(v194, v195, v236, v234, 0, 0, v196, v198);
  *(v162 + 344) = v241;
  *(v162 + 320) = v200;
  sub_1CA94C1E8();
  v201 = sub_1CA2F864C();
  v202 = v235;
  *(v235 + 72) = v201;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v204 = v239;
  v239[40] = v202;
  v204[43] = v203;
  v204[44] = @"ParameterSummary";
  v205 = @"ParameterSummary";
  v206 = sub_1CA94C438();
  v208 = v207;
  v209 = sub_1CA94C438();
  v211 = v210;
  MEMORY[0x1EEE9AC00](v209);
  v212 = &v226 - v245;
  sub_1CA948D98();
  v213 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v213);
  v214 = &v226 - v243;
  sub_1CA948B68();

  v215 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v216 = sub_1CA2F9F14(v206, v208, v209, v211, 0, 0, v212, v214);
  v217 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v218 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v219 = v239;
  v239[45] = v217;
  v219[48] = v218;
  v219[49] = @"RequiredResources";
  v219[50] = &unk_1F4A07A58;
  v219[53] = v229;
  v219[54] = @"ResidentCompatible";
  v220 = MEMORY[0x1E69E6370];
  v219[58] = MEMORY[0x1E69E6370];
  *(v219 + 440) = 1;
  v221 = v219;
  v222 = @"RequiredResources";
  v223 = @"ResidentCompatible";
  v221[59] = sub_1CA94C368();
  v221[60] = 0x73656E755469;
  v221[61] = 0xE600000000000000;
  v221[63] = MEMORY[0x1E69E6158];
  v221[64] = @"SuggestedAsInitialAction";
  v221[68] = v220;
  *(v221 + 520) = 0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v224 = @"SuggestedAsInitialAction";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA59AD30()
{
  v58 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v56 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v57 = v12;
  v13 = &v47 - v56;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v55 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v53 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v54 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v47 - v54;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v52 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = MEMORY[0x1E69E6158];
  v23 = sub_1CA94C1E8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v23;
  *(inited + 144) = v24;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 6579538;
  *(inited + 168) = 0xE300000000000000;
  *(inited + 184) = v22;
  *(inited + 192) = @"IconSymbol";
  strcpy((inited + 200), "sun.max.fill");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  *(inited + 224) = v22;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 264) = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  v25 = @"IconColor";
  v26 = @"IconSymbol";
  v27 = @"InputPassthrough";
  v28 = sub_1CA94C368();
  *(inited + 304) = v22;
  *(inited + 272) = v28;
  *(inited + 280) = 0xD000000000000055;
  *(inited + 288) = 0x80000001CA9D0D90;
  *(inited + 312) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1CA981310;
  *(v29 + 32) = 0x65756C6176;
  *(v29 + 40) = 0xE500000000000000;
  v51 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1CA981350;
  *(v30 + 32) = @"Description";
  v31 = @"Description";
  v32 = sub_1CA94C438();
  v48 = v33;
  v49 = v32;
  v34 = sub_1CA94C438();
  v36 = v35;
  v50 = &v47;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v47 - v56;
  sub_1CA948D98();
  v38 = [v55 bundleURL];
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v47 - v54;
  sub_1CA948B68();

  v40 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v30 + 40) = sub_1CA2F9F14(v49, v48, v34, v36, 0, 0, v37, v39);
  *(v30 + 64) = v52;
  *(v30 + 72) = @"Key";
  strcpy((v30 + 80), "WFBrightness");
  *(v30 + 93) = 0;
  *(v30 + 94) = -5120;
  v41 = MEMORY[0x1E69E6158];
  *(v30 + 104) = MEMORY[0x1E69E6158];
  *(v30 + 112) = @"MaximumIconName";
  *(v30 + 120) = 0xD000000000000014;
  *(v30 + 128) = 0x80000001CA9D0ED0;
  *(v30 + 144) = v41;
  *(v30 + 152) = @"MinimumIconName";
  *(v30 + 184) = v41;
  *(v30 + 160) = 0xD000000000000013;
  *(v30 + 168) = 0x80000001CA9D0EF0;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v42 = @"Key";
  v43 = @"MaximumIconName";
  v44 = @"MinimumIconName";
  sub_1CA94C1E8();
  *(v29 + 48) = sub_1CA2F864C();
  v45 = sub_1CA94C1E8();
  *(inited + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 320) = v45;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA59B45C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = v2[3];
  v4 = OUTLINED_FUNCTION_116();
  if (v5(v4))
  {
    sub_1CA94C438();
    OUTLINED_FUNCTION_1_2();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v6 = v2[4];
  v7 = OUTLINED_FUNCTION_116();
  if (v8(v7))
  {
    sub_1CA94C438();
    OUTLINED_FUNCTION_1_2();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v9 = v2[7];
  v10 = OUTLINED_FUNCTION_116();
  if ((v11(v10) & 1) == 0)
  {
    v13 = WFDefaultLocalizedLabelForContentOperator();
    if (v13)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_13;
  }

  sub_1CA94C438();
  OUTLINED_FUNCTION_1_2();
  if (qword_1EDB9F5F0 != -1)
  {
LABEL_13:
    OUTLINED_FUNCTION_0_3();
  }

LABEL_9:
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_7_24();
  v12 = OUTLINED_FUNCTION_18_18();
  v13 = OUTLINED_FUNCTION_4_36(v12, sel_localizedStringForKey_value_table_);

LABEL_10:
  sub_1CA94C3A8();

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1CA59B62C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA59B678()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_5(v0, v1, v2, v3);
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_13_30(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_13_2(v8);

  return v11(v10);
}

uint64_t sub_1CA59B768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1CA2AD81C;

  return sub_1CA59B678();
}

uint64_t sub_1CA59B824()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_5(v0, v1, v2, v3);
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_13_30(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_13_2(v8);

  return v11(v10);
}

uint64_t sub_1CA59B914()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  v7 = *(v6 + 40);
  v8 = *v1;
  OUTLINED_FUNCTION_13();
  *v9 = v8;
  *(v10 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v8 + 8);

    return v14(v3 & 1);
  }
}

uint64_t sub_1CA59BA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1CA4E349C;

  return sub_1CA59B824();
}

uint64_t sub_1CA59BB10(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = v2[3];
  v4 = OUTLINED_FUNCTION_116();
  if (v5(v4))
  {
    sub_1CA94C438();
    OUTLINED_FUNCTION_1_2();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v6 = v2[4];
  v7 = OUTLINED_FUNCTION_116();
  if (v8(v7))
  {
    sub_1CA94C438();
    OUTLINED_FUNCTION_1_2();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v9 = v2[7];
  v10 = OUTLINED_FUNCTION_116();
  if ((v11(v10) & 1) == 0)
  {
    v13 = WFDefaultLocalizedLabelForContentOperator();
    if (v13)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_13;
  }

  sub_1CA94C438();
  OUTLINED_FUNCTION_1_2();
  if (qword_1EDB9F5F0 != -1)
  {
LABEL_13:
    OUTLINED_FUNCTION_0_3();
  }

LABEL_9:
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_7_24();
  v12 = OUTLINED_FUNCTION_18_18();
  v13 = OUTLINED_FUNCTION_4_36(v12, sel_localizedStringForKey_value_table_);

LABEL_10:
  sub_1CA94C3A8();

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1CA59BCF0()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_5(v0, v1, v2, v3);
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_13_30(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_13_2(v8);

  return v11(v10);
}

uint64_t sub_1CA59BDE0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v6 + 8);

    return v12();
  }
}

uint64_t sub_1CA59BEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1CA2AD9FC;

  return sub_1CA59BCF0();
}

uint64_t sub_1CA59BFB8()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_5(v0, v1, v2, v3);
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_13_30(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_13_2(v8);

  return v11(v10);
}

uint64_t sub_1CA59C0A8()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  v7 = *(v6 + 40);
  v8 = *v1;
  OUTLINED_FUNCTION_13();
  *v9 = v8;
  *(v10 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v8 + 8);

    return v14((v3 & 1) == 0);
  }
}

uint64_t sub_1CA59C1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1CA4E42D0;

  return sub_1CA59BFB8();
}

uint64_t sub_1CA59C28C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA59C2C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CA59C338(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
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
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
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

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1CA59C474(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v17 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v17))
      {
        v12 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v12 = v18;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        *(a1 + v8) = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *(a1 + v8) = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *(a1 + v8) = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v16 = (v13 >> v9) + 1;
      if (v8)
      {
        v19 = v13 & ~(-1 << v9);
        v20 = OUTLINED_FUNCTION_23();
        bzero(v20, v21);
        if (v8 == 3)
        {
          *a1 = v19;
          *(a1 + 2) = BYTE2(v19);
        }

        else if (v8 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      v14 = OUTLINED_FUNCTION_23();
      bzero(v14, v15);
      *a1 = v13;
      v16 = 1;
    }

    switch(v12)
    {
      case 1:
        *(a1 + v8) = v16;
        break;
      case 2:
        *(a1 + v8) = v16;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *(a1 + v8) = v16;
        break;
      default:
        return;
    }
  }
}

id sub_1CA59C6D8()
{
  v129 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9D0F70;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v136 = inited;
  v6 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1CA981310;
  *(v7 + 32) = @"DescriptionSummary";
  v8 = @"Description";
  v9 = @"DescriptionSummary";
  v10 = sub_1CA94C438();
  v132 = v11;
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA948E58();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v137 = v17;
  v138 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v120 - v138;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v133 = qword_1EDB9F690;
  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v134 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v135 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v120 - v135;
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v10, v132, v12, v14, 0, 0, v18, v22);
  v132 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v7 + 64) = v132;
  *(v7 + 40) = v24;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v25 = sub_1CA6B3784();
  v26 = v136;
  v136[15] = v25;
  v26[18] = v6;
  v26[19] = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1CA981350;
  *(v27 + 32) = 0x656C7069746C754DLL;
  *(v27 + 40) = 0xE800000000000000;
  v28 = MEMORY[0x1E69E6370];
  *(v27 + 48) = 1;
  *(v27 + 72) = v28;
  strcpy((v27 + 80), "ParameterKey");
  *(v27 + 93) = 0;
  *(v27 + 94) = -5120;
  *(v27 + 96) = 0x557475706E494657;
  *(v27 + 104) = 0xEA00000000004C52;
  *(v27 + 120) = MEMORY[0x1E69E6158];
  *(v27 + 128) = 0x6465726975716552;
  *(v27 + 136) = 0xE800000000000000;
  *(v27 + 144) = 1;
  *(v27 + 168) = v28;
  *(v27 + 176) = 0x7365707954;
  v29 = v28;
  *(v27 + 184) = 0xE500000000000000;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v27 + 216) = v128;
  *(v27 + 192) = &unk_1F4A07B48;
  v30 = @"Input";
  v31 = sub_1CA94C1E8();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v26[20] = v31;
  v26[23] = v32;
  v26[24] = @"InputPassthrough";
  *(v26 + 200) = 1;
  v26[28] = v29;
  v26[29] = @"Name";
  v33 = @"InputPassthrough";
  v34 = @"Name";
  v35 = sub_1CA94C438();
  v37 = v36;
  v38 = sub_1CA94C438();
  v40 = v39;
  v131 = &v120;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v120 - v138;
  sub_1CA948D98();
  v42 = v133;
  v43 = [v133 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v120 - v135;
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v35, v37, v38, v40, 0, 0, v41, v44);
  v47 = v136;
  v136[30] = v46;
  v47[33] = v132;
  v47[34] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v131 = swift_allocObject();
  *(v131 + 1) = xmmword_1CA981360;
  v130 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_1CA981380;
  *(v48 + 32) = @"AlwaysShowsButton";
  *(v48 + 40) = 1;
  *(v48 + 64) = MEMORY[0x1E69E6370];
  *(v48 + 72) = @"Class";
  *(v48 + 80) = 0xD00000000000001DLL;
  *(v48 + 88) = 0x80000001CA99FB10;
  *(v48 + 104) = MEMORY[0x1E69E6158];
  *(v48 + 112) = @"Description";
  v126 = @"Class";
  v49 = @"Parameters";
  v50 = @"AlwaysShowsButton";
  v51 = @"Description";
  v52 = sub_1CA94C438();
  v123 = v53;
  v124 = v52;
  v54 = sub_1CA94C438();
  v122 = v55;
  v125 = &v120;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v120 - v138;
  sub_1CA948D98();
  v57 = [v42 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = v135;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v48 + 120) = sub_1CA2F9F14(v124, v123, v54, v122, 0, 0, v56, &v120 - v58);
  v60 = v132;
  *(v48 + 144) = v132;
  *(v48 + 152) = @"Key";
  *(v48 + 160) = 0xD000000000000012;
  *(v48 + 168) = 0x80000001CA9B5230;
  *(v48 + 184) = MEMORY[0x1E69E6158];
  *(v48 + 192) = @"Label";
  v61 = @"Key";
  v62 = @"Label";
  v122 = v61;
  v123 = v62;
  v124 = sub_1CA94C438();
  v121 = v63;
  v64 = sub_1CA94C438();
  v66 = v65;
  v125 = &v120;
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v120 - v138;
  sub_1CA948D98();
  v68 = [v133 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v70 = sub_1CA2F9F14(v124, v121, v64, v66, 0, 0, v67, &v120 - v58);
  *(v48 + 224) = v60;
  *(v48 + 200) = v70;
  v71 = sub_1CA94C368();
  v72 = MEMORY[0x1E69E6158];
  *(v48 + 264) = MEMORY[0x1E69E6158];
  *(v48 + 232) = v71;
  *(v48 + 240) = 1701736270;
  *(v48 + 248) = 0xE400000000000000;
  _s3__C3KeyVMa_0(0);
  v125 = v73;
  v124 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v131[4] = sub_1CA2F864C();
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1CA981300;
  *(v74 + 32) = @"AutocapitalizationType";
  *(v74 + 40) = 1701736270;
  *(v74 + 48) = 0xE400000000000000;
  v75 = v126;
  *(v74 + 64) = v72;
  *(v74 + 72) = v75;
  *(v74 + 80) = 0xD000000000000014;
  *(v74 + 88) = 0x80000001CA99B500;
  *(v74 + 104) = v72;
  *(v74 + 112) = @"DisableAutocorrection";
  *(v74 + 120) = 1;
  v76 = v122;
  *(v74 + 144) = MEMORY[0x1E69E6370];
  *(v74 + 152) = v76;
  *(v74 + 160) = 0x557475706E494657;
  *(v74 + 168) = 0xEA00000000004C52;
  *(v74 + 184) = v72;
  *(v74 + 192) = @"KeyboardType";
  *(v74 + 200) = 5001813;
  *(v74 + 208) = 0xE300000000000000;
  v77 = v123;
  *(v74 + 224) = v72;
  *(v74 + 232) = v77;
  v78 = @"AutocapitalizationType";
  v79 = @"DisableAutocorrection";
  v80 = @"KeyboardType";
  v126 = sub_1CA94C438();
  v123 = v81;
  v122 = sub_1CA94C438();
  v83 = v82;
  v127 = &v120;
  MEMORY[0x1EEE9AC00](v122);
  v84 = v138;
  sub_1CA948D98();
  v85 = v133;
  v86 = [v133 bundleURL];
  v121 = &v120;
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v120 - v135;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 240) = sub_1CA2F9F14(v126, v123, v122, v83, 0, 0, &v120 - v84, v87);
  v89 = v132;
  *(v74 + 264) = v132;
  *(v74 + 272) = @"Placeholder";
  v90 = @"Placeholder";
  v126 = sub_1CA94C438();
  v123 = v91;
  v92 = sub_1CA94C438();
  v94 = v93;
  v127 = &v120;
  MEMORY[0x1EEE9AC00](v92);
  v95 = &v120 - v84;
  sub_1CA948D98();
  v96 = [v85 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  v97 = v135;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 280) = sub_1CA2F9F14(v126, v123, v92, v94, 0, 0, v95, &v120 - v97);
  *(v74 + 304) = v89;
  *(v74 + 312) = @"TextContentType";
  *(v74 + 344) = MEMORY[0x1E69E6158];
  *(v74 + 320) = 5001813;
  *(v74 + 328) = 0xE300000000000000;
  v99 = @"TextContentType";
  sub_1CA94C1E8();
  v100 = sub_1CA2F864C();
  v101 = v131;
  v131[5] = v100;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v103 = v136;
  v136[35] = v101;
  v103[38] = v102;
  v103[39] = @"ParameterSummary";
  v104 = @"ParameterSummary";
  v105 = sub_1CA94C438();
  v107 = v106;
  v108 = sub_1CA94C438();
  v110 = v109;
  v132 = &v120;
  MEMORY[0x1EEE9AC00](v108);
  v111 = &v120 - v138;
  sub_1CA948D98();
  v112 = [v133 bundleURL];
  MEMORY[0x1EEE9AC00](v112);
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v114 = sub_1CA2F9F14(v105, v107, v108, v110, 0, 0, v111, &v120 - v97);
  v115 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v116 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v117 = v136;
  v136[40] = v115;
  v117[43] = v116;
  v117[44] = @"RequiredResources";
  v117[48] = v128;
  v117[45] = &unk_1F4A07B78;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v118 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t AggregatedEntry.init<A>(entry:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_6_0();
  v11 = v10 - v9;
  (*(v7 + 16))(v10 - v9, a1, a2);
  if (OUTLINED_FUNCTION_14_25())
  {
    v12 = OUTLINED_FUNCTION_7_36();
    v3(v12);
    v13 = v18;
    v14 = v19;
LABEL_7:
    result = (v3)(v11, a2);
    *a3 = v13;
    *(a3 + 8) = v14;
    return result;
  }

  sub_1CA25B3D0(0, &qword_1EDB9F740, off_1E836F5A8);
  if (OUTLINED_FUNCTION_14_25())
  {
    v15 = OUTLINED_FUNCTION_7_36();
    v3(v15);
    v14 = 0;
    v13 = v18;
    goto LABEL_7;
  }

  sub_1CA25B3D0(0, &qword_1EDB9F6F8, 0x1E69E0AE0);
  if (OUTLINED_FUNCTION_14_25())
  {
    v16 = OUTLINED_FUNCTION_7_36();
    v3(v16);
    v13 = v18;
    v14 = 1;
    goto LABEL_7;
  }

  result = sub_1CA94D5F8();
  __break(1u);
  return result;
}

uint64_t sub_1CA59D874(uint64_t *a1, char *a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA6278AC(v4);
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1CA94C218();
  sub_1CA5A2154(v8, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1CA59D910()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 5);
  v7 = *v0;
  v8 = v7;
  sub_1CA5A3E5C(&v8, &v6);
  MEMORY[0x1CCAA1300](58, 0xE100000000000000);
  MEMORY[0x1CCAA1300](v1, v2);
  MEMORY[0x1CCAA1300](58, 0xE100000000000000);
  sub_1CA5A3264();
  v6 = sub_1CA94C778();
  v4 = sub_1CA94D798();
  MEMORY[0x1CCAA1300](v4);

  return v7;
}

id AggregatedEntry.namedQueryInfo.getter()
{
  OUTLINED_FUNCTION_30_17();
  if (v1)
  {
    return [*v0 namedQueryInfo];
  }

  else
  {
    return 0;
  }
}

__n128 TopHitBadge.init(id:icon:position:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  result = *a1;
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a2;
  *(a4 + 48) = v4;
  return result;
}

CGPoint __swiftcall TopHitBadge.Position.centerPoint(for:in:)(CGSize a1, CGSize in)
{
  v3 = a1.height * 0.5;
  v4 = in.width - a1.width * 0.5;
  v5 = in.height - v3;
  switch(*v2)
  {
    case 1:
      v6 = v4 + 1.0;
      v7 = v3 + -1.0;
      break;
    case 2:
      v6 = v3 + -1.0;
      v8 = 1.0;
      goto LABEL_5;
    case 3:
      v8 = 1.0;
      v6 = v4 + 1.0;
LABEL_5:
      v7 = v5 + v8;
      break;
    default:
      v6 = v3 + -1.0;
      v7 = v3 + -1.0;
      break;
  }

  result.y = v7;
  result.x = v6;
  return result;
}

uint64_t TopHitBadge.Position.hashValue.getter()
{
  v1 = *v0;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  return sub_1CA94D968();
}

uint64_t TopHitIconMask.hashValue.getter()
{
  v1 = *v0;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  return sub_1CA94D968();
}

uint64_t AggregatedEntry.name.getter()
{
  if (*(v0 + 8))
  {
    v1 = *v0;
    return WFExecutableAppShortcut.name.getter();
  }

  else
  {
    v3 = [*v0 name];
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_1_2();

    return OUTLINED_FUNCTION_52_0();
  }
}

void AggregatedEntry.iconMask.getter(BOOL *a1@<X8>)
{
  OUTLINED_FUNCTION_30_17();
  if (v3)
  {
    v4 = [*v1 entityInfo];
    v5 = v4;
    if (v4)
    {
    }

    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

uint64_t AggregatedEntry.asEntry<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = sub_1CA94D098();
  v5 = OUTLINED_FUNCTION_1_0(v54);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_1();
  v53 = v10;
  OUTLINED_FUNCTION_31_2();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v49 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v49 - v18;
  OUTLINED_FUNCTION_31_2();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v49 - v21;
  v23 = *(a1 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_3_1();
  v51 = v25;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v49 - v27;
  v29 = *(v2 + 8);
  v55 = *v2;
  v56 = v29;
  v30 = v55;
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_27_18(v22, 0);
    v31 = *(v23 + 32);
    v31(v28, v22, a1);
    v32 = a2;
    v33 = v28;
LABEL_9:
    v31(v32, v33, a1);
    v46 = 0;
    return OUTLINED_FUNCTION_27_18(a2, v46);
  }

  v50 = a2;
  OUTLINED_FUNCTION_27_18(v22, 1);
  v34 = *(v7 + 8);
  v34(v22, v54);
  v35 = (v7 + 32);
  v55 = v30;
  if (v29)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F6F8, 0x1E69E0AE0);
    v36 = v30;
    v37 = swift_dynamicCast();
    OUTLINED_FUNCTION_27_18(v14, v37 ^ 1u);
    v38 = *v35;
    v39 = v52;
    v40 = v52;
    v41 = v14;
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EDB9F740, off_1E836F5A8);
    v42 = v30;
    v43 = swift_dynamicCast();
    OUTLINED_FUNCTION_27_18(v17, v43 ^ 1u);
    v38 = *v35;
    v40 = v52;
    v41 = v17;
    v39 = v52;
  }

  v44 = v54;
  v38(v40, v41, v54);
  v45 = v53;
  v38(v53, v39, v44);
  if (__swift_getEnumTagSinglePayload(v45, 1, a1) != 1)
  {
    v31 = *(v23 + 32);
    v47 = v51;
    v31(v51, v45, a1);
    a2 = v50;
    v32 = v50;
    v33 = v47;
    goto LABEL_9;
  }

  v34(v45, v44);
  v46 = 1;
  a2 = v50;
  return OUTLINED_FUNCTION_27_18(a2, v46);
}

uint64_t static AggregatedEntry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
  v5 = v3;
  v6 = v2;
  v7 = sub_1CA94CFD8();

  return v7 & 1;
}

uint64_t AggregatedEntry.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v2);
  sub_1CA94CFE8();
  return sub_1CA94D968();
}

uint64_t sub_1CA59E19C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1CA94D918();
  AggregatedEntry.hash(into:)();
  return sub_1CA94D968();
}

uint64_t sub_1CA59E1EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CA59E244();
  *a2 = result;
  return result;
}

uint64_t sub_1CA59E218(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1CA94C218();
  return sub_1CA59E2B8();
}

uint64_t sub_1CA59E244()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CA94A098();

  return v1;
}

uint64_t sub_1CA59E2B8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1CA94A0A8();
}

uint64_t sub_1CA59E328(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446A58, &qword_1CA98C7A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, a1);
  v9 = *a2;
  return sub_1CA59E470(v7);
}

uint64_t sub_1CA59E3FC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446978, &qword_1CA98C2F0);
  sub_1CA94A078();
  return swift_endAccess();
}

uint64_t sub_1CA59E470(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446A58, &qword_1CA98C7A8);
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(&v13 - v8, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446978, &qword_1CA98C2F0);
  sub_1CA94A088();
  swift_endAccess();
  v9 = *(v5 + 8);
  v10 = OUTLINED_FUNCTION_20_0();
  return v11(v10);
}

uint64_t AggregatedRunnableDataSource.__allocating_init(dataSources:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_87();
  AggregatedRunnableDataSource.init(dataSources:)(v3);
  return v0;
}

uint64_t AggregatedRunnableDataSource.init(dataSources:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446978, &qword_1CA98C2F0);
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v21 - v9;
  v11 = OBJC_IVAR____TtC11WorkflowKit28AggregatedRunnableDataSource__collections;
  v12 = MEMORY[0x1E69E7CC0];
  v21[1] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446980, &qword_1CA98C2F8);
  sub_1CA94A068();
  (*(v6 + 32))(v1 + v11, v10, v3);
  *(v1 + OBJC_IVAR____TtC11WorkflowKit28AggregatedRunnableDataSource_cancellables) = v12;
  *(v1 + OBJC_IVAR____TtC11WorkflowKit28AggregatedRunnableDataSource_dataSources) = a1;
  v13 = *(a1 + 16);
  result = sub_1CA94C218();
  v15 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    if (v13 == v15)
    {

      sub_1CA59F5A8();
      return v1;
    }

    if (v15 >= *(a1 + 16))
    {
      break;
    }

    ++v15;
    v18 = *(i - 1);
    v17 = *i;
    ObjectType = swift_getObjectType();
    v20 = swift_unknownObjectRetain();
    sub_1CA59E768(v20, ObjectType, v17);
    result = swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA59E768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = OUTLINED_FUNCTION_1_0(AssociatedTypeWitness);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v17 - v12;
  sub_1CA949FD8();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  swift_getAssociatedConformanceWitness();

  sub_1CA94A108();

  (*(v9 + 8))(v13, AssociatedTypeWitness);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446A78, &qword_1CA98C7C0);
  sub_1CA5A3EC4();
  sub_1CA949F98();
  swift_endAccess();
}

uint64_t sub_1CA59E96C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CA59F5A8();
  }

  return result;
}

void sub_1CA59E9C4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1CA949F78();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_1();
  v66 = v12;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v55 - v14;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - v16;
  v62 = *MEMORY[0x1E69E1128];
  sub_1CA949C58();
  sub_1CA94C218();
  v18 = sub_1CA949F68();
  v19 = sub_1CA94CC38();

  v20 = os_log_type_enabled(v18, v19);
  v63 = v6;
  v58 = v9;
  v65 = a1;
  if (v20)
  {
    OUTLINED_FUNCTION_29_0();
    v21 = a1;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v68 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1CA26B54C(v21, a2, &v68);
    _os_log_impl(&dword_1CA256000, v18, v19, "Reloading the runnable data sources with reason: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();

    v61 = *(v58 + 8);
  }

  else
  {

    v61 = *(v9 + 8);
  }

  v61(v17, v6);
  v25 = *(v57 + OBJC_IVAR____TtC11WorkflowKit28AggregatedRunnableDataSource_dataSources);
  v26 = *(v25 + 16);
  if (!v26)
  {
    v67 = MEMORY[0x1E69E7CC0];
LABEL_25:
    sub_1CA59EF94(v67);

    sub_1CA59E2B8();
    v50 = v56;
    sub_1CA949C58();

    v51 = sub_1CA949F68();
    v52 = sub_1CA94CC38();
    if (os_log_type_enabled(v51, v52))
    {
      OUTLINED_FUNCTION_29_0();
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      v54 = *(sub_1CA59E244() + 16);

      *(v53 + 4) = v54;

      _os_log_impl(&dword_1CA256000, v51, v52, "Loaded %ld collections.", v53, 0xCu);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    else
    {
    }

    v61(v50, v63);
    return;
  }

  v64 = a2;
  v60 = v58 + 8;
  v27 = (v25 + 40);
  v67 = MEMORY[0x1E69E7CC0];
  *&v24 = 138412290;
  v59 = v24;
  while (1)
  {
    v29 = *(v27 - 1);
    v28 = *v27;
    ObjectType = swift_getObjectType();
    v31 = *(v28 + 40);
    swift_unknownObjectRetain();
    v31(v65, v64, ObjectType, v28);
    if (v3)
    {
      sub_1CA949C58();
      v32 = v3;
      v33 = sub_1CA949F68();
      v34 = sub_1CA94CC18();

      if (os_log_type_enabled(v33, v34))
      {
        OUTLINED_FUNCTION_29_0();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = v59;
        v37 = v3;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 4) = v38;
        *v36 = v38;
        _os_log_impl(&dword_1CA256000, v33, v34, "Failed to reload aggregated entries due to: %@", v35, 0xCu);
        sub_1CA532E30(v36, &qword_1EC444AE0, &qword_1CA985B70);
        OUTLINED_FUNCTION_154();
        MEMORY[0x1CCAA4BF0]();
        OUTLINED_FUNCTION_154();
        MEMORY[0x1CCAA4BF0]();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v61(v66, v63);
      v3 = 0;
      goto LABEL_22;
    }

    v39 = sub_1CA59F944(v29, ObjectType, v28);
    v40 = v39[2];
    v41 = *(v67 + 16);
    if (__OFADD__(v41, v40))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v67;
    if (!isUniquelyReferenced_nonNull_native || (v44 = *(v67 + 24) >> 1, v44 < v41 + v40))
    {
      sub_1CA2E7134();
      v43 = v45;
      v44 = *(v45 + 24) >> 1;
    }

    v46 = v39[2];
    v67 = v43;
    if (v46)
    {
      if (v44 - *(v43 + 16) < v40)
      {
        goto LABEL_31;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F70, &qword_1CA981A80);
      swift_arrayInitWithCopy();

      if (v40)
      {
        v47 = *(v67 + 16);
        v48 = __OFADD__(v47, v40);
        v49 = v47 + v40;
        if (v48)
        {
          goto LABEL_32;
        }

        *(v67 + 16) = v49;
      }
    }

    else
    {

      if (v40)
      {
        goto LABEL_30;
      }
    }

    swift_unknownObjectRelease();
LABEL_22:
    v27 += 2;
    if (!--v26)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_1CA59EF94(uint64_t a1)
{
  v59 = sub_1CA949F78();
  v2 = *(v59 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  v54 = v5;
  if (v6)
  {
    v62 = v2;
    v67 = MEMORY[0x1E69E7CC0];
    sub_1CA271524();
    v7 = v67;
    v61 = a1;
    v8 = (a1 + 72);
    do
    {
      v9 = *(v8 - 4);
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v12 = *(v8 - 1);
      v13 = *v8;
      v65 = *(v8 - 5);
      v66 = v9;
      v14 = v12;
      sub_1CA94C218();
      swift_bridgeObjectRetain_n();
      sub_1CA94C218();
      MEMORY[0x1CCAA1300](58, 0xE100000000000000);
      MEMORY[0x1CCAA1300](v10, v11);
      MEMORY[0x1CCAA1300](58, 0xE100000000000000);
      sub_1CA5A3264();
      v64 = sub_1CA94C778();
      v15 = sub_1CA94D798();
      MEMORY[0x1CCAA1300](v15);

      v16 = v65;
      v17 = v66;
      v67 = v7;
      v18 = *(v7 + 16);
      if (v18 >= *(v7 + 24) >> 1)
      {
        sub_1CA271524();
        v7 = v67;
      }

      v8 += 6;
      *(v7 + 16) = v18 + 1;
      v19 = v7 + 16 * v18;
      *(v19 + 32) = v16;
      *(v19 + 40) = v17;
      --v6;
    }

    while (v6);
    v5 = v54;
    a1 = v61;
    v2 = v62;
  }

  sub_1CA94C218();
  sub_1CA94C218();
  v20 = a1;
  v21 = 0;
  v22 = sub_1CA5A0A6C(v7, v20);
  sub_1CA94C218();
  v65 = sub_1CA42AFCC(v22);
  sub_1CA59D874(&v65, v7);

  v23 = 0;
  v24 = v65;
  v60 = *(v65 + 16);
  v25 = *MEMORY[0x1E69E1128];
  v56 = (v2 + 8);
  v57 = v25;
  v52 = MEMORY[0x1E69E7CC0];
  *&v26 = 136315394;
  v53 = v26;
  v58 = v65;
LABEL_8:
  v27 = 48 * v23;
  while (1)
  {
    if (v60 == v23)
    {

      return v52;
    }

    if (v23 >= *(v24 + 16))
    {
      break;
    }

    v61 = v27;
    v62 = v23;
    v28 = *(v24 + v27 + 32);
    v29 = *(v24 + v27 + 40);
    v31 = *(v24 + v27 + 48);
    v30 = *(v24 + v27 + 56);
    v21 = *(v24 + v27 + 64);
    v32 = *(v24 + v27 + 72);
    v33 = *(v32 + 16);
    v34 = v21;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    if (v33)
    {
      v43 = v52;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = *(v43 + 16);
        sub_1CA2B9108();
        v43 = v67;
      }

      v46 = v62;
      v47 = v43;
      v48 = *(v43 + 16);
      if (v48 >= *(v43 + 24) >> 1)
      {
        sub_1CA2B9108();
        v46 = v62;
        v47 = v67;
      }

      v23 = v46 + 1;
      *(v47 + 16) = v48 + 1;
      v52 = v47;
      v49 = (v47 + 48 * v48);
      v49[4] = v28;
      v49[5] = v29;
      v49[6] = v31;
      v49[7] = v30;
      v49[8] = v21;
      v49[9] = v32;
      v5 = v54;
      goto LABEL_8;
    }

    sub_1CA949C58();
    sub_1CA94C218();
    sub_1CA94C218();
    v21 = v34;
    sub_1CA94C218();
    v35 = sub_1CA949F68();
    v36 = sub_1CA94CC38();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v55 = v21;
      v21 = v38;
      v64 = v38;
      *v37 = v53;
      sub_1CA94C218();
      v39 = sub_1CA26B54C(v31, v30, &v64);

      *(v37 + 4) = v39;
      *(v37 + 12) = 2080;
      v65 = v28;
      v66 = v29;
      sub_1CA94C218();
      MEMORY[0x1CCAA1300](58, 0xE100000000000000);
      MEMORY[0x1CCAA1300](v31, v30);
      MEMORY[0x1CCAA1300](58, 0xE100000000000000);
      sub_1CA5A3264();
      v63 = sub_1CA94C778();
      v40 = sub_1CA94D798();
      MEMORY[0x1CCAA1300](v40);

      v41 = sub_1CA26B54C(v65, v66, &v64);

      *(v37 + 14) = v41;
      _os_log_impl(&dword_1CA256000, v35, v36, "Got an empty collection: %s - %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCAA4BF0](v21, -1, -1);
      v42 = v37;
      v5 = v54;
      MEMORY[0x1CCAA4BF0](v42, -1, -1);

      (*v56)(v5, v59);
    }

    else
    {

      (*v56)(v5, v59);
    }

    v27 = v61 + 48;
    v23 = v62 + 1;
    v24 = v58;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_1CA59F5A8()
{
  v1 = v0;
  v2 = sub_1CA949F78();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_1();
  v40 = v8;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v37 = *MEMORY[0x1E69E1128];
  sub_1CA949C58();
  v12 = sub_1CA949F68();
  v13 = sub_1CA94CC38();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1CA256000, v12, v13, "Reloading the runnable collections", v14, 2u);
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
  }

  v15 = *(v5 + 8);
  v41 = v5 + 8;
  v42 = v2;
  v38 = v15;
  v15(v11, v2);
  v16 = 0;
  v39 = v1;
  v17 = *(v1 + OBJC_IVAR____TtC11WorkflowKit28AggregatedRunnableDataSource_dataSources);
  v18 = *(v17 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  v20 = (v17 + 40);
  while (v18 != v16)
  {
    if (v16 >= *(v17 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    v22 = *(v20 - 1);
    v21 = *v20;
    ObjectType = swift_getObjectType();
    v24 = swift_unknownObjectRetain();
    v25 = sub_1CA59F944(v24, ObjectType, v21);
    swift_unknownObjectRelease();
    v26 = v25[2];
    v27 = *(v19 + 16);
    if (__OFADD__(v27, v26))
    {
      goto LABEL_22;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v27 + v26 > *(v19 + 24) >> 1)
    {
      sub_1CA2E7134();
      v19 = v28;
    }

    if (v25[2])
    {
      if ((*(v19 + 24) >> 1) - *(v19 + 16) < v26)
      {
        goto LABEL_24;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F70, &qword_1CA981A80);
      swift_arrayInitWithCopy();

      if (v26)
      {
        v29 = *(v19 + 16);
        v30 = __OFADD__(v29, v26);
        v31 = v29 + v26;
        if (v30)
        {
          goto LABEL_25;
        }

        *(v19 + 16) = v31;
      }
    }

    else
    {

      if (v26)
      {
        goto LABEL_23;
      }
    }

    v20 += 2;
    ++v16;
  }

  sub_1CA59EF94(v19);

  sub_1CA59E2B8();
  v32 = v40;
  sub_1CA949C58();

  v33 = sub_1CA949F68();
  v34 = sub_1CA94CC38();
  if (os_log_type_enabled(v33, v34))
  {
    OUTLINED_FUNCTION_29_0();
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    v36 = *(sub_1CA59E244() + 16);

    *(v35 + 4) = v36;

    _os_log_impl(&dword_1CA256000, v33, v34, "Reloaded %ld collections.", v35, 0xCu);
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
  }

  else
  {
  }

  v38(v32, v42);
}

uint64_t *sub_1CA59F944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = (*(a3 + 32))(a2, a3);
  v10[2] = a2;
  v10[3] = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for RunnableCollection();
  v5 = sub_1CA94C758();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F70, &qword_1CA981A80);
  WitnessTable = swift_getWitnessTable();
  sub_1CA3E4888(sub_1CA5A3DAC, v10, v5, v6, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);
  OUTLINED_FUNCTION_87();

  return &v11;
}

uint64_t sub_1CA59FA90@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a1[1];
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v16 = *a1;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v14 = a2;
  v15 = a3;
  swift_getAssociatedTypeWitness();
  v7 = sub_1CA94C758();
  sub_1CA94C218();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1CA3E4888(sub_1CA5A3DCC, v13, v7, &type metadata for AggregatedEntry, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

  swift_getAssociatedConformanceWitness();
  type metadata accessor for RunnableCollection();
  sub_1CA5A3310();
  RunnableCollection.with<A>(_:)(v10, a4);
}

uint64_t sub_1CA59FC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = v10 - v6;
  (*(v8 + 16))(v10 - v6, a1, AssociatedTypeWitness);
  return AggregatedEntry.init<A>(entry:)(v7, AssociatedTypeWitness, a2);
}

uint64_t sub_1CA59FD08(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  *(v2 + 25) = *(a1 + 8);
  return MEMORY[0x1EEE6DFA0](sub_1CA59FD34, 0, 0);
}

uint64_t sub_1CA59FD34()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 48) = OBJC_IVAR____TtC11WorkflowKit28AggregatedRunnableDataSource_dataSources;
  sub_1CA94C838();
  *(v0 + 56) = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v2 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA59FDCC, v2, v1);
}

uint64_t sub_1CA59FDCC()
{
  OUTLINED_FUNCTION_0();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];

  v0[8] = *(v3 + v2);

  return MEMORY[0x1EEE6DFA0](sub_1CA59FE3C, 0, 0);
}

void sub_1CA59FE3C()
{
  OUTLINED_FUNCTION_39_1();
  v1 = *(v0 + 64);
  v2 = v1[2];
  *(v0 + 72) = v2;
  *(v0 + 80) = 0;
  if (!v2)
  {
    v8 = *(v0 + 25);
    v9 = *(v0 + 40);
    sub_1CA5A1D0C();
    v10 = swift_allocError();
    OUTLINED_FUNCTION_35_13(v10, v11);
    OUTLINED_FUNCTION_5();
    v12 = v9;
    OUTLINED_FUNCTION_26_18();

    __asm { BRAA            X0, X16 }
  }

  if (v1[2])
  {
    v3 = *(v0 + 25);
    v4 = *(v0 + 40);
    v5 = v1[5];
    *(v0 + 88) = v1[4];
    swift_getObjectType();
    OUTLINED_FUNCTION_31_10();
    swift_unknownObjectRetain();
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_6_40(v6);
    OUTLINED_FUNCTION_26_18();

    sub_1CA5A01D0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CA59FF60()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  v4 = *(v3 + 96);
  *v2 = *v0;
  *(v1 + 104) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CA5A0054, 0, 0);
}

uint64_t sub_1CA5A0054()
{
  OUTLINED_FUNCTION_39_1();
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  result = swift_unknownObjectRelease();
  if (v1)
  {
    v4 = *(v0 + 104);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_26_18();

    __asm { BRAA            X2, X16 }
  }

  v7 = *(v0 + 72);
  v8 = *(v0 + 80) + 1;
  *(v0 + 80) = v8;
  if (v8 == v7)
  {
    v9 = *(v0 + 25);
    v10 = *(v0 + 40);
    sub_1CA5A1D0C();
    v11 = swift_allocError();
    OUTLINED_FUNCTION_35_13(v11, v12);
    OUTLINED_FUNCTION_5();
    v13 = v10;
    OUTLINED_FUNCTION_26_18();

    __asm { BRAA            X0, X16 }
  }

  v16 = *(v0 + 64);
  if (v8 >= *(v16 + 16))
  {
    __break(1u);
  }

  else
  {
    v17 = *(v0 + 25);
    v18 = *(v0 + 40);
    v19 = v16 + 16 * v8;
    v20 = *(v19 + 40);
    *(v0 + 88) = *(v19 + 32);
    swift_getObjectType();
    OUTLINED_FUNCTION_31_10();
    swift_unknownObjectRetain();
    v21 = swift_task_alloc();
    *(v0 + 96) = v21;
    *v21 = v0;
    OUTLINED_FUNCTION_6_40();
    OUTLINED_FUNCTION_26_18();

    return sub_1CA5A01D0();
  }

  return result;
}

uint64_t sub_1CA5A01D0()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 16) = v5;
  v6 = sub_1CA949F78();
  *(v0 + 40) = v6;
  v7 = *(v6 - 8);
  *(v0 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v0 + 56) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 64) = AssociatedTypeWitness;
  v10 = sub_1CA94D098();
  *(v0 + 72) = v10;
  v11 = *(v10 - 8);
  *(v0 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v0 + 88) = swift_task_alloc();
  v13 = *(AssociatedTypeWitness - 8);
  *(v0 + 96) = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v16 = *v2;
  *(v0 + 104) = v15;
  *(v0 + 112) = v16;
  *(v0 + 160) = *(v2 + 8);
  sub_1CA94C838();
  *(v0 + 120) = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v18 = sub_1CA94C7C8();
  *(v0 + 128) = v18;
  *(v0 + 136) = v17;

  return MEMORY[0x1EEE6DFA0](sub_1CA5A03B8, v18, v17);
}

uint64_t sub_1CA5A03B8()
{
  OUTLINED_FUNCTION_59_0();
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v21 = *(v0 + 112);
  v22 = *(v0 + 160);
  AggregatedEntry.asEntry<A>()(v2, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 120);
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 72);

    (*(v5 + 8))(v4, v6);
    v7 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = *(v0 + 56);

    OUTLINED_FUNCTION_2_4();

    return v10(0);
  }

  else
  {
    v20 = *(v0 + 32);
    (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 88), *(v0 + 64));
    v12 = *(v20 + 48);
    v19 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 144) = v14;
    *v14 = v0;
    v14[1] = sub_1CA5A05AC;
    v15 = *(v0 + 104);
    v16 = *(v0 + 24);
    v17 = *(v0 + 32);
    v18 = *(v0 + 16);

    return v19(v15, v16, v17);
  }
}

uint64_t sub_1CA5A05AC()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;

  if (v0)
  {

    v11 = v5[16];
    v12 = v5[17];
    v13 = sub_1CA5A0768;
  }

  else
  {
    v5[19] = v3;
    v11 = v5[16];
    v12 = v5[17];
    v13 = sub_1CA5A06C4;
  }

  return MEMORY[0x1EEE6DFA0](v13, v11, v12);
}

uint64_t sub_1CA5A06C4()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[19];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[8];

  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_20_0();
  v8(v7);
  v9 = v0[13];
  v10 = v0[11];
  v11 = v0[7];

  OUTLINED_FUNCTION_2_4();

  return v12(v1);
}

void sub_1CA5A0768()
{
  OUTLINED_FUNCTION_39_1();
  v1 = v0[15];
  v2 = v0[7];

  v3 = *MEMORY[0x1E69E1128];
  sub_1CA949C58();
  v4 = sub_1CA949F68();
  v5 = sub_1CA94CC18();
  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[12];
  v7 = v0[13];
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  if (v6)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1CA256000, v4, v5, "Failed to create an action for top hit entry", v13, 2u);
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
  }

  (*(v12 + 8))(v10, v11);
  v14 = *(v8 + 8);
  v15 = OUTLINED_FUNCTION_20_0();
  v16(v15);
  v17 = v0[13];
  v18 = v0[11];
  v19 = v0[7];

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X2, X16 }
}

uint64_t AggregatedRunnableDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkflowKit28AggregatedRunnableDataSource__collections;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446978, &qword_1CA98C2F0);
  OUTLINED_FUNCTION_7_2(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC11WorkflowKit28AggregatedRunnableDataSource_dataSources);

  v5 = *(v0 + OBJC_IVAR____TtC11WorkflowKit28AggregatedRunnableDataSource_cancellables);

  return v0;
}

uint64_t AggregatedRunnableDataSource.__deallocating_deinit()
{
  AggregatedRunnableDataSource.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1CA5A09A4()
{
  OUTLINED_FUNCTION_0();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_15_20(v3);

  return sub_1CA59FD08(v1);
}

uint64_t sub_1CA5A0A2C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AggregatedRunnableDataSource();
  result = sub_1CA949FE8();
  *a1 = result;
  return result;
}

uint64_t sub_1CA5A0A6C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446A68, &qword_1CA98C7B0);
    v6 = sub_1CA94D688();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v9 = v6;
  sub_1CA5A1D78(a1, a2, 1, &v9);
  v7 = v9;
  if (v2)
  {
  }

  return v7;
}

uint64_t sub_1CA5A0B20()
{
  OUTLINED_FUNCTION_0();
  v0[32] = v1;
  v0[33] = v2;
  v0[30] = v3;
  v0[31] = v4;
  v0[28] = v5;
  v0[29] = v6;
  sub_1CA94C838();
  v0[34] = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v8 = sub_1CA94C7C8();
  v0[35] = v8;
  v0[36] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1CA5A0BB8, v8, v7);
}

uint64_t sub_1CA5A0BB8()
{
  OUTLINED_FUNCTION_59_0();
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[28];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = sub_1CA94C368();
  v0[37] = v6;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1CA5A0D0C;
  v7 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4469A0, &qword_1CA98C318);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1CA5A16B8;
  v0[21] = &block_descriptor_24;
  v0[22] = v7;
  [ObjCClassFromMetadata disambiguationEntriesForCollection:v6 limit:v1 completionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA5A0D0C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 304) = v4;
  v5 = v3[36];
  v6 = v3[35];
  if (v4)
  {
    v7 = sub_1CA5A14C8;
  }

  else
  {
    v7 = sub_1CA5A0E30;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1CA5A0E30()
{
  v1 = v0[37];
  v0[39] = v0[26];

  v2 = MEMORY[0x1E69E7CC0];
  v0[26] = MEMORY[0x1E69E7CC0];
  v3 = sub_1CA25B410();
  v0[40] = v3;
  if (v3)
  {
    if (v3 < 1)
    {
      __break(1u);
    }

    else
    {
      v4 = *MEMORY[0x1E69E0FB0];
      v0[42] = 0;
      v0[43] = v2;
      v0[41] = v4;
      v5 = v0[39];
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1CCAA22D0](0);
      }

      else
      {
        v6 = *(v5 + 32);
      }

      v12 = v6;
      v0[44] = v6;
      v0[10] = v0;
      v0[15] = v0 + 27;
      v13 = OUTLINED_FUNCTION_3_45();
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444FD0, &qword_1CA98C320);
      OUTLINED_FUNCTION_1_43(v14);
      OUTLINED_FUNCTION_2_51(COERCE_DOUBLE(1107296256));
      v0[20] = v15;
      v0[21] = &block_descriptor_8;
      v0[22] = v13;
      OUTLINED_FUNCTION_25_16(v12, sel__getActionRepresentationTakingInput_context_completionHandler_);
      v3 = (v0 + 10);
    }

    return MEMORY[0x1EEE6DEC8](v3);
  }

  else
  {
    v7 = v0[39];
    v8 = v0[34];

    OUTLINED_FUNCTION_2_4();
    v10 = MEMORY[0x1E69E7CC0];

    return v9(v10);
  }
}

uint64_t sub_1CA5A0FDC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 112);
  v2[45] = v5;
  if (v5)
  {
    v6 = v2[44];

    v7 = v2[35];
    v8 = v2[36];
    v9 = sub_1CA5A1538;
  }

  else
  {
    v7 = v2[35];
    v8 = v2[36];
    v9 = sub_1CA5A10F4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1CA5A10F4()
{
  OUTLINED_FUNCTION_39_1();
  v1 = *(v0 + 216);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = sub_1CA94C368();
  v5 = [v1 serializedParameterStateForKey_];

  v6 = *(v0 + 352);
  if (v5)
  {
    v47 = v1;
    v7 = (v0 + 208);
    v8 = [v6 icon];

    if (v8 && (v9 = [v8 wfIcon], v8, v9))
    {
    }

    else
    {
      v10 = sub_1CA5A30FC(*(v0 + 352), &selRef_associatedAppBundleIdentifier);
      if (v11)
      {
        v12 = v10;
        v13 = v11;
        sub_1CA25B3D0(0, &qword_1EC445118, 0x1E69E0960);
        v14 = v12;
        v15 = v13;
      }

      else
      {
        v16 = *(v0 + 328);
        sub_1CA25B3D0(0, &qword_1EC445118, 0x1E69E0960);
        v14 = sub_1CA94C3A8();
      }

      v9 = sub_1CA409428(v14, v15);
    }

    v17 = *(v0 + 352);
    v18 = v9;
    v19 = [v17 uniqueIdentifier];

    v20 = sub_1CA94C3A8();
    v22 = v21;

    v23 = sub_1CA5A30FC(v17, &selRef_subtitle);
    if (v24)
    {
      v25 = v23;
      v26 = v24;
    }

    else
    {
      v27 = [*(v0 + 352) title];
      v25 = sub_1CA94C3A8();
      v26 = v28;
    }

    objc_allocWithZone(MEMORY[0x1E69E09E8]);
    swift_unknownObjectRetain();
    v29 = sub_1CA5A1C54(v20, v22, v25, v26, v18, 0, v5);
    MEMORY[0x1CCAA1490]();
    if (*((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CA94C698();
    }

    v30 = *(v0 + 352);
    sub_1CA94C6E8();

    swift_unknownObjectRelease();
  }

  else
  {

    v7 = (v0 + 344);
  }

  v31 = *v7;
  v32 = OUTLINED_FUNCTION_32_13();
  if (v33)
  {
    v34 = *(v0 + 312);
    v35 = *(v0 + 272);

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_23_0();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 336) = v32;
  *(v0 + 344) = v31;
  v38 = *(v0 + 312);
  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x1CCAA22D0]();
  }

  else
  {
    v39 = *(v38 + 8 * v32 + 32);
  }

  v40 = v39;
  *(v0 + 352) = v39;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 216;
  v41 = OUTLINED_FUNCTION_3_45();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444FD0, &qword_1CA98C320);
  OUTLINED_FUNCTION_1_43(v42);
  OUTLINED_FUNCTION_2_51(COERCE_DOUBLE(1107296256));
  *(v0 + 160) = v43;
  *(v0 + 168) = &block_descriptor_8;
  *(v0 + 176) = v41;
  OUTLINED_FUNCTION_25_16(v40, sel__getActionRepresentationTakingInput_context_completionHandler_);
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6DEC8](v44);
}

uint64_t sub_1CA5A14C8()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[34];

  swift_willThrow();

  OUTLINED_FUNCTION_5();
  v5 = v0[38];

  return v4();
}

uint64_t sub_1CA5A1538()
{
  v1 = v0[44];
  v2 = v0[45];
  swift_willThrow();

  v3 = OUTLINED_FUNCTION_32_13();
  if (v4)
  {
    v5 = v0[43];
    v6 = v0[39];
    v7 = v0[34];

    OUTLINED_FUNCTION_2_4();

    return v8(v5);
  }

  else
  {
    v0[42] = v3;
    v10 = v0[39];
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1CCAA22D0]();
    }

    else
    {
      v11 = *(v10 + 8 * v3 + 32);
    }

    v12 = v11;
    v0[44] = v11;
    v0[10] = v0;
    v0[15] = v0 + 27;
    v13 = OUTLINED_FUNCTION_3_45();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444FD0, &qword_1CA98C320);
    OUTLINED_FUNCTION_1_43(v14);
    OUTLINED_FUNCTION_2_51(COERCE_DOUBLE(1107296256));
    v0[20] = v15;
    v0[21] = &block_descriptor_8;
    v0[22] = v13;
    OUTLINED_FUNCTION_25_16(v12, sel__getActionRepresentationTakingInput_context_completionHandler_);

    return MEMORY[0x1EEE6DEC8](v0 + 10);
  }
}

uint64_t sub_1CA5A16B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1CA35FF80(v4, v5);
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EC446A60, 0x1E69E0DC0);
    v7 = sub_1CA94C658();

    return sub_1CA35FF84(v4, v7);
  }
}

uint64_t sub_1CA5A180C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_1CA94C838();
  v6[8] = sub_1CA94C828();
  v8 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA5A18AC, v8, v7);
}

uint64_t sub_1CA5A18AC()
{
  OUTLINED_FUNCTION_59_0();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  v0[9] = _Block_copy(v3);
  swift_getObjCClassMetadata();
  sub_1CA94C3A8();
  v0[10] = v7;
  sub_1CA94C3A8();
  v0[11] = v8;
  v9 = v2;
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_1CA5A19BC;
  v11 = v0[5];
  OUTLINED_FUNCTION_52_0();

  return sub_1CA5A0B20();
}

uint64_t sub_1CA5A19BC(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_3();
  v6 = v5;
  OUTLINED_FUNCTION_1();
  *v7 = v6;
  v9 = v8[12];
  v10 = v8[11];
  v11 = v8[10];
  v12 = v8[7];
  v13 = *v2;
  OUTLINED_FUNCTION_13();
  *v14 = v13;

  if (v3)
  {
    v15 = sub_1CA948AC8();

    v16 = v15;
  }

  else if (a1)
  {
    sub_1CA25B3D0(0, &qword_1EC446A50, 0x1E69E09E8);
    v17 = sub_1CA94C648();

    v16 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = *(v6 + 72);
  v19 = v18[2];
  v20 = OUTLINED_FUNCTION_52_0();
  v21(v20);

  _Block_release(v18);
  OUTLINED_FUNCTION_5();

  return v22();
}

id RuntimeRunnableDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RuntimeRunnableDataSource.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RuntimeRunnableDataSource();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RuntimeRunnableDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RuntimeRunnableDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CA5A1C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v11 = sub_1CA94C368();

  v12 = sub_1CA94C368();

  v13 = [v7 initWithIdentifier:v11 name:v12 entryIcon:a5 accessoryIcon:a6 serializedParameterState:a7];

  swift_unknownObjectRelease();
  return v13;
}

unint64_t sub_1CA5A1D0C()
{
  result = qword_1EC446998;
  if (!qword_1EC446998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446998);
  }

  return result;
}

uint64_t sub_1CA5A1D78(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v4 = a2;
  v5 = 0;
  v6 = 0;
  v64 = (a1 + 40);
  while (1)
  {
    v7 = *(a1 + 16);
    if (v6 == v7)
    {
LABEL_28:
    }

    if (v6 >= v7)
    {
      break;
    }

    v8 = *(v4 + 16);
    if (v6 == v8)
    {
      goto LABEL_28;
    }

    if (v6 >= v8)
    {
      goto LABEL_30;
    }

    v10 = *(v64 - 1);
    v9 = *v64;
    v11 = *(v4 + v5 + 64);
    v12 = *(v4 + v5 + 72);
    v13 = *(v4 + v5 + 56);
    v56 = *(v4 + v5 + 48);
    v14 = *(v4 + v5 + 32);
    v15 = *(v4 + v5 + 40);
    sub_1CA94C218();
    v60 = v15;
    sub_1CA94C218();
    sub_1CA94C218();
    v16 = v11;
    sub_1CA94C218();
    if (!v9)
    {
      goto LABEL_28;
    }

    v58 = v6;
    v59 = v5;
    v17 = *a4;
    v19 = sub_1CA271BF8();
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_31;
    }

    v23 = v18;
    if (v17[3] >= v22)
    {
      if ((a3 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446A70, &qword_1CA98C7B8);
        sub_1CA94D598();
      }
    }

    else
    {
      sub_1CA5C397C(v22, a3 & 1);
      v24 = *a4;
      v25 = sub_1CA271BF8();
      if ((v23 & 1) != (v26 & 1))
      {
        goto LABEL_37;
      }

      v19 = v25;
    }

    v27 = *a4;
    if (v23)
    {
      v28 = (v27[7] + 48 * v19);
      v29 = v28[5];
      v30 = *(v12 + 16);
      v31 = *(v29 + 16);
      if (__OFADD__(v31, v30))
      {
        goto LABEL_32;
      }

      v62 = v16;
      v57 = *a4;
      v32 = v28[1];
      v53 = *v28;
      v33 = v28[3];
      v51 = v28[2];
      v50 = v28[4];
      v34 = v50;
      swift_bridgeObjectRetain_n();
      sub_1CA94C218();
      v52 = v32;
      sub_1CA94C218();
      sub_1CA94C218();
      if (!swift_isUniquelyReferenced_nonNull_native() || (v35 = v29, v31 + v30 > *(v29 + 24) >> 1))
      {
        sub_1CA27AC48();
        v35 = v36;
      }

      if (*(v12 + 16))
      {
        if ((*(v35 + 24) >> 1) - *(v35 + 16) < v30)
        {
          goto LABEL_35;
        }

        swift_arrayInitWithCopy();

        if (v30)
        {
          v37 = *(v35 + 16);
          v38 = __OFADD__(v37, v30);
          v39 = v37 + v30;
          if (v38)
          {
            goto LABEL_36;
          }

          *(v35 + 16) = v39;
        }
      }

      else
      {

        if (v30)
        {
          goto LABEL_34;
        }
      }

      v44 = (v57[7] + 48 * v19);
      v45 = v44[1];
      v46 = v44[3];
      v47 = v44[4];
      v48 = v44[5];
      *v44 = v53;
      v44[1] = v52;
      v44[2] = v51;
      v44[3] = v33;
      v44[4] = v50;
      v44[5] = v35;
    }

    else
    {
      v27[(v19 >> 6) + 8] |= 1 << v19;
      v40 = (v27[6] + 16 * v19);
      *v40 = v10;
      v40[1] = v9;
      v41 = (v27[7] + 48 * v19);
      *v41 = v14;
      v41[1] = v60;
      v41[2] = v56;
      v41[3] = v13;
      v41[4] = v11;
      v41[5] = v12;
      v42 = v27[2];
      v38 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v38)
      {
        goto LABEL_33;
      }

      v27[2] = v43;
    }

    v64 += 2;
    v5 = v59 + 48;
    v6 = v58 + 1;
    a3 = 1;
    v4 = a2;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
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
LABEL_37:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA5A2154(uint64_t *a1, char *a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1CA94D778();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F70, &qword_1CA981A80);
        v8 = sub_1CA94C6C8();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_1CA94C218();
      sub_1CA5A244C(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1CA5A229C(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1CA5A229C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 == a2)
  {
  }

  v37 = *a4;
  v7 = v37 + 48 * a3 - 48;
  v8 = a1 - a3;
  while (2)
  {
    v32 = v7;
    v33 = a3;
    v31 = v8;
    do
    {
      v9 = *(v7 + 48);
      v10 = *(v7 + 80);
      v36[1] = *(v7 + 64);
      v36[2] = v10;
      v36[0] = v9;
      v11 = *v7;
      v12 = *(v7 + 32);
      v35[1] = *(v7 + 16);
      v35[2] = v12;
      v35[0] = v11;
      sub_1CA5A3DEC(v36, v34);
      sub_1CA5A3DEC(v35, v34);
      v13 = sub_1CA59D910();
      v15 = sub_1CA58A568(v13, v14, a5);
      v17 = v16;

      v18 = sub_1CA59D910();
      v20 = sub_1CA58A568(v18, v19, a5);
      v22 = v21;

      sub_1CA532E30(v35, &unk_1EC443F70, &qword_1CA981A80);
      result = sub_1CA532E30(v36, &unk_1EC443F70, &qword_1CA981A80);
      if ((v22 & 1) == 0 && v17 & 1 | (v15 >= v20))
      {
        break;
      }

      if (!v37)
      {
        __break(1u);
        return result;
      }

      v24 = *(v7 + 48);
      v23 = *(v7 + 64);
      v25 = *(v7 + 16);
      v26 = *(v7 + 32);
      *(v7 + 48) = *v7;
      *(v7 + 64) = v25;
      v27 = *(v7 + 80);
      v28 = *(v7 + 88);
      *(v7 + 80) = v26;
      *v7 = v24;
      *(v7 + 16) = v23;
      *(v7 + 32) = v27;
      *(v7 + 40) = v28;
      v7 -= 48;
    }

    while (!__CFADD__(v8++, 1));
    a3 = v33 + 1;
    v7 = v32 + 48;
    v8 = v31 - 1;
    if (v33 + 1 != a2)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1CA5A244C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v7 = a3[1];
  swift_bridgeObjectRetain_n();
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v159 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v134 = v9 + 16;
      v135 = *(v9 + 16);
      for (i = v9; ; v9 = i)
      {
        if (v135 < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        v136 = *a3;
        if (!*a3)
        {
          goto LABEL_141;
        }

        v137 = (v9 + 16 * v135);
        v138 = *v137;
        v9 = v134;
        v139 = v134 + 16 * v135;
        v140 = *(v139 + 8);
        v141 = (v136 + 48 * *v137);
        v142 = (v136 + 48 * *v139);
        v169 = (v136 + 48 * v140);
        sub_1CA94C218();
        sub_1CA5A2D90(v141, v142, v169, v159, a5);
        if (v161)
        {
          break;
        }

        if (v140 < v138)
        {
          goto LABEL_129;
        }

        if (v135 - 2 >= *v9)
        {
          goto LABEL_130;
        }

        v134 = v9;
        *v137 = v138;
        v137[1] = v140;
        v143 = *v9 - v135;
        if (*v9 < v135)
        {
          goto LABEL_131;
        }

        v135 = *v9 - 1;
        sub_1CA627628((v139 + 16), v143, v139);
        *v9 = v135;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_138:
    v9 = sub_1CA627610(v9);
    goto LABEL_103;
  }

  v145 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v169 = a5;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if ((v8 + 1) < v7)
    {
      v159 = v7;
      v12 = *a3;
      v13 = (*a3 + 48 * v11);
      v15 = v13[1];
      v14 = v13[2];
      v168[0] = *v13;
      v168[1] = v15;
      v168[2] = v14;
      v16 = (v12 + 48 * v10);
      v17 = *v16;
      v18 = v16[2];
      v167[1] = v16[1];
      v167[2] = v18;
      v167[0] = v17;
      sub_1CA5A3DEC(v168, v162);
      sub_1CA5A3DEC(v167, v162);
      v19 = sub_1CA59D910();
      v155 = sub_1CA58A568(v19, v20, a5);
      v22 = v21;

      v23 = sub_1CA59D910();
      v25 = sub_1CA58A568(v23, v24, a5);
      v27 = v26;

      sub_1CA532E30(v167, &unk_1EC443F70, &qword_1CA981A80);
      sub_1CA532E30(v168, &unk_1EC443F70, &qword_1CA981A80);
      v150 = v9;
      if (v27)
      {
        v28 = 1;
      }

      else
      {
        v28 = (v155 < v25) & ~v22;
      }

      v11 = v10 + 2;
      v146 = v10;
      v156 = 48 * v10;
      v29 = (v12 + 48 * v10 + 96);
      v30 = v159;
      while (v11 < v30)
      {
        a5 = v11;
        v31 = *v29;
        v32 = v29[2];
        v166[1] = v29[1];
        v166[2] = v32;
        v166[0] = v31;
        v33 = *(v29 - 3);
        v34 = *(v29 - 1);
        v165[1] = *(v29 - 2);
        v165[2] = v34;
        v165[0] = v33;
        sub_1CA5A3DEC(v166, v162);
        sub_1CA5A3DEC(v165, v162);
        v35 = sub_1CA59D910();
        v36 = v169;
        v38 = sub_1CA58A568(v35, v37, v169);
        v40 = v39;

        v41 = sub_1CA59D910();
        v43 = sub_1CA58A568(v41, v42, v36);
        v9 = v44;

        sub_1CA532E30(v165, &unk_1EC443F70, &qword_1CA981A80);
        sub_1CA532E30(v166, &unk_1EC443F70, &qword_1CA981A80);
        if (v9)
        {
          v11 = a5;
          v30 = v159;
          if (!v28)
          {
            goto LABEL_26;
          }
        }

        else if (v40)
        {
          v11 = a5;
          v30 = v159;
          if (v28)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v45 = v38 >= v43;
          v11 = a5;
          v30 = v159;
          if (((v28 ^ v45) & 1) == 0)
          {
            break;
          }
        }

        ++v11;
        v29 += 3;
      }

      if (v28)
      {
LABEL_18:
        v10 = v146;
        if (v11 < v146)
        {
          goto LABEL_137;
        }

        if (v146 >= v11)
        {
          v9 = v150;
          a5 = v169;
        }

        else
        {
          v46 = 48 * v11 - 24;
          v47 = v156 + 40;
          v48 = v11;
          v49 = v146;
          v9 = v150;
          a5 = v169;
          do
          {
            if (v49 != --v48)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_142;
              }

              v51 = (v50 + v47);
              v52 = *(v50 + v47 - 40);
              v53 = v50 + v46;
              v54 = *(v51 - 3);
              v55 = *(v51 - 1);
              v56 = *v51;
              v57 = *(v53 + 8);
              v58 = *(v53 - 8);
              *(v51 - 5) = *(v53 - 24);
              *(v51 - 3) = v58;
              *(v51 - 1) = v57;
              *(v53 - 24) = v52;
              *(v53 - 8) = v54;
              *(v53 + 8) = v55;
              *(v53 + 16) = v56;
            }

            ++v49;
            v46 -= 48;
            v47 += 48;
          }

          while (v49 < v48);
        }
      }

      else
      {
LABEL_26:
        v9 = v150;
        a5 = v169;
        v10 = v146;
      }
    }

    v59 = a3[1];
    if (v11 < v59)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_134;
      }

      if (v11 - v10 < v145)
      {
        break;
      }
    }

LABEL_47:
    if (v11 < v10)
    {
      goto LABEL_133;
    }

    v159 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v131 = *(v9 + 16);
      sub_1CA2E49C0();
      v9 = v132;
    }

    v85 = *(v9 + 16);
    v86 = v85 + 1;
    if (v85 >= *(v9 + 24) >> 1)
    {
      sub_1CA2E49C0();
      v9 = v133;
    }

    *(v9 + 16) = v86;
    v87 = v9 + 32;
    v88 = (v9 + 32 + 16 * v85);
    *v88 = v10;
    v88[1] = v11;
    v158 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v85)
    {
      v154 = v9 + 32;
      while (1)
      {
        v89 = v86 - 1;
        v90 = (v87 + 16 * (v86 - 1));
        v91 = (v9 + 16 * v86);
        if (v86 >= 4)
        {
          break;
        }

        if (v86 == 3)
        {
          v92 = *(v9 + 32);
          v93 = *(v9 + 40);
          v102 = __OFSUB__(v93, v92);
          v94 = v93 - v92;
          v95 = v102;
LABEL_68:
          if (v95)
          {
            goto LABEL_120;
          }

          v107 = *v91;
          v106 = v91[1];
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_123;
          }

          v111 = v90[1];
          v112 = v111 - *v90;
          if (__OFSUB__(v111, *v90))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v109, v112))
          {
            goto LABEL_128;
          }

          if (v109 + v112 >= v94)
          {
            if (v94 < v112)
            {
              v89 = v86 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v86 < 2)
        {
          goto LABEL_122;
        }

        v114 = *v91;
        v113 = v91[1];
        v102 = __OFSUB__(v113, v114);
        v109 = v113 - v114;
        v110 = v102;
LABEL_83:
        if (v110)
        {
          goto LABEL_125;
        }

        v116 = *v90;
        v115 = v90[1];
        v102 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v102)
        {
          goto LABEL_127;
        }

        if (v117 < v109)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v89 - 1 >= v86)
        {
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
LABEL_120:
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
LABEL_128:
          __break(1u);
LABEL_129:
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
          goto LABEL_136;
        }

        v121 = *a3;
        if (!*a3)
        {
          goto LABEL_140;
        }

        v122 = v9;
        v123 = (v87 + 16 * (v89 - 1));
        v124 = *v123;
        v125 = v89;
        v126 = v87 + 16 * v89;
        v127 = *(v126 + 8);
        v128 = (v121 + 48 * *v123);
        v129 = (v121 + 48 * *v126);
        v9 = v121 + 48 * v127;
        sub_1CA94C218();
        sub_1CA5A2D90(v128, v129, v9, v158, a5);
        if (v161)
        {
          swift_bridgeObjectRelease_n();
        }

        if (v127 < v124)
        {
          goto LABEL_115;
        }

        v9 = v122;
        v130 = *(v122 + 16);
        if (v125 > v130)
        {
          goto LABEL_116;
        }

        *v123 = v124;
        v123[1] = v127;
        if (v125 >= v130)
        {
          goto LABEL_117;
        }

        v86 = v130 - 1;
        sub_1CA627628((v126 + 16), v130 - 1 - v125, v126);
        *(v122 + 16) = v130 - 1;
        v87 = v154;
        if (v130 <= 2)
        {
          goto LABEL_97;
        }
      }

      v96 = v87 + 16 * v86;
      v97 = *(v96 - 64);
      v98 = *(v96 - 56);
      v102 = __OFSUB__(v98, v97);
      v99 = v98 - v97;
      if (v102)
      {
        goto LABEL_118;
      }

      v101 = *(v96 - 48);
      v100 = *(v96 - 40);
      v102 = __OFSUB__(v100, v101);
      v94 = v100 - v101;
      v95 = v102;
      if (v102)
      {
        goto LABEL_119;
      }

      v103 = v91[1];
      v104 = v103 - *v91;
      if (__OFSUB__(v103, *v91))
      {
        goto LABEL_121;
      }

      v102 = __OFADD__(v94, v104);
      v105 = v94 + v104;
      if (v102)
      {
        goto LABEL_124;
      }

      if (v105 >= v99)
      {
        v119 = *v90;
        v118 = v90[1];
        v102 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v102)
        {
          goto LABEL_132;
        }

        if (v94 < v120)
        {
          v89 = v86 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v8 = v159;
    v7 = a3[1];
    if (v159 >= v7)
    {
      goto LABEL_101;
    }
  }

  v60 = &v10[v145];
  if (__OFADD__(v10, v145))
  {
    goto LABEL_135;
  }

  if (v60 >= v59)
  {
    v60 = a3[1];
  }

  if (v60 < v10)
  {
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v11 == v60)
  {
    goto LABEL_47;
  }

  v149 = v60;
  v151 = v9;
  v61 = *a3;
  v62 = *a3 + 48 * v11 - 48;
  v147 = v10;
  v63 = v10 - v11;
LABEL_37:
  v157 = v62;
  v159 = v11;
  v153 = v63;
  while (1)
  {
    v64 = *(v62 + 48);
    v65 = *(v62 + 80);
    v164[1] = *(v62 + 64);
    v164[2] = v65;
    v164[0] = v64;
    v66 = *v62;
    v67 = *(v62 + 32);
    v163[1] = *(v62 + 16);
    v163[2] = v67;
    v163[0] = v66;
    sub_1CA5A3DEC(v164, v162);
    sub_1CA5A3DEC(v163, v162);
    v68 = sub_1CA59D910();
    v70 = sub_1CA58A568(v68, v69, a5);
    v72 = v71;

    v73 = sub_1CA59D910();
    v75 = sub_1CA58A568(v73, v74, a5);
    v77 = v76;

    sub_1CA532E30(v163, &unk_1EC443F70, &qword_1CA981A80);
    sub_1CA532E30(v164, &unk_1EC443F70, &qword_1CA981A80);
    if ((v77 & 1) == 0 && v72 & 1 | (v70 >= v75))
    {
      a5 = v169;
LABEL_45:
      ++v11;
      v62 = v157 + 48;
      v63 = v153 - 1;
      if (v159 + 1 == v149)
      {
        v11 = v149;
        v9 = v151;
        v10 = v147;
        goto LABEL_47;
      }

      goto LABEL_37;
    }

    if (!v61)
    {
      break;
    }

    v79 = *(v62 + 48);
    v78 = *(v62 + 64);
    v80 = *(v62 + 16);
    v81 = *(v62 + 32);
    *(v62 + 48) = *v62;
    *(v62 + 64) = v80;
    v82 = *(v62 + 80);
    v83 = *(v62 + 88);
    *(v62 + 80) = v81;
    *v62 = v79;
    *(v62 + 16) = v78;
    *(v62 + 32) = v82;
    *(v62 + 40) = v83;
    v62 -= 48;
    v84 = __CFADD__(v63++, 1);
    a5 = v169;
    if (v84)
    {
      goto LABEL_45;
    }
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_140:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_141:

  __break(1u);
LABEL_142:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_143:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_144:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1CA5A2D90(char *a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v69 = a5;
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 48;
  v10 = (a3 - a2) / 48;
  if (v9 < v10)
  {
    sub_1CA278E60(a1, (a2 - a1) / 48, a4);
    v11 = &v5[48 * v9];
    v60 = v6;
    for (i = v11; ; v11 = i)
    {
      v12 = v8;
      if (v5 >= v11 || v7 >= v6)
      {
        goto LABEL_29;
      }

      v14 = *v7;
      v15 = *(v7 + 2);
      v67 = *(v7 + 1);
      v68 = v15;
      v66 = v14;
      v16 = *v5;
      v17 = *(v5 + 2);
      v64 = *(v5 + 1);
      v65 = v17;
      v63 = v16;
      sub_1CA5A3DEC(&v66, v62);
      sub_1CA5A3DEC(&v63, v62);
      v18 = sub_1CA59D910();
      v19 = v69;
      v21 = sub_1CA58A568(v18, v20, v69);
      v23 = v22;

      v24 = sub_1CA59D910();
      v26 = sub_1CA58A568(v24, v25, v19);
      LOBYTE(v19) = v27;

      sub_1CA532E30(&v63, &unk_1EC443F70, &qword_1CA981A80);
      sub_1CA532E30(&v66, &unk_1EC443F70, &qword_1CA981A80);
      if ((v19 & 1) != 0 || !(v23 & 1 | (v21 >= v26)))
      {
        break;
      }

      v28 = v5;
      v29 = v12;
      v30 = v12 == v5;
      v5 += 48;
      if (!v30)
      {
        goto LABEL_13;
      }

LABEL_14:
      v8 = v29 + 48;
      v6 = v60;
    }

    v28 = v7;
    v29 = v12;
    v30 = v12 == v7;
    v7 += 48;
    if (v30)
    {
      goto LABEL_14;
    }

LABEL_13:
    v31 = *v28;
    v32 = *(v28 + 2);
    *(v29 + 1) = *(v28 + 1);
    *(v29 + 2) = v32;
    *v29 = v31;
    goto LABEL_14;
  }

  sub_1CA278E60(a2, (a3 - a2) / 48, a4);
  v11 = &v5[48 * v10];
  v58 = v8;
  v59 = v5;
LABEL_16:
  v12 = v7;
  v61 = v7 - 48;
  v33 = v6 - 48;
  while (v11 > v5 && v12 > v8)
  {
    v35 = v33;
    v36 = *(v11 - 3);
    v37 = v11;
    v38 = *(v11 - 1);
    v67 = *(v11 - 2);
    v68 = v38;
    v39 = *(v61 + 1);
    v63 = *v61;
    v64 = v39;
    v65 = *(v61 + 2);
    v66 = v36;
    sub_1CA5A3DEC(&v66, v62);
    sub_1CA5A3DEC(&v63, v62);
    v40 = sub_1CA59D910();
    v41 = v69;
    v43 = sub_1CA58A568(v40, v42, v69);
    v45 = v44;

    v46 = sub_1CA59D910();
    v48 = sub_1CA58A568(v46, v47, v41);
    LOBYTE(v41) = v49;

    sub_1CA532E30(&v63, &unk_1EC443F70, &qword_1CA981A80);
    sub_1CA532E30(&v66, &unk_1EC443F70, &qword_1CA981A80);
    if ((v41 & 1) != 0 || !(v45 & 1 | (v43 >= v48)))
    {
      v6 = v35;
      v30 = v35 + 48 == v12;
      v8 = v58;
      v5 = v59;
      v11 = v37;
      v7 = v61;
      if (!v30)
      {
        v52 = *v61;
        v53 = *(v61 + 2);
        *(v6 + 1) = *(v61 + 1);
        *(v6 + 2) = v53;
        *v6 = v52;
      }

      goto LABEL_16;
    }

    v11 = v37 - 48;
    if (v37 != v35 + 48)
    {
      v50 = *v11;
      v51 = *(v37 - 1);
      *(v35 + 1) = *(v37 - 2);
      *(v35 + 2) = v51;
      *v35 = v50;
    }

    v33 = v35 - 48;
    v8 = v58;
    v5 = v59;
  }

LABEL_29:
  v54 = (v11 - v5) / 48;
  if (v12 != v5 || v12 >= &v5[48 * v54])
  {
    memmove(v12, v5, 48 * v54);
  }

  return 1;
}

uint64_t sub_1CA5A30FC(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_1_2();
  }

  return OUTLINED_FUNCTION_52_0();
}

unint64_t sub_1CA5A3188()
{
  result = qword_1EC4469A8;
  if (!qword_1EC4469A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4469A8);
  }

  return result;
}

unint64_t sub_1CA5A31E0()
{
  result = qword_1EC4469B0;
  if (!qword_1EC4469B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4469B0);
  }

  return result;
}

unint64_t sub_1CA5A3234(uint64_t a1)
{
  *(a1 + 8) = sub_1CA5A3264();
  result = sub_1CA5A32B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CA5A3264()
{
  result = qword_1EC4469B8;
  if (!qword_1EC4469B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4469B8);
  }

  return result;
}

unint64_t sub_1CA5A32B8()
{
  result = qword_1EC4469C0;
  if (!qword_1EC4469C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4469C0);
  }

  return result;
}

unint64_t sub_1CA5A3310()
{
  result = qword_1EC4469C8;
  if (!qword_1EC4469C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4469C8);
  }

  return result;
}

unint64_t sub_1CA5A3364(uint64_t a1)
{
  result = sub_1CA5A338C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA5A338C()
{
  result = qword_1EC4469D0;
  if (!qword_1EC4469D0)
  {
    type metadata accessor for AggregatedRunnableDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4469D0);
  }

  return result;
}

uint64_t type metadata accessor for AggregatedRunnableDataSource()
{
  result = qword_1EC4469D8;
  if (!qword_1EC4469D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA5A3430(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA5A3470(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TopHitBadge.Position(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TopHitIconMask(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1CA5A3680()
{
  sub_1CA5A3AFC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of AggregatedRunnableDataSource.action(for:)()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *(*v0 + 216);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_15_20(v6);

  return v9(v2);
}

uint64_t dispatch thunk of AggregatedRunnableDataSource.action<A>(for:in:)()
{
  OUTLINED_FUNCTION_59_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(*v0 + 224);
  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_20(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_15_20(v12);

  return v15(v8, v6, v4, v2);
}

uint64_t sub_1CA5A3A14()
{
  OUTLINED_FUNCTION_0();
  v2 = v1;
  OUTLINED_FUNCTION_3();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_13();
  *v6 = v5;

  OUTLINED_FUNCTION_2_4();

  return v7(v2);
}

void sub_1CA5A3AFC()
{
  if (!qword_1EC4469E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC446980, &qword_1CA98C2F8);
    v0 = sub_1CA94A0B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC4469E8);
    }
  }
}

uint64_t dispatch thunk of RuntimeRunnableDataSource.loadEntries(for:parameterKey:collectionIdentifier:limit:)()
{
  OUTLINED_FUNCTION_39_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v19 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_20(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_15_20(v16);

  return v19(v12, v10, v8, v6, v4, v2);
}

uint64_t sub_1CA5A3CE4()
{
  OUTLINED_FUNCTION_59_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  v8[1] = sub_1CA2DF78C;
  v10 = OUTLINED_FUNCTION_20_0();

  return v11(v10);
}

uint64_t sub_1CA5A3DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1CA59FC0C(a1, a2);
}

uint64_t sub_1CA5A3DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F70, &qword_1CA981A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA5A3EB8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1CA59E96C();
}

unint64_t sub_1CA5A3EC4()
{
  result = qword_1EC446A80;
  if (!qword_1EC446A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC446A78, &qword_1CA98C7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446A80);
  }

  return result;
}

uint64_t sub_1CA5A3F30(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v3);
  v5 = *(v4 + 64);
  v2[8] = OUTLINED_FUNCTION_45();
  v6 = sub_1CA94AC08();
  v2[9] = v6;
  OUTLINED_FUNCTION_12(v6);
  v2[10] = v7;
  v9 = *(v8 + 64);
  v2[11] = OUTLINED_FUNCTION_45();
  v10 = sub_1CA94AB28();
  v2[12] = v10;
  OUTLINED_FUNCTION_12(v10);
  v2[13] = v11;
  v13 = *(v12 + 64);
  v2[14] = OUTLINED_FUNCTION_13_5();
  v2[15] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A80, &qword_1CA988BF8);
  v2[16] = v14;
  OUTLINED_FUNCTION_12(v14);
  v2[17] = v15;
  v17 = *(v16 + 64);
  v2[18] = OUTLINED_FUNCTION_45();
  v18 = sub_1CA94AB68();
  v2[19] = v18;
  OUTLINED_FUNCTION_12(v18);
  v2[20] = v19;
  v21 = *(v20 + 64);
  v2[21] = OUTLINED_FUNCTION_45();
  v22 = sub_1CA94ABA8();
  v2[22] = v22;
  OUTLINED_FUNCTION_12(v22);
  v2[23] = v23;
  v25 = *(v24 + 64);
  v2[24] = OUTLINED_FUNCTION_45();
  v26 = sub_1CA94B008();
  v2[25] = v26;
  OUTLINED_FUNCTION_12(v26);
  v2[26] = v27;
  v29 = *(v28 + 64);
  v2[27] = OUTLINED_FUNCTION_13_5();
  v2[28] = swift_task_alloc();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
  OUTLINED_FUNCTION_18_0(v30);
  v32 = *(v31 + 64);
  v2[29] = OUTLINED_FUNCTION_45();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446A88, &qword_1CA98C7D0);
  OUTLINED_FUNCTION_18_0(v33);
  v35 = *(v34 + 64);
  v2[30] = OUTLINED_FUNCTION_45();
  v36 = sub_1CA94AFF8();
  v2[31] = v36;
  OUTLINED_FUNCTION_12(v36);
  v2[32] = v37;
  v39 = *(v38 + 64);
  v2[33] = OUTLINED_FUNCTION_13_5();
  v2[34] = swift_task_alloc();
  v40 = sub_1CA94AB58();
  v2[35] = v40;
  OUTLINED_FUNCTION_12(v40);
  v2[36] = v41;
  v43 = *(v42 + 64);
  v2[37] = OUTLINED_FUNCTION_45();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446A90, &qword_1CA98C7D8);
  v2[38] = v44;
  OUTLINED_FUNCTION_18_0(v44);
  v46 = *(v45 + 64);
  v2[39] = OUTLINED_FUNCTION_45();
  v47 = type metadata accessor for ParameterStateValueTransformContext(0);
  v2[40] = v47;
  OUTLINED_FUNCTION_18_0(v47);
  v49 = *(v48 + 64);
  v2[41] = OUTLINED_FUNCTION_13_5();
  v2[42] = swift_task_alloc();
  v50 = sub_1CA94AC18();
  v2[43] = v50;
  OUTLINED_FUNCTION_12(v50);
  v2[44] = v51;
  v53 = *(v52 + 64);
  v2[45] = OUTLINED_FUNCTION_13_5();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v54 = sub_1CA949F78();
  v2[61] = v54;
  OUTLINED_FUNCTION_12(v54);
  v2[62] = v55;
  v57 = *(v56 + 64);
  v2[63] = OUTLINED_FUNCTION_13_5();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA5A446C, 0, 0);
}

uint64_t sub_1CA5A446C()
{
  v563 = v0;
  v1 = v0;
  v2 = v0[65];
  v3 = v0[60];
  v4 = v0[44];
  v6 = v1[42];
  v5 = v1[43];
  v8 = v1[6];
  v7 = v1[7];
  [*v7 singleStateClass];
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v539 = *MEMORY[0x1E69E10F8];
  sub_1CA949C58();
  v553 = *(v4 + 16);
  v553(v3, v8, v5);
  sub_1CA5A6D68(v7, v6);
  v9 = sub_1CA949F68();
  v10 = sub_1CA94CC38();
  if (os_log_type_enabled(v9, v10))
  {
    v529 = v1[61];
    v533 = v1[65];
    v11 = v1[60];
    v13 = v1[43];
    v12 = v1[44];
    v521 = v1[42];
    v525 = v1[62];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v562[0] = swift_slowAlloc();
    *v14 = 136315650;
    v16 = sub_1CA94ABC8();
    v18 = v17;
    v551 = *(v12 + 8);
    v551(v11, v13);
    v19 = sub_1CA26B54C(v16, v18, v562);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = ObjCClassMetadata;
    v1[5] = ObjCClassMetadata;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446B18, &unk_1CA98C7E0);
    v21 = sub_1CA94C408();
    v23 = sub_1CA26B54C(v21, v22, v562);

    *(v14 + 14) = v23;
    *(v14 + 22) = 2112;
    v24 = *v521;
    sub_1CA5A6DCC(v521);
    *(v14 + 24) = v24;
    *v15 = v24;
    _os_log_impl(&dword_1CA256000, v9, v10, "Transforming %s into a parameter state: %s for parameter: %@", v14, 0x20u);
    sub_1CA30F7DC(v15, &qword_1EC444AE0, &qword_1CA985B70);
    OUTLINED_FUNCTION_26();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();

    v25 = *(v525 + 8);
    v25(v533, v529);
  }

  else
  {
    v26 = v1[65];
    v27 = v1[61];
    v28 = v1[62];
    v29 = v1[60];
    v30 = v1[43];
    v31 = v1[44];
    v32 = v1[42];

    sub_1CA5A6DCC(v32);
    v551 = *(v31 + 8);
    v551(v29, v30);
    v25 = *(v28 + 8);
    v33 = OUTLINED_FUNCTION_3_3();
    (v25)(v33);
    v20 = ObjCClassMetadata;
  }

  v34 = v1[44];
  v35 = v1[39];
  v36 = *(v1[38] + 48);
  v37 = v553;
  v553(v35, v1[6], v1[43]);
  *(v35 + v36) = v20;
  v38 = *(v34 + 88);
  v39 = OUTLINED_FUNCTION_23();
  v41 = v40(v39);
  if (v41 == *MEMORY[0x1E69DADC0])
  {
    v548 = v25;
    v42 = v1[59];
    v43 = OUTLINED_FUNCTION_0_58();
    (v553)(v43);
    v44 = OUTLINED_FUNCTION_2_52();
    v45(v44);
    sub_1CA25B3D0(0, &qword_1EC446B10, off_1E836DEC8);
    if (OUTLINED_FUNCTION_11_30())
    {
      v46 = [objc_allocWithZone(WFBooleanSubstitutableState) initWithBoolValue_];
LABEL_7:
      isa = v46;
LABEL_27:
      v79 = v1[65];
      v81 = v1[63];
      v80 = v1[64];
      v82 = v1;
      v83 = v1[60];
      v84 = v82[58];
      v85 = v82[59];
      v86 = v82[56];
      v87 = v82[57];
      v484 = v82[55];
      v485 = v82[54];
      v486 = v82[53];
      v487 = v82[52];
      v489 = v82[51];
      v491 = v82[50];
      v493 = v82[49];
      v495 = v82[48];
      v497 = v82[47];
      v499 = v82[46];
      v501 = v82[45];
      v503 = v82[42];
      v505 = v82[41];
      v507 = v82[37];
      v509 = v82[34];
      v511 = v82[33];
      v513 = v82[30];
      v515 = v82[29];
      v88 = v82[44] + 8;
      v517 = v82[24];
      v519 = v82[28];
      v522 = v82[21];
      v526 = v82[27];
      v89 = v82[18];
      v535 = v82[15];
      v541 = v82[14];
      v549 = v82[11];
      v554 = v82[8];
      v551(v82[39], v82[43]);

      v90 = v82[1];

      return v90(isa);
    }

    goto LABEL_102;
  }

  if (v41 == *MEMORY[0x1E69DADB0])
  {
    v47 = v1[58];
    v48 = OUTLINED_FUNCTION_0_58();
    (v553)(v48);
    v49 = OUTLINED_FUNCTION_2_52();
    v50(v49);
    v51 = *v47;
    sub_1CA25B3D0(0, &qword_1EC446B00, off_1E836EC20);
    if (OUTLINED_FUNCTION_11_30())
    {
      v52 = sub_1CA94C988();
LABEL_17:
      v68 = v52;
      isa = [objc_allocWithZone(WFNumberSubstitutableState) initWithNumber_];

      goto LABEL_27;
    }

    v548 = v25;
    sub_1CA25B3D0(0, &qword_1EC446B08, off_1E836EC18);
    if (OUTLINED_FUNCTION_11_30())
    {
      v1[4] = v51;
      sub_1CA94D798();
LABEL_25:
      v75 = sub_1CA94C368();

      v76 = WFNumberStringSubstitutableState;
      goto LABEL_26;
    }

    goto LABEL_102;
  }

  if (v41 == *MEMORY[0x1E69DADE0])
  {
    v53 = v1[57];
    v54 = OUTLINED_FUNCTION_0_58();
    (v553)(v54);
    v55 = OUTLINED_FUNCTION_2_52();
    v56(v55);
    v57 = *v53;
    sub_1CA25B3D0(0, &qword_1EC446B00, off_1E836EC20);
    if (OUTLINED_FUNCTION_11_30())
    {
      v52 = sub_1CA94C8B8();
      goto LABEL_17;
    }

    v548 = v25;
    sub_1CA25B3D0(0, &qword_1EC446B08, off_1E836EC18);
    if (OUTLINED_FUNCTION_11_30())
    {
      v1[2] = 0;
      v1[3] = 0xE000000000000000;
      sub_1CA94C8D8();
      v77 = v1[2];
      v78 = v1[3];
      goto LABEL_25;
    }

LABEL_102:
    v327 = v1[63];
    v328 = v1[45];
    v329 = v1[43];
    v330 = v1[6];
    v331 = *MEMORY[0x1E69E1110];
    sub_1CA949C58();
    v37(v328, v330, v329);
    v332 = sub_1CA949F68();
    v333 = sub_1CA94CC18();
    v334 = os_log_type_enabled(v332, v333);
    v336 = v1[62];
    v335 = v1[63];
    v337 = v1[61];
    v339 = v1[44];
    v338 = v1[45];
    v340 = v1[43];
    if (v334)
    {
      v341 = swift_slowAlloc();
      v342 = swift_slowAlloc();
      v562[0] = v342;
      *v341 = 136315138;
      v555 = v335;
      v343 = v1;
      v344 = sub_1CA94ABC8();
      v543 = v337;
      v346 = v345;
      v347 = OUTLINED_FUNCTION_20_24();
      v348(v347);
      v349 = v344;
      v1 = v343;
      v350 = sub_1CA26B54C(v349, v346, v562);

      *(v341 + 4) = v350;
      _os_log_impl(&dword_1CA256000, v332, v333, "Failed to convert %s into parameter state - unsupported parameter state type", v341, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v342);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      v351 = v555;
      v352 = v543;
    }

    else
    {

      v353 = OUTLINED_FUNCTION_20_24();
      v354(v353);
      v351 = v335;
      v352 = v337;
    }

    v548(v351, v352);
    v355 = v1[39];
    sub_1CA3DBA78();
    OUTLINED_FUNCTION_127();
    *v356 = 1;
    swift_willThrow();
    sub_1CA30F7DC(v355, &unk_1EC446A90, &qword_1CA98C7D8);
    goto LABEL_106;
  }

  if (v41 == *MEMORY[0x1E69DADF8])
  {
    v548 = v25;
    v58 = v1[56];
    v59 = OUTLINED_FUNCTION_0_58();
    (v553)(v59);
    v60 = OUTLINED_FUNCTION_2_52();
    v61(v60);
    v540 = *v58;
    v534 = v58[2];
    v530 = v58[3];
    v62 = v58[4];
    v63 = v58[5];
    v64 = v58[6];
    v65 = v58[7];
    v66 = v58[8];
    v67 = v58[9];
    sub_1CA25B3D0(0, &qword_1EC446B00, off_1E836EC20);
    if (OUTLINED_FUNCTION_11_30())
    {
      v52 = sub_1CA94D048();
      goto LABEL_17;
    }

    sub_1CA25B3D0(0, &qword_1EC446B08, off_1E836EC18);
    if (OUTLINED_FUNCTION_11_30())
    {
      sub_1CA94D028();
      goto LABEL_25;
    }

    goto LABEL_102;
  }

  if (v41 == *MEMORY[0x1E69DADF0])
  {
    v69 = v1[55];
    v70 = OUTLINED_FUNCTION_0_58();
    (v553)(v70);
    v71 = OUTLINED_FUNCTION_2_52();
    v72(v71);
    v73 = *v69;
    v74 = v69[1];
    sub_1CA25B3D0(0, &qword_1EC4417B0, off_1E836F350);
    if (OUTLINED_FUNCTION_11_30())
    {
      OUTLINED_FUNCTION_23();
      v75 = sub_1CA94C368();

      v76 = WFStringSubstitutableState;
LABEL_26:
      isa = [objc_allocWithZone(v76) initWithValue_];

      goto LABEL_27;
    }

    sub_1CA25B3D0(0, &qword_1EC441788, off_1E836F4E0);
    if (OUTLINED_FUNCTION_12_27())
    {
      sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
      OUTLINED_FUNCTION_23();
      v562[0] = sub_1CA538038();
      v138.variableString.super.isa = v562;
      v46 = WFVariableStringParameterState.init(variableString:)(v138);
      goto LABEL_7;
    }

    v548 = v25;
    sub_1CA25B3D0(0, &unk_1EC446AD0, 0x1E6996D10);
    if (OUTLINED_FUNCTION_12_27())
    {
      v160 = v1[64];
      v161 = v1[54];
      v162 = v1[43];
      v163 = v1[41];
      v164 = v1[6];
      v165 = v1[7];
      OUTLINED_FUNCTION_23();
      v166 = sub_1CA5A6E28();
      sub_1CA949C58();
      v553(v161, v164, v162);
      sub_1CA5A6D68(v165, v163);
      v167 = v166;
      v168 = sub_1CA949F68();
      v169 = sub_1CA94CC38();
      isa = v167;

      v170 = os_log_type_enabled(v168, v169);
      v171 = v1[64];
      v172 = v1[61];
      v173 = v1[62];
      v174 = v1[54];
      v175 = v1[43];
      v176 = v1[44];
      v545 = v1;
      v177 = v1[41];
      if (v170)
      {
        v178 = swift_slowAlloc();
        v542 = v171;
        v179 = swift_slowAlloc();
        v562[0] = swift_slowAlloc();
        *v178 = 136315650;
        v536 = v172;
        v180 = sub_1CA94ABC8();
        v182 = v181;
        v183 = OUTLINED_FUNCTION_18_24();
        v184(v183);
        v185 = sub_1CA26B54C(v180, v182, v562);

        *(v178 + 4) = v185;
        *(v178 + 12) = 2080;
        v186 = isa;
        v187 = [(objc_class *)v186 description];
        v188 = sub_1CA94C3A8();
        v190 = v189;

        isa = v186;
        v191 = sub_1CA26B54C(v188, v190, v562);

        *(v178 + 14) = v191;
        *(v178 + 22) = 2112;
        v192 = *v177;
        sub_1CA5A6DCC(v177);
        *(v178 + 24) = v192;
        *v179 = v192;
        _os_log_impl(&dword_1CA256000, v168, v169, "Transformed %s into a parameter state: %s for parameter: %@", v178, 0x20u);
        sub_1CA30F7DC(v179, &qword_1EC444AE0, &qword_1CA985B70);
        OUTLINED_FUNCTION_26();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_26();

        v193 = v542;
        v194 = v536;
      }

      else
      {

        sub_1CA5A6DCC(v177);
        v270 = OUTLINED_FUNCTION_18_24();
        v271(v270);
        v193 = v171;
        v194 = v172;
      }

      v548(v193, v194);
      goto LABEL_86;
    }

LABEL_71:
    v37 = v553;
    goto LABEL_102;
  }

  if (v41 == *MEMORY[0x1E69DADC8])
  {
    v92 = v1[53];
    v93 = OUTLINED_FUNCTION_0_58();
    (v553)(v93);
    v94 = OUTLINED_FUNCTION_2_52();
    v95(v94);
    sub_1CA25B3D0(0, &qword_1EC446AE8, off_1E836E218);
    if (OUTLINED_FUNCTION_11_30())
    {
      v96 = v1[53];
      v97 = sub_1CA948CB8();
      OUTLINED_FUNCTION_1_0(v97);
      v99 = v98;
      v101 = *(v100 + 64);
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_4_45();
      v102();
      v103 = sub_1CA948C58();
      isa = [objc_allocWithZone(WFDateSubstitutableState) initWithValue_];
LABEL_48:

      v157 = *(v99 + 8);
      v158 = OUTLINED_FUNCTION_116();
      v159(v158);
LABEL_56:

      goto LABEL_27;
    }

    sub_1CA25B3D0(0, &unk_1EC446AF0, off_1E836E1F0);
    v150 = OUTLINED_FUNCTION_11_30();
    v151 = sub_1CA948CB8();
    OUTLINED_FUNCTION_14_26(v151);
    v99 = v152;
    v153 = v1[53];
    if (v150)
    {
      v154 = *(v152 + 64);
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_4_45();
      v155();
      v156 = [objc_allocWithZone(WFDateFieldParameterState) init];
      v103 = sub_1CA948C58();
      isa = v156;
      [(objc_class *)v156 setPreprocessedDate:v103];
      goto LABEL_48;
    }

LABEL_57:
    v548 = v25;
    v208 = *(v99 + 8);
    v209 = OUTLINED_FUNCTION_3_3();
    v210(v209);
    goto LABEL_102;
  }

  if (v41 == *MEMORY[0x1E69DAD80])
  {
    v104 = v1[52];
    v105 = OUTLINED_FUNCTION_0_58();
    (v553)(v105);
    v106 = OUTLINED_FUNCTION_2_52();
    v107(v106);
    sub_1CA25B3D0(0, &qword_1EC446AE8, off_1E836E218);
    v545 = v1;
    if (OUTLINED_FUNCTION_11_30())
    {
      v108 = v1[52];
      v109 = sub_1CA9488E8();
      OUTLINED_FUNCTION_1_0(v109);
      v111 = v110;
      v113 = *(v112 + 64);
      v114 = OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_74();
      v115();
      v116 = sub_1CA948CB8();
      OUTLINED_FUNCTION_1_0(v116);
      v118 = v117;
      v120 = *(v119 + 64);
      v121 = OUTLINED_FUNCTION_45();
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
      OUTLINED_FUNCTION_18_0(v122);
      v124 = *(v123 + 64);
      v125 = OUTLINED_FUNCTION_13_5();
      v126 = swift_task_alloc();
      sub_1CA9488D8();
      OUTLINED_FUNCTION_5_38(v126);
      if (v127)
      {
        v559 = v121;
        v128 = v109;
        v129 = sub_1CA9490D8();
        OUTLINED_FUNCTION_1_0(v129);
        v130 = v111;
        v131 = v118;
        v133 = v132;
        v135 = *(v134 + 64);
        v136 = OUTLINED_FUNCTION_45();
        sub_1CA9490B8();
        sub_1CA949098();
        v137 = v129;
        v109 = v128;
        v121 = v559;
        (*(v133 + 8))(v136, v137);
        v118 = v131;
        v111 = v130;

        OUTLINED_FUNCTION_5_38(v126);
        if (!v127)
        {
          sub_1CA30F7DC(v126, &qword_1EC4466D0, &qword_1CA991AA0);
        }
      }

      else
      {
        (*(v118 + 32))(v125, v126, v116);
        OUTLINED_FUNCTION_22_18();
      }

      OUTLINED_FUNCTION_5_38(v125);
      if (!v127)
      {
        v243 = *(v118 + 32);
        v244 = OUTLINED_FUNCTION_116();
        v245(v244);

        v246 = sub_1CA948C58();
        isa = [objc_allocWithZone(WFDateSubstitutableState) initWithValue_];

        (*(v118 + 8))(v121, v116);
        (*(v111 + 8))(v114, v109);

LABEL_85:

LABEL_86:
        v1 = v545;
        goto LABEL_27;
      }

      v1 = v545;
      v238 = v545[43];
      v239 = v545[44];
      v240 = v545[39];
      sub_1CA30F7DC(v125, &qword_1EC4466D0, &qword_1CA991AA0);

      sub_1CA3DBA78();
      v241 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_7_37(v241, v242);
      (*(v111 + 8))(v114, v109);
    }

    else
    {
      sub_1CA25B3D0(0, &unk_1EC446AF0, off_1E836E1F0);
      v211 = OUTLINED_FUNCTION_11_30();
      v212 = sub_1CA9488E8();
      v213 = *(v212 - 8);
      v214 = v1;
      v215 = v213;
      v216 = v214[52];
      if (!v211)
      {
        v548 = v25;
        (*(v213 + 8))(v216, v212);
        v1 = v545;
        goto LABEL_102;
      }

      v217 = *(v213 + 64);
      v218 = OUTLINED_FUNCTION_45();
      (*(v215 + 32))(v218, v216, v212);
      v219 = sub_1CA948CB8();
      OUTLINED_FUNCTION_1_0(v219);
      v221 = v220;
      v223 = *(v222 + 64);
      v224 = OUTLINED_FUNCTION_45();
      v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
      OUTLINED_FUNCTION_18_0(v225);
      v227 = *(v226 + 64);
      v228 = OUTLINED_FUNCTION_13_5();
      v229 = swift_task_alloc();
      sub_1CA9488D8();
      OUTLINED_FUNCTION_5_38(v229);
      if (v127)
      {
        v230 = sub_1CA9490D8();
        OUTLINED_FUNCTION_1_0(v230);
        v560 = v212;
        v231 = v221;
        v232 = v224;
        v234 = v233;
        v236 = *(v235 + 64);
        v237 = OUTLINED_FUNCTION_45();
        sub_1CA9490B8();
        sub_1CA949098();
        (*(v234 + 8))(v237, v230);
        v224 = v232;
        v221 = v231;
        v212 = v560;

        OUTLINED_FUNCTION_5_38(v229);
        if (!v127)
        {
          sub_1CA30F7DC(v229, &qword_1EC4466D0, &qword_1CA991AA0);
        }
      }

      else
      {
        OUTLINED_FUNCTION_74();
        v283(v228, v229, v219);
        OUTLINED_FUNCTION_22_18();
      }

      OUTLINED_FUNCTION_5_38(v228);
      if (!v127)
      {
        OUTLINED_FUNCTION_74();
        v289 = OUTLINED_FUNCTION_116();
        v290(v289);

        v291 = [objc_allocWithZone(WFDateFieldParameterState) init];
        v292 = sub_1CA948C58();
        isa = v291;
        [(objc_class *)v291 setPreprocessedDate:v292];

        (*(v221 + 8))(v224, v219);
        (*(v215 + 8))(v218, v212);

        goto LABEL_85;
      }

      v238 = v545[43];
      v284 = v545[44];
      v240 = v545[39];
      sub_1CA30F7DC(v228, &qword_1EC4466D0, &qword_1CA991AA0);

      sub_1CA3DBA78();
      v285 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_7_37(v285, v286);
      (*(v215 + 8))(v218, v212);
      v1 = v545;
    }

    v287 = v240;
    goto LABEL_83;
  }

  if (v41 == *MEMORY[0x1E69DADB8])
  {
    v139 = v1[51];
    v140 = OUTLINED_FUNCTION_0_58();
    (v553)(v140);
    v141 = OUTLINED_FUNCTION_2_52();
    v142(v141);
    sub_1CA25B3D0(0, &qword_1EC4463D0, off_1E836F458);
    v143 = OUTLINED_FUNCTION_12_27();
    v144 = sub_1CA948BA8();
    OUTLINED_FUNCTION_14_26(v144);
    v99 = v145;
    v146 = v1[51];
    if (!v143)
    {
      goto LABEL_57;
    }

    v147 = *(v145 + 64);
    v148 = OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_4_45();
    v149();
    sub_1CA948B28();
    sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
LABEL_55:
    v562[0] = sub_1CA538038();
    v207.variableString.super.isa = v562;
    v565 = WFVariableStringParameterState.init(variableString:)(v207);
    isa = v565.super.isa;
    (*(v99 + 8))(v148, v35, v565._userInputInsertionIndex, v565._variable);
    goto LABEL_56;
  }

  if (v41 == *MEMORY[0x1E69DAD98])
  {
    v195 = v1[50];
    v196 = OUTLINED_FUNCTION_0_58();
    (v553)(v196);
    v197 = OUTLINED_FUNCTION_2_52();
    v198(v197);
    sub_1CA25B3D0(0, &qword_1EC441788, off_1E836F4E0);
    v199 = OUTLINED_FUNCTION_12_27();
    v200 = sub_1CA948978();
    OUTLINED_FUNCTION_14_26(v200);
    v99 = v201;
    v202 = v1[50];
    if (!v199)
    {
      goto LABEL_57;
    }

    v203 = *(v201 + 64) + 15;
    v148 = swift_task_alloc();
    OUTLINED_FUNCTION_4_45();
    v204();
    sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
    swift_task_alloc();
    (*(v99 + 16))();
    v205 = sub_1CA94CDE8();

    v206 = [v205 string];

    sub_1CA94C3A8();
    sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
    goto LABEL_55;
  }

  if (v41 == *MEMORY[0x1E69DAE10])
  {
    v247 = v1[48];
    v248 = OUTLINED_FUNCTION_0_58();
    (v553)(v248);
    v249 = OUTLINED_FUNCTION_2_52();
    v250(v249);
    sub_1CA25B3D0(0, &qword_1EC446AC8, off_1E836EB50);
    v251 = OUTLINED_FUNCTION_11_30();
    v252 = v1[48];
    if (v251)
    {
      v253 = v1[21];
      v254 = v1[19];
      v255 = v1[20];
      (*(v1[23] + 32))(v1[24], v252, v1[22]);
      sub_1CA94AB88();
      v256 = *(v255 + 88);
      v257 = OUTLINED_FUNCTION_20_0();
      v259 = v258(v257);
      if (v259 == *MEMORY[0x1E69DAD48])
      {
        v260 = v1[18];
        v261 = v1[16];
        v262 = v1[17];
        (*(v1[20] + 96))(v1[21], v1[19]);
        OUTLINED_FUNCTION_74();
        v263 = OUTLINED_FUNCTION_23();
        v264(v263);
        v265 = sub_1CA94AD18();
        v266 = [objc_allocWithZone(WFLocationValue) initWithPlacemark_];

        v267 = *(v262 + 8);
        v268 = OUTLINED_FUNCTION_20_0();
        v269(v268);
      }

      else
      {
        if (v259 != *MEMORY[0x1E69DAD40])
        {
          v398 = v1[44];
          v557 = v1[43];
          v399 = v1[39];
          v401 = v1[23];
          v400 = v1[24];
          v403 = v1[21];
          v402 = v1[22];
          v404 = v1;
          v405 = v1[20];
          v406 = v404[19];
          sub_1CA3DBA78();
          v407 = OUTLINED_FUNCTION_127();
          OUTLINED_FUNCTION_7_37(v407, v408);
          (*(v401 + 8))(v400, v402);
          (*(v405 + 8))(v403, v406);
          v1 = v404;
          v287 = v399;
          v288 = v557;
          goto LABEL_84;
        }

        v266 = [objc_opt_self() currentLocation];
      }

      v315 = v1[23];
      v314 = v1[24];
      v316 = v1[22];
      isa = [objc_allocWithZone(WFLocationParameterState) initWithValue_];
      goto LABEL_133;
    }

    v548 = v25;
    v312 = v1[22];
    v313 = v1[23];
LABEL_101:
    (*(v313 + 8))(v252, v312);
    goto LABEL_102;
  }

  if (v41 == *MEMORY[0x1E69DADE8])
  {
    v272 = v1[49];
    v273 = OUTLINED_FUNCTION_0_58();
    (v553)(v273);
    v274 = OUTLINED_FUNCTION_2_52();
    v275(v274);
    sub_1CA25B3D0(0, &unk_1EC446AD0, 0x1E6996D10);
    v276 = OUTLINED_FUNCTION_11_30();
    v252 = v1[49];
    if (v276)
    {
      v277 = v1[40];
      v278 = v1[29];
      v279 = v1[7];
      (*(v1[36] + 32))(v1[37], v252, v1[35]);
      sub_1CA5A7354(v279 + *(v277 + 20), v278);
      v280 = sub_1CA94AD08();
      if (__swift_getEnumTagSinglePayload(v278, 1, v280) == 1)
      {
        v281 = v1[30];
        v282 = v1[31];
        sub_1CA30F7DC(v1[29], &unk_1EC445A40, &unk_1CA983150);
        __swift_storeEnumTagSinglePayload(v281, 1, 1, v282);
LABEL_125:
        v411 = v1[31];
        v412 = v1[30];
        (*(v1[32] + 104))(v1[34], *MEMORY[0x1E69DB1B0], v411);
        if (__swift_getEnumTagSinglePayload(v412, 1, v411) != 1)
        {
          sub_1CA30F7DC(v1[30], &qword_1EC446A88, &qword_1CA98C7D0);
        }
      }

      else
      {
        v370 = v1[32];
        v546 = v1;
        v371 = v1[26];
        v372 = v1[29];
        v373 = sub_1CA94ACF8();
        v374 = *(*(v280 - 8) + 8);
        v375 = OUTLINED_FUNCTION_116();
        v376(v375);
        v377 = v373 + 56;
        v378 = -1;
        v379 = -1 << *(v373 + 32);
        if (-v379 < 64)
        {
          v378 = ~(-1 << -v379);
        }

        v380 = v378 & *(v373 + 56);
        v381 = (63 - v379) >> 6;
        v538 = *MEMORY[0x1E69DB150];
        v524 = v370;
        v528 = (v370 + 32);
        v561 = v373;
        result = sub_1CA94C218();
        v382 = 0;
        v532 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v383 = v382;
          if (!v380)
          {
            break;
          }

LABEL_116:
          v385 = v546[27];
          v384 = v546[28];
          v386 = v546[25];
          v387 = __clz(__rbit64(v380));
          v380 &= v380 - 1;
          (*(v371 + 16))(v384, *(v561 + 48) + *(v371 + 72) * (v387 | (v382 << 6)), v386);
          (*(v371 + 32))(v385, v384, v386);
          if ((*(v371 + 88))(v385, v386) == v538)
          {
            v388 = v546[33];
            v389 = v546[31];
            v390 = v546[27];
            (*(v371 + 96))(v390, v546[25]);
            v391 = *v528;
            (*v528)(v388, v390, v389);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v395 = *(v532 + 16);
              sub_1CA2E4C88();
              v532 = v396;
            }

            v392 = *(v532 + 16);
            if (v392 >= *(v532 + 24) >> 1)
            {
              sub_1CA2E4C88();
              v532 = v397;
            }

            v393 = v546[33];
            v394 = v546[31];
            *(v532 + 16) = v392 + 1;
            result = (v391)(v532 + ((*(v524 + 80) + 32) & ~*(v524 + 80)) + *(v524 + 72) * v392, v393, v394);
          }

          else
          {
            result = (*(v371 + 8))(v546[27], v546[25]);
          }
        }

        while (1)
        {
          v382 = v383 + 1;
          if (__OFADD__(v383, 1))
          {
            __break(1u);
            return result;
          }

          if (v382 >= v381)
          {
            break;
          }

          v380 = *(v377 + 8 * v382);
          ++v383;
          if (v380)
          {
            goto LABEL_116;
          }
        }

        v1 = v546;
        v410 = v546[30];
        v409 = v546[31];

        sub_1CA2ECDD8(v532, v410);

        if (__swift_getEnumTagSinglePayload(v410, 1, v409) == 1)
        {
          goto LABEL_125;
        }

        (*v528)(v546[34], v546[30], v546[31]);
      }

      v432 = v1[37];
      v433 = sub_1CA94AB48();
      v434 = [v433 personHandle];

      if (!v434)
      {
        v446 = v1[36];
        v445 = v1[37];
        v448 = v1[34];
        v447 = v1[35];
        v449 = v1[31];
        v450 = v1[32];
        v451 = sub_1CA94AB48();
        v452 = [objc_opt_self() contactWithPerson_];

        isa = [objc_allocWithZone(MEMORY[0x1E6996D10]) initWithContact_];
        (*(v450 + 8))(v448, v449);
        v453 = *(v446 + 8);
        v431 = OUTLINED_FUNCTION_3_3();
LABEL_142:
        v430(v431, v454);
        goto LABEL_27;
      }

      v435 = v1[36];
      v436 = v1[32];
      v437 = sub_1CA5A6E9C(v1[34], v434);
      v438 = (v436 + 8);
      v439 = (v435 + 8);
      v440 = v1[37];
      v441 = v1[34];
      v316 = v1[35];
      v442 = v1[31];
      if (v437)
      {
        v443 = sub_1CA94AB48();
        v444 = [objc_opt_self() contactWithPerson_];

        isa = [objc_allocWithZone(MEMORY[0x1E6996D10]) initWithContact_];
      }

      else
      {
        v455 = objc_opt_self();
        v456 = sub_1CA94AB48();
        v457 = [v455 cnContactWithINPerson_];

        isa = [objc_allocWithZone(MEMORY[0x1E6996D10]) initWithContact_];
      }

      (*v438)(v441, v442);
      v430 = *v439;
      v431 = v440;
LABEL_141:
      v454 = v316;
      goto LABEL_142;
    }

    v548 = v25;
    v312 = v1[35];
    v313 = v1[36];
    goto LABEL_101;
  }

  if (v41 != *MEMORY[0x1E69DADD0])
  {
    v548 = v25;
    if (v41 != *MEMORY[0x1E69DAE08])
    {
      goto LABEL_102;
    }

    v317 = v1[46];
    v318 = OUTLINED_FUNCTION_0_58();
    (v553)(v318);
    v319 = OUTLINED_FUNCTION_2_52();
    v320(v319);
    sub_1CA25B3D0(0, &qword_1EC446AA0, off_1E836F588);
    v321 = OUTLINED_FUNCTION_11_30();
    v322 = v1[46];
    if (v321)
    {
      v323 = v1[8];
      (*(v1[10] + 32))(v1[11], v322, v1[9]);
      sub_1CA94ABF8();
      v324 = sub_1CA94B458();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v323, 1, v324);
      v326 = v1[8];
      if (EnumTagSinglePayload == 1)
      {
        sub_1CA30F7DC(v1[8], &qword_1EC4468C0, &qword_1CA988C00);
      }

      else
      {
        sub_1CA94B378();
        (*(*(v324 - 8) + 8))(v326, v324);
      }

      v467 = v1[10];
      v468 = v1[11];
      v469 = v1[9];
      v470 = sub_1CA94A9C8();
      v472 = v471;
      v473 = objc_allocWithZone(WFWorkflowParameterStateDescriptor);
      v474 = OUTLINED_FUNCTION_20_0();
      v476 = sub_1CA5A71F0(v474, v475, v470, v472, 0);
      isa = [objc_allocWithZone(WFWorkflowParameterState) initWithValue_];

      (*(v467 + 8))(v468, v469);
      goto LABEL_27;
    }

    v465 = v1[9];
    v466 = v1[10];
    goto LABEL_148;
  }

  v293 = v1[47];
  v294 = OUTLINED_FUNCTION_0_58();
  (v553)(v294);
  v295 = OUTLINED_FUNCTION_2_52();
  v296(v295);
  sub_1CA25B3D0(0, &qword_1EC446AA8, off_1E836E370);
  if (!OUTLINED_FUNCTION_11_30())
  {
    v548 = v25;
    sub_1CA25B3D0(0, &qword_1EC446AB0, off_1E836E7F8);
    v413 = OUTLINED_FUNCTION_11_30();
    v322 = v1[47];
    if (v413)
    {
      v315 = v1[13];
      v314 = v1[14];
      v316 = v1[12];
      OUTLINED_FUNCTION_74();
      v414(v314);
      v415 = sub_1CA94AB18();
      v562[3] = sub_1CA25B3D0(0, &qword_1EC441738, 0x1E696E840);
      v562[0] = v415;
      v416 = [objc_opt_self() fileValueType];
      v417 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
      v266 = sub_1CA320AB4(v562, v416);
      v297 = [objc_allocWithZone(MEMORY[0x1E69ACEC8]) initWithValue:v266 indentationLevel:0];
      v418 = [objc_allocWithZone(WFLinkDynamicOptionSubstitutableState) initWithValue_];
LABEL_132:
      isa = v418;

LABEL_133:
      v430 = *(v315 + 8);
      v431 = v314;
      goto LABEL_141;
    }

    v465 = v1[12];
    v466 = v1[13];
LABEL_148:
    (*(v466 + 8))(v322, v465);
    goto LABEL_71;
  }

  (*(v1[13] + 32))(v1[15], v1[47], v1[12]);
  v297 = sub_1CA94AB18();
  v298 = sub_1CA5A72F0(v297);
  if (v299 >> 60 == 15)
  {
    v300 = sub_1CA948BA8();
    OUTLINED_FUNCTION_1_0(v300);
    v302 = v301;
    v304 = *(v303 + 64) + 15;
    v305 = swift_task_alloc();
    v306 = [v297 fileURL];
    if (!v306)
    {
      v238 = v1[43];
      v477 = v1[44];
      v478 = v1[39];
      v479 = v1[15];
      v480 = v1[12];
      v481 = v1[13];

      sub_1CA3DBA78();
      v482 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_7_37(v482, v483);

      (*(v481 + 8))(v479, v480);
      v287 = v478;
      goto LABEL_83;
    }

    v307 = v306;
    sub_1CA948B68();

    sub_1CA25B3D0(0, &qword_1EC446AC0, off_1E836E3A0);
    v308 = swift_task_alloc();
    (*(v302 + 16))(v308, v305, v300);
    v266 = sub_1CA457B0C(v308);
    v309 = *(v302 + 8);
    v310 = OUTLINED_FUNCTION_20_0();
    v311(v310);
  }

  else
  {
    sub_1CA39F318(v298, v299);
    sub_1CA5A72F0(v297);
    v419 = [v297 filename];
    v420 = sub_1CA94C3A8();
    v422 = v421;

    v423 = [v297 filename];
    v424 = sub_1CA94C3A8();
    v426 = v425;

    v427 = objc_allocWithZone(WFFileValue);
    v428 = OUTLINED_FUNCTION_3_3();
    v266 = sub_1CA5A7104(v428, v429, v420, v422, v424, v426);
  }

  if (v266)
  {
    v314 = v1[15];
    v316 = v1[12];
    v315 = v1[13];
    v418 = [objc_allocWithZone(WFFileParameterState) initWithValue_];
    goto LABEL_132;
  }

  v238 = v1[43];
  v458 = v1[44];
  v459 = v1[39];
  v460 = v1[15];
  v461 = v1[12];
  v462 = v1[13];
  sub_1CA3DBA78();
  v463 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_7_37(v463, v464);

  (*(v462 + 8))(v460, v461);
  v287 = v459;
LABEL_83:
  v288 = v238;
LABEL_84:
  v551(v287, v288);
LABEL_106:
  v357 = v1[65];
  v359 = v1[63];
  v358 = v1[64];
  v361 = v1[59];
  v360 = v1[60];
  v363 = v1[57];
  v362 = v1[58];
  v364 = v1[55];
  v365 = v1[56];
  v366 = v1[54];
  v367 = v1;
  v368 = v1[53];
  v488 = v367[52];
  v490 = v367[51];
  v492 = v367[50];
  v494 = v367[49];
  v496 = v367[48];
  v498 = v367[47];
  v500 = v367[46];
  v502 = v367[45];
  v504 = v367[42];
  v506 = v367[41];
  v508 = v367[39];
  v510 = v367[37];
  v512 = v367[34];
  v514 = v367[33];
  v516 = v367[30];
  v518 = v367[29];
  v520 = v367[28];
  v523 = v367[27];
  v527 = v367[24];
  v531 = v367[21];
  v537 = v367[18];
  v544 = v367[15];
  v550 = v367[14];
  v552 = v367[11];
  v556 = v367[8];

  v369 = v367[1];

  return v369();
}

uint64_t sub_1CA5A6D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterStateValueTransformContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA5A6DCC(uint64_t a1)
{
  v2 = type metadata accessor for ParameterStateValueTransformContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1CA5A6E28()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1CA94C368();

  v2 = [v0 initWithHandleString_];

  return v2;
}

uint64_t sub_1CA5A6E9C(uint64_t a1, void *a2)
{
  v4 = sub_1CA94AFF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E69DB1B0])
  {
    return 1;
  }

  if (v9 == *MEMORY[0x1E69DB1A8])
  {
    sub_1CA5A728C(a2);
    if (v11)
    {
      v12 = 2;
LABEL_9:

      return [a2 type] == v12;
    }

    return 0;
  }

  if (v9 == *MEMORY[0x1E69DB1A0])
  {
    sub_1CA5A728C(a2);
    if (v13)
    {
      v12 = 1;
      goto LABEL_9;
    }

    return 0;
  }

  if (v9 != *MEMORY[0x1E69DB198])
  {
    result = sub_1CA94D7E8();
    __break(1u);
    return result;
  }

  sub_1CA5A728C(a2);
  if (!v14)
  {
    return 0;
  }

  result = [a2 type];
  if (result != 1)
  {
    v12 = 2;
    return [a2 type] == v12;
  }

  return result;
}

uint64_t sub_1CA5A7068(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1CA437724;
  v3 = OUTLINED_FUNCTION_23();

  return sub_1CA5A3F30(v3, v4);
}

id sub_1CA5A7104(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >> 60 == 15)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v9 = sub_1CA948BF8();
  sub_1CA39F318(a1, a2);
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = sub_1CA94C368();

  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = sub_1CA94C368();

LABEL_8:
  v14 = [v6 initWithBookmarkData:v9 filename:v10 displayName:v11];

  return v14;
}

id sub_1CA5A71F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_1CA94C368();

  if (a4)
  {
    v9 = sub_1CA94C368();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithWorkflowName:v8 workflowIdentifier:v9 isSelf:a5 & 1];

  return v10;
}

uint64_t sub_1CA5A728C(void *a1)
{
  v1 = [a1 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

uint64_t sub_1CA5A72F0(void *a1)
{
  v1 = [a1 _bookmarkData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA948C08();

  return v3;
}

uint64_t sub_1CA5A7354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WFDatabase.SpotlightSyncableWorkflow.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1CA94C218();
  return v1;
}

uint64_t WFDatabase.SpotlightSyncableWorkflow.init(identifier:syncHash:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t WFDatabase.SpotlightSyncableWorkflow.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1CA94D408();
  MEMORY[0x1CCAA1300](0xD000000000000026, 0x80000001CA9D1290);
  MEMORY[0x1CCAA1300](v1, v2);
  MEMORY[0x1CCAA1300](0x6148636E7973202CLL, 0xEC000000203A6873);
  v4 = sub_1CA94D798();
  MEMORY[0x1CCAA1300](v4);

  MEMORY[0x1CCAA1300](41, 0xE100000000000000);
  return 0;
}

BOOL static WFDatabase.SpotlightSyncableWorkflow.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1CA94D7F8();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t WFDatabase.SpotlightSyncableWorkflow.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1CA94C458();
  return MEMORY[0x1CCAA27B0](v3);
}

uint64_t WFDatabase.SpotlightSyncableWorkflow.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1CA94D918();
  sub_1CA94C458();
  MEMORY[0x1CCAA27B0](v3);
  return sub_1CA94D968();
}

uint64_t sub_1CA5A75F4()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1CA94D918();
  WFDatabase.SpotlightSyncableWorkflow.hash(into:)();
  return sub_1CA94D968();
}

void sub_1CA5A769C(void *a1@<X0>, void *a2@<X8>)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_self() fetchRequest];
  sub_1CA25B3D0(0, &qword_1EC446B28, 0x1E696AB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1CA981360;
  *(v5 + 32) = [a1 visiblePredicate];
  sub_1CA25B3D0(0, &qword_1EC441AA8, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1CA981310;
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1CA282DB4();
  strcpy((v6 + 32), "showInSearch");
  *(v6 + 45) = 0;
  *(v6 + 46) = -5120;
  *(v5 + 40) = sub_1CA94CBA8();
  v8 = sub_1CA5A7B70();
  [v4 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1CA97EDF0;
  *(v9 + 32) = 0x776F6C666B726F77;
  *(v9 + 40) = 0xEA00000000004449;
  *(v9 + 88) = v7;
  *(v9 + 56) = v7;
  *(v9 + 64) = 0xD000000000000011;
  *(v9 + 72) = 0x80000001CA9D12F0;
  v10 = sub_1CA94C648();

  [v4 setPropertiesToFetch_];

  v36[0] = 0;
  v11 = [v4 execute_];
  v12 = v36[0];
  if (v11)
  {
    v13 = v11;
    v34 = a2;
    sub_1CA25B3D0(0, &unk_1EC441990, off_1E836E138);
    v14 = sub_1CA94C658();
    v15 = v12;

    v16 = sub_1CA25B410();
    v17 = 0;
    v35 = MEMORY[0x1E69E7CC0];
    while (v16 != v17)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1CCAA22D0](v17, v14);
      }

      else
      {
        if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v18 = *(v14 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
      }

      v21 = sub_1CA68ED04(v18);
      if (v22)
      {
        v23 = v21;
        v24 = v22;
        v25 = [v19 spotlightSyncHash];

        v33 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = *(v35 + 16);
          sub_1CA2E71F4();
          v35 = v29;
        }

        v26 = *(v35 + 16);
        if (v26 >= *(v35 + 24) >> 1)
        {
          sub_1CA2E71F4();
          v35 = v30;
        }

        *(v35 + 16) = v26 + 1;
        v27 = (v35 + 24 * v26);
        v27[4] = v23;
        v27[5] = v24;
        v27[6] = v33;
        v17 = v20;
      }

      else
      {

        ++v17;
      }
    }

    *v34 = v35;
  }

  else
  {
    v31 = v36[0];
    sub_1CA948AD8();

    swift_willThrow();
  }

  v32 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1CA5A7B0C()
{
  result = qword_1EC446B20;
  if (!qword_1EC446B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446B20);
  }

  return result;
}

id sub_1CA5A7B70()
{
  sub_1CA25B3D0(0, &qword_1EC441AA8, 0x1E696AE18);
  v0 = sub_1CA94C648();

  v1 = [swift_getObjCClassFromMetadata() andPredicateWithSubpredicates_];

  return v1;
}

id sub_1CA5A7C28()
{
  v0 = sub_1CA949D18();
  v130 = *(v0 - 8);
  v131 = v0;
  v1 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v129 = v121 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9D1320;
  *(inited + 64) = v4;
  *(inited + 72) = @"ActionKeywords";
  v5 = @"ActionClass";
  v6 = @"ActionKeywords";
  v134 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v138 = v14;
  v139 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = v121 - v139;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v136 = qword_1EDB9F690;
  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v137 = v18;
  v135 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = v121 - v135;
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v134, v8, v9, v11, 0, 0, v15, v19);
  v22 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v134 = v22;
  *(inited + 80) = v21;
  *(inited + 104) = v22;
  *(inited + 112) = @"Description";
  v133 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionInput";
  v24 = @"Description";
  v25 = @"DescriptionInput";
  v127 = sub_1CA94C438();
  *&v126 = v26;
  v125 = sub_1CA94C438();
  v28 = v27;
  v128 = v121;
  MEMORY[0x1EEE9AC00](v125);
  v29 = v121 - v139;
  sub_1CA948D98();
  v30 = v136;
  v31 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v32 = v135;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v127, v126, v125, v28, 0, 0, v29, v121 - v32);
  v34 = v134;
  *(v23 + 64) = v134;
  *(v23 + 72) = @"DescriptionSummary";
  v35 = @"DescriptionSummary";
  v127 = sub_1CA94C438();
  *&v126 = v36;
  v125 = sub_1CA94C438();
  v38 = v37;
  v128 = v121;
  MEMORY[0x1EEE9AC00](v125);
  v39 = v121 - v139;
  sub_1CA948D98();
  v40 = [v30 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = sub_1CA2F9F14(v127, v126, v125, v38, 0, 0, v39, v121 - v32);
  *(v23 + 104) = v34;
  *(v23 + 80) = v42;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v43 = v133;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v43;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v44 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0x7070697A2E636F64;
  *(inited + 208) = 0xEA00000000007265;
  *(inited + 224) = v44;
  *(inited + 232) = @"IconSymbolColor";
  *(inited + 240) = 1702194242;
  *(inited + 248) = 0xE400000000000000;
  *(inited + 264) = v44;
  *(inited + 272) = @"Input";
  v45 = v44;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v46 = swift_initStackObject();
  v126 = xmmword_1CA981350;
  *(v46 + 16) = xmmword_1CA981350;
  *(v46 + 32) = 0x656C7069746C754DLL;
  *(v46 + 40) = 0xE800000000000000;
  v47 = MEMORY[0x1E69E6370];
  *(v46 + 48) = 0;
  *(v46 + 72) = v47;
  strcpy((v46 + 80), "ParameterKey");
  *(v46 + 93) = 0;
  *(v46 + 94) = -5120;
  *(v46 + 96) = 0x7669686372414657;
  *(v46 + 104) = 0xE900000000000065;
  *(v46 + 120) = v45;
  *(v46 + 128) = 0x6465726975716552;
  *(v46 + 136) = 0xE800000000000000;
  *(v46 + 144) = 1;
  *(v46 + 168) = v47;
  *(v46 + 176) = 0x7365707954;
  *(v46 + 184) = 0xE500000000000000;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v46 + 216) = v133;
  *(v46 + 192) = &unk_1F4A07BC8;
  v48 = @"IconColor";
  v49 = @"IconSymbol";
  v50 = @"IconSymbolColor";
  v51 = @"Input";
  v52 = sub_1CA94C1E8();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v128 = v53;
  *(inited + 280) = v52;
  *(inited + 304) = v53;
  *(inited + 312) = @"Name";
  v54 = @"Name";
  v55 = sub_1CA94C438();
  v123 = v56;
  v124 = v55;
  v57 = sub_1CA94C438();
  v59 = v58;
  v125 = v121;
  MEMORY[0x1EEE9AC00](v57);
  v60 = v139;
  sub_1CA948D98();
  v61 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = v121 - v135;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v124, v123, v57, v59, 0, 0, v121 - v60, v62);
  v64 = v134;
  *(inited + 344) = v134;
  *(inited + 352) = @"Output";
  v65 = swift_allocObject();
  *(v65 + 16) = v126;
  *(v65 + 32) = 0x75736F6C63736944;
  *(v65 + 40) = 0xEF6C6576654C6572;
  *(v65 + 48) = 0x63696C627550;
  *(v65 + 56) = 0xE600000000000000;
  *(v65 + 72) = MEMORY[0x1E69E6158];
  *(v65 + 80) = 0x656C7069746C754DLL;
  *(v65 + 88) = 0xE800000000000000;
  *(v65 + 96) = 1;
  *(v65 + 120) = MEMORY[0x1E69E6370];
  *(v65 + 128) = 0x614E74757074754FLL;
  *(v65 + 136) = 0xEA0000000000656DLL;
  v66 = @"Output";
  v67 = sub_1CA94C438();
  v125 = v68;
  *&v126 = v67;
  v69 = sub_1CA94C438();
  v124 = v70;
  v127 = v121;
  MEMORY[0x1EEE9AC00](v69);
  sub_1CA948D98();
  v71 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = v121 - v135;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 144) = sub_1CA2F9F14(v126, v125, v69, v124, 0, 0, v121 - v60, v72);
  *(v65 + 168) = v64;
  *(v65 + 176) = 0x7365707954;
  *(v65 + 216) = v133;
  *(v65 + 184) = 0xE500000000000000;
  *(v65 + 192) = &unk_1F4A07BF8;
  v74 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v128;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v128 = swift_allocObject();
  *(v128 + 1) = xmmword_1CA9813B0;
  v127 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1CA981370;
  *(v75 + 32) = @"Class";
  *(v75 + 40) = 0xD000000000000019;
  *(v75 + 48) = 0x80000001CA99B030;
  *(v75 + 64) = v74;
  *(v75 + 72) = @"Key";
  *(v75 + 80) = 0x7669686372414657;
  *(v75 + 88) = 0xE900000000000065;
  *(v75 + 104) = v74;
  *(v75 + 112) = @"Label";
  v76 = @"Parameters";
  v77 = @"Class";
  v78 = @"Key";
  v79 = @"Label";
  v80 = sub_1CA94C438();
  v123 = v81;
  v124 = v80;
  v82 = sub_1CA94C438();
  v122 = v83;
  v125 = v121;
  MEMORY[0x1EEE9AC00](v82);
  v84 = v121 - v139;
  sub_1CA948D98();
  v85 = v136;
  v86 = [v136 bundleURL];
  v121[1] = v121;
  *&v126 = inited;
  MEMORY[0x1EEE9AC00](v86);
  v87 = v135;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v75 + 120) = sub_1CA2F9F14(v124, v123, v82, v122, 0, 0, v84, v121 - v87);
  *(v75 + 144) = v134;
  *(v75 + 152) = @"Placeholder";
  v89 = @"Placeholder";
  v90 = sub_1CA94C438();
  v123 = v91;
  v124 = v90;
  v92 = sub_1CA94C438();
  v122 = v93;
  v125 = v121;
  MEMORY[0x1EEE9AC00](v92);
  v94 = v121 - v139;
  sub_1CA948D98();
  v95 = [v85 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v75 + 160) = sub_1CA2F9F14(v124, v123, v92, v122, 0, 0, v94, v121 - v87);
  *(v75 + 184) = v134;
  *(v75 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1CA981310;
  v98 = @"PreferredTypes";
  v99 = v129;
  sub_1CA949CF8();
  v100 = sub_1CA949C68();
  v102 = v101;
  (*(v130 + 8))(v99, v131);
  *(v97 + 32) = v100;
  *(v97 + 40) = v102;
  *(v75 + 224) = v133;
  *(v75 + 200) = v97;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v103 = sub_1CA2F864C();
  v104 = v128;
  v128[4] = v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v106 = v126;
  *(v126 + 400) = v104;
  v106[53] = v105;
  v106[54] = @"ParameterSummary";
  v107 = @"ParameterSummary";
  v108 = sub_1CA94C438();
  v110 = v109;
  v111 = sub_1CA94C438();
  v113 = v112;
  v134 = v121;
  MEMORY[0x1EEE9AC00](v111);
  v114 = v121 - v139;
  sub_1CA948D98();
  v115 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = v121 - v135;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v118 = sub_1CA2F9F14(v108, v110, v111, v113, 0, 0, v114, v116);
  v119 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v106[58] = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v106[55] = v119;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5A8D48()
{
  v145 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9D1500;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v151 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v152 = v11;
  v154 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v132 - v154;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v149 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v153 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v150 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v132 - v150;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v151, v5, v6, v8, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v151 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v148 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v146 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v147 = &v132;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v132 - v154;
  sub_1CA948D98();
  v30 = [v13 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v132 - v150;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v146, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v151;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v148;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"DisabledOnPlatforms";
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v148 = v35;
  *(inited + 160) = &unk_1F4A07C28;
  *(inited + 184) = v35;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 6579538;
  *(inited + 208) = 0xE300000000000000;
  v36 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD000000000000016;
  *(inited + 248) = 0x80000001CA9D1590;
  *(inited + 264) = v36;
  *(inited + 272) = @"Name";
  v37 = @"DisabledOnPlatforms";
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"Name";
  v41 = sub_1CA94C438();
  v43 = v42;
  v44 = sub_1CA94C438();
  v46 = v45;
  v147 = &v132;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v132 - v154;
  sub_1CA948D98();
  v48 = [v149 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v132 - v150;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 304) = v151;
  *(inited + 312) = @"Output";
  v51 = @"Output";
  v52 = MEMORY[0x1E69E6158];
  v53 = sub_1CA94C1E8();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 320) = v53;
  *(inited + 344) = v54;
  *(inited + 352) = @"Parameters";
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v147 = swift_allocObject();
  *(v147 + 1) = xmmword_1CA981360;
  v146 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v55 = swift_initStackObject();
  v142 = xmmword_1CA981380;
  *(v55 + 16) = xmmword_1CA981380;
  v140 = 0xD00000000000001BLL;
  v141 = 0x80000001CA9A1EB0;
  *(v55 + 32) = @"Class";
  *(v55 + 40) = 0xD00000000000001BLL;
  *(v55 + 48) = 0x80000001CA9A1EB0;
  *(v55 + 64) = v52;
  *(v55 + 72) = @"Description";
  v56 = @"Class";
  v57 = @"Description";
  v139 = v56;
  v138 = v57;
  v58 = @"Parameters";
  v59 = sub_1CA94C438();
  v136 = v60;
  v61 = sub_1CA94C438();
  v63 = v62;
  v137 = &v132;
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v132 - v154;
  sub_1CA948D98();
  v65 = [v149 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v132 - v150;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 80) = sub_1CA2F9F14(v59, v136, v61, v63, 0, 0, v64, v66);
  *(v55 + 104) = v151;
  *(v55 + 112) = @"DisallowedVariableTypes";
  *(v55 + 120) = &unk_1F4A07C98;
  *(v55 + 144) = v148;
  *(v55 + 152) = @"Key";
  *(v55 + 160) = 0xD000000000000012;
  *(v55 + 168) = 0x80000001CA9D1660;
  *(v55 + 184) = MEMORY[0x1E69E6158];
  *(v55 + 192) = @"Label";
  v68 = @"DisallowedVariableTypes";
  v69 = @"Key";
  v70 = @"Label";
  v136 = v68;
  v135 = v69;
  v137 = v70;
  v71 = sub_1CA94C438();
  v133 = v72;
  v73 = sub_1CA94C438();
  v75 = v74;
  v134 = &v132;
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v132 - v154;
  sub_1CA948D98();
  v77 = [v149 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v132 - v150;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v71, v133, v73, v75, 0, 0, v76, v78);
  *(v55 + 224) = v151;
  *(v55 + 200) = v80;
  v81 = sub_1CA94C368();
  v82 = MEMORY[0x1E69E6158];
  *(v55 + 264) = MEMORY[0x1E69E6158];
  *(v55 + 232) = v81;
  *(v55 + 240) = 0x4566666F646E6148;
  *(v55 + 248) = 0xEF746E696F70646ELL;
  _s3__C3KeyVMa_0(0);
  v134 = v83;
  v133 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v147[4] = sub_1CA2F864C();
  v84 = swift_allocObject();
  *(v84 + 16) = v142;
  v85 = v140;
  *(v84 + 32) = v139;
  *(v84 + 40) = v85;
  *(v84 + 48) = v141;
  v86 = v138;
  *(v84 + 64) = v82;
  *(v84 + 72) = v86;
  v87 = sub_1CA94C438();
  v140 = v88;
  v141 = v87;
  v89 = sub_1CA94C438();
  v139 = v90;
  *&v142 = &v132;
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v132 - v154;
  sub_1CA948D98();
  v92 = v149;
  v93 = [v149 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v143 = inited;
  v94 = v150;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v84 + 80) = sub_1CA2F9F14(v141, v140, v89, v139, 0, 0, v91, &v132 - v94);
  v96 = v136;
  *(v84 + 104) = v151;
  *(v84 + 112) = v96;
  *(v84 + 120) = &unk_1F4A07CC8;
  v97 = v135;
  *(v84 + 144) = v148;
  *(v84 + 152) = v97;
  *(v84 + 160) = 0xD000000000000017;
  *(v84 + 168) = 0x80000001CA9D1720;
  v98 = v137;
  *(v84 + 184) = MEMORY[0x1E69E6158];
  *(v84 + 192) = v98;
  v99 = sub_1CA94C438();
  v141 = v100;
  *&v142 = v99;
  v101 = sub_1CA94C438();
  v103 = v102;
  v148 = &v132;
  MEMORY[0x1EEE9AC00](v101);
  v104 = &v132 - v154;
  sub_1CA948D98();
  v105 = [v92 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v107 = sub_1CA2F9F14(v142, v141, v101, v103, 0, 0, v104, &v132 - v94);
  *(v84 + 224) = v151;
  *(v84 + 200) = v107;
  v108 = sub_1CA94C368();
  *(v84 + 264) = MEMORY[0x1E69E6158];
  *(v84 + 232) = v108;
  *(v84 + 240) = 0x4566666F646E6148;
  *(v84 + 248) = 0xEF746E696F70646ELL;
  sub_1CA94C1E8();
  v109 = sub_1CA2F864C();
  v110 = v147;
  v147[5] = v109;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v112 = v143;
  *(v143 + 360) = v110;
  v112[48] = v111;
  v112[49] = @"ParameterSummary";
  v113 = @"ParameterSummary";
  v114 = sub_1CA94C438();
  v116 = v115;
  v117 = sub_1CA94C438();
  v119 = v118;
  v151 = &v132;
  MEMORY[0x1EEE9AC00](v117);
  v120 = &v132 - v154;
  sub_1CA948D98();
  v121 = [v149 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = &v132 - v150;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v124 = sub_1CA2F9F14(v114, v116, v117, v119, 0, 0, v120, v122);
  v125 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v126 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v112[50] = v125;
  v112[53] = v126;
  v112[54] = @"RequiredResources";
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_1CA9813B0;
  v155 = 2;
  v156 = 1;
  v128 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v129 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v155);
  *(v127 + 32) = v130;
  v112[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v112[55] = v127;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}