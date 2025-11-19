double sub_265FE04A0@<D0>(unsigned int a1@<W0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_265FDA660(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v16 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_265FCE2C0();
      v11 = v16;
    }

    v12 = (*(v11 + 56) + 80 * v8);
    v13 = v12[3];
    a2[2] = v12[2];
    a2[3] = v13;
    *(a2 + 58) = *(v12 + 58);
    v14 = v12[1];
    *a2 = *v12;
    a2[1] = v14;
    sub_265FCD9DC(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *(a2 + 58) = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_265FE0550(uint64_t *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2[6];
  v8 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v7);
  v9 = *(a3 + 80);
  v18[4] = *(a3 + 64);
  v18[5] = v9;
  v18[6] = *(a3 + 96);
  v19 = *(a3 + 112);
  v10 = *(a3 + 16);
  v18[0] = *a3;
  v18[1] = v10;
  v11 = *(a3 + 48);
  v18[2] = *(a3 + 32);
  v18[3] = v11;
  v12 = (*(v8 + 8))(v18, v7, v8);
  v13 = *a1;
  *a1 = v12;

  v15 = a4[4];
  v14 = a4[5];
  v16 = a4[7];
  sub_265FCF0EC(0, &unk_2800551B0, 0x277CD9E40);
  sub_265FCF0EC(0, &unk_280055710, 0x277CD9E58);
  swift_getKeyPath();
  *&v18[0] = v16;
  sub_265FE7E7C();
  sub_265FEBF40();

  v17 = v15;
  swift_getAtKeyPath();
}

uint64_t sub_265FE06A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_265FEBF20();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = a3;
    v8[4] = a4;

    v9 = a4;
    sub_265FCFFB8(&unk_265FF0410, v8);
  }

  return result;
}

uint64_t sub_265FE079C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x277D84F90];
  sub_265FE48DC(MEMORY[0x277D84F90]);
  v83 = v10;
  v12 = v11;
  sub_265FE48DC(v9);
  *&v68 = v13;
  *(&v68 + 1) = v14;
  sub_265FE48DC(v9);
  *&v67 = v15;
  *(&v67 + 1) = v16;
  sub_265FE48DC(v9);
  *&v66 = v17;
  *(&v66 + 1) = v18;
  v19 = *(a4 + 16);
  v20 = [v19 displayId];
  v78 = v4;
  v21 = *v4;
  if (*(v21 + 16) && (v22 = sub_265FDA660(v20), (v23 & 1) != 0))
  {
    v24 = (*(v21 + 56) + 80 * v22);
    v89 = *v24;
    v26 = v24[2];
    v25 = v24[3];
    v27 = *(v24 + 58);
    v90 = v24[1];
    v91 = v26;
    *(v92 + 10) = v27;
    v92[0] = v25;
    v85 = *v24;
    v28 = v24[1];
    v29 = v24[2];
    v30 = v24[3];
    *&v88[10] = *(v24 + 58);
    v87 = v29;
    *v88 = v30;
    v86 = v28;
    sub_265FCF134(&v89, &v93);
    sub_265FD0AC4(a3, &v108);
    v79 = *(&v109 + 1);
    v81 = v109;
    v31 = v110;
    v77 = v111;
    v75 = *(&v108 + 1);
    v76 = *(&v111 + 1);
    v64 = v112;
    v65 = v108;
    v63 = *(&v112 + 1);
    v70 = *v113;
    v106 = *&v113[2];
    v107 = *&v113[6];
    v73 = *&v113[16];
    v74 = *&v113[8];
    v72 = *&v113[24];
    *&v93 = v83;
    *(&v93 + 1) = v12;
    v94 = v68;
    v95 = v67;
    v96 = v66;
    v97 = 0;
    v98 = 0;
    v99 = -258;
    v102 = 0;
    v103 = 0;
    v104 = -258;
    sub_265FD24E8(&v93);
    v69 = [v19 displayId];
    *v114 = v85;
    *&v114[16] = v86;
    v115 = v87;
    *v116 = *v88;
    *&v116[10] = *&v88[10];
    v84 = *&v114[8];
    v32 = v85;
    v33 = *(&v86 + 1);
    v36 = *(&v87 + 1);
    v34 = v87;
    v35 = *v88;
    sub_265FCF134(v114, &v108);
    v37 = *v78;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v108 = *v78;
    sub_265FCEE2C(v114, v69, isUniquelyReferenced_nonNull_native);
    v40 = v63;
    v39 = v64;
    v41 = *(&v31 + 1);
    v42 = v31;
    v43 = v79;
    v44 = v81;
    *v78 = v108;
    v45 = v65;
    v46 = *&v88[8];
    v47 = *&v88[24];
  }

  else
  {

    sub_265FE219C(a3, v114);
    v48 = *(&v115 + 1);
    v49 = *v116;
    v50 = v115;
    v82 = *&v114[24];

    v80 = v50;

    v71 = v49;

    v51 = MEMORY[0x277D84F90];
    sub_265FE48DC(MEMORY[0x277D84F90]);
    sub_265FE48DC(v51);
    sub_265FE48DC(v51);
    sub_265FE48DC(v51);
    v76 = v53;
    v77 = v52;
    *&v108 = v83;
    *(&v108 + 1) = v12;
    v109 = v68;
    v110 = v67;
    v111 = v66;
    v112 = 0uLL;
    *v113 = -258;
    *&v113[16] = 0;
    *&v113[8] = 0;
    *&v113[24] = -258;
    sub_265FD24E8(&v108);

    v45 = *v114;
    v84 = *&v114[8];

    v75 = v84;

    v91 = v115;
    v92[0] = *v116;
    *(v92 + 10) = *&v116[10];
    v89 = *v114;
    v90 = *&v114[16];
    sub_265FD0968(&v93);
    if (v105 == 1)
    {
      sub_265FD6FFC(&v93, &unk_280054BE0, &qword_265FF0390);
      v73 = 0;
      v74 = 0;
      v72 = -258;
    }

    else
    {
      v73 = *(&v93 + 1);
      v74 = v93;
      v72 = v94;
      sub_265FC23C0();
      sub_265FC2504(&v93);
    }

    v70 = -258;
    sub_265FD2458(0, 0, 65278);
    v54 = [v19 displayId];
    sub_265FCF134(v114, &v93);
    v55 = *v78;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    *&v93 = *v78;
    sub_265FCEE2C(v114, v54, v56);
    v39 = 0;
    v40 = 0;
    *v78 = v93;
    v46 = *&v116[8];
    v32 = v45;
    v47 = *&v116[24];
    v43 = v80;
    v44 = v82;
    v33 = v82;
    v34 = v80;
    v42 = v48;
    v36 = v48;
    v41 = v71;
    v35 = v71;
  }

  *a1 = v32;
  *(a1 + 8) = v84;
  *(a1 + 24) = v33;
  *(a1 + 32) = v34;
  *(a1 + 40) = v36;
  *(a1 + 48) = v35;
  *(a1 + 56) = v46;
  *(a1 + 72) = v47;
  *&v108 = v45;
  *(&v108 + 1) = v75;
  *&v109 = v44;
  *(&v109 + 1) = v43;
  *&v110 = v42;
  *(&v110 + 1) = v41;
  *&v111 = v77;
  *(&v111 + 1) = v76;
  *&v112 = v39;
  *(&v112 + 1) = v40;
  *v113 = v70;
  v57 = v106;
  *&v113[2] = v106;
  *&v113[6] = v107;
  *&v113[8] = v74;
  *&v113[16] = v73;
  *&v113[24] = v72;
  v58 = v109;
  *a2 = v108;
  a2[1] = v58;
  v59 = v110;
  v60 = v111;
  *(a2 + 90) = *&v113[10];
  v61 = *v113;
  a2[4] = v112;
  a2[5] = v61;
  a2[2] = v59;
  a2[3] = v60;
  *&v93 = v45;
  *(&v93 + 1) = v75;
  *&v94 = v44;
  *(&v94 + 1) = v43;
  *&v95 = v42;
  *(&v95 + 1) = v41;
  *&v96 = v77;
  *(&v96 + 1) = v76;
  v97 = v39;
  v98 = v40;
  v99 = v70;
  v101 = v107;
  v100 = v57;
  v102 = v74;
  v103 = v73;
  v104 = v72;
  sub_265FD24B0(&v108, &v85);
  return sub_265FD24E8(&v93);
}

uint64_t sub_265FE0D40@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v11 = result;
  v13 = *(a5 + 16);
  if (!a4)
  {
    if (v13)
    {
      v15 = 0;
      v18 = (a5 + 48);
      while (1)
      {
        result = *(v18 - 2);
        v19 = *(v18 - 1);
        v20 = *v18;
        if ((v20 & 0x80000000) != 0)
        {
          if ((a3 & 0x8000) != 0)
          {
            v22 = result == v11 && v19 == a2;
            if (v22 || (result = sub_265FEC6C0(), (result & 1) != 0))
            {
              if (((a3 ^ v20) & 1) == 0 && (((a3 ^ v20) >> 8) & 1) == 0)
              {
                goto LABEL_4;
              }
            }
          }
        }

        else if ((a3 & 0x8000) == 0)
        {
          if (result == v11 && v19 == a2)
          {
            goto LABEL_4;
          }

          result = sub_265FEC6C0();
          if (result)
          {
            goto LABEL_4;
          }
        }

        v18 += 12;
        if (v13 == ++v15)
        {
          goto LABEL_28;
        }
      }
    }

    goto LABEL_28;
  }

  v15 = sub_265FC0994(v11, a2, a3, a5 + 32, v13, (a4 + 16));
  v17 = v16;

  if (v17)
  {
LABEL_28:
    a7[6] = 0u;
    a7[7] = 0u;
    a7[4] = 0u;
    a7[5] = 0u;
    a7[2] = 0u;
    a7[3] = 0u;
    *a7 = 0u;
    a7[1] = 0u;
    a7[8] = xmmword_265FEF050;
    return result;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

LABEL_4:
  if (v15 >= *(a6 + 16))
  {
LABEL_30:
    __break(1u);
    return result;
  }

  return sub_265FC24A8(a6 + 144 * v15 + 32, a7);
}

uint64_t sub_265FE0EDC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 208) = v14;
  *(v8 + 216) = v15;
  *(v8 + 192) = v13;
  *(v8 + 176) = a7;
  *(v8 + 184) = a8;
  *(v8 + 160) = a5;
  *(v8 + 168) = a6;
  *(v8 + 296) = a3;
  *(v8 + 144) = a2;
  *(v8 + 152) = a4;
  *(v8 + 224) = sub_265FEC250();
  *(v8 + 232) = sub_265FEC240();
  v10 = sub_265FEC230();
  *(v8 + 240) = v10;
  *(v8 + 248) = v9;

  return MEMORY[0x2822009F8](sub_265FE0F98, v10, v9);
}

uint64_t sub_265FE0F98()
{
  v51 = v0;
  if (*(v0 + 296) == 1)
  {
    if (qword_2800547D0 != -1)
    {
      swift_once();
    }

    v1 = sub_265FEC060();
    *(v0 + 256) = __swift_project_value_buffer(v1, qword_280055050);
    v2 = sub_265FEC040();
    v3 = sub_265FEC390();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_265FBB000, v2, v3, "Updating display to match active preferences", v4, 2u);
      MEMORY[0x2667764A0](v4, -1, -1);
    }

    type metadata accessor for CADisplayActor();
    swift_initStaticObject();
    sub_265FE7AF8(&qword_280055080, type metadata accessor for CADisplayActor);
    v6 = sub_265FEC230();

    return MEMORY[0x2822009F8](sub_265FE14E4, v6, v5);
  }

  v7 = *(v0 + 168);
  v8 = *(*(v0 + 152) + 16);
  v9 = *(v0 + 144);
  v10 = [v8 displayId];
  swift_beginAccess();
  v11 = *(v7 + 80);
  if (*(v11 + 16) && (v12 = sub_265FDA660(v10), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    v15 = *&v14[OBJC_IVAR____TtC13ShellSceneKit27RootScenePresentationBinder_rootWindow];
    v16 = v14;
    v17 = [v15 displayConfiguration];
    sub_265FCF0EC(0, &qword_28156BE10, 0x277D0ACE0);
    v18 = v9;
    LOBYTE(v15) = sub_265FEC420();

    if (v15)
    {
      goto LABEL_15;
    }

    [v16 invalidate];
  }

  else
  {
    swift_endAccess();
    v16 = 0;
  }

  v19 = [objc_allocWithZone(MEMORY[0x277D75928]) initWithDisplayConfiguration_];
  v20 = objc_allocWithZone(type metadata accessor for RootScenePresentationBinder());
  v21 = sub_265FEC0D0();
  v22 = [v20 initWithIdentifier:v21 priority:0 appearanceStyle:0 rootWindow:v19];

  v23 = [v8 displayId];
  swift_beginAccess();
  v24 = v22;
  v25 = *(v7 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v49[0] = *(v7 + 80);
  *(v7 + 80) = 0x8000000000000000;
  sub_265FCECE4(v24, v23, isUniquelyReferenced_nonNull_native);
  *(v7 + 80) = *&v49[0];
  swift_endAccess();

  v16 = v24;
LABEL_15:
  v27 = *(v0 + 232);
  v29 = *(v0 + 184);
  v28 = *(v0 + 192);
  v30 = *(v0 + 176);
  v31 = v16;

  v32 = v31;
  sub_265FD3158(v31);
  v33 = *(v30 + 24);
  *(v30 + 24) = v31;

  v34 = *(v29 + 8);
  v35 = *(v29 + 16);
  v47[0] = *v29;
  v47[1] = v34;
  v48 = v35;
  v36 = v28[3];
  v49[2] = v28[2];
  v50[0] = v36;
  *(v50 + 10) = *(v28 + 58);
  v37 = v28[1];
  v49[0] = *v28;
  v49[1] = v37;
  sub_265FC23C0();
  v38 = sub_265FD0584(v47, v49);
  sub_265FC23C8();
  sub_265FE7B6C(v29 + 104, v0 + 80, &qword_280054F70, &qword_265FEE9F0);
  v39 = *(v0 + 104);
  sub_265FD6FFC(v0 + 80, &qword_280054F70, &qword_265FEE9F0);
  if (!v39)
  {
    return sub_265FEC5E0();
  }

  v40 = *(v0 + 200);
  v41 = *(v0 + 208);
  v42 = *(v40 + 40);
  *(v40 + 40) = v38;
  v43 = v38;

  sub_265FD5298();
  if ((~*(v41 + 104) & 0xFEFE) != 0)
  {
    sub_265FE5470(*(v0 + 176), *(v0 + 200));
  }

  v44 = *(v0 + 216);
  sub_265FC5158();

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_265FE14E4()
{
  [*(v0[19] + 16) setDisplayProperties_];
  v1 = v0[30];
  v2 = v0[31];

  return MEMORY[0x2822009F8](sub_265FE1554, v1, v2);
}

uint64_t sub_265FE1554()
{
  v1 = sub_265FEC2A0();
  v2 = v0[32];
  if (v1)
  {
    v3 = v0[29];

    v4 = sub_265FEC040();
    v5 = sub_265FEC370();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_265FBB000, v4, v5, "Task cancelled since display update. Ending early.", v6, 2u);
      MEMORY[0x2667764A0](v6, -1, -1);
    }

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = sub_265FEC040();
    v10 = sub_265FEC390();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_265FBB000, v9, v10, "Updating configurations to match display", v11, 2u);
      MEMORY[0x2667764A0](v11, -1, -1);
    }

    v12 = v0[28];
    v13 = v0[21];

    v14 = *(v13 + 16);
    v0[33] = v14;
    v15 = v14;
    v0[34] = sub_265FEC240();
    v17 = sub_265FEC230();
    v0[35] = v17;
    v0[36] = v16;

    return MEMORY[0x2822009F8](sub_265FE1718, v17, v16);
  }
}

uint64_t sub_265FE1718()
{
  v1 = *(v0[33] + OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_displayMonitor);
  v0[2] = v0;
  v0[3] = sub_265FE1838;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800556F0, &qword_265FF03C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_265FE1E28;
  v0[13] = &block_descriptor_50;
  v0[14] = v2;
  [v1 updateTransformsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_265FE1838()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_265FE1940, v2, v1);
}

uint64_t sub_265FE1940()
{
  v2 = v0[33];
  v1 = v0[34];

  v3 = v0[30];
  v4 = v0[31];

  return MEMORY[0x2822009F8](sub_265FE19A8, v3, v4);
}

uint64_t sub_265FE19A8()
{
  v51 = v0;
  if (sub_265FEC2A0())
  {
    v1 = v0[32];
    v2 = v0[29];

    v3 = sub_265FEC040();
    v4 = sub_265FEC370();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_265FBB000, v3, v4, "Task cancelled since updateConfigurations. Ending early.", v5, 2u);
      MEMORY[0x2667764A0](v5, -1, -1);
    }

    goto LABEL_14;
  }

  v6 = v0[19];
  v7 = *(v0[21] + 16);
  v3 = sub_265FCF190(v6);

  v8 = v0[21];
  v9 = *(v0[19] + 16);
  v10 = [v9 displayId];
  swift_beginAccess();
  v11 = *(v8 + 80);
  if (!*(v11 + 16) || (v12 = sub_265FDA660(v10), (v13 & 1) == 0))
  {
    swift_endAccess();
    v16 = 0;
    goto LABEL_9;
  }

  v14 = *(*(v11 + 56) + 8 * v12);
  swift_endAccess();
  v15 = *&v14[OBJC_IVAR____TtC13ShellSceneKit27RootScenePresentationBinder_rootWindow];
  v16 = v14;
  v17 = [v15 displayConfiguration];
  sub_265FCF0EC(0, &qword_28156BE10, 0x277D0ACE0);
  v18 = v3;
  LOBYTE(v15) = sub_265FEC420();

  if ((v15 & 1) == 0)
  {
    [v16 invalidate];
LABEL_9:
    v19 = [objc_allocWithZone(MEMORY[0x277D75928]) initWithDisplayConfiguration_];
    v20 = objc_allocWithZone(type metadata accessor for RootScenePresentationBinder());
    v21 = sub_265FEC0D0();
    v22 = [v20 initWithIdentifier:v21 priority:0 appearanceStyle:0 rootWindow:v19];

    v23 = [v9 displayId];
    swift_beginAccess();
    v24 = v22;
    v25 = *(v8 + 80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v49[0] = *(v8 + 80);
    *(v8 + 80) = 0x8000000000000000;
    sub_265FCECE4(v24, v23, isUniquelyReferenced_nonNull_native);
    *(v8 + 80) = *&v49[0];
    swift_endAccess();

    v16 = v24;
  }

  v27 = v0[29];
  v29 = v0[23];
  v28 = v0[24];
  v30 = v0[22];
  v31 = v16;

  v32 = v31;
  sub_265FD3158(v31);
  v33 = *(v30 + 24);
  *(v30 + 24) = v31;

  v34 = *(v29 + 8);
  v35 = *(v29 + 16);
  v47[0] = *v29;
  v47[1] = v34;
  v48 = v35;
  v36 = v28[3];
  v49[2] = v28[2];
  v50[0] = v36;
  *(v50 + 10) = *(v28 + 58);
  v37 = v28[1];
  v49[0] = *v28;
  v49[1] = v37;
  sub_265FC23C0();
  v38 = sub_265FD0584(v47, v49);
  sub_265FC23C8();
  sub_265FE7B6C(v29 + 104, (v0 + 10), &qword_280054F70, &qword_265FEE9F0);
  v39 = v0[13];
  sub_265FD6FFC((v0 + 10), &qword_280054F70, &qword_265FEE9F0);
  if (!v39)
  {
    return sub_265FEC5E0();
  }

  v40 = v0[25];
  v41 = v0[26];
  v42 = *(v40 + 40);
  *(v40 + 40) = v38;
  v43 = v38;

  sub_265FD5298();
  if ((~*(v41 + 104) & 0xFEFE) != 0)
  {
    sub_265FE5470(v0[22], v0[25]);
  }

  v44 = v0[27];
  sub_265FC5158();

LABEL_14:
  v45 = v0[1];

  return v45();
}

uint64_t sub_265FE1E28(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_265FE1E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_265FEC240();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_265FE7E38(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_265FEC550();
  MEMORY[0x2667756D0](0xD00000000000003FLL, 0x8000000265FF1E50);
  v12 = sub_265FEC800();
  MEMORY[0x2667756D0](v12);

  MEMORY[0x2667756D0](46, 0xE100000000000000);
  result = sub_265FEC5E0();
  __break(1u);
  return result;
}

uint64_t sub_265FE2014(uint64_t a1, uint64_t a2)
{
  sub_265FEC240();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_265FE7910();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_265FEC550();
    MEMORY[0x2667756D0](0xD00000000000003FLL, 0x8000000265FF1E50);
    v8 = sub_265FEC800();
    MEMORY[0x2667756D0](v8);

    MEMORY[0x2667756D0](46, 0xE100000000000000);
    result = sub_265FEC5E0();
    __break(1u);
  }

  return result;
}

uint64_t sub_265FE219C@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *&v74 = sub_265FD21A0(MEMORY[0x277D84F90]);
  *(&v74 + 1) = v5;
  *&v75 = v6;
  sub_265FE48DC(v4);
  *(&v75 + 1) = v7;
  *&v76 = v8;
  sub_265FE48DC(v4);
  *(&v76 + 1) = v9;
  *v77 = v10;
  *&v77[16] = 0;
  *&v77[24] = -258;
  v61 = *(a1 + 16);
  if (v61)
  {
    v62 = 0;
    v63 = 0;
    v11 = 0;
    v64 = 65278;
    while (1)
    {
      if (v11 >= *(a1 + 16))
      {
        __break(1u);
LABEL_81:
        *&v77[8] = v62;
        *&v77[16] = v63;
        *&v77[24] = v64;
        goto LABEL_82;
      }

      sub_265FC24A8(a1 + 32 + 144 * v11, &v70);
      v13 = *(&v70 + 1);
      v12 = v70;
      v14 = v71;
      v15 = v74;
      v2 = v75;
      v16 = *(*(&v74 + 1) + 16);
      if (v74)
      {

        v4 = sub_265FC0994(v12, v13, v14, *(&v15 + 1) + 32, v16, (v15 + 16));
        v18 = v17;

        if ((v18 & 1) == 0)
        {
          while (1)
          {
            *&v77[8] = v62;
            *&v77[16] = v63;
            *&v77[24] = v64;
            if ((v4 & 0x8000000000000000) != 0)
            {
              break;
            }

LABEL_82:
            if (v4 < *(v2 + 2))
            {
              goto LABEL_86;
            }

            __break(1u);
          }

          __break(1u);
LABEL_86:
          sub_265FC24A8(&v2[72 * v4 + 16], &v66);
          sub_265FD6FFC(&v66, &unk_280054BE0, &qword_265FF0390);
          *&v66 = 0;
          *(&v66 + 1) = 0xE000000000000000;
          sub_265FEC550();

          v66 = v70;
          LOWORD(v67) = v71;
          sub_265FC23C0();
          v57 = Profile.DisplayIdentity.description.getter();
          v59 = v58;
          sub_265FC23C8();
          MEMORY[0x2667756D0](v57, v59);

          result = sub_265FEC5E0();
          __break(1u);
          return result;
        }
      }

      else if (v16)
      {
        v4 = 0;
        v33 = (*(&v74 + 1) + 48);
        do
        {
          v34 = *(v33 - 2);
          v35 = *(v33 - 1);
          v36 = *v33;
          if ((v36 & 0x80000000) != 0)
          {
            if (v14 < 0)
            {
              v38 = v34 == v12 && v35 == v13;
              if (v38 || (sub_265FEC6C0()) && ((v14 ^ v36) & 1) == 0 && (((v14 ^ v36) >> 8) & 1) == 0)
              {
                goto LABEL_81;
              }
            }
          }

          else if ((v14 & 0x80000000) == 0)
          {
            v37 = v34 == v12 && v35 == v13;
            if (v37 || (sub_265FEC6C0() & 1) != 0)
            {
              goto LABEL_81;
            }
          }

          v33 += 12;
          ++v4;
        }

        while (v16 != v4);
      }

      v68 = 0u;
      memset(v69, 0, 80);
      v66 = 0u;
      v67 = 0u;
      v69[5] = xmmword_265FEF050;
      sub_265FD6FFC(&v66, &unk_280054BE0, &qword_265FF0390);
      v20 = *(&v70 + 1);
      v19 = v70;
      v21 = v71;
      sub_265FC24A8(&v70, &v66);
      sub_265FC23C0();
      sub_265FBF4AC(&v66, v19, v20, v21);
      v22 = v70;
      v4 = v71;
      if (BYTE2(v71) == 1)
      {
        v24 = *(&v75 + 1);
        v23 = v76;
        v25 = *(v76 + 16);
        if (*(&v75 + 1))
        {

          sub_265FC0994(v22, *(&v22 + 1), v4, v23 + 32, v25, (v24 + 16));
          v27 = v26;

          if ((v27 & 1) == 0)
          {
            goto LABEL_77;
          }
        }

        else if (v25)
        {
          v2 = (v76 + 48);
          do
          {
            v39 = *(v2 - 2);
            v40 = *(v2 - 1);
            v41 = *v2;
            if (v41 < 0)
            {
              if ((v4 & 0x80000000) != 0)
              {
                v43 = v39 == v22 && v40 == *(&v22 + 1);
                if (v43 || (sub_265FEC6C0()) && ((v4 ^ v41) & 1) == 0 && (((v4 ^ v41) >> 8) & 1) == 0)
                {
                  goto LABEL_77;
                }
              }
            }

            else if ((v4 & 0x80000000) == 0)
            {
              v42 = v39 == v22 && v40 == *(&v22 + 1);
              if (v42 || (sub_265FEC6C0() & 1) != 0)
              {
                goto LABEL_77;
              }
            }

            v2 += 12;
            --v25;
          }

          while (v25);
        }

        sub_265FBFE5C(v22, *(&v22 + 1), v4);
LABEL_77:
        v49 = *(&v70 + 1);
        v4 = v70;
        v50 = v71;
        sub_265FC23C0();
        sub_265FC2504(&v70);
        sub_265FD2458(v62, v63, v64);
        v62 = v4;
        v63 = v49;
        v64 = v50;
        goto LABEL_5;
      }

      v29 = *(&v76 + 1);
      v28 = *v77;
      v30 = *(*v77 + 16);
      if (*(&v76 + 1))
      {

        sub_265FC0994(v22, *(&v22 + 1), v4, v28 + 32, v30, (v29 + 16));
        v32 = v31;

        if ((v32 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v30)
      {
        v2 = (*v77 + 48);
        do
        {
          v44 = *(v2 - 2);
          v45 = *(v2 - 1);
          v46 = *v2;
          if (v46 < 0)
          {
            if ((v4 & 0x80000000) != 0)
            {
              v48 = v44 == v22 && v45 == *(&v22 + 1);
              if (v48 || (sub_265FEC6C0()) && ((v4 ^ v46) & 1) == 0 && (((v4 ^ v46) >> 8) & 1) == 0)
              {
                goto LABEL_4;
              }
            }
          }

          else if ((v4 & 0x80000000) == 0)
          {
            v47 = v44 == v22 && v45 == *(&v22 + 1);
            if (v47 || (sub_265FEC6C0() & 1) != 0)
            {
              goto LABEL_4;
            }
          }

          v2 += 12;
          --v30;
        }

        while (v30);
      }

      sub_265FBFE5C(v22, *(&v22 + 1), v4);
LABEL_4:
      sub_265FC2504(&v70);
LABEL_5:
      if (++v11 == v61)
      {
        goto LABEL_79;
      }
    }
  }

  LOWORD(v64) = -258;
  v62 = 0;
  v63 = 0;
LABEL_79:

  *&v77[8] = v62;
  *&v77[16] = v63;
  *&v77[24] = v64;
  v51 = v75;
  v66 = v74;
  v52 = v74;
  v67 = v75;
  v54 = *v77;
  v68 = v76;
  v53 = v76;
  v69[0] = *v77;
  v55 = *&v77[10];
  *(v69 + 10) = *&v77[10];
  *a2 = v74;
  a2[1] = v51;
  *(a2 + 58) = v55;
  a2[2] = v53;
  a2[3] = v54;
  *(v73 + 10) = v55;
  v72 = v53;
  v73[0] = v54;
  v70 = v52;
  v71 = v51;
  sub_265FCF134(&v66, &v65);
  return sub_265FD2480(&v70);
}

uint64_t sub_265FE27A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v38 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055218, &qword_265FEF000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v38 - v11;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0;
  v47 = *a1;
  v48 = *(a1 + 16);
  LOWORD(v11) = v48;
  *(v4 + 16) = v47;
  *(v4 + 32) = v11;
  *(v4 + 40) = a3;
  *(v4 + 48) = 0;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_265FE7BD4(&v47, &v43);
  v39 = a3;
  sub_265FEC550();

  v45 = 0xD000000000000018;
  v46 = 0x8000000265FF1FE0;
  LODWORD(v43) = [*(a2 + 16) displayId];
  v13 = sub_265FEC6B0();
  MEMORY[0x2667756D0](v13);

  MEMORY[0x2667756D0](46, 0xE100000000000000);
  v43 = v47;
  v44 = v48;
  v14 = Profile.DisplayIdentity.description.getter();
  MEMORY[0x2667756D0](v14);

  v15 = objc_allocWithZone(MEMORY[0x277D0AAE8]);
  v16 = sub_265FEC0D0();

  v17 = [v15 initWithIdentifier_];

  v18 = objc_allocWithZone(type metadata accessor for SceneWorkspace());
  v19 = v17;
  v20 = sub_265FBEA38(v19);
  *(v4 + 56) = v20;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v23 = *(a1 + 64);
  *(v22 + 104) = *(a1 + 80);
  v24 = *(a1 + 112);
  *(v22 + 120) = *(a1 + 96);
  *(v22 + 136) = v24;
  v25 = *a1;
  *(v22 + 40) = *(a1 + 16);
  v26 = *(a1 + 48);
  *(v22 + 56) = *(a1 + 32);
  *(v22 + 72) = v26;
  *(v22 + 88) = v23;
  *(v22 + 16) = v21;
  *(v22 + 152) = *(a1 + 128);
  *(v22 + 24) = v25;
  swift_getKeyPath();
  v40 = v20;
  v41 = sub_265FE7C30;
  v42 = v22;
  v45 = v20;
  v27 = v20;

  sub_265FC7634(a1, &v43);
  sub_265FE7AF8(&qword_280054B00, type metadata accessor for SceneWorkspace);
  sub_265FEBF30();

  v28 = sub_265FEC270();
  (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  v29 = swift_allocObject();
  swift_weakInit();

  v30 = swift_allocObject();
  v31 = *(a1 + 64);
  *(v30 + 104) = *(a1 + 80);
  v32 = *(a1 + 112);
  *(v30 + 120) = *(a1 + 96);
  *(v30 + 136) = v32;
  v33 = *a1;
  *(v30 + 40) = *(a1 + 16);
  v34 = *(a1 + 48);
  *(v30 + 56) = *(a1 + 32);
  *(v30 + 72) = v34;
  *(v30 + 88) = v31;
  *(v30 + 16) = v29;
  *(v30 + 152) = *(a1 + 128);
  *(v30 + 24) = v33;
  v35 = sub_265FEC290();

  sub_265FD6FFC(v12, &qword_280055218, &qword_265FEF000);
  v36 = *(v4 + 48);
  *(v4 + 48) = v35;

  return v4;
}

uint64_t sub_265FE2C4C()
{
  swift_getKeyPath();
  sub_265FE7AF8(&qword_2800556A0, type metadata accessor for RegistryState);
  sub_265FEBF40();
}

uint64_t sub_265FE2CE4(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_265FE7AF8(&qword_2800556A0, type metadata accessor for RegistryState);
  sub_265FEBF40();
}

uint64_t sub_265FE2D80(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_getKeyPath();
  sub_265FE7AF8(&qword_2800556A0, type metadata accessor for RegistryState);
  sub_265FEBF30();
}

uint64_t sub_265FE2E44()
{
  swift_getKeyPath();
  sub_265FE7AF8(&qword_2800556A0, type metadata accessor for RegistryState);
  sub_265FEBF40();

  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_265FE2EFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_265FE7AF8(&qword_2800556A0, type metadata accessor for RegistryState);
  sub_265FEBF40();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_265FE2FBC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v5 = sub_265FE93BC(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_265FE7AF8(&qword_2800556A0, type metadata accessor for RegistryState);
    sub_265FEBF30();
  }
}

uint64_t sub_265FE3104(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

uint64_t sub_265FE316C()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC13ShellSceneKitP33_A64F83CB8E40CF87579B11470B35EA7113RegistryState___observationRegistrar;
  v3 = sub_265FEBF80();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t SSKDisplayProfileRegistry.profiles(for:)(uint64_t a1)
{
  v20 = *(a1 + 112);
  v2 = OBJC_IVAR___SSKDisplayProfileRegistry_state;
  v3 = *(v1 + OBJC_IVAR___SSKDisplayProfileRegistry_state);
  swift_getKeyPath();
  *&v32[0] = v3;
  sub_265FE7AF8(&qword_2800556A0, type metadata accessor for RegistryState);

  sub_265FEBF40();

  v4 = *(v1 + v2);
  swift_getKeyPath();
  *&v32[0] = v4;

  sub_265FEBF40();

  swift_beginAccess();
  v5 = *(v4 + 16);

  KeyPath = swift_getKeyPath();

  *&v32[0] = sub_265FE5058(v5);
  sub_265FE76F4(v32, KeyPath, 1);

  v7 = *&v32[0];
  if ((*&v32[0] & 0x8000000000000000) != 0 || (*&v32[0] & 0x4000000000000000) != 0)
  {
LABEL_24:
    v8 = sub_265FEC4A0();
    if (v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = *(*&v32[0] + 16);
    if (v8)
    {
LABEL_4:
      v9 = 0;
      v10 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x266775AE0](v9, v7);
        }

        else
        {
          if (v9 >= *(v7 + 16))
          {
            goto LABEL_23;
          }

          v11 = *(v7 + 8 * v9 + 32);
        }

        v12 = v11;
        v13 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v14 = [v11 delegate];
        if (!v14)
        {
          goto LABEL_15;
        }

        if (!v20)
        {
          __break(1u);

          __break(1u);
          return result;
        }

        if (![v14 displayProfile:v12 shouldConnectToDisplay:?])
        {
          break;
        }

        sub_265FD8FC8(&v21);
        v32[6] = v27;
        v32[7] = v28;
        v33 = v29;
        v32[2] = v23;
        v32[3] = v24;
        v32[4] = v25;
        v32[5] = v26;
        v32[0] = v21;
        v32[1] = v22;
        v15 = sub_265FE5E10(v32);
        swift_unknownObjectRelease();
        v30[6] = v27;
        v30[7] = v28;
        v31 = v29;
        v30[2] = v23;
        v30[3] = v24;
        v30[4] = v25;
        v30[5] = v26;
        v30[0] = v21;
        v30[1] = v22;
        sub_265FE77B0(v30);
LABEL_16:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_265FE43B8(0, v10[2] + 1, 1, v10);
        }

        v17 = v10[2];
        v16 = v10[3];
        if (v17 >= v16 >> 1)
        {
          v10 = sub_265FE43B8((v16 > 1), v17 + 1, 1, v10);
        }

        v10[2] = v17 + 1;
        v10[v17 + 4] = v15;
        ++v9;
        if (v13 == v8)
        {
          goto LABEL_26;
        }
      }

      swift_unknownObjectRelease();
LABEL_15:
      v15 = MEMORY[0x277D84F90];
      goto LABEL_16;
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_26:

  v18 = _s13ShellSceneKit18ProfileListBuilderV10buildArrayySayAA0D0VGSayAGGFZ_0(v10);

  return v18;
}

id SSKDisplayProfileRegistry.init(displayTransformerRegistry:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDisplayTransformerRegistry_];
  swift_unknownObjectRelease();
  return v1;
}

id SSKDisplayProfileRegistry.init(displayTransformerRegistry:)()
{
  v1 = &v0[OBJC_IVAR___SSKDisplayProfileRegistry_registration];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 45) = 0;
  v2 = OBJC_IVAR___SSKDisplayProfileRegistry_state;
  v3 = type metadata accessor for RegistryState();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  sub_265FEBF70();
  *&v0[v2] = v6;
  v9.receiver = v0;
  v9.super_class = SSKDisplayProfileRegistry;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t SSKDisplayProfileRegistry.register(_:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___SSKDisplayProfileRegistry_state);
  swift_getKeyPath();
  sub_265FE7AF8(&qword_2800556A0, type metadata accessor for RegistryState);

  sub_265FEBF40();

  swift_getKeyPath();
  sub_265FEBF60();

  swift_beginAccess();
  v4 = a1;
  MEMORY[0x266775750]();
  if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_265FEC200();
  }

  sub_265FEC220();
  swift_endAccess();
  swift_getKeyPath();
  sub_265FEBF50();
}

Swift::Void __swiftcall SSKDisplayProfileRegistry.activate()()
{
  sub_265FEC250();
  v2 = v0;
  sub_265FE2014(sub_265FE7804, &v1);
}

uint64_t sub_265FE3A44(char *a1)
{
  if (qword_2800547C0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_280054D68);
  if (byte_280054D6C == 1)
  {
    byte_280054D6C = 0;
    v2 = [objc_opt_self() sharedInstance];
    sub_265FDE778(v2, a1, sub_265FC3E04, 0, &v9);
  }

  else
  {
    v10 = 0u;
    memset(v11, 0, 21);
    v9 = 0u;
  }

  os_unfair_lock_unlock(&dword_280054D68);
  v3 = &a1[OBJC_IVAR___SSKDisplayProfileRegistry_registration];
  swift_beginAccess();
  if (!*(v3 + 1))
  {
    goto LABEL_9;
  }

  os_unfair_lock_lock(v3 + 12);
  if (v3[52] == 1)
  {
    os_unfair_lock_unlock(v3 + 12);
    v4 = *v3;

    v5 = *(v3 + 2);

    v6 = *(v3 + 5);

LABEL_9:
    v7 = v10;
    *v3 = v9;
    *(v3 + 1) = v7;
    *(v3 + 2) = v11[0];
    *(v3 + 45) = *(v11 + 13);
    return swift_endAccess();
  }

  result = sub_265FEC5E0();
  __break(1u);
  return result;
}

Swift::Void __swiftcall SSKDisplayProfileRegistry.evaluateProfilesForConnectedDisplays()()
{
  v1 = *(v0 + OBJC_IVAR___SSKDisplayProfileRegistry_state);
  swift_getKeyPath();
  sub_265FE7AF8(&qword_2800556A0, type metadata accessor for RegistryState);

  sub_265FEBF30();
}

uint64_t SSKDisplayProfileRegistry.appendDescription(toFormatter:)()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_265FE7820;
    *(v4 + 24) = v3;
    v8[4] = sub_265FE7828;
    v8[5] = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_265FD9D04;
    v8[3] = &block_descriptor_5;
    v5 = _Block_copy(v8);
    swift_unknownObjectRetain_n();
    v6 = v0;

    [v2 appendProem:v6 block:v5];
    swift_unknownObjectRelease();
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_265FE4010(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR___SSKDisplayProfileRegistry_state);
  swift_getKeyPath();
  sub_265FE7AF8(&qword_2800556A0, type metadata accessor for RegistryState);

  sub_265FEBF40();

  swift_beginAccess();
  v4 = *(v3 + 16);

  type metadata accessor for SSKDisplayProfile(0);
  v5 = sub_265FEC1E0();
}

void __swiftcall SSKDisplayProfileRegistry.init()(SSKDisplayProfileRegistry *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

char *sub_265FE4290(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055740, qword_265FEE9A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_265FE43B8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055748, &qword_265FF0460);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055750, &qword_265FF0468);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_265FE44EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055758, qword_265FF0470);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_265FE45F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055700, &qword_265FF0400);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_265FE46EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v9 = 0;
    v10 = (a4 + 16);
    do
    {
      v11 = *(v10 - 2);
      v12 = *(v10 - 1);
      v13 = *v10;
      if ((v13 & 0x80000000) != 0)
      {
        if ((a3 & 0x8000) != 0)
        {
          v15 = v11 == a1 && v12 == a2;
          if (v15 || (sub_265FEC6C0()) && ((a3 ^ v13) & 1) == 0 && (((a3 ^ v13) >> 8) & 1) == 0)
          {
            return v9;
          }
        }
      }

      else if ((a3 & 0x8000) == 0)
      {
        v14 = v11 == a1 && v12 == a2;
        if (v14 || (sub_265FEC6C0() & 1) != 0)
        {
          return v9;
        }
      }

      v10 += 12;
      ++v9;
    }

    while (a5 != v9);
  }

  return 0;
}

uint64_t sub_265FE47CC(unsigned int a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_265FDA660(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_265FCE47C();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_265FCDB68(v10, v9);
  *v2 = v9;
  return v11;
}

uint64_t sub_265FE4854(unsigned int a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_265FDA660(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_265FCE5D8();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_265FCDB68(v10, v9);
  *v2 = v9;
  return v11;
}

void sub_265FE48DC(uint64_t a1)
{
  v2 = sub_265FE4B10();
  v3 = sub_265FE4B18(&v22, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v22;
  if (v22 != v4)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_37;
    }

    if (v4 < v22)
    {
LABEL_38:
      __break(1u);
    }

    else
    {
      sub_265FE45F0(a1, a1 + 32, 0, (2 * v22) | 1);
      v23 = v3;
      v24 = v6;
      if (*(a1 + 16) >= v4)
      {

        while (1)
        {
          if (v5 >= v4)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          v7 = a1 + 32 + 24 * v5;
          v8 = *v7;
          v9 = *(v7 + 8);
          v10 = *(v7 + 16);
          v11 = v23;
          v12 = v24;
          v13 = *(v24 + 16);
          if (!v23)
          {
            break;
          }

          sub_265FC23C0();
          sub_265FC0994(v8, v9, v10, v12 + 32, v13, (v11 + 16));
          v15 = v14;

          if (v15)
          {
            goto LABEL_7;
          }

LABEL_8:
          sub_265FC23C8();
LABEL_9:
          if (++v5 == v4)
          {

            return;
          }
        }

        if (v13)
        {
          v16 = (v24 + 48);
          do
          {
            v17 = *(v16 - 2);
            v18 = *(v16 - 1);
            v19 = *v16;
            if ((v19 & 0x80000000) != 0)
            {
              if (v10 < 0)
              {
                v21 = v17 == v8 && v18 == v9;
                if (v21 || (sub_265FEC6C0()) && ((v10 ^ v19) & 1) == 0 && (((v10 ^ v19) >> 8) & 1) == 0)
                {
                  goto LABEL_9;
                }
              }
            }

            else if ((v10 & 0x80000000) == 0)
            {
              v20 = v17 == v8 && v18 == v9;
              if (v20 || (sub_265FEC6C0() & 1) != 0)
              {
                goto LABEL_9;
              }
            }

            v16 += 12;
            --v13;
          }

          while (v13);
        }

        sub_265FC23C0();
LABEL_7:
        sub_265FBFE5C(v8, v9, v10);
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_265FE4B18(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x2667755A0](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = MEMORY[0x2667755B0]();
    sub_265FE4DCC(a2 + 32, v8, (v14 + 16));
    *a1 = v15;
    return v14;
  }

  else if (v8 >= 2)
  {
    v16 = sub_265FE4BFC(a2 + 32, v8);
    result = 0;
    *a1 = v16;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

uint64_t sub_265FE4BFC(uint64_t a1, uint64_t a2)
{
  v22 = MEMORY[0x277D84F90];
  result = sub_265FC0018(0, a2 & ~(a2 >> 63), 0);
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v20 = a2;
      for (i = 0; ; ++i)
      {
        v5 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v6 = (a1 + 24 * i);
        v7 = *v6;
        v8 = v6[1];
        v9 = *(v6 + 8);
        v10 = *(v22 + 16);
        if (v10)
        {
          v11 = (v22 + 48);
          do
          {
            v12 = *(v11 - 2);
            v13 = *(v11 - 1);
            v14 = *v11;
            if (v9 < 0)
            {
              if ((v14 & 0x80000000) != 0)
              {
                v16 = v7 == v12 && v8 == v13;
                if (v16 || (sub_265FEC6C0()) && ((v9 ^ v14) & 1) == 0 && (((v9 ^ v14) >> 8) & 1) == 0)
                {
LABEL_29:

                  return i;
                }
              }
            }

            else if ((v14 & 0x80000000) == 0)
            {
              v15 = v7 == v12 && v8 == v13;
              if (v15 || (sub_265FEC6C0() & 1) != 0)
              {
                goto LABEL_29;
              }
            }

            v11 += 12;
            --v10;
          }

          while (v10);
        }

        result = sub_265FC23C0();
        v18 = *(v22 + 16);
        v17 = *(v22 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_265FC0018((v17 > 1), v18 + 1, 1);
        }

        *(v22 + 16) = v18 + 1;
        v19 = v22 + 24 * v18;
        *(v19 + 32) = v7;
        *(v19 + 40) = v8;
        *(v19 + 48) = v9;
        if (v5 == v20)
        {

          return v20;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_265FE4DCC(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_34;
  }

  v3 = a3;
  v4 = result;
  v5 = 0;
  v24 = result;
  while (2)
  {
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

    v6 = v4 + 24 * v5;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    v10 = *v3;
    sub_265FEC780();
    if (v9 < 0)
    {
      MEMORY[0x266775D10](1);
      sub_265FC23C0();
      sub_265FEC130();
      sub_265FEC7A0();
      sub_265FEC7A0();
    }

    else
    {
      MEMORY[0x266775D10](0);
      sub_265FC23C0();
      sub_265FEC130();
    }

    result = sub_265FEC7B0();
    if (__OFSUB__(1 << *v3, 1))
    {
      goto LABEL_33;
    }

    v25 = v5 + 1;
    sub_265FEBF90();
    sub_265FC23C8();
    v4 = v24;
    while (1)
    {
      v11 = sub_265FEBFC0();
      if (v12)
      {
        break;
      }

      v13 = v24 + 24 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *v6;
      v18 = *(v6 + 8);
      v19 = *(v6 + 16);
      if (v16 < 0)
      {
        if ((v19 & 0x80000000) != 0)
        {
          v21 = v14 == v17 && v15 == v18;
          if (v21 || (sub_265FEC6C0()) && ((v16 ^ v19) & 1) == 0 && (((v16 ^ v19) >> 8) & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if ((v19 & 0x80000000) == 0)
      {
        v20 = v14 == v17 && v15 == v18;
        if (v20 || (sub_265FEC6C0() & 1) != 0)
        {
          return 0;
        }
      }

      sub_265FEBFE0();
    }

    result = sub_265FEBFD0();
    ++v5;
    v3 = a3;
    if (v25 != a2)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_265FE5058(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_265FEC4A0();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_265FD1980(v3, 0);
  sub_265FD1E28(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t (*sub_265FE50EC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x266775AE0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_265FE7F98;
  }

  __break(1u);
  return result;
}

void (*sub_265FE516C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x266775AE0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_265FE51EC;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for RegistryState()
{
  result = qword_2800556B8;
  if (!qword_2800556B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265FE524C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265FDEAB0(v3, a2, 0);
  }

  return result;
}

uint64_t sub_265FE52C4()
{
  swift_beginAccess();
  swift_weakLoadStrong();
}

uint64_t sub_265FE530C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265FE65C8(v1);
  }

  return result;
}

uint64_t sub_265FE536C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  v16 = *a4;
  v17 = *a5;
  v18 = *a13;
  v19 = swift_task_alloc();
  *(v13 + 16) = v19;
  *v19 = v13;
  v19[1] = sub_265FC658C;

  return sub_265FE0EDC(a1, a2, a3, v16, v17, a6, a7, a8);
}

uint64_t sub_265FE5470(uint64_t a1, void *a2)
{
  v44[3] = type metadata accessor for _HostingContext();
  v44[4] = &off_2877AF068;
  v44[0] = a1;
  sub_265FC5EB0(v44, &aBlock);
  swift_beginAccess();

  sub_265FE7EE0(&aBlock, (a2 + 8), &qword_280055368, &unk_265FF03D0);
  swift_endAccess();
  sub_265FE7B6C((a2 + 8), &aBlock, &qword_280055368, &unk_265FF03D0);
  if (!v38)
  {
LABEL_17:
    sub_265FD6FFC(&aBlock, &qword_280055368, &unk_265FF03D0);
    return __swift_destroy_boxed_opaque_existential_0(v44);
  }

  sub_265FBD900(&aBlock, v43);
  v4 = [*(a2[7] + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace_fbWorkspace) allScenes];
  sub_265FCF0EC(0, &qword_280054BD0, 0x277D0AAC8);
  v5 = sub_265FEC1F0();

  if (v5 >> 62)
  {
LABEL_20:
    v6 = sub_265FEC4A0();
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_21:

    __swift_destroy_boxed_opaque_existential_0(v43);
    return __swift_destroy_boxed_opaque_existential_0(v44);
  }

LABEL_4:
  type metadata accessor for SceneLevelExtension();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for ProfileActivationSceneExtension();
  v34 = swift_getObjCClassFromMetadata();
  type metadata accessor for ProfileActivationSceneExtension.HostComponent();
  v8 = swift_getObjCClassFromMetadata();
  v9 = 0;
  v35 = v5 & 0xC000000000000001;
  v32 = a2[2];
  v33 = v8;
  v31 = a2[3];
  v26 = v5 & 0xFFFFFFFFFFFFFF8;
  v30 = *(a2 + 16);
  v28 = v6;
  v29 = v5;
  v27 = ObjCClassFromMetadata;
  while (1)
  {
    if (v35)
    {
      v10 = MEMORY[0x266775AE0](v9, v5);
    }

    else
    {
      if (v9 >= *(v26 + 16))
      {
        goto LABEL_19;
      }

      v10 = *(v5 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    [v10 addExtension_];
    v13 = *__swift_project_boxed_opaque_existential_1(v43, v43[3]);
    sub_265FD3CD8(v11);
    v14 = type metadata accessor for ProfileActivation();
    v15 = objc_allocWithZone(v14);
    v16 = &v15[OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_identifier];
    *v16 = v32;
    v16[1] = v31;
    v15[OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_inControl] = 1;
    sub_265FC23C0();
    v42.receiver = v15;
    v42.super_class = v14;
    a2 = objc_msgSendSuper2(&v42, sel_init);
    v17 = [v11 componentForExtension:v34 ofClass:v33];
    if (!v17 || (*&aBlock = v17, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F30, &unk_265FF03E0), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F40, &qword_265FEE6F8), swift_dynamicCast(), (v18 = v41) == 0))
    {

      goto LABEL_6;
    }

    v19 = *&v41[OBJC_IVAR____TtCC13ShellSceneKit31ProfileActivationSceneExtension13HostComponent_scene];
    if (!v19)
    {
      break;
    }

    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_265FD6F64;
    *(v21 + 24) = v20;
    v39 = sub_265FD4FB4;
    v40 = v21;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v37 = sub_265FBCE10;
    v38 = &block_descriptor_59;
    v22 = _Block_copy(&aBlock);
    v23 = v19;
    a2 = a2;

    [v23 updateSettingsWithBlock_];

    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    v6 = v28;
    v5 = v29;
    ObjCClassFromMetadata = v27;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_17;
    }

LABEL_6:
    ++v9;
    if (v12 == v6)
    {
      goto LABEL_21;
    }
  }

  result = sub_265FEC5E0();
  __break(1u);
  return result;
}

uint64_t sub_265FE596C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  v3[7] = *a2;
  sub_265FEC250();
  v3[8] = sub_265FEC240();
  v5 = sub_265FEC230();

  return MEMORY[0x2822009F8](sub_265FE5A0C, v5, v4);
}

uint64_t sub_265FE5A0C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_265FDEAB0(*(v0 + 56), *(v0 + 48), 1);
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_265FE5AA8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v40[3] = type metadata accessor for SSKDisplayProfileRegistry(a1);
  v40[4] = &protocol witness table for SSKDisplayProfileRegistry;
  v40[0] = a3;
  v8 = MEMORY[0x277D84F90];
  a4[8] = sub_265FDAD48(MEMORY[0x277D84F90]);
  a4[9] = sub_265FDAE58(v8);
  a4[10] = sub_265FDAFE0(v8);
  a4[11] = sub_265FDB0E4(v8);
  a4[12] = sub_265FDB21C(v8);
  sub_265FC5EB0(v40, (a4 + 3));
  a4[2] = a1;
  a4[13] = a2;
  v9 = OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_connectedHardware;
  swift_beginAccess();
  v10 = *(a1 + v9);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = a2;

  v16 = 0;
  while (v13)
  {
    v17 = v16;
LABEL_9:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = (*(v10 + 56) + ((v17 << 10) | (16 * v18)));
    v20 = *v19;
    v21 = v19[1];

    v22 = v21;
    sub_265FDEAB0(v20, v22, 0);
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      __swift_destroy_boxed_opaque_existential_0(v40);
      v23 = a4[2];
      v24 = swift_allocObject();
      swift_weakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = sub_265FC5F14;
      *(v25 + 24) = v24;
      v26 = &v23[OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onConnect];
      v27 = *&v23[OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onConnect + 8];
      *v26 = sub_265FE7FA4;
      v26[1] = v25;
      v28 = v23;

      v29 = a4[2];
      v30 = swift_allocObject();
      swift_weakInit();
      v31 = swift_allocObject();
      *(v31 + 16) = sub_265FC5F24;
      *(v31 + 24) = v30;
      v32 = (v29 + OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onUpdate);
      v33 = *(v29 + OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onUpdate + 8);
      *v32 = sub_265FE7FA4;
      v32[1] = v31;

      v34 = a4[2];
      v35 = swift_allocObject();
      swift_weakInit();
      v36 = v34;

      v37 = swift_allocObject();
      *(v37 + 16) = sub_265FC5F2C;
      *(v37 + 24) = v35;
      v38 = &v36[OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onDisconnect];
      v39 = *&v36[OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onDisconnect + 8];
      *v38 = sub_265FE7938;
      v38[1] = v37;

      return;
    }

    v13 = *(v10 + 64 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_265FE5E10(uint64_t a1)
{
  v34[3] = &type metadata for ManagedProfile;
  v34[4] = &protocol witness table for ManagedProfile;
  v2 = swift_allocObject();
  v34[0] = v2;
  v3 = *(a1 + 112);
  *(v2 + 112) = *(a1 + 96);
  *(v2 + 128) = v3;
  *(v2 + 144) = *(a1 + 128);
  v4 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v4;
  v5 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v5;
  v6 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  sub_265FC5EB0(v34, v32);
  sub_265FC7634(a1, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280054F60, &unk_265FF0440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055730, &unk_265FEE9E0);
  if (swift_dynamicCast())
  {
    sub_265FBD900(v30, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055740, qword_265FEE9A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_265FEE990;
    v8 = __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    v26 = *v8;
    v9 = *(v8 + 1);
    v10 = *(v8 + 2);
    v11 = *(v8 + 4);
    *&v27[32] = *(v8 + 3);
    *&v27[48] = v11;
    *v27 = v9;
    *&v27[16] = v10;
    v12 = *(v8 + 5);
    v13 = *(v8 + 6);
    v14 = *(v8 + 7);
    v29 = v8[16];
    *&v27[80] = v13;
    v28 = v14;
    *&v27[64] = v12;
    v15 = v26;
    v16 = v27[2];
    *(v7 + 152) = 0u;
    *(v7 + 168) = 0;
    *(v7 + 136) = 0u;
    *(v7 + 32) = v15;
    *(v7 + 48) = *v27;
    *(v7 + 50) = v16;
    *(v7 + 72) = *&v27[24];
    *(v7 + 88) = *&v27[40];
    *(v7 + 104) = *&v27[56];
    *(v7 + 114) = *&v27[66];
    *(v7 + 56) = *&v27[8];
    v25[3] = &type metadata for ManagedProfile;
    v25[4] = &off_2877AF870;
    v17 = swift_allocObject();
    v25[0] = v17;
    v18 = v28;
    *(v17 + 112) = *&v27[80];
    *(v17 + 128) = v18;
    *(v17 + 144) = v29;
    v19 = *&v27[32];
    *(v17 + 48) = *&v27[16];
    *(v17 + 64) = v19;
    v20 = *&v27[64];
    *(v17 + 80) = *&v27[48];
    *(v17 + 96) = v20;
    v21 = *v27;
    *(v17 + 16) = v26;
    *(v17 + 32) = v21;
    sub_265FC23C0();
    sub_265FC7634(&v26, &v24);
    sub_265FE7EE0(v25, v7 + 136, &qword_280054F70, &qword_265FEE9F0);
    __swift_destroy_boxed_opaque_existential_0(v33);
    __swift_destroy_boxed_opaque_existential_0(v34);
    return v7;
  }

  else
  {
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    sub_265FD6FFC(v30, &qword_280054F68, &unk_265FF0450);
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_265FEC550();

    sub_265FC5EB0(v34, &v26);
    v23 = sub_265FEC100();
    MEMORY[0x2667756D0](v23);

    result = sub_265FEC5E0();
    __break(1u);
  }

  return result;
}

uint64_t sub_265FE612C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, void *a6)
{
  v12 = *a6;
  v13 = sub_265FDA6A8(a2, a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_265FCC6FC(v18, a5 & 1);
      v22 = *a6;
      v13 = sub_265FDA6A8(a2, a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_265FEC710();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_265FCE130();
      v13 = v21;
    }
  }

  v24 = *a6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    *v25 = a1;
    v25[1] = &off_2877AF198;

    return swift_unknownObjectRelease();
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = v24[6] + 24 * v13;
  *v28 = a2;
  *(v28 + 8) = a3;
  *(v28 + 16) = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = &off_2877AF198;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;

  return sub_265FC23C0();
}

void sub_265FE62D8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_265FEC4A0())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800552F0, &qword_265FF03F0);
      v3 = sub_265FEC530();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_265FEC4A0();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x266775AE0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_265FEC410();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_265FCF0EC(0, &qword_280054BD0, 0x277D0AAC8);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_265FEC420();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_265FEC410();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_265FCF0EC(0, &qword_280054BD0, 0x277D0AAC8);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_265FEC420();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_265FE65C8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = [v3 displayId];
  swift_beginAccess();
  v5 = sub_265FE4854(v4);
  swift_endAccess();
  if (v5)
  {
    sub_265FEC280();
  }

  v6 = [v3 displayId];
  swift_beginAccess();
  v7 = sub_265FE47CC(v6);
  swift_endAccess();
  if (v7)
  {
    [v7 invalidate];
  }

  swift_beginAccess();
  sub_265FE04A0([v3 displayId], v40);
  result = swift_endAccess();
  v42[0] = v40[0];
  v42[1] = v40[1];
  v42[2] = v40[2];
  v43[0] = v41[0];
  *(v43 + 10) = *(v41 + 10);
  v9 = *(&v40[0] + 1);
  if (*(&v40[0] + 1))
  {
    v39 = *(*(&v42[0] + 1) + 16);
    if (v39)
    {

      v10 = 0;
      v11 = (v9 + 48);
      while (v10 < *(v9 + 16))
      {
        v13 = *(v11 - 2);
        v12 = *(v11 - 1);
        v14 = *v11;
        swift_beginAccess();
        v15 = *(v2 + 88);
        sub_265FC23C0();
        v16 = sub_265FDA6A8(v13, v12, v14);
        if (v17)
        {
          v18 = v16;
          v19 = *(v2 + 88);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v21 = *(v2 + 88);
          *(v2 + 88) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_265FCE130();
          }

          v22 = *(v21 + 48) + 24 * v18;
          v23 = *v22;
          v24 = *(v22 + 8);
          v25 = *(v22 + 16);
          sub_265FC23C8();
          v26 = *(*(v21 + 56) + 16 * v18);
          sub_265FCD780(v18, v21);
          *(v2 + 88) = v21;
          swift_endAccess();
          sub_265FD6298();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_endAccess();
        }

        swift_beginAccess();
        v27 = *(v2 + 96);
        v28 = sub_265FDA6A8(v13, v12, v14);
        if (v29)
        {
          v30 = v28;
          v31 = *(v2 + 96);
          v32 = swift_isUniquelyReferenced_nonNull_native();
          v33 = *(v2 + 96);
          *(v2 + 96) = 0x8000000000000000;
          if (!v32)
          {
            sub_265FCDFB4();
          }

          v34 = *(v33 + 48) + 24 * v30;
          v35 = *v34;
          v36 = *(v34 + 8);
          v37 = *(v34 + 16);
          sub_265FC23C8();
          v38 = *(*(v33 + 56) + 8 * v30);
          sub_265FCD524(v30, v33);
          *(v2 + 96) = v33;
          swift_endAccess();
          sub_265FC23C8();
          sub_265FD2BE8();
        }

        else
        {
          swift_endAccess();
          result = sub_265FC23C8();
        }

        ++v10;
        v11 += 12;
        if (v39 == v10)
        {
          sub_265FD6FFC(v42, &qword_2800556D0, &unk_265FF0380);
        }
      }

      __break(1u);
    }

    else
    {
      return sub_265FD6FFC(v42, &qword_2800556D0, &unk_265FF0380);
    }
  }

  return result;
}

uint64_t sub_265FE6964(void **__dst, id *__src, id *a3, void **a4, uint64_t a5, char a6)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v16 = &v6[v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_41;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v19 = *v6;
      v20 = *v8;
      v21 = v19;
      swift_getAtKeyPath();
      swift_getAtKeyPath();

      if (a6)
      {
        if (v32 >= v31)
        {
          goto LABEL_19;
        }
      }

      else if (v31 >= v32)
      {
LABEL_19:
        v17 = v6;
        v18 = v9 == v6++;
        if (v18)
        {
          goto LABEL_13;
        }

LABEL_12:
        *v9 = *v17;
        goto LABEL_13;
      }

      v17 = v8;
      v18 = v9 == v8++;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v9;
      if (v6 >= v16)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[v15] <= a4)
  {
    memmove(a4, __src, 8 * v15);
  }

  v16 = &v6[v15];
  if (v13 >= 8 && v8 > v9)
  {
LABEL_27:
    v29 = v8;
    v22 = v8 - 1;
    --v7;
    v23 = v16;
    while (1)
    {
      v24 = *--v23;
      v8 = v22;
      v25 = *v22;
      v26 = v24;
      v27 = v25;
      swift_getAtKeyPath();
      swift_getAtKeyPath();

      if (a6)
      {
        if (v32 < v31)
        {
          goto LABEL_35;
        }
      }

      else if (v31 < v32)
      {
LABEL_35:
        if (v7 + 1 != v29)
        {
          *v7 = *v8;
        }

        if (v16 <= v6 || v8 <= v9)
        {
          break;
        }

        goto LABEL_27;
      }

      v22 = v8;
      if (v7 + 1 != v16)
      {
        *v7 = *v23;
      }

      --v7;
      v16 = v23;
      if (v23 <= v6)
      {
        v16 = v23;
        v8 = v29;
        break;
      }
    }
  }

LABEL_41:
  if (v8 != v6 || v8 >= (v6 + ((v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v6, 8 * (v16 - v6));
  }

  return 1;
}

uint64_t sub_265FE6C4C(id *a1, void **a2, uint64_t *a3, uint64_t a4, char a5)
{
  v6 = v5;
  v7 = a1;
  v8 = *a1;

  v27 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v27 = sub_265FE46D8(v27);
  }

  v22 = v7;
  *v7 = v27;
  v9 = v27 + 16;
  v10 = *(v27 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v22 = v27;
    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = v6;
      v13 = &v27[16 * v10];
      v14 = *v13;
      v15 = v9;
      v16 = &v9[16 * v10];
      v17 = *(v16 + 1);
      __dst = (v11 + 8 * *v13);
      v18 = (v11 + 8 * *v16);
      v7 = (v11 + 8 * v17);

      sub_265FE6964(__dst, v18, v7, a2, a4, a5 & 1);
      v6 = v12;

      if (v12)
      {
        *v22 = v27;

        return 1;
      }

      if (v17 < v14)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v19 = *v15;
      if (v10 - 2 >= *v15)
      {
        goto LABEL_13;
      }

      *v13 = v14;
      *(v13 + 1) = v17;
      v20 = v19 - v10;
      if (v19 < v10)
      {
        goto LABEL_14;
      }

      v9 = v15;
      v10 = v19 - 1;
      memmove(v16, v16 + 16, 16 * v20);
      *v15 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_265FE6DFC(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6)
{
  v114 = MEMORY[0x277D84F90];
  v8 = a3[1];
  swift_retain_n();
  if (v8 >= 1)
  {
    v98 = a4;
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v109 = a5;
    do
    {
      v11 = v9;
      if (v9 + 1 >= v8)
      {
        v8 = v9 + 1;
      }

      else
      {
        v102 = v10;
        v12 = *a3;
        v13 = *(*a3 + 8 * v9);
        v14 = *(*a3 + 8 * (v9 + 1));
        v15 = v13;
        v16 = sub_265FDE6FC(v14, v15, a5, a6 & 1);
        if (v110)
        {

          goto LABEL_99;
        }

        v17 = v16;

        v18 = v9 + 2;
        v105 = v9;
        v19 = 8 * v9;
        v20 = (v12 + 8 * v9 + 16);
        while (v8 != v18)
        {
          v21 = *(v20 - 1);
          v22 = *v20;
          v23 = v21;
          swift_getAtKeyPath();
          swift_getAtKeyPath();

          v24 = v113 < v112;
          if ((a6 & 1) == 0)
          {
            v24 = v112 < v113;
          }

          ++v18;
          ++v20;
          if (v17 != v24)
          {
            v8 = v18 - 1;
            break;
          }
        }

        v10 = v102;
        if (v17)
        {
          v25 = v105;
          if (v8 < v105)
          {
            goto LABEL_122;
          }

          if (v105 < v8)
          {
            v26 = 8 * v8 - 8;
            v27 = v8;
            while (1)
            {
              if (v25 != --v27)
              {
                v28 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                v29 = *(v28 + v19);
                *(v28 + v19) = *(v28 + v26);
                *(v28 + v26) = v29;
              }

              ++v25;
              v26 -= 8;
              v19 += 8;
              if (v25 >= v27)
              {
                goto LABEL_22;
              }
            }
          }

          v11 = v105;
        }

        else
        {
LABEL_22:
          v11 = v105;
        }
      }

      v30 = a3[1];
      if (v8 >= v30)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v8, v11))
      {
        goto LABEL_119;
      }

      if (v8 - v11 >= v98)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v11, v98))
      {
        goto LABEL_120;
      }

      if (&v11[v98] < v30)
      {
        v30 = &v11[v98];
      }

      if (v30 < v11)
      {
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
        return result;
      }

      if (v8 == v30)
      {
LABEL_32:
        v9 = v8;
        if (v8 < v11)
        {
          goto LABEL_118;
        }
      }

      else
      {
        v101 = v30;
        v104 = v10;
        v85 = *a3;
        v86 = *a3 + 8 * v8 - 8;
        v107 = v11;
        v87 = &v11[-v8];
        do
        {
          v88 = *(v85 + 8 * v8);
          v89 = v87;
          v90 = v86;
          do
          {
            v91 = *v90;
            v92 = v88;
            v93 = v91;
            swift_getAtKeyPath();
            swift_getAtKeyPath();

            if (a6)
            {
              if (v113 >= v112)
              {
                break;
              }
            }

            else if (v112 >= v113)
            {
              break;
            }

            if (!v85)
            {
              goto LABEL_123;
            }

            v94 = *v90;
            v88 = *(v90 + 8);
            *v90 = v88;
            *(v90 + 8) = v94;
            v90 -= 8;
          }

          while (!__CFADD__(v89++, 1));
          ++v8;
          v86 += 8;
          --v87;
        }

        while (v8 != v101);
        v9 = v101;
        v10 = v104;
        v11 = v107;
        if (v101 < v107)
        {
          goto LABEL_118;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_265FE44EC(0, *(v10 + 2) + 1, 1, v10);
      }

      v32 = *(v10 + 2);
      v31 = *(v10 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v10 = sub_265FE44EC((v31 > 1), v32 + 1, 1, v10);
      }

      *(v10 + 2) = v33;
      v34 = v10 + 32;
      v35 = &v10[16 * v32 + 32];
      *v35 = v11;
      *(v35 + 1) = v9;
      v114 = v10;
      v106 = *a1;
      if (!*a1)
      {
        goto LABEL_126;
      }

      if (v32)
      {
        v100 = v9;
        v103 = v10 + 32;
        while (1)
        {
          v36 = v33 - 1;
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v37 = *(v10 + 4);
            v38 = *(v10 + 5);
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_53:
            if (v40)
            {
              goto LABEL_109;
            }

            v53 = &v10[16 * v33];
            v55 = *v53;
            v54 = *(v53 + 1);
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_112;
            }

            v59 = &v34[16 * v36];
            v61 = *v59;
            v60 = *(v59 + 1);
            v47 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v47)
            {
              goto LABEL_115;
            }

            if (__OFADD__(v57, v62))
            {
              goto LABEL_116;
            }

            if (v57 + v62 >= v39)
            {
              if (v39 < v62)
              {
                v36 = v33 - 2;
              }

              goto LABEL_74;
            }

            goto LABEL_67;
          }

          v63 = &v10[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v47 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          v58 = v47;
LABEL_67:
          if (v58)
          {
            goto LABEL_111;
          }

          v66 = &v34[16 * v36];
          v68 = *v66;
          v67 = *(v66 + 1);
          v47 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v47)
          {
            goto LABEL_114;
          }

          if (v69 < v57)
          {
            goto LABEL_3;
          }

LABEL_74:
          if (v36 - 1 >= v33)
          {
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

          v74 = *a3;
          if (!*a3)
          {
            goto LABEL_124;
          }

          v75 = v10;
          v76 = &v34[16 * v36 - 16];
          v77 = *v76;
          v78 = v36;
          v79 = &v34[16 * v36];
          v80 = *(v79 + 1);
          v81 = (v74 + 8 * *v76);
          v82 = (v74 + 8 * *v79);
          v83 = (v74 + 8 * v80);

          sub_265FE6964(v81, v82, v83, v106, v109, a6 & 1);
          if (v110)
          {

            v114 = v75;
            goto LABEL_99;
          }

          if (v80 < v77)
          {
            goto LABEL_104;
          }

          v84 = *(v75 + 2);
          if (v78 > v84)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          *(v76 + 1) = v80;
          if (v78 >= v84)
          {
            goto LABEL_106;
          }

          v33 = v84 - 1;
          memmove(v79, v79 + 16, 16 * (v84 - 1 - v78));
          v10 = v75;
          *(v75 + 2) = v84 - 1;
          v34 = v103;
          a5 = v109;
          if (v84 <= 2)
          {
LABEL_3:
            v114 = v10;
            v9 = v100;
            goto LABEL_4;
          }
        }

        v41 = &v34[16 * v33];
        v42 = *(v41 - 8);
        v43 = *(v41 - 7);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_107;
        }

        v46 = *(v41 - 6);
        v45 = *(v41 - 5);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_108;
        }

        v48 = &v10[16 * v33];
        v50 = *v48;
        v49 = *(v48 + 1);
        v47 = __OFSUB__(v49, v50);
        v51 = v49 - v50;
        if (v47)
        {
          goto LABEL_110;
        }

        v47 = __OFADD__(v39, v51);
        v52 = v39 + v51;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v52 >= v44)
        {
          v70 = &v34[16 * v36];
          v72 = *v70;
          v71 = *(v70 + 1);
          v47 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v47)
          {
            goto LABEL_117;
          }

          if (v39 < v73)
          {
            v36 = v33 - 2;
          }

          goto LABEL_74;
        }

        goto LABEL_53;
      }

LABEL_4:
      v8 = a3[1];
    }

    while (v9 < v8);
  }

  v96 = *a1;
  if (!*a1)
  {
    goto LABEL_127;
  }

  sub_265FE6C4C(&v114, v96, a3, a5, a6 & 1);
  if (v110)
  {

LABEL_99:
  }

  else
  {
  }
}

void sub_265FE74DC(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = a1[1];
  swift_retain_n();
  v7 = sub_265FEC6A0();
  if (v7 < v6)
  {
    if (v6 >= -1)
    {
      v8 = v7;
      if (v6 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SSKDisplayProfile(0);
        v9 = sub_265FEC210();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6 / 2;
      }

      v23[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v23[1] = (v6 / 2);

      sub_265FE6DFC(v23, &v26, a1, v8, a2, a3 & 1);

      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v6 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  if (v6 > 1)
  {
    v10 = *a1;

    v11 = -1;
    v12 = 1;
    v13 = v10;
    v21 = v6;
    do
    {
      v14 = *(v10 + 8 * v12);
      v22 = v11;
      v15 = v13;
      do
      {
        v16 = *v15;
        v23[0] = v14;
        v26 = v16;
        v17 = v14;
        v18 = v16;
        swift_getAtKeyPath();
        swift_getAtKeyPath();

        if (a3)
        {
          if (v25 >= v24)
          {
            break;
          }
        }

        else if (v24 >= v25)
        {
          break;
        }

        if (!v10)
        {
          goto LABEL_24;
        }

        v19 = *v15;
        v14 = *(v15 + 8);
        *v15 = v14;
        *(v15 + 8) = v19;
        v15 -= 8;
      }

      while (!__CFADD__(v11++, 1));
      ++v12;
      v13 += 8;
      v11 = v22 - 1;
    }

    while (v12 != v21);
  }
}

uint64_t sub_265FE76F4(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_265FC25C8(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;

  sub_265FE74DC(v10, a2, a3 & 1);

  sub_265FEC590();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265FE7850()
{
  result = sub_265FEBF80();
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

uint64_t sub_265FE7910()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_265FE7938(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

void sub_265FE79E0()
{
  v9 = *(v0 + 16);
  v7 = *(v0 + 24);
  v2 = *(v0 + 56);
  v6 = *(v0 + 48);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_265FC66D0;

  JUMPOUT(0x265FE536CLL);
}

uint64_t sub_265FE7AF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265FE7B6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_64Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_265FC23C8();
  v5 = *(v0 + 136);

  v6 = *(v0 + 152);

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_265FE7C90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265FC658C;

  return sub_265FD5848(a1, v4, v1 + 24);
}

uint64_t objectdestroy_41Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265FE7D84()
{
  v2 = v0[2];
  v3 = v0[4];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_265FC66D0;

  return sub_265FE596C(v2, v0 + 3, v3);
}

void *sub_265FE7E38@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

unint64_t sub_265FE7E7C()
{
  result = qword_2800551C0;
  if (!qword_2800551C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280055720, &qword_265FEEFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800551C0);
  }

  return result;
}

uint64_t sub_265FE7EE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_265FE7FAC()
{
  if ([v0 isValid])
  {
    v1 = [v0 clientScene];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 settings];

      v4 = swift_dynamicCastObjCProtocolConditional();
      if (v4)
      {
        v5 = [v4 profileActivation];

        return v5;
      }
    }
  }

  result = sub_265FEC5E0();
  __break(1u);
  return result;
}

uint64_t sub_265FE80B0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC13ShellSceneKit31ProfileActivationSceneExtension13HostComponent_scene);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_265FD6F64;
    *(v5 + 24) = v4;
    aBlock[4] = sub_265FD4FB4;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265FBCE10;
    aBlock[3] = &block_descriptor_6;
    v6 = _Block_copy(aBlock);
    v7 = v2;
    v8 = a1;

    [v7 updateSettingsWithBlock_];

    _Block_release(v6);
    LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

    if ((a1 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  result = sub_265FEC5E0();
  __break(1u);
  return result;
}

id sub_265FE82B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055800, &unk_265FF0510);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265FEE990;
  *(v4 + 32) = a3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055830, &qword_265FEFEA0);
  v5 = sub_265FEC1E0();

  return v5;
}

void sub_265FE8358()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC13ShellSceneKit31ProfileActivationSceneExtension13HostComponent_scene);
    *(v0 + OBJC_IVAR____TtCC13ShellSceneKit31ProfileActivationSceneExtension13HostComponent_scene) = v1;
    swift_unknownObjectRetain();
  }

  else
  {
    sub_265FEC550();

    swift_getObjectType();
    v2 = sub_265FEC800();
    MEMORY[0x2667756D0](v2);

    sub_265FEC5E0();
    __break(1u);
  }
}

id sub_265FE84DC(uint64_t a1, uint64_t a2)
{
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (v3)
  {
    return [v3 setProfileActivation_];
  }

  result = sub_265FEC5E0();
  __break(1u);
  return result;
}

void sub_265FE8828(void *a1, id a2)
{
  v4 = [a2 settings];
  if (v4)
  {
    v5 = v4;
    v19[7] = &unk_2877CF568;
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (!v6)
    {

      return;
    }

    v7 = [v6 profileActivation];
    v8 = [*(v2 + OBJC_IVAR____TtCC13ShellSceneKit31ProfileActivationSceneExtension15ClientComponent_activationObservers) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800557E8, &qword_265FF0508);
    v9 = sub_265FEC1F0();

    if (v9 >> 62)
    {
      v10 = sub_265FEC4A0();
      if (v10)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_5:
        if (v10 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v10; ++i)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x266775AE0](i, v9);
          }

          else
          {
            v12 = *(v9 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          [v12 scene:a1 updatedProfileActivation:v7];
          swift_unknownObjectRelease();
        }
      }
    }

    v13 = [a1 identifier];
    v14 = sub_265FEC0E0();
    v16 = v15;

    v17 = sub_265FEC250();
    MEMORY[0x28223BE20](v17, v18);
    v19[2] = v14;
    v19[3] = v16;
    v19[4] = v7;
    sub_265FE2014(sub_265FE8E2C, v19);
  }
}

void sub_265FE8A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = [objc_opt_self() sharedApplication];
  v3 = [v25 connectedScenes];
  sub_265FE8E4C();
  sub_265FE8E98();
  v4 = sub_265FEC2E0();

  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_265FEC490();
    sub_265FEC2F0();
    v4 = v30;
    v5 = v31;
    v6 = v32;
    v7 = v33;
    v8 = v34;
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);
  }

  v24 = v6;
  v12 = (v6 + 64) >> 6;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (sub_265FEC4C0())
  {
    swift_dynamicCast();
    for (i = v29; i; i = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v15))))))
    {
      v16 = [i _FBSScene];
      v17 = [v16 identifier];

      v18 = sub_265FEC0E0();
      v20 = v19;

      if (v18 == a1 && v20 == a2)
      {
      }

      else
      {
        v22 = sub_265FEC6C0();

        if ((v22 & 1) == 0)
        {

          if (v4 < 0)
          {
            goto LABEL_10;
          }

          goto LABEL_13;
        }
      }

      if (![i delegate])
      {
        goto LABEL_33;
      }

      v23 = swift_dynamicCastObjCProtocolConditional();
      if (!v23)
      {
        swift_unknownObjectRelease();
LABEL_33:
        sub_265FCF430();

        goto LABEL_30;
      }

      [v23 scene:i updatedProfileActivation:a3];

      swift_unknownObjectRelease();
      if (v4 < 0)
      {
        goto LABEL_10;
      }

LABEL_13:
      v14 = v7;
      v15 = v8;
      if (!v8)
      {
        while (1)
        {
          v7 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v7 >= v12)
          {
            goto LABEL_29;
          }

          v15 = *(v5 + 8 * v7);
          ++v14;
          if (v15)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        return;
      }

LABEL_17:
      v8 = (v15 - 1) & v15;
    }
  }

LABEL_29:
  sub_265FCF430();
LABEL_30:
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_265FE8E4C()
{
  result = qword_2800557F0;
  if (!qword_2800557F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800557F0);
  }

  return result;
}

unint64_t sub_265FE8E98()
{
  result = qword_2800557F8;
  if (!qword_2800557F8)
  {
    sub_265FE8E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800557F8);
  }

  return result;
}

uint64_t DisplayProfileConfiguration.init(priority:sceneRequestsByGroup:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

BOOL sub_265FE8F10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (!v3)
  {
    return !v4;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v6 = *(a1 + 16);
  v7 = *a1 == *a2 && v3 == v4;
  if (v7 || (v8 = sub_265FEC6C0(), v9 = 0, (v8 & 1) != 0))
  {
    v9 = v6 ^ v5 ^ 1;
  }

  return v9 & 1;
}

uint64_t DisplayProfileConfiguration.init(identifier:behavesAsMainDisplay:priority:sceneRequestsByGroup:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 33) = 0;
  *a6 = a4;
  *(a6 + 8) = a5;
  *(a6 + 16) = result;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  return result;
}

uint64_t sub_265FE8FE0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 24 * v12);
    v16 = *v14;
    v15 = v14[1];
    v17 = v14[2];
    v18 = *(*(result + 56) + 8 * v12);
    v19 = v15 == 0;

    if (!v15)
    {
      return v19;
    }

    v20 = sub_265FDA594(v16, v15, v17);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = *(*(a2 + 56) + 8 * v20);

    v25 = sub_265FE9180(v24, v18);

    result = v13;
    v7 = v26;
    if ((v25 & 1) == 0)
    {
      return v19;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_265FE9180(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 64);
  v4 = (a2 + 64);
  while (v2)
  {
    v5 = *(v3 - 2);
    v6 = *(v3 - 1);
    v27 = *v3;
    v7 = *(v4 - 2);
    v8 = *(v4 - 1);
    v9 = *v4;
    if (*(v3 - 4) != *(v4 - 4) || *(v3 - 3) != *(v4 - 3))
    {
      v11 = *(v4 - 3);
      if ((sub_265FEC6C0() & 1) == 0)
      {
        return 0;
      }
    }

    v22 = v2;
    sub_265FCF0EC(0, &qword_280055468, 0x277D82BB8);
    v24 = v7;
    v12 = v8;
    v13 = v8;
    v26 = v9;

    v14 = v5;
    v15 = v6;
    v16 = v27;

    v23 = v14;
    v25 = v24;
    v17 = v13;
    if ((sub_265FEC420() & 1) == 0)
    {
      goto LABEL_20;
    }

    if (v6)
    {
      if (!v12)
      {
        goto LABEL_20;
      }

      sub_265FCF0EC(0, &qword_280055650, 0x277D0ADB0);
      v18 = v13;
      v19 = v15;
      v20 = sub_265FEC420();

      if ((v20 & 1) == 0)
      {
        v15 = v19;
        v17 = v18;
LABEL_20:

        return 0;
      }
    }

    else if (v12)
    {
      goto LABEL_20;
    }

    v21 = sub_265FEC420();

    if ((v21 & 1) == 0)
    {
      return 0;
    }

    v3 += 5;
    v4 += 5;
    --v2;
    if (v22 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_265FE93BC(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for SSKDisplayProfile(0);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x266775AE0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x266775AE0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_265FEC420();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_265FEC420();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_265FEC4A0();
  }

  result = sub_265FEC4A0();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t _s13ShellSceneKit27DisplayProfileConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((sub_265FE8FE0(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  if (!v2)
  {
    if (!v6)
    {
      return v5 ^ v9 ^ 1u;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  if (v3 == v7 && v2 == v6)
  {
    if (((v4 ^ v8) & 1) == 0)
    {
      return v5 ^ v9 ^ 1u;
    }

    return 0;
  }

  v11 = sub_265FEC6C0();
  result = 0;
  if ((v11 & 1) != 0 && ((v4 ^ v8) & 1) == 0)
  {
    return v5 ^ v9 ^ 1u;
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_265FE96EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_265FE9734(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_265FE979C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265FE97EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_265FE9844(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_265FE985C(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

void sub_265FE9890(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtCC13ShellSceneKit23TransformSceneExtension13HostComponent_scene);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 settings];
    if (swift_dynamicCastObjCProtocolConditional())
    {
      sub_265FE9E5C(v12);

      v6 = v12[1];
      *a1 = v12[0];
      a1[1] = v6;
      a1[2] = v12[2];
      return;
    }

    sub_265FEC550();

    *&v12[0] = 0xD00000000000002BLL;
    *(&v12[0] + 1) = 0x8000000265FF1690;
    v7 = [v4 &selRef_transformDisplayConfiguration_];
    v8 = [v7 description];
    v9 = sub_265FEC0E0();
    v11 = v10;

    MEMORY[0x2667756D0](v9, v11);
  }

  sub_265FEC5E0();
  __break(1u);
}

uint64_t sub_265FE9A48(_OWORD *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC13ShellSceneKit23TransformSceneExtension13HostComponent_scene);
  if (v2)
  {
    v4 = swift_allocObject();
    v5 = a1[1];
    v4[1] = *a1;
    v4[2] = v5;
    v4[3] = a1[2];
    v6 = swift_allocObject();
    *(v6 + 16) = sub_265FEAC10;
    *(v6 + 24) = v4;
    aBlock[4] = sub_265FD4FB4;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265FBCE10;
    aBlock[3] = &block_descriptor_7;
    v7 = _Block_copy(aBlock);
    v8 = v2;

    [v8 updateSettingsWithBlock_];

    _Block_release(v7);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if ((v7 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  result = sub_265FEC5E0();
  __break(1u);
  return result;
}

id sub_265FE9C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055800, &unk_265FF0510);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265FEE990;
  *(v4 + 32) = a3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055830, &qword_265FEFEA0);
  v5 = sub_265FEC1E0();

  return v5;
}

void sub_265FE9CD8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC13ShellSceneKit23TransformSceneExtension13HostComponent_scene);
    *(v0 + OBJC_IVAR____TtCC13ShellSceneKit23TransformSceneExtension13HostComponent_scene) = v1;
    swift_unknownObjectRetain();
  }

  else
  {
    sub_265FEC550();

    swift_getObjectType();
    v2 = sub_265FEC800();
    MEMORY[0x2667756D0](v2);

    sub_265FEC5E0();
    __break(1u);
  }
}

void sub_265FE9E5C(__int128 *a1@<X8>)
{
  v3 = [v1 transformValue];
  if (!v3)
  {
    v5 = xmmword_265FEF5E0;
    v7 = xmmword_265FEF5F0;
    v6 = 0uLL;
    goto LABEL_5;
  }

  v4 = v3;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v19 = 1;
  MEMORY[0x266775930](v3, &v16);
  if ((v19 & 1) == 0)
  {
    v14 = v17;
    v15 = v16;
    v13 = v18;

    v6 = v13;
    v5 = v14;
    v7 = v15;
LABEL_5:
    *a1 = v7;
    a1[1] = v5;
    a1[2] = v6;
    return;
  }

  *&v16 = 0;
  *(&v16 + 1) = 0xE000000000000000;
  sub_265FEC550();

  *&v16 = 0xD000000000000022;
  *(&v16 + 1) = 0x8000000265FF2320;
  v8 = v4;
  v9 = [v8 description];
  v10 = sub_265FEC0E0();
  v12 = v11;

  MEMORY[0x2667756D0](v10, v12);

  sub_265FEC5E0();
  __break(1u);
}

void sub_265FE9FC8(void *a1)
{
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = sub_265FEC3A0();
    [v3 setTransformValue_];
  }

  else
  {
    sub_265FEC550();

    v6 = [a1 description];
    v7 = sub_265FEC0E0();
    v9 = v8;

    MEMORY[0x2667756D0](v7, v9);

    sub_265FEC5E0();
    __break(1u);
  }
}

void sub_265FEA0FC()
{
  v1 = sub_265FEC3A0();
  [v0 setTransformValue_];
}

void sub_265FEA27C(void *a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v5 = [a2 settingsDiff];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 containsProperty_];

    if (v7)
    {
      v8 = [a2 settings];
      if (v8)
      {
        v9 = v8;
        v80 = &unk_2877CF5C8;
        if (swift_dynamicCastObjCProtocolConditional())
        {
          sub_265FE9E5C(v81);
          v10 = [a2 previousSettings];
          if (!v10)
          {
            v12 = xmmword_265FEF5E0;
            v14 = xmmword_265FEF5F0;
            v13 = 0uLL;
            goto LABEL_9;
          }

          v11 = v10;
          if (swift_dynamicCastObjCProtocolConditional())
          {
            sub_265FE9E5C(v82);
            *v72 = v82[0];
            v68 = v82[2];
            v70 = v82[1];

            v13 = v68;
            v12 = v70;
            v14 = *v72;
LABEL_9:
            v84 = v14;
            v85 = v12;
            v86 = v13;
            if (sub_265FEC3C0())
            {

              return;
            }

            v67 = v9;
            v15 = OBJC_IVAR____TtCC13ShellSceneKit23TransformSceneExtension13HostComponent_transformObservers;
            swift_beginAccess();
            v16 = *(v3 + v15);
            v17 = v16 + 56;
            v18 = 1 << *(v16 + 32);
            if (v18 < 64)
            {
              v19 = ~(-1 << v18);
            }

            else
            {
              v19 = -1;
            }

            v20 = v19 & *(v16 + 56);
            v21 = (v18 + 63) >> 6;

            v22 = 0;
            v71 = v16;
            v69 = v21;
            while (v20)
            {
LABEL_24:
              sub_265FEAB60(*(v16 + 48) + 40 * (__clz(__rbit64(v20)) | (v22 << 6)), v79);
              sub_265FEC4E0();
              sub_265FEABBC(v79);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055818, &qword_265FF0668);
              if ((swift_dynamicCast() & 1) == 0)
              {
                *&v76 = 0;
                v74 = 0u;
                v75 = 0u;
                sub_265FD4F48(&v74);
                goto LABEL_51;
              }

              sub_265FBD900(&v74, v78);
              v26 = *(*__swift_project_boxed_opaque_existential_1(v78, v78[3]) + 24);
              if (v26)
              {
                v27 = v26;
                v28 = [v27 scenes];
                if (v28)
                {
                  v29 = v28;
                  sub_265FC20E0();
                  sub_265FD4EE0();
                  v30 = sub_265FEC2E0();

                  if ((v30 & 0xC000000000000001) != 0)
                  {
                    v31 = a1;
                    v32 = sub_265FEC4D0();

                    if ((v32 & 1) == 0)
                    {
                      goto LABEL_51;
                    }
                  }

                  else
                  {
                    if (!*(v30 + 16))
                    {
                      goto LABEL_51;
                    }

                    v40 = *(v30 + 40);
                    v41 = sub_265FEC410();
                    v42 = -1 << *(v30 + 32);
                    v43 = v41 & ~v42;
                    if (((*(v30 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
                    {
                      goto LABEL_51;
                    }

                    v44 = ~v42;
                    while (1)
                    {
                      v45 = *(*(v30 + 48) + 8 * v43);
                      v46 = sub_265FEC420();

                      if (v46)
                      {
                        break;
                      }

                      v43 = (v43 + 1) & v44;
                      if (((*(v30 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
                      {
                        goto LABEL_51;
                      }
                    }
                  }

                  type metadata accessor for TransformSceneExtension();
                  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
                  v34 = [a1 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()];
                  v35 = 0uLL;
                  if (v34)
                  {
                    *&v74 = v34;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F30, &unk_265FF03E0);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055310, &qword_265FEF6D8);
                    swift_dynamicCast();
                    v36 = v77;
                    if (v77)
                    {
                      v37 = *&v77[OBJC_IVAR____TtCC13ShellSceneKit23TransformSceneExtension13HostComponent_scene];
                      if (!v37)
                      {
                        goto LABEL_51;
                      }

                      v38 = v37;
                      v39 = [v38 settings];
                      if (!swift_dynamicCastObjCProtocolConditional())
                      {

                        *&v74 = 0;
                        *(&v74 + 1) = 0xE000000000000000;
                        sub_265FEC550();

                        *&v74 = 0xD00000000000002BLL;
                        *(&v74 + 1) = 0x8000000265FF1690;
                        v55 = [v38 settings];
                        v56 = [v55 description];
                        v57 = sub_265FEC0E0();
                        v59 = v58;

                        MEMORY[0x2667756D0](v57, v59);

                        goto LABEL_51;
                      }

                      sub_265FE9E5C(v83);
                      v65 = v83[1];
                      v66 = v83[0];
                      v64 = v83[2];

                      v24 = v65;
                      v23 = v66;
                      v35 = v64;
                    }

                    else
                    {
                      v23 = xmmword_265FEF5F0;
                      v24 = xmmword_265FEF5E0;
                      v35 = 0uLL;
                    }
                  }

                  else
                  {
                    v23 = xmmword_265FEF5F0;
                    v24 = xmmword_265FEF5E0;
                  }

                  v74 = v23;
                  v75 = v24;
                  v76 = v35;
                  [v27 setTransform:&v74 forScene:a1];
                  v16 = v71;
                  v21 = v69;
                }
              }

              v20 &= v20 - 1;
              __swift_destroy_boxed_opaque_existential_0(v78);
            }

            while (1)
            {
              v25 = v22 + 1;
              if (__OFADD__(v22, 1))
              {
                break;
              }

              if (v25 >= v21)
              {

                return;
              }

              v20 = *(v17 + 8 * v25);
              ++v22;
              if (v20)
              {
                v22 = v25;
                goto LABEL_24;
              }
            }

            __break(1u);
            goto LABEL_51;
          }

          *&v84 = 0;
          *(&v84 + 1) = 0xE000000000000000;
          sub_265FEC550();

          *&v84 = 0xD00000000000002BLL;
          *(&v84 + 1) = 0x8000000265FF1690;
          v60 = [v11 description];
          v61 = sub_265FEC0E0();
          v63 = v62;

          MEMORY[0x2667756D0](v61, v63);
        }

        else
        {
          sub_265FEC550();

          *&v84 = 0xD00000000000002BLL;
          *(&v84 + 1) = 0x8000000265FF1690;
          v51 = [v9 description];
          v52 = sub_265FEC0E0();
          v54 = v53;

          MEMORY[0x2667756D0](v52, v54);
        }
      }

      else
      {
        sub_265FEC550();

        *&v84 = 0xD000000000000018;
        *(&v84 + 1) = 0x8000000265FF2270;
        v47 = [a2 description];
        v48 = sub_265FEC0E0();
        v50 = v49;

        MEMORY[0x2667756D0](v48, v50);
      }

LABEL_51:
      sub_265FEC5E0();
      __break(1u);
    }
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265FEAC60()
{
  v0 = sub_265FEC060();
  __swift_allocate_value_buffer(v0, qword_280055840);
  __swift_project_value_buffer(v0, qword_280055840);
  MEMORY[0x2667756D0](46, 0xE100000000000000);
  MEMORY[0x2667756D0](0x6F69736E65747865, 0xEA0000000000736ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055198, qword_265FEEF68);
  sub_265FEBE5C();
  sub_265FEC6E0();
  return sub_265FEC050();
}

uint64_t sub_265FEADFC()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtCC13ShellSceneKit19SceneLevelExtension13HostComponent_scene);
    *(v0 + OBJC_IVAR____TtCC13ShellSceneKit19SceneLevelExtension13HostComponent_scene) = v1;
    v3 = v1;
    swift_unknownObjectRetain_n();

    sub_265FEBADC(v3);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_265FEC550();

    swift_getObjectType();
    v5 = sub_265FEC800();
    MEMORY[0x2667756D0](v5);

    result = sub_265FEC5E0();
    __break(1u);
  }

  return result;
}

id sub_265FEAF98()
{
  v1 = OBJC_IVAR____TtCC13ShellSceneKit19SceneLevelExtension13HostComponent____lazy_storage___diffInspector;
  v2 = *(v0 + OBJC_IVAR____TtCC13ShellSceneKit19SceneLevelExtension13HostComponent____lazy_storage___diffInspector);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC13ShellSceneKit19SceneLevelExtension13HostComponent____lazy_storage___diffInspector);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D0ADB8]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_265FEB138(void *a1, void *a2)
{
  v5 = sub_265FEAF98();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  v12[4] = sub_265FEB3B8;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_265FEB2E8;
  v12[3] = &block_descriptor_8;
  v8 = _Block_copy(v12);
  v9 = a1;

  [v5 observePreferredLevelWithBlock_];
  _Block_release(v8);

  v10 = [a2 settingsDiff];
  if (v10)
  {
    v11 = v10;
    [v10 evaluateWithInspector:*(v2 + OBJC_IVAR____TtCC13ShellSceneKit19SceneLevelExtension13HostComponent____lazy_storage___diffInspector) context:0];
  }
}

void sub_265FEB28C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_265FEBADC(a3);
  }
}

uint64_t sub_265FEB2E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_265FEB3D8(void *a1, id a2)
{
  v3 = [a2 clientSettings];
  [v3 preferredLevel];
  v5 = v4;

  return [a1 setLevel_];
}

uint64_t sub_265FEB454(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_265FEB4A0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_265FEB4D8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_265FEB534(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_265FEB534(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_265FEB600(v11, 0, 0, 1, a1, a2);
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
    sub_265FDB5F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_265FEB600(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_265FEB70C(a5, a6);
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
    result = sub_265FEC570();
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

uint64_t sub_265FEB70C(uint64_t a1, unint64_t a2)
{
  v4 = sub_265FEB758(a1, a2);
  sub_265FEB888(&unk_2877AE0B8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_265FEB758(uint64_t a1, unint64_t a2)
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

  v6 = sub_265FEB974(v5, 0);
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

  result = sub_265FEC570();
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
        v10 = sub_265FEC160();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_265FEB974(v10, 0);
        result = sub_265FEC540();
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

uint64_t sub_265FEB888(uint64_t result)
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

  result = sub_265FEB9E8(result, v12, 1, v3);
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

void *sub_265FEB974(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055880, &unk_265FF06F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_265FEB9E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055880, &unk_265FF06F0);
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

void sub_265FEBADC(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_265FEBE54;
  *(v3 + 24) = v2;
  v26[4] = sub_265FD4FB4;
  v26[5] = v3;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 1107296256;
  v26[2] = sub_265FBCE10;
  v26[3] = &block_descriptor_16;
  v4 = _Block_copy(v26);
  v5 = a1;

  [v5 updateSettingsWithBlock_];
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else if (qword_280054818 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v6 = sub_265FEC060();
  __swift_project_value_buffer(v6, qword_280055840);
  v7 = v5;
  v8 = sub_265FEC040();
  v9 = sub_265FEC390();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26[0] = v11;
    *v10 = 136315650;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055878, &qword_265FF06E8);
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D83B88];
    *(v12 + 16) = xmmword_265FEE990;
    v14 = MEMORY[0x277D83C10];
    *(v12 + 56) = v13;
    *(v12 + 64) = v14;
    *(v12 + 32) = v7;
    v15 = sub_265FEC0F0();
    v17 = sub_265FEB534(v15, v16, v26);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    v18 = [v7 identifier];
    v19 = sub_265FEC0E0();
    v21 = v20;

    v22 = sub_265FEB534(v19, v21, v26);

    *(v10 + 14) = v22;
    *(v10 + 22) = 2048;
    v23 = [v7 clientSettings];
    [v23 preferredLevel];
    v25 = v24;

    *(v10 + 24) = v25;
    _os_log_impl(&dword_265FBB000, v8, v9, "updated scene <%s %s> level to: %f", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2667764A0](v11, -1, -1);
    MEMORY[0x2667764A0](v10, -1, -1);
  }
}

unint64_t sub_265FEBE5C()
{
  result = qword_2800551A0;
  if (!qword_2800551A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280055198, qword_265FEEF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800551A0);
  }

  return result;
}