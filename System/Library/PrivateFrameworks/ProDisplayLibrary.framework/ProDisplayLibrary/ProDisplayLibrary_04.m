uint64_t sub_25F79BDF0(uint64_t a1)
{
  v51 = MEMORY[0x277D84FA0];
  v2 = type metadata accessor for Preset(0);
  v42 = a1;
  v3 = (a1 + *(v2 + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v32 = v3[16];
  v33 = v3[17];
  v35 = v3[32];
  v36 = v3[33];
  v37 = *(v3 + 5);
  v31 = *(v3 + 6);
  v38 = v3[56];
  v39 = v3[72];
  v40 = v3[88];
  v9 = *(v3 + 12);
  v8 = *(v3 + 13);
  v10 = *(v3 + 14);
  v45 = v3[120];
  v47 = v3[121];
  v48 = v3[122];
  v49 = v3[123];
  if (qword_27FDAFB50 != -1)
  {
    swift_once();
  }

  v41 = v2;
  v11 = (__swift_project_value_buffer(v2, qword_27FDC1858) + *(v2 + 24));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v30 = v11[17];
  v34 = v11[33];
  v43 = v11[120];
  v44 = v11[121];
  v46 = v11[122];
  v16 = v11[123];
  if (v4 == v12)
  {
    if (v5 == v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v20 = 256;
    if (!v4)
    {
      v20 = 0;
    }

    *&v99[0] = v20 | v12;
    v100 = 108;
    sub_25F7BA74C(&v94, v99);
    v97[0] = v94;
    v97[1] = v95;
    *v98 = *v96;
    *&v98[9] = *&v96[9];
    sub_25F79AB4C(v97);
    if (v5 == v13)
    {
LABEL_5:
      if (v6 == v14)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }
  }

  v21 = 256;
  if (!v5)
  {
    v21 = 0;
  }

  *&v97[0] = v21 | v13;
  v98[24] = 112;
  sub_25F7BA74C(&v91, v97);
  v94 = v91;
  v95 = v92;
  *v96 = *v93;
  *&v96[9] = *&v93[9];
  sub_25F79AB4C(&v94);
  if (v6 != v14)
  {
LABEL_6:
    v17 = 256;
    if (!v6)
    {
      v17 = 0;
    }

    *&v94 = v17 | v14;
    v96[24] = 116;
    sub_25F7BA74C(v90, &v94);
    v91 = *v90;
    v92 = *&v90[16];
    *v93 = *&v90[32];
    *&v93[9] = *&v90[41];
    sub_25F79AB4C(&v91);
  }

LABEL_9:
  if (v7 != v15)
  {
    v18 = 256;
    if (!v7)
    {
      v18 = 0;
    }

    *&v91 = v18 | v15;
    v93[24] = 120;
    sub_25F7BA74C(&v87, &v91);
    *v90 = v87;
    *&v90[16] = v88;
    *&v90[32] = *v89;
    *&v90[41] = *&v89[9];
    sub_25F79AB4C(v90);
  }

  if ((v32 & 1) == 0)
  {
    *v90 = 15;
    memset(&v90[8], 0, 48);
    v90[56] = -92;
    sub_25F7BA74C(v86, v90);
    v87 = *v86;
    v88 = *&v86[16];
    *v89 = *&v86[32];
    *&v89[9] = *&v86[41];
    sub_25F79AB4C(&v87);
  }

  if (qword_27FDAFB48 != -1)
  {
    swift_once();
  }

  if (BYTE9(xmmword_27FDC1840) == 1)
  {
    v19 = sub_25F793550(&unk_2871C46C8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0410);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_25F8249B0;
    *(v22 + 32) = v30;
    v19 = sub_25F793550(v22);
    swift_setDeallocating();
    swift_deallocClassInstance();
  }

  if ((sub_25F755428(v33, v19) & 1) == 0)
  {
    *&v87 = v19;
    *(&v87 + 1) = v33;
    v89[24] = 124;
    sub_25F7BA74C(v86, &v87);
    sub_25F79AB4C(v86);
    if (v35)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if ((v35 & 1) == 0)
  {
LABEL_31:
    *v86 = 16;
    memset(&v86[8], 0, 48);
    v86[56] = -92;
    sub_25F7BA74C(v84, v86);
    sub_25F79AB4C(v84);
  }

LABEL_32:
  if (v36 != v34)
  {
    v23 = 256;
    if (!v36)
    {
      v23 = 0;
    }

    *&v84[0] = v23 | v34;
    v85 = 0x80;
    sub_25F7BA74C(&v79, v84);
    sub_25F79AB4C(&v79);
  }

  if (v37)
  {
    v79 = 17;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = -92;
    sub_25F7BA74C(&v76, &v79);
    sub_25F79AB4C(&v76);
  }

  if ((v38 & 1) == 0 && (*&xmmword_27FDC17F8 > v31 || *(&xmmword_27FDC17F8 + 1) < v31))
  {
    v76 = xmmword_27FDC17F8;
    v77 = v31;
    v78 = -124;
    sub_25F7BA74C(&v71, &v76);
    sub_25F79AB4C(&v71);
  }

  if ((v39 & 1) == 0)
  {
    v71 = 18;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = -92;
    sub_25F7BA74C(&v66, &v71);
    sub_25F79AB4C(&v66);
  }

  if ((v40 & 1) == 0)
  {
    v66 = 19;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = -92;
    sub_25F7BA74C(v64, &v66);
    sub_25F79AB4C(v64);
  }

  v24 = *(v42 + *(v41 + 20) + 168);
  if (v10 == v24)
  {
    if (v9 == v24)
    {
      goto LABEL_48;
    }

LABEL_67:
    *v62 = v24;
    *(v62 + 1) = v9;
    v63 = -116;
    sub_25F7BA74C(v60, v62);
    sub_25F79AB4C(v60);
    if (v8 == v24)
    {
      goto LABEL_49;
    }

    goto LABEL_68;
  }

  *&v64[0] = *(v42 + *(v41 + 20) + 168);
  *(v64 + 1) = v10;
  v65 = -120;
  sub_25F7BA74C(v62, v64);
  sub_25F79AB4C(v62);
  if (v9 != v24)
  {
    goto LABEL_67;
  }

LABEL_48:
  if (v8 == v24)
  {
    goto LABEL_49;
  }

LABEL_68:
  *v60 = v24;
  *(v60 + 1) = v8;
  v61 = -112;
  sub_25F7BA74C(v58, v60);
  sub_25F79AB4C(v58);
LABEL_49:
  if (v45 != v43)
  {
    v25 = 256;
    if (!v45)
    {
      v25 = 0;
    }

    *&v58[0] = v25 | v43;
    v59 = -108;
    sub_25F7BA74C(v56, v58);
    sub_25F79AB4C(v56);
  }

  if (v47 != v44)
  {
    v26 = 256;
    if (!v47)
    {
      v26 = 0;
    }

    *&v56[0] = v26 | v44;
    v57 = -104;
    sub_25F7BA74C(v54, v56);
    sub_25F79AB4C(v54);
  }

  if (v48 != v46)
  {
    v27 = 256;
    if (!v48)
    {
      v27 = 0;
    }

    *&v54[0] = v27 | v46;
    v55 = -100;
    sub_25F7BA74C(v52, v54);
    sub_25F79AB4C(v52);
  }

  if (v49 != v16)
  {
    v28 = 256;
    if (!v49)
    {
      v28 = 0;
    }

    *&v52[0] = v28 | v16;
    v53 = -96;
    sub_25F7BA74C(v50, v52);
    sub_25F79AB4C(v50);
  }

  return v51;
}

uint64_t sub_25F79C58C(uint64_t a1)
{
  v51 = MEMORY[0x277D84FA0];
  v2 = type metadata accessor for Preset(0);
  v42 = a1;
  v3 = (a1 + *(v2 + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v32 = v3[16];
  v33 = v3[17];
  v35 = v3[32];
  v36 = v3[33];
  v37 = *(v3 + 5);
  v31 = *(v3 + 6);
  v38 = v3[56];
  v39 = v3[72];
  v40 = v3[88];
  v9 = *(v3 + 12);
  v8 = *(v3 + 13);
  v10 = *(v3 + 14);
  v45 = v3[120];
  v47 = v3[121];
  v48 = v3[122];
  v49 = v3[123];
  if (qword_27FDAFA98 != -1)
  {
    swift_once();
  }

  v41 = v2;
  v11 = (__swift_project_value_buffer(v2, qword_27FDC1328) + *(v2 + 24));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v30 = v11[17];
  v34 = v11[33];
  v43 = v11[120];
  v44 = v11[121];
  v46 = v11[122];
  v16 = v11[123];
  if (v4 == v12)
  {
    if (v5 == v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v20 = 256;
    if (!v4)
    {
      v20 = 0;
    }

    *&v99[0] = v20 | v12;
    v100 = 108;
    sub_25F7BA74C(&v94, v99);
    v97[0] = v94;
    v97[1] = v95;
    *v98 = *v96;
    *&v98[9] = *&v96[9];
    sub_25F79AB4C(v97);
    if (v5 == v13)
    {
LABEL_5:
      if (v6 == v14)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }
  }

  v21 = 256;
  if (!v5)
  {
    v21 = 0;
  }

  *&v97[0] = v21 | v13;
  v98[24] = 112;
  sub_25F7BA74C(&v91, v97);
  v94 = v91;
  v95 = v92;
  *v96 = *v93;
  *&v96[9] = *&v93[9];
  sub_25F79AB4C(&v94);
  if (v6 != v14)
  {
LABEL_6:
    v17 = 256;
    if (!v6)
    {
      v17 = 0;
    }

    *&v94 = v17 | v14;
    v96[24] = 116;
    sub_25F7BA74C(v90, &v94);
    v91 = *v90;
    v92 = *&v90[16];
    *v93 = *&v90[32];
    *&v93[9] = *&v90[41];
    sub_25F79AB4C(&v91);
  }

LABEL_9:
  if (v7 != v15)
  {
    v18 = 256;
    if (!v7)
    {
      v18 = 0;
    }

    *&v91 = v18 | v15;
    v93[24] = 120;
    sub_25F7BA74C(&v87, &v91);
    *v90 = v87;
    *&v90[16] = v88;
    *&v90[32] = *v89;
    *&v90[41] = *&v89[9];
    sub_25F79AB4C(v90);
  }

  if ((v32 & 1) == 0)
  {
    *v90 = 15;
    memset(&v90[8], 0, 48);
    v90[56] = -92;
    sub_25F7BA74C(v86, v90);
    v87 = *v86;
    v88 = *&v86[16];
    *v89 = *&v86[32];
    *&v89[9] = *&v86[41];
    sub_25F79AB4C(&v87);
  }

  if (qword_27FDAFA90 != -1)
  {
    swift_once();
  }

  if (BYTE9(xmmword_27FDC1310) == 1)
  {
    v19 = sub_25F793550(&unk_2871C4868);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0410);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_25F8249B0;
    *(v22 + 32) = v30;
    v19 = sub_25F793550(v22);
    swift_setDeallocating();
    swift_deallocClassInstance();
  }

  if ((sub_25F755428(v33, v19) & 1) == 0)
  {
    *&v87 = v19;
    *(&v87 + 1) = v33;
    v89[24] = 124;
    sub_25F7BA74C(v86, &v87);
    sub_25F79AB4C(v86);
    if (v35)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if ((v35 & 1) == 0)
  {
LABEL_31:
    *v86 = 16;
    memset(&v86[8], 0, 48);
    v86[56] = -92;
    sub_25F7BA74C(v84, v86);
    sub_25F79AB4C(v84);
  }

LABEL_32:
  if (v36 != v34)
  {
    v23 = 256;
    if (!v36)
    {
      v23 = 0;
    }

    *&v84[0] = v23 | v34;
    v85 = 0x80;
    sub_25F7BA74C(&v79, v84);
    sub_25F79AB4C(&v79);
  }

  if (v37)
  {
    v79 = 17;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = -92;
    sub_25F7BA74C(&v76, &v79);
    sub_25F79AB4C(&v76);
  }

  if ((v38 & 1) == 0 && (*&xmmword_27FDC12C8 > v31 || *(&xmmword_27FDC12C8 + 1) < v31))
  {
    v76 = xmmword_27FDC12C8;
    v77 = v31;
    v78 = -124;
    sub_25F7BA74C(&v71, &v76);
    sub_25F79AB4C(&v71);
  }

  if ((v39 & 1) == 0)
  {
    v71 = 18;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = -92;
    sub_25F7BA74C(&v66, &v71);
    sub_25F79AB4C(&v66);
  }

  if ((v40 & 1) == 0)
  {
    v66 = 19;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = -92;
    sub_25F7BA74C(v64, &v66);
    sub_25F79AB4C(v64);
  }

  v24 = *(v42 + *(v41 + 20) + 168);
  if (v10 == v24)
  {
    if (v9 == v24)
    {
      goto LABEL_48;
    }

LABEL_67:
    *v62 = v24;
    *(v62 + 1) = v9;
    v63 = -116;
    sub_25F7BA74C(v60, v62);
    sub_25F79AB4C(v60);
    if (v8 == v24)
    {
      goto LABEL_49;
    }

    goto LABEL_68;
  }

  *&v64[0] = *(v42 + *(v41 + 20) + 168);
  *(v64 + 1) = v10;
  v65 = -120;
  sub_25F7BA74C(v62, v64);
  sub_25F79AB4C(v62);
  if (v9 != v24)
  {
    goto LABEL_67;
  }

LABEL_48:
  if (v8 == v24)
  {
    goto LABEL_49;
  }

LABEL_68:
  *v60 = v24;
  *(v60 + 1) = v8;
  v61 = -112;
  sub_25F7BA74C(v58, v60);
  sub_25F79AB4C(v58);
LABEL_49:
  if (v45 != v43)
  {
    v25 = 256;
    if (!v45)
    {
      v25 = 0;
    }

    *&v58[0] = v25 | v43;
    v59 = -108;
    sub_25F7BA74C(v56, v58);
    sub_25F79AB4C(v56);
  }

  if (v47 != v44)
  {
    v26 = 256;
    if (!v47)
    {
      v26 = 0;
    }

    *&v56[0] = v26 | v44;
    v57 = -104;
    sub_25F7BA74C(v54, v56);
    sub_25F79AB4C(v54);
  }

  if (v48 != v46)
  {
    v27 = 256;
    if (!v48)
    {
      v27 = 0;
    }

    *&v54[0] = v27 | v46;
    v55 = -100;
    sub_25F7BA74C(v52, v54);
    sub_25F79AB4C(v52);
  }

  if (v49 != v16)
  {
    v28 = 256;
    if (!v49)
    {
      v28 = 0;
    }

    *&v52[0] = v28 | v16;
    v53 = -96;
    sub_25F7BA74C(v50, v52);
    sub_25F79AB4C(v50);
  }

  return v51;
}

uint64_t sub_25F79CD28(uint64_t a1)
{
  v51 = MEMORY[0x277D84FA0];
  v2 = type metadata accessor for Preset(0);
  v42 = a1;
  v3 = (a1 + *(v2 + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v32 = v3[16];
  v33 = v3[17];
  v35 = v3[32];
  v36 = v3[33];
  v37 = *(v3 + 5);
  v31 = *(v3 + 6);
  v38 = v3[56];
  v39 = v3[72];
  v40 = v3[88];
  v9 = *(v3 + 12);
  v8 = *(v3 + 13);
  v10 = *(v3 + 14);
  v45 = v3[120];
  v47 = v3[121];
  v48 = v3[122];
  v49 = v3[123];
  if (qword_27FDAFAD0 != -1)
  {
    swift_once();
  }

  v41 = v2;
  v11 = (__swift_project_value_buffer(v2, qword_27FDC1428) + *(v2 + 24));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v30 = v11[17];
  v34 = v11[33];
  v43 = v11[120];
  v44 = v11[121];
  v46 = v11[122];
  v16 = v11[123];
  if (v4 == v12)
  {
    if (v5 == v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v20 = 256;
    if (!v4)
    {
      v20 = 0;
    }

    *&v99[0] = v20 | v12;
    v100 = 108;
    sub_25F7BA74C(&v94, v99);
    v97[0] = v94;
    v97[1] = v95;
    *v98 = *v96;
    *&v98[9] = *&v96[9];
    sub_25F79AB4C(v97);
    if (v5 == v13)
    {
LABEL_5:
      if (v6 == v14)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }
  }

  v21 = 256;
  if (!v5)
  {
    v21 = 0;
  }

  *&v97[0] = v21 | v13;
  v98[24] = 112;
  sub_25F7BA74C(&v91, v97);
  v94 = v91;
  v95 = v92;
  *v96 = *v93;
  *&v96[9] = *&v93[9];
  sub_25F79AB4C(&v94);
  if (v6 != v14)
  {
LABEL_6:
    v17 = 256;
    if (!v6)
    {
      v17 = 0;
    }

    *&v94 = v17 | v14;
    v96[24] = 116;
    sub_25F7BA74C(v90, &v94);
    v91 = *v90;
    v92 = *&v90[16];
    *v93 = *&v90[32];
    *&v93[9] = *&v90[41];
    sub_25F79AB4C(&v91);
  }

LABEL_9:
  if (v7 != v15)
  {
    v18 = 256;
    if (!v7)
    {
      v18 = 0;
    }

    *&v91 = v18 | v15;
    v93[24] = 120;
    sub_25F7BA74C(&v87, &v91);
    *v90 = v87;
    *&v90[16] = v88;
    *&v90[32] = *v89;
    *&v90[41] = *&v89[9];
    sub_25F79AB4C(v90);
  }

  if ((v32 & 1) == 0)
  {
    *v90 = 15;
    memset(&v90[8], 0, 48);
    v90[56] = -92;
    sub_25F7BA74C(v86, v90);
    v87 = *v86;
    v88 = *&v86[16];
    *v89 = *&v86[32];
    *&v89[9] = *&v86[41];
    sub_25F79AB4C(&v87);
  }

  if (qword_27FDAFAC8 != -1)
  {
    swift_once();
  }

  if (BYTE9(xmmword_27FDC1410) == 1)
  {
    v19 = sub_25F793550(&unk_2871C4A08);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0410);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_25F8249B0;
    *(v22 + 32) = v30;
    v19 = sub_25F793550(v22);
    swift_setDeallocating();
    swift_deallocClassInstance();
  }

  if ((sub_25F755428(v33, v19) & 1) == 0)
  {
    *&v87 = v19;
    *(&v87 + 1) = v33;
    v89[24] = 124;
    sub_25F7BA74C(v86, &v87);
    sub_25F79AB4C(v86);
    if (v35)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if ((v35 & 1) == 0)
  {
LABEL_31:
    *v86 = 16;
    memset(&v86[8], 0, 48);
    v86[56] = -92;
    sub_25F7BA74C(v84, v86);
    sub_25F79AB4C(v84);
  }

LABEL_32:
  if (v36 != v34)
  {
    v23 = 256;
    if (!v36)
    {
      v23 = 0;
    }

    *&v84[0] = v23 | v34;
    v85 = 0x80;
    sub_25F7BA74C(&v79, v84);
    sub_25F79AB4C(&v79);
  }

  if (v37)
  {
    v79 = 17;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = -92;
    sub_25F7BA74C(&v76, &v79);
    sub_25F79AB4C(&v76);
  }

  if ((v38 & 1) == 0 && (*&xmmword_27FDC13C8 > v31 || *(&xmmword_27FDC13C8 + 1) < v31))
  {
    v76 = xmmword_27FDC13C8;
    v77 = v31;
    v78 = -124;
    sub_25F7BA74C(&v71, &v76);
    sub_25F79AB4C(&v71);
  }

  if ((v39 & 1) == 0)
  {
    v71 = 18;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = -92;
    sub_25F7BA74C(&v66, &v71);
    sub_25F79AB4C(&v66);
  }

  if ((v40 & 1) == 0)
  {
    v66 = 19;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = -92;
    sub_25F7BA74C(v64, &v66);
    sub_25F79AB4C(v64);
  }

  v24 = *(v42 + *(v41 + 20) + 168);
  if (v10 == v24)
  {
    if (v9 == v24)
    {
      goto LABEL_48;
    }

LABEL_67:
    *v62 = v24;
    *(v62 + 1) = v9;
    v63 = -116;
    sub_25F7BA74C(v60, v62);
    sub_25F79AB4C(v60);
    if (v8 == v24)
    {
      goto LABEL_49;
    }

    goto LABEL_68;
  }

  *&v64[0] = *(v42 + *(v41 + 20) + 168);
  *(v64 + 1) = v10;
  v65 = -120;
  sub_25F7BA74C(v62, v64);
  sub_25F79AB4C(v62);
  if (v9 != v24)
  {
    goto LABEL_67;
  }

LABEL_48:
  if (v8 == v24)
  {
    goto LABEL_49;
  }

LABEL_68:
  *v60 = v24;
  *(v60 + 1) = v8;
  v61 = -112;
  sub_25F7BA74C(v58, v60);
  sub_25F79AB4C(v58);
LABEL_49:
  if (v45 != v43)
  {
    v25 = 256;
    if (!v45)
    {
      v25 = 0;
    }

    *&v58[0] = v25 | v43;
    v59 = -108;
    sub_25F7BA74C(v56, v58);
    sub_25F79AB4C(v56);
  }

  if (v47 != v44)
  {
    v26 = 256;
    if (!v47)
    {
      v26 = 0;
    }

    *&v56[0] = v26 | v44;
    v57 = -104;
    sub_25F7BA74C(v54, v56);
    sub_25F79AB4C(v54);
  }

  if (v48 != v46)
  {
    v27 = 256;
    if (!v48)
    {
      v27 = 0;
    }

    *&v54[0] = v27 | v46;
    v55 = -100;
    sub_25F7BA74C(v52, v54);
    sub_25F79AB4C(v52);
  }

  if (v49 != v16)
  {
    v28 = 256;
    if (!v49)
    {
      v28 = 0;
    }

    *&v52[0] = v28 | v16;
    v53 = -96;
    sub_25F7BA74C(v50, v52);
    sub_25F79AB4C(v50);
  }

  return v51;
}

uint64_t sub_25F79D4C4(uint64_t a1)
{
  v51 = MEMORY[0x277D84FA0];
  v2 = type metadata accessor for Preset(0);
  v42 = a1;
  v3 = (a1 + *(v2 + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v32 = v3[16];
  v33 = v3[17];
  v35 = v3[32];
  v36 = v3[33];
  v37 = *(v3 + 5);
  v31 = *(v3 + 6);
  v38 = v3[56];
  v39 = v3[72];
  v40 = v3[88];
  v9 = *(v3 + 12);
  v8 = *(v3 + 13);
  v10 = *(v3 + 14);
  v45 = v3[120];
  v47 = v3[121];
  v48 = v3[122];
  v49 = v3[123];
  if (qword_27FDAF848 != -1)
  {
    swift_once();
  }

  v41 = v2;
  v11 = (__swift_project_value_buffer(v2, qword_27FDBF788) + *(v2 + 24));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v30 = v11[17];
  v34 = v11[33];
  v43 = v11[120];
  v44 = v11[121];
  v46 = v11[122];
  v16 = v11[123];
  if (v4 == v12)
  {
    if (v5 == v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v20 = 256;
    if (!v4)
    {
      v20 = 0;
    }

    *&v99[0] = v20 | v12;
    v100 = 108;
    sub_25F7BA74C(&v94, v99);
    v97[0] = v94;
    v97[1] = v95;
    *v98 = *v96;
    *&v98[9] = *&v96[9];
    sub_25F79AB4C(v97);
    if (v5 == v13)
    {
LABEL_5:
      if (v6 == v14)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }
  }

  v21 = 256;
  if (!v5)
  {
    v21 = 0;
  }

  *&v97[0] = v21 | v13;
  v98[24] = 112;
  sub_25F7BA74C(&v91, v97);
  v94 = v91;
  v95 = v92;
  *v96 = *v93;
  *&v96[9] = *&v93[9];
  sub_25F79AB4C(&v94);
  if (v6 != v14)
  {
LABEL_6:
    v17 = 256;
    if (!v6)
    {
      v17 = 0;
    }

    *&v94 = v17 | v14;
    v96[24] = 116;
    sub_25F7BA74C(v90, &v94);
    v91 = *v90;
    v92 = *&v90[16];
    *v93 = *&v90[32];
    *&v93[9] = *&v90[41];
    sub_25F79AB4C(&v91);
  }

LABEL_9:
  if (v7 != v15)
  {
    v18 = 256;
    if (!v7)
    {
      v18 = 0;
    }

    *&v91 = v18 | v15;
    v93[24] = 120;
    sub_25F7BA74C(&v87, &v91);
    *v90 = v87;
    *&v90[16] = v88;
    *&v90[32] = *v89;
    *&v90[41] = *&v89[9];
    sub_25F79AB4C(v90);
  }

  if ((v32 & 1) == 0)
  {
    *v90 = 15;
    memset(&v90[8], 0, 48);
    v90[56] = -92;
    sub_25F7BA74C(v86, v90);
    v87 = *v86;
    v88 = *&v86[16];
    *v89 = *&v86[32];
    *&v89[9] = *&v86[41];
    sub_25F79AB4C(&v87);
  }

  if (qword_27FDAF840 != -1)
  {
    swift_once();
  }

  if (BYTE9(xmmword_27FDBF770) == 1)
  {
    v19 = sub_25F793550(&unk_2871C4BA8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0410);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_25F8249B0;
    *(v22 + 32) = v30;
    v19 = sub_25F793550(v22);
    swift_setDeallocating();
    swift_deallocClassInstance();
  }

  if ((sub_25F755428(v33, v19) & 1) == 0)
  {
    *&v87 = v19;
    *(&v87 + 1) = v33;
    v89[24] = 124;
    sub_25F7BA74C(v86, &v87);
    sub_25F79AB4C(v86);
    if (v35)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if ((v35 & 1) == 0)
  {
LABEL_31:
    *v86 = 16;
    memset(&v86[8], 0, 48);
    v86[56] = -92;
    sub_25F7BA74C(v84, v86);
    sub_25F79AB4C(v84);
  }

LABEL_32:
  if (v36 != v34)
  {
    v23 = 256;
    if (!v36)
    {
      v23 = 0;
    }

    *&v84[0] = v23 | v34;
    v85 = 0x80;
    sub_25F7BA74C(&v79, v84);
    sub_25F79AB4C(&v79);
  }

  if (v37)
  {
    v79 = 17;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = -92;
    sub_25F7BA74C(&v76, &v79);
    sub_25F79AB4C(&v76);
  }

  if ((v38 & 1) == 0 && (*&xmmword_27FDBF728 > v31 || *(&xmmword_27FDBF728 + 1) < v31))
  {
    v76 = xmmword_27FDBF728;
    v77 = v31;
    v78 = -124;
    sub_25F7BA74C(&v71, &v76);
    sub_25F79AB4C(&v71);
  }

  if ((v39 & 1) == 0)
  {
    v71 = 18;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = -92;
    sub_25F7BA74C(&v66, &v71);
    sub_25F79AB4C(&v66);
  }

  if ((v40 & 1) == 0)
  {
    v66 = 19;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = -92;
    sub_25F7BA74C(v64, &v66);
    sub_25F79AB4C(v64);
  }

  v24 = *(v42 + *(v41 + 20) + 168);
  if (v10 == v24)
  {
    if (v9 == v24)
    {
      goto LABEL_48;
    }

LABEL_67:
    *v62 = v24;
    *(v62 + 1) = v9;
    v63 = -116;
    sub_25F7BA74C(v60, v62);
    sub_25F79AB4C(v60);
    if (v8 == v24)
    {
      goto LABEL_49;
    }

    goto LABEL_68;
  }

  *&v64[0] = *(v42 + *(v41 + 20) + 168);
  *(v64 + 1) = v10;
  v65 = -120;
  sub_25F7BA74C(v62, v64);
  sub_25F79AB4C(v62);
  if (v9 != v24)
  {
    goto LABEL_67;
  }

LABEL_48:
  if (v8 == v24)
  {
    goto LABEL_49;
  }

LABEL_68:
  *v60 = v24;
  *(v60 + 1) = v8;
  v61 = -112;
  sub_25F7BA74C(v58, v60);
  sub_25F79AB4C(v58);
LABEL_49:
  if (v45 != v43)
  {
    v25 = 256;
    if (!v45)
    {
      v25 = 0;
    }

    *&v58[0] = v25 | v43;
    v59 = -108;
    sub_25F7BA74C(v56, v58);
    sub_25F79AB4C(v56);
  }

  if (v47 != v44)
  {
    v26 = 256;
    if (!v47)
    {
      v26 = 0;
    }

    *&v56[0] = v26 | v44;
    v57 = -104;
    sub_25F7BA74C(v54, v56);
    sub_25F79AB4C(v54);
  }

  if (v48 != v46)
  {
    v27 = 256;
    if (!v48)
    {
      v27 = 0;
    }

    *&v54[0] = v27 | v46;
    v55 = -100;
    sub_25F7BA74C(v52, v54);
    sub_25F79AB4C(v52);
  }

  if (v49 != v16)
  {
    v28 = 256;
    if (!v49)
    {
      v28 = 0;
    }

    *&v52[0] = v28 | v16;
    v53 = -96;
    sub_25F7BA74C(v50, v52);
    sub_25F79AB4C(v50);
  }

  return v51;
}

uint64_t sub_25F79DC60(uint64_t *a1, void *a2, __int128 *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, double *a7, double *a8, double *a9, double *a10, int64x2_t *a11, char *a12, int64x2_t *a13, uint64_t *a14, void *a15, double *a16, _BYTE *a17, uint64_t a18, void *a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  v137 = a7;
  v138 = a8;
  v160 = a6;
  v136[1] = a22;
  v235 = *MEMORY[0x277D85DE8];
  v164 = MEMORY[0x277D84FA0];
  v26 = type metadata accessor for Preset(0);
  v27 = a1 + *(v26 + 20);
  v28 = *(v27 + 1);
  v228[2] = *(v27 + 2);
  LOBYTE(a1) = v27[48];
  v229 = a1;
  v30 = *(v27 + 1);
  v142 = *v27;
  v143 = v28;
  v228[1] = v30;
  v228[0] = v142;
  v141 = *(v27 + 2);
  LOBYTE(v31) = v27[105];
  v32 = *(v27 + 15);
  v163 = *(v27 + 14);
  LOBYTE(v33) = v27[128];
  LODWORD(v162) = v27[153];
  v34 = *(v27 + 20);
  v35 = *(v27 + 21);
  v36 = *(v27 + 22);
  v161 = *(v27 + 23);
  v159 = v27[192];
  v145 = *(v27 + 25);
  v149 = v27[208];
  v146 = v27[209];
  v37 = *(v27 + 27);
  v151 = *(v27 + 28);
  v153 = *(v27 + 29);
  v147 = v27[240];
  v38 = v27[242];
  v155 = v27[241];
  v156 = v38;
  v157 = v27[243];
  if (*a2 != -1)
  {
    goto LABEL_193;
  }

  while (1)
  {
    v39 = __swift_project_value_buffer(v26, a3) + *(v26 + 20);
    v40 = *(v39 + 176);
    v140 = *(v39 + 200);
    v41 = *(v39 + 208);
    v42 = *(v39 + 209);
    v44 = *(v39 + 216);
    v43 = *(v39 + 224);
    v26 = *(v39 + 232);
    v45 = *(v39 + 241);
    v46 = *(v39 + 242);
    v139 = *(v39 + 243);
    v154 = v46;
    v152 = v45;
    v150 = v43;
    v144 = v42;
    v148 = v41;
    if (v229)
    {
    }

    else
    {
      v47 = *a4;

      if (v47 != -1)
      {
        swift_once();
      }

      if ((Set<>.containsCustom()(*a5) & 1) == 0)
      {
        v230 = 4;
        v231 = 0u;
        v232 = 0u;
        v233 = 0u;
        v234 = -92;
        goto LABEL_12;
      }
    }

    if (*a4 != -1)
    {
      swift_once();
    }

    v48 = *a5;
    if ((sub_25F754CAC(v228, v48) & 1) == 0)
    {
      LOBYTE(v223) = a1;
      v230 = v48;
      v231 = v142;
      v232 = v143;
      v233 = v141;
      v234 = a1 | 0xC;

LABEL_12:
      sub_25F7BA74C(v226, &v230);
      *v227 = *v226;
      *&v227[16] = *&v226[16];
      *&v227[32] = *&v226[32];
      *&v227[41] = *&v226[41];
      sub_25F79AB4C(v227);
    }

    a3 = v218;
    if ((v31 & 1) == 0)
    {
      *v227 = 5;
      memset(&v227[8], 0, 48);
      v227[56] = -92;
      sub_25F7BA74C(&v223, v227);
      *v226 = v223;
      *&v226[16] = v224;
      *&v226[32] = v225[0];
      *&v226[41] = *(v225 + 9);
      sub_25F79AB4C(v226);
    }

    if ((v33 & 1) == 0)
    {
      if (*a4 != -1)
      {
        swift_once();
      }

      v53 = Set<>.containsCustom()(*v160);
      v33 = v161;
      v54 = v163;
      if ((v53 & 1) == 0)
      {
        *v226 = 6;
        memset(&v226[8], 0, 48);
        v226[56] = -92;
        a5 = &v164;
        sub_25F7BA74C(v222, v226);
        v223 = *v222;
        v224 = *&v222[16];
        v225[0] = *&v222[32];
        *(v225 + 9) = *&v222[41];
        sub_25F79AB4C(&v223);
        v51 = v162;
        goto LABEL_32;
      }

      v55 = *v137;
      v56 = *v138;
      *v226 = v163;
      *&v226[8] = v32;
      v226[16] = 0;
      WhitePoint.chroma.getter(&v223);
      if (v55 > *&v223 || *&v223 > v56)
      {
        *&v219.f64[0] = v54;
        *&v219.f64[1] = v32;
        LOBYTE(v220) = 0;
        WhitePoint.chroma.getter(v218);
        *v226 = v55;
        *&v226[8] = v56;
        *&v226[16] = *v218;
        v226[56] = 20;
        sub_25F7BA74C(v222, v226);
        v223 = *v222;
        v224 = *&v222[16];
        v225[0] = *&v222[32];
        *(v225 + 9) = *&v222[41];
        sub_25F79AB4C(&v223);
      }

      v57 = *a9;
      v58 = *a10;
      *&v223 = v54;
      *(&v223 + 1) = v32;
      LOBYTE(v224) = 0;
      a5 = &v223;
      WhitePoint.chroma.getter(v222);
      if (v57 <= *&v222[8])
      {
        v51 = v162;
        v59 = v163;
        if (*&v222[8] <= v58)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v51 = v162;
        v59 = v163;
      }

      *v218 = v59;
      *&v218[8] = v32;
      v218[16] = 0;
      WhitePoint.chroma.getter(v217);
      *&v223 = v57;
      *(&v223 + 1) = v58;
      *&v224 = *&v217[8];
      BYTE8(v225[1]) = 24;
      a5 = &v164;
      sub_25F7BA74C(&v219, &v223);
      *v222 = v219;
      *&v222[16] = v220;
      *&v222[32] = v221[0];
      *&v222[41] = *(v221 + 9);
      v52 = v222;
      goto LABEL_31;
    }

    v49 = v32;
    if (*a4 != -1)
    {
      swift_once();
    }

    a5 = *v160;
    v32 = v163;
    v50 = sub_25F755234(v163, v49, 1u, *v160);
    v33 = v161;
    v51 = v162;
    if ((v50 & 1) == 0)
    {
      LOBYTE(v219.f64[0]) = 1;
      *v226 = a5;
      *&v226[8] = v32;
      *&v226[16] = v49;
      v226[24] = 1;
      v226[56] = 16;

      a5 = &v164;
      sub_25F7BA74C(v222, v226);
      v223 = *v222;
      v224 = *&v222[16];
      v225[0] = *&v222[32];
      *(v225 + 9) = *&v222[41];
      v52 = &v223;
LABEL_31:
      sub_25F79AB4C(v52);
    }

LABEL_32:
    if ((v51 & 1) == 0)
    {
      *v222 = 7;
      memset(&v222[8], 0, 48);
      v222[56] = -92;
      a5 = &v164;
      sub_25F7BA74C(v218, v222);
      v219 = *v218;
      v220 = *&v218[16];
      v221[0] = *&v218[32];
      *(v221 + 9) = *&v218[41];
      sub_25F79AB4C(&v219);
    }

    if (*a4 != -1)
    {
      swift_once();
    }

    v60 = vcvtq_f64_s64(*a11);
    if (v60.f64[0] > v60.f64[1])
    {
      __break(1u);
LABEL_195:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        goto LABEL_200;
      }

      goto LABEL_78;
    }

    if (v35 < v60.f64[0] || v35 > v60.f64[1])
    {
      v219 = v60;
      *&v220 = v35;
      BYTE8(v221[1]) = 32;
      a5 = &v164;
      sub_25F7BA74C(v217, &v219);
      *v218 = *v217;
      *&v218[16] = *&v217[16];
      *&v218[32] = *&v217[32];
      *&v218[41] = *&v217[41];
      sub_25F79AB4C(v218);
      v61 = *a12;
      if (*a12)
      {
LABEL_40:
        if (v34 == v35)
        {
          goto LABEL_48;
        }

        *v218 = 8;
        memset(&v218[8], 0, 48);
        v62 = -92;
        goto LABEL_47;
      }
    }

    else
    {
      v61 = *a12;
      if (*a12)
      {
        goto LABEL_40;
      }
    }

    v61 = a13;
    v63 = vcvtq_f64_s64(*a13);
    if (v63.f64[0] > v63.f64[1])
    {
      break;
    }

    if (v34 > v63.f64[1] || v34 < v63.f64[0])
    {
      *v218 = v63;
      *&v218[16] = v34;
      v62 = 28;
LABEL_47:
      v218[56] = v62;
      sub_25F7BA74C(&v214, v218);
      *v217 = v214;
      *&v217[16] = v215;
      *&v217[32] = v216[0];
      *&v217[41] = *(v216 + 9);
      sub_25F79AB4C(v217);
    }

LABEL_48:
    if (v34 < v35)
    {
      *v217 = 9;
      memset(&v217[8], 0, 48);
      v217[56] = -92;
      sub_25F7BA74C(v213, v217);
      v214 = *v213;
      v215 = *&v213[16];
      v216[0] = *&v213[32];
      *(v216 + 9) = *&v213[41];
      sub_25F79AB4C(&v214);
    }

    if (v36 != v40)
    {
      *&v214 = v40;
      *(&v214 + 1) = v36;
      BYTE8(v216[1]) = 36;
      sub_25F7BA74C(&v210, &v214);
      *v213 = v210;
      *&v213[16] = v211;
      *&v213[32] = v212[0];
      *&v213[41] = *(v212 + 9);
      sub_25F79AB4C(v213);
    }

    v158 = v26;
    v32 = (v33 + 16);
    v64 = *(v33 + 16);
    if (v64)
    {
      v51 = &v202;
      v65 = (v33 + 48);
      v26 = *(v33 + 16);
      while (1)
      {
        v67 = *(v65 - 16);
        v68 = *v65;
        v69 = v65[48];
        if (v67 <= 2)
        {
          break;
        }

        if (*(v65 - 16) > 4u)
        {
          if (v67 != 5 || ((v68 | v69) & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else if (v67 == 3)
        {
          goto LABEL_61;
        }

LABEL_54:
        v66 = v61 & 1 | 0x28;
        *v213 = *(v65 - 16);
        v213[56] = v66;
        sub_25F7BA74C(v209, v213);
        v210 = *v209;
        v211 = *&v209[16];
        v212[0] = *&v209[32];
        *(v212 + 9) = *&v209[41];
        sub_25F79AB4C(&v210);
        v61 = v66;
LABEL_55:
        v65 += 80;
        if (!--v64)
        {
          goto LABEL_69;
        }
      }

      if (!*(v65 - 16))
      {
        if ((v69 & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }

LABEL_61:
      if ((v68 & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    v26 = 0;
    *v213 = 10;
    memset(&v213[8], 0, 48);
    v213[56] = -92;
    sub_25F7BA74C(v209, v213);
    v210 = *v209;
    v211 = *&v209[16];
    v212[0] = *&v209[32];
    v51 = &v202;
    *(v212 + 9) = *&v209[41];
    sub_25F79AB4C(&v210);
LABEL_69:

    a4 = 0;
    v71 = sub_25F79ABD0(v70);

    v72 = sub_25F798FCC(v71);

    if (v72[2])
    {
      *&v210 = sub_25F812D3C(v72);
      BYTE8(v212[1]) = 44;
      sub_25F7BA74C(v208, &v210);
      *v209 = *v208;
      *&v209[16] = *&v208[16];
      *&v209[32] = *&v208[32];
      v51 = &v202;
      *&v209[41] = *&v208[41];
      sub_25F79AB4C(v209);
    }

    else
    {
    }

    v162 = 0;
    v73 = *v32;
    v74 = MEMORY[0x277D84F90];
    v163 = v26;
    if (v73)
    {
      a4 = (v33 + 16);
      *v209 = MEMORY[0x277D84F90];
      sub_25F817D28(0, v73, 0);
      v74 = *v209;
      v75 = (v33 + 32);
      v76 = *(*v209 + 16);
      do
      {
        v77 = *v75;
        v75 += 80;
        v26 = v77;
        *v209 = v74;
        v78 = *(v74 + 24);
        if (v76 >= v78 >> 1)
        {
          sub_25F817D28((v78 > 1), v76 + 1, 1);
          v74 = *v209;
        }

        *(v74 + 16) = v76 + 1;
        *(v74 + v76++ + 32) = v26;
        --v73;
      }

      while (v73);
    }

    v33 = sub_25F817F80(v74);

    v79 = *(v33 + 32);
    v80 = v79 & 0x3F;
    a5 = ((1 << v79) + 63) >> 6;
    a3 = (8 * a5);

    if (v80 > 0xD)
    {
      goto LABEL_195;
    }

LABEL_78:
    v31 = v136;
    MEMORY[0x28223BE20](v81);
    a1 = (v136 - ((a3 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(a1, a3);
    v82 = 0;
    v83 = 0;
    v84 = 1 << *(v33 + 32);
    v85 = -1;
    if (v84 < 64)
    {
      v85 = ~(-1 << v84);
    }

    v86 = v85 & *(v33 + 56);
    v87 = (v84 + 63) >> 6;
    while (v86)
    {
      v88 = __clz(__rbit64(v86));
      v86 &= v86 - 1;
      v89 = v88 | (v83 << 6);
LABEL_88:
      if (*(*(v33 + 48) + v89) - 2 >= 4)
      {
        *(a1 + ((v89 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v89;
        v92 = __OFADD__(v82++, 1);
        if (v92)
        {
          __break(1u);
LABEL_92:
          v26 = sub_25F82025C((v136 - ((a3 + 15) & 0x3FFFFFFFFFFFFFF0)), a5, v82, v33);
LABEL_93:
          v93 = *(v33 + 32);
          v94 = v93 & 0x3F;
          a5 = ((1 << v93) + 63) >> 6;
          a3 = (8 * a5);

          if (v94 > 0xD)
          {

            if (swift_stdlib_isStackAllocationSafe())
            {

              goto LABEL_94;
            }

            v135 = swift_slowAlloc();
            v106 = sub_25F79921C(v135, a5, v33, sub_25F798138);

            MEMORY[0x25F8E88D0](v135, -1, -1);
          }

          else
          {
LABEL_94:
            v31 = v136;
            MEMORY[0x28223BE20](v95);
            a1 = (v136 - ((a3 + 15) & 0x3FFFFFFFFFFFFFF0));
            bzero(a1, a3);
            v96 = 0;
            v97 = 0;
            v98 = 1 << *(v33 + 32);
            v99 = -1;
            if (v98 < 64)
            {
              v99 = ~(-1 << v98);
            }

            v100 = v99 & *(v33 + 56);
            v101 = (v98 + 63) >> 6;
            while (1)
            {
              if (v100)
              {
                v102 = __clz(__rbit64(v100));
                v100 &= v100 - 1;
                v103 = v102 | (v97 << 6);
              }

              else
              {
                v104 = v97;
                do
                {
                  v97 = v104 + 1;
                  if (__OFADD__(v104, 1))
                  {
                    goto LABEL_191;
                  }

                  if (v97 >= v101)
                  {
                    goto LABEL_108;
                  }

                  v105 = *(v33 + 56 + 8 * v97);
                  ++v104;
                }

                while (!v105);
                v100 = (v105 - 1) & v105;
                v103 = __clz(__rbit64(v105)) | (v97 << 6);
              }

              if (*(*(v33 + 48) + v103) - 2 <= 3)
              {
                *(a1 + ((v103 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v103;
                v92 = __OFADD__(v96++, 1);
                if (v92)
                {
                  break;
                }
              }
            }

            __break(1u);
LABEL_108:
            v106 = sub_25F82025C((v136 - ((a3 + 15) & 0x3FFFFFFFFFFFFFF0)), a5, v96, v33);
          }

          if (*(v26 + 16) != 1)
          {
            *v209 = 11;
            memset(&v209[8], 0, 48);
            v209[56] = -92;
            sub_25F7BA74C(&v205, v209);
            *v208 = v205;
            *&v208[16] = v206;
            *&v208[32] = v207[0];
            v51 = &v202;
            *&v208[41] = *(v207 + 9);
            sub_25F79AB4C(v208);
          }

          v107 = *(v106 + 16);
          if (v34 == v35)
          {
            if (v107)
            {
              *v208 = v106;
              v208[56] = 48;

              sub_25F7BA74C(&v202, v208);
              v205 = v202;
              v206 = v203;
              v207[0] = v204[0];
              v51 = &v202;
              *(v207 + 9) = *(v204 + 9);
              goto LABEL_116;
            }
          }

          else if (!v107)
          {
            *v208 = 12;
            memset(&v208[8], 0, 48);
            v208[56] = -92;
            sub_25F7BA74C(&v202, v208);
            v205 = v202;
            v206 = v203;
            v207[0] = v204[0];
            v51 = &v202;
            *(v207 + 9) = *(v204 + 9);
LABEL_116:
            sub_25F79AB4C(&v205);
          }

          v108 = *a14;
          if (*(*a14 + 16) <= *(v26 + 16) >> 3)
          {
            *&v205 = v26;

            sub_25F7985BC(v108);
            v109 = v205;
          }

          else
          {

            v109 = sub_25F7986C0(v108, v26);
          }

          a3 = &v190;
          a5 = *(v109 + 16);

          if (a5)
          {
            *&v205 = v108;
            *(&v205 + 1) = v26;
            BYTE8(v207[1]) = 52;

            a5 = &v164;
            sub_25F7BA74C(&v199, &v205);
            v202 = v199;
            v203 = v200;
            v204[0] = v201[0];
            *(v51 + 41) = *(v201 + 9);
            sub_25F79AB4C(&v202);
          }

          if (*(v108 + 16) <= *(v106 + 16) >> 3)
          {
            *&v202 = v106;
            a5 = &v202;
            sub_25F7985BC(v108);
            v110 = v202;
          }

          else
          {
            v110 = sub_25F7986C0(v108, v106);
          }

          a4 = v159;
          if (*(v110 + 16))
          {
            *&v202 = v108;
            *(&v202 + 1) = v110;
            BYTE8(v204[1]) = 56;

            a5 = &v164;
            sub_25F7BA74C(&v196, &v202);
            v199 = v196;
            v200 = v197;
            v201[0] = v198[0];
            *(v201 + 9) = *(v198 + 9);
            sub_25F79AB4C(&v199);
          }

          else
          {
          }

          if (sub_25F761900(a4, v33))
          {
          }

          else
          {
            *&v199 = v33;
            *(&v199 + 1) = a4;
            BYTE8(v201[1]) = 60;
            a5 = &v164;
            sub_25F7BA74C(&v193, &v199);
            v196 = v193;
            v197 = v194;
            v198[0] = v195[0];
            *(v198 + 9) = *(v195 + 9);
            sub_25F79AB4C(&v196);
          }

          if ((a4 - 2) <= 3u)
          {
            *&v196 = a4;
            BYTE8(v198[1]) = 64;
            a5 = &v164;
            sub_25F7BA74C(&v190, &v196);
            v193 = v190;
            v194 = v191;
            v195[0] = v192[0];
            *(v195 + 9) = *(v192 + 9);
            sub_25F79AB4C(&v193);
          }

          a1 = &v176;
          sub_25F757C58(v26, &v193);

          v31 = v158;
          if (!v193)
          {
            v111 = -1;
            v112 = v32;
            do
            {
              if (v111 - v163 == -1)
              {
                goto LABEL_139;
              }

              if (++v111 >= *v32)
              {
                goto LABEL_192;
              }

              v113 = (v112 + 10);
              v114 = *(v112 + 16);
              v112 += 10;
            }

            while (v114);
            if (*v113)
            {
LABEL_139:
              if (v145 == v140)
              {
                goto LABEL_150;
              }

              *&v193 = v140;
              *(&v193 + 1) = v145;
              BYTE8(v195[1]) = 72;
              sub_25F7BA74C(&v187, &v193);
              v190 = v187;
              v191 = v188;
              v192[0] = v189[0];
              *(v192 + 9) = *(v189 + 9);
              v115 = &v190;
              goto LABEL_149;
            }

            v116 = *(v113 - 1);
            v117 = *a16;
            if (*a15 > v116 || v117 < v116)
            {
              *&v193 = *a15;
              *(&v193 + 1) = v117;
              *&v194 = v116;
              BYTE8(v195[1]) = 68;
              sub_25F7BA74C(&v187, &v193);
              v190 = v187;
              v191 = v188;
              v192[0] = v189[0];
              *(v192 + 9) = *(v189 + 9);
              sub_25F79AB4C(&v190);
            }

            if (v145 != v116)
            {
              *&v190 = v116;
              *(&v190 + 1) = v145;
              BYTE8(v192[1]) = 72;
              sub_25F7BA74C(&v184, &v190);
              v187 = v184;
              v188 = v185;
              v189[0] = v186[0];
              *(v189 + 9) = *(v186 + 9);
              v115 = &v187;
LABEL_149:
              sub_25F79AB4C(v115);
            }
          }

LABEL_150:
          if (v149 != v148)
          {
            v119 = 256;
            if (!v149)
            {
              v119 = 0;
            }

            *&v187 = v119 | v148;
            BYTE8(v189[1]) = 76;
            sub_25F7BA74C(&v181, &v187);
            v184 = v181;
            v185 = v182;
            v186[0] = v183[0];
            *(v186 + 9) = *(v183 + 9);
            sub_25F79AB4C(&v184);
          }

          v120 = v157;
          v121 = v153;
          if (*a17 == 1)
          {
            v122 = sub_25F793550(a18);
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0410);
            v123 = swift_allocObject();
            *(v123 + 16) = xmmword_25F8249B0;
            *(v123 + 32) = v144;
            v122 = sub_25F793550(v123);
            swift_setDeallocating();
            swift_deallocClassInstance();
          }

          v124 = v146;
          if (sub_25F755428(v146, v122))
          {
          }

          else
          {
            *&v184 = v122;
            *(&v184 + 1) = v124;
            BYTE8(v186[1]) = 80;
            sub_25F7BA74C(&v181, &v184);
            sub_25F79AB4C(&v181);
          }

          if (v37 != v44 || v151 != v150)
          {
            *&v181 = v44;
            *(&v181 + 1) = v150;
            *&v182 = v37;
            *(&v182 + 1) = v151;
            BYTE8(v183[1]) = 84;
            sub_25F7BA74C(&v176, &v181);
            sub_25F79AB4C(&v176);
          }

          if (*(v121 + 16) != 1)
          {
            v176 = 14;
            v177 = 0u;
            v178 = 0u;
            v179 = 0u;
            v180 = -92;
            sub_25F7BA74C(v174, &v176);
            sub_25F79AB4C(v174);
          }

          v125 = *a19;
          if (*a19)
          {

            v31 = v125;
          }

          sub_25F757CD4(v121, v174);
          if (LOBYTE(v174[0]) == 2 || (v126 = v174[0] & 1, (sub_25F761904(v126, v31) & 1) != 0))
          {
          }

          else
          {
            *&v174[0] = v31;
            *(&v174[0] + 1) = v126;
            v175 = 88;
            sub_25F7BA74C(v172, v174);
            sub_25F79AB4C(v172);
          }

          sub_25F757CD4(v121, v172);
          if (LOBYTE(v172[0]) == 2)
          {
            v127 = v147;
            goto LABEL_174;
          }

          v127 = v147;
          if (v147 != (v172[0] & 1))
          {
LABEL_174:
            *&v172[0] = v121;
            *(&v172[0] + 1) = v127;
            v173 = 92;

            sub_25F7BA74C(v170, v172);
            sub_25F79AB4C(v170);
          }

          if (v155 != v152)
          {
            v128 = 256;
            if (!v155)
            {
              v128 = 0;
            }

            *&v170[0] = v128 | v152;
            v171 = 96;
            sub_25F7BA74C(v168, v170);
            sub_25F79AB4C(v168);
          }

          if (v156 != v154)
          {
            v129 = 256;
            if (!v156)
            {
              v129 = 0;
            }

            *&v168[0] = v129 | v154;
            v169 = 100;
            sub_25F7BA74C(v166, v168);
            sub_25F79AB4C(v166);
          }

          if (*a20)
          {
            v130 = *a20;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0418);
            v131 = swift_allocObject();
            *(v131 + 16) = xmmword_25F8249B0;
            *(v131 + 32) = v139;
            v130 = sub_25F793408(v131);
            swift_setDeallocating();
            swift_deallocClassInstance();
          }

          if (sub_25F761904(v120, v130))
          {
          }

          else
          {
            *&v166[0] = v130;
            *(&v166[0] + 1) = v120;
            v167 = 104;

            sub_25F7BA74C(v165, v166);
            sub_25F79AB4C(v165);
          }

          return v164;
        }
      }
    }

    v90 = v83;
    while (1)
    {
      v83 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        break;
      }

      if (v83 >= v87)
      {
        goto LABEL_92;
      }

      v91 = *(v33 + 56 + 8 * v83);
      ++v90;
      if (v91)
      {
        v86 = (v91 - 1) & v91;
        v89 = __clz(__rbit64(v91)) | (v83 << 6);
        goto LABEL_88;
      }
    }

    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    swift_once();
  }

  __break(1u);
LABEL_200:
  v133 = swift_slowAlloc();

  a4 = v162;
  v134 = sub_25F79921C(v133, a5, v33, sub_25F798124);
  if (!a4)
  {
    v26 = v134;
    v162 = 0;
    swift_bridgeObjectRelease_n();
    MEMORY[0x25F8E88D0](v133, -1, -1);
    goto LABEL_93;
  }

  swift_bridgeObjectRelease_n();
  result = MEMORY[0x25F8E88D0](v133, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_25F79F324(uint64_t a1)
{
  v51 = MEMORY[0x277D84FA0];
  v2 = type metadata accessor for Preset(0);
  v42 = a1;
  v3 = (a1 + *(v2 + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v32 = v3[16];
  v33 = v3[17];
  v35 = v3[32];
  v36 = v3[33];
  v37 = *(v3 + 5);
  v31 = *(v3 + 6);
  v38 = v3[56];
  v39 = v3[72];
  v40 = v3[88];
  v9 = *(v3 + 12);
  v8 = *(v3 + 13);
  v10 = *(v3 + 14);
  v45 = v3[120];
  v47 = v3[121];
  v48 = v3[122];
  v49 = v3[123];
  if (qword_27FDAF898 != -1)
  {
    swift_once();
  }

  v41 = v2;
  v11 = (__swift_project_value_buffer(v2, qword_27FDBFA28) + *(v2 + 24));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v30 = v11[17];
  v34 = v11[33];
  v43 = v11[120];
  v44 = v11[121];
  v46 = v11[122];
  v16 = v11[123];
  if (v4 == v12)
  {
    if (v5 == v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v20 = 256;
    if (!v4)
    {
      v20 = 0;
    }

    *&v99[0] = v20 | v12;
    v100 = 108;
    sub_25F7BA74C(&v94, v99);
    v97[0] = v94;
    v97[1] = v95;
    *v98 = *v96;
    *&v98[9] = *&v96[9];
    sub_25F79AB4C(v97);
    if (v5 == v13)
    {
LABEL_5:
      if (v6 == v14)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }
  }

  v21 = 256;
  if (!v5)
  {
    v21 = 0;
  }

  *&v97[0] = v21 | v13;
  v98[24] = 112;
  sub_25F7BA74C(&v91, v97);
  v94 = v91;
  v95 = v92;
  *v96 = *v93;
  *&v96[9] = *&v93[9];
  sub_25F79AB4C(&v94);
  if (v6 != v14)
  {
LABEL_6:
    v17 = 256;
    if (!v6)
    {
      v17 = 0;
    }

    *&v94 = v17 | v14;
    v96[24] = 116;
    sub_25F7BA74C(v90, &v94);
    v91 = *v90;
    v92 = *&v90[16];
    *v93 = *&v90[32];
    *&v93[9] = *&v90[41];
    sub_25F79AB4C(&v91);
  }

LABEL_9:
  if (v7 != v15)
  {
    v18 = 256;
    if (!v7)
    {
      v18 = 0;
    }

    *&v91 = v18 | v15;
    v93[24] = 120;
    sub_25F7BA74C(&v87, &v91);
    *v90 = v87;
    *&v90[16] = v88;
    *&v90[32] = *v89;
    *&v90[41] = *&v89[9];
    sub_25F79AB4C(v90);
  }

  if ((v32 & 1) == 0)
  {
    *v90 = 15;
    memset(&v90[8], 0, 48);
    v90[56] = -92;
    sub_25F7BA74C(v86, v90);
    v87 = *v86;
    v88 = *&v86[16];
    *v89 = *&v86[32];
    *&v89[9] = *&v86[41];
    sub_25F79AB4C(&v87);
  }

  if (qword_27FDAF890 != -1)
  {
    swift_once();
  }

  if (BYTE9(xmmword_27FDBFA10) == 1)
  {
    v19 = sub_25F793550(&unk_2871C4D48);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0410);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_25F8249B0;
    *(v22 + 32) = v30;
    v19 = sub_25F793550(v22);
    swift_setDeallocating();
    swift_deallocClassInstance();
  }

  if ((sub_25F755428(v33, v19) & 1) == 0)
  {
    *&v87 = v19;
    *(&v87 + 1) = v33;
    v89[24] = 124;
    sub_25F7BA74C(v86, &v87);
    sub_25F79AB4C(v86);
    if (v35)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if ((v35 & 1) == 0)
  {
LABEL_31:
    *v86 = 16;
    memset(&v86[8], 0, 48);
    v86[56] = -92;
    sub_25F7BA74C(v84, v86);
    sub_25F79AB4C(v84);
  }

LABEL_32:
  if (v36 != v34)
  {
    v23 = 256;
    if (!v36)
    {
      v23 = 0;
    }

    *&v84[0] = v23 | v34;
    v85 = 0x80;
    sub_25F7BA74C(&v79, v84);
    sub_25F79AB4C(&v79);
  }

  if (v37)
  {
    v79 = 17;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = -92;
    sub_25F7BA74C(&v76, &v79);
    sub_25F79AB4C(&v76);
  }

  if ((v38 & 1) == 0 && (*&xmmword_27FDBF9C8 > v31 || *(&xmmword_27FDBF9C8 + 1) < v31))
  {
    v76 = xmmword_27FDBF9C8;
    v77 = v31;
    v78 = -124;
    sub_25F7BA74C(&v71, &v76);
    sub_25F79AB4C(&v71);
  }

  if ((v39 & 1) == 0)
  {
    v71 = 18;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = -92;
    sub_25F7BA74C(&v66, &v71);
    sub_25F79AB4C(&v66);
  }

  if ((v40 & 1) == 0)
  {
    v66 = 19;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = -92;
    sub_25F7BA74C(v64, &v66);
    sub_25F79AB4C(v64);
  }

  v24 = *(v42 + *(v41 + 20) + 168);
  if (v10 == v24)
  {
    if (v9 == v24)
    {
      goto LABEL_48;
    }

LABEL_67:
    *v62 = v24;
    *(v62 + 1) = v9;
    v63 = -116;
    sub_25F7BA74C(v60, v62);
    sub_25F79AB4C(v60);
    if (v8 == v24)
    {
      goto LABEL_49;
    }

    goto LABEL_68;
  }

  *&v64[0] = *(v42 + *(v41 + 20) + 168);
  *(v64 + 1) = v10;
  v65 = -120;
  sub_25F7BA74C(v62, v64);
  sub_25F79AB4C(v62);
  if (v9 != v24)
  {
    goto LABEL_67;
  }

LABEL_48:
  if (v8 == v24)
  {
    goto LABEL_49;
  }

LABEL_68:
  *v60 = v24;
  *(v60 + 1) = v8;
  v61 = -112;
  sub_25F7BA74C(v58, v60);
  sub_25F79AB4C(v58);
LABEL_49:
  if (v45 != v43)
  {
    v25 = 256;
    if (!v45)
    {
      v25 = 0;
    }

    *&v58[0] = v25 | v43;
    v59 = -108;
    sub_25F7BA74C(v56, v58);
    sub_25F79AB4C(v56);
  }

  if (v47 != v44)
  {
    v26 = 256;
    if (!v47)
    {
      v26 = 0;
    }

    *&v56[0] = v26 | v44;
    v57 = -104;
    sub_25F7BA74C(v54, v56);
    sub_25F79AB4C(v54);
  }

  if (v48 != v46)
  {
    v27 = 256;
    if (!v48)
    {
      v27 = 0;
    }

    *&v54[0] = v27 | v46;
    v55 = -100;
    sub_25F7BA74C(v52, v54);
    sub_25F79AB4C(v52);
  }

  if (v49 != v16)
  {
    v28 = 256;
    if (!v49)
    {
      v28 = 0;
    }

    *&v52[0] = v28 | v16;
    v53 = -96;
    sub_25F7BA74C(v50, v52);
    sub_25F79AB4C(v50);
  }

  return v51;
}

uint64_t sub_25F79FAC0()
{
  v0 = sub_25F82217C();
  __swift_allocate_value_buffer(v0, qword_27FDBFA40);
  v1 = __swift_project_value_buffer(v0, qword_27FDBFA40);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFF8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_25F82211C();
  v5 = *(v0 - 8);
  result = (*(v5 + 48))(v4, 1, v0);
  if (result != 1)
  {
    return (*(v5 + 32))(v1, v4, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F79FBF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v21 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  __swift_allocate_value_buffer(v3, qword_27FDBFA58);
  v4 = __swift_project_value_buffer(v3, qword_27FDBFA58);
  if (qword_27FDAF8A0 != -1)
  {
    swift_once();
  }

  v22 = 0x800000025F82E0E0;
  v23 = 0x800000025F82E110;
  v5 = sub_25F82217C();
  v6 = __swift_project_value_buffer(v5, qword_27FDBFA40);
  (*(*(v5 - 8) + 16))(v4, v6, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
  v21[1] = v21;
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = sub_25F82210C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v13 = *(*(v12 - 8) + 56);
  v13(v2, 1, 1, v12);
  v21[0] = v2;
  v14 = v3[8];
  v11((v4 + v14), 1, 1, v10);
  v15 = v3[9];
  v13((v4 + v15), 1, 1, v12);
  v16 = (v4 + v3[5]);
  v17 = v22;
  *v16 = 0xD000000000000020;
  v16[1] = v17;
  v18 = (v4 + v3[6]);
  v19 = v23;
  *v18 = 0xD0000000000000D6;
  v18[1] = v19;
  *(v4 + v3[7]) = 0;
  sub_25F760E58(v9, v4 + v14, &qword_27FDAFC20);
  return sub_25F760E58(v21[0], v4 + v15, &qword_27FDAFC10);
}

double sub_25F79FEEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25F824480;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0x400199999999999ALL;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 2;
  *(v0 + 120) = 0x4099000000000000;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0;
  v1 = sub_25F792BC4(&unk_2871C4078);
  xmmword_27FDBFA70 = 0u;
  unk_27FDBFA80 = 0u;
  xmmword_27FDBFA90 = 0u;
  byte_27FDBFAA0 = 1;
  *&algn_27FDBFAA1[7] = 0u;
  *(&xmmword_27FDBFAB0 + 8) = 0u;
  unk_27FDBFAC8 = 0u;
  byte_27FDBFAD8 = 0;
  byte_27FDBFAD9 = 1;
  xmmword_27FDBFAE0 = xmmword_25F824920;
  LOBYTE(xmmword_27FDBFAF0) = 1;
  *(&xmmword_27FDBFAF0 + 1) = 0;
  unk_27FDBFB00 = 0;
  word_27FDBFB08 = 256;
  xmmword_27FDBFB10 = xmmword_25F825700;
  qword_27FDBFB20 = 0x3F40624DD2F1A9FCLL;
  unk_27FDBFB28 = v0;
  LOBYTE(xmmword_27FDBFB30) = 0;
  *(&xmmword_27FDBFB30 + 1) = 0x400199999999999ALL;
  word_27FDBFB40 = 1;
  *&algn_27FDBFB42[6] = xmmword_25F825710;
  qword_27FDBFB58 = v1;
  *&result = 16843008;
  dword_27FDBFB60 = 16843008;
  return result;
}

double sub_25F7A008C()
{
  LODWORD(xmmword_27FDBFB68) = 0;
  *(&xmmword_27FDBFB68 + 1) = 0x408F400000000000;
  LOWORD(xmmword_27FDBFB78) = 0;
  *(&xmmword_27FDBFB78 + 1) = 0x4030000000000000;
  LOWORD(xmmword_27FDBFB88) = 0;
  *(&xmmword_27FDBFB88 + 1) = &unk_2871C40A0;
  unk_27FDBFB98 = 0;
  byte_27FDBFBA0 = 1;
  *&xmmword_27FDBFBA8 = 0;
  BYTE8(xmmword_27FDBFBA8) = 1;
  *&xmmword_27FDBFBB8 = 0;
  BYTE8(xmmword_27FDBFBB8) = 1;
  xmmword_27FDBFBC8 = xmmword_25F825720;
  qword_27FDBFBD8 = 0x4075E00000000000;
  *&result = 0x1000100010001;
  dword_27FDBFBE0 = 65537;
  return result;
}

uint64_t sub_25F7A0114()
{
  v0 = sub_25F82217C();
  __swift_allocate_value_buffer(v0, qword_27FDBFBE8);
  v1 = __swift_project_value_buffer(v0, qword_27FDBFBE8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFF8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_25F82211C();
  v5 = *(v0 - 8);
  result = (*(v5 + 48))(v4, 1, v0);
  if (result != 1)
  {
    return (*(v5 + 32))(v1, v4, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F7A0244()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v21 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  __swift_allocate_value_buffer(v3, qword_27FDBFC00);
  v4 = __swift_project_value_buffer(v3, qword_27FDBFC00);
  if (qword_27FDAF8C0 != -1)
  {
    swift_once();
  }

  v22 = 0x800000025F82DFB0;
  v23 = 0x800000025F82DFD0;
  v5 = sub_25F82217C();
  v6 = __swift_project_value_buffer(v5, qword_27FDBFBE8);
  (*(*(v5 - 8) + 16))(v4, v6, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
  v21[1] = v21;
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = sub_25F82210C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v13 = *(*(v12 - 8) + 56);
  v13(v2, 1, 1, v12);
  v21[0] = v2;
  v14 = v3[8];
  v11((v4 + v14), 1, 1, v10);
  v15 = v3[9];
  v13((v4 + v15), 1, 1, v12);
  v16 = (v4 + v3[5]);
  v17 = v22;
  *v16 = 0xD00000000000001BLL;
  v16[1] = v17;
  v18 = (v4 + v3[6]);
  v19 = v23;
  *v18 = 0xD0000000000000D5;
  v18[1] = v19;
  *(v4 + v3[7]) = 0;
  sub_25F760E58(v9, v4 + v14, &qword_27FDAFC20);
  return sub_25F760E58(v21[0], v4 + v15, &qword_27FDAFC10);
}

double sub_25F7A0540()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25F8249B0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0x400199999999999ALL;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  v1 = sub_25F792BC4(&unk_2871C40C8);
  xmmword_27FDBFC18 = 0u;
  unk_27FDBFC28 = 0u;
  xmmword_27FDBFC38 = 0u;
  byte_27FDBFC48 = 1;
  unk_27FDBFC50 = 0u;
  *(&xmmword_27FDBFC58 + 8) = 0u;
  unk_27FDBFC70 = 0u;
  byte_27FDBFC80 = 0;
  byte_27FDBFC81 = 1;
  xmmword_27FDBFC88 = xmmword_25F824920;
  LOBYTE(xmmword_27FDBFC98) = 1;
  *(&xmmword_27FDBFC98 + 1) = 0;
  unk_27FDBFCA8 = 0;
  word_27FDBFCB0 = 256;
  xmmword_27FDBFCB8 = vdupq_n_s64(0x4082C00000000000uLL);
  qword_27FDBFCC8 = 0x3F40624DD2F1A9FCLL;
  unk_27FDBFCD0 = v0;
  LOBYTE(xmmword_27FDBFCD8) = 0;
  *(&xmmword_27FDBFCD8 + 1) = 0x400199999999999ALL;
  word_27FDBFCE8 = 1;
  unk_27FDBFCF0 = xmmword_25F825710;
  qword_27FDBFD00 = v1;
  *&result = 16843008;
  dword_27FDBFD08 = 16843008;
  return result;
}

double sub_25F7A0698()
{
  LODWORD(xmmword_27FDBFD10) = 0;
  *(&xmmword_27FDBFD10 + 1) = 0x4082C00000000000;
  LOWORD(xmmword_27FDBFD20) = 0;
  *(&xmmword_27FDBFD20 + 1) = 0x4014000000000000;
  LOWORD(xmmword_27FDBFD30) = 0;
  *(&xmmword_27FDBFD30 + 1) = &unk_2871C40F0;
  unk_27FDBFD40 = 0;
  byte_27FDBFD48 = 1;
  *&xmmword_27FDBFD50 = 0;
  BYTE8(xmmword_27FDBFD50) = 1;
  *&xmmword_27FDBFD60 = 0;
  BYTE8(xmmword_27FDBFD60) = 1;
  xmmword_27FDBFD70 = xmmword_25F825720;
  qword_27FDBFD80 = 0x4075E00000000000;
  *&result = 0x1000100010001;
  dword_27FDBFD88 = 65537;
  return result;
}

void *sub_25F7A0720(uint64_t a1)
{
  v19 = type metadata accessor for Preset(0);
  v2 = *(v19 - 8);
  v3 = MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = sub_25F817E64(&unk_2871C4118);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v11 = a1 + v10;
    v12 = *(v2 + 72);
    v13 = MEMORY[0x277D84F90];
    do
    {
      sub_25F7A22F4(v11, v7, type metadata accessor for Preset);
      v14 = &v7[*(v19 + 20)];
      if (*(v14 + 22) < 0.0005)
      {
        *(v14 + 22) = 0x3F40624DD2F1A9FCLL;
      }

      *(v14 + 29) = v8;
      v14[240] = 0;
      sub_25F7A22F4(v7, v5, type metadata accessor for Preset);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_25F75BC00(0, v13[2] + 1, 1, v13);
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_25F75BC00(v15 > 1, v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      sub_25F7A235C(v5, v13 + v10 + v16 * v12);
      sub_25F7A23C0(v7);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v13;
}

void *sub_25F7A0974(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFCB0);
  v1 = type metadata accessor for Preset(0);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25F825730;
  v5 = v4 + v3;
  if (qword_27FDAF8A8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Preset.Info(0);
  v7 = __swift_project_value_buffer(v6, qword_27FDBFA58);
  sub_25F7A22F4(v7, v5, type metadata accessor for Preset.Info);
  if (qword_27FDAF8B0 != -1)
  {
    swift_once();
  }

  v210 = xmmword_27FDBFB30;
  v211 = *&word_27FDBFB40;
  v212 = unk_27FDBFB50;
  v213 = dword_27FDBFB60;
  v206 = xmmword_27FDBFAF0;
  v207 = unk_27FDBFB00;
  v208 = xmmword_27FDBFB10;
  v209 = *&qword_27FDBFB20;
  v202 = xmmword_27FDBFAB0;
  v203 = unk_27FDBFAC0;
  v204 = unk_27FDBFAD0;
  v205 = xmmword_27FDBFAE0;
  v198 = xmmword_27FDBFA70;
  v199 = unk_27FDBFA80;
  v200 = xmmword_27FDBFA90;
  v201 = *&byte_27FDBFAA0;
  sub_25F7A223C(&v198, &v378);
  if (qword_27FDAF8B8 != -1)
  {
    swift_once();
  }

  v8 = xmmword_27FDBFBA8;
  v9 = unk_27FDBFB98;
  v214[4] = xmmword_27FDBFBA8;
  v214[5] = xmmword_27FDBFBB8;
  v10 = xmmword_27FDBFBB8;
  v215[0] = xmmword_27FDBFBC8;
  *(v215 + 12) = *(&xmmword_27FDBFBC8 + 12);
  v11 = xmmword_27FDBFB78;
  v12 = xmmword_27FDBFB88;
  v214[2] = xmmword_27FDBFB88;
  v214[3] = unk_27FDBFB98;
  v13 = xmmword_27FDBFB68;
  v214[0] = xmmword_27FDBFB68;
  v214[1] = xmmword_27FDBFB78;
  v14 = v5 + *(v1 + 20);
  v15 = v211;
  *(v14 + 192) = v210;
  *(v14 + 208) = v15;
  *(v14 + 224) = v212;
  *(v14 + 240) = v213;
  v16 = v207;
  *(v14 + 128) = v206;
  *(v14 + 144) = v16;
  v17 = v209;
  *(v14 + 160) = v208;
  *(v14 + 176) = v17;
  v18 = v203;
  *(v14 + 64) = v202;
  *(v14 + 80) = v18;
  v19 = v205;
  *(v14 + 96) = v204;
  *(v14 + 112) = v19;
  v20 = v199;
  *v14 = v198;
  *(v14 + 16) = v20;
  v21 = v201;
  *(v14 + 32) = v200;
  *(v14 + 48) = v21;
  v22 = v5 + *(v1 + 24);
  *(v22 + 108) = *(&xmmword_27FDBFBC8 + 12);
  *(v22 + 64) = v8;
  *(v22 + 80) = v10;
  *(v22 + 96) = xmmword_27FDBFBC8;
  *v22 = v13;
  *(v22 + 16) = v11;
  *(v22 + 32) = v12;
  *(v22 + 48) = v9;
  v23 = v5 + v2;
  *(v22 + 122) = 1;
  sub_25F7A2298(v214, &v378);
  if (qword_27FDAF8C8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v6, qword_27FDBFC00);
  sub_25F7A22F4(v24, v5 + v2, type metadata accessor for Preset.Info);
  if (qword_27FDAF8D0 != -1)
  {
    swift_once();
  }

  v228 = xmmword_27FDBFCD8;
  v229 = *&word_27FDBFCE8;
  v230 = unk_27FDBFCF8;
  v231 = dword_27FDBFD08;
  v224 = xmmword_27FDBFC98;
  v225 = unk_27FDBFCA8;
  v226 = xmmword_27FDBFCB8;
  v227 = *&qword_27FDBFCC8;
  v220 = xmmword_27FDBFC58;
  v221 = unk_27FDBFC68;
  v222 = unk_27FDBFC78;
  v223 = xmmword_27FDBFC88;
  v216 = xmmword_27FDBFC18;
  v217 = unk_27FDBFC28;
  v218 = xmmword_27FDBFC38;
  v219 = *&byte_27FDBFC48;
  sub_25F7A223C(&v216, &v378);
  if (qword_27FDAF8D8 != -1)
  {
    swift_once();
  }

  v25 = xmmword_27FDBFD50;
  v26 = unk_27FDBFD40;
  v232[4] = xmmword_27FDBFD50;
  v232[5] = xmmword_27FDBFD60;
  v27 = xmmword_27FDBFD60;
  v233[0] = xmmword_27FDBFD70;
  *(v233 + 12) = *(&xmmword_27FDBFD70 + 12);
  v28 = xmmword_27FDBFD20;
  v29 = xmmword_27FDBFD30;
  v232[2] = xmmword_27FDBFD30;
  v232[3] = unk_27FDBFD40;
  v30 = xmmword_27FDBFD10;
  v232[1] = xmmword_27FDBFD20;
  v232[0] = xmmword_27FDBFD10;
  v31 = v23 + *(v1 + 20);
  v32 = v229;
  *(v31 + 192) = v228;
  *(v31 + 208) = v32;
  *(v31 + 224) = v230;
  *(v31 + 240) = v231;
  v33 = v225;
  *(v31 + 128) = v224;
  *(v31 + 144) = v33;
  v34 = v227;
  *(v31 + 160) = v226;
  *(v31 + 176) = v34;
  v35 = v221;
  *(v31 + 64) = v220;
  *(v31 + 80) = v35;
  v36 = v223;
  *(v31 + 96) = v222;
  *(v31 + 112) = v36;
  v37 = v217;
  *v31 = v216;
  *(v31 + 16) = v37;
  v38 = v219;
  *(v31 + 32) = v218;
  *(v31 + 48) = v38;
  v39 = v23 + *(v1 + 24);
  *(v39 + 108) = *(&xmmword_27FDBFD70 + 12);
  *(v39 + 64) = v25;
  *(v39 + 80) = v27;
  *(v39 + 96) = xmmword_27FDBFD70;
  *v39 = v30;
  *(v39 + 16) = v28;
  *(v39 + 32) = v29;
  *(v39 + 48) = v26;
  v40 = v5 + 2 * v2;
  *(v39 + 122) = 1;
  sub_25F7A2298(v232, &v378);
  if (qword_27FDAF928 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v6, qword_27FDC00F8);
  sub_25F7A22F4(v41, v5 + 2 * v2, type metadata accessor for Preset.Info);
  if (qword_27FDAF930 != -1)
  {
    swift_once();
  }

  v246 = xmmword_27FDC01D0;
  v247 = *&word_27FDC01E0;
  v248 = xmmword_27FDC01F0;
  v249 = dword_27FDC0200;
  v242 = xmmword_27FDC0190;
  v243 = unk_27FDC01A0;
  v244 = xmmword_27FDC01B0;
  v245 = *&qword_27FDC01C0;
  v238 = xmmword_27FDC0150;
  v239 = unk_27FDC0160;
  v240 = xmmword_27FDC0170;
  v241 = xmmword_27FDC0180;
  v234 = xmmword_27FDC0110;
  v235 = unk_27FDC0120;
  v236 = xmmword_27FDC0130;
  v237 = *&byte_27FDC0140;
  sub_25F7A223C(&v234, &v378);
  if (qword_27FDAF938 != -1)
  {
    swift_once();
  }

  v42 = xmmword_27FDC0248;
  v43 = xmmword_27FDC0238;
  v250[4] = xmmword_27FDC0248;
  v250[5] = xmmword_27FDC0258;
  v44 = xmmword_27FDC0258;
  v251[0] = xmmword_27FDC0268;
  *(v251 + 12) = *(&xmmword_27FDC0268 + 12);
  v45 = xmmword_27FDC0218;
  v46 = xmmword_27FDC0228;
  v250[2] = xmmword_27FDC0228;
  v250[3] = xmmword_27FDC0238;
  v47 = xmmword_27FDC0208;
  v250[1] = xmmword_27FDC0218;
  v250[0] = xmmword_27FDC0208;
  v48 = v40 + *(v1 + 20);
  v49 = v247;
  *(v48 + 192) = v246;
  *(v48 + 208) = v49;
  *(v48 + 224) = v248;
  *(v48 + 240) = v249;
  v50 = v243;
  *(v48 + 128) = v242;
  *(v48 + 144) = v50;
  v51 = v245;
  *(v48 + 160) = v244;
  *(v48 + 176) = v51;
  v52 = v239;
  *(v48 + 64) = v238;
  *(v48 + 80) = v52;
  v53 = v241;
  *(v48 + 96) = v240;
  *(v48 + 112) = v53;
  v54 = v235;
  *v48 = v234;
  *(v48 + 16) = v54;
  v55 = v237;
  *(v48 + 32) = v236;
  *(v48 + 48) = v55;
  v56 = v40 + *(v1 + 24);
  *(v56 + 108) = *(&xmmword_27FDC0268 + 12);
  *(v56 + 64) = v42;
  *(v56 + 80) = v44;
  *(v56 + 96) = xmmword_27FDC0268;
  *v56 = v47;
  *(v56 + 16) = v45;
  *(v56 + 32) = v46;
  *(v56 + 48) = v43;
  v57 = v5 + 3 * v2;
  *(v56 + 122) = 1;
  sub_25F7A2298(v250, &v378);
  if (qword_27FDAF988 != -1)
  {
    swift_once();
  }

  v58 = __swift_project_value_buffer(v6, qword_27FDC0530);
  sub_25F7A22F4(v58, v5 + 3 * v2, type metadata accessor for Preset.Info);
  if (qword_27FDAF990 != -1)
  {
    swift_once();
  }

  v264 = xmmword_27FDC0608;
  v265 = *&word_27FDC0618;
  v266 = xmmword_27FDC0628;
  v267 = dword_27FDC0638;
  v260 = xmmword_27FDC05C8;
  v261 = unk_27FDC05D8;
  v262 = xmmword_27FDC05E8;
  v263 = *&qword_27FDC05F8;
  v256 = xmmword_27FDC0588;
  v257 = unk_27FDC0598;
  v258 = xmmword_27FDC05A8;
  v259 = xmmword_27FDC05B8;
  v252 = xmmword_27FDC0548;
  v253 = unk_27FDC0558;
  v254 = xmmword_27FDC0568;
  v255 = *&byte_27FDC0578;
  sub_25F7A223C(&v252, &v378);
  if (qword_27FDAF998 != -1)
  {
    swift_once();
  }

  v59 = xmmword_27FDC0680;
  v60 = xmmword_27FDC0670;
  v268[4] = xmmword_27FDC0680;
  v268[5] = xmmword_27FDC0690;
  v61 = xmmword_27FDC0690;
  v269[0] = xmmword_27FDC06A0;
  *(v269 + 12) = *(&xmmword_27FDC06A0 + 12);
  v62 = xmmword_27FDC0650;
  v63 = xmmword_27FDC0660;
  v268[2] = xmmword_27FDC0660;
  v268[3] = xmmword_27FDC0670;
  v64 = xmmword_27FDC0640;
  v268[1] = xmmword_27FDC0650;
  v268[0] = xmmword_27FDC0640;
  v65 = v57 + *(v1 + 20);
  v66 = v265;
  *(v65 + 192) = v264;
  *(v65 + 208) = v66;
  *(v65 + 224) = v266;
  *(v65 + 240) = v267;
  v67 = v261;
  *(v65 + 128) = v260;
  *(v65 + 144) = v67;
  v68 = v263;
  *(v65 + 160) = v262;
  *(v65 + 176) = v68;
  v69 = v257;
  *(v65 + 64) = v256;
  *(v65 + 80) = v69;
  v70 = v259;
  *(v65 + 96) = v258;
  *(v65 + 112) = v70;
  v71 = v253;
  *v65 = v252;
  *(v65 + 16) = v71;
  v72 = v255;
  *(v65 + 32) = v254;
  *(v65 + 48) = v72;
  v73 = v57 + *(v1 + 24);
  *(v73 + 108) = *(&xmmword_27FDC06A0 + 12);
  *(v73 + 64) = v59;
  *(v73 + 80) = v61;
  *(v73 + 96) = xmmword_27FDC06A0;
  *v73 = v64;
  *(v73 + 16) = v62;
  *(v73 + 32) = v63;
  *(v73 + 48) = v60;
  v74 = v5 + 4 * v2;
  *(v73 + 122) = 1;
  sub_25F7A2298(v268, &v378);
  if (qword_27FDAF9A8 != -1)
  {
    swift_once();
  }

  v75 = __swift_project_value_buffer(v6, qword_27FDC06D8);
  sub_25F7A22F4(v75, v5 + 4 * v2, type metadata accessor for Preset.Info);
  if (qword_27FDAF9B0 != -1)
  {
    swift_once();
  }

  v282 = xmmword_27FDC07B0;
  v283 = *&word_27FDC07C0;
  v284 = xmmword_27FDC07D0;
  v285 = dword_27FDC07E0;
  v278 = xmmword_27FDC0770;
  v279 = unk_27FDC0780;
  v280 = xmmword_27FDC0790;
  v281 = *&qword_27FDC07A0;
  v274 = xmmword_27FDC0730;
  v275 = unk_27FDC0740;
  v276 = xmmword_27FDC0750;
  v277 = xmmword_27FDC0760;
  v270 = xmmword_27FDC06F0;
  v271 = unk_27FDC0700;
  v272 = xmmword_27FDC0710;
  v273 = *&byte_27FDC0720;
  sub_25F7A223C(&v270, &v378);
  if (qword_27FDAF9B8 != -1)
  {
    swift_once();
  }

  v76 = xmmword_27FDC0828;
  v77 = xmmword_27FDC0818;
  v286[4] = xmmword_27FDC0828;
  v286[5] = xmmword_27FDC0838;
  v78 = xmmword_27FDC0838;
  v287[0] = xmmword_27FDC0848;
  *(v287 + 12) = *(&xmmword_27FDC0848 + 12);
  v79 = xmmword_27FDC07F8;
  v80 = xmmword_27FDC0808;
  v286[2] = xmmword_27FDC0808;
  v286[3] = xmmword_27FDC0818;
  v81 = xmmword_27FDC07E8;
  v286[1] = xmmword_27FDC07F8;
  v286[0] = xmmword_27FDC07E8;
  v82 = v74 + *(v1 + 20);
  v83 = v283;
  *(v82 + 192) = v282;
  *(v82 + 208) = v83;
  *(v82 + 224) = v284;
  *(v82 + 240) = v285;
  v84 = v279;
  *(v82 + 128) = v278;
  *(v82 + 144) = v84;
  v85 = v281;
  *(v82 + 160) = v280;
  *(v82 + 176) = v85;
  v86 = v275;
  *(v82 + 64) = v274;
  *(v82 + 80) = v86;
  v87 = v277;
  *(v82 + 96) = v276;
  *(v82 + 112) = v87;
  v88 = v271;
  *v82 = v270;
  *(v82 + 16) = v88;
  v89 = v273;
  *(v82 + 32) = v272;
  *(v82 + 48) = v89;
  v90 = v74 + *(v1 + 24);
  *(v90 + 108) = *(&xmmword_27FDC0848 + 12);
  *(v90 + 64) = v76;
  *(v90 + 80) = v78;
  *(v90 + 96) = xmmword_27FDC0848;
  *v90 = v81;
  *(v90 + 16) = v79;
  *(v90 + 32) = v80;
  *(v90 + 48) = v77;
  v91 = v5 + 5 * v2;
  *(v90 + 122) = 1;
  sub_25F7A2298(v286, &v378);
  if (qword_27FDAFB00 != -1)
  {
    swift_once();
  }

  v92 = __swift_project_value_buffer(v6, qword_27FDC1600);
  sub_25F7A22F4(v92, v5 + 5 * v2, type metadata accessor for Preset.Info);
  if (qword_27FDAFB08 != -1)
  {
    swift_once();
  }

  v300 = xmmword_27FDC16D8;
  v301 = *&word_27FDC16E8;
  v302 = xmmword_27FDC16F8;
  v303 = dword_27FDC1708;
  v296 = xmmword_27FDC1698;
  v297 = unk_27FDC16A8;
  v298 = xmmword_27FDC16B8;
  v299 = *&qword_27FDC16C8;
  v292 = xmmword_27FDC1658;
  v293 = unk_27FDC1668;
  v294 = xmmword_27FDC1678;
  v295 = xmmword_27FDC1688;
  v288 = xmmword_27FDC1618;
  v289 = unk_27FDC1628;
  v290 = xmmword_27FDC1638;
  v291 = *&byte_27FDC1648;
  sub_25F7A223C(&v288, &v378);
  if (qword_27FDAFB10 != -1)
  {
    swift_once();
  }

  v93 = xmmword_27FDC1750;
  v94 = xmmword_27FDC1740;
  v304[4] = xmmword_27FDC1750;
  v304[5] = xmmword_27FDC1760;
  v95 = xmmword_27FDC1760;
  v305[0] = xmmword_27FDC1770;
  *(v305 + 12) = *(&xmmword_27FDC1770 + 12);
  v96 = xmmword_27FDC1720;
  v97 = xmmword_27FDC1730;
  v304[2] = xmmword_27FDC1730;
  v304[3] = xmmword_27FDC1740;
  v98 = xmmword_27FDC1710;
  v304[1] = xmmword_27FDC1720;
  v304[0] = xmmword_27FDC1710;
  v99 = v91 + *(v1 + 20);
  v100 = v301;
  *(v99 + 192) = v300;
  *(v99 + 208) = v100;
  *(v99 + 224) = v302;
  *(v99 + 240) = v303;
  v101 = v297;
  *(v99 + 128) = v296;
  *(v99 + 144) = v101;
  v102 = v299;
  *(v99 + 160) = v298;
  *(v99 + 176) = v102;
  v103 = v293;
  *(v99 + 64) = v292;
  *(v99 + 80) = v103;
  v104 = v295;
  *(v99 + 96) = v294;
  *(v99 + 112) = v104;
  v105 = v289;
  *v99 = v288;
  *(v99 + 16) = v105;
  v106 = v291;
  *(v99 + 32) = v290;
  *(v99 + 48) = v106;
  v107 = v91 + *(v1 + 24);
  *(v107 + 108) = *(&xmmword_27FDC1770 + 12);
  *(v107 + 64) = v93;
  *(v107 + 80) = v95;
  *(v107 + 96) = xmmword_27FDC1770;
  *v107 = v98;
  *(v107 + 16) = v96;
  *(v107 + 32) = v97;
  *(v107 + 48) = v94;
  v108 = v5 + 6 * v2;
  *(v107 + 122) = 1;
  sub_25F7A2298(v304, &v378);
  if (qword_27FDAF968 != -1)
  {
    swift_once();
  }

  v109 = __swift_project_value_buffer(v6, qword_27FDC0388);
  sub_25F7A22F4(v109, v5 + 6 * v2, type metadata accessor for Preset.Info);
  if (qword_27FDAF970 != -1)
  {
    swift_once();
  }

  v318 = xmmword_27FDC0460;
  v319 = *&word_27FDC0470;
  v320 = xmmword_27FDC0480;
  v321 = dword_27FDC0490;
  v314 = xmmword_27FDC0420;
  v315 = unk_27FDC0430;
  v316 = xmmword_27FDC0440;
  v317 = *&qword_27FDC0450;
  v310 = xmmword_27FDC03E0;
  v311 = unk_27FDC03F0;
  v312 = xmmword_27FDC0400;
  v313 = xmmword_27FDC0410;
  v306 = xmmword_27FDC03A0;
  v307 = *algn_27FDC03B0;
  v308 = xmmword_27FDC03C0;
  v309 = *&byte_27FDC03D0;
  sub_25F7A223C(&v306, &v378);
  if (qword_27FDAF978 != -1)
  {
    swift_once();
  }

  v110 = xmmword_27FDC04D8;
  v111 = xmmword_27FDC04C8;
  v322[4] = xmmword_27FDC04D8;
  v322[5] = xmmword_27FDC04E8;
  v112 = xmmword_27FDC04E8;
  v323[0] = xmmword_27FDC04F8;
  *(v323 + 12) = *(&xmmword_27FDC04F8 + 12);
  v113 = xmmword_27FDC04A8;
  v114 = xmmword_27FDC04B8;
  v322[2] = xmmword_27FDC04B8;
  v322[3] = xmmword_27FDC04C8;
  v115 = xmmword_27FDC0498;
  v322[1] = xmmword_27FDC04A8;
  v322[0] = xmmword_27FDC0498;
  v116 = v108 + *(v1 + 20);
  v117 = v319;
  *(v116 + 192) = v318;
  *(v116 + 208) = v117;
  *(v116 + 224) = v320;
  *(v116 + 240) = v321;
  v118 = v315;
  *(v116 + 128) = v314;
  *(v116 + 144) = v118;
  v119 = v317;
  *(v116 + 160) = v316;
  *(v116 + 176) = v119;
  v120 = v311;
  *(v116 + 64) = v310;
  *(v116 + 80) = v120;
  v121 = v313;
  *(v116 + 96) = v312;
  *(v116 + 112) = v121;
  v122 = v307;
  *v116 = v306;
  *(v116 + 16) = v122;
  v123 = v309;
  *(v116 + 32) = v308;
  *(v116 + 48) = v123;
  v124 = v108 + *(v1 + 24);
  *(v124 + 108) = *(&xmmword_27FDC04F8 + 12);
  *(v124 + 64) = v110;
  *(v124 + 80) = v112;
  *(v124 + 96) = xmmword_27FDC04F8;
  *v124 = v115;
  *(v124 + 16) = v113;
  *(v124 + 32) = v114;
  *(v124 + 48) = v111;
  v125 = v5 - v2 + 8 * v2;
  *(v124 + 122) = 1;
  sub_25F7A2298(v322, &v378);
  if (qword_27FDAFAE0 != -1)
  {
    swift_once();
  }

  v126 = __swift_project_value_buffer(v6, qword_27FDC1458);
  sub_25F7A22F4(v126, v5 - v2 + 8 * v2, type metadata accessor for Preset.Info);
  if (qword_27FDAFAE8 != -1)
  {
    swift_once();
  }

  v336 = xmmword_27FDC1530;
  v337 = *&word_27FDC1540;
  v338 = xmmword_27FDC1550;
  v339 = dword_27FDC1560;
  v332 = xmmword_27FDC14F0;
  v333 = unk_27FDC1500;
  v334 = xmmword_27FDC1510;
  v335 = *&qword_27FDC1520;
  v328 = xmmword_27FDC14B0;
  v329 = unk_27FDC14C0;
  v330 = xmmword_27FDC14D0;
  v331 = xmmword_27FDC14E0;
  v324 = xmmword_27FDC1470;
  v325 = unk_27FDC1480;
  v326 = xmmword_27FDC1490;
  v327 = *&byte_27FDC14A0;
  sub_25F7A223C(&v324, &v378);
  if (qword_27FDAFAF0 != -1)
  {
    swift_once();
  }

  v127 = xmmword_27FDC15A8;
  v128 = xmmword_27FDC1598;
  v340[4] = xmmword_27FDC15A8;
  v340[5] = xmmword_27FDC15B8;
  v129 = xmmword_27FDC15B8;
  v341[0] = xmmword_27FDC15C8;
  *(v341 + 12) = *(&xmmword_27FDC15C8 + 12);
  v130 = xmmword_27FDC1578;
  v131 = xmmword_27FDC1588;
  v340[2] = xmmword_27FDC1588;
  v340[3] = xmmword_27FDC1598;
  v132 = xmmword_27FDC1568;
  v340[1] = xmmword_27FDC1578;
  v340[0] = xmmword_27FDC1568;
  v133 = v125 + *(v1 + 20);
  v134 = v337;
  *(v133 + 192) = v336;
  *(v133 + 208) = v134;
  *(v133 + 224) = v338;
  *(v133 + 240) = v339;
  v135 = v333;
  *(v133 + 128) = v332;
  *(v133 + 144) = v135;
  v136 = v335;
  *(v133 + 160) = v334;
  *(v133 + 176) = v136;
  v137 = v329;
  *(v133 + 64) = v328;
  *(v133 + 80) = v137;
  v138 = v331;
  *(v133 + 96) = v330;
  *(v133 + 112) = v138;
  v139 = v325;
  *v133 = v324;
  *(v133 + 16) = v139;
  v140 = v327;
  *(v133 + 32) = v326;
  *(v133 + 48) = v140;
  v141 = v125 + *(v1 + 24);
  *(v141 + 108) = *(&xmmword_27FDC15C8 + 12);
  *(v141 + 64) = v127;
  *(v141 + 80) = v129;
  *(v141 + 96) = xmmword_27FDC15C8;
  *v141 = v132;
  *(v141 + 16) = v130;
  *(v141 + 32) = v131;
  *(v141 + 48) = v128;
  v142 = v5 + 8 * v2;
  *(v141 + 122) = 1;
  sub_25F7A2298(v340, &v378);
  if (qword_27FDAF8E8 != -1)
  {
    swift_once();
  }

  v143 = __swift_project_value_buffer(v6, qword_27FDBFDA8);
  sub_25F7A22F4(v143, v5 + 8 * v2, type metadata accessor for Preset.Info);
  if (qword_27FDAF8F0 != -1)
  {
    swift_once();
  }

  v354 = xmmword_27FDBFE80;
  v355 = *&word_27FDBFE90;
  v356 = xmmword_27FDBFEA0;
  v357 = dword_27FDBFEB0;
  v350 = xmmword_27FDBFE40;
  v351 = unk_27FDBFE50;
  v352 = xmmword_27FDBFE60;
  v353 = *&qword_27FDBFE70;
  v346 = xmmword_27FDBFE00;
  v347 = unk_27FDBFE10;
  v348 = xmmword_27FDBFE20;
  v349 = *&qword_27FDBFE30;
  v342 = xmmword_27FDBFDC0;
  v343 = *algn_27FDBFDD0;
  v344 = xmmword_27FDBFDE0;
  v345 = *&byte_27FDBFDF0;
  sub_25F7A223C(&v342, &v378);
  if (qword_27FDAF8F8 != -1)
  {
    swift_once();
  }

  v144 = xmmword_27FDBFEF8;
  v145 = xmmword_27FDBFEE8;
  v358[4] = xmmword_27FDBFEF8;
  v358[5] = xmmword_27FDBFF08;
  v146 = xmmword_27FDBFF08;
  v359[0] = xmmword_27FDBFF18;
  *(v359 + 12) = *(&xmmword_27FDBFF18 + 12);
  v147 = xmmword_27FDBFEC8;
  v148 = xmmword_27FDBFED8;
  v358[2] = xmmword_27FDBFED8;
  v358[3] = xmmword_27FDBFEE8;
  v149 = xmmword_27FDBFEB8;
  v358[1] = xmmword_27FDBFEC8;
  v358[0] = xmmword_27FDBFEB8;
  v150 = v142 + *(v1 + 20);
  v151 = v355;
  *(v150 + 192) = v354;
  *(v150 + 208) = v151;
  *(v150 + 224) = v356;
  *(v150 + 240) = v357;
  v152 = v351;
  *(v150 + 128) = v350;
  *(v150 + 144) = v152;
  v153 = v353;
  *(v150 + 160) = v352;
  *(v150 + 176) = v153;
  v154 = v347;
  *(v150 + 64) = v346;
  *(v150 + 80) = v154;
  v155 = v349;
  *(v150 + 96) = v348;
  *(v150 + 112) = v155;
  v156 = v343;
  *v150 = v342;
  *(v150 + 16) = v156;
  v157 = v345;
  *(v150 + 32) = v344;
  *(v150 + 48) = v157;
  v158 = v142 + *(v1 + 24);
  *(v158 + 108) = *(&xmmword_27FDBFF18 + 12);
  *(v158 + 64) = v144;
  *(v158 + 80) = v146;
  *(v158 + 96) = xmmword_27FDBFF18;
  *v158 = v149;
  *(v158 + 16) = v147;
  *(v158 + 32) = v148;
  *(v158 + 48) = v145;
  v159 = v5 + 9 * v2;
  *(v158 + 122) = 1;
  sub_25F7A2298(v358, &v378);
  if (qword_27FDAF908 != -1)
  {
    swift_once();
  }

  v160 = __swift_project_value_buffer(v6, qword_27FDBFF50);
  sub_25F7A22F4(v160, v5 + 9 * v2, type metadata accessor for Preset.Info);
  if (qword_27FDAF910 != -1)
  {
    swift_once();
  }

  v372 = xmmword_27FDC0028;
  v373 = *&word_27FDC0038;
  v374 = xmmword_27FDC0048;
  v375 = dword_27FDC0058;
  v368 = xmmword_27FDBFFE8;
  v369 = unk_27FDBFFF8;
  v370 = xmmword_27FDC0008;
  v371 = *&qword_27FDC0018;
  v364 = xmmword_27FDBFFA8;
  v365 = unk_27FDBFFB8;
  v366 = xmmword_27FDBFFC8;
  v367 = xmmword_27FDBFFD8;
  v360 = xmmword_27FDBFF68;
  v361 = unk_27FDBFF78;
  v362 = xmmword_27FDBFF88;
  v363 = *&byte_27FDBFF98;
  sub_25F7A223C(&v360, &v378);
  if (qword_27FDAF918 != -1)
  {
    swift_once();
  }

  v161 = xmmword_27FDC00A0;
  v162 = xmmword_27FDC0090;
  v376[4] = xmmword_27FDC00A0;
  v376[5] = xmmword_27FDC00B0;
  v163 = xmmword_27FDC00B0;
  v377[0] = xmmword_27FDC00C0;
  *(v377 + 12) = *(&xmmword_27FDC00C0 + 12);
  v164 = xmmword_27FDC0070;
  v165 = xmmword_27FDC0080;
  v376[2] = xmmword_27FDC0080;
  v376[3] = xmmword_27FDC0090;
  v166 = xmmword_27FDC0060;
  v376[1] = xmmword_27FDC0070;
  v376[0] = xmmword_27FDC0060;
  v167 = v159 + *(v1 + 20);
  v168 = v373;
  *(v167 + 192) = v372;
  *(v167 + 208) = v168;
  *(v167 + 224) = v374;
  *(v167 + 240) = v375;
  v169 = v369;
  *(v167 + 128) = v368;
  *(v167 + 144) = v169;
  v170 = v371;
  *(v167 + 160) = v370;
  *(v167 + 176) = v170;
  v171 = v365;
  *(v167 + 64) = v364;
  *(v167 + 80) = v171;
  v172 = v367;
  *(v167 + 96) = v366;
  *(v167 + 112) = v172;
  v173 = v361;
  *v167 = v360;
  *(v167 + 16) = v173;
  v174 = v363;
  *(v167 + 32) = v362;
  *(v167 + 48) = v174;
  v175 = v159 + *(v1 + 24);
  *(v175 + 108) = *(&xmmword_27FDC00C0 + 12);
  *(v175 + 64) = v161;
  *(v175 + 80) = v163;
  *(v175 + 96) = xmmword_27FDC00C0;
  *v175 = v166;
  *(v175 + 16) = v164;
  *(v175 + 32) = v165;
  *(v175 + 48) = v162;
  v176 = v5 + 10 * v2;
  *(v175 + 122) = 1;
  sub_25F7A2298(v376, &v378);
  if (qword_27FDAF868 != -1)
  {
    swift_once();
  }

  v177 = __swift_project_value_buffer(v6, qword_27FDBF7C8);
  sub_25F7A22F4(v177, v5 + 10 * v2, type metadata accessor for Preset.Info);
  if (qword_27FDAF870 != -1)
  {
    swift_once();
  }

  v390 = xmmword_27FDBF8A0;
  v391 = *&word_27FDBF8B0;
  v392 = unk_27FDBF8C0;
  v393 = dword_27FDBF8D0;
  v386 = xmmword_27FDBF860;
  v387 = unk_27FDBF870;
  v388 = xmmword_27FDBF880;
  v389 = *&qword_27FDBF890;
  v382 = xmmword_27FDBF820;
  v383 = unk_27FDBF830;
  v384 = unk_27FDBF840;
  v385 = xmmword_27FDBF850;
  v378 = xmmword_27FDBF7E0;
  v379 = *algn_27FDBF7F0;
  v380 = unk_27FDBF800;
  v381 = *&byte_27FDBF810;
  sub_25F7A223C(&v378, v196);
  if (qword_27FDAF878 != -1)
  {
    swift_once();
  }

  v178 = xmmword_27FDBF918;
  v179 = unk_27FDBF908;
  v196[4] = xmmword_27FDBF918;
  v196[5] = xmmword_27FDBF928;
  v180 = xmmword_27FDBF928;
  v197[0] = xmmword_27FDBF938;
  *(v197 + 12) = *(&xmmword_27FDBF938 + 12);
  v181 = xmmword_27FDBF8E8;
  v182 = xmmword_27FDBF8F8;
  v196[2] = xmmword_27FDBF8F8;
  v196[3] = unk_27FDBF908;
  v183 = xmmword_27FDBF8D8;
  v196[0] = xmmword_27FDBF8D8;
  v196[1] = xmmword_27FDBF8E8;
  v184 = v176 + *(v1 + 20);
  v185 = v391;
  *(v184 + 192) = v390;
  *(v184 + 208) = v185;
  *(v184 + 224) = v392;
  *(v184 + 240) = v393;
  v186 = v387;
  *(v184 + 128) = v386;
  *(v184 + 144) = v186;
  v187 = v389;
  *(v184 + 160) = v388;
  *(v184 + 176) = v187;
  v188 = v383;
  *(v184 + 64) = v382;
  *(v184 + 80) = v188;
  v189 = v385;
  *(v184 + 96) = v384;
  *(v184 + 112) = v189;
  v190 = v379;
  *v184 = v378;
  *(v184 + 16) = v190;
  v191 = v381;
  *(v184 + 32) = v380;
  *(v184 + 48) = v191;
  v192 = v176 + *(v1 + 24);
  *(v192 + 108) = *(&xmmword_27FDBF938 + 12);
  *(v192 + 64) = v178;
  *(v192 + 80) = v180;
  *(v192 + 96) = xmmword_27FDBF938;
  *v192 = v183;
  *(v192 + 16) = v181;
  *(v192 + 32) = v182;
  *(v192 + 48) = v179;
  *(v192 + 122) = 1;
  sub_25F7A2298(v196, &v195);
  v193 = sub_25F7A0720(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v193;
}

uint64_t sub_25F7A22F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F7A235C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Preset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F7A23C0(uint64_t a1)
{
  v2 = type metadata accessor for Preset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __swiftcall CFErrorInfo.init(error:)(ProDisplayLibrary::CFErrorInfo_optional *__return_ptr retstr, CFErrorRef_optional error)
{
  if (error.value)
  {
    v3 = error.value;
    v4 = CFErrorGetDomain(v3);
    if (v4)
    {
      v5 = v4;
      v6 = sub_25F82236C();
      v8 = v7;

      Code = CFErrorGetCode(v3);
      v10 = CFErrorCopyDescription(v3);

      if (v10)
      {
        v11 = sub_25F82236C();
        v13 = v12;

        retstr->value.domain._countAndFlagsBits = v6;
        retstr->value.domain._object = v8;
        retstr->value.code = Code;
        retstr->value.errDescription._countAndFlagsBits = v11;
        retstr->value.errDescription._object = v13;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    retstr->value.errDescription._object = 0;
    retstr->value.domain = 0u;
    *&retstr->value.code = 0u;
  }
}

uint64_t CFErrorInfo.description.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  v5 = *v0;

  MEMORY[0x25F8E7510](23328, 0xE200000000000000);
  v3 = sub_25F822C7C();
  MEMORY[0x25F8E7510](v3);

  MEMORY[0x25F8E7510](8285, 0xE200000000000000);
  MEMORY[0x25F8E7510](v1, v2);
  return v5;
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

uint64_t sub_25F7A25A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25F7A25EC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t StringCodable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v6 = a1;
  v40 = a4;
  v42 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v49 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F82279C();
  MEMORY[0x28223BE20](v8 - 8);
  v48 = &v36 - v9;
  v46 = a3;
  v10 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v36 - v12;
  v44 = v10;
  swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  v47 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v16 = v53;
  sub_25F822E2C();
  if (v16)
  {
    goto LABEL_11;
  }

  v36 = AssociatedTypeWitness;
  v37 = a2;
  v45 = v15;
  v53 = v13;
  v38 = v6;
  __swift_project_boxed_opaque_existential_1(v52, v52[3]);
  v39 = sub_25F822CCC();
  v41 = v17;
  v18 = v37;
  sub_25F82293C();
  sub_25F8224EC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = v48;
  v43 = AssociatedConformanceWitness;
  sub_25F8227AC();
  v21 = v42;
  v22 = *(v42 + 48);
  v23 = v22(v20, 1, v18);
  v24 = v20;
  v25 = v49;
  if (v23 == 1)
  {
LABEL_10:
    (*(v47 + 8))(v45, v53);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_25F82292C();

    v50 = 0x2064696C61766E49;
    v51 = 0xEF272065756C6176;
    MEMORY[0x25F8E7510](v39, v41);

    MEMORY[0x25F8E7510](39, 0xE100000000000000);
    sub_25F82298C();
    swift_allocError();
    sub_25F82295C();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    v6 = v38;
LABEL_11:
    v34 = v6;
    return __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  v27 = *(v21 + 32);
  v26 = v21 + 32;
  v44 = v27;
  while (1)
  {
    v44(v25, v24, v18);
    v29 = v39 == sub_25F822C7C() && v41 == v28;
    v30 = v47;
    if (v29)
    {
      break;
    }

    v31 = sub_25F822CBC();

    if (v31)
    {
      goto LABEL_14;
    }

    v25 = v49;
    (*(v26 - 24))(v49, v18);
    v32 = v48;
    sub_25F8227AC();
    v33 = v22(v32, 1, v18);
    v24 = v32;
    if (v33 == 1)
    {
      goto LABEL_10;
    }
  }

LABEL_14:
  (*(v30 + 8))(v45, v53);

  v44(v40, v49, v18);
  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  v34 = v38;
  return __swift_destroy_boxed_opaque_existential_0Tm(v34);
}

uint64_t StringCodable.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F822E4C();
  sub_25F822C7C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_25F822CEC();

  return __swift_destroy_boxed_opaque_existential_0Tm(v2);
}

uint64_t sub_25F7A2C68()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  sub_25F76E658(v2, v3);
  v4 = sub_25F821FDC();
  sub_25F76D178(v2, v3);
  v5 = 0x800000025F82D8A0;
  v6 = 0xD00000000000001ELL;
  if (v4 == 6)
  {
    v6 = 0xD000000000000013;
    v5 = 0x800000025F82D820;
  }

  if (v4 == 5)
  {
    v7 = 0x656D69726F6C6F43;
  }

  else
  {
    v7 = v6;
  }

  if (v4 == 5)
  {
    v8 = 0xEB00000000797274;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x25F8E7510](v7, v8);

  MEMORY[0x25F8E7510](10272, 0xE200000000000000);
  v10 = *(v1 + 16);
  v9 = *(v1 + 24);
  sub_25F76E658(v10, v9);
  sub_25F821FDC();
  sub_25F76D178(v10, v9);
  sub_25F773C70();
  v11 = sub_25F8224AC();
  v13 = v12;
  result = sub_25F82243C();
  if (__OFSUB__(2, result))
  {
    __break(1u);
  }

  else
  {
    v15 = sub_25F82249C();
    MEMORY[0x25F8E7510](v15);

    MEMORY[0x25F8E7510](v11, v13);

    MEMORY[0x25F8E7510](30768, 0xE200000000000000);

    MEMORY[0x25F8E7510](41, 0xE100000000000000);
    return 0;
  }

  return result;
}

uint64_t CTA861.HDRStaticMetadataDataBlock.data.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_25F76E658(v1, *(v0 + 24));
  return v1;
}

void CTA861.HDRStaticMetadataDataBlock.EOTF.description.getter()
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v3 = *v0;
LABEL_2:
  if (v1 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4 + 1;
  v6 = &unk_2871C4308 + 24 * v1 + 32;
  while (v1 != 4)
  {
    if (v5 == ++v1)
    {
      __break(1u);
      return;
    }

    v7 = v6 + 24;
    v8 = *v6;
    v6 += 24;
    if ((v8 & ~v3) == 0)
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25F817C08(0, v2[2] + 1, 1);
      }

      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_25F817C08((v11 > 1), v12 + 1, 1);
      }

      v2[2] = v12 + 1;
      v13 = &v2[3 * v12];
      *(v13 + 32) = v8;
      v13[5] = v10;
      v13[6] = v9;
      goto LABEL_2;
    }
  }

  v14 = v2[2];
  if (v14)
  {
    v24 = MEMORY[0x277D84F90];
    sub_25F817BC8(0, v14, 0);
    v15 = v2 + 6;
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v24 + 16);
      v18 = *(v24 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_25F817BC8((v18 > 1), v19 + 1, 1);
      }

      *(v24 + 16) = v19 + 1;
      v20 = v24 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 3;
      --v14;
    }

    while (v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE8);
  sub_25F7A4594();
  v21 = sub_25F8222EC();
  v23 = v22;

  MEMORY[0x25F8E7510](v21, v23);

  MEMORY[0x25F8E7510](93, 0xE100000000000000);
}

BOOL sub_25F7A31B4(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_25F7A31E4@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_25F7A3210@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t CTA861.HDRStaticMetadataDataBlock.__allocating_init(_:)(uint64_t a1, unint64_t a2)
{
  v5 = swift_allocObject();
  result = sub_25F779394(a1, a2);
  if (v2)
  {
    goto LABEL_10;
  }

  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_9;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 >= 2)
      {
LABEL_14:
        *(v5 + 16) = a1;
        *(v5 + 24) = a2;
        return v5;
      }

LABEL_9:
      sub_25F779604();
      swift_allocError();
      *v12 = 0xD00000000000003FLL;
      *(v12 + 8) = 0x800000025F82D860;
      *(v12 + 16) = 0;
      swift_willThrow();
LABEL_10:
      sub_25F76D178(a1, a2);
      swift_deallocPartialClassInstance();
      return v5;
    }

    __break(1u);
  }

  else
  {
    if (!v7)
    {
      if (BYTE6(a2) >= 2uLL)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 2)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t CTA861.HDRStaticMetadataDataBlock.init(_:)(uint64_t a1, unint64_t a2)
{
  result = sub_25F779394(a1, a2);
  if (v3)
  {
    goto LABEL_10;
  }

  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_9;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 >= 2)
      {
LABEL_14:
        *(v2 + 16) = a1;
        *(v2 + 24) = a2;
        return v2;
      }

LABEL_9:
      sub_25F779604();
      swift_allocError();
      *v12 = 0xD00000000000003FLL;
      *(v12 + 8) = 0x800000025F82D860;
      *(v12 + 16) = 0;
      swift_willThrow();
LABEL_10:
      sub_25F76D178(a1, a2);
      swift_deallocPartialClassInstance();
      return v2;
    }

    __break(1u);
  }

  else
  {
    if (!v7)
    {
      if (BYTE6(a2) >= 2uLL)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 2)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t CTA861.HDRStaticMetadataDataBlock.hierarchicalDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_25F7A2C68();
  v3 = MEMORY[0x277D84F90];
  sub_25F802E24(v2, v4, MEMORY[0x277D84F90], a1);
  *&v53 = 0xE000000000000000;
  sub_25F82292C();

  v54 = 0xD000000000000011;
  v55 = 0x800000025F82E220;
  swift_beginAccess();
  v5 = sub_25F821FDC();
  swift_endAccess();
  v52 = v5;
  CTA861.HDRStaticMetadataDataBlock.EOTF.description.getter();
  MEMORY[0x25F8E7510]();

  sub_25F802E24(0xD000000000000011, 0x800000025F82E220, v3, &v52);
  v6 = v52;
  v47 = v53;
  v7 = a1[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_25F75C38C(0, *(v7 + 2) + 1, 1, v7);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_25F75C38C((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[24 * v9];
  *(v10 + 4) = v6;
  *(v10 + 40) = v47;
  a1[2] = v7;
  v52 = 0;
  *&v53 = 0xE000000000000000;
  sub_25F82292C();

  v54 = 0xD000000000000020;
  v55 = 0x800000025F82E240;
  swift_beginAccess();
  v11 = sub_25F821FDC();
  swift_endAccess();
  if (v11)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v11)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x25F8E7510](v12, v13);

  sub_25F802E24(v54, v55, MEMORY[0x277D84F90], &v52);
  v14 = v52;
  v15 = v53;
  v17 = *(v7 + 2);
  v16 = *(v7 + 3);
  if (v17 >= v16 >> 1)
  {
    v48 = v53;
    v44 = sub_25F75C38C((v16 > 1), v17 + 1, 1, v7);
    v15 = v48;
    v7 = v44;
  }

  *(v7 + 2) = v17 + 1;
  v18 = &v7[24 * v17];
  *(v18 + 4) = v14;
  v19 = 1701736270;
  *(v18 + 40) = v15;
  a1[2] = v7;
  v52 = 0;
  *&v53 = 0xE000000000000000;
  sub_25F82292C();

  v52 = 0xD00000000000001FLL;
  *&v53 = 0x800000025F82E270;

  CTA861.HDRStaticMetadataDataBlock.desiredContentMaxLuminance()();
  if (v20)
  {

    v21 = 0xE400000000000000;
    v22 = 1701736270;
  }

  else
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_25F8225FC();
    MEMORY[0x25F8E7510](0x7374696E20, 0xE500000000000000);

    v22 = v54;
    v21 = v55;
  }

  MEMORY[0x25F8E7510](v22, v21);

  sub_25F802E24(v52, v53, MEMORY[0x277D84F90], &v52);
  v23 = v52;
  v24 = v53;
  v26 = *(v7 + 2);
  v25 = *(v7 + 3);
  if (v26 >= v25 >> 1)
  {
    v49 = v53;
    v45 = sub_25F75C38C((v25 > 1), v26 + 1, 1, v7);
    v24 = v49;
    v7 = v45;
  }

  *(v7 + 2) = v26 + 1;
  v27 = &v7[24 * v26];
  *(v27 + 4) = v23;
  *(v27 + 40) = v24;
  a1[2] = v7;
  v52 = 0;
  *&v53 = 0xE000000000000000;
  sub_25F82292C();

  v52 = 0xD00000000000002DLL;
  *&v53 = 0x800000025F82E290;

  CTA861.HDRStaticMetadataDataBlock.desiredContentMaxFrameAverageLuminance()();
  if (v28)
  {

    v29 = 0xE400000000000000;
    v30 = 1701736270;
  }

  else
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_25F8225FC();
    MEMORY[0x25F8E7510](0x7374696E20, 0xE500000000000000);

    v30 = v54;
    v29 = v55;
  }

  MEMORY[0x25F8E7510](v30, v29);

  sub_25F802E24(v52, v53, MEMORY[0x277D84F90], &v52);
  v31 = v52;
  v32 = v53;
  v34 = *(v7 + 2);
  v33 = *(v7 + 3);
  if (v34 >= v33 >> 1)
  {
    v50 = v53;
    v46 = sub_25F75C38C((v33 > 1), v34 + 1, 1, v7);
    v32 = v50;
    v7 = v46;
  }

  *(v7 + 2) = v34 + 1;
  v35 = &v7[24 * v34];
  *(v35 + 4) = v31;
  *(v35 + 40) = v32;
  a1[2] = v7;
  v52 = 0;
  *&v53 = 0xE000000000000000;
  sub_25F82292C();

  v52 = 0xD00000000000001FLL;
  *&v53 = 0x800000025F82E2C0;

  CTA861.HDRStaticMetadataDataBlock.desiredContentMinLuminance()();
  if (v36)
  {

    v37 = 0xE400000000000000;
  }

  else
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_25F8225FC();
    MEMORY[0x25F8E7510](0x7374696E20, 0xE500000000000000);

    v19 = v54;
    v37 = v55;
  }

  MEMORY[0x25F8E7510](v19, v37);

  result = sub_25F802E24(v52, v53, MEMORY[0x277D84F90], &v52);
  v39 = v52;
  v40 = v53;
  v42 = *(v7 + 2);
  v41 = *(v7 + 3);
  if (v42 >= v41 >> 1)
  {
    v51 = v53;
    result = sub_25F75C38C((v41 > 1), v42 + 1, 1, v7);
    v40 = v51;
    v7 = result;
  }

  *(v7 + 2) = v42 + 1;
  v43 = &v7[24 * v42];
  *(v43 + 4) = v39;
  *(v43 + 40) = v40;
  a1[2] = v7;
  return result;
}

uint64_t CTA861.HDRStaticMetadataDataBlock.supportedEOTFs()@<X0>(_BYTE *a1@<X8>)
{
  swift_beginAccess();
  v2 = sub_25F821FDC();
  result = swift_endAccess();
  *a1 = v2;
  return result;
}

Swift::Bool __swiftcall CTA861.HDRStaticMetadataDataBlock.staticMetadataType1Support()()
{
  swift_beginAccess();
  v0 = sub_25F821FDC();
  swift_endAccess();
  return v0 & 1;
}

Swift::Double_optional __swiftcall CTA861.HDRStaticMetadataDataBlock.desiredContentMaxLuminance()()
{
  v1 = swift_beginAccess();
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_13;
    }

    v8 = v3 + 16;
    v6 = *(v3 + 16);
    v7 = *(v8 + 8);
    v9 = __OFSUB__(v7, v6);
    v10 = v7 - v6;
    if (!v9)
    {
      if (v10 < 5)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v5)
  {
    v9 = __OFSUB__(HIDWORD(v3), v3);
    v11 = HIDWORD(v3) - v3;
    if (!v9)
    {
      if (v11 >= 5)
      {
        goto LABEL_11;
      }

LABEL_13:
      v1 = 0;
      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (BYTE6(v4) < 5uLL)
  {
    goto LABEL_13;
  }

LABEL_11:
  swift_beginAccess();
  v12 = sub_25F821FDC();
  swift_endAccess();
  if (!v12)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  v13 = sub_25F821FDC();
  swift_endAccess();
  v2 = exp2(vcvtd_n_f64_u32(v13, 5uLL)) * 50.0;
  v1 = LOBYTE(v2);
LABEL_17:
  result.value = v2;
  result.is_nil = v1;
  return result;
}

Swift::Double_optional __swiftcall CTA861.HDRStaticMetadataDataBlock.desiredContentMaxFrameAverageLuminance()()
{
  v1 = swift_beginAccess();
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_13;
    }

    v8 = v3 + 16;
    v6 = *(v3 + 16);
    v7 = *(v8 + 8);
    v9 = __OFSUB__(v7, v6);
    v10 = v7 - v6;
    if (!v9)
    {
      if (v10 < 6)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v5)
  {
    v9 = __OFSUB__(HIDWORD(v3), v3);
    v11 = HIDWORD(v3) - v3;
    if (!v9)
    {
      if (v11 >= 6)
      {
        goto LABEL_11;
      }

LABEL_13:
      v1 = 0;
      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (BYTE6(v4) < 6uLL)
  {
    goto LABEL_13;
  }

LABEL_11:
  swift_beginAccess();
  v12 = sub_25F821FDC();
  swift_endAccess();
  if (!v12)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  v13 = sub_25F821FDC();
  swift_endAccess();
  v2 = exp2(vcvtd_n_f64_u32(v13, 5uLL)) * 50.0;
  v1 = LOBYTE(v2);
LABEL_17:
  result.value = v2;
  result.is_nil = v1;
  return result;
}

Swift::Double_optional __swiftcall CTA861.HDRStaticMetadataDataBlock.desiredContentMinLuminance()()
{
  LOBYTE(v1) = swift_beginAccess();
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_14;
    }

    v8 = v3 + 16;
    v6 = *(v3 + 16);
    v7 = *(v8 + 8);
    v9 = __OFSUB__(v7, v6);
    v10 = v7 - v6;
    if (!v9)
    {
      if (v10 < 7)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (v5)
  {
    v9 = __OFSUB__(HIDWORD(v3), v3);
    v11 = HIDWORD(v3) - v3;
    if (!v9)
    {
      if (v11 >= 7)
      {
        goto LABEL_11;
      }

LABEL_14:
      LOBYTE(v1) = 0;
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (BYTE6(v4) < 7uLL)
  {
    goto LABEL_14;
  }

LABEL_11:
  swift_beginAccess();
  v12 = sub_25F821FDC();
  swift_endAccess();
  if (!v12)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v13 = sub_25F821FDC();
  swift_endAccess();
  *(&v1 - 1) = CTA861.HDRStaticMetadataDataBlock.desiredContentMaxLuminance()();
  if (v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = v13 / 255.0 * (v13 / 255.0) * v1 / 100.0;
  v1 = v2;
LABEL_19:
  result.value = v2;
  result.is_nil = LOBYTE(v1);
  return result;
}

uint64_t sub_25F7A3FA0()
{
  result = swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v5 = 0;
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v7 = v2 + 16;
    v2 = *(v2 + 16);
    v6 = *(v7 + 8);
    v8 = __OFSUB__(v6, v2);
    v5 = v6 - v2;
    if (!v8)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(v3);
    goto LABEL_10;
  }

  v8 = __OFSUB__(HIDWORD(v2), v2);
  v9 = HIDWORD(v2) - v2;
  if (v8)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v5 = v9;
LABEL_10:
  result = 7 - v5;
  if (__OFSUB__(7, v5))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (result >= 1)
  {
    v13 = sub_25F7A4998(result);
    v14 = v10;
    sub_25F7BD8C4(&v13, 0);
    v11 = v13;
    v12 = v14;
    swift_beginAccess();
    sub_25F82204C();
    swift_endAccess();
    sub_25F76D178(v11, v12);
    swift_beginAccess();
    sub_25F821FDC();
    swift_endAccess();
    swift_beginAccess();
    sub_25F821FEC();
    return swift_endAccess();
  }

  return result;
}

uint64_t CTA861.HDRStaticMetadataDataBlock.setSupportedEOTFs(_:)()
{
  swift_beginAccess();
  sub_25F821FEC();
  return swift_endAccess();
}

Swift::Void __swiftcall CTA861.HDRStaticMetadataDataBlock.metadataType1Support(_:)(Swift::Bool a1)
{
  swift_beginAccess();
  sub_25F821FDC();
  sub_25F821FEC();
  swift_endAccess();
}

void sub_25F7A420C(uint64_t a1, char a2)
{
  sub_25F7A3FA0();
  if (a2)
  {
    goto LABEL_6;
  }

  v4 = ceil(log2(*&a1 / 50.0) * 32.0);
  if (v4 < 1.0)
  {
    goto LABEL_6;
  }

  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v4 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 256.0)
  {
LABEL_6:
    swift_beginAccess();
    sub_25F821FEC();
    swift_endAccess();
    return;
  }

LABEL_9:
  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CTA861.HDRStaticMetadataDataBlock.desiredContentMinLuminance(_:)(Swift::Double_optional a1)
{
  v2 = v1;
  v3 = *&a1.is_nil;
  sub_25F7A3FA0();
  if (v2)
  {
    goto LABEL_8;
  }

  v7 = CTA861.HDRStaticMetadataDataBlock.desiredContentMaxLuminance()();
  if (v4)
  {
    sub_25F779604();
    swift_allocError();
    *v5 = 0xD00000000000002CLL;
    *(v5 + 8) = 0x800000025F82E2E0;
    *(v5 + 16) = 1;
    swift_willThrow();
    return;
  }

  v6 = floor(sqrt(v3 / *&v7.is_nil * 100.0) * 255.0);
  if (v6 < 1.0)
  {
    goto LABEL_8;
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v6 <= -1.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v6 < 256.0)
  {
LABEL_8:
    swift_beginAccess();
    sub_25F821FEC();
    swift_endAccess();
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t CTA861.HDRStaticMetadataDataBlock.__deallocating_deinit()
{
  sub_25F76D178(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_25F7A44E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = CTA861.HDRStaticMetadataDataBlock.init(_:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

unint64_t sub_25F7A4594()
{
  result = qword_27FDAFBF0;
  if (!qword_27FDAFBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAFBE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDAFBF0);
  }

  return result;
}

unint64_t sub_25F7A45FC()
{
  result = qword_27FDB0420;
  if (!qword_27FDB0420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0420);
  }

  return result;
}

unint64_t sub_25F7A4654()
{
  result = qword_27FDB0428;
  if (!qword_27FDB0428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0428);
  }

  return result;
}

unint64_t sub_25F7A46AC()
{
  result = qword_27FDB0430;
  if (!qword_27FDB0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0430);
  }

  return result;
}

unint64_t sub_25F7A4704()
{
  result = qword_27FDB0438;
  if (!qword_27FDB0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0438);
  }

  return result;
}

uint64_t sub_25F7A4758(uint64_t a1)
{
  result = sub_25F7A4804(&qword_27FDB0440);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F7A47C0(uint64_t a1)
{
  result = sub_25F7A4804(&qword_27FDB0448);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F7A4804(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CTA861.HDRStaticMetadataDataBlock();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDReportID(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for HIDReportID(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t sub_25F7A4998(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_25F820AB0(result);
    }

    else
    {
      sub_25F821E8C();
      swift_allocObject();
      sub_25F821E5C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25F821F9C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *AppleDisplayHIDDevice.init(container:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v90 = a1;
  v92 = a3;
  v4 = sub_25F8221EC();
  v93 = *(v4 - 8);
  v94 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v85 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v85 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v85 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v85 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v85 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v85 - v24;
  MEMORY[0x28223BE20](v23);
  v91 = &v85 - v26;
  v27 = sub_25F7BDD6C();
  v28 = v19;
  v89 = v13;
  v91 = v10;
  v29 = v90;
  v30 = sub_25F7BDFE0(v90, a2, v27);
  if ((v30 & 0x100000000) != 0)
  {
    *&v133[0] = 0;
    *(&v133[0] + 1) = 0xE000000000000000;
    sub_25F82292C();

    *&v133[0] = 0xD000000000000025;
    *(&v133[0] + 1) = 0x800000025F82E3A0;
    MEMORY[0x25F8E7510](v29, a2);

    MEMORY[0x25F8E7510](0x756F6620746F6E20, 0xEA0000000000646ELL);
    v40 = v133[0];
    sub_25F8221DC();

    v41 = sub_25F8221CC();
    v42 = sub_25F82268C();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v133[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_25F75CA94(v40, *(&v40 + 1), v133);
      _os_log_impl(&dword_25F74E000, v41, v42, "%s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x25F8E88D0](v44, -1, -1);
      MEMORY[0x25F8E88D0](v43, -1, -1);
    }

    (*(v93 + 8))(v25, v94);
    goto LABEL_13;
  }

  v31 = v30;
  v32 = IOHIDDeviceCreate(0, v30);
  if (!v32)
  {
    *&v133[0] = 0;
    *(&v133[0] + 1) = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000038, 0x800000025F82E3D0);
    MEMORY[0x25F8E7510](v90, a2);

    v45 = v133[0];
    sub_25F8221DC();

    v46 = sub_25F8221CC();
    v47 = sub_25F82268C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v133[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_25F75CA94(v45, *(&v45 + 1), v133);
      _os_log_impl(&dword_25F74E000, v46, v47, "%s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x25F8E88D0](v49, -1, -1);
      MEMORY[0x25F8E88D0](v48, -1, -1);
    }

    (*(v93 + 8))(v22, v94);
    goto LABEL_13;
  }

  v33 = v32;
  if (IOHIDDeviceOpen(v32, 0))
  {
    v34 = v33;
    *&v133[0] = 0;
    *(&v133[0] + 1) = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000036, 0x800000025F82E410);
    MEMORY[0x25F8E7510](v90, a2);

    v35 = v133[0];
    sub_25F8221DC();

    v36 = sub_25F8221CC();
    v37 = sub_25F82268C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v133[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_25F75CA94(v35, *(&v35 + 1), v133);
      _os_log_impl(&dword_25F74E000, v36, v37, "%s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x25F8E88D0](v39, -1, -1);
      MEMORY[0x25F8E88D0](v38, -1, -1);
    }

    (*(v93 + 8))(v7, v94);
LABEL_13:

    sub_25F7BDF9C(v133);
    return memcpy(v92, v133, 0x1D0uLL);
  }

  v51 = sub_25F82235C();
  CFProperty = IORegistryEntryCreateCFProperty(v31, v51, *MEMORY[0x277CBECE8], 0);

  v85 = v31;
  if (CFProperty)
  {
    *&v133[0] = CFProperty;
    if (swift_dynamicCast())
    {
      v86 = v33;
      v53 = *&v131[0];
      v136 = 0;
      *&v133[0] = 0;
      *(&v133[0] + 1) = 0xE000000000000000;
      sub_25F82292C();

      *&v133[0] = 0xD000000000000027;
      *(&v133[0] + 1) = 0x800000025F82E4F0;
      v88 = v53;
      *&v131[0] = v53;
      sub_25F7BE5D8();
      v54 = sub_25F8224AC();
      MEMORY[0x25F8E7510](v54);

      v55 = v133[0];
      v56 = v89;
      sub_25F8221DC();

      v57 = sub_25F8221CC();
      v58 = sub_25F82266C();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v87 = v55;
        v60 = v59;
        v61 = swift_slowAlloc();
        *&v133[0] = v61;
        *v60 = 136315138;
        *(v60 + 4) = sub_25F75CA94(v87, *(&v55 + 1), v133);
        _os_log_impl(&dword_25F74E000, v57, v58, "%s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v61);
        MEMORY[0x25F8E88D0](v61, -1, -1);
        MEMORY[0x25F8E88D0](v60, -1, -1);
      }

      v87 = *(v93 + 8);
      v87(v56, v94);

      v62 = v90;
      v33 = v86;
      goto LABEL_27;
    }

    v136 = 1;
    v28 = v16;
    sub_25F8221DC();
    v69 = sub_25F8221CC();
    v70 = sub_25F82268C();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v133[0] = v72;
      *v71 = 136315138;
      *(v71 + 4) = sub_25F75CA94(0xD000000000000036, 0x800000025F82E4B0, v133);
      _os_log_impl(&dword_25F74E000, v69, v70, "%s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v72);
      MEMORY[0x25F8E88D0](v72, -1, -1);
      MEMORY[0x25F8E88D0](v71, -1, -1);
    }
  }

  else
  {
    v136 = 1;
    sub_25F8221DC();
    v63 = sub_25F8221CC();
    v64 = sub_25F82268C();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v86 = v33;
      v66 = v65;
      v67 = swift_slowAlloc();
      *&v133[0] = v67;
      *v66 = 136315138;
      *(v66 + 4) = sub_25F75CA94(0xD00000000000002ALL, 0x800000025F82E450, v133);
      _os_log_impl(&dword_25F74E000, v63, v64, "%s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v67);
      MEMORY[0x25F8E88D0](v67, -1, -1);
      v68 = v66;
      v33 = v86;
      MEMORY[0x25F8E88D0](v68, -1, -1);
    }
  }

  v87 = *(v93 + 8);
  v87(v28, v94);
  v88 = 0;
  v62 = v90;
LABEL_27:

  v73 = v33;
  _s17ProDisplayLibrary05AppleB9HIDDeviceV8elements2ofSayAA10HIDElementVGSo14IOHIDDeviceRefa_tFZ_0(v73);
  v75 = v74;
  v86 = v73;

  sub_25F7AF788(v76, &v105);
  *(&v135[12] + 7) = v117;
  *(&v135[13] + 7) = v118;
  *(&v135[14] + 7) = v119;
  *(&v135[8] + 7) = v113;
  *(&v135[9] + 7) = v114;
  *(&v135[10] + 7) = v115;
  *(&v135[11] + 7) = v116;
  *(&v135[4] + 7) = v109;
  *(&v135[5] + 7) = v110;
  *(&v135[6] + 7) = v111;
  *(&v135[7] + 7) = v112;
  *(v135 + 7) = v105;
  *(&v135[1] + 7) = v106;
  *(&v135[2] + 7) = v107;
  *(&v135[15] + 7) = v120;
  *(&v135[3] + 7) = v108;
  sub_25F7B0090(v75, &v121);
  *&v134[102] = v127;
  *&v134[118] = v128;
  *&v134[134] = v129;
  *&v134[150] = v130;
  *&v134[38] = v123;
  *&v134[54] = v124;
  *&v134[70] = v125;
  *&v134[86] = v126;
  *&v134[6] = v121;
  *&v134[22] = v122;
  v104 = MEMORY[0x277D84FA0];
  v131[12] = v117;
  v131[13] = v118;
  v131[14] = v119;
  v132 = v120;
  v131[8] = v113;
  v131[9] = v114;
  v131[10] = v115;
  v131[11] = v116;
  v131[4] = v109;
  v131[5] = v110;
  v131[6] = v111;
  v131[7] = v112;
  v131[0] = v105;
  v131[1] = v106;
  v131[2] = v107;
  v131[3] = v108;
  if (sub_25F76E230(v131) != 1)
  {
    sub_25F7BA9B4(v133, 0, &qword_27FDB0510);
    if (v132 != 3)
    {
      sub_25F7BA9B4(v133, 1, &qword_27FDB0510);
    }
  }

  v100 = v127;
  v101 = v128;
  v102 = v129;
  v103 = v130;
  v96 = v123;
  v97 = v124;
  v98 = v125;
  v99 = v126;
  v95[0] = v121;
  v95[1] = v122;
  if (sub_25F7BE5B8(v95) != 1)
  {
    if (BYTE8(v95[0]) != 3)
    {
      sub_25F7BA9B4(v133, 2, &qword_27FDB0510);
    }

    if (BYTE8(v96) != 3)
    {
      sub_25F7BA9B4(v133, 3, &qword_27FDB0510);
    }

    if (BYTE8(v101) != 3)
    {
      sub_25F7BA9B4(v133, 4, &qword_27FDB0510);
    }
  }

  v77 = v104;
  *&v133[0] = 0;
  *(&v133[0] + 1) = 0xE000000000000000;
  sub_25F82292C();

  *&v133[0] = 0xD000000000000024;
  *(&v133[0] + 1) = 0x800000025F82E480;
  MEMORY[0x25F8E7510](v62, a2);
  v89 = a2;

  MEMORY[0x25F8E7510](0x6465746165726320, 0xE800000000000000);
  v78 = v133[0];
  v79 = v91;
  sub_25F8221DC();

  v80 = sub_25F8221CC();
  v81 = sub_25F82266C();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *&v133[0] = v83;
    *v82 = 136315138;
    *(v82 + 4) = sub_25F75CA94(v78, *(&v78 + 1), v133);
    _os_log_impl(&dword_25F74E000, v80, v81, "%s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v83);
    v84 = v90;
    MEMORY[0x25F8E88D0](v83, -1, -1);
    MEMORY[0x25F8E88D0](v82, -1, -1);

    v87(v79, v94);
  }

  else
  {

    v87(v79, v94);

    v84 = v90;
  }

  LODWORD(v133[0]) = v85;
  *(&v133[0] + 1) = v86;
  *&v133[1] = v84;
  *(&v133[1] + 1) = v89;
  *&v133[2] = v88;
  BYTE8(v133[2]) = v136;
  *(&v133[16] + 9) = v135[14];
  *(&v133[17] + 2) = *(&v135[14] + 9);
  *(&v133[14] + 9) = v135[12];
  *(&v133[15] + 9) = v135[13];
  *(&v133[10] + 9) = v135[8];
  *(&v133[11] + 9) = v135[9];
  *(&v133[12] + 9) = v135[10];
  *(&v133[13] + 9) = v135[11];
  *(&v133[6] + 9) = v135[4];
  *(&v133[7] + 9) = v135[5];
  *(&v133[8] + 9) = v135[6];
  *(&v133[9] + 9) = v135[7];
  *(&v133[2] + 9) = v135[0];
  *(&v133[3] + 9) = v135[1];
  *(&v133[4] + 9) = v135[2];
  *(&v133[5] + 9) = v135[3];
  *(&v133[26] + 2) = *&v134[128];
  *(&v133[27] + 2) = *&v134[144];
  *(&v133[22] + 2) = *&v134[64];
  *(&v133[23] + 2) = *&v134[80];
  *(&v133[24] + 2) = *&v134[96];
  *(&v133[25] + 2) = *&v134[112];
  *(&v133[18] + 2) = *v134;
  *(&v133[19] + 2) = *&v134[16];
  *(&v133[20] + 2) = *&v134[32];
  *(&v133[21] + 2) = *&v134[48];
  *&v133[28] = *&v134[158];
  *(&v133[28] + 1) = v77;
  nullsub_1(v133);
  return memcpy(v92, v133, 0x1D0uLL);
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleDisplayHIDDevice.slotCount()()
{
  v1 = sub_25F8221EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 256);
  v31 = *(v0 + 240);
  v32 = v5;
  v33 = *(v0 + 272);
  v34 = *(v0 + 288);
  v6 = *(v0 + 192);
  v27 = *(v0 + 176);
  v28 = v6;
  v7 = *(v0 + 224);
  v29 = *(v0 + 208);
  v30 = v7;
  v8 = *(v0 + 128);
  v23 = *(v0 + 112);
  v24 = v8;
  v9 = *(v0 + 160);
  v25 = *(v0 + 144);
  v26 = v9;
  v10 = *(v0 + 64);
  v20[0] = *(v0 + 48);
  v20[1] = v10;
  v11 = *(v0 + 96);
  v21 = *(v0 + 80);
  v22 = v11;
  if (sub_25F76E230(v20) == 1)
  {
    sub_25F8221DC();
    v12 = sub_25F8221CC();
    v13 = sub_25F82268C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_25F75CA94(0xD00000000000003BLL, 0x800000025F82CE10, &v19);
      _os_log_impl(&dword_25F74E000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x25F8E88D0](v15, -1, -1);
      MEMORY[0x25F8E88D0](v14, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    sub_25F76E244();
    swift_allocError();
    *v16 = 0;
    *(v16 + 8) = 0;
    *(v16 + 16) = 5;
    return swift_willThrow();
  }

  else
  {
    result = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
    }
  }

  return result;
}

void AppleDisplayHIDDevice.getPreset(at:)(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v265) = a2;
  v229 = sub_25F8221EC();
  v5 = *(v229 - 1);
  v6 = MEMORY[0x28223BE20](v229);
  v8 = &v202 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v202 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v226 = &v202 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v225 = &v202 - v15;
  MEMORY[0x28223BE20](v14);
  v224 = (&v202 - v16);
  v17 = type metadata accessor for HIDPresetData();
  MEMORY[0x28223BE20](v17);
  v223 = &v202 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (&v202 - v20);
  v228 = *(v3 + 4);
  v22 = *(v3 + 40);
  v261 = v22;
  v23 = v3[16];
  v263[10] = v3[15];
  v263[11] = v23;
  v263[12] = v3[17];
  v264 = *(v3 + 144);
  v24 = v3[12];
  v263[6] = v3[11];
  v263[7] = v24;
  v25 = v3[14];
  v263[8] = v3[13];
  v263[9] = v25;
  v26 = v3[8];
  v263[2] = v3[7];
  v263[3] = v26;
  v27 = v3[10];
  v263[4] = v3[9];
  v263[5] = v27;
  v28 = v3[4];
  v262[0] = v3[3];
  v262[1] = v28;
  v29 = v3[6];
  v263[0] = v3[5];
  v263[1] = v29;
  if (sub_25F76E230(v262) == 1)
  {
    sub_25F8221DC();
    v30 = sub_25F8221CC();
    v31 = sub_25F82268C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v232 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_25F75CA94(0xD00000000000003ELL, 0x800000025F82E520, &v232);
      _os_log_impl(&dword_25F74E000, v30, v31, "%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x25F8E88D0](v33, -1, -1);
      MEMORY[0x25F8E88D0](v32, -1, -1);
    }

    (*(v5 + 8))(v8, v229);
    sub_25F76E244();
    swift_allocError();
    *v34 = 0;
    *(v34 + 8) = 0;
    v35 = 5;
    goto LABEL_9;
  }

  v221 = v17;
  v222 = v5;
  v36 = *&v263[0];
  if (*&v263[0] < v265)
  {
    v228 = v265;
    *&v232 = 0;
    *(&v232 + 1) = 0xE000000000000000;
    sub_25F82292C();

    *&v232 = 0x207865646E69;
    *(&v232 + 1) = 0xE600000000000000;
    LODWORD(v231[0]) = v265;
    v37 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v37);

    MEMORY[0x25F8E7510](0x20666F2074756F20, 0xEE002065676E6172);
    v231[0] = v36;
    v38 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v38);

    v39 = v232;
    sub_25F8221DC();

    v40 = sub_25F8221CC();
    v41 = sub_25F82268C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v232 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_25F75CA94(v39, *(&v39 + 1), &v232);
      _os_log_impl(&dword_25F74E000, v40, v41, "%s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x25F8E88D0](v43, -1, -1);
      MEMORY[0x25F8E88D0](v42, -1, -1);
    }

    (*(v222 + 8))(v11, v229);

    sub_25F76E244();
    swift_allocError();
    *v34 = v228;
    *(v34 + 8) = v36;
    v35 = 3;
    goto LABEL_9;
  }

  v219 = v21;
  v220 = a1;
  v44 = v3[1];
  v232 = *v3;
  v233 = v44;
  v234 = v228;
  v235 = v22;
  v45 = *(v3 + 249);
  *v250 = *(v3 + 265);
  *&v250[9] = *(v3 + 274);
  v248 = *(v3 + 233);
  v249 = v45;
  v46 = *(v3 + 185);
  v244 = *(v3 + 169);
  v245 = v46;
  v47 = *(v3 + 217);
  v246 = *(v3 + 201);
  v247 = v47;
  v48 = *(v3 + 121);
  v240 = *(v3 + 105);
  v241 = v48;
  v49 = *(v3 + 153);
  v242 = *(v3 + 137);
  v243 = v49;
  v50 = *(v3 + 57);
  v236 = *(v3 + 41);
  v237 = v50;
  v51 = *(v3 + 89);
  v238 = *(v3 + 73);
  v239 = v51;
  v52 = *(v3 + 434);
  v259 = *(v3 + 418);
  v260[0] = v52;
  v53 = *(v3 + 370);
  v255 = *(v3 + 354);
  v256 = v53;
  v54 = *(v3 + 402);
  v257 = *(v3 + 386);
  v258 = v54;
  v55 = *(v3 + 306);
  v251 = *(v3 + 290);
  v252 = v55;
  v56 = *(v3 + 338);
  v253 = *(v3 + 322);
  v254 = v56;
  *(v260 + 14) = v3[28];
  v57 = v227;
  sub_25F7B50AC(v265);
  if (v57)
  {
    return;
  }

  v58 = v3[1];
  v232 = *v3;
  v233 = v58;
  v234 = v228;
  v235 = v22;
  v59 = *(v3 + 249);
  *v250 = *(v3 + 265);
  *&v250[9] = *(v3 + 274);
  v248 = *(v3 + 233);
  v249 = v59;
  v60 = *(v3 + 185);
  v244 = *(v3 + 169);
  v245 = v60;
  v61 = *(v3 + 217);
  v246 = *(v3 + 201);
  v247 = v61;
  v62 = *(v3 + 121);
  v240 = *(v3 + 105);
  v241 = v62;
  v63 = *(v3 + 153);
  v242 = *(v3 + 137);
  v243 = v63;
  v64 = *(v3 + 57);
  v236 = *(v3 + 41);
  v237 = v64;
  v65 = *(v3 + 89);
  v238 = *(v3 + 73);
  v239 = v65;
  v66 = *(v3 + 434);
  v259 = *(v3 + 418);
  v260[0] = v66;
  v67 = *(v3 + 370);
  v255 = *(v3 + 354);
  v256 = v67;
  v68 = *(v3 + 402);
  v257 = *(v3 + 386);
  v258 = v68;
  v69 = *(v3 + 306);
  v251 = *(v3 + 290);
  v252 = v69;
  v70 = *(v3 + 338);
  v253 = *(v3 + 322);
  v254 = v70;
  *(v260 + 14) = v3[28];
  v231[3] = &type metadata for AppleDisplayHIDDevice.PresetInterface.PresetDetailsReport;
  v231[4] = &off_2871C6EA8;
  v71 = swift_allocObject();
  v231[0] = v71;
  v72 = *(&v263[9] + 8);
  v71[9] = *(&v263[8] + 8);
  v71[10] = v72;
  v73 = *(&v263[11] + 8);
  v71[11] = *(&v263[10] + 8);
  v71[12] = v73;
  v74 = *(&v263[5] + 8);
  v71[5] = *(&v263[4] + 8);
  v71[6] = v74;
  v75 = *(&v263[7] + 8);
  v71[7] = *(&v263[6] + 8);
  v71[8] = v75;
  v76 = *(&v263[1] + 8);
  v71[1] = *(v263 + 8);
  v71[2] = v76;
  v77 = *(&v263[3] + 8);
  v71[3] = *(&v263[2] + 8);
  v71[4] = v77;
  v78 = sub_25F7B0CF4(v231);
  __swift_destroy_boxed_opaque_existential_0Tm(v231);
  v79 = *(v78 + 2);
  v80 = *(&v263[0] + 1);
  if (v79 != *(&v263[0] + 1))
  {

    *&v232 = 0;
    *(&v232 + 1) = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000014, 0x800000025F82E560);
    v265 = v79;
    v231[0] = v79;
    v97 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v97);

    MEMORY[0x25F8E7510](0xD00000000000001DLL, 0x800000025F82E580);
    v231[0] = v80;
    v98 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v98);

    v99 = v232;
    v100 = v226;
    sub_25F8221DC();

    v101 = sub_25F8221CC();
    v102 = sub_25F82268C();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *&v232 = v104;
      *v103 = 136315138;
      *(v103 + 4) = sub_25F75CA94(v99, *(&v99 + 1), &v232);
      _os_log_impl(&dword_25F74E000, v101, v102, "%s", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v104);
      MEMORY[0x25F8E88D0](v104, -1, -1);
      MEMORY[0x25F8E88D0](v103, -1, -1);
    }

    (*(v222 + 8))(v100, v229);

    sub_25F76E244();
    swift_allocError();
    v105 = v265;
    *v34 = v80;
    *(v34 + 8) = v105;
    v35 = 1;
    goto LABEL_9;
  }

  v265 = 0;
  v82 = v78 + 32;
  v81 = *(v78 + 32);
  v83 = BYTE1(v263[1]);
  if (BYTE1(v263[1]) != v81)
  {

    sub_25F76E244();
    swift_allocError();
    *v34 = v83 | (v81 << 8);
    *(v34 + 8) = 0;
    v35 = 2;
LABEL_9:
    *(v34 + 16) = v35;
    swift_willThrow();
    return;
  }

  if (!v82[*(&v263[2] + 1)])
  {

    v106 = type metadata accessor for Preset(0);
    (*(*(v106 - 8) + 56))(v220, 1, 1, v106);
    return;
  }

  v84 = *(&v263[3] + 1) + *&v263[4];
  if (__OFADD__(*(&v263[3] + 1), *&v263[4]))
  {
    __break(1u);
    goto LABEL_88;
  }

  v85 = v222;
  if (v84 < *(&v263[3] + 1))
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (v79 < *(&v263[3] + 1))
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if ((*(&v263[3] + 1) & 0x8000000000000000) != 0)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v215 = v82[*(&v263[1] + 1)];
  if (v79 < v84)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  *&v232 = v78;
  *(&v232 + 1) = v78 + 32;
  *&v233 = *(&v263[3] + 1);
  *(&v233 + 1) = (2 * v84) | 1;
  v216 = *(&v233 + 1);
  v86 = sub_25F8223DC();
  v227 = v78 + 32;
  MEMORY[0x28223BE20](v86 - 8);
  v226 = v87;

  sub_25F8223BC();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0458);
  v89 = sub_25F76100C(&qword_27FDB0460, &qword_27FDB0458);
  v218 = v88;
  v90 = sub_25F82239C();
  if (v91)
  {
    v225 = v89;
    v92 = HIBYTE(v91) & 0xF;
    if ((v91 & 0x2000000000000000) == 0)
    {
      v92 = v90 & 0xFFFFFFFFFFFFLL;
    }

    if (v92)
    {
      v93 = 4 * v92;
      while (1)
      {
        if (!sub_25F8224BC() && v94 == 0xE100000000000000)
        {

          goto LABEL_41;
        }

        v95 = sub_25F822CBC();

        if (v95)
        {
          break;
        }

        v96 = sub_25F82244C();
        v85 = v222;
        if (v93 == v96 >> 14)
        {
          goto LABEL_41;
        }
      }

      v85 = v222;
    }

LABEL_41:
    v115 = *(&v263[4] + 1);
    v116 = *&v263[5];
    v117 = sub_25F8224DC();
    v119 = v118;
    v121 = v120;
    v222 = v122;

    v124 = v115 + v116;
    if (!__OFADD__(v115, v116))
    {
      if (v124 >= v115)
      {
        if ((v115 & 0x8000000000000000) == 0)
        {
          v213 = v121;
          v214 = v119;
          v216 = v117;
          v125 = *(v78 + 2);
          if (v125 >= v115 && v125 >= v124)
          {
            *&v232 = v78;
            *(&v232 + 1) = v227;
            *&v233 = v115;
            *(&v233 + 1) = (2 * v124) | 1;
            MEMORY[0x28223BE20](v123);

            sub_25F8223BC();
            v126 = sub_25F82239C();
            v217 = v78;
            if (v127)
            {
              v128 = HIBYTE(v127) & 0xF;
              if ((v127 & 0x2000000000000000) == 0)
              {
                v128 = v126 & 0xFFFFFFFFFFFFLL;
              }

              if (v128)
              {
                v129 = 4 * v128;
                while (sub_25F8224BC() || v130 != 0xE100000000000000)
                {
                  v131 = sub_25F822CBC();

                  if ((v131 & 1) != 0 || v129 == sub_25F82244C() >> 14)
                  {
                    goto LABEL_61;
                  }
                }
              }

LABEL_61:
              v140 = *(&v263[11] + 1);
              v141 = *&v263[12];
              v142 = sub_25F8224DC();
              v144 = v143;
              v146 = v145;
              v148 = v147;

              if (v141 == 16)
              {
                v149 = sub_25F82217C();
                v150 = MEMORY[0x28223BE20](v149);
                v154 = v140 + 16;
                if (!__OFADD__(v140, 16))
                {
                  if (v154 >= v140)
                  {
                    if ((v140 & 0x8000000000000000) == 0)
                    {
                      v209 = v153;
                      v210 = v146;
                      v211 = v144;
                      v212 = v142;
                      v218 = v148;
                      v229 = &v202 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
                      v224 = v152;
                      v225 = v151;
                      v226 = v150;
                      v155 = *(v217 + 2);
                      if (v155 >= v140 && v155 >= v154)
                      {

                        sub_25F82214C();

                        if (BYTE2(v263[1]))
                        {

                          v230[0] = *(&v263[1] + 8);
                          v230[1] = *(&v263[2] + 8);
                          v230[2] = *(&v263[3] + 8);
                          v230[3] = *(&v263[4] + 8);
                          v230[4] = *(&v263[5] + 8);
                          v230[5] = *(&v263[6] + 8);
                          v230[6] = *(&v263[7] + 8);
                          v230[7] = *(&v263[8] + 8);
                          v230[8] = *(&v263[9] + 8);
                          v230[9] = *(&v263[10] + 8);
                          v230[10] = *(&v263[11] + 8);
                          v157 = v219;
                          v158 = v265;
                          sub_25F7B53DC(v156, v230, v219);
                          if (v158)
                          {
                            v224[1](v229, v226);
                            swift_bridgeObjectRelease_n();
                            return;
                          }

                          v224[1](v229, v226);
                          swift_bridgeObjectRelease_n();
LABEL_86:
                          sub_25F760FA4(v157, v220, &qword_27FDAFBE0);
                          return;
                        }

                        v163 = *(&v263[6] + 1);
                        v164 = *(&v263[6] + 1) + *&v263[7];
                        if (!__OFADD__(*(&v263[6] + 1), *&v263[7]))
                        {
                          v165 = v227;
                          if (v164 >= *(&v263[6] + 1))
                          {
                            if ((*(&v263[6] + 1) & 0x8000000000000000) == 0)
                            {
                              v166 = *(v156 + 16);
                              if (v166 >= *(&v263[6] + 1) && v166 >= v164)
                              {
                                v167 = (2 * v164) | 1;

                                sub_25F7AEB30(v168, v165, v163, v167);
                                v171 = *(&v263[8] + 1) + *&v263[9];
                                if (!__OFADD__(*(&v263[8] + 1), *&v263[9]))
                                {
                                  if (v171 >= *(&v263[8] + 1))
                                  {
                                    if ((*(&v263[8] + 1) & 0x8000000000000000) == 0)
                                    {
                                      v208 = v169;
                                      v172 = *(v156 + 16);
                                      if (v172 >= *(&v263[8] + 1) && v172 >= v171)
                                      {
                                        v173 = v170;
                                        sub_25F7AEB30(v156, v165, *(&v263[8] + 1), (2 * v171) | 1);
                                        v227 = v174;
                                        v206 = &v202;
                                        v207 = v175;
                                        MEMORY[0x28223BE20](v175);
                                        v177 = &v202 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
                                        v178 = v224;
                                        v179 = v224[2];
                                        v180 = v226;
                                        (v179)(v177, v229, v226);
                                        v204 = v215 != 0;
                                        LODWORD(v209) = v261;
                                        v181 = v221;
                                        v182 = v223;
                                        v205 = &v223[v221[11]];
                                        (v179)(v223, v177, v180);
                                        *&v232 = v216;
                                        *(&v232 + 1) = v214;
                                        *&v233 = v213;
                                        *(&v233 + 1) = v222;

                                        v183 = v218;

                                        v203 = v173;
                                        sub_25F76E658(v208, v173);
                                        sub_25F76E658(v207, v227);
                                        sub_25F7BE63C();
                                        v184 = sub_25F8224CC();
                                        v185 = (v182 + v181[5]);
                                        *v185 = v184;
                                        v185[1] = v186;
                                        *&v232 = v212;
                                        *(&v232 + 1) = v211;
                                        *&v233 = v210;
                                        *(&v233 + 1) = v183;
                                        v187 = sub_25F8224CC();
                                        v189 = v188;

                                        v190 = v177;
                                        v191 = v208;
                                        v192 = v226;
                                        v224 = v178[1];
                                        (v224)(v190, v226);
                                        v193 = (v182 + v181[6]);
                                        *v193 = v187;
                                        v193[1] = v189;
                                        *(v182 + v181[7]) = 1;
                                        *(v182 + v181[8]) = v204;
                                        v194 = (v182 + v181[9]);
                                        v195 = v203;
                                        *v194 = v191;
                                        v194[1] = v195;
                                        v196 = v181[10];
                                        v197 = v227;
                                        v198 = (v182 + v196);
                                        v199 = v207;
                                        *v198 = v207;
                                        v198[1] = v197;
                                        v200 = v205;
                                        *v205 = v228;
                                        v200[8] = v209;
                                        v157 = v219;
                                        v201 = v265;
                                        sub_25F776128(v182, v219);
                                        if (v201)
                                        {
                                          sub_25F76D178(v191, v195);
                                          sub_25F76D178(v199, v197);
                                          swift_bridgeObjectRelease_n();
                                          (v224)(v229, v192);
                                          return;
                                        }

                                        sub_25F76D178(v191, v195);
                                        sub_25F76D178(v199, v197);
                                        swift_bridgeObjectRelease_n();
                                        (v224)(v229, v192);
                                        goto LABEL_86;
                                      }

LABEL_107:
                                      __break(1u);
                                      return;
                                    }

LABEL_106:
                                    __break(1u);
                                    goto LABEL_107;
                                  }

LABEL_105:
                                  __break(1u);
                                  goto LABEL_106;
                                }

LABEL_104:
                                __break(1u);
                                goto LABEL_105;
                              }

LABEL_103:
                              __break(1u);
                              goto LABEL_104;
                            }

LABEL_102:
                            __break(1u);
                            goto LABEL_103;
                          }

LABEL_101:
                          __break(1u);
                          goto LABEL_102;
                        }

LABEL_100:
                        __break(1u);
                        goto LABEL_101;
                      }

LABEL_99:
                      __break(1u);
                      goto LABEL_100;
                    }

LABEL_98:
                    __break(1u);
                    goto LABEL_99;
                  }

LABEL_97:
                  __break(1u);
                  goto LABEL_98;
                }

LABEL_96:
                __break(1u);
                goto LABEL_97;
              }

              *&v232 = 0;
              *(&v232 + 1) = 0xE000000000000000;
              sub_25F82292C();
              MEMORY[0x25F8E7510](0x6569662064697575, 0xEB0000000020646CLL);
              v231[0] = v141;
              v159 = sub_25F822C7C();
              MEMORY[0x25F8E7510](v159);

              MEMORY[0x25F8E7510](0xD000000000000025, 0x800000025F82E660);
              v231[0] = 16;
              v160 = sub_25F822C7C();
              MEMORY[0x25F8E7510](v160);

              v161 = v232;
              sub_25F76E244();
              swift_allocError();
              *v162 = v161;
              *(v162 + 16) = 4;
              swift_willThrow();
            }

            else
            {

              *&v232 = 0;
              *(&v232 + 1) = 0xE000000000000000;
              sub_25F82292C();

              *&v232 = 0xD00000000000002ALL;
              *(&v232 + 1) = 0x800000025F82E600;
              v132 = sub_25F82286C();
              MEMORY[0x25F8E7510](v132);

              v133 = v232;
              v134 = v224;
              sub_25F8221DC();

              v135 = sub_25F8221CC();
              v136 = sub_25F82268C();

              if (os_log_type_enabled(v135, v136))
              {
                v137 = swift_slowAlloc();
                v138 = swift_slowAlloc();
                *&v232 = v138;
                *v137 = 136315138;
                *(v137 + 4) = sub_25F75CA94(v133, *(&v133 + 1), &v232);
                _os_log_impl(&dword_25F74E000, v135, v136, "%s", v137, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v138);
                MEMORY[0x25F8E88D0](v138, -1, -1);
                MEMORY[0x25F8E88D0](v137, -1, -1);
              }

              (*(v85 + 8))(v134, v229);

              sub_25F76E244();
              swift_allocError();
              *v139 = 0xD000000000000028;
              *(v139 + 8) = 0x800000025F82E630;
              *(v139 + 16) = 4;
              swift_willThrow();
            }

            swift_bridgeObjectRelease_n();
            return;
          }

LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  *&v232 = 0;
  *(&v232 + 1) = 0xE000000000000000;
  sub_25F82292C();

  *&v232 = 0xD000000000000023;
  *(&v232 + 1) = 0x800000025F82E5A0;
  v107 = sub_25F82286C();
  MEMORY[0x25F8E7510](v107);

  v108 = v232;
  v109 = v225;
  sub_25F8221DC();

  v110 = sub_25F8221CC();
  v111 = sub_25F82268C();

  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    *&v232 = v113;
    *v112 = 136315138;
    *(v112 + 4) = sub_25F75CA94(v108, *(&v108 + 1), &v232);
    _os_log_impl(&dword_25F74E000, v110, v111, "%s", v112, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v113);
    MEMORY[0x25F8E88D0](v113, -1, -1);
    MEMORY[0x25F8E88D0](v112, -1, -1);
  }

  (*(v222 + 8))(v109, v229);

  sub_25F76E244();
  swift_allocError();
  *v114 = 0xD000000000000021;
  *(v114 + 8) = 0x800000025F82E5D0;
  *(v114 + 16) = 4;
  swift_willThrow();
}

Swift::tuple_defaultIdx_UInt32_activeIdx_UInt32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleDisplayHIDDevice.getActivePreset()()
{
  v2 = sub_25F8221EC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v50 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v50 - v10;
  v12 = *(v0 + 256);
  v58[12] = *(v0 + 240);
  v58[13] = v12;
  v58[14] = *(v0 + 272);
  v59 = *(v0 + 288);
  v13 = *(v0 + 192);
  v58[8] = *(v0 + 176);
  v58[9] = v13;
  v14 = *(v0 + 224);
  v58[10] = *(v0 + 208);
  v58[11] = v14;
  v15 = *(v0 + 128);
  v58[4] = *(v0 + 112);
  v58[5] = v15;
  v16 = *(v0 + 160);
  v58[6] = *(v0 + 144);
  v58[7] = v16;
  v17 = *(v0 + 64);
  v58[0] = *(v0 + 48);
  v58[1] = v17;
  v18 = *(v0 + 96);
  v58[2] = *(v0 + 80);
  v58[3] = v18;
  if (sub_25F76E230(v58) == 1)
  {
    sub_25F8221DC();
    v19 = sub_25F8221CC();
    LODWORD(v9) = sub_25F82268C();
    if (os_log_type_enabled(v19, v9))
    {
      v60 = v2;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v57[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_25F75CA94(0xD000000000000041, 0x800000025F82E690, v57);
      _os_log_impl(&dword_25F74E000, v19, v9, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x25F8E88D0](v21, -1, -1);
      MEMORY[0x25F8E88D0](v20, -1, -1);

      (*(v3 + 8))(v6, v60);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    sub_25F76E244();
    swift_allocError();
    *v34 = 0;
    *(v34 + 8) = 0;
    v35 = 5;
LABEL_12:
    *(v34 + 16) = v35;
    swift_willThrow();
    goto LABEL_13;
  }

  v60 = v2;
  v22 = *&v58[0];
  v23 = BYTE9(v58[0]);
  memcpy(v57, v0, sizeof(v57));
  v55 = &type metadata for AppleDisplayHIDDevice.PresetInterface.ActivePresetReport;
  v56 = &off_2871C6E80;
  v53 = *&v58[0];
  v54 = WORD4(v58[0]);
  v24 = sub_25F7B0CF4(&v53);
  __swift_destroy_boxed_opaque_existential_0Tm(&v53);
  if (!v1)
  {
    v26 = *(v24 + 2);
    if (v26 != v22)
    {

      v51 = &xmmword_25F825AA0;
      v52 = "";
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      sub_25F82292C();
      MEMORY[0x25F8E7510](0xD000000000000013, 0x800000025F82E6E0);
      v53 = v26;
      v37 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v37);

      MEMORY[0x25F8E7510](0xD00000000000001DLL, 0x800000025F82E580);
      v53 = v22;
      v38 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v38);

      v40 = v57[0];
      v39 = v57[1];
      sub_25F8221DC();

      v41 = sub_25F8221CC();
      v42 = sub_25F82268C();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v52 = v26;
        v44 = v39;
        v45 = v43;
        v46 = swift_slowAlloc();
        v47 = v40;
        v48 = v46;
        v57[0] = v46;
        *v45 = 136315138;
        *(v45 + 4) = sub_25F75CA94(v47, v44, v57);
        _os_log_impl(&dword_25F74E000, v41, v42, "%s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v48);
        MEMORY[0x25F8E88D0](v48, -1, -1);
        MEMORY[0x25F8E88D0](v45, -1, -1);

        (*(v3 + 8))(v9, v60);
        v26 = v52;
      }

      else
      {

        (*(v3 + 8))(v9, v60);
      }

      sub_25F76E244();
      swift_allocError();
      *v34 = v22;
      *(v34 + 8) = v26;
      v35 = 1;
      goto LABEL_12;
    }

    v27 = *(v24 + 32);
    v9 = *(v24 + 33);

    if (v27 != v23)
    {
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      sub_25F82292C();
      MEMORY[0x25F8E7510](0x6465746365707865, 0xEC00000020646920);
      LOBYTE(v53) = v23;
      sub_25F8229FC();
      MEMORY[0x25F8E7510](0xD000000000000015, 0x800000025F82E700);
      v52 = v27;
      LOBYTE(v53) = v27;
      v28 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v28);

      MEMORY[0x25F8E7510](0x64616574736E6920, 0xE800000000000000);
      v51 = v57[0];
      v29 = v57[1];
      sub_25F8221DC();

      v30 = sub_25F8221CC();
      LODWORD(v9) = sub_25F82268C();

      if (os_log_type_enabled(v30, v9))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v57[0] = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_25F75CA94(v51, v29, v57);
        _os_log_impl(&dword_25F74E000, v30, v9, "%s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        MEMORY[0x25F8E88D0](v32, -1, -1);
        MEMORY[0x25F8E88D0](v31, -1, -1);
      }

      (*(v3 + 8))(v11, v60);

      v33 = v23 | (v52 << 8);
      sub_25F76E244();
      swift_allocError();
      *v34 = v33;
      *(v34 + 8) = 0;
      v35 = 2;
      goto LABEL_12;
    }
  }

LABEL_13:
  v36 = v9;
  result.activeIdx = v25;
  result.defaultIdx = v36;
  return result;
}

uint64_t AppleDisplayHIDDevice.getUserAdjustment()@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v113 = sub_25F8221EC();
  v3 = *(v113 - 1);
  v4 = MEMORY[0x28223BE20](v113);
  v6 = v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v91 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v91 - v11;
  MEMORY[0x28223BE20](v10);
  v97 = (v91 - v13);
  v14 = type metadata accessor for UserAdjustment();
  v98 = *(v14 - 8);
  v99 = v14;
  MEMORY[0x28223BE20](v14);
  v96 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PCDSUserAdjustmentInfo();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 408);
  v109 = *(v1 + 392);
  v110 = v19;
  v20 = *(v1 + 440);
  v111 = *(v1 + 424);
  v112 = v20;
  v21 = *(v1 + 344);
  v105 = *(v1 + 328);
  v106 = v21;
  v22 = *(v1 + 376);
  v107 = *(v1 + 360);
  v108 = v22;
  v23 = *(v1 + 312);
  v103 = *(v1 + 296);
  v104 = v23;
  if (sub_25F7BE5B8(&v103) == 1)
  {
    v24 = v3;
    v102[0] = 0;
    v102[1] = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000013, 0x800000025F82E720);
    MEMORY[0x25F8E7510](0xD000000000000039, 0x800000025F82E740);
    v26 = v102[0];
    v25 = v102[1];
    sub_25F8221DC();

    v27 = sub_25F8221CC();
    v28 = sub_25F82268C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v102[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_25F75CA94(v26, v25, v102);
      _os_log_impl(&dword_25F74E000, v27, v28, "%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x25F8E88D0](v30, -1, -1);
      MEMORY[0x25F8E88D0](v29, -1, -1);
    }

    (*(v24 + 8))(v6, v113);

    sub_25F76E244();
    swift_allocError();
    *v31 = 0;
    *(v31 + 8) = 0;
    v32 = 5;
    goto LABEL_28;
  }

  v33 = WORD4(v103);
  if (BYTE8(v103) == 3)
  {
    v102[0] = 0;
    v102[1] = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000013, 0x800000025F82E720);
    MEMORY[0x25F8E7510](0xD00000000000003FLL, 0x800000025F82E780);
    v35 = v102[0];
    v34 = v102[1];
    sub_25F8221DC();

    v36 = sub_25F8221CC();
    v37 = sub_25F82268C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = v3;
      v40 = swift_slowAlloc();
      v102[0] = v40;
      *v38 = 136315138;
      *(v38 + 4) = sub_25F75CA94(v35, v34, v102);
      _os_log_impl(&dword_25F74E000, v36, v37, "%s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x25F8E88D0](v40, -1, -1);
      MEMORY[0x25F8E88D0](v38, -1, -1);

      (*(v39 + 8))(v9, v113);
    }

    else
    {

      (*(v3 + 8))(v9, v113);
    }

    sub_25F76E244();
    swift_allocError();
    *v31 = 0xD000000000000026;
    *(v31 + 8) = 0x800000025F82E7C0;
    v32 = 4;
    goto LABEL_28;
  }

  v94 = v18;
  v95 = v3;
  v41 = v103;
  v42 = v104;
  memcpy(v102, v1, sizeof(v102));
  v101[3] = &type metadata for AppleDisplayHIDDevice.UserAdjustmentInterface.GlobalUserAdjustmentReport;
  v101[4] = &off_2871C6E58;
  v43 = swift_allocObject();
  v101[0] = v43;
  *(v43 + 16) = v41;
  *(v43 + 24) = v33;
  *(v43 + 32) = v42;
  v44 = sub_25F7B0CF4(v101);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v101);
  if (v2)
  {
    return result;
  }

  v46 = v41;
  if (*(v44 + 2) != v41)
  {
    v55 = *(v44 + 2);

    v102[0] = 0;
    v102[1] = 0xE000000000000000;
    sub_25F82292C();

    v102[0] = 0x726F706572206175;
    v102[1] = 0xEF20657A69732074;
    v99 = v55;
    v101[0] = v55;
    v56 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v56);

    MEMORY[0x25F8E7510](0xD00000000000001DLL, 0x800000025F82E580);
    v100 = v41;
    v101[0] = v41;
    v57 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v57);

    v59 = v102[0];
    v58 = v102[1];
    sub_25F8221DC();

    v60 = sub_25F8221CC();
    v61 = sub_25F82268C();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v102[0] = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_25F75CA94(v59, v58, v102);
      _os_log_impl(&dword_25F74E000, v60, v61, "%s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      MEMORY[0x25F8E88D0](v63, -1, -1);
      MEMORY[0x25F8E88D0](v62, -1, -1);
    }

    (*(v95 + 8))(v12, v113);

    sub_25F76E244();
    swift_allocError();
    v64 = v99;
    *v31 = v100;
    *(v31 + 8) = v64;
    v32 = 1;
    goto LABEL_28;
  }

  v47 = *(v44 + 32);
  if (v47 != HIBYTE(v33))
  {

    sub_25F76E244();
    swift_allocError();
    *v31 = HIBYTE(v33) | (v47 << 8);
    *(v31 + 8) = 0;
    v32 = 2;
LABEL_28:
    *(v31 + 16) = v32;
    return swift_willThrow();
  }

  if (!*(v44 + 33))
  {

    return (*(v98 + 56))(v100, 1, 1, v99);
  }

  v48 = v42 + 2;
  if (__OFADD__(v42, 2))
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v48 < 2)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v41 < 2)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v41 < v48)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    return result;
  }

  v92 = v42 + 2;
  v93 = v44 + 32;
  v102[0] = v44;
  v102[1] = v44 + 32;
  v102[2] = 2;
  v102[3] = (2 * v48) | 1;
  v91[1] = v102[3];
  v49 = sub_25F8223DC();
  MEMORY[0x28223BE20](v49 - 8);

  sub_25F8223BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0458);
  sub_25F76100C(&qword_27FDB0460, &qword_27FDB0458);
  v50 = sub_25F82239C();
  if (v51)
  {
    v97 = v44;
    v52 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v52 = v50 & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {
      v113 = (4 * v52);
      while (sub_25F8224BC() || v53 != 0xE100000000000000)
      {
        v54 = sub_25F822CBC();

        if ((v54 & 1) != 0 || v113 == (sub_25F82244C() >> 14))
        {
          goto LABEL_40;
        }
      }
    }

LABEL_40:
    v74 = sub_25F8224DC();
    v76 = v75;
    v78 = v77;
    v80 = v79;

    if (*(v97 + 2) >= v46)
    {
      sub_25F7AEB30(v97, v93, v92, (2 * v46) | 1);
      sub_25F7F0BA8(v81, v82, v94);
      v83 = v94;
      v113 = type metadata accessor for UserAdjustment;
      v84 = v96;
      sub_25F7BF9E4(v94, v96, type metadata accessor for UserAdjustment);
      v85 = MEMORY[0x25F8E74C0](v74, v76, v78, v80);
      v87 = v86;

      sub_25F7BEDDC(v83, type metadata accessor for PCDSUserAdjustmentInfo);
      v88 = v99;
      v89 = (v84 + *(v99 + 24));

      *v89 = v85;
      v89[1] = v87;
      v90 = v100;
      sub_25F7BF9E4(v84, v100, v113);
      (*(v98 + 56))(v90, 0, 1, v88);
      return sub_25F7BEDDC(v84, type metadata accessor for UserAdjustment);
    }

    goto LABEL_46;
  }

  v102[0] = 0;
  v102[1] = 0xE000000000000000;
  sub_25F82292C();

  v102[0] = 0xD000000000000026;
  v102[1] = 0x800000025F82E7F0;
  v65 = sub_25F82286C();
  MEMORY[0x25F8E7510](v65);

  v67 = v102[0];
  v66 = v102[1];
  v68 = v97;
  sub_25F8221DC();

  v69 = sub_25F8221CC();
  v70 = sub_25F82268C();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v102[0] = v72;
    *v71 = 136315138;
    *(v71 + 4) = sub_25F75CA94(v67, v66, v102);
    _os_log_impl(&dword_25F74E000, v69, v70, "%s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    MEMORY[0x25F8E88D0](v72, -1, -1);
    MEMORY[0x25F8E88D0](v71, -1, -1);
  }

  (*(v95 + 8))(v68, v113);

  sub_25F76E244();
  swift_allocError();
  *v73 = 0xD000000000000023;
  *(v73 + 8) = 0x800000025F82E820;
  *(v73 + 16) = 4;
  swift_willThrow();
}

uint64_t AppleDisplayHIDDevice.getUserAdjustment(at:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v73 = a2;
  v87 = sub_25F8221EC();
  v74 = *(v87 - 8);
  v6 = MEMORY[0x28223BE20](v87);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v66 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v66 - v12;
  v14 = type metadata accessor for UserAdjustment();
  v71 = *(v14 - 8);
  v72 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v4 + 408);
  v83 = *(v4 + 392);
  v84 = v17;
  v18 = *(v4 + 440);
  v85 = *(v4 + 424);
  v86 = v18;
  v19 = *(v4 + 344);
  v79 = *(v4 + 328);
  v80 = v19;
  v20 = *(v4 + 376);
  v81 = *(v4 + 360);
  v82 = v20;
  v21 = *(v4 + 312);
  v78[0] = *(v4 + 296);
  v78[1] = v21;
  if (sub_25F7BE5B8(v78) == 1)
  {
    v76[0] = 0;
    v76[1] = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000016, 0x800000025F82E850);
    MEMORY[0x25F8E7510](0xD000000000000039, 0x800000025F82E740);
    v23 = v76[0];
    v22 = v76[1];
    sub_25F8221DC();

    v24 = sub_25F8221CC();
    v25 = sub_25F82268C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v76[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_25F75CA94(v23, v22, v76);
      _os_log_impl(&dword_25F74E000, v24, v25, "%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x25F8E88D0](v27, -1, -1);
      MEMORY[0x25F8E88D0](v26, -1, -1);
    }

    (*(v74 + 8))(v8, v87);

    sub_25F76E244();
    swift_allocError();
    *v28 = 0;
    *(v28 + 8) = 0;
    v29 = 5;
    goto LABEL_9;
  }

  v30 = *(&v79 + 1);
  v77 = v80;
  if (BYTE8(v79) == 3)
  {
    v76[0] = 0;
    v76[1] = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000016, 0x800000025F82E850);
    MEMORY[0x25F8E7510](0xD000000000000043, 0x800000025F82E870);
    v32 = v76[0];
    v31 = v76[1];
    sub_25F8221DC();

    v33 = sub_25F8221CC();
    v34 = sub_25F82268C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v76[0] = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_25F75CA94(v32, v31, v76);
      _os_log_impl(&dword_25F74E000, v33, v34, "%s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x25F8E88D0](v36, -1, -1);
      MEMORY[0x25F8E88D0](v35, -1, -1);
    }

    (*(v74 + 8))(v11, v87);

    sub_25F76E244();
    swift_allocError();
    *v28 = 0xD00000000000002ALL;
    *(v28 + 8) = 0x800000025F82E8C0;
    v29 = 4;
    goto LABEL_9;
  }

  v67 = v13;
  v70 = v79;
  v68 = v81;
  v69 = v82;
  memcpy(v76, v4, sizeof(v76));
  result = sub_25F7B50AC(a1);
  if (!v3)
  {
    memcpy(v76, v4, sizeof(v76));
    v75[3] = &type metadata for AppleDisplayHIDDevice.UserAdjustmentInterface.PerPresetUserAdjustmentReport;
    v75[4] = &off_2871C6E30;
    v38 = swift_allocObject();
    v75[0] = v38;
    v39 = v70;
    *(v38 + 16) = v70;
    *(v38 + 24) = v30 & 0xFFFFFFFFFFFF00FFLL | (BYTE1(v30) << 8);
    v40 = v69;
    *(v38 + 32) = v77;
    *(v38 + 48) = v68;
    *(v38 + 64) = v40;
    v41 = sub_25F7B0CF4(v75);
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    result = v41;
    v42 = *(v41 + 2);
    if (v42 != v39)
    {

      v76[0] = 0;
      v76[1] = 0xE000000000000000;
      sub_25F82292C();
      MEMORY[0x25F8E7510](0xD00000000000001BLL, 0x800000025F82E8F0);
      v73 = v42;
      v75[0] = v42;
      v54 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v54);

      MEMORY[0x25F8E7510](0xD00000000000001DLL, 0x800000025F82E580);
      v75[0] = v39;
      v55 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v55);

      v57 = v76[0];
      v56 = v76[1];
      v58 = v67;
      sub_25F8221DC();

      v59 = sub_25F8221CC();
      v60 = sub_25F82268C();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v76[0] = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_25F75CA94(v57, v56, v76);
        _os_log_impl(&dword_25F74E000, v59, v60, "%s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v62);
        MEMORY[0x25F8E88D0](v62, -1, -1);
        MEMORY[0x25F8E88D0](v61, -1, -1);
      }

      (*(v74 + 8))(v58, v87);

      sub_25F76E244();
      swift_allocError();
      v63 = v73;
      *v28 = v70;
      *(v28 + 8) = v63;
      v29 = 1;
      goto LABEL_9;
    }

    v43 = v41 + 32;
    v44 = *(v41 + 32);
    if (v44 != BYTE1(v30))
    {

      sub_25F76E244();
      swift_allocError();
      *v28 = BYTE1(v30) | (v44 << 8);
      *(v28 + 8) = 0;
      v29 = 2;
LABEL_9:
      *(v28 + 16) = v29;
      return swift_willThrow();
    }

    if (!*(result + 33))
    {

      v65 = 1;
      v64 = v73;
      return (*(v71 + 56))(v64, v65, 1, v72);
    }

    v45 = v69 + *(&v69 + 1);
    if (__OFADD__(v69, *(&v69 + 1)))
    {
      __break(1u);
    }

    else if (v45 >= v69)
    {
      if (v39 >= v69)
      {
        if ((v69 & 0x8000000000000000) == 0)
        {
          if (v39 >= v45)
          {
            v46 = *&v43[v68];
            sub_25F7AEB30(result, v43, v69, (2 * v45) | 1);
            v48 = v47;
            v50 = v49;
            v51 = sub_25F7B55F4((v46 << 16), v47, v49);
            v53 = v52;
            sub_25F821EBC();
            swift_allocObject();
            sub_25F821EAC();
            sub_25F7AEFD4(v16);
            sub_25F76D178(v48, v50);

            sub_25F76D178(v51, v53);
            v64 = v73;
            sub_25F7BFB08(v16, v73, type metadata accessor for UserAdjustment);
            v65 = 0;
            return (*(v71 + 56))(v64, v65, 1, v72);
          }

LABEL_31:
          __break(1u);
          return result;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_29;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleDisplayHIDDevice.setActivePreset(index:)(Swift::UInt32 index)
{
  v3 = sub_25F8221EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 256);
  v30[12] = *(v1 + 240);
  v30[13] = v7;
  v30[14] = *(v1 + 272);
  v31 = *(v1 + 288);
  v8 = *(v1 + 192);
  v30[8] = *(v1 + 176);
  v30[9] = v8;
  v9 = *(v1 + 224);
  v30[10] = *(v1 + 208);
  v30[11] = v9;
  v10 = *(v1 + 128);
  v30[4] = *(v1 + 112);
  v30[5] = v10;
  v11 = *(v1 + 160);
  v30[6] = *(v1 + 144);
  v30[7] = v11;
  v12 = *(v1 + 64);
  v30[0] = *(v1 + 48);
  v30[1] = v12;
  v13 = *(v1 + 96);
  v30[2] = *(v1 + 80);
  v30[3] = v13;
  if (sub_25F76E230(v30) == 1)
  {
    sub_25F8221DC();
    v14 = sub_25F8221CC();
    v15 = sub_25F82268C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_25F75CA94(0xD000000000000047, 0x800000025F82E910, v29);
      _os_log_impl(&dword_25F74E000, v14, v15, "%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x25F8E88D0](v17, -1, -1);
      MEMORY[0x25F8E88D0](v16, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    sub_25F76E244();
    swift_allocError();
    *v18 = 0;
    *(v18 + 8) = 0;
    *(v18 + 16) = 5;
    swift_willThrow();
  }

  else
  {
    v19 = *&v30[0];
    if ((*&v30[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v20 = BYTE8(v30[0]);
      v21 = BYTE9(v30[0]);
      if (*&v30[0])
      {
        v22 = sub_25F82253C();
        *(v22 + 16) = v19;
        bzero((v22 + 32), v19);
      }

      else
      {
        v22 = MEMORY[0x277D84F90];
      }

      *(v22 + 32) = v21;
      *(v22 + 37) = index;
      memcpy(v29, v1, sizeof(v29));
      v27 = &type metadata for AppleDisplayHIDDevice.PresetInterface.ActivePresetReport;
      v28 = &off_2871C6E80;
      v24 = v19;
      v25 = v20;
      v26 = v21;
      sub_25F7B0528(&v24, v22);

      __swift_destroy_boxed_opaque_existential_0Tm(&v24);
    }
  }
}

uint64_t AppleDisplayHIDDevice.setPreset(_:at:)(uint64_t a1, unsigned int a2)
{
  v255 = a1;
  v322 = sub_25F8221EC();
  v259 = *(v322 - 8);
  v4 = MEMORY[0x28223BE20](v322);
  v6 = v232 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v257 = v232 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  MEMORY[0x28223BE20](v8 - 8);
  v250 = (v232 - v9);
  v253 = type metadata accessor for Preset.Info(0);
  MEMORY[0x28223BE20](v253);
  v249 = v232 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = type metadata accessor for HIDPresetData();
  MEMORY[0x28223BE20](v246);
  v248 = v232 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v232 - v13;
  v15 = type metadata accessor for Preset(0);
  v254 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v251 = (v232 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v247 = v232 - v19;
  MEMORY[0x28223BE20](v18);
  v258 = v232 - v20;
  v21 = v2[1];
  v317 = *v2;
  v318 = v21;
  v252 = *(v2 + 4);
  v316 = *(v2 + 40);
  v22 = *(v2 + 249);
  v313 = *(v2 + 233);
  v314 = v22;
  v315[0] = *(v2 + 265);
  *(v315 + 9) = *(v2 + 274);
  v23 = *(v2 + 185);
  v309 = *(v2 + 169);
  v310 = v23;
  v24 = *(v2 + 217);
  v311 = *(v2 + 201);
  v312 = v24;
  v25 = *(v2 + 121);
  v305 = *(v2 + 105);
  v306 = v25;
  v26 = *(v2 + 153);
  v307 = *(v2 + 137);
  v308 = v26;
  v27 = *(v2 + 57);
  v301 = *(v2 + 41);
  v302 = v27;
  v28 = *(v2 + 89);
  v303 = *(v2 + 73);
  v304 = v28;
  v29 = *(v2 + 418);
  v30 = *(v2 + 434);
  v31 = *(v2 + 386);
  v298 = *(v2 + 402);
  v299 = v29;
  v300[0] = v30;
  *(v300 + 14) = v2[28];
  v32 = *(v2 + 370);
  v295 = *(v2 + 354);
  v296 = v32;
  v297 = v31;
  v33 = *(v2 + 306);
  v291 = *(v2 + 290);
  v292 = v33;
  v34 = *(v2 + 338);
  v293 = *(v2 + 322);
  v294 = v34;
  v35 = v2[16];
  v36 = v2[17];
  v320[10] = v2[15];
  v320[11] = v35;
  v320[12] = v36;
  v321 = *(v2 + 144);
  v37 = v2[12];
  v320[6] = v2[11];
  v320[7] = v37;
  v38 = v2[14];
  v320[8] = v2[13];
  v320[9] = v38;
  v39 = v2[8];
  v320[2] = v2[7];
  v320[3] = v39;
  v40 = v2[10];
  v320[4] = v2[9];
  v320[5] = v40;
  v41 = v2[4];
  v319[0] = v2[3];
  v319[1] = v41;
  v42 = v2[6];
  v320[0] = v2[5];
  v320[1] = v42;
  if (sub_25F76E230(v319) == 1)
  {
    sub_25F8221DC();
    v43 = sub_25F8221CC();
    v44 = sub_25F82268C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v261 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_25F75CA94(0xD000000000000040, 0x800000025F82E960, &v261);
      _os_log_impl(&dword_25F74E000, v43, v44, "%s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x25F8E88D0](v46, -1, -1);
      MEMORY[0x25F8E88D0](v45, -1, -1);
    }

    (*(v259 + 8))(v6, v322);
    sub_25F76E244();
    swift_allocError();
    *v47 = 0;
    *(v47 + 8) = 0;
    v48 = 5;
LABEL_9:
    *(v47 + 16) = v48;
    return swift_willThrow();
  }

  v49 = *&v320[0];
  v50 = a2;
  if (*&v320[0] < a2)
  {
    *&v261 = 0;
    *(&v261 + 1) = 0xE000000000000000;
    sub_25F82292C();

    *&v261 = 0x207865646E69;
    *(&v261 + 1) = 0xE600000000000000;
    LODWORD(v260[0]) = a2;
    v51 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v51);

    MEMORY[0x25F8E7510](0x20666F2074756F20, 0xEE002065676E6172);
    v260[0] = v49;
    v52 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v52);

    v53 = v261;
    v54 = v257;
    sub_25F8221DC();

    v55 = sub_25F8221CC();
    v56 = sub_25F82268C();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v261 = v58;
      *v57 = 136315138;
      *(v57 + 4) = sub_25F75CA94(v53, *(&v53 + 1), &v261);
      _os_log_impl(&dword_25F74E000, v55, v56, "%s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      MEMORY[0x25F8E88D0](v58, -1, -1);
      MEMORY[0x25F8E88D0](v57, -1, -1);
    }

    (*(v259 + 8))(v54, v322);

    sub_25F76E244();
    swift_allocError();
    *v47 = v50;
    *(v47 + 8) = v49;
    v48 = 3;
    goto LABEL_9;
  }

  v233 = a2;
  sub_25F821E8C();
  swift_allocObject();
  v60 = sub_25F821E5C();
  *&v261 = 0x4000000000;
  *(&v261 + 1) = v60;
  v61 = v256;
  sub_25F7BDB2C(&v261, 255);
  v62 = *(&v261 + 1);
  v240 = v261;
  swift_allocObject();
  v63 = sub_25F821E5C();
  *&v261 = 0xC000000000;
  *(&v261 + 1) = v63;
  sub_25F7BDB2C(&v261, 255);
  v241 = v61;
  v256 = *(&v261 + 1);
  v238 = v261;
  v64 = sub_25F82217C();
  v242 = v232;
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v234 = v66;
  v67 = v232 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFF8);
  v243 = v232;
  MEMORY[0x28223BE20](v68 - 8);
  v70 = v232 - v69;
  sub_25F82211C();
  result = (*(v65 + 48))(v70, 1, v64);
  if (result == 1)
  {
    goto LABEL_183;
  }

  v232[1] = v62;
  v239 = v62 | 0x4000000000000000;
  v236 = *&v320[4];
  v237 = v256 | 0x4000000000000000;
  v244 = *(&v320[4] + 1);
  v245 = *(&v320[3] + 1);
  v235 = *&v320[5];
  v71 = *(v65 + 32);
  v257 = v67;
  v259 = v64;
  v71(v67, v70, v64);
  sub_25F76183C(v255, v14, &qword_27FDAFBE0);
  v72 = (*(v254 + 48))(v14, 1, v15);
  v322 = v65;
  if (v72 == 1)
  {
    sub_25F760F44(v14, &qword_27FDAFBE0);
    v73 = 0;
    v253 = 0;
    v255 = 0;
    v74 = 0;
    v246 = 192;
    v243 = 0xC000000000000000;
    v247 = 64;
    v248 = 0;
    v75 = 0xC000000000000000;
    v76 = 0xC000000000000000;
    v77 = *(&v320[0] + 1);
    if ((*(&v320[0] + 1) & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v78 = v258;
  sub_25F7BFB08(v14, v258, type metadata accessor for Preset);
  v79 = (v78 + *(v253 + 20));
  v80 = *v79;
  v81 = v79[1];
  v82 = sub_25F8223DC();
  v83 = *(v82 - 8);
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v82);
  sub_25F8223BC();
  v243 = v80;
  v255 = sub_25F82237C();
  v86 = v85;
  v87 = *(v83 + 8);
  v232[0] = v82;
  v88 = v82;
  v89 = v87;
  result = v87(v232 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0), v88);
  if (v86 >> 60 == 15)
  {
    *&v261 = 0;
    *(&v261 + 1) = 0xE000000000000000;
    sub_25F82292C();

    *&v261 = 0xD000000000000011;
    *(&v261 + 1) = 0x800000025F82E9E0;
    MEMORY[0x25F8E7510](v243, v81);
    MEMORY[0x25F8E7510](0xD000000000000019, 0x800000025F82EA00);
    v90 = v261;
    sub_25F76E244();
    swift_allocError();
    *v91 = v90;
    *(v91 + 16) = 4;
    swift_willThrow();
    sub_25F7BEDDC(v258, type metadata accessor for Preset);
    (*(v322 + 8))(v257, v259);
LABEL_81:
  }

  v92 = v86 >> 62;
  v93 = v259;
  v254 = v86;
  if ((v86 >> 62) <= 1)
  {
    v94 = v322;
    if (!v92)
    {
      v95 = BYTE6(v86);
      goto LABEL_79;
    }

LABEL_77:
    LODWORD(v95) = HIDWORD(v255) - v255;
    if (__OFSUB__(HIDWORD(v255), v255))
    {
      __break(1u);
      goto LABEL_179;
    }

    v95 = v95;
    goto LABEL_79;
  }

  v94 = v322;
  if (v92 != 2)
  {
    v175 = v236;
    if (v236 < 0)
    {
      goto LABEL_80;
    }

    goto LABEL_83;
  }

  v173 = *(v255 + 16);
  v172 = *(v255 + 24);
  v174 = __OFSUB__(v172, v173);
  v95 = v172 - v173;
  if (v174)
  {
    __break(1u);
    goto LABEL_77;
  }

LABEL_79:
  v175 = v236;
  if (v236 < v95)
  {
LABEL_80:
    *&v261 = 0;
    *(&v261 + 1) = 0xE000000000000000;
    v176 = v93;
    v177 = v94;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0x2820656D616ELL, 0xE600000000000000);
    v179 = v254;
    v178 = v255;
    v180 = sub_25F821F8C();
    MEMORY[0x25F8E7510](v180);

    MEMORY[0x25F8E7510](0xD00000000000001ELL, 0x800000025F82EA70);
    v260[0] = v175;
    v181 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v181);

    MEMORY[0x25F8E7510](0xD00000000000001BLL, 0x800000025F82EA90);
    v182 = v261;
    sub_25F76E244();
    swift_allocError();
    *v183 = v182;
    *(v183 + 16) = 4;
    swift_willThrow();
    sub_25F79AEE0(v178, v179);
    sub_25F7BEDDC(v258, type metadata accessor for Preset);
    (*(v177 + 8))(v257, v176);
    goto LABEL_81;
  }

LABEL_83:
  v184 = (v258 + *(v253 + 24));
  v186 = *v184;
  v185 = v184[1];
  MEMORY[0x28223BE20](result);
  sub_25F8223BC();
  v253 = sub_25F82237C();
  v188 = v187;
  result = v89(v232 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0), v232[0]);
  if (v188 >> 60 == 15)
  {
    *&v261 = 0;
    *(&v261 + 1) = 0xE000000000000000;
    sub_25F82292C();

    *&v261 = 0xD000000000000011;
    *(&v261 + 1) = 0x800000025F82E9E0;
    MEMORY[0x25F8E7510](v186, v185);
    MEMORY[0x25F8E7510](0xD000000000000019, 0x800000025F82EA00);
    v189 = v261;
    sub_25F76E244();
    swift_allocError();
    *v190 = v189;
    *(v190 + 16) = 4;
    swift_willThrow();
    sub_25F7BEDDC(v258, type metadata accessor for Preset);
    (*(v322 + 8))(v257, v259);

LABEL_96:

    return sub_25F79AEE0(v255, v254);
  }

  v191 = v188 >> 62;
  v192 = v259;
  v74 = v256;
  if ((v188 >> 62) <= 1)
  {
    v193 = v235;
    if (!v191)
    {
      v194 = BYTE6(v188);
      goto LABEL_94;
    }

LABEL_92:
    LODWORD(v194) = HIDWORD(v253) - v253;
    if (!__OFSUB__(HIDWORD(v253), v253))
    {
      v194 = v194;
      goto LABEL_94;
    }

LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  v193 = v235;
  if (v191 != 2)
  {
    if (v235 < 0)
    {
      goto LABEL_95;
    }

    goto LABEL_99;
  }

  v196 = *(v253 + 16);
  v195 = *(v253 + 24);
  v174 = __OFSUB__(v195, v196);
  v194 = v195 - v196;
  if (v174)
  {
    __break(1u);
    goto LABEL_92;
  }

LABEL_94:
  if (v193 < v194)
  {
LABEL_95:
    *&v261 = 0;
    *(&v261 + 1) = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0x2820656D616ELL, 0xE600000000000000);
    v197 = v253;
    v198 = sub_25F821F8C();
    MEMORY[0x25F8E7510](v198);

    MEMORY[0x25F8E7510](0xD00000000000001ELL, 0x800000025F82EA70);
    v260[0] = v193;
    v199 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v199);

    MEMORY[0x25F8E7510](0xD00000000000001BLL, 0x800000025F82EA90);
    v200 = v261;
    sub_25F76E244();
    swift_allocError();
    *v201 = v200;
    *(v201 + 16) = 4;
    swift_willThrow();
    sub_25F79AEE0(v197, v188);
    sub_25F7BEDDC(v258, type metadata accessor for Preset);
    (*(v322 + 8))(v257, v192);

    goto LABEL_96;
  }

LABEL_99:
  v243 = v188;
  if (BYTE2(v320[1]))
  {
    v202 = v258;
    v203 = v251;
    sub_25F7BF9E4(v258, v251, type metadata accessor for Preset);
    sub_25F821EFC();
    swift_allocObject();
    sub_25F821EEC();
    sub_25F821ECC();
    v204 = v241;
    v205 = sub_25F7AF5E8(v203, 2, 0, sub_25F7B9DA8);
    v241 = v204;
    if (v204)
    {
      sub_25F7BEDDC(v203, type metadata accessor for Preset);

      sub_25F7BEDDC(v202, type metadata accessor for Preset);
      (*(v322 + 8))(v257, v192);

      sub_25F79AEE0(v253, v243);
      return sub_25F79AEE0(v255, v254);
    }

    v74 = v205;
    v76 = v206;
    sub_25F7BEDDC(v203, type metadata accessor for Preset);

    v212 = v76 >> 62;
    if ((v76 >> 62) > 1)
    {
      v207 = v258;
      if (v212 != 2)
      {
LABEL_126:
        v213 = 0;
        goto LABEL_127;
      }

      v219 = *(v74 + 16);
      v218 = *(v74 + 24);
      v174 = __OFSUB__(v218, v219);
      v213 = v218 - v219;
      if (!v174)
      {
LABEL_119:
        if ((v213 & 0x8000000000000000) == 0)
        {
          v216 = v213 >> 16;
          if (!(v213 >> 16))
          {
            goto LABEL_127;
          }

          __break(1u);
          goto LABEL_122;
        }

LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      __break(1u);
    }

    else
    {
      v207 = v258;
      if (!v212)
      {
        v213 = BYTE6(v76);
LABEL_127:
        v246 = 192;
        v247 = 64;
        v248 = v213;
        goto LABEL_148;
      }
    }

    if (__OFSUB__(HIDWORD(v74), v74))
    {
LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    v213 = HIDWORD(v74) - v74;
    goto LABEL_119;
  }

  v207 = v241;
  if (v316)
  {
    sub_25F76E244();
    swift_allocError();
    *v208 = 0xD000000000000043;
    *(v208 + 8) = 0x800000025F82EA20;
    *(v208 + 16) = 4;
    swift_willThrow();
    v209 = v258;
LABEL_106:
    sub_25F7BEDDC(v209, type metadata accessor for Preset);
    (*(v322 + 8))(v257, v192);

    sub_25F79AEE0(v253, v243);
    return sub_25F79AEE0(v255, v254);
  }

  v210 = v258;
  v76 = v247;
  sub_25F7BF9E4(v258, v247, type metadata accessor for Preset);
  v202 = v248;
  result = sub_25F7754CC(v76, v252, v248);
  if (v207)
  {
    v209 = v210;
    goto LABEL_106;
  }

  v211 = v246;
  v214 = &v202[*(v246 + 36)];
  v215 = *v214;
  v239 = v214[1];
  v240 = v215;
  v216 = v239 >> 62;
  v241 = 0;
  if ((v239 >> 62) <= 1)
  {
    if (!v216)
    {
      v217 = BYTE6(v239);
      goto LABEL_134;
    }

    if (__OFSUB__(HIDWORD(v240), v240))
    {
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    v217 = HIDWORD(v240) - v240;
    goto LABEL_130;
  }

LABEL_122:
  if (v216 != 2)
  {
    goto LABEL_133;
  }

  v221 = *(v240 + 16);
  v220 = *(v240 + 24);
  v217 = v220 - v221;
  if (__OFSUB__(v220, v221))
  {
    __break(1u);
    goto LABEL_126;
  }

LABEL_130:
  if ((v217 & 0x8000000000000000) != 0)
  {
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  if (!(v217 >> 16))
  {
    goto LABEL_134;
  }

  __break(1u);
LABEL_133:
  v217 = 0;
LABEL_134:
  v222 = &v202[*(v211 + 40)];
  v223 = *v222;
  v224 = v222[1];
  v225 = v224 >> 62;
  if ((v224 >> 62) > 1)
  {
    if (v225 != 2)
    {
      goto LABEL_146;
    }

    v228 = v223 + 16;
    v223 = *(v223 + 16);
    v227 = *(v228 + 8);
    v174 = __OFSUB__(v227, v223);
    v226 = v227 - v223;
    if (!v174)
    {
LABEL_143:
      if ((v226 & 0x8000000000000000) == 0)
      {
        if (!(v226 >> 16))
        {
          goto LABEL_147;
        }

        __break(1u);
LABEL_146:
        v226 = 0;
        goto LABEL_147;
      }

      goto LABEL_182;
    }

    __break(1u);
LABEL_141:
    v174 = __OFSUB__(HIDWORD(v223), v223);
    v229 = HIDWORD(v223) - v223;
    if (v174)
    {
LABEL_186:
      __break(1u);
      return result;
    }

    v226 = v229;
    goto LABEL_143;
  }

  if (v225)
  {
    goto LABEL_141;
  }

  v226 = BYTE6(v224);
LABEL_147:
  v246 = v226;
  v247 = v217;
  sub_25F76E658(v240, v239);

  v230 = *v222;
  v237 = v222[1];
  v238 = v230;
  sub_25F76E658(v230, v237);
  sub_25F7BEDDC(v202, type metadata accessor for HIDPresetData);

  v74 = 0;
  v248 = 0;
  v76 = 0xC000000000000000;
  v207 = v258;
LABEL_148:
  v65 = v249;
  sub_25F7BF9E4(v207, v249, type metadata accessor for Preset.Info);
  sub_25F7BEDDC(v207, type metadata accessor for Preset);
  v231 = v250;
  sub_25F76183C(v65, v250, &qword_27FDAFBB0);
  sub_25F7BEDDC(v65, type metadata accessor for Preset.Info);
  (*(v322 + 40))(v257, v231, v192);
  v73 = 1;
  v75 = v254;
  v77 = *(&v320[0] + 1);
  if ((*(&v320[0] + 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_149;
  }

LABEL_13:
  v254 = v75;
  if (v77)
  {
    v65 = sub_25F82253C();
    *(v65 + 16) = v77;
    bzero((v65 + 32), v77);
    goto LABEL_21;
  }

  v65 = MEMORY[0x277D84F90];
  v77 = *(MEMORY[0x277D84F90] + 16);
  if (!v77)
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

LABEL_21:
  v96 = *(&v320[1] + 1);
  v97 = *(&v320[2] + 1);
  *(v65 + 32) = BYTE1(v320[1]);
  v98 = v65 + 32;
  if (v96 >= v77)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  v258 = v76;
  *(v98 + v96) = 1;
  if (v97 >= v77)
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  *(v98 + v97) = v73;
  v290 = v65;
  v99 = v245;
  v100 = v245 + v236;
  if (__OFADD__(v245, v236))
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v100 < v245)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v77 < v245)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (v245 < 0)
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  if (v77 < v100)
  {
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v256 = v74;
  v251 = (v100 - v99);
  if (isUniquelyReferenced_nonNull)
  {
    v250 = ((2 * v100) | 1);
  }

  else
  {
    v102 = sub_25F7BEBF8((v65 + 32), v99, (2 * v100) | 1);
    v98 = v103;
    v99 = v104;
    v250 = v105;
    swift_unknownObjectRelease();
    v65 = v102;
  }

  v106 = v254;
  v107 = v255;
  sub_25F76E658(v255, v254);
  sub_25F7B70CC(v107, v106, &v99[v98]);
  sub_25F76D178(v107, v106);
  sub_25F7BED58(v65, v98, v99, v250, v245, v100);
  swift_unknownObjectRelease();
  v108 = v244;
  v65 = v244 + v235;
  if (__OFADD__(v244, v235))
  {
    goto LABEL_158;
  }

  if (v65 < v244)
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  if (v244 < 0)
  {
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    isUniquelyReferenced_nonNull_native = sub_25F7BD89C(v65);
    v65 = isUniquelyReferenced_nonNull_native;
    goto LABEL_40;
  }

  v109 = v290;
  v110 = *(v290 + 16);
  if (v110 < v244 || v110 < v65)
  {
    goto LABEL_161;
  }

  v251 = v235;
  v111 = v290 + 32;

  if (swift_isUniquelyReferenced_nonNull())
  {
    v250 = ((2 * v65) | 1);
  }

  else
  {
    v112 = sub_25F7BEBF8(v109 + 32, v108, (2 * v65) | 1);
    v111 = v113;
    v108 = v114;
    v250 = v115;
    swift_unknownObjectRelease();
    v109 = v112;
  }

  v116 = v253;
  v117 = v243;
  sub_25F76E658(v253, v243);
  sub_25F7B70CC(v116, v117, &v108[v111]);
  sub_25F76D178(v116, v117);
  sub_25F7BED58(v109, v111, v108, v250, v244, v65);
  swift_unknownObjectRelease();
  v65 = v290;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_162;
  }

LABEL_40:
  v119 = v322;
  v120 = v234;
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v121 = v232 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v259;
  (*(v119 + 16))(v121);
  if ((v120 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  v123 = v65 + 32;
  memcpy((v65 + 32 + *(&v320[11] + 1)), v232 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0), v120);
  v124 = *(v119 + 8);
  v124(v121, v122);
  v290 = v65;
  v322 = v119 + 8;
  v251 = v124;
  if (BYTE2(v320[1]))
  {
    v125 = *(&v320[10] + 1);
    v126 = *(&v320[10] + 1) + *&v320[11];
    if (!__OFADD__(*(&v320[10] + 1), *&v320[11]))
    {
      if (v126 >= *(&v320[10] + 1))
      {
        if ((*(&v320[10] + 1) & 0x8000000000000000) == 0)
        {
          v127 = *(v65 + 16);
          if (v127 >= *(&v320[10] + 1) && v127 >= v126)
          {
            v249 = ((2 * v126) | 1);

            v128 = swift_isUniquelyReferenced_nonNull();
            v250 = &v320[9] + 1;
            v247 = v126 - v125;
            if (v128)
            {
              v129 = v125;
            }

            else
            {
              v134 = sub_25F7BEBF8((v65 + 32), v125, v249);
              v123 = v135;
              v129 = v136;
              v249 = v137;
              swift_unknownObjectRelease();
              v65 = v134;
            }

            v246 = v129;
            v138 = v123 + v129;
            v139 = v256;
            v140 = v258;
            sub_25F76E658(v256, v258);
            sub_25F7B70CC(v139, v140, v138);
            sub_25F76D178(v139, v140);
            sub_25F7BED58(v65, v123, v246, v249, v125, v126);
            swift_unknownObjectRelease();
            v121 = v290;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_58;
            }

            goto LABEL_172;
          }

          goto LABEL_170;
        }

        goto LABEL_168;
      }

      goto LABEL_166;
    }

    goto LABEL_164;
  }

  v130 = *(&v320[6] + 1);
  v121 = *(&v320[6] + 1) + *&v320[7];
  if (__OFADD__(*(&v320[6] + 1), *&v320[7]))
  {
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  if (v121 < *(&v320[6] + 1))
  {
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  if ((*(&v320[6] + 1) & 0x8000000000000000) == 0)
  {
    v131 = *(v65 + 16);
    if (v131 < *(&v320[6] + 1) || v131 < v121)
    {
      goto LABEL_171;
    }

    v250 = ((2 * v121) | 1);

    v132 = swift_isUniquelyReferenced_nonNull();
    v248 = (v121 - v130);
    v249 = v121;
    if (v132)
    {
      v133 = v130;
    }

    else
    {
      v143 = sub_25F7BEBF8((v65 + 32), v130, v250);
      v123 = v144;
      v133 = v145;
      v250 = v146;
      swift_unknownObjectRelease();
      v65 = v143;
    }

    v147 = *(&v320[8] + 1);
    v244 = v133;
    v245 = *&v320[9];
    v148 = &v133[v123];
    v150 = v239;
    v149 = v240;
    sub_25F76E658(v240, v239);
    sub_25F7B70CC(v149, v150, v148);
    sub_25F76D178(v149, v150);
    v121 = &v290;
    sub_25F7BED58(v65, v123, v244, v250, v130, v249);
    swift_unknownObjectRelease();
    v151 = v147 + v245;
    if (__OFADD__(v147, v245))
    {
      __break(1u);
    }

    else if (v151 >= v147)
    {
      if ((v147 & 0x8000000000000000) == 0)
      {
        v152 = v290;
        v153 = *(v290 + 16);
        if (v153 >= v147 && v153 >= v151)
        {
          v248 = v245;
          v249 = (v147 + v245);
          v154 = v290 + 32;
          v155 = ((2 * v151) | 1);

          if (swift_isUniquelyReferenced_nonNull())
          {
            v156 = v147;
            v245 = v155;
          }

          else
          {
            v157 = sub_25F7BEBF8(v152 + 32, v147, v155);
            v154 = v158;
            v156 = v159;
            v245 = v160;
            swift_unknownObjectRelease();
            v152 = v157;
          }

          v250 = &v320[7] + 1;
          v161 = v237;
          v162 = v238;
          sub_25F76E658(v238, v237);
          sub_25F7B70CC(v162, v161, v154 + v156);
          sub_25F76D178(v162, v161);
          sub_25F7BED58(v152, v154, v156, v245, v147, v249);
          swift_unknownObjectRelease();
          v121 = v290;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_69;
          }

          goto LABEL_177;
        }

LABEL_176:
        __break(1u);
LABEL_177:
        v121 = sub_25F7BD89C(v121);
LABEL_69:
        v142 = v252;
        v141 = v246;
        *(v121 + *(&v320[5] + 1) + 32) = v247;
        goto LABEL_70;
      }

LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

    __break(1u);
    goto LABEL_175;
  }

LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  v121 = sub_25F7BD89C(v121);
LABEL_58:
  v141 = v248;
  v142 = v252;
LABEL_70:
  v252 = v121;
  *(v121 + *v250 + 32) = v141;
  v261 = v317;
  v262 = v318;
  v263 = v142;
  v163 = v316;
  v264 = v316;
  *v279 = v315[0];
  *&v279[9] = *(v315 + 9);
  v277 = v313;
  v278 = v314;
  v273 = v309;
  v274 = v310;
  v275 = v311;
  v276 = v312;
  v269 = v305;
  v270 = v306;
  v271 = v307;
  v272 = v308;
  v265 = v301;
  v266 = v302;
  v267 = v303;
  v268 = v304;
  v288 = v299;
  v289[0] = v300[0];
  v284 = v295;
  v285 = v296;
  v286 = v297;
  v287 = v298;
  v280 = v291;
  v281 = v292;
  v282 = v293;
  v283 = v294;
  *(v289 + 14) = *(v300 + 14);
  v164 = v241;
  sub_25F7B50AC(v233);
  if (!v164)
  {
    v241 = 0;
    v261 = v317;
    v262 = v318;
    v263 = v142;
    v264 = v163;
    *v279 = v315[0];
    *&v279[9] = *(v315 + 9);
    v277 = v313;
    v278 = v314;
    v273 = v309;
    v274 = v310;
    v275 = v311;
    v276 = v312;
    v269 = v305;
    v270 = v306;
    v271 = v307;
    v272 = v308;
    v265 = v301;
    v266 = v302;
    v267 = v303;
    v268 = v304;
    v288 = v299;
    v289[0] = v300[0];
    v284 = v295;
    v285 = v296;
    v286 = v297;
    v287 = v298;
    v280 = v291;
    v281 = v292;
    v282 = v293;
    v283 = v294;
    *(v289 + 14) = *(v300 + 14);
    v260[3] = &type metadata for AppleDisplayHIDDevice.PresetInterface.PresetDetailsReport;
    v260[4] = &off_2871C6EA8;
    v165 = swift_allocObject();
    v260[0] = v165;
    v166 = *(&v320[9] + 8);
    v165[9] = *(&v320[8] + 8);
    v165[10] = v166;
    v167 = *(&v320[11] + 8);
    v165[11] = *(&v320[10] + 8);
    v165[12] = v167;
    v168 = *(&v320[5] + 8);
    v165[5] = *(&v320[4] + 8);
    v165[6] = v168;
    v169 = *(&v320[7] + 8);
    v165[7] = *(&v320[6] + 8);
    v165[8] = v169;
    v170 = *(&v320[1] + 8);
    v165[1] = *(v320 + 8);
    v165[2] = v170;
    v171 = *(&v320[3] + 8);
    v165[3] = *(&v320[2] + 8);
    v165[4] = v171;
    sub_25F7B0528(v260, v252);
    __swift_destroy_boxed_opaque_existential_0Tm(v260);
  }

  v251(v257, v259);
  sub_25F76D178(v256, v258);
  sub_25F76D178(v238, v237);
  sub_25F76D178(v240, v239);
  sub_25F76D178(v253, v243);
  return sub_25F76D178(v255, v254);
}

uint64_t AppleDisplayHIDDevice.setUserAdjustment(_:)(unint64_t a1)
{
  v128 = a1;
  v129 = sub_25F8221EC();
  v2 = *(v129 - 8);
  v3 = MEMORY[0x28223BE20](v129);
  v5 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v118 - v6;
  v8 = type metadata accessor for PCDSUserAdjustmentInfo();
  MEMORY[0x28223BE20](v8 - 8);
  v126 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v118 - v11;
  v13 = type metadata accessor for UserAdjustment();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v127 = &v118 - v18;
  memcpy(v132, v1, sizeof(v132));
  v19 = *(v1 + 408);
  v139 = *(v1 + 392);
  v140 = v19;
  v20 = *(v1 + 440);
  v141 = *(v1 + 424);
  v142 = v20;
  v21 = *(v1 + 344);
  v135 = *(v1 + 328);
  v136 = v21;
  v22 = *(v1 + 376);
  v137 = *(v1 + 360);
  v138 = v22;
  v23 = *(v1 + 312);
  v133 = *(v1 + 296);
  v134 = v23;
  result = sub_25F7BE5B8(&v133);
  if (result == 1)
  {
    v131[0] = 0;
    v131[1] = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000015, 0x800000025F82EAB0);
    MEMORY[0x25F8E7510](0xD000000000000039, 0x800000025F82E740);
    v26 = v131[0];
    v25 = v131[1];
    sub_25F8221DC();

    v27 = sub_25F8221CC();
    v28 = sub_25F82268C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v131[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_25F75CA94(v26, v25, v131);
      _os_log_impl(&dword_25F74E000, v27, v28, "%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x25F8E88D0](v30, -1, -1);
      MEMORY[0x25F8E88D0](v29, -1, -1);
    }

    (*(v2 + 8))(v5, v129);

    sub_25F76E244();
    swift_allocError();
    *v31 = 0;
    *(v31 + 8) = 0;
    v32 = 5;
LABEL_9:
    *(v31 + 16) = v32;
    return swift_willThrow();
  }

  if (BYTE8(v133) == 3)
  {
    v131[0] = 0;
    v131[1] = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000015, 0x800000025F82EAB0);
    MEMORY[0x25F8E7510](0xD00000000000003FLL, 0x800000025F82E780);
    v34 = v131[0];
    v33 = v131[1];
    sub_25F8221DC();

    v35 = sub_25F8221CC();
    v36 = sub_25F82268C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v131[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_25F75CA94(v34, v33, v131);
      _os_log_impl(&dword_25F74E000, v35, v36, "%s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x25F8E88D0](v38, -1, -1);
      MEMORY[0x25F8E88D0](v37, -1, -1);
    }

    (*(v2 + 8))(v7, v129);

    sub_25F76E244();
    swift_allocError();
    *v31 = 0xD000000000000026;
    *(v31 + 8) = 0x800000025F82EAD0;
    v32 = 4;
    goto LABEL_9;
  }

  v39 = *(&v134 + 1);
  if ((*(&v134 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_80;
  }

  v124 = *(&v133 + 1);
  v40 = v134;
  v41 = MEMORY[0x277D84F90];
  v122 = *(&v134 + 1);
  v125 = v133;
  if (*(&v134 + 1))
  {
    v41 = sub_25F82253C();
    *(v41 + 16) = v39;
    memset((v41 + 32), 255, v39);
  }

  v42 = sub_25F7BEE3C(v41);
  v44 = v43;

  sub_25F76183C(v128, v12, &qword_27FDAFC28);
  v45 = (*(v14 + 48))(v12, 1, v13);
  v123 = v40;
  if (v45 == 1)
  {
    sub_25F760F44(v12, &qword_27FDAFC28);
    v46 = 0;
    v129 = 0;
    v47 = 0xC000000000000000;
    v48 = v42;
    v49 = v44;
    v50 = v125;
    v51 = v40;
    goto LABEL_15;
  }

  v121 = v42;
  v128 = v44;
  v56 = v127;
  sub_25F7BFB08(v12, v127, type metadata accessor for UserAdjustment);
  v57 = (v56 + *(v13 + 24));
  v59 = *v57;
  v58 = v57[1];
  v60 = sub_25F8223DC();
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v63 = &v118 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F8223BC();
  v120 = v58;
  v129 = sub_25F82237C();
  v65 = v64;
  result = (*(v61 + 8))(v63, v60);
  if (v65 >> 60 != 15)
  {
    v47 = v65;
    v71 = v65 >> 62;
    if ((v65 >> 62) > 1)
    {
      v51 = v123;
      v72 = v127;
      v50 = v125;
      if (v71 != 2)
      {
        if (v123 < 0)
        {
          v104 = 0;
          v102 = v128;
          v103 = v121;
          goto LABEL_73;
        }

        goto LABEL_51;
      }

      v101 = *(v129 + 16);
      v100 = *(v129 + 24);
      v52 = __OFSUB__(v100, v101);
      v73 = v100 - v101;
      if (!v52)
      {
LABEL_45:
        if (v51 < v73)
        {
          if (v71 == 2)
          {
            v102 = v128;
            v113 = *(v129 + 16);
            v112 = *(v129 + 24);
            v104 = v112 - v113;
            v103 = v121;
            if (!__OFSUB__(v112, v113))
            {
              goto LABEL_73;
            }

            __break(1u);
          }

          else
          {
            v102 = v128;
            v103 = v121;
            if (v71 == 1)
            {
              if (__OFSUB__(HIDWORD(v129), v129))
              {
LABEL_89:
                __break(1u);
                goto LABEL_90;
              }

              v104 = HIDWORD(v129) - v129;
LABEL_73:
              sub_25F76E244();
              swift_allocError();
              *v114 = v51;
              *(v114 + 8) = v104;
              *(v114 + 16) = 1;
              swift_willThrow();
              sub_25F79AEE0(v129, v47);
              sub_25F7BEDDC(v72, type metadata accessor for UserAdjustment);
              v70 = v103;
              v99 = v102;
              return sub_25F76D178(v70, v99);
            }
          }

          v104 = BYTE6(v47);
          goto LABEL_73;
        }

LABEL_51:
        sub_25F7BF9E4(v72, v17, type metadata accessor for UserAdjustment);
        v105 = v126;
        sub_25F7F079C(v17, v126);
        v48 = sub_25F7F0998();
        v49 = v106;
        sub_25F7BEDDC(v105, type metadata accessor for PCDSUserAdjustmentInfo);
        result = sub_25F76D178(v121, v128);
        v107 = v49 >> 62;
        if ((v49 >> 62) > 1)
        {
          if (v107 != 2)
          {
            if (v122)
            {
              v111 = 0;
              goto LABEL_78;
            }

LABEL_67:
            sub_25F7BEDDC(v72, type metadata accessor for UserAdjustment);
            v46 = 1;
LABEL_15:
            v52 = __OFADD__(v51, 2);
            v53 = v51 + 2;
            result = MEMORY[0x277D84F90];
            if (!v52)
            {
              if ((v50 & 0x8000000000000000) == 0)
              {
                v128 = v47;
                if (v50)
                {
                  v54 = sub_25F82253C();
                  *(v54 + 16) = v50;
                  bzero((v54 + 32), v50);
                  result = v54;
                  v55 = v50;
                  goto LABEL_25;
                }

                v55 = *(MEMORY[0x277D84F90] + 16);
                if (v55)
                {
LABEL_25:
                  v74 = v124 >> 8;
                  *(result + 32) = BYTE1(v124);
                  v75 = (result + 32);
                  if (v55 != 1)
                  {
                    *(result + 33) = v46;
                    v143 = result;
                    if (v53 >= 2)
                    {
                      if (v55 >= v53)
                      {
                        v126 = v48;

                        isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
                        v120 = v74;
                        v121 = v49;
                        if (isUniquelyReferenced_nonNull)
                        {
                          v78 = 2;
                          v127 = (2 * v53) | 1;
                        }

                        else
                        {
                          v79 = sub_25F7BEBF8(v75, 2, (2 * v53) | 1);
                          v75 = v80;
                          v78 = v81;
                          v127 = v82;
                          swift_unknownObjectRelease();
                          v76 = v79;
                        }

                        v84 = v128;
                        v83 = v129;
                        sub_25F76E658(v129, v128);
                        sub_25F7B70CC(v83, v84, &v75[v78]);
                        sub_25F76D178(v83, v84);
                        sub_25F7BED58(v76, v75, v78, v127, 2, v53);
                        result = swift_unknownObjectRelease();
                        v85 = v143;
                        v86 = *(v143 + 16);
                        if (v86 >= v53)
                        {
                          v87 = v143 + 32;

                          v88 = swift_isUniquelyReferenced_nonNull();
                          v127 = v86 - v53;
                          if (v88)
                          {
                            v89 = v53;
                            v119 = (2 * v86) | 1;
                          }

                          else
                          {
                            v90 = sub_25F7BEBF8(v85 + 32, v53, (2 * v86) | 1);
                            v87 = v91;
                            v89 = v92;
                            v119 = v93;
                            swift_unknownObjectRelease();
                            v85 = v90;
                          }

                          v94 = v126;
                          v95 = v121;
                          sub_25F76E658(v126, v121);
                          sub_25F7B70CC(v94, v95, v87 + v89);
                          sub_25F76D178(v94, v95);
                          sub_25F7BED58(v85, v87, v89, v119, v53, v86);
                          swift_unknownObjectRelease();
                          memcpy(v131, v132, sizeof(v131));
                          v130[3] = &type metadata for AppleDisplayHIDDevice.UserAdjustmentInterface.GlobalUserAdjustmentReport;
                          v130[4] = &off_2871C6E58;
                          v96 = swift_allocObject();
                          v130[0] = v96;
                          v97 = v124;
                          *(v96 + 16) = v125;
                          *(v96 + 24) = v97;
                          *(v96 + 25) = v120;
                          v98 = v122;
                          *(v96 + 32) = v123;
                          *(v96 + 40) = v98;
                          sub_25F7B0528(v130, v143);
                          __swift_destroy_boxed_opaque_existential_0Tm(v130);

                          sub_25F76D178(v94, v95);
                          v70 = v129;
                          goto LABEL_36;
                        }

                        goto LABEL_86;
                      }

LABEL_85:
                      __break(1u);
LABEL_86:
                      __break(1u);
                      goto LABEL_87;
                    }

LABEL_84:
                    __break(1u);
                    goto LABEL_85;
                  }

LABEL_83:
                  __break(1u);
                  goto LABEL_84;
                }

LABEL_82:
                __break(1u);
                goto LABEL_83;
              }

LABEL_81:
              __break(1u);
              goto LABEL_82;
            }

LABEL_80:
            __break(1u);
            goto LABEL_81;
          }

          v110 = *(v48 + 16);
          v109 = *(v48 + 24);
          v52 = __OFSUB__(v109, v110);
          v108 = v109 - v110;
          if (!v52)
          {
LABEL_60:
            if (v108 != v122)
            {
              if (v107 == 2)
              {
                v116 = *(v48 + 16);
                v115 = *(v48 + 24);
                v111 = v115 - v116;
                if (!__OFSUB__(v115, v116))
                {
                  goto LABEL_78;
                }

                __break(1u);
              }

              else if (v107 == 1)
              {
                if (__OFSUB__(HIDWORD(v48), v48))
                {
LABEL_90:
                  __break(1u);
                  return result;
                }

                v111 = HIDWORD(v48) - v48;
LABEL_78:
                sub_25F76E244();
                swift_allocError();
                *v117 = v122;
                *(v117 + 8) = v111;
                *(v117 + 16) = 1;
                swift_willThrow();
                sub_25F7BEDDC(v72, type metadata accessor for UserAdjustment);
                sub_25F76D178(v48, v49);
                return sub_25F79AEE0(v129, v47);
              }

              v111 = BYTE6(v49);
              goto LABEL_78;
            }

            goto LABEL_67;
          }

          __break(1u);
        }

        else if (!v107)
        {
          v108 = BYTE6(v49);
          goto LABEL_60;
        }

        LODWORD(v108) = HIDWORD(v48) - v48;
        if (__OFSUB__(HIDWORD(v48), v48))
        {
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        v108 = v108;
        goto LABEL_60;
      }

      __break(1u);
    }

    else
    {
      v51 = v123;
      v72 = v127;
      v50 = v125;
      if (!v71)
      {
        v73 = BYTE6(v47);
        goto LABEL_45;
      }
    }

    LODWORD(v73) = HIDWORD(v129) - v129;
    if (__OFSUB__(HIDWORD(v129), v129))
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v73 = v73;
    goto LABEL_45;
  }

  v131[0] = 0;
  v131[1] = 0xE000000000000000;
  sub_25F82292C();

  v66 = v56;
  v131[0] = 0xD000000000000011;
  v131[1] = 0x800000025F82E9E0;
  MEMORY[0x25F8E7510](v59, v120);
  MEMORY[0x25F8E7510](0xD000000000000019, 0x800000025F82EA00);
  v67 = v131[0];
  v68 = v131[1];
  sub_25F76E244();
  swift_allocError();
  *v69 = v67;
  *(v69 + 8) = v68;
  *(v69 + 16) = 4;
  swift_willThrow();
  sub_25F7BEDDC(v66, type metadata accessor for UserAdjustment);
  v70 = v121;
LABEL_36:
  v99 = v128;
  return sub_25F76D178(v70, v99);
}

uint64_t AppleDisplayHIDDevice.setUserAdjustment(_:at:live:)(uint64_t a1, int a2, int a3)
{
  v125 = a2;
  v126 = a3;
  v5 = sub_25F8221EC();
  v129 = *(v5 - 8);
  v130 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v115 - v10;
  MEMORY[0x28223BE20](v9);
  v124 = &v115 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v115 - v14;
  v16 = type metadata accessor for UserAdjustment();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v127 = &v115 - v21;
  memcpy(v133, v3, sizeof(v133));
  v22 = *(v3 + 408);
  v139 = *(v3 + 392);
  v140 = v22;
  v23 = *(v3 + 440);
  v141 = *(v3 + 424);
  v142 = v23;
  v24 = *(v3 + 344);
  v135 = *(v3 + 328);
  v136 = v24;
  v25 = *(v3 + 376);
  v137 = *(v3 + 360);
  v138 = v25;
  v26 = *(v3 + 312);
  v134[0] = *(v3 + 296);
  v134[1] = v26;
  result = sub_25F7BE5B8(v134);
  if (result == 1)
  {
    v132[0] = 0;
    v132[1] = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD00000000000001DLL, 0x800000025F82EB00);
    MEMORY[0x25F8E7510](0xD000000000000039, 0x800000025F82E740);
    v29 = v132[0];
    v28 = v132[1];
    sub_25F8221DC();

    v30 = sub_25F8221CC();
    v31 = sub_25F82268C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v132[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_25F75CA94(v29, v28, v132);
      _os_log_impl(&dword_25F74E000, v30, v31, "%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x25F8E88D0](v33, -1, -1);
      MEMORY[0x25F8E88D0](v32, -1, -1);
    }

    (*(v129 + 8))(v8, v130);

    sub_25F76E244();
    swift_allocError();
    *v34 = 0;
    *(v34 + 8) = 0;
    v35 = 5;
LABEL_9:
    *(v34 + 16) = v35;
    return swift_willThrow();
  }

  v36 = *(&v135 + 1);
  if (BYTE8(v135) == 3)
  {
    v132[0] = 0;
    v132[1] = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD00000000000001DLL, 0x800000025F82EB00);
    MEMORY[0x25F8E7510](0xD000000000000043, 0x800000025F82E870);
    v38 = v132[0];
    v37 = v132[1];
    sub_25F8221DC();

    v39 = sub_25F8221CC();
    v40 = sub_25F82268C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v132[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_25F75CA94(v38, v37, v132);
      _os_log_impl(&dword_25F74E000, v39, v40, "%s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x25F8E88D0](v42, -1, -1);
      MEMORY[0x25F8E88D0](v41, -1, -1);
    }

    (*(v129 + 8))(v11, v130);

    sub_25F76E244();
    swift_allocError();
    *v34 = 0xD00000000000002ALL;
    *(v34 + 8) = 0x800000025F82EB20;
    v35 = 4;
    goto LABEL_9;
  }

  v43 = v135;
  if ((v135 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_85;
  }

  v120 = v137;
  v121 = *(&v136 + 1);
  v119 = *(&v137 + 1);
  v122 = *(&v138 + 1);
  v118 = v138;
  v123 = v136;
  if (v135)
  {
    v44 = sub_25F82253C();
    *(v44 + 16) = v43;
    bzero((v44 + 32), v43);
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  v117 = v43;
  sub_25F76183C(a1, v15, &qword_27FDAFC28);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    result = sub_25F760F44(v15, &qword_27FDAFC28);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0xC000000000000000;
    v49 = *(v44 + 16);
    if (v49)
    {
      goto LABEL_16;
    }

LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v57 = v127;
  sub_25F7BFB08(v15, v127, type metadata accessor for UserAdjustment);
  sub_25F7BF9E4(v57, v20, type metadata accessor for UserAdjustment);
  sub_25F821EFC();
  swift_allocObject();
  sub_25F821EEC();
  sub_25F821ECC();
  v58 = v128;
  v59 = sub_25F7AF5E8(v20, 2, 0, sub_25F7BA05C);
  if (v58)
  {

    sub_25F7BEDDC(v20, type metadata accessor for UserAdjustment);
    sub_25F7BEDDC(v57, type metadata accessor for UserAdjustment);
  }

  v48 = v60;
  v46 = v59;
  sub_25F7BEDDC(v20, type metadata accessor for UserAdjustment);

  v99 = v48 >> 62;
  if ((v48 >> 62) <= 1)
  {
    if (!v99)
    {
      v100 = BYTE6(v48);
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (v99 != 2)
  {
    if (v122 >= 1)
    {
      v128 = 0;
      result = sub_25F7BEDDC(v127, type metadata accessor for UserAdjustment);
      v47 = 0;
      goto LABEL_77;
    }

    goto LABEL_62;
  }

  v102 = *(v46 + 16);
  v101 = *(v46 + 24);
  v103 = __OFSUB__(v101, v102);
  v100 = v101 - v102;
  if (v103)
  {
    __break(1u);
LABEL_53:
    LODWORD(v100) = HIDWORD(v46) - v46;
    if (__OFSUB__(HIDWORD(v46), v46))
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v100 = v100;
  }

LABEL_55:
  if (v100 < v122)
  {
    result = sub_25F7BEDDC(v127, type metadata accessor for UserAdjustment);
    v128 = 0;
    if (v99 != 2)
    {
      if (v99 != 1)
      {
        goto LABEL_76;
      }

      if (__OFSUB__(HIDWORD(v46), v46))
      {
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      v47 = HIDWORD(v46) - v46;
LABEL_73:
      if ((v47 & 0x8000000000000000) != 0)
      {
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      if (!(v47 >> 16))
      {
LABEL_77:
        v45 = 1;
        v49 = *(v44 + 16);
        if (v49)
        {
LABEL_16:
          *(v44 + 32) = BYTE1(v36);
          v50 = v44 + 32;
          if (v49 != 1)
          {
            *(v44 + 33) = v45;
            v143 = v44;
            v51 = v123 + v121;
            if (!__OFADD__(v123, v121))
            {
              if (v51 >= v123)
              {
                if (v49 >= v123)
                {
                  if ((v123 & 0x8000000000000000) == 0)
                  {
                    v129 = v46;
                    if (v49 >= v51)
                    {
                      v52 = v126 & 1;
                      v53 = (2 * v51) | 1;

                      isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
                      v116 = v36;
                      v130 = v47;
                      if (isUniquelyReferenced_nonNull)
                      {
                        v55 = v123;
                        v56 = v123;
                      }

                      else
                      {
                        v61 = v48;
                        v62 = v123;
                        v127 = sub_25F7BEBF8((v44 + 32), v123, (2 * v51) | 1);
                        v50 = v63;
                        v64 = v52;
                        v66 = v65;
                        v53 = v67;
                        swift_unknownObjectRelease();
                        v55 = v62;
                        v48 = v61;
                        v56 = v66;
                        v52 = v64;
                        v44 = v127;
                      }

                      *(v50 + v56) = v52;
                      sub_25F7BED58(v44, v50, v56, v53, v55, v51);
                      result = swift_unknownObjectRelease();
                      v68 = v120;
                      v69 = v120 + v119;
                      if (!__OFADD__(v120, v119))
                      {
                        if (v69 >= v120)
                        {
                          if ((v120 & 0x8000000000000000) == 0)
                          {
                            v70 = v143;
                            v71 = *(v143 + 16);
                            if (v71 >= v120 && v71 >= v69)
                            {
                              v72 = v143 + 32;
                              v73 = (2 * v69) | 1;

                              if (swift_isUniquelyReferenced_nonNull())
                              {
                                v74 = v68;
                              }

                              else
                              {
                                v75 = sub_25F7BEBF8(v70 + 32, v68, (2 * v69) | 1);
                                v72 = v76;
                                v78 = v77;
                                v73 = v79;
                                swift_unknownObjectRelease();
                                v74 = v78;
                                v70 = v75;
                              }

                              v80 = v118;
                              *(v72 + v74) = v130;
                              sub_25F7BED58(v70, v72, v74, v73, v68, v69);
                              result = swift_unknownObjectRelease();
                              v81 = v80 + v122;
                              if (!__OFADD__(v80, v122))
                              {
                                if (v81 >= v80)
                                {
                                  if ((v80 & 0x8000000000000000) == 0)
                                  {
                                    v82 = v143;
                                    v83 = *(v143 + 16);
                                    if (v83 >= v80 && v83 >= v81)
                                    {
                                      v84 = v143 + 32;

                                      v85 = swift_isUniquelyReferenced_nonNull();
                                      v130 = v81 - v80;
                                      if (v85)
                                      {
                                        v127 = (2 * v81) | 1;
                                        v86 = v80;
                                      }

                                      else
                                      {
                                        v87 = sub_25F7BEBF8(v82 + 32, v80, (2 * v81) | 1);
                                        v84 = v88;
                                        v86 = v80;
                                        v80 = v89;
                                        v127 = v90;
                                        swift_unknownObjectRelease();
                                        v82 = v87;
                                      }

                                      v91 = v129;
                                      sub_25F76E658(v129, v48);
                                      sub_25F7B70CC(v91, v48, v84 + v80);
                                      sub_25F76D178(v91, v48);
                                      sub_25F7BED58(v82, v84, v80, v127, v86, v81);
                                      swift_unknownObjectRelease();
                                      memcpy(v132, v133, sizeof(v132));
                                      v92 = v128;
                                      sub_25F7B950C(v125);
                                      if (!v92)
                                      {
                                        memcpy(v132, v133, sizeof(v132));
                                        v131[3] = &type metadata for AppleDisplayHIDDevice.UserAdjustmentInterface.PerPresetUserAdjustmentReport;
                                        v131[4] = &off_2871C6E30;
                                        v93 = swift_allocObject();
                                        v131[0] = v93;
                                        v94 = v116;
                                        v93[2] = v117;
                                        v93[3] = v94;
                                        v96 = v120;
                                        v95 = v121;
                                        v93[4] = v123;
                                        v93[5] = v95;
                                        v97 = v119;
                                        v93[6] = v96;
                                        v93[7] = v97;
                                        v98 = v122;
                                        v93[8] = v86;
                                        v93[9] = v98;
                                        sub_25F7B0528(v131, v143);
                                        __swift_destroy_boxed_opaque_existential_0Tm(v131);
                                      }

                                      sub_25F76D178(v91, v48);
                                    }

                                    goto LABEL_98;
                                  }

LABEL_97:
                                  __break(1u);
LABEL_98:
                                  __break(1u);
                                  goto LABEL_99;
                                }

LABEL_96:
                                __break(1u);
                                goto LABEL_97;
                              }

LABEL_95:
                              __break(1u);
                              goto LABEL_96;
                            }

LABEL_94:
                            __break(1u);
                            goto LABEL_95;
                          }

LABEL_93:
                          __break(1u);
                          goto LABEL_94;
                        }

LABEL_92:
                        __break(1u);
                        goto LABEL_93;
                      }

LABEL_91:
                      __break(1u);
                      goto LABEL_92;
                    }

LABEL_90:
                    __break(1u);
                    goto LABEL_91;
                  }

LABEL_89:
                  __break(1u);
                  goto LABEL_90;
                }

LABEL_88:
                __break(1u);
                goto LABEL_89;
              }

LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        goto LABEL_78;
      }

      __break(1u);
LABEL_76:
      v47 = BYTE6(v48);
      goto LABEL_77;
    }

LABEL_72:
    v112 = *(v46 + 16);
    v111 = *(v46 + 24);
    v47 = v111 - v112;
    if (__OFSUB__(v111, v112))
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    goto LABEL_73;
  }

LABEL_62:
  v104 = v124;
  sub_25F8221DC();
  v105 = sub_25F8221CC();
  v106 = sub_25F82268C();
  if (os_log_type_enabled(v105, v106))
  {
    v128 = v48;
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v132[0] = v108;
    *v107 = 136315138;
    v48 = v128;
    *(v107 + 4) = sub_25F75CA94(0xD000000000000043, 0x800000025F82EB50, v132);
    _os_log_impl(&dword_25F74E000, v105, v106, "%s", v107, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v108);
    MEMORY[0x25F8E88D0](v108, -1, -1);
    MEMORY[0x25F8E88D0](v107, -1, -1);

    result = (*(v129 + 8))(v124, v130);
  }

  else
  {

    result = (*(v129 + 8))(v104, v130);
  }

  if (v99 > 1)
  {
    if (v99 != 2)
    {
      v36 = 0;
      goto LABEL_82;
    }

    v110 = *(v46 + 16);
    v109 = *(v46 + 24);
    v36 = v109 - v110;
    if (!__OFSUB__(v109, v110))
    {
      goto LABEL_82;
    }

    __break(1u);
    goto LABEL_72;
  }

  if (!v99)
  {
    v36 = BYTE6(v48);
LABEL_82:
    v113 = v127;
    sub_25F76E244();
    swift_allocError();
    *v114 = v122;
    *(v114 + 8) = v36;
    *(v114 + 16) = 1;
    swift_willThrow();
    sub_25F7BEDDC(v113, type metadata accessor for UserAdjustment);
    sub_25F76D178(v46, v48);
  }

LABEL_79:
  if (!__OFSUB__(HIDWORD(v46), v46))
  {
    v36 = HIDWORD(v46) - v46;
    goto LABEL_82;
  }

LABEL_103:
  __break(1u);
  return result;
}