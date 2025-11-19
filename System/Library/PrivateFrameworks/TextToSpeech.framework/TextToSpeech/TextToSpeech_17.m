uint64_t ImperativeMarkupWriter.process(markup:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 120);

  v6 = MEMORY[0x1E69E7CC0];
  *(v2 + 120) = MEMORY[0x1E69E7CC0];
  v7 = *(v2 + 64);

  *(v2 + 64) = v6;
  v8 = *(v2 + 88);

  *(v2 + 88) = MEMORY[0x1E69E7CD0];
  v9 = *(v2 + 112);

  *(v2 + 112) = v6;
  __asm { FMOV            V0.2S, #1.0 }

  *(v2 + 96) = _D0;
  *(v2 + 104) = 1065353216;
  TTSMarkupVisitor.visit(_:)(a1, &type metadata for ImperativeMarkupWriter, &protocol witness table for ImperativeMarkupWriter);
  if (*(v2 + 41) == 1)
  {
    sub_1A94A5410();
  }

  v15 = *(v2 + 120);
  v16 = *(v2 + 40);
  v18 = *(v2 + 48);
  v17 = *(v2 + 56);
  v19 = *(v2 + 88);
  v38 = v18;
  v39 = v17;
  v37 = 0;
  v20 = *(v15 + 16);
  if (v20)
  {
    v36 = v6;

    sub_1A94A84E0(0, v20, 0);
    v21 = 0;
    v22 = v36;
    v23 = v20 - 1;
    while (1)
    {
      v33 = v21;
      sub_1A94A71E0(&v33, v15, &v37, &v38, v16, v34);
      v36 = v22;
      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1A94A84E0((v24 > 1), v25 + 1, 1);
        v22 = v36;
      }

      *(v22 + 16) = v25 + 1;
      v26 = v22 + 104 * v25;
      v27 = v34[0];
      v28 = v34[2];
      *(v26 + 48) = v34[1];
      *(v26 + 64) = v28;
      *(v26 + 32) = v27;
      v29 = v34[3];
      v30 = v34[4];
      v31 = v34[5];
      *(v26 + 128) = v35;
      *(v26 + 96) = v30;
      *(v26 + 112) = v31;
      *(v26 + 80) = v29;
      if (v23 == v21)
      {
        break;
      }

      ++v21;
    }

    v18 = v38;
    v17 = v39;
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v22;
  a2[1] = v19;
  a2[2] = v18;
  a2[3] = v17;
  return result;
}

void sub_1A94A5410()
{
  v1 = v0;
  v2 = *(v0 + 96);
  v3 = *(v0 + 100);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 12 * v6;
    v9 = *(v7 + 20);
    v10 = *(v7 + 24);
    v8 = v7 + 20;
    if (v2 != v9 || v3 != v10 || v4 != *(v8 + 8))
    {
      if (v2 == v9)
      {
LABEL_25:
        v26 = v5 + 12 * v6;
        v28 = *(v26 + 24);
        v27 = (v26 + 24);
        if (v3 == v28)
        {
LABEL_34:
          v40 = v5 + 12 * v6;
          v42 = *(v40 + 28);
          v41 = (v40 + 28);
          if (v4 == v42)
          {
LABEL_44:
            v59 = v5 + 12 * v6;
            _D1 = *(v59 + 20);
            v46 = *(v59 + 28);
            goto LABEL_45;
          }

          v43 = *(v1 + 24);
          v44 = *(v1 + 32);
          sub_1A93780F4(v1, v43);
          v45.n128_u32[0] = *v41;
LABEL_39:
          v51 = (*(v44 + 48))(v43, v44, v45);
          v53 = v52;
          v54 = *(v1 + 120);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_1A94A817C(0, *(v54 + 2) + 1, 1, v54);
          }

          v55 = *(v54 + 2);
          v56 = *(v54 + 3);
          v57 = v55 + 1;
          if (v55 >= v56 >> 1)
          {
            v71 = v55 + 1;
            v66 = v54;
            v67 = *(v54 + 2);
            v68 = sub_1A94A817C((v56 > 1), v55 + 1, 1, v66);
            v55 = v67;
            v57 = v71;
            v54 = v68;
          }

          *(v54 + 2) = v57;
          v58 = &v54[104 * v55];
          *(v58 + 4) = v51;
          *(v58 + 5) = v53;
          v58[128] = 0x80;
          *(v1 + 120) = v54;
          v6 = *(v5 + 16);
          if (!v6)
          {
            __asm { FMOV            V1.2S, #1.0 }

            v46 = 1.0;
            goto LABEL_45;
          }

          goto LABEL_44;
        }

        v29 = *(v1 + 24);
        v30 = *(v1 + 32);
        sub_1A93780F4(v1, v29);
        v31 = *v27;
        goto LABEL_29;
      }

      v13 = *(v1 + 24);
      v14 = *(v1 + 32);
      sub_1A93780F4(v1, v13);
      v15.n128_u32[0] = *v8;
      goto LABEL_20;
    }
  }

  else if (v2 != 1.0 || v3 != 1.0 || v4 != 1.0)
  {
    if (v2 == 1.0)
    {
      goto LABEL_27;
    }

    v13 = *(v0 + 24);
    v14 = *(v0 + 32);
    sub_1A93780F4(v0, v13);
    v15.n128_u32[0] = 1.0;
LABEL_20:
    v18 = (*(v14 + 32))(v13, v14, v15, v2);
    v20 = v19;
    v21 = *(v1 + 120);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1A94A817C(0, *(v21 + 2) + 1, 1, v21);
    }

    v22 = *(v21 + 2);
    v23 = *(v21 + 3);
    v24 = v22 + 1;
    if (v22 >= v23 >> 1)
    {
      v69 = v22 + 1;
      v60 = v21;
      v61 = *(v21 + 2);
      v62 = sub_1A94A817C((v23 > 1), v22 + 1, 1, v60);
      v22 = v61;
      v24 = v69;
      v21 = v62;
    }

    *(v21 + 2) = v24;
    v25 = &v21[104 * v22];
    *(v25 + 4) = v18;
    *(v25 + 5) = v20;
    v25[128] = 0x80;
    *(v1 + 120) = v21;
    v6 = *(v5 + 16);
    if (v6)
    {
      goto LABEL_25;
    }

LABEL_27:
    v31 = 1.0;
    if (v3 == 1.0)
    {
      goto LABEL_36;
    }

    v29 = *(v1 + 24);
    v30 = *(v1 + 32);
    sub_1A93780F4(v1, v29);
LABEL_29:
    v32 = (*(v30 + 40))(v29, v30, v31);
    v34 = v33;
    v35 = *(v1 + 120);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_1A94A817C(0, *(v35 + 2) + 1, 1, v35);
    }

    v36 = *(v35 + 2);
    v37 = *(v35 + 3);
    v38 = v36 + 1;
    if (v36 >= v37 >> 1)
    {
      v70 = v36 + 1;
      v63 = v35;
      v64 = *(v35 + 2);
      v65 = sub_1A94A817C((v37 > 1), v36 + 1, 1, v63);
      v36 = v64;
      v38 = v70;
      v35 = v65;
    }

    *(v35 + 2) = v38;
    v39 = &v35[104 * v36];
    *(v39 + 4) = v32;
    *(v39 + 5) = v34;
    v39[128] = 0x80;
    *(v1 + 120) = v35;
    v6 = *(v5 + 16);
    if (v6)
    {
      goto LABEL_34;
    }

LABEL_36:
    v46 = 1.0;
    if (v4 == 1.0)
    {
      __asm { FMOV            V1.2S, #1.0 }

LABEL_45:
      *(v1 + 96) = _D1;
      *(v1 + 104) = v46;
      return;
    }

    v43 = *(v1 + 24);
    v44 = *(v1 + 32);
    sub_1A93780F4(v1, v43);
    v45.n128_u32[0] = 1.0;
    goto LABEL_39;
  }
}

uint64_t ImperativeMarkupWriter.visit(_:)(uint64_t a1)
{
  v120 = sub_1A957B188();
  v121 = *(v120 - 8);
  v2 = *(v121 + 8);
  MEMORY[0x1EEE9AC00](v120, v3);
  v105 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1A937829C(&qword_1EB386B70, &unk_1A95888A0);
  v5 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119, v6);
  v8 = &v100 - v7;
  v9 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v123 = &v100 - v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v100 - v19;
  v21 = sub_1A937829C(&qword_1EB386AF0, &unk_1A958C740);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v25 = &v100 - v24;
  v26 = sub_1A957B2E8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v116 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v115 = &v100 - v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v100 - v36;
  v126 = sub_1A957B308();
  v122 = *(v126 - 8);
  v38 = *(v122 + 64);
  v40 = MEMORY[0x1EEE9AC00](v126, v39);
  v103 = &v100 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v102 = &v100 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v101 = &v100 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v125 = &v100 - v50;
  MEMORY[0x1EEE9AC00](v49, v51);
  v53 = (&v100 - v52);
  v104 = a1;
  v55 = *(a1 + 48);
  v54 = *(a1 + 56);

  sub_1A957B1B8();
  v124 = v53;
  sub_1A957B2F8();
  sub_1A957B2C8();
  v56 = *(v27 + 8);
  v118 = v26;
  v117 = v27 + 8;
  v114 = v56;
  (v56)(v37, v26);
  v57 = sub_1A957B218();
  v58 = (*(*(v57 - 8) + 48))(v25, 1, v57);
  sub_1A937B960(v25, &qword_1EB386AF0, &unk_1A958C740);
  if (v58 != 1 || (v113 = *(v106 + 10), (v112 = *(v113 + 16)) == 0))
  {
LABEL_15:
    v72 = v122;
    v73 = *(v122 + 16);
    v74 = v102;
    v75 = v124;
    v76 = v126;
    v73(v102, v124, v126);
    v14 = v106;
    v77 = v101;
    sub_1A94265A0(v101, v74);
    v53 = *(v72 + 8);
    (v53)(v77, v76);
    v20 = v103;
    v73(v103, v75, v76);
    v58 = *(v14 + 9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_16;
  }

  v59 = 0;
  v110 = v113 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
  v109 = v122 + 16;
  v60 = (v121 + 48);
  v100 = (v121 + 32);
  v107 = (v121 + 8);
  v111 = (v122 + 8);
  v121 = v20;
  v108 = v14;
  while (v59 < *(v113 + 16))
  {
    (*(v122 + 16))(v125, v110 + *(v122 + 72) * v59, v126);
    v61 = v115;
    sub_1A957B2F8();
    sub_1A957B2B8();
    v62 = v61;
    v63 = v118;
    v53 = v114;
    (v114)(v62, v118);
    v64 = v116;
    sub_1A957B2F8();
    v14 = v123;
    sub_1A957B2B8();
    (v53)(v64, v63);
    v58 = *(v119 + 48);
    sub_1A94A8660(v20, v8);
    sub_1A94A8660(v14, &v8[v58]);
    v65 = *v60;
    v66 = v120;
    if ((*v60)(v8, 1, v120) == 1)
    {
      v53 = &qword_1A9587F40;
      sub_1A937B960(v14, &qword_1EB386A68, &qword_1A9587F40);
      sub_1A937B960(v20, &qword_1EB386A68, &qword_1A9587F40);
      if (v65(&v8[v58], 1, v66) == 1)
      {
        sub_1A937B960(v8, &qword_1EB386A68, &qword_1A9587F40);
LABEL_14:
        v69 = v122;
        v70 = v124;
        v71 = v126;
        (*(v122 + 8))(v124, v126);
        (*(v69 + 32))(v70, v125, v71);
        goto LABEL_15;
      }

      goto LABEL_5;
    }

    v14 = v108;
    sub_1A94A8660(v8, v108);
    if (v65(&v8[v58], 1, v66) == 1)
    {
      v58 = &qword_1EB386A68;
      sub_1A937B960(v123, &qword_1EB386A68, &qword_1A9587F40);
      sub_1A937B960(v121, &qword_1EB386A68, &qword_1A9587F40);
      (*v107)(v14, v66);
LABEL_5:
      sub_1A937B960(v8, &qword_1EB386B70, &unk_1A95888A0);
      goto LABEL_6;
    }

    v67 = v105;
    (*v100)(v105, &v8[v58], v66);
    sub_1A94A89CC(&qword_1EB386490, MEMORY[0x1E6969610]);
    v58 = sub_1A957C098();
    v68 = *v107;
    (*v107)(v67, v66);
    v53 = &qword_1EB386A68;
    sub_1A937B960(v123, &qword_1EB386A68, &qword_1A9587F40);
    sub_1A937B960(v121, &qword_1EB386A68, &qword_1A9587F40);
    v68(v14, v66);
    sub_1A937B960(v8, &qword_1EB386A68, &qword_1A9587F40);
    if (v58)
    {
      goto LABEL_14;
    }

LABEL_6:
    ++v59;
    (*v111)(v125, v126);
    v20 = v121;
    if (v112 == v59)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_32:
  v58 = sub_1A942AD3C(0, *(v58 + 16) + 1, 1, v58);
LABEL_16:
  v78 = v104;
  v80 = *(v58 + 16);
  v79 = *(v58 + 24);
  if (v80 >= v79 >> 1)
  {
    v58 = sub_1A942AD3C(v79 > 1, v80 + 1, 1, v58);
  }

  *(v58 + 16) = v80 + 1;
  (*(v122 + 32))(v58 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v80, v20, v126);
  *(v14 + 9) = v58;
  v81 = *(v14 + 3);
  v82 = *(v14 + 4);
  sub_1A93780F4(v14, v81);
  v83 = (*(v82 + 8))(v124, v81, v82);
  if (!v84)
  {
    v130[3] = &type metadata for TTSMarkup.Language;
    v130[4] = &protocol witness table for TTSMarkup.Language;
    v130[0] = swift_allocObject();
    sub_1A93ADDD8(v78, v130[0] + 16);
    TTSMarkupVisitor.visitChildren(_:)(v130, &type metadata for ImperativeMarkupWriter, &protocol witness table for ImperativeMarkupWriter);
    v98 = v130;
    goto LABEL_28;
  }

  v85 = v83;
  v86 = v84;
  sub_1A93ADDD8(v78, v130);
  off_1F1CF2318(&v127);
  sub_1A93ADE10(v130);
  if (v128)
  {
    sub_1A932D070(&v127, &v129);
    v87 = *(v14 + 15);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = sub_1A94A817C(0, *(v87 + 2) + 1, 1, v87);
    }

    v89 = *(v87 + 2);
    v88 = *(v87 + 3);
    if (v89 >= v88 >> 1)
    {
      v87 = sub_1A94A817C((v88 > 1), v89 + 1, 1, v87);
    }

    *(v87 + 2) = v89 + 1;
    v90 = &v87[104 * v89];
    *(v90 + 4) = v85;
    *(v90 + 5) = v86;
    v90[128] = 0x80;
    *(v14 + 15) = v87;
    if (v14[42])
    {
      v91 = *(v14 + 26);
      *(v14 + 26) = 1065353216;
      v92 = *(v14 + 12);
      __asm { FMOV            V0.2S, #1.0 }

      *(v14 + 12) = _D0;
      sub_1A94A5410();
      *(v14 + 12) = v92;
      *(v14 + 26) = v91;
    }

    TTSMarkupVisitor.visit(_:)(&v129, &type metadata for ImperativeMarkupWriter, &protocol witness table for ImperativeMarkupWriter);

    v98 = &v129;
LABEL_28:
    sub_1A9378138(v98);
  }

  else
  {

    sub_1A937B960(&v127, &qword_1EB3868E8, &unk_1A958F280);
  }

  sub_1A94A647C(v14);
  return (v53)(v124, v126);
}

{
  v2 = v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v2[3];
  v6 = v2[4];
  sub_1A93780F4(v2, v5);
  v7 = (*(v6 + 24))(v3, v4, v5, v6);
  v9 = v8;
  v10 = v2[15];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A94A817C(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    result = sub_1A94A817C((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
  }

  *(v10 + 16) = v13 + 1;
  v14 = v10 + 104 * v13;
  *(v14 + 32) = v7;
  *(v14 + 40) = v9;
  *(v14 + 128) = 0x80;
  v2[15] = v10;
  return result;
}

{
  v2 = v1;
  sub_1A93BFBB0(a1, v26);
  v3 = *(v1 + 64);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1A94A83BC(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1A94A83BC((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[72 * v5];
  *(v6 + 2) = v26[0];
  v7 = v26[1];
  v8 = v26[2];
  v9 = *v27;
  *(v6 + 93) = *&v27[13];
  *(v6 + 4) = v8;
  *(v6 + 5) = v9;
  *(v6 + 3) = v7;
  *(v1 + 64) = v3;
  v10 = sub_1A94A6E10(v3, 44.0);
  v12 = v11;
  v14 = v13;
  v15 = *(v1 + 112);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1A94A82A0(0, *(v15 + 2) + 1, 1, v15);
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1A94A82A0((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[12 * v17];
  v18[8] = v10;
  *(v18 + 9) = v12;
  *(v18 + 10) = v14;
  *(v1 + 112) = v15;
  j___s12TextToSpeech9TTSMarkupO7ProsodyV7contentAA0dC0_pSgvg(v26);
  TTSMarkupVisitor.visit(_:)(v26, &type metadata for ImperativeMarkupWriter, &protocol witness table for ImperativeMarkupWriter);
  sub_1A937B960(v26, &qword_1EB3868E8, &unk_1A958F280);
  v19 = *(v1 + 64);
  if (*(v19 + 2))
  {
    v20 = *(v2 + 64);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = *(v19 + 2);
      if (v21)
      {
        goto LABEL_12;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  v19 = sub_1A94A864C(v19);
  v21 = *(v19 + 2);
  if (!v21)
  {
    goto LABEL_18;
  }

LABEL_12:
  v22 = v21 - 1;
  sub_1A93B77E0(&v19[72 * v21 - 40]);
  *(v19 + 2) = v22;
  *(v2 + 64) = v19;
  v19 = *(v2 + 112);
  if (!*(v19 + 2))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_1A94A8638(v19);
    v19 = result;
    v25 = *(result + 16);
    if (v25)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v23 = *(v2 + 112);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_20;
  }

  v25 = *(v19 + 2);
  if (v25)
  {
LABEL_15:
    *(v19 + 2) = v25 - 1;
    *(v2 + 112) = v19;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1A94A647C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_1A94A8624(v2);
    v2 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v1 = a1;
  v3 = *(a1 + 72);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = v2[2];
  if (v5)
  {
LABEL_4:
    v6 = v5 - 1;
    v7 = sub_1A957B308();
    result = (*(*(v7 - 8) + 8))(v2 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v6, v7);
    v2[2] = v6;
    *(v1 + 72) = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t ImperativeMarkupWriter.visit(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 12);
  v6 = *(a1 + 13);
  v7 = a1[2];
  v8 = a1[3];
  v9 = v2[3];
  v10 = v2[4];
  sub_1A93780F4(v2, v9);
  v11 = sub_1A95379EC();
  v12 = (*(v10 + 16))(v9, v10, v11);
  v14 = v13;
  v15 = v2[15];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A94A817C(0, *(v15 + 16) + 1, 1, v15);
    v15 = result;
  }

  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  if (v18 >= v17 >> 1)
  {
    result = sub_1A94A817C((v17 > 1), v18 + 1, 1, v15);
    v15 = result;
  }

  *(v15 + 16) = v18 + 1;
  v19 = v15 + 104 * v18;
  *(v19 + 32) = v12;
  *(v19 + 40) = v14;
  *(v19 + 128) = 0x80;
  v2[15] = v15;
  return result;
}

{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_1A94A5410();
  v6 = *(v1 + 120);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A94A817C(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    result = sub_1A94A817C((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v9 + 1;
  v10 = v6 + 104 * v9;
  *(v10 + 32) = v2;
  *(v10 + 40) = v3;
  *(v10 + 48) = v4;
  *(v10 + 56) = v5;
  *(v10 + 128) = 0;
  *(v1 + 120) = v6;
  return result;
}

void ImperativeMarkupWriter.visit(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 14)
  {
    v35 = AXTTSLogCommon();
    if (v35)
    {
      sub_1A957CA78();
      sub_1A957BC48();
    }

    else
    {
      __break(1u);
    }

    return;
  }

  v3 = v1;
  v5 = v1[3];
  v6 = v1[4];
  sub_1A93780F4(v1, v5);
  LOBYTE(v39[0]) = v2;
  v7 = (*(v6 + 56))(v39, v5, v6);
  if (!v8)
  {
    v39[3] = &type metadata for TTSMarkup.SayAs;
    v39[4] = &protocol witness table for TTSMarkup.SayAs;
    v39[0] = swift_allocObject();
    sub_1A94A86D0(a1, v39[0] + 16);
    TTSMarkupVisitor.visitChildren(_:)(v39, &type metadata for ImperativeMarkupWriter, &protocol witness table for ImperativeMarkupWriter);
    v31 = v39;
LABEL_23:
    sub_1A9378138(v31);
    return;
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  sub_1A94A86D0(a1, v39);
  off_1F1CFD548(&v36);
  sub_1A93B8E0C(v39);
  if (!v37)
  {

    sub_1A937B960(&v36, &qword_1EB3868E8, &unk_1A958F280);
    return;
  }

  sub_1A932D070(&v36, v38);
  v15 = v1[15];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1A94A817C(0, *(v15 + 2) + 1, 1, v15);
  }

  v16 = *(v15 + 2);
  v17 = *(v15 + 3);
  v18 = v16 + 1;
  if (v16 >= v17 >> 1)
  {
    v32 = v15;
    v33 = *(v15 + 2);
    v34 = sub_1A94A817C((v17 > 1), v16 + 1, 1, v32);
    v16 = v33;
    v15 = v34;
  }

  *(v15 + 2) = v18;
  v19 = &v15[104 * v16];
  *(v19 + 4) = v11;
  *(v19 + 5) = v12;
  v19[128] = 0x80;
  v3[15] = v15;
  if (*(v3 + 42))
  {
    v20 = *(v3 + 26);
    *(v3 + 26) = 1065353216;
    v21 = v3[12];
    __asm { FMOV            V0.2S, #1.0 }

    v3[12] = _D0;
    sub_1A94A5410();
    v3[12] = v21;
    *(v3 + 26) = v20;
  }

  TTSMarkupVisitor.visit(_:)(v38, &type metadata for ImperativeMarkupWriter, &protocol witness table for ImperativeMarkupWriter);
  if (!v14)
  {

    v31 = v38;
    goto LABEL_23;
  }

  v27 = v3[15];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_1A94A817C(0, *(v27 + 2) + 1, 1, v27);
  }

  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  if (v29 >= v28 >> 1)
  {
    v27 = sub_1A94A817C((v28 > 1), v29 + 1, 1, v27);
  }

  sub_1A9378138(v38);
  *(v27 + 2) = v29 + 1;
  v30 = &v27[104 * v29];
  *(v30 + 4) = v13;
  *(v30 + 5) = v14;
  v30[128] = 0x80;
  v3[15] = v27;
}

float sub_1A94A6E10(uint64_t a1, float a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1.0;
  }

  v4 = a1 + 32;
  v5 = 1.0;
  do
  {
    sub_1A93BFBB0(v4, v10);
    if (v13 >> 2 <= 0x3EuLL)
    {
      v6 = ((v12 | (v13 << 32)) << 24) >> 24;
      v7 = (sub_1A94A8078(a2) / 100.0) + 1.0;
      if (v6 >= 0)
      {
        v5 = v7;
      }

      else
      {
        v5 = v5 * v7;
      }
    }

    if (v11 != 255 && ((v11 << 32) & 0x100000000) == 0)
    {
      v8 = dword_1A959348C[v10[48]];
    }

    if (v14 != 255)
    {
      sub_1A93BF5B4();
    }

    sub_1A93B77E0(v10);
    v4 += 72;
    --v2;
  }

  while (v2);
  return v5;
}

__n128 ImperativeMarkupWriter.visit(_:)(__n128 *a1)
{
  v2 = v1;
  v4 = sub_1A957B308();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[1];
  v28 = *a1;
  v29 = v10;
  v11 = a1[3];
  v30 = a1[2];
  v31 = v11;
  v12 = *(v1 + 3);
  v13 = *(v1 + 4);
  sub_1A93780F4(v1, v12);
  v14 = a1[1];
  v27[0] = *a1;
  v27[1] = v14;
  v15 = a1[3];
  v27[2] = a1[2];
  v27[3] = v15;
  v16 = *(v1 + 9);
  v17 = *(v16 + 16);
  if (!v17)
  {
    __break(1u);
LABEL_9:
    v1 = sub_1A94A817C(0, *(v1 + 2) + 1, 1, v1);
    goto LABEL_4;
  }

  (*(v5 + 16))(v9, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v17 - 1), v4);
  v12 = (*(v13 + 64))(v27, v9, v12, v13);
  v13 = v18;
  (*(v5 + 8))(v9, v4);
  if (!v13)
  {
    return result;
  }

  sub_1A94A5410();
  v1 = *(v1 + 15);
  sub_1A938339C(&v28, v27);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v21 = *(v1 + 2);
  v20 = *(v1 + 3);
  if (v21 >= v20 >> 1)
  {
    v1 = sub_1A94A817C((v20 > 1), v21 + 1, 1, v1);
  }

  v22 = v28;
  LOBYTE(v27[0]) = v29.n128_u8[8];
  v23 = v29.n128_u8[8] | 0x40;
  v24 = &v1[104 * v21];
  result = v29;
  v25 = v30;
  v26 = v31;
  *(v1 + 2) = v21 + 1;
  *(v24 + 2) = v22;
  *(v24 + 3) = result;
  *(v24 + 4) = v25;
  *(v24 + 5) = v26;
  *(v24 + 12) = v12;
  *(v24 + 13) = v13;
  *(v24 + 14) = v22.n128_u64[1];
  *(v24 + 15) = result.n128_u64[0];
  v24[128] = v23;
  *(v2 + 15) = v1;
  return result;
}

uint64_t ImperativeMarkupWriter.WrittenMarkup.string.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t *sub_1A94A71E0@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v6 >= *(a2 + 16))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return result;
  }

  v10 = a2 + 104 * v6;
  v11 = *(v10 + 112);
  v90 = *(v10 + 96);
  v91 = v11;
  v92 = *(v10 + 128);
  v12 = *(v10 + 48);
  v86 = *(v10 + 32);
  v87 = v12;
  v13 = *(v10 + 80);
  v88 = *(v10 + 64);
  v89 = v13;
  v93 = v86;
  v94 = v12;
  v95 = v88;
  v96 = v13;
  v97 = v90;
  v98 = v11;
  v99 = v92;
  v14 = v92;
  v15 = v92 >> 6;
  if (v15)
  {
    if (v15 != 1)
    {

      result = MEMORY[0x1AC585140](v93, *(&v93 + 1));
      v36 = v91;
      *(a6 + 64) = v90;
      *(a6 + 80) = v36;
      *(a6 + 96) = v92;
      v37 = v87;
      *a6 = v86;
      *(a6 + 16) = v37;
      v38 = v89;
      *(a6 + 32) = v88;
      *(a6 + 48) = v38;
      return result;
    }

    v99 = v92 & 0x3F;
    v16 = v97;
    v17 = *(&v98 + 1);
    v75 = v98;
    *a3 = 1;
    v19 = *a4;
    v18 = a4[1];
    if ((v18 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(v18) & 0xF;
    }

    else
    {
      v20 = *a4 & 0xFFFFFFFFFFFFLL;
    }

    sub_1A94A875C(&v86, &v82);
    sub_1A938339C(&v93, &v82);

    result = MEMORY[0x1AC585140](v16, *(&v16 + 1));
    v21 = a4[1];
    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = *a4 & 0xFFFFFFFFFFFFLL;
    }

    if (v22 >= v20)
    {
      if (((v18 >> 60) & ((v19 & 0x800000000000000) == 0)) != 0)
      {
        v23 = 11;
      }

      else
      {
        v23 = 7;
      }

      v24 = v23 | (v20 << 16);
      if (((v21 >> 60) & ((*a4 & 0x800000000000000) == 0)) != 0)
      {
        v25 = 11;
      }

      else
      {
        v25 = 7;
      }

      v82 = v93;
      v83 = v94;
      v26 = v25 | (v22 << 16);
      v84 = v95;
      v85 = v96;
      KeyPath = swift_getKeyPath();
      sub_1A93A0F34(v24, v26, v24, v26, &v80);
      v77 = v80;
      v78 = v81;
      v79 = 0;
      TTSMarkupSpeech.subscript.setter(&v77, KeyPath, &type metadata for TTSMarkup.Phoneme, &protocol witness table for TTSMarkup.Phoneme);
      result = sub_1A94A872C(&v86);
      LOBYTE(v77) = v14 & 1;
      v28 = v83;
      *a6 = v82;
      *(a6 + 16) = v28;
      v29 = v85;
      *(a6 + 32) = v84;
      *(a6 + 48) = v29;
      *(a6 + 64) = v16;
      *(a6 + 80) = v75;
      *(a6 + 88) = v17;
      *(a6 + 96) = v14 & 1 | 0x40;
      return result;
    }

    goto LABEL_53;
  }

  v99 = v92 & 0x3F;
  v76 = *(&v93 + 1);
  v30 = v93;
  v31 = *(&v94 + 1);
  v32 = v94;
  if (v6 && *(v10 + 24) < 0x40u)
  {
    v34 = *(v10 - 64);
    *&v77 = *(v10 - 72);
    *(&v77 + 1) = v34;
    v78 = *(v10 - 56);
    sub_1A94A875C(&v86, &v82);

    sub_1A9473844();
    v35 = sub_1A957C358();

    if ((v35 & 1) == 0)
    {
      MEMORY[0x1AC585140](32, 0xE100000000000000);
    }
  }

  else
  {
    sub_1A94A875C(&v86, &v82);
  }

  v39 = a4[1];
  if ((v39 & 0x2000000000000000) != 0)
  {
    v40 = HIBYTE(v39) & 0xF;
  }

  else
  {
    v40 = *a4 & 0xFFFFFFFFFFFFLL;
  }

  v41 = ((v39 >> 60) & ((*a4 & 0x800000000000000) == 0)) == 0;
  v42 = 7;
  *&v82 = v30;
  *(&v82 + 1) = v76;
  if (!v41)
  {
    v42 = 11;
  }

  v74 = v42;
  *&v83 = v32;
  *(&v83 + 1) = v31;
  v43 = sub_1A9473844();
  v45 = v44;
  if ((a5 & 1) != 0 && (*a3 & 1) == 0)
  {
    v72 = v30;
    v73 = v31;
    v71 = v43;
    v46 = sub_1A957C0C8();
    v47 = [objc_opt_self() sharedInstance];
    v48 = sub_1A957C0C8();
    v49 = [v47 regexForString_];

    if (v49)
    {
      v50 = [v49 firstMatchInString:v46 options:0 range:{0, objc_msgSend(v46, sel_length)}];
      if (v50)
      {
        v51 = v50;
        v69 = v32;
        v70 = v46;
        v52 = sub_1A957C0C8();
        v53 = [v51 rangeWithName_];
        v55 = v54;

        if ([v51 range])
        {
          if (v53 != sub_1A957AD68())
          {
LABEL_41:

            v58 = sub_1A957C0C8();
            v59 = [v70 stringByReplacingCharactersInRange:v53 withString:{v55, v58}];

            v60 = sub_1A957C0F8();
            v45 = v61;

            v43 = v60;
            goto LABEL_42;
          }
        }

        else
        {
          [v51 range];
          v68 = v56;
          v57 = [v70 length];
          if (v53 != sub_1A957AD68() && v68 != v57)
          {
            goto LABEL_41;
          }
        }

        v43 = v71;
LABEL_42:
        v32 = v69;
        goto LABEL_43;
      }
    }

    v43 = v71;
LABEL_43:
    v30 = v72;
    v31 = v73;
  }

  MEMORY[0x1AC585140](v43, v45);

  v62 = a4[1];
  v63 = HIBYTE(v62) & 0xF;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v63 = *a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v63 < v40)
  {
    goto LABEL_54;
  }

  v64 = 7;
  if (((v62 >> 60) & ((*a4 & 0x800000000000000) == 0)) != 0)
  {
    v64 = 11;
  }

  *&v77 = v30;
  *(&v77 + 1) = v76;
  v65 = v64 | (v63 << 16);
  *&v78 = v32;
  *(&v78 + 1) = v31;
  v66 = swift_getKeyPath();
  sub_1A93A0F34(v74 | (v40 << 16), v65, v74 | (v40 << 16), v65, &v80);
  v82 = v80;
  v83 = v81;
  LOBYTE(v84) = 0;
  TTSMarkupSpeech.subscript.setter(&v82, v66, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);
  result = sub_1A94A872C(&v86);
  *a3 = 1;
  v67 = *(&v77 + 1);
  *a6 = v77;
  *(a6 + 8) = v67;
  *(a6 + 16) = v78;
  *(a6 + 96) = 0;
  return result;
}

uint64_t ImperativeMarkupWriter.WrittenMarkup.translate(range:inSSML:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *v4;
  v9 = *(*v4 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = 0;
  v40 = *(v4 + 24);
  v41 = *(v4 + 16);
  v11 = v8 + 32;
  v43 = a2 >> 14;
  v44 = a1 >> 14;
  v12 = v9 - 1;
  v46 = v9 - 1;
  v47 = *v4;
  while (1)
  {
    v13 = *v11;
    v14 = *(v11 + 32);
    v60[1] = *(v11 + 16);
    v60[2] = v14;
    v60[0] = v13;
    v15 = *(v11 + 48);
    v16 = *(v11 + 64);
    v17 = *(v11 + 80);
    v61 = *(v11 + 96);
    v60[4] = v16;
    v60[5] = v17;
    v60[3] = v15;
    memmove(&__dst, v11, 0x61uLL);
    v18 = v68 >> 6;
    if (!v18)
    {
      break;
    }

    if (v18 != 1)
    {
      goto LABEL_18;
    }

    v68 &= 0x3Fu;
    v5 = v66;
    v6 = v67;
    KeyPath = swift_getKeyPath();
    v56 = __dst;
    v57 = v63;
    v58 = v64;
    v59 = v65;
    sub_1A94A875C(v60, &v48);
    sub_1A938339C(&__dst, &v48);
    v4 = &v56;
    TTSMarkupSpeech.subscript.getter(KeyPath, &type metadata for TTSMarkup.Phoneme, &protocol witness table for TTSMarkup.Phoneme);

    if (v55 != 1)
    {
      KeyPath = v53;
      v4 = v54;
      sub_1A93833D4(&__dst);
      sub_1A94A872C(v60);
      if (KeyPath >> 14 < v43 && v44 != v43 && v44 < v4 >> 14 && KeyPath >> 14 != v4 >> 14)
      {
        return v5;
      }

      goto LABEL_18;
    }

    sub_1A94A872C(v60);
    sub_1A93833D4(&__dst);
    if (v12 == v10)
    {
      return 0;
    }

LABEL_19:
    ++v10;
    v22 = *(v8 + 16);
    v11 += 104;
    if (v10 >= v22)
    {
      __break(1u);
LABEL_34:
      v22 = sub_1A938156C(v22, v8, v11);
      result = a1;
      if ((v11 & 0x1000000000000000) != 0)
      {
        goto LABEL_35;
      }

LABEL_30:
      v25 = v22 >> 16;
LABEL_31:
      v26 = result;
      if ((result & 0xC) == v4)
      {
        v26 = sub_1A938156C(a1, v8, v11);
        result = a1;
        if ((v11 & 0x1000000000000000) == 0)
        {
          goto LABEL_33;
        }
      }

      else if ((v11 & 0x1000000000000000) == 0)
      {
LABEL_33:
        v27 = v26 >> 16;
        goto LABEL_44;
      }

      v29 = v8 & 0xFFFFFFFFFFFFLL;
      if ((v11 & 0x2000000000000000) != 0)
      {
        v29 = HIBYTE(v11) & 0xF;
      }

      if (v29 < v26 >> 16)
      {
        goto LABEL_51;
      }

      v27 = sub_1A957C2F8();
      result = a1;
LABEL_44:
      v30 = __OFSUB__(v27, v25);
      v31 = v27 - v25;
      if (v30)
      {
        __break(1u);
      }

      else
      {
        sub_1A957C3B8();
        v32 = sub_1A957CC78();

        v30 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (!v30)
        {
          v48 = KeyPath;
          v49 = v45;
          v50 = v5;
          v51 = v6;
          result = sub_1A9473844();
          if (v33 >= v31)
          {
            v35 = sub_1A93883DC(v31, v33, result, v34);
            v37 = v36;

            v48 = KeyPath;
            v49 = v45;
            v50 = v5;
            v51 = v6;
            v5 = TTSMarkup.SpeechText.range(rangeInText:inSSML:)(v35, v37, a3, a4);
            sub_1A94A872C(v60);
            sub_1A94A872C(v60);
            return v5;
          }

          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }
  }

  v68 &= 0x3Fu;
  v19 = *(&__dst + 1);
  KeyPath = __dst;
  v6 = *(&v63 + 1);
  v20 = v63;
  v21 = swift_getKeyPath();
  v56 = __PAIR128__(v19, KeyPath);
  v45 = v19;
  v5 = v20;
  v57 = __PAIR128__(v6, v20);

  v4 = &v56;
  TTSMarkupSpeech.subscript.getter(v21, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);

  if (v52 == 1)
  {
    sub_1A94A872C(v60);
    sub_1A94A872C(v60);
    v12 = v46;
LABEL_17:
    v8 = v47;
LABEL_18:
    if (v12 == v10)
    {
      return 0;
    }

    goto LABEL_19;
  }

  v22 = v48;
  v12 = v46;
  if (v44 < v48 >> 14)
  {
    sub_1A94A872C(v60);
    sub_1A94A872C(v60);
    goto LABEL_17;
  }

  v8 = v47;
  if (v44 >= v49 >> 14 || v49 >> 14 < v43)
  {
    sub_1A94A872C(v60);
    sub_1A94A872C(v60);
    if (v46 == v10)
    {
      return 0;
    }

    goto LABEL_19;
  }

  v11 = v40;
  v8 = v41;
  v24 = (v41 >> 59) & 1;
  if ((v40 & 0x1000000000000000) == 0)
  {
    LOBYTE(v24) = 1;
  }

  v4 = 4 << v24;
  if ((v48 & 0xC) == 4 << v24)
  {
    goto LABEL_34;
  }

  result = a1;
  if ((v40 & 0x1000000000000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_35:
  v28 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(v11) & 0xF;
  }

  if (v28 >= v22 >> 16)
  {
    v11 = v40;
    v8 = v41;
    v25 = sub_1A957C2F8();
    result = a1;
    goto LABEL_31;
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_1A94A7D20(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 12);
  v6 = *(a1 + 13);
  v7 = a1[2];
  v8 = a1[3];
  v9 = v2[3];
  v10 = v2[4];
  sub_1A93780F4(v2, v9);
  v11 = sub_1A95379EC();
  v12 = (*(v10 + 16))(v9, v10, v11);
  v14 = v13;
  v15 = v2[15];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A94A817C(0, *(v15 + 16) + 1, 1, v15);
    v15 = result;
  }

  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  if (v18 >= v17 >> 1)
  {
    result = sub_1A94A817C((v17 > 1), v18 + 1, 1, v15);
    v15 = result;
  }

  *(v15 + 16) = v18 + 1;
  v19 = v15 + 104 * v18;
  *(v19 + 32) = v12;
  *(v19 + 40) = v14;
  *(v19 + 128) = 0x80;
  v2[15] = v15;
  return result;
}

uint64_t sub_1A94A7E50(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_1A94A5410();
  v6 = *(v1 + 120);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A94A817C(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    result = sub_1A94A817C((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v9 + 1;
  v10 = v6 + 104 * v9;
  *(v10 + 32) = v2;
  *(v10 + 40) = v3;
  *(v10 + 48) = v4;
  *(v10 + 56) = v5;
  *(v10 + 128) = 0;
  *(v1 + 120) = v6;
  return result;
}

uint64_t sub_1A94A7F28(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v2[3];
  v6 = v2[4];
  sub_1A93780F4(v2, v5);
  v7 = (*(v6 + 24))(v3, v4, v5, v6);
  v9 = v8;
  v10 = v2[15];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A94A817C(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    result = sub_1A94A817C((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
  }

  *(v10 + 16) = v13 + 1;
  v14 = v10 + 104 * v13;
  *(v14 + 32) = v7;
  *(v14 + 40) = v9;
  *(v14 + 128) = 0x80;
  v2[15] = v10;
  return result;
}

float sub_1A94A8078(float a1)
{
  v3 = *(v1 + 4);
  v4 = *v1 | (*(v1 + 4) << 32);
  sub_1A9387604(a1);
  if (!(v3 >> 6))
  {
    return flt_1A95934A0[v4];
  }

  if (v3 >> 6 == 1)
  {
    sub_1A938763C(*&v4);
    return sub_1A94A8078(a1);
  }

  v5 = *&v4;
  v6 = HIDWORD(v4) & 0x3F;
  if (!v6)
  {
    return sub_1A94A8078(a1);
  }

  if (v6 != 1)
  {
    return v5;
  }

  return sub_1A94CF2F0(-12.0, 12.0, 0.0, 200.0, *&v4);
}

char *sub_1A94A817C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB387CF0, &unk_1A9593478);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A94A82A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB387CE0, &qword_1A9593468);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[12 * v8])
    {
      memmove(v12, v13, 12 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 12 * v8);
  }

  return v10;
}

char *sub_1A94A83BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB387CE8, &qword_1A9593470);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1A94A84E0(char *a1, int64_t a2, char a3)
{
  result = sub_1A94A8500(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A94A8500(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB387CF0, &unk_1A9593478);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A94A8660(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_1A94A8794(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1A94A87B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1A94A8800(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1A94A887C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1A94A88A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 97))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 96) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 96) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A94A88FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 96) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1A94A89CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A94A8A14()
{
  v0 = sub_1A957BC88();
  sub_1A9377618(v0, qword_1EB3892A8);
  sub_1A937731C(v0, qword_1EB3892A8);
  return sub_1A957BC78();
}

void *sub_1A94A8A98()
{
  type metadata accessor for TTSTaskRunner();
  v0 = swift_allocObject();
  type metadata accessor for TTSTaskRunner.Store();
  v1 = swift_allocObject();
  result = sub_1A94B15F4();
  *(v0 + 16) = v1;
  qword_1EB38AC88 = v0;
  return result;
}

uint64_t sub_1A94A8AEC()
{
  v0 = swift_allocObject();
  type metadata accessor for TTSTaskRunner.Store();
  v1 = swift_allocObject();
  sub_1A94B15F4();
  *(v0 + 16) = v1;
  return v0;
}

uint64_t *sub_1A94A8B3C()
{
  if (qword_1EB38AC80 != -1)
  {
    swift_once();
  }

  return &qword_1EB38AC88;
}

uint64_t static TTSTaskRunner.shared.getter()
{
  if (qword_1EB38AC80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static TTSTaskRunner.shared.setter(uint64_t a1)
{
  if (qword_1EB38AC80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB38AC88 = a1;
}

uint64_t (*static TTSTaskRunner.shared.modify())()
{
  if (qword_1EB38AC80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1A94A8D0C@<X0>(void *a1@<X8>)
{
  if (qword_1EB38AC80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EB38AC88;
}

uint64_t sub_1A94A8D8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EB38AC80;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB38AC88 = v1;
}

_BYTE *sub_1A94A8E14()
{
  v1 = sub_1A957B078();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1, v4);
  v62 = &v60[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A937829C(&qword_1EB386F30, &qword_1A958A730);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v60[-v10];
  v12 = sub_1A937829C(&qword_1EB386E78, qword_1A9589E60);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v65 = &v60[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v67 = &v60[-v19];
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v60[-v22];
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v60[-v25];
  sub_1A94A9510();
  v63 = v2[7];
  v64 = v2 + 7;
  v27 = v63(v26, 0, 1, v1);
  v66 = v0;
  v28 = *(v0 + 16);
  (*(*v28 + 288))(v27);
  v29 = *(v7 + 56);
  sub_1A9391BAC(v26, v11, &qword_1EB386E78, qword_1A9589E60);
  sub_1A9391BAC(v23, &v11[v29], &qword_1EB386E78, qword_1A9589E60);
  v30 = v2;
  v31 = v2[6];
  if (v31(v11, 1, v1) == 1)
  {
    sub_1A937B960(v23, &qword_1EB386E78, qword_1A9589E60);
    sub_1A937B960(v26, &qword_1EB386E78, qword_1A9589E60);
    if (v31(&v11[v29], 1, v1) == 1)
    {
      v32 = sub_1A937B960(v11, &qword_1EB386E78, qword_1A9589E60);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1A9391BAC(v11, v67, &qword_1EB386E78, qword_1A9589E60);
  if (v31(&v11[v29], 1, v1) == 1)
  {
    sub_1A937B960(v23, &qword_1EB386E78, qword_1A9589E60);
    sub_1A937B960(v26, &qword_1EB386E78, qword_1A9589E60);
    (v30[1])(v67, v1);
LABEL_6:
    sub_1A937B960(v11, &qword_1EB386F30, &qword_1A958A730);
LABEL_7:
    v33 = (*(*v28 + 216))(v69);
    v35 = v34;
    v36 = *v34;

    *v35 = MEMORY[0x1E69E7CC8];
    v33(v69, 0);
    v37 = v65;
    sub_1A94A9510();
    v63(v37, 0, 1, v1);
    v32 = (*(*v28 + 296))(v37);
    goto LABEL_8;
  }

  v55 = v30;
  v56 = &v11[v29];
  v57 = v62;
  (v30[4])(v62, v56, v1);
  sub_1A94B66F8(&qword_1EB386248, 255, MEMORY[0x1E6969530]);
  v58 = v67;
  v61 = sub_1A957C098();
  v59 = v55[1];
  v59(v57, v1);
  sub_1A937B960(v23, &qword_1EB386E78, qword_1A9589E60);
  sub_1A937B960(v26, &qword_1EB386E78, qword_1A9589E60);
  v59(v58, v1);
  v32 = sub_1A937B960(v11, &qword_1EB386E78, qword_1A9589E60);
  if ((v61 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  result = (*(*v28 + 200))(v32);
  v39 = 0;
  v40 = result + 64;
  v41 = 1 << result[32];
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(result + 8);
  v44 = (v41 + 63) >> 6;
  v67 = result;
  while (v43)
  {
LABEL_16:
    v46 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v47 = *(result + 7) + 88 * (v46 | (v39 << 6));
    if (*(v47 + 73) == 2)
    {
      v49 = *v47;
      v48 = *(v47 + 8);
      v50 = *(*v28 + 216);

      v51 = v50(v69);
      v53 = sub_1A94A9674(v68, v49, v48);
      if (*(v52 + 8))
      {
        *(v52 + 73) = 0;
      }

      (v53)(v68, 0);

      v51(v69, 0);
      result = v67;
    }
  }

  while (1)
  {
    v45 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v45 >= v44)
    {

      return (*(*v66 + 104))(v54);
    }

    v43 = *&v40[8 * v45];
    ++v39;
    if (v43)
    {
      v39 = v45;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94A9510()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0x1500000001;
  v6 = 0;
  v4 = 16;
  v5 = 0;
  if (sysctl(v7, 2u, &v5, &v4, 0, 0))
  {
    sub_1A957CF08();

    MEMORY[0x1AC584CD0](v2);
    v3 = sub_1A957D3A8();
    MEMORY[0x1AC585140](v3);

    result = sub_1A957D0A8();
    __break(1u);
  }

  else
  {
    result = sub_1A957B038();
    v1 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void (*sub_1A94A9674(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1A94B18F0(v6, a2, a3);
  return sub_1A948558C;
}

uint64_t sub_1A94A96FC(uint64_t a1, uint64_t a2)
{
  v5 = *(**(v2 + 16) + 216);

  v6 = v5(v10);
  sub_1A94B2D9C(a1, a2, v8);

  v11[3] = v8[3];
  v11[4] = v8[4];
  v12 = v9;
  v11[0] = v8[0];
  v11[1] = v8[1];
  v11[2] = v8[2];
  sub_1A937B960(v11, &qword_1EB387CF8, &unk_1A95934F0);
  return v6(v10, 0);
}

uint64_t sub_1A94A97F0()
{
  v0 = swift_allocObject();
  sub_1A94B15F4();
  return v0;
}

uint64_t sub_1A94A9828()
{
  v1 = v0;
  v49 = *MEMORY[0x1E69E9840];
  v38 = *(v0 + 16);
  v2 = (*(*v38 + 200))();
  v3 = v2;
  v4 = 0;
  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v4;
LABEL_11:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(v3 + 56) + 88 * (v11 | (v10 << 6));
    v45 = *v12;
    v14 = *(v12 + 32);
    v13 = *(v12 + 48);
    v15 = *(v12 + 57);
    v46 = *(v12 + 16);
    v47 = v14;
    *&v48[9] = v15;
    *v48 = v13;
    v16 = *(v12 + 73);
    if (v16 <= 1)
    {
      if (v16)
      {
LABEL_5:
        v4 = v10;
      }

      else
      {
        v17 = *&v46;
        if (v48[17] == 1)
        {
          v41 = v47;
          v42[0] = *v48;
          *(v42 + 9) = *&v48[9];
          v39 = v45;
          v40 = v46;
          sub_1A94B2E68(&v45, v43);
          sub_1A94B2E68(&v45, v43);
          sub_1A94AB8B4(&v39, v17);
          sub_1A93F03AC(&v45);
          v44[0] = v42[0];
          *(v44 + 9) = *(v42 + 9);
          v43[1] = v40;
          v43[2] = v41;
          v43[0] = v39;
          sub_1A93F03AC(v43);
          v4 = v10;
        }

        else
        {
          v37 = v1;
          v18 = v45;
          v19 = objc_allocWithZone(MEMORY[0x1E698E498]);
          sub_1A94B2E68(&v45, v43);
          sub_1A94B2E68(&v45, v43);
          v20 = sub_1A957C0C8();
          sub_1A93F03AC(&v45);
          v21 = [v19 initWithIdentifier_];

          [v21 setInterval_];
          v22 = v21;
          [v22 setPriority_];
          v23 = *&v48[20];
          LODWORD(v43[0]) = *sub_1A953C318();
          LODWORD(v39) = v23;
          sub_1A93F079C();
          if (sub_1A957CD88())
          {
            v24 = 4;
          }

          else
          {
            v24 = 5;
          }

          [v22 setRequiresProtectionClass_];
          LODWORD(v43[0]) = *sub_1A953C330();
          LODWORD(v39) = v23;
          [v22 setRequiresNetworkConnectivity_];
          [v22 setRandomInitialDelay_];

          v25 = [objc_opt_self() sharedScheduler];
          *&v43[0] = 0;
          v26 = [v25 submitTaskRequest:v22 error:v43];

          v27 = *&v43[0];
          if (v26)
          {
            v36 = *(*v38 + 216);
            sub_1A94B2E68(&v45, v43);
            v28 = v27;
            v29 = v36(v43);
            v31 = sub_1A94A9674(&v39, v18, *(&v18 + 1));
            if (*(v30 + 8))
            {
              *(v30 + 73) = 1;
            }

            (v31)(&v39, 0);
            sub_1A93F03AC(&v45);
            v29(v43, 0);

            sub_1A93F03AC(&v45);
          }

          else
          {
            v32 = *&v43[0];
            v33 = sub_1A957AEF8();

            swift_willThrow();
            sub_1A93F03AC(&v45);
          }

          v4 = v10;
          v1 = v37;
        }
      }
    }

    else
    {
      if (v16 == 2)
      {
        goto LABEL_5;
      }

      v4 = v10;
    }
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  v35 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A94A9CB0(char a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(**(v3 + 16) + 216))(v12);
  v9 = sub_1A94A9674(v11, a2, a3);
  if (*(v8 + 8))
  {
    *(v8 + 73) = a1;
  }

  (v9)(v11, 0);
  return v7(v12, 0);
}

void sub_1A94A9D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = [objc_opt_self() sharedScheduler];
  v9 = sub_1A957C0C8();
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = a3;
  v10[4] = a4;
  v12[4] = sub_1A94B2EA0;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1A9499DC8;
  v12[3] = &unk_1F1CED810;
  v11 = _Block_copy(v12);

  [v8 registerForTaskWithIdentifier:v9 usingQueue:0 launchHandler:v11];
  _Block_release(v11);
}

uint64_t sub_1A94A9EC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = aBlock - v11;
  sub_1A957C648();
  v13 = sub_1A957C688();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v14;
  v15[5] = a1;
  v15[6] = a3;
  v15[7] = a4;
  v16 = a1;

  v17 = sub_1A938A404(0, 0, v12, &unk_1A9594E70, v15);
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a2;
  v18[4] = v16;
  aBlock[4] = sub_1A94B723C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A93C80E8;
  aBlock[3] = &unk_1F1CF9850;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  [v20 setExpirationHandler_];
  _Block_release(v19);
}

uint64_t sub_1A94AA0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[121] = a7;
  v7[120] = a6;
  v7[119] = a5;
  v7[118] = a4;
  v8 = sub_1A957B078();
  v7[122] = v8;
  v9 = *(v8 - 8);
  v7[123] = v9;
  v10 = *(v9 + 64) + 15;
  v7[124] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94AA1B8, 0, 0);
}

uint64_t sub_1A94AA1B8()
{
  v57 = v0;
  v1 = *(v0 + 944);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 1000) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + 16);
    v5 = [*(v0 + 952) identifier];
    v6 = sub_1A957C0F8();
    v8 = v7;

    v9 = (*(*v4 + 200))();
    if (*(v9 + 16))
    {
      v10 = sub_1A937A490(v6, v8);
      v12 = v11;

      if (v12)
      {
        v13 = *(v0 + 992);
        v14 = *(v0 + 984);
        v15 = *(v0 + 976);
        v16 = *(v9 + 56) + 88 * v10;
        v17 = *(v16 + 16);
        *(v0 + 16) = *v16;
        *(v0 + 32) = v17;
        v19 = *(v16 + 48);
        v18 = *(v16 + 64);
        v20 = *(v16 + 32);
        *(v0 + 96) = *(v16 + 80);
        *(v0 + 64) = v19;
        *(v0 + 80) = v18;
        *(v0 + 48) = v20;
        sub_1A94B49FC(v0 + 16, v0 + 104);

        sub_1A957B068();
        sub_1A957B048();
        *(v0 + 1008) = v21;
        v22 = *(v14 + 8);
        *(v0 + 1016) = v22;
        *(v0 + 1024) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v22(v13, v15);
        if (qword_1EB3892A0 != -1)
        {
          swift_once();
        }

        v23 = sub_1A957BC88();
        *(v0 + 1032) = sub_1A937731C(v23, qword_1EB3892A8);
        sub_1A94B49FC(v0 + 16, v0 + 192);
        v24 = sub_1A957BC68();
        v25 = sub_1A957CA58();
        sub_1A94B4A34(v0 + 16);
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v56 = v27;
          *v26 = 136315138;
          v28 = *(v0 + 16);
          v29 = *(v0 + 24);
          sub_1A94B2E68(v0 + 16, v0 + 776);
          v30 = sub_1A937A5C0(v28, v29, &v56);
          sub_1A93F03AC(v0 + 16);
          *(v26 + 4) = v30;
          _os_log_impl(&dword_1A9324000, v24, v25, "Executing task handler for %s", v26, 0xCu);
          sub_1A9378138(v27);
          MEMORY[0x1AC587CD0](v27, -1, -1);
          MEMORY[0x1AC587CD0](v26, -1, -1);
        }

        v31 = *(v0 + 960);
        v32 = *(v0 + 16);
        v33 = *(v0 + 24);
        *(v0 + 1040) = v32;
        *(v0 + 1048) = v33;
        v34 = *(*v3 + 112);
        v35 = *v3 + 112;
        *(v0 + 1056) = v34;
        *(v0 + 1064) = v35 & 0xFFFFFFFFFFFFLL | 0x1662000000000000;
        sub_1A94B2E68(v0 + 16, v0 + 456);
        v34(2, v32, v33);
        sub_1A93F03AC(v0 + 16);
        v55 = (v31 + *v31);
        v36 = v31[1];
        v37 = swift_task_alloc();
        *(v0 + 1072) = v37;
        *v37 = v0;
        v37[1] = sub_1A94AA740;
        v38 = *(v0 + 968);

        return v55();
      }
    }

    else
    {
    }

    if (qword_1EB3892A0 != -1)
    {
      swift_once();
    }

    v40 = *(v0 + 952);
    v41 = sub_1A957BC88();
    sub_1A937731C(v41, qword_1EB3892A8);
    v42 = v40;
    v43 = sub_1A957BC68();
    v44 = sub_1A957CA78();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = *(v0 + 952);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v56 = v47;
      *v46 = 136315138;
      v48 = [v45 identifier];
      v49 = sub_1A957C0F8();
      v51 = v50;

      v52 = sub_1A937A5C0(v49, v51, &v56);

      *(v46 + 4) = v52;
      _os_log_impl(&dword_1A9324000, v43, v44, "Couldn't find task with ID: %s", v46, 0xCu);
      sub_1A9378138(v47);
      MEMORY[0x1AC587CD0](v47, -1, -1);
      MEMORY[0x1AC587CD0](v46, -1, -1);
    }

    [*(v0 + 952) setTaskCompleted];
  }

  v53 = *(v0 + 992);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_1A94AA740()
{
  v2 = *(*v1 + 1072);
  v5 = *v1;
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v3 = sub_1A94AAA70;
  }

  else
  {
    v3 = sub_1A94AA854;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A94AA854()
{
  v25 = v0;
  v1 = *(v0 + 1032);
  [*(v0 + 952) setTaskCompleted];
  sub_1A94B49FC(v0 + 16, v0 + 368);
  v2 = sub_1A957BC68();
  v3 = sub_1A957CA58();
  sub_1A94B4A34(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1048);
    v5 = *(v0 + 1040);
    v23 = *(v0 + 1024);
    v6 = *(v0 + 1016);
    v7 = *(v0 + 1008);
    v8 = *(v0 + 992);
    v9 = *(v0 + 976);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315394;
    sub_1A94B2E68(v0 + 16, v0 + 696);
    v12 = sub_1A937A5C0(v5, v4, &v24);
    sub_1A93F03AC(v0 + 16);
    *(v10 + 4) = v12;
    *(v10 + 12) = 2048;
    sub_1A957B068();
    sub_1A957B048();
    v14 = v13;
    v6(v8, v9);
    *(v10 + 14) = v14 - v7;
    _os_log_impl(&dword_1A9324000, v2, v3, "Finished executing task for %s in %fs", v10, 0x16u);
    sub_1A9378138(v11);
    MEMORY[0x1AC587CD0](v11, -1, -1);
    MEMORY[0x1AC587CD0](v10, -1, -1);
  }

  v15 = *(v0 + 1064);
  v16 = *(v0 + 1056);
  v17 = *(v0 + 1048);
  v18 = *(v0 + 1040);
  v19 = *(v0 + 1000);
  sub_1A94B2E68(v0 + 16, v0 + 616);
  sub_1A94B4A34(v0 + 16);
  v16(3, v18, v17);

  sub_1A93F03AC(v0 + 16);
  v20 = *(v0 + 992);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1A94AAA70()
{
  v41 = v0;
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1032);
  sub_1A94B49FC(v0 + 16, v0 + 280);
  v3 = v1;
  v4 = sub_1A957BC68();
  v5 = sub_1A957CA78();
  sub_1A94B4A34(v0 + 16);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1080);
    v7 = *(v0 + 1048);
    v8 = *(v0 + 1040);
    v38 = *(v0 + 1016);
    v39 = *(v0 + 1024);
    v9 = *(v0 + 1008);
    v10 = *(v0 + 992);
    v11 = *(v0 + 976);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v40 = v13;
    *v12 = 136315650;
    sub_1A94B2E68(v0 + 16, v0 + 536);
    sub_1A94B4A34(v0 + 16);
    v14 = sub_1A937A5C0(v8, v7, &v40);
    sub_1A93F03AC(v0 + 16);
    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v15 = *(v0 + 904);
    v16 = *(v0 + 912);
    v17 = *(v0 + 920);
    v18 = sub_1A957D478();
    v20 = sub_1A937A5C0(v18, v19, &v40);

    *(v12 + 14) = v20;
    *(v12 + 22) = 2048;
    sub_1A957B068();
    sub_1A957B048();
    v22 = v21;
    v38(v10, v11);
    *(v12 + 24) = v22 - v9;
    _os_log_impl(&dword_1A9324000, v4, v5, "Task handler for %s threw %s after %fs", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC587CD0](v13, -1, -1);
    MEMORY[0x1AC587CD0](v12, -1, -1);
  }

  else
  {

    sub_1A94B4A34(v0 + 16);
  }

  v23 = *(v0 + 1080);
  v24 = *(v0 + 1000);
  v25 = *(v0 + 952);
  v26 = [v25 identifier];
  v27 = sub_1A957C0F8();
  v29 = v28;

  swift_getErrorValue();
  v30 = *(v0 + 880);
  v31 = *(v0 + 888);
  v32 = *(v0 + 896);
  v33 = sub_1A957D478();
  sub_1A94AB160(v27, v29, v33, v34, v25);

  v35 = *(v0 + 992);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1A94AAD4C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v14 - v8;
  sub_1A957C748();
  v10 = sub_1A957C688();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a3;

  v12 = a3;
  sub_1A938A404(0, 0, v9, &unk_1A9594E80, v11);
}

uint64_t sub_1A94AAE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A94AAEA8, 0, 0);
}

uint64_t sub_1A94AAEA8()
{
  v1 = *(v0 + 24);
  v2 = [v1 identifier];
  v3 = sub_1A957C0F8();
  v5 = v4;

  sub_1A94AB160(v3, v5, 0xD000000000000016, 0x80000001A95C3F80, v1);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A94AAF70(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v27 = *a1;
  v28 = v3;
  v4 = a1[3];
  v29 = a1[2];
  v30[0] = v4;
  *(v30 + 9) = *(a1 + 57);
  v5 = *(v1 + 16);
  v6 = v27;
  v7 = *(*v5 + 200);
  v8 = sub_1A94B2E68(&v27, v23);
  v9 = v7(v8);
  if (*(v9 + 16) && (v10 = sub_1A937A490(v6, *(&v6 + 1)), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 88 * v10 + 72);

    if ((v12 & 1) == 0)
    {
      return sub_1A93F03AC(&v27);
    }
  }

  else
  {
  }

  *v24 = v30[0];
  *&v24[9] = *(v30 + 9);
  v23[1] = v28;
  v23[2] = v29;
  v23[0] = v27;
  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v14 = *(*v5 + 216);
  sub_1A94B2E68(&v27, v22);
  v15 = v14(v22);
  v17 = v16;
  v18 = *v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v17;
  *v17 = 0x8000000000000000;
  sub_1A94B2EC4(v23, v6, *(&v6 + 1), isUniquelyReferenced_nonNull_native);
  sub_1A93F03AC(&v27);
  *v17 = v21;
  v20 = v15(v22, 0);
  return (*(*v2 + 104))(v20);
}

uint64_t sub_1A94AB160(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = v5;
  v67 = *MEMORY[0x1E69E9840];
  if (qword_1EB3892A0 != -1)
  {
    swift_once();
  }

  v11 = sub_1A957BC88();
  sub_1A937731C(v11, qword_1EB3892A8);

  v12 = sub_1A957BC68();
  v13 = sub_1A957CA78();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v61 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_1A937A5C0(a1, a2, &v61);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1A937A5C0(a3, a4, &v61);
    _os_log_impl(&dword_1A9324000, v12, v13, "Task with id: %s failed with reason: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC587CD0](v15, -1, -1);
    MEMORY[0x1AC587CD0](v14, -1, -1);
  }

  v16 = *(v6 + 16);
  v17 = (*(*v16 + 216))(&v61);
  v19 = sub_1A94A9674(v60, a1, a2);
  if (*(v18 + 8))
  {
    v20 = v18;
    v21 = *(v18 + 80);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v20 + 80) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1A93AC2AC(0, *(v21 + 2) + 1, 1, v21);
      *(v20 + 80) = v21;
    }

    v24 = *(v21 + 2);
    v23 = *(v21 + 3);
    if (v24 >= v23 >> 1)
    {
      v21 = sub_1A93AC2AC((v23 > 1), v24 + 1, 1, v21);
      *(v20 + 80) = v21;
    }

    *(v21 + 2) = v24 + 1;
    v25 = &v21[16 * v24];
    *(v25 + 4) = a3;
    *(v25 + 5) = a4;
    (v19)(v60, 0);
    v26 = v17(&v61, 0);
  }

  else
  {
    (v19)(v60, 0);
    v26 = v17(&v61, 0);
  }

  v27 = (*(*v16 + 200))(v26);
  if (*(v27 + 16))
  {
    v28 = sub_1A937A490(a1, a2);
    if (v29)
    {
      v30 = *(v27 + 56) + 88 * v28;
      v31 = *(v30 + 16);
      v61 = *v30;
      v62 = v31;
      v33 = *(v30 + 48);
      v32 = *(v30 + 64);
      v34 = *(v30 + 32);
      v66 = *(v30 + 80);
      v64 = v33;
      v65 = v32;
      v63 = v34;
      sub_1A94B49FC(&v61, v60);

      if (BYTE1(v65))
      {
        if (v64 == 255)
        {
LABEL_25:
          result = sub_1A94B4A34(&v61);
          goto LABEL_26;
        }

        v35 = *(&v62 + 1);
        v36 = v66;
        v37 = *(v66 + 16);
        if ((v65 & 1) != 0 || v37 < *(&v64 + 1))
        {
          if ((v64 & 1) != 0 && v37)
          {
            do
            {
              if (!v37)
              {
                __break(1u);
              }

              if (*(&v63 + 1) >= *&v63 * v35)
              {
                v35 = *&v63 * v35;
              }

              else
              {
                v35 = *(&v63 + 1);
              }
            }

            while (v35 != *(&v63 + 1) && v37-- != 1);
          }

          v51 = a1;

          sub_1A94B49FC(&v61, v60);
          v52 = sub_1A957BC68();
          v53 = sub_1A957CA58();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v60[0] = v55;
            *v54 = 136315650;
            *(v54 + 4) = sub_1A937A5C0(v51, a2, v60);
            *(v54 + 12) = 2048;
            *(v54 + 14) = v35;
            *(v54 + 22) = 2048;
            *(v54 + 24) = *(v36 + 16);
            sub_1A94B4A34(&v61);
            _os_log_impl(&dword_1A9324000, v52, v53, "Task with id: %s expired with retry delay %f after %ld attempts", v54, 0x20u);
            sub_1A9378138(v55);
            MEMORY[0x1AC587CD0](v55, -1, -1);
            MEMORY[0x1AC587CD0](v54, -1, -1);
          }

          else
          {
            sub_1A94B4A34(&v61);
          }

          if (a5)
          {
            v60[0] = 0;
            if ([a5 setTaskExpiredWithRetryAfter:v60 error:v35])
            {
              v56 = v60[0];
            }

            else
            {
              v57 = v60[0];
              v58 = sub_1A957AEF8();

              swift_willThrow();
            }
          }

          goto LABEL_25;
        }

        v38 = a1;

        sub_1A94B49FC(&v61, v60);
        v39 = sub_1A957BC68();
        v40 = sub_1A957CA58();

        if (!os_log_type_enabled(v39, v40))
        {
          sub_1A94B4A34(&v61);
          goto LABEL_24;
        }

        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v60[0] = v42;
        *v41 = 136315394;
        *(v41 + 4) = sub_1A937A5C0(v38, a2, v60);
        *(v41 + 12) = 2048;
        *(v41 + 14) = *(v36 + 16);
        sub_1A94B4A34(&v61);
        _os_log_impl(&dword_1A9324000, v39, v40, "Task with id: %s failed after %ld attempts", v41, 0x16u);
        sub_1A9378138(v42);
        MEMORY[0x1AC587CD0](v42, -1, -1);
        v43 = v41;
      }

      else
      {
        v45 = a1;

        v39 = sub_1A957BC68();
        v46 = sub_1A957CA78();

        if (!os_log_type_enabled(v39, v46))
        {
LABEL_24:

          [a5 setTaskCompleted];
          goto LABEL_25;
        }

        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v60[0] = v48;
        *v47 = 136315138;
        *(v47 + 4) = sub_1A937A5C0(v45, a2, v60);
        _os_log_impl(&dword_1A9324000, v39, v46, "Task with id: %s is periodic and failed.", v47, 0xCu);
        sub_1A9378138(v48);
        MEMORY[0x1AC587CD0](v48, -1, -1);
        v43 = v47;
      }

      MEMORY[0x1AC587CD0](v43, -1, -1);
      goto LABEL_24;
    }
  }

LABEL_26:
  v49 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A94AB8B4(uint64_t a1, double a2)
{
  v46[4] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 68);
  v6 = objc_opt_self();
  v7 = [v6 sharedScheduler];
  v8 = sub_1A957C0C8();
  v9 = [v7 taskRequestForIdentifier_];

  if (v9)
  {

    v10 = [v6 sharedScheduler];
    v11 = sub_1A957C0C8();
    v46[0] = 0;
    v12 = [v10 cancelTaskRequestWithIdentifier:v11 error:v46];

    if (v12)
    {
      v13 = v46[0];
    }

    else
    {
      v14 = v46[0];
      v15 = sub_1A957AEF8();

      swift_willThrow();
    }
  }

  if (qword_1EB3892A0 != -1)
  {
    swift_once();
  }

  v16 = sub_1A957BC88();
  sub_1A937731C(v16, qword_1EB3892A8);

  v17 = sub_1A957BC68();
  v18 = sub_1A957CA58();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v46[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1A937A5C0(v3, v4, v46);
    _os_log_impl(&dword_1A9324000, v17, v18, "Scheduling task handler for %s", v19, 0xCu);
    sub_1A9378138(v20);
    MEMORY[0x1AC587CD0](v20, -1, -1);
    MEMORY[0x1AC587CD0](v19, -1, -1);
  }

  v21 = objc_allocWithZone(MEMORY[0x1E698E480]);
  v22 = sub_1A957C0C8();
  v23 = [v21 initWithIdentifier_];

  v24 = v23;
  [v24 setPriority_];
  if (a2 > 0.0)
  {
    [v24 setScheduleAfter_];
  }

  [v24 setTrySchedulingBefore_];
  LODWORD(v46[0]) = *sub_1A953C318();
  LODWORD(v45[0]) = v5;
  sub_1A93F079C();
  if (sub_1A957CD88())
  {
    v25 = 4;
  }

  else
  {
    v25 = 5;
  }

  [v24 setRequiresProtectionClass_];
  LODWORD(v46[0]) = *sub_1A953C330();
  LODWORD(v45[0]) = v5;
  [v24 setRequiresNetworkConnectivity_];
  [v24 setRandomInitialDelay_];

  v26 = [v6 sharedScheduler];
  v46[0] = 0;
  v27 = [v26 submitTaskRequest:v24 error:v46];

  if (v27)
  {
    v28 = *(**(v44 + 16) + 216);
    v29 = v46[0];
    v30 = v28(v46);
    v32 = sub_1A94A9674(v45, v3, v4);
    if (*(v31 + 8))
    {
      *(v31 + 73) = 1;
    }

    (v32)(v45, 0);
    v30(v46, 0);
  }

  else
  {
    v33 = v46[0];
    v34 = sub_1A957AEF8();

    swift_willThrow();

    v35 = v34;
    v36 = sub_1A957BC68();
    v37 = sub_1A957CA78();

    if (!os_log_type_enabled(v36, v37))
    {

      goto LABEL_22;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v46[0] = v39;
    *v38 = 136315394;
    *(v38 + 4) = sub_1A937A5C0(v3, v4, v46);
    *(v38 + 12) = 2080;
    swift_getErrorValue();
    v40 = sub_1A957D478();
    v42 = sub_1A937A5C0(v40, v41, v46);

    *(v38 + 14) = v42;
    _os_log_impl(&dword_1A9324000, v36, v37, "Failed schedule task %s: %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC587CD0](v39, -1, -1);
    MEMORY[0x1AC587CD0](v38, -1, -1);
  }

LABEL_22:
  v43 = *MEMORY[0x1E69E9840];
}

uint64_t TTSTaskRunner.TaskConfiguration.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

__n128 TTSTaskRunner.TaskConfiguration.type.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  result = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v1 + 64);
  return result;
}

__n128 TTSTaskRunner.TaskConfiguration.init(identifier:type:requiredConditions:cardinality:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a4;
  v7 = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  v8 = *(a3 + 16);
  *(a6 + 16) = *a3;
  *(a6 + 32) = v8;
  result = *(a3 + 32);
  *(a6 + 48) = result;
  *(a6 + 64) = *(a3 + 48);
  *(a6 + 68) = v6;
  *(a6 + 72) = v7;
  return result;
}

uint64_t sub_1A94ABF34()
{
  if (*v0)
  {
    result = 0x656C7069746C756DLL;
  }

  else
  {
    result = 1701015151;
  }

  *v0;
  return result;
}

uint64_t sub_1A94ABF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701015151 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C7069746C756DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A94AC044(uint64_t a1)
{
  v2 = sub_1A94B3064();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AC080(uint64_t a1)
{
  v2 = sub_1A94B3064();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AC0BC(uint64_t a1)
{
  v2 = sub_1A94B30B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AC0F8(uint64_t a1)
{
  v2 = sub_1A94B30B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AC134(uint64_t a1)
{
  v2 = sub_1A94B310C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AC170(uint64_t a1)
{
  v2 = sub_1A94B310C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSTaskRunner.TaskConfiguration.Cardinality.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB387D00, &qword_1A9593500);
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v25 = &v23 - v6;
  v7 = sub_1A937829C(&qword_1EB387D08, &qword_1A9593508);
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v23 - v10;
  v12 = sub_1A937829C(&qword_1EB387D10, &qword_1A9593510);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94B3064();
  sub_1A957D598();
  v20 = (v13 + 8);
  if (v18)
  {
    v29 = 1;
    sub_1A94B30B8();
    v21 = v25;
    sub_1A957D288();
    (*(v26 + 8))(v21, v27);
  }

  else
  {
    v28 = 0;
    sub_1A94B310C();
    sub_1A957D288();
    (*(v23 + 8))(v11, v24);
  }

  return (*v20)(v17, v12);
}

uint64_t TTSTaskRunner.TaskConfiguration.Cardinality.hashValue.getter()
{
  v1 = *v0;
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  return sub_1A957D548();
}

uint64_t TTSTaskRunner.TaskConfiguration.Cardinality.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = sub_1A937829C(&qword_1EB387D18, &qword_1A9593518);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v33 - v7;
  v9 = sub_1A937829C(&qword_1EB387D20, &qword_1A9593520);
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v33 - v12;
  v14 = sub_1A937829C(&qword_1EB387D28, &unk_1A9593528);
  v38 = *(v14 - 8);
  v15 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v33 - v17;
  v19 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94B3064();
  v20 = v40;
  sub_1A957D588();
  if (v20)
  {
    goto LABEL_7;
  }

  v34 = v9;
  v40 = a1;
  v22 = v38;
  v21 = v39;
  v23 = v18;
  v24 = sub_1A957D268();
  if (*(v24 + 16) != 1)
  {
    v26 = sub_1A957CF58();
    swift_allocError();
    v28 = v27;
    v29 = *(sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0) + 48);
    *v28 = &type metadata for TTSTaskRunner.TaskConfiguration.Cardinality;
    sub_1A957D188();
    sub_1A957CF48();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    (*(v22 + 8))(v23, v14);
    swift_unknownObjectRelease();
    a1 = v40;
LABEL_7:
    v31 = a1;
    return sub_1A9378138(v31);
  }

  v33 = v24;
  v25 = *(v24 + 32);
  if (v25)
  {
    v42 = 1;
    sub_1A94B30B8();
    sub_1A957D178();
    (*(v37 + 8))(v8, v36);
  }

  else
  {
    v30 = *(v24 + 32);
    v41 = 0;
    sub_1A94B310C();
    sub_1A957D178();
    (*(v35 + 8))(v13, v34);
  }

  (*(v22 + 8))(v23, v14);
  swift_unknownObjectRelease();
  *v21 = v25;
  v31 = v40;
  return sub_1A9378138(v31);
}

double static TTSTaskRunner.TaskConfiguration.TaskType.immediate.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 255;
  *(a1 + 32) = xmmword_1A95913D0;
  *(a1 + 48) = 256;
  return result;
}

double static TTSTaskRunner.TaskConfiguration.TaskType.immediateWithStandardRetry.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_1A95934D0;
  result = 3600.0;
  *(a1 + 24) = xmmword_1A95934E0;
  *(a1 + 40) = 5;
  *(a1 + 48) = 256;
  return result;
}

uint64_t sub_1A94AC9B4()
{
  if (*v0)
  {
    result = 0x79616C6564;
  }

  else
  {
    result = 0x6369646F69726570;
  }

  *v0;
  return result;
}

uint64_t sub_1A94AC9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6369646F69726570 && a2 == 0xE800000000000000;
  if (v6 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79616C6564 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A94ACAC4(uint64_t a1)
{
  v2 = sub_1A94B3160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94ACB00(uint64_t a1)
{
  v2 = sub_1A94B3160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94ACB3C()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1A94ACB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A94ACC24(uint64_t a1)
{
  v2 = sub_1A94B31B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94ACC60(uint64_t a1)
{
  v2 = sub_1A94B31B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94ACC9C(uint64_t a1)
{
  v2 = sub_1A94B325C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94ACCD8(uint64_t a1)
{
  v2 = sub_1A94B325C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSTaskRunner.TaskConfiguration.TaskType.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB387D30, &qword_1A9593538);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v31 = &v25[-v6];
  v7 = sub_1A937829C(&qword_1EB387D38, &qword_1A9593540);
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v25[-v10];
  v35 = sub_1A937829C(&qword_1EB387D40, &qword_1A9593548);
  v12 = *(v35 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v35, v14);
  v16 = &v25[-v15];
  v17 = *v1;
  v18 = *(v1 + 1);
  v28 = *(v1 + 3);
  v29 = v18;
  v27 = v1[5];
  v26 = *(v1 + 48);
  v19 = *(v1 + 49);
  v20 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94B3160();
  sub_1A957D598();
  if (v19)
  {
    LOBYTE(v37) = 1;
    sub_1A94B31B4();
    v11 = v31;
    v21 = v35;
    sub_1A957D288();
    LOBYTE(v37) = 0;
    v7 = v33;
    v22 = v34;
    sub_1A957D308();
    if (v22)
    {
      (*(v32 + 8))(v11, v7);
      return (*(v12 + 8))(v16, v21);
    }

    v37 = v29;
    v38 = v28;
    v39 = v27;
    v40 = v26;
    v36 = 1;
    sub_1A94B3208();
    sub_1A957D338();
    v24 = v32;
  }

  else
  {
    LOBYTE(v37) = 0;
    sub_1A94B325C();
    v21 = v35;
    sub_1A957D288();
    sub_1A957D308();
    v24 = v30;
  }

  (*(v24 + 8))(v11, v7);
  return (*(v12 + 8))(v16, v21);
}

uint64_t TTSTaskRunner.TaskConfiguration.TaskType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1A937829C(&qword_1EB387D48, &qword_1A9593550);
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v51 - v7;
  v9 = sub_1A937829C(&qword_1EB387D50, &qword_1A9593558);
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v51 - v12;
  v14 = sub_1A937829C(&qword_1EB387D58, &qword_1A9593560);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v51 - v18;
  v20 = a1[3];
  v21 = a1[4];
  v57 = a1;
  sub_1A93780F4(a1, v20);
  sub_1A94B3160();
  v22 = v56;
  sub_1A957D588();
  if (!v22)
  {
    v56 = v15;
    v23 = v55;
    v24 = sub_1A957D268();
    v25 = v14;
    if (*(v24 + 16) == 1)
    {
      v26 = v19;
      if (*(v24 + 32))
      {
        LOBYTE(v60) = 1;
        sub_1A94B31B4();
        v27 = v8;
        v28 = v26;
        v29 = v25;
        sub_1A957D178();
        v38 = v23;
        LOBYTE(v60) = 0;
        v39 = v53;
        v40 = v27;
        sub_1A957D208();
        v41 = v56;
        v44 = v43;
        v45 = 1;
        v59 = 1;
        sub_1A94B32B0();
        sub_1A957D238();
        (*(v54 + 8))(v40, v39);
        (*(v41 + 8))(v28, v29);
        swift_unknownObjectRelease();
        v47 = v60;
        v48 = v61;
        v49 = v62;
        v50 = v63;
        v58 = 1;
      }

      else
      {
        LOBYTE(v60) = 0;
        sub_1A94B325C();
        v34 = v13;
        v35 = v19;
        v36 = v25;
        sub_1A957D178();
        v38 = v23;
        sub_1A957D208();
        v42 = (v56 + 8);
        v44 = v46;
        (*(v52 + 8))(v34, v9);
        (*v42)(v35, v36);
        swift_unknownObjectRelease();
        v45 = 0;
      }

      *v38 = v44;
      *(v38 + 8) = v47;
      *(v38 + 24) = v48;
      *(v38 + 40) = v49;
      *(v38 + 48) = v50;
      *(v38 + 49) = v45;
    }

    else
    {
      v30 = sub_1A957CF58();
      swift_allocError();
      v32 = v31;
      v33 = *(sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0) + 48);
      *v32 = &type metadata for TTSTaskRunner.TaskConfiguration.TaskType;
      sub_1A957D188();
      sub_1A957CF48();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
      (*(v56 + 8))(v19, v14);
      swift_unknownObjectRelease();
    }
  }

  return sub_1A9378138(v57);
}

uint64_t sub_1A94AD6D4()
{
  if (*v0)
  {
    result = 0x746E656E6F707865;
  }

  else
  {
    result = 0x7261656E696CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1A94AD714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7261656E696CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656E6F707865 && a2 == 0xEB000000006C6169)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A94AD7F0(uint64_t a1)
{
  v2 = sub_1A94B3304();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AD82C(uint64_t a1)
{
  v2 = sub_1A94B3304();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AD868()
{
  v1 = 0x696C7069746C756DLL;
  if (*v0 != 1)
  {
    v1 = 7889261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1A94AD8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A94B3D10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A94AD8E4(uint64_t a1)
{
  v2 = sub_1A94B3358();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AD920(uint64_t a1)
{
  v2 = sub_1A94B3358();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AD95C(uint64_t a1)
{
  v2 = sub_1A94B33AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AD998(uint64_t a1)
{
  v2 = sub_1A94B33AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSTaskRunner.TaskConfiguration.FailureBehavior.RetryStrategy.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB387D60, &qword_1A9593568);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v31 = &v28 - v6;
  v7 = sub_1A937829C(&qword_1EB387D68, &qword_1A9593570);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v28 - v10;
  v12 = sub_1A937829C(&qword_1EB387D70, &qword_1A9593578);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v28 - v16;
  v18 = *v1;
  v19 = v1[1];
  v20 = v1[2];
  v21 = *(v1 + 24);
  v22 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94B3304();
  sub_1A957D598();
  if (v21)
  {
    v39 = 1;
    sub_1A94B3358();
    v23 = v31;
    sub_1A957D288();
    v38 = 0;
    v25 = v33;
    v24 = v34;
    sub_1A957D308();
    if (v24)
    {
      (*(v32 + 8))(v23, v25);
      return (*(v13 + 8))(v17, v12);
    }

    v37 = 1;
    sub_1A957D308();
    v36 = 2;
    sub_1A957D308();
    (*(v32 + 8))(v23, v25);
  }

  else
  {
    v35 = 0;
    sub_1A94B33AC();
    sub_1A957D288();
    v27 = v30;
    sub_1A957D308();
    (*(v29 + 8))(v11, v27);
  }

  return (*(v13 + 8))(v17, v12);
}

uint64_t TTSTaskRunner.TaskConfiguration.FailureBehavior.RetryStrategy.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v45 = sub_1A937829C(&qword_1EB387D78, &qword_1A9593580);
  v47 = *(v45 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45, v4);
  v6 = &v43 - v5;
  v7 = sub_1A937829C(&qword_1EB387D80, &qword_1A9593588);
  *&v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v43 - v10;
  v12 = sub_1A937829C(&qword_1EB387D88, &qword_1A9593590);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v43 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v50 = a1;
  sub_1A93780F4(a1, v18);
  sub_1A94B3304();
  v20 = v49;
  sub_1A957D588();
  if (!v20)
  {
    v21 = v7;
    v22 = v48;
    v49 = v13;
    v23 = sub_1A957D268();
    if (*(v23 + 16) == 1)
    {
      v24 = v17;
      v44 = v23;
      v25 = *(v23 + 32);
      if (v25)
      {
        v55 = 1;
        sub_1A94B3358();
        v26 = v6;
        v27 = v24;
        sub_1A957D178();
        v54 = 0;
        v33 = v45;
        v34 = v26;
        sub_1A957D208();
        v35 = v49;
        v38 = v37;
        v53 = 1;
        sub_1A957D208();
        v39 = v47;
        v46 = v40;
        v52 = 2;
        sub_1A957D208();
        v43 = v41;
        (*(v39 + 8))(v34, v33);
        (*(v35 + 8))(v27, v12);
        swift_unknownObjectRelease();
        *&v42 = v46;
        *(&v42 + 1) = v43;
      }

      else
      {
        v51 = 0;
        sub_1A94B33AC();
        sub_1A957D178();
        sub_1A957D208();
        v38 = v36;
        (*(v46 + 8))(v11, v21);
        (*(v49 + 8))(v17, v12);
        swift_unknownObjectRelease();
        v42 = 0uLL;
      }

      *v22 = v38;
      *(v22 + 8) = v42;
      *(v22 + 24) = v25;
    }

    else
    {
      v28 = sub_1A957CF58();
      swift_allocError();
      v30 = v29;
      v31 = *(sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0) + 48);
      *v30 = &type metadata for TTSTaskRunner.TaskConfiguration.FailureBehavior.RetryStrategy;
      sub_1A957D188();
      sub_1A957CF48();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v49 + 8))(v17, v12);
      swift_unknownObjectRelease();
    }
  }

  return sub_1A9378138(v50);
}

uint64_t sub_1A94AE30C()
{
  if (*v0)
  {
    result = 1818845542;
  }

  else
  {
    result = 0x7972746572;
  }

  *v0;
  return result;
}

uint64_t sub_1A94AE33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972746572 && a2 == 0xE500000000000000;
  if (v6 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1818845542 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A94AE414(uint64_t a1)
{
  v2 = sub_1A94B3400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AE450(uint64_t a1)
{
  v2 = sub_1A94B3400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AE48C(uint64_t a1)
{
  v2 = sub_1A94B3454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AE4C8(uint64_t a1)
{
  v2 = sub_1A94B3454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AE504()
{
  if (*v0)
  {
    result = 0x6D6574744178616DLL;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_1A94AE53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6574744178616DLL && a2 == 0xEB00000000737470)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A94AE614(uint64_t a1)
{
  v2 = sub_1A94B34A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AE650(uint64_t a1)
{
  v2 = sub_1A94B34A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSTaskRunner.TaskConfiguration.FailureBehavior.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB387D90, &qword_1A9593598);
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v27 - v6;
  v8 = sub_1A937829C(&qword_1EB387D98, &qword_1A95935A0);
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v27 - v11;
  v35 = sub_1A937829C(&qword_1EB387DA0, &qword_1A95935A8);
  v13 = *(v35 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v35, v15);
  v17 = &v27 - v16;
  v18 = *v1;
  v29 = v1[1];
  v30 = v18;
  v19 = v1[2];
  v20 = *(v1 + 24);
  v27 = v1[4];
  v28 = v19;
  v41 = *(v1 + 40);
  v21 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94B3400();
  sub_1A957D598();
  if (v20 == 255)
  {
    LOBYTE(v37) = 1;
    sub_1A94B3454();
    v22 = v35;
    sub_1A957D288();
    (*(v31 + 8))(v7, v32);
    return (*(v13 + 8))(v17, v22);
  }

  else
  {
    LOBYTE(v37) = 0;
    sub_1A94B34A8();
    v24 = v35;
    sub_1A957D288();
    v37 = v30;
    v38 = v29;
    v39 = v28;
    v40 = v20 & 1;
    v42 = 0;
    sub_1A94B34FC();
    v25 = v34;
    v26 = v36;
    sub_1A957D338();
    if (!v26)
    {
      LOBYTE(v37) = 1;
      sub_1A957D2A8();
    }

    (*(v33 + 8))(v12, v25);
    return (*(v13 + 8))(v17, v24);
  }
}

uint64_t TTSTaskRunner.TaskConfiguration.FailureBehavior.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  *&v38 = sub_1A937829C(&qword_1EB387DA8, &qword_1A95935B0);
  v39 = *(v38 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38, v4);
  v6 = &v38 - v5;
  v7 = sub_1A937829C(&qword_1EB387DB0, &qword_1A95935B8);
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v38 - v10;
  v12 = sub_1A937829C(&qword_1EB387DB8, &qword_1A95935C0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v38 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v43 = a1;
  sub_1A93780F4(a1, v18);
  sub_1A94B3400();
  v20 = v42;
  sub_1A957D588();
  if (v20)
  {
    return sub_1A9378138(v43);
  }

  v21 = v13;
  v22 = v41;
  v23 = sub_1A957D268();
  v24 = *(v23 + 16);
  v42 = v23;
  if (v24 != 1)
  {
    v31 = sub_1A957CF58();
    swift_allocError();
    v33 = v32;
    v34 = *(sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0) + 48);
    *v33 = &type metadata for TTSTaskRunner.TaskConfiguration.FailureBehavior;
    sub_1A957D188();
    sub_1A957CF48();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
    swift_willThrow();
    (*(v21 + 8))(v17, v12);
    swift_unknownObjectRelease();
    return sub_1A9378138(v43);
  }

  if (*(v23 + 32))
  {
    LOBYTE(v44) = 1;
    sub_1A94B3454();
    sub_1A957D178();
    v25 = 0;
    (*(v39 + 8))(v6, v38);
    (*(v21 + 8))(v17, v12);
    swift_unknownObjectRelease();
    v26 = 0;
    v27 = 0;
    v28 = 0uLL;
    v29 = 255;
  }

  else
  {
    LOBYTE(v44) = 0;
    sub_1A94B34A8();
    sub_1A957D178();
    v47 = 0;
    sub_1A94B3550();
    sub_1A957D238();
    v39 = v12;
    v38 = v44;
    v26 = v45;
    v35 = v11;
    v29 = v46;
    v47 = 1;
    v25 = sub_1A957D1A8();
    v36 = v35;
    LOBYTE(v35) = v37;
    (*(v40 + 8))(v36, v7);
    (*(v21 + 8))(v17, v39);
    swift_unknownObjectRelease();
    v27 = v35 & 1;
    v28 = v38;
  }

  *v22 = v28;
  *(v22 + 16) = v26;
  *(v22 + 24) = v29;
  *(v22 + 32) = v25;
  *(v22 + 40) = v27;
  return sub_1A9378138(v43);
}

unint64_t sub_1A94AEF84()
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x6C616E6964726163;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_1A94AF008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A94B3E2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A94AF030(uint64_t a1)
{
  v2 = sub_1A94B35A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AF06C(uint64_t a1)
{
  v2 = sub_1A94B35A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSTaskRunner.TaskConfiguration.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1A937829C(&qword_1EB387DC0, &qword_1A95935C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v18 - v8;
  v10 = *v2;
  v11 = v2[1];
  v24 = *(v2 + 17);
  HIDWORD(v18) = *(v2 + 72);
  v12 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94B35A4();
  sub_1A957D598();
  LOBYTE(v20) = 0;
  v13 = v19;
  sub_1A957D2E8();
  if (!v13)
  {
    v14 = v24;
    v15 = BYTE4(v18);
    v16 = *(v2 + 2);
    v20 = *(v2 + 1);
    v21 = v16;
    v22 = *(v2 + 3);
    v23 = *(v2 + 32);
    v25 = 1;
    sub_1A94B35F8();
    sub_1A957D338();
    LODWORD(v20) = v14;
    v25 = 2;
    sub_1A94B364C();
    sub_1A957D338();
    LOBYTE(v20) = v15;
    v25 = 3;
    sub_1A94B36A0();
    sub_1A957D338();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t TTSTaskRunner.TaskConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v45 = sub_1A937829C(&qword_1EB387DC8, &qword_1A95935D0);
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v45, v7);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94B35A4();
  sub_1A957D588();
  if (v2)
  {
    return sub_1A9378138(a1);
  }

  v11 = v5;
  LOBYTE(v27[0]) = 0;
  v12 = v45;
  v13 = sub_1A957D1E8();
  v15 = v14;
  v24 = v13;
  v36 = 1;
  sub_1A94B36F4();
  sub_1A957D238();
  v41 = v37;
  v42 = v38;
  v43 = v39;
  v44 = v40;
  LOBYTE(v25[0]) = 2;
  sub_1A94B3748();
  sub_1A957D238();
  v23 = v27[0];
  v34 = 3;
  sub_1A94B379C();
  sub_1A957D238();
  (*(v11 + 8))(v9, v12);
  v16 = v35;
  v17 = v24;
  *&v25[0] = v24;
  *(&v25[0] + 1) = v15;
  LOWORD(v26[1]) = v44;
  v18 = v43;
  v26[0] = v43;
  v19 = v41;
  v25[1] = v41;
  v25[2] = v42;
  v20 = v23;
  DWORD1(v26[1]) = v23;
  BYTE8(v26[1]) = v35;
  a2[2] = v42;
  a2[3] = v18;
  *a2 = v25[0];
  a2[1] = v19;
  *(a2 + 57) = *(v26 + 9);
  sub_1A94B2E68(v25, v27);
  sub_1A9378138(a1);
  v27[0] = v17;
  v27[1] = v15;
  v28 = v41;
  v29 = v42;
  v30 = v43;
  v31 = v44;
  v32 = v20;
  v33 = v16;
  return sub_1A93F03AC(v27);
}

uint64_t sub_1A94AF624()
{
  v1 = *v0;
  v2 = 0x676E69646E6570;
  v3 = 0x676E696E6E7572;
  v4 = 0x6574656C706D6F63;
  if (v1 != 3)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C756465686373;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A94AF6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A94B3FA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A94AF6EC(uint64_t a1)
{
  v2 = sub_1A94B37F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AF728(uint64_t a1)
{
  v2 = sub_1A94B37F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AF764(uint64_t a1)
{
  v2 = sub_1A94B3898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AF7A0(uint64_t a1)
{
  v2 = sub_1A94B3898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AF7DC(uint64_t a1)
{
  v2 = sub_1A94B3844();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AF818(uint64_t a1)
{
  v2 = sub_1A94B3844();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AF854(uint64_t a1)
{
  v2 = sub_1A94B3994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AF890(uint64_t a1)
{
  v2 = sub_1A94B3994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AF8CC(uint64_t a1)
{
  v2 = sub_1A94B38EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AF908(uint64_t a1)
{
  v2 = sub_1A94B38EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AF944(uint64_t a1)
{
  v2 = sub_1A94B3940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AF980(uint64_t a1)
{
  v2 = sub_1A94B3940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AF9BC(void *a1, int a2)
{
  v53 = a2;
  v3 = sub_1A937829C(&qword_1EB387DD0, &qword_1A95935D8);
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v48 = &v42 - v6;
  v7 = sub_1A937829C(&qword_1EB387DD8, &qword_1A95935E0);
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v45 = &v42 - v10;
  v11 = sub_1A937829C(&qword_1EB387DE0, &qword_1A95935E8);
  v43 = *(v11 - 8);
  v44 = v11;
  v12 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v42 = &v42 - v14;
  v15 = sub_1A937829C(&qword_1EB387DE8, &qword_1A95935F0);
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v42 - v18;
  v20 = sub_1A937829C(&qword_1EB387DF0, &qword_1A95935F8);
  v51 = *(v20 - 8);
  v21 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v42 - v23;
  v54 = sub_1A937829C(&qword_1EB387DF8, &qword_1A9593600);
  v25 = *(v54 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v54, v27);
  v29 = &v42 - v28;
  v30 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94B37F0();
  sub_1A957D598();
  v31 = (v25 + 8);
  if (v53 <= 1u)
  {
    v37 = v51;
    v36 = v52;
    if (v53)
    {
      v56 = 1;
      sub_1A94B3940();
      v41 = v54;
      sub_1A957D288();
      (*(v36 + 8))(v19, v15);
      return (*v31)(v29, v41);
    }

    v55 = 0;
    sub_1A94B3994();
    v38 = v54;
    sub_1A957D288();
    (*(v37 + 8))(v24, v20);
    return (*v31)(v29, v38);
  }

  if (v53 == 2)
  {
    v57 = 2;
    sub_1A94B38EC();
    v39 = v42;
    v38 = v54;
    sub_1A957D288();
    (*(v43 + 8))(v39, v44);
    return (*v31)(v29, v38);
  }

  if (v53 == 3)
  {
    v58 = 3;
    sub_1A94B3898();
    v32 = v45;
    v33 = v54;
    sub_1A957D288();
    v35 = v46;
    v34 = v47;
  }

  else
  {
    v59 = 4;
    sub_1A94B3844();
    v32 = v48;
    v33 = v54;
    sub_1A957D288();
    v35 = v49;
    v34 = v50;
  }

  (*(v35 + 8))(v32, v34);
  return (*v31)(v29, v33);
}

uint64_t sub_1A94AFF30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A94B4160(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1A94AFF78()
{
  v1 = 0x6574617473;
  if (*v0 != 1)
  {
    v1 = 0x736572756C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72756769666E6F63;
  }
}

uint64_t sub_1A94AFFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A94B653C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A94B0004(uint64_t a1)
{
  v2 = sub_1A94B4858();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94B0040(uint64_t a1)
{
  v2 = sub_1A94B4858();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94B007C(void *a1)
{
  v4 = sub_1A937829C(&qword_1EB387E00, &unk_1A9593608);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  v10 = v1[3];
  v30 = v1[2];
  v31[0] = v10;
  *(v31 + 9) = *(v1 + 57);
  v11 = v1[1];
  v28 = *v1;
  v29 = v11;
  v32 = *(v1 + 73);
  v16 = *(v1 + 10);
  v12 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94B2E68(&v28, &v24);
  sub_1A94B4858();
  sub_1A957D598();
  v26 = v30;
  v27[0] = v31[0];
  *(v27 + 9) = *(v31 + 9);
  v24 = v28;
  v25 = v29;
  v23 = 0;
  sub_1A94B48AC();
  sub_1A957D338();
  if (v2)
  {
    v21 = v26;
    *v22 = v27[0];
    *&v22[9] = *(v27 + 9);
    v19 = v24;
    v20 = v25;
    sub_1A93F03AC(&v19);
  }

  else
  {
    v13 = v16;
    v21 = v26;
    *v22 = v27[0];
    *&v22[9] = *(v27 + 9);
    v19 = v24;
    v20 = v25;
    sub_1A93F03AC(&v19);
    LOBYTE(v17) = v32;
    v18 = 1;
    sub_1A94B4900();
    sub_1A957D338();
    v17 = v13;
    v18 = 2;
    sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
    sub_1A9442BB0(&qword_1EB385F88);
    sub_1A957D338();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1A94B0320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = sub_1A937829C(&qword_1EB387E08, &unk_1A9593618);
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v40, v7);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94B4858();
  sub_1A957D588();
  if (v2)
  {
    return sub_1A9378138(a1);
  }

  v11 = v5;
  v31 = 0;
  sub_1A94B4954();
  v12 = v40;
  sub_1A957D238();
  v38 = v34;
  v39[0] = v35[0];
  *(v39 + 9) = *(v35 + 9);
  v36 = v32;
  v37 = v33;
  LOBYTE(v22[0]) = 1;
  sub_1A94B49A8();
  sub_1A957D238();
  v21 = LOBYTE(v25[0]);
  sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
  v29 = 2;
  sub_1A9442BB0(&qword_1EB3863D0);
  sub_1A957D238();
  (*(v11 + 8))(v9, v12);
  v13 = v30;
  v14 = v38;
  v22[2] = v38;
  v23[0] = v39[0];
  *(v23 + 9) = *(v39 + 9);
  v16 = v36;
  v15 = v37;
  v22[0] = v36;
  v22[1] = v37;
  LOBYTE(v12) = v21;
  BYTE9(v23[1]) = v21;
  v24 = v30;
  *(a2 + 80) = v30;
  *a2 = v16;
  *(a2 + 16) = v15;
  v17 = v23[0];
  v18 = v23[1];
  *(a2 + 32) = v14;
  *(a2 + 48) = v17;
  *(a2 + 64) = v18;
  sub_1A94B49FC(v22, v25);
  sub_1A9378138(a1);
  v25[2] = v38;
  *v26 = v39[0];
  *&v26[9] = *(v39 + 9);
  v25[0] = v36;
  v25[1] = v37;
  v27 = v12;
  v28 = v13;
  return sub_1A94B4A34(v25);
}

uint64_t sub_1A94B0698()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_1A94B72E4(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_1A94B0714@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A957B9F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  if (*(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    sub_1A937829C(&qword_1EB387E18, &qword_1A9593630);
    swift_retain_n();
    sub_1A957BA08();
    type metadata accessor for TTSTaskRunner.Store();
    sub_1A94B6DB0(&qword_1EB385FC8, sub_1A94B6D5C);
    sub_1A94B6DB0(&qword_1EB385FD0, sub_1A94B6E34);
    sub_1A94B66F8(&qword_1EB386170, v8, type metadata accessor for TTSTaskRunner.Store);
    v7 = sub_1A957B8D8();
    v9 = *(a1 + 16);
    *(a1 + 16) = v7;
  }

  *a2 = v7;
}

unint64_t sub_1A94B0930@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A94B6E88(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_1A94B0988()
{
  (*(*v0 + 184))();
  sub_1A957B8E8();

  return v2;
}

uint64_t sub_1A94B09E8()
{
  (*(*v0 + 184))();
  sub_1A957B8F8();
}

void (*sub_1A94B0A4C(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *(*v1 + 184);
  v6 = (*v1 + 184) & 0xFFFFFFFFFFFFLL | 0x6C48000000000000;
  v3[3] = v5;
  v3[4] = v6;
  v5();
  sub_1A957B8E8();

  *v4 = v4[1];
  return sub_1A93E9B5C;
}

uint64_t sub_1A94B0B08()
{
  v1 = *(v0 + 40);

  os_unfair_lock_lock(v1 + 4);
  sub_1A94B4B04(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_1A94B0B84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A957B9F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  if (*(a1 + 32))
  {
    v7 = *(a1 + 32);
  }

  else
  {
    sub_1A937829C(&qword_1EB387E28, &qword_1A9593638);

    sub_1A957BA08();
    type metadata accessor for TTSTaskRunner.Store();
    sub_1A94B6658(&qword_1EB386238, &qword_1EB386368);
    sub_1A94B6658(&qword_1EB386240, &qword_1EB386370);
    sub_1A94B66F8(&qword_1EB386170, v8, type metadata accessor for TTSTaskRunner.Store);
    v7 = sub_1A957B8D8();
    v9 = *(a1 + 32);
    *(a1 + 32) = v7;
  }

  *a2 = v7;
}

uint64_t sub_1A94B0D88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A957B078();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1A94B0E1C(uint64_t *a1, uint64_t *a2)
{

  sub_1A937829C(a1, a2);
  sub_1A957BA88();
}

uint64_t sub_1A94B0E94()
{
  (*(*v0 + 272))();
  sub_1A957B8E8();
}

uint64_t sub_1A94B0F00(uint64_t a1)
{
  v3 = sub_1A937829C(&qword_1EB386E78, qword_1A9589E60);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v8 = &v10 - v7;
  (*(*v1 + 272))(v6);
  sub_1A9391BAC(a1, v8, &qword_1EB386E78, qword_1A9589E60);
  sub_1A957B8F8();

  return sub_1A937B960(a1, &qword_1EB386E78, qword_1A9589E60);
}

void (*sub_1A94B0FF8(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_1A937829C(&qword_1EB386E78, qword_1A9589E60) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v8 = (*v1 + 272);
  v9 = *v8;
  v5[4] = *v8;
  v5[5] = v8 & 0xFFFFFFFFFFFFLL | 0x25BB000000000000;
  v9();
  sub_1A957B8E8();

  return sub_1A94B113C;
}

void sub_1A94B113C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    v9 = sub_1A9391BAC((*a1)[3], v5, &qword_1EB386E78, qword_1A9589E60);
    (v4)(v9);
    sub_1A9391BAC(v5, v8, &qword_1EB386E78, qword_1A9589E60);
    sub_1A957B8F8();

    sub_1A937B960(v5, &qword_1EB386E78, qword_1A9589E60);
  }

  else
  {
    v4();
    sub_1A9391BAC(v6, v5, &qword_1EB386E78, qword_1A9589E60);
    sub_1A957B8F8();
  }

  sub_1A937B960(v6, &qword_1EB386E78, qword_1A9589E60);
  free(v6);
  free(v5);
  free(v8);

  free(v2);
}

uint64_t sub_1A94B1268()
{
  v1 = (*(*v0 + 184))();
  v26 = sub_1A937829C(&qword_1EB387E18, &qword_1A9593630);
  v27 = sub_1A93B744C(&qword_1EB387E20, &qword_1EB387E18, &qword_1A9593630);
  *&v25 = v1;
  sub_1A93F0F10(&v25, v23);
  v2 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v2;
  v4 = v24;
  v5 = sub_1A9396054(v23, v24);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  sub_1A94B39E8(*v8, 0x736B73617424, 0xE600000000000000, isUniquelyReferenced_nonNull_native, &v22, &qword_1EB387E18, &qword_1A9593630, &qword_1EB387E20);
  v10 = sub_1A9378138(v23);
  v11 = v22;
  v12 = (*(*v0 + 272))(v10);
  v26 = sub_1A937829C(&qword_1EB387E28, &qword_1A9593638);
  v27 = sub_1A93B744C(&qword_1EB387E30, &qword_1EB387E28, &qword_1A9593638);
  *&v25 = v12;
  sub_1A93F0F10(&v25, v23);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v22 = v11;
  v14 = v24;
  v15 = sub_1A9396054(v23, v24);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v15);
  v18 = (&v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  sub_1A94B39E8(*v18, 0xD000000000000010, 0x80000001A95C3E60, v13, &v22, &qword_1EB387E28, &qword_1A9593638, &qword_1EB387E30);
  sub_1A9378138(v23);
  return v22;
}

uint64_t sub_1A94B158C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  sub_1A9378138(v0 + 8);

  return swift_deallocClassInstance();
}

void *sub_1A94B15F4()
{
  v0[2] = 0;
  sub_1A937829C(&qword_1EB3882C0, &qword_1A9588BD0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[3] = v1;
  v0[4] = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v0[5] = v2;
  v3 = sub_1A957B9B8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[6] = sub_1A957B9A8();
  v6 = sub_1A957B998();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v0[7] = sub_1A957B988();
  sub_1A957B9E8();
  return v0;
}

uint64_t TTSTaskRunner.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t TTSTaskRunner.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

char *sub_1A94B17C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB387E40, &qword_1A9594E18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void (*sub_1A94B18F0(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1A948BBCC(v8);
  v8[9] = sub_1A94B199C(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1A948A438;
}

void (*sub_1A94B199C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x238uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[68] = v4;
  v10[67] = a3;
  v10[66] = a2;
  v12 = *v4;
  v13 = sub_1A937A490(a2, a3);
  *(v11 + 560) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1A94B28C8();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1A94B1D7C(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1A937A490(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[69] = v13;
  if (v19)
  {
    memmove(v11 + 22, (*(*v5 + 56) + 88 * v13), 0x58uLL);
  }

  else
  {
    v11[32] = 0;
    *(v11 + 14) = 0u;
    *(v11 + 15) = 0u;
    *(v11 + 12) = 0u;
    *(v11 + 13) = 0u;
    *(v11 + 11) = 0u;
  }

  return sub_1A94B1B14;
}

void sub_1A94B1B14(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 264);
  v4 = *(*a1 + 224);
  v3[2] = *(*a1 + 208);
  v3[3] = v4;
  v3[4] = *(v2 + 240);
  *(v2 + 344) = *(v2 + 256);
  v5 = *(v2 + 192);
  *v3 = *(v2 + 176);
  v3[1] = v5;
  v6 = *(v2 + 272);
  LOBYTE(v7) = *(v2 + 560);
  if (a2)
  {
    if (!v6)
    {
      goto LABEL_10;
    }

    v8 = *(v2 + 552);
    v9 = *(v2 + 544);
    if (*(v2 + 560))
    {
      goto LABEL_9;
    }

    v10 = *(v2 + 536);
    v11 = *(v2 + 528);
    v7 = *v9;
    v12 = *(v2 + 224);
    *(v2 + 32) = *(v2 + 208);
    *(v2 + 48) = v12;
    *(v2 + 64) = *(v2 + 240);
    *(v2 + 80) = *(v2 + 256);
    v13 = *(v2 + 192);
    *v2 = *(v2 + 176);
    *(v2 + 16) = v13;
    v7[(v8 >> 6) + 8] |= 1 << v8;
    v14 = (v7[6] + 16 * v8);
    *v14 = v11;
    v14[1] = v10;
    v15 = v7[7] + 88 * v8;
    v16 = *(v2 + 16);
    *v15 = *v2;
    *(v15 + 16) = v16;
    v17 = *(v2 + 32);
    v18 = *(v2 + 48);
    v19 = *(v2 + 64);
    *(v15 + 80) = *(v2 + 80);
    *(v15 + 48) = v18;
    *(v15 + 64) = v19;
    *(v15 + 32) = v17;
    v20 = v7[2];
    v21 = __OFADD__(v20, 1);
    v6 = v20 + 1;
    if (!v21)
    {
LABEL_13:
      v35 = *(v2 + 536);
      v7[2] = v6;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v6)
  {
LABEL_10:
    if (v7)
    {
      v22 = *(v2 + 552);
      v23 = **(v2 + 544);
      sub_1A948C1C0(*(v23 + 48) + 16 * v22);
      sub_1A94B26A4(v22, v23);
    }

    goto LABEL_14;
  }

  v8 = *(v2 + 552);
  v9 = *(v2 + 544);
  if ((v7 & 1) == 0)
  {
    v24 = *(v2 + 536);
    v25 = *(v2 + 528);
    v7 = *v9;
    v26 = *(v2 + 224);
    *(v2 + 120) = *(v2 + 208);
    *(v2 + 136) = v26;
    *(v2 + 152) = *(v2 + 240);
    *(v2 + 168) = *(v2 + 256);
    v27 = *(v2 + 192);
    *(v2 + 88) = *(v2 + 176);
    *(v2 + 104) = v27;
    v7[(v8 >> 6) + 8] |= 1 << v8;
    v28 = (v7[6] + 16 * v8);
    *v28 = v25;
    v28[1] = v24;
    v29 = v7[7] + 88 * v8;
    v30 = *(v2 + 104);
    *v29 = *(v2 + 88);
    *(v29 + 16) = v30;
    v31 = *(v2 + 120);
    v32 = *(v2 + 136);
    v33 = *(v2 + 152);
    *(v29 + 80) = *(v2 + 168);
    *(v29 + 48) = v32;
    *(v29 + 64) = v33;
    *(v29 + 32) = v31;
    v34 = v7[2];
    v21 = __OFADD__(v34, 1);
    v6 = v34 + 1;
    if (v21)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  memmove((*(*v9 + 56) + 88 * v8), (v2 + 176), 0x58uLL);
LABEL_14:
  v36 = *(v2 + 224);
  *(v2 + 384) = *(v2 + 208);
  *(v2 + 400) = v36;
  *(v2 + 416) = *(v2 + 240);
  *(v2 + 432) = *(v2 + 256);
  v37 = *(v2 + 192);
  *(v2 + 352) = *(v2 + 176);
  *(v2 + 368) = v37;
  sub_1A9391BAC(v3, v2 + 440, &qword_1EB387CF8, &unk_1A95934F0);
  sub_1A937B960(v2 + 352, &qword_1EB387CF8, &unk_1A95934F0);

  free(v2);
}

uint64_t sub_1A94B1D7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB387E50, &qword_1A9594E28);
  v47 = a2;
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v45 = v3;
    v46 = v5;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = *(v5 + 56);
      v26 = (*(v5 + 48) + 16 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = (v25 + 88 * v24);
      if (v47)
      {
        v30 = v29[3];
        v58 = v29[2];
        v59[0] = v30;
        *(v59 + 9) = *(v29 + 57);
        v31 = v29[1];
        v56 = *v29;
        v57 = v31;
        v48 = *(v29 + 73);
        v49 = *(v29 + 10);
      }

      else
      {
        v32 = *(v29 + 10);
        v34 = v29[2];
        v33 = v29[3];
        *&v54[16] = v29[4];
        v35 = v29[1];
        v51 = *v29;
        v52 = v35;
        v53 = v34;
        v49 = v32;
        v55 = v32;
        *v54 = v33;
        v48 = v54[25];

        sub_1A94B49FC(&v51, v50);
        v58 = v53;
        v59[0] = *v54;
        *(v59 + 9) = *&v54[9];
        v56 = v51;
        v57 = v52;
      }

      v36 = *(v8 + 40);
      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v37 = -1 << *(v8 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v15 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v15 + 8 * v39);
          if (v43 != -1)
          {
            v16 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v38) & ~*(v15 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v27;
      v17[1] = v28;
      v18 = *(v8 + 56) + 88 * v16;
      v19 = v59[0];
      *(v18 + 32) = v58;
      *(v18 + 48) = v19;
      *(v18 + 57) = *(v59 + 9);
      v20 = v57;
      *v18 = v56;
      *(v18 + 16) = v20;
      *(v18 + 73) = v48;
      *(v18 + 80) = v49;
      ++*(v8 + 16);
      v5 = v46;
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v10, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1A94B20E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB387E48, &qword_1A9594E20);
  v33 = a2;
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1A957D4F8();
      MEMORY[0x1AC5863C0](v21);
      result = sub_1A957D548();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1A94B2374(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB386F00, &qword_1A958A680);
  v36 = a2;
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_1A93F0F10(v25, v37);
      }

      else
      {
        sub_1A9379534(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1A93F0F10(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

unint64_t sub_1A94B2638(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](a1);
  v4 = sub_1A957D548();

  return sub_1A94B2858(a1, v4);
}

char *sub_1A94B26A4(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A957CE28() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1A957D4F8();

      sub_1A957C228();
      v13 = sub_1A957D548();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        result = (v18 + 88 * v3);
        v19 = (v18 + 88 * v6);
        if (v3 != v6 || result >= v19 + 88)
        {
          result = memmove(result, v19, 0x58uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A94B2858(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_1A94B28C8()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB387E50, &qword_1A9594E28);
  v2 = *v0;
  v3 = sub_1A957D108();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_1A94B49FC(&v33, v32))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 88;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 32);
      v23 = *(v21 + 48);
      v24 = *(v21 + 64);
      v38 = *(v21 + 80);
      v36 = v23;
      v37 = v24;
      v25 = *(v21 + 16);
      v33 = *v21;
      v34 = v25;
      v35 = v22;
      v26 = (*(v4 + 48) + v17);
      *v26 = v20;
      v26[1] = v19;
      v27 = *(v4 + 56) + v16;
      v28 = v34;
      *v27 = v33;
      *(v27 + 16) = v28;
      v29 = v35;
      v30 = v36;
      v31 = v37;
      *(v27 + 80) = v38;
      *(v27 + 48) = v30;
      *(v27 + 64) = v31;
      *(v27 + 32) = v29;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_1A94B2A98()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB387E48, &qword_1A9594E20);
  v2 = *v0;
  v3 = sub_1A957D108();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1A94B2BF4()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB386F00, &qword_1A958A680);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1A9379534(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1A93F0F10(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

double sub_1A94B2D9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1A937A490(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v18 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A94B28C8();
      v12 = v18;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 88 * v9;
    v15 = *(v14 + 48);
    *(a3 + 32) = *(v14 + 32);
    *(a3 + 48) = v15;
    *(a3 + 64) = *(v14 + 64);
    *(a3 + 80) = *(v14 + 80);
    v16 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v16;
    sub_1A94B26A4(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 80) = 0;
    result = 0.0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_1A94B2EAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A94B2EC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A937A490(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A94B1D7C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1A937A490(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1A94B28C8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 88 * v11;

    return sub_1A94B7158(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 88 * v11;
  v27 = *(a1 + 16);
  *v26 = *a1;
  *(v26 + 16) = v27;
  v28 = *(a1 + 32);
  v29 = *(a1 + 48);
  v30 = *(a1 + 64);
  *(v26 + 80) = *(a1 + 80);
  *(v26 + 48) = v29;
  *(v26 + 64) = v30;
  *(v26 + 32) = v28;
  v31 = v22[2];
  v15 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v32;
}

unint64_t sub_1A94B3064()
{
  result = qword_1EB38C0F0[0];
  if (!qword_1EB38C0F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38C0F0);
  }

  return result;
}

unint64_t sub_1A94B30B8()
{
  result = qword_1EB39ED68;
  if (!qword_1EB39ED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39ED68);
  }

  return result;
}

unint64_t sub_1A94B310C()
{
  result = qword_1EB38BF50[0];
  if (!qword_1EB38BF50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38BF50);
  }

  return result;
}

unint64_t sub_1A94B3160()
{
  result = qword_1EB38C878[0];
  if (!qword_1EB38C878[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38C878);
  }

  return result;
}

unint64_t sub_1A94B31B4()
{
  result = qword_1EB38C6D0[0];
  if (!qword_1EB38C6D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38C6D0);
  }

  return result;
}

unint64_t sub_1A94B3208()
{
  result = qword_1EB3861A8;
  if (!qword_1EB3861A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861A8);
  }

  return result;
}

unint64_t sub_1A94B325C()
{
  result = qword_1EB38C538[0];
  if (!qword_1EB38C538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38C538);
  }

  return result;
}

unint64_t sub_1A94B32B0()
{
  result = qword_1EB3861A0;
  if (!qword_1EB3861A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861A0);
  }

  return result;
}

unint64_t sub_1A94B3304()
{
  result = qword_1EB38B980[0];
  if (!qword_1EB38B980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38B980);
  }

  return result;
}

unint64_t sub_1A94B3358()
{
  result = qword_1EB38B658[0];
  if (!qword_1EB38B658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38B658);
  }

  return result;
}

unint64_t sub_1A94B33AC()
{
  result = qword_1EB39ED70;
  if (!qword_1EB39ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39ED70);
  }

  return result;
}

unint64_t sub_1A94B3400()
{
  result = qword_1EB38BB28[0];
  if (!qword_1EB38BB28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38BB28);
  }

  return result;
}

unint64_t sub_1A94B3454()
{
  result = qword_1EB39ED80;
  if (!qword_1EB39ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39ED80);
  }

  return result;
}

unint64_t sub_1A94B34A8()
{
  result = qword_1EB38B228[0];
  if (!qword_1EB38B228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38B228);
  }

  return result;
}

unint64_t sub_1A94B34FC()
{
  result = qword_1EB3861B8;
  if (!qword_1EB3861B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861B8);
  }

  return result;
}

unint64_t sub_1A94B3550()
{
  result = qword_1EB3861B0;
  if (!qword_1EB3861B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861B0);
  }

  return result;
}

unint64_t sub_1A94B35A4()
{
  result = qword_1EB38C290[0];
  if (!qword_1EB38C290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38C290);
  }

  return result;
}

unint64_t sub_1A94B35F8()
{
  result = qword_1EB3861D8;
  if (!qword_1EB3861D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861D8);
  }

  return result;
}

unint64_t sub_1A94B364C()
{
  result = qword_1EB386020;
  if (!qword_1EB386020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386020);
  }

  return result;
}

unint64_t sub_1A94B36A0()
{
  result = qword_1EB3861C8;
  if (!qword_1EB3861C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861C8);
  }

  return result;
}

unint64_t sub_1A94B36F4()
{
  result = qword_1EB3861D0;
  if (!qword_1EB3861D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861D0);
  }

  return result;
}

unint64_t sub_1A94B3748()
{
  result = qword_1EB386008;
  if (!qword_1EB386008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386008);
  }

  return result;
}

unint64_t sub_1A94B379C()
{
  result = qword_1EB3861C0;
  if (!qword_1EB3861C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861C0);
  }

  return result;
}

unint64_t sub_1A94B37F0()
{
  result = qword_1EB38D528[0];
  if (!qword_1EB38D528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38D528);
  }

  return result;
}

unint64_t sub_1A94B3844()
{
  result = qword_1EB39ED90[0];
  if (!qword_1EB39ED90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39ED90);
  }

  return result;
}

unint64_t sub_1A94B3898()
{
  result = qword_1EB38CEB8[0];
  if (!qword_1EB38CEB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38CEB8);
  }

  return result;
}

unint64_t sub_1A94B38EC()
{
  result = qword_1EB38D050[0];
  if (!qword_1EB38D050[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38D050);
  }

  return result;
}

unint64_t sub_1A94B3940()
{
  result = qword_1EB38CD18[0];
  if (!qword_1EB38CD18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38CD18);
  }

  return result;
}

unint64_t sub_1A94B3994()
{
  result = qword_1EB38D1F0[0];
  if (!qword_1EB38D1F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38D1F0);
  }

  return result;
}

uint64_t sub_1A94B39E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t *a6, uint64_t *a7, unint64_t *a8)
{
  v16 = sub_1A937829C(a6, a7);
  v38 = v16;
  v36 = a8;
  v39 = sub_1A93B744C(a8, a6, a7);
  *&v37 = a1;
  v17 = *a5;
  v19 = sub_1A937A490(a2, a3);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a4 & 1) != 0)
  {
LABEL_7:
    v25 = *a5;
    if (v23)
    {
LABEL_8:
      v26 = (v25[7] + 40 * v19);
      sub_1A9378138(v26);
      return sub_1A93F0F10(&v37, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a4 & 1) == 0)
  {
    sub_1A94B2BF4();
    goto LABEL_7;
  }

  sub_1A94B2374(v22, a4 & 1);
  v28 = *a5;
  v29 = sub_1A937A490(a2, a3);
  if ((v23 & 1) != (v30 & 1))
  {
LABEL_14:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

  v19 = v29;
  v25 = *a5;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  v31 = sub_1A9396054(&v37, v16);
  v32 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31, v31);
  v34 = (&v36 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  sub_1A94B3C28(v19, a2, a3, *v34, v25, a6, a7, v36);

  return sub_1A9378138(&v37);
}

uint64_t sub_1A94B3C28(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7, unint64_t *a8)
{
  v22 = sub_1A937829C(a6, a7);
  v23 = sub_1A93B744C(a8, a6, a7);
  *&v21 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v16 = (a5[6] + 16 * a1);
  *v16 = a2;
  v16[1] = a3;
  result = sub_1A93F0F10(&v21, a5[7] + 40 * a1);
  v18 = a5[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v20;
  }

  return result;
}

uint64_t sub_1A94B3D10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C7069746C756DLL && a2 == 0xEA00000000007265 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A957D3E8();

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

uint64_t sub_1A94B3E2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A95C3F40 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E6964726163 && a2 == 0xEB00000000797469)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A94B3FA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E6570 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE900000000000064 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696E6E7572 && a2 == 0xE700000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (sub_1A957D3E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A94B4160(uint64_t *a1)
{
  v2 = sub_1A937829C(&qword_1EB387E60, &qword_1A9594E38);
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v64 = &v51[-v5];
  v6 = sub_1A937829C(&qword_1EB387E68, &qword_1A9594E40);
  v7 = *(v6 - 8);
  v60 = v6;
  v61 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v66 = &v51[-v10];
  v11 = sub_1A937829C(&qword_1EB387E70, &qword_1A9594E48);
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v65 = &v51[-v14];
  v15 = sub_1A937829C(&qword_1EB387E78, &qword_1A9594E50);
  v56 = *(v15 - 8);
  v57 = v15;
  v16 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v51[-v18];
  v20 = sub_1A937829C(&qword_1EB387E80, &qword_1A9594E58);
  v55 = *(v20 - 8);
  v21 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v51[-v23];
  v25 = sub_1A937829C(&qword_1EB387E88, &qword_1A9594E60);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v51[-v29];
  v32 = a1[3];
  v31 = a1[4];
  v68 = a1;
  sub_1A93780F4(a1, v32);
  sub_1A94B37F0();
  v33 = v67;
  sub_1A957D588();
  if (v33)
  {
    goto LABEL_18;
  }

  v53 = v20;
  v54 = v30;
  v35 = v65;
  v34 = v66;
  v67 = v26;
  v36 = sub_1A957D268();
  v37 = *(v36 + 16);
  if (!v37 || ((v38 = *(v36 + 32), v37 == 1) ? (v39 = v38 == 5) : (v39 = 1), v39))
  {
    v40 = sub_1A957CF58();
    swift_allocError();
    v41 = v25;
    v43 = v42;
    v44 = *(sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0) + 48);
    *v43 = &type metadata for TTSTaskRunner.TaskRecord.State;
    v45 = v54;
    sub_1A957D188();
    sub_1A957CF48();
    (*(*(v40 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    (*(v67 + 8))(v45, v41);
    swift_unknownObjectRelease();
LABEL_18:
    sub_1A9378138(v68);
    return 0;
  }

  v52 = *(v36 + 32);
  if (v38 <= 1)
  {
    if (v38)
    {
      v70 = 1;
      sub_1A94B3940();
      v48 = v54;
      sub_1A957D178();
      (*(v56 + 8))(v19, v57);
    }

    else
    {
      v69 = 0;
      sub_1A94B3994();
      v48 = v54;
      sub_1A957D178();
      (*(v55 + 8))(v24, v53);
    }

    (*(v67 + 8))(v48, v25);
  }

  else
  {
    v46 = v67;
    if (v38 == 2)
    {
      v71 = 2;
      sub_1A94B38EC();
      v47 = v54;
      sub_1A957D178();
      (*(v58 + 8))(v35, v59);
    }

    else
    {
      v47 = v54;
      if (v38 == 3)
      {
        v72 = 3;
        sub_1A94B3898();
        sub_1A957D178();
        (*(v61 + 8))(v34, v60);
      }

      else
      {
        v73 = 4;
        sub_1A94B3844();
        v49 = v64;
        sub_1A957D178();
        (*(v62 + 8))(v49, v63);
      }
    }

    (*(v46 + 8))(v47, v25);
  }

  swift_unknownObjectRelease();
  sub_1A9378138(v68);
  return v52;
}

unint64_t sub_1A94B4858()
{
  result = qword_1EB38D6C8[0];
  if (!qword_1EB38D6C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38D6C8);
  }

  return result;
}

unint64_t sub_1A94B48AC()
{
  result = qword_1EB386198;
  if (!qword_1EB386198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386198);
  }

  return result;
}

unint64_t sub_1A94B4900()
{
  result = qword_1EB386200;
  if (!qword_1EB386200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386200);
  }

  return result;
}

unint64_t sub_1A94B4954()
{
  result = qword_1EB386190;
  if (!qword_1EB386190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386190);
  }

  return result;
}

unint64_t sub_1A94B49A8()
{
  result = qword_1EB3861F0;
  if (!qword_1EB3861F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861F0);
  }

  return result;
}

uint64_t sub_1A94B4A90@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 200))();
  *a1 = result;
  return result;
}

unint64_t sub_1A94B4B4C()
{
  result = qword_1EB387E38;
  if (!qword_1EB387E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387E38);
  }

  return result;
}

unint64_t sub_1A94B4BA4()
{
  result = qword_1EB3861F8;
  if (!qword_1EB3861F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861F8);
  }

  return result;
}

__n128 sub_1A94B4D9C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A94B4DC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1A94B4E08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TTSTaskRunner.TaskConfiguration.TaskType(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 initializeWithCopy for TTSTaskRunner.TaskConfiguration.TaskType(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for TTSTaskRunner.TaskConfiguration.TaskType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 50))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 49);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTSTaskRunner.TaskConfiguration.TaskType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTSTaskRunner.TaskConfiguration.FailureBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTSTaskRunner.TaskConfiguration.FailureBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1A94B501C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

double sub_1A94B5030(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 24) = -a2;
  }

  return result;
}

__n128 initializeWithCopy for TTSTaskRunner.TaskConfiguration.FailureBehavior.RetryStrategy(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TTSTaskRunner.TaskConfiguration.FailureBehavior.RetryStrategy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTSTaskRunner.TaskConfiguration.FailureBehavior.RetryStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

__n128 sub_1A94B513C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1A94B5160(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1A94B51A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A94B5360()
{
  result = qword_1EB39EEA0[0];
  if (!qword_1EB39EEA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39EEA0);
  }

  return result;
}

unint64_t sub_1A94B53B8()
{
  result = qword_1EB39EFB0[0];
  if (!qword_1EB39EFB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39EFB0);
  }

  return result;
}

unint64_t sub_1A94B5410()
{
  result = qword_1EB39F0C0[0];
  if (!qword_1EB39F0C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39F0C0);
  }

  return result;
}

unint64_t sub_1A94B5468()
{
  result = qword_1EB39F1D0[0];
  if (!qword_1EB39F1D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39F1D0);
  }

  return result;
}

unint64_t sub_1A94B54C0()
{
  result = qword_1EB39F2E0[0];
  if (!qword_1EB39F2E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39F2E0);
  }

  return result;
}

unint64_t sub_1A94B5518()
{
  result = qword_1EB39F3F0[0];
  if (!qword_1EB39F3F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39F3F0);
  }

  return result;
}

unint64_t sub_1A94B5570()
{
  result = qword_1EB39F500[0];
  if (!qword_1EB39F500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39F500);
  }

  return result;
}

unint64_t sub_1A94B55C8()
{
  result = qword_1EB39F610[0];
  if (!qword_1EB39F610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39F610);
  }

  return result;
}

unint64_t sub_1A94B5620()
{
  result = qword_1EB39F720[0];
  if (!qword_1EB39F720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39F720);
  }

  return result;
}

unint64_t sub_1A94B5678()
{
  result = qword_1EB39F830[0];
  if (!qword_1EB39F830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39F830);
  }

  return result;
}

unint64_t sub_1A94B56D0()
{
  result = qword_1EB39F940[0];
  if (!qword_1EB39F940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39F940);
  }

  return result;
}

unint64_t sub_1A94B5728()
{
  result = qword_1EB39FA50[0];
  if (!qword_1EB39FA50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39FA50);
  }

  return result;
}

unint64_t sub_1A94B5780()
{
  result = qword_1EB38D6B0;
  if (!qword_1EB38D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D6B0);
  }

  return result;
}

unint64_t sub_1A94B57D8()
{
  result = qword_1EB38D6B8;
  if (!qword_1EB38D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D6B8);
  }

  return result;
}

unint64_t sub_1A94B5830()
{
  result = qword_1EB38D1E0;
  if (!qword_1EB38D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D1E0);
  }

  return result;
}

unint64_t sub_1A94B5888()
{
  result = qword_1EB38D1E8;
  if (!qword_1EB38D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D1E8);
  }

  return result;
}

unint64_t sub_1A94B58E0()
{
  result = qword_1EB38CD00;
  if (!qword_1EB38CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38CD00);
  }

  return result;
}

unint64_t sub_1A94B5938()
{
  result = qword_1EB38CD08;
  if (!qword_1EB38CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38CD08);
  }

  return result;
}

unint64_t sub_1A94B5990()
{
  result = qword_1EB38D040;
  if (!qword_1EB38D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D040);
  }

  return result;
}

unint64_t sub_1A94B59E8()
{
  result = qword_1EB38D048;
  if (!qword_1EB38D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D048);
  }

  return result;
}

unint64_t sub_1A94B5A40()
{
  result = qword_1EB38CEA0;
  if (!qword_1EB38CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38CEA0);
  }

  return result;
}

unint64_t sub_1A94B5A98()
{
  result = qword_1EB38CEA8;
  if (!qword_1EB38CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38CEA8);
  }

  return result;
}

unint64_t sub_1A94B5AF0()
{
  result = qword_1EB38D380;
  if (!qword_1EB38D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D380);
  }

  return result;
}

unint64_t sub_1A94B5B48()
{
  result = qword_1EB38D388[0];
  if (!qword_1EB38D388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38D388);
  }

  return result;
}

unint64_t sub_1A94B5BA0()
{
  result = qword_1EB38D510;
  if (!qword_1EB38D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D510);
  }

  return result;
}

unint64_t sub_1A94B5BF8()
{
  result = qword_1EB38D518;
  if (!qword_1EB38D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D518);
  }

  return result;
}

unint64_t sub_1A94B5C50()
{
  result = qword_1EB38C280;
  if (!qword_1EB38C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38C280);
  }

  return result;
}

unint64_t sub_1A94B5CA8()
{
  result = qword_1EB38C288;
  if (!qword_1EB38C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38C288);
  }

  return result;
}

unint64_t sub_1A94B5D00()
{
  result = qword_1EB38B210;
  if (!qword_1EB38B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38B210);
  }

  return result;
}

unint64_t sub_1A94B5D58()
{
  result = qword_1EB38B218;
  if (!qword_1EB38B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38B218);
  }

  return result;
}

unint64_t sub_1A94B5DB0()
{
  result = qword_1EB38B3B0;
  if (!qword_1EB38B3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38B3B0);
  }

  return result;
}

unint64_t sub_1A94B5E08()
{
  result = qword_1EB38B3B8[0];
  if (!qword_1EB38B3B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38B3B8);
  }

  return result;
}

unint64_t sub_1A94B5E60()
{
  result = qword_1EB38BB10;
  if (!qword_1EB38BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38BB10);
  }

  return result;
}

unint64_t sub_1A94B5EB8()
{
  result = qword_1EB38BB18;
  if (!qword_1EB38BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38BB18);
  }

  return result;
}

unint64_t sub_1A94B5F10()
{
  result = qword_1EB38B7E0;
  if (!qword_1EB38B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38B7E0);
  }

  return result;
}

unint64_t sub_1A94B5F68()
{
  result = qword_1EB38B7E8[0];
  if (!qword_1EB38B7E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38B7E8);
  }

  return result;
}

unint64_t sub_1A94B5FC0()
{
  result = qword_1EB38B640;
  if (!qword_1EB38B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38B640);
  }

  return result;
}

unint64_t sub_1A94B6018()
{
  result = qword_1EB38B648;
  if (!qword_1EB38B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38B648);
  }

  return result;
}

unint64_t sub_1A94B6070()
{
  result = qword_1EB38B970;
  if (!qword_1EB38B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38B970);
  }

  return result;
}

unint64_t sub_1A94B60C8()
{
  result = qword_1EB38B978;
  if (!qword_1EB38B978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38B978);
  }

  return result;
}

unint64_t sub_1A94B6120()
{
  result = qword_1EB38C520;
  if (!qword_1EB38C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38C520);
  }

  return result;
}

unint64_t sub_1A94B6178()
{
  result = qword_1EB38C528;
  if (!qword_1EB38C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38C528);
  }

  return result;
}

unint64_t sub_1A94B61D0()
{
  result = qword_1EB38C6C0;
  if (!qword_1EB38C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38C6C0);
  }

  return result;
}

unint64_t sub_1A94B6228()
{
  result = qword_1EB38C6C8;
  if (!qword_1EB38C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38C6C8);
  }

  return result;
}

unint64_t sub_1A94B6280()
{
  result = qword_1EB38C860;
  if (!qword_1EB38C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38C860);
  }

  return result;
}

unint64_t sub_1A94B62D8()
{
  result = qword_1EB38C868;
  if (!qword_1EB38C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38C868);
  }

  return result;
}

unint64_t sub_1A94B6330()
{
  result = qword_1EB38BF40;
  if (!qword_1EB38BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38BF40);
  }

  return result;
}

unint64_t sub_1A94B6388()
{
  result = qword_1EB38BF48;
  if (!qword_1EB38BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38BF48);
  }

  return result;
}

unint64_t sub_1A94B63E0()
{
  result = qword_1EB38BDB0;
  if (!qword_1EB38BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38BDB0);
  }

  return result;
}

unint64_t sub_1A94B6438()
{
  result = qword_1EB38BDB8[0];
  if (!qword_1EB38BDB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38BDB8);
  }

  return result;
}

unint64_t sub_1A94B6490()
{
  result = qword_1EB38C0E0;
  if (!qword_1EB38C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38C0E0);
  }

  return result;
}

unint64_t sub_1A94B64E8()
{
  result = qword_1EB38C0E8;
  if (!qword_1EB38C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38C0E8);
  }

  return result;
}

uint64_t sub_1A94B653C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736572756C696166 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A957D3E8();

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

uint64_t sub_1A94B6658(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB386E78, qword_1A9589E60);
    sub_1A94B66F8(a2, 255, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A94B66F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1A94B6740()
{
  v1 = sub_1A94B7048(MEMORY[0x1E69E7CC0]);
  v2 = (*(*v0 + 200))();
  v3 = 0;
  v4 = v2 + 64;
  v62 = v2;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v11 = v3;
LABEL_11:
    v12 = *(v62 + 56) + 88 * (__clz(__rbit64(v7)) | (v11 << 6));
    v13 = *(v12 + 32);
    v14 = *(v12 + 48);
    v15 = *(v12 + 80);
    v69 = *(v12 + 64);
    v16 = *v12;
    v17 = *(v12 + 16);
    v70 = v15;
    v67 = v13;
    v68 = v14;
    v65 = v16;
    v66 = v17;
    v18 = BYTE9(v69);
    if (v1[2] && (v19 = sub_1A94B2638(BYTE9(v69)), (v20 & 1) != 0))
    {
      v21 = *(v1[7] + 8 * v19);
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    sub_1A937829C(&qword_1EB387E40, &qword_1A9594E18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A9587160;
    v23 = v66;
    *(inited + 32) = v65;
    v24 = v70;
    v25 = v69;
    v26 = v67;
    *(inited + 80) = v68;
    *(inited + 96) = v25;
    *(inited + 112) = v24;
    *(inited + 48) = v23;
    *(inited + 64) = v26;
    v27 = *(v21 + 2);
    sub_1A94B49FC(&v65, &v63);
    sub_1A94B49FC(&v65, &v63);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v29 = *(v21 + 3) >> 1, v29 <= v27))
    {
      v21 = sub_1A94B17C8(isUniquelyReferenced_nonNull_native, v27 + 1, 1, v21);
      v29 = *(v21 + 3) >> 1;
    }

    if (v29 <= *(v21 + 2))
    {
      goto LABEL_45;
    }

    swift_arrayInitWithCopy();

    ++*(v21 + 2);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v63 = v1;
    v31 = sub_1A94B2638(v18);
    v33 = v1[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_46;
    }

    v37 = v32;
    if (v1[3] >= v36)
    {
      if ((v30 & 1) == 0)
      {
        v41 = v31;
        sub_1A94B2A98();
        v31 = v41;
        v1 = v63;
      }
    }

    else
    {
      sub_1A94B20E4(v36, v30);
      v1 = v63;
      v31 = sub_1A94B2638(v18);
      if ((v37 & 1) != (v38 & 1))
      {
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    v7 &= v7 - 1;
    if (v37)
    {
      v9 = v1[7];
      v10 = *(v9 + 8 * v31);
      *(v9 + 8 * v31) = v21;

      sub_1A94B4A34(&v65);
    }

    else
    {
      v1[(v31 >> 6) + 8] |= 1 << v31;
      *(v1[6] + v31) = v18;
      *(v1[7] + 8 * v31) = v21;
      sub_1A94B4A34(&v65);
      v39 = v1[2];
      v35 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v35)
      {
        goto LABEL_47;
      }

      v1[2] = v40;
    }

    v3 = v11;
  }

  while (1)
  {
    v11 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v3;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  *&v65 = 0x20676E696E6E7552;
  *(&v65 + 1) = 0xEF2073746E756F63;
  v42 = 1 << *(v1 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & v1[8];
  v45 = (v42 + 63) >> 6;

  v46 = 0;
  while (v44)
  {
    v47 = v46;
LABEL_36:
    v48 = __clz(__rbit64(v44)) | (v47 << 6);
    v49 = *(v1[6] + v48);
    v50 = *(v1[7] + 8 * v48);
    v44 &= v44 - 1;
    v63 = 32;
    v64 = 0xE100000000000000;

    v51 = sub_1A957C198();
    MEMORY[0x1AC585140](v51);

    MEMORY[0x1AC585140](91, 0xE100000000000000);
    v52 = *(v50 + 16);

    v53 = sub_1A957D3A8();
    MEMORY[0x1AC585140](v53);

    MEMORY[0x1AC585140](8285, 0xE200000000000000);
    MEMORY[0x1AC585140](v63, v64);
  }

  while (1)
  {
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v47 >= v45)
    {

      if (qword_1EB3892A0 != -1)
      {
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    v44 = v1[v47 + 8];
    ++v46;
    if (v44)
    {
      v46 = v47;
      goto LABEL_36;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  swift_once();
LABEL_39:
  v54 = sub_1A957BC88();
  sub_1A937731C(v54, qword_1EB3892A8);
  v55 = v65;

  v56 = sub_1A957BC68();
  v57 = sub_1A957CA58();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v63 = v59;
    *v58 = 136315138;
    v60 = sub_1A937A5C0(v55, *(&v55 + 1), &v63);

    *(v58 + 4) = v60;
    _os_log_impl(&dword_1A9324000, v56, v57, "%s", v58, 0xCu);
    sub_1A9378138(v59);
    MEMORY[0x1AC587CD0](v59, -1, -1);
    MEMORY[0x1AC587CD0](v58, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_1A94B6D5C()
{
  result = qword_1EB3861E0;
  if (!qword_1EB3861E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861E0);
  }

  return result;
}

uint64_t sub_1A94B6DB0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB387E10, &qword_1A9593628);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A94B6E34()
{
  result = qword_1EB3861E8;
  if (!qword_1EB3861E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861E8);
  }

  return result;
}

unint64_t sub_1A94B6E88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A937829C(&qword_1EB387E50, &qword_1A9594E28);
  v3 = sub_1A957D128();

  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v4;
  v33 = *(a1 + 128);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  sub_1A9391BAC(&v27, v26, &qword_1EB387E58, &qword_1A9594E30);
  result = sub_1A937A490(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 136);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 88 * result;
    v14 = v29;
    *v13 = v28;
    *(v13 + 16) = v14;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    *(v13 + 80) = v33;
    *(v13 + 48) = v16;
    *(v13 + 64) = v17;
    *(v13 + 32) = v15;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = (v11 + 104);
    v22 = v11[5];
    v31 = v11[4];
    v32 = v22;
    v33 = *(v11 + 12);
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    sub_1A9391BAC(&v27, v26, &qword_1EB387E58, &qword_1A9594E30);
    result = sub_1A937A490(v7, v8);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1A94B7048(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A937829C(&qword_1EB387E48, &qword_1A9594E20);
  v3 = sub_1A957D128();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1A94B2638(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1A94B2638(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94B7190()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A9382328;

  return sub_1A94AA0EC(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A94B7248()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A94AAE88(v4, v5, v6, v2, v3);
}

uint64_t sub_1A94B7318(uint64_t *a1)
{
  ppDb[1] = *MEMORY[0x1E69E9840];
  ppDb[0] = 0;
  v5 = sub_1A94B7DD8(a1);
  v6 = v2;
  sqlite3_open("file::memory:", ppDb);
  v7 = ppDb[0];
  v8 = *a1;
  v9 = a1[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    v11 = 0;
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v13 = v8 + 16;
    v8 = *(v8 + 16);
    v12 = *(v13 + 8);
    v11 = v12 - v8;
    if (!__OFSUB__(v12, v8))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    v14 = __OFSUB__(HIDWORD(v8), v8);
    v15 = HIDWORD(v8) - v8;
    if (v14)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
    }

    v11 = v15;
    goto LABEL_10;
  }

  if (v10)
  {
    goto LABEL_8;
  }

  v11 = BYTE6(v9);
LABEL_10:
  if (sqlite3_deserialize(v7, "main", v5, v11, v11, 0))
  {
    sub_1A94B8060();
    swift_allocError();
    v17 = 3;
LABEL_12:
    *v16 = v17;
    *(v16 + 8) = 1;
LABEL_16:
    swift_willThrow();
    goto LABEL_17;
  }

  ppStmt = 0;
  v18 = ppDb[0];
  v19 = v1[2];
  v20 = v1[3];
  v21 = sub_1A957C1C8();
  sqlite3_prepare_v2(v18, (v21 + 32), -1, &ppStmt, 0);

  v22 = ppStmt;
  if (qword_1EB39FB60 != -1)
  {
    goto LABEL_74;
  }

LABEL_14:
  v23 = qword_1EB3A7CA8;
  v24 = sub_1A957C1C8();
  v25 = sqlite3_bind_text(v22, 1, (v24 + 32), -1, v23);

  if (v25)
  {
    sub_1A94B8060();
    swift_allocError();
    *v26 = 4;
    *(v26 + 8) = 1;
    goto LABEL_16;
  }

  if (sqlite3_step(ppStmt) != 100)
  {
    sqlite3_finalize(ppStmt);
    sub_1A94B8060();
    swift_allocError();
    v17 = 5;
    goto LABEL_12;
  }

  if (!sqlite3_column_text(ppStmt, 0))
  {
    __break(1u);
LABEL_83:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

  v29 = sub_1A957C2A8();
  v103[0] = 44;
  v103[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v29, v30);
  v92[2] = v103;
  v33 = sub_1A9393C7C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A9394148, v92, v31, v32, &v93);
  v93 = v6;
  v34 = *(v33 + 16);
  v96 = v1;
  if (v34)
  {
    v103[0] = MEMORY[0x1E69E7CC0];
    sub_1A93ABB68(0, v34, 0);
    v35 = v103[0];
    v36 = (v33 + 56);
    do
    {
      v38 = *(v36 - 3);
      v37 = *(v36 - 2);
      v39 = *(v36 - 1);
      v40 = *v36;

      v41 = MEMORY[0x1AC585090](v38, v37, v39, v40);
      v43 = v42;

      v103[0] = v35;
      v45 = *(v35 + 2);
      v44 = *(v35 + 3);
      if (v45 >= v44 >> 1)
      {
        sub_1A93ABB68((v44 > 1), v45 + 1, 1);
        v35 = v103[0];
      }

      *(v35 + 2) = v45 + 1;
      v46 = v35 + 16 * v45;
      *(v46 + 4) = v41;
      *(v46 + 5) = v43;
      v36 += 4;
      --v34;
    }

    while (v34);
    v99 = v35;

    v1 = v96;
  }

  else
  {

    v99 = MEMORY[0x1E69E7CC0];
  }

  sqlite3_finalize(ppStmt);
  v103[0] = 0;
  v47 = ppDb[0];
  v48 = v1[4];
  v49 = v1[5];
  v50 = sub_1A957C1C8();
  sqlite3_prepare_v2(v47, (v50 + 32), -1, v103, 0);

  v6 = MEMORY[0x1E69E7CC0];
  v1 = sub_1A94B8530(MEMORY[0x1E69E7CC0]);
  v3 = 1;
  v51 = 1;
  while (sqlite3_step(v103[0]) == 100)
  {
    if (!sqlite3_column_text(v103[0], 0))
    {
      goto LABEL_81;
    }

    v22 = sub_1A957C2A8();
    v53 = v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = v1;
    v55 = sub_1A937A490(v22, v53);
    v57 = v1[2];
    v58 = (v56 & 1) == 0;
    v14 = __OFADD__(v57, v58);
    v59 = v57 + v58;
    if (v14)
    {
      goto LABEL_70;
    }

    v60 = v56;
    if (v1[3] < v59)
    {
      sub_1A94B80B4(v59, isUniquelyReferenced_nonNull_native);
      v55 = sub_1A937A490(v22, v53);
      if ((v60 & 1) != (v61 & 1))
      {
        goto LABEL_83;
      }

LABEL_39:
      if (v60)
      {
        goto LABEL_30;
      }

      goto LABEL_40;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_39;
    }

    v65 = v55;
    sub_1A94B8354();
    v55 = v65;
    if (v60)
    {
LABEL_30:
      v22 = v55;

      v1 = v102;
      *(*(v102 + 56) + 8 * v22) = v51;
      goto LABEL_31;
    }

LABEL_40:
    v1 = v102;
    *(v102 + 8 * (v55 >> 6) + 64) |= 1 << v55;
    v62 = (v1[6] + 16 * v55);
    *v62 = v22;
    v62[1] = v53;
    *(v1[7] + 8 * v55) = v51;
    v63 = v1[2];
    v14 = __OFADD__(v63, 1);
    v64 = v63 + 1;
    if (v14)
    {
      goto LABEL_72;
    }

    v1[2] = v64;
LABEL_31:
    v14 = __OFADD__(v51++, 1);
    if (v14)
    {
      goto LABEL_71;
    }
  }

  sqlite3_finalize(v103[0]);
  v102 = v6;
  v66 = v99;
  v22 = *(v99 + 2);
  if (!v22)
  {

    v3 = MEMORY[0x1E69E7CC0];
    goto LABEL_67;
  }

  v98 = v99 + 32;

  v67 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v97 = 30;
  v94 = v1;
  v95 = v22;
  while (1)
  {
    if (v67 >= *(v66 + 2))
    {
      goto LABEL_73;
    }

    if (!v1[2])
    {
      goto LABEL_47;
    }

    v100 = v67;
    v68 = &v98[16 * v67];
    v69 = *v68;
    v70 = v68[1];

    v71 = sub_1A937A490(v69, v70);
    if (v72)
    {
      break;
    }

    v66 = v99;
    v67 = v100;
LABEL_47:
    if (++v67 == v22)
    {

LABEL_67:

      sqlite3_close(ppDb[0]);
      goto LABEL_18;
    }
  }

  v73 = *(v1[7] + 8 * v71);
  v74 = [objc_allocWithZone(TTSRuleset) init];
  v75 = sub_1A957C0C8();
  [v74 setIdentifier_];

  v101 = v74;
  v76 = v97;
  [v74 setPriority_];
  v97 = v76 + 1;
  if (__OFADD__(v76, 1))
  {
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v104 = 0;
  v77 = ppDb[0];
  v78 = v96[6];
  v79 = v96[7];
  v80 = sub_1A957C1C8();
  sqlite3_prepare_v2(v77, (v80 + 32), -1, &v104, 0);

  if (v73 < 0xFFFFFFFF80000000)
  {
    goto LABEL_76;
  }

  if (v73 > 0x7FFFFFFF)
  {
    goto LABEL_77;
  }

  if (!sqlite3_bind_int(v104, 1, v73))
  {
    while (sqlite3_step(v104) == 100)
    {
      if (!sqlite3_column_text(v104, 0))
      {
        goto LABEL_80;
      }

      sub_1A957C2A8();
      v6 = v81;
      if (!sqlite3_column_text(v104, 1))
      {
        goto LABEL_79;
      }

      sub_1A957C2A8();
      v82 = sqlite3_column_int(v104, 2);
      v3 = sqlite3_column_int(v104, 3);
      v83 = [objc_allocWithZone(TTSRuleReplacement) init];
      v84 = objc_allocWithZone(TTSRegex);
      v85 = sub_1A957C0C8();

      v86 = [v84 initWithPerlPattern_];

      [v83 setRegex_];
      [v83 setIsTerminalRule_];
      v1 = objc_opt_self();
      v87 = sub_1A957C0C8();

      v22 = [v1 processReplacementStringForSpecialCharacters_];

      if (!v22)
      {
        sub_1A957C0F8();
        v1 = v88;
        v22 = sub_1A957C0C8();
      }

      [v83 setReplacement_];

      if ((v3 & 0x80000000) != 0)
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        swift_once();
        goto LABEL_14;
      }

      [v83 setOriginalRulesetIndex_];
      [v101 addRuleReplacement_];
    }

    v89 = v101;
    MEMORY[0x1AC585360]();
    if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v90 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1A957C4F8();
    }

    sub_1A957C538();
    v3 = v102;
    sqlite3_finalize(v104);

    v66 = v99;
    v67 = v100;
    v1 = v94;
    v22 = v95;
    goto LABEL_47;
  }

  swift_bridgeObjectRelease_n();
  sub_1A94B8060();
  swift_allocError();
  *v91 = 4;
  *(v91 + 8) = 1;
  swift_willThrow();

LABEL_17:
  sqlite3_close(ppDb[0]);
LABEL_18:
  v27 = *MEMORY[0x1E69E9840];
  return v3;
}

void *TTSSQLiteReader.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return v0;
}

uint64_t TTSSQLiteReader.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocClassInstance();
}

void *sub_1A94B7D68()
{
  result = swift_allocObject();
  result[2] = 0xD000000000000033;
  result[3] = 0x80000001A95C3FC0;
  result[4] = 0xD00000000000002ALL;
  result[5] = 0x80000001A95C4000;
  result[6] = 0xD000000000000049;
  result[7] = 0x80000001A95C4030;
  return result;
}

uint64_t *sub_1A94B7DD8(uint64_t *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v8 = *a1;

      sub_1A9442638(v4, v3);
      v18 = v4;
      v19 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1A958AD40;
      sub_1A9442638(0, 0xC000000000000000);
      sub_1A957AFE8();
      v9 = v19;
      result = sub_1A94B84BC(*(v18 + 16), *(v18 + 24));
      *a1 = v18;
      a1[1] = v9 | 0x8000000000000000;
    }

    else
    {
      result = &v18;
    }

    goto LABEL_16;
  }

  if (!v5)
  {
    sub_1A9442638(v4, v3);
    LOWORD(v19) = v3;
    BYTE2(v19) = BYTE2(v3);
    BYTE3(v19) = BYTE3(v3);
    BYTE4(v19) = BYTE4(v3);
    BYTE5(v19) = BYTE5(v3);
    result = &v18;
    v7 = v19 | ((WORD2(v19) | (BYTE6(v3) << 16)) << 32);
    *a1 = v4;
    a1[1] = v7;
    goto LABEL_16;
  }

  v10 = v3 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1A9442638(v4, v3);
  *a1 = xmmword_1A958AD40;
  sub_1A9442638(0, 0xC000000000000000);
  v11 = v4 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v11 < v4)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (sub_1A957AE78() && __OFSUB__(v4, sub_1A957AE98()))
    {
LABEL_19:
      __break(1u);
    }

    v12 = sub_1A957AEA8();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1A957AE68();

    v10 = v15;
  }

  if (v11 < v4)
  {
    __break(1u);
    goto LABEL_18;
  }

  v16 = sub_1A94B84BC(v4, v4 >> 32);

  *a1 = v4;
  a1[1] = v10 | 0x4000000000000000;
  if (!v1)
  {
    result = v16;
  }

LABEL_16:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}