uint64_t sub_1E4A58928(unint64_t *a1, void (*a2)(uint64_t))
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

id WKWallpaperBundle._valueType.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WKWallpaperBundle.ImplementationWrapper();
  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  a1[3] = &type metadata for WKWallpaperBundle;
  a1[4] = sub_1E4A50754();
  *a1 = v2;

  return v4;
}

unint64_t sub_1E4A589FC(uint64_t a1)
{
  result = sub_1E4A58A24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4A58A24()
{
  result = qword_1EE043FA8[0];
  if (!qword_1EE043FA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE043FA8);
  }

  return result;
}

unint64_t sub_1E4A58A7C()
{
  result = qword_1EE043060;
  if (!qword_1EE043060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043060);
  }

  return result;
}

id sub_1E4A58AD0@<X0>(uint64_t *a1@<X8>)
{
  v5 = *v1;
  type metadata accessor for WKWallpaperBundle.ImplementationWrapper();
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  a1[3] = &type metadata for WKWallpaperBundle;
  a1[4] = sub_1E4A50754();
  *a1 = v3;

  return v5;
}

unint64_t sub_1E4A58B58()
{
  result = qword_1ECF8E3E8;
  if (!qword_1ECF8E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E3E8);
  }

  return result;
}

unint64_t sub_1E4A58BAC()
{
  result = qword_1EE0434B0;
  if (!qword_1EE0434B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0434B0);
  }

  return result;
}

unint64_t sub_1E4A58C00()
{
  result = qword_1ECF8E3F8;
  if (!qword_1ECF8E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E3F8);
  }

  return result;
}

unint64_t sub_1E4A58C54()
{
  result = qword_1EE043280;
  if (!qword_1EE043280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043280);
  }

  return result;
}

unint64_t sub_1E4A58CA8()
{
  result = qword_1EE0438B8;
  if (!qword_1EE0438B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0438B8);
  }

  return result;
}

unint64_t sub_1E4A58CFC()
{
  result = qword_1EE043740;
  if (!qword_1EE043740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043740);
  }

  return result;
}

__n128 __swift_memcpy160_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1E4A58D7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 152);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4A58DC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 152) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1E4A58E58@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4AAA320();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[7];
  v73 = v1[6];
  v74 = v8;
  v75 = v1[8];
  v76 = *(v1 + 144);
  v9 = v1[3];
  v69 = v1[2];
  v70 = v9;
  v10 = v1[5];
  v71 = v1[4];
  v72 = v10;
  v11 = v1[1];
  v67 = *v1;
  v68 = v11;
  v12 = *(v1 + 19);
  v63 = &type metadata for WKWallpaperBundle;
  v64 = sub_1E4A50754();
  *&v62 = v12;
  v13 = v1[7];
  v77[6] = v1[6];
  v77[7] = v13;
  v77[8] = v1[8];
  v78 = *(v1 + 144);
  v14 = v1[3];
  v77[2] = v1[2];
  v77[3] = v14;
  v15 = v1[5];
  v77[4] = v1[4];
  v77[5] = v15;
  v16 = v1[1];
  v77[0] = *v1;
  v77[1] = v16;
  if (sub_1E4A49C60(v77) == 1)
  {
    nullsub_1(v77);
    v49 = v73;
    v50 = v74;
    v51 = v75;
    v52 = v76;
    v45 = v69;
    v46 = v70;
    v47 = v71;
    v48 = v72;
    v43 = v67;
    v44 = v68;
    v17 = nullsub_1(&v43);
    v53 = *v17;
    v18 = v17[4];
    v20 = v17[1];
    v19 = v17[2];
    v56 = v17[3];
    v57 = v18;
    v54 = v20;
    v55 = v19;
    v21 = v17[8];
    v23 = v17[5];
    v22 = v17[6];
    v60 = v17[7];
    v61 = v21;
    v58 = v23;
    v59 = v22;

    sub_1E4A59240(&v67, v35);
  }

  else
  {
    nullsub_1(v77);
    v49 = v73;
    v50 = v74;
    v51 = v75;
    v52 = v76;
    v45 = v69;
    v46 = v70;
    v47 = v71;
    v48 = v72;
    v43 = v67;
    v44 = v68;
    v24 = *nullsub_1(&v43);

    sub_1E4A59240(&v67, v35);
    sub_1E4AAAA10();
    v25 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v67);
    (*(v4 + 8))(v7, v3);
  }

  v40 = v59;
  v41 = v60;
  v42 = v61;
  v36 = v55;
  v37 = v56;
  v38 = v57;
  v39 = v58;
  v35[0] = v53;
  v35[1] = v54;
  sub_1E4A49CD0(v35);
  if (BYTE8(v36))
  {
    v26 = 3;
  }

  else
  {
    v26 = 7;
  }

  KeyPath = swift_getKeyPath();
  v66 = 0;
  *&v43 = swift_getKeyPath();
  sub_1E4A4E620(&v43);
  *&v65[103] = v49;
  *&v65[119] = v50;
  *&v65[135] = v51;
  *&v65[39] = v45;
  *&v65[55] = v46;
  *&v65[71] = v47;
  *&v65[87] = v48;
  *&v65[7] = v43;
  v65[151] = v52;
  *&v65[23] = v44;
  v28 = swift_allocObject();
  sub_1E4A2732C(&v62, v28 + 16);
  v29 = *&v65[112];
  *(a1 + 105) = *&v65[96];
  *(a1 + 121) = v29;
  *(a1 + 137) = *&v65[128];
  v30 = *&v65[48];
  *(a1 + 41) = *&v65[32];
  *(a1 + 57) = v30;
  v31 = *&v65[80];
  *(a1 + 73) = *&v65[64];
  *(a1 + 89) = v31;
  result = *v65;
  v33 = *&v65[16];
  *(a1 + 9) = *v65;
  *(v28 + 56) = v26;
  v34 = v66;
  *a1 = KeyPath;
  *(a1 + 8) = v34;
  *(a1 + 153) = *&v65[144];
  *(a1 + 25) = v33;
  *(a1 + 168) = sub_1E4A592B0;
  *(a1 + 176) = v28;
  *(a1 + 184) = 0;
  return result;
}

uint64_t sub_1E4A59240(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E700, &qword_1E4AAEE50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4A592BC()
{
  result = qword_1EE044050;
  if (!qword_1EE044050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE044050);
  }

  return result;
}

void sub_1E4A59358(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = [objc_opt_self() currentTraitCollection];
  v5 = sub_1E4AAAA70();

  *a3 = v5;
}

uint64_t sub_1E4A593CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  return sub_1E4AAA0F0();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1E4A59468@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v102 = a1;
  v96 = type metadata accessor for WKFlatWallpaperPoster();
  v3 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v93 = (v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E408, &qword_1E4AB0568);
  v5 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v95 = (v89 - v6);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E410, &qword_1E4AB0570);
  v7 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v97 = v89 - v8;
  v98 = type metadata accessor for WKStripesWallpaperPosterBackground();
  v9 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98);
  v11 = (v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E418, &qword_1E4AB0578);
  v12 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v103 = v89 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E420, &qword_1E4AB0580);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v89 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E428, &qword_1E4AB0588);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (v89 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E430, &qword_1E4AB0590);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v89 - v24;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E438, &qword_1E4AB0598);
  v26 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v28 = v89 - v27;
  v29 = *v2;
  if (sub_1E4A5A570(v29))
  {
    *&v104 = swift_getKeyPath();
    sub_1E4A4E620(&v104);
    v130[6] = v110;
    v130[7] = v111;
    v130[8] = v112;
    LOBYTE(v130[9]) = v113;
    v30 = v106;
    v130[2] = v106;
    v130[3] = v107;
    v130[4] = v108;
    v130[5] = v109;
    v130[0] = v104;
    v130[1] = v105;
    *(&v130[9] + 1) = v29;
    v31 = v111;
    v21[6] = v110;
    v21[7] = v31;
    v32 = v130[3];
    v33 = v130[4];
    v34 = v130[5];
    v21[2] = v30;
    v21[3] = v32;
    v21[4] = v33;
    v21[5] = v34;
    v35 = v130[1];
    *v21 = v130[0];
    v21[1] = v35;
    v36 = v130[9];
    v21[8] = v130[8];
    v21[9] = v36;
    swift_storeEnumTagMultiPayload();

    sub_1E4A5B228(v130, v116);
    sub_1E4A5ACB0();
    sub_1E4A5AEF4(qword_1EE0430D8, type metadata accessor for WKStripesWallpaperPosterBackground);
    sub_1E4AAA430();
    sub_1E4A52D40(v25, v17, &qword_1ECF8E430, &qword_1E4AB0590);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E440, &qword_1E4AB0600);
    sub_1E4A5ABF4();
    sub_1E4A5AD04();
    sub_1E4AAA430();
    sub_1E4A4DC88(v25, &qword_1ECF8E430, &qword_1E4AB0590);
    v37 = &qword_1ECF8E438;
    v38 = &qword_1E4AB0598;
    sub_1E4A52D40(v28, v103, &qword_1ECF8E438, &qword_1E4AB0598);
    swift_storeEnumTagMultiPayload();
    sub_1E4A5AB68();
    sub_1E4A5AE38();
    sub_1E4AAA430();
    sub_1E4A5B284(v130);
    v39 = v28;
    return sub_1E4A4DC88(v39, v37, v38);
  }

  v89[0] = v25;
  v89[1] = v22;
  v41 = v98;
  v91 = v28;
  v92 = v14;
  v90 = v17;
  if ((sub_1E4A5A670(v29) & 1) == 0)
  {
    if (sub_1E4A5A770(v29))
    {
      *&v119 = swift_getKeyPath();
      sub_1E4A4E620(&v119);
      v130[6] = v125;
      v130[7] = v126;
      v130[8] = v127;
      LOBYTE(v130[9]) = v128;
      v130[2] = v121;
      v130[3] = v122;
      v130[4] = v123;
      v130[5] = v124;
      v130[0] = v119;
      v130[1] = v120;
      type metadata accessor for WKWallpaperPosterLayerViewModel();
      sub_1E4A5AEF4(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);

      v52 = sub_1E4AAA1E0();
      LOBYTE(v104) = v53 & 1;
      v129[6] = v130[6];
      v129[7] = v130[7];
      v129[8] = v130[8];
      v129[2] = v130[2];
      v129[3] = v130[3];
      v129[4] = v130[4];
      v129[5] = v130[5];
      v129[0] = v130[0];
      v129[1] = v130[1];
      *&v129[9] = *&v130[9];
      *(&v129[9] + 1) = v52;
      LOBYTE(v129[10]) = v53 & 1;
      *(&v129[10] + 1) = v116[0];
      DWORD1(v129[10]) = *(v116 + 3);
      *(&v129[10] + 1) = v29;
      v130[9] = v129[9];
      v130[10] = v129[10];
      sub_1E4A5B0A8(v130);
      v112 = v130[8];
      v113 = v130[9];
      v114 = v130[10];
      v115 = v131;
      v108 = v130[4];
      v109 = v130[5];
      v110 = v130[6];
      v111 = v130[7];
      v104 = v130[0];
      v105 = v130[1];
      v106 = v130[2];
      v107 = v130[3];
      sub_1E4A5B0B0(v129, v116);
      sub_1E4A5AD90();
      sub_1E4A5ADE4();
      sub_1E4AAA430();
      v54 = v116[9];
      v55 = v90;
      *(v90 + 8) = v116[8];
      *(v55 + 144) = v54;
      *(v55 + 160) = v117;
      *(v55 + 176) = v118;
      v56 = v116[5];
      *(v55 + 64) = v116[4];
      *(v55 + 80) = v56;
      v57 = v116[7];
      *(v55 + 96) = v116[6];
      *(v55 + 112) = v57;
      v58 = v116[1];
      *v55 = v116[0];
      *(v55 + 16) = v58;
      v59 = v116[3];
      *(v55 + 32) = v116[2];
      *(v55 + 48) = v59;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E440, &qword_1E4AB0600);
      sub_1E4A5ABF4();
      sub_1E4A5AD04();
      v60 = v91;
      sub_1E4AAA430();
      v37 = &qword_1ECF8E438;
      v38 = &qword_1E4AB0598;
      sub_1E4A52D40(v60, v103, &qword_1ECF8E438, &qword_1E4AB0598);
      swift_storeEnumTagMultiPayload();
      sub_1E4A5AB68();
      sub_1E4A5AE38();
      sub_1E4AAA430();
      sub_1E4A5B10C(v129);
      v39 = v60;
      return sub_1E4A4DC88(v39, v37, v38);
    }

    v61 = sub_1E4A5A870(v29);
    v62 = v103;
    if (v61)
    {
      type metadata accessor for WKWallpaperPosterLayerViewModel();
      sub_1E4A5AEF4(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);

      v63 = sub_1E4AAA1E0();
      LOBYTE(v116[0]) = v64 & 1;
      *&v119 = swift_getKeyPath();
      sub_1E4A4E620(&v119);
      *(&v130[3] + 7) = v122;
      *(&v130[2] + 7) = v121;
      *(&v130[7] + 7) = v126;
      *(&v130[6] + 7) = v125;
      *(&v130[8] + 7) = v127;
      BYTE7(v130[9]) = v128;
      *(&v130[4] + 7) = v123;
      *(&v130[5] + 7) = v124;
      *(v130 + 7) = v119;
      *(&v130[1] + 7) = v120;
      *&v129[0] = v63;
      BYTE8(v129[0]) = v116[0];
      *(&v129[3] + 9) = v130[3];
      *(&v129[2] + 9) = v130[2];
      *(&v129[6] + 9) = v130[6];
      *(&v129[7] + 9) = v130[7];
      *(&v129[8] + 9) = v130[8];
      *(&v129[9] + 9) = *&v130[9];
      *(&v129[4] + 9) = v130[4];
      *(&v129[5] + 9) = v130[5];
      *(v129 + 9) = v130[0];
      *(&v129[1] + 9) = v130[1];
      *(&v129[10] + 1) = v29;
      v130[8] = v129[8];
      v130[9] = v129[9];
      v130[4] = v129[4];
      v130[5] = v129[5];
      v130[6] = v129[6];
      v130[7] = v129[7];
      v130[0] = v129[0];
      v130[1] = v129[1];
      v130[2] = v129[2];
      v130[3] = v129[3];
      v130[10] = v129[10];
      sub_1E4A5AFEC(v130);
      v112 = v130[8];
      v113 = v130[9];
      v114 = v130[10];
      v115 = v131;
      v108 = v130[4];
      v109 = v130[5];
      v110 = v130[6];
      v111 = v130[7];
      v104 = v130[0];
      v105 = v130[1];
      v106 = v130[2];
      v107 = v130[3];
      sub_1E4A5AFF8(v129, v116);
      sub_1E4A5AD90();
      sub_1E4A5ADE4();
      sub_1E4AAA430();
      v65 = v116[9];
      v66 = v90;
      *(v90 + 8) = v116[8];
      *(v66 + 144) = v65;
      *(v66 + 160) = v117;
      *(v66 + 176) = v118;
      v67 = v116[5];
      *(v66 + 64) = v116[4];
      *(v66 + 80) = v67;
      v68 = v116[7];
      *(v66 + 96) = v116[6];
      *(v66 + 112) = v68;
      v69 = v116[1];
      *v66 = v116[0];
      *(v66 + 16) = v69;
      v70 = v116[3];
      *(v66 + 32) = v116[2];
      *(v66 + 48) = v70;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E440, &qword_1E4AB0600);
      sub_1E4A5ABF4();
      sub_1E4A5AD04();
      v71 = v91;
      sub_1E4AAA430();
      v37 = &qword_1ECF8E438;
      v38 = &qword_1E4AB0598;
      sub_1E4A52D40(v71, v62, &qword_1ECF8E438, &qword_1E4AB0598);
      swift_storeEnumTagMultiPayload();
      sub_1E4A5AB68();
      sub_1E4A5AE38();
      sub_1E4AAA430();
      sub_1E4A5B054(v129);
    }

    else
    {
      if ((sub_1E4A5A970(v29) & 1) == 0)
      {
        KeyPath = swift_getKeyPath();
        v81 = v93;
        *v93 = KeyPath;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
        swift_storeEnumTagMultiPayload();
        v82 = v96;
        v83 = v81 + *(v96 + 20);
        *&v130[0] = swift_getKeyPath();
        sub_1E4A4E620(v130);
        v84 = v130[7];
        *(v83 + 96) = v130[6];
        *(v83 + 112) = v84;
        *(v83 + 128) = v130[8];
        *(v83 + 144) = v130[9];
        v85 = v130[3];
        *(v83 + 32) = v130[2];
        *(v83 + 48) = v85;
        v86 = v130[5];
        *(v83 + 64) = v130[4];
        *(v83 + 80) = v86;
        v87 = v130[1];
        *v83 = v130[0];
        *(v83 + 16) = v87;
        *(v81 + *(v82 + 24)) = v29;
        sub_1E4A5B160(v81, v95, type metadata accessor for WKFlatWallpaperPoster);
        swift_storeEnumTagMultiPayload();
        sub_1E4A5AB14();
        sub_1E4A5AEF4(&qword_1EE0433D8, type metadata accessor for WKFlatWallpaperPoster);

        v88 = v97;
        sub_1E4AAA430();
        sub_1E4A52D40(v88, v103, &qword_1ECF8E410, &qword_1E4AB0570);
        swift_storeEnumTagMultiPayload();
        sub_1E4A5AB68();
        sub_1E4A5AE38();
        sub_1E4AAA430();
        sub_1E4A4DC88(v88, &qword_1ECF8E410, &qword_1E4AB0570);
        v50 = v81;
        v51 = type metadata accessor for WKFlatWallpaperPoster;
        return sub_1E4A5B1C8(v50, v51);
      }

      type metadata accessor for WKWallpaperPosterLayerViewModel();
      sub_1E4A5AEF4(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);

      v72 = sub_1E4AAA1E0();
      LOBYTE(v129[0]) = v73 & 1;
      *&v104 = swift_getKeyPath();
      sub_1E4A4E620(&v104);
      *(&v116[3] + 7) = v107;
      *(&v116[2] + 7) = v106;
      *(&v116[7] + 7) = v111;
      *(&v116[6] + 7) = v110;
      *(&v116[8] + 7) = v112;
      BYTE7(v116[9]) = v113;
      *(&v116[4] + 7) = v108;
      *(&v116[5] + 7) = v109;
      *(v116 + 7) = v104;
      *(&v116[1] + 7) = v105;
      *&v130[0] = v72;
      BYTE8(v130[0]) = v129[0];
      *(&v130[3] + 9) = v116[3];
      *(&v130[2] + 9) = v116[2];
      *(&v130[6] + 9) = v116[6];
      *(&v130[7] + 9) = v116[7];
      *(&v130[8] + 9) = v116[8];
      *(&v130[9] + 9) = *&v116[9];
      *(&v130[4] + 9) = v116[4];
      *(&v130[5] + 9) = v116[5];
      *(v130 + 9) = v116[0];
      *(&v130[1] + 9) = v116[1];
      *(&v130[10] + 1) = v29;
      v74 = v130[9];
      v75 = v95;
      v95[8] = v130[8];
      v75[9] = v74;
      v75[10] = v130[10];
      v76 = v130[5];
      v75[4] = v130[4];
      v75[5] = v76;
      v77 = v130[7];
      v75[6] = v130[6];
      v75[7] = v77;
      v78 = v130[1];
      *v75 = v130[0];
      v75[1] = v78;
      v79 = v130[3];
      v75[2] = v130[2];
      v75[3] = v79;
      swift_storeEnumTagMultiPayload();
      sub_1E4A5AF3C(v130, v116);
      sub_1E4A5AB14();
      sub_1E4A5AEF4(&qword_1EE0433D8, type metadata accessor for WKFlatWallpaperPoster);
      v71 = v97;
      sub_1E4AAA430();
      v37 = &qword_1ECF8E410;
      v38 = &qword_1E4AB0570;
      sub_1E4A52D40(v71, v62, &qword_1ECF8E410, &qword_1E4AB0570);
      swift_storeEnumTagMultiPayload();
      sub_1E4A5AB68();
      sub_1E4A5AE38();
      sub_1E4AAA430();
      sub_1E4A5AF98(v130);
    }

    v39 = v71;
    return sub_1E4A4DC88(v39, v37, v38);
  }

  v42 = v11;
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
  swift_storeEnumTagMultiPayload();
  v43 = v11 + *(v41 + 20);
  *&v130[0] = swift_getKeyPath();
  sub_1E4A4E620(v130);
  v44 = v130[7];
  *(v43 + 6) = v130[6];
  *(v43 + 7) = v44;
  *(v43 + 8) = v130[8];
  v43[144] = v130[9];
  v45 = v130[3];
  *(v43 + 2) = v130[2];
  *(v43 + 3) = v45;
  v46 = v130[5];
  *(v43 + 4) = v130[4];
  *(v43 + 5) = v46;
  v47 = v130[1];
  *v43 = v130[0];
  *(v43 + 1) = v47;
  *(v11 + *(v41 + 24)) = v29;
  sub_1E4A5B160(v11, v21, type metadata accessor for WKStripesWallpaperPosterBackground);
  swift_storeEnumTagMultiPayload();
  sub_1E4A5ACB0();
  sub_1E4A5AEF4(qword_1EE0430D8, type metadata accessor for WKStripesWallpaperPosterBackground);

  v48 = v89[0];
  sub_1E4AAA430();
  sub_1E4A52D40(v48, v90, &qword_1ECF8E430, &qword_1E4AB0590);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E440, &qword_1E4AB0600);
  sub_1E4A5ABF4();
  sub_1E4A5AD04();
  v49 = v91;
  sub_1E4AAA430();
  sub_1E4A4DC88(v48, &qword_1ECF8E430, &qword_1E4AB0590);
  sub_1E4A52D40(v49, v103, &qword_1ECF8E438, &qword_1E4AB0598);
  swift_storeEnumTagMultiPayload();
  sub_1E4A5AB68();
  sub_1E4A5AE38();
  sub_1E4AAA430();
  sub_1E4A4DC88(v49, &qword_1ECF8E438, &qword_1E4AB0598);
  v50 = v42;
  v51 = type metadata accessor for WKStripesWallpaperPosterBackground;
  return sub_1E4A5B1C8(v50, v51);
}

uint64_t sub_1E4A5A570(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ([v1 wallpaperBackingTypeForLocation_] == 1)
  {
    result = [v1 valueBasedWallpaperForLocation_];
    if (!result)
    {
      return result;
    }

    sub_1E4A57768(v5);
    swift_unknownObjectRelease();
    sub_1E4A2732C(v5, v6);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 24))(v5, v3, v4);
    if (BYTE8(v5[0]) == 1)
    {
      sub_1E4A4EF3C(*&v5[0], BYTE8(v5[0]));
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      return 1;
    }

    sub_1E4A4EF3C(*&v5[0], BYTE8(v5[0]));
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return 0;
}

uint64_t sub_1E4A5A670(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ([v1 wallpaperBackingTypeForLocation_] == 1)
  {
    result = [v1 valueBasedWallpaperForLocation_];
    if (!result)
    {
      return result;
    }

    sub_1E4A57768(v5);
    swift_unknownObjectRelease();
    sub_1E4A2732C(v5, v6);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 24))(v5, v3, v4);
    if (BYTE8(v5[0]) == 2)
    {
      sub_1E4A4EF3C(*&v5[0], BYTE8(v5[0]));
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      return 1;
    }

    sub_1E4A4EF3C(*&v5[0], BYTE8(v5[0]));
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return 0;
}

uint64_t sub_1E4A5A770(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ([v1 wallpaperBackingTypeForLocation_] == 1)
  {
    result = [v1 valueBasedWallpaperForLocation_];
    if (!result)
    {
      return result;
    }

    sub_1E4A57768(v5);
    swift_unknownObjectRelease();
    sub_1E4A2732C(v5, v6);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 24))(v5, v3, v4);
    if (BYTE8(v5[0]) == 3)
    {
      sub_1E4A4EF3C(*&v5[0], BYTE8(v5[0]));
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      return 1;
    }

    sub_1E4A4EF3C(*&v5[0], BYTE8(v5[0]));
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return 0;
}

uint64_t sub_1E4A5A870(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ([v1 wallpaperBackingTypeForLocation_] == 1)
  {
    result = [v1 valueBasedWallpaperForLocation_];
    if (!result)
    {
      return result;
    }

    sub_1E4A57768(v5);
    swift_unknownObjectRelease();
    sub_1E4A2732C(v5, v6);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 24))(v5, v3, v4);
    if (BYTE8(v5[0]) == 5)
    {
      sub_1E4A4EF3C(*&v5[0], BYTE8(v5[0]));
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      return 1;
    }

    sub_1E4A4EF3C(*&v5[0], BYTE8(v5[0]));
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return 0;
}

uint64_t sub_1E4A5A970(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ([v1 wallpaperBackingTypeForLocation_] == 1)
  {
    result = [v1 valueBasedWallpaperForLocation_];
    if (!result)
    {
      return result;
    }

    sub_1E4A57768(v5);
    swift_unknownObjectRelease();
    sub_1E4A2732C(v5, v6);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 24))(v5, v3, v4);
    if (BYTE8(v5[0]) == 6)
    {
      sub_1E4A4EF3C(*&v5[0], BYTE8(v5[0]));
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      return 1;
    }

    sub_1E4A4EF3C(*&v5[0], BYTE8(v5[0]));
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return 0;
}

uint64_t sub_1E4A5AA70@<X0>(uint64_t a1@<X8>)
{
  v7 = *v1;
  sub_1E4A59468(a1);
  v3 = sub_1E4AAA290();
  v4 = sub_1E4AAA4F0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E400, &qword_1E4AB0560);
  v6 = a1 + *(result + 36);
  *v6 = v3;
  *(v6 + 8) = v4;
  return result;
}

unint64_t sub_1E4A5AB14()
{
  result = qword_1EE0424D8;
  if (!qword_1EE0424D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0424D8);
  }

  return result;
}

unint64_t sub_1E4A5AB68()
{
  result = qword_1EE0422D0;
  if (!qword_1EE0422D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E438, &qword_1E4AB0598);
    sub_1E4A5ABF4();
    sub_1E4A5AD04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0422D0);
  }

  return result;
}

unint64_t sub_1E4A5ABF4()
{
  result = qword_1EE042340;
  if (!qword_1EE042340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E430, &qword_1E4AB0590);
    sub_1E4A5ACB0();
    sub_1E4A5AEF4(qword_1EE0430D8, type metadata accessor for WKStripesWallpaperPosterBackground);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042340);
  }

  return result;
}

unint64_t sub_1E4A5ACB0()
{
  result = qword_1EE0438A0;
  if (!qword_1EE0438A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0438A0);
  }

  return result;
}

unint64_t sub_1E4A5AD04()
{
  result = qword_1EE042320;
  if (!qword_1EE042320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E440, &qword_1E4AB0600);
    sub_1E4A5AD90();
    sub_1E4A5ADE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042320);
  }

  return result;
}

unint64_t sub_1E4A5AD90()
{
  result = qword_1EE0431D0;
  if (!qword_1EE0431D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0431D0);
  }

  return result;
}

unint64_t sub_1E4A5ADE4()
{
  result = qword_1EE043498;
  if (!qword_1EE043498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043498);
  }

  return result;
}

unint64_t sub_1E4A5AE38()
{
  result = qword_1EE0422F8;
  if (!qword_1EE0422F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E410, &qword_1E4AB0570);
    sub_1E4A5AB14();
    sub_1E4A5AEF4(&qword_1EE0433D8, type metadata accessor for WKFlatWallpaperPoster);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0422F8);
  }

  return result;
}

uint64_t sub_1E4A5AEF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4A5B160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4A5B1C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4A5B2D8()
{
  result = qword_1EE0423E8;
  if (!qword_1EE0423E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E400, &qword_1E4AB0560);
    sub_1E4A5B364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423E8);
  }

  return result;
}

unint64_t sub_1E4A5B364()
{
  result = qword_1EE0422B0;
  if (!qword_1EE0422B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E448, &qword_1E4AB0608);
    sub_1E4A5AB68();
    sub_1E4A5AE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0422B0);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E4A5B404(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E4A5B458(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

double sub_1E4A5B4F8@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = *(v5 + 16) * 3.14159265 / 180.0;
  sub_1E4AAA530();
  tan(v11);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetWidth(v21);
  v12 = *(v5 + 24);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  v13 = v12 * CGRectGetHeight(v22);
  v14 = *(v5 + 32);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  v15 = v14 * CGRectGetHeight(v23);
  *(v5 + 8);
  v16 = v13 + v15 * *v5;
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetMinX(v24);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMinX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMaxX(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  CGRectGetMaxX(v27);
  sub_1E4AAA510();
  sub_1E4AAA520();
  sub_1E4AAA520();
  sub_1E4AAA520();
  sub_1E4AAA520();
  sub_1E4AAA500();
  result = *&v18;
  *a1 = v18;
  *(a1 + 16) = v19;
  *(a1 + 32) = v20;
  return result;
}

double sub_1E4A5B6DC@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1E4A5B4F8(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

__n128 sub_1E4A5B740@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

__n128 sub_1E4A5B74C(__n128 *a1)
{
  result = *a1;
  *(v1 + 24) = *a1;
  return result;
}

__n128 (*sub_1E4A5B758(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 24);
  return sub_1E4A5B784;
}

__n128 sub_1E4A5B784(__n128 *a1)
{
  result = *a1;
  *(a1[1].n128_u64[0] + 24) = *a1;
  return result;
}

unint64_t sub_1E4A5B79C()
{
  result = qword_1EE043020;
  if (!qword_1EE043020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043020);
  }

  return result;
}

uint64_t sub_1E4A5B838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4A5B94C();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1E4A5B89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4A5B94C();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1E4A5B900(uint64_t a1)
{
  v2 = sub_1E4A5B94C();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_1E4A5B94C()
{
  result = qword_1EE043010;
  if (!qword_1EE043010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043010);
  }

  return result;
}

double sub_1E4A5B9CC@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4AAA320();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[7];
  v73 = v1[6];
  v74 = v8;
  v75 = v1[8];
  v76 = *(v1 + 144);
  v9 = v1[3];
  v69 = v1[2];
  v70 = v9;
  v10 = v1[5];
  v71 = v1[4];
  v72 = v10;
  v11 = v1[1];
  v67 = *v1;
  v68 = v11;
  v12 = *(v1 + 19);
  v63 = &type metadata for WKWallpaperBundle;
  v64 = sub_1E4A50754();
  *&v62 = v12;
  v13 = v1[7];
  v77[6] = v1[6];
  v77[7] = v13;
  v77[8] = v1[8];
  v78 = *(v1 + 144);
  v14 = v1[3];
  v77[2] = v1[2];
  v77[3] = v14;
  v15 = v1[5];
  v77[4] = v1[4];
  v77[5] = v15;
  v16 = v1[1];
  v77[0] = *v1;
  v77[1] = v16;
  if (sub_1E4A49C60(v77) == 1)
  {
    nullsub_1(v77);
    v49 = v73;
    v50 = v74;
    v51 = v75;
    v52 = v76;
    v45 = v69;
    v46 = v70;
    v47 = v71;
    v48 = v72;
    v43 = v67;
    v44 = v68;
    v17 = nullsub_1(&v43);
    v53 = *v17;
    v18 = v17[4];
    v20 = v17[1];
    v19 = v17[2];
    v56 = v17[3];
    v57 = v18;
    v54 = v20;
    v55 = v19;
    v21 = v17[8];
    v23 = v17[5];
    v22 = v17[6];
    v60 = v17[7];
    v61 = v21;
    v58 = v23;
    v59 = v22;

    sub_1E4A59240(&v67, v35);
  }

  else
  {
    nullsub_1(v77);
    v49 = v73;
    v50 = v74;
    v51 = v75;
    v52 = v76;
    v45 = v69;
    v46 = v70;
    v47 = v71;
    v48 = v72;
    v43 = v67;
    v44 = v68;
    v24 = *nullsub_1(&v43);

    sub_1E4A59240(&v67, v35);
    sub_1E4AAAA10();
    v25 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v67);
    (*(v4 + 8))(v7, v3);
  }

  v40 = v59;
  v41 = v60;
  v42 = v61;
  v36 = v55;
  v37 = v56;
  v38 = v57;
  v39 = v58;
  v35[0] = v53;
  v35[1] = v54;
  sub_1E4A49CD0(v35);
  if (BYTE8(v36))
  {
    v26 = 2;
  }

  else
  {
    v26 = 6;
  }

  KeyPath = swift_getKeyPath();
  v66 = 0;
  *&v43 = swift_getKeyPath();
  sub_1E4A4E620(&v43);
  *&v65[103] = v49;
  *&v65[119] = v50;
  *&v65[135] = v51;
  *&v65[39] = v45;
  *&v65[55] = v46;
  *&v65[71] = v47;
  *&v65[87] = v48;
  *&v65[7] = v43;
  v65[151] = v52;
  *&v65[23] = v44;
  v28 = swift_allocObject();
  sub_1E4A2732C(&v62, v28 + 16);
  v29 = *&v65[112];
  *(a1 + 105) = *&v65[96];
  *(a1 + 121) = v29;
  *(a1 + 137) = *&v65[128];
  v30 = *&v65[48];
  *(a1 + 41) = *&v65[32];
  *(a1 + 57) = v30;
  v31 = *&v65[80];
  *(a1 + 73) = *&v65[64];
  *(a1 + 89) = v31;
  result = *v65;
  v33 = *&v65[16];
  *(a1 + 9) = *v65;
  *(v28 + 56) = v26;
  v34 = v66;
  *a1 = KeyPath;
  *(a1 + 8) = v34;
  *(a1 + 153) = *&v65[144];
  *(a1 + 25) = v33;
  *(a1 + 168) = sub_1E4A592B0;
  *(a1 + 176) = v28;
  *(a1 + 184) = 0;
  return result;
}

void *sub_1E4A5BDB4(void *result)
{
  v2 = OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_views;
  v3 = *(v1 + OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_views);
  *(v1 + OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_views) = result;
  if (!v3)
  {
    if (!result)
    {
      return result;
    }

    v4 = *(v1 + OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_wallpaperPosterLayerViewModel);
    v5 = [swift_unknownObjectRetain() backgroundView];
    result = *(v1 + v2);
    if (result)
    {
      v6 = [result foregroundView];
      result = *(v1 + v2);
      if (result)
      {
        v7 = [result floatingView];
        sub_1E4A524E8(v4, v5, v6, v7);

        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_6:

  return swift_unknownObjectRelease();
}

uint64_t getEnumTagSinglePayload for WKPosterEnvironmentOverrides(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t sub_1E4A5C008()
{
  if (*v0)
  {
    result = 1802658148;
  }

  else
  {
    result = 0x746867696CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1E4A5C038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746867696CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1E4AAADA0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1802658148 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4AAADA0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E4A5C128(uint64_t a1)
{
  v2 = sub_1E4A5D208();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4A5C164(uint64_t a1)
{
  v2 = sub_1E4A5D208();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4A5C1A0(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E4B8, &qword_1E4AB0B58);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E4C0, &qword_1E4AB0B60);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E4C8, &qword_1E4AB0B68);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4A5D208();
  sub_1E4AAAE60();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_1E4A5D25C();
    sub_1E4AAAD70();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_1E4A5D2B0();
    sub_1E4AAAD70();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

uint64_t sub_1E4A5C468(uint64_t a1)
{
  v2 = sub_1E4A5D25C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4A5C4A4(uint64_t a1)
{
  v2 = sub_1E4A5D25C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4A5C4E0(uint64_t a1)
{
  v2 = sub_1E4A5D2B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4A5C51C(uint64_t a1)
{
  v2 = sub_1E4A5D2B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4A5C558@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E4A5C9B8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1E4A5C5A4(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E470, &qword_1E4AB0960);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4A5C910();
  sub_1E4AAAE60();
  v11[15] = a2;
  sub_1E4A5C964();
  sub_1E4AAAD80();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1E4A5C6F4()
{
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](0);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A5C760()
{
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](0);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A5C7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001E4AB8B10 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E4AAADA0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1E4A5C850(uint64_t a1)
{
  v2 = sub_1E4A5C910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4A5C88C(uint64_t a1)
{
  v2 = sub_1E4A5C910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1E4A5C8C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E4A5CDF4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1E4A5C910()
{
  result = qword_1ECF8E478;
  if (!qword_1ECF8E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E478);
  }

  return result;
}

unint64_t sub_1E4A5C964()
{
  result = qword_1ECF8E480;
  if (!qword_1ECF8E480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E480);
  }

  return result;
}

uint64_t sub_1E4A5C9B8(uint64_t *a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E4E8, &qword_1E4AB0B70);
  v27 = *(v29 - 8);
  v2 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v4 = v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E4F0, &qword_1E4AB0B78);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E4F8, &qword_1E4AB0B80);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4A5D208();
  v14 = v31;
  sub_1E4AAAE50();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = v5;
  v31 = a1;
  v16 = v28;
  v15 = v29;
  v17 = v12;
  v18 = sub_1E4AAAD60();
  if (*(v18 + 16) != 1)
  {
    v20 = sub_1E4AAABF0();
    swift_allocError();
    v22 = v21;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E500, &qword_1E4AB0B88) + 48);
    *v22 = &type metadata for WKPosterEnvironmentOverrides.DeviceAppearanceStyle;
    sub_1E4AAAD40();
    sub_1E4AAABE0();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v30 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v31;
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25[1] = v18;
  v32 = *(v18 + 32);
  if (v32)
  {
    v34 = 1;
    sub_1E4A5D25C();
    sub_1E4AAAD30();
    v19 = v30;
    (*(v27 + 8))(v4, v15);
  }

  else
  {
    v33 = 0;
    sub_1E4A5D2B0();
    sub_1E4AAAD30();
    v19 = v30;
    (*(v16 + 8))(v8, v26);
  }

  (*(v19 + 8))(v12, v9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return v32;
}

void *sub_1E4A5CDF4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E488, &qword_1E4AB0968);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4A5C910();
  sub_1E4AAAE50();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    sub_1E4A5CF64();
    sub_1E4AAAD50();
    (*(v4 + 8))(v7, v3);
    v9 = v11[15];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v9;
}

unint64_t sub_1E4A5CF64()
{
  result = qword_1ECF8E490;
  if (!qword_1ECF8E490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E490);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WKPosterEnvironmentOverrides.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WKPosterEnvironmentOverrides.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1E4A5D0AC()
{
  result = qword_1ECF8E498;
  if (!qword_1ECF8E498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E498);
  }

  return result;
}

unint64_t sub_1E4A5D104()
{
  result = qword_1ECF8E4A0;
  if (!qword_1ECF8E4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E4A0);
  }

  return result;
}

unint64_t sub_1E4A5D15C()
{
  result = qword_1ECF8E4A8;
  if (!qword_1ECF8E4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E4A8);
  }

  return result;
}

unint64_t sub_1E4A5D1B4()
{
  result = qword_1ECF8E4B0;
  if (!qword_1ECF8E4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E4B0);
  }

  return result;
}

unint64_t sub_1E4A5D208()
{
  result = qword_1ECF8E4D0;
  if (!qword_1ECF8E4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E4D0);
  }

  return result;
}

unint64_t sub_1E4A5D25C()
{
  result = qword_1ECF8E4D8;
  if (!qword_1ECF8E4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E4D8);
  }

  return result;
}

unint64_t sub_1E4A5D2B0()
{
  result = qword_1ECF8E4E0;
  if (!qword_1ECF8E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E4E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WKPosterEnvironmentSnapshot.PosterEnvironmentMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

uint64_t storeEnumTagSinglePayload for WKPosterEnvironmentSnapshot.PosterEnvironmentMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E4A5D478()
{
  result = qword_1ECF8E508;
  if (!qword_1ECF8E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E508);
  }

  return result;
}

unint64_t sub_1E4A5D4D0()
{
  result = qword_1ECF8E510;
  if (!qword_1ECF8E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E510);
  }

  return result;
}

unint64_t sub_1E4A5D528()
{
  result = qword_1ECF8E518;
  if (!qword_1ECF8E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E518);
  }

  return result;
}

unint64_t sub_1E4A5D580()
{
  result = qword_1ECF8E520;
  if (!qword_1ECF8E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E520);
  }

  return result;
}

unint64_t sub_1E4A5D5D8()
{
  result = qword_1ECF8E528;
  if (!qword_1ECF8E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E528);
  }

  return result;
}

unint64_t sub_1E4A5D630()
{
  result = qword_1ECF8E530;
  if (!qword_1ECF8E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E530);
  }

  return result;
}

unint64_t sub_1E4A5D688()
{
  result = qword_1ECF8E538;
  if (!qword_1ECF8E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E538);
  }

  return result;
}

uint64_t sub_1E4A5D704()
{
  v0 = [objc_opt_self() defaultManager];
  type metadata accessor for WKWallpaperBundleDownloadManager();
  v1 = swift_allocObject();
  type metadata accessor for WKWallpaperBundleDownloadManager.ImplementationWrapper();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v1 + 16) = v2;
  return v1;
}

id sub_1E4A5D7BC()
{
  v1 = [*(*(v0 + 16) + 16) assetDownloadIdentifier];

  return v1;
}

id sub_1E4A5D7F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*(*a1 + 16) + 16) delegate];
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E4A5D844()
{
  result = [*(*(v0 + 16) + 16) delegate];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4A5D87C(uint64_t a1)
{
  [*(*(v1 + 16) + 16) setDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t (*sub_1E4A5D8C8(void *a1))(void *a1)
{
  a1[1] = v1;
  result = [*(*(v1 + 16) + 16) delegate];
  if (result)
  {
    *a1 = result;
    return sub_1E4A5D930;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4A5D930(void *a1)
{
  [*(*(a1[1] + 16) + 16) setDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t WKWallpaperBundleDownloadManager.__allocating_init(assetDownloadIdentifier:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = [objc_allocWithZone(WKWallpaperBundleDownloadManager) initWithAssetDownloadIdentifier_];

  type metadata accessor for WKWallpaperBundleDownloadManager.ImplementationWrapper();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v2 + 16) = v4;
  return v2;
}

uint64_t WKWallpaperBundleDownloadManager.init(assetDownloadIdentifier:)(void *a1)
{
  v3 = [objc_allocWithZone(WKWallpaperBundleDownloadManager) initWithAssetDownloadIdentifier_];

  type metadata accessor for WKWallpaperBundleDownloadManager.ImplementationWrapper();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v1 + 16) = v4;
  return v1;
}

uint64_t sub_1E4A5DA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4A5DA84, 0, 0);
}

uint64_t sub_1E4A5DA84()
{
  sub_1E4A4D9A0(*(v0 + 248), v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E540, &unk_1E4AB3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8EB40, qword_1E4AB0E10);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 264);
    v12 = *(v0 + 256);
    sub_1E4A2732C((v0 + 184), v0 + 144);
    v2 = *(*(v1 + 16) + 16);
    *(v0 + 272) = v2;
    v3 = *(v0 + 168);
    v4 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v3);
    v5 = *(v4 + 8);
    v6 = v2;
    v7 = v5(v3, v4);
    *(v0 + 280) = v7;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 224;
    *(v0 + 24) = sub_1E4A5DD20;
    v8 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E560, &qword_1E4AB3EE0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1E4A5E084;
    *(v0 + 104) = &block_descriptor;
    *(v0 + 112) = v8;
    [v6 downloadWallpaperRepresentingIfNeeded:v7 progress:v12 withCompletion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    *(v0 + 216) = 0;
    *(v0 + 200) = 0u;
    *(v0 + 184) = 0u;
    sub_1E4A4DC88(v0 + 184, &unk_1ECF8E550, &qword_1E4AB3ED0);
    type metadata accessor for WKWallpaperKitError(0);
    *(v0 + 144) = -10005;
    sub_1E4A55FB0(MEMORY[0x1E69E7CC0]);
    sub_1E4A560C0();
    sub_1E4AA9F50();
    v9 = *(v0 + 80);
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1E4A5DD20()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_1E4A5E000;
  }

  else
  {
    v3 = sub_1E4A5DE30;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4A5DE30()
{
  *(v0 + 232) = *(v0 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E570, &qword_1E4AB0E38);
  v1 = swift_dynamicCast();
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  if (v1)
  {
    v4 = *(v0 + 240);
    sub_1E4A2732C((v0 + 80), v0 + 184);

    swift_unknownObjectRelease();
    v5 = *(v0 + 208);
    v6 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v5);
    (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  }

  else
  {
    *(v0 + 112) = 0;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    sub_1E4A4DC88(v0 + 80, &unk_1ECF8EB30, &unk_1E4AB0E40);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
    type metadata accessor for WKWallpaperKitError(0);
    *(v0 + 144) = -10005;
    sub_1E4A55FB0(MEMORY[0x1E69E7CC0]);
    sub_1E4A560C0();
    sub_1E4AA9F50();
    v8 = *(v0 + 80);
    swift_willThrow();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E4A5E000()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  swift_willThrow();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  v4 = v0[36];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E4A5E084(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E590, &qword_1E4AB0EE8);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

void sub_1E4A5E160(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 16) + 16);
  v4 = sub_1E4AAA870();
  v5 = sub_1E4AAA870();
  v6 = [v3 localWallpaperRepresentingWithIdentifier:v4 wallpaperName:v5];

  if (v6)
  {
    v11 = v6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E570, &qword_1E4AB0E38);
    if (swift_dynamicCast())
    {
      sub_1E4A2732C(v9, v12);
      v7 = v13;
      v8 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v8 + 8))(v7, v8);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }

    else
    {
      v10 = 0;
      memset(v9, 0, sizeof(v9));
      sub_1E4A4DC88(v9, &unk_1ECF8EB30, &unk_1E4AB0E40);
      sub_1E4AAACB0();
      __break(1u);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

uint64_t sub_1E4A5E320(uint64_t a1)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E4A5E340, 0, 0);
}

uint64_t sub_1E4A5E340()
{
  sub_1E4A4D9A0(*(v0 + 224), v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E540, &unk_1E4AB3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8EB40, qword_1E4AB0E10);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 232);
    sub_1E4A2732C((v0 + 184), v0 + 144);
    v2 = *(*(v1 + 16) + 16);
    *(v0 + 240) = v2;
    v3 = *(v0 + 168);
    v4 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v3);
    v5 = *(v4 + 8);
    v6 = v2;
    v7 = v5(v3, v4);
    *(v0 + 248) = v7;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1E4A5E618;
    v8 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E580, &qword_1E4AB0E50);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1E4A5E820;
    *(v0 + 104) = &block_descriptor_4;
    *(v0 + 112) = v8;
    [v6 cancelDownloadForWallpaperRepresenting:v7 withCompletion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v9 = *(v0 + 224);
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0;
    sub_1E4A4DC88(v0 + 184, &unk_1ECF8E550, &qword_1E4AB3ED0);
    sub_1E4AAABC0();

    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    swift_getDynamicType();
    v10 = sub_1E4AAAE90();
    MEMORY[0x1E691ECA0](v10);

    MEMORY[0x1E691ECA0](33, 0xE100000000000000);
    return sub_1E4AAACB0();
  }
}

uint64_t sub_1E4A5E618()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_1E4A5E79C;
  }

  else
  {
    v3 = sub_1E4A5E728;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4A5E728()
{
  v1 = *(v0 + 248);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E4A5E79C()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  swift_willThrow();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  v4 = v0[1];
  v5 = v0[32];

  return v4();
}

uint64_t sub_1E4A5E820(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E590, &qword_1E4AB0EE8);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t WKWallpaperBundleDownloadManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t WKWallpaperBundleDownloadManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of WKWallpaperBundleDownloadManager.downloadWallpaperRepresentingIfNeeded(_:progress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 144);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E4A5ED9C;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of WKWallpaperBundleDownloadManager.cancelDownload(for:)(uint64_t a1)
{
  v4 = *(*v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E4A5ECA0;

  return v8(a1);
}

uint64_t sub_1E4A5ECA0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t WKLayeredStripeWallpaper.wallpaperValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKLayeredStripeWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 2;
  return result;
}

uint64_t WKLayeredStripeWallpaper.thumbnailImageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) thumbnailImageURL];
  if (v3)
  {
    v4 = v3;
    sub_1E4AA9FC0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E4AA9FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id WKLayeredStripeWallpaper.thumbnailImage.getter()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

uint64_t WKLayeredStripeWallpaper.init(identifier:name:backgroundColor:stripeAngleDegrees:stripeHeightFactor:firstStripeOffsetScaleFactor:)@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v12 = objc_allocWithZone(WKLayeredStripeWallpaper);
  v13 = sub_1E4AAA870();

  v14 = [v12 initWithIdentifier:a1 name:v13 backgroundColor:a2 stripeAngleDegrees:a4 stripeHeightFactor:a5 firstStripeOffsetScaleFactor:a6];

  type metadata accessor for WKLayeredStripeWallpaper.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v14;
  *a3 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall WKLayeredStripeWallpaper.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

id WKLayeredStripeWallpaper.copyWallpaperContents(to:)()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 16);
  v2 = sub_1E4AA9FA0();
  v7[0] = 0;
  v3 = [v1 copyWallpaperContentsToDestinationDirectoryURL:v2 error:v7];

  if (v3)
  {
    result = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1E4AA9F60();

    result = swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E4A5F1D8@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKLayeredStripeWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 2;
  return result;
}

uint64_t WKLayeredStripeWallpaper.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKLayeredStripeWallpaper.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

unint64_t sub_1E4A5F340(uint64_t a1)
{
  result = sub_1E4A5F368();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4A5F368()
{
  result = qword_1EE043750;
  if (!qword_1EE043750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043750);
  }

  return result;
}

uint64_t WKLayeredThumbnailWallpaper.wallpaperValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKLayeredThumbnailWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t WKLayeredThumbnailWallpaper.thumbnailImageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) thumbnailImageURL];
  if (v3)
  {
    v4 = v3;
    sub_1E4AA9FC0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E4AA9FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id WKLayeredThumbnailWallpaper.thumbnailImage.getter()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

uint64_t WKLayeredThumbnailWallpaper.init(identifier:name:type:representedType:backgroundThumbnailImageURL:foregroundThumbnailImageURL:floatingThumbnailImageURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>)
{
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v37 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v30 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  v36 = a4;
  sub_1E4A48054(a4, &v30 - v18);
  v35 = a5;
  sub_1E4A48054(a5, v17);
  v34 = a6;
  sub_1E4A48054(a6, v14);
  v20 = sub_1E4AAA870();

  v21 = sub_1E4AA9FE0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = 0;
  if (v23(v19, 1, v21) != 1)
  {
    v24 = sub_1E4AA9FA0();
    (*(v22 + 8))(v19, v21);
  }

  if (v23(v17, 1, v21) == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_1E4AA9FA0();
    (*(v22 + 8))(v17, v21);
  }

  if (v23(v14, 1, v21) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_1E4AA9FA0();
    (*(v22 + 8))(v14, v21);
  }

  v27 = objc_allocWithZone(WKLayeredThumbnailWallpaper);
  v28 = [v27 initWithIdentifier:v31 name:v20 type:v32 representedType:v33 backgroundThumbnailImageURL:v24 foregroundThumbnailImageURL:v25 floatingThumbnailImageURL:v26];

  sub_1E4A480C4(v34);
  sub_1E4A480C4(v35);
  sub_1E4A480C4(v36);
  type metadata accessor for WKLayeredThumbnailWallpaper.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v28;
  *v37 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall WKLayeredThumbnailWallpaper.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

id WKLayeredThumbnailWallpaper.copyWallpaperContents(to:)()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 16);
  v2 = sub_1E4AA9FA0();
  v7[0] = 0;
  v3 = [v1 copyWallpaperContentsToDestinationDirectoryURL:v2 error:v7];

  if (v3)
  {
    result = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1E4AA9F60();

    result = swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E4A5FA70@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKLayeredThumbnailWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t WKLayeredThumbnailWallpaper.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKLayeredThumbnailWallpaper.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

unint64_t sub_1E4A5FBD4(uint64_t a1)
{
  result = sub_1E4A5FBFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4A5FBFC()
{
  result = qword_1ECF8E5A0;
  if (!qword_1ECF8E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E5A0);
  }

  return result;
}

uint64_t sub_1E4A5FD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v134 = a3;
  v7 = sub_1E4AA9F70();
  v133 = *(v7 - 8);
  v8 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E4AA9FE0();
  v131 = *(v11 - 8);
  v12 = *(v131 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v121 - v16;
  result = (*(a2 + 48))(a1, a2);
  if (v4)
  {
    return result;
  }

  v19 = result;
  v125 = v15;
  v126 = a1;
  v127 = v3;
  v128 = a2;
  v143 = v10;
  v20 = v134;
  v130 = 0;
  v21 = sub_1E4AA9EB0();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v129 = sub_1E4AA9EA0();
  v136 = 0xD00000000000001ALL;
  v137 = 0x80000001E4AB8DD0;
  sub_1E4AAAB90();
  v24 = *(v19 + 16);
  v132 = v19;
  v25 = v19;
  v123 = v11;
  if (!v24 || (v26 = sub_1E4A8F330(&v138), (v27 & 1) == 0))
  {
    sub_1E4A60E2C(&v138);
    v124 = 3;
    v28 = v20;
    v35 = v7;
    v29 = v17;
LABEL_8:
    v33 = v143;
    goto LABEL_9;
  }

  sub_1E4A479C0(*(v19 + 56) + 32 * v26, &v141);
  sub_1E4A60E2C(&v138);
  v28 = v20;
  v29 = v17;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v124 = 3;
    v35 = v7;
    goto LABEL_8;
  }

  v30 = v136;
  v31 = v137;
  sub_1E4A60EE8();
  v32 = v130;
  sub_1E4AA9E90();
  v33 = v143;
  if (v32)
  {

    sub_1E4A60F3C(v30, v31);
    v130 = 0;
    v34 = 3;
  }

  else
  {
    v130 = 0;
    sub_1E4A60F3C(v30, v31);
    v34 = v138;
  }

  v124 = v34;
  v28 = v134;
  v25 = v132;
  v35 = v7;
LABEL_9:
  v141 = 0xD00000000000001DLL;
  v142 = 0x80000001E4AB8DF0;
  sub_1E4AAAB90();
  v36 = v133;
  if (*(v25 + 16) && (v37 = sub_1E4A8F330(&v138), (v38 & 1) != 0))
  {
    sub_1E4A479C0(*(v25 + 56) + 32 * v37, &v141);
    sub_1E4A60E2C(&v138);
    v39 = swift_dynamicCast();
    v40 = v136;
    if (!v39)
    {
      v40 = 0;
    }

    v122 = v40;
    if (v39)
    {
      v41 = v137;
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    sub_1E4A60E2C(&v138);
    v122 = 0;
    v41 = 0;
  }

  v141 = 0xD00000000000001FLL;
  v142 = 0x80000001E4AB8E10;
  sub_1E4AAAB90();
  v42 = v132;
  if (*(v132 + 16) && (v43 = sub_1E4A8F330(&v138), (v44 & 1) != 0))
  {
    sub_1E4A479C0(*(v42 + 56) + 32 * v43, &v141);
    sub_1E4A60E2C(&v138);
    v45 = swift_dynamicCast();
    v46 = v136;
    if (!v45)
    {
      v46 = 0;
    }

    v135 = v46;
    if (v45)
    {
      v47 = v137;
    }

    else
    {
      v47 = 0;
    }

    v143 = v47;
  }

  else
  {
    sub_1E4A60E2C(&v138);
    v135 = 0;
    v143 = 0;
  }

  v48 = v125;
  if (!v41)
  {
    goto LABEL_41;
  }

  (*(v128 + 40))(v126);
  *&v138 = v122;
  *(&v138 + 1) = v41;
  (*(v36 + 104))(v33, *MEMORY[0x1E6968F58], v35);
  sub_1E4A5575C();
  sub_1E4AA9FD0();
  (*(v36 + 8))(v33, v35);
  v49 = v29;
  v36 = v28;
  v50 = *(v131 + 8);
  v51 = v123;
  v50(v48, v123);

  v52 = objc_allocWithZone(WKWallpaperBundle);
  v53 = sub_1E4AA9FA0();
  v54 = [v52 initWithURL_];

  v50(v49, v51);
  v28 = v36;
  if (!v54)
  {
LABEL_41:
    if (v143)
    {
      v75 = [objc_opt_self() defaultManager];
      type metadata accessor for WKWallpaperRepresentingCollectionsManager();
      inited = swift_initStackObject();
      type metadata accessor for WKWallpaperRepresentingCollectionsManager.ImplementationWrapper();
      v77 = swift_initStackObject();
      *(v77 + 16) = v75;
      v133 = v77;
      *(inited + 16) = v77;
      v56 = &selRef_currentDevice;
      if ([v75 numberOfWallpaperCollections])
      {
        v131 = inited;
        v78 = 0;
        v28 = &selRef_currentDevice;
        while (1)
        {
          v79 = [v75 wallpaperCollectionAtIndex_];
          type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
          v80 = swift_initStackObject();
          *(v80 + 16) = v79;
          if (v78 >= [v75 numberOfWallpaperCollections])
          {
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v81 = v79;
          v82 = sub_1E4AAA870();
          LOBYTE(v36) = [v81 containsWallpaperRepresentingWithIdentifier_];

          if (v36)
          {
            break;
          }

          if (++v78 == [v75 numberOfWallpaperCollections])
          {
            goto LABEL_47;
          }
        }

        v141 = v80;
        WKWallpaperRepresentingCollection.subscript.getter();
        v56 = v132;
        if (!*(&v139 + 1))
        {

          sub_1E4A60E80(&v138);
          v28 = v134;
          goto LABEL_49;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E540, &unk_1E4AB3EC0);
        v112 = swift_dynamicCast();
        v113 = v134;
        LOBYTE(v36) = v124;
        if ((v112 & 1) == 0)
        {

          v28 = v113;
          goto LABEL_50;
        }

        v133 = v136;
        if (qword_1EE0424D0 != -1)
        {
          swift_once();
        }

        v114 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v114, qword_1EE048BA0);
        v115 = v143;

        v116 = sub_1E4AAA0C0();
        v117 = sub_1E4AAAA20();

        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          *&v138 = v119;
          *v118 = 136446210;
          v120 = sub_1E4A85938(v135, v115, &v138);

          *(v118 + 4) = v120;
          _os_log_impl(&dword_1E4A23000, v116, v117, "Loaded wallpaper bundle via identifier '%{public}s'.", v118, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v119);
          MEMORY[0x1E691FE80](v119, -1, -1);
          MEMORY[0x1E691FE80](v118, -1, -1);
        }

        else
        {
        }

        result = v133;
        v56 = v132;
        v28 = v113;
        goto LABEL_56;
      }

LABEL_47:

      v28 = v134;
    }

    v56 = v132;
LABEL_49:
    LOBYTE(v36) = v124;
LABEL_50:
    if (qword_1EE0424D0 != -1)
    {
LABEL_88:
      swift_once();
    }

    v83 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v83, qword_1EE048BA0);
    v84 = sub_1E4AAA0C0();
    v85 = sub_1E4AAAA20();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_1E4A23000, v84, v85, "Loading default wallpaper.", v86, 2u);
      v87 = v86;
      v56 = v132;
      MEMORY[0x1E691FE80](v87, -1, -1);
    }

    v88 = [objc_opt_self() defaultWallpaperManager];
    v89 = [v88 defaultWallpaperBundle];

    type metadata accessor for WKWallpaperBundle.ImplementationWrapper();
    result = swift_allocObject();
    *(result + 16) = v89;
    goto LABEL_56;
  }

  type metadata accessor for WKWallpaperBundle.ImplementationWrapper();
  v36 = swift_allocObject();
  *(v36 + 16) = v54;
  v55 = [objc_allocWithZone(WKWallpaperRepresentingCollectionsManager) initWithDownloadManager_];
  type metadata accessor for WKWallpaperRepresentingCollectionsManager.ImplementationWrapper();
  v143 = swift_initStackObject();
  *(v143 + 16) = v55;
  if ([v55 numberOfWallpaperCollections])
  {
    v56 = 0;
    while (1)
    {
      v57 = [v55 wallpaperCollectionAtIndex_];
      type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
      v28 = swift_initStackObject();
      v28[2] = v57;
      if (v56 >= [v55 numberOfWallpaperCollections])
      {
        __break(1u);
        goto LABEL_87;
      }

      v58 = v36;
      v59 = [*(v36 + 16) identifierString];
      if (!v59)
      {
        sub_1E4AAA8A0();
        v59 = sub_1E4AAA870();
      }

      v60 = v57;
      v61 = [v60 containsWallpaperRepresentingWithIdentifier_];

      if (v61)
      {
        break;
      }

      v56 = (v56 + 1);

      v36 = v58;
      if (v56 == [v55 numberOfWallpaperCollections])
      {
        goto LABEL_35;
      }
    }

    v36 = v58;
    v92 = [*(v58 + 16) identifierString];
    sub_1E4AAA8A0();

    v141 = v28;
    WKWallpaperRepresentingCollection.subscript.getter();

    v28 = v134;
    if (!*(&v139 + 1))
    {
      goto LABEL_36;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E540, &unk_1E4AB3EC0);
    if (swift_dynamicCast())
    {
      v93 = v141;
      v94 = [*(v141 + 16) contentVersion];
      [v94 floatValue];
      v96 = v95;

      v97 = [*(v36 + 16) contentVersion];
      [v97 floatValue];
      v99 = v98;

      if (v99 >= v96)
      {

        goto LABEL_37;
      }

      if (qword_1EE0424D0 != -1)
      {
        swift_once();
      }

      v100 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v100, qword_1EE048BA0);

      v101 = sub_1E4AAA0C0();
      v102 = sub_1E4AAAA20();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *&v138 = v104;
        *v103 = 136446210;
        v105 = [*(v36 + 16) identifierString];
        v106 = sub_1E4AAA8A0();
        v108 = v107;

        v109 = sub_1E4A85938(v106, v108, &v138);
        v110 = v134;

        *(v103 + 4) = v109;
        _os_log_impl(&dword_1E4A23000, v101, v102, "Wallpaper '%{public}s' has a more recent version available in system volume, using it instead.", v103, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v104);
        MEMORY[0x1E691FE80](v104, -1, -1);
        v111 = v103;
        v28 = v110;
        MEMORY[0x1E691FE80](v111, -1, -1);
      }

      else
      {
      }

      result = v93;
      goto LABEL_55;
    }
  }

  else
  {
LABEL_35:

    v140 = 0;
    v138 = 0u;
    v139 = 0u;
    v28 = v134;
LABEL_36:
    sub_1E4A60E80(&v138);
  }

LABEL_37:
  if (qword_1EE0424D0 != -1)
  {
    swift_once();
  }

  v62 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v62, qword_1EE048BA0);

  v63 = sub_1E4AAA0C0();
  v64 = sub_1E4AAAA20();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = v28;
    v67 = swift_slowAlloc();
    *&v138 = v67;
    *v65 = 136446210;
    v68 = [*(v36 + 16) identifierString];
    v69 = sub_1E4AAA8A0();
    v70 = v36;
    v72 = v71;

    v73 = sub_1E4A85938(v69, v72, &v138);

    *(v65 + 4) = v73;
    _os_log_impl(&dword_1E4A23000, v63, v64, "Using wallpaper '%{public}s' from configuration as is.", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    v74 = v67;
    v28 = v66;
    MEMORY[0x1E691FE80](v74, -1, -1);
    MEMORY[0x1E691FE80](v65, -1, -1);

    result = v70;
  }

  else
  {

    result = v36;
  }

LABEL_55:
  v56 = v132;
  LOBYTE(v36) = v124;
LABEL_56:
  v90 = 1;
  if (v36)
  {
    v90 = 2;
  }

  if ((v36 & 0xFE) == 2)
  {
    v91 = 0;
  }

  else
  {
    v91 = v90;
  }

  *v28 = result;
  v28[1] = v91;
  v28[2] = v56;
  return result;
}

uint64_t sub_1E4A60E80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E5A8, &qword_1E4AB12B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4A60EE8()
{
  result = qword_1ECF8E5B0;
  if (!qword_1ECF8E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E5B0);
  }

  return result;
}

uint64_t sub_1E4A60F3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t WKLayeredAnimationWallpaper.wallpaperValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKLayeredAnimationWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 5;
  return result;
}

uint64_t WKLayeredAnimationWallpaper.thumbnailImageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) thumbnailImageURL];
  if (v3)
  {
    v4 = v3;
    sub_1E4AA9FC0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E4AA9FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id WKLayeredAnimationWallpaper.thumbnailImage.getter()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

uint64_t WKLayeredAnimationWallpaper.init(identifier:name:backgroundAnimationFileURL:foregroundAnimationFileURL:floatingAnimationFileURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v29 = a1;
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v28 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;
  v32 = a2;
  sub_1E4A48054(a2, &v28 - v16);
  v31 = a3;
  sub_1E4A48054(a3, v15);
  v30 = a4;
  sub_1E4A48054(a4, v12);
  v18 = sub_1E4AAA870();

  v19 = sub_1E4AA9FE0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v22 = 0;
  if (v21(v17, 1, v19) != 1)
  {
    v22 = sub_1E4AA9FA0();
    (*(v20 + 8))(v17, v19);
  }

  if (v21(v15, 1, v19) == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_1E4AA9FA0();
    (*(v20 + 8))(v15, v19);
  }

  if (v21(v12, 1, v19) == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_1E4AA9FA0();
    (*(v20 + 8))(v12, v19);
  }

  v25 = objc_allocWithZone(WKLayeredAnimationWallpaper);
  v26 = [v25 initWithIdentifier:v29 name:v18 backgroundAnimationFileURL:v22 foregroundAnimationFileURL:v23 floatingAnimationFileURL:v24];

  sub_1E4A480C4(v30);
  sub_1E4A480C4(v31);
  sub_1E4A480C4(v32);
  type metadata accessor for WKLayeredAnimationWallpaper.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v26;
  *v33 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall WKLayeredAnimationWallpaper.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

id WKLayeredAnimationWallpaper.copyWallpaperContents(to:)()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 16);
  v2 = sub_1E4AA9FA0();
  v7[0] = 0;
  v3 = [v1 copyWallpaperContentsToDestinationDirectoryURL:v2 error:v7];

  if (v3)
  {
    result = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1E4AA9F60();

    result = swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E4A615C0@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKLayeredAnimationWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 5;
  return result;
}

uint64_t WKLayeredAnimationWallpaper.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKLayeredAnimationWallpaper.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

unint64_t sub_1E4A61728(uint64_t a1)
{
  result = sub_1E4A61750();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4A61750()
{
  result = qword_1EE0434B8[0];
  if (!qword_1EE0434B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0434B8);
  }

  return result;
}

uint64_t WKWallpaperAdjustmentTraits.offset.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) offset];
  type metadata accessor for WKWallpaperAdjustmentTraitOffset.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

uint64_t WKWallpaperAdjustmentTraits.init(dictionary:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = sub_1E4AAA800();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(WKWallpaperAdjustmentTraits) initWithDictionary_];

  type metadata accessor for WKWallpaperAdjustmentTraits.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall WKWallpaperAdjustmentTraits.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

uint64_t WKWallpaperAdjustmentTraits.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKWallpaperAdjustmentTraits.description.getter()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_1E4AAA8A0();

  return v2;
}

uint64_t WKWallpaperAdjustmentTraits.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

unint64_t sub_1E4A61A90()
{
  result = qword_1ECF8E5B8;
  if (!qword_1ECF8E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E5B8);
  }

  return result;
}

uint64_t WKThumbnailWallpaper.thumbnailImageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) thumbnailImageURL];
  if (v3)
  {
    v4 = v3;
    sub_1E4AA9FC0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E4AA9FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id WKThumbnailWallpaper.thumbnailImage.getter()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

uint64_t WKThumbnailWallpaper.init(identifier:name:type:representedType:backingType:thumbnailImageURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v21 = a4;
  v22 = a6;
  v10 = sub_1E4AA9FE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a5, v10);
  v15 = objc_allocWithZone(WKThumbnailWallpaper);
  v16 = sub_1E4AAA870();

  v17 = sub_1E4AA9FA0();
  v18 = [v15 initWithIdentifier:a1 name:v16 type:a2 representedType:a3 backingType:v21 thumbnailImageURL:v17];

  v19 = *(v11 + 8);
  v19(a5, v10);
  v19(v14, v10);
  type metadata accessor for WKThumbnailWallpaper.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v18;
  *v22 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall WKThumbnailWallpaper.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

id WKThumbnailWallpaper.copyWallpaperContents(to:)()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 16);
  v2 = sub_1E4AA9FA0();
  v7[0] = 0;
  v3 = [v1 copyWallpaperContentsToDestinationDirectoryURL:v2 error:v7];

  if (v3)
  {
    result = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1E4AA9F60();

    result = swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t WKThumbnailWallpaper.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKThumbnailWallpaper.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

unint64_t sub_1E4A620A0()
{
  result = qword_1ECF8E5C0;
  if (!qword_1ECF8E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E5C0);
  }

  return result;
}

uint64_t sub_1E4A62108(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1E4A8F224(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_1E4A62158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1E4A55B0C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1E4A621A8(unsigned __int8 *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1E4A8F374(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_1E4A621F8()
{
  v1 = v0;
  v2 = sub_1E4AAA320();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4AAA1C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WKAnimationPackageLayer(0);
  v13 = *(v0 + *(v12 + 24));
  v14 = v0 + *(v12 + 20);
  sub_1E4A96CDC(v11);
  v15 = v1[7];
  v16 = v1[5];
  v87 = v1[6];
  v88 = v15;
  v17 = v1[7];
  v89 = v1[8];
  v18 = v1[3];
  v19 = v1[1];
  v83 = v1[2];
  v84 = v18;
  v20 = v1[3];
  v21 = v1[5];
  v85 = v1[4];
  v86 = v21;
  v22 = v1[1];
  v81 = *v1;
  v82 = v22;
  v91[6] = v87;
  v91[7] = v17;
  v91[8] = v1[8];
  v91[2] = v83;
  v91[3] = v20;
  v91[4] = v85;
  v91[5] = v16;
  v90 = *(v1 + 144);
  v92 = *(v1 + 144);
  v91[0] = v81;
  v91[1] = v19;
  if (sub_1E4A49C60(v91) == 1)
  {
    nullsub_1(v91);
    v58 = v87;
    v59 = v88;
    v60 = v89;
    v61 = v90;
    v54 = v83;
    v55 = v84;
    v56 = v85;
    v57 = v86;
    v52 = v81;
    v53 = v82;
    v23 = nullsub_1(&v52);
    v72 = *v23;
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[4];
    v75 = v23[3];
    v76 = v26;
    v73 = v24;
    v74 = v25;
    v27 = v23[5];
    v28 = v23[6];
    v29 = v23[8];
    v79 = v23[7];
    v80 = v29;
    v77 = v27;
    v78 = v28;
    v71 = v90;
    v69 = v88;
    v70 = v89;
    v67 = v86;
    v68 = v87;
    v65 = v84;
    v66 = v85;
    v63 = v82;
    v64 = v83;
    v62 = v81;
    v30 = nullsub_1(&v62);
    sub_1E4A49D24(v30, &v51);
  }

  else
  {
    nullsub_1(v91);
    v58 = v87;
    v59 = v88;
    v60 = v89;
    v61 = v90;
    v54 = v83;
    v55 = v84;
    v56 = v85;
    v57 = v86;
    v52 = v81;
    v53 = v82;
    v50[1] = *nullsub_1(&v52);
    v62 = v81;
    v63 = v82;
    v66 = v85;
    v67 = v86;
    v64 = v83;
    v65 = v84;
    v71 = v90;
    v69 = v88;
    v70 = v89;
    v68 = v87;
    v31 = *nullsub_1(&v62);

    sub_1E4AAAA10();
    v32 = v2;
    v33 = v7;
    v34 = v13;
    v35 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    v13 = v34;
    v7 = v33;
    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A4DC88(&v81, &qword_1ECF8E700, &qword_1E4AAEE50);
    (*(v3 + 8))(v6, v32);
  }

  v36 = *(&v76 + 1);
  *&v66 = v76;
  v64 = v74;
  v65 = v75;
  v62 = v72;
  v63 = v73;
  v52 = v77;
  v53 = v78;
  v54 = v79;
  v55 = v80;
  v37 = type metadata accessor for WKAnimationPackageLayer.Coordinator(0);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v40 = swift_allocObject();
  v41 = OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_animationMapping;
  *(v40 + v41) = sub_1E4A8FE00(MEMORY[0x1E69E7CC0]);
  *(v40 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_package) = 0;
  *(v40 + 16) = v13;
  (*(v8 + 16))(v40 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_colorScheme, v11, v7);
  v42 = v40 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot;
  v43 = v66;
  v44 = v65;
  *(v42 + 32) = v64;
  *(v42 + 48) = v44;
  v45 = v63;
  *v42 = v62;
  *(v42 + 16) = v45;
  *(v42 + 64) = v43;
  *(v42 + 72) = v36;
  v46 = v53;
  *(v42 + 80) = v52;
  *(v42 + 96) = v46;
  v47 = v55;
  *(v42 + 112) = v54;
  *(v42 + 128) = v47;
  *(v40 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_lastOrientation) = v36;
  v48 = sub_1E4A93090(v36);
  (*(v8 + 8))(v11, v7);
  *(v40 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_rotationAngle) = v48 * 0.0174532925;
  return v40;
}

char *sub_1E4A626AC()
{
  v1 = sub_1E4AA9FE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WKAnimationPackageLayer(0);
  v7 = *(v0 + *(v6 + 24));
  (*(v2 + 16))(v5, v0 + *(v6 + 28), v1);
  v8 = objc_allocWithZone(type metadata accessor for WKPlatformPackageView());
  v9 = sub_1E4A7ADA8(v7, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E708, &qword_1E4AB1930);
  sub_1E4AAA480();
  v10 = *&v9[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_package];
  v11 = *(v15 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_package);
  *(v15 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_package) = v10;
  v12 = v10;
  sub_1E4A62B48(v11);

  return v9;
}

uint64_t sub_1E4A62818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E4AAA320();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E708, &qword_1E4AB1930);
  sub_1E4AAA480();
  sub_1E4AAA490();
  sub_1E4AAA4A0();
  sub_1E4A6C0D4(v9, *(v3 + *(a3 + 32)));

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1E4A62958@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4A621F8();
  *a1 = result;
  return result;
}

uint64_t sub_1E4A629C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4A6C7C8(qword_1EE042E08, type metadata accessor for WKAnimationPackageLayer);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1E4A62A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4A6C7C8(qword_1EE042E08, type metadata accessor for WKAnimationPackageLayer);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1E4A62AF0()
{
  sub_1E4A6C7C8(qword_1EE042E08, type metadata accessor for WKAnimationPackageLayer);
  sub_1E4AAA400();
  __break(1u);
}

uint64_t sub_1E4A62B48(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_package))
  {
    result = sub_1E4A62C08();
    if (a1)
    {
      return result;
    }

    goto LABEL_3;
  }

  v5 = OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_animationMapping;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = MEMORY[0x1E69E7CC8];

  if (!a1)
  {
LABEL_3:
    sub_1E4AAA210();
    sub_1E4A68E28(0, 0, *(v2 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_rotationAngle));
  }

  return result;
}

uint64_t sub_1E4A62C08()
{
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E668, &unk_1E4AB17C0);
  v1 = *(*(v75 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v75);
  v74 = v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v73 = v72 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E630, &qword_1E4AB1788);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v72 - v7;
  v9 = type metadata accessor for WKAnimationPackageLayerState();
  v10 = *(v9 - 8);
  v77 = v9;
  v78 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v79 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E4A8FFD0(MEMORY[0x1E69E7CC0]);
  v76 = v0;
  v14 = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_package);
  if (!v14)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v15 = [v14 rootLayer];
  if (!v15)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v16 = v15;
  v17 = [v15 states];

  if (v17)
  {
    v18 = MEMORY[0x1E69E7CA0];
    v19 = sub_1E4AAA950();

    v20 = *(v19 + 16);
    if (v20)
    {
      v72[1] = v19;
      v21 = v19 + 32;
      v22 = (v78 + 48);
      do
      {
        sub_1E4A479C0(v21, v81);
        sub_1E4A47A2C(0, &unk_1EE042140, 0x1E69794B8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_7;
        }

        v23 = v80;
        v24 = [v80 name];
        if (v24)
        {
          v25 = v24;
          v26 = sub_1E4AAA8A0();
          v28 = v27;

          if (v26 == 42 && v28 == 0xE100000000000000)
          {

            goto LABEL_7;
          }

          v30 = sub_1E4AAADA0();

          if (v30)
          {

            goto LABEL_7;
          }
        }

        v31 = [v23 name];
        if (v31)
        {
          v32 = v31;
          v33 = sub_1E4AAA8A0();
          v35 = v34;
        }

        else
        {
          v33 = 0;
          v35 = 0;
        }

        sub_1E4A70908(v33, v35, v8);
        if ((*v22)(v8, 1, v77) == 1)
        {

          sub_1E4A4DC88(v8, &qword_1ECF8E630, &qword_1E4AB1788);
        }

        else
        {
          v36 = v8;
          v37 = v22;
          v38 = v18;
          v39 = v13;
          v40 = v36;
          v41 = v79;
          sub_1E4A68988(v36, v79);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v80 = v39;
          v44 = sub_1E4A8F374(v41);
          v45 = v39[2];
          v46 = (v43 & 1) == 0;
          v47 = v45 + v46;
          if (__OFADD__(v45, v46))
          {
            goto LABEL_44;
          }

          v48 = v43;
          if (v39[3] >= v47)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1E4A67EA4();
            }
          }

          else
          {
            sub_1E4A664AC(v47, isUniquelyReferenced_nonNull_native);
            v49 = sub_1E4A8F374(v79);
            if ((v48 & 1) != (v50 & 1))
            {
              goto LABEL_49;
            }

            v44 = v49;
          }

          v18 = v38;
          v51 = v80;
          v22 = v37;
          if (v48)
          {
            v52 = *(v80 + 7);
            v53 = *(v52 + 8 * v44);
            *(v52 + 8 * v44) = v23;

            v8 = v40;
          }

          else
          {
            *(v80 + (v44 >> 6) + 8) |= 1 << v44;
            sub_1E4A68864(v79, v51[6] + *(v78 + 72) * v44);
            *(v51[7] + 8 * v44) = v23;
            v54 = v51[2];
            v55 = __OFADD__(v54, 1);
            v56 = v54 + 1;
            if (v55)
            {
              goto LABEL_45;
            }

            v8 = v40;
            v51[2] = v56;
          }

          v13 = v51;
          sub_1E4A688C8(v79);
        }

LABEL_7:
        v21 += 32;
        --v20;
      }

      while (v20);
    }

    v57 = 0;
    v58 = 1 << *(v13 + 32);
    v59 = -1;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    v60 = v59 & *(v13 + 64);
    v61 = (v58 + 63) >> 6;
    while (v60)
    {
      v62 = v57;
LABEL_40:
      v63 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
      v64 = v63 | (v62 << 6);
      v65 = v73;
      sub_1E4A68864(*(v13 + 48) + *(v78 + 72) * v64, v73);
      v66 = *(*(v13 + 56) + 8 * v64);
      v67 = *(v75 + 48);
      v68 = v65;
      v69 = v74;
      sub_1E4A68988(v68, v74);
      *&v69[v67] = v66;
      v70 = v66;
      sub_1E4A631E8(v69, v70, v76);
      sub_1E4A4DC88(v69, &unk_1ECF8E668, &unk_1E4AB17C0);
    }

    while (1)
    {
      v62 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v62 >= v61)
      {
      }

      v60 = *(v13 + 64 + 8 * v62);
      ++v57;
      if (v60)
      {
        v57 = v62;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_1E4AAADB0();
  __break(1u);
  return result;
}

uint64_t sub_1E4A631E8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E4A476B4();
  v6 = 0;
  v7 = 0;
  v8 = v5 + 64;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v5 + 64);
  v95 = OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_animationMapping;
  v96 = 0;
  v12 = (v9 + 63) >> 6;
  v13 = &unk_1E8767000;
  v14 = &qword_1ECF8E690;
  v15 = &qword_1E4AB2790;
  v16 = &unk_1E4AB17B0;
LABEL_4:
  if (v11)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v17 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v17 >= v12)
    {

      sub_1E4A27344(v96);
      return sub_1E4A27344(v6);
    }

    v11 = *(v8 + 8 * v17);
    ++v7;
    if (v11)
    {
      v7 = v17;
LABEL_9:
      v18 = (v7 << 9) | (8 * __clz(__rbit64(v11)));
      v19 = *(*(v5 + 48) + v18);
      v20 = *(*(v5 + 56) + v18);
      if (v20 >> 62)
      {
        v91 = v6;
        v93 = a1;
        v88 = v5;
        v105 = *(*(v5 + 56) + v18);
        v81 = v14;
        v82 = v15;
        v83 = v16;
        v84 = sub_1E4AAAC80();
        v16 = v83;
        v15 = v82;
        v14 = v81;
        v6 = v91;
        a1 = v93;
        v20 = v105;
        v21 = v84;
        v5 = v88;
        v13 = &unk_1E8767000;
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 &= v11 - 1;
      if (v21)
      {
        v90 = v6;
        v92 = a1;
        v87 = v5;
        v102 = v21;
        v103 = v20 & 0xC000000000000001;
        v94 = v20 & 0xFFFFFFFFFFFFFF8;
        v104 = v20;
        swift_bridgeObjectRetain_n();
        v86 = v19;
        v22 = 0;
        v89 = a3;
        while (1)
        {
          if (v103)
          {
            v23 = MEMORY[0x1E691EFA0](v22, v104);
            v24 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_65;
            }
          }

          else
          {
            if (v22 >= *(v94 + 16))
            {
              goto LABEL_66;
            }

            v23 = *(v104 + 8 * v22 + 32);
            v24 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_65;
            }
          }

          v25 = v23;
          v26 = [v23 v13[324]];
          if (v26)
          {
            v106 = v24;
            v27 = v26;
            v99 = sub_1E4AAA8A0();
            v29 = v28;

            v30 = [v25 target];
            if (!v30)
            {

LABEL_60:
              v24 = v106;
              goto LABEL_14;
            }

            v100 = v29;
            v101 = v30;
            v98 = v25;
            if ([v25 value])
            {
              sub_1E4AAAB30();
              swift_unknownObjectRelease();
            }

            else
            {
              v108 = 0u;
              v109 = 0u;
            }

            v24 = v106;
            v110[0] = v108;
            v110[1] = v109;
            if (*(&v109 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E658, &qword_1E4AB17A8);
              if (swift_dynamicCast())
              {
                swift_beginAccess();
                sub_1E4A27344(v96);
                v31 = *(a3 + v95);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v33 = *(a3 + v95);
                *(a3 + v95) = 0x8000000000000000;
                v35 = sub_1E4A8F374(v92);
                v36 = v33[2];
                v37 = (v34 & 1) == 0;
                v38 = v36 + v37;
                if (__OFADD__(v36, v37))
                {
                  goto LABEL_67;
                }

                v39 = v34;
                if (v33[3] >= v38)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_1E4A67C8C();
                  }
                }

                else
                {
                  sub_1E4A65EE0(v38, isUniquelyReferenced_nonNull_native);
                  type metadata accessor for WKAnimationPackageLayerState();
                  v40 = sub_1E4A8F374(v92);
                  if ((v39 & 1) != (v41 & 1))
                  {
                    goto LABEL_73;
                  }

                  v35 = v40;
                }

                *(a3 + v95) = v33;
                if ((v39 & 1) == 0)
                {
                  v42 = sub_1E4A901A0(MEMORY[0x1E69E7CC0]);
                  v33[(v35 >> 6) + 8] |= 1 << v35;
                  v43 = v33[6];
                  v44 = type metadata accessor for WKAnimationPackageLayerState();
                  sub_1E4A68864(v92, v43 + *(*(v44 - 8) + 72) * v35);
                  *(v33[7] + 8 * v35) = v42;
                  v45 = v33[2];
                  v46 = __OFADD__(v45, 1);
                  v47 = v45 + 1;
                  if (v46)
                  {
                    goto LABEL_70;
                  }

                  v33[2] = v47;
                }

                v48 = v33[7];
                sub_1E4A27344(v90);
                v49 = *(v48 + 8 * v35);
                v50 = swift_isUniquelyReferenced_nonNull_native();
                v51 = *(v48 + 8 * v35);
                *(v48 + 8 * v35) = 0x8000000000000000;
                v97 = sub_1E4A8F224(v101);
                v53 = *(v51 + 16);
                v54 = (v52 & 1) == 0;
                v55 = v53 + v54;
                if (__OFADD__(v53, v54))
                {
                  goto LABEL_68;
                }

                v56 = v52;
                if (*(v51 + 24) >= v55)
                {
                  if ((v50 & 1) == 0)
                  {
                    sub_1E4A67B38(&unk_1ECF8EA20, &unk_1E4AB17B0);
                  }
                }

                else
                {
                  sub_1E4A65C78(v55, v50, &unk_1ECF8EA20, &unk_1E4AB17B0);
                  sub_1E4A47A2C(0, &qword_1EE042150, 0x1E6979398);
                  v97 = sub_1E4A8F224(v101);
                  if ((v56 & 1) != (v57 & 1))
                  {
                    goto LABEL_74;
                  }
                }

                v58 = *(v48 + 8 * v35);
                *(v48 + 8 * v35) = v51;

                v59 = *(v48 + 8 * v35);
                if ((v56 & 1) == 0)
                {
                  v60 = sub_1E4A90298(MEMORY[0x1E69E7CC0]);
                  v59[(v97 >> 6) + 8] |= 1 << v97;
                  *(v59[6] + 8 * v97) = v101;
                  *(v59[7] + 8 * v97) = v60;
                  v61 = v59[2];
                  v46 = __OFADD__(v61, 1);
                  v62 = v61 + 1;
                  if (v46)
                  {
                    goto LABEL_71;
                  }

                  v59[2] = v62;
                  v63 = v101;
                }

                v64 = v59[7];
                swift_unknownObjectRetain();
                v65 = *(v64 + 8 * v97);
                v66 = swift_isUniquelyReferenced_nonNull_native();
                v67 = *(v64 + 8 * v97);
                *&v108 = v67;
                *(v64 + 8 * v97) = 0x8000000000000000;
                v68 = sub_1E4A55B0C(v99, v100);
                v70 = v67[2];
                v71 = (v69 & 1) == 0;
                v46 = __OFADD__(v70, v71);
                v72 = v70 + v71;
                if (v46)
                {
                  goto LABEL_69;
                }

                v73 = v69;
                if (v67[3] >= v72)
                {
                  if ((v66 & 1) == 0)
                  {
                    v80 = v68;
                    sub_1E4A680CC(&qword_1ECF8E660, &unk_1E4AB3810);
                    v68 = v80;
                  }
                }

                else
                {
                  sub_1E4A66A8C(v72, v66, &qword_1ECF8E660, &unk_1E4AB3810);
                  v68 = sub_1E4A55B0C(v99, v100);
                  if ((v73 & 1) != (v74 & 1))
                  {
                    goto LABEL_75;
                  }
                }

                if (v73)
                {
                  v75 = v67[7];
                  v76 = *(v75 + 8 * v68);
                  *(v75 + 8 * v68) = v107;

                  swift_unknownObjectRelease();
                }

                else
                {
                  v67[(v68 >> 6) + 8] |= 1 << v68;
                  v77 = (v67[6] + 16 * v68);
                  *v77 = v99;
                  v77[1] = v100;
                  *(v67[7] + 8 * v68) = v107;
                  v78 = v67[2];
                  v46 = __OFADD__(v78, 1);
                  v79 = v78 + 1;
                  if (v46)
                  {
                    goto LABEL_72;
                  }

                  v67[2] = v79;
                }

                *(v64 + 8 * v97) = v67;
                swift_endAccess();
                swift_unknownObjectRelease();

                v90 = sub_1E4A6C8E0;
                v96 = sub_1E4A639D8;
                a3 = v89;
                v13 = &unk_1E8767000;
                goto LABEL_60;
              }
            }

            else
            {

              sub_1E4A4DC88(v110, &qword_1ECF8E690, &qword_1E4AB2790);
            }
          }

          else
          {
          }

LABEL_14:
          ++v22;
          if (v24 == v102)
          {

            swift_bridgeObjectRelease_n();
            v5 = v87;
            v14 = &qword_1ECF8E690;
            v15 = &qword_1E4AB2790;
            v16 = &unk_1E4AB17B0;
            v6 = v90;
            a1 = v92;
            goto LABEL_4;
          }
        }
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  sub_1E4AAADB0();
  __break(1u);
LABEL_74:
  sub_1E4AAADB0();
  __break(1u);
LABEL_75:
  result = sub_1E4AAADB0();
  __break(1u);
  return result;
}

unint64_t sub_1E4A639D8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E4A901A0(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_1E4A63A08(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v114 = sub_1E4A901A0(MEMORY[0x1E69E7CC0]);
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v122 = OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_package;
  v12 = (v9 + 63) >> 6;
  v13 = a3;
  v117 = a1;

  v112 = 0;
  v14 = 0;
  v118 = v4;
  v121 = a2;
  v115 = v12;
  v116 = a1 + 64;
LABEL_6:
  if (v11)
  {
    v15 = v14;
  }

  else
  {
    do
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_81;
      }

      if (v15 >= v12)
      {

        sub_1E4A27344(v112);
        return v114;
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
    }

    while (!v11);
  }

  v119 = v15;
  v16 = (v15 << 9) | (8 * __clz(__rbit64(v11)));
  v17 = *(*(v117 + 48) + v16);
  v18 = *(*(v117 + 56) + v16);
  v120 = (v11 - 1) & v11;
  v123 = v18 + 64;
  v19 = 1 << *(v18 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v18 + 64);
  v22 = (v19 + 63) >> 6;
  v125 = *(*(v117 + 56) + v16);
  swift_bridgeObjectRetain_n();
  v126 = v17;
  v23 = 0;
  v124 = v22;
LABEL_15:
  v24 = v123;
  while (v21)
  {
LABEL_22:
    v26 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v27 = v26 | (v23 << 6);
    v28 = (*(v125 + 48) + 16 * v27);
    v29 = v28[1];
    v30 = *(*(v125 + 56) + 8 * v27);
    v127 = v30;
    v128 = *v28;
    v31 = *v28 == 0xD000000000000014 && 0x80000001E4AB8FF0 == v29;
    if (v31 || (sub_1E4AAADA0() & 1) != 0)
    {

      swift_unknownObjectRetain();
      v32 = [v126 superlayer];
      v33 = *(v4 + v122);
      if (!v33)
      {
        goto LABEL_83;
      }

      v34 = [v33 rootLayer];
      if (!v34)
      {
        goto LABEL_82;
      }

      v35 = v34;
      if (!v32)
      {

LABEL_36:
        if (*(a2 + 16))
        {
          goto LABEL_39;
        }

        goto LABEL_47;
      }

      sub_1E4A47A2C(0, &qword_1EE042150, 0x1E6979398);
      v36 = sub_1E4AAAAD0();

      if ((v36 & 1) == 0)
      {
        goto LABEL_36;
      }

      if (qword_1EE042498 != -1)
      {
        swift_once();
      }

      v37 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v37, qword_1EE048B28);

      v38 = sub_1E4AAA0C0();
      v39 = sub_1E4AAA9F0();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *&v131[0] = v41;
        *v40 = 136446466;
        v42 = sub_1E4A85938(v128, v29, v131);

        *(v40 + 4) = v42;
        *(v40 + 12) = 2082;
        v43 = *(v4 + 16);
        v65 = sub_1E4AAA8B0();
        v67 = v66;

        v68 = sub_1E4A85938(v65, v67, v131);

        *(v40 + 14) = v68;
        _os_log_impl(&dword_1E4A23000, v38, v39, "Skipping backlight interpolation for '%{public}s' keyPath animation on the root most layer for '%{public}s' level.", v40, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E691FE80](v41, -1, -1);
        MEMORY[0x1E691FE80](v40, -1, -1);

        swift_unknownObjectRelease();
        goto LABEL_51;
      }

      swift_unknownObjectRelease();
      v22 = v124;
    }

    else
    {

      swift_unknownObjectRetain();
      if (*(a2 + 16))
      {
LABEL_39:
        v44 = sub_1E4A8F224(v126);
        if (v45)
        {
          v46 = *(*(a2 + 56) + 8 * v44);
          if (*(v46 + 16))
          {
            v47 = *(*(a2 + 56) + 8 * v44);

            v48 = sub_1E4A55B0C(v128, v29);
            if (v49)
            {
              v50 = *(*(v46 + 56) + 8 * v48);
              swift_unknownObjectRetain();

              if ([v127 respondsToSelector_])
              {
                swift_getObjectType();
                *&v130 = v50;
                swift_unknownObjectRetain();
                v51 = sub_1E4AAAD90();
                *&v52 = v13;
                v53 = [v127 CA:v51 interpolateValue:v52 byFraction:?];
                swift_unknownObjectRelease();
                sub_1E4AAAB30();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E658, &qword_1E4AB17A8);
                if (swift_dynamicCast())
                {
                  objc_opt_self();
                  v69 = swift_dynamicCastObjCClass();
                  v70 = v126;
                  if (v69)
                  {
                    v71 = v69;
                    swift_unknownObjectRetain();
                    v72 = [v126 presentationLayer];
                    if (v72)
                    {
                      v73 = v72;
                      swift_unknownObjectRetain();
                      v74 = sub_1E4AAA870();
                      [v73 setValue:v71 forKeyPath:v74];
                      swift_unknownObjectRelease();

                      v75 = sub_1E4AAA870();
                      v76 = [v73 valueForKeyPath_];

                      if (!v76)
                      {
                        goto LABEL_88;
                      }

                      sub_1E4AAAB30();
                      swift_unknownObjectRelease();

                      swift_unknownObjectRelease();
                      sub_1E4A4DCE8(&v130, v131);
                      swift_dynamicCast();
                      v77 = v129;
                      a2 = v121;
                      v70 = v126;
LABEL_58:
                      v111 = v77;
                      swift_unknownObjectRetain();
                      sub_1E4A27344(v112);
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      *&v131[0] = v114;
                      v79 = v70;
                      v113 = sub_1E4A8F224(v70);
                      v81 = *(v114 + 16);
                      v82 = (v80 & 1) == 0;
                      v83 = v81 + v82;
                      if (__OFADD__(v81, v82))
                      {
                        goto LABEL_84;
                      }

                      v84 = v80;
                      if (*(v114 + 24) >= v83)
                      {
                        if (isUniquelyReferenced_nonNull_native)
                        {
                          goto LABEL_63;
                        }

                        sub_1E4A67B38(&unk_1ECF8EA20, &unk_1E4AB17B0);
                        v86 = *&v131[0];
                        if ((v84 & 1) == 0)
                        {
LABEL_64:
                          v87 = sub_1E4A90298(MEMORY[0x1E69E7CC0]);
                          v86[(v113 >> 6) + 8] |= 1 << v113;
                          *(v86[6] + 8 * v113) = v126;
                          *(v86[7] + 8 * v113) = v87;
                          v88 = v86[2];
                          v89 = __OFADD__(v88, 1);
                          v90 = v88 + 1;
                          if (v89)
                          {
                            goto LABEL_86;
                          }

                          v86[2] = v90;
                          v91 = v126;
                        }
                      }

                      else
                      {
                        sub_1E4A65C78(v83, isUniquelyReferenced_nonNull_native, &unk_1ECF8EA20, &unk_1E4AB17B0);
                        sub_1E4A47A2C(0, &qword_1EE042150, 0x1E6979398);
                        v113 = sub_1E4A8F224(v79);
                        if ((v84 & 1) != (v85 & 1))
                        {
                          goto LABEL_90;
                        }

LABEL_63:
                        v86 = *&v131[0];
                        if ((v84 & 1) == 0)
                        {
                          goto LABEL_64;
                        }
                      }

                      v114 = v86;
                      v92 = v86[7];
                      v93 = *(v92 + 8 * v113);
                      v94 = swift_isUniquelyReferenced_nonNull_native();
                      *&v131[0] = *(v92 + 8 * v113);
                      v95 = *&v131[0];
                      *(v92 + 8 * v113) = 0x8000000000000000;
                      v96 = sub_1E4A55B0C(v128, v29);
                      v98 = *(v95 + 16);
                      v99 = (v97 & 1) == 0;
                      v89 = __OFADD__(v98, v99);
                      v100 = v98 + v99;
                      if (v89)
                      {
                        goto LABEL_85;
                      }

                      v101 = v97;
                      if (*(v95 + 24) >= v100)
                      {
                        if (v94)
                        {
                          goto LABEL_71;
                        }

                        v106 = v96;
                        sub_1E4A680CC(&qword_1ECF8E660, &unk_1E4AB3810);
                        v96 = v106;
                        v103 = *&v131[0];
                        if ((v101 & 1) == 0)
                        {
                          goto LABEL_76;
                        }

LABEL_72:
                        v104 = v103[7];
                        v105 = *(v104 + 8 * v96);
                        *(v104 + 8 * v96) = v111;

                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        sub_1E4A66A8C(v100, v94, &qword_1ECF8E660, &unk_1E4AB3810);
                        v96 = sub_1E4A55B0C(v128, v29);
                        if ((v101 & 1) != (v102 & 1))
                        {
                          goto LABEL_89;
                        }

LABEL_71:
                        v103 = *&v131[0];
                        if (v101)
                        {
                          goto LABEL_72;
                        }

LABEL_76:
                        v103[(v96 >> 6) + 8] |= 1 << v96;
                        v107 = (v103[6] + 16 * v96);
                        *v107 = v128;
                        v107[1] = v29;
                        *(v103[7] + 8 * v96) = v111;
                        v108 = v103[2];
                        v89 = __OFADD__(v108, 1);
                        v109 = v108 + 1;
                        if (v89)
                        {
                          goto LABEL_87;
                        }

                        v103[2] = v109;
                      }

                      v22 = v124;
                      *(v92 + 8 * v113) = v103;
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      v112 = sub_1E4A6C8E0;
                      goto LABEL_15;
                    }

                    swift_unknownObjectRelease();
                    v70 = v126;
                  }

                  v77 = swift_unknownObjectRetain();
                  goto LABEL_58;
                }
              }

              swift_unknownObjectRelease();
              v24 = v123;
            }

            else
            {
            }
          }
        }
      }

LABEL_47:
      if (qword_1EE042498 != -1)
      {
        swift_once();
      }

      v54 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v54, qword_1EE048B28);

      v55 = sub_1E4AAA0C0();
      v56 = sub_1E4AAAA00();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v131[0] = v58;
        *v57 = 136446466;
        v59 = *(v4 + 16);
        v60 = sub_1E4AAA8B0();
        v62 = v61;

        v63 = sub_1E4A85938(v60, v62, v131);

        *(v57 + 4) = v63;
        *(v57 + 12) = 2082;
        v64 = sub_1E4A85938(v128, v29, v131);

        *(v57 + 14) = v64;
        _os_log_impl(&dword_1E4A23000, v55, v56, "%{public}s is missing a value for the '%{public}s' lock state, cannot interpolate between states.", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E691FE80](v58, -1, -1);
        MEMORY[0x1E691FE80](v57, -1, -1);
        swift_unknownObjectRelease();

        v4 = v118;
LABEL_51:
        a2 = v121;
        v24 = v123;
        v22 = v124;
      }

      else
      {

        swift_unknownObjectRelease();

        v22 = v124;
      }
    }
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v22)
    {

      v14 = v119;
      v11 = v120;
      v12 = v115;
      v8 = v116;
      goto LABEL_6;
    }

    v21 = *(v24 + 8 * v25);
    ++v23;
    if (v21)
    {
      v23 = v25;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
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
  sub_1E4AAADB0();
  __break(1u);
LABEL_90:
  result = sub_1E4AAADB0();
  __break(1u);
  return result;
}

size_t sub_1E4A6468C(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1E4A9CAB8(a1[2], 0);
  v4 = *(type metadata accessor for WKAnimationPackageLayerState() - 8);
  v5 = sub_1E4A9CE8C(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, a1);
  sub_1E4A6C8D8();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1E4A64754@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v147 = a2;
  v148 = a3;
  v146 = a1;
  v144 = a4;
  v6 = sub_1E4AAA1C0();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v135 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v134 = &v129 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v129 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E630, &qword_1E4AB1788);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v129 - v17;
  v19 = type metadata accessor for WKAnimationPackageLayerState();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v142 = (&v129 - v26);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v129 - v27;
  v29 = OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_colorScheme;
  swift_beginAccess();
  v30 = v7[2];
  v143 = v5;
  v141 = v29;
  v138 = v30;
  v139 = v7 + 2;
  v30(v14, v5 + v29, v6);
  sub_1E4A71104(v146, v14, v147, v148, v18);
  v140 = v7;
  v31 = v7[1];
  v137 = v6;
  v31(v14, v6);
  v145 = v20;
  v32 = v19;
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1E4A4DC88(v18, &qword_1ECF8E630, &qword_1E4AB1788);
    if (qword_1EE042498 != -1)
    {
      swift_once();
    }

    v33 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v33, qword_1EE048B28);
    v34 = v143;

    v35 = v148;

    v36 = sub_1E4AAA0C0();
    v37 = sub_1E4AAA9F0();

    if (os_log_type_enabled(v36, v37))
    {
      LODWORD(v134) = v37;
      v142 = v36;
      v136 = v31;
      v133 = v19;
      v38 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v150 = v132;
      *v38 = 136447234;
      *(v34 + 16);
      v39 = sub_1E4AAA8B0();
      v41 = v40;

      v42 = sub_1E4A85938(v39, v41, &v150);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2082;
      if (v146)
      {
        if (v146 == 1)
        {
          v43 = 0x64656B636F6CLL;
        }

        else
        {
          v43 = 0x64656B636F6C6E75;
        }

        if (v146 == 1)
        {
          v44 = 0xE600000000000000;
        }

        else
        {
          v44 = 0xE800000000000000;
        }
      }

      else
      {
        v43 = 0x7065656C73;
        v44 = 0xE500000000000000;
      }

      v59 = sub_1E4A85938(v43, v44, &v150);

      *(v38 + 14) = v59;
      *(v38 + 22) = 2082;
      v60 = v34 + v141;
      v61 = v135;
      v62 = v137;
      v138(v135, v60, v137);
      (v140[13])(v14, *MEMORY[0x1E697DBB8], v62);
      LOBYTE(v59) = sub_1E4AAA1B0();
      v63 = v14;
      v64 = v38;
      v65 = v136;
      v136(v63, v62);
      v66 = (v59 & 1) == 0;
      if (v59)
      {
        v67 = 0x746867696CLL;
      }

      else
      {
        v67 = 1802658148;
      }

      if (v66)
      {
        v68 = 0xE400000000000000;
      }

      else
      {
        v68 = 0xE500000000000000;
      }

      v65(v61, v62);
      v69 = sub_1E4A85938(v67, v68, &v150);

      *(v64 + 24) = v69;
      *(v64 + 32) = 2082;
      v70 = WKStringForInterfaceOrientation(v147);
      v71 = sub_1E4AAA8A0();
      v73 = v72;

      v74 = sub_1E4A85938(v71, v73, &v150);

      *(v64 + 34) = v74;
      v147 = v64;
      *(v64 + 42) = 2082;
      v75 = *(v35 + 16);
      v76 = MEMORY[0x1E69E7CC0];
      if (v75)
      {
        v149 = MEMORY[0x1E69E7CC0];
        sub_1E4A68844(0, v75, 0);
        v76 = v149;
        v77 = v35 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
        v78 = *(v145 + 72);
        do
        {
          sub_1E4A68864(v77, v24);
          sub_1E4A71BCC();
          v79 = sub_1E4AAA8B0();
          v81 = v80;

          sub_1E4A688C8(v24);
          v149 = v76;
          v83 = *(v76 + 16);
          v82 = *(v76 + 24);
          if (v83 >= v82 >> 1)
          {
            sub_1E4A68844((v82 > 1), v83 + 1, 1);
            v76 = v149;
          }

          *(v76 + 16) = v83 + 1;
          v84 = v76 + 16 * v83;
          *(v84 + 32) = v79;
          *(v84 + 40) = v81;
          v77 += v78;
          --v75;
        }

        while (v75);
      }

      v58 = v144;
      v149 = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E638, &qword_1E4AB1790);
      sub_1E4A68924();
      v85 = sub_1E4AAA850();
      v87 = v86;

      v88 = sub_1E4A85938(v85, v87, &v150);

      v89 = v147;
      *(v147 + 44) = v88;
      v90 = v142;
      _os_log_impl(&dword_1E4A23000, v142, v134, "%{public}s could not resolve %{public}s animation state for '%{public}s' colorScheme, '%{public}s' interfaceOrientation out of possible states '%{public}s'", v89, 0x34u);
      v91 = v132;
      swift_arrayDestroy();
      MEMORY[0x1E691FE80](v91, -1, -1);
      MEMORY[0x1E691FE80](v89, -1, -1);

      v57 = 1;
      v32 = v133;
    }

    else
    {

      v57 = 1;
      v58 = v144;
    }
  }

  else
  {
    v136 = v31;
    sub_1E4A68988(v18, v28);
    if (qword_1EE042498 != -1)
    {
      swift_once();
    }

    v45 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v45, qword_1EE048B28);
    v46 = v142;
    sub_1E4A68864(v28, v142);
    v47 = v143;

    v48 = sub_1E4AAA0C0();
    v49 = sub_1E4AAA9F0();

    LODWORD(v135) = v49;
    if (os_log_type_enabled(v48, v49))
    {
      v131 = v48;
      v133 = v32;
      v50 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v150 = v130;
      *v50 = 136447490;
      *(v47 + 16);
      v51 = sub_1E4AAA8B0();
      v53 = v52;

      v54 = sub_1E4A85938(v51, v53, &v150);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2082;
      v132 = v28;
      if (v146)
      {
        if (v146 == 1)
        {
          v55 = 0x64656B636F6CLL;
        }

        else
        {
          v55 = 0x64656B636F6C6E75;
        }

        if (v146 == 1)
        {
          v56 = 0xE600000000000000;
        }

        else
        {
          v56 = 0xE800000000000000;
        }
      }

      else
      {
        v55 = 0x7065656C73;
        v56 = 0xE500000000000000;
      }

      v92 = sub_1E4A85938(v55, v56, &v150);

      *(v50 + 14) = v92;
      *(v50 + 22) = 2082;
      v93 = v47 + v141;
      v94 = v134;
      v95 = v137;
      v138(v134, v93, v137);
      (v140[13])(v14, *MEMORY[0x1E697DBB8], v95);
      LOBYTE(v92) = sub_1E4AAA1B0();
      v96 = v136;
      v136(v14, v95);
      v97 = (v92 & 1) == 0;
      if (v92)
      {
        v98 = 0x746867696CLL;
      }

      else
      {
        v98 = 1802658148;
      }

      if (v97)
      {
        v99 = 0xE400000000000000;
      }

      else
      {
        v99 = 0xE500000000000000;
      }

      v96(v94, v95);
      v100 = sub_1E4A85938(v98, v99, &v150);

      *(v50 + 24) = v100;
      *(v50 + 32) = 2082;
      v101 = WKStringForInterfaceOrientation(v147);
      v102 = sub_1E4AAA8A0();
      v104 = v103;

      v105 = sub_1E4A85938(v102, v104, &v150);

      *(v50 + 34) = v105;
      *(v50 + 42) = 2082;
      v106 = v148;
      v107 = *(v148 + 16);
      v108 = MEMORY[0x1E69E7CC0];
      if (v107)
      {
        v147 = v50;
        v149 = MEMORY[0x1E69E7CC0];
        sub_1E4A68844(0, v107, 0);
        v108 = v149;
        v109 = v106 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
        v110 = *(v145 + 72);
        do
        {
          sub_1E4A68864(v109, v24);
          sub_1E4A71BCC();
          v111 = sub_1E4AAA8B0();
          v113 = v112;

          sub_1E4A688C8(v24);
          v149 = v108;
          v115 = *(v108 + 16);
          v114 = *(v108 + 24);
          if (v115 >= v114 >> 1)
          {
            sub_1E4A68844((v114 > 1), v115 + 1, 1);
            v108 = v149;
          }

          *(v108 + 16) = v115 + 1;
          v116 = v108 + 16 * v115;
          *(v116 + 32) = v111;
          *(v116 + 40) = v113;
          v109 += v110;
          --v107;
        }

        while (v107);
        v50 = v147;
      }

      v149 = v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E638, &qword_1E4AB1790);
      sub_1E4A68924();
      v117 = sub_1E4AAA850();
      v119 = v118;

      v120 = sub_1E4A85938(v117, v119, &v150);

      *(v50 + 44) = v120;
      *(v50 + 52) = 2082;
      v121 = v142;
      sub_1E4A71BCC();
      v122 = sub_1E4AAA8B0();
      v124 = v123;

      sub_1E4A688C8(v121);
      v125 = sub_1E4A85938(v122, v124, &v150);

      *(v50 + 54) = v125;
      v126 = v131;
      _os_log_impl(&dword_1E4A23000, v131, v135, "%{public}s successfully resolved %{public}s animation state for '%{public}s' colorScheme, '%{public}s' interfaceOrientation out of possible states '%{public}s. Resolved: %{public}s'", v50, 0x3Eu);
      v127 = v130;
      swift_arrayDestroy();
      MEMORY[0x1E691FE80](v127, -1, -1);
      MEMORY[0x1E691FE80](v50, -1, -1);

      v58 = v144;
      v32 = v133;
      v28 = v132;
    }

    else
    {

      sub_1E4A688C8(v46);
      v58 = v144;
    }

    sub_1E4A68988(v28, v58);
    v57 = 0;
  }

  return (*(v145 + 56))(v58, v57, 1, v32);
}

uint64_t sub_1E4A65478()
{
  v1 = OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_colorScheme;
  v2 = sub_1E4AAA1C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_animationMapping);

  v4 = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 96);
  v11[7] = v4;
  v11[8] = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 128);
  v5 = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 32);
  v11[3] = v5;
  v6 = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 64);
  v11[5] = v6;
  v7 = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot);
  v11[1] = v7;
  sub_1E4A49CD0(v11);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_1E4A65594()
{
  result = sub_1E4AAA1C0();
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

uint64_t sub_1E4A65660(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1E4A65720(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E6E8, &unk_1E4AB1838);
  result = sub_1E4AAACE0();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = a2;
    v38 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 48) + 72 * v22;
      v24 = (*(v5 + 56) + 24 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v43 = *(v23 + 64);
      v41 = *(v23 + 32);
      v42 = *(v23 + 48);
      v39 = *v23;
      v40 = *(v23 + 16);
      v28 = *(v8 + 40);
      sub_1E4AAAE00();
      sub_1E4A763B8();
      result = sub_1E4AAAE40();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 72 * v16;
      *(v17 + 32) = v41;
      *(v17 + 48) = v42;
      *(v17 + 64) = v43;
      *v17 = v39;
      *(v17 + 16) = v40;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v25;
      v18[1] = v26;
      v18[2] = v27;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_1E4A65A10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6B0, &unk_1E4AB1800);
  result = sub_1E4AAACE0();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_1E4AAAAC0();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1E4A65C78(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1E4AAACE0();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v23;
      }

      v26 = *(v10 + 40);
      result = sub_1E4AAAAC0();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1E4A65EE0(uint64_t a1, int a2)
{
  v3 = v2;
  v56 = sub_1E4AAA1C0();
  v6 = *(v56 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E678, qword_1E4AB1DF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v58 = &v49 - v11;
  v62 = type metadata accessor for WKAnimationPackageLayerState();
  v57 = *(v62 - 8);
  v12 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v16 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E698, &qword_1E4AB17E0);
  v59 = a2;
  result = sub_1E4AAACE0();
  v18 = result;
  if (*(v15 + 16))
  {
    v50 = v3;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v54 = (v6 + 48);
    v55 = v15;
    v51 = (v6 + 8);
    v52 = (v6 + 32);
    v25 = result + 64;
    v26 = v56;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(v15 + 48);
      v61 = *(v57 + 72);
      v33 = v32 + v61 * v31;
      if (v59)
      {
        sub_1E4A68988(v33, v14);
        v60 = *(*(v15 + 56) + 8 * v31);
      }

      else
      {
        sub_1E4A68864(v33, v14);
        v60 = *(*(v15 + 56) + 8 * v31);
      }

      v34 = *(v18 + 40);
      sub_1E4AAAE00();
      v35 = *v14;
      sub_1E4AAA8C0();

      v36 = v58;
      sub_1E4A6C5D8(&v14[*(v62 + 20)], v58);
      if ((*v54)(v36, 1, v26) == 1)
      {
        sub_1E4AAAE20();
      }

      else
      {
        v37 = v53;
        (*v52)(v53, v36, v26);
        sub_1E4AAAE20();
        sub_1E4A6C7C8(&qword_1EE043A28, MEMORY[0x1E697DBD0]);
        sub_1E4AAA840();
        (*v51)(v37, v26);
      }

      v38 = &v14[*(v62 + 24)];
      v39 = v38[8];
      if (v39 == 255)
      {
        sub_1E4AAAE20();
      }

      else
      {
        v40 = *v38;
        sub_1E4AAAE20();
        if (v39)
        {
          MEMORY[0x1E691F1E0](1);
          MEMORY[0x1E691F1E0](v40);
        }

        else
        {
          MEMORY[0x1E691F1E0](0);
          sub_1E4AAAE20();
        }

        v26 = v56;
      }

      result = sub_1E4AAAE40();
      v41 = -1 << *(v18 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      v15 = v55;
      if (((-1 << v42) & ~*(v25 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v25 + 8 * v43);
          if (v47 != -1)
          {
            v27 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_47:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v42) & ~*(v25 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      result = sub_1E4A68988(v14, *(v18 + 48) + v61 * v27);
      *(*(v18 + 56) + 8 * v27) = v60;
      ++*(v18 + 16);
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v59 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_45;
    }

    v48 = 1 << *(v15 + 32);
    v3 = v50;
    if (v48 >= 64)
    {
      bzero(v20, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v48;
    }

    *(v15 + 16) = 0;
  }

LABEL_45:
  *v3 = v18;
  return result;
}

uint64_t sub_1E4A664AC(uint64_t a1, int a2)
{
  v3 = v2;
  v56 = sub_1E4AAA1C0();
  v6 = *(v56 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E678, qword_1E4AB1DF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v58 = &v49 - v11;
  v62 = type metadata accessor for WKAnimationPackageLayerState();
  v57 = *(v62 - 8);
  v12 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v16 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E680, &unk_1E4AB17D0);
  v59 = a2;
  result = sub_1E4AAACE0();
  v18 = result;
  if (*(v15 + 16))
  {
    v50 = v3;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v54 = (v6 + 48);
    v55 = v15;
    v51 = (v6 + 8);
    v52 = (v6 + 32);
    v25 = result + 64;
    v26 = v56;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(v15 + 48);
      v61 = *(v57 + 72);
      v33 = v32 + v61 * v31;
      if (v59)
      {
        sub_1E4A68988(v33, v14);
        v60 = *(*(v15 + 56) + 8 * v31);
      }

      else
      {
        sub_1E4A68864(v33, v14);
        v60 = *(*(v15 + 56) + 8 * v31);
      }

      v34 = *(v18 + 40);
      sub_1E4AAAE00();
      v35 = *v14;
      sub_1E4AAA8C0();

      v36 = v58;
      sub_1E4A6C5D8(&v14[*(v62 + 20)], v58);
      if ((*v54)(v36, 1, v26) == 1)
      {
        sub_1E4AAAE20();
      }

      else
      {
        v37 = v53;
        (*v52)(v53, v36, v26);
        sub_1E4AAAE20();
        sub_1E4A6C7C8(&qword_1EE043A28, MEMORY[0x1E697DBD0]);
        sub_1E4AAA840();
        (*v51)(v37, v26);
      }

      v38 = &v14[*(v62 + 24)];
      v39 = v38[8];
      if (v39 == 255)
      {
        sub_1E4AAAE20();
      }

      else
      {
        v40 = *v38;
        sub_1E4AAAE20();
        if (v39)
        {
          MEMORY[0x1E691F1E0](1);
          MEMORY[0x1E691F1E0](v40);
        }

        else
        {
          MEMORY[0x1E691F1E0](0);
          sub_1E4AAAE20();
        }

        v26 = v56;
      }

      result = sub_1E4AAAE40();
      v41 = -1 << *(v18 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      v15 = v55;
      if (((-1 << v42) & ~*(v25 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v25 + 8 * v43);
          if (v47 != -1)
          {
            v27 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_47:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v42) & ~*(v25 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      result = sub_1E4A68988(v14, *(v18 + 48) + v61 * v27);
      *(*(v18 + 56) + 8 * v27) = v60;
      ++*(v18 + 16);
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v59 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_45;
    }

    v48 = 1 << *(v15 + 32);
    v3 = v50;
    if (v48 >= 64)
    {
      bzero(v20, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v48;
    }

    *(v15 + 16) = 0;
  }

LABEL_45:
  *v3 = v18;
  return result;
}

uint64_t sub_1E4A66A8C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_1E4AAACE0();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];

        swift_unknownObjectRetain();
      }

      v29 = *(v10 + 40);
      sub_1E4AAAE00();
      sub_1E4AAA8C0();
      result = sub_1E4AAAE40();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1E4A66D2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA70, &qword_1E4AB1818);
  v37 = a2;
  result = sub_1E4AAACE0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 40 * v20);
      if (v37)
      {
        sub_1E4A2732C(v23, v38);
      }

      else
      {
        sub_1E4A4D9A0(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_1E4AAA8A0();
      sub_1E4AAAE00();
      sub_1E4AAA8C0();
      v26 = sub_1E4AAAE40();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_1E4A2732C(v38, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1E4A67008(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6C0, &qword_1E4AB1810);
  v37 = a2;
  result = sub_1E4AAACE0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v38 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_1E4AAA8A0();
      sub_1E4AAAE00();
      sub_1E4AAA8C0();
      v26 = sub_1E4AAAE40();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v36;
      v13 = v38;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E4A672D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6D0, &qword_1E4AB1820);
  v39 = a2;
  result = sub_1E4AAACE0();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1E4AAAE00();
      sub_1E4AAA8C0();
      result = sub_1E4AAAE40();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E4A67574(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA50, &qword_1E4AB3830);
  result = sub_1E4AAACE0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_1E4A4DCE8((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_1E4A4DC2C(v24, &v38);
        sub_1E4A479C0(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_1E4AAAB70();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_1E4A4DCE8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void *sub_1E4A67840()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E6E8, &unk_1E4AB1838);
  v2 = *v0;
  v3 = sub_1E4AAACD0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 72 * v17;
        v19 = 24 * v17;
        v20 = *(v2 + 56) + 24 * v17;
        v21 = *(v20 + 16);
        v23 = *v20;
        result = memmove((*(v4 + 48) + v18), (*(v2 + 48) + v18), 0x48uLL);
        v22 = *(v4 + 56) + v19;
        *v22 = v23;
        *(v22 + 16) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1E4A679D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6B0, &unk_1E4AB1800);
  v2 = *v0;
  v3 = sub_1E4AAACD0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1E4A67B38(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1E4AAACD0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1E4A67C8C()
{
  v1 = v0;
  v2 = type metadata accessor for WKAnimationPackageLayerState();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E698, &qword_1E4AB17E0);
  v6 = *v0;
  v7 = sub_1E4AAACD0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_1E4A68864(*(v6 + 48) + v22, v5);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_1E4A68988(v5, *(v8 + 48) + v22);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_1E4A67EA4()
{
  v1 = v0;
  v2 = type metadata accessor for WKAnimationPackageLayerState();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E680, &unk_1E4AB17D0);
  v6 = *v0;
  v7 = sub_1E4AAACD0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_1E4A68864(*(v6 + 48) + v22, v5);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_1E4A68988(v5, *(v8 + 48) + v22);
        *(*(v8 + 56) + 8 * v21) = v23;
        result = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1E4A680CC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1E4AAACD0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = swift_unknownObjectRetain();
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_1E4A6822C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA70, &qword_1E4AB1818);
  v2 = *v0;
  v3 = sub_1E4AAACD0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1E4A4D9A0(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1E4A2732C(v19, *(v4 + 56) + 40 * v17);
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1E4A683B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6C0, &qword_1E4AB1810);
  v2 = *v0;
  v3 = sub_1E4AAACD0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1E4A68514()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6D0, &qword_1E4AB1820);
  v2 = *v0;
  v3 = sub_1E4AAACD0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1E4A68680()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA50, &qword_1E4AB3830);
  v2 = *v0;
  v3 = sub_1E4AAACD0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1E4A4DC2C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1E4A479C0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1E4A4DCE8(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

size_t sub_1E4A68824(size_t a1, int64_t a2, char a3)
{
  result = sub_1E4A68A0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4A68844(char *a1, int64_t a2, char a3)
{
  result = sub_1E4A68BE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1E4A68864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WKAnimationPackageLayerState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A688C8(uint64_t a1)
{
  v2 = type metadata accessor for WKAnimationPackageLayerState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4A68924()
{
  result = qword_1EE0421F0;
  if (!qword_1EE0421F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF8E638, &qword_1E4AB1790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0421F0);
  }

  return result;
}

uint64_t sub_1E4A68988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WKAnimationPackageLayerState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1E4A689EC(void *a1, int64_t a2, char a3)
{
  result = sub_1E4A68CF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E4A68A0C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E650, &qword_1E4AB17A0);
  v10 = *(type metadata accessor for WKAnimationPackageLayerState() - 8);
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
  v15 = *(type metadata accessor for WKAnimationPackageLayerState() - 8);
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

char *sub_1E4A68BE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E648, &qword_1E4AB1798);
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

void *sub_1E4A68CF4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E970, &qword_1E4AB1828);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E6E0, &qword_1E4AB1830);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1E4A68E28(int a1, int a2, double a3)
{
  v432 = a2;
  v434 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E630, &qword_1E4AB1788);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v430 = &v383 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v433 = &v383 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v436 = &v383 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v383 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v383 - v16;
  v18 = type metadata accessor for WKAnimationPackageLayerState();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v429 = &v383 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v431 = &v383 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v438 = &v383 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v437 = &v383 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v383 - v29;
  v428 = (v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot);
  v31 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 72);
  v32 = OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_animationMapping;
  swift_beginAccess();
  v435 = v32;
  v33 = *(v3 + v32);

  v35 = sub_1E4A6468C(v34);
  sub_1E4A64754(1, v31, v35, v17);
  v36 = *(v19 + 48);
  if (v36(v17, 1, v18) == 1)
  {

    v37 = v17;
LABEL_8:
    sub_1E4A4DC88(v37, &qword_1ECF8E630, &qword_1E4AB1788);
    return;
  }

  sub_1E4A68988(v17, v30);
  sub_1E4A64754(2, v31, v35, v15);
  v38 = v30;
  if (v36(v15, 1, v18) == 1)
  {
    sub_1E4A688C8(v30);

    v37 = v15;
    goto LABEL_8;
  }

  v39 = v15;
  v40 = v437;
  sub_1E4A68988(v39, v437);
  v41 = v436;
  sub_1E4A64754(0, v31, v35, v436);
  if (v36(v41, 1, v18) == 1)
  {

    sub_1E4A688C8(v40);
    v42 = v38;
LABEL_7:
    sub_1E4A688C8(v42);
    v37 = v41;
    goto LABEL_8;
  }

  v425 = v31;
  v427 = v35;
  sub_1E4A68988(v41, v438);
  v43 = v435;
  v44 = *(v3 + v435);

  v45 = sub_1E4A621A8(v38, v44);

  if (!v45)
  {
LABEL_16:

    goto LABEL_17;
  }

  v436 = v38;
  v46 = *(v3 + v43);

  v47 = v40;
  v48 = sub_1E4A621A8(v40, v46);
  v49 = v43;
  v50 = v48;

  v426 = v50;
  if (!v50)
  {
LABEL_15:

    v40 = v47;
    v38 = v436;
    goto LABEL_16;
  }

  v51 = *(v3 + v49);

  v52 = sub_1E4A621A8(v438, v51);

  v422 = v52;
  if (!v52)
  {

    goto LABEL_15;
  }

  v419 = v45;
  v53 = OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_lastOrientation;
  v41 = v433;
  v54 = v427;
  sub_1E4A64754(1, *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_lastOrientation), v427, v433);
  if (v36(v41, 1, v18) == 1)
  {

    sub_1E4A688C8(v438);
    v55 = v47;
LABEL_20:
    sub_1E4A688C8(v55);
    v42 = v436;
    goto LABEL_7;
  }

  v56 = v41;
  v57 = v53;
  v58 = v431;
  sub_1E4A68988(v56, v431);
  v408 = v57;
  v59 = *(v3 + v57);
  v41 = v430;
  sub_1E4A64754(0, v59, v54, v430);
  v40 = v47;
  if (v36(v41, 1, v18) == 1)
  {

    sub_1E4A688C8(v58);
    sub_1E4A688C8(v438);
    v55 = v47;
    goto LABEL_20;
  }

  v60 = v429;
  sub_1E4A68988(v41, v429);
  v61 = v435;
  v62 = *(v3 + v435);

  v63 = sub_1E4A621A8(v58, v62);

  v38 = v436;
  if (!v63)
  {
LABEL_28:

    sub_1E4A688C8(v60);
    v96 = v58;
    goto LABEL_183;
  }

  v420 = v3;
  v64 = *(v3 + v61);

  v65 = sub_1E4A621A8(v60, v64);

  v400 = v65;
  if (!v65)
  {

    goto LABEL_28;
  }

  if (qword_1EE042498 != -1)
  {
    goto LABEL_186;
  }

  while (1)
  {
    v398 = v63;
    v66 = sub_1E4AAA0E0();
    v67 = __swift_project_value_buffer(v66, qword_1EE048B28);
    v68 = v420;
    swift_retain_n();
    v415 = v67;
    v69 = sub_1E4AAA0C0();
    v70 = sub_1E4AAA9F0();
    v71 = os_log_type_enabled(v69, v70);
    v72 = v432;
    if (v71)
    {
      v73 = swift_slowAlloc();
      v435 = swift_slowAlloc();
      *&v450 = v435;
      *v73 = 134219266;
      v74 = a3 * 57.2957795;
      *(v73 + 4) = a3 * 57.2957795;
      *(v73 + 12) = 1024;
      *(v73 + 14) = v434 & 1;
      *(v73 + 18) = 1024;
      *(v73 + 20) = v72 & 1;
      *(v73 + 24) = 2080;
      v75 = v408;
      v76 = WKStringForInterfaceOrientation(*(v420 + v408));
      v77 = sub_1E4AAA8A0();
      v79 = v78;

      v80 = sub_1E4A85938(v77, v79, &v450);

      *(v73 + 26) = v80;

      *(v73 + 34) = 2080;
      v81 = v425;
      v82 = WKStringForInterfaceOrientation(v425);
      v83 = sub_1E4AAA8A0();
      v85 = v84;

      v86 = sub_1E4A85938(v83, v85, &v450);
      v40 = v437;

      *(v73 + 36) = v86;
      *(v73 + 44) = 2080;
      v87 = *(v428 + 7);
      v465 = *(v428 + 6);
      v466 = v87;
      v467 = *(v428 + 8);
      v88 = *(v428 + 3);
      v461 = *(v428 + 2);
      v462 = v88;
      v89 = *(v428 + 5);
      v463 = *(v428 + 4);
      v464 = v89;
      v90 = *(v428 + 1);
      v459 = *v428;
      v460 = v90;
      v63 = MEMORY[0x1E69E7CA0];
      v91 = WKPosterEnvironmentSnapshot.description.getter();
      v93 = sub_1E4A85938(v91, v92, &v450);

      *(v73 + 46) = v93;
      v38 = v436;

      _os_log_impl(&dword_1E4A23000, v69, v70, "Ticking animation. Rotation angle: %f. Display Link Driven Tick: %{BOOL}d. Orientation Has Changed: %{BOOL}d. Last Orientation: %s. Current Orientation: %s. Poster Environment Snapshot: %s", v73, 0x36u);
      v94 = v435;
      swift_arrayDestroy();
      MEMORY[0x1E691FE80](v94, -1, -1);
      v95 = v73;
      v68 = v420;
      MEMORY[0x1E691FE80](v95, -1, -1);
    }

    else
    {

      v74 = a3 * 57.2957795;
      v81 = v425;
      v75 = v408;
    }

    v97 = sub_1E4A93090(*(v68 + v75));
    v98 = sub_1E4A93090(v81);
    v99 = v428;
    if (vabdd_f64(v97, v74) > 180.0)
    {
      if (v97 == 0.0)
      {
        v97 = 360.0;
      }

      else if (v97 == 360.0)
      {
        v97 = 0.0;
      }
    }

    if (vabdd_f64(v98, v74) <= 180.0)
    {
      goto LABEL_42;
    }

    if (v98 == 0.0)
    {
      a3 = 0.0;
      v98 = 360.0;
      if (v97 != 360.0)
      {
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    if (v98 == 360.0)
    {
      a3 = 0.0;
      if (v97 != 0.0)
      {
        v98 = 0.0;
LABEL_43:
        *&a3 = (v74 - v97) / (v98 - v97);
      }
    }

    else
    {
LABEL_42:
      a3 = 0.0;
      if (v98 != v97)
      {
        goto LABEL_43;
      }
    }

LABEL_44:
    v100 = v428[2];
    v101 = v428[4];
    v102 = objc_opt_self();
    [v102 begin];
    v399 = v102;
    v396 = [v102 disableActions];
    v417 = v434 ^ 1 | v432;
    if (v417)
    {
      v103 = v399;
      [v399 setAnimationTimingFunction_];
      [v103 setAnimationDuration_];
    }

    if (v99[5])
    {
      v104 = 1;
    }

    else
    {
      v104 = ((v99[6] & 0x7FFFFFFFFFFFFFFFLL) == 0) | v417 ^ 1;
    }

    [v399 setDisableActions_];
    v411 = sub_1E4A63A08(v422, v419, v100);
    v397 = sub_1E4A63A08(v400, v398, v100);
    v105 = *(v426 + 64);
    v407 = v426 + 64;
    v106 = 1 << *(v426 + 32);
    if (v106 < 64)
    {
      v107 = ~(-1 << v106);
    }

    else
    {
      v107 = -1;
    }

    v412 = v107 & v105;
    v409 = OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_package;
    v406 = (v106 + 63) >> 6;
    if (v434)
    {
      v108 = 0;
    }

    else
    {
      v108 = 762212206;
    }

    v109 = 0xE400000000000000;
    if (v434)
    {
      v109 = 0xE000000000000000;
    }

    v403 = v109;
    v404 = v108;
    v413 = 0x80000001E4AB8FF0;

    v110 = 0;
    v111 = 0;
    *&v112 = 136446466;
    v402 = v112;
    *&v112 = 136447234;
    v392 = v112;
    *&v112 = 136448002;
    v391 = v112;
    *&v112 = 136446722;
    v394 = v112;
    *&v112 = 136315394;
    v405 = v112;
    *&v112 = 136446978;
    v393 = v112;
LABEL_59:
    v113 = v412;
    if (!v412)
    {
      break;
    }

    v114 = v110;
LABEL_64:
    v410 = v114;
    v115 = (v114 << 9) | (8 * __clz(__rbit64(v113)));
    v116 = *(*(v426 + 48) + v115);
    v117 = *(*(v426 + 56) + v115);
    v412 = (v113 - 1) & v113;
    v118 = v117 + 64;
    v119 = 1 << *(v117 + 32);
    if (v119 < 64)
    {
      v120 = ~(-1 << v119);
    }

    else
    {
      v120 = -1;
    }

    v435 = v120 & *(v117 + 64);
    v421 = (v119 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v401 = v116;
    v121 = v116;
    v416 = v121;
    v122 = 0;
    v414 = v117;
    v418 = v117 + 64;
    while (1)
    {
      v127 = v435;
      if (!v435)
      {
        break;
      }

LABEL_76:
      v424 = v122;
      v129 = __clz(__rbit64(v127)) | (v122 << 6);
      v130 = *(v117 + 48) + 16 * v129;
      v63 = *v130;
      v131 = *(v130 + 8);
      v132 = *(*(v117 + 56) + 8 * v129);
      v435 = (v127 - 1) & v127;
      *&v459 = v63;
      *(&v459 + 1) = v131;
      MEMORY[0x1EEE9AC00](v121);
      *(&v383 - 2) = &v459;

      v430 = v132;
      swift_unknownObjectRetain();
      v133 = sub_1E4A65660(sub_1E4A6C810, (&v383 - 4), &unk_1F5E99920);
      v134 = sub_1E4A6C82C(&unk_1F5E99940);
      v135 = v417 | v133;
      v423 = v63;
      *&v459 = v63;
      v433 = v131;
      *(&v459 + 1) = v131;
      MEMORY[0x1EEE9AC00](v134);
      *(&v383 - 2) = &v459;
      v136 = sub_1E4A65660(sub_1E4A6C8E8, (&v383 - 4), &unk_1F5E99950);
      sub_1E4A6C82C(&unk_1F5E99970);
      if (v136 & 1) == 0 || (v434)
      {
        if ((v135 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      else if (v135 & 1) == 0 || (v432)
      {
LABEL_92:
        v153 = v433;
        swift_bridgeObjectRetain_n();
        v154 = sub_1E4AAA0C0();
        v155 = sub_1E4AAAA20();
        if (!os_log_type_enabled(v154, v155))
        {

          swift_unknownObjectRelease();
          goto LABEL_94;
        }

        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        *&v459 = v124;
        *v123 = v405;
        v125 = sub_1E4A85938(v404, v403, &v459);
        v117 = v414;

        *(v123 + 4) = v125;
        *(v123 + 12) = 2080;

        v126 = sub_1E4A85938(v423, v153, &v459);

        *(v123 + 14) = v126;
        v63 = MEMORY[0x1E69E7CA0];
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_1E4A23000, v154, v155, "Skipping %sdisplay link driven animation tick for keyPath %s", v123, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E691FE80](v124, -1, -1);
        MEMORY[0x1E691FE80](v123, -1, -1);

        v121 = swift_unknownObjectRelease();
LABEL_69:
        v38 = v436;
        goto LABEL_70;
      }

      v137 = v423;
      v138 = v433;
      v139 = v423 == 0xD000000000000014 && v413 == v433;
      v140 = v420;
      if (v139 || (sub_1E4AAADA0() & 1) != 0)
      {
        v141 = [(objc_class *)v416 superlayer];
        v142 = *(v140 + v409);
        if (!v142)
        {
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
          return;
        }

        v143 = [v142 rootLayer];
        if (!v143)
        {
          goto LABEL_188;
        }

        v144 = v143;
        if (v141)
        {
          sub_1E4A47A2C(0, &qword_1EE042150, 0x1E6979398);
          v145 = sub_1E4AAAAD0();

          v140 = v420;
          if (v145)
          {
            swift_retain_n();
            swift_bridgeObjectRetain_n();
            v146 = sub_1E4AAA0C0();
            v147 = sub_1E4AAAA20();
            if (!os_log_type_enabled(v146, v147))
            {

              swift_unknownObjectRelease();
LABEL_94:
              v121 = swift_bridgeObjectRelease_n();
              goto LABEL_69;
            }

            v148 = v111;
            v149 = swift_slowAlloc();
            v150 = swift_slowAlloc();
            *&v459 = v150;
            *v149 = v402;

            v151 = sub_1E4A85938(v423, v138, &v459);

            *(v149 + 4) = v151;
            swift_bridgeObjectRelease_n();
            *(v149 + 12) = 2082;
            v152 = *(v140 + 16);
            v189 = sub_1E4AAA8B0();
            v191 = v190;

            v192 = sub_1E4A85938(v189, v191, &v459);

            *(v149 + 14) = v192;

            _os_log_impl(&dword_1E4A23000, v146, v147, "Skipping unlock interpolation for'%{public}s' keyPath animation on the root most layer for '%{public}s' level.", v149, 0x16u);
            v63 = MEMORY[0x1E69E7CA0];
            swift_arrayDestroy();
            MEMORY[0x1E691FE80](v150, -1, -1);
            MEMORY[0x1E691FE80](v149, -1, -1);

            v121 = swift_unknownObjectRelease();
LABEL_113:
            v38 = v436;
            v40 = v437;
            goto LABEL_114;
          }
        }

        else
        {

          v140 = v420;
        }
      }

      v156 = v411;
      if (!*(v411 + 16))
      {
        goto LABEL_110;
      }

      v157 = sub_1E4A8F224(v416);
      if ((v158 & 1) == 0)
      {
        goto LABEL_110;
      }

      v159 = *(*(v156 + 56) + 8 * v157);
      if (!*(v159 + 16))
      {
        goto LABEL_110;
      }

      v160 = sub_1E4A55B0C(v137, v138);
      if ((v161 & 1) == 0)
      {

LABEL_110:
        v148 = v111;
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        v177 = sub_1E4AAA0C0();
        v178 = v140;
        v179 = sub_1E4AAAA00();
        if (os_log_type_enabled(v177, v179))
        {
          v180 = swift_slowAlloc();
          v181 = swift_slowAlloc();
          *&v459 = v181;
          *v180 = v402;
          v182 = *(v178 + 16);
          v183 = sub_1E4AAA8B0();
          v185 = v184;

          v186 = sub_1E4A85938(v183, v185, &v459);

          *(v180 + 4) = v186;

          *(v180 + 12) = 2082;
          v187 = v433;

          v188 = sub_1E4A85938(v137, v187, &v459);

          *(v180 + 14) = v188;
          swift_bridgeObjectRelease_n();
          _os_log_impl(&dword_1E4A23000, v177, v179, "%{public}s is missing an interpolated state for the %{public}s, skipping animation.", v180, 0x16u);
          v63 = MEMORY[0x1E69E7CA0];
          swift_arrayDestroy();
          MEMORY[0x1E691FE80](v181, -1, -1);
          MEMORY[0x1E691FE80](v180, -1, -1);
          swift_unknownObjectRelease();

          goto LABEL_113;
        }

        swift_unknownObjectRelease();

        v121 = swift_bridgeObjectRelease_n();
        v38 = v436;
LABEL_114:
        v111 = v148;
        v117 = v414;
        goto LABEL_70;
      }

      v395 = v111;
      v63 = *(*(v159 + 56) + 8 * v160);
      swift_unknownObjectRetain();

      swift_getObjectType();
      if (([v63 respondsToSelector:sel_CA_interpolateValue_byFraction_]& 1) == 0)
      {
        goto LABEL_115;
      }

      v162 = v430;
      swift_getObjectType();
      *&v450 = v162;
      swift_unknownObjectRetain();
      v163 = sub_1E4AAAD90();
      *&v164 = v101;
      v165 = [v63 CA_interpolateValue:v163 byFraction:v164];
      swift_unknownObjectRelease();
      sub_1E4AAAB30();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E658, &qword_1E4AB17A8);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_115:
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        v193 = sub_1E4AAA0C0();
        v194 = v140;
        v195 = sub_1E4AAAA00();
        if (!os_log_type_enabled(v193, v195))
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v121 = swift_bridgeObjectRelease_n();
LABEL_118:
          v38 = v436;
          v111 = v395;
          goto LABEL_70;
        }

        v390 = v63;
        v196 = swift_slowAlloc();
        v197 = swift_slowAlloc();
        *&v459 = v197;
        *v196 = v402;
        v198 = *(v194 + 16);
        v199 = sub_1E4AAA8B0();
        v201 = v200;

        v202 = sub_1E4A85938(v199, v201, &v459);

        *(v196 + 4) = v202;

        *(v196 + 12) = 2082;
        v203 = v433;

        v204 = sub_1E4A85938(v137, v203, &v459);

        *(v196 + 14) = v204;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_1E4A23000, v193, v195, "%{public}s is missing an interpolated state using unlockProgress for the %{public}s, skipping animation.", v196, 0x16u);
        v63 = MEMORY[0x1E69E7CA0];
        swift_arrayDestroy();
        MEMORY[0x1E691FE80](v197, -1, -1);
        MEMORY[0x1E691FE80](v196, -1, -1);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        goto LABEL_147;
      }

      v167 = v433;
      v389 = v450;
      if (v417)
      {
        v168 = swift_unknownObjectRetain();
        goto LABEL_104;
      }

      v205 = sub_1E4A62108(v416, v397);
      if (!v205 || (v206 = sub_1E4A62158(v137, v167, v205), , !v206))
      {
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        v210 = sub_1E4AAA0C0();
        v211 = v140;
        v212 = sub_1E4AAAA00();
        if (!os_log_type_enabled(v210, v212))
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_bridgeObjectRelease_n();
          v121 = swift_unknownObjectRelease();
          goto LABEL_118;
        }

        v213 = swift_slowAlloc();
        v214 = swift_slowAlloc();
        *&v459 = v214;
        *v213 = v402;
        v215 = *(v211 + 16);
        v259 = sub_1E4AAA8B0();
        v261 = v260;

        v262 = sub_1E4A85938(v259, v261, &v459);

        *(v213 + 4) = v262;

        *(v213 + 12) = 2082;
        v263 = v433;

        v264 = sub_1E4A85938(v423, v263, &v459);

        *(v213 + 14) = v264;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_1E4A23000, v210, v212, "%{public}s previous orientation is missing an interpolated state for the %{public}s, skipping animation.", v213, 0x16u);
        v63 = MEMORY[0x1E69E7CA0];
        swift_arrayDestroy();
        MEMORY[0x1E691FE80](v214, -1, -1);
        MEMORY[0x1E691FE80](v213, -1, -1);
        swift_unknownObjectRelease();
        goto LABEL_153;
      }

      if ([v206 respondsToSelector_])
      {
        *&v450 = v63;
        swift_unknownObjectRetain();
        v207 = sub_1E4AAAD90();
        LODWORD(v208) = LODWORD(a3);
        v209 = [v206 CA:v207 interpolateValue:v208 byFraction:?];
        swift_unknownObjectRelease();
        sub_1E4AAAB30();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (swift_dynamicCast())
        {
          swift_unknownObjectRelease();
          v168 = v450;
          v140 = v420;
          v117 = v414;
          v167 = v433;
          v137 = v423;
LABEL_104:
          objc_opt_self();
          v169 = swift_dynamicCastObjCClass();
          v390 = v63;
          v388 = v168;
          if (v169)
          {
            v170 = v169;
            v387 = v166;
            swift_unknownObjectRetain();
            v171 = [(objc_class *)v416 presentationLayer];
            if (v171)
            {
              v172 = v171;
              swift_unknownObjectRetain();
              v173 = sub_1E4AAA870();
              [v172 setValue:v170 forKeyPath:v173];
              swift_unknownObjectRelease();

              v174 = sub_1E4AAA870();
              v175 = [v172 valueForKeyPath_];

              if (!v175)
              {
                goto LABEL_189;
              }

              sub_1E4AAAB30();
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              sub_1E4A4DCE8(&v450, &v459);
              swift_dynamicCast();
              v176 = v440;
              swift_unknownObjectRetain();
              goto LABEL_138;
            }

            swift_unknownObjectRelease();
            v166 = v387;
          }

          if (sub_1E4AAA8F0() & 1) != 0 && (*&v459 = v168, swift_unknownObjectRetain(), (swift_dynamicCast()) && (v216 = *&v450, *&v450 < 0.0))
          {
            v387 = v166;
            v217 = sub_1E4A62108(v416, v422);
            if (v217)
            {
              v218 = sub_1E4A62158(v423, v433, v217);

              if (v218)
              {
                v219 = sub_1E4A62108(v416, v419);
                if (v219)
                {
                  v220 = sub_1E4A62158(v423, v433, v219);

                  v386 = v220;
                  if (v220)
                  {
                    swift_retain_n();
                    v221 = v416;
                    swift_unknownObjectRetain_n();
                    swift_unknownObjectRetain_n();
                    swift_unknownObjectRetain_n();
                    v385 = v221;
                    v222 = sub_1E4AAA0C0();
                    LODWORD(v384) = sub_1E4AAAA00();
                    if (os_log_type_enabled(v222, v384))
                    {
                      v223 = swift_slowAlloc();
                      v63 = swift_slowAlloc();
                      v383 = swift_slowAlloc();
                      *&v459 = v383;
                      *v223 = v391;
                      v224 = *(v420 + 16);
                      v336 = sub_1E4AAA8B0();
                      v338 = v337;

                      v339 = sub_1E4A85938(v336, v338, &v459);

                      *(v223 + 4) = v339;

                      *(v223 + 12) = 2050;
                      *(v223 + 14) = v100;
                      *(v223 + 22) = 2050;
                      *(v223 + 24) = v101;
                      *(v223 + 32) = 2050;
                      *(v223 + 34) = v216;
                      *(v223 + 42) = 2114;
                      v340 = v385;
                      *(v223 + 44) = v385;
                      v63->isa = v401;

                      *(v223 + 52) = 2082;
                      v341 = [v218 description];
                      v342 = sub_1E4AAA8A0();
                      v344 = v343;

                      v345 = sub_1E4A85938(v342, v344, &v459);

                      *(v223 + 54) = v345;
                      swift_unknownObjectRelease_n();
                      *(v223 + 62) = 2082;
                      v346 = [v386 description];
                      v347 = sub_1E4AAA8A0();
                      v349 = v348;

                      v350 = sub_1E4A85938(v347, v349, &v459);

                      *(v223 + 64) = v350;
                      swift_unknownObjectRelease_n();
                      *(v223 + 72) = 2082;
                      v351 = [v430 description];
                      v352 = sub_1E4AAA8A0();
                      v354 = v353;

                      v355 = sub_1E4A85938(v352, v354, &v459);

                      *(v223 + 74) = v355;
                      swift_unknownObjectRelease_n();
                      _os_log_impl(&dword_1E4A23000, v222, v384, "%{public}s has an interpolated (backlightProgress: %{public}f, unlockProgress: %{public}f) scale value '%{public}f' that is negative for layer '%{public}@' which is not expected! SleepValue: %{public}s, LockValue: %{public}s), HomeValue: %{public}s.", v223, 0x52u);
                      sub_1E4A4DC88(v63, &qword_1ECF8E710, &qword_1E4AB1938);
                      MEMORY[0x1E691FE80](v63, -1, -1);
                      v356 = v383;
                      swift_arrayDestroy();
                      MEMORY[0x1E691FE80](v356, -1, -1);
                      MEMORY[0x1E691FE80](v223, -1, -1);
                    }

                    else
                    {
                      swift_unknownObjectRelease_n();
                      swift_unknownObjectRelease_n();
                      swift_unknownObjectRelease_n();
                      v335 = v385;
                    }

                    swift_retain_n();
                    v357 = v385;
                    swift_unknownObjectRetain_n();
                    swift_unknownObjectRetain_n();
                    swift_unknownObjectRetain_n();
                    v358 = v357;
                    v359 = sub_1E4AAA0C0();
                    LODWORD(v385) = sub_1E4AAAA10();
                    if (os_log_type_enabled(v359, v385))
                    {
                      v360 = swift_slowAlloc();
                      v63 = swift_slowAlloc();
                      v384 = swift_slowAlloc();
                      *&v459 = v384;
                      *v360 = v391;
                      v361 = *(v420 + 16);
                      v362 = sub_1E4AAA8B0();
                      v364 = v363;

                      v365 = sub_1E4A85938(v362, v364, &v459);

                      *(v360 + 4) = v365;

                      *(v360 + 12) = 2050;
                      *(v360 + 14) = v100;
                      *(v360 + 22) = 2050;
                      *(v360 + 24) = v101;
                      *(v360 + 32) = 2050;
                      *(v360 + 34) = v216;
                      *(v360 + 42) = 2114;
                      *(v360 + 44) = v358;
                      v63->isa = v401;

                      *(v360 + 52) = 2082;
                      v366 = [v218 description];
                      v367 = sub_1E4AAA8A0();
                      v369 = v368;

                      v370 = sub_1E4A85938(v367, v369, &v459);

                      *(v360 + 54) = v370;
                      swift_unknownObjectRelease_n();
                      *(v360 + 62) = 2082;
                      v371 = [v386 description];
                      v372 = sub_1E4AAA8A0();
                      v374 = v373;

                      v375 = sub_1E4A85938(v372, v374, &v459);

                      *(v360 + 64) = v375;
                      swift_unknownObjectRelease_n();
                      *(v360 + 72) = 2082;
                      v376 = [v430 description];
                      v377 = sub_1E4AAA8A0();
                      v379 = v378;

                      v380 = sub_1E4A85938(v377, v379, &v459);

                      *(v360 + 74) = v380;
                      swift_unknownObjectRelease_n();
                      _os_log_impl(&dword_1E4A23000, v359, v385, "%{public}s has an interpolated (backlightProgress: %{public}f, unlockProgress: %{public}f) scale value '%{public}f' that is negative for layer '%{public}@' which is not expected! SleepValue: %{public}s, LockValue: %{public}s), HomeValue: %{public}s.", v360, 0x52u);
                      sub_1E4A4DC88(v63, &qword_1ECF8E710, &qword_1E4AB1938);
                      MEMORY[0x1E691FE80](v63, -1, -1);
                      v381 = v384;
                      swift_arrayDestroy();
                      MEMORY[0x1E691FE80](v381, -1, -1);
                      MEMORY[0x1E691FE80](v360, -1, -1);

                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      swift_unknownObjectRelease_n();

                      swift_unknownObjectRelease_n();
                      swift_unknownObjectRelease_n();
                    }

                    goto LABEL_177;
                  }
                }

                swift_unknownObjectRelease();
              }
            }

            swift_retain_n();
            v313 = v416;
            v314 = sub_1E4AAA0C0();
            v315 = sub_1E4AAAA00();
            if (os_log_type_enabled(v314, v315))
            {
              v316 = swift_slowAlloc();
              v317 = swift_slowAlloc();
              v318 = swift_slowAlloc();
              *&v459 = v318;
              *v316 = v392;
              if (*(v420 + 16))
              {
                if (*(v420 + 16) == 1)
                {
                  v63 = 0xEA0000000000646ELL;
                }

                else
                {
                  v63 = 0xE800000000000000;
                }
              }

              else
              {
                v63 = 0xEA0000000000646ELL;
              }

              v319 = sub_1E4AAA8B0();
              v321 = v320;

              v322 = sub_1E4A85938(v319, v321, &v459);

              *(v316 + 4) = v322;

              *(v316 + 12) = 2050;
              *(v316 + 14) = v100;
              *(v316 + 22) = 2050;
              *(v316 + 24) = v101;
              *(v316 + 32) = 2050;
              *(v316 + 34) = v216;
              *(v316 + 42) = 2114;
              *(v316 + 44) = v313;
              *v317 = v401;

              _os_log_impl(&dword_1E4A23000, v314, v315, "%{public}s has an interpolated (backlightProgress: %{public}f, unlockProgress: %{public}f) scale value '%{public}f' that is negative for layer '%{public}@' which is not expected! Correcting value.", v316, 0x34u);
              sub_1E4A4DC88(v317, &qword_1ECF8E710, &qword_1E4AB1938);
              MEMORY[0x1E691FE80](v317, -1, -1);
              __swift_destroy_boxed_opaque_existential_1Tm(v318);
              MEMORY[0x1E691FE80](v318, -1, -1);
              MEMORY[0x1E691FE80](v316, -1, -1);
            }

            else
            {
            }

            swift_retain_n();
            v323 = v313;
            v324 = sub_1E4AAA0C0();
            v325 = sub_1E4AAAA10();
            if (os_log_type_enabled(v324, v325))
            {
              v326 = swift_slowAlloc();
              v327 = swift_slowAlloc();
              v328 = swift_slowAlloc();
              *&v459 = v328;
              *v326 = v392;
              if (*(v420 + 16))
              {
                if (*(v420 + 16) == 1)
                {
                  v63 = 0xEA0000000000646ELL;
                }

                else
                {
                  v63 = 0xE800000000000000;
                }
              }

              else
              {
                v63 = 0xEA0000000000646ELL;
              }

              v329 = sub_1E4AAA8B0();
              v331 = v330;

              v332 = sub_1E4A85938(v329, v331, &v459);

              *(v326 + 4) = v332;

              *(v326 + 12) = 2050;
              *(v326 + 14) = v100;
              *(v326 + 22) = 2050;
              *(v326 + 24) = v101;
              *(v326 + 32) = 2050;
              *(v326 + 34) = v216;
              *(v326 + 42) = 2114;
              *(v326 + 44) = v323;
              *v327 = v401;

              _os_log_impl(&dword_1E4A23000, v324, v325, "%{public}s has an interpolated (backlightProgress: %{public}f, unlockProgress: %{public}f) scale value '%{public}f' that is negative for layer '%{public}@' which is not expected! Correcting value.", v326, 0x34u);
              sub_1E4A4DC88(v327, &qword_1ECF8E710, &qword_1E4AB1938);
              MEMORY[0x1E691FE80](v327, -1, -1);
              __swift_destroy_boxed_opaque_existential_1Tm(v328);
              MEMORY[0x1E691FE80](v328, -1, -1);
              MEMORY[0x1E691FE80](v326, -1, -1);
            }

            else
            {
            }

LABEL_177:
            v333 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
            v439 = &unk_1F5EBF340;
            v176 = swift_dynamicCastObjCProtocolUnconditional();
            v334 = v333;
            v140 = v420;
            v117 = v414;
            v167 = v433;
            v137 = v423;
          }

          else
          {
            swift_unknownObjectRetain_n();
            v176 = v168;
          }

LABEL_138:
          *&v459 = v176;
          if ((swift_dynamicCast() & 1) == 0 || (~v450 & 0x7FF0000000000000) != 0 || (v450 & 0xFFFFFFFFFFFFFLL) == 0)
          {
            swift_bridgeObjectRetain_n();
            swift_unknownObjectRetain_n();
            v245 = sub_1E4AAA0C0();
            v246 = sub_1E4AAA9F0();
            if (os_log_type_enabled(v245, v246))
            {
              v247 = swift_slowAlloc();
              v387 = v176;
              v248 = v247;
              v249 = swift_slowAlloc();
              *&v459 = v249;
              *v248 = v405;
              v250 = [v387 description];
              v251 = sub_1E4AAA8A0();
              v253 = v252;

              v254 = v251;
              v63 = MEMORY[0x1E69E7CA0];
              v255 = sub_1E4A85938(v254, v253, &v459);

              *(v248 + 4) = v255;
              swift_unknownObjectRelease_n();
              *(v248 + 12) = 2080;

              v256 = sub_1E4A85938(v137, v433, &v459);

              *(v248 + 14) = v256;
              swift_bridgeObjectRelease_n();
              _os_log_impl(&dword_1E4A23000, v245, v246, "Setting value %s for key path %s", v248, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1E691FE80](v249, -1, -1);
              v257 = v248;
              v176 = v387;
              MEMORY[0x1E691FE80](v257, -1, -1);
            }

            else
            {
              swift_bridgeObjectRelease_n();
              swift_unknownObjectRelease_n();
            }

            swift_unknownObjectRetain();
            v258 = sub_1E4AAA870();

            [(objc_class *)v416 setValue:v176 forKeyPath:v258];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            swift_unknownObjectRelease_n();
            swift_unknownObjectRelease();
            v121 = swift_unknownObjectRelease();
LABEL_147:
            v38 = v436;
            v40 = v437;
            v111 = v395;
            goto LABEL_70;
          }

          v387 = v176;
          swift_retain_n();
          swift_bridgeObjectRetain_n();
          v225 = sub_1E4AAA0C0();
          v226 = sub_1E4AAAA10();
          v227 = v167;
          if (os_log_type_enabled(v225, v226))
          {
            v228 = swift_slowAlloc();
            v229 = swift_slowAlloc();
            v230 = *(v428 + 5);
            v231 = *(v428 + 7);
            v456 = *(v428 + 6);
            v457 = v231;
            v232 = *(v428 + 7);
            v458 = *(v428 + 8);
            v233 = *(v428 + 1);
            v234 = *(v428 + 3);
            v452 = *(v428 + 2);
            v453 = v234;
            v235 = *(v428 + 3);
            v236 = *(v428 + 5);
            v454 = *(v428 + 4);
            v455 = v236;
            v237 = *(v428 + 1);
            v450 = *v428;
            v238 = v450;
            v451 = v237;
            v446 = v456;
            v447 = v232;
            v448 = *(v428 + 8);
            v442 = v452;
            v443 = v235;
            v444 = v454;
            v445 = v230;
            v449 = v229;
            *v228 = v394;
            v440 = v238;
            v441 = v233;
            sub_1E4A49D24(&v450, &v459);
            v239 = WKPosterEnvironmentSnapshot.description.getter();
            v241 = v240;
            v465 = v446;
            v466 = v447;
            v467 = v448;
            v461 = v442;
            v462 = v443;
            v463 = v444;
            v464 = v445;
            v459 = v440;
            v460 = v441;
            sub_1E4A49CD0(&v459);
            v242 = sub_1E4A85938(v239, v241, &v449);

            *(v228 + 4) = v242;

            *(v228 + 12) = 2082;

            v243 = sub_1E4A85938(v423, v227, &v449);

            *(v228 + 14) = v243;
            swift_bridgeObjectRelease_n();
            *(v228 + 22) = 2082;
            v244 = *(v140 + 16);
            v286 = sub_1E4AAA8B0();
            v288 = v287;

            v289 = sub_1E4A85938(v286, v288, &v449);

            *(v228 + 24) = v289;
            v140 = v420;

            _os_log_impl(&dword_1E4A23000, v225, v226, "Invalid value during animation (snapshot: %{public}s, keyPath: %{public}s, level: %{public}s)", v228, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E691FE80](v229, -1, -1);
            MEMORY[0x1E691FE80](v228, -1, -1);
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          swift_retain_n();
          v290 = v433;
          swift_bridgeObjectRetain_n();
          v63 = sub_1E4AAA0C0();
          v291 = sub_1E4AAAA00();
          if (os_log_type_enabled(v63, v291))
          {
            v292 = swift_slowAlloc();
            v293 = swift_slowAlloc();
            v294 = *(v428 + 5);
            v295 = *(v428 + 7);
            v456 = *(v428 + 6);
            v457 = v295;
            v296 = *(v428 + 7);
            v458 = *(v428 + 8);
            v297 = *(v428 + 1);
            v298 = *(v428 + 3);
            v452 = *(v428 + 2);
            v453 = v298;
            v299 = *(v428 + 3);
            v300 = *(v428 + 5);
            v454 = *(v428 + 4);
            v455 = v300;
            v301 = *(v428 + 1);
            v450 = *v428;
            v302 = v450;
            v451 = v301;
            v446 = v456;
            v447 = v296;
            v448 = *(v428 + 8);
            v442 = v452;
            v443 = v299;
            v444 = v454;
            v445 = v294;
            v303 = v293;
            v449 = v293;
            *v292 = v394;
            v440 = v302;
            v441 = v297;
            sub_1E4A49D24(&v450, &v459);
            v304 = WKPosterEnvironmentSnapshot.description.getter();
            v306 = v305;
            v465 = v446;
            v466 = v447;
            v467 = v448;
            v461 = v442;
            v462 = v443;
            v463 = v444;
            v464 = v445;
            v459 = v440;
            v460 = v441;
            sub_1E4A49CD0(&v459);
            v307 = sub_1E4A85938(v304, v306, &v449);

            *(v292 + 4) = v307;

            *(v292 + 12) = 2082;

            v308 = sub_1E4A85938(v423, v290, &v449);

            *(v292 + 14) = v308;
            swift_bridgeObjectRelease_n();
            *(v292 + 22) = 2082;
            *(v140 + 16);
            v309 = sub_1E4AAA8B0();
            v311 = v310;

            v312 = sub_1E4A85938(v309, v311, &v449);

            *(v292 + 24) = v312;

            _os_log_impl(&dword_1E4A23000, v63, v291, "Invalid value during animation (snapshot: %{public}s, keyPath: %{public}s, level: %{public}s)", v292, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E691FE80](v303, -1, -1);
            MEMORY[0x1E691FE80](v292, -1, -1);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            swift_bridgeObjectRelease_n();
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_154;
        }

        v140 = v420;
      }

      v388 = v206;
      v390 = v63;
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v210 = sub_1E4AAA0C0();
      v265 = v140;
      v266 = sub_1E4AAAA00();
      if (os_log_type_enabled(v210, v266))
      {
        v267 = swift_slowAlloc();
        v387 = swift_slowAlloc();
        *&v459 = v387;
        *v267 = v393;
        v268 = *(v265 + 16);
        v269 = sub_1E4AAA8B0();
        v271 = v270;

        v272 = sub_1E4A85938(v269, v271, &v459);

        *(v267 + 4) = v272;
        v63 = v420;

        *(v267 + 12) = 2082;
        v273 = v433;

        v274 = sub_1E4A85938(v423, v273, &v459);

        *(v267 + 14) = v274;
        swift_bridgeObjectRelease_n();
        *(v267 + 22) = 2080;
        v275 = WKStringForInterfaceOrientation(*(&v63->isa + v408));
        v276 = sub_1E4AAA8A0();
        v278 = v277;

        v279 = sub_1E4A85938(v276, v278, &v459);

        *(v267 + 24) = v279;

        *(v267 + 32) = 2080;
        v280 = WKStringForInterfaceOrientation(v425);
        v281 = sub_1E4AAA8A0();
        v283 = v282;

        v284 = sub_1E4A85938(v281, v283, &v459);

        *(v267 + 34) = v284;

        _os_log_impl(&dword_1E4A23000, v210, v266, "%{public}s cannot interpolate %{public}s between orientation change from %s to %s, skipping animation.", v267, 0x2Au);
        v285 = v387;
        swift_arrayDestroy();
        MEMORY[0x1E691FE80](v285, -1, -1);
        MEMORY[0x1E691FE80](v267, -1, -1);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_153:
        swift_unknownObjectRelease();

        goto LABEL_154;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_bridgeObjectRelease_n();
LABEL_154:
      v121 = swift_unknownObjectRelease();
      v38 = v436;
      v40 = v437;
      v111 = v395;
      v117 = v414;
LABEL_70:
      v118 = v418;
      v122 = v424;
    }

    while (1)
    {
      v128 = v122 + 1;
      if (__OFADD__(v122, 1))
      {
        break;
      }

      if (v128 >= v421)
      {

        v110 = v410;
        goto LABEL_59;
      }

      v127 = *(v118 + 8 * v128);
      ++v122;
      if (v127)
      {
        v122 = v128;
        goto LABEL_76;
      }
    }

    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    swift_once();
  }

  while (1)
  {
    v114 = v110 + 1;
    if (__OFADD__(v110, 1))
    {
      goto LABEL_185;
    }

    if (v114 >= v406)
    {
      break;
    }

    v113 = *(v407 + 8 * v114);
    ++v110;
    if (v113)
    {
      goto LABEL_64;
    }
  }

  v382 = v399;
  [v399 commit];
  [v382 setDisableActions_];
  sub_1E4A688C8(v429);
  v96 = v431;
LABEL_183:
  sub_1E4A688C8(v96);
LABEL_17:
  sub_1E4A688C8(v438);
  sub_1E4A688C8(v40);
  sub_1E4A688C8(v38);
}