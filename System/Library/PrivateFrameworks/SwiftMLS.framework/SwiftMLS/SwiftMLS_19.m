uint64_t sub_26BF6CF54()
{
  v2 = *(*v1 + 704);
  v5 = *v1;
  *(*v1 + 712) = v0;

  if (v0)
  {
    v3 = sub_26BF6DBE8;
  }

  else
  {
    v3 = sub_26BF6D068;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF6D068()
{
  v124 = v0;
  v1 = *(v0[68] + *(v0[67] + 40));
  v2 = (v1 + 32);
  v3 = *(v1 + 16) + 1;
  do
  {
    if (!--v3)
    {
      v15 = v0[87];
      v16 = sub_26C009A3C();
      v17 = sub_26C00AA0C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_26BDFE000, v16, v17, "missing subject_commitment extension in GCE when decrypting name keys", v18, 2u);
        MEMORY[0x26D69A4E0](v18, -1, -1);
      }

      v19 = v0[86];
      v20 = v0[85];
      v21 = v0[84];
      v22 = v0[68];

      sub_26BE01654();
      swift_allocError();
      *v23 = 10;
      v23[112] = 9;
      swift_willThrow();
      sub_26BE00258(v20, v19);
      sub_26BE2E258((v0 + 32), &qword_28045E698, &unk_26C0204F0);
      v24 = v22;
      goto LABEL_9;
    }

    v4 = v2 + 12;
    v5 = *v2;
    v2 += 12;
  }

  while (v5 != -4090);
  v6 = v0[89];
  v7 = *(v4 - 2);
  v0[90] = v7;
  v8 = *(v4 - 1);
  v0[91] = v8;
  LOWORD(v119) = -4090;
  v120 = v7;
  v121 = v8;
  sub_26BE00608(v7, v8);
  v9 = sub_26BFDB8C0(&v119);
  v0[92] = v9;
  v0[93] = v10;
  if (v6)
  {
    v11 = v0[86];
    v12 = v0[85];
    v13 = v0[84];
    v14 = v0[68];
    sub_26BE2E258((v0 + 32), &qword_28045E698, &unk_26C0204F0);
    sub_26BE00258(v12, v11);
    sub_26BF7F05C(v14, type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v13, type metadata accessor for FileInfo);
    sub_26BE00258(v7, v8);
LABEL_10:
    v25 = v0[84];
    v26 = v0[83];
    v27 = v0[81];
    v28 = v0[80];
    v29 = v0[79];
    v30 = v0[76];
    v31 = v0[75];
    v32 = v0[74];
    v33 = v0[73];
    v34 = v0[70];
    v103 = v0[69];
    v105 = v0[68];
    v108 = v0[66];
    v111 = v0[63];
    v114 = v0[62];
    v116 = v0[59];

    v35 = v0[1];

    return v35();
  }

  v101 = v8;
  v115 = v9;
  v117 = v10;
  v37 = v0[66];
  v38 = v0[65];
  v39 = v0[64];
  v40 = v0[58];
  v41 = *(v40 + 72);
  v109 = *(v40 + 88);
  v112 = *(v40 + 80);
  v104 = *(v40 + 104);
  v106 = *(v40 + 96);
  sub_26C00A4CC();
  v42 = sub_26C00A49C();
  v44 = v43;
  result = (*(v38 + 8))(v37, v39);
  if (v44 >> 60 == 15)
  {
    __break(1u);
    return result;
  }

  v45 = v0[78];
  v46 = v0[77];
  v47 = v0[75];
  v48 = *(v0[84] + *(v0[82] + 20));
  v49 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject;
  swift_beginAccess();
  sub_26BE2E1F0(v48 + v49, v47, &qword_28045F080, &qword_26C0184C8);
  v50 = *(v45 + 48);
  v51 = v50(v47, 1, v46);
  v52 = v0[79];
  v100 = v7;
  v102 = v41;
  if (v51 == 1)
  {
    v53 = v0[77];
    v54 = v0[75];
    v55 = v0[72];
    v56 = v0[71];
    *v52 = 0;
    *(v52 + 1) = 0xE000000000000000;
    *(v52 + 2) = 0;
    *(v52 + 3) = 0xE000000000000000;
    v57 = &v52[*(v53 + 24)];
    sub_26C0098BC();
    (*(v55 + 56))(&v52[*(v53 + 28)], 1, 1, v56);
    if (v50(v54, 1, v53) != 1)
    {
      sub_26BE2E258(v0[75], &qword_28045F080, &qword_26C0184C8);
    }
  }

  else
  {
    sub_26BF7F124(v0[75], v52, type metadata accessor for FileMetadata);
  }

  v58 = v0[72];
  v59 = v0[71];
  v60 = v0[69];
  sub_26BE2E1F0(v0[79] + *(v0[77] + 28), v60, &qword_28045EF78, &unk_26C017EE0);
  v61 = *(v58 + 48);
  v62 = v61(v60, 1, v59);
  v63 = v0[79];
  v64 = v0[73];
  if (v62 == 1)
  {
    v65 = v0[71];
    v66 = v0[69];
    *v64 = xmmword_26C00BBD0;
    *(v64 + 16) = xmmword_26C00BBD0;
    *(v64 + 32) = xmmword_26C00BBD0;
    *(v64 + 48) = 0;
    *(v64 + 56) = 1;
    v67 = v64 + *(v65 + 32);
    sub_26C0098BC();
    sub_26BF7F05C(v63, type metadata accessor for FileMetadata);
    if (v61(v66, 1, v65) != 1)
    {
      sub_26BE2E258(v0[69], &qword_28045EF78, &unk_26C017EE0);
    }
  }

  else
  {
    v68 = v0[69];
    sub_26BF7F05C(v0[79], type metadata accessor for FileMetadata);
    sub_26BF7F124(v68, v64, type metadata accessor for FileEncryptionInfo);
  }

  v69 = v0[73];
  v71 = *v69;
  v70 = v69[1];
  sub_26BE00608(*v69, v70);
  sub_26BF7F05C(v69, type metadata accessor for FileEncryptionInfo);
  LOBYTE(v119) = v102;
  v120 = v112;
  v121 = v109;
  v122 = v106;
  v123 = v104;
  sub_26BE00608(v115, v117);
  v72 = sub_26BFA61F0(&v119, v42, v44, v71, v70);
  v74 = v73;
  v75 = v0[63];
  v107 = v0[62];
  v113 = v0[61];
  v118 = v0[60];
  v0[52] = v115;
  v0[53] = v117;
  sub_26BE00608(v115, v117);
  sub_26C009C5C();
  v0[54] = v72;
  v0[55] = v74;
  sub_26BE00608(v72, v74);
  sub_26C009C5C();
  v110 = MEMORY[0x26D698700](v75, v107);
  sub_26BE00258(v115, v117);
  sub_26BE00258(v71, v70);
  sub_26BE132D4(v42, v44);
  sub_26BE00258(v72, v74);
  v76 = *(v113 + 8);
  v76(v107, v118);
  v76(v75, v118);
  if ((v110 & 1) == 0)
  {
    v84 = v0[87];
    v85 = sub_26C009A3C();
    v86 = sub_26C00AA0C();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_26BDFE000, v85, v86, "key does not match commitment when decrypting name keys", v87, 2u);
      MEMORY[0x26D69A4E0](v87, -1, -1);
    }

    v88 = v0[87];

    sub_26BE00608(v115, v117);
    v89 = sub_26C009A3C();
    v90 = sub_26C00AA0C();
    sub_26BE00258(v115, v117);
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v119 = v92;
      *v91 = 136315138;
      v93 = sub_26C0090EC();
      v95 = sub_26BE29740(v93, v94, &v119);

      *(v91 + 4) = v95;
      _os_log_impl(&dword_26BDFE000, v89, v90, "commitment: %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v92);
      MEMORY[0x26D69A4E0](v92, -1, -1);
      MEMORY[0x26D69A4E0](v91, -1, -1);
    }

    v96 = v0[86];
    v97 = v0[85];
    v21 = v0[84];
    v98 = v0[68];
    sub_26BE01654();
    swift_allocError();
    *v99 = 11;
    v99[112] = 9;
    swift_willThrow();
    sub_26BE00258(v100, v101);
    sub_26BE00258(v115, v117);
    sub_26BE00258(v97, v96);
    sub_26BE2E258((v0 + 32), &qword_28045E698, &unk_26C0204F0);
    v24 = v98;
LABEL_9:
    sub_26BF7F05C(v24, type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v21, type metadata accessor for FileInfo);
    goto LABEL_10;
  }

  v78 = v0[58];
  v77 = v0[59];
  sub_26BF7F0BC(v0[84], v77, type metadata accessor for FileInfo);
  v79 = type metadata accessor for FileInfoAndSender();
  sub_26BE2E1F0((v0 + 32), v77 + *(v79 + 20), &qword_28045E698, &unk_26C0204F0);
  (*(*(v79 - 8) + 56))(v77, 0, 1, v79);
  v80 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
  swift_beginAccess();
  sub_26BE7170C(v77, v78 + v80, &qword_28045FA38, &qword_26C01D890);
  swift_endAccess();
  v81 = swift_task_alloc();
  v0[94] = v81;
  *v81 = v0;
  v81[1] = sub_26BF6DD74;
  v82 = v0[58];
  v83 = MEMORY[0x277D84F90];

  return sub_26BF394D4(v83);
}

uint64_t sub_26BF6DBE8()
{
  v1 = v0[84];
  sub_26BE00258(v0[85], v0[86]);
  sub_26BE2E258((v0 + 32), &qword_28045E698, &unk_26C0204F0);
  sub_26BF7F05C(v1, type metadata accessor for FileInfo);
  v20 = v0[89];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[76];
  v8 = v0[75];
  v9 = v0[74];
  v10 = v0[73];
  v11 = v0[70];
  v14 = v0[69];
  v15 = v0[68];
  v16 = v0[66];
  v17 = v0[63];
  v18 = v0[62];
  v19 = v0[59];

  v12 = v0[1];

  return v12();
}

uint64_t sub_26BF6DD74()
{
  v2 = *(*v1 + 752);
  v5 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = sub_26BF6E05C;
  }

  else
  {
    v3 = sub_26BF6DE88;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF6DE88()
{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[84];
  v6 = v0[83];
  v7 = v0[81];
  v8 = v0[80];
  v12 = v0[79];
  v13 = v0[76];
  v14 = v0[75];
  v15 = v0[74];
  v16 = v0[73];
  v17 = v0[70];
  v9 = v0[68];
  v18 = v0[69];
  v19 = v0[66];
  v20 = v0[63];
  v21 = v0[62];
  v22 = v0[59];
  sub_26BE00258(v0[90], v0[91]);
  sub_26BE00258(v2, v1);
  sub_26BE00258(v4, v3);
  sub_26BE2E258((v0 + 32), &qword_28045E698, &unk_26C0204F0);
  sub_26BF7F05C(v9, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v5, type metadata accessor for FileInfo);

  v10 = v0[1];

  return v10();
}

uint64_t sub_26BF6E05C()
{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[84];
  v6 = v0[68];
  sub_26BE00258(v0[90], v0[91]);
  sub_26BE00258(v2, v1);
  sub_26BE00258(v4, v3);
  sub_26BE2E258((v0 + 32), &qword_28045E698, &unk_26C0204F0);
  sub_26BF7F05C(v6, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v5, type metadata accessor for FileInfo);
  v25 = v0[95];
  v7 = v0[84];
  v8 = v0[83];
  v9 = v0[81];
  v10 = v0[80];
  v11 = v0[79];
  v12 = v0[76];
  v13 = v0[75];
  v14 = v0[74];
  v15 = v0[73];
  v16 = v0[70];
  v19 = v0[69];
  v20 = v0[68];
  v21 = v0[66];
  v22 = v0[63];
  v23 = v0[62];
  v24 = v0[59];

  v17 = v0[1];

  return v17();
}

uint64_t sub_26BF6E230(uint64_t a1, _OWORD *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *a2;
  return MEMORY[0x2822009F8](sub_26BF6E258, 0, 0);
}

uint64_t sub_26BF6E258()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  sub_26BE00608(v1, v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_26BE23BEC;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return (sub_26BEA3534)(v7);
}

uint64_t sub_26BF6E324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a3;
  v4[28] = a4;
  v4[25] = a1;
  v4[26] = a2;
  v5 = *(*(sub_26C009C8C() - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v6 = *(*(type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption(0) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v7 = sub_26C00A4EC();
  v4[31] = v7;
  v8 = *(v7 - 8);
  v4[32] = v8;
  v9 = *(v8 + 64) + 15;
  v4[33] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EF78, &unk_26C017EE0) - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F080, &qword_26C0184C8) - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v12 = type metadata accessor for FileMetadata(0);
  v4[36] = v12;
  v13 = *(v12 - 8);
  v4[37] = v13;
  v14 = *(v13 + 64) + 15;
  v4[38] = swift_task_alloc();
  v15 = type metadata accessor for FileEncryptionInfo(0);
  v4[39] = v15;
  v16 = *(v15 - 8);
  v4[40] = v16;
  v17 = *(v16 + 64) + 15;
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890) - 8) + 64) + 15;
  v4[43] = swift_task_alloc();
  v19 = type metadata accessor for FileInfoAndSender();
  v4[44] = v19;
  v20 = *(v19 - 8);
  v4[45] = v20;
  v21 = *(v20 + 64) + 15;
  v4[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF6E608, 0, 0);
}

uint64_t sub_26BF6E608()
{
  v166 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);
  v4 = *(v0 + 208);
  v5 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
  swift_beginAccess();
  sub_26BE2E1F0(v4 + v5, v3, &qword_28045FA38, &qword_26C01D890);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v7 = *(v0 + 368);
    v8 = *(v0 + 352);
    v9 = *(v0 + 288);
    v10 = *(v0 + 296);
    v11 = *(v0 + 280);
    sub_26BF7F124(*(v0 + 344), v7, type metadata accessor for FileInfoAndSender);
    sub_26BE2E1F0(v7 + *(v8 + 20), v0 + 16, &qword_28045E698, &unk_26C0204F0);
    v12 = *(v7 + *(type metadata accessor for FileInfo(0) + 20));
    v13 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject;
    swift_beginAccess();
    sub_26BE2E1F0(v12 + v13, v11, &qword_28045F080, &qword_26C0184C8);
    v14 = *(v10 + 48);
    if (v14(v11, 1, v9) == 1)
    {
      v15 = *(v0 + 312);
      v16 = *(v0 + 320);
      v17 = *(v0 + 304);
      v19 = *(v0 + 280);
      v18 = *(v0 + 288);
      *v17 = 0;
      *(v17 + 1) = 0xE000000000000000;
      *(v17 + 2) = 0;
      *(v17 + 3) = 0xE000000000000000;
      v20 = &v17[*(v18 + 24)];
      sub_26C0098BC();
      (*(v16 + 56))(&v17[*(v18 + 28)], 1, 1, v15);
      if (v14(v19, 1, v18) != 1)
      {
        sub_26BE2E258(*(v0 + 280), &qword_28045F080, &qword_26C0184C8);
      }
    }

    else
    {
      sub_26BF7F124(*(v0 + 280), *(v0 + 304), type metadata accessor for FileMetadata);
    }

    v21 = *(v0 + 312);
    v22 = *(v0 + 320);
    v23 = *(v0 + 272);
    sub_26BE2E1F0(*(v0 + 304) + *(*(v0 + 288) + 28), v23, &qword_28045EF78, &unk_26C017EE0);
    v24 = *(v22 + 48);
    v25 = v24(v23, 1, v21);
    v26 = *(v0 + 336);
    if (v25 == 1)
    {
      v28 = *(v0 + 304);
      v27 = *(v0 + 312);
      v29 = *(v0 + 272);
      *v26 = xmmword_26C00BBD0;
      *(v26 + 16) = xmmword_26C00BBD0;
      *(v26 + 32) = xmmword_26C00BBD0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 1;
      v30 = v26 + *(v27 + 32);
      sub_26C0098BC();
      sub_26BF7F05C(v28, type metadata accessor for FileMetadata);
      if (v24(v29, 1, v27) != 1)
      {
        sub_26BE2E258(*(v0 + 272), &qword_28045EF78, &unk_26C017EE0);
      }
    }

    else
    {
      v31 = *(v0 + 272);
      sub_26BF7F05C(*(v0 + 304), type metadata accessor for FileMetadata);
      sub_26BF7F124(v31, v26, type metadata accessor for FileEncryptionInfo);
    }

    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 328);
    v33 = *(v0 + 336);
    v34 = *(v0 + 208);
    v35 = sub_26C009A5C();
    __swift_project_value_buffer(v35, qword_280478EE8);
    sub_26BF7F0BC(v33, v32, type metadata accessor for FileEncryptionInfo);

    v36 = sub_26C009A3C();
    v37 = sub_26C00AA1C();

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 328);
    if (v38)
    {
      v162 = v37;
      v40 = *(v0 + 208);
      v41 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      *&v164 = v160;
      *v41 = 136315394;

      v42 = sub_26BE3D034();
      v44 = v43;

      v45 = sub_26BE29740(v42, v44, &v164);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      *(v0 + 192) = sub_26BF87240(*(v39 + 32), *(v39 + 40));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
      sub_26BE3C0F4();
      sub_26C00A3EC();

      v46 = sub_26BE411D0(16);
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v53 = MEMORY[0x26D698FE0](v46, v48, v50, v52);
      v55 = v54;

      sub_26BF7F05C(v39, type metadata accessor for FileEncryptionInfo);
      v56 = sub_26BE29740(v53, v55, &v164);

      *(v41 + 14) = v56;
      _os_log_impl(&dword_26BDFE000, v36, v162, "%s: decrypting group name, with FileInfo with tag %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v160, -1, -1);
      MEMORY[0x26D69A4E0](v41, -1, -1);
    }

    else
    {

      sub_26BF7F05C(v39, type metadata accessor for FileEncryptionInfo);
    }

    v58 = *(v0 + 256);
    v57 = *(v0 + 264);
    v59 = *(v0 + 248);
    sub_26C00A4CC();
    v60 = sub_26C00A49C();
    v62 = v61;
    result = (*(v58 + 8))(v57, v59);
    if (v62 >> 60 != 15)
    {
      v64 = *(v0 + 224);
      v65 = v64 >> 62;
      v161 = v60;
      v163 = v62;
      if ((v64 >> 62) > 1)
      {
        if (v65 != 2)
        {
          v66 = 0;
          goto LABEL_27;
        }

        v67 = *(v0 + 216);
        v69 = *(v67 + 16);
        v68 = *(v67 + 24);
        v70 = __OFSUB__(v68, v69);
        v71 = v68 - v69;
        if (!v70)
        {
          v159 = v71;
          v72 = type metadata accessor for RCSFileAttachmentCrypto.SeekableDataInputStream();
          v73 = objc_allocWithZone(v72);
          v74 = &v73[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data];
          *v74 = v67;
          v74[1] = v64;
          v75 = *(v67 + 16);
LABEL_25:
          sub_26BE00608(v67, v64);
          sub_26BE00608(v67, v64);
LABEL_28:
          v79 = *(v0 + 336);
          v80 = *(v0 + 232);
          v158 = *(v0 + 240);
          v81 = *(v0 + 216);
          v82 = *(v0 + 224);
          *&v73[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_pos] = v75;
          v83 = sub_26C0090DC();
          *(v0 + 152) = v73;
          *(v0 + 160) = v72;
          v84 = objc_msgSendSuper2((v0 + 152), sel_initWithData_, v83);
          sub_26BE00258(v81, v82);

          [v84 open];
          v85 = [objc_allocWithZone(MEMORY[0x277CBEB78]) initToMemory];
          [v85 open];
          v86 = *v79;
          v87 = v79[1];
          *(v0 + 168) = *v79;
          *(v0 + 176) = v87;
          sub_26BE00608(v86, v87);
          sub_26C009C5C();
          v88 = v79[2];
          v89 = v79[3];
          v91 = v79[4];
          v90 = v79[5];
          sub_26BE00608(v88, v89);
          sub_26BE00608(v91, v90);
          v92 = v84;
          v93 = v85;
          sub_26BE2BAE8(v161, v163);
          LOBYTE(v164) = 1;
          v94 = v80;
          v95 = v92;
          v96 = v91;
          v97 = v93;
          sub_26BF9F87C(v94, v88, v89, v96, v90, v92, v159, v93, v158, v161, v163, 0, 1, 10240);
          v109 = *(v0 + 240);
          RCSFileAttachmentCrypto.RCSFileDecryption.decryptCiphertext()();
          if (v110)
          {
            v111 = v97;
            v112 = v110;
            v113 = sub_26C009A3C();
            v114 = sub_26C00AA0C();

            if (os_log_type_enabled(v113, v114))
            {
              v115 = swift_slowAlloc();
              v116 = swift_slowAlloc();
              *v115 = 138412290;
              v117 = v110;
              v118 = _swift_stdlib_bridgeErrorToNSError();
              *(v115 + 4) = v118;
              *v116 = v118;
              _os_log_impl(&dword_26BDFE000, v113, v114, "decryption of a group name failed with error %@, may need to retry", v115, 0xCu);
              sub_26BE2E258(v116, &qword_28045FB40, &unk_26C021280);
              MEMORY[0x26D69A4E0](v116, -1, -1);
              MEMORY[0x26D69A4E0](v115, -1, -1);
            }

            goto LABEL_35;
          }

          if ([v97 propertyForKey_])
          {
            sub_26C00AB0C();
            swift_unknownObjectRelease();
          }

          else
          {
            v164 = 0u;
            v165 = 0u;
          }

          v123 = v164;
          *(v0 + 88) = v165;
          *(v0 + 72) = v123;
          if (*(v0 + 96))
          {
            sub_26BE1335C();
            if (swift_dynamicCast())
            {
              v124 = *(v0 + 264);
              v110 = *(v0 + 184);
              v125 = sub_26C00910C();
              v127 = v126;

              sub_26C00A4CC();
              v128 = sub_26C00A4AC();
              v130 = v129;
              sub_26BE00258(v125, v127);
              if (v130)
              {
                v131 = *(v0 + 368);
                v132 = *(v0 + 336);
                v133 = v97;
                v134 = *(v0 + 240);
                v135 = *(v0 + 200);

                sub_26BE132D4(v161, v163);
                sub_26BF7F05C(v134, type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption);
                sub_26BF7F05C(v132, type metadata accessor for FileEncryptionInfo);
                sub_26BF7F05C(v131, type metadata accessor for FileInfoAndSender);
                v137 = *(v0 + 32);
                v136 = *(v0 + 48);
                v138 = *(v0 + 16);
                *(v135 + 64) = *(v0 + 64);
                *(v135 + 32) = v137;
                *(v135 + 48) = v136;
                *(v135 + 16) = v138;
                *v135 = v128;
                *(v135 + 8) = v130;
                goto LABEL_47;
              }

              v111 = v97;
              v113 = sub_26C009A3C();
              v156 = sub_26C00AA0C();
              if (os_log_type_enabled(v113, v156))
              {
                v157 = swift_slowAlloc();
                *v157 = 0;
                _os_log_impl(&dword_26BDFE000, v113, v156, "Failed to UTF8 decode the group name", v157, 2u);
                MEMORY[0x26D69A4E0](v157, -1, -1);
              }

LABEL_35:
              v119 = *(v0 + 368);
              v120 = *(v0 + 336);
              v121 = *(v0 + 240);
              v122 = *(v0 + 200);

              sub_26BE132D4(v161, v163);
              sub_26BF7F05C(v121, type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption);
              sub_26BF7F05C(v120, type metadata accessor for FileEncryptionInfo);
              sub_26BE2E258(v0 + 16, &qword_28045E698, &unk_26C0204F0);
              sub_26BF7F05C(v119, type metadata accessor for FileInfoAndSender);
              *v122 = 0u;
              *(v122 + 16) = 0u;
              *(v122 + 32) = 0u;
              *(v122 + 48) = 0u;
              *(v122 + 64) = 0;
LABEL_47:
              v146 = *(v0 + 368);
              v147 = *(v0 + 336);
              v148 = *(v0 + 344);
              v149 = *(v0 + 328);
              v150 = *(v0 + 304);
              v152 = *(v0 + 272);
              v151 = *(v0 + 280);
              v153 = *(v0 + 264);
              v155 = *(v0 + 232);
              v154 = *(v0 + 240);

              v108 = *(v0 + 8);
              goto LABEL_29;
            }
          }

          else
          {
            sub_26BE2E258(v0 + 72, &qword_28045FB48, &qword_26C01FCF8);
          }

          v139 = sub_26C009A3C();
          v140 = sub_26C00AA0C();
          if (os_log_type_enabled(v139, v140))
          {
            v141 = swift_slowAlloc();
            *v141 = 0;
            _os_log_impl(&dword_26BDFE000, v139, v140, "Failed to retrieve the plaintext from an output stream for file attachment decryption", v141, 2u);
            MEMORY[0x26D69A4E0](v141, -1, -1);
          }

          v142 = *(v0 + 368);
          v143 = *(v0 + 336);
          v144 = *(v0 + 240);
          v145 = *(v0 + 200);

          sub_26BE132D4(v161, v163);
          sub_26BF7F05C(v144, type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption);
          sub_26BF7F05C(v143, type metadata accessor for FileEncryptionInfo);
          sub_26BE2E258(v0 + 16, &qword_28045E698, &unk_26C0204F0);
          sub_26BF7F05C(v142, type metadata accessor for FileInfoAndSender);
          *v145 = 0u;
          *(v145 + 16) = 0u;
          *(v145 + 32) = 0u;
          *(v145 + 48) = 0u;
          *(v145 + 64) = 0;
          goto LABEL_47;
        }

        __break(1u);
      }

      else
      {
        if (!v65)
        {
          v66 = BYTE6(v64);
LABEL_27:
          v159 = v66;
          v77 = *(v0 + 216);
          v72 = type metadata accessor for RCSFileAttachmentCrypto.SeekableDataInputStream();
          v73 = objc_allocWithZone(v72);
          v75 = 0;
          v78 = &v73[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data];
          *v78 = v77;
          *(v78 + 1) = v64;
          goto LABEL_28;
        }

        v67 = *(v0 + 216);
        if (!__OFSUB__(HIDWORD(v67), v67))
        {
          v159 = HIDWORD(v67) - v67;
          v72 = type metadata accessor for RCSFileAttachmentCrypto.SeekableDataInputStream();
          v73 = objc_allocWithZone(v72);
          v76 = &v73[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data];
          *v76 = v67;
          v76[1] = v64;
          v75 = v67;
          goto LABEL_25;
        }
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_26BE2E258(*(v0 + 344), &qword_28045FA38, &qword_26C01D890);
  sub_26BE01654();
  swift_allocError();
  *v6 = 8;
  v6[112] = 9;
  swift_willThrow();
  v98 = *(v0 + 368);
  v99 = *(v0 + 336);
  v100 = *(v0 + 344);
  v101 = *(v0 + 328);
  v102 = *(v0 + 304);
  v104 = *(v0 + 272);
  v103 = *(v0 + 280);
  v105 = *(v0 + 264);
  v106 = *(v0 + 232);
  v107 = *(v0 + 240);

  v108 = *(v0 + 8);
LABEL_29:

  return v108();
}

uint64_t sub_26BF6F524(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *a2;
  return MEMORY[0x2822009F8](sub_26BF6F54C, 0, 0);
}

uint64_t sub_26BF6F54C()
{
  v1 = v0[3];
  v2 = v0[4];

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_26BF7F19C;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return (sub_26BEA4A6C)(v6);
}

uint64_t sub_26BF6F614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[311] = a3;
  v3[310] = a2;
  v3[309] = a1;
  v4 = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v3[312] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[313] = swift_task_alloc();
  v6 = type metadata accessor for MLS.GroupState();
  v3[314] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[315] = swift_task_alloc();
  v3[316] = swift_task_alloc();
  v3[317] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF6F6F8, 0, 0);
}

uint64_t sub_26BF6F6F8()
{
  v131 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2488);
  v2 = *(v0 + 2480);
  v3 = sub_26C009A5C();
  __swift_project_value_buffer(v3, qword_280478EE8);
  swift_bridgeObjectRetain_n();

  v4 = sub_26C009A3C();
  v5 = sub_26C00AA1C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 2488);
  if (v6)
  {
    v8 = *(v0 + 2480);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v129[0] = v10;
    *v9 = 136315394;

    v11 = sub_26BE3D034();
    v13 = v12;

    v14 = sub_26BE29740(v11, v13, v129);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2048;
    v15 = *(v7 + 16);

    *(v9 + 14) = v15;

    _os_log_impl(&dword_26BDFE000, v4, v5, "%s: creating new era, with %ld input key packages", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x26D69A4E0](v10, -1, -1);
    MEMORY[0x26D69A4E0](v9, -1, -1);
  }

  else
  {
    v16 = *(v0 + 2488);
    swift_bridgeObjectRelease_n();
  }

  v17 = *(*(v0 + 2480) + 48);
  result = swift_beginAccess();
  if (*(v17 + 312) == 1)
  {
    v19 = *(v0 + 2480);
    v20 = *(v19 + 152);
    v21 = (v20 + 1);
    if (v20 == -1)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v129[0]) = 0;
      v128 = sub_26BE1CB94(v21);
      v22 = *(v0 + 2480);
      swift_retain_n();
      v23 = sub_26C009A3C();
      v24 = sub_26C00AA1C();
      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v0 + 2480);
      if (v25)
      {
        v27 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v129[0] = v126;
        *v27 = 136315650;

        v28 = sub_26BE3D034();
        v30 = v29;

        v31 = sub_26BE29740(v28, v30, v129);

        *(v27 + 4) = v31;
        *(v27 + 12) = 1024;
        v32 = *(v19 + 152);

        *(v27 + 14) = v32;

        *(v27 + 18) = 1024;
        *(v27 + 20) = v21;
        _os_log_impl(&dword_26BDFE000, v23, v24, "%s: moving from era %u to era %u", v27, 0x18u);
        __swift_destroy_boxed_opaque_existential_1(v126);
        MEMORY[0x26D69A4E0](v126, -1, -1);
        MEMORY[0x26D69A4E0](v27, -1, -1);
      }

      else
      {
        v42 = *(v0 + 2480);
      }

      v43 = *(v0 + 2480);
      v44 = *(v43 + 32);
      v45 = *(v43 + 40);
      v46 = *(v43 + 72);
      if (v46)
      {
        v47 = 2;
      }

      else
      {
        v47 = 1;
      }

      v127 = v47;
      v48 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
      swift_beginAccess();
      sub_26BE038A8(v17 + v48, v0 + 2344);
      v50 = *(v43 + 64);
      v129[0] = *(v43 + 56);
      v49 = v129[0];
      v129[1] = v50;
      sub_26BE00608(v44, v45);
      sub_26BE04890(v49, v50);
      v125 = v44;
      v51 = MLS.Identity.Credential.serializedRepresentation.getter();
      v53 = v52;
      sub_26BE0489C(v49, v50);
      MLS.Credential.init(rawValue:)(v51, v53, (v0 + 2456));
      v54 = *(v0 + 2456);
      v55 = *(v0 + 2464);
      v130[0] = v46;

      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v130, v129);
      sub_26BE295A0(v17 + 40, v0 + 16);

      sub_26BE1118C((v0 + 2264));
      v113 = v45;
      sub_26BE29710(v0 + 16);

      sub_26BE03890((v0 + 2264), v0 + 2304);
      sub_26BE038A8(v0 + 2304, v0 + 2224);
      sub_26BE038A8(v0 + 2344, v0 + 2104);
      v120 = *(v17 + 336);
      v121 = *(v17 + 344);
      v122 = *(v17 + 352);
      v123 = *(v17 + 360);
      v124 = *(v17 + 368);
      v56 = *(v0 + 2248);
      v119 = v55;
      v57 = *(v0 + 2256);
      __swift_project_boxed_opaque_existential_1((v0 + 2224), v56);
      v58 = *(v57 + 8);
      v118 = v54;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v114 = *(AssociatedTypeWitness - 8);
      v60 = *(v114 + 64) + 15;
      v61 = swift_task_alloc();
      v111 = *(v58 + 32);

      v111(v56, v58);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v112 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v117 = v63;
      (*(v114 + 8))(v61, AssociatedTypeWitness);
      v64 = *(v0 + 2128);
      v65 = *(v0 + 2136);
      __swift_project_boxed_opaque_existential_1((v0 + 2104), v64);
      v66 = swift_getAssociatedTypeWitness();
      v67 = *(v66 - 8);
      v68 = *(v67 + 64) + 15;
      v69 = swift_task_alloc();
      (*(v65 + 40))(v64, v65);
      v70 = swift_getAssociatedConformanceWitness();
      v71 = (*(*(v70 + 8) + 16))(v66);
      v73 = v72;
      (*(v67 + 8))(v69, v66);

      *(v0 + 928) = v112;
      *(v0 + 936) = v117;
      v115 = v71;
      v116 = v73;
      *(v0 + 944) = v71;
      *(v0 + 952) = v73;
      *(v0 + 960) = v118;
      *(v0 + 968) = v119;
      *(v0 + 976) = v120;
      *(v0 + 984) = v121;
      *(v0 + 992) = v122;
      *(v0 + 1000) = v123;
      *(v0 + 1008) = v124;
      *(v0 + 1016) = 0;
      *(v0 + 1024) = -1;
      *(v0 + 1032) = 0;
      *(v0 + 1033) = *(v0 + 371);
      *(v0 + 1036) = *(v0 + 374);
      *(v0 + 1040) = MEMORY[0x277D84F90];
      *(v0 + 1048) = 0;
      *(v0 + 1056) = 0xC000000000000000;
      v74 = *(v0 + 928);
      v75 = *(v0 + 944);
      v76 = *(v0 + 976);
      *(v0 + 1504) = *(v0 + 960);
      *(v0 + 1520) = v76;
      *(v0 + 1472) = v74;
      *(v0 + 1488) = v75;
      v77 = *(v0 + 992);
      v78 = *(v0 + 1008);
      v79 = *(v0 + 1024);
      v80 = *(v0 + 1040);
      *(v0 + 1600) = *(v0 + 1056);
      *(v0 + 1568) = v79;
      *(v0 + 1584) = v80;
      *(v0 + 1536) = v77;
      *(v0 + 1552) = v78;
      *(v0 + 2432) = xmmword_26C00DA60;
      *(v0 + 2448) = 0;
      sub_26BE00758(v0 + 928, v0 + 1744);
      v81 = sub_26BE5B600(v0 + 2432);
      v83 = v82;
      v84 = *(v0 + 1584);
      *(v0 + 1432) = *(v0 + 1568);
      *(v0 + 1448) = v84;
      *(v0 + 1464) = *(v0 + 1600);
      v85 = *(v0 + 1520);
      *(v0 + 1368) = *(v0 + 1504);
      *(v0 + 1384) = v85;
      v86 = *(v0 + 1552);
      *(v0 + 1400) = *(v0 + 1536);
      *(v0 + 1416) = v86;
      v87 = *(v0 + 1488);
      *(v0 + 1336) = *(v0 + 1472);
      *(v0 + 1352) = v87;
      sub_26BE00854(v0 + 1336);
      v88 = *(v0 + 2128);
      v89 = *(v0 + 2136);
      __swift_project_boxed_opaque_existential_1((v0 + 2104), v88);
      v90 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0x65646F4E6661654CLL, 0xEB00000000534254, v81, v83, v88, v89);
      v110 = *(v0 + 2520);
      v91 = v90;
      v92 = v83;
      v94 = v93;
      sub_26BE00258(v81, v92);
      sub_26BE00258(0, 0xC000000000000000);
      *(v0 + 378) = v127;
      sub_26BE038A8(v0 + 2224, v0 + 2144);
      sub_26BE038A8(v0 + 2104, v0 + 2184);
      *(v0 + 1200) = v112;
      *(v0 + 1208) = v117;
      *(v0 + 1216) = v115;
      *(v0 + 1224) = v116;
      *(v0 + 1232) = v118;
      *(v0 + 1240) = v119;
      *(v0 + 1248) = v120;
      *(v0 + 1256) = v121;
      *(v0 + 1264) = v122;
      *(v0 + 1272) = v123;
      *(v0 + 1280) = v124;
      *(v0 + 1288) = 0;
      *(v0 + 1296) = -1;
      *(v0 + 1304) = 0;
      *(v0 + 1305) = *(v0 + 371);
      *(v0 + 1308) = *(v0 + 374);
      *(v0 + 1312) = MEMORY[0x277D84F90];
      *(v0 + 1320) = v91;
      *(v0 + 1328) = v94;
      v95 = *(v0 + 1248);
      *(v0 + 1096) = *(v0 + 1232);
      *(v0 + 1112) = v95;
      v96 = *(v0 + 1216);
      *(v0 + 1064) = *(v0 + 1200);
      *(v0 + 1080) = v96;
      v97 = *(v0 + 1264);
      v98 = *(v0 + 1280);
      v99 = *(v0 + 1296);
      v100 = *(v0 + 1312);
      *(v0 + 1192) = *(v0 + 1328);
      *(v0 + 1160) = v99;
      *(v0 + 1176) = v100;
      *(v0 + 1128) = v97;
      *(v0 + 1144) = v98;
      sub_26BE00758(v0 + 1200, v0 + 792);
      sub_26BFEF948(v125, v113, (v0 + 378), (v0 + 2144), (v0 + 2184), (v0 + 1064), v128, v110);
      v101 = *(v0 + 2536);
      v102 = *(v0 + 2528);
      v103 = *(v0 + 2520);
      v104 = *(v0 + 2512);

      __swift_destroy_boxed_opaque_existential_1((v0 + 2344));
      __swift_destroy_boxed_opaque_existential_1((v0 + 2304));
      *(v0 + 520) = v112;
      *(v0 + 528) = v117;
      *(v0 + 536) = v115;
      *(v0 + 544) = v116;
      *(v0 + 552) = v118;
      *(v0 + 560) = v119;
      *(v0 + 568) = v120;
      *(v0 + 576) = v121;
      *(v0 + 584) = v122;
      *(v0 + 592) = v123;
      *(v0 + 600) = v124;
      *(v0 + 608) = xmmword_26C015F70;
      *(v0 + 624) = 0;
      *(v0 + 625) = *(v0 + 371);
      *(v0 + 628) = *(v0 + 374);
      *(v0 + 632) = MEMORY[0x277D84F90];
      *(v0 + 640) = v91;
      *(v0 + 648) = v94;
      sub_26BE00854(v0 + 520);
      sub_26BF7F124(v103, v102, type metadata accessor for MLS.GroupState);
      __swift_destroy_boxed_opaque_existential_1((v0 + 2104));
      __swift_destroy_boxed_opaque_existential_1((v0 + 2224));
      sub_26BF7F124(v102, v101, type metadata accessor for MLS.GroupState);
      v105 = *(v104 + 76);
      v106 = *(v101 + v105);

      *(v101 + v105) = v17;
      v107 = swift_task_alloc();
      *(v0 + 2544) = v107;
      *v107 = v0;
      v107[1] = sub_26BF70604;
      v108 = *(v0 + 2488);
      v109 = *(v0 + 2480);

      return sub_26BE30F1C(v108);
    }
  }

  else
  {
    v33 = sub_26C009A3C();
    v34 = sub_26C00AA0C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_26BDFE000, v33, v34, "eras not in configuration", v35, 2u);
      MEMORY[0x26D69A4E0](v35, -1, -1);
    }

    sub_26BE01654();
    swift_allocError();
    *v36 = 41;
    v36[112] = 0;
    swift_willThrow();
    v37 = *(v0 + 2536);
    v38 = *(v0 + 2528);
    v39 = *(v0 + 2520);
    v40 = *(v0 + 2504);

    v41 = *(v0 + 8);

    return v41();
  }

  return result;
}

uint64_t sub_26BF70604()
{
  v2 = *(*v1 + 2544);
  v5 = *v1;
  *(*v1 + 2552) = v0;

  if (v0)
  {
    v3 = sub_26BF70BF8;
  }

  else
  {
    v3 = sub_26BF70718;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF70718()
{
  v1 = *(v0 + 2552);
  v2 = *(v0 + 2536);
  v3 = *(v0 + 2488);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = sub_26BE5D390(sub_26BF7F20C, v4, v3);
  *(v0 + 2560) = v5;
  if (v1)
  {
    v6 = *(v0 + 2536);

    sub_26BF7F05C(v6, type metadata accessor for MLS.GroupState);
    v7 = *(v0 + 2536);
    v8 = *(v0 + 2528);
    v9 = *(v0 + 2520);
    v10 = *(v0 + 2504);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = v5;
    v14 = *(v0 + 2504);
    v15 = *(v0 + 2496);

    *(v0 + 2096) = 0;
    *(v0 + 2080) = 0u;
    *(v0 + 2064) = 0u;
    *(v0 + 1896) = 0u;
    *(v0 + 1912) = 0u;
    *(v0 + 1928) = 0u;
    *(v0 + 1944) = 0u;
    *(v0 + 1960) = 0u;
    sub_26BE2962C(0, 0x3000000000000000uLL);
    *(v0 + 1880) = 0;
    *(v0 + 1888) = 0x3000000000000000;
    sub_26BE7170C(v0 + 2064, v0 + 1896, &qword_28045E468, &qword_26C00ECA0);
    v16 = *(v0 + 1944);
    v17 = *(v0 + 1952);
    v18 = *(v0 + 1960);
    v19 = *(v0 + 1968);
    sub_26BE701EC(*(v0 + 1936));
    *(v0 + 1968) = 0u;
    *(v0 + 1952) = 0u;
    *(v0 + 1936) = 0u;
    v20 = v15[5];
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
    (*(*(v21 - 8) + 56))(&v14[v20], 1, 3, v21);
    *v14 = 0;
    v14[v15[6]] = 0;
    v14[v15[7]] = 0;
    v14[v15[8]] = 0;
    *&v14[v15[9]] = MEMORY[0x277D84F90];
    v22 = swift_task_alloc();
    *(v0 + 2568) = v22;
    *v22 = v0;
    v22[1] = sub_26BF709B0;
    v23 = *(v0 + 2536);
    v24 = *(v0 + 2504);
    v25 = *(v0 + 2480);

    return sub_26BF54A88(v0 + 1984, v23, v13, v0 + 1880, v24);
  }
}

uint64_t sub_26BF709B0()
{
  v2 = *v1;
  v3 = (*v1)[321];
  v4 = *v1;
  v2[322] = v0;

  v5 = v2[320];
  sub_26BF7F05C(v2[313], type metadata accessor for MLS.GroupState.CommitOptions);

  sub_26BF7E1E8((v2 + 235));
  if (v0)
  {
    v6 = sub_26BF70CA4;
  }

  else
  {
    v6 = sub_26BF70B24;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF70B24()
{
  v1 = *(v0 + 2536);
  v2 = *(v0 + 2528);
  v3 = *(v0 + 2520);
  v4 = *(v0 + 2504);
  v5 = *(v0 + 2472);
  v6 = *(v0 + 2016);
  v7 = *(v0 + 2048);
  v8 = *(v0 + 2000);
  v5[3] = *(v0 + 2032);
  v5[4] = v7;
  v5[1] = v8;
  v5[2] = v6;
  *v5 = *(v0 + 1984);
  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_26BF70BF8()
{
  sub_26BF7F05C(v0[317], type metadata accessor for MLS.GroupState);
  v1 = v0[319];
  v2 = v0[317];
  v3 = v0[316];
  v4 = v0[315];
  v5 = v0[313];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26BF70CA4()
{
  sub_26BF7F05C(v0[317], type metadata accessor for MLS.GroupState);
  v1 = v0[322];
  v2 = v0[317];
  v3 = v0[316];
  v4 = v0[315];
  v5 = v0[313];

  v6 = v0[1];

  return v6();
}

double sub_26BF70D50@<D0>(__int128 *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v24 = *a1;
  MLS.Client.KeyPackage.asKeyPackage()(v25);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    v20 = v25[8];
    v21 = v25[9];
    v22 = v25[10];
    v23 = v26;
    v16 = v25[4];
    v17 = v25[5];
    v18 = v25[6];
    v19 = v25[7];
    v12 = v25[0];
    v13 = v25[1];
    v14 = v25[2];
    v15 = v25[3];
    sub_26BE7FED4(&v12);
    v7 = v21;
    *(a3 + 128) = v20;
    *(a3 + 144) = v7;
    *(a3 + 160) = v22;
    *(a3 + 176) = v23;
    v8 = v17;
    *(a3 + 64) = v16;
    *(a3 + 80) = v8;
    v9 = v19;
    *(a3 + 96) = v18;
    *(a3 + 112) = v9;
    v10 = v13;
    *a3 = v12;
    *(a3 + 16) = v10;
    result = *&v14;
    v11 = v15;
    *(a3 + 32) = v14;
    *(a3 + 48) = v11;
  }

  return result;
}

uint64_t sub_26BF70E2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(v4 + 184) = a3;
  *(v4 + 104) = a2;
  *(v4 + 112) = a4;
  v5 = type metadata accessor for MLS.GroupState();
  *(v4 + 120) = v5;
  v6 = *(v5 - 8);
  *(v4 + 128) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF70EF0, 0, 0);
}

uint64_t sub_26BF70EF0()
{
  v52 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_26C009A5C();
  *(v0 + 144) = __swift_project_value_buffer(v2, qword_280478EE8);
  swift_retain_n();
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 184);
    v6 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v51[0] = v8;
    *v7 = 136315650;

    v9 = sub_26BE3D034();
    v11 = v10;

    v12 = sub_26BE29740(v9, v11, v51);

    *(v7 + 4) = v12;
    *(v7 + 12) = 1024;
    LODWORD(v11) = *(v6 + 152);

    *(v7 + 14) = v11;

    *(v7 + 18) = 1024;
    *(v7 + 20) = v5;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: advancing era from %u to %u", v7, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  else
  {
    v13 = *(v0 + 104);
  }

  v14 = *(v0 + 120);
  v15 = *(*(v0 + 112) + *(v14 + 40));
  v16 = sub_26BE81FE0(v15);
  if ((v16 & 0x100000000) != 0)
  {
    v16 = sub_26BE4126C();
  }

  if (v16 == *(v0 + 184))
  {
    v17 = *(v0 + 104);
    v18 = *(*(v0 + 112) + 24);
    swift_beginAccess();
    sub_26BF75208(v51, v16, v18);
    swift_endAccess();
    v19 = sub_26BE81FE0(v15);
    if ((v19 & 0x100000000) != 0)
    {
      LODWORD(v19) = sub_26BE4126C();
    }

    v31 = *(v0 + 112);
    v30 = *(v0 + 120);
    v32 = *(v0 + 104);
    *(v32 + 152) = v19;
    *(v32 + 24) = v18;
    sub_26BE038A8(v31 + *(v30 + 56), v0 + 16);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v32 + 112));
    sub_26BE03890((v0 + 16), v32 + 112);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
    *(v0 + 152) = v33;
    v34 = *(*(v33 - 8) + 72);
    v35 = *(*(v33 - 8) + 80);
    *(v0 + 188) = v35;
    v36 = (v35 + 32) & ~v35;
    v37 = swift_allocObject();
    *(v0 + 160) = v37;
    *(v37 + 16) = xmmword_26C011280;
    v38 = sub_26BE81FE0(v15);
    if ((v38 & 0x100000000) != 0)
    {
      LODWORD(v38) = sub_26BE4126C();
    }

    v39 = v37 + v36;
    v40 = *(v0 + 120);
    v41 = *(v0 + 128);
    v42 = *(v0 + 112);
    v43 = *(v33 + 48);
    *v39 = v38;
    *(v39 + 8) = v18;
    sub_26BF7F0BC(v42, v37 + v36 + v43, type metadata accessor for MLS.GroupState);
    (*(v41 + 56))(v37 + v36 + v43, 0, 1, v40);
    v44 = swift_task_alloc();
    *(v0 + 168) = v44;
    *v44 = v0;
    v44[1] = sub_26BF71500;
    v45 = *(v0 + 104);

    return sub_26BF394D4(v37);
  }

  else
  {
    v20 = *(v0 + 104);
    sub_26BF7F0BC(*(v0 + 112), *(v0 + 136), type metadata accessor for MLS.GroupState);

    v21 = sub_26C009A3C();
    v22 = sub_26C00AA0C();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 136);
    if (v23)
    {
      v25 = *(v0 + 184);
      v26 = *(v0 + 104);
      v27 = swift_slowAlloc();
      *v27 = 67109632;
      *(v27 + 4) = *(v26 + 152);

      *(v27 + 8) = 1024;
      *(v27 + 10) = v25;
      *(v27 + 14) = 1024;
      v28 = sub_26BE81FE0(*(v24 + *(v14 + 40)));
      v47 = v28;
      if ((v28 & 0x100000000) != 0)
      {
        v47 = sub_26BE4126C();
      }

      sub_26BF7F05C(*(v0 + 136), type metadata accessor for MLS.GroupState);
      *(v27 + 16) = v47;
      _os_log_impl(&dword_26BDFE000, v21, v22, "Attempted to advance era from %u to %u, but newGroupState has era %u", v27, 0x14u);
      MEMORY[0x26D69A4E0](v27, -1, -1);
    }

    else
    {
      v29 = *(v0 + 104);
      sub_26BF7F05C(*(v0 + 136), type metadata accessor for MLS.GroupState);
    }

    sub_26BE01654();
    swift_allocError();
    *v48 = 45;
    v48[112] = 0;
    swift_willThrow();
    v49 = *(v0 + 136);

    v50 = *(v0 + 8);

    return v50();
  }
}

uint64_t sub_26BF71500()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v11 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_26BF717E0;
  }

  else
  {
    v5 = *(v2 + 188);
    v8 = v2 + 152;
    v6 = *(v2 + 152);
    v7 = *(v8 + 8);
    swift_setDeallocating();
    v9 = *(v7 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v4 = sub_26BF71654;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF71654()
{
  v17 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 184);
    v6 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315394;

    v9 = sub_26BE3D034();
    v11 = v10;

    v12 = sub_26BE29740(v9, v11, &v16);

    *(v7 + 4) = v12;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v5;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: advanced era to %u", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v13 = *(v0 + 136);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_26BF717E0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = (*(v0 + 188) + 32) & ~*(v0 + 188);
  swift_setDeallocating();
  v4 = *(v2 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v5 = *(v0 + 176);
  v6 = *(v0 + 136);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26BF71884(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_26BF718A4, 0, 0);
}

uint64_t sub_26BF718A4()
{
  v23 = v0;
  v1 = *(v0 + 104);
  v2 = type metadata accessor for MLS.GroupState();
  v3 = *(v1 + *(v2 + 40));
  v4 = sub_26BE81FE0(v3);
  if ((v4 & 0x100000000) != 0)
  {
    v4 = sub_26BE4126C();
  }

  v5 = *(v0 + 112);
  v6 = *(*(v0 + 104) + 24);
  swift_beginAccess();
  sub_26BF75208(v22, v4, v6);
  swift_endAccess();
  v7 = sub_26BE81FE0(v3);
  if ((v7 & 0x100000000) != 0)
  {
    LODWORD(v7) = sub_26BE4126C();
  }

  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  *(v9 + 152) = v7;
  *(v9 + 24) = v6;
  sub_26BE038A8(v8 + *(v2 + 56), v0 + 16);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v9 + 112));
  sub_26BE03890((v0 + 16), v9 + 112);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
  *(v0 + 120) = v10;
  v11 = *(*(v10 - 8) + 72);
  v12 = *(*(v10 - 8) + 80);
  *(v0 + 152) = v12;
  v13 = (v12 + 32) & ~v12;
  v14 = swift_allocObject();
  *(v0 + 128) = v14;
  *(v14 + 16) = xmmword_26C011280;
  v15 = sub_26BE81FE0(v3);
  if ((v15 & 0x100000000) != 0)
  {
    LODWORD(v15) = sub_26BE4126C();
  }

  v16 = v14 + v13;
  v17 = *(v0 + 104);
  v18 = *(v10 + 48);
  *v16 = v15;
  *(v16 + 8) = v6;
  sub_26BF7F0BC(v17, v14 + v13 + v18, type metadata accessor for MLS.GroupState);
  (*(*(v2 - 8) + 56))(v14 + v13 + v18, 0, 1, v2);
  v19 = swift_task_alloc();
  *(v0 + 136) = v19;
  *v19 = v0;
  v19[1] = sub_26BF71B84;
  v20 = *(v0 + 112);

  return sub_26BF394D4(v14);
}

uint64_t sub_26BF71B84()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  *(v3 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BF71D00, 0, 0);
  }

  else
  {
    v4 = *(v3 + 152);
    v5 = *(v3 + 120);
    v6 = *(v3 + 128);
    swift_setDeallocating();
    v7 = *(v6 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v8 = *(v3 + 8);

    return v8();
  }
}

uint64_t sub_26BF71D00()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = (*(v0 + 152) + 32) & ~*(v0 + 152);
  swift_setDeallocating();
  v4 = *(v2 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v5 = *(v0 + 8);
  v6 = *(v0 + 144);

  return v5();
}

uint64_t sub_26BF71D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_26BF71DBC, 0, 0);
}

uint64_t sub_26BF71DBC()
{
  v17 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_26C009A5C();
  v0[4] = __swift_project_value_buffer(v2, qword_280478EE8);

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, &v16);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: advancing to new state", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  v12 = swift_task_alloc();
  v0[5] = v12;
  *v12 = v0;
  v12[1] = sub_26BF71FA8;
  v14 = v0[2];
  v13 = v0[3];

  return sub_26BF71884(v13);
}

uint64_t sub_26BF71FA8()
{
  v2 = *(*v1 + 40);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26BF720D8, 0, 0);
  }
}

uint64_t sub_26BF720D8()
{
  v15 = v0;
  v1 = v0[4];
  v2 = v0[2];

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: advanced to new state", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_26BF72244(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 48) = *a2;
  *(v3 + 32) = *(a2 + 8);
  return MEMORY[0x2822009F8](sub_26BF72274, 0, 0);
}

uint64_t sub_26BF72274()
{
  v1 = *(v0 + 24);

  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_26BF72334;
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);

  return sub_26BEA72F4(v6, v3, v3, v5, v4);
}

uint64_t sub_26BF72334()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26BF72428(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(v4 + 96) = a2;
  *(v4 + 104) = a4;
  *(v4 + 168) = a3;
  *(v4 + 88) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAB0, &qword_26C01F960) - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v6 = type metadata accessor for MLS.GroupState();
  *(v4 + 120) = v6;
  v7 = *(v6 - 8);
  *(v4 + 128) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF72528, 0, 0);
}

uint64_t sub_26BF72528()
{
  v20 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_26C009A5C();
  *(v0 + 144) = __swift_project_value_buffer(v2, qword_280478EE8);

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 168);
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315650;

    v10 = sub_26BE3D034();
    v12 = v11;

    v13 = sub_26BE29740(v10, v12, &v19);

    *(v8 + 4) = v13;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v5;
    *(v8 + 18) = 2048;
    *(v8 + 20) = v7;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: determining prior group membership for %u %lld", v8, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D69A4E0](v9, -1, -1);
    MEMORY[0x26D69A4E0](v8, -1, -1);
  }

  v14 = *(v0 + 104);
  *(v0 + 72) = *(v0 + 168);
  *(v0 + 80) = v14;
  v15 = swift_task_alloc();
  *(v0 + 152) = v15;
  *v15 = v0;
  v15[1] = sub_26BF72754;
  v16 = *(v0 + 112);
  v17 = *(v0 + 96);

  return sub_26BF378BC(v16, v0 + 72);
}

uint64_t sub_26BF72754()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_26BF72C2C;
  }

  else
  {
    v3 = sub_26BF72868;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF72868()
{
  v42 = v0;
  v1 = *(v0 + 112);
  if ((*(*(v0 + 128) + 48))(v1, 1, *(v0 + 120)) == 1)
  {
    sub_26BE2E258(v1, &qword_28045FAB0, &qword_26C01F960);
    v2 = 0;
  }

  else
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 136);
    sub_26BF7F124(v1, v4, type metadata accessor for MLS.GroupState);
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = *(v4 + 56);
    v8 = *(v4 + 32);
    v9 = swift_task_alloc();
    *(v9 + 16) = v4;
    v10 = sub_26BFEB264(sub_26BF7F1F4, v9, v8, v5, v6, v7);
    if (v3)
    {
      v11 = *(v0 + 136);

      sub_26BF7F05C(v11, type metadata accessor for MLS.GroupState);
      v12 = *(v0 + 136);
      v13 = *(v0 + 112);

      v14 = *(v0 + 8);
      goto LABEL_17;
    }

    v15 = v10;

    v16 = *(v15 + 2);
    if (v16)
    {
      v41 = MEMORY[0x277D84F90];
      sub_26BECBA54(0, v16, 0);
      v2 = v41;
      v17 = (v15 + 32);
      do
      {
        sub_26BE2DB68(v17, v0 + 16);
        v41 = v2;
        v19 = *(v2 + 16);
        v18 = *(v2 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_26BECBA54((v18 > 1), v19 + 1, 1);
          v2 = v41;
        }

        *(v2 + 16) = v19 + 1;
        v20 = v2 + 56 * v19;
        v21 = *(v0 + 16);
        v22 = *(v0 + 32);
        v23 = *(v0 + 48);
        *(v20 + 80) = *(v0 + 64);
        *(v20 + 48) = v22;
        *(v20 + 64) = v23;
        *(v20 + 32) = v21;
        v17 += 56;
        --v16;
      }

      while (v16);
    }

    else
    {

      v2 = MEMORY[0x277D84F90];
    }

    v24 = *(v0 + 144);
    v25 = *(v0 + 96);
    swift_bridgeObjectRetain_n();

    v26 = sub_26C009A3C();
    v27 = sub_26C00AA1C();

    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 136);
    if (v28)
    {
      v30 = *(v0 + 96);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41 = v32;
      *v31 = 136315394;

      v33 = sub_26BE3D034();
      v35 = v34;

      v36 = sub_26BE29740(v33, v35, &v41);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2048;
      v37 = *(v2 + 16);

      *(v31 + 14) = v37;

      _os_log_impl(&dword_26BDFE000, v26, v27, "%s: returning %ld members", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x26D69A4E0](v32, -1, -1);
      MEMORY[0x26D69A4E0](v31, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    sub_26BF7F05C(v29, type metadata accessor for MLS.GroupState);
  }

  v38 = *(v0 + 136);
  v39 = *(v0 + 112);
  **(v0 + 88) = v2;

  v14 = *(v0 + 8);
LABEL_17:

  return v14();
}

uint64_t sub_26BF72C2C()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[14];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF72C9C(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 64) = *a2;
  *(v3 + 32) = *(a2 + 8);
  *(v3 + 48) = *(a2 + 24);
  return MEMORY[0x2822009F8](sub_26BF72CD4, 0, 0);
}

uint64_t sub_26BF72CD4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);

  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_26BF7F1A4;
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 64);
  v9 = *(v0 + 16);

  return (sub_26BEA3FE4)(v9);
}

uint64_t sub_26BF72DA8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 56) = a2;
  *(v6 + 16) = a1;
  return MEMORY[0x2822009F8](sub_26BF72DD4, 0, 0);
}

uint64_t sub_26BF72DD4()
{
  v59 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_26C009A5C();
  __swift_project_value_buffer(v3, qword_280478EE8);

  v4 = sub_26C009A3C();
  v5 = sub_26C00AA1C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v53 = *(v0 + 40);
    v7 = *(v0 + 32);
    v55 = *(v0 + 24);
    v54 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v56 = v9;
    *v8 = 136315650;

    v10 = sub_26BE3D034();
    v12 = v11;

    v13 = sub_26BE29740(v10, v12, &v56);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_26BE29740(v7, v53, &v56);
    *(v8 + 22) = 2080;
    LODWORD(v57) = v54;
    v58 = v55;
    v14 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
    v16 = sub_26BE29740(v14, v15, &v56);

    *(v8 + 24) = v16;
    _os_log_impl(&dword_26BDFE000, v4, v5, "%s: checking whether participant key ungracefullyrolled for %s since %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v9, -1, -1);
    MEMORY[0x26D69A4E0](v8, -1, -1);
  }

  v17 = *(*(v0 + 48) + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastParticipantKeyRollEpoch);
  if (*(v17 + 16))
  {
    v19 = *(v0 + 32);
    v18 = *(v0 + 40);
    v20 = *(*(v0 + 48) + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastParticipantKeyRollEpoch);

    v21 = sub_26BEBB618(v19, v18);
    if (v22)
    {
      v23 = *(v17 + 56) + 16 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);

      goto LABEL_10;
    }
  }

  v24 = sub_26BE4126C();
  v25 = 0;
LABEL_10:
  v26 = sub_26C009A3C();
  v27 = sub_26C00AA1C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v56 = v29;
    *v28 = 136315138;
    LODWORD(v57) = v24;
    v58 = v25;
    v30 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
    v32 = sub_26BE29740(v30, v31, &v56);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_26BDFE000, v26, v27, "last rolled: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x26D69A4E0](v29, -1, -1);
    MEMORY[0x26D69A4E0](v28, -1, -1);
  }

  v33 = *(v0 + 56);
  v34 = v25 > *(v0 + 24);
  v35 = v24 == v33;
  v36 = v24 > v33;
  if (!v35)
  {
    v34 = v36;
  }

  v37 = *(v0 + 48);
  if (v34)
  {
    v38 = *(v37 + 152);
    v35 = v38 == v24;
    v39 = v38 >= v24;
    if (v35)
    {
      v40 = *(v37 + 24) >= v25;
    }

    else
    {
      v40 = v39;
    }
  }

  else
  {
    v40 = 0;
  }

  v41 = *(v0 + 48);

  v42 = sub_26C009A3C();
  v43 = sub_26C00AA1C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = *(v0 + 48);
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v57 = v46;
    *v45 = 136315394;

    v47 = sub_26BE3D034();
    v49 = v48;

    v50 = sub_26BE29740(v47, v49, &v57);

    *(v45 + 4) = v50;
    *(v45 + 12) = 1024;
    *(v45 + 14) = v40;
    _os_log_impl(&dword_26BDFE000, v42, v43, "%s: returning hasRolled = %{BOOL}d", v45, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x26D69A4E0](v46, -1, -1);
    MEMORY[0x26D69A4E0](v45, -1, -1);
  }

  **(v0 + 16) = v40;
  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_26BF732A8()
{
  *(v1 + 40) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890) - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF73344, 0, 0);
}

uint64_t sub_26BF73344()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
  swift_beginAccess();
  sub_26BE2E1F0(v2 + v3, v1, &qword_28045FA38, &qword_26C01D890);
  v4 = type metadata accessor for FileInfoAndSender();
  v5 = (*(*(v4 - 8) + 48))(v1, 1, v4) != 1;
  sub_26BE2E258(v1, &qword_28045FA38, &qword_26C01D890);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_26BF73454(uint64_t a1, _OWORD *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *a2;
  return MEMORY[0x2822009F8](sub_26BF7347C, 0, 0);
}

uint64_t sub_26BF7347C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  sub_26BE00608(v1, v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_26BE3C268;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return (sub_26BEA7D5C)(v7);
}

uint64_t sub_26BF73548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a3;
  v4[35] = a4;
  v4[32] = a1;
  v4[33] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
  v4[36] = v5;
  v6 = *(v5 - 8);
  v4[37] = v6;
  v7 = *(v6 + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D8, &qword_26C012580) - 8) + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v9 = *(*(type metadata accessor for MLS.MLSMessage(0) - 8) + 64) + 15;
  v4[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF73694, 0, 0);
}

uint64_t sub_26BF73694()
{
  v79 = v0;
  v1 = *(v0 + 336);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 264);
  v78[0] = v3;
  v78[1] = v2;
  sub_26BE00608(v3, v2);
  sub_26BF41E60(v78, v1);
  sub_26BE00258(v3, v2);
  v5 = *(v0 + 336);
  if (*(*(v0 + 264) + 72))
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  LOWORD(v78[0]) = v6;
  v8 = sub_26BF2F140(v78);
  v10 = v9;
  if (qword_28045DFD0 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 264);
  v12 = sub_26C009A5C();
  __swift_project_value_buffer(v12, qword_280478FB0);

  sub_26BE00608(v8, v10);
  v13 = sub_26C009A3C();
  v14 = sub_26C00A9FC();
  sub_26BE00258(v8, v10);

  v15 = &unk_280478000;
  if (os_log_type_enabled(v13, v14))
  {
    v76 = v14;
    log = v13;
    v16 = *(v0 + 296);
    v73 = *(v0 + 328);
    v74 = *(v0 + 288);
    v17 = *(v0 + 264);
    v18 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v78[0] = v75;
    *v18 = 136315650;

    v19 = sub_26BE3D034();
    v21 = v20;

    v22 = sub_26BE29740(v19, v21, v78);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    *(v0 + 240) = sub_26BF87240(v8, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    v23 = sub_26C00A3EC();
    v25 = v24;

    v26 = sub_26BE29740(v23, v25, v78);
    v15 = &unk_280478000;

    *(v18 + 14) = v26;
    *(v18 + 22) = 2080;
    v27 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
    swift_beginAccess();
    sub_26BE2E1F0(v17 + v27, v73, &qword_28045E8D8, &qword_26C012580);
    v28 = (*(v16 + 48))(v73, 1, v74);
    v29 = *(v0 + 328);
    if (v28 || (v30 = v29 + *(*(v0 + 288) + 48), v31 = *(v30 + 168), v31 >> 60 == 15))
    {
      sub_26BE2E258(v29, &qword_28045E8D8, &qword_26C012580);
      v32 = 0xE300000000000000;
      v33 = 7104878;
    }

    else
    {
      v69 = *(v30 + 160);
      v70 = *(v0 + 328);
      sub_26BE00608(v69, *(v30 + 168));
      sub_26BE2E258(v70, &qword_28045E8D8, &qword_26C012580);
      *(v0 + 248) = sub_26BF87240(v69, v31);
      v71 = sub_26C00A3EC();
      v32 = v72;
      sub_26BE132D4(v69, v31);

      v33 = v71;
      v15 = &unk_280478000;
    }

    v34 = sub_26BE29740(v33, v32, v78);

    *(v18 + 24) = v34;
    v13 = log;
    _os_log_impl(&dword_26BDFE000, log, v76, "%s: incoming messageHash: %s, commitMetadata.commitMessageHash: %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v75, -1, -1);
    MEMORY[0x26D69A4E0](v18, -1, -1);
  }

  v35 = *(v0 + 320);
  v36 = *(v0 + 288);
  v37 = *(v0 + 296);
  v38 = *(v0 + 264);
  v39 = v15[506];
  swift_beginAccess();
  sub_26BE2E1F0(v38 + v39, v35, &qword_28045E8D8, &qword_26C012580);
  if ((*(v37 + 48))(v35, 1, v36) != 1)
  {
    v41 = *(v0 + 312);
    v42 = *(v0 + 304);
    v43 = *(v0 + 288);
    sub_26BE33F30(*(v0 + 320), v41, &qword_28045E8E0, &unk_26C0204E0);
    sub_26BE2E1F0(v41, v42, &qword_28045E8E0, &unk_26C0204E0);
    v44 = (v42 + *(v43 + 48));
    v45 = v44[7];
    v46 = v44[8];
    v47 = v44[10];
    *(v0 + 160) = v44[9];
    *(v0 + 176) = v47;
    *(v0 + 128) = v45;
    *(v0 + 144) = v46;
    v48 = v44[3];
    v49 = v44[4];
    v50 = v44[6];
    *(v0 + 96) = v44[5];
    *(v0 + 112) = v50;
    *(v0 + 64) = v48;
    *(v0 + 80) = v49;
    v52 = v44[1];
    v51 = v44[2];
    *(v0 + 16) = *v44;
    *(v0 + 32) = v52;
    *(v0 + 48) = v51;
    v53 = *(v0 + 176);
    v54 = *(v0 + 184);
    sub_26BE2BAE8(v53, v54);
    sub_26BE6FF8C(v0 + 16);
    if (v10 >> 60 == 15)
    {
      v55 = *(v0 + 336);
      sub_26BE2E258(*(v0 + 312), &qword_28045E8E0, &unk_26C0204E0);
      sub_26BF7F05C(v55, type metadata accessor for MLS.MLSMessage);
      if (v54 >> 60 == 15)
      {
        v56 = *(v0 + 304);
        sub_26BE132D4(v8, v10);
        sub_26BF7F05C(v56, type metadata accessor for MLS.GroupState);
        goto LABEL_26;
      }
    }

    else
    {
      v57 = *(v0 + 336);
      v58 = *(v0 + 312);
      if (v54 >> 60 != 15)
      {
        v67 = *(v0 + 304);
        sub_26BE00608(v8, v10);
        sub_26BE2BAE8(v53, v54);
        v68 = sub_26BE02DEC(v8, v10, v53, v54);
        sub_26BE132D4(v53, v54);
        sub_26BE132D4(v53, v54);
        sub_26BE00258(v8, v10);
        sub_26BE2E258(v58, &qword_28045E8E0, &unk_26C0204E0);
        sub_26BF7F05C(v57, type metadata accessor for MLS.MLSMessage);
        sub_26BE132D4(v8, v10);
        sub_26BF7F05C(v67, type metadata accessor for MLS.GroupState);
        if ((v68 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_26:
        v60 = 1;
        goto LABEL_24;
      }

      sub_26BE2E258(*(v0 + 312), &qword_28045E8E0, &unk_26C0204E0);
      sub_26BF7F05C(v57, type metadata accessor for MLS.MLSMessage);
    }

    v59 = *(v0 + 304);
    sub_26BE132D4(v8, v10);
    sub_26BE132D4(v53, v54);
    sub_26BF7F05C(v59, type metadata accessor for MLS.GroupState);
    goto LABEL_23;
  }

  v40 = *(v0 + 320);
  sub_26BF7F05C(*(v0 + 336), type metadata accessor for MLS.MLSMessage);
  sub_26BE00258(v8, v10);
  sub_26BE2E258(v40, &qword_28045E8D8, &qword_26C012580);
LABEL_23:
  v60 = 0;
LABEL_24:
  v62 = *(v0 + 328);
  v61 = *(v0 + 336);
  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  **(v0 + 256) = v60;

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_26BF73E64()
{
  v1 = *(v0 + 160);

  sub_26BE2E258(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata, &qword_28045E8D8, &qword_26C012580);
  sub_26BE2E258(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject, &qword_28045FA38, &qword_26C01D890);
  sub_26BE2E258(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedNextFileInfoForGroupSubject, &qword_28045FA38, &qword_26C01D890);
  v2 = *(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastParticipantKeyRollEpoch);

  v3 = *(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf);

  v4 = *(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_eraEpochDate);
}

void *MLS.Group.PureSwiftGroup.deinit()
{
  v1 = v0[2];

  sub_26BE00258(v0[4], v0[5]);
  v2 = v0[6];

  sub_26BE0489C(v0[7], v0[8]);
  v3 = v0[13];

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v4 = v0[20];

  sub_26BE2E258(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata, &qword_28045E8D8, &qword_26C012580);
  sub_26BE2E258(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject, &qword_28045FA38, &qword_26C01D890);
  sub_26BE2E258(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedNextFileInfoForGroupSubject, &qword_28045FA38, &qword_26C01D890);
  v5 = *(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastParticipantKeyRollEpoch);

  v6 = *(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf);

  v7 = *(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_eraEpochDate);

  return v0;
}

uint64_t MLS.Group.PureSwiftGroup.__deallocating_deinit()
{
  MLS.Group.PureSwiftGroup.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26BF740A8@<X0>(uint64_t (*a1)(uint64_t, unint64_t)@<X0>, const char *a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = type metadata accessor for MLS.MLSMessage(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v13 = v3[1];
  sub_26BE00608(v14, v13);
  result = a1(v14, v13);
  if (!v4)
  {
    v16 = result;
    v17 = *(result + 16);
    if (v17)
    {
      sub_26BF7F0BC(result + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v12, type metadata accessor for MLS.MLSMessage);
      if (v17 == 1)
      {

        v24 = MLS.MLSMessage.rawValue.getter();
        v26 = v25;
        result = sub_26BF7F05C(v12, type metadata accessor for MLS.MLSMessage);
        *a3 = v24;
        a3[1] = v26;
        return result;
      }

      sub_26BF7F05C(v12, type metadata accessor for MLS.MLSMessage);
    }

    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v18 = sub_26C009A5C();
    __swift_project_value_buffer(v18, qword_280478EE8);

    v19 = sub_26C009A3C();
    v20 = sub_26C00AA0C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      v22 = *(v16 + 16);

      *(v21 + 4) = v22;

      _os_log_impl(&dword_26BDFE000, v19, v20, a2, v21, 0xCu);
      MEMORY[0x26D69A4E0](v21, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_26BE01600();
    swift_allocError();
    *v23 = 5;
    return swift_willThrow();
  }

  return result;
}

uint64_t MLS.Group.GroupInfo.asGroupInfo()@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = type metadata accessor for MLS.MLSMessage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v15 = v1[1];
  sub_26BE00608(v16, v15);
  result = MLS.MLSMessage.init(rawValue:quiet:)(v16, v15, 0, v14);
  if (!v2)
  {
    sub_26BF7F0BC(v14, v10, type metadata accessor for MLS.MLSMessage.Inner);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26BF7F05C(v14, type metadata accessor for MLS.MLSMessage);
      return sub_26BF7F124(v10, a1, type metadata accessor for MLS.GroupInfo);
    }

    else
    {
      sub_26BF7F05C(v10, type metadata accessor for MLS.MLSMessage.Inner);
      sub_26BE01654();
      swift_allocError();
      v19 = v18;
      sub_26BF7F0BC(v14, v8, type metadata accessor for MLS.MLSMessage.Inner);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_26BF7F05C(v8, type metadata accessor for MLS.MLSMessage.Inner);
          v21 = 1;
        }

        else if (EnumCaseMultiPayload == 4)
        {
          sub_26BF7F05C(v8, type metadata accessor for MLS.MLSMessage.Inner);
          v21 = 2;
        }

        else
        {
          v21 = *v8;
          sub_26BE00258(*(v8 + 1), *(v8 + 2));
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_26BF7F05C(v8, type metadata accessor for MLS.MLSMessage.Inner);
          v21 = 4;
        }

        else
        {
          sub_26BF7F05C(v8, type metadata accessor for MLS.MLSMessage.Inner);
          v21 = 5;
        }
      }

      else
      {
        sub_26BF7F05C(v8, type metadata accessor for MLS.MLSMessage.Inner);
        v21 = 3;
      }

      *v19 = v21;
      *(v19 + 2) = 4;
      *(v19 + 4) = 0;
      *(v19 + 112) = 17;
      swift_willThrow();
      return sub_26BF7F05C(v14, type metadata accessor for MLS.MLSMessage);
    }
  }

  return result;
}

uint64_t sub_26BF7469C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26BFD9828(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_26C00AEEC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_26C00A74C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_26BF7D18C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_26BF747D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_26C00928C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
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

unint64_t sub_26BF74890(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 80 * result);
  v7 = a4[4];
  v6[3] = a4[3];
  v6[4] = v7;
  v8 = a4[2];
  v6[1] = a4[1];
  v6[2] = v8;
  *v6 = *a4;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_26BF748F4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 184 * result;
  v7 = *(a4 + 112);
  *(v6 + 96) = *(a4 + 96);
  *(v6 + 112) = v7;
  v8 = *(a4 + 80);
  *(v6 + 64) = *(a4 + 64);
  *(v6 + 80) = v8;
  *(v6 + 176) = *(a4 + 176);
  v9 = *(a4 + 160);
  *(v6 + 144) = *(a4 + 144);
  *(v6 + 160) = v9;
  *(v6 + 128) = *(a4 + 128);
  v10 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v10;
  v11 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v11;
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

unint64_t sub_26BF74978(unint64_t result, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 4 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
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

uint64_t sub_26BF749C0(unint64_t a1, int a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  result = sub_26BE03890(a3, a4[7] + 40 * a1);
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

uint64_t sub_26BF74A2C(unint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a5[6] + 16 * a1;
  *v8 = a2;
  *(v8 + 8) = a3;
  v9 = a5[7];
  v10 = sub_26C00921C();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
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

unint64_t sub_26BF74AE0(unint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5;
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

unint64_t sub_26BF74B34(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

uint64_t sub_26BF74B84(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  v7 = a4[7];
  v8 = sub_26C009C8C();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
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

uint64_t sub_26BF74C30(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6] + 8 * a1;
  *v7 = a2 & 1;
  *(v7 + 4) = HIDWORD(a2);
  v8 = a4[7];
  v9 = _s11HashRatchetVMa(0);
  result = sub_26BF7F124(a3, v8 + *(*(v9 - 8) + 72) * a1, _s11HashRatchetVMa);
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

_OWORD *sub_26BF74CE8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26BE5B0F0(a4, (a5[7] + 32 * a1));
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

uint64_t sub_26BF74D54(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for MLS.KeyAndNonce(0);
  result = sub_26BF7F124(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for MLS.KeyAndNonce);
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

unint64_t sub_26BF74E00(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
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

uint64_t sub_26BF74E48(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_26C00AB9C();

    if (v8)
    {

      type metadata accessor for ContinuationStore();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
    }

    else
    {
      result = sub_26C00AB8C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v20 = sub_26BE29B54(v7, result + 1);
        v21 = *(v20 + 16);
        if (*(v20 + 24) <= v21)
        {
          sub_26BF76DFC(v21 + 1);
        }

        sub_26BF787AC(v22, v20);

        *v3 = v20;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v10 = *(v6 + 40);
    sub_26C00B05C();
    sub_26C00924C();
    v11 = sub_26C00B0CC();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      while (1)
      {
        v15 = *(*(v6 + 48) + 8 * v13);

        v16 = sub_26C00923C();

        if (v16)
        {
          break;
        }

        v13 = (v13 + 1) & v14;
        if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v13);

      return 0;
    }

    else
    {
LABEL_11:
      v17 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *v3;

      sub_26BF78BA0(v19, v13, isUniquelyReferenced_nonNull_native);
      *v3 = v25;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_26BF750E8(_WORD *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  sub_26C00B05C();
  sub_26C00B08C();
  v11 = sub_26C00B0CC();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (*(*(v9 + 48) + 2 * v13) != a2)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v15 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_26BF78D30(a2, v13, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_26BF75208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_26C00B05C();
  sub_26C00B09C();
  MEMORY[0x26D699B60](a3);
  v9 = sub_26C00B0CC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(v7 + 48) + 16 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      if (v14 == a2 && v15 == a3)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_26BF78EA0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    result = 1;
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  return result;
}

uint64_t sub_26BF7532C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_26C00B05C();
  sub_26C00911C();
  v8 = sub_26C00B0CC();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_62:
    v36 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v53 = *v43;
    sub_26BE00608(a2, a3);
    sub_26BF79018(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v43 = *v53;
    *a1 = a2;
    a1[1] = a3;
    result = 1;
    goto LABEL_64;
  }

  v12 = ~v10;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v51 = v14;
  v15 = a3 >> 62;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v48 = v16;
  v47 = a3;
  v49 = v12;
  v50 = BYTE6(a3);
  v45 = v6 + 56;
  v46 = v6;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || v15 < 3;
      if (((v23 | v51) & 1) == 0)
      {
        v39 = 0;
        v40 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v24 = 0;
      if (v15 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_66;
      }

      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_67;
      }

      v24 = v24;
      if (v15 <= 1)
      {
LABEL_33:
        v28 = v50;
        if (v15)
        {
          v28 = HIDWORD(a2) - a2;
          if (v48)
          {
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
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v15 != 2)
    {
      if (!v24)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_65;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_61;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        *v53 = v19;
        *&v53[8] = v18;
        v53[10] = BYTE2(v18);
        v53[11] = BYTE3(v18);
        v53[12] = BYTE4(v18);
        v53[13] = BYTE5(v18);
        sub_26BE00608(v19, v18);
        v12 = v49;
        goto LABEL_60;
      }

      if (v19 >> 32 < v19)
      {
        goto LABEL_68;
      }

      sub_26BE00608(v19, v18);
      v33 = sub_26C008E9C();
      if (v33)
      {
        v35 = sub_26C008ECC();
        if (__OFSUB__(v19, v35))
        {
          goto LABEL_71;
        }

        v33 += v19 - v35;
      }

      goto LABEL_57;
    }

    if (v20 != 2)
    {
      break;
    }

    v32 = *(v19 + 16);
    v31 = *(v19 + 24);
    sub_26BE00608(v19, v18);
    v33 = sub_26C008E9C();
    if (v33)
    {
      v34 = sub_26C008ECC();
      if (__OFSUB__(v32, v34))
      {
        goto LABEL_70;
      }

      v33 += v32 - v34;
    }

    if (__OFSUB__(v31, v32))
    {
      goto LABEL_69;
    }

LABEL_57:
    sub_26C008EBC();
    a3 = v47;
    sub_26BE567B0(v33, a2, v47, v53);
    sub_26BE00258(v19, v18);
    v9 = v45;
    v6 = v46;
    v12 = v49;
    if (v53[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v53[6] = 0;
  *v53 = 0;
  sub_26BE00608(v19, v18);
LABEL_60:
  sub_26BE567B0(v53, a2, a3, &v52);
  sub_26BE00258(v19, v18);
  if (!v52)
  {
    goto LABEL_13;
  }

LABEL_61:
  v39 = a2;
  v40 = a3;
LABEL_63:
  sub_26BE00258(v39, v40);
  v41 = *(*(v6 + 48) + 16 * v11);
  *a1 = v41;
  sub_26BE00608(v41, *(&v41 + 1));
  result = 0;
LABEL_64:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BF757B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_26C00B05C();
  sub_26C00B07C();
  if (a3)
  {
    sub_26C00A58C();
  }

  v9 = sub_26C00B0CC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_16:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_26BF79490(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_6:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (sub_26C00AF2C() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

uint64_t sub_26BF7593C(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_26C00B05C();
  sub_26C00B09C();
  v7 = sub_26C00B0CC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 4 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_26BF7964C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_26BF75A34(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_26C00B05C();
  MEMORY[0x26D699B20](a2);
  v7 = sub_26C00B0CC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_26BF79798(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_26BF75B2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_26C00B05C();
  sub_26C00A58C();
  v9 = sub_26C00B0CC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_26C00AF2C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_26BF798E4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_26BF75C7C(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F0D8, &unk_26C01A530);
  v4 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v6 = &v55 - v5;
  v64 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v75 = *(v64 - 8);
  v7 = *(v75 + 64);
  v8 = MEMORY[0x28223BE20](v64);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v55 - v11;
  v12 = sub_26C0094DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v66 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v55 - v21;
  v56 = v2;
  v60 = *v2;
  v23 = *(v60 + 40);
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BF7EFF4(&qword_28045F0C0, MEMORY[0x277D6A958]);
  sub_26C00A3CC();
  v24 = type metadata accessor for MLS.AlgorithmIdentifier();
  v73 = *(v24 + 20);
  v74 = v24;
  v76 = a2;
  sub_26BE2E1F0(a2 + v73, v22, &qword_28045EE48, &unk_26C022430);
  v25 = *(v13 + 48);
  v72 = v13 + 48;
  v70 = v25;
  v26 = v25(v22, 1, v12);
  v65 = v12;
  v63 = v13;
  if (v26 == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v13 + 32))(v16, v22, v12);
    sub_26C00B07C();
    sub_26BF7EFF4(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    (*(v13 + 8))(v16, v12);
  }

  v27 = *(v64 + 20);
  sub_26C00959C();
  sub_26BF7EFF4(&qword_28045F0D0, MEMORY[0x277D6A9E0]);
  v61 = v27;
  sub_26C00A3CC();
  v28 = sub_26C00B0CC();
  v29 = v60;
  v30 = v60 + 56;
  v31 = -1 << *(v60 + 32);
  v32 = v28 & ~v31;
  if ((*(v60 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
  {
    v59 = v16;
    v33 = ~v31;
    v58 = (v63 + 32);
    v75 = *(v75 + 72);
    v62 = (v63 + 8);
    v34 = v65;
    v63 = v6;
    v68 = ~v31;
    v69 = v10;
    v67 = v60 + 56;
    do
    {
      v35 = v75 * v32;
      sub_26BF7F0BC(*(v29 + 48) + v75 * v32, v10, type metadata accessor for MLS.SubjectPublicKeyInfo);
      if ((sub_26C00945C() & 1) == 0)
      {
        goto LABEL_13;
      }

      v36 = *(v71 + 48);
      sub_26BE2E1F0(&v10[*(v74 + 20)], v6, &qword_28045EE48, &unk_26C022430);
      sub_26BE2E1F0(v76 + v73, &v6[v36], &qword_28045EE48, &unk_26C022430);
      v37 = v6;
      v38 = v34;
      v39 = v6;
      v40 = v34;
      v41 = v70;
      if (v70(v37, 1, v38) == 1)
      {
        if (v41(v39 + v36, 1, v40) != 1)
        {
          v10 = v69;
          sub_26BF7F05C(v69, type metadata accessor for MLS.SubjectPublicKeyInfo);
          v30 = v67;
          v34 = v65;
          goto LABEL_7;
        }

        sub_26BE2E258(v39, &qword_28045EE48, &unk_26C022430);
        v30 = v67;
        v33 = v68;
        v34 = v65;
        v6 = v39;
      }

      else
      {
        v42 = v66;
        sub_26BE2E1F0(v39, v66, &qword_28045EE48, &unk_26C022430);
        if (v41(v39 + v36, 1, v40) == 1)
        {
          v10 = v69;
          sub_26BF7F05C(v69, type metadata accessor for MLS.SubjectPublicKeyInfo);
          (*v62)(v42, v40);
          v30 = v67;
          v34 = v40;
LABEL_7:
          v33 = v68;
          v6 = v63;
          sub_26BE2E258(v63, &qword_28045F0D8, &unk_26C01A530);
          goto LABEL_8;
        }

        v43 = v59;
        (*v58)(v59, v39 + v36, v40);
        sub_26BF7EFF4(&qword_28045F0E0, MEMORY[0x277D6A988]);
        v44 = sub_26C00A43C();
        v45 = *v62;
        v46 = v43;
        v29 = v60;
        (*v62)(v46, v40);
        v45(v66, v40);
        sub_26BE2E258(v39, &qword_28045EE48, &unk_26C022430);
        v30 = v67;
        v33 = v68;
        v34 = v40;
        v6 = v39;
        if ((v44 & 1) == 0)
        {
          v10 = v69;
LABEL_13:
          sub_26BF7F05C(v10, type metadata accessor for MLS.SubjectPublicKeyInfo);
          goto LABEL_8;
        }
      }

      v10 = v69;
      v47 = &v69[*(v64 + 20)];
      v48 = sub_26C00956C();
      sub_26BF7F05C(v10, type metadata accessor for MLS.SubjectPublicKeyInfo);
      if (v48)
      {
        sub_26BF7F05C(v76, type metadata accessor for MLS.SubjectPublicKeyInfo);
        sub_26BF7F0BC(*(v29 + 48) + v35, v57, type metadata accessor for MLS.SubjectPublicKeyInfo);
        return 0;
      }

LABEL_8:
      v32 = (v32 + 1) & v33;
    }

    while (((*(v30 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0);
  }

  v49 = v56;
  v50 = *v56;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = v76;
  v53 = v55;
  sub_26BF7F0BC(v76, v55, type metadata accessor for MLS.SubjectPublicKeyInfo);
  v77 = *v49;
  sub_26BF79A64(v53, v32, isUniquelyReferenced_nonNull_native);
  *v49 = v77;
  sub_26BF7F124(v52, v57, type metadata accessor for MLS.SubjectPublicKeyInfo);
  return 1;
}

uint64_t sub_26BF76554(uint64_t a1, uint64_t a2)
{
  v90 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_26C00B05C();
  MLS.Identity.SigningIdentity.hash(into:)(&v85);
  v6 = sub_26C00B0CC();
  v7 = v4 + 56;
  v8 = -1 << *(v4 + 32);
  v9 = v6 & ~v8;
  if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_102:
    v67 = *v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26BE2DB68(a2, &v85);
    *v84 = *v75;
    sub_26BF7A2E8(&v85, v9, isUniquelyReferenced_nonNull_native);
    *v75 = *v84;
    v69 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v69;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    result = 1;
    goto LABEL_103;
  }

  v78 = 0;
  v79 = v4;
  v81 = v4 + 56;
  v82 = ~v8;
  v10 = *a2;
  v11 = *(a2 + 8);
  if (*a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11 == 0xC000000000000000;
  }

  v13 = !v12;
  v77 = v13;
  v80 = v11 >> 62;
  v14 = __OFSUB__(HIDWORD(v10), v10);
  v74 = v14;
  while (1)
  {
    sub_26BE2DB68(*(v4 + 48) + 56 * v9, &v85);
    v16 = v85;
    v15 = v86;
    if ((v86 & 0x2000000000000000) == 0)
    {
      if ((v11 & 0x2000000000000000) != 0)
      {
        goto LABEL_48;
      }

      v17 = v86 >> 62;
      if (v86 >> 62 == 3)
      {
        if (v85)
        {
          v18 = 0;
        }

        else
        {
          v18 = v86 == 0xC000000000000000;
        }

        v19 = v11 >> 62;
        v21 = !v18 || v11 >> 62 != 3;
        if (((v21 | v77) & 1) == 0)
        {
          sub_26BE04890(0, 0xC000000000000000);
          sub_26BE04890(0, 0xC000000000000000);
          sub_26BE0489C(0, 0xC000000000000000);
          v22 = 0;
          v23 = 0xC000000000000000;
          goto LABEL_53;
        }
      }

      else
      {
        v19 = v11 >> 62;
        if (v17 <= 1)
        {
          if (v17)
          {
            LODWORD(v25) = HIDWORD(v85) - v85;
            if (__OFSUB__(HIDWORD(v85), v85))
            {
              goto LABEL_111;
            }

            v25 = v25;
            if (v80 > 1)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v25 = BYTE6(v86);
            if (v80 > 1)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_36;
        }

        if (v17 == 2)
        {
          v27 = *(v85 + 16);
          v26 = *(v85 + 24);
          v28 = __OFSUB__(v26, v27);
          v25 = v26 - v27;
          if (v28)
          {
            goto LABEL_112;
          }

          if (v80 > 1)
          {
            goto LABEL_40;
          }

          goto LABEL_36;
        }
      }

      v25 = 0;
      if (v19 > 1)
      {
LABEL_40:
        if (v19 != 2)
        {
          if (v25)
          {
LABEL_48:
            sub_26BE04890(v10, v11);
            sub_26BE04890(v16, v15);
            sub_26BE0489C(v16, v15);
            sub_26BE0489C(v10, v11);
LABEL_49:
            sub_26BE2DBC4(&v85);
            goto LABEL_50;
          }

LABEL_52:
          sub_26BE04890(v10, v11);
          sub_26BE04890(v16, v15);
          sub_26BE0489C(v16, v15);
          v22 = v10;
          v23 = v11;
LABEL_53:
          sub_26BE0489C(v22, v23);
          goto LABEL_54;
        }

        v31 = *(v10 + 16);
        v30 = *(v10 + 24);
        v28 = __OFSUB__(v30, v31);
        v29 = v30 - v31;
        if (v28)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
        }

LABEL_42:
        if (v25 != v29)
        {
          goto LABEL_48;
        }

        if (v25 < 1)
        {
          goto LABEL_52;
        }

        if (v17 > 1)
        {
          if (v17 != 2)
          {
            *&v84[6] = 0;
            *v84 = 0;
            sub_26BE04890(v10, v11);
            sub_26BE04890(v16, v15);
LABEL_100:
            sub_26BE567B0(v84, v10, v11, v83);
            sub_26BE0489C(v16, v15);
            sub_26BE0489C(v10, v11);
            if ((v83[0] & 1) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_54;
          }

          v50 = *(v85 + 16);
          v49 = *(v85 + 24);
          sub_26BE04890(v10, v11);
          sub_26BE04890(v16, v15);
          v51 = sub_26C008E9C();
          if (v51)
          {
            v52 = sub_26C008ECC();
            if (__OFSUB__(v50, v52))
            {
              goto LABEL_117;
            }

            v51 += v50 - v52;
          }

          if (__OFSUB__(v49, v50))
          {
            goto LABEL_116;
          }

          sub_26C008EBC();
          v53 = v51;
          v54 = v10;
          v55 = v11;
          v56 = v78;
        }

        else
        {
          if (!v17)
          {
            *v84 = v85;
            *&v84[8] = v86;
            *&v84[12] = WORD2(v86);
            sub_26BE04890(v10, v11);
            sub_26BE04890(v16, v15);
            goto LABEL_100;
          }

          if (v85 >> 32 < v85)
          {
            goto LABEL_115;
          }

          sub_26BE04890(v10, v11);
          sub_26BE04890(v16, v15);
          v65 = sub_26C008E9C();
          if (v65)
          {
            v66 = sub_26C008ECC();
            if (__OFSUB__(v16, v66))
            {
              goto LABEL_118;
            }

            v65 += v16 - v66;
          }

          v56 = v78;
          sub_26C008EBC();
          v53 = v65;
          v54 = v10;
          v55 = v11;
        }

        sub_26BE567B0(v53, v54, v55, v84);
        v78 = v56;
        sub_26BE0489C(v16, v15);
        sub_26BE0489C(v10, v11);
        v4 = v79;
        v7 = v81;
        if ((v84[0] & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_54;
      }

LABEL_36:
      v29 = BYTE6(v11);
      if (v19)
      {
        v29 = HIDWORD(v10) - v10;
        if (v74)
        {
          goto LABEL_108;
        }
      }

      goto LABEL_42;
    }

    if ((v11 & 0x2000000000000000) == 0)
    {
      goto LABEL_48;
    }

    sub_26BE04890(v10, v11);
    sub_26BE04890(v16, v15);
    v24 = sub_26BFB0104(v16, v10);
    sub_26BE0489C(v16, v15);
    sub_26BE0489C(v10, v11);
    if ((v24 & 1) == 0)
    {
      goto LABEL_49;
    }

LABEL_54:
    v32 = v88;
    v33 = v89;
    __swift_project_boxed_opaque_existential_1(v87, v88);
    (*(*(v33 + 8) + 24))(v84, v32);
    v34 = v84[0];

    v35 = *(a2 + 40);
    v36 = *(a2 + 48);
    __swift_project_boxed_opaque_existential_1((a2 + 16), v35);
    (*(*(v36 + 8) + 24))(v83, v35);
    LODWORD(v35) = LOBYTE(v83[0]);

    if (v34 != v35)
    {
      v7 = v81;
      goto LABEL_49;
    }

    v37 = v88;
    v38 = v89;
    __swift_project_boxed_opaque_existential_1(v87, v88);
    v39 = (*(*(v38 + 8) + 16))(v37);
    v41 = v40;
    v42 = *(a2 + 40);
    v43 = *(a2 + 48);
    __swift_project_boxed_opaque_existential_1((a2 + 16), v42);
    v44 = (*(*(v43 + 8) + 16))(v42);
    v46 = v41 >> 62;
    v47 = v45 >> 62;
    if (v41 >> 62 == 3)
    {
      v48 = 0;
      v7 = v81;
      if (!v39 && v41 == 0xC000000000000000 && v45 >> 62 == 3)
      {
        v48 = 0;
        if (!v44 && v45 == 0xC000000000000000)
        {
          sub_26BE00258(0, 0xC000000000000000);
          v72 = 0;
          v73 = 0xC000000000000000;
          goto LABEL_105;
        }
      }

LABEL_78:
      if (v47 <= 1)
      {
        goto LABEL_79;
      }

      goto LABEL_84;
    }

    v7 = v81;
    if (v46 == 2)
    {
      v58 = *(v39 + 16);
      v57 = *(v39 + 24);
      v28 = __OFSUB__(v57, v58);
      v48 = v57 - v58;
      if (v28)
      {
        goto LABEL_114;
      }

      goto LABEL_78;
    }

    if (v46 == 1)
    {
      LODWORD(v48) = HIDWORD(v39) - v39;
      if (__OFSUB__(HIDWORD(v39), v39))
      {
        goto LABEL_113;
      }

      v48 = v48;
      if (v47 <= 1)
      {
LABEL_79:
        if (v47)
        {
          LODWORD(v59) = HIDWORD(v44) - v44;
          v4 = v79;
          if (__OFSUB__(HIDWORD(v44), v44))
          {
            goto LABEL_109;
          }

          v59 = v59;
        }

        else
        {
          v59 = BYTE6(v45);
          v4 = v79;
        }

        goto LABEL_86;
      }
    }

    else
    {
      v48 = BYTE6(v41);
      if (v47 <= 1)
      {
        goto LABEL_79;
      }
    }

LABEL_84:
    if (v47 != 2)
    {
      break;
    }

    v61 = *(v44 + 16);
    v60 = *(v44 + 24);
    v28 = __OFSUB__(v60, v61);
    v59 = v60 - v61;
    v4 = v79;
    if (v28)
    {
      goto LABEL_110;
    }

LABEL_86:
    if (v48 != v59)
    {
      goto LABEL_91;
    }

    if (v48 < 1)
    {
      goto LABEL_104;
    }

    v62 = v44;
    v63 = v45;
    sub_26BE00608(v44, v45);
    v64 = sub_26BECB6A4(v39, v41, v62, v63);
    sub_26BE00258(v39, v41);
    sub_26BE00258(v62, v63);
    sub_26BE2DBC4(&v85);
    if (v64)
    {
      goto LABEL_106;
    }

    v4 = v79;
    v7 = v81;
LABEL_50:
    v9 = (v9 + 1) & v82;
    if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_102;
    }
  }

  v4 = v79;
  if (v48)
  {
LABEL_91:
    sub_26BE00258(v44, v45);
    sub_26BE00258(v39, v41);
    goto LABEL_49;
  }

LABEL_104:
  sub_26BE00258(v44, v45);
  v72 = v39;
  v73 = v41;
LABEL_105:
  sub_26BE00258(v72, v73);
  sub_26BE2DBC4(&v85);
LABEL_106:
  sub_26BE2DBC4(a2);
  sub_26BE2DB68(*(v79 + 48) + 56 * v9, a1);
  result = 0;
LABEL_103:
  v71 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BF76DFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E490, &qword_26C015C80);
  result = sub_26C00ABDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_26C00B05C();
      sub_26C00924C();
      result = sub_26C00B0CC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26BF77054(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_26C00ABDC();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 2 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      sub_26C00B05C();
      sub_26C00B08C();
      result = sub_26C00B0CC();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 2 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v4 = v30;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_26BF7729C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB60, &qword_26C01FD60);
  result = sub_26C00ABDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 16 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v6 + 40);
      sub_26C00B05C();
      sub_26C00B09C();
      MEMORY[0x26D699B60](v21);
      result = sub_26C00B0CC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 16 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26BF7750C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED70, &qword_26C016128);
  result = sub_26C00ABDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_26C00B05C();
      sub_26C00911C();
      result = sub_26C00B0CC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26BF7776C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB38, &qword_26C01FCB8);
  result = sub_26C00ABDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      sub_26C00B05C();
      sub_26C00B07C();
      if (v20)
      {
        sub_26C00A58C();
      }

      result = sub_26C00B0CC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26BF779E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB70, &qword_26C01FD90);
  result = sub_26C00ABDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_26C00B05C();
      sub_26C00B09C();
      result = sub_26C00B0CC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26BF77C38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB68, &qword_26C01FD88);
  result = sub_26C00ABDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_26C00B05C();
      MEMORY[0x26D699B20](v18);
      result = sub_26C00B0CC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26BF77E88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED40, &unk_26C0160F8);
  result = sub_26C00ABDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_26C00B05C();
      sub_26C00A58C();
      result = sub_26C00B0CC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26BF780E8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB20, &qword_26C01FCA0);
  result = sub_26C00ABDC();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v9 + 56);
    for (i = (v15 + 63) >> 6; v17; result = sub_26BF78858(v8, v12))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_13:
      sub_26BF7F124(*(v9 + 48) + *(v5 + 72) * (v19 | (v13 << 6)), v8, type metadata accessor for MLS.SubjectPublicKeyInfo);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      if (v13 >= i)
      {
        break;
      }

      v21 = v14[v13];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

    v22 = 1 << *(v9 + 32);
    if (v22 >= 64)
    {
      bzero((v9 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v22;
    }

    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_26BF782F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB00, &qword_26C01FC90);
  result = sub_26C00ABDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v49 = v2;
    v50 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (1)
    {
      if (!v11)
      {
        v20 = v7;
        while (1)
        {
          v7 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_45;
          }

          if (v7 >= v12)
          {
            break;
          }

          v21 = v8[v7];
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v51 = (v21 - 1) & v21;
            goto LABEL_17;
          }
        }

        v48 = 1 << *(v3 + 32);
        if (v48 >= 64)
        {
          bzero(v8, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v8 = -1 << v48;
        }

        v2 = v49;
        *(v3 + 16) = 0;
        break;
      }

      v19 = __clz(__rbit64(v11));
      v51 = (v11 - 1) & v11;
LABEL_17:
      v22 = *(v3 + 48) + 56 * (v19 | (v7 << 6));
      v23 = *v22;
      v24 = *(v22 + 48);
      v25 = *(v22 + 32);
      v54 = *(v22 + 16);
      v55 = v25;
      v56 = v24;
      v53 = v23;
      v26 = *(v6 + 40);
      sub_26C00B05C();
      v27 = v53;
      if ((*(&v53 + 1) & 0x2000000000000000) == 0)
      {
        MEMORY[0x26D699B20](0);
        sub_26C00911C();
        goto LABEL_28;
      }

      MEMORY[0x26D699B20](1);
      if (v27 >> 62)
      {
        v47 = sub_26C00AB8C();
        MEMORY[0x26D699B20](v47);
        result = sub_26C00AB8C();
        v28 = result;
        if (!result)
        {
          goto LABEL_28;
        }
      }

      else
      {
        result = MEMORY[0x26D699B20](*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10));
        v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v28)
        {
          goto LABEL_28;
        }
      }

      if (v28 < 1)
      {
        goto LABEL_46;
      }

      if ((v27 & 0xC000000000000001) != 0)
      {
        v29 = 0;
        do
        {
          MEMORY[0x26D6996F0](v29++, v27);
          type metadata accessor for SecCertificate(0);
          sub_26BF7EFF4(&qword_28045FB08, type metadata accessor for SecCertificate);
          sub_26C0092BC();
          swift_unknownObjectRelease();
        }

        while (v28 != v29);
      }

      else
      {
        v30 = (v27 + 32);
        type metadata accessor for SecCertificate(0);
        sub_26BF7EFF4(&qword_28045FB08, type metadata accessor for SecCertificate);
        do
        {
          v31 = *v30++;
          v32 = v31;
          sub_26C0092BC();

          --v28;
        }

        while (v28);
      }

LABEL_28:
      v34 = *(&v55 + 1);
      v33 = v56;
      __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
      (*(*(v33 + 8) + 24))(v52, v34);

      sub_26C00B08C();
      v36 = *(&v55 + 1);
      v35 = v56;
      __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
      v37 = (*(*(v35 + 8) + 16))(v36);
      v39 = v38;
      sub_26C00911C();
      sub_26BE00258(v37, v39);
      result = sub_26C00B0CC();
      v40 = -1 << *(v6 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v13 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        v3 = v50;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v13 + 8 * v42);
          if (v46 != -1)
          {
            v14 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v41) & ~*(v13 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
      v3 = v50;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 56 * v14;
      v16 = v53;
      v17 = v54;
      v18 = v55;
      *(v15 + 48) = v56;
      *(v15 + 16) = v17;
      *(v15 + 32) = v18;
      *v15 = v16;
      ++*(v6 + 16);
      v11 = v51;
    }
  }

  *v2 = v6;
  return result;
}

unint64_t sub_26BF787AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_26C00B05C();
  sub_26C00924C();
  sub_26C00B0CC();
  v5 = -1 << *(a2 + 32);
  result = sub_26C00AB6C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_26BF78858(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = *(a2 + 40);
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BF7EFF4(&qword_28045F0C0, MEMORY[0x277D6A958]);
  sub_26C00A3CC();
  v14 = type metadata accessor for MLS.AlgorithmIdentifier();
  sub_26BE2E1F0(a1 + *(v14 + 20), v12, &qword_28045EE48, &unk_26C022430);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_26C00B07C();
    sub_26BF7EFF4(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    (*(v5 + 8))(v8, v4);
  }

  v15 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v16 = *(v15 + 20);
  sub_26C00959C();
  sub_26BF7EFF4(&qword_28045F0D0, MEMORY[0x277D6A9E0]);
  sub_26C00A3CC();
  sub_26C00B0CC();
  v17 = -1 << *(a2 + 32);
  v18 = sub_26C00AB6C();
  *(a2 + 56 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
  result = sub_26BF7F124(a1, *(a2 + 48) + *(*(v15 - 8) + 72) * v18, type metadata accessor for MLS.SubjectPublicKeyInfo);
  ++*(a2 + 16);
  return result;
}

uint64_t sub_26BF78BA0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26BF76DFC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_26BF7ABB0();
      goto LABEL_12;
    }

    sub_26BF7B9B4(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_26C00B05C();
  sub_26C00924C();
  result = sub_26C00B0CC();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for ContinuationStore();
    do
    {
      v13 = *(*(v9 + 48) + 8 * a2);

      v14 = sub_26C00923C();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v6;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26C00AF7C();
  __break(1u);
  return result;
}

uint64_t sub_26BF78D30(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26BF77054(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = sub_26BF7AD14(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    sub_26BF7BBE4(v7 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_26C00B05C();
  sub_26C00B08C();
  result = sub_26C00B0CC();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v10 + 48) + 2 * a2) != v6)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 2 * a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26C00AF7C();
  __break(1u);
  return result;
}

uint64_t sub_26BF78EA0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_26BF7729C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_26BF7AE44();
      a3 = v9;
      goto LABEL_15;
    }

    sub_26BF7BDFC(v7 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_26C00B05C();
  sub_26C00B09C();
  MEMORY[0x26D699B60](a2);
  result = sub_26C00B0CC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v10 + 48) + 16 * a3;
      v15 = *v14;
      v16 = *(v14 + 8);
      if (v15 == v6 && v16 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v18 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = *(v18 + 48) + 16 * a3;
  *v19 = v6;
  *(v19 + 8) = a2;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_26C00AF7C();
  __break(1u);
  return result;
}

uint64_t sub_26BF79018(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v53 = *MEMORY[0x277D85DE8];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_26BF7750C(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_26BF7AF98();
        goto LABEL_68;
      }

      sub_26BF7C03C(v8 + 1);
    }

    v10 = *v4;
    v11 = *(*v4 + 40);
    sub_26C00B05C();
    sub_26C00911C();
    result = sub_26C00B0CC();
    v12 = v10 + 56;
    v13 = -1 << *(v10 + 32);
    a3 = result & ~v13;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      if (v7)
      {
        v15 = 0;
      }

      else
      {
        v15 = a2 == 0xC000000000000000;
      }

      v16 = !v15;
      v50 = v16;
      v17 = a2 >> 62;
      v18 = __OFSUB__(HIDWORD(v7), v7);
      v47 = v18;
      v46 = HIDWORD(v7) - v7;
      v48 = v14;
      v49 = BYTE6(a2);
      v43 = v7;
      v44 = a2;
      while (1)
      {
        v19 = (*(v10 + 48) + 16 * a3);
        v21 = *v19;
        v20 = v19[1];
        v22 = v20 >> 62;
        if (v20 >> 62 == 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 != 2)
          {
            goto LABEL_32;
          }

          v32 = *(v21 + 16);
          v31 = *(v21 + 24);
          v30 = __OFSUB__(v31, v32);
          v26 = v31 - v32;
          if (v30)
          {
            goto LABEL_73;
          }
        }

        else if (v22)
        {
          LODWORD(v26) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_74;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v20);
        }

LABEL_33:
        if (v17 > 1)
        {
          if (v17 != 2)
          {
            if (!v26)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v29 = *(v7 + 16);
          v28 = *(v7 + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v30)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v27 = v49;
          if (v17)
          {
            v27 = v46;
            if (v47)
            {
              goto LABEL_71;
            }
          }
        }

        if (v26 == v27)
        {
          if (v26 < 1)
          {
            goto LABEL_67;
          }

          if (v22 > 1)
          {
            if (v22 == 2)
            {
              v34 = *(v21 + 16);
              v33 = *(v21 + 24);
              sub_26BE00608(v21, v20);
              v35 = sub_26C008E9C();
              if (v35)
              {
                v36 = sub_26C008ECC();
                if (__OFSUB__(v34, v36))
                {
                  goto LABEL_77;
                }

                v35 += v34 - v36;
              }

              if (__OFSUB__(v33, v34))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v52[6] = 0;
            *v52 = 0;
            sub_26BE00608(v21, v20);
          }

          else
          {
            if (v22)
            {
              if (v21 >> 32 < v21)
              {
                goto LABEL_75;
              }

              sub_26BE00608(v21, v20);
              v35 = sub_26C008E9C();
              if (v35)
              {
                v37 = sub_26C008ECC();
                if (__OFSUB__(v21, v37))
                {
                  goto LABEL_78;
                }

                v35 += v21 - v37;
              }

LABEL_63:
              sub_26C008EBC();
              v7 = v43;
              a2 = v44;
              sub_26BE567B0(v35, v43, v44, v52);
              result = sub_26BE00258(v21, v20);
              v12 = v10 + 56;
              v14 = v48;
              if (v52[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v52 = v21;
            *&v52[8] = v20;
            v52[10] = BYTE2(v20);
            v52[11] = BYTE3(v20);
            v52[12] = BYTE4(v20);
            v52[13] = BYTE5(v20);
            sub_26BE00608(v21, v20);
            v14 = v48;
          }

          sub_26BE567B0(v52, v7, a2, &v51);
          result = sub_26BE00258(v21, v20);
          if (v51)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v14;
        if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || v17 < 3;
      if (((v25 | v50) & 1) == 0)
      {
LABEL_67:
        result = sub_26C00AF7C();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v38 = *v45;
  *(*v45 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v39 = (*(v38 + 48) + 16 * a3);
  *v39 = v7;
  v39[1] = a2;
  v40 = *(v38 + 16);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v30)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v38 + 16) = v41;
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BF79490(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    sub_26BF7776C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_26BF7B0F4();
      goto LABEL_22;
    }

    sub_26BF7C278(v9 + 1);
  }

  v11 = *v4;
  v12 = *(*v4 + 40);
  sub_26C00B05C();
  sub_26C00B07C();
  if (a2)
  {
    sub_26C00A58C();
  }

  result = sub_26C00B0CC();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = result & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == v8 && v18 == a2;
          if (v19 || (result = sub_26C00AF2C(), (result & 1) != 0))
          {
LABEL_21:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE08, &qword_26C016570);
            result = sub_26C00AF7C();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_21;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_22:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

uint64_t sub_26BF7964C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26BF779E8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_26BF7B24C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_26BF7C4CC(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_26C00B05C();
  sub_26C00B09C();
  result = sub_26C00B0CC();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 4 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26C00AF7C();
  __break(1u);
  return result;
}

uint64_t sub_26BF79798(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26BF77C38(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_26BF7B38C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_26BF7C6EC(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_26C00B05C();
  MEMORY[0x26D699B20](v4);
  result = sub_26C00B0CC();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26C00AF7C();
  __break(1u);
  return result;
}

uint64_t sub_26BF798E4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_26BF77E88(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26BF7B4CC();
      goto LABEL_16;
    }

    sub_26BF7C90C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_26C00B05C();
  sub_26C00A58C();
  result = sub_26C00B0CC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_26C00AF2C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_26C00AF7C();
  __break(1u);
  return result;
}

uint64_t sub_26BF79A64(uint64_t a1, unint64_t a2, char a3)
{
  v72 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F0D8, &unk_26C01A530);
  v6 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v61 = &v53 - v7;
  v59 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v58 = *(v59 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_26C0094DC();
  v11 = *(v62 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v62);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v69 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v53 - v19;
  v60 = v3;
  v21 = *(*v3 + 16);
  v22 = *(*v3 + 24);
  if (v22 <= v21 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26BF780E8(v21 + 1);
    }

    else
    {
      if (v22 > v21)
      {
        sub_26BF7B628();
        goto LABEL_27;
      }

      sub_26BF7CB44(v21 + 1);
    }

    v71 = *v60;
    v23 = *(v71 + 40);
    sub_26C00B05C();
    sub_26C00947C();
    sub_26BF7EFF4(&qword_28045F0C0, MEMORY[0x277D6A958]);
    v24 = v72;
    sub_26C00A3CC();
    v25 = type metadata accessor for MLS.AlgorithmIdentifier();
    v67 = *(v25 + 20);
    v68 = v25;
    sub_26BE2E1F0(v24 + v67, v20, &qword_28045EE48, &unk_26C022430);
    v26 = v62;
    v65 = *(v11 + 48);
    v66 = v11 + 48;
    if (v65(v20, 1, v62) == 1)
    {
      sub_26C00B07C();
    }

    else
    {
      (*(v11 + 32))(v14, v20, v26);
      sub_26C00B07C();
      sub_26BF7EFF4(&qword_28045F0C8, MEMORY[0x277D6A988]);
      sub_26C00A3CC();
      (*(v11 + 8))(v14, v26);
    }

    v27 = *(v59 + 20);
    sub_26C00959C();
    sub_26BF7EFF4(&qword_28045F0D0, MEMORY[0x277D6A9E0]);
    v56 = v27;
    sub_26C00A3CC();
    v28 = sub_26C00B0CC();
    v29 = v71 + 56;
    v30 = -1 << *(v71 + 32);
    a2 = v28 & ~v30;
    if ((*(v71 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v55 = v14;
      v31 = ~v30;
      v54 = (v11 + 32);
      v32 = *(v58 + 72);
      v57 = (v11 + 8);
      v33 = &qword_28045EE48;
      v35 = v61;
      v34 = v62;
      v63 = v32;
      v64 = v10;
      do
      {
        sub_26BF7F0BC(*(v71 + 48) + v32 * a2, v10, type metadata accessor for MLS.SubjectPublicKeyInfo);
        if ((sub_26C00945C() & 1) == 0)
        {
          goto LABEL_20;
        }

        v36 = *(v70 + 48);
        sub_26BE2E1F0(&v10[*(v68 + 20)], v35, v33, &unk_26C022430);
        sub_26BE2E1F0(v72 + v67, v35 + v36, v33, &unk_26C022430);
        v37 = v34;
        v38 = v33;
        v39 = v34;
        v40 = v65;
        if (v65(v35, 1, v37) == 1)
        {
          if (v40(v35 + v36, 1, v39) != 1)
          {
            v10 = v64;
            sub_26BF7F05C(v64, type metadata accessor for MLS.SubjectPublicKeyInfo);
            v34 = v62;
            v32 = v63;
            v33 = v38;
            goto LABEL_14;
          }

          v33 = v38;
          sub_26BE2E258(v35, v38, &unk_26C022430);
          v34 = v62;
          v32 = v63;
        }

        else
        {
          v41 = v38;
          v42 = v69;
          sub_26BE2E1F0(v35, v69, v41, &unk_26C022430);
          if (v40(v35 + v36, 1, v39) == 1)
          {
            v10 = v64;
            sub_26BF7F05C(v64, type metadata accessor for MLS.SubjectPublicKeyInfo);
            (*v57)(v42, v39);
            v32 = v63;
            v34 = v39;
            v33 = &qword_28045EE48;
LABEL_14:
            v35 = v61;
            sub_26BE2E258(v61, &qword_28045F0D8, &unk_26C01A530);
            goto LABEL_15;
          }

          v43 = v55;
          (*v54)(v55, v35 + v36, v39);
          sub_26BF7EFF4(&qword_28045F0E0, MEMORY[0x277D6A988]);
          v44 = sub_26C00A43C();
          v45 = *v57;
          (*v57)(v43, v39);
          v45(v69, v39);
          sub_26BE2E258(v35, &qword_28045EE48, &unk_26C022430);
          v32 = v63;
          v34 = v39;
          v33 = &qword_28045EE48;
          if ((v44 & 1) == 0)
          {
            v10 = v64;
LABEL_20:
            sub_26BF7F05C(v10, type metadata accessor for MLS.SubjectPublicKeyInfo);
            goto LABEL_15;
          }
        }

        v10 = v64;
        v46 = &v64[*(v59 + 20)];
        v47 = sub_26C00956C();
        sub_26BF7F05C(v10, type metadata accessor for MLS.SubjectPublicKeyInfo);
        if (v47)
        {
          goto LABEL_30;
        }

LABEL_15:
        a2 = (a2 + 1) & v31;
      }

      while (((*(v29 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_27:
  v48 = *v60;
  *(*v60 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_26BF7F124(v72, *(v48 + 48) + *(v58 + 72) * a2, type metadata accessor for MLS.SubjectPublicKeyInfo);
  v50 = *(v48 + 16);
  v51 = __OFADD__(v50, 1);
  v52 = v50 + 1;
  if (v51)
  {
    __break(1u);
LABEL_30:
    result = sub_26C00AF7C();
    __break(1u);
  }

  else
  {
    *(v48 + 16) = v52;
  }

  return result;
}

uint64_t sub_26BF7A2E8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v90 = *MEMORY[0x277D85DE8];
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_113;
  }

  if (a3)
  {
    sub_26BF782F0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_26BF7B834();
LABEL_113:
      v67 = *v4;
      *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
      v68 = *(v67 + 48) + 56 * a2;
      v69 = *v6;
      v70 = *(v6 + 16);
      v71 = *(v6 + 32);
      *(v68 + 48) = *(v6 + 48);
      *(v68 + 16) = v70;
      *(v68 + 32) = v71;
      *v68 = v69;
      v72 = *(v67 + 16);
      v30 = __OFADD__(v72, 1);
      v73 = v72 + 1;
      if (v30)
      {
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
      }

      *(v67 + 16) = v73;
      v74 = *MEMORY[0x277D85DE8];
      return result;
    }

    sub_26BF7CD10(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_26C00B05C();
  MLS.Identity.SigningIdentity.hash(into:)(&v85);
  result = sub_26C00B0CC();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  v82 = v9 + 56;
  if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_113;
  }

  v80 = v9;
  v81 = ~v11;
  v12 = *v6;
  v13 = *(v6 + 8);
  if (*v6)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13 == 0xC000000000000000;
  }

  v15 = !v14;
  v79 = v15;
  v16 = v13 >> 62;
  v17 = __OFSUB__(HIDWORD(v12), v12);
  v78 = v17;
  while (1)
  {
    sub_26BE2DB68(*(v9 + 48) + 56 * a2, &v85);
    v19 = v85;
    v18 = v86;
    if ((v86 & 0x2000000000000000) == 0)
    {
      break;
    }

    if ((v13 & 0x2000000000000000) == 0)
    {
      goto LABEL_55;
    }

    sub_26BE04890(v12, v13);
    sub_26BE04890(v19, v18);
    v26 = sub_26BFB0104(v19, v12);
    sub_26BE0489C(v19, v18);
    sub_26BE0489C(v12, v13);
    if (v26)
    {
      goto LABEL_62;
    }

LABEL_56:
    result = sub_26BE2DBC4(&v85);
LABEL_57:
    v16 = v13 >> 62;
LABEL_58:
    a2 = (a2 + 1) & v81;
    if (((*(v82 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_113;
    }
  }

  if ((v13 & 0x2000000000000000) != 0)
  {
LABEL_55:
    sub_26BE04890(v12, v13);
    sub_26BE04890(v19, v18);
    sub_26BE0489C(v19, v18);
    sub_26BE0489C(v12, v13);
    goto LABEL_56;
  }

  v20 = v86 >> 62;
  if (v86 >> 62 != 3)
  {
    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_46;
      }

      v29 = *(v85 + 16);
      v28 = *(v85 + 24);
      v30 = __OFSUB__(v28, v29);
      v27 = v28 - v29;
      if (v30)
      {
        goto LABEL_120;
      }

      if (v16 > 1)
      {
        goto LABEL_47;
      }
    }

    else if (v20)
    {
      LODWORD(v27) = HIDWORD(v85) - v85;
      if (__OFSUB__(HIDWORD(v85), v85))
      {
        goto LABEL_121;
      }

      v27 = v27;
      if (v16 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v27 = BYTE6(v86);
      if (v16 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_43:
    v31 = BYTE6(v13);
    if (v16)
    {
      v31 = HIDWORD(v12) - v12;
      if (v78)
      {
        goto LABEL_117;
      }
    }

    goto LABEL_49;
  }

  if (v85)
  {
    v21 = 0;
  }

  else
  {
    v21 = v86 == 0xC000000000000000;
  }

  v23 = !v21 || v16 < 3;
  if (((v23 | v79) & 1) == 0)
  {
    sub_26BE04890(0, 0xC000000000000000);
    sub_26BE04890(0, 0xC000000000000000);
    sub_26BE0489C(0, 0xC000000000000000);
    v24 = 0;
    v25 = 0xC000000000000000;
LABEL_61:
    sub_26BE0489C(v24, v25);
    goto LABEL_62;
  }

LABEL_46:
  v27 = 0;
  if (v16 <= 1)
  {
    goto LABEL_43;
  }

LABEL_47:
  if (v16 != 2)
  {
    if (!v27)
    {
      goto LABEL_60;
    }

    goto LABEL_55;
  }

  v33 = *(v12 + 16);
  v32 = *(v12 + 24);
  v30 = __OFSUB__(v32, v33);
  v31 = v32 - v33;
  if (v30)
  {
    goto LABEL_116;
  }

LABEL_49:
  if (v27 != v31)
  {
    goto LABEL_55;
  }

  if (v27 < 1)
  {
LABEL_60:
    sub_26BE04890(v12, v13);
    sub_26BE04890(v19, v18);
    sub_26BE0489C(v19, v18);
    v24 = v12;
    v25 = v13;
    goto LABEL_61;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v77 = v4;
      v55 = *(v85 + 16);
      v54 = *(v85 + 24);
      sub_26BE04890(v12, v13);
      sub_26BE04890(v19, v18);
      v56 = sub_26C008E9C();
      if (v56)
      {
        v57 = sub_26C008ECC();
        if (__OFSUB__(v55, v57))
        {
          goto LABEL_126;
        }

        v56 += v55 - v57;
      }

      if (__OFSUB__(v54, v55))
      {
        goto LABEL_125;
      }

      goto LABEL_106;
    }

    *&v84[6] = 0;
    *v84 = 0;
    sub_26BE04890(v12, v13);
    sub_26BE04890(v19, v18);
LABEL_108:
    sub_26BE567B0(v84, v12, v13, v83);
    sub_26BE0489C(v19, v18);
    sub_26BE0489C(v12, v13);
    v66 = v83[0];
  }

  else
  {
    if (!v20)
    {
      *v84 = v85;
      *&v84[8] = v86;
      *&v84[10] = *(&v86 + 2);
      sub_26BE04890(v12, v13);
      sub_26BE04890(v19, v18);
      goto LABEL_108;
    }

    v77 = v4;
    if (v85 >> 32 < v85)
    {
      goto LABEL_124;
    }

    sub_26BE04890(v12, v13);
    sub_26BE04890(v19, v18);
    v56 = sub_26C008E9C();
    if (v56)
    {
      v65 = sub_26C008ECC();
      if (__OFSUB__(v19, v65))
      {
        goto LABEL_127;
      }

      v56 += v19 - v65;
    }

LABEL_106:
    sub_26C008EBC();
    sub_26BE567B0(v56, v12, v13, v84);
    sub_26BE0489C(v19, v18);
    sub_26BE0489C(v12, v13);
    v66 = v84[0];
    v4 = v77;
    v9 = v80;
  }

  if ((v66 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_62:
  v35 = v88;
  v34 = v89;
  __swift_project_boxed_opaque_existential_1(v87, v88);
  (*(*(v34 + 8) + 24))(v84, v35);
  v36 = v84[0];

  v38 = *(v6 + 40);
  v37 = *(v6 + 48);
  __swift_project_boxed_opaque_existential_1((v6 + 16), v38);
  (*(*(v37 + 8) + 24))(v83, v38);
  LODWORD(v37) = LOBYTE(v83[0]);

  if (v36 != v37)
  {
    goto LABEL_56;
  }

  v40 = v88;
  v39 = v89;
  __swift_project_boxed_opaque_existential_1(v87, v88);
  v41 = (*(*(v39 + 8) + 16))(v40);
  v43 = v42;
  v45 = *(v6 + 40);
  v44 = *(v6 + 48);
  __swift_project_boxed_opaque_existential_1((v6 + 16), v45);
  v46 = (*(*(v44 + 8) + 16))(v45);
  v48 = v43 >> 62;
  v49 = v47 >> 62;
  if (v43 >> 62 != 3)
  {
    v16 = v13 >> 62;
    if (v48 == 2)
    {
      v59 = *(v41 + 16);
      v58 = *(v41 + 24);
      v30 = __OFSUB__(v58, v59);
      v50 = v58 - v59;
      v9 = v80;
      if (v30)
      {
        goto LABEL_122;
      }

      goto LABEL_90;
    }

    v9 = v80;
    if (v48 == 1)
    {
      LODWORD(v50) = HIDWORD(v41) - v41;
      if (__OFSUB__(HIDWORD(v41), v41))
      {
        goto LABEL_123;
      }

      v50 = v50;
      if (v49 <= 1)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v50 = BYTE6(v43);
      if (v49 <= 1)
      {
        goto LABEL_91;
      }
    }

LABEL_74:
    if (v49 != 2)
    {
      if (!v50)
      {
        goto LABEL_128;
      }

LABEL_99:
      sub_26BE00258(v46, v47);
      sub_26BE00258(v41, v43);
      result = sub_26BE2DBC4(&v85);
      goto LABEL_58;
    }

    v52 = *(v46 + 16);
    v51 = *(v46 + 24);
    v30 = __OFSUB__(v51, v52);
    v53 = v51 - v52;
    if (v30)
    {
      goto LABEL_118;
    }

LABEL_93:
    if (v50 != v53)
    {
      goto LABEL_99;
    }

    goto LABEL_94;
  }

  v50 = 0;
  v16 = v13 >> 62;
  if (v41)
  {
    v9 = v80;
    if (v49 <= 1)
    {
      goto LABEL_91;
    }

    goto LABEL_74;
  }

  v9 = v80;
  if (v43 == 0xC000000000000000 && v47 >> 62 == 3)
  {
    v50 = 0;
    if (!v46 && v47 == 0xC000000000000000)
    {
      sub_26BE00258(0, 0xC000000000000000);
      v75 = 0;
      v76 = 0xC000000000000000;
      goto LABEL_129;
    }
  }

LABEL_90:
  if (v49 > 1)
  {
    goto LABEL_74;
  }

LABEL_91:
  if (!v49)
  {
    v53 = BYTE6(v47);
    goto LABEL_93;
  }

  if (__OFSUB__(HIDWORD(v46), v46))
  {
    goto LABEL_119;
  }

  if (v50 != HIDWORD(v46) - v46)
  {
    goto LABEL_99;
  }

LABEL_94:
  if (v50 >= 1)
  {
    v60 = v46;
    v61 = v47;
    sub_26BE00608(v46, v47);
    v62 = sub_26BECB6A4(v41, v43, v60, v61);
    v63 = v41;
    v64 = v62;
    sub_26BE00258(v63, v43);
    sub_26BE00258(v60, v61);
    result = sub_26BE2DBC4(&v85);
    if (v64)
    {
      goto LABEL_130;
    }

    v9 = v80;
    goto LABEL_57;
  }

LABEL_128:
  sub_26BE00258(v46, v47);
  v75 = v41;
  v76 = v43;
LABEL_129:
  sub_26BE00258(v75, v76);
  sub_26BE2DBC4(&v85);
LABEL_130:
  result = sub_26C00AF7C();
  __break(1u);
  return result;
}

void *sub_26BF7ABB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E490, &qword_26C015C80);
  v2 = *v0;
  v3 = sub_26C00ABCC();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_26BF7AD14(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_26C00ABCC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 2 * v16) = *(*(v4 + 48) + 2 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

void *sub_26BF7AE44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB60, &qword_26C01FD60);
  v2 = *v0;
  v3 = sub_26C00ABCC();
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
    for (i = (v9 + 63) >> 6; v11; *(v21 + 8) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v4 + 48) + v17;
      *v21 = v19;
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

void *sub_26BF7AF98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED70, &qword_26C016128);
  v2 = *v0;
  v3 = sub_26C00ABCC();
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_26BE00608(v18, *(&v18 + 1));
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

void *sub_26BF7B0F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB38, &qword_26C01FCB8);
  v2 = *v0;
  v3 = sub_26C00ABCC();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

void *sub_26BF7B24C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB70, &qword_26C01FD90);
  v2 = *v0;
  v3 = sub_26C00ABCC();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

void *sub_26BF7B38C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB68, &qword_26C01FD88);
  v2 = *v0;
  v3 = sub_26C00ABCC();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void *sub_26BF7B4CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED40, &unk_26C0160F8);
  v2 = *v0;
  v3 = sub_26C00ABCC();
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

void *sub_26BF7B628()
{
  v1 = v0;
  v2 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB20, &qword_26C01FCA0);
  v7 = *v0;
  v8 = sub_26C00ABCC();
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
        sub_26BF7F0BC(*(v7 + 48) + v22, v6, type metadata accessor for MLS.SubjectPublicKeyInfo);
        result = sub_26BF7F124(v6, *(v9 + 48) + v22, type metadata accessor for MLS.SubjectPublicKeyInfo);
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

void *sub_26BF7B834()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB00, &qword_26C01FC90);
  v2 = *v0;
  v3 = sub_26C00ABCC();
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
        v17 = 56 * (v14 | (v8 << 6));
        result = sub_26BE2DB68(*(v2 + 48) + v17, v22);
        v18 = *(v4 + 48) + v17;
        v19 = v23;
        v20 = v22[2];
        v21 = v22[1];
        *v18 = v22[0];
        *(v18 + 16) = v21;
        *(v18 + 32) = v20;
        *(v18 + 48) = v19;
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

uint64_t sub_26BF7B9B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E490, &qword_26C015C80);
  result = sub_26C00ABDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_26C00B05C();

      sub_26C00924C();
      result = sub_26C00B0CC();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26BF7BBE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_26C00ABDC();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(*(v5 + 48) + 2 * (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      sub_26C00B05C();
      sub_26C00B08C();
      result = sub_26C00B0CC();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 2 * v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_26BF7BDFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB60, &qword_26C01FD60);
  result = sub_26C00ABDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = *(v3 + 48) + 16 * (v15 | (v7 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v6 + 40);
      sub_26C00B05C();
      sub_26C00B09C();
      MEMORY[0x26D699B60](v20);
      result = sub_26C00B0CC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26BF7C03C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED70, &qword_26C016128);
  result = sub_26C00ABDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_26C00B05C();
      sub_26BE00608(v19, v20);
      sub_26C00911C();
      result = sub_26C00B0CC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26BF7C278(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB38, &qword_26C01FCB8);
  result = sub_26C00ABDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      sub_26C00B05C();
      sub_26C00B07C();
      if (v19)
      {

        sub_26C00A58C();
      }

      result = sub_26C00B0CC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_32;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_30;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26BF7C4CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB70, &qword_26C01FD90);
  result = sub_26C00ABDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_26C00B05C();
      sub_26C00B09C();
      result = sub_26C00B0CC();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26BF7C6EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB68, &qword_26C01FD88);
  result = sub_26C00ABDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_26C00B05C();
      MEMORY[0x26D699B20](v17);
      result = sub_26C00B0CC();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26BF7C90C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED40, &unk_26C0160F8);
  result = sub_26C00ABDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_26C00B05C();

      sub_26C00A58C();
      result = sub_26C00B0CC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26BF7CB44(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB20, &qword_26C01FCA0);
  result = sub_26C00ABDC();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = 1 << *(v9 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v9 + 56);
    for (i = (v14 + 63) >> 6; v16; result = sub_26BF78858(v8, v12))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      sub_26BF7F0BC(*(v9 + 48) + *(v5 + 72) * (v18 | (v13 << 6)), v8, type metadata accessor for MLS.SubjectPublicKeyInfo);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= i)
      {
        goto LABEL_15;
      }

      v20 = *(v9 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v12;
  }

  return result;
}

uint64_t sub_26BF7CD10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB00, &qword_26C01FC90);
  result = sub_26C00ABDC();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_41:
    *v2 = v6;
    return result;
  }

  v44 = v2;
  v45 = v3;
  v7 = 0;
  v8 = v3 + 56;
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v46 = (v11 - 1) & v11;
LABEL_17:
    sub_26BE2DB68(*(v3 + 48) + 56 * (v19 | (v7 << 6)), &v48);
    v22 = *(v6 + 40);
    sub_26C00B05C();
    v23 = v48;
    if ((*(&v48 + 1) & 0x2000000000000000) == 0)
    {
      MEMORY[0x26D699B20](0);
      sub_26C00911C();
      goto LABEL_28;
    }

    MEMORY[0x26D699B20](1);
    if (v23 >> 62)
    {
      v43 = sub_26C00AB8C();
      MEMORY[0x26D699B20](v43);
      result = sub_26C00AB8C();
      v24 = result;
      if (!result)
      {
        goto LABEL_28;
      }
    }

    else
    {
      result = MEMORY[0x26D699B20](*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10));
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_28;
      }
    }

    if (v24 < 1)
    {
      goto LABEL_44;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      v25 = 0;
      do
      {
        MEMORY[0x26D6996F0](v25++, v23);
        type metadata accessor for SecCertificate(0);
        sub_26BF7EFF4(&qword_28045FB08, type metadata accessor for SecCertificate);
        sub_26C0092BC();
        swift_unknownObjectRelease();
      }

      while (v24 != v25);
    }

    else
    {
      v26 = (v23 + 32);
      type metadata accessor for SecCertificate(0);
      sub_26BF7EFF4(&qword_28045FB08, type metadata accessor for SecCertificate);
      do
      {
        v27 = *v26++;
        v28 = v27;
        sub_26C0092BC();

        --v24;
      }

      while (v24);
    }

LABEL_28:
    v30 = *(&v50 + 1);
    v29 = v51;
    __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
    (*(*(v29 + 8) + 24))(v47, v30);

    sub_26C00B08C();
    v32 = *(&v50 + 1);
    v31 = v51;
    __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
    v33 = (*(*(v31 + 8) + 16))(v32);
    v35 = v34;
    sub_26C00911C();
    sub_26BE00258(v33, v35);
    result = sub_26C00B0CC();
    v36 = -1 << *(v6 + 32);
    v37 = result & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~*(v13 + 8 * (v37 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v36) >> 6;
      v3 = v45;
      while (++v38 != v40 || (v39 & 1) == 0)
      {
        v41 = v38 == v40;
        if (v38 == v40)
        {
          v38 = 0;
        }

        v39 |= v41;
        v42 = *(v13 + 8 * v38);
        if (v42 != -1)
        {
          v14 = __clz(__rbit64(~v42)) + (v38 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_43;
    }

    v14 = __clz(__rbit64((-1 << v37) & ~*(v13 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
    v3 = v45;
LABEL_9:
    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = *(v6 + 48) + 56 * v14;
    v16 = v48;
    v17 = v49;
    v18 = v50;
    *(v15 + 48) = v51;
    *(v15 + 16) = v17;
    *(v15 + 32) = v18;
    *v15 = v16;
    ++*(v6 + 16);
    v11 = v46;
  }

  v20 = v7;
  while (1)
  {
    v7 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v7 >= v12)
    {

      v2 = v44;
      goto LABEL_41;
    }

    v21 = *(v8 + 8 * v7);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v46 = (v21 - 1) & v21;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_26BF7D18C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_26BFD9590(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_26BF7D6D8((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26BEEC164(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_26BEEC164((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_26BF7D6D8((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}