double sub_188F01294(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v102 = a9;
  v104 = a7;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936518);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v100 = (&v98 - v19);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936528);
  MEMORY[0x1EEE9AC00](v103);
  v21 = (&v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v101 = &v98 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v98 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v98 - v28;
  *&v30 = UIAnimationDragCoefficient();
  v31 = *&v30;
  signpost_c2_entryLock_start(v30, v32);
  v106 = a2[2];
  os_unfair_lock_lock(v106 + 4);
  signpost_c2_entryLock_start(v33, v34);
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    v36 = v105;
    *(v105 + 16) = 1;
    v37 = 0.0;
    goto LABEL_5;
  }

  signpost_c2_entryLock_start(v31, v35);
  v99 = a6;
  v46 = *(a6 + 24);
  os_unfair_lock_lock((v46 + 176));
  v135 = *(v46 + 96);
  v136 = *(v46 + 112);
  v131 = *(v46 + 116);
  v132 = *(v46 + 132);
  v127 = *(v46 + 136);
  v128 = *(v46 + 152);
  v124 = *(v46 + 172);
  v123 = *(v46 + 156);
  os_unfair_lock_unlock((v46 + 176));
  v47 = *(*a2 + 104);
  swift_beginAccess();
  sub_188C56278(&v118, a4 / v31);
  swift_endAccess();
  v138 = v119[0];
  v134 = DWORD1(v119[1]);
  v130 = DWORD2(v119[2]);
  v137 = v118;
  v133 = *(v119 + 4);
  v129 = *(&v119[1] + 8);
  v126 = HIDWORD(v119[3]);
  HIDWORD(v48) = v119[3];
  v125 = *(&v119[2] + 12);
  LODWORD(v48) = 1008981770;
  v49 = sub_188F7BFE0(&v135, v48);
  v50 = v49;
  LODWORD(v49) = 1008981770;
  v51 = sub_188F7BFE0(&v131, v49);
  v52 = v51;
  LODWORD(v51) = 1008981770;
  v53 = sub_188F7BFE0(&v127, v51);
  v54 = v53;
  LODWORD(v53) = 1008981770;
  v55 = sub_188F7BFE0(&v123, v53);
  if (v50 > v52)
  {
    v56 = v50;
  }

  else
  {
    v56 = v52;
  }

  if (v56 <= v54)
  {
    v56 = v54;
  }

  if (v56 > v55)
  {
    v37 = v56;
  }

  else
  {
    v37 = v55;
  }

  os_unfair_lock_lock((v46 + 176));
  v57 = v119[2];
  *(v46 + 128) = v119[1];
  *(v46 + 144) = v57;
  *(v46 + 160) = v119[3];
  v58 = v119[0];
  *(v46 + 96) = v118;
  *(v46 + 112) = v58;
  os_unfair_lock_unlock((v46 + 176));
  signpost_c2_entryLock_start(v59, v60);
  sub_188A3F29C(a2 + v47, v29, &qword_1EA936528);
  sub_188A3F29C(v29, v26, &qword_1EA936528);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F5FC(v29, &qword_1EA936528);
      v63 = v26;
      v64 = v100;
      sub_188A3F704(v63, v100, &qword_1EA936518);
      v65 = *(v64 + 256);
      sub_188A3F5FC(v64, &qword_1EA936518);
      if ((v65 & 1) == 0)
      {
LABEL_27:
        v115 = v119[1];
        v116 = v119[2];
        v117 = v119[3];
        v113 = v118;
        v114 = v119[0];
        sub_188D22448(&v108);
        v67 = 0;
        goto LABEL_38;
      }
    }

    else
    {
      sub_188A3F5FC(v29, &qword_1EA936528);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      memcpy(v122, v26, 0x150uLL);
      v62 = sub_188EF46F4();
    }

    else
    {
      memcpy(v122, v26, sizeof(v122));
      v62 = sub_188CB891C();
    }

    v66 = v62;
    sub_188A3F5FC(v29, &qword_1EA936528);
    if ((v66 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v68 = v101;
  sub_188A3F29C(a2 + v47, v101, &qword_1EA936528);
  sub_188A3F704(v68, v21, &qword_1EA936528);
  v69 = swift_getEnumCaseMultiPayload();
  if (v69 <= 1)
  {
    if (v69)
    {
      v76 = v21[19];
      v115 = v21[18];
      v116 = v76;
      v117 = v21[20];
      v72 = v21[16];
      v71 = v21[17];
    }

    else
    {
      v70 = v21[17];
      v115 = v21[16];
      v116 = v70;
      v117 = v21[18];
      v72 = v21[14];
      v71 = v21[15];
    }

    goto LABEL_36;
  }

  if (v69 != 2)
  {
    v77 = v21[3];
    v115 = v21[2];
    v116 = v77;
    v117 = v21[4];
    v72 = *v21;
    v71 = v21[1];
LABEL_36:
    v113 = v72;
    v114 = v71;
    goto LABEL_37;
  }

  v73 = v100;
  sub_188A3F704(v21, v100, &qword_1EA936518);
  v74 = v73[14];
  v115 = v73[13];
  v116 = v74;
  v117 = v73[15];
  v75 = v73[12];
  v113 = v73[11];
  v114 = v75;
  sub_188A3F5FC(v73, &qword_1EA936518);
LABEL_37:
  v112 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v67 = 1;
LABEL_38:
  v78 = v104;
  swift_beginAccess();
  v79 = *(v78 + 96);
  v107 = 0;
  if ((v79 & 1) != 0 || (v121[1] = v114, v121[2] = v115, v121[3] = v116, v121[4] = v117, v80 = *(v78 + 64), v120[2] = *(v78 + 48), v120[3] = v80, v120[4] = *(v78 + 80), v121[0] = v113, v81 = *(v78 + 32), v120[0] = *(v78 + 16), v120[1] = v81, !sub_188D22388(v120, v121)))
  {
    v82 = swift_allocObject();
    v83 = v114;
    v84 = v116;
    v85 = v117;
    *(v82 + 64) = v115;
    *(v82 + 80) = v84;
    v86 = v112;
    *(v82 + 32) = v113;
    *(v82 + 48) = v83;
    v87 = v110;
    v88 = v111;
    v89 = v108;
    *(v82 + 128) = v109;
    *(v82 + 144) = v87;
    *(v82 + 160) = v88;
    *(v82 + 176) = v86;
    *(v82 + 16) = v102;
    *(v82 + 24) = a10;
    *(v82 + 96) = v85;
    *(v82 + 112) = v89;
    v90 = swift_allocObject();
    *(v90 + 16) = sub_188F0CCB8;
    *(v90 + 24) = v82;
    swift_beginAccess();
    v91 = *(a8 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v91;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v91 = sub_188E4B69C(0, v91[2] + 1, 1, v91);
      *(a8 + 112) = v91;
    }

    v94 = v91[2];
    v93 = v91[3];
    if (v94 >= v93 >> 1)
    {
      v91 = sub_188E4B69C((v93 > 1), v94 + 1, 1, v91);
    }

    v91[2] = v94 + 1;
    v95 = &v91[2 * v94];
    v95[4] = sub_188E85C88;
    v95[5] = v90;
    *(a8 + 112) = v91;
    swift_endAccess();
    sub_188AA7584();

    v78 = v104;
  }

  swift_beginAccess();
  v96 = v116;
  *(v78 + 48) = v115;
  *(v78 + 64) = v96;
  *(v78 + 80) = v117;
  v97 = v114;
  *(v78 + 16) = v113;
  *(v78 + 32) = v97;
  *(v78 + 96) = 0;
  if ((v67 & 1) == 0)
  {

    goto LABEL_10;
  }

  a6 = v99;
  v36 = v105;
LABEL_5:
  v38 = swift_allocObject();
  v38[2] = a2;
  v38[3] = a11;
  v38[4] = a12;
  v38[5] = a6;
  v38[6] = a8;
  v38[7] = v36;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_188F0CD1C;
  *(v39 + 24) = v38;
  swift_beginAccess();
  v40 = *(a8 + 112);

  v41 = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 112) = v40;
  if ((v41 & 1) == 0)
  {
    v40 = sub_188E4B69C(0, v40[2] + 1, 1, v40);
    *(a8 + 112) = v40;
  }

  v43 = v40[2];
  v42 = v40[3];
  if (v43 >= v42 >> 1)
  {
    v40 = sub_188E4B69C((v42 > 1), v43 + 1, 1, v40);
  }

  v40[2] = v43 + 1;
  v44 = &v40[2 * v43];
  v44[4] = sub_188F0E0CC;
  v44[5] = v39;
  *(a8 + 112) = v40;
  swift_endAccess();
  sub_188AA7584();

LABEL_10:
  os_unfair_lock_unlock(v106 + 4);
  return v37;
}

double sub_188F01BB8(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v75 = a9;
  v76 = a7;
  v78 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936560);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (&v73 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936568);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v73 - v24;
  *&v26 = UIAnimationDragCoefficient();
  v27 = *&v26;
  signpost_c2_entryLock_start(v26, v28);
  v77 = a2[2];
  os_unfair_lock_lock(v77 + 4);
  signpost_c2_entryLock_start(v29, v30);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    *(v31 + 16) = 1;
    v33 = 0.0;
LABEL_5:
    v34 = swift_allocObject();
    v34[2] = a2;
    v34[3] = a11;
    v35 = v78;
    v34[4] = a12;
    v34[5] = v35;
    v34[6] = a8;
    v34[7] = v31;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_188F0D528;
    *(v36 + 24) = v34;
    swift_beginAccess();
    v37 = *(a8 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_188E4B69C(0, v37[2] + 1, 1, v37);
      *(a8 + 112) = v37;
    }

    v40 = v37[2];
    v39 = v37[3];
    if (v40 >= v39 >> 1)
    {
      v37 = sub_188E4B69C((v39 > 1), v40 + 1, 1, v37);
    }

    v37[2] = v40 + 1;
    v41 = &v37[2 * v40];
    v41[4] = sub_188F0E0CC;
    v41[5] = v36;
    *(a8 + 112) = v37;
    swift_endAccess();
    sub_188AA7584();

    goto LABEL_10;
  }

  signpost_c2_entryLock_start(v27, v32);
  v43 = *(v78 + 24);
  os_unfair_lock_lock((v43 + 48));
  v45 = *(v43 + 32);
  v44 = *(v43 + 40);
  os_unfair_lock_unlock((v43 + 48));
  v46 = *(*a2 + 104);
  swift_beginAccess();
  v74 = v46;
  v47 = sub_188C55C38(a4 / v27);
  v49 = v48;
  swift_endAccess();
  objc_opt_self();
  v50 = +[UIScreen _mainScreen];
  [v50 scale];
  v52 = v51;

  v53 = vabdd_f64(v47, v45) / (1.0 / v52);
  v54 = vabdd_f64(v49, v44);
  v55 = +[UIScreen _mainScreen];
  [v55 scale];
  v57 = v56;

  if (v53 > v54 / (1.0 / v57))
  {
    v33 = v53;
  }

  else
  {
    v33 = v54 / (1.0 / v57);
  }

  os_unfair_lock_lock((v43 + 48));
  *(v43 + 32) = v47;
  *(v43 + 40) = v49;
  os_unfair_lock_unlock((v43 + 48));
  signpost_c2_entryLock_start(v58, v59);
  v60 = sub_188C55FB0();
  if ((v60 & 1) == 0)
  {
    v63 = sub_188F00028();
    v65 = v64;
LABEL_25:
    v62 = v76;
    goto LABEL_26;
  }

  sub_188A3F29C(a2 + v74, v25, &qword_1EA936568);
  sub_188A3F704(v25, v22, &qword_1EA936568);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v22, v19, &qword_1EA936560);
      v47 = v19[6];
      v49 = v19[7];
      sub_188A3F5FC(v19, &qword_1EA936560);
    }

    else
    {
      v47 = *v22;
      v49 = v22[1];
    }

    v63 = 0.0;
    v65 = 0;
    goto LABEL_25;
  }

  v62 = v76;
  if (EnumCaseMultiPayload)
  {
    v47 = v22[8];
    v49 = v22[9];
  }

  else
  {
    v47 = v22[20];
    v49 = v22[21];
  }

  v63 = 0.0;
  v65 = 0;
LABEL_26:
  swift_beginAccess();
  if ((*(v62 + 32) & 1) != 0 || *(v62 + 16) != v47 || *(v62 + 24) != v49)
  {
    v66 = swift_allocObject();
    *(v66 + 16) = v75;
    *(v66 + 24) = a10;
    *(v66 + 32) = v47;
    *(v66 + 40) = v49;
    *(v66 + 48) = v63;
    *(v66 + 56) = v65;
    v67 = swift_allocObject();
    *(v67 + 16) = sub_188F0E054;
    *(v67 + 24) = v66;
    swift_beginAccess();
    v68 = *(a8 + 112);

    v69 = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v68;
    if ((v69 & 1) == 0)
    {
      v68 = sub_188E4B69C(0, v68[2] + 1, 1, v68);
      *(a8 + 112) = v68;
    }

    v71 = v68[2];
    v70 = v68[3];
    if (v71 >= v70 >> 1)
    {
      v68 = sub_188E4B69C((v70 > 1), v71 + 1, 1, v68);
    }

    v68[2] = v71 + 1;
    v72 = &v68[2 * v71];
    v72[4] = sub_188F0E0CC;
    v72[5] = v67;
    *(a8 + 112) = v68;
    swift_endAccess();
    sub_188AA7584();
  }

  swift_beginAccess();
  *(v62 + 16) = v47;
  *(v62 + 24) = v49;
  *(v62 + 32) = 0;
  if (v60)
  {
    goto LABEL_5;
  }

LABEL_10:

  os_unfair_lock_unlock(v77 + 4);
  return v33;
}

double sub_188F02240(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *&v20 = UIAnimationDragCoefficient();
  v21 = *&v20;
  signpost_c2_entryLock_start(v20, v22);
  v23 = a2[2];
  os_unfair_lock_lock(v23 + 4);
  signpost_c2_entryLock_start(v24, v25);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  if ((*(a2 + *(*a2 + 120)) & 1) == 0 && (a1 & 1) == 0 && (a3() & 1) == 0)
  {
    v61 = a7;
    v58 = v23;
    signpost_c2_entryLock_start(v21, v27);
    v37 = *(a6 + 24);
    os_unfair_lock_lock((v37 + 32));
    v38 = *(v37 + 24);

    os_unfair_lock_unlock((v37 + 32));
    swift_beginAccess();
    v39 = sub_188CD121C(a4 / v21);
    swift_endAccess();
    v28 = sub_18914A018(v38, v39);
    MEMORY[0x1EEE9AC00](v40);

    os_unfair_lock_lock((v37 + 32));
    sub_188CD1F3C(v37 + 16);
    os_unfair_lock_unlock((v37 + 32));

    signpost_c2_entryLock_start(v41, v42);
    v43 = sub_188CD1C88();
    if (v43)
    {
      v44 = sub_188CD1F8C();
      v60 = 0;
    }

    else
    {

      v60 = sub_188F001DC();
      v44 = v39;
    }

    v45 = v61;
    swift_beginAccess();
    v46 = *(v61 + 16);
    v59 = v44;
    if (v46)
    {
      if (v46 != 1)
      {
        if (v44)
        {
          v47 = sub_1890154CC(v46, v44);
          sub_188F0D090(v46);
          if ((v47 & 1) == 0)
          {
            v57 = v43;
            v48 = v59;

LABEL_22:
            v49 = swift_allocObject();
            v49[2] = a9;
            v49[3] = a10;
            v49[4] = v48;
            v49[5] = v60;
            v50 = swift_allocObject();
            *(v50 + 16) = sub_188F0D5A4;
            *(v50 + 24) = v49;
            swift_beginAccess();
            v51 = *(a8 + 112);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(a8 + 112) = v51;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v51 = sub_188E4B69C(0, v51[2] + 1, 1, v51);
              *(a8 + 112) = v51;
            }

            v54 = v51[2];
            v53 = v51[3];
            if (v54 >= v53 >> 1)
            {
              v51 = sub_188E4B69C((v53 > 1), v54 + 1, 1, v51);
            }

            v51[2] = v54 + 1;
            v55 = &v51[2 * v54];
            v55[4] = sub_188F0E0CC;
            v55[5] = v50;
            *(a8 + 112) = v51;
            swift_endAccess();
            sub_188AA7584();

            v45 = v61;
            v43 = v57;
LABEL_28:

            swift_beginAccess();
            v56 = *(v45 + 16);
            *(v45 + 16) = v59;
            sub_188CD0030(v56);
            v23 = v58;
            if ((v43 & 1) == 0)
            {
              goto LABEL_10;
            }

            goto LABEL_5;
          }

LABEL_27:

          goto LABEL_28;
        }

        v57 = v43;
        sub_188F0D090(v46);

LABEL_21:
        v48 = v44;
        goto LABEL_22;
      }
    }

    else
    {
      sub_188F0D090(0);
      if (!v44)
      {
        goto LABEL_27;
      }
    }

    v57 = v43;

    goto LABEL_21;
  }

  *(v26 + 16) = 1;
  v28 = 0.0;
LABEL_5:
  v29 = swift_allocObject();
  v29[2] = a2;
  v29[3] = a11;
  v29[4] = a12;
  v29[5] = a6;
  v29[6] = a8;
  v29[7] = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_188F0D5E8;
  *(v30 + 24) = v29;
  swift_beginAccess();
  v31 = *(a8 + 112);

  v32 = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 112) = v31;
  if ((v32 & 1) == 0)
  {
    v31 = sub_188E4B69C(0, v31[2] + 1, 1, v31);
    *(a8 + 112) = v31;
  }

  v34 = v31[2];
  v33 = v31[3];
  if (v34 >= v33 >> 1)
  {
    v31 = sub_188E4B69C((v33 > 1), v34 + 1, 1, v31);
  }

  v31[2] = v34 + 1;
  v35 = &v31[2 * v34];
  v35[4] = sub_188F0E0CC;
  v35[5] = v30;
  *(a8 + 112) = v31;
  swift_endAccess();
  sub_188AA7584();

LABEL_10:

  os_unfair_lock_unlock(v23 + 4);
  return v28;
}

double sub_188F02800(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v93 = a9;
  v94 = a7;
  v97 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365C0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v92 = &v86[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365C8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v86[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v86[-v23];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v86[-v26];
  *&v28 = UIAnimationDragCoefficient();
  v29 = *&v28;
  signpost_c2_entryLock_start(v28, v30);
  v96 = a2[2];
  os_unfair_lock_lock(v96 + 4);
  signpost_c2_entryLock_start(v31, v32);
  v95 = swift_allocObject();
  *(v95 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    v34 = v95;
    *(v95 + 16) = 1;
    v35 = 0.0;
    goto LABEL_5;
  }

  signpost_c2_entryLock_start(v29, v33);
  v45 = *(v97 + 24);
  os_unfair_lock_lock((v45 + 144));
  v46 = *(v45 + 96);
  v115[0] = *(v45 + 80);
  v115[1] = v46;
  v47 = *(v45 + 128);
  v115[2] = *(v45 + 112);
  v115[3] = v47;
  os_unfair_lock_unlock((v45 + 144));
  v48 = *(*a2 + 104);
  swift_beginAccess();
  sub_188EF0608(&v111, a4 / v29);
  swift_endAccess();
  v115[4] = v111;
  v115[5] = v112;
  v115[6] = v113;
  v115[7] = v114;
  v35 = sub_188EB989C(v115);
  os_unfair_lock_lock((v45 + 144));
  v49 = v112;
  *(v45 + 80) = v111;
  *(v45 + 96) = v49;
  v50 = v114;
  *(v45 + 112) = v113;
  *(v45 + 128) = v50;
  os_unfair_lock_unlock((v45 + 144));
  signpost_c2_entryLock_start(v51, v52);
  v87 = sub_188F078BC();
  if ((v87 & 1) == 0)
  {
    v90 = v111;
    v91 = v112;
    v88 = v113;
    v89 = v114;
    swift_beginAccess();
    sub_188A3F29C(a2 + v48, v21, &qword_1EA9365C8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v54 = v94;
      if (EnumCaseMultiPayload != 2)
      {
        v68 = *(v21 + 5);
        v107 = *(v21 + 4);
        v108 = v68;
        v60 = *(v21 + 6);
        v61 = *(v21 + 7);
        goto LABEL_26;
      }

      v66 = v92;
      sub_188A3F704(v21, v92, &qword_1EA9365C0);
      sub_188EF52DC(&v107);
      sub_188A3F5FC(v66, &qword_1EA9365C0);
    }

    else
    {
      v54 = v94;
      if (!EnumCaseMultiPayload)
      {
        v59 = *(v21 + 18);
        v107 = *(v21 + 17);
        v108 = v59;
        v60 = *(v21 + 19);
        v61 = *(v21 + 20);
LABEL_26:
        v109 = v60;
        v110 = v61;
        goto LABEL_27;
      }

      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
    }

LABEL_27:
    v34 = v95;
    swift_endAccess();
    goto LABEL_28;
  }

  sub_188A3F29C(a2 + v48, v27, &qword_1EA9365C8);
  sub_188A3F704(v27, v24, &qword_1EA9365C8);
  v53 = swift_getEnumCaseMultiPayload();
  if (v53 <= 1)
  {
    v54 = v94;
    v34 = v95;
    v55 = v24[14];
    v90 = v24[13];
    v91 = v55;
    v56 = v24[15];
    v57 = v24[16];
LABEL_23:
    v89 = v57;
    v88 = v56;
    goto LABEL_24;
  }

  v54 = v94;
  v34 = v95;
  if (v53 != 2)
  {
    v67 = v24[1];
    v90 = *v24;
    v91 = v67;
    v56 = v24[2];
    v57 = v24[3];
    goto LABEL_23;
  }

  v62 = v24;
  v63 = v92;
  sub_188A3F704(v62, v92, &qword_1EA9365C0);
  v64 = v63[10];
  v90 = v63[9];
  v91 = v64;
  v65 = v63[12];
  v88 = v63[11];
  v89 = v65;
  sub_188A3F5FC(v63, &qword_1EA9365C0);
LABEL_24:
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
LABEL_28:
  swift_beginAccess();
  v69 = 0;
  v70 = *(v54 + 80);
  v106 = 0;
  if ((v70 & 1) != 0 || (v71 = *(v54 + 32), v102 = *(v54 + 16), v103 = v71, v72 = *(v54 + 64), v104 = *(v54 + 48), v105 = v72, v98 = v90, v99 = v91, v100 = v88, v101 = v89, !CACornerRadiiEqualToRadii()))
  {
    v73 = swift_allocObject();
    *(v73 + 16) = v93;
    *(v73 + 24) = a10;
    v74 = v91;
    *(v73 + 32) = v90;
    *(v73 + 48) = v74;
    v75 = v89;
    *(v73 + 64) = v88;
    *(v73 + 80) = v75;
    v76 = v108;
    *(v73 + 96) = v107;
    *(v73 + 112) = v76;
    v77 = v110;
    *(v73 + 128) = v109;
    *(v73 + 144) = v77;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_188F0D848;
    *(v78 + 24) = v73;
    swift_beginAccess();
    v79 = *(a8 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v79;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v79 = sub_188E4B69C(0, v79[2] + 1, 1, v79);
      *(a8 + 112) = v79;
    }

    v82 = v79[2];
    v81 = v79[3];
    if (v82 >= v81 >> 1)
    {
      v79 = sub_188E4B69C((v81 > 1), v82 + 1, 1, v79);
    }

    v79[2] = v82 + 1;
    v83 = &v79[2 * v82];
    v83[4] = sub_188F0E0CC;
    v83[5] = v78;
    *(a8 + 112) = v79;
    swift_endAccess();
    sub_188AA7584();

    v69 = v106;
  }

  swift_beginAccess();
  v84 = v91;
  *(v54 + 16) = v90;
  *(v54 + 32) = v84;
  v85 = v89;
  *(v54 + 48) = v88;
  *(v54 + 64) = v85;
  *(v54 + 80) = v69;
  if ((v87 & 1) == 0)
  {

    goto LABEL_10;
  }

LABEL_5:
  v36 = swift_allocObject();
  v36[2] = a2;
  v36[3] = a11;
  v37 = v97;
  v36[4] = a12;
  v36[5] = v37;
  v36[6] = a8;
  v36[7] = v34;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_188F0D8A4;
  *(v38 + 24) = v36;
  swift_beginAccess();
  v39 = *(a8 + 112);

  v40 = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 112) = v39;
  if ((v40 & 1) == 0)
  {
    v39 = sub_188E4B69C(0, v39[2] + 1, 1, v39);
    *(a8 + 112) = v39;
  }

  v42 = v39[2];
  v41 = v39[3];
  if (v42 >= v41 >> 1)
  {
    v39 = sub_188E4B69C((v41 > 1), v42 + 1, 1, v39);
  }

  v39[2] = v42 + 1;
  v43 = &v39[2 * v42];
  v43[4] = sub_188F0E0CC;
  v43[5] = v38;
  *(a8 + 112) = v39;
  swift_endAccess();
  sub_188AA7584();

LABEL_10:
  os_unfair_lock_unlock(v96 + 4);
  return v35;
}

double sub_188F02F90(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *&v20 = UIAnimationDragCoefficient();
  v21 = *&v20;
  signpost_c2_entryLock_start(v20, v22);
  v23 = a2[2];
  os_unfair_lock_lock(v23 + 4);
  signpost_c2_entryLock_start(v24, v25);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    *(v26 + 16) = 1;
    v28 = 0.0;
  }

  else
  {
    v59 = a7;
    v57 = v23;
    signpost_c2_entryLock_start(v21, v27);
    v37 = *(a6 + 24);
    os_unfair_lock_lock((v37 + 32));
    v38 = *(v37 + 24);

    os_unfair_lock_unlock((v37 + 32));
    swift_beginAccess();
    v39 = sub_188D758A4(a4 / v21);
    swift_endAccess();
    v40 = sub_188F491B0(v38, v39);
    v28 = v41;
    MEMORY[0x1EEE9AC00](v40);

    os_unfair_lock_lock((v37 + 32));
    sub_188CD1F3C(v37 + 16);
    os_unfair_lock_unlock((v37 + 32));

    signpost_c2_entryLock_start(v42, v43);
    v44 = sub_188D75B7C();
    if (v44)
    {
      v45 = sub_188D77508();
      v58 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v58 = sub_188D75E64();
      v45 = v39;
    }

    v46 = v59;
    swift_beginAccess();
    v47 = *(v59 + 16);
    if (v47 && (sub_188BD69E4(v45, v47, 0.0) & 1) != 0)
    {
    }

    else
    {
      v56 = v44;
      v48 = swift_allocObject();
      v48[2] = a9;
      v48[3] = a10;
      v48[4] = v45;
      v48[5] = v58;
      v49 = swift_allocObject();
      *(v49 + 16) = sub_188F0D5A4;
      *(v49 + 24) = v48;
      v55 = v49;
      swift_beginAccess();
      v50 = *(a8 + 112);
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a8 + 112) = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v50 = sub_188E4B69C(0, v50[2] + 1, 1, v50);
        *(a8 + 112) = v50;
      }

      v53 = v50[2];
      v52 = v50[3];
      if (v53 >= v52 >> 1)
      {
        v50 = sub_188E4B69C((v52 > 1), v53 + 1, 1, v50);
      }

      v50[2] = v53 + 1;
      v54 = &v50[2 * v53];
      v54[4] = sub_188F0E0CC;
      v54[5] = v55;
      *(a8 + 112) = v50;
      swift_endAccess();
      sub_188AA7584();

      v46 = v59;
      v44 = v56;
    }

    swift_beginAccess();
    *(v46 + 16) = v45;

    if ((v44 & 1) == 0)
    {
      v23 = v57;
      goto LABEL_10;
    }

    v23 = v57;
  }

  v29 = swift_allocObject();
  v29[2] = a2;
  v29[3] = a11;
  v29[4] = a12;
  v29[5] = a6;
  v29[6] = a8;
  v29[7] = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_188F0D924;
  *(v30 + 24) = v29;
  swift_beginAccess();
  v31 = *(a8 + 112);

  v32 = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 112) = v31;
  if ((v32 & 1) == 0)
  {
    v31 = sub_188E4B69C(0, v31[2] + 1, 1, v31);
    *(a8 + 112) = v31;
  }

  v34 = v31[2];
  v33 = v31[3];
  if (v34 >= v33 >> 1)
  {
    v31 = sub_188E4B69C((v33 > 1), v34 + 1, 1, v31);
  }

  v31[2] = v34 + 1;
  v35 = &v31[2 * v34];
  v35[4] = sub_188F0E0CC;
  v35[5] = v30;
  *(a8 + 112) = v31;
  swift_endAccess();
  sub_188AA7584();

LABEL_10:

  os_unfair_lock_unlock(v23 + 4);
  return v28;
}

double sub_188F034D4(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *&v20 = UIAnimationDragCoefficient();
  v21 = *&v20;
  signpost_c2_entryLock_start(v20, v22);
  v23 = a2[2];
  os_unfair_lock_lock(v23 + 4);
  signpost_c2_entryLock_start(v24, v25);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  if ((*(a2 + *(*a2 + 120)) & 1) == 0 && (a1 & 1) == 0 && (a3() & 1) == 0)
  {
    v64 = a9;
    v68 = v23;
    signpost_c2_entryLock_start(v21, v27);
    v37 = *(a6 + 24);
    os_unfair_lock_lock((v37 + 96));
    v38 = *(v37 + 56);
    sub_188F0B550(v38);
    os_unfair_lock_unlock((v37 + 96));
    swift_beginAccess();
    sub_188EF082C(&v79, a4 / v21);
    v77 = *v80;
    v76 = v79;
    v74 = v80[20];
    v39 = *&v80[16];
    v40 = swift_endAccess();
    v83 = v79;
    *v84 = *v80;
    *&v84[13] = *&v80[13];
    v67 = a6;
    v66 = v38;
    if (v79)
    {
      if (v38)
      {
        v40 = sub_189090CE0(v38, v79, 0.00000001);
LABEL_18:
        v28 = v41;
        goto LABEL_19;
      }

      v42 = v79;
    }

    else
    {
      if (!v38)
      {
        v28 = 0.0;
LABEL_19:
        v81 = v79;
        *v82 = *v80;
        *&v82[13] = *&v80[13];
        MEMORY[0x1EEE9AC00](v40);
        sub_188F0D40C(&v83, v78);
        os_unfair_lock_lock((v37 + 96));
        sub_188F0D960(v37 + 16);
        os_unfair_lock_unlock((v37 + 96));
        sub_188F0D344(&v79);
        signpost_c2_entryLock_start(v43, v44);
        v65 = sub_188F07B8C();
        if (v65)
        {
          sub_188EF9BF4(&v81);
          v75 = 0;
          v73 = 0;
          v72 = 0;
          v71 = 0;
          v70 = 0;
          v77 = *v82;
          v76 = v81;
          v45 = *&v82[16] | (v82[20] << 32);
        }

        else
        {
          v45 = v39 | (v74 << 32);
          sub_188F0D40C(&v83, &v81);
          sub_188F00408(&v81);
          v73 = *(&v81 + 1);
          v75 = v81;
          v72 = *v82;
          v71 = *&v82[8];
          v70 = *&v82[16] | (v82[20] << 32);
        }

        swift_beginAccess();
        v46 = *(a7 + 16);
        v47 = HIDWORD(v45);
        if (v46)
        {
          v69 = HIDWORD(v45);
          if (v46 == 1)
          {
            sub_188F0B550(v76);
            sub_188F0B550(v76);
            sub_188F0D3FC(1);
            sub_188F0D3FC(v76);
            goto LABEL_34;
          }

          if (!v76)
          {
            sub_188F0B550(0);
            sub_188F0D3EC(v46);
            sub_188F0B59C(v46);
            goto LABEL_34;
          }

          v62 = sub_189090578(v46, v76);
          sub_188F0B550(v76);
          sub_188F0D3EC(v46);
          sub_188F0B59C(v46);
          if (!v62)
          {
LABEL_34:
            v51 = swift_allocObject();
            v52 = v45;
            v61 = v45;
            v53 = v51;
            *(v51 + 16) = v64;
            *(v51 + 24) = a10;
            *(v51 + 32) = v76;
            *(v51 + 48) = v77;
            *(v51 + 68) = v69;
            *(v51 + 64) = v52;
            *(v51 + 72) = v75;
            *(v51 + 80) = v73;
            *(v51 + 88) = v72;
            *(v51 + 96) = v71;
            *(v51 + 108) = BYTE4(v70);
            *(v51 + 104) = v70;
            v54 = swift_allocObject();
            *(v54 + 16) = sub_188F0D97C;
            *(v54 + 24) = v53;
            v63 = v54;
            swift_beginAccess();
            v55 = *(a8 + 112);
            v50 = v61;
            sub_188F0B550(v76);

            sub_188F0B550(v75);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(a8 + 112) = v55;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v55 = sub_188E4B69C(0, v55[2] + 1, 1, v55);
              *(a8 + 112) = v55;
            }

            v47 = v55[2];
            v57 = v55[3];
            if (v47 >= v57 >> 1)
            {
              v55 = sub_188E4B69C((v57 > 1), v47 + 1, 1, v55);
            }

            v55[2] = v47 + 1;
            v58 = &v55[2 * v47];
            v58[4] = sub_188F0E0CC;
            v58[5] = v63;
            *(a8 + 112) = v55;
            swift_endAccess();
            sub_188AA7584();
            sub_188F0B59C(v76);
            sub_188F0B59C(v75);

            sub_188F0D344(&v79);
            v23 = v68;
            a6 = v67;
            v49 = v65;
            LOBYTE(v47) = v69;
LABEL_39:
            sub_188F0B59C(v66);
            swift_beginAccess();
            v59 = a7 + 48;
            v60 = *(v59 - 32);
            *(v59 - 32) = v76;
            *(v59 - 16) = v77;
            *v59 = v50;
            *(v59 + 4) = v47;
            sub_188F0D3FC(v60);
            if ((v49 & 1) == 0)
            {
              goto LABEL_10;
            }

            goto LABEL_5;
          }

          v48 = v45;
          sub_188F0B59C(v76);
          LOBYTE(v47) = BYTE4(v45);
        }

        else
        {
          if (v76)
          {
            v69 = HIDWORD(v45);
            sub_188F0B550(v76);
            sub_188F0D3EC(0);
            goto LABEL_34;
          }

          v48 = v45;
          sub_188F0D3EC(0);
        }

        sub_188F0D344(&v79);
        sub_188F0B59C(v75);
        v23 = v68;
        v49 = v65;
        v50 = v48;
        goto LABEL_39;
      }

      v42 = v38;
    }

    v41 = sub_189090C68(v42, 0.00000001);
    goto LABEL_18;
  }

  *(v26 + 16) = 1;
  v28 = 0.0;
LABEL_5:
  v29 = swift_allocObject();
  v29[2] = a2;
  v29[3] = a11;
  v29[4] = a12;
  v29[5] = a6;
  v29[6] = a8;
  v29[7] = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_188F0D98C;
  *(v30 + 24) = v29;
  swift_beginAccess();
  v31 = *(a8 + 112);

  v32 = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 112) = v31;
  if ((v32 & 1) == 0)
  {
    v31 = sub_188E4B69C(0, v31[2] + 1, 1, v31);
    *(a8 + 112) = v31;
  }

  v34 = v31[2];
  v33 = v31[3];
  if (v34 >= v33 >> 1)
  {
    v31 = sub_188E4B69C((v33 > 1), v34 + 1, 1, v31);
  }

  v31[2] = v34 + 1;
  v35 = &v31[2 * v34];
  v35[4] = sub_188F0E0CC;
  v35[5] = v30;
  *(a8 + 112) = v31;
  swift_endAccess();
  sub_188AA7584();

LABEL_10:

  os_unfair_lock_unlock(v23 + 4);
  return v28;
}

double sub_188F03FFC(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v63 = a9;
  v64 = a7;
  v66 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936658);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v61[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936660);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v61[-v24];
  *&v26 = UIAnimationDragCoefficient();
  v27 = *&v26;
  signpost_c2_entryLock_start(v26, v28);
  v65 = a2[2];
  os_unfair_lock_lock(v65 + 4);
  signpost_c2_entryLock_start(v29, v30);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    *(v31 + 16) = 1;
    v33 = 0.0;
LABEL_5:
    v34 = swift_allocObject();
    v34[2] = a2;
    v34[3] = a11;
    v35 = v66;
    v34[4] = a12;
    v34[5] = v35;
    v34[6] = a8;
    v34[7] = v31;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_188F0D9C4;
    *(v36 + 24) = v34;
    swift_beginAccess();
    v37 = *(a8 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_188E4B69C(0, v37[2] + 1, 1, v37);
      *(a8 + 112) = v37;
    }

    v40 = v37[2];
    v39 = v37[3];
    if (v40 >= v39 >> 1)
    {
      v37 = sub_188E4B69C((v39 > 1), v40 + 1, 1, v37);
    }

    v37[2] = v40 + 1;
    v41 = &v37[2 * v40];
    v41[4] = sub_188F0E0CC;
    v41[5] = v36;
    *(a8 + 112) = v37;
    swift_endAccess();
    sub_188AA7584();

    goto LABEL_10;
  }

  signpost_c2_entryLock_start(v27, v32);
  v43 = *(v66 + 24);
  os_unfair_lock_lock((v43 + 32));
  v44 = *(v43 + 24);
  os_unfair_lock_unlock((v43 + 32));
  v45 = *(*a2 + 104);
  swift_beginAccess();
  v46 = sub_188EF10E0(a4 / v27);
  swift_endAccess();
  os_unfair_lock_lock((v43 + 32));
  *(v43 + 24) = v46;
  os_unfair_lock_unlock((v43 + 32));
  signpost_c2_entryLock_start(v47, v48);
  v62 = sub_188AB3838();
  if (!v62)
  {
    v52 = sub_188AB715C();
    v51 = v46;
LABEL_17:
    v50 = v64;
    goto LABEL_18;
  }

  sub_188A3F29C(a2 + v45, v25, &qword_1EA936660);
  sub_188A3F704(v25, v22, &qword_1EA936660);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v22, v19, &qword_1EA936658);
      v51 = v19[4];
      sub_188A3F5FC(v19, &qword_1EA936658);
    }

    else
    {
      v51 = *v22;
    }

    v52 = 0.0;
    goto LABEL_17;
  }

  v50 = v64;
  if (EnumCaseMultiPayload)
  {
    v51 = v22[5];
  }

  else
  {
    v51 = v22[19];
  }

  v52 = 0.0;
LABEL_18:
  v53 = vabdd_f64(v46, v44);
  swift_beginAccess();
  if ((*(v50 + 24) & 1) != 0 || *(v50 + 16) != v51)
  {
    v54 = swift_allocObject();
    *(v54 + 16) = v63;
    *(v54 + 24) = a10;
    *(v54 + 32) = v51;
    *(v54 + 40) = v52;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_188F0E05C;
    *(v55 + 24) = v54;
    swift_beginAccess();
    v56 = *(a8 + 112);

    v57 = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v56;
    if ((v57 & 1) == 0)
    {
      v56 = sub_188E4B69C(0, v56[2] + 1, 1, v56);
      *(a8 + 112) = v56;
    }

    v59 = v56[2];
    v58 = v56[3];
    if (v59 >= v58 >> 1)
    {
      v56 = sub_188E4B69C((v58 > 1), v59 + 1, 1, v56);
    }

    v56[2] = v59 + 1;
    v60 = &v56[2 * v59];
    v60[4] = sub_188F0E0CC;
    v60[5] = v55;
    *(a8 + 112) = v56;
    swift_endAccess();
    sub_188AA7584();
  }

  v33 = v53 / 0.001;
  swift_beginAccess();
  *(v50 + 16) = v51;
  *(v50 + 24) = 0;
  if (v62)
  {
    goto LABEL_5;
  }

LABEL_10:

  os_unfair_lock_unlock(v65 + 4);
  return v33;
}

double sub_188F045E8(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v68 = a9;
  v69 = a7;
  v71 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936688);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v66[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936690);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v66[-v24];
  *&v26 = UIAnimationDragCoefficient();
  v27 = *&v26;
  signpost_c2_entryLock_start(v26, v28);
  v70 = a2[2];
  os_unfair_lock_lock(v70 + 4);
  signpost_c2_entryLock_start(v29, v30);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    *(v31 + 16) = 1;
    v33 = 0.0;
LABEL_5:
    v34 = swift_allocObject();
    v34[2] = a2;
    v34[3] = a11;
    v35 = v71;
    v34[4] = a12;
    v34[5] = v35;
    v34[6] = a8;
    v34[7] = v31;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_188F0D9FC;
    *(v36 + 24) = v34;
    swift_beginAccess();
    v37 = *(a8 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_188E4B69C(0, v37[2] + 1, 1, v37);
      *(a8 + 112) = v37;
    }

    v40 = v37[2];
    v39 = v37[3];
    if (v40 >= v39 >> 1)
    {
      v37 = sub_188E4B69C((v39 > 1), v40 + 1, 1, v37);
    }

    v37[2] = v40 + 1;
    v41 = &v37[2 * v40];
    v41[4] = sub_188F0E0CC;
    v41[5] = v36;
    *(a8 + 112) = v37;
    swift_endAccess();
    sub_188AA7584();

    goto LABEL_10;
  }

  signpost_c2_entryLock_start(v27, v32);
  v43 = *(v71 + 24);
  os_unfair_lock_lock((v43 + 48));
  v44 = *(v43 + 32);
  v45 = *(v43 + 40);
  os_unfair_lock_unlock((v43 + 48));
  v46 = *(*a2 + 104);
  swift_beginAccess();
  v47 = sub_188EF13C8(a4 / v27);
  v49 = v48;
  swift_endAccess();
  v50 = vabdd_f64(v47, v44) / 0.001;
  v51 = vabdd_f64(v49, v45);
  if (v50 > v51 / 0.001)
  {
    v33 = v50;
  }

  else
  {
    v33 = v51 / 0.001;
  }

  os_unfair_lock_lock((v43 + 48));
  *(v43 + 32) = v47;
  *(v43 + 40) = v49;
  os_unfair_lock_unlock((v43 + 48));
  signpost_c2_entryLock_start(v52, v53);
  v67 = sub_188D1FDE0();
  if ((v67 & 1) == 0)
  {
    v56 = sub_188F006F4();
    v58 = v57;
LABEL_25:
    v55 = v69;
    goto LABEL_26;
  }

  sub_188A3F29C(a2 + v46, v25, &qword_1EA936690);
  sub_188A3F704(v25, v22, &qword_1EA936690);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v22, v19, &qword_1EA936688);
      v47 = v19[6];
      v49 = v19[7];
      sub_188A3F5FC(v19, &qword_1EA936688);
    }

    else
    {
      v47 = *v22;
      v49 = v22[1];
    }

    v56 = 0.0;
    v58 = 0;
    goto LABEL_25;
  }

  v55 = v69;
  if (EnumCaseMultiPayload)
  {
    v47 = v22[8];
    v49 = v22[9];
  }

  else
  {
    v47 = v22[20];
    v49 = v22[21];
  }

  v56 = 0.0;
  v58 = 0;
LABEL_26:
  swift_beginAccess();
  if ((*(v55 + 32) & 1) != 0 || *(v55 + 16) != v47 || *(v55 + 24) != v49)
  {
    v59 = swift_allocObject();
    *(v59 + 16) = v68;
    *(v59 + 24) = a10;
    *(v59 + 32) = v47;
    *(v59 + 40) = v49;
    *(v59 + 48) = v56;
    *(v59 + 56) = v58;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_188F0D9F8;
    *(v60 + 24) = v59;
    swift_beginAccess();
    v61 = *(a8 + 112);

    v62 = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v61;
    if ((v62 & 1) == 0)
    {
      v61 = sub_188E4B69C(0, v61[2] + 1, 1, v61);
      *(a8 + 112) = v61;
    }

    v64 = v61[2];
    v63 = v61[3];
    if (v64 >= v63 >> 1)
    {
      v61 = sub_188E4B69C((v63 > 1), v64 + 1, 1, v61);
    }

    v61[2] = v64 + 1;
    v65 = &v61[2 * v64];
    v65[4] = sub_188F0E0CC;
    v65[5] = v60;
    *(a8 + 112) = v61;
    swift_endAccess();
    sub_188AA7584();
  }

  swift_beginAccess();
  *(v55 + 16) = v47;
  *(v55 + 24) = v49;
  *(v55 + 32) = 0;
  if (v67)
  {
    goto LABEL_5;
  }

LABEL_10:

  os_unfair_lock_unlock(v70 + 4);
  return v33;
}

double sub_188F04C04(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v90 = a9;
  v91 = a7;
  v95 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366B8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v86[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366C0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v86[-v24];
  *&v26 = UIAnimationDragCoefficient();
  v27 = *&v26;
  signpost_c2_entryLock_start(v26, v28);
  v94 = a2[2];
  os_unfair_lock_lock(v94 + 4);
  signpost_c2_entryLock_start(v29, v30);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    *(v31 + 16) = 1;
    v33 = 0.0;
LABEL_5:
    v34 = swift_allocObject();
    v34[2] = a2;
    v34[3] = a11;
    v35 = v95;
    v34[4] = a12;
    v34[5] = v35;
    v34[6] = a8;
    v34[7] = v31;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_188F0DAE4;
    *(v36 + 24) = v34;
    swift_beginAccess();
    v37 = *(a8 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_188E4B69C(0, v37[2] + 1, 1, v37);
      *(a8 + 112) = v37;
    }

    v40 = v37[2];
    v39 = v37[3];
    if (v40 >= v39 >> 1)
    {
      v37 = sub_188E4B69C((v39 > 1), v40 + 1, 1, v37);
    }

    v37[2] = v40 + 1;
    v41 = &v37[2 * v40];
    v41[4] = sub_188F0E0CC;
    v41[5] = v36;
    *(a8 + 112) = v37;
    swift_endAccess();
    sub_188AA7584();

    goto LABEL_10;
  }

  v43 = a4 / v27;
  signpost_c2_entryLock_start(v27, v32);
  v44 = *(v95 + 24);
  os_unfair_lock_lock((v44 + 80));
  v45 = *(v44 + 48);
  v46 = *(v44 + 56);
  v47 = *(v44 + 64);
  v48 = *(v44 + 72);
  os_unfair_lock_unlock((v44 + 80));
  v49 = *(*a2 + 104);
  swift_beginAccess();
  v50.f64[0] = sub_188C53BC8(v43);
  v92 = v50;
  v89 = v51;
  v93 = v52;
  v88 = v53;
  swift_endAccess();
  v54 = vabdd_f64(v92.f64[0], v45) / 0.01;
  v55 = vabdd_f64(*&v89, v46) / 0.01;
  v56 = vabdd_f64(v93.f64[0], v47) / 0.01;
  v57 = vabdd_f64(*&v88, v48);
  if (v54 <= v55)
  {
    v54 = v55;
  }

  if (v54 <= v56)
  {
    v54 = v56;
  }

  if (v54 > v57 / 0.01)
  {
    v33 = v54;
  }

  else
  {
    v33 = v57 / 0.01;
  }

  os_unfair_lock_lock((v44 + 80));
  v58 = v89;
  *(v44 + 48) = v92.f64[0];
  *(v44 + 56) = v58;
  v59 = v88;
  *(v44 + 64) = v93.f64[0];
  *(v44 + 72) = v59;
  os_unfair_lock_unlock((v44 + 80));
  signpost_c2_entryLock_start(v60, v61);
  v87 = sub_188C53E60();
  if ((v87 & 1) == 0)
  {
    v66 = sub_188C540E0();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v73.f64[0] = v93.f64[0];
    *&v73.f64[1] = v88;
    v93 = v73;
    v73.f64[0] = v92.f64[0];
    *&v73.f64[1] = v89;
    v92 = v73;
LABEL_29:
    v63 = v91;
    goto LABEL_30;
  }

  sub_188A3F29C(a2 + v49, v25, &qword_1EA9366C0);
  sub_188A3F704(v25, v22, &qword_1EA9366C0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v22, v19, &qword_1EA9366B8);
      v74 = v19[6];
      v92 = v19[5];
      v93 = v74;
      sub_188A3F5FC(v19, &qword_1EA9366B8);
    }

    else
    {
      v75 = v22[1];
      v92 = *v22;
      v93 = v75;
    }

    v72 = 0;
    v70 = 0;
    v68 = 0;
    v66 = 0.0;
    goto LABEL_29;
  }

  v63 = v91;
  if (EnumCaseMultiPayload)
  {
    v64 = v22[7];
    v65 = v22[8];
  }

  else
  {
    v64 = v22[11];
    v65 = v22[12];
  }

  v93 = v65;
  v92 = v64;
  v72 = 0;
  v70 = 0;
  v68 = 0;
  v66 = 0.0;
LABEL_30:
  swift_beginAccess();
  if ((*(v63 + 48) & 1) != 0 || (v85 = vmovn_s64(vceqq_f64(*(v63 + 16), v92)), (v85.i8[0] & 1) == 0) || (v85.i8[4] & 1) == 0 || *(v63 + 32) != v93.f64[0] || *(v63 + 40) != v93.f64[1])
  {
    v76 = swift_allocObject();
    *(v76 + 16) = v90;
    *(v76 + 24) = a10;
    v77 = v93;
    *(v76 + 32) = v92;
    *(v76 + 48) = v77;
    *(v76 + 64) = v66;
    *(v76 + 72) = v68;
    *(v76 + 80) = v70;
    *(v76 + 88) = v72;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_188F0DA98;
    *(v78 + 24) = v76;
    swift_beginAccess();
    v79 = *(a8 + 112);

    v80 = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v79;
    if ((v80 & 1) == 0)
    {
      v79 = sub_188E4B69C(0, v79[2] + 1, 1, v79);
      *(a8 + 112) = v79;
    }

    v82 = v79[2];
    v81 = v79[3];
    if (v82 >= v81 >> 1)
    {
      v79 = sub_188E4B69C((v81 > 1), v82 + 1, 1, v79);
    }

    v79[2] = v82 + 1;
    v83 = &v79[2 * v82];
    v83[4] = sub_188F0E0CC;
    v83[5] = v78;
    *(a8 + 112) = v79;
    swift_endAccess();
    sub_188AA7584();
  }

  swift_beginAccess();
  v84 = v93;
  *(v63 + 16) = v92;
  *(v63 + 32) = v84;
  *(v63 + 48) = 0;
  if (v87)
  {
    goto LABEL_5;
  }

LABEL_10:

  os_unfair_lock_unlock(v94 + 4);
  return v33;
}

double sub_188F0532C(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v64 = a9;
  v65 = a7;
  v67 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366E8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v62[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366F0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v62[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62[-v24];
  *&v26 = UIAnimationDragCoefficient();
  v27 = *&v26;
  signpost_c2_entryLock_start(v26, v28);
  v66 = a2[2];
  os_unfair_lock_lock(v66 + 4);
  signpost_c2_entryLock_start(v29, v30);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    *(v31 + 16) = 1;
    v33 = 0.0;
LABEL_5:
    v34 = swift_allocObject();
    v34[2] = a2;
    v34[3] = a11;
    v35 = v67;
    v34[4] = a12;
    v34[5] = v35;
    v34[6] = a8;
    v34[7] = v31;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_188F0DBAC;
    *(v36 + 24) = v34;
    swift_beginAccess();
    v37 = *(a8 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_188E4B69C(0, v37[2] + 1, 1, v37);
      *(a8 + 112) = v37;
    }

    v40 = v37[2];
    v39 = v37[3];
    if (v40 >= v39 >> 1)
    {
      v37 = sub_188E4B69C((v39 > 1), v40 + 1, 1, v37);
    }

    v37[2] = v40 + 1;
    v41 = &v37[2 * v40];
    v41[4] = sub_188F0E0CC;
    v41[5] = v36;
    *(a8 + 112) = v37;
    swift_endAccess();
    sub_188AA7584();

    goto LABEL_10;
  }

  signpost_c2_entryLock_start(v27, v32);
  v43 = *(v67 + 24);
  os_unfair_lock_lock((v43 + 32));
  v44 = *(v43 + 24);
  os_unfair_lock_unlock((v43 + 32));
  v45 = *(*a2 + 104);
  swift_beginAccess();
  v46 = sub_188EF1740(a4 / v27);
  swift_endAccess();
  if (qword_1EA931200 != -1)
  {
    swift_once();
  }

  v47 = *&qword_1EA994F30;
  os_unfair_lock_lock((v43 + 32));
  *(v43 + 24) = v46;
  os_unfair_lock_unlock((v43 + 32));
  signpost_c2_entryLock_start(v48, v49);
  v63 = sub_188AAAC5C();
  if (!v63)
  {
    v53 = sub_188AAAF70();
    v52 = v46;
LABEL_19:
    v51 = v65;
    goto LABEL_20;
  }

  sub_188A3F29C(a2 + v45, v25, &qword_1EA9366F0);
  sub_188A3F704(v25, v22, &qword_1EA9366F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v22, v19, &qword_1EA9366E8);
      v52 = v19[4];
      sub_188A3F5FC(v19, &qword_1EA9366E8);
    }

    else
    {
      v52 = *v22;
    }

    v53 = 0.0;
    goto LABEL_19;
  }

  v51 = v65;
  if (EnumCaseMultiPayload)
  {
    v52 = v22[5];
  }

  else
  {
    v52 = v22[19];
  }

  v53 = 0.0;
LABEL_20:
  v54 = vabdd_f64(v46, v44);
  swift_beginAccess();
  if ((*(v51 + 24) & 1) != 0 || *(v51 + 16) != v52)
  {
    v55 = swift_allocObject();
    *(v55 + 16) = v64;
    *(v55 + 24) = a10;
    *(v55 + 32) = v52;
    *(v55 + 40) = v53;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_188F0DB64;
    *(v56 + 24) = v55;
    swift_beginAccess();
    v57 = *(a8 + 112);

    v58 = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v57;
    if ((v58 & 1) == 0)
    {
      v57 = sub_188E4B69C(0, v57[2] + 1, 1, v57);
      *(a8 + 112) = v57;
    }

    v60 = v57[2];
    v59 = v57[3];
    if (v60 >= v59 >> 1)
    {
      v57 = sub_188E4B69C((v59 > 1), v60 + 1, 1, v57);
    }

    v57[2] = v60 + 1;
    v61 = &v57[2 * v60];
    v61[4] = sub_188F0E0CC;
    v61[5] = v56;
    *(a8 + 112) = v57;
    swift_endAccess();
    sub_188AA7584();
  }

  v33 = v54 / v47;
  swift_beginAccess();
  *(v51 + 16) = v52;
  *(v51 + 24) = 0;
  if (v63)
  {
    goto LABEL_5;
  }

LABEL_10:

  os_unfair_lock_unlock(v66 + 4);
  return v33;
}

double sub_188F05950(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v83 = a9;
  v84 = a7;
  v88 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936718);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v79[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936720);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v79[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v79[-v24];
  *&v26 = UIAnimationDragCoefficient();
  v27 = *&v26;
  signpost_c2_entryLock_start(v26, v28);
  v87 = a2[2];
  os_unfair_lock_lock(v87 + 4);
  signpost_c2_entryLock_start(v29, v30);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    *(v31 + 16) = 1;
    v33 = 0.0;
LABEL_5:
    v34 = swift_allocObject();
    v34[2] = a2;
    v34[3] = a11;
    v35 = v88;
    v34[4] = a12;
    v34[5] = v35;
    v34[6] = a8;
    v34[7] = v31;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_188F0DAE4;
    *(v36 + 24) = v34;
    swift_beginAccess();
    v37 = *(a8 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_188E4B69C(0, v37[2] + 1, 1, v37);
      *(a8 + 112) = v37;
    }

    v40 = v37[2];
    v39 = v37[3];
    if (v40 >= v39 >> 1)
    {
      v37 = sub_188E4B69C((v39 > 1), v40 + 1, 1, v37);
    }

    v37[2] = v40 + 1;
    v41 = &v37[2 * v40];
    v41[4] = sub_188F0E0CC;
    v41[5] = v36;
    *(a8 + 112) = v37;
    swift_endAccess();
    sub_188AA7584();

    goto LABEL_10;
  }

  v43 = a4 / v27;
  signpost_c2_entryLock_start(v27, v32);
  v44 = *(v88 + 24);
  os_unfair_lock_lock((v44 + 80));
  v45 = *(v44 + 48);
  v46 = *(v44 + 56);
  v47 = *(v44 + 64);
  v48 = *(v44 + 72);
  os_unfair_lock_unlock((v44 + 80));
  v49 = *(*a2 + 104);
  swift_beginAccess();
  *&v50 = sub_188EF1A28(v43);
  v85 = v50;
  v82 = v51;
  v86 = v52;
  v81 = v53;
  swift_endAccess();
  v33 = sub_18916F738(v45, v46, v47, v48, *&v85, *&v82, *&v86, *&v81);
  os_unfair_lock_lock((v44 + 80));
  *(v44 + 48) = v85;
  *(v44 + 56) = v82;
  *(v44 + 64) = v86;
  *(v44 + 72) = v81;
  os_unfair_lock_unlock((v44 + 80));
  signpost_c2_entryLock_start(v54, v55);
  v80 = sub_188AAA5C0();
  if ((v80 & 1) == 0)
  {
    v60 = sub_188F008A8();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    *&v67 = v86;
    *(&v67 + 1) = v81;
    v86 = v67;
    *&v67 = v85;
    *(&v67 + 1) = v82;
    v85 = v67;
LABEL_22:
    v57 = v84;
    goto LABEL_23;
  }

  sub_188A3F29C(a2 + v49, v25, &qword_1EA936720);
  sub_188A3F704(v25, v22, &qword_1EA936720);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v22, v19, &qword_1EA936718);
      v68 = *(v19 + 6);
      v85 = *(v19 + 5);
      v86 = v68;
      sub_188A3F5FC(v19, &qword_1EA936718);
    }

    else
    {
      v69 = v22[1];
      v85 = *v22;
      v86 = v69;
    }

    v60 = 0.0;
    v62 = 0;
    v64 = 0;
    v66 = 0;
    goto LABEL_22;
  }

  v57 = v84;
  if (EnumCaseMultiPayload)
  {
    v58 = v22[7];
    v59 = v22[8];
  }

  else
  {
    v58 = v22[11];
    v59 = v22[12];
  }

  v86 = v59;
  v85 = v58;
  v60 = 0.0;
  v62 = 0;
  v64 = 0;
  v66 = 0;
LABEL_23:
  swift_beginAccess();
  if ((*(v57 + 48) & 1) != 0 || (*&v89.origin.x = v85, *&v89.size.width = v86, v89.origin.y = *(&v85 + 1), v89.size.height = *(&v86 + 1), !CGRectEqualToRect(*(v57 + 16), v89)))
  {
    v70 = swift_allocObject();
    *(v70 + 16) = v83;
    *(v70 + 24) = a10;
    v71 = v86;
    *(v70 + 32) = v85;
    *(v70 + 48) = v71;
    *(v70 + 64) = v60;
    *(v70 + 72) = v62;
    *(v70 + 80) = v64;
    *(v70 + 88) = v66;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_188F0E068;
    *(v72 + 24) = v70;
    swift_beginAccess();
    v73 = *(a8 + 112);

    v74 = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v73;
    if ((v74 & 1) == 0)
    {
      v73 = sub_188E4B69C(0, v73[2] + 1, 1, v73);
      *(a8 + 112) = v73;
    }

    v76 = v73[2];
    v75 = v73[3];
    if (v76 >= v75 >> 1)
    {
      v73 = sub_188E4B69C((v75 > 1), v76 + 1, 1, v73);
    }

    v73[2] = v76 + 1;
    v77 = &v73[2 * v76];
    v77[4] = sub_188F0E0CC;
    v77[5] = v72;
    *(a8 + 112) = v73;
    swift_endAccess();
    sub_188AA7584();
  }

  swift_beginAccess();
  v78 = v86;
  *(v57 + 16) = v85;
  *(v57 + 32) = v78;
  *(v57 + 48) = 0;
  if (v80)
  {
    goto LABEL_5;
  }

LABEL_10:

  os_unfair_lock_unlock(v87 + 4);
  return v33;
}

double sub_188F0602C(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v89 = a9;
  v90 = a7;
  v94 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936748);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v85[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936750);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v85[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v85[-v24];
  *&v26 = UIAnimationDragCoefficient();
  v27 = *&v26;
  signpost_c2_entryLock_start(v26, v28);
  v93 = a2[2];
  os_unfair_lock_lock(v93 + 4);
  signpost_c2_entryLock_start(v29, v30);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    *(v31 + 16) = 1;
    v33 = 0.0;
LABEL_5:
    v34 = swift_allocObject();
    v34[2] = a2;
    v34[3] = a11;
    v35 = v94;
    v34[4] = a12;
    v34[5] = v35;
    v34[6] = a8;
    v34[7] = v31;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_188F0DC18;
    *(v36 + 24) = v34;
    swift_beginAccess();
    v37 = *(a8 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_188E4B69C(0, v37[2] + 1, 1, v37);
      *(a8 + 112) = v37;
    }

    v40 = v37[2];
    v39 = v37[3];
    if (v40 >= v39 >> 1)
    {
      v37 = sub_188E4B69C((v39 > 1), v40 + 1, 1, v37);
    }

    v37[2] = v40 + 1;
    v41 = &v37[2 * v40];
    v41[4] = sub_188F0E0CC;
    v41[5] = v36;
    *(a8 + 112) = v37;
    swift_endAccess();
    sub_188AA7584();

    goto LABEL_10;
  }

  v43 = a4 / v27;
  signpost_c2_entryLock_start(v27, v32);
  v44 = *(v94 + 24);
  os_unfair_lock_lock((v44 + 80));
  v45 = *(v44 + 48);
  v46 = *(v44 + 56);
  v47 = *(v44 + 64);
  v48 = *(v44 + 72);
  os_unfair_lock_unlock((v44 + 80));
  v49 = *(*a2 + 104);
  swift_beginAccess();
  *&v50 = sub_188EF1CC0(v43);
  v91 = v50;
  v88 = v51;
  v92 = v52;
  v87 = v53;
  swift_endAccess();
  v54 = vabdd_f64(*&v91, v45) / 0.001;
  v55 = vabdd_f64(*&v88, v46) / 0.001;
  v56 = vabdd_f64(*&v92, v47) / 0.001;
  v57 = vabdd_f64(*&v87, v48);
  if (v54 <= v55)
  {
    v54 = v55;
  }

  if (v54 <= v56)
  {
    v54 = v56;
  }

  if (v54 > v57 / 0.001)
  {
    v33 = v54;
  }

  else
  {
    v33 = v57 / 0.001;
  }

  os_unfair_lock_lock((v44 + 80));
  v58 = v88;
  *(v44 + 48) = v91;
  *(v44 + 56) = v58;
  v59 = v87;
  *(v44 + 64) = v92;
  *(v44 + 72) = v59;
  os_unfair_lock_unlock((v44 + 80));
  signpost_c2_entryLock_start(v60, v61);
  v86 = sub_188F07EB0();
  if ((v86 & 1) == 0)
  {
    v66 = sub_188F00A84();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    *&v73 = v92;
    *(&v73 + 1) = v87;
    v92 = v73;
    *&v73 = v91;
    *(&v73 + 1) = v88;
    v91 = v73;
LABEL_29:
    v63 = v90;
    goto LABEL_30;
  }

  sub_188A3F29C(a2 + v49, v25, &qword_1EA936750);
  sub_188A3F704(v25, v22, &qword_1EA936750);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v22, v19, &qword_1EA936748);
      v74 = *(v19 + 6);
      v91 = *(v19 + 5);
      v92 = v74;
      sub_188A3F5FC(v19, &qword_1EA936748);
    }

    else
    {
      v75 = v22[1];
      v91 = *v22;
      v92 = v75;
    }

    v66 = 0.0;
    v68 = 0;
    v70 = 0;
    v72 = 0;
    goto LABEL_29;
  }

  v63 = v90;
  if (EnumCaseMultiPayload)
  {
    v64 = v22[7];
    v65 = v22[8];
  }

  else
  {
    v64 = v22[11];
    v65 = v22[12];
  }

  v92 = v65;
  v91 = v64;
  v66 = 0.0;
  v68 = 0;
  v70 = 0;
  v72 = 0;
LABEL_30:
  swift_beginAccess();
  if ((*(v63 + 48) & 1) != 0 || (*&v95.origin.x = v91, *&v95.size.width = v92, v95.origin.y = *(&v91 + 1), v95.size.height = *(&v92 + 1), !CGRectEqualToRect(*(v63 + 16), v95)))
  {
    v76 = swift_allocObject();
    *(v76 + 16) = v89;
    *(v76 + 24) = a10;
    v77 = v92;
    *(v76 + 32) = v91;
    *(v76 + 48) = v77;
    *(v76 + 64) = v66;
    *(v76 + 72) = v68;
    *(v76 + 80) = v70;
    *(v76 + 88) = v72;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_188F0DC14;
    *(v78 + 24) = v76;
    swift_beginAccess();
    v79 = *(a8 + 112);

    v80 = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v79;
    if ((v80 & 1) == 0)
    {
      v79 = sub_188E4B69C(0, v79[2] + 1, 1, v79);
      *(a8 + 112) = v79;
    }

    v82 = v79[2];
    v81 = v79[3];
    if (v82 >= v81 >> 1)
    {
      v79 = sub_188E4B69C((v81 > 1), v82 + 1, 1, v79);
    }

    v79[2] = v82 + 1;
    v83 = &v79[2 * v82];
    v83[4] = sub_188F0E0CC;
    v83[5] = v78;
    *(a8 + 112) = v79;
    swift_endAccess();
    sub_188AA7584();
  }

  swift_beginAccess();
  v84 = v92;
  *(v63 + 16) = v91;
  *(v63 + 32) = v84;
  *(v63 + 48) = 0;
  if (v86)
  {
    goto LABEL_5;
  }

LABEL_10:

  os_unfair_lock_unlock(v93 + 4);
  return v33;
}

double sub_188F06728(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v113 = a9;
  v115 = a7;
  v118 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936778);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v112 = &v109 - v18;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936780);
  MEMORY[0x1EEE9AC00](v114);
  v20 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v109 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v109 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v109 - v28;
  *&v30 = UIAnimationDragCoefficient();
  v31 = *&v30;
  signpost_c2_entryLock_start(v30, v32);
  v117 = a2[2];
  os_unfair_lock_lock(v117 + 4);
  signpost_c2_entryLock_start(v33, v34);
  v116 = swift_allocObject();
  *(v116 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    v36 = v116;
    *(v116 + 16) = 1;
    v37 = 0.0;
    goto LABEL_5;
  }

  v111 = a8;
  signpost_c2_entryLock_start(v31, v35);
  v47 = *(v118 + 24);
  os_unfair_lock_lock((v47 + 284));
  v110 = v47 + 152;
  v48 = *(v47 + 232);
  v49 = *(v47 + 264);
  v195 = *(v47 + 248);
  v196 = v49;
  v197 = *(v47 + 280);
  v50 = *(v47 + 168);
  v51 = *(v47 + 200);
  v191 = *(v47 + 184);
  v192 = v51;
  v52 = *(v47 + 216);
  v194 = v48;
  v193 = v52;
  v53 = *(v47 + 152);
  v190 = v50;
  v189 = v53;
  os_unfair_lock_unlock((v47 + 284));
  v54 = *(*a2 + 104);
  swift_beginAccess();
  sub_188AABCFC(&v168, a4 / v31);
  swift_endAccess();
  v204 = v174;
  v205 = v175;
  v206 = v176;
  v200 = v170;
  v201 = v171;
  v202 = v172;
  v203 = v173;
  v198 = v168;
  v199 = v169;
  sub_189179EB0();
  v37 = v55;
  os_unfair_lock_lock((v47 + 284));
  v56 = v172;
  *(v47 + 232) = v173;
  v57 = v175;
  *(v47 + 248) = v174;
  *(v110 + 112) = v57;
  v58 = v168;
  *(v47 + 168) = v169;
  v59 = v171;
  *(v47 + 184) = v170;
  *(v47 + 200) = v59;
  *(v47 + 216) = v56;
  *(v47 + 280) = v176;
  *(v47 + 152) = v58;
  os_unfair_lock_unlock((v47 + 284));
  signpost_c2_entryLock_start(v60, v61);
  v110 = v54;
  sub_188A3F29C(a2 + v54, v29, &qword_1EA936780);
  sub_188A3F29C(v29, v26, &qword_1EA936780);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F5FC(v29, &qword_1EA936780);
      v64 = v112;
      sub_188A3F704(v26, v112, &qword_1EA936778);
      v65 = *(v64 + 417);
      sub_188A3F5FC(v64, &qword_1EA936778);
      a8 = v111;
      if ((v65 & 1) == 0)
      {
LABEL_19:
        v165 = v174;
        v166 = v175;
        v167 = v176;
        v161 = v170;
        v162 = v171;
        v164 = v173;
        v163 = v172;
        v159 = v168;
        v160 = v169;
        sub_188AB6F20(&v150);
        v67 = 0;
        goto LABEL_31;
      }
    }

    else
    {
      sub_188A3F5FC(v29, &qword_1EA936780);
      a8 = v111;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      memcpy(v188, v26, 0x229uLL);
      v63 = sub_188EF49A4();
    }

    else
    {
      memcpy(v188, v26, sizeof(v188));
      v63 = sub_188AB6990();
    }

    v66 = v63;
    sub_188A3F5FC(v29, &qword_1EA936780);
    a8 = v111;
    if ((v66 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  sub_188A3F29C(a2 + v110, v23, &qword_1EA936780);
  sub_188A3F704(v23, v20, &qword_1EA936780);
  v68 = swift_getEnumCaseMultiPayload();
  if (v68 <= 1)
  {
    if (v68)
    {
      v69 = (v20 + 424);
      v70 = v20[552];
    }

    else
    {
      v69 = (v20 + 280);
      v70 = v20[408];
    }

    v167 = v70;
    v76 = v69[7];
    v165 = v69[6];
    v166 = v76;
    v77 = v69[3];
    v161 = v69[2];
    v162 = v77;
    v78 = v69[4];
    v164 = v69[5];
    v163 = v78;
    v80 = *v69;
    v79 = v69[1];
    goto LABEL_29;
  }

  if (v68 != 2)
  {
    v81 = *(v20 + 7);
    v165 = *(v20 + 6);
    v166 = v81;
    v167 = v20[128];
    v82 = *(v20 + 3);
    v161 = *(v20 + 2);
    v162 = v82;
    v83 = *(v20 + 4);
    v164 = *(v20 + 5);
    v163 = v83;
    v80 = *v20;
    v79 = *(v20 + 1);
LABEL_29:
    v159 = v80;
    v160 = v79;
    goto LABEL_30;
  }

  v71 = v112;
  sub_188A3F704(v20, v112, &qword_1EA936778);
  v72 = *(v71 + 400);
  v165 = *(v71 + 384);
  v166 = v72;
  v167 = *(v71 + 416);
  v73 = *(v71 + 336);
  v161 = *(v71 + 320);
  v162 = v73;
  v74 = *(v71 + 352);
  v164 = *(v71 + 368);
  v163 = v74;
  v75 = *(v71 + 304);
  v159 = *(v71 + 288);
  v160 = v75;
  sub_188A3F5FC(v71, &qword_1EA936778);
LABEL_30:
  v158 = 0;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v67 = 1;
  v150 = 0u;
  v151 = 0u;
LABEL_31:
  v84 = v115;
  v36 = v116;
  swift_beginAccess();
  v85 = *(v84 + 128);
  v127 = *(v84 + 112);
  v128 = v85;
  v129 = *(v84 + 144);
  v86 = *(v84 + 64);
  v123 = *(v84 + 48);
  v124 = v86;
  v87 = *(v84 + 96);
  v125 = *(v84 + 80);
  v126 = v87;
  v88 = *(v84 + 32);
  v121 = *(v84 + 16);
  v122 = v88;
  v145 = v165;
  v146 = v166;
  v147 = v167;
  v141 = v161;
  v142 = v162;
  v143 = v163;
  v144 = v164;
  v139 = v159;
  v140 = v160;
  signpost_c2_entryLock_start(*&v160, *&v159);
  v135 = v144;
  v136 = v145;
  v137 = v146;
  v131 = v140;
  v132 = v141;
  v133 = v142;
  v138 = v147;
  v134 = v143;
  v130 = v139;
  v148[6] = v127;
  v148[7] = v128;
  v149 = v129;
  v148[2] = v123;
  v148[3] = v124;
  v148[4] = v125;
  v148[5] = v126;
  v148[0] = v121;
  v148[1] = v122;
  if (sub_188AB3700(v148) == 1)
  {
    v185 = v136;
    v186 = v137;
    v187 = v138;
    v181 = v132;
    v182 = v133;
    v184 = v135;
    v183 = v134;
    v180 = v131;
    v179 = v130;
    if (sub_188AB3700(&v179) == 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v119[6] = v136;
    v119[7] = v137;
    v120 = v138;
    v119[2] = v132;
    v119[3] = v133;
    v119[4] = v134;
    v119[5] = v135;
    v119[0] = v130;
    v119[1] = v131;
    if (sub_188AB3700(v119) != 1)
    {
      v185 = v136;
      v186 = v137;
      v187 = v138;
      v181 = v132;
      v182 = v133;
      v184 = v135;
      v183 = v134;
      v180 = v131;
      v179 = v130;
      v177[6] = v127;
      v177[7] = v128;
      v178 = v129;
      v177[2] = v123;
      v177[3] = v124;
      v177[5] = v126;
      v177[4] = v125;
      v177[1] = v122;
      v177[0] = v121;
      if (sub_188ABBAE8(v177, &v179))
      {
        goto LABEL_41;
      }
    }
  }

  v89 = swift_allocObject();
  v90 = v157;
  *(v89 + 264) = v156;
  *(v89 + 280) = v90;
  v91 = v166;
  *(v89 + 128) = v165;
  *(v89 + 144) = v91;
  v92 = v162;
  *(v89 + 64) = v161;
  *(v89 + 80) = v92;
  v93 = v164;
  *(v89 + 96) = v163;
  *(v89 + 112) = v93;
  v94 = v160;
  *(v89 + 32) = v159;
  *(v89 + 48) = v94;
  v95 = v154;
  *(v89 + 248) = v155;
  v96 = v150;
  *(v89 + 184) = v151;
  v97 = v153;
  *(v89 + 200) = v152;
  *(v89 + 216) = v97;
  *(v89 + 232) = v95;
  *(v89 + 16) = v113;
  *(v89 + 24) = a10;
  *(v89 + 160) = v167;
  *(v89 + 296) = v158;
  *(v89 + 168) = v96;
  v98 = swift_allocObject();
  *(v98 + 16) = sub_188F0DCF4;
  *(v98 + 24) = v89;
  swift_beginAccess();
  v99 = *(a8 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 112) = v99;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v99 = sub_188E4B69C(0, v99[2] + 1, 1, v99);
    *(a8 + 112) = v99;
  }

  v102 = v99[2];
  v101 = v99[3];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_188E4B69C((v101 > 1), v102 + 1, 1, v99);
  }

  v99[2] = v102 + 1;
  v103 = &v99[2 * v102];
  v103[4] = sub_188F0E0CC;
  v103[5] = v98;
  *(a8 + 112) = v99;
  swift_endAccess();
  sub_188AA7584();

LABEL_41:
  v104 = v115;
  swift_beginAccess();
  v105 = v146;
  *(v104 + 112) = v145;
  *(v104 + 128) = v105;
  *(v104 + 144) = v147;
  v106 = v142;
  *(v104 + 48) = v141;
  *(v104 + 64) = v106;
  v107 = v144;
  *(v104 + 80) = v143;
  *(v104 + 96) = v107;
  v108 = v140;
  *(v104 + 16) = v139;
  *(v104 + 32) = v108;
  if ((v67 & 1) == 0)
  {

    goto LABEL_10;
  }

LABEL_5:
  v38 = swift_allocObject();
  v38[2] = a2;
  v38[3] = a11;
  v39 = v118;
  v38[4] = a12;
  v38[5] = v39;
  v38[6] = a8;
  v38[7] = v36;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_188F0DD90;
  *(v40 + 24) = v38;
  swift_beginAccess();
  v41 = *(a8 + 112);

  v42 = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 112) = v41;
  if ((v42 & 1) == 0)
  {
    v41 = sub_188E4B69C(0, v41[2] + 1, 1, v41);
    *(a8 + 112) = v41;
  }

  v44 = v41[2];
  v43 = v41[3];
  if (v44 >= v43 >> 1)
  {
    v41 = sub_188E4B69C((v43 > 1), v44 + 1, 1, v41);
  }

  v41[2] = v44 + 1;
  v45 = &v41[2 * v44];
  v45[4] = sub_188F0E0CC;
  v45[5] = v40;
  *(a8 + 112) = v41;
  swift_endAccess();
  sub_188AA7584();

LABEL_10:
  os_unfair_lock_unlock(v117 + 4);
  return v37;
}

double sub_188F07270(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v68 = a9;
  v69 = a7;
  v71 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367A8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v66[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367B0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v66[-v24];
  *&v26 = UIAnimationDragCoefficient();
  v27 = *&v26;
  signpost_c2_entryLock_start(v26, v28);
  v70 = a2[2];
  os_unfair_lock_lock(v70 + 4);
  signpost_c2_entryLock_start(v29, v30);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    *(v31 + 16) = 1;
    v33 = 0.0;
LABEL_5:
    v34 = swift_allocObject();
    v34[2] = a2;
    v34[3] = a11;
    v35 = v71;
    v34[4] = a12;
    v34[5] = v35;
    v34[6] = a8;
    v34[7] = v31;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_188F0D528;
    *(v36 + 24) = v34;
    swift_beginAccess();
    v37 = *(a8 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_188E4B69C(0, v37[2] + 1, 1, v37);
      *(a8 + 112) = v37;
    }

    v40 = v37[2];
    v39 = v37[3];
    if (v40 >= v39 >> 1)
    {
      v37 = sub_188E4B69C((v39 > 1), v40 + 1, 1, v37);
    }

    v37[2] = v40 + 1;
    v41 = &v37[2 * v40];
    v41[4] = sub_188F0E0CC;
    v41[5] = v36;
    *(a8 + 112) = v37;
    swift_endAccess();
    sub_188AA7584();

    goto LABEL_10;
  }

  signpost_c2_entryLock_start(v27, v32);
  v43 = *(v71 + 24);
  os_unfair_lock_lock((v43 + 48));
  v45 = *(v43 + 32);
  v44 = *(v43 + 40);
  os_unfair_lock_unlock((v43 + 48));
  v46 = *(*a2 + 104);
  swift_beginAccess();
  v47 = sub_188EF1F58(a4 / v27);
  v49 = v48;
  swift_endAccess();
  v50 = vabdd_f64(v47, v45);
  if (qword_1ED48D080 != -1)
  {
    swift_once();
  }

  v51 = vabdd_f64(v49, v44);
  if (v50 / *&qword_1ED4A3498 > v51 / *&qword_1ED4A3498)
  {
    v33 = v50 / *&qword_1ED4A3498;
  }

  else
  {
    v33 = v51 / *&qword_1ED4A3498;
  }

  os_unfair_lock_lock((v43 + 48));
  *(v43 + 32) = v47;
  *(v43 + 40) = v49;
  os_unfair_lock_unlock((v43 + 48));
  signpost_c2_entryLock_start(v52, v53);
  v67 = sub_188AAA888();
  if ((v67 & 1) == 0)
  {
    v56 = sub_188F00C60();
    v58 = v57;
LABEL_27:
    v55 = v69;
    goto LABEL_28;
  }

  sub_188A3F29C(a2 + v46, v25, &qword_1EA9367B0);
  sub_188A3F704(v25, v22, &qword_1EA9367B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v22, v19, &qword_1EA9367A8);
      v47 = v19[6];
      v49 = v19[7];
      sub_188A3F5FC(v19, &qword_1EA9367A8);
    }

    else
    {
      v47 = *v22;
      v49 = v22[1];
    }

    v56 = 0.0;
    v58 = 0;
    goto LABEL_27;
  }

  v55 = v69;
  if (EnumCaseMultiPayload)
  {
    v47 = v22[8];
    v49 = v22[9];
  }

  else
  {
    v47 = v22[20];
    v49 = v22[21];
  }

  v56 = 0.0;
  v58 = 0;
LABEL_28:
  swift_beginAccess();
  if ((*(v55 + 32) & 1) != 0 || *(v55 + 16) != v47 || *(v55 + 24) != v49)
  {
    v59 = swift_allocObject();
    *(v59 + 16) = v68;
    *(v59 + 24) = a10;
    *(v59 + 32) = v47;
    *(v59 + 40) = v49;
    *(v59 + 48) = v56;
    *(v59 + 56) = v58;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_188F0E054;
    *(v60 + 24) = v59;
    swift_beginAccess();
    v61 = *(a8 + 112);

    v62 = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v61;
    if ((v62 & 1) == 0)
    {
      v61 = sub_188E4B69C(0, v61[2] + 1, 1, v61);
      *(a8 + 112) = v61;
    }

    v64 = v61[2];
    v63 = v61[3];
    if (v64 >= v63 >> 1)
    {
      v61 = sub_188E4B69C((v63 > 1), v64 + 1, 1, v61);
    }

    v61[2] = v64 + 1;
    v65 = &v61[2 * v64];
    v65[4] = sub_188F0E0CC;
    v65[5] = v60;
    *(a8 + 112) = v61;
    swift_endAccess();
    sub_188AA7584();
  }

  swift_beginAccess();
  *(v55 + 16) = v47;
  *(v55 + 24) = v49;
  *(v55 + 32) = 0;
  if (v67)
  {
    goto LABEL_5;
  }

LABEL_10:

  os_unfair_lock_unlock(v70 + 4);
  return v33;
}

uint64_t sub_188F078BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365C8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16[-v8];
  v10 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v10, v9, &qword_1EA9365C8);
  sub_188A3F29C(v9, v6, &qword_1EA9365C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_188A3F5FC(v9, &qword_1EA9365C8);
      v12 = 1;
      return v12 & 1;
    }

    sub_188A3F5FC(v9, &qword_1EA9365C8);
    sub_188A3F704(v6, v3, &qword_1EA9365C0);
    v12 = v3[208];
    v13 = v3;
    v14 = &qword_1EA9365C0;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v12 = vabdd_f64(v6[26], v6[16]) <= 0.001 && vabdd_f64(v6[27], v6[17]) <= 0.001 && vabdd_f64(v6[28], v6[18]) <= 0.001 && vabdd_f64(v6[29], v6[19]) <= 0.001 && vabdd_f64(v6[30], v6[20]) <= 0.001 && vabdd_f64(v6[31], v6[21]) <= 0.001 && vabdd_f64(v6[32], v6[22]) <= 0.001 && vabdd_f64(v6[33], v6[23]) <= 0.001;
    }

    else
    {
      memcpy(v17, v6, sizeof(v17));
      v12 = sub_188EE8FB0();
    }

    v14 = &qword_1EA9365C8;
    v13 = v9;
  }

  sub_188A3F5FC(v13, v14);
  return v12 & 1;
}

uint64_t sub_188F07B8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936620);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936628);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-v8];
  v10 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v10, v9, &qword_1EA936628);
  sub_188A3F29C(v9, v6, &qword_1EA936628);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      memcpy(v26, v6, 0x17DuLL);
      v12 = sub_188EE90C0();
      sub_188A3F5FC(v26, &qword_1EA936840);
      v13 = &qword_1EA936628;
      v14 = v9;
LABEL_16:
      sub_188A3F5FC(v14, v13);
      return v12 & 1;
    }

    v15 = v6[8];
    v16 = v6[9];
    v17 = v6[6];
    v26[7] = v6[7];
    v26[8] = v15;
    v26[9] = v16;
    *(&v26[9] + 13) = *(v6 + 157);
    v18 = v6[5];
    v26[4] = v6[4];
    v26[5] = v18;
    v26[6] = v17;
    v19 = v6[1];
    v26[0] = *v6;
    v26[1] = v19;
    v20 = v6[3];
    v26[2] = v6[2];
    v26[3] = v20;
    v21 = *&v26[5];
    if (*(&v26[8] + 1))
    {
      if (*&v26[5])
      {
        v22 = sub_189090B30(*&v26[5], *(&v26[8] + 1), 0.00000001);
LABEL_14:
        v12 = v22;
LABEL_15:
        sub_188A3F5FC(v9, &qword_1EA936628);
        v13 = &qword_1EA936848;
        v14 = v26;
        goto LABEL_16;
      }

      v21 = *(&v26[8] + 1);
    }

    else if (!*&v26[5])
    {
      v12 = 1;
      goto LABEL_15;
    }

    v22 = sub_189090ADC(v21, 0.00000001);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_188A3F5FC(v9, &qword_1EA936628);
    sub_188A3F704(v6, v3, &qword_1EA936620);
    v12 = v3[133];
    v14 = v3;
    v13 = &qword_1EA936620;
    goto LABEL_16;
  }

  sub_188A3F5FC(v9, &qword_1EA936628);
  v23 = *(v6 + 5);
  sub_188F0B59C(*v6);
  sub_188F0B59C(v23);
  v12 = 1;
  return v12 & 1;
}

uint64_t sub_188F07EB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936748);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936750);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16[-v8];
  v10 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v10, v9, &qword_1EA936750);
  sub_188A3F29C(v9, v6, &qword_1EA936750);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_188A3F5FC(v9, &qword_1EA936750);
      v12 = 1;
      return v12 & 1;
    }

    sub_188A3F5FC(v9, &qword_1EA936750);
    sub_188A3F704(v6, v3, &qword_1EA936748);
    v12 = v3[112];
    v13 = v3;
    v14 = &qword_1EA936748;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v12 = vabdd_f64(v6[14], v6[8]) <= 0.001 && vabdd_f64(v6[15], v6[9]) <= 0.001 && vabdd_f64(v6[16], v6[10]) <= 0.001 && vabdd_f64(v6[17], v6[11]) <= 0.001;
    }

    else
    {
      memcpy(v17, v6, sizeof(v17));
      v12 = sub_188EE986C();
    }

    v14 = &qword_1EA936750;
    v13 = v9;
  }

  sub_188A3F5FC(v13, v14);
  return v12 & 1;
}

double sub_188F08130(void *a1, uint64_t (*a2)(uint64_t), double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  signpost_c2_entryLock_start(a3, a4);
  v13 = a1[2];
  os_unfair_lock_lock(v13 + 4);
  v16 = signpost_c2_entryLock_start(v14, v15);
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v17 = a2(v16);
    v18 = *(a6 + 32);
    MEMORY[0x1EEE9AC00](v17);
    os_unfair_lock_lock((v18 + 24));
    sub_188F0E024((v18 + 16));
    os_unfair_lock_unlock((v18 + 24));
    swift_beginAccess();
    v19 = a1 + *(*a1 + 112);
    v20 = *v19;
    if (*v19)
    {
      v21 = *(a8 + 16);
      *v19 = 0;
      *(v19 + 1) = 0;
      v20(a7, (v21 & 1) == 0);
      sub_188A55B8C(v20);
    }
  }

  sub_188A32084(sub_188F0CD34, a6);

  os_unfair_lock_unlock(v13 + 4);
  return 0.0;
}

double sub_188F082AC(void *a1, uint64_t (*a2)(uint64_t), double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  signpost_c2_entryLock_start(a3, a4);
  v13 = a1[2];
  os_unfair_lock_lock(v13 + 4);
  v16 = signpost_c2_entryLock_start(v14, v15);
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v17 = a2(v16);
    v18 = *(a6 + 32);
    MEMORY[0x1EEE9AC00](v17);
    os_unfair_lock_lock((v18 + 24));
    sub_188F0E024((v18 + 16));
    os_unfair_lock_unlock((v18 + 24));
    swift_beginAccess();
    v19 = a1 + *(*a1 + 112);
    v20 = *v19;
    if (*v19)
    {
      v21 = *(a8 + 16);
      *v19 = 0;
      *(v19 + 1) = 0;
      v20(a7, (v21 & 1) == 0);
      sub_188A55B8C(v20);
    }
  }

  sub_188A32084(sub_188F0E058, a6);

  os_unfair_lock_unlock(v13 + 4);
  return 0.0;
}

double sub_188F08428(void *a1, uint64_t (*a2)(uint64_t), double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  signpost_c2_entryLock_start(a3, a4);
  v13 = a1[2];
  os_unfair_lock_lock(v13 + 4);
  v16 = signpost_c2_entryLock_start(v14, v15);
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v17 = a2(v16);
    v18 = *(a6 + 32);
    MEMORY[0x1EEE9AC00](v17);
    os_unfair_lock_lock((v18 + 24));
    sub_188F0E024((v18 + 16));
    os_unfair_lock_unlock((v18 + 24));
    swift_beginAccess();
    v19 = a1 + *(*a1 + 112);
    v20 = *v19;
    if (*v19)
    {
      v21 = *(a8 + 16);
      *v19 = 0;
      *(v19 + 1) = 0;
      v20(a7, (v21 & 1) == 0);
      sub_188A55B8C(v20);
    }
  }

  sub_188A32084(sub_188F0D600, a6);

  os_unfair_lock_unlock(v13 + 4);
  return 0.0;
}

double sub_188F085A4(void *a1, uint64_t (*a2)(uint64_t), double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  signpost_c2_entryLock_start(a3, a4);
  v13 = a1[2];
  os_unfair_lock_lock(v13 + 4);
  v16 = signpost_c2_entryLock_start(v14, v15);
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v17 = a2(v16);
    v18 = *(a6 + 32);
    MEMORY[0x1EEE9AC00](v17);
    os_unfair_lock_lock((v18 + 24));
    sub_188F0E024((v18 + 16));
    os_unfair_lock_unlock((v18 + 24));
    swift_beginAccess();
    v19 = a1 + *(*a1 + 112);
    v20 = *v19;
    if (*v19)
    {
      v21 = *(a8 + 16);
      *v19 = 0;
      *(v19 + 1) = 0;
      v20(a7, (v21 & 1) == 0);
      sub_188A55B8C(v20);
    }
  }

  sub_188A32084(sub_188F0D8BC, a6);

  os_unfair_lock_unlock(v13 + 4);
  return 0.0;
}

double sub_188F08720(void *a1, uint64_t (*a2)(uint64_t), double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  signpost_c2_entryLock_start(a3, a4);
  v13 = a1[2];
  os_unfair_lock_lock(v13 + 4);
  v16 = signpost_c2_entryLock_start(v14, v15);
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v17 = a2(v16);
    v18 = *(a6 + 32);
    MEMORY[0x1EEE9AC00](v17);
    os_unfair_lock_lock((v18 + 24));
    sub_188F0E024((v18 + 16));
    os_unfair_lock_unlock((v18 + 24));
    swift_beginAccess();
    v19 = a1 + *(*a1 + 112);
    v20 = *v19;
    if (*v19)
    {
      v21 = *(a8 + 16);
      *v19 = 0;
      *(v19 + 1) = 0;
      v20(a7, (v21 & 1) == 0);
      sub_188A55B8C(v20);
    }
  }

  sub_188A32084(sub_188F0E050, a6);

  os_unfair_lock_unlock(v13 + 4);
  return 0.0;
}

double sub_188F0889C(void *a1, uint64_t (*a2)(uint64_t), double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  signpost_c2_entryLock_start(a3, a4);
  v13 = a1[2];
  os_unfair_lock_lock(v13 + 4);
  v16 = signpost_c2_entryLock_start(v14, v15);
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v17 = a2(v16);
    v18 = *(a6 + 32);
    MEMORY[0x1EEE9AC00](v17);
    os_unfair_lock_lock((v18 + 24));
    sub_188F0E024((v18 + 16));
    os_unfair_lock_unlock((v18 + 24));
    swift_beginAccess();
    v19 = a1 + *(*a1 + 112);
    v20 = *v19;
    if (*v19)
    {
      v21 = *(a8 + 16);
      *v19 = 0;
      *(v19 + 1) = 0;
      v20(a7, (v21 & 1) == 0);
      sub_188A55B8C(v20);
    }
  }

  sub_188A32084(sub_188F0D9A4, a6);

  os_unfair_lock_unlock(v13 + 4);
  return 0.0;
}

double sub_188F08A18(void *a1, uint64_t (*a2)(uint64_t), double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  signpost_c2_entryLock_start(a3, a4);
  v13 = a1[2];
  os_unfair_lock_lock(v13 + 4);
  v16 = signpost_c2_entryLock_start(v14, v15);
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v17 = a2(v16);
    v18 = *(a6 + 32);
    MEMORY[0x1EEE9AC00](v17);
    os_unfair_lock_lock((v18 + 24));
    sub_188F0E024((v18 + 16));
    os_unfair_lock_unlock((v18 + 24));
    swift_beginAccess();
    v19 = a1 + *(*a1 + 112);
    v20 = *v19;
    if (*v19)
    {
      v21 = *(a8 + 16);
      *v19 = 0;
      *(v19 + 1) = 0;
      v20(a7, (v21 & 1) == 0);
      sub_188A55B8C(v20);
    }
  }

  sub_188A32084(sub_188F0E060, a6);

  os_unfair_lock_unlock(v13 + 4);
  return 0.0;
}

double sub_188F08B94(void *a1, uint64_t (*a2)(uint64_t), double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  signpost_c2_entryLock_start(a3, a4);
  v13 = a1[2];
  os_unfair_lock_lock(v13 + 4);
  v16 = signpost_c2_entryLock_start(v14, v15);
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v17 = a2(v16);
    v18 = *(a6 + 32);
    MEMORY[0x1EEE9AC00](v17);
    os_unfair_lock_lock((v18 + 24));
    sub_188F0E024((v18 + 16));
    os_unfair_lock_unlock((v18 + 24));
    swift_beginAccess();
    v19 = a1 + *(*a1 + 112);
    v20 = *v19;
    if (*v19)
    {
      v21 = *(a8 + 16);
      *v19 = 0;
      *(v19 + 1) = 0;
      v20(a7, (v21 & 1) == 0);
      sub_188A55B8C(v20);
    }
  }

  sub_188A32084(sub_188F0DA14, a6);

  os_unfair_lock_unlock(v13 + 4);
  return 0.0;
}

double sub_188F08D10(void *a1, uint64_t (*a2)(uint64_t), double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  signpost_c2_entryLock_start(a3, a4);
  v13 = a1[2];
  os_unfair_lock_lock(v13 + 4);
  v16 = signpost_c2_entryLock_start(v14, v15);
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v17 = a2(v16);
    v18 = *(a6 + 32);
    MEMORY[0x1EEE9AC00](v17);
    os_unfair_lock_lock((v18 + 24));
    sub_188F0E024((v18 + 16));
    os_unfair_lock_unlock((v18 + 24));
    swift_beginAccess();
    v19 = a1 + *(*a1 + 112);
    v20 = *v19;
    if (*v19)
    {
      v21 = *(a8 + 16);
      *v19 = 0;
      *(v19 + 1) = 0;
      v20(a7, (v21 & 1) == 0);
      sub_188A55B8C(v20);
    }
  }

  sub_188A32084(sub_188F0E064, a6);

  os_unfair_lock_unlock(v13 + 4);
  return 0.0;
}

double sub_188F08E8C(void *a1, uint64_t (*a2)(uint64_t), double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  signpost_c2_entryLock_start(a3, a4);
  v13 = a1[2];
  os_unfair_lock_lock(v13 + 4);
  v16 = signpost_c2_entryLock_start(v14, v15);
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v17 = a2(v16);
    v18 = *(a6 + 32);
    MEMORY[0x1EEE9AC00](v17);
    os_unfair_lock_lock((v18 + 24));
    sub_188F0E024((v18 + 16));
    os_unfair_lock_unlock((v18 + 24));
    swift_beginAccess();
    v19 = a1 + *(*a1 + 112);
    v20 = *v19;
    if (*v19)
    {
      v21 = *(a8 + 16);
      *v19 = 0;
      *(v19 + 1) = 0;
      v20(a7, (v21 & 1) == 0);
      sub_188A55B8C(v20);
    }
  }

  sub_188A32084(sub_188F0DBC4, a6);

  os_unfair_lock_unlock(v13 + 4);
  return 0.0;
}

double sub_188F09008(void *a1, uint64_t (*a2)(uint64_t), double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  signpost_c2_entryLock_start(a3, a4);
  v13 = a1[2];
  os_unfair_lock_lock(v13 + 4);
  v16 = signpost_c2_entryLock_start(v14, v15);
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v17 = a2(v16);
    v18 = *(a6 + 32);
    MEMORY[0x1EEE9AC00](v17);
    os_unfair_lock_lock((v18 + 24));
    sub_188F0E024((v18 + 16));
    os_unfair_lock_unlock((v18 + 24));
    swift_beginAccess();
    v19 = a1 + *(*a1 + 112);
    v20 = *v19;
    if (*v19)
    {
      v21 = *(a8 + 16);
      *v19 = 0;
      *(v19 + 1) = 0;
      v20(a7, (v21 & 1) == 0);
      sub_188A55B8C(v20);
    }
  }

  sub_188A32084(sub_188F0DC30, a6);

  os_unfair_lock_unlock(v13 + 4);
  return 0.0;
}

double sub_188F09184(void *a1, uint64_t (*a2)(uint64_t), double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  signpost_c2_entryLock_start(a3, a4);
  v13 = a1[2];
  os_unfair_lock_lock(v13 + 4);
  v16 = signpost_c2_entryLock_start(v14, v15);
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v17 = a2(v16);
    v18 = *(a6 + 32);
    MEMORY[0x1EEE9AC00](v17);
    os_unfair_lock_lock((v18 + 24));
    sub_188F0E024((v18 + 16));
    os_unfair_lock_unlock((v18 + 24));
    swift_beginAccess();
    v19 = a1 + *(*a1 + 112);
    v20 = *v19;
    if (*v19)
    {
      v21 = *(a8 + 16);
      *v19 = 0;
      *(v19 + 1) = 0;
      v20(a7, (v21 & 1) == 0);
      sub_188A55B8C(v20);
    }
  }

  sub_188A32084(sub_188F0DDA8, a6);

  os_unfair_lock_unlock(v13 + 4);
  return 0.0;
}

uint64_t sub_188F09300(uint64_t result)
{
  v1 = *(result + 504);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    *(result + 504) = v3;
    if (!v3)
    {
      v5 = *(result + 32);
      os_unfair_lock_lock((v5 + 24));
      v6 = *(v5 + 16);

      os_unfair_lock_unlock((v5 + 24));
      if (v6)
      {
      }

      else
      {
        result = swift_beginAccess();
        if (*(v4 + 397) != 1)
        {
          v7 = *(v4 + 520);

          v7(v8);
        }
      }
    }
  }

  return result;
}

uint64_t sub_188F093D8(uint64_t result)
{
  v1 = *(result + 440);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    *(result + 440) = v3;
    if (!v3)
    {
      v5 = *(result + 32);
      os_unfair_lock_lock((v5 + 24));
      v6 = *(v5 + 16);

      os_unfair_lock_unlock((v5 + 24));
      if (v6)
      {
      }

      else
      {
        result = swift_beginAccess();
        if (*(v4 + 345) != 1)
        {
          v7 = *(v4 + 456);

          v7(v8);
        }
      }
    }
  }

  return result;
}

uint64_t sub_188F094AC(uint64_t result)
{
  v1 = *(result + 128);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    *(result + 128) = v3;
    if (!v3)
    {
      v5 = *(result + 32);
      os_unfair_lock_lock((v5 + 24));
      v6 = *(v5 + 16);

      os_unfair_lock_unlock((v5 + 24));
      if (v6)
      {
      }

      else
      {
        result = swift_beginAccess();
        if (*(v4 + 96) != 1)
        {
          v7 = *(v4 + 144);

          v7(v8);
        }
      }
    }
  }

  return result;
}

uint64_t sub_188F09580(uint64_t result)
{
  v1 = *(result + 280);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    *(result + 280) = v3;
    if (!v3)
    {
      v5 = *(result + 32);
      os_unfair_lock_lock((v5 + 24));
      v6 = *(v5 + 16);

      os_unfair_lock_unlock((v5 + 24));
      if (v6)
      {
      }

      else
      {
        result = swift_beginAccess();
        if (*(v4 + 221) != 1)
        {
          v7 = *(v4 + 296);

          v7(v8);
        }
      }
    }
  }

  return result;
}

uint64_t sub_188F09654(uint64_t result)
{
  v1 = *(result + 160);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    *(result + 160) = v3;
    if (!v3)
    {
      v5 = *(result + 32);
      os_unfair_lock_lock((v5 + 24));
      v6 = *(v5 + 16);

      os_unfair_lock_unlock((v5 + 24));
      if (v6)
      {
      }

      else
      {
        result = swift_beginAccess();
        if (*(v4 + 121) != 1)
        {
          v7 = *(v4 + 176);

          v7(v8);
        }
      }
    }
  }

  return result;
}

uint64_t sub_188F09728(uint64_t result)
{
  v1 = *(result + 280);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    *(result + 280) = v3;
    if (!v3)
    {
      v5 = *(result + 32);
      os_unfair_lock_lock((v5 + 24));
      v6 = *(v5 + 16);

      os_unfair_lock_unlock((v5 + 24));
      if (v6)
      {
      }

      else
      {
        result = swift_beginAccess();
        if (*(v4 + 217) != 1)
        {
          v7 = *(v4 + 296);

          v7(v8);
        }
      }
    }
  }

  return result;
}

uint64_t sub_188F097FC(uint64_t result)
{
  v1 = *(result + 760);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    *(result + 760) = v3;
    if (!v3)
    {
      v5 = *(result + 32);
      os_unfair_lock_lock((v5 + 24));
      v6 = *(v5 + 16);

      os_unfair_lock_unlock((v5 + 24));
      if (v6)
      {
      }

      else
      {
        result = swift_beginAccess();
        if (*(v4 + 601) != 1)
        {
          v7 = *(v4 + 776);

          v7(v8);
        }
      }
    }
  }

  return result;
}

uint64_t sub_188F098D4(uint64_t result)
{
  v1 = *(result + 200);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    *(result + 200) = v3;
    if (!v3)
    {
      v5 = *(result + 32);
      os_unfair_lock_lock((v5 + 24));
      v6 = *(v5 + 16);

      os_unfair_lock_unlock((v5 + 24));
      if (v6)
      {
      }

      else
      {
        result = swift_beginAccess();
        if (*(v4 + 153) != 1)
        {
          v7 = *(v4 + 216);

          v7(v8);
        }
      }
    }
  }

  return result;
}

uint64_t sub_188F099A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_188AA72A8(a1, v63);
  if (!v65)
  {
    v67 = v63[2];
    v68 = v63[3];
    v69 = v63[4];
    v70 = v64;
    v66[0] = v63[0];
    v66[1] = v63[1];
    v54 = 0u;
    memset(v55, 0, 25);
    v52 = 0u;
    v53 = 0u;
    *&v57 = 0;
    v56 = 0uLL;
    BYTE8(v57) = 0;
    *&v59 = 0;
    v58 = 0uLL;
    DWORD2(v59) = 0;
    *&v60 = 0x3FF0000000000000;
    *(&v60 + 1) = a4;
    *(&v61 + 1) = a2;
    *&v61 = 0;
    v62 = a2;

    swift_bridgeObjectRetain_n();
    sub_188AA79A0(v66, 1);
    if (a3 != 1)
    {

      *&v61 = a3;
    }

    if ((*(&v67 + 1) & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    v15 = v70;
    v16 = *v66;
    if (*(&v69 + 1) > 0.0)
    {
      sub_188F0AA6C(&v62, *(v5 + 32), *(&v69 + 1));
    }

    if (v15 <= 0.0)
    {
      goto LABEL_31;
    }

    v17 = sub_188CD18C0(a4, a2);
    if (v17)
    {
      v18 = *(v17 + 16);
      if (v18)
      {
        *&v51[0] = MEMORY[0x1E69E7CC0];
        v19 = v17;
        sub_188CCF904(0, v18, 0);
        v20 = 6.28318531 / v16 * (6.28318531 / v16) * v15;
        v21 = *&v51[0];
        v22 = *(*&v51[0] + 16);
        v23 = 32 * v22;
        v24 = (v19 + 48);
        do
        {
          v25 = v24[-1];
          v26 = *v24;
          *&v51[0] = v21;
          v27 = *(v21 + 24);
          v28 = v22 + 1;
          if (v22 >= v27 >> 1)
          {
            v47 = v26;
            v48 = v25;
            sub_188CCF904((v27 > 1), v22 + 1, 1);
            v26 = v47;
            v25 = v48;
            v20 = 6.28318531 / v16 * (6.28318531 / v16) * v15;
            v21 = *&v51[0];
          }

          *(v21 + 16) = v28;
          v29 = (v21 + v23);
          v29[2] = vmulq_n_f64(v25, v20);
          v29[3] = vmulq_n_f64(v26, v20);
          v23 += 32;
          v24 += 2;
          v22 = v28;
          --v18;
        }

        while (v18);

        v31 = v61;
        if (!v61)
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }

      v31 = v61;
      v21 = MEMORY[0x1E69E7CC0];
      if (v61)
      {
LABEL_25:
        v32 = *(v31 + 16);
        v33 = *(v21 + 16);
        if (v32 == v33)
        {

          v35 = sub_188EF6C40(v34, v21);
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v21 = v35;
        }

        else if (v33 >= v32)
        {
        }

        else
        {

          v21 = v31;
        }
      }
    }

    else
    {
      v21 = v61;
    }

LABEL_30:
    *&v61 = v21;
LABEL_31:
    v36 = v58;
    v50[8] = v59;
    v50[9] = v60;
    v37 = v60;
    v38 = v61;
    v50[10] = v61;
    v50[11] = v62;
    v39 = v55[1];
    v40 = v55[0];
    v50[4] = v55[1];
    v50[5] = v56;
    v41 = v56;
    v42 = v57;
    v50[6] = v57;
    v50[7] = v58;
    v50[0] = v52;
    v50[1] = v53;
    v44 = v52;
    v43 = v53;
    v45 = v54;
    v50[2] = v54;
    v50[3] = v55[0];
    *(a5 + 128) = v59;
    *(a5 + 144) = v37;
    v46 = v62;
    *(a5 + 160) = v38;
    *(a5 + 176) = v46;
    *(a5 + 64) = v39;
    *(a5 + 80) = v41;
    *(a5 + 96) = v42;
    *(a5 + 112) = v36;
    *a5 = v44;
    *(a5 + 16) = v43;
    *(a5 + 32) = v45;
    *(a5 + 48) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936598);
    swift_storeEnumTagMultiPayload();
    v51[8] = v59;
    v51[9] = v60;
    v51[10] = v61;
    v51[11] = v62;
    v51[4] = v55[1];
    v51[5] = v56;
    v51[6] = v57;
    v51[7] = v58;
    v51[0] = v52;
    v51[1] = v53;
    v51[2] = v54;
    v51[3] = v55[0];
    sub_188A3F29C(v50, v49, &qword_1EA9367F8);
    return sub_188A3F5FC(v51, &qword_1EA9367F8);
  }

  if (v65 == 2)
  {
    v10 = *&v63[0];
    v11 = BYTE8(v63[0]);
    *a5 = 0;
    *(a5 + 40) = 0;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936590);
    sub_188CCF32C();

    sub_18A4A49B8();
    v13 = *(v12 + 64);
    *(a5 + 8) = v10;
    *(a5 + 16) = a2;
    *(a5 + 24) = a2;
    *(a5 + 32) = a4;
    *(a5 + v13) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936598);
    swift_storeEnumTagMultiPayload();
    return swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_188AA7808(v63);
    if (a3 == 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = a3;
    }

    *a5 = a4;
    *(a5 + 8) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936598);
    swift_storeEnumTagMultiPayload();

    return sub_188F0D090(a3);
  }
}

uint64_t sub_188F09E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = *a3;
  v10 = *(a3 + 8);
  v12 = *(a3 + 24);
  v48 = *(a3 + 16);
  v13 = *(a3 + 32) | (*(a3 + 36) << 32);
  sub_188AA72A8(a1, v53);
  if (!v55)
  {
    v69 = v53[2];
    v70 = v53[3];
    v71 = v53[4];
    v68[0] = v53[0];
    v68[1] = v53[1];
    v25 = *(a2 + 16);
    *(&__src[16] + 8) = *a2;
    *(&__src[17] + 8) = v25;
    v26 = *(a4 + 16);
    *(&__src[11] + 8) = *a4;
    v72 = v54;
    *(&__src[12] + 8) = v26;
    memset(__src, 0, 73);
    memset(&__src[7], 0, 37);
    memset(&__src[5], 0, 25);
    *&__src[10] = 0;
    *(&__src[9] + 1) = 0;
    DWORD2(__src[10]) = 0;
    *&__src[11] = 0x3FF0000000000000;
    *(&__src[18] + 5) = *(a2 + 29);
    *(&__src[13] + 5) = *(a4 + 29);
    memset(&__src[14], 0, 37);
    *(&__src[21] + 8) = 0u;
    *(&__src[22] + 8) = 0u;
    *(&__src[23] + 5) = 0;
    *(&__src[20] + 13) = *(a2 + 29);
    __src[20] = *(a2 + 16);
    __src[19] = *(&__src[16] + 8);
    sub_188F0D2E8(a2, v51);
    sub_188F0D2E8(a4, v51);
    sub_188F0D2E8(a2, v51);
    sub_188EE284C(v68, 1);
    if (v11 != 1)
    {
      v47 = *&__src[14];
      sub_188F0B550(v11);
      sub_188F0B59C(v47);
      *&__src[14] = v11;
      *(&__src[14] + 1) = v10;
      *&__src[15] = v48;
      *(&__src[15] + 1) = v12;
      BYTE4(__src[16]) = BYTE4(v13);
      LODWORD(__src[16]) = v13;
    }

    if ((*(&v69 + 1) & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }

    v27 = v72;
    v28 = *v68;
    if (*(&v71 + 1) > 0.0)
    {
      v29 = v5[5];
      v65 = v5[4];
      v66 = v29;
      v67[0] = v5[6];
      *(v67 + 13) = *(v5 + 109);
      v30 = v5[1];
      v61 = *v5;
      v62 = v30;
      v31 = v5[3];
      v63 = v5[2];
      v64 = v31;
      sub_188F00F98(&__src[19], *(&v71 + 1));
    }

    if (v27 <= 0.0)
    {
      goto LABEL_39;
    }

    sub_1890905D8(a4, a2, &v56);
    if (v56)
    {
      *(v51 + 8) = v57[0];
      *(&v51[1] + 5) = *(v57 + 13);
      *&v51[0] = v56;
      sub_18908FB80(6.28318531 / v28 * (6.28318531 / v28) * v27);
      v32 = *(&v51[0] + 1);
      v33 = *&v51[0];
      v34 = *(&v51[1] + 1);
      v35 = *&v51[1];
      v36 = 0x100000000;
      if (!BYTE4(v51[2]))
      {
        v36 = 0;
      }

      v37 = v36 | LODWORD(v51[2]);
      v38 = *&__src[14];
      if (*&__src[14])
      {
        goto LABEL_14;
      }
    }

    else
    {
      v33 = 0;
      v32 = 0;
      v35 = 0;
      v34 = 0;
      v37 = 0;
      v38 = *&__src[14];
      if (*&__src[14])
      {
LABEL_14:
        v39 = LODWORD(__src[16]) | (BYTE4(__src[16]) << 32);
        if (v33)
        {
          v58[0] = v33;
          v58[1] = v32;
          v58[2] = v35;
          v58[3] = v34;
          v59 = v37;
          v60 = BYTE4(v37);
          *&v51[0] = v38;
          *(&v51[0] + 1) = *(&__src[14] + 1);
          v51[1] = __src[15];
          LODWORD(v51[2]) = __src[16];
          BYTE4(v51[2]) = BYTE4(v39) & 1;
          sub_188F0B550(v33);
          sub_188F0B550(v38);
          sub_18908FD40(v58);
          sub_188F0B59C(v33);
          sub_188F0B59C(v38);

          v32 = *(&v51[0] + 1);
          v33 = *&v51[0];
          v34 = *(&v51[1] + 1);
          v35 = *&v51[1];
          v40 = 0x100000000;
          if (!BYTE4(v51[2]))
          {
            v40 = 0;
          }

          v37 = v40 | LODWORD(v51[2]);
        }

        else
        {
          v37 = v39 & 0x1FFFFFFFFLL;
          v33 = v38;
          v32 = *(&__src[14] + 1);
          v34 = *(&__src[15] + 1);
          v35 = *&__src[15];
        }

LABEL_38:
        *&__src[14] = v33;
        *(&__src[14] + 1) = v32;
        *&__src[15] = v35;
        *(&__src[15] + 1) = v34;
        LODWORD(__src[16]) = v37;
        BYTE4(__src[16]) = BYTE4(v37);
LABEL_39:
        memcpy(__dst, __src, 0x17DuLL);
        memcpy(a5, __src, 0x17DuLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936628);
        swift_storeEnumTagMultiPayload();
        memcpy(v51, __src, 0x17DuLL);
        sub_188A3F29C(__dst, v49, &qword_1EA936840);
        return sub_188A3F5FC(v51, &qword_1EA936840);
      }
    }

    if (!v33)
    {
      v32 = 0;
      v35 = 0;
      v34 = 0;
      v37 = 0;
    }

    goto LABEL_38;
  }

  if (v55 == 2)
  {
    v14 = *&v53[0];
    v15 = BYTE8(v53[0]);
    *a5 = 0;
    *(a5 + 133) = 0;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936620);
    v17 = *(a4 + 16);
    __src[0] = *a4;
    __src[1] = v17;
    *(&__src[1] + 13) = *(a4 + 29);
    sub_188F0D40C(__src, v51);
    sub_188F0D398();
    sub_18A4A49B8();
    v18 = *(v16 + 64);
    a5[1] = v14;
    v19 = *a2;
    v20 = *(a2 + 16);
    *(a5 + 1) = *a2;
    *(a5 + 2) = v20;
    v21 = *(a2 + 29);
    *(a5 + 45) = v21;
    *(a5 + 7) = v19;
    *(a5 + 9) = v20;
    *(a5 + 85) = v21;
    *(a5 + 125) = *(a4 + 29);
    v22 = *(a4 + 16);
    *(a5 + 6) = *a4;
    *(a5 + 7) = v22;
    *(a5 + v18) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936628);
    swift_storeEnumTagMultiPayload();
    v23 = *(a2 + 16);
    v51[0] = *a2;
    v51[1] = v23;
    *(&v51[1] + 13) = *(a2 + 29);
    sub_188F0D40C(v51, __dst);
    return sub_188F0D40C(v51, __dst);
  }

  else
  {
    sub_188AA7808(v53);
    if (v11 == 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = v11;
    }

    if (v11 == 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = v10;
    }

    if (v11 == 1)
    {
      v43 = 0;
    }

    else
    {
      v43 = v48;
    }

    if (v11 == 1)
    {
      v44 = 0;
    }

    else
    {
      v44 = v12;
    }

    if (v11 == 1)
    {
      v45 = 0;
    }

    else
    {
      v45 = v13;
    }

    v46 = *(a4 + 16);
    *a5 = *a4;
    *(a5 + 1) = v46;
    *(a5 + 29) = *(a4 + 29);
    a5[5] = v41;
    a5[6] = v42;
    a5[7] = v43;
    a5[8] = v44;
    *(a5 + 18) = v45;
    *(a5 + 76) = BYTE4(v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936628);
    swift_storeEnumTagMultiPayload();
    sub_188F0D2E8(a4, __src);
    return sub_188A3F29C(a3, __src, &qword_1EA936850);
  }
}

uint64_t sub_188F0A4EC(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(a1 + 40);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
  }

  return Strong;
}

uint64_t sub_188F0A568(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(a1 + 40);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
  }

  return Strong;
}

uint64_t sub_188F0A5E4(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(a1 + 40);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
  }

  return Strong;
}

uint64_t sub_188F0A660(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(a1 + 40);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
  }

  return Strong;
}

uint64_t sub_188F0A6DC(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(a1 + 40);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
  }

  return Strong;
}

uint64_t sub_188F0A758(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(a1 + 40);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
  }

  return Strong;
}

uint64_t sub_188F0A7D4(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(a1 + 40);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
  }

  return Strong;
}

uint64_t sub_188F0A850(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, _OWORD *, uint64_t), uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 36);
  v7 = *(a2 + 32);
  v8 = *(a2 + 36);
  v9 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v9;
  v17 = v6;
  v16 = v5;
  v10 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v10;
  v14 = v8;
  v13 = v7;
  return a3(v15, v12, a5);
}

uint64_t sub_188F0A8C0(uint64_t (*a1)(_OWORD *, _OWORD *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 32);
  v5 = *(a3 + 36);
  v6 = *(a4 + 32);
  v7 = *(a4 + 36);
  v8 = *(a3 + 16);
  v14[0] = *a3;
  v14[1] = v8;
  v16 = v5;
  v15 = v4;
  v9 = *(a4 + 16);
  v11[0] = *a4;
  v11[1] = v9;
  v13 = v7;
  v12 = v6;
  return a1(v14, v11);
}

uint64_t sub_188F0A92C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 36);
  v7 = *(a2 + 32);
  v8 = a1 + 72;
  v10 = *(a1 + 40);
  sub_188F0B550(*a2);
  result = sub_188F0B59C(v10);
  *(v8 - 32) = v2;
  *(v8 - 24) = v3;
  *(v8 - 16) = v4;
  *(v8 - 8) = v5;
  *(v8 + 4) = v6;
  *v8 = v7;
  return result;
}

uint64_t sub_188F0A9DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14, __n128 a15, __n128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t (*a26)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128, __n128, __n128, __n128, __n128, __n128, __n128, __n128, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  a12.n128_u64[0] = a4[3];
  a13.n128_u64[0] = *a5;
  a14.n128_u64[0] = a5[1];
  a15.n128_u64[0] = a5[2];
  a16.n128_u64[0] = a5[3];
  v32 = a19;
  LOBYTE(a19) = a21;
  HIDWORD(a19) = HIDWORD(a21);
  v34 = __PAIR64__(a10.n128_u32[0], a9.n128_u32[0]);
  LODWORD(a21) = a11.n128_u32[0];
  a9.n128_u64[0] = *a4;
  a10.n128_u64[0] = a4[1];
  a11.n128_u64[0] = a4[2];

  return a26(a1, a2, a3, a6, a7, a8, a17, a18, a9, a10, a11, a12, a13, a14, a15, a16, v32, a20, a19, v34, a21, a22);
}

uint64_t *sub_188F0AA6C(uint64_t *result, uint64_t a2, double a3)
{
  if (a2 == 1)
  {
    return result;
  }

  v4 = result;
  if (!a2)
  {
    v7 = *result;
    goto LABEL_11;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v23 = a3 / 1000.0 / (1.0 - a3);
    v24 = MEMORY[0x1E69E7CC0];

    sub_188CCF904(0, v5, 0);
    v6 = v23;
    v7 = v24;
    v8 = *(v24 + 16);
    v9 = 32 * v8;
    v10 = (a2 + 48);
    do
    {
      v11 = v10[-1];
      v12 = *v10;
      v13 = *(v24 + 24);
      v14 = v8 + 1;
      if (v8 >= v13 >> 1)
      {
        v21 = *v10;
        v22 = v10[-1];
        sub_188CCF904((v13 > 1), v8 + 1, 1);
        v12 = v21;
        v11 = v22;
        v6 = v23;
      }

      *(v24 + 16) = v14;
      v15 = (v24 + v9);
      v15[2] = vmulq_n_f64(v11, v6);
      v15[3] = vmulq_n_f64(v12, v6);
      v9 += 32;
      v10 += 2;
      v8 = v14;
      --v5;
    }

    while (v5);
    v16 = *v4;
    if (!*v4)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v16 = *result;

  v7 = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
LABEL_11:
    result = sub_188CD0030(a2);
LABEL_12:
    *v4 = v7;
    return result;
  }

LABEL_14:
  v17 = *(v16 + 16);
  v18 = *(v7 + 16);
  if (v17 == v18)
  {

    v20 = sub_188EF6C40(v19, v7);

    swift_bridgeObjectRelease_n();
    sub_188CD0030(a2);

    *v4 = v20;
  }

  else
  {
    if (v18 >= v17)
    {

      sub_188CD0030(a2);

      goto LABEL_12;
    }

    sub_188CD0030(a2);

    *v4 = v16;
  }

  return result;
}

uint64_t sub_188F0AC68(uint64_t result, uint64_t a2, double a3)
{
  if (a2)
  {
    v5 = result;
    v6 = *(a2 + 16);
    swift_bridgeObjectRetain_n();
    if (v6)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v7 = a2;
      if ((result & 1) == 0)
      {
        result = sub_188D75E50(a2);
        v7 = result;
      }

      if (v6 > *(v7 + 16))
      {
        __break(1u);
        return result;
      }

      v8 = a3 / 1000.0 / (1.0 - a3);
      if (v6 > 3)
      {
        v9 = v6 & 0x7FFFFFFFFFFFFFFCLL;
        v10 = (v7 + 48);
        v11 = v6 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v12 = vmulq_n_f64(*v10, v8);
          v10[-1] = vmulq_n_f64(v10[-1], v8);
          *v10 = v12;
          v10 += 2;
          v11 -= 4;
        }

        while (v11);
        if (v6 == v9)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v9 = 0;
      }

      v13 = v6 - v9;
      v14 = 8 * v9 + 32;
      do
      {
        *(v7 + v14) = v8 * *(v7 + v14);
        v14 += 8;
        --v13;
      }

      while (v13);
    }

    else
    {
      v7 = a2;
    }

LABEL_14:
    sub_188D85564(*v5, v7);
    v16 = v15;

    *v5 = v16;
  }

  return result;
}

id sub_188F0ADA8(__int128 *a1, __int128 *a2, uint64_t a3, void (*a4)(void *), float a5, uint64_t a6, uint64_t a7, char a8, char a9, id *a10, uint64_t a11)
{
  v18 = objc_opt_self();
  v19 = a1[1];
  v27 = *a1;
  v28 = v19;
  v20 = a1[3];
  v29 = a1[2];
  v30 = v20;
  v31 = a1[4];
  result = [v18 valueWithCAColorMatrix_];
  if (!result)
  {
    goto LABEL_12;
  }

  v22 = result;
  v23 = sub_188A34624(0, &qword_1ED48EC30);
  v32[3] = v23;
  v32[0] = v22;
  if (a4)
  {
    a4(v32);
  }

  sub_188A55598(v32, v26);
  v24 = a2[1];
  v27 = *a2;
  v28 = v24;
  v25 = a2[3];
  v29 = a2[2];
  v30 = v25;
  v31 = a2[4];
  result = [v18 valueWithCAColorMatrix_];
  if (!result)
  {
    goto LABEL_13;
  }

  *(&v28 + 1) = v23;
  *&v27 = result;
  if ((LODWORD(a5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
  }

  else if (a5 > -9.2234e18)
  {
    if (a5 < 9.2234e18)
    {
      sub_188AAC950(v26, &v27, a5, a8 & 1, a9 & 1, a10, a11, a3);
      sub_188A3F5FC(v26, &qword_1EA934050);
      sub_188A3F5FC(&v27, &qword_1EA934050);
      return __swift_destroy_boxed_opaque_existential_0Tm(v32);
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_188F0AF7C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), float a5, uint64_t a6, uint64_t a7, char a8, char a9, id *a10, uint64_t a11)
{
  sub_188CD27A4(a1, v20);
  if (a4)
  {
    a4(v20);
  }

  sub_188A55598(v20, v19);
  result = sub_188CD27A4(a2, v18);
  if ((LODWORD(a5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a5 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a5 < 9.2234e18)
  {
    sub_188AAC950(v19, v18, a5, a8 & 1, a9 & 1, a10, a11, a3);
    sub_188A3F5FC(v18, &qword_1EA934050);
    sub_188A3F5FC(v19, &qword_1EA934050);
    return __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_188F0B0B0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7, char a8, char a9, id *a10, uint64_t a11)
{
  sub_188EB96B4(v19);
  if (a5)
  {
    a5(v19);
  }

  sub_188A55598(v19, v18);
  result = sub_188EB96B4(v17);
  if ((LODWORD(a1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a1 < 9.2234e18)
  {
    sub_188AAC950(v18, v17, a1, a8 & 1, a9 & 1, a10, a11, a4);
    sub_188A3F5FC(v17, &qword_1EA934050);
    sub_188A3F5FC(v18, &qword_1EA934050);
    return __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_188F0B1EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), float a5, uint64_t a6, uint64_t a7, char a8, char a9, id *a10, uint64_t a11)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936368);
  v22[3] = v18;
  v22[0] = a1;

  if (a4)
  {
    a4(v22);
  }

  result = sub_188A55598(v22, v21);
  v20[3] = v18;
  v20[0] = a2;
  if ((LODWORD(a5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a5 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a5 < 9.2234e18)
  {

    sub_188AAC950(v21, v20, a5, a8 & 1, a9 & 1, a10, a11, a3);
    sub_188A3F5FC(v21, &qword_1EA934050);
    sub_188A3F5FC(v20, &qword_1EA934050);
    return __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_188F0B364(float a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7, char a8, char a9, id *a10, uint64_t a11)
{
  sub_18908F708(v18);
  if (a5)
  {
    a5(v18);
  }

  sub_188A55598(v18, v17);
  sub_18908F89C(v18, v16);
  if ((LODWORD(a1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a1 < 9.2234e18)
  {
    sub_188AAC950(v17, v16, a1, a8 & 1, a9 & 1, a10, a11, a4);
    sub_188A3F5FC(v16, &qword_1EA934050);
    sub_188A3F5FC(v17, &qword_1EA934050);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_188F0B550(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_188F0B59C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_188F0B5E8(uint64_t a1, void (*a2)(void *), double a3, double a4, double a5, double a6, float a7, uint64_t a8, uint64_t a9, char a10, char a11, id *a12, uint64_t a13, SEL *a14)
{
  v24 = objc_opt_self();
  v25 = [v24 *a14];
  v26 = sub_188A34624(0, &qword_1ED48EC30);
  v31[3] = v26;
  v31[0] = v25;
  if (a2)
  {
    a2(v31);
  }

  sub_188A55598(v31, v30);
  result = [v24 *a14];
  v29[3] = v26;
  v29[0] = result;
  if ((LODWORD(a7) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a7 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a7 < 9.2234e18)
  {
    sub_188AAC950(v30, v29, a7, a10 & 1, a11 & 1, a12, a13, a1);
    sub_188A3F5FC(v30, &qword_1EA934050);
    sub_188A3F5FC(v29, &qword_1EA934050);
    return __swift_destroy_boxed_opaque_existential_0Tm(v31);
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_188F0B7A8(uint64_t a1, void (*a2)(void *), double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, char a13, char a14, id *a15, uint64_t a16, float a17)
{
  v25 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
  if (a6 > 0.0)
  {
    v27 = a3 / a6;
    v26 = a4 / a6;
    v25 = a5 / a6;
  }

  v28 = [objc_allocWithZone(UIColor) initWithRed:v27 green:v26 blue:v25 alpha:a6];
  v29 = [v28 CGColor];

  type metadata accessor for CGColor(0);
  v31 = v30;
  v41[3] = v30;
  v41[0] = v29;
  if (a2)
  {
    a2(v41);
  }

  sub_188A55598(v41, v40);
  v32 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  if (a10 > 0.0)
  {
    v34 = a7 / a10;
    v33 = a8 / a10;
    v32 = a9 / a10;
  }

  v35 = [objc_allocWithZone(UIColor) initWithRed:v34 green:v33 blue:v32 alpha:a10];
  v36 = [v35 CGColor];

  v39[3] = v31;
  v39[0] = v36;
  if ((LODWORD(a17) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a17 <= -9.2234e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a17 < 9.2234e18)
  {
    sub_188AAC950(v40, v39, a17, a13 & 1, a14 & 1, a15, a16, a1);
    sub_188A3F5FC(v40, &qword_1EA934050);
    sub_188A3F5FC(v39, &qword_1EA934050);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    return;
  }

LABEL_13:
  __break(1u);
}

id sub_188F0B9DC(uint64_t a1, void (*a2)(void *), double a3, double a4, float a5, uint64_t a6, uint64_t a7, char a8, char a9, id *a10, uint64_t a11)
{
  v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v19 = sub_188A34624(0, &qword_1ED48FD80);
  v24[3] = v19;
  v24[0] = v18;
  if (a2)
  {
    a2(v24);
  }

  sub_188A55598(v24, v23);
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v22[3] = v19;
  v22[0] = result;
  if ((LODWORD(a5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a5 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a5 < 9.2234e18)
  {
    sub_188AAC950(v23, v22, a5, a8 & 1, a9 & 1, a10, a11, a1);
    sub_188A3F5FC(v23, &qword_1EA934050);
    sub_188A3F5FC(v22, &qword_1EA934050);
    return __swift_destroy_boxed_opaque_existential_0Tm(v24);
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_188F0BB80(uint64_t a1, void (*a2)(void *), double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, char a13, char a14, id *a15, uint64_t a16, float a17)
{
  v29 = objc_opt_self();
  v30 = [v29 valueWithCGRect_];
  v31 = sub_188A34624(0, &qword_1ED48EC30);
  v37[3] = v31;
  v37[0] = v30;
  if (a2)
  {
    a2(v37);
  }

  sub_188A55598(v37, v36);
  result = [v29 valueWithCGRect_];
  v35[3] = v31;
  v35[0] = result;
  if ((LODWORD(a17) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a17 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a17 < 9.2234e18)
  {
    sub_188AAC950(v36, v35, a17, a13 & 1, a14 & 1, a15, a16, a1);
    sub_188A3F5FC(v36, &qword_1EA934050);
    sub_188A3F5FC(v35, &qword_1EA934050);
    return __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_188F0BD68(float a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7, char a8, char a9, id *a10, uint64_t a11)
{
  sub_188AA9844(&v21);
  v15 = objc_opt_self();
  v16 = [v15 valueWithCATransform3D_];
  v17 = sub_188A34624(0, &qword_1ED48EC30);
  v23[3] = v17;
  v23[0] = v16;
  if (a5)
  {
    a5(v23);
  }

  sub_188A55598(v23, v20);
  result = [v15 valueWithCATransform3D_];
  v22 = v17;
  *&v21 = result;
  if ((LODWORD(a1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a1 < 9.2234e18)
  {
    sub_188AAC950(v20, &v21, a1, a8 & 1, a9 & 1, a10, a11, a4);
    sub_188A3F5FC(v20, &qword_1EA934050);
    sub_188A3F5FC(&v21, &qword_1EA934050);
    return __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t objectdestroy_217Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_188F0BF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 44);
  v8 = *(v3 + 52);
  v9 = *(v3 + 56);
  v10 = *(v3 + 64);
  v11 = *(v3 + 72);
  v12 = *(a1 + 112);
  v21[6] = *(a1 + 96);
  v21[7] = v12;
  v22 = *(a1 + 128);
  v13 = *(a1 + 48);
  v21[2] = *(a1 + 32);
  v21[3] = v13;
  v14 = *(a1 + 80);
  v21[4] = *(a1 + 64);
  v21[5] = v14;
  v15 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v15;
  v16 = *(a2 + 112);
  v23[6] = *(a2 + 96);
  v23[7] = v16;
  v24 = *(a2 + 128);
  v17 = *(a2 + 48);
  v23[2] = *(a2 + 32);
  v23[3] = v17;
  v18 = *(a2 + 80);
  v23[4] = *(a2 + 64);
  v23[5] = v18;
  v19 = *(a2 + 16);
  v23[0] = *a2;
  v23[1] = v19;
  return sub_188F0BD68(v7, v21, v23, a3, v4, v5, v6, v8, v9, v10, v11);
}

void sub_188F0C0E8(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 44);
  v8 = *(v3 + 52);
  v9 = *(v3 + 56);
  v10 = *(v3 + 64);
  v11 = *(v3 + 72);
  v12 = a1[1];
  v14 = *a1;
  v15[0] = v12;
  *(v15 + 13) = *(a1 + 29);
  v13 = a2[1];
  v16 = *a2;
  v17[0] = v13;
  *(v17 + 13) = *(a2 + 29);
  sub_188F0B364(v7, &v14, &v16, a3, v4, v5, v6, v8, v9, v10, v11);
}

id sub_188F0C14C(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 44);
  v8 = *(v3 + 52);
  v9 = *(v3 + 56);
  v10 = *(v3 + 64);
  v11 = *(v3 + 72);
  v12 = a1[1];
  v17[0] = *a1;
  v17[1] = v12;
  v13 = a1[3];
  v17[2] = a1[2];
  v17[3] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  return sub_188F0B0B0(v7, v17, v18, a3, v4, v5, v6, v8, v9, v10, v11);
}

id sub_188F0C250(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 44);
  v8 = *(v3 + 52);
  v9 = *(v3 + 56);
  v10 = *(v3 + 64);
  v11 = *(v3 + 72);
  v12 = a1[3];
  v17[2] = a1[2];
  v17[3] = v12;
  v17[4] = a1[4];
  v13 = a1[1];
  v17[0] = *a1;
  v17[1] = v13;
  v14 = a2[3];
  v18[2] = a2[2];
  v18[3] = v14;
  v18[4] = a2[4];
  v15 = a2[1];
  v18[0] = *a2;
  v18[1] = v15;
  return sub_188F0ADA8(v17, v18, a3, v4, v7, v5, v6, v8, v9, v10, v11);
}

uint64_t objectdestroy_35Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188F0C30C(uint64_t a1)
{
  v2 = *(*(*(v1 + 16) - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(*(v1 + 16) - 8) + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 27) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1 + v9;
  return sub_188EDE5D0(a1, *(v1 + 32), *(v1 + 40), v1 + v3, v1 + v5, (v1 + v6), *(v1 + v7), *(v1 + v7 + 8), *(v1 + v10), *(v1 + v10 + 4), *(v1 + v10 + 8), *(v1 + v8), *(v1 + v8 + 8), *v11, *(v11 + 8), *(v11 + 16), *(v11 + 20), *(v1 + ((v10 + 19) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v10 + 19) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v10 + 35) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v10 + 35) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_188F0C450(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 344);
  v5 = *(v1 + 352);
  v6 = *(v1 + 360);
  v7 = *(v1 + 376);
  v8 = *(v1 + 384);
  v9 = *(v1 + 392);
  v10 = *(v1 + 396);
  v11 = *(v1 + 400);
  v12 = *(v1 + 404);
  v13 = *(v1 + 408);
  v14 = *(v1 + 416);
  v15 = *(v1 + 424);
  v16 = *(v1 + 432);
  v17 = *(v1 + 440);
  v18 = *(v1 + 144);
  v27[6] = *(v1 + 128);
  v27[7] = v18;
  v28 = *(v1 + 160);
  v19 = *(v1 + 80);
  v27[2] = *(v1 + 64);
  v27[3] = v19;
  v20 = *(v1 + 112);
  v27[4] = *(v1 + 96);
  v27[5] = v20;
  v21 = *(v1 + 48);
  v27[0] = *(v1 + 32);
  v27[1] = v21;
  v22 = *(v1 + 248);
  v23 = *(v1 + 280);
  v32 = *(v1 + 264);
  v33 = v23;
  v34 = *(v1 + 296);
  v24 = *(v1 + 184);
  v25 = *(v1 + 216);
  v29[2] = *(v1 + 200);
  v29[3] = v25;
  v30 = *(v1 + 232);
  v31 = v22;
  v29[0] = *(v1 + 168);
  v29[1] = v24;
  return sub_188EDC6A8(a1, v2, v3, v27, v29, (v1 + 304), v4, v5, v11, v12, v13, *&v6, *v29, *&v24, *&v30, *&v25, v6, *(&v6 + 1), v7, v8, v9, v10, v14, v15, v16, v17);
}

uint64_t objectdestroy_759Tm()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 96);

  return MEMORY[0x1EEE6BDD0](v0, 240, 7);
}

uint64_t sub_188F0C5D4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128, __n128, __n128, __n128, __n128, __n128, __n128, __n128, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t), __n128 a3, __n128 a4, __n128 a5, double a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  a3.n128_u32[0] = *(v10 + 192);
  a4.n128_u32[0] = *(v10 + 196);
  a5.n128_u32[0] = *(v10 + 200);
  LOBYTE(v13) = *(v10 + 216);
  HIDWORD(v12) = *(v10 + 188);
  LOBYTE(v12) = *(v10 + 184);
  return sub_188F0A9DC(a1, *(v10 + 16), *(v10 + 24), (v10 + 32), (v10 + 64), v10 + 96, *(v10 + 136), *(v10 + 144), a3, a4, a5, *(v10 + 152), a7, a8, a9, a10, *(v10 + 152), *(v10 + 160), *(v10 + 168), *(v10 + 176), v12, *(v10 + 208), v13, *(v10 + 224), *(v10 + 232), a2);
}

uint64_t objectdestroy_745Tm()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t objectdestroy_773Tm()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_188F0C7B8(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, uint64_t, void, void, void, void, double, double, float, float, float, void, void, char, void, char, void, void))
{
  v6 = *(v2 + 168);
  v5 = *(v2 + 140);
  v4 = *(v2 + 136);
  return a2(a1, *(v2 + 16), *(v2 + 24), v2 + 48, *(v2 + 88), *(v2 + 96), *(v2 + 104), *(v2 + 112), *(v2 + 32), *(v2 + 40), *(v2 + 144), *(v2 + 148), *(v2 + 152), *(v2 + 120), *(v2 + 128), v4, *(v2 + 160), v6, *(v2 + 176), *(v2 + 184));
}

uint64_t sub_188F0C82C(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  v12 = *(v9 + 152);
  v13 = *(v9 + 160);
  v14 = *(v9 + 168);
  v15 = *(v9 + 184);
  v16 = *(v9 + 192);
  v17 = *(v9 + 200);
  v18 = *(v9 + 204);
  v19 = *(v9 + 208);
  v20 = *(v9 + 212);
  v21 = *(v9 + 216);
  v22 = *(v9 + 224);
  v23 = *(v9 + 232);
  v24 = *(v9 + 240);
  v25 = *(v9 + 248);
  v26 = *(v9 + 48);
  v29 = *(v9 + 32);
  v30[0] = v26;
  *(v30 + 13) = *(v9 + 61);
  v27 = *(v9 + 88);
  v31 = *(v9 + 72);
  v32[0] = v27;
  *(v32 + 13) = *(v9 + 101);
  return sub_188ED5B58(a1, v10, v11, &v29, &v31, (v9 + 112), v12, v13, v19, v20, v21, *&v14, *&v31, *&v27, a8, a9, v14, *(&v14 + 1), v15, v16, v17, v18, v22, v23, v24, v25);
}

uint64_t sub_188F0C8F8(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  v12 = *(v9 + 200);
  v13 = *(v9 + 208);
  v14 = *(v9 + 216);
  v15 = *(v9 + 232);
  v16 = *(v9 + 240);
  v17 = *(v9 + 248);
  v18 = *(v9 + 252);
  v19 = *(v9 + 256);
  v20 = *(v9 + 260);
  v21 = *(v9 + 264);
  v22 = *(v9 + 272);
  v23 = *(v9 + 280);
  v24 = *(v9 + 288);
  v25 = *(v9 + 296);
  v26 = *(v9 + 48);
  v31[0] = *(v9 + 32);
  v31[1] = v26;
  v27 = *(v9 + 80);
  v31[2] = *(v9 + 64);
  v31[3] = v27;
  v28 = *(v9 + 112);
  v32[0] = *(v9 + 96);
  v32[1] = v28;
  v29 = *(v9 + 144);
  v33 = *(v9 + 128);
  v34 = v29;
  return sub_188ED3EC4(a1, v10, v11, v31, v32, (v9 + 160), v12, v13, v19, v20, v21, *&v14, *&v33, *&v29, a8, a9, v14, *(&v14 + 1), v15, v16, v17, v18, v22, v23, v24, v25);
}

uint64_t objectdestroy_808Tm()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_188F0CA28(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, uint64_t, void, void, float, float, float, void, void, void, void, char, void, char, void, void))
{
  v6 = *(v2 + 168);
  v5 = *(v2 + 140);
  v4 = *(v2 + 136);
  return a2(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + 48, *(v2 + 88), *(v2 + 96), *(v2 + 144), *(v2 + 148), *(v2 + 152), *(v2 + 104), *(v2 + 112), *(v2 + 120), *(v2 + 128), v4, *(v2 + 160), v6, *(v2 + 176), *(v2 + 184));
}

uint64_t sub_188F0CAD4(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, uint64_t, void, void, void, void, double, double, double, double, float, float, float, void, void, char, void, char, void, void))
{
  v6 = *(v2 + 184);
  v5 = *(v2 + 156);
  v4 = *(v2 + 152);
  return a2(a1, *(v2 + 16), *(v2 + 24), v2 + 64, *(v2 + 104), *(v2 + 112), *(v2 + 120), *(v2 + 128), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 160), *(v2 + 164), *(v2 + 168), *(v2 + 136), *(v2 + 144), v4, *(v2 + 176), v6, *(v2 + 192), *(v2 + 200));
}

uint64_t sub_188F0CB4C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 232);
  v5 = *(v1 + 240);
  v6 = *(v1 + 248);
  v7 = *(v1 + 264);
  v8 = *(v1 + 272);
  v9 = *(v1 + 280);
  v10 = *(v1 + 284);
  v11 = *(v1 + 288);
  v12 = *(v1 + 80);
  v23[2] = *(v1 + 64);
  v23[3] = v12;
  v13 = *(v1 + 112);
  v23[4] = *(v1 + 96);
  v14 = *(v1 + 48);
  v23[0] = *(v1 + 32);
  v23[1] = v14;
  v15 = *(v1 + 128);
  v16 = *(v1 + 160);
  v17 = *(v1 + 176);
  v24[2] = *(v1 + 144);
  v24[3] = v16;
  v14.i32[0] = *(v1 + 292);
  v24[4] = v17;
  v16.i32[0] = *(v1 + 296);
  v18 = *(v1 + 304);
  v19 = *(v1 + 312);
  v20 = *(v1 + 320);
  v21 = *(v1 + 328);
  v24[0] = v13;
  v24[1] = v15;
  return sub_188ED11D8(a1, v2, v3, v23, v24, (v1 + 192), v4, v5, v11, v14.f32[0], v16.f32[0], v6, *(&v6 + 1), v7, v8, v9, v10, v18, v19, v20, v21);
}

uint64_t sub_188F0CC00(_OWORD *a1, _OWORD *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = a1[3];
  v11[2] = a1[2];
  v11[3] = v5;
  v11[4] = a1[4];
  v6 = a1[1];
  v11[0] = *a1;
  v11[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v10[4] = a2[4];
  v8 = a2[1];
  v10[0] = *a2;
  v10[1] = v8;
  return v3(v11, v10, v4);
}

uint64_t sub_188F0CCB8()
{
  v1 = *(v0 + 80);
  v10[2] = *(v0 + 64);
  v10[3] = v1;
  v2 = *(v0 + 112);
  v10[4] = *(v0 + 96);
  v3 = *(v0 + 48);
  v10[0] = *(v0 + 32);
  v10[1] = v3;
  v4 = *(v0 + 128);
  v5 = *(v0 + 160);
  v6 = *(v0 + 176);
  v9[2] = *(v0 + 144);
  v9[3] = v5;
  v9[4] = v6;
  v7 = *(v0 + 16);
  v9[0] = v2;
  v9[1] = v4;
  return v7(v10, v9);
}

uint64_t sub_188F0CD3C(double a1)
{
  v2 = v1;
  if (a1 <= 0.0)
  {
    return *(v1 + 16);
  }

  v47 = 1.0 - pow(*(v1 + 24), a1 * 1000.0);
  v3 = *(v1 + 8);
  v4 = sub_188CD18C0(*(v1 + 40), v3);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {

    v7 = MEMORY[0x1E69E7CC0];
    if (!v3)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v48 = MEMORY[0x1E69E7CC0];
  v6 = v4;
  sub_188CCF904(0, v5, 0);
  v7 = v48;
  v8 = *(v48 + 16);
  v9 = 32 * v8;
  v10 = (v6 + 48);
  v11 = v47;
  do
  {
    v12 = v10[-1];
    v13 = *v10;
    v14 = *(v48 + 24);
    v15 = v8 + 1;
    if (v8 >= v14 >> 1)
    {
      v43 = *v10;
      v45 = v10[-1];
      sub_188CCF904((v14 > 1), v8 + 1, 1);
      v13 = v43;
      v12 = v45;
      v11 = v47;
    }

    *(v48 + 16) = v15;
    v16 = (v48 + v9);
    v16[2] = vmulq_n_f64(v12, v11);
    v16[3] = vmulq_n_f64(v13, v11);
    v9 += 32;
    v10 += 2;
    v8 = v15;
    --v5;
  }

  while (v5);

  if (v3)
  {
LABEL_13:
    v18 = *(v3 + 16);
    v19 = *(v7 + 16);
    if (v18 == v19)
    {

      v21 = sub_188EF6C40(v20, v7);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v7 = v21;
      goto LABEL_19;
    }

    if (v19 >= v18)
    {

      goto LABEL_19;
    }

LABEL_17:
    v7 = v3;
  }

LABEL_19:
  *(v2 + 8) = v7;
  v22 = *(v2 + 16);
  v23 = sub_188CD18C0(v7, v22);
  if (!v23)
  {
LABEL_32:
    result = v22;
    *(v2 + 16) = v22;
    return result;
  }

  v24 = *(v23 + 16);
  if (!v24)
  {

    result = MEMORY[0x1E69E7CC0];
    if (v22)
    {
      goto LABEL_26;
    }

LABEL_29:
    *(v2 + 16) = result;
    return result;
  }

  v49 = MEMORY[0x1E69E7CC0];
  v25 = v23;
  sub_188CCF904(0, v24, 0);
  v26 = v49;
  v27 = *(v49 + 16);
  v28 = 32 * v27;
  v29 = (v25 + 48);
  v30 = v47;
  do
  {
    v31 = v29[-1];
    v32 = *v29;
    v50 = v26;
    v33 = *(v26 + 24);
    v34 = v27 + 1;
    if (v27 >= v33 >> 1)
    {
      v44 = *v29;
      v46 = v29[-1];
      sub_188CCF904((v33 > 1), v27 + 1, 1);
      v32 = v44;
      v31 = v46;
      v30 = v47;
      v26 = v50;
    }

    *(v26 + 16) = v34;
    v35 = (v26 + v28);
    v35[2] = vmulq_n_f64(v31, v30);
    v35[3] = vmulq_n_f64(v32, v30);
    v28 += 32;
    v29 += 2;
    v27 = v34;
    --v24;
  }

  while (v24);
  v36 = v26;

  result = v36;
  if (!v22)
  {
    goto LABEL_29;
  }

LABEL_26:
  v37 = *(v22 + 16);
  v38 = *(result + 16);
  if (v37 == v38)
  {
    v39 = result;

    v41 = sub_188EF6C40(v40, v39);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    result = v41;
    *(v2 + 16) = v41;
    return result;
  }

  if (v38 < v37)
  {

    goto LABEL_32;
  }

  v42 = result;

  result = v42;
  *(v2 + 16) = v42;
  return result;
}

uint64_t sub_188F0D090(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_188F0D0A0(double a1)
{
  if (a1 <= 0.0)
  {
    return *(v1 + 16);
  }

  v28 = 1.0 - pow(*(v1 + 24), a1 * 1000.0);
  v2 = *(v1 + 8);
  sub_188D7EBC0(*(v1 + 40), v2);
  v4 = v3;
  v5 = *(v3 + 16);
  if (!v5)
  {
    v6 = v3;
    goto LABEL_16;
  }

  v6 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_188D75E50(v4);
  }

  if (v5 > *(v6 + 2))
  {
    __break(1u);
LABEL_30:
    result = sub_188D75E50(v4);
    v18 = result;
    goto LABEL_18;
  }

  if (v5 > 3)
  {
    v7 = v5 & 0x7FFFFFFFFFFFFFFCLL;
    v10 = (v6 + 48);
    v11 = v5 & 0x7FFFFFFFFFFFFFFCLL;
    v8 = v28;
    do
    {
      v12 = vmulq_n_f64(*v10, v28);
      v10[-1] = vmulq_n_f64(v10[-1], v28);
      *v10 = v12;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v5 == v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = 0;
    v8 = v28;
  }

  v13 = v5 - v7;
  v14 = &v6[8 * v7 + 32];
  do
  {
    *v14 = v8 * *v14;
    ++v14;
    --v13;
  }

  while (v13);
LABEL_15:

LABEL_16:
  sub_188D85564(v2, v6);
  v16 = v15;

  *(v1 + 8) = v16;
  v2 = *(v1 + 16);
  sub_188D7EBC0(v16, v2);
  v4 = v17;
  v5 = *(v17 + 16);
  if (!v5)
  {
    v18 = v17;
LABEL_28:
    sub_188D85564(v2, v18);
    v27 = v26;

    result = v27;
    *(v1 + 16) = v27;
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v18 = v4;
  if ((result & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_18:
  if (v5 <= *(v18 + 16))
  {
    if (v5 > 3)
    {
      v19 = v5 & 0x7FFFFFFFFFFFFFFCLL;
      v21 = (v18 + 48);
      v22 = v5 & 0x7FFFFFFFFFFFFFFCLL;
      v20 = v28;
      do
      {
        v23 = vmulq_n_f64(*v21, v28);
        v21[-1] = vmulq_n_f64(v21[-1], v28);
        *v21 = v23;
        v21 += 2;
        v22 -= 4;
      }

      while (v22);
      if (v5 == v19)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v19 = 0;
      v20 = v28;
    }

    v24 = v5 - v19;
    v25 = (v18 + 8 * v19 + 32);
    do
    {
      *v25 = v20 * *v25;
      ++v25;
      --v24;
    }

    while (v24);
LABEL_27:

    goto LABEL_28;
  }

  __break(1u);
  return result;
}

unint64_t sub_188F0D398()
{
  result = qword_1EA92EBE0;
  if (!qword_1EA92EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92EBE0);
  }

  return result;
}

uint64_t sub_188F0D3EC(uint64_t result)
{
  if (result != 1)
  {
    return sub_188F0B550(result);
  }

  return result;
}

uint64_t sub_188F0D3FC(uint64_t result)
{
  if (result != 1)
  {
    return sub_188F0B59C(result);
  }

  return result;
}

unint64_t sub_188F0D468()
{
  result = qword_1EA92F2F0;
  if (!qword_1EA92F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F2F0);
  }

  return result;
}

unint64_t sub_188F0D4BC()
{
  result = qword_1ED48C920;
  if (!qword_1ED48C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48C920);
  }

  return result;
}

uint64_t sub_188F0D540(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *a1;
  v7 = *a2;
  v8 = v5;
  return v3(&v8, &v7, v4);
}

uint64_t sub_188F0D5A4()
{
  v1 = v0[2];
  v2 = v0[4];
  v4 = v0[5];
  v5 = v2;
  return v1(&v5, &v4);
}

BOOL sub_188F0D61C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1)
    {
      v2 = *(a2 + 16);
      if (v2 == *(a1 + 16))
      {
        v3 = v2 + 1;
        v4 = (a2 + 56);
        v5 = (a1 + 56);
        do
        {
          result = --v3 == 0;
          if (!v3)
          {
            break;
          }

          if (vabdd_f64(*(v4 - 3), *(v5 - 3)) > 0.01)
          {
            break;
          }

          if (vabdd_f64(*(v4 - 2), *(v5 - 2)) > 0.01)
          {
            break;
          }

          if (vabdd_f64(*(v4 - 1), *(v5 - 1)) > 0.01)
          {
            break;
          }

          v7 = *v4;
          v4 += 4;
          v8 = v7;
          v9 = *v5;
          v5 += 4;
        }

        while (vabdd_f64(v8, v9) <= 0.01);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v15 = *(a2 + 16);
      v16 = (a2 + 32);
      v17 = vdupq_n_s64(0x3F847AE147AE147BuLL);
      do
      {
        result = v15 == 0;
        if (!v15)
        {
          break;
        }

        v19 = *v16;
        v18 = v16[1];
        v16 += 2;
        --v15;
      }

      while ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgeq_f64(v17, vabsq_f64(v19)), vcgeq_f64(v17, vabsq_f64(v18)))))) & 1) == 0);
    }
  }

  else if (a1)
  {
    v10 = *(a1 + 16);
    v11 = (a1 + 32);
    v12 = vdupq_n_s64(0x3F847AE147AE147BuLL);
    do
    {
      result = v10 == 0;
      if (!v10)
      {
        break;
      }

      v14 = *v11;
      v13 = v11[1];
      v11 += 2;
      --v10;
    }

    while ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgeq_f64(v12, vabsq_f64(v14)), vcgeq_f64(v12, vabsq_f64(v13)))))) & 1) == 0);
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t sub_188F0D7D0(_OWORD *a1, _OWORD *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a1[3];
  v11[2] = a1[2];
  v11[3] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v8 = a2[3];
  v10[2] = a2[2];
  v10[3] = v8;
  return v3(v11, v10, v4);
}

uint64_t sub_188F0D848()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v8[0] = *(v0 + 32);
  v8[1] = v2;
  v3 = *(v0 + 80);
  v8[2] = *(v0 + 64);
  v8[3] = v3;
  v4 = *(v0 + 112);
  v7[0] = *(v0 + 96);
  v7[1] = v4;
  v5 = *(v0 + 144);
  v7[2] = *(v0 + 128);
  v7[3] = v5;
  return v1(v8, v7);
}

uint64_t objectdestroy_937Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188F0DA30(_OWORD *a1, _OWORD *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  return v3(v9, v8, v4);
}

uint64_t sub_188F0DA98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v6[0] = *(v0 + 32);
  v6[1] = v2;
  v3 = *(v0 + 80);
  v5[0] = *(v0 + 64);
  v5[1] = v3;
  return v1(v6, v5);
}

uint64_t sub_188F0DB00(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *a1;
  v7 = *a2;
  v8 = v5;
  return v3(&v8, &v7, v4);
}

uint64_t sub_188F0DB68()
{
  v1 = v0[2];
  v2 = v0[4];
  v4 = v0[5];
  v5 = v2;
  return v1(&v5, &v4);
}

uint64_t sub_188F0DC4C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(a1 + 112);
  v16[6] = *(a1 + 96);
  v16[7] = v5;
  v17 = *(a1 + 128);
  v6 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v6;
  v7 = *(a1 + 80);
  v16[4] = *(a1 + 64);
  v16[5] = v7;
  v8 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v8;
  v9 = *(a2 + 112);
  v14[6] = *(a2 + 96);
  v14[7] = v9;
  v15 = *(a2 + 128);
  v10 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v10;
  v11 = *(a2 + 80);
  v14[4] = *(a2 + 64);
  v14[5] = v11;
  v12 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v12;
  return v3(v16, v14, v4);
}

uint64_t sub_188F0DCF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 144);
  v13[6] = *(v0 + 128);
  v13[7] = v2;
  v14 = *(v0 + 160);
  v3 = *(v0 + 80);
  v13[2] = *(v0 + 64);
  v13[3] = v3;
  v4 = *(v0 + 112);
  v13[4] = *(v0 + 96);
  v13[5] = v4;
  v5 = *(v0 + 48);
  v13[0] = *(v0 + 32);
  v13[1] = v5;
  v6 = *(v0 + 248);
  v7 = *(v0 + 280);
  v11[6] = *(v0 + 264);
  v11[7] = v7;
  v12 = *(v0 + 296);
  v8 = *(v0 + 184);
  v9 = *(v0 + 216);
  v11[2] = *(v0 + 200);
  v11[3] = v9;
  v11[4] = *(v0 + 232);
  v11[5] = v6;
  v11[0] = *(v0 + 168);
  v11[1] = v8;
  return v1(v13, v11);
}

uint64_t sub_188F0DDB0(__int128 *a1, __int128 *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *a1;
  v7 = *a2;
  v8 = v5;
  return v3(&v8, &v7, v4);
}

uint64_t objectdestroy_848Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_188F0DEC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v4 = *(v0 + 48);
  v5 = v2;
  return v1(&v5, &v4);
}

uint64_t objectdestroy_864Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

id sub_188F0E274()
{
  v1 = OBJC_IVAR____UIViewControllerTransitionOptions_dimmingColor;
  *&v0[OBJC_IVAR____UIViewControllerTransitionOptions_dimmingColor] = 0;
  v2 = OBJC_IVAR____UIViewControllerTransitionOptions_dimmingVisualEffects;
  *&v0[OBJC_IVAR____UIViewControllerTransitionOptions_dimmingVisualEffects] = 0;
  type metadata accessor for _UIZoomTransitionSettingsDomain();
  v10.receiver = swift_getObjCClassFromMetadata();
  v10.super_class = &OBJC_METACLASS____TtC5UIKit31_UIZoomTransitionSettingsDomain;
  result = objc_msgSendSuper2(&v10, sel_rootSettings);
  if (result)
  {
    v4 = result;
    type metadata accessor for _UIZoomTransitionSpec();
    v5 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:*(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_dimmingOpacity)];
    v6 = *&v0[v1];
    *&v0[v1] = v5;

    *&v0[v2] = MEMORY[0x1E69E7CC0];

    v7 = &v0[OBJC_IVAR____UIViewControllerTransitionOptions_frameOfSourceInDestination];
    v8 = *(MEMORY[0x1E695F050] + 16);
    *v7 = *MEMORY[0x1E695F050];
    v7[1] = v8;
    v0[OBJC_IVAR____UIViewControllerTransitionOptions_popPreemptsPushInSwiftUIEnabled] = 0;
    v9.receiver = v0;
    v9.super_class = _UIViewControllerTransitionOptions;
    return objc_msgSendSuper2(&v9, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188F0E438(void *a1)
{
  v2 = v1;
  [v1 _displayCornerRadius];
  v5 = v4;
  v6 = [v1 coordinateSpace];
  v7 = [(UIScreen *)v1 _typedStorage];
  v8 = sub_18901F134();

  if (v8)
  {
    v10 = *(v8 + 48);
    v9 = *(v8 + 64);
    v28 = *(v8 + 96);
    v11 = *(v8 + 80);
    v26 = v9;
    v27 = v11;
    v24 = *(v8 + 32);
    v25 = v10;
    *(v8 + 32) = v5;
    *(v8 + 40) = 0;
    *(v8 + 48) = v5;
    *(v8 + 56) = 0;
    *(v8 + 64) = v5;
    *(v8 + 72) = 0;
    *(v8 + 80) = v5;
    *(v8 + 88) = 0;
    *(v8 + 96) = MEMORY[0x1E69E7CC0];

    sub_188E4342C(&v24);
    swift_getKeyPath();
    sub_188E434C4();
    sub_18A4A2C08();

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong || (swift_unknownObjectRelease(), Strong != v6))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      swift_unknownObjectRetain();
      sub_18A4A2BF8();

      swift_unknownObjectRelease();
    }
  }

  else
  {
    *&v24 = v5;
    BYTE8(v24) = 0;
    *&v25 = v5;
    BYTE8(v25) = 0;
    *&v26 = v5;
    BYTE8(v26) = 0;
    *&v27 = v5;
    BYTE8(v27) = 0;
    v28 = MEMORY[0x1E69E7CC0];
    type metadata accessor for _UICornerProvider();
    v14 = swift_allocObject();
    swift_getObjectType();
    v15 = swift_unknownObjectRetain();
    v8 = sub_188F2E28C(v15, &v24, v14);
    swift_unknownObjectRelease();

    v16 = [(UIScreen *)v2 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936900);
    v17 = swift_allocObject();
    *(v17 + 16) = v8;
    v18 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(&v16->super.isa + v18);
    *(&v16->super.isa + v18) = 0x8000000000000000;
    sub_188A40430(v17, &_s17CornerProviderKeyVN, isUniquelyReferenced_nonNull_native);
    *(&v16->super.isa + v18) = v23;
    swift_endAccess();
  }

  sub_188F2BF74();
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v20 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_18901B6CC(&type metadata for _UICornerProvider.Trait, sub_188E192C0);
  os_unfair_lock_unlock(v20[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970);
  v21 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [a1 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void sub_188F0E920(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 40) = v5;
    *(a3 + 16) = (*(a3 + 16) | a2) & 1;
    sub_188F0E9FC();
  }
}

uint64_t sub_188F0E968(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = (v2 + 24);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  result = sub_188A55B8C(v3);
  if (!*(v2 + 40))
  {
    v6 = *v4;
    if (*v4)
    {
      *v4 = 0;
      *(v2 + 32) = 0;
      v6(*(v2 + 16));

      return sub_188A55B8C(v6);
    }
  }

  return result;
}

void sub_188F0E9FC()
{
  if (!*(v0 + 40))
  {
    v1 = *(v0 + 24);
    if (v1)
    {
      *(v0 + 24) = 0;
      *(v0 + 32) = 0;
      v1(*(v0 + 16));

      sub_188A55B8C(v1);
    }
  }
}

uint64_t sub_188F0EA74()
{
  sub_188A55B8C(*(v0 + 24));

  return swift_deallocClassInstance();
}

id sub_188F0EF7C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_188F0EFC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64BFB0;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A6510E0;
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v4 = objc_opt_self();
  v5 = [v4 rowWithTitle:v2 childSettingsKeyPath:v3];

  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = sub_188A34624(0, &qword_1EA934BA8);
  *(v1 + 56) = v6;
  *(v1 + 32) = v5;
  v7 = sub_18A4A7258();
  v8 = sub_18A4A7258();
  v9 = [v4 rowWithTitle:v7 childSettingsKeyPath:v8];

  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v1 + 88) = v6;
  *(v1 + 64) = v9;
  v10 = sub_18A4A7258();
  v11 = sub_18A4A7258();
  v12 = [v4 rowWithTitle:v10 childSettingsKeyPath:v11];

  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 120) = v6;
  *(v1 + 96) = v12;
  v13 = sub_18A4A7258();
  v14 = sub_18A4A7258();
  v15 = [v4 rowWithTitle:v13 childSettingsKeyPath:v14];

  if (!v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v1 + 152) = v6;
  *(v1 + 128) = v15;
  v16 = sub_18A4A7258();
  v17 = sub_18A4A7258();
  v18 = [objc_opt_self() rowWithTitle:v16 valueKeyPath:v17];

  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = objc_opt_self();
  *(v1 + 184) = sub_188A34624(0, &unk_1EA936980);
  *(v1 + 160) = v18;
  v20 = sub_18A4A7518();

  v21 = sub_18A4A7258();
  v22 = [v19 sectionWithRows:v20 title:v21];

  if (v22)
  {
    *(v0 + 56) = sub_188A34624(0, &qword_1EA934B98);
    *(v0 + 32) = v22;
    v23 = sub_18A4A7258();
    v24 = sub_18A4A7518();

    [v19 moduleWithTitle:v23 contents:v24];

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_188F0F3F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64D660;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A6510F0;
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v4 = [objc_opt_self() rowWithTitle:v2 childSettingsKeyPath:v3];

  if (!v4)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v1 + 56) = sub_188A34624(0, &qword_1EA934BA8);
  *(v1 + 32) = v4;
  v5 = sub_18A4A7258();
  v6 = sub_18A4A7258();
  v7 = objc_opt_self();
  v8 = [v7 rowWithTitle:v5 valueKeyPath:v6];

  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = sub_188A34624(0, &qword_1EA934B90);
  *(v1 + 88) = v9;
  *(v1 + 64) = v8;
  v10 = sub_18A4A7258();
  v11 = sub_18A4A7258();
  v12 = [v7 rowWithTitle:v10 valueKeyPath:v11];

  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v1 + 120) = v9;
  *(v1 + 96) = v12;
  v13 = sub_18A4A7258();
  v14 = sub_18A4A7258();
  v15 = [v7 rowWithTitle:v13 valueKeyPath:v14];

  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v1 + 152) = v9;
  *(v1 + 128) = v15;
  v16 = sub_18A4A7258();
  v17 = sub_18A4A7258();
  v18 = [v7 rowWithTitle:v16 valueKeyPath:v17];

  if (!v18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v1 + 184) = v9;
  *(v1 + 160) = v18;
  v19 = sub_18A4A7258();
  v20 = sub_18A4A7258();
  v21 = [v7 &selRef:v19 rollbackKeyplane:v20 withTransformationContext:? + 5];

  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(v1 + 216) = v9;
  *(v1 + 192) = v21;
  v22 = sub_18A4A7258();
  v23 = sub_18A4A7258();
  v24 = [v7 &selRef:v22 rollbackKeyplane:v23 withTransformationContext:? + 5];

  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = objc_opt_self();
  *(v1 + 248) = v9;
  *(v1 + 224) = v24;
  v26 = sub_18A4A7518();

  v49 = v25;
  v27 = [v25 sectionWithRows:v26 title:0];

  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v48 = sub_188A34624(0, &qword_1EA934B98);
  *(v0 + 56) = v48;
  *(v0 + 32) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_18A64D660;
  v29 = sub_18A4A7258();
  v30 = sub_18A4A7258();
  v31 = [v7 &selRef:v29 rollbackKeyplane:v30 withTransformationContext:? + 5];

  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v28 + 56) = v9;
  *(v28 + 32) = v31;
  v32 = sub_18A4A7258();
  v33 = sub_18A4A7258();
  v34 = [v7 &selRef:v32 rollbackKeyplane:v33 withTransformationContext:? + 5];

  if (!v34)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(v28 + 88) = v9;
  *(v28 + 64) = v34;
  v35 = sub_18A4A7258();
  v36 = sub_18A4A7258();
  v37 = [v7 &selRef:v35 rollbackKeyplane:v36 withTransformationContext:? + 5];

  if (!v37)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v28 + 120) = v9;
  *(v28 + 96) = v37;
  v38 = sub_18A4A7518();

  v39 = sub_18A4A7258();
  v40 = [v49 sectionWithRows:v38 title:v39];

  if (!v40)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v0 + 88) = v48;
  *(v0 + 64) = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_18A64BFB0;
  v42 = [objc_allocWithZone(MEMORY[0x1E69C6640]) init];
  v43 = sub_18A4A7258();
  v44 = [objc_opt_self() rowWithTitle:v43 action:v42];

  if (!v44)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v41 + 56) = sub_188A34624(0, &qword_1EA934BA0);
  *(v41 + 32) = v44;
  v45 = sub_18A4A7518();

  v46 = [v49 sectionWithRows_];

  if (v46)
  {
    *(v0 + 120) = v48;
    *(v0 + 96) = v46;
    v47 = sub_18A4A7518();

    [v49 moduleWithTitle:0 contents:v47];

    return;
  }

LABEL_29:
  __break(1u);
}

id _UIRelativeCornerMaskingProviderSceneComponent.init(scene:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithScene_];

  return v2;
}

{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____UIRelativeCornerMaskingProviderSceneComponent____lazy_storage___traitOverrides] = 0;
  *&v1[OBJC_IVAR____UIRelativeCornerMaskingProviderSceneComponent____lazy_storage___concentricMaskingSupport] = 0;
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = _UIRelativeCornerMaskingProviderSceneComponent;
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id _UIRelativeCornerMaskingProviderSceneComponent.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double UIWindowScene.bounds.getter()
{
  [objc_msgSend(v0 _coordinateSpace)];
  v2 = v1;
  swift_unknownObjectRelease();
  return v2;
}

unint64_t type metadata accessor for _UIRelativeCornerMaskingProviderSceneComponent()
{
  result = qword_1EA936AD0;
  if (!qword_1EA936AD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA936AD0);
  }

  return result;
}

double sub_188F0FEC8(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v14 = swift_dynamicCastObjCProtocolConditional();
  if (v14)
  {
    v15 = v14;
    swift_unknownObjectRetain();
    v16 = a1;
    [objc_msgSend(v16 _coordinateSpace)];
    a2 = v17;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return a2;
}

uint64_t UIDocumentViewControllerLaunchOptions.background.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 background];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_188F100D4@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 background];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

void UIDocumentViewControllerLaunchOptions.background.setter(uint64_t a1)
{
  v2 = *(*a1 + 16);

  [v1 setBackground_];
}

void (*UIDocumentViewControllerLaunchOptions.background.modify(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 background];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a1 = v4;
  return sub_188F10220;
}

void sub_188F10220(id *a1, char a2)
{
  v2 = a1[1];
  v3 = *(*a1 + 2);
  if (a2)
  {
    [a1[1] setBackground_];
  }

  else
  {
    v4 = v3;

    [v2 setBackground_];
  }
}

uint64_t static UIDocument.StateChangedMessage.makeMessage(_:)@<X0>(void *a1@<X8>)
{
  sub_18A4A2438();
  if (!v6)
  {
    result = sub_188A3F5FC(v5, &qword_1EA934050);
    goto LABEL_5;
  }

  sub_188F103B8();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = v4;
LABEL_6:
  *a1 = v3;
  return result;
}

unint64_t sub_188F103B8()
{
  result = qword_1EA936AD8;
  if (!qword_1EA936AD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA936AD8);
  }

  return result;
}

uint64_t static UIDocument.StateChangedMessage.makeNotification(_:)(void **a1)
{
  v1 = *a1;
  sub_188F103B8();
  v2 = v1;
  v3 = @"UIDocumentStateChangedNotification";
  return sub_18A4A2428();
}

uint64_t sub_188F10480(void **a1)
{
  v1 = *a1;
  sub_188F103B8();
  v2 = v1;
  v3 = @"UIDocumentStateChangedNotification";
  return sub_18A4A2428();
}

uint64_t UIDocument.DidMoveToWritableLocationMessage.oldURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UIDocument.DidMoveToWritableLocationMessage() + 20);
  v4 = sub_18A4A28E8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for UIDocument.DidMoveToWritableLocationMessage()
{
  result = qword_1EA936AE0;
  if (!qword_1EA936AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UIDocument.DidMoveToWritableLocationMessage.oldURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UIDocument.DidMoveToWritableLocationMessage() + 20);
  v4 = sub_18A4A28E8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UIDocument.DidMoveToWritableLocationMessage.init(document:oldURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for UIDocument.DidMoveToWritableLocationMessage() + 20);
  v6 = sub_18A4A28E8();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t static UIDocument.DidMoveToWritableLocationMessage.makeMessage(_:)@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C760);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v22 - v3;
  v5 = sub_18A4A28E8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2438();
  if (!v24)
  {
    v16 = &qword_1EA934050;
    v17 = v23;
LABEL_14:
    sub_188A3F5FC(v17, v16);
    goto LABEL_15;
  }

  sub_188F103B8();
  if (swift_dynamicCast())
  {
    v9 = v25;
    v10 = sub_18A4A2448();
    if (v10)
    {
      v11 = v10;
      v22[1] = sub_18A4A7288();
      v22[2] = v12;
      sub_18A4A8048();
      if (*(v11 + 16) && (v13 = sub_188BBA050(v23), (v14 & 1) != 0))
      {
        sub_188A55598(*(v11 + 56) + 32 * v13, &v25);
        sub_188BBA15C(v23);

        if (*(&v26 + 1))
        {
          v15 = swift_dynamicCast();
          (*(v6 + 56))(v4, v15 ^ 1u, 1, v5);
          if ((*(v6 + 48))(v4, 1, v5) != 1)
          {
            v20 = *(v6 + 32);
            v20(v8, v4, v5);
            v21 = type metadata accessor for UIDocument.DidMoveToWritableLocationMessage();
            v20(&a1[*(v21 + 20)], v8, v5);
            *a1 = v9;
            return (*(*(v21 - 8) + 56))(a1, 0, 1, v21);
          }

          goto LABEL_13;
        }
      }

      else
      {

        sub_188BBA15C(v23);
        v25 = 0u;
        v26 = 0u;
      }
    }

    else
    {

      v25 = 0u;
      v26 = 0u;
    }

    sub_188A3F5FC(&v25, &qword_1EA934050);
    (*(v6 + 56))(v4, 1, 1, v5);
LABEL_13:
    v16 = &qword_1EA93C760;
    v17 = v4;
    goto LABEL_14;
  }

LABEL_15:
  v18 = type metadata accessor for UIDocument.DidMoveToWritableLocationMessage();
  return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
}

uint64_t static UIDocument.DidMoveToWritableLocationMessage.makeNotification(_:)(void **a1)
{
  v2 = *a1;
  sub_188F103B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934D68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  sub_18A4A7288();
  v4 = @"UIDocumentDidMoveToWritableLocationNotification";
  v5 = v2;
  sub_18A4A8048();
  v6 = *(type metadata accessor for UIDocument.DidMoveToWritableLocationMessage() + 20);
  v7 = sub_18A4A28E8();
  *(inited + 96) = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 72));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1 + v6, v7);
  sub_188E8DA14(inited);
  swift_setDeallocating();
  sub_188A3F5FC(inited + 32, &qword_1EA934D78);
  return sub_18A4A2428();
}

unint64_t sub_188F10C84()
{
  result = sub_188F103B8();
  if (v1 <= 0x3F)
  {
    result = sub_18A4A28E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_188F10EA8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_188F11E74();
  }
}

void sub_188F10EFC()
{
  *(v0 + OBJC_IVAR____UIFluidSliderElasticPanDriver_state) = 3;
  if (*(v0 + OBJC_IVAR____UIFluidSliderElasticPanDriver_enabled) == 1)
  {
    v1 = OBJC_IVAR____UIFluidSliderElasticPanDriver_panGestureRecognizer;
    v2 = *(v0 + OBJC_IVAR____UIFluidSliderElasticPanDriver_panGestureRecognizer);
    if (v2)
    {
      [v2 setEnabled_];
      v3 = *(v0 + v1);
      if (v3)
      {

        [v3 setEnabled_];
      }
    }
  }
}

void sub_188F11020(void *a1)
{
  v92 = *MEMORY[0x1E69E9840];
  if ([a1 state] == 1)
  {
    *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_state] = 1;
    *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_previousTranslation] = 0;
    swift_beginAccess();
    _UIUpdateRequestActivate(dword_1EA936AF0, 0x100033u);
    swift_endAccess();
    *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_initialStretchAmount] = *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_stretchAmount];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong presentationValue];
      v5 = v4;
      swift_unknownObjectRelease();
      *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_previousTarget] = v5;
    }

    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_188F12360;
    *(v8 + 24) = v7;
    v90 = sub_188A4B574;
    v91 = v8;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_188A4A968;
    v89 = &block_descriptor_79;
    v9 = _Block_copy(&aBlock);
    v10 = v1;

    [v6 performWithoutAnimation_];
    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if ((v6 & 1) == 0)
    {
      sub_188F11E74();

      return;
    }

    __break(1u);
    __break(1u);
LABEL_36:
    __break(1u);
  }

  v11 = OBJC_IVAR____UIFluidSliderElasticPanDriver_trackAxis;
  if (*&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_trackAxis] == 2 || (v12 = swift_unknownObjectWeakLoadStrong(), v13 = 1.0, v12) && (v14 = v12, v15 = [v12 effectiveUserInterfaceLayoutDirection], v14, v15 == 1))
  {
    v13 = -1.0;
  }

  v16 = [a1 view];
  [a1 translationInView_];
  v18 = v17;
  v20 = v19;

  v21 = [a1 view];
  [a1 velocityInView_];
  v23 = v22;
  v25 = v24;

  v26 = *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_animatedValue];
  v27 = OBJC_IVAR____UIFluidSliderElasticPanDriver_velocityMultiplier;
  v28 = *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_velocityMultiplier];
  v29 = *&v1[v11];
  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v29 == 2)
  {
    v31 = v25;
  }

  else
  {
    v31 = v23;
  }

  v32 = v28 * v31;
  [v30 currentTrackLength];
  v34 = v33;
  swift_unknownObjectRelease();
  [v26 setVelocity_];
  if ([a1 state] != 3 && objc_msgSend(a1, sel_state) != 4)
  {
    if (*&v1[v11] == 2)
    {
      v18 = v20;
    }

    v60 = *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_previousTranslation];
    *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_previousTranslation] = v18;
    v61 = *&v1[v27];
    v62 = swift_unknownObjectWeakLoadStrong();
    if (v62)
    {
      v63 = (v18 - v60) * v61;
      [v62 currentTrackLength];
      v65 = v64;
      swift_unknownObjectRelease();
      v66 = v13 * (v63 / v65) + *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_previousTarget];
      *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_previousTarget] = v66;
      v67 = objc_opt_self();
      v68 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v69 = swift_allocObject();
      *(v69 + 16) = v68;
      *(v69 + 24) = v66;
      v90 = sub_188F12344;
      v91 = v69;
      aBlock = MEMORY[0x1E69E9820];
      v87 = 1107296256;
      v88 = sub_188A4A8F0;
      v89 = &block_descriptor_24;
      v70 = _Block_copy(&aBlock);

      v90 = signpost_c2_entryLock_start;
      v91 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v87 = 1107296256;
      v88 = sub_188C3DD6C;
      v89 = &block_descriptor_54;
      v71 = _Block_copy(&aBlock);
      [v67 _animateByRetargetingAnimations_completion_];
      _Block_release(v71);
      _Block_release(v70);
      return;
    }

    goto LABEL_39;
  }

  swift_beginAccess();
  _UIUpdateRequestDeactivate(dword_1EA936AF0, 0x100033u);
  swift_endAccess();
  [v26 presentationValue];
  v36 = v35;
  v37 = swift_allocObject();
  [v26 velocity];
  v39 = v36 + v38 * 0.099;
  *(v37 + 16) = v39;
  v40 = (v37 + 16);
  v41 = objc_opt_self();
  v42 = [v41 rootSettings];
  v43 = [v42 elasticPanDriverSettings];

  [v43 projectionThreshold];
  v45 = v44;

  v46 = swift_unknownObjectWeakLoadStrong();
  if (!v46)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  [v46 currentTrackLength];
  v48 = v47;
  swift_unknownObjectRelease();
  v49 = v45 / v48;
  if (v45 / v48 < 0.0)
  {
    v49 = 0.0;
  }

  if (vabdd_f64(v39, v36) < v49)
  {
    [v26 value];
    v39 = v50;
    *v40 = v50;
  }

  v51 = swift_unknownObjectWeakLoadStrong();
  if (v51)
  {
    aBlock = 0xBFF0000000000000;
    v52 = [v51 driver:v1 shouldAdjustValueForProposedValue:&aBlock adjustedValue:0 startValue:0 endValue:v39];
    swift_unknownObjectRelease();
    if (v52)
    {
      *v40 = aBlock;
    }
  }

  v53 = swift_unknownObjectWeakLoadStrong();
  if (v53)
  {
    v54 = v53;
    v55 = v1;
    if ([v53 isLocked])
    {
      [v54 value];
      v57 = v56;
      swift_unknownObjectRelease();
      v58 = v57;
      v59 = v57;
    }

    else
    {
      [v54 minValue];
      v73 = v72;
      [v54 maxValue];
      v75 = v74;
      swift_unknownObjectRelease();
      if (v73 > v75)
      {
        goto LABEL_36;
      }

      v59 = v75;
      v58 = v73;
    }
  }

  else
  {
    v55 = v1;
    v59 = 1.0;
    v58 = 0.0;
  }

  sub_1891F0578(v58, v59);
  *&v55[OBJC_IVAR____UIFluidSliderElasticPanDriver_state] = 2;
  v76 = objc_opt_self();
  v77 = [v41 rootSettings];
  v78 = [v77 elasticPanDriverSettings];

  v79 = [v78 update];
  v80 = [v79 springAnimationBehavior];

  v81 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v82 = swift_allocObject();
  *(v82 + 16) = v81;
  *(v82 + 24) = v37;
  v90 = sub_188F12350;
  v91 = v82;
  aBlock = MEMORY[0x1E69E9820];
  v87 = 1107296256;
  v88 = sub_188A4A8F0;
  v89 = &block_descriptor_64_0;
  v83 = _Block_copy(&aBlock);

  v84 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v90 = sub_188F12358;
  v91 = v84;
  aBlock = MEMORY[0x1E69E9820];
  v87 = 1107296256;
  v88 = sub_188C3DD6C;
  v89 = &block_descriptor_70_1;
  v85 = _Block_copy(&aBlock);

  [v76 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v85);
  _Block_release(v83);
}

uint64_t sub_188F119F8(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 16;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_188F123C8;
  *(v5 + 24) = v4;
  v8[4] = sub_188E3FE50;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_188A4A968;
  v8[3] = &block_descriptor_89;
  v6 = _Block_copy(v8);

  UIFS_HFR(v6);
  _Block_release(v6);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_188F11B48(uint64_t a1, double *a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *&Strong[OBJC_IVAR____UIFluidSliderElasticPanDriver_animatedValue];

  swift_beginAccess();
  [v4 setValue_];
}

void sub_188F11BC8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____UIFluidSliderElasticPanDriver_state) == 2)
    {
      *(Strong + OBJC_IVAR____UIFluidSliderElasticPanDriver_state) = 0;
      sub_188F11E74();
    }
  }
}

uint64_t sub_188F11C34(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_188F12444;
  *(v5 + 24) = v4;
  v8[4] = sub_188E3FE50;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_188A4A968;
  v8[3] = &block_descriptor_99_1;
  v6 = _Block_copy(v8);

  UIFS_HFR(v6);
  _Block_release(v6);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_188F11D90(double a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = *&Strong[OBJC_IVAR____UIFluidSliderElasticPanDriver_animatedValue];

  [v3 setValue_];
}

void sub_188F11E74()
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = OBJC_IVAR____UIFluidSliderElasticPanDriver_state;
  if (*(v0 + OBJC_IVAR____UIFluidSliderElasticPanDriver_state) != 3)
  {
    v2 = v0;
    v3 = *(v0 + OBJC_IVAR____UIFluidSliderElasticPanDriver_initialStretchAmount);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      __break(1u);
      return;
    }

    [Strong currentTrackLength];
    v6 = v5;
    swift_unknownObjectRelease();
    [*(v0 + OBJC_IVAR____UIFluidSliderElasticPanDriver_animatedValue) presentationValue];
    v8 = v7;
    v28 = v7;
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v26 = -1.0;
      v27[0] = -1.0;
      v25 = -1.0;
      v10 = [v9 driver:v0 shouldAdjustValueForProposedValue:v27 adjustedValue:&v26 startValue:&v25 endValue:v8];
      v11 = -1.0;
      if (v10)
      {
        if (v26 > v25)
        {
          goto LABEL_20;
        }

        v11 = v27[0];
        sub_188F120EC(v27[0], v26, v25);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v11 = -1.0;
    }

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      if ([v12 isLocked])
      {
        [v13 value];
        v15 = v14;
        swift_unknownObjectRelease();
        v16 = v15;
        v17 = v15;
      }

      else
      {
        [v13 minValue];
        v19 = v18;
        [v13 maxValue];
        v21 = v20;
        swift_unknownObjectRelease();
        if (v19 > v21)
        {
          goto LABEL_21;
        }

        v17 = v21;
        v16 = v19;
      }
    }

    else
    {
      v17 = 1.0;
      v16 = 0.0;
    }

    if (v3 / v6 >= 0.0)
    {
      sub_1891F04F0(v16, v17, -(v3 / v6), v3 / v6);
      v22 = v28;
      v23 = *(v2 + v1);
      v24 = swift_unknownObjectWeakLoadStrong();
      if (v24)
      {
        v27[0] = v22;
        v27[1] = 1.0;
        v27[2] = v23;
        *&v27[3] = 1;
        v27[4] = v11;
        [v24 fluidSliderDriver:v2 didGenerateUpdate:v27];
        swift_unknownObjectRelease();
      }

      return;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

void sub_188F120EC(double a1, double a2, double a3)
{
  v4 = *v3;
  if ((*&a3 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v5 = *v3;
  }

  else
  {
    v5 = a3;
  }

  if ((~*&a3 & 0x7FF0000000000000) != 0)
  {
    v5 = a3;
  }

  if (v4 <= a3)
  {
    v5 = *v3;
  }

  if ((*&v5 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = v5;
  }

  if ((~*&v5 & 0x7FF0000000000000) != 0)
  {
    v6 = v5;
  }

  if (v5 >= a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = a2;
  }

  if (v4 > a1)
  {
    a2 = a3;
  }

  if (a2 != a1)
  {
    v8 = vabdd_f64(a1, a2);
    *v3 = v8 * pow((v7 - a1) / v8, 5.0) + a1;
  }
}

id sub_188F12180()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIFluidSliderElasticPanDriver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_188F12244(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v4 = Strong;
  v5 = swift_unknownObjectWeakLoadStrong();
  [a1 locationInView_];
  v7 = v6;
  v9 = v8;

  v10 = [v4 driver:v1 shouldBeginAtPoint:{v7, v9}];
  swift_unknownObjectRelease();
  return v10;
}

id sub_188F12360()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____UIFluidSliderElasticPanDriver_animatedValue);
  [v2 setValue_];

  return [v2 setVelocity_];
}

void UIFS_HFR(void *a1)
{
  v1 = a1;
  v3 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048627 updateReason:v1 animations:*&v3.minimum, *&v3.maximum, *&v3.preferred];
}

void sub_188F12580()
{
  v1 = OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_temporaryViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v0 + v1) = MEMORY[0x1E69E7CC0];

    v7 = *(v0 + OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_toolbarSnapshot);
    *(v0 + OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_toolbarSnapshot) = 0;

    return;
  }

  v3 = sub_18A4A7F68();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 >= 1)
  {

    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_188E49300(i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      [v5 removeFromSuperview];
    }

    goto LABEL_10;
  }

  __break(1u);
}

id sub_188F1269C()
{
  ObjectType = swift_getObjectType();
  sub_188F12580();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_188F127C8(void *a1)
{
  v2 = [objc_allocWithZone(UIView) init];
  v3 = &selRef_finishTransition;
  [a1 frame];
  [v2 setFrame_];
  [v2 setHidden_];
  [a1 alpha];
  [v2 setAlpha_];
  v4 = [a1 subviews];
  sub_188A34624(0, &qword_1ED48F680);
  v5 = sub_18A4A7548();

  v6 = v5;
  if (v5 >> 62)
  {
    v26 = sub_18A4A7F68();
    v6 = v5;
    v7 = v26;
    v8 = &selRef_setEnqueuedWillEnterForegroundActions_;
    if (v26)
    {
      goto LABEL_3;
    }

LABEL_19:

    return;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8 = &selRef_setEnqueuedWillEnterForegroundActions_;
  if (!v7)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v9 = 0;
    v27 = v6 & 0xC000000000000001;
    v28 = v6;
    while (1)
    {
      v22 = v27 ? sub_188E49300(v9, v6) : *(v6 + 8 * v9 + 32);
      v21 = v22;
      v23 = [a1 currentBackgroundView];
      if (!v23)
      {
        break;
      }

      v24 = v23;
      v25 = sub_18A4A7C88();

      if ((v25 & 1) == 0)
      {
        goto LABEL_16;
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10)
      {
        goto LABEL_16;
      }

      v11 = v10;
      v12 = objc_allocWithZone(_UIBarBackground);
      v13 = v3;
      v14 = a1;
      v15 = v2;
      v16 = v21;
      v17 = [v12 init];
      v18 = [v11 layout];
      [v17 setLayout_];

      [v17 transitionBackgroundViewsAnimated_];
      v2 = v15;
      a1 = v14;
      v3 = v13;
      v8 = &selRef_setEnqueuedWillEnterForegroundActions_;
      v19 = v17;
LABEL_7:
      v20 = v19;
      [v21 v3[509]];
      [v20 v8[400]];
      [v2 addSubview_];

      v21 = v20;
LABEL_8:
      ++v9;

      v6 = v28;
      if (v7 == v9)
      {
        goto LABEL_19;
      }
    }

LABEL_16:
    v19 = [v21 snapshotViewAfterScreenUpdates_];
    if (!v19)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void sub_188F12AE0(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_toolbarSnapshot);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_toolbarSnapshot);
  }

  else
  {
    sub_188F127C8(a1);
    v5 = v6;
  }

  v7 = OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_temporaryViews;
  swift_beginAccess();
  v8 = v4;
  v9 = v5;
  MEMORY[0x18CFE2450]();
  if (*((*(v2 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18A4A7588();
  }

  sub_18A4A75F8();
  swift_endAccess();
  sub_188A34624(0, &qword_1ED48E8C0);
  v10 = sub_18A4A7518();
  [a1 setItems:v10 animated:0];

  if (*(v2 + OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_isZoomingIn) == 1)
  {
    v11 = [a1 superview];
    [v11 addSubview_];

    v12 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];
    [a1 frame];
    [v12 setFrame_];
    [v12 setHidesSourceView_];
    [*(v2 + OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_overlay) addSubview_];
    v13 = swift_beginAccess();
    MEMORY[0x18CFE2450](v13);
    if (*((*(v2 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();
    swift_endAccess();
  }

  else
  {
    [*(v2 + OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_overlay) addSubview_];
  }
}

double sub_188F12D64@<D0>(uint64_t *a1@<X8>)
{
  a1[3] = &_s13ShadowMetricsVN;
  a1[4] = &off_1EFACAC60;
  v2 = swift_allocObject();
  *a1 = v2;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

void sub_188F12DF0(void *a1)
{
  v2 = v1;
  v4 = [v2 collapsedPreview];
  if (v4)
  {
    v5 = v4;
    if (!a1)
    {

      if (!_UIContextMenuReduceMotionEnabled())
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    sub_188A34624(0, &qword_1EA930100);
    v6 = a1;
    v7 = sub_18A4A7C88();

    if (v7)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (_UIContextMenuReduceMotionEnabled())
  {
LABEL_5:
    [v2 setHidesCollapsedSourceView_];
  }

LABEL_6:
  if (([v2 expanded] & 1) == 0)
  {
    sub_188D62314();
  }

  [v2 _updateCollapsedPortalView];
}

id sub_188F12FDC(uint64_t a1)
{
  v6.super_class = _UIContentPlatterView;
  v3 = objc_msgSendSuper2(&v6, sel_collapsedShadowStyle);
  v5.receiver = v1;
  v5.super_class = _UIContentPlatterView;
  objc_msgSendSuper2(&v5, sel_setCollapsedShadowStyle_, a1);
  result = [v1 collapsedShadowStyle];
  if (result != v3)
  {
    if ([v1 alwaysCompact])
    {
      [v1 setExpandedShadowStyle_];
    }

    sub_188D81DB4();
    return [v1 _updateShadowPath];
  }

  return result;
}

void sub_188F133B4(char a1)
{
  objc_msgSendSuper2(&v17, sel_setHidesCollapsedSourceView_, a1 & 1);
  v2 = [v1 collapsedPortalView];
  if (v2)
  {
    v3 = v2;
    [v2 setHidesSourceView_];
  }

  if (([v1 hidesCollapsedSourceView] & 1) == 0)
  {
    v16 = [v1 collapsedPreview];
    if (v16)
    {
      v4 = [v1 morphView];
      v5 = OBJC_IVAR____UIMagicMorphView_destinations;
      swift_beginAccess();
      v6 = *&v4[v5];
      v15 = v4;
      if (v6 >> 62)
      {
        goto LABEL_22;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
      {

        if (!i)
        {
          break;
        }

        v8 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = sub_188E494B4(v8, v6);
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v9 = *(v6 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          sub_188A34624(0, &qword_1ED490230);
          v12 = [*&v10[OBJC_IVAR____UIMagicMorphDestination_preview] view];
          v13 = [v16 view];
          v14 = sub_18A4A7C88();

          if (v14)
          {

            sub_1890DEC38();

            return;
          }

          ++v8;
          if (v11 == i)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        ;
      }

LABEL_17:
    }
  }
}

void sub_188F13650()
{
  [v0 setDidTearOffPreviewForDrag_];
  if ([v0 alwaysCompact])
  {
    v1 = [v0 collapsedPreview];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 _previewMode];

      if (v3 == 4)
      {
        CGAffineTransformMakeScale(&v4, 0.909090909, 0.909090909);
        [v0 setTransform_];
      }
    }
  }
}

void sub_188F13760()
{
  v1 = [v0 expandedPreview];
  if (v1)
  {
    v2 = v1;
    if ([v0 isFrozen] & 1) != 0 || (objc_msgSend(v0, sel_alwaysCompact))
    {
      v3 = v2;
    }

    else
    {
      [v0 setIsFrozen_];
      v14 = [v2 view];
      [v14 bounds];
      v8 = _UISnapshotViewRectAfterCommit(v14, 0, v4, v5, v6, v7);
      if (v8)
      {
        v9 = v8;
        [v14 bounds];
        [(UIView *)v9 setFrame:?];
        v10 = v9;
        v11 = [v2 parameters];
        v12 = [v2 target];
        v13 = [objc_allocWithZone(UITargetedPreview) initWithView:v10 parameters:v11 target:v12];

        [v0 setExpandedPreview_];
      }

      v3 = v14;
    }
  }
}

void sub_188F13960()
{
  v1 = v0;
  v2 = [v0 _destinationPreview];
  if (v2)
  {
    v9 = v2;
    [v2 size];
    v4 = v3;
    v6 = v5;
    v7 = [v0 morphView];
    [v7 setBounds_];

    v8 = [v1 morphView];
    v8[OBJC_IVAR____UIMagicMorphView_contentSizeDidChange] = 1;
    [v8 setNeedsLayout];
    if ([objc_opt_self() _isInAnimationBlock])
    {
      [v8 layoutIfNeeded];
    }

    sub_1890E07A8();

    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
  }
}

void sub_188F13C20()
{
  v1 = [v0 expanded];
  v2 = &selRef_expandedShadowStyle;
  if (!v1)
  {
    v2 = &selRef_collapsedShadowStyle;
  }

  if ([v0 *v2] == 1 && (v3 = objc_msgSend(v0, sel__destinationPreview)) != 0)
  {
    v4 = v3;
    v5 = [v0 layer];
    v6 = [v4 parameters];
    v7 = [v6 effectiveShadowPath];

    if (v7)
    {
      v8 = [v7 CGPath];
    }

    else
    {
      v8 = 0;
    }

    [v5 setShadowPath_];
  }

  else
  {
    v8 = [v0 layer];
    [v8 setShadowPath_];
  }
}

void sub_188F13DD0()
{
  v1 = [v0 collapsedPreview];
  v2 = [v0 collapsedPortalView];
  if (v1)
  {
    v3 = v2;
    if (!v2)
    {
      v3 = [objc_allocWithZone(_UIPortalView) init];
      [v3 setHidesSourceView_];
      [v3 setHidden_];
      [v0 insertSubview:v3 atIndex:0];
      [v0 setCollapsedPortalView_];

      v2 = 0;
    }

    v4 = v2;
    v5 = [v1 view];
    [v3 setSourceView_];

    v6 = [v1 view];
    v7 = [v6 _suppressBackground];

    [v0 setCollapsedPreviewBackgroundSuppression_];
    swift_unknownObjectRelease();
    v8 = v3;
  }

  else
  {
    if (!v2)
    {
      return;
    }

    v9 = v2;
    [v2 removeFromSuperview];
    [v0 setCollapsedPortalView_];
    [v0 setCollapsedPreviewBackgroundSuppression_];
    v8 = v9;
  }
}

id sub_188F1404C(double a1, double a2, double a3, double a4)
{
  v15.receiver = v4;
  v15.super_class = _s21BackgroundCaptureViewCMa();
  v9 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setUserInteractionEnabled_];
  v10 = [v9 layer];

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = sub_18A4A7258();
    [v12 setGroupName_];

    v10 = v13;
  }

  return v9;
}

id sub_188F141E4()
{
  v2.receiver = v0;
  v2.super_class = _s21BackgroundCaptureViewCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_188F14254(id result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2;

    return a3;
  }

  return result;
}

void sub_188F142A4()
{
  v1 = OBJC_IVAR____UIContentPlatterView_morphView;
  type metadata accessor for _UIMagicMorphView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____UIContentPlatterView_collapsedPortalView) = 0;
  *(v0 + OBJC_IVAR____UIContentPlatterView_collapsedPreviewBackgroundSuppression) = 0;
  *(v0 + OBJC_IVAR____UIContentPlatterView_isFrozen) = 0;
  *(v0 + OBJC_IVAR____UIContentPlatterView_didTearOffPreviewForDrag) = 0;
  v2 = (v0 + OBJC_IVAR____UIContentPlatterView_backgroundCapture);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  *(v0 + OBJC_IVAR____UIContentPlatterView__shadowProperties) = 0;
  sub_18A4A8398();
  __break(1u);
}

uint64_t sub_188F14554()
{
  if ([v0 _hasInvalidated])
  {
    sub_188F1558C();
    swift_allocError();
    *v1 = 0;
    return swift_willThrow();
  }

  if (qword_1EA92FEE0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EA92FEF0;
  if ([v0 _sceneComponentForKey_])
  {
    _s17TextureControllerCMa();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  objc_allocWithZone(_s17TextureControllerCMa());
  v4 = v0;
  v5 = sub_188F167B8();

  [v4 _registerSceneComponent_forKey_];
  return v5;
}

uint64_t sub_188F1468C()
{
  sub_188A34624(0, &qword_1ED48F7A0);
  result = sub_18A4A7CB8();
  qword_1EA92FEF0 = result;
  return result;
}

id sub_188F14864(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), id a4)
{
  v9 = sub_188F14554();
  if (!v4)
  {
    v10 = v9;
    a4 = sub_188DD0418(a1, a2, a3);
  }

  return a4;
}

id sub_188F14908(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [a1 window];
  if (v12 && (v13 = v12, v12, v13 == v6))
  {
    v16 = sub_188F14B84(a5, a6);
    v17 = *&v16[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C136_UISelfTargetingTextureWindowStorage_controller];

    v6 = sub_188DD0E2C(a1, a2, a3);
  }

  else
  {
    sub_188F1558C();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
  }

  return v6;
}

id sub_188F14B84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v2, &unk_1EA936D88);
  swift_endAccess();
  if (v4)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (!*(&v20 + 1))
  {
    sub_188A3F5FC(v21, &qword_1EA934050);
    goto LABEL_8;
  }

  type metadata accessor for _UISelfTargetingTextureWindowStorage();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v6 = *(a2 + 16);
    v7 = type metadata accessor for _UISharedTextureController();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_delegate];
    *&v8[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v8[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_sharingContexts] = sub_188E8E398(MEMORY[0x1E69E7CC0]);
    *(v9 + 1) = v6;
    swift_unknownObjectWeakAssign();
    v18.receiver = v8;
    v18.super_class = v7;
    v10 = objc_msgSendSuper2(&v18, sel_init);
    v11 = type metadata accessor for _UISelfTargetingTextureWindowStorage();
    v12 = objc_allocWithZone(v11);
    *&v12[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C136_UISelfTargetingTextureWindowStorage_containerView] = 0;
    *&v12[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C136_UISelfTargetingTextureWindowStorage_controller] = v10;
    v17.receiver = v12;
    v17.super_class = v11;
    v13 = v10;
    v14 = objc_msgSendSuper2(&v17, sel_init);
    swift_beginAccess();
    v5 = v14;
    objc_setAssociatedObject(v2, &unk_1EA936D88, v5, 1);
    swift_endAccess();

    return v5;
  }

  return v16;
}

id sub_188F14D80(uint64_t a1, uint64_t a2)
{
  v5 = sub_188F14B84(a1, a2);
  v6 = *&v5[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C136_UISelfTargetingTextureWindowStorage_containerView];
  v7 = v6;

  if (!v6)
  {
    [v2 bounds];
    v12 = [objc_allocWithZone(type metadata accessor for _UISharedTextureContainerView()) initWithFrame_];
    [v12 setUserInteractionEnabled_];
    v13 = [v12 layer];
    [v13 setAllowsHitTesting_];

    [v12 setHidden_];
    v14 = sub_188F14B84(a1, a2);
    v15 = *&v14[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C136_UISelfTargetingTextureWindowStorage_containerView];
    *&v14[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C136_UISelfTargetingTextureWindowStorage_containerView] = v12;
    v7 = v12;

    [v2 insertSubview:v7 atIndex:0];
  }

  return v7;
}

id sub_188F14FF4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_188F15058()
{
  sub_18A4A80E8();

  strcpy(v2, "SharedTexture-");
  v0 = sub_18A4A8618();
  MEMORY[0x18CFE22D0](v0);

  return v2[0];
}

id sub_188F150F4()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_delegate + 8] = 0;
  swift_unknownObjectWeakAssign();
  sub_188DED0E8();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_188F15444(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_188F1548C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_188F154E0()
{
  result = qword_1EA936E50;
  if (!qword_1EA936E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA936E50);
  }

  return result;
}

unint64_t sub_188F15538()
{
  result = qword_1EA92FF08[0];
  if (!qword_1EA92FF08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA92FF08);
  }

  return result;
}

unint64_t sub_188F1558C()
{
  result = qword_1EA936E60;
  if (!qword_1EA936E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA936E60);
  }

  return result;
}

uint64_t sub_188F155F4(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935770);
  result = sub_188A3F704(a3, v7 + *(*(v8 - 8) + 72) * a1, &unk_1EA935770);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_188F156AC(unint64_t result, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  *(v4 + 25) = *(a2 + 25);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_188F15704(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_188F1575C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_188F157B4(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a3[13];
  v5 = (a4[7] + (result << 8));
  v5[12] = a3[12];
  v5[13] = v4;
  v5[14] = a3[14];
  *(v5 + 233) = *(a3 + 233);
  v6 = a3[9];
  v5[8] = a3[8];
  v5[9] = v6;
  v7 = a3[11];
  v5[10] = a3[10];
  v5[11] = v7;
  v8 = a3[5];
  v5[4] = a3[4];
  v5[5] = v8;
  v9 = a3[7];
  v5[6] = a3[6];
  v5[7] = v9;
  v10 = a3[1];
  *v5 = *a3;
  v5[1] = v10;
  v11 = a3[3];
  v5[2] = a3[2];
  v5[3] = v11;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

unint64_t sub_188F15840(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 216 * result;
  v5 = *(a3 + 80);
  *(v4 + 64) = *(a3 + 64);
  *(v4 + 80) = v5;
  v6 = *(a3 + 48);
  *(v4 + 32) = *(a3 + 32);
  *(v4 + 48) = v6;
  v7 = *(a3 + 144);
  *(v4 + 128) = *(a3 + 128);
  *(v4 + 144) = v7;
  v8 = *(a3 + 112);
  *(v4 + 96) = *(a3 + 96);
  *(v4 + 112) = v8;
  *(v4 + 208) = *(a3 + 208);
  v9 = *(a3 + 192);
  *(v4 + 176) = *(a3 + 176);
  *(v4 + 192) = v9;
  *(v4 + 160) = *(a3 + 160);
  v10 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v10;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_188F158C8(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = (a4[7] + 160 * result);
  v5 = a3[5];
  v4[4] = a3[4];
  v4[5] = v5;
  v6 = a3[3];
  v4[2] = a3[2];
  v4[3] = v6;
  v7 = a3[9];
  v4[8] = a3[8];
  v4[9] = v7;
  v8 = a3[7];
  v4[6] = a3[6];
  v4[7] = v8;
  v9 = a3[1];
  *v4 = *a3;
  v4[1] = v9;
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_188F15938(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_188E8FC60(a3, a4[7] + 16 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_188F159A0(unint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3 & 1;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_188F159F0(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_188F15A3C(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v6[2] = a4[2];
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_188F15A98(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UITextEffectView.EffectID();
  sub_188F16994(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for UITextEffectView.EffectID);
  result = sub_188A5EBAC(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_188F15B58(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_188E904EC(a3, a4[7] + 8 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_188F15BC4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

uint64_t sub_188F15C10(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_188A3F704(a3, a4[7] + 8 * a1, a5);
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

unint64_t sub_188F15C84(unint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_188F15CD0(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_188F15D14(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_188F166A0(a3, a4[7] + 32 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_188F15D7C(unint64_t result, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  v7 = (a3[7] + 32 * result);
  *v7 = a4;
  v7[1] = a5;
  v7[2] = a6;
  v7[3] = a7;
  v8 = a3[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v10;
  }

  return result;
}

uint64_t sub_188F15DC8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_18A4A29D8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_188F15E80(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for UITextEffectView.EffectID();
  result = sub_188F16994(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for UITextEffectView.EffectID);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_188F15F2C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = _s8CacheKeyVMa();
  result = sub_188F16994(a2, v8 + *(*(v9 - 8) + 72) * a1, _s8CacheKeyVMa);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_188F15FE0(unint64_t result, __int16 a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 2 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_188F16024(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_188F16068(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  result = sub_188F16994(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  v11 = a4[7] + 72 * a1;
  *(v11 + 64) = *(a3 + 64);
  v12 = *(a3 + 48);
  *(v11 + 32) = *(a3 + 32);
  *(v11 + 48) = v12;
  v13 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v13;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_188F16138(unint64_t a1, uint64_t a2, __int16 a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  result = sub_188F16994(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  v11 = (a4[7] + 2 * a1);
  *v11 = a3 & 1;
  v11[1] = HIBYTE(a3) & 1;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_188F161FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  result = sub_188F16994(a2, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_188F162B8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  sub_188F16994(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  v10 = a4[7];
  v11 = type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration(0);
  result = sub_188F16994(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_188F163A4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}