unint64_t sub_1A94D42A8()
{
  result = qword_1EB3A0510[0];
  if (!qword_1EB3A0510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A0510);
  }

  return result;
}

unint64_t sub_1A94D4300()
{
  result = qword_1EB3A0620;
  if (!qword_1EB3A0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A0620);
  }

  return result;
}

unint64_t sub_1A94D4358()
{
  result = qword_1EB3A0628[0];
  if (!qword_1EB3A0628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A0628);
  }

  return result;
}

uint64_t sub_1A94D43AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7, unint64_t *a8)
{
  v22 = sub_1A937829C(a6, a7);
  v23 = sub_1A94D3BC4(a8, a6, a7);
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

unint64_t sub_1A94D4480()
{
  result = qword_1EB386208;
  if (!qword_1EB386208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386208);
  }

  return result;
}

unint64_t sub_1A94D44D4()
{
  result = qword_1EB386210;
  if (!qword_1EB386210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386210);
  }

  return result;
}

uint64_t sub_1A94D4528(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB3880E8, &unk_1A9595A28);
    sub_1A94D48F0(a2, 255, MEMORY[0x1E6969610]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A94D45C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB388140, &qword_1A9595D70);
    v3 = sub_1A957D128();

    for (i = (a1 + 64); ; i += 10)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = sub_1A937A490(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v8;
      *(v13 + 8) = v7;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A94D46E4(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB388130, &qword_1A9595D58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v23 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1A937829C(&qword_1EB388138, &unk_1A9595D60);
    v9 = sub_1A957D128();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v23 = *(v3 + 72);
    v24 = v10;

    while (1)
    {
      sub_1A9391BAC(v11, v7, &qword_1EB388130, &qword_1A9595D58);
      result = sub_1A93AB008(v7);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v9[6];
      v16 = sub_1A957B188();
      v17 = *(v16 - 8);
      v18 = *(v17 + 32);
      v19 = *(v17 + 72) * v14;
      v18(v15 + v19, v7, v16);
      result = (v18)(v9[7] + v19, &v7[v24], v16);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v23;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A94D48F0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1A94D4938()
{
  result = qword_1ED96FD80;
  if (!qword_1ED96FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FD80);
  }

  return result;
}

uint64_t sub_1A94D498C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB3880E0, &unk_1A9595A08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A94D4A10()
{
  result = qword_1ED96FD88;
  if (!qword_1ED96FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FD88);
  }

  return result;
}

id CoreSynthesizer.speak(request:language:synthesizer:completionHandler:)(void *a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v60 = a5;
  v13 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v53 - v20;
  v62 = a4;
  result = [a4 phonemeSubstitutions];
  if (!result)
  {
    __break(1u);
LABEL_45:
    __break(1u);
    return result;
  }

  v23 = result;
  v61 = a1;
  v59 = a6;
  v54 = sub_1A9387478(0, &qword_1EB385F18, off_1E787F2F8);
  v24 = sub_1A957C4C8();

  v68 = MEMORY[0x1E69E7CC0];
  if (v24 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A957CE48())
  {
    v57 = a2;
    v58 = a3;
    v63 = v21;
    v55 = v18;
    v56 = v7;
    if (i)
    {
      a2 = 0;
      v18 = (v24 & 0xFFFFFFFFFFFFFF8);
      v7 = &selRef_needsParameterSync;
      while (1)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x1AC585DE0](a2, v24);
        }

        else
        {
          if (a2 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v26 = *(v24 + 8 * a2 + 32);
        }

        v21 = v26;
        v27 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          break;
        }

        [v26 replacementRange];
        if (v28 <= 0)
        {
        }

        else
        {
          sub_1A957CF78();
          a3 = *(v68 + 16);
          sub_1A957CFB8();
          sub_1A957CFC8();
          sub_1A957CF88();
        }

        ++a2;
        if (v27 == i)
        {
          v29 = v68;
          v21 = v63;
          v18 = v55;
          v7 = v56;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v29 = MEMORY[0x1E69E7CC0];
LABEL_17:

    v30 = v61;
    v31 = [v61 ignoreSubstitutions];
    v32 = MEMORY[0x1E69E7CC0];
    if (v31)
    {
      goto LABEL_40;
    }

    result = [v62 userSubstitutions];
    if (!result)
    {
      goto LABEL_45;
    }

    v33 = result;
    v34 = sub_1A957C4C8();

    v68 = v32;
    if (!(v34 >> 62))
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v35)
      {
        break;
      }

      goto LABEL_21;
    }

    v35 = sub_1A957CE48();
    if (!v35)
    {
      break;
    }

LABEL_21:
    v54 = v29;
    a2 = 0;
    v18 = (v34 & 0xFFFFFFFFFFFFFF8);
    v7 = &selRef_needsParameterSync;
    while (1)
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1AC585DE0](a2, v34);
      }

      else
      {
        if (a2 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v36 = *(v34 + 8 * a2 + 32);
      }

      v24 = v36;
      v21 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      [v36 replacementRange];
      if (v37 <= 0)
      {
      }

      else
      {
        sub_1A957CF78();
        a3 = *(v68 + 16);
        sub_1A957CFB8();
        sub_1A957CFC8();
        sub_1A957CF88();
      }

      ++a2;
      if (v21 == v35)
      {
        v32 = v68;
        v21 = v63;
        v18 = v55;
        v7 = v56;
        v29 = v54;
        goto LABEL_39;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_39:

  v30 = v61;
LABEL_40:
  v68 = v29;
  v38 = sub_1A94D8ABC(v32);
  v39 = v68;
  v40 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x138))(v38);
  v41 = sub_1A957C688();
  v42 = *(v41 - 8);
  (*(v42 + 56))(v21, 1, 1, v41);
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = swift_allocObject();
  v45 = v21;
  v46 = v44;
  v47 = v59;
  v44[2] = v60;
  v44[3] = v47;
  v44[4] = v30;
  v44[5] = v7;
  v44[6] = v39;
  v44[7] = v43;
  v48 = v58;
  v44[8] = v57;
  v44[9] = v48;
  sub_1A9391BAC(v45, v18, &qword_1EB388000, &qword_1A9587710);
  LODWORD(v43) = (*(v42 + 48))(v18, 1, v41);

  v49 = v30;
  v50 = v7;
  if (v43 == 1)
  {
    sub_1A937B960(v18, &qword_1EB388000, &qword_1A9587710);
  }

  else
  {
    sub_1A957C678();
    (*(v42 + 8))(v18, v41);
  }

  v51 = sub_1A945E8E8();
  v52 = swift_allocObject();
  *(v52 + 16) = &unk_1A9595D80;
  *(v52 + 24) = v46;
  v64 = 6;
  v65 = 0;
  v66 = v40;
  v67 = v51;

  swift_task_create();
  sub_1A937B960(v63, &qword_1EB388000, &qword_1A9587710);
}

uint64_t sub_1A94D5068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[739] = v17;
  v8[738] = a8;
  v8[737] = a7;
  v8[736] = a6;
  v8[735] = a5;
  v8[734] = a4;
  v8[733] = a3;
  v8[732] = a2;
  v9 = sub_1A937829C(&qword_1EB387BD0, &qword_1A958B6E0);
  v8[740] = v9;
  v10 = *(v9 - 8);
  v8[741] = v10;
  v11 = *(v10 + 64) + 15;
  v8[742] = swift_task_alloc();
  v12 = sub_1A937829C(&qword_1EB387148, &qword_1A95958D0);
  v8[743] = v12;
  v13 = *(v12 - 8);
  v8[744] = v13;
  v14 = *(v13 + 64) + 15;
  v8[745] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94D51C0, 0, 0);
}

uint64_t sub_1A94D51C0()
{
  v189 = v0;
  v1 = [v0[734] voice];
  if (!v1)
  {
    __break(1u);
    goto LABEL_72;
  }

  v6 = v1;
  v7 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(v0 + 575, &v6[v7], 0x118uLL);
  sub_1A9391BAC((v0 + 575), (v0 + 155), &unk_1EB387BC0, &qword_1A9587E30);

  memcpy(v0 + 85, v0 + 575, 0x118uLL);
  if (sub_1A932D058((v0 + 85)) != 1)
  {
    v30 = v0[575];
    v31 = v0[578];
    v32 = v0[579];
    v157 = v0[580];
    v33 = v0[581];
    v34 = *(v0 + 4656);
    v160 = *(v0 + 585);
    v155 = *(v0 + 288);
    v156 = *(v0 + 583);
    v161 = v0[589];
    v158 = *(v0 + 4720);
    v159 = *(v0 + 4657);
    v166 = v0[591];
    v167 = v0[587];
    v162 = v0[592];
    v169 = v0[593];
    v164 = v0[588];
    v165 = v0[594];
    v168 = *(v0 + 595);
    v35 = v0[597];
    v170 = *(v0 + 1197);
    v172 = *(v0 + 4793);
    v173 = *(v0 + 300);
    v174 = *(v0 + 303);
    v175 = *(v0 + 301);
    v171 = *(v0 + 302);
    v176 = v0[609];
    v179 = v0[608];
    v163 = *(v0 + 4792);
    v36 = *(v0 + 4784);
    v37 = v0 + 610;
    v38 = v0 + 575;
    goto LABEL_10;
  }

  v1 = [v0[734] voice];
  if (!v1)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v8 = v1;
  v9 = [v1 identifier];

  v10 = sub_1A957C0F8();
  v12 = v11;

  v0[719] = v10;
  v0[720] = v12;
  v0[717] = sub_1A957C0F8();
  v0[718] = v13;
  sub_1A93820F4();
  LOBYTE(v10) = sub_1A957CD38();

  if (v10)
  {
    v1 = [v0[734] voice];
    if (v1)
    {
      v14 = v1;
      v15 = v0[735];
      v16 = [v1 identifier];

      v17 = sub_1A957C0F8();
      v19 = v18;

      v0[721] = v17;
      v0[722] = v19;
      v0[723] = sub_1A957C0F8();
      v0[724] = v20;
      v0[725] = sub_1A957C0F8();
      v0[726] = v21;
      v22 = sub_1A957CD08();
      v24 = v23;

      v0[746] = v24;
      v25 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x4A0);
      v178 = (v25 + *v25);
      v26 = v25[1];
      v27 = swift_task_alloc();
      v0[747] = v27;
      *v27 = v0;
      v27[1] = sub_1A94D66A8;
      v28 = v0[735];

      return (v178)(v0 + 50, v22, v24);
    }

    goto LABEL_74;
  }

  memcpy(v0 + 190, v0 + 575, 0x118uLL);
  memcpy(v0 + 295, v0 + 575, 0x118uLL);
  if (sub_1A932D058((v0 + 295)) != 1)
  {
    v176 = v0[329];
    v179 = v0[328];
    v173 = *(v0 + 160);
    v174 = *(v0 + 163);
    v175 = *(v0 + 161);
    v171 = *(v0 + 162);
    v172 = *(v0 + 2553);
    v170 = *(v0 + 637);
    v163 = *(v0 + 2552);
    v36 = *(v0 + 2544);
    v168 = *(v0 + 315);
    v35 = v0[317];
    v169 = v0[313];
    v165 = v0[314];
    v166 = v0[311];
    v167 = v0[307];
    v164 = v0[308];
    v161 = v0[309];
    v162 = v0[312];
    v160 = *(v0 + 305);
    v158 = *(v0 + 2480);
    v159 = *(v0 + 2417);
    v34 = *(v0 + 2416);
    v157 = v0[300];
    v33 = v0[301];
    v31 = v0[298];
    v32 = v0[299];
    v30 = v0[295];
    v155 = *(v0 + 148);
    v156 = *(v0 + 303);
    memcpy(v0 + 365, v0 + 190, 0x118uLL);
    sub_1A937B3DC((v0 + 365), (v0 + 400));
    v37 = v0 + 610;
    v38 = v0 + 190;
LABEL_10:
    memcpy(v37, v38, 0x118uLL);
    v39 = v0[734];
    v0[435] = v30;
    *(v0 + 218) = v155;
    v0[438] = v31;
    v0[439] = v32;
    v0[440] = v157;
    v0[441] = v33;
    *(v0 + 3536) = v34;
    *(v0 + 3537) = v159;
    *(v0 + 443) = v156;
    *(v0 + 445) = v160;
    v0[447] = v167;
    v0[448] = v164;
    v0[449] = v161;
    *(v0 + 3600) = v158;
    v0[451] = v166;
    v0[452] = v162;
    v0[453] = v169;
    v0[454] = v165;
    *(v0 + 455) = v168;
    v0[457] = v35;
    *(v0 + 3664) = v36 & 1;
    *(v0 + 917) = v170;
    *(v0 + 3672) = v163 & 1;
    *(v0 + 3673) = v172;
    *(v0 + 230) = v173;
    *(v0 + 231) = v175;
    *(v0 + 232) = v171;
    *(v0 + 233) = v174;
    v0[468] = v179;
    v0[469] = v176;
    sub_1A9391BAC((v0 + 575), (v0 + 470), &unk_1EB387BC0, &qword_1A9587E30);
    LODWORD(v39) = [v39 ignoreSubstitutions];
    sub_1A937829C(&qword_1EB388150, &qword_1A9595D90);
    if (v39)
    {
      v40 = v0 + 730;
      v41 = 731;
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1A95873F0;
      *(v42 + 32) = *sub_1A937929C();
      *(v42 + 40) = *sub_1A93792B4();
    }

    else
    {
      v40 = v0 + 727;
      v41 = 729;
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1A9588500;
      *(v42 + 32) = *sub_1A937929C();
      *(v42 + 40) = *sub_1A93792A8();
      *(v42 + 48) = *sub_1A93792B4();
    }

    v0[v41] = v42;
    sub_1A937B594();
    sub_1A937829C(&qword_1EB388158, &qword_1A9595D98);
    sub_1A93B744C(&qword_1EB388160, &qword_1EB388158, &qword_1A9595D98);
    sub_1A957CE08();
    v43 = *v40;
    v44 = [v0[734] speechStringType];
    v45 = v0[734];
    if (v44 == 1)
    {
      v46 = [v45 jobIdentifier];
      if (v46)
      {
        v47 = v46;
        v48 = sub_1A957C0F8();
        v50 = v49;
      }

      else
      {
        v48 = 0;
        v50 = 0;
      }

      v1 = [v0[734] text];
      if (v1)
      {
        v68 = v1;
        v69 = sub_1A957C0F8();
        v71 = v70;

        memcpy(v0 + 225, v0 + 435, 0x118uLL);
        nullsub_23(v0 + 225);
        memcpy(__dst, v0 + 225, 0x118uLL);
        v183[0] = v43;
        sub_1A937B3DC((v0 + 435), (v0 + 120));
        v72 = sub_1A937838C();
        sub_1A937BA74(&v186);
        v187 = v186;
        sub_1A937BA74(v188);
        LOBYTE(v184) = v188[0];
        CoreSynthesizer.Utterance.init(id:ssml:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:)(__dst, v48, v50, v69, v71, v72, &v187, &v184, (v0 + 2), v183);
        goto LABEL_56;
      }

LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v51 = [v45 text];
    if (!v51)
    {
      sub_1A937B960((v0 + 610), &unk_1EB387BC0, &qword_1A9587E30);
      sub_1A94D93E0();
      v66 = swift_allocError();
      *v73 = 0;
      v73[1] = 0;
      swift_willThrow();
      sub_1A937B48C((v0 + 435));
      goto LABEL_32;
    }

    v52 = v51;
    v53 = sub_1A957C0F8();
    v55 = v54;
    v56 = sub_1A937D62C();
    swift_beginAccess();
    v57 = *v56;
    v58 = [v57 firstMatchInString:v52 options:0 range:{0, sub_1A957C238()}];

    if (v58)
    {
      [v58 range];
      v60 = v59;
    }

    else
    {
      v60 = 0;
    }

    if (v60 == sub_1A957C238())
    {
      v74 = v0[734];

      v75 = [v74 jobIdentifier];
      if (v75)
      {
        v76 = v75;
        v77 = sub_1A957C0F8();
        v79 = v78;
      }

      else
      {
        v77 = 0;
        v79 = 0;
      }

      memcpy(v0 + 330, v0 + 435, 0x118uLL);
      nullsub_23(v0 + 330);
      memcpy(__dst, v0 + 330, 0x118uLL);
      v183[0] = v43;
      sub_1A937B3DC((v0 + 435), (v0 + 260));
      v89 = sub_1A937838C();
      sub_1A937BA74(&v186);
      v187 = v186;
      sub_1A937BA74(v188);
      LOBYTE(v184) = v188[0];
      v154 = 0;
      CoreSynthesizer.Utterance.init(id:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:_:)(v77, v79, __dst, v89, &v187, &v184, v183, sub_1A94D8610, (v0 + 2));
      goto LABEL_56;
    }

    v90 = Array<A>.init(ssml:)();
    v91 = v0[736];
    v0[673] = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
    v0[674] = &protocol witness table for <A> [A];
    v0[670] = v90;
    if (v91 >> 62)
    {
      v93 = v0 + 670;
      if (!sub_1A957CE48())
      {
        goto LABEL_43;
      }
    }

    else
    {
      v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v93 = v0 + 670;
      if (!v92)
      {
LABEL_43:
        [v0[734] rate];
        if (v99 != 1.0)
        {
          v100 = v0[734];
          v101 = v0[673];
          v102 = v0[674];
          sub_1A93780F4(v93, v101);
          [v100 rate];
          *&v103 = v103;
          LODWORD(__dst[0]) = LODWORD(v103);
          BYTE4(__dst[0]) = 1;
          sub_1A93B7B04(__dst, v101, v102, v0 + 655);
          sub_1A9378138(v93);
          sub_1A932D070((v0 + 655), v93);
        }

        [v0[734] pitch];
        if (v104 != 1.0)
        {
          v105 = v0[734];
          v106 = v0[673];
          v107 = v0[674];
          sub_1A93780F4(v93, v106);
          [v105 pitch];
          *&v108 = v108;
          static TTSMarkup.Prosody.Pitch.ttsPitch(_:)(__dst, *&v108);
          sub_1A93B7BC4(__dst, v106, v107, v0 + 660);
          sub_1A9378138(v93);
          sub_1A932D070(v0 + 330, v93);
        }

        [v0[734] volume];
        if (v109 != 1.0)
        {
          v110 = v0[734];
          v111 = v0[673];
          v112 = v0[674];
          sub_1A93780F4(v93, v111);
          [v110 volume];
          *&v113 = v113;
          LOBYTE(__dst[0]) = 0;
          TTSMarkupSpeech.volume(_:)(LODWORD(v113), v111, v112, v0 + 665);
          sub_1A9378138(v93);
          sub_1A932D070((v0 + 665), v93);
        }

        v114 = v0 + 680;
        v115 = v0[739];
        if (v115)
        {
          v116 = v0[738];
          v117 = v0[674];
          sub_1A93780F4(v93, v0[673]);
          TTSMarkupSpeech.language(_:)(v116, v115, v0 + 675);
          sub_1A9378138(v93);
          sub_1A932D070((v0 + 675), v93);
        }

        v118 = v0[735];
        v177 = v0[734];
        v181 = v0[737];
        *(swift_task_alloc() + 16) = v93;
        v0[683] = &type metadata for TTSMarkup.SpeechDocument;
        v0[684] = &protocol witness table for TTSMarkup.SpeechDocument;
        v119 = swift_allocObject();
        v0[680] = v119;
        TTSMarkup.SpeechDocument.init(_:)(sub_1A94D94F0, (v119 + 16));

        v120 = v0[683];
        v121 = v0[684];
        sub_1A93780F4(v114, v120);
        v122 = swift_task_alloc();
        v122[2] = v53;
        v122[3] = v55;
        v122[4] = v118;
        v122[5] = v181;
        v122[6] = v177;
        TTSMarkupSpeech.transformed<A>(of:_:)(sub_1A94D94F4, v122, v120, &type metadata for TTSMarkup.SpeechText, v121, &protocol witness table for TTSMarkup.SpeechText, v0 + 645);

        if (!v0[648])
        {
          goto LABEL_76;
        }

        v123 = v0[734];

        sub_1A9378138(v114);
        sub_1A932D070((v0 + 645), v114);
        v124 = [v123 jobIdentifier];
        if (v124)
        {
          v125 = v124;
          v126 = sub_1A957C0F8();
          v128 = v127;
        }

        else
        {
          v126 = 0;
          v128 = 0;
        }

        memcpy(v0 + 540, v0 + 435, 0x118uLL);
        nullsub_23(v0 + 540);
        memcpy(v183, v0 + 540, sizeof(v183));
        v184 = v43;
        v129 = swift_task_alloc();
        *(v129 + 16) = v114;
        sub_1A937B3DC((v0 + 435), (v0 + 505));
        v130 = sub_1A937838C();
        sub_1A937BA74(&v185);
        v186 = v185;
        sub_1A937BA74(&v187);
        v188[0] = v187;
        v154 = v129;
        CoreSynthesizer.Utterance.init(id:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:_:)(v126, v128, v183, v130, &v186, v188, &v184, sub_1A94D9C04, __dst);

        memcpy(v0 + 2, __dst, 0x179uLL);
        sub_1A9378138(v114);
        sub_1A9378138(v93);
LABEL_56:
        v131 = v0[737];
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v133 = Strong;
          [Strong speechRequestDidStart_];
        }

        v134 = [v0[734] voiceSettings];
        if (v134)
        {
          v135 = v134;
          sub_1A9387478(0, &qword_1ED96FCD8, 0x1E696AD98);
          v136 = sub_1A957C038();

          v137 = sub_1A94D861C(v136);

          if (v137[2])
          {
            sub_1A937829C(&qword_1EB387690, &qword_1A958EB48);
            v138 = sub_1A957D128();
          }

          else
          {
            v138 = MEMORY[0x1E69E7CC8];
          }

          __dst[0] = v138;

          sub_1A94D8D10(v139, 1, __dst);

          v140 = __dst[0];
          v141 = v0[41];

          v0[41] = v140;
        }

        v142 = v0[735];
        v143 = [v0[734] synthesizeSilently];
        v144 = *MEMORY[0x1E69E7D40] & *v142;
        v145 = v0[745];
        v146 = v0[735];
        if (v143)
        {
          (*(v144 + 1224))(v0 + 2);
        }

        else
        {
          (*(v144 + 1200))(v0 + 2);
        }

        v147 = v0[745];
        v148 = v0[743];
        v149 = v0[742];
        v150 = v0[737];
        sub_1A957C6F8();
        swift_beginAccess();
        swift_beginAccess();
        swift_beginAccess();
        v0[748] = 0;
        v151 = *(MEMORY[0x1E69E87A8] + 4);
        v152 = swift_task_alloc();
        v0[749] = v152;
        *v152 = v0;
        v152[1] = sub_1A94D787C;
        v153 = v0[742];
        v4 = v0[740];
        v1 = (v0 + 685);
        v5 = v0 + 728;
        v2 = 0;
        v3 = 0;

        return MEMORY[0x1EEE6DB90](v1, v2, v3, v4, v5);
      }
    }

    v94 = v0[734];
    v95 = v0[673];
    v96 = v0[674];
    v180 = *(v0 + 368);
    sub_1A93780F4(v93, v95);
    v97 = swift_task_alloc();
    *(v97 + 16) = v180;
    *(v97 + 32) = v94;
    v0[653] = v95;
    v0[654] = v96;
    v98 = sub_1A93981E4(v0 + 650);
    TTSMarkupSpeech.transformed<A>(of:_:)(sub_1A94D9434, v97, v95, &type metadata for TTSMarkup.SpeechText, v96, &protocol witness table for TTSMarkup.SpeechText, v98);

    sub_1A9378138(v93);
    sub_1A932D070(v0 + 325, v93);
    goto LABEL_43;
  }

  v1 = [v0[734] voice];
  if (!v1)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    return MEMORY[0x1EEE6DB90](v1, v2, v3, v4, v5);
  }

  v61 = v1;
  v62 = [v1 identifier];

  v63 = sub_1A957C0F8();
  v65 = v64;

  sub_1A94D93E0();
  v66 = swift_allocError();
  *v67 = v63;
  v67[1] = v65;
  swift_willThrow();
LABEL_32:
  v80 = v0[737];
  swift_beginAccess();
  v81 = swift_unknownObjectWeakLoadStrong();
  if (v81)
  {
    v82 = v81;
    v83 = v0[734];
    v84 = sub_1A957AEE8();
    [v82 speechRequest:v83 didStopWithSuccess:0 phonemesSpoken:0 error:v84];
  }

  else
  {
  }

  v85 = v0[745];
  v86 = v0[742];
  v87 = v0[733];
  (v0[732])();

  v88 = v0[1];

  return v88();
}

uint64_t sub_1A94D66A8()
{
  v1 = *(*v0 + 5976);
  v2 = *(*v0 + 5968);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A94D67C0, 0, 0);
}

uint64_t sub_1A94D67C0()
{
  v159 = v0;
  memcpy((v0 + 1520), (v0 + 400), 0x118uLL);
  memcpy((v0 + 2360), (v0 + 1520), 0x118uLL);
  if (sub_1A932D058(v0 + 2360) != 1)
  {
    v147 = *(v0 + 2632);
    v149 = *(v0 + 2624);
    v145 = *(v0 + 2548);
    v146 = *(v0 + 2553);
    v143 = *(v0 + 2544);
    v144 = *(v0 + 2552);
    v141 = *(v0 + 2512);
    v142 = *(v0 + 2504);
    v139 = *(v0 + 2456);
    v140 = *(v0 + 2488);
    v138 = *(v0 + 2472);
    v18 = *(v0 + 2480);
    v19 = *(v0 + 2416);
    v20 = *(v0 + 2400);
    v21 = *(v0 + 2408);
    v133 = *(v0 + 2384);
    v22 = *(v0 + 2360);
    memcpy((v0 + 2920), (v0 + 1520), 0x118uLL);
    v136 = *(v0 + 2592);
    v137 = *(v0 + 2560);
    v134 = *(v0 + 2608);
    v135 = *(v0 + 2576);
    v23 = *(v0 + 2536);
    v131 = *(v0 + 2424);
    v132 = *(v0 + 2520);
    v129 = *(v0 + 2368);
    v130 = *(v0 + 2440);
    sub_1A937B3DC(v0 + 2920, v0 + 3200);
    memcpy((v0 + 4880), (v0 + 1520), 0x118uLL);
    v24 = *(v0 + 5872);
    *(v0 + 3480) = v22;
    *(v0 + 3488) = v129;
    *(v0 + 3504) = v133;
    *(v0 + 3520) = v20;
    *(v0 + 3528) = v21;
    *(v0 + 3536) = v19;
    *(v0 + 3560) = v130;
    *(v0 + 3544) = v131;
    *(v0 + 3576) = v139;
    *(v0 + 3592) = v138;
    *(v0 + 3600) = v18;
    *(v0 + 3608) = v140;
    *(v0 + 3624) = v142;
    *(v0 + 3632) = v141;
    *(v0 + 3640) = v132;
    *(v0 + 3656) = v23;
    *(v0 + 3664) = v143;
    *(v0 + 3668) = v145;
    *(v0 + 3672) = v144;
    *(v0 + 3673) = v146;
    *(v0 + 3696) = v135;
    *(v0 + 3680) = v137;
    *(v0 + 3728) = v134;
    *(v0 + 3712) = v136;
    *(v0 + 3744) = v149;
    *(v0 + 3752) = v147;
    sub_1A9391BAC(v0 + 4600, v0 + 3760, &unk_1EB387BC0, &qword_1A9587E30);
    LOBYTE(v24) = [v24 ignoreSubstitutions];
    sub_1A937829C(&qword_1EB388150, &qword_1A9595D90);
    if (v24)
    {
      v25 = (v0 + 5840);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1A95873F0;
      *(v26 + 32) = *sub_1A937929C();
      *(v26 + 40) = *sub_1A93792B4();
      *(v0 + 5848) = v26;
    }

    else
    {
      v25 = (v0 + 5816);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1A9588500;
      *(v27 + 32) = *sub_1A937929C();
      *(v27 + 40) = *sub_1A93792A8();
      *(v27 + 48) = *sub_1A93792B4();
      *(v0 + 5832) = v27;
    }

    sub_1A937B594();
    sub_1A937829C(&qword_1EB388158, &qword_1A9595D98);
    sub_1A93B744C(&qword_1EB388160, &qword_1EB388158, &qword_1A9595D98);
    sub_1A957CE08();
    v28 = *v25;
    v29 = [*(v0 + 5872) speechStringType];
    v30 = *(v0 + 5872);
    if (v29 == 1)
    {
      v31 = [v30 jobIdentifier];
      if (v31)
      {
        v32 = v31;
        v33 = sub_1A957C0F8();
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      v1 = [*(v0 + 5872) text];
      if (!v1)
      {
        goto LABEL_62;
      }

      v51 = v1;
      v52 = sub_1A957C0F8();
      v54 = v53;

      memcpy((v0 + 1800), (v0 + 3480), 0x118uLL);
      nullsub_23(v0 + 1800);
      memcpy(__dst, (v0 + 1800), 0x118uLL);
      v153[0] = v28;
      sub_1A937B3DC(v0 + 3480, v0 + 960);
      v55 = sub_1A937838C();
      sub_1A937BA74(&v156);
      v157 = v156;
      sub_1A937BA74(v158);
      LOBYTE(v154) = v158[0];
      CoreSynthesizer.Utterance.init(id:ssml:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:)(__dst, v33, v35, v52, v54, v55, &v157, &v154, v0 + 16, v153);
LABEL_46:
      v105 = *(v0 + 5896);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v107 = Strong;
        [Strong speechRequestDidStart_];
      }

      v108 = [*(v0 + 5872) voiceSettings];
      if (v108)
      {
        v109 = v108;
        sub_1A9387478(0, &qword_1ED96FCD8, 0x1E696AD98);
        v110 = sub_1A957C038();

        v111 = sub_1A94D861C(v110);

        if (v111[2])
        {
          sub_1A937829C(&qword_1EB387690, &qword_1A958EB48);
          v112 = sub_1A957D128();
        }

        else
        {
          v112 = MEMORY[0x1E69E7CC8];
        }

        __dst[0] = v112;

        sub_1A94D8D10(v113, 1, __dst);

        v114 = __dst[0];
        v115 = *(v0 + 328);

        *(v0 + 328) = v114;
      }

      v116 = *(v0 + 5880);
      v117 = [*(v0 + 5872) synthesizeSilently];
      v118 = *MEMORY[0x1E69E7D40] & *v116;
      v119 = *(v0 + 5960);
      v120 = *(v0 + 5880);
      if (v117)
      {
        (*(v118 + 1224))(v0 + 16);
      }

      else
      {
        (*(v118 + 1200))(v0 + 16);
      }

      v121 = *(v0 + 5960);
      v122 = *(v0 + 5944);
      v123 = *(v0 + 5936);
      v124 = *(v0 + 5896);
      sub_1A957C6F8();
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      *(v0 + 5984) = 0;
      v125 = *(MEMORY[0x1E69E87A8] + 4);
      v126 = swift_task_alloc();
      *(v0 + 5992) = v126;
      *v126 = v0;
      v126[1] = sub_1A94D787C;
      v127 = *(v0 + 5936);
      v4 = *(v0 + 5920);
      v1 = (v0 + 5480);
      v5 = v0 + 5824;
      v2 = 0;
      v3 = 0;

      return MEMORY[0x1EEE6DB90](v1, v2, v3, v4, v5);
    }

    v36 = [v30 text];
    if (!v36)
    {
      sub_1A937B960(v0 + 4880, &unk_1EB387BC0, &qword_1A9587E30);
      sub_1A94D93E0();
      v11 = swift_allocError();
      *v56 = 0;
      v56[1] = 0;
      swift_willThrow();
      sub_1A937B48C(v0 + 3480);
      goto LABEL_4;
    }

    v37 = v36;
    v38 = sub_1A957C0F8();
    v40 = v39;
    v41 = sub_1A937D62C();
    swift_beginAccess();
    v42 = *v41;
    v43 = [v42 firstMatchInString:v37 options:0 range:{0, sub_1A957C238()}];

    if (v43)
    {
      [v43 range];
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    if (v45 == sub_1A957C238())
    {
      v57 = *(v0 + 5872);

      v58 = [v57 jobIdentifier];
      if (v58)
      {
        v59 = v58;
        v60 = sub_1A957C0F8();
        v62 = v61;
      }

      else
      {
        v60 = 0;
        v62 = 0;
      }

      memcpy((v0 + 2640), (v0 + 3480), 0x118uLL);
      nullsub_23(v0 + 2640);
      memcpy(__dst, (v0 + 2640), 0x118uLL);
      v153[0] = v28;
      sub_1A937B3DC(v0 + 3480, v0 + 2080);
      v63 = sub_1A937838C();
      sub_1A937BA74(&v156);
      v157 = v156;
      sub_1A937BA74(v158);
      LOBYTE(v154) = v158[0];
      v128 = 0;
      CoreSynthesizer.Utterance.init(id:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:_:)(v60, v62, __dst, v63, &v157, &v154, v153, sub_1A94D8610, v0 + 16);
      goto LABEL_46;
    }

    v64 = Array<A>.init(ssml:)();
    v65 = *(v0 + 5888);
    *(v0 + 5384) = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
    *(v0 + 5392) = &protocol witness table for <A> [A];
    *(v0 + 5360) = v64;
    if (v65 >> 62)
    {
      v67 = (v0 + 5360);
      if (!sub_1A957CE48())
      {
        goto LABEL_33;
      }
    }

    else
    {
      v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v67 = (v0 + 5360);
      if (!v66)
      {
LABEL_33:
        [*(v0 + 5872) rate];
        if (v73 != 1.0)
        {
          v74 = *(v0 + 5872);
          v75 = *(v0 + 5384);
          v76 = *(v0 + 5392);
          sub_1A93780F4(v67, v75);
          [v74 rate];
          *&v77 = v77;
          LODWORD(__dst[0]) = LODWORD(v77);
          BYTE4(__dst[0]) = 1;
          sub_1A93B7B04(__dst, v75, v76, (v0 + 5240));
          sub_1A9378138(v67);
          sub_1A932D070((v0 + 5240), v67);
        }

        [*(v0 + 5872) pitch];
        if (v78 != 1.0)
        {
          v79 = *(v0 + 5872);
          v80 = *(v0 + 5384);
          v81 = *(v0 + 5392);
          sub_1A93780F4(v67, v80);
          [v79 pitch];
          *&v82 = v82;
          static TTSMarkup.Prosody.Pitch.ttsPitch(_:)(__dst, *&v82);
          sub_1A93B7BC4(__dst, v80, v81, (v0 + 5280));
          sub_1A9378138(v67);
          sub_1A932D070((v0 + 5280), v67);
        }

        [*(v0 + 5872) volume];
        if (v83 != 1.0)
        {
          v84 = *(v0 + 5872);
          v85 = *(v0 + 5384);
          v86 = *(v0 + 5392);
          sub_1A93780F4(v67, v85);
          [v84 volume];
          *&v87 = v87;
          LOBYTE(__dst[0]) = 0;
          TTSMarkupSpeech.volume(_:)(LODWORD(v87), v85, v86, (v0 + 5320));
          sub_1A9378138(v67);
          sub_1A932D070((v0 + 5320), v67);
        }

        v88 = (v0 + 5440);
        v89 = *(v0 + 5912);
        if (v89)
        {
          v90 = *(v0 + 5904);
          v91 = *(v0 + 5392);
          sub_1A93780F4(v67, *(v0 + 5384));
          v88 = (v0 + 5440);
          TTSMarkupSpeech.language(_:)(v90, v89, (v0 + 5400));
          sub_1A9378138(v67);
          sub_1A932D070((v0 + 5400), v67);
        }

        v92 = *(v0 + 5880);
        v148 = *(v0 + 5872);
        v151 = *(v0 + 5896);
        *(swift_task_alloc() + 16) = v67;
        *(v0 + 5464) = &type metadata for TTSMarkup.SpeechDocument;
        *(v0 + 5472) = &protocol witness table for TTSMarkup.SpeechDocument;
        v93 = swift_allocObject();
        *(v0 + 5440) = v93;
        TTSMarkup.SpeechDocument.init(_:)(sub_1A94D94F0, (v93 + 16));

        v94 = *(v0 + 5464);
        v95 = *(v0 + 5472);
        sub_1A93780F4(v88, v94);
        v96 = swift_task_alloc();
        v96[2] = v38;
        v96[3] = v40;
        v96[4] = v92;
        v96[5] = v151;
        v96[6] = v148;
        TTSMarkupSpeech.transformed<A>(of:_:)(sub_1A94D94F4, v96, v94, &type metadata for TTSMarkup.SpeechText, v95, &protocol witness table for TTSMarkup.SpeechText, (v0 + 5160));

        if (!*(v0 + 5184))
        {
          goto LABEL_63;
        }

        v97 = *(v0 + 5872);

        sub_1A9378138(v88);
        sub_1A932D070((v0 + 5160), v88);
        v98 = [v97 jobIdentifier];
        if (v98)
        {
          v99 = v98;
          v100 = sub_1A957C0F8();
          v102 = v101;
        }

        else
        {
          v100 = 0;
          v102 = 0;
        }

        memcpy((v0 + 4320), (v0 + 3480), 0x118uLL);
        nullsub_23(v0 + 4320);
        memcpy(v153, (v0 + 4320), sizeof(v153));
        v154 = v28;
        v103 = swift_task_alloc();
        *(v103 + 16) = v88;
        sub_1A937B3DC(v0 + 3480, v0 + 4040);
        v104 = sub_1A937838C();
        sub_1A937BA74(&v155);
        v156 = v155;
        sub_1A937BA74(&v157);
        v158[0] = v157;
        v128 = v103;
        CoreSynthesizer.Utterance.init(id:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:_:)(v100, v102, v153, v104, &v156, v158, &v154, sub_1A94D9C04, __dst);

        memcpy((v0 + 16), __dst, 0x179uLL);
        sub_1A9378138(v88);
        sub_1A9378138(v67);
        goto LABEL_46;
      }
    }

    v68 = *(v0 + 5872);
    v69 = *(v0 + 5384);
    v70 = *(v0 + 5392);
    v150 = *(v0 + 5888);
    sub_1A93780F4(v67, v69);
    v71 = swift_task_alloc();
    *(v71 + 16) = v150;
    *(v71 + 32) = v68;
    *(v0 + 5224) = v69;
    *(v0 + 5232) = v70;
    v72 = sub_1A93981E4((v0 + 5200));
    TTSMarkupSpeech.transformed<A>(of:_:)(sub_1A94D9434, v71, v69, &type metadata for TTSMarkup.SpeechText, v70, &protocol witness table for TTSMarkup.SpeechText, v72);

    sub_1A9378138(v67);
    sub_1A932D070((v0 + 5200), v67);
    goto LABEL_33;
  }

  v1 = [*(v0 + 5872) voice];
  if (!v1)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return MEMORY[0x1EEE6DB90](v1, v2, v3, v4, v5);
  }

  v6 = v1;
  v7 = [v1 identifier];

  v8 = sub_1A957C0F8();
  v10 = v9;

  sub_1A94D93E0();
  v11 = swift_allocError();
  *v12 = v8;
  v12[1] = v10;
  swift_willThrow();
LABEL_4:
  v13 = *(v0 + 5896);
  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = *(v0 + 5872);
    v17 = sub_1A957AEE8();
    [v15 speechRequest:v16 didStopWithSuccess:0 phonemesSpoken:0 error:v17];
  }

  else
  {
  }

  v46 = *(v0 + 5960);
  v47 = *(v0 + 5936);
  v48 = *(v0 + 5864);
  (*(v0 + 5856))();

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1A94D787C()
{
  v2 = *(*v1 + 5992);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1A94D8124;
  }

  else
  {
    v3 = sub_1A94D798C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A94D798C()
{
  v1 = *(v0 + 5496);
  if (v1 >> 3 != 0xFFFFFFFF)
  {
    v6 = *(v0 + 5480);
    v7 = *(v0 + 5488);
    v8 = *(v0 + 5504);
    if (v1 >> 61 != 1)
    {
      if (v1 >> 61 == 2)
      {
        v9 = [*(v0 + 5872) audioBufferCallback];
        if (v9)
        {
          v10 = v9;
          v11 = *(v0 + 5984);
          v12 = [v6 format];

          (v10)[2](v10, v6);
          sub_1A9410F4C(v6, v7, v1);
          _Block_release(v10);
          *(v0 + 5984) = v12;
          goto LABEL_33;
        }
      }

      goto LABEL_32;
    }

    v22 = *(v0 + 5496);
    if (*(v0 + 5496))
    {
      if (v22 == 3)
      {
        v33 = *(v0 + 5896);
        v34 = objc_allocWithZone(TTSGenericMarker);
        sub_1A9410FB8(v6, v7, v1);
        v25 = [v34 init];
        v26 = sub_1A957C0C8();
        [v25 setName_];
        goto LABEL_23;
      }

      if (v22 == 4)
      {
        v23 = *(v0 + 5896);
        v24 = objc_allocWithZone(TTSPhonemeMarker);
        sub_1A9410FB8(v6, v7, v1);
        v25 = [v24 init];
        v26 = sub_1A957C0C8();
        [v25 setPhoneme_];
LABEL_23:

        [v25 setByteOffset_];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v36 = Strong;
          [Strong speechRequest:*(v0 + 5872) withMarker:v25];
          sub_1A9410F4C(v6, v7, v1);
          sub_1A9410F4C(v6, v7, v1);

          goto LABEL_33;
        }

        sub_1A9410F4C(v6, v7, v1);
      }
    }

    else
    {
      v37 = *(v0 + 5872);
      v38 = *(v0 + 5504);
      sub_1A9410FB8(*(v0 + 5480), *(v0 + 5488), *(v0 + 5496));
      if ([v37 speechStringType] == 1)
      {
        v39 = *(v0 + 5872);
        v40 = [objc_allocWithZone(TTSWordMarker) init];
        [v40 setByteOffset_];
        *(v0 + 5704) = v6;
        *(v0 + 5712) = v7;
        v41 = [v39 text];
        if (!v41)
        {
          __break(1u);
          return MEMORY[0x1EEE6DB90](v41, v42, v43, v44, v45);
        }

        v46 = v41;
        v47 = *(v0 + 5880);
        v48 = sub_1A957C0F8();
        v50 = v49;

        *(v0 + 5720) = v48;
        *(v0 + 5728) = v50;
        sub_1A937829C(&qword_1EB388038, &unk_1A95958C0);
        sub_1A93B744C(&unk_1EB388040, &qword_1EB388038, &unk_1A95958C0);
        sub_1A93820F4();
        v51 = sub_1A957CC38();
        v53 = [v40 setWordRange_];
        v54 = MEMORY[0x1E69E7D40];
        v55 = (*((*MEMORY[0x1E69E7D40] & *v47) + 0x530))(v53);
        if (v55)
        {
          v56 = v55;
          v55();
          sub_1A93CF5C8(v56);
        }

        v57 = *(v0 + 5896);
        (*((*v54 & **(v0 + 5880)) + 0x538))(0, 0);
        v58 = swift_unknownObjectWeakLoadStrong();
        if (v58)
        {
          v59 = v58;
          [v58 speechRequest:*(v0 + 5872) withMarker:v40];
          sub_1A9410F4C(v6, v7, v1);

          goto LABEL_33;
        }
      }
    }

LABEL_32:
    sub_1A9410F4C(v6, v7, v1);
LABEL_33:
    v60 = *(MEMORY[0x1E69E87A8] + 4);
    v61 = swift_task_alloc();
    *(v0 + 5992) = v61;
    *v61 = v0;
    v61[1] = sub_1A94D787C;
    v62 = *(v0 + 5936);
    v44 = *(v0 + 5920);
    v41 = (v0 + 5480);
    v45 = v0 + 5824;
    v42 = 0;
    v43 = 0;

    return MEMORY[0x1EEE6DB90](v41, v42, v43, v44, v45);
  }

  v2 = *(v0 + 5896);
  (*(*(v0 + 5928) + 8))(*(v0 + 5936), *(v0 + 5920));
  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 speechRequest:*(v0 + 5872) didStopWithSuccess:1 phonemesSpoken:0 error:0];
  }

  if (TTSSpeechUnitTestingMode())
  {
    v5 = *(v0 + 5984);
    (*(*(v0 + 5952) + 8))(*(v0 + 5960), *(v0 + 5944));
    sub_1A937B48C(v0 + 3480);
    sub_1A937B960(v0 + 4880, &unk_1EB387BC0, &qword_1A9587E30);
  }

  else
  {
    v13 = [*(v0 + 5872) audioBufferCallback];
    v14 = *(v0 + 5984);
    if (v13)
    {
      v15 = v13;
      v16 = *(v0 + 5960);
      v17 = *(v0 + 5952);
      v18 = *(v0 + 5944);
      if (v14)
      {
        v19 = objc_allocWithZone(MEMORY[0x1E6958438]);
        v20 = v14;
        v21 = [v19 initWithPCMFormat:v20 frameCapacity:0];
        (v15)[2](v15, v21);
        _Block_release(v15);

        sub_1A937B48C(v0 + 3480);
        sub_1A937B960(v0 + 4880, &unk_1EB387BC0, &qword_1A9587E30);
        (*(v17 + 8))(v16, v18);
      }

      else
      {
        (*(v17 + 8))(*(v0 + 5960), *(v0 + 5944));
        _Block_release(v15);
        sub_1A937B48C(v0 + 3480);
        sub_1A937B960(v0 + 4880, &unk_1EB387BC0, &qword_1A9587E30);
      }
    }

    else
    {
      (*(*(v0 + 5952) + 8))(*(v0 + 5960), *(v0 + 5944));
      sub_1A937B48C(v0 + 3480);
      sub_1A937B960(v0 + 4880, &unk_1EB387BC0, &qword_1A9587E30);
    }
  }

  v27 = sub_1A9410E64(v0 + 16);
  v28 = *(v0 + 5960);
  v29 = *(v0 + 5936);
  v30 = *(v0 + 5864);
  (*(v0 + 5856))(v27);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1A94D8124()
{
  v1 = *(v0 + 5960);
  v2 = *(v0 + 5952);
  v3 = *(v0 + 5944);
  v4 = *(v0 + 5936);
  v5 = *(v0 + 5928);
  v6 = *(v0 + 5920);

  sub_1A937B48C(v0 + 3480);
  sub_1A937B960(v0 + 4880, &unk_1EB387BC0, &qword_1A9587E30);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 5824);
  sub_1A9410E64(v0 + 16);
  v8 = *(v0 + 5896);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(v0 + 5872);
    v12 = sub_1A957AEE8();
    [v10 speechRequest:v11 didStopWithSuccess:0 phonemesSpoken:0 error:v12];
  }

  else
  {
  }

  v13 = *(v0 + 5960);
  v14 = *(v0 + 5936);
  v15 = *(v0 + 5864);
  (*(v0 + 5856))();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1A94D82B4(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, unint64_t a5, uint64_t a6, void *a7)
{
  v40 = a7;
  v39 = a6;
  v47 = a4;
  v48 = type metadata accessor for CoreSynthesizer.Substitution(0);
  v11 = *(*(v48 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v48, v12);
  v46 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 >> 62)
  {
    goto LABEL_14;
  }

  v15 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
    while (v15 >= 1)
    {
      v16 = 0;
      v45 = a5 & 0xC000000000000001;
      v38 = a5;
      v37 = a3;
      v44 = a2;
      v43 = a1;
      v42 = v15;
      while (1)
      {
        v26 = v45 ? MEMORY[0x1AC585DE0](v16, a5) : *(a5 + 8 * v16 + 32);
        v27 = v26;
        [v26 replacementRange];
        v28 = sub_1A957C338();
        v29 = sub_1A957C338();
        if (v29 >> 14 < v28 >> 14)
        {
          break;
        }

        v30 = v29;
        v31 = sub_1A957C3B8();
        v32 = MEMORY[0x1AC585090](v31);
        v34 = v33;

        v35 = v46;
        sub_1A94C5F8C(v32, v34, v46);

        sub_1A944A98C(v35 + *(v48 + 24), &v54);
        sub_1A94D9A68(v35);
        sub_1A944A98C(&v54, &v49);
        if (v50[24] == 1)
        {
          sub_1A94D9AC4(&v49);
        }

        else
        {
          sub_1A932D070(&v49, v51);
          v17 = v52;
          v18 = v53;
          v41 = sub_1A93780F4(v51, v52);
          v19 = swift_allocObject();
          v20 = v39;
          v19[2] = v27;
          v19[3] = v20;
          v21 = v40;
          v19[4] = v40;
          *&v50[8] = v17;
          *&v50[16] = v18;
          v22 = sub_1A93981E4(&v49);
          v23 = v27;

          v24 = v21;
          a3 = v37;
          TTSMarkupSpeech.tap(_:)(sub_1A94D9B18, v19, v17, v18, v22);
          a5 = v38;

          sub_1A94D9AC4(&v54);
          v50[24] = 0;
          v54 = v49;
          v55[0] = *v50;
          *(v55 + 9) = *&v50[9];
          sub_1A9378138(v51);
        }

        v25 = v42;
        ++v16;
        a3(v28, v30, &v54);

        result = sub_1A94D9AC4(&v54);
        a2 = v44;
        a1 = v43;
        if (v25 == v16)
        {
          return result;
        }
      }

      __break(1u);
LABEL_14:
      result = sub_1A957CE48();
      v15 = result;
      if (!result)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_1A94D861C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x1E69E7CC0];
  sub_1A94D8BAC(0, v1, 0);
  v2 = v29;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1A957CE18();
  v7 = result;
  v8 = 0;
  v28 = *(a1 + 36);
  v26 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v28 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v27 = *v11;
    v13 = *(*(a1 + 56) + 8 * v7);

    result = [v13 floatValue];
    v16 = *(v29 + 16);
    v15 = *(v29 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = v14;
      result = sub_1A94D8BAC((v15 > 1), v16 + 1, 1);
      v14 = v25;
    }

    *(v29 + 16) = v16 + 1;
    v17 = v29 + 24 * v16;
    *(v17 + 32) = v27;
    *(v17 + 40) = v12;
    *(v17 + 48) = v14;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v18 = *(a1 + 64 + 8 * v10);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v28 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v7 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (a1 + 72 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1A932D0A4(v7, v28, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_1A932D0A4(v7, v28, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v26)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

Swift::Void __swiftcall CoreSynthesizer.setLegacySubstitutions(_:)(Swift::OpaquePointer a1)
{
  v2 = sub_1A94C6720(a1._rawValue);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3B0);

  v3(v2);
}

uint64_t sub_1A94D8ABC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A957CE48();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1A957CE48();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1A93B6054(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A94D908C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_1A94D8BAC(void *a1, int64_t a2, char a3)
{
  result = sub_1A94D8BCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A94D8BCC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB388168, &qword_1A9595DA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB388170, &qword_1A9595DA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A94D8D10(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *a3;

  v11 = sub_1A937A490(v8, v7);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    sub_1A944FB30(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_1A937A490(v8, v7);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_1A957D438();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  sub_1A9450338();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v24 = (v23[6] + 16 * v11);
  *v24 = v8;
  v24[1] = v7;
  *(v23[7] + 4 * v11) = v9;
  v25 = v23[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v15)
  {
    v23[2] = v26;
    if (v4 != 1)
    {
      v6 = (a1 + 72);
      v27 = 1;
      while (v27 < *(a1 + 16))
      {
        v8 = *(v6 - 2);
        v7 = *(v6 - 1);
        v9 = *v6;
        v28 = *a3;

        v29 = sub_1A937A490(v8, v7);
        v31 = v28[2];
        v32 = (v30 & 1) == 0;
        v15 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (v15)
        {
          goto LABEL_22;
        }

        v17 = v30;
        if (v28[3] < v33)
        {
          sub_1A944FB30(v33, 1);
          v34 = *a3;
          v29 = sub_1A937A490(v8, v7);
          if ((v17 & 1) != (v35 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v17)
        {
          goto LABEL_8;
        }

        v36 = *a3;
        *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        v37 = (v36[6] + 16 * v29);
        *v37 = v8;
        v37[1] = v7;
        *(v36[7] + 4 * v29) = v9;
        v38 = v36[2];
        v15 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v15)
        {
          goto LABEL_23;
        }

        ++v27;
        v36[2] = v39;
        v6 += 6;
        if (v4 == v27)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_1A957CF08();
  MEMORY[0x1AC585140](0xD00000000000001BLL, 0x80000001A95C47D0);
  sub_1A957D058();
  MEMORY[0x1AC585140](39, 0xE100000000000000);
  sub_1A957D0A8();
  __break(1u);
}

uint64_t sub_1A94D908C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A957CE48();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A957CE48();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A93B744C(&qword_1EB388180, &qword_1EB388178, &unk_1A9595DD8);
          for (i = 0; i != v6; ++i)
          {
            sub_1A937829C(&qword_1EB388178, &unk_1A9595DD8);
            v9 = sub_1A93B62EC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A9387478(0, &qword_1EB385F18, off_1E787F2F8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94D9240()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1A9382328;

  return sub_1A94D5068(v10, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_1A94D9318(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A9382328;

  return sub_1A938F98C(a1, v5);
}

unint64_t sub_1A94D93E0()
{
  result = qword_1EB388148;
  if (!qword_1EB388148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388148);
  }

  return result;
}

uint64_t sub_1A94D9434@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 1);
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = v6;

  v8 = v6;
  TTSMarkup.SpeechText.transformed(_:)(sub_1A94D9A5C, a2);
}

double sub_1A94D94F4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v3 = v2[3];
  v6 = v2[4];
  v5 = v2[5];
  v7 = v2[6];
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = v8;
  v12[4] = v10;
  v12[5] = v11;
  v12[6] = v4;
  v12[7] = v3;
  v12[8] = v6;
  v12[9] = v5;
  v12[10] = v7;

  v13 = v6;

  v14 = v7;
  TTSMarkup.SpeechText.word(_:)(sub_1A94D95F4, v12, v18);

  v15 = v18[1];
  *a2 = v18[0];
  *(a2 + 8) = v15;
  result = *&v19;
  *(a2 + 16) = v19;
  return result;
}

void sub_1A94D95F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  v12 = *(v5 + 56);
  v40 = *(v5 + 48);
  v13 = *(v5 + 64);
  v39 = *(v5 + 72);
  v37 = *(v5 + 80);
  v41 = *(v5 + 32);
  KeyPath = swift_getKeyPath();
  TTSMarkupSpeech.subscript.getter(KeyPath, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);

  if (v43)
  {
    return;
  }

  v16 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v16) = 1;
  }

  v17 = 4 << v16;
  if ((a1 & 0xC) == 4 << v16)
  {
    a1 = sub_1A938156C(a1, a3, a4);
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_6:
      v18 = a1 >> 16;
      v19 = (a1 >> 16) + v42;
      if (!__OFADD__(a1 >> 16, v42))
      {
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      v18 = sub_1A938156C(a2, a3, a4);
      a2 = v18;
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_18:
      v22 = a3 & 0xFFFFFFFFFFFFLL;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v22 = HIBYTE(a4) & 0xF;
      }

      if (v22 < a2 >> 16)
      {
        goto LABEL_49;
      }

      v20 = sub_1A957C2F8();
      goto LABEL_22;
    }
  }

  else if ((a4 & 0x1000000000000000) == 0)
  {
    goto LABEL_6;
  }

  v21 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a4) & 0xF;
  }

  if (v21 < a1 >> 16)
  {
LABEL_57:
    __break(1u);
    return;
  }

  v18 = sub_1A957C2F8();
  v19 = v18 + v42;
  if (__OFADD__(v18, v42))
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((a2 & 0xC) == v17)
  {
    goto LABEL_17;
  }

  if ((a4 & 0x1000000000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v20 = a2 >> 16;
LABEL_22:
  v15 = v20 + v42;
  v11 = v40;
  if (__OFADD__(v20, v42))
  {
    __break(1u);
  }

  else
  {
    v23 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v23 = v40 & 0xFFFFFFFFFFFFLL;
    }

    a3 = v23 << 16;
    if ((v12 & 0x1000000000000000) == 0)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }

      if (v23 < v15)
      {
        goto LABEL_32;
      }

      a4 = (v15 << 16) | 4;
      if ((v19 & 0x8000000000000000) != 0)
      {
        while (1)
        {
          if (!v23)
          {
            goto LABEL_34;
          }

          __break(1u);
LABEL_31:
          if (v23)
          {
            break;
          }

LABEL_32:
          a4 = a3 | 7;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
        goto LABEL_57;
      }

LABEL_33:
      if (v23 >= v19)
      {
        v18 = (v19 << 16) | 4;
        goto LABEL_36;
      }

LABEL_34:
      v18 = a3 | 7;
      goto LABEL_36;
    }
  }

  a4 = sub_1A957C2D8();
  v35 = v34;
  v18 = sub_1A957C2D8();
  if ((v35 & 1) == 0)
  {
    goto LABEL_50;
  }

  if ((v40 & 0x800000000000000) != 0)
  {
    a4 = a3 | 7;
    if ((v15 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v36 = a3 | 0xB;
  a4 = a3 | 0xB;
  if (v15)
  {
    goto LABEL_53;
  }

LABEL_36:
  while (a4 >> 14 < v18 >> 14)
  {
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    if (v15)
    {
      if ((v11 & 0x800000000000000) != 0)
      {
        goto LABEL_34;
      }

      v36 = a3 | 0xB;
LABEL_53:
      v18 = v36;
    }
  }

  sub_1A937829C(&qword_1EB388038, &unk_1A95958C0);
  sub_1A93B744C(&unk_1EB388040, &qword_1EB388038, &unk_1A95958C0);
  sub_1A93820F4();
  v24 = sub_1A957CC38();
  v26 = v25;
  v27 = [objc_allocWithZone(TTSWordMarker) init];
  [v27 setByteOffset_];
  v28 = [v27 setWordRange_];
  v29 = MEMORY[0x1E69E7D40];
  v30 = (*((*MEMORY[0x1E69E7D40] & *v13) + 0x530))(v28);
  if (v30)
  {
    v31 = v30;
    v30();
    sub_1A93CF5C8(v31);
  }

  (*((*v29 & *v13) + 0x538))(0, 0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    [Strong speechRequest:v37 withMarker:v27];
  }
}

uint64_t sub_1A94D9A68(uint64_t a1)
{
  v2 = type metadata accessor for CoreSynthesizer.Substitution(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A94D9B18(uint64_t a1)
{
  if ((*(a1 + 16) & 0xE0000000000000FFLL) == 0x2000000000000000)
  {
    v2 = v1[2];
    v3 = v1[3];
    v4 = v1[4];
    v5 = *(a1 + 24);
    v6 = [objc_allocWithZone(TTSWordMarker) init];
    [v6 setByteOffset_];
    v7 = [v2 replacementRange];
    [v6 setWordRange_];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      [Strong speechRequest:v4 withMarker:v6];
    }
  }
}

uint64_t sub_1A94D9C08@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_1A957CBC8();
  v5 = sub_1A94D9D00(v4);
  if (!v5)
  {

    goto LABEL_6;
  }

  v6 = v5;
  sub_1A94D9D70(v4);
  v8 = v7;
  v10 = v9;

  if ((v10 & 1) != 0 || v8 < a2)
  {

LABEL_6:
    v11 = 1;
    goto LABEL_7;
  }

  sub_1A957C0F8();
  sub_1A957B108();

  v11 = 0;
LABEL_7:
  v12 = sub_1A957B308();
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, v11, 1, v12);
}

void *sub_1A94D9D00(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1A957CE18();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_1A94DFB48(v3, *(a1 + 36), 0, a1);
  v6 = v5;
  return v5;
}

double sub_1A94D9D70(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1A957CE18();
  if (v3 != 1 << *(a1 + 32))
  {
    sub_1A94DF9A4(v3, *(a1 + 36), 0, a1);
  }

  return result;
}

uint64_t type metadata accessor for TTSSegmentGenerator.Segment()
{
  result = qword_1EB3A07C0;
  if (!qword_1EB3A07C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A94D9E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A94D9EAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_1A94D9EF8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);

  return v3(v4);
}

uint64_t sub_1A94D9F4C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_1A94D9F84(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t TTSSegmentGenerator.SwitchMode.hashValue.getter()
{
  v1 = *v0;
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  return sub_1A957D548();
}

uint64_t sub_1A94DA060@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_1A94DA128(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t TTSSegmentGenerator.__allocating_init(mode:tokenUnit:locales:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93916A8;

  return TTSSegmentGenerator.init(mode:tokenUnit:locales:)(a1, a2, a3);
}

uint64_t TTSSegmentGenerator.init(mode:tokenUnit:locales:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 40) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1A94DA254, 0, 0);
}

uint64_t sub_1A94DA254()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 32) = 20;
  *(v3 + 64) = sub_1A94DA344(v2);

  v6 = sub_1A94DA7A0(v5);

  *(v3 + 72) = v6;
  type metadata accessor for TTSStringTagger();
  *(v3 + 40) = TTSStringTagger.__allocating_init(locales:)(v2);
  v7 = [objc_allocWithZone(MEMORY[0x1E6977A60]) init];
  *(v3 + 24) = v1;
  *(v3 + 48) = v7;
  *(v3 + 56) = v4;
  v8 = *(v0 + 8);
  v9 = *(v0 + 32);

  return v8(v9);
}

uint64_t sub_1A94DA344(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v56 = &v42 - v5;
  v55 = sub_1A957B2E8();
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v55, v8);
  v54 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A957B188();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v48 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v47 = &v42 - v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v46 = &v42 - v20;
  v21 = sub_1A957B308();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 16);
  if (!v27)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v29 = *(v22 + 16);
  v28 = v22 + 16;
  v30 = a1 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
  v52 = *(v28 + 56);
  v53 = v29;
  v50 = (v11 + 48);
  v51 = (v6 + 8);
  v43 = (v11 + 16);
  v44 = (v11 + 32);
  v42 = (v11 + 8);
  v49 = (v28 - 8);
  v31 = MEMORY[0x1E69E7CD0];
  v45 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29(v26, v30, v21);
  while (1)
  {
    v57 = v31;

    v32 = v54;
    sub_1A957B2F8();
    v33 = v56;
    sub_1A957B2B8();
    (*v51)(v32, v55);
    if ((*v50)(v33, 1, v10) == 1)
    {
      (*v49)(v26, v21);

      sub_1A937B960(v33, &qword_1EB386A68, &qword_1A9587F40);
    }

    else
    {
      v34 = v28;
      v35 = v21;
      v36 = v46;
      (*v44)(v46, v33, v10);
      v37 = v48;
      (*v43)(v48, v36, v10);
      v38 = v47;
      sub_1A93A3F0C(v47, v37);

      v39 = *v42;
      (*v42)(v38, v10);
      v40 = v36;
      v21 = v35;
      v28 = v34;
      v26 = v45;
      v39(v40, v10);
      (*v49)(v26, v21);
    }

    v31 = v57;
    v30 += v52;
    if (!--v27)
    {
      break;
    }

    v53(v26, v30, v21);
  }

  return v31;
}

uint64_t sub_1A94DA7A0(uint64_t a1)
{
  v2 = sub_1A957B188();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  v18[1] = v3 + 8;
  v18[2] = v3 + 16;
  v19 = a1;

  v13 = 0;
  for (i = MEMORY[0x1E69E7CD0]; v10; i = v20)
  {
    v15 = v13;
LABEL_9:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    (*(v3 + 16))(v7, *(v19 + 48) + *(v3 + 72) * (v16 | (v15 << 6)), v2);
    v20 = i;

    v17 = sub_1A94DE530();
    sub_1A94DE788(v17);

    result = (*(v3 + 8))(v7, v2);
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      return i;
    }

    v10 = *(a1 + 56 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94DA988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v53 = a1;
  v47 = a4;
  v6 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v50 = *(v6 - 8);
  v49 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v48 = &v42 - v8;
  v9 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v52 = &v42 - v12;
  v13 = sub_1A937829C(&qword_1EB388188, &qword_1A9595E00);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v42 - v17;
  v42 = sub_1A937829C(&qword_1EB388190, &qword_1A9595E08);
  v19 = *(v42 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v42, v21);
  v44 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v42 - v24;
  type metadata accessor for StreamingTokenizer();
  v26 = *(v4 + 56);
  v46 = a2;

  v27 = sub_1A93F87C4(v53, a2, v26);
  type metadata accessor for TTSSegmentGenerator.Segment();
  (*(v14 + 104))(v18, *MEMORY[0x1E69E8650], v13);
  sub_1A957C698();
  (*(v14 + 8))(v18, v13);

  v28 = v42;
  v43 = v25;
  sub_1A957C6A8();
  v29 = sub_1A957C688();
  (*(*(v29 - 8) + 56))(v52, 1, 1, v29);
  v30 = v44;
  v31 = v25;
  v32 = v28;
  (*(v19 + 16))(v44, v31, v28);
  v33 = v48;
  sub_1A9391BAC(v51, v48, &qword_1EB386A68, &qword_1A9587F40);
  v34 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v35 = (v20 + *(v50 + 80) + v34) & ~*(v50 + 80);
  v36 = (v49 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  v38 = v45;
  *(v37 + 4) = v27;
  *(v37 + 5) = v38;
  (*(v19 + 32))(&v37[v34], v30, v32);
  sub_1A94D9E3C(v33, &v37[v35]);
  v39 = &v37[v36];
  v40 = v46;
  *v39 = v53;
  *(v39 + 1) = v40;

  sub_1A93C4B70(0, 0, v52, &unk_1A9595E18, v37);

  return (*(v19 + 8))(v43, v32);
}

uint64_t sub_1A94DAE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v30;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v9 = sub_1A957B2E8();
  v8[29] = v9;
  v10 = *(v9 - 8);
  v8[30] = v10;
  v11 = *(v10 + 64) + 15;
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v12 = *(*(sub_1A937829C(&qword_1EB386988, &qword_1A9587830) - 8) + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v13 = sub_1A957B308();
  v8[35] = v13;
  v14 = *(v13 - 8);
  v8[36] = v14;
  v15 = *(v14 + 64) + 15;
  v8[37] = swift_task_alloc();
  v16 = sub_1A957B188();
  v8[38] = v16;
  v17 = *(v16 - 8);
  v8[39] = v17;
  v18 = *(v17 + 64) + 15;
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v19 = *(*(sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40) - 8) + 64) + 15;
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v20 = type metadata accessor for TTSSegmentGenerator.Segment();
  v8[53] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();
  v22 = sub_1A937829C(&qword_1EB3881F8, &qword_1A9596120);
  v8[56] = v22;
  v23 = *(v22 - 8);
  v8[57] = v23;
  v24 = *(v23 + 64) + 15;
  v8[58] = swift_task_alloc();
  v8[59] = swift_task_alloc();
  v25 = sub_1A937829C(&qword_1EB387010, &qword_1A958B000);
  v8[60] = v25;
  v26 = *(v25 - 8);
  v8[61] = v26;
  v27 = *(v26 + 64) + 15;
  v8[62] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94DB1D8, 0, 0);
}

uint64_t sub_1A94DB1D8()
{
  v1 = *(v0 + 496);
  (*(**(v0 + 184) + 128))();
  *(v0 + 504) = 0;
  v2 = *(MEMORY[0x1E69E8678] + 4);
  v3 = swift_task_alloc();
  *(v0 + 512) = v3;
  *v3 = v0;
  v3[1] = sub_1A94DB2B0;
  v4 = *(v0 + 496);
  v5 = *(v0 + 480);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v5);
}

uint64_t sub_1A94DB2B0()
{
  v1 = *(*v0 + 512);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A94DB3AC, 0, 0);
}

uint64_t sub_1A94DB3AC()
{
  v208 = v0[2];
  v1 = v0[7];
  if (!v1)
  {
LABEL_9:
    v17 = v0[59];
    v18 = v0[58];
    v20 = v0[54];
    v19 = v0[55];
    v21 = v0[51];
    v22 = v0[52];
    v23 = v0[50];
    v214 = v0[49];
    v216 = v0[48];
    v217 = v0[47];
    v220 = v0[46];
    v222 = v0[45];
    v224 = v0[44];
    v226 = v0[43];
    v229 = v0[42];
    v230 = v0[41];
    v233 = v0[40];
    v236 = v0[37];
    v240 = v0[34];
    v243 = v0[33];
    v246 = v0[32];
    v248 = v0[31];
    v24 = v0[25];
    (*(v0[61] + 8))(v0[62], v0[60]);
    sub_1A937829C(&qword_1EB388190, &qword_1A9595E08);
    sub_1A957C6C8();

    v25 = v0[1];

    return v25();
  }

  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[24];
  v203 = v0 + 2;
  if (!*(v6 + 24))
  {
    v44 = v0[3];
    v45 = v0[7];
    v46 = v0[59];
    v47 = v245[57];
    v250 = v245[56];
    v48 = v245[55];
    v49 = v245[53];
    v50 = v245[25];
    (*(v245[39] + 56))(&v48[*(v49 + 24)], 1, 1, v245[38]);
    *v48 = v2;
    *(v48 + 1) = v4;
    *(v48 + 2) = v5;
    *(v48 + 3) = v45;
    *(v48 + 4) = v208;
    *(v48 + 5) = v44;
    v51 = &v48[*(v49 + 28)];
    *v51 = 0u;
    *(v51 + 1) = 0u;
    sub_1A937829C(&qword_1EB388190, &qword_1A9595E08);
    sub_1A957C6B8();
    (*(v47 + 8))(v46, v250);
    v27 = v245;
    v52 = v245[63];
    goto LABEL_77;
  }

  v7 = v0 + 2;
  v8 = *(v6 + 40);
  v0[11] = MEMORY[0x1E69E67B0];
  v0[12] = sub_1A9445524();
  v9 = swift_allocObject();
  v0[8] = v9;
  v215 = v2;
  v9[2] = v2;
  v9[3] = v4;
  v9[4] = v5;
  v9[5] = v1;
  v10 = *(*v8 + 192);

  v213 = v1;
  v11 = v10(v7 + 6);
  sub_1A9378138(v7 + 6);
  v204 = v3;
  v209 = v5;
  v212 = v4;
  if (*(v11 + 16) == 1)
  {
    v12 = *(v11 + 56);
    if (*(v12 + 16) == 1)
    {
      v13 = 0;
      v14 = 0;
      v0 = (v12 + 56);
      v15 = 1 << *(v12 + 32);
      while (1)
      {
        v16 = *(v12 + 8 * v14 + 56);
        if (v16)
        {
          break;
        }

        ++v14;
        v13 -= 64;
        if ((v15 + 63) >> 6 == v14)
        {
          goto LABEL_8;
        }
      }

      v53 = __clz(__rbit64(v16));
      if (v53 - v15 == v13)
      {
LABEL_8:
        __break(1u);
        goto LABEL_9;
      }

      v54 = *(v12 + 36);
      v55 = *(v11 + 56);

      if (-v13 < 0)
      {
        goto LABEL_84;
      }

      v56 = v53 - v13;
      if ((v53 - v13) >= 1 << *(v12 + 32))
      {
        goto LABEL_84;
      }

      if (((v0[v14 & 0x3FFFFFFFFFFFFFFLL] >> v53) & 1) == 0)
      {
        goto LABEL_85;
      }

      if (v54 != *(v12 + 36))
      {
        goto LABEL_86;
      }

      v58 = v245[57];
      v57 = v245[58];
      v251 = v245[56];
      v59 = v245[54];
      v60 = v245[53];
      v61 = v245[52];
      v62 = v245[42];
      v63 = v245[39];
      v64 = v245[38];
      v65 = v245[25];
      (*(v63 + 16))(v62, *(v12 + 48) + *(v63 + 72) * v56, v64);

      (*(v63 + 32))(v61, v62, v64);
      (*(v63 + 56))(v61, 0, 1, v64);
      *v59 = v215;
      v59[1] = v212;
      v59[2] = v209;
      v59[3] = v213;
      v59[4] = v208;
      v59[5] = v204;
      sub_1A94D9E3C(v61, v59 + *(v60 + 24));
      v66 = *(v60 + 28);
      v27 = v245;
      v67 = (v59 + v66);
      *v67 = 0u;
      v67[1] = 0u;
      sub_1A937829C(&qword_1EB388190, &qword_1A9595E08);
      sub_1A957C6B8();
      (*(v58 + 8))(v57, v251);
      v52 = v245[63];
      goto LABEL_77;
    }
  }

  v27 = v245;
  v28 = v245[24];
  sub_1A9391BAC(v245[26], v245[51], &qword_1EB386A68, &qword_1A9587F40);
  v207 = v11;
  if (*(v28 + 24) == 2)
  {
    v29 = v245[24];
    v30 = *(v29 + 48);
    v31 = *(v29 + 72);
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = sub_1A94DEF6C(*(v31 + 16), 0);
      v249 = sub_1A94DF9F4(v203 + 16, v33 + 4, v32, v31);
      v34 = v245[18];
      v35 = v245[19];
      v36 = v245[20];
      v37 = v245[21];
      v38 = v245[22];

      v39 = sub_1A932D088();
      if (v249 != v32)
      {
        goto LABEL_87;
      }

      v43 = v1;
      v5 = v209;
      v11 = v207;
    }

    else
    {
      v43 = v1;
    }

    v68 = v245[35];
    v69 = v245[36];
    v70 = v245[34];
    type metadata accessor for NLLanguage(0);
    v71 = sub_1A957C4B8();

    [v30 setLanguageConstraints_];

    [v30 reset];
    MEMORY[0x1AC585090](v215, v212, v5, v43);
    v72 = sub_1A957C0C8();

    [v30 processString_];

    sub_1A94D9C08(v70, 0.9);
    if ((*(v69 + 48))(v70, 1, v68) == 1)
    {
      sub_1A937B960(v245[34], &qword_1EB386988, &qword_1A9587830);
      v4 = v212;
    }

    else
    {
      v73 = v245[50];
      v74 = v245[39];
      v252 = v245[38];
      v76 = v245[36];
      v75 = v245[37];
      v77 = v245[35];
      v78 = v245[32];
      v79 = v245[29];
      v80 = v245[30];
      (*(v76 + 32))(v75, v245[34], v77);
      sub_1A957B2F8();
      sub_1A957B2B8();
      (*(v80 + 8))(v78, v79);
      (*(v76 + 8))(v75, v77);
      if ((*(v74 + 48))(v73, 1, v252) == 1)
      {
        sub_1A937B960(v245[50], &qword_1EB386A68, &qword_1A9587F40);
      }

      else
      {
        v81 = v245[50];
        v82 = v245[51];
        v83 = v245[38];
        v84 = v245[39];
        sub_1A937B960(v82, &qword_1EB386A68, &qword_1A9587F40);
        (*(v84 + 32))(v82, v81, v83);
        (*(v84 + 56))(v82, 0, 1, v83);
      }

      v5 = v209;
      v4 = v212;
      v11 = v207;
    }
  }

  v85 = v245[49];
  v86 = v245[38];
  v87 = v245[39];
  sub_1A9391BAC(v245[51], v85, &qword_1EB386A68, &qword_1A9587F40);
  v241 = *(v87 + 48);
  if (v241(v85, 1, v86) == 1)
  {
    v39 = sub_1A937B960(v245[49], &qword_1EB386A68, &qword_1A9587F40);
    v201 = v245[63];
  }

  else
  {
    v88 = v245[63];
    v89 = v245[41];
    v90 = v245[24];
    (*(v245[39] + 32))(v89, v245[49], v245[38]);
    v91 = swift_task_alloc();
    v91[2] = v89;
    v91[3] = v215;
    v91[4] = v4;
    v91[5] = v5;
    v91[6] = v213;
    v91[7] = v90;
    LOBYTE(v89) = sub_1A94DC7E8(sub_1A94E0428, v91, v11);
    v201 = v88;

    if ((v89 & 1) == 0)
    {
      v190 = v245[57];
      v191 = v245[55];
      v192 = v245[53];
      v247 = v245[56];
      v255 = v27[51];
      v193 = v27[41];
      v242 = v27[59];
      v194 = v27[38];
      v195 = v27[39];
      v239 = v27[25];

      v196 = *(v192 + 24);
      (*(v195 + 16))(&v191[v196], v193, v194);
      (*(v195 + 56))(&v191[v196], 0, 1, v194);
      *v191 = v215;
      *(v191 + 1) = v212;
      *(v191 + 2) = v209;
      *(v191 + 3) = v213;
      *(v191 + 4) = v208;
      *(v191 + 5) = v204;
      v197 = &v191[*(v192 + 28)];
      *v197 = 0u;
      *(v197 + 1) = 0u;
      sub_1A937829C(&qword_1EB388190, &qword_1A9595E08);
      sub_1A957C6B8();
      (*(v190 + 8))(v242, v247);
      sub_1A937B960(v255, &qword_1EB386A68, &qword_1A9587F40);
      (*(v195 + 8))(v193, v194);
      goto LABEL_76;
    }

    v39 = (*(v245[39] + 8))(v245[41], v245[38]);
  }

  v206 = *(v11 + 16);
  if (!v206)
  {
LABEL_74:
    v189 = v27[51];

    sub_1A937B960(v189, &qword_1EB386A68, &qword_1A9587F40);
LABEL_76:
    v52 = v201;
LABEL_77:
    v27[63] = v52;
    v198 = *(MEMORY[0x1E69E8678] + 4);
    v199 = swift_task_alloc();
    v27[64] = v199;
    *v199 = v27;
    v199[1] = sub_1A94DB2B0;
    v200 = v27[62];
    v42 = v27[60];
    v39 = v203;
    v40 = 0;
    v41 = 0;

    return MEMORY[0x1EEE6D9C8](v39, v40, v41, v42);
  }

  v92 = 0;
  v205 = v11 + 32;
  while (v92 < *(v11 + 16))
  {
    v227 = v27[51];
    v104 = v27[48];
    v253 = v27[38];
    v105 = v205 + 48 * v92;
    v106 = *(v105 + 16);
    v108 = *(v105 + 24);
    v107 = *(v105 + 32);
    v109 = *(v105 + 40);
    v223 = *v105;
    v225 = *(v105 + 8);
    sub_1A9457A70(*v105, v225, v106);

    v218 = v107;
    v210 = v109;
    v110 = sub_1A957CC98();
    v234 = v111;
    v237 = v110;
    v231 = v112;
    v244 = v113;
    sub_1A9391BAC(v227, v104, &qword_1EB386A68, &qword_1A9587F40);
    v39 = (v241)(v104, 1, v253);
    if (v39 == 1)
    {
      goto LABEL_88;
    }

    v228 = v106;
    v254 = v108;
    v221 = v92;
    if (*(v108 + 16))
    {
      v114 = v27[48];
      v115 = v27[38];
      v116 = *(v108 + 40);
      sub_1A94E02D4(&qword_1EB386498, MEMORY[0x1E6969610]);

      v117 = sub_1A957C058();
      v118 = v108 + 56;
      v119 = -1 << *(v108 + 32);
      v120 = v117 & ~v119;
      if ((*(v118 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120))
      {
        v121 = ~v119;
        v122 = v27[39];
        v123 = *(v122 + 72);
        v124 = *(v122 + 16);
        while (1)
        {
          v125 = v27[48];
          v126 = v27[39];
          v127 = v27[40];
          v128 = v27[38];
          v124(v127, *(v254 + 48) + v120 * v123, v128);
          sub_1A94E02D4(&qword_1EB386490, MEMORY[0x1E6969610]);
          LOBYTE(v125) = sub_1A957C098();
          v129 = *(v126 + 8);
          v129(v127, v128);
          if (v125)
          {
            break;
          }

          v120 = (v120 + 1) & v121;
          v27 = v245;
          if (((*(v118 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v149 = v245[57];
        v235 = v245[59];
        v238 = v245[56];
        v150 = v245[55];
        v151 = v245[53];
        v202 = v245[51];
        v152 = v245[48];
        v153 = v245[38];
        v155 = v245[27];
        v154 = v245[28];
        v232 = v245[25];

        v129(v152, v153);
        v156 = sub_1A957C3B8();
        v158 = v157;
        v160 = v159;
        v162 = v161;
        sub_1A9391BAC(v202, v150 + *(v151 + 24), &qword_1EB386A68, &qword_1A9587F40);
        *v150 = v156;
        v150[1] = v158;
        v150[2] = v160;
        v150[3] = v162;
        v150[4] = v218;
        v150[5] = v210;
        v163 = (v150 + *(v151 + 28));
        *v163 = v223;
        v163[1] = v225;
        v163[2] = v228;
        v163[3] = v254;
        sub_1A937829C(&qword_1EB388190, &qword_1A9595E08);
        sub_1A957C6B8();
        v39 = (*(v149 + 8))(v235, v238);
        goto LABEL_38;
      }
    }

    else
    {
    }

LABEL_48:
    v130 = *(v27[39] + 8);
    v39 = (v130)(v27[48], v27[38]);
    v131 = 0;
    v132 = 0;
    v133 = 1 << *(v254 + 32);
    while (1)
    {
      v134 = *(v254 + 8 * v132 + 56);
      if (v134)
      {
        break;
      }

      ++v132;
      v131 -= 64;
      if ((v133 + 63) >> 6 == v132)
      {
        v135 = 1;
        v136 = v241;
        goto LABEL_58;
      }
    }

    v137 = __clz(__rbit64(v134));
    v136 = v241;
    if (v137 - v133 == v131)
    {
      v135 = 1;
    }

    else
    {
      if (-v131 < 0)
      {
        goto LABEL_82;
      }

      v138 = v137 - v131;
      if (v138 >= v133)
      {
        goto LABEL_82;
      }

      if (((*(v254 + 56 + 8 * (v132 & 0x3FFFFFFFFFFFFFFLL)) >> v137) & 1) == 0)
      {
        goto LABEL_83;
      }

      (*(v27[39] + 16))(v27[47], *(v254 + 48) + *(v27[39] + 72) * v138, v27[38]);
      v135 = 0;
    }

LABEL_58:
    v219 = *(v27[39] + 56);
    v219(v27[47], v135, 1, v27[38]);
    if (*(v254 + 16) < 2uLL)
    {
    }

    else
    {
      v139 = *(v27[24] + 48);
      [v139 reset];
      v140 = sub_1A94DA7A0(v254);

      v141 = *(v140 + 16);
      v211 = v130;
      if (v141)
      {
        v142 = sub_1A94DEF6C(v141, 0);
        v143 = sub_1A94DF9F4(v203 + 11, v142 + 4, v141, v140);
        v144 = v27[13];
        v145 = v27[14];
        v146 = v27[15];
        v147 = v27[16];
        v148 = v27[17];
        v39 = sub_1A932D088();
        if (v143 != v141)
        {
          goto LABEL_81;
        }
      }

      else
      {
      }

      v164 = v27[35];
      v165 = v27[36];
      v166 = v27[33];
      type metadata accessor for NLLanguage(0);
      v167 = sub_1A957C4B8();

      [v139 setLanguageConstraints_];

      MEMORY[0x1AC585090](v237, v234, v231, v244);
      v168 = sub_1A957C0C8();

      [v139 processString_];

      sub_1A94D9C08(v166, 0.95);
      if ((*(v165 + 48))(v166, 1, v164) == 1)
      {
        sub_1A937B960(v27[33], &qword_1EB386988, &qword_1A9587830);
        v136 = v241;
      }

      else
      {
        v175 = v27[46];
        v176 = v27[38];
        v177 = v27;
        v178 = v27[36];
        v179 = v177[35];
        v180 = v177[33];
        v182 = v177[30];
        v181 = v177[31];
        v183 = v177[29];
        sub_1A957B2F8();
        (*(v178 + 8))(v180, v179);
        sub_1A957B2B8();
        (*(v182 + 8))(v181, v183);
        v136 = v241;
        if (v241(v175, 1, v176) == 1)
        {
          sub_1A937B960(v177[46], &qword_1EB386A68, &qword_1A9587F40);
        }

        else
        {
          v185 = v177[46];
          v184 = v177[47];
          v186 = v177[45];
          v187 = v177[38];
          v188 = v177[39] + 56;
          sub_1A957B148();
          v211(v185, v187);
          v136 = v241;
          sub_1A957B198();
          sub_1A937B960(v184, &qword_1EB386A68, &qword_1A9587F40);
          v219(v186, 0, 1, v187);
          sub_1A94D9E3C(v186, v184);
        }

        v27 = v177;
      }
    }

    v169 = v27[43];
    v170 = v27[38];
    sub_1A9391BAC(v27[47], v169, &qword_1EB386A68, &qword_1A9587F40);
    v171 = v136(v169, 1, v170);
    v172 = v27[43];
    v173 = v27[44];
    if (v171 == 1)
    {
      v174 = v27[38];
      sub_1A9391BAC(v27[26], v27[44], &qword_1EB386A68, &qword_1A9587F40);
      if (v136(v172, 1, v174) != 1)
      {
        sub_1A937B960(v27[43], &qword_1EB386A68, &qword_1A9587F40);
      }
    }

    else
    {
      v93 = v27[38];
      (*(v27[39] + 32))(v173, v172, v93);
      v219(v173, 0, 1, v93);
      v27 = v245;
    }

    v94 = v27[59];
    v95 = v27;
    v96 = v27[57];
    v98 = v95[55];
    v97 = v95[56];
    v99 = v95[53];
    v100 = v95[47];
    v101 = v95[44];
    v102 = v95[25];
    sub_1A9391BAC(v101, v98 + *(v99 + 24), &qword_1EB386A68, &qword_1A9587F40);
    *v98 = v237;
    v98[1] = v234;
    v98[2] = v231;
    v98[3] = v244;
    v98[4] = v208;
    v98[5] = v204;
    v103 = (v98 + *(v99 + 28));
    *v103 = v223;
    v103[1] = v225;
    v103[2] = v228;
    v103[3] = v254;
    sub_1A937829C(&qword_1EB388190, &qword_1A9595E08);
    sub_1A957C6B8();
    (*(v96 + 8))(v94, v97);
    sub_1A937B960(v101, &qword_1EB386A68, &qword_1A9587F40);
    v39 = sub_1A937B960(v100, &qword_1EB386A68, &qword_1A9587F40);
LABEL_38:
    v92 = v221 + 1;
    v11 = v207;
    v27 = v245;
    if (v221 + 1 == v206)
    {
      goto LABEL_74;
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
  return MEMORY[0x1EEE6D9C8](v39, v40, v41, v42);
}

uint64_t sub_1A94DC7E8(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 64);
    do
    {
      v8 = v6;
      v9 = *(v7 - 1);
      v10 = *(v7 - 3);
      v11 = *(v7 - 16);
      v13 = *(v7 - 4);
      v14 = v10;
      v15 = v11;
      v16 = v9;
      v17 = *v7;
      sub_1A9457A70(v13, v10, v11);

      LOBYTE(v9) = a1(&v13);
      sub_1A9458200(v13, v14, v15);

      LOBYTE(v4) = (v3 != 0) | v9;
      if ((v3 != 0) | v9 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 3;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t TTSSegmentGenerator.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return v0;
}

uint64_t TTSSegmentGenerator.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t TTSSegmentGenerator.utteranceStream(string:voice:resolver:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a4;
  v32 = a3;
  v33 = a5;
  v34 = a1;
  v35 = a2;
  v5 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v31 - v8;
  v31 = &v31 - v8;
  v10 = sub_1A937829C(&qword_1EB388198, &qword_1A9595E20);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v31 - v14;
  v16 = sub_1A937829C(&qword_1EB3881A0, &qword_1A9595E28);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v31 - v23;
  memcpy(v39, v32, 0x118uLL);
  (*(v11 + 104))(v15, *MEMORY[0x1E69E8650], v10);
  sub_1A957C698();
  (*(v11 + 8))(v15, v10);
  v25 = sub_1A957C688();
  (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
  (*(v17 + 16))(v21, v24, v16);
  v26 = (*(v17 + 80) + 344) & ~*(v17 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = v35;
  v29 = v34;
  *(v27 + 4) = v36;
  *(v27 + 5) = v29;
  *(v27 + 6) = v28;
  memcpy(v27 + 56, v39, 0x118uLL);
  *(v27 + 42) = v37;
  (*(v17 + 32))(&v27[v26], v21, v16);

  sub_1A937B3DC(v39, &v38);

  sub_1A938A404(0, 0, v31, &unk_1A9595E38, v27);

  return (*(v17 + 8))(v24, v16);
}

uint64_t sub_1A94DCCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[346] = v34;
  v8[345] = a8;
  v8[344] = a7;
  v8[343] = a6;
  v8[342] = a5;
  v8[341] = a4;
  v9 = sub_1A937829C(&qword_1EB3881D8, &qword_1A95960F8);
  v8[347] = v9;
  v10 = *(v9 - 8);
  v8[348] = v10;
  v11 = *(v10 + 64) + 15;
  v8[349] = swift_task_alloc();
  v12 = sub_1A957B188();
  v8[350] = v12;
  v13 = *(v12 - 8);
  v8[351] = v13;
  v14 = *(v13 + 64) + 15;
  v8[352] = swift_task_alloc();
  v8[353] = swift_task_alloc();
  v8[354] = swift_task_alloc();
  v8[355] = swift_task_alloc();
  v15 = type metadata accessor for TTSSegmentGenerator.Segment();
  v8[356] = v15;
  v16 = *(v15 - 8);
  v8[357] = v16;
  v17 = *(v16 + 64) + 15;
  v8[358] = swift_task_alloc();
  v18 = *(*(sub_1A937829C(&qword_1EB3881E0, &qword_1A9596100) - 8) + 64) + 15;
  v8[359] = swift_task_alloc();
  v19 = *(*(sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40) - 8) + 64) + 15;
  v8[360] = swift_task_alloc();
  v8[361] = swift_task_alloc();
  v20 = sub_1A957B2E8();
  v8[362] = v20;
  v21 = *(v20 - 8);
  v8[363] = v21;
  v22 = *(v21 + 64) + 15;
  v8[364] = swift_task_alloc();
  v23 = sub_1A957B308();
  v8[365] = v23;
  v24 = *(v23 - 8);
  v8[366] = v24;
  v25 = *(v24 + 64) + 15;
  v8[367] = swift_task_alloc();
  v26 = sub_1A937829C(&qword_1EB3881E8, &qword_1A9596108);
  v8[368] = v26;
  v27 = *(v26 - 8);
  v8[369] = v27;
  v28 = *(v27 + 64) + 15;
  v8[370] = swift_task_alloc();
  v29 = sub_1A937829C(&qword_1EB3881F0, &unk_1A9596110);
  v8[371] = v29;
  v30 = *(v29 - 8);
  v8[372] = v30;
  v31 = *(v30 + 64) + 15;
  v8[373] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94DD090, 0, 0);
}

uint64_t sub_1A94DD090()
{
  v23 = v0;
  v1 = *(v0 + 2960);
  v2 = *(v0 + 2952);
  v20 = *(v0 + 2944);
  v21 = *(v0 + 2984);
  v3 = *(v0 + 2936);
  v4 = *(v0 + 2928);
  v5 = *(v0 + 2912);
  v6 = *(v0 + 2904);
  v16 = *(v0 + 2920);
  v17 = *(v0 + 2896);
  v7 = *(v0 + 2888);
  v18 = *(v0 + 2736);
  v19 = *(v0 + 2744);
  v8 = *(v0 + 2728);
  memcpy(__dst, *(v0 + 2752), sizeof(__dst));
  CoreSynthesizer.Voice.primaryLocale.getter(v3);
  sub_1A957B2F8();
  v9 = *(v4 + 8);
  *(v0 + 2992) = v9;
  *(v0 + 3000) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v3, v16);
  sub_1A957B2B8();
  (*(v6 + 8))(v5, v17);
  (*(*v8 + 248))(v18, v19, v7);
  sub_1A937B960(v7, &qword_1EB386A68, &qword_1A9587F40);
  sub_1A957C6F8();
  (*(v2 + 8))(v1, v20);
  v10 = *(MEMORY[0x1E69E8678] + 4);
  v11 = swift_task_alloc();
  *(v0 + 3008) = v11;
  *v11 = v0;
  v11[1] = sub_1A94DD284;
  v12 = *(v0 + 2984);
  v13 = *(v0 + 2968);
  v14 = *(v0 + 2872);

  return MEMORY[0x1EEE6D9C8](v14, 0, 0, v13);
}

uint64_t sub_1A94DD284()
{
  v1 = *(*v0 + 3008);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A94DD380, 0, 0);
}

uint64_t sub_1A94DD380()
{
  v116 = v0;
  v1 = *(v0 + 2872);
  v2 = *(v0 + 2848);
  if ((*(*(v0 + 2856) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 2960);
    v4 = *(v0 + 2936);
    v5 = *(v0 + 2912);
    v6 = *(v0 + 2888);
    v7 = *(v0 + 2880);
    v8 = *(v0 + 2864);
    v96 = *(v0 + 2840);
    v99 = *(v0 + 2832);
    v102 = *(v0 + 2824);
    v9 = *(v0 + 2816);
    v107 = *(v0 + 2792);
    v10 = *(v0 + 2768);
    (*(*(v0 + 2976) + 8))(*(v0 + 2984), *(v0 + 2968));
    sub_1A937829C(&qword_1EB3881A0, &qword_1A9595E28);
    sub_1A957C6C8();

    v11 = *(v0 + 8);

    return v11();
  }

  v13 = *(v0 + 2880);
  v14 = *(v0 + 2864);
  v15 = *(v0 + 2808);
  v16 = *(v0 + 2800);
  sub_1A94E0364(v1, v14);
  sub_1A9391BAC(v14 + *(v2 + 24), v13, &qword_1EB386A68, &qword_1A9587F40);
  v17 = (*(v15 + 48))(v13, 1, v16);
  v18 = *(v0 + 2880);
  if (v17 == 1)
  {
    v19 = *(v0 + 2752);
    sub_1A937B960(*(v0 + 2880), &qword_1EB386A68, &qword_1A9587F40);
    v104 = *(v19 + 272);
    v108 = *(v19 + 264);
    v100 = *(v19 + 248);
    v103 = *(v19 + 216);
    v95 = *(v19 + 232);
    v97 = *(v19 + 200);
    v93 = *(v19 + 188);
    v94 = *(v19 + 193);
    v91 = *(v19 + 184);
    v92 = *(v19 + 192);
    v90 = *(v19 + 160);
    v20 = *(v19 + 176);
    v88 = *(v19 + 152);
    v89 = *(v19 + 144);
    v86 = *(v19 + 136);
    v87 = *(v19 + 128);
    v84 = *(v19 + 104);
    v85 = *(v19 + 96);
    v83 = *(v19 + 112);
    v82 = *(v19 + 120);
    v80 = *(v19 + 64);
    v81 = *(v19 + 80);
    v78 = *(v19 + 56);
    v79 = *(v19 + 57);
    v21 = *(v19 + 40);
    v22 = *(v19 + 48);
    v24 = *(v19 + 24);
    v23 = *(v19 + 32);
    v25 = *v19;
    v77 = *(v19 + 8);
    v26 = v0 + 400;
    goto LABEL_21;
  }

  v27 = *(v0 + 2840);
  v28 = *(v0 + 2832);
  v29 = *(v0 + 2824);
  v30 = *(v0 + 2808);
  v31 = *(v0 + 2800);
  (*(v30 + 32))(v27, *(v0 + 2880), v31);
  sub_1A937829C(&qword_1EB386B40, &qword_1A95885C8);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v105 = *(v30 + 72);
  v33 = swift_allocObject();
  v34 = *(v30 + 16);
  v34(v33 + v32, v27, v31);
  v35 = sub_1A94E02D4(&qword_1EB386498, MEMORY[0x1E6969610]);
  __dst[0] = MEMORY[0x1AC585770](1, v31, v35);
  v101 = v34;
  v34(v28, v33 + v32, v31);
  swift_setDeallocating();
  v36 = *(v30 + 8);
  *(v0 + 3016) = v36;
  *(v0 + 3024) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36(v33 + v32, v31);
  swift_deallocClassInstance();
  sub_1A93A3F0C(v29, v28);
  v109 = v36;
  v36(v29, v31);
  v37 = __dst[0];
  if (Locale.LanguageCode.isMacroLanguage.getter())
  {
    v38 = *(v0 + 2840);
    v39 = Locale.LanguageCode.childLanguages.getter();
    v43 = 0;
    v45 = v39 + 56;
    v44 = *(v39 + 56);
    v98 = v39;
    v46 = -1;
    v47 = -1 << *(v39 + 32);
    if (-v47 < 64)
    {
      v46 = ~(-1 << -v47);
    }

    v48 = v46 & v44;
    v49 = (63 - v47) >> 6;
    if ((v46 & v44) != 0)
    {
      do
      {
        v50 = v43;
LABEL_16:
        v51 = *(v0 + 2816);
        v52 = *(v0 + 2800);
        v53 = __clz(__rbit64(v48));
        v48 &= v48 - 1;
        v101(v51, *(v98 + 48) + (v53 | (v50 << 6)) * v105, v52);
        v54 = Locale.LanguageCode.childLanguages.getter();
        v109(v51, v52);
        v39 = sub_1A94DE314(v54, v37);
        v37 = v39;
      }

      while (v48);
    }

    while (1)
    {
      v50 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v50 >= v49)
      {

        goto LABEL_19;
      }

      v48 = *(v45 + 8 * v50);
      ++v43;
      if (v48)
      {
        v43 = v50;
        goto LABEL_16;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6D9C8](v39, v40, v41, v42);
  }

LABEL_19:
  memcpy(__dst, *(v0 + 2752), 0x118uLL);
  CoreSynthesizer.Voice.locales.getter((v0 + 2688));
  v55 = *(v0 + 2712);
  v56 = *(v0 + 2720);
  sub_1A93780F4((v0 + 2688), v55);
  v57 = sub_1A94DE890(v55, v56, &qword_1EB386A70, &qword_1A9587F48);
  v58 = sub_1A93A5804(v37, v57);

  sub_1A9378138((v0 + 2688));
  v59 = *(v58 + 16);

  if (v59)
  {
    v19 = *(v0 + 2752);
    v109(*(v0 + 2840), *(v0 + 2800));
    v104 = *(v19 + 272);
    v108 = *(v19 + 264);
    v100 = *(v19 + 248);
    v103 = *(v19 + 216);
    v95 = *(v19 + 232);
    v97 = *(v19 + 200);
    v93 = *(v19 + 188);
    v94 = *(v19 + 193);
    v91 = *(v19 + 184);
    v92 = *(v19 + 192);
    v90 = *(v19 + 160);
    v20 = *(v19 + 176);
    v88 = *(v19 + 152);
    v89 = *(v19 + 144);
    v86 = *(v19 + 136);
    v87 = *(v19 + 128);
    v84 = *(v19 + 104);
    v85 = *(v19 + 96);
    v83 = *(v19 + 112);
    v82 = *(v19 + 120);
    v80 = *(v19 + 64);
    v81 = *(v19 + 80);
    v78 = *(v19 + 56);
    v79 = *(v19 + 57);
    v21 = *(v19 + 40);
    v22 = *(v19 + 48);
    v24 = *(v19 + 24);
    v23 = *(v19 + 32);
    v25 = *v19;
    v77 = *(v19 + 8);
    v26 = v0 + 1520;
LABEL_21:
    sub_1A937B3DC(v19, v26);
    v60 = *(v0 + 2864);
    v61 = *(v0 + 2792);
    v62 = *(v0 + 2784);
    v76 = *(v0 + 2776);
    v63 = *(v0 + 2768);
    *(v0 + 960) = v25;
    *(v0 + 968) = v77;
    *(v0 + 984) = v24;
    *(v0 + 992) = v23;
    *(v0 + 1000) = v21;
    *(v0 + 1008) = v22;
    *(v0 + 1016) = v78;
    *(v0 + 1017) = v79;
    *(v0 + 1040) = v81;
    *(v0 + 1024) = v80;
    *(v0 + 1056) = v85;
    *(v0 + 1064) = v84;
    *(v0 + 1072) = v83;
    *(v0 + 1080) = v82;
    *(v0 + 1088) = v87;
    *(v0 + 1096) = v86;
    *(v0 + 1104) = v89;
    *(v0 + 1112) = v88;
    *(v0 + 1120) = v90;
    *(v0 + 1136) = v20;
    *(v0 + 1144) = v91;
    *(v0 + 1148) = v93;
    *(v0 + 1152) = v92;
    *(v0 + 1153) = v94;
    *(v0 + 1160) = v97;
    *(v0 + 1176) = v103;
    *(v0 + 1192) = v95;
    *(v0 + 1208) = v100;
    *(v0 + 1224) = v108;
    *(v0 + 1232) = v104;
    *(v0 + 2640) = MEMORY[0x1AC585090](*v60, v60[1], v60[2], v60[3]);
    *(v0 + 2648) = v64;
    *(v0 + 2656) = 0;
    *(v0 + 2660) = 1;
    *(v0 + 2664) = 0;
    *(v0 + 2668) = 1;
    *(v0 + 2672) = 0;
    *(v0 + 2676) = 1;
    *(v0 + 2680) = 1;
    memcpy((v0 + 680), (v0 + 960), 0x118uLL);
    nullsub_23(v0 + 680);
    memcpy(__dst, (v0 + 680), 0x118uLL);
    v111 = 1;
    sub_1A937B3DC(v0 + 960, v0 + 1240);
    v65 = sub_1A937838C();
    sub_1A937BA74(&v112);
    v113 = v112;
    sub_1A937BA78(&v114);
    CoreSynthesizer.Utterance.init(id:speech:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:)(__dst, 0, 0, v0 + 2640, v65, &v113, &v111, &v114, v0 + 16);
    sub_1A937829C(&qword_1EB3881A0, &qword_1A9595E28);
    sub_1A957C6B8();
    sub_1A937B48C(v0 + 960);
    (*(v62 + 8))(v61, v76);
    sub_1A94E03C8(v60, type metadata accessor for TTSSegmentGenerator.Segment);
    v66 = *(MEMORY[0x1E69E8678] + 4);
    v67 = swift_task_alloc();
    *(v0 + 3008) = v67;
    *v67 = v0;
    v67[1] = sub_1A94DD284;
    v68 = *(v0 + 2984);
    v42 = *(v0 + 2968);
    v39 = *(v0 + 2872);
    v40 = 0;
    v41 = 0;

    return MEMORY[0x1EEE6D9C8](v39, v40, v41, v42);
  }

  v69 = *(v0 + 2936);
  v70 = *(v0 + 2840);
  v71 = *(v0 + 2760);
  sub_1A957B148();
  sub_1A957B1B8();
  v106 = (*v71 + 416);
  v110 = (*v106 + **v106);
  v72 = (*v106)[1];
  v73 = swift_task_alloc();
  *(v0 + 3032) = v73;
  *v73 = v0;
  v73[1] = sub_1A94DDDA4;
  v74 = *(v0 + 2936);
  v75 = *(v0 + 2760);

  return v110(v0 + 2080, v74);
}

uint64_t sub_1A94DDDA4()
{
  v1 = *(*v0 + 3032);
  v2 = *(*v0 + 3000);
  v3 = *(*v0 + 2992);
  v4 = *(*v0 + 2936);
  v5 = *(*v0 + 2920);
  v7 = *v0;

  v3(v4, v5);

  return MEMORY[0x1EEE6DFA0](sub_1A94DDF04, 0, 0);
}

uint64_t sub_1A94DDF04()
{
  v77 = v0;
  v1 = *(v0 + 3024);
  (*(v0 + 3016))(*(v0 + 2840), *(v0 + 2800));
  memcpy((v0 + 1800), (v0 + 2080), 0x118uLL);
  if (sub_1A932D058(v0 + 1800) == 1)
  {
    v2 = *(v0 + 2752);
    v70 = *(v2 + 272);
    v71 = *(v2 + 264);
    v68 = *(v2 + 200);
    v69 = *(v2 + 216);
    v66 = *(v2 + 248);
    v64 = *(v2 + 232);
    v67 = *(v2 + 193);
    v65 = *(v2 + 188);
    v62 = *(v2 + 184);
    v63 = *(v2 + 192);
    v59 = *(v2 + 160);
    v3 = *(v2 + 176);
    v60 = *(v2 + 152);
    v61 = *(v2 + 144);
    v57 = *(v2 + 136);
    v58 = *(v2 + 128);
    v55 = *(v2 + 104);
    v56 = *(v2 + 96);
    v54 = *(v2 + 112);
    v4 = *(v2 + 120);
    v52 = *(v2 + 64);
    v53 = *(v2 + 80);
    v5 = *(v2 + 57);
    v6 = *(v2 + 56);
    v7 = *(v2 + 40);
    v8 = *(v2 + 48);
    v9 = *(v2 + 24);
    v10 = *(v2 + 32);
    v11 = *v2;
    v51 = *(v2 + 8);
    sub_1A937B3DC(v2, v0 + 2360);
    v13 = v51;
    v12 = v52;
    v14 = v8;
    v15 = v7;
    v16 = v6;
    v17 = v5;
    v18 = v53;
    v19 = v4;
    v21 = v54;
    v20 = v55;
    v22 = v56;
    v23 = v57;
    v24 = v58;
    v26 = v60;
    v25 = v61;
    v27 = v59;
    v29 = v62;
    v28 = v63;
    v30 = v65;
    v31 = v67;
    v32 = v64;
    v34 = v68;
    v33 = v69;
    v35 = v66;
    v37 = v70;
    v36 = v71;
  }

  else
  {
    v36 = *(v0 + 2064);
    v37 = *(v0 + 2072);
    v34 = *(v0 + 2000);
    v33 = *(v0 + 2016);
    v32 = *(v0 + 2032);
    v35 = *(v0 + 2048);
    v31 = *(v0 + 1993);
    v30 = *(v0 + 1988);
    v28 = *(v0 + 1992);
    v29 = *(v0 + 1984);
    v27 = *(v0 + 1960);
    v3 = *(v0 + 1976);
    v25 = *(v0 + 1944);
    v26 = *(v0 + 1952);
    v24 = *(v0 + 1928);
    v23 = *(v0 + 1936);
    v22 = *(v0 + 1896);
    v20 = *(v0 + 1904);
    v21 = *(v0 + 1912);
    v19 = *(v0 + 1920);
    v12 = *(v0 + 1864);
    v18 = *(v0 + 1880);
    v17 = *(v0 + 1857);
    v16 = *(v0 + 1856);
    v15 = *(v0 + 1840);
    v14 = *(v0 + 1848);
    v9 = *(v0 + 1824);
    v10 = *(v0 + 1832);
    v11 = *(v0 + 1800);
    v13 = *(v0 + 1808);
  }

  v38 = *(v0 + 2864);
  v39 = *(v0 + 2792);
  v40 = *(v0 + 2784);
  v41 = *(v0 + 2776);
  v42 = *(v0 + 2768);
  *(v0 + 960) = v11;
  *(v0 + 968) = v13;
  *(v0 + 984) = v9;
  *(v0 + 992) = v10;
  *(v0 + 1000) = v15;
  *(v0 + 1008) = v14;
  *(v0 + 1016) = v16;
  *(v0 + 1017) = v17;
  *(v0 + 1040) = v18;
  *(v0 + 1024) = v12;
  *(v0 + 1056) = v22;
  *(v0 + 1064) = v20;
  *(v0 + 1072) = v21;
  *(v0 + 1080) = v19;
  *(v0 + 1088) = v24;
  *(v0 + 1096) = v23;
  *(v0 + 1104) = v25;
  *(v0 + 1112) = v26;
  *(v0 + 1120) = v27;
  *(v0 + 1136) = v3;
  *(v0 + 1144) = v29;
  *(v0 + 1148) = v30;
  *(v0 + 1152) = v28;
  *(v0 + 1153) = v31;
  *(v0 + 1160) = v34;
  *(v0 + 1176) = v33;
  *(v0 + 1192) = v32;
  *(v0 + 1208) = v35;
  *(v0 + 1224) = v36;
  *(v0 + 1232) = v37;
  *(v0 + 2640) = MEMORY[0x1AC585090](*v38, v38[1], v38[2], v38[3]);
  *(v0 + 2648) = v43;
  *(v0 + 2656) = 0;
  *(v0 + 2660) = 1;
  *(v0 + 2664) = 0;
  *(v0 + 2668) = 1;
  *(v0 + 2672) = 0;
  *(v0 + 2676) = 1;
  *(v0 + 2680) = 1;
  memcpy((v0 + 680), (v0 + 960), 0x118uLL);
  nullsub_23(v0 + 680);
  memcpy(__dst, (v0 + 680), 0x118uLL);
  v73 = 1;
  sub_1A937B3DC(v0 + 960, v0 + 1240);
  v44 = sub_1A937838C();
  sub_1A937BA74(&v74);
  v75 = v74;
  sub_1A937BA78(v76);
  CoreSynthesizer.Utterance.init(id:speech:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:)(__dst, 0, 0, v0 + 2640, v44, &v75, &v73, v76, v0 + 16);
  sub_1A937829C(&qword_1EB3881A0, &qword_1A9595E28);
  sub_1A957C6B8();
  sub_1A937B48C(v0 + 960);
  (*(v40 + 8))(v39, v41);
  sub_1A94E03C8(v38, type metadata accessor for TTSSegmentGenerator.Segment);
  v45 = *(MEMORY[0x1E69E8678] + 4);
  v46 = swift_task_alloc();
  *(v0 + 3008) = v46;
  *v46 = v0;
  v46[1] = sub_1A94DD284;
  v47 = *(v0 + 2984);
  v48 = *(v0 + 2968);
  v49 = *(v0 + 2872);

  return MEMORY[0x1EEE6D9C8](v49, 0, 0, v48);
}

uint64_t sub_1A94DE314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A957B188();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = v29 - v13;
  result = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v29 - v17;
  v19 = 0;
  v30 = a1;
  v31 = a2;
  v22 = *(a1 + 56);
  v21 = a1 + 56;
  v20 = v22;
  v23 = 1 << *(v21 - 24);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;
  v29[2] = v5 + 32;
  v29[3] = v5 + 16;
  v29[1] = v5 + 8;
  if ((v24 & v20) != 0)
  {
    do
    {
      v27 = v19;
LABEL_9:
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      (*(v5 + 16))(v18, *(v30 + 48) + *(v5 + 72) * (v28 | (v27 << 6)), v4);
      (*(v5 + 32))(v10, v18, v4);
      sub_1A93A3F0C(v14, v10);
      result = (*(v5 + 8))(v14, v4);
    }

    while (v25);
  }

  while (1)
  {
    v27 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v27 >= v26)
    {

      return v31;
    }

    v25 = *(v21 + 8 * v27);
    ++v19;
    if (v25)
    {
      v19 = v27;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94DE530()
{
  if (sub_1A957B148() == 26746 && v0 == 0xE200000000000000)
  {
    goto LABEL_3;
  }

  v1 = sub_1A957D3E8();

  if (v1)
  {
    goto LABEL_5;
  }

  if (sub_1A957B148() == 6649209 && v9 == 0xE300000000000000)
  {
    goto LABEL_3;
  }

  v10 = sub_1A957D3E8();

  if (v10)
  {
    goto LABEL_5;
  }

  if (sub_1A957B148() == 7697783 && v11 == 0xE300000000000000)
  {
    goto LABEL_3;
  }

  v12 = sub_1A957D3E8();

  if (v12)
  {
    goto LABEL_5;
  }

  if (sub_1A957B148() == 7236963 && v13 == 0xE300000000000000)
  {
LABEL_3:
  }

  else
  {
    v14 = sub_1A957D3E8();

    if ((v14 & 1) == 0)
    {
      sub_1A937829C(&qword_1EB3881A8, &qword_1A9595E40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A9587160;
      sub_1A957B148();
      v16 = sub_1A957C0C8();

      *(inited + 32) = v16;
      v7 = sub_1A94DFB98(inited);
      swift_setDeallocating();
      sub_1A94E03C8(inited + 32, type metadata accessor for NLLanguage);
      return v7;
    }
  }

LABEL_5:
  sub_1A937829C(&qword_1EB3881A8, &qword_1A9595E40);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1A95873F0;
  v3 = *MEMORY[0x1E6977840];
  *(v2 + 32) = *MEMORY[0x1E6977840];
  v4 = *MEMORY[0x1E6977898];
  *(v2 + 40) = *MEMORY[0x1E6977898];
  v5 = v3;
  v6 = v4;
  v7 = sub_1A94DFB98(v2);
  swift_setDeallocating();
  type metadata accessor for NLLanguage(0);
  swift_arrayDestroy();
  return v7;
}

void sub_1A94DE788(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(a1 + 48) + ((v8 << 9) | (8 * v9)));
    sub_1A94DEFF0(&v12, v10);
    v11 = v12;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1A94DE890(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1A937829C(a3, a4);
  v5 = *(a2 + 8);
  sub_1A957C408();
  return v7;
}

uint64_t sub_1A94DE908@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v32 = a3;
  v31[1] = a2;
  v4 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = v31 - v7;
  v9 = sub_1A957B2E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A957B188();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v31[0] = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = v31 - v23;
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = v31 - v26;
  v33 = *a1;

  sub_1A957B2F8();
  sub_1A957B2B8();
  (*(v10 + 8))(v14, v9);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    result = sub_1A937B960(v8, &qword_1EB386A68, &qword_1A9587F40);
  }

  else
  {
    (*(v16 + 32))(v27, v8, v15);
    v29 = v31[0];
    (*(v16 + 16))(v31[0], v27, v15);
    sub_1A93A3F0C(v24, v29);
    v30 = *(v16 + 8);
    v30(v24, v15);
    result = (v30)(v27, v15);
  }

  *v32 = v33;
  return result;
}

uint64_t sub_1A94DEC08()
{
  v2 = *(sub_1A937829C(&qword_1EB388190, &qword_1A9595E08) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = (v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_1A9382328;

  return sub_1A94DAE2C(v12, v13, v14, v7, v8, v0 + v3, v0 + v6, v10);
}

uint64_t sub_1A94DEDA4()
{
  v2 = *(sub_1A937829C(&qword_1EB3881A0, &qword_1A9595E28) - 8);
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[42];
  v7 = v0 + ((*(v2 + 80) + 344) & ~*(v2 + 80));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1A9382328;

  return sub_1A94DCCC8(v8, v9, v10, v3, v4, v5, (v0 + 7), v6);
}

uint64_t sub_1A94DEEB0(uint64_t a1)
{
  v2 = sub_1A94E02D4(&qword_1EB385F68, type metadata accessor for NLLanguage);
  v3 = sub_1A94E02D4(&qword_1EB385F58, type metadata accessor for NLLanguage);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void *sub_1A94DEF6C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A937829C(&qword_1EB3881A8, &qword_1A9595E40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_1A94DEFF0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1A957C0F8();
  sub_1A957D4F8();
  sub_1A957C228();
  v8 = sub_1A957D548();

  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_1A957C0F8();
      v15 = v14;
      if (v13 == sub_1A957C0F8() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = sub_1A957D3E8();

      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v6 + 48) + 8 * v10);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v21 = a2;
    sub_1A94DF418(v21, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_1A94DF19C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1A937829C(&qword_1EB3881D0, &unk_1A95960E8);
  result = sub_1A957CEA8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
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
      sub_1A957C0F8();
      sub_1A957D4F8();
      sub_1A957C228();
      v20 = sub_1A957D548();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1A94DF418(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1A94DF19C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1A94DF600();
      goto LABEL_16;
    }

    sub_1A94DF750(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1A957C0F8();
  sub_1A957D4F8();
  sub_1A957C228();
  v11 = sub_1A957D548();

  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for NLLanguage(0);
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = sub_1A957C0F8();
      v17 = v16;
      if (v15 == sub_1A957C0F8() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = sub_1A957D3E8();

      if (v20)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1A957D428();
  __break(1u);
  return result;
}

id sub_1A94DF600()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB3881D0, &unk_1A95960E8);
  v2 = *v0;
  v3 = sub_1A957CE98();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

uint64_t sub_1A94DF750(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1A937829C(&qword_1EB3881D0, &unk_1A95960E8);
  result = sub_1A957CEA8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1A957C0F8();
      sub_1A957D4F8();
      v20 = v18;
      sub_1A957C228();
      v21 = sub_1A957D548();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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

uint64_t sub_1A94DF9A4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 56) + 8 * result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1A94DF9F4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1A94DFB48(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1A94DFB98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB3881D0, &unk_1A95960E8);
    v3 = sub_1A957CEB8();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_1A957C0F8();
      sub_1A957D4F8();
      v29 = v7;
      sub_1A957C228();
      v9 = sub_1A957D548();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_1A957C0F8();
        v20 = v19;
        if (v18 == sub_1A957C0F8() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_1A957D3E8();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1A94DFDB8()
{
  result = qword_1EB3881B0;
  if (!qword_1EB3881B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3881B0);
  }

  return result;
}

uint64_t dispatch thunk of TTSSegmentGenerator.__allocating_init(mode:tokenUnit:locales:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 192);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1A93916A8;

  return v12(a1, a2, a3);
}

void sub_1A94E0094()
{
  sub_1A9459140();
  if (v0 <= 0x3F)
  {
    sub_1A94E0164();
    if (v1 <= 0x3F)
    {
      sub_1A94E01F4(319, &qword_1EB3881C0, &type metadata for TTSStringTagger.CombinedScriptLanguageTag, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A94E0164()
{
  if (!qword_1EB3881B8)
  {
    sub_1A957B188();
    v0 = sub_1A957CC58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3881B8);
    }
  }
}

void sub_1A94E01F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A94E02D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A94E0364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSSegmentGenerator.Segment();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A94E03C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1A94E0428(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v9 = *a1;
  v8 = a1[1];
  v18 = *(a1 + 16);
  v10 = a1[4];
  v11 = a1[5];
  if (sub_1A939A620(v2, a1[3]))
  {
    return 0;
  }

  sub_1A957CC98();
  v13 = sub_1A957CC88();

  if ((*(*v6 + 168))(v14) < v13)
  {
    return 1;
  }

  v15 = sub_1A9451BB4();
  v16 = sub_1A93AD200(v15);

  v17 = sub_1A93A8204(1853120844, 0xE400000000000000, v16);

  return (v17 & 1) == 0;
}

uint64_t TTSMarkup.Sub.context.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.Sub.init(_:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = SpeechContext.init<each A>(_:)(v33, 0, v33, v30);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(v4);
  if (*(v6 + 16) && (v7 = sub_1A937A490(0x7361696C61, 0xE500000000000000), (v8 & 1) != 0))
  {
    v24 = a2;
    v9 = (*(v6 + 56) + 16 * v7);
    v11 = *v9;
    v10 = v9[1];

    v30[1] = v11;
    v30[2] = v10;
    v13 = (*((*v5 & *a1) + 0x100))(v12);
    v14 = v13;
    if (v13 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A957CE48())
    {
      v16 = 0;
      v17 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1AC585DE0](v16, v14);
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v18 = *(v14 + 8 * v16 + 32);
        }

        v19 = v18;
        v20 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        sub_1A93D1250(&v25);

        if (v26)
        {
          sub_1A932D070(&v25, &v27);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_1A93ADC90(0, v17[2] + 1, 1, v17);
          }

          v22 = v17[2];
          v21 = v17[3];
          if (v22 >= v21 >> 1)
          {
            v17 = sub_1A93ADC90((v21 > 1), v22 + 1, 1, v17);
          }

          v17[2] = v22 + 1;
          sub_1A932D070(&v27, &v17[5 * v22 + 4]);
        }

        else
        {
          sub_1A937B960(&v25, &qword_1EB3868E8, &unk_1A958F280);
        }

        ++v16;
        if (v20 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    v17 = MEMORY[0x1E69E7CC0];
LABEL_24:

    v28 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
    v29 = &protocol witness table for <A> [A];

    *&v27 = v17;
    sub_1A93A38D8(&v27, v31);
    sub_1A94E0D6C(v30, v24);
    return sub_1A94E0DA4(v30);
  }

  else
  {

    result = sub_1A937B960(v31, &qword_1EB3868E8, &unk_1A958F280);
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
  }

  return result;
}

uint64_t sub_1A94E0908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t)@<X2>, void *a4@<X8>)
{
  v7 = a4;
  v8 = SpeechContext.init<each A>(_:)(v11, 0, v11, a4);
  *(v7 + 24) = 0u;
  v7 += 24;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0u;
  *(v7 - 16) = a1;
  *(v7 - 8) = a2;
  a3(v10, v8);
  return sub_1A93A38D8(v10, v7);
}

unint64_t TTSMarkup.Sub.attributes.getter()
{
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 0x7361696C61;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v4 = sub_1A9381740(inited);
  swift_setDeallocating();
  sub_1A937B960(inited + 32, &qword_1EB3868E0, &qword_1A95885D0);
  return v4;
}

uint64_t TTSMarkup.Sub.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 96))(v3);
}

{
  v7 = *(a3 + 128);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A9382328;

  return v11(v3, a2, a3);
}

unint64_t sub_1A94E0BE4()
{
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 0x7361696C61;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v4 = sub_1A9381740(inited);
  swift_setDeallocating();
  sub_1A937B960(inited + 32, &qword_1EB3868E0, &qword_1A95885D0);
  return v4;
}

uint64_t sub_1A94E0CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.Sub.accept<A>(_:)(a1, a2, a3);
}

uint64_t sub_1A94E0E8C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1A94E0EF4(uint64_t a1)
{
  v3 = sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = v22 - v6;
  v8 = sub_1A937829C(&qword_1EB388200, &unk_1A95961F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v22 - v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  sub_1A9391BAC(v1 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_eventContinuation, v7, &qword_1EB3871A8, &qword_1A958BE88);
  v17 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    sub_1A937B960(v7, &qword_1EB3871A8, &qword_1A958BE88);
    v19 = 1;
  }

  else
  {
    v22[0] = v13;
    v22[1] = v14;
    v22[2] = v15;
    v22[3] = v16;
    sub_1A9410FB8(v13, v14, v15);
    sub_1A957C818();
    (*(v18 + 8))(v7, v17);
    v19 = 0;
  }

  v20 = sub_1A937829C(&qword_1EB3871C0, &qword_1A958BEC0);
  (*(*(v20 - 8) + 56))(v12, v19, 1, v20);
  return sub_1A937B960(v12, &qword_1EB388200, &unk_1A95961F0);
}

uint64_t sub_1A94E1138()
{
  *(v1 + 16) = v0;
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner);
  v3 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A94E11F0, v3, v2);
}

uint64_t sub_1A94E11F0()
{
  v1 = v0[2];
  if (*(v1 + 457) > 1u)
  {
    if (*(v1 + 457) == 2)
    {
      *(v1 + 457) = 1;
      v5 = swift_task_alloc();
      v0[4] = v5;
      *v5 = v0;
      v5[1] = sub_1A94E1494;
      v6 = v0[2];

      return sub_1A94E8B4C();
    }

    else
    {
      v7 = v0[1];

      return v7();
    }
  }

  else if (*(v1 + 457))
  {
    return sub_1A957D0A8();
  }

  else
  {
    *(v1 + 457) = 1;
    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_1A94E13A0;
    v3 = v0[2];

    return sub_1A94E1C7C();
  }
}

uint64_t sub_1A94E13A0()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1A94E1494()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1A94E15AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner);
  v5 = sub_1A957C5A8();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A94E1668, v5, v4);
}

uint64_t sub_1A94E1668()
{
  v20 = v0;
  if (v0[2])
  {
    v1 = v0[3];
    v2 = v0[4];
    v14 = v0[2];
    v15 = v1;
    *&v16 = 0;
    v3 = *(*v2 + 256);
    swift_unknownObjectRetain();
    v3(&v14);
    sub_1A9410F60(v14, v15, *(&v15 + 1));
  }

  v4 = v0[4];
  if (*(v4 + 457) <= 1u)
  {
    if (*(v4 + 457))
    {
      *(v4 + 457) = 3;
      v5 = *(v4 + 24);
      v6 = MEMORY[0x1E69E7D40];
      v7 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x1F8))();
      [v7 stop];

      v8 = (*((*v6 & *v5) + 0x258))();
      v0[7] = v8;
      v9 = *v8;
      v0[8] = *(*v8 + 376);
      v0[9] = (v9 + 376) & 0xFFFFFFFFFFFFLL | 0x8DBC000000000000;
      type metadata accessor for TTSAURenderer();
      sub_1A94E9538(&qword_1EB386D00, type metadata accessor for TTSAURenderer);
      v11 = sub_1A957C5A8();

      return MEMORY[0x1EEE6DFA0](sub_1A94E18E4, v11, v10);
    }

    goto LABEL_9;
  }

  if (*(v4 + 457) == 2)
  {
LABEL_9:
    *(v4 + 457) = 3;
    v14 = 3;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    v19 = 10;
    TTSSpeechEvent.emit(forJob:)(*(v4 + 32));
    sub_1A94E91E4(0);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A94E18E4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  (*(v0 + 64))();

  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1A94E1954, v3, v4);
}

uint64_t sub_1A94E1954()
{
  v1 = *(v0 + 32);
  *(v1 + 457) = 3;
  TTSSpeechEvent.emit(forJob:)(*(v1 + 32));
  sub_1A94E91E4(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A94E19F8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner);
  v5 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A94E1AB4, v5, v4);
}

uint64_t sub_1A94E1AB4()
{
  v11 = v0;
  v1 = v0[4];
  if (*(v1 + 457) == 1)
  {
    v2 = v0[2];
    *v9 = 1;
    memset(&v9[8], 0, 56);
    v10 = 10;
    TTSSpeechEvent.emit(forJob:)(*(v1 + 32));
    v3 = v0[4];
    if (v2)
    {
      *v9 = *(v0 + 1);
      *&v9[16] = 0uLL;
      v4 = *(*v3 + 256);
      swift_unknownObjectRetain();
      v4(v9);
      sub_1A9410F60(*v9, *&v9[8], *&v9[16]);
    }

    v5 = v0[4];
    *(v1 + 457) = 2;
    v6 = (*((*MEMORY[0x1E69E7D40] & *v5[3]) + 0x1F8))();
    [v6 stop];

    *v9 = xmmword_1A958AD30;
    *&v9[16] = xmmword_1A958B1E0;
    ((*v5)[32])(v9);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A94E1C7C()
{
  v1[11] = v0;
  v2 = _s15UtteranceRunnerC14SynthesisStateVMa(0);
  v1[12] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner);
  v5 = sub_1A957C5A8();
  v1[14] = v5;
  v1[15] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A94E1D64, v5, v4);
}

uint64_t sub_1A94E1D64()
{
  v1 = *(v0[11] + 24);
  v0[16] = v1;
  v2 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x258))();
  v0[17] = v2;
  v3 = *v2;
  v0[18] = *(*v2 + 376);
  v0[19] = (v3 + 376) & 0xFFFFFFFFFFFFLL | 0x8DBC000000000000;
  type metadata accessor for TTSAURenderer();
  sub_1A94E9538(&qword_1EB386D00, type metadata accessor for TTSAURenderer);
  v5 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A94E1E9C, v5, v4);
}

uint64_t sub_1A94E1E9C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  (*(v0 + 144))();

  v3 = *(v0 + 112);
  v4 = *(v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1A94E1F0C, v3, v4);
}

uint64_t sub_1A94E1F0C()
{
  v1 = *(v0 + 88);
  if ((*(v1 + 408) & 1) == 0)
  {
    *&v10 = CoreSynthesizer.Utterance.ssml.getter();
    *(&v10 + 1) = v2;
    TTSSpeechEvent.emit(forJob:)(*(v1 + 32));
    *(v0 + 48) = v12;
    *(v0 + 64) = v13;
    *(v0 + 80) = 4;
    *(v0 + 16) = v10;
    *(v0 + 32) = v11;
    sub_1A946C4C0(v0 + 16);
    v1 = *(v0 + 88);
  }

  v3 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 128)) + 0x198))();
  *(v0 + 160) = v3;
  v8 = (*v1 + 408);
  v9 = (*v8 + **v8);
  v4 = (*v8)[1];
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_1A94E20D8;
  v6 = *(v0 + 88);

  return v9(v3);
}

uint64_t sub_1A94E20D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v10 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v5 = v3[14];
    v6 = v3[15];
    v7 = sub_1A94E2550;
  }

  else
  {
    v8 = v3[20];

    v5 = v3[14];
    v6 = v3[15];
    v7 = sub_1A94E21F4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A94E21F4()
{
  v19 = v0;
  v1 = v0[11];
  v2 = v1[457];
  v3 = v0[22];
  if (v2 == 2)
  {
    v13 = v0[22];

    v1[457] = 0;
  }

  else
  {
    if (v2 == 1)
    {
      v5 = v0[12];
      v4 = v0[13];
      v17[0] = 0;
      v17[1] = 0;
      v18 = xmmword_1A958B1E0;
      (*(*v1 + 256))(v17);
      v6 = *(v5 + 24);
      v7 = type metadata accessor for SpeechSlicer.Slice(0);
      (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
      v8 = MEMORY[0x1E69E7CC0];
      *v4 = 0;
      *(v4 + 1) = v8;
      *&v4[*(v5 + 28)] = v3;
      v9 = swift_task_alloc();
      v0[24] = v9;
      *v9 = v0;
      v9[1] = sub_1A94E23B0;
      v10 = v0[13];
      v11 = v0[11];

      return sub_1A94E25C0(v10);
    }

    v14 = v0[22];
  }

  v15 = v0[13];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1A94E23B0()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1A94E24D0, v4, v3);
}

uint64_t sub_1A94E24D0()
{
  sub_1A94F1A60(*(v0 + 104), _s15UtteranceRunnerC14SynthesisStateVMa);
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A94E2550()
{
  v1 = v0[20];
  v2 = v0[13];

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_1A94E25C0(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = *(*(sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v4 = *(*(sub_1A937829C(&qword_1EB388220, &qword_1A9596240) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v5 = _s15UtteranceRunnerC14SynthesisStateVMa(0);
  v2[29] = v5;
  v6 = *(v5 - 8);
  v2[30] = v6;
  v7 = *(v6 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner);
  v9 = sub_1A957C5A8();
  v2[33] = v9;
  v2[34] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A94E2750, v9, v8);
}

uint64_t sub_1A94E2750()
{
  sub_1A94F19F8(v0[25], v0[32], _s15UtteranceRunnerC14SynthesisStateVMa);
  v0[35] = OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_suspendedState;
  v1 = v0[32];
  if (*v1 || *(*(v1 + *(v0[29] + 28)) + 16) || *(v1[1] + 16))
  {
    if (*(v0[26] + 457) == 1)
    {
      v2 = swift_task_alloc();
      v0[36] = v2;
      *v2 = v0;
      v2[1] = sub_1A94E28E4;
      v3 = v0[31];
      v4 = v0[32];
      v5 = v0[26];

      return sub_1A94E2E48(v3, v4);
    }
  }

  else if (*(v0[26] + 457) == 1)
  {
    sub_1A94E91E4(1);
    v1 = v0[32];
  }

  sub_1A94F1A60(v1, _s15UtteranceRunnerC14SynthesisStateVMa);
  v8 = v0[31];
  v7 = v0[32];
  v10 = v0[27];
  v9 = v0[28];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1A94E28E4()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v8 = *v1;
  *(*v1 + 296) = v0;

  v4 = *(v2 + 264);
  v5 = *(v2 + 272);
  if (v0)
  {
    v6 = sub_1A94E2C34;
  }

  else
  {
    v6 = sub_1A94E29F8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1A94E29F8()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[26];
  sub_1A94F1A60(v2, _s15UtteranceRunnerC14SynthesisStateVMa);
  sub_1A94F1AC0(v1, v2, _s15UtteranceRunnerC14SynthesisStateVMa);
  if (*(v3 + 457) == 2)
  {
    v4 = v0[35];
    v5 = v0[29];
    v6 = v0[30];
    v7 = v0[28];
    v8 = v0[26];
    sub_1A94F19F8(v0[32], v7, _s15UtteranceRunnerC14SynthesisStateVMa);
    (*(v6 + 56))(v7, 0, 1, v5);
    swift_beginAccess();
    sub_1A94F2048(v7, v8 + v4);
    swift_endAccess();
  }

  v9 = v0[32];
  if (*v9 || *(*(v9 + *(v0[29] + 28)) + 16) || *(v9[1] + 16))
  {
    if (*(v0[26] + 457) == 1)
    {
      v10 = swift_task_alloc();
      v0[36] = v10;
      *v10 = v0;
      v10[1] = sub_1A94E28E4;
      v11 = v0[31];
      v12 = v0[32];
      v13 = v0[26];

      return sub_1A94E2E48(v11, v12);
    }
  }

  else if (*(v0[26] + 457) == 1)
  {
    sub_1A94E91E4(1);
    v9 = v0[32];
  }

  sub_1A94F1A60(v9, _s15UtteranceRunnerC14SynthesisStateVMa);
  v16 = v0[31];
  v15 = v0[32];
  v18 = v0[27];
  v17 = v0[28];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1A94E2C34()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  sub_1A94F1A60(*(v0 + 256), _s15UtteranceRunnerC14SynthesisStateVMa);
  swift_getErrorValue();
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 152);
  *&v20 = sub_1A957D478();
  *(&v20 + 1) = v7;
  v21 = *(v0 + 88);
  v22 = *(v0 + 104);
  v23 = *(v0 + 120);
  TTSSpeechEvent.emit(forJob:)(v3[2]);
  *(v0 + 48) = v22;
  *(v0 + 64) = v23;
  *(v0 + 80) = 6;
  *(v0 + 16) = v20;
  *(v0 + 32) = v21;
  sub_1A946C4C0(v0 + 16);
  sub_1A9391BAC(v3 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_eventContinuation, v2, &qword_1EB3871A8, &qword_1A958BE88);
  v8 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v2, 1, v8) == 1)
  {
    v10 = *(v0 + 216);

    sub_1A937B960(v10, &qword_1EB3871A8, &qword_1A958BE88);
  }

  else
  {
    v11 = *(v0 + 296);
    *(v0 + 192) = v11;
    v12 = *(v0 + 216);
    v13 = v11;
    sub_1A957C828();

    (*(v9 + 8))(v12, v8);
  }

  v15 = *(v0 + 248);
  v14 = *(v0 + 256);
  v17 = *(v0 + 216);
  v16 = *(v0 + 224);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1A94E2E48(uint64_t a1, uint64_t a2)
{
  v3[562] = v2;
  v3[561] = a2;
  v3[560] = a1;
  v4 = sub_1A957BC88();
  v3[563] = v4;
  v5 = *(v4 - 8);
  v3[564] = v5;
  v6 = *(v5 + 64) + 15;
  v3[565] = swift_task_alloc();
  v3[566] = swift_task_alloc();
  v7 = *(*(sub_1A937829C(&qword_1EB386A18, &qword_1A9587E40) - 8) + 64) + 15;
  v3[567] = swift_task_alloc();
  v3[568] = swift_task_alloc();
  v8 = type metadata accessor for SpeechSlicer.Slice.SliceType(0);
  v3[569] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[570] = swift_task_alloc();
  v10 = type metadata accessor for SpeechSlicer.Slice(0);
  v3[571] = v10;
  v11 = *(v10 - 8);
  v3[572] = v11;
  v12 = *(v11 + 64) + 15;
  v3[573] = swift_task_alloc();
  v13 = _s15UtteranceRunnerC14SynthesisStateVMa(0);
  v3[574] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[575] = swift_task_alloc();
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner);
  v16 = sub_1A957C5A8();
  v3[576] = v16;
  v3[577] = v15;

  return MEMORY[0x1EEE6DFA0](sub_1A94E3074, v16, v15);
}

uint64_t sub_1A94E3074()
{
  v124 = v0;
  v1 = *(v0 + 4600);
  v2 = *(v0 + 4512);
  v3 = *(v0 + 4496);
  *(v0 + 4465) = 0;
  *(v0 + 4632) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + 4624) = MEMORY[0x1E69E7CC0];
  if (*(v3 + 457) == 1)
  {
    v5 = sub_1A94F19F8(*(v0 + 4488), v1, _s15UtteranceRunnerC14SynthesisStateVMa);
    v8 = *v1;
    *(v0 + 4640) = *v1;
    v9 = *(v0 + 4600);
    if (v8)
    {
      *v9 = 0;
      *(v0 + 4840) = v8;
      v10 = *(v0 + 4640);
      v11 = *(v0 + 4600);
      v12 = *(v11 + 8);
      *(v0 + 4848) = v12;
      *(v11 + 8) = v4;

      v13 = swift_task_alloc();
      *(v0 + 4856) = v13;
      *v13 = v0;
      v13[1] = sub_1A94E5418;
      v14 = *(v0 + 4600);
      v15 = *(v0 + 4496);

      return sub_1A94E6BD8(v12, v8, v14);
    }

    v47 = *(*(v0 + 4592) + 28);
    v48 = *(v9 + v47);
    if (v48[2])
    {
      v49 = *(*(v0 + 4576) + 80);
      v5 = sub_1A94F19F8(v48 + ((v49 + 32) & ~v49), *(v0 + 4584), type metadata accessor for SpeechSlicer.Slice);
      v50 = v48[2];
      if (v50)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v9 + v47) = v48;
        if (!isUniquelyReferenced_nonNull_native || (v50 - 1) > v48[3] >> 1)
        {
          v48 = sub_1A94ED9B8(isUniquelyReferenced_nonNull_native, v50, 1, v48);
          *(v9 + v47) = v48;
        }

        v52 = *(v0 + 4600);
        v53 = *(v0 + 4592);
        v54 = *(v0 + 4576);
        v55 = *(v0 + 4568);
        v114 = *(v0 + 4584);
        v116 = *(v0 + 4560);
        v120 = *(v0 + 4552);
        sub_1A94F0A6C(0, 1, 0);
        *(v9 + v47) = v48;
        v56 = *(v53 + 24);
        sub_1A937B960(v52 + v56, &qword_1EB388240, &qword_1A95964A0);
        sub_1A94F19F8(v114, v52 + v56, type metadata accessor for SpeechSlicer.Slice);
        (*(v54 + 56))(v52 + v56, 0, 1, v55);
        sub_1A94F19F8(v114 + *(v55 + 24), v116, type metadata accessor for SpeechSlicer.Slice.SliceType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v57 = *(v0 + 4560);
          v58 = *(v0 + 4496);
          *(v0 + 4648) = *v57;
          *(v0 + 4656) = v57[1];
          v6 = (*((*MEMORY[0x1E69E7D40] & **(v58 + 24)) + 0x288))();
          *(v0 + 4664) = v6;
          v59 = *v6 + 128;
          *(v0 + 4672) = *v59;
          *(v0 + 4680) = v59 & 0xFFFFFFFFFFFFLL | 0x2256000000000000;
          v60 = sub_1A94E3C9C;
          goto LABEL_23;
        }

        v61 = *(v0 + 4584);
        v62 = *(v0 + 4560);
        v63 = *(v0 + 4544);
        v64 = *(v0 + 4496);
        memcpy((v0 + 1232), v62, 0x118uLL);
        v65 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
        *(v0 + 4696) = v65;
        sub_1A93A7460(v62 + *(v65 + 64), v63, &qword_1EB386A18, &qword_1A9587E40);
        v66 = *v61;
        *(v0 + 4704) = *v61;
        v67 = v61[1];
        *(v0 + 4712) = v67;
        v68 = *(v0 + 1232);
        *(v0 + 4720) = v68;
        v69 = *(v0 + 1240);
        *(v0 + 4728) = v69;
        *(v0 + 4384) = v66;
        *(v0 + 4392) = v67;
        *(v0 + 4400) = v68;
        *(v0 + 4408) = v69;
        *(v0 + 4448) = 5;
        v70 = *(v64 + 32);
        *(v0 + 4736) = v70;
        v71 = *(v64 + 40);
        *(v0 + 4744) = v71;
        swift_bridgeObjectRetain_n();

        v72._countAndFlagsBits = v70;
        v72._object = v71;
        TTSSpeechEvent.emit(forJob:)(v72);
        v73 = *(v0 + 4432);
        *(v0 + 4344) = *(v0 + 4416);
        *(v0 + 4360) = v73;
        *(v0 + 4376) = *(v0 + 4448);
        v74 = *(v0 + 4400);
        *(v0 + 4312) = *(v0 + 4384);
        *(v0 + 4328) = v74;
        sub_1A946C4C0(v0 + 4312);
        sub_1A93847E0(v0 + 952);
        v117 = *(v0 + 1504);
        v121 = *(v0 + 1496);
        v113 = *(v0 + 1420);
        v115 = *(v0 + 1425);
        v111 = *(v0 + 1416);
        v112 = *(v0 + 1424);
        v109 = *(v0 + 1384);
        v110 = *(v0 + 1376);
        v107 = *(v0 + 1328);
        v108 = *(v0 + 1360);
        v106 = *(v0 + 1344);
        v105 = *(v0 + 1352);
        LOWORD(v64) = *(v0 + 1288);
        v75 = *(v0 + 1280);
        v98 = *(v0 + 1248);
        v103 = *(v0 + 1480);
        v104 = *(v0 + 1448);
        v101 = *(v0 + 1464);
        v102 = *(v0 + 1432);
        v99 = *(v0 + 1392);
        v100 = *(v0 + 1264);
        v76 = *(v0 + 1408);
        v96 = *(v0 + 1312);
        v97 = *(v0 + 1296);
        sub_1A937B3DC(v0 + 1232, v0 + 1792);
        memcpy((v0 + 1512), (v0 + 952), 0x118uLL);
        *(v0 + 2072) = v68;
        *(v0 + 2080) = v69;
        *(v0 + 2088) = v98;
        *(v0 + 2104) = v100;
        *(v0 + 2120) = v75;
        *(v0 + 2128) = v64;
        *(v0 + 2136) = v97;
        *(v0 + 2152) = v96;
        *(v0 + 2168) = v107;
        *(v0 + 2184) = v106;
        *(v0 + 2192) = v105;
        *(v0 + 2200) = v108;
        *(v0 + 2216) = v110;
        *(v0 + 2224) = v109;
        *(v0 + 2232) = v99;
        *(v0 + 2248) = v76;
        *(v0 + 2256) = v111;
        *(v0 + 2260) = v113;
        *(v0 + 2264) = v112;
        *(v0 + 2265) = v115;
        *(v0 + 2272) = v102;
        *(v0 + 2288) = v104;
        *(v0 + 2304) = v101;
        *(v0 + 2320) = v103;
        *(v0 + 2336) = v121;
        *(v0 + 2344) = v117;
        *(v0 + 4472) = 0;
        if ((TTSIsBaseSystem() & 1) == 0)
        {
          v88 = *(*(v0 + 4496) + 24);
          v89 = MEMORY[0x1E69E7D40];
          *(v0 + 4472) = (*((*MEMORY[0x1E69E7D40] & *v88) + 0x2A0))();
          v6 = (*((*v89 & *v88) + 0x348))();
          *(v0 + 4768) = v6;
          v90 = *v6;
          *(v0 + 4776) = *(*v6 + 416);
          *(v0 + 4784) = (v90 + 416) & 0xFFFFFFFFFFFFLL | 0xF28000000000000;
          v60 = sub_1A94E4D1C;
LABEL_23:
          v5 = v60;
          v7 = 0;

          return MEMORY[0x1EEE6DFA0](v5, v6, v7);
        }

        v77 = *(v0 + 4744);
        v78 = *(v0 + 4736);
        v79 = *(v0 + 4712);
        v80 = *(v0 + 4704);
        v81 = *(v0 + 4544);
        v82 = *(v0 + 4536);
        v83 = (*((*MEMORY[0x1E69E7D40] & **(*(v0 + 4496) + 24)) + 0x258))();
        *(v0 + 4800) = v83;
        memcpy(__dst, (v0 + 2072), 0x118uLL);
        sub_1A937B3DC(v0 + 2072, v0 + 2352);

        TTSAURenderer.RenderRequest.init(ssml:voice:jobIdentifier:)(v80, v79, __dst, v78, v77, (v0 + 16));
        memcpy((v0 + 328), (v0 + 16), 0x138uLL);
        sub_1A9391BAC(v81, v82, &qword_1EB386A18, &qword_1A9587E40);
        v84 = sub_1A957B8C8();
        v85 = *(v84 - 8);
        v86 = (*(v85 + 48))(v82, 1, v84);
        v87 = *(v0 + 4536);
        if (v86 == 1)
        {
          sub_1A937B960(*(v0 + 4536), &qword_1EB386A18, &qword_1A9587E40);
        }

        else
        {
          v91 = *(v0 + 4536);
          v92 = sub_1A957B888();
          (*(v85 + 8))(v87, v84);
          if (v92)
          {
LABEL_28:
            *(v0 + 4808) = v92;
            *(v0 + 4452) = *(*(v0 + 4696) + 48);
            v93 = *(v0 + 4472);
            *(v0 + 4816) = v93;
            v118 = (*v83 + 368);
            v122 = (*v118 + **v118);
            v94 = (*v118)[1];
            v95 = swift_task_alloc();
            *(v0 + 4824) = v95;
            *v95 = v0;
            v95[1] = sub_1A94E50FC;

            return v122(v0 + 328, v92, v93);
          }
        }

        v92 = *(*(v0 + 4496) + 344);

        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  v17 = *(v0 + 4528);
  v18 = *(v0 + 4504);
  v19 = sub_1A9391D1C();
  (*(v2 + 16))(v17, v19, v18);

  v20 = sub_1A957BC68();
  v21 = sub_1A957CA78();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 4528);
  v24 = *(v0 + 4504);
  v25 = (*(v0 + 4512) + 8);
  if (v22)
  {
    v119 = *(v0 + 4528);
    v26 = *(v0 + 4496);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    __dst[0] = v28;
    *v27 = 136315394;
    sub_1A9410EB8();
    v29 = sub_1A957D3A8();
    v31 = sub_1A937A5C0(v29, v30, __dst);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v32 = MEMORY[0x1E69E7CC0];

    v33 = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    v34 = MEMORY[0x1AC585390](v32, v33);
    v36 = v35;

    v37 = sub_1A937A5C0(v34, v36, __dst);

    *(v27 + 14) = v37;
    _os_log_impl(&dword_1A9324000, v20, v21, "Utterance: %s failed with errors: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC587CD0](v28, -1, -1);
    MEMORY[0x1AC587CD0](v27, -1, -1);

    (*v25)(v119, v24);
  }

  else
  {

    (*v25)(v23, v24);
  }

  v38 = *(v0 + 4600);
  v39 = *(v0 + 4584);
  v40 = *(v0 + 4560);
  v41 = *(v0 + 4544);
  v42 = *(v0 + 4536);
  v43 = *(v0 + 4528);
  v44 = *(v0 + 4520);
  sub_1A94F1FA0();
  swift_allocError();
  *v45 = MEMORY[0x1E69E7CC0];
  swift_willThrow();

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1A94E3C9C()
{
  v1 = *(v0 + 4680);
  v2 = *(v0 + 4664);
  *(v0 + 4688) = (*(v0 + 4672))(*(v0 + 4648), *(v0 + 4656));

  v3 = *(v0 + 4616);
  v4 = *(v0 + 4608);

  return MEMORY[0x1EEE6DFA0](sub_1A94E3D2C, v4, v3);
}

uint64_t sub_1A94E3D2C()
{
  v1 = v0[586];
  sub_1A94F1A60(v0[573], type metadata accessor for SpeechSlicer.Slice);
  v2 = v0[586];
  v0[605] = v2;
  v3 = v0[580];
  v4 = v0[575];
  v5 = *(v4 + 8);
  v0[606] = v5;
  *(v4 + 8) = MEMORY[0x1E69E7CC0];

  v6 = swift_task_alloc();
  v0[607] = v6;
  *v6 = v0;
  v6[1] = sub_1A94E5418;
  v7 = v0[575];
  v8 = v0[562];

  return sub_1A94E6BD8(v5, v2, v7);
}

uint64_t sub_1A94E3E24()
{
  v1 = *v0;
  v2 = *(*v0 + 4760);
  v3 = *(*v0 + 4752);
  v7 = *v0;

  v4 = *(v1 + 4616);
  v5 = *(v1 + 4608);

  return MEMORY[0x1EEE6DFA0](sub_1A94E3F68, v5, v4);
}

uint64_t sub_1A94E3F68()
{
  v159 = v0;
  v1 = *(v0 + 2912);
  v2 = *(v0 + 2920);
  v3 = *(v0 + 2928);
  v4 = *(v0 + 2936);
  v133 = (v0 + 4880);
  v5 = *(v0 + 2944);
  v6 = *(v0 + 2952);
  v7 = *(v0 + 2960);
  v147 = *(v0 + 2968);
  v8 = *(v0 + 2969);
  *(v0 + 4470) = *(v0 + 2974);
  *(v0 + 4466) = *(v0 + 2970);
  v9 = *(v0 + 2976);
  v10 = *(v0 + 2984);
  v11 = *(v0 + 2992);
  v12 = *(v0 + 3000);
  v13 = *(v0 + 3008);
  v14 = *(v0 + 3016);
  v15 = *(v0 + 3024);
  v16 = *(v0 + 3032);
  *(v0 + 4380) = *(v0 + 3036);
  *(v0 + 4377) = *(v0 + 3033);
  v17 = *(v0 + 3040);
  v121 = (v0 + 4466);
  *(v0 + 2690) = *(v0 + 4466);
  v18 = *(v0 + 3048);
  *(v0 + 2756) = *(v0 + 4380);
  v131 = (v0 + 4377);
  *(v0 + 2753) = *(v0 + 4377);
  v19 = *(v0 + 3056);
  v20 = *(v0 + 3064);
  *&v21 = *(v0 + 3072);
  v22 = *(v0 + 3080);
  v23 = *(v0 + 3088);
  v24 = *(v0 + 3097);
  *(v0 + 4449) = v24;
  *(v0 + 2817) = v24;
  LOBYTE(v24) = *(v0 + 3096);
  *(v0 + 4451) = *(v0 + 3099);
  v25 = *(v0 + 3100);
  v26 = *(v0 + 3106);
  *(v0 + 4880) = v26;
  *(v0 + 2826) = v26;
  LOBYTE(v26) = *(v0 + 3104);
  *(v0 + 4884) = *(v0 + 3110);
  *(v0 + 2694) = *(v0 + 4470);
  v132 = (v0 + 4449);
  *(v0 + 2819) = *(v0 + 4451);
  *(v0 + 2830) = *(v0 + 4884);
  v27 = *(v0 + 3105);
  v126 = v1;
  v127 = v2;
  *(v0 + 2632) = v1;
  *(v0 + 2640) = v2;
  *(v0 + 2648) = v3;
  *(v0 + 2656) = v4;
  *(v0 + 2664) = v5;
  v141 = v6;
  v142 = v14;
  *(v0 + 2672) = v6;
  v139 = v7;
  v140 = v15;
  *(v0 + 2680) = v7;
  v28 = v10;
  v29 = v8;
  *(v0 + 2688) = v147;
  *(v0 + 2689) = v8;
  v144 = v11;
  v145 = v9;
  *(v0 + 2696) = v9;
  *(v0 + 2704) = v28;
  *(v0 + 2712) = v11;
  v143 = v12;
  *(v0 + 2720) = v12;
  v125 = v13;
  *(v0 + 2728) = v13;
  *(v0 + 2736) = v14;
  *(v0 + 2744) = v15;
  v138 = v16;
  *(v0 + 2752) = v16;
  v122 = v17;
  *(v0 + 2760) = v17;
  *(v0 + 2768) = v18;
  v116 = v19;
  v117 = v20;
  *(v0 + 2776) = v19;
  *(v0 + 2784) = v20;
  v134 = v22;
  v136 = v21;
  *(&v21 + 1) = v22;
  v128 = v21;
  *(v0 + 2792) = v21;
  *(v0 + 2808) = v23;
  v120 = v24;
  *(v0 + 2816) = v24;
  v130 = v25;
  *(v0 + 2820) = v25;
  v119 = v26;
  *(v0 + 2824) = v26;
  v118 = v27;
  *(v0 + 2825) = v27;
  v146 = *(v0 + 3112);
  *(v0 + 2832) = v146;
  v156 = *(v0 + 3120);
  *(v0 + 2840) = v156;
  v154 = *(v0 + 3128);
  *(v0 + 2848) = v154;
  v153 = *(v0 + 3136);
  *(v0 + 2856) = v153;
  v152 = *(v0 + 3144);
  *(v0 + 2864) = v152;
  v151 = *(v0 + 3152);
  *(v0 + 2872) = v151;
  v150 = *(v0 + 3160);
  *(v0 + 2880) = v150;
  v149 = *(v0 + 3168);
  *(v0 + 2888) = v149;
  v148 = *(v0 + 3176);
  *(v0 + 2896) = v148;
  v129 = *(v0 + 3184);
  *(v0 + 2904) = v129;
  if (sub_1A932D058(v0 + 2632) == 1)
  {
    v123 = *(v0 + 1472);
    v113 = *(v0 + 1488);
    v114 = *(v0 + 1480);
    v110 = *(v0 + 1504);
    v111 = *(v0 + 1496);
    v107 = *(v0 + 1440);
    v108 = *(v0 + 1432);
    v105 = *(v0 + 1456);
    v106 = *(v0 + 1448);
    v30 = *(v0 + 1425);
    v98 = *(v0 + 1424);
    v99 = *(v0 + 1420);
    v97 = *(v0 + 1416);
    v137 = *(v0 + 1392);
    v135 = *(v0 + 1400);
    v31 = *(v0 + 1408);
    v103 = *(v0 + 1376);
    v104 = *(v0 + 1464);
    v101 = *(v0 + 1360);
    v102 = *(v0 + 1384);
    v100 = *(v0 + 1368);
    v95 = *(v0 + 1312);
    v96 = *(v0 + 1304);
    v93 = *(v0 + 1328);
    v94 = *(v0 + 1320);
    v91 = *(v0 + 1344);
    v92 = *(v0 + 1336);
    v90 = *(v0 + 1352);
    v89 = *(v0 + 1296);
    v87 = *(v0 + 1288);
    v88 = *(v0 + 1289);
    v86 = *(v0 + 1272);
    v84 = *(v0 + 1256);
    v85 = *(v0 + 1280);
    v82 = *(v0 + 1248);
    v83 = *(v0 + 1264);
    sub_1A937B3DC(v0 + 1232, v0 + 3472);
    v32 = v135;
    *(v0 + 1512) = v126;
    *(v0 + 1520) = v127;
    *(v0 + 1528) = v3;
    *(v0 + 1536) = v4;
    *(v0 + 1544) = v5;
    *(v0 + 1552) = v6;
    *(v0 + 1560) = v139;
    *(v0 + 1568) = v147;
    *(v0 + 1569) = v29;
    *(v0 + 1576) = v145;
    *(v0 + 1584) = v28;
    *(v0 + 1592) = v144;
    *(v0 + 1600) = v143;
    *(v0 + 1608) = v125;
    *(v0 + 1616) = v142;
    *(v0 + 1624) = v140;
    *(v0 + 1632) = v138;
    *(v0 + 1640) = v122;
    *(v0 + 1648) = v18;
    *(v0 + 1656) = v116;
    *(v0 + 1664) = v117;
    *(v0 + 1696) = v120;
    *(v0 + 1700) = v130;
    *(v0 + 1704) = v119;
    *(v0 + 1705) = v118;
    *(v0 + 1712) = v146;
    *(v0 + 1720) = v156;
    *(v0 + 1728) = v154;
    *(v0 + 1736) = v153;
    *(v0 + 1744) = v152;
    *(v0 + 1752) = v151;
    *(v0 + 1760) = v150;
    *(v0 + 1768) = v149;
    *(v0 + 1776) = v148;
    *(v0 + 1570) = *v121;
    *(v0 + 1636) = *(v0 + 4380);
    *(v0 + 1633) = *v131;
    *(v0 + 1697) = *v132;
    *(v0 + 1706) = *v133;
    *(v0 + 1574) = *(v0 + 4470);
    *(v0 + 1699) = *(v0 + 4451);
    *(v0 + 1710) = *(v0 + 4884);
    v34 = v82;
    v33 = v83;
    v35 = v84;
    v36 = v85;
    v37 = v86;
    v38 = v87;
    v39 = v88;
    v40 = v89;
    v41 = v95;
    v42 = v96;
    v44 = v93;
    v43 = v94;
    v46 = v91;
    v45 = v92;
    v47 = v90;
    v48 = v97;
    v49 = v98;
    v50 = v99;
    v51 = v108;
    v156 = v107;
    v154 = v106;
    v153 = v105;
    v52 = v103;
    v152 = v104;
    v151 = v123;
    v150 = v114;
    *(v0 + 1672) = v128;
    v53 = v137;
    v149 = v113;
    v54 = v110;
    v148 = v111;
    *(v0 + 1688) = v23;
    v56 = v100;
    v55 = v101;
    v57 = v102;
    v23 = v31;
    v58 = *(v0 + 4728);
    v59 = *(v0 + 4720);
    v60 = v129;
  }

  else
  {
    v109 = v18;
    *(v0 + 3810) = *v121;
    *(v0 + 3873) = *v131;
    *(v0 + 3937) = *v132;
    *(v0 + 3946) = *v133;
    *(v0 + 3814) = *(v0 + 4470);
    *(v0 + 3876) = *(v0 + 4380);
    *(v0 + 3939) = *(v0 + 4451);
    *(v0 + 3950) = *(v0 + 4884);
    v115 = v3;
    v124 = v5;
    v112 = v8;
    *(v0 + 3752) = v126;
    *(v0 + 3760) = v127;
    *(v0 + 3768) = v3;
    *(v0 + 3776) = v4;
    *(v0 + 3784) = v5;
    *(v0 + 3792) = v6;
    *(v0 + 3800) = v139;
    *(v0 + 3808) = v147;
    *(v0 + 3809) = v8;
    *(v0 + 3816) = v145;
    *(v0 + 3824) = v28;
    *(v0 + 3832) = v144;
    *(v0 + 3840) = v143;
    v44 = v125;
    *(v0 + 3848) = v125;
    *(v0 + 3856) = v142;
    *(v0 + 3864) = v140;
    *(v0 + 3872) = v138;
    *(v0 + 3880) = v122;
    *(v0 + 3888) = v18;
    v52 = v116;
    v57 = v117;
    *(v0 + 3896) = v116;
    *(v0 + 3904) = v117;
    *(v0 + 3912) = v128;
    *(v0 + 3928) = v23;
    v48 = v120;
    *(v0 + 3936) = v120;
    *(v0 + 3940) = v130;
    v49 = v119;
    *(v0 + 3944) = v119;
    v30 = v118;
    *(v0 + 3945) = v118;
    *(v0 + 3952) = v146;
    *(v0 + 3960) = v156;
    *(v0 + 3968) = v154;
    *(v0 + 3976) = v153;
    *(v0 + 3984) = v152;
    *(v0 + 3992) = v151;
    *(v0 + 4000) = v150;
    *(v0 + 4008) = v149;
    *(v0 + 4016) = v148;
    *(v0 + 4024) = v129;
    sub_1A937B3DC(v0 + 3752, v0 + 4032);
    *(v0 + 1570) = *v121;
    v35 = v4;
    v34 = v115;
    v42 = v28;
    v55 = v122;
    v59 = v126;
    v58 = v127;
    *(v0 + 1633) = *v131;
    *(v0 + 1697) = *v132;
    v56 = v109;
    *(v0 + 1706) = *v133;
    *(v0 + 1574) = *(v0 + 4470);
    *(v0 + 1636) = *(v0 + 4380);
    *(v0 + 1699) = *(v0 + 4451);
    *(v0 + 1512) = v126;
    *(v0 + 1520) = v127;
    *(v0 + 1528) = v115;
    *(v0 + 1536) = v35;
    *(v0 + 1544) = v5;
    v39 = v112;
    v38 = v147;
    v46 = v140;
    v47 = v138;
    v45 = v142;
    v43 = v143;
    v41 = v144;
    v40 = v145;
    v37 = v141;
    *(v0 + 1552) = v141;
    v36 = v139;
    *(v0 + 1560) = v139;
    *(v0 + 1568) = v147;
    *(v0 + 1569) = v112;
    *(v0 + 1576) = v145;
    *(v0 + 1584) = v28;
    *(v0 + 1592) = v144;
    *(v0 + 1600) = v143;
    *(v0 + 1608) = v125;
    *(v0 + 1616) = v142;
    *(v0 + 1624) = v140;
    *(v0 + 1632) = v138;
    *(v0 + 1640) = v122;
    *(v0 + 1648) = v109;
    *(v0 + 1656) = v116;
    *(v0 + 1664) = v117;
    *(v0 + 1672) = v128;
    *(v0 + 1688) = v23;
    *(v0 + 1696) = v120;
    *(v0 + 1700) = v130;
    *(v0 + 1704) = v119;
    *(v0 + 1705) = v118;
    *(v0 + 1710) = *(v0 + 4884);
    *(v0 + 1712) = v146;
    *(v0 + 1720) = v156;
    *(v0 + 1728) = v154;
    *(v0 + 1736) = v153;
    *(v0 + 1744) = v152;
    *(v0 + 1752) = v151;
    *(v0 + 1760) = v150;
    *(v0 + 1768) = v149;
    v60 = v129;
    v54 = v129;
    *(v0 + 1776) = v148;
    v51 = v146;
    v50 = v130;
    v33 = v124;
    v32 = v134;
    v53 = v136;
  }

  *(v0 + 1784) = v60;
  *(v0 + 2072) = v59;
  *(v0 + 2080) = v58;
  *(v0 + 2088) = v34;
  *(v0 + 2096) = v35;
  *(v0 + 2104) = v33;
  *(v0 + 2112) = v37;
  *(v0 + 2120) = v36;
  *(v0 + 2128) = v38;
  *(v0 + 2129) = v39;
  *(v0 + 2136) = v40;
  *(v0 + 2144) = v42;
  *(v0 + 2152) = v41;
  *(v0 + 2160) = v43;
  *(v0 + 2168) = v44;
  *(v0 + 2176) = v45;
  *(v0 + 2184) = v46;
  *(v0 + 2192) = v47;
  *(v0 + 2200) = v55;
  *(v0 + 2208) = v56;
  *(v0 + 2216) = v52;
  *(v0 + 2224) = v57;
  *(v0 + 2232) = v53;
  *(v0 + 2240) = v32;
  *(v0 + 2248) = v23;
  *(v0 + 2256) = v48 & 1;
  *(v0 + 2260) = v50;
  *(v0 + 2264) = v49 & 1;
  *(v0 + 2265) = v30;
  *(v0 + 2272) = v51;
  *(v0 + 2280) = v156;
  *(v0 + 2288) = v154;
  *(v0 + 2296) = v153;
  *(v0 + 2304) = v152;
  *(v0 + 2312) = v151;
  *(v0 + 2320) = v150;
  *(v0 + 2328) = v149;
  *(v0 + 2336) = v148;
  *(v0 + 2344) = v54;
  *(v0 + 4472) = 0;
  if (TTSIsBaseSystem())
  {
    v61 = *(v0 + 4744);
    v62 = *(v0 + 4736);
    v63 = *(v0 + 4712);
    v64 = *(v0 + 4704);
    v65 = *(v0 + 4544);
    v66 = *(v0 + 4536);
    v67 = (*((*MEMORY[0x1E69E7D40] & **(*(v0 + 4496) + 24)) + 0x258))();
    *(v0 + 4800) = v67;
    memcpy(__dst, (v0 + 2072), 0x118uLL);
    sub_1A937B3DC(v0 + 2072, v0 + 2352);

    TTSAURenderer.RenderRequest.init(ssml:voice:jobIdentifier:)(v64, v63, __dst, v62, v61, (v0 + 16));
    memcpy((v0 + 328), (v0 + 16), 0x138uLL);
    sub_1A9391BAC(v65, v66, &qword_1EB386A18, &qword_1A9587E40);
    v68 = sub_1A957B8C8();
    v69 = *(v68 - 8);
    v70 = (*(v69 + 48))(v66, 1, v68);
    v71 = *(v0 + 4536);
    if (v70 == 1)
    {
      sub_1A937B960(*(v0 + 4536), &qword_1EB386A18, &qword_1A9587E40);
    }

    else
    {
      v76 = *(v0 + 4536);
      v77 = sub_1A957B888();
      (*(v69 + 8))(v71, v68);
      if (v77)
      {
LABEL_12:
        *(v0 + 4808) = v77;
        *(v0 + 4452) = *(*(v0 + 4696) + 48);
        v78 = *(v0 + 4472);
        *(v0 + 4816) = v78;
        v155 = (*v67 + 368);
        v157 = (*v155 + **v155);
        v79 = (*v155)[1];
        v80 = swift_task_alloc();
        *(v0 + 4824) = v80;
        *v80 = v0;
        v80[1] = sub_1A94E50FC;

        return v157(v0 + 328, v77, v78);
      }
    }

    v77 = *(*(v0 + 4496) + 344);

    goto LABEL_12;
  }

  v72 = *(*(v0 + 4496) + 24);
  v73 = MEMORY[0x1E69E7D40];
  *(v0 + 4472) = (*((*MEMORY[0x1E69E7D40] & *v72) + 0x2A0))();
  v74 = (*((*v73 & *v72) + 0x348))();
  *(v0 + 4768) = v74;
  v75 = *v74;
  *(v0 + 4776) = *(*v74 + 416);
  *(v0 + 4784) = (v75 + 416) & 0xFFFFFFFFFFFFLL | 0xF28000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1A94E4D1C, v74, 0);
}

uint64_t sub_1A94E4D1C()
{
  v1 = *(v0 + 4784);
  v2 = *(v0 + 4768);
  *(v0 + 4792) = (*(v0 + 4776))();

  v3 = *(v0 + 4616);
  v4 = *(v0 + 4608);

  return MEMORY[0x1EEE6DFA0](sub_1A94E4D98, v4, v3);
}

uint64_t sub_1A94E4D98()
{
  v24 = v0;
  v1 = *(v0 + 4792);
  if (v1)
  {
    v2 = v1;
    MEMORY[0x1AC585360]();
    if (*((*(v0 + 4472) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 4472) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((*(v0 + 4472) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1A957C4F8();
    }

    sub_1A957C538();
  }

  v3 = *(v0 + 4744);
  v4 = *(v0 + 4736);
  v5 = *(v0 + 4712);
  v6 = *(v0 + 4704);
  v7 = *(v0 + 4544);
  v8 = *(v0 + 4536);
  v9 = (*((*MEMORY[0x1E69E7D40] & **(*(v0 + 4496) + 24)) + 0x258))();
  *(v0 + 4800) = v9;
  memcpy(__dst, (v0 + 2072), sizeof(__dst));
  sub_1A937B3DC(v0 + 2072, v0 + 2352);

  TTSAURenderer.RenderRequest.init(ssml:voice:jobIdentifier:)(v6, v5, __dst, v4, v3, (v0 + 16));
  memcpy((v0 + 328), (v0 + 16), 0x138uLL);
  sub_1A9391BAC(v7, v8, &qword_1EB386A18, &qword_1A9587E40);
  v10 = sub_1A957B8C8();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = *(v0 + 4536);
  if (v12 == 1)
  {
    sub_1A937B960(*(v0 + 4536), &qword_1EB386A18, &qword_1A9587E40);
  }

  else
  {
    v14 = *(v0 + 4536);
    v15 = sub_1A957B888();
    (*(v11 + 8))(v13, v10);
    if (v15)
    {
      goto LABEL_9;
    }
  }

  v15 = *(*(v0 + 4496) + 344);

LABEL_9:
  *(v0 + 4808) = v15;
  *(v0 + 4452) = *(*(v0 + 4696) + 48);
  v16 = *(v0 + 4472);
  *(v0 + 4816) = v16;
  v21 = (*v9 + 368);
  v22 = (*v21 + **v21);
  v17 = (*v21)[1];
  v18 = swift_task_alloc();
  *(v0 + 4824) = v18;
  *v18 = v0;
  v18[1] = sub_1A94E50FC;

  return v22(v0 + 328, v15, v16);
}

uint64_t sub_1A94E50FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 4824);
  v5 = *(*v1 + 4808);
  v6 = *(*v1 + 4800);
  v10 = *v1;
  v3[604] = a1;

  memcpy(v3 + 80, v3 + 41, 0x138uLL);
  sub_1A94F1FF4((v3 + 80));
  v7 = v2[577];
  v8 = v2[576];

  return MEMORY[0x1EEE6DFA0](sub_1A94E5284, v8, v7);
}

uint64_t sub_1A94E5284()
{
  v1 = *(v0 + 4832);
  v2 = *(v0 + 4816);
  v3 = *(v0 + 4452);
  v4 = *(v0 + 4584);
  v5 = *(v0 + 4560);
  v6 = *(v0 + 4544);
  sub_1A937B48C(v0 + 2072);
  sub_1A937B48C(v0 + 1232);
  sub_1A937B960(v0 + 1512, &unk_1EB387BC0, &qword_1A9587E30);
  sub_1A937B960(v6, &qword_1EB386A18, &qword_1A9587E40);
  sub_1A94F1A60(v4, type metadata accessor for SpeechSlicer.Slice);

  v7 = sub_1A957B308();
  (*(*(v7 - 8) + 8))(v5 + v3, v7);
  v8 = *(v0 + 4832);
  *(v0 + 4840) = v8;
  v9 = *(v0 + 4640);
  v10 = *(v0 + 4600);
  v11 = *(v10 + 8);
  *(v0 + 4848) = v11;
  *(v10 + 8) = MEMORY[0x1E69E7CC0];

  v12 = swift_task_alloc();
  *(v0 + 4856) = v12;
  *v12 = v0;
  v12[1] = sub_1A94E5418;
  v13 = *(v0 + 4600);
  v14 = *(v0 + 4496);

  return sub_1A94E6BD8(v11, v8, v13);
}

uint64_t sub_1A94E5418(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 4856);
  v6 = *v2;
  v4[608] = v1;

  v7 = v4[606];
  v8 = v4[605];
  if (v1)
  {

    v9 = v4[577];
    v10 = v4[576];
    v11 = sub_1A94E5728;
  }

  else
  {

    v4[609] = a1;
    v9 = v4[577];
    v10 = v4[576];
    v11 = sub_1A94E5594;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, v9);
}

uint64_t sub_1A94E5594()
{
  v18 = v0;
  v1 = v0[609];
  if (*(v0[562] + 457) == 2)
  {
    v2 = v0[608];
    v17 = v0[609];

    sub_1A94EDE1C(&v17);
    if (v2)
    {
    }

    v5 = v0[609];
    v6 = v0[605];
    v7 = v0[575];

    v8 = v17;
    *v7 = v6;
    v7[1] = v8;
  }

  else
  {
    v4 = v0[605];
  }

  v9 = v0[578];
  v10 = v0[573];
  v11 = v0[570];
  v12 = v0[568];
  v13 = v0[567];
  v14 = v0[566];
  v15 = v0[565];
  sub_1A94F1AC0(v0[575], v0[560], _s15UtteranceRunnerC14SynthesisStateVMa);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1A94E5728()
{
  v169 = v0;
  v1 = (v0 + 1296);
  v2 = *(v0 + 4864);
  v3 = *(v0 + 4840);
  v4 = *(v0 + 4624);
  v5 = *(v0 + 4600);

  sub_1A94F1A60(v5, _s15UtteranceRunnerC14SynthesisStateVMa);
  v6 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 4624);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1A94BC938(0, v8[2] + 1, 1, *(v0 + 4624));
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1A94BC938((v9 > 1), v10 + 1, 1, v8);
  }

  v11 = *(v0 + 4864);
  v12 = *(v0 + 4465);
  v13 = *(v0 + 4632);
  v8[2] = v10 + 1;
  v8[v10 + 4] = v11;
  v14 = v13 + 1;
  v15 = *(v0 + 4632);
  if (v12)
  {
    if (v15 <= 2)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    if (v15 <= 2)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }
  }

  else
  {
    v17 = v15 > 0;
    if (v15 <= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }
  }

  v18 = *(v0 + 4520);
  v19 = *(v0 + 4512);
  v20 = *(v0 + 4504);
  v21 = sub_1A9391D1C();
  (*(v19 + 16))(v18, v21, v20);
  v22 = sub_1A957BC68();
  v23 = sub_1A957CA78();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 4520);
  v26 = *(v0 + 4512);
  v27 = *(v0 + 4504);
  v163 = v8;
  if (v24)
  {
    v157 = *(v0 + 4864);
    v28 = swift_slowAlloc();
    v154 = v25;
    v29 = swift_slowAlloc();
    __dst[0] = v29;
    *v28 = 136315138;
    *(v0 + 4456) = v16;
    *(v0 + 4464) = v17;
    v30 = sub_1A957C198();
    v32 = sub_1A937A5C0(v30, v31, __dst);

    *(v28 + 4) = v32;
    v1 = (v0 + 1296);
    _os_log_impl(&dword_1A9324000, v22, v23, "Utterance encountered error, next fallback state: %s", v28, 0xCu);
    sub_1A9378138(v29);
    MEMORY[0x1AC587CD0](v29, -1, -1);
    v33 = v28;
    v8 = v163;
    MEMORY[0x1AC587CD0](v33, -1, -1);

    (*(v26 + 8))(v154, v27);
  }

  else
  {

    (*(v26 + 8))(v25, v27);
  }

  if (v17 >= 2u)
  {
    v47 = *(v0 + 4496);
  }

  else
  {
    v158 = v17;
    *(v1 + 3169) = v17;
    *(v0 + 4632) = v16;
    *(v0 + 4624) = v8;
    if (*(*(v0 + 4496) + 457) == 1)
    {
      v34 = *(v0 + 4600);
      v35 = sub_1A94F19F8(*(v0 + 4488), v34, _s15UtteranceRunnerC14SynthesisStateVMa);
      v38 = *v34;
      *(v0 + 4640) = *v34;
      v39 = *(v0 + 4600);
      if (v38)
      {
        *v39 = 0;
        *(v0 + 4840) = v38;
        v40 = *(v0 + 4640);
        v41 = *(v0 + 4600);
        v42 = *(v41 + 8);
        *(v0 + 4848) = v42;
        *(v41 + 8) = MEMORY[0x1E69E7CC0];

        v43 = swift_task_alloc();
        *(v0 + 4856) = v43;
        *v43 = v0;
        v43[1] = sub_1A94E5418;
        v44 = *(v0 + 4600);
        v45 = *(v0 + 4496);

        return sub_1A94E6BD8(v42, v38, v44);
      }

      v80 = *(*(v0 + 4592) + 28);
      v81 = *(v39 + v80);
      if (v81[2])
      {
        v82 = *(*(v0 + 4576) + 80);
        v35 = sub_1A94F19F8(v81 + ((v82 + 32) & ~v82), *(v0 + 4584), type metadata accessor for SpeechSlicer.Slice);
        v83 = v81[2];
        if (v83)
        {
          v84 = swift_isUniquelyReferenced_nonNull_native();
          *(v39 + v80) = v81;
          v151 = v1;
          if (!v84 || (v83 - 1) > v81[3] >> 1)
          {
            v81 = sub_1A94ED9B8(v84, v83, 1, v81);
            *(v39 + v80) = v81;
          }

          v85 = *(v0 + 4600);
          v86 = *(v0 + 4592);
          v87 = *(v0 + 4584);
          v88 = *(v0 + 4576);
          v89 = *(v0 + 4568);
          v155 = *(v0 + 4560);
          v164 = *(v0 + 4552);
          sub_1A94F0A6C(0, 1, 0);
          *(v39 + v80) = v81;
          v90 = *(v86 + 24);
          sub_1A937B960(v85 + v90, &qword_1EB388240, &qword_1A95964A0);
          sub_1A94F19F8(v87, v85 + v90, type metadata accessor for SpeechSlicer.Slice);
          (*(v88 + 56))(v85 + v90, 0, 1, v89);
          sub_1A94F19F8(v87 + *(v89 + 24), v155, type metadata accessor for SpeechSlicer.Slice.SliceType);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v91 = *(v0 + 4560);
            v92 = *(v0 + 4496);
            *(v0 + 4648) = *v91;
            *(v0 + 4656) = v91[1];
            v36 = (*((*MEMORY[0x1E69E7D40] & **(v92 + 24)) + 0x288))();
            *(v0 + 4664) = v36;
            v93 = *v36 + 128;
            *(v0 + 4672) = *v93;
            *(v0 + 4680) = v93 & 0xFFFFFFFFFFFFLL | 0x2256000000000000;
            v94 = sub_1A94E3C9C;
            goto LABEL_38;
          }

          v95 = *(v0 + 4584);
          v96 = *(v0 + 4560);
          v97 = *(v0 + 4544);
          v98 = *(v0 + 4496);
          memcpy((v0 + 1232), v96, 0x118uLL);
          v99 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
          *(v0 + 4696) = v99;
          sub_1A93A7460(v96 + *(v99 + 64), v97, &qword_1EB386A18, &qword_1A9587E40);
          v100 = *v95;
          *(v0 + 4704) = *v95;
          v101 = v95[1];
          *(v0 + 4712) = v101;
          v102 = *(v0 + 1232);
          *(v0 + 4720) = v102;
          v103 = *(v0 + 1240);
          *(v0 + 4728) = v103;
          *(v0 + 4384) = v100;
          *(v0 + 4392) = v101;
          *(v0 + 4400) = v102;
          *(v0 + 4408) = v103;
          *(v151 + 3152) = 5;
          v104 = *(v98 + 32);
          *(v0 + 4736) = v104;
          v105 = *(v98 + 40);
          *(v0 + 4744) = v105;
          swift_bridgeObjectRetain_n();

          v106._countAndFlagsBits = v104;
          v106._object = v105;
          TTSSpeechEvent.emit(forJob:)(v106);
          v107 = *(v0 + 4432);
          *(v0 + 4344) = *(v0 + 4416);
          *(v0 + 4360) = v107;
          *(v0 + 4376) = *(v0 + 4448);
          v108 = *(v0 + 4400);
          *(v0 + 4312) = *(v0 + 4384);
          *(v0 + 4328) = v108;
          sub_1A946C4C0(v0 + 4312);
          v109 = sub_1A93847E0(v0 + 952);
          if (v158)
          {
            v110 = (*((*MEMORY[0x1E69E7D40] & **(*(v0 + 4496) + 24)) + 0x198))(v109);
            *(v0 + 4752) = v110;
            memcpy((v0 + 3192), (v0 + 1232), 0x118uLL);
            v160 = (*v110 + 464);
            v165 = (*v160 + **v160);
            v111 = (*v160)[1];
            v112 = swift_task_alloc();
            *(v0 + 4760) = v112;
            *v112 = v0;
            v112[1] = sub_1A94E3E24;

            return v165(v0 + 2912, v0 + 3192);
          }

          v161 = *(v0 + 1504);
          v166 = *(v0 + 1496);
          v156 = *(v0 + 1425);
          v153 = *(v0 + 1420);
          v152 = *(v151 + 128);
          v150 = *(v151 + 120);
          v148 = *(v0 + 1384);
          v149 = *(v0 + 1376);
          v146 = *(v0 + 1328);
          v147 = *(v0 + 1360);
          v145 = *(v0 + 1344);
          v144 = *(v0 + 1352);
          v113 = *(v0 + 1288);
          v114 = *(v0 + 1280);
          v137 = *(v0 + 1248);
          v142 = *(v151 + 184);
          v143 = *(v151 + 152);
          v140 = *(v151 + 168);
          v141 = *(v151 + 136);
          v138 = *(v0 + 1392);
          v139 = *(v0 + 1264);
          v115 = *(v0 + 1408);
          v135 = v151[1];
          v136 = *v151;
          sub_1A937B3DC(v0 + 1232, v0 + 1792);
          memcpy((v0 + 1512), (v0 + 952), 0x118uLL);
          *(v0 + 2072) = v102;
          *(v0 + 2080) = v103;
          *(v0 + 2088) = v137;
          *(v0 + 2104) = v139;
          *(v0 + 2120) = v114;
          *(v0 + 2128) = v113;
          *(v151 + 840) = v136;
          *(v151 + 856) = v135;
          *(v0 + 2168) = v146;
          *(v0 + 2184) = v145;
          *(v0 + 2192) = v144;
          *(v0 + 2200) = v147;
          *(v0 + 2216) = v149;
          *(v0 + 2224) = v148;
          *(v151 + 936) = v138;
          *(v0 + 2248) = v115;
          *(v151 + 960) = v150;
          *(v0 + 2260) = v153;
          *(v151 + 968) = v152;
          *(v0 + 2265) = v156;
          *(v0 + 2272) = v141;
          *(v0 + 2288) = v143;
          *(v0 + 2304) = v140;
          *(v0 + 2320) = v142;
          *(v0 + 2336) = v166;
          *(v0 + 2344) = v161;
          *(v0 + 4472) = 0;
          if ((TTSIsBaseSystem() & 1) == 0)
          {
            v127 = *(*(v0 + 4496) + 24);
            v128 = MEMORY[0x1E69E7D40];
            *(v0 + 4472) = (*((*MEMORY[0x1E69E7D40] & *v127) + 0x2A0))();
            v36 = (*((*v128 & *v127) + 0x348))();
            *(v0 + 4768) = v36;
            v129 = *v36;
            *(v0 + 4776) = *(*v36 + 416);
            *(v0 + 4784) = (v129 + 416) & 0xFFFFFFFFFFFFLL | 0xF28000000000000;
            v94 = sub_1A94E4D1C;
LABEL_38:
            v35 = v94;
            v37 = 0;

            return MEMORY[0x1EEE6DFA0](v35, v36, v37);
          }

          v116 = *(v0 + 4744);
          v117 = *(v0 + 4736);
          v118 = *(v0 + 4712);
          v119 = *(v0 + 4704);
          v120 = *(v0 + 4544);
          v121 = *(v0 + 4536);
          v122 = (*((*MEMORY[0x1E69E7D40] & **(*(v0 + 4496) + 24)) + 0x258))();
          *(v0 + 4800) = v122;
          memcpy(__dst, (v0 + 2072), 0x118uLL);
          sub_1A937B3DC(v0 + 2072, v0 + 2352);

          TTSAURenderer.RenderRequest.init(ssml:voice:jobIdentifier:)(v119, v118, __dst, v117, v116, (v0 + 16));
          memcpy((v0 + 328), (v0 + 16), 0x138uLL);
          sub_1A9391BAC(v120, v121, &qword_1EB386A18, &qword_1A9587E40);
          v123 = sub_1A957B8C8();
          v124 = *(v123 - 8);
          v125 = (*(v124 + 48))(v121, 1, v123);
          v126 = *(v0 + 4536);
          if (v125 == 1)
          {
            sub_1A937B960(*(v0 + 4536), &qword_1EB386A18, &qword_1A9587E40);
          }

          else
          {
            v130 = *(v0 + 4536);
            v131 = sub_1A957B888();
            (*(v124 + 8))(v126, v123);
            if (v131)
            {
LABEL_51:
              *(v0 + 4808) = v131;
              *(v0 + 4452) = *(*(v0 + 4696) + 48);
              v132 = *(v0 + 4472);
              *(v0 + 4816) = v132;
              v162 = (*v122 + 368);
              v167 = (*v162 + **v162);
              v133 = (*v162)[1];
              v134 = swift_task_alloc();
              *(v0 + 4824) = v134;
              *v134 = v0;
              v134[1] = sub_1A94E50FC;

              return v167(v0 + 328, v131, v132);
            }
          }

          v131 = *(*(v0 + 4496) + 344);

          goto LABEL_51;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return MEMORY[0x1EEE6DFA0](v35, v36, v37);
    }
  }

  v48 = *(v0 + 4528);
  v49 = *(v0 + 4512);
  v50 = *(v0 + 4504);
  v51 = sub_1A9391D1C();
  (*(v49 + 16))(v48, v51, v50);

  v52 = sub_1A957BC68();
  v53 = sub_1A957CA78();

  if (os_log_type_enabled(v52, v53))
  {
    v159 = *(v0 + 4528);
    v54 = *(v0 + 4512);
    v55 = *(v0 + 4504);
    v56 = *(v0 + 4496);
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    __dst[0] = v58;
    *v57 = 136315394;
    sub_1A9410EB8();
    v59 = sub_1A957D3A8();
    v61 = sub_1A937A5C0(v59, v60, __dst);

    *(v57 + 4) = v61;
    *(v57 + 12) = 2080;
    v62 = v163;

    v63 = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    v64 = MEMORY[0x1AC585390](v163, v63);
    v66 = v65;

    v67 = sub_1A937A5C0(v64, v66, __dst);

    *(v57 + 14) = v67;
    _os_log_impl(&dword_1A9324000, v52, v53, "Utterance: %s failed with errors: %s", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC587CD0](v58, -1, -1);
    MEMORY[0x1AC587CD0](v57, -1, -1);

    (*(v54 + 8))(v159, v55);
  }

  else
  {
    v68 = *(v0 + 4528);
    v69 = *(v0 + 4512);
    v70 = *(v0 + 4504);

    (*(v69 + 8))(v68, v70);
    v62 = v163;
  }

  v71 = *(v0 + 4600);
  v72 = *(v0 + 4584);
  v73 = *(v0 + 4560);
  v74 = *(v0 + 4544);
  v75 = *(v0 + 4536);
  v76 = *(v0 + 4528);
  v77 = *(v0 + 4520);
  sub_1A94F1FA0();
  swift_allocError();
  *v78 = v62;
  swift_willThrow();

  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_1A94E6764()
{
  v1[18] = v0;
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner);
  v3 = sub_1A957C5A8();
  v1[19] = v3;
  v1[20] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A94E681C, v3, v2);
}

uint64_t sub_1A94E681C()
{
  v1 = v0[18];
  if (*(v1 + 456))
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = *((*MEMORY[0x1E69E7D40] & **(v1 + 24)) + 0x1F8);
    v5 = v4();
    v6 = [v5 outputFormat];

    v7 = [objc_allocWithZone(TTSAudioBuffer) initWithFormat:v6 frameCapacity:1];
    v0[21] = v7;

    v8 = (v4)([v7 setFrameLength_]);
    v0[22] = v8;
    v0[2] = v0;
    v0[3] = sub_1A94E6A38;
    v9 = swift_continuation_init();
    v0[17] = sub_1A937829C(&qword_1EB388280, &qword_1A9596538);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A94E6BA4;
    v0[13] = &unk_1F1CED888;
    v0[14] = v9;
    [v8 scheduleBuffer:v7 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1A94E6A38()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A94E6B40, v2, v1);
}

uint64_t sub_1A94E6B40()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A94E6BA4(uint64_t a1)
{
  v1 = *sub_1A93780F4((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_1A94E6BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = *(*(sub_1A937829C(&qword_1EB388268, &qword_1A9596520) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v6 = type metadata accessor for TTSAURenderer.SpeechBuffer();
  v4[27] = v6;
  v7 = *(v6 - 8);
  v4[28] = v7;
  v4[29] = *(v7 + 64);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v8 = *(_s15UtteranceRunnerC14SynthesisStateVMa(0) - 8);
  v4[33] = v8;
  v4[34] = *(v8 + 64);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  v4[37] = sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner);
  v10 = sub_1A957C5A8();
  v4[38] = v10;
  v4[39] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1A94E6DB8, v10, v9);
}

uint64_t sub_1A94E6DB8()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  sub_1A937829C(&qword_1EB388270, &qword_1A9596528);
  v4 = sub_1A94BA628();
  *(v0 + 320) = v4;
  sub_1A94F19F8(v2, v1, _s15UtteranceRunnerC14SynthesisStateVMa);
  v5 = *(v3 + 16);
  *(v0 + 328) = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = *(v0 + 224);
  v7 = *(v0 + 200);
  v8 = *(v0 + 176);
  v9 = *(v6 + 80);
  *(v0 + 84) = v9;
  *(v0 + 336) = *(v6 + 72);
  *(v0 + 344) = 0;
  sub_1A94F19F8(v8 + ((v9 + 32) & ~v9), *(v0 + 256), type metadata accessor for TTSAURenderer.SpeechBuffer);
  v10 = *(v7 + 457);
  if (v10 == 2)
  {
    (*(**(v0 + 320) + 136))(*(v0 + 256));
    goto LABEL_9;
  }

  if (v10 != 1)
  {
LABEL_9:
    sub_1A94F1A60(*(v0 + 256), type metadata accessor for TTSAURenderer.SpeechBuffer);
    v4 = *(v0 + 320);
LABEL_10:
    v16 = *(v0 + 200);
    *(v0 + 376) = v4;
    *(v0 + 384) = v16;
    v17 = *(v0 + 184);
    v18 = sub_1A957BBE8();
    *(v0 + 392) = v18;
    *(v0 + 400) = v19;
    *(v0 + 152) = v18;
    *(v0 + 160) = v19;
    *(v0 + 408) = OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_receivedFirstBuffer;
    v20 = *(MEMORY[0x1E698D2F8] + 4);
    v21 = swift_task_alloc();
    *(v0 + 416) = v21;
    v22 = sub_1A937829C(&qword_1EB388278, &qword_1A9596530);
    *v21 = v0;
    v21[1] = sub_1A94E7B40;
    v23 = *(v0 + 208);

    return MEMORY[0x1EEDEE820](v23, v22);
  }

  if ((TTSIsBaseSystem() & 1) == 0)
  {
    v11 = *(v0 + 200);
    *(v0 + 120) = [*(*(v0 + 256) + *(*(v0 + 216) + 24)) avBuffer];
    *(v0 + 128) = xmmword_1A95961C0;
    *(v0 + 144) = 0;
    (*(*v11 + 256))(v0 + 120);
    v12 = *(v0 + 144);
    sub_1A9410F60(*(v0 + 120), *(v0 + 128), *(v0 + 136));
  }

  v13 = *(v0 + 200);
  v14 = *(v0 + 256);
  if (*(v13 + 456) == 1)
  {
    v15 = *(v0 + 200);
    sub_1A94E9580(*(v14 + *(*(v0 + 216) + 28)), *(v0 + 288));
LABEL_17:
    v39 = *(v0 + 304);
    v40 = *(v0 + 312);

    return MEMORY[0x1EEE6DFA0](sub_1A94E73E4, v39, v40);
  }

  v24 = (*(**(v0 + 320) + 136))(v14);
  if (*(v13 + 457) != 1)
  {
    goto LABEL_17;
  }

  v44 = *(v0 + 280);
  v45 = *(v0 + 288);
  v50 = *(v0 + 272);
  v46 = *(v0 + 264);
  v47 = *(v0 + 320);
  v25 = *(v0 + 256);
  v26 = *(v0 + 216);
  v27 = *(v0 + 200);
  v28 = (*(v0 + 84) + 32) & ~*(v0 + 84);
  v42 = *(v0 + 248);
  v43 = *(v0 + 232) + v28;
  v29 = *((*MEMORY[0x1E69E7D40] & *v27[3]) + 0x1F8);
  v30 = (v29)(v24);
  v49 = *(v25 + *(v26 + 24));
  v31 = [v49 format];
  [v30 setOutputFormat_];

  v32 = v29();
  [v32 play];

  v33 = ((*v27)[21])();
  *(v0 + 352) = v33;
  sub_1A94F19F8(v25, v42, type metadata accessor for TTSAURenderer.SpeechBuffer);
  sub_1A94F19F8(v45, v44, _s15UtteranceRunnerC14SynthesisStateVMa);
  v34 = (v43 + *(v46 + 80)) & ~*(v46 + 80);
  v35 = swift_allocObject();
  *(v0 + 360) = v35;
  *(v35 + 16) = v27;
  *(v35 + 24) = v47;
  sub_1A94F1AC0(v42, v35 + v28, type metadata accessor for TTSAURenderer.SpeechBuffer);
  sub_1A94F1AC0(v44, v35 + v34, _s15UtteranceRunnerC14SynthesisStateVMa);
  v36 = *(*v33 + 192);

  v48 = (v36 + *v36);
  v37 = v36[1];
  v38 = swift_task_alloc();
  *(v0 + 368) = v38;
  *v38 = v0;
  v38[1] = sub_1A94E79E0;

  return v48(v49, sub_1A94F2C6C, v35);
}

uint64_t sub_1A94E73E4()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 344) + 1;
  sub_1A94F1A60(*(v0 + 256), type metadata accessor for TTSAURenderer.SpeechBuffer);
  if (v2 == v1)
  {
LABEL_6:
    v7 = *(v0 + 200);
    *(v0 + 376) = *(v0 + 320);
    *(v0 + 384) = v7;
    v8 = *(v0 + 184);
    v9 = sub_1A957BBE8();
    *(v0 + 392) = v9;
    *(v0 + 400) = v10;
    *(v0 + 152) = v9;
    *(v0 + 160) = v10;
    *(v0 + 408) = OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_receivedFirstBuffer;
    v11 = *(MEMORY[0x1E698D2F8] + 4);
    v12 = swift_task_alloc();
    *(v0 + 416) = v12;
    v13 = sub_1A937829C(&qword_1EB388278, &qword_1A9596530);
    *v12 = v0;
    v12[1] = sub_1A94E7B40;
    v14 = *(v0 + 208);

    return MEMORY[0x1EEDEE820](v14, v13);
  }

  v3 = *(v0 + 336);
  v4 = *(v0 + 344) + 1;
  *(v0 + 344) = v4;
  v5 = *(v0 + 200);
  sub_1A94F19F8(*(v0 + 176) + ((*(v0 + 84) + 32) & ~*(v0 + 84)) + v3 * v4, *(v0 + 256), type metadata accessor for TTSAURenderer.SpeechBuffer);
  v6 = *(v5 + 457);
  if (v6 != 1)
  {
    if (v6 == 2)
    {
      (*(**(v0 + 320) + 136))(*(v0 + 256));
    }

    sub_1A94F1A60(*(v0 + 256), type metadata accessor for TTSAURenderer.SpeechBuffer);
    goto LABEL_6;
  }

  if ((TTSIsBaseSystem() & 1) == 0)
  {
    v15 = *(v0 + 200);
    *(v0 + 120) = [*(*(v0 + 256) + *(*(v0 + 216) + 24)) avBuffer];
    *(v0 + 128) = xmmword_1A95961C0;
    *(v0 + 144) = 0;
    (*(*v15 + 256))(v0 + 120);
    v16 = *(v0 + 144);
    sub_1A9410F60(*(v0 + 120), *(v0 + 128), *(v0 + 136));
  }

  v17 = *(v0 + 200);
  v18 = *(v0 + 256);
  if (*(v17 + 456) == 1)
  {
    v19 = *(v0 + 200);
    sub_1A94E9580(*(v18 + *(*(v0 + 216) + 28)), *(v0 + 288));
LABEL_17:
    v35 = *(v0 + 304);
    v36 = *(v0 + 312);

    return MEMORY[0x1EEE6DFA0](sub_1A94E73E4, v35, v36);
  }

  v20 = (*(**(v0 + 320) + 136))(v18);
  if (*(v17 + 457) != 1)
  {
    goto LABEL_17;
  }

  v40 = *(v0 + 280);
  v41 = *(v0 + 288);
  v46 = *(v0 + 272);
  v42 = *(v0 + 264);
  v43 = *(v0 + 320);
  v21 = *(v0 + 256);
  v22 = *(v0 + 216);
  v23 = *(v0 + 200);
  v24 = (*(v0 + 84) + 32) & ~*(v0 + 84);
  v38 = *(v0 + 248);
  v39 = *(v0 + 232) + v24;
  v25 = *((*MEMORY[0x1E69E7D40] & *v23[3]) + 0x1F8);
  v26 = (v25)(v20);
  v45 = *(v21 + *(v22 + 24));
  v27 = [v45 format];
  [v26 setOutputFormat_];

  v28 = v25();
  [v28 play];

  v29 = ((*v23)[21])();
  *(v0 + 352) = v29;
  sub_1A94F19F8(v21, v38, type metadata accessor for TTSAURenderer.SpeechBuffer);
  sub_1A94F19F8(v41, v40, _s15UtteranceRunnerC14SynthesisStateVMa);
  v30 = (v39 + *(v42 + 80)) & ~*(v42 + 80);
  v31 = swift_allocObject();
  *(v0 + 360) = v31;
  *(v31 + 16) = v23;
  *(v31 + 24) = v43;
  sub_1A94F1AC0(v38, v31 + v24, type metadata accessor for TTSAURenderer.SpeechBuffer);
  sub_1A94F1AC0(v40, v31 + v30, _s15UtteranceRunnerC14SynthesisStateVMa);
  v32 = *(*v29 + 192);

  v44 = (v32 + *v32);
  v33 = v32[1];
  v34 = swift_task_alloc();
  *(v0 + 368) = v34;
  *v34 = v0;
  v34[1] = sub_1A94E79E0;

  return v44(v45, sub_1A94F2C6C, v31);
}

uint64_t sub_1A94E79E0()
{
  v1 = *v0;
  v2 = *(*v0 + 368);
  v3 = *(*v0 + 360);
  v4 = *(*v0 + 352);
  v8 = *v0;

  v5 = *(v1 + 312);
  v6 = *(v1 + 304);

  return MEMORY[0x1EEE6DFA0](sub_1A94E73E4, v6, v5);
}

uint64_t sub_1A94E7B40()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v11 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    if (v2[25])
    {
      v4 = v2[37];
      swift_getObjectType();
      v5 = sub_1A957C5A8();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v9 = sub_1A94E8428;
    v8 = v5;
  }

  else
  {
    v8 = v2[38];
    v7 = v2[39];
    v9 = sub_1A94E7C94;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1A94E7C94()
{
  v73 = v0;
  v1 = *(v0 + 208);
  if ((*(*(v0 + 224) + 48))(v1, 1, *(v0 + 216)) == 1)
  {
    v2 = *(v0 + 392);
    v3 = *(v0 + 400);
    v4 = *(v0 + 288);

    v5 = _s15UtteranceRunnerC14SynthesisStateVMa;
    v6 = v4;
LABEL_13:
    v22 = sub_1A94F1A60(v6, v5);
    if (*(*(v0 + 200) + 457) == 1)
    {
      v23 = swift_task_alloc();
      *(v0 + 456) = v23;
      *v23 = v0;
      v23[1] = sub_1A94E87D8;
      v24 = *(v0 + 200);

      return sub_1A94E6764();
    }

    v26 = *(v0 + 376);
    v27 = (*(**(v0 + 320) + 168))(v22);
    v28 = v27;
    v29 = *(v27 + 16);
    if (!v29)
    {
      v37 = *(v0 + 320);

      v31 = MEMORY[0x1E69E7CC0];
      goto LABEL_21;
    }

    v30 = *(v0 + 224);
    v31 = sub_1A94EDCC4(*(v27 + 16), 0);
    v32 = sub_1A94F07E0(&v72, v31 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v29, v28);
    v33 = sub_1A932D088();
    if (v32 == v29)
    {
      v36 = *(v0 + 320);

LABEL_21:
      v39 = *(v0 + 280);
      v38 = *(v0 + 288);
      v41 = *(v0 + 248);
      v40 = *(v0 + 256);
      v42 = *(v0 + 240);
      v43 = *(v0 + 208);

      v44 = *(v0 + 8);

      return v44(v31);
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v33, v34, v35);
  }

  v7 = *(v0 + 408);
  v8 = *(v0 + 200);
  sub_1A94F1AC0(v1, *(v0 + 240), type metadata accessor for TTSAURenderer.SpeechBuffer);
  if ((*(v8 + v7) & 1) == 0)
  {
    v9 = *(v0 + 408);
    v10 = *(v0 + 200);
    *(v0 + 16) = 4;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0;
    *(v0 + 80) = 10;
    TTSSpeechEvent.emit(forJob:)(v10[2]);
    *(&v10->_countAndFlagsBits + v9) = 1;
  }

  v11 = *(*(v0 + 200) + 457);
  if (v11 == 2)
  {
    v17 = *(v0 + 376);
    (*(**(v0 + 320) + 136))(*(v0 + 240));
    goto LABEL_12;
  }

  if (v11 != 1)
  {
LABEL_12:
    v18 = *(v0 + 392);
    v19 = *(v0 + 400);
    v20 = *(v0 + 288);
    v21 = *(v0 + 240);

    sub_1A94F1A60(v20, _s15UtteranceRunnerC14SynthesisStateVMa);
    v5 = type metadata accessor for TTSAURenderer.SpeechBuffer;
    v6 = v21;
    goto LABEL_13;
  }

  if ((TTSIsBaseSystem() & 1) == 0)
  {
    v12 = *(v0 + 384);
    v13 = *(v0 + 200);
    *(v0 + 88) = [*(*(v0 + 240) + *(*(v0 + 216) + 24)) avBuffer];
    *(v0 + 96) = xmmword_1A95961C0;
    *(v0 + 112) = 0;
    (*(*v13 + 256))(v0 + 88);
    v14 = *(v0 + 112);
    sub_1A9410F60(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  }

  v15 = *(v0 + 200);
  if (*(v15 + 456) == 1)
  {
    v16 = *(v0 + 200);
    sub_1A94E9580(*(*(v0 + 240) + *(*(v0 + 216) + 28)), *(v0 + 288));
    goto LABEL_28;
  }

  v45 = *(v0 + 376);
  v46 = (*(**(v0 + 320) + 136))(*(v0 + 240));
  if (*(v15 + 457) != 1)
  {
LABEL_28:
    v34 = *(v0 + 304);
    v35 = *(v0 + 312);
    v33 = sub_1A94E85A8;

    return MEMORY[0x1EEE6DFA0](v33, v34, v35);
  }

  v47 = *(v0 + 384);
  v64 = *(v0 + 280);
  v65 = *(v0 + 288);
  v71 = *(v0 + 272);
  v67 = *(v0 + 264);
  v68 = *(v0 + 320);
  v49 = *(v0 + 240);
  v48 = *(v0 + 248);
  v66 = *(v0 + 232);
  v63 = *(v0 + 224);
  v50 = *(v0 + 216);
  v51 = *(v0 + 200);
  v52 = *((*MEMORY[0x1E69E7D40] & *v51[3]) + 0x1F8);
  v53 = (v52)(v46);
  v70 = *(v49 + *(v50 + 24));
  v54 = [v70 format];
  [v53 setOutputFormat_];

  v55 = v52();
  [v55 play];

  v56 = ((*v51)[21])();
  *(v0 + 432) = v56;
  sub_1A94F19F8(v49, v48, type metadata accessor for TTSAURenderer.SpeechBuffer);
  sub_1A94F19F8(v65, v64, _s15UtteranceRunnerC14SynthesisStateVMa);
  v57 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v58 = (v66 + *(v67 + 80) + v57) & ~*(v67 + 80);
  v59 = swift_allocObject();
  *(v0 + 440) = v59;
  *(v59 + 16) = v51;
  *(v59 + 24) = v68;
  sub_1A94F1AC0(v48, v59 + v57, type metadata accessor for TTSAURenderer.SpeechBuffer);
  sub_1A94F1AC0(v64, v59 + v58, _s15UtteranceRunnerC14SynthesisStateVMa);
  v60 = *(*v56 + 192);

  v69 = (v60 + *v60);
  v61 = v60[1];
  v62 = swift_task_alloc();
  *(v0 + 448) = v62;
  *v62 = v0;
  v62[1] = sub_1A94E8678;

  return v69(v70, sub_1A94F1B28, v59);
}

uint64_t sub_1A94E8428()
{
  v1 = v0[36];
  v0[21] = v0[53];
  sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
  swift_willThrowTypedImpl();
  sub_1A94F1A60(v1, _s15UtteranceRunnerC14SynthesisStateVMa);
  v2 = v0[38];
  v3 = v0[39];

  return MEMORY[0x1EEE6DFA0](sub_1A94E84D8, v2, v3);
}

uint64_t sub_1A94E84D8()
{
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[40];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[30];
  v9 = v0[26];

  v10 = v0[1];
  v11 = v0[53];

  return v10();
}

uint64_t sub_1A94E85A8()
{
  sub_1A94F1A60(v0[30], type metadata accessor for TTSAURenderer.SpeechBuffer);
  v1 = *(MEMORY[0x1E698D2F8] + 4);
  v2 = swift_task_alloc();
  v0[52] = v2;
  v3 = sub_1A937829C(&qword_1EB388278, &qword_1A9596530);
  *v2 = v0;
  v2[1] = sub_1A94E7B40;
  v4 = v0[26];

  return MEMORY[0x1EEDEE820](v4, v3);
}

uint64_t sub_1A94E8678()
{
  v1 = *v0;
  v2 = *(*v0 + 448);
  v3 = *(*v0 + 440);
  v4 = *(*v0 + 432);
  v8 = *v0;

  v5 = *(v1 + 312);
  v6 = *(v1 + 304);

  return MEMORY[0x1EEE6DFA0](sub_1A94E85A8, v6, v5);
}

uint64_t sub_1A94E87D8()
{
  v1 = *v0;
  v2 = *(*v0 + 456);
  v6 = *v0;

  v3 = *(v1 + 312);
  v4 = *(v1 + 304);

  return MEMORY[0x1EEE6DFA0](sub_1A94E88F8, v4, v3);
}

uint64_t sub_1A94E88F8()
{
  v19 = v0;
  v1 = *(v0 + 376);
  v2 = (*(**(v0 + 320) + 168))();
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = *(v0 + 224);
    v6 = sub_1A94EDCC4(*(v2 + 16), 0);
    v7 = sub_1A94F07E0(&v18, v6 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4, v3);
    result = sub_1A932D088();
    if (v7 != v4)
    {
      __break(1u);
      return result;
    }

    v9 = *(v0 + 320);
  }

  else
  {
    v10 = *(v0 + 320);

    v6 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v0 + 280);
  v11 = *(v0 + 288);
  v14 = *(v0 + 248);
  v13 = *(v0 + 256);
  v15 = *(v0 + 240);
  v16 = *(v0 + 208);

  v17 = *(v0 + 8);

  return v17(v6);
}

void sub_1A94E8A60(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_playedFirstBuffer;
  if ((*(a2 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_playedFirstBuffer) & 1) == 0)
  {
    TTSSpeechEvent.emit(forJob:)(*(a2 + 32));
    *(a2 + v10) = 1;
  }

  if (a1)
  {
    (*(*a3 + 152))(a4);
    if (*(a2 + 457) == 1)
    {
      v11 = type metadata accessor for TTSAURenderer.SpeechBuffer();
      sub_1A94E9580(*(a4 + *(v11 + 28)), a5);
    }
  }
}

uint64_t sub_1A94E8B4C()
{
  v1[5] = v0;
  v2 = *(*(sub_1A937829C(&qword_1EB388220, &qword_1A9596240) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = _s15UtteranceRunnerC14SynthesisStateVMa(0);
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v6 = sub_1A957BC88();
  v1[10] = v6;
  v7 = *(v6 - 8);
  v1[11] = v7;
  v8 = *(v7 + 64) + 15;
  v1[12] = swift_task_alloc();
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner);
  v10 = sub_1A957C5A8();
  v1[13] = v10;
  v1[14] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1A94E8CF4, v10, v9);
}

uint64_t sub_1A94E8CF4()
{
  v30 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[5];
  v5 = sub_1A9391D1C();
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_1A957BC68();
  v7 = sub_1A957CA68();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  if (v8)
  {
    v12 = v0[5];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v28 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1A937A5C0(*(v12 + 32), *(v12 + 40), v28);
    _os_log_impl(&dword_1A9324000, v6, v7, "Resuming utterance with id %s", v13, 0xCu);
    sub_1A9378138(v14);
    MEMORY[0x1AC587CD0](v14, -1, -1);
    MEMORY[0x1AC587CD0](v13, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  v15 = v0[7];
  v16 = v0[8];
  v18 = v0[5];
  v17 = v0[6];
  *v28 = xmmword_1A95961D0;
  *&v28[16] = xmmword_1A958B1E0;
  (*(v18->_countAndFlagsBits + 256))(v28);
  *v28 = 2;
  memset(&v28[8], 0, 56);
  v29 = 10;
  TTSSpeechEvent.emit(forJob:)(v18[2]);
  v19 = OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_suspendedState;
  swift_beginAccess();
  sub_1A9391BAC(v18 + v19, v17, &qword_1EB388220, &qword_1A9596240);
  if ((*(v16 + 48))(v17, 1, v15) == 1)
  {
    sub_1A937B960(v0[6], &qword_1EB388220, &qword_1A9596240);
    v20 = v0[12];
    v21 = v0[9];
    v22 = v0[6];

    v23 = v0[1];

    return v23();
  }

  else
  {
    sub_1A94F1AC0(v0[6], v0[9], _s15UtteranceRunnerC14SynthesisStateVMa);
    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_1A94E9030;
    v26 = v0[9];
    v27 = v0[5];

    return sub_1A94E25C0(v26);
  }
}

uint64_t sub_1A94E9030()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1A94E9150, v4, v3);
}

uint64_t sub_1A94E9150()
{
  sub_1A94F1A60(v0[9], _s15UtteranceRunnerC14SynthesisStateVMa);
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A94E91E4(char a1)
{
  v2 = v1;
  v4 = sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v23 - v7;
  v9 = sub_1A957BC88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A9391D1C();
  (*(v10 + 16))(v14, v15, v9);

  v16 = sub_1A957BC68();
  v17 = sub_1A957CA68();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1A937A5C0(*(v2 + 32), *(v2 + 40), &v24);
    _os_log_impl(&dword_1A9324000, v16, v17, "Completed utterance with id %s", v18, 0xCu);
    sub_1A9378138(v19);
    MEMORY[0x1AC587CD0](v19, -1, -1);
    MEMORY[0x1AC587CD0](v18, -1, -1);
  }

  (*(v10 + 8))(v14, v9);
  LOBYTE(v24) = a1 & 1;
  v27 = 7;
  TTSSpeechEvent.emit(forJob:)(*(v2 + 32));
  v24 = (a1 & 1);
  v25 = xmmword_1A95961E0;
  v26 = 0;
  (*(*v2 + 256))(&v24);
  sub_1A9391BAC(v2 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_eventContinuation, v8, &qword_1EB3871A8, &qword_1A958BE88);
  v20 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v8, 1, v20) == 1)
  {
    return sub_1A937B960(v8, &qword_1EB3871A8, &qword_1A958BE88);
  }

  v24 = 0;
  sub_1A957C828();
  return (*(v21 + 8))(v8, v20);
}

uint64_t sub_1A94E9538(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A94E9580(__n128 *a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = v48 - v7;
  v9 = sub_1A937829C(&qword_1EB388200, &unk_1A95961F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v51 = v48 - v12;
  v13 = sub_1A937829C(&qword_1EB388240, &qword_1A95964A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = v48 - v16;
  v18 = type metadata accessor for SpeechSlicer.Slice(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = (v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = _s15UtteranceRunnerC14SynthesisStateVMa(0);
  sub_1A9391BAC(a2 + *(v24 + 24), v17, &qword_1EB388240, &qword_1A95964A0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_1A937B960(v17, &qword_1EB388240, &qword_1A95964A0);
  }

  v50 = v8;
  sub_1A94F1AC0(v17, v23, type metadata accessor for SpeechSlicer.Slice);
  v26 = a1[1].n128_i64[0];
  if (v26)
  {
    v27 = a1 + 2;
    v28 = *v23;
    v29 = v23[1];
    v48[0] = OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_eventContinuation;
    v49 = v23;
    v48[2] = v28;
    v48[1] = v29;
    do
    {
      v34 = v27[1];
      v64[0] = *v27;
      v64[1] = v34;
      v35 = v27[3];
      v37 = *v27;
      v36 = v27[1];
      v64[2] = v27[2];
      v64[3] = v35;
      v56 = v37;
      v57 = v36;
      v38 = v27[3];
      v58 = v27[2];
      v59 = v38;
      sub_1A94F1934(v64, &v54);
      sub_1A9474C60(0, &v60);
      sub_1A94F1990(v64);
      v32 = v62;
      v39 = v62;
      if (v62 != 255)
      {
        v30 = v60;
        v31 = v61;
        if (v62 > 2u)
        {
          v53 = v63;
          v42 = v50;
          sub_1A9391BAC(v52 + v48[0], v50, &qword_1EB3871A8, &qword_1A958BE88);
          v43 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
          v44 = *(v43 - 8);
          if ((*(v44 + 48))(v42, 1, v43) == 1)
          {
            sub_1A937B960(v42, &qword_1EB3871A8, &qword_1A958BE88);
            v45 = 1;
            v46 = v51;
          }

          else
          {
            v56.n128_u64[0] = v30;
            v56.n128_u64[1] = v31;
            v57.n128_u64[0] = v39 | 0x2000000000000000;
            v57.n128_u64[1] = v53;
            sub_1A9410FE0(v30, v31, v32);
            v46 = v51;
            sub_1A957C818();
            (*(v44 + 8))(v42, v43);
            v45 = 0;
          }

          v47 = sub_1A937829C(&qword_1EB3871C0, &qword_1A958BEC0);
          (*(*(v47 - 8) + 56))(v46, v45, 1, v47);
          sub_1A937B960(v46, &qword_1EB388200, &unk_1A95961F0);
          v23 = v49;
          v33 = v53;
        }

        else
        {
          v40 = v63;
          if (v62)
          {
            if (v62 == 1)
            {
              sub_1A94F19E4(v60, v61, v62);
              v54.n128_u64[0] = v30;
              v54.n128_u64[1] = v31;
              v41 = 1;
            }

            else
            {
              sub_1A94F19E4(v60, v61, v62);
              v54.n128_u64[0] = v30;
              v54.n128_u64[1] = v31;
              v41 = 2;
            }

            v55 = v41;
          }

          else
          {
            sub_1A94F19E4(v60, v61, 0);
            v54.n128_u64[0] = v30;
            v54.n128_u64[1] = v31;
            v55 = 0;
          }

          sub_1A9474C48(&v54, v40, &v56);
          v31 = v56.n128_i64[1];
          v30 = v56.n128_u64[0];
          v32 = v57.n128_u8[0];
          v33 = v57.n128_u64[1];
        }

        v56.n128_u64[0] = v30;
        v56.n128_u64[1] = v31;
        v57.n128_u64[0] = v32 | 0x2000000000000000;
        v57.n128_u64[1] = v33;
        sub_1A93A278C(&v56);
        sub_1A9410F60(v56.n128_u64[0], v56.n128_i64[1], v57.n128_u64[0]);
      }

      v27 += 4;
      --v26;
    }

    while (v26);
  }

  return sub_1A94F1A60(v23, type metadata accessor for SpeechSlicer.Slice);
}

uint64_t sub_1A94E9B1C()
{
  v1[178] = v0;
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner);
  v3 = sub_1A957C5A8();
  v1[179] = v3;
  v1[180] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A94E9BD8, v3, v2);
}

uint64_t sub_1A94E9BD8()
{
  v1 = v0[178];
  v3 = v1[55];
  v2 = v1[56];
  sub_1A93780F4(v1 + 52, v3);
  v4 = v1[3];
  memcpy(v0 + 2, v1 + 8, 0x118uLL);
  memcpy(v0 + 37, v1 + 8, 0x118uLL);
  sub_1A9391BAC((v0 + 2), (v0 + 72), &unk_1EB387BC0, &qword_1A9587E30);
  v5 = swift_task_alloc();
  v0[181] = v5;
  *v5 = v0;
  v5[1] = sub_1A94E9CE4;

  return sub_1A93A1FF0(v4, v0 + 37, v3, v2);
}

uint64_t sub_1A94E9CE4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1448);
  v9 = *v2;
  v3[182] = a1;
  v3[183] = v1;

  if (v1)
  {
    memcpy(v3 + 107, v3 + 37, 0x118uLL);
    sub_1A937B960((v3 + 107), &unk_1EB387BC0, &qword_1A9587E30);
    v5 = v3[180];
    v6 = v3[179];
    v7 = sub_1A94EA084;
  }

  else
  {
    memcpy(v3 + 142, v3 + 37, 0x118uLL);
    sub_1A937B960((v3 + 142), &unk_1EB387BC0, &qword_1A9587E30);
    v5 = v3[180];
    v6 = v3[179];
    v7 = sub_1A94E9E54;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1A94E9E54()
{
  v0[177] = v0[182];
  v1 = swift_task_alloc();
  v0[184] = v1;
  v2 = sub_1A937829C(&qword_1EB388210, &qword_1A9596238);
  v3 = type metadata accessor for SpeechSlicer.Slice(0);
  v4 = sub_1A94EB05C();
  *v1 = v0;
  v1[1] = sub_1A94E9F48;
  v5 = v0[178];

  return sub_1A9379A84(&unk_1A9596230, v5, v2, v3, v4);
}

void sub_1A94E9F48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1472);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v7 = *(v4 + 1456);

    v8 = *(v6 + 8);

    v8(a1);
  }
}

uint64_t sub_1A94EA09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[44] = a2;
  v3[45] = a3;
  v3[43] = a1;
  v4 = type metadata accessor for SpeechSlicer.Slice(0);
  v3[46] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v6 = sub_1A957B308();
  v3[48] = v6;
  v7 = *(v6 - 8);
  v3[49] = v7;
  v8 = *(v7 + 64) + 15;
  v3[50] = swift_task_alloc();
  v9 = type metadata accessor for SpeechSlicer.Slice.SliceType(0);
  v3[51] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[52] = swift_task_alloc();
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner);
  v12 = sub_1A957C5A8();
  v3[53] = v12;
  v3[54] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1A94EA218, v12, v11);
}

uint64_t sub_1A94EA218()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[46];
  v4 = v0[43];
  sub_1A94F19F8(v0[44], v4, type metadata accessor for SpeechSlicer.Slice);
  sub_1A94F19F8(v4 + *(v3 + 24), v2, type metadata accessor for SpeechSlicer.Slice.SliceType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A94F1A60(v0[52], type metadata accessor for SpeechSlicer.Slice.SliceType);
LABEL_3:
    v5 = v0[52];
    v6 = v0[50];
    v7 = v0[47];

    v8 = v0[1];

    return v8();
  }

  v10 = v0[52];
  v12 = v0[49];
  v11 = v0[50];
  v13 = v0[48];
  v14 = v0[45];
  memcpy(v0 + 2, v10, 0x118uLL);
  v15 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
  v0[55] = v15;
  (*(v12 + 32))(v11, &v10[*(v15 + 48)], v13);
  v16 = *(v14 + 56);
  v0[37] = *sub_1A937929C();
  v0[38] = v16;
  v0[56] = sub_1A937B594();
  if (sub_1A957CD88())
  {
    v17 = v0[50];
    v18 = swift_task_alloc();
    v0[57] = v18;
    *(v18 + 16) = v17;
    v19 = swift_task_alloc();
    v0[58] = v19;
    *v19 = v0;
    v19[1] = sub_1A94EA640;
    v20 = v0[47];
    v21 = v0[43];
    v22 = sub_1A94F247C;
    v23 = v18;
  }

  else
  {
    v24 = v0[56];
    v25 = *(v0[45] + 56);
    v0[39] = *sub_1A93792B4();
    v0[40] = v25;
    if (sub_1A957CD88())
    {
      v26 = swift_task_alloc();
      v0[59] = v26;
      *v26 = v0;
      v26[1] = sub_1A94EAA40;
      v20 = v0[47];
      v27 = v0[43];
      v22 = sub_1A94EB2B0;
      v23 = 0;
    }

    else
    {
      v28 = v0[56];
      v29 = *(v0[45] + 56);
      v0[41] = *sub_1A93792A8();
      v0[42] = v29;
      if ((sub_1A957CD88() & 1) == 0)
      {
        sub_1A937B48C((v0 + 2));
        v35 = v0[52];
        v36 = *(v0[55] + 64);
        (*(v0[49] + 8))(v0[50], v0[48]);
        sub_1A937B960(v35 + v36, &qword_1EB386A18, &qword_1A9587E40);
        goto LABEL_3;
      }

      v30 = v0[50];
      v31 = v0[45];
      v32 = swift_task_alloc();
      v0[60] = v32;
      v32[2] = v31;
      v32[3] = v30;
      v32[4] = v0 + 2;
      v33 = swift_task_alloc();
      v0[61] = v33;
      *v33 = v0;
      v33[1] = sub_1A94EAD68;
      v20 = v0[47];
      v34 = v0[43];
      v22 = sub_1A94F2470;
      v23 = v32;
    }
  }

  return sub_1A93A2800(v20, &type metadata for TTSMarkup.SpeechText, v22, v23, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);
}

uint64_t sub_1A94EA640()
{
  v1 = *v0;
  v2 = *(*v0 + 464);
  v3 = *(*v0 + 456);
  v7 = *v0;

  v4 = *(v1 + 432);
  v5 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1A94EA784, v5, v4);
}

uint64_t sub_1A94EA784()
{
  v1 = v0[47];
  v2 = v0[43];
  sub_1A94F1A60(v2, type metadata accessor for SpeechSlicer.Slice);
  sub_1A94F1AC0(v1, v2, type metadata accessor for SpeechSlicer.Slice);
  v3 = v0[56];
  v4 = *(v0[45] + 56);
  v0[39] = *sub_1A93792B4();
  v0[40] = v4;
  if (sub_1A957CD88())
  {
    v5 = swift_task_alloc();
    v0[59] = v5;
    *v5 = v0;
    v5[1] = sub_1A94EAA40;
    v6 = v0[47];
    v7 = v0[43];
    v8 = sub_1A94EB2B0;
    v9 = 0;
LABEL_5:

    return sub_1A93A2800(v6, &type metadata for TTSMarkup.SpeechText, v8, v9, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);
  }

  v10 = v0[56];
  v11 = *(v0[45] + 56);
  v0[41] = *sub_1A93792A8();
  v0[42] = v11;
  if (sub_1A957CD88())
  {
    v12 = v0[50];
    v13 = v0[45];
    v14 = swift_task_alloc();
    v0[60] = v14;
    v14[2] = v13;
    v14[3] = v12;
    v14[4] = v0 + 2;
    v15 = swift_task_alloc();
    v0[61] = v15;
    *v15 = v0;
    v15[1] = sub_1A94EAD68;
    v6 = v0[47];
    v16 = v0[43];
    v8 = sub_1A94F2470;
    v9 = v14;
    goto LABEL_5;
  }

  sub_1A937B48C((v0 + 2));
  v18 = v0[52];
  v19 = *(v0[55] + 64);
  (*(v0[49] + 8))(v0[50], v0[48]);
  sub_1A937B960(v18 + v19, &qword_1EB386A18, &qword_1A9587E40);
  v20 = v0[52];
  v21 = v0[50];
  v22 = v0[47];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1A94EAA40()
{
  v1 = *v0;
  v2 = *(*v0 + 472);
  v6 = *v0;

  v3 = *(v1 + 432);
  v4 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1A94EAB60, v4, v3);
}

uint64_t sub_1A94EAB60()
{
  v1 = v0[47];
  v2 = v0[43];
  sub_1A94F1A60(v2, type metadata accessor for SpeechSlicer.Slice);
  sub_1A94F1AC0(v1, v2, type metadata accessor for SpeechSlicer.Slice);
  v3 = v0[56];
  v4 = *(v0[45] + 56);
  v0[41] = *sub_1A93792A8();
  v0[42] = v4;
  if (sub_1A957CD88())
  {
    v5 = v0[50];
    v6 = v0[45];
    v7 = swift_task_alloc();
    v0[60] = v7;
    v7[2] = v6;
    v7[3] = v5;
    v7[4] = v0 + 2;
    v8 = swift_task_alloc();
    v0[61] = v8;
    *v8 = v0;
    v8[1] = sub_1A94EAD68;
    v9 = v0[47];
    v10 = v0[43];

    return sub_1A93A2800(v9, &type metadata for TTSMarkup.SpeechText, sub_1A94F2470, v7, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);
  }

  else
  {
    sub_1A937B48C((v0 + 2));
    v12 = v0[52];
    v13 = *(v0[55] + 64);
    (*(v0[49] + 8))(v0[50], v0[48]);
    sub_1A937B960(v12 + v13, &qword_1EB386A18, &qword_1A9587E40);
    v14 = v0[52];
    v15 = v0[50];
    v16 = v0[47];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1A94EAD68()
{
  v1 = *v0;
  v2 = *(*v0 + 488);
  v3 = *(*v0 + 480);
  v7 = *v0;

  v4 = *(v1 + 432);
  v5 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1A94EAEAC, v5, v4);
}

uint64_t sub_1A94EAEAC()
{
  v1 = v0[47];
  v2 = v0[43];
  sub_1A937B48C((v0 + 2));
  sub_1A94F1A60(v2, type metadata accessor for SpeechSlicer.Slice);
  sub_1A94F1AC0(v1, v2, type metadata accessor for SpeechSlicer.Slice);
  v3 = v0[52];
  v4 = *(v0[55] + 64);
  (*(v0[49] + 8))(v0[50], v0[48]);
  sub_1A937B960(v3 + v4, &qword_1EB386A18, &qword_1A9587E40);
  v5 = v0[52];
  v6 = v0[50];
  v7 = v0[47];

  v8 = v0[1];

  return v8();
}