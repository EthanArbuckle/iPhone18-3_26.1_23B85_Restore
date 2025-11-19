uint64_t MATipDismissal.description.getter()
{
  v1 = v0;
  sub_21498FE00();
  MEMORY[0x2160589C0](0x287373696D736944, 0xE900000000000022);
  MEMORY[0x2160589C0](*v1, v1[1]);
  MEMORY[0x2160589C0](0xD000000000000013, 0x80000002149A21C0);
  v2 = type metadata accessor for MATipDismissal();
  v3 = *(v2 + 20);
  sub_21498E320();
  sub_2148F6CD8(&qword_27CA1BA28);
  v4 = sub_214990050();
  MEMORY[0x2160589C0](v4);

  MEMORY[0x2160589C0](0xD000000000000012, 0x80000002149A21E0);
  v7 = *(v1 + *(v2 + 24));
  v5 = sub_214990050();
  MEMORY[0x2160589C0](v5);

  MEMORY[0x2160589C0](10530, 0xE200000000000000);
  return 0;
}

BOOL static MATipDismissal.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_214990080()) && (v5 = type metadata accessor for MATipDismissal(), v6 = *(v5 + 20), (sub_21498E2F0()))
  {
    return *(a1 + *(v5 + 24)) == *(a2 + *(v5 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2148F5458()
{
  v1 = 0x6D73694465746164;
  if (*v0 != 1)
  {
    v1 = 0x65747441636E7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6449706974;
  }
}

uint64_t sub_2148F54C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2148F77B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2148F54EC(uint64_t a1)
{
  v2 = sub_2148F6C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148F5528(uint64_t a1)
{
  v2 = sub_2148F6C84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MATipDismissal.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BA30, &qword_214997110);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148F6C84();
  sub_2149901C0();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_214990000();
  if (!v2)
  {
    v13 = type metadata accessor for MATipDismissal();
    v14 = *(v13 + 20);
    v17[14] = 1;
    sub_21498E320();
    sub_2148F6CD8(&qword_2811926F8);
    sub_214990040();
    v15 = *(v3 + *(v13 + 24));
    v17[13] = 2;
    sub_214990030();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MATipDismissal.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v29 = sub_21498E320();
  v27 = *(v29 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BA40, &qword_214997118);
  v28 = *(v30 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = v23 - v8;
  v10 = type metadata accessor for MATipDismissal();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148F6C84();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v10;
  v25 = a1;
  v16 = v28;
  v15 = v29;
  v33 = 0;
  *v13 = sub_21498FF60();
  v13[1] = v17;
  v23[2] = v17;
  v32 = 1;
  sub_2148F6CD8(&qword_2811926E0);
  sub_21498FFA0();
  (*(v27 + 32))(v13 + *(v24 + 20), v6, v15);
  v31 = 2;
  v23[1] = 0;
  v18 = sub_21498FF90();
  v19 = v25;
  v20 = v18;
  v21 = *(v24 + 24);
  (*(v16 + 8))(v9, v30);
  *(v13 + v21) = v20;
  sub_2148F6D1C(v13, v26);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_2148F6D80(v13);
}

BOOL sub_2148F5B24(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_214990080()) && (v7 = *(a3 + 20), (sub_21498E2F0()))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t _s19iCloudMailAssistant11MATipActionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[7];
  v13 = a2[6];
  v14 = a1[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_214990080() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v3 != v10 || v5 != v9) && (sub_214990080() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (v11 && (v14 == v13 && v6 == v11 || (sub_214990080() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v11)
  {
    return 1;
  }

  return 0;
}

uint64_t _s19iCloudMailAssistant5MATipV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v80 = a1[7];
  v81 = a1[6];
  v73 = a1[8];
  v10 = a1[10];
  v77 = a1[9];
  v75 = a1[11];
  v11 = *(a1 + 7);
  v112[0] = *(a1 + 6);
  v112[1] = v11;
  v12 = *(a1 + 9);
  v112[2] = *(a1 + 8);
  v112[3] = v12;
  v67 = a1[20];
  v69 = a1[21];
  v70 = v10;
  v13 = *(a1 + 14);
  v115 = *(a1 + 13);
  v116 = v13;
  v14 = *(a1 + 12);
  v113 = *(a1 + 11);
  v114 = v14;
  v15 = *(a1 + 18);
  v119 = *(a1 + 17);
  v120 = v15;
  v16 = *(a1 + 16);
  v117 = *(a1 + 15);
  v118 = v16;
  v17 = *(a1 + 19);
  v18 = *(a1 + 20);
  v19 = *(a1 + 22);
  v123 = *(a1 + 21);
  v124 = v19;
  v121 = v17;
  v122 = v18;
  v65 = a1[46];
  v63 = *(a1 + 376);
  v20 = *a2;
  v21 = a2[1];
  v23 = a2[2];
  v22 = a2[3];
  v24 = a2[4];
  v25 = a2[5];
  v78 = a2[7];
  v79 = a2[6];
  v76 = a2[9];
  v26 = a2[10];
  v71 = v26;
  v72 = a2[8];
  v74 = a2[11];
  v27 = *(a2 + 6);
  v28 = *(a2 + 7);
  v29 = *(a2 + 9);
  v125[2] = *(a2 + 8);
  v125[3] = v29;
  v125[0] = v27;
  v125[1] = v28;
  v30 = *(a2 + 11);
  v31 = *(a2 + 12);
  v32 = *(a2 + 14);
  v128 = *(a2 + 13);
  v129 = v32;
  v126 = v30;
  v127 = v31;
  v33 = *(a2 + 15);
  v34 = *(a2 + 16);
  v35 = *(a2 + 18);
  v132 = *(a2 + 17);
  v133 = v35;
  v130 = v33;
  v131 = v34;
  v36 = *(a2 + 19);
  v37 = *(a2 + 20);
  v38 = *(a2 + 22);
  v136 = *(a2 + 21);
  v137 = v38;
  v134 = v36;
  v135 = v37;
  v66 = a2[20];
  v68 = a2[21];
  v64 = a2[46];
  v62 = *(a2 + 376);
  if ((v4 != v20 || v5 != v21) && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  if (!v7)
  {
    sub_2148F20B8(v6, 0);
    if (!v22)
    {
      sub_2148F20B8(v23, 0);
      v7 = 0;
      goto LABEL_22;
    }

    sub_2148F20B8(v23, v22);
    goto LABEL_15;
  }

  if (!v22)
  {
    sub_2148F20B8(v6, v7);
    sub_2148F20B8(v23, 0);
    sub_2148F20B8(v6, v7);

LABEL_15:
    sub_2148AF724(v6, v7);
    v39 = v23;
    v40 = v22;
LABEL_16:
    sub_2148AF724(v39, v40);
    return 0;
  }

  if ((v6 != v23 || v7 != v22) && (sub_214990080() & 1) == 0)
  {
    sub_2148F20B8(v6, v7);
    sub_2148F20B8(v23, v22);
    sub_2148F20B8(v6, v7);
    sub_2148AF724(v23, v22);

    v39 = v6;
    v40 = v7;
    goto LABEL_16;
  }

  if (v8 == v24 && v9 == v25)
  {
    sub_2148F20B8(v6, v7);
    sub_2148F20B8(v23, v22);
    sub_2148F20B8(v6, v7);
    sub_2148AF724(v23, v22);

LABEL_22:
    sub_2148AF724(v6, v7);
    goto LABEL_23;
  }

  v61 = sub_214990080();
  sub_2148F20B8(v6, v7);
  sub_2148F20B8(v23, v22);
  sub_2148F20B8(v6, v7);
  sub_2148AF724(v23, v22);

  sub_2148AF724(v6, v7);
  if ((v61 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  if ((v81 != v79 || v80 != v78) && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  if (v77)
  {
    if (!v76 || (v73 != v72 || v77 != v76) && (sub_214990080() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v76)
  {
    return 0;
  }

  if (v75)
  {
    if (!v74 || (v70 != v71 || v75 != v74) && (sub_214990080() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v74)
  {
    return 0;
  }

  v42 = v112[0];
  v43 = v125[0];
  if (!*(&v112[0] + 1))
  {
    if (!*(&v125[0] + 1))
    {
      v104 = *&v112[0];
      v51 = *(a1 + 8);
      v105 = *(a1 + 7);
      v106 = v51;
      v107 = *(a1 + 9);
      sub_2148F2328(v112, &v100);
      sub_2148F2328(v125, &v100);
      sub_21489DFCC(&v104, &qword_27CA1B9F0, &qword_2149970D0);
      goto LABEL_51;
    }

    sub_2148F2328(v112, &v104);
    sub_2148F2328(v125, &v104);
LABEL_48:
    v104 = v42;
    v48 = *(a1 + 8);
    v105 = *(a1 + 7);
    v106 = v48;
    v107 = *(a1 + 9);
    v108 = v43;
    v49 = *(a2 + 8);
    v109 = *(a2 + 7);
    v110 = v49;
    v50 = *(a2 + 9);
LABEL_49:
    v111 = v50;
    sub_21489DFCC(&v104, &qword_27CA1BA78, qword_214997A60);
    return 0;
  }

  v104 = v112[0];
  v44 = *(a1 + 8);
  v105 = *(a1 + 7);
  v106 = v44;
  v107 = *(a1 + 9);
  v100 = v112[0];
  v101 = v105;
  v102 = v44;
  v103 = v107;
  if (!*(&v125[0] + 1))
  {
    v90 = v104;
    v91 = v105;
    v92 = v106;
    v93 = v107;
    sub_2148F2328(v112, &v86);
    sub_2148F2328(v125, &v86);
    sub_2148F2328(&v104, &v86);
    sub_2148F6C08(&v90);
    goto LABEL_48;
  }

  v45 = *(a2 + 8);
  v91 = *(a2 + 7);
  v92 = v45;
  v93 = *(a2 + 9);
  v90 = v125[0];
  v46 = _s19iCloudMailAssistant11MATipActionV2eeoiySbAC_ACtFZ_0(&v100, &v90);
  v82 = v90;
  v83 = v91;
  v84 = v92;
  v85 = v93;
  sub_2148F2328(v112, &v86);
  sub_2148F2328(v125, &v86);
  sub_2148F2328(&v104, &v86);
  sub_2148F6C08(&v82);
  v86 = v100;
  v87 = v101;
  v88 = v102;
  v89 = v103;
  sub_2148F6C08(&v86);
  v90 = v42;
  v47 = *(a1 + 8);
  v91 = *(a1 + 7);
  v92 = v47;
  v93 = *(a1 + 9);
  sub_21489DFCC(&v90, &qword_27CA1B9F0, &qword_2149970D0);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  if (v69)
  {
    if (!v68 || (v67 != v66 || v69 != v68) && (sub_214990080() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v68)
  {
    return 0;
  }

  v53 = *(&v113 + 1);
  v52 = v113;
  v97 = v114;
  v98 = v115;
  v99 = v116;
  v54 = *(&v126 + 1);
  v55 = v126;
  v94 = v127;
  v95 = v128;
  v96 = v129;
  if (*(&v113 + 1))
  {
    v104 = v113;
    v105 = v114;
    v106 = v115;
    v107 = v116;
    v100 = v113;
    v101 = v114;
    v102 = v115;
    v103 = v116;
    if (!*(&v126 + 1))
    {
      v90 = v104;
      v91 = v105;
      v92 = v106;
      v93 = v107;
      sub_2148F2328(&v113, &v86);
      v58 = &v126;
LABEL_82:
      sub_2148F2328(v58, &v86);
      sub_2148F2328(&v104, &v86);
      sub_2148F6C08(&v90);
      goto LABEL_83;
    }

    v91 = v127;
    v92 = v128;
    v93 = v129;
    v90 = v126;
    v56 = _s19iCloudMailAssistant11MATipActionV2eeoiySbAC_ACtFZ_0(&v100, &v90);
    v82 = v90;
    v83 = v91;
    v84 = v92;
    v85 = v93;
    sub_2148F2328(&v113, &v86);
    sub_2148F2328(&v126, &v86);
    sub_2148F2328(&v104, &v86);
    sub_2148F6C08(&v82);
    v86 = v100;
    v87 = v101;
    v88 = v102;
    v89 = v103;
    sub_2148F6C08(&v86);
    v90 = __PAIR128__(v53, v52);
    v91 = v97;
    v92 = v98;
    v93 = v99;
    sub_21489DFCC(&v90, &qword_27CA1B9F0, &qword_2149970D0);
    if ((v56 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(&v126 + 1))
    {
      sub_2148F2328(&v113, &v104);
      v57 = &v126;
      goto LABEL_80;
    }

    v104 = v113;
    v105 = v114;
    v106 = v115;
    v107 = v116;
    sub_2148F2328(&v113, &v100);
    sub_2148F2328(&v126, &v100);
    sub_21489DFCC(&v104, &qword_27CA1B9F0, &qword_2149970D0);
  }

  v53 = *(&v117 + 1);
  v52 = v117;
  v97 = v118;
  v98 = v119;
  v99 = v120;
  v54 = *(&v130 + 1);
  v55 = v130;
  v94 = v131;
  v95 = v132;
  v96 = v133;
  if (!*(&v117 + 1))
  {
    if (!*(&v130 + 1))
    {
      v104 = v117;
      v105 = v118;
      v106 = v119;
      v107 = v120;
      sub_2148F2328(&v117, &v100);
      sub_2148F2328(&v130, &v100);
      sub_21489DFCC(&v104, &qword_27CA1B9F0, &qword_2149970D0);
      goto LABEL_74;
    }

    sub_2148F2328(&v117, &v104);
    v57 = &v130;
LABEL_80:
    sub_2148F2328(v57, &v104);
LABEL_83:
    *&v104 = v52;
    *(&v104 + 1) = v53;
    v105 = v97;
    v106 = v98;
    v107 = v99;
    *&v108 = v55;
    *(&v108 + 1) = v54;
    v109 = v94;
    v110 = v95;
    v50 = v96;
    goto LABEL_49;
  }

  v104 = v117;
  v105 = v118;
  v106 = v119;
  v107 = v120;
  v100 = v117;
  v101 = v118;
  v102 = v119;
  v103 = v120;
  if (!*(&v130 + 1))
  {
    v90 = v104;
    v91 = v105;
    v92 = v106;
    v93 = v107;
    sub_2148F2328(&v117, &v86);
    v58 = &v130;
    goto LABEL_82;
  }

  v91 = v131;
  v92 = v132;
  v93 = v133;
  v90 = v130;
  v59 = _s19iCloudMailAssistant11MATipActionV2eeoiySbAC_ACtFZ_0(&v100, &v90);
  v82 = v90;
  v83 = v91;
  v84 = v92;
  v85 = v93;
  sub_2148F2328(&v117, &v86);
  sub_2148F2328(&v130, &v86);
  sub_2148F2328(&v104, &v86);
  sub_2148F6C08(&v82);
  v86 = v100;
  v87 = v101;
  v88 = v102;
  v89 = v103;
  sub_2148F6C08(&v86);
  v90 = __PAIR128__(v53, v52);
  v91 = v97;
  v92 = v98;
  v93 = v99;
  sub_21489DFCC(&v90, &qword_27CA1B9F0, &qword_2149970D0);
  if ((v59 & 1) == 0)
  {
    return 0;
  }

LABEL_74:
  v53 = *(&v121 + 1);
  v52 = v121;
  v97 = v122;
  v98 = v123;
  v99 = v124;
  v54 = *(&v134 + 1);
  v55 = v134;
  v94 = v135;
  v95 = v136;
  v96 = v137;
  if (*(&v121 + 1))
  {
    v104 = v121;
    v105 = v122;
    v106 = v123;
    v107 = v124;
    v100 = v121;
    v101 = v122;
    v102 = v123;
    v103 = v124;
    if (*(&v134 + 1))
    {
      v91 = v135;
      v92 = v136;
      v93 = v137;
      v90 = v134;
      v60 = _s19iCloudMailAssistant11MATipActionV2eeoiySbAC_ACtFZ_0(&v100, &v90);
      v82 = v90;
      v83 = v91;
      v84 = v92;
      v85 = v93;
      sub_2148F2328(&v121, &v86);
      sub_2148F2328(&v134, &v86);
      sub_2148F2328(&v104, &v86);
      sub_2148F6C08(&v82);
      v86 = v100;
      v87 = v101;
      v88 = v102;
      v89 = v103;
      sub_2148F6C08(&v86);
      v90 = __PAIR128__(v53, v52);
      v91 = v97;
      v92 = v98;
      v93 = v99;
      sub_21489DFCC(&v90, &qword_27CA1B9F0, &qword_2149970D0);
      if ((v60 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_85;
    }

    v90 = v104;
    v91 = v105;
    v92 = v106;
    v93 = v107;
    sub_2148F2328(&v121, &v86);
    v58 = &v134;
    goto LABEL_82;
  }

  if (*(&v134 + 1))
  {
    sub_2148F2328(&v121, &v104);
    v57 = &v134;
    goto LABEL_80;
  }

  v104 = v121;
  v105 = v122;
  v106 = v123;
  v107 = v124;
  sub_2148F2328(&v121, &v100);
  sub_2148F2328(&v134, &v100);
  sub_21489DFCC(&v104, &qword_27CA1B9F0, &qword_2149970D0);
LABEL_85:
  if (v65)
  {
    if (v64 && (sub_21497A734(v65, v64) & 1) != 0)
    {
      return v63 ^ v62 ^ 1u;
    }
  }

  else if (!v64)
  {
    return v63 ^ v62 ^ 1u;
  }

  return 0;
}

unint64_t sub_2148F68E8()
{
  result = qword_281190FD0;
  if (!qword_281190FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190FD0);
  }

  return result;
}

unint64_t sub_2148F693C()
{
  result = qword_281190EF8;
  if (!qword_281190EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190EF8);
  }

  return result;
}

unint64_t sub_2148F6990()
{
  result = qword_281191C78;
  if (!qword_281191C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C78);
  }

  return result;
}

unint64_t sub_2148F69E4()
{
  result = qword_281190EF0;
  if (!qword_281190EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190EF0);
  }

  return result;
}

unint64_t sub_2148F6A38()
{
  result = qword_281191C70;
  if (!qword_281191C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C70);
  }

  return result;
}

uint64_t sub_2148F6A8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A378, &qword_214993B80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2148F6B28()
{
  result = qword_281190F10[0];
  if (!qword_281190F10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281190F10);
  }

  return result;
}

unint64_t sub_2148F6B7C()
{
  result = qword_281191C90;
  if (!qword_281191C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C90);
  }

  return result;
}

uint64_t type metadata accessor for MATipDismissal()
{
  result = qword_281191AC8;
  if (!qword_281191AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2148F6C84()
{
  result = qword_27CA1BA38;
  if (!qword_27CA1BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BA38);
  }

  return result;
}

uint64_t sub_2148F6CD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21498E320();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2148F6D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MATipDismissal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2148F6D80(uint64_t a1)
{
  v2 = type metadata accessor for MATipDismissal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2148F6DF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 377))
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

uint64_t sub_2148F6E38(uint64_t result, int a2, int a3)
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
    *(result + 376) = 0;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 377) = 1;
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

    *(result + 377) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2148F6EFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2148F6F44(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2148F6FCC()
{
  result = sub_21498E320();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MATip.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MATip.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2148F71D4()
{
  result = qword_27CA1BA48;
  if (!qword_27CA1BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BA48);
  }

  return result;
}

unint64_t sub_2148F722C()
{
  result = qword_27CA1BA50;
  if (!qword_27CA1BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BA50);
  }

  return result;
}

unint64_t sub_2148F7284()
{
  result = qword_27CA1BA58;
  if (!qword_27CA1BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BA58);
  }

  return result;
}

unint64_t sub_2148F72DC()
{
  result = qword_27CA1BA60;
  if (!qword_27CA1BA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BA60);
  }

  return result;
}

unint64_t sub_2148F7334()
{
  result = qword_27CA1BA68;
  if (!qword_27CA1BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BA68);
  }

  return result;
}

unint64_t sub_2148F738C()
{
  result = qword_27CA1BA70;
  if (!qword_27CA1BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BA70);
  }

  return result;
}

unint64_t sub_2148F73E4()
{
  result = qword_281191C80;
  if (!qword_281191C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C80);
  }

  return result;
}

unint64_t sub_2148F743C()
{
  result = qword_281191C88;
  if (!qword_281191C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C88);
  }

  return result;
}

unint64_t sub_2148F7494()
{
  result = qword_281190F00;
  if (!qword_281190F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190F00);
  }

  return result;
}

unint64_t sub_2148F74EC()
{
  result = qword_281190F08;
  if (!qword_281190F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190F08);
  }

  return result;
}

unint64_t sub_2148F7544()
{
  result = qword_281190FC0;
  if (!qword_281190FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190FC0);
  }

  return result;
}

unint64_t sub_2148F759C()
{
  result = qword_281190FC8;
  if (!qword_281190FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190FC8);
  }

  return result;
}

uint64_t sub_2148F75F0()
{
  v0 = sub_21498FEF0();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2148F763C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x79546E6F69746361 && a2 == 0xEA00000000006570 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874654D70747468 && a2 == 0xEA0000000000646FLL || (sub_214990080() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4274736575716572 && a2 == 0xEB0000000079646FLL)
  {

    return 3;
  }

  else
  {
    v5 = sub_214990080();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2148F77B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449706974 && a2 == 0xE500000000000000;
  if (v4 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D73694465746164 && a2 == 0xED00006465737369 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65747441636E7973 && a2 == 0xEC0000007374706DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_214990080();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t type metadata accessor for DateText()
{
  result = qword_27CA1BA80;
  if (!qword_27CA1BA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2148F7954()
{
  sub_2148F7A38();
  if (v0 <= 0x3F)
  {
    sub_2148F7A90(319, &qword_27CA1BA98);
    if (v1 <= 0x3F)
    {
      sub_2148F7A90(319, &qword_27CA1BAA0);
      if (v2 <= 0x3F)
      {
        sub_2148B0744();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2148F7A38()
{
  if (!qword_27CA1BA90)
  {
    v0 = sub_21498E770();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1BA90);
    }
  }
}

void sub_2148F7A90(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21498FCF0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2148F7B08()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148F7BCC()
{
  *v0;
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_2148F7C7C()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148F7D3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2148F987C();
  *a2 = result;
  return result;
}

void sub_2148F7D6C(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0x6D726F4665746164;
  if (*v1 != 2)
  {
    v4 = 0x6D726F46656D6974;
  }

  if (*v1)
  {
    v3 = 0x6D617473656D6974;
    v2 = 0xE900000000000070;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xEA00000000007461;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_2148F7DEC()
{
  v1 = 25705;
  v2 = 0x6D726F4665746164;
  if (*v0 != 2)
  {
    v2 = 0x6D726F46656D6974;
  }

  if (*v0)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2148F7E68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2148F987C();
  *a1 = result;
  return result;
}

uint64_t sub_2148F7E90(uint64_t a1)
{
  v2 = sub_2148F965C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148F7ECC(uint64_t a1)
{
  v2 = sub_2148F965C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148F7F14()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148F7FF8()
{
  *v0;
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_2148F80C8()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148F81A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2148F98C8();
  *a2 = result;
  return result;
}

void sub_2148F81D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64657474696D6FLL;
  v5 = 0xEB00000000646574;
  v6 = 0x6169766572626261;
  v7 = 0xE400000000000000;
  v8 = 1735290732;
  if (v2 != 3)
  {
    v8 = 0x6574656C706D6F63;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x636972656D756ELL;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_2148F832C()
{
  result = qword_27CA1BAA8;
  if (!qword_27CA1BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BAA8);
  }

  return result;
}

uint64_t sub_2148F838C()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148F8454()
{
  *v0;
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_2148F8508()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148F85CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2148F9914();
  *a2 = result;
  return result;
}

void sub_2148F85FC(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x64657474696D6FLL;
  v4 = 0x647261646E617473;
  if (*v1 != 2)
  {
    v4 = 0x6574656C706D6F63;
  }

  if (*v1)
  {
    v3 = 0x656E6574726F6873;
    v2 = 0xE900000000000064;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_2148F8734()
{
  result = qword_27CA1BAB0;
  if (!qword_27CA1BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BAB0);
  }

  return result;
}

uint64_t sub_2148F8788@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BAD8, &qword_214997DA8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v44 - v6;
  v7 = sub_21498E230();
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BAE0, &qword_214997DB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v44 - v12;
  v14 = sub_21498E290();
  v50 = *(v14 - 8);
  v15 = *(v50 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21498E320();
  v44 = *(v18 - 8);
  v45 = v18;
  v19 = *(v44 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DateText();
  v23 = (v1 + *(v22 + 32));
  if (*v23)
  {
    v24 = v22;
    v25 = *(v22 + 20);
    v26 = *v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
    sub_21498E750();

    sub_21498E2D0();
    v27 = *(v2 + *(v24 + 24));
    if (v27 > 2)
    {
      if (v27 == 3)
      {
        sub_21498E200();
      }

      else
      {
        if (v27 != 4)
        {
          v42 = v50;
          (*(v50 + 56))(v13, 1, 1, v14);
          sub_21498E1F0();
          if ((*(v42 + 48))(v13, 1, v14) != 1)
          {
            sub_21489DFCC(v13, &qword_27CA1BAE0, &qword_214997DB0);
          }

LABEL_13:
          v29 = *(v2 + *(v24 + 28));
          if (v29 <= 1)
          {
            v31 = v48;
            v30 = v49;
            v33 = v46;
            v32 = v47;
            v34 = v45;
            if (v29)
            {
              sub_21498E220();
            }

            else
            {
              sub_21498E1F0();
            }
          }

          else
          {
            v31 = v48;
            v30 = v49;
            v33 = v46;
            v32 = v47;
            v34 = v45;
            if (v29 == 2)
            {
              sub_21498E210();
            }

            else
            {
              if (v29 != 3)
              {
                (*(v48 + 56))(v47, 1, 1, v49);
                sub_21498E1F0();
                if ((*(v31 + 48))(v32, 1, v30) != 1)
                {
                  sub_21489DFCC(v32, &qword_27CA1BAD8, &qword_214997DA8);
                }

                goto LABEL_24;
              }

              sub_21498E200();
            }
          }

          (*(v31 + 56))(v32, 0, 1, v30);
          (*(v31 + 32))(v33, v32, v30);
LABEL_24:
          v35 = sub_21498E300();
          v37 = v36;
          (*(v31 + 8))(v33, v30);
          (*(v50 + 8))(v17, v14);
          (*(v44 + 8))(v21, v34);
          v51 = v35;
          v52 = v37;
          sub_21489CA00();
          result = sub_21498F100();
          *a1 = result;
          a1[1] = v40;
          a1[2] = v39 & 1;
          a1[3] = v41;
          return result;
        }

        sub_21498E280();
      }
    }

    else if (*(v2 + *(v24 + 24)))
    {
      if (v27 == 1)
      {
        sub_21498E220();
      }

      else
      {
        sub_21498E210();
      }
    }

    else
    {
      sub_21498E1F0();
    }

    v28 = v50;
    (*(v50 + 56))(v13, 0, 1, v14);
    (*(v28 + 32))(v17, v13, v14);
    goto LABEL_13;
  }

  v43 = v23[1];
  sub_21498E8C0();
  sub_2148F9614(&qword_27CA1A858, MEMORY[0x277D23330]);
  result = sub_21498ED10();
  __break(1u);
  return result;
}

uint64_t sub_2148F8D94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v34 - v5;
  v6 = sub_21498E350();
  v7 = *(v6 - 8);
  v38 = v6;
  v39 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BAE8, &qword_214997DB8);
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  v15 = type metadata accessor for DateText();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (v19 + *(v17 + 32));
  sub_21498E8C0();
  sub_2148F9614(&qword_27CA1A858, MEMORY[0x277D23330]);
  v44 = sub_21498ED20();
  *v20 = v44;
  v20[1] = v21;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148F965C();
  v23 = v45;
  sub_2149901B0();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v45 = a1;
    v36 = v15;
    v24 = v41;
    v51 = 0;
    v25 = sub_21498FF20();
    v28 = v26;
    if (!v26)
    {
      v29 = v10;
      sub_21498E340();
      v30 = sub_21498E330();
      v35 = v31;
      (*(v39 + 8))(v29, v38);
      v28 = v35;
      v25 = v30;
    }

    *v19 = v25;
    v19[1] = v28;
    v35 = v28;
    v50 = 1;
    sub_2148F96B0();
    v32 = v40;
    sub_21498FFA0();
    v33 = v36;
    (*(v24 + 32))(v19 + *(v36 + 20), v32);
    v48 = 2;
    sub_2148F9714();
    sub_21498FF40();
    *(v19 + *(v33 + 24)) = v49;
    v46 = 3;
    sub_2148F9768();
    sub_21498FF40();
    (*(v43 + 8))(v14, v11);
    *(v19 + *(v33 + 28)) = v47;
    sub_2148F97BC(v19, v37);
    __swift_destroy_boxed_opaque_existential_1(v45);
    return sub_2148F9820(v19);
  }
}

uint64_t sub_2148F9294(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148F9614(&qword_27CA1B8D8, type metadata accessor for DateText);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2148F9318(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148F9614(&qword_27CA1BAB8, type metadata accessor for DateText);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2148F9394(uint64_t a1)
{
  v2 = sub_2148F9614(&qword_27CA1BAB8, type metadata accessor for DateText);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2148F9410(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148F9614(&qword_27CA1BAD0, type metadata accessor for DateText);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_2148F94CC()
{
  sub_2148F9614(&qword_27CA1B8D8, type metadata accessor for DateText);
  sub_2148F9614(&qword_27CA1BAB8, type metadata accessor for DateText);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2148F9614(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2148F965C()
{
  result = qword_27CA1BAF0;
  if (!qword_27CA1BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BAF0);
  }

  return result;
}

unint64_t sub_2148F96B0()
{
  result = qword_27CA1A930;
  if (!qword_27CA1A930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A848, &qword_214993160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A930);
  }

  return result;
}

unint64_t sub_2148F9714()
{
  result = qword_27CA1BAF8;
  if (!qword_27CA1BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BAF8);
  }

  return result;
}

unint64_t sub_2148F9768()
{
  result = qword_27CA1BB00;
  if (!qword_27CA1BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BB00);
  }

  return result;
}

uint64_t sub_2148F97BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateText();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2148F9820(uint64_t a1)
{
  v2 = type metadata accessor for DateText();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2148F987C()
{
  v0 = sub_21498FEF0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2148F98C8()
{
  v0 = sub_21498FEF0();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2148F9914()
{
  v0 = sub_21498FEF0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2148F9960()
{
  result = qword_27CA1BB08;
  if (!qword_27CA1BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BB08);
  }

  return result;
}

unint64_t sub_2148F99B4()
{
  result = qword_27CA1BB10;
  if (!qword_27CA1BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BB10);
  }

  return result;
}

unint64_t sub_2148F9A18()
{
  result = qword_27CA1BB18;
  if (!qword_27CA1BB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1BB20, &qword_214997DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BB18);
  }

  return result;
}

unint64_t sub_2148F9A98()
{
  result = qword_27CA1BB28;
  if (!qword_27CA1BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BB28);
  }

  return result;
}

unint64_t sub_2148F9AF0()
{
  result = qword_27CA1BB30;
  if (!qword_27CA1BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BB30);
  }

  return result;
}

unint64_t sub_2148F9B48()
{
  result = qword_27CA1BB38;
  if (!qword_27CA1BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BB38);
  }

  return result;
}

uint64_t sub_2148F9BA4(char a1)
{
  v2 = sub_21498F290();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  switch(a1)
  {
    case 1:

      result = MEMORY[0x282133458](v4);
      break;
    case 2:

      result = MEMORY[0x282133478](v4);
      break;
    case 3:

      result = MEMORY[0x282133490](v4);
      break;
    case 4:

      result = MEMORY[0x282133498](v4);
      break;
    case 5:

      result = MEMORY[0x282133430](v4);
      break;
    case 6:

      result = sub_21498F370();
      break;
    case 7:

      result = sub_21498F2A0();
      break;
    case 8:

      result = MEMORY[0x282133438](v4);
      break;
    case 9:

      result = MEMORY[0x282133428](v4);
      break;
    case 10:

      result = MEMORY[0x2821334B0](v4);
      break;
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:

      result = MEMORY[0x282133418](v4);
      break;
    case 17:

      result = MEMORY[0x282133448](v4);
      break;
    case 18:

      result = sub_21498F2C0();
      break;
    case 19:
    case 20:
      (*(v6 + 104))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
      result = sub_21498F3B0();
      break;
    case 21:
      v7 = [objc_opt_self() magentaColor];

      result = MEMORY[0x28212FFA8](v7);
      break;
    case 22:

      result = MEMORY[0x282133480](v4);
      break;
    case 23:

      result = sub_21498F3A0();
      break;
    case 24:

      result = MEMORY[0x2821334C8](v4);
      break;
    default:

      result = MEMORY[0x2821333F8](v4);
      break;
  }

  return result;
}

uint64_t sub_2148F9F30()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148F9FF8()
{
  *v0;
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_2148FA0AC()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148FA170@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2148FD43C();
  *a2 = result;
  return result;
}

void sub_2148FA1A0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C746974;
  v4 = 0xEA00000000006465;
  v5 = 0x6C62617369447369;
  if (*v1 != 2)
  {
    v5 = 0x736E6F69746361;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E6964616F4C7369;
    v2 = 0xE900000000000067;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2148FA224()
{
  v1 = 0x656C746974;
  v2 = 0x6C62617369447369;
  if (*v0 != 2)
  {
    v2 = 0x736E6F69746361;
  }

  if (*v0)
  {
    v1 = 0x6E6964616F4C7369;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2148FA2A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2148FD43C();
  *a1 = result;
  return result;
}

uint64_t sub_2148FA2CC(uint64_t a1)
{
  v2 = sub_2148FE600();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148FA308(uint64_t a1)
{
  v2 = sub_2148FE600();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148FA344@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v55 = sub_21498E890();
  v50 = *(v55 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC78, qword_214999F40);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = &v48 - v9;
  v10 = sub_21498E900();
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  MEMORY[0x28223BE20](v10);
  v57 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BC08, &unk_214998240);
  v58 = *(v13 - 8);
  v14 = *(v58 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - v15;
  v17 = type metadata accessor for OBKLiftUIButton(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148FE600();
  v22 = v59;
  sub_2149901B0();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v56;
  v59 = a1;
  v48 = v20;
  v49 = v17;
  LOBYTE(v60) = 0;
  sub_2148FE6B8(&qword_27CA1A2C0, MEMORY[0x277D23340]);
  v24 = v57;
  sub_21498FFA0();
  v26 = *(v23 + 32);
  v27 = v48;
  v57 = v10;
  v26(v48, v24, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
  LOBYTE(v60) = 1;
  sub_2148FE654();
  v28 = v53;
  sub_21498FF40();
  v29 = v49;
  sub_2148B4C68(v28, v27 + *(v49 + 20), &qword_27CA1AC78, qword_214999F40);
  LOBYTE(v60) = 2;
  v30 = v52;
  v53 = 0;
  sub_21498FF40();
  v31 = v27;
  sub_2148B4C68(v30, v27 + *(v29 + 24), &qword_27CA1AC78, qword_214999F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5F0, &qword_21499B770);
  LOBYTE(v60) = 3;
  sub_2148AAA9C();
  sub_21498FFA0();
  v32 = v16;
  v33 = v58;
  v34 = v59;
  v53 = v32;
  v35 = v62;
  v36 = *(v62 + 16);
  if (v36)
  {
    v52 = v13;
    v61 = MEMORY[0x277D84F90];
    sub_2148A9BD8(0, v36, 0);
    v37 = v61;
    v38 = v50 + 16;
    v39 = *(v50 + 16);
    v40 = *(v50 + 80);
    v50 = v35;
    v41 = v35 + ((v40 + 32) & ~v40);
    v56 = *(v38 + 56);
    v57 = v39;
    v42 = (v38 - 8);
    v43 = v55;
    do
    {
      v44 = v54;
      v45 = v38;
      (v57)(v54, v41, v43);
      sub_21498E880();
      v43 = v55;
      (*v42)(v44, v55);
      v61 = v37;
      v47 = *(v37 + 16);
      v46 = *(v37 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_2148A9BD8((v46 > 1), v47 + 1, 1);
        v43 = v55;
        v37 = v61;
      }

      *(v37 + 16) = v47 + 1;
      sub_2148970B8(&v60, v37 + 40 * v47 + 32);
      v41 += v56;
      --v36;
      v38 = v45;
    }

    while (v36);
    (*(v58 + 8))(v53, v52);

    v31 = v48;
    v34 = v59;
  }

  else
  {

    (*(v33 + 8))(v53, v13);
    v37 = MEMORY[0x277D84F90];
  }

  *(v31 + *(v49 + 28)) = v37;
  sub_2148FE918(v31, v51, type metadata accessor for OBKLiftUIButton);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_2148FE980(v31, type metadata accessor for OBKLiftUIButton);
}

uint64_t sub_2148FAADC()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148FAB98()
{
  *v0;
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_2148FAC40()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148FACF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2148FD488();
  *a2 = result;
  return result;
}

void sub_2148FAD28(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x4449656C646E7562;
  v4 = 0xE500000000000000;
  v5 = 0x656C797473;
  if (*v1 != 2)
  {
    v5 = 0x726F4D6E7261656CLL;
    v4 = 0xE900000000000065;
  }

  if (*v1)
  {
    v3 = 1954047348;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2148FADA0()
{
  v1 = 0x4449656C646E7562;
  v2 = 0x656C797473;
  if (*v0 != 2)
  {
    v2 = 0x726F4D6E7261656CLL;
  }

  if (*v0)
  {
    v1 = 1954047348;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2148FAE14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2148FD488();
  *a1 = result;
  return result;
}

uint64_t sub_2148FAE3C(uint64_t a1)
{
  v2 = sub_2148FE700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148FAE78(uint64_t a1)
{
  v2 = sub_2148FE700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148FAEB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v53 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v54 = v52 - v8;
  MEMORY[0x28223BE20](v7);
  v61 = v52 - v9;
  v58 = sub_21498E900();
  v60 = *(v58 - 8);
  v10 = *(v60 + 64);
  v11 = MEMORY[0x28223BE20](v58);
  v56 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v52 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v52 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BC20, &qword_214998250);
  v59 = *(v57 - 8);
  v18 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  v20 = v52 - v19;
  v21 = type metadata accessor for OBKLiftUICaption(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148FE700();
  v26 = v62;
  sub_2149901B0();
  if (!v26)
  {
    v52[0] = v17;
    v52[1] = v21;
    v62 = v24;
    v68 = 0;
    sub_2148FE6B8(&qword_27CA1A2C0, MEMORY[0x277D23340]);
    v27 = v57;
    v28 = v58;
    sub_21498FF40();
    v29 = v27;
    v30 = v60;
    if ((*(v60 + 48))(v61, 1, v28) == 1)
    {
      v31 = v15;
      v32 = v29;
      sub_21489DFCC(v61, &qword_27CA1A800, &unk_214993100);
      v67 = 1;
      v33 = v20;
      sub_21498FFA0();
      v34 = v56;
      type metadata accessor for OBButtonTrayCaptionStyle(0);
      v35 = v32;
      v66 = 2;
      sub_2148FE6B8(&qword_27CA1BC30, type metadata accessor for OBButtonTrayCaptionStyle);
      sub_21498FF40();
      v57 = v63;
      LODWORD(v61) = v64;
      v65 = 3;
      v36 = v54;
      sub_21498FF40();
      (*(v59 + 8))(v33, v35);
      v42 = v36;
      v43 = v53;
      sub_2148B4C68(v42, v53, &qword_27CA1A800, &unk_214993100);
      v44 = v60;
      if ((*(v60 + 48))(v43, 1, v28) == 1)
      {
        sub_21489DFCC(v43, &qword_27CA1A800, &unk_214993100);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD90, &unk_2149940B0);
        v39 = v62;
        v46 = &v62[*(v45 + 48)];
        (*(v44 + 32))(v62, v31, v28);
        *v46 = v57;
        v46[8] = v61;
      }

      else
      {
        v47 = *(v44 + 32);
        v47(v34, v43, v28);
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD38, &qword_214994070);
        v39 = v62;
        v49 = &v62[*(v48 + 48)];
        v50 = *(v48 + 64);
        v47(v62, v31, v28);
        v51 = v56;
        *v49 = v57;
        v49[8] = v61;
        v47((v39 + v50), v51, v28);
      }
    }

    else
    {
      (*(v59 + 8))(v20, v29);
      v37 = *(v30 + 32);
      v38 = v52[0];
      v37(v52[0], v61, v28);
      v39 = v62;
      v37(v62, v38, v28);
    }

    v40 = v55;
    swift_storeEnumTagMultiPayload();
    sub_2148FE7A8(v39, v40, type metadata accessor for OBKLiftUICaption);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2148FB5DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2148FD4D4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2148FB614()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148FB6D0()
{
  *v0;
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_2148FB778()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148FB830@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2148FD768();
  *a2 = result;
  return result;
}

void sub_2148FB860(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1818326372;
  v4 = 0xD000000000000014;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000014;
    v2 = 0x80000002149A0900;
  }

  v5 = 0x80000002149A08C0;
  if (*v1)
  {
    v4 = 0xD000000000000016;
    v5 = 0x80000002149A08E0;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_2148FB8D8()
{
  v1 = 1818326372;
  v2 = 0xD000000000000014;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2148FB94C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2148FD768();
  *a1 = result;
  return result;
}

uint64_t sub_2148FB974(uint64_t a1)
{
  v2 = sub_2148FDCD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148FB9B0(uint64_t a1)
{
  v2 = sub_2148FDCD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148FBA04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2148FD7B4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2148FBA3C()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148FBAFC()
{
  *v0;
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_2148FBBA8()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148FBC64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2148FEE40();
  *a2 = result;
  return result;
}

void sub_2148FBC94(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x736D657469;
  v4 = 0xE800000000000000;
  v5 = 0x736E6F6974636573;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000016;
    v4 = 0x80000002149A0930;
  }

  if (*v1)
  {
    v3 = 0x6D6F74737563;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_2148FBD10()
{
  v1 = 0x736D657469;
  v2 = 0x736E6F6974636573;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x6D6F74737563;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2148FBD88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2148FEE40();
  *a1 = result;
  return result;
}

uint64_t sub_2148FBDB0(uint64_t a1)
{
  v2 = sub_2148FE754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148FBDEC(uint64_t a1)
{
  v2 = sub_2148FE754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148FBE28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC78, qword_214999F40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v52 - v5;
  v57 = sub_21498E6A0();
  v56 = *(v57 - 8);
  v6 = *(v56 + 64);
  v7 = MEMORY[0x28223BE20](v57);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BC38, &unk_214998258);
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  v16 = type metadata accessor for OBKLiftUIContent(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v21 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_2148FE754();
  v22 = v60;
  sub_2149901B0();
  if (!v22)
  {
    v53 = v11;
    v52 = v9;
    v24 = v57;
    v54 = v19;
    v60 = v16;
    v25 = v58;
    v26 = v15;
    v27 = sub_21498FFB0();
    if (*(v27 + 16))
    {
      v28 = *(v27 + 32);

      if (v28 > 1)
      {
        if (v28 == 2)
        {
          v40 = 0;
          v41 = 1;
          v42 = 0xE800000000000000;
        }

        else
        {
          v41 = 0;
          v40 = 0;
          v42 = 0x80000002149A0930;
        }
      }

      else
      {
        if (!v28)
        {
          goto LABEL_14;
        }

        v41 = 0;
        v40 = 1;
        v42 = 0xE600000000000000;
      }

      if (sub_214990080())
      {
LABEL_14:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BC48, &qword_214998268);
        v62 = 0;
        sub_2148FE810();
        sub_21498FFA0();
        (*(v59 + 8))(v26, v12);
        v43 = v54;
        *v54 = v63;
LABEL_20:
        swift_storeEnumTagMultiPayload();
        sub_2148FE7A8(v43, v25, type metadata accessor for OBKLiftUIContent);
        return __swift_destroy_boxed_opaque_existential_1(v61);
      }

      v44 = v40 ^ 1;
      if (v42 != 0xE600000000000000)
      {
        v44 = 1;
      }

      if (v44 & 1) == 0 || (sub_214990080())
      {

        LOBYTE(v63) = 1;
        sub_2148FE6B8(&qword_27CA1B770, MEMORY[0x277D231A8]);
        v45 = v53;
        sub_21498FFA0();
        (*(v59 + 8))(v26, v12);
        v43 = v54;
        (*(v56 + 32))(v54, v45, v24);
        goto LABEL_20;
      }

      v46 = v41 ^ 1;
      if (v42 != 0xE800000000000000)
      {
        v46 = 1;
      }

      if ((v46 & 1) == 0)
      {

        v47 = v52;
LABEL_26:
        LOBYTE(v63) = 2;
        sub_2148FE6B8(&qword_27CA1B770, MEMORY[0x277D231A8]);
        sub_21498FFA0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
        LOBYTE(v63) = 3;
        sub_2148FE654();
        v49 = v55;
        sub_21498FF40();
        (*(v59 + 8))(v26, v12);
        v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC70, &unk_214993FF0) + 48);
        v43 = v54;
        (*(v56 + 32))(v54, v47, v24);
        sub_2148B4C68(v49, v43 + v51, &qword_27CA1AC78, qword_214999F40);
        goto LABEL_20;
      }

      v48 = sub_214990080();

      v47 = v52;
      if (v48)
      {
        goto LABEL_26;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_214991720;
      v50 = *MEMORY[0x277CCA450];
      v31 = v26;
      *(inited + 32) = sub_21498F870();
      v33 = inited + 32;
      v35 = 0x80000002149A2220;
      v34 = v12;
      *(inited + 72) = MEMORY[0x277D837D0];
      v36 = 0xD000000000000012;
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_214991720;
      v30 = *MEMORY[0x277CCA450];
      v31 = v15;
      *(inited + 32) = sub_21498F870();
      v33 = inited + 32;
      v34 = v12;
      v35 = 0x80000002149A22B0;
      *(inited + 72) = MEMORY[0x277D837D0];
      v36 = 0xD000000000000010;
    }

    *(inited + 40) = v32;
    *(inited + 48) = v36;
    *(inited + 56) = v35;
    sub_2148E0B1C(inited);
    swift_setDeallocating();
    sub_21489DFCC(v33, &qword_27CA1A4C8, &unk_214992030);
    v37 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v38 = sub_21498F840();
    v39 = sub_21498F7D0();

    [v37 initWithDomain:v38 code:-1 userInfo:v39];

    swift_willThrow();
    (*(v59 + 8))(v31, v34);
  }

  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t sub_2148FC75C()
{
  *v0;
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_2148FC83C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2148FEE8C();
  *a2 = result;
  return result;
}

void sub_2148FC86C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE500000000000000;
  v6 = 0x6567616D69;
  v7 = 0xE600000000000000;
  v8 = 0x6C6F626D7973;
  if (v2 != 4)
  {
    v8 = 0x726F6C6F63;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (v2 != 1)
  {
    v10 = 0x65546C6961746564;
    v9 = 0xEA00000000007478;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_2148FC914()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6567616D69;
  v4 = 0x6C6F626D7973;
  if (v1 != 4)
  {
    v4 = 0x726F6C6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x65546C6961746564;
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

uint64_t sub_2148FC9B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2148FEE8C();
  *a1 = result;
  return result;
}

uint64_t sub_2148FC9EC(uint64_t a1)
{
  v2 = sub_2148FE8C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148FCA28(uint64_t a1)
{
  v2 = sub_2148FE8C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148FCA64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v76 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v75 = &v69 - v8;
  MEMORY[0x28223BE20](v7);
  v78 = &v69 - v9;
  v10 = sub_21498E900();
  v81 = *(v10 - 8);
  v82 = v10;
  v11 = v81[8];
  v12 = MEMORY[0x28223BE20](v10);
  v73 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v74 = &v69 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v80 = &v69 - v17;
  MEMORY[0x28223BE20](v16);
  v83 = &v69 - v18;
  v19 = sub_21498E350();
  v79 = *(v19 - 8);
  v20 = *(v79 + 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BC60, &qword_214998270);
  v84 = *(v23 - 8);
  v24 = *(v84 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v69 - v25;
  v27 = type metadata accessor for OBKLiftUIContentItem(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = (&v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = a1[3];
  v31 = a1[4];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_2148FE8C4();
  v33 = v85;
  sub_2149901B0();
  if (v33)
  {
    return __swift_destroy_boxed_opaque_existential_1(v86);
  }

  v85 = v19;
  v34 = v83;
  v72 = v30;
  v92 = 0;
  v35 = sub_21498FF20();
  v37 = v26;
  if (!v36)
  {
    sub_21498E340();
    v39 = sub_21498E330();
    v41 = v40;
    (*(v79 + 1))(v22, v85);
    v36 = v41;
    v35 = v39;
    v37 = v26;
  }

  v42 = v72;
  *v72 = v35;
  v42[1] = v36;
  v91 = 1;
  v43 = sub_2148FE6B8(&qword_27CA1A2C0, MEMORY[0x277D23340]);
  v44 = v42;
  v45 = v34;
  v46 = v82;
  sub_21498FFA0();
  v47 = v37;
  v48 = v45;
  v49 = v81[4];
  v49(v44 + *(v27 + 20), v48, v46);
  v90 = 2;
  v50 = v80;
  sub_21498FFA0();
  v85 = v27;
  v49(v72 + *(v27 + 24), v50, v46);
  v89 = 4;
  v51 = v78;
  v83 = 0;
  sub_21498FF40();
  v70 = v49;
  v71 = v43;
  v79 = v47;
  v80 = v23;
  v52 = v46;
  v53 = v81[6];
  if (v53(v51, 1, v52) == 1)
  {
    sub_21489DFCC(v51, &qword_27CA1A800, &unk_214993100);
    v88 = 3;
    v54 = v75;
    sub_21498FF40();
    if (v53(v54, 1, v52) == 1)
    {
      sub_21489DFCC(v54, &qword_27CA1A800, &unk_214993100);
      v65 = *(v85 + 28);
      v66 = type metadata accessor for OBKLiftUIContentItemImage(0);
      v60 = v72;
      (*(*(v66 - 8) + 56))(v72 + v65, 1, 1, v66);
      goto LABEL_10;
    }

    v67 = v73;
    v68 = v70;
    v70(v73, v54, v52);
    v57 = *(v85 + 28);
    v58 = v72;
    v68(v72 + v57, v67, v52);
    v59 = type metadata accessor for OBKLiftUIContentItemImage(0);
  }

  else
  {
    v55 = v74;
    v56 = v70;
    v70(v74, v51, v52);
    v57 = *(v85 + 28);
    v58 = v72;
    v56(v72 + v57, v55, v52);
    v59 = type metadata accessor for OBKLiftUIContentItemImage(0);
  }

  swift_storeEnumTagMultiPayload();
  v60 = v58;
  (*(*(v59 - 8) + 56))(v58 + v57, 0, 1, v59);
LABEL_10:
  v61 = v80;
  v87 = 5;
  v62 = v76;
  v63 = v79;
  sub_21498FF40();
  v64 = v77;
  (*(v84 + 8))(v63, v61);
  sub_2148B4C68(v62, v60 + *(v85 + 32), &qword_27CA1A800, &unk_214993100);
  sub_2148FE918(v60, v64, type metadata accessor for OBKLiftUIContentItem);
  __swift_destroy_boxed_opaque_existential_1(v86);
  return sub_2148FE980(v60, type metadata accessor for OBKLiftUIContentItem);
}

uint64_t sub_2148FD3E8()
{
  v0 = sub_2149900C0();

  if (v0 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2148FD43C()
{
  v0 = sub_21498FEF0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2148FD488()
{
  v0 = sub_21498FEF0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2148FD4D4(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2149901A0();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v5 = sub_214990090();
    v8 = v5;
    v9 = v6;
    v10 = v5 == 1802658148 && v6 == 0xE400000000000000;
    if (v10 || (sub_214990080() & 1) != 0)
    {

      v4 = 2;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1(v17);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v4;
    }

    if (v8 == 0x746867696CLL && v9 == 0xE500000000000000)
    {

LABEL_17:
      v4 = 1;
      goto LABEL_12;
    }

    v11 = sub_214990080();

    if (v11)
    {
      goto LABEL_17;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_214991720;
    v13 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_21498F870();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v14;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000002149A2220;
    sub_2148E0B1C(inited);
    swift_setDeallocating();
    sub_21489DFCC(inited + 32, &qword_27CA1A4C8, &unk_214992030);
    v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v15 = sub_21498F840();
    v16 = sub_21498F7D0();

    [v4 initWithDomain:v15 code:-1 userInfo:v16];

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_2148FD768()
{
  v0 = sub_21498FEF0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2148FD7B4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BB40, &qword_214997FA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148FDCD0();
  sub_2149901B0();
  if (!v1)
  {
    v10 = sub_21498FFB0();
    if (!*(v10 + 16))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_214991720;
      v16 = *MEMORY[0x277CCA450];
      *(inited + 32) = sub_21498F870();
      v17 = inited + 32;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v18;
      *(inited + 48) = 0x662079656B206F6ELL;
      v19 = 0xEC000000646E756FLL;
LABEL_7:
      *(inited + 56) = v19;
      sub_2148E0B1C(inited);
      swift_setDeallocating();
      sub_21489DFCC(v17, &qword_27CA1A4C8, &unk_214992030);
      v9 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v20 = sub_21498F840();
      v21 = sub_21498F7D0();

      [v9 initWithDomain:v20 code:-1 userInfo:v21];

      swift_willThrow();
      (*(v4 + 8))(v7, v3);
      goto LABEL_22;
    }

    v11 = *(v10 + 32);

    if (v11 > 1)
    {
      if (v11 != 2)
      {
        v14 = 0;
        v13 = 0xE400000000000000;
        v31 = 1;
        goto LABEL_13;
      }

      v12 = "belowHeaderNormalWidth";
    }

    else
    {
      v12 = "leID";
      if (v11)
      {
        v31 = 0;
        v13 = 0x80000002149A08E0;
        v14 = 1;
LABEL_13:
        v22 = 0;
LABEL_14:
        if (sub_214990080())
        {
          goto LABEL_15;
        }

        if (0x80000002149A08E0 == v13)
        {
          v23 = v14;
        }

        else
        {
          v23 = 0;
        }

        if (v23 & 1) != 0 || (sub_214990080())
        {
          (*(v4 + 8))(v7, v3);

          v9 = 2;
          goto LABEL_22;
        }

        if (0x80000002149A0900 == v13)
        {
          v25 = v22;
        }

        else
        {
          v25 = 0;
        }

        if (v25 & 1) != 0 || (sub_214990080())
        {
          (*(v4 + 8))(v7, v3);

          v9 = 3;
          goto LABEL_22;
        }

        v26 = v31 ^ 1;
        if (v13 != 0xE400000000000000)
        {
          v26 = 1;
        }

        if ((v26 & 1) == 0)
        {

LABEL_34:
          (*(v4 + 8))(v7, v3);
          v9 = 4;
          goto LABEL_22;
        }

        v27 = sub_214990080();

        if (v27)
        {
          goto LABEL_34;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_214991720;
        v28 = *MEMORY[0x277CCA450];
        *(inited + 32) = sub_21498F870();
        v17 = inited + 32;
        v19 = 0x80000002149A2220;
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 40) = v29;
        *(inited + 48) = 0xD000000000000012;
        goto LABEL_7;
      }
    }

    v13 = v12 | 0x8000000000000000;
    if (0x80000002149A08C0 == (v12 | 0x8000000000000000))
    {
LABEL_15:
      (*(v4 + 8))(v7, v3);

      v9 = 1;
      goto LABEL_22;
    }

    v31 = 0;
    v14 = 0;
    v22 = 1;
    goto LABEL_14;
  }

LABEL_22:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_2148FDCD0()
{
  result = qword_27CA1BB48;
  if (!qword_27CA1BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BB48);
  }

  return result;
}

void sub_2148FDD7C()
{
  sub_21498E900();
  if (v0 <= 0x3F)
  {
    sub_2148FDE70(319, &qword_27CA1BB60, &qword_27CA1AD30, &unk_214997FD0, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2148FDE70(319, &qword_27CA1BB68, &qword_27CA1A5C0, &qword_214992520, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2148FDE70(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_2148FDEF4()
{
  sub_2148FE4AC(319, &qword_27CA1BB80, MEMORY[0x277D23340]);
  if (v0 <= 0x3F)
  {
    sub_2148FDF98();
    if (v1 <= 0x3F)
    {
      sub_2148FE018();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2148FDF98()
{
  if (!qword_27CA1BB88)
  {
    sub_21498E900();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1BB90, &qword_214997FF8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CA1BB88);
    }
  }
}

void sub_2148FE018()
{
  if (!qword_27CA1BB98)
  {
    sub_21498E900();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1BB90, &qword_214997FF8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CA1BB98);
    }
  }
}

void sub_2148FE0BC()
{
  sub_2148FE160();
  if (v0 <= 0x3F)
  {
    sub_2148FE4AC(319, &qword_27CA1AC28, MEMORY[0x277D231A8]);
    if (v1 <= 0x3F)
    {
      sub_2148FE1F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2148FE160()
{
  if (!qword_27CA1BBB0)
  {
    sub_2148FE3AC(0, &qword_27CA1BBB8, type metadata accessor for OBKLiftUIContentItem, MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1BBB0);
    }
  }
}

void sub_2148FE1F8()
{
  if (!qword_27CA1BBC0)
  {
    sub_21498E6A0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AC78, qword_214999F40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CA1BBC0);
    }
  }
}

void sub_2148FE2A0()
{
  sub_21498E900();
  if (v0 <= 0x3F)
  {
    sub_2148FE3AC(319, &qword_27CA1BBD8, type metadata accessor for OBKLiftUIContentItemImage, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2148FE3AC(319, &qword_27CA1A828, MEMORY[0x277D23340], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2148FE3AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2148FE430()
{
  sub_2148FE4AC(319, &qword_27CA1AC20, MEMORY[0x277D23340]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_2148FE4AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2148FE4FC()
{
  result = qword_27CA1BBF0;
  if (!qword_27CA1BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BBF0);
  }

  return result;
}

unint64_t sub_2148FE554()
{
  result = qword_27CA1BBF8;
  if (!qword_27CA1BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BBF8);
  }

  return result;
}

unint64_t sub_2148FE5AC()
{
  result = qword_27CA1BC00;
  if (!qword_27CA1BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC00);
  }

  return result;
}

unint64_t sub_2148FE600()
{
  result = qword_27CA1BC10;
  if (!qword_27CA1BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC10);
  }

  return result;
}

unint64_t sub_2148FE654()
{
  result = qword_27CA1BC18;
  if (!qword_27CA1BC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AD30, &unk_214997FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC18);
  }

  return result;
}

uint64_t sub_2148FE6B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2148FE700()
{
  result = qword_27CA1BC28;
  if (!qword_27CA1BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC28);
  }

  return result;
}

unint64_t sub_2148FE754()
{
  result = qword_27CA1BC40;
  if (!qword_27CA1BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC40);
  }

  return result;
}

uint64_t sub_2148FE7A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2148FE810()
{
  result = qword_27CA1BC50;
  if (!qword_27CA1BC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1BC48, &qword_214998268);
    sub_2148FE6B8(&qword_27CA1BC58, type metadata accessor for OBKLiftUIContentItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC50);
  }

  return result;
}

unint64_t sub_2148FE8C4()
{
  result = qword_27CA1BC68;
  if (!qword_27CA1BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC68);
  }

  return result;
}

uint64_t sub_2148FE918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2148FE980(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2148FEA24()
{
  result = qword_27CA1BC70;
  if (!qword_27CA1BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC70);
  }

  return result;
}

unint64_t sub_2148FEA7C()
{
  result = qword_27CA1BC78;
  if (!qword_27CA1BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC78);
  }

  return result;
}

unint64_t sub_2148FEAD4()
{
  result = qword_27CA1BC80;
  if (!qword_27CA1BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC80);
  }

  return result;
}

unint64_t sub_2148FEB2C()
{
  result = qword_27CA1BC88;
  if (!qword_27CA1BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC88);
  }

  return result;
}

unint64_t sub_2148FEB84()
{
  result = qword_27CA1BC90;
  if (!qword_27CA1BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC90);
  }

  return result;
}

unint64_t sub_2148FEBDC()
{
  result = qword_27CA1BC98;
  if (!qword_27CA1BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC98);
  }

  return result;
}

unint64_t sub_2148FEC34()
{
  result = qword_27CA1BCA0;
  if (!qword_27CA1BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BCA0);
  }

  return result;
}

unint64_t sub_2148FEC8C()
{
  result = qword_27CA1BCA8;
  if (!qword_27CA1BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BCA8);
  }

  return result;
}

unint64_t sub_2148FECE4()
{
  result = qword_27CA1BCB0;
  if (!qword_27CA1BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BCB0);
  }

  return result;
}

unint64_t sub_2148FED3C()
{
  result = qword_27CA1BCB8;
  if (!qword_27CA1BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BCB8);
  }

  return result;
}

unint64_t sub_2148FED94()
{
  result = qword_27CA1BCC0;
  if (!qword_27CA1BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BCC0);
  }

  return result;
}

unint64_t sub_2148FEDEC()
{
  result = qword_27CA1BCC8;
  if (!qword_27CA1BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BCC8);
  }

  return result;
}

uint64_t sub_2148FEE40()
{
  v0 = sub_21498FEF0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2148FEE8C()
{
  v0 = sub_21498FEF0();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2148FEEE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x6D614E746E657665;
  }

  if (v3)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v5 = 0x80000002149A0950;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x6D614E746E657665;
  }

  if (*a2)
  {
    v7 = 0x80000002149A0950;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_214990080();
  }

  return v9 & 1;
}

uint64_t sub_2148FEF94()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148FF020()
{
  *v0;
  sub_21498F900();
}

uint64_t sub_2148FF098()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148FF120@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21498FEF0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2148FF180(unint64_t *a1@<X8>)
{
  v2 = 0x80000002149A0950;
  v3 = 0x6D614E746E657665;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE900000000000065;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_2148FF1C8()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x6D614E746E657665;
  }

  *v0;
  return result;
}

uint64_t sub_2148FF20C@<X0>(char *a1@<X8>)
{
  v2 = sub_21498FEF0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2148FF270(uint64_t a1)
{
  v2 = sub_2148FFE60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148FF2AC(uint64_t a1)
{
  v2 = sub_2148FFE60();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2148FF2E8()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = sub_21498F840();
  [v0 postNotificationName:v1 object:0];
}

uint64_t *sub_2148FF3D0(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v24 = sub_21498E900();
  v22 = *(v24 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v23 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BCF0, &qword_2149988A8);
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v25);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148FFE60();
  sub_2149901B0();
  if (v2)
  {
    v16 = *(*v1 + 48);
    v17 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v5;
    v21 = v8;
    v13 = v22;
    v27 = 0;
    sub_2148FFEB4(&qword_27CA1A2C0, MEMORY[0x277D23340]);
    v15 = v23;
    v14 = v24;
    sub_21498FFA0();
    (*(v13 + 32))(v1 + OBJC_IVAR____TtC19iCloudMailAssistant22SendNotificationAction_eventName, v15, v14);
    v26 = 1;
    v19 = sub_21498FF30();
    (*(v21 + 8))(v11, v25);
    *(v3 + OBJC_IVAR____TtC19iCloudMailAssistant22SendNotificationAction_postToMainThread) = (v19 == 2) | v19 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_2148FF728()
{
  v1 = OBJC_IVAR____TtC19iCloudMailAssistant22SendNotificationAction_eventName;
  v2 = sub_21498E900();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SendNotificationAction()
{
  result = qword_27CA1BCD0;
  if (!qword_27CA1BCD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2148FF818()
{
  result = sub_21498E900();
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

uint64_t sub_2148FF8B0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214899138;

  return (sub_2148FFB70)(a1);
}

uint64_t *sub_2148FFA88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_2148FF3D0(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_2148FFB70(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_2148FFB90, 0, 0);
}

uint64_t sub_2148FFB90()
{
  v1 = v0[8];
  v2 = v0[9] + OBJC_IVAR____TtC19iCloudMailAssistant22SendNotificationAction_eventName;
  v3 = sub_21498E8F0();
  v5 = v4;
  v6 = v3;
  if (*(v0[9] + OBJC_IVAR____TtC19iCloudMailAssistant22SendNotificationAction_postToMainThread) == 1)
  {
    sub_2148FFDCC();
    v7 = sub_21498FC20();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_2148FFE18;
    *(v9 + 24) = v8;
    v0[6] = sub_2148FFE20;
    v0[7] = v9;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2148FF3A8;
    v0[5] = &block_descriptor_2;
    v10 = _Block_copy(v0 + 2);
    v11 = v0[7];

    dispatch_sync(v7, v10);

    _Block_release(v10);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v12 = [objc_opt_self() defaultCenter];
  v13 = sub_21498F840();

  [v12 postNotificationName:v13 object:0];

LABEL_5:
  v14 = v0[1];

  return v14();
}

unint64_t sub_2148FFDCC()
{
  result = qword_281190CC0;
  if (!qword_281190CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281190CC0);
  }

  return result;
}

void sub_2148FFE18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2148FF2E8();
}

uint64_t sub_2148FFE20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2148FFE60()
{
  result = qword_27CA1BCF8;
  if (!qword_27CA1BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BCF8);
  }

  return result;
}

uint64_t sub_2148FFEB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2148FFF10()
{
  result = qword_27CA1BD00;
  if (!qword_27CA1BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD00);
  }

  return result;
}

unint64_t sub_2148FFF68()
{
  result = qword_27CA1BD08;
  if (!qword_27CA1BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD08);
  }

  return result;
}

unint64_t sub_2148FFFC0()
{
  result = qword_27CA1BD10;
  if (!qword_27CA1BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD10);
  }

  return result;
}

uint64_t sub_214900014(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21490005C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2149000B4@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v6 = sub_21498EE00();
        v7 = MEMORY[0x277CDDDA0];
        a2[3] = v6;
        a2[4] = v7;
        __swift_allocate_boxed_opaque_existential_1(a2);
        return sub_21498EDF0();
      }

      else
      {
        v12 = sub_21498ECB0();
        v13 = MEMORY[0x277CDDA00];
        a2[3] = v12;
        a2[4] = v13;
        __swift_allocate_boxed_opaque_existential_1(a2);
        return sub_21498ECA0();
      }
    }

    else
    {
      v10 = sub_21498EE30();
      v11 = MEMORY[0x277CDDE48];
      a2[3] = v10;
      a2[4] = v11;
      __swift_allocate_boxed_opaque_existential_1(a2);
      return sub_21498EE20();
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v8 = sub_21498EF20();
      v9 = MEMORY[0x277CDE370];
      a2[3] = v8;
      a2[4] = v9;
      __swift_allocate_boxed_opaque_existential_1(a2);
      return sub_21498EF10();
    }

    else
    {
      v16 = sub_21498ED00();
      v17 = MEMORY[0x277CDDB70];
      a2[3] = v16;
      a2[4] = v17;
      __swift_allocate_boxed_opaque_existential_1(a2);
      return sub_21498ECF0();
    }
  }

  else if (a1 == 3)
  {
    v3 = sub_21498EE60();
    v4 = MEMORY[0x277CDDE88];
    a2[3] = v3;
    a2[4] = v4;
    __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_21498EE50();
  }

  else
  {
    v14 = sub_21498EEB0();
    v15 = MEMORY[0x277CDE058];
    a2[3] = v14;
    a2[4] = v15;
    __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_21498EEA0();
  }
}

uint64_t sub_214900230()
{
  *v0;
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_214900344@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214900858();
  *a2 = result;
  return result;
}

void sub_214900374(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6974616D6F747561;
  v4 = 0xEE006B6E694C6E6FLL;
  v5 = 0x697461676976616ELL;
  if (v2 != 5)
  {
    v5 = 0x6C65656877;
    v4 = 0xE500000000000000;
  }

  v6 = 0xE700000000000000;
  v7 = 0x657474656C6170;
  if (v2 != 3)
  {
    v7 = 0x65746E656D676573;
    v6 = 0xE900000000000064;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x656E696C6E69;
  if (v2 != 1)
  {
    v9 = 1970169197;
    v8 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0xE900000000000063;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  *a1 = v10;
  a1[1] = v11;
}

uint64_t sub_2149004B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2149901A0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_214900748();
    sub_2149900A0();
    sub_2149000B4(v8, v10);
    __swift_destroy_boxed_opaque_existential_1(v9);
    v6 = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = v6;
    *(a2 + 32) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2149005A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6.val[0] = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, *&v6.val[0].f64[0]);
  v6.val[1] = *(v2 + 24);
  __swift_project_boxed_opaque_existential_1(v2, *&v6.val[1].f64[0]);
  v4 = v7;
  v8 = v6;
  vst2q_f64(v4, v8);
  a2[3] = swift_getOpaqueTypeMetadata2();
  v9 = v6;
  vst2q_f64(v7, v9);
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21498F190();
}

unint64_t sub_2149006F4()
{
  result = qword_27CA1BD18;
  if (!qword_27CA1BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD18);
  }

  return result;
}

unint64_t sub_214900748()
{
  result = qword_27CA1BD20;
  if (!qword_27CA1BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD20);
  }

  return result;
}

unint64_t sub_2149007B0()
{
  result = qword_27CA1BD28;
  if (!qword_27CA1BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD28);
  }

  return result;
}

unint64_t sub_214900804()
{
  result = qword_27CA1BD30;
  if (!qword_27CA1BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD30);
  }

  return result;
}

uint64_t sub_214900858()
{
  v0 = sub_21498FEF0();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2149008A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2149008EC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_214900944()
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_214900998()
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_2149009DC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21498FEF0();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_214900A4C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21498FEF0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_214900AA4(uint64_t a1)
{
  v2 = sub_214901680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214900AE0(uint64_t a1)
{
  v2 = sub_214901680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214900B1C@<X0>(uint64_t a1@<X8>)
{
  v17 = *v1;
  v18 = *(v1 + 2);
  v10 = *v1;
  v11 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BD58, &qword_214998D28);
  sub_21498F430();
  v9 = v13;
  v3 = v14;
  v4 = BYTE8(v14);
  v13 = v17;
  *&v14 = v18;
  sub_21498F410();
  sub_21498F4E0();
  sub_21498EC00();
  LOBYTE(v10) = BYTE8(v14);
  *&v12[7] = v17;
  *&v12[23] = v14;
  *&v12[39] = v15;
  v16 = *(v1 + 24);
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 16) = *v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v1 + 4);
  *a1 = v9;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v7 = *&v12[16];
  *(a1 + 25) = *v12;
  *(a1 + 41) = v7;
  *(a1 + 57) = *&v12[32];
  *(a1 + 72) = *&v12[47];
  *(a1 + 80) = sub_214901094;
  *(a1 + 88) = v5;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_21490109C(&v17, &v10);
  return sub_21490110C(&v16, &v10);
}

uint64_t sub_214900CA4(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BD58, &qword_214998D28);
  return sub_21498F420();
}

uint64_t sub_214900D08(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148F0B10();

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_214900D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_214900F3C();

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_214900DA8(uint64_t a1)
{
  v2 = sub_214900F3C();

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_214900DF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_214901040();

  return MEMORY[0x282182160](a1, a2, v4);
}

double sub_214900E4C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2149013BC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_214900E94()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_214900EE0()
{
  sub_2148F0B10();
  sub_214900F3C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_214900F3C()
{
  result = qword_27CA1BD38;
  if (!qword_27CA1BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD38);
  }

  return result;
}

unint64_t sub_214900F94()
{
  result = qword_27CA1BD40;
  if (!qword_27CA1BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD40);
  }

  return result;
}

unint64_t sub_214900FEC()
{
  result = qword_27CA1BD48;
  if (!qword_27CA1BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD48);
  }

  return result;
}

unint64_t sub_214901040()
{
  result = qword_27CA1BD50;
  if (!qword_27CA1BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD50);
  }

  return result;
}

uint64_t sub_21490109C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BD58, &qword_214998D28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_214901168()
{
  v0 = objc_opt_self();
  v1 = sub_21498F840();
  v2 = [v0 linkWithBundleIdentifier_];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x277D37670]);

  return [v4 init];
}

id sub_214901218(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 24);
  result = [a1 view];
  if (result)
  {
    v7 = result;
    [result intrinsicContentSize];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BDB8, &unk_214998FB0);
    return sub_21498F480();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2149012CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_214901A0C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_214901330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_214901A0C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_214901394()
{
  sub_214901A0C();
  sub_21498EF90();
  __break(1u);
}

uint64_t sub_2149013BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v40 = sub_21498E350();
  v30 = *(v40 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v40);
  v33 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BD60, &qword_214998D30);
  v32 = *(v34 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v8 = &v24 - v7;
  v35 = 0;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BD68, &qword_214998D38);
  sub_21498F400();
  v9 = v37;
  v10 = v38;
  v11 = v39;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214901680();
  sub_2149901B0();
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v27 = v10;
    v28 = v9;
    v29 = v11;
    v14 = v32;
    v13 = v33;
    v15 = v40;
    v16 = v34;
    v17 = sub_21498FF20();
    if (v18)
    {
      v25 = v17;
      v26 = v18;
    }

    else
    {
      sub_21498E340();
      v25 = sub_21498E330();
      v26 = v20;
      (*(v30 + 8))(v13, v15);
    }

    (*(v14 + 8))(v8, v16);
    v21 = v31;
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    *v21 = v28;
    *(v21 + 8) = v27;
    v23 = v25;
    v22 = v26;
    *(v21 + 16) = v29;
    *(v21 + 24) = v23;
    *(v21 + 32) = v22;
  }

  return result;
}

unint64_t sub_214901680()
{
  result = qword_27CA1BD70;
  if (!qword_27CA1BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD70);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2149016F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_214901740(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_214901794()
{
  result = qword_27CA1BD78;
  if (!qword_27CA1BD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1BD80, &qword_214998D98);
    sub_214901820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD78);
  }

  return result;
}

unint64_t sub_214901820()
{
  result = qword_27CA1BD88;
  if (!qword_27CA1BD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1BD90, &qword_214998DA0);
    sub_2149018AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD88);
  }

  return result;
}

unint64_t sub_2149018AC()
{
  result = qword_27CA1BD98;
  if (!qword_27CA1BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD98);
  }

  return result;
}

unint64_t sub_214901908()
{
  result = qword_27CA1BDA0;
  if (!qword_27CA1BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BDA0);
  }

  return result;
}

unint64_t sub_214901960()
{
  result = qword_27CA1BDA8;
  if (!qword_27CA1BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BDA8);
  }

  return result;
}

unint64_t sub_2149019B8()
{
  result = qword_27CA1BDB0;
  if (!qword_27CA1BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BDB0);
  }

  return result;
}

unint64_t sub_214901A0C()
{
  result = qword_27CA1BDC0;
  if (!qword_27CA1BDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BDC0);
  }

  return result;
}

uint64_t static TapToRadarDraft.Component.mailICloudFeaturesAll.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CA19F90 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27CA1BDD8;
  v2 = unk_27CA1BDE0;
  v3 = qword_27CA1BDE8;
  *a1 = xmmword_27CA1BDC8;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

double sub_214901AEC()
{
  *&result = 1754372;
  xmmword_27CA1BDC8 = xmmword_214998FC0;
  qword_27CA1BDD8 = 0x80000002149A2380;
  unk_27CA1BDE0 = 7105601;
  qword_27CA1BDE8 = 0xE300000000000000;
  return result;
}

double sub_214901B28()
{
  *&result = 1754386;
  xmmword_27CA1BDF0 = xmmword_214998FD0;
  qword_27CA1BE00 = 0x80000002149A2380;
  unk_27CA1BE08 = 5459817;
  qword_27CA1BE10 = 0xE300000000000000;
  return result;
}

uint64_t static TapToRadarDraft.Component.mailICloudFeaturesiOS.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CA19F98 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27CA1BE00;
  v2 = unk_27CA1BE08;
  v3 = qword_27CA1BE10;
  *a1 = xmmword_27CA1BDF0;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

double sub_214901BF0()
{
  *&result = 1754384;
  xmmword_27CA1BE18 = xmmword_214998FE0;
  qword_27CA1BE28 = 0x80000002149A2380;
  unk_27CA1BE30 = 0x534F63616DLL;
  qword_27CA1BE38 = 0xE500000000000000;
  return result;
}

uint64_t static TapToRadarDraft.Component.mailICloudFeaturesMacOS.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CA19FA0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27CA1BE28;
  v2 = unk_27CA1BE30;
  v3 = qword_27CA1BE38;
  *a1 = xmmword_27CA1BE18;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

double sub_214901CBC()
{
  *&result = 1607989;
  xmmword_27CA1BE40 = xmmword_214998FF0;
  qword_27CA1BE50 = 0x80000002149A2360;
  unk_27CA1BE58 = 7105601;
  qword_27CA1BE60 = 0xE300000000000000;
  return result;
}

uint64_t static TapToRadarDraft.Component.iCloudMailSettingsAll.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CA19FA8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27CA1BE50;
  v2 = unk_27CA1BE58;
  v3 = qword_27CA1BE60;
  *a1 = xmmword_27CA1BE40;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

double sub_214901D84()
{
  *&result = 1607993;
  xmmword_27CA1BE68 = xmmword_214999000;
  qword_27CA1BE78 = 0x80000002149A2360;
  unk_27CA1BE80 = 5459817;
  qword_27CA1BE88 = 0xE300000000000000;
  return result;
}

uint64_t static TapToRadarDraft.Component.iCloudMailSettingsiOS.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CA19FB0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27CA1BE78;
  v2 = unk_27CA1BE80;
  v3 = qword_27CA1BE88;
  *a1 = xmmword_27CA1BE68;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

double sub_214901E4C()
{
  *&result = 1607997;
  xmmword_27CA1BE90 = xmmword_214999010;
  qword_27CA1BEA0 = 0x80000002149A2360;
  unk_27CA1BEA8 = 0x534F63616DLL;
  qword_27CA1BEB0 = 0xE500000000000000;
  return result;
}

uint64_t static TapToRadarDraft.Component.iCloudMailSettingsMacOS.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CA19FB8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27CA1BEA0;
  v2 = unk_27CA1BEA8;
  v3 = qword_27CA1BEB0;
  *a1 = xmmword_27CA1BE90;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

double sub_214901F18()
{
  *&result = 1608704;
  xmmword_27CA1BEB8 = xmmword_214999020;
  qword_27CA1BEC8 = 0x80000002149A2340;
  unk_27CA1BED0 = 7105601;
  qword_27CA1BED8 = 0xE300000000000000;
  return result;
}

uint64_t static TapToRadarDraft.Component.liftUIAll.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CA19FC0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27CA1BEC8;
  v2 = unk_27CA1BED0;
  v3 = qword_27CA1BED8;
  *a1 = xmmword_27CA1BEB8;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

id sub_214901FE0(uint64_t a1)
{
  v1 = *(a1 + qword_27CA1BEE0);
  v2 = *(a1 + qword_27CA1BEE0 + 8);

  v3 = sub_21498F840();

  return v3;
}

id sub_214902064()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GenericRequestAPIRequest()
{
  result = qword_27CA1BEF0;
  if (!qword_27CA1BEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConsentStatus.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2149901A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_214990090();
  v7 = sub_21498FEF0();

  if (v7 >= 4)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  __swift_destroy_boxed_opaque_existential_1(v9);
  *a2 = v8;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

iCloudMailAssistant::ConsentStatus_optional __swiftcall ConsentStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21498FEF0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ConsentStatus.rawValue.getter()
{
  v1 = 0x6564696365646E55;
  v2 = 0x64656E696C636544;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x6465747065636341;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_214902338()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_214902400()
{
  *v0;
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_2149024B4()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

void sub_214902584(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x6564696365646E55;
  v4 = 0xE800000000000000;
  v5 = 0x64656E696C636544;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6465747065636341;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_214902680(char a1)
{
  result = 1936746868;
  switch(a1)
  {
    case 1:
      result = 0x7370695465746164;
      break;
    case 2:
      result = 0x696D736944706974;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    case 5:
      result = 0x53746E65736E6F63;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x6C75526B636F6C62;
      break;
    case 8:
      result = 0x6974616D6F747561;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x4A70756E61656C63;
      break;
    case 11:
      result = 0x6554737574617473;
      break;
    case 12:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_214902844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214904D44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214902878(uint64_t a1)
{
  v2 = sub_2149040A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2149028B4(uint64_t a1)
{
  v2 = sub_2149040A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MailCleanupState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BF00, &unk_2149990A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2149040A0();
  sub_2149901C0();
  v25 = *v3;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B270, &qword_214994F00);
  sub_2149040F4();
  sub_214990040();
  if (!v2)
  {
    v11 = type metadata accessor for MailCleanupState();
    v12 = v11[5];
    LOBYTE(v25) = 1;
    sub_21498E320();
    sub_21490524C(&qword_2811926F8, MEMORY[0x277CC9578]);
    sub_21498FFE0();
    v25 = *(v3 + v11[6]);
    v24 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BF08, &unk_2149990B0);
    sub_214904218(&qword_281190D28, qword_281191AE0);
    sub_214990040();
    v13 = *(v3 + v11[7]);
    LOBYTE(v25) = 3;
    sub_21498FFD0();
    v14 = *(v3 + v11[8]);
    LOBYTE(v25) = 4;
    sub_21498FFD0();
    LOBYTE(v25) = *(v3 + v11[9]);
    v24 = 5;
    sub_2149042B4();
    sub_21498FFE0();
    v15 = v11[10];
    LOBYTE(v25) = 6;
    sub_21498FFE0();
    v25 = *(v3 + v11[11]);
    v24 = 7;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A368, &qword_214991810);
    v23[1] = sub_214904308();
    v23[2] = v16;
    sub_214990040();
    v25 = *(v3 + v11[12]);
    v24 = 8;
    sub_214990040();
    v17 = v11[13];
    LOBYTE(v25) = 9;
    sub_21498FFE0();
    v25 = *(v3 + v11[14]);
    v24 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BF10, &unk_2149990C0);
    sub_21490438C();
    sub_214990040();
    v18 = (v3 + v11[15]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v25) = 11;
    sub_21498FFC0();
    v21 = v11[16];
    LOBYTE(v25) = 12;
    sub_21498FFE0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MailCleanupState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v47 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v55 = &v43 - v9;
  MEMORY[0x28223BE20](v8);
  v60 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BF18, &qword_2149990D0);
  v12 = *(v11 - 8);
  v61 = v11;
  v62 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v66 = &v43 - v14;
  v15 = type metadata accessor for MailCleanupState();
  v16 = (v15 - 8);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x277D84F90];
  *v19 = MEMORY[0x277D84F90];
  v21 = v16[7];
  v22 = sub_21498E320();
  v23 = *(*(v22 - 8) + 56);
  v59 = v21;
  v23(&v19[v21], 1, 1, v22);
  v58 = v16[8];
  *&v19[v58] = v20;
  v57 = v16[9];
  v19[v57] = 2;
  v56 = v16[10];
  v19[v56] = 2;
  v24 = v16[11];
  v19[v24] = 3;
  v53 = v16[12];
  v54 = v24;
  v23(&v19[v53], 1, 1, v22);
  v52 = v16[13];
  *&v19[v52] = v20;
  v50 = v16[14];
  *&v19[v50] = v20;
  v49 = v16[15];
  v23(&v19[v49], 1, 1, v22);
  v25 = v16[16];
  *&v19[v25] = v20;
  v26 = &v19[v16[17]];
  *v26 = 0;
  v26[1] = 0;
  v27 = v16[18];
  v65 = v19;
  v23(&v19[v27], 1, 1, v22);
  v28 = v63;
  v29 = v63[4];
  __swift_project_boxed_opaque_existential_1(v63, v63[3]);
  sub_2149040A0();
  v30 = v64;
  sub_2149901B0();
  if (v30)
  {
    v42 = v65;
  }

  else
  {
    v32 = v59;
    v31 = v60;
    v46 = v25;
    v45 = v26;
    v64 = v22;
    v44 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B270, &qword_214994F00);
    v67 = 0;
    sub_214904464();
    sub_21498FFA0();
    v34 = v65;
    *v65 = v68;
    LOBYTE(v68) = 1;
    v35 = sub_21490524C(&qword_2811926E0, MEMORY[0x277CC9578]);
    sub_21498FF40();
    v43 = v35;
    sub_2148BC688(v31, v34 + v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BF08, &unk_2149990B0);
    v67 = 2;
    sub_214904218(&qword_281190D20, &qword_281191AD8);
    sub_21498FFA0();
    *(v34 + v58) = v68;
    LOBYTE(v68) = 3;
    *(v34 + v57) = sub_21498FF30();
    LOBYTE(v68) = 4;
    *(v34 + v56) = sub_21498FF30();
    v67 = 5;
    sub_21490453C();
    sub_21498FF40();
    v36 = v55;
    *(v34 + v54) = v68;
    LOBYTE(v68) = 6;
    sub_21498FF40();
    sub_2148BC688(v36, v34 + v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A368, &qword_214991810);
    v67 = 7;
    sub_214904590();
    sub_21498FFA0();
    *(v34 + v52) = v68;
    v67 = 8;
    sub_21498FFA0();
    *(v34 + v50) = v68;
    LOBYTE(v68) = 9;
    sub_21498FF40();
    sub_2148BC688(v51, v65 + v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BF10, &unk_2149990C0);
    v67 = 10;
    sub_214904614();
    sub_21498FFA0();
    *(v65 + v46) = v68;
    LOBYTE(v68) = 11;
    v37 = sub_21498FF20();
    v38 = v45;
    *v45 = v37;
    v38[1] = v39;
    LOBYTE(v68) = 12;
    v40 = v61;
    v41 = v66;
    sub_21498FF40();
    (*(v62 + 8))(v41, v40);
    v42 = v65;
    sub_2148BC688(v48, v65 + v44);
    sub_2149046EC(v42, v47);
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_2148E5E04(v42);
}

BOOL _s19iCloudMailAssistant0B12CleanupStateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_21498E320();
  v104 = *(v4 - 8);
  v5 = v104[8];
  MEMORY[0x28223BE20](v4);
  v103 = &v92[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v92[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v92[-v13];
  v15 = MEMORY[0x28223BE20](v12);
  v101 = &v92[-v16];
  MEMORY[0x28223BE20](v15);
  v18 = &v92[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BF30, qword_2149993B8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v92[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v92[-v25];
  v27 = MEMORY[0x28223BE20](v24);
  v102 = &v92[-v28];
  MEMORY[0x28223BE20](v27);
  v30 = &v92[-v29];
  if ((sub_21497A984(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v96 = v14;
  v97 = v26;
  v95 = v23;
  v31 = type metadata accessor for MailCleanupState();
  v32 = a1;
  v33 = a2;
  v99 = v32;
  v100 = v31;
  v34 = *(v31 + 20);
  v98 = v19;
  v35 = *(v19 + 48);
  sub_2149051DC(v32 + v34, v30);
  v36 = v33 + v34;
  v37 = v33;
  sub_2149051DC(v36, &v30[v35]);
  v38 = v104;
  v40 = (v104 + 6);
  v39 = v104[6];
  if ((v39)(v30, 1, v4) == 1)
  {
    if ((v39)(&v30[v35], 1, v4) == 1)
    {
      v94 = v11;
      sub_21489DFCC(v30, &qword_27CA1ABA0, &qword_214993E20);
      goto LABEL_10;
    }

LABEL_7:
    v41 = v30;
    goto LABEL_8;
  }

  sub_2149051DC(v30, v18);
  if ((v39)(&v30[v35], 1, v4) == 1)
  {
    (v38[1])(v18, v4);
    goto LABEL_7;
  }

  v94 = v11;
  v42 = v40;
  v43 = v103;
  (v38[4])(v103, &v30[v35], v4);
  sub_21490524C(&qword_2811926E8, MEMORY[0x277CC9578]);
  v44 = sub_21498F830();
  v45 = v43;
  v40 = v42;
  v46 = v38;
  v47 = v38[1];
  v47(v45, v4);
  v47(v18, v4);
  v38 = v46;
  v37 = v33;
  sub_21489DFCC(v30, &qword_27CA1ABA0, &qword_214993E20);
  if ((v44 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v49 = v99;
  v48 = v100;
  if ((sub_21497AAB0(*(v99 + v100[6]), *(v37 + v100[6])) & 1) == 0)
  {
    return 0;
  }

  v50 = v48[7];
  v51 = *(v49 + v50);
  v52 = *(v37 + v50);
  if (v51 == 2)
  {
    if (v52 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v52 == 2 || ((v52 ^ v51) & 1) != 0)
    {
      return result;
    }
  }

  v54 = v48[8];
  v55 = *(v49 + v54);
  v56 = *(v37 + v54);
  if (v55 == 2)
  {
    if (v56 != 2)
    {
      return 0;
    }

LABEL_21:
    v57 = v48[9];
    v58 = *(v49 + v57);
    v59 = *(v37 + v57);
    if (v58 == 4)
    {
      if (v59 != 4)
      {
        return 0;
      }
    }

    else if (v59 == 4 || (sub_214959884(v58, v59) & 1) == 0)
    {
      return 0;
    }

    v60 = v48[10];
    v61 = *(v98 + 48);
    v62 = v102;
    sub_2149051DC(v49 + v60, v102);
    sub_2149051DC(v37 + v60, v62 + v61);
    if ((v39)(v62, 1, v4) == 1)
    {
      if ((v39)(v62 + v61, 1, v4) != 1)
      {
        goto LABEL_31;
      }

      sub_21489DFCC(v62, &qword_27CA1ABA0, &qword_214993E20);
    }

    else
    {
      v63 = v101;
      sub_2149051DC(v62, v101);
      if ((v39)(v62 + v61, 1, v4) == 1)
      {
        goto LABEL_30;
      }

      v64 = v38[4];
      v104 = v40;
      v65 = v103;
      v64(v103, v62 + v61, v4);
      sub_21490524C(&qword_2811926E8, MEMORY[0x277CC9578]);
      v93 = sub_21498F830();
      v66 = v38[1];
      v66(v65, v4);
      v66(v63, v4);
      v48 = v100;
      sub_21489DFCC(v62, &qword_27CA1ABA0, &qword_214993E20);
      if ((v93 & 1) == 0)
      {
        return 0;
      }
    }

    if ((sub_21497AC70(*(v49 + v48[11]), *(v37 + v48[11])) & 1) == 0 || (sub_21497AC70(*(v49 + v48[12]), *(v37 + v48[12])) & 1) == 0)
    {
      return 0;
    }

    v104 = v39;
    v67 = v48[13];
    v62 = v97;
    v68 = *(v98 + 48);
    sub_2149051DC(v49 + v67, v97);
    v69 = v37 + v67;
    v70 = v104;
    sub_2149051DC(v69, v62 + v68);
    if (v70(v62, 1, v4) == 1)
    {
      if (v70(v62 + v68, 1, v4) == 1)
      {
        sub_21489DFCC(v62, &qword_27CA1ABA0, &qword_214993E20);
LABEL_40:
        if ((sub_21497AFCC(*(v49 + v48[14]), *(v37 + v48[14])) & 1) == 0)
        {
          return 0;
        }

        v75 = v48[15];
        v76 = (v49 + v75);
        v77 = *(v49 + v75 + 8);
        v78 = (v37 + v75);
        v79 = v78[1];
        if (v77)
        {
          v80 = v103;
          if (!v79 || (*v76 != *v78 || v77 != v79) && (sub_214990080() & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v80 = v103;
          if (v79)
          {
            return 0;
          }
        }

        v81 = v100[16];
        v82 = *(v98 + 48);
        v83 = v95;
        sub_2149051DC(v49 + v81, v95);
        sub_2149051DC(v37 + v81, v83 + v82);
        v84 = v104;
        if ((v104)(v83, 1, v4) == 1)
        {
          if (v84(v83 + v82, 1, v4) == 1)
          {
            sub_21489DFCC(v95, &qword_27CA1ABA0, &qword_214993E20);
            return 1;
          }
        }

        else
        {
          sub_2149051DC(v83, v94);
          if (v84(v83 + v82, 1, v4) != 1)
          {
            v85 = v38;
            v86 = v38[4];
            v87 = v95;
            v88 = v80;
            v86(v80, &v95[v82], v4);
            sub_21490524C(&qword_2811926E8, MEMORY[0x277CC9578]);
            v89 = v94;
            v90 = sub_21498F830();
            v91 = v85[1];
            v91(v88, v4);
            v91(v89, v4);
            sub_21489DFCC(v87, &qword_27CA1ABA0, &qword_214993E20);
            return (v90 & 1) != 0;
          }

          (v38[1])(v94, v4);
        }

        v41 = v95;
LABEL_8:
        sub_21489DFCC(v41, &qword_27CA1BF30, qword_2149993B8);
        return 0;
      }

LABEL_31:
      v41 = v62;
      goto LABEL_8;
    }

    v63 = v96;
    sub_2149051DC(v62, v96);
    if (v70(v62 + v68, 1, v4) != 1)
    {
      v71 = v103;
      (v38[4])(v103, v62 + v68, v4);
      sub_21490524C(&qword_2811926E8, MEMORY[0x277CC9578]);
      LODWORD(v102) = sub_21498F830();
      v72 = v63;
      v73 = v38[1];
      v74 = v71;
      v48 = v100;
      v73(v74, v4);
      v73(v72, v4);
      sub_21489DFCC(v62, &qword_27CA1ABA0, &qword_214993E20);
      if ((v102 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_40;
    }

LABEL_30:
    (v38[1])(v63, v4);
    goto LABEL_31;
  }

  result = 0;
  if (v56 != 2 && ((v56 ^ v55) & 1) == 0)
  {
    goto LABEL_21;
  }

  return result;
}

unint64_t sub_2149040A0()
{
  result = qword_281192060;
  if (!qword_281192060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281192060);
  }

  return result;
}

unint64_t sub_2149040F4()
{
  result = qword_281190D10;
  if (!qword_281190D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B270, &qword_214994F00);
    sub_214904178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190D10);
  }

  return result;
}

unint64_t sub_214904178()
{
  result = qword_281190FB8;
  if (!qword_281190FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190FB8);
  }

  return result;
}

uint64_t type metadata accessor for MailCleanupState()
{
  result = qword_281192030;
  if (!qword_281192030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214904218(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1BF08, &unk_2149990B0);
    sub_21490524C(a2, type metadata accessor for MATipDismissal);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2149042B4()
{
  result = qword_281191C48;
  if (!qword_281191C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C48);
  }

  return result;
}

unint64_t sub_214904308()
{
  result = qword_281190D58;
  if (!qword_281190D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A368, &qword_214991810);
    sub_21489C9AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190D58);
  }

  return result;
}

unint64_t sub_21490438C()
{
  result = qword_281190D40;
  if (!qword_281190D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1BF10, &unk_2149990C0);
    sub_214904410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190D40);
  }

  return result;
}

unint64_t sub_214904410()
{
  result = qword_281191C58;
  if (!qword_281191C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C58);
  }

  return result;
}

unint64_t sub_214904464()
{
  result = qword_281190D08;
  if (!qword_281190D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B270, &qword_214994F00);
    sub_2149044E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190D08);
  }

  return result;
}

unint64_t sub_2149044E8()
{
  result = qword_281190FB0;
  if (!qword_281190FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190FB0);
  }

  return result;
}

unint64_t sub_21490453C()
{
  result = qword_281191C38;
  if (!qword_281191C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C38);
  }

  return result;
}

unint64_t sub_214904590()
{
  result = qword_281190D50;
  if (!qword_281190D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A368, &qword_214991810);
    sub_21489C8E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190D50);
  }

  return result;
}

unint64_t sub_214904614()
{
  result = qword_281190D38;
  if (!qword_281190D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1BF10, &unk_2149990C0);
    sub_214904698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190D38);
  }

  return result;
}

unint64_t sub_214904698()
{
  result = qword_281191C50;
  if (!qword_281191C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C50);
  }

  return result;
}

uint64_t sub_2149046EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailCleanupState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_214904754()
{
  result = qword_27CA1BF20;
  if (!qword_27CA1BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BF20);
  }

  return result;
}

void sub_2149047E0()
{
  sub_214904A9C(319, &qword_281190D18, &type metadata for MATip, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_214904A38(319, &qword_2811926D8, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_214904A38(319, &qword_281190D30, type metadata accessor for MATipDismissal, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_214904A9C(319, &qword_281190CD8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_214904A9C(319, &qword_281191C30, &type metadata for ConsentStatus, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_214904A9C(319, &qword_281190D60, &type metadata for UnifiedRule, MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              sub_214904A9C(319, &qword_281190D48, &type metadata for BulkActionJob, MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                sub_214904A9C(319, &qword_281190D68, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_214904A38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_214904A9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for MailCleanupState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MailCleanupState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_214904C40()
{
  result = qword_27CA1BF28;
  if (!qword_27CA1BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BF28);
  }

  return result;
}

unint64_t sub_214904C98()
{
  result = qword_281192050;
  if (!qword_281192050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281192050);
  }

  return result;
}

unint64_t sub_214904CF0()
{
  result = qword_281192058;
  if (!qword_281192058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281192058);
  }

  return result;
}

uint64_t sub_214904D44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1936746868 && a2 == 0xE400000000000000;
  if (v3 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7370695465746164 && a2 == 0xEF64656863746546 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696D736944706974 && a2 == 0xED0000736C617373 || (sub_214990080() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002149A23E0 == a2 || (sub_214990080() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000021 && 0x80000002149A2400 == a2 || (sub_214990080() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x53746E65736E6F63 && a2 == 0xED00007375746174 || (sub_214990080() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002149A2430 == a2 || (sub_214990080() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C75526B636F6C62 && a2 == 0xEA00000000007365 || (sub_214990080() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6974616D6F747561 && a2 == 0xEF73656C75526E6FLL || (sub_214990080() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002149A2450 == a2 || (sub_214990080() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4A70756E61656C63 && a2 == 0xEB0000000073626FLL || (sub_214990080() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6554737574617473 && a2 == 0xEA00000000007478 || (sub_214990080() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000022 && 0x80000002149A2470 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_214990080();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

unint64_t sub_214905188()
{
  result = qword_281191C40;
  if (!qword_281191C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C40);
  }

  return result;
}

uint64_t sub_2149051DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21490524C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HTTPRequestKey.init(httpMethod:urlString:body:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t HTTPRequestKey.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_21489B6F8(v5, v6);
  sub_21498F900();
  result = sub_21498F900();
  if (v6 >> 60 != 15)
  {
    sub_21498E1E0();

    return sub_21489B8F0(v5, v6);
  }

  return result;
}

uint64_t HTTPRequestKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_214990160();
  sub_21489B6F8(v5, v6);
  sub_21498F900();
  sub_21498F900();
  if (v6 >> 60 != 15)
  {
    sub_21498E1E0();
    sub_21489B8F0(v5, v6);
  }

  return sub_214990190();
}

uint64_t sub_21490540C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_214990160();
  sub_21489B6F8(v5, v6);
  sub_21498F900();
  sub_21498F900();
  if (v6 >> 60 != 15)
  {
    sub_21498E1E0();
    sub_21489B8F0(v5, v6);
  }

  return sub_214990190();
}

uint64_t sub_2149054B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_21489B6F8(v5, v6);
  sub_21498F900();
  result = sub_21498F900();
  if (v6 >> 60 != 15)
  {
    sub_21498E1E0();

    return sub_21489B8F0(v5, v6);
  }

  return result;
}

uint64_t sub_214905570()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_214990160();
  sub_21489B6F8(v5, v6);
  sub_21498F900();
  sub_21498F900();
  if (v6 >> 60 != 15)
  {
    sub_21498E1E0();
    sub_21489B8F0(v5, v6);
  }

  return sub_214990190();
}

unint64_t sub_214905618()
{
  type metadata accessor for RequestDeduplicator();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 112) = sub_2148E2548(MEMORY[0x277D84F90]);
  result = sub_2148E255C(v1);
  *(v0 + 120) = result;
  qword_27CA1BF38 = v0;
  return result;
}

uint64_t RequestDeduplicator.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 112) = sub_2148E2548(MEMORY[0x277D84F90]);
  *(v0 + 120) = sub_2148E255C(v1);
  return v0;
}

uint64_t static RequestDeduplicator.shared.getter()
{
  if (qword_27CA19FC8 != -1)
  {
    swift_once();
  }
}

uint64_t RequestDeduplicator.init()()
{
  swift_defaultActor_initialize();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 112) = sub_2148E2548(MEMORY[0x277D84F90]);
  *(v0 + 120) = sub_2148E255C(v1);
  return v0;
}

uint64_t sub_214905770(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 216) = a3;
  *(v4 + 224) = v3;
  *(v4 + 208) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0) - 8) + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  v7 = sub_21498E690();
  *(v4 + 240) = v7;
  v8 = *(v7 - 8);
  *(v4 + 248) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 256) = swift_task_alloc();
  v10 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v10;
  *(v4 + 48) = a1[2];

  return MEMORY[0x2822009F8](sub_214905880, v3, 0);
}

uint64_t sub_214905880()
{
  v43 = v0;
  v1 = *(v0 + 224);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v3 = *(v1 + 112);

  v4 = sub_2149080EC(v0 + 16);
  if ((v5 & 1) == 0)
  {

LABEL_8:
    v25 = *(v0 + 232);
    v27 = *(v0 + 208);
    v26 = *(v0 + 216);
    v28 = sub_21498FAE0();
    (*(*(v28 - 8) + 56))(v25, 1, 1, v28);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v27;
    v29[5] = v26;

    v30 = MEMORY[0x277D84F78];
    v6 = sub_214906288(0, 0, v25, &unk_2149993D8, v29);
    *(v0 + 288) = v6;
    swift_beginAccess();
    sub_2149091B4(v0 + 16, v0 + 64);

    v31 = *(v1 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_214908B9C(v6, (v0 + 16), isUniquelyReferenced_nonNull_native, sub_214985AB0, sub_2149564CC);
    sub_2149091EC(v0 + 16);
    *(v1 + 112) = v42;
    swift_endAccess();
    v33 = *(MEMORY[0x277D857C8] + 4);
    v34 = swift_task_alloc();
    *(v0 + 296) = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
    *v34 = v0;
    v34[1] = sub_214905ECC;
    v36 = MEMORY[0x277D84950];
    v37 = v30 + 8;
    goto LABEL_11;
  }

  v6 = *(*(v2 + 56) + 8 * v4);
  *(v0 + 264) = v6;

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 248);
  v7 = *(v0 + 256);
  v9 = *(v0 + 240);
  v10 = __swift_project_value_buffer(v9, qword_281194E18);
  (*(v8 + 16))(v7, v10, v9);
  sub_2149091B4(v0 + 16, v0 + 112);
  v11 = sub_21498E670();
  v12 = sub_21498FBD0();
  sub_2149091EC(v0 + 16);
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 248);
  v15 = *(v0 + 256);
  v16 = *(v0 + 240);
  if (v13)
  {
    v41 = *(v0 + 256);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v42 = v18;
    *v17 = 136315394;
    v19 = *(v0 + 16);
    v20 = *(v0 + 24);

    v21 = sub_2149079F4(v19, v20, &v42);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = *(v0 + 32);
    v23 = *(v0 + 40);

    v24 = sub_2149079F4(v22, v23, &v42);

    *(v17 + 14) = v24;
    _os_log_impl(&dword_21488E000, v11, v12, "RequestDeduplicator: Deduplicating void request for key: %s %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v18, -1, -1);
    MEMORY[0x216059AC0](v17, -1, -1);

    (*(v14 + 8))(v41, v16);
  }

  else
  {

    (*(v14 + 8))(v15, v16);
  }

  v38 = *(MEMORY[0x277D857C8] + 4);
  v39 = swift_task_alloc();
  *(v0 + 272) = v39;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  *v39 = v0;
  v39[1] = sub_214905D28;
  v36 = MEMORY[0x277D84950];
  v37 = MEMORY[0x277D84F78] + 8;
LABEL_11:

  return MEMORY[0x282200430](v35, v6, v37, v35, v36);
}

uint64_t sub_214905D28()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 224);
  if (v0)
  {
    v6 = sub_214906080;
  }

  else
  {
    v6 = sub_214905E54;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_214905E54()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[29];

  v4 = v0[1];

  return v4();
}

uint64_t sub_214905ECC()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 224);
  if (v0)
  {
    v6 = sub_214906100;
  }

  else
  {
    v6 = sub_214905FF8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_214905FF8()
{
  sub_214906534(v0[28], (v0 + 2));
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[29];

  v4 = v0[1];

  return v4();
}

uint64_t sub_214906080()
{
  v1 = v0[35];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[29];

  v5 = v0[1];

  return v5();
}

uint64_t sub_214906100()
{
  sub_214906534(v0[28], (v0 + 2));
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[32];
  v4 = v0[29];

  v5 = v0[1];

  return v5();
}

uint64_t sub_214906190(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_214899138;

  return v8();
}

uint64_t sub_214906288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2148AA824(a3, v24 - v10, &qword_27CA1B6D0, &qword_2149916C0);
  v12 = sub_21498FAE0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21489DFCC(v11, &qword_27CA1B6D0, &qword_2149916C0);
  }

  else
  {
    sub_21498FAD0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_21498FA50();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_21498F8F0() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_21489DFCC(a3, &qword_27CA1B6D0, &qword_2149916C0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21489DFCC(a3, &qword_27CA1B6D0, &qword_2149916C0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_214906534(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 112);
  v5 = sub_2149080EC(a2);
  if (v6)
  {
    v7 = v5;
    v8 = *(a1 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 112);
    *(a1 + 112) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_214985AB0();
    }

    v11 = (*(v10 + 48) + 48 * v7);
    v12 = v11[1];
    v13 = v11[3];
    v14 = v11[4];
    v15 = v11[5];

    sub_21489B8F0(v14, v15);
    v16 = *(*(v10 + 56) + 8 * v7);

    sub_214985EC0(v7, v10);
    *(a1 + 112) = v10;
  }

  return swift_endAccess();
}

uint64_t sub_214906618(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 248) = a3;
  *(v4 + 256) = v3;
  *(v4 + 240) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0) - 8) + 64) + 15;
  *(v4 + 264) = swift_task_alloc();
  v7 = sub_21498E690();
  *(v4 + 272) = v7;
  v8 = *(v7 - 8);
  *(v4 + 280) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 288) = swift_task_alloc();
  v10 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v10;
  *(v4 + 48) = a1[2];

  return MEMORY[0x2822009F8](sub_214906728, v3, 0);
}

uint64_t sub_214906728()
{
  v46 = v0;
  v1 = *(v0 + 256);
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v3 = *(v1 + 120);

  v4 = sub_2149080EC(v0 + 16);
  if ((v5 & 1) == 0)
  {

LABEL_8:
    v25 = *(v0 + 264);
    v27 = *(v0 + 240);
    v26 = *(v0 + 248);
    v28 = sub_21498FAE0();
    (*(*(v28 - 8) + 56))(v25, 1, 1, v28);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v27;
    v29[5] = v26;

    v30 = MEMORY[0x277CC9318];
    v31 = sub_214906288(0, 0, v25, &unk_2149993F8, v29);
    *(v0 + 320) = v31;
    swift_beginAccess();
    sub_2149091B4(v0 + 16, v0 + 64);

    v32 = *(v1 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *(v1 + 120);
    *(v1 + 120) = 0x8000000000000000;
    sub_214908B9C(v31, (v0 + 16), isUniquelyReferenced_nonNull_native, sub_214985AC4, sub_2149564E0);
    sub_2149091EC(v0 + 16);
    *(v1 + 120) = v45;
    swift_endAccess();
    v34 = *(MEMORY[0x277D857C8] + 4);
    v35 = swift_task_alloc();
    *(v0 + 328) = v35;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
    *v35 = v0;
    v35[1] = sub_214906D98;
    v37 = MEMORY[0x277D84950];
    v38 = v0 + 208;
    v39 = v31;
    v40 = v30;
    goto LABEL_11;
  }

  v6 = *(*(v2 + 56) + 8 * v4);
  *(v0 + 296) = v6;

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 280);
  v7 = *(v0 + 288);
  v9 = *(v0 + 272);
  v10 = __swift_project_value_buffer(v9, qword_281194E18);
  (*(v8 + 16))(v7, v10, v9);
  sub_2149091B4(v0 + 16, v0 + 112);
  v11 = sub_21498E670();
  v12 = sub_21498FBD0();
  sub_2149091EC(v0 + 16);
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 280);
  v15 = *(v0 + 288);
  v16 = *(v0 + 272);
  if (v13)
  {
    v44 = *(v0 + 288);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v45 = v18;
    *v17 = 136315394;
    v19 = *(v0 + 16);
    v20 = *(v0 + 24);

    v21 = sub_2149079F4(v19, v20, &v45);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = *(v0 + 32);
    v23 = *(v0 + 40);

    v24 = sub_2149079F4(v22, v23, &v45);

    *(v17 + 14) = v24;
    _os_log_impl(&dword_21488E000, v11, v12, "RequestDeduplicator: Deduplicating data request for key: %s %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v18, -1, -1);
    MEMORY[0x216059AC0](v17, -1, -1);

    (*(v14 + 8))(v44, v16);
  }

  else
  {

    (*(v14 + 8))(v15, v16);
  }

  v41 = *(MEMORY[0x277D857C8] + 4);
  v42 = swift_task_alloc();
  *(v0 + 304) = v42;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  *v42 = v0;
  v42[1] = sub_214906BE0;
  v40 = MEMORY[0x277CC9318];
  v37 = MEMORY[0x277D84950];
  v38 = v0 + 224;
  v39 = v6;
LABEL_11:

  return MEMORY[0x282200430](v38, v39, v40, v36, v37);
}

uint64_t sub_214906BE0()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 256);
  if (v0)
  {
    v6 = sub_214906F60;
  }

  else
  {
    v6 = sub_214906D0C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_214906D0C()
{
  v1 = v0[37];

  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[36];
  v5 = v0[33];

  v6 = v0[1];

  return v6(v3, v2);
}

uint64_t sub_214906D98()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 256);
  if (v0)
  {
    v6 = sub_214906FD8;
  }

  else
  {
    v6 = sub_214906EC4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_214906EC4()
{
  v1 = v0[40];
  v2 = v0[26];
  v3 = v0[27];
  sub_2149072D0(v0[32], (v0 + 2));

  v4 = v0[36];
  v5 = v0[33];

  v6 = v0[1];

  return v6(v2, v3);
}

uint64_t sub_214906F60()
{
  v1 = v0[37];

  v2 = v0[39];
  v3 = v0[36];
  v4 = v0[33];

  v5 = v0[1];

  return v5();
}

uint64_t sub_214906FD8()
{
  v1 = v0[40];
  sub_2149072D0(v0[32], (v0 + 2));

  v2 = v0[42];
  v3 = v0[36];
  v4 = v0[33];

  v5 = v0[1];

  return v5();
}

uint64_t sub_214907060(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_21490714C;

  return v8();
}

uint64_t sub_21490714C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x2822009F8](sub_2149072A8, 0, 0);
  }
}

uint64_t sub_2149072D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 120);
  v5 = sub_2149080EC(a2);
  if (v6)
  {
    v7 = v5;
    v8 = *(a1 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 120);
    *(a1 + 120) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_214985AC4();
    }

    v11 = (*(v10 + 48) + 48 * v7);
    v12 = v11[1];
    v13 = v11[3];
    v14 = v11[4];
    v15 = v11[5];

    sub_21489B8F0(v14, v15);
    v16 = *(*(v10 + 56) + 8 * v7);

    sub_214985EC0(v7, v10);
    *(a1 + 120) = v10;
  }

  return swift_endAccess();
}

uint64_t sub_2149073B4()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = MEMORY[0x277D84F98];
  *(v0 + 112) = MEMORY[0x277D84F98];

  swift_beginAccess();
  v3 = *(v0 + 120);
  *(v0 + 120) = v2;
}

uint64_t RequestDeduplicator.deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RequestDeduplicator.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_21490750C()
{
  if (qword_27CA19FC8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_214907568(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RequestDeduplicator();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_2149075A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_21498E040();
    if (v10)
    {
      v11 = sub_21498E060();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_21498E050();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_21498E040();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_21498E060();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_21498E050();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2149077D0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_214908D30(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_21489B4F8(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_2149075A0(v14, a3, a4, &v13);
  v10 = v4;
  sub_21489B4F8(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

_BYTE **sub_214907988(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_214907998(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2149079F4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2149079F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_214907AC0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_21489E614(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_214907AC0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_214907BCC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_21498FE30();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_214907BCC(uint64_t a1, unint64_t a2)
{
  v4 = sub_214907C18(a1, a2);
  sub_214907D48(&unk_2826C3CB8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_214907C18(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_214907E34(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_21498FE30();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_21498F940();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_214907E34(v10, 0);
        result = sub_21498FDF0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_214907D48(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_214907EA8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_214907E34(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BF50, &qword_214999608);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_214907EA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BF50, &qword_214999608);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_214907F9C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_214990160();
  sub_21498F900();
  v6 = sub_214990190();

  return sub_2149081D0(a1, a2, v6);
}

unint64_t sub_214908014(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_21498FD90();

  return sub_214908288(a1, v5);
}

unint64_t sub_214908058(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_21498F870();
  sub_214990160();
  sub_21498F900();
  v4 = sub_214990190();

  return sub_214908350(a1, v4);
}

unint64_t sub_2149080EC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_214990160();
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v11 = *(a1 + 32);
  sub_2148AA824(&v11, v10, &qword_27CA1A2F8, &unk_214999610);
  sub_21498F900();
  sub_21498F900();
  if (*(&v11 + 1) >> 60 != 15)
  {
    sub_21498E1E0();
    sub_21489DFCC(&v11, &qword_27CA1A2F8, &unk_214999610);
  }

  v8 = sub_214990190();
  return sub_214908454(a1, v8);
}

unint64_t sub_2149081D0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_214990080())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_214908288(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2148A411C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x216058E30](v9, a1);
      sub_21489E5C0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_214908350(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21498F870();
      v9 = v8;
      if (v7 == sub_21498F870() && v9 == v10)
      {
        break;
      }

      v12 = sub_214990080();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_214908454(uint64_t *a1, uint64_t a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    goto LABEL_77;
  }

  v45 = v2 + 64;
  v47 = ~v4;
  v7 = *a1;
  v48 = a1[1];
  v46 = *a1;
  while (1)
  {
    v10 = (*(v2 + 48) + 48 * v5);
    v12 = v10[2];
    v11 = v10[3];
    v14 = v10[4];
    v13 = v10[5];
    v15 = *v10 == v7 && v10[1] == v48;
    if (!v15 && (sub_214990080() & 1) == 0)
    {
      goto LABEL_7;
    }

    v16 = v12 == a1[2] && v11 == a1[3];
    if (!v16 && (sub_214990080() & 1) == 0)
    {
      goto LABEL_7;
    }

    v51 = *(a1 + 2);
    v17 = *(&v51 + 1);
    v18 = v51;
    if (v13 >> 60 == 15)
    {
      if (*(&v51 + 1) >> 60 == 15)
      {
        sub_21489B6F8(v14, v13);
        sub_2148AA824(&v51, v50, &qword_27CA1A2F8, &unk_214999610);
        goto LABEL_80;
      }

      goto LABEL_4;
    }

    if (*(&v51 + 1) >> 60 != 15)
    {
      break;
    }

LABEL_4:
    sub_21489B6F8(v14, v13);
    sub_2148AA824(&v51, v50, &qword_27CA1A2F8, &unk_214999610);
    sub_21489B8F0(v14, v13);
    v8 = v18;
    v9 = v17;
LABEL_5:
    sub_21489B8F0(v8, v9);
LABEL_6:
    v7 = v46;
LABEL_7:
    v5 = (v5 + 1) & v47;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      goto LABEL_77;
    }
  }

  v19 = v13 >> 62;
  v20 = *(&v51 + 1) >> 62;
  if (v13 >> 62 == 3)
  {
    if (v14)
    {
      v21 = 0;
    }

    else
    {
      v21 = v13 == 0xC000000000000000;
    }

    v22 = 0;
    v23 = v21 && *(&v51 + 1) >> 62 == 3;
    if (v23 && v51 == __PAIR128__(0xC000000000000000, 0))
    {
      sub_21489B6F8(0, 0xC000000000000000);
      sub_2148AA824(&v51, v50, &qword_27CA1A2F8, &unk_214999610);
      sub_21489B8F0(0, 0xC000000000000000);
      v14 = 0;
      goto LABEL_80;
    }

LABEL_40:
    if (v20 <= 1)
    {
      goto LABEL_41;
    }

LABEL_34:
    if (v20 == 2)
    {
      v25 = *(v51 + 16);
      v24 = *(v51 + 24);
      v26 = __OFSUB__(v24, v25);
      v27 = v24 - v25;
      if (v26)
      {
        goto LABEL_83;
      }

      goto LABEL_43;
    }

    if (!v22)
    {
      goto LABEL_79;
    }

LABEL_53:
    sub_21489B6F8(v14, v13);
    sub_2148AA824(&v51, v50, &qword_27CA1A2F8, &unk_214999610);
    sub_21489B8F0(v18, v17);
    v8 = v14;
    v9 = v13;
    goto LABEL_5;
  }

  if (v19 <= 1)
  {
    if (v19)
    {
      LODWORD(v22) = HIDWORD(v14) - v14;
      if (__OFSUB__(HIDWORD(v14), v14))
      {
        goto LABEL_84;
      }

      v22 = v22;
      if (v20 <= 1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v22 = BYTE6(v13);
      if (v20 <= 1)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_34;
  }

  if (v19 == 2)
  {
    v29 = *(v14 + 16);
    v28 = *(v14 + 24);
    v26 = __OFSUB__(v28, v29);
    v22 = v28 - v29;
    if (v26)
    {
      goto LABEL_85;
    }

    goto LABEL_40;
  }

  v22 = 0;
  if (v20 > 1)
  {
    goto LABEL_34;
  }

LABEL_41:
  if (!v20)
  {
    v27 = BYTE14(v51);
LABEL_43:
    if (v22 == v27)
    {
      goto LABEL_49;
    }

    goto LABEL_53;
  }

  if (__OFSUB__(DWORD1(v51), v51))
  {
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
  }

  if (v22 != DWORD1(v51) - v51)
  {
    goto LABEL_53;
  }

LABEL_49:
  if (v22 >= 1)
  {
    if (v19 > 1)
    {
      if (v19 != 2)
      {
        memset(v49, 0, 14);
        sub_21489B6F8(v14, v13);
        sub_21489B6F8(v14, v13);
        sub_2148AA824(&v51, v50, &qword_27CA1A2F8, &unk_214999610);

        sub_21489B6F8(v14, v13);
        goto LABEL_69;
      }

      v43 = *(v14 + 16);
      v44 = v2;
      v42 = *(v14 + 24);
      sub_21489B6F8(v14, v13);
      sub_21489B6F8(v14, v13);
      sub_2148AA824(&v51, v50, &qword_27CA1A2F8, &unk_214999610);

      sub_21489B6F8(v14, v13);
      v30 = sub_21498E040();
      if (v30)
      {
        v31 = v30;
        v32 = sub_21498E060();
        v33 = v43;
        if (__OFSUB__(v43, v32))
        {
          goto LABEL_88;
        }

        v41 = v43 - v32 + v31;
      }

      else
      {
        v41 = 0;
        v33 = v43;
      }

      if (__OFSUB__(v42, v33))
      {
        goto LABEL_87;
      }

      sub_21498E050();
      v36 = v41;
    }

    else
    {
      if (!v19)
      {
        v49[0] = v14;
        LOWORD(v49[1]) = v13;
        BYTE2(v49[1]) = BYTE2(v13);
        BYTE3(v49[1]) = BYTE3(v13);
        BYTE4(v49[1]) = BYTE4(v13);
        BYTE5(v49[1]) = BYTE5(v13);
        sub_21489B6F8(v14, v13);
        sub_21489B6F8(v14, v13);
        sub_2148AA824(&v51, v50, &qword_27CA1A2F8, &unk_214999610);

        sub_21489B6F8(v14, v13);
LABEL_69:
        sub_2149075A0(v49, v18, v17, v50);

        sub_21489B8F0(v14, v13);
        sub_21489B8F0(v14, v13);
        sub_21489B8F0(v18, v17);
        v37 = v50[0];
        sub_21489B8F0(v14, v13);
        if (v37)
        {
          goto LABEL_77;
        }

LABEL_76:
        v3 = v45;
        goto LABEL_6;
      }

      v44 = v2;
      if (v14 >> 32 < v14)
      {
        goto LABEL_86;
      }

      sub_21489B6F8(v14, v13);
      sub_21489B6F8(v14, v13);
      sub_2148AA824(&v51, v50, &qword_27CA1A2F8, &unk_214999610);

      sub_21489B6F8(v14, v13);
      v34 = sub_21498E040();
      if (v34)
      {
        v35 = sub_21498E060();
        if (__OFSUB__(v14, v35))
        {
          goto LABEL_89;
        }

        v34 += v14 - v35;
      }

      sub_21498E050();
      v36 = v34;
    }

    sub_2149075A0(v36, v18, v17, v50);

    sub_21489B8F0(v14, v13);
    sub_21489B8F0(v14, v13);
    sub_21489B8F0(v18, v17);
    v38 = v50[0];
    sub_21489B8F0(v14, v13);
    if (v38)
    {
      goto LABEL_77;
    }

    v2 = v44;
    goto LABEL_76;
  }

LABEL_79:
  sub_21489B6F8(v14, v13);
  sub_2148AA824(&v51, v50, &qword_27CA1A2F8, &unk_214999610);
  sub_21489B8F0(v18, v17);
LABEL_80:
  sub_21489B8F0(v14, v13);
LABEL_77:
  v39 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_214908B9C(uint64_t a1, __int128 *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v12 = *v5;
  v13 = sub_2149080EC(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      a5(v18, a3 & 1);
      v22 = *v8;
      v13 = sub_2149080EC(a2);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        result = sub_2149900F0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      a4();
      v13 = v21;
    }
  }

  v24 = *v8;
  if ((v19 & 1) == 0)
  {
    v24[(v13 >> 6) + 8] |= 1 << v13;
    v28 = (v24[6] + 48 * v13);
    v29 = *a2;
    v30 = a2[2];
    v28[1] = a2[1];
    v28[2] = v30;
    *v28 = v29;
    *(v24[7] + 8 * v13) = a1;
    v31 = v24[2];
    v17 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (!v17)
    {
      v24[2] = v32;
      return sub_2149091B4(a2, &v33);
    }

    goto LABEL_15;
  }

  v25 = v24[7];
  v26 = *(v25 + 8 * v13);
  *(v25 + 8 * v13) = a1;
}

uint64_t sub_214908D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_21498E040();
  v11 = result;
  if (result)
  {
    result = sub_21498E060();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_21498E050();
  sub_2149075A0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_214908DE8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_21489B70C(a3, a4);
          return sub_2149077D0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s19iCloudMailAssistant14HTTPRequestKeyV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_214990080() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  if (v5 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      sub_21489B6F8(v3, v5);
      sub_21489B6F8(v9, v8);
      sub_21489B8F0(v3, v5);
      return 1;
    }

    goto LABEL_11;
  }

  if (v8 >> 60 == 15)
  {
LABEL_11:
    sub_21489B6F8(v3, v5);
    sub_21489B6F8(v9, v8);
    sub_21489B8F0(v3, v5);
    sub_21489B8F0(v9, v8);
    return 0;
  }

  sub_21489B6F8(v3, v5);
  sub_21489B6F8(v9, v8);
  sub_21489B6F8(v3, v5);
  sub_21489B6F8(v9, v8);
  v11 = sub_214908DE8(v3, v5, v9, v8);
  sub_21489B8F0(v9, v8);
  sub_21489B8F0(v9, v8);
  sub_21489B8F0(v3, v5);
  sub_21489B8F0(v3, v5);
  return v11 & 1;
}

uint64_t sub_2149090F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_214899964;

  return sub_214906190(a1, v4, v5, v7);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21490925C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_214899138;

  return sub_214907060(a1, v4, v5, v7);
}

unint64_t sub_214909320()
{
  result = qword_27CA1BF40;
  if (!qword_27CA1BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BF40);
  }

  return result;
}

unint64_t sub_214909378()
{
  result = qword_27CA1BF48;
  if (!qword_27CA1BF48)
  {
    type metadata accessor for RequestDeduplicator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BF48);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21490942C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_214909474(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t dispatch thunk of RequestDeduplicator.performRequest(requestKey:operation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 160);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_214899964;

  return v12(a1, a2, a3);
}

{
  v8 = *(*v3 + 168);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_21490976C;

  return v12(a1, a2, a3);
}

uint64_t sub_21490976C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_2149098E4()
{
  sub_2148AA930();
  sub_21498EDD0();
  return v1;
}

uint64_t sub_214909920(void *a1)
{
  v3 = type metadata accessor for MARemoteViewOfflineView();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v33 - v8);
  v37 = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  if (swift_dynamicCast())
  {
    v11 = v35;
    v12 = v36;

    if ((v12 & 1) == 0 && !v11)
    {
      v13 = v1 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry;
      v14 = *(v1 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry);
      v15 = *(v13 + 8);
      *v9 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C090, &qword_2149999A0);
      swift_storeEnumTagMultiPayload();
      v16 = (v9 + *(v3 + 20));
      *v16 = v14;
      v16[1] = v15;
      sub_21490D884(v9, v7, type metadata accessor for MARemoteViewOfflineView);
      sub_21490D9F8(v14);
      sub_21490D27C(&qword_27CA1C098, type metadata accessor for MARemoteViewOfflineView);
      v17 = sub_21498F470();
      sub_21490DA08(v9);
      v18 = v37;
LABEL_12:

      return v17;
    }
  }

  v34 = a1;
  v19 = a1;
  sub_214899B90(0, &qword_281190CA8, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v20 = v37;
    v21 = [v37 domain];
    v22 = sub_21498F870();
    v24 = v23;

    v25 = *MEMORY[0x277CCA738];
    if (v22 == sub_21498F870() && v24 == v26)
    {
    }

    else
    {
      v27 = sub_214990080();

      if ((v27 & 1) == 0)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    if ([v20 code] == -1009)
    {
      v28 = v1 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry;
      v29 = *(v1 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry);
      v30 = *(v28 + 8);
      *v9 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C090, &qword_2149999A0);
      swift_storeEnumTagMultiPayload();
      v31 = (v9 + *(v3 + 20));
      *v31 = v29;
      v31[1] = v30;
      sub_21490D884(v9, v7, type metadata accessor for MARemoteViewOfflineView);
      sub_21490D9F8(v29);
      sub_21490D27C(&qword_27CA1C098, type metadata accessor for MARemoteViewOfflineView);
      v17 = sub_21498F470();

      sub_21490DA08(v9);
      v18 = v34;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_14:

  return 0;
}