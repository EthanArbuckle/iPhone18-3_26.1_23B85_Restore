uint64_t sub_26C10BCF8(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9D8, &qword_26C14A9A8);
  if (swift_dynamicCast())
  {
    sub_26C0D3CB0(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_26C14880C();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_26C0CF5C4(__src, &qword_28047A9E0, &qword_26C14A9B0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_26C1490AC();
  }

  sub_26C11E1C8(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_26C11F250(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_26C0D2B5C(sub_26C11F168);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_26C14887C();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_26C0CEF7C(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_26C148F6C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_26C148F9C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_26C1490AC();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_26C0CEF7C(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_26C148F7C();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_26C14888C();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_26C14888C();
    sub_26C0BB344(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_26C0BB344(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_26C0BBAA4(*&__src[0], *(&__src[0] + 1));

  sub_26C0BB9B0(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

BOOL sub_26C10C218(__int16 a1, uint64_t a2)
{
  v2 = (a2 + 33);
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = *v2;
    v5 = *(v2 - 1);
    v2 += 2;
  }

  while (v5 != a1 || v4 != HIBYTE(a1));
  return v3 != 0;
}

BOOL sub_26C10C258(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_26C10C288(unsigned __int16 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_26C10C2B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A948, &qword_26C14A7F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  sub_26C0CF314(v2, &v18 - v10, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 3)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_26C0CF55C(v11, v7, &qword_28047A948, &qword_26C14A7F0);
      v13 = *(v4 + 44);
      v14 = sub_26C148BDC();
      v15 = *(v14 - 8);
      (*(v15 + 16))(a1, &v7[v13], v14);
      sub_26C0CF5C4(v7, &qword_28047A948, &qword_26C14A7F0);
      return (*(v15 + 56))(a1, 0, 1, v14);
    }
  }

  else
  {
    sub_26C0CF5C4(v11, &qword_28047A870, &qword_26C14A5A0);
  }

  v17 = sub_26C148BDC();
  return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
}

void sub_26C10C4E4(int64x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v425 = a6;
  v8 = v7;
  v384 = a5;
  *&v428 = a2;
  v462 = a1;
  v385 = a7;
  v401 = type metadata accessor for HandshakeState.ServerHelloState.SessionData(0);
  v11 = *(*(v401 - 8) + 64);
  MEMORY[0x28223BE20](v401);
  v379 = (&v351 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v422 = type metadata accessor for SessionTicket();
  v424 = *(v422 - 8);
  v13 = *(v424 + 64);
  v14 = MEMORY[0x28223BE20](v422);
  v376 = &v351 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v380 = (&v351 - v17);
  MEMORY[0x28223BE20](v16);
  v378 = &v351 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A960, "L6");
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v394 = &v351 - v21;
  v22 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v392 = *(v22 - 8);
  v393 = v22;
  v23 = *(v392 + 64);
  MEMORY[0x28223BE20](v22);
  v406 = &v351 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A948, &qword_26C14A7F0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v382 = &v351 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v383 = &v351 - v29;
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v30 = *(*(v397 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v397);
  v402 = &v351 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v381 = &v351 - v34;
  MEMORY[0x28223BE20](v33);
  v396 = &v351 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v409 = &v351 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v416 = &v351 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v390 = &v351 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v400 = &v351 - v46;
  MEMORY[0x28223BE20](v45);
  v413 = &v351 - v47;
  v48 = type metadata accessor for PAKEClientState(0);
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  v51 = MEMORY[0x28223BE20](v48);
  v419 = (&v351 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v51);
  v412 = &v351 - v53;
  v54 = sub_26C148BDC();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  v57 = MEMORY[0x28223BE20](v54);
  v388 = &v351 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v395 = &v351 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v408 = &v351 - v62;
  MEMORY[0x28223BE20](v61);
  v410 = &v351 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A890, &qword_26C14A5C0);
  v65 = *(*(v64 - 8) + 64);
  v66 = MEMORY[0x28223BE20](v64 - 8);
  v404 = &v351 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x28223BE20](v66);
  v399 = &v351 - v69;
  MEMORY[0x28223BE20](v68);
  v421 = (&v351 - v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  v72 = *(*(v71 - 8) + 64);
  v73 = MEMORY[0x28223BE20](v71 - 8);
  v407 = &v351 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x28223BE20](v73);
  v387 = &v351 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v389 = &v351 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v398 = &v351 - v80;
  MEMORY[0x28223BE20](v79);
  v420 = (&v351 - v81);
  v82 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v83 = *(*(v82 - 8) + 64);
  v84 = MEMORY[0x28223BE20](v82);
  v86 = &v351 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = &v86[v84[8]];
  *v87 = 0;
  v386 = v87;
  v87[2] = 1;
  v403 = v84[9];
  v86[v403] = 0;
  v377 = v84[10];
  v86[v377] = 0;
  v88 = &v86[v84[11]];
  *v88 = 0;
  v405 = v88;
  v88[2] = 1;
  v417 = v84;
  v89 = v84[12];
  v418 = v49;
  v90 = *(v49 + 56);
  v427 = v86;
  v426 = v89;
  v423 = v48;
  v415 = v49 + 56;
  v414 = v90;
  v90(&v86[v89], 1, 1, v48);
  if (qword_28047A758 != -1)
  {
    swift_once();
  }

  v391 = sub_26C148A9C();
  v91 = __swift_project_value_buffer(v391, qword_28047AC20);
  v92 = sub_26C148A7C();
  v93 = sub_26C148FFC();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *&v411 = v91;
    v95 = a3;
    v96 = a4;
    v97 = v94;
    *v94 = 0;
    _os_log_impl(&dword_26C0B5000, v92, v93, "validating server hello", v94, 2u);
    v98 = v97;
    a4 = v96;
    a3 = v95;
    v8 = v7;
    v91 = v411;
    MEMORY[0x26D69C3A0](v98, -1, -1);
  }

  v99 = v428;
  v100 = *(v428 + 24);
  v101 = *(v428 + 8);
  if (qword_28047A728 != -1)
  {
    v411 = *(v428 + 8);
    v375 = v100;
    swift_once();
    v100 = v375;
    v101 = v411;
  }

  v102 = v462;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v101, unk_280480350), vceqq_s64(v100, *(&xmmword_280480358 + 8))))) & 1) != 0 || v99[2].i64[1] != v462[4].i64[1] || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v99[3], v462[5]), vceqq_s64(v99[4], v462[6])))) & 1) == 0 || v99->i8[0] != 3 || v99->i8[1] != 3 || v99[5].i8[2] || (v111 = sub_26C121E5C(), v99 = v428, (v111 & 0x1FFFF) != 0x403))
  {
    sub_26C0BB9B0(a3, a4);
    sub_26C0CF37C(v99);
    v103 = sub_26C148A7C();
    v104 = sub_26C14900C();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_26C0B5000, v103, v104, "server hello invalid for QUIC", v105, 2u);
      v106 = v105;
      v102 = v462;
      MEMORY[0x26D69C3A0](v106, -1, -1);
    }

    v107 = xmmword_26C14A8F0;
LABEL_13:
    v108 = v425;
    *v425 = v107;
    *(v108 + 16) = 2;
    v446 = v107;
    LOBYTE(v447) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
LABEL_14:
    v109 = type metadata accessor for HandshakeState.ClientHelloState;
    v110 = v102;
    goto LABEL_15;
  }

  v112 = v102[7].i64[0];
  v113 = *(v428 + 80);
  v114 = *(v112 + 16);
  v115 = (v112 + 32);
  v116 = v422;
  v117 = v424;
  do
  {
    if (!v114)
    {
      goto LABEL_80;
    }

    v118 = *v115++;
    --v114;
  }

  while (v118 != v113);
  v119 = &v427[v417[7]];
  v356 = *(v428 + 80);
  *v119 = v113;
  v119[2] = 0;
  v457 = 0;
  v458 = 0;
  v459 = xmmword_26C14C1D0;
  v354 = *(v117 + 56);
  v355 = v117 + 56;
  v354(v420, 1, 1, v116);
  v120 = type metadata accessor for GeneralEPSK(0);
  v359 = *(v120 - 8);
  v360 = v120;
  v357 = *(v359 + 56);
  v358 = v359 + 56;
  v357(v421, 1, 1);
  v456 = MEMORY[0x277D84FA0];
  v121 = v99[5].i64[1];
  v374 = *(v121 + 16);
  if (!v374)
  {
    *&v372[8] = v8;
    v361 = 0;
    goto LABEL_91;
  }

  v375.i64[0] = v121;
  sub_26C11EFF4(v99, &v446);
  if (!*(v375.i64[0] + 16))
  {
LABEL_79:
    __break(1u);
LABEL_80:
    v167 = v113;
    sub_26C0BB9B0(a3, a4);
    v168 = v99;
    v169 = sub_26C148A7C();
    v170 = sub_26C14900C();
    sub_26C0CF37C(v168);
    if (os_log_type_enabled(v169, v170))
    {
      v171 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      *&v446 = v172;
      *v171 = 136315138;
      v173 = sub_26C0D7760(v167);
      v175 = sub_26C0E5DE8(v173, v174, &v446);

      *(v171 + 4) = v175;
      _os_log_impl(&dword_26C0B5000, v169, v170, "server hello chose a cipher suite we didn't offer (%s)", v171, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v172);
      MEMORY[0x26D69C3A0](v172, -1, -1);
      v176 = v171;
      v102 = v462;
      MEMORY[0x26D69C3A0](v176, -1, -1);
    }

    v107 = xmmword_26C14A8E0;
    goto LABEL_13;
  }

  v122 = 0;
  v365 = (v418 + 48);
  v353 = (v424 + 48);
  v361 = 0;
  v362 = v375.i64[0] + 32;
  v364 = 0xCFFFFFFFFFFFFF00;
  v373 = a4;
LABEL_27:
  v102 = (v362 + 88 * v122);
  v123 = v122 + 1;
  while (1)
  {
    *&v411 = v123;
    v124 = *v102;
    *v454 = v102[1];
    v453 = v124;
    v125 = v102[2];
    v126 = v102[3];
    v127 = v102[4];
    v455 = v102[5].u8[0];
    *&v454[48] = v127;
    *&v454[32] = v126;
    *&v454[16] = v125;
    v128 = 42;
    switch(v455 >> 4)
    {
      case 1:

        v128 = 10;
        break;
      case 2:
        sub_26C0B8B24(v453, BYTE8(v453) & 1);
        v128 = 43;
        break;
      case 3:
        sub_26C0FF14C();
        v128 = 16;
        break;
      case 4:
        sub_26C0FF158(v453, *(&v453 + 1), *v454);
        v128 = 51;
        break;
      case 5:
        break;
      case 6:

        v128 = 13;
        break;
      case 7:
        sub_26C0B8B24(v453, BYTE8(v453) & 1);
        v128 = 20;
        break;
      case 8:
        sub_26C0BBAA4(v453, *(&v453 + 1));
        v128 = 57;
        break;
      case 9:

        v128 = 45;
        break;
      case 0xA:
        sub_26C10B28C(v453, *(&v453 + 1), v454[0] & 1);
        v128 = 41;
        break;
      case 0xB:
        v128 = 58;
        break;
      case 0xC:
        v448 = *&v454[16];
        v449 = *&v454[32];
        v450[0] = *&v454[48];
        v446 = v453;
        v447 = *v454;
        LOBYTE(v450[1]) = v455 & 0xF;
        sub_26C0FF0B0(&v446, &v443);
        v128 = 35387;
        break;
      case 0xD:
        v129 = v453;
        sub_26C0BBAA4(*(&v453 + 1), *v454);
        v128 = v129;
        break;
      default:
        sub_26C0BB37C(v453, *(&v453 + 1));
        v128 = 0;
        break;
    }

    if ((sub_26C11D97C(&v446, v128, &qword_28047AD28, &qword_26C14D3B0) & 1) == 0)
    {

      sub_26C0BB9B0(a3, a4);
      v177 = v428;
      sub_26C0CF37C(v428);
      sub_26C0CF37C(v177);
      sub_26C0BE40C(&v453, &v446);
      v178 = sub_26C148A7C();
      v179 = sub_26C14900C();
      sub_26C0BE468(&v453);
      if (os_log_type_enabled(v178, v179))
      {
        v180 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        *&v443 = v181;
        *v180 = 136315138;
        v448 = *&v454[16];
        v449 = *&v454[32];
        v450[0] = *&v454[48];
        LOBYTE(v450[1]) = v455;
        v446 = v453;
        v447 = *v454;
        sub_26C1288BC(&v436);
        v182 = ExtensionType.description.getter();
        v184 = sub_26C0E5DE8(v182, v183, &v443);

        *(v180 + 4) = v184;
        _os_log_impl(&dword_26C0B5000, v178, v179, "server offered duplicate extension of type %s on server hello", v180, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v181);
        MEMORY[0x26D69C3A0](v181, -1, -1);
        MEMORY[0x26D69C3A0](v180, -1, -1);
      }

      v185 = xmmword_26C14A8F0;
      goto LABEL_87;
    }

    v130 = *&v454[1] | ((*&v454[5] | (v454[7] << 16)) << 32);
    v131 = v455 >> 4;
    v99 = v428;
    if (v131 == 4)
    {
      if ((v130 & 0x30000000000000) == 0x10000000000000)
      {
        *v372 = v364 & (v130 << 8) | v454[0];
        v147 = v453;
        *&v372[8] = *&v454[8];
        v148 = *(&v453 + 1);
        sub_26C0FEE1C(v457, v458, v459);
        v457 = v147;
        v458 = v148;
        v459 = *v372;
        v99 = v428;
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    if (v131 == 10)
    {
      if (v454[0])
      {
        *v372 = v453;
        v149 = type metadata accessor for HandshakeState.ClientHelloState(0);
        v150 = v462;
        v151 = v407;
        sub_26C0CF314(v462->i64 + *(v149 + 40), v407, &qword_28047AC50, "N;");
        v152 = (*v353)(v151, 1, v422);
        if (v152 == 1)
        {
          sub_26C0CF5C4(v151, &qword_28047AC50, "N;");
          v153 = *(v150->i64 + *(v149 + 44));
          if (*(v153 + 16))
          {
            if (!*v372)
            {
              v154 = sub_26C148A7C();
              v155 = sub_26C148FFC();
              if (os_log_type_enabled(v154, v155))
              {
                v156 = swift_slowAlloc();
                *&v372[8] = v154;
                v157 = v156;
                *v156 = 0;
                _os_log_impl(&dword_26C0B5000, *&v372[8], v155, "external psk accepted by server", v156, 2u);
                v158 = v157;
                v154 = *&v372[8];
                MEMORY[0x26D69C3A0](v158, -1, -1);
              }

              if (!*(v153 + 16))
              {
                __break(1u);
                goto LABEL_201;
              }

              v159 = v153 + ((*(v359 + 80) + 32) & ~*(v359 + 80));
              v160 = v404;
              sub_26C11F050(v159, v404, type metadata accessor for GeneralEPSK);
              sub_26C0BE468(&v453);
              v99 = v421;
              v102 = &qword_28047A890;
              sub_26C0CF5C4(v421, &qword_28047A890, &qword_26C14A5C0);
              (v357)(v160, 0, 1, v360);
              sub_26C0CF55C(v160, v99, &qword_28047A890, &qword_26C14A5C0);
              v427[v403] = 1;
              v161 = v405;
              *v405 = 0;
              v161[2] = 0;
              v122 = v411;
              if (v374 == v411)
              {
                *&v372[8] = v8;
                v99 = v428;
                sub_26C0CF37C(v428);
                HIDWORD(v361) = 1;
                goto LABEL_90;
              }

              v162 = *(v375.i64[0] + 16);
              HIDWORD(v361) = 1;
              a4 = v373;
              if (v411 < v162)
              {
                goto LABEL_27;
              }

              goto LABEL_79;
            }

            sub_26C0BB9B0(a3, v373);
            v332 = v428;
            sub_26C0CF37C(v428);
            sub_26C0CF37C(v332);
            v328 = sub_26C148A7C();
            v329 = sub_26C14900C();
            if (!os_log_type_enabled(v328, v329))
            {
              goto LABEL_189;
            }

            v330 = swift_slowAlloc();
            *v330 = 0;
            v331 = "server hello is trying to use a psk at an index we didn't offer";
          }

          else
          {

            sub_26C0BB9B0(a3, v373);
            v327 = v428;
            sub_26C0CF37C(v428);
            sub_26C0CF37C(v327);
            v328 = sub_26C148A7C();
            v329 = sub_26C14900C();
            if (!os_log_type_enabled(v328, v329))
            {
LABEL_189:

              v185 = xmmword_26C14A8E0;
LABEL_87:
              v186 = v425;
              *v425 = v185;
              *(v186 + 16) = 2;
              v446 = v185;
              LOBYTE(v447) = 2;
              sub_26C0BBAF8();
              swift_willThrowTypedImpl();
LABEL_88:
              sub_26C0BE468(&v453);
              goto LABEL_137;
            }

            v330 = swift_slowAlloc();
            *v330 = 0;
            v331 = "server hello sent a pre_shared_key extension when we didn't offer psks";
          }

          _os_log_impl(&dword_26C0B5000, v328, v329, v331, v330, 2u);
          MEMORY[0x26D69C3A0](v330, -1, -1);
          goto LABEL_189;
        }

        *&v372[8] = v8;
        sub_26C11D8DC(v151, v380, type metadata accessor for SessionTicket);
        if (*v372)
        {

          sub_26C0BB9B0(a3, v373);
          v333 = v428;
          sub_26C0CF37C(v428);
          sub_26C0CF37C(v333);
          v334 = sub_26C148A7C();
          v335 = sub_26C14900C();
          if (!os_log_type_enabled(v334, v335))
          {
LABEL_196:

LABEL_199:
            v350 = v425;
            *v425 = xmmword_26C14A8E0;
            *(v350 + 16) = 2;
            v446 = xmmword_26C14A8E0;
            LOBYTE(v447) = 2;
            sub_26C0BBAF8();
            swift_willThrowTypedImpl();
            sub_26C0BE468(&v453);
            v244 = type metadata accessor for SessionTicket;
            v245 = v380;
            goto LABEL_136;
          }

          v336 = swift_slowAlloc();
          *v336 = 0;
          _os_log_impl(&dword_26C0B5000, v334, v335, "server hello is trying to resume a session we didnt offer", v336, 2u);
          v337 = v336;
        }

        else
        {
          if (v356 == *(v380 + *(v422 + 44)))
          {
            v163 = sub_26C148A7C();
            v102 = sub_26C148FFC();
            if (os_log_type_enabled(v163, v102))
            {
              v164 = swift_slowAlloc();
              *v164 = 0;
              _os_log_impl(&dword_26C0B5000, v163, v102, "resuming session", v164, 2u);
              MEMORY[0x26D69C3A0](v164, -1, -1);
            }

            sub_26C0BE468(&v453);
            v99 = v420;
            sub_26C0CF5C4(v420, &qword_28047AC50, "N;");
            sub_26C11D8DC(v380, v99, type metadata accessor for SessionTicket);
            v354(v99, 0, 1, v422);
            v427[v377] = 1;
            v165 = v405;
            *v405 = 0;
            v165[2] = 0;
            if (v374 == v411)
            {
              v99 = v428;
              sub_26C0CF37C(v428);
              LODWORD(v361) = 1;
              goto LABEL_90;
            }

            v166 = *(v375.i64[0] + 16);
            LODWORD(v361) = 1;
            v122 = v411;
            a4 = v373;
            v8 = *&v372[8];
            if (v411 < v166)
            {
              goto LABEL_27;
            }

            goto LABEL_79;
          }

          sub_26C0BB9B0(a3, v373);
          v338 = v428;
          sub_26C0CF37C(v428);
          sub_26C0CF37C(v338);
          sub_26C11F050(v380, v376, type metadata accessor for SessionTicket);
          v334 = sub_26C148A7C();
          v339 = sub_26C14900C();
          if (!os_log_type_enabled(v334, v339))
          {

            sub_26C11F1F0(v376, type metadata accessor for SessionTicket);
            goto LABEL_199;
          }

          v340 = swift_slowAlloc();
          v341 = swift_slowAlloc();
          *&v446 = v341;
          *v340 = 136315394;
          v342 = sub_26C0D7760(v356);
          v344 = sub_26C0E5DE8(v342, v343, &v446);

          *(v340 + 4) = v344;
          *(v340 + 12) = 2080;
          v345 = v376;
          v346 = sub_26C0D7760(*(v376 + *(v422 + 44)));
          v348 = v347;
          sub_26C11F1F0(v345, type metadata accessor for SessionTicket);
          v349 = sub_26C0E5DE8(v346, v348, &v446);

          *(v340 + 14) = v349;
          _os_log_impl(&dword_26C0B5000, v334, v339, "server negotiated cipher suite %s, expected %s", v340, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69C3A0](v341, -1, -1);
          v337 = v340;
        }

        MEMORY[0x26D69C3A0](v337, -1, -1);
        goto LABEL_196;
      }

LABEL_60:
      sub_26C0BE468(&v453);
      goto LABEL_61;
    }

    if (v131 != 12 || (v455 & 1) == 0)
    {
      goto LABEL_60;
    }

    v369 = v454[0];
    v370 = *(&v453 + 1);
    *v372 = v453;
    *&v372[8] = *&v454[8];
    v367 = *&v454[40];
    v368 = *&v454[24];
    v366 = *&v454[56];
    v451[2] = *&v454[16];
    v451[3] = *&v454[32];
    v451[4] = *&v454[48];
    v451[0] = v453;
    v451[1] = *v454;
    v452 = v455 & 0xF;
    sub_26C0FF0B0(v451, &v446);
    v132 = sub_26C148A7C();
    v363 = sub_26C148FEC();
    v371 = v132;
    if (os_log_type_enabled(v132, v363))
    {
      v133 = swift_slowAlloc();
      *v133 = 0;
      _os_log_impl(&dword_26C0B5000, v371, v363, "Received PAKEServerHello", v133, 2u);
      MEMORY[0x26D69C3A0](v133, -1, -1);
    }

    v134 = type metadata accessor for HandshakeState.ClientHelloState(0);
    v135 = v416;
    sub_26C0CF314(v462->i64 + *(v134 + 48), v416, &qword_28047AC40, &unk_26C14D320);
    if ((*v365)(v135, 1, v423) == 1)
    {

      sub_26C0BB9B0(a3, v373);
      v229 = v135;
      v230 = v428;
      sub_26C0CF37C(v428);
      sub_26C0CF37C(v230);
      sub_26C0CF5C4(v229, &qword_28047AC40, &unk_26C14D320);
      v231 = sub_26C148A7C();
      v232 = sub_26C14900C();
      if (os_log_type_enabled(v231, v232))
      {
        v233 = swift_slowAlloc();
        *v233 = 0;
        _os_log_impl(&dword_26C0B5000, v231, v232, "server hello sent a pake extension when we did not offer a pake", v233, 2u);
        MEMORY[0x26D69C3A0](v233, -1, -1);
      }

      v234 = v425;
      *v425 = xmmword_26C14A8E0;
      *(v234 + 16) = 2;
      v446 = xmmword_26C14A8E0;
      LOBYTE(v447) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BE468(&v453);
      goto LABEL_88;
    }

    v136 = v135;
    v137 = v419;
    sub_26C11D8DC(v136, v419, type metadata accessor for PAKEClientState);
    v138 = v137;
    v139 = *v137;
    v140 = v428;
    if (v139 != *v372)
    {
      break;
    }

    *(&v450[2] + 9) = *(v138 + 105);
    v141 = v138[5];
    v450[0] = v138[4];
    v450[1] = v141;
    v450[2] = v138[6];
    v142 = v138[1];
    v446 = *v138;
    v447 = v142;
    v143 = v138[3];
    v448 = v138[2];
    v449 = v143;
    v460[0] = *(v450 + 8);
    v460[1] = *(&v450[1] + 8);
    v460[2] = *(&v450[2] + 8);
    v461 = BYTE8(v450[3]);
    sub_26C0ECD38(&v446, &v443);
    if (qword_28047A730 != -1)
    {
      swift_once();
    }

    v144 = sub_26C0D8220(v460);
    sub_26C0E6E80(&v446);
    if (!v144)
    {

      sub_26C0BB9B0(a3, v373);
      v239 = v428;
      sub_26C0CF37C(v428);
      sub_26C0CF37C(v239);
      v240 = sub_26C148A7C();
      v241 = sub_26C14900C();
      if (os_log_type_enabled(v240, v241))
      {
        v242 = swift_slowAlloc();
        *v242 = 0;
        _os_log_impl(&dword_26C0B5000, v240, v241, "selected PAKE credential has no attempts remaining", v242, 2u);
        MEMORY[0x26D69C3A0](v242, -1, -1);
      }

      v243 = v425;
      *v425 = xmmword_26C14C1B0;
      *(v243 + 16) = 2;
      v443 = xmmword_26C14C1B0;
      LOBYTE(v444[0]) = 2;
      sub_26C0BBAF8();
      goto LABEL_132;
    }

    LOWORD(v443) = *v372;
    WORD3(v443) = *&v372[6];
    *(&v443 + 2) = *v372 >> 16;
    *(&v443 + 1) = v370;
    LOBYTE(v444[0]) = v369;
    *(v444 + 1) = v130;
    BYTE7(v444[0]) = BYTE6(v130);
    *(v444 + 5) = WORD2(v130);
    *(v444 + 8) = *&v372[8];
    *(&v444[1] + 8) = v368;
    *(&v444[2] + 8) = v367;
    *(&v444[3] + 1) = v366;
    v145 = v419;
    sub_26C0EA90C(&v443, &v436);
    if (v8)
    {

      sub_26C0BB9B0(a3, v373);
      v246 = v428;
      sub_26C0CF37C(v428);
      sub_26C0CF37C(v246);
      v247 = v436;
      v248 = v437;
      sub_26C0CF018(v436, *(&v436 + 1), v437);
      v249 = sub_26C148A7C();
      v250 = sub_26C14900C();
      sub_26C0CF030(v247, *(&v247 + 1), v248);
      if (os_log_type_enabled(v249, v250))
      {
        v251 = swift_slowAlloc();
        v252 = swift_slowAlloc();
        *v251 = 138412290;
        sub_26C0BBAF8();
        swift_allocError();
        *v253 = v247;
        *(v253 + 16) = v248;
        sub_26C0CF018(v247, *(&v247 + 1), v248);
        v254 = _swift_stdlib_bridgeErrorToNSError();
        *(v251 + 4) = v254;
        *v252 = v254;
        _os_log_impl(&dword_26C0B5000, v249, v250, "failed to process Server Hello pake share %@", v251, 0xCu);
        sub_26C0CF5C4(v252, &qword_28047A880, &qword_26C14A5B0);
        MEMORY[0x26D69C3A0](v252, -1, -1);
        MEMORY[0x26D69C3A0](v251, -1, -1);
      }

      v255 = v419;
      v256 = v419[5];
      v257 = v419[3];
      v440 = v419[4];
      v441 = v256;
      v258 = v419[5];
      v442[0] = v419[6];
      *(v442 + 9) = *(v419 + 105);
      v259 = v419[1];
      v436 = *v419;
      v437 = v259;
      v260 = v419[3];
      v262 = *v419;
      v261 = v419[1];
      v438 = v419[2];
      v439 = v260;
      v433 = v440;
      v434 = v258;
      v435[0] = v419[6];
      *(v435 + 9) = *(v419 + 105);
      v429 = v262;
      v430 = v261;
      v431 = v438;
      v432 = v257;
      sub_26C0ECD38(&v436, &v443);
      sub_26C0E6EB0();
      v444[3] = v433;
      v444[4] = v434;
      v445[0] = v435[0];
      *(v445 + 9) = *(v435 + 9);
      v443 = v429;
      v444[0] = v430;
      v444[1] = v431;
      v444[2] = v432;
      sub_26C0E6E80(&v443);
      v263 = v425;
      *v425 = v247;
      *(v263 + 16) = v248;
      v429 = v247;
      LOBYTE(v430) = v248;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BE468(&v453);
      sub_26C0BE468(&v453);
      v244 = type metadata accessor for PAKEClientState;
      v245 = v255;
      goto LABEL_136;
    }

    v8 = 0;
    sub_26C0BE468(&v453);
    sub_26C0BE468(&v453);
    v146 = v426;
    sub_26C0CF5C4(&v427[v426], &qword_28047AC40, &unk_26C14D320);
    sub_26C11D8DC(v145, &v427[v146], type metadata accessor for PAKEClientState);
    v414(&v427[v146], 0, 1, v423);
    v99 = v428;
LABEL_61:
    if (v374 == v411)
    {
      *&v372[8] = v8;
      sub_26C0CF37C(v99);
LABEL_90:
      v102 = v462;
      a4 = v373;
LABEL_91:
      v187 = v413;
      sub_26C0CF314(&v427[v426], v413, &qword_28047AC40, &unk_26C14D320);
      v188 = *(v418 + 48);
      v418 += 48;
      v419 = v188;
      if ((v188)(v187, 1, v423) == 1)
      {
        sub_26C0CF5C4(v187, &qword_28047AC40, &unk_26C14D320);
        v189 = v459;
        if (v459 >> 60 == 15)
        {

          sub_26C0BB9B0(a3, a4);
LABEL_110:
          sub_26C0CF37C(v99);
          v206 = sub_26C148A7C();
          v207 = sub_26C14900C();
          if (os_log_type_enabled(v206, v207))
          {
            v208 = swift_slowAlloc();
            v209 = swift_slowAlloc();
            *&v436 = v209;
            *v208 = 136315138;
            swift_beginAccess();
            if (v459 >> 60 == 15)
            {
              v210 = 0xE300000000000000;
              v211 = 7104878;
            }

            else
            {
              LOWORD(v446) = v457;
              *(&v446 + 1) = v458;
              v447 = v459;
              v211 = sub_26C14075C();
              v210 = v218;
            }

            v219 = sub_26C0E5DE8(v211, v210, &v436);

            *(v208 + 4) = v219;
            _os_log_impl(&dword_26C0B5000, v206, v207, "unsupported server key share, expected secp384 or x25519 or x25519-MLKEM768 got %s", v208, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v209);
            MEMORY[0x26D69C3A0](v209, -1, -1);
            MEMORY[0x26D69C3A0](v208, -1, -1);
          }

          v220 = v462;
          v221 = v425;
          *v425 = xmmword_26C14A8E0;
          *(v221 + 16) = 2;
          v446 = xmmword_26C14A8E0;
          LOBYTE(v447) = 2;
          sub_26C0BBAF8();
          swift_willThrowTypedImpl();
          sub_26C0CF5C4(v421, &qword_28047A890, &qword_26C14A5C0);
          sub_26C0CF5C4(v420, &qword_28047AC50, "N;");
          sub_26C0FEE1C(v457, v458, v459);
          v109 = type metadata accessor for HandshakeState.ClientHelloState;
          v110 = v220;
          goto LABEL_15;
        }

        *&v411 = v91;
        v195 = v457;
        v196 = v462;
        if ((v462[3].i8[14] & 1) != 0 || v462[3].u16[6] != v457)
        {
          v205 = v458;
          sub_26C0BBAA4(v458, v459);

          sub_26C0BB9B0(a3, a4);
          sub_26C0FEE1C(v195, v205, v189);
          v99 = v428;
          goto LABEL_110;
        }

        LODWORD(v412) = v462[3].u16[6];
        v416 = v458;
        v413 = v457;
        v414 = *(&v459 + 1);
        v197 = type metadata accessor for HandshakeState.ClientHelloState(0);
        v198 = v394;
        sub_26C0CF314(v196->i64 + *(v197 + 32), v394, &qword_28047A960, "L6");
        if ((*(v392 + 48))(v198, 1, v393) == 1)
        {
          sub_26C0BBAA4(v416, v189);

          sub_26C0BB9B0(a3, a4);
          sub_26C0CF37C(v428);
          sub_26C0CF5C4(v198, &qword_28047A960, "L6");
          v199 = sub_26C148A7C();
          v200 = sub_26C14900C();
          if (os_log_type_enabled(v199, v200))
          {
            v201 = swift_slowAlloc();
            *v201 = 0;
            _os_log_impl(&dword_26C0B5000, v199, v200, "missing key share", v201, 2u);
            MEMORY[0x26D69C3A0](v201, -1, -1);
          }

          v202 = v425;
          *v425 = xmmword_26C14A8E0;
          *(v202 + 16) = 2;
          v446 = xmmword_26C14A8E0;
          LOBYTE(v447) = 2;
          sub_26C0BBAF8();
          swift_willThrowTypedImpl();
          sub_26C0FEE1C(v413, v416, v189);
          goto LABEL_137;
        }

        v415 = a3;
        v373 = a4;
        sub_26C11D8DC(v198, v406, type metadata accessor for GeneratedEphemeralPrivateKey);
        sub_26C0BBAA4(v416, v189);
        v283 = sub_26C148A7C();
        v284 = sub_26C148FFC();
        if (os_log_type_enabled(v283, v284))
        {
          v285 = swift_slowAlloc();
          *v285 = 0;
          _os_log_impl(&dword_26C0B5000, v283, v284, "valid TLS1.3 server hello, constructing shared secret.", v285, 2u);
          MEMORY[0x26D69C3A0](v285, -1, -1);
        }

        v286 = v189 >> 62;
        if ((v189 >> 62) > 1)
        {
          if (v286 == 2)
          {
            v287 = *(v416 + 24);
          }

          else
          {
            v287 = 0;
          }
        }

        else if (v286)
        {
          v287 = v416 >> 32;
        }

        else
        {
          v287 = BYTE6(v189);
        }

        if (v287 < v414)
        {
          __break(1u);
        }

        else
        {
          v314 = sub_26C14889C();
          v316 = v315;
          v317 = v388;
          v318 = *&v372[8];
          sub_26C0DCAFC(v314, v315, &v446, v388);
          *&v372[8] = v318;
          if (v318)
          {
            sub_26C0BB9B0(v314, v316);
            sub_26C0FEE1C(v413, v416, v189);
            sub_26C0CF37C(v428);
            sub_26C0BB9B0(v415, v373);
            sub_26C11F1F0(v406, type metadata accessor for GeneratedEphemeralPrivateKey);
            sub_26C0CF5C4(v421, &qword_28047A890, &qword_26C14A5C0);
            sub_26C0CF5C4(v420, &qword_28047AC50, "N;");

            sub_26C0FEE1C(v457, v458, v459);
            v319 = v447;
            v320 = v425;
            *v425 = v446;
            *(v320 + 16) = v319;
            goto LABEL_138;
          }

          sub_26C0BB9B0(v314, v316);
          (*(v55 + 32))(v410, v317, v54);
          v321 = v386;
          v322 = v387;
          *v386 = v412;
          v321[2] = 0;
          sub_26C0CF314(v420, v322, &qword_28047AC50, "N;");
          if ((*(v424 + 48))(v322, 1, v422) != 1)
          {
            sub_26C11F1F0(v406, type metadata accessor for GeneratedEphemeralPrivateKey);
            sub_26C0FEE1C(v413, v416, v189);
            sub_26C0CF37C(v428);

            v326 = v378;
            sub_26C11D8DC(v387, v378, type metadata accessor for SessionTicket);
            sub_26C11D8DC(v326, &v427[v417[5]], type metadata accessor for SessionTicket);
            swift_storeEnumTagMultiPayload();
            v91 = v411;
LABEL_121:
            v222 = v398;
            sub_26C0CF314(v420, v398, &qword_28047AC50, "N;");
            v223 = *(v424 + 48);
            v224 = v422;
            v225 = v223(v222, 1, v422);
            sub_26C0CF5C4(v222, &qword_28047AC50, "N;");
            v352 = v54;
            if (v225 == 1)
            {
              v226 = type metadata accessor for HandshakeState.ClientHelloState(0);
              v227 = v462;
              v228 = v389;
              sub_26C0CF314(v462->i64 + *(v226 + 40), v389, &qword_28047AC50, "N;");
              LODWORD(v424) = v223(v228, 1, v224) != 1;
              sub_26C0CF5C4(v228, &qword_28047AC50, "N;");
            }

            else
            {
              LODWORD(v424) = 0;
              v227 = v462;
            }

            *&v428 = type metadata accessor for HandshakeState.ClientHelloState(0);
            v264 = *(v227->i64 + *(v428 + 44));
            v427[v417[13]] = *(v264 + 16) != 0;
            v265 = v399;
            sub_26C0CF314(v421, v399, &qword_28047A890, &qword_26C14A5C0);
            v266 = (*(v359 + 48))(v265, 1, v360);
            sub_26C0CF5C4(v265, &qword_28047A890, &qword_26C14A5C0);
            LODWORD(v422) = v266 == 1 && *(v264 + 16) != 0;
            v267 = v419;
            v268 = v400;
            sub_26C0CF314(&v427[v426], v400, &qword_28047AC40, &unk_26C14D320);
            v269 = v423;
            v270 = (v267)(v268, 1, v423);
            sub_26C0CF5C4(v268, &qword_28047AC40, &unk_26C14D320);
            v271 = v270 == 1;
            v272 = v462;
            v273 = v428;
            if (v271)
            {
              v274 = v390;
              sub_26C0CF314(v462->i64 + *(v428 + 48), v390, &qword_28047AC40, &unk_26C14D320);
              if ((v267)(v274, 1, v269) != 1)
              {
                sub_26C0BB9B0(v415, v373);
                sub_26C0CF5C4(v274, &qword_28047AC40, &unk_26C14D320);
                v302 = sub_26C148A7C();
                v303 = sub_26C14900C();
                if (os_log_type_enabled(v302, v303))
                {
                  v304 = swift_slowAlloc();
                  *v304 = 0;
                  _os_log_impl(&dword_26C0B5000, v302, v303, "pake expected in ServerHello but not present", v304, 2u);
                  MEMORY[0x26D69C3A0](v304, -1, -1);
                }

                v305 = v425;
                *v425 = xmmword_26C14A8E0;
                *(v305 + 16) = 2;
                v446 = xmmword_26C14A8E0;
                LOBYTE(v447) = 2;
                sub_26C0BBAF8();
                swift_willThrowTypedImpl();
                (*(v55 + 8))(v410, v352);
                sub_26C0CF5C4(v421, &qword_28047A890, &qword_26C14A5C0);
                sub_26C0CF5C4(v420, &qword_28047AC50, "N;");
                sub_26C0FEE1C(v457, v458, v459);
                sub_26C11F1F0(v462, type metadata accessor for HandshakeState.ClientHelloState);
                v109 = type metadata accessor for HandshakeState.ServerHelloState.SessionData;
                v110 = &v427[v417[5]];
                goto LABEL_15;
              }

              sub_26C0CF5C4(v274, &qword_28047AC40, &unk_26C14D320);
            }

            *&v411 = v91;
            LOBYTE(v450[0]) = v272[4].i8[0];
            v276 = v272[2];
            v449 = v272[3];
            v275 = v449;
            v448 = v276;
            v278 = *v272;
            v447 = v272[1];
            v277 = v447;
            v446 = v278;
            v279 = v427;
            v427[64] = v450[0];
            v279[2] = v276;
            v279[3] = v275;
            *v279 = v278;
            v279[1] = v277;
            v8 = v417[6];
            sub_26C0CF314(v272->i64 + *(v273 + 36), v279 + v8, &qword_28047AC38, &unk_26C14D110);
            v280 = *(v55 + 16);
            v280(v395, v410, v352);
            sub_26C10B120(&v446, &v443);
            sub_26C11F2F0(&qword_28047AC00, MEMORY[0x277CC5330]);
            sub_26C148BAC();
            v281 = v396;
            sub_26C0CF314(v279 + v8, v396, &qword_28047A870, &qword_26C14A5A0);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if ((EnumCaseMultiPayload - 1) >= 3)
            {
              if (!EnumCaseMultiPayload)
              {
                LODWORD(v428) = v424 | v422;
                v288 = v383;
                sub_26C0CF55C(v396, v383, &qword_28047A948, &qword_26C14A7F0);
                v289 = v382;
                sub_26C0CF314(v288, v382, &qword_28047A948, &qword_26C14A7F0);
                v290 = v395;
                v291 = v55;
                v292 = v352;
                v280(v395, v408, v352);
                v293 = v381;
                sub_26C11C240(v289, v290, v415, v373, v384, v428 & 1, v381);
                sub_26C0CF5C4(v288, &qword_28047A948, &qword_26C14A7F0);
                v294 = *(v291 + 8);
                v294(v408, v292);
                swift_storeEnumTagMultiPayload();
                sub_26C0FF20C(v293, &v427[v8], &qword_28047A870, &qword_26C14A5A0);
                v295 = sub_26C148A7C();
                v296 = sub_26C148FFC();
                if (os_log_type_enabled(v295, v296))
                {
                  v297 = swift_slowAlloc();
                  *v297 = 0;
                  _os_log_impl(&dword_26C0B5000, v295, v296, "server hello valid", v297, 2u);
                  MEMORY[0x26D69C3A0](v297, -1, -1);
                }

                v294(v410, v352);
                sub_26C0CF5C4(v421, &qword_28047A890, &qword_26C14A5C0);
                sub_26C0CF5C4(v420, &qword_28047AC50, "N;");
                sub_26C0FEE1C(v457, v458, v459);
                v298 = v427;
                sub_26C11F050(v427, v385, type metadata accessor for HandshakeState.ServerHelloState);
                sub_26C11F1F0(v462, type metadata accessor for HandshakeState.ClientHelloState);
                sub_26C11F1F0(v298, type metadata accessor for HandshakeState.ServerHelloState);
                return;
              }
            }

            else
            {
              sub_26C0CF5C4(v281, &qword_28047A870, &qword_26C14A5A0);
            }

            if (qword_28047A770 == -1)
            {
LABEL_159:
              __swift_project_value_buffer(v391, qword_28047AD78);
              sub_26C0CF314(&v427[v8], v402, &qword_28047A870, &qword_26C14A5A0);
              v299 = swift_getEnumCaseMultiPayload();
              if (v299 <= 1)
              {
                if (v299)
                {
                  v300 = 0xEF74657263655365;
                  v301 = 0x6B616873646E6168;
                }

                else
                {
                  v300 = 0xEB00000000746572;
                  v301 = 0x636553796C726165;
                }
              }

              else if (v299 == 2)
              {
                v300 = 0xEC00000074657263;
                v301 = 0x655372657473616DLL;
              }

              else
              {
                if (v299 != 3)
                {
                  v300 = 0xE400000000000000;
                  v301 = 1701602409;
LABEL_174:
                  v306 = v415;
                  v307 = v352;
                  sub_26C125B0C(v301, v300, 0x7672655374736F70, 0xEF6F6C6C65487265);

                  v428 = xmmword_26C14A570;
                  v443 = xmmword_26C14A570;
                  LOBYTE(v444[0]) = 2;
                  sub_26C0BBAF8();
                  swift_willThrowTypedImpl();
                  sub_26C0BB9B0(v306, v373);
                  v308 = *(v55 + 8);
                  v308(v408, v307);
                  v308(v410, v307);
                  sub_26C0CF5C4(v421, &qword_28047A890, &qword_26C14A5C0);
                  sub_26C0CF5C4(v420, &qword_28047AC50, "N;");
                  sub_26C0FEE1C(v457, v458, v459);
                  v309 = v425;
                  *v425 = v428;
                  *(v309 + 16) = 2;
                  sub_26C11F1F0(v462, type metadata accessor for HandshakeState.ClientHelloState);
                  v310 = v427;
                  v311 = *(v427 + 3);
                  v444[1] = *(v427 + 2);
                  v444[2] = v311;
                  LOBYTE(v444[3]) = v427[64];
                  v312 = *(v427 + 1);
                  v443 = *v427;
                  v444[0] = v312;
                  sub_26C10B17C(&v443);
                  v313 = v417;
                  sub_26C11F1F0(v310 + v417[5], type metadata accessor for HandshakeState.ServerHelloState.SessionData);
                  sub_26C0CF5C4(v310 + v313[6], &qword_28047AC38, &unk_26C14D110);
                  goto LABEL_16;
                }

                v300 = 0xEA00000000007374;
                v301 = 0x65726365536C6C61;
              }

              sub_26C0CF5C4(v402, &qword_28047A870, &qword_26C14A5A0);
              goto LABEL_174;
            }

LABEL_201:
            swift_once();
            goto LABEL_159;
          }

          sub_26C0CF5C4(v387, &qword_28047AC50, "N;");
          if ((v386[2] & 1) == 0)
          {
            v323 = *v386;
            sub_26C11F1F0(v406, type metadata accessor for GeneratedEphemeralPrivateKey);
            sub_26C0FEE1C(v413, v416, v189);
            sub_26C0CF37C(v428);

            v324 = v462[7].i64[1];
            v325 = v379;
            *v379 = v356;
            *(v325 + 2) = v323;
            *(v325 + 8) = v324;
            swift_storeEnumTagMultiPayload();
            sub_26C11D8DC(v325, &v427[v417[5]], type metadata accessor for HandshakeState.ServerHelloState.SessionData);

            v91 = v411;
            goto LABEL_121;
          }
        }

        __break(1u);
        return;
      }

      sub_26C0CF37C(v99);
      v190 = v412;
      sub_26C11D8DC(v187, v412, type metadata accessor for PAKEClientState);
      if (v459 >> 60 == 15)
      {
        if (((HIDWORD(v361) | v361) & 1) == 0)
        {
          v212 = v409;
          sub_26C0CF314(v190 + *(v423 + 20), v409, &qword_28047A930, qword_26C14C120);
          if ((*(v55 + 48))(v212, 1, v54) != 1)
          {
            v415 = a3;
            v373 = a4;
            sub_26C11F1F0(v190, type metadata accessor for PAKEClientState);
            (*(v55 + 32))(v410, v212, v54);
            *&v427[v417[5]] = v356;
            swift_storeEnumTagMultiPayload();
            goto LABEL_121;
          }

          sub_26C0BB9B0(a3, a4);
          sub_26C0CF5C4(v212, &qword_28047A930, qword_26C14C120);
          v213 = sub_26C148A7C();
          v214 = sub_26C14900C();
          if (os_log_type_enabled(v213, v214))
          {
            v215 = swift_slowAlloc();
            *v215 = 0;
            _os_log_impl(&dword_26C0B5000, v213, v214, "missing derivedSharedKey", v215, 2u);
            v216 = v215;
            v102 = v462;
            MEMORY[0x26D69C3A0](v216, -1, -1);
          }

          v217 = v425;
          *v425 = 0xD00000000000001ELL;
          *(v217 + 1) = 0x800000026C15AE10;
          *(v217 + 16) = 1;
          *&v446 = 0xD00000000000001ELL;
          *(&v446 + 1) = 0x800000026C15AE10;
          LOBYTE(v447) = 1;
          goto LABEL_108;
        }

        sub_26C0BB9B0(a3, a4);
        v191 = sub_26C148A7C();
        v192 = sub_26C14900C();
        if (os_log_type_enabled(v191, v192))
        {
          v193 = swift_slowAlloc();
          *v193 = 0;
          v194 = "server sent PAKE and PSK extensions, which is not allowed";
LABEL_106:
          _os_log_impl(&dword_26C0B5000, v191, v192, v194, v193, 2u);
          v203 = v193;
          v102 = v462;
          MEMORY[0x26D69C3A0](v203, -1, -1);
        }
      }

      else
      {
        sub_26C0BB9B0(a3, a4);
        v191 = sub_26C148A7C();
        v192 = sub_26C14900C();
        if (os_log_type_enabled(v191, v192))
        {
          v193 = swift_slowAlloc();
          *v193 = 0;
          v194 = "server sent PAKE and key share extensions, which is not allowed";
          goto LABEL_106;
        }
      }

      v204 = v425;
      *v425 = xmmword_26C14A8E0;
      *(v204 + 16) = 2;
      v446 = xmmword_26C14A8E0;
      LOBYTE(v447) = 2;
LABEL_108:
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C11F1F0(v412, type metadata accessor for PAKEClientState);
      sub_26C0CF5C4(v421, &qword_28047A890, &qword_26C14A5C0);
      sub_26C0CF5C4(v420, &qword_28047AC50, "N;");
      sub_26C0FEE1C(v457, v458, v459);
      goto LABEL_14;
    }

    v102 = (v102 + 88);
    v123 = v411 + 1;
    a4 = v373;
    if (v411 >= *(v375.i64[0] + 16))
    {
      goto LABEL_79;
    }
  }

  sub_26C0BB9B0(a3, v373);
  sub_26C0CF37C(v140);
  sub_26C0CF37C(v140);
  v235 = sub_26C148A7C();
  v236 = sub_26C14900C();
  if (os_log_type_enabled(v235, v236))
  {
    v237 = swift_slowAlloc();
    *v237 = 0;
    _os_log_impl(&dword_26C0B5000, v235, v236, "server hello sent a pake scheme that we did not offer", v237, 2u);
    MEMORY[0x26D69C3A0](v237, -1, -1);
  }

  v238 = v425;
  *v425 = xmmword_26C14A8E0;
  *(v238 + 16) = 2;
  v446 = xmmword_26C14A8E0;
  LOBYTE(v447) = 2;
  sub_26C0BBAF8();
LABEL_132:
  swift_willThrowTypedImpl();
  sub_26C0BE468(&v453);
  sub_26C0BE468(&v453);
  v244 = type metadata accessor for PAKEClientState;
  v245 = v419;
LABEL_136:
  sub_26C11F1F0(v245, v244);
LABEL_137:
  sub_26C0CF5C4(v421, &qword_28047A890, &qword_26C14A5C0);
  sub_26C0CF5C4(v420, &qword_28047AC50, "N;");
  sub_26C0FEE1C(v457, v458, v459);
LABEL_138:
  v109 = type metadata accessor for HandshakeState.ClientHelloState;
  v110 = v462;
LABEL_15:
  sub_26C11F1F0(v110, v109);
LABEL_16:
  sub_26C0CF5C4(&v427[v426], &qword_28047AC40, &unk_26C14D320);
}

uint64_t sub_26C10FB04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  sub_26C0CF314(v2, &v25 - v14, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_6:
      sub_26C0CF5C4(v15, &qword_28047A870, &qword_26C14A5A0);
LABEL_7:
      v17 = sub_26C148BDC();
      return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    }

    sub_26C0CF55C(v15, v11, &qword_28047A9C8, &qword_26C14D2A0);
    v22 = *(v8 + 40);
    v23 = sub_26C148BDC();
    v24 = *(v23 - 8);
    (*(v24 + 16))(a1, &v11[v22], v23);
    sub_26C0CF5C4(v11, &qword_28047A9C8, &qword_26C14D2A0);
    return (*(v24 + 56))(a1, 0, 1, v23);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    sub_26C0CF55C(v15, v7, &qword_28047A970, "DG");
    v19 = *(v4 + 40);
    v20 = sub_26C148BDC();
    v21 = *(v20 - 8);
    (*(v21 + 16))(a1, &v7[v19], v20);
    sub_26C0CF5C4(v7, &qword_28047A970, "DG");
    return (*(v21 + 56))(a1, 0, 1, v20);
  }
}

uint64_t sub_26C10FE3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  sub_26C0CF314(v2, &v25 - v14, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_6:
      sub_26C0CF5C4(v15, &qword_28047A870, &qword_26C14A5A0);
LABEL_7:
      v17 = sub_26C148BDC();
      return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    }

    sub_26C0CF55C(v15, v11, &qword_28047A9C8, &qword_26C14D2A0);
    v22 = *(v8 + 44);
    v23 = sub_26C148BDC();
    v24 = *(v23 - 8);
    (*(v24 + 16))(a1, &v11[v22], v23);
    sub_26C0CF5C4(v11, &qword_28047A9C8, &qword_26C14D2A0);
    return (*(v24 + 56))(a1, 0, 1, v23);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    sub_26C0CF55C(v15, v7, &qword_28047A970, "DG");
    v19 = *(v4 + 44);
    v20 = sub_26C148BDC();
    v21 = *(v20 - 8);
    (*(v21 + 16))(a1, &v7[v19], v20);
    sub_26C0CF5C4(v7, &qword_28047A970, "DG");
    return (*(v21 + 56))(a1, 0, 1, v20);
  }
}

uint64_t sub_26C110174()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AC70);
  __swift_project_value_buffer(v0, qword_28047AC70);
  return sub_26C148A8C();
}

void HandshakeStateMachine.init(configuration:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40[-1] - v6;
  v39 = &v40[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v40[-1] - v10;
  v12 = a1[3];
  v43 = a1[2];
  v44 = v12;
  v45 = *(a1 + 64);
  v13 = a1[1];
  v41 = *a1;
  v42 = v13;
  *a2 = xmmword_26C14A540;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v14 = type metadata accessor for HandshakeStateMachine(0);
  v15 = a2 + v14[7];
  *(v15 + 24) = &type metadata for SwiftTLSDefaultClock;
  *(v15 + 32) = &off_287CCAB28;
  v40[0] = 0;
  MEMORY[0x26D69C3B0](v40, 8);
  v16 = v40[0];
  v40[0] = 0;
  MEMORY[0x26D69C3B0](v40, 8);
  v17 = v40[0];
  v40[0] = 0;
  MEMORY[0x26D69C3B0](v40, 8);
  v18 = v40[0];
  v40[0] = 0;
  MEMORY[0x26D69C3B0](v40, 8);
  v19 = v40[0];
  v20 = (a2 + v14[8]);
  *v20 = v16;
  v20[1] = v17;
  v20[2] = v18;
  v20[3] = v19;
  v21 = a2 + v14[9];
  v22 = v44;
  *(v21 + 32) = v43;
  *(v21 + 48) = v22;
  *(v21 + 64) = v45;
  v23 = v42;
  *v21 = v41;
  *(v21 + 16) = v23;
  v24 = a2 + v14[6];
  v25 = type metadata accessor for SessionTicket();
  v26 = *(*(v25 - 8) + 56);
  v26(v11, 1, 1, v25);
  v27 = type metadata accessor for PAKEClientState(0);
  v28 = *(*(v27 - 8) + 56);
  v28(v7, 1, 1, v27);
  v29 = type metadata accessor for HandshakeState.IdleState(0);
  v30 = v29[5];
  v26((v24 + v30), 1, 1, v25);
  v31 = v29[8];
  v28((v24 + v31), 1, 1, v27);
  v32 = v44;
  *(v24 + 32) = v43;
  *(v24 + 48) = v32;
  *(v24 + 64) = v45;
  v33 = v42;
  *v24 = v41;
  *(v24 + 16) = v33;
  sub_26C10B120(&v41, v40);
  sub_26C0FF20C(v11, v24 + v30, &qword_28047AC50, "N;");
  v34 = v29[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  swift_storeEnumTagMultiPayload();
  *(v24 + v29[7]) = MEMORY[0x277D84F90];
  sub_26C0FF20C(v39, v24 + v31, &qword_28047AC40, &unk_26C14D320);
  type metadata accessor for HandshakeState(0);
  swift_storeEnumTagMultiPayload();
  if (qword_28047A760 != -1)
  {
    swift_once();
  }

  v35 = sub_26C148A9C();
  __swift_project_value_buffer(v35, qword_28047AC70);
  v36 = sub_26C148A7C();
  v37 = sub_26C148FEC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_26C0B5000, v36, v37, "client state machine initialized", v38, 2u);
    MEMORY[0x26D69C3A0](v38, -1, -1);
  }
}

uint64_t _s8SwiftTLS21HandshakeStateMachineV13sessionTicket13configurationAC10Foundation4DataV_AC13ConfigurationVtAA8TLSErrorOYKcfC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v73 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v72 = &v64 - v15;
  v71 = type metadata accessor for SessionTicket();
  v70 = *(v71 - 8);
  v16 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for HandshakeStateMachine(0);
  v20 = *(*(v19 - 1) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v64 - v24;
  v26 = a3[3];
  v79 = a3[2];
  v80 = v26;
  v81 = *(a3 + 64);
  v27 = a3[1];
  v77 = *a3;
  v78 = v27;
  *a5 = xmmword_26C14A540;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  v76[3] = &type metadata for SwiftTLSDefaultClock;
  v76[4] = &off_287CCAB28;
  *v23 = xmmword_26C14A540;
  *(v23 + 2) = 0;
  v23[24] = 0;
  sub_26C0BBAA4(a1, a2);
  v28 = v82;
  sub_26C11F9F4(a1, a2, v74, v18);
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1(v76);
    sub_26C10B17C(&v77);
    sub_26C0BB9B0(a1, a2);
    v29 = v74[0];
    v30 = v74[1];
    v31 = v75;
    sub_26C0BB344(0, 0xF000000000000000);
    *a4 = v29;
    *(a4 + 8) = v30;
    *(a4 + 16) = v31;
    return sub_26C0BB344(0, 0xF000000000000000);
  }

  else
  {
    v65 = v25;
    v67 = a1;
    v68 = a2;
    v69 = a5;
    v82 = 0;
    sub_26C11D848(v76, &v23[v19[7]]);
    v74[0] = 0;
    MEMORY[0x26D69C3B0](v74, 8);
    v33 = v74[0];
    v74[0] = 0;
    MEMORY[0x26D69C3B0](v74, 8);
    v34 = v18;
    v35 = v74[0];
    v74[0] = 0;
    MEMORY[0x26D69C3B0](v74, 8);
    v36 = v74[0];
    v74[0] = 0;
    MEMORY[0x26D69C3B0](v74, 8);
    v37 = v74[0];
    v38 = &v23[v19[8]];
    *v38 = v33;
    *(v38 + 1) = v35;
    *(v38 + 2) = v36;
    *(v38 + 3) = v37;
    v39 = &v23[v19[9]];
    v40 = v80;
    *(v39 + 2) = v79;
    *(v39 + 3) = v40;
    v39[64] = v81;
    v41 = v78;
    *v39 = v77;
    *(v39 + 1) = v41;
    v42 = &v23[v19[6]];
    v66 = v34;
    v43 = v34;
    v44 = v72;
    sub_26C11F050(v43, v72, type metadata accessor for SessionTicket);
    v45 = *(v70 + 56);
    v46 = v71;
    v45(v44, 0, 1, v71);
    v47 = type metadata accessor for PAKEClientState(0);
    v48 = *(*(v47 - 8) + 56);
    v48(v73, 1, 1, v47);
    v49 = type metadata accessor for HandshakeState.IdleState(0);
    v70 = v49[5];
    v45(&v42[v70], 1, 1, v46);
    v50 = v49[8];
    v48(&v42[v50], 1, 1, v47);
    v51 = v80;
    *(v42 + 2) = v79;
    *(v42 + 3) = v51;
    v42[64] = v81;
    v52 = v78;
    *v42 = v77;
    *(v42 + 1) = v52;
    sub_26C10B120(&v77, v74);
    sub_26C0FF20C(v72, &v42[v70], &qword_28047AC50, "N;");
    v53 = v49[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
    swift_storeEnumTagMultiPayload();
    *&v42[v49[7]] = MEMORY[0x277D84F90];
    sub_26C0FF20C(v73, &v42[v50], &qword_28047AC40, &unk_26C14D320);
    type metadata accessor for HandshakeState(0);
    swift_storeEnumTagMultiPayload();
    if (qword_28047A760 != -1)
    {
      swift_once();
    }

    v54 = sub_26C148A9C();
    __swift_project_value_buffer(v54, qword_28047AC70);
    v55 = sub_26C148A7C();
    v56 = sub_26C148FEC();
    v57 = os_log_type_enabled(v55, v56);
    v58 = v69;
    v59 = v68;
    v60 = v67;
    v61 = v65;
    if (v57)
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_26C0B5000, v55, v56, "client state machine initialized with session ticket", v62, 2u);
      MEMORY[0x26D69C3A0](v62, -1, -1);
    }

    sub_26C0BB9B0(v60, v59);
    __swift_destroy_boxed_opaque_existential_1(v76);
    sub_26C11F1F0(v66, type metadata accessor for SessionTicket);
    sub_26C11D8DC(v23, v61, type metadata accessor for HandshakeStateMachine);
    v63 = v58[2];
    sub_26C0BB344(*v58, v58[1]);
    return sub_26C11D8DC(v61, v58, type metadata accessor for HandshakeStateMachine);
  }
}

uint64_t _s8SwiftTLS21HandshakeStateMachineV4epsk13configurationAcA4EPSKV_AC13ConfigurationVtAA8TLSErrorOYKcfC@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v92 = &v85 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v91 = &v85 - v13;
  v14 = type metadata accessor for ImportedPSK(0);
  v86 = *(v14 - 8);
  v15 = *(v86 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RawEPSK(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for GeneralEPSK(0);
  v88 = *(v22 - 8);
  v23 = *(v88 + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v85 - v27;
  v99 = *(a2 + 64);
  v29 = a2[3];
  v97 = a2[2];
  v98 = v29;
  v30 = a2[1];
  v95 = *a2;
  v96 = v30;
  *a4 = xmmword_26C14A540;
  *(a4 + 16) = 0;
  v89 = a4;
  *(a4 + 24) = 0;
  v31 = MEMORY[0x277D84F90];
  v100 = MEMORY[0x277D84F90];
  if (v99 == 1)
  {
    v87 = v4;
    v32 = *a1;
    v33 = a1[1];
    v34 = a1[2];
    v35 = type metadata accessor for EPSK(0);
    v90 = a1;
    v36 = *(v35 + 20);
    v37 = *(v18 + 20);
    v38 = sub_26C148BDC();
    (*(*(v38 - 8) + 16))(v21 + v37, v90 + v36, v38);
    *v21 = v32;
    v21[1] = v33;
    v21[2] = v34;
    sub_26C11D8DC(v21, v28, type metadata accessor for RawEPSK);
    type metadata accessor for PSK(0);
    swift_storeEnumTagMultiPayload();
    sub_26C0BBAA4(v32, v33);
    v39 = sub_26C0CDBC8(0, 1, 1, MEMORY[0x277D84F90]);
    v41 = v39[2];
    v40 = v39[3];
    if (v41 >= v40 >> 1)
    {
      v39 = sub_26C0CDBC8(v40 > 1, v41 + 1, 1, v39);
    }

    v39[2] = v41 + 1;
    sub_26C11D8DC(v28, v39 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v41, type metadata accessor for GeneralEPSK);
    v100 = v39;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A878, &qword_26C14A5A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C14A550;
    if (qword_28047A630 != -1)
    {
      swift_once();
    }

    v43 = qword_280480308;
    *(inited + 32) = word_280480300;
    *(inited + 40) = v43;
    v44 = sub_26C0C24AC(inited, &v93);
    if (v4)
    {
      sub_26C11F1F0(a1, type metadata accessor for EPSK);
      swift_setDeallocating();
      sub_26C10B17C(&v95);
      v45 = v94;
      v46 = v90;
      *v90 = v93;
      *(v46 + 16) = v45;
      return sub_26C0BB344(0, 0xF000000000000000);
    }

    v48 = v44;
    v90 = a1;
    v87 = 0;
    swift_setDeallocating();
    v49 = *(v48 + 16);
    if (v49)
    {
      *&v93 = v31;
      sub_26C0CEB2C(0, v49, 0);
      v50 = v93;
      v51 = (*(v86 + 80) + 32) & ~*(v86 + 80);
      v85 = v48;
      v52 = v48 + v51;
      v53 = *(v86 + 72);
      v54 = v88;
      do
      {
        sub_26C11F050(v52, v17, type metadata accessor for ImportedPSK);
        sub_26C11D8DC(v17, v26, type metadata accessor for ImportedPSK);
        type metadata accessor for PSK(0);
        swift_storeEnumTagMultiPayload();
        *&v93 = v50;
        v56 = *(v50 + 16);
        v55 = *(v50 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_26C0CEB2C(v55 > 1, v56 + 1, 1);
          v54 = v88;
          v50 = v93;
        }

        *(v50 + 16) = v56 + 1;
        sub_26C11D8DC(v26, v50 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v56, type metadata accessor for GeneralEPSK);
        v52 += v53;
        --v49;
      }

      while (v49);
    }

    else
    {

      v50 = MEMORY[0x277D84F90];
    }

    sub_26C0C6150(v50);
  }

  v57 = type metadata accessor for HandshakeStateMachine(0);
  v58 = v89;
  v59 = v89 + v57[7];
  *(v59 + 24) = &type metadata for SwiftTLSDefaultClock;
  *(v59 + 32) = &off_287CCAB28;
  *&v93 = 0;
  MEMORY[0x26D69C3B0](&v93, 8);
  v60 = v93;
  *&v93 = 0;
  MEMORY[0x26D69C3B0](&v93, 8);
  v61 = v93;
  *&v93 = 0;
  MEMORY[0x26D69C3B0](&v93, 8);
  v62 = v93;
  *&v93 = 0;
  MEMORY[0x26D69C3B0](&v93, 8);
  v63 = v93;
  v64 = (v58 + v57[8]);
  *v64 = v60;
  v64[1] = v61;
  v64[2] = v62;
  v64[3] = v63;
  v65 = v58 + v57[9];
  v66 = v98;
  *(v65 + 32) = v97;
  *(v65 + 48) = v66;
  *(v65 + 64) = v99;
  v67 = v96;
  *v65 = v95;
  *(v65 + 16) = v67;
  v68 = v58 + v57[6];
  v69 = type metadata accessor for SessionTicket();
  v70 = *(*(v69 - 8) + 56);
  v70(v91, 1, 1, v69);
  v89 = v100;
  v71 = type metadata accessor for PAKEClientState(0);
  v72 = *(*(v71 - 8) + 56);
  v72(v92, 1, 1, v71);
  v73 = type metadata accessor for HandshakeState.IdleState(0);
  v74 = v73[5];
  v70(v68 + v74, 1, 1, v69);
  v75 = v73[8];
  v72(v68 + v75, 1, 1, v71);
  v76 = v98;
  *(v68 + 32) = v97;
  *(v68 + 48) = v76;
  *(v68 + 64) = v99;
  v77 = v96;
  *v68 = v95;
  *(v68 + 16) = v77;
  sub_26C10B120(&v95, &v93);
  sub_26C0FF20C(v91, v68 + v74, &qword_28047AC50, "N;");
  v78 = v73[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  swift_storeEnumTagMultiPayload();
  *(v68 + v73[7]) = v89;
  sub_26C0FF20C(v92, v68 + v75, &qword_28047AC40, &unk_26C14D320);
  type metadata accessor for HandshakeState(0);
  swift_storeEnumTagMultiPayload();
  if (qword_28047A760 != -1)
  {
    swift_once();
  }

  v79 = sub_26C148A9C();
  __swift_project_value_buffer(v79, qword_28047AC70);
  v80 = sub_26C148A7C();
  v81 = sub_26C148FEC();
  v82 = os_log_type_enabled(v80, v81);
  v83 = v90;
  if (v82)
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_26C0B5000, v80, v81, "client state machine initialized with epsk", v84, 2u);
    MEMORY[0x26D69C3A0](v84, -1, -1);
  }

  return sub_26C11F1F0(v83, type metadata accessor for EPSK);
}

uint64_t _s8SwiftTLS21HandshakeStateMachineV4pake13configurationAcA23PAKEClientConfigurationV_AC0I0VtAA8TLSErrorOYKcfC@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = &v57 - v13;
  v14 = type metadata accessor for PAKEClientState(0);
  v59 = *(v14 - 8);
  v60 = v14;
  v15 = *(v59 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[5];
  v73 = a1[4];
  v74 = v18;
  v75[0] = a1[6];
  *(v75 + 9) = *(a1 + 105);
  v19 = a1[1];
  v69 = *a1;
  v70 = v19;
  v20 = a1[3];
  v71 = a1[2];
  v72 = v20;
  v21 = *a2;
  v22 = a2[1];
  v23 = a2[2];
  v24 = a2[3];
  v80 = *(a2 + 64);
  v78 = v23;
  v79 = v24;
  v76 = v21;
  v77 = v22;
  *a4 = xmmword_26C14A540;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v25 = type metadata accessor for HandshakeStateMachine(0);
  v26 = (a4 + v25[7]);
  v26[3] = &type metadata for SwiftTLSDefaultClock;
  v26[4] = &off_287CCAB28;
  *&v67[0] = 0;
  MEMORY[0x26D69C3B0](v67, 8);
  v27 = *&v67[0];
  *&v67[0] = 0;
  MEMORY[0x26D69C3B0](v67, 8);
  v28 = *&v67[0];
  *&v67[0] = 0;
  MEMORY[0x26D69C3B0](v67, 8);
  v29 = *&v67[0];
  *&v67[0] = 0;
  MEMORY[0x26D69C3B0](v67, 8);
  v30 = *&v67[0];
  v31 = (a4 + v25[8]);
  *v31 = v27;
  v31[1] = v28;
  v31[2] = v29;
  v31[3] = v30;
  v32 = a4 + v25[9];
  v33 = v79;
  *(v32 + 32) = v78;
  *(v32 + 48) = v33;
  *(v32 + 64) = v80;
  v34 = v77;
  *v32 = v76;
  *(v32 + 16) = v34;
  v67[4] = v73;
  v67[5] = v74;
  v68[0] = v75[0];
  *(v68 + 9) = *(v75 + 9);
  v67[0] = v69;
  v67[1] = v70;
  v67[2] = v71;
  v67[3] = v72;
  sub_26C10B120(&v76, v63);
  sub_26C0ECD38(&v69, v63);
  v35 = v81;
  _s8SwiftTLS15PAKEClientStateVyAcA0C13ConfigurationVAA8TLSErrorOYKcfC(v67, &v65, v17);
  if (v35)
  {
    sub_26C10B17C(&v76);
    sub_26C0E6E80(&v69);
    v36 = v66;
    *a3 = v65;
    *(a3 + 16) = v36;
    v37 = *(a4 + 16);
    sub_26C0BB344(*a4, *(a4 + 8));
    __swift_destroy_boxed_opaque_existential_1(v26);
    v38 = *(v32 + 48);
    v63[2] = *(v32 + 32);
    v63[3] = v38;
    v64 = *(v32 + 64);
    v39 = *(v32 + 16);
    v63[0] = *v32;
    v63[1] = v39;
    return sub_26C10B17C(v63);
  }

  else
  {
    v81 = 0;
    sub_26C0E6E80(&v69);
    v41 = a4 + v25[6];
    v42 = type metadata accessor for SessionTicket();
    v57 = *(*(v42 - 8) + 56);
    v57(v61, 1, 1, v42);
    v58 = v17;
    v43 = v17;
    v44 = v62;
    sub_26C11F050(v43, v62, type metadata accessor for PAKEClientState);
    v45 = v60;
    v46 = *(v59 + 56);
    v46(v44, 0, 1, v60);
    v47 = type metadata accessor for HandshakeState.IdleState(0);
    v48 = v47[5];
    v57(v41 + v48, 1, 1, v42);
    v49 = v47[8];
    v46(v41 + v49, 1, 1, v45);
    v50 = v79;
    *(v41 + 32) = v78;
    *(v41 + 48) = v50;
    *(v41 + 64) = v80;
    v51 = v77;
    *v41 = v76;
    *(v41 + 16) = v51;
    sub_26C0FF20C(v61, v41 + v48, &qword_28047AC50, "N;");
    v52 = v47[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
    swift_storeEnumTagMultiPayload();
    *(v41 + v47[7]) = MEMORY[0x277D84F90];
    sub_26C0FF20C(v62, v41 + v49, &qword_28047AC40, &unk_26C14D320);
    type metadata accessor for HandshakeState(0);
    swift_storeEnumTagMultiPayload();
    if (qword_28047A760 != -1)
    {
      swift_once();
    }

    v53 = sub_26C148A9C();
    __swift_project_value_buffer(v53, qword_28047AC70);
    v54 = sub_26C148A7C();
    v55 = sub_26C148FEC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_26C0B5000, v54, v55, "client state machine initialized with pake", v56, 2u);
      MEMORY[0x26D69C3A0](v56, -1, -1);
    }

    return sub_26C11F1F0(v58, type metadata accessor for PAKEClientState);
  }
}

uint64_t _s8SwiftTLS21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKF@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v370 = a1;
  v3 = v2;
  v340 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v336 = &v325 - v6;
  v7 = sub_26C148BDC();
  v337 = *(v7 - 8);
  v338 = v7;
  v8 = *(v337 + 64);
  MEMORY[0x28223BE20](v7);
  v335 = &v325 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A948, &qword_26C14A7F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v330 = &v325 - v12;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v13 = *(*(v342 - 8) + 64);
  MEMORY[0x28223BE20](v342);
  v341 = &v325 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC38, &unk_26C14D110);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v352 = &v325 - v17;
  v332 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v18 = *(*(v332 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v332);
  v331 = &v325 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v333 = &v325 - v21;
  v334 = type metadata accessor for PartialHandshakeResult(0);
  v22 = *(*(v334 - 8) + 64);
  MEMORY[0x28223BE20](v334);
  v24 = (&v325 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v366 = type metadata accessor for SessionTicket();
  v360 = *(v366 - 8);
  v25 = *(v360 + 64);
  v26 = MEMORY[0x28223BE20](v366);
  v327 = &v325 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v354 = &v325 - v28;
  v29 = sub_26C14896C();
  v347 = *(v29 - 8);
  v348 = v29;
  v30 = *(v347 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v326 = &v325 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v325 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v329 = &v325 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v349 = &v325 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v343 = &v325 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v325 - v44;
  MEMORY[0x28223BE20](v43);
  v351 = &v325 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v47 - 8);
  v328 = &v325 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v359 = &v325 - v51;
  v52 = type metadata accessor for PAKEClientState(0);
  v362 = *(v52 - 8);
  v363 = v52;
  v53 = *(v362 + 64);
  MEMORY[0x28223BE20](v52);
  v350 = &v325 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v376 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  *&v378 = *(v376 - 8);
  v55 = *(v378 + 64);
  v56 = MEMORY[0x28223BE20](v376);
  v346 = &v325 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v358 = &v325 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v345 = &v325 - v61;
  MEMORY[0x28223BE20](v60);
  v356 = &v325 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A960, "L6");
  v64 = *(*(v63 - 8) + 64);
  v65 = MEMORY[0x28223BE20](v63 - 8);
  v357 = &v325 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x28223BE20](v65);
  v372 = &v325 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v355 = &v325 - v70;
  MEMORY[0x28223BE20](v69);
  v72 = &v325 - v71;
  v368 = type metadata accessor for HandshakeState.IdleState(0);
  v73 = *(*(v368 - 8) + 64);
  v74 = MEMORY[0x28223BE20](v368);
  v364 = &v325 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v77 = &v325 - v76;
  v78 = type metadata accessor for HandshakeState(0);
  v79 = *(*(v78 - 8) + 64);
  v80 = MEMORY[0x28223BE20](v78);
  v344 = &v325 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x28223BE20](v80);
  v371 = (&v325 - v83);
  MEMORY[0x28223BE20](v82);
  v85 = &v325 - v84;
  v86 = type metadata accessor for HandshakeStateMachine(0);
  v87 = *(v86 + 24);
  v373 = v86;
  v374 = v87;
  sub_26C11F050(v3 + v87, v85, type metadata accessor for HandshakeState);
  v375 = v78;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v94 = 1701602409;
    v95 = 0x6548746E65696C63;
    if (EnumCaseMultiPayload != 1)
    {
      v95 = 0x6548726576726573;
    }

    if (EnumCaseMultiPayload)
    {
      v94 = v95;
    }

    *&v369 = v94;
    if (EnumCaseMultiPayload)
    {
      v93 = 0xEB000000006F6C6CLL;
    }

    else
    {
      v93 = 0xE400000000000000;
    }
  }

  else
  {
    v89 = 0x800000026C15A460;
    v90 = 0xD000000000000017;
    if (EnumCaseMultiPayload != 5)
    {
      v90 = 0x726F467964616572;
      v89 = 0xEC00000061746144;
    }

    v91 = 0x800000026C15A4A0;
    v92 = 0xD000000000000019;
    if (EnumCaseMultiPayload != 3)
    {
      v92 = 0xD000000000000011;
      v91 = 0x800000026C15A480;
    }

    if (EnumCaseMultiPayload > 4)
    {
      v92 = v90;
    }

    *&v369 = v92;
    if (EnumCaseMultiPayload <= 4)
    {
      v93 = v91;
    }

    else
    {
      v93 = v89;
    }
  }

  v361 = v34;
  sub_26C11F1F0(v85, type metadata accessor for HandshakeState);
  if (qword_28047A760 != -1)
  {
    swift_once();
  }

  v96 = sub_26C148A9C();
  v97 = __swift_project_value_buffer(v96, qword_28047AC70);

  v405 = v97;
  v98 = sub_26C148A7C();
  v99 = sub_26C148FFC();

  v100 = os_log_type_enabled(v98, v99);
  v377 = v72;
  *&v379 = v3;
  v353 = v45;
  v339 = v24;
  if (v100)
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    *&v393[0] = v102;
    *v101 = 136315138;
    *(v101 + 4) = sub_26C0E5DE8(v369, v93, v393);
    _os_log_impl(&dword_26C0B5000, v98, v99, "startHandshake in state %s", v101, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v102);
    MEMORY[0x26D69C3A0](v102, -1, -1);
    v103 = v101;
    v3 = v379;
    MEMORY[0x26D69C3A0](v103, -1, -1);
  }

  v104 = v3 + *(v373 + 9);
  v105 = *(v104 + 60);
  v367 = v104;
  v106 = *(v104 + 62);
  v107 = sub_26C148A7C();
  v108 = sub_26C148FEC();
  v109 = os_log_type_enabled(v107, v108);
  if ((v106 & 1) == 0 && v105 == 4588)
  {
    if (v109)
    {
      v110 = swift_slowAlloc();
      v111 = v77;
      v112 = swift_slowAlloc();
      *&v393[0] = v112;
      *v110 = 136315138;
      LOWORD(v386) = 4588;
      v113 = NamedGroup.description.getter();
      v115 = sub_26C0E5DE8(v113, v114, v393);

      *(v110 + 4) = v115;
      _os_log_impl(&dword_26C0B5000, v107, v108, "starting handshake with group %s (PQ-TLS)", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v112);
      v116 = v112;
      v77 = v111;
      MEMORY[0x26D69C3A0](v116, -1, -1);
      MEMORY[0x26D69C3A0](v110, -1, -1);
    }

    goto LABEL_29;
  }

  if (!v109)
  {
LABEL_29:

    v122 = v377;
    v121 = v378;
    goto LABEL_32;
  }

  v325 = v77;
  v117 = swift_slowAlloc();
  v118 = swift_slowAlloc();
  *&v393[0] = v118;
  *v117 = 136315138;
  if (v106)
  {
    v119 = 0xE400000000000000;
    v120 = 1701736302;
  }

  else
  {
    LOWORD(v386) = v105;
    v120 = NamedGroup.description.getter();
    v119 = v123;
  }

  v121 = v378;
  v124 = sub_26C0E5DE8(v120, v119, v393);

  *(v117 + 4) = v124;
  _os_log_impl(&dword_26C0B5000, v107, v108, "starting handshake with group %s", v117, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v118);
  MEMORY[0x26D69C3A0](v118, -1, -1);
  MEMORY[0x26D69C3A0](v117, -1, -1);

  v77 = v325;
  v122 = v377;
LABEL_32:
  v126 = v371;
  v125 = v372;
  sub_26C11F050(v379 + v374, v371, type metadata accessor for HandshakeState);
  v127 = swift_getEnumCaseMultiPayload();
  v128 = v376;
  if (v127)
  {
    sub_26C11F1F0(v126, type metadata accessor for HandshakeState);

    v129 = sub_26C148A7C();
    v130 = sub_26C14900C();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *&v393[0] = v132;
      *v131 = 136315138;
      v133 = sub_26C0E5DE8(v369, v93, v393);

      *(v131 + 4) = v133;
      _os_log_impl(&dword_26C0B5000, v129, v130, "invalid state for startHandshake: %s", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v132);
      MEMORY[0x26D69C3A0](v132, -1, -1);
      MEMORY[0x26D69C3A0](v131, -1, -1);
    }

    else
    {
    }

    v137 = v370;
    *v370 = xmmword_26C14A570;
    *(v137 + 16) = 2;
    v393[0] = xmmword_26C14A570;
    LOBYTE(v393[1]) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  sub_26C11D8DC(v126, v77, type metadata accessor for HandshakeState.IdleState);
  v134 = (v121 + 56);
  v371 = *(v121 + 56);
  (v371)(v122, 1, 1, v128);
  if ((*(v367 + 62) & 1) == 0)
  {
    v135 = *(v367 + 60);
    switch(v135)
    {
      case 4588:
        v136 = v355;
        sub_26C0DDB04(v355);
        break;
      case 29:
        v136 = v355;
        sub_26C148AFC();
        break;
      case 24:
        v136 = v355;
        sub_26C148E6C();
        break;
      default:
        v249 = sub_26C148A7C();
        v250 = sub_26C14900C();
        if (os_log_type_enabled(v249, v250))
        {
          v251 = swift_slowAlloc();
          *v251 = 33554688;
          *(v251 + 4) = v135;
          _os_log_impl(&dword_26C0B5000, v249, v250, "unknown fixedGroup: %hu", v251, 6u);
          MEMORY[0x26D69C3A0](v251, -1, -1);
        }

        v252 = v370;
        *v370 = xmmword_26C14A570;
        *(v252 + 16) = 2;
        v393[0] = xmmword_26C14A570;
        LOBYTE(v393[1]) = 2;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        v223 = v122;
        goto LABEL_125;
    }

    sub_26C0CF5C4(v122, &qword_28047A960, "L6");
    swift_storeEnumTagMultiPayload();
    (v371)(v136, 0, 1, v128);
    sub_26C0CF55C(v136, v122, &qword_28047A960, "L6");
    v121 = v378;
    v125 = v372;
  }

  v372 = v134;
  sub_26C0CF314(v122, v125, &qword_28047A960, "L6");
  v139 = *(v121 + 48);
  *&v378 = v121 + 48;
  if (v139(v125, 1, v128) == 1)
  {
    sub_26C0CF5C4(v125, &qword_28047A960, "L6");
    v140 = MEMORY[0x277D84F90];
  }

  else
  {
    v141 = v356;
    sub_26C11D8DC(v125, v356, type metadata accessor for GeneratedEphemeralPrivateKey);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8D8, &qword_26C14A780);
    v142 = swift_allocObject();
    *(v142 + 16) = xmmword_26C14A550;
    v143 = v141;
    v144 = v345;
    sub_26C11F050(v143, v345, type metadata accessor for GeneratedEphemeralPrivateKey);
    v145 = swift_getEnumCaseMultiPayload();
    sub_26C11F1F0(v144, type metadata accessor for GeneratedEphemeralPrivateKey);
    *(v142 + 32) = 0x11EC0018001DuLL >> (16 * v145);
    v140 = sub_26C0CD87C(0, 1, 1, MEMORY[0x277D84F90]);
    v147 = *(v140 + 2);
    v146 = *(v140 + 3);
    if (v147 >= v146 >> 1)
    {
      v140 = sub_26C0CD87C((v146 > 1), v147 + 1, 1, v140);
    }

    sub_26C11F1F0(v356, type metadata accessor for GeneratedEphemeralPrivateKey);
    *(v140 + 2) = v147 + 1;
    v148 = &v140[88 * v147];
    *(v148 + 4) = v142;
    v148[112] = 16;
    v122 = v377;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v140 = sub_26C0CD87C(0, *(v140 + 2) + 1, 1, v140);
  }

  v150 = *(v140 + 2);
  v149 = *(v140 + 3);
  if (v150 >= v149 >> 1)
  {
    v140 = sub_26C0CD87C((v149 > 1), v150 + 1, 1, v140);
  }

  v396 = 0;
  *(v140 + 2) = v150 + 1;
  v151 = &v140[88 * v150];
  *(v151 + 4) = &unk_287CC9B10;
  v151[40] = v396;
  v151[112] = 32;
  v397 = v140;
  v152 = v357;
  sub_26C0CF314(v122, v357, &qword_28047A960, "L6");
  if (v139(v152, 1, v376) == 1)
  {
    sub_26C0CF5C4(v152, &qword_28047A960, "L6");
    v153 = v379;
    v154 = v368;
  }

  else
  {
    v155 = v358;
    sub_26C11D8DC(v152, v358, type metadata accessor for GeneratedEphemeralPrivateKey);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8E8, &qword_26C14A790);
    v156 = swift_allocObject();
    *(v156 + 16) = xmmword_26C14A550;
    v157 = v346;
    sub_26C11F050(v155, v346, type metadata accessor for GeneratedEphemeralPrivateKey);
    v158 = 0x11EC0018001DuLL >> (16 * swift_getEnumCaseMultiPayload());
    sub_26C11F1F0(v157, type metadata accessor for GeneratedEphemeralPrivateKey);
    v159 = sub_26C0DB5E8();
    v161 = 0;
    v162 = v160 >> 62;
    v154 = v368;
    if ((v160 >> 62) > 1)
    {
      if (v162 == 2)
      {
        v161 = *(v159 + 16);
      }
    }

    else if (v162)
    {
      v161 = v159;
    }

    *(v156 + 32) = v158;
    *(v156 + 40) = v159;
    *(v156 + 48) = v160;
    *(v156 + 56) = v161;
    v164 = *(v140 + 2);
    v163 = *(v140 + 3);
    v153 = v379;
    if (v164 >= v163 >> 1)
    {
      v140 = sub_26C0CD87C((v163 > 1), v164 + 1, 1, v140);
    }

    sub_26C11F1F0(v358, type metadata accessor for GeneratedEphemeralPrivateKey);
    *(v140 + 2) = v164 + 1;
    v165 = &v140[88 * v164];
    *(v165 + 4) = v156;
    *(v165 + 5) = 0;
    *(v165 + 6) = 0;
    *(v165 + 7) = 0;
    v165[112] = 64;
    v397 = v140;
  }

  sub_26C0C6450(&unk_287CC9BD8);
  v166 = *(v77 + 1);
  if (v166)
  {
    v167 = *v77;
    v168 = *(v77 + 1);

    v169 = sub_26C10BCF8(v167, v166);
    v170 = v169;
    v172 = v171;
    v173 = 0;
    v174 = v171 >> 62;
    if ((v171 >> 62) > 1)
    {
      if (v174 == 2)
      {
        v173 = *(v169 + 16);
      }
    }

    else if (v174)
    {
      v173 = v169;
    }

    v175 = v397;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v175 = sub_26C0CD87C(0, *(v175 + 2) + 1, 1, v175);
    }

    v177 = *(v175 + 2);
    v176 = *(v175 + 3);
    if (v177 >= v176 >> 1)
    {
      v175 = sub_26C0CD87C((v176 > 1), v177 + 1, 1, v175);
    }

    *(v175 + 2) = v177 + 1;
    v178 = &v175[88 * v177];
    *(v178 + 4) = v170;
    *(v178 + 5) = v172;
    *(v178 + 6) = v173;
    v178[112] = 0;
    v397 = v175;
    v153 = v379;
    v154 = v368;
  }

  v179 = *(v77 + 2);
  v180 = *(v77 + 4);
  if (v180 >> 60 != 15)
  {
    v378 = *(v77 + 2);
    v181 = *(v77 + 3);
    v182 = v397;
    sub_26C0BBAA4(v181, v180);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v182 = sub_26C0CD87C(0, *(v182 + 2) + 1, 1, v182);
    }

    v184 = *(v182 + 2);
    v183 = *(v182 + 3);
    v185 = v378;
    if (v184 >= v183 >> 1)
    {
      v324 = sub_26C0CD87C((v183 > 1), v184 + 1, 1, v182);
      v185 = v378;
      v182 = v324;
    }

    *(v182 + 2) = v184 + 1;
    v186 = &v182[88 * v184];
    *(v186 + 4) = v181;
    *(v186 + 40) = v185;
    v186[112] = 0x80;
    v397 = v182;
  }

  v187 = *(v77 + 6);
  if (v187)
  {
    v188 = v397;
    v189 = *(v77 + 6);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v188 = sub_26C0CD87C(0, *(v188 + 2) + 1, 1, v188);
    }

    v191 = *(v188 + 2);
    v190 = *(v188 + 3);
    if (v191 >= v190 >> 1)
    {
      v188 = sub_26C0CD87C((v190 > 1), v191 + 1, 1, v188);
    }

    LOBYTE(v393[0]) = 0;
    *(v188 + 2) = v191 + 1;
    v192 = &v188[88 * v191];
    *(v192 + 4) = v187;
    *(v192 + 5) = 0;
    v192[48] = v393[0];
    v192[112] = 48;
    v397 = v188;
  }

  if ((v77[58] & 1) == 0)
  {
    v193 = *(v77 + 28);
    v194 = v397;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v194 = sub_26C0CD87C(0, *(v194 + 2) + 1, 1, v194);
    }

    v196 = *(v194 + 2);
    v195 = *(v194 + 3);
    if (v196 >= v195 >> 1)
    {
      v194 = sub_26C0CD87C((v195 > 1), v196 + 1, 1, v194);
    }

    LOBYTE(v393[0]) = 0;
    *(v194 + 2) = v196 + 1;
    v197 = &v194[88 * v196];
    *(v197 + 16) = v193;
    v197[34] = v393[0];
    v197[112] = -80;
    v397 = v194;
  }

  v198 = v359;
  sub_26C0CF314(&v77[*(v154 + 32)], v359, &qword_28047AC40, &unk_26C14D320);
  if ((*(v362 + 48))(v198, 1, v363) == 1)
  {
    v199 = v153;
    v200 = v154;
    sub_26C0CF5C4(v198, &qword_28047AC40, &unk_26C14D320);
    v201 = v397;
  }

  else
  {
    v202 = v198;
    v203 = v350;
    sub_26C11D8DC(v202, v350, type metadata accessor for PAKEClientState);
    v204 = v365;
    sub_26C0E9D0C(&v386, v393);
    if (v204)
    {
      sub_26C11F1F0(v203, type metadata accessor for PAKEClientState);
      sub_26C0CF5C4(v122, &qword_28047A960, "L6");

      v205 = v387;
      v206 = v370;
      *v370 = v386;
      *(v206 + 16) = v205;
LABEL_126:
      v253 = v77;
      return sub_26C11F1F0(v253, type metadata accessor for HandshakeState.IdleState);
    }

    v365 = 0;
    v369 = v393[1];
    v378 = v393[0];
    v207 = v393[2];
    v208 = *&v393[3];
    v201 = v397;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v201 = sub_26C0CD87C(0, *(v201 + 2) + 1, 1, v201);
    }

    v210 = *(v201 + 2);
    v209 = *(v201 + 3);
    if (v210 >= v209 >> 1)
    {
      v201 = sub_26C0CD87C((v209 > 1), v210 + 1, 1, v201);
    }

    LOBYTE(v386) = 0;
    sub_26C11F1F0(v350, type metadata accessor for PAKEClientState);
    *(v201 + 2) = v210 + 1;
    v211 = &v201[88 * v210];
    v212 = v369;
    *(v211 + 2) = v378;
    *(v211 + 3) = v212;
    *(v211 + 4) = v207;
    *(v211 + 10) = v208;
    v211[112] = -64;
    v397 = v201;
    v199 = v379;
    v200 = v368;
  }

  v213 = (v199 + *(v373 + 8));
  v214 = v213[1];
  *(v393 + 8) = *v213;
  LOWORD(v393[0]) = 771;
  *(&v393[1] + 8) = v214;
  *(&v393[2] + 8) = 0u;
  *(&v393[3] + 8) = 0u;
  *(&v393[4] + 1) = 0;
  *&v394 = &unk_287CC9B88;
  *(&v394 + 1) = &unk_287CC9BB0;
  *&v369 = v201;
  v395 = v201;
  v215 = *(v200 + 20);
  v216 = v351;
  sub_26C0CF314(&v77[v215], v351, &qword_28047AC50, "N;");
  v217 = *(v360 + 48);
  *&v378 = v360 + 48;
  v373 = v217;
  v218 = (v217)(v216, 1, v366);
  sub_26C0CF5C4(v216, &qword_28047AC50, "N;");
  if (v218 != 1 && *(*&v77[*(v200 + 28)] + 16))
  {
    v390 = v393[4];
    v391 = v394;
    v392 = v395;
    v386 = v393[0];
    v387 = v393[1];
    v388 = v393[2];
    v389 = v393[3];
    sub_26C0FED20(&v386);
    v219 = sub_26C148A7C();
    v220 = sub_26C14900C();
    if (os_log_type_enabled(v219, v220))
    {
      v221 = swift_slowAlloc();
      *v221 = 0;
      _os_log_impl(&dword_26C0B5000, v219, v220, "both session resumption and imported PSKs are in use, only one is allowed", v221, 2u);
      MEMORY[0x26D69C3A0](v221, -1, -1);
    }

    v222 = v370;
    *v370 = xmmword_26C14A570;
    *(v222 + 16) = 2;
    v381 = xmmword_26C14A570;
    LOBYTE(v382) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v223 = v377;
LABEL_125:
    sub_26C0CF5C4(v223, &qword_28047A960, "L6");
    goto LABEL_126;
  }

  sub_26C14895C();
  v224 = &v77[v215];
  v225 = v353;
  sub_26C0CF314(v224, v353, &qword_28047AC50, "N;");
  v226 = v343;
  sub_26C0CF314(v225, v343, &qword_28047AC50, "N;");
  v227 = v366;
  if (v373(v226, 1, v366) == 1)
  {
    sub_26C0CF5C4(v226, &qword_28047AC50, "N;");
    v228 = v364;
    v229 = v349;
    v230 = v369;
    v231 = v200;
    goto LABEL_140;
  }

  v232 = v354;
  sub_26C11D8DC(v226, v354, type metadata accessor for SessionTicket);
  v385 = v77[64];
  v233 = *(v77 + 3);
  v383 = *(v77 + 2);
  v384 = v233;
  v234 = *(v77 + 1);
  v381 = *v77;
  v382 = v234;
  v235 = word_287CC9BA8;
  if (!qword_287CC9B98)
  {
    v235 = 0;
  }

  v229 = v349;
  v230 = v369;
  if (!qword_287CC9B98)
  {
    v231 = v200;
    goto LABEL_137;
  }

  v231 = v200;
  if (*(v232 + v227[11]) != v235)
  {
    goto LABEL_137;
  }

  v236 = *(v369 + 16);
  if (!v236)
  {
    v254 = v225;
    sub_26C10B120(&v381, &v386);
    v240 = v354;
LABEL_130:
    v255 = v240;
    v256 = v240 + v227[14];
    if (sub_26C0D0F0C(v382))
    {
      v257 = *(v255 + v227[5]);
      v258 = v326;
      sub_26C14892C();
      if (sub_26C14893C())
      {
        sub_26C11F2F0(&qword_28047AC88, MEMORY[0x277CC9578]);
        v259 = v348;
        v260 = sub_26C148F2C();
        (*(v347 + 8))(v326, v259);
        sub_26C10B17C(&v381);
        if ((v260 & 1) == 0)
        {
          sub_26C11F1F0(v255, type metadata accessor for SessionTicket);
          v227 = v366;
          v228 = v364;
          v225 = v254;
          goto LABEL_140;
        }

LABEL_136:
        v225 = v254;
        goto LABEL_137;
      }

      (*(v347 + 8))(v258, v348);
    }

    sub_26C10B17C(&v381);
    goto LABEL_136;
  }

  v237 = v369 + 32;
  v238 = sub_26C10B120(&v381, &v386);
  v239 = v236 - 1;
  v240 = v354;
  while (1)
  {
    v241 = *(v237 + 16);
    v386 = *v237;
    v387 = v241;
    v242 = *(v237 + 32);
    v243 = *(v237 + 48);
    v244 = *(v237 + 64);
    LOBYTE(v391) = *(v237 + 80);
    v389 = v243;
    v390 = v244;
    v388 = v242;
    if ((v391 & 0xF0) == 0x30 && (v387 & 1) == 0)
    {
      v245 = (v240 + v227[13]);
      v246 = v245[1];
      if (v246)
      {
        break;
      }
    }

LABEL_120:
    if (!v239)
    {
      v254 = v353;
      v229 = v349;
      goto LABEL_130;
    }

    --v239;
    v237 += 88;
  }

  v247 = v386;
  v380[0] = *v245;
  v380[1] = v246;
  MEMORY[0x28223BE20](v238);
  *(&v325 - 2) = v380;
  sub_26C0FF14C();
  v248 = v365;
  LOBYTE(v247) = sub_26C10BC4C(sub_26C11E874, (&v325 - 4), v247);
  v365 = v248;
  v238 = sub_26C0BE468(&v386);
  if (v247)
  {
    v227 = v366;
    v231 = v368;
    v240 = v354;
    goto LABEL_120;
  }

  sub_26C10B17C(&v381);
  v225 = v353;
  v231 = v368;
  v229 = v349;
LABEL_137:
  v261 = sub_26C148A7C();
  v262 = sub_26C148FFC();
  if (os_log_type_enabled(v261, v262))
  {
    v263 = swift_slowAlloc();
    *v263 = 0;
    _os_log_impl(&dword_26C0B5000, v261, v262, "unable to resume session, incompatible with current handshake", v263, 2u);
    v264 = v263;
    v229 = v349;
    MEMORY[0x26D69C3A0](v264, -1, -1);
  }

  sub_26C11F1F0(v354, type metadata accessor for SessionTicket);
  sub_26C0CF5C4(v225, &qword_28047AC50, "N;");
  v227 = v366;
  (*(v360 + 56))(v225, 1, 1, v366);
  v228 = v364;
LABEL_140:
  if (*(v367 + 63) == 1)
  {
    sub_26C0CF314(v225, v229, &qword_28047AC50, "N;");
    if (v373(v229, 1, v227) == 1)
    {
      sub_26C0CF5C4(v229, &qword_28047AC50, "N;");
      goto LABEL_152;
    }

    v265 = v327;
    sub_26C11D8DC(v229, v327, type metadata accessor for SessionTicket);
    if (*(v265 + v227[10]))
    {
      v266 = sub_26C148A7C();
      v267 = sub_26C148FFC();
      if (os_log_type_enabled(v266, v267))
      {
        v268 = swift_slowAlloc();
        *v268 = 0;
        _os_log_impl(&dword_26C0B5000, v266, v267, "client requesting early data with session resumption", v268, 2u);
        MEMORY[0x26D69C3A0](v268, -1, -1);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v230 = sub_26C0CD87C(0, *(v230 + 2) + 1, 1, v230);
      }

      v270 = *(v230 + 2);
      v269 = *(v230 + 3);
      v271 = v270 + 1;
      if (v270 >= v269 >> 1)
      {
        v230 = sub_26C0CD87C((v269 > 1), v270 + 1, 1, v230);
      }

      LOBYTE(v386) = 1;
      sub_26C11F1F0(v265, type metadata accessor for SessionTicket);
LABEL_160:
      *(v230 + 2) = v271;
      v276 = &v230[88 * v270];
      *(v276 + 8) = 0;
      v276[36] = v386;
      v276[112] = 80;
      v395 = v230;
      v227 = v366;
      v228 = v364;
    }

    else
    {
      sub_26C11F1F0(v265, type metadata accessor for SessionTicket);
LABEL_152:
      if (*(*&v77[*(v231 + 28)] + 16))
      {
        v272 = sub_26C148A7C();
        v273 = sub_26C148FFC();
        if (os_log_type_enabled(v272, v273))
        {
          v274 = swift_slowAlloc();
          *v274 = 0;
          _os_log_impl(&dword_26C0B5000, v272, v273, "client requesting early data with external psks", v274, 2u);
          MEMORY[0x26D69C3A0](v274, -1, -1);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v230 = sub_26C0CD87C(0, *(v230 + 2) + 1, 1, v230);
        }

        v270 = *(v230 + 2);
        v275 = *(v230 + 3);
        v271 = v270 + 1;
        if (v270 >= v275 >> 1)
        {
          v230 = sub_26C0CD87C((v275 > 1), v270 + 1, 1, v230);
        }

        LOBYTE(v386) = 1;
        goto LABEL_160;
      }
    }
  }

  v277 = v225;
  v278 = *&v77[*(v231 + 28)];
  v279 = v344;
  sub_26C11F050(v379 + v374, v344, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload())
  {
    result = sub_26C11F1F0(v279, type metadata accessor for HandshakeState);
    __break(1u);
    goto LABEL_173;
  }

  sub_26C11D8DC(v279, v228, type metadata accessor for HandshakeState.IdleState);
  v280 = v228;
  v281 = *(v228 + 64);
  v282 = v352;
  sub_26C0CF314(v280 + *(v231 + 24), v352, &qword_28047AC38, &unk_26C14D110);
  v283 = v341;
  sub_26C0CF314(v282, v341, &qword_28047A870, &qword_26C14A5A0);
  if (swift_getEnumCaseMultiPayload() >= 4)
  {
    v325 = v77;
    v285 = v330;
    *&v378 = v278;
    sub_26C11B1BC(v330, &v386, v393, v277, v278, v281, v361);
    *&v369 = *(&v386 + 1);
    v370 = v386;
    v367 = v387;
    sub_26C0CF5C4(v282, &qword_28047A870, &qword_26C14A5A0);
    sub_26C0CF55C(v285, v282, &qword_28047A948, &qword_26C14A7F0);
    swift_storeEnumTagMultiPayload();
    v286 = v364;
    v287 = *(v364 + 48);
    v383 = *(v364 + 32);
    v384 = v287;
    v385 = *(v364 + 64);
    v288 = *(v364 + 16);
    v381 = *v364;
    v382 = v288;
    v402 = v393[4];
    v403 = v394;
    v404 = v395;
    v398 = v393[0];
    v399 = v393[1];
    v400 = v393[2];
    v401 = v393[3];
    v373 = sub_26C120B44();
    sub_26C0CF314(v377, v355, &qword_28047A960, "L6");
    v289 = v332;
    v290 = v227;
    v291 = v331;
    sub_26C0CF314(v282, &v331[*(v332 + 36)], &qword_28047AC38, &unk_26C14D110);
    v292 = v329;
    sub_26C0CF314(v277, v329, &qword_28047AC50, "N;");
    v293 = v328;
    sub_26C0CF314(v286 + *(v368 + 32), v328, &qword_28047AC40, &unk_26C14D320);
    v294 = v289[8];
    (v371)(v291 + v294, 1, 1, v376);
    v295 = v289[10];
    (*(v360 + 56))(v291 + v295, 1, 1, v290);
    v296 = v289[12];
    (*(v362 + 56))(v291 + v296, 1, 1, v363);
    v297 = v384;
    *(v291 + 32) = v383;
    *(v291 + 48) = v297;
    *(v291 + 64) = v385;
    v298 = v382;
    *v291 = v381;
    *(v291 + 16) = v298;
    *(v291 + 72) = 0u;
    *(v291 + 88) = 0u;
    *(v291 + 104) = 0;
    *(v291 + 112) = &unk_287CC9B88;
    *(v291 + 120) = v373;
    sub_26C10B120(&v381, &v386);

    sub_26C0FF20C(v355, v291 + v294, &qword_28047A960, "L6");
    sub_26C0FF20C(v292, v291 + v295, &qword_28047AC50, "N;");
    *(v291 + v289[11]) = v378;

    sub_26C0FF20C(v293, v291 + v296, &qword_28047AC40, &unk_26C14D320);
    sub_26C0CF5C4(v352, &qword_28047AC38, &unk_26C14D110);
    v299 = v333;
    sub_26C11D8DC(v291, v333, type metadata accessor for HandshakeState.ClientHelloState);
    v300 = v299 + v289[9];
    v301 = v336;
    sub_26C10C2B8(v336);
    v303 = v337;
    v302 = v338;
    result = (*(v337 + 48))(v301, 1, v338);
    if (result != 1)
    {
      sub_26C11F1F0(v364, type metadata accessor for HandshakeState.IdleState);
      v304 = v379;
      v305 = v374;
      sub_26C11F1F0(v379 + v374, type metadata accessor for HandshakeState);
      v306 = *(v303 + 32);
      v307 = v335;
      v306(v335, v301, v302);
      sub_26C11D8DC(v299, v304 + v305, type metadata accessor for HandshakeState.ClientHelloState);
      swift_storeEnumTagMultiPayload();
      v308 = v334;
      v309 = *(v334 + 20);
      v310 = v339;
      v306(v339 + v309, v307, v302);
      v311 = type metadata accessor for EncryptionLevel(0);
      swift_storeEnumTagMultiPayload();
      v312 = *(*(v311 - 8) + 56);
      v312(v310 + v309, 0, 1, v311);
      v312(v310 + *(v308 + 24), 1, 1, v311);
      v313 = v369;
      *v310 = v370;
      v310[1] = v313;
      v310[2] = v367;
      *(v310 + *(v308 + 28)) = xmmword_26C14A540;
      v390 = v393[4];
      v391 = v394;
      v392 = v395;
      v388 = v393[2];
      v389 = v393[3];
      v386 = v393[0];
      v387 = v393[1];
      sub_26C0FED20(&v386);
      v314 = sub_26C148A7C();
      v315 = sub_26C14901C();
      if (os_log_type_enabled(v314, v315))
      {
        v316 = swift_slowAlloc();
        *v316 = 0;
        _os_log_impl(&dword_26C0B5000, v314, v315, "client beginning TLS handshake", v316, 2u);
        MEMORY[0x26D69C3A0](v316, -1, -1);
      }

      v317 = sub_26C148A7C();
      v318 = sub_26C148FEC();
      v319 = os_log_type_enabled(v317, v318);
      v320 = v325;
      v321 = v377;
      v322 = v353;
      if (v319)
      {
        v323 = swift_slowAlloc();
        *v323 = 0;
        _os_log_impl(&dword_26C0B5000, v317, v318, "client sent client hello", v323, 2u);
        MEMORY[0x26D69C3A0](v323, -1, -1);
      }

      sub_26C0CF5C4(v322, &qword_28047AC50, "N;");
      (*(v347 + 8))(v361, v348);
      sub_26C0CF5C4(v321, &qword_28047A960, "L6");
      sub_26C11D8DC(v310, v340, type metadata accessor for PartialHandshakeResult);
      return sub_26C11F1F0(v320, type metadata accessor for HandshakeState.IdleState);
    }

LABEL_173:
    __break(1u);
    return result;
  }

  sub_26C0CF5C4(v283, &qword_28047A870, &qword_26C14A5A0);
  v379 = xmmword_26C14A570;
  v386 = xmmword_26C14A570;
  LOBYTE(v387) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  sub_26C11F1F0(v364, type metadata accessor for HandshakeState.IdleState);
  sub_26C0CF5C4(v277, &qword_28047AC50, "N;");
  (*(v347 + 8))(v361, v348);
  sub_26C0CF5C4(v377, &qword_28047A960, "L6");
  sub_26C0CF5C4(v282, &qword_28047AC38, &unk_26C14D110);
  v284 = v370;
  *v370 = v379;
  *(v284 + 16) = 2;
  v390 = v393[4];
  v391 = v394;
  v392 = v395;
  v386 = v393[0];
  v387 = v393[1];
  v388 = v393[2];
  v389 = v393[3];
  sub_26C0FED20(&v386);
  v253 = v77;
  return sub_26C11F1F0(v253, type metadata accessor for HandshakeState.IdleState);
}

uint64_t *HandshakeStateMachine.receivedNetworkData(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v3);
    v7 = v2 >> 32;
    if (!v5)
    {
      v7 = v6;
    }
  }

  v8 = v7 - v4;
  if (__OFSUB__(v7, v4))
  {
    __break(1u);
  }

  else if (qword_28047A760 == -1)
  {
    goto LABEL_10;
  }

  swift_once();
LABEL_10:
  v9 = sub_26C148A9C();
  __swift_project_value_buffer(v9, qword_28047AC70);
  v10 = sub_26C148A7C();
  v11 = sub_26C148FFC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_26C0B5000, v10, v11, "received network data (%ld bytes)", v12, 0xCu);
    MEMORY[0x26D69C3A0](v12, -1, -1);
  }

  return sub_26C0E0B74(a1);
}

uint64_t _s8SwiftTLS21HandshakeStateMachineV07processC0AA07PartialC6ResultVSgyAA8TLSErrorOYKF@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a1;
  v4 = v3;
  v5 = v2;
  v106 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v97 - v8;
  v10 = type metadata accessor for PartialHandshakeResult(0);
  v11 = *(v10 - 8);
  v107 = v10;
  v108 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v99 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v98 = &v97 - v16;
  MEMORY[0x28223BE20](v15);
  v100 = &v97 - v17;
  v111 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v18 = *(*(v111 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v111);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v112 = &v97 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC90, &qword_26C14D330);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v104 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v103 = &v97 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v101 = &v97 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v105 = &v97 - v32;
  MEMORY[0x28223BE20](v31);
  v102 = &v97 - v33;
  v34 = type metadata accessor for HandshakeState(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v117 = &v97 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(type metadata accessor for HandshakeStateMachine(0) + 24);
  *&v113 = v21;
  v110 = v9;
  while (1)
  {
    if (qword_28047A760 != -1)
    {
      swift_once();
    }

    v39 = sub_26C148A9C();
    v114 = __swift_project_value_buffer(v39, qword_28047AC70);
    v40 = sub_26C148A7C();
    v41 = sub_26C148FFC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26C0B5000, v40, v41, "client attempting process step", v42, 2u);
      MEMORY[0x26D69C3A0](v42, -1, -1);
    }

    sub_26C11F050(v5 + v37, v117, type metadata accessor for HandshakeState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 3)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v44 = v4;
        v45 = sub_26C115FB4(&v115);
        if (v4)
        {
          goto LABEL_38;
        }

        goto LABEL_2;
      }

      if (!EnumCaseMultiPayload)
      {
        v66 = sub_26C148A7C();
        v67 = sub_26C14900C();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&dword_26C0B5000, v66, v67, "processHandshake called in idle state", v68, 2u);
          MEMORY[0x26D69C3A0](v68, -1, -1);
        }

        v113 = xmmword_26C14D300;
        v115 = xmmword_26C14D300;
        v69 = 2;
        v116 = 2;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        v70 = type metadata accessor for HandshakeState;
        goto LABEL_43;
      }

      v73 = v102;
      sub_26C115438(&v115, v102);
      if (!v4)
      {
        v59 = v108;
        goto LABEL_50;
      }

LABEL_38:
      v113 = v115;
      v69 = v116;
      v74 = type metadata accessor for HandshakeState;
LABEL_39:
      v70 = v74;
      goto LABEL_43;
    }

    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v44 = v4;
        v45 = sub_26C116E54(&v115);
        if (v4)
        {
          goto LABEL_38;
        }

LABEL_2:
        v4 = v44;
        v38 = type metadata accessor for HandshakeState;
        if (v45)
        {
          goto LABEL_22;
        }

        goto LABEL_3;
      }

      if (EnumCaseMultiPayload == 5)
      {
        v60 = v103;
        sub_26C1163E4(&v115, v103);
        v59 = v108;
        if (!v4)
        {
          v58 = v107;
          if ((*(v108 + 48))(v60, 1, v107) != 1)
          {
            sub_26C11D8DC(v60, v99, type metadata accessor for PartialHandshakeResult);
            v61 = sub_26C148A7C();
            v62 = sub_26C14901C();
            v63 = os_log_type_enabled(v61, v62);
            v64 = v106;
            if (v63)
            {
              v65 = swift_slowAlloc();
              *v65 = 0;
              _os_log_impl(&dword_26C0B5000, v61, v62, "client completed TLS handshake", v65, 2u);
              MEMORY[0x26D69C3A0](v65, -1, -1);
            }

            sub_26C11D8DC(v99, v64, type metadata accessor for PartialHandshakeResult);
            v57 = v64;
            goto LABEL_53;
          }

LABEL_51:
          v55 = type metadata accessor for HandshakeState;
LABEL_60:
          v56 = 1;
          v57 = v106;
          goto LABEL_65;
        }

        goto LABEL_38;
      }

      v73 = v104;
      sub_26C1172C8(&v115, v104);
      v59 = v108;
      if (!v4)
      {
LABEL_50:
        v58 = v107;
        if ((*(v59 + 48))(v73, 1, v107) != 1)
        {
          v86 = v106;
          sub_26C11D8DC(v73, v106, type metadata accessor for PartialHandshakeResult);
          v57 = v86;
LABEL_53:
          v56 = 0;
          v55 = type metadata accessor for HandshakeState;
          goto LABEL_65;
        }

        goto LABEL_51;
      }

      goto LABEL_38;
    }

    v46 = v112;
    sub_26C11F050(v117, v112, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v47 = v111;
    if ((*(v46 + *(v111 + 40)) & 1) != 0 || *(v46 + *(v111 + 44)) == 1)
    {
      v71 = v105;
      sub_26C1163E4(&v115, v105);
      if (v4)
      {
        v72 = v112;
        goto LABEL_42;
      }

      v58 = v107;
      v59 = v108;
      if ((*(v108 + 48))(v71, 1, v107) == 1)
      {
        v85 = v112;
        goto LABEL_59;
      }

      sub_26C11D8DC(v71, v100, type metadata accessor for PartialHandshakeResult);
      v87 = sub_26C148A7C();
      v88 = sub_26C14901C();
      v89 = os_log_type_enabled(v87, v88);
      v90 = v106;
      if (v89)
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_26C0B5000, v87, v88, "client completed TLS handshake", v91, 2u);
        MEMORY[0x26D69C3A0](v91, -1, -1);
      }

      v55 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      sub_26C11F1F0(v112, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v92 = v100;
LABEL_64:
      sub_26C11D8DC(v92, v90, type metadata accessor for PartialHandshakeResult);
      v57 = v90;
      v56 = 0;
LABEL_65:
      (*(v59 + 56))(v57, v56, 1, v58);
      return sub_26C11F1F0(v117, v55);
    }

    v48 = v34;
    v49 = v117;
    sub_26C11F1F0(v46, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v50 = v49;
    v51 = v113;
    sub_26C11F050(v50, v113, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v52 = v110;
    sub_26C0CF314(v51 + *(v47 + 48), v110, &qword_28047AC40, &unk_26C14D320);
    v53 = type metadata accessor for PAKEClientState(0);
    if ((*(*(v53 - 8) + 48))(v52, 1, v53) != 1)
    {
      break;
    }

    sub_26C11F1F0(v113, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    sub_26C0CF5C4(v52, &qword_28047AC40, &unk_26C14D320);
    v54 = sub_26C1169D0(&v115);
    if (v4)
    {
      v113 = v115;
      v69 = v116;
      v74 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      goto LABEL_39;
    }

    v4 = 0;
    v38 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
    if (v54)
    {
LABEL_22:
      v55 = v38;
      v56 = 1;
      v57 = v106;
      v58 = v107;
      v59 = v108;
      goto LABEL_65;
    }

    v34 = v48;
LABEL_3:
    sub_26C11F1F0(v117, v38);
  }

  sub_26C0CF5C4(v52, &qword_28047AC40, &unk_26C14D320);
  v75 = v101;
  sub_26C1163E4(&v115, v101);
  if (!v4)
  {
    v58 = v107;
    v59 = v108;
    if ((*(v108 + 48))(v75, 1, v107) != 1)
    {
      sub_26C11D8DC(v75, v98, type metadata accessor for PartialHandshakeResult);
      v93 = sub_26C148A7C();
      v94 = sub_26C14901C();
      v95 = os_log_type_enabled(v93, v94);
      v90 = v106;
      if (v95)
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&dword_26C0B5000, v93, v94, "client completed TLS handshake", v96, 2u);
        MEMORY[0x26D69C3A0](v96, -1, -1);
      }

      v55 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      sub_26C11F1F0(v113, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v92 = v98;
      goto LABEL_64;
    }

    v85 = v113;
LABEL_59:
    v55 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
    sub_26C11F1F0(v85, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    goto LABEL_60;
  }

  v72 = v113;
LABEL_42:
  sub_26C11F1F0(v72, type metadata accessor for HandshakeState.EncryptedExtensionsState);
  v70 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
  v113 = v115;
  v69 = v116;
LABEL_43:
  sub_26C11F1F0(v117, v70);
  v76 = v113;
  sub_26C0CF018(v113, *(&v113 + 1), v69);
  v77 = sub_26C148A7C();
  v78 = sub_26C14900C();
  sub_26C0CF030(v76, *(&v76 + 1), v69);
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v79 = 138412290;
    sub_26C0BBAF8();
    swift_allocError();
    *v81 = v76;
    *(v81 + 16) = v69;
    sub_26C0CF018(v76, *(&v76 + 1), v69);
    v82 = _swift_stdlib_bridgeErrorToNSError();
    *(v79 + 4) = v82;
    *v80 = v82;
    _os_log_impl(&dword_26C0B5000, v77, v78, "processing message failed due to error %@", v79, 0xCu);
    sub_26C0CF5C4(v80, &qword_28047A880, &qword_26C14A5B0);
    MEMORY[0x26D69C3A0](v80, -1, -1);
    MEMORY[0x26D69C3A0](v79, -1, -1);
  }

  v83 = v109;
  *v109 = v76;
  *(v83 + 16) = v69;
  v115 = v76;
  v116 = v69;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C115438@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a1;
  v3 = v2;
  v98 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v92 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v91 = &v81 - v8;
  v93 = sub_26C148BDC();
  v9 = *(v93 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v93);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v81 - v14;
  v90 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v16 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v18 = (&v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v94 = (&v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v96 = &v81 - v23;
  v97 = type metadata accessor for HandshakeState(0);
  v24 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v95 = (&v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for EncryptionLevel(0);
  v88 = *(v26 - 8);
  v89 = v26;
  v27 = *(v88 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v85 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v84 = &v81 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v86 = &v81 - v33;
  MEMORY[0x28223BE20](v32);
  v87 = &v81 - v34;
  if (qword_28047A760 != -1)
  {
    swift_once();
  }

  v35 = sub_26C148A9C();
  v99 = __swift_project_value_buffer(v35, qword_28047AC70);
  v36 = sub_26C148A7C();
  v37 = sub_26C148FFC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = v9;
    v39 = v3;
    v40 = v18;
    v41 = v13;
    v42 = v15;
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_26C0B5000, v36, v37, "client expecting server hello", v43, 2u);
    v44 = v43;
    v15 = v42;
    v13 = v41;
    v18 = v40;
    v3 = v39;
    v9 = v38;
    MEMORY[0x26D69C3A0](v44, -1, -1);
  }

  if (v3[1] >> 60 == 15)
  {
    v83 = v15;
    sub_26C0CF2F4(&v119);
  }

  else
  {
    v45 = v129;
    result = sub_26C0DE9B4(v3, v3, &v117, &v119);
    if (v45)
    {
      v47 = v118[0];
      v48 = v117;
LABEL_20:
      v62 = v100;
      *v100 = v48;
      *(v62 + 16) = v47;
      return result;
    }

    v83 = v15;
    v129 = 0;
  }

  v115[6] = v125;
  v115[7] = v126;
  v115[2] = v121;
  v115[3] = v122;
  v115[4] = v123;
  v115[5] = v124;
  v115[0] = v119;
  v115[1] = v120;
  *&v118[80] = v125;
  *&v118[96] = v126;
  *&v118[16] = v121;
  *&v118[32] = v122;
  *&v118[48] = v123;
  *&v118[64] = v124;
  v116 = v127;
  v118[112] = v127;
  v117 = v119;
  *v118 = v120;
  if (sub_26C0CF284(&v117) != 1)
  {
    if (v118[112] != 1)
    {
      v105 = *&v118[72];
      v106[0] = *&v118[88];
      *(v106 + 9) = *&v118[97];
      v101 = *&v118[8];
      v102 = *&v118[24];
      v103 = *&v118[40];
      v104 = *&v118[56];
      sub_26C0BF530(&v118[8], &v109);
      sub_26C11ACDC(&v101);
      v113 = v105;
      v114[0] = v106[0];
      *(v114 + 9) = *(v106 + 9);
      v109 = v101;
      v110 = v102;
      v111 = v103;
      v112 = v104;
      sub_26C0BF5D0(&v109);
      v63 = v100;
      *v100 = xmmword_26C14A560;
      *(v63 + 16) = 2;
      v101 = xmmword_26C14A560;
      LOBYTE(v102) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      return sub_26C0CF5C4(v115, &qword_28047A940, &qword_26C14A7E8);
    }

    v128[2] = *&v118[40];
    v128[3] = *&v118[56];
    v128[4] = *&v118[72];
    v128[5] = *&v118[88];
    v128[0] = *&v118[8];
    v128[1] = *&v118[24];
    v113 = *&v118[72];
    v114[0] = *&v118[88];
    *(v114 + 9) = *&v118[97];
    v109 = *&v118[8];
    v110 = *&v118[24];
    v111 = *&v118[40];
    v112 = *&v118[56];
    sub_26C11EFF4(&v109, &v101);
    v53 = sub_26C148A7C();
    v54 = sub_26C148FEC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_26C0B5000, v53, v54, "client got server hello", v55, 2u);
      MEMORY[0x26D69C3A0](v55, -1, -1);
    }

    v82 = v9;

    v56 = type metadata accessor for HandshakeStateMachine(0);
    __swift_project_boxed_opaque_existential_1((v3 + *(v56 + 28)), *(v3 + *(v56 + 28) + 24));
    v57 = v117;
    v99 = *v118;
    v81 = *(v56 + 24);
    v58 = v95;
    sub_26C11F050(v3 + v81, v95, type metadata accessor for HandshakeState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v59 = v96;
      sub_26C11D8DC(v58, v96, type metadata accessor for HandshakeState.ClientHelloState);
      v60 = v94;
      sub_26C11F050(v59, v94, type metadata accessor for HandshakeState.ClientHelloState);
      sub_26C0BF530(&v118[8], &v101);
      sub_26C0BBAA4(v57, *(&v57 + 1));
      v61 = v129;
      sub_26C10C4E4(v60, v128, v57, *(&v57 + 1), v99, &v107, v18);
      if (v61)
      {
        sub_26C0BF5D0(&v118[8]);
        sub_26C0CF5C4(v115, &qword_28047A940, &qword_26C14A7E8);
        result = sub_26C11F1F0(v59, type metadata accessor for HandshakeState.ClientHelloState);
        v47 = v108;
        v48 = v107;
        goto LABEL_20;
      }

      v129 = 0;
      v56 = v91;
      v99 = *(v90 + 24);
      sub_26C10FB04(v91);
      v100 = v18;
      v64 = v82;
      v65 = *(v82 + 48);
      v66 = v93;
      if (v65(v56, 1, v93) != 1)
      {
        v95 = *(v64 + 32);
        (v95)(v83, v56, v66);
        v67 = v92;
        sub_26C10FE3C(v92);
        v68 = v93;
        if (v65(v67, 1, v93) != 1)
        {
          sub_26C0BF5D0(&v118[8]);
          sub_26C0CF5C4(v115, &qword_28047A940, &qword_26C14A7E8);
          sub_26C11F1F0(v96, type metadata accessor for HandshakeState.ClientHelloState);
          v69 = v81;
          sub_26C11F1F0(v3 + v81, type metadata accessor for HandshakeState);
          v70 = v95;
          (v95)(v13, v67, v68);
          sub_26C11D8DC(v100, v3 + v69, type metadata accessor for HandshakeState.ServerHelloState);
          swift_storeEnumTagMultiPayload();
          v71 = v84;
          v70(v84, v13, v68);
          v72 = v89;
          swift_storeEnumTagMultiPayload();
          v73 = v85;
          v70(v85, v83, v68);
          swift_storeEnumTagMultiPayload();
          v74 = v87;
          sub_26C11D8DC(v71, v87, type metadata accessor for EncryptionLevel);
          v75 = v86;
          sub_26C11D8DC(v73, v86, type metadata accessor for EncryptionLevel);
          v76 = type metadata accessor for PartialHandshakeResult(0);
          v77 = v76[5];
          v78 = v98;
          sub_26C11D8DC(v75, v98 + v77, type metadata accessor for EncryptionLevel);
          v79 = *(v88 + 56);
          v79(v78 + v77, 0, 1, v72);
          v80 = v76[6];
          sub_26C11D8DC(v74, v78 + v80, type metadata accessor for EncryptionLevel);
          v79(v78 + v80, 0, 1, v72);
          *v78 = xmmword_26C14A540;
          *(v78 + 16) = 0;
          *(v78 + v76[7]) = xmmword_26C14A540;
          return (*(*(v76 - 1) + 56))(v78, 0, 1, v76);
        }

        (*(v82 + 8))(v83, v68);
        goto LABEL_28;
      }
    }

    else
    {
      sub_26C11F1F0(v58, type metadata accessor for HandshakeState);
      __break(1u);
    }

    v92 = v56;
LABEL_28:
    result = sub_26C0CF5C4(v92, &qword_28047A930, qword_26C14C120);
    __break(1u);
    return result;
  }

  v49 = sub_26C148A7C();
  v50 = sub_26C148FFC();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_26C0B5000, v49, v50, "incomplete message, waiting for more data", v51, 2u);
    MEMORY[0x26D69C3A0](v51, -1, -1);
  }

  v52 = type metadata accessor for PartialHandshakeResult(0);
  return (*(*(v52 - 8) + 56))(v98, 1, 1, v52);
}

uint64_t sub_26C115FB4(uint64_t a1)
{
  v4 = v2;
  if (qword_28047A760 != -1)
  {
    swift_once();
  }

  v5 = sub_26C148A9C();
  __swift_project_value_buffer(v5, qword_28047AC70);
  v6 = sub_26C148A7C();
  v7 = sub_26C148FFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26C0B5000, v6, v7, "client expecting ee", v8, 2u);
    MEMORY[0x26D69C3A0](v8, -1, -1);
  }

  if (v1[1] >> 60 == 15)
  {
    sub_26C0CF2F4(&v40);
  }

  else
  {
    result = sub_26C0DE9B4(v1, v1, v39, &v40);
    if (v2)
    {
      v10 = v39[16];
      v11 = *v39;
LABEL_20:
      *a1 = v11;
      *(a1 + 16) = v10;
      return result;
    }

    v4 = 0;
  }

  v37[6] = v46;
  v37[7] = v47;
  v38 = v48;
  v37[2] = v42;
  v37[3] = v43;
  v37[4] = v44;
  v37[5] = v45;
  v37[0] = v40;
  v37[1] = v41;
  *&v39[96] = v46;
  *&v39[112] = v47;
  v39[128] = v48;
  *&v39[32] = v42;
  *&v39[48] = v43;
  *&v39[64] = v44;
  *&v39[80] = v45;
  *v39 = v40;
  *&v39[16] = v41;
  v12 = sub_26C0CF284(v39);
  if (v12 == 1)
  {
    v13 = sub_26C148A7C();
    v14 = sub_26C148FFC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_26C0B5000, v13, v14, "incomplete message, waiting for more data", v15, 2u);
      MEMORY[0x26D69C3A0](v15, -1, -1);
    }

    return v12 == 1;
  }

  if (v39[128] == 2)
  {
    v16 = *&v39[24];

    v17 = sub_26C148A7C();
    v18 = sub_26C148FEC();
    if (os_log_type_enabled(v17, v18))
    {
      v24 = v16;
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_26C0B5000, v17, v18, "client got ee", v19, 2u);
      v20 = v19;
      v16 = v24;
      MEMORY[0x26D69C3A0](v20, -1, -1);
    }

    v22 = *v39;
    v25 = v22 >> 64;
    v21 = v22;
    *v32 = *v39;
    *&v32[8] = *&v39[8];
    v23 = *(type metadata accessor for HandshakeStateMachine(0) + 24);
    sub_26C0BBAA4(v21, v25);
    sub_26C1012D8(v16, v32, &v26);
    sub_26C0BF5D0(&v39[24]);
    sub_26C0CF5C4(v37, &qword_28047A940, &qword_26C14A7E8);
    result = sub_26C0BB9B0(*v32, *&v32[8]);
    if (!v4)
    {
      return v12 == 1;
    }

    v10 = v27;
    v11 = v26;
    goto LABEL_20;
  }

  v30 = *&v39[88];
  v31[0] = *&v39[104];
  *(v31 + 9) = *&v39[113];
  v26 = *&v39[24];
  v27 = *&v39[40];
  v28 = *&v39[56];
  v29 = *&v39[72];
  sub_26C0BF530(&v39[24], v32);
  sub_26C11ACDC(&v26);
  v35 = v30;
  v36[0] = v31[0];
  *(v36 + 9) = *(v31 + 9);
  *v32 = v26;
  *&v32[16] = v27;
  v33 = v28;
  v34 = v29;
  sub_26C0BF5D0(v32);
  *a1 = xmmword_26C14A560;
  *(a1 + 16) = 2;
  v26 = xmmword_26C14A560;
  LOBYTE(v27) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  return sub_26C0CF5C4(v37, &qword_28047A940, &qword_26C14A7E8);
}

uint64_t sub_26C1163E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v39 = a2;
  v5 = type metadata accessor for PartialHandshakeResult(0);
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28047A760 != -1)
  {
    swift_once();
  }

  v9 = sub_26C148A9C();
  __swift_project_value_buffer(v9, qword_28047AC70);
  v10 = sub_26C148A7C();
  v11 = sub_26C148FFC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = a1;
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26C0B5000, v10, v11, "client expecting finished", v13, 2u);
    v14 = v13;
    a1 = v12;
    MEMORY[0x26D69C3A0](v14, -1, -1);
  }

  if (v4[1] >> 60 == 15)
  {
    v37 = v5;
    sub_26C0CF2F4(&v54);
  }

  else
  {
    v15 = v63;
    result = sub_26C0DE9B4(v4, v4, v53, &v54);
    if (v15)
    {
      v17 = v53[16];
      *a1 = *v53;
      *(a1 + 16) = v17;
      return result;
    }

    v37 = v5;
    v63 = 0;
  }

  v51[6] = v60;
  v51[7] = v61;
  v52 = v62;
  v51[2] = v56;
  v51[3] = v57;
  v51[4] = v58;
  v51[5] = v59;
  v51[0] = v54;
  v51[1] = v55;
  *&v53[96] = v60;
  *&v53[112] = v61;
  v53[128] = v62;
  *&v53[32] = v56;
  *&v53[48] = v57;
  *&v53[64] = v58;
  *&v53[80] = v59;
  *v53 = v54;
  *&v53[16] = v55;
  if (sub_26C0CF284(v53) == 1)
  {
    v18 = sub_26C148A7C();
    v19 = sub_26C148FFC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_26C0B5000, v18, v19, "incomplete message, waiting for more data", v20, 2u);
      MEMORY[0x26D69C3A0](v20, -1, -1);
    }

    v21 = 1;
    return (*(v38 + 56))(v39, v21, 1, v37);
  }

  if (v53[128] == 6)
  {
    v35 = a1;
    v22 = *&v53[24];
    v36 = *&v53[32];
    sub_26C0BBAA4(*&v53[24], *&v53[32]);
    v23 = sub_26C148A7C();
    v24 = sub_26C148FEC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26C0B5000, v23, v24, "client got server finished ", v25, 2u);
      MEMORY[0x26D69C3A0](v25, -1, -1);
    }

    *&v40[0] = v22;
    *(v40 + 8) = v36;
    v26 = *v53;
    v49 = *v53;
    v36 = *&v53[8];
    v50 = *&v53[8];
    v27 = *(type metadata accessor for HandshakeStateMachine(0) + 24);
    sub_26C0BF530(&v53[24], v45);
    sub_26C0BBAA4(v26, v36);
    v28 = v63;
    sub_26C1042A8(v40, &v49, &v47, v8);
    if (!v28)
    {
      v63 = 0;
      sub_26C0BB9B0(v49, v50);
      sub_26C0BB9B0(*&v40[0], *(&v40[0] + 1));
      v31 = sub_26C148A7C();
      v32 = sub_26C148FEC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_26C0B5000, v31, v32, "client sending client finished", v33, 2u);
        MEMORY[0x26D69C3A0](v33, -1, -1);
      }

      sub_26C0BF5D0(&v53[24]);

      sub_26C0CF5C4(v51, &qword_28047A940, &qword_26C14A7E8);
      sub_26C11D8DC(v8, v39, type metadata accessor for PartialHandshakeResult);
      v21 = 0;
      return (*(v38 + 56))(v39, v21, 1, v37);
    }

    sub_26C0CF5C4(v51, &qword_28047A940, &qword_26C14A7E8);
    sub_26C0BF5D0(&v53[24]);
    sub_26C0BB9B0(v49, v50);
    result = sub_26C0BB9B0(*&v40[0], *(&v40[0] + 1));
    v29 = v48;
    v30 = v35;
    *v35 = v47;
    *(v30 + 16) = v29;
  }

  else
  {
    v43 = *&v53[88];
    v44[0] = *&v53[104];
    *(v44 + 9) = *&v53[113];
    v40[0] = *&v53[24];
    v40[1] = *&v53[40];
    v41 = *&v53[56];
    v42 = *&v53[72];
    sub_26C0BF530(&v53[24], v45);
    sub_26C11ACDC(v40);
    v45[4] = v43;
    v46[0] = v44[0];
    *(v46 + 9) = *(v44 + 9);
    v45[0] = v40[0];
    v45[1] = v40[1];
    v45[2] = v41;
    v45[3] = v42;
    sub_26C0BF5D0(v45);
    *a1 = xmmword_26C14A560;
    *(a1 + 16) = 2;
    v40[0] = xmmword_26C14A560;
    LOBYTE(v40[1]) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return sub_26C0CF5C4(v51, &qword_28047A940, &qword_26C14A7E8);
  }

  return result;
}

uint64_t sub_26C1169D0(uint64_t a1)
{
  v4 = v2;
  if (qword_28047A760 != -1)
  {
    swift_once();
  }

  v5 = sub_26C148A9C();
  __swift_project_value_buffer(v5, qword_28047AC70);
  v6 = sub_26C148A7C();
  v7 = sub_26C148FFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26C0B5000, v6, v7, "client expecting certificate message", v8, 2u);
    MEMORY[0x26D69C3A0](v8, -1, -1);
  }

  if (v1[1] >> 60 == 15)
  {
    sub_26C0CF2F4(&v41);
  }

  else
  {
    result = sub_26C0DE9B4(v1, v1, v40, &v41);
    if (v2)
    {
      v10 = v40[16];
      v11 = *v40;
LABEL_20:
      *a1 = v11;
      *(a1 + 16) = v10;
      return result;
    }

    v4 = 0;
  }

  v38[6] = v47;
  v38[7] = v48;
  v39 = v49;
  v38[2] = v43;
  v38[3] = v44;
  v38[4] = v45;
  v38[5] = v46;
  v38[0] = v41;
  v38[1] = v42;
  *&v40[96] = v47;
  *&v40[112] = v48;
  v40[128] = v49;
  *&v40[32] = v43;
  *&v40[48] = v44;
  *&v40[64] = v45;
  *&v40[80] = v46;
  *v40 = v41;
  *&v40[16] = v42;
  v12 = sub_26C0CF284(v40);
  if (v12 == 1)
  {
    v13 = sub_26C148A7C();
    v14 = sub_26C148FFC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_26C0B5000, v13, v14, "incomplete message, waiting for more data", v15, 2u);
      MEMORY[0x26D69C3A0](v15, -1, -1);
    }

    return v12 == 1;
  }

  if (v40[128] == 4)
  {
    v16 = *&v40[48];
    v25 = *&v40[32];
    v50 = *&v40[24];
    sub_26C0BBAA4(*&v40[24], *&v40[32]);

    v17 = sub_26C148A7C();
    v18 = sub_26C148FEC();
    if (os_log_type_enabled(v17, v18))
    {
      v24 = a1;
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_26C0B5000, v17, v18, "client got certificate message", v19, 2u);
      v20 = v19;
      a1 = v24;
      MEMORY[0x26D69C3A0](v20, -1, -1);
    }

    *v27 = v50;
    *&v27[8] = v25;
    *&v27[24] = v16;
    v22 = *v40;
    v26 = v22 >> 64;
    v21 = v22;
    v36 = *v40;
    v37 = *&v40[8];
    v23 = *(type metadata accessor for HandshakeStateMachine(0) + 24);
    sub_26C0BF530(&v40[24], v32);
    sub_26C0BBAA4(v21, v26);
    sub_26C102D6C(v27, &v36, &v34);
    sub_26C0CF5C4(v38, &qword_28047A940, &qword_26C14A7E8);
    sub_26C0BF5D0(&v40[24]);
    sub_26C0BB9B0(v36, v37);
    sub_26C0BB9B0(*v27, *&v27[8]);

    if (!v4)
    {
      return v12 == 1;
    }

    v10 = v35;
    v11 = v34;
    goto LABEL_20;
  }

  v30 = *&v40[88];
  v31[0] = *&v40[104];
  *(v31 + 9) = *&v40[113];
  *v27 = *&v40[24];
  *&v27[16] = *&v40[40];
  v28 = *&v40[56];
  v29 = *&v40[72];
  sub_26C0BF530(&v40[24], v32);
  sub_26C11ACDC(v27);
  v32[4] = v30;
  v33[0] = v31[0];
  *(v33 + 9) = *(v31 + 9);
  v32[0] = *v27;
  v32[1] = *&v27[16];
  v32[2] = v28;
  v32[3] = v29;
  sub_26C0BF5D0(v32);
  *a1 = xmmword_26C14A560;
  *(a1 + 16) = 2;
  *v27 = xmmword_26C14A560;
  v27[16] = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  return sub_26C0CF5C4(v38, &qword_28047A940, &qword_26C14A7E8);
}

uint64_t sub_26C116E54(uint64_t a1)
{
  v4 = v2;
  if (qword_28047A760 != -1)
  {
    swift_once();
  }

  v5 = sub_26C148A9C();
  __swift_project_value_buffer(v5, qword_28047AC70);
  v6 = sub_26C148A7C();
  v7 = sub_26C148FFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26C0B5000, v6, v7, "client expecting certificate verify", v8, 2u);
    MEMORY[0x26D69C3A0](v8, -1, -1);
  }

  if (v1[1] >> 60 == 15)
  {
    sub_26C0CF2F4(&v42);
  }

  else
  {
    result = sub_26C0DE9B4(v1, v1, v41, &v42);
    if (v2)
    {
      v10 = v41[16];
      v11 = *v41;
LABEL_20:
      *a1 = v11;
      *(a1 + 16) = v10;
      return result;
    }

    v4 = 0;
  }

  v39[6] = v48;
  v39[7] = v49;
  v40 = v50;
  v39[2] = v44;
  v39[3] = v45;
  v39[4] = v46;
  v39[5] = v47;
  v39[0] = v42;
  v39[1] = v43;
  *&v41[96] = v48;
  *&v41[112] = v49;
  v41[128] = v50;
  *&v41[32] = v44;
  *&v41[48] = v45;
  *&v41[64] = v46;
  *&v41[80] = v47;
  *v41 = v42;
  *&v41[16] = v43;
  v12 = sub_26C0CF284(v41);
  if (v12 == 1)
  {
    v13 = sub_26C148A7C();
    v14 = sub_26C148FFC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_26C0B5000, v13, v14, "incomplete message, waiting for more data", v15, 2u);
      MEMORY[0x26D69C3A0](v15, -1, -1);
    }

    return v12 == 1;
  }

  if (v41[128] == 5)
  {
    v51 = *&v41[24];
    v16 = *&v41[32];
    v25 = *&v41[40];
    sub_26C0BBAA4(*&v41[32], *&v41[40]);
    v17 = sub_26C148A7C();
    v18 = sub_26C148FEC();
    if (os_log_type_enabled(v17, v18))
    {
      v24 = a1;
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_26C0B5000, v17, v18, "client got certificate verify", v19, 2u);
      v20 = v19;
      a1 = v24;
      MEMORY[0x26D69C3A0](v20, -1, -1);
    }

    LOWORD(v27) = v51;
    *(&v27 + 1) = v16;
    v28 = v25;
    v22 = *v41;
    v26 = v22 >> 64;
    v21 = v22;
    v37 = *v41;
    v38 = *&v41[8];
    v23 = *(type metadata accessor for HandshakeStateMachine(0) + 24);
    sub_26C0BF530(&v41[24], v33);
    sub_26C0BBAA4(v21, v26);
    sub_26C103B24(&v27, &v37, &v35);
    sub_26C0CF5C4(v39, &qword_28047A940, &qword_26C14A7E8);
    sub_26C0BF5D0(&v41[24]);
    sub_26C0BB9B0(v37, v38);
    result = sub_26C0BB9B0(*(&v27 + 1), v28);
    if (!v4)
    {
      return v12 == 1;
    }

    v10 = v36;
    v11 = v35;
    goto LABEL_20;
  }

  v31 = *&v41[88];
  v32[0] = *&v41[104];
  *(v32 + 9) = *&v41[113];
  v27 = *&v41[24];
  v28 = *&v41[40];
  v29 = *&v41[56];
  v30 = *&v41[72];
  sub_26C0BF530(&v41[24], v33);
  sub_26C11ACDC(&v27);
  v33[4] = v31;
  v34[0] = v32[0];
  *(v34 + 9) = *(v32 + 9);
  v33[0] = v27;
  v33[1] = v28;
  v33[2] = v29;
  v33[3] = v30;
  sub_26C0BF5D0(v33);
  *a1 = xmmword_26C14A560;
  *(a1 + 16) = 2;
  v27 = xmmword_26C14A560;
  LOBYTE(v28) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  return sub_26C0CF5C4(v39, &qword_28047A940, &qword_26C14A7E8);
}

uint64_t sub_26C1172C8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v4 = v3;
  v5 = v2;
  v30 = a2;
  v6 = sub_26C14896C();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28047A760 != -1)
  {
    swift_once();
  }

  v10 = sub_26C148A9C();
  __swift_project_value_buffer(v10, qword_28047AC70);
  v11 = sub_26C148A7C();
  v12 = sub_26C148FFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26C0B5000, v11, v12, "client expecting newSessionTicket", v13, 2u);
    MEMORY[0x26D69C3A0](v13, -1, -1);
  }

  if (v2[1] >> 60 == 15)
  {
    sub_26C0CF2F4(&v53);
  }

  else
  {
    result = sub_26C0DE9B4(v2, v2, &v51, &v53);
    if (v3)
    {
      v15 = v52[0];
      v16 = v51;
      goto LABEL_20;
    }

    v4 = 0;
  }

  v49[6] = v59;
  v49[7] = v60;
  v49[2] = v55;
  v49[3] = v56;
  v49[4] = v57;
  v49[5] = v58;
  v49[0] = v53;
  v49[1] = v54;
  *&v52[80] = v59;
  *&v52[96] = v60;
  *&v52[16] = v55;
  *&v52[32] = v56;
  *&v52[48] = v57;
  *&v52[64] = v58;
  v50 = v61;
  v52[112] = v61;
  v51 = v53;
  *v52 = v54;
  v17 = sub_26C0CF284(&v51);
  v18 = sub_26C148A7C();
  if (v17 != 1)
  {
    v22 = sub_26C148FEC();
    if (os_log_type_enabled(v18, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_26C0B5000, v18, v22, "client got message expecting new session ticket", v23, 2u);
      MEMORY[0x26D69C3A0](v23, -1, -1);
    }

    if (v52[112] <= 6u)
    {
      v37 = *&v52[72];
      v38[0] = *&v52[88];
      *(v38 + 9) = *&v52[97];
      v33 = *&v52[8];
      v34 = *&v52[24];
      v35 = *&v52[40];
      v36 = *&v52[56];
      sub_26C0BF530(&v52[8], &v43);
      sub_26C11ACDC(&v33);
      v47 = v37;
      v48[0] = v38[0];
      *(v48 + 9) = *(v38 + 9);
      v43 = v33;
      v44 = v34;
      v45 = v35;
      v46 = v36;
      sub_26C0BF5D0(&v43);
      v24 = v62;
      *v62 = xmmword_26C14A560;
      *(v24 + 16) = 2;
      v33 = xmmword_26C14A560;
      LOBYTE(v34) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      return sub_26C0CF5C4(v49, &qword_28047A940, &qword_26C14A7E8);
    }

    v39 = *&v52[8];
    v40 = *&v52[24];
    v47 = *&v52[72];
    v48[0] = *&v52[88];
    *(v48 + 9) = *&v52[97];
    v41 = *&v52[40];
    v42 = *&v52[56];
    v43 = *&v52[8];
    v44 = *&v52[24];
    v45 = *&v52[40];
    v46 = *&v52[56];
    sub_26C0BF530(&v52[8], &v33);
    sub_26C11F0B8(&v43, &v33);
    sub_26C14895C();
    v25 = v5 + *(type metadata accessor for HandshakeStateMachine(0) + 24);
    v26 = v30;
    sub_26C1075F4(&v39, v9, &v31, v30);
    if (!v4)
    {
      sub_26C0CF5C4(v49, &qword_28047A940, &qword_26C14A7E8);
      sub_26C0BF5D0(&v52[8]);
      (*(v29 + 8))(v9, v6);
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v36 = v42;
      sub_26C11F114(&v33);
      v28 = type metadata accessor for PartialHandshakeResult(0);
      return (*(*(v28 - 8) + 56))(v26, 0, 1, v28);
    }

    sub_26C0CF5C4(v49, &qword_28047A940, &qword_26C14A7E8);
    sub_26C0BF5D0(&v52[8]);
    (*(v29 + 8))(v9, v6);
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v36 = v42;
    result = sub_26C11F114(&v33);
    v15 = v32;
    v16 = v31;
LABEL_20:
    v27 = v62;
    *v62 = v16;
    *(v27 + 16) = v15;
    return result;
  }

  v19 = sub_26C148FFC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26C0B5000, v18, v19, "incomplete message, waiting for more data", v20, 2u);
    MEMORY[0x26D69C3A0](v20, -1, -1);
  }

  v21 = type metadata accessor for PartialHandshakeResult(0);
  return (*(*(v21 - 8) + 56))(v30, 1, 1, v21);
}

uint64_t HandshakeStateMachine.peerQUICTransportParameters.getter@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v3 = *(*(ready - 8) + 64);
  MEMORY[0x28223BE20](ready);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HandshakeState(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v1 + *(v22 + 24), v21, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    result = sub_26C11F1F0(v21, type metadata accessor for HandshakeState);
    v25 = 0;
    v27 = 0;
    v26 = 0xF000000000000000;
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_26C11D8DC(v21, v9, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
        v31 = &v9[*(v6 + 36)];
        v25 = *v31;
        v26 = v31[1];
        v27 = v31[2];
        sub_26C0BB37C(*v31, v26);
        v28 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
        v29 = v9;
      }

      else
      {
        sub_26C11D8DC(v21, v5, type metadata accessor for HandshakeState.ReadyState);
        v32 = &v5[*(ready + 36)];
        v25 = *v32;
        v26 = v32[1];
        v27 = v32[2];
        sub_26C0BB37C(*v32, v26);
        v28 = type metadata accessor for HandshakeState.ReadyState;
        v29 = v5;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_26C11D8DC(v21, v17, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v24 = &v17[*(v14 + 28)];
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      sub_26C0BB37C(*v24, v26);
      v28 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      v29 = v17;
    }

    else
    {
      sub_26C11D8DC(v21, v13, type metadata accessor for HandshakeState.ServerCertificateState);
      v25 = v13[11];
      v26 = v13[12];
      v27 = v13[13];
      sub_26C0BB37C(v25, v26);
      v28 = type metadata accessor for HandshakeState.ServerCertificateState;
      v29 = v13;
    }

    result = sub_26C11F1F0(v29, v28);
  }

  v33 = v35;
  *v35 = v25;
  v33[1] = v26;
  v33[2] = v27;
  return result;
}

uint64_t HandshakeStateMachine.peerALPN.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v2 = *(*(ready - 8) + 64);
  MEMORY[0x28223BE20](ready);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HandshakeState(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v0 + *(v21 + 24), v20, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_26C11F1F0(v20, type metadata accessor for HandshakeState);
    return 0;
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_26C11D8DC(v20, v8, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
        v28 = &v8[*(v5 + 32)];
        v24 = *v28;
        v29 = *(v28 + 1);

        v26 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
        v27 = v8;
      }

      else
      {
        sub_26C11D8DC(v20, v4, type metadata accessor for HandshakeState.ReadyState);
        v31 = &v4[*(ready + 32)];
        v24 = *v31;
        v32 = *(v31 + 1);

        v26 = type metadata accessor for HandshakeState.ReadyState;
        v27 = v4;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_26C11D8DC(v20, v16, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v23 = &v16[*(v13 + 24)];
      v24 = *v23;
      v25 = *(v23 + 1);

      v26 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      v27 = v16;
    }

    else
    {
      sub_26C11D8DC(v20, v12, type metadata accessor for HandshakeState.ServerCertificateState);
      v24 = *(v12 + 9);
      v30 = *(v12 + 10);

      v26 = type metadata accessor for HandshakeState.ServerCertificateState;
      v27 = v12;
    }

    sub_26C11F1F0(v27, v26);
  }

  return v24;
}

uint64_t HandshakeStateMachine.negotiatedCiphersuite.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v1 = *(*(ready - 8) + 64);
  MEMORY[0x28223BE20](ready - 8);
  v97 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v95 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v93 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  v94 = *(v96 - 8);
  v9 = *(v94 + 64);
  MEMORY[0x28223BE20](v96);
  v89 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC48, "~;");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v98 = &v87 - v13;
  v91 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v14 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v92 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v16 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v102 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ImportedPSK(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v101 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for PSK(0);
  v21 = *(*(v100 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v100);
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v87 - v25;
  v27 = type metadata accessor for GeneralEPSK(0);
  v87 = *(v27 - 8);
  v28 = *(v87 + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v87 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v87 - v36;
  v99 = type metadata accessor for SessionTicket();
  v90 = *(v99 - 8);
  v38 = *(v90 + 64);
  v39 = MEMORY[0x28223BE20](v99);
  v88 = &v87 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v42 = &v87 - v41;
  v43 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v46 = &v87 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for HandshakeState(0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v87 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(&v104[*(v51 + 24)], v50, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v55 = v103;
    v104 = v31;
    v98 = v24;
    v56 = v101;
    if (!EnumCaseMultiPayload)
    {
      v64 = type metadata accessor for HandshakeState;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v68 = v102;
      sub_26C11D8DC(v50, v102, type metadata accessor for HandshakeState.ServerHelloState);
      v69 = v68 + *(v55 + 28);
      v65 = *v69;
      v67 = *(v69 + 2);
      v70 = type metadata accessor for HandshakeState.ServerHelloState;
      goto LABEL_22;
    }

    v57 = v50;
    v50 = v46;
    sub_26C11D8DC(v57, v46, type metadata accessor for HandshakeState.ClientHelloState);
    sub_26C0CF314(&v46[*(v43 + 40)], v37, &qword_28047AC50, "N;");
    v58 = v99;
    if ((*(v90 + 48))(v37, 1, v99) != 1)
    {
      sub_26C11D8DC(v37, v42, type metadata accessor for SessionTicket);
      v65 = *&v42[*(v58 + 44)];
      sub_26C11F1F0(v42, type metadata accessor for SessionTicket);
      v71 = type metadata accessor for HandshakeState.ClientHelloState;
      v72 = v50;
LABEL_33:
      sub_26C11F1F0(v72, v71);
      v67 = 0;
      return v65 | (v67 << 16);
    }

    sub_26C0CF5C4(v37, &qword_28047AC50, "N;");
    v59 = *&v50[*(v43 + 44)];
    if (!*(v59 + 16) || (v50[64] & 1) != 0)
    {
LABEL_13:
      v64 = type metadata accessor for HandshakeState.ClientHelloState;
LABEL_17:
      sub_26C11F1F0(v50, v64);
      goto LABEL_18;
    }

    v60 = *(v50 + 14);
    if (*(v60 + 16))
    {
      v61 = *(v60 + 32);
      v42 = ((*(v87 + 80) + 32) & ~*(v87 + 80));
      sub_26C11F050(&v42[v59], v33, type metadata accessor for GeneralEPSK);
      v62 = v26;
      sub_26C11D8DC(v33, v26, type metadata accessor for PSK);
      v63 = swift_getEnumCaseMultiPayload();
      sub_26C11F1F0(v62, type metadata accessor for PSK);
      if (v63 == 1)
      {
        goto LABEL_13;
      }

      if (v61 != 4866)
      {
        v105 = xmmword_26C14CBF0;
        v106 = 2;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        if (qword_28047A760 == -1)
        {
LABEL_41:
          v82 = sub_26C148A9C();
          __swift_project_value_buffer(v82, qword_28047AC70);
          v83 = sub_26C148A7C();
          v84 = sub_26C148FFC();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            _os_log_impl(&dword_26C0B5000, v83, v84, "first ciphersuite offered does not match KDF of first offered PSK", v85, 2u);
            MEMORY[0x26D69C3A0](v85, -1, -1);
          }

          v64 = type metadata accessor for HandshakeState.ClientHelloState;
          goto LABEL_17;
        }

LABEL_49:
        swift_once();
        goto LABEL_41;
      }

      if (qword_28047A630 == -1)
      {
LABEL_37:
        v79 = v104;
        if (*(v59 + 16))
        {
          v80 = word_280480300;
          sub_26C11F050(&v42[v59], v104, type metadata accessor for GeneralEPSK);
          v81 = v98;
          sub_26C11D8DC(v79, v98, type metadata accessor for PSK);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_26C11F1F0(v81, type metadata accessor for PSK);
          }

          else
          {
            sub_26C11D8DC(v81, v56, type metadata accessor for ImportedPSK);
            v86 = *(v56 + 50);
            sub_26C11F1F0(v56, type metadata accessor for ImportedPSK);
            if (v80 == v86)
            {
              sub_26C11F1F0(v50, type metadata accessor for HandshakeState.ClientHelloState);
              v67 = 0;
              v65 = 4866;
              return v65 | (v67 << 16);
            }
          }

          goto LABEL_13;
        }

        __break(1u);
        goto LABEL_49;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v53 = v92;
      sub_26C11D8DC(v50, v92, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v54 = v98;
      sub_26C0CF314(v53 + *(v91 + 20), v98, &qword_28047AC48, "~;");
      sub_26C11F1F0(v53, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      if ((*(v94 + 48))(v54, 1, v96) == 1)
      {
        sub_26C0CF5C4(v54, &qword_28047AC48, "~;");
LABEL_18:
        v65 = 0;
        v67 = 1;
        return v65 | (v67 << 16);
      }

      v73 = v89;
      sub_26C11F050(v54, v89, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
      v74 = swift_getEnumCaseMultiPayload();
      if (v74)
      {
        if (v74 == 1)
        {
          v65 = *v73;
        }

        else
        {
          v76 = v73;
          v77 = v88;
          sub_26C11D8DC(v76, v88, type metadata accessor for SessionTicket);
          v65 = *(v77 + *(v99 + 44));
          sub_26C11F1F0(v77, type metadata accessor for SessionTicket);
        }
      }

      else
      {
        v65 = *v73;
        v75 = *(v73 + 16);
      }

      v66 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData;
    }

    else
    {
      v54 = v93;
      sub_26C11D8DC(v50, v93, type metadata accessor for HandshakeState.ServerCertificateState);
      v65 = *(v54 + 66);
      v66 = type metadata accessor for HandshakeState.ServerCertificateState;
    }

    goto LABEL_32;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v54 = v95;
    sub_26C11D8DC(v50, v95, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
    v65 = *(v54 + 66);
    v66 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
LABEL_32:
    v71 = v66;
    v72 = v54;
    goto LABEL_33;
  }

  v68 = v97;
  sub_26C11D8DC(v50, v97, type metadata accessor for HandshakeState.ReadyState);
  v65 = *(v68 + 66);
  v67 = *(v68 + 68);
  v70 = type metadata accessor for HandshakeState.ReadyState;
LABEL_22:
  sub_26C11F1F0(v68, v70);
  if (v67)
  {
    v65 = 0;
  }

  return v65 | (v67 << 16);
}

uint64_t HandshakeStateMachine.negotiatedPAKE.getter()
{
  v33[0] = type metadata accessor for HandshakeState.ReadyState(0);
  v1 = *(*(v33[0] - 8) + 64);
  MEMORY[0x28223BE20](v33[0]);
  v3 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = (v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = (v33 - v13);
  v15 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for HandshakeState(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v0 + *(v23 + 24), v22, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      sub_26C11D8DC(v22, v18, type metadata accessor for HandshakeState.ServerHelloState);
      sub_26C0CF314(&v18[*(v15 + 48)], v14, &qword_28047AC40, &unk_26C14D320);
      sub_26C11F1F0(v18, type metadata accessor for HandshakeState.ServerHelloState);
      v27 = type metadata accessor for PAKEClientState(0);
      if ((*(*(v27 - 8) + 48))(v14, 1, v27) == 1)
      {
        v26 = v14;
        goto LABEL_9;
      }

      v28 = *v14;
      v32 = v14;
LABEL_19:
      sub_26C11F1F0(v32, type metadata accessor for PAKEClientState);
      v29 = 0;
      return v28 | (v29 << 16);
    }

LABEL_11:
    sub_26C11F1F0(v22, type metadata accessor for HandshakeState);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_26C11D8DC(v22, v7, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      sub_26C0CF314(&v7[*(v4 + 48)], v12, &qword_28047AC40, &unk_26C14D320);
      sub_26C11F1F0(v7, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v25 = type metadata accessor for PAKEClientState(0);
      if ((*(*(v25 - 8) + 48))(v12, 1, v25) == 1)
      {
        v26 = v12;
LABEL_9:
        sub_26C0CF5C4(v26, &qword_28047AC40, &unk_26C14D320);
LABEL_12:
        v28 = 0;
        v29 = 1;
        return v28 | (v29 << 16);
      }

      v28 = *v12;
      v32 = v12;
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_11;
  }

  sub_26C11D8DC(v22, v3, type metadata accessor for HandshakeState.ReadyState);
  v31 = &v3[*(v33[0] + 48)];
  v28 = *v31;
  v29 = v31[2];
  sub_26C11F1F0(v3, type metadata accessor for HandshakeState.ReadyState);
  if (v29)
  {
    v28 = 0;
  }

  return v28 | (v29 << 16);
}

uint64_t HandshakeStateMachine.negotiatedEPSK.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v2 = *(*(ready - 8) + 64);
  MEMORY[0x28223BE20](ready);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HandshakeState(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v0 + *(v17 + 24), v16, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      sub_26C11D8DC(v16, v12, type metadata accessor for HandshakeState.ServerHelloState);
      v19 = v12[*(v9 + 36)];
      v20 = type metadata accessor for HandshakeState.ServerHelloState;
      v21 = v12;
      goto LABEL_10;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      sub_26C11D8DC(v16, v4, type metadata accessor for HandshakeState.ReadyState);
      v19 = v4[*(ready + 52)];
      v20 = type metadata accessor for HandshakeState.ReadyState;
      v21 = v4;
      goto LABEL_10;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_26C11D8DC(v16, v8, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v19 = v8[*(v5 + 40)];
    v20 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
    v21 = v8;
LABEL_10:
    sub_26C11F1F0(v21, v20);
    return v19;
  }

  sub_26C11F1F0(v16, type metadata accessor for HandshakeState);
  return 0;
}

uint64_t HandshakeStateMachine.epskOffered.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v0 = *(*(ready - 8) + 64);
  MEMORY[0x28223BE20](ready);
  v34 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  v2 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  v5 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for HandshakeState(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v36 + *(v24 + 24), v23, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_26C11D8DC(v23, v4, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
        v26 = v4[*(v33 + 48)];
        v27 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
        v28 = v4;
      }

      else
      {
        v29 = v34;
        sub_26C11D8DC(v23, v34, type metadata accessor for HandshakeState.ReadyState);
        v26 = *(v29 + *(ready + 56));
        v27 = type metadata accessor for HandshakeState.ReadyState;
        v28 = v29;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_26C11D8DC(v23, v11, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v26 = v11[*(v8 + 52)];
      v27 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      v28 = v11;
    }

    else
    {
      sub_26C11D8DC(v23, v7, type metadata accessor for HandshakeState.ServerCertificateState);
      v26 = v7[*(v32 + 48)];
      v27 = type metadata accessor for HandshakeState.ServerCertificateState;
      v28 = v7;
    }

LABEL_14:
    sub_26C11F1F0(v28, v27);
    return v26;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_26C11D8DC(v23, v19, type metadata accessor for HandshakeState.ClientHelloState);
      v26 = *(*&v19[*(v16 + 44)] + 16) != 0;
      v27 = type metadata accessor for HandshakeState.ClientHelloState;
      v28 = v19;
    }

    else
    {
      sub_26C11D8DC(v23, v15, type metadata accessor for HandshakeState.ServerHelloState);
      v26 = v15[*(v12 + 52)];
      v27 = type metadata accessor for HandshakeState.ServerHelloState;
      v28 = v15;
    }

    goto LABEL_14;
  }

  sub_26C11F1F0(v23, type metadata accessor for HandshakeState);
  return 0;
}

uint64_t HandshakeStateMachine.pakeOffered.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v0 = *(*(ready - 8) + 64);
  MEMORY[0x28223BE20](ready);
  v46 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  v2 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  v4 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v6 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for HandshakeState(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v48 + *(v31 + 24), v30, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v37 = v44;
        sub_26C11D8DC(v30, v44, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
        v34 = *(v37 + *(v45 + 52));
        v38 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
      }

      else
      {
        v37 = v46;
        sub_26C11D8DC(v30, v46, type metadata accessor for HandshakeState.ReadyState);
        v34 = *(v37 + *(ready + 60));
        v38 = type metadata accessor for HandshakeState.ReadyState;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_26C11D8DC(v30, v8, type metadata accessor for HandshakeState.EncryptedExtensionsState);
        sub_26C0CF314(&v8[*(v41 + 48)], v17, &qword_28047AC40, &unk_26C14D320);
        sub_26C11F1F0(v8, type metadata accessor for HandshakeState.EncryptedExtensionsState);
        v33 = type metadata accessor for PAKEClientState(0);
        v34 = (*(*(v33 - 8) + 48))(v17, 1, v33) != 1;
        v35 = v17;
        goto LABEL_8;
      }

      v37 = v42;
      sub_26C11D8DC(v30, v42, type metadata accessor for HandshakeState.ServerCertificateState);
      v34 = *(v37 + *(v43 + 52));
      v38 = type metadata accessor for HandshakeState.ServerCertificateState;
    }

    sub_26C11F1F0(v37, v38);
    return v34;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_26C11F1F0(v30, type metadata accessor for HandshakeState);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_26C11D8DC(v30, v12, type metadata accessor for HandshakeState.ServerHelloState);
    sub_26C0CF314(&v12[*(v9 + 48)], v20, &qword_28047AC40, &unk_26C14D320);
    sub_26C11F1F0(v12, type metadata accessor for HandshakeState.ServerHelloState);
    v39 = type metadata accessor for PAKEClientState(0);
    v34 = (*(*(v39 - 8) + 48))(v20, 1, v39) != 1;
    sub_26C0CF5C4(v20, &qword_28047AC40, &unk_26C14D320);
    return v34;
  }

  sub_26C11D8DC(v30, v26, type metadata accessor for HandshakeState.ClientHelloState);
  sub_26C0CF314(&v26[*(v23 + 48)], v22, &qword_28047AC40, &unk_26C14D320);
  sub_26C11F1F0(v26, type metadata accessor for HandshakeState.ClientHelloState);
  v36 = type metadata accessor for PAKEClientState(0);
  v34 = (*(*(v36 - 8) + 48))(v22, 1, v36) != 1;
  v35 = v22;
LABEL_8:
  sub_26C0CF5C4(v35, &qword_28047AC40, &unk_26C14D320);
  return v34;
}

uint64_t HandshakeStateMachine.negotiatedGroup.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v1 = *(*(ready - 8) + 64);
  MEMORY[0x28223BE20](ready - 8);
  v68 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SessionTicket();
  v11 = *(v10 - 8);
  v69 = v10;
  v70 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v62 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  v64 = *(v14 - 8);
  v65 = v14;
  v15 = *(v64 + 64);
  MEMORY[0x28223BE20](v14);
  v63 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC48, "~;");
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v62 - v19;
  v21 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v67 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v62 - v30;
  v32 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v62 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for HandshakeState(0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v62 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v71 + *(v40 + 24), v39, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v43 = v70;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_26C11D8DC(v39, v35, type metadata accessor for HandshakeState.ClientHelloState);
        sub_26C0CF314(&v35[*(v32 + 40)], v31, &qword_28047AC50, "N;");
        v44 = *(v43 + 48);
        v45 = v69;
        if (v44(v31, 1, v69) == 1)
        {
          sub_26C11F1F0(v35, type metadata accessor for HandshakeState.ClientHelloState);
          sub_26C0CF5C4(v31, &qword_28047AC50, "N;");
          return 0;
        }

        v54 = *&v31[*(v45 + 48)];
        sub_26C11F1F0(v31, type metadata accessor for SessionTicket);
        v72 = v54;
        v46 = NamedGroup.metadataDescription.getter();
        v51 = type metadata accessor for HandshakeState.ClientHelloState;
        v52 = v35;
        goto LABEL_31;
      }

      sub_26C11D8DC(v39, v27, type metadata accessor for HandshakeState.ServerHelloState);
      v50 = &v27[*(v24 + 32)];
      if ((v50[2] & 1) == 0)
      {
        v73 = *v50;
        v46 = NamedGroup.metadataDescription.getter();
        v51 = type metadata accessor for HandshakeState.ServerHelloState;
        v52 = v27;
        goto LABEL_31;
      }

      v48 = type metadata accessor for HandshakeState.ServerHelloState;
      v49 = v27;
    }

    else
    {
      v48 = type metadata accessor for HandshakeState;
      v49 = v39;
    }

LABEL_24:
    sub_26C11F1F0(v49, v48);
    return 0;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v42 = v66;
      sub_26C11D8DC(v39, v66, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
      v76 = *(v42 + 68);
      v46 = NamedGroup.metadataDescription.getter();
      v47 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
    }

    else
    {
      v42 = v68;
      sub_26C11D8DC(v39, v68, type metadata accessor for HandshakeState.ReadyState);
      if (*(v42 + 72))
      {
        v53 = type metadata accessor for HandshakeState.ReadyState;
LABEL_23:
        v48 = v53;
        v49 = v42;
        goto LABEL_24;
      }

      v77 = *(v42 + 70);
      v46 = NamedGroup.metadataDescription.getter();
      v47 = type metadata accessor for HandshakeState.ReadyState;
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v42 = v67;
    sub_26C11D8DC(v39, v67, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    sub_26C0CF314(v42 + *(v21 + 20), v20, &qword_28047AC48, "~;");
    if ((*(v64 + 48))(v20, 1, v65) == 1)
    {
      sub_26C11F1F0(v42, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      sub_26C0CF5C4(v20, &qword_28047AC48, "~;");
      return 0;
    }

    v55 = v63;
    sub_26C11F050(v20, v63, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    v56 = swift_getEnumCaseMultiPayload();
    if (v56)
    {
      if (v56 == 1)
      {
        sub_26C11F1F0(v20, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
        v53 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
        goto LABEL_23;
      }

      v60 = v55;
      v61 = v62;
      sub_26C11D8DC(v60, v62, type metadata accessor for SessionTicket);
      v58 = *(v61 + *(v69 + 48));
      sub_26C11F1F0(v61, type metadata accessor for SessionTicket);
    }

    else
    {
      v58 = *(v55 + 2);
      v59 = *(v55 + 16);
    }

    sub_26C11F1F0(v20, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    v74 = v58;
    v46 = NamedGroup.metadataDescription.getter();
    v47 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
LABEL_30:
    v51 = v47;
    v52 = v42;
    goto LABEL_31;
  }

  sub_26C11D8DC(v39, v9, type metadata accessor for HandshakeState.ServerCertificateState);
  v75 = *(v9 + 34);
  v46 = NamedGroup.metadataDescription.getter();
  v51 = type metadata accessor for HandshakeState.ServerCertificateState;
  v52 = v9;
LABEL_31:
  sub_26C11F1F0(v52, v51);
  return v46;
}

uint64_t HandshakeStateMachine.earlyDataAccepted.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v2 = *(*(ready - 8) + 64);
  MEMORY[0x28223BE20](ready);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HandshakeState(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v0 + *(v21 + 24), v20, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_26C11F1F0(v20, type metadata accessor for HandshakeState);
    return 2;
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_26C11D8DC(v20, v8, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
        v23 = v8[*(v5 + 40)];
        v24 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
        v25 = v8;
      }

      else
      {
        sub_26C11D8DC(v20, v4, type metadata accessor for HandshakeState.ReadyState);
        v23 = v4[*(ready + 40)];
        v24 = type metadata accessor for HandshakeState.ReadyState;
        v25 = v4;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_26C11D8DC(v20, v16, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v23 = v16[*(v13 + 32)];
      v24 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      v25 = v16;
    }

    else
    {
      sub_26C11D8DC(v20, v12, type metadata accessor for HandshakeState.ServerCertificateState);
      v23 = v12[112];
      v24 = type metadata accessor for HandshakeState.ServerCertificateState;
      v25 = v12;
    }

    sub_26C11F1F0(v25, v24);
  }

  return v23;
}

BOOL HandshakeStateMachine.handshakeComplete.getter()
{
  v1 = type metadata accessor for HandshakeState(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v0 + *(v5 + 24), v4, type metadata accessor for HandshakeState);
  v6 = swift_getEnumCaseMultiPayload() > 5;
  sub_26C11F1F0(v4, type metadata accessor for HandshakeState);
  return v6;
}

BOOL HandshakeStateMachine.handshakeStarted.getter()
{
  v1 = type metadata accessor for HandshakeState(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v0 + *(v5 + 24), v4, type metadata accessor for HandshakeState);
  v6 = swift_getEnumCaseMultiPayload() != 0;
  sub_26C11F1F0(v4, type metadata accessor for HandshakeState);
  return v6;
}

double HandshakeStateMachine.clientRandom.getter@<D0>(uint64_t a1@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = xmmword_26C14A1B0;
  v15 = 0;
  v3 = (v1 + *(type metadata accessor for HandshakeStateMachine(0) + 32));
  v4 = v3[1];
  v11[0] = *v3;
  v11[1] = v4;
  v13[3] = MEMORY[0x277D838B0];
  v13[4] = MEMORY[0x277CC9C18];
  v13[0] = v11;
  v13[1] = &v12;
  v5 = __swift_project_boxed_opaque_existential_1(v13, MEMORY[0x277D838B0]);
  v7 = *v5;
  v6 = v5[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(v13);
  v8 = v15;
  result = *&v14;
  *a1 = v14;
  *(a1 + 16) = v8;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26C11ACDC(uint64_t a1)
{
  v3 = type metadata accessor for HandshakeState(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 104);
  v8 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v1 + *(v8 + 24), v6, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v12 = 0x6548726576726573;
    if (EnumCaseMultiPayload == 1)
    {
      v12 = 0x6548746E65696C63;
    }

    if (EnumCaseMultiPayload)
    {
      v10 = v12;
    }

    else
    {
      v10 = 1701602409;
    }

    if (EnumCaseMultiPayload)
    {
      v11 = 0xEB000000006F6C6CLL;
    }

    else
    {
      v11 = 0xE400000000000000;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v11 = 0x800000026C15A460;
      v10 = 0xD000000000000017;
    }

    else
    {
      v11 = 0xEC00000061746144;
      v10 = 0x726F467964616572;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v10 = 0xD000000000000019;
    }

    else
    {
      v10 = 0xD000000000000011;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v11 = 0x800000026C15A4A0;
    }

    else
    {
      v11 = 0x800000026C15A480;
    }
  }

  sub_26C11F1F0(v6, type metadata accessor for HandshakeState);
  v13 = 0xE800000000000000;
  v14 = 0x64656873696E6966;
  if (v7 != 6)
  {
    v14 = 0xD000000000000010;
    v13 = 0x800000026C15A4C0;
  }

  v15 = 0xEB00000000657461;
  v16 = 0x6369666974726563;
  if (v7 != 4)
  {
    v16 = 0xD000000000000011;
    v15 = 0x800000026C15A4E0;
  }

  if (v7 <= 5)
  {
    v14 = v16;
    v13 = v15;
  }

  v17 = 0x800000026C15A520;
  v18 = 0xD000000000000013;
  if (v7 != 2)
  {
    v18 = 0xD000000000000012;
    v17 = 0x800000026C15A500;
  }

  v19 = 0x6548726576726573;
  if (!v7)
  {
    v19 = 0x6548746E65696C63;
  }

  if (v7 <= 1)
  {
    v18 = v19;
    v17 = 0xEB000000006F6C6CLL;
  }

  if (v7 <= 3)
  {
    v20 = v18;
  }

  else
  {
    v20 = v14;
  }

  if (v7 <= 3)
  {
    v21 = v17;
  }

  else
  {
    v21 = v13;
  }

  if (qword_28047A760 != -1)
  {
    swift_once();
  }

  v22 = sub_26C148A9C();
  __swift_project_value_buffer(v22, qword_28047AC70);

  v23 = sub_26C148A7C();
  v24 = sub_26C14900C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v30 = v26;
    *v25 = 136315394;
    v27 = sub_26C0E5DE8(v20, v21, &v30);

    *(v25 + 4) = v27;
    *(v25 + 12) = 2080;
    v28 = sub_26C0E5DE8(v10, v11, &v30);

    *(v25 + 14) = v28;
    _os_log_impl(&dword_26C0B5000, v23, v24, "unexpected message %s in state %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69C3A0](v26, -1, -1);
    MEMORY[0x26D69C3A0](v25, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_26C11B104()
{
  sub_26C148E9C();
  sub_26C11F2F0(&qword_281590328, MEMORY[0x277CC5550]);
  sub_26C0E6678();
  return sub_26C148CEC();
}

uint64_t sub_26C11B1BC(uint64_t a1, __int128 *a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, int a6, uint64_t a7)
{
  v117 = a7;
  LODWORD(v123) = a6;
  v132 = a5;
  v142 = a4;
  v128 = a3;
  v113 = type metadata accessor for RawEPSK(0);
  v9 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v119 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for ImportedPSK(0);
  v11 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v112 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for SessionTicket();
  v13 = *(v134 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v134);
  v116 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_26C148E9C();
  v140 = *(v144 - 8);
  v16 = *(v140 + 64);
  v17 = MEMORY[0x28223BE20](v144);
  v135 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v139 = &v111 - v19;
  v20 = sub_26C148B6C();
  v145 = *(v20 - 8);
  v21 = *(v145 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v127 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v138 = &v111 - v24;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  v125 = *(v126 - 8);
  v25 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v137 = &v111 - v26;
  v120 = type metadata accessor for PSK(0);
  v27 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v29 = &v111 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for GeneralEPSK(0);
  v118 = *(v30 - 8);
  v31 = *(v118 + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v114 = &v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v111 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v40 = &v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = &v111 - v41;
  v43 = sub_26C148BDC();
  v133 = *(v43 - 8);
  v44 = *(v133 + 64);
  v45 = MEMORY[0x28223BE20](v43);
  v143 = &v111 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v141 = &v111 - v47;
  v136 = sub_26C11F2F0(&qword_28047AB38, MEMORY[0x277CC52C8]);
  result = sub_26C148E7C();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  v122 = a2;
  v124 = a1;
  if (result)
  {
    v49 = result;
    v50 = sub_26C148FCC();
    *(v50 + 16) = v49;
    bzero((v50 + 32), v49);
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
  }

  v51 = *(v132 + 16);
  v52 = *(v13 + 48);
  v53 = v134;
  v131 = v13 + 48;
  v130 = v52;
  v54 = v52(v142, 1, v134);
  v55 = v141;
  v115 = v51;
  v121 = v43;
  v129 = v40;
  if (v51)
  {
    if (v54 == 1)
    {
      sub_26C11F050(v132 + ((*(v118 + 80) + 32) & ~*(v118 + 80)), v35, type metadata accessor for GeneralEPSK);
      sub_26C11D8DC(v35, v29, type metadata accessor for PSK);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v57 = (v133 + 16);
      if (EnumCaseMultiPayload == 1)
      {
        v58 = v119;
        sub_26C11D8DC(v29, v119, type metadata accessor for RawEPSK);
        (*v57)(v55, &v58[*(v113 + 20)], v43);
        v59 = type metadata accessor for RawEPSK;
      }

      else
      {
        v58 = v112;
        sub_26C11D8DC(v29, v112, type metadata accessor for ImportedPSK);
        (*v57)(v55, &v58[*(v111 + 20)], v43);
        v59 = type metadata accessor for ImportedPSK;
      }

      sub_26C11F1F0(v58, v59);
      if (v123)
      {
        v60 = 0x646E696220747865;
      }

      else
      {
        v60 = 0x646E696220706D69;
      }

      v61 = v134;
      goto LABEL_18;
    }
  }

  else if (v54 == 1)
  {
    v60 = 0x646E696220736572;
    *&v148 = v50;

    v61 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
    sub_26C0FF1C4(&qword_28047ABE8, &qword_28047A840, &unk_26C14A530);
    sub_26C148BAC();
LABEL_18:
    *&v148 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
    v62 = sub_26C11F2F0(&qword_281590328, MEMORY[0x277CC5550]);
    sub_26C0FF1C4(&qword_28047A850, &qword_28047A840, &unk_26C14A530);
    v63 = v144;
    sub_26C148CEC();
    v64 = v139;
    sub_26C148B3C();
    v65 = v138;
    v123 = v62;
    sub_26C148B2C();
    v66 = *(v140 + 8);
    v120 = v140 + 8;
    v119 = v66;
    (v66)(v64, v63);
    v67 = sub_26C148E7C();
    sub_26C1372CC(v60, 0xEA00000000007265, v67, v143);
    v68 = v145 + 8;
    v69 = *(v145 + 8);
    v69(v65, v20);
    v70 = v129;
    sub_26C0CF314(v142, v129, &qword_28047AC50, "N;");
    v71 = v130(v70, 1, v61);
    v145 = v68;
    if (v71 == 1)
    {
      sub_26C0CF5C4(v70, &qword_28047AC50, "N;");

      v72 = v124;
      if (v115)
      {
        v73 = v114;
        sub_26C11F050(v132 + ((*(v118 + 80) + 32) & ~*(v118 + 80)), v114, type metadata accessor for GeneralEPSK);
        sub_26C0C3830(&v148);
        v75 = *(&v148 + 1);
        v74 = v148;
        sub_26C11CDA0(v143, v128, v148, *(&v148 + 1), v149, 0, &v148);
        sub_26C0BB9B0(v74, v75);
        sub_26C11F1F0(v73, type metadata accessor for GeneralEPSK);
        v76 = v149;
        v146 = v148;
        v147 = v149;
      }

      else
      {
        v146 = xmmword_26C14A1B0;
        v147 = 0;
        v86 = *(v128 + 80);
        v152 = *(v128 + 64);
        v153 = v86;
        v154 = *(v128 + 96);
        v87 = *(v128 + 16);
        v148 = *v128;
        v149 = v87;
        v88 = *(v128 + 48);
        v150 = *(v128 + 32);
        v151 = v88;
        sub_26C1010B0();
        v76 = 0;
      }
    }

    else
    {

      v77 = v116;
      sub_26C11D8DC(v70, v116, type metadata accessor for SessionTicket);
      result = sub_26C14891C();
      v79 = v78 * 1000.0;
      if ((*&v79 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v79 <= -1.0)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (v79 >= 4294967300.0)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v80 = v79;
      v81 = *(v77 + v134[6]);
      v82 = (v77 + v134[8]);
      v83 = *v82;
      v84 = v82[1];
      v85 = v82[2];
      sub_26C0BBAA4(*v82, v84);
      sub_26C11CDA0(v143, v128, v83, v84, v85, v81 + v80, &v148);
      sub_26C0BB9B0(v83, v84);
      sub_26C11F1F0(v77, type metadata accessor for SessionTicket);
      v76 = v149;
      v146 = v148;
      v147 = v149;
      v72 = v124;
    }

    result = sub_26C148B3C();
    v89 = *(&v146 + 1) >> 62;
    if ((*(&v146 + 1) >> 62) > 1)
    {
      if (v89 == 2)
      {
        v90 = *(v146 + 24);
      }

      else
      {
        v90 = 0;
      }
    }

    else if (v89)
    {
      v90 = v146 >> 32;
    }

    else
    {
      v90 = BYTE14(v146);
    }

    if (v90 >= v76)
    {
      v91 = sub_26C14889C();
      v93 = v92;
      sub_26C11E5B4(v91, v92);
      sub_26C0BB9B0(v91, v93);
      v94 = v138;
      v95 = v144;
      sub_26C148B2C();
      v96 = sub_26C148E7C();
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A948, &qword_26C14A7F0);
      v98 = *(v97 + 44);
      v99 = v97;
      v134 = v97;
      v142 = v69;
      v100 = v137;
      sub_26C1372CC(0x6661727420652063, 0xEB00000000636966, v96, v72 + v98);
      v101 = sub_26C148E7C();
      sub_26C1372CC(0x616D207078652065, 0xEC00000072657473, v101, v72 + *(v99 + 48));
      v102 = v139;
      sub_26C148B3C();
      v103 = v127;
      sub_26C148B2C();
      (v119)(v102, v95);
      v104 = sub_26C148E7C();
      v105 = v134;
      sub_26C1372CC(0x64657669726564, 0xE700000000000000, v104, v72 + v134[9]);
      v106 = v142;
      v142(v103, v20);
      v106(v94, v20);
      (*(v125 + 8))(v100, v126);
      v107 = v133;
      v108 = v121;
      (*(v133 + 8))(v141, v121);
      (*(v140 + 32))(v72, v135, v95);
      result = (*(v107 + 32))(v72 + v105[10], v143, v108);
      v109 = v147;
      v110 = v122;
      *v122 = v146;
      *(v110 + 2) = v109;
      return result;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_26C0CF314(v142, v42, &qword_28047AC50, "N;");
  result = v130(v42, 1, v53);
  if (result != 1)
  {
    v60 = 0x646E696220736572;
    (*(v133 + 16))(v55, &v42[v53[9]], v43);
    sub_26C11F1F0(v42, type metadata accessor for SessionTicket);
    v61 = v53;
    goto LABEL_18;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_26C11C240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v87) = a6;
  v85 = a5;
  v86 = a3;
  v97 = a7;
  v98 = a2;
  v9 = sub_26C148E9C();
  v100 = *(v9 - 8);
  v10 = *(v100 + 64);
  MEMORY[0x28223BE20](v9);
  v92 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C148B6C();
  v94 = *(v12 - 8);
  v95 = v12;
  v13 = *(v94 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v84 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v79 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  v91 = *(v18 - 8);
  v19 = *(v91 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v82 = v79 - v23;
  v24 = sub_26C148BDC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v81 = v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = v79 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = v79 - v32;
  v99 = v79 - v32;
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A948, &qword_26C14A7F0) + 36);
  v88 = v25;
  v89 = v24;
  v35 = *(v25 + 16);
  v96 = a1;
  v36 = v33;
  v37 = v100;
  v38 = v35(v36, a1 + v34, v24);
  v93 = v18;
  v90 = v22;
  if ((v87 & 1) == 0)
  {
    goto LABEL_10;
  }

  v80 = a4;
  v87 = v9;
  if (qword_28047A770 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v39 = sub_26C148A9C();
    __swift_project_value_buffer(v39, qword_28047AD78);
    v40 = sub_26C148A7C();
    v41 = sub_26C148FFC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26C0B5000, v40, v41, "authenticating with a psk failed (resumption or external psk)", v42, 2u);
      MEMORY[0x26D69C3A0](v42, -1, -1);
    }

    v43 = sub_26C11F2F0(&qword_28047AB38, MEMORY[0x277CC52C8]);
    result = sub_26C148E7C();
    if (result < 0)
    {
      break;
    }

    v79[1] = v43;
    v45 = v31;
    v46 = v95;
    if (result)
    {
      v47 = result;
      v48 = sub_26C148FCC();
      *(v48 + 16) = v47;
      bzero((v48 + 32), v47);
    }

    else
    {
      v48 = MEMORY[0x277D84F90];
    }

    v101 = v48;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
    sub_26C0FF1C4(&qword_28047ABE8, &qword_28047A840, &unk_26C14A530);
    sub_26C148BAC();
    v101 = v48;
    sub_26C11F2F0(&qword_281590328, MEMORY[0x277CC5550]);
    sub_26C0FF1C4(&qword_28047A850, &qword_28047A840, &unk_26C14A530);
    v49 = v82;
    v9 = v87;
    sub_26C148CEC();

    v50 = v92;
    sub_26C148B3C();
    sub_26C148B2C();
    v37 = v100;
    (*(v100 + 8))(v50, v9);
    v51 = sub_26C148E7C();
    v31 = v81;
    sub_26C1372CC(0x64657669726564, 0xE700000000000000, v51, v81);
    (*(v94 + 8))(v17, v46);
    (*(v91 + 8))(v49, v93);
    v53 = v88;
    v52 = v89;
    v54 = *(v88 + 8);
    v54(v45, v89);
    v55 = v99;
    v54(v99, v52);
    v38 = (*(v53 + 32))(v55, v31, v52);
    a4 = v80;
LABEL_10:
    MEMORY[0x28223BE20](v38);
    v79[-2] = v98;
    sub_26C148B8C();
    (*(v37 + 16))(v97, v96, v9);
    v56 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      v57 = v85;
      v58 = v86;
      if (v56 == 2)
      {
        v59 = *(v86 + 24);
      }

      else
      {
        v59 = 0;
      }
    }

    else
    {
      v57 = v85;
      v58 = v86;
      if (v56)
      {
        v59 = v86 >> 32;
      }

      else
      {
        v59 = BYTE6(a4);
      }
    }

    if (v59 >= v57)
    {
      v60 = sub_26C14889C();
      v62 = v61;
      sub_26C0BB9B0(v58, a4);
      sub_26C0BBAA4(v60, v62);
      v63 = v97;
      sub_26C11E5B4(v60, v62);
      sub_26C0BB9B0(v60, v62);
      sub_26C0BB9B0(v60, v62);
      v87 = sub_26C11F2F0(&qword_281590328, MEMORY[0x277CC5550]);
      sub_26C148B2C();
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
      v65 = *(v64 + 40);
      v86 = v64;
      sub_26C11F2F0(&qword_28047AB38, MEMORY[0x277CC52C8]);
      v66 = v95;
      v67 = sub_26C148E7C();
      v68 = v100;
      v69 = v90;
      v83 = v17;
      sub_26C1372CC(0x6172742073682063, 0xEC00000063696666, v67, v63 + v65);
      v70 = *(v64 + 44);
      v71 = sub_26C148E7C();
      sub_26C1372CC(0x6172742073682073, 0xEC00000063696666, v71, v63 + v70);
      v72 = v92;
      sub_26C148B3C();
      v73 = v84;
      sub_26C148B2C();
      (*(v68 + 8))(v72, v9);
      v74 = *(v86 + 36);
      v75 = sub_26C148E7C();
      sub_26C1372CC(0x64657669726564, 0xE700000000000000, v75, v63 + v74);
      sub_26C0CF5C4(v96, &qword_28047A948, &qword_26C14A7F0);
      v76 = *(v94 + 8);
      v76(v73, v66);
      v76(v83, v66);
      (*(v91 + 8))(v69, v93);
      v77 = v89;
      v78 = *(v88 + 8);
      v78(v99, v89);
      return (v78)(v98, v77);
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t sub_26C11CC58@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = a2;
    v7 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v7 == 2)
      {
        a2 = *(a2 + 16);
        v8 = *(v5 + 24);
      }

      else
      {
        a2 = 0;
        v8 = 0;
      }
    }

    else
    {
      if (v7)
      {
        a2 = a2;
      }

      else
      {
        a2 = 0;
      }

      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(a3);
      }
    }

    v9 = -result;
    v10 = sub_26C0DE118(v8, a2, v5, a3);
    if (v10 > 0 || v10 <= v9)
    {
      v11 = sub_26C0DE1CC(v8, v9, v5, a3);
      if (v7 > 1)
      {
        v12 = 0;
        if (v7 == 2)
        {
          v12 = *(v5 + 16);
        }
      }

      else if (v7)
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      if (v11 >= v12)
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (v7 <= 1)
    {
LABEL_26:
      v14 = sub_26C14889C();
      v16 = v15;
      result = sub_26C0BB9B0(v5, a3);
      *a4 = v14;
      a4[1] = v16;
      return result;
    }

    if (v7 == 2)
    {
      v13 = *(v5 + 16);
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C11CDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W6>, uint64_t a7@<X8>)
{
  v107 = a1;
  v91 = a7;
  v12 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  v110 = *(v13 - 8);
  v111 = v13;
  v14 = *(v110 + 64);
  MEMORY[0x28223BE20](v13);
  v109 = &v89 - v15;
  v16 = sub_26C148BDC();
  v101 = *(v16 - 8);
  v102 = v16;
  v17 = *(v101 + 64);
  MEMORY[0x28223BE20](v16);
  v113 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26C148E9C();
  v105 = *(v19 - 8);
  v106 = v19;
  v20 = *(v105 + 64);
  MEMORY[0x28223BE20](v19);
  v104 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_26C148B6C();
  v97 = *(v22 - 8);
  v23 = *(v97 + 64);
  MEMORY[0x28223BE20](v22);
  v112 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_26C11F2F0(&qword_28047AB38, MEMORY[0x277CC52C8]);
  v116 = v22;
  v26 = sub_26C148E7C();
  *&v129[0] = sub_26C11F250(v26);
  *(&v129[0] + 1) = v27;
  sub_26C11E290(v129, 0);
  v103 = 0;
  v115 = *(&v129[0] + 1);
  v28 = *&v129[0];
  v29 = *(&v129[0] + 1) >> 62;
  v30 = v25;
  if ((*(&v129[0] + 1) >> 62) > 1)
  {
    if (v29 == 2)
    {
      v12 = *(*&v129[0] + 16);
    }
  }

  else if (v29)
  {
    v12 = SLODWORD(v129[0]);
  }

  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A910, &qword_26C14A7B8);
  v31 = swift_allocObject();
  v117 = xmmword_26C14A550;
  *(v31 + 16) = xmmword_26C14A550;
  *(v31 + 32) = a3;
  *(v31 + 40) = a4;
  v99 = a5;
  *(v31 + 48) = a5;
  v100 = a6;
  *(v31 + 56) = a6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A908, &qword_26C14A7B0);
  v32 = swift_allocObject();
  *(v32 + 16) = v117;
  v33 = v115;
  *(v32 + 32) = v28;
  *(v32 + 40) = v33;
  *(v32 + 48) = v12;
  v128 = 0;
  v34 = v28;
  v35 = *(a2 + 96);
  v98 = a3;
  sub_26C0BBAA4(a3, a4);
  v108 = v34;
  sub_26C0BBAA4(v34, v33);
  v114 = v31;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v96 = a4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_26C0CD87C(0, *(v35 + 2) + 1, 1, v35);
  }

  v38 = *(v35 + 2);
  v37 = *(v35 + 3);
  if (v38 >= v37 >> 1)
  {
    v35 = sub_26C0CD87C((v37 > 1), v38 + 1, 1, v35);
  }

  *(v35 + 2) = v38 + 1;
  v39 = &v35[88 * v38];
  *(v39 + 4) = v114;
  *(v39 + 5) = v32;
  v39[48] = v128;
  v39[112] = -96;
  *(a2 + 96) = v35;
  v126 = xmmword_26C14A1B0;
  v127 = 0;
  v40 = *(a2 + 80);
  v129[4] = *(a2 + 64);
  v129[5] = v40;
  v130 = v35;
  v41 = *(a2 + 16);
  v129[0] = *a2;
  v129[1] = v41;
  v42 = *(a2 + 48);
  v129[2] = *(a2 + 32);
  v129[3] = v42;
  sub_26C1010B0();
  if (qword_28047A770 != -1)
  {
    swift_once();
  }

  v43 = sub_26C148A9C();
  __swift_project_value_buffer(v43, qword_28047AD78);
  v44 = sub_26C148A7C();
  v45 = sub_26C148FFC();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = a2;
    v47 = swift_slowAlloc();
    *v47 = 134217984;
    *(v47 + 4) = sub_26C148E7C() + 3;
    _os_log_impl(&dword_26C0B5000, v44, v45, "bindersarray length should be %ld", v47, 0xCu);
    v48 = v47;
    a2 = v46;
    MEMORY[0x26D69C3A0](v48, -1, -1);
  }

  v49 = *(&v126 + 1) >> 62;
  if ((*(&v126 + 1) >> 62) > 1)
  {
    if (v49 != 2)
    {
      goto LABEL_22;
    }

    v50 = *(v126 + 24);
  }

  else
  {
    if (!v49)
    {
      goto LABEL_22;
    }

    v50 = v126 >> 32;
  }

  if (v50 < 0)
  {
    __break(1u);
  }

LABEL_22:
  v90 = a2;
  v93 = v32;
  v51 = sub_26C14889C();
  v53 = v52;
  v54 = sub_26C148E7C();
  sub_26C11CC58(v54 + 3, v51, v53, &v118);
  v56 = *(&v118 + 1);
  v55 = v118;
  sub_26C11F2F0(&qword_281590328, MEMORY[0x277CC5550]);
  v57 = v104;
  v58 = v106;
  sub_26C148B3C();
  sub_26C0BBAA4(v55, v56);
  v59 = v30;
  sub_26C11E5B4(v55, v56);
  v103 = v55;
  v92 = v56;
  sub_26C0BB9B0(v55, v56);
  sub_26C148B2C();
  (*(v105 + 8))(v57, v58);
  v60 = sub_26C148E7C();
  v61 = v113;
  v62 = sub_26C136F6C(0x64656873696E6966, 0xE800000000000000, MEMORY[0x277D84F90], v60, v113);
  MEMORY[0x28223BE20](v62);
  *(&v89 - 2) = v61;
  sub_26C11F2F0(&qword_28047A9D0, MEMORY[0x277CC52C8]);
  v63 = v109;
  v64 = v111;
  sub_26C14880C();
  *(&v119 + 1) = v64;
  v65 = sub_26C0FF1C4(&qword_28047AB40, &qword_28047AB18, &unk_26C14C110);
  *&v120 = v65;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v118);
  v67 = v110;
  (*(v110 + 16))(boxed_opaque_existential_1, v63, v64);
  __swift_project_boxed_opaque_existential_1(&v118, *(&v119 + 1));
  sub_26C14880C();
  (*(v67 + 8))(v63, v64);
  v68 = v124;
  v69 = v125;
  __swift_destroy_boxed_opaque_existential_1(&v118);
  v70 = v69 >> 62;
  if ((v69 >> 62) > 1)
  {
    if (v70 == 2)
    {
      v71 = *(v68 + 16);
      sub_26C0BB9B0(v108, v115);
      goto LABEL_28;
    }
  }

  else if (v70)
  {
    sub_26C0BB9B0(v108, v115);
    v71 = v68;
    goto LABEL_28;
  }

  sub_26C0BB9B0(v108, v115);
  v71 = 0;
LABEL_28:
  *&v118 = v68;
  *(&v118 + 1) = v69;
  *&v119 = v71;
  v72 = *(&v126 + 1) >> 62;
  if ((*(&v126 + 1) >> 62) > 1)
  {
    if (v72 == 2)
    {
      v73 = *(v126 + 24);
      if (v70 <= 1)
      {
LABEL_39:
        if (v70)
        {
          v74 = v68 >> 32;
        }

        else
        {
          v74 = BYTE6(v69);
        }

        goto LABEL_43;
      }
    }

    else
    {
      v73 = 0;
      if (v70 <= 1)
      {
        goto LABEL_39;
      }
    }
  }

  else if (v72)
  {
    v73 = v126 >> 32;
    if (v70 <= 1)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v73 = BYTE14(v126);
    if (v70 <= 1)
    {
      goto LABEL_39;
    }
  }

  if (v70 == 2)
  {
    v74 = *(v68 + 24);
  }

  else
  {
    v74 = 0;
  }

LABEL_43:
  v75 = __OFSUB__(v74, v71);
  v76 = v74 - v71;
  if (v75)
  {
    __break(1u);
  }

  else
  {
    v56 = v130;
    v77 = v73 - v76;
    sub_26C0BBAA4(v68, v69);
    sub_26C0DEB70(&v118, v77);
    sub_26C0BB9B0(v118, *(&v118 + 1));
    v59 = *(v56 + 2);
    v70 = swift_allocObject();
    *(v70 + 16) = v117;
    v79 = v98;
    v78 = v99;
    v80 = v96;
    *(v70 + 32) = v98;
    *(v70 + 40) = v80;
    *(v70 + 48) = v78;
    *(v70 + 56) = v100;
    v65 = swift_allocObject();
    *(v65 + 16) = v117;
    *(v65 + 32) = v68;
    *(v65 + 40) = v69;
    *(v65 + 48) = v71;
    sub_26C0BBAA4(v79, v80);
    sub_26C0BBAA4(v68, v69);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_45;
    }
  }

  v56 = sub_26C11E4F8(v56);
LABEL_45:
  sub_26C0BB9B0(v103, v92);

  LOBYTE(v124) = 0;

  (*(v97 + 8))(v112, v116);
  result = (*(v101 + 8))(v113, v102);
  if (v59)
  {
    if (v59 <= *(v56 + 2))
    {
      v82 = &v56[88 * v59];
      v83 = *(v82 - 40);
      v118 = *(v82 - 56);
      v119 = v83;
      v84 = *(v82 - 24);
      v85 = *(v82 - 8);
      v86 = *(v82 + 8);
      v123 = v82[24];
      v121 = v85;
      v122 = v86;
      v120 = v84;
      *(v82 - 7) = v70;
      *(v82 - 6) = v65;
      *(v82 - 40) = v124;
      v82[24] = -96;
      sub_26C0BE468(&v118);
      result = sub_26C0BB9B0(v68, v69);
      v87 = v91;
      *(v90 + 96) = v56;
      v88 = v127;
      *v87 = v126;
      *(v87 + 16) = v88;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C11D848(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26C11D8AC@<X0>(uint64_t (*a1)(void)@<X0>, _WORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_26C11D8DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C11D97C(_WORD *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  sub_26C1491AC();
  sub_26C1491DC();
  v11 = sub_26C14920C();
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
    sub_26C11DCE4(a2, v13, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_26C11DA9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_26C14906C();
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
      sub_26C1491AC();
      sub_26C1491DC();
      result = sub_26C14920C();
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

uint64_t sub_26C11DCE4(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
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
    sub_26C11DA9C(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = sub_26C11DE54(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    sub_26C11DF84(v7 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_26C1491AC();
  sub_26C1491DC();
  result = sub_26C14920C();
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
  result = sub_26C14913C();
  __break(1u);
  return result;
}

void *sub_26C11DE54(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_26C14905C();
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

uint64_t sub_26C11DF84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_26C14906C();
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
      sub_26C1491AC();
      sub_26C1491DC();
      result = sub_26C14920C();
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

uint64_t sub_26C11E1C8@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_26C13ECD0(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_26C1487FC();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_26C1487AC();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_26C14885C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t *sub_26C11E290(uint64_t *result, int a2)
{
  v3 = result;
  v24 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_26C0BB9B0(v5, v4);
      __b = v5;
      v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_26C14A1B0;
      sub_26C0BB9B0(0, 0xC000000000000000);
      result = sub_26C11E50C(&__b, a2);
      v7 = __b;
      v8 = v23 | 0x4000000000000000;
    }

    else
    {
      sub_26C0BB9B0(v5, v4);
      __b = v5;
      LOWORD(v23) = v4;
      BYTE2(v23) = BYTE2(v4);
      BYTE3(v23) = BYTE3(v4);
      BYTE4(v23) = BYTE4(v4);
      BYTE5(v23) = BYTE5(v4);
      BYTE6(v23) = BYTE6(v4);
      result = memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v23 | ((WORD2(v23) | (BYTE6(v23) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    goto LABEL_14;
  }

  if (v6 != 2)
  {
LABEL_14:
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = *result;

  sub_26C0BB9B0(v5, v4);
  __b = v5;
  v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_26C14A1B0;
  sub_26C0BB9B0(0, 0xC000000000000000);
  sub_26C14881C();
  v10 = v23;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  result = sub_26C1487BC();
  if (result)
  {
    v13 = result;
    v14 = sub_26C1487EC();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_26C1487DC();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = memset(v13 + v15, a2, v19);
        *v3 = __b;
        v3[1] = v10 | 0x8000000000000000;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C11E50C(int *a1, int a2)
{
  result = sub_26C14882C();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_26C1487BC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_26C1487EC();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_26C1487DC();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

uint64_t sub_26C11E5B4(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_26C148E9C();
      sub_26C11F2F0(&qword_281590328, MEMORY[0x277CC5550]);
      result = sub_26C148B1C();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_26C11E794(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C11E794(uint64_t a1, uint64_t a2)
{
  result = sub_26C1487BC();
  if (!result || (result = sub_26C1487EC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26C1487DC();
      sub_26C148E9C();
      sub_26C11F2F0(&qword_281590328, MEMORY[0x277CC5550]);
      return sub_26C148B1C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C11E874(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26C14912C() & 1;
  }
}

unint64_t sub_26C11E8F4()
{
  result = type metadata accessor for HandshakeState(319);
  if (v1 <= 0x3F)
  {
    result = sub_26C11E9A8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_26C11E9A8()
{
  result = qword_281591F50;
  if (!qword_281591F50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281591F50);
  }

  return result;
}

uint64_t sub_26C11EA2C()
{
  result = type metadata accessor for HandshakeStateMachine(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ServerHandshakeStateMachine(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26C11EAA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_26C11EB04(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_26C11EC84(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_26C11EEC8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_26C14909C();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C11EF18(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
  v10 = sub_26C0FF1C4(&qword_28047ABE8, &qword_28047A840, &unk_26C14A530);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_26C13EA50(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_26C11F050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_26C11F168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_26C0D32AC(sub_26C11F1D0, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_26C11F1F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C11F250(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_26C13ECB0(result);
    }

    else
    {
      v2 = sub_26C1487FC();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_26C1487CC();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_26C14885C();
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

uint64_t sub_26C11F2F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SessionTicket()
{
  result = qword_281591DD0;
  if (!qword_281591DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26C11F3DC()
{
  sub_26C14896C();
  if (v0 <= 0x3F)
  {
    sub_26C148BDC();
    if (v1 <= 0x3F)
    {
      sub_26C11F4C0();
      if (v2 <= 0x3F)
      {
        type metadata accessor for PeerCertificateBundle(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26C11F4C0()
{
  if (!qword_281592488[0])
  {
    v0 = sub_26C14902C();
    if (!v1)
    {
      atomic_store(v0, qword_281592488);
    }
  }
}

uint64_t sub_26C11F510(uint64_t a1, unint64_t **a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a2 - a1;
  if (!a1)
  {
    v2 = 0;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v15 = bswap64(v2);
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  v18 = MEMORY[0x277D838B0];
  v19 = MEMORY[0x277CC9C18];
  v16 = &v15;
  v17 = &v16;
  v7 = __swift_project_boxed_opaque_existential_1(&v16, MEMORY[0x277D838B0]);
  v9 = *v7;
  v8 = v7[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  v18 = v5;
  v19 = v6;
  v16 = a1;
  v17 = a2;
  v10 = __swift_project_boxed_opaque_existential_1(&v16, v5);
  v12 = *v10;
  v11 = v10[1];
  sub_26C14888C();
  result = __swift_destroy_boxed_opaque_existential_1(&v16);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C11F5FC()
{
  v53 = *MEMORY[0x277D85DE8];
  v51 = xmmword_26C14A1B0;
  v52 = 0;
  sub_26C14890C();
  v44 = bswap64(v1);
  v2 = MEMORY[0x277D838B0];
  v3 = MEMORY[0x277CC9C18];
  v49 = MEMORY[0x277D838B0];
  v50 = MEMORY[0x277CC9C18];
  v47 = &v44;
  *&v48 = &v45;
  v4 = __swift_project_boxed_opaque_existential_1(&v47, MEMORY[0x277D838B0]);
  v6 = *v4;
  v5 = v4[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v47);
  v7 = type metadata accessor for SessionTicket();
  LODWORD(v44) = bswap32(*(v0 + v7[5]));
  v49 = v2;
  v50 = v3;
  v47 = &v44;
  *&v48 = &v44 + 4;
  v8 = __swift_project_boxed_opaque_existential_1(&v47, v2);
  v10 = *v8;
  v9 = v8[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v47);
  LODWORD(v44) = bswap32(*(v0 + v7[6]));
  v49 = v2;
  v50 = v3;
  v47 = &v44;
  *&v48 = &v44 + 4;
  v11 = __swift_project_boxed_opaque_existential_1(&v47, v2);
  v13 = *v11;
  v12 = v11[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v47);
  v14 = v0 + v7[7];
  v15 = *v14;
  v47 = v15;
  v48 = *(v14 + 8);
  v16 = v48;
  sub_26C0BBAA4(v15, v48);
  sub_26C1201BC(&v47);
  sub_26C0BB9B0(v15, v16);
  v17 = v0 + v7[8];
  v18 = *v17;
  v47 = v18;
  v48 = *(v17 + 8);
  v19 = v48;
  sub_26C0BBAA4(v18, v48);
  sub_26C1201BC(&v47);
  sub_26C0BB9B0(v18, v19);
  v20 = v7[9];
  v46 = &v51;
  sub_26C148B8C();
  LODWORD(v44) = bswap32(*(v0 + v7[10]));
  v49 = v2;
  v50 = v3;
  v47 = &v44;
  *&v48 = &v44 + 4;
  v21 = __swift_project_boxed_opaque_existential_1(&v47, v2);
  v23 = *v21;
  v22 = v21[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v47);
  LOWORD(v44) = bswap32(*(v0 + v7[11])) >> 16;
  v49 = v2;
  v50 = v3;
  v47 = &v44;
  *&v48 = &v44 + 2;
  v24 = __swift_project_boxed_opaque_existential_1(&v47, v2);
  v26 = *v24;
  v25 = v24[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v47);
  LOWORD(v44) = bswap32(*(v0 + v7[12])) >> 16;
  v49 = v2;
  v50 = v3;
  v47 = &v44;
  *&v48 = &v44 + 2;
  v27 = __swift_project_boxed_opaque_existential_1(&v47, v2);
  v29 = *v27;
  v28 = v27[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v47);
  v30 = (v0 + v7[13]);
  v31 = v30[1];
  if (v31)
  {
    v32 = *v30;
    LOBYTE(v44) = -1;
    v49 = v2;
    v50 = v3;
    v47 = &v44;
    *&v48 = &v44 + 1;
    v33 = __swift_project_boxed_opaque_existential_1(&v47, v2);
    v34 = *v33;
    v35 = v33[1];

    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v47);
    sub_26C0D7104(v32, v31);
  }

  else
  {
    LOBYTE(v44) = 0;
    v49 = v2;
    v50 = v3;
    v47 = &v44;
    *&v48 = &v44 + 1;
    v36 = __swift_project_boxed_opaque_existential_1(&v47, v2);
    v38 = *v36;
    v37 = v36[1];
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  sub_26C0D1520(v0 + v7[14]);
  v39 = *(&v51 + 1) >> 62;
  if ((*(&v51 + 1) >> 62) > 1)
  {
    if (v39 == 2)
    {
      v40 = *(v51 + 24);
    }

    else
    {
      v40 = 0;
    }
  }

  else if (v39)
  {
    v40 = v51 >> 32;
  }

  else
  {
    v40 = BYTE14(v51);
  }

  if (v40 < v52)
  {
    __break(1u);
  }

  v41 = sub_26C14889C();
  sub_26C0BB9B0(v51, *(&v51 + 1));
  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

uint64_t sub_26C11F9F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC58, &qword_26C14D288);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for PeerCertificateBundle(0);
  v79 = *(v11 - 8);
  v12 = *(v79 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_26C148BDC();
  v15 = *(*(v86 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v86);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v65 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v65 - v22;
  v24 = 0;
  v83 = a1;
  v84 = a2;
  v25 = a2 >> 62;
  v27 = v26;
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v24 = *(a1 + 16);
    }
  }

  else if (v25)
  {
    v24 = a1;
  }

  v85 = v24;
  v77 = sub_26C136A68();
  if (v28)
  {
    goto LABEL_38;
  }

  v76 = sub_26C13675C();
  if ((v76 & 0x100000000) != 0)
  {
    goto LABEL_38;
  }

  v75 = sub_26C13675C();
  if ((v75 & 0x100000000) != 0)
  {
    goto LABEL_38;
  }

  v29 = sub_26C136A68();
  if (v30)
  {
    goto LABEL_38;
  }

  if ((v29 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  sub_26C0DE248(v29, &v81);
  if (*(&v81 + 1) >> 60 != 15)
  {
    v73 = v81;
    v74 = v82;
    result = sub_26C136A68();
    if (v32)
    {
LABEL_15:
      v34 = *(&v73 + 1);
      v33 = v73;
LABEL_37:
      sub_26C0BB344(v33, v34);
      goto LABEL_38;
    }

    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      sub_26C0DE248(result, &v81);
      if (*(&v81 + 1) >> 60 == 15)
      {
        goto LABEL_15;
      }

      v71 = v81;
      v72 = v82;
      result = sub_26C136A68();
      if (v35)
      {
        goto LABEL_36;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        result = sub_26C0DE248(result, &v81);
        v36 = *(&v81 + 1);
        if (*(&v81 + 1) >> 60 != 15)
        {
          v37 = *(&v81 + 1) >> 62;
          if ((*(&v81 + 1) >> 62) > 1)
          {
            if (v37 == 2)
            {
              v38 = *(v81 + 24);
            }

            else
            {
              v38 = 0;
            }
          }

          else if (v37)
          {
            v38 = v81 >> 32;
          }

          else
          {
            v38 = BYTE14(v81);
          }

          if (v38 >= v82)
          {
            v69 = v81;
            v70 = v82;
            *&v81 = sub_26C14889C();
            *(&v81 + 1) = v39;
            sub_26C148BAC();
            sub_26C0BB344(v69, v36);
            v70 = v27;
            v40 = v27 + 32;
            v41 = *(v27 + 32);
            v42 = v18;
            v43 = v86;
            v41(v21, v42, v86);
            v69 = v40;
            v68 = v41;
            v41(v23, v21, v43);
            v44 = sub_26C13675C();
            if ((v44 & 0x100000000) != 0)
            {
              (*(v70 + 8))(v23, v43);
              goto LABEL_36;
            }

            v45 = v70;
            v67 = v44;
            v46 = sub_26C1365D4();
            if ((v46 & 0x10000) != 0)
            {
              (*(v45 + 8))(v23, v43);
              goto LABEL_36;
            }

            LOWORD(v21) = v46;
            v47 = sub_26C1365D4();
            if ((v47 & 0x10000) != 0)
            {
              goto LABEL_33;
            }

            LOWORD(v18) = v47;
            v48 = sub_26C1368E8();
            if ((v48 & 0x100) != 0)
            {
              goto LABEL_33;
            }

            if (v48)
            {
              v65 = sub_26C0D7260();
              v66 = v49;
              if (!v49)
              {
LABEL_33:
                (*(v45 + 8))(v23, v86);
                goto LABEL_36;
              }
            }

            else
            {
              v65 = 0;
              v66 = 0;
            }

            v54 = v80;
            sub_26C0D1800(&v81, v10);
            if (v54)
            {
              sub_26C0BB344(v73, *(&v73 + 1));
              sub_26C0BB344(v71, *(&v71 + 1));
              sub_26C120568(v65, v66);
              (*(v45 + 8))(v23, v86);
              result = sub_26C0BB9B0(v83, v84);
              v55 = v82;
              *a3 = v81;
              *(a3 + 16) = v55;
              return result;
            }

            if ((*(v79 + 48))(v10, 1, v11) == 1)
            {
              (*(v45 + 8))(v23, v86);
              sub_26C0BB344(v73, *(&v73 + 1));
              sub_26C0BB344(v71, *(&v71 + 1));
              sub_26C120568(v65, v66);
              sub_26C12057C(v10);
              goto LABEL_38;
            }

LABEL_49:
            v56 = type metadata accessor for SessionTicket();
            v57 = v78;
            v58 = (v78 + v56[13]);
            sub_26C1205E4(v10, v14);
            sub_26C1488FC();
            sub_26C0BB9B0(v83, v84);
            v59 = v75;
            *(v57 + v56[5]) = v76;
            *(v57 + v56[6]) = v59;
            v60 = (v57 + v56[7]);
            v61 = *(&v73 + 1);
            *v60 = v73;
            v60[1] = v61;
            v60[2] = v74;
            v62 = (v57 + v56[8]);
            v63 = *(&v71 + 1);
            *v62 = v71;
            v62[1] = v63;
            v62[2] = v72;
            v68(v57 + v56[9], v23, v86);
            *(v57 + v56[10]) = v67;
            *(v57 + v56[11]) = v21;
            *(v57 + v56[12]) = v18;
            v64 = v66;
            *v58 = v65;
            v58[1] = v64;
            return sub_26C1205E4(v14, v57 + v56[14]);
          }

LABEL_52:
          __break(1u);
          return result;
        }

LABEL_36:
        sub_26C0BB344(v73, *(&v73 + 1));
        v34 = *(&v71 + 1);
        v33 = v71;
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

LABEL_38:
  if (qword_28047A768 != -1)
  {
    swift_once();
  }

  v50 = sub_26C148A9C();
  __swift_project_value_buffer(v50, qword_28047AD38);
  v51 = sub_26C148A7C();
  v52 = sub_26C14900C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_26C0B5000, v51, v52, "Unable to parse decrypted session ticket", v53, 2u);
    MEMORY[0x26D69C3A0](v53, -1, -1);
  }

  *a3 = xmmword_26C14A910;
  *(a3 + 16) = 2;
  v81 = xmmword_26C14A910;
  LOBYTE(v82) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  return sub_26C0BB9B0(v83, v84);
}

uint64_t sub_26C120138()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AD38);
  __swift_project_value_buffer(v0, qword_28047AD38);
  return sub_26C148A8C();
}

uint64_t sub_26C1201BC(uint64_t *a1)
{
  v19[5] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v1 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = BYTE6(v2);
    if (v4)
    {
      v5 = v1 >> 32;
    }
  }

  v6 = __OFSUB__(v5, v3);
  v7 = v5 - v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = bswap64(v7);
  v19[3] = MEMORY[0x277D838B0];
  v19[4] = MEMORY[0x277CC9C18];
  v19[0] = &v18;
  v19[1] = v19;
  v8 = __swift_project_boxed_opaque_existential_1(v19, MEMORY[0x277D838B0]);
  v10 = *v8;
  v9 = v8[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(v19);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v12 = *(v1 + 16);
      v11 = *(v1 + 24);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    if (v4)
    {
      v11 = v1 >> 32;
    }

    else
    {
      v11 = BYTE6(v2);
    }

    if (v4)
    {
      v12 = v1;
    }

    else
    {
      v12 = 0;
    }
  }

  if (v11 < v3 || v11 < v12)
  {
LABEL_25:
    __break(1u);
  }

  v13 = sub_26C14889C();
  v15 = v14;
  sub_26C1488CC();
  result = sub_26C0BB9B0(v13, v15);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C12032C(uint64_t a1, uint64_t a2)
{
  if ((sub_26C14894C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SessionTicket();
  if (*(a1 + v4[5]) != *(a2 + v4[5]))
  {
    return 0;
  }

  v5 = v4;
  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v6 = v4[7];
  v22 = *(a1 + v6);
  v23 = *(a1 + v6 + 8);
  v7 = a2 + v6;
  v20 = *v7;
  v21 = *(v7 + 8);
  sub_26C0BBAA4(v22, v23);
  sub_26C0BBAA4(v20, v21);
  v8 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v22, &v20);
  sub_26C0BB9B0(v20, v21);
  sub_26C0BB9B0(v22, v23);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v5[8];
  v22 = *(a1 + v9);
  v23 = *(a1 + v9 + 8);
  v10 = a2 + v9;
  v20 = *v10;
  v11 = v20;
  v21 = *(v10 + 8);
  v19 = v21;
  sub_26C0BBAA4(v22, v23);
  sub_26C0BBAA4(v11, v19);
  LOBYTE(v11) = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v22, &v20);
  sub_26C0BB9B0(v20, v21);
  sub_26C0BB9B0(v22, v23);
  if ((v11 & 1) == 0 || (MEMORY[0x26D69B8D0](a1 + v5[9], a2 + v5[9]) & 1) == 0 || *(a1 + v5[10]) != *(a2 + v5[10]) || *(a1 + v5[11]) != *(a2 + v5[11]) || *(a1 + v5[12]) != *(a2 + v5[12]))
  {
    return 0;
  }

  v12 = v5[13];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (v14)
  {
    if (v16 && (*v13 == *v15 && v14 == v16 || (sub_26C14912C() & 1) != 0))
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v16)
  {
    return 0;
  }

LABEL_15:
  v17 = v5[14];

  return sub_26C0D3518(a1 + v17, a2 + v17);
}

uint64_t sub_26C120568(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_26C12057C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC58, &qword_26C14D288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C1205E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_26C120674(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C1206BC(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

uint64_t sub_26C120724@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_26C1365D4();
  if ((v7 & 0x10000) != 0)
  {
    goto LABEL_7;
  }

  v8 = v7;
  sub_26C0D7B44(v40);
  if (v41)
  {
    goto LABEL_7;
  }

  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  sub_26C0BBAA4(*a1, v9);
  v12 = sub_26C1368E8();
  if ((v12 & 0x100) != 0)
  {
    goto LABEL_5;
  }

  sub_26C0DE248(v12, &v35);
  if (*(&v35 + 1) >> 60 == 15)
  {
    goto LABEL_5;
  }

  v38 = v35;
  v39 = v36;
  sub_26C0D4B74(&v38, &v33, &v35);
  if (v3)
  {
    v14 = *(&v33 + 1);
    v15 = v33;
    v16 = v34;
    v18 = *(&v38 + 1);
    v17 = v38;
LABEL_21:
    sub_26C0BB9B0(v17, v18);
    sub_26C0BB9B0(*a1, a1[1]);
    *a1 = v10;
    a1[1] = v9;
    a1[2] = v11;
    *&v35 = v15;
    *(&v35 + 1) = v14;
    LOBYTE(v36) = v16;
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    *a2 = v15;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
    return result;
  }

  result = v38;
  v19 = *(&v38 + 1) >> 62;
  if ((*(&v38 + 1) >> 62) > 1)
  {
    if (v19 == 2)
    {
      v20 = *(v38 + 24);
    }

    else
    {
      v20 = 0;
    }
  }

  else if (v19)
  {
    v20 = v38 >> 32;
  }

  else
  {
    v20 = BYTE14(v38);
  }

  if (!__OFSUB__(v20, v39))
  {
    if (v20 != v39)
    {
      v33 = xmmword_26C149860;
      v16 = 2;
      v34 = 2;
      v24 = *(&v38 + 1);
      v23 = v38;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v18 = v24;
      v17 = v23;
      v14 = 0;
      v15 = 1;
      goto LABEL_21;
    }

    sub_26C0BB9B0(v38, *(&v38 + 1));
    sub_26C0BB9B0(v10, v9);
    v30 = v36;
    v31 = v35;
    v21 = v37;
    v10 = *a1;
    v9 = a1[1];
    v11 = a1[2];
    sub_26C0BBAA4(*a1, v9);
    v22 = sub_26C0DF788(a1, &v35);
    if (!v22)
    {
LABEL_5:
      sub_26C0BB9B0(*a1, a1[1]);
LABEL_6:
      *a1 = v10;
      a1[1] = v9;
      a1[2] = v11;
LABEL_7:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 2;
      v35 = 0uLL;
      LOBYTE(v36) = 2;
      sub_26C0BBAF8();
      return swift_willThrowTypedImpl();
    }

    v42 = v21;
    v25 = v22;
    sub_26C0BB9B0(v10, v9);
    v10 = *a1;
    v9 = a1[1];
    v11 = a1[2];
    sub_26C0BBAA4(*a1, v9);
    v26 = sub_26C0DF650(a1, &v35);
    if (v26)
    {
      v29 = v26;
      sub_26C0BB9B0(v10, v9);
      v10 = *a1;
      v9 = a1[1];
      v11 = a1[2];
      sub_26C0BBAA4(*a1, v9);
      v27 = sub_26C0DF2C0(a1, &v35);
      if (v27)
      {
        v28 = v27;
        result = sub_26C0BB9B0(v10, v9);
        *&v32[6] = v40[0];
        *&v32[22] = v40[1];
        *(a3 + 2) = *v32;
        *a3 = bswap32(v8) >> 16;
        *(a3 + 18) = *&v32[16];
        *(a3 + 32) = *&v32[30];
        *(a3 + 56) = v30;
        *(a3 + 40) = v31;
        *(a3 + 72) = v42;
        *(a3 + 80) = v25;
        *(a3 + 88) = v29;
        *(a3 + 96) = v28;
        return result;
      }

      sub_26C0BB9B0(*a1, a1[1]);
    }

    else
    {
      sub_26C0BB9B0(*a1, a1[1]);
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}