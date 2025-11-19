BOOL sub_1D90C2600(uint64_t a1, uint64_t a2)
{
  v59[3] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
LABEL_73:
    v20 = 1;
    goto LABEL_76;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_75;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v57 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v11 = v4;
      do
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_78;
        }

        if (v4 >= v9)
        {
          goto LABEL_73;
        }

        v12 = *(v5 + 8 * v4);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v57 = (v12 - 1) & v12;
LABEL_13:
      v13 = 16 * (v10 | (v4 << 6));
      v14 = (*(v3 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(v3 + 56) + v13);
      v19 = *v17;
      v18 = v17[1];

      sub_1D8D752C4(v19, v18);
      v20 = v16 == 0;
      if (!v16)
      {
        goto LABEL_76;
      }

      v21 = sub_1D8D33C70(v15, v16);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_74;
      }

      v24 = (*(v2 + 56) + 16 * v21);
      v26 = *v24;
      v25 = v24[1];
      v27 = v25 >> 62;
      v28 = v18 >> 62;
      if (v25 >> 62 == 3)
      {
        if (v26)
        {
          v29 = 0;
        }

        else
        {
          v29 = v25 == 0xC000000000000000;
        }

        v30 = 0;
        v31 = v29 && v18 >> 62 == 3;
        if (v31 && !v19 && v18 == 0xC000000000000000)
        {
          v32 = 0;
          v33 = 0xC000000000000000;
          goto LABEL_49;
        }

LABEL_36:
        if (v28 <= 1)
        {
LABEL_37:
          if (!v28)
          {
            v37 = BYTE6(v18);
            goto LABEL_43;
          }

          LODWORD(v37) = HIDWORD(v19) - v19;
          if (!__OFSUB__(HIDWORD(v19), v19))
          {
            v37 = v37;
            goto LABEL_43;
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
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
        }
      }

      else if (v27 > 1)
      {
        if (v27 == 2)
        {
          v39 = *(v26 + 16);
          v38 = *(v26 + 24);
          v36 = __OFSUB__(v38, v39);
          v30 = v38 - v39;
          if (!v36)
          {
            goto LABEL_36;
          }

          goto LABEL_81;
        }

        v30 = 0;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v27)
      {
        LODWORD(v30) = HIDWORD(v26) - v26;
        if (__OFSUB__(HIDWORD(v26), v26))
        {
          goto LABEL_80;
        }

        v30 = v30;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v30 = BYTE6(v25);
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      if (v28 == 2)
      {
        break;
      }

      if (v30)
      {
        goto LABEL_74;
      }

LABEL_48:
      v32 = v19;
      v33 = v18;
LABEL_49:
      sub_1D8D7567C(v32, v33);
      v3 = a1;
      v8 = v57;
    }

    v35 = *(v19 + 16);
    v34 = *(v19 + 24);
    v36 = __OFSUB__(v34, v35);
    v37 = v34 - v35;
    if (v36)
    {
      goto LABEL_79;
    }

LABEL_43:
    if (v30 != v37)
    {
      break;
    }

    if (v30 < 1)
    {
      goto LABEL_48;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        memset(v59, 0, 14);
        sub_1D8D752C4(v26, v25);
        goto LABEL_64;
      }

      v52 = *(v26 + 24);
      v54 = *(v26 + 16);
      sub_1D8D752C4(v26, v25);
      v40 = sub_1D917681C();
      if (v40)
      {
        v41 = v40;
        v42 = sub_1D917683C();
        v43 = v54;
        if (__OFSUB__(v54, v42))
        {
          goto LABEL_84;
        }

        v51 = v54 - v42 + v41;
      }

      else
      {
        v51 = 0;
        v43 = v54;
      }

      if (__OFSUB__(v52, v43))
      {
        goto LABEL_83;
      }

      sub_1D917682C();
      v48 = v51;
LABEL_70:
      sub_1D90C9C94(v48, v19, v18, v59);
      sub_1D8D7567C(v26, v25);
      sub_1D8D7567C(v19, v18);
      v47 = v59[0];
      goto LABEL_71;
    }

    if (v27)
    {
      if (v26 >> 32 < v26)
      {
        goto LABEL_82;
      }

      sub_1D8D752C4(v26, v25);
      v44 = sub_1D917681C();
      if (v44)
      {
        v53 = v44;
        v45 = sub_1D917683C();
        if (__OFSUB__(v26, v45))
        {
          goto LABEL_85;
        }

        v46 = v26 - v45 + v53;
      }

      else
      {
        v46 = 0;
      }

      sub_1D917682C();
      v48 = v46;
      goto LABEL_70;
    }

    v59[0] = v26;
    LOWORD(v59[1]) = v25;
    BYTE2(v59[1]) = BYTE2(v25);
    BYTE3(v59[1]) = BYTE3(v25);
    BYTE4(v59[1]) = BYTE4(v25);
    BYTE5(v59[1]) = BYTE5(v25);
    sub_1D8D752C4(v26, v25);
LABEL_64:
    sub_1D90C9C94(v59, v19, v18, &v58);
    sub_1D8D7567C(v26, v25);
    sub_1D8D7567C(v19, v18);
    v47 = v58;
LABEL_71:
    v2 = a2;
    v3 = a1;
    v8 = v57;
    if ((v47 & 1) == 0)
    {
      goto LABEL_76;
    }
  }

LABEL_74:
  sub_1D8D7567C(v19, v18);
LABEL_75:
  v20 = 0;
LABEL_76:
  v49 = *MEMORY[0x1E69E9840];
  return v20;
}

unint64_t sub_1D90C2AFC(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x4C52557465737361;
      break;
    case 2:
      result = 0x4C525564656566;
      break;
    case 3:
      result = 0x61725465726F7473;
      break;
    case 4:
      result = 0x5374736163646F70;
      break;
    case 5:
      result = 1684632949;
      break;
    case 6:
      result = 1684632935;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
    case 38:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0x726F68747561;
      break;
    case 10:
      result = 0x6E6F697461727564;
      break;
    case 11:
      result = 0x6461656879616C70;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
    case 30:
    case 37:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0x556B726F77747261;
      break;
    case 15:
      result = 0x637365446D657469;
      break;
    case 16:
      result = 0x7241726576726573;
      break;
    case 17:
      result = 0x7263736275537369;
      break;
    case 18:
      result = 0x44657361656C6572;
      break;
    case 19:
      result = 0x6D75626C61;
      break;
    case 20:
      result = 0xD000000000000014;
      break;
    case 21:
      result = 0x63696C7078457369;
      break;
    case 22:
      result = 0x6972747365527369;
      break;
    case 23:
      result = 0xD000000000000014;
      break;
    case 24:
      result = 0x657079546D657469;
      break;
    case 25:
      result = 0x7079546563697270;
      break;
    case 26:
      result = 0x6E694B616964656DLL;
      break;
    case 27:
      result = 0x4E65646F73697065;
      break;
    case 28:
      result = 0x754E6E6F73616573;
      break;
    case 29:
      result = 0x4974736163646F70;
      break;
    case 31:
      result = 0x496B726F77747261;
      break;
    case 32:
      result = 0xD000000000000014;
      break;
    case 33:
      result = 0xD000000000000010;
      break;
    case 34:
      result = 0x4C52556572616873;
      break;
    case 35:
      result = 0x5574736163646F70;
      break;
    case 36:
    case 44:
      result = 0xD000000000000018;
      break;
    case 39:
    case 45:
      result = 0xD000000000000012;
      break;
    case 40:
      result = 0xD000000000000013;
      break;
    case 41:
      result = 0x6F6C6C6168537369;
      break;
    case 42:
      result = 0x69536D6F72467369;
      break;
    case 43:
      result = 0x656C654464656566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D90C3008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D90CC75C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D90C303C(uint64_t a1)
{
  v2 = sub_1D90CBE8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90C3078(uint64_t a1)
{
  v2 = sub_1D90CBE8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastsMediaLibrary.MediaItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA4C0, &qword_1D91B4C50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v80 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90CBE8C();
  sub_1D9179F1C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v81) = 0;
  sub_1D917994C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v81) = 1;
    sub_1D917994C();
    v16 = v3[4];
    v17 = v3[5];
    LOBYTE(v81) = 2;
    sub_1D917994C();
    v18 = *(v3 + 56);
    v81 = v3[6];
    v82 = v18;
    v83 = 3;
    sub_1D8EF1720();
    sub_1D917999C();
    v19 = *(v3 + 72);
    v81 = v3[8];
    v82 = v19;
    v83 = 4;
    sub_1D917999C();
    v20 = v3[10];
    v21 = v3[11];
    LOBYTE(v81) = 5;
    sub_1D917994C();
    v22 = v3[12];
    v23 = v3[13];
    LOBYTE(v81) = 6;
    sub_1D917994C();
    v24 = v3[14];
    v25 = v3[15];
    LOBYTE(v81) = 7;
    sub_1D917994C();
    v26 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
    v27 = v26[12];
    LOBYTE(v81) = 8;
    sub_1D9176C2C();
    sub_1D90CBEE0(&qword_1ECAB2CB0, MEMORY[0x1E6968FB0]);
    sub_1D917999C();
    v28 = (v3 + v26[13]);
    v29 = *v28;
    v30 = v28[1];
    LOBYTE(v81) = 9;
    sub_1D917994C();
    v31 = *(v3 + v26[14]);
    LOBYTE(v81) = 10;
    sub_1D91799DC();
    v32 = (v3 + v26[15]);
    v33 = *v32;
    v34 = *(v32 + 8);
    LOBYTE(v81) = 11;
    sub_1D917996C();
    v35 = (v3 + v26[16]);
    v36 = *v35;
    LOBYTE(v35) = *(v35 + 4);
    LOBYTE(v81) = 12;
    v83 = v35;
    sub_1D917997C();
    v37 = (v3 + v26[17]);
    v38 = *v37;
    v39 = v37[1];
    LOBYTE(v81) = 13;
    sub_1D917994C();
    v40 = v26[18];
    LOBYTE(v81) = 14;
    sub_1D917999C();
    v41 = (v3 + v26[19]);
    v42 = *v41;
    v43 = v41[1];
    LOBYTE(v81) = 15;
    sub_1D917994C();
    v81 = *(v3 + v26[20]);
    v83 = 16;
    type metadata accessor for ServerArtwork();
    sub_1D90CBEE0(&qword_1ECAB26D8, type metadata accessor for ServerArtwork);
    sub_1D917999C();
    v44 = *(v3 + v26[21]);
    LOBYTE(v81) = 17;
    sub_1D91799CC();
    v80[1] = v26[22];
    LOBYTE(v81) = 18;
    sub_1D9176E3C();
    sub_1D90CBEE0(&qword_1ECAB2C80, MEMORY[0x1E6969530]);
    sub_1D917999C();
    v45 = (v3 + v26[23]);
    v46 = *v45;
    v47 = v45[1];
    LOBYTE(v81) = 19;
    sub_1D917994C();
    v48 = *(v3 + v26[24]);
    LOBYTE(v81) = 20;
    sub_1D91799CC();
    v49 = *(v3 + v26[25]);
    LOBYTE(v81) = 21;
    sub_1D91799CC();
    v50 = *(v3 + v26[26]);
    LOBYTE(v81) = 22;
    sub_1D91799CC();
    v51 = *(v3 + v26[27]);
    LOBYTE(v81) = 23;
    sub_1D91799CC();
    LOBYTE(v81) = *(v3 + v26[28]);
    v83 = 24;
    sub_1D90CBF28();
    sub_1D917999C();
    LOBYTE(v81) = *(v3 + v26[29]);
    v83 = 25;
    sub_1D9044968();
    sub_1D917999C();
    LOBYTE(v81) = *(v3 + v26[30]);
    v83 = 26;
    sub_1D90CBF7C();
    sub_1D917999C();
    v52 = *(v3 + v26[31]);
    LOBYTE(v81) = 27;
    sub_1D9179A0C();
    v53 = *(v3 + v26[32]);
    LOBYTE(v81) = 28;
    sub_1D9179A0C();
    v54 = *(v3 + v26[33]);
    LOBYTE(v81) = 29;
    sub_1D91799CC();
    v55 = (v3 + v26[34]);
    v56 = *v55;
    v57 = v55[1];
    LOBYTE(v81) = 30;
    sub_1D917994C();
    v81 = *(v3 + v26[35]);
    v83 = 31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA4E0, &qword_1D91B4C58);
    sub_1D90CC0CC(&qword_1ECABA4E8, sub_1D8FA2EC8);
    sub_1D91799FC();
    v58 = (v3 + v26[36]);
    v59 = *v58;
    v60 = v58[1];
    LOBYTE(v81) = 32;
    sub_1D917994C();
    v61 = (v3 + v26[37]);
    v62 = *v61;
    v63 = v61[1];
    LOBYTE(v81) = 33;
    sub_1D917994C();
    v64 = v26[38];
    LOBYTE(v81) = 34;
    sub_1D917999C();
    v65 = (v3 + v26[39]);
    v66 = *v65;
    v67 = v65[1];
    LOBYTE(v81) = 35;
    sub_1D917994C();
    v68 = (v3 + v26[40]);
    v69 = *v68;
    v70 = v68[1];
    LOBYTE(v81) = 36;
    sub_1D917994C();
    LOBYTE(v81) = *(v3 + v26[41]);
    v83 = 37;
    sub_1D8D0D300();
    sub_1D91799FC();
    v71 = *(v3 + v26[42]);
    LOBYTE(v81) = 38;
    sub_1D91799CC();
    v72 = *(v3 + v26[43]);
    LOBYTE(v81) = 39;
    sub_1D91799CC();
    v73 = *(v3 + v26[44]);
    LOBYTE(v81) = 40;
    sub_1D91799CC();
    v74 = *(v3 + v26[45]);
    LOBYTE(v81) = 41;
    sub_1D91799CC();
    v75 = *(v3 + v26[46]);
    LOBYTE(v81) = 42;
    sub_1D91799CC();
    v76 = *(v3 + v26[47]);
    LOBYTE(v81) = 43;
    sub_1D91799CC();
    LOBYTE(v81) = *(v3 + v26[48]);
    v83 = 44;
    sub_1D90CBFD0();
    sub_1D917999C();
    v77 = (v3 + v26[49]);
    v78 = *v77;
    v79 = v77[1];
    LOBYTE(v81) = 45;
    sub_1D917994C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PodcastsMediaLibrary.MediaItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v182 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v181 = &v176[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v176[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v176[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v176[-v14];
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA4F8, &unk_1D91B4C60);
  v183 = *(v185 - 8);
  v16 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v18 = &v176[-v17];
  v19 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v176[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = a1[3];
  v24 = a1[4];
  v186 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D90CBE8C();
  v184 = v18;
  v25 = v187;
  sub_1D9179EEC();
  if (v25)
  {
    v187 = v25;
    return __swift_destroy_boxed_opaque_existential_1Tm(v186);
  }

  *&v178[4] = v12;
  v179 = v19;
  v180 = v22;
  LOBYTE(v188) = 0;
  v26 = v184;
  v27 = v185;
  v28 = sub_1D917984C();
  v30 = v180;
  *v180 = v28;
  v30[1] = v31;
  LOBYTE(v188) = 1;
  v32 = sub_1D917984C();
  v34 = v183;
  v30[2] = v32;
  v30[3] = v33;
  LOBYTE(v188) = 2;
  v35 = sub_1D917984C();
  v187 = 0;
  v30[4] = v35;
  v30[5] = v36;
  v191 = 3;
  sub_1D8EF1774();
  v37 = v187;
  sub_1D917989C();
  if (v37)
  {
    v187 = v37;
    (*(v34 + 8))(v26, v27);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v177 = 0uLL;
    v45 = 0;
    v46 = 0;
    LODWORD(v185) = 0;
    LODWORD(v184) = 0;
    LODWORD(v183) = 0;
    LODWORD(v182) = 0;
    LODWORD(v181) = 0;
    v190 = 0;
    *v178 = 1;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v186);
    v47 = v180;
    v48 = v180[1];

    v57 = v47[3];

    if (v178[0])
    {
      v49 = v180[5];

      if (v40)
      {
        goto LABEL_30;
      }
    }

    else if (v40)
    {
LABEL_30:
      v50 = v180;
      v58 = v180[11];

      if ((v41 & 1) == 0)
      {
LABEL_31:
        v52 = v179;
        if (v42)
        {
LABEL_32:
          v59 = v50[15];

          if ((v43 & 1) == 0)
          {
LABEL_33:
            if (v44)
            {
LABEL_34:
              v60 = *(v50 + v52[13] + 8);

              if ((BYTE4(v177) & 1) == 0)
              {
LABEL_35:
                if (v177)
                {
LABEL_36:
                  result = sub_1D8D08A50(v50 + v52[18], &unk_1ECAB5910, &qword_1D9188C90);
                  if ((v45 & 1) == 0)
                  {
LABEL_37:
                    if (v46)
                    {
LABEL_38:
                      v61 = *(v50 + v52[20]);

                      if ((BYTE12(v177) & 1) == 0)
                      {
LABEL_39:
                        if (DWORD2(v177))
                        {
LABEL_40:
                          v62 = *(v50 + v52[23] + 8);

                          if ((v185 & 1) == 0)
                          {
LABEL_41:
                            if (v184)
                            {
LABEL_42:
                              v63 = *(v50 + v52[35]);

                              if ((v183 & 1) == 0)
                              {
LABEL_43:
                                if (v182)
                                {
LABEL_44:
                                  v64 = *(v50 + v52[37] + 8);

                                  if ((v181 & 1) == 0)
                                  {
LABEL_45:
                                    if (*&v178[4])
                                    {
LABEL_46:
                                      v65 = *(v50 + v52[39] + 8);

                                      if (v190)
                                      {
LABEL_47:
                                        v66 = *(v50 + v52[40] + 8);
                                      }

                                      return result;
                                    }

LABEL_26:
                                    if (v190)
                                    {
                                      goto LABEL_47;
                                    }

                                    return result;
                                  }

LABEL_25:
                                  result = sub_1D8D08A50(v50 + v52[38], &unk_1ECAB5910, &qword_1D9188C90);
                                  if (v178[4])
                                  {
                                    goto LABEL_46;
                                  }

                                  goto LABEL_26;
                                }

LABEL_24:
                                if (!v181)
                                {
                                  goto LABEL_45;
                                }

                                goto LABEL_25;
                              }

LABEL_23:
                              v56 = *(v50 + v52[36] + 8);

                              if (v182)
                              {
                                goto LABEL_44;
                              }

                              goto LABEL_24;
                            }

LABEL_22:
                            if (!v183)
                            {
                              goto LABEL_43;
                            }

                            goto LABEL_23;
                          }

LABEL_21:
                          v55 = *(v50 + v52[34] + 8);

                          if (v184)
                          {
                            goto LABEL_42;
                          }

                          goto LABEL_22;
                        }

LABEL_20:
                        if (!v185)
                        {
                          goto LABEL_41;
                        }

                        goto LABEL_21;
                      }

LABEL_19:
                      result = sub_1D8D08A50(v50 + v52[22], &qword_1ECAB75C0, &unk_1D9188A50);
                      if (BYTE8(v177))
                      {
                        goto LABEL_40;
                      }

                      goto LABEL_20;
                    }

LABEL_18:
                    if (!HIDWORD(v177))
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_19;
                  }

LABEL_17:
                  v54 = *(v50 + v52[19] + 8);

                  if (v46)
                  {
                    goto LABEL_38;
                  }

                  goto LABEL_18;
                }

LABEL_16:
                if (!v45)
                {
                  goto LABEL_37;
                }

                goto LABEL_17;
              }

LABEL_15:
              v53 = *(v50 + v52[17] + 8);

              if (v177)
              {
                goto LABEL_36;
              }

              goto LABEL_16;
            }

LABEL_14:
            if (!DWORD1(v177))
            {
              goto LABEL_35;
            }

            goto LABEL_15;
          }

LABEL_13:
          result = sub_1D8D08A50(v50 + v52[12], &unk_1ECAB5910, &qword_1D9188C90);
          if (v44)
          {
            goto LABEL_34;
          }

          goto LABEL_14;
        }

LABEL_12:
        if (!v43)
        {
          goto LABEL_33;
        }

        goto LABEL_13;
      }

LABEL_11:
      v51 = v50[13];

      v52 = v179;
      if (v42)
      {
        goto LABEL_32;
      }

      goto LABEL_12;
    }

    v50 = v180;
    if (!v41)
    {
      goto LABEL_31;
    }

    goto LABEL_11;
  }

  v38 = v189;
  v30[6] = v188;
  *(v30 + 56) = v38;
  v191 = 4;
  sub_1D917989C();
  v39 = v189;
  v30[8] = v188;
  *(v30 + 72) = v39;
  LOBYTE(v188) = 5;
  v30[10] = sub_1D917984C();
  v30[11] = v67;
  LOBYTE(v188) = 6;
  v30[12] = sub_1D917984C();
  v30[13] = v68;
  LOBYTE(v188) = 7;
  v69 = sub_1D917984C();
  v187 = 0;
  v30[14] = v69;
  v30[15] = v70;
  sub_1D9176C2C();
  LOBYTE(v188) = 8;
  sub_1D90CBEE0(&qword_1ECAB2C98, MEMORY[0x1E6968FB0]);
  v71 = v187;
  sub_1D917989C();
  v187 = v71;
  if (v71)
  {
    (*(v34 + 8))(v26, v27);
    v43 = 0;
    v44 = 0;
    v177 = 0uLL;
    v45 = 0;
    v46 = 0;
    LODWORD(v185) = 0;
    LODWORD(v184) = 0;
    LODWORD(v183) = 0;
    LODWORD(v182) = 0;
    LODWORD(v181) = 0;
    v190 = 0;
    *v178 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    goto LABEL_8;
  }

  sub_1D8D6734C(v15, v180 + v179[12], &unk_1ECAB5910, &qword_1D9188C90);
  LOBYTE(v188) = 9;
  v72 = v187;
  v73 = sub_1D917984C();
  v187 = v72;
  if (v72)
  {
    (*(v183 + 8))(v184, v185);
    v44 = 0;
    v177 = 0uLL;
    v45 = 0;
    v46 = 0;
    LODWORD(v185) = 0;
    LODWORD(v184) = 0;
    LODWORD(v183) = 0;
    LODWORD(v182) = 0;
    LODWORD(v181) = 0;
    v190 = 0;
    *v178 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    goto LABEL_8;
  }

  v75 = (v180 + v179[13]);
  *v75 = v73;
  v75[1] = v74;
  LOBYTE(v188) = 10;
  v76 = v187;
  sub_1D91798DC();
  v187 = v76;
  if (v76)
  {
    goto LABEL_56;
  }

  *(v180 + v179[14]) = v77;
  LOBYTE(v188) = 11;
  v78 = v187;
  v79 = sub_1D917986C();
  v187 = v78;
  if (v78)
  {
    goto LABEL_56;
  }

  v81 = v180 + v179[15];
  *v81 = v79;
  v81[8] = v80 & 1;
  LOBYTE(v188) = 12;
  v82 = v187;
  v83 = sub_1D917987C();
  v187 = v82;
  if (v82 || (v84 = v180 + v179[16], *v84 = v83, v84[4] = BYTE4(v83) & 1, LOBYTE(v188) = 13, v85 = v187, v86 = sub_1D917984C(), (v187 = v85) != 0))
  {
LABEL_56:
    (*(v183 + 8))(v184, v185);
    v177 = 0uLL;
    v45 = 0;
    v46 = 0;
    LODWORD(v185) = 0;
    LODWORD(v184) = 0;
    LODWORD(v183) = 0;
    LODWORD(v182) = 0;
    LODWORD(v181) = 0;
    v190 = 0;
    *v178 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    goto LABEL_8;
  }

  v88 = (v180 + v179[17]);
  *v88 = v86;
  v88[1] = v87;
  LOBYTE(v188) = 14;
  v89 = v187;
  sub_1D917989C();
  v187 = v89;
  if (v89)
  {
    (*(v183 + 8))(v184, v185);
    v45 = 0;
    v46 = 0;
    LODWORD(v185) = 0;
    LODWORD(v184) = 0;
    LODWORD(v183) = 0;
    LODWORD(v182) = 0;
    LODWORD(v181) = 0;
    v190 = 0;
    *v178 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v177 = 0x100000000uLL;
    goto LABEL_8;
  }

  sub_1D8D6734C(*&v178[4], v180 + v179[18], &unk_1ECAB5910, &qword_1D9188C90);
  LOBYTE(v188) = 15;
  v90 = v187;
  v91 = sub_1D917984C();
  v187 = v90;
  if (v90)
  {
    (*(v183 + 8))(v184, v185);
    v45 = 0;
    v46 = 0;
    LODWORD(v185) = 0;
    LODWORD(v184) = 0;
    LODWORD(v183) = 0;
    LODWORD(v182) = 0;
    LODWORD(v181) = 0;
    v190 = 0;
    *v178 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v177 = 0x100000001uLL;
    goto LABEL_8;
  }

  v93 = (v180 + v179[19]);
  *v93 = v91;
  v93[1] = v92;
  type metadata accessor for ServerArtwork();
  v191 = 16;
  sub_1D90CBEE0(&qword_1EDCD54A0, type metadata accessor for ServerArtwork);
  v94 = v187;
  sub_1D917989C();
  v187 = v94;
  if (v94)
  {
    (*(v183 + 8))(v184, v185);
    v46 = 0;
    LODWORD(v185) = 0;
    LODWORD(v184) = 0;
    LODWORD(v183) = 0;
    LODWORD(v182) = 0;
    LODWORD(v181) = 0;
    v190 = 0;
    *v178 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v177 = 0x100000001uLL;
    v45 = 1;
    goto LABEL_8;
  }

  *(v180 + v179[20]) = v188;
  LOBYTE(v188) = 17;
  v95 = sub_1D91798CC();
  v187 = 0;
  *(v180 + v179[21]) = v95 & 1;
  sub_1D9176E3C();
  LOBYTE(v188) = 18;
  sub_1D90CBEE0(&unk_1EDCD7610, MEMORY[0x1E6969530]);
  v96 = v187;
  sub_1D917989C();
  v187 = v96;
  if (v96)
  {
    (*(v183 + 8))(v184, v185);
    LODWORD(v185) = 0;
    LODWORD(v184) = 0;
    LODWORD(v183) = 0;
    LODWORD(v182) = 0;
    LODWORD(v181) = 0;
    v190 = 0;
    *v178 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v177 = 0x100000001uLL;
    v45 = 1;
    v46 = 1;
    goto LABEL_8;
  }

  sub_1D8D6734C(v181, v180 + v179[22], &qword_1ECAB75C0, &unk_1D9188A50);
  LOBYTE(v188) = 19;
  v97 = v187;
  v98 = sub_1D917984C();
  v187 = v97;
  if (v97)
  {
    (*(v183 + 8))(v184, v185);
    LODWORD(v185) = 0;
    LODWORD(v184) = 0;
    LODWORD(v183) = 0;
    LODWORD(v182) = 0;
    LODWORD(v181) = 0;
    v190 = 0;
    *v178 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    *(&v177 + 4) = 1;
    LODWORD(v177) = 1;
    v45 = 1;
    v46 = 1;
    HIDWORD(v177) = 1;
    goto LABEL_8;
  }

  v100 = (v180 + v179[23]);
  *v100 = v98;
  v100[1] = v99;
  LOBYTE(v188) = 20;
  v101 = v187;
  v102 = sub_1D91798CC();
  v187 = v101;
  if (v101)
  {
    goto LABEL_78;
  }

  *(v180 + v179[24]) = v102 & 1;
  LOBYTE(v188) = 21;
  v103 = v187;
  v104 = sub_1D91798CC();
  v187 = v103;
  if (v103)
  {
    goto LABEL_78;
  }

  *(v180 + v179[25]) = v104 & 1;
  LOBYTE(v188) = 22;
  v105 = v187;
  v106 = sub_1D91798CC();
  v187 = v105;
  if (v105)
  {
    goto LABEL_78;
  }

  *(v180 + v179[26]) = v106 & 1;
  LOBYTE(v188) = 23;
  v107 = v187;
  v108 = sub_1D91798CC();
  v187 = v107;
  if (v107)
  {
    goto LABEL_78;
  }

  *(v180 + v179[27]) = v108 & 1;
  v191 = 24;
  sub_1D90CC024();
  v109 = v187;
  sub_1D917989C();
  v187 = v109;
  if (v109)
  {
    goto LABEL_78;
  }

  *(v180 + v179[28]) = v188;
  v191 = 25;
  sub_1D9044C88();
  v110 = v187;
  sub_1D917989C();
  v187 = v110;
  if (v110)
  {
    goto LABEL_78;
  }

  *(v180 + v179[29]) = v188;
  v191 = 26;
  sub_1D90CC078();
  v111 = v187;
  sub_1D917989C();
  v187 = v111;
  if (v111)
  {
    goto LABEL_78;
  }

  *(v180 + v179[30]) = v188;
  LOBYTE(v188) = 27;
  v112 = v187;
  v113 = sub_1D917990C();
  v187 = v112;
  if (v112)
  {
    goto LABEL_78;
  }

  *(v180 + v179[31]) = v113;
  LOBYTE(v188) = 28;
  v114 = v187;
  v115 = sub_1D917990C();
  v187 = v114;
  if (v114)
  {
    goto LABEL_78;
  }

  *(v180 + v179[32]) = v115;
  LOBYTE(v188) = 29;
  v116 = v187;
  v117 = sub_1D91798CC();
  v187 = v116;
  if (v116 || (*(v180 + v179[33]) = v117 & 1, LOBYTE(v188) = 30, v118 = v187, v119 = sub_1D917984C(), (v187 = v118) != 0))
  {
LABEL_78:
    (*(v183 + 8))(v184, v185);
    LODWORD(v185) = 0;
    LODWORD(v184) = 0;
    LODWORD(v183) = 0;
    LODWORD(v182) = 0;
    LODWORD(v181) = 0;
    v190 = 0;
    *v178 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    *&v177 = 0x100000001;
    v45 = 1;
    v46 = 1;
    *(&v177 + 1) = 0x100000001;
    goto LABEL_8;
  }

  v121 = (v180 + v179[34]);
  *v121 = v119;
  v121[1] = v120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA4E0, &qword_1D91B4C58);
  v191 = 31;
  sub_1D90CC0CC(&qword_1ECABA510, sub_1D8FA35A8);
  v122 = v187;
  sub_1D91798FC();
  v187 = v122;
  if (v122)
  {
    (*(v183 + 8))(v184, v185);
    LODWORD(v184) = 0;
    LODWORD(v183) = 0;
    LODWORD(v182) = 0;
    LODWORD(v181) = 0;
    v190 = 0;
    *v178 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    *&v177 = 0x100000001;
    v45 = 1;
    v46 = 1;
    *(&v177 + 1) = 0x100000001;
    LODWORD(v185) = 1;
    goto LABEL_8;
  }

  *(v180 + v179[35]) = v188;
  LOBYTE(v188) = 32;
  v123 = sub_1D917984C();
  v187 = 0;
  v124 = (v180 + v179[36]);
  *v124 = v123;
  v124[1] = v125;
  LOBYTE(v188) = 33;
  v126 = v187;
  v127 = sub_1D917984C();
  v187 = v126;
  if (v126)
  {
    (*(v183 + 8))(v184, v185);
    LODWORD(v182) = 0;
    LODWORD(v181) = 0;
    v190 = 0;
    *v178 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    *&v177 = 0x100000001;
    v45 = 1;
    v46 = 1;
    *(&v177 + 1) = 0x100000001;
    LODWORD(v185) = 1;
    LODWORD(v184) = 1;
    LODWORD(v183) = 1;
    goto LABEL_8;
  }

  v129 = (v180 + v179[37]);
  *v129 = v127;
  v129[1] = v128;
  LOBYTE(v188) = 34;
  v130 = v187;
  sub_1D917989C();
  v187 = v130;
  if (v130)
  {
    (*(v183 + 8))(v184, v185);
    LODWORD(v181) = 0;
    v190 = 0;
    *v178 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    *&v177 = 0x100000001;
    v45 = 1;
    v46 = 1;
    *(&v177 + 1) = 0x100000001;
    LODWORD(v185) = 1;
    LODWORD(v184) = 1;
    LODWORD(v183) = 1;
    LODWORD(v182) = 1;
    goto LABEL_8;
  }

  sub_1D8D6734C(v9, v180 + v179[38], &unk_1ECAB5910, &qword_1D9188C90);
  LOBYTE(v188) = 35;
  v131 = v187;
  v132 = sub_1D917984C();
  v187 = v131;
  if (v131)
  {
    (*(v183 + 8))(v184, v185);
    v190 = 0;
    *v178 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    *&v177 = 0x100000001;
    v45 = 1;
    v46 = 1;
    *(&v177 + 1) = 0x100000001;
    LODWORD(v185) = 1;
    LODWORD(v184) = 1;
    LODWORD(v183) = 1;
    LODWORD(v182) = 1;
    LODWORD(v181) = 1;
    goto LABEL_8;
  }

  v134 = (v180 + v179[39]);
  *v134 = v132;
  v134[1] = v133;
  LOBYTE(v188) = 36;
  v135 = v187;
  v136 = sub_1D917984C();
  v187 = v135;
  if (v135)
  {
    (*(v183 + 8))(v184, v185);
    v190 = 0;
    *v178 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    *&v177 = 0x100000001;
    v45 = 1;
    v46 = 1;
    *(&v177 + 1) = 0x100000001;
    LODWORD(v185) = 1;
    LODWORD(v184) = 1;
    LODWORD(v183) = 1;
    LODWORD(v182) = 1;
    LODWORD(v181) = 1;
    *&v178[4] = 1;
    goto LABEL_8;
  }

  v138 = (v180 + v179[40]);
  *v138 = v136;
  v138[1] = v137;
  v191 = 37;
  sub_1D8F95644();
  v139 = v187;
  sub_1D91798FC();
  v187 = v139;
  if (v139)
  {
    goto LABEL_94;
  }

  *(v180 + v179[41]) = v188;
  LOBYTE(v188) = 38;
  v140 = v187;
  v141 = sub_1D91798CC();
  v187 = v140;
  if (v140)
  {
    goto LABEL_94;
  }

  *(v180 + v179[42]) = v141 & 1;
  LOBYTE(v188) = 39;
  v142 = v187;
  v143 = sub_1D91798CC();
  v187 = v142;
  if (v142)
  {
    goto LABEL_94;
  }

  *(v180 + v179[43]) = v143 & 1;
  LOBYTE(v188) = 40;
  v144 = v187;
  v145 = sub_1D91798CC();
  v187 = v144;
  if (v144 || (*(v180 + v179[44]) = v145 & 1, LOBYTE(v188) = 41, v146 = v187, v147 = sub_1D91798CC(), (v187 = v146) != 0))
  {
LABEL_94:
    (*(v183 + 8))(v184, v185);
    *v178 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    *&v177 = 0x100000001;
    v45 = 1;
    v46 = 1;
    *(&v177 + 1) = 0x100000001;
    LODWORD(v185) = 1;
    LODWORD(v184) = 1;
    LODWORD(v183) = 1;
    LODWORD(v182) = 1;
    LODWORD(v181) = 1;
    *&v178[4] = 1;
    v190 = 1;
    goto LABEL_8;
  }

  *(v180 + v179[45]) = v147 & 1;
  LOBYTE(v188) = 42;
  v148 = v187;
  v149 = sub_1D91798CC();
  v187 = v148;
  if (v148)
  {
    goto LABEL_99;
  }

  *(v180 + v179[46]) = v149 & 1;
  LOBYTE(v188) = 43;
  v150 = v187;
  v151 = sub_1D91798CC();
  v187 = v150;
  if (v150)
  {
    goto LABEL_99;
  }

  *(v180 + v179[47]) = v151 & 1;
  v191 = 44;
  sub_1D90CC150();
  v152 = v187;
  sub_1D917989C();
  v187 = v152;
  if (v152 || (*(v180 + v179[48]) = v188, LOBYTE(v188) = 45, v153 = v187, v154 = sub_1D917984C(), (v187 = v153) != 0))
  {
LABEL_99:
    (*(v183 + 8))(v184, v185);
    __swift_destroy_boxed_opaque_existential_1Tm(v186);
    v50 = v180;
    v156 = v180[1];

    v157 = v50[3];

    v158 = v50[5];

    v159 = v50[11];

    v160 = v50[13];

    v161 = v50[15];

    v52 = v179;
    sub_1D8D08A50(v50 + v179[12], &unk_1ECAB5910, &qword_1D9188C90);
    v162 = *(v50 + v52[13] + 8);

    v163 = *(v50 + v52[17] + 8);

    sub_1D8D08A50(v50 + v52[18], &unk_1ECAB5910, &qword_1D9188C90);
    v164 = *(v50 + v52[19] + 8);

    v165 = *(v50 + v52[20]);

    sub_1D8D08A50(v50 + v52[22], &qword_1ECAB75C0, &unk_1D9188A50);
    v166 = *(v50 + v52[23] + 8);

    v167 = *(v50 + v52[34] + 8);

    v168 = *(v50 + v52[35]);

    v169 = *(v50 + v52[36] + 8);

    v170 = *(v50 + v52[37] + 8);

    sub_1D8D08A50(v50 + v52[38], &unk_1ECAB5910, &qword_1D9188C90);
    v171 = *(v50 + v52[39] + 8);

    goto LABEL_47;
  }

  v172 = v154;
  v173 = v155;
  (*(v183 + 8))(v184, v185);
  v174 = v180;
  v175 = (v180 + v179[49]);
  *v175 = v172;
  v175[1] = v173;
  sub_1D90CC258(v174, v182, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  __swift_destroy_boxed_opaque_existential_1Tm(v186);
  return sub_1D90CC1A4(v174, type metadata accessor for PodcastsMediaLibrary.MediaItem);
}

void sub_1D90C554C(void *a1@<X0>, char *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v161 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v156 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v156 - v13;
  v15 = [a1 title];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1D917820C();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  *a4 = v17;
  *(a4 + 8) = v19;
  v20 = (a1 + OBJC_IVAR___MTServerPodcastEpisode_id);
  v21 = *(a1 + OBJC_IVAR___MTServerPodcastEpisode_id);
  v22 = *(a1 + OBJC_IVAR___MTServerPodcastEpisode_id + 8);

  v23 = sub_1D8FE6808(v21, v22);

  *(a4 + 48) = v23;
  *(a4 + 56) = 0;
  v24 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v25 = *(a1 + v24);
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = *(v25 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_playbackPosition);
  if (!v26)
  {
    goto LABEL_13;
  }

  v27 = *(v26 + 16);
  if (v27 >> 62)
  {
    if (sub_1D917935C())
    {
      goto LABEL_8;
    }

LABEL_13:
    v33 = *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 60);
    *(a4 + v33) = 0;
    v32 = 1;
    goto LABEL_14;
  }

  if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v27 & 0xC000000000000001) != 0)
  {
    goto LABEL_69;
  }

  if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_135;
  }

  v28 = *(v27 + 32);

  while (1)
  {
    v29 = *(v28 + 64);

    v30 = *(v29 + 16);

    v31 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
    v32 = 0;
    v33 = *(v31 + 60);
    *(a4 + v33) = v30 / 1000.0;
LABEL_14:
    *(a4 + v33 + 8) = v32;
    v34 = *(a1 + v24);
    if (!v34 || (v35 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast, swift_beginAccess(), (v36 = *(v34 + v35)) == 0))
    {
LABEL_22:
      v4 = v161;
      v37 = v161;
      goto LABEL_23;
    }

    v22 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
    swift_beginAccess();
    v27 = *(v36 + v22);
    if (v27 >> 62)
    {
      if (!sub_1D917935C())
      {
        goto LABEL_22;
      }
    }

    else if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    if ((v27 & 0xC000000000000001) != 0)
    {
      v85 = v161;

      v4 = MEMORY[0x1DA72AA90](0, v27);
    }

    else
    {
      if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_136;
      }

      v4 = *(v27 + 32);
    }

LABEL_23:
    *(a4 + 80) = 0;
    *(a4 + 88) = 0;
    v24 = OBJC_IVAR___MTServerPodcastEpisode_attributes;
    v38 = *(a1 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
    v39 = *(v38 + 328);
    *(a4 + 96) = *(v38 + 320);
    *(a4 + 104) = v39;
    v27 = *v20;
    v40 = v20[1];

    v41 = sub_1D8FE6808(v27, v40);
    v162 = v24;
    v160 = a3;
    if ((v41 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_69:

    v28 = MEMORY[0x1DA72AA90](0, v27);
  }

  v42 = [objc_opt_self() validatedIdNumberFromStoreId_];
  if (v42)
  {
    v43 = v42;
    v44 = v20;
    v45 = [v42 stringValue];
    v46 = sub_1D917820C();
    v48 = v47;

    v24 = v162;
    v20 = v44;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  *(a4 + 112) = v46;
  *(a4 + 120) = v48;
  if (v4)
  {
    v49 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id];
    v50 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id + 8];

    v51 = sub_1D8FE6808(v49, v50);

    *(a4 + 64) = v51;
    *(a4 + 72) = 0;
    v52 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
    v158 = 0;
    if (v52)
    {
      v53 = *(v52 + 96);
      v24 = v162;
      if (v53)
      {
        v54 = *(v52 + 88);
        v55 = *(v52 + 96);

        goto LABEL_35;
      }
    }

    else
    {
      v24 = v162;
    }
  }

  else
  {
    v158 = 0;
    *(a4 + 64) = 0;
    *(a4 + 72) = 1;
  }

  v54 = 0;
  v53 = 0xE000000000000000;
LABEL_35:
  a3 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v56 = (a4 + a3[13]);
  *v56 = v54;
  v56[1] = v53;
  v57 = *(*(a1 + v24) + 112);
  if (v57)
  {
    v59 = *(v57 + 16);
    v58 = *(v57 + 24);
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  v61 = (a4 + a3[19]);
  *v61 = v59;
  v61[1] = v60;
  if (!v4 || (v62 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes]) == 0 || !*(v62 + 112))
  {
    v64 = sub_1D9176C2C();
    (*(*(v64 - 8) + 56))(v14, 1, 1, v64);
    sub_1D8D6734C(v14, a4 + a3[18], &unk_1ECAB5910, &qword_1D9188C90);
    if (v4)
    {
      goto LABEL_43;
    }

LABEL_46:
    v68 = 0;
    v69 = 0;
    goto LABEL_47;
  }

  v63 = *(v62 + 112);

  ServerArtwork.urlResolved.getter(v14);

  sub_1D8D6734C(v14, a4 + a3[18], &unk_1ECAB5910, &qword_1D9188C90);
LABEL_43:
  v65 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (!v65)
  {
    goto LABEL_46;
  }

  v66 = *(v65 + 112);
  if (!v66)
  {
    goto LABEL_46;
  }

  v68 = *(v66 + 48);
  v67 = *(v66 + 56);

LABEL_47:
  v70 = (a4 + a3[34]);
  *v70 = v68;
  v70[1] = v69;
  *(a4 + a3[20]) = *(*(a1 + v24) + 136);
  if (v4 && (v71 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes]) != 0)
  {
    v72 = (*(v71 + 48) == 2) | *(v71 + 48);
  }

  else
  {
    v72 = 1;
  }

  *(a4 + a3[21]) = v72 & 1;
  v73 = a3[22];

  PodcastEpisodeAttributes.releaseDateResolved.getter(a4 + v73);

  if (v4)
  {
    v74 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
    if (v74)
    {
      v75 = *(v74 + 144);
      if (v75)
      {
        v76 = *(v74 + 136);

        v75 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      }

      else
      {
      }

      v77 = [objc_opt_self() showTypeFromString_];

      LOBYTE(v74) = v77 == 2;
    }
  }

  else
  {
    LOBYTE(v74) = 0;
  }

  *(a4 + a3[33]) = v74;
  *(a4 + a3[31]) = [a1 episodeNumber];
  *(a4 + a3[32]) = [a1 seasonNumber];
  v78 = sub_1D911E490([a1 episodeNumber], objc_msgSend(a1, sel_seasonNumber), v74, a4 + v73);
  v79 = (a4 + a3[23]);
  *v79 = v78;
  v79[1] = v80;
  if (!v4)
  {
    v84 = 0;
    v83 = 0;
    v22 = v162;
    goto LABEL_73;
  }

  v81 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships];
  v22 = v162;
  if (!v81)
  {
    goto LABEL_72;
  }

  v82 = *(v81 + 16);
  if (!v82)
  {
    goto LABEL_72;
  }

  v27 = *(v82 + 16);
  if (!(v27 >> 62))
  {
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_63;
    }

LABEL_72:
    v84 = 0;
    v83 = 0;
    goto LABEL_73;
  }

  if (!sub_1D917935C())
  {
    goto LABEL_72;
  }

LABEL_63:
  if ((v27 & 0xC000000000000001) != 0)
  {
    goto LABEL_137;
  }

  if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_139:
    __break(1u);
    return;
  }

  v83 = *(v27 + 32);
  while (1)
  {
    v84 = *(*&v83[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 74);
LABEL_73:
    *(a4 + a3[24]) = v84 & 1;
    v27 = *(*(a1 + v22) + 72);
    if (!v27)
    {
      break;
    }

    v22 = v27 & 0xFFFFFFFFFFFFFF8;
    if (v27 >> 62)
    {
      if (!sub_1D917935C())
      {
        break;
      }
    }

    else if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    if ((v27 & 0xC000000000000001) != 0)
    {

      v86 = MEMORY[0x1DA72AA90](0, v27);

LABEL_79:
      v87 = *(v86 + 16);
      v88 = *(v86 + 24);

      v89 = sub_1D917980C();

      if (v89 <= 3)
      {
        v90 = sub_1D8FDDEC0(v89, 2) & (v84 ^ 1);
        goto LABEL_83;
      }

      break;
    }

    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v86 = *(v27 + 32);

      goto LABEL_79;
    }

    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:

    v83 = MEMORY[0x1DA72AA90](0, v27);
  }

  v90 = 0;
LABEL_83:
  *(a4 + a3[27]) = v90 & 1;
  v157 = v20;
  if (v83)
  {
    v91 = *(*&v83[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 74);
  }

  else
  {
    v91 = 0;
  }

  v159 = v83;
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v91, &v165);
  v93 = v92;
  v95 = v94;
  v96 = v165;
  [a1 duration];
  *(a4 + a3[14]) = v97;
  v98 = type metadata accessor for PodcastsPlaybackSettingsHelper();
  if (qword_1ECAB1988 != -1)
  {
    swift_once();
  }

  v99 = qword_1ECAB1990;
  v100 = sub_1D90AB800(0, v99, v98);

  v101 = a4 + a3[16];
  *v101 = v100;
  *(v101 + 4) = 0;
  *(a4 + a3[17]) = xmmword_1D91B4C30;
  *(a4 + 16) = v93;
  *(a4 + 24) = v95;
  if (v4 && (v102 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes]) != 0 && (v103 = *(v102 + 80)) != 0)
  {
    v104 = *(v102 + 72);
    v105 = *(v102 + 80);

    v106 = v162;
  }

  else
  {
    v106 = v162;
    v107 = *&v162[a1];
    v104 = *(v107 + 56);
    v103 = *(v107 + 64);
  }

  *(a4 + 32) = v104;
  *(a4 + 40) = v103;
  *(a4 + a3[29]) = v96;
  *(a4 + a3[28]) = 0;
  v108 = *&v106[a1];
  v109 = *(v108 + 280);
  if (v109)
  {
    v110 = *(v108 + 272);
    v111 = *(v108 + 280);

    v112._countAndFlagsBits = v110;
    v112._object = v109;
    PodcastEpisodeAttributes.MediaKind.init(rawValue:)(v112);
    v113 = v165;
    if (v165 == 5)
    {
      v113 = 0;
    }
  }

  else
  {
    v113 = 0;
  }

  *(a4 + a3[30]) = v113;
  *(a4 + a3[25]) = [a1 isExplicit];
  *(a4 + a3[26]) = [a1 isRestricted];
  v114 = (a4 + a3[39]);
  *v114 = 0;
  v114[1] = 0;
  *(a4 + a3[41]) = 1;
  *(a4 + a3[42]) = 0;
  v115 = a3[12];
  v116 = sub_1D9176C2C();
  v162 = *(*(v116 - 8) + 56);
  (v162)(a4 + v115, 1, 1, v116);
  *(a4 + a3[35]) = sub_1D90C6440(v4);
  v117 = *&v106[a1];
  swift_beginAccess();
  v118 = *(v117 + 264);
  if (v118)
  {
    v119 = *(v117 + 256);
    if (v119 == 1937204590 && v118 == 0xE400000000000000)
    {
      *(a4 + a3[43]) = 1;
      goto LABEL_102;
    }

    *(a4 + a3[43]) = sub_1D9179ACC() & 1;
    if (v119 == 0x636973756DLL && v118 == 0xE500000000000000)
    {
      v120 = 1;
    }

    else
    {
LABEL_102:
      v120 = sub_1D9179ACC();
    }
  }

  else
  {
    v120 = 0;
    *(a4 + a3[43]) = 0;
  }

  v121 = a3[44];
  *(&v121->priceType + a4) = v120 & 1;
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v121, &v163);

  ServerPodcastEpisode.determineBestTranscriptMetadata(for:)(v122, &v164);
  v124 = v123;
  v126 = v125;

  v127 = v164;
  v128 = (a4 + a3[36]);
  *v128 = v124;
  v128[1] = v126;
  v129 = 0x656C707061;
  if (v127)
  {
    v129 = 0x72656469766F7270;
  }

  v130 = 0xE500000000000000;
  if (v127)
  {
    v130 = 0xE800000000000000;
  }

  v131 = v127 == 2;
  if (v127 == 2)
  {
    v132 = 0;
  }

  else
  {
    v132 = v129;
  }

  if (v131)
  {
    v133 = 0;
  }

  else
  {
    v133 = v130;
  }

  v134 = (a4 + a3[37]);
  *v134 = v132;
  v134[1] = v133;
  v135 = (a4 + a3[40]);
  *v135 = 0;
  v135[1] = 0;
  *(a4 + a3[45]) = 0;
  *(a4 + a3[46]) = v160 & 1;
  if (!v4)
  {
LABEL_121:
    (v162)(a4 + a3[38], 1, 1, v116);
    v143 = v159;
    goto LABEL_122;
  }

  v136 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id];
  v137 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id + 8];

  v138 = v158;
  v139 = sub_1D8FE6808(v136, v137);
  if (v138)
  {

    goto LABEL_121;
  }

  v140 = v139;

  v141 = *v157;
  v142 = v157[1];

  v150 = sub_1D8FE6808(v141, v142);

  v151 = objc_opt_self();
  if (((v150 | v140) & 0x8000000000000000) != 0)
  {
    goto LABEL_139;
  }

  v152 = [v151 productURLForStoreCollectionId:v140 storeTrackId:v150];
  v143 = v159;
  if (v152)
  {
    v153 = v156;
    v154 = v152;
    sub_1D9176B9C();

    v155 = 0;
  }

  else
  {
    v155 = 1;
    v153 = v156;
  }

  (v162)(v153, v155, 1, v116);
  sub_1D8D6734C(v153, a4 + a3[38], &unk_1ECAB5910, &qword_1D9188C90);
LABEL_122:
  *(a4 + a3[47]) = 0;
  *(a4 + a3[48]) = 3;
  v144 = v161;
  if (qword_1ECAB1FF8 != -1)
  {
    swift_once();
  }

  v145 = PageContextTracker.value.getter();
  v147 = v146;

  if (v147)
  {
    v148 = v145;
  }

  else
  {
    v148 = 0;
  }

  v149 = (a4 + a3[49]);
  *v149 = v148;
  v149[1] = v147;
}

uint64_t sub_1D90C6440(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA588, &qword_1D91B5298);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 16) = xmmword_1D9189060;
  *(inited + 40) = 0x80000001D91D5A20;
  if (!a1)
  {
    *(inited + 48) = xmmword_1D9190380;
    v12 = (inited + 80);
    *(inited + 64) = 0xD000000000000019;
    *(inited + 72) = 0x80000001D91D5C40;
    goto LABEL_14;
  }

  v4 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = *(v4 + 112);
  if (!v5)
  {
LABEL_8:
    v14 = 0xF000000000000000;
    goto LABEL_9;
  }

  v6 = *(v4 + 112);

  v8 = sub_1D91567F0(v7);

  if (!v8)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v9 = sub_1D91765CC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1D91765BC();
  type metadata accessor for PlayerArtwork();
  sub_1D90CBEE0(&qword_1EDCD54C0, type metadata accessor for PlayerArtwork);
  v5 = sub_1D91765AC();
  v14 = v13;

LABEL_9:
  v3[6] = v5;
  v3[7] = v14;
  v3[8] = 0xD000000000000019;
  v3[9] = 0x80000001D91D5C40;
  v12 = v3 + 10;
  v15 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (v15)
  {
    v16 = *(v15 + 152);
    if (v16)
    {
      if (*(v16 + 16))
      {
        v17 = *(v16 + 16);

        v19 = sub_1D91567F0(v18);

        if (v19)
        {
          v20 = sub_1D91765CC();
          v21 = *(v20 + 48);
          v22 = *(v20 + 52);
          swift_allocObject();
          sub_1D91765BC();
          type metadata accessor for PlayerArtwork();
          sub_1D90CBEE0(&qword_1EDCD54C0, type metadata accessor for PlayerArtwork);
          v34 = sub_1D91765AC();
          v36 = v35;

          *v12 = v34;
          goto LABEL_15;
        }
      }
    }
  }

LABEL_14:
  *v12 = 0;
  v36 = 0xF000000000000000;
LABEL_15:
  v3[11] = v36;
  v3[12] = 0xD00000000000001CLL;
  v3[13] = 0x80000001D91D5A00;
  v23 = sub_1D90C6F60();
  if (v23)
  {
    v24 = v23;
    v25 = sub_1D91765CC();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_1D91765BC();
    type metadata accessor for PlayerArtwork();
    sub_1D90CBEE0(&qword_1EDCD54C0, type metadata accessor for PlayerArtwork);
    v28 = sub_1D91765AC();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0xF000000000000000;
  }

  v3[14] = v28;
  v3[15] = v30;
  v31 = sub_1D8E26A9C(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA590, &qword_1D91B52A0);
  swift_arrayDestroy();
  v32 = sub_1D90BF758(v31);

  return v32;
}

uint64_t sub_1D90C6854()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA588, &qword_1D91B5298);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000019;
  *(inited + 16) = xmmword_1D9189060;
  *(inited + 40) = 0x80000001D91D5A20;
  v3 = [v0 podcast];
  if (v3)
  {
    v4 = MTPodcast.artwork.getter();

    if (v4)
    {
      v5 = sub_1D91765CC();
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      sub_1D91765BC();
      v28 = v4;
      type metadata accessor for PlayerArtwork();
      sub_1D90CBEE0(&qword_1EDCD54C0, type metadata accessor for PlayerArtwork);
      v3 = sub_1D91765AC();
      v25 = v24;

      goto LABEL_6;
    }

    v3 = 0;
  }

  v25 = 0xF000000000000000;
LABEL_6:
  *(inited + 48) = v3;
  *(inited + 56) = v25;
  *(inited + 64) = 0xD000000000000019;
  *(inited + 72) = 0x80000001D91D5C40;
  v8 = [v1 podcast];
  if (v8)
  {
    v9 = MTPodcast.uberArtwork.getter();

    if (v9)
    {
      v10 = sub_1D91765CC();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      sub_1D91765BC();
      type metadata accessor for PlayerArtwork();
      sub_1D90CBEE0(&qword_1EDCD54C0, type metadata accessor for PlayerArtwork);
      v8 = sub_1D91765AC();
      v27 = v26;

      goto LABEL_11;
    }

    v8 = 0;
  }

  v27 = 0xF000000000000000;
LABEL_11:
  *(inited + 80) = v8;
  *(inited + 88) = v27;
  *(inited + 96) = 0xD00000000000001CLL;
  *(inited + 104) = 0x80000001D91D5A00;
  v13 = MTEpisode.artwork.getter();
  if (v13)
  {
    v14 = v13;
    v15 = sub_1D91765CC();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    sub_1D91765BC();
    type metadata accessor for PlayerArtwork();
    sub_1D90CBEE0(&qword_1EDCD54C0, type metadata accessor for PlayerArtwork);
    v18 = sub_1D91765AC();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xF000000000000000;
  }

  *(inited + 112) = v18;
  *(inited + 120) = v20;
  v21 = sub_1D8E26A9C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA590, &qword_1D91B52A0);
  swift_arrayDestroy();
  v22 = sub_1D90BF758(v21);

  return v22;
}

uint64_t sub_1D90C6C0C()
{
  v1 = v0;
  v2 = [v1 uuid];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = sub_1D917820C();
  v6 = v5;

  v7 = MTPodcast.identifier.getter();
  if (v9 == -1)
  {

LABEL_8:

    return 4;
  }

  v10 = v7;
  v11 = v8;
  v12 = v9;
  v13 = [v1 hidden];
  v14 = [v1 subscribed];
  v15 = [v1 isImplicitlyFollowed];

  v32[0] = v10;
  v32[1] = v11;
  v33 = v12;
  v34 = v4;
  v35 = v6;
  v36 = v13;
  v37 = v14;
  v38 = v15;
  if (v14)
  {
    if ((v15 & 1) == 0 && (v13 & 1) == 0)
    {
      sub_1D90CDA08(v32);
      return 0;
    }

    goto LABEL_12;
  }

  if (v15)
  {
    if (v13)
    {
LABEL_12:
      sub_1D90CDA5C();
      v17 = swift_allocError();
      *v18 = v14;
      v18[1] = v15;
      v18[2] = v13;
      swift_willThrow();
      sub_1D90CDA08(v32);
      if (qword_1ECAB0D48 != -1)
      {
        swift_once();
      }

      v19 = sub_1D917744C();
      __swift_project_value_buffer(v19, qword_1ECAB0D50);
      v20 = v1;
      v21 = v17;
      v22 = sub_1D917741C();
      v23 = sub_1D9178CFC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v31 = v26;
        *v24 = 141558531;
        *(v24 + 4) = 1752392040;
        *(v24 + 12) = 2113;
        *(v24 + 14) = v20;
        *v25 = v20;
        *(v24 + 22) = 2082;
        swift_getErrorValue();
        v27 = v20;
        v28 = sub_1D9179D2C();
        v30 = sub_1D8CFA924(v28, v29, &v31);

        *(v24 + 24) = v30;
        _os_log_impl(&dword_1D8CEC000, v22, v23, "Unable to retrieve subscription state for %{private,mask.hash}@ with error %{public}s.", v24, 0x20u);
        sub_1D8D08A50(v25, &unk_1ECAB6C70, &unk_1D9188C30);
        MEMORY[0x1DA72CB90](v25, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x1DA72CB90](v26, -1, -1);
        MEMORY[0x1DA72CB90](v24, -1, -1);
      }

      else
      {
      }

      return 4;
    }

    sub_1D90CDA08(v32);
    return 2;
  }

  else
  {
    sub_1D90CDA08(v32);
    if (v13)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }
}

id sub_1D90C6F60()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = v1[16];
  if (v2)
  {
    v3 = v1[15] == 0x65646F73697065 && v2 == 0xE700000000000000;
    if (!v3 && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  if (!v1[17])
  {
    return 0;
  }

  v5 = sub_1D91567F0(v4);

  return v5;
}

uint64_t URLTrackIdentifier.init(mediaItem:playbackContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(a1 + 56) & 1) != 0 || ((v6 = *(a1 + 48)) != 0 ? (v7 = v6 == 1000000000000) : (v7 = 1), v7))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA520, &unk_1D91B5B60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D918A530;
    *(inited + 32) = 5;
    v9 = *(a1 + 40);
    *(inited + 40) = *(a1 + 32);
    *(inited + 48) = v9;
    *(inited + 56) = 8;
    v10 = *(a1 + 104);
    *(inited + 64) = *(a1 + 96);
    *(inited + 72) = v10;

    v22 = sub_1D8E27754(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA528, &qword_1D91B4C70);
    swift_arrayDestroy();
    v11 = *(a2 + 80);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA520, &unk_1D91B5B60);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_1D9189080;
    *(v20 + 32) = 3;
    sub_1D8E40D20();
    *(v20 + 40) = sub_1D917927C();
    *(v20 + 48) = v21;
    v22 = sub_1D8E27754(v20);
    swift_setDeallocating();
    sub_1D8D08A50(v20 + 32, &qword_1ECABA528, &qword_1D91B4C70);
    v11 = *(a2 + 80);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  v12 = v11;
  v13 = [v12 ams_DSID];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 stringValue];

    v16 = sub_1D917820C();
    v18 = v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F5101C(v16, v18, 16, isUniquelyReferenced_nonNull_native);
  }

LABEL_13:
  sub_1D90CC1A4(a2, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
  result = sub_1D90CC1A4(a1, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  *a3 = v22;
  *(a3 + 8) = 4;
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.storeTrackId.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.podcastStoreId.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.uuid.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.podcastUUID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.title.getter()
{
  v1 = (v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.author.getter()
{
  v1 = (v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1D90C743C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 52));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.contentItemID.getter()
{
  v1 = (v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0) + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.assetURL.getter()
{
  v1 = (v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0) + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1D90C7540(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 68));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

unint64_t sub_1D90C758C(char a1)
{
  result = 0x61725465726F7473;
  switch(a1)
  {
    case 1:
      result = 0x5374736163646F70;
      break;
    case 2:
      result = 1684632949;
      break;
    case 3:
      result = 0x5574736163646F70;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0x6E6F697461727564;
      break;
    case 6:
      result = 0x656C746974;
      break;
    case 7:
      result = 0x726F68747561;
      break;
    case 8:
      result = 0x556B726F77747261;
      break;
    case 9:
      result = 0x6D75626C61;
      break;
    case 10:
      result = 0x63696C7078457369;
      break;
    case 11:
      result = 0x49746E65746E6F63;
      break;
    case 12:
      result = 0x4C52557465737361;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D90C7730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D90CD584(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D90C7764(uint64_t a1)
{
  v2 = sub_1D90CC204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90C77A0(uint64_t a1)
{
  v2 = sub_1D90CC204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA530, &qword_1D91B4C78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90CC204();
  sub_1D9179F1C();
  v11 = *(v3 + 8);
  v41 = *v3;
  v42 = v11;
  v43 = 0;
  sub_1D8EF1720();
  sub_1D917999C();
  if (!v2)
  {
    v12 = *(v3 + 24);
    v41 = v3[2];
    v42 = v12;
    v43 = 1;
    sub_1D917999C();
    v13 = v3[4];
    v14 = v3[5];
    LOBYTE(v41) = 2;
    sub_1D917994C();
    v15 = v3[6];
    v16 = v3[7];
    LOBYTE(v41) = 3;
    sub_1D917994C();
    v17 = type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
    v18 = v17[8];
    LOBYTE(v41) = 4;
    sub_1D9176C2C();
    sub_1D90CBEE0(&qword_1ECAB2CB0, MEMORY[0x1E6968FB0]);
    sub_1D917999C();
    v19 = *(v3 + v17[9]);
    LOBYTE(v41) = 5;
    sub_1D91799DC();
    v20 = (v3 + v17[10]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v41) = 6;
    sub_1D917994C();
    v23 = (v3 + v17[11]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v41) = 7;
    sub_1D917994C();
    v26 = v17[12];
    LOBYTE(v41) = 8;
    sub_1D917999C();
    v27 = (v3 + v17[13]);
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v41) = 9;
    sub_1D917994C();
    v30 = *(v3 + v17[14]);
    LOBYTE(v41) = 10;
    sub_1D91799CC();
    v31 = (v3 + v17[15]);
    v32 = *v31;
    v33 = v31[1];
    LOBYTE(v41) = 11;
    sub_1D91799BC();
    v34 = (v3 + v17[16]);
    v35 = *v34;
    v36 = v34[1];
    LOBYTE(v41) = 12;
    sub_1D917994C();
    v37 = (v3 + v17[17]);
    v38 = *v37;
    v39 = v37[1];
    LOBYTE(v41) = 13;
    sub_1D917994C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.hash(into:)()
{
  v1 = v0;
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  if (*(v0 + 8) == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    v12 = *v0;
    sub_1D9179DDC();
    MEMORY[0x1DA72B3C0](v12);
  }

  if (*(v0 + 24) == 1)
  {
    sub_1D9179DDC();
    if (v0[5])
    {
      goto LABEL_6;
    }

LABEL_9:
    sub_1D9179DDC();
    if (v0[7])
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v15 = v0[2];
  sub_1D9179DDC();
  MEMORY[0x1DA72B3C0](v15);
  if (!v0[5])
  {
    goto LABEL_9;
  }

LABEL_6:
  v13 = v0[4];
  sub_1D9179DDC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  if (v0[7])
  {
LABEL_7:
    v14 = v0[6];
    sub_1D9179DDC();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    goto LABEL_11;
  }

LABEL_10:
  sub_1D9179DDC();
LABEL_11:
  v16 = type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
  sub_1D8D088B4(v0 + v16[8], v11, &unk_1ECAB5910, &qword_1D9188C90);
  v17 = v3;
  v18 = *(v3 + 48);
  v19 = v18(v11, 1, v2);
  v41 = v17;
  if (v19 == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    v20 = v43;
    (*(v17 + 32))(v43, v11, v2);
    sub_1D9179DDC();
    sub_1D90CBEE0(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0]);
    sub_1D917814C();
    (*(v17 + 8))(v20, v2);
  }

  v21 = *(v0 + v16[9]);
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  MEMORY[0x1DA72B3C0](*&v21);
  v22 = (v0 + v16[10]);
  if (v22[1])
  {
    v23 = *v22;
    sub_1D9179DDC();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1D9179DDC();
  }

  v24 = (v0 + v16[11]);
  if (v24[1])
  {
    v25 = *v24;
    sub_1D9179DDC();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1D9179DDC();
  }

  v26 = v42;
  sub_1D8D088B4(v1 + v16[12], v42, &unk_1ECAB5910, &qword_1D9188C90);
  if (v18(v26, 1, v2) == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    v27 = v41;
    v28 = v43;
    (*(v41 + 32))(v43, v26, v2);
    sub_1D9179DDC();
    sub_1D90CBEE0(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0]);
    sub_1D917814C();
    (*(v27 + 8))(v28, v2);
  }

  v29 = (v1 + v16[13]);
  if (v29[1])
  {
    v30 = *v29;
    sub_1D9179DDC();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1D9179DDC();
  }

  v31 = *(v1 + v16[14]);
  sub_1D9179DDC();
  v32 = (v1 + v16[15]);
  v33 = *v32;
  v34 = v32[1];
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v35 = (v1 + v16[16]);
  if (v35[1])
  {
    v36 = *v35;
    sub_1D9179DDC();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1D9179DDC();
  }

  v37 = (v1 + v16[17]);
  if (!v37[1])
  {
    return sub_1D9179DDC();
  }

  v38 = *v37;
  sub_1D9179DDC();
  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.hashValue.getter()
{
  sub_1D9179DBC();
  PodcastsMediaLibrary.MediaItemSnapshot.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v49 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA538, &unk_1D91B4C80);
  v52 = *(v54 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v13 = v49 - v12;
  v14 = type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v18 = a1[4];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D90CC204();
  v53 = v13;
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v55);
  }

  v50 = v17;
  v58 = 0;
  sub_1D8EF1774();
  sub_1D917989C();
  v20 = v57;
  v21 = v50;
  *v50 = v56;
  *(v21 + 8) = v20;
  v58 = 1;
  sub_1D917989C();
  v22 = v57;
  v21[2] = v56;
  *(v21 + 24) = v22;
  LOBYTE(v56) = 2;
  v21[4] = sub_1D917984C();
  v21[5] = v23;
  LOBYTE(v56) = 3;
  v21[6] = sub_1D917984C();
  v21[7] = v24;
  v25 = sub_1D9176C2C();
  LOBYTE(v56) = 4;
  v49[2] = sub_1D90CBEE0(&qword_1ECAB2C98, MEMORY[0x1E6968FB0]);
  v49[3] = 0;
  sub_1D917989C();
  v49[1] = v25;
  sub_1D8D6734C(v10, v21 + v14[8], &unk_1ECAB5910, &qword_1D9188C90);
  LOBYTE(v56) = 5;
  sub_1D91798DC();
  *(v21 + v14[9]) = v26;
  LOBYTE(v56) = 6;
  v27 = sub_1D917984C();
  v28 = (v21 + v14[10]);
  *v28 = v27;
  v28[1] = v29;
  LOBYTE(v56) = 7;
  v30 = sub_1D917984C();
  v31 = (v21 + v14[11]);
  *v31 = v30;
  v31[1] = v32;
  LOBYTE(v56) = 8;
  sub_1D917989C();
  sub_1D8D6734C(v7, v50 + v14[12], &unk_1ECAB5910, &qword_1D9188C90);
  LOBYTE(v56) = 9;
  v33 = sub_1D917984C();
  v34 = (v50 + v14[13]);
  *v34 = v33;
  v34[1] = v35;
  LOBYTE(v56) = 10;
  *(v50 + v14[14]) = sub_1D91798CC() & 1;
  LOBYTE(v56) = 11;
  v36 = sub_1D91798BC();
  v37 = (v50 + v14[15]);
  *v37 = v36;
  v37[1] = v38;
  LOBYTE(v56) = 12;
  v39 = sub_1D917984C();
  v40 = (v50 + v14[16]);
  *v40 = v39;
  v40[1] = v41;
  LOBYTE(v56) = 13;
  v42 = sub_1D917984C();
  v44 = v43;
  (*(v52 + 8))(v53, v54);
  v46 = v50;
  v45 = v51;
  v47 = (v50 + v14[17]);
  *v47 = v42;
  v47[1] = v44;
  sub_1D90CC258(v46, v45, type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot);
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  return sub_1D90CC1A4(v46, type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot);
}

uint64_t sub_1D90C8AC8()
{
  sub_1D9179DBC();
  PodcastsMediaLibrary.MediaItemSnapshot.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D90C8B0C()
{
  sub_1D9179DBC();
  PodcastsMediaLibrary.MediaItemSnapshot.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D90C8B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
  v5 = (a1 + v4[10]);
  v6 = v5[1];
  v7 = (a1 + v4[16]);
  v39 = v7[1];
  v52 = *a1;
  v51 = *(a1 + 8);
  v50 = *(a1 + 16);
  v49 = *(a1 + 24);
  v8 = *(a1 + 40);
  v48 = *(a1 + 32);
  v9 = v4[12];
  v10 = (a1 + v4[11]);
  v11 = *(a1 + v4[9]);
  v46 = *v10;
  v38 = v10[1];
  v43 = *v7;
  v40 = *v5;
  v12 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  sub_1D8D088B4(a1 + v9, a2 + v12[18], &unk_1ECAB5910, &qword_1D9188C90);
  v13 = v12[22];
  v14 = sub_1D9176E3C();
  (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  v15 = (a1 + v4[13]);
  v45 = *(a1 + v4[14]);
  v16 = v15[1];
  v42 = *v15;
  v17 = (a1 + v4[17]);
  v18 = v17[1];
  v53 = *v17;
  v19 = v12[38];
  v20 = sub_1D9176C2C();
  v55 = *(*(v20 - 8) + 56);
  v55(a2 + v19, 1, 1, v20);
  v44 = *(a1 + 48);
  v41 = *(a1 + 56);
  v21 = (a1 + v4[15]);
  v54 = *v21;
  v47 = v21[1];

  v37 = sub_1D8E2784C(MEMORY[0x1E69E7CC0]);
  sub_1D90CC1A4(a1, type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot);
  *&v22 = v40;
  *(&v22 + 1) = v6;
  *&v23 = v43;
  *(&v23 + 1) = v39;
  *a2 = v22;
  *(a2 + 16) = v23;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v52;
  *(a2 + 56) = v51;
  *(a2 + 64) = v50;
  *(a2 + 72) = v49;
  *(a2 + 80) = v48;
  *(a2 + 88) = v8;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  v24 = (a2 + v12[13]);
  *v24 = v46;
  v24[1] = v38;
  *(a2 + v12[14]) = v11;
  v25 = a2 + v12[15];
  *v25 = 0;
  *(v25 + 8) = 0;
  v26 = a2 + v12[16];
  *v26 = 0;
  *(v26 + 4) = 1;
  v27 = (a2 + v12[17]);
  *v27 = 0;
  v27[1] = 0;
  v28 = (a2 + v12[19]);
  *v28 = 0;
  v28[1] = 0;
  *(a2 + v12[20]) = 0;
  *(a2 + v12[21]) = 1;
  v29 = (a2 + v12[23]);
  *v29 = v42;
  v29[1] = v16;
  *(a2 + v12[24]) = 0;
  *(a2 + v12[25]) = v45;
  *(a2 + v12[26]) = 0;
  *(a2 + v12[27]) = 0;
  *(a2 + v12[28]) = 2;
  *(a2 + v12[29]) = 4;
  *(a2 + v12[30]) = 5;
  *(a2 + v12[31]) = 0;
  *(a2 + v12[32]) = 0;
  *(a2 + v12[33]) = 0;
  v30 = (a2 + v12[34]);
  *v30 = v53;
  v30[1] = v18;
  v31 = (a2 + v12[39]);
  *v31 = v44;
  v31[1] = v41;
  *(a2 + v12[41]) = 1;
  *(a2 + v12[35]) = v37;
  *(a2 + v12[42]) = 0;
  v32 = (a2 + v12[36]);
  *v32 = 0;
  v32[1] = 0;
  *(a2 + v12[43]) = 0;
  *(a2 + v12[44]) = 0;
  v33 = (a2 + v12[37]);
  *v33 = 0;
  v33[1] = 0;
  result = (v55)(a2 + v12[12], 1, 1, v20);
  v35 = (a2 + v12[40]);
  *v35 = v54;
  v35[1] = v47;
  *(a2 + v12[45]) = 1;
  *(a2 + v12[46]) = 0;
  *(a2 + v12[47]) = 0;
  *(a2 + v12[48]) = 4;
  v36 = (a2 + v12[49]);
  *v36 = 0;
  v36[1] = 0;
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.init(mediaItem:contentItemID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 56);
  *a4 = *(a1 + 48);
  *(a4 + 8) = v6;
  v7 = *(a1 + 72);
  *(a4 + 16) = *(a1 + 64);
  *(a4 + 24) = v7;
  v8 = *(a1 + 88);
  *(a4 + 32) = *(a1 + 80);
  *(a4 + 40) = v8;
  v9 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v10 = v9[12];
  v11 = type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
  sub_1D8D088B4(a1 + v10, a4 + v11[8], &unk_1ECAB5910, &qword_1D9188C90);
  v12 = *(a1 + 8);
  v13 = (a4 + v11[10]);
  *v13 = *a1;
  v13[1] = v12;
  v14 = (a1 + v9[13]);
  v15 = *v14;
  v16 = v14[1];
  v17 = (a4 + v11[11]);
  *v17 = v15;
  v17[1] = v16;
  v18 = (a1 + v9[23]);
  v19 = *v18;
  v20 = v18[1];
  v21 = (a4 + v11[13]);
  *v21 = v19;
  v21[1] = v20;
  sub_1D8D088B4(a1 + v9[18], a4 + v11[12], &unk_1ECAB5910, &qword_1D9188C90);
  v22 = (a4 + v11[15]);
  *v22 = a2;
  v22[1] = a3;
  *(a4 + v11[14]) = *(a1 + v9[25]);
  v23 = *(a1 + 24);
  v24 = (a4 + v11[16]);
  *v24 = *(a1 + 16);
  v24[1] = v23;
  *(a4 + v11[9]) = *(a1 + v9[14]);
  v25 = (a1 + v9[34]);
  v26 = *v25;
  v27 = v25[1];
  v28 = (a4 + v11[17]);
  *v28 = v26;
  v28[1] = v27;
  v29 = (a1 + v9[39]);
  v31 = *v29;
  v30 = v29[1];

  result = sub_1D90CC1A4(a1, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  *(a4 + 48) = v31;
  *(a4 + 56) = v30;
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.init(dictionary:)()
{
  v13[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = sub_1D917802C();

  v13[0] = 0;
  v2 = [v0 dataWithJSONObject:v1 options:0 error:v13];

  v3 = v13[0];
  if (v2)
  {
    v4 = sub_1D9176C8C();
    v6 = v5;

    v7 = sub_1D917656C();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_1D917655C();
    type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
    sub_1D90CBEE0(&qword_1ECAB2C18, type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot);
    sub_1D917654C();
    sub_1D8D7567C(v4, v6);
  }

  else
  {
    v11 = v3;
    sub_1D9176A6C();

    result = swift_willThrow();
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.asDictionary()()
{
  v16[4] = *MEMORY[0x1E69E9840];
  v1 = sub_1D91765CC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1D91765BC();
  type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
  sub_1D90CBEE0(&qword_1ECAB2C20, type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot);
  v4 = sub_1D91765AC();
  v6 = v5;

  if (!v0)
  {
    v8 = objc_opt_self();
    v9 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
    v16[0] = 0;
    v10 = [v8 JSONObjectWithData:v9 options:4 error:v16];

    if (v10)
    {
      v11 = v16[0];
      sub_1D917928C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
      if (swift_dynamicCast())
      {
        sub_1D8D7567C(v4, v6);
        result = v15;
        goto LABEL_8;
      }

      sub_1D90CC2C0();
      swift_allocError();
      *v13 = 6;
    }

    else
    {
      v12 = v16[0];
      sub_1D9176A6C();
    }

    swift_willThrow();
    result = sub_1D8D7567C(v4, v6);
  }

LABEL_8:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItem.episodeArtworkTemplate.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 140));
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1D8D33C70(0xD00000000000001CLL, 0x80000001D91D5A00);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = (*(v1 + 56) + 16 * v2);
  v5 = *v4;
  v6 = v4[1];
  v7 = sub_1D917656C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1D8D752C4(v5, v6);
  sub_1D917655C();
  type metadata accessor for PlayerArtwork();
  sub_1D90CBEE0(&qword_1ECABA548, type metadata accessor for PlayerArtwork);
  sub_1D917654C();
  sub_1D8D7567C(v5, v6);

  v11 = *&v13[OBJC_IVAR___IMPlayerArtwork_template];
  v10 = *&v13[OBJC_IVAR___IMPlayerArtwork_template + 8];

  return v11;
}

uint64_t PodcastsMediaLibrary.MediaItem.showArtworkTemplate.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 140));
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1D8D33C70(0xD000000000000019, 0x80000001D91D5A20);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = (*(v1 + 56) + 16 * v2);
  v5 = *v4;
  v6 = v4[1];
  v7 = sub_1D917656C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1D8D752C4(v5, v6);
  sub_1D917655C();
  type metadata accessor for PlayerArtwork();
  sub_1D90CBEE0(&qword_1ECABA548, type metadata accessor for PlayerArtwork);
  sub_1D917654C();
  sub_1D8D7567C(v5, v6);

  v11 = *&v13[OBJC_IVAR___IMPlayerArtwork_template];
  v10 = *&v13[OBJC_IVAR___IMPlayerArtwork_template + 8];

  return v11;
}

uint64_t PodcastsMediaLibrary.MediaItem.preferredArtworkTemplate.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v3 = *(v0 + *(v2 + 140));
  if (*(v3 + 16) && ((v4 = sub_1D8D33C70(0xD00000000000001CLL, 0x80000001D91D5A00), (v5 & 1) != 0) || *(v3 + 16) && (v4 = sub_1D8D33C70(0xD000000000000019, 0x80000001D91D5A20), (v6 & 1) != 0)))
  {
    v7 = (*(v3 + 56) + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    v10 = sub_1D917656C();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_1D8D752C4(v9, v8);
    sub_1D917655C();
    type metadata accessor for PlayerArtwork();
    sub_1D90CBEE0(&qword_1ECABA548, type metadata accessor for PlayerArtwork);
    sub_1D917654C();
    sub_1D8D75668(v9, v8);

    v15 = *&v18[OBJC_IVAR___IMPlayerArtwork_template];
    v16 = *&v18[OBJC_IVAR___IMPlayerArtwork_template + 8];
  }

  else
  {
    v13 = (v1 + *(v2 + 136));
    v15 = *v13;
    v14 = v13[1];
  }

  return v15;
}

uint64_t PodcastsMediaLibrary.MediaItem.preferredArtworkResponseDictionary.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v18[-v3];
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  if (*(v0 + *(v10 + 80)))
  {
    v11 = *(v0 + *(v10 + 80));
    return sub_1D90C1564();
  }

  PodcastsMediaLibrary.MediaItem.preferredArtworkTemplate.getter();
  if (!v13)
  {
    return 0;
  }

  sub_1D9176BFC();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D8D08A50(v4, &unk_1ECAB5910, &qword_1D9188C90);
    return 0;
  }

  (*(v6 + 32))(v9, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189060;
  *(inited + 32) = 0x6874646977;
  *(inited + 40) = 0xE500000000000000;
  v15 = MEMORY[0x1E69E7DE0];
  *(inited + 48) = 0x4082C00000000000;
  *(inited + 72) = v15;
  *(inited + 80) = 0x746867696568;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0x4082C00000000000;
  *(inited + 120) = v15;
  *(inited + 128) = 7107189;
  *(inited + 136) = 0xE300000000000000;
  *(inited + 168) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 144));
  (*(v6 + 16))(boxed_opaque_existential_0, v9, v5);
  v17 = sub_1D8E2696C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E8, &qword_1D9193650);
  swift_arrayDestroy();
  (*(v6 + 8))(v9, v5);
  return v17;
}

uint64_t sub_1D90C9C94@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
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
    v10 = sub_1D917681C();
    if (v10)
    {
      v11 = sub_1D917683C();
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
      result = sub_1D917682C();
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
      v19 = *MEMORY[0x1E69E9840];
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
  v10 = sub_1D917681C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1D917683C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1D917682C();
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

BOOL _s18PodcastsFoundation0A12MediaLibraryC0C4ItemV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v251 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v265 = &v251 - v11;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75B8, &qword_1D9197C80);
  v12 = *(*(v264 - 8) + 64);
  MEMORY[0x1EEE9AC00](v264);
  v266 = &v251 - v13;
  v14 = sub_1D9176C2C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v251 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v251 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v267 = &v251 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v268 = &v251 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6178, &unk_1D9193430);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v251 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v251 - v34;
  v37 = *(a1 + 8);
  v38 = *(a2 + 8);
  if (v37)
  {
    if (!v38)
    {
      return 0;
    }

    if (*a1 != *a2 || v37 != v38)
    {
      v262 = v8;
      v263 = v5;
      v261 = v4;
      v39 = v30;
      v40 = v22;
      v41 = v18;
      v42 = v15;
      v43 = v14;
      v44 = a1;
      v45 = a2;
      v46 = v33;
      v47 = v35;
      v48 = &v251 - v34;
      v49 = sub_1D9179ACC();
      v36 = v48;
      v35 = v47;
      v50 = v49;
      v33 = v46;
      a2 = v45;
      a1 = v44;
      v14 = v43;
      v15 = v42;
      v18 = v41;
      v22 = v40;
      v30 = v39;
      v4 = v261;
      v8 = v262;
      v5 = v263;
      if ((v50 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v38)
  {
    return 0;
  }

  v51 = *(a1 + 24);
  v52 = *(a2 + 24);
  if (v51)
  {
    if (!v52)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v51 != v52)
    {
      v262 = v8;
      v263 = v5;
      v261 = v4;
      v53 = v30;
      v54 = v22;
      v55 = v18;
      v56 = v15;
      v57 = v14;
      v58 = a1;
      v59 = a2;
      v60 = v33;
      v61 = v35;
      v62 = v36;
      v63 = sub_1D9179ACC();
      v36 = v62;
      v35 = v61;
      v64 = v63;
      v33 = v60;
      a2 = v59;
      a1 = v58;
      v14 = v57;
      v15 = v56;
      v18 = v55;
      v22 = v54;
      v30 = v53;
      v4 = v261;
      v8 = v262;
      v5 = v263;
      if ((v64 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v52)
  {
    return 0;
  }

  v65 = *(a1 + 40);
  v66 = *(a2 + 40);
  if (v65)
  {
    if (!v66)
    {
      return 0;
    }

    if (*(a1 + 32) != *(a2 + 32) || v65 != v66)
    {
      v262 = v8;
      v263 = v5;
      v261 = v4;
      v67 = v30;
      v68 = v22;
      v69 = v18;
      v70 = v15;
      v71 = v14;
      v72 = a1;
      v73 = a2;
      v74 = v33;
      v75 = v35;
      v76 = v36;
      v77 = sub_1D9179ACC();
      v36 = v76;
      v35 = v75;
      v78 = v77;
      v33 = v74;
      a2 = v73;
      a1 = v72;
      v14 = v71;
      v15 = v70;
      v18 = v69;
      v22 = v68;
      v30 = v67;
      v4 = v261;
      v8 = v262;
      v5 = v263;
      if ((v78 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v66)
  {
    return 0;
  }

  v79 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v79 = 1;
    }

    if (v79)
    {
      return 0;
    }
  }

  v80 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v80 = 1;
    }

    if (v80)
    {
      return 0;
    }
  }

  v81 = *(a1 + 88);
  v82 = *(a2 + 88);
  if (v81)
  {
    if (!v82)
    {
      return 0;
    }

    if (*(a1 + 80) != *(a2 + 80) || v81 != v82)
    {
      v262 = v8;
      v263 = v5;
      v261 = v4;
      v83 = v30;
      v84 = v22;
      v85 = v18;
      v86 = v15;
      v87 = v14;
      v88 = a1;
      v89 = a2;
      v90 = v33;
      v91 = v35;
      v92 = v36;
      v93 = sub_1D9179ACC();
      v36 = v92;
      v35 = v91;
      v94 = v93;
      v33 = v90;
      a2 = v89;
      a1 = v88;
      v14 = v87;
      v15 = v86;
      v18 = v85;
      v22 = v84;
      v30 = v83;
      v4 = v261;
      v8 = v262;
      v5 = v263;
      if ((v94 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v82)
  {
    return 0;
  }

  v95 = *(a1 + 104);
  v96 = *(a2 + 104);
  if (v95)
  {
    if (!v96)
    {
      return 0;
    }

    if (*(a1 + 96) != *(a2 + 96) || v95 != v96)
    {
      v262 = v8;
      v263 = v5;
      v261 = v4;
      v97 = v30;
      v98 = v22;
      v99 = v18;
      v100 = v15;
      v101 = v14;
      v102 = a1;
      v103 = a2;
      v104 = v33;
      v105 = v35;
      v106 = v36;
      v107 = sub_1D9179ACC();
      v36 = v106;
      v35 = v105;
      v108 = v107;
      v33 = v104;
      a2 = v103;
      a1 = v102;
      v14 = v101;
      v15 = v100;
      v18 = v99;
      v22 = v98;
      v30 = v97;
      v4 = v261;
      v8 = v262;
      v5 = v263;
      if ((v108 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v96)
  {
    return 0;
  }

  v109 = *(a1 + 120);
  v110 = *(a2 + 120);
  v260 = v36;
  if (v109)
  {
    if (!v110)
    {
      return 0;
    }

    v257 = v35;
    v261 = v33;
    if ((*(a1 + 112) != *(a2 + 112) || v109 != v110) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v257 = v35;
    v261 = v33;
    if (v110)
    {
      return 0;
    }
  }

  v256 = v18;
  v111 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v259 = a2;
  v255 = v111;
  v263 = *(v111 + 48);
  v112 = v260;
  v113 = *(v261 + 48);
  sub_1D8D088B4(a1 + v263, v260, &unk_1ECAB5910, &qword_1D9188C90);
  v114 = v259 + v263;
  v263 = v113;
  sub_1D8D088B4(v114, v112 + v113, &unk_1ECAB5910, &qword_1D9188C90);
  v258 = *(v15 + 48);
  if (v258(v112, 1, v14) == 1)
  {
    if (v258(v260 + v263, 1, v14) == 1)
    {
      v254 = v15 + 48;
      sub_1D8D08A50(v260, &unk_1ECAB5910, &qword_1D9188C90);
      v115 = v259;
      goto LABEL_64;
    }

LABEL_60:
    v119 = &qword_1ECAB6178;
    v120 = &unk_1D9193430;
    v121 = v260;
LABEL_61:
    sub_1D8D08A50(v121, v119, v120);
    return 0;
  }

  v116 = v260;
  sub_1D8D088B4(v260, v268, &unk_1ECAB5910, &qword_1D9188C90);
  v117 = (v116 + v263);
  v118 = v263;
  if (v258(v117, 1, v14) == 1)
  {
    (*(v15 + 8))(v268, v14);
    goto LABEL_60;
  }

  v254 = v15 + 48;
  (*(v15 + 32))(v256, v260 + v118, v14);
  sub_1D90CBEE0(&qword_1ECAB2CA0, MEMORY[0x1E6968FB0]);
  LODWORD(v263) = sub_1D91781BC();
  v123 = *(v15 + 8);
  v123(v256, v14);
  v123(v268, v14);
  v115 = v259;
  sub_1D8D08A50(v260, &unk_1ECAB5910, &qword_1D9188C90);
  if ((v263 & 1) == 0)
  {
    return 0;
  }

LABEL_64:
  v124 = v255;
  v125 = v255[13];
  v126 = (a1 + v125);
  v127 = *(a1 + v125 + 8);
  v128 = (v115 + v125);
  v129 = v128[1];
  if (v127)
  {
    if (!v129 || (*v126 != *v128 || v127 != v129) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v129)
  {
    return 0;
  }

  if (*(a1 + v124[14]) != *(v115 + v124[14]))
  {
    return 0;
  }

  v130 = v124[15];
  v131 = (a1 + v130);
  v132 = *(a1 + v130 + 8);
  v133 = (v115 + v130);
  v134 = *(v115 + v130 + 8);
  if (v132)
  {
    if (!v134)
    {
      return 0;
    }
  }

  else
  {
    if (*v131 != *v133)
    {
      LOBYTE(v134) = 1;
    }

    if (v134)
    {
      return 0;
    }
  }

  v262 = v8;
  v263 = v5;
  v252 = v22;
  v253 = v30;
  v260 = v15;
  v135 = v124;
  v136 = v124[16];
  v268 = a1;
  v137 = (a1 + v136);
  v138 = *(a1 + v136 + 4);
  v139 = (v115 + v136);
  v140 = *(v115 + v136 + 4);
  if (v138)
  {
    if (!v140)
    {
      return 0;
    }
  }

  else
  {
    if (*v137 != *v139)
    {
      LOBYTE(v140) = 1;
    }

    if (v140)
    {
      return 0;
    }
  }

  v141 = v124[17];
  v142 = &v268[v141];
  v143 = *&v268[v141 + 8];
  v144 = (v259 + v141);
  v145 = v144[1];
  if (v143)
  {
    if (!v145 || (*v142 != *v144 || v143 != v145) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v145)
  {
    return 0;
  }

  v146 = v124[18];
  v147 = *(v261 + 48);
  v148 = v257;
  sub_1D8D088B4(&v268[v146], v257, &unk_1ECAB5910, &qword_1D9188C90);
  sub_1D8D088B4(v259 + v146, v148 + v147, &unk_1ECAB5910, &qword_1D9188C90);
  v149 = v148;
  if (v258(v148, 1, v14) == 1)
  {
    if (v258((v148 + v147), 1, v14) == 1)
    {
      sub_1D8D08A50(v148, &unk_1ECAB5910, &qword_1D9188C90);
      goto LABEL_98;
    }

    goto LABEL_96;
  }

  sub_1D8D088B4(v148, v267, &unk_1ECAB5910, &qword_1D9188C90);
  if (v258((v148 + v147), 1, v14) == 1)
  {
    v260[1](v267, v14);
LABEL_96:
    v119 = &qword_1ECAB6178;
    v120 = &unk_1D9193430;
    v121 = v148;
    goto LABEL_61;
  }

  v150 = v260;
  v151 = v148 + v147;
  v152 = v256;
  (v260[4])(v256, v151, v14);
  sub_1D90CBEE0(&qword_1ECAB2CA0, MEMORY[0x1E6968FB0]);
  v153 = v267;
  v154 = sub_1D91781BC();
  v155 = *(v150 + 8);
  v155(v152, v14);
  v155(v153, v14);
  sub_1D8D08A50(v149, &unk_1ECAB5910, &qword_1D9188C90);
  if ((v154 & 1) == 0)
  {
    return 0;
  }

LABEL_98:
  v156 = v124[19];
  v157 = &v268[v156];
  v158 = *&v268[v156 + 8];
  v159 = (v259 + v156);
  v160 = v159[1];
  if (v158)
  {
    if (!v160 || (*v157 != *v159 || v158 != v160) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v160)
  {
    return 0;
  }

  v161 = v124[20];
  v162 = *&v268[v161];
  v163 = *(v259 + v161);
  if (v162)
  {
    if (!v163 || (_s18PodcastsFoundation13ServerArtworkC2eeoiySbAC_ACtFZ_0(v162, v163) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v163)
  {
    return 0;
  }

  if (v268[v124[21]] != *(v259 + v124[21]))
  {
    return 0;
  }

  v164 = v124[22];
  v165 = *(v264 + 48);
  v166 = v266;
  sub_1D8D088B4(&v268[v164], v266, &qword_1ECAB75C0, &unk_1D9188A50);
  sub_1D8D088B4(v259 + v164, v166 + v165, &qword_1ECAB75C0, &unk_1D9188A50);
  v167 = *(v263 + 48);
  if (v167(v166, 1, v4) == 1)
  {
    if (v167(v266 + v165, 1, v4) == 1)
    {
      sub_1D8D08A50(v266, &qword_1ECAB75C0, &unk_1D9188A50);
      goto LABEL_118;
    }

    goto LABEL_116;
  }

  v168 = v266;
  sub_1D8D088B4(v266, v265, &qword_1ECAB75C0, &unk_1D9188A50);
  if (v167(v168 + v165, 1, v4) == 1)
  {
    (*(v263 + 8))(v265, v4);
LABEL_116:
    v119 = &qword_1ECAB75B8;
    v120 = &qword_1D9197C80;
    v121 = v266;
    goto LABEL_61;
  }

  v169 = v263;
  v170 = v266;
  v171 = v266 + v165;
  v172 = v262;
  (*(v263 + 32))(v262, v171, v4);
  sub_1D90CBEE0(&qword_1ECAB75C8, MEMORY[0x1E6969530]);
  v173 = v265;
  v174 = sub_1D91781BC();
  v175 = *(v169 + 8);
  v175(v172, v4);
  v175(v173, v4);
  sub_1D8D08A50(v170, &qword_1ECAB75C0, &unk_1D9188A50);
  if ((v174 & 1) == 0)
  {
    return 0;
  }

LABEL_118:
  v176 = v135[23];
  v177 = &v268[v176];
  v178 = *&v268[v176 + 8];
  v179 = (v259 + v176);
  v180 = v179[1];
  if (v178)
  {
    if (!v180 || (*v177 != *v179 || v178 != v180) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v180)
  {
    return 0;
  }

  if (v268[v135[24]] != *(v259 + v135[24]) || v268[v135[25]] != *(v259 + v135[25]) || v268[v135[26]] != *(v259 + v135[26]) || v268[v135[27]] != *(v259 + v135[27]))
  {
    return 0;
  }

  v181 = v135[28];
  v182 = v268[v181];
  v183 = *(v259 + v181);
  if (v182 == 2)
  {
    if (v183 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v183 == 2)
    {
      return 0;
    }

    if (v182)
    {
      v184 = 0x64616F6C6E776F64;
    }

    else
    {
      v184 = 0x6D6165727473;
    }

    if (v182)
    {
      v185 = 0xE800000000000000;
    }

    else
    {
      v185 = 0xE600000000000000;
    }

    if (v183)
    {
      v186 = 0x64616F6C6E776F64;
    }

    else
    {
      v186 = 0x6D6165727473;
    }

    if (v183)
    {
      v187 = 0xE800000000000000;
    }

    else
    {
      v187 = 0xE600000000000000;
    }

    if (v184 == v186 && v185 == v187)
    {
    }

    else
    {
      v188 = sub_1D9179ACC();

      if ((v188 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v189 = v135[29];
  v190 = v268[v189];
  v191 = *(v259 + v189);
  if (v190 == 4)
  {
    if (v191 != 4)
    {
      return 0;
    }
  }

  else if (v191 == 4 || (sub_1D8FDDEC0(v190, v191) & 1) == 0)
  {
    return 0;
  }

  v192 = v135[30];
  v193 = v268[v192];
  v194 = *(v259 + v192);
  if (v193 == 5)
  {
    if (v194 != 5)
    {
      return 0;
    }
  }

  else if (v194 == 5 || (sub_1D8FDD174(v193, v194) & 1) == 0)
  {
    return 0;
  }

  if (*&v268[v135[31]] != *(v259 + v135[31]) || *&v268[v135[32]] != *(v259 + v135[32]) || v268[v135[33]] != *(v259 + v135[33]))
  {
    return 0;
  }

  v195 = v135[34];
  v196 = &v268[v195];
  v197 = *&v268[v195 + 8];
  v198 = (v259 + v195);
  v199 = v198[1];
  if (v197)
  {
    if (!v199 || (*v196 != *v198 || v197 != v199) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v199)
  {
    return 0;
  }

  if (!sub_1D90C2600(*&v268[v135[35]], *(v259 + v135[35])))
  {
    return 0;
  }

  v200 = v135[36];
  v201 = &v268[v200];
  v202 = *&v268[v200 + 8];
  v203 = (v259 + v200);
  v204 = v203[1];
  if (v202)
  {
    if (!v204 || (*v201 != *v203 || v202 != v204) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v204)
  {
    return 0;
  }

  v205 = v135[37];
  v206 = &v268[v205];
  v207 = *&v268[v205 + 8];
  v208 = (v259 + v205);
  v209 = v208[1];
  if (v207)
  {
    if (!v209 || (*v206 != *v208 || v207 != v209) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v209)
  {
    return 0;
  }

  v210 = v135[38];
  v211 = *(v261 + 48);
  v212 = v253;
  sub_1D8D088B4(&v268[v210], v253, &unk_1ECAB5910, &qword_1D9188C90);
  sub_1D8D088B4(v259 + v210, v212 + v211, &unk_1ECAB5910, &qword_1D9188C90);
  if (v258(v212, 1, v14) == 1)
  {
    if (v258(&v253[v211], 1, v14) == 1)
    {
      sub_1D8D08A50(v253, &unk_1ECAB5910, &qword_1D9188C90);
      goto LABEL_191;
    }

    goto LABEL_189;
  }

  v213 = v253;
  sub_1D8D088B4(v253, v252, &unk_1ECAB5910, &qword_1D9188C90);
  if (v258((v213 + v211), 1, v14) == 1)
  {
    v260[1](v252, v14);
LABEL_189:
    v119 = &qword_1ECAB6178;
    v120 = &unk_1D9193430;
    v121 = v253;
    goto LABEL_61;
  }

  v214 = v260;
  v215 = v253;
  v216 = &v253[v211];
  v217 = v256;
  (v260[4])(v256, v216, v14);
  sub_1D90CBEE0(&qword_1ECAB2CA0, MEMORY[0x1E6968FB0]);
  v218 = v252;
  v219 = sub_1D91781BC();
  v220 = *(v214 + 8);
  v220(v217, v14);
  v220(v218, v14);
  sub_1D8D08A50(v215, &unk_1ECAB5910, &qword_1D9188C90);
  if ((v219 & 1) == 0)
  {
    return 0;
  }

LABEL_191:
  v221 = v135[39];
  v222 = &v268[v221];
  v223 = *&v268[v221 + 8];
  v224 = (v259 + v221);
  v225 = v224[1];
  if (v223)
  {
    if (!v225 || (*v222 != *v224 || v223 != v225) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v225)
  {
    return 0;
  }

  v226 = v135[40];
  v227 = &v268[v226];
  v228 = *&v268[v226 + 8];
  v229 = (v259 + v226);
  v230 = v229[1];
  if (v228)
  {
    if (!v230 || (*v227 != *v229 || v228 != v230) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v230)
  {
    return 0;
  }

  v231 = v135[41];
  v232 = *(v259 + v231);
  v233 = EpisodeSortType.rawValue.getter(v268[v231]);
  v235 = v234;
  if (v233 == EpisodeSortType.rawValue.getter(v232) && v235 == v236)
  {
  }

  else
  {
    v237 = sub_1D9179ACC();

    if ((v237 & 1) == 0)
    {
      return 0;
    }
  }

  if (v268[v135[42]] != *(v259 + v135[42]) || v268[v135[43]] != *(v259 + v135[43]) || v268[v135[44]] != *(v259 + v135[44]) || v268[v135[45]] != *(v259 + v135[45]) || v268[v135[46]] != *(v259 + v135[46]) || v268[v135[47]] != *(v259 + v135[47]))
  {
    return 0;
  }

  v238 = v135[48];
  v239 = v268[v238];
  v240 = *(v259 + v238);
  if (v239 == 4)
  {
    if (v240 != 4)
    {
      return 0;
    }
  }

  else
  {
    if (v240 == 4)
    {
      return 0;
    }

    v241 = 0x6465776F6C6C6F66;
    if (v239 > 1)
    {
      if (v239 == 2)
      {
        v243 = 0xD000000000000012;
        v242 = 0x80000001D91C84B0;
      }

      else
      {
        v242 = 0xE500000000000000;
        v243 = 0x65726F7473;
      }
    }

    else if (v239)
    {
      v242 = 0xE700000000000000;
      v243 = 0x7972617262696CLL;
    }

    else
    {
      v242 = 0xE800000000000000;
      v243 = 0x6465776F6C6C6F66;
    }

    if (v240 > 1)
    {
      if (v240 == 2)
      {
        v241 = 0xD000000000000012;
        v244 = 0x80000001D91C84B0;
      }

      else
      {
        v244 = 0xE500000000000000;
        v241 = 0x65726F7473;
      }
    }

    else if (v240)
    {
      v244 = 0xE700000000000000;
      v241 = 0x7972617262696CLL;
    }

    else
    {
      v244 = 0xE800000000000000;
    }

    if (v243 == v241 && v242 == v244)
    {
    }

    else
    {
      v245 = sub_1D9179ACC();

      if ((v245 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v246 = v135[49];
  v247 = &v268[v246];
  v248 = *&v268[v246 + 8];
  v249 = (v259 + v246);
  v250 = v249[1];
  if (!v248)
  {
    return !v250;
  }

  return v250 && (*v247 == *v249 && v248 == v250 || (sub_1D9179ACC() & 1) != 0);
}

BOOL _s18PodcastsFoundation0A12MediaLibraryC0C12ItemSnapshotV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v85 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6178, &unk_1D9193430);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v85 - v22;
  v24 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = *(a1 + 40);
  v27 = *(a2 + 40);
  if (v26)
  {
    if (!v27)
    {
      return 0;
    }

    if (*(a1 + 32) != *(a2 + 32) || v26 != v27)
    {
      v28 = v21;
      v29 = *(a1 + 32);
      v30 = sub_1D9179ACC();
      v21 = v28;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v27)
  {
    return 0;
  }

  v31 = *(a1 + 56);
  v32 = *(a2 + 56);
  if (v31)
  {
    if (!v32)
    {
      return 0;
    }

    v90 = v21;
    if ((*(a1 + 48) != *(a2 + 48) || v31 != v32) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v90 = v21;
    if (v32)
    {
      return 0;
    }
  }

  v87 = type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
  v89 = v87[8];
  v33 = *(v90 + 48);
  sub_1D8D088B4(a1 + v89, v23, &unk_1ECAB5910, &qword_1D9188C90);
  v34 = a2 + v89;
  v89 = v33;
  sub_1D8D088B4(v34, &v23[v33], &unk_1ECAB5910, &qword_1D9188C90);
  v88 = v5;
  v36 = v5 + 48;
  v35 = *(v5 + 48);
  if (v35(v23, 1, v4) == 1)
  {
    if (v35(&v23[v89], 1, v4) == 1)
    {
      v85 = v36;
      v86 = v35;
      sub_1D8D08A50(v23, &unk_1ECAB5910, &qword_1D9188C90);
      goto LABEL_35;
    }

LABEL_32:
    v37 = v23;
LABEL_33:
    sub_1D8D08A50(v37, &qword_1ECAB6178, &unk_1D9193430);
    return 0;
  }

  sub_1D8D088B4(v23, v15, &unk_1ECAB5910, &qword_1D9188C90);
  v86 = v35;
  if (v35(&v23[v89], 1, v4) == 1)
  {
    (*(v88 + 8))(v15, v4);
    goto LABEL_32;
  }

  v85 = v36;
  v38 = v88;
  (*(v88 + 32))(v8, &v23[v89], v4);
  sub_1D90CBEE0(&qword_1ECAB2CA0, MEMORY[0x1E6968FB0]);
  LODWORD(v89) = sub_1D91781BC();
  v39 = *(v38 + 8);
  v39(v8, v4);
  v39(v15, v4);
  sub_1D8D08A50(v23, &unk_1ECAB5910, &qword_1D9188C90);
  if ((v89 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  v40 = v87;
  if (*(a1 + v87[9]) != *(a2 + v87[9]))
  {
    return 0;
  }

  v41 = v87[10];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = *(a2 + v41 + 8);
  if (v43)
  {
    v46 = v90;
    if (!v45)
    {
      return 0;
    }

    if (*v42 != *v44 || v43 != v45)
    {
      v47 = v90;
      v48 = sub_1D9179ACC();
      v46 = v47;
      if ((v48 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v46 = v90;
    if (v45)
    {
      return 0;
    }
  }

  v49 = v40[11];
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a2 + v49);
  v53 = v52[1];
  if (v51)
  {
    if (!v53)
    {
      return 0;
    }

    if (*v50 != *v52 || v51 != v53)
    {
      v54 = v46;
      v55 = sub_1D9179ACC();
      v46 = v54;
      if ((v55 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v53)
  {
    return 0;
  }

  v57 = v40[12];
  v58 = *(v46 + 48);
  sub_1D8D088B4(a1 + v57, v19, &unk_1ECAB5910, &qword_1D9188C90);
  v59 = a2 + v57;
  v60 = v58;
  sub_1D8D088B4(v59, &v19[v58], &unk_1ECAB5910, &qword_1D9188C90);
  v61 = v86;
  if (v86(v19, 1, v4) == 1)
  {
    if (v61(&v19[v60], 1, v4) == 1)
    {
      sub_1D8D08A50(v19, &unk_1ECAB5910, &qword_1D9188C90);
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  sub_1D8D088B4(v19, v12, &unk_1ECAB5910, &qword_1D9188C90);
  if (v61(&v19[v60], 1, v4) == 1)
  {
    (*(v88 + 8))(v12, v4);
LABEL_56:
    v37 = v19;
    goto LABEL_33;
  }

  v62 = v88;
  (*(v88 + 32))(v8, &v19[v60], v4);
  sub_1D90CBEE0(&qword_1ECAB2CA0, MEMORY[0x1E6968FB0]);
  v63 = sub_1D91781BC();
  v64 = *(v62 + 8);
  v64(v8, v4);
  v64(v12, v4);
  sub_1D8D08A50(v19, &unk_1ECAB5910, &qword_1D9188C90);
  if ((v63 & 1) == 0)
  {
    return 0;
  }

LABEL_58:
  v65 = v87;
  v66 = v87[13];
  v67 = (a1 + v66);
  v68 = *(a1 + v66 + 8);
  v69 = (a2 + v66);
  v70 = v69[1];
  if (v68)
  {
    if (!v70 || (*v67 != *v69 || v68 != v70) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v70)
  {
    return 0;
  }

  if (*(a1 + v65[14]) != *(a2 + v65[14]))
  {
    return 0;
  }

  v71 = v65[15];
  v72 = *(a1 + v71);
  v73 = *(a1 + v71 + 8);
  v74 = (a2 + v71);
  if ((v72 != *v74 || v73 != v74[1]) && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  v75 = v65[16];
  v76 = (a1 + v75);
  v77 = *(a1 + v75 + 8);
  v78 = (a2 + v75);
  v79 = v78[1];
  if (v77)
  {
    if (!v79 || (*v76 != *v78 || v77 != v79) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v79)
  {
    return 0;
  }

  v80 = v87[17];
  v81 = (a1 + v80);
  v82 = *(a1 + v80 + 8);
  v83 = (a2 + v80);
  v84 = v83[1];
  if (!v82)
  {
    return !v84;
  }

  return v84 && (*v81 == *v83 && v82 == v84 || (sub_1D9179ACC() & 1) != 0);
}

unint64_t sub_1D90CBE8C()
{
  result = qword_1ECABA4C8;
  if (!qword_1ECABA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA4C8);
  }

  return result;
}

uint64_t sub_1D90CBEE0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D90CBF28()
{
  result = qword_1ECABA4D0;
  if (!qword_1ECABA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA4D0);
  }

  return result;
}

unint64_t sub_1D90CBF7C()
{
  result = qword_1ECABA4D8;
  if (!qword_1ECABA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA4D8);
  }

  return result;
}

unint64_t sub_1D90CBFD0()
{
  result = qword_1ECABA4F0;
  if (!qword_1ECABA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA4F0);
  }

  return result;
}

unint64_t sub_1D90CC024()
{
  result = qword_1ECABA500;
  if (!qword_1ECABA500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA500);
  }

  return result;
}

unint64_t sub_1D90CC078()
{
  result = qword_1ECABA508;
  if (!qword_1ECABA508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA508);
  }

  return result;
}

uint64_t sub_1D90CC0CC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECABA4E0, &qword_1D91B4C58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D90CC150()
{
  result = qword_1ECABA518;
  if (!qword_1ECABA518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA518);
  }

  return result;
}

uint64_t sub_1D90CC1A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D90CC204()
{
  result = qword_1ECAB2C38;
  if (!qword_1ECAB2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2C38);
  }

  return result;
}

uint64_t sub_1D90CC258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D90CC2C0()
{
  result = qword_1ECABA540;
  if (!qword_1ECABA540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA540);
  }

  return result;
}

unint64_t sub_1D90CC318()
{
  result = qword_1ECABA550;
  if (!qword_1ECABA550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA550);
  }

  return result;
}

uint64_t _s9MediaItemV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD3)
  {
    goto LABEL_17;
  }

  if (a2 + 45 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 45) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 45;
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

      return (*a1 | (v4 << 8)) - 45;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 45;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2E;
  v8 = v6 - 46;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9MediaItemV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 45 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 45) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD3)
  {
    v4 = 0;
  }

  if (a2 > 0xD2)
  {
    v5 = ((a2 - 211) >> 8) + 1;
    *result = a2 + 45;
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
    *result = a2 + 45;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D90CC550()
{
  result = qword_1ECABA560;
  if (!qword_1ECABA560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA560);
  }

  return result;
}

unint64_t sub_1D90CC5A8()
{
  result = qword_1ECABA568;
  if (!qword_1ECABA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA568);
  }

  return result;
}

unint64_t sub_1D90CC600()
{
  result = qword_1ECAB2C28;
  if (!qword_1ECAB2C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2C28);
  }

  return result;
}

unint64_t sub_1D90CC658()
{
  result = qword_1ECAB2C30;
  if (!qword_1ECAB2C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2C30);
  }

  return result;
}

unint64_t sub_1D90CC6B0()
{
  result = qword_1ECABA570;
  if (!qword_1ECABA570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA570);
  }

  return result;
}

unint64_t sub_1D90CC708()
{
  result = qword_1ECABA578;
  if (!qword_1ECABA578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA578);
  }

  return result;
}

uint64_t sub_1D90CC75C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C52557465737361 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C525564656566 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61725465726F7473 && a2 == 0xEC00000064496B63 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5374736163646F70 && a2 == 0xEE00644965726F74 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1684632935 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D91D5A40 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D91D5A60 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726F68747561 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6461656879616C70 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D91D5A80 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D91D5AA0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x556B726F77747261 && a2 == 0xEA00000000004C52 || (sub_1D9179ACC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x637365446D657469 && a2 == 0xEF6E6F6974706972 || (sub_1D9179ACC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x7241726576726573 && a2 == 0xED00006B726F7774 || (sub_1D9179ACC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7263736275537369 && a2 == 0xEE00656C62616269 || (sub_1D9179ACC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461 || (sub_1D9179ACC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6D75626C61 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D91D5AC0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x63696C7078457369 && a2 == 0xEA00000000007469 || (sub_1D9179ACC() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6972747365527369 && a2 == 0xEC00000064657463 || (sub_1D9179ACC() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D91D5AE0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x657079546D657469 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x7079546563697270 && a2 == 0xE900000000000065 || (sub_1D9179ACC() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6E694B616964656DLL && a2 == 0xE900000000000064 || (sub_1D9179ACC() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x4E65646F73697065 && a2 == 0xED00007265626D75 || (sub_1D9179ACC() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x754E6E6F73616573 && a2 == 0xEC0000007265626DLL || (sub_1D9179ACC() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x4974736163646F70 && a2 == 0xEF6C616972655373 || (sub_1D9179ACC() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D91D5B00 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x496B726F77747261 && a2 == 0xEB000000006F666ELL || (sub_1D9179ACC() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D91D5B20 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91D5B40 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x4C52556572616873 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x5574736163646F70 && a2 == 0xEB00000000444955 || (sub_1D9179ACC() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D91D5B60 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D91D5B80 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D91D5BA0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D5BC0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D91D5BE0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0x6F6C6C6168537369 && a2 == 0xE900000000000077 || (sub_1D9179ACC() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0x69536D6F72467369 && a2 == 0xEE006B6361706564 || (sub_1D9179ACC() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0x656C654464656566 && a2 == 0xEB00000000646574 || (sub_1D9179ACC() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D91D5C00 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D5C20 == a2)
  {

    return 45;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 45;
    }

    else
    {
      return 46;
    }
  }
}

uint64_t sub_1D90CD584(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61725465726F7473 && a2 == 0xEC00000064496B63;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5374736163646F70 && a2 == 0xEE00644965726F74 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5574736163646F70 && a2 == 0xEB00000000444955 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D91D5A60 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F68747561 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x556B726F77747261 && a2 == 0xEA00000000004C52 || (sub_1D9179ACC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D75626C61 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x63696C7078457369 && a2 == 0xEA00000000007469 || (sub_1D9179ACC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x49746E65746E6F63 && a2 == 0xED000044496D6574 || (sub_1D9179ACC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4C52557465737361 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D91D5B00 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

unint64_t sub_1D90CDA5C()
{
  result = qword_1ECABA580;
  if (!qword_1ECABA580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA580);
  }

  return result;
}

unint64_t sub_1D90CDAB0()
{
  result = qword_1ECABA598;
  if (!qword_1ECABA598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA598);
  }

  return result;
}

uint64_t PodcastsMediaLibrary.MediaItem.shortTrailerSubline.getter()
{
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9189080;
  v2 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v3 = *(v0 + *(v2 + 128));
  v4 = MEMORY[0x1E69E7360];
  v5 = MEMORY[0x1E69E73D8];
  *(v1 + 56) = MEMORY[0x1E69E7360];
  *(v1 + 64) = v5;
  *(v1 + 32) = v3;
  v18 = sub_1D91781DC();
  v7 = v6;

  sub_1D917693C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D9189080;
  v9 = *(v0 + *(v2 + 124));
  *(v8 + 56) = v4;
  *(v8 + 64) = v5;
  *(v8 + 32) = v9;
  v10 = sub_1D91781DC();
  v12 = v11;

  if (v3 >= 1)
  {
    if (v9 < 1)
    {

      sub_1D917693C();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D9189080;
      *(v16 + 56) = MEMORY[0x1E69E7360];
      *(v16 + 64) = v5;
      *(v16 + 32) = v3;
    }

    else
    {
      sub_1D917693C();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D918A530;
      v14 = MEMORY[0x1E69E6158];
      *(v13 + 56) = MEMORY[0x1E69E6158];
      v15 = sub_1D8D34978();
      *(v13 + 32) = v18;
      *(v13 + 40) = v7;
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 64) = v15;
      *(v13 + 72) = v10;
      *(v13 + 80) = v12;
    }

    v10 = sub_1D91781DC();
  }

  return v10;
}

uint64_t PodcastsMediaLibrary.MediaItem.longTrailerSubline.getter()
{
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9189080;
  v2 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v3 = *(v0 + *(v2 + 128));
  v4 = MEMORY[0x1E69E7360];
  v5 = MEMORY[0x1E69E73D8];
  *(v1 + 56) = MEMORY[0x1E69E7360];
  *(v1 + 64) = v5;
  *(v1 + 32) = v3;
  v18 = sub_1D91781DC();
  v7 = v6;

  sub_1D917693C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D9189080;
  v9 = *(v0 + *(v2 + 124));
  *(v8 + 56) = v4;
  *(v8 + 64) = v5;
  *(v8 + 32) = v9;
  v10 = sub_1D91781DC();
  v12 = v11;

  if (v3 >= 1)
  {
    if (v9 < 1)
    {

      sub_1D917693C();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D9189080;
      *(v16 + 56) = MEMORY[0x1E69E7360];
      *(v16 + 64) = v5;
      *(v16 + 32) = v3;
    }

    else
    {
      sub_1D917693C();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D918A530;
      v14 = MEMORY[0x1E69E6158];
      *(v13 + 56) = MEMORY[0x1E69E6158];
      v15 = sub_1D8D34978();
      *(v13 + 32) = v18;
      *(v13 + 40) = v7;
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 64) = v15;
      *(v13 + 72) = v10;
      *(v13 + 80) = v12;
    }

    v10 = sub_1D91781DC();
  }

  return v10;
}

uint64_t PodcastsMediaLibrary.MediaItem.shortBonusSubline.getter()
{
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9189080;
  v2 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v3 = *(v0 + *(v2 + 128));
  v4 = MEMORY[0x1E69E7360];
  v5 = MEMORY[0x1E69E73D8];
  *(v1 + 56) = MEMORY[0x1E69E7360];
  *(v1 + 64) = v5;
  *(v1 + 32) = v3;
  v18 = sub_1D91781DC();
  v7 = v6;

  sub_1D917693C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D9189080;
  v9 = *(v0 + *(v2 + 124));
  *(v8 + 56) = v4;
  *(v8 + 64) = v5;
  *(v8 + 32) = v9;
  v10 = sub_1D91781DC();
  v12 = v11;

  if (v3 >= 1)
  {
    if (v9 < 1)
    {

      sub_1D917693C();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D9189080;
      *(v16 + 56) = MEMORY[0x1E69E7360];
      *(v16 + 64) = v5;
      *(v16 + 32) = v3;
    }

    else
    {
      sub_1D917693C();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D918A530;
      v14 = MEMORY[0x1E69E6158];
      *(v13 + 56) = MEMORY[0x1E69E6158];
      v15 = sub_1D8D34978();
      *(v13 + 32) = v18;
      *(v13 + 40) = v7;
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 64) = v15;
      *(v13 + 72) = v10;
      *(v13 + 80) = v12;
    }

    v10 = sub_1D91781DC();
  }

  return v10;
}

uint64_t PodcastsMediaLibrary.MediaItem.longBonusSubline.getter()
{
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9189080;
  v2 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v3 = *(v0 + *(v2 + 128));
  v4 = MEMORY[0x1E69E7360];
  v5 = MEMORY[0x1E69E73D8];
  *(v1 + 56) = MEMORY[0x1E69E7360];
  *(v1 + 64) = v5;
  *(v1 + 32) = v3;
  v18 = sub_1D91781DC();
  v7 = v6;

  sub_1D917693C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D9189080;
  v9 = *(v0 + *(v2 + 124));
  *(v8 + 56) = v4;
  *(v8 + 64) = v5;
  *(v8 + 32) = v9;
  v10 = sub_1D91781DC();
  v12 = v11;

  if (v3 >= 1)
  {
    if (v9 < 1)
    {

      sub_1D917693C();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D9189080;
      *(v16 + 56) = MEMORY[0x1E69E7360];
      *(v16 + 64) = v5;
      *(v16 + 32) = v3;
    }

    else
    {
      sub_1D917693C();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D918A530;
      v14 = MEMORY[0x1E69E6158];
      *(v13 + 56) = MEMORY[0x1E69E6158];
      v15 = sub_1D8D34978();
      *(v13 + 32) = v18;
      *(v13 + 40) = v7;
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 64) = v15;
      *(v13 + 72) = v10;
      *(v13 + 80) = v12;
    }

    v10 = sub_1D91781DC();
  }

  return v10;
}

uint64_t PodcastsMediaLibrary.MediaItem.shortFullSubline.getter()
{
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9189080;
  v2 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v3 = *(v0 + *(v2 + 128));
  v4 = MEMORY[0x1E69E73D8];
  *(v1 + 56) = MEMORY[0x1E69E7360];
  *(v1 + 64) = v4;
  *(v1 + 32) = v3;
  v16 = sub_1D91781DC();
  v6 = v5;

  sub_1D917693C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D9189080;
  v8 = *(v0 + *(v2 + 124));
  *(v7 + 56) = MEMORY[0x1E69E7360];
  *(v7 + 64) = v4;
  *(v7 + 32) = v8;
  v9 = sub_1D91781DC();
  v11 = v10;

  if (v3 >= 1)
  {
    if (v8 < 1)
    {
      v9 = v16;
    }

    else
    {
      sub_1D917693C();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D918A530;
      v13 = MEMORY[0x1E69E6158];
      *(v12 + 56) = MEMORY[0x1E69E6158];
      v14 = sub_1D8D34978();
      *(v12 + 32) = v16;
      *(v12 + 40) = v6;
      *(v12 + 96) = v13;
      *(v12 + 104) = v14;
      *(v12 + 64) = v14;
      *(v12 + 72) = v9;
      *(v12 + 80) = v11;
      v9 = sub_1D91781DC();
    }
  }

  return v9;
}

uint64_t PodcastsMediaLibrary.MediaItem.longFullSubline.getter()
{
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9189080;
  v2 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v3 = *(v0 + *(v2 + 128));
  v4 = MEMORY[0x1E69E73D8];
  *(v1 + 56) = MEMORY[0x1E69E7360];
  *(v1 + 64) = v4;
  *(v1 + 32) = v3;
  v16 = sub_1D91781DC();
  v6 = v5;

  sub_1D917693C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D9189080;
  v8 = *(v0 + *(v2 + 124));
  *(v7 + 56) = MEMORY[0x1E69E7360];
  *(v7 + 64) = v4;
  *(v7 + 32) = v8;
  v9 = sub_1D91781DC();
  v11 = v10;

  if (v3 >= 1)
  {
    if (v8 < 1)
    {
      v9 = v16;
    }

    else
    {
      sub_1D917693C();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D918A530;
      v13 = MEMORY[0x1E69E6158];
      *(v12 + 56) = MEMORY[0x1E69E6158];
      v14 = sub_1D8D34978();
      *(v12 + 32) = v16;
      *(v12 + 40) = v6;
      *(v12 + 96) = v13;
      *(v12 + 104) = v14;
      *(v12 + 64) = v14;
      *(v12 + 72) = v9;
      *(v12 + 80) = v11;
      v9 = sub_1D91781DC();
    }
  }

  return v9;
}

uint64_t PodcastsMediaLibrary.Request.mediaIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_1D8D092C0(v2, v3, v4, v5, v6);
}

void *PodcastsMediaLibrary.Request.account.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t PodcastsMediaLibrary.Request.sidepack.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t PodcastsMediaLibrary.Request.listSettings.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v4 = *(v1 + 128);
  v10 = *(v1 + 112);
  v3 = v10;
  v11[0] = v4;
  *(v11 + 13) = *(v1 + 141);
  v6 = *(v1 + 80);
  v9[0] = *(v1 + 64);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 77) = *(v11 + 13);
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D90CEEE0(v9, v8);
}

uint64_t sub_1D90CEEE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F78, qword_1D91B16D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1D90CEF94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 209))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D90CEFF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 209) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 209) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_1D90CF090()
{
  result = qword_1ECABA5A0;
  if (!qword_1ECABA5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA5A0);
  }

  return result;
}

uint64_t sub_1D90CF0E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 176);
  v64 = *(v2 + 160);
  v65 = v4;
  v66 = *(v2 + 192);
  v67 = *(v2 + 208);
  v5 = *(v2 + 112);
  v61 = *(v2 + 96);
  v62 = v5;
  v6 = *(v2 + 144);
  *v63 = *(v2 + 128);
  *&v63[16] = v6;
  v7 = *(v2 + 48);
  *v58 = *(v2 + 32);
  *&v58[16] = v7;
  v8 = *(v2 + 80);
  v59 = *(v2 + 64);
  v60 = v8;
  v9 = *(v2 + 16);
  v56 = *v2;
  v57 = v9;
  v10 = BYTE8(v64);
  if (BYTE8(v64) && BYTE8(v64) != 1)
  {

    goto LABEL_6;
  }

  v11 = sub_1D9179ACC();

  if (v11)
  {
LABEL_6:
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    v10 = (*(v13 + 16))(BYTE8(v64), v12, v13);
  }

  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  (*(v15 + 8))(&v42, v10, v14, v15);
  if (*(&v43 + 1))
  {
    sub_1D8D6BCE0(&v42, &v30);
    while (1)
    {
      v16 = *(&v31 + 1);
      v17 = *v32;
      __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
      v52 = v64;
      v53 = v65;
      v54 = v66;
      v55 = v67;
      v48 = v61;
      v49 = v62;
      v50 = *v63;
      v51 = *&v63[16];
      v44 = *v58;
      v45 = *&v58[16];
      v46 = v59;
      v47 = v60;
      v42 = v56;
      v43 = v57;
      if ((*(v17 + 16))(&v42, v16, v17))
      {
        break;
      }

      v18 = a1[3];
      v19 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v18);
      if ((*(v19 + 24))(v10, v18, v19))
      {
        break;
      }

      v20 = a1[3];
      v21 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v20);
      v10 = (*(v21 + 16))(v10, v20, v21);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v30);
  }

  else
  {
    sub_1D90CF6C4(&v42);
  }

  __swift_project_boxed_opaque_existential_1(a1 + 7, a1[10]);
  v22 = *&v63[24];
  if (!*&v63[24])
  {
    v22 = a1[5];
  }

  v23 = v65;
  v24 = v66;
  v25 = v67;
  v35 = v61;
  v36 = v62;
  *v37 = *v63;
  *&v37[13] = *&v63[13];
  v33 = v59;
  v34 = v60;
  v30 = v56;
  v31 = v57;
  v32[0] = v58[0];
  v28 = *&v58[8];
  *&v32[8] = *&v58[8];
  *&v32[24] = *&v58[24];
  *&v37[24] = v22;
  *&v38 = v64;
  WORD4(v38) = v10;
  v39 = v65;
  v40 = v66;
  v41 = v67;
  sub_1D8D092C0(v56, *(&v56 + 1), v57, *(&v57 + 1), v58[0]);

  v26 = v28;
  sub_1D90CEEE0(&v59, &v42);
  sub_1D8D0B37C(v23, *(&v23 + 1), v24, *(&v24 + 1), v25);
  sub_1D90D0630(&v30, a2);
  v52 = v38;
  v53 = v39;
  v54 = v40;
  v55 = v41;
  v48 = v35;
  v49 = v36;
  v50 = *v37;
  v51 = *&v37[16];
  v44 = *v32;
  v45 = *&v32[16];
  v46 = v33;
  v47 = v34;
  v42 = v30;
  v43 = v31;
  return sub_1D90CF72C(&v42);
}

BOOL sub_1D90CF4C0(uint64_t a1)
{
  v2 = 0;
  if (*(v1 + 152) == *(a1 + 152) && *(v1 + 160) == *(a1 + 160))
  {
    v22 = *(a1 + 8);
    v23 = *a1;
    v3 = *(a1 + 24);
    v21 = *(a1 + 16);
    v4 = *(a1 + 32);
    v5 = *(a1 + 168);
    v6 = *v1;
    v7 = *(v1 + 8);
    v8 = *(v1 + 16);
    v9 = *(v1 + 24);
    v10 = *(v1 + 32);
    v11 = 0x62694C6C61636F6CLL;
    v12 = 0xEC00000079726172;
    if (*(v1 + 168) != 1)
    {
      v11 = 0x7265666E69;
      v12 = 0xE500000000000000;
    }

    if (*(v1 + 168))
    {
      v13 = v11;
    }

    else
    {
      v13 = 0x495041616964656DLL;
    }

    if (*(v1 + 168))
    {
      v14 = v12;
    }

    else
    {
      v14 = 0xE800000000000000;
    }

    v15 = 0x62694C6C61636F6CLL;
    v16 = 0xEC00000079726172;
    if (v5 != 1)
    {
      v15 = 0x7265666E69;
      v16 = 0xE500000000000000;
    }

    if (v5)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0x495041616964656DLL;
    }

    if (v5)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0xE800000000000000;
    }

    if (v13 == v17 && v14 == v18)
    {

LABEL_23:
      v29 = v6;
      v30 = v7;
      v31 = v8;
      v32 = v9;
      v33 = v10;
      v24 = v23;
      v25 = v22;
      v26 = v21;
      v27 = v3;
      v28 = v4;
      sub_1D8D092C0(v6, v7, v8, v9, v10);
      sub_1D8D092C0(v23, v22, v21, v3, v4);
      v2 = _s18PodcastsFoundation15MediaIdentifierO2eeoiySbAC_ACtFZ_0(&v29, &v24);
      sub_1D8CFEACC(v24, v25, v26, v27, v28);
      sub_1D8CFEACC(v29, v30, v31, v32, v33);
      return v2;
    }

    v19 = sub_1D9179ACC();

    v2 = 0;
    if (v19)
    {
      goto LABEL_23;
    }
  }

  return v2;
}

uint64_t sub_1D90CF6C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA5A8, &unk_1D91B6AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1D90CF75C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 32);
  if (*(v0 + 32) <= 3u)
  {
    if (*(v0 + 32) > 1u)
    {
      if (v3 == 2)
      {
        v18 = *v0;

        return v1;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
        v4 = swift_allocObject();
        *(v4 + 16) = xmmword_1D9189080;
        *(v4 + 32) = v1;
        *(v4 + 40) = v2;
      }

      return v4;
    }

    if (!*(v0 + 32))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D9189080;
      sub_1D8E40D20();
      *(v4 + 32) = sub_1D917927C();
      *(v4 + 40) = v17;
      return v4;
    }

    v49 = *(v0 + 8);
    v31 = *(v0 + 152);
    v5 = *(v0 + 160);
    v32 = *(v1 + 16);
    if (v32)
    {
      v60 = *(v0 + 160);
      v52 = *(v0 + 16);
      v55 = *(v0 + 24);
      v33 = (v1 + 32);
      sub_1D8E40D20();

      v4 = MEMORY[0x1E69E7CC0];
      do
      {
        v34 = *v33++;
        v35 = sub_1D917927C();
        v37 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1D8D4241C(0, *(v4 + 16) + 1, 1, v4);
        }

        v39 = *(v4 + 16);
        v38 = *(v4 + 24);
        v40 = v4;
        if (v39 >= v38 >> 1)
        {
          v40 = sub_1D8D4241C((v38 > 1), v39 + 1, 1, v4);
        }

        *(v40 + 2) = v39 + 1;
        v4 = v40;
        v41 = &v40[16 * v39];
        *(v41 + 4) = v35;
        *(v41 + 5) = v37;
        --v32;
      }

      while (v32);
      sub_1D8CFEACC(v1, v49, v52, v55, 1u);
      v5 = v60;
      if (v31 <= 0)
      {
        return v4;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
      if (v31 <= 0)
      {
        return v4;
      }
    }

    v42 = v5 + v31;
    if (__OFADD__(v5, v31))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v43 = *(v4 + 16);
    if (v42 >= v43)
    {
      v3 = *(v4 + 16);
    }

    else
    {
      v3 = v5 + v31;
    }

    if (v5 < v43)
    {
      if (v42 < v5)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if (v5 < 0)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      if (v43 != (v3 - v5))
      {
LABEL_55:
        sub_1D90D0390(v4, v4 + 32, v5, (2 * v3) | 1);
        v46 = v45;

        return v46;
      }
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    if (*(v0 + 32) <= 5u)
    {
      if (v3 == 4)
      {
        v19 = *(v0 + 8);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
        v4 = swift_allocObject();
        *(v4 + 16) = xmmword_1D9189080;
        *(v4 + 32) = v1;
        *(v4 + 40) = v2;
      }
    }

    else if (v3 == 6)
    {
      v20 = *(v1 + 16);
      if (v20)
      {
        v51 = *(v0 + 16);
        v54 = *(v0 + 24);
        v61 = MEMORY[0x1E69E7CC0];

        sub_1D8D41BE0(0, v20, 0);
        v21 = v61;
        v22 = (v1 + 32);
        do
        {
          v23 = *v22++;
          v24 = sub_1D9179A4C();
          v62 = v21;
          v27 = *(v21 + 16);
          v26 = *(v21 + 24);
          if (v27 >= v26 >> 1)
          {
            v58 = v1;
            v29 = v24;
            v30 = v25;
            sub_1D8D41BE0((v26 > 1), v27 + 1, 1);
            v25 = v30;
            v24 = v29;
            v1 = v58;
            v21 = v62;
          }

          *(v21 + 16) = v27 + 1;
          v28 = v21 + 16 * v27;
          *(v28 + 32) = v24;
          *(v28 + 40) = v25;
          --v20;
        }

        while (v20);
        sub_1D8CFEACC(v1, v2, v51, v54, 6u);
        return v21;
      }

      else
      {
        return MEMORY[0x1E69E7CC0];
      }
    }

    else if (v3 == 7)
    {
      v50 = *(v0 + 16);
      v53 = *(v0 + 24);
      v48 = *(v0 + 8);
      v59 = *(v1 + 16);

      v6 = 0;
      v7 = v1 + 64;
      v56 = MEMORY[0x1E69E7CC0];
      v57 = v1;
      v47 = v1 + 64;
LABEL_6:
      v3 = v7 + 40 * v6;
      while (1)
      {
        if (v59 == v6)
        {
          sub_1D8CFEACC(v1, v48, v50, v53, 7u);
          return v56;
        }

        if (v6 >= *(v1 + 16))
        {
          break;
        }

        ++v6;
        v8 = (v3 + 40);
        v9 = *v3;
        v11 = *(v3 - 32);
        v10 = *(v3 - 24);
        v63 = *(v3 - 16);
        v64 = *(v3 - 8);
        sub_1D8E899C4(v11, v10, v63, v64, *v3);
        UniversalEpisodeIdentifier.urlTrackIdentifier()();
        v12 = URLTrackIdentifier.stringValue.getter();
        v4 = v13;
        sub_1D8E89A08(v11, v10, v63, v64, v9);

        v3 = v8;
        v1 = v57;
        if (v4)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = sub_1D8D4241C(0, *(v56 + 2) + 1, 1, v56);
          }

          v15 = *(v56 + 2);
          v14 = *(v56 + 3);
          if (v15 >= v14 >> 1)
          {
            v56 = sub_1D8D4241C((v14 > 1), v15 + 1, 1, v56);
          }

          *(v56 + 2) = v15 + 1;
          v16 = &v56[16 * v15];
          *(v16 + 4) = v12;
          *(v16 + 5) = v4;
          v7 = v47;
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_52;
    }
  }

  return v4;
}

char *sub_1D90CFCB0()
{
  v1 = *(&off_1E856C128 + *(v0 + 32));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1D8ECCFF4(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1D8ECCFF4((v2 > 1), v3 + 1, 1, v1);
  }

  *(v1 + 2) = v3 + 1;
  v1[v3 + 32] = 8;
  return v1;
}

uint64_t sub_1D90CFD54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v61 = &v43 - v6;
  v7 = *(v1 + 8);
  v62 = *v1;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = 1;
  v12 = 1;
  v14 = *(v1 + 152);
  v13 = *(v1 + 160);
  if (((1 << v10) & 0xDC) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 0;
    if (((1 << v10) & 0x23) == 0)
    {
LABEL_6:
      v57 = v11;
      v58 = 0;
      v59 = v12;
      goto LABEL_7;
    }
  }

  if (((1 << v10) & 0xDD) != 0)
  {
LABEL_5:
    v12 = v15;
    goto LABEL_6;
  }

  if (v10 != 1)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v57 = 0;
  v58 = 1;
  v59 = v15;
LABEL_7:
  v79 = v62;
  v80 = v7;
  v81 = v8;
  v82 = v9;
  v83 = v10;
  v88 = *(v1 + 97);
  v89 = *(v1 + 113);
  *v90 = *(v1 + 129);
  v16 = *(v1 + 144);
  v84 = *(v1 + 33);
  v85 = *(v1 + 49);
  v86 = *(v1 + 65);
  v87 = *(v1 + 81);
  *&v90[15] = v16;
  v91 = v14;
  v17 = v13;
  v92 = v13;
  *(v94 + 9) = *(v1 + 193);
  v94[0] = *(v1 + 184);
  v93 = *(v1 + 168);
  v56 = sub_1D90CFCB0();
  if (((1 << v10) & 0xDC) != 0)
  {
    v55 = sub_1D8D946F4(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    if (((1 << v10) & 0x122) == 0)
    {
      v55 = sub_1D8D946F4(&unk_1F54621C0);
      sub_1D900B924(&unk_1F54621E0);
      goto LABEL_18;
    }

    v55 = sub_1D8D946F4(&unk_1F54621F0);
    sub_1D900B924(&unk_1F5462210);
  }

  if (((1 << v10) & 0xDC) == 0)
  {
    if (((1 << v10) & 0x22) != 0)
    {
      v18 = &unk_1F5462130;
LABEL_19:
      v54 = sub_1D8D946F4(v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9A50, &unk_1D9197130);
      swift_arrayDestroy();
      goto LABEL_20;
    }

LABEL_18:
    v18 = &unk_1F54620F0;
    goto LABEL_19;
  }

  v54 = sub_1D8D946F4(MEMORY[0x1E69E7CC0]);
LABEL_20:
  v63 = v62;
  v64 = v7;
  v65 = v8;
  v66 = v9;
  v67 = v10;
  v72 = *(v2 + 97);
  v73 = *(v2 + 113);
  *v74 = *(v2 + 129);
  v19 = *(v2 + 144);
  v68 = *(v2 + 33);
  v69 = *(v2 + 49);
  v70 = *(v2 + 65);
  v71 = *(v2 + 81);
  *&v74[15] = v19;
  v75 = v14;
  v76 = v17;
  *(v78 + 9) = *(v2 + 193);
  v78[0] = *(v2 + 184);
  v77 = *(v2 + 168);
  v60 = sub_1D90CF75C();
  v20 = 1;
  v21 = 0;
  if (((1 << v10) & 0x1DC) != 0)
  {
    v21 = 0;
    if (v10 == 8 && v14 >= 1)
    {
      v22 = v7 | v62 | v8 | v9;
      v20 = v22 != 0;
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = v14;
      }
    }
  }

  v53 = v20;
  v52 = v21;
  if (v17 < 1 || v10 && (v10 != 8 || v7 | v62 | v8 | v9))
  {
    v62 = 0;
    v51 = 1;
  }

  else
  {
    v51 = 0;
    v62 = v17;
  }

  v23 = sub_1D9176C2C();
  v24 = *(*(v23 - 8) + 56);
  v24(v61, 1, 1, v23);
  v25 = MEMORY[0x1E69E7CC0];
  v50 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v49 = sub_1D8D94DF8(v25);
  v48 = sub_1D8D951E0(v25);
  v47 = sub_1D8D9503C(v25);
  v45 = sub_1D8D953C4(v25);
  v44 = sub_1D8D952D8(v25);
  v46 = sub_1D8D95394(v25);
  v43 = sub_1D8D957C4(v25);
  *(a1 + 41) = 263;
  *(a1 + 43) = 5;
  *(a1 + 152) = 1;
  *(a1 + 201) = 1;
  v26 = type metadata accessor for MediaRequest.Params();
  v27 = v26[28];
  v24((a1 + v27), 1, 1, v23);
  v28 = (a1 + v26[29]);
  v29 = (a1 + v26[31]);
  v30 = v26[34];
  v31 = (a1 + v26[33]);
  v32 = (a1 + v26[35]);
  *a1 = v59;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 4;
  v33 = v58;
  *(a1 + 41) = v57;
  *(a1 + 42) = v33;
  *(a1 + 43) = 5;
  v34 = v49;
  *(a1 + 48) = v50;
  *(a1 + 56) = v34;
  v35 = v56;
  *(a1 + 64) = v48;
  *(a1 + 72) = v35;
  v37 = v54;
  v36 = v55;
  *(a1 + 80) = v47;
  *(a1 + 88) = v36;
  v39 = v44;
  v38 = v45;
  *(a1 + 96) = v37;
  *(a1 + 104) = v38;
  *(a1 + 112) = v25;
  *(a1 + 120) = v39;
  *(a1 + 128) = &unk_1F5462220;
  *(a1 + 136) = v25;
  v40 = v61;
  *(a1 + 144) = v60;
  *(a1 + 152) = 1;
  *(a1 + 160) = v52;
  *(a1 + 168) = v53;
  v41 = v43;
  *(a1 + 176) = v46;
  *(a1 + 184) = v41;
  *(a1 + 192) = v62;
  *(a1 + 200) = v51;
  *(a1 + 201) = 1;
  result = sub_1D8E26828(v40, a1 + v27);
  *v28 = 0;
  v28[1] = 0;
  *(a1 + v26[30]) = 0;
  *v29 = 0;
  v29[1] = 0;
  *(a1 + v26[32]) = v25;
  *v31 = 0;
  v31[1] = 0;
  *(a1 + v30) = 2;
  *v32 = 0;
  v32[1] = 0;
  return result;
}

void *sub_1D90D02E0(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1D917935C();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1D8F06204(v2, 0);

    v1 = sub_1D8F0B0D0(&v5, v3 + 4, v2, v1);
    sub_1D8D1B144();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_1D90D0390(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1D90D0468(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44D8, &qword_1D91B6370);
      v7 = *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1D90D0630@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[11];
  *&v54[16] = a1[10];
  v55 = v2;
  v56 = a1[12];
  v57 = *(a1 + 208);
  v3 = a1[7];
  v51 = a1[6];
  v52 = v3;
  v4 = a1[9];
  v53 = a1[8];
  *v54 = v4;
  v5 = a1[3];
  *v48 = a1[2];
  *&v48[16] = v5;
  v6 = a1[5];
  v49 = a1[4];
  v50 = v6;
  v7 = a1[1];
  v46 = *a1;
  v47 = v7;
  if (v54[24] || v48[0] != 3)
  {
    v24 = a1[11];
    *(a2 + 160) = a1[10];
    *(a2 + 176) = v24;
    *(a2 + 192) = a1[12];
    *(a2 + 208) = *(a1 + 208);
    v25 = a1[7];
    *(a2 + 96) = a1[6];
    *(a2 + 112) = v25;
    v26 = a1[9];
    *(a2 + 128) = a1[8];
    *(a2 + 144) = v26;
    v27 = a1[3];
    *(a2 + 32) = a1[2];
    *(a2 + 48) = v27;
    v28 = a1[5];
    *(a2 + 64) = a1[4];
    *(a2 + 80) = v28;
    v29 = a1[1];
    *a2 = *a1;
    *(a2 + 16) = v29;
    return sub_1D90D09E0(&v46, v45);
  }

  v10 = v46;
  v11 = sub_1D90D0AB4(v46, *(&v46 + 1));
  if (v12)
  {
    if (qword_1ECAB0D48 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1ECAB0D50);

    v14 = sub_1D917741C();
    v15 = sub_1D9178CFC();
    sub_1D8CFEACC(v46, *(&v46 + 1), v47, *(&v47 + 1), 3u);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v45[0] = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1D8CFA924(v10, *(&v10 + 1), v45);
      _os_log_impl(&dword_1D8CEC000, v14, v15, "Adam id not found in local library for %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1DA72CB90](v17, -1, -1);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    v18 = v55;
    *(a2 + 160) = *&v54[16];
    *(a2 + 176) = v18;
    *(a2 + 192) = v56;
    *(a2 + 208) = v57;
    v19 = v52;
    *(a2 + 96) = v51;
    *(a2 + 112) = v19;
    v20 = *v54;
    *(a2 + 128) = v53;
    *(a2 + 144) = v20;
    v21 = *&v48[16];
    *(a2 + 32) = *v48;
    *(a2 + 48) = v21;
    v22 = v50;
    *(a2 + 64) = v49;
    *(a2 + 80) = v22;
    v23 = v47;
    *a2 = v46;
    *(a2 + 16) = v23;
    return sub_1D90D09E0(&v46, v45);
  }

  v31 = v11;
  if (qword_1ECAB0D48 != -1)
  {
    swift_once();
  }

  v32 = sub_1D917744C();
  __swift_project_value_buffer(v32, qword_1ECAB0D50);
  v33 = sub_1D917741C();
  v34 = sub_1D9178D1C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1D8CEC000, v33, v34, "Sucessfully transformed a local request to a MAPI request", v35, 2u);
    MEMORY[0x1DA72CB90](v35, -1, -1);
  }

  v36 = *&v48[24];
  v37 = v55;
  v38 = v56;
  *a2 = v31;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 152) = *&v54[8];
  v39 = *&v48[8];
  *(a2 + 40) = *&v48[8];
  *(a2 + 56) = v36;
  *(a2 + 168) = 0;
  v40 = v57;
  v41 = a1[7];
  *(a2 + 96) = a1[6];
  *(a2 + 112) = v41;
  *(a2 + 128) = a1[8];
  *(a2 + 141) = *(a1 + 141);
  v42 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v42;
  *(a2 + 176) = v37;
  *(a2 + 192) = v38;
  v43 = v39;
  *(a2 + 208) = v40;

  v44 = v43;
  sub_1D90CEEE0(&v49, v45);
  return sub_1D8D0B37C(v37, *(&v37 + 1), v38, *(&v38 + 1), v40);
}

void sub_1D90D0A3C(void **a1, void *a2)
{
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v5 = [a2 podcastForUuid_];

  v6 = *a1;
  *a1 = v5;
}

uint64_t sub_1D90D0AB4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 mainQueueContext];

  v17 = 0;
  v6 = swift_allocObject();
  v6[2] = &v17;
  v6[3] = v5;
  v6[4] = a1;
  v6[5] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D90D0CF8;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1D8D24508;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_80;
  v8 = _Block_copy(aBlock);
  v9 = v5;

  [v9 performBlockAndWait_];
  _Block_release(v8);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v11 = v17;
    if (v17)
    {
      v12 = objc_opt_self();
      v13 = v11;
      if ([v12 isEmpty_])
      {

        v11 = 0;
      }

      else
      {
        v14 = [v13 storeCollectionId];

        v11 = (v14 & ~(v14 >> 63));
      }
    }

    else
    {
    }

    v15 = v17;

    return v11;
  }

  return result;
}

void sub_1D90D0CF8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1D90D0A3C(*(v0 + 16), *(v0 + 24));
}

uint64_t PodcastsMediaLibrary.Response.nextRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 184);
  v16[10] = *(v1 + 168);
  v16[11] = v2;
  v16[12] = *(v1 + 200);
  v17 = *(v1 + 216);
  v3 = *(v1 + 120);
  v16[6] = *(v1 + 104);
  v16[7] = v3;
  v4 = *(v1 + 152);
  v16[8] = *(v1 + 136);
  v16[9] = v4;
  v5 = *(v1 + 56);
  v16[2] = *(v1 + 40);
  v16[3] = v5;
  v6 = *(v1 + 88);
  v16[4] = *(v1 + 72);
  v16[5] = v6;
  v7 = *(v1 + 24);
  v16[0] = *(v1 + 8);
  v16[1] = v7;
  v8 = *(v1 + 184);
  *(a1 + 160) = *(v1 + 168);
  *(a1 + 176) = v8;
  *(a1 + 192) = *(v1 + 200);
  *(a1 + 208) = *(v1 + 216);
  v9 = *(v1 + 120);
  *(a1 + 96) = *(v1 + 104);
  *(a1 + 112) = v9;
  v10 = *(v1 + 152);
  *(a1 + 128) = *(v1 + 136);
  *(a1 + 144) = v10;
  v11 = *(v1 + 56);
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = v11;
  v12 = *(v1 + 88);
  *(a1 + 64) = *(v1 + 72);
  *(a1 + 80) = v12;
  v13 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v13;
  return sub_1D90D0E00(v16, v15);
}

uint64_t sub_1D90D0E00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA5B0, &qword_1D91B5758);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation0A12MediaLibraryC7RequestVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy218_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 202) = *(a2 + 202);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1D90D0EE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 218))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D90D0F28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 216) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 218) = 1;
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

    *(result + 218) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D90D0FB0(__int128 *a1)
{
  v3 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[11];
  v38 = a1[10];
  v39 = v8;
  v40 = a1[12];
  v41 = *(a1 + 208);
  v9 = a1[7];
  v34 = a1[6];
  v35 = v9;
  v10 = a1[9];
  v36 = a1[8];
  v37 = v10;
  v11 = a1[3];
  v30 = a1[2];
  v31 = v11;
  v12 = a1[5];
  v32 = a1[4];
  v33 = v12;
  v13 = a1[1];
  v28 = *a1;
  v29 = v13;
  v14 = *(*v1 + 16);
  if (v14)
  {
    v15 = *v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    v17 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D90D11F4(v15, v7);
      if (v7[56] == 1)
      {
        sub_1D9096E98(v7);
      }

      else
      {
        v27[1] = *(v7 + 6);
        sub_1D8E40D20();
        v18 = sub_1D917927C();
        v20 = v19;
        sub_1D9096E98(v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1D8D4241C(0, *(v17 + 2) + 1, 1, v17);
        }

        v22 = *(v17 + 2);
        v21 = *(v17 + 3);
        if (v22 >= v21 >> 1)
        {
          v17 = sub_1D8D4241C((v21 > 1), v22 + 1, 1, v17);
        }

        *(v17 + 2) = v22 + 1;
        v23 = &v17[16 * v22];
        *(v23 + 4) = v18;
        *(v23 + 5) = v20;
      }

      v15 += v16;
      --v14;
    }

    while (v14);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v24 = sub_1D90CF75C();
  v25 = sub_1D90D1258(v24, v17);

  return v25;
}

uint64_t sub_1D90D11F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D90D1258(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = (a2 + 40);
  v6 = (a1 + 40);
  while (v4 != v3)
  {
    v7 = *(v5 - 1) == *(v6 - 1) && *v5 == *v6;
    if (!v7 && (sub_1D9179ACC() & 1) == 0)
    {
      return v3;
    }

    ++v3;
    v5 += 2;
    v6 += 2;
    if (v2 == v3)
    {
      return v2;
    }
  }

  return v4;
}

void *sub_1D90D12F4(__int128 *a1)
{
  v114 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v95 = *(v2 - 8);
  v3 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v83 - v7;
  v9 = type metadata accessor for MediaRequest.Params();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D917825C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[11];
  v110 = a1[10];
  v111 = v18;
  v112 = a1[12];
  v113 = *(a1 + 208);
  v19 = a1[7];
  v106 = a1[6];
  v107 = v19;
  v20 = a1[9];
  v108 = a1[8];
  v109 = v20;
  v21 = a1[3];
  v102 = a1[2];
  v103 = v21;
  v22 = a1[5];
  v104 = a1[4];
  v105 = v22;
  v23 = a1[1];
  v100 = *a1;
  v101 = v23;
  if (!*(&v103 + 1))
  {
    goto LABEL_11;
  }

  v92 = v5;

  sub_1D917824C();
  v24 = sub_1D917821C();
  v26 = v25;

  (*(v14 + 8))(v17, v13);
  if (v26 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v27 = objc_opt_self();
  v28 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  *&v98[0] = 0;
  v29 = [v27 JSONObjectWithData:v28 options:0 error:v98];

  if (!v29)
  {
    v37 = *&v98[0];
    sub_1D90CF72C(&v100);
    v38 = sub_1D9176A6C();

    swift_willThrow();
    sub_1D8D75668(v24, v26);

    goto LABEL_12;
  }

  v30 = *&v98[0];
  sub_1D917928C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4638, &qword_1D918A078);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D8D75668(v24, v26);
LABEL_11:
    sub_1D90CF72C(&v100);
LABEL_12:
    if (qword_1ECAB0D48 != -1)
    {
      goto LABEL_68;
    }

    goto LABEL_13;
  }

  v89 = v24;
  v31 = v97;
  type metadata accessor for MediaRequestResponseParser();
  v98[11] = v111;
  v98[12] = v112;
  v98[7] = v107;
  v98[8] = v108;
  v99 = v113;
  v98[9] = v109;
  v98[10] = v110;
  v98[2] = v102;
  v98[3] = v103;
  v98[4] = v104;
  v98[5] = v105;
  v98[6] = v106;
  v98[0] = v100;
  v98[1] = v101;
  sub_1D90CFD54(v12);
  sub_1D90CF72C(&v100);
  _s18PodcastsFoundation26MediaRequestResponseParserC15extractNextPageySSSgSDys11AnyHashableVypGFZ_0(v31);
  if (v32)
  {
  }

  sub_1D90507E0(v31, &v97);
  v33 = v97;
  if (BYTE1(v97) == 1)
  {
    sub_1D904FAFC();
    v34 = swift_allocError();
    *v35 = v33;

    sub_1D8D90BEC(v12);
    v36 = v89;
    goto LABEL_20;
  }

  v96[0] = v97;
  v45 = sub_1D9052EB8(v31, v96);
  v34 = v46;

  sub_1D8D90BEC(v12);
  v36 = v89;
  if (!v34)
  {
    v97 = MEMORY[0x1E69E7CC0];
    v55 = v45;
    if (v45 >> 62)
    {
      v56 = sub_1D917935C();
      if (v56)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v56 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v56)
      {
LABEL_26:
        v34 = 0;
        v87 = v56;
        v88 = v45 & 0xC000000000000001;
        v83 = v45 + 32;
        v84 = v45 & 0xFFFFFFFFFFFFFF8;
        v93 = v8;
        v85 = v26;
        v86 = v45;
        while (1)
        {
          while (1)
          {
            if (v88)
            {
              v58 = MEMORY[0x1DA72AA90](v34, v55);
              v59 = __OFADD__(v34++, 1);
              if (v59)
              {
                goto LABEL_69;
              }
            }

            else
            {
              if (v34 >= *(v84 + 16))
              {
                goto LABEL_70;
              }

              v58 = *(v83 + 8 * v34);
              swift_unknownObjectRetain();
              v59 = __OFADD__(v34++, 1);
              if (v59)
              {
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
                goto LABEL_71;
              }
            }

            v91 = v34;
            type metadata accessor for ServerPodcast();
            v90 = v58;
            v60 = swift_dynamicCastClass();
            if (!v60)
            {
              break;
            }

            v61 = v60;
            v62 = OBJC_IVAR___MTServerPodcast_episodes;
            swift_beginAccess();
            v63 = *&v61[v62];
            if (!v63)
            {
              break;
            }

            v64 = v63 & 0xFFFFFFFFFFFFFF8;
            if (v63 >> 62)
            {
              if (v63 < 0)
              {
                v82 = *&v61[v62];
              }

              v65 = sub_1D917935C();
            }

            else
            {
              v65 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v65)
            {
              v66 = 0;
              v94 = v63 & 0xC000000000000001;
              v57 = MEMORY[0x1E69E7CC0];
              while (1)
              {
                if (v94)
                {
                  v67 = MEMORY[0x1DA72AA90](v66, v63);
                }

                else
                {
                  if (v66 >= *(v64 + 16))
                  {
                    goto LABEL_67;
                  }

                  v67 = *(v63 + 8 * v66 + 32);
                }

                v68 = v67;
                v69 = v66 + 1;
                if (__OFADD__(v66, 1))
                {
                  break;
                }

                v70 = v61;
                sub_1D90C554C(v68, v61, 1, v8);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v57 = sub_1D8ECD960(0, v57[2] + 1, 1, v57);
                }

                v72 = v57[2];
                v71 = v57[3];
                if (v72 >= v71 >> 1)
                {
                  v57 = sub_1D8ECD960(v71 > 1, v72 + 1, 1, v57);
                }

                v57[2] = v72 + 1;
                v73 = v57 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v72;
                v8 = v93;
                sub_1D90977D8(v93, v73);
                ++v66;
                v74 = v69 == v65;
                v64 = v63 & 0xFFFFFFFFFFFFFF8;
                if (v74)
                {
                  goto LABEL_28;
                }
              }

              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              swift_once();
LABEL_13:
              v39 = sub_1D917744C();
              __swift_project_value_buffer(v39, qword_1ECAB0D50);
              v40 = sub_1D917741C();
              v41 = sub_1D9178CFC();
              if (os_log_type_enabled(v40, v41))
              {
                v42 = swift_slowAlloc();
                *v42 = 0;
                _os_log_impl(&dword_1D8CEC000, v40, v41, "Siri sidepack is not valid JSON", v42, 2u);
                MEMORY[0x1DA72CB90](v42, -1, -1);
              }

LABEL_15:

              goto LABEL_16;
            }

            v57 = MEMORY[0x1E69E7CC0];
LABEL_28:

            sub_1D8E30274(v57);
            swift_unknownObjectRelease();
            v26 = v85;
            v55 = v86;
            v36 = v89;
LABEL_29:
            v34 = v91;
            if (v91 == v87)
            {
              goto LABEL_65;
            }
          }

          type metadata accessor for ServerPodcastEpisode();
          v75 = swift_dynamicCastClass();
          if (!v75)
          {
            swift_unknownObjectRelease();
            goto LABEL_29;
          }

          v76 = v75;
          swift_unknownObjectRetain();
          sub_1D90C554C(v76, 0, 1, v92);
          v77 = v97;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v79 = v87;
          v34 = v91;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v77 = sub_1D8ECD960(0, v77[2] + 1, 1, v77);
          }

          v81 = v77[2];
          v80 = v77[3];
          if (v81 >= v80 >> 1)
          {
            v77 = sub_1D8ECD960(v80 > 1, v81 + 1, 1, v77);
          }

          swift_unknownObjectRelease();
          v77[2] = v81 + 1;
          sub_1D90977D8(v92, v77 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v81);
          v97 = v77;
          v55 = v86;
          if (v34 == v79)
          {
LABEL_65:
            sub_1D8D75668(v36, v26);

            goto LABEL_74;
          }
        }
      }
    }

    sub_1D8D75668(v36, v26);

LABEL_74:
    result = v97;
    goto LABEL_17;
  }

LABEL_20:
  if (qword_1ECAB0D48 != -1)
  {
LABEL_71:
    swift_once();
  }

  v47 = sub_1D917744C();
  __swift_project_value_buffer(v47, qword_1ECAB0D50);
  v48 = v34;
  v40 = sub_1D917741C();
  v49 = sub_1D9178CFC();

  if (os_log_type_enabled(v40, v49))
  {
    v50 = swift_slowAlloc();
    v51 = v36;
    v52 = swift_slowAlloc();
    *v50 = 138412290;
    v53 = v34;
    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v50 + 4) = v54;
    *v52 = v54;
    sub_1D8E262AC(v52);
    MEMORY[0x1DA72CB90](v52, -1, -1);
    MEMORY[0x1DA72CB90](v50, -1, -1);
    sub_1D8D75668(v51, v26);

    goto LABEL_15;
  }

  sub_1D8D75668(v36, v26);

LABEL_16:
  result = 0;
LABEL_17:
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

PodcastsFoundation::URLTrackIdentifier __swiftcall UniversalEpisodeIdentifier.urlTrackIdentifier()()
{
  v2 = v0;
  v3 = *v1;
  if (*(v1 + 32))
  {
    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
    v6 = *(v1 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA520, &unk_1D91B5B60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D918A530;
    *(inited + 32) = 8;
    *(inited + 40) = v3;
    *(inited + 48) = v6;
    *(inited + 56) = 5;
    *(inited + 64) = v5;
    *(inited + 72) = v4;
    sub_1D8E899C4(v3, v6, v5, v4, 1);
    v8 = sub_1D8E27754(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA528, &qword_1D91B4C70);
    result.arguments._rawValue = swift_arrayDestroy();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA520, &unk_1D91B5B60);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_1D9189080;
    *(v10 + 32) = 3;
    sub_1D8E40D20();
    *(v10 + 40) = sub_1D917927C();
    *(v10 + 48) = v11;
    v8 = sub_1D8E27754(v10);
    swift_setDeallocating();
    result.arguments._rawValue = sub_1D90D2F8C(v10 + 32);
  }

  *(v2 + 8) = 4;
  *v2 = v8;
  result.command = v9;
  return result;
}

uint64_t sub_1D90D1E84(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA608, &qword_1D91B5F38);
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA610, &qword_1D91B5F40);
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA618, &qword_1D91B5F48);
  v12 = *(v29 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v15 = &v25 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90D32E4();
  sub_1D9179F1C();
  v17 = *v2;
  if (v2[4])
  {
    v19 = v2[2];
    v18 = v2[3];
    v20 = v2[1];
    v34 = 1;
    sub_1D90D3338();
    sub_1D917993C();
    v33 = 0;
    v22 = v27;
    v21 = v28;
    sub_1D91799BC();
    if (!v21)
    {
      v32 = 1;
      sub_1D91799BC();
    }

    (*(v26 + 8))(v7, v22);
    return (*(v12 + 8))(v15, v29);
  }

  else
  {
    v31 = 0;
    sub_1D90D338C();
    v23 = v29;
    sub_1D917993C();
    v30 = v17;
    sub_1D8EF1720();
    sub_1D91799FC();
    (*(v25 + 8))(v11, v8);
    return (*(v12 + 8))(v15, v23);
  }
}

uint64_t sub_1D90D21E8(uint64_t a1)
{
  v2 = sub_1D90D338C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90D2224(uint64_t a1)
{
  v2 = sub_1D90D338C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D90D2260()
{
  if (*v0)
  {
    result = 1684632935;
  }

  else
  {
    result = 0x44496D616461;
  }

  *v0;
  return result;
}

uint64_t sub_1D90D2290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44496D616461 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684632935 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();

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

uint64_t sub_1D90D2368(uint64_t a1)
{
  v2 = sub_1D90D32E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90D23A4(uint64_t a1)
{
  v2 = sub_1D90D32E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D90D23E0()
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

uint64_t sub_1D90D23FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D9179ACC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();

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

uint64_t sub_1D90D24C8(uint64_t a1)
{
  v2 = sub_1D90D3338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90D2504(uint64_t a1)
{
  v2 = sub_1D90D3338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D90D2540@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D90D33E0(a1, v6);
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

uint64_t sub_1D90D25A0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 32);
  if (*(a1 + 32) != 1)
  {
    return (v3 == v4) & ~v5;
  }

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[2];
  v9 = a2[3];
  if (v3 != v4 || a1[1] != a2[1])
  {
    v11 = a1[1];
    if ((sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  if (v6 == v8 && v7 == v9)
  {
    return 1;
  }

  return sub_1D9179ACC();
}

uint64_t sub_1D90D266C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v4 = sub_1D8F06F8C(3);
    if (v5)
    {
      v6 = (*(v3 + 56) + 16 * v4);
      v7 = v6[1];
      if (v7)
      {
        v8 = *v6;
        v9 = v6[1];

        v10 = sub_1D8FE6808(v8, v7);

        if (v10 && v10 != 1000000000000)
        {

          v23 = 0;
          v24 = 0uLL;
          v25 = v10;
LABEL_19:
          *a2 = v25;
          *(a2 + 16) = v24;
          goto LABEL_18;
        }
      }
    }

    if (*(v3 + 16))
    {
      v12 = sub_1D8F06F8C(8);
      if (v13)
      {
        v14 = (*(v3 + 56) + 16 * v12);
        v15 = v14[1];
        if (v15)
        {
          if (*(v3 + 16))
          {
            v16 = *v14;
            v17 = v14[1];

            v18 = sub_1D8F06F8C(5);
            if (v19)
            {
              v20 = (*(v3 + 56) + 16 * v18);
              v21 = v20[1];
              v26 = *v20;

              if (v21)
              {
                *&v24 = v26;
                *(&v24 + 1) = v21;
                *&v25 = v16;
                *(&v25 + 1) = v15;
                v23 = 1;
                goto LABEL_19;
              }
            }

            else
            {
            }
          }
        }
      }
    }
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  v23 = -1;
LABEL_18:
  *(a2 + 32) = v23;
  return result;
}

uint64_t sub_1D90D27E8(uint64_t a1)
{
  v2 = sub_1D90D2FF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90D2824(uint64_t a1)
{
  v2 = sub_1D90D2FF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UniversalEpisodeIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA5B8, &qword_1D91B5B70);
  v4 = *(v3 - 8);
  v17 = v3;
  v18 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D8E899C4(v8, v9, v10, v11, v12);
  sub_1D90D2FF4();
  sub_1D9179F1C();
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  sub_1D90D3048();
  v14 = v17;
  sub_1D91799FC();
  sub_1D8E89A08(v8, v9, v10, v11, v12);
  return (*(v18 + 8))(v7, v14);
}

uint64_t UniversalEpisodeIdentifier.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 32) == 1)
  {
    v3 = v0[2];
    v2 = v0[3];
    v4 = v0[1];
    MEMORY[0x1DA72B390](1);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

    return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    return MEMORY[0x1DA72B3C0](v1);
  }
}

uint64_t UniversalEpisodeIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1D9179DBC();
  if (v5 == 1)
  {
    MEMORY[0x1DA72B390](1);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v1);
  }

  return sub_1D9179E1C();
}

uint64_t UniversalEpisodeIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA5D0, &qword_1D91B5B78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90D2FF4();
  sub_1D9179EEC();
  if (!v2)
  {
    sub_1D90D309C();
    sub_1D91798FC();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D90D2CBC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1D9179DBC();
  if (v5 == 1)
  {
    MEMORY[0x1DA72B390](1);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v1);
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D90D2D60()
{
  v1 = *v0;
  if (*(v0 + 32) == 1)
  {
    v3 = v0[2];
    v2 = v0[3];
    v4 = v0[1];
    MEMORY[0x1DA72B390](1);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

    return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    return MEMORY[0x1DA72B3C0](v1);
  }
}

uint64_t sub_1D90D2E08()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1D9179DBC();
  if (v5 == 1)
  {
    MEMORY[0x1DA72B390](1);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v1);
  }

  return sub_1D9179E1C();
}

uint64_t _s18PodcastsFoundation26UniversalEpisodeIdentifierV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 32);
  if (*(a1 + 32) == 1)
  {
    if ((a2[4] & 1) == 0)
    {
      return 0;
    }

    v6 = a1[2];
    v7 = a1[3];
    v8 = a2[2];
    v9 = a2[3];
    if (v3 != v4 || a1[1] != a2[1])
    {
      v11 = a1[1];
      if ((sub_1D9179ACC() & 1) == 0)
      {
        return 0;
      }
    }

    v12 = v6 == v8 && v7 == v9;
    if (!v12 && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v3 != v4)
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D90D2F8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA528, &qword_1D91B4C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D90D2FF4()
{
  result = qword_1ECABA5C0;
  if (!qword_1ECABA5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA5C0);
  }

  return result;
}

unint64_t sub_1D90D3048()
{
  result = qword_1ECABA5C8;
  if (!qword_1ECABA5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA5C8);
  }

  return result;
}

unint64_t sub_1D90D309C()
{
  result = qword_1ECABA5D8;
  if (!qword_1ECABA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA5D8);
  }

  return result;
}

unint64_t sub_1D90D30F4()
{
  result = qword_1ECABA5E0;
  if (!qword_1ECABA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA5E0);
  }

  return result;
}

unint64_t sub_1D90D3188()
{
  result = qword_1ECABA5E8;
  if (!qword_1ECABA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA5E8);
  }

  return result;
}

unint64_t sub_1D90D31E0()
{
  result = qword_1ECABA5F0;
  if (!qword_1ECABA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA5F0);
  }

  return result;
}

unint64_t sub_1D90D3238()
{
  result = qword_1ECABA5F8;
  if (!qword_1ECABA5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA5F8);
  }

  return result;
}

unint64_t sub_1D90D3290()
{
  result = qword_1ECABA600;
  if (!qword_1ECABA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA600);
  }

  return result;
}

unint64_t sub_1D90D32E4()
{
  result = qword_1ECABA620;
  if (!qword_1ECABA620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA620);
  }

  return result;
}

unint64_t sub_1D90D3338()
{
  result = qword_1ECABA628;
  if (!qword_1ECABA628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA628);
  }

  return result;
}

unint64_t sub_1D90D338C()
{
  result = qword_1ECABA630;
  if (!qword_1ECABA630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA630);
  }

  return result;
}

uint64_t sub_1D90D33E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA638, &qword_1D91B5F50);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA640, &qword_1D91B5F58);
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA648, &unk_1D91B5F60);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D90D32E4();
  v18 = v46;
  sub_1D9179EEC();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v47);
  }

  v46 = v12;
  v19 = v44;
  v20 = v45;
  v21 = sub_1D917991C();
  v22 = (2 * *(v21 + 16)) | 1;
  v48 = v21;
  v49 = v21 + 32;
  v50 = 0;
  v51 = v22;
  v23 = sub_1D8E89BE0();
  if (v23 == 2 || v50 != v51 >> 1)
  {
    v25 = sub_1D917951C();
    swift_allocError();
    v27 = v26;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50) + 48);
    *v27 = &type metadata for UniversalEpisodeIdentifier.Identifier;
    sub_1D917983C();
    sub_1D91794FC();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v46 + 8))(v15, v11);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v47);
  }

  v41 = v23;
  if (v23)
  {
    LOBYTE(v52) = 1;
    sub_1D90D3338();
    sub_1D917982C();
    v24 = v46;
    LOBYTE(v52) = 0;
    v31 = v6;
    v32 = sub_1D91798BC();
    v34 = v33;
    v40 = v32;
    v42 = v11;
    LOBYTE(v52) = 1;
    v35 = sub_1D91798BC();
    v36 = *(v43 + 8);
    v46 = v37;
    v36(v31, v19);
    (*(v24 + 8))(v15, v42);
    swift_unknownObjectRelease();
    v38 = v40;
    v39 = v46;
  }

  else
  {
    LOBYTE(v52) = 0;
    sub_1D90D338C();
    sub_1D917982C();
    v30 = v46;
    sub_1D8EF1774();
    sub_1D91798FC();
    (*(v42 + 8))(v10, v7);
    (*(v30 + 8))(v15, v11);
    swift_unknownObjectRelease();
    v34 = 0;
    v35 = 0;
    v39 = 0;
    v38 = v52;
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(v47);
  *v20 = v38;
  *(v20 + 8) = v34;
  *(v20 + 16) = v35;
  *(v20 + 24) = v39;
  *(v20 + 32) = v41 & 1;
  return result;
}

unint64_t sub_1D90D39F8()
{
  result = qword_1ECABA650;
  if (!qword_1ECABA650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA650);
  }

  return result;
}

unint64_t sub_1D90D3A50()
{
  result = qword_1ECABA658;
  if (!qword_1ECABA658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA658);
  }

  return result;
}

unint64_t sub_1D90D3AA8()
{
  result = qword_1ECABA660;
  if (!qword_1ECABA660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA660);
  }

  return result;
}

unint64_t sub_1D90D3B00()
{
  result = qword_1ECABA668;
  if (!qword_1ECABA668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA668);
  }

  return result;
}

unint64_t sub_1D90D3B58()
{
  result = qword_1ECABA670;
  if (!qword_1ECABA670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA670);
  }

  return result;
}

unint64_t sub_1D90D3BB0()
{
  result = qword_1ECABA678;
  if (!qword_1ECABA678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA678);
  }

  return result;
}

unint64_t sub_1D90D3C08()
{
  result = qword_1ECABA680;
  if (!qword_1ECABA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA680);
  }

  return result;
}

unint64_t sub_1D90D3C60()
{
  result = qword_1ECABA688;
  if (!qword_1ECABA688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA688);
  }

  return result;
}

unint64_t sub_1D90D3CB8()
{
  result = qword_1ECABA690;
  if (!qword_1ECABA690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA690);
  }

  return result;
}

void *sub_1D90D3D20(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v31 - v5;
  v38 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v7 = *(v38 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v31 - v11;
  v35 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D917931C();
    sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
    sub_1D8D54E74(&qword_1ECAAFC60, &qword_1EDCD5B00, off_1E85675C8);
    result = sub_1D9178B3C();
    a1 = v40;
    v13 = v41;
    v15 = v42;
    v14 = v43;
    v16 = v44;
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v13 = a1 + 56;
    v15 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(a1 + 56);

    v14 = 0;
  }

  v34 = v15;
  v37 = (v7 + 56);
  v32 = v7;
  v20 = (v7 + 48);
  v36 = MEMORY[0x1E69E7CC0];
  while (a1 < 0)
  {
    v24 = sub_1D917938C();
    if (!v24 || (v39 = v24, sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8), swift_dynamicCast(), (v23 = v45) == 0))
    {
LABEL_24:
      sub_1D8D1B144();
      return v36;
    }

LABEL_17:
    v25 = v23;
    sub_1D90BFA08(v25, v6);
    v26 = v38;
    (*v37)(v6, 0, 1, v38);

    if ((*v20)(v6, 1, v26) == 1)
    {
      result = sub_1D8D08A50(v6, &qword_1ECAB9F70, qword_1D91B1680);
    }

    else
    {
      v27 = v31;
      sub_1D90DDFAC(v6, v31, type metadata accessor for PodcastsMediaLibrary.MediaItem);
      sub_1D90DDFAC(v27, v33, type metadata accessor for PodcastsMediaLibrary.MediaItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1D8ECD960(0, v36[2] + 1, 1, v36);
      }

      v29 = v36[2];
      v28 = v36[3];
      if (v29 >= v28 >> 1)
      {
        v36 = sub_1D8ECD960(v28 > 1, v29 + 1, 1, v36);
      }

      v30 = v36;
      v36[2] = v29 + 1;
      result = sub_1D90DDFAC(v33, v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v29, type metadata accessor for PodcastsMediaLibrary.MediaItem);
    }
  }

  v21 = v14;
  v22 = v16;
  if (v16)
  {
LABEL_13:
    v16 = (v22 - 1) & v22;
    v23 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v23)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= ((v15 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v22 = *(v13 + 8 * v14);
    ++v21;
    if (v22)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D90D4168(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = &v49 - v16;
  v53 = a5;
  v51 = *(a5 - 8);
  v17 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v63 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v64 = &v49 - v21;
  v22 = sub_1D91791BC();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v57 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v49 - v26;
  v28 = *(*(a4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v56 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v62 = *(a3 - 1);
  v32 = *(v62 + 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v38 = &v49 - v37;
  v39 = sub_1D917840C();
  v70 = sub_1D917960C();
  v65 = sub_1D917961C();
  sub_1D91795BC();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_1D91783FC();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1D91791DC();
      result = (*v41)(v27, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v27, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v27, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v27, AssociatedTypeWitness);
      sub_1D91795FC();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_1D91791DC();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_1D91795FC();
      sub_1D91791DC();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}