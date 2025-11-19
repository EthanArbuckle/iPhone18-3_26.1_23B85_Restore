void sub_1A948EFB8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  if (a2)
  {
    sub_1A9379534(*a1, (v2 + 5));
    v6 = v2[8];
    v7 = v2[9];
    v8 = sub_1A93780F4(v2 + 5, v6);
    v9 = sub_1A9386128(sub_1A948C674, 0, v6, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
    sub_1A93B0B3C(v9);
    v11 = v10;
    v13 = v12;

    *(v5 + 144) = v11;
    *(v5 + 152) = v13;
    sub_1A9378138(v2 + 5);
  }

  else
  {
    v14 = v2[3];
    v15 = v2[4];
    v16 = sub_1A93780F4(*a1, v14);
    v17 = sub_1A9386128(sub_1A948C674, 0, v14, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
    sub_1A93B0B3C(v17);
    v19 = v18;
    v21 = v20;

    *(v5 + 144) = v19;
    *(v5 + 152) = v21;
  }

  sub_1A9378138(v2);

  free(v2);
}

uint64_t CoreSynthesizer.Voice.locales.getter@<X0>(void *a1@<X8>)
{
  v37 = a1;
  v39 = sub_1A957B308();
  v2 = *(v39 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v39, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[16];
  v8 = v1[17];
  v9 = v1[19];
  v40 = v7;
  v41 = v8;
  v10 = *(v9 + 16);

  if (v10)
  {
    v38 = v6;
    v11 = 0;
    v12 = v9 + 32;
    while (1)
    {
      v13 = (v12 + 16 * v11);
      v15 = *v13;
      v14 = v13[1];
      v17 = v40;
      v16 = v41;
      v18 = *(v41 + 16);
      if (v40)
      {
        v19 = v13[1];

        sub_1A93B1894(v15, v14, v16 + 32, v18, (v17 + 16));
        v21 = v20;

        if ((v21 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v18)
        {
          v22 = (v41 + 40);
          do
          {
            v23 = *(v22 - 1) == v15 && *v22 == v14;
            if (v23 || (sub_1A957D3E8() & 1) != 0)
            {
              goto LABEL_6;
            }

            v22 += 2;
          }

          while (--v18);
        }
      }

      sub_1A93B13D0(v15, v14);
LABEL_5:

LABEL_6:
      if (++v11 == v10)
      {
        v7 = v40;
        v8 = v41;
        v6 = v38;
        break;
      }
    }
  }

  v24 = *(v8 + 16);
  if (v24)
  {
    v36 = v7;
    v40 = MEMORY[0x1E69E7CC0];
    result = sub_1A93ABB88(0, v24, 0);
    v26 = 0;
    v27 = v40;
    v38 = (v2 + 32);
    v28 = (v8 + 40);
    while (v26 < *(v8 + 16))
    {
      v29 = *(v28 - 1);
      v30 = *v28;

      sub_1A957B1B8();
      v40 = v27;
      v31 = v6;
      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1A93ABB88(v32 > 1, v33 + 1, 1);
        v27 = v40;
      }

      ++v26;
      *(v27 + 16) = v33 + 1;
      result = (*(v2 + 32))(v27 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v33, v31, v39);
      v28 += 2;
      v6 = v31;
      if (v24 == v26)
      {

        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v34 = sub_1A937829C(&qword_1EB387268, &unk_1A9591CB0);
    v35 = v37;
    v37[3] = v34;
    result = sub_1A93B744C(&qword_1EB386450, &qword_1EB387268, &unk_1A9591CB0);
    v35[4] = result;
    *v35 = v27;
  }

  return result;
}

uint64_t CoreSynthesizer.Voice.primaryLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v11[-1] - v5;
  CoreSynthesizer.Voice.primaryLocales.getter(v11);
  sub_1A93780F4(v11, v11[3]);
  sub_1A957C9C8();
  v7 = sub_1A957B308();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1A937B960(v6, &qword_1EB386988, &qword_1A9587830);
    sub_1A9378138(v11);
    result = sub_1A957D0A8();
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(a1, v6, v7);
    return sub_1A9378138(v11);
  }

  return result;
}

uint64_t CoreSynthesizer.Voice.componentDescription.getter()
{
  result = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  return result;
}

uint64_t CoreSynthesizer.Voice.downloadSizeBytes.setter(uint64_t result)
{
  *(v1 + 180) = result;
  *(v1 + 184) = BYTE4(result) & 1;
  return result;
}

uint64_t CoreSynthesizer.Voice.diskSizeBytes.setter(uint64_t result)
{
  *(v1 + 188) = result;
  *(v1 + 192) = BYTE4(result) & 1;
  return result;
}

uint64_t CoreSynthesizer.Voice.assetId.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[25];
  v3 = v1[26];
  v4 = v1[27];
  v5 = v1[28];
  v6 = v1[29];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_1A9495608(v2, v3);
}

uint64_t CoreSynthesizer.Voice.newerAssetId.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[30];
  v3 = v1[31];
  v4 = v1[32];
  v5 = v1[33];
  v6 = v1[34];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_1A9495608(v2, v3);
}

__n128 CoreSynthesizer.Voice.newerAssetId.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1[32];
  v5 = v1[33];
  v6 = v1[34];
  sub_1A93B10AC(v1[30], v1[31]);
  result = *a1;
  v8 = *(a1 + 16);
  *(v1 + 15) = *a1;
  *(v1 + 16) = v8;
  v1[34] = v3;
  return result;
}

void sub_1A948F7A4(void *a1@<X8>)
{
  *a1 = 24942;
  a1[1] = 0xE200000000000000;
  a1[2] = 24942;
  a1[3] = 0xE200000000000000;
  a1[4] = 0;
}

uint64_t CoreSynthesizer.Voice.AssetIdentifier.init(loader:identifier:version:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t CoreSynthesizer.Voice.init(id:alternateIdentifiers:name:quality:gender:traits:type:primaryLocales:secondaryLocales:componentDescription:downloadSizeBytes:diskSizeBytes:assetId:state:newerAssetId:supersedingVoiceIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, unsigned int a17, char a18, int a19, char a20, uint64_t *a21, char *a22, uint64_t *a23, uint64_t a24, uint64_t a25)
{
  v57 = *a6;
  v58 = *a7;
  v65 = *a10;
  v66 = *a8;
  v63 = a10[2];
  v64 = a10[1];
  v61 = a10[4];
  v62 = a10[3];
  v60 = a10[5];
  v59 = *(a10 + 48);
  v51 = *a21;
  v50 = a21[1];
  v75 = a21[2];
  v73 = a21[4];
  v74 = a21[3];
  v67 = *a22;
  v71 = a23[1];
  v72 = *a23;
  v69 = a23[3];
  v70 = a23[2];
  v68 = a23[4];
  v25 = a11[3];
  v26 = a11[4];
  v27 = sub_1A93780F4(a11, v25);
  v28 = MEMORY[0x1E69E6158];
  v29 = MEMORY[0x1E69E73E0];
  v30 = MEMORY[0x1E69E7410];
  v31 = sub_1A9386128(sub_1A948C674, 0, v25, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);
  sub_1A93B0B3C(v31);
  v33 = v32;
  v46 = v34;
  v47 = v32;
  v35 = v34;
  v36 = a12[3];
  v37 = a12[4];
  v38 = sub_1A93780F4(a12, v36);
  v39 = sub_1A9386128(sub_1A948C674, 0, v36, v28, v29, v37, v30, v38);
  sub_1A93B0B3C(v39);
  v41 = v40;
  v45 = v40;
  v43 = v42;
  v48 = v42;
  sub_1A93B10AC(0, 0);
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = a3;
  __src[3] = a24;
  __src[4] = a25;
  __src[5] = a4;
  __src[6] = a5;
  LOBYTE(__src[7]) = v57;
  BYTE1(__src[7]) = v58;
  __src[8] = v66;
  __src[9] = v65;
  __src[10] = v64;
  __src[11] = v63;
  __src[12] = v62;
  __src[13] = v61;
  __src[14] = v60;
  LOBYTE(__src[15]) = v59;
  __src[16] = v33;
  __src[17] = v35;
  __src[18] = v41;
  __src[19] = v43;
  __src[20] = a13;
  __src[21] = a14;
  __src[22] = __PAIR64__(a17, a15);
  LOBYTE(__src[23]) = a18 & 1;
  HIDWORD(__src[23]) = a19;
  LOBYTE(__src[24]) = a20 & 1;
  BYTE1(__src[24]) = v67;
  __src[25] = v51;
  __src[26] = v50;
  __src[27] = v75;
  __src[28] = v74;
  __src[29] = v73;
  __src[30] = v72;
  __src[31] = v71;
  __src[32] = v70;
  __src[33] = v69;
  __src[34] = v68;
  memcpy(a9, __src, 0x118uLL);
  sub_1A937B3DC(__src, v77);
  sub_1A9378138(a12);
  sub_1A9378138(a11);
  v77[0] = a1;
  v77[1] = a2;
  v77[2] = a3;
  v77[3] = a24;
  v77[4] = a25;
  v77[5] = a4;
  v77[6] = a5;
  v78 = v57;
  v79 = v58;
  v80 = v66;
  v81 = v65;
  v82 = v64;
  v83 = v63;
  v84 = v62;
  v85 = v61;
  v86 = v60;
  v87 = v59;
  v88 = v47;
  v89 = v46;
  v90 = v45;
  v91 = v48;
  v92 = a13;
  v93 = a14;
  v94 = a15;
  v95 = a17;
  v96 = a18 & 1;
  v97 = a19;
  v98 = a20 & 1;
  v99 = v67;
  v100 = v51;
  v101 = v50;
  v102 = v75;
  v103 = v74;
  v104 = v73;
  v105 = v72;
  v106 = v71;
  v107 = v70;
  v108 = v69;
  v109 = v68;
  return sub_1A937B48C(v77);
}

id CoreSynthesizer.Voice.synthesisProviderVoice.getter()
{
  v1 = v0;
  v2 = *(v0 + 8);
  v45 = *(v0 + 16);
  v46 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v39 = *(v0 + 64);
  v43 = *(v0 + 72);
  v44 = *(v0 + 80);
  v47 = *(v0 + 88);
  v48 = *(v0 + 104);
  v5 = *(v0 + 120);
  v42 = v5;
  v40 = *(v0 + 160);
  v41 = *(v0 + 168);
  v37 = *(v0 + 172);
  v38 = *(v0 + 164);
  v36 = *(v0 + 176);
  v34 = v0 + 180;
  v56 = *(v0 + 260);
  v54 = *(v0 + 228);
  v55 = *(v0 + 244);
  v57 = *(v0 + 276);
  v51 = *(v0 + 180);
  v52 = *(v0 + 196);
  v53 = *(v0 + 212);
  v61 = *v0;
  v62 = v2;
  v6 = v61;
  v7 = v2;
  v63 = *(v0 + 16);
  v35 = *(v0 + 40);
  v64 = *(v0 + 32);
  v65 = v35;
  v66 = v3;
  v67 = v4;
  v8 = v3;
  v68 = v39;
  v69 = v43;
  v70 = v44;
  v71 = *(v0 + 88);
  v72 = *(v0 + 104);
  v73 = v5;
  v9 = *(v0 + 121);
  v10 = *(v0 + 137);
  *&v75[15] = *(v0 + 152);
  *v75 = v10;
  v74 = v9;
  v76 = v40;
  v77 = v38;
  v78 = v41;
  v79 = v37;
  v86 = *(v0 + 260);
  v11 = *(v0 + 276);
  v80 = v36;
  v87 = v11;
  v84 = *(v0 + 228);
  v85 = *(v0 + 244);
  v83 = *(v0 + 212);
  v82 = *(v0 + 196);
  v81 = *(v0 + 180);
  CoreSynthesizer.Voice.primaryLocales.getter(v58);
  v12 = v59;
  v13 = v60;
  v14 = sub_1A93780F4(v58, v59);
  sub_1A9386128(sub_1A94978AC, 0, v12, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  sub_1A9378138(v58);
  v61 = v6;
  v62 = v7;
  v63 = *(v1 + 16);
  v64 = *(v1 + 32);
  v65 = v35;
  v66 = v8;
  v67 = v4;
  v68 = v39;
  v69 = v43;
  v70 = v44;
  v71 = *(v1 + 88);
  v72 = *(v1 + 104);
  v73 = v42;
  v15 = *(v1 + 121);
  v16 = *(v1 + 137);
  *&v75[15] = *(v1 + 152);
  *v75 = v16;
  v74 = v15;
  v76 = v40;
  v77 = v38;
  v78 = v41;
  v79 = v37;
  v86 = *(v34 + 80);
  v17 = *(v1 + 276);
  v80 = v36;
  v87 = v17;
  v84 = *(v1 + 228);
  v85 = *(v1 + 244);
  v83 = *(v1 + 212);
  v82 = *(v1 + 196);
  v81 = *(v1 + 180);
  CoreSynthesizer.Voice.primaryLocales.getter(v58);
  v18 = v59;
  v19 = v60;
  v20 = sub_1A93780F4(v58, v59);
  v21 = sub_1A9386128(sub_1A94978AC, 0, v18, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
  sub_1A9378138(v58);
  v49 = *(v1 + 121);
  *v50 = *(v1 + 137);
  *&v50[15] = *(v1 + 152);
  CoreSynthesizer.Voice.secondaryLocales.getter(&v61);
  v22 = *(&v63 + 1);
  v23 = v64;
  v24 = sub_1A93780F4(&v61, *(&v63 + 1));
  v25 = sub_1A9386128(sub_1A94978AC, 0, v22, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
  sub_1A9378138(&v61);
  v61 = v21;
  sub_1A93ABFE0(v25);
  v26 = objc_allocWithZone(MEMORY[0x1E69584F0]);
  v27 = sub_1A957C0C8();
  v28 = sub_1A957C0C8();
  v29 = sub_1A957C4B8();

  v30 = sub_1A957C4B8();

  v31 = [v26 initWithName:v27 identifier:v28 primaryLanguages:v29 supportedLanguages:v30];

  v61 = __PAIR64__(v38, v40);
  v62 = __PAIR64__(v37, v41);
  LODWORD(v63) = v36;
  [v31 setAuComponentDesc_];
  [v31 setIsPersonalVoice_];
  [v31 setIsFirstParty_];
  if (v42 == 1)
  {
    v32 = sub_1A957C0C8();
    [v31 setIdentifier_];

    [v31 setIsFirstParty_];
  }

  return v31;
}

uint64_t sub_1A949017C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1A957D3E8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t sub_1A9490228(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
    case 10:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0x7974696C617571;
      break;
    case 5:
      result = 0x7265646E6567;
      break;
    case 6:
      result = 0x737469617274;
      break;
    case 7:
      result = 1701869940;
      break;
    case 8:
      result = 0x7972616D6972705FLL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x657A69536B736964;
      break;
    case 13:
      result = 0x6574617473;
      break;
    case 14:
      result = 0x64497465737361;
      break;
    case 15:
      result = 0x737341726577656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A94903D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9496438(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9490404(uint64_t a1)
{
  v2 = sub_1A9495EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9490440(uint64_t a1)
{
  v2 = sub_1A9495EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreSynthesizer.Voice.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB387B08, &unk_1A9591CC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v35 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v67 = v1[3];
  v68 = v11;
  v12 = v1[4];
  v65 = v1[5];
  v66 = v12;
  v63 = v1[6];
  v77 = *(v1 + 56);
  v62 = *(v1 + 57);
  v13 = v1[9];
  v61 = v1[8];
  v54 = v13;
  v14 = v1[11];
  v55 = v1[10];
  v56 = v14;
  v15 = v1[12];
  v59 = v1[13];
  v60 = v15;
  v58 = v1[14];
  v57 = *(v1 + 120);
  v16 = v1[17];
  v52 = v1[16];
  v53 = v16;
  v17 = v1[19];
  v50 = v1[18];
  v51 = v17;
  v18 = v1[20];
  v19 = v1[21];
  v20 = *(v1 + 45);
  v49 = *(v1 + 44);
  v48 = v20;
  v47 = *(v1 + 184);
  v46 = *(v1 + 47);
  v45 = *(v1 + 192);
  v44 = *(v1 + 193);
  v21 = v1[26];
  v39 = v1[25];
  v40 = v21;
  v22 = v1[28];
  v43 = v1[27];
  v42 = v22;
  v23 = v1[30];
  v41 = v1[29];
  v64 = v23;
  v24 = v1[32];
  v36 = v1[31];
  v38 = v24;
  v25 = v1[34];
  v37 = v1[33];
  v26 = a1[3];
  v27 = a1[4];
  v28 = a1;
  v30 = v29;
  sub_1A93780F4(v28, v26);
  sub_1A9495EE4();
  sub_1A957D598();
  LOBYTE(v70) = 0;
  v31 = v69;
  sub_1A957D2E8();
  if (v31)
  {
    return (*(v4 + 8))(v8, v30);
  }

  v69 = v25;
  v32 = v64;
  v70 = v68;
  v78 = 1;
  sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
  sub_1A9442BB0(&qword_1EB385F88);
  sub_1A957D338();
  LOBYTE(v70) = 2;
  sub_1A957D298();
  LOBYTE(v70) = 3;
  sub_1A957D2E8();
  LOBYTE(v70) = v77;
  v78 = 4;
  sub_1A9495F38();
  sub_1A957D338();
  LOBYTE(v70) = v62;
  v78 = 5;
  sub_1A9495F8C();
  sub_1A957D338();
  v70 = v61;
  v78 = 6;
  sub_1A942C340();
  sub_1A957D338();
  v70 = v54;
  v71 = v55;
  v72 = v56;
  v73 = v60;
  v74 = v59;
  v75 = v58;
  v76 = v57;
  v78 = 7;
  sub_1A93B10F0(v54, v55, v56, v60, v59, v58, v57);
  sub_1A9495FE0();
  sub_1A957D338();
  sub_1A93B183C(v70, v71, v72, v73, v74, v75, v76);
  v70 = v52;
  v71 = v53;
  v78 = 8;
  sub_1A937829C(&qword_1EB387B10, &qword_1A9591CD0);
  sub_1A9496034(&qword_1EB385FE0);
  v68 = v8;
  sub_1A957D338();
  v70 = v50;
  v71 = v51;
  v78 = 9;
  sub_1A957D338();
  v70 = v18;
  v71 = v19;
  LODWORD(v72) = v49;
  v78 = 10;
  type metadata accessor for AudioComponentDescription();
  sub_1A9497084(&qword_1EB385ED0);
  sub_1A957D338();
  LOBYTE(v70) = 11;
  v78 = v47;
  sub_1A957D2C8();
  LOBYTE(v70) = 12;
  v78 = v45;
  sub_1A957D2C8();
  LOBYTE(v70) = v44;
  v78 = 13;
  sub_1A94960F0();
  sub_1A957D338();
  v70 = v39;
  v71 = v40;
  v72 = v43;
  v73 = v42;
  v74 = v41;
  v78 = 14;
  sub_1A9495608(v39, v40);
  sub_1A9496144();
  sub_1A957D2B8();
  sub_1A93B10AC(v70, v71);
  v70 = v32;
  v71 = v36;
  v72 = v38;
  v73 = v37;
  v74 = v69;
  v78 = 15;
  sub_1A9495608(v32, v36);
  v34 = v68;
  sub_1A957D2B8();
  sub_1A93B10AC(v70, v71);
  return (*(v4 + 8))(v34, v30);
}

uint64_t CoreSynthesizer.Voice.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v25 = v0[3];
  v4 = v0[4];
  v5 = v0[6];
  v6 = *(v0 + 56);
  v7 = *(v0 + 57);
  v34 = v0[5];
  v35 = v0[8];
  v39 = *(v0 + 11);
  v40 = *(v0 + 9);
  v37 = v0[14];
  v38 = v0[13];
  v36 = *(v0 + 120);
  v8 = v0[17];
  v41 = v0[19];
  v44 = *(v0 + 41);
  v45 = *(v0 + 42);
  v42 = *(v0 + 40);
  v43 = *(v0 + 43);
  v46 = *(v0 + 44);
  v23 = *(v0 + 45);
  v47 = *(v0 + 184);
  v24 = *(v0 + 47);
  v48 = *(v0 + 192);
  v49 = *(v0 + 193);
  v29 = v0[25];
  v50 = v0[26];
  v27 = v0[28];
  v28 = v0[27];
  v26 = v0[29];
  v33 = v0[30];
  v51 = v0[31];
  v31 = v0[33];
  v32 = v0[32];
  v30 = v0[34];
  sub_1A957C228();
  MEMORY[0x1AC5863C0](*(v3 + 16));
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = (v3 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      sub_1A957C228();

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  sub_1A957D518();
  if (v4)
  {
    sub_1A957C228();
  }

  v13 = v8;
  sub_1A957C228();
  sub_1A957C228();

  sub_1A957C228();

  MEMORY[0x1AC5863C0](v35);
  sub_1A93B17E8();
  sub_1A957C438();
  sub_1A957C228();

  v14 = *(v8 + 16);
  MEMORY[0x1AC5863C0](v14);
  if (v14)
  {
    v15 = (v13 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      sub_1A957C228();
      v15 += 2;
      --v14;
    }

    while (v14);
  }

  v18 = *(v41 + 16);
  MEMORY[0x1AC5863C0](v18);
  if (v18)
  {
    v19 = (v41 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      sub_1A957C228();
      v19 += 2;
      --v18;
    }

    while (v18);
  }

  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D518();
  if ((v47 & 1) == 0)
  {
    sub_1A957D528();
  }

  sub_1A957D518();
  if (!v48)
  {
    sub_1A957D528();
  }

  sub_1A9496198();
  sub_1A957C438();
  sub_1A957C228();

  if (v50)
  {
    sub_1A957D518();
    sub_1A94961EC();
    sub_1A957C438();
    sub_1A957C228();

    if (v51)
    {
LABEL_18:
      sub_1A957D518();
      sub_1A94961EC();
      sub_1A957C438();
      sub_1A957C228();
    }
  }

  else
  {
    sub_1A957D518();
    if (v51)
    {
      goto LABEL_18;
    }
  }

  return sub_1A957D518();
}

uint64_t CoreSynthesizer.Voice.hashValue.getter()
{
  sub_1A957D4F8();
  CoreSynthesizer.Voice.hash(into:)();
  return sub_1A957D548();
}

uint64_t CoreSynthesizer.Voice.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A937829C(&qword_1EB387B18, &qword_1A9591CD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v129 = a1;
  sub_1A93780F4(a1, v11);
  sub_1A9495EE4();
  sub_1A957D588();
  if (v2)
  {
    sub_1A9378138(v129);
    return sub_1A93B10AC(0, 0);
  }

  else
  {
    v13 = v6;
    v64 = a2;
    LOBYTE(v66) = 0;
    v14 = sub_1A957D1E8();
    v63 = v15;
    sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
    LOBYTE(v65[0]) = 1;
    sub_1A9442BB0(&qword_1EB3863D0);
    sub_1A957D238();
    v61 = v66;
    LOBYTE(v66) = 2;
    v48 = sub_1A957D198();
    v60 = v16;
    LOBYTE(v66) = 3;
    v47 = sub_1A957D1E8();
    v59 = v17;
    LOBYTE(v65[0]) = 4;
    sub_1A9496240();
    sub_1A957D238();
    v46 = v66;
    LOBYTE(v65[0]) = 5;
    sub_1A9496294();
    sub_1A957D238();
    v45 = v66;
    LOBYTE(v65[0]) = 6;
    sub_1A942C430();
    sub_1A957D238();
    v44 = v66;
    LOBYTE(v65[0]) = 7;
    sub_1A94962E8();
    sub_1A957D238();
    v52 = v66;
    v53 = v67;
    v54 = v68;
    v55 = v69;
    v56 = v70;
    v57 = v71;
    v58 = v72;
    v18 = sub_1A937829C(&qword_1EB387B10, &qword_1A9591CD0);
    LOBYTE(v65[0]) = 8;
    v49 = sub_1A9496034(&qword_1EB3862A8);
    v50 = v18;
    sub_1A957D238();
    v51 = v66;
    v62 = v67;
    LOBYTE(v65[0]) = 9;
    sub_1A957D238();
    v42 = v67;
    v43 = v66;
    type metadata accessor for AudioComponentDescription();
    LOBYTE(v65[0]) = 10;
    sub_1A9497084(&qword_1EB386388);
    sub_1A957D238();
    v38 = v67;
    v39 = HIDWORD(v66);
    v37 = HIDWORD(v67);
    v35 = v66;
    v36 = v68;
    LOBYTE(v66) = 11;
    v19 = sub_1A957D1C8();
    v125 = BYTE4(v19) & 1;
    LOBYTE(v66) = 12;
    v34 = sub_1A957D1C8();
    v122 = BYTE4(v34) & 1;
    LOBYTE(v65[0]) = 13;
    sub_1A949633C();
    sub_1A957D238();
    v32 = v66;
    LOBYTE(v65[0]) = 14;
    v33 = sub_1A9496390();
    sub_1A957D1B8();
    v20 = v66;
    v40 = v68;
    v41 = v67;
    v49 = v69;
    v50 = v70;
    v114 = 15;
    sub_1A957D1B8();
    (*(v13 + 8))(v10, v5);
    v33 = v115;
    v30 = v117;
    v31 = v116;
    v28 = v119;
    v29 = v118;
    sub_1A93B10AC(0, 0);
    v65[0] = v14;
    v65[1] = v63;
    v65[2] = v61;
    v65[3] = v48;
    v65[4] = v60;
    v65[5] = v47;
    v65[6] = v59;
    LOBYTE(v65[7]) = v46;
    BYTE1(v65[7]) = v45;
    *(&v65[7] + 2) = v127;
    HIWORD(v65[7]) = v128;
    v65[8] = v44;
    v65[9] = v52;
    v65[10] = v53;
    v65[11] = v54;
    v65[12] = v55;
    v65[13] = v56;
    v65[14] = v57;
    LOBYTE(v65[15]) = v58;
    *(&v65[15] + 1) = *v126;
    HIDWORD(v65[15]) = *&v126[3];
    v65[16] = v51;
    v65[17] = v62;
    v65[18] = v43;
    v65[19] = v42;
    v65[20] = __PAIR64__(v39, v35);
    v65[21] = __PAIR64__(v37, v38);
    v65[22] = __PAIR64__(v19, v36);
    v26 = v20;
    v27 = v19;
    *(&v65[23] + 1) = v123;
    *(&v65[24] + 2) = v120;
    v21 = v125;
    LOBYTE(v65[23]) = v125;
    BYTE3(v65[23]) = v124;
    LODWORD(v19) = v34;
    HIDWORD(v65[23]) = v34;
    HIWORD(v65[24]) = v121;
    v22 = v122;
    LOBYTE(v65[24]) = v122;
    LOBYTE(v13) = v32;
    BYTE1(v65[24]) = v32;
    v65[25] = v20;
    v65[26] = v41;
    v65[27] = v40;
    v23 = v49;
    v65[28] = v49;
    v65[29] = v50;
    v65[30] = v33;
    v65[31] = v31;
    v65[32] = v30;
    v65[33] = v29;
    v65[34] = v28;
    memcpy(v64, v65, 0x118uLL);
    sub_1A937B3DC(v65, &v66);
    sub_1A9378138(v129);
    v66 = v14;
    v67 = v63;
    v68 = v61;
    v69 = v48;
    v70 = v60;
    v71 = v47;
    v72 = v59;
    v73 = v46;
    v74 = v45;
    v77 = v44;
    v78 = v52;
    v79 = v53;
    v80 = v54;
    v75 = v127;
    v76 = v128;
    v81 = v55;
    v82 = v56;
    v83 = v57;
    v84 = v58;
    *v85 = *v126;
    *&v85[3] = *&v126[3];
    v86 = v51;
    v87 = v62;
    v88 = v43;
    v89 = v42;
    v90 = v35;
    v91 = v39;
    v92 = v38;
    v93 = v37;
    v94 = v36;
    v95 = v27;
    v96 = v21;
    v98 = v124;
    v97 = v123;
    v99 = v19;
    v100 = v22;
    v101 = v13;
    v103 = v121;
    v102 = v120;
    v104 = v26;
    v105 = v41;
    v106 = v40;
    v107 = v23;
    v108 = v50;
    v109 = v33;
    v110 = v31;
    v111 = v30;
    v112 = v29;
    v113 = v28;
    return sub_1A937B48C(&v66);
  }
}

uint64_t sub_1A9491D04()
{
  sub_1A957D4F8();
  CoreSynthesizer.Voice.hash(into:)();
  return sub_1A957D548();
}

uint64_t sub_1A9491D48()
{
  sub_1A957D4F8();
  CoreSynthesizer.Voice.hash(into:)();
  return sub_1A957D548();
}

uint64_t CoreSynthesizer.Voice.Gender.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A957D158();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t CoreSynthesizer.Voice.Gender.rawValue.getter()
{
  v1 = 0x656C616D6566;
  if (*v0 != 1)
  {
    v1 = 0x6669636570736E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701601645;
  }
}

uint64_t sub_1A9491E6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656C616D6566;
  if (v2 != 1)
  {
    v4 = 0x6669636570736E75;
    v3 = 0xEB00000000646569;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701601645;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C616D6566;
  if (*a2 != 1)
  {
    v8 = 0x6669636570736E75;
    v7 = 0xEB00000000646569;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701601645;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A957D3E8();
  }

  return v11 & 1;
}

uint64_t sub_1A9491F70@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CoreSynthesizer.Voice.Gender.init(rawValue:)(a1);
}

void sub_1A9491F7C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C616D6566;
  if (v2 != 1)
  {
    v5 = 0x6669636570736E75;
    v4 = 0xEB00000000646569;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701601645;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1A9491FD8()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9492078()
{
  *v0;
  *v0;
  sub_1A957C228();
}

uint64_t sub_1A9492104()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t CoreSynthesizer.Voice.ThirdPartyVoiceDetails.rawIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CoreSynthesizer.Voice.ThirdPartyVoiceDetails.manufacturerName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CoreSynthesizer.Voice.ThirdPartyVoiceDetails.manufacturerBundleIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CoreSynthesizer.Voice.ThirdPartyVoiceDetails.init(rawIdentifier:manufacturerName:manufacturerBundleIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t static CoreSynthesizer.Voice.ThirdPartyVoiceDetails.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1A957D3E8() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1A957D3E8();
}

uint64_t sub_1A94923E8()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E656449776172;
  }
}

uint64_t sub_1A9492454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9496934(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A949247C(uint64_t a1)
{
  v2 = sub_1A94963E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94924B8(uint64_t a1)
{
  v2 = sub_1A94963E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreSynthesizer.Voice.ThirdPartyVoiceDetails.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB387B20, &qword_1A9591CE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16[3] = v1[3];
  v16[4] = v11;
  v12 = v1[4];
  v16[1] = v1[5];
  v16[2] = v12;
  v13 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94963E4();
  sub_1A957D598();
  v19 = 0;
  v14 = v16[5];
  sub_1A957D2E8();
  if (v14)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v18 = 1;
  sub_1A957D2E8();
  v17 = 2;
  sub_1A957D2E8();
  return (*(v4 + 8))(v8, v3);
}

uint64_t CoreSynthesizer.Voice.ThirdPartyVoiceDetails.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1A957C228();
  sub_1A957C228();

  return sub_1A957C228();
}

uint64_t CoreSynthesizer.Voice.ThirdPartyVoiceDetails.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1A957D4F8();
  sub_1A957C228();
  sub_1A957C228();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t CoreSynthesizer.Voice.ThirdPartyVoiceDetails.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A937829C(&qword_1EB387B28, &qword_1A9591CE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
  v11 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94963E4();
  sub_1A957D588();
  if (v2)
  {
    return sub_1A9378138(a1);
  }

  v28 = 0;
  v12 = sub_1A957D1E8();
  v14 = v13;
  v25 = v12;
  v27 = 1;
  v23 = sub_1A957D1E8();
  v24 = v15;
  v26 = 2;
  v16 = sub_1A957D1E8();
  v18 = v17;
  v19 = v16;
  (*(v6 + 8))(v10, v5);
  v20 = v24;
  *a2 = v25;
  a2[1] = v14;
  a2[2] = v23;
  a2[3] = v20;
  a2[4] = v19;
  a2[5] = v18;

  sub_1A9378138(a1);
}

uint64_t sub_1A9492A20()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1A957D4F8();
  sub_1A957C228();
  sub_1A957C228();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t sub_1A9492AA4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1A957C228();
  sub_1A957C228();

  return sub_1A957C228();
}

uint64_t sub_1A9492B10()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1A957D4F8();
  sub_1A957C228();
  sub_1A957C228();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t sub_1A9492BC0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1A957D3E8() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1A957D3E8();
}

uint64_t CoreSynthesizer.Voice.VoiceType.SiriVoiceTechnology.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A957D158();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t CoreSynthesizer.Voice.VoiceType.SiriVoiceTechnology.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E6F6870797267;
  v3 = 0x58416C617275656ELL;
  v4 = 0x646E6172626E6F6ELL;
  if (v1 != 3)
  {
    v4 = 0x6C61727574616ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C617275656ELL;
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

uint64_t sub_1A9492DBC()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9492EA0()
{
  *v0;
  *v0;
  *v0;
  sub_1A957C228();
}

uint64_t sub_1A9492F70()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9493050@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CoreSynthesizer.Voice.VoiceType.SiriVoiceTechnology.init(rawValue:)(a1);
}

void sub_1A949305C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6870797267;
  v5 = 0xE800000000000000;
  v6 = 0x58416C617275656ELL;
  v7 = 0xEA00000000006465;
  v8 = 0x646E6172626E6F6ELL;
  if (v2 != 3)
  {
    v8 = 0x6C61727574616ELL;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C617275656ELL;
    v3 = 0xE600000000000000;
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

uint64_t CoreSynthesizer.Voice.VoiceType.description.getter()
{
  v1 = *v0;
  if (*(v0 + 48))
  {
    if (*(v0 + 48) == 1)
    {
      return 0x7472615020647233;
    }

    else
    {
      v6 = v0[3];
      v7 = v0[4] | v0[5];
      v8 = v0[2] | v0[1];
      if (v7 | v1 | v6 | v8)
      {
        v9 = v7 | v6 | v8;
        if (v1 != 1 || v9)
        {
          if (v1 != 2 || v9)
          {
            if (v1 != 3 || v9)
            {
              if (v1 == 4 && v9 == 0)
              {
                return 0x636E6575716F6C45;
              }

              else
              {
                return 0x6C61746E6963614DLL;
              }
            }

            else
            {
              return 0x6C616E6F73726550;
            }
          }

          else
          {
            return 0x6D6F74737543;
          }
        }

        else
        {
          return 0x65636E65726543;
        }
      }

      else
      {
        return 0xD000000000000010;
      }
    }
  }

  else
  {
    v3 = 0x7247282069726953;
    v4 = 0xD000000000000010;
    v5 = 0xD000000000000010;
    if (*v0 != 3)
    {
      v5 = 0x614E282069726953;
    }

    if (*v0 != 2)
    {
      v4 = v5;
    }

    if (*v0)
    {
      v3 = 0x654E282069726953;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t sub_1A949339C()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 48);
  sub_1A957D4F8();
  v5 = *v0;
  v6 = v0[1];
  sub_1A93B17E8();
  sub_1A957C438();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9493430()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  sub_1A93B17E8();
  sub_1A957C438();
  sub_1A957C228();
}

uint64_t sub_1A94934AC()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 48);
  sub_1A957D4F8();
  v5 = *v0;
  v6 = v0[1];
  sub_1A93B17E8();
  sub_1A957C438();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A94935EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1A948E080(v5, v7) & 1;
}

uint64_t CoreSynthesizer.Voice.Quality.description.getter()
{
  v1 = *v0;
  v2 = 1701736270;
  v3 = 0x746361706D6F43;
  v4 = 0x6465636E61686E45;
  if (v1 != 3)
  {
    v4 = 0x6D75696D657250;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F43207265707553;
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

uint64_t CoreSynthesizer.Voice.Quality.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A957D158();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t CoreSynthesizer.Voice.Quality.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x746361706D6F63;
  v4 = 0x6465636E61686E65;
  if (v1 != 3)
  {
    v4 = 0x6D75696D657270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F632D7265707573;
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

uint64_t sub_1A94937F0@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CoreSynthesizer.Voice.Quality.init(rawValue:)(a1);
}

void sub_1A94937FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE700000000000000;
  v6 = 0x746361706D6F63;
  v7 = 0xE800000000000000;
  v8 = 0x6465636E61686E65;
  if (v2 != 3)
  {
    v8 = 0x6D75696D657270;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6F632D7265707573;
    v3 = 0xED0000746361706DLL;
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

uint64_t sub_1A94938A0()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9493988()
{
  *v0;
  *v0;
  *v0;
  sub_1A957C228();
}

uint64_t sub_1A9493A5C()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t CoreSynthesizer.Voice.Trait.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1A93AC2AC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1A93AC2AC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x79746C65766F4ELL;
  *(v5 + 5) = 0xE700000000000000;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1A93AC2AC((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x6C616E6F73726550;
    *(v8 + 5) = 0xE800000000000000;
  }

LABEL_12:
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_1A93AC2AC((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  *(v11 + 4) = 0x7974726150647233;
  *(v11 + 5) = 0xE800000000000000;
  if ((v1 & 8) != 0)
  {
LABEL_20:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_1A93AC2AC((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0x6D6574737953;
    *(v14 + 5) = 0xE600000000000000;
  }

LABEL_25:
  if ((v1 & 0x10) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_1A93AC2AC((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x7561666544636F4CLL;
    *(v17 + 5) = 0xEA0000000000746CLL;
  }

  if ((v1 & 0x20) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
    }

    v19 = *(v2 + 2);
    v18 = *(v2 + 3);
    if (v19 >= v18 >> 1)
    {
      v2 = sub_1A93AC2AC((v18 > 1), v19 + 1, 1, v2);
    }

    *(v2 + 2) = v19 + 1;
    v20 = &v2[16 * v19];
    *(v20 + 4) = 1769105747;
    *(v20 + 5) = 0xE400000000000000;
  }

  if ((v1 & 0x40) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
    }

    v22 = *(v2 + 2);
    v21 = *(v2 + 3);
    if (v22 >= v21 >> 1)
    {
      v2 = sub_1A93AC2AC((v21 > 1), v22 + 1, 1, v2);
    }

    *(v2 + 2) = v22 + 1;
    v23 = &v2[16 * v22];
    *(v23 + 4) = 0x656C6C6174736E49;
    *(v23 + 5) = 0xE900000000000064;
    if ((v1 & 0x80) == 0)
    {
LABEL_39:
      if ((v1 & 0x1000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_58;
    }
  }

  else if ((v1 & 0x80) == 0)
  {
    goto LABEL_39;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_1A93AC2AC((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0x7974726150747331;
  *(v26 + 5) = 0xE800000000000000;
  if ((v1 & 0x1000) == 0)
  {
LABEL_40:
    if ((v1 & 0x2000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_63;
  }

LABEL_58:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_1A93AC2AC((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0x6D65747379532BLL;
  *(v29 + 5) = 0xE700000000000000;
  if ((v1 & 0x2000) == 0)
  {
LABEL_41:
    if ((v1 & 0x4000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_68;
  }

LABEL_63:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_1A93AC2AC((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  *(v32 + 4) = 0x6C617275654E2BLL;
  *(v32 + 5) = 0xE700000000000000;
  if ((v1 & 0x4000) == 0)
  {
LABEL_42:
    if ((v1 & 0x8000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_73;
  }

LABEL_68:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_1A93AC2AC((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 0x416C617275654E2BLL;
  *(v35 + 5) = 0xE900000000000058;
  if ((v1 & 0x8000) == 0)
  {
LABEL_43:
    if ((v1 & 0x10000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_78;
  }

LABEL_73:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_1A93AC2AC((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  *(v38 + 4) = 0x7269536D6572502BLL;
  *(v38 + 5) = 0xE900000000000069;
  if ((v1 & 0x10000) == 0)
  {
LABEL_44:
    if ((v1 & 0x20000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_83;
  }

LABEL_78:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_1A93AC2AC((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  *(v41 + 4) = 0x706D43727075532BLL;
  *(v41 + 5) = 0xEA00000000007463;
  if ((v1 & 0x20000) == 0)
  {
LABEL_45:
    if ((v1 & 0x40000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_88;
  }

LABEL_83:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_1A93AC2AC((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  *(v44 + 4) = 0x656C62612D4C44;
  *(v44 + 5) = 0xE700000000000000;
  if ((v1 & 0x40000) == 0)
  {
LABEL_46:
    if ((v1 & 0x200000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_93;
  }

LABEL_88:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v46 = *(v2 + 2);
  v45 = *(v2 + 3);
  if (v46 >= v45 >> 1)
  {
    v2 = sub_1A93AC2AC((v45 > 1), v46 + 1, 1, v2);
  }

  *(v2 + 2) = v46 + 1;
  v47 = &v2[16 * v46];
  *(v47 + 4) = 0x676E692D4C44;
  *(v47 + 5) = 0xE600000000000000;
  if ((v1 & 0x200000) != 0)
  {
LABEL_93:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
    }

    v49 = *(v2 + 2);
    v48 = *(v2 + 3);
    if (v49 >= v48 >> 1)
    {
      v2 = sub_1A93AC2AC((v48 > 1), v49 + 1, 1, v2);
    }

    *(v2 + 2) = v49 + 1;
    v50 = &v2[16 * v49];
    *(v50 + 4) = 0x6F4663696C627550;
    *(v50 + 5) = 0xEF6E656464696272;
  }

LABEL_98:
  sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
  sub_1A93B744C(&qword_1EB385F80, &qword_1EB386B68, &qword_1A9591620);
  v51 = sub_1A957C088();

  return v51;
}

uint64_t CoreSynthesizer.Voice.AssetIdentifier.loader.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CoreSynthesizer.Voice.AssetIdentifier.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1A9494858()
{
  v3 = v0[1];
  v4 = *v0;
  v1 = *(v0 + 4);
  sub_1A957D4F8();
  sub_1A94961EC();
  sub_1A957C438();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A94948DC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_1A94961EC();
  sub_1A957C438();
  sub_1A957C228();
}

uint64_t sub_1A9494954()
{
  v3 = v0[1];
  v4 = *v0;
  v1 = *(v0 + 4);
  sub_1A957D4F8();
  sub_1A94961EC();
  sub_1A957C438();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A94949D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1A948E20C(v5, v7) & 1;
}

uint64_t sub_1A9494AD0()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A9496198();
  sub_1A957C438();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9494B44()
{
  v2 = *v0;
  sub_1A9496198();
  sub_1A957C438();
  sub_1A957C228();
}

uint64_t sub_1A9494BB0()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A9496198();
  sub_1A957C438();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9494C20(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1A948E15C();
}

uint64_t AudioComponentDescription.hash(into:)()
{
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  return sub_1A957D528();
}

uint64_t sub_1A9494CA0()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9494D84()
{
  *v0;
  *v0;
  *v0;
  sub_1A957C228();
}

uint64_t sub_1A9494E54()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9494F34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1A9496A60();
  *a2 = result;
  return result;
}

void sub_1A9494F64(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0xEC00000072657275;
  v6 = 0x74636166756E616DLL;
  v7 = 0xE500000000000000;
  v8 = 0x7367616C66;
  if (v2 != 3)
  {
    v8 = 0x73614D7367616C66;
    v7 = 0xE90000000000006BLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65707974627573;
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

uint64_t sub_1A9495004()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x74636166756E616DLL;
  v4 = 0x7367616C66;
  if (v1 != 3)
  {
    v4 = 0x73614D7367616C66;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65707974627573;
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

uint64_t sub_1A94950A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A9496A60();
  *a1 = result;
  return result;
}

uint64_t sub_1A94950C8(uint64_t a1)
{
  v2 = sub_1A9496CCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9495104(uint64_t a1)
{
  v2 = sub_1A9496CCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudioComponentDescription.init(from:)(uint64_t *a1)
{
  result = sub_1A9496AAC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t AudioComponentDescription.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14[3] = a4;
  v6 = sub_1A937829C(&qword_1EB387B30, &qword_1A9591CF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A9496CCC();
  sub_1A957D598();
  v19 = 0;
  sub_1A957D358();
  if (v4)
  {
    return (*(v7 + 8))(v11, v6);
  }

  v18 = 1;
  sub_1A957D358();
  v17 = 2;
  sub_1A957D358();
  v16 = 3;
  sub_1A957D358();
  v15 = 4;
  sub_1A957D358();
  return (*(v7 + 8))(v11, v6);
}

uint64_t AudioComponentDescription.hashValue.getter()
{
  sub_1A957D4F8();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  return sub_1A957D548();
}

uint64_t sub_1A949542C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A9496AAC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1A9495488()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1A957D4F8();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  return sub_1A957D548();
}

uint64_t sub_1A9495518()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  return sub_1A957D528();
}

uint64_t sub_1A949557C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1A957D4F8();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  return sub_1A957D548();
}

uint64_t sub_1A9495608(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

BOOL _s12TextToSpeech15CoreSynthesizerC5VoiceV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v82 = *(a1 + 40);
  v81 = *(a1 + 56);
  v80 = *(a1 + 57);
  v78 = *(a1 + 64);
  v75 = *(a1 + 88);
  v76 = *(a1 + 72);
  v74 = *(a1 + 104);
  v73 = *(a1 + 120);
  v68 = *(a1 + 136);
  v66 = *(a1 + 152);
  v64 = *(a1 + 160);
  v62 = *(a1 + 176);
  v63 = *(a1 + 168);
  v58 = *(a1 + 184);
  v43 = *(a1 + 188);
  v55 = *(a1 + 180);
  v56 = *(a1 + 192);
  v44 = *(a1 + 193);
  v49 = *(a1 + 208);
  v50 = *(a1 + 200);
  v51 = *(a1 + 216);
  v52 = *(a1 + 232);
  v38 = *(a1 + 240);
  v37 = *(a1 + 248);
  v39 = *(a1 + 256);
  v40 = *(a1 + 272);
  v71 = *(a2 + 88);
  v72 = *(a2 + 72);
  v70 = *(a2 + 104);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v79 = *(a2 + 57);
  v77 = *(a2 + 64);
  v69 = *(a2 + 120);
  v67 = *(a2 + 136);
  v65 = *(a2 + 152);
  v60 = *(a2 + 168);
  v61 = *(a2 + 160);
  v59 = *(a2 + 176);
  v57 = *(a2 + 184);
  v53 = *(a2 + 180);
  v54 = *(a2 + 192);
  v41 = *(a2 + 188);
  v42 = *(a2 + 193);
  v45 = *(a2 + 200);
  v46 = *(a2 + 216);
  v47 = *(a2 + 232);
  v48 = *(a2 + 208);
  v33 = *(a2 + 248);
  v34 = *(a2 + 240);
  v35 = *(a2 + 256);
  v36 = *(a2 + 272);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1A957D3E8() & 1) == 0 || (sub_1A949017C(v2, v7) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8 || (v3 != v6 || v4 != v8) && (sub_1A957D3E8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if ((v82 != v9 || v5 != v10) && (sub_1A957D3E8() & 1) == 0 || (sub_1A948DEE4(v81, v11) & 1) == 0)
  {
    return 0;
  }

  v12 = 1701601645;
  if (v80)
  {
    if (v80 == 1)
    {
      v13 = 0xE600000000000000;
      v14 = 0x656C616D6566;
    }

    else
    {
      v14 = 0x6669636570736E75;
      v13 = 0xEB00000000646569;
    }
  }

  else
  {
    v13 = 0xE400000000000000;
    v14 = 1701601645;
  }

  if (v79)
  {
    if (v79 == 1)
    {
      v15 = 0xE600000000000000;
      v12 = 0x656C616D6566;
    }

    else
    {
      v12 = 0x6669636570736E75;
      v15 = 0xEB00000000646569;
    }
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  if (v14 == v12 && v13 == v15)
  {

    if (v78 != v77)
    {
      return 0;
    }

LABEL_32:
    v83 = v76;
    v84 = v75;
    v85 = v74;
    LOBYTE(v86) = v73;
    v94 = v72;
    v95 = v71;
    v96 = v70;
    v97 = v69;
    sub_1A93B17E8();
    sub_1A957C438();
    sub_1A957C438();
    if (v92 == v90 && v93 == v91)
    {
    }

    else
    {
      v18 = sub_1A957D3E8();

      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

    if ((sub_1A949017C(v68, v67) & 1) == 0)
    {
      return 0;
    }

    if ((sub_1A949017C(v66, v65) & 1) == 0)
    {
      return 0;
    }

    LOBYTE(v83) = 0;
    if (!sub_1A93C92B8(v64, v63, v62, v61, v60))
    {
      return 0;
    }

    if (v58)
    {
      if (!v57)
      {
        return 0;
      }
    }

    else
    {
      v19 = v57;
      if (v55 != v53)
      {
        v19 = 1;
      }

      if (v19)
      {
        return 0;
      }
    }

    if (v56)
    {
      if (!v54)
      {
        return 0;
      }
    }

    else
    {
      v20 = v54;
      if (v43 != v41)
      {
        v20 = 1;
      }

      if (v20)
      {
        return 0;
      }
    }

    LOBYTE(v92) = v44;
    LOBYTE(v90) = v42;
    sub_1A9496198();
    sub_1A957C438();
    sub_1A957C438();
    if (v83 == v94)
    {
    }

    else
    {
      v21 = sub_1A957D3E8();

      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    v22 = v49;
    if (v49)
    {
      v23 = v48;
      if (v48)
      {
        *&v83 = v50;
        *(&v83 + 1) = v49;
        v84 = v51;
        *&v85 = v52;
        *&v94 = v45;
        *(&v94 + 1) = v48;
        v95 = v46;
        *&v96 = v47;
        sub_1A9495608(v50, v49);
        sub_1A9495608(v45, v48);
        sub_1A94961EC();
        sub_1A957C438();
        sub_1A957C438();
        if (v92 != v90 || v93 != v91)
        {
          v29 = sub_1A957D3E8();
          sub_1A93B10AC(v45, v48);

          sub_1A93B10AC(v50, v49);
          if ((v29 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_65;
        }

        sub_1A93B10AC(v45, v48);

        v24 = v49;
LABEL_64:
        sub_1A93B10AC(v50, v24);
LABEL_65:
        v22 = v37;
        if (v37)
        {
          v23 = v33;
          if (v33)
          {
            *&v83 = v38;
            *(&v83 + 1) = v37;
            v84 = v39;
            *&v85 = v40;
            *&v94 = v34;
            *(&v94 + 1) = v33;
            v95 = v35;
            *&v96 = v36;
            sub_1A9495608(v38, v37);
            sub_1A9495608(v34, v33);
            sub_1A94961EC();
            sub_1A957C438();
            sub_1A957C438();
            if (v92 == v90 && v93 == v91)
            {
              sub_1A93B10AC(v34, v33);

              v31 = v37;
              v30 = v38;
LABEL_78:
              sub_1A93B10AC(v30, v31);
              return 1;
            }

            v32 = sub_1A957D3E8();
            sub_1A93B10AC(v34, v33);

            sub_1A93B10AC(v38, v37);
            return (v32 & 1) != 0;
          }
        }

        else
        {
          v23 = v33;
          if (!v33)
          {
            sub_1A9495608(v38, 0);
            sub_1A9495608(v34, 0);
            v30 = v38;
            v31 = 0;
            goto LABEL_78;
          }
        }

        v25 = v38;
        *&v83 = v38;
        *(&v83 + 1) = v37;
        v84 = v39;
        v26 = v34;
        *&v85 = v40;
        *(&v85 + 1) = v34;
        v86 = v23;
        v28 = *(&v35 + 1);
        v87 = v35;
        v27 = v36;
LABEL_72:
        v88 = v28;
        v89 = v27;
        sub_1A9495608(v25, v22);
        sub_1A9495608(v26, v23);
        sub_1A937B960(&v83, &qword_1EB387B68, &qword_1A9592D90);
        return 0;
      }
    }

    else
    {
      v23 = v48;
      if (!v48)
      {
        sub_1A9495608(v50, 0);
        sub_1A9495608(v45, 0);
        v24 = 0;
        goto LABEL_64;
      }
    }

    v25 = v50;
    *&v83 = v50;
    *(&v83 + 1) = v49;
    v84 = v51;
    v26 = v45;
    *&v85 = v52;
    *(&v85 + 1) = v45;
    v86 = v23;
    v28 = *(&v46 + 1);
    v87 = v46;
    v27 = v47;
    goto LABEL_72;
  }

  v16 = sub_1A957D3E8();

  result = 0;
  if ((v16 & 1) != 0 && v78 == v77)
  {
    goto LABEL_32;
  }

  return result;
}

unint64_t sub_1A9495EE4()
{
  result = qword_1EB390C20;
  if (!qword_1EB390C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB390C20);
  }

  return result;
}

unint64_t sub_1A9495F38()
{
  result = qword_1EB3860D0;
  if (!qword_1EB3860D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3860D0);
  }

  return result;
}

unint64_t sub_1A9495F8C()
{
  result = qword_1EB3860D8;
  if (!qword_1EB3860D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3860D8);
  }

  return result;
}

unint64_t sub_1A9495FE0()
{
  result = qword_1EB3860F0;
  if (!qword_1EB3860F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3860F0);
  }

  return result;
}

uint64_t sub_1A9496034(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB387B10, &qword_1A9591CD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for AudioComponentDescription()
{
  if (!qword_1EB386380)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB386380);
    }
  }
}

unint64_t sub_1A94960F0()
{
  result = qword_1EB3860E0;
  if (!qword_1EB3860E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3860E0);
  }

  return result;
}

unint64_t sub_1A9496144()
{
  result = qword_1EB3860E8;
  if (!qword_1EB3860E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3860E8);
  }

  return result;
}

unint64_t sub_1A9496198()
{
  result = qword_1EB386408;
  if (!qword_1EB386408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386408);
  }

  return result;
}

unint64_t sub_1A94961EC()
{
  result = qword_1EB386410;
  if (!qword_1EB386410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386410);
  }

  return result;
}

unint64_t sub_1A9496240()
{
  result = qword_1EB3862F0;
  if (!qword_1EB3862F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3862F0);
  }

  return result;
}

unint64_t sub_1A9496294()
{
  result = qword_1EB3862F8;
  if (!qword_1EB3862F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3862F8);
  }

  return result;
}

unint64_t sub_1A94962E8()
{
  result = qword_1EB386318;
  if (!qword_1EB386318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386318);
  }

  return result;
}

unint64_t sub_1A949633C()
{
  result = qword_1EB386308;
  if (!qword_1EB386308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386308);
  }

  return result;
}

unint64_t sub_1A9496390()
{
  result = qword_1EB386310;
  if (!qword_1EB386310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386310);
  }

  return result;
}

unint64_t sub_1A94963E4()
{
  result = qword_1EB39DE48[0];
  if (!qword_1EB39DE48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39DE48);
  }

  return result;
}

uint64_t sub_1A9496438(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A95C3A60 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A95C3770 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7974696C617571 && a2 == 0xE700000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7265646E6567 && a2 == 0xE600000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737469617274 && a2 == 0xE600000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7972616D6972705FLL && a2 == 0xEF73656C61636F4CLL || (sub_1A957D3E8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A95C3A80 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A95C3AA0 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A95C37F0 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x657A69536B736964 && a2 == 0xED00007365747942 || (sub_1A957D3E8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x64497465737361 && a2 == 0xE700000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x737341726577656ELL && a2 == 0xEC00000064497465)
  {

    return 15;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_1A9496934(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656449776172 && a2 == 0xED00007265696669;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A95C3AC0 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A95C3AE0 == a2)
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

uint64_t sub_1A9496A60()
{
  v0 = sub_1A957D158();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1A9496AAC(uint64_t *a1)
{
  v3 = sub_1A937829C(&qword_1EB387B60, &unk_1A9592D80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13 - v7;
  v9 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A9496CCC();
  sub_1A957D588();
  if (v1)
  {
    return sub_1A9378138(a1);
  }

  v19 = 0;
  v10 = sub_1A957D258();
  v18 = 1;
  v11 = sub_1A957D258();
  v17 = 2;
  v14 = sub_1A957D258();
  v16 = 3;
  v13 = sub_1A957D258();
  v15 = 4;
  sub_1A957D258();
  (*(v4 + 8))(v8, v3);
  sub_1A9378138(a1);
  return v10 | (v11 << 32);
}

unint64_t sub_1A9496CCC()
{
  result = qword_1EB3863A0;
  if (!qword_1EB3863A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3863A0);
  }

  return result;
}

unint64_t sub_1A9496D28()
{
  result = qword_1EB387B38;
  if (!qword_1EB387B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387B38);
  }

  return result;
}

unint64_t sub_1A9496D80()
{
  result = qword_1EB387B40;
  if (!qword_1EB387B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387B40);
  }

  return result;
}

unint64_t sub_1A9496DE0()
{
  result = qword_1ED96FD60;
  if (!qword_1ED96FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FD60);
  }

  return result;
}

unint64_t sub_1A9496E44()
{
  result = qword_1ED96FFE8;
  if (!qword_1ED96FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FFE8);
  }

  return result;
}

unint64_t sub_1A9496E9C()
{
  result = qword_1EB387B48;
  if (!qword_1EB387B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387B48);
  }

  return result;
}

unint64_t sub_1A9496EF4()
{
  result = qword_1EB387B50;
  if (!qword_1EB387B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387B50);
  }

  return result;
}

unint64_t sub_1A9496F4C()
{
  result = qword_1EB387B58;
  if (!qword_1EB387B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387B58);
  }

  return result;
}

unint64_t sub_1A9496FA4()
{
  result = qword_1EB386390;
  if (!qword_1EB386390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386390);
  }

  return result;
}

unint64_t sub_1A9496FFC()
{
  result = qword_1EB386398;
  if (!qword_1EB386398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386398);
  }

  return result;
}

uint64_t sub_1A9497084(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioComponentDescription();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A94970D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
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

uint64_t sub_1A9497118(uint64_t result, int a2, int a3)
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A94971C0(uint64_t a1, int a2)
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

uint64_t sub_1A9497208(uint64_t result, int a2, int a3)
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

uint64_t sub_1A9497264(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A94972AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A9497300(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1A9497368(uint64_t a1, int a2)
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

uint64_t sub_1A94973B0(uint64_t result, int a2, int a3)
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

uint64_t _s5VoiceV5StateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t _s5VoiceV5StateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1A9497574(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1A9497590(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

__n128 sub_1A94975D8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A94975EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A949760C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

unint64_t sub_1A949764C()
{
  result = qword_1EB39E850[0];
  if (!qword_1EB39E850[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39E850);
  }

  return result;
}

unint64_t sub_1A94976A4()
{
  result = qword_1EB39EA60[0];
  if (!qword_1EB39EA60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39EA60);
  }

  return result;
}

unint64_t sub_1A94976FC()
{
  result = qword_1EB39EB70;
  if (!qword_1EB39EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39EB70);
  }

  return result;
}

unint64_t sub_1A9497754()
{
  result = qword_1EB39EB78;
  if (!qword_1EB39EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39EB78);
  }

  return result;
}

unint64_t sub_1A94977AC()
{
  result = qword_1EB390C10;
  if (!qword_1EB390C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB390C10);
  }

  return result;
}

unint64_t sub_1A9497804()
{
  result = qword_1EB390C18;
  if (!qword_1EB390C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB390C18);
  }

  return result;
}

unint64_t sub_1A9497858()
{
  result = qword_1EB3863F0;
  if (!qword_1EB3863F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3863F0);
  }

  return result;
}

uint64_t sub_1A94978CC()
{
  v0 = sub_1A957AE58();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v13 - v9;
  sub_1A9377618(v8, qword_1EB3A7C60);
  sub_1A937731C(v0, qword_1EB3A7C60);
  sub_1A957AE38();
  sub_1A957AE18();
  sub_1A957AE28();
  v11 = *(v1 + 8);
  v11(v6, v0);
  return (v11)(v10, v0);
}

uint64_t CoreSynthesizer.Substitution.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A957B0B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CoreSynthesizer.Substitution.identifier.setter(uint64_t a1)
{
  v3 = sub_1A957B0B8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1A9497B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for CoreSynthesizer.Substitution.Context(0);
  result = sub_1A9497B74(a3, a6 + *(v10 + 20));
  v12 = (a6 + *(v10 + 24));
  *v12 = a4;
  v12[1] = a5;
  return result;
}

uint64_t sub_1A9497B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9497BE4(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v44[-v6];
  v8 = sub_1A957B308();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v19 = &v44[-v18];
  v20 = *v1;
  v21 = *v1 >> 61;
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v28 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1EEE9AC00](v16, v17);
      *&v44[-16] = a1;

      v23 = sub_1A949806C(sub_1A949B204, &v44[-32], v28);
      goto LABEL_16;
    }

    if (v21 == 3)
    {
      v22 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1EEE9AC00](v16, v17);
      *&v44[-16] = a1;

      v23 = sub_1A949820C(sub_1A94981C4, &v44[-32], v22);
LABEL_16:
      v27 = v23;

      return v27 & 1;
    }

LABEL_14:
    v27 = 1;
    return v27 & 1;
  }

  if (v21)
  {
    v29 = sub_1A937829C(&qword_1EB387B70, &qword_1A9592D98);
    v30 = swift_projectBox();
    v31 = *(v30 + *(v29 + 48));
    (*(v9 + 16))(v19, v30, v8);
    v32 = type metadata accessor for CoreSynthesizer.Substitution.Context(0);
    sub_1A93B5960(a1 + *(v32 + 20), v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      (*(v9 + 8))(v19, v8);
      sub_1A9498364(v7);
      goto LABEL_30;
    }

    (*(v9 + 32))(v14, v7, v8);

    v33 = sub_1A957B1A8();
    v35 = v34;
    if (v33 == sub_1A957B1A8() && v35 == v36)
    {
    }

    else
    {
      v38 = sub_1A957D3E8();

      if ((v38 & 1) == 0)
      {
LABEL_29:

        v42 = *(v9 + 8);
        v42(v14, v8);
        v42(v19, v8);
        goto LABEL_30;
      }
    }

    if (!v31)
    {
      v43 = *(v9 + 8);
      v43(v14, v8);
      v43(v19, v8);
      v27 = 1;
      return v27 & 1;
    }

    v39 = (a1 + *(v32 + 24));
    v40 = v39[1];
    if (v40)
    {
      v27 = sub_1A93A8204(*v39, v40, v31);

      v41 = *(v9 + 8);
      v41(v14, v8);
      v41(v19, v8);
      return v27 & 1;
    }

    goto LABEL_29;
  }

  v24 = a1[1];
  if (!v24)
  {
LABEL_30:
    v27 = 0;
    return v27 & 1;
  }

  if (*a1 == *(v20 + 16) && v24 == *(v20 + 24))
  {
    goto LABEL_14;
  }

  return sub_1A957D3E8();
}

uint64_t sub_1A949806C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v17 = *(*(a3 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v8)))));

      v13 = a1(&v17);
      if (v3)
      {

        return v15 & 1;
      }

      v14 = v13;

      if ((v14 & 1) == 0)
      {
        break;
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v15 = 0;
    return v15 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        v15 = 1;
        return v15 & 1;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A949820C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v17 = *(*(a3 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v8)))));

      v13 = a1(&v17);
      if (v3)
      {

        return v15 & 1;
      }

      v14 = v13;

      if (v14)
      {
        break;
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v15 = 1;
    return v15 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        v15 = 0;
        return v15 & 1;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A9498364(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A94983D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A957B308();
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  result = MEMORY[0x1EEE9AC00](v7, v8);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v63 = &v54 - v11;
  v64 = v12;
  v13 = 0;
  v14 = a1 + 56;
  v15 = 1 << *(a1 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  v19 = a2 + 56;
  v58 = (v10 + 8);
  v59 = (v10 + 16);
  v56 = a1;
  v61 = a2;
  v55 = a1 + 56;
  v54 = v18;
  v60 = a2 + 56;
  if (!v17)
  {
    goto LABEL_8;
  }

  do
  {
    v20 = __clz(__rbit64(v17));
    v57 = (v17 - 1) & v17;
LABEL_13:
    v23 = *(*(a1 + 48) + 8 * (v20 | (v13 << 6)));
    v24 = *(a2 + 40);
    v70 = v23;
    sub_1A957D4F8();
    v66 = v23;

    CoreSynthesizer.Substitution.Scope.hash(into:)(v69);
    v25 = sub_1A957D548();
    v26 = -1 << *(a2 + 32);
    v27 = v23 & 0x1FFFFFFFFFFFFFFFLL;
    v28 = v25 & ~v26;
    if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
LABEL_55:

      return 0;
    }

    v68 = ~v26;
    v67 = v66 & 0xE000000000000000;
    v65 = v23 & 0x1FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v30 = *(*(a2 + 48) + 8 * v28);
      v31 = v30 >> 61;
      if ((v30 >> 61) <= 1)
      {
        break;
      }

      if (v31 == 2)
      {
        v32 = 0x4000000000000000;
      }

      else
      {
        if (v31 != 3)
        {
          if (v66 == 0x8000000000000000)
          {
            goto LABEL_47;
          }

LABEL_34:

          goto LABEL_16;
        }

        v32 = 0x6000000000000000;
      }

      if (v67 == v32)
      {
        v34 = v27;
        v35 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v36 = *(v34 + 16);
        swift_retain_n();

        LOBYTE(v35) = sub_1A94983D0(v35, v36);

        if (v35)
        {
          goto LABEL_45;
        }

        v27 = v34;
      }

LABEL_16:
      v28 = (v28 + 1) & v68;
      if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    if (!v31)
    {
      if (!(v66 >> 61))
      {
        if (*(v30 + 16) == *(v66 + 16) && *(v30 + 24) == *(v66 + 24))
        {
          v53 = *(*(a2 + 48) + 8 * v28);

LABEL_47:

LABEL_48:

LABEL_49:
          a1 = v56;
          v14 = v55;
          v18 = v54;
          goto LABEL_50;
        }

        if (sub_1A957D3E8())
        {
          goto LABEL_48;
        }
      }

      goto LABEL_16;
    }

    v37 = sub_1A937829C(&qword_1EB387B70, &qword_1A9592D98);
    v38 = swift_projectBox();
    if (v67 != 0x2000000000000000)
    {
      goto LABEL_16;
    }

    v39 = v38;
    v40 = v4;
    v41 = *(v37 + 48);
    v62 = *(v38 + v41);
    v42 = swift_projectBox();
    v43 = *(v42 + v41);
    v44 = *v59;
    v45 = v63;
    (*v59)(v63, v39, v40);
    v46 = v64;
    v44(v64, v42, v40);

    swift_retain_n();

    if ((MEMORY[0x1AC5840A0](v45, v46) & 1) == 0)
    {

      v29 = *v58;
      (*v58)(v46, v40);
      v29(v45, v40);
      v27 = v65;

      v4 = v40;
      v19 = v60;
      a2 = v61;
      goto LABEL_16;
    }

    v47 = v40;
    v48 = v62;
    if (v62)
    {
      v19 = v60;
      if (!v43)
      {

        v52 = *v58;
        v4 = v47;
        (*v58)(v64, v47);
        v52(v63, v47);
        v27 = v65;

        goto LABEL_44;
      }

      v49 = sub_1A9454870(v48, v43);

      swift_bridgeObjectRelease_n();
      v50 = *v58;
      v4 = v47;
      (*v58)(v64, v47);
      v50(v63, v47);
      a2 = v61;
      if (v49)
      {
LABEL_45:

        goto LABEL_49;
      }

      v27 = v65;

      goto LABEL_34;
    }

    v51 = *v58;
    (*v58)(v64, v47);
    v51(v63, v47);
    v19 = v60;
    if (v43)
    {
      v27 = v65;

      swift_bridgeObjectRelease_n();
      v4 = v47;
LABEL_44:
      a2 = v61;
      goto LABEL_16;
    }

    a1 = v56;
    v4 = v47;
    a2 = v61;
    v14 = v55;
    v18 = v54;
LABEL_50:
    v17 = v57;
  }

  while (v57);
LABEL_8:
  v21 = v13;
  while (1)
  {
    v13 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      return 1;
    }

    v22 = *(v14 + 8 * v13);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v57 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t CoreSynthesizer.Substitution.Scope.hash(into:)(__int128 *a1)
{
  v3 = sub_1A957B308();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 >> 61;
  if (v10 <= 1)
  {
    if (v10)
    {
      v16 = sub_1A937829C(&qword_1EB387B70, &qword_1A9592D98);
      v17 = swift_projectBox();
      v18 = *(v17 + *(v16 + 48));
      (*(v4 + 16))(v8, v17, v3);
      MEMORY[0x1AC5863C0](2);
      sub_1A949AA90();

      sub_1A957C068();
      sub_1A957D518();
      if (v18)
      {
        sub_1A9457590(a1, v18);
      }

      return (*(v4 + 8))(v8, v3);
    }

    else
    {
      v13 = *(v9 + 16);
      v14 = *(v9 + 24);
      MEMORY[0x1AC5863C0](1);

      return sub_1A957C228();
    }
  }

  else
  {
    if (v10 == 2)
    {
      v11 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = 3;
    }

    else
    {
      if (v10 != 3)
      {
        return MEMORY[0x1AC5863C0](0);
      }

      v11 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = 4;
    }

    MEMORY[0x1AC5863C0](v12);

    sub_1A949A008(a1, v11);
  }
}

uint64_t CoreSynthesizer.Substitution.Scope.hashValue.getter()
{
  v3 = *v0;
  sub_1A957D4F8();
  CoreSynthesizer.Substitution.Scope.hash(into:)(v2);
  return sub_1A957D548();
}

uint64_t sub_1A9498D20()
{
  v3 = *v0;
  sub_1A957D4F8();
  CoreSynthesizer.Substitution.Scope.hash(into:)(v2);
  return sub_1A957D548();
}

uint64_t sub_1A9498D70()
{
  v3 = *v0;
  sub_1A957D4F8();
  CoreSynthesizer.Substitution.Scope.hash(into:)(v2);
  return sub_1A957D548();
}

uint64_t CoreSynthesizer.Substitution.search.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CoreSynthesizer.Substitution(0) + 20);
  v4 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v3 + 16);

  return sub_1A9327228();
}

uint64_t CoreSynthesizer.Substitution.search.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = (v1 + *(type metadata accessor for CoreSynthesizer.Substitution(0) + 20));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  result = sub_1A9328CAC();
  *v5 = v2;
  v5[1] = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t CoreSynthesizer.Substitution.replacement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CoreSynthesizer.Substitution(0) + 24);

  return sub_1A944A98C(v3, a1);
}

uint64_t CoreSynthesizer.Substitution.replacement.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CoreSynthesizer.Substitution(0) + 24);

  return sub_1A949AB08(a1, v3);
}

__n128 CoreSynthesizer.Substitution.init(replacing:with:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  sub_1A957B0A8();
  v8 = type metadata accessor for CoreSynthesizer.Substitution(0);
  v9 = a3 + *(v8 + 20);
  *v9 = v5;
  *(v9 + 8) = v6;
  *(v9 + 16) = v7;
  v10 = a3 + *(v8 + 24);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  result = *(a2 + 25);
  *(v10 + 25) = result;
  return result;
}

uint64_t CoreSynthesizer.Substitution.init(search:ipa:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 < 0)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v10 = *(a1 + 8);

    v11 = v8;
    v12 = v7;
  }

  sub_1A9327184(&v18);
  v17 = v18;
  v13 = swift_allocObject();
  TTSMarkup.Phoneme.init(alphabet:phonemes:orthography:)(&v17, a2, a3, v11, v12, v13 + 16);
  v19 = 0;
  sub_1A957B0A8();
  result = type metadata accessor for CoreSynthesizer.Substitution(0);
  v15 = a4 + *(result + 20);
  *v15 = v8;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  v16 = a4 + *(result + 24);
  *v16 = v13;
  *(v16 + 24) = &type metadata for TTSMarkup.Phoneme;
  *(v16 + 32) = &protocol witness table for TTSMarkup.Phoneme;
  *(v16 + 40) = v19;
  return result;
}

uint64_t CoreSynthesizer.Substitution.regex(forLocale:)(uint64_t a1)
{
  v3 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v37 - v6;
  v8 = sub_1A957B308();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1 + *(type metadata accessor for CoreSynthesizer.Substitution(0) + 20);
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  if (v17 < 0)
  {
    v31 = *(v14 + 8);

    return v15;
  }

  v37 = a1;
  v38 = v9;
  if (v17)
  {
    v18 = 47;
  }

  else
  {
    v18 = 26927;
  }

  v19 = 0xE200000000000000;
  if (v17)
  {
    v19 = 0xE100000000000000;
  }

  v39 = v18;
  v40 = v19;
  if ((sub_1A9499588(v15, v16) & 0x100000000) == 0 && (sub_1A94996D4(v15, v16) & 0x100000000) == 0)
  {
    v20 = objc_opt_self();

    v21 = sub_1A957C0C8();
    sub_1A9328CAC();
    v22 = [v20 escapedPatternForString_];

    v23 = sub_1A957C0F8();
    v25 = v24;

    if (qword_1EB39EC00 != -1)
    {
      swift_once();
    }

    v26 = sub_1A957AE58();
    sub_1A937731C(v26, qword_1EB3A7C60);
    v27 = sub_1A957AE48();
    v28 = v37;
    v29 = v38;
    if (v27)
    {
      v30 = 1;
    }

    else
    {
      v30 = sub_1A957AE48();
    }

    sub_1A93B5960(v28, v7);
    if ((*(v29 + 48))(v7, 1, v8) == 1)
    {
      sub_1A9498364(v7);
      if (v30)
      {
LABEL_17:
        v41 = 0;
        v42 = 0xE000000000000000;
        sub_1A957CF08();

        v41 = 0x7C735C3D3C3F282FLL;
        v42 = 0xEA0000000000295ELL;
        MEMORY[0x1AC585140](v23, v25);

        v32 = 0x29247C735C3D3F28;
        v33 = 0xE800000000000000;
LABEL_23:
        MEMORY[0x1AC585140](v32, v33);
        MEMORY[0x1AC585140](v39, v40);

        return v41;
      }

LABEL_22:
      v41 = 6446127;
      v42 = 0xE300000000000000;
      MEMORY[0x1AC585140](v23, v25);

      v32 = 25180;
      v33 = 0xE200000000000000;
      goto LABEL_23;
    }

    (*(v29 + 32))(v13, v7, v8);
    sub_1A957B118();
    v34 = sub_1A957C348();

    if ((v34 & 1) == 0)
    {
      sub_1A957B118();
      v35 = sub_1A957C348();

      if ((v35 & 1) == 0)
      {
        (*(v29 + 8))(v13, v8);
        if (v30)
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      }
    }

    v41 = 47;
    v42 = 0xE100000000000000;
    MEMORY[0x1AC585140](v23, v25);

    MEMORY[0x1AC585140](v39, v40);

    v15 = v41;
    (*(v29 + 8))(v13, v8);
    return v15;
  }

  result = sub_1A957D0A8();
  __break(1u);
  return result;
}

unint64_t sub_1A9499588(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1A949A3A8(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_1A957CEF8();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1A957CF68();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

unint64_t sub_1A94996D4(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    v11 = 0;
    goto LABEL_35;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = sub_1A949A5C8(v5 | (v2 << 16), a1, a2);
  if (v6 < 0x4000)
  {
    __break(1u);
    goto LABEL_37;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_37:
    v25 = sub_1A957C208();
    sub_1A949A3A8(v25, a1, a2);
    v11 = sub_1A957CEF8();
    goto LABEL_35;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v27 = a1;
    v28 = a2 & 0xFFFFFFFFFFFFFFLL;
    v12 = &v27 + (v6 >> 16);
    if ((*(v12 - 1) & 0xC0) == 0x80)
    {
      v9 = -2;
      do
      {
        v13 = v12[v9--] & 0xC0;
      }

      while (v13 == 128);
      goto LABEL_20;
    }

LABEL_21:
    v14 = -1;
    goto LABEL_22;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v26 = v6;
    v7 = sub_1A957CF68();
    v6 = v26;
  }

  v8 = v7 + (v6 >> 16);
  if ((*(v8 - 1) & 0xC0) != 0x80)
  {
    goto LABEL_21;
  }

  v9 = -2;
  do
  {
    v10 = *(v8 + v9--) & 0xC0;
  }

  while (v10 == 128);
LABEL_20:
  v14 = v9 + 1;
LABEL_22:
  v15 = sub_1A949A3A8((v6 + (v14 << 16)) & 0xFFFFFFFFFFFF0000 | 5, a1, a2) >> 16;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v27 = a1;
    v28 = a2 & 0xFFFFFFFFFFFFFFLL;
    v17 = &v27 + v15;
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v16 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v16 = sub_1A957CF68();
    }

    v17 = (v16 + v15);
  }

  v11 = *v17;
  if (*v17 < 0)
  {
    v18 = (__clz(v11 ^ 0xFF) - 24);
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = v17[1];
        v20 = v17[2];
        v21 = ((v11 & 0xF) << 12) | ((v19 & 0x3F) << 6);
      }

      else
      {
        v22 = v17[1];
        v23 = v17[2];
        v20 = v17[3];
        v21 = ((v11 & 0xF) << 18) | ((v22 & 0x3F) << 12) | ((v23 & 0x3F) << 6);
      }

      v11 = v21 & 0xFFFFFFC0 | v20 & 0x3F;
    }

    else if (v18 != 1)
    {
      v11 = v17[1] & 0x3F | ((v11 & 0x1F) << 6);
    }
  }

LABEL_35:
  LOBYTE(v27) = v2 == 0;
  return v11 | ((v2 == 0) << 32);
}

uint64_t sub_1A9499974(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1A9499E30(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for CoreSynthesizer.Substitution(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A9499AA0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v5 = v4;
  v7 = a1;
  v8 = a4 + 64;
  v9 = 1 << *(a4 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a4 + 64);
  v12 = (v9 + 63) >> 6;

  v19 = a4;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = (v15 << 9) | (8 * __clz(__rbit64(v11)));
      v17 = *(*(v19 + 56) + v16);
      v21[0] = *(*(v19 + 48) + v16);
      v21[1] = v17;

      a2(&v20, &v22, v21);
      if (v5)
      {
        break;
      }

      v11 &= v11 - 1;

      v7 = v20;
      v22 = v20;
      v14 = v15;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return v7;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        goto LABEL_11;
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A9499C2C(uint64_t a1, unint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_1A957C2B8();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v5;
  v11[4] = sub_1A949ABE8;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A9499DC8;
  v11[3] = &unk_1F1CED7C0;
  v8 = _Block_copy(v11);

  [v2 enumerateMatchesInCString:sub_1A957C1C8() + 32 length:v6 usingBlock:v8];

  _Block_release(v8);
  swift_beginAccess();
  v9 = *(v5 + 16);

  return v9;
}

void sub_1A9499DC8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

size_t sub_1A9499E30(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A937829C(&qword_1EB387B78, &qword_1A9593008);
  v10 = *(type metadata accessor for CoreSynthesizer.Substitution(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(type metadata accessor for CoreSynthesizer.Substitution(0) - 8);
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

uint64_t sub_1A949A008(__int128 *a1, uint64_t a2)
{
  v40 = sub_1A957B308();
  v4 = *(v40 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v40, v6);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  *&v43[13] = a1[2];
  *&v43[15] = v8;
  v43[17] = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v38 = a1;
  *&v43[9] = v10;
  *&v43[11] = v9;
  v11 = sub_1A957D548();
  v12 = a2 + 56;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v37 = (v4 + 16);
  v36 = (v4 + 8);
  v17 = v11;

  v19 = 0;
  v20 = 0;
  v42 = a2;
  while (v15)
  {
LABEL_12:
    v27 = *(*(a2 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v15)))));
    sub_1A957D4F8();
    v28 = v27 >> 61;
    if ((v27 >> 61) <= 1)
    {
      v41 = v19;
      if (v28)
      {
        v35 = v17;
        v31 = sub_1A937829C(&qword_1EB387B70, &qword_1A9592D98);
        v32 = swift_projectBox();
        v33 = *(v32 + *(v31 + 48));
        (*v37)(v39, v32, v40);
        MEMORY[0x1AC5863C0](2);
        sub_1A949AA90();

        sub_1A957C068();
        sub_1A957D518();
        if (v33)
        {
          sub_1A9457590(v43, v33);
        }

        v19 = v41;
        (*v36)(v39, v40);
        a2 = v42;
        v17 = v35;
      }

      else
      {
        v29 = *(v27 + 16);
        v30 = *(v27 + 24);
        MEMORY[0x1AC5863C0](1);

        sub_1A957C228();
        v19 = v41;
      }
    }

    else
    {
      if (v28 == 2)
      {
        v21 = v17;
        v22 = v19;
        v23 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v24 = 3;
LABEL_5:
        MEMORY[0x1AC5863C0](v24);
        v19 = v22;
        v17 = v21;
        a2 = v42;

        sub_1A949A008(v43, v23);

        goto LABEL_6;
      }

      if (v28 == 3)
      {
        v21 = v17;
        v22 = v19;
        v23 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v24 = 4;
        goto LABEL_5;
      }

      MEMORY[0x1AC5863C0](0);
    }

LABEL_6:
    v15 &= v15 - 1;
    v25 = sub_1A957D548();

    v19 ^= v25;
  }

  while (1)
  {
    v26 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v26 >= v16)
    {

      return MEMORY[0x1AC5863C0](v19);
    }

    v15 = *(v12 + 8 * v26);
    ++v20;
    if (v15)
    {
      v20 = v26;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A949A3A8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1A949A440(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1A949A4B4(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1A949A440(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1A938156C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A949A4B4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1A957CF68();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t sub_1A949A5C8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1A949A660(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1A949A4B4(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1A949A660(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1A938156C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t _s12TextToSpeech15CoreSynthesizerC12SubstitutionV5ScopeO2eeoiySbAG_AGtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v4 = sub_1A957B308();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v42 - v13;
  v15 = *a1;
  v16 = *a2;
  v17 = *a1 >> 61;
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      if (v16 >> 61 == 2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v17 == 3)
      {
        if (v16 >> 61 != 3)
        {
          return 0;
        }

LABEL_16:
        v20 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v21 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        LOBYTE(v20) = sub_1A94983D0(v20, v21);

        return v20 & 1;
      }

      if (v16 == 0x8000000000000000)
      {

        return 1;
      }
    }

    return 0;
  }

  if (v17)
  {
    v43 = v12;
    v22 = sub_1A937829C(&qword_1EB387B70, &qword_1A9592D98);
    v23 = swift_projectBox();
    if (v16 >> 61 != 1)
    {
      return 0;
    }

    v24 = *(v22 + 48);
    v42 = *(v23 + v24);
    v25 = v23;
    v26 = swift_projectBox();
    v27 = *(v26 + v24);
    v28 = v5[2];
    v29 = v25;
    v30 = v43;
    v28(v14, v29, v43);
    v28(v10, v26, v30);

    if (MEMORY[0x1AC5840A0](v14, v10))
    {
      if (!v42)
      {
        v39 = v5[1];
        v40 = v10;
        v41 = v43;
        v39(v40, v43);
        v39(v14, v41);

        if (!v27)
        {
          return 1;
        }

        return 0;
      }

      if (v27)
      {

        v32 = sub_1A9454870(v31, v27);
        swift_bridgeObjectRelease_n();

        v33 = v5[1];
        v34 = v10;
        v35 = v43;
        v33(v34, v43);
        v33(v14, v35);

        return (v32 & 1) != 0;
      }
    }

    else
    {
    }

    v36 = v5[1];
    v37 = v10;
    v38 = v43;
    v36(v37, v43);
    v36(v14, v38);

    return 0;
  }

  if (v16 >> 61)
  {
    return 0;
  }

  if (*(v15 + 16) == *(v16 + 16) && *(v15 + 24) == *(v16 + 24))
  {
    return 1;
  }

  return sub_1A957D3E8();
}

unint64_t sub_1A949AA90()
{
  result = qword_1ED970220;
  if (!qword_1ED970220)
  {
    sub_1A957B308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED970220);
  }

  return result;
}

uint64_t sub_1A949AB40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *a1;
  v8 = *a2;
  v7 = a2[1];

  if (sub_1A9497BE4(v5))
  {
    *a3 = v6;

    sub_1A9499974(v7);
  }

  else
  {

    *a3 = v6;
  }
}

char *sub_1A949ABE8(void *a1)
{
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v7 = [a1 utf8Range];
  v8 = (v4 >> 56) & 0xF;
  if ((v4 & 0x1000000000000000) != 0)
  {
    v1 = MEMORY[0x1AC5851A0](15, v7, v5, v4);
  }

  else
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_22;
    }

    v9 = v5 & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v9 = (v4 >> 56) & 0xF;
    }

    if (v9 < v7)
    {
      goto LABEL_23;
    }

    v1 = (v7 << 16) | 4;
  }

  result = [a1 utf8Range];
  v12 = __OFADD__(result, v11);
  v13 = &result[v11];
  if (v12)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v4 & 0x1000000000000000) == 0)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v14 = v5 & 0xFFFFFFFFFFFFLL;
      if ((v4 & 0x2000000000000000) != 0)
      {
        v14 = (v4 >> 56) & 0xF;
      }

      if (v14 >= v13)
      {
        v8 = (v13 << 16) | 4;
        goto LABEL_15;
      }
    }

    __break(1u);
    return result;
  }

  v8 = MEMORY[0x1AC5851A0](15, v13, v5, v4);
LABEL_15:
  if (v8 >> 14 < v1 >> 14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  swift_beginAccess();
  v4 = *(v6 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_25:
    v4 = sub_1A93C3280(0, *(v4 + 2) + 1, 1, v4);
    *(v6 + 16) = v4;
  }

  v17 = *(v4 + 2);
  v16 = *(v4 + 3);
  if (v17 >= v16 >> 1)
  {
    v4 = sub_1A93C3280((v16 > 1), v17 + 1, 1, v4);
  }

  *(v4 + 2) = v17 + 1;
  v18 = &v4[16 * v17];
  *(v18 + 4) = v1;
  *(v18 + 5) = v8;
  *(v6 + 16) = v4;
  return swift_endAccess();
}

uint64_t sub_1A949AD88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A949ADCC()
{
  result = sub_1A957B0B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1A949AE78()
{
  sub_1A949AF00();
  if (v0 <= 0x3F)
  {
    sub_1A942D0B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A949AF00()
{
  if (!qword_1EB3863D8)
  {
    v0 = sub_1A957CC58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3863D8);
    }
  }
}

unint64_t sub_1A949AF50(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

uint64_t sub_1A949AF6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A949AFC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1A949B018(void *result, uint64_t a2)
{
  if (a2 < 4)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 4)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1A949B060(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A949B0B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_1A949B144(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A949B180(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A949B1CC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t TTSMarkup.Paragraph.context.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.Paragraph.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = SpeechContext.init<each A>(_:)(v25, 0, v25, &v22);
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v15 = a1;
  v4 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x100))(v3);
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A957CE48())
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1AC585DE0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_1A93D1250(&v17);

      if (v18)
      {
        sub_1A932D070(&v17, &v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A93ADC90(0, v8[2] + 1, 1, v8);
        }

        v13 = v8[2];
        v12 = v8[3];
        if (v13 >= v12 >> 1)
        {
          v8 = sub_1A93ADC90((v12 > 1), v13 + 1, 1, v8);
        }

        v8[2] = v13 + 1;
        sub_1A932D070(&v19, &v8[5 * v13 + 4]);
      }

      else
      {
        sub_1A9383404(&v17);
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v20 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v21 = &protocol witness table for <A> [A];

  *&v19 = v8;
  sub_1A93A38D8(&v19, v23);
  sub_1A949B7C4(&v22, a2);
  return sub_1A949B7FC(&v22);
}

uint64_t TTSMarkup.Paragraph.init(speech:)@<X0>(void (*a1)(void *__return_ptr, uint64_t)@<X0>, void *a2@<X8>)
{
  v3 = a2;
  v4 = SpeechContext.init<each A>(_:)(v7, 0, v7, a2);
  *(v3 + 8) = 0u;
  v3 += 8;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0u;
  a1(v6, v4);
  return sub_1A93A38D8(v6, v3);
}

uint64_t TTSMarkup.Paragraph.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 80))(v3);
}

{
  v7 = *(a3 + 104);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A9382328;

  return v11(v3, a2, a3);
}

uint64_t sub_1A949B714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.Paragraph.accept<A>(_:)(a1, a2, a3);
}

id sub_1A949B83C()
{
  v0 = type metadata accessor for VoicePreviewer();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = VoicePreviewer.init()();
  qword_1EB39EC28 = result;
  return result;
}

id VoicePreviewer.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return VoicePreviewer.init()();
}

uint64_t static VoicePreviewer.shared.getter()
{
  if (qword_1EB39EC20 != -1)
  {
    swift_once();
  }
}

id sub_1A949B90C()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = *(v0 + 112);
  }

  else
  {
    v3 = sub_1A949B964();
    v4 = *(v0 + 112);
    *(v0 + 112) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1A949B964()
{
  v28[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1A957BC88();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() auxiliarySession];
  v7 = *MEMORY[0x1E6958098];
  v28[0] = 0;
  v8 = [v6 setCategory:v7 error:v28];
  v9 = v28[0];
  if (!v8)
  {
    goto LABEL_5;
  }

  v28[0] = 0;
  v10 = v9;
  v11 = [v6 setCategoryOptions:3 error:v28];
  v9 = v28[0];
  if (!v11)
  {
    goto LABEL_5;
  }

  v28[0] = 0;
  v12 = v9;
  v13 = [v6 setParticipatesInNowPlayingAppPolicy:0 error:v28];
  v9 = v28[0];
  if (v13)
  {
    v14 = v28[0];
  }

  else
  {
LABEL_5:
    v15 = v9;
    v16 = sub_1A957AEF8();

    swift_willThrow();
    v17 = sub_1A93772F8();
    (*(v1 + 16))(v5, v17, v0);
    v18 = v16;
    v19 = sub_1A957BC68();
    v20 = sub_1A957CA78();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v16;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1A9324000, v19, v20, "Failed to configure audio session with error %@", v21, 0xCu);
      sub_1A937B960(v22, &qword_1EB386960, &unk_1A9587798);
      MEMORY[0x1AC587CD0](v22, -1, -1);
      MEMORY[0x1AC587CD0](v21, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v5, v0);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1A949BC3C(uint64_t a1)
{
  v2 = *(v1 + 112);
  *(v1 + 112) = a1;
  return MEMORY[0x1EEE66BB8]();
}

void (*sub_1A949BC48(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A949B90C();
  return sub_1A949BC90;
}

void sub_1A949BC90(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
}

id sub_1A949BD38()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___synth;
  v2 = *(v0 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___synth);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___synth);
  }

  else
  {
    v4 = v0;
    type metadata accessor for CoreSynthesizer();
    v5 = CoreSynthesizer.__allocating_init()();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1A949BDA8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___synth);
  *(v1 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___synth) = a1;
  return MEMORY[0x1EEE66BB8]();
}

void (*sub_1A949BDBC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A949BD38();
  return sub_1A949BE04;
}

void sub_1A949BE04(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___synth);
  *(v1 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___synth) = v2;
}

void *sub_1A949BE1C()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_currentPlayer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A949BE68(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_currentPlayer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A949BF3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1A9391BAC(v4 + v8, a4, a2, a3);
}

uint64_t sub_1A949BFC4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_1A949D600(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1A949C098()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_initialized;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A949C0DC(char a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_initialized;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A949C18C()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_initializationTask;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1A949C1D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_initializationTask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A949C28C()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___xpcClient;
  if (*(v0 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___xpcClient))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___xpcClient);
  }

  else
  {
    v3 = v0;
    type metadata accessor for VoiceDatabaseXPC.Client();
    v2 = VoiceDatabaseXPC.Client.__allocating_init()();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1A949C2FC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___xpcClient);
  *(v1 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___xpcClient) = a1;
}

uint64_t (*sub_1A949C314(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A949C28C();
  return sub_1A949C35C;
}

uint64_t sub_1A949C35C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___xpcClient);
  *(v1 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___xpcClient) = v2;
}

uint64_t sub_1A949C374()
{
  v1[2] = v0;
  v2 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(sub_1A937829C(&unk_1EB387B80, qword_1A9587740) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = sub_1A937829C(&qword_1EB387BA0, &qword_1A95930B8);
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v1[7] = *(v5 + 64);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A949C4C4, v0, 0);
}

uint64_t sub_1A949C4C4()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x120))();
  v2 = *(v0 + 72);
  if (v1)
  {
    v3 = *(v0 + 64);
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = *(v0 + 72);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    type metadata accessor for VoiceDatabaseClient();
    static VoiceDatabaseClient.sampleUrl.getter();
    v9 = *(MEMORY[0x1E6988270] + 4);
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v10[1] = sub_1A949C620;
    v11 = *(v0 + 72);
    v12 = *(v0 + 32);
    v13 = *(v0 + 40);

    return MEMORY[0x1EEDE9B70](v12, v13);
  }
}

uint64_t sub_1A949C620()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A949C730, v2, 0);
}

uint64_t sub_1A949C730()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0xC8))(v0[4]);
  v8 = sub_1A957C688();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v4 + 16))(v2, v1, v5);
  v9 = sub_1A94A3EC4(&qword_1EB387BA8, type metadata accessor for VoicePreviewer);
  v10 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = v6;
  *(v11 + 3) = v9;
  *(v11 + 4) = v6;
  (*(v4 + 32))(&v11[v10], v2, v5);
  swift_retain_n();
  v12 = sub_1A93C4B70(0, 0, v7, &unk_1A95930C8, v11);
  v13 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0x140))(v12);
  (*(v4 + 8))(v1, v5);
  (*((*v13 & *v6) + 0x128))(1);
  v15 = v0[8];
  v14 = v0[9];
  v17 = v0[3];
  v16 = v0[4];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1A949C9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();
  v10 = *(*(sub_1A937829C(&qword_1EB387C68, &qword_1A9593210) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v11 = sub_1A937829C(&unk_1EB387C70, &qword_1A9593218);
  v5[8] = v11;
  v12 = *(v11 - 8);
  v5[9] = v12;
  v13 = *(v12 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A949CB3C, a4, 0);
}

id sub_1A949CB3C()
{
  sub_1A957CA58();
  result = AXLogSpeechAssetDownload();
  if (result)
  {
    v2 = result;
    v3 = v0[2];
    sub_1A957BC58();

    v4 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x150))();
    v0[11] = v4;
    v5 = *(*v4 + 232);
    v8 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_1A949CD04;

    return (v8)(1, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A949CD04()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_1A949D1E4;
  }

  else
  {
    v6 = *(v2 + 88);
    v7 = *(v2 + 16);

    v5 = sub_1A949CE2C;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A949CE2C()
{
  v1 = v0[10];
  v2 = v0[3];
  sub_1A937829C(&qword_1EB387BA0, &qword_1A95930B8);
  sub_1A957B918();
  v3 = sub_1A94A3EC4(&qword_1EB387BA8, type metadata accessor for VoicePreviewer);
  v0[14] = v3;
  v4 = v0[2];
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_1A949CF3C;
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];

  return MEMORY[0x1EEE6D9C8](v8, v4, v3, v9);
}

uint64_t sub_1A949CF3C()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A949D04C, v2, 0);
}

uint64_t sub_1A949D04C()
{
  v1 = v0[7];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    v2 = v0[6];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[6];
    v6 = v0[2];
    sub_1A93F47DC(v1, v5);
    (*((*MEMORY[0x1E69E7D40] & *v6) + 0xC8))(v5);
    v7 = v0[14];
    v8 = v0[2];
    v9 = *(MEMORY[0x1E69E8678] + 4);
    v10 = swift_task_alloc();
    v0[15] = v10;
    *v10 = v0;
    v10[1] = sub_1A949CF3C;
    v11 = v0[10];
    v12 = v0[7];
    v13 = v0[8];

    return MEMORY[0x1EEE6D9C8](v12, v8, v7, v13);
  }
}

uint64_t sub_1A949D1E4()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

id VoicePreviewer.init()()
{
  v1 = v0;
  v2 = sub_1A957CAD8();
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v21 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A957CAC8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v9 = sub_1A957BF48();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  swift_defaultActor_initialize();
  v0[14] = 0;
  type metadata accessor for VoiceDatabaseClient();
  v12 = sub_1A938983C();
  v0[15] = VoiceDatabaseClient.__allocating_init(readOnly:)(v12 & 1);
  v13 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_sampleAssetUrl;
  v14 = sub_1A957AFD8();
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  *&v1[OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___synth] = 0;
  *&v1[OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_currentPlayer] = 0;
  v15 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_currentPreviewContinuation;
  v16 = sub_1A937829C(&qword_1EB386E38, &qword_1A9589CD8);
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  v1[OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_initialized] = 0;
  *&v1[OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_initializationTask] = 0;
  *&v1[OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___xpcClient] = 0;
  v20 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_siriQueue;
  sub_1A9387478(0, &qword_1ED96FE90, 0x1E69E9610);
  sub_1A957BF28();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1A94A3EC4(&qword_1ED96FE98, MEMORY[0x1E69E8030]);
  sub_1A937829C(&unk_1EB387BB0, &qword_1A9589CC0);
  sub_1A946D250(&qword_1ED96FEA8, &unk_1EB387BB0, &qword_1A9589CC0);
  sub_1A957CE08();
  (*(v22 + 104))(v21, *MEMORY[0x1E69E8090], v23);
  *&v1[v20] = sub_1A957CB08();
  v17 = type metadata accessor for VoicePreviewer();
  v24.receiver = v1;
  v24.super_class = v17;
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t sub_1A949D600(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1A937829C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for VoicePreviewer()
{
  result = qword_1EB39ECC0;
  if (!qword_1EB39ECC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A949D6B4()
{
  v2 = *(sub_1A937829C(&qword_1EB387BA0, &qword_1A95930B8) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A9382328;

  return sub_1A949C9CC(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_1A949D7BC(uint64_t a1, uint64_t a2)
{
  *(v3 + 544) = v2;
  *(v3 + 536) = a2;
  *(v3 + 528) = a1;
  v5 = *(*(sub_1A937829C(&unk_1EB387B80, qword_1A9587740) - 8) + 64) + 15;
  *(v3 + 552) = swift_task_alloc();
  v6 = sub_1A957AFD8();
  *(v3 + 560) = v6;
  v7 = *(v6 - 8);
  *(v3 + 568) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 576) = swift_task_alloc();
  *(v3 + 584) = swift_task_alloc();
  *(v3 + 520) = *(a2 + 64);
  v9 = *(a2 + 48);
  *(v3 + 488) = *(a2 + 32);
  *(v3 + 504) = v9;
  v10 = *(a2 + 16);
  *(v3 + 456) = *a2;
  *(v3 + 472) = v10;
  v11 = *(a2 + 88);
  *(v3 + 592) = *(a2 + 72);
  *(v3 + 608) = v11;
  *(v3 + 624) = *(a2 + 104);
  *(v3 + 455) = *(a2 + 120);
  v12 = *(a2 + 201);
  *(v3 + 360) = *(a2 + 185);
  *(v3 + 376) = v12;
  v13 = *(a2 + 169);
  *(v3 + 328) = *(a2 + 153);
  *(v3 + 344) = v13;
  *(v3 + 439) = *(a2 + 264);
  v14 = *(a2 + 249);
  v15 = *(a2 + 217);
  *(v3 + 408) = *(a2 + 233);
  *(v3 + 424) = v14;
  *(v3 + 392) = v15;
  v16 = *(a2 + 137);
  *(v3 + 296) = *(a2 + 121);
  *(v3 + 312) = v16;
  v17 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x168);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v3 + 640) = v19;
  *v19 = v3;
  v19[1] = sub_1A949DA30;

  return v21();
}

uint64_t sub_1A949DA30()
{
  v1 = *(*v0 + 640);
  v2 = *(*v0 + 544);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A949DB40, v2, 0);
}

uint64_t sub_1A949DB40()
{
  if (*(v0 + 455))
  {
    if (*(v0 + 455) != 2 || ((v1 = vorrq_s8(*(v0 + 608), *(v0 + 624)), v2 = *&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | *(v0 + 600), (*(v0 + 592) & 0xFFFFFFFFFFFFFFFBLL) == 1) ? (v3 = v2 == 0) : (v3 = 0), !v3))
    {
      (*(*(v0 + 568) + 56))(*(v0 + 528), 1, 1, *(v0 + 560));
LABEL_18:
      v45 = *(v0 + 584);
      v46 = *(v0 + 576);
      v47 = *(v0 + 552);

      v48 = *(v0 + 8);

      return v48();
    }

LABEL_9:
    v5 = *(v0 + 568);
    v6 = *(v0 + 560);
    v7 = *(v0 + 552);
    (*((*MEMORY[0x1E69E7D40] & **(v0 + 544)) + 0xC0))();
    if ((*(v5 + 48))(v7, 1, v6) == 1)
    {
      v8 = *(v0 + 568);
      v9 = *(v0 + 560);
      v10 = *(v0 + 528);
      sub_1A937B960(*(v0 + 552), &unk_1EB387B80, qword_1A9587740);
      v11 = *(v8 + 56);
    }

    else
    {
      v12 = *(v0 + 455);
      v13 = *(v0 + 632);
      v14 = *(v0 + 624);
      v15 = *(v0 + 584);
      v52 = v15;
      v53 = *(v0 + 576);
      v16 = *(v0 + 568);
      v54 = *(v0 + 560);
      v17 = *(v0 + 552);
      v50 = *(v0 + 608);
      v51 = *(v0 + 592);
      v49 = *(v16 + 32);
      v49();
      v58 = *(v0 + 488);
      v59 = *(v0 + 504);
      v60 = *(v0 + 520);
      v56 = *(v0 + 456);
      v57 = *(v0 + 472);
      *&v69[15] = *(v0 + 439);
      v61 = *(v0 + 296);
      v62 = *(v0 + 312);
      v66 = *(v0 + 376);
      v65 = *(v0 + 360);
      v64 = *(v0 + 344);
      v63 = *(v0 + 328);
      *v69 = *(v0 + 424);
      v68 = *(v0 + 408);
      v67 = *(v0 + 392);
      v18 = CoreSynthesizer.Voice.cannonicId.getter();
      MEMORY[0x1AC585140](v18);

      MEMORY[0x1AC585140](1717658414, 0xE400000000000000);
      sub_1A957AF78();

      v19 = [objc_opt_self() defaultManager];
      sub_1A957AFA8();
      v20 = sub_1A957C0C8();

      v21 = [v19 fileExistsAtPath_];

      v22 = *(v16 + 8);
      v22(v52, v54);
      v23 = (v16 + 56);
      v9 = *(v0 + 560);
      v10 = *(v0 + 528);
      if (v21)
      {
        (v49)(*(v0 + 528), *(v0 + 576), *(v0 + 560));
        (*v23)(v10, 0, 1, v9);
        goto LABEL_18;
      }

      v22(*(v0 + 576), *(v0 + 560));
      v11 = *v23;
    }

    v11(v10, 1, 1, v9);
    goto LABEL_18;
  }

  v4 = *(v0 + 592);
  if (v4 == 3)
  {
    goto LABEL_9;
  }

  v24 = *(v0 + 632);
  v25 = *(v0 + 544);
  v26 = *(v0 + 536);
  v27 = *(v0 + 600);
  v28 = *(v0 + 616);
  *(v0 + 16) = *v26;
  v29 = *(v26 + 16);
  v30 = *(v26 + 48);
  v31 = *(v26 + 64);
  *(v0 + 48) = *(v26 + 32);
  *(v0 + 64) = v30;
  *(v0 + 32) = v29;
  *(v0 + 80) = v31;
  *(v0 + 88) = v4;
  *(v0 + 96) = v27;
  *(v0 + 112) = v28;
  *(v0 + 128) = v24;
  *(v0 + 136) = 0;
  v32 = *(v26 + 121);
  *(v0 + 153) = *(v26 + 137);
  *(v0 + 137) = v32;
  v33 = *(v26 + 153);
  v34 = *(v26 + 169);
  v35 = *(v26 + 185);
  *(v0 + 217) = *(v26 + 201);
  *(v0 + 201) = v35;
  *(v0 + 185) = v34;
  *(v0 + 169) = v33;
  v36 = *(v26 + 217);
  v37 = *(v26 + 233);
  v38 = *(v26 + 249);
  *(v0 + 280) = *(v26 + 264);
  *(v0 + 265) = v38;
  *(v0 + 249) = v37;
  *(v0 + 233) = v36;
  v39 = *((*MEMORY[0x1E69E7D40] & *v25) + 0x1B8);
  v55 = (v39 + *v39);
  v40 = v39[1];
  v41 = swift_task_alloc();
  *(v0 + 648) = v41;
  *v41 = v0;
  v41[1] = sub_1A949E0CC;
  v42 = *(v0 + 544);
  v43 = *(v0 + 528);

  return v55(v43, v0 + 16);
}

uint64_t sub_1A949E0CC()
{
  v1 = *v0;
  v2 = *(*v0 + 648);
  v8 = *v0;

  v3 = v1[73];
  v4 = v1[72];
  v5 = v1[69];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1A949E21C(uint64_t a1, uint64_t a2)
{
  v3[144] = v2;
  v3[143] = a2;
  v3[142] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A949E244, v2, 0);
}

uint64_t sub_1A949E244()
{
  v1 = *(v0[144] + 120);
  v2 = swift_task_alloc();
  v0[145] = v2;
  *v2 = v0;
  v2[1] = sub_1A949E2EC;
  v3 = v0[143];
  v4 = v0[142];

  return VoiceDatabaseClient.voice(forIdentifier:)((v0 + 72), v4, v3);
}

uint64_t sub_1A949E2EC()
{
  v1 = *(*v0 + 1160);
  v2 = *(*v0 + 1152);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A949E3FC, v2, 0);
}

uint64_t sub_1A949E3FC()
{
  memcpy(v0 + 37, v0 + 72, 0x118uLL);
  memcpy(v0 + 2, v0 + 72, 0x118uLL);
  if (sub_1A932D058((v0 + 2)) == 1)
  {
    v1 = v0[1];

    return v1(0);
  }

  else
  {
    v3 = v0[144];
    memcpy(v0 + 107, v0 + 2, 0x118uLL);
    v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x188);
    v8 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[146] = v6;
    *v6 = v0;
    v6[1] = sub_1A949E5B4;
    v7 = v0[144];

    return v8(v0 + 107);
  }
}

uint64_t sub_1A949E5B4(char a1)
{
  v2 = *(*v1 + 1168);
  v3 = *(*v1 + 1152);
  v5 = *v1;
  *(*v1 + 1176) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A949E6CC, v3, 0);
}

uint64_t sub_1A949E6CC()
{
  sub_1A937B960(v0 + 296, &unk_1EB387BC0, &qword_1A9587E30);
  v1 = *(v0 + 1176);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A949E740(uint64_t a1)
{
  *(v2 + 296) = a1;
  *(v2 + 304) = v1;
  v4 = *(*(sub_1A937829C(&unk_1EB387B80, qword_1A9587740) - 8) + 64) + 15;
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 336) = *(a1 + 193);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x168);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 320) = v7;
  *v7 = v2;
  v7[1] = sub_1A949E8C4;

  return v9();
}

uint64_t sub_1A949E8C4()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A949E9D4, v2, 0);
}

uint64_t sub_1A949E9D4()
{
  v1 = *(v0 + 336);
  if ((v1 & 0xFE) == 2)
  {
    v2 = *(v0 + 296);
    v3 = *(v0 + 304);
    *(v0 + 16) = *v2;
    v4 = *(v2 + 16);
    v5 = *(v2 + 32);
    v6 = *(v2 + 64);
    *(v0 + 64) = *(v2 + 48);
    *(v0 + 80) = v6;
    *(v0 + 32) = v4;
    *(v0 + 48) = v5;
    v7 = *(v2 + 80);
    v8 = *(v2 + 96);
    v9 = *(v2 + 128);
    *(v0 + 128) = *(v2 + 112);
    *(v0 + 144) = v9;
    *(v0 + 96) = v7;
    *(v0 + 112) = v8;
    v10 = *(v2 + 144);
    v11 = *(v2 + 160);
    v12 = *(v2 + 176);
    *(v0 + 208) = *(v2 + 192);
    *(v0 + 176) = v11;
    *(v0 + 192) = v12;
    *(v0 + 160) = v10;
    *(v0 + 209) = v1;
    v13 = *(v2 + 194);
    *(v0 + 226) = *(v2 + 210);
    *(v0 + 210) = v13;
    v14 = *(v2 + 226);
    v15 = *(v2 + 242);
    v16 = *(v2 + 258);
    *(v0 + 288) = *(v2 + 272);
    *(v0 + 258) = v15;
    *(v0 + 274) = v16;
    *(v0 + 242) = v14;
    v17 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x178);
    v28 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    *(v0 + 328) = v19;
    *v19 = v0;
    v19[1] = sub_1A949EC80;
    v21 = *(v0 + 304);
    v20 = *(v0 + 312);

    return v28(v20, v0 + 16);
  }

  else
  {
    v23 = *(v0 + 296);
    v39 = v23[10];
    v40 = v23[11];
    v41 = *(v23 + 192);
    v35 = v23[6];
    v36 = v23[7];
    v37 = v23[8];
    v38 = v23[9];
    v31 = v23[2];
    v32 = v23[3];
    v33 = v23[4];
    v34 = v23[5];
    v29 = *v23;
    v30 = v23[1];
    v42 = *(v0 + 336);
    *v47 = *(v23 + 258);
    v45 = *(v23 + 226);
    v46 = *(v23 + 242);
    *&v47[14] = *(v23 + 34);
    v43 = *(v23 + 194);
    v44 = *(v23 + 210);
    CoreSynthesizer.Voice.sampleText.getter();
    v25 = v24;
    if (v24)
    {
    }

    v26 = *(v0 + 312);

    v27 = *(v0 + 8);

    return v27(v25 != 0);
  }
}

uint64_t sub_1A949EC80()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A949ED90, v2, 0);
}

uint64_t sub_1A949ED90()
{
  v1 = *(v0 + 312);
  v2 = sub_1A957AFD8();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2) != 1;
  sub_1A937B960(v1, &unk_1EB387B80, qword_1A9587740);
  v4 = *(v0 + 312);

  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t sub_1A949EE54()
{
  v1[2] = v0;
  v2 = sub_1A937829C(&qword_1EB386E38, &qword_1A9589CD8);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_1A937829C(&unk_1EB387B90, &unk_1A95930A8) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A949EF64, v0, 0);
}

uint64_t sub_1A949EF64()
{
  v1 = v0[2];
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))();
  [v3 stop];

  v4 = (*((*v2 & *v1) + 0xD8))();
  v0[8] = v4;
  v5 = *((*v2 & *v4) + 0x4E8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1A949F118;

  return v9();
}

uint64_t sub_1A949F118()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A949F240, v3, 0);
}

uint64_t sub_1A949F240()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x108))();
  v5 = (*(v3 + 48))(v1, 1, v2);
  v6 = *(v0 + 56);
  if (v5)
  {
    sub_1A937B960(*(v0 + 56), &unk_1EB387B90, &unk_1A95930A8);
  }

  else
  {
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = *(v0 + 24);
    (*(v8 + 16))(v7, *(v0 + 56), v9);
    sub_1A937B960(v6, &unk_1EB387B90, &unk_1A95930A8);
    sub_1A957C5C8();
    (*(v8 + 8))(v7, v9);
  }

  v10 = *(v0 + 48);
  v11 = *(v0 + 40);
  v12 = *(v0 + 16);
  (*(*(v0 + 32) + 56))(v10, 1, 1, *(v0 + 24));
  (*((*v4 & *v12) + 0x110))(v10);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1A949F41C(uint64_t a1)
{
  v2[266] = v1;
  v2[265] = a1;
  v3 = sub_1A937829C(&qword_1EB387148, &qword_1A95958D0);
  v2[267] = v3;
  v4 = *(v3 - 8);
  v2[268] = v4;
  v5 = *(v4 + 64) + 15;
  v2[269] = swift_task_alloc();
  v6 = sub_1A937829C(&qword_1EB387BD0, &qword_1A958B6E0);
  v2[270] = v6;
  v7 = *(v6 - 8);
  v2[271] = v7;
  v8 = *(v7 + 64) + 15;
  v2[272] = swift_task_alloc();
  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x190);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v2[273] = v11;
  *v11 = v2;
  v11[1] = sub_1A949F628;

  return v13();
}

uint64_t sub_1A949F628()
{
  v1 = *(*v0 + 2184);
  v2 = *(*v0 + 2128);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A949F738, v2, 0);
}

uint64_t sub_1A949F738()
{
  v1 = v0[265];
  v2 = sub_1A957B8B8();
  v0[274] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = *(v0[266] + 120);
    v7 = swift_task_alloc();
    v0[275] = v7;
    *v7 = v0;
    v7[1] = sub_1A949F84C;

    return VoiceDatabaseClient.voice(forIdentifier:)((v0 + 120), v4, v5);
  }

  else
  {
    v9 = v0[272];
    v10 = v0[269];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1A949F84C()
{
  v1 = *(*v0 + 2200);
  v2 = *(*v0 + 2192);
  v3 = *(*v0 + 2128);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A949F978, v3, 0);
}

uint64_t sub_1A949F978()
{
  v38 = v0;
  memcpy(v0 + 85, v0 + 120, 0x118uLL);
  memcpy(v0 + 50, v0 + 120, 0x118uLL);
  if (sub_1A932D058((v0 + 50)) != 1)
  {
    memcpy(v0 + 155, v0 + 50, 0x118uLL);
    v1 = CoreSynthesizer.Voice.sampleText.getter();
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      v5 = v0[269];
      v6 = v0[268];
      v30 = v0[267];
      v31 = v0[272];
      v7 = v0[266];
      v8 = v0[265];
      memcpy(v0 + 190, v0 + 50, 0x118uLL);
      nullsub_23(v0 + 190);
      memcpy(__dst, v0 + 190, 0x118uLL);
      v9 = swift_task_alloc();
      v9[2] = v3;
      v9[3] = v4;
      v9[4] = v8;
      sub_1A937B3DC((v0 + 50), (v0 + 225));
      v10 = sub_1A937838C();
      sub_1A937BA74(&v33);
      v34 = v33;
      sub_1A937BA74(&v35);
      v36 = v35;
      sub_1A937BA78(v37);
      CoreSynthesizer.Utterance.init(id:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:_:)(0, 0, __dst, v10, &v34, &v36, v37, sub_1A94A0098, (v0 + 2));

      v11 = sub_1A957B888();
      v12 = v0[41];

      v0[41] = v11;
      v14 = MEMORY[0x1E69E7D40];
      v15 = *((*MEMORY[0x1E69E7D40] & *v7) + 0xD8);
      v16 = v15(v13);
      v17 = sub_1A957B8A8();
      if (!v17)
      {
        v17 = MEMORY[0x1E69E7CC0];
      }

      (*((*v14 & *v16) + 0x380))(v17);

      v19 = v15(v18);
      (*((*v14 & *v19) + 0x4B0))(v0 + 2);

      sub_1A957C6F8();
      (*(v6 + 8))(v5, v30);
      v20 = sub_1A94A3EC4(&qword_1EB387BA8, type metadata accessor for VoicePreviewer);
      v0[276] = v20;
      v21 = v0[266];
      v22 = *(MEMORY[0x1E69E87A8] + 4);
      v23 = swift_task_alloc();
      v0[277] = v23;
      *v23 = v0;
      v23[1] = sub_1A949FD64;
      v24 = v0[272];
      v25 = v0[270];

      return MEMORY[0x1EEE6DB90](v0 + 260, v21, v20, v25, v0 + 264);
    }

    sub_1A937B960((v0 + 85), &unk_1EB387BC0, &qword_1A9587E30);
  }

  v26 = v0[272];
  v27 = v0[269];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1A949FD64()
{
  v2 = *v1;
  v3 = *(*v1 + 2216);
  v7 = *v1;

  v4 = *(v2 + 2128);
  if (v0)
  {
    v5 = sub_1A949FFDC;
  }

  else
  {
    v5 = sub_1A949FE78;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A949FE78()
{
  v1 = *(v0 + 2096);
  if (v1 >> 3 == 0xFFFFFFFF)
  {
    (*(*(v0 + 2168) + 8))(*(v0 + 2176), *(v0 + 2160));
    sub_1A937B960(v0 + 680, &unk_1EB387BC0, &qword_1A9587E30);
    sub_1A9410E64(v0 + 16);
    v2 = *(v0 + 2176);
    v3 = *(v0 + 2152);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 2104);
    sub_1A9410F4C(*(v0 + 2080), *(v0 + 2088), v1);
    v7 = *(v0 + 2208);
    v8 = *(v0 + 2128);
    v9 = *(MEMORY[0x1E69E87A8] + 4);
    v10 = swift_task_alloc();
    *(v0 + 2216) = v10;
    *v10 = v0;
    v10[1] = sub_1A949FD64;
    v11 = *(v0 + 2176);
    v12 = *(v0 + 2160);

    return MEMORY[0x1EEE6DB90](v0 + 2080, v8, v7, v12, v0 + 2112);
  }
}

uint64_t sub_1A949FFDC()
{
  v1 = v0[272];
  v2 = v0[271];
  v3 = v0[270];
  v4 = v0[269];
  sub_1A937B960((v0 + 85), &unk_1EB387BC0, &qword_1A9587E30);
  (*(v2 + 8))(v1, v3);
  v5 = v0[264];
  sub_1A9410E64((v0 + 2));

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A94A0098@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  TTSMarkup.SpeechText.init(_:)(v3, v4, &v8);
  TTSMarkupSpeech.selectionProsody(_:)(&type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText, v7);

  static TTSMarkup.SpeechBuilder.buildExpression(_:)(&v8, v7);
  sub_1A9378138(v7);
  static TTSMarkup.SpeechBuilder.buildBlock(_:)(&v8, a1);
  return sub_1A9378138(&v8);
}

uint64_t sub_1A94A0164(uint64_t a1, uint64_t a2)
{
  v3[144] = v2;
  v3[143] = a2;
  v3[142] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A94A018C, v2, 0);
}

uint64_t sub_1A94A018C()
{
  v1 = *(v0[144] + 120);
  v2 = swift_task_alloc();
  v0[145] = v2;
  *v2 = v0;
  v2[1] = sub_1A94A0234;
  v3 = v0[143];
  v4 = v0[142];

  return VoiceDatabaseClient.voice(forIdentifier:)((v0 + 72), v4, v3);
}

uint64_t sub_1A94A0234()
{
  v1 = *(*v0 + 1160);
  v2 = *(*v0 + 1152);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A94A0344, v2, 0);
}

uint64_t sub_1A94A0344()
{
  memcpy(v0 + 37, v0 + 72, 0x118uLL);
  memcpy(v0 + 2, v0 + 72, 0x118uLL);
  if (sub_1A932D058((v0 + 2)) == 1)
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[144];
    memcpy(v0 + 107, v0 + 2, 0x118uLL);
    v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1A8);
    v8 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[146] = v6;
    *v6 = v0;
    v6[1] = sub_1A94A04FC;
    v7 = v0[144];

    return v8(v0 + 107);
  }
}

uint64_t sub_1A94A04FC()
{
  v2 = *v1;
  v3 = *(*v1 + 1168);
  v7 = *v1;
  *(*v1 + 1176) = v0;

  v4 = *(v2 + 1152);
  if (v0)
  {
    v5 = sub_1A94A0688;
  }

  else
  {
    v5 = sub_1A94A0614;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A94A0614()
{
  sub_1A937B960(v0 + 296, &unk_1EB387BC0, &qword_1A9587E30);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A94A0688()
{
  sub_1A937B960(v0 + 296, &unk_1EB387BC0, &qword_1A9587E30);
  v1 = *(v0 + 8);
  v2 = *(v0 + 1176);

  return v1();
}

uint64_t sub_1A94A06FC(const void *a1)
{
  v2[230] = v1;
  v4 = sub_1A937829C(&qword_1EB387148, &qword_1A95958D0);
  v2[231] = v4;
  v5 = *(v4 - 8);
  v2[232] = v5;
  v6 = *(v5 + 64) + 15;
  v2[233] = swift_task_alloc();
  v7 = sub_1A937829C(&qword_1EB387BD0, &qword_1A958B6E0);
  v2[234] = v7;
  v8 = *(v7 - 8);
  v2[235] = v8;
  v9 = *(v8 + 64) + 15;
  v2[236] = swift_task_alloc();
  v10 = sub_1A957BC88();
  v2[237] = v10;
  v11 = *(v10 - 8);
  v2[238] = v11;
  v12 = *(v11 + 64) + 15;
  v2[239] = swift_task_alloc();
  v2[240] = swift_task_alloc();
  v2[241] = swift_task_alloc();
  v13 = *(*(sub_1A937829C(&unk_1EB387B80, qword_1A9587740) - 8) + 64) + 15;
  v2[242] = swift_task_alloc();
  v14 = sub_1A957AFD8();
  v2[243] = v14;
  v15 = *(v14 - 8);
  v2[244] = v15;
  v16 = *(v15 + 64) + 15;
  v2[245] = swift_task_alloc();
  v2[246] = swift_task_alloc();
  v2[247] = swift_task_alloc();
  v2[248] = swift_task_alloc();
  memcpy(v2 + 50, a1, 0x118uLL);
  v17 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x190);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v2[249] = v19;
  *v19 = v2;
  v19[1] = sub_1A94A0A4C;

  return v21();
}

uint64_t sub_1A94A0A4C()
{
  v1 = *v0;
  v2 = *(*v0 + 1992);
  v3 = *(*v0 + 1840);
  v4 = *v0;

  memcpy(v1 + 85, v1 + 50, 0x118uLL);
  v5 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x178);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v1[250] = v7;
  *v7 = v4;
  v7[1] = sub_1A94A0C6C;
  v8 = v1[242];
  v9 = v1[230];

  return (v11)(v8, v1 + 85);
}

uint64_t sub_1A94A0C6C()
{
  v1 = *(*v0 + 2000);
  v2 = *(*v0 + 1840);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A94A0D7C, v2, 0);
}

uint64_t sub_1A94A0D7C()
{
  v108 = v0;
  v1 = v0[244];
  v2 = v0[243];
  v3 = v0[242];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_1A937B960(v3, &unk_1EB387B80, qword_1A9587740);
    memcpy(__dst, v0 + 50, sizeof(__dst));
    v45 = CoreSynthesizer.Voice.sampleText.getter();
    if (v46)
    {
      v47 = v46;
      v48 = v45;
      memcpy(__dst, v0 + 50, sizeof(__dst));
      v107[0] = *sub_1A9493C84();
      if (CoreSynthesizer.Voice.has(_:)(v107))
      {
        v49 = v0[233];
        v50 = v0[232];
        v99 = v0[231];
        v101 = v0[236];
        v51 = v0[230];
        v52 = MEMORY[0x1E69E7D40];
        v97 = *((*MEMORY[0x1E69E7D40] & *v51) + 0xD8);
        v53 = v97();
        v54 = (*((*v52 & *v51) + 0xA8))();
        (*((*v52 & *v53) + 0x3E8))(v54);

        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_1A957CF08();

        __dst[0] = 0x3E6B616570733CLL;
        __dst[1] = 0xE700000000000000;
        MEMORY[0x1AC585140](v48, v47);

        MEMORY[0x1AC585140](0x3E6B616570732F3CLL, 0xE800000000000000);
        v55 = __dst[0];
        v56 = __dst[1];
        memcpy(v0 + 155, v0 + 50, 0x118uLL);
        nullsub_23(v0 + 155);
        memcpy(__dst, v0 + 155, sizeof(__dst));
        sub_1A937B3DC((v0 + 50), (v0 + 190));
        v57 = sub_1A937838C();
        sub_1A937BA74(&v103);
        v104 = v103;
        sub_1A937BA74(&v105);
        v106 = v105;
        sub_1A937BA78(v107);
        v58 = CoreSynthesizer.Utterance.init(id:ssml:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:)(__dst, 0, 0, v55, v56, v57, &v104, &v106, (v0 + 2), v107);
        v59 = (v97)(v58);
        (*((*v52 & *v59) + 0x4B0))(v0 + 2);

        sub_1A957C6F8();
        (*(v50 + 8))(v49, v99);
        v60 = sub_1A94A3EC4(&qword_1EB387BA8, type metadata accessor for VoicePreviewer);
        v0[253] = v60;
        v61 = v0[230];
        v62 = *(MEMORY[0x1E69E87A8] + 4);
        v63 = swift_task_alloc();
        v0[254] = v63;
        *v63 = v0;
        v63[1] = sub_1A94A1C20;
        v64 = v0[236];
        v65 = v0[234];

        return MEMORY[0x1EEE6DB90](v0 + 225, v61, v60, v65, v0 + 229);
      }
    }

    v66 = v0[239];
    v67 = v0[238];
    v68 = v0[237];
    v69 = sub_1A93772F8();
    (*(v67 + 16))(v66, v69, v68);
    sub_1A937B3DC((v0 + 50), (v0 + 120));
    v70 = sub_1A957BC68();
    v71 = sub_1A957CA78();
    sub_1A937B48C((v0 + 50));
    v72 = os_log_type_enabled(v70, v71);
    v73 = v0[239];
    v74 = v0[238];
    v75 = v0[237];
    if (v72)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      __dst[0] = v77;
      *v76 = 136315138;
      v78 = v0[50];
      v79 = v0[51];

      v80 = sub_1A937A5C0(v78, v79, __dst);

      *(v76 + 4) = v80;
      _os_log_impl(&dword_1A9324000, v70, v71, "All attempts to play sample for %s failed", v76, 0xCu);
      sub_1A9378138(v77);
      MEMORY[0x1AC587CD0](v77, -1, -1);
      MEMORY[0x1AC587CD0](v76, -1, -1);
    }

    (*(v74 + 8))(v73, v75);
    v81 = v0[248];
    v82 = v0[247];
    v83 = v0[246];
    v84 = v0[245];
    v85 = v0[242];
    v86 = v0[241];
    v87 = v0[240];
    v88 = v0[239];
    v89 = v0[236];
    v90 = v0[233];

    v91 = v0[1];

    return v91();
  }

  else
  {
    v4 = v0[248];
    v5 = v0[247];
    v6 = v0[241];
    v7 = v0[238];
    v8 = v0[237];
    (*(v1 + 32))(v4, v3, v2);
    sub_1A93772F8();
    (*(v7 + 16))(v6);
    v100 = *(v1 + 16);
    v100(v5, v4, v2);
    v9 = sub_1A957BC68();
    v10 = sub_1A957CA58();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[247];
    v13 = v0[244];
    v14 = v0[243];
    v15 = v0[241];
    v16 = v0[238];
    v98 = v0[237];
    if (v11)
    {
      v17 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      __dst[0] = v96;
      *v17 = 136315138;
      sub_1A94A3EC4(&qword_1EB386BF8, MEMORY[0x1E6968FB0]);
      v94 = v10;
      v18 = sub_1A957D3A8();
      v95 = v15;
      v20 = v19;
      log = v9;
      v21 = *(v13 + 8);
      v21(v12, v14);
      v22 = sub_1A937A5C0(v18, v20, __dst);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1A9324000, log, v94, "Attempting to play sample at url %s", v17, 0xCu);
      sub_1A9378138(v96);
      MEMORY[0x1AC587CD0](v96, -1, -1);
      v23 = v17;
      v24 = v21;
      MEMORY[0x1AC587CD0](v23, -1, -1);

      (*(v16 + 8))(v95, v98);
    }

    else
    {

      v24 = *(v13 + 8);
      v24(v12, v14);
      (*(v16 + 8))(v15, v98);
    }

    v0[251] = v24;
    v25 = v0[246];
    v100(v25, v0[248], v0[243]);
    v26 = objc_allocWithZone(MEMORY[0x1E6958450]);
    v27 = sub_1A94A31D4(v25);
    v28 = v0[230];
    v29 = MEMORY[0x1E69E7D40];
    v30 = (*((*MEMORY[0x1E69E7D40] & *v28) + 0xF8))(v27);
    v31 = *((*v29 & *v28) + 0xF0);
    v32 = (v31)(v30);
    if (v32)
    {
      v33 = v32;
      v34 = (*((*v29 & *v0[230]) + 0xA8))();
      [v33 setAudioSession_];
    }

    v35 = v0[230];
    v36 = v31();
    if (v36)
    {
      v37 = v36;
      [v36 setDelegate_];
    }

    v38 = v0[230];
    v39 = v31();
    [v39 play];

    v40 = sub_1A94A3EC4(&qword_1EB387BA8, type metadata accessor for VoicePreviewer);
    v41 = *(MEMORY[0x1E69E88D0] + 4);
    v42 = swift_task_alloc();
    v0[252] = v42;
    *v42 = v0;
    v42[1] = sub_1A94A1A00;
    v43 = v0[230];
    v44 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v42, v38, v40, 0x2877656976657270, 0xEF293A6563696F76, sub_1A94A3320, v43, v44);
  }
}

uint64_t sub_1A94A1A00()
{
  v1 = *(*v0 + 2016);
  v2 = *(*v0 + 1840);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A94A1B10, v2, 0);
}

uint64_t sub_1A94A1B10()
{
  v1 = *(v0 + 1952) + 8;
  (*(v0 + 2008))(*(v0 + 1984), *(v0 + 1944));
  v2 = *(v0 + 1984);
  v3 = *(v0 + 1976);
  v4 = *(v0 + 1968);
  v5 = *(v0 + 1960);
  v6 = *(v0 + 1936);
  v7 = *(v0 + 1928);
  v8 = *(v0 + 1920);
  v9 = *(v0 + 1912);
  v10 = *(v0 + 1888);
  v11 = *(v0 + 1864);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A94A1C20()
{
  v2 = *v1;
  v3 = *(*v1 + 2032);
  v7 = *v1;

  v4 = *(v2 + 1840);
  if (v0)
  {
    v5 = sub_1A94A1F04;
  }

  else
  {
    v5 = sub_1A94A1D34;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A94A1D34()
{
  v1 = *(v0 + 1816);
  if (v1 >> 3 == 0xFFFFFFFF)
  {
    (*(*(v0 + 1880) + 8))(*(v0 + 1888), *(v0 + 1872));
    sub_1A9410E64(v0 + 16);
    v2 = *(v0 + 1984);
    v3 = *(v0 + 1976);
    v4 = *(v0 + 1968);
    v5 = *(v0 + 1960);
    v6 = *(v0 + 1936);
    v7 = *(v0 + 1928);
    v8 = *(v0 + 1920);
    v9 = *(v0 + 1912);
    v10 = *(v0 + 1888);
    v11 = *(v0 + 1864);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 1824);
    sub_1A9410F4C(*(v0 + 1800), *(v0 + 1808), v1);
    v15 = *(v0 + 2024);
    v16 = *(v0 + 1840);
    v17 = *(MEMORY[0x1E69E87A8] + 4);
    v18 = swift_task_alloc();
    *(v0 + 2032) = v18;
    *v18 = v0;
    v18[1] = sub_1A94A1C20;
    v19 = *(v0 + 1888);
    v20 = *(v0 + 1872);

    return MEMORY[0x1EEE6DB90](v0 + 1800, v16, v15, v20, v0 + 1832);
  }
}

uint64_t sub_1A94A1F04()
{
  v1 = v0[248];
  v2 = v0[247];
  v3 = v0[246];
  v4 = v0[245];
  v5 = v0[242];
  v6 = v0[241];
  v7 = v0[240];
  v8 = v0[239];
  v12 = v0[233];
  (*(v0[235] + 8))(v0[236], v0[234]);
  sub_1A9410E64((v0 + 2));
  v9 = v0[229];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A94A2024(uint64_t a1, void *a2)
{
  v4 = sub_1A937829C(&unk_1EB387B90, &unk_1A95930A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v12 - v7;
  v9 = sub_1A937829C(&qword_1EB386E38, &qword_1A9589CD8);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  return (*((*MEMORY[0x1E69E7D40] & *a2) + 0x110))(v8);
}

uint64_t sub_1A94A2174(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v12 - v6;
  v8 = sub_1A957C688();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;
  v9[5] = a1;

  v10 = a1;
  sub_1A938A404(0, 0, v7, &unk_1A9593110, v9);
}

uint64_t sub_1A94A2284(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = ((*MEMORY[0x1E69E7D40] & *a4) + 240) & 0xFFFFFFFFFFFFLL | 0xCC8C000000000000;
  v5[4] = *((*MEMORY[0x1E69E7D40] & *a4) + 0xF0);
  v5[5] = v6;
  return MEMORY[0x1EEE6DFA0](sub_1A94A22D0, a4, 0);
}

uint64_t sub_1A94A22D0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *(v0 + 48) = (*(v0 + 32))();

  return MEMORY[0x1EEE6DFA0](sub_1A94A2340, 0, 0);
}

uint64_t sub_1A94A2340()
{
  v1 = *(v0 + 48);
  if (v1 && (v2 = *(v0 + 24), sub_1A9387478(0, &qword_1EB387C58, 0x1E6958450), v3 = v2, v4 = sub_1A957CC18(), v1, v3, (v4 & 1) != 0))
  {
    v5 = *((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x190);
    v11 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *v7 = v0;
    v7[1] = sub_1A94A24F8;
    v8 = *(v0 + 16);

    return v11();
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1A94A24F8()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1A94A2700(uint64_t a1, uint64_t a2)
{
  *(v3 + 296) = a1;
  *(v3 + 304) = v2;
  v5 = sub_1A957B308();
  *(v3 + 312) = v5;
  v6 = *(v5 - 8);
  *(v3 + 320) = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *(a2 + 40);
  *(v3 + 48) = *(a2 + 32);
  v10 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v10;
  *(v3 + 328) = v8;
  *(v3 + 336) = v9;
  *(v3 + 344) = *(a2 + 48);
  *(v3 + 232) = *(a2 + 216);
  *(v3 + 248) = *(a2 + 232);
  v11 = *(a2 + 264);
  *(v3 + 264) = *(a2 + 248);
  *(v3 + 280) = v11;
  *(v3 + 168) = *(a2 + 152);
  *(v3 + 184) = *(a2 + 168);
  *(v3 + 200) = *(a2 + 184);
  *(v3 + 216) = *(a2 + 200);
  *(v3 + 104) = *(a2 + 88);
  *(v3 + 120) = *(a2 + 104);
  *(v3 + 136) = *(a2 + 120);
  *(v3 + 152) = *(a2 + 136);
  *(v3 + 72) = *(a2 + 56);
  *(v3 + 88) = *(a2 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1A94A2850, v2, 0);
}

uint64_t sub_1A94A2850()
{
  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v6 = v0[39];
  v7 = objc_opt_self();
  v0[7] = v2;
  v0[8] = v1;
  CoreSynthesizer.Voice.primaryLocale.getter(v3);
  sub_1A957B118();
  (*(v4 + 8))(v3, v6);
  v8 = sub_1A957C0C8();

  v9 = [v7 convertTTSLanguageCodeToSiriLanguageCode_];

  v10 = sub_1A957C0F8();
  v12 = v11;

  v0[44] = v12;
  v13 = sub_1A94A3EC4(&qword_1EB387BA8, type metadata accessor for VoicePreviewer);
  v14 = swift_task_alloc();
  v0[45] = v14;
  v14[2] = v5;
  v14[3] = v10;
  v14[4] = v12;
  v14[5] = v2;
  v14[6] = v1;
  v15 = *(MEMORY[0x1E69E88D0] + 4);
  v16 = swift_task_alloc();
  v0[46] = v16;
  v17 = sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  *v16 = v0;
  v16[1] = sub_1A94A2A54;
  v18 = v0[37];

  return MEMORY[0x1EEE6DDE0](v18, v5, v13, 0xD000000000000019, 0x80000001A95C3B90, sub_1A94A33C0, v14, v17);
}

uint64_t sub_1A94A2A54()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 352);
  v4 = *(*v0 + 328);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1A94A2BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a3;
  v9 = sub_1A957BF18();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A957BF48();
  v35 = *(v14 - 8);
  v36 = v14;
  v15 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A937829C(&unk_1EB387C48, &qword_1A9593208);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v31 - v23;
  v34 = *(a2 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_siriQueue);
  (*(v20 + 16))(&v31 - v23, a1, v19);
  v25 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v26 = swift_allocObject();
  v27 = v32;
  *(v26 + 2) = v31;
  *(v26 + 3) = a4;
  v28 = v33;
  *(v26 + 4) = v27;
  *(v26 + 5) = v28;
  (*(v20 + 32))(&v26[v25], v24, v19);
  aBlock[4] = sub_1A94A3E38;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A93C80E8;
  aBlock[3] = &unk_1F1CED7E8;
  v29 = _Block_copy(aBlock);

  sub_1A957BF28();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1A94A3EC4(qword_1ED96FED0, MEMORY[0x1E69E7F60]);
  sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
  sub_1A946D250(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0);
  sub_1A957CE08();
  MEMORY[0x1AC5859B0](0, v18, v13, v29);
  _Block_release(v29);
  (*(v37 + 8))(v13, v9);
  (*(v35 + 8))(v18, v36);
}

uint64_t sub_1A94A2F5C()
{
  v0 = sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  objc_allocWithZone(sub_1A957B768());

  sub_1A957B748();
  v9 = objc_allocWithZone(sub_1A957B6F8());
  v10 = sub_1A957B6E8();
  sub_1A957B6D8();

  sub_1A9391BAC(v8, v5, &unk_1EB387B80, qword_1A9587740);
  sub_1A937829C(&unk_1EB387C48, &qword_1A9593208);
  sub_1A957C5C8();
  return sub_1A937B960(v8, &unk_1EB387B80, qword_1A9587740);
}

uint64_t VoicePreviewer.deinit()
{
  v1 = *(v0 + 120);

  sub_1A937B960(v0 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_sampleAssetUrl, &unk_1EB387B80, qword_1A9587740);

  sub_1A937B960(v0 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_currentPreviewContinuation, &unk_1EB387B90, &unk_1A95930A8);
  v2 = *(v0 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_initializationTask);

  v3 = *(v0 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___xpcClient);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t VoicePreviewer.__deallocating_deinit()
{
  VoicePreviewer.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

id sub_1A94A31D4(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1A957AF58();
  v14[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_1A957AFD8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_1A957AEF8();

    swift_willThrow();
    v11 = sub_1A957AFD8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1A94A3328()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A94A2284(v4, v5, v6, v2, v3);
}

void sub_1A94A33D8()
{
  sub_1A94A3C9C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1A94A3CF4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of VoicePreviewer.canPreview(forVoiceId:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x180);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A9431DCC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of VoicePreviewer.canPreview(forVoice:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x188);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93916A8;

  return v8(a1);
}

uint64_t dispatch thunk of VoicePreviewer.stop()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x190);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return v6();
}

uint64_t dispatch thunk of VoicePreviewer.preview(selection:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x198);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return v8(a1);
}

uint64_t dispatch thunk of VoicePreviewer.preview(voiceId:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x1A0);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of VoicePreviewer.preview(voice:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1A8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return v8(a1);
}

void sub_1A94A3C9C()
{
  if (!qword_1EB387C38)
  {
    sub_1A957AFD8();
    v0 = sub_1A957CC58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB387C38);
    }
  }
}

void sub_1A94A3CF4()
{
  if (!qword_1EB387C40)
  {
    sub_1A93A7B68(&qword_1EB386E38, &qword_1A9589CD8);
    v0 = sub_1A957CC58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB387C40);
    }
  }
}

uint64_t sub_1A94A3D58()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A94A3DA0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A9382328;

  return sub_1A94A2284(v4, v5, v6, v2, v3);
}

uint64_t sub_1A94A3E38()
{
  v1 = *(*(sub_1A937829C(&unk_1EB387C48, &qword_1A9593208) - 8) + 80);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];

  return sub_1A94A2F5C();
}

uint64_t sub_1A94A3EAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A94A3EC4(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1A94A3F1C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v140 = a3;
  v141 = a4;
  v138 = a2;
  v148 = sub_1A957B308();
  v5 = *(v148 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v148, v7);
  *&v147 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v146 = &v137 - v11;
  sub_1A9379398(&v155[4]);
  sub_1A94978C4();
  sub_1A948F660();
  sub_1A93BC894(&v155[15]);
  v142 = sub_1A957B7E8();
  v143 = a1;
  *(&v155[2] + 1) = v142;
  v144 = v12;
  *&v155[3] = v12;
  v13 = sub_1A957B7D8();
  v14 = *(v13 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    *&v153[0] = MEMORY[0x1E69E7CC0];
    sub_1A93ABB68(0, v14, 0);
    v16 = *&v153[0];
    v145 = (v5 + 8);
    v139 = v13;
    v17 = (v13 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      swift_bridgeObjectRetain_n();
      v20 = v147;
      sub_1A957B1B8();
      v21 = v146;
      Locale.withTTSLanguageDisambiguation(overrides:)(0, v146);
      v22 = *v145;
      v23 = v20;
      v24 = v148;
      (*v145)(v23, v148);
      v25 = sub_1A957B1A8();
      v149 = v26;

      v22(v21, v24);
      *&v153[0] = v16;
      v28 = *(v16 + 16);
      v27 = *(v16 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1A93ABB68((v27 > 1), v28 + 1, 1);
        v16 = *&v153[0];
      }

      *(v16 + 16) = v28 + 1;
      v29 = v16 + 16 * v28;
      v30 = v149;
      *(v29 + 32) = v25;
      *(v29 + 40) = v30;
      v17 += 2;
      --v14;
    }

    while (v14);

    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  sub_1A93B0B3C(v16);
  v32 = v31;
  *&v155[8] = v31;
  v149 = v33;
  *(&v155[8] + 1) = v33;
  *&v155[9] = 0;
  *(&v155[9] + 1) = v15;
  sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
  v34 = swift_allocObject();
  v147 = xmmword_1A9588500;
  *(v34 + 16) = xmmword_1A9588500;
  v35 = sub_1A9493C6C();
  *(v34 + 32) = *v35;
  v36 = sub_1A9493D8C();
  *(v34 + 40) = *v36;
  *(v34 + 48) = *sub_1A9493C9C();
  *&v153[0] = v34;
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B0F54();
  sub_1A957CE08();
  v37 = v143;
  v38 = sub_1A957B798();
  sub_1A9387478(0, &qword_1EB3863A8, 0x1E69D3340);
  v39 = v38;
  v40 = sub_1A957CB98();
  v41 = sub_1A957CC18();

  v148 = v32;
  if (v41)
  {

    BYTE8(v155[7]) = 0;
    *(&v155[6] + 8) = 0u;
    *(&v155[5] + 8) = 0u;
    *(&v155[4] + 8) = 0u;
    *&v153[0] = 0;
    *(&v153[0] + 1) = 0xE000000000000000;
    sub_1A957CF08();
    v42 = sub_1A957C0F8();
    v44 = v43;

    *&v153[0] = v42;
    *(&v153[0] + 1) = v44;
    MEMORY[0x1AC585140](95, 0xE100000000000000);
    MEMORY[0x1AC585140](v142, v144);
    MEMORY[0x1AC585140](95, 0xE100000000000000);
    v45 = [v37 primaryLanguage];
LABEL_12:
    v52 = v45;
    v53 = sub_1A957C0F8();
    v55 = v54;

    MEMORY[0x1AC585140](v53, v55);

    MEMORY[0x1AC585140](0x6D75696D6572705FLL, 0xE800000000000000);
    v56 = *(&v153[0] + 1);
    v57 = *&v153[0];
    v155[0] = v153[0];
    goto LABEL_13;
  }

  v46 = v39;
  v47 = sub_1A957CB88();
  v48 = sub_1A957CC18();

  if (v48)
  {

    *(&v155[4] + 1) = 1;
    memset(&v155[5], 0, 41);
    *&v153[0] = 0;
    *(&v153[0] + 1) = 0xE000000000000000;
    sub_1A957CF08();
    v49 = sub_1A957C0F8();
    v51 = v50;

    *&v153[0] = v49;
    *(&v153[0] + 1) = v51;
    MEMORY[0x1AC585140](95, 0xE100000000000000);
    MEMORY[0x1AC585140](v142, v144);
    MEMORY[0x1AC585140](95, 0xE100000000000000);
    v45 = [v37 primaryLanguage];
    goto LABEL_12;
  }

  v66 = v46;
  v67 = sub_1A957CBB8();
  v68 = sub_1A957CC18();

  if ((v68 & 1) == 0)
  {
    v107 = v66;
    v108 = sub_1A957CBA8();
    v109 = sub_1A957CC18();

    if ((v109 & 1) == 0)
    {
      v111 = v107;
      v112 = sub_1A957CB78();
      v113 = sub_1A957CC18();

      if ((v113 & 1) == 0)
      {

        goto LABEL_47;
      }

      *&v153[0] = 0;
      *(&v153[0] + 1) = 0xE000000000000000;
      sub_1A957CF08();

      *&v153[0] = 0xD000000000000019;
      *(&v153[0] + 1) = 0x80000001A95C3D00;
      MEMORY[0x1AC585140](v142, v144);
      MEMORY[0x1AC585140](95, 0xE100000000000000);
      v114 = sub_1A957B7D8();
      if (v114[2])
      {

        if (v114[2])
        {
          v115 = v114[4];
          v116 = v114[5];

          MEMORY[0x1AC585140](v115, v116);

          MEMORY[0x1AC585140](95, 0xE100000000000000);
          sub_1A9387478(0, &qword_1EB385F20, 0x1E69D3330);
          v117 = sub_1A957B818();
          v118 = sub_1A957CAA8();
          v119 = sub_1A957CC18();

          if (v119)
          {
            v120 = 0x746361706D6F63;
          }

          else
          {
            v120 = 0x6D75696D657270;
          }

          MEMORY[0x1AC585140](v120, 0xE700000000000000);

          v56 = *(&v153[0] + 1);
          v57 = *&v153[0];
          v155[0] = v153[0];
          *(&v155[4] + 1) = 2;
          memset(&v155[5], 0, 40);
          BYTE8(v155[7]) = 2;
          *&v153[0] = *v36;
          v151[0] = v154;
          sub_1A957CD98();
          if ((sub_1A957CDB8() & 1) == 0)
          {
            sub_1A957CDC8();
          }

          goto LABEL_30;
        }

        __break(1u);
      }

      __break(1u);
      return result;
    }

    *&v153[0] = 0;
    *(&v153[0] + 1) = 0xE000000000000000;
    sub_1A957CF08();

    *&v153[0] = 0xD000000000000017;
    *(&v153[0] + 1) = 0x80000001A95C3D20;
    MEMORY[0x1AC585140](v142, v144);
    v56 = *(&v153[0] + 1);
    v57 = *&v153[0];
    v155[0] = v153[0];
    v110 = 4;
    goto LABEL_66;
  }

  v69 = sub_1A9387478(0, &qword_1EB385F20, 0x1E69D3330);
  v70 = sub_1A957B818();
  v71 = sub_1A957CAA8();
  v72 = sub_1A957CC18();

  if ((v72 & 1) == 0)
  {
    v146 = sub_1A957B848();
    sub_1A937829C(&qword_1EB386D48, &qword_1A95898C8);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1A95892B0;
    sub_1A9387478(0, &qword_1EB3863B0, 0x1E69D3348);
    *(v73 + 32) = sub_1A957CA48();
    sub_1A937829C(&qword_1EB386E50, &qword_1A9593230);
    v74 = swift_allocObject();
    *(v74 + 16) = v147;
    *(v74 + 32) = 4;
    *(v74 + 40) = sub_1A957CAA8();
    *(v74 + 64) = v69;
    *(v74 + 72) = 0;
    v75 = sub_1A957B7E8();
    v76 = MEMORY[0x1E69E6158];
    *(v74 + 80) = v75;
    *(v74 + 88) = v77;
    *(v74 + 104) = v76;
    *(v74 + 112) = 1;
    v78 = [v37 primaryLanguage];
    v79 = sub_1A957C0F8();
    v81 = v80;

    *(v74 + 144) = MEMORY[0x1E69E6158];
    *(v74 + 120) = v79;
    *(v74 + 128) = v81;
    sub_1A93D92D4(v74);
    swift_setDeallocating();
    sub_1A937829C(&qword_1EB386E58, &qword_1A9589CF0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v82 = sub_1A957B838();

    if (v82)
    {

      v37 = v143;
      goto LABEL_23;
    }

    *&v153[0] = 0;
    *(&v153[0] + 1) = 0xE000000000000000;
    sub_1A957CF08();
    v130 = sub_1A957C0F8();
    v132 = v131;

    *&v153[0] = v130;
    *(&v153[0] + 1) = v132;
    MEMORY[0x1AC585140](95, 0xE100000000000000);
    MEMORY[0x1AC585140](v142, v144);
    MEMORY[0x1AC585140](95, 0xE100000000000000);
    v37 = v143;
    v133 = [v143 primaryLanguage];
    v134 = sub_1A957C0F8();
    v136 = v135;

    MEMORY[0x1AC585140](v134, v136);

    MEMORY[0x1AC585140](0x6D75696D6572705FLL, 0xE800000000000000);
    v56 = *(&v153[0] + 1);
    v57 = *&v153[0];
    v155[0] = v153[0];
    v110 = 2;
LABEL_66:
    *(&v155[4] + 1) = v110;
    memset(&v155[5], 0, 41);
    goto LABEL_13;
  }

LABEL_23:
  *(&v155[4] + 1) = 3;
  memset(&v155[5], 0, 41);
  v83 = sub_1A957B818();
  v84 = sub_1A957CAA8();
  v85 = sub_1A957CC18();

  if (v85)
  {
    v86 = 0;
  }

  else
  {
    v86 = 0x6D75696D6572702ELL;
  }

  if (v85)
  {
    v87 = 0xE000000000000000;
  }

  else
  {
    v87 = 0xE800000000000000;
  }

  *&v153[0] = sub_1A957C0F8();
  *(&v153[0] + 1) = v88;
  MEMORY[0x1AC585140](46, 0xE100000000000000);
  MEMORY[0x1AC585140](v142, v144);
  MEMORY[0x1AC585140](v86, v87);

  v56 = *(&v153[0] + 1);
  v57 = *&v153[0];
  v155[0] = v153[0];
LABEL_30:
  *&v153[0] = *v35;
  v151[0] = v154;
  sub_1A957CD98();
  if ((sub_1A957CDB8() & 1) == 0)
  {
    sub_1A957CDC8();
  }

LABEL_13:
  v58 = sub_1A957B818();
  sub_1A9387478(0, &qword_1EB385F20, 0x1E69D3330);
  v59 = sub_1A957CAA8();
  v60 = sub_1A957CC18();

  if (v60)
  {
    v61 = 2;
  }

  else
  {
    v61 = 3;
  }

  BYTE8(v155[3]) = v61;
  v62 = sub_1A957B808();
  if (v62 > 3)
  {
    goto LABEL_46;
  }

  BYTE9(v155[3]) = 0x2010002u >> (8 * v62);
  v63 = sub_1A957B7A8();
  v64 = v63;
  if (v63)
  {
    v65 = [v63 unsignedIntValue];
  }

  else
  {
    v65 = 0;
  }

  DWORD1(v155[11]) = v65;
  BYTE8(v155[11]) = v64 == 0;
  v89 = sub_1A957B828();
  v90 = v89;
  if (v89)
  {
    v91 = [v89 unsignedIntValue];
  }

  else
  {
    v91 = 0;
  }

  HIDWORD(v155[11]) = v91;
  LOBYTE(v155[12]) = v90 == 0;
  if ([v37 locallyAvailable])
  {
    v92 = sub_1A957B818();
    v93 = sub_1A957CAA8();
    v94 = sub_1A957CC18();

    BYTE1(v155[12]) = (v94 & 1) == 0;
    v95 = sub_1A957B818();
    v96 = sub_1A957CAA8();
    v97 = sub_1A957CC18();

    if ((v97 & 1) == 0)
    {
      v98 = sub_1A9493D2C();
      sub_1A93B0A74(v153, *v98);
    }

    v99 = sub_1A9493C84();
  }

  else
  {
    BYTE1(v155[12]) = 2;
    v99 = sub_1A9493D2C();
  }

  sub_1A93B0A74(v153, *v99);
  *&v155[4] = v154;
  v100._countAndFlagsBits = 1920170081;
  v100._object = 0xE400000000000000;
  *&v101 = UInt32.init(axFourCharCode:)(v100);
  if ((v101 & 0x100000000) != 0 || (v102 = v101, v103._countAndFlagsBits = 1668182627, v103._object = 0xE400000000000000, *&v104 = UInt32.init(axFourCharCode:)(v103), (v104 & 0x100000000) != 0))
  {
LABEL_46:

    sub_1A93B183C(*(&v155[4] + 1), *&v155[5], *(&v155[5] + 1), *&v155[6], *(&v155[6] + 1), *&v155[7], SBYTE8(v155[7]));

LABEL_47:

    sub_1A93B10AC(*&v155[15], *(&v155[15] + 1));
    sub_1A93847E0(v153);
    return memcpy(v141, v153, 0x118uLL);
  }

  v105 = v104;
  v153[0] = *(&v155[4] + 8);
  v153[1] = *(&v155[5] + 8);
  v153[2] = *(&v155[6] + 8);
  LOBYTE(v153[3]) = BYTE8(v155[7]);
  memset(&v152[1], 0, 40);
  v152[0] = 2;
  LOBYTE(v152[6]) = 2;
  sub_1A93B17E8();
  sub_1A957C438();
  sub_1A957C438();
  if (v151[0] == v150[0] && v151[1] == v150[1])
  {
  }

  else
  {
    v121 = sub_1A957D3E8();

    if ((v121 & 1) == 0)
    {
      v105 = v102;
    }
  }

  LODWORD(v155[10]) = 1635087216;
  DWORD1(v155[10]) = v105;
  *(&v155[10] + 1) = 1634758764;
  LODWORD(v155[11]) = 0;

  v122 = v143;
  v123 = sub_1A957B7B8();
  CoreSynthesizer.Voice.AssetIdentifier.init(loader:identifier:version:)(v138, v140, v57, v56, v123, v153);
  *(&v155[12] + 8) = v153[0];
  *(&v155[13] + 8) = v153[1];
  *(&v155[14] + 1) = *&v153[2];
  v124 = sub_1A957B818();
  v125 = sub_1A957CAA8();
  v126 = sub_1A957CC18();

  if (v126)
  {
    *&v153[0] = sub_1A957C0F8();
    *(&v153[0] + 1) = v127;
    MEMORY[0x1AC585140](46, 0xE100000000000000);
    MEMORY[0x1AC585140](v142, v144);
    MEMORY[0x1AC585140](0x6D75696D6572702ELL, 0xE800000000000000);
    v128 = v153[0];
    *(&v155[1] + 8) = v153[0];
    sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_1A9587160;
    *(v129 + 32) = v128;
  }

  else
  {

    *&v155[2] = 0;
    *(&v155[1] + 1) = 0;
    v129 = MEMORY[0x1E69E7CC0];
  }

  *&v155[1] = v129;
  memcpy(v151, v155, sizeof(v151));
  memcpy(v152, v155, sizeof(v152));
  nullsub_23(v152);
  memcpy(v141, v152, 0x118uLL);
  memcpy(v153, v155, 0x118uLL);
  sub_1A937B3DC(v151, v150);
  return sub_1A937B48C(v153);
}

uint64_t sub_1A94A50A4@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v15 = MEMORY[0x1E69E7CC0];
  *(a8 + 64) = MEMORY[0x1E69E7CC0];
  __asm { FMOV            V0.2S, #1.0 }

  *(a8 + 96) = _D0;
  *(a8 + 104) = 1065353216;
  *(a8 + 112) = v15;
  *(a8 + 120) = v15;
  sub_1A9379534(a1, a8);
  *(a8 + 41) = a2;
  sub_1A937829C(&qword_1EB386B18, &unk_1A95916F0);
  v21 = sub_1A957B308();
  v22 = *(v21 - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  result = swift_allocObject();
  *(result + 16) = xmmword_1A9587160;
  if (*(a3 + 16))
  {
    v26 = result;
    (*(v22 + 16))(result + v24, a3 + v24, v21);
    result = sub_1A9378138(a1);
    *(a8 + 72) = v26;
    *(a8 + 80) = a3;
    *(a8 + 40) = a4 & 1;
    *(a8 + 48) = a5;
    *(a8 + 56) = a6;
    *(a8 + 88) = MEMORY[0x1E69E7CD0];
    *(a8 + 42) = a7 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}