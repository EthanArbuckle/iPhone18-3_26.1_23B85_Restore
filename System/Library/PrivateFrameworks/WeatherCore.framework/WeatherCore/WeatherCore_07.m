uint64_t sub_1C9500870(uint64_t a1)
{
  v2 = sub_1C95041F8();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1C95008BC(uint64_t a1)
{
  v2 = sub_1C95041F8();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1C9500908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95041F8();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1C95009A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C95041F8();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1C95009EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95041F8();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1C9500A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C95041F8();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1C9500AB0()
{
  swift_beginAccess();
  sub_1C96A53C4();
  return OUTLINED_FUNCTION_117();
}

uint64_t sub_1C9500B0C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t (*static SevereNotificationEntity_006.version.modify())()
{
  OUTLINED_FUNCTION_117();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1C9500BC0@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
  return sub_1C96A53C4();
}

uint64_t sub_1C9500C1C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  *a5 = v9;
  *a6 = v8;
  sub_1C96A53C4();
}

void SevereNotificationEntity_006.init()()
{
  OUTLINED_FUNCTION_103();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D50);
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24();
  v135 = v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_51_0();
  v134 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D58);
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_24();
  v133 = v10;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_0();
  v132 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v14 = OUTLINED_FUNCTION_7(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v128 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v22 = OUTLINED_FUNCTION_7(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_96();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  *v2 = sub_1C96A6344();
  v129 = v0;
  OUTLINED_FUNCTION_3();
  v137 = v27;
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v27);
  v136 = v25;
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  OUTLINED_FUNCTION_30_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v2[1] = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v43 = *MEMORY[0x1E69D61F8];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  v46 = *(v45 + 104);
  v46(v20, v43, v44);
  OUTLINED_FUNCTION_47_1();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  v51 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v2[2] = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v46(v20, v43, v44);
  v130 = v20;
  OUTLINED_FUNCTION_47_1();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v46(v17, v43, v44);
  v131 = v17;
  OUTLINED_FUNCTION_47_1();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  OUTLINED_FUNCTION_40_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v2[3] = sub_1C96A6344();
  v62 = OUTLINED_FUNCTION_11_3();
  v63 = v137;
  __swift_storeEnumTagSinglePayload(v62, v64, v65, v137);
  v66 = OUTLINED_FUNCTION_5_4();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v63);
  OUTLINED_FUNCTION_30_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v2[4] = OUTLINED_FUNCTION_98_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D78);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D80);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_99();
  v2[5] = sub_1C96A6344();
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
  OUTLINED_FUNCTION_65();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_99();
  v2[6] = sub_1C96A6344();
  v85 = OUTLINED_FUNCTION_11_3();
  v86 = v137;
  __swift_storeEnumTagSinglePayload(v85, v87, v88, v137);
  v89 = OUTLINED_FUNCTION_5_4();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v86);
  OUTLINED_FUNCTION_30_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_108_0();
  v2[7] = sub_1C96A6344();
  v92 = OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v86);
  v95 = OUTLINED_FUNCTION_5_4();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v86);
  OUTLINED_FUNCTION_30_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_108_0();
  v2[8] = sub_1C96A6344();
  v98 = OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v86);
  v101 = OUTLINED_FUNCTION_5_4();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v86);
  OUTLINED_FUNCTION_30_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_108_0();
  v2[9] = sub_1C96A6344();
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v111);
  OUTLINED_FUNCTION_40_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_104_0();
  v2[10] = sub_1C96A6344();
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v115);
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v119);
  OUTLINED_FUNCTION_40_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_104_0();
  v2[11] = sub_1C96A6344();
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D88);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v124);
  v125 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v125, v126, v127, v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D90);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v2[12] = sub_1C96A6344();
  OUTLINED_FUNCTION_101();
}

void SevereNotificationEntity_006.init(identifier:notificationIdentifier:subscription:notification:alert:alertIdentifier:messageIdentifier:alertDescription:issuedTime:expireTime:replacementAlert:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_103();
  a19 = v32;
  a20 = v33;
  v205 = v34;
  v206 = v35;
  v188 = v36;
  v189 = v37;
  OUTLINED_FUNCTION_67(v38, v39, v40, v41);
  v43 = v42;
  v199 = a31;
  v200 = a32;
  v197 = a29;
  v198 = a30;
  v196 = a28;
  v193 = a26;
  v194 = a27;
  v191 = a24;
  v192 = a25;
  v190 = a23;
  v203 = a21;
  v204 = a22;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v44);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_90();
  v195 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D50);
  v48 = OUTLINED_FUNCTION_7(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_57(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D58);
  v52 = OUTLINED_FUNCTION_7(v51);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_57(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v56 = OUTLINED_FUNCTION_7(v55);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_2();
  v59 = (v57 - v58);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v176 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v64 = OUTLINED_FUNCTION_7(v63);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_2();
  v67 = v65 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v176 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  v72 = OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v71);
  v75 = OUTLINED_FUNCTION_31_0();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  v78 = OUTLINED_FUNCTION_123();
  *v43 = v78;
  v184 = v78;
  v201 = v70;
  OUTLINED_FUNCTION_3();
  v176 = v71;
  OUTLINED_FUNCTION_107(v79, v80, v81, v71);
  v202 = v67;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_45_0(v82, v83, v84, v71);
  OUTLINED_FUNCTION_66();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  v183 = OUTLINED_FUNCTION_123();
  v43[1] = v183;
  v85 = v43;
  sub_1C96A3D04();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v86 = *MEMORY[0x1E69D61F8];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  v89 = *(v88 + 104);
  v89(v62, v86, v87);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v87);
  v93 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v85[2] = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v89(v62, v86, v87);
  v178 = v62;
  OUTLINED_FUNCTION_48();
  v177 = v87;
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v87);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v89(v59, v86, v87);
  v179 = v59;
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_56(v99, v100, v101, v87);
  OUTLINED_FUNCTION_1_1();
  v85[3] = sub_1C96A6344();
  v102 = OUTLINED_FUNCTION_21_0();
  v103 = v176;
  __swift_storeEnumTagSinglePayload(v102, v104, v105, v176);
  v106 = OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_45_0(v106, v107, v108, v103);
  OUTLINED_FUNCTION_1_1();
  v109 = sub_1C96A6344();
  v85[4] = v109;
  v182 = v109;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D78);
  v111 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v110);
  v114 = OUTLINED_FUNCTION_32();
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D80);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_4_9();
  v117 = sub_1C96A6344();
  v85[5] = v117;
  v180 = v117;
  v118 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v118, v119, v120, v110);
  v121 = OUTLINED_FUNCTION_32();
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v110);
  OUTLINED_FUNCTION_65();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_4_9();
  v85[6] = sub_1C96A6344();
  v124 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v103);
  v127 = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_45_0(v127, v128, v129, v103);
  sub_1C96A3D04();
  OUTLINED_FUNCTION_4_9();
  v130 = sub_1C96A6344();
  v85[7] = v130;
  v181 = v130;
  v131 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v131, v132, v133, v103);
  v134 = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_45_0(v134, v135, v136, v103);
  OUTLINED_FUNCTION_66();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_4_9();
  v85[8] = sub_1C96A6344();
  v137 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v137, v138, v139, v103);
  v140 = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_45_0(v140, v141, v142, v103);
  OUTLINED_FUNCTION_66();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_4_9();
  v85[9] = sub_1C96A6344();
  v143 = OUTLINED_FUNCTION_5_4();
  v144 = v177;
  __swift_storeEnumTagSinglePayload(v143, v145, v146, v177);
  v147 = OUTLINED_FUNCTION_17_8(&v207);
  OUTLINED_FUNCTION_56(v147, v148, v149, v144);
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_1_0();
  v85[10] = sub_1C96A6344();
  v150 = OUTLINED_FUNCTION_5_4();
  __swift_storeEnumTagSinglePayload(v150, v151, v152, v144);
  v153 = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_56(v153, v154, v155, v144);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_1_0();
  v85[11] = sub_1C96A6344();
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D88);
  v157 = OUTLINED_FUNCTION_16_6(&a13);
  __swift_storeEnumTagSinglePayload(v157, v158, v159, v156);
  v160 = OUTLINED_FUNCTION_17_8(&a14);
  __swift_storeEnumTagSinglePayload(v160, v161, v162, v156);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D90);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  v85[12] = sub_1C96A6344();
  v207 = v185;
  v208 = v186;
  sub_1C96A3D04();
  sub_1C96A6364();

  OUTLINED_FUNCTION_91(v187);
  sub_1C96A6364();

  OUTLINED_FUNCTION_91(v189);
  sub_1C96A6364();

  v207 = v205;
  v208 = v206;
  sub_1C94874C0(v205, v206);
  sub_1C96A6364();

  v207 = v203;
  v208 = v204;
  sub_1C94874C0(v203, v204);
  sub_1C96A6364();

  OUTLINED_FUNCTION_91(v191);
  sub_1C96A6364();

  OUTLINED_FUNCTION_91(v193);
  sub_1C96A6364();

  OUTLINED_FUNCTION_91(v196);
  sub_1C96A6364();

  v163 = sub_1C96A4A54();
  v164 = *(v163 - 8);
  v165 = *(v164 + 16);
  v166 = v195;
  v167 = v197;
  v165(v195, v197, v163);
  v168 = OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_107(v168, v169, v170, v163);
  sub_1C96A6364();

  v171 = v198;
  v165(v166, v198, v163);
  v172 = OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_107(v172, v173, v174, v163);
  sub_1C96A6364();

  OUTLINED_FUNCTION_91(v200);
  sub_1C96A6364();

  sub_1C9482F3C(v203, v204);
  sub_1C9482F3C(v205, v206);
  v175 = *(v164 + 8);
  v175(v171, v163);
  v175(v167, v163);
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C9501B80(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001C96CC4C0 == a2;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702125924 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465696669646F6DLL && a2 == 0xE800000000000000;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7069726373627573 && a2 == 0xEC0000006E6F6974;
          if (v9 || (sub_1C96A7DE4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974;
            if (v10 || (sub_1C96A7DE4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7472656C61 && a2 == 0xE500000000000000;
              if (v11 || (sub_1C96A7DE4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6564497472656C61 && a2 == 0xEF7265696669746ELL;
                if (v12 || (sub_1C96A7DE4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000011 && 0x80000001C96CC4E0 == a2;
                  if (v13 || (sub_1C96A7DE4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x80000001C96CC500 == a2;
                    if (v14 || (sub_1C96A7DE4() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6954646575737369 && a2 == 0xEA0000000000656DLL;
                      if (v15 || (sub_1C96A7DE4() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6954657269707865 && a2 == 0xEA0000000000656DLL;
                        if (v16 || (sub_1C96A7DE4() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000010 && 0x80000001C96CC520 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1C96A7DE4();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

uint64_t sub_1C9501F7C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 1702125924;
      break;
    case 3:
      result = 0x6465696669646F6DLL;
      break;
    case 4:
      result = 0x7069726373627573;
      break;
    case 5:
      result = 0x6163696669746F6ELL;
      break;
    case 6:
      result = 0x7472656C61;
      break;
    case 7:
      result = 0x6564497472656C61;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      v3 = 0x646575737369;
      goto LABEL_15;
    case 11:
      v3 = 0x657269707865;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C95020E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9501B80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C950210C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9501F74();
  *a1 = result;
  return result;
}

uint64_t sub_1C9502134(uint64_t a1)
{
  v2 = sub_1C95025E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9502170(uint64_t a1)
{
  v2 = sub_1C95025E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SevereNotificationEntity_006.encode(to:)()
{
  OUTLINED_FUNCTION_119();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4E20);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_59();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v6 = sub_1C95025E8();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_105();
  sub_1C96A7F54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_0_8();
  sub_1C9469CB4(v7, &qword_1EC3A4AD8);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_42_0();

  if (v6)
  {
    v8 = OUTLINED_FUNCTION_116();
    v9(v8);
  }

  else
  {
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_42_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
    OUTLINED_FUNCTION_0_8();
    sub_1C9469CB4(v10, &qword_1EC3A4D70);
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_69_0();
    sub_1C96A7D74();
    OUTLINED_FUNCTION_24_2(3);
    OUTLINED_FUNCTION_69_0();
    sub_1C96A7D74();
    OUTLINED_FUNCTION_24_2(4);
    OUTLINED_FUNCTION_62_0();
    sub_1C96A7D74();
    OUTLINED_FUNCTION_112();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D80);
    OUTLINED_FUNCTION_0_8();
    sub_1C9469CB4(v11, &qword_1EC3A4D80);
    OUTLINED_FUNCTION_35_0();
    sub_1C96A7D74();
    OUTLINED_FUNCTION_24_2(6);
    sub_1C96A7D74();
    OUTLINED_FUNCTION_24_2(7);
    OUTLINED_FUNCTION_62_0();
    sub_1C96A7D74();
    OUTLINED_FUNCTION_24_2(8);
    OUTLINED_FUNCTION_62_0();
    sub_1C96A7D74();
    OUTLINED_FUNCTION_24_2(9);
    OUTLINED_FUNCTION_62_0();
    sub_1C96A7D74();
    OUTLINED_FUNCTION_24_2(10);
    OUTLINED_FUNCTION_69_0();
    sub_1C96A7D74();
    OUTLINED_FUNCTION_24_2(11);
    OUTLINED_FUNCTION_69_0();
    sub_1C96A7D74();
    OUTLINED_FUNCTION_114();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D90);
    OUTLINED_FUNCTION_0_8();
    sub_1C9469CB4(v12, &qword_1EC3A4D90);
    OUTLINED_FUNCTION_35_0();
    sub_1C96A7D74();
    (*(v4 + 8))(v0);
  }

  OUTLINED_FUNCTION_118();
}

unint64_t sub_1C95025E8()
{
  result = qword_1EC3A4E28;
  if (!qword_1EC3A4E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4E28);
  }

  return result;
}

void SevereNotificationEntity_006.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_119();
  a19 = v22;
  a20 = v23;
  v180 = v20;
  v178 = v24;
  v173[0] = v25;
  v173[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4E30);
  OUTLINED_FUNCTION_1();
  v173[2] = v26;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_57(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D50);
  v30 = OUTLINED_FUNCTION_7(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_57(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D58);
  v34 = OUTLINED_FUNCTION_7(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_57(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v38 = OUTLINED_FUNCTION_7(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2();
  v41 = (v39 - v40);
  MEMORY[0x1EEE9AC00](v42);
  v44 = v173 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v46 = OUTLINED_FUNCTION_7(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_94_1();
  MEMORY[0x1EEE9AC00](v47);
  v49 = v173 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_27_3();
  v59 = sub_1C96A6344();
  OUTLINED_FUNCTION_106(v59, &v202);
  v193 = v49;
  OUTLINED_FUNCTION_3();
  v175 = v50;
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v50);
  v174 = v21;
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
  OUTLINED_FUNCTION_37_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v189 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v67 = *MEMORY[0x1E69D61F8];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  v70 = *(v69 + 104);
  v70(v44, v67, v68);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v68);
  v74 = OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v68);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v191 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v70(v44, v67, v68);
  v176 = v44;
  OUTLINED_FUNCTION_48();
  v183 = v68;
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v68);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v70(v41, v67, v68);
  v177 = v41;
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v68);
  OUTLINED_FUNCTION_65();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v190 = sub_1C96A6344();
  v84 = OUTLINED_FUNCTION_9_5(&a12);
  v85 = v175;
  __swift_storeEnumTagSinglePayload(v84, v86, v87, v175);
  v88 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v85);
  OUTLINED_FUNCTION_37_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_92();
  v188 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D78);
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D80);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v100 = sub_1C96A6344();
  OUTLINED_FUNCTION_106(v100, v206);
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v108);
  v173[1] = v99;
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v186 = sub_1C96A6344();
  v109 = OUTLINED_FUNCTION_9_5(&a12);
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v85);
  v112 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v85);
  OUTLINED_FUNCTION_37_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_92();
  v185 = sub_1C96A6344();
  v115 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v85);
  v118 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v118, v119, v120, v85);
  OUTLINED_FUNCTION_37_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_92();
  v184 = sub_1C96A6344();
  v121 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v85);
  v124 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v85);
  OUTLINED_FUNCTION_37_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_92();
  v127 = v178;
  v128 = sub_1C96A6344();
  v129 = OUTLINED_FUNCTION_9_5(&v196);
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v183);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v135);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v193 = sub_1C96A6344();
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v136, v137, v138, v139);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v140, v141, v142, v143);
  v175 = v77;
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v183 = sub_1C96A6344();
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D88);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v145, v146, v147, v148);
  v149 = OUTLINED_FUNCTION_9_5(&v201);
  __swift_storeEnumTagSinglePayload(v149, v150, v151, v144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D90);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v181 = sub_1C96A6344();
  v152 = v127[4];
  __swift_project_boxed_opaque_existential_1(v127, v127[3]);
  sub_1C95025E8();
  v153 = v180;
  sub_1C96A7F44();
  if (v153)
  {
    v154 = v128;
    v155 = v182;
    OUTLINED_FUNCTION_70();
    __swift_destroy_boxed_opaque_existential_1Tm(v127);
    v196 = v155;
    v197 = v152;
    v198 = v191;
    v199 = v190;
    v200 = v188;
    v201 = v187;
    OUTLINED_FUNCTION_64_0();
    v202 = v158;
    v203 = v157;
    v204 = v184;
    v205 = v154;
    OUTLINED_FUNCTION_100();
    v159 = &v201;
  }

  else
  {
    v180 = v128;
    LOBYTE(v194[0]) = 0;
    v156 = OUTLINED_FUNCTION_5(&qword_1EC3A4B18, &qword_1EC3A4AD8);
    sub_1C96A7CB4();

    v160 = v196;
    OUTLINED_FUNCTION_18_6(1);
    sub_1C96A7CB4();
    OUTLINED_FUNCTION_70();
    v182 = v156;

    v161 = v196;
    LOBYTE(v194[0]) = 2;
    v162 = OUTLINED_FUNCTION_5(&qword_1EC3A4E00, &qword_1EC3A4D70);
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_58_0();

    v191 = v196;
    OUTLINED_FUNCTION_18_6(3);
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_58_0();

    v190 = v196;
    OUTLINED_FUNCTION_18_6(4);
    OUTLINED_FUNCTION_54_1();
    OUTLINED_FUNCTION_58_0();
    v179 = v162;
    v189 = v161;

    v188 = v196;
    LOBYTE(v194[0]) = 5;
    OUTLINED_FUNCTION_5(&qword_1EC3A4E08, &qword_1EC3A4D80);
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_58_0();

    v187 = v196;
    OUTLINED_FUNCTION_18_6(6);
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_58_0();

    v186 = v196;
    OUTLINED_FUNCTION_18_6(7);
    OUTLINED_FUNCTION_54_1();
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_70();

    v185 = v196;
    OUTLINED_FUNCTION_18_6(8);
    OUTLINED_FUNCTION_54_1();
    OUTLINED_FUNCTION_58_0();

    v184 = v196;
    OUTLINED_FUNCTION_18_6(9);
    OUTLINED_FUNCTION_54_1();
    OUTLINED_FUNCTION_58_0();

    v163 = v196;
    OUTLINED_FUNCTION_18_6(10);
    OUTLINED_FUNCTION_58_0();

    v193 = v196;
    OUTLINED_FUNCTION_18_6(11);
    OUTLINED_FUNCTION_58_0();

    v183 = v196;
    v195 = 12;
    OUTLINED_FUNCTION_5(&qword_1EC3A4E10, &qword_1EC3A4D90);
    OUTLINED_FUNCTION_58_0();
    v164 = OUTLINED_FUNCTION_28_6();
    v165(v164);

    v192 = a10;
    v194[0] = v160;
    v166 = v189;
    v194[1] = v189;
    v167 = v191;
    v194[2] = v191;
    v168 = v190;
    v194[3] = v190;
    v169 = v188;
    v194[4] = v188;
    v170 = v187;
    v194[5] = v187;
    v194[6] = v186;
    v194[7] = v185;
    v194[8] = v184;
    v194[9] = v163;
    v194[10] = v193;
    v194[11] = v183;
    v194[12] = a10;
    memcpy(v173[0], v194, 0x68uLL);
    sub_1C95033BC(v194, &v196);
    __swift_destroy_boxed_opaque_existential_1Tm(v127);
    v196 = v160;
    v197 = v166;
    v198 = v167;
    v199 = v168;
    v200 = v169;
    v201 = v170;
    OUTLINED_FUNCTION_64_0();
    v202 = v172;
    v203 = v171;
    v204 = v184;
    v205 = v163;
    OUTLINED_FUNCTION_100();
    v159 = &a11;
  }

  v206[1] = *(v159 - 32);
  sub_1C950338C(&v196);
  OUTLINED_FUNCTION_118();
}

unint64_t sub_1C95033F8()
{
  result = qword_1EC3A4E38;
  if (!qword_1EC3A4E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4E38);
  }

  return result;
}

unint64_t sub_1C9503450()
{
  result = qword_1EDB7BA30;
  if (!qword_1EDB7BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BA30);
  }

  return result;
}

unint64_t sub_1C95034A8()
{
  result = qword_1EDB7BA48;
  if (!qword_1EDB7BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BA48);
  }

  return result;
}

unint64_t sub_1C95034FC()
{
  result = qword_1EDB7BA20;
  if (!qword_1EDB7BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BA20);
  }

  return result;
}

unint64_t sub_1C9503550()
{
  result = qword_1EDB7BA28;
  if (!qword_1EDB7BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BA28);
  }

  return result;
}

unint64_t sub_1C95035A8()
{
  result = qword_1EDB7BA40;
  if (!qword_1EDB7BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BA40);
  }

  return result;
}

unint64_t sub_1C9503600()
{
  result = qword_1EDB7BA38;
  if (!qword_1EDB7BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BA38);
  }

  return result;
}

unint64_t sub_1C9503658()
{
  result = qword_1EC3A4E40;
  if (!qword_1EC3A4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4E40);
  }

  return result;
}

unint64_t sub_1C95036B0()
{
  result = qword_1EC3A4E48;
  if (!qword_1EC3A4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4E48);
  }

  return result;
}

unint64_t sub_1C9503708()
{
  result = qword_1EC3A4E50;
  if (!qword_1EC3A4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4E50);
  }

  return result;
}

unint64_t sub_1C950375C()
{
  result = qword_1EC3A4E58;
  if (!qword_1EC3A4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4E58);
  }

  return result;
}

unint64_t sub_1C95037B4()
{
  result = qword_1EC3A4E60;
  if (!qword_1EC3A4E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4E60);
  }

  return result;
}

unint64_t sub_1C9503810()
{
  result = qword_1EC3A4E68;
  if (!qword_1EC3A4E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4E68);
  }

  return result;
}

uint64_t sub_1C9503864(uint64_t a1)
{
  v2 = sub_1C95041A4();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1C95038B0(uint64_t a1)
{
  v2 = sub_1C95041A4();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1C95038FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95041A4();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1C9503994(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C95041A4();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1C95039E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95041A4();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1C9503A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C95041A4();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1C9503AA0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C9503AE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SevereNotificationEntity.NotificationKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C9503C28(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C9503C68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SevereNotificationEntity_006.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SevereNotificationEntity_006.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SevereNotificationEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SevereNotificationEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9503F98()
{
  result = qword_1EC3A4E70;
  if (!qword_1EC3A4E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4E70);
  }

  return result;
}

unint64_t sub_1C9503FF0()
{
  result = qword_1EC3A4E78;
  if (!qword_1EC3A4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4E78);
  }

  return result;
}

unint64_t sub_1C9504048()
{
  result = qword_1EC3A4E80;
  if (!qword_1EC3A4E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4E80);
  }

  return result;
}

unint64_t sub_1C95040A0()
{
  result = qword_1EC3A4E88;
  if (!qword_1EC3A4E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4E88);
  }

  return result;
}

unint64_t sub_1C95040F8()
{
  result = qword_1EC3A4E90;
  if (!qword_1EC3A4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4E90);
  }

  return result;
}

unint64_t sub_1C9504150()
{
  result = qword_1EC3A4E98;
  if (!qword_1EC3A4E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4E98);
  }

  return result;
}

unint64_t sub_1C95041A4()
{
  result = qword_1EC3A4EA0;
  if (!qword_1EC3A4EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4EA0);
  }

  return result;
}

unint64_t sub_1C95041F8()
{
  result = qword_1EDB7BA50[0];
  if (!qword_1EDB7BA50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7BA50);
  }

  return result;
}

unint64_t sub_1C950424C()
{
  result = qword_1EC3A4EA8;
  if (!qword_1EC3A4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4EA8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_68()
{
  v1 = *(v0 - 344);
  *(v0 - 120) = *(v0 - 336);
  *(v0 - 112) = v1;
  *(v0 - 104) = *(v0 - 432);
}

void OUTLINED_FUNCTION_87()
{
  v1 = *(v0 - 416);
  *(v0 - 152) = *(v0 - 408);
  *(v0 - 144) = v1;
}

uint64_t OUTLINED_FUNCTION_89_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = a1;
  return v2 - 104;
}

uint64_t OUTLINED_FUNCTION_91@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = a1;
  return v2 - 104;
}

uint64_t OUTLINED_FUNCTION_97()
{

  return sub_1C96A3D04();
}

uint64_t OUTLINED_FUNCTION_98_0()
{

  return sub_1C96A6344();
}

void OUTLINED_FUNCTION_100()
{
  v1 = *(v0 - 392);
  *(v0 - 112) = *(v0 - 312);
  *(v0 - 104) = v1;
}

uint64_t OUTLINED_FUNCTION_110()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_120()
{

  return sub_1C96A6344();
}

uint64_t OUTLINED_FUNCTION_121()
{

  return sub_1C96A6344();
}

uint64_t OUTLINED_FUNCTION_122()
{

  return sub_1C96A3D04();
}

uint64_t OUTLINED_FUNCTION_123()
{

  return sub_1C96A6344();
}

void Date.hour(timeZone:formatStyle:)()
{
  OUTLINED_FUNCTION_103();
  v38 = v0;
  v34 = v2;
  v35 = v1;
  v3 = sub_1C96A4C14();
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v37 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4EC8);
  OUTLINED_FUNCTION_7(v7);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v32 - v9;
  OUTLINED_FUNCTION_15_4();
  v32 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  v15 = v14 - v13;
  v16 = sub_1C96A4914();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  v22 = v21 - v20;
  sub_1C96A4924();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14();
  v24 = sub_1C96A4944();
  OUTLINED_FUNCTION_1();
  v33 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14();
  v29 = v28 - v27;
  sub_1C96A4904();
  sub_1C96A48F4();
  (*(v18 + 8))(v22, v16);
  sub_1C96A48E4();
  v30 = OUTLINED_FUNCTION_12_7();
  v31(v30);
  (*(v11 + 16))(v15, v35, v32);
  sub_1C96A4934();
  sub_1C94B4748(&qword_1EDB7CC68, MEMORY[0x1E6969328]);
  sub_1C96A4A34();
  sub_1C96A53C4();
  sub_1C96A4B74();
  sub_1C9504A00();
  sub_1C96A4544();
  OUTLINED_FUNCTION_18_7();
  sub_1C96A79B4();
  (*(v33 + 8))(v29, v24);

  OUTLINED_FUNCTION_101();
}

unint64_t sub_1C9504A00()
{
  result = qword_1EDB7AB80;
  if (!qword_1EDB7AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7AB80);
  }

  return result;
}

uint64_t static FormatStyle<>.localizationHour(timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C96A4C24();
  v4 = *(type metadata accessor for Date.FormatStyle.HourFormatStyle() + 20);
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_6_3();
  v6 = *(v5 + 16);

  return v6(a2 + v4, a1);
}

uint64_t static FormatStyle<>.localizationHour(calendar:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C96A4D14();
  OUTLINED_FUNCTION_6_3();
  (*(v6 + 16))(a3, a1);
  v7 = *(type metadata accessor for Date.FormatStyle.HourFormatStyle() + 20);
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_6_3();
  v9 = *(v8 + 16);

  return v9(a3 + v7, a2);
}

id sub_1C9504B8C()
{
  result = sub_1C9504BAC();
  qword_1EC3A4EB0 = result;
  return result;
}

id sub_1C9504BAC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setDateStyle_];
  [v0 setTimeStyle_];
  [v0 setFormattingContext_];
  return v0;
}

uint64_t sub_1C9504C20()
{
  v0 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  result = sub_1C96A5124();
  qword_1EC3A4EB8 = result;
  return result;
}

id sub_1C9504CB4()
{
  result = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  qword_1EC3A4EC0 = result;
  return result;
}

uint64_t sub_1C9504CE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C96A7DE4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C9504DB8(char a1)
{
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](a1 & 1);
  return sub_1C96A7F24();
}

uint64_t sub_1C9504E00(char a1)
{
  if (a1)
  {
    return 0x656E6F5A656D6974;
  }

  else
  {
    return 0x7261646E656C6163;
  }
}

uint64_t sub_1C9504E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9504CE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9504E68(uint64_t a1)
{
  v2 = sub_1C9505C88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9504EA4(uint64_t a1)
{
  v2 = sub_1C9505C88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Date.FormatStyle.HourFormatStyle.format(_:)()
{
  OUTLINED_FUNCTION_103();
  v29[0] = v0;
  v2 = v1;
  v3 = sub_1C96A4CF4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v9 = v8 - v7;
  if (qword_1EC3A4620 != -1)
  {
    swift_once();
  }

  v10 = qword_1EC3A4628;
  v11 = qword_1EC3A4EB0;
  v12 = v11;
  if (v10 != -1)
  {
    v11 = swift_once();
  }

  v29[1] = qword_1EC3A4EB8;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v12;
  v14 = v29[0];
  v29[-4] = v12;
  v29[-3] = v14;
  v29[-2] = v2;
  sub_1C96A5134();
  sub_1C96A3D04();
  sub_1C96A5554();

  if (qword_1EC3A4630 != -1)
  {
    swift_once();
  }

  v15 = qword_1EC3A4EC0;
  OUTLINED_FUNCTION_18_7();
  v16 = sub_1C96A7004();
  v17 = [v15 numberFromString_];

  if (v17)
  {

    [v17 integerValue];
  }

  else
  {
    (*(v5 + 104))(v9, *MEMORY[0x1E6969A58], v3);
    v18 = sub_1C96A4D04();
    (*(v5 + 8))(v9, v3);
    v19 = v13;
    if (qword_1EC3A47C0 != -1)
    {
      swift_once();
    }

    v20 = sub_1C96A6154();
    __swift_project_value_buffer(v20, qword_1EC3A74A8);
    sub_1C96A53C4();
    v21 = sub_1C96A6134();
    v22 = sub_1C96A76A4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29[2] = v24;
      *v23 = 136446466;
      v25 = OUTLINED_FUNCTION_18_7();
      v28 = sub_1C9484164(v25, v26, v27);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2050;
      *(v23 + 14) = v18;
      _os_log_impl(&dword_1C945E000, v21, v22, "Failed to determine hour from string %{public}s. Using hour component from date (%{public}ld).", v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_101();
}

void sub_1C95052A8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Date.FormatStyle.HourFormatStyle();
  v4 = sub_1C96A4DA4();
  [a1 setTimeZone_];

  v5 = sub_1C96A4984();
  v6 = [a1 stringFromDate_];

  v7 = sub_1C96A7024();
  v9 = v8;

  *a2 = v7;
  a2[1] = v9;
}

uint64_t static Date.FormatStyle.HourFormatStyle.== infix(_:_:)()
{
  if (MEMORY[0x1CCA8A620]())
  {
    type metadata accessor for Date.FormatStyle.HourFormatStyle();

    JUMPOUT(0x1CCA8A750);
  }

  return 0;
}

uint64_t Date.FormatStyle.HourFormatStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4ED0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9505C88();
  sub_1C96A7F54();
  v14[15] = 0;
  sub_1C96A4D14();
  OUTLINED_FUNCTION_2_11();
  sub_1C94B4748(v9, v10);
  OUTLINED_FUNCTION_19_4();
  if (!v1)
  {
    type metadata accessor for Date.FormatStyle.HourFormatStyle();
    v14[14] = 1;
    sub_1C96A4DF4();
    OUTLINED_FUNCTION_1_9();
    sub_1C94B4748(v11, v12);
    OUTLINED_FUNCTION_19_4();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t Date.FormatStyle.HourFormatStyle.hash(into:)()
{
  sub_1C96A4D14();
  OUTLINED_FUNCTION_2_11();
  sub_1C94B4748(v0, v1);
  OUTLINED_FUNCTION_12_7();
  sub_1C96A6F34();
  type metadata accessor for Date.FormatStyle.HourFormatStyle();
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_1_9();
  sub_1C94B4748(v2, v3);
  OUTLINED_FUNCTION_12_7();
  return sub_1C96A6F34();
}

uint64_t Date.FormatStyle.HourFormatStyle.hashValue.getter()
{
  sub_1C96A7EE4();
  sub_1C96A4D14();
  OUTLINED_FUNCTION_2_11();
  sub_1C94B4748(v0, v1);
  sub_1C96A6F34();
  type metadata accessor for Date.FormatStyle.HourFormatStyle();
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_1_9();
  sub_1C94B4748(v2, v3);
  sub_1C96A6F34();
  return sub_1C96A7F24();
}

uint64_t Date.FormatStyle.HourFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_1();
  v25 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  v30 = sub_1C96A4D14();
  OUTLINED_FUNCTION_1();
  v27 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v29 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4EF0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_10();
  v14 = type metadata accessor for Date.FormatStyle.HourFormatStyle();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v17 = v16 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9505C88();
  sub_1C96A7F44();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  OUTLINED_FUNCTION_2_11();
  sub_1C94B4748(v18, v19);
  sub_1C96A7CB4();
  (*(v27 + 32))(v17, v29, v30);
  OUTLINED_FUNCTION_1_9();
  sub_1C94B4748(v20, v21);
  sub_1C96A7CB4();
  v22 = OUTLINED_FUNCTION_5_8();
  v23(v22);
  (*(v25 + 32))(v17 + *(v14 + 20), v8, v28);
  sub_1C9505CDC(v17, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1C9505D40(v17);
}

uint64_t sub_1C9505ADC()
{
  sub_1C96A7EE4();
  sub_1C96A4D14();
  sub_1C94B4748(&qword_1EC3A4EE8, MEMORY[0x1E6969AE8]);
  sub_1C96A6F34();
  sub_1C96A4DF4();
  sub_1C94B4748(&qword_1EDB7AAA0, MEMORY[0x1E6969BC0]);
  sub_1C96A6F34();
  return sub_1C96A7F24();
}

uint64_t sub_1C9505BC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for Date.FormatStyle.HourFormatStyle()
{
  result = qword_1EDB7AAE0;
  if (!qword_1EDB7AAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C9505C88()
{
  result = qword_1EC3A4ED8;
  if (!qword_1EC3A4ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4ED8);
  }

  return result;
}

uint64_t sub_1C9505CDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date.FormatStyle.HourFormatStyle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9505D40(uint64_t a1)
{
  v2 = type metadata accessor for Date.FormatStyle.HourFormatStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C9505EE4()
{
  result = sub_1C96A4D14();
  if (v1 <= 0x3F)
  {
    result = sub_1C96A4DF4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *_s15HourFormatStyleV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9506048()
{
  result = qword_1EC3A4F20;
  if (!qword_1EC3A4F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4F20);
  }

  return result;
}

unint64_t sub_1C95060A0()
{
  result = qword_1EC3A4F28;
  if (!qword_1EC3A4F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4F28);
  }

  return result;
}

unint64_t sub_1C95060F8()
{
  result = qword_1EC3A4F30;
  if (!qword_1EC3A4F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4F30);
  }

  return result;
}

uint64_t GeocodeStore.deinit()
{
  sub_1C96A3D04();
  sub_1C96A64A4();

  return v0;
}

uint64_t GeocodeStore.__deallocating_deinit()
{
  GeocodeStore.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t GeocodeStore.__allocating_init(database:)()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_9_0();
  GeocodeStore.init(database:)(v1);
  return v0;
}

uint64_t GeocodeStore.init(database:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1C94F2390();
  sub_1C96A3D04();
  v3 = sub_1C96A64B4();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 24) = v3;
    sub_1C96A3D04();
    sub_1C96A6324();

    sub_1C96A6374();
  }

  return v1;
}

uint64_t GeocodeStore.queryLocation(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B40);
  OUTLINED_FUNCTION_7(v8);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  OUTLINED_FUNCTION_7(v12);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  sub_1C96A6314();
  v34[3] = MEMORY[0x1E69E6158];
  v34[4] = MEMORY[0x1E69D62D8];
  v34[0] = a1;
  v34[1] = a2;
  sub_1C96A53C4();
  OUTLINED_FUNCTION_13_4();
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  v15 = sub_1C96A63E4();
  OUTLINED_FUNCTION_6_7(v15);
  if (v3)
  {

    sub_1C94DDC44(v4);
    v16 = OUTLINED_FUNCTION_4_10();
    v17(v16);
LABEL_3:
    if (qword_1EDB7CF88 != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v18 = sub_1C96A6154();
    __swift_project_value_buffer(v18, qword_1EDB7CF90);
    OUTLINED_FUNCTION_9_0();
    sub_1C96A53C4();
    v19 = sub_1C96A6134();
    v20 = sub_1C96A76A4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34[0] = v22;
      *(v21 + 14) = OUTLINED_FUNCTION_5_9(7.2225e-34);
      OUTLINED_FUNCTION_11_5(&dword_1C945E000, v23, v24, "No geocoded location found for key: %{private,mask.hash}s");
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    v25 = 1;
    goto LABEL_11;
  }

  sub_1C94DDC44(v4);
  v26 = OUTLINED_FUNCTION_4_10();
  v27(v26);
  v28 = v35;
  if (!v35)
  {
    goto LABEL_3;
  }

  sub_1C96A6354();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B48);
  result = __swift_getEnumTagSinglePayload(v11, 1, v29);
  if (result != 1)
  {
    sub_1C96A6294();
    sub_1C95075B0(v28);
    OUTLINED_FUNCTION_8_1();
    (*(v31 + 8))(v11, v29);
    v25 = 0;
LABEL_11:
    v32 = type metadata accessor for Location();
    return __swift_storeEnumTagSinglePayload(a3, v25, 1, v32);
  }

  __break(1u);
  return result;
}

uint64_t GeocodeStore.queryLocationAndTimeZoneIdentifier(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B40);
  OUTLINED_FUNCTION_7(v8);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  OUTLINED_FUNCTION_7(v12);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  sub_1C96A6314();
  v40 = MEMORY[0x1E69E6158];
  v41 = MEMORY[0x1E69D62D8];
  v38 = a1;
  v39 = a2;
  sub_1C96A53C4();
  OUTLINED_FUNCTION_13_4();
  __swift_destroy_boxed_opaque_existential_1Tm(&v38);
  v15 = sub_1C96A63E4();
  OUTLINED_FUNCTION_6_7(v15);
  if (v3)
  {

    sub_1C94DDC44(v4);
    v16 = OUTLINED_FUNCTION_4_10();
    v17(v16);
LABEL_3:
    if (qword_1EDB7CF88 != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v18 = sub_1C96A6154();
    __swift_project_value_buffer(v18, qword_1EDB7CF90);
    OUTLINED_FUNCTION_9_0();
    sub_1C96A53C4();
    v19 = sub_1C96A6134();
    v20 = sub_1C96A76A4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38 = v22;
      *(v21 + 14) = OUTLINED_FUNCTION_5_9(7.2225e-34);
      OUTLINED_FUNCTION_11_5(&dword_1C945E000, v23, v24, "No geocoded location found for key: %{private,mask.hash}s");
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F40);
    v26 = a3;
    v27 = 1;
    return __swift_storeEnumTagSinglePayload(v26, v27, 1, v25);
  }

  sub_1C94DDC44(v4);
  v28 = OUTLINED_FUNCTION_4_10();
  v29(v28);
  v30 = v42;
  if (!v42)
  {
    goto LABEL_3;
  }

  sub_1C96A6354();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B48);
  result = __swift_getEnumTagSinglePayload(v11, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1C96A6294();
    OUTLINED_FUNCTION_8_1();
    (*(v33 + 8))(v11, v31);
    result = sub_1C96A6354();
    v34 = v39;
    if (v39)
    {
      v35 = v38;
      sub_1C95075B0(v30);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F40);
      v36 = (a3 + *(v25 + 48));
      *v36 = v35;
      v36[1] = v34;
      v26 = a3;
      v27 = 0;
      return __swift_storeEnumTagSinglePayload(v26, v27, 1, v25);
    }
  }

  __break(1u);
  return result;
}

uint64_t GeocodeStore.saveLocation(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Location();
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v9 = v8 - v7;
  sub_1C96A6304();
  v10 = OUTLINED_FUNCTION_9_0();
  sub_1C9489760(v10, v9);
  sub_1C96A53C4();
  sub_1C94F0F78(a2, a3, v9, &v12);
  sub_1C96A62A4();
}

Swift::Void __swiftcall GeocodeStore.deleteLocation(for:)(Swift::String a1)
{
  sub_1C96A6334();
  sub_1C96A63A4();
}

uint64_t GeocodeStore.deleteAllLocations(satisfying:)()
{
  v0 = sub_1C96A6504();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  (*(v2 + 104))(v5 - v4, *MEMORY[0x1E69D62C0], v0);
  sub_1C96A6534();
  return (*(v2 + 8))(v6, v0);
}

void sub_1C9506CBC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v7 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v43 - v11;
  v13 = *(a1 + 24);
  sub_1C96A6314();
  v14 = sub_1C96A62B4();
  if (v3)
  {

    if (qword_1EDB7CF88 != -1)
    {
LABEL_26:
      swift_once();
    }

    v15 = sub_1C96A6154();
    __swift_project_value_buffer(v15, qword_1EDB7CF90);
    v16 = sub_1C96A6134();
    v17 = sub_1C96A76A4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1C945E000, v16, v17, "Failed to query all geocoded locations", v18, 2u);
      MEMORY[0x1CCA8E3D0](v18, -1, -1);
    }
  }

  else
  {
    v19 = v14;
    v48 = v9;
    v49 = a2;
    v50 = a3;
    v43[1] = v13;
    v45 = 0;

    v20 = 0;
    v54 = *(v19 + 16);
    v46 = MEMORY[0x1E69E7CC0];
    v47 = v19;
    v21 = v19 + 48;
    v44 = v19 + 48;
LABEL_7:
    v22 = (v21 + 24 * v20);
    while (v54 != v20)
    {
      if (v20 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      v23 = v20;
      v25 = *(v22 - 2);
      v24 = *(v22 - 1);
      v26 = *v22;
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A6354();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B48);
      if (__swift_getEnumTagSinglePayload(v12, 1, v27) == 1)
      {
        __break(1u);
        return;
      }

      v28 = v48;
      sub_1C96A6294();
      (*(*(v27 - 8) + 8))(v12, v27);
      v29 = v49(v28);
      sub_1C94DBDDC(v28);
      if (v29)
      {
        v30 = v46;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v30;
        v51 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C9522BB0(0, *(v30 + 16) + 1, 1);
          v32 = v51;
        }

        v33 = v23;
        v35 = *(v32 + 16);
        v34 = *(v32 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_1C9522BB0((v34 > 1), v35 + 1, 1);
          v33 = v23;
          v32 = v51;
        }

        v20 = v33 + 1;
        *(v32 + 16) = v35 + 1;
        v46 = v32;
        v36 = (v32 + 24 * v35);
        v36[4] = v25;
        v36[5] = v24;
        v36[6] = v26;
        v19 = v47;
        v21 = v44;
        goto LABEL_7;
      }

      v22 += 3;
      v20 = v23 + 1;
      v19 = v47;
    }

    v37 = *(v46 + 16);
    if (v37)
    {
      v38 = (v46 + 48);
      v39 = v45;
      do
      {
        v40 = *(v38 - 2);
        v41 = *(v38 - 1);
        v42 = *v38;
        sub_1C96A3D04();
        sub_1C96A3D04();
        sub_1C96A3D04();
        sub_1C96A6334();
        v51 = v40;
        v52 = v41;
        v53 = v42;
        sub_1C96A63D4();
        if (v39)
        {

          v39 = 0;
        }

        v38 += 3;
        --v37;
      }

      while (v37);
    }
  }
}

uint64_t sub_1C95071D8()
{
  v0 = sub_1C96A6154();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  v7 = sub_1C96A64D4();
  __swift_allocate_value_buffer(v7, qword_1EDB7FAC0);
  __swift_project_value_buffer(v7, qword_1EDB7FAC0);
  if (qword_1EDB7CF88 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EDB7CF90);
  (*(v2 + 16))(v6, v8, v0);
  sub_1C96A64C4();
  return (*(v2 + 8))(v6, v0);
}

uint64_t static GeocodeStore.location.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDB7FAB8 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v2 = sub_1C96A64D4();
  v3 = __swift_project_value_buffer(v2, qword_1EDB7FAC0);
  swift_beginAccess();
  OUTLINED_FUNCTION_8_1();
  return (*(v4 + 16))(a1, v3, v2);
}

uint64_t static GeocodeStore.location.setter(uint64_t a1)
{
  if (qword_1EDB7FAB8 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v2 = sub_1C96A64D4();
  v3 = __swift_project_value_buffer(v2, qword_1EDB7FAC0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static GeocodeStore.location.modify())()
{
  if (qword_1EDB7FAB8 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v0 = sub_1C96A64D4();
  __swift_project_value_buffer(v0, qword_1EDB7FAC0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static GeocodeStore.preferredCacheSize.getter@<X0>(void *a1@<X8>)
{
  *a1 = 32;
  v2 = *MEMORY[0x1E69D6298];
  sub_1C96A64E4();
  OUTLINED_FUNCTION_8_1();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1C95075B0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t static Settings.Beaufort.forceEnabled.getter()
{
  if (qword_1EDB80330 != -1)
  {
    swift_once();
  }

  return sub_1C96A3D04();
}

_BYTE *_s8BeaufortOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void *sub_1C95077F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a3;
  v76 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v75 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v73 = v8 - v7;
  v77 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_1();
  v72 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v74 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_2();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  MEMORY[0x1EEE9AC00](v20 - 8);
  OUTLINED_FUNCTION_2();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v68 - v25;
  v71 = type metadata accessor for LocationDataModel();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v68 - v34;
  if (!*(a2 + 16))
  {
    return sub_1C95086AC(a1, v78);
  }

  v36 = sub_1C9476F90(*a1, a1[1]);
  if ((v37 & 1) == 0)
  {
    return sub_1C95086AC(a1, v78);
  }

  sub_1C95086AC(*(a2 + 56) + *(v28 + 72) * v36, v32);
  sub_1C9508710(v32, v35);
  sub_1C9507E68(v26, v19, a1, v35);
  sub_1C9508774(v26, v23, &unk_1EC3A5F60);
  v38 = v77;
  if (__swift_getEnumTagSinglePayload(v23, 1, v77) == 1)
  {
    sub_1C94BE204(v19, &unk_1EC3A5430);
    sub_1C94BE204(v26, &unk_1EC3A5F60);
    v39 = v23;
    v40 = &unk_1EC3A5F60;
LABEL_8:
    sub_1C94BE204(v39, v40);
    return sub_1C9508710(v35, v78);
  }

  v42 = v72;
  v43 = v74;
  (*(v72 + 32))(v74, v23, v38);
  sub_1C9508774(v19, v16, &unk_1EC3A5430);
  v44 = v76;
  if (__swift_getEnumTagSinglePayload(v16, 1, v76) == 1)
  {
    (*(v42 + 8))(v43, v38);
    sub_1C94BE204(v19, &unk_1EC3A5430);
    sub_1C94BE204(v26, &unk_1EC3A5F60);
    v39 = v16;
    v40 = &unk_1EC3A5430;
    goto LABEL_8;
  }

  v68 = *(v75 + 32);
  v75 += 32;
  v68(v73, v16, v44);
  memcpy(__dst, v35, 0x48uLL);
  v45 = v71;
  v46 = v38;
  v47 = *(v71 + 20);
  v48 = v78;
  v49 = v74;
  (*(v42 + 16))(&v78[v47], v74, v46);
  __swift_storeEnumTagSinglePayload(&v48[v47], 0, 1, v46);
  sub_1C95087DC(__dst, v79);
  v70 = sub_1C96A4D74();
  v69 = v50;
  (*(v42 + 8))(v49, v46);
  sub_1C94BE204(v19, &unk_1EC3A5430);
  sub_1C94BE204(v26, &unk_1EC3A5F60);
  v51 = v45[7];
  v52 = v76;
  v68(&v48[v51], v73, v76);
  __swift_storeEnumTagSinglePayload(&v48[v51], 0, 1, v52);
  v53 = v45[9];
  v54 = &v35[v45[8]];
  v55 = *(v54 + 1);
  v75 = *v54;
  v56 = *&v35[v53 + 8];
  v77 = *&v35[v53];
  v57 = &v35[v45[10]];
  v58 = *v57;
  v59 = *(v57 + 1);
  v60 = &v35[v45[11]];
  v61 = *(v60 + 1);
  v74 = *v60;
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C9508838(v35);
  __swift_storeEnumTagSinglePayload(&v48[v45[12]], 1, 1, v52);
  result = memcpy(v48, __dst, 0x48uLL);
  v62 = &v48[v45[6]];
  v63 = v69;
  *v62 = v70;
  v62[1] = v63;
  v64 = &v48[v45[8]];
  *v64 = v75;
  *(v64 + 1) = v55;
  v65 = &v48[v45[9]];
  *v65 = v77;
  *(v65 + 1) = v56;
  v66 = &v48[v45[10]];
  *v66 = v58;
  *(v66 + 1) = v59;
  v67 = &v48[v45[11]];
  *v67 = v74;
  *(v67 + 1) = v61;
  return result;
}

uint64_t sub_1C9507E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v47 = a1;
  v48 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v10 = sub_1C96A4A54();
  v46 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v39 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v39 - v15;
  v17 = sub_1C96A4DF4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LocationDataModel();
  sub_1C9508774(a3 + *(v21 + 20), v16, &unk_1EC3A5F60);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    v22 = &unk_1EC3A5F60;
    v23 = v16;
LABEL_5:
    sub_1C94BE204(v23, v22);
    goto LABEL_6;
  }

  v24 = *(v18 + 32);
  v24(v20, v16, v17);
  sub_1C9508774(a3 + *(v21 + 28), v9, &unk_1EC3A5430);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    (*(v18 + 8))(v20, v17);
    v22 = &unk_1EC3A5430;
    v23 = v9;
    goto LABEL_5;
  }

  v41 = v24;
  v28 = v45;
  v29 = v9;
  v30 = *(v46 + 32);
  v30(v45, v29, v10);
  v31 = v44;
  sub_1C9508774(v42 + *(v21 + 28), v44, &unk_1EC3A5430);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v10);
  v40 = v30;
  if (EnumTagSinglePayload == 1)
  {
    v33 = v43;
    sub_1C96A4954();
    if (__swift_getEnumTagSinglePayload(v31, 1, v10) != 1)
    {
      sub_1C94BE204(v31, &unk_1EC3A5430);
    }
  }

  else
  {
    v33 = v43;
    v30(v43, v31, v10);
  }

  sub_1C9508894();
  v34 = v28;
  v35 = sub_1C96A6F64();
  v36 = v33;
  v37 = *(v46 + 8);
  v37(v36, v10);
  if ((v35 & 1) == 0)
  {
    v38 = v47;
    v41(v47, v20, v17);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v17);
    v26 = v48;
    v40(v48, v34, v10);
    v25 = 0;
    return __swift_storeEnumTagSinglePayload(v26, v25, 1, v10);
  }

  v37(v34, v10);
  (*(v18 + 8))(v20, v17);
LABEL_6:
  v25 = 1;
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v17);
  v26 = v48;
  return __swift_storeEnumTagSinglePayload(v26, v25, 1, v10);
}

uint64_t Collection<>.uniqueLocations.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  (*(v6 + 16))(v5 - v4, v1, a1);
  v7 = type metadata accessor for LocationDataModel();
  v8 = sub_1C96A7354();
  sub_1C9508658();
  v9 = sub_1C96A7204();
  if (sub_1C9554388(v9, v8))
  {
  }

  else
  {
    if (qword_1EDB7D010 != -1)
    {
      swift_once();
    }

    v10 = sub_1C96A6154();
    __swift_project_value_buffer(v10, qword_1EDB7D018);
    sub_1C96A53C4();
    sub_1C96A53C4();
    v11 = sub_1C96A6134();
    v12 = sub_1C96A76A4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23[0] = v14;
      *v13 = 141558787;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      v15 = MEMORY[0x1CCA8CC40](v8, v7);
      v17 = v16;

      v18 = sub_1C9484164(v15, v17, v23);

      *(v13 + 14) = v18;
      *(v13 + 22) = 2160;
      *(v13 + 24) = 1752392040;
      *(v13 + 32) = 2081;
      v19 = MEMORY[0x1CCA8CC40](v9, v7);
      v21 = sub_1C9484164(v19, v20, v23);

      *(v13 + 34) = v21;
      _os_log_impl(&dword_1C945E000, v11, v12, "Unique locations changed. Original locations=%{private,mask.hash}s. Unique locations=%{private,mask.hash}s", v13, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v14, -1, -1);
      MEMORY[0x1CCA8E3D0](v13, -1, -1);
    }

    else
    {
    }
  }

  return v9;
}

unint64_t sub_1C9508658()
{
  result = qword_1EC3A60F0;
  if (!qword_1EC3A60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A60F0);
  }

  return result;
}

uint64_t sub_1C95086AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationDataModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9508710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationDataModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9508774(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C9508838(uint64_t a1)
{
  v2 = type metadata accessor for LocationDataModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C9508894()
{
  result = qword_1EDB7CC60;
  if (!qword_1EDB7CC60)
  {
    sub_1C96A4A54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CC60);
  }

  return result;
}

uint64_t CoreRoutineDataManagerError.hashValue.getter()
{
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](0);
  return sub_1C96A7F24();
}

uint64_t sub_1C9508990()
{
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](0);
  return sub_1C96A7F24();
}

uint64_t MockHomeAndWorkLocation.locationsOfInterest.getter()
{
  result = *v0;
  switch(*v0)
  {
    case 1:
      sub_1C9495720();
      sub_1C96A6F04();
      OUTLINED_FUNCTION_8_3();
      OUTLINED_FUNCTION_4_11();
      OUTLINED_FUNCTION_16_7();
      OUTLINED_FUNCTION_7_7();
      v66 = 0xD000000000000029;
      v67 = v4;
      v5 = 0xD000000000000019;
      goto LABEL_5;
    case 2:
      sub_1C9495720();
      sub_1C96A6F04();
      OUTLINED_FUNCTION_8_3();
      OUTLINED_FUNCTION_4_11();
      OUTLINED_FUNCTION_16_7();
      OUTLINED_FUNCTION_7_7();
      v66 = 0xD000000000000026;
      v67 = v17;
      v5 = 0xD00000000000001BLL;
LABEL_5:
      v68 = v5;
      v69 = v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_3_3(isUniquelyReferenced_nonNull_native, v19, v20, v21, v22, v23, v24, v25, v49, v51, v52, v53, v54, *(&v54 + 1));
      v14 = v54;
      OUTLINED_FUNCTION_8_3();
      v54 = xmmword_1C96ABC40;
      v55 = v1;
      v56 = 0xD000000000000032;
      v57 = v26;
      v15 = 0x80000001C96CC780;
      v58 = 0xD000000000000025;
      v59 = 0x80000001C96CC730;
      v16 = 0xD00000000000001ALL;
      goto LABEL_8;
    case 3:
      sub_1C9495720();
      sub_1C96A6F04();
      OUTLINED_FUNCTION_8_3();
      OUTLINED_FUNCTION_4_11();
      v62 = xmmword_1C96ABC50;
      v63 = 0;
      OUTLINED_FUNCTION_7_7();
      v66 = 0xD000000000000029;
      v67 = v27;
      v68 = 0xD000000000000019;
      v69 = v28;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_3_3(v29, v30, v31, v32, v33, v34, v35, v36, v49, v51, v52, v53, v54, *(&v54 + 1));
      v14 = v54;
      OUTLINED_FUNCTION_8_3();
      v54 = xmmword_1C96ABC40;
      v55 = 0;
      v56 = 0xD000000000000032;
      v57 = v37;
      v15 = 0x80000001C96CC760;
      v58 = 0xD000000000000025;
      v59 = 0x80000001C96CC730;
      v16 = 0xD000000000000018;
      goto LABEL_8;
    case 4:
      sub_1C9495720();
      sub_1C96A6F04();
      LOBYTE(v52) = 0;
      v62 = xmmword_1C96ABC40;
      v63 = 256;
      v64 = 0xD000000000000032;
      v65 = 0x80000001C96CC6F0;
      v66 = 0xD000000000000025;
      v67 = 0x80000001C96CC730;
      v68 = 0xD000000000000018;
      v69 = 0x80000001C96CC760;
      v6 = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_3_3(v6, v7, v8, v9, v10, v11, v12, v13, 0x4042AA7EF9DB22D1, 0xC05E81EB851EB852, v52, v53, v54, *(&v54 + 1));
      v14 = v54;
      v15 = 0x80000001C96CC780;
      v54 = v50;
      v55 = 256;
      v56 = 0xD000000000000032;
      v57 = 0x80000001C96CC6F0;
      v58 = 0xD000000000000025;
      v59 = 0x80000001C96CC730;
      v16 = 0xD00000000000001ALL;
      goto LABEL_8;
    case 5:
      sub_1C9495720();
      sub_1C96A6F04();
      OUTLINED_FUNCTION_8_3();
      OUTLINED_FUNCTION_4_11();
      OUTLINED_FUNCTION_16_7();
      OUTLINED_FUNCTION_7_7();
      v66 = 0xD00000000000002BLL;
      v67 = v38;
      v68 = 0xD00000000000001CLL;
      v69 = v39;
      v40 = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_3_3(v40, v41, v42, v43, v44, v45, v46, v47, v49, v51, v52, v53, v54, *(&v54 + 1));
      v14 = v54;
      OUTLINED_FUNCTION_8_3();
      v54 = xmmword_1C96ABC30;
      v55 = v1;
      v56 = 0xD000000000000035;
      v57 = v48;
      v15 = 0x80000001C96CC6D0;
      v58 = 0xD000000000000028;
      v59 = 0x80000001C96CC6A0;
      v16 = 0xD000000000000017;
LABEL_8:
      v60 = v16;
      v61 = v15;
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C950B5B8(&v54, 1);
      result = v14;
      break;
    default:
      return result;
  }

  return result;
}

WeatherCore::MockHomeAndWorkLocation_optional __swiftcall MockHomeAndWorkLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MockHomeAndWorkLocation.rawValue.getter()
{
  result = 1701736302;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C9509000@<X0>(unint64_t *a1@<X8>)
{
  result = MockHomeAndWorkLocation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C95090D8(uint64_t a1)
{
  v2 = sub_1C950C560();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1C950912C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C950C560();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1C9509188(uint64_t a1)
{
  v2 = sub_1C950C560();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t CoreRoutineDataManager.__allocating_init(locationManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CoreRoutineDataManager.init(locationManager:)(a1);
  return v2;
}

uint64_t CoreRoutineDataManager.init(locationManager:)(uint64_t a1)
{
  *(v1 + 16) = [objc_opt_self() defaultManager];
  sub_1C949B26C(a1, (v1 + 24));
  return v1;
}

uint64_t CoreRoutineDataManager.fetchLocationOfInterest(locationOfInterestType:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 520) = a1;
  *(v3 + 528) = v2;
  *(v3 + 536) = *v2;
  *(v3 + 570) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1C95092C4, 0, 0);
}

uint64_t sub_1C95092C4(uint64_t a1, uint64_t a2)
{
  v36 = v2;
  if (qword_1EDB7AA28 != -1)
  {
    swift_once();
  }

  sub_1C950CA28(&qword_1EDB7A618, a2, type metadata accessor for CoreRoutineDataManager);
  sub_1C96A4E44();
  v3 = MockHomeAndWorkLocation.locationsOfInterest.getter();
  if (v3)
  {
    v4 = v3;
    if (*(v3 + 16) && (v5 = sub_1C949E2BC(*(v2 + 570)), (v6 & 1) != 0))
    {
      memcpy((v2 + 376), (*(v4 + 56) + 72 * v5), 0x48uLL);
      sub_1C950B77C(v2 + 376, v2 + 448);

      memcpy((v2 + 88), (v2 + 376), 0x48uLL);
    }

    else
    {

      *(v2 + 152) = 0;
      *(v2 + 136) = 0u;
      *(v2 + 120) = 0u;
      *(v2 + 104) = 0u;
      *(v2 + 88) = 0u;
    }

    if (qword_1EDB77E58 != -1)
    {
      OUTLINED_FUNCTION_1_11();
    }

    v7 = sub_1C96A6154();
    __swift_project_value_buffer(v7, qword_1EDB77E60);
    sub_1C950B70C(v2 + 88, v2 + 160);
    v8 = sub_1C96A6134();
    v9 = sub_1C96A76A4();
    sub_1C94BE204(v2 + 88, &qword_1EC3A4F48);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v2 + 570);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35 = v12;
      *v11 = 136446723;
      if (v10)
      {
        v13 = 1802661751;
      }

      else
      {
        v13 = 1701670760;
      }

      v14 = sub_1C9484164(v13, 0xE400000000000000, &v35);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2160;
      *(v11 + 14) = 1752392040;
      *(v11 + 22) = 2081;
      memcpy((v2 + 232), (v2 + 88), 0x48uLL);
      sub_1C950B70C(v2 + 88, v2 + 304);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F48);
      v15 = sub_1C96A70A4();
      v17 = sub_1C9484164(v15, v16, &v35);

      *(v11 + 24) = v17;
      _os_log_impl(&dword_1C945E000, v8, v9, "Returns mocked location for type = %{public}s, with location = %{private,mask.hash}s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v12, -1, -1);
      MEMORY[0x1CCA8E3D0](v11, -1, -1);
    }

    memcpy(*(v2 + 520), (v2 + 88), 0x48uLL);
    goto LABEL_33;
  }

  v18 = *(v2 + 528);
  v19 = v18[6];
  v20 = v18[7];
  __swift_project_boxed_opaque_existential_1(v18 + 3, v19);
  if ((*(v20 + 24))(v19, v20) - 3 > 1)
  {
    if (qword_1EDB77E58 != -1)
    {
      OUTLINED_FUNCTION_1_11();
    }

    v26 = sub_1C96A6154();
    __swift_project_value_buffer(v26, qword_1EDB77E60);
    v27 = sub_1C96A6134();
    v28 = sub_1C96A76A4();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_32;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "No location permissions - not getting locations of interest";
    goto LABEL_31;
  }

  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EDB7AA60 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  if (*(v2 + 569) != 1)
  {
    if (qword_1EDB77E58 != -1)
    {
      OUTLINED_FUNCTION_1_11();
    }

    v31 = sub_1C96A6154();
    __swift_project_value_buffer(v31, qword_1EDB77E60);
    v27 = sub_1C96A6134();
    v28 = sub_1C96A76A4();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_32;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Home and work setting is not enabled";
LABEL_31:
    _os_log_impl(&dword_1C945E000, v27, v28, v30, v29, 2u);
    MEMORY[0x1CCA8E3D0](v29, -1, -1);
LABEL_32:
    v32 = *(v2 + 520);

    *(v32 + 64) = 0;
    *(v32 + 32) = 0u;
    *(v32 + 48) = 0u;
    *v32 = 0u;
    *(v32 + 16) = 0u;
LABEL_33:
    OUTLINED_FUNCTION_17();

    return v33();
  }

  v21 = *(v2 + 570);
  v22 = *(v2 + 528);
  v23 = swift_task_alloc();
  *(v2 + 544) = v23;
  *(v23 + 16) = v22;
  *(v23 + 24) = v21;
  v24 = swift_task_alloc();
  *(v2 + 552) = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F48);
  *v24 = v2;
  v24[1] = sub_1C95098DC;

  return MEMORY[0x1EEE6DE38](v2 + 16, 0, 0, 0xD000000000000030, 0x80000001C96CC8C0, sub_1C950B704, v23, v25);
}

uint64_t sub_1C95098DC()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_15();
  *v3 = v2;
  *(v4 + 560) = v0;

  if (v0)
  {
    v5 = sub_1C9509A54;
  }

  else
  {
    v5 = sub_1C95099E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C95099E4()
{
  OUTLINED_FUNCTION_18();
  memcpy(*(v0 + 520), (v0 + 16), 0x48uLL);

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_1C9509A54()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_17();

  return v0();
}

void sub_1C9509AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F98);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  v10 = *(a2 + 16);
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v7 + 32))(v13 + v12, v9, v6);
  aBlock[4] = sub_1C950CAD0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C950AD44;
  aBlock[3] = &block_descriptor_0;
  v14 = _Block_copy(aBlock);

  [v10 fetchLocationsOfInterestOfType:a3 withHandler:v14];
  _Block_release(v14);
}

void sub_1C9509C9C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    if (qword_1EDB77E58 != -1)
    {
      swift_once();
    }

    v17 = sub_1C96A6154();
    __swift_project_value_buffer(v17, qword_1EDB77E60);
    v18 = sub_1C96A6134();
    v19 = sub_1C96A7684();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C945E000, v18, v19, "Failed to fetch locations of interest due to self is deinit", v20, 2u);
      MEMORY[0x1CCA8E3D0](v20, -1, -1);
    }

LABEL_12:
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F98);
    sub_1C96A7394();
    return;
  }

  if (a2)
  {
    v4 = a2;
    if (qword_1EDB77E58 != -1)
    {
      goto LABEL_57;
    }

    goto LABEL_4;
  }

  if (!a1)
  {
    goto LABEL_12;
  }

  v21 = sub_1C946D04C(a1);
  v22 = 0;
  a2 = 0;
  v23 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v21 == v22)
    {
      for (i = 0; v21 != i; ++i)
      {
        if (v23)
        {
          v27 = MEMORY[0x1CCA8D440](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v27 = *(a1 + 8 * i + 32);
        }

        v28 = v27;
        if (__OFADD__(i, 1))
        {
          goto LABEL_55;
        }

        if (sub_1C950A5C0())
        {
          goto LABEL_32;
        }
      }

      v28 = 0;
LABEL_32:
      v29 = 0;
      *&v40[0] = MEMORY[0x1E69E7CC0];
      while (v21 != v29)
      {
        if (v23)
        {
          v30 = MEMORY[0x1CCA8D440](v29, a1);
        }

        else
        {
          if (v29 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

          v30 = *(a1 + 8 * v29 + 32);
        }

        v31 = v30;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_53;
        }

        if (sub_1C950A608())
        {
          sub_1C96A7B14();
          sub_1C96A7B34();
          sub_1C96A7B44();
          sub_1C96A7B24();
        }

        else
        {
        }

        ++v29;
      }

      v32 = v28;
      v33 = sub_1C96A3D04();
      *&v40[0] = sub_1C950DA3C(v33);
      sub_1C950CB60(v40, v28);

      v34 = *&v40[0];
      if (sub_1C946D04C(*&v40[0]))
      {
        sub_1C95AE200(0, (v34 & 0xC000000000000001) == 0, v34);
        if ((v34 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x1CCA8D440](0, v34);
        }

        else
        {
          v35 = *(v34 + 32);
        }

        v36 = v35;

        v37 = v36;
        if (v36)
        {
          goto LABEL_50;
        }
      }

      else
      {
      }

      v38 = v32;
      v36 = 0;
      v37 = v28;
LABEL_50:
      v39 = v36;
      sub_1C950A9D4(v37, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F98);
      sub_1C96A7394();

      return;
    }

    if (v23)
    {
      v24 = MEMORY[0x1CCA8D440](v22, a1);
    }

    else
    {
      if (v22 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v24 = *(a1 + 8 * v22 + 32);
    }

    v25 = v24;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    *&v40[0] = v24;
    sub_1C950A24C(v40);

    ++v22;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  swift_once();
LABEL_4:
  v5 = sub_1C96A6154();
  __swift_project_value_buffer(v5, qword_1EDB77E60);
  v6 = a2;
  v7 = sub_1C96A6134();
  v8 = sub_1C96A7684();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v40[0] = v11;
    *v9 = 136446466;
    swift_getErrorValue();
    v12 = sub_1C96A7E64();
    v14 = sub_1C9484164(v12, v13, v40);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = a2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_1C945E000, v7, v8, "Failed to fetch locations of interest. error=%{public}s %@", v9, 0x16u);
    sub_1C94BE204(v10, &qword_1EC3A5410);
    MEMORY[0x1CCA8E3D0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1CCA8E3D0](v11, -1, -1);
    MEMORY[0x1CCA8E3D0](v9, -1, -1);
  }

  *&v40[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F98);
  sub_1C96A7384();
}

void sub_1C950A24C(void **a1)
{
  v1 = *a1;
  if (qword_1EDB77E58 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB77E60);
  v3 = v1;
  v4 = sub_1C96A6134();
  v5 = sub_1C96A7674();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v6 = 141558787;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    v7 = v3;
    v8 = [v7 description];
    v27 = v5;
    v9 = sub_1C96A7024();
    v11 = v10;

    v12 = sub_1C9484164(v9, v11, &v29);

    *(v6 + 14) = v12;
    *(v6 + 22) = 2160;
    *(v6 + 24) = 1752392040;
    *(v6 + 32) = 2081;
    [v7 type];
    v13 = sub_1C96A7DB4();
    v15 = sub_1C9484164(v13, v14, &v29);

    *(v6 + 34) = v15;
    _os_log_impl(&dword_1C945E000, v4, v27, "Location of interest from coreroutine: %{private,mask.hash}s, with source type :%{private,mask.hash}s", v6, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v28, -1, -1);
    MEMORY[0x1CCA8E3D0](v6, -1, -1);
  }

  if (([v3 typeSource] & 0x10) != 0 && (objc_msgSend(v3, sel_typeSource) & 1) == 0)
  {
    v16 = v3;
    v17 = sub_1C96A6134();
    v18 = sub_1C96A7684();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 141558275;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      v21 = v16;
      v22 = [v21 description];
      v23 = sub_1C96A7024();
      v25 = v24;

      v26 = sub_1C9484164(v23, v25, &v29);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_1C945E000, v17, v18, "Location of interest source contains user but not contains me card:%{private,mask.hash}s", v19, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1CCA8E3D0](v20, -1, -1);
      MEMORY[0x1CCA8E3D0](v19, -1, -1);
    }
  }
}

unint64_t sub_1C950A5C0()
{
  if (([v0 typeSource] & 2) != 0)
  {
    return 1;
  }

  else
  {
    return ([v0 typeSource] >> 5) & 1;
  }
}

unint64_t sub_1C950A608()
{
  if ([v0 typeSource])
  {
    return 1;
  }

  else
  {
    return ([v0 typeSource] >> 4) & 1;
  }
}

uint64_t sub_1C950A650(void *a1)
{
  v3 = sub_1C96A4A54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v22 - v9;
  v11 = [a1 visits];
  sub_1C946B5D0(0, &qword_1EC3A4FA0);
  v12 = sub_1C96A72A4();

  v13 = sub_1C9605B30(v12);

  if (v13)
  {
    v14 = [v1 visits];
    v15 = sub_1C96A72A4();

    v16 = sub_1C9605B30(v15);

    if (v16)
    {
      v17 = [v16 exitDate];
      sub_1C96A4A04();

      v18 = [v13 exitDate];
      sub_1C96A4A04();

      v19 = sub_1C96A4994();
      v20 = *(v4 + 8);
      v20(v6, v3);
      v20(v10, v3);
    }

    else
    {

      v19 = 0;
    }
  }

  else
  {
    v19 = 1;
  }

  return v19 & 1;
}

BOOL sub_1C950A878(void *a1)
{
  v3 = [v1 location];
  [v3 latitude];
  v5 = v4;

  v6 = [v1 location];
  [v6 longitude];
  v8 = v7;

  v9 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v5 longitude:v8];
  v10 = [a1 location];
  [v10 latitude];
  v12 = v11;

  v13 = [a1 location];
  [v13 longitude];
  v15 = v14;

  v16 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v12 longitude:v15];
  [v9 distanceFromLocation_];
  v18 = v17;

  return v18 < 1000.0;
}

void sub_1C950A9D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v3 = a1;
  v4 = [v3 mapItem];
  v5 = [v4 address];

  v6 = [v5 geoAddressObject];
  if (v6)
  {
    v7 = sub_1C950D9CC(v6);
    v9 = v8;
    if (v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
  }

  if (qword_1EDB77E58 != -1)
  {
    swift_once();
  }

  v10 = sub_1C96A6154();
  __swift_project_value_buffer(v10, qword_1EDB77E60);
  v11 = sub_1C96A6134();
  v12 = sub_1C96A7684();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C945E000, v11, v12, "searchDisplayAddress is nil", v13, 2u);
    MEMORY[0x1CCA8E3D0](v13, -1, -1);
  }

  v9 = 0;
LABEL_12:
  v14 = [v3 location];
  [v14 latitude];
  v16 = v15;
  [v14 longitude];
  v18 = v17;

  v19 = sub_1C950A608();
  v20 = [v3 mapItem];
  v21 = [v20 address];

  v22 = [v21 geoAddressObject];
  if (v22)
  {
    v23 = [v22 fullAddressWithMultiline_];

    if (v23)
    {
      v22 = sub_1C96A7024();
      v25 = v24;
    }

    else
    {
      v22 = 0;
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = [v3 mapItem];
  v27 = [v26 address];

  v28 = [v27 geoAddressObject];
  if (!v28)
  {
    goto LABEL_21;
  }

  v29 = [v28 fullAddressNoCurrentCountryWithMultiline_];

  if (!v29)
  {
    v28 = 0;
LABEL_21:
    v31 = 0;
    goto LABEL_22;
  }

  v28 = sub_1C96A7024();
  v31 = v30;

LABEL_22:
  if (v9)
  {
    v32 = v7;
  }

  else
  {
    v32 = 0;
  }

  v33 = 0xE000000000000000;
  if (v9)
  {
    v33 = v9;
  }

  *a2 = v16;
  *(a2 + 8) = v18;
  *(a2 + 16) = 0;
  *(a2 + 17) = v19 & 1;
  *(a2 + 24) = v22;
  *(a2 + 32) = v25;
  *(a2 + 40) = v28;
  *(a2 + 48) = v31;
  *(a2 + 56) = v32;
  *(a2 + 64) = v33;
}

uint64_t sub_1C950AD44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1C946B5D0(0, &qword_1EDB77CD8);
    v4 = sub_1C96A72A4();
  }

  sub_1C96A3D04();
  v6 = a3;
  v5(v4, a3);
}

uint64_t CoreRoutineDataManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1C950AE50(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C950AEFC;

  return CoreRoutineDataManager.fetchLocationOfInterest(locationOfInterestType:)(a1, a2);
}

uint64_t sub_1C950AEFC()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_1C950AFE0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1C946B5D0(0, &qword_1EDB77CD8);
      result = sub_1C96A7304();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

unint64_t sub_1C950B04C(uint64_t a1)
{
  v2 = sub_1C96A7ED4();

  return sub_1C950C208(a1, v2);
}

unint64_t sub_1C950B090()
{
  OUTLINED_FUNCTION_25_5();
  sub_1C96A7B74();
  sub_1C96A6F24();
  v0 = OUTLINED_FUNCTION_26_1();

  return sub_1C950C268(v0, v1);
}

unint64_t sub_1C950B0E4()
{
  sub_1C96A7A14();
  v0 = OUTLINED_FUNCTION_26_1();

  return sub_1C950C3EC(v0, v1);
}

unint64_t sub_1C950B124()
{
  OUTLINED_FUNCTION_25_5();
  sub_1C96A4C14();
  sub_1C950CA28(&qword_1EDB80048, 255, MEMORY[0x1E6969770]);
  sub_1C96A6F24();
  v0 = OUTLINED_FUNCTION_26_1();

  return sub_1C950C5B4(v0, v1);
}

unint64_t sub_1C950B1B0(double a1, double a2)
{
  OUTLINED_FUNCTION_21_6();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x1CCA8D8A0](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x1CCA8D8A0](*&v5);
  v6 = sub_1C96A7F24();

  return sub_1C950C774(v6, a1, a2);
}

unint64_t sub_1C950B240(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C96A7EE4();
  Location.Identifier.hash(into:)();
  v2 = sub_1C96A7F24();

  return sub_1C950C7EC(__src, v2);
}

unint64_t sub_1C950B2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_21_6();
  sub_1C96A7144();
  OUTLINED_FUNCTION_23_6();
  sub_1C96A7144();
  v8 = sub_1C96A7F24();

  return sub_1C950C8D0(a1, a2, a3, a4, v8);
}

__n128 *sub_1C950B354()
{
  OUTLINED_FUNCTION_30_1();
  v3 = v2;
  v6 = OUTLINED_FUNCTION_5_10(v4, v5);
  sub_1C9476F90(v6, v7);
  OUTLINED_FUNCTION_0_10();
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C38);
  if ((OUTLINED_FUNCTION_2_12() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = OUTLINED_FUNCTION_27_4();
  v14 = sub_1C9476F90(v13, v3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1C96A7E44();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(*(*v1 + 56) + 32 * v11);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_20_4();

    return sub_1C94DED24(v16, v17);
  }

  else
  {
    OUTLINED_FUNCTION_23_6();
    sub_1C96497C0(v20, v21, v22, v0, v23);
    OUTLINED_FUNCTION_20_4();

    return sub_1C96A53C4();
  }
}

void sub_1C950B460()
{
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_13_5();
  sub_1C96A7B74();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_9_6();
  sub_1C950B090();
  OUTLINED_FUNCTION_0_10();
  if (v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v2;
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4FB0);
  if ((OUTLINED_FUNCTION_2_12() & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = sub_1C950B090();
  if ((v6 & 1) != (v8 & 1))
  {
LABEL_11:
    sub_1C96A7E44();
    __break(1u);
    return;
  }

  v5 = v7;
LABEL_5:
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(*(*v0 + 56) + 32 * v5);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_101();

    sub_1C94DED24(v9, v10);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_22_4();
    v13(v12);
    v14 = OUTLINED_FUNCTION_24_3();
    sub_1C9649804(v14, v15, v16, v17);
    OUTLINED_FUNCTION_101();
  }
}

void sub_1C950B5B8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1C949E2BC(a2 & 1);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4FA8);
  if ((sub_1C96A7B84() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1C949E2BC(a2 & 1);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    sub_1C96A7E44();
    __break(1u);
    return;
  }

  v9 = v11;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    v14 = *(v13 + 56) + 72 * v9;

    sub_1C950DAD0(a1, v14);
  }

  else
  {

    sub_1C9649898(v9, a2 & 1, a1, v13);
  }
}

uint64_t sub_1C950B70C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C950B7B8()
{
  result = qword_1EC3A4F50;
  if (!qword_1EC3A4F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4F50);
  }

  return result;
}

unint64_t sub_1C950B80C()
{
  result = qword_1EDB79690;
  if (!qword_1EDB79690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79690);
  }

  return result;
}

uint64_t dispatch thunk of CoreRoutineDataManagerType.fetchLocationOfInterest(locationOfInterestType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C950AEFC;

  return v11(a1, a2, a3, a4);
}

_BYTE *storeEnumTagSinglePayload for CoreRoutineDataManagerError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C950BA40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MockHomeAndWorkLocation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C950BB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_1();
  v13 = v12;
  v15 = OUTLINED_FUNCTION_5_10(v14, v12);
  sub_1C950B04C(v15);
  OUTLINED_FUNCTION_0_10();
  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = v16;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F88);
  if ((OUTLINED_FUNCTION_29_0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = sub_1C950B04C(v13);
  if ((v20 & 1) != (v22 & 1))
  {
LABEL_13:
    result = sub_1C96A7E44();
    __break(1u);
    return result;
  }

  v19 = v21;
LABEL_5:
  if (v20)
  {
    *(*(*v11 + 56) + 8 * v19) = v10;
    OUTLINED_FUNCTION_20_4();
  }

  else
  {
    OUTLINED_FUNCTION_22_4();
    OUTLINED_FUNCTION_20_4();

    return sub_1C96498F0(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
  }
}

uint64_t sub_1C950BC88()
{
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_10_5(v4, v5, v6);
  OUTLINED_FUNCTION_0_10();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_1C96A7E44();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F58);
  if (OUTLINED_FUNCTION_2_12())
  {
    v12 = OUTLINED_FUNCTION_27_4();
    sub_1C9476F90(v12, v0);
    OUTLINED_FUNCTION_14_6();
    if (!v14)
    {
      goto LABEL_14;
    }

    v10 = v13;
  }

  if (v11)
  {
    OUTLINED_FUNCTION_20_4();

    return sub_1C950C1AC(v15, v16);
  }

  else
  {
    sub_1C96498F4(v10, v2, v0, v1, *v3);
    OUTLINED_FUNCTION_20_4();

    return sub_1C96A53C4();
  }
}

uint64_t sub_1C950BD74()
{
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_10_5(v4, v5, v6);
  OUTLINED_FUNCTION_0_10();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F90);
  if ((OUTLINED_FUNCTION_2_12() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = OUTLINED_FUNCTION_27_4();
  v13 = sub_1C9476F90(v12, v0);
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1C96A7E44();
    __break(1u);
    return result;
  }

  v10 = v13;
LABEL_5:
  v15 = *v3;
  if (v11)
  {
    *(*(v15 + 56) + 8 * v10) = v1;
    OUTLINED_FUNCTION_20_4();
  }

  else
  {
    sub_1C964993C(v10, v2, v0, v1, v15);
    OUTLINED_FUNCTION_20_4();

    return sub_1C96A53C4();
  }
}

uint64_t sub_1C950BE64()
{
  OUTLINED_FUNCTION_30_1();
  v2 = v1;
  v5 = OUTLINED_FUNCTION_5_10(v3, v4);
  sub_1C9476F90(v5, v6);
  OUTLINED_FUNCTION_0_10();
  if (v8)
  {
    __break(1u);
LABEL_13:
    result = sub_1C96A7E44();
    __break(1u);
    return result;
  }

  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F80);
  if (OUTLINED_FUNCTION_2_12())
  {
    v10 = OUTLINED_FUNCTION_27_4();
    sub_1C9476F90(v10, v2);
    OUTLINED_FUNCTION_14_6();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v9)
  {
    type metadata accessor for Location();
    OUTLINED_FUNCTION_20_4();

    return sub_1C950CA6C(v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_23_6();
    sub_1C9649970(v16, v17, v18, v0, v19);
    OUTLINED_FUNCTION_20_4();

    return sub_1C96A53C4();
  }
}

void sub_1C950BF7C()
{
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_13_5();
  sub_1C96A4C14();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_9_6();
  sub_1C950B124();
  OUTLINED_FUNCTION_0_10();
  if (v2)
  {
    __break(1u);
LABEL_10:
    sub_1C96A7E44();
    __break(1u);
    return;
  }

  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F78);
  if (OUTLINED_FUNCTION_2_12())
  {
    sub_1C950B124();
    if ((v3 & 1) != (v4 & 1))
    {
      goto LABEL_10;
    }
  }

  if (v3)
  {
    OUTLINED_FUNCTION_101();

    sub_1C950C9CC(v5, v6);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_22_4();
    v9(v8);
    v10 = OUTLINED_FUNCTION_24_3();
    sub_1C96499F4(v10, v11, v12, v13);
    OUTLINED_FUNCTION_101();
  }
}

void sub_1C950C0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_1();
  v13 = v12;
  v15 = OUTLINED_FUNCTION_5_10(v14, v12);
  sub_1C950B04C(v15);
  OUTLINED_FUNCTION_0_10();
  if (v18)
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v16;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F68);
  if ((OUTLINED_FUNCTION_29_0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = sub_1C950B04C(v13);
  if ((v20 & 1) != (v22 & 1))
  {
LABEL_11:
    sub_1C96A7E44();
    __break(1u);
    return;
  }

  v19 = v21;
LABEL_5:
  if (v20)
  {
    *(*(*v11 + 56) + 8 * v19) = v10;
    OUTLINED_FUNCTION_20_4();
  }

  else
  {
    OUTLINED_FUNCTION_22_4();
    OUTLINED_FUNCTION_20_4();

    sub_1C96498F0(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

unint64_t sub_1C950C208(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1C950C268(uint64_t a1, uint64_t a2)
{
  v12[1] = a1;
  v4 = sub_1C96A7B74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2;
  v14 = v2 + 64;
  v8 = ~(-1 << *(v2 + 32));
  for (i = a2 & v8; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v8)
  {
    (*(v5 + 16))(v7, *(v13 + 48) + *(v5 + 72) * i, v4);
    v10 = sub_1C96A6F94();
    (*(v5 + 8))(v7, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C950C3EC(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1C950C4B0(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1CCA8D3B0](v8, a1);
    sub_1C950C50C(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C950C560()
{
  result = qword_1EDB79688;
  if (!qword_1EDB79688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79688);
  }

  return result;
}

unint64_t sub_1C950C5B4(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_1C96A4C14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1C950CA28(&qword_1EDB80040, 255, MEMORY[0x1E6969770]);
    v9 = sub_1C96A6F94();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C950C774(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C950C7EC(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(a1 + 56);
    v9 = *(a1 + 64);
    v11 = *(v2 + 48);
    do
    {
      v12 = v11 + 72 * v5;
      v14 = *(v12 + 32);
      v13 = *(v12 + 40);
      v15 = *(v12 + 56) == v10 && *(v12 + 64) == v9;
      if (v15 || (sub_1C96A7DE4()) && v14 == v7 && v13 == v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C950C8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1C96A7DE4() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_1C96A7DE4() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

uint64_t sub_1C950CA28(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_26_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C950CA6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C950CAD0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F98);

  sub_1C9509C9C(a1, a2);
}

void sub_1C950CB60(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1C964B150(v4);
    *a1 = v4;
  }

  v7 = *(v4 + 16);
  v9[0] = v4 + 32;
  v9[1] = v7;
  v8 = v5;
  sub_1C950CC0C(v9, a2);
  sub_1C96A7B24();
}

void sub_1C950CC0C(uint64_t *a1, void *a2)
{
  v5 = a1[1];
  v6 = a2;
  v7 = sub_1C96A7DA4();
  if (v7 < v5)
  {
    v8 = v7;
    v9 = sub_1C950AFE0(v5 / 2);
    v11[0] = v10;
    v11[1] = (v5 / 2);
    v6 = v6;
    sub_1C950CE74(v11, v12, a1, v8, a2);
    if (v2)
    {
      if (v5 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v5 < -1)
    {
LABEL_13:
      __break(1u);
      return;
    }

    *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v5)
  {
    sub_1C950CD30(0, v5, 1, a1, a2);
  }

  else
  {
  }
}

void sub_1C950CD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
    while (2)
    {
      v23 = a3;
      v9 = *(v6 + 8 * a3);
      v21 = v8;
      v22 = v7;
      do
      {
        v10 = *v7;
        v11 = v9;
        v12 = v10;
        v13 = v12;
        if (a5)
        {
          v14 = a5;
          v15 = sub_1C950A878(v14);
          if ((v15 ^ sub_1C950A878(v14)))
          {

            if (!v15)
            {
              break;
            }
          }

          else
          {
            v17 = sub_1C950A650(v13);

            if ((v17 & 1) == 0)
            {
              break;
            }
          }
        }

        else
        {
          v16 = sub_1C950A650(v12);

          if ((v16 & 1) == 0)
          {
            break;
          }
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v18 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v18;
        v7 -= 8;
      }

      while (!__CFADD__(v8++, 1));
      a3 = v23 + 1;
      v7 = v22 + 8;
      v8 = v21 - 1;
      if (v23 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C950CE74(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v5 = a5;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v127 = a5;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      v119 = v8;
      if (v7 + 1 < v6)
      {
        v11 = *a3;
        v12 = *(*a3 + 8 * v10);
        v13 = *(*a3 + 8 * v7);
        v123 = (v7 + 1);
        v116 = v6;
        if (v5)
        {
          v14 = v127;
          v15 = v12;
          v16 = v13;
          LODWORD(v117) = sub_1C950A878(v14);
          if (((v117 ^ sub_1C950A878(v14)) & 1) == 0)
          {
            LODWORD(v117) = sub_1C950A650(v16);
          }

          v6 = v116;
        }

        else
        {
          v16 = v12;
          v14 = v13;
          LODWORD(v117) = sub_1C950A650(v14);
        }

        v17 = v11 + 8 * v9;
        v113 = v9;
        v18 = 8 * v9;
        v19 = (v17 + 16);
        v20 = v18 + 8;
        v5 = a5;
        do
        {
          v21 = v123;
          v22 = v20;
          if (++v123 >= v6)
          {
            break;
          }

          v23 = *(v19 - 1);
          v24 = *v19;
          if (v5)
          {
            v25 = v127;
            v26 = v24;
            v27 = v23;
            LODWORD(v24) = sub_1C950A878(v25);
            if (((v24 ^ sub_1C950A878(v25)) & 1) == 0)
            {
              LOBYTE(v24) = sub_1C950A650(v27);
            }

            v8 = v119;
          }

          else
          {
            v27 = v24;
            v25 = v23;
            LOBYTE(v24) = sub_1C950A650(v25);
          }

          v28 = v24 & 1;
          ++v19;
          v20 = v22 + 8;
          v5 = a5;
          v6 = v116;
        }

        while ((v117 & 1) == v28);
        if (v117)
        {
          if (v123 < v113)
          {
            goto LABEL_137;
          }

          if (v113 >= v123)
          {
            v10 = v123;
            v9 = v113;
            goto LABEL_27;
          }

          v29 = v113;
          do
          {
            if (v29 != v21)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_144;
              }

              v31 = *(v30 + v18);
              *(v30 + v18) = *(v30 + v22);
              *(v30 + v22) = v31;
            }

            ++v29;
            v22 -= 8;
            v18 += 8;
          }

          while (v29 < v21--);
        }

        v10 = v123;
        v9 = v113;
      }

LABEL_27:
      v33 = a3[1];
      if (v10 < v33)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_136;
        }

        if (v10 - v9 < a4)
        {
          v34 = (v9 + a4);
          if (__OFADD__(v9, a4))
          {
            goto LABEL_138;
          }

          if (v34 >= v33)
          {
            v34 = a3[1];
          }

          if (v34 >= v9)
          {
            if (v10 == v34)
            {
              goto LABEL_49;
            }

            v35 = *a3;
            v36 = *a3 + 8 * v10 - 8;
            v114 = v9;
            v37 = v9 - v10;
            v116 = v34;
LABEL_36:
            v124 = v10;
            v38 = *(v35 + 8 * v10);
            v39 = v37;
            v117 = v36;
            v40 = v36;
            while (1)
            {
              v41 = *v40;
              if (v5)
              {
                v42 = v127;
                v43 = v38;
                v44 = v41;
                v45 = sub_1C950A878(v42);
                if ((v45 ^ sub_1C950A878(v42)))
                {

                  v5 = a5;
                  if (!v45)
                  {
                    goto LABEL_47;
                  }
                }

                else
                {
                  v49 = sub_1C950A650(v44);

                  v5 = a5;
                  if ((v49 & 1) == 0)
                  {
                    goto LABEL_47;
                  }
                }
              }

              else
              {
                v46 = v38;
                v47 = v41;
                v48 = sub_1C950A650(v47);

                if ((v48 & 1) == 0)
                {
                  goto LABEL_47;
                }
              }

              if (!v35)
              {
                break;
              }

              v50 = *v40;
              v38 = *(v40 + 8);
              *v40 = v38;
              *(v40 + 8) = v50;
              v40 -= 8;
              if (__CFADD__(v39++, 1))
              {
LABEL_47:
                v10 = v124 + 1;
                v36 = v117 + 8;
                --v37;
                if ((v124 + 1) == v116)
                {
                  v10 = v116;
                  v8 = v119;
                  v9 = v114;
                  goto LABEL_49;
                }

                goto LABEL_36;
              }
            }

            __break(1u);
LABEL_142:

            __break(1u);
LABEL_143:

            __break(1u);
LABEL_144:

            __break(1u);
LABEL_145:

            __break(1u);
            goto LABEL_146;
          }

LABEL_139:
          __break(1u);
LABEL_140:
          v8 = sub_1C964ACF8(v8);
          goto LABEL_105;
        }
      }

LABEL_49:
      if (v10 < v9)
      {
        goto LABEL_135;
      }

      v125 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C94FB33C();
        v8 = v99;
      }

      v52 = *(v8 + 2);
      v53 = v52 + 1;
      if (v52 >= *(v8 + 3) >> 1)
      {
        sub_1C94FB33C();
        v8 = v100;
      }

      *(v8 + 2) = v53;
      v54 = v8 + 32;
      v55 = &v8[16 * v52 + 32];
      *v55 = v9;
      *(v55 + 1) = v125;
      v117 = *a1;
      if (!*a1)
      {
        goto LABEL_145;
      }

      if (v52)
      {
        v116 = v8 + 32;
        v120 = v8;
        while (1)
        {
          v56 = v53 - 1;
          v57 = &v54[16 * v53 - 16];
          v58 = &v8[16 * v53];
          if (v53 >= 4)
          {
            break;
          }

          if (v53 == 3)
          {
            v59 = *(v8 + 4);
            v60 = *(v8 + 5);
            v69 = __OFSUB__(v60, v59);
            v61 = v60 - v59;
            v62 = v69;
LABEL_70:
            if (v62)
            {
              goto LABEL_122;
            }

            v74 = *v58;
            v73 = *(v58 + 1);
            v75 = __OFSUB__(v73, v74);
            v76 = v73 - v74;
            v77 = v75;
            if (v75)
            {
              goto LABEL_125;
            }

            v78 = *(v57 + 1);
            v79 = v78 - *v57;
            if (__OFSUB__(v78, *v57))
            {
              goto LABEL_128;
            }

            if (__OFADD__(v76, v79))
            {
              goto LABEL_130;
            }

            if (v76 + v79 >= v61)
            {
              if (v61 < v79)
              {
                v56 = v53 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v53 < 2)
          {
            goto LABEL_124;
          }

          v81 = *v58;
          v80 = *(v58 + 1);
          v69 = __OFSUB__(v80, v81);
          v76 = v80 - v81;
          v77 = v69;
LABEL_85:
          if (v77)
          {
            goto LABEL_127;
          }

          v83 = *v57;
          v82 = *(v57 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_129;
          }

          if (v84 < v76)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v56 - 1 >= v53)
          {
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
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
            goto LABEL_139;
          }

          v88 = *a3;
          if (!*a3)
          {
            goto LABEL_142;
          }

          v89 = &v54[16 * v56 - 16];
          v90 = *v89;
          v91 = v56;
          v92 = &v54[16 * v56];
          v93 = *(v92 + 1);
          v94 = (v88 + 8 * *v89);
          v95 = (v88 + 8 * *v92);
          v96 = (v88 + 8 * v93);
          v97 = v127;
          sub_1C950D6C4(v94, v95, v96, v117, a5);
          if (v122)
          {

            goto LABEL_115;
          }

          v8 = v120;
          if (v93 < v90)
          {
            goto LABEL_117;
          }

          v98 = *(v120 + 2);
          if (v91 > v98)
          {
            goto LABEL_118;
          }

          *v89 = v90;
          *(v89 + 1) = v93;
          if (v91 >= v98)
          {
            goto LABEL_119;
          }

          v122 = 0;
          v53 = v98 - 1;
          sub_1C964AD0C(v92 + 16, v98 - 1 - v91, v92);
          *(v120 + 2) = v98 - 1;
          v5 = a5;
          v54 = v116;
          if (v98 <= 2)
          {
            goto LABEL_99;
          }
        }

        v63 = &v54[16 * v53];
        v64 = *(v63 - 8);
        v65 = *(v63 - 7);
        v69 = __OFSUB__(v65, v64);
        v66 = v65 - v64;
        if (v69)
        {
          goto LABEL_120;
        }

        v68 = *(v63 - 6);
        v67 = *(v63 - 5);
        v69 = __OFSUB__(v67, v68);
        v61 = v67 - v68;
        v62 = v69;
        if (v69)
        {
          goto LABEL_121;
        }

        v70 = *(v58 + 1);
        v71 = v70 - *v58;
        if (__OFSUB__(v70, *v58))
        {
          goto LABEL_123;
        }

        v69 = __OFADD__(v61, v71);
        v72 = v61 + v71;
        if (v69)
        {
          goto LABEL_126;
        }

        if (v72 >= v66)
        {
          v86 = *v57;
          v85 = *(v57 + 1);
          v69 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v69)
          {
            goto LABEL_134;
          }

          if (v61 < v87)
          {
            v56 = v53 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      v7 = v125;
      if (v125 >= v6)
      {
        goto LABEL_103;
      }
    }
  }

  v101 = a5;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_103:
  v116 = *a1;
  if (!*a1)
  {
LABEL_146:

    __break(1u);
    return;
  }

  v117 = v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_140;
  }

LABEL_105:
  v103 = v8 + 16;
  v102 = *(v8 + 2);
  for (i = v8; ; v8 = i)
  {
    v5 = (v102 - 2);
    if (v102 < 2)
    {

      return;
    }

    v104 = *a3;
    if (!*a3)
    {
      goto LABEL_143;
    }

    v105 = &v8[16 * v102];
    v106 = *v105;
    v8 = v103;
    v107 = &v103[16 * v102];
    v108 = *(v107 + 1);
    v126 = (v104 + 8 * *v107);
    v127 = (v104 + 8 * *v105);
    v109 = (v104 + 8 * v108);
    v110 = v117;
    sub_1C950D6C4(v127, v126, v109, v116, a5);
    if (v122)
    {
      break;
    }

    if (v108 < v106)
    {
      goto LABEL_131;
    }

    if (v5 >= *v8)
    {
      goto LABEL_132;
    }

    v103 = v8;
    *v105 = v106;
    *(v105 + 1) = v108;
    v111 = *v8 - v102;
    if (*v8 < v102)
    {
      goto LABEL_133;
    }

    v122 = 0;
    v102 = *v8 - 1;
    sub_1C964AD0C(v107 + 16, v111, v107);
    *v8 = v102;
  }

LABEL_115:
}

uint64_t sub_1C950D6C4(char *a1, char *a2, id *a3, char *a4, void *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 8;
  v10 = (a3 - a2) / 8;
  if (v9 < v10)
  {
    sub_1C9524AD0(a1, (a2 - a1) / 8, a4);
    v11 = &v5[v9];
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_37;
      }

      v13 = v8;
      v48 = v7;
      v14 = v5;
      v15 = *v5;
      v16 = *v7;
      v17 = v15;
      v18 = v17;
      if (a5)
      {
        v19 = a5;
        v20 = sub_1C950A878(v19);
        if ((v20 ^ sub_1C950A878(v19)))
        {

          if (!v20)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v24 = sub_1C950A650(v18);

          if ((v24 & 1) == 0)
          {
LABEL_15:
            v22 = v14;
            v5 = v14 + 1;
            v23 = v13;
            v7 = v48;
            if (v13 == v14)
            {
              goto LABEL_17;
            }

LABEL_16:
            *v23 = *v22;
            goto LABEL_17;
          }
        }
      }

      else
      {
        v21 = sub_1C950A650(v17);

        if ((v21 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v22 = v48;
      v7 = v48 + 1;
      v23 = v13;
      v5 = v14;
      if (v13 != v48)
      {
        goto LABEL_16;
      }

LABEL_17:
      v8 = (v23 + 1);
    }
  }

  sub_1C9524AD0(a2, (a3 - a2) / 8, a4);
  v11 = &v5[v10];
  v45 = v8;
LABEL_19:
  v25 = v7 - 1;
  v26 = v6;
  v49 = v7 - 1;
  v46 = v7;
  while (v11 > v5 && v7 > v8)
  {
    v29 = v11 - 1;
    v28 = *(v11 - 1);
    v30 = *v25;
    if (a5)
    {
      v31 = v5;
      v32 = a5;
      v33 = v28;
      v34 = v30;
      v35 = sub_1C950A878(v32);
      if ((v35 ^ sub_1C950A878(v32)))
      {

        v6 = v26 - 1;
        v5 = v31;
        if (v35)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v39 = sub_1C950A650(v34);

        v6 = v26 - 1;
        v5 = v31;
        if (v39)
        {
LABEL_34:
          v8 = v45;
          v7 = v49;
          if (v26 != v46)
          {
            *v6 = *v49;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
      v36 = v28;
      v37 = v30;
      v38 = sub_1C950A650(v37);

      v6 = v26 - 1;
      if (v38)
      {
        goto LABEL_34;
      }
    }

    v40 = v11 == v26;
    v26 = v6;
    --v11;
    v8 = v45;
    v7 = v46;
    v25 = v49;
    if (!v40)
    {
      *v6 = *v29;
      v26 = v6;
      v11 = v29;
    }
  }

LABEL_37:
  v41 = a5;
  v42 = v11 - v5;
  if (v7 != v5 || v7 >= &v5[v42])
  {
    memmove(v7, v5, 8 * v42);
    v41 = a5;
  }

  return 1;
}

uint64_t sub_1C950D9CC(void *a1)
{
  v2 = [a1 aboveDoorShortAddress];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C96A7024();

  return v3;
}

uint64_t sub_1C950DA3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1C96A7BB4();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1C94FBD98(v4, 0);
      sub_1C964AE38((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t NotificationsConfiguration.learnMoreURL.getter()
{
  v1 = *(v0 + 24);
  sub_1C96A53C4();
  return v1;
}

uint64_t NotificationsConfiguration.cloudChannelsConfiguration.getter()
{
  v1 = *(v0 + 40);
  sub_1C96A53C4();
  return v1;
}

void __swiftcall NotificationsConfiguration.init(changingConditionInterval:reschedulingInterval:backoffTimerInterval:learnMoreURL:cloudChannelsConfiguration:channelSubscriptionLimit:primaryPrecipitationChanceThreshold:secondaryPrecipitationChanceThreshold:precipitationIntensityThreshold:precipitationChanceIntensityMultipleThreshold:currentLocationEquivalenceDistance:maximumLocationCityEquivalenceDistance:)(WeatherCore::NotificationsConfiguration *__return_ptr retstr, Swift::Double_optional changingConditionInterval, Swift::Double_optional reschedulingInterval, Swift::Double_optional backoffTimerInterval, Swift::String_optional learnMoreURL, Swift::String_optional cloudChannelsConfiguration, Swift::UInt_optional channelSubscriptionLimit, Swift::Double_optional primaryPrecipitationChanceThreshold, Swift::Double_optional secondaryPrecipitationChanceThreshold, Swift::Double_optional precipitationIntensityThreshold, Swift::Double_optional precipitationChanceIntensityMultipleThreshold, Swift::Double_optional currentLocationEquivalenceDistance, Swift::Double_optional maximumLocationCityEquivalenceDistance)
{
  value = 0x80000001C96CC960;
  object = 0xD000000000000022;
  if (channelSubscriptionLimit.value)
  {
    object = cloudChannelsConfiguration.value._object;
    value = channelSubscriptionLimit.value;
  }

  v29 = value;
  v30 = object;
  if (cloudChannelsConfiguration.value._countAndFlagsBits)
  {
    v16 = 2700.0;
  }

  else
  {
    v16 = *&learnMoreURL.value._object;
  }

  if (learnMoreURL.value._countAndFlagsBits)
  {
    v17 = 900.0;
  }

  else
  {
    v17 = *&backoffTimerInterval.is_nil;
  }

  if (reschedulingInterval.is_nil)
  {
    v18 = 900.0;
  }

  else
  {
    v18 = *&changingConditionInterval.is_nil;
  }

  v19 = sub_1C9479EAC(*&channelSubscriptionLimit.is_nil, *&maximumLocationCityEquivalenceDistance.value);
  v21 = v20;

  v22 = 0.1;
  v23 = 50;
  if ((v31 & 1) == 0)
  {
    v23 = *&maximumLocationCityEquivalenceDistance.is_nil;
  }

  if ((v33 & 1) == 0)
  {
    v22 = v32;
  }

  v24 = 0.25;
  if ((v35 & 1) == 0)
  {
    v24 = v34;
  }

  if (v37)
  {
    v25 = 0.49;
  }

  else
  {
    v25 = v36;
  }

  v26 = v38;
  if (v39)
  {
    v26 = 0.15;
  }

  v27 = v40;
  if (v41)
  {
    v27 = 10000.0;
  }

  v28 = v42;
  if (v43)
  {
    v28 = 80000.0;
  }

  retstr->changingConditionInterval = v18;
  retstr->reschedulingInterval = v17;
  retstr->backoffTimerInterval = v16;
  retstr->learnMoreURL.value._countAndFlagsBits = v30;
  retstr->learnMoreURL.value._object = v29;
  retstr->cloudChannelsConfiguration.value._countAndFlagsBits = v19;
  retstr->cloudChannelsConfiguration.value._object = v21;
  retstr->channelSubscriptionLimit = v23;
  retstr->primaryPrecipitationChanceThreshold = v22;
  retstr->secondaryPrecipitationChanceThreshold = v24;
  retstr->precipitationIntensityThreshold = v25;
  retstr->precipitationChanceIntensityMultipleThreshold = v26;
  retstr->currentLocationEquivalenceDistance = v27;
  retstr->maximumLocationCityEquivalenceDistance = v28;
}

void NotificationsConfiguration.encode(to:)()
{
  OUTLINED_FUNCTION_7_8();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4FC0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - v8;
  v10 = v0[3];
  v20 = v0[4];
  v21 = v10;
  v11 = v0[5];
  v18[0] = v0[6];
  v18[1] = v0[7];
  v19 = v11;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C9481230();
  sub_1C96A7F54();
  LOBYTE(v23) = 0;
  v12 = v4;
  v13 = v9;
  sub_1C96A7D44();
  if (v1)
  {
    (*(v6 + 8))(v9, v4);
  }

  else
  {
    v15 = v20;
    v14 = v21;
    v16 = v19;
    v17 = v18[0];
    OUTLINED_FUNCTION_1_12(1);
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_1_12(2);
    OUTLINED_FUNCTION_3_4();
    v23 = v14;
    v24 = v15;
    v22 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6430);
    sub_1C948A00C();
    OUTLINED_FUNCTION_2_13();
    v23 = v16;
    v24 = v17;
    v22 = 4;
    OUTLINED_FUNCTION_2_13();
    LOBYTE(v23) = 5;
    sub_1C96A7D64();
    OUTLINED_FUNCTION_1_12(6);
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_1_12(7);
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_1_12(8);
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_1_12(9);
    OUTLINED_FUNCTION_3_4();
    (*(v6 + 8))(v13, v12);
  }

  OUTLINED_FUNCTION_8_9();
}

uint64_t sub_1C950DFE4()
{
  v0 = sub_1C96A7BE4();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C950E05C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C950DFE4();
  *a1 = result;
  return result;
}

unint64_t sub_1C950E08C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C9481284(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C950E0B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C950E030();
  *a1 = result;
  return result;
}

uint64_t sub_1C950E0E0(uint64_t a1)
{
  v2 = sub_1C9481230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C950E11C(uint64_t a1)
{
  v2 = sub_1C9481230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C950E174(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1C950E1CC()
{
  result = qword_1EC3A4FC8;
  if (!qword_1EC3A4FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4FC8);
  }

  return result;
}

uint64_t sub_1C950E220(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5000);
    v2 = sub_1C96A7BD4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;
  sub_1C96A3D04();
  result = sub_1C96A53C4();
  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1C9484328(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;
    sub_1C96A53C4();
    swift_dynamicCast();
    sub_1C946306C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1C946306C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1C946306C(v31, v32);
    result = sub_1C96A7A14();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_1C946306C(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1C950E4E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5000);
    v2 = sub_1C96A7BD4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;
  sub_1C96A3D04();
  result = sub_1C96A53C4();
  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;
    sub_1C96A53C4();
    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1C946306C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1C946306C(v29, v30);
    result = sub_1C96A7A14();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_1C946306C(v30, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1C950E794(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;
  result = sub_1C96A53C4();
  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a4 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = v15[1];
      v17[0] = *v15;
      v17[1] = v16;
      sub_1C96A53C4();
      a2(&v18, v17);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v18;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t SevereNotificationsPowerLogger.__allocating_init(notificationStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SevereNotificationsPowerLogger.init(notificationStore:)(a1);
  return v2;
}

uint64_t SevereNotificationsPowerLogger.init(notificationStore:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  v11 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v17 = v16 - v15;
  v18 = sub_1C96A4A54();
  MEMORY[0x1EEE9AC00](v18 - 8);
  OUTLINED_FUNCTION_14();
  sub_1C96A4954();
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v11, qword_1EDB80028);
  (*(v13 + 16))(v17, v19, v11);
  (*(v6 + 104))(v10, *MEMORY[0x1E69D6E88], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4FD0);
  swift_allocObject();
  v20 = sub_1C96A4F74();
  *(v2 + 16) = a1;
  *(v2 + 24) = v20;
  return v2;
}

Swift::Void __swiftcall SevereNotificationsPowerLogger.report()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v127 = v113 - v3;
  v4 = sub_1C96A61C4();
  OUTLINED_FUNCTION_1();
  v128 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  i = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v113 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v113 - v17;
  v19 = v0[3];
  OUTLINED_FUNCTION_1_13();
  sub_1C9510C78(v20, v21, v22);
  v126 = v19;
  v131 = v0;
  sub_1C96A4E44();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  sub_1C96A4964();
  v24 = v23;
  v25 = *(v9 + 8);
  v25(v15, i);
  if (v24 <= 21600.0)
  {
    goto LABEL_8;
  }

  v120 = v15;
  v130 = v25;
  v129 = v9 + 8;
  if (qword_1EDB7AC88 != -1)
  {
    goto LABEL_52;
  }

LABEL_3:
  v26 = sub_1C96A6154();
  v27 = __swift_project_value_buffer(v26, qword_1EDB7AC90);
  v28 = *(v9 + 16);
  v9 += 16;
  v122 = v28;
  v28(v12, v18, i);
  v125 = v27;
  v29 = sub_1C96A6134();
  v30 = sub_1C96A76A4();
  v31 = os_log_type_enabled(v29, v30);
  v119 = v1;
  if (v31)
  {
    v32 = OUTLINED_FUNCTION_9_8();
    v124 = v4;
    v33 = v32;
    v34 = OUTLINED_FUNCTION_8_4();
    v121 = v18;
    v35 = v34;
    v133 = v34;
    *v33 = 136446210;
    sub_1C9510C78(&qword_1EDB7CC50, 255, MEMORY[0x1E6969530]);
    v36 = sub_1C96A7DB4();
    v1 = i;
    v38 = v37;
    OUTLINED_FUNCTION_6_9();
    v39();
    v40 = sub_1C9484164(v36, v38, &v133);
    i = v1;

    *(v33 + 4) = v40;
    _os_log_impl(&dword_1C945E000, v29, v30, "Reporting to PowerLog after date: %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    v18 = v121;
    OUTLINED_FUNCTION_26();
    v4 = v124;
    OUTLINED_FUNCTION_26();
  }

  else
  {

    OUTLINED_FUNCTION_6_9();
    v41();
  }

  v124 = v131[2];
  sub_1C96A5444();
  v123 = v133;
  NotificationStore.incomingMessages.getter();
  sub_1C96A6314();

  v135 = i;
  v136 = MEMORY[0x1E69D6130];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v133);
  v122(boxed_opaque_existential_1, v18, i);
  sub_1C96A6244();
  __swift_destroy_boxed_opaque_existential_1Tm(&v133);
  v43 = sub_1C96A63E4();
  v44 = v127;
  __swift_storeEnumTagSinglePayload(v127, 1, 1, v43);
  v45 = sub_1C96A62E4();
  v122 = 0;
  v12 = v45;

  sub_1C94DDC44(v44);
  v46 = OUTLINED_FUNCTION_5_12();
  v47(v46);
  v128 = *(v12 + 2);
  if (!v128)
  {

LABEL_7:
    sub_1C96A5434();

    v25 = v130;
LABEL_8:
    v25(v18, i);
    return;
  }

  v121 = v18;
  v118 = i;
  v18 = 0;
  v48 = v12 + 64;
  v127 = MEMORY[0x1E69E7CC8];
  v117 = v12 + 64;
  while (2)
  {
    for (i = &v48[40 * v18]; ; i += 40)
    {
      if (v128 == v18)
      {

        v132[17] = 0;
        v133 = 0;
        v137 = 0;
        MEMORY[0x1EEE9AC00](v79);
        v80 = v121;
        v113[-6] = v131;
        v113[-5] = v80;
        v113[-4] = &v133;
        v113[-3] = &v137;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4FE8);
        v112 = MEMORY[0x1E69E6168];
        v81 = sub_1C96A6EF4();

        sub_1C96A53C4();
        v82 = sub_1C96A6134();
        v83 = sub_1C96A76A4();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = OUTLINED_FUNCTION_9_8();
          v85 = OUTLINED_FUNCTION_8_4();
          v132[0] = v85;
          *v84 = 136315138;
          v86 = sub_1C96A6EE4();
          v88 = sub_1C9484164(v86, v87, v132);

          *(v84 + 4) = v88;
          _os_log_impl(&dword_1C945E000, v82, v83, "Per-channel power reports: %s", v84, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v85);
          OUTLINED_FUNCTION_26();
          OUTLINED_FUNCTION_26();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4FF0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C96AC330;
        *(inited + 32) = 0x736C656E6E616863;
        *(inited + 40) = 0xE800000000000000;
        v90 = *(v81 + 16);

        *(inited + 48) = v90;
        *(inited + 56) = 0x7375506C61746F74;
        *(inited + 64) = 0xEB00000000736568;
        OUTLINED_FUNCTION_7_9();
        if (!(v93 ^ v75 | v92))
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        if (v91 <= -9.22337204e18)
        {
          goto LABEL_53;
        }

        if (v91 >= 9.22337204e18)
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        *(inited + 72) = v91;
        *(inited + 80) = 0xD000000000000013;
        *(inited + 88) = 0x80000001C96CCA30;
        OUTLINED_FUNCTION_4_12();
        if ((*&v96 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        if (v96 <= v95)
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if (v96 >= 9.22337204e18)
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        *(inited + 96) = v96;
        *(inited + 104) = v94;
        *(inited + 112) = 0x80000001C96CCA50;
        OUTLINED_FUNCTION_4_12();
        OUTLINED_FUNCTION_7_9();
        if (!(v93 ^ v75 | v92))
        {
          goto LABEL_58;
        }

        if (v98 <= v97)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (v98 >= 9.22337204e18)
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        *(inited + 120) = v98;
        v99 = sub_1C96A6F04();
        v100 = sub_1C96A6134();
        v101 = sub_1C96A76A4();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = OUTLINED_FUNCTION_9_8();
          v103 = OUTLINED_FUNCTION_8_4();
          v132[0] = v103;
          *v102 = 136315138;
          v104 = sub_1C96A6EE4();
          v106 = sub_1C9484164(v104, v105, v132);

          *(v102 + 4) = v106;
          _os_log_impl(&dword_1C945E000, v100, v101, "Power report: %s", v102, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v103);
          OUTLINED_FUNCTION_26();
          OUTLINED_FUNCTION_26();
        }

        i = v118;
        v18 = v121;
        sub_1C950E4E4(v99);

        v107 = sub_1C96A6EC4();

        WCPowerLogSevereNotificationsReport(v107);

        v108 = v120;
        _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
        OUTLINED_FUNCTION_1_13();
        sub_1C9510C78(v109, v110, v111);
        sub_1C96A4FE4();
        v130(v108, i);
        goto LABEL_7;
      }

      if (v18 >= *(v12 + 2))
      {
        __break(1u);
LABEL_52:
        swift_once();
        goto LABEL_3;
      }

      v49 = v12;
      v9 = *(i - 4);
      v50 = *(i - 3);
      v1 = *(i - 2);
      v4 = *(i - 1);
      v51 = *i;
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A6354();
      v52 = v134;
      if (v134 > 1)
      {
        break;
      }

      ++v18;
      v12 = v49;
    }

    v53 = v133;
    v54 = v127;
    if (*(v127 + 16) && (v55 = sub_1C9476F90(v133, v134), (v56 & 1) != 0))
    {
      v57 = *(*(v54 + 56) + 8 * v55);
      sub_1C96A53C4();
    }

    else
    {
      v57 = MEMORY[0x1E69E7CC0];
    }

    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v115 = v53;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C94FB568();
      v57 = v77;
    }

    v116 = v57;
    v59 = *(v57 + 16);
    if (v59 >= *(v57 + 24) >> 1)
    {
      sub_1C94FB568();
      v116 = v78;
    }

    v60 = v116;
    *(v116 + 16) = v59 + 1;
    v61 = (v60 + 40 * v59);
    v61[4] = v9;
    v61[5] = v50;
    v61[6] = v1;
    v61[7] = v4;
    v61[8] = v51;
    v62 = v127;
    v114 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v62;
    v63 = v115;
    v113[0] = sub_1C9476F90(v115, v52);
    v64 = *(v62 + 16);
    LODWORD(v127) = v65;
    v66 = (v65 & 1) == 0;
    v113[1] = v64 + v66;
    if (__OFADD__(v64, v66))
    {
      goto LABEL_61;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4FE0);
    if ((sub_1C96A7B84() & 1) == 0)
    {
      v70 = v113[0];
      v69 = v127;
LABEL_29:
      if (v69)
      {
        sub_1C94DDFD8(v63, v52);
        v71 = v133;
        *(v133[7] + 8 * v70) = v116;

LABEL_33:
        v12 = v49;
        v127 = v71;
        ++v18;
        v48 = v117;
        continue;
      }

      v72 = v63;
      v71 = v133;
      v133[(v70 >> 6) + 8] |= 1 << v70;
      v73 = (v71[6] + 16 * v70);
      *v73 = v72;
      v73[1] = v52;
      *(v71[7] + 8 * v70) = v116;

      v74 = v71[2];
      v75 = __OFADD__(v74, 1);
      v76 = v74 + 1;
      if (!v75)
      {
        v71[2] = v76;
        goto LABEL_33;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    break;
  }

  v67 = sub_1C9476F90(v63, v52);
  v69 = v127;
  if ((v127 & 1) == (v68 & 1))
  {
    v70 = v67;
    goto LABEL_29;
  }

LABEL_63:
  sub_1C96A7E44();
  __break(1u);
}

void sub_1C950FAF0(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v14 = *a3;
  v13 = a3[1];
  sub_1C950FBAC(*a3, v13, *a4, a6);
  if (__OFADD__(*a7, v15))
  {
    __break(1u);
    goto LABEL_6;
  }

  *a7 += v15;
  if (__OFADD__(*a8, v16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *a8 += v16;
  if (!__OFADD__(*a9, v17))
  {
    *a9 += v17;
    *a1 = v14;
    a1[1] = v13;
    *a2 = v15;
    a2[1] = v16;
    a2[2] = v17;
    sub_1C96A53C4();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1C950FBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v55 - v7;
  v9 = sub_1C96A61C4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v55 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v66 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v55 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  v21 = *(a3 + 16);
  v55 = *(v4 + 16);
  sub_1C96A5444();
  v70 = *&v85[0];
  v67 = v21;
  if (!v21)
  {
    v57 = 0;
    v58 = 0;
LABEL_25:
    sub_1C96A5434();

    return;
  }

  v57 = 0;
  v58 = 0;
  v22 = 0;
  v72 = 0;
  v69 = a3 + 32;
  v60 = "notificationIdentifier";
  v23 = (v10 + 8);
  v24 = v67;
  v25 = v66;
  v61 = v8;
  v73 = v20;
  v74 = v9;
  v59 = v23;
  while (1)
  {
    v71 = v22;
    v26 = v69 + 40 * v22;
    v27 = *(v26 + 16);
    v85[0] = *v26;
    v85[1] = v27;
    v86 = *(v26 + 32);
    sub_1C9510D90(v85, &v81);
    v28 = v72;
    NotificationStore.weatherAlerts.getter();
    if (!v28)
    {
      break;
    }

    sub_1C9510DEC(v85);
    v72 = 0;
LABEL_22:
    v22 = v71 + 1;
    if (v71 + 1 == v24)
    {
      goto LABEL_25;
    }
  }

  sub_1C96A6314();

  v83 = MEMORY[0x1E69E6370];
  v84 = MEMORY[0x1E69D62E8];
  LOBYTE(v81) = 1;
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v81);
  sub_1C96A6354();
  if (!v80)
  {
    goto LABEL_29;
  }

  v83 = MEMORY[0x1E69E6158];
  v84 = MEMORY[0x1E69D62D8];
  v81 = v79;
  v82 = v80;
  v29 = v64;
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v81);
  v30 = v63;
  sub_1C96A6214();
  v31 = v25;
  v32 = *v59;
  (*v59)(v29, v9);
  v32(v31, v9);
  v33 = sub_1C96A4A54();
  v83 = v33;
  v84 = MEMORY[0x1E69D6130];
  v34 = __swift_allocate_boxed_opaque_existential_1(&v81);
  (*(*(v33 - 8) + 16))(v34, v68, v33);
  v35 = v65;
  sub_1C96A6244();
  __swift_destroy_boxed_opaque_existential_1Tm(&v81);
  sub_1C96A6214();
  v32(v35, v9);
  v32(v30, v9);
  v36 = sub_1C96A63E4();
  v37 = v61;
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v36);
  v38 = sub_1C96A62E4();
  v72 = 0;

  sub_1C94DDC44(v37);
  v32(v20, v9);
  v76 = *(v38 + 16);
  if (!v76)
  {
    sub_1C9510DEC(v85);

LABEL_21:
    v24 = v67;
    v25 = v66;
    goto LABEL_22;
  }

  v39 = 0;
  v40 = v38 + 56;
  v62 = MEMORY[0x1E69E7CC0];
  v75 = v38;
  v56 = v38 + 56;
LABEL_8:
  v41 = v40 + 80 * v39;
  while (v76 != v39)
  {
    if (v39 >= *(v38 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    ++v39;
    v77 = *(v41 - 24);
    v78 = v41 + 80;
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A6354();

    v20 = v73;

    v38 = v75;

    v9 = v74;

    v42 = v82;
    v41 = v78;
    if (v82)
    {
      v43 = v81;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C94FB3F4();
        v62 = v47;
      }

      v44 = *(v62 + 16);
      if (v44 >= *(v62 + 24) >> 1)
      {
        sub_1C94FB3F4();
        v62 = v48;
      }

      v45 = v62;
      *(v62 + 16) = v44 + 1;
      v46 = v45 + 16 * v44;
      *(v46 + 32) = v43;
      *(v46 + 40) = v42;
      v40 = v56;
      goto LABEL_8;
    }
  }

  v49 = sub_1C955FF18(v62);
  v50 = *(v49 + 16);
  if (__OFADD__(v58, v50))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v51 = v49;
  v58 += v50;
  MEMORY[0x1EEE9AC00](v49);
  *(&v55 - 4) = v70;
  *(&v55 - 3) = v85;
  *(&v55 - 2) = v68;
  v52 = v72;
  v53 = sub_1C950E794(MEMORY[0x1E69E7CD0], sub_1C9510E40, (&v55 - 6), v51);
  sub_1C9510DEC(v85);

  v54 = *(v53 + 16);

  if (!__OFADD__(v57, v54))
  {
    v72 = v52;
    v57 += v54;
    goto LABEL_21;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_1C95103F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a5;
  v75 = a4;
  v64 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v58 - v7;
  v9 = sub_1C96A61C4();
  v73 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v58 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v58 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  v24 = *a2;
  v23 = a2[1];
  v25 = v82;
  NotificationStore.severeNotifications.getter();
  if (v25)
  {

    return;
  }

  v67 = v14;
  v68 = v19;
  v69 = 0;
  v70 = v11;
  v71 = v22;
  v82 = v8;
  sub_1C96A6314();

  v26 = MEMORY[0x1E69E6158];
  v27 = MEMORY[0x1E69D62D8];
  v80 = MEMORY[0x1E69E6158];
  v81 = MEMORY[0x1E69D62D8];
  v78 = v24;
  v79 = v23;
  sub_1C96A53C4();
  v28 = v74;
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v78);
  sub_1C96A6354();
  if (v77)
  {
    v80 = v26;
    v81 = v27;
    v78 = v76;
    v79 = v77;
    v29 = v67;
    sub_1C96A6224();
    __swift_destroy_boxed_opaque_existential_1Tm(&v78);
    v30 = v68;
    sub_1C96A6214();
    v31 = *(v73 + 8);
    v31(v29, v9);
    v31(v28, v9);
    v32 = sub_1C96A4A54();
    v80 = v32;
    v81 = MEMORY[0x1E69D6130];
    v33 = __swift_allocate_boxed_opaque_existential_1(&v78);
    (*(*(v32 - 8) + 16))(v33, v72, v32);
    v34 = v70;
    sub_1C96A6244();
    __swift_destroy_boxed_opaque_existential_1Tm(&v78);
    v35 = v71;
    sub_1C96A6214();
    v31(v34, v9);
    v31(v30, v9);
    v36 = sub_1C96A63E4();
    v37 = v82;
    __swift_storeEnumTagSinglePayload(v82, 1, 1, v36);
    v38 = v69;
    v39 = sub_1C96A62E4();
    if (v38)
    {

      sub_1C94DDC44(v37);
      v31(v35, v9);
      return;
    }

    v40 = v39;
    v60 = 0;

    sub_1C94DDC44(v37);
    v31(v35, v9);
    v41 = 0;
    v63 = *(v40 + 16);
    v42 = v40 + 72;
    v61 = MEMORY[0x1E69E7CC0];
    v62 = v40;
    v59 = v40 + 72;
LABEL_7:
    v43 = (v42 + 112 * v41);
    while (1)
    {
      if (v63 == v41)
      {

        sub_1C9510A94(v61);
        return;
      }

      if (v41 >= *(v40 + 16))
      {
        break;
      }

      ++v41;
      v82 = v43 + 14;
      v44 = v43[8];
      v45 = v43[6];
      v66 = v43[5];
      v65 = v43[4];
      v46 = v43[1];
      v47 = v43[2];
      v68 = v45;
      v69 = v47;
      v70 = v46;
      v71 = v44;
      v49 = *(v43 - 3);
      v48 = *(v43 - 2);
      v72 = *(v43 - 1);
      v73 = v48;
      v50 = *(v43 - 5);
      v67 = *(v43 - 4);
      v74 = v49;
      v75 = v50;
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A6354();

      v40 = v62;

      v51 = v79;
      v43 = v82;
      if (v79)
      {
        v52 = v78;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C94FB3F4();
          v61 = v56;
        }

        v53 = *(v61 + 16);
        if (v53 >= *(v61 + 24) >> 1)
        {
          sub_1C94FB3F4();
          v61 = v57;
        }

        v54 = v61;
        *(v61 + 16) = v53 + 1;
        v55 = v54 + 16 * v53;
        *(v55 + 32) = v52;
        *(v55 + 40) = v51;
        v42 = v59;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C9510A94(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;
    sub_1C96A53C4();
    sub_1C9562C44(&v7, v6, v5);

    v4 += 2;
  }
}

uint64_t SevereNotificationsPowerLogger.deinit()
{

  return v0;
}

uint64_t SevereNotificationsPowerLogger.__deallocating_deinit()
{
  SevereNotificationsPowerLogger.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C9510C78(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SevereNotificationsPowerLogger.SevereNotificationsPowerReport(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SevereNotificationsPowerLogger.SevereNotificationsPowerReport(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

id sub_1C9510E60@<X0>(void *a1@<X8>)
{
  v2 = sub_1C96A4764();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = type metadata accessor for WeatherConfigurationManager();
  sub_1C96A4FD4();
  sub_1C96A4FB4();
  sub_1C96A4FC4();

  sub_1C96A46F4();
  (*(v3 + 8))(v6, v2);
  result = WeatherConfigurationManager.__allocating_init(contentDirectoryURL:)(v8);
  a1[3] = v9;
  a1[4] = &protocol witness table for WeatherConfigurationManager;
  *a1 = result;
  return result;
}

uint64_t sub_1C9510FC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5070);
  result = sub_1C96A5274();
  if (!v10[3])
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5060);
  result = sub_1C96A5274();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5078);
  result = sub_1C96A5274();
  if (v6)
  {
    sub_1C94670AC(&v5, v7);
    type metadata accessor for GeocodeService(0);
    swift_allocObject();
    result = GeocodeService.init(appConfigurationManager:privacySampler:locationMetadataUpdater:)(v10, v8, v7);
    *a2 = result;
    a2[1] = &protocol witness table for GeocodeService;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C9511110(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5068);
  result = sub_1C96A5274();
  if (v4)
  {
    GeocodeService.setupWeatherKitGeocoding(using:)(v3);
    return __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C951119C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5058);
  sub_1C96A5484();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5060);
  sub_1C96A5484();
}

uint64_t sub_1C9511248@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5020);
  result = sub_1C96A5274();
  if (v7)
  {
    v4 = type metadata accessor for PrivacySaltProvider();
    v5 = swift_allocObject();
    result = sub_1C94670AC(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &protocol witness table for PrivacySaltProvider;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C95112F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5058);
  result = sub_1C96A5274();
  if (v7)
  {
    v4 = type metadata accessor for PrivacySampler();
    v5 = swift_allocObject();
    result = sub_1C94670AC(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &protocol witness table for PrivacySampler;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static FetchResultEntity.version.getter()
{
  swift_beginAccess();
  sub_1C96A53C4();
  return OUTLINED_FUNCTION_117();
}

uint64_t static FetchResultEntity.version.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *a001 = a1;
  qword_1EC3A50A0 = a2;
}

uint64_t (*static FetchResultEntity.version.modify())()
{
  OUTLINED_FUNCTION_117();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C95114D0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EC3A50A0;
  *a1 = *a001;
  a1[1] = v2;
  return sub_1C96A53C4();
}

uint64_t sub_1C9511520(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *a001 = v2;
  qword_1EC3A50A0 = v1;
  sub_1C96A53C4();
}

uint64_t FetchResultEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D58);
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_24();
  v88 = v4;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_51_0();
  v87 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D50);
  v8 = OUTLINED_FUNCTION_7(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_24();
  v86 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_51_0();
  v85 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v13 = OUTLINED_FUNCTION_7(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v83 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v21 = OUTLINED_FUNCTION_7(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v83 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  v84 = v28;
  v83[1] = v27;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
  v83[2] = v24;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  *a1 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v35 = *MEMORY[0x1E69D61F8];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  v38 = *(v37 + 104);
  v38(v19, v35, v36);
  v39 = OUTLINED_FUNCTION_12_9();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v36);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[1] = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v38(v19, v35, v36);
  v45 = OUTLINED_FUNCTION_12_9();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v36);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v38(v16, v35, v36);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v36);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[2] = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v84);
  OUTLINED_FUNCTION_6_1();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[3] = sub_1C96A6344();
  OUTLINED_FUNCTION_6_1();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  OUTLINED_FUNCTION_6_1();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[4] = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D88);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D90);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[5] = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D78);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D80);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  result = sub_1C96A6344();
  a1[6] = result;
  return result;
}

uint64_t FetchResultEntity.init(identifier:subscriptionIdentifier:scheduleIdentifier:notificationIdentifier:forecast:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, unint64_t a11)
{
  v104 = a7;
  v105 = a8;
  v102 = a5;
  v103 = a6;
  v100 = a3;
  v101 = a4;
  v98 = a1;
  v99 = a2;
  v106 = a10;
  v107 = a11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D58);
  v13 = OUTLINED_FUNCTION_7(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_24();
  v97 = v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_51_0();
  v96 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D50);
  v18 = OUTLINED_FUNCTION_7(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_24();
  v95 = v19;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_51_0();
  v94 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v23 = OUTLINED_FUNCTION_7(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2();
  v26 = (v24 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v91 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v31 = OUTLINED_FUNCTION_7(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v91 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  v92 = v38;
  v91[1] = v37;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
  v91[2] = v34;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  v93 = sub_1C96A6344();
  *a9 = v93;
  sub_1C96A3D04();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v45 = *MEMORY[0x1E69D61F8];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  v48 = *(v47 + 104);
  v48(v29, v45, v46);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v46);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a9[1] = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v48(v29, v45, v46);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v46);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v48(v26, v45, v46);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v46);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a9[2] = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  v61 = v92;
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v92);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v61);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a9[3] = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v61);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v61);
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  a9[4] = sub_1C96A6344();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D88);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v74);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D90);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  a9[5] = sub_1C96A6344();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D78);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v81);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D80);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  a9[6] = sub_1C96A6344();
  v108 = v98;
  v109 = v99;
  sub_1C96A3D04();
  sub_1C96A6364();

  v108 = v100;
  v109 = v101;
  sub_1C96A6364();

  v108 = v102;
  v109 = v103;
  sub_1C96A6364();

  v108 = v104;
  v109 = v105;
  sub_1C96A6364();

  v89 = v106;
  v88 = v107;
  v108 = v106;
  v109 = v107;
  sub_1C94874C0(v106, v107);
  sub_1C96A6364();

  return sub_1C9482F3C(v89, v88);
}

uint64_t sub_1C9512078(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64657461657263 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465696669646F6DLL && a2 == 0xE800000000000000;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7069726373627573 && a2 == 0xEC0000006E6F6974;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
          if (v9 || (sub_1C96A7DE4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974;
            if (v10 || (sub_1C96A7DE4() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x7473616365726F66 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C96A7DE4();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C95122B4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x64657461657263;
      break;
    case 2:
      result = 0x6465696669646F6DLL;
      break;
    case 3:
      result = 0x7069726373627573;
      break;
    case 4:
      result = 0x656C756465686373;
      break;
    case 5:
      result = 0x6163696669746F6ELL;
      break;
    case 6:
      result = 0x7473616365726F66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9512380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9512078(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C95123A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C95122AC();
  *a1 = result;
  return result;
}

uint64_t sub_1C95123D0(uint64_t a1)
{
  v2 = sub_1C9512790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C951240C(uint64_t a1)
{
  v2 = sub_1C9512790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FetchResultEntity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50A8);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v33 = v1[2];
  v34 = v9;
  v12 = v1[5];
  v31 = v1[4];
  v32 = v11;
  v29 = v1[6];
  v30 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1C9512790();
  sub_1C96A3D04();
  sub_1C96A7F54();
  v36 = v10;
  v35 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_4_0();
  sub_1C9469CB4(v15, v16);
  v17 = v3;
  OUTLINED_FUNCTION_16_8();
  if (v13)
  {

    return (*(v5 + 8))(v8, v3);
  }

  else
  {
    v18 = v33;
    v28 = v14;

    v36 = v34;
    v35 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v19, v20);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_88();
    v36 = v18;
    v35 = 2;
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_88();
    v36 = v32;
    v35 = 3;
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_16_8();
    v36 = v31;
    v35 = 4;
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_16_8();
    v36 = v30;
    v35 = 5;
    v22 = OUTLINED_FUNCTION_117();
    __swift_instantiateConcreteTypeFromMangledNameV2(v22);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v23, v24);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_88();
    v36 = v29;
    v35 = 6;
    v25 = OUTLINED_FUNCTION_117();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v26, v27);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_88();
    return (*(v5 + 8))(v8, v17);
  }
}

unint64_t sub_1C9512790()
{
  result = qword_1EC3A50B0;
  if (!qword_1EC3A50B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A50B0);
  }

  return result;
}

uint64_t FetchResultEntity.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v109 = a1;
  v102 = a2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50B8);
  OUTLINED_FUNCTION_1();
  v104 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v119 = &v101 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D58);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_24();
  v113 = v7;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_51_0();
  v112 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D50);
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_24();
  v111 = v12;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_51_0();
  v110 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v16 = OUTLINED_FUNCTION_7(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v101 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v24 = OUTLINED_FUNCTION_7(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_24();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v101 - v28;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  v107 = v29;
  OUTLINED_FUNCTION_6_1();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  v108 = v26;
  OUTLINED_FUNCTION_6_1();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  v120 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v39 = *MEMORY[0x1E69D61F8];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  v42 = *(v41 + 104);
  v42(v22, v39, v40);
  v43 = OUTLINED_FUNCTION_12_9();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v40);
  OUTLINED_FUNCTION_6_1();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v118 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v42(v22, v39, v40);
  v51 = OUTLINED_FUNCTION_12_9();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v40);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v42(v19, v39, v40);
  v54 = v109;
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v40);
  v103 = v50;
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v117 = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v115);
  OUTLINED_FUNCTION_6_1();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v116 = sub_1C96A6344();
  OUTLINED_FUNCTION_6_1();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  OUTLINED_FUNCTION_6_1();
  v69 = v119;
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  v105 = v38;
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v115 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D88);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D90);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v111 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D78);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D80);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v113 = sub_1C96A6344();
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  sub_1C9512790();
  v90 = v114;
  sub_1C96A7F44();
  if (!v90)
  {
    v121 = 0;
    OUTLINED_FUNCTION_5(&qword_1EC3A4B18, &qword_1EC3A4AD8);
    OUTLINED_FUNCTION_15_5();
    sub_1C96A7CB4();

    v120 = v122;
    v121 = 1;
    OUTLINED_FUNCTION_5(&qword_1EC3A4E00, &qword_1EC3A4D70);
    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_24_4();
    sub_1C96A7CB4();

    v118 = v122;
    v121 = 2;
    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_21_7();

    v117 = v122;
    v121 = 3;
    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_21_7();

    v116 = v122;
    v121 = 4;
    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_21_7();

    v115 = v122;
    v121 = 5;
    OUTLINED_FUNCTION_5(&qword_1EC3A4E10, &qword_1EC3A4D90);
    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_21_7();
    v92 = v104;

    v93 = v122;
    v121 = 6;
    OUTLINED_FUNCTION_5(&qword_1EC3A4E08, &qword_1EC3A4D80);
    OUTLINED_FUNCTION_15_5();
    v94 = v106;
    OUTLINED_FUNCTION_21_7();
    (*(v92 + 8))(v69, v94);

    v95 = v122;
    v96 = v102;
    v98 = v117;
    v97 = v118;
    *v102 = v120;
    v96[1] = v97;
    v100 = v115;
    v99 = v116;
    v96[2] = v98;
    v96[3] = v99;
    v96[4] = v100;
    v96[5] = v93;
    v96[6] = v95;
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v54);
}

unint64_t sub_1C95130D4()
{
  result = qword_1EDB7C380;
  if (!qword_1EDB7C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C380);
  }

  return result;
}

unint64_t sub_1C951312C()
{
  result = qword_1EDB7C398;
  if (!qword_1EDB7C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C398);
  }

  return result;
}

unint64_t sub_1C9513184()
{
  result = qword_1EDB7C370;
  if (!qword_1EDB7C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C370);
  }

  return result;
}

unint64_t sub_1C95131D8()
{
  result = qword_1EDB7C378;
  if (!qword_1EDB7C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C378);
  }

  return result;
}

unint64_t sub_1C9513230()
{
  result = qword_1EDB7C390;
  if (!qword_1EDB7C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C390);
  }

  return result;
}

unint64_t sub_1C95132AC()
{
  result = qword_1EDB7C388;
  if (!qword_1EDB7C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C388);
  }

  return result;
}

uint64_t sub_1C9513300(uint64_t a1)
{
  v2 = sub_1C95137D0();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1C951334C(uint64_t a1)
{
  v2 = sub_1C95137D0();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1C9513398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95137D0();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1C9513430(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C95137D0();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1C951347C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95137D0();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1C95134D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C95137D0();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C9513550(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C9513590(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FetchResultEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C95136CC()
{
  result = qword_1EC3A50C0;
  if (!qword_1EC3A50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A50C0);
  }

  return result;
}

unint64_t sub_1C9513724()
{
  result = qword_1EC3A50C8;
  if (!qword_1EC3A50C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A50C8);
  }

  return result;
}

unint64_t sub_1C951377C()
{
  result = qword_1EC3A50D0;
  if (!qword_1EC3A50D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A50D0);
  }

  return result;
}

unint64_t sub_1C95137D0()
{
  result = qword_1EC3A50D8;
  if (!qword_1EC3A50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A50D8);
  }

  return result;
}

uint64_t sub_1C951388C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t PrecipitationNotificationFetchScheduler.__allocating_init(notificationStore:activityManager:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1C94670AC(a2, v4 + 24);
  return v4;
}

uint64_t PrecipitationNotificationFetchScheduler.init(notificationStore:activityManager:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_1C94670AC(a2, v2 + 24);
  return v2;
}

uint64_t PrecipitationNotificationFetchScheduler.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  return v0;
}

uint64_t PrecipitationNotificationFetchScheduler.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t PrecipitationNotificationFetchScheduler.schedules(for:)()
{
  if (qword_1EDB77E80 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v0 = sub_1C96A6154();
  __swift_project_value_buffer(v0, qword_1EDB77E88);
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v2))
  {
    *OUTLINED_FUNCTION_29() = 0;
    OUTLINED_FUNCTION_20_5(&dword_1C945E000, v3, v4, "Attempting to retrieve schedules for subscriptions");
    OUTLINED_FUNCTION_26();
  }

  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50E0);
  OUTLINED_FUNCTION_23();
  return OUTLINED_FUNCTION_15_6();
}

uint64_t sub_1C9513AA0(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a4;
  v30 = a3;
  v31 = a2;
  v32 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5100);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v25 - v9);
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  v28 = *(Schedule - 8);
  MEMORY[0x1EEE9AC00](Schedule);
  v33 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v27 = &v25 - v14;
  v34 = *(a5 + 16);
  sub_1C96A5444();
  v15 = 0;
  v16 = *(a6 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  while (v16 != v15)
  {
    v17 = *(type metadata accessor for NotificationSubscription(0) - 8);
    sub_1C9513F4C((a6 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15), v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, Schedule) == 1)
    {
      sub_1C9470AFC(v10, &qword_1EC3A5100);
      ++v15;
    }

    else
    {
      v18 = v27;
      sub_1C9518B30(v10, v27, type metadata accessor for PrecipitationNotificationFetchSchedule);
      sub_1C9518B30(v18, v33, type metadata accessor for PrecipitationNotificationFetchSchedule);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C94FB618();
        v35 = v22;
      }

      v19 = *(v35 + 16);
      v20 = v19 + 1;
      if (v19 >= *(v35 + 24) >> 1)
      {
        v26 = v19 + 1;
        sub_1C94FB618();
        v20 = v26;
        v35 = v23;
      }

      ++v15;
      v21 = v35;
      *(v35 + 16) = v20;
      sub_1C9518B30(v33, v21 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v19, type metadata accessor for PrecipitationNotificationFetchSchedule);
    }
  }

  v36 = v35;
  v32(&v36);

  sub_1C96A5434();
}

uint64_t sub_1C9513F4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a1;
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v39 - v4;
  v6 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v39 - v10;
  v12 = sub_1C96A61C4();
  v44 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v39 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v39 - v19;
  result = NotificationStore.fetchSchedules.getter();
  if (!v2)
  {
    v40 = v8;
    v41 = v5;
    v42 = sub_1C96A6314();

    v22 = v54;
    v24 = *v54;
    v23 = v54[1];
    v46 = MEMORY[0x1E69E6158];
    v47 = MEMORY[0x1E69D62D8];
    v45[0] = v24;
    v45[1] = v23;
    sub_1C96A53C4();
    sub_1C96A6224();
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v46 = MEMORY[0x1E69E6370];
    v47 = MEMORY[0x1E69D62E8];
    LOBYTE(v45[0]) = 1;
    sub_1C96A6224();
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    sub_1C96A6214();
    v25 = *(v44 + 8);
    v25(v14, v12);
    v25(v17, v12);
    v26 = sub_1C96A63E4();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v26);
    sub_1C96A62D4();

    sub_1C9470AFC(v11, &qword_1EC3A4B60);
    v25(v20, v12);
    v27 = v48;
    if (v48)
    {
      v28 = v22;
      v44 = v50;
      v42 = v51;
      v39[1] = v53;
      v39[2] = v52;
      result = sub_1C96A6354();
      v29 = v49;
      if (v49)
      {
        v30 = v48;
        v31 = v40;
        sub_1C9518A38(v28, v40, type metadata accessor for NotificationSubscription);
        v32 = v41;
        sub_1C96A6354();
        v33 = sub_1C96A4A54();
        result = __swift_getEnumTagSinglePayload(v32, 1, v33);
        if (result != 1)
        {
          sub_1C9518850(v27);
          v34 = v43;
          *v43 = v30;
          *(v34 + 1) = v29;
          Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
          sub_1C9518B30(v31, &v34[Schedule[5]], type metadata accessor for NotificationSubscription);
          (*(*(v33 - 8) + 32))(&v34[Schedule[6]], v32, v33);
          *&v34[Schedule[7]] = 0x408C200000000000;
          v36 = v34;
          v37 = 0;
          v38 = Schedule;
          return __swift_storeEnumTagSinglePayload(v36, v37, 1, v38);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    v38 = type metadata accessor for PrecipitationNotificationFetchSchedule();
    v36 = v43;
    v37 = 1;
    return __swift_storeEnumTagSinglePayload(v36, v37, 1, v38);
  }

  return result;
}

uint64_t PrecipitationNotificationFetchScheduler.unscheduledSubscriptions(in:)(uint64_t a1)
{
  sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v31 = v3;
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  v7 = type metadata accessor for NotificationSubscription(0) - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  v30 = a1;
  if (v11)
  {
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C9518A38(v12, v10, type metadata accessor for NotificationSubscription);
      v16 = *v10;
      v15 = v10[1];
      sub_1C96A53C4();
      sub_1C9518A98(v10, type metadata accessor for NotificationSubscription);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C94FB3F4();
        v14 = v19;
      }

      v17 = *(v14 + 16);
      if (v17 >= *(v14 + 24) >> 1)
      {
        sub_1C94FB3F4();
        v14 = v20;
      }

      *(v14 + 16) = v17 + 1;
      v18 = v14 + 16 * v17;
      *(v18 + 32) = v16;
      *(v18 + 40) = v15;
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  if (qword_1EDB77E80 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v21 = sub_1C96A6154();
  __swift_project_value_buffer(v21, qword_1EDB77E88);
  v22 = sub_1C96A6134();
  v23 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v23))
  {
    v24 = OUTLINED_FUNCTION_29();
    *v24 = 0;
    _os_log_impl(&dword_1C945E000, v22, v23, "Attempting to determine subscriptions without fetching schedule", v24, 2u);
    OUTLINED_FUNCTION_26();
  }

  MEMORY[0x1EEE9AC00](v25);
  v26 = v30;
  *(&v29 - 4) = v29;
  *(&v29 - 3) = v14;
  *(&v29 - 2) = v26;
  *(&v29 - 1) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50E8);
  OUTLINED_FUNCTION_23();
  v27 = OUTLINED_FUNCTION_15_6();

  (*(v31 + 8))(v6, v32);
  return v27;
}