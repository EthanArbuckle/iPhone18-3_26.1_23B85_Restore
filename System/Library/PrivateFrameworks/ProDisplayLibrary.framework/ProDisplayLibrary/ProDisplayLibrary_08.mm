double sub_25F7E5CE8()
{
  LODWORD(xmmword_27FDC0990) = 0;
  *(&xmmword_27FDC0990 + 1) = 0x407F400000000000;
  LOWORD(xmmword_27FDC09A0) = 0;
  *(&xmmword_27FDC09A0 + 1) = 0x4030000000000000;
  LOWORD(xmmword_27FDC09B0) = 0;
  *(&xmmword_27FDC09B0 + 1) = &unk_2871C3CE0;
  unk_27FDC09C0 = 0;
  byte_27FDC09C8 = 1;
  *&xmmword_27FDC09D0 = 0;
  BYTE8(xmmword_27FDC09D0) = 1;
  *&xmmword_27FDC09E0 = 0;
  BYTE8(xmmword_27FDC09E0) = 1;
  xmmword_27FDC09F0 = xmmword_25F828520;
  qword_27FDC0A00 = 0x4075E00000000000;
  *&result = 0x1000100010001;
  dword_27FDC0A08 = 65537;
  return result;
}

uint64_t sub_25F7E5D70()
{
  v0 = sub_25F82217C();
  __swift_allocate_value_buffer(v0, qword_27FDC0A10);
  v1 = __swift_project_value_buffer(v0, qword_27FDC0A10);
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

uint64_t sub_25F7E5EA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v21 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  __swift_allocate_value_buffer(v3, qword_27FDC0A28);
  v4 = __swift_project_value_buffer(v3, qword_27FDC0A28);
  if (qword_27FDAF9E0 != -1)
  {
    swift_once();
  }

  v22 = 0x800000025F830460;
  v23 = 0x800000025F830480;
  v5 = sub_25F82217C();
  v6 = __swift_project_value_buffer(v5, qword_27FDC0A10);
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

uint64_t sub_25F7E619C()
{
  v8 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25F824220;
  if (qword_27FDAFB18 != -1)
  {
    swift_once();
  }

  v1 = *&byte_27FDB1378;
  v9[2] = xmmword_27FDB1368;
  v9[3] = *&byte_27FDB1378;
  v2 = xmmword_27FDB1388;
  v9[4] = xmmword_27FDB1388;
  v4 = xmmword_27FDB1348;
  v3 = *&byte_27FDB1358;
  v9[0] = xmmword_27FDB1348;
  v9[1] = *&byte_27FDB1358;
  *(v0 + 64) = xmmword_27FDB1368;
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 112) = 2;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0;
  v7[0] = 1;
  v7[96] = 1;
  v7[88] = 1;
  v7[80] = 1;
  *(v0 + 192) = 5;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  *(v0 + 216) = 0;
  *(v0 + 224) = 1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 1;
  *(v0 + 248) = 0;
  *(v0 + 256) = 1;
  *(v0 + 264) = 0;
  v5 = sub_25F792BC4(&unk_2871C3D08);
  xmmword_27FDC0A40 = 0u;
  *algn_27FDC0A50 = 0u;
  xmmword_27FDC0A60 = 0u;
  byte_27FDC0A70 = 1;
  *&algn_27FDC0A71[7] = 0u;
  *(&xmmword_27FDC0A80 + 8) = 0u;
  unk_27FDC0A98 = 0u;
  byte_27FDC0AA8 = 0;
  byte_27FDC0AA9 = v8;
  xmmword_27FDC0AB0 = xmmword_25F824920;
  LOBYTE(xmmword_27FDC0AC0) = 1;
  *(&xmmword_27FDC0AC0 + 8) = xmmword_25F828500;
  word_27FDC0AD8 = 1;
  xmmword_27FDC0AE0 = vdupq_n_s64(0x407F400000000000uLL);
  qword_27FDC0AF0 = 0x3F40624DD2F1A9FCLL;
  unk_27FDC0AF8 = v0;
  LOBYTE(xmmword_27FDC0B00) = 0;
  *(&xmmword_27FDC0B00 + 1) = 0x400199999999999ALL;
  word_27FDC0B10 = 1;
  *&algn_27FDC0B12[6] = xmmword_25F825710;
  qword_27FDC0B28 = v5;
  dword_27FDC0B30 = 16843008;
  return sub_25F777DAC(v9, v7);
}

double sub_25F7E63B0()
{
  LODWORD(xmmword_27FDC0B38) = 0;
  *(&xmmword_27FDC0B38 + 1) = 0x407F400000000000;
  LOWORD(xmmword_27FDC0B48) = 0;
  *(&xmmword_27FDC0B48 + 1) = 0x4014000000000000;
  LOWORD(xmmword_27FDC0B58) = 0;
  *(&xmmword_27FDC0B58 + 1) = &unk_2871C3D30;
  unk_27FDC0B68 = 0;
  byte_27FDC0B70 = 1;
  *&xmmword_27FDC0B78 = 0;
  BYTE8(xmmword_27FDC0B78) = 1;
  *&xmmword_27FDC0B88 = 0;
  BYTE8(xmmword_27FDC0B88) = 1;
  xmmword_27FDC0B98 = xmmword_25F828520;
  qword_27FDC0BA8 = 0x4075E00000000000;
  *&result = 0x1000100010001;
  dword_27FDC0BB0 = 65537;
  return result;
}

void *sub_25F7E6438(uint64_t a1)
{
  v19 = type metadata accessor for Preset(0);
  v2 = *(v19 - 8);
  v3 = MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = sub_25F817E64(&unk_2871C3EC0);
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

void *sub_25F7E668C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFCB0);
  v1 = type metadata accessor for Preset(0);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25F825730;
  v5 = v4 + v3;
  if (qword_27FDAF9C8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Preset.Info(0);
  v7 = __swift_project_value_buffer(v6, qword_27FDC0880);
  sub_25F7A22F4(v7, v5, type metadata accessor for Preset.Info);
  if (qword_27FDAF9D0 != -1)
  {
    swift_once();
  }

  v210 = xmmword_27FDC0958;
  v211 = *&word_27FDC0968;
  v212 = unk_27FDC0978;
  v213 = dword_27FDC0988;
  v206 = xmmword_27FDC0918;
  v207 = unk_27FDC0928;
  v208 = xmmword_27FDC0938;
  v209 = *&qword_27FDC0948;
  v202 = xmmword_27FDC08D8;
  v203 = unk_27FDC08E8;
  v204 = unk_27FDC08F8;
  v205 = xmmword_27FDC0908;
  v198 = xmmword_27FDC0898;
  v199 = unk_27FDC08A8;
  v200 = xmmword_27FDC08B8;
  v201 = *&byte_27FDC08C8;
  sub_25F7A223C(&v198, &v378);
  if (qword_27FDAF9D8 != -1)
  {
    swift_once();
  }

  v8 = xmmword_27FDC09D0;
  v9 = unk_27FDC09C0;
  v214[4] = xmmword_27FDC09D0;
  v214[5] = xmmword_27FDC09E0;
  v10 = xmmword_27FDC09E0;
  v215[0] = xmmword_27FDC09F0;
  *(v215 + 12) = *(&xmmword_27FDC09F0 + 12);
  v11 = xmmword_27FDC09A0;
  v12 = xmmword_27FDC09B0;
  v214[2] = xmmword_27FDC09B0;
  v214[3] = unk_27FDC09C0;
  v13 = xmmword_27FDC0990;
  v214[0] = xmmword_27FDC0990;
  v214[1] = xmmword_27FDC09A0;
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
  *(v22 + 108) = *(&xmmword_27FDC09F0 + 12);
  *(v22 + 64) = v8;
  *(v22 + 80) = v10;
  *(v22 + 96) = xmmword_27FDC09F0;
  *v22 = v13;
  *(v22 + 16) = v11;
  *(v22 + 32) = v12;
  *(v22 + 48) = v9;
  v23 = v5 + v2;
  *(v22 + 122) = 1;
  sub_25F7A2298(v214, &v378);
  if (qword_27FDAF9E8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v6, qword_27FDC0A28);
  sub_25F7A22F4(v24, v5 + v2, type metadata accessor for Preset.Info);
  if (qword_27FDAF9F0 != -1)
  {
    swift_once();
  }

  v228 = xmmword_27FDC0B00;
  v229 = *&word_27FDC0B10;
  v230 = unk_27FDC0B20;
  v231 = dword_27FDC0B30;
  v224 = xmmword_27FDC0AC0;
  v225 = unk_27FDC0AD0;
  v226 = xmmword_27FDC0AE0;
  v227 = *&qword_27FDC0AF0;
  v220 = xmmword_27FDC0A80;
  v221 = unk_27FDC0A90;
  v222 = unk_27FDC0AA0;
  v223 = xmmword_27FDC0AB0;
  v216 = xmmword_27FDC0A40;
  v217 = *algn_27FDC0A50;
  v218 = xmmword_27FDC0A60;
  v219 = *&byte_27FDC0A70;
  sub_25F7A223C(&v216, &v378);
  if (qword_27FDAF9F8 != -1)
  {
    swift_once();
  }

  v25 = xmmword_27FDC0B78;
  v26 = unk_27FDC0B68;
  v232[4] = xmmword_27FDC0B78;
  v232[5] = xmmword_27FDC0B88;
  v27 = xmmword_27FDC0B88;
  v233[0] = xmmword_27FDC0B98;
  *(v233 + 12) = *(&xmmword_27FDC0B98 + 12);
  v28 = xmmword_27FDC0B48;
  v29 = xmmword_27FDC0B58;
  v232[2] = xmmword_27FDC0B58;
  v232[3] = unk_27FDC0B68;
  v30 = xmmword_27FDC0B38;
  v232[1] = xmmword_27FDC0B48;
  v232[0] = xmmword_27FDC0B38;
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
  *(v39 + 108) = *(&xmmword_27FDC0B98 + 12);
  *(v39 + 64) = v25;
  *(v39 + 80) = v27;
  *(v39 + 96) = xmmword_27FDC0B98;
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
  v193 = sub_25F7E6438(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v193;
}

uint64_t sub_25F7E7F54@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FDAFA08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Preset.Info(0);
  v3 = __swift_project_value_buffer(v2, qword_27FDC0BD0);

  return sub_25F777C88(v3, a1);
}

uint64_t sub_25F7E7FD0()
{
  v0 = sub_25F82217C();
  __swift_allocate_value_buffer(v0, qword_27FDC0BB8);
  v1 = __swift_project_value_buffer(v0, qword_27FDC0BB8);
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

uint64_t sub_25F7E8100()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v21 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  __swift_allocate_value_buffer(v3, qword_27FDC0BD0);
  v4 = __swift_project_value_buffer(v3, qword_27FDC0BD0);
  if (qword_27FDAFA00 != -1)
  {
    swift_once();
  }

  v22 = 0x800000025F82E0E0;
  v23 = 0x800000025F82E110;
  v5 = sub_25F82217C();
  v6 = __swift_project_value_buffer(v5, qword_27FDC0BB8);
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

uint64_t sub_25F7E83FC()
{
  v8 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25F824220;
  if (qword_27FDAFB18 != -1)
  {
    swift_once();
  }

  v1 = *&byte_27FDB1378;
  v9[2] = xmmword_27FDB1368;
  v9[3] = *&byte_27FDB1378;
  v2 = xmmword_27FDB1388;
  v9[4] = xmmword_27FDB1388;
  v4 = xmmword_27FDB1348;
  v3 = *&byte_27FDB1358;
  v9[0] = xmmword_27FDB1348;
  v9[1] = *&byte_27FDB1358;
  *(v0 + 64) = xmmword_27FDB1368;
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 112) = 2;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0;
  v7[0] = 1;
  v7[96] = 1;
  v7[88] = 1;
  v7[80] = 1;
  *(v0 + 192) = 5;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  *(v0 + 216) = 0;
  *(v0 + 224) = 1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 1;
  *(v0 + 248) = 0;
  *(v0 + 256) = 1;
  *(v0 + 264) = 0;
  v5 = sub_25F792BC4(&unk_2871C3EE8);
  xmmword_27FDC0BE8 = 0u;
  unk_27FDC0BF8 = 0u;
  xmmword_27FDC0C08 = 0u;
  byte_27FDC0C18 = 1;
  unk_27FDC0C20 = 0u;
  *(&xmmword_27FDC0C28 + 8) = 0u;
  unk_27FDC0C40 = 0u;
  byte_27FDC0C50 = 0;
  byte_27FDC0C51 = v8;
  xmmword_27FDC0C58 = xmmword_25F824920;
  LOBYTE(xmmword_27FDC0C68) = 1;
  *(&xmmword_27FDC0C68 + 8) = xmmword_25F828500;
  word_27FDC0C80 = 1;
  xmmword_27FDC0C88 = xmmword_25F828510;
  qword_27FDC0C98 = 0x3F40624DD2F1A9FCLL;
  unk_27FDC0CA0 = v0;
  LOBYTE(xmmword_27FDC0CA8) = 0;
  *(&xmmword_27FDC0CA8 + 1) = 0x400199999999999ALL;
  word_27FDC0CB8 = 1;
  unk_27FDC0CC0 = xmmword_25F825710;
  qword_27FDC0CD0 = v5;
  dword_27FDC0CD8 = 16843008;
  return sub_25F777DAC(v9, v7);
}

double sub_25F7E860C()
{
  LODWORD(xmmword_27FDC0CE0) = 0;
  *(&xmmword_27FDC0CE0 + 1) = 0x407F400000000000;
  LOWORD(xmmword_27FDC0CF0) = 0;
  *(&xmmword_27FDC0CF0 + 1) = 0x4030000000000000;
  LOWORD(xmmword_27FDC0D00) = 0;
  *(&xmmword_27FDC0D00 + 1) = &unk_2871C3F10;
  unk_27FDC0D10 = 0;
  byte_27FDC0D18 = 1;
  *&xmmword_27FDC0D20 = 0;
  BYTE8(xmmword_27FDC0D20) = 1;
  *&xmmword_27FDC0D30 = 0;
  BYTE8(xmmword_27FDC0D30) = 1;
  xmmword_27FDC0D40 = xmmword_25F828540;
  qword_27FDC0D50 = 0x4075E00000000000;
  *&result = 0x1000100010001;
  dword_27FDC0D58 = 65537;
  return result;
}

uint64_t sub_25F7E8694()
{
  v0 = sub_25F82217C();
  __swift_allocate_value_buffer(v0, qword_27FDC0D60);
  v1 = __swift_project_value_buffer(v0, qword_27FDC0D60);
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

uint64_t sub_25F7E87C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v21 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  __swift_allocate_value_buffer(v3, qword_27FDC0D78);
  v4 = __swift_project_value_buffer(v3, qword_27FDC0D78);
  if (qword_27FDAFA20 != -1)
  {
    swift_once();
  }

  v22 = 0x800000025F830460;
  v23 = 0x800000025F830480;
  v5 = sub_25F82217C();
  v6 = __swift_project_value_buffer(v5, qword_27FDC0D60);
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

uint64_t sub_25F7E8AC0()
{
  v8 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25F824220;
  if (qword_27FDAFB18 != -1)
  {
    swift_once();
  }

  v1 = *&byte_27FDB1378;
  v9[2] = xmmword_27FDB1368;
  v9[3] = *&byte_27FDB1378;
  v2 = xmmword_27FDB1388;
  v9[4] = xmmword_27FDB1388;
  v4 = xmmword_27FDB1348;
  v3 = *&byte_27FDB1358;
  v9[0] = xmmword_27FDB1348;
  v9[1] = *&byte_27FDB1358;
  *(v0 + 64) = xmmword_27FDB1368;
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 112) = 2;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0;
  v7[0] = 1;
  v7[96] = 1;
  v7[88] = 1;
  v7[80] = 1;
  *(v0 + 192) = 5;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  *(v0 + 216) = 0;
  *(v0 + 224) = 1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 1;
  *(v0 + 248) = 0;
  *(v0 + 256) = 1;
  *(v0 + 264) = 0;
  v5 = sub_25F792BC4(&unk_2871C3F38);
  xmmword_27FDC0D90 = 0u;
  unk_27FDC0DA0 = 0u;
  xmmword_27FDC0DB0 = 0u;
  byte_27FDC0DC0 = 1;
  *&algn_27FDC0DC1[7] = 0u;
  *(&xmmword_27FDC0DD0 + 8) = 0u;
  unk_27FDC0DE8 = 0u;
  byte_27FDC0DF8 = 0;
  byte_27FDC0DF9 = v8;
  xmmword_27FDC0E00 = xmmword_25F824920;
  LOBYTE(xmmword_27FDC0E10) = 1;
  *(&xmmword_27FDC0E10 + 8) = xmmword_25F828500;
  word_27FDC0E28 = 1;
  xmmword_27FDC0E30 = vdupq_n_s64(0x407F400000000000uLL);
  qword_27FDC0E40 = 0x3F40624DD2F1A9FCLL;
  unk_27FDC0E48 = v0;
  LOBYTE(xmmword_27FDC0E50) = 0;
  *(&xmmword_27FDC0E50 + 1) = 0x400199999999999ALL;
  word_27FDC0E60 = 1;
  *&algn_27FDC0E62[6] = xmmword_25F825710;
  qword_27FDC0E78 = v5;
  dword_27FDC0E80 = 16843008;
  return sub_25F777DAC(v9, v7);
}

double sub_25F7E8CD4()
{
  LODWORD(xmmword_27FDC0E88) = 0;
  *(&xmmword_27FDC0E88 + 1) = 0x407F400000000000;
  LOWORD(xmmword_27FDC0E98) = 0;
  *(&xmmword_27FDC0E98 + 1) = 0x4014000000000000;
  LOWORD(xmmword_27FDC0EA8) = 0;
  *(&xmmword_27FDC0EA8 + 1) = &unk_2871C3F60;
  unk_27FDC0EB8 = 0;
  byte_27FDC0EC0 = 1;
  *&xmmword_27FDC0EC8 = 0;
  BYTE8(xmmword_27FDC0EC8) = 1;
  *&xmmword_27FDC0ED8 = 0;
  BYTE8(xmmword_27FDC0ED8) = 1;
  xmmword_27FDC0EE8 = xmmword_25F828540;
  qword_27FDC0EF8 = 0x4075E00000000000;
  *&result = 0x1000100010001;
  dword_27FDC0F00 = 65537;
  return result;
}

void *sub_25F7E8D5C(uint64_t a1)
{
  v19 = type metadata accessor for Preset(0);
  v2 = *(v19 - 8);
  v3 = MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = sub_25F817E64(&unk_2871C3F88);
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

void *sub_25F7E8FB0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFCB0);
  v1 = type metadata accessor for Preset(0);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25F825730;
  v5 = v4 + v3;
  if (qword_27FDAFA08 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Preset.Info(0);
  v7 = __swift_project_value_buffer(v6, qword_27FDC0BD0);
  sub_25F7A22F4(v7, v5, type metadata accessor for Preset.Info);
  if (qword_27FDAFA10 != -1)
  {
    swift_once();
  }

  v210 = xmmword_27FDC0CA8;
  v211 = *&word_27FDC0CB8;
  v212 = unk_27FDC0CC8;
  v213 = dword_27FDC0CD8;
  v206 = xmmword_27FDC0C68;
  v207 = unk_27FDC0C78;
  v208 = xmmword_27FDC0C88;
  v209 = *&qword_27FDC0C98;
  v202 = xmmword_27FDC0C28;
  v203 = unk_27FDC0C38;
  v204 = unk_27FDC0C48;
  v205 = xmmword_27FDC0C58;
  v198 = xmmword_27FDC0BE8;
  v199 = unk_27FDC0BF8;
  v200 = xmmword_27FDC0C08;
  v201 = *&byte_27FDC0C18;
  sub_25F7A223C(&v198, &v378);
  if (qword_27FDAFA18 != -1)
  {
    swift_once();
  }

  v8 = xmmword_27FDC0D20;
  v9 = unk_27FDC0D10;
  v214[4] = xmmword_27FDC0D20;
  v214[5] = xmmword_27FDC0D30;
  v10 = xmmword_27FDC0D30;
  v215[0] = xmmword_27FDC0D40;
  *(v215 + 12) = *(&xmmword_27FDC0D40 + 12);
  v11 = xmmword_27FDC0CF0;
  v12 = xmmword_27FDC0D00;
  v214[2] = xmmword_27FDC0D00;
  v214[3] = unk_27FDC0D10;
  v13 = xmmword_27FDC0CE0;
  v214[0] = xmmword_27FDC0CE0;
  v214[1] = xmmword_27FDC0CF0;
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
  *(v22 + 108) = *(&xmmword_27FDC0D40 + 12);
  *(v22 + 64) = v8;
  *(v22 + 80) = v10;
  *(v22 + 96) = xmmword_27FDC0D40;
  *v22 = v13;
  *(v22 + 16) = v11;
  *(v22 + 32) = v12;
  *(v22 + 48) = v9;
  v23 = v5 + v2;
  *(v22 + 122) = 1;
  sub_25F7A2298(v214, &v378);
  if (qword_27FDAFA28 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v6, qword_27FDC0D78);
  sub_25F7A22F4(v24, v5 + v2, type metadata accessor for Preset.Info);
  if (qword_27FDAFA30 != -1)
  {
    swift_once();
  }

  v228 = xmmword_27FDC0E50;
  v229 = *&word_27FDC0E60;
  v230 = unk_27FDC0E70;
  v231 = dword_27FDC0E80;
  v224 = xmmword_27FDC0E10;
  v225 = unk_27FDC0E20;
  v226 = xmmword_27FDC0E30;
  v227 = *&qword_27FDC0E40;
  v220 = xmmword_27FDC0DD0;
  v221 = unk_27FDC0DE0;
  v222 = unk_27FDC0DF0;
  v223 = xmmword_27FDC0E00;
  v216 = xmmword_27FDC0D90;
  v217 = unk_27FDC0DA0;
  v218 = xmmword_27FDC0DB0;
  v219 = *&byte_27FDC0DC0;
  sub_25F7A223C(&v216, &v378);
  if (qword_27FDAFA38 != -1)
  {
    swift_once();
  }

  v25 = xmmword_27FDC0EC8;
  v26 = unk_27FDC0EB8;
  v232[4] = xmmword_27FDC0EC8;
  v232[5] = xmmword_27FDC0ED8;
  v27 = xmmword_27FDC0ED8;
  v233[0] = xmmword_27FDC0EE8;
  *(v233 + 12) = *(&xmmword_27FDC0EE8 + 12);
  v28 = xmmword_27FDC0E98;
  v29 = xmmword_27FDC0EA8;
  v232[2] = xmmword_27FDC0EA8;
  v232[3] = unk_27FDC0EB8;
  v30 = xmmword_27FDC0E88;
  v232[1] = xmmword_27FDC0E98;
  v232[0] = xmmword_27FDC0E88;
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
  *(v39 + 108) = *(&xmmword_27FDC0EE8 + 12);
  *(v39 + 64) = v25;
  *(v39 + 80) = v27;
  *(v39 + 96) = xmmword_27FDC0EE8;
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
  v193 = sub_25F7E8D5C(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v193;
}

uint64_t DisplayID.ProductIdentificationDataBlock.__allocating_init(_:)(uint64_t a1, unint64_t a2)
{
  v5 = swift_allocObject();
  sub_25F7E2E2C(a1, a2);
  if (v2)
  {
    sub_25F76D178(a1, a2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  return v5;
}

Swift::Void __swiftcall DisplayID.ProductIdentificationDataBlock.serialNumber(_:)(Swift::UInt32_optional a1)
{
  swift_beginAccess();
  sub_25F821FAC();
  swift_endAccess();
}

uint64_t DisplayID.ProductIdentificationDataBlock.data.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_25F76E658(v1, *(v0 + 24));
  return v1;
}

uint64_t DisplayID.ProductIdentificationDataBlock.init(_:)(uint64_t a1, unint64_t a2)
{
  sub_25F7E2E2C(a1, a2);
  if (v3)
  {
    sub_25F76D178(a1, a2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  return v2;
}

uint64_t DisplayID.ProductIdentificationDataBlock.__allocating_init(vendorId:productId:serialNumber:weekOfManufacture:yearOfManufacture:productName:)(unsigned int a1, uint64_t a2, uint64_t a3, Swift::UInt a4, char a5, uint64_t a6, uint64_t a7, void *a8)
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = swift_allocObject();
  if (!a8 || sub_25F82243C() < 237)
  {
    v22 = a7;
    v23 = a6;
    sub_25F821E8C();
    swift_allocObject();
    v26 = 0xF00000000;
    v27 = sub_25F821E5C();
    sub_25F7BDB2C(&v26, 0);
    v28 = v26;
    v29 = v27 | 0x4000000000000000;
    sub_25F821FEC();
    sub_25F821FEC();
    sub_25F821FEC();
    v15 = v28;
    v14 = v29;
    *(v12 + 16) = v28;
    *(v12 + 24) = v14;
    if (HIBYTE(a1))
    {
      sub_25F76E658(v15, v14);

      sub_25F773C1C();
      swift_allocError();
      *v16 = 0xD000000000000026;
      *(v16 + 8) = 0x800000025F830590;
      *(v16 + 16) = 1;
LABEL_6:
      swift_willThrow();

      sub_25F76D178(v28, v29);
      return v12;
    }

    swift_beginAccess();
    sub_25F76E658(v15, v14);
    sub_25F821FAC();
    sub_25F821FAC();
    swift_endAccess();
    swift_beginAccess();
    sub_25F821FAC();
    swift_endAccess();
    v31.is_nil = a5 & 1;
    v31.value = a4;
    DisplayID.ProductIdentificationDataBlock.weekOfManufacture(_:)(v31);
    if (v17)
    {
      sub_25F76D178(v15, v14);
    }

    else
    {
      if ((v23 - 2256) < 0xFFFFFFFFFFFFFF0FLL)
      {

        sub_25F773C1C();
        swift_allocError();
        *v19 = 0xD00000000000002FLL;
        *(v19 + 8) = 0x800000025F830560;
        *(v19 + 16) = 1;
        goto LABEL_6;
      }

      swift_beginAccess();
      sub_25F821FEC();
      swift_endAccess();
      v20.value._countAndFlagsBits = v22;
      v20.value._object = a8;
      DisplayID.ProductIdentificationDataBlock.productName(_:)(v20);
      sub_25F76D178(v15, v14);
      if (!v21)
      {
LABEL_10:

        return v12;
      }
    }

    goto LABEL_10;
  }

  sub_25F773C1C();
  swift_allocError();
  *v13 = 0xD000000000000017;
  *(v13 + 8) = 0x800000025F8305C0;
  *(v13 + 16) = 1;
  swift_willThrow();
  swift_deallocPartialClassInstance();
  return v12;
}

uint64_t DisplayID.ProductIdentificationDataBlock.init(vendorId:productId:serialNumber:weekOfManufacture:yearOfManufacture:productName:)(unsigned int a1, uint64_t a2, uint64_t a3, Swift::UInt a4, char a5, uint64_t a6, uint64_t a7, void *a8)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a8 || sub_25F82243C() < 237)
  {
    v22 = a7;
    v23 = a6;
    sub_25F821E8C();
    swift_allocObject();
    v26 = 0xF00000000;
    v27 = sub_25F821E5C();
    sub_25F7BDB2C(&v26, 0);
    v28 = v26;
    v29 = v27 | 0x4000000000000000;
    sub_25F821FEC();
    sub_25F821FEC();
    sub_25F821FEC();
    v15 = v28;
    v14 = v29;
    *(v8 + 16) = v28;
    *(v8 + 24) = v14;
    if (HIBYTE(a1))
    {
      sub_25F76E658(v15, v14);

      sub_25F773C1C();
      swift_allocError();
      *v16 = 0xD000000000000026;
      *(v16 + 8) = 0x800000025F830590;
      *(v16 + 16) = 1;
LABEL_6:
      swift_willThrow();

      sub_25F76D178(v28, v29);
      return v8;
    }

    swift_beginAccess();
    sub_25F76E658(v15, v14);
    sub_25F821FAC();
    sub_25F821FAC();
    swift_endAccess();
    swift_beginAccess();
    sub_25F821FAC();
    swift_endAccess();
    v31.is_nil = a5 & 1;
    v31.value = a4;
    DisplayID.ProductIdentificationDataBlock.weekOfManufacture(_:)(v31);
    if (v17)
    {
      sub_25F76D178(v15, v14);
    }

    else
    {
      if ((v23 - 2256) <= 0xFFFFFFFFFFFFFF0ELL)
      {

        sub_25F773C1C();
        swift_allocError();
        *v19 = 0xD00000000000002FLL;
        *(v19 + 8) = 0x800000025F830560;
        *(v19 + 16) = 1;
        goto LABEL_6;
      }

      swift_beginAccess();
      sub_25F821FEC();
      swift_endAccess();
      v20.value._countAndFlagsBits = v22;
      v20.value._object = a8;
      DisplayID.ProductIdentificationDataBlock.productName(_:)(v20);
      sub_25F76D178(v15, v14);
      if (!v21)
      {
LABEL_10:

        return v8;
      }
    }

    goto LABEL_10;
  }

  sub_25F773C1C();
  swift_allocError();
  *v13 = 0xD000000000000017;
  *(v13 + 8) = 0x800000025F8305C0;
  *(v13 + 16) = 1;
  swift_willThrow();
  swift_deallocPartialClassInstance();
  return v8;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DisplayID.ProductIdentificationDataBlock.vendorId(_:)(Swift::UInt32 a1)
{
  if (HIBYTE(a1))
  {
    sub_25F773C1C();
    swift_allocError();
    *v1 = 0xD000000000000026;
    *(v1 + 8) = 0x800000025F830590;
    *(v1 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    sub_25F821FAC();
    swift_endAccess();
  }
}

Swift::Void __swiftcall DisplayID.ProductIdentificationDataBlock.productId(_:)(Swift::UInt16 a1)
{
  swift_beginAccess();
  sub_25F821FAC();
  swift_endAccess();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DisplayID.ProductIdentificationDataBlock.weekOfManufacture(_:)(Swift::UInt_optional a1)
{
  if (a1.is_nil || a1.value - 53 >= 0xFFFFFFFFFFFFFFCCLL)
  {
    swift_beginAccess();
    sub_25F821FEC();
    swift_endAccess();
  }

  else
  {
    sub_25F773C1C();
    swift_allocError();
    *v1 = 0xD00000000000002ALL;
    *(v1 + 8) = 0x800000025F8305E0;
    *(v1 + 16) = 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DisplayID.ProductIdentificationDataBlock.yearOfManufacture(_:)(Swift::UInt a1)
{
  if (a1 - 2256 >= 0xFFFFFFFFFFFFFF0FLL)
  {
    swift_beginAccess();
    sub_25F821FEC();
    swift_endAccess();
  }

  else
  {
    sub_25F773C1C();
    swift_allocError();
    *v1 = 0xD00000000000002FLL;
    *(v1 + 8) = 0x800000025F830560;
    *(v1 + 16) = 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DisplayID.ProductIdentificationDataBlock.productName(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  swift_beginAccess();
  sub_25F821FDC();
  swift_endAccess();
  if (!object)
  {
    swift_beginAccess();
    sub_25F821FEC();
    sub_25F821FEC();
    sub_25F821FAC();
    swift_endAccess();
    return;
  }

  v2 = sub_25F82243C();
  if (v2 > 236)
  {
    sub_25F773C1C();
    swift_allocError();
    *v3 = 0xD000000000000032;
    *(v3 + 8) = 0x800000025F830610;
    *(v3 + 16) = 1;
    swift_willThrow();
    return;
  }

  v4 = v2;
  if (v2 < -12)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  swift_beginAccess();
  sub_25F821FEC();
  if (v4 < 0)
  {
    goto LABEL_9;
  }

  sub_25F821FEC();
  swift_endAccess();
  sub_25F82240C();
  swift_beginAccess();
  sub_25F821FAC();
  swift_endAccess();
}

uint64_t DisplayID.ProductIdentificationDataBlock.hierarchicalDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_25F771924();
  sub_25F802E24(v4, v5, MEMORY[0x277D84F90], a1);
  strcpy(v82, "Vendor ID: ");
  *&v82[12] = -352321536;
  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = *(v2 + 24);
  sub_25F76E658(v6, v7);
  v8 = sub_25F82205C();
  v10 = v9;
  sub_25F76D178(v6, v7);
  LODWORD(v6) = sub_25F7FE0A0(0, v8, v10);
  sub_25F76D178(v8, v10);
  LODWORD(v83) = v6;
  sub_25F751CA4();
  v11 = sub_25F8224AC();
  v13 = v12;
  if (__OFSUB__(8, sub_25F82243C()))
  {
    __break(1u);
  }

  else
  {
    v14 = sub_25F82249C();
    v83 = 30768;
    v84 = 0xE200000000000000;
    MEMORY[0x25F8E7510](v14);

    MEMORY[0x25F8E7510](v11, v13);

    MEMORY[0x25F8E7510](30768, 0xE200000000000000);

    sub_25F802E24(*v82, *&v82[8], MEMORY[0x277D84F90], v82);
    v11 = *v82;
    v76 = *&v82[8];
    v13 = a1[2];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  v13 = sub_25F75C38C(0, *(v13 + 2) + 1, 1, v13);
LABEL_3:
  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_25F75C38C((v15 > 1), v16 + 1, 1, v13);
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[24 * v16];
  *(v17 + 4) = v11;
  *(v17 + 40) = v76;
  a1[2] = v13;
  strcpy(v82, "Product ID: ");
  v82[13] = 0;
  *&v82[14] = -5120;
  v18 = *(v2 + 16);
  v19 = *(v2 + 24);
  sub_25F76E658(v18, v19);
  v20 = sub_25F82205C();
  v22 = v21;
  sub_25F76D178(v18, v19);
  v23 = sub_25F7FE4C8(0, v20, v22);
  sub_25F76D178(v20, v22);
  LOWORD(v83) = v23;
  sub_25F7ECAA0();
  v24 = sub_25F8224AC();
  v26 = v25;
  v27 = sub_25F82243C();
  v29 = 4;
  if (__OFSUB__(4, v27))
  {
    __break(1u);
  }

  else
  {
    v30 = sub_25F82249C();
    v83 = 30768;
    v84 = 0xE200000000000000;
    MEMORY[0x25F8E7510](v30);

    MEMORY[0x25F8E7510](v24, v26);

    MEMORY[0x25F8E7510](v83, v84);

    sub_25F802E24(*v82, *&v82[8], MEMORY[0x277D84F90], v82);
    v26 = *v82;
    v28 = *&v82[8];
    v24 = *(v13 + 2);
    v29 = *(v13 + 3);
    v23 = v24 + 1;
    if (v24 < v29 >> 1)
    {
      goto LABEL_7;
    }
  }

  v77 = v28;
  v72 = sub_25F75C38C((v29 > 1), v23, 1, v13);
  v28 = v77;
  v13 = v72;
LABEL_7:
  *(v13 + 2) = v23;
  v31 = &v13[24 * v24];
  *(v31 + 4) = v26;
  *(v31 + 40) = v28;
  a1[2] = v13;
  *v82 = 0;
  *&v82[8] = 0xE000000000000000;
  sub_25F82292C();

  *v82 = 0x4E206C6169726553;
  *&v82[8] = 0xEF203A7265626D75;
  v32 = *(v2 + 16);
  v33 = *(v2 + 24);

  sub_25F76E658(v32, v33);
  v34 = sub_25F82205C();
  v36 = v35;
  sub_25F76D178(v32, v33);
  v37 = sub_25F7FE6D8(0, v34, v36);
  sub_25F76D178(v34, v36);
  if ((v37 & 0x100000000) != 0)
  {
    v43 = 1701736270;

    v44 = 0xE400000000000000;
  }

  else
  {
    LODWORD(v83) = v37;
    v38 = sub_25F8224AC();
    v40 = v39;
    result = sub_25F82243C();
    if (__OFSUB__(8, result))
    {
      __break(1u);
      return result;
    }

    v42 = sub_25F82249C();
    v83 = 30768;
    v84 = 0xE200000000000000;
    MEMORY[0x25F8E7510](v42);

    MEMORY[0x25F8E7510](v38, v40);

    v43 = v83;
    v44 = v84;
  }

  MEMORY[0x25F8E7510](v43, v44);

  sub_25F802E24(*v82, *&v82[8], MEMORY[0x277D84F90], v82);
  v45 = *v82;
  v46 = *&v82[8];
  v48 = *(v13 + 2);
  v47 = *(v13 + 3);
  if (v48 >= v47 >> 1)
  {
    v78 = *&v82[8];
    v73 = sub_25F75C38C((v47 > 1), v48 + 1, 1, v13);
    v46 = v78;
    v13 = v73;
  }

  *(v13 + 2) = v48 + 1;
  v49 = &v13[24 * v48];
  *(v49 + 4) = v45;
  *(v49 + 40) = v46;
  a1[2] = v13;
  *v82 = 0;
  *&v82[8] = 0xE000000000000000;
  sub_25F82292C();

  *v82 = 0xD000000000000015;
  *&v82[8] = 0x800000025F830650;

  sub_25F7EC30C();
  if (v50)
  {

    v51 = 1701736270;
    v52 = 0xE400000000000000;
  }

  else
  {
    v83 = 0;
    v84 = 0xE000000000000000;
    sub_25F8229FC();

    v51 = v83;
    v52 = v84;
  }

  MEMORY[0x25F8E7510](v51, v52);

  sub_25F802E24(*v82, *&v82[8], MEMORY[0x277D84F90], v82);
  v53 = *v82;
  v54 = *&v82[8];
  v56 = *(v13 + 2);
  v55 = *(v13 + 3);
  if (v56 >= v55 >> 1)
  {
    v79 = *&v82[8];
    v74 = sub_25F75C38C((v55 > 1), v56 + 1, 1, v13);
    v54 = v79;
    v13 = v74;
  }

  *(v13 + 2) = v56 + 1;
  v57 = &v13[24 * v56];
  *(v57 + 4) = v53;
  *(v57 + 40) = v54;
  a1[2] = v13;
  *v82 = 0;
  *&v82[8] = 0xE000000000000000;
  sub_25F82292C();

  *v82 = 0xD000000000000015;
  *&v82[8] = 0x800000025F830670;

  sub_25F7EC5A0();
  v83 = 0;
  v84 = 0xE000000000000000;
  sub_25F8229FC();

  MEMORY[0x25F8E7510](v83, v84);

  sub_25F802E24(*v82, *&v82[8], MEMORY[0x277D84F90], v82);
  v58 = *v82;
  v59 = *&v82[8];
  v61 = *(v13 + 2);
  v60 = *(v13 + 3);
  if (v61 >= v60 >> 1)
  {
    v80 = *&v82[8];
    v75 = sub_25F75C38C((v60 > 1), v61 + 1, 1, v13);
    v59 = v80;
    v13 = v75;
  }

  *(v13 + 2) = v61 + 1;
  v62 = &v13[24 * v61];
  *(v62 + 4) = v58;
  *(v62 + 40) = v59;
  a1[2] = v13;
  *v82 = 0;
  *&v82[8] = 0xE000000000000000;
  sub_25F82292C();

  strcpy(v82, "Product Name: ");
  v82[15] = -18;

  v64 = DisplayID.ProductIdentificationDataBlock.productName()();
  if (v63)
  {
    v83 = 0;
    v84 = 0xE000000000000000;
    swift_getErrorValue();
    sub_25F822C9C();
  }

  else
  {
    if (!v64.value._object)
    {

      v65 = 1701736270;
      v66 = 0xE400000000000000;
      goto LABEL_25;
    }

    v83 = 0;
    v84 = 0xE000000000000000;
    sub_25F8229FC();
  }

  v65 = v83;
  v66 = v84;
LABEL_25:
  MEMORY[0x25F8E7510](v65, v66);

  result = sub_25F802E24(*v82, *&v82[8], MEMORY[0x277D84F90], v82);
  v67 = *v82;
  v68 = *&v82[8];
  v70 = *(v13 + 2);
  v69 = *(v13 + 3);
  if (v70 >= v69 >> 1)
  {
    v81 = *&v82[8];
    result = sub_25F75C38C((v69 > 1), v70 + 1, 1, v13);
    v68 = v81;
    v13 = result;
  }

  *(v13 + 2) = v70 + 1;
  v71 = &v13[24 * v70];
  *(v71 + 4) = v67;
  *(v71 + 40) = v68;
  a1[2] = v13;
  return result;
}

Swift::UInt32 __swiftcall DisplayID.ProductIdentificationDataBlock.vendorId()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_25F76E658(v1, v2);
  v3 = sub_25F82205C();
  v5 = v4;
  sub_25F76D178(v1, v2);
  LODWORD(v1) = sub_25F7FE0A0(0, v3, v5);
  sub_25F76D178(v3, v5);
  return v1;
}

Swift::UInt16 __swiftcall DisplayID.ProductIdentificationDataBlock.productId()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_25F76E658(v1, v2);
  v3 = sub_25F82205C();
  v5 = v4;
  sub_25F76D178(v1, v2);
  LOWORD(v1) = sub_25F7FE4C8(0, v3, v5);
  sub_25F76D178(v3, v5);
  return v1;
}

Swift::UInt32_optional __swiftcall DisplayID.ProductIdentificationDataBlock.serialNumber()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_25F76E658(v1, v2);
  v3 = sub_25F82205C();
  v5 = v4;
  sub_25F76D178(v1, v2);
  v6 = sub_25F7FE6D8(0, v3, v5);
  sub_25F76D178(v3, v5);
  return (v6 | ((HIDWORD(v6) & 1) << 32));
}

unint64_t sub_25F7EC30C()
{
  swift_beginAccess();
  v0 = sub_25F821FDC();
  swift_endAccess();
  v1 = v0;
  if (v0 > 0x34u)
  {
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000015, 0x800000025F830690);
    v2 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v2);

    MEMORY[0x25F8E7510](0xD000000000000022, 0x800000025F8306B0);
    v1 = 0xE000000000000000;
    sub_25F773C1C();
    swift_allocError();
    *v3 = 0;
    *(v3 + 8) = 0xE000000000000000;
    *(v3 + 16) = 2;
    swift_willThrow();
  }

  return v1;
}

Swift::UInt_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DisplayID.ProductIdentificationDataBlock.weekOfManufacture()()
{
  swift_beginAccess();
  v0 = sub_25F821FDC();
  swift_endAccess();
  v1 = v0;
  if (v0 <= 0x34u)
  {
    v4 = v0 == 0;
  }

  else
  {
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000015, 0x800000025F830690);
    v2 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v2);

    MEMORY[0x25F8E7510](0xD000000000000022, 0x800000025F8306B0);
    v1 = 0xE000000000000000;
    sub_25F773C1C();
    swift_allocError();
    *v3 = 0;
    *(v3 + 8) = 0xE000000000000000;
    *(v3 + 16) = 2;
    swift_willThrow();
  }

  v5 = v1;
  result.value = v5;
  result.is_nil = v4;
  return result;
}

uint64_t sub_25F7EC5A0()
{
  swift_beginAccess();
  v0 = sub_25F821FDC();
  swift_endAccess();
  if (v0 >= 0xFu)
  {
    return v0 + 2000;
  }

  sub_25F82292C();
  MEMORY[0x25F8E7510](0xD000000000000015, 0x800000025F8306E0);
  v1 = sub_25F822C7C();
  MEMORY[0x25F8E7510](v1);

  MEMORY[0x25F8E7510](0xD000000000000024, 0x800000025F830700);
  sub_25F773C1C();
  swift_allocError();
  *v2 = 0;
  *(v2 + 8) = 0xE000000000000000;
  *(v2 + 16) = 2;
  return swift_willThrow();
}

Swift::UInt __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DisplayID.ProductIdentificationDataBlock.yearOfManufacture()()
{
  swift_beginAccess();
  v0 = sub_25F821FDC();
  swift_endAccess();
  if (v0 >= 0xFu)
  {
    return v0 + 2000;
  }

  sub_25F82292C();
  MEMORY[0x25F8E7510](0xD000000000000015, 0x800000025F8306E0);
  v1 = sub_25F822C7C();
  MEMORY[0x25F8E7510](v1);

  MEMORY[0x25F8E7510](0xD000000000000024, 0x800000025F830700);
  sub_25F773C1C();
  swift_allocError();
  *v2 = 0;
  *(v2 + 8) = 0xE000000000000000;
  *(v2 + 16) = 2;
  return swift_willThrow();
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DisplayID.ProductIdentificationDataBlock.productName()()
{
  swift_beginAccess();
  v0 = sub_25F821FDC();
  swift_endAccess();
  if (v0 <= 0xEC)
  {
    if (v0)
    {
      swift_beginAccess();
      v5 = sub_25F821FCC();
      v7 = v6;
      swift_endAccess();
      v8 = sub_25F8223DC();
      MEMORY[0x28223BE20](v8 - 8);
      sub_25F8223CC();
      v2 = sub_25F82238C();
      v3 = v9;
      sub_25F76D178(v5, v7);
    }

    else
    {
      v2 = 0;
      v3 = 0;
    }
  }

  else
  {
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD00000000000001CLL, 0x800000025F830730);
    v1 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v1);

    MEMORY[0x25F8E7510](0xD000000000000025, 0x800000025F830750);
    v2 = 0;
    v3 = 0xE000000000000000;
    sub_25F773C1C();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0xE000000000000000;
    *(v4 + 16) = 2;
    swift_willThrow();
  }

  v10 = v2;
  v11 = v3;
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

uint64_t DisplayID.ProductIdentificationDataBlock.__deallocating_deinit()
{
  sub_25F76D178(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_25F7ECAA0()
{
  result = qword_27FDB0C58;
  if (!qword_27FDB0C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0C58);
  }

  return result;
}

unint64_t sub_25F7ECAF4(uint64_t a1)
{
  result = sub_25F7ECB1C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F7ECB1C()
{
  result = qword_27FDB0C60;
  if (!qword_27FDB0C60)
  {
    type metadata accessor for DisplayID.ProductIdentificationDataBlock();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0C60);
  }

  return result;
}

uint64_t sub_25F7ECC14()
{
  v0 = sub_25F82217C();
  __swift_allocate_value_buffer(v0, qword_27FDC0F08);
  v1 = __swift_project_value_buffer(v0, qword_27FDC0F08);
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

uint64_t sub_25F7ECD44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v21 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  __swift_allocate_value_buffer(v3, qword_27FDC0F20);
  v4 = __swift_project_value_buffer(v3, qword_27FDC0F20);
  if (qword_27FDAFA40 != -1)
  {
    swift_once();
  }

  v22 = 0x800000025F82E0E0;
  v23 = 0x800000025F82E110;
  v5 = sub_25F82217C();
  v6 = __swift_project_value_buffer(v5, qword_27FDC0F08);
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

uint64_t sub_25F7ED040()
{
  v8 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25F824220;
  if (qword_27FDAFB18 != -1)
  {
    swift_once();
  }

  v1 = *&byte_27FDB1378;
  v9[2] = xmmword_27FDB1368;
  v9[3] = *&byte_27FDB1378;
  v2 = xmmword_27FDB1388;
  v9[4] = xmmword_27FDB1388;
  v4 = xmmword_27FDB1348;
  v3 = *&byte_27FDB1358;
  v9[0] = xmmword_27FDB1348;
  v9[1] = *&byte_27FDB1358;
  *(v0 + 64) = xmmword_27FDB1368;
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 112) = 2;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0;
  v7[0] = 1;
  v7[96] = 1;
  v7[88] = 1;
  v7[80] = 1;
  *(v0 + 192) = 5;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  *(v0 + 216) = 0;
  *(v0 + 224) = 1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 1;
  *(v0 + 248) = 0;
  *(v0 + 256) = 1;
  *(v0 + 264) = 0;
  v5 = sub_25F792BC4(&unk_2871C3FB0);
  xmmword_27FDC0F38 = 0u;
  unk_27FDC0F48 = 0u;
  xmmword_27FDC0F58 = 0u;
  byte_27FDC0F68 = 1;
  unk_27FDC0F70 = 0u;
  *(&xmmword_27FDC0F78 + 8) = 0u;
  unk_27FDC0F90 = 0u;
  byte_27FDC0FA0 = 0;
  byte_27FDC0FA1 = v8;
  xmmword_27FDC0FA8 = xmmword_25F824920;
  LOBYTE(xmmword_27FDC0FB8) = 1;
  *(&xmmword_27FDC0FB8 + 8) = xmmword_25F828500;
  word_27FDC0FD0 = 1;
  xmmword_27FDC0FD8 = xmmword_25F825700;
  qword_27FDC0FE8 = 0x3F40624DD2F1A9FCLL;
  unk_27FDC0FF0 = v0;
  LOBYTE(xmmword_27FDC0FF8) = 0;
  *(&xmmword_27FDC0FF8 + 1) = 0x400199999999999ALL;
  word_27FDC1008 = 1;
  unk_27FDC1010 = xmmword_25F825710;
  qword_27FDC1020 = v5;
  dword_27FDC1028 = 16843008;
  return sub_25F777DAC(v9, v7);
}

double sub_25F7ED250()
{
  LODWORD(xmmword_27FDC1030) = 0;
  *(&xmmword_27FDC1030 + 1) = 0x4082C00000000000;
  LOWORD(xmmword_27FDC1040) = 0;
  *(&xmmword_27FDC1040 + 1) = 0x4030000000000000;
  LOWORD(xmmword_27FDC1050) = 0;
  *(&xmmword_27FDC1050 + 1) = &unk_2871C3FD8;
  unk_27FDC1060 = 0;
  byte_27FDC1068 = 1;
  *&xmmword_27FDC1070 = 0;
  BYTE8(xmmword_27FDC1070) = 1;
  *&xmmword_27FDC1080 = 0;
  BYTE8(xmmword_27FDC1080) = 1;
  xmmword_27FDC1090 = xmmword_25F828600;
  qword_27FDC10A0 = 0x4075E00000000000;
  *&result = 0x1000100010001;
  dword_27FDC10A8 = 65537;
  return result;
}

uint64_t sub_25F7ED2D8()
{
  v0 = sub_25F82217C();
  __swift_allocate_value_buffer(v0, qword_27FDC10B0);
  v1 = __swift_project_value_buffer(v0, qword_27FDC10B0);
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

uint64_t sub_25F7ED408()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v21 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  __swift_allocate_value_buffer(v3, qword_27FDC10C8);
  v4 = __swift_project_value_buffer(v3, qword_27FDC10C8);
  if (qword_27FDAFA60 != -1)
  {
    swift_once();
  }

  v22 = 0x800000025F82DFB0;
  v23 = 0x800000025F82DFD0;
  v5 = sub_25F82217C();
  v6 = __swift_project_value_buffer(v5, qword_27FDC10B0);
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

uint64_t sub_25F7ED704()
{
  v8 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25F824220;
  if (qword_27FDAFB18 != -1)
  {
    swift_once();
  }

  v1 = *&byte_27FDB1378;
  v9[2] = xmmword_27FDB1368;
  v9[3] = *&byte_27FDB1378;
  v2 = xmmword_27FDB1388;
  v9[4] = xmmword_27FDB1388;
  v4 = xmmword_27FDB1348;
  v3 = *&byte_27FDB1358;
  v9[0] = xmmword_27FDB1348;
  v9[1] = *&byte_27FDB1358;
  *(v0 + 64) = xmmword_27FDB1368;
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 112) = 2;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0;
  v7[0] = 1;
  v7[96] = 1;
  v7[88] = 1;
  v7[80] = 1;
  *(v0 + 192) = 5;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  *(v0 + 216) = 0;
  *(v0 + 224) = 1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 1;
  *(v0 + 248) = 0;
  *(v0 + 256) = 1;
  *(v0 + 264) = 0;
  v5 = sub_25F792BC4(&unk_2871C4000);
  xmmword_27FDC10E0 = 0u;
  *algn_27FDC10F0 = 0u;
  xmmword_27FDC1100 = 0u;
  byte_27FDC1110 = 1;
  *&algn_27FDC1111[7] = 0u;
  *(&xmmword_27FDC1120 + 8) = 0u;
  unk_27FDC1138 = 0u;
  byte_27FDC1148 = 0;
  byte_27FDC1149 = v8;
  xmmword_27FDC1150 = xmmword_25F824920;
  LOBYTE(xmmword_27FDC1160) = 1;
  *(&xmmword_27FDC1160 + 8) = xmmword_25F828500;
  word_27FDC1178 = 1;
  xmmword_27FDC1180 = vdupq_n_s64(0x4082C00000000000uLL);
  qword_27FDC1190 = 0x3F40624DD2F1A9FCLL;
  unk_27FDC1198 = v0;
  LOBYTE(xmmword_27FDC11A0) = 0;
  *(&xmmword_27FDC11A0 + 1) = 0x400199999999999ALL;
  word_27FDC11B0 = 1;
  *&algn_27FDC11B2[6] = xmmword_25F825710;
  qword_27FDC11C8 = v5;
  dword_27FDC11D0 = 16843008;
  return sub_25F777DAC(v9, v7);
}

double sub_25F7ED918()
{
  LODWORD(xmmword_27FDC11D8) = 0;
  *(&xmmword_27FDC11D8 + 1) = 0x4082C00000000000;
  LOWORD(xmmword_27FDC11E8) = 0;
  *(&xmmword_27FDC11E8 + 1) = 0x4014000000000000;
  LOWORD(xmmword_27FDC11F8) = 0;
  *(&xmmword_27FDC11F8 + 1) = &unk_2871C4028;
  unk_27FDC1208 = 0;
  byte_27FDC1210 = 1;
  *&xmmword_27FDC1218 = 0;
  BYTE8(xmmword_27FDC1218) = 1;
  *&xmmword_27FDC1228 = 0;
  BYTE8(xmmword_27FDC1228) = 1;
  xmmword_27FDC1238 = xmmword_25F828600;
  qword_27FDC1248 = 0x4075E00000000000;
  *&result = 0x1000100010001;
  dword_27FDC1250 = 65537;
  return result;
}

void *sub_25F7ED9A0(uint64_t a1)
{
  v19 = type metadata accessor for Preset(0);
  v2 = *(v19 - 8);
  v3 = MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = sub_25F817E64(&unk_2871C4050);
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

void *sub_25F7EDBF4(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFCB0);
  v1 = type metadata accessor for Preset(0);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25F825730;
  v5 = v4 + v3;
  if (qword_27FDAFA48 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Preset.Info(0);
  v7 = __swift_project_value_buffer(v6, qword_27FDC0F20);
  sub_25F7A22F4(v7, v5, type metadata accessor for Preset.Info);
  if (qword_27FDAFA50 != -1)
  {
    swift_once();
  }

  v210 = xmmword_27FDC0FF8;
  v211 = *&word_27FDC1008;
  v212 = unk_27FDC1018;
  v213 = dword_27FDC1028;
  v206 = xmmword_27FDC0FB8;
  v207 = unk_27FDC0FC8;
  v208 = xmmword_27FDC0FD8;
  v209 = *&qword_27FDC0FE8;
  v202 = xmmword_27FDC0F78;
  v203 = unk_27FDC0F88;
  v204 = unk_27FDC0F98;
  v205 = xmmword_27FDC0FA8;
  v198 = xmmword_27FDC0F38;
  v199 = unk_27FDC0F48;
  v200 = xmmword_27FDC0F58;
  v201 = *&byte_27FDC0F68;
  sub_25F7A223C(&v198, &v378);
  if (qword_27FDAFA58 != -1)
  {
    swift_once();
  }

  v8 = xmmword_27FDC1070;
  v9 = unk_27FDC1060;
  v214[4] = xmmword_27FDC1070;
  v214[5] = xmmword_27FDC1080;
  v10 = xmmword_27FDC1080;
  v215[0] = xmmword_27FDC1090;
  *(v215 + 12) = *(&xmmword_27FDC1090 + 12);
  v11 = xmmword_27FDC1040;
  v12 = xmmword_27FDC1050;
  v214[2] = xmmword_27FDC1050;
  v214[3] = unk_27FDC1060;
  v13 = xmmword_27FDC1030;
  v214[0] = xmmword_27FDC1030;
  v214[1] = xmmword_27FDC1040;
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
  *(v22 + 108) = *(&xmmword_27FDC1090 + 12);
  *(v22 + 64) = v8;
  *(v22 + 80) = v10;
  *(v22 + 96) = xmmword_27FDC1090;
  *v22 = v13;
  *(v22 + 16) = v11;
  *(v22 + 32) = v12;
  *(v22 + 48) = v9;
  v23 = v5 + v2;
  *(v22 + 122) = 1;
  sub_25F7A2298(v214, &v378);
  if (qword_27FDAFA68 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v6, qword_27FDC10C8);
  sub_25F7A22F4(v24, v5 + v2, type metadata accessor for Preset.Info);
  if (qword_27FDAFA70 != -1)
  {
    swift_once();
  }

  v228 = xmmword_27FDC11A0;
  v229 = *&word_27FDC11B0;
  v230 = unk_27FDC11C0;
  v231 = dword_27FDC11D0;
  v224 = xmmword_27FDC1160;
  v225 = unk_27FDC1170;
  v226 = xmmword_27FDC1180;
  v227 = *&qword_27FDC1190;
  v220 = xmmword_27FDC1120;
  v221 = unk_27FDC1130;
  v222 = unk_27FDC1140;
  v223 = xmmword_27FDC1150;
  v216 = xmmword_27FDC10E0;
  v217 = *algn_27FDC10F0;
  v218 = xmmword_27FDC1100;
  v219 = *&byte_27FDC1110;
  sub_25F7A223C(&v216, &v378);
  if (qword_27FDAFA78 != -1)
  {
    swift_once();
  }

  v25 = xmmword_27FDC1218;
  v26 = unk_27FDC1208;
  v232[4] = xmmword_27FDC1218;
  v232[5] = xmmword_27FDC1228;
  v27 = xmmword_27FDC1228;
  v233[0] = xmmword_27FDC1238;
  *(v233 + 12) = *(&xmmword_27FDC1238 + 12);
  v28 = xmmword_27FDC11E8;
  v29 = xmmword_27FDC11F8;
  v232[2] = xmmword_27FDC11F8;
  v232[3] = unk_27FDC1208;
  v30 = xmmword_27FDC11D8;
  v232[1] = xmmword_27FDC11E8;
  v232[0] = xmmword_27FDC11D8;
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
  *(v39 + 108) = *(&xmmword_27FDC1238 + 12);
  *(v39 + 64) = v25;
  *(v39 + 80) = v27;
  *(v39 + 96) = xmmword_27FDC1238;
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
  v193 = sub_25F7ED9A0(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v193;
}

uint64_t initializeBufferWithCopyOfBuffer for ColorSpace(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VersionableError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >> 1 >= 0xFFF && *(a1 + 25))
  {
    return (*a1 + 8190);
  }

  v3 = ((*(a1 + 24) >> 6) | (4 * ((*(a1 + 8) >> 58) & 0x3C | (*(a1 + 8) >> 1) & 3 | (((*(a1 + 24) >> 1) & 0x1F) << 6)))) ^ 0x1FFF;
  if (v3 >= 0x1FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for VersionableError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >> 1 > 0xFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 8190;
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x7FF | ((-a2 & 0x1FFF) << 11);
      *result = 0;
      *(result + 8) = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
      *(result + 16) = 0;
      *(result + 24) = (v3 >> 5) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_25F7EF5F0(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_25F7EF620(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 24) & 1 | (a2 << 6);
    *(result + 8) &= 0xFFFFFFFFFFFFFF9uLL;
    *(result + 24) = v2;
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    *(result + 24) = 0x80;
  }

  return result;
}

const Bytef *sub_25F7EF670(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      *buf = a1;
      *&buf[8] = a2;
      buf[10] = BYTE2(a2);
      buf[11] = BYTE3(a2);
      buf[12] = BYTE4(a2);
      buf[13] = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_25F7F0274(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_25F76D178(a3, a4);
    return v10;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(buf, 0, 14);
LABEL_9:
  sub_25F7EFCFC(buf, a3, a4, &v12);
  v10 = v4;
  sub_25F76D178(a3, a4);
  if (!v4)
  {
    return v12;
  }

  return v10;
}

uint64_t static DisplayIdentifierHelpers.syscfgSrNMToEDIDSerialNumber(_:)(uint64_t a1, const Bytef *a2)
{
  if (sub_25F82243C() != 10)
  {
    sub_25F7EFCA8();
    swift_allocError();
    *v30 = 0;
    v30[1] = 0;
    swift_willThrow();
    return a2;
  }

  v56 = v2;

  v4 = sub_25F7F0328(1);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x25F8E74C0](v4, v6, v8, v10);
  v55 = v12;

  v13 = sub_25F82243C();
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = v13;
    v16 = sub_25F7F01F0(v13, 0);
    v17 = sub_25F7F0128(v57, v16 + 4, v15, 0xD00000000000001BLL, 0x800000025F8307D0);

    if (v17 != v15)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v18 = v16;
    v19 = v16[2];
    if (v19)
    {
LABEL_5:
      v53 = v11;
      v54 = v18;
      v57[0] = v14;
      sub_25F817DC8(0, v19, 0);
      v20 = v54;
      v21 = 0;
      v22 = v57[0];
      v58 = v54[2];
      v23 = v54 + 5;
      while (v58 != v21)
      {
        if (v21 >= v20[2])
        {
          goto LABEL_36;
        }

        if (v21 == 256)
        {
          goto LABEL_37;
        }

        v24 = v19;
        v25 = *(v23 - 1);
        v26 = *v23;
        v57[0] = v22;
        v28 = *(v22 + 16);
        v27 = *(v22 + 24);

        if (v28 >= v27 >> 1)
        {
          sub_25F817DC8((v27 > 1), v28 + 1, 1);
          v20 = v54;
          v22 = v57[0];
        }

        *(v22 + 16) = v28 + 1;
        v29 = v22 + 24 * v28;
        *(v29 + 48) = v21;
        *(v29 + 32) = v25;
        *(v29 + 40) = v26;
        v23 += 2;
        ++v21;
        v19 = v24;
        if (v24 == v21)
        {

          v11 = v53;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
    v19 = *(MEMORY[0x277D84F90] + 16);
    if (v19)
    {
      goto LABEL_5;
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_16:
  if (*(v22 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD18);
    v31 = sub_25F822A8C();
  }

  else
  {
    v31 = MEMORY[0x277D84F98];
  }

  v57[0] = v31;

  sub_25F7EFD90(v32, 1, v57);
  if (v56)
  {
    goto LABEL_40;
  }

  v33 = v57[0];
  v34 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v34 = v11 & 0xFFFFFFFFFFFFLL;
  }

  v57[0] = v11;
  v57[1] = v55;
  v57[2] = 0;
  v57[3] = v34;
  a2 = v57;
  v35 = sub_25F82247C();
  if (v36)
  {
    v37 = v35;
    v38 = v36;
    v39 = MEMORY[0x277D84F90];
    while (*(v33 + 16))
    {
      a2 = v33;
      v40 = sub_25F75DBC8(v37, v38);
      if ((v41 & 1) == 0)
      {
        break;
      }

      v42 = v40;

      v43 = *(*(v33 + 56) + v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_25F75BD48(0, *(v39 + 2) + 1, 1, v39);
      }

      v45 = *(v39 + 2);
      v44 = *(v39 + 3);
      if (v45 >= v44 >> 1)
      {
        v39 = sub_25F75BD48((v44 > 1), v45 + 1, 1, v39);
      }

      *(v39 + 2) = v45 + 1;
      v39[v45 + 32] = v43;
      a2 = v57;
      v37 = sub_25F82247C();
      v38 = v46;
      if (!v46)
      {
        goto LABEL_33;
      }
    }

    sub_25F7EFCA8();
    swift_allocError();
    *v47 = v37;
    v47[1] = v38;
    swift_willThrow();

    return a2;
  }

LABEL_33:

  v49 = sub_25F7BEE3C(v48);
  v51 = v50;

  sub_25F76E658(v49, v51);
  a2 = sub_25F7EF670(v49, v51, v49, v51);
  sub_25F76D178(v49, v51);

  if (!(a2 >> 32))
  {
    return a2;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_25F7EFCA8()
{
  result = qword_27FDB0C68;
  if (!qword_27FDB0C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0C68);
  }

  return result;
}

const Bytef *sub_25F7EFCFC@<X0>(const Bytef *buf@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, const Bytef **a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_13;
    }

    v7 = *(a2 + 16);
    v6 = *(a2 + 24);
    a2 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v5)
  {
    LODWORD(a2) = BYTE6(a3);
LABEL_14:
    buf = crc32(0, buf, a2);
    *a4 = buf;
    return buf;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
    goto LABEL_16;
  }

  a2 = HIDWORD(a2) - a2;
LABEL_10:
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(a2))
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    LODWORD(a2) = 0;
    goto LABEL_14;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return buf;
}

void sub_25F7EFD90(uint64_t a1, char a2, void *a3)
{
  v46 = *(a1 + 16);
  if (!v46)
  {
    goto LABEL_23;
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *a3;
  v9 = sub_25F75DBC8(v6, v5);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_25F75E4F8();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD70);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_25F75F57C(v13, a2 & 1);
  v17 = sub_25F75DBC8(v6, v5);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_25F822D2C();
    __break(1u);
LABEL_29:
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD00000000000001BLL, 0x800000025F82CB70);
    sub_25F8229FC();
    MEMORY[0x25F8E7510](39, 0xE100000000000000);
    sub_25F822A3C();
    __break(1u);
    return;
  }

  v14 = v17;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  v22 = (v21[6] + 16 * v14);
  *v22 = v6;
  v22[1] = v5;
  *(v21[7] + v14) = v7;
  v23 = v21[2];
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v25;
  if (v46 != 1)
  {
    v26 = (a1 + 72);
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      v29 = *(v26 - 2);
      v28 = *(v26 - 1);
      v30 = *v26;
      v31 = *a3;
      v32 = sub_25F75DBC8(v29, v28);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        goto LABEL_25;
      }

      v37 = v32;
      v38 = v33;
      v39 = v31[3];

      if (v39 < v36)
      {
        sub_25F75F57C(v36, 1);
        v40 = sub_25F75DBC8(v29, v28);
        if ((v38 & 1) != (v41 & 1))
        {
          goto LABEL_28;
        }

        v37 = v40;
      }

      if (v38)
      {
        goto LABEL_9;
      }

      v42 = *a3;
      *(*a3 + 8 * (v37 >> 6) + 64) |= 1 << v37;
      v43 = (v42[6] + 16 * v37);
      *v43 = v29;
      v43[1] = v28;
      *(v42[7] + v37) = v30;
      v44 = v42[2];
      v24 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v24)
      {
        goto LABEL_26;
      }

      ++v27;
      v42[2] = v45;
      v26 += 24;
      if (v46 == v27)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_25F7F0128(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_25F82247C();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_25F7F01F0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0C70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

const Bytef *sub_25F7F0274(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  result = sub_25F821E4C();
  v11 = result;
  if (result)
  {
    result = sub_25F821E7C();
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

  sub_25F821E6C();
  result = sub_25F7EFCFC(v11, a4, a5, &v12);
  if (!v5)
  {
    return v12;
  }

  return result;
}

uint64_t sub_25F7F0328(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = sub_25F82243C();
  if (__OFSUB__(result, v1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_25F82245C();

  return sub_25F8224DC();
}

uint64_t sub_25F7F050C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_25F7F055C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_25F7F05B0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_25F7F05F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserAdjustment();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F7F0674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserAdjustment();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PCDSUserAdjustmentInfo()
{
  result = qword_27FDB0C78;
  if (!qword_27FDB0C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F7F0730()
{
  result = type metadata accessor for UserAdjustment();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F7F079C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UserAdjustment();
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = xmmword_25F823D10;
  v28[1] = xmmword_25F823D20;
  v28[2] = xmmword_25F823D30;
  v29 = xmmword_25F828750;
  sub_25F7D7498(&v29, v28, v7, 500.0);
  v9 = &v7[v5[9]];
  v10 = 0.282700002;
  if (*v9 > 0.282700002)
  {
    v10 = *v9;
  }

  if (v10 <= 0.342700005)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0.342700005;
  }

  v12 = 0.298999995;
  if (v9[1] > 0.298999995)
  {
    v12 = v9[1];
  }

  if (v12 <= 0.358999997)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.358999997;
  }

  v8 = v5[10];
  if (*&v7[v8] >= 463.0)
  {
    v14 = *&v7[v8];
  }

  else
  {
    v14 = 463.0;
  }

  v15 = v5[7];
  v16 = &v7[v5[8]];
  v18 = *v16;
  v17 = *(v16 + 1);
  v19 = sub_25F82210C();
  (*(*(v19 - 8) + 16))(a2 + v15, &v7[v15], v19);
  v20 = &v7[v5[11]];
  v21 = *v20;
  v22 = *(v20 + 1);
  v23 = *&v7[v5[12]];

  sub_25F82216C();
  sub_25F7F0E44(a1);
  result = sub_25F7F0E44(v7);
  v25 = (a2 + v5[8]);
  *v25 = v18;
  v25[1] = v17;
  v26 = (a2 + v5[9]);
  *v26 = v11;
  v26[1] = v13;
  *(a2 + v5[10]) = v14;
  v27 = (a2 + v5[11]);
  *v27 = v21;
  v27[1] = v22;
  *(a2 + v5[12]) = v23;
  return result;
}

uint64_t sub_25F7F0998()
{
  v1 = sub_25F82253C();
  *(v1 + 16) = 64;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(v1 + 32) = v2;
  *(v1 + 48) = v2;
  *(v1 + 64) = v2;
  *(v1 + 80) = v2;
  *(v1 + 96) = v2;
  *(v1 + 112) = v2;
  *(v1 + 128) = v2;
  *(v1 + 144) = v2;
  *(v1 + 160) = v2;
  *(v1 + 176) = v2;
  *(v1 + 192) = v2;
  *(v1 + 208) = v2;
  *(v1 + 224) = v2;
  *(v1 + 240) = v2;
  *(v1 + 256) = v2;
  *(v1 + 272) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC08);
  *(swift_initStackObject() + 32) = 16908667;
  *(v1 + 32) = 16908667;
  v3 = type metadata accessor for UserAdjustment();
  result = sub_25F8220DC();
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v5 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= 1.84467441e19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = *(v1 + 16);
  if (v6 < 2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = bswap64(v5);
  *(v1 + 36) = v7;
  if (v6 == 2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v1 + 40) = HIDWORD(v7);
  if (v6 < 0xB)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = (v0 + *(v3 + 28));
  *&v9 = *v8;
  *(v1 + 72) = bswap32(v9);
  if (v6 == 11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *&v10 = v8[1];
  *(v1 + 76) = bswap32(v10);
  if (v6 < 0xE)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v1 + 84) = 924491838;
  if (v6 == 14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(v1 + 88) = -1334663106;
  *&v11 = *(v0 + *(v3 + 32));
  *(v1 + 80) = bswap32(v11);
  if (v6 < 0x10)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v1 + 92) = 64067;
  if (!(v6 >> 61))
  {
    v12 = sub_25F7AEC3C(v1 + 32, v1 + 32 + 4 * v6);
    swift_setDeallocating();

    return v12;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_25F7F0BA8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(a2);
LABEL_17:
      sub_25F7F0EA0();
      swift_allocError();
      *v24 = 256;
      v24[1] = v6;
      swift_willThrow();
      return sub_25F76D178(v4, a2);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 256)
      {
        goto LABEL_10;
      }

LABEL_7:
      v28 = 0uLL;
      v27 = 0uLL;
      v29 = 0;
      v26 = 0;
      v12 = sub_25F82210C();
      v13 = *(v12 - 8);
      MEMORY[0x28223BE20](v12);
      v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25F8220FC();
      sub_25F7F0EF4(v4, a2, &v28, &v27, &v29, &v26, v15);
      v16 = type metadata accessor for UserAdjustment();
      (*(v13 + 16))(a3 + v16[5], v15, v12);
      v17 = v28;
      v18 = v29;
      v19 = v27;
      v20 = v26;
      sub_25F82216C();
      sub_25F76D178(v4, a2);
      v21 = (a3 + v16[6]);
      *v21 = 0;
      v21[1] = 0xE000000000000000;
      *(a3 + v16[7]) = v17;
      *(a3 + v16[8]) = v18;
      *(a3 + v16[9]) = v19;
      *(a3 + v16[10]) = v20;
      return (*(v13 + 8))(v15, v12);
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v5 != 2)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_17;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v10 == 256)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (v5 == 2)
  {
    v23 = *(result + 16);
    v22 = *(result + 24);
    v6 = v22 - v23;
    if (!__OFSUB__(v22, v23))
    {
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v6 = HIDWORD(result) - result;
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25F7F0E44(uint64_t a1)
{
  v2 = type metadata accessor for UserAdjustment();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F7F0EA0()
{
  result = qword_27FDB0C88;
  if (!qword_27FDB0C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0C88);
  }

  return result;
}

uint64_t sub_25F7F0EF4(uint64_t a1, unint64_t a2, float64x2_t *a3, float64x2_t *a4, double *a5, double *a6, uint64_t a7)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      v31 = sub_25F82210C();
      v32 = *(v31 - 8);
      MEMORY[0x28223BE20](v31);
      v34 = v35 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25F8220CC();
      return (*(v32 + 40))(a7, v34, v31);
    }

    v18 = *(a1 + 16);
    v19 = sub_25F821E4C();
    if (v19)
    {
      v20 = v19;
      v21 = sub_25F821E7C();
      if (__OFSUB__(v18, v21))
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v22 = v18 - v21 + v20;
      sub_25F821E6C();
      if (v22)
      {
LABEL_13:
        *a3 = vcvtq_f64_f32(vrev32_s8(*(v22 + 40)));
        *a4 = vcvtq_f64_f32(vrev32_s8(*(v22 + 52)));
        *a5 = COERCE_FLOAT(bswap32(*(v22 + 48)));
        *a6 = COERCE_FLOAT(bswap32(*(v22 + 60)));
        v27 = sub_25F82210C();
        v28 = *(v27 - 8);
        MEMORY[0x28223BE20](v27);
        v30 = v35 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25F8220CC();
        return (*(v28 + 40))(a7, v30, v27);
      }
    }

    else
    {
      sub_25F821E6C();
    }

    __break(1u);
    goto LABEL_20;
  }

  if (!v12)
  {
    v13 = sub_25F82210C();
    v14 = *(v13 - 8);
    MEMORY[0x28223BE20](v13);
    v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25F8220CC();
    return (*(v14 + 40))(a7, v16, v13);
  }

  v23 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = sub_25F821E4C();
  if (v24)
  {
    v25 = v24;
    v26 = sub_25F821E7C();
    if (!__OFSUB__(v23, v26))
    {
      v22 = v23 - v26 + v25;
      result = sub_25F821E6C();
      if (v22)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }

LABEL_17:
    __break(1u);
  }

LABEL_20:
  result = sub_25F821E6C();
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for Chromaticity(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Chromaticity(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_25F7F1310()
{
  result = qword_27FDB0C90;
  if (!qword_27FDB0C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0C90);
  }

  return result;
}

unint64_t sub_25F7F1364(uint64_t a1)
{
  *(a1 + 8) = sub_25F7F1394();
  result = sub_25F7F13E8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F7F1394()
{
  result = qword_27FDB0C98;
  if (!qword_27FDB0C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0C98);
  }

  return result;
}

unint64_t sub_25F7F13E8()
{
  result = qword_27FDB0CA0;
  if (!qword_27FDB0CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0CA0);
  }

  return result;
}

uint64_t sub_25F7F143C(void *a1)
{
  v2 = sub_25F82297C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F822E1C();
  sub_25F82296C();
  v6 = sub_25F82298C();
  swift_allocError();
  v8 = v7;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0A98) + 48);
  *v8 = &type metadata for VersionNever;
  (*(v3 + 16))(&v8[v9], v5, v2);
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
  swift_willThrow();
  (*(v3 + 8))(v5, v2);
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25F7F1608()
{
  result = sub_25F792A88(&unk_2871C3AE8);
  qword_27FDC1260 = result;
  return result;
}

uint64_t sub_25F7F1630()
{
  result = sub_25F792BB0(&unk_2871C3C18);
  qword_27FDC1268 = result;
  return result;
}

double sub_25F7F1658()
{
  v0 = sub_25F792BD8(&unk_2871C46F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0098);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F823D00;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 1;
  *(inited + 56) = xmmword_25F824920;
  *(inited + 72) = 1;
  *(inited + 80) = xmmword_25F824930;
  *(inited + 96) = 1;
  *(inited + 104) = 0;
  *(inited + 112) = 0;
  *(inited + 120) = 0;
  v2 = sub_25F792FCC(inited);
  swift_setDeallocating();
  v3 = sub_25F7932C0(&unk_2871C47F0);
  xmmword_27FDC1270 = xmmword_25F824940;
  qword_27FDC1280 = v0;
  unk_27FDC1288 = v2;
  xmmword_27FDC1290 = xmmword_25F824950;
  xmmword_27FDC12A0 = xmmword_25F824960;
  *&xmmword_27FDC12B0 = v3;
  *(&xmmword_27FDC12B0 + 8) = xmmword_25F824970;
  *&qword_27FDC12C8 = xmmword_25F824980;
  qword_27FDC12D8 = 0;
  LOBYTE(xmmword_27FDC12E0) = 0;
  *&result = 48;
  *(&xmmword_27FDC12E0 + 8) = xmmword_25F824990;
  qword_27FDC12F8 = 0;
  unk_27FDC1300 = 0;
  byte_27FDC1308 = 1;
  *&xmmword_27FDC1310 = 500;
  WORD4(xmmword_27FDC1310) = 0;
  qword_27FDC1320 = 0;
  return result;
}

int64x2_t sub_25F7F1784()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v38 - v1;
  v40 = &v38 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Preset(0);
  v42 = v7;
  __swift_allocate_value_buffer(v7, qword_27FDC1328);
  v41 = __swift_project_value_buffer(v7, qword_27FDC1328);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v39 = *(*(v8 - 8) + 56);
  v39(v2, 1, 1, v8);
  sub_25F82216C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  sub_25F8220FC();
  v12 = sub_25F82210C();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  v14 = v4[10];
  v13(&v6[v14], 1, 1, v12);
  v15 = v4[11];
  v39(&v6[v15], 1, 1, v8);
  v16 = &v6[v4[7]];
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  v17 = &v6[v4[8]];
  *v17 = 0;
  *(v17 + 1) = 0xE000000000000000;
  v6[v4[9]] = 1;
  sub_25F760E58(v11, &v6[v14], &qword_27FDAFC20);
  sub_25F760E58(v40, &v6[v15], &qword_27FDAFC10);
  v46 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25F8249B0;
  LOBYTE(v59[0]) = 1;
  LOBYTE(v58[0]) = 1;
  LOBYTE(v57[0]) = 1;
  LOBYTE(v56[0]) = 0;
  *(v18 + 32) = 0;
  *(v18 + 33) = *v51;
  *(v18 + 36) = *&v51[3];
  *(v18 + 40) = 0;
  *(v18 + 48) = 1;
  v19 = *v50;
  *(v18 + 52) = *&v50[3];
  *(v18 + 49) = v19;
  *(v18 + 56) = 0;
  *(v18 + 64) = 1;
  v20 = *v49;
  *(v18 + 68) = *&v49[3];
  *(v18 + 65) = v20;
  *(v18 + 72) = 0;
  *(v18 + 80) = 1;
  v21 = *v48;
  *(v18 + 84) = *&v48[3];
  *(v18 + 81) = v21;
  *(v18 + 88) = 0x400199999999999ALL;
  *(v18 + 96) = 0;
  v22 = *v47;
  *(v18 + 100) = *&v47[3];
  *(v18 + 97) = v22;
  *(v18 + 104) = 0;
  v23 = sub_25F792BC4(&unk_2871C4818);
  v45 = 1;
  LOBYTE(v15) = v46;
  v44 = 1;
  v43 = 1;
  LOBYTE(v59[0]) = 1;
  LOBYTE(v58[0]) = 1;
  LOBYTE(v57[0]) = 1;
  LOBYTE(v56[0]) = 1;
  LOBYTE(v55[0]) = 1;
  v24 = v6;
  v25 = v41;
  sub_25F7750B8(v24, v41);
  v26 = v42;
  v27 = v25 + *(v42 + 20);
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *v27 = 0u;
  *(v27 + 48) = 1;
  *(v27 + 49) = v56[0];
  *(v27 + 52) = *(v56 + 3);
  *(v27 + 56) = 0u;
  *(v27 + 72) = 0u;
  *(v27 + 88) = 0u;
  *(v27 + 104) = 0;
  *(v27 + 105) = v15;
  *(v27 + 106) = *&v55[5];
  *(v27 + 110) = v55[7];
  *(v27 + 112) = xmmword_25F824920;
  *(v27 + 128) = 1;
  *(v27 + 132) = *(&v55[1] + 1);
  *(v27 + 129) = *v55;
  *(v27 + 136) = 0;
  *(v27 + 144) = 0;
  *(v27 + 152) = 256;
  *(v27 + 154) = *&v53[7];
  *(v27 + 158) = v54;
  result = vdupq_n_s64(0x4059000000000000uLL);
  *(v27 + 160) = result;
  *(v27 + 176) = 0;
  *(v27 + 184) = v18;
  *(v27 + 192) = 0;
  *(v27 + 193) = *v53;
  *(v27 + 196) = *&v53[3];
  *(v27 + 200) = 0x400199999999999ALL;
  *(v27 + 208) = 0;
  *(v27 + 210) = *&v51[7];
  *(v27 + 214) = v52;
  __asm { FMOV            V1.2D, #1.0 }

  *(v27 + 216) = _Q1;
  *(v27 + 232) = v23;
  *(v27 + 240) = 16843008;
  v34 = v25 + *(v26 + 24);
  *v34 = 16843009;
  *(v34 + 8) = 0;
  *(v34 + 16) = 257;
  *(v34 + 22) = v62;
  *(v34 + 18) = v61;
  *(v34 + 24) = 0;
  *(v34 + 32) = 1;
  *(v34 + 33) = 0;
  *(v34 + 38) = v60;
  *(v34 + 34) = v59[3];
  *(v34 + 40) = 0;
  *(v34 + 48) = 0;
  *(v34 + 56) = 1;
  v35 = v59[0];
  *(v34 + 60) = *(v59 + 3);
  *(v34 + 57) = v35;
  *(v34 + 64) = 0;
  *(v34 + 72) = 1;
  v36 = v58[0];
  *(v34 + 76) = *(v58 + 3);
  *(v34 + 73) = v36;
  *(v34 + 80) = 0;
  *(v34 + 88) = 1;
  v37 = v57[0];
  *(v34 + 92) = *(v57 + 3);
  *(v34 + 89) = v37;
  *(v34 + 96) = result;
  *(v34 + 112) = 0x4059000000000000;
  *(v34 + 120) = 16843008;
  return result;
}

uint64_t sub_25F7F1D20@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FDAFA90 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = xmmword_27FDC12E0;
  v13[8] = unk_27FDC12F0;
  v13[9] = unk_27FDC1300;
  v2 = unk_27FDC1300;
  v13[10] = xmmword_27FDC1310;
  v3 = xmmword_27FDC12B0;
  v4 = xmmword_27FDC12A0;
  v13[4] = xmmword_27FDC12B0;
  v13[5] = *&dbl_27FDC12C0;
  v5 = *&dbl_27FDC12C0;
  v6 = *(&xmmword_27FDC12C8 + 8);
  v13[6] = *(&xmmword_27FDC12C8 + 8);
  v13[7] = xmmword_27FDC12E0;
  v13[0] = xmmword_27FDC1270;
  v13[1] = *&qword_27FDC1280;
  v8 = xmmword_27FDC1270;
  v7 = *&qword_27FDC1280;
  v9 = xmmword_27FDC1290;
  v13[2] = xmmword_27FDC1290;
  v13[3] = xmmword_27FDC12A0;
  *(a1 + 128) = unk_27FDC12F0;
  *(a1 + 144) = v2;
  *(a1 + 160) = xmmword_27FDC1310;
  *(a1 + 64) = v3;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  *(a1 + 112) = v1;
  *a1 = v8;
  *(a1 + 16) = v7;
  v14 = qword_27FDC1320;
  *(a1 + 176) = qword_27FDC1320;
  *(a1 + 32) = v9;
  *(a1 + 48) = v4;
  return sub_25F775180(v13, v12);
}

uint64_t sub_25F7F1E0C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FDAFA98 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Preset(0);
  v3 = __swift_project_value_buffer(v2, qword_27FDC1328);

  return sub_25F77511C(v3, a1);
}

double Double.clamped(to:)(double result, double a2, double a3)
{
  if (a3 > result)
  {
    result = a3;
  }

  if (result > a2)
  {
    return a2;
  }

  return result;
}

Swift::Double __swiftcall Double.rounded(to:)(Swift::Int to)
{
  v2 = v1;
  v3 = __exp10(to);
  return round(v3 * v2) / v3;
}

uint64_t sub_25F7F1F14()
{
  sub_25F7F1F40(*v0);

  return MEMORY[0x2821FC3F0]();
}

void sub_25F7F1F40(unsigned int a1)
{
  v1 = a1;
  v2 = (a1 >> 10) & 0x1F;
  if (v2)
  {
    if (v2 == 31)
    {
      return;
    }
  }

  else if ((a1 & 0x3FF) == 0)
  {
    return;
  }

  sub_25F772C9C(a1 & 0x3FF | 0x400, 1, 10, v5);
  if (v7)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v5[0];
  v4 = v3 / sub_25F773B70(0, v6, 1.0);

  sub_25F773B70(v1 < 0, v2 - 15, v4);
}

unint64_t sub_25F7F2044(double a1)
{
  v1 = HIWORD(*&a1) & 0x8000;
  v2 = (*&a1 >> 52) & 0x7FFLL;
  v3 = *&a1 & 0xFFFFFFFFFFFFFLL;
  if (v2 == 2047)
  {
    if (v3)
    {
      return v1 | 0x7E00;
    }

    else
    {
      return v1 | 0x7C00;
    }
  }

  if (!(v2 | v3))
  {
    return v1;
  }

  v4 = sub_25F82260C();
  if (v4 >= 16)
  {
    return v1 | 0x7C00;
  }

  if (v4 < -14)
  {
    return v1;
  }

  v5 = v4;
  sub_25F8225DC();
  result = sub_25F773208(1uLL, 10, v8, v6);
  if ((v9 & 1) == 0)
  {
    return ((v8[0] & 0x3FF | (v5 << 10)) + 15360) | v1;
  }

  __break(1u);
  return result;
}

unint64_t sub_25F7F213C()
{
  result = qword_27FDB0CA8;
  if (!qword_27FDB0CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0CA8);
  }

  return result;
}

ValueMetadata *sub_25F7F21B8(int a1, unsigned int a2)
{
  v4 = sub_25F8221EC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v100 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v95 = &v95 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v96 = &v95 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v97 = &v95 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v98 = &v95 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v101 = &v95 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v102 = &v95 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v103 = &v95 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v95 - v22;
  v109 = 0;
  v110 = 0xE000000000000000;
  sub_25F82292C();

  v109 = 0xD000000000000015;
  v110 = 0x800000025F830840;
  v107 = a1;
  LODWORD(v108) = a1;
  v24 = sub_25F751CA4();
  v25 = sub_25F8224AC();
  MEMORY[0x25F8E7510](v25);

  MEMORY[0x25F8E7510](58, 0xE100000000000000);
  v104 = a2;
  LODWORD(v108) = a2;
  v99 = v24;
  v26 = sub_25F8224AC();
  MEMORY[0x25F8E7510](v26);

  v28 = v109;
  v27 = v110;
  v105 = "";
  v106 = &property descriptor for CustomPresetInfo.sdrLuminance;
  sub_25F8221DC();

  v29 = sub_25F8221CC();
  v30 = sub_25F82266C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = v4;
    v33 = swift_slowAlloc();
    v109 = v33;
    *v31 = 136380675;
    *(v31 + 4) = sub_25F75CA94(v28, v27, &v109);
    _os_log_impl(&dword_25F74E000, v29, v30, "%{private}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    v34 = v33;
    v4 = v32;
    MEMORY[0x25F8E88D0](v34, -1, -1);
    MEMORY[0x25F8E88D0](v31, -1, -1);

    v35 = *(v5 + 8);
    v35(v23, v32);
  }

  else
  {

    v35 = *(v5 + 8);
    v35(v23, v4);
  }

  if (v107 != 1552)
  {
    return 0;
  }

  if (qword_27FDAF940 != -1)
  {
    swift_once();
  }

  v36 = v104;
  if (sub_25F754BFC(v104, qword_27FDC0290))
  {
    v37 = v4;
    v38 = v103;
    sub_25F8221DC();
    v39 = sub_25F8221CC();
    v40 = sub_25F82266C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v109 = v42;
      *v41 = 136380675;
      *(v41 + 4) = sub_25F75CA94(0xD000000000000014, 0x800000025F830950, &v109);
      _os_log_impl(&dword_25F74E000, v39, v40, "%{private}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x25F8E88D0](v42, -1, -1);
      MEMORY[0x25F8E88D0](v41, -1, -1);
    }

    v35(v38, v37);
    return &type metadata for J290;
  }

  if (qword_27FDAFA80 != -1)
  {
    swift_once();
  }

  if (sub_25F754BFC(v36, qword_27FDC1260))
  {
    v43 = v102;
    sub_25F8221DC();
    v44 = sub_25F8221CC();
    v45 = sub_25F82266C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v4;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v109 = v48;
      *v47 = 136380675;
      *(v47 + 4) = sub_25F75CA94(0xD000000000000014, 0x800000025F830930, &v109);
      _os_log_impl(&dword_25F74E000, v44, v45, "%{private}s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x25F8E88D0](v48, -1, -1);
      MEMORY[0x25F8E88D0](v47, -1, -1);

      v49 = v43;
      v50 = v46;
    }

    else
    {

      v49 = v43;
      v50 = v4;
    }

    v35(v49, v50);
    return &type metadata for J327;
  }

  v52 = v4;
  v53 = objc_opt_self();
  if ([v53 isJ31x])
  {
    if (qword_27FDAFB38 != -1)
    {
      swift_once();
    }

    if (sub_25F754BFC(v36, qword_27FDC1790))
    {
      v109 = 0;
      v110 = 0xE000000000000000;
      sub_25F82292C();

      v109 = 0xD00000000000001DLL;
      v110 = 0x800000025F830910;
      v108 = MGGetProductType();
      v54 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v54);

      v56 = v109;
      v55 = v110;
      v57 = v101;
      sub_25F8221DC();

      v58 = sub_25F8221CC();
      v59 = sub_25F82266C();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v109 = v61;
        *v60 = 136380675;
        *(v60 + 4) = sub_25F75CA94(v56, v55, &v109);
        _os_log_impl(&dword_25F74E000, v58, v59, "%{private}s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v61);
        MEMORY[0x25F8E88D0](v61, -1, -1);
        MEMORY[0x25F8E88D0](v60, -1, -1);
      }

      v35(v57, v52);

      return &type metadata for J31x;
    }
  }

  if ([v53 isJ41x])
  {
    if (qword_27FDAFAB8 != -1)
    {
      swift_once();
    }

    if (sub_25F754BFC(v36, qword_27FDC1360))
    {
      v109 = 0;
      v110 = 0xE000000000000000;
      sub_25F82292C();

      v109 = 0xD00000000000001DLL;
      v110 = 0x800000025F8308F0;
      v108 = MGGetProductType();
      v62 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v62);

      v64 = v109;
      v63 = v110;
      v65 = v98;
      sub_25F8221DC();

      v66 = sub_25F8221CC();
      v67 = sub_25F82266C();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v109 = v69;
        *v68 = 136380675;
        *(v68 + 4) = sub_25F75CA94(v64, v63, &v109);
        _os_log_impl(&dword_25F74E000, v66, v67, "%{private}s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v69);
        MEMORY[0x25F8E88D0](v69, -1, -1);
        MEMORY[0x25F8E88D0](v68, -1, -1);
      }

      v35(v65, v52);

      return &type metadata for J41x;
    }
  }

  if ([v53 isJ51x])
  {
    if (qword_27FDAF830 != -1)
    {
      swift_once();
    }

    if (sub_25F754BFC(v36, qword_27FDBF6C0))
    {
      v109 = 0;
      v110 = 0xE000000000000000;
      sub_25F82292C();

      v109 = 0xD00000000000001DLL;
      v110 = 0x800000025F8308D0;
      v108 = MGGetProductType();
      v70 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v70);

      v72 = v109;
      v71 = v110;
      v73 = v97;
      sub_25F8221DC();

      v74 = sub_25F8221CC();
      v75 = sub_25F82266C();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v109 = v77;
        *v76 = 136380675;
        *(v76 + 4) = sub_25F75CA94(v72, v71, &v109);
        _os_log_impl(&dword_25F74E000, v74, v75, "%{private}s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v77);
        MEMORY[0x25F8E88D0](v77, -1, -1);
        MEMORY[0x25F8E88D0](v76, -1, -1);
      }

      v35(v73, v52);

      return &type metadata for J51x;
    }
  }

  if (![v53 isJ61p])
  {
    goto LABEL_47;
  }

  if (qword_27FDAF880 != -1)
  {
    swift_once();
  }

  if (!sub_25F754BFC(v36, qword_27FDBF960))
  {
LABEL_47:
    if ([v53 isJ704])
    {
      if (qword_27FDAF880 != -1)
      {
        swift_once();
      }

      if (sub_25F754BFC(v36, qword_27FDBF960))
      {
        v109 = 0;
        v110 = 0xE000000000000000;
        sub_25F82292C();

        v109 = 0xD00000000000001DLL;
        v110 = 0x800000025F830890;
        v108 = MGGetProductType();
        v82 = sub_25F822C7C();
        MEMORY[0x25F8E7510](v82);

        v80 = v109;
        v79 = v110;
        v81 = v95;
        goto LABEL_49;
      }
    }

    v109 = 0;
    v110 = 0xE000000000000000;
    sub_25F82292C();

    v109 = 0x206C65646F6DLL;
    v110 = 0xE600000000000000;
    LODWORD(v108) = v36;
    v87 = sub_25F8224AC();
    MEMORY[0x25F8E7510](v87);

    MEMORY[0x25F8E7510](0xD000000000000025, 0x800000025F830860);
    v89 = v109;
    v88 = v110;
    v90 = v100;
    sub_25F8221DC();

    v91 = sub_25F8221CC();
    v92 = sub_25F82266C();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v109 = v94;
      *v93 = 136380675;
      *(v93 + 4) = sub_25F75CA94(v89, v88, &v109);
      _os_log_impl(&dword_25F74E000, v91, v92, "%{private}s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v94);
      MEMORY[0x25F8E88D0](v94, -1, -1);
      MEMORY[0x25F8E88D0](v93, -1, -1);
    }

    v35(v90, v52);

    return 0;
  }

  v109 = 0;
  v110 = 0xE000000000000000;
  sub_25F82292C();

  v109 = 0xD00000000000001DLL;
  v110 = 0x800000025F8308B0;
  v108 = MGGetProductType();
  v78 = sub_25F822C7C();
  MEMORY[0x25F8E7510](v78);

  v80 = v109;
  v79 = v110;
  v81 = v96;
LABEL_49:
  sub_25F8221DC();

  v83 = sub_25F8221CC();
  v84 = sub_25F82266C();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v109 = v86;
    *v85 = 136380675;
    *(v85 + 4) = sub_25F75CA94(v80, v79, &v109);
    _os_log_impl(&dword_25F74E000, v83, v84, "%{private}s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v86);
    MEMORY[0x25F8E88D0](v86, -1, -1);
    MEMORY[0x25F8E88D0](v85, -1, -1);
  }

  v35(v81, v52);

  return &type metadata for J604;
}

float64x2_t sub_25F7F32E8@<Q0>(float64x2_t *a1@<X8>, uint64_t a2@<D0>)
{
  v2 = vdupq_lane_s64(a2, 0);
  result = vmulq_f64(vbslq_s8(vcgtq_f64(v2, xmmword_25F828A00), xmmword_25F828A00, v2), xmmword_25F828A10);
  *a1 = result;
  return result;
}

double static ProDisplayHardware.luminanceLimits(withAvailableHeadroom:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  v8 = (*(a2 + 64))();
  if (v8 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = v8;
  }

  v10 = (*(a2 + 80))(a1, a2);
  if (v10 < a4)
  {
    a4 = v10;
  }

  v11 = v9 * (*(a2 + 56))(a1, a2);
  result = a4 * (*(a2 + 72))(a1, a2);
  *a3 = v11;
  a3[1] = result;
  return result;
}

double sub_25F7F33D0@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

double static ProDisplayHardware.globalUserAdjustmentRules()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

float64x2_t sub_25F7F3420@<Q0>(float64x2_t *a1@<X8>, double a2@<D0>)
{
  if (a2 > 1.08)
  {
    a2 = 1.08;
  }

  result = vmulq_n_f64(xmmword_25F828A10, a2);
  *a1 = result;
  return result;
}

double static ProDisplayHardware.perPresetUserAdjustmentRules(for:)@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

float64x2_t sub_25F7F346C@<Q0>(float64x2_t *a1@<X8>, uint64_t a2@<D0>)
{
  v2 = vdupq_lane_s64(a2, 0);
  result = vmulq_f64(vbslq_s8(vcgtq_f64(v2, xmmword_25F828A00), xmmword_25F828A00, v2), xmmword_25F828A20);
  *a1 = result;
  return result;
}

uint64_t ProHardwareType.hashValue.getter()
{
  v1 = *v0;
  sub_25F822DCC();
  MEMORY[0x25F8E7E80](v1);
  return sub_25F822E0C();
}

unint64_t sub_25F7F3684()
{
  result = qword_27FDB0CB0;
  if (!qword_27FDB0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0CB0);
  }

  return result;
}

unint64_t sub_25F7F36DC()
{
  result = qword_27FDB0CB8;
  if (!qword_27FDB0CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0CB8);
  }

  return result;
}

unint64_t sub_25F7F3734()
{
  result = qword_27FDB0CC0;
  if (!qword_27FDB0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0CC0);
  }

  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_25F7F3944(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F7F398C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F7F3A08()
{
  result = sub_25F792A88(&unk_2871C3B28);
  qword_27FDC1340 = result;
  return result;
}

uint64_t sub_25F7F3A30()
{
  result = sub_25F792A88(&unk_2871C3B58);
  qword_27FDC1348 = result;
  return result;
}

uint64_t sub_25F7F3A58()
{
  result = sub_25F792A88(&unk_2871C3B90);
  qword_27FDC1350 = result;
  return result;
}

uint64_t sub_25F7F3A94(uint64_t a1, unint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v45 = MEMORY[0x277D84F90];
    sub_25F817BC8(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_25F821E4C();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_25F821E7C();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = sub_25F821E4C();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_25F821E7C();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0058);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_25F8249B0;
      *(v20 + 56) = MEMORY[0x277D84B78];
      *(v20 + 64) = MEMORY[0x277D84BC0];
      *(v20 + 32) = v19;
      v21 = sub_25F8223AC();
      v45 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_25F817BC8((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

void sub_25F7F3E04(__IOHIDElement *a1@<X0>, uint64_t a2@<X8>)
{
  ReportID = IOHIDElementGetReportID(a1);
  if (ReportID > 0xFF)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = ReportID;
  Type = IOHIDElementGetType(a1);
  if (Type == kIOHIDElementTypeCollection)
  {

    *(a2 + 112) = 0;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return;
  }

  v7 = Type == kIOHIDElementTypeInput_NULL;
  if (Type == kIOHIDElementTypeFeature)
  {
    v8 = 2;
  }

  else
  {
    v8 = Type == kIOHIDElementTypeOutput;
  }

  UsagePage = IOHIDElementGetUsagePage(a1);
  Usage = IOHIDElementGetUsage(a1);
  v11 = HIWORD(Usage) != 0;
  if (HIWORD(Usage))
  {
    v12 = 0;
  }

  else
  {
    v12 = Usage;
  }

  if (HIWORD(UsagePage))
  {
    goto LABEL_22;
  }

  v90 = 0;
  LODWORD(v13) = IOHIDElementGetReportSize(a1);
  if (IOHIDElementIsArray(a1))
  {
    v13 = v13 * IOHIDElementGetReportCount(a1);
    if ((v13 & 0xFFFFFFFF00000000) != 0)
    {
      goto LABEL_24;
    }
  }

  IOHIDElementGetUnit(a1);
  if (IOHIDElementGetUnitExponent(a1) > 0x7F)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  v33 = UsagePage;
  v34 = v8;
  v35 = v11;
  v36 = v7;
  v89 = 1;
  v88 = 1;
  LogicalMin = IOHIDElementGetLogicalMin(a1);
  v85 = 0;
  LogicalMax = IOHIDElementGetLogicalMax(a1);
  v83 = 0;
  v16 = (LogicalMin | LogicalMax) == 0;
  if (LogicalMin | LogicalMax)
  {
    v17 = LogicalMax;
  }

  else
  {
    v17 = 0;
    LogicalMin = 0;
    v85 = 1;
    v83 = 1;
  }

  PhysicalMin = IOHIDElementGetPhysicalMin(a1);
  v81 = 0;
  PhysicalMax = IOHIDElementGetPhysicalMax(a1);
  v79 = 0;
  if (!(PhysicalMin | PhysicalMax))
  {
    v81 = v16;
    v79 = v16;
    PhysicalMin = LogicalMin;
    PhysicalMax = v17;
  }

  v76 = 1;
  LOBYTE(v38) = v34;
  WORD1(v38) = v33;
  WORD2(v38) = v12;
  BYTE6(v38) = v90;
  v20 = v90;
  BYTE7(v38) = v5;
  *(&v38 + 1) = v13;
  LOWORD(v39) = v89;
  v21 = v89;
  BYTE2(v39) = v88;
  v22 = v88;
  *(&v39 + 1) = LogicalMin;
  LOBYTE(v40) = v85;
  v23 = v85;
  *(&v40 + 1) = v17;
  LOBYTE(v41) = v83;
  v24 = v83;
  *(&v41 + 1) = PhysicalMin;
  LOBYTE(v42) = v81;
  v25 = v81;
  *(&v42 + 1) = PhysicalMax;
  LOBYTE(v43) = v79;
  v26 = v79;
  *(&v43 + 1) = a1;
  LOBYTE(v44) = v36;
  BYTE1(v44) = v35;
  *(&v44 + 1) = 0;
  v45 = 1;
  v27 = v38;
  v28 = v39;
  v29 = v41;
  v30 = v42;
  *(a2 + 32) = v40;
  *(a2 + 48) = v29;
  *a2 = v27;
  *(a2 + 16) = v28;
  v31 = v43;
  v32 = v44;
  *(a2 + 112) = 1;
  *(a2 + 80) = v31;
  *(a2 + 96) = v32;
  *(a2 + 64) = v30;
  v46[0] = v34;
  v47 = v33;
  v48 = v12;
  v49 = v20;
  v50 = v5;
  v51 = v13;
  v52 = 0;
  v53 = v21;
  v54 = 0;
  v55 = v22;
  v57 = v87;
  v56 = v86;
  v58 = LogicalMin;
  v59 = v23;
  *&v60[3] = *&v84[3];
  *v60 = *v84;
  v61 = v17;
  v62 = v24;
  *&v63[3] = *&v82[3];
  *v63 = *v82;
  v64 = PhysicalMin;
  v65 = v25;
  *&v66[3] = *&v80[3];
  *v66 = *v80;
  v67 = PhysicalMax;
  v68 = v26;
  v69 = a1;
  v70 = v36;
  v71 = v35;
  v73 = v78;
  v72 = v77;
  v74 = 0;
  v75 = 1;
  sub_25F7BFBF0(&v38, v37);
  sub_25F7BFC70(v46);
}

void HIDElement.usage.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 6);
  *a1 = *(v1 + 2);
  *(a1 + 4) = v2;
}

uint64_t HIDElement.usage.setter(uint64_t result)
{
  v2 = *(result + 4);
  *(v1 + 2) = *result;
  *(v1 + 6) = v2;
  return result;
}

uint64_t sub_25F7F41E8()
{
  sub_25F82292C();
  MEMORY[0x25F8E7510](0xD000000000000022, 0x800000025F830970);
  sub_25F8229FC();
  MEMORY[0x25F8E7510](0x7473656D6974202CLL, 0xED0000203A706D61);
  v1 = type metadata accessor for HIDElement.Value();
  sub_25F8229EC();
  sub_25F8229FC();
  MEMORY[0x25F8E7510](0x3A7365747962202CLL, 0xE90000000000005BLL);
  sub_25F7F3A94(*(v0 + *(v1 + 24)), *(v0 + *(v1 + 24) + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE8);
  sub_25F7A4594();
  v2 = sub_25F8222EC();
  v4 = v3;

  MEMORY[0x25F8E7510](v2, v4);

  MEMORY[0x25F8E7510](10589, 0xE200000000000000);
  return 0;
}

uint64_t HIDUsage.usage.setter(uint64_t result)
{
  *(v1 + 2) = result;
  *(v1 + 4) = BYTE2(result) & 1;
  return result;
}

unint64_t sub_25F7F4434()
{
  result = qword_27FDB0CC8;
  if (!qword_27FDB0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0CC8);
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_25F7F44B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F7F44FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_2(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HIDUsage(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

unint64_t sub_25F7F4600()
{
  result = qword_27FDB0CD0;
  if (!qword_27FDB0CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0CD0);
  }

  return result;
}

uint64_t type metadata accessor for HIDElement.Value()
{
  result = qword_27FDB0CD8;
  if (!qword_27FDB0CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F7F46B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 88);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25F8229EC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F7F4774(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 88) = (a2 - 1);
  }

  else
  {
    v7 = sub_25F8229EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25F7F4818()
{
  result = sub_25F8229EC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F7F489C(uint64_t a1, unint64_t a2)
{
  v4 = sub_25F82207C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F76E658(a1, a2);
  sub_25F82208C();
  v8 = sub_25F82206C();
  for (i = 255; (v8 & 0x100) == 0; v8 = sub_25F82206C())
  {
    i = byte_2871C4D70[(v8 ^ i) + 32];
  }

  (*(v5 + 8))(v7, v4);
  return i;
}

uint64_t DisplayID.ContainerIDDataBlock.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DisplayID.ContainerIDDataBlock.uuid(_:)()
{
  sub_25F82215C();
  swift_beginAccess();
  sub_25F821FAC();
  return swift_endAccess();
}

uint64_t DisplayID.ContainerIDDataBlock.data.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_25F76E658(v1, *(v0 + 24));
  return v1;
}

uint64_t DisplayID.ContainerIDDataBlock.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t DisplayID.ContainerIDDataBlock.__allocating_init(uuid:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DisplayID.ContainerIDDataBlock.init(uuid:)(a1);
  return v2;
}

uint64_t DisplayID.ContainerIDDataBlock.init(uuid:)(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_25F821E8C();
  swift_allocObject();
  v7 = 0x1300000000;
  v8 = sub_25F821E5C();
  sub_25F7BDB2C(&v7, 0);
  v9 = v7;
  v10 = v8 | 0x4000000000000000;
  sub_25F821FEC();
  sub_25F821FEC();
  v3 = v9;
  v4 = v10;
  *(v1 + 16) = v9;
  *(v1 + 24) = v4;
  sub_25F76E658(v3, v4);
  sub_25F82215C();
  swift_beginAccess();
  sub_25F821FAC();
  swift_endAccess();
  v5 = sub_25F82217C();
  (*(*(v5 - 8) + 8))(a1, v5);
  sub_25F76D178(v9, v10);
  return v1;
}

double DisplayID.ContainerIDDataBlock.hierarchicalDescription.getter@<D0>(void *a1@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = sub_25F771924();
  sub_25F802E24(v3, v4, MEMORY[0x277D84F90], a1);
  v33 = 0x203A44495555;
  *&v34 = 0xE600000000000000;
  v5 = sub_25F82217C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v1 + 16);
  v9 = *(v1 + 24);
  sub_25F76E658(v10, v9);
  v11 = sub_25F82205C();
  v13 = v12;
  sub_25F76D178(v10, v9);
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2)
    {
LABEL_20:
      sub_25F82214C();
      goto LABEL_21;
    }

    v15 = *(v11 + 16);
    v16 = *(v11 + 24);
    if (sub_25F821E4C() && __OFSUB__(v15, sub_25F821E7C()))
    {
      goto LABEL_28;
    }

    if (!__OFSUB__(v16, v15))
    {
      sub_25F821E6C();
      sub_25F7F53A8();
      goto LABEL_21;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!v14)
  {
    goto LABEL_20;
  }

  if (v11 >> 32 < v11)
  {
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_25F821E4C();
  if (v17)
  {
    v18 = sub_25F821E7C();
    if (!__OFSUB__(v11, v18))
    {
      v17 += v11 - v18;
      goto LABEL_13;
    }

LABEL_29:
    __break(1u);
  }

LABEL_13:
  v19 = sub_25F821E6C();
  if (v19 >= (v11 >> 32) - v11)
  {
    v20 = (v11 >> 32) - v11;
  }

  else
  {
    v20 = v19;
  }

  v21 = v20 + v17;
  if (v17)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  sub_25F7E2D5C(sub_25F7F54A0, 0, v17, v22);
LABEL_21:
  sub_25F76D178(v11, v13);
  v23 = sub_25F82212C();
  v25 = v24;
  (*(v6 + 8))(v8, v5);
  MEMORY[0x25F8E7510](v23, v25);

  sub_25F802E24(v33, v34, MEMORY[0x277D84F90], &v33);
  v26 = v33;
  v32 = v34;
  v27 = a1[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_25F75C38C(0, *(v27 + 2) + 1, 1, v27);
  }

  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  if (v29 >= v28 >> 1)
  {
    v27 = sub_25F75C38C((v28 > 1), v29 + 1, 1, v27);
  }

  *(v27 + 2) = v29 + 1;
  v30 = &v27[24 * v29];
  *(v30 + 4) = v26;
  result = *&v32;
  *(v30 + 40) = v32;
  a1[2] = v27;
  return result;
}

uint64_t DisplayID.ContainerIDDataBlock.uuid()()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_25F76E658(v2, v1);
  v3 = sub_25F82205C();
  v5 = v4;
  sub_25F76D178(v2, v1);
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 != 2)
    {
LABEL_20:
      sub_25F82214C();
      return sub_25F76D178(v3, v5);
    }

    v7 = *(v3 + 16);
    v8 = *(v3 + 24);
    if (sub_25F821E4C() && __OFSUB__(v7, sub_25F821E7C()))
    {
      goto LABEL_24;
    }

    if (!__OFSUB__(v8, v7))
    {
      sub_25F821E6C();
      sub_25F7F53A8();
      return sub_25F76D178(v3, v5);
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v6)
  {
    goto LABEL_20;
  }

  if (v3 >> 32 < v3)
  {
    __break(1u);
    goto LABEL_23;
  }

  v9 = sub_25F821E4C();
  if (v9)
  {
    v10 = sub_25F821E7C();
    if (!__OFSUB__(v3, v10))
    {
      v9 += v3 - v10;
      goto LABEL_13;
    }

LABEL_25:
    __break(1u);
  }

LABEL_13:
  v11 = sub_25F821E6C();
  if (v11 >= (v3 >> 32) - v3)
  {
    v12 = (v3 >> 32) - v3;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v9;
  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_25F7E2D5C(sub_25F7F54A0, 0, v9, v14);
  return sub_25F76D178(v3, v5);
}

uint64_t DisplayID.ContainerIDDataBlock.__deallocating_deinit()
{
  sub_25F76D178(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_25F7F5334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = result;
  return result;
}

unint64_t sub_25F7F54F8(uint64_t a1)
{
  result = sub_25F7F5520();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F7F5520()
{
  result = qword_27FDB0CE8;
  if (!qword_27FDB0CE8)
  {
    type metadata accessor for DisplayID.ContainerIDDataBlock();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0CE8);
  }

  return result;
}

uint64_t EOTFStandard.PCDSValue.getter()
{
  v1 = *v0;
  if (v1 >= 7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (0x1FFFFFFFF0200uLL >> (8 * v1));
  }
}

uint64_t EOTFStandard.hashValue.getter()
{
  v1 = *v0;
  sub_25F822DCC();
  MEMORY[0x25F8E7E80](v1);
  return sub_25F822E0C();
}

uint64_t EOTFStandard.description.getter()
{
  v1 = *v0;
  v2 = 0x65776F5065727550;
  v3 = 5391432;
  if (v1 != 5)
  {
    v3 = 1111970419;
  }

  v4 = 5328961;
  if (v1 != 3)
  {
    v4 = 4672584;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x363838312E5442;
  if (v1 != 1)
  {
    v5 = 20816;
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

unint64_t sub_25F7F577C()
{
  result = qword_27FDB0CF0;
  if (!qword_27FDB0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0CF0);
  }

  return result;
}

unint64_t sub_25F7F57D0(void *a1)
{
  a1[1] = sub_25F7F5810();
  a1[2] = sub_25F7F5864();
  a1[3] = sub_25F7D2684();
  result = sub_25F7D2330();
  a1[4] = result;
  return result;
}

unint64_t sub_25F7F5810()
{
  result = qword_27FDB0CF8;
  if (!qword_27FDB0CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0CF8);
  }

  return result;
}

unint64_t sub_25F7F5864()
{
  result = qword_27FDB0D00;
  if (!qword_27FDB0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0D00);
  }

  return result;
}

unint64_t sub_25F7F58BC()
{
  result = qword_27FDB0D08;
  if (!qword_27FDB0D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB0D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0D08);
  }

  return result;
}

uint64_t sub_25F7F5930()
{
  v1 = *v0;
  v2 = 0x65776F5065727550;
  v3 = 5391432;
  if (v1 != 5)
  {
    v3 = 1111970419;
  }

  v4 = 5328961;
  if (v1 != 3)
  {
    v4 = 4672584;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x363838312E5442;
  if (v1 != 1)
  {
    v5 = 20816;
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

uint64_t UnsignedFixedPoint.init(bitPattern:_:_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v72 = a1;
  v70 = a6;
  v68 = *(a5 + 8);
  v63 = *(*(v68 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v62 = v57 - v11;
  v71 = *(a4 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v60 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v57 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v57 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v67 = v57 - v21;
  MEMORY[0x28223BE20](v20);
  v61 = v57 - v22;
  v23 = type metadata accessor for UnsignedFixedPoint();
  v24 = *(v23 - 8);
  result = MEMORY[0x28223BE20](v23);
  v27 = v57 - v26;
  v65 = a2;
  v66 = a3;
  v28 = __CFADD__(a2, a3);
  v29 = a2 + a3;
  if (!v28)
  {
    v64 = v27;
    v69 = result;
    v30 = sub_25F822A0C();
    if ((v30 & 0x8000000000000000) != 0 || v30 < v29 || !v29)
    {
      (*(v71 + 8))(v72, a4);
LABEL_9:
      v38 = 1;
      v36 = v69;
      v37 = v70;
      return (*(v24 + 56))(v37, v38, 1, v36);
    }

    v31 = sub_25F822A0C();
    if ((v31 & 0x8000000000000000) == 0 && v29 == v31)
    {
      goto LABEL_7;
    }

    v59 = v24;
    v73 = 1;
    v57[1] = sub_25F7F61F4();
    sub_25F82284C();
    v73 = v29;
    sub_25F7F6248();
    sub_25F8227FC();
    v39 = *(v71 + 8);
    v39(v16, a4);
    v57[0] = swift_getAssociatedConformanceWitness();
    sub_25F822D0C();
    sub_25F822CAC();
    v40 = v67;
    sub_25F822A4C();
    v39(v16, a4);
    v39(v19, a4);
    v41 = v61;
    sub_25F8227EC();
    v58 = v39;
    v39(v40, a4);
    v42 = v60;
    sub_25F8227CC();
    if (sub_25F82282C())
    {
      if (sub_25F82281C() < 64)
      {
        v43 = sub_25F82280C();
        v44 = v58;
        v58(v42, a4);
        v44(v41, a4);
        v24 = v59;
        if (!v43)
        {
          goto LABEL_7;
        }

        goto LABEL_28;
      }

      v73 = 0;
      v53 = v67;
      sub_25F8227BC();
      v54 = sub_25F82231C();
      v44 = v58;
      v58(v53, a4);
      v44(v42, a4);
      v44(v41, a4);
      v24 = v59;
      if ((v54 & 1) == 0)
      {
LABEL_28:
        v44(v72, a4);
        goto LABEL_9;
      }

LABEL_7:
      v32 = v64;
      (*(v71 + 32))(v64, v72, a4);
      v34 = v69;
      v33 = v70;
      v35 = v66;
      *&v32[*(v69 + 44)] = v65;
      *&v32[*(v34 + 48)] = v35;
      (*(v24 + 32))(v33, v32, v34);
      v36 = v34;
      v37 = v33;
      v38 = 0;
      return (*(v24 + 56))(v37, v38, 1, v36);
    }

    v45 = v41;
    v46 = sub_25F82282C();
    v47 = sub_25F82281C();
    if (v46)
    {
      v24 = v59;
      if (v47 <= 64)
      {
        sub_25F822D0C();
        v48 = v67;
        sub_25F822CAC();
        v49 = sub_25F82230C();
        v44 = v58;
        v58(v48, a4);
        if ((v49 & 1) == 0)
        {
          v44(v42, a4);
          v44(v45, a4);
          goto LABEL_28;
        }

        v50 = sub_25F82280C();
        v51 = v42;
        v52 = a4;
LABEL_23:
        v44(v51, v52);
        v44(v45, a4);
        if (!v50)
        {
          goto LABEL_7;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v24 = v59;
      if (v47 < 64)
      {
        v50 = sub_25F82280C();
        v51 = v42;
        v52 = a4;
        v44 = v58;
        goto LABEL_23;
      }
    }

    v73 = 0;
    v55 = v67;
    sub_25F8227BC();
    v56 = sub_25F82231C();
    v44 = v58;
    v58(v55, a4);
    v44(v42, a4);
    v44(v45, a4);
    if ((v56 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_25F7F61F4()
{
  result = qword_27FDB0D18;
  if (!qword_27FDB0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0D18);
  }

  return result;
}

unint64_t sub_25F7F6248()
{
  result = qword_27FDB0D20;
  if (!qword_27FDB0D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0D20);
  }

  return result;
}

double Double.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_25F7F9774(a1, a2, a3, a4, type metadata accessor for UnsignedFixedPoint, UnsignedFixedPoint.approximate());
}

{
  return sub_25F7F9774(a1, a2, a3, a4, type metadata accessor for SignedFixedPoint, SignedFixedPoint.approximate());
}

{
  return sub_25F7F9774(a1, a2, a3, a4, type metadata accessor for NormalizedFixedPoint, NormalizedFixedPoint.approximate());
}

void UnsignedFixedPoint.init(val:_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = type metadata accessor for UnsignedFixedPoint();
  v9 = MEMORY[0x28223BE20](*(v8 - 8));
  v11 = v20 - v10;
  if (__CFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_17;
  }

  v20[0] = v9;
  v12 = sub_25F822A0C();
  if ((v12 & 0x8000000000000000) == 0 && a1 + a2 - 1 < v12)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v13 = sub_25F773B70(0, -a2, 1.0);
      if ((a1 & 0x8000000000000000) == 0)
      {
        v14 = v13;
        v15 = sub_25F773B70(0, a1, 1.0);
        v16 = 0.0 - v15;
        if (0.0 - v15 != INFINITY)
        {
          *&v16 += (*&v16 >> 63) | 1;
        }

        v17 = v15 - v14;
        v18 = -v16;
        if (v17 > v18)
        {
          v17 = v18;
        }

        if (a4 >= 0.0 && v17 >= a4)
        {
          v20[1] = round(sub_25F773B70(0, a2, 1.0) * a4);
          sub_25F7F97F8();
          sub_25F82283C();
          *&v11[*(v8 + 44)] = a1;
          *&v11[*(v8 + 48)] = a2;
          (*(v20[0] + 32))(a3, v11, v8);
          (*(v20[0] + 56))(a3, 0, 1, v8);
          return;
        }

        goto LABEL_13;
      }

LABEL_18:
      __break(1u);
      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v19 = *(v20[0] + 56);

  v19(a3, 1, 1, v8);
}

uint64_t UnsignedFixedPoint.init(truncatingBitPattern:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a1;
  v48 = a6;
  v46 = *(a5 + 8);
  v41 = *(v46 + 24);
  v40 = *(v41 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v38[1] = v38 - v10;
  v11 = *(a4 - 8);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v42 = v38 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v43 = v38 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v38 - v19;
  v21 = type metadata accessor for UnsignedFixedPoint();
  result = MEMORY[0x28223BE20](*(v21 - 8));
  v24 = v38 - v23;
  v44 = a2;
  v45 = a3;
  v25 = __CFADD__(a2, a3);
  v26 = a2 + a3;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    v49 = result;
    v27 = sub_25F822A0C();
    if ((v27 & 0x8000000000000000) != 0 || v26 - 1 >= v27)
    {
      (*(v11 + 8))(v47, a4);
      v30 = v48;
      v31 = *(v49 + 56);

      return v31(v30, 1, 1, v21);
    }

    else
    {
      v28 = sub_25F822A0C();
      if (v28 < 0 || v26 != v28)
      {
        v50 = 1;
        sub_25F7F61F4();
        sub_25F82284C();
        v50 = v26;
        sub_25F7F6248();
        sub_25F8227FC();
        v38[0] = *(v11 + 8);
        (v38[0])(v14, a4);
        swift_getAssociatedConformanceWitness();
        sub_25F822D0C();
        sub_25F822CAC();
        v32 = v42;
        v29 = v43;
        sub_25F822A4C();
        v33 = v38[0];
        (v38[0])(v14, a4);
        v33(v32, a4);
      }

      else
      {
        v29 = v43;
        sub_25F822A2C();
      }

      (*(v11 + 32))(v20, v29, a4);
      v34 = v47;
      sub_25F8227CC();
      v35 = *(v11 + 8);
      v35(v34, a4);
      v35(v20, a4);
      v36 = v45;
      *&v24[*(v21 + 44)] = v44;
      *&v24[*(v21 + 48)] = v36;
      v37 = v48;
      (*(v49 + 32))(v48, v24, v21);
      return (*(v49 + 56))(v37, 0, 1, v21);
    }
  }

  return result;
}

Swift::Double __swiftcall UnsignedFixedPoint.approximate()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v0 + 16);
  v5 = *(v4 - 8);
  (MEMORY[0x28223BE20])();
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v1, v4);
  if (sub_25F82281C() < 65)
  {
    v10 = sub_25F82282C();
    v11 = sub_25F82280C();
    (*(v5 + 8))(v7, v4);
    if (v10)
    {
      v9 = v11;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    sub_25F7F97F8();
    sub_25F7F984C();
    sub_25F82227C();
    (*(v5 + 8))(v7, v4);
    v9 = *&v13[1];
  }

  v12 = *(v2 + *(v3 + 48));
  if ((v12 & 0x8000000000000000) == 0)
  {
    return v9 / sub_25F773B70(0, v12, 1.0);
  }

  __break(1u);
  return result;
}

uint64_t SignedFixedPoint.init(bitPattern:_:_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a2;
  v68 = a1;
  v63 = *(a5 + 8);
  v59 = *(*(v63 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v58 = v53 - v12;
  v67 = *(a4 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v56 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v53 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v53 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v55 = v53 - v22;
  MEMORY[0x28223BE20](v21);
  v57 = v53 - v23;
  v24 = type metadata accessor for SignedFixedPoint();
  v66 = *(v24 - 8);
  result = MEMORY[0x28223BE20](v24);
  v27 = v53 - v26;
  v62 = a3;
  v28 = a2 + a3;
  if (__CFADD__(a2, a3))
  {
    __break(1u);
  }

  else
  {
    v65 = a6;
    v29 = v28 + 1;
    if (v28 != -1)
    {
      v60 = v27;
      v64 = result;
      v30 = sub_25F822A0C();
      if ((v30 & 0x8000000000000000) != 0 || v30 < v29 || v29 == 1)
      {
        (*(v67 + 8))(v68, a4);
LABEL_7:
        v31 = 1;
        v33 = v64;
        v32 = v65;
        v34 = v66;
        return (*(v34 + 56))(v32, v31, 1, v33);
      }

      v35 = sub_25F822A0C();
      if ((v35 & 0x8000000000000000) == 0 && v29 == v35)
      {
LABEL_11:
        v36 = v60;
        (*(v67 + 32))(v60, v68, a4);
        v38 = v64;
        v37 = v65;
        v39 = v62;
        *&v36[*(v64 + 44)] = v61;
        *&v36[*(v38 + 48)] = v39;
        v34 = v66;
        (*(v66 + 32))(v37, v36, v38);
        v33 = v38;
        v32 = v37;
        v31 = 0;
        return (*(v34 + 56))(v32, v31, 1, v33);
      }

      v69 = 1;
      v53[1] = sub_25F7F61F4();
      sub_25F82284C();
      v69 = v29;
      sub_25F7F6248();
      sub_25F8227FC();
      v40 = *(v67 + 8);
      v40(v17, a4);
      v53[0] = swift_getAssociatedConformanceWitness();
      sub_25F822D0C();
      sub_25F822CAC();
      v41 = v55;
      sub_25F822A4C();
      v40(v17, a4);
      v40(v20, a4);
      v42 = v57;
      sub_25F8227EC();
      v54 = v40;
      v40(v41, a4);
      v43 = v56;
      sub_25F8227CC();
      if (sub_25F82282C())
      {
        if (sub_25F82281C() >= 64)
        {
LABEL_23:
          v69 = 0;
          sub_25F8227BC();
          v51 = sub_25F82231C();
          v52 = v41;
          v48 = v54;
          v54(v52, a4);
          v48(v43, a4);
          v48(v42, a4);
          if (v51)
          {
            goto LABEL_11;
          }

LABEL_24:
          v48(v68, a4);
          goto LABEL_7;
        }
      }

      else
      {
        v44 = sub_25F82282C();
        v45 = sub_25F82281C();
        if (v44)
        {
          if (v45 > 64)
          {
            goto LABEL_23;
          }

          sub_25F822D0C();
          sub_25F822CAC();
          v46 = sub_25F82230C();
          v47 = v41;
          v48 = v54;
          v54(v47, a4);
          if ((v46 & 1) == 0)
          {
            v48(v43, a4);
            v48(v42, a4);
            goto LABEL_24;
          }

          v49 = sub_25F82280C();
          v48(v43, a4);
          v50 = v42;
LABEL_21:
          v48(v50, a4);
          if (!v49)
          {
            goto LABEL_11;
          }

          goto LABEL_24;
        }

        if (v45 >= 64)
        {
          goto LABEL_23;
        }
      }

      v49 = sub_25F82280C();
      v48 = v54;
      v54(v43, a4);
      v50 = v42;
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t SignedFixedPoint.init(truncatingBitPattern:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a1;
  v48 = *(a5 + 8);
  v44 = *(v48 + 24);
  v43 = *(v44 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v41 = &v39 - v11;
  v12 = *(a4 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v45 = &v39 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v46 = &v39 - v19;
  MEMORY[0x28223BE20](v18);
  v47 = &v39 - v20;
  v21 = type metadata accessor for SignedFixedPoint();
  result = MEMORY[0x28223BE20](*(v21 - 8));
  v24 = &v39 - v23;
  v49 = a2;
  v50 = a3;
  v25 = a2 + a3;
  if (__CFADD__(a2, a3))
  {
    __break(1u);
    goto LABEL_15;
  }

  v51 = a6;
  v26 = v25 + 1;
  if (v25 == -1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v53 = result;
  v27 = sub_25F822A0C();
  if ((v27 & 0x8000000000000000) != 0 || v26 == 1 || v27 < v26)
  {
    (*(v12 + 8))(v52, a4);
    v30 = *(v53 + 56);
    v31 = v51;

    return v30(v31, 1, 1, v21);
  }

  else
  {
    v28 = sub_25F822A0C();
    if (v28 < 0 || v26 != v28)
    {
      v54 = 1;
      sub_25F7F61F4();
      sub_25F82284C();
      v54 = v26;
      sub_25F7F6248();
      sub_25F8227FC();
      v40 = *(v12 + 8);
      v40(v15, a4);
      swift_getAssociatedConformanceWitness();
      sub_25F822D0C();
      sub_25F822CAC();
      v32 = v45;
      v29 = v46;
      sub_25F822A4C();
      v33 = v40;
      v40(v15, a4);
      v33(v32, a4);
    }

    else
    {
      v29 = v46;
      sub_25F822A2C();
    }

    v34 = v47;
    (*(v12 + 32))(v47, v29, a4);
    v35 = v52;
    sub_25F8227CC();
    v36 = *(v12 + 8);
    v36(v35, a4);
    v36(v34, a4);
    v37 = v50;
    *&v24[*(v21 + 44)] = v49;
    *&v24[*(v21 + 48)] = v37;
    v38 = v51;
    (*(v53 + 32))(v51, v24, v21);
    return (*(v53 + 56))(v38, 0, 1, v21);
  }
}

void SignedFixedPoint.init(val:_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v68 = *(a4 + 8);
  v60 = *(v68 + 24);
  v65 = *(v60 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v63 = v56 - v12;
  v67 = *(a3 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v62 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v61 = v56 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v56 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v66 = v56 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v56 - v23;
  MEMORY[0x28223BE20](v22);
  v70 = v56 - v25;
  v26 = type metadata accessor for SignedFixedPoint();
  v71 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = v56 - v27;
  v29 = a1 + a2;
  if (__CFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_26;
  }

  v69 = a5;
  v30 = v29 + 1;
  if (v29 == -1)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v31 = sub_25F822A0C();
  v32 = v70;
  if ((v31 & 0x8000000000000000) != 0 || v30 == 1 || v31 < v30)
  {
    goto LABEL_18;
  }

  if (a2 < 0)
  {
    goto LABEL_27;
  }

  v33 = sub_25F773B70(0, -a2, 1.0);
  if (a1 < 0)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v34 = v33;
  v35 = sub_25F773B70(0, a1, 1.0);
  v36 = -v35;
  v37 = 0.0 - v35;
  if (0.0 - v35 != INFINITY)
  {
    *&v37 += (*&v37 >> 63) | 1;
  }

  v38 = v35 - v34;
  v39 = -v37;
  if (v38 > v39)
  {
    v38 = v39;
  }

  if (v36 <= a6 && v38 >= a6)
  {
    v58 = v24;
    v59 = a1;
    v72 = round(fabs(a6) * sub_25F773B70(0, a2, 1.0));
    sub_25F7F97F8();
    sub_25F82283C();
    if (a6 >= 0.0)
    {
      (*(v67 + 32))(v28, v32, a3);
      v45 = v69;
      v46 = v59;
    }

    else
    {
      sub_25F8227EC();
      v56[1] = swift_getAssociatedConformanceWitness();
      sub_25F822D0C();
      sub_25F822CAC();
      v40 = v66;
      sub_25F822A1C();
      v41 = v67 + 8;
      v42 = *(v67 + 8);
      v42(v19, a3);
      v56[2] = v41;
      v57 = v42;
      v42(v40, a3);
      v43 = sub_25F822A0C();
      if (v43 < 0 || v30 != v43)
      {
        v72 = 1;
        sub_25F7F61F4();
        sub_25F82284C();
        v72 = v30;
        sub_25F7F6248();
        v49 = v66;
        sub_25F8227FC();
        v50 = v57;
        v57(v19, a3);
        sub_25F822D0C();
        sub_25F822CAC();
        v51 = v62;
        sub_25F822A4C();
        v52 = v19;
        v44 = v51;
        v50(v52, a3);
        v50(v49, a3);
        v45 = v69;
        v46 = v59;
      }

      else
      {
        v44 = v62;
        sub_25F822A2C();
        v45 = v69;
        v46 = v59;
      }

      v53 = v61;
      (*(v67 + 32))(v61, v44, a3);
      v54 = v58;
      sub_25F8227CC();
      v55 = v57;
      v57(v53, a3);
      v55(v54, a3);
      v55(v70, a3);
    }

    *&v28[*(v26 + 44)] = v46;
    *&v28[*(v26 + 48)] = a2;
    (*(v71 + 32))(v45, v28, v26);
    (*(v71 + 56))(v45, 0, 1, v26);
    return;
  }

LABEL_18:
  v47 = *(v71 + 56);
  v48 = v69;

  v47(v48, 1, 1, v26);
}

Swift::Double __swiftcall SignedFixedPoint.approximate()()
{
  v2 = v0;
  v3 = *(v0 + 16);
  v57 = *(*(*(v0 + 24) + 8) + 24);
  v62 = *(v57 + 2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v60 = &v50 - v5;
  v6 = *(v3 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v51 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v55 = &v50 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v56 = &v50 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v64 = &v50 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v50 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v58 = &v50 - v22;
  MEMORY[0x28223BE20](v21);
  v59 = &v50 - v24;
  v25 = *(v2 + 48);
  v26 = *(v1 + v25);
  if (v26 < 0)
  {
    __break(1u);
  }

  else
  {
    v27 = sub_25F773B70(0, *(v1 + v25), 1.0);
    *&v65 = 1;
    v52 = sub_25F7F61F4();
    sub_25F82284C();
    v28 = *(v1 + *(v2 + 44));
    v29 = __CFADD__(v28, v26);
    *&v30 = v28 + v26;
    if (!v29)
    {
      v65 = v30;
      sub_25F7F6248();
      sub_25F8227FC();
      v50 = v6;
      v63 = v1;
      v31 = *(v6 + 8);
      v31(v17, v3);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_25F822D0C();
      sub_25F822CAC();
      v32 = v58;
      v53 = *(v57 + 1);
      sub_25F822A4C();
      v31(v17, v3);
      v57 = v20;
      v33 = v20;
      v34 = v32;
      v31(v33, v3);
      v35 = v59;
      sub_25F8227EC();
      v31(v32, v3);
      sub_25F8227CC();
      LOBYTE(v32) = sub_25F82282C();
      v36 = sub_25F82281C();
      if (v32)
      {
        if (v36 <= 64)
        {
          goto LABEL_5;
        }
      }

      else if (v36 <= 63)
      {
LABEL_5:
        v37 = v64;
        v38 = sub_25F82280C();
        v31(v37, v3);
        if (v38 > 0)
        {
          goto LABEL_6;
        }

        goto LABEL_10;
      }

      v65 = 0.0;
      sub_25F8227BC();
      v43 = v64;
      v44 = sub_25F8222FC();
      v31(v34, v3);
      v31(v43, v3);
      if (v44)
      {
LABEL_6:
        v39 = v56;
        sub_25F8227DC();
        sub_25F822D0C();
        v40 = v57;
        sub_25F822CAC();
        sub_25F822A4C();
        v31(v40, v3);
        v41 = v55;
        sub_25F8227EC();
        v31(v34, v3);
        if (sub_25F82281C() < 65)
        {
          v46 = sub_25F82282C();
          v47 = sub_25F82280C();
          v31(v41, v3);
          v31(v39, v3);
          v31(v35, v3);
          if (v46)
          {
            v42 = -v47;
          }

          else
          {
            v42 = -v47;
          }
        }

        else
        {
          sub_25F7F97F8();
          sub_25F7F984C();
          sub_25F82227C();
          v31(v41, v3);
          v31(v39, v3);
          v31(v35, v3);
          v42 = -v65;
        }

        return v42 / v27;
      }

LABEL_10:
      v45 = v51;
      (*(v50 + 16))(v51, v63, v3);
      if (sub_25F82281C() < 65)
      {
        v48 = sub_25F82282C();
        v49 = sub_25F82280C();
        v31(v45, v3);
        v31(v35, v3);
        if (v48)
        {
          v42 = v49;
        }

        else
        {
          v42 = v49;
        }
      }

      else
      {
        sub_25F7F97F8();
        sub_25F7F984C();
        sub_25F82227C();
        v31(v45, v3);
        v31(v35, v3);
        v42 = v65;
      }

      return v42 / v27;
    }
  }

  __break(1u);
  return result;
}

uint64_t NormalizedFixedPoint.init(bitPattern:_:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v63 = a1;
  v61 = a5;
  v59 = *(a4 + 8);
  v55 = *(*(v59 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v54 = v50 - v9;
  v10 = *(a3 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v53 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v50 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v50 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v58 = v50 - v20;
  MEMORY[0x28223BE20](v19);
  v57 = v50 - v21;
  v60 = type metadata accessor for NormalizedFixedPoint();
  v22 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v56 = v50 - v23;
  v62 = a2;
  if (!a2 || (v24 = sub_25F822A0C(), (v24 & 0x8000000000000000) != 0) || v24 < v62)
  {
    (*(v10 + 8))(v63, a3);
LABEL_8:
    v32 = 1;
    v30 = v60;
    v31 = v61;
    return (*(v22 + 56))(v31, v32, 1, v30);
  }

  v25 = sub_25F822A0C();
  v26 = v10;
  if ((v25 & 0x8000000000000000) == 0 && v25 == v62)
  {
    goto LABEL_6;
  }

  v51 = v22;
  v64 = 1;
  v50[3] = sub_25F7F61F4();
  sub_25F82284C();
  v64 = v62;
  sub_25F7F6248();
  sub_25F8227FC();
  v52 = v10;
  v35 = v10 + 8;
  v34 = *(v10 + 8);
  v34(v15, a3);
  v50[2] = swift_getAssociatedConformanceWitness();
  sub_25F822D0C();
  sub_25F822CAC();
  v36 = v58;
  sub_25F822A4C();
  v34(v15, a3);
  v34(v18, a3);
  v37 = v57;
  sub_25F8227EC();
  v38 = v34;
  v34(v36, a3);
  v39 = v53;
  sub_25F8227CC();
  if ((sub_25F82282C() & 1) == 0)
  {
    v50[1] = v35;
    v41 = sub_25F82282C();
    v42 = sub_25F82281C();
    if (v41)
    {
      v22 = v51;
      v26 = v52;
      if (v42 <= 64)
      {
        sub_25F822D0C();
        v43 = v58;
        sub_25F822CAC();
        v44 = sub_25F82230C();
        v38(v43, a3);
        if ((v44 & 1) == 0)
        {
          v38(v39, a3);
          v38(v57, a3);
          goto LABEL_26;
        }

LABEL_21:
        v47 = sub_25F82280C();
        v38(v39, a3);
        v38(v57, a3);
        if (!v47)
        {
          goto LABEL_6;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v22 = v51;
      v26 = v52;
      if (v42 < 64)
      {
        goto LABEL_21;
      }
    }

    v64 = 0;
    v48 = v58;
    sub_25F8227BC();
    v49 = sub_25F82231C();
    v38(v48, a3);
    v38(v39, a3);
    v38(v57, a3);
    if ((v49 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (sub_25F82281C() < 64)
  {
    v40 = sub_25F82280C();
    v34(v39, a3);
    v34(v37, a3);
    v22 = v51;
    v26 = v52;
    if (!v40)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  v64 = 0;
  v45 = v58;
  sub_25F8227BC();
  v46 = sub_25F82231C();
  v34(v45, a3);
  v34(v39, a3);
  v34(v37, a3);
  v22 = v51;
  v26 = v52;
  if ((v46 & 1) == 0)
  {
LABEL_26:
    v38(v63, a3);
    goto LABEL_8;
  }

LABEL_6:
  v27 = v56;
  (*(v26 + 32))(v56, v63, a3);
  v29 = v60;
  v28 = v61;
  *&v27[*(v60 + 44)] = v62;
  (*(v22 + 32))(v28, v27, v29);
  v30 = v29;
  v31 = v28;
  v32 = 0;
  return (*(v22 + 56))(v31, v32, 1, v30);
}

uint64_t NormalizedFixedPoint.init(truncatingBitPattern:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v42 = a1;
  v43 = a5;
  v41 = *(a4 + 8);
  v38 = *(v41 + 24);
  v40 = *(v38 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v36 = &v34 - v8;
  v9 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v39 = &v34 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v20 = type metadata accessor for NormalizedFixedPoint();
  v44 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v34 - v21;
  if (!a2 || (v23 = sub_25F822A0C(), (v23 & 0x8000000000000000) != 0) || v23 < a2)
  {
    (*(v9 + 8))(v42, a3);
    v26 = v43;
    v27 = *(v44 + 56);

    return v27(v26, 1, 1, v20);
  }

  else
  {
    v24 = sub_25F822A0C();
    if (v24 < 0 || v24 != a2)
    {
      v45 = 1;
      sub_25F7F61F4();
      sub_25F82284C();
      v35 = a2;
      v45 = a2;
      sub_25F7F6248();
      sub_25F8227FC();
      v34 = *(v9 + 8);
      v34(v12, a3);
      swift_getAssociatedConformanceWitness();
      sub_25F822D0C();
      sub_25F822CAC();
      v29 = v39;
      sub_25F822A4C();
      v30 = v34;
      v34(v12, a3);
      v30(v29, a3);
      v25 = v35;
    }

    else
    {
      sub_25F822A2C();
      v25 = a2;
    }

    (*(v9 + 32))(v19, v17, a3);
    v31 = v42;
    sub_25F8227CC();
    v32 = *(v9 + 8);
    v32(v31, a3);
    v32(v19, a3);
    *&v22[*(v20 + 44)] = v25;
    v33 = v43;
    (*(v44 + 32))(v43, v22, v20);
    return (*(v44 + 56))(v33, 0, 1, v20);
  }
}

unint64_t NormalizedFixedPoint.init(val:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for NormalizedFixedPoint();
  v13[0] = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  result = sub_25F822A0C();
  if ((result & 0x8000000000000000) == 0)
  {
    v10 = a1 - 1 >= result || a3 > 1.0;
    if (!v10 && a3 >= 0.0)
    {
      if (a1 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = sub_25F773B70(0, a1, 1.0);
      if (v11 != v11 + -1.0)
      {
        v13[1] = round((v11 + -1.0) * a3);
        sub_25F7F97F8();
        sub_25F82283C();
        *&v8[*(v6 + 44)] = a1;
        (*(v13[0] + 32))(a2, v8, v6);
        return (*(v13[0] + 56))(a2, 0, 1, v6);
      }
    }
  }

  v12 = *(v13[0] + 56);

  return v12(a2, 1, 1, v6);
}

Swift::Double __swiftcall NormalizedFixedPoint.approximate()()
{
  v2 = *(v0 + 16);
  v3 = *(v2 - 8);
  v4 = (MEMORY[0x28223BE20])();
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(v4 + 44));
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_25F773B70(0, v8, 1.0);
    (*(v3 + 16))(v7, v1, v2);
    if (sub_25F82281C() < 65)
    {
      v11 = sub_25F82282C();
      v12 = sub_25F82280C();
      (*(v3 + 8))(v7, v2);
      if (v11)
      {
        v10 = v12;
      }

      else
      {
        v10 = v12;
      }
    }

    else
    {
      sub_25F7F97F8();
      sub_25F7F984C();
      sub_25F82227C();
      (*(v3 + 8))(v7, v2);
      v10 = *&v13[1];
    }

    return v10 / (v9 + -1.0);
  }

  return result;
}

double sub_25F7F9774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), double (*a6)(void))
{
  v8 = a5(0);
  v9 = a6();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v9;
}

unint64_t sub_25F7F97F8()
{
  result = qword_27FDB0D28;
  if (!qword_27FDB0D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0D28);
  }

  return result;
}

unint64_t sub_25F7F984C()
{
  result = qword_27FDB0D30;
  if (!qword_27FDB0D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0D30);
  }

  return result;
}

unint64_t sub_25F7F98DC(uint64_t a1)
{
  result = sub_25F7F9904();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F7F9904()
{
  result = qword_27FDB0D38;
  if (!qword_27FDB0D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0D38);
  }

  return result;
}

unint64_t sub_25F7F9964(uint64_t a1)
{
  result = sub_25F7F998C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F7F998C()
{
  result = qword_27FDB0D40;
  if (!qword_27FDB0D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0D40);
  }

  return result;
}

unint64_t sub_25F7F99EC(uint64_t a1)
{
  result = sub_25F7F9A14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F7F9A14()
{
  result = qword_27FDB0D48[0];
  if (!qword_27FDB0D48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FDB0D48);
  }

  return result;
}

uint64_t sub_25F7F9A74()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F7F9AF8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}