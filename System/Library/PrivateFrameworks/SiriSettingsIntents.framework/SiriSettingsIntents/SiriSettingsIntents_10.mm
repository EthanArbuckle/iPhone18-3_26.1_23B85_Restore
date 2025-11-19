uint64_t sub_268E0739C(void *a1)
{
  v16 = a1;
  v9 = [a1 dialog];
  sub_268E0FB48();
  v13 = sub_268F9B014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF28, &qword_268FA2B10);
  sub_268E0FBAC();
  sub_268F9B234();

  if (v12)
  {
    v4 = [v12 fullPrint];
    v5 = sub_268F9AE24();
    v6 = v1;
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v9);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    MEMORY[0x277D82BD8](v9);
    v7 = 0;
    v8 = 0;
  }

  v10 = v7;
  v11 = v8;
  if (v8)
  {
    v14 = v10;
    v15 = v11;
  }

  else
  {
    v14 = sub_268F9AEF4();
    v15 = v2;
  }

  return v14;
}

uint64_t sub_268E07564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37[3] = a1;
  v37[4] = a2;
  v37[1] = a3;
  v37[2] = a4;
  v20 = sub_268F9B734();
  v19 = v4;
  *v4 = sub_268E948B8();
  v19[1] = v5;
  v19[2] = sub_268E948B8();
  v19[3] = v6;
  v19[4] = sub_268E948B8();
  v19[5] = v7;
  v19[6] = sub_268E948B8();
  v19[7] = v8;
  sub_268CD0F7C();
  v37[0] = v20;
  v36[0] = a3;
  v36[1] = a4;
  v35 = 2;
  v24 = NumericSettingIdentifier.rawValue.getter();
  v23 = v9;

  sub_268D28874(v36, v33);
  *&v34 = v24;
  *(&v34 + 1) = v23;
  if (v33[1])
  {
    sub_268D28874(v33, v26);
    if (*(&v34 + 1))
    {
      v25 = v34;
      v15 = MEMORY[0x26D62DB50](v26[0], v26[1], v34, *(&v34 + 1));
      sub_268CD9D30(&v25);
      sub_268CD9D30(v26);
      sub_268CD9D30(v33);
      v16 = v15;
      goto LABEL_7;
    }

    sub_268CD9D30(v26);
    goto LABEL_9;
  }

  if (*(&v34 + 1))
  {
LABEL_9:
    sub_268D28550(v33);
    v16 = 0;
    goto LABEL_7;
  }

  sub_268CD9D30(v33);
  v16 = 1;
LABEL_7:

  if ((v16 & 1) == 0)
  {
    v26[2] = sub_268E948B8();
    v26[3] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
    sub_268F9B064();
  }

  v14 = v37[0];

  v32 = v14;

  v28 = a1;
  v29 = a2;
  if (a2)
  {
    v30 = v28;
    v31 = v29;
  }

  else
  {
    v30 = sub_268F9AEF4();
    v31 = v11;
    if (v29)
    {
      sub_268CD9D30(&v28);
    }
  }

  v27[0] = v30;
  v27[1] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268DA6BFC();
  v13 = sub_268F9AFC4();
  sub_268CD9D30(v27);
  sub_268CD7930(&v32);
  sub_268CD7930(v37);
  return (v13 ^ 1) & 1;
}

uint64_t sub_268E078D0(uint64_t a1, uint64_t a2)
{
  v8[1] = a1;
  v8[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  v6 = sub_268F9B734();
  v5 = v2;
  *v2 = sub_268E948B8();
  v5[1] = v3;
  sub_268CD0F7C();
  v8[0] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF38, &unk_268FA2B18);
  sub_268E0FC34();
  sub_268E0FCBC();
  v7 = sub_268F9AFC4();
  sub_268CD7930(v8);
  return v7 & 1;
}

uint64_t sub_268E07A1C()
{
  type metadata accessor for INBinarySettingValue();
  sub_268CD925C();
  return sub_268F9B754() & 1;
}

uint64_t sub_268E07A88(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

BOOL sub_268E07AE4(uint64_t a1, void *a2)
{
  rawValue._countAndFlagsBits = a1;
  rawValue._object = a2;

  BinarySettingIdentifier.init(rawValue:)(rawValue);
  return v4 != 65;
}

BOOL sub_268E07B94(uint64_t a1, void *a2)
{
  rawValue._countAndFlagsBits = a1;
  rawValue._object = a2;

  NumericSettingIdentifier.init(rawValue:)(rawValue);
  return v4 != 13;
}

uint64_t sub_268E07C44(void *a1)
{
  v18 = a1;
  v13 = [a1 settingMetadata];
  if (v13 && (v12 = [v13 targetDevice], MEMORY[0x277D82BD8](v13), v12))
  {
    v1 = [v12 deviceName];
    v11 = v1;
    if (v1)
    {
      v7 = sub_268F9AE24();
      v8 = v2;
      MEMORY[0x277D82BD8](v11);
      v9 = v7;
      v10 = v8;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    MEMORY[0x277D82BD8](v12);
    v5 = v9;
    v6 = v10;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v14 = v5;
  v15 = v6;
  if (v6)
  {
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = sub_268F9AEF4();
    v17 = v3;
  }

  return v16;
}

uint64_t sub_268E07E2C(char a1)
{
  if (a1 == 2)
  {
    sub_268F9AA44();
    sub_268F99C44();
    sub_268F9AA14();
    v2 = sub_268F9AA24();

    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  return v3 & 1;
}

float sub_268E07EE4(_BYTE *a1)
{
  if (*a1 != 2)
  {
    return 0.0;
  }

  v3 = *sub_268D35434();

  v1 = sub_268D39FA4();
  v4 = *&v1;

  return v4;
}

double sub_268E07F78(_BYTE *a1)
{
  if (*a1 != 2)
  {
    return 1.0;
  }

  v2 = *sub_268D35434();

  v3 = sub_268D39FC4();

  return v3;
}

uint64_t sub_268E07FF4(void *a1)
{
  v12[3] = a1;
  v12[1] = sub_268E07C44(a1);
  v12[2] = v1;
  v9 = sub_268F9B734();
  v8 = v2;
  *v2 = sub_268E42B68();
  v8[1] = v3;
  v8[2] = sub_268E42B68();
  v8[3] = v4;
  v8[4] = sub_268E42B68();
  v8[5] = v5;
  sub_268CD0F7C();
  v12[0] = v9;
  v11[0] = sub_268F9AE94();
  v11[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268DA6BFC();
  v10 = sub_268F9AFC4();
  sub_268CD9D30(v11);
  sub_268CD7930(v12);

  return v10 & 1;
}

uint64_t sub_268E08138()
{
  v0 = sub_268D2E630();
  v9 = SettingIntent.settingIdentifier.getter(v0, &protocol witness table for INGetSettingIntent);
  v10 = v1;
  if (v1)
  {
    v2 = BinarySettingIdentifier.rawValue.getter();
    v8 = MEMORY[0x26D62DB50](v9, v10, v2);

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v3 = BinarySettingIdentifier.rawValue.getter();
      v6 = MEMORY[0x26D62DB50](v9, v10, v3);

      v7 = v6;
    }

    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

BOOL sub_268E0829C()
{
  if (sub_268E08138())
  {
    v3 = *sub_268D35434();

    v4 = sub_268D38D64();

    if (v4)
    {
      v2 = sub_268D3841C() ^ 1;
    }

    else
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      v1 = sub_268D38140() ^ 1;
    }

    return (v1 & 1) == 0;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_268E08400()
{
  result = sub_268F9AEF4();
  qword_2802F1460 = result;
  qword_2802F1468 = v1;
  return result;
}

uint64_t *sub_268E08444()
{
  if (qword_2802DB580 != -1)
  {
    swift_once();
  }

  return &qword_2802F1460;
}

uint64_t sub_268E084A4()
{
  v0 = sub_268E08444();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268E084E0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = 0;
  v43 = 0;
  v41 = 0.0;
  v39 = 0;
  v40 = 0;
  v36 = 0;
  v47 = a1;
  v46 = a2;
  v45 = a3;
  v44 = a1;
  v4 = sub_268D588E0();
  v33 = SettingIntent.settingIdentifier.getter(v4, &protocol witness table for INSetNumericSettingIntent);
  v34 = v5;
  if (!v5)
  {
    goto LABEL_27;
  }

  v42 = v33;
  v43 = v5;
  MEMORY[0x277D82BE0](a2);
  if (a2)
  {
    v6 = [a2 updatedValue];
    v35 = v6;
    if (v6)
    {
      v27 = v35;
      MEMORY[0x277D82BE0](v35);
      sub_268D35038(&v35);
      v28 = [v27 value];
      *&v7 = MEMORY[0x277D82BD8](v27).n128_u64[0];
      if (v28)
      {
        [v28 doubleValue];
        v24 = v8;
        MEMORY[0x277D82BD8](v28);
        v25 = v24;
        v26 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      sub_268D35038(&v35);
      MEMORY[0x277D82BD8](a2);
    }
  }

  v25 = 0.0;
  v26 = 1;
LABEL_12:
  if (v26)
  {

LABEL_27:
    sub_268F9B284();
    v14 = sub_268DC9D70();
    v16 = *v14;
    MEMORY[0x277D82BE0](*v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v16);
    v15 = sub_268F9A9C4();
    return (*(*(v15 - 8) + 56))(a4, 1);
  }

  v41 = v25;
  v21 = sub_268E08994(v33, v34, a3);
  v22 = v9;
  v39 = v21;
  v40 = v9;
  v10 = [a1 settingMetadata];
  v23 = v10;
  if (v10 && (v20 = [v10 targetDevice], *&v11 = MEMORY[0x277D82BD8](v23).n128_u64[0], v20))
  {
    [v20 deviceCategory];
    MEMORY[0x277D82BD8](v20);
    sub_268CD4334();
    v18 = v12;
    v19 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 1;
  }

  v37 = v18;
  v38 = v19 & 1;
  if (v19)
  {
    v17 = 0;
  }

  else
  {
    v17 = v37;
  }

  v36 = v17;
  sub_268E08CB0(v33, v34, v21, v22, v17, a4, v25);
}

uint64_t sub_268E08994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v19 = a2;
  v24 = a3;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v36 = 0;
  v34 = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v11 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v29 = (&v10 - v11);
  v23 = 0;
  v12 = (*(*(sub_268F9AB24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v27 = &v10 - v12;
  v14 = *(*(sub_268F9A9C4() - 8) + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v23);
  v22 = &v10 - v13;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v20 = &v10 - v15;
  v38 = v4;
  v39 = v5;
  v37 = v6;
  v17 = type metadata accessor for SettingsNumericSetting();

  sub_268F9A9A4();
  v16 = sub_268F9A874();
  sub_268D34FD4();
  v7 = sub_268F9B314();
  v21 = sub_268E0A9B8(v7);

  sub_268F9A9A4();
  v31 = sub_268F81C58(v20, v21, v22);
  v36 = v31;
  v26 = type metadata accessor for SettingIntentCATs();
  sub_268F9AAF4();
  sub_268F9A8C4();
  v25 = v35;
  sub_268CDE730(v24, v35);
  sub_268F9A894();
  v30 = sub_268F9A904();
  v34 = v30;

  sub_268F55EF4(v31, 1);

  v32 = sub_268F9B824();
  v33 = v8;
  sub_268D28378(v29);

  return v32;
}

uint64_t sub_268E08CB0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v242 = a6;
  v299._countAndFlagsBits = a1;
  v299._object = a2;
  v284 = a3;
  v285 = a4;
  v286 = a7;
  v287 = a5;
  v243 = "Slider descption: %@.";
  v244 = "localizedIdString: %@, urlString: %@";
  v245 = "Failed to get localizedIdString";
  v246 = "Error generating view data with error: %@";
  v247 = "Failed to to generate a CustomCanvasViewData because no NumericSettingIdentifier found with: %@.";
  v341 = 0;
  v340 = 0;
  v339 = 0;
  v338 = 0;
  v337 = 0;
  v335 = 0;
  v336 = 0;
  v333 = 0;
  v334 = 0;
  v332 = 0;
  v331 = 0;
  v329 = 0;
  v327 = 0;
  v248 = 0;
  v320 = 0;
  v314 = 0;
  v315 = 0;
  v312 = 0;
  v313 = 0;
  v310 = 0;
  v311 = 0;
  v309 = 0;
  v304 = 0;
  v305 = 0;
  v301 = 0;
  v302 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF40, &qword_268FA2B28);
  v249 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v250 = &v96 - v249;
  v267 = 0;
  v251 = type metadata accessor for ViewData();
  v252 = (*(*(v251 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v251);
  v253 = &v96 - v252;
  v341 = &v96 - v252;
  v254 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF48, &qword_268FA2B30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v267);
  v255 = &v96 - v254;
  v256 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v257 = &v96 - v256;
  v340 = &v96 - v256;
  v258 = sub_268F99414();
  v259 = *(v258 - 8);
  v260 = v258 - 8;
  v261 = (*(v259 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v258);
  v262 = &v96 - v261;
  v263 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v96 - v261);
  v264 = &v96 - v263;
  v339 = &v96 - v263;
  v265 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF50, &qword_268FA2B38) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v267);
  v266 = &v96 - v265;
  v268 = sub_268F99364();
  v269 = *(v268 - 8);
  v270 = v268 - 8;
  v271 = (*(v269 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v267);
  v272 = &v96 - v271;
  v273 = sub_268F99394();
  v274 = *(v273 - 8);
  v275 = v273 - 8;
  v276 = (*(v274 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v273);
  v277 = &v96 - v276;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF58, &qword_268FA2B40);
  v278 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v279 = &v96 - v278;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v280 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v281 = &v96 - v280;
  v282 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v96 - v280);
  v283 = &v96 - v282;
  v295 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF60, &qword_268FA2B48) - 8) + 64);
  v288 = (v295 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v299._object);
  v289 = &v96 - v288;
  v290 = (v295 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x28223BE20](v14);
  v291 = &v96 - v290;
  v292 = (v295 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x28223BE20](v15);
  v293 = &v96 - v292;
  v294 = (v295 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x28223BE20](v16);
  v296 = &v96 - v294;
  v338 = &v96 - v294;
  v297 = (v295 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x28223BE20](v17);
  v298 = &v96 - v297;
  v337 = &v96 - v297;
  v335 = v19;
  v336 = v18;
  v333 = v20;
  v334 = v21;
  v332 = v22;
  v331 = v23;

  NumericSettingIdentifier.init(rawValue:)(v299);
  v300 = v330;
  if (v330 == 13)
  {
    v111 = sub_268F9B284();
    v113 = *sub_268DC9D70();
    MEMORY[0x277D82BE0](v113);
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v110 = sub_268F9B734();
    v108 = v79;

    v108[3] = MEMORY[0x277D837D0];
    v80 = sub_268CDD224();
    countAndFlagsBits = v299._countAndFlagsBits;
    object = v299._object;
    v83 = v108;
    v84 = v80;
    v85 = v110;
    v108[4] = v84;
    *v83 = countAndFlagsBits;
    v83[1] = object;
    sub_268CD0F7C();
    v112 = v85;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v113);
    v86 = sub_268F9A9C4();
    return (*(*(v86 - 8) + 56))(v242, 1);
  }

  v241 = v300;
  v233 = v300;
  v329 = v300;
  v234 = 0;
  v230 = sub_268F99384();
  v228 = *(v230 - 8);
  v229 = v230 - 8;
  v232 = *(v228 + 56);
  v231 = v228 + 56;
  v235 = 1;
  v232(v298, 1);
  (v232)(v296, v235, v235, v230);
  v328 = v233;
  sub_268EB0234(v283);
  v236 = sub_268F9A9C4();
  v237 = *(v236 - 8);
  v238 = v236 - 8;
  v239 = *(v237 + 48);
  v240 = v237 + 48;
  if ((v239)(v283, v235) == 1)
  {
    sub_268D28588(v283);
    v226 = 0;
    v227 = 0;
  }

  else
  {
    v224 = sub_268F9A9B4();
    v225 = v24;
    (*(v237 + 8))(v283, v236);
    v226 = v224;
    v227 = v225;
  }

  v222 = v227;
  v223 = v226;
  if (v227)
  {
    v220 = v223;
    v221 = v222;
    v218 = v222;
    v219 = v223;
    v304 = v223;
    v305 = v222;
    v303 = v233;
    sub_268EB0474(v281);
    if (v239(v281, 1, v236) == 1)
    {
      sub_268D28588(v281);
      v216 = 0;
      v217 = 0;
    }

    else
    {
      v214 = sub_268F9A9B4();
      v215 = v25;
      (*(v237 + 8))(v281, v236);
      v216 = v214;
      v217 = v215;
    }

    v212 = v217;
    v213 = v216;
    if (v217)
    {
      v210 = v213;
      v211 = v212;
      v202 = v212;
      v204 = v213;
      v301 = v213;
      v302 = v212;
      sub_268F993E4();
      v203 = 0;
      v190 = sub_268F993F4();
      v26 = *(v190 - 8);
      v192 = *(v26 + 56);
      v191 = v26 + 56;
      v208 = 0;
      v209 = 1;
      v192(v279);
      v193 = MEMORY[0x277D62D08];
      v27 = *MEMORY[0x277D62D08];
      v195 = *(v274 + 104);
      v194 = v274 + 104;
      v195(v277, v27, v273);
      v196 = MEMORY[0x277D62BE0];
      v28 = *MEMORY[0x277D62BE0];
      v198 = *(v269 + 104);
      v197 = v269 + 104;
      v198(v272, v28, v268);
      v199 = sub_268F99374();
      v29 = *(v199 - 8);
      v201 = *(v29 + 56);
      v200 = v29 + 56;
      v201(v266, v209);
      sub_268CDD6D4();
      sub_268F993A4();
      v205 = MEMORY[0x277D62C78];
      v30 = *MEMORY[0x277D62C78];
      v207 = *(v228 + 104);
      v206 = v228 + 104;
      v207(v293, v30, v230);
      (v232)(v293, v208, v209, v230);
      sub_268E105C0(v293, v298);
      sub_268F993E4();
      (v192)(v279, v208, v209, v190);
      v195(v277, *v193, v273);
      v198(v272, *v196, v268);
      (v201)(v266, v209, v209, v199);
      sub_268CDD6D4();
      sub_268F993A4();
      v207(v293, *v205, v230);
      (v232)(v293, v208, v209, v230);
      sub_268E105C0(v293, v296);
    }

    else
    {
    }
  }

  v182 = *sub_268D35434();

  v31 = sub_268D39FA4();
  v185 = __PAIR64__(v32, LODWORD(v31));

  v327 = v185;
  v33 = sub_268E08444();
  v183 = *v33;
  v184 = v33[1];

  sub_268F9B124();
  v186 = v34;
  sub_268F9B124();
  v187 = v35;
  sub_268E0FDC4(v298, v291);
  v188 = *(v228 + 48);
  v189 = v228 + 48;
  if (v188(v291, 1, v230) == 1)
  {
    sub_268E0FEEC(v291);
    memset(v324, 0, sizeof(v324));
    v325 = 0;
    v326 = 0;
  }

  else
  {
    v325 = v230;
    v326 = MEMORY[0x277D62CB0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v324);
    (*(v228 + 32))(boxed_opaque_existential_1, v291, v230);
  }

  sub_268E0FDC4(v296, v289);
  if (v188(v289, 1, v230) == 1)
  {
    sub_268E0FEEC(v289);
    memset(v321, 0, sizeof(v321));
    v322 = 0;
    v323 = 0;
  }

  else
  {
    v322 = v230;
    v323 = MEMORY[0x277D62CB0];
    v37 = __swift_allocate_boxed_opaque_existential_1(v321);
    (*(v228 + 32))(v37, v289, v230);
  }

  v38 = v248;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C0, &unk_268FA2B50);
  sub_268F9B734();
  sub_268F9ADA4();
  sub_268F99404();
  v180 = v38;
  v181 = v38;
  if (!v38)
  {
    v172 = sub_268F9B284();
    v174 = *sub_268DC9D70();
    MEMORY[0x277D82BE0](v174);
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v170 = sub_268F9B734();
    v168 = v39;
    v164 = *(v259 + 16);
    v165 = v259 + 16;
    v164(v262, v264, v258);
    v166 = sub_268F9AE64();
    v167 = v40;
    v168[3] = MEMORY[0x277D837D0];
    v41 = sub_268CDD224();
    v42 = v166;
    v43 = v167;
    v44 = v168;
    v45 = v41;
    v46 = v170;
    v171 = v45;
    v168[4] = v45;
    *v44 = v42;
    v44[1] = v43;
    sub_268CD0F7C();
    v173 = v46;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v174);
    v175 = sub_268F993B4();
    v47 = *(v175 - 8);
    v176 = *(v47 + 56);
    v177 = v47 + 56;
    v176(v257, 1);
    v319 = v233;
    v178 = sub_268EB0030();
    v179 = v48;
    if (v48)
    {
      v162 = v178;
      v163 = v179;
      v160 = v179;
      v161 = v178;
      v312 = v178;
      v313 = v179;

      if (v285)
      {
        v158 = v284;
        v159 = v285;
        v157 = v285;
        v143 = v284;
        v310 = v284;
        v311 = v285;
        v139 = sub_268F9B284();
        v141 = *sub_268DC9D70();
        MEMORY[0x277D82BE0](v141);
        v137 = sub_268F9B734();
        v138 = v49;

        v50 = v171;
        v51 = v138;
        v52 = v143;
        v53 = v157;
        v145 = MEMORY[0x277D837D0];
        v138[3] = MEMORY[0x277D837D0];
        v51[4] = v50;
        *v51 = v52;
        v51[1] = v53;

        v54 = v137;
        v55 = v171;
        v56 = v138;
        v57 = v161;
        v58 = v160;
        v138[8] = v145;
        v56[9] = v55;
        v56[5] = v57;
        v56[6] = v58;
        sub_268CD0F7C();
        v140 = v54;
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v141);
        v146 = 0;
        sub_268E0FA80();
        v156 = sub_268E0AA60(v161, v160);
        v309 = v156;
        v142 = sub_268F9B734();
        v144 = v59;

        v60 = v142;
        v61 = v144;
        v62 = v157;
        *v144 = v143;
        v61[1] = v62;
        sub_268CD0F7C();
        v154 = &v308;
        v308 = v60;
        v149 = v307;
        memset(v307, 0, sizeof(v307));
        v147 = sub_268F99424();
        v150 = v306;
        v306[3] = v147;
        v306[4] = MEMORY[0x277D63780];
        v148 = __swift_allocate_boxed_opaque_existential_1(v306);
        MEMORY[0x277D82BE0](v156);
        v63 = sub_268CDD6D4();
        v64 = v147;
        v65 = v63;
        v66 = v148;
        *v148 = v156;
        v155 = 1;
        *(v66 + 8) = v65 & 1;
        v67 = *MEMORY[0x277D63720];
        (*(*(v64 - 8) + 104))();
        v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
        v152 = sub_268DA6BFC();
        v153 = MEMORY[0x277D63850];
        sub_268E0AD18();
        sub_268F993C4();
        (v176)(v255, 0, v155, v175);
        sub_268E0FF94(v255, v257);
        MEMORY[0x277D82BD8](v156);

LABEL_26:
        v74 = v180;
        sub_268E101BC(v257, v255);
        v118 = 0;
        v75 = sub_268F993D4();
        (*(*(v75 - 8) + 56))(v250, 1);

        v164(v262, v264, v258);
        sub_268E0AD30(v255, v250, v299._countAndFlagsBits, v299._object, v287, v262, v253);
        sub_268F99054();
        v119 = sub_268F99044();
        sub_268E102E4();
        v120 = sub_268F99034();
        v121 = v76;
        v122 = v74;
        if (!v74)
        {
          v115 = v121;
          v114 = v120;

          sub_268E0AE14();
          v116 = sub_268F99174();
          v117 = v77;
          sub_268D55C74(v114, v115);
          v314 = v116;
          v315 = v117;

          sub_268F9A9A4();
          (*(v237 + 56))(v242, 0, 1, v236);
          sub_268E10364(v253);
          sub_268E10518(v257);
          (*(v259 + 8))(v264, v258);
          sub_268E0FEEC(v296);
          return sub_268E0FEEC(v298);
        }

        v96 = v122;

        sub_268E10364(v253);
        sub_268E10518(v257);
        (*(v259 + 8))(v264, v258);
        v97 = v96;
        goto LABEL_31;
      }
    }

    v123 = sub_268F9B284();
    v125 = *sub_268DC9D70();
    MEMORY[0x277D82BE0](v125);
    v126 = 0;
    v124 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v125);
    v129 = MEMORY[0x277D837D0];
    v128 = sub_268F9B734();
    v127 = v68;
    v136 = 1;
    v69 = sub_268F9AEF4();
    v70 = v127;
    v71 = v69;
    v72 = v128;
    *v127 = v71;
    v70[1] = v73;
    sub_268CD0F7C();
    v135 = &v318;
    v318 = v72;
    v130 = v317;
    memset(v317, 0, sizeof(v317));
    v131 = v316;
    memset(v316, 0, sizeof(v316));
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
    v133 = sub_268DA6BFC();
    v134 = MEMORY[0x277D63850];
    sub_268E0AD18();
    sub_268F993C4();
    (v176)(v255, 0, v136, v175);
    sub_268E0FF94(v255, v257);
    goto LABEL_26;
  }

  v97 = v181;
LABEL_31:
  v107 = v97;
  v87 = v97;
  v320 = v107;
  v104 = sub_268F9B294();
  v106 = *sub_268DC7D88();
  MEMORY[0x277D82BE0](v106);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v102 = sub_268F9B734();
  v100 = v88;
  swift_getErrorValue();
  sub_268F9B7C4();
  v101 = v89;
  v98 = sub_268F9AEC4();
  v99 = v90;
  v100[3] = MEMORY[0x277D837D0];
  v91 = sub_268CDD224();
  v92 = v98;
  v93 = v99;
  v94 = v100;
  v100[4] = v91;
  *v94 = v92;
  v94[1] = v93;

  v95 = v102;
  sub_268CD0F7C();
  v105 = v95;
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v106);
  (*(v237 + 56))(v242, 1, 1, v236);

  sub_268E0FEEC(v296);
  return sub_268E0FEEC(v298);
}

uint64_t sub_268E0A770@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v21 = sub_268E08994(a1, a2, a5);
  v22 = v6;
  v23 = [a3 value];
  if (v23)
  {
    [v23 doubleValue];
    v13 = v7;
    MEMORY[0x277D82BD8](v23);
    v14 = v13;
    v15 = 0;
  }

  else
  {
    v14 = 0.0;
    v15 = 1;
  }

  if (v15)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v14;
  }

  if (a4)
  {
    v10 = 0;
    v11 = 1;
  }

  else
  {
    sub_268CD4334();
    v10 = v8;
    v11 = 0;
  }

  if (v11)
  {
    sub_268E08CB0(a1, a2, v21, v22, 0, a6, v12);
  }

  else
  {
    sub_268E08CB0(a1, a2, v21, v22, v10, a6, v12);
  }
}

uint64_t sub_268E0A9B8(void *a1)
{
  sub_268F9A864();
  [a1 doubleValue];
  sub_268F9A854();

  v3 = sub_268F9A844();

  MEMORY[0x277D82BD8](a1);

  return v3;
}

id sub_268E0AA60(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v19 = a2;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v27 = 0;
  v22 = 0;
  v13 = sub_268F99244();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v17 = &v7 - v16;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v23 = &v7 - v18;
  v29 = v3;
  v30 = v4;
  v28 = v2;
  sub_268E0FA80();
  v21 = sub_268CF0C44();
  v27 = v21;
  sub_268F99134();
  v24 = sub_268F99144();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  if ((*(v25 + 48))(v23, 1) == 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = sub_268F99114();
    (*(v25 + 8))(v23, v24);
    v12 = v11;
  }

  v8 = v12;
  [v21 setPunchOutUri_];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BE0](v21);
  sub_268F99234();
  sub_268F99224();
  v9 = v5;
  v10 = sub_268F9AE14();
  (*(v14 + 8))(v17, v13);

  [v21 setAceId_];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v21);
  return v21;
}

uint64_t sub_268E0AD30@<X0>(const void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  sub_268E11E74(a1, a7);
  v14 = type metadata accessor for ViewData();
  sub_268E11F9C(a2, &a7[v14[5]]);
  v7 = &a7[v14[6]];
  *v7 = a3;
  *(v7 + 1) = a4;
  *&a7[v14[7]] = a5;
  v16 = v14[8];
  v8 = sub_268F99414();
  return (*(*(v8 - 8) + 32))(&a7[v16], a6);
}

uint64_t sub_268E0AE14()
{
  sub_268E120C4(0);

  return 0;
}

uint64_t sub_268E0AE44@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v24 = 0;
  v29 = *a1;
  v28 = v29;
  v21 = sub_268EB0030();
  v22 = v2;
  if (v2)
  {
    v26 = v21;
    v27 = v2;
    sub_268E0FA80();
    v18 = sub_268E0AA60(v21, v22);
    v25 = v18;
    v19 = [v18 dictionary];
    if (v19)
    {
      v24 = v19;
      v30 = 0;
      v15 = objc_opt_self();
      MEMORY[0x277D82BE0](v19);
      v23 = 0;
      v17 = [v15 dataWithPropertyList:v19 format:200 options:0 error:&v23];
      v16 = v23;
      MEMORY[0x277D82BE0](v23);
      v3 = v30;
      v30 = v16;
      MEMORY[0x277D82BD8](v3);
      swift_unknownObjectRelease();
      if (v17)
      {
        v13 = sub_268F99184();
        v14 = v4;
        sub_268E0AE14();
        sub_268F99174();
        sub_268D55C74(v13, v14);
        MEMORY[0x277D82BD8](v17);

        sub_268F9A9A4();
        v5 = sub_268F9A9C4();
        (*(*(v5 - 8) + 56))(a2, 0, 1);
      }

      else
      {
        v11 = v30;
        v12 = sub_268F990F4();
        MEMORY[0x277D82BD8](v11);
        swift_willThrow();
        v9 = v12;
        v10 = sub_268F9A9C4();
        (*(*(v10 - 8) + 56))(a2, 1);
      }

      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v18);
    }

    else
    {
      v7 = sub_268F9A9C4();
      (*(*(v7 - 8) + 56))(a2, 1);
      MEMORY[0x277D82BD8](v18);
    }
  }

  else
  {
    v8 = sub_268F9A9C4();
    result = (*(*(v8 - 8) + 56))(a2, 1);
  }

  *MEMORY[0x277D85DE8];
  return result;
}

void sub_268E0B2C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a3;
  v89 = a1;
  v86 = a2;
  v113 = *MEMORY[0x277D85DE8];
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v101 = 0;
  v102 = 0;
  v100 = 0;
  v98 = 0;
  v96 = 0;
  v97 = 0;
  v87 = 0;
  v93 = sub_268F9A9C4();
  v90 = *(v93 - 8);
  v91 = v93 - 8;
  v88 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v92 = &v26 - v88;
  v108 = v4;
  v107 = v5;
  v106 = v3;
  sub_268D562A0();
  v6 = sub_268CF0C44();
  v7 = v92;
  v105 = v6;

  (*(v90 + 16))(v7, v89 + OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier, v93);

  v94._countAndFlagsBits = sub_268F9A9B4();
  v94._object = v8;
  (*(v90 + 8))(v92, v93);
  NumericSettingIdentifier.init(rawValue:)(v94);
  v95 = v109;
  if (v109 == 13)
  {
    goto LABEL_33;
  }

  v84 = v95;
  v80 = v95;
  v104 = v95;
  v81 = *(v89 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_value);

  v82 = sub_268F9A824();
  v83 = v9;
  v111 = v82;
  v112 = v9 & 1;

  if (*(v86 + 25))
  {
    v111 = 0;
    v112 = 0;
    v78 = 0;
    v79 = 0;
  }

  else
  {
    if (*(v86 + 26))
    {
      v111 = 0x3FF0000000000000;
      v112 = 0;
      v76 = 0x3FF0000000000000;
      v77 = 0;
    }

    else
    {
      if (*(v86 + 24))
      {
        v75 = *(v86 + 32);

        if (v75)
        {
          v74 = v75;
          v69 = v75;
          v70 = sub_268F9A824();
          v71 = v10;

          v72 = v70;
          v73 = v71;
        }

        else
        {
          v72 = 0;
          v73 = 1;
        }

        v111 = v72;
        v112 = v73 & 1;
        v67 = v72;
        v68 = v73;
      }

      else
      {
        v67 = v82;
        v68 = v83;
      }

      v76 = v67;
      v77 = v68;
    }

    v78 = v76;
    v79 = v77;
  }

  v65 = v79;
  v66 = v78;
  if (v80 == 2)
  {
    sub_268E1084C();
    v64 = sub_268CF0C44();
    MEMORY[0x277D82BE0](v64);
    v11 = v105;
    v105 = v64;
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BE0](v64);
    if (v65)
    {
      v62 = 0;
    }

    else
    {
      v63 = v66;
      v62 = sub_268F9B104();
    }

    v60 = v62;
    v58 = *MEMORY[0x277D48948];
    MEMORY[0x277D82BE0](v58);
    sub_268F9AE24();
    v57 = v12;
    v59 = sub_268F9AE14();

    *&v13 = MEMORY[0x277D82BD8](v58).n128_u64[0];
    [v64 setValue:v60 forKey:{v59, v13}];
    MEMORY[0x277D82BD8](v59);
    swift_unknownObjectRelease();
    v14 = MEMORY[0x277D82BD8](v64).n128_u64[0];
    v61 = v64;
    goto LABEL_28;
  }

  if (v80 == 9)
  {
    sub_268E107E8();
    v56 = sub_268CF0C44();
    MEMORY[0x277D82BE0](v56);
    v15 = v105;
    v105 = v56;
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BE0](v56);
    if (v65)
    {
      v54 = 0;
    }

    else
    {
      v55 = v66;
      v54 = sub_268F9B104();
    }

    v53 = v54;
    v51 = *MEMORY[0x277D48948];
    MEMORY[0x277D82BE0](v51);
    sub_268F9AE24();
    v50 = v16;
    v52 = sub_268F9AE14();

    *&v17 = MEMORY[0x277D82BD8](v51).n128_u64[0];
    [v56 setValue:v53 forKey:{v52, v17}];
    MEMORY[0x277D82BD8](v52);
    swift_unknownObjectRelease();
    v14 = MEMORY[0x277D82BD8](v56).n128_u64[0];
    v61 = v56;
    goto LABEL_28;
  }

  v103 = v80;
  v18 = sub_268EB0030();
  v48 = v18;
  v49 = v19;
  if (!v19)
  {
LABEL_33:
    (*(v90 + 56))(v85, 1, 1, v93);
    MEMORY[0x277D82BD8](v105);
    goto LABEL_34;
  }

  v46 = v48;
  v47 = v49;
  v44 = v49;
  v43 = v48;
  v101 = v48;
  v102 = v49;
  sub_268E0FA80();
  v45 = sub_268E0AA60(v43, v44);
  MEMORY[0x277D82BE0](v45);
  v20 = v105;
  v105 = v45;
  MEMORY[0x277D82BD8](v20);

  v61 = v45;
LABEL_28:
  v41 = v61;
  v42 = [v61 dictionary];
  v21 = MEMORY[0x277D82BD8](v41);
  if (v42)
  {
    v40 = v42;
    v38 = v42;
    v100 = v42;
    v35 = 0;
    v110 = 0;
    v36 = objc_opt_self();
    MEMORY[0x277D82BE0](v38);
    v99 = v110;
    v39 = [v36 dataWithPropertyList:v38 format:200 options:v35 error:&v99];
    v37 = v99;
    MEMORY[0x277D82BE0](v99);
    v22 = v110;
    v110 = v37;
    MEMORY[0x277D82BD8](v22);
    swift_unknownObjectRelease();
    if (v39)
    {
      v34 = v39;
      v31 = v39;
      v29 = sub_268F99184();
      v30 = v23;
      sub_268E0AE14();
      v32 = sub_268F99174();
      v33 = v24;
      sub_268D55C74(v29, v30);
      MEMORY[0x277D82BD8](v31);
      v96 = v32;
      v97 = v33;

      sub_268F9A9A4();
      (*(v90 + 56))(v85, 0, 1, v93);
    }

    else
    {
      v27 = v110;
      v28 = sub_268F990F4();
      MEMORY[0x277D82BD8](v27);
      swift_willThrow();
      v25 = v28;
      v98 = v28;
      (*(v90 + 56))(v85, 1, 1, v93);
    }

    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v105);
  }

  else
  {
    (*(v90 + 56))(v85, 1, 1, v93, v21);
    MEMORY[0x277D82BD8](v105);
  }

LABEL_34:
  *MEMORY[0x277D85DE8];
}

uint64_t sub_268E0BFA8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v27 = *a1;
  v28 = type metadata accessor for ToggleBinarySetting();
  v30 = BinarySettingIdentifier.rawValue.getter();
  if (a3)
  {
    v25 = 0;
  }

  else
  {
    v25 = a2;
  }

  sub_268E7EE88(v30, v4, v25);
  v22 = sub_268D90E70();
  v23 = sub_268E0C3D8();
  sub_268F3A0D0(v23, v28, v22);
  v24 = v5;
  MEMORY[0x277D82BD8](v23);

  sub_268F9B284();
  v6 = sub_268DC9D70();
  if (v24)
  {
    v21 = *v6;
    MEMORY[0x277D82BE0](*v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v20 = v7;
    v18 = sub_268F9AE64();
    v19 = v8;
    v20[3] = MEMORY[0x277D837D0];
    v20[4] = sub_268CDD224();
    *v20 = v18;
    v20[1] = v19;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v21);
    sub_268F9A9A4();
    v9 = sub_268F9A9C4();
    return (*(*(v9 - 8) + 56))(a4, 0, 1);
  }

  else
  {
    v17 = *v6;
    MEMORY[0x277D82BE0](*v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v16 = v11;
    v14 = sub_268F9AE64();
    v15 = v12;
    v16[3] = MEMORY[0x277D837D0];
    v16[4] = sub_268CDD224();
    *v16 = v14;
    v16[1] = v15;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v17);
    v13 = sub_268F9A9C4();
    return (*(*(v13 - 8) + 56))(a4, 1);
  }
}

uint64_t sub_268E0C410@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v70[1] = *MEMORY[0x277D85DE8];
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v68 = *a1;
  sub_268E0FAE4();
  v66 = sub_268CF0C44();
  switch(v68)
  {
    case 0:
      sub_268E10C34();
      v61 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v61);
      v2 = v66;
      v66 = v61;
      MEMORY[0x277D82BD8](v2);
      v62 = v61;
      goto LABEL_20;
    case 8:
      sub_268E10BD0();
      v60 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v60);
      v3 = v66;
      v66 = v60;
      MEMORY[0x277D82BD8](v3);
      v62 = v60;
      goto LABEL_20;
    case 16:
      sub_268E10B6C();
      v59 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v59);
      v4 = v66;
      v66 = v59;
      MEMORY[0x277D82BD8](v4);
      v62 = v59;
      goto LABEL_20;
    case 22:
      sub_268E108B0();
      v58 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v58);
      v5 = v66;
      v66 = v58;
      MEMORY[0x277D82BD8](v5);
      v62 = v58;
      goto LABEL_20;
    case 23:
      sub_268E10B08();
      v57 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v57);
      v6 = v66;
      v66 = v57;
      MEMORY[0x277D82BD8](v6);
      v62 = v57;
      goto LABEL_20;
    case 26:
      sub_268E10A40();
      v56 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v56);
      v7 = v66;
      v66 = v56;
      MEMORY[0x277D82BD8](v7);
      v62 = v56;
      goto LABEL_20;
    case 29:
      sub_268E10AA4();
      v55 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v55);
      v8 = v66;
      v66 = v55;
      MEMORY[0x277D82BD8](v8);
      v62 = v55;
      goto LABEL_20;
    case 42:
      sub_268E10A40();
      v54 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v54);
      v9 = v66;
      v66 = v54;
      MEMORY[0x277D82BD8](v9);
      v62 = v54;
      goto LABEL_20;
    case 48:
      sub_268E109DC();
      v53 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v53);
      v10 = v66;
      v66 = v53;
      MEMORY[0x277D82BD8](v10);
      v62 = v53;
      goto LABEL_20;
    case 49:
      sub_268E10978();
      v52 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v52);
      v11 = v66;
      v66 = v52;
      MEMORY[0x277D82BD8](v11);
      v62 = v52;
      goto LABEL_20;
    case 57:
      sub_268E108B0();
      v51 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v51);
      v12 = v66;
      v66 = v51;
      MEMORY[0x277D82BD8](v12);
      v62 = v51;
      goto LABEL_20;
    case 58:
      sub_268E108B0();
      v50 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v50);
      v13 = v66;
      v66 = v50;
      MEMORY[0x277D82BD8](v13);
      v62 = v50;
      goto LABEL_20;
    case 59:
      sub_268E108B0();
      v49 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v49);
      v14 = v66;
      v66 = v49;
      MEMORY[0x277D82BD8](v14);
      v62 = v49;
      goto LABEL_20;
    case 60:
      sub_268E108B0();
      v48 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v48);
      v15 = v66;
      v66 = v48;
      MEMORY[0x277D82BD8](v15);
      v62 = v48;
      goto LABEL_20;
    case 61:
      sub_268E108B0();
      v47 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v47);
      v16 = v66;
      v66 = v47;
      MEMORY[0x277D82BD8](v16);
      v62 = v47;
      goto LABEL_20;
    case 62:
      sub_268E108B0();
      v46 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v46);
      v17 = v66;
      v66 = v46;
      MEMORY[0x277D82BD8](v17);
      v62 = v46;
      goto LABEL_20;
    case 63:
      sub_268E108B0();
      v45 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v45);
      v18 = v66;
      v66 = v45;
      MEMORY[0x277D82BD8](v18);
      v62 = v45;
LABEL_20:
      MEMORY[0x277D82BE0](v62);
      v43 = [v62 dictionary];
      MEMORY[0x277D82BD8](v62);
      v70[0] = v43;
      sub_268E10914();
      v44 = [v62 isKindOfClass_];
      MEMORY[0x277D82BD8](v62);
      if (v44)
      {
        MEMORY[0x277D82BE0](v66);
        objc_opt_self();
        v42 = swift_dynamicCastObjCClass();
        if (v42)
        {
          v41 = v42;
        }

        else
        {
          MEMORY[0x277D82BD8](v66);
          v41 = 0;
        }

        MEMORY[0x277D82BE0](v41);
        if (v41)
        {
          [v41 setToggle_];
          MEMORY[0x277D82BD8](v41);
        }

        MEMORY[0x277D82BE0](v41);
        if (v41)
        {
          v39 = [v41 dictionary];
          MEMORY[0x277D82BD8](v41);
          v40 = v39;
        }

        else
        {
          v40 = 0;
        }

        v21 = v70[0];
        v70[0] = v40;
        MEMORY[0x277D82BD8](v21);
        MEMORY[0x277D82BE0](v41);
        if (v41)
        {
          objc_opt_self();
          v38 = swift_dynamicCastObjCClass();
          if (v38)
          {
            v37 = v38;
          }

          else
          {
            MEMORY[0x277D82BD8](v41);
            v37 = 0;
          }

          v36 = v37;
        }

        else
        {
          v36 = 0;
        }

        MEMORY[0x277D82BE0](v36);
        if (v36)
        {
          [v36 setUserConfirmed_];
          MEMORY[0x277D82BD8](v36);
        }

        MEMORY[0x277D82BD8](v36);
        MEMORY[0x277D82BD8](v41);
      }

      v35 = v70[0];
      MEMORY[0x277D82BE0](v70[0]);
      if (v70[0])
      {
        v65 = v70[0];
        v69 = 0;
        v32 = objc_opt_self();
        MEMORY[0x277D82BE0](v70[0]);
        v64 = 0;
        v34 = [v32 dataWithPropertyList:v70[0] format:200 options:0 error:&v64];
        v33 = v64;
        MEMORY[0x277D82BE0](v64);
        v22 = v69;
        v69 = v33;
        MEMORY[0x277D82BD8](v22);
        swift_unknownObjectRelease();
        if (v34)
        {
          v30 = sub_268F99184();
          v31 = v23;
          sub_268E0AE14();
          sub_268F99174();
          sub_268D55C74(v30, v31);
          MEMORY[0x277D82BD8](v34);

          sub_268F9A9A4();
          v24 = sub_268F9A9C4();
          (*(*(v24 - 8) + 56))(a2, 0, 1);
        }

        else
        {
          v28 = v69;
          v29 = sub_268F990F4();
          MEMORY[0x277D82BD8](v28);
          swift_willThrow();
          v26 = v29;
          v27 = sub_268F9A9C4();
          (*(*(v27 - 8) + 56))(a2, 1);
        }

        MEMORY[0x277D82BD8](v35);
        sub_268D35038(v70);
        result = MEMORY[0x277D82BD8](v66);
      }

      else
      {
        v25 = sub_268F9A9C4();
        (*(*(v25 - 8) + 56))(a2, 1);
        sub_268D35038(v70);
        result = MEMORY[0x277D82BD8](v66);
      }

      break;
    default:
      v19 = sub_268F9A9C4();
      (*(*(v19 - 8) + 56))(a2, 1);
      result = MEMORY[0x277D82BD8](v66);
      break;
  }

  *MEMORY[0x277D85DE8];
  return result;
}

void sub_268E0D11C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = a1;
  v16 = [a1 dictionary];
  if (v16)
  {
    v18 = v16;
    v20 = 0;
    v12 = objc_opt_self();
    MEMORY[0x277D82BE0](v16);
    v17 = 0;
    v14 = [v12 dataWithPropertyList:v16 format:200 options:0 error:&v17];
    v13 = v17;
    MEMORY[0x277D82BE0](v17);
    v2 = v20;
    v20 = v13;
    MEMORY[0x277D82BD8](v2);
    swift_unknownObjectRelease();
    if (v14)
    {
      v10 = sub_268F99184();
      v11 = v3;
      sub_268E0AE14();
      sub_268F99174();
      sub_268D55C74(v10, v11);
      MEMORY[0x277D82BD8](v14);

      sub_268F9A9A4();
      v4 = sub_268F9A9C4();
      (*(*(v4 - 8) + 56))(a2, 0, 1);
    }

    else
    {
      v8 = v20;
      v9 = sub_268F990F4();
      MEMORY[0x277D82BD8](v8);
      swift_willThrow();
      v6 = v9;
      v7 = sub_268F9A9C4();
      (*(*(v7 - 8) + 56))(a2, 1);
    }

    MEMORY[0x277D82BD8](v16);
  }

  else
  {
    v5 = sub_268F9A9C4();
    (*(*(v5 - 8) + 56))(a2, 1);
  }

  *MEMORY[0x277D85DE8];
}

id sub_268E0D438(char *a1, char a2)
{
  v15 = *a1;
  sub_268E7C63C();
  if (v2)
  {
    sub_268E10C98();
    v12 = sub_268CF0C44();
    MEMORY[0x277D82BE0](v12);
    [v12 setDryRun_];
    MEMORY[0x277D82BD8](v12);

    v13 = sub_268F9AE14();

    [v12 setSettingKey_];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BE0](v12);
    if (a2 == 2)
    {
      [v12 setToggle_];
    }

    else
    {
      [v12 setValue_];
    }

    MEMORY[0x277D82BD8](v12);

    return v12;
  }

  else
  {
    sub_268F9B284();
    v3 = sub_268DC9D70();
    v10 = *v3;
    MEMORY[0x277D82BE0](*v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v9 = v4;
    v7 = sub_268F9AE64();
    v8 = v5;
    v9[3] = MEMORY[0x277D837D0];
    v9[4] = sub_268CDD224();
    *v9 = v7;
    v9[1] = v8;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v10);
    return 0;
  }
}

id sub_268E0D738(char *a1)
{
  v12 = *a1;
  sub_268E7C63C();
  if (v1)
  {
    sub_268E10CFC();
    v13 = sub_268CF0C44();

    v10 = sub_268F9AE14();

    [v13 setSettingKey_];
    MEMORY[0x277D82BD8](v10);

    return v13;
  }

  else
  {
    sub_268F9B284();
    v2 = sub_268DC9D70();
    v9 = *v2;
    MEMORY[0x277D82BE0](*v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v8 = v3;
    v6 = sub_268F9AE64();
    v7 = v4;
    v8[3] = MEMORY[0x277D837D0];
    v8[4] = sub_268CDD224();
    *v8 = v6;
    v8[1] = v7;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v9);
    return 0;
  }
}

uint64_t sub_268E0D94C(void *a1)
{
  MEMORY[0x277D82BE0](a1);
  if (a1)
  {
    [a1 doubleValue];
    MEMORY[0x277D82BD8](a1);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    MEMORY[0x277D82BD8](a1);
    return 0;
  }

  else
  {
    sub_268F9A864();
    sub_268F9A854();

    v2 = sub_268F9A844();

    MEMORY[0x277D82BD8](a1);

    return v2;
  }
}

uint64_t SettingsNumericSetting.__allocating_init(settingId:value:)(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = a1;
  v13 = a2;
  v20 = a3;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v22 = 0;
  v14 = 0;
  v10 = *(*(sub_268F9A9C4() - 8) + 64);
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](0);
  v18 = &v8 - v9;
  v11 = v9;
  MEMORY[0x28223BE20](v3);
  v16 = &v8 - v11;
  v24 = v4;
  v25 = v5;
  v23 = v6;
  v12 = type metadata accessor for SettingsNumericSetting.Builder();

  sub_268F9A9A4();
  sub_268F9A874();
  MEMORY[0x277D82BE0](v20);
  v17 = sub_268E0A9B8(v20);
  sub_268F9A9A4();
  v19 = sub_268F81EE8(v16, v17, v18);
  v22 = v19;

  v21 = sub_268F824F0(v19);

  v26 = v21;

  MEMORY[0x277D82BD8](v20);

  return v21;
}

SiriSettingsIntents::ReadBatteryDeviceCategory_optional __swiftcall ReadBatteryDeviceCategory.init(rawValue:)(Swift::String rawValue)
{
  v4 = v1;
  sub_268F9B734();
  *v2 = "airpods";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "headphone";
  *(v2 + 32) = 9;
  *(v2 + 40) = 2;
  *(v2 + 48) = "device";
  *(v2 + 56) = 6;
  *(v2 + 64) = 2;
  *(v2 + 72) = "watch";
  *(v2 + 80) = 5;
  *(v2 + 88) = 2;
  sub_268CD0F7C();
  v5 = sub_268F9B5C4();

  if (v5)
  {
    switch(v5)
    {
      case 1:
        v6 = 1;
        break;
      case 2:
        v6 = 2;
        break;
      case 3:
        v6 = 3;
        break;
      default:

        *v4 = 4;
        return result;
    }
  }

  else
  {
    v6 = 0;
  }

  *v4 = v6;
}

uint64_t ReadBatteryDeviceCategory.rawValue.getter()
{
  if (*v0)
  {
    *v0;
  }

  return sub_268F9AEF4();
}

uint64_t sub_268E0E070@<X0>(uint64_t *a1@<X8>)
{
  result = ReadBatteryDeviceCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t ViewData.text1.setter(uint64_t a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v4[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF48, &qword_268FA2B30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v5 = v4 - v4[0];
  v8 = v2;
  v7 = v1;
  sub_268E101BC(v2, v4 - v4[0]);
  sub_268E0FF94(v5, v4[1]);
  return sub_268E10518(v6);
}

uint64_t ViewData.action.setter(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF40, &qword_268FA2B28) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_268E10DDC(v2, &v5 - v6);
  v3 = type metadata accessor for ViewData();
  sub_268E10F04(v7, (v1 + *(v3 + 20)));
  return sub_268E1112C(v8);
}

uint64_t ViewData.numericSettingId.getter()
{
  v1 = (v0 + *(type metadata accessor for ViewData() + 24));
  v3 = *v1;
  v4 = v1[1];

  return v3;
}

uint64_t ViewData.sliderModel.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for ViewData() + 32);
  v2 = sub_268F99414();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_268E0E440(uint64_t a1, uint64_t a2)
{
  v21[2] = a1;
  v21[3] = a2;

  v21[0] = sub_268F9AEF4();
  v21[1] = v2;
  v20[2] = a1;
  v20[3] = a2;
  v16 = MEMORY[0x26D62DB50](v21[0], v2, a1, a2);
  sub_268CD9D30(v21);
  if (v16)
  {

    v22 = 0;
    v13 = 0;
LABEL_12:

    return v13;
  }

  v20[0] = sub_268F9AEF4();
  v20[1] = v3;
  v19[2] = a1;
  v19[3] = a2;
  v12 = MEMORY[0x26D62DB50](v20[0], v3, a1, a2);
  sub_268CD9D30(v20);
  if (v12)
  {

    v22 = 1;
    v13 = 1;
    goto LABEL_12;
  }

  v19[0] = sub_268F9AEF4();
  v19[1] = v4;
  v18[2] = a1;
  v18[3] = a2;
  v11 = MEMORY[0x26D62DB50](v19[0], v4, a1, a2);
  sub_268CD9D30(v19);
  if (v11)
  {

    v22 = 2;
    v13 = 2;
    goto LABEL_12;
  }

  v18[0] = sub_268F9AEF4();
  v18[1] = v5;
  v17[2] = a1;
  v17[3] = a2;
  v10 = MEMORY[0x26D62DB50](v18[0], v5, a1, a2);
  sub_268CD9D30(v18);
  if (v10)
  {

    v22 = 3;
    v13 = 3;
    goto LABEL_12;
  }

  v17[0] = sub_268F9AEF4();
  v17[1] = v6;
  v9 = MEMORY[0x26D62DB50](v17[0], v6, a1, a2);
  sub_268CD9D30(v17);
  if (v9)
  {

    v22 = 4;
    v13 = 4;
    goto LABEL_12;
  }

  return 5;
}

uint64_t sub_268E0E9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268E0E440(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268E0E9FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268E0E7B4();
  *a1 = result;
  return result;
}

uint64_t ViewData.encode(to:)(uint64_t a1)
{
  v41 = a1;
  v61 = 0;
  v60 = 0;
  v49 = 0;
  v33 = sub_268F99414();
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  v36 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33);
  v37 = v13 - v36;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF40, &qword_268FA2B28);
  v38 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v39 = v13 - v38;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF48, &qword_268FA2B30);
  v40 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v54 = v13 - v40;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCFF8, &qword_268FA2B60);
  v42 = *(v51 - 8);
  v43 = v51 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v47 = v13 - v44;
  v61 = v4;
  v60 = v1;
  v45 = v4[3];
  v46 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v45);
  sub_268E11250();
  sub_268F9B844();
  sub_268E101BC(v48, v54);
  v50 = &v59;
  v59 = 0;
  v52 = sub_268F993B4();
  sub_268E112CC();
  v5 = v53;
  sub_268F9B694();
  v55 = v5;
  v56 = v5;
  if (v5)
  {
    v16 = v56;
    sub_268E10518(v54);
    result = (*(v42 + 8))(v47, v51);
    v17 = v16;
  }

  else
  {
    sub_268E10518(v54);
    v28 = 0;
    v27 = type metadata accessor for ViewData();
    sub_268E10DDC(&v48[v27[5]], v39);
    v29 = &v58;
    v58 = 1;
    v30 = sub_268F993D4();
    sub_268E1134C();
    v6 = v55;
    sub_268F9B694();
    v31 = v6;
    v32 = v6;
    if (v6)
    {
      v15 = v32;
      sub_268E1112C(v39);
      result = (*(v42 + 8))(v47, v51);
      v17 = v15;
    }

    else
    {
      sub_268E1112C(v39);
      v7 = v31;
      v8 = &v48[v27[6]];
      v23 = *v8;
      v24 = *(v8 + 1);

      v57[2] = 2;
      sub_268F9B6A4();
      v25 = v7;
      v26 = v7;
      if (v7)
      {
        v14 = v26;

        result = (*(v42 + 8))(v47, v51);
        v17 = v14;
      }

      else
      {

        v9 = v25;
        v10 = *&v48[v27[7]];
        v57[1] = 3;
        sub_268F9B6D4();
        v21 = v9;
        v22 = v9;
        if (v9)
        {
          v13[1] = v22;
          return (*(v42 + 8))(v47, v51);
        }

        else
        {
          (*(v34 + 16))(v37, &v48[v27[8]], v33);
          v18 = v57;
          v57[0] = 4;
          sub_268E113CC();
          v11 = v21;
          sub_268F9B6E4();
          v19 = v11;
          v20 = v11;
          if (v11)
          {
            v13[0] = v20;
          }

          (*(v34 + 8))(v37, v33);
          return (*(v42 + 8))(v47, v51);
        }
      }
    }
  }

  return result;
}

uint64_t ViewData.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v63 = a1;
  v73 = 0;
  v58 = 0;
  v42 = sub_268F99414();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42);
  v46 = &v17 - v45;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF40, &qword_268FA2B28);
  v47 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v48 = &v17 - v47;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF48, &qword_268FA2B30);
  v49 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v50 = &v17 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD018, &qword_268FA2B68);
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58);
  v64 = &v17 - v54;
  v57 = type metadata accessor for ViewData();
  v55 = (*(*(v57 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58);
  v59 = &v17 - v55;
  v73 = v4;
  v56 = sub_268F993B4();
  v5 = *(*(v56 - 8) + 56);
  v61 = 1;
  v5(v59, 1);
  v60 = v57[5];
  v62 = sub_268F993D4();
  (*(*(v62 - 8) + 56))(&v59[v60], v61);
  v66 = v63[3];
  v67 = v63[4];
  __swift_project_boxed_opaque_existential_1(v63, v66);
  sub_268E11250();
  v6 = v65;
  sub_268F9B834();
  v68 = v6;
  v69 = v6;
  if (v6)
  {
    v23 = v69;
    v24 = 3;
  }

  else
  {
    v38 = &v72;
    v72 = 0;
    sub_268E1144C();
    v7 = v68;
    sub_268F9B604();
    v39 = v7;
    v40 = v7;
    if (v7)
    {
      v22 = v40;
      (*(v52 + 8))(v64, v51);
      v23 = v22;
      v24 = 3;
    }

    else
    {
      sub_268E0FF94(v50, v59);
      v35 = &v71;
      v71 = 1;
      sub_268E114CC();
      v8 = v39;
      sub_268F9B604();
      v36 = v8;
      v37 = v8;
      if (v8)
      {
        v21 = v37;
        (*(v52 + 8))(v64, v51);
        v23 = v21;
        v24 = 3;
      }

      else
      {
        sub_268E10F04(v48, &v59[v57[5]]);
        v9 = v36;
        v70[2] = 2;
        v10 = sub_268F9B614();
        v31 = v9;
        v32 = v10;
        v33 = v11;
        v34 = v9;
        if (v9)
        {
          v20 = v34;
          (*(v52 + 8))(v64, v51);
          v23 = v20;
          v24 = 3;
        }

        else
        {
          v12 = v33;
          v13 = &v59[v57[6]];
          *v13 = v32;
          *(v13 + 1) = v12;
          v70[1] = 3;
          v14 = sub_268F9B644();
          v28 = 0;
          v29 = v14;
          v30 = 0;
          *&v59[v57[7]] = v14;
          v25 = v70;
          v70[0] = 4;
          sub_268E1154C();
          v15 = v28;
          sub_268F9B654();
          v26 = v15;
          v27 = v15;
          if (!v15)
          {
            (*(v43 + 32))(&v59[v57[8]], v46, v42);
            (*(v52 + 8))(v64, v51);
            sub_268E115CC(v59, v41);
            __swift_destroy_boxed_opaque_existential_0(v63);
            return sub_268E10364(v59);
          }

          v19 = v27;
          (*(v52 + 8))(v64, v51);
          v23 = v19;
          v24 = 7;
        }
      }
    }
  }

  v18 = v24;
  v17 = v23;
  __swift_destroy_boxed_opaque_existential_0(v63);
  sub_268E10518(v59);
  result = sub_268E1112C(&v59[v57[5]]);
  if ((v18 & 4) != 0)
  {
    return sub_268CD9D30(&v59[v57[6]]);
  }

  return result;
}

unint64_t sub_268E0FA80()
{
  v2 = qword_2802DE400;
  if (!qword_2802DE400)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DE400);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E0FAE4()
{
  v2 = qword_2802DCF18;
  if (!qword_2802DCF18)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCF18);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E0FB48()
{
  v2 = qword_2802DCF20;
  if (!qword_2802DCF20)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCF20);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E0FBAC()
{
  v2 = qword_2802DCF30;
  if (!qword_2802DCF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DCF28, &qword_268FA2B10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCF30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E0FC34()
{
  v2 = qword_280FE2838;
  if (!qword_280FE2838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DCF38, &unk_268FA2B18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2838);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E0FCBC()
{
  v2 = qword_280FE2878;
  if (!qword_280FE2878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2802DC8F0, qword_268F9F830);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2878);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ViewData()
{
  v1 = qword_2802DD040;
  if (!qword_2802DD040)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_268E0FDC4(const void *a1, void *a2)
{
  v6 = sub_268F99384();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF60, &qword_268FA2B48);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268E0FEEC(uint64_t a1)
{
  v3 = sub_268F99384();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_268E0FF94(const void *a1, void *a2)
{
  v7 = sub_268F993B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF48, &qword_268FA2B30);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF48, &qword_268FA2B30);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

void *sub_268E101BC(const void *a1, void *a2)
{
  v6 = sub_268F993B4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF48, &qword_268FA2B30);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_268E102E4()
{
  v2 = qword_2802DCF68;
  if (!qword_2802DCF68)
  {
    type metadata accessor for ViewData();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCF68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E10364(uint64_t a1)
{
  v10 = sub_268F993B4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(a1, 1))
  {
    (*(v11 + 8))(a1, v10);
  }

  v5 = type metadata accessor for ViewData();
  v6 = a1 + v5[5];
  v7 = sub_268F993D4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1))
  {
    (*(v8 + 8))(v6, v7);
  }

  v1 = *(a1 + v5[6] + 8);

  v4 = a1 + v5[8];
  v2 = sub_268F99414();
  (*(*(v2 - 8) + 8))(v4);
  return a1;
}

uint64_t sub_268E10518(uint64_t a1)
{
  v3 = sub_268F993B4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_268E105C0(const void *a1, void *a2)
{
  v7 = sub_268F99384();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF60, &qword_268FA2B48);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF60, &qword_268FA2B48);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

unint64_t sub_268E107E8()
{
  v2 = qword_2802DCF70;
  if (!qword_2802DCF70)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCF70);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E1084C()
{
  v2 = qword_2802DCF78;
  if (!qword_2802DCF78)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCF78);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E108B0()
{
  v2 = qword_2802DCF80;
  if (!qword_2802DCF80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCF80);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10914()
{
  v2 = qword_2802DCF88;
  if (!qword_2802DCF88)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCF88);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10978()
{
  v2 = qword_2802DCF90;
  if (!qword_2802DCF90)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCF90);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E109DC()
{
  v2 = qword_2802DCF98;
  if (!qword_2802DCF98)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCF98);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10A40()
{
  v2 = qword_2802DCFA0;
  if (!qword_2802DCFA0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCFA0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10AA4()
{
  v2 = qword_2802DCFA8;
  if (!qword_2802DCFA8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCFA8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10B08()
{
  v2 = qword_2802DCFB0;
  if (!qword_2802DCFB0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCFB0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10B6C()
{
  v2 = qword_2802DCFB8;
  if (!qword_2802DCFB8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCFB8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10BD0()
{
  v2 = qword_2802DCFC0;
  if (!qword_2802DCFC0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCFC0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10C34()
{
  v2 = qword_2802DCFC8;
  if (!qword_2802DCFC8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCFC8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10C98()
{
  v2 = qword_2802DCFD0;
  if (!qword_2802DCFD0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCFD0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10CFC()
{
  v2 = qword_2802DCFD8;
  if (!qword_2802DCFD8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCFD8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10D60()
{
  v2 = qword_2802DCFE0;
  if (!qword_2802DCFE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCFE0);
    return WitnessTable;
  }

  return v2;
}

void *sub_268E10DDC(const void *a1, void *a2)
{
  v6 = sub_268F993D4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF40, &qword_268FA2B28);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_268E10F04(const void *a1, void *a2)
{
  v7 = sub_268F993D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF40, &qword_268FA2B28);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF40, &qword_268FA2B28);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_268E1112C(uint64_t a1)
{
  v3 = sub_268F993D4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_268E111D4()
{
  v2 = qword_2802DCFE8;
  if (!qword_2802DCFE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCFE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E11250()
{
  v2 = qword_2802DCFF0;
  if (!qword_2802DCFF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCFF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E112CC()
{
  v2 = qword_2802DD000;
  if (!qword_2802DD000)
  {
    sub_268F993B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD000);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E1134C()
{
  v2 = qword_2802DD008;
  if (!qword_2802DD008)
  {
    sub_268F993D4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD008);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E113CC()
{
  v2 = qword_2802DD010;
  if (!qword_2802DD010)
  {
    sub_268F99414();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD010);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E1144C()
{
  v2 = qword_2802DD020;
  if (!qword_2802DD020)
  {
    sub_268F993B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD020);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E114CC()
{
  v2 = qword_2802DD028;
  if (!qword_2802DD028)
  {
    sub_268F993D4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD028);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E1154C()
{
  v2 = qword_2802DD030;
  if (!qword_2802DD030)
  {
    sub_268F99414();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD030);
    return WitnessTable;
  }

  return v2;
}

char *sub_268E115CC(char *a1, char *a2)
{
  v18 = sub_268F993B4();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF48, &qword_268FA2B30);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v19 + 16))(a2, a1, v18);
    (*(v19 + 56))(a2, 0, 1, v18);
  }

  v11 = type metadata accessor for ViewData();
  __dst = &a2[v11[5]];
  __src = &a1[v11[5]];
  v14 = sub_268F993D4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(__src, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF40, &qword_268FA2B28);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))(__dst, __src, v14);
    (*(v15 + 56))(__dst, 0, 1, v14);
  }

  v7 = &a2[v11[6]];
  v4 = &a1[v11[6]];
  *v7 = *v4;
  v8 = *(v4 + 1);

  *(v7 + 1) = v8;
  *&a2[v11[7]] = *&a1[v11[7]];
  v10 = &a2[v11[8]];
  v9 = &a1[v11[8]];
  v5 = sub_268F99414();
  (*(*(v5 - 8) + 16))(v10, v9);
  return a2;
}

unint64_t sub_268E118F0()
{
  v2 = qword_2802DD038;
  if (!qword_2802DD038)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD038);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E119E4()
{
  v4 = sub_268E11B08();
  if (v0 <= 0x3F)
  {
    v4 = sub_268E11BA4();
    if (v1 <= 0x3F)
    {
      v4 = sub_268F99414();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_268E11B08()
{
  v4 = qword_2802DD050;
  if (!qword_2802DD050)
  {
    sub_268F993B4();
    v3 = sub_268F9B3B4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2802DD050);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_268E11BA4()
{
  v4 = qword_2802DD058;
  if (!qword_2802DD058)
  {
    sub_268F993D4();
    v3 = sub_268F9B3B4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2802DD058);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_268E11C6C()
{
  v2 = qword_2802DD060;
  if (!qword_2802DD060)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD060);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E11D00()
{
  v2 = qword_2802DD068;
  if (!qword_2802DD068)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD068);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E11D94()
{
  v2 = qword_2802DD070;
  if (!qword_2802DD070)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD070);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E11E10()
{
  v2 = qword_2802DD078;
  if (!qword_2802DD078)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DD078);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_268E11E74(const void *a1, void *a2)
{
  v6 = sub_268F993B4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF48, &qword_268FA2B30);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_268E11F9C(const void *a1, void *a2)
{
  v6 = sub_268F993D4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF40, &qword_268FA2B28);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268E120C4(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    type metadata accessor for Base64EncodingOptions();
    v1 = sub_268F9B044();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t *sub_268E12170()
{
  if (qword_280FE4918 != -1)
  {
    swift_once();
  }

  return &qword_280FE8178;
}

uint64_t sub_268E121D0()
{
  type metadata accessor for GetAXMotionCuesHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8178 = result;
  return result;
}

uint64_t sub_268E12238()
{
  v1 = *sub_268E12170();

  return v1;
}

double sub_268E12268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DBB044();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v18 = a1;
  v19 = v3;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268E126EC, v17, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268E12484(void *a1, uint64_t a2, void (*a3)(id))
{
  v15 = [a1 settingMetadata];
  v16 = *(a2 + 16);

  v17 = sub_268D3EDF4();

  if (v17)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v11 = sub_268E41A08(v15, 0, 0, v12, 0, 0);
  MEMORY[0x277D82BD8](v15);
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v9 = v4;
  MEMORY[0x277D82BE0](v11);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v7 = sub_268F9AE74();
  v8 = v5;
  v9[3] = MEMORY[0x277D837D0];
  v9[4] = sub_268CDD224();
  *v9 = v7;
  v9[1] = v8;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v10);

  a3(v11);

  *&result = MEMORY[0x277D82BD8](v11).n128_u64[0];
  return result;
}

uint64_t *sub_268E12744()
{
  if (qword_280FE3F30 != -1)
  {
    swift_once();
  }

  return &qword_280FE8110;
}

uint64_t sub_268E128A8()
{
  type metadata accessor for UsageCountConfigProvider();
  result = sub_268E12904();
  qword_280FE8110 = result;
  return result;
}

uint64_t sub_268E12940()
{
  v1 = *sub_268E12744();

  return v1;
}

uint64_t sub_268E12A04()
{
  sub_268F9B734();
  *v0 = "HeySiriSetBinaryUsageCount";
  *(v0 + 8) = 26;
  *(v0 + 16) = 2;
  *(v0 + 24) = "LocationServicesSetBinaryUsageCount";
  *(v0 + 32) = 35;
  *(v0 + 40) = 2;
  *(v0 + 48) = "NightShiftSetBinaryUsageCount";
  *(v0 + 56) = 29;
  *(v0 + 64) = 2;
  *(v0 + 72) = "";
  *(v0 + 80) = 0;
  *(v0 + 88) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_10:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_10;
    case 2:
      v3 = 2;
      goto LABEL_10;
    case 3:
      v3 = 3;
      goto LABEL_10;
  }

  return 4;
}

unint64_t sub_268E12C14()
{
  v2 = qword_2802DD080;
  if (!qword_2802DD080)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD080);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E12D60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268E12A04();
  *a2 = result;
  return result;
}

uint64_t sub_268E12D98@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268E127A4();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268E12DCC()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_268E12DF8(char *a1)
{
  v5 = *a1;
  v3 = *(v1 + 16);

  sub_268E12E98();
  sub_268F9ADC4();

  return v4;
}

unint64_t sub_268E12E98()
{
  v2 = qword_280FE4540;
  if (!qword_280FE4540)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE4540);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E12F2C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return v2;
}

uint64_t sub_268E12F70()
{
  sub_268CD7930((v0 + 16));
  sub_268CD9D30(v0 + 32);
  return v2;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_268E13004(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFC && *(a1 + 10))
    {
      v4 = *a1 + 252;
    }

    else
    {
      v2 = *(a1 + 9) - 4;
      if (v2 < 0)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_268E13124(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 10);
  if (a2 > 0xFC)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 253;
    if (a3 >= 0xFD)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_268E13314()
{
  v2 = qword_2802DD088;
  if (!qword_2802DD088)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD088);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E13390()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD090, &unk_268FA3040);
  sub_268F9B734();
  v14 = v1;
  *v1 = 29;
  sub_268E129A8();
  *(v14 + 1) = v2;
  v14[16] = v3 & 1;
  v14[17] = v4;
  v14[24] = 31;
  sub_268E129A8();
  *(v14 + 4) = v5;
  v14[40] = v6 & 1;
  v14[41] = v7;
  v14[48] = 26;
  sub_268E129A8();
  *(v14 + 7) = v8;
  v14[64] = v9 & 1;
  v14[65] = v10;
  sub_268CD0F7C();
  sub_268E12E98();
  *(v0 + 16) = sub_268F9ADA4();
  *(v0 + 24) = 3;
  v11 = sub_268F9AEF4();
  result = v15;
  *(v15 + 32) = v11;
  *(v15 + 40) = v13;
  return result;
}

uint64_t *sub_268E13548()
{
  if (qword_280FE3D88 != -1)
  {
    swift_once();
  }

  return &qword_280FE80F8;
}

uint64_t sub_268E135A8()
{
  type metadata accessor for GetNoiseManagementHandler();
  v2 = sub_268CDC590();
  v0 = sub_268CDD6D4();
  result = sub_268CDC5C0(v2, v0 & 1);
  qword_280FE80F8 = result;
  return result;
}

uint64_t sub_268E13624()
{
  v1 = *sub_268E13548();

  return v1;
}

uint64_t sub_268E13654(void *a1, void (*a2)(void), uint64_t a3)
{
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v5 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v5);
  return sub_268E13744(a1, a2, a3);
}

uint64_t sub_268E13744(void *a1, void (*a2)(void), uint64_t a3)
{
  v137 = a3;
  v138 = a2;
  v139 = a1;
  v163 = 0;
  v140 = 0;
  v166 = a1;
  v164 = a2;
  v165 = a3;
  v141 = [a1 settingMetadata];
  if (v141)
  {
    v135 = v141;
    v128 = v141;
    v130 = [v141 settingId];
    v3 = sub_268F9AE24();
    v129 = v4;
    v131 = v3;

    v132 = v129;
    v133 = v131;
    v134 = v129;
  }

  else
  {
    v133 = 0;
    v134 = 0;
  }

  v124 = v134;
  v123 = v133;

  v162 = 32;
  v122 = BinarySettingIdentifier.rawValue.getter();
  v125 = v5;
  v121 = v5;

  v161[0] = v133;
  v161[1] = v134;
  v126 = &v158;
  v127 = v160;
  v158 = v122;
  v159 = v125;
  sub_268D28874(v161, v160);
  if (v159)
  {
    sub_268D28874(v126, v143);
    if (v127[1])
    {
      v142 = *v127;
      v119 = MEMORY[0x26D62DB50](v143[0], v143[1], v142, *(&v142 + 1));
      sub_268CD9D30(&v142);
      sub_268CD9D30(v143);
      sub_268CD9D30(v126);
      v120 = v119;
      goto LABEL_9;
    }

    sub_268CD9D30(v143);
    goto LABEL_11;
  }

  if (v127[1])
  {
LABEL_11:
    sub_268D28550(&v158);
    v120 = 0;
    goto LABEL_9;
  }

  sub_268CD9D30(v126);
  v120 = 1;
LABEL_9:
  v118 = v120;

  if (v120)
  {
    v6 = v140;

    v7 = sub_268DBC094();
    v111 = *v7;
    v112 = v7[1];
    v113 = *(v7 + 16);
    v114 = *sub_268DC7AE8();
    v110 = v114;
    v8 = v114;
    v115 = *(v136 + 24);

    v9 = v139;

    v116 = &v60;
    MEMORY[0x28223BE20](v111);
    v56 = v10;
    v57 = v139;
    v58 = v138;
    v59 = v11;
    sub_268DB944C(v12, v13, v14, v15, v16, sub_268E143F0, v55, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v117 = v6;

    return 0;
  }

  v157 = 5;
  v105 = BinarySettingIdentifier.rawValue.getter();
  v106 = v17;
  v104 = v17;

  v156[0] = v123;
  v156[1] = v124;
  v107 = &v153;
  v108 = v155;
  v153 = v105;
  v154 = v106;
  sub_268D28874(v156, v155);
  if (v154)
  {
    sub_268D28874(v107, v145);
    if (v108[1])
    {
      v144 = *v108;
      v102 = MEMORY[0x26D62DB50](v145[0], v145[1], v144, *(&v144 + 1));
      sub_268CD9D30(&v144);
      sub_268CD9D30(v145);
      sub_268CD9D30(v107);
      v103 = v102;
      goto LABEL_20;
    }

    sub_268CD9D30(v145);
    goto LABEL_22;
  }

  if (v108[1])
  {
LABEL_22:
    sub_268D28550(&v153);
    v103 = 0;
    goto LABEL_20;
  }

  sub_268CD9D30(v107);
  v103 = 1;
LABEL_20:
  v101 = v103;

  if (v103)
  {
    v18 = v140;

    v19 = sub_268DBC2A4();
    v94 = *v19;
    v95 = v19[1];
    v96 = *(v19 + 16);
    v97 = *sub_268DC7AE8();
    v93 = v97;
    v20 = v97;
    v98 = *(v136 + 24);

    v21 = v139;

    v99 = &v60;
    MEMORY[0x28223BE20](v94);
    v56 = v22;
    v57 = v139;
    v58 = v138;
    v59 = v23;
    sub_268DB944C(v24, v25, v26, v27, v28, sub_268E143BC, v55, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v100 = v18;

    return 0;
  }

  v152 = 6;
  v89 = BinarySettingIdentifier.rawValue.getter();
  v90 = v29;
  v88 = v29;

  v151[0] = v123;
  v151[1] = v124;
  v91 = &v148;
  v92 = v150;
  v148 = v89;
  v149 = v90;
  sub_268D28874(v151, v150);
  if (v149)
  {
    sub_268D28874(v91, v147);
    if (v92[1])
    {
      v146 = *v92;
      v86 = MEMORY[0x26D62DB50](v147[0], v147[1], v146, *(&v146 + 1));
      sub_268CD9D30(&v146);
      sub_268CD9D30(v147);
      sub_268CD9D30(v91);
      v87 = v86;
      goto LABEL_31;
    }

    sub_268CD9D30(v147);
    goto LABEL_33;
  }

  if (v92[1])
  {
LABEL_33:
    sub_268D28550(&v148);
    v87 = 0;
    goto LABEL_31;
  }

  sub_268CD9D30(v91);
  v87 = 1;
LABEL_31:
  v85 = v87;

  if (v87)
  {
    v30 = v140;

    v31 = sub_268DBC374();
    v78 = *v31;
    v79 = v31[1];
    v80 = *(v31 + 16);
    v81 = *sub_268DC7AE8();
    v77 = v81;
    v32 = v81;
    v82 = *(v136 + 24);

    v33 = v139;

    v83 = &v60;
    MEMORY[0x28223BE20](v78);
    v56 = v34;
    v57 = v139;
    v58 = v138;
    v59 = v35;
    sub_268DB944C(v36, v37, v38, v39, v40, sub_268E14388, v55, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v84 = v30;

    return v84;
  }

  else
  {

    v71 = sub_268F9B284();
    v72 = *sub_268DC7AE8();
    v41 = v72;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v74 = sub_268F9B734();
    v75 = v42;
    v43 = [v139 settingMetadata];
    v76 = v43;
    if (v43)
    {
      v67 = [v76 settingId];
      v44 = sub_268F9AE24();
      v66 = v45;
      v68 = v44;

      v69 = v68;
      v70 = v66;
    }

    else
    {
      v69 = 0;
      v70 = 0;
    }

    v147[3] = v69;
    v147[4] = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
    v61 = sub_268F9AE64();
    v62 = v46;
    v75[3] = MEMORY[0x277D837D0];
    v47 = sub_268CDD224();
    v48 = v61;
    v49 = v75;
    v50 = v62;
    v51 = v47;
    v52 = v74;
    v75[4] = v51;
    *v49 = v48;
    v49[1] = v50;
    sub_268CD0F7C();
    v63 = v52;
    sub_268F9AC14();

    sub_268E948B8();
    v64 = v53;
    v65 = sub_268E41B70();

    v138(v65);

    return v140;
  }
}

uint64_t sub_268E14424(void *a1, void (*a2)(void), uint64_t a3)
{
  v17 = [a1 settingMetadata];
  if (v17 && (v12 = [v17 targetDevice], *&v3 = MEMORY[0x277D82BD8](v17).n128_u64[0], v12))
  {
    [v12 deviceCategory];
    MEMORY[0x277D82BD8](v12);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v10 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory();
    sub_268CD7818();
    v10 = sub_268F9AE04();
  }

  if (v10)
  {
    sub_268F9B294();
    v4 = sub_268DC7AE8();
    v8 = *v4;
    MEMORY[0x277D82BE0](*v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v8);

    sub_268CDD0DC();
    v9 = sub_268CD42AC(6, 0);
    a2();
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    v7 = *(v16 + 16);

    MEMORY[0x277D82BE0](a1);
    v6 = swift_allocObject();
    v6[2] = a2;
    v6[3] = a3;
    v6[4] = a1;
    sub_268D50278(sub_268E149E4, v6);
  }
}

uint64_t sub_268E147CC(char a1, void (*a2)(void), uint64_t a3, void *a4)
{
  if (a1 == 2)
  {
    sub_268F9B294();
    v7 = sub_268DC7AE8();
    v8 = *v7;
    MEMORY[0x277D82BE0](*v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v8);

    v9 = sub_268E419BC(6);
    a2();
    MEMORY[0x277D82BD8](v9);
  }

  else
  {

    v12 = [a4 settingMetadata];
    if (a1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    v4 = sub_268D4AA1C();
    v10 = sub_268E41A08(v12, 0, v4, v11, 0, 0);
    v5 = MEMORY[0x277D82BD8](v12);
    (a2)(v10, v5);
    MEMORY[0x277D82BD8](v10);
  }
}

uint64_t sub_268E149F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);

  MEMORY[0x277D82BE0](a1);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  sub_268D50818(sub_268E14CF4, v8);
}

uint64_t sub_268E14ADC(char a1, void (*a2)(void), uint64_t a3, void *a4)
{
  if (a1 == 2)
  {
    sub_268F9B294();
    v7 = sub_268DC7AE8();
    v8 = *v7;
    MEMORY[0x277D82BE0](*v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v8);

    v9 = sub_268E419BC(6);
    a2();
    MEMORY[0x277D82BD8](v9);
  }

  else
  {

    v12 = [a4 settingMetadata];
    if (a1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    v4 = sub_268D4AA1C();
    v10 = sub_268E41A08(v12, 0, v4, v11, 0, 0);
    v5 = MEMORY[0x277D82BD8](v12);
    (a2)(v10, v5);
    MEMORY[0x277D82BD8](v10);
  }
}

uint64_t sub_268E14D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);

  MEMORY[0x277D82BE0](a1);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  sub_268D50C3C(sub_268E15004, v8);
}

uint64_t sub_268E14DEC(char a1, void (*a2)(void), uint64_t a3, void *a4)
{
  if (a1 == 2)
  {
    sub_268F9B294();
    v7 = sub_268DC7AE8();
    v8 = *v7;
    MEMORY[0x277D82BE0](*v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v8);

    v9 = sub_268E419BC(6);
    a2();
    MEMORY[0x277D82BD8](v9);
  }

  else
  {

    v12 = [a4 settingMetadata];
    if (a1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    v4 = sub_268D4AA1C();
    v10 = sub_268E41A08(v12, 0, v4, v11, 0, 0);
    v5 = MEMORY[0x277D82BD8](v12);
    (a2)(v10, v5);
    MEMORY[0x277D82BD8](v10);
  }
}

uint64_t *sub_268E1505C()
{
  if (qword_280FE5AC0 != -1)
  {
    swift_once();
  }

  return &qword_280FE8290;
}

uint64_t sub_268E150BC()
{
  type metadata accessor for GetVpnHandler();
  result = sub_268CDA260();
  qword_280FE8290 = result;
  return result;
}

uint64_t sub_268E15118()
{
  v1 = *sub_268E1505C();

  return v1;
}

uint64_t sub_268E15148(uint64_t a1, void (*a2)(id))
{
  sub_268F9B284();
  v2 = sub_268DC7AE8();
  v4 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v4);

  sub_268E948B8();
  v6 = sub_268E41B70();

  a2(v6);
  MEMORY[0x277D82BD8](v6);
}

uint64_t *sub_268E152A8()
{
  if (qword_280FE40C8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8120;
}

uint64_t sub_268E15308()
{
  type metadata accessor for GetAXVoiceControlHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8120 = result;
  return result;
}

uint64_t sub_268E15370()
{
  v1 = *sub_268E152A8();

  return v1;
}

double sub_268E153A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DBB2B4();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v18 = a1;
  v19 = v3;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268E15AD4, v17, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268E155BC(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v42 = 0;
  v41 = 0;
  v48 = a1;
  v47 = a2;
  v45 = a3;
  v46 = a4;
  v36 = [a1 settingMetadata];
  if (v36 && (v32 = [v36 targetDevice], *&v4 = MEMORY[0x277D82BD8](v36).n128_u64[0], v32))
  {
    v5 = [v32 deviceName];
    v31 = v5;
    if (v5)
    {
      v27 = sub_268F9AE24();
      v28 = v6;
      MEMORY[0x277D82BD8](v31);
      v29 = v27;
      v30 = v28;
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    MEMORY[0x277D82BD8](v32);
    v25 = v29;
    v26 = v30;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v23 = sub_268F9AEF4();
  v24 = v7;

  v43[0] = v25;
  v43[1] = v26;
  *&v44 = v23;
  *(&v44 + 1) = v24;
  if (v26)
  {
    sub_268D28874(v43, &v39);
    if (*(&v44 + 1))
    {
      v38 = v39;
      v37 = v44;
      v21 = MEMORY[0x26D62DB50](v39, *(&v39 + 1), v44, *(&v44 + 1));
      sub_268CD9D30(&v37);
      sub_268CD9D30(&v38);
      sub_268CD9D30(v43);
      v22 = v21;
      goto LABEL_17;
    }

    sub_268CD9D30(&v39);
    goto LABEL_19;
  }

  if (*(&v44 + 1))
  {
LABEL_19:
    sub_268D28550(v43);
    v22 = 0;
    goto LABEL_17;
  }

  sub_268CD9D30(v43);
  v22 = 1;
LABEL_17:

  v42 = v22 & 1;
  v18 = [a1 settingMetadata];
  v19 = *(a2 + 16);

  v20 = sub_268D3EFDC(v22 & 1);

  if (v20)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  v16 = sub_268E41A08(v18, 0, 0, v17, 0, 0);
  MEMORY[0x277D82BD8](v18);
  v41 = v16;
  sub_268F9B284();
  v8 = sub_268DC7AE8();
  v15 = *v8;
  MEMORY[0x277D82BE0](*v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v14 = v9;
  MEMORY[0x277D82BE0](v16);
  v40 = v16;
  sub_268CDD0DC();
  sub_268CDD1A4();
  v12 = sub_268F9AE74();
  v13 = v10;
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = sub_268CDD224();
  *v14 = v12;
  v14[1] = v13;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v15);

  a3(v16);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

uint64_t *sub_268E15B2C()
{
  if (qword_280FE5030 != -1)
  {
    swift_once();
  }

  return &qword_280FE81D0;
}

uint64_t sub_268E15B8C()
{
  type metadata accessor for GetAXBoldTextHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE81D0 = result;
  return result;
}

uint64_t sub_268E15BF4()
{
  v1 = *sub_268E15B2C();

  return v1;
}

double sub_268E15C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DBA7A4();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v18 = a1;
  v19 = v3;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268E160A8, v17, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268E15E40(void *a1, uint64_t a2, void (*a3)(id))
{
  v15 = [a1 settingMetadata];
  v16 = *(a2 + 16);

  v17 = sub_268D3E4E4();

  if (v17)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v11 = sub_268E41A08(v15, 0, 0, v12, 0, 0);
  MEMORY[0x277D82BD8](v15);
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v9 = v4;
  MEMORY[0x277D82BE0](v11);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v7 = sub_268F9AE74();
  v8 = v5;
  v9[3] = MEMORY[0x277D837D0];
  v9[4] = sub_268CDD224();
  *v9 = v7;
  v9[1] = v8;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v10);

  a3(v11);

  *&result = MEMORY[0x277D82BD8](v11).n128_u64[0];
  return result;
}

uint64_t sub_268E16408()
{
  sub_268F9B734();
  *v0 = "checkExistence";
  *(v0 + 8) = 14;
  *(v0 + 16) = 2;
  *(v0 + 24) = "decreaseBy";
  *(v0 + 32) = 10;
  *(v0 + 40) = 2;
  *(v0 + 48) = "decreaseByMeasurement";
  *(v0 + 56) = 21;
  *(v0 + 64) = 2;
  *(v0 + 72) = "disable";
  *(v0 + 80) = 7;
  *(v0 + 88) = 2;
  *(v0 + 96) = "enable";
  *(v0 + 104) = 6;
  *(v0 + 112) = 2;
  *(v0 + 120) = "increaseBy";
  *(v0 + 128) = 10;
  *(v0 + 136) = 2;
  *(v0 + 144) = "increaseByMeasurement";
  *(v0 + 152) = 21;
  *(v0 + 160) = 2;
  *(v0 + 168) = "open";
  *(v0 + 176) = 4;
  *(v0 + 184) = 2;
  *(v0 + 192) = "request";
  *(v0 + 200) = 7;
  *(v0 + 208) = 2;
  *(v0 + 216) = "set";
  *(v0 + 224) = 3;
  *(v0 + 232) = 2;
  *(v0 + 240) = "setDateTimeRange";
  *(v0 + 248) = 16;
  *(v0 + 256) = 2;
  *(v0 + 264) = "setDuration";
  *(v0 + 272) = 11;
  *(v0 + 280) = 2;
  *(v0 + 288) = "setLabel";
  *(v0 + 296) = 8;
  *(v0 + 304) = 2;
  *(v0 + 312) = "setMeasurement";
  *(v0 + 320) = 14;
  *(v0 + 328) = 2;
  *(v0 + 336) = "setNumber";
  *(v0 + 344) = 9;
  *(v0 + 352) = 2;
  *(v0 + 360) = "summarise";
  *(v0 + 368) = 9;
  *(v0 + 376) = 2;
  *(v0 + 384) = "toggle";
  *(v0 + 392) = 6;
  *(v0 + 400) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_36:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_36;
    case 2:
      v3 = 2;
      goto LABEL_36;
    case 3:
      v3 = 3;
      goto LABEL_36;
    case 4:
      v3 = 4;
      goto LABEL_36;
    case 5:
      v3 = 5;
      goto LABEL_36;
    case 6:
      v3 = 6;
      goto LABEL_36;
    case 7:
      v3 = 7;
      goto LABEL_36;
    case 8:
      v3 = 8;
      goto LABEL_36;
    case 9:
      v3 = 9;
      goto LABEL_36;
    case 10:
      v3 = 10;
      goto LABEL_36;
    case 11:
      v3 = 11;
      goto LABEL_36;
    case 12:
      v3 = 12;
      goto LABEL_36;
    case 13:
      v3 = 13;
      goto LABEL_36;
    case 14:
      v3 = 14;
      goto LABEL_36;
    case 15:
      v3 = 15;
      goto LABEL_36;
    case 16:
      v3 = 16;
      goto LABEL_36;
  }

  return 17;
}

unint64_t sub_268E169AC()
{
  v2 = qword_2802DD098;
  if (!qword_2802DD098)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD098);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E16AF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268E16408();
  *a2 = result;
  return result;
}

uint64_t sub_268E16B30@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268E16100();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268E16B64(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xEF)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 16) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 239;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 17;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268E16CCC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xEF)
  {
    v5 = ((a3 + 16) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xEF)
  {
    v4 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 16;
    }
  }

  return result;
}

unint64_t sub_268E16EF4()
{
  v2 = qword_2802DD0A0;
  if (!qword_2802DD0A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD0A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E16F70(uint64_t a1)
{
  v11[1] = a1;
  v5 = *sub_268F2848C();

  v11[0] = v5;
  v7 = sub_268F99F54();
  v8 = v1;
  if (v1)
  {
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = sub_268F9AEF4();
    v10 = v2;
  }

  v6[0] = v9;
  v6[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268DA6BFC();
  v4 = sub_268F9AFC4();
  sub_268CD9D30(v6);
  sub_268CD7930(v11);
  return v4 & 1;
}

uint64_t sub_268E17098(uint64_t a1)
{
  v11[1] = a1;
  v5 = *sub_268F2B678();

  v11[0] = v5;
  v7 = sub_268F99F54();
  v8 = v1;
  if (v1)
  {
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = sub_268F9AEF4();
    v10 = v2;
  }

  v6[0] = v9;
  v6[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268DA6BFC();
  v4 = sub_268F9AFC4();
  sub_268CD9D30(v6);
  sub_268CD7930(v11);
  return v4 & 1;
}

uint64_t sub_268E171C0()
{
  result = sub_268F9AEF4();
  qword_2802F1470 = result;
  qword_2802F1478 = v1;
  return result;
}

uint64_t *sub_268E17204()
{
  if (qword_2802DB588 != -1)
  {
    swift_once();
  }

  return &qword_2802F1470;
}

uint64_t sub_268E17264()
{
  v0 = sub_268E17204();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268E172A0()
{
  result = sub_268F9AEF4();
  qword_2802F1480 = result;
  qword_2802F1488 = v1;
  return result;
}

uint64_t *sub_268E172E4()
{
  if (qword_2802DB590 != -1)
  {
    swift_once();
  }

  return &qword_2802F1480;
}

uint64_t sub_268E17344()
{
  v0 = sub_268E172E4();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268E17380()
{
  result = sub_268F9AEF4();
  qword_2802F1490 = result;
  qword_2802F1498 = v1;
  return result;
}

uint64_t *sub_268E173C4()
{
  if (qword_2802DB598 != -1)
  {
    swift_once();
  }

  return &qword_2802F1490;
}

uint64_t sub_268E17424()
{
  v0 = sub_268E173C4();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268E17460()
{
  v5 = sub_268F9B734();
  v4 = v0;
  v1 = sub_268E172E4();
  sub_268D28874(v1, v4);
  v2 = sub_268E173C4();
  sub_268D28874(v2, v4 + 2);
  result = v5;
  sub_268CD0F7C();
  qword_2802F14A0 = v5;
  return result;
}

uint64_t *sub_268E174CC()
{
  if (qword_2802DB5A0 != -1)
  {
    swift_once();
  }

  return &qword_2802F14A0;
}

uint64_t sub_268E1752C()
{
  v1 = *sub_268E174CC();

  return v1;
}

uint64_t sub_268E1755C()
{
  v7 = sub_268F9B734();
  v6 = v0;
  *v0 = sub_268EC63FC();
  v6[1] = v1;
  v6[2] = sub_268EC63FC();
  v6[3] = v2;
  v3 = sub_268EC63FC();
  result = v7;
  v6[4] = v3;
  v6[5] = v5;
  sub_268CD0F7C();
  qword_2802F14A8 = v7;
  return result;
}

uint64_t *sub_268E175F0()
{
  if (qword_2802DB5A8 != -1)
  {
    swift_once();
  }

  return &qword_2802F14A8;
}

uint64_t sub_268E17650()
{
  v1 = *sub_268E175F0();

  return v1;
}

id sub_268E17680(uint64_t a1, void *a2, void *a3)
{
  v94 = a2;
  v93 = a3;
  v101 = 0;
  v104 = sub_268D91218;
  v81 = "NLToSiriKitIntentConverter userDialogAct as? UserStatedTask invalid";
  v82 = "Resulting INIntent: %@";
  v83 = "NLToSiriKitIntentConverter userDialogAct.userStarted.task serialization error";
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v108 = 0;
  v107 = 0;
  v90 = 0;
  v84 = sub_268F99E04();
  v85 = *(v84 - 8);
  v86 = v84 - 8;
  v87 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v84);
  v88 = &v35 - v87;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC748, &qword_268F9F1F8);
  v89 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v100 = &v35 - v89;
  v91 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7A8, &unk_268F9F520) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v90);
  v92 = &v35 - v91;
  v95 = sub_268F99C94();
  v96 = *(v95 - 8);
  v97 = v95 - 8;
  v98 = (*(v96 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v99 = &v35 - v98;
  v113 = &v35 - v98;
  v112 = a1;
  v111 = v5;
  v110 = v6;
  v109 = sub_268F99CA4();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC750, &qword_268F9F200);
  sub_268D898B8();
  v7 = v103;
  sub_268F9AF94();
  v105 = v7;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    sub_268CD7930(&v109);
    v78 = sub_268F99DE4();
    v79 = *(v78 - 8);
    v80 = v78 - 8;
    if ((*(v79 + 48))(v100, 1) == 1)
    {
      sub_268D8809C(v100);
      (*(v96 + 56))(v92, 1, 1, v95);
    }

    else
    {
      sub_268F99D94();
      (*(v79 + 8))(v100, v78);
      sub_268F99DF4();
      (*(v85 + 8))(v88, v84);
      (*(v96 + 56))(v92, 0, 1, v95);
    }

    if ((*(v96 + 48))(v92, 1, v95) == 1)
    {
      sub_268D9125C(v92);
      v38 = sub_268F9B294();
      v40 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v41 = 0;
      v39 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v40);
      v43 = sub_268F9A7E4();
      sub_268D91304();
      v42 = 1;
      v45 = swift_allocError();
      v44 = v28;
      v29 = sub_268F9AEF4();
      v30 = v43;
      v31 = v29;
      v32 = v44;
      *v44 = v31;
      v32[1] = v33;
      v34 = *MEMORY[0x277D61E00];
      (*(*(v30 - 8) + 104))();
      swift_willThrow();
      v55 = v45;
      return v35;
    }

    (*(v96 + 32))(v99, v92, v95);
    v8 = v105;
    v9 = sub_268F99E44();
    v75 = v8;
    v76 = v9;
    v77 = v8;
    if (!v8)
    {
      v73 = v76;
      v74 = 0;
      goto LABEL_7;
    }
  }

  v37 = 0;

  v73 = 0;
  v74 = v37;
LABEL_7:
  v71 = v74;
  v72 = v73;
  if (v73)
  {
    v70 = v72;
    v10 = v71;
    v66 = v72;
    v108 = v72;
    v11 = sub_268E181EC(v72, v94, v93);
    v67 = v10;
    v68 = v11;
    v69 = v10;
    if (!v10)
    {
      v65 = v68;
      v107 = v68;
      v62 = sub_268F9B284();
      v64 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v64);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v61 = sub_268F9B734();
      v59 = v12;
      MEMORY[0x277D82BE0](v65);
      v56 = &v106;
      v106 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD0A8, &qword_268FA3288);
      v57 = sub_268F9AE64();
      v58 = v13;
      v59[3] = MEMORY[0x277D837D0];
      v14 = sub_268CDD224();
      v15 = v57;
      v16 = v58;
      v17 = v59;
      v18 = v14;
      v19 = v61;
      v59[4] = v18;
      *v17 = v15;
      v17[1] = v16;
      sub_268CD0F7C();
      v63 = v19;
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v64);

      (*(v96 + 8))(v99, v95);
      return v65;
    }

    v36 = v69;

    (*(v96 + 8))(v99, v95);
    v55 = v36;
  }

  else
  {
    v46 = sub_268F9B294();
    v48 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v49 = 0;
    v47 = sub_268F9B734();
    v51 = 77;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v48);
    v52 = sub_268F9A7E4();
    sub_268D91304();
    v50 = 1;
    v54 = swift_allocError();
    v53 = v21;
    v22 = sub_268F9AEF4();
    v23 = v52;
    v24 = v22;
    v25 = v53;
    *v53 = v24;
    v25[1] = v26;
    v27 = *MEMORY[0x277D61E00];
    (*(*(v23 - 8) + 104))();
    swift_willThrow();
    (*(v96 + 8))(v99, v95);
    v55 = v54;
  }

  return v35;
}

id sub_268E181EC(uint64_t a1, void *a2, void *a3)
{
  v524 = a1;
  v522 = a2;
  v523 = a3;
  v482 = "UsoTask is no verb.";
  v483 = sub_268E30BB4;
  v484 = "Could not convert noVerb task with settingId: %@";
  v485 = "No Verb task is for labeled setting: %@.";
  v486 = "No Verb task is for numeric setting: %@.";
  v487 = "No Verb task is for binary setting: %@.";
  v488 = "noVerb ChatGPT requests should not be handled by Settings as per HI";
  v489 = "Could not convert noVerb task without settingId: %@";
  v490 = sub_268E30760;
  v491 = sub_268CD7608;
  v492 = sub_268CD7600;
  v493 = sub_268CD7600;
  v494 = sub_268CD7614;
  v495 = "ChatGPT request while Montara disabled returns no op.";
  v496 = sub_268E30760;
  v497 = sub_268CD7608;
  v498 = sub_268CD7600;
  v499 = sub_268CD7600;
  v500 = sub_268CD7614;
  v501 = sub_268E30760;
  v502 = sub_268CD7608;
  v503 = sub_268CD7600;
  v504 = sub_268CD7600;
  v505 = sub_268CD7614;
  v506 = sub_268E30760;
  v507 = sub_268CD7608;
  v508 = sub_268CD7600;
  v509 = sub_268CD7600;
  v510 = sub_268CD7614;
  v511 = sub_268E30760;
  v512 = sub_268CD7608;
  v513 = sub_268CD7600;
  v514 = sub_268CD7600;
  v515 = sub_268CD7614;
  v516 = sub_268E30760;
  v517 = sub_268CD7608;
  v518 = sub_268CD7600;
  v519 = sub_268CD7600;
  v520 = sub_268CD7614;
  v521 = "NLToSiriKitIntentConverter userStartUSOGraph has no tasks";
  v599 = 0;
  v598 = 0;
  v597 = 0;
  v596 = 0;
  v595 = 0;
  v592 = 0;
  v570 = 0;
  v571 = 0;
  v554 = 0;
  v551 = 0;
  v552 = 0;
  v541 = 0;
  v536 = 0;
  v525 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v524);
  v526 = v152 - v525;
  v527 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v528 = v152 - v527;
  v529 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v6);
  v530 = v152 - v529;
  v599 = v152 - v529;
  v598 = v8;
  v597 = v9;
  v596 = v10;
  v531 = MEMORY[0x26D62CD00](v7);
  v595 = v531;
  v594 = v531;
  v532 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7D0, &qword_268F9F550);
  sub_268D9BF0C();
  sub_268F9B234();
  v533 = v593;
  if (v593)
  {
    v480 = v533;
    v479 = v533;
    v592 = v533;

    sub_268F9A204();

    if (v591[3])
    {
      sub_268F9A3A4();
      if (swift_dynamicCast())
      {
        v478 = v534;
      }

      else
      {
        v478 = 0;
      }

      v477 = v478;
    }

    else
    {
      sub_268D28414(v591);
      v477 = 0;
    }

    v476 = v477;
    if (v477)
    {
      v475 = v476;
      v473 = v476;
      v554 = v476;
      v470 = sub_268F9B284();
      v472 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v472);
      v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v471 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v472);

      sub_268F99E84();
      v474 = v553[2];

      if (!v474)
      {
        goto LABEL_66;
      }

      v468 = v474;
      v466 = v474;
      v11 = sub_268D8E220();
      v464 = *v11;
      v465 = v11[1];

      v467 = sub_268F9A0A4();

      if (!v467)
      {
LABEL_66:
        v56 = sub_268F99F64();
        (*(*(v56 - 8) + 56))(v528, 1);
        v460 = v481;
LABEL_16:
        v454 = v460;

        v455 = sub_268F99F64();
        v456 = *(v455 - 8);
        v457 = v455 - 8;
        v458 = *(v456 + 48);
        v459 = v456 + 48;
        if ((v458)(v528, 1) == 1)
        {

          sub_268F99E84();
          v453 = v553[1];

          if (!v453)
          {
            goto LABEL_25;
          }

          v452 = v453;
          v450 = v453;
          v13 = sub_268DDA5D0();
          v448 = *v13;
          v449 = v13[1];

          v451 = sub_268F9A0A4();

          if (v451)
          {
            v447 = v451;
            v446 = v451;
            v535[1] = v451;
            v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
            sub_268E30B2C();
            sub_268F9B234();
          }

          else
          {
LABEL_25:
            (*(v456 + 56))(v530, 1, 1, v455);
          }

          if (v458(v528, 1, v455) != 1)
          {
            sub_268D9C0BC(v528);
          }
        }

        else
        {
          (*(v456 + 32))(v530, v528, v455);
          (*(v456 + 56))(v530, 0, 1, v455);
        }

        sub_268D9BF94(v530, v526);
        if (v458(v526, 1, v455) == 1)
        {
          sub_268D9C0BC(v526);
          v443 = 0;
          v444 = 0;
        }

        else
        {
          v441 = sub_268F99F44();
          v442 = v14;
          (*(v456 + 8))(v526, v455);
          v443 = v441;
          v444 = v442;
        }

        v439 = v444;
        v440 = v443;
        if (v444)
        {
          v437 = v440;
          v438 = v439;
          v435 = v439;
          v436 = v440;
          v551 = v440;
          v552 = v439;
          v15 = sub_268F28C88(v440, v439);
          if (v15)
          {

            v430 = 0;
            v431 = sub_268F284EC(v436, v435, v522, 0, 0);

            v536 = v431;
            sub_268CD7620();
            v432 = sub_268DA95CC(v431, 3, v430);

            sub_268D9C0BC(v530);

            v433 = v432;
            v434 = v454;
            return v433;
          }

          v16._countAndFlagsBits = v436;
          v16._object = v435;
          BinarySettingIdentifier.init(rawValue:)(v16);
          v549 = v550;
          v429 = v550 != 65;
          if (v550 != 65)
          {
            v424 = sub_268F9B284();
            v426 = *sub_268DC7EA8();
            MEMORY[0x277D82BE0](v426);
            v423 = sub_268F9B734();
            v422 = v17;

            v422[3] = MEMORY[0x277D837D0];
            v18 = sub_268CDD224();
            v19 = v422;
            v20 = v436;
            v21 = v435;
            v22 = v18;
            v23 = v423;
            v422[4] = v22;
            *v19 = v20;
            v19[1] = v21;
            sub_268CD0F7C();
            v425 = v23;
            sub_268F9AC14();

            MEMORY[0x277D82BD8](v426);
            v537 = 55;
            v24 = BinarySettingIdentifier.rawValue.getter();
            v427 = v25;
            v428 = MEMORY[0x26D62DB50](v436, v435, v24);

            if (v428)
            {
              v417 = sub_268F9B284();
              v419 = *sub_268DC7EA8();
              MEMORY[0x277D82BE0](v419);
              v420 = 0;
              v418 = sub_268F9B734();
              sub_268F9AC14();

              MEMORY[0x277D82BD8](v419);
              sub_268CD7620();
              v421 = sub_268DA95CC(v420, v420, v420);

              sub_268D9C0BC(v530);

              v433 = v421;
            }

            else
            {
              v415 = 0;
              sub_268D2E630();

              v414 = sub_268F284EC(v436, v435, v522, v415, v415);

              v416 = sub_268E1B5D8(v414);

              sub_268D9C0BC(v530);

              v433 = v416;
            }

            v434 = v454;
            return v433;
          }

          v26._countAndFlagsBits = v436;
          v26._object = v435;
          NumericSettingIdentifier.init(rawValue:)(v26);
          v547 = v548;
          v413 = v548 != 13;
          if (v548 != 13)
          {
            v409 = sub_268F9B284();
            v411 = *sub_268DC7EA8();
            MEMORY[0x277D82BE0](v411);
            v408 = sub_268F9B734();
            v407 = v27;

            v407[3] = MEMORY[0x277D837D0];
            v28 = sub_268CDD224();
            v29 = v436;
            v30 = v407;
            v31 = v435;
            v32 = v28;
            v33 = v408;
            v407[4] = v32;
            *v30 = v29;
            v30[1] = v31;
            sub_268CD0F7C();
            v410 = v33;
            sub_268F9AC14();

            MEMORY[0x277D82BD8](v411);

            v412 = sub_268F99E74();

            if (!v412)
            {
              goto LABEL_59;
            }

            v406 = v412;
            v404 = v412;
            v540 = v412;
            v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7F0, &qword_268F9F570);
            sub_268DA6E24();
            sub_268F9B234();
            v405 = v539;

            if (v405)
            {
              v402 = v405;
              v399 = v405;
              sub_268F9A064();
              v400 = v538;

              v401 = v400;
            }

            else
            {
LABEL_59:
              v401 = 0;
            }

            v397 = v401;
            v398 = sub_268F28D48(v401);

            v543 = v398;

            if (v543)
            {
              v544 = v543;
            }

            else
            {

              sub_268F99E84();
              v396 = v542;

              if (v396 && (v395 = v396, v393 = v396, v394 = sub_268F9A1F4(), , v394))
              {
                v392 = v394;
                v389 = v394;
                v390 = sub_268F9A124();

                v391 = v390;
              }

              else
              {
                v391 = 0;
              }

              v387 = v391;
              v388 = sub_268F29294(v391);

              v544 = v388;
              if (v543)
              {
                sub_268D35038(&v543);
              }
            }

            v385 = v544;
            v541 = v544;
            v384 = 0;
            sub_268D2E630();

            v383 = sub_268F284EC(v436, v435, v522, v384, v385);

            v386 = sub_268E1B5D8(v383);
            MEMORY[0x277D82BD8](v385);

            sub_268D9C0BC(v530);

            v433 = v386;
            v434 = v454;
            return v433;
          }

          v546 = sub_268E50F4C();
          v382 = v546 != 2;
          if (v546 != 2)
          {
            v376 = sub_268F9B284();
            v378 = *sub_268DC7EA8();
            MEMORY[0x277D82BE0](v378);
            v375 = sub_268F9B734();
            v374 = v34;

            v374[3] = MEMORY[0x277D837D0];
            v35 = sub_268CDD224();
            v36 = v374;
            v37 = v436;
            v38 = v435;
            v39 = v35;
            v40 = v375;
            v374[4] = v39;
            *v36 = v37;
            v36[1] = v38;
            sub_268CD0F7C();
            v377 = v40;
            sub_268F9AC14();

            MEMORY[0x277D82BD8](v378);
            v380 = 0;
            sub_268D2E630();

            v379 = sub_268F284EC(v436, v435, v522, v380, v380);

            v381 = sub_268E1B5D8(v379);

            sub_268D9C0BC(v530);

            v433 = v381;
            v434 = v454;
            return v433;
          }

          if (sub_268E1B620(v436, v435))
          {
            v372 = 0;
            sub_268DA96FC();

            v370 = v545;
            memset(v545, 0, sizeof(v545));
            v371 = sub_268F284EC(v436, v435, v545, v372, v372);
            sub_268D28414(v370);

            v373 = sub_268E1B6E0(v371, v372);

            sub_268D9C0BC(v530);

            v433 = v373;
            v434 = v454;
            return v433;
          }

          v367 = sub_268F9B284();
          v369 = *sub_268DC7EA8();
          MEMORY[0x277D82BE0](v369);
          v366 = sub_268F9B734();
          v365 = v41;

          v365[3] = MEMORY[0x277D837D0];
          v42 = sub_268CDD224();
          v43 = v436;
          v44 = v365;
          v45 = v435;
          v46 = v42;
          v47 = v366;
          v365[4] = v46;
          *v44 = v43;
          v44[1] = v45;
          sub_268CD0F7C();
          v368 = v47;
          sub_268F9AC14();

          MEMORY[0x277D82BD8](v369);
        }

        v361 = sub_268F9B284();
        v363 = *sub_268DC7EA8();
        MEMORY[0x277D82BE0](v363);
        v360 = sub_268F9B734();
        v359 = v48;

        v356 = v553;
        v553[0] = v473;
        v364 = 0;
        sub_268F9A3A4();
        v357 = sub_268F9AE64();
        v358 = v49;
        v359[3] = MEMORY[0x277D837D0];
        v50 = sub_268CDD224();
        v51 = v357;
        v52 = v358;
        v53 = v359;
        v54 = v50;
        v55 = v360;
        v359[4] = v54;
        *v53 = v51;
        v53[1] = v52;
        sub_268CD0F7C();
        v362 = v55;
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v363);
        sub_268D9C0BC(v530);

        v433 = v364;
        v434 = v454;
        return v433;
      }

      v463 = v467;
      v535[0] = v467;
      v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
      sub_268DA5FC0();
      v12 = v481;
      sub_268F9AF94();
      v462 = v12;
      if (!v12)
      {
        sub_268CD7930(v535);
        v460 = v462;
        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_121;
    }

    if (sub_268F29620(v479))
    {
      v355 = sub_268F9B284();
      v354 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v354);

      v344 = 17;
      v346 = 7;
      v348 = swift_allocObject();
      *(v348 + 16) = 32;
      v349 = swift_allocObject();
      *(v349 + 16) = 8;
      v345 = 32;
      v57 = swift_allocObject();
      v58 = v479;
      v347 = v57;
      *(v57 + 16) = v516;
      *(v57 + 24) = v58;
      v59 = swift_allocObject();
      v60 = v347;
      v351 = v59;
      *(v59 + 16) = v517;
      *(v59 + 24) = v60;
      v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      v350 = sub_268F9B734();
      v352 = v61;

      v62 = v348;
      v63 = v352;
      *v352 = v518;
      v63[1] = v62;

      v64 = v349;
      v65 = v352;
      v352[2] = v519;
      v65[3] = v64;

      v66 = v351;
      v67 = v352;
      v352[4] = v520;
      v67[5] = v66;
      sub_268CD0F7C();

      if (os_log_type_enabled(v354, v355))
      {
        v337 = sub_268F9B3A4();
        v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v338 = sub_268CD5448(0);
        v339 = sub_268CD5448(1);
        v340 = &v559;
        v559 = v337;
        v341 = &v558;
        v558 = v338;
        v342 = &v557;
        v557 = v339;
        sub_268CD549C(2, &v559);
        sub_268CD549C(1, v340);
        v68 = v481;
        v555 = v518;
        v556 = v348;
        sub_268CD54B0(&v555, v340, v341, v342);
        v343 = v68;
        if (v68)
        {

          __break(1u);
        }

        else
        {
          v555 = v519;
          v556 = v349;
          sub_268CD54B0(&v555, &v559, &v558, &v557);
          v334 = 0;
          v555 = v520;
          v556 = v351;
          sub_268CD54B0(&v555, &v559, &v558, &v557);
          v333 = 0;
          _os_log_impl(&dword_268CBE000, v354, v355, "Verb is %s, attempting to convert to INLabeledSettingIntent based on setting id.", v337, 0xCu);
          sub_268CD54FC(v338);
          sub_268CD54FC(v339);
          sub_268F9B384();

          v335 = v333;
        }
      }

      else
      {

        v335 = v481;
      }

      v329 = v335;
      MEMORY[0x277D82BD8](v354);
      v69 = v329;
      v70 = sub_268E1B74C(v479, v523, v522);
      v330 = v69;
      v331 = v70;
      v332 = v69;
      if (!v69)
      {
        v328 = v331;

        v433 = v328;
        v434 = v330;
        return v433;
      }

LABEL_121:
      v157 = v332;

      v167 = v157;
      return v152[1];
    }

    if (sub_268F2A01C(v479))
    {
      v327 = sub_268F9B284();
      v326 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v326);

      v316 = 17;
      v318 = 7;
      v320 = swift_allocObject();
      *(v320 + 16) = 32;
      v321 = swift_allocObject();
      *(v321 + 16) = 8;
      v317 = 32;
      v71 = swift_allocObject();
      v72 = v479;
      v319 = v71;
      *(v71 + 16) = v511;
      *(v71 + 24) = v72;
      v73 = swift_allocObject();
      v74 = v319;
      v323 = v73;
      *(v73 + 16) = v512;
      *(v73 + 24) = v74;
      v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      v322 = sub_268F9B734();
      v324 = v75;

      v76 = v320;
      v77 = v324;
      *v324 = v513;
      v77[1] = v76;

      v78 = v321;
      v79 = v324;
      v324[2] = v514;
      v79[3] = v78;

      v80 = v323;
      v81 = v324;
      v324[4] = v515;
      v81[5] = v80;
      sub_268CD0F7C();

      if (os_log_type_enabled(v326, v327))
      {
        v309 = sub_268F9B3A4();
        v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v310 = sub_268CD5448(0);
        v311 = sub_268CD5448(1);
        v312 = &v564;
        v564 = v309;
        v313 = &v563;
        v563 = v310;
        v314 = &v562;
        v562 = v311;
        sub_268CD549C(2, &v564);
        sub_268CD549C(1, v312);
        v82 = v481;
        v560 = v513;
        v561 = v320;
        sub_268CD54B0(&v560, v312, v313, v314);
        v315 = v82;
        if (v82)
        {

          __break(1u);
        }

        else
        {
          v560 = v514;
          v561 = v321;
          sub_268CD54B0(&v560, &v564, &v563, &v562);
          v306 = 0;
          v560 = v515;
          v561 = v323;
          sub_268CD54B0(&v560, &v564, &v563, &v562);
          v305 = 0;
          _os_log_impl(&dword_268CBE000, v326, v327, "Verb is %s, attempting to convert to INOpenSettingIntent.", v309, 0xCu);
          sub_268CD54FC(v310);
          sub_268CD54FC(v311);
          sub_268F9B384();

          v307 = v305;
        }
      }

      else
      {

        v307 = v481;
      }

      v301 = v307;
      MEMORY[0x277D82BD8](v326);
      v83 = v301;
      v84 = sub_268E1E080(v479);
      v302 = v83;
      v303 = v84;
      v304 = v83;
      if (!v83)
      {
        v300 = v303;

        v433 = v300;
        v434 = v302;
        return v433;
      }

      v156 = v304;

      v167 = v156;
    }

    else
    {
      v298 = sub_268F2A84C(v479);
      v299 = v85;
      if (v85)
      {
        v296 = v298;
        v297 = v299;
        v294 = v299;
        v295 = v298;
        v570 = v298;
        v571 = v299;
        if (AFMontaraRestricted())
        {
          v289 = sub_268F9B284();
          v291 = *sub_268DC7EA8();
          MEMORY[0x277D82BE0](v291);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
          v292 = 0;
          v290 = sub_268F9B734();
          sub_268F9AC14();

          MEMORY[0x277D82BD8](v291);
          sub_268CD7620();
          v293 = sub_268DA95CC(v292, v292, v292);

          v433 = v293;
          v434 = v481;
        }

        else
        {
          v288 = sub_268F9B284();
          v287 = *sub_268DC7EA8();
          MEMORY[0x277D82BE0](v287);

          v277 = 17;
          v279 = 7;
          v281 = swift_allocObject();
          *(v281 + 16) = 32;
          v282 = swift_allocObject();
          *(v282 + 16) = 8;
          v278 = 32;
          v86 = swift_allocObject();
          v87 = v479;
          v280 = v86;
          *(v86 + 16) = v490;
          *(v86 + 24) = v87;
          v88 = swift_allocObject();
          v89 = v280;
          v284 = v88;
          *(v88 + 16) = v491;
          *(v88 + 24) = v89;
          v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
          v283 = sub_268F9B734();
          v285 = v90;

          v91 = v281;
          v92 = v285;
          *v285 = v492;
          v92[1] = v91;

          v93 = v282;
          v94 = v285;
          v285[2] = v493;
          v94[3] = v93;

          v95 = v284;
          v96 = v285;
          v285[4] = v494;
          v96[5] = v95;
          sub_268CD0F7C();

          if (os_log_type_enabled(v287, v288))
          {
            v270 = sub_268F9B3A4();
            v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
            v271 = sub_268CD5448(0);
            v272 = sub_268CD5448(1);
            v273 = &v569;
            v569 = v270;
            v274 = &v568;
            v568 = v271;
            v275 = &v567;
            v567 = v272;
            sub_268CD549C(2, &v569);
            sub_268CD549C(1, v273);
            v97 = v481;
            v565 = v492;
            v566 = v281;
            sub_268CD54B0(&v565, v273, v274, v275);
            v276 = v97;
            if (v97)
            {

              __break(1u);
            }

            else
            {
              v565 = v493;
              v566 = v282;
              sub_268CD54B0(&v565, &v569, &v568, &v567);
              v267 = 0;
              v565 = v494;
              v566 = v284;
              sub_268CD54B0(&v565, &v569, &v568, &v567);
              v266 = 0;
              _os_log_impl(&dword_268CBE000, v287, v288, "Verb is %s, converting chatGPT intent to INOpenSettingIntent.", v270, 0xCu);
              sub_268CD54FC(v271);
              sub_268CD54FC(v272);
              sub_268F9B384();

              v268 = v266;
            }
          }

          else
          {

            v268 = v481;
          }

          v265 = v268;
          MEMORY[0x277D82BD8](v287);
          v263 = 0;
          sub_268DA96FC();

          v262 = sub_268F284EC(v295, v294, v522, v263, v263);

          v264 = sub_268E1B6E0(v262, v263);

          v433 = v264;
          v434 = v265;
        }

        return v433;
      }

      if (sub_268F2AFA8(v479))
      {
        v261 = sub_268F9B284();
        v260 = *sub_268DC7EA8();
        MEMORY[0x277D82BE0](v260);

        v250 = 17;
        v252 = 7;
        v254 = swift_allocObject();
        *(v254 + 16) = 32;
        v255 = swift_allocObject();
        *(v255 + 16) = 8;
        v251 = 32;
        v98 = swift_allocObject();
        v99 = v479;
        v253 = v98;
        *(v98 + 16) = v506;
        *(v98 + 24) = v99;
        v100 = swift_allocObject();
        v101 = v253;
        v257 = v100;
        *(v100 + 16) = v507;
        *(v100 + 24) = v101;
        v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
        v256 = sub_268F9B734();
        v258 = v102;

        v103 = v254;
        v104 = v258;
        *v258 = v508;
        v104[1] = v103;

        v105 = v255;
        v106 = v258;
        v258[2] = v509;
        v106[3] = v105;

        v107 = v257;
        v108 = v258;
        v258[4] = v510;
        v108[5] = v107;
        sub_268CD0F7C();

        if (os_log_type_enabled(v260, v261))
        {
          v243 = sub_268F9B3A4();
          v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
          v244 = sub_268CD5448(0);
          v245 = sub_268CD5448(1);
          v246 = &v576;
          v576 = v243;
          v247 = &v575;
          v575 = v244;
          v248 = &v574;
          v574 = v245;
          sub_268CD549C(2, &v576);
          sub_268CD549C(1, v246);
          v109 = v481;
          v572 = v508;
          v573 = v254;
          sub_268CD54B0(&v572, v246, v247, v248);
          v249 = v109;
          if (v109)
          {

            __break(1u);
          }

          else
          {
            v572 = v509;
            v573 = v255;
            sub_268CD54B0(&v572, &v576, &v575, &v574);
            v240 = 0;
            v572 = v510;
            v573 = v257;
            sub_268CD54B0(&v572, &v576, &v575, &v574);
            v239 = 0;
            _os_log_impl(&dword_268CBE000, v260, v261, "Verb is %s, attempting to convert to INSetBinarySettingIntent.", v243, 0xCu);
            sub_268CD54FC(v244);
            sub_268CD54FC(v245);
            sub_268F9B384();

            v241 = v239;
          }
        }

        else
        {

          v241 = v481;
        }

        v235 = v241;
        MEMORY[0x277D82BD8](v260);
        v110 = v235;
        v111 = sub_268E1F83C(v479);
        v236 = v110;
        v237 = v111;
        v238 = v110;
        if (!v110)
        {
          v234 = v237;

          v433 = v234;
          v434 = v236;
          return v433;
        }

        v155 = v238;

        v167 = v155;
      }

      else
      {
        v228 = *sub_268DDAF28();

        v232 = &v590;
        v590 = v228;
        v112 = sub_268F9A6D4();
        v231 = v589;
        v589[0] = v112;
        v589[1] = v113;
        v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
        v230 = sub_268DA6BFC();
        v233 = sub_268F9AFC4();
        sub_268CD9D30(v231);
        sub_268CD7930(v232);
        if (v233)
        {
          v227 = sub_268F9B284();
          v226 = *sub_268DC7EA8();
          MEMORY[0x277D82BE0](v226);

          v216 = 17;
          v218 = 7;
          v220 = swift_allocObject();
          *(v220 + 16) = 32;
          v221 = swift_allocObject();
          *(v221 + 16) = 8;
          v217 = 32;
          v114 = swift_allocObject();
          v115 = v479;
          v219 = v114;
          *(v114 + 16) = v501;
          *(v114 + 24) = v115;
          v116 = swift_allocObject();
          v117 = v219;
          v223 = v116;
          *(v116 + 16) = v502;
          *(v116 + 24) = v117;
          v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
          v222 = sub_268F9B734();
          v224 = v118;

          v119 = v220;
          v120 = v224;
          *v224 = v503;
          v120[1] = v119;

          v121 = v221;
          v122 = v224;
          v224[2] = v504;
          v122[3] = v121;

          v123 = v223;
          v124 = v224;
          v224[4] = v505;
          v124[5] = v123;
          sub_268CD0F7C();

          if (os_log_type_enabled(v226, v227))
          {
            v209 = sub_268F9B3A4();
            v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
            v210 = sub_268CD5448(0);
            v211 = sub_268CD5448(1);
            v212 = &v581;
            v581 = v209;
            v213 = &v580;
            v580 = v210;
            v214 = &v579;
            v579 = v211;
            sub_268CD549C(2, &v581);
            sub_268CD549C(1, v212);
            v125 = v481;
            v577 = v503;
            v578 = v220;
            sub_268CD54B0(&v577, v212, v213, v214);
            v215 = v125;
            if (v125)
            {

              __break(1u);
            }

            else
            {
              v577 = v504;
              v578 = v221;
              sub_268CD54B0(&v577, &v581, &v580, &v579);
              v206 = 0;
              v577 = v505;
              v578 = v223;
              sub_268CD54B0(&v577, &v581, &v580, &v579);
              v205 = 0;
              _os_log_impl(&dword_268CBE000, v226, v227, "Verb is %s, attempting to convert to INGetSettingIntent.", v209, 0xCu);
              sub_268CD54FC(v210);
              sub_268CD54FC(v211);
              sub_268F9B384();

              v207 = v205;
            }
          }

          else
          {

            v207 = v481;
          }

          v201 = v207;
          MEMORY[0x277D82BD8](v226);
          v126 = v201;
          v127 = sub_268E23F1C(v479, v522);
          v202 = v126;
          v203 = v127;
          v204 = v126;
          if (!v126)
          {
            v200 = v203;

            v433 = v200;
            v434 = v202;
            return v433;
          }

          v154 = v204;

          v167 = v154;
        }

        else
        {
          v196 = *sub_268DDB2A8();

          v198 = &v588;
          v588 = v196;
          v128 = sub_268F9A6D4();
          v197 = v587;
          v587[0] = v128;
          v587[1] = v129;
          v199 = sub_268F9AFC4();
          sub_268CD9D30(v197);
          sub_268CD7930(v198);
          if ((v199 & 1) == 0)
          {

            v433 = 0;
            v434 = v481;
            return v433;
          }

          v195 = sub_268F9B284();
          v194 = *sub_268DC7EA8();
          MEMORY[0x277D82BE0](v194);

          v184 = 17;
          v186 = 7;
          v188 = swift_allocObject();
          *(v188 + 16) = 32;
          v189 = swift_allocObject();
          *(v189 + 16) = 8;
          v185 = 32;
          v130 = swift_allocObject();
          v131 = v479;
          v187 = v130;
          *(v130 + 16) = v496;
          *(v130 + 24) = v131;
          v132 = swift_allocObject();
          v133 = v187;
          v191 = v132;
          *(v132 + 16) = v497;
          *(v132 + 24) = v133;
          v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
          v190 = sub_268F9B734();
          v192 = v134;

          v135 = v188;
          v136 = v192;
          *v192 = v498;
          v136[1] = v135;

          v137 = v189;
          v138 = v192;
          v192[2] = v499;
          v138[3] = v137;

          v139 = v191;
          v140 = v192;
          v192[4] = v500;
          v140[5] = v139;
          sub_268CD0F7C();

          if (os_log_type_enabled(v194, v195))
          {
            v177 = sub_268F9B3A4();
            v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
            v178 = sub_268CD5448(0);
            v179 = sub_268CD5448(1);
            v180 = &v586;
            v586 = v177;
            v181 = &v585;
            v585 = v178;
            v182 = &v584;
            v584 = v179;
            sub_268CD549C(2, &v586);
            sub_268CD549C(1, v180);
            v141 = v481;
            v582 = v498;
            v583 = v188;
            sub_268CD54B0(&v582, v180, v181, v182);
            v183 = v141;
            if (v141)
            {

              __break(1u);
            }

            else
            {
              v582 = v499;
              v583 = v189;
              sub_268CD54B0(&v582, &v586, &v585, &v584);
              v174 = 0;
              v582 = v500;
              v583 = v191;
              sub_268CD54B0(&v582, &v586, &v585, &v584);
              v173 = 0;
              _os_log_impl(&dword_268CBE000, v194, v195, "Verb is %s, attempting to convert to INSetNumericSettingIntent.", v177, 0xCu);
              sub_268CD54FC(v178);
              sub_268CD54FC(v179);
              sub_268F9B384();

              v175 = v173;
            }
          }

          else
          {

            v175 = v481;
          }

          v169 = v175;
          MEMORY[0x277D82BD8](v194);
          v142 = v169;
          v143 = sub_268E25C10(v479);
          v170 = v142;
          v171 = v143;
          v172 = v142;
          if (!v142)
          {
            v168 = v171;

            v433 = v168;
            v434 = v170;
            return v433;
          }

          v153 = v172;

          v167 = v153;
        }
      }
    }
  }

  else
  {
    v158 = sub_268F9B294();
    v160 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v161 = 0;
    v159 = sub_268F9B734();
    v163 = 57;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v160);
    v164 = sub_268F9A7E4();
    sub_268D91304();
    v162 = 1;
    v166 = swift_allocError();
    v165 = v144;
    v145 = sub_268F9AEF4();
    v146 = v164;
    v147 = v145;
    v148 = v165;
    *v165 = v147;
    v148[1] = v149;
    v150 = *MEMORY[0x277D61E00];
    (*(*(v146 - 8) + 104))();
    swift_willThrow();

    v167 = v166;
  }

  return v152[1];
}

uint64_t sub_268E1B620(uint64_t a1, uint64_t a2)
{
  v5[1] = a1;
  v5[2] = a2;
  v3 = *sub_268E175F0();

  v5[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268DA6BFC();
  v4 = sub_268F9AFC4();
  sub_268CD7930(v5);
  return v4 & 1;
}

id sub_268E1B74C(uint64_t a1, void *a2, void *a3)
{
  v450 = a1;
  v435 = a2;
  v436 = a3;
  v446 = "Converting a labeled setting intent.";
  v404 = "Open setting task.";
  v405 = sub_268E30BE4;
  v406 = sub_268CD7608;
  v407 = sub_268CD7600;
  v408 = sub_268CD7600;
  v409 = sub_268CD7614;
  v410 = "Expected labeled value is 'nil'. Fallback to SRR.";
  v411 = sub_268E30BE4;
  v412 = sub_268CD7608;
  v413 = sub_268CD7600;
  v414 = sub_268CD7600;
  v415 = sub_268CD7614;
  v416 = "SRR did not provide an entity. Falling back on converting the parse as open::common_Setting.";
  v417 = "Disable setting task.";
  v418 = sub_268E30BE4;
  v419 = sub_268CD7608;
  v420 = sub_268CD7600;
  v421 = sub_268CD7600;
  v422 = sub_268CD7614;
  v423 = "Enable setting task.";
  v424 = sub_268E30BD8;
  v425 = sub_268CD7608;
  v426 = sub_268CD7600;
  v427 = sub_268CD7600;
  v428 = sub_268CD7614;
  v429 = sub_268E2A9EC;
  v430 = sub_268E30BD8;
  v431 = sub_268CD7608;
  v432 = sub_268CD7600;
  v433 = sub_268CD7600;
  v434 = sub_268CD7614;
  v503 = 0;
  v502 = 0;
  v501 = 0;
  v500 = 0;
  v498 = 0;
  v493 = 0;
  v491 = 0;
  v473 = 0;
  v464 = 0;
  v462 = 0;
  v437 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v450);
  v438 = &v113 - v437;
  v503 = v3;
  v502 = v4;
  v501 = v5;
  v441 = &unk_287991670;
  v439 = 32;
  v440 = 7;
  v6 = swift_allocObject();
  v442 = v6;
  v500 = v6 + 16;
  v444 = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v499 = 0;
  v7 = swift_allocObject();
  v443 = v7;
  v498 = v7 + 16;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v447 = sub_268F9B284();
  v449 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v449);
  v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v448 = sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v449);

  sub_268F9A204();

  if (v497[3])
  {
    sub_268F9A354();
    if (swift_dynamicCast())
    {
      v402 = v451;
    }

    else
    {
      v402 = 0;
    }

    v401 = v402;
  }

  else
  {
    sub_268D28414(v497);
    v401 = 0;
  }

  v400 = v401;
  if (!v401)
  {
    v398 = v403;
    goto LABEL_35;
  }

  v399 = v400;
  v382 = v400;
  v464 = v400;
  v379 = sub_268F9B284();
  v381 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v381);
  v380 = sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v381);

  sub_268F9A324();
  v383 = v463[2];

  v384 = sub_268E28D5C(v383);
  v385 = v8;

  v9 = v385;
  v10 = v442;
  v11 = *(v442 + 24);
  *(v442 + 16) = v384;
  *(v10 + 24) = v9;

  v397 = sub_268F9B284();
  v396 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v396);

  v386 = 17;
  v388 = 7;
  v390 = swift_allocObject();
  *(v390 + 16) = 32;
  v391 = swift_allocObject();
  *(v391 + 16) = 8;
  v387 = 32;
  v12 = swift_allocObject();
  v13 = v442;
  v389 = v12;
  *(v12 + 16) = v405;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v389;
  v393 = v14;
  *(v14 + 16) = v406;
  *(v14 + 24) = v15;
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v392 = sub_268F9B734();
  v394 = v16;

  v17 = v390;
  v18 = v394;
  *v394 = v407;
  v18[1] = v17;

  v19 = v391;
  v20 = v394;
  v394[2] = v408;
  v20[3] = v19;

  v21 = v393;
  v22 = v394;
  v394[4] = v409;
  v22[5] = v21;
  sub_268CD0F7C();

  if (os_log_type_enabled(v396, v397))
  {
    v372 = sub_268F9B3A4();
    v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v373 = sub_268CD5448(0);
    v374 = sub_268CD5448(1);
    v375 = v456;
    v456[0] = v372;
    v376 = &v455;
    v455 = v373;
    v377 = &v454;
    v454 = v374;
    sub_268CD549C(2, v456);
    sub_268CD549C(1, v375);
    v23 = v403;
    v452 = v407;
    v453 = v390;
    sub_268CD54B0(&v452, v375, v376, v377);
    v378 = v23;
    if (v23)
    {

      __break(1u);
    }

    else
    {
      v452 = v408;
      v453 = v391;
      sub_268CD54B0(&v452, v456, &v455, &v454);
      v368 = 0;
      v452 = v409;
      v453 = v393;
      sub_268CD54B0(&v452, v456, &v455, &v454);
      v367 = 0;
      _os_log_impl(&dword_268CBE000, v396, v397, "Attribute name is %s.", v372, 0xCu);
      sub_268CD54FC(v373);
      sub_268CD54FC(v374);
      sub_268F9B384();

      v369 = v367;
    }
  }

  else
  {

    v369 = v403;
  }

  v364 = v369;
  MEMORY[0x277D82BD8](v396);
  v365 = *(v443 + 16);
  v366 = *(v443 + 24);

  v463[0] = v365;
  v463[1] = v366;
  v363 = v366 == 0;
  v362 = v363;
  sub_268CD9D30(v463);
  if (!v362)
  {
    v317 = v364;
LABEL_33:
    v315 = v317;

    v398 = v315;
LABEL_35:
    v314 = v398;

    sub_268F9A204();

    if (v496[3])
    {
      sub_268F9A444();
      if (swift_dynamicCast())
      {
        v313 = v465;
      }

      else
      {
        v313 = 0;
      }

      v312 = v313;
    }

    else
    {
      sub_268D28414(v496);
      v312 = 0;
    }

    v311 = v312;
    if (v312)
    {
      v310 = v311;
      v292 = v311;
      v473 = v311;
      v289 = sub_268F9B284();
      v291 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v291);
      v290 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v291);

      sub_268F9A5C4();
      v293 = v472[3];

      v294 = sub_268E28D5C(v293);
      v295 = v42;

      v296 = v472;
      swift_beginAccess();
      v43 = v295;
      v44 = v442;
      v45 = *(v442 + 24);
      *(v442 + 16) = v294;
      *(v44 + 24) = v43;

      swift_endAccess();
      v308 = sub_268F9B284();
      v307 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v307);

      v297 = 17;
      v299 = 7;
      v301 = swift_allocObject();
      *(v301 + 16) = 32;
      v302 = swift_allocObject();
      *(v302 + 16) = 8;
      v298 = 32;
      v46 = swift_allocObject();
      v47 = v442;
      v300 = v46;
      *(v46 + 16) = v418;
      *(v46 + 24) = v47;
      v48 = swift_allocObject();
      v49 = v300;
      v304 = v48;
      *(v48 + 16) = v419;
      *(v48 + 24) = v49;
      v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      v303 = sub_268F9B734();
      v305 = v50;

      v51 = v301;
      v52 = v305;
      *v305 = v420;
      v52[1] = v51;

      v53 = v302;
      v54 = v305;
      v305[2] = v421;
      v54[3] = v53;

      v55 = v304;
      v56 = v305;
      v305[4] = v422;
      v56[5] = v55;
      sub_268CD0F7C();

      if (os_log_type_enabled(v307, v308))
      {
        v282 = sub_268F9B3A4();
        v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v283 = sub_268CD5448(0);
        v284 = sub_268CD5448(1);
        v285 = &v470;
        v470 = v282;
        v286 = &v469;
        v469 = v283;
        v287 = &v468;
        v468 = v284;
        sub_268CD549C(2, &v470);
        sub_268CD549C(1, v285);
        v57 = v314;
        v466 = v420;
        v467 = v301;
        sub_268CD54B0(&v466, v285, v286, v287);
        v288 = v57;
        if (v57)
        {

          __break(1u);
        }

        else
        {
          v466 = v421;
          v467 = v302;
          sub_268CD54B0(&v466, &v470, &v469, &v468);
          v279 = 0;
          v466 = v422;
          v467 = v304;
          sub_268CD54B0(&v466, &v470, &v469, &v468);
          v278 = 0;
          _os_log_impl(&dword_268CBE000, v307, v308, "Attribute name is %s.", v282, 0xCu);
          sub_268CD54FC(v283);
          sub_268CD54FC(v284);
          sub_268F9B384();

          v280 = v278;
        }
      }

      else
      {

        v280 = v314;
      }

      v277 = v280;
      MEMORY[0x277D82BD8](v307);
      v58 = sub_268E17204();
      v272 = *v58;
      v273 = v58[1];

      v274 = &v471;
      swift_beginAccess();
      v59 = v443;
      v60 = v273;
      v61 = *(v443 + 24);
      *(v443 + 16) = v272;
      *(v59 + 24) = v60;

      swift_endAccess();

      v275 = sub_268F9A5B4();

      v276 = sub_268E2A500(v275);

      v62 = v499;
      v499 = v276;
      MEMORY[0x277D82BD8](v62);

      v309 = v277;
    }

    else
    {
      v309 = v314;
    }

    v271 = v309;

    sub_268F9A204();

    if (v495[3])
    {
      sub_268F9A394();
      if (swift_dynamicCast())
      {
        v270 = v474;
      }

      else
      {
        v270 = 0;
      }

      v269 = v270;
    }

    else
    {
      sub_268D28414(v495);
      v269 = 0;
    }

    v268 = v269;
    if (!v269)
    {
      v266 = v271;
LABEL_101:
      v139 = v266;
      v126 = &v494;
      v130 = 32;
      v131 = 0;
      swift_beginAccess();
      v127 = *(v442 + 16);
      v128 = *(v442 + 24);

      swift_endAccess();
      v129 = 0;
      v136 = sub_268F284EC(v127, v128, v436, 0, 0);

      v493 = v136;
      sub_268DC0720();
      v132 = &v492;
      swift_beginAccess();
      v133 = *(v443 + 16);
      v134 = *(v443 + 24);

      swift_endAccess();
      v137 = &v499;
      v135 = v499;
      MEMORY[0x277D82BE0](v499);
      v138 = sub_268E2AB1C(v136, v133, v134, v135);

      sub_268D35038(v137);

      v140 = v138;
      v141 = v139;
      return v140;
    }

    v267 = v268;
    v246 = v268;
    v491 = v268;
    v243 = sub_268F9B284();
    v245 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v245);
    v244 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v245);

    sub_268F9A5C4();
    v247 = v490[3];

    v248 = sub_268E28D5C(v247);
    v249 = v63;

    v250 = v490;
    swift_beginAccess();
    v64 = v249;
    v65 = v442;
    v66 = *(v442 + 24);
    *(v442 + 16) = v248;
    *(v65 + 24) = v64;

    swift_endAccess();
    v265 = sub_268F9B284();
    v264 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v264);

    v251 = *(v442 + 16);
    v252 = *(v442 + 24);

    v254 = 32;
    v255 = 7;
    v67 = swift_allocObject();
    v68 = v252;
    v256 = v67;
    *(v67 + 16) = v251;
    *(v67 + 24) = v68;
    v253 = 17;
    v258 = swift_allocObject();
    *(v258 + 16) = 32;
    v259 = swift_allocObject();
    *(v259 + 16) = 8;
    v69 = swift_allocObject();
    v70 = v256;
    v257 = v69;
    *(v69 + 16) = v424;
    *(v69 + 24) = v70;
    v71 = swift_allocObject();
    v72 = v257;
    v261 = v71;
    *(v71 + 16) = v425;
    *(v71 + 24) = v72;
    v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    v260 = sub_268F9B734();
    v262 = v73;

    v74 = v258;
    v75 = v262;
    *v262 = v426;
    v75[1] = v74;

    v76 = v259;
    v77 = v262;
    v262[2] = v427;
    v77[3] = v76;

    v78 = v261;
    v79 = v262;
    v262[4] = v428;
    v79[5] = v78;
    sub_268CD0F7C();

    if (os_log_type_enabled(v264, v265))
    {
      v236 = sub_268F9B3A4();
      v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v237 = sub_268CD5448(0);
      v238 = sub_268CD5448(1);
      v239 = &v479;
      v479 = v236;
      v240 = &v478;
      v478 = v237;
      v241 = &v477;
      v477 = v238;
      sub_268CD549C(2, &v479);
      sub_268CD549C(1, v239);
      v80 = v271;
      v475 = v426;
      v476 = v258;
      sub_268CD54B0(&v475, v239, v240, v241);
      v242 = v80;
      if (v80)
      {

        __break(1u);
      }

      else
      {
        v475 = v427;
        v476 = v259;
        sub_268CD54B0(&v475, &v479, &v478, &v477);
        v233 = 0;
        v475 = v428;
        v476 = v261;
        sub_268CD54B0(&v475, &v479, &v478, &v477);
        v232 = 0;
        _os_log_impl(&dword_268CBE000, v264, v265, "Attribute name is %s. Assuming environment.", v236, 0xCu);
        sub_268CD54FC(v237);
        sub_268CD54FC(v238);
        sub_268F9B384();

        v234 = v232;
      }
    }

    else
    {

      v234 = v271;
    }

    v230 = v234;
    MEMORY[0x277D82BD8](v264);

    v231 = sub_268F9A5A4();

    if (v231)
    {
      v229 = v231;
      v226 = v231;
      v480[3] = v231;
      v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7F0, &qword_268F9F570);
      sub_268DA6E24();
      sub_268F9B234();
      v227 = v480[2];

      if (v227)
      {
        v224 = v227;
        v222 = v227;
        sub_268F9A064();
        v223 = v480[1];

        if (v223)
        {
          v221 = v223;
          v219 = v223;
          v81 = sub_268DDA6B0();
          v217 = *v81;
          v218 = v81[1];

          v220 = sub_268F9A0A4();

          if (v220)
          {
            v216 = v220;
            v480[0] = v220;
            v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
            sub_268DA5FC0();
            v82 = v230;
            sub_268F9AF94();
            v215 = v82;
            if (v82)
            {
              __break(1u);
LABEL_107:
              v114 = v179;

              sub_268D35038(&v499);

              v116 = v114;
              return v370;
            }

            sub_268CD7930(v480);
            v211 = sub_268F99F64();
            v212 = *(v211 - 8);
            v213 = v211 - 8;
            if ((*(v212 + 48))(v438, 1) != 1)
            {
              v204 = sub_268F99F44();
              v205 = v83;
              (*(v212 + 8))(v438, v211);
              v206 = sub_268F9AE94();
              v207 = v84;

              v208 = v206;
              v209 = v207;
              v210 = v215;
LABEL_79:
              v197 = v210;
              v203 = v209;
              v202 = v208;
              v199 = v443 + 16;
              v198 = &v489;
              v200 = 0;
              swift_beginAccess();

              v85 = v443;
              v86 = v203;
              v87 = *(v443 + 24);
              *(v443 + 16) = v202;
              *(v85 + 24) = v86;

              swift_endAccess();
              v201 = &v488;
              swift_beginAccess();
              swift_endAccess();
              v487[0] = v202;
              v487[1] = v203;
              v196 = v203 == 0;
              v195 = v196;
              sub_268CD9D30(v487);
              if (!v195)
              {
                v174 = v197;
                goto LABEL_93;
              }

              v191 = sub_268F9B284();
              v193 = *sub_268DC7EA8();
              MEMORY[0x277D82BE0](v193);
              v192 = sub_268F9B734();
              sub_268F9AC14();

              MEMORY[0x277D82BD8](v193);

              v194 = sub_268F9A5A4();

              if (!v194)
              {
                goto LABEL_91;
              }

              v190 = v194;
              v188 = v194;
              v480[6] = v194;
              v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7F0, &qword_268F9F570);
              sub_268DA6E24();
              sub_268F9B234();
              v189 = v480[5];

              if (v189 && (v186 = v189, v184 = v189, sub_268F9A064(), v185 = v480[4], , v185))
              {
                v183 = v185;
                v180 = v185;
                v181 = sub_268F99F04();

                v182 = v181;
              }

              else
              {
LABEL_91:
                v182 = 0;
              }

              v88 = v197;
              v175 = v182;
              v89 = sub_268E2905C(v450, v182, v435);
              v176 = v88;
              v177 = v89;
              v178 = v90;
              v179 = v88;
              if (!v88)
              {
                v172 = v178;
                v171 = v177;

                v173 = &v481;
                swift_beginAccess();
                v91 = v443;
                v92 = v172;
                v93 = *(v443 + 24);
                *(v443 + 16) = v171;
                *(v91 + 24) = v92;

                swift_endAccess();
                v174 = v176;
LABEL_93:
                v156 = v174;
                v170 = sub_268F9B284();
                v169 = *sub_268DC7EA8();
                MEMORY[0x277D82BE0](v169);

                v157 = *(v443 + 16);
                v158 = *(v443 + 24);

                v160 = 32;
                v161 = 7;
                v94 = swift_allocObject();
                v95 = v158;
                v162 = v94;
                *(v94 + 16) = v157;
                *(v94 + 24) = v95;
                v159 = 17;
                v164 = swift_allocObject();
                *(v164 + 16) = 32;
                v165 = swift_allocObject();
                *(v165 + 16) = 8;
                v96 = swift_allocObject();
                v97 = v162;
                v163 = v96;
                *(v96 + 16) = v430;
                *(v96 + 24) = v97;
                v98 = swift_allocObject();
                v99 = v163;
                v167 = v98;
                *(v98 + 16) = v431;
                *(v98 + 24) = v99;
                v166 = sub_268F9B734();
                v168 = v100;

                v101 = v164;
                v102 = v168;
                *v168 = v432;
                v102[1] = v101;

                v103 = v165;
                v104 = v168;
                v168[2] = v433;
                v104[3] = v103;

                v105 = v167;
                v106 = v168;
                v168[4] = v434;
                v106[5] = v105;
                sub_268CD0F7C();

                if (os_log_type_enabled(v169, v170))
                {
                  v149 = sub_268F9B3A4();
                  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
                  v150 = sub_268CD5448(0);
                  v151 = sub_268CD5448(1);
                  v152 = &v486;
                  v486 = v149;
                  v153 = &v485;
                  v485 = v150;
                  v154 = &v484;
                  v484 = v151;
                  sub_268CD549C(2, &v486);
                  sub_268CD549C(1, v152);
                  v107 = v156;
                  v482 = v432;
                  v483 = v164;
                  sub_268CD54B0(&v482, v152, v153, v154);
                  v155 = v107;
                  if (v107)
                  {

                    __break(1u);
                  }

                  else
                  {
                    v482 = v433;
                    v483 = v165;
                    sub_268CD54B0(&v482, &v486, &v485, &v484);
                    v146 = 0;
                    v482 = v434;
                    v483 = v167;
                    sub_268CD54B0(&v482, &v486, &v485, &v484);
                    v145 = 0;
                    _os_log_impl(&dword_268CBE000, v169, v170, "Labeled value is %s.", v149, 0xCu);
                    sub_268CD54FC(v150);
                    sub_268CD54FC(v151);
                    sub_268F9B384();

                    v147 = v145;
                  }
                }

                else
                {

                  v147 = v156;
                }

                v144 = v147;
                MEMORY[0x277D82BD8](v169);

                v142 = sub_268F9A5B4();

                v143 = sub_268E2A500(v142);

                v108 = v499;
                v499 = v143;
                MEMORY[0x277D82BD8](v108);

                v266 = v144;
                goto LABEL_101;
              }

              goto LABEL_107;
            }

            sub_268D9C0BC(v438);
            v228 = v215;
          }

          else
          {
            v228 = v230;
          }
        }

        else
        {
          v228 = v230;
        }
      }

      else
      {
        v228 = v230;
      }
    }

    else
    {
      v228 = v230;
    }

    v208 = 0;
    v209 = 0;
    v210 = v228;
    goto LABEL_79;
  }

  v358 = sub_268F9B284();
  v360 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v360);
  v359 = sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v360);

  v361 = sub_268F9A314();

  if (!v361)
  {
    goto LABEL_31;
  }

  v357 = v361;
  v355 = v361;
  v456[3] = v361;
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7F0, &qword_268F9F570);
  sub_268DA6E24();
  sub_268F9B234();
  v356 = v456[2];

  if (v356 && (v353 = v356, v351 = v356, sub_268F9A064(), v352 = v456[1], , v352))
  {
    v350 = v352;
    v347 = v352;
    v348 = sub_268F99F04();

    v349 = v348;
  }

  else
  {
LABEL_31:
    v349 = 0;
  }

  v24 = v364;
  v342 = v349;
  v25 = sub_268E2905C(v450, v349, v435);
  v343 = v24;
  v344 = v25;
  v345 = v26;
  v346 = v24;
  if (!v24)
  {
    v330 = v345;
    v329 = v344;

    v27 = v330;
    v28 = v443;
    v29 = *(v443 + 24);
    *(v443 + 16) = v329;
    *(v28 + 24) = v27;

    v341 = sub_268F9B284();
    v340 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v340);

    v331 = 17;
    v333 = 7;
    v335 = swift_allocObject();
    *(v335 + 16) = 32;
    v336 = swift_allocObject();
    *(v336 + 16) = 8;
    v332 = 32;
    v30 = swift_allocObject();
    v31 = v443;
    v334 = v30;
    *(v30 + 16) = v411;
    *(v30 + 24) = v31;
    v32 = swift_allocObject();
    v33 = v334;
    v338 = v32;
    *(v32 + 16) = v412;
    *(v32 + 24) = v33;
    v337 = sub_268F9B734();
    v339 = v34;

    v35 = v335;
    v36 = v339;
    *v339 = v413;
    v36[1] = v35;

    v37 = v336;
    v38 = v339;
    v339[2] = v414;
    v38[3] = v37;

    v39 = v338;
    v40 = v339;
    v339[4] = v415;
    v40[5] = v39;
    sub_268CD0F7C();

    if (os_log_type_enabled(v340, v341))
    {
      v322 = sub_268F9B3A4();
      v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v323 = sub_268CD5448(0);
      v324 = sub_268CD5448(1);
      v325 = &v461;
      v461 = v322;
      v326 = &v460;
      v460 = v323;
      v327 = &v459;
      v459 = v324;
      sub_268CD549C(2, &v461);
      sub_268CD549C(1, v325);
      v41 = v343;
      v457 = v413;
      v458 = v335;
      sub_268CD54B0(&v457, v325, v326, v327);
      v328 = v41;
      if (v41)
      {

        __break(1u);
      }

      else
      {
        v457 = v414;
        v458 = v336;
        sub_268CD54B0(&v457, &v461, &v460, &v459);
        v319 = 0;
        v457 = v415;
        v458 = v338;
        sub_268CD54B0(&v457, &v461, &v460, &v459);
        v318 = 0;
        _os_log_impl(&dword_268CBE000, v340, v341, "Resulting environment labeled value is %s", v322, 0xCu);
        sub_268CD54FC(v323);
        sub_268CD54FC(v324);
        sub_268F9B384();

        v320 = v318;
      }
    }

    else
    {

      v320 = v343;
    }

    v316 = v320;
    MEMORY[0x277D82BD8](v340);
    v317 = v316;
    goto LABEL_33;
  }

  v118 = v346;
  v122 = 0;

  v110 = v118;
  v462 = v118;
  v119 = sub_268F9B284();
  v121 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v121);
  v120 = sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v121);
  v111 = v122;
  v112 = sub_268E1E080(v450);
  v123 = v111;
  v124 = v112;
  v125 = v111;
  if (!v111)
  {
    v117 = v124;

    sub_268D35038(&v499);

    v140 = v117;
    v141 = v123;
    return v140;
  }

  v115 = v125;

  sub_268D35038(&v499);

  v116 = v115;
  return v370;
}

uint64_t sub_268E1E080(uint64_t a1)
{
  v261 = a1;
  v251 = sub_268E30BB4;
  v252 = sub_268E2BED8;
  v253 = sub_268E2BED8;
  v254 = sub_268E2BED8;
  v255 = sub_268E2BED8;
  v256 = sub_268E30BB4;
  v321 = 0;
  v314 = 0;
  v313 = 0;
  v300 = 0;
  v301 = 0;
  v290 = 0;
  v283 = 0;
  v284 = 0;
  v281 = 0;
  v264 = 0;
  v257 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v261);
  v258 = v56 - v257;
  v259 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v260 = v56 - v259;
  v321 = v3;

  sub_268F9A204();

  if (v320[3])
  {
    sub_268F9A354();
    if (swift_dynamicCast())
    {
      v249 = v262;
    }

    else
    {
      v249 = 0;
    }

    v248 = v249;
  }

  else
  {
    sub_268D28414(v320);
    v248 = 0;
  }

  v247 = v248;
  if (!v248)
  {

    sub_268F9A204();

    if (v319[3])
    {
      sub_268F9A524();
      if (swift_dynamicCast())
      {
        v152 = v291;
      }

      else
      {
        v152 = 0;
      }

      v151 = v152;
    }

    else
    {
      sub_268D28414(v319);
      v151 = 0;
    }

    v150 = v151;
    if (!v151)
    {
      v56[1] = 0;
      v63 = sub_268F9A7E4();
      sub_268D91304();
      v58 = 1;
      v65 = swift_allocError();
      v64 = v41;
      v42 = sub_268F9B724();
      v60 = &v317;
      v317 = v42;
      v318 = v43;
      v44 = sub_268F9AEF4();
      v56[0] = v45;
      MEMORY[0x26D62E360](v44);

      v56[2] = &v316;
      v316 = v261;
      sub_268F9A6E4();
      v46 = sub_268F9AE64();
      v57 = v315;
      v315[0] = v46;
      v315[1] = v47;
      sub_268F9B704();
      sub_268CD9D30(v57);
      v48 = sub_268F9AEF4();
      v59 = v49;
      MEMORY[0x26D62E360](v48);

      v62 = v317;
      v61 = v318;

      sub_268CD9D30(v60);
      v50 = sub_268F9AED4();
      v51 = v63;
      v52 = v50;
      v53 = v64;
      *v64 = v52;
      v53[1] = v54;
      v55 = *MEMORY[0x277D61E00];
      (*(*(v51 - 8) + 104))();
      swift_willThrow();
      return v205;
    }

    v149 = v150;
    v147 = v150;
    v314 = v150;

    sub_268F9A324();
    v148 = v312[1];

    if (!v148)
    {
      goto LABEL_128;
    }

    v146 = v148;
    v144 = v148;
    v25 = sub_268DDA5D0();
    v142 = *v25;
    v143 = v25[1];

    v145 = sub_268F9A0A4();

    if (v145)
    {
      v141 = v145;
      v292 = v145;
      v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
      v26 = sub_268E30B2C();
      v27 = v250;
      result = sub_268DE25C8(v254, 0, v138, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v26, MEMORY[0x277D84AC0], v205);
      v139 = v27;
      v140 = result;
      if (v27)
      {
        goto LABEL_135;
      }

      v135 = v140;
      sub_268CD7930(&v292);
      v136 = v135;
      v137 = v139;
    }

    else
    {
LABEL_128:
      v136 = 0;
      v137 = v250;
    }

    v134 = v137;
    v312[0] = v136;
    if (v136)
    {
      v313 = v312[0];
    }

    else
    {
      v313 = sub_268F9B734();
      if (v312[0])
      {
        sub_268CD7930(v312);
      }
    }

    sub_268F9A324();
    v133 = v310[1];

    if (!v133)
    {
      goto LABEL_127;
    }

    v132 = v133;
    v130 = v133;
    v131 = sub_268F9A1C4();

    if (!v131)
    {
      goto LABEL_127;
    }

    v129 = v131;
    v127 = v131;
    v28 = sub_268DDA5D0();
    v125 = *v28;
    v126 = v28[1];

    v128 = sub_268F9A0A4();

    if (v128)
    {
      v124 = v128;
      v293 = v128;
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
      v29 = sub_268E30B2C();
      v30 = v134;
      result = sub_268DE25C8(v255, 0, v121, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v29, MEMORY[0x277D84AC0], v205);
      v122 = v30;
      v123 = result;
      if (v30)
      {
        goto LABEL_136;
      }

      v118 = v123;
      sub_268CD7930(&v293);
      v119 = v118;
      v120 = v122;
    }

    else
    {
LABEL_127:
      v119 = 0;
      v120 = v134;
    }

    v117 = v120;
    v310[0] = v119;
    if (v119)
    {
      v311 = v310[0];
    }

    else
    {
      v311 = sub_268F9B734();
      if (v310[0])
      {
        sub_268CD7930(v310);
      }
    }

    v110 = &v309;
    v309 = v311;
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
    v112 = sub_268DA6BFC();
    sub_268F9B054();
    v111 = v313;

    v115 = &v308;
    v308 = v111;
    v31 = sub_268E42E48();
    v114 = v307;
    v307[0] = v31;
    v307[1] = v32;
    v116 = sub_268F9AFC4();
    sub_268CD9D30(v114);
    sub_268CD7930(v115);
    if (v116)
    {
      v105 = v313;

      v107 = &v295;
      v295 = v105;
      v33 = sub_268E42E48();
      v106 = v294;
      v294[0] = v33;
      v294[1] = v34;
      v108 = sub_268F9AFC4();
      sub_268CD9D30(v106);
      sub_268CD7930(v107);
      v109 = v108;
    }

    else
    {
      v109 = 0;
    }

    if (v109)
    {
      v103 = 0;
      v99 = sub_268DA96FC();
      v297 = 35;
      v35 = BinarySettingIdentifier.rawValue.getter();
      v101 = v36;
      v100 = v296;
      memset(v296, 0, sizeof(v296));
      v102 = sub_268F284EC(v35, v36, v296, v103, v103);
      sub_268D28414(v100);

      v104 = sub_268E1B6E0(v102, v103);
      sub_268CD7930(&v313);

      v220 = v104;
      v221 = v117;
      return v220;
    }

    sub_268F9A324();
    v98 = v304;

    if (v98)
    {
      v97 = v98;
      v94 = v98;
      v37 = sub_268DDA5D0();
      v92 = *v37;
      v93 = v37[1];

      v95 = sub_268F9A0A4();

      if (v95)
      {
        v91 = v95;
        v298[0] = v95;
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        v38 = v117;
        result = sub_268F9AF94();
        v90 = v38;
        if (v38)
        {
          goto LABEL_137;
        }

        sub_268CD7930(v298);
        v86 = sub_268F99F64();
        v87 = *(v86 - 8);
        v88 = v86 - 8;
        if ((*(v87 + 48))(v258, 1) != 1)
        {
          v81 = sub_268F99F44();
          v82 = v39;
          (*(v87 + 8))(v258, v86);
          v83 = v81;
          v84 = v82;
          v85 = v90;
LABEL_117:
          v80 = v85;
          v302 = v83;
          v303 = v84;
          if (v84)
          {
            v305 = v302;
            v306 = v303;
          }

          else
          {
            v305 = sub_268EC63FC();
            v306 = v40;
            if (v303)
            {
              sub_268CD9D30(&v302);
            }
          }

          v76 = v305;
          v77 = v306;
          v300 = v305;
          v301 = v306;
          v78 = sub_268DA96FC();

          memset(v299, 0, sizeof(v299));

          sub_268F9A324();
          v79 = v298[1];

          if (v79)
          {
            v75 = v79;
            v72 = v79;
            v73 = sub_268F9A084();

            v74 = v73;
          }

          else
          {
            v74 = 0;
          }

          v66 = v74;
          v67 = sub_268E2C7C8(v74);

          v68 = v299;
          v70 = 0;
          v69 = sub_268F284EC(v76, v77, v299, v67, 0);
          MEMORY[0x277D82BD8](v67);
          sub_268D28414(v68);

          v71 = sub_268E1B6E0(v69, v70);

          sub_268CD7930(&v313);

          v220 = v71;
          v221 = v80;
          return v220;
        }

        sub_268D9C0BC(v258);
        v96 = v90;
      }

      else
      {
        v96 = v117;
      }
    }

    else
    {
      v96 = v117;
    }

    v83 = 0;
    v84 = 0;
    v85 = v96;
    goto LABEL_117;
  }

  v246 = v247;
  v244 = v247;
  v290 = v247;

  sub_268F9A324();
  v245 = v287;

  if (v245)
  {
    v243 = v245;
    v240 = v245;
    v4 = sub_268DDA5D0();
    v238 = *v4;
    v239 = v4[1];

    v241 = sub_268F9A0A4();

    if (v241)
    {
      v237 = v241;
      v263 = v241;
      v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
      sub_268DA5FC0();
      v5 = v250;
      result = sub_268F9AF94();
      v236 = v5;
      if (v5)
      {
        __break(1u);
        goto LABEL_133;
      }

      sub_268CD7930(&v263);
      v232 = sub_268F99F64();
      v233 = *(v232 - 8);
      v234 = v232 - 8;
      if ((*(v233 + 48))(v260, 1) != 1)
      {
        v227 = sub_268F99F44();
        v228 = v7;
        (*(v233 + 8))(v260, v232);
        v229 = v227;
        v230 = v228;
        v231 = v236;
        goto LABEL_17;
      }

      sub_268D9C0BC(v260);
      v242 = v236;
    }

    else
    {
      v242 = v250;
    }
  }

  else
  {
    v242 = v250;
  }

  v229 = 0;
  v230 = 0;
  v231 = v242;
LABEL_17:
  v226 = v231;
  v285 = v229;
  v286 = v230;
  if (v230)
  {
    v288 = v285;
    v289 = v286;
  }

  else
  {
    v288 = sub_268EC63FC();
    v289 = v8;
    if (v286)
    {
      sub_268CD9D30(&v285);
    }
  }

  v222 = v288;
  v223 = v289;
  v283 = v288;
  v284 = v289;
  v282 = 23;
  v9 = BinarySettingIdentifier.rawValue.getter();
  v224 = v10;
  v225 = MEMORY[0x26D62DB50](v222, v223, v9);

  if (v225)
  {
    v266 = 23;
    v11 = BinarySettingIdentifier.rawValue.getter();
    v216 = v12;
    v215 = v265;
    v217 = 0;
    memset(v265, 0, sizeof(v265));
    v218 = sub_268F284EC(v11, v12, v265, 0, 0);
    sub_268D28414(v215);

    v264 = v218;
    sub_268CD7620();
    v219 = sub_268DA95CC(v218, 1, v217);

    v220 = v219;
    v221 = v226;
    return v220;
  }

  sub_268F9A324();
  v214 = v280[1];

  if (!v214)
  {
    goto LABEL_64;
  }

  v213 = v214;
  v211 = v214;
  v13 = sub_268DDA5D0();
  v209 = *v13;
  v210 = v13[1];

  v212 = sub_268F9A0A4();

  if (!v212)
  {
LABEL_64:
    v202 = 0;
    v203 = v226;
    goto LABEL_33;
  }

  v208 = v212;
  v267 = v212;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  v14 = sub_268E30B2C();
  v15 = v226;
  result = sub_268DE25C8(v252, 0, v204, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v205);
  v206 = v15;
  v207 = result;
  if (!v15)
  {
    v201 = v207;
    sub_268CD7930(&v267);
    v202 = v201;
    v203 = v206;
LABEL_33:
    v200 = v203;
    v280[0] = v202;
    if (v202)
    {
      v281 = v280[0];
    }

    else
    {
      v281 = sub_268F9B734();
      if (v280[0])
      {
        sub_268CD7930(v280);
      }
    }

    sub_268F9A324();
    v199 = v278[1];

    if (!v199)
    {
      goto LABEL_63;
    }

    v198 = v199;
    v196 = v199;
    v197 = sub_268F9A1C4();

    if (!v197)
    {
      goto LABEL_63;
    }

    v195 = v197;
    v193 = v197;
    v16 = sub_268DDA5D0();
    v191 = *v16;
    v192 = v16[1];

    v194 = sub_268F9A0A4();

    if (!v194)
    {
LABEL_63:
      v185 = 0;
      v186 = v200;
      goto LABEL_49;
    }

    v190 = v194;
    v268 = v194;
    v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
    v17 = sub_268E30B2C();
    v18 = v200;
    result = sub_268DE25C8(v253, 0, v187, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v17, MEMORY[0x277D84AC0], v205);
    v188 = v18;
    v189 = result;
    if (!v18)
    {
      v184 = v189;
      sub_268CD7930(&v268);
      v185 = v184;
      v186 = v188;
LABEL_49:
      v183 = v186;
      v278[0] = v185;
      if (v185)
      {
        v279 = v278[0];
      }

      else
      {
        v279 = sub_268F9B734();
        if (v278[0])
        {
          sub_268CD7930(v278);
        }
      }

      v176 = &v277;
      v277 = v279;
      v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
      v178 = sub_268DA6BFC();
      sub_268F9B054();
      v177 = v281;

      v181 = &v276;
      v276 = v177;
      v19 = sub_268E42E48();
      v180 = v275;
      v275[0] = v19;
      v275[1] = v20;
      v182 = sub_268F9AFC4();
      sub_268CD9D30(v180);
      sub_268CD7930(v181);
      if (v182)
      {
        v171 = v281;

        v173 = &v270;
        v270 = v171;
        v21 = sub_268E42E48();
        v172 = v269;
        v269[0] = v21;
        v269[1] = v22;
        v174 = sub_268F9AFC4();
        sub_268CD9D30(v172);
        sub_268CD7930(v173);
        v175 = v174;
      }

      else
      {
        v175 = 0;
      }

      if (v175)
      {
        v169 = 0;
        v165 = sub_268DA96FC();
        v272 = 35;
        v23 = BinarySettingIdentifier.rawValue.getter();
        v167 = v24;
        v166 = v271;
        memset(v271, 0, sizeof(v271));
        v168 = sub_268F284EC(v23, v24, v271, v169, v169);
        sub_268D28414(v166);

        v170 = sub_268E1B6E0(v168, v169);
        sub_268CD7930(&v281);

        v220 = v170;
        v221 = v183;
      }

      else
      {
        v163 = sub_268DA96FC();

        memset(v274, 0, sizeof(v274));

        sub_268F9A324();
        v164 = v273;

        if (v164)
        {
          v162 = v164;
          v159 = v164;
          v160 = sub_268F9A084();

          v161 = v160;
        }

        else
        {
          v161 = 0;
        }

        v153 = v161;
        v154 = sub_268E2C7C8(v161);

        v155 = v274;
        v157 = 0;
        v156 = sub_268F284EC(v222, v223, v274, v154, 0);
        MEMORY[0x277D82BD8](v154);
        sub_268D28414(v155);

        v158 = sub_268E1B6E0(v156, v157);
        sub_268CD7930(&v281);

        v220 = v158;
        v221 = v183;
      }

      return v220;
    }

    goto LABEL_134;
  }

LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

uint64_t sub_268E1F83C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v653 = v751;
  v706 = v2;
  v692 = v3;
  v693 = v4;
  v654 = v1;
  v655 = sub_268E30BB4;
  v656 = sub_268E2BED8;
  v657 = sub_268E2BED8;
  v658 = sub_268E30BB4;
  v659 = sub_268E30BE4;
  v660 = sub_268CD7608;
  v661 = sub_268CD7600;
  v662 = sub_268CD7600;
  v663 = sub_268CD7614;
  v664 = "Checking for join wifi case.";
  v665 = sub_268D9D86C;
  v666 = sub_268E30BE4;
  v667 = sub_268CD7608;
  v668 = sub_268CD7600;
  v669 = sub_268CD7600;
  v670 = sub_268CD7614;
  v671 = "Checking for wifi.";
  v672 = sub_268E30BEC;
  v673 = sub_268CD7608;
  v674 = sub_268CD7600;
  v675 = sub_268CD7600;
  v676 = sub_268CD7614;
  v677 = sub_268E2BED8;
  v678 = sub_268E2BED8;
  v679 = sub_268E30BB4;
  v680 = sub_268E30BB4;
  v837 = 0;
  v836 = 0;
  v835 = 0;
  v834 = 0;
  v833 = 0;
  v824 = 0;
  v814 = 0uLL;
  v810 = 0;
  v800 = 0uLL;
  v794 = 0;
  v793 = 0;
  v783 = 0;
  v773 = 0;
  v766 = 0;
  v759 = 0;
  v760 = 0;
  v757 = 0;
  v731 = 0;
  v726[0] = 0;
  v719 = 0;
  v717 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v681 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v682 = v156 - v681;
  v683 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v156 - v681);
  v684 = v156 - v683;
  v685 = sub_268F9ACE4();
  v686 = *(v685 - 8);
  v687 = v685 - 8;
  v688 = (*(v686 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v685);
  v689 = v156 - v688;
  v837 = v156 - v688;
  v690 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v691 = v156 - v690;
  v836 = v156 - v690;
  v694 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v706);
  v695 = v156 - v694;
  v696 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v697 = v156 - v696;
  v698 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v699 = v156 - v698;
  v700 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v701 = v156 - v700;
  v702 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v703 = v156 - v702;
  v704 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v705 = v156 - v704;
  v835 = v19;
  v834 = v20;
  v833 = v21;

  sub_268F9A204();

  if (v832[3])
  {
    sub_268F9A444();
    if (swift_dynamicCast())
    {
      v652 = v707;
    }

    else
    {
      v652 = 0;
    }

    v651 = v652;
  }

  else
  {
    sub_268D28414(v832);
    v651 = 0;
  }

  v650 = v651;
  if (!v651)
  {

    sub_268F9A204();

    if (v831[3])
    {
      sub_268F9A394();
      if (swift_dynamicCast())
      {
        v539 = v732;
      }

      else
      {
        v539 = 0;
      }

      v538 = v539;
    }

    else
    {
      sub_268D28414(v831);
      v538 = 0;
    }

    v537 = v538;
    if (v538)
    {
      v536 = v537;
      v534 = v537;
      v794 = v537;
      v532 = swift_allocObject();
      v533 = v532 + 16;
      v793 = v532 + 16;

      sub_268F9A5C4();
      v535 = v792[1];

      if (v535)
      {
        v531 = v535;
        v528 = v535;
        v45 = sub_268DDA5D0();
        v526 = *v45;
        v527 = v45[1];

        v529 = sub_268F9A0A4();

        if (v529)
        {
          v525 = v529;
          v733 = v529;
          v523 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          v46 = v654;
          sub_268F9AF94();
          v524 = v46;
          if (v46)
          {
            goto LABEL_288;
          }

          sub_268CD7930(&v733);
          v520 = sub_268F99F64();
          v521 = *(v520 - 8);
          v522 = v520 - 8;
          if ((*(v521 + 48))(v703, 1) != 1)
          {
            v517 = sub_268F99F44();
            v518 = v47;
            (*(v521 + 8))(v703, v520);
            v48 = v532;
            v49 = v518;
            v50 = v524;
            *(v532 + 16) = v517;
            *(v48 + 24) = v49;
            v519 = v50;
            goto LABEL_87;
          }

          sub_268D9C0BC(v703);
          v530 = v524;
        }

        else
        {
          v530 = v654;
        }
      }

      else
      {
        v530 = v654;
      }

      v126 = v532;
      v127 = v530;
      *(v532 + 16) = 0;
      *(v126 + 24) = 0;
      v519 = v127;
LABEL_87:
      v504 = v519;
      v516 = sub_268F9B284();
      v515 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v515);

      v505 = 17;
      v507 = 7;
      v509 = swift_allocObject();
      *(v509 + 16) = 32;
      v510 = swift_allocObject();
      *(v510 + 16) = 8;
      v506 = 32;
      v51 = swift_allocObject();
      v52 = v532;
      v508 = v51;
      *(v51 + 16) = v659;
      *(v51 + 24) = v52;
      v53 = swift_allocObject();
      v54 = v508;
      v512 = v53;
      *(v53 + 16) = v660;
      *(v53 + 24) = v54;
      v514 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      v511 = sub_268F9B734();
      v513 = v55;

      v56 = v509;
      v57 = v513;
      *v513 = v661;
      v57[1] = v56;

      v58 = v510;
      v59 = v513;
      v513[2] = v662;
      v59[3] = v58;

      v60 = v512;
      v61 = v513;
      v513[4] = v663;
      v61[5] = v60;
      sub_268CD0F7C();

      if (os_log_type_enabled(v515, v516))
      {
        v497 = sub_268F9B3A4();
        v496 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v498 = sub_268CD5448(0);
        v499 = sub_268CD5448(1);
        v500 = &v738;
        v738 = v497;
        v501 = &v737;
        v737 = v498;
        v502 = &v736;
        v736 = v499;
        sub_268CD549C(2, &v738);
        sub_268CD549C(1, v500);
        v62 = v504;
        v734 = v661;
        v735 = v509;
        sub_268CD54B0(&v734, v500, v501, v502);
        v503 = v62;
        if (v62)
        {

          __break(1u);
        }

        else
        {
          v734 = v662;
          v735 = v510;
          sub_268CD54B0(&v734, &v738, &v737, &v736);
          v494 = 0;
          v734 = v663;
          v735 = v512;
          sub_268CD54B0(&v734, &v738, &v737, &v736);
          v493 = 0;
          _os_log_impl(&dword_268CBE000, v515, v516, "Attribute name: %s.", v497, 0xCu);
          sub_268CD54FC(v498);
          sub_268CD54FC(v499);
          sub_268F9B384();

          v495 = v493;
        }
      }

      else
      {

        v495 = v504;
      }

      v491 = v495;
      MEMORY[0x277D82BD8](v515);

      sub_268F9A5C4();
      v492 = v791[3];

      if (v492)
      {
        v490 = v492;
        v487 = v492;
        v488 = sub_268F9A084();

        v489 = v488;
      }

      else
      {
        v489 = 0;
      }

      v482 = v489;
      v483 = sub_268E2C7C8(v489);

      v792[0] = v483;
      v484 = v791;
      swift_beginAccess();
      v485 = *(v532 + 16);
      v486 = *(v532 + 24);

      swift_endAccess();
      v790[0] = v485;
      v790[1] = v486;
      v481 = v486 == 0;
      v480 = v481;
      sub_268CD9D30(v790);
      if (!v480)
      {
        v432 = v491;
        goto LABEL_113;
      }

      v476 = sub_268F9B284();
      v478 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v478);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v477 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v478);

      sub_268F9A5C4();
      v479 = v745[3];

      if (v479)
      {
        v475 = v479;
        v472 = v479;
        v63 = sub_268D8E220();
        v470 = *v63;
        v471 = v63[1];

        v473 = sub_268F9A0A4();

        if (v473)
        {
          v469 = v473;
          v739 = v473;
          v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          v64 = v491;
          sub_268F9AF94();
          v468 = v64;
          if (v64)
          {
            goto LABEL_289;
          }

          sub_268CD7930(&v739);
          v464 = sub_268F99F64();
          v465 = *(v464 - 8);
          v466 = v464 - 8;
          if ((*(v465 + 48))(v701, 1) != 1)
          {
            v459 = sub_268F99F44();
            v460 = v65;
            (*(v465 + 8))(v701, v464);
            v461 = v459;
            v462 = v460;
            v463 = v468;
LABEL_105:
            v444 = v463;
            v446 = v462;
            v445 = v461;
            v447 = v745;
            swift_beginAccess();
            v66 = v446;
            v67 = v532;
            v68 = *(v532 + 24);
            *(v532 + 16) = v445;
            *(v67 + 24) = v66;

            swift_endAccess();
            v458 = sub_268F9B284();
            v457 = *sub_268DC7EA8();
            MEMORY[0x277D82BE0](v457);

            v448 = 17;
            v450 = 7;
            v452 = swift_allocObject();
            *(v452 + 16) = 32;
            v453 = swift_allocObject();
            *(v453 + 16) = 8;
            v449 = 32;
            v69 = swift_allocObject();
            v70 = v532;
            v451 = v69;
            *(v69 + 16) = v666;
            *(v69 + 24) = v70;
            v71 = swift_allocObject();
            v72 = v451;
            v455 = v71;
            *(v71 + 16) = v667;
            *(v71 + 24) = v72;
            v454 = sub_268F9B734();
            v456 = v73;

            v74 = v452;
            v75 = v456;
            *v456 = v668;
            v75[1] = v74;

            v76 = v453;
            v77 = v456;
            v456[2] = v669;
            v77[3] = v76;

            v78 = v455;
            v79 = v456;
            v456[4] = v670;
            v79[5] = v78;
            sub_268CD0F7C();

            if (os_log_type_enabled(v457, v458))
            {
              v437 = sub_268F9B3A4();
              v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
              v438 = sub_268CD5448(0);
              v439 = sub_268CD5448(1);
              v440 = &v744;
              v744 = v437;
              v441 = &v743;
              v743 = v438;
              v442 = &v742;
              v742 = v439;
              sub_268CD549C(2, &v744);
              sub_268CD549C(1, v440);
              v80 = v444;
              v740 = v668;
              v741 = v452;
              sub_268CD54B0(&v740, v440, v441, v442);
              v443 = v80;
              if (v80)
              {

                __break(1u);
              }

              else
              {
                v740 = v669;
                v741 = v453;
                sub_268CD54B0(&v740, &v744, &v743, &v742);
                v434 = 0;
                v740 = v670;
                v741 = v455;
                sub_268CD54B0(&v740, &v744, &v743, &v742);
                v433 = 0;
                _os_log_impl(&dword_268CBE000, v457, v458, "Attribute name after check for join: %s.", v437, 0xCu);
                sub_268CD54FC(v438);
                sub_268CD54FC(v439);
                sub_268F9B384();

                v435 = v433;
              }
            }

            else
            {

              v435 = v444;
            }

            v431 = v435;
            MEMORY[0x277D82BD8](v457);
            v432 = v431;
LABEL_113:
            v425 = v432;
            v426 = &v789;
            swift_beginAccess();
            v428 = *(v532 + 16);
            v429 = *(v532 + 24);

            swift_endAccess();

            v427 = sub_268E42F14();
            v430 = v81;

            v787[0] = v428;
            v787[1] = v429;
            v787[2] = v427;
            v788 = v430;
            if (v429)
            {
              sub_268D28874(v787, &v748);
              if (v788)
              {
                v422 = &v747;
                v747 = v748;
                v82 = v653[31];
                v421 = &v746;
                v746 = v82;
                v423 = MEMORY[0x26D62DB50](v748, *(&v748 + 1), v82, *(&v82 + 1));
                sub_268CD9D30(v421);
                sub_268CD9D30(v422);
                sub_268CD9D30(v787);
                v424 = v423;
                goto LABEL_119;
              }

              sub_268CD9D30(&v748);
            }

            else if (!v788)
            {
              sub_268CD9D30(v787);
              v424 = 1;
LABEL_119:
              v420 = v424;

              if (v420)
              {
                v419 = 1;
                goto LABEL_133;
              }

              v414 = &v786;
              swift_beginAccess();
              v416 = *(v532 + 16);
              v417 = *(v532 + 24);

              swift_endAccess();

              v415 = sub_268E42F14();
              v418 = v83;

              v784[0] = v416;
              v784[1] = v417;
              *&v785 = v415;
              *(&v785 + 1) = v418;
              if (v417)
              {
                sub_268D28874(v784, v751);
                if (*(&v785 + 1))
                {
                  v84 = *v653;
                  v411 = &v750;
                  v750 = v84;
                  v410 = &v749;
                  v749 = v785;
                  v412 = MEMORY[0x26D62DB50](v84, *(&v84 + 1), v785, *(&v785 + 1));
                  sub_268CD9D30(v410);
                  sub_268CD9D30(v411);
                  sub_268CD9D30(v784);
                  v413 = v412;
LABEL_130:
                  v409 = v413;

                  v419 = v409;
LABEL_133:
                  if ((v419 & 1) == 0)
                  {
                    goto LABEL_158;
                  }

                  v405 = sub_268F9B284();
                  v407 = *sub_268DC7EA8();
                  MEMORY[0x277D82BE0](v407);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
                  v406 = sub_268F9B734();
                  sub_268F9AC14();

                  MEMORY[0x277D82BD8](v407);

                  sub_268F9A5C4();
                  v408 = v761;

                  if (v408)
                  {
                    v404 = v408;
                    v402 = v408;
                    v403 = sub_268F9A1C4();

                    if (v403)
                    {
                      v401 = v403;
                      v399 = v403;
                      v85 = sub_268DDA5D0();
                      v397 = *v85;
                      v398 = v85[1];

                      v400 = sub_268F9A0A4();

                      if (v400)
                      {
                        v396 = v400;
                        v392 = v400;
                        v751[2] = v400;
                        v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
                        sub_268E30B2C();
                        sub_268F9B234();

                        v393 = sub_268F99F64();
                        v394 = *(v393 - 8);
                        v395 = v393 - 8;
                        v86 = (*(v394 + 48))(v699, 1);
                        if (v86 != 1)
                        {
                          v387 = sub_268F99F44();
                          v388 = v87;
                          (*(v394 + 8))(v699, v393);
                          v389 = v387;
                          v390 = v388;
                          goto LABEL_146;
                        }

                        sub_268D9C0BC(v699);
                      }
                    }
                  }

                  v389 = 0;
                  v390 = 0;
LABEL_146:
                  v385 = v390;
                  v386 = v389;
                  if (v390)
                  {
                    v383 = v386;
                    v384 = v385;
                    v380 = v385;
                    v379 = v386;
                    v759 = v386;
                    v760 = v385;
                    v758 = 51;
                    v88 = BinarySettingIdentifier.rawValue.getter();
                    v381 = v89;
                    v382 = MEMORY[0x26D62DB50](v379, v380, v88);

                    if (v382)
                    {
                      v378 = sub_268F9B284();
                      v377 = *sub_268DC7EA8();
                      MEMORY[0x277D82BE0](v377);

                      v368 = 32;
                      v369 = 7;
                      v90 = swift_allocObject();
                      v91 = v380;
                      v370 = v90;
                      *(v90 + 16) = v379;
                      *(v90 + 24) = v91;
                      v367 = 17;
                      v372 = swift_allocObject();
                      *(v372 + 16) = 32;
                      v373 = swift_allocObject();
                      *(v373 + 16) = 8;
                      v92 = swift_allocObject();
                      v93 = v370;
                      v371 = v92;
                      *(v92 + 16) = v672;
                      *(v92 + 24) = v93;
                      v94 = swift_allocObject();
                      v95 = v371;
                      v375 = v94;
                      *(v94 + 16) = v673;
                      *(v94 + 24) = v95;
                      v374 = sub_268F9B734();
                      v376 = v96;

                      v97 = v372;
                      v98 = v376;
                      *v376 = v674;
                      v98[1] = v97;

                      v99 = v373;
                      v100 = v376;
                      v376[2] = v675;
                      v100[3] = v99;

                      v101 = v375;
                      v102 = v376;
                      v376[4] = v676;
                      v102[5] = v101;
                      sub_268CD0F7C();

                      if (os_log_type_enabled(v377, v378))
                      {
                        v360 = sub_268F9B3A4();
                        v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
                        v361 = sub_268CD5448(0);
                        v362 = sub_268CD5448(1);
                        v363 = &v756;
                        v756 = v360;
                        v364 = &v755;
                        v755 = v361;
                        v365 = &v754;
                        v754 = v362;
                        sub_268CD549C(2, &v756);
                        sub_268CD549C(1, v363);
                        v103 = v425;
                        v752 = v674;
                        v753 = v372;
                        sub_268CD54B0(&v752, v363, v364, v365);
                        v366 = v103;
                        if (v103)
                        {

                          __break(1u);
                        }

                        else
                        {
                          v752 = v675;
                          v753 = v373;
                          sub_268CD54B0(&v752, &v756, &v755, &v754);
                          v357 = 0;
                          v752 = v676;
                          v753 = v375;
                          sub_268CD54B0(&v752, &v756, &v755, &v754);
                          v356 = 0;
                          _os_log_impl(&dword_268CBE000, v377, v378, "setting name: %s.", v360, 0xCu);
                          sub_268CD54FC(v361);
                          sub_268CD54FC(v362);
                          sub_268F9B384();

                          v358 = v356;
                        }
                      }

                      else
                      {

                        v358 = v425;
                      }

                      v355 = v358;
                      MEMORY[0x277D82BD8](v377);

                      v353 = v792;
                      v350 = v792[0];
                      MEMORY[0x277D82BE0](v792[0]);
                      v351 = 0;
                      v352 = sub_268F284EC(v379, v380, v692, v350, 0);
                      MEMORY[0x277D82BD8](v350);

                      v757 = v352;
                      sub_268CD7620();
                      v354 = sub_268DA95CC(v352, v351, v351);

                      sub_268D35038(v353);

                      v558 = v354;
                      v559 = v355;
                      return v558;
                    }
                  }

LABEL_158:

                  sub_268F9A5C4();
                  v349 = v782[1];

                  if (!v349)
                  {
                    goto LABEL_204;
                  }

                  v348 = v349;
                  v346 = v349;
                  v104 = sub_268DDA5D0();
                  v344 = *v104;
                  v345 = v104[1];

                  v347 = sub_268F9A0A4();

                  if (v347)
                  {
                    v343 = v347;
                    v762 = v347;
                    v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
                    v105 = sub_268E30B2C();
                    v106 = v425;
                    v107 = sub_268DE25C8(v677, 0, v340, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v105, MEMORY[0x277D84AC0], v610);
                    v341 = v106;
                    v342 = v107;
                    if (v106)
                    {
                      goto LABEL_290;
                    }

                    v337 = v342;
                    sub_268CD7930(&v762);
                    v338 = v337;
                    v339 = v341;
                  }

                  else
                  {
LABEL_204:
                    v338 = 0;
                    v339 = v425;
                  }

                  v336 = v339;
                  v782[0] = v338;
                  if (v338)
                  {
                    v783 = v782[0];
                  }

                  else
                  {
                    v783 = sub_268F9B734();
                    if (v782[0])
                    {
                      sub_268CD7930(v782);
                    }
                  }

                  sub_268F9A5C4();
                  v335 = v780[1];

                  if (!v335)
                  {
                    goto LABEL_203;
                  }

                  v334 = v335;
                  v332 = v335;
                  v333 = sub_268F9A1C4();

                  if (!v333)
                  {
                    goto LABEL_203;
                  }

                  v331 = v333;
                  v329 = v333;
                  v108 = sub_268DDA5D0();
                  v327 = *v108;
                  v328 = v108[1];

                  v330 = sub_268F9A0A4();

                  if (v330)
                  {
                    v326 = v330;
                    v763 = v330;
                    v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
                    v109 = sub_268E30B2C();
                    v110 = v336;
                    v111 = sub_268DE25C8(v678, 0, v323, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v109, MEMORY[0x277D84AC0], v610);
                    v324 = v110;
                    v325 = v111;
                    if (v110)
                    {
                      goto LABEL_291;
                    }

                    v320 = v325;
                    sub_268CD7930(&v763);
                    v321 = v320;
                    v322 = v324;
                  }

                  else
                  {
LABEL_203:
                    v321 = 0;
                    v322 = v336;
                  }

                  v319 = v322;
                  v780[0] = v321;
                  if (v321)
                  {
                    v781 = v780[0];
                  }

                  else
                  {
                    v781 = sub_268F9B734();
                    if (v780[0])
                    {
                      sub_268CD7930(v780);
                    }
                  }

                  v312 = &v779;
                  v779 = v781;
                  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
                  v314 = sub_268DA6BFC();
                  sub_268F9B054();
                  v313 = v783;

                  v317 = &v778;
                  v778 = v313;
                  v112 = sub_268E42E48();
                  v316 = v777;
                  v777[0] = v112;
                  v777[1] = v113;
                  v318 = sub_268F9AFC4();
                  sub_268CD9D30(v316);
                  sub_268CD7930(v317);
                  if (v318)
                  {
                    v307 = v783;

                    v309 = &v765;
                    v765 = v307;
                    v114 = sub_268E42E48();
                    v308 = v764;
                    v764[0] = v114;
                    v764[1] = v115;
                    v310 = sub_268F9AFC4();
                    sub_268CD9D30(v308);
                    sub_268CD7930(v309);
                    v311 = v310;
                  }

                  else
                  {
                    v311 = 0;
                  }

                  if (v311)
                  {
                    v767 = 36;
                    v300 = BinarySettingIdentifier.rawValue.getter();
                    v302 = v116;
                    v305 = v792;
                    v301 = v792[0];
                    MEMORY[0x277D82BE0](v792[0]);
                    v303 = 0;
                    v304 = sub_268F284EC(v300, v302, v692, v301, 0);
                    MEMORY[0x277D82BD8](v301);

                    v766 = v304;
                    sub_268CD7620();
                    v306 = sub_268DA95CC(v304, 1, v303);
                    sub_268CD7930(&v783);
                    sub_268D35038(v305);

                    v558 = v306;
                    v559 = v319;
                    return v558;
                  }

                  v297 = &v776;
                  swift_beginAccess();
                  v298 = *(v532 + 16);
                  v299 = *(v532 + 24);

                  swift_endAccess();
                  v775[0] = v298;
                  v775[1] = v299;
                  v296 = v299 == 0;
                  v295 = v296;
                  sub_268CD9D30(v775);
                  if (v295)
                  {
                    sub_268D35D60(v693, v769);
                    if (!v769[3])
                    {
                      sub_268D28414(v769);
LABEL_201:
                      v124 = sub_268DDA790();
                      v278 = *v124;
                      v279 = v124[1];

                      v277 = sub_268F9A7E4();
                      sub_268D91304();
                      v280 = swift_allocError();
                      sub_268E2AB74(v706, v278, v279, v125);

                      swift_willThrow();
                      sub_268CD7930(&v783);
                      sub_268D35038(v792);

                      v615 = v280;
                      return v610;
                    }

                    v290 = v770;
                    sub_268CDF978(v769, v770);
                    v291 = v771;
                    v292 = v772;
                    v293 = __swift_project_boxed_opaque_existential_1(v290, v771);

                    sub_268F9A5C4();
                    v294 = v768[3];

                    if (v294)
                    {
                      v289 = v294;
                      v286 = v294;
                      v287 = sub_268F99F04();

                      v288 = v287;
                    }

                    else
                    {
                      v288 = 0;
                    }

                    v285 = v288;
                    (*(v292 + 16))();

                    if ((*(v686 + 48))(v682, 1, v685) == 1)
                    {
                      sub_268D59D2C(v682);
                      __swift_destroy_boxed_opaque_existential_0(v770);
                      goto LABEL_201;
                    }

                    (*(v686 + 32))(v689, v682, v685);
                    v281 = sub_268F9ACC4();
                    v282 = v117;
                    v283 = v768;
                    swift_beginAccess();
                    v118 = v532;
                    v119 = v282;
                    v120 = *(v532 + 24);
                    *(v532 + 16) = v281;
                    *(v118 + 24) = v119;

                    swift_endAccess();
                    v284 = 0;
                    sub_268DA9760();
                    v121 = sub_268DA9564(v284, v284, v284, v284, v284, v284);
                    v122 = v792[0];
                    v792[0] = v121;
                    v123 = MEMORY[0x277D82BD8](v122);
                    (*(v686 + 8))(v689, v685, v123);
                    __swift_destroy_boxed_opaque_existential_0(v770);
                  }

                  v269 = &v774;
                  swift_beginAccess();
                  v270 = *(v532 + 16);
                  v272 = *(v532 + 24);

                  swift_endAccess();
                  v275 = v792;
                  v271 = v792[0];
                  MEMORY[0x277D82BE0](v792[0]);
                  v273 = 0;
                  v274 = sub_268F284EC(v270, v272, v692, v271, 0);
                  MEMORY[0x277D82BD8](v271);

                  v773 = v274;
                  sub_268CD7620();
                  v276 = sub_268DA95CC(v274, 1, v273);
                  sub_268CD7930(&v783);
                  sub_268D35038(v275);

                  v558 = v276;
                  v559 = v319;
                  return v558;
                }

                sub_268CD9D30(v751);
              }

              else if (!*(&v785 + 1))
              {
                sub_268CD9D30(v784);
                v413 = 1;
                goto LABEL_130;
              }

              sub_268D28550(v784);
              v413 = 0;
              goto LABEL_130;
            }

            sub_268D28550(v787);
            v424 = 0;
            goto LABEL_119;
          }

          sub_268D9C0BC(v701);
          v474 = v468;
        }

        else
        {
          v474 = v491;
        }
      }

      else
      {
        v474 = v491;
      }

      v461 = 0;
      v462 = 0;
      v463 = v474;
      goto LABEL_105;
    }

    sub_268F9A204();

    if (v830[3])
    {
      sub_268F9A304();
      if (swift_dynamicCast())
      {
        v268 = v795;
      }

      else
      {
        v268 = 0;
      }

      v267 = v268;
    }

    else
    {
      sub_268D28414(v830);
      v267 = 0;
    }

    v266 = v267;
    if (v267)
    {
      v265 = v266;
      v263 = v266;
      v810 = v266;

      sub_268F9A5C4();
      v264 = v808;

      if (v264)
      {
        v262 = v264;
        v259 = v264;
        v128 = sub_268DDA5D0();
        v257 = *v128;
        v258 = v128[1];

        v260 = sub_268F9A0A4();

        if (v260)
        {
          v256 = v260;
          v796[0] = v260;
          v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          v129 = v654;
          sub_268F9AF94();
          v255 = v129;
          if (v129)
          {
            goto LABEL_292;
          }

          sub_268CD7930(v796);
          v251 = sub_268F99F64();
          v252 = *(v251 - 8);
          v253 = v251 - 8;
          if ((*(v252 + 48))(v697, 1) != 1)
          {
            *&v249 = sub_268F99F44();
            *(&v249 + 1) = v130;
            (*(v252 + 8))(v697, v251);
            v809 = v249;
            v250 = v255;
            goto LABEL_224;
          }

          sub_268D9C0BC(v697);
          v261 = v255;
        }

        else
        {
          v261 = v654;
        }
      }

      else
      {
        v261 = v654;
      }

      v809 = 0uLL;
      v250 = v261;
LABEL_224:
      v248 = v250;
      sub_268D35D60(v693, v804);
      if (v804[3])
      {
        sub_268CDF978(v804, v805);
        v247 = v809;

        v802 = v247;

        if (*(&v802 + 1))
        {
          v803 = v802;
        }

        else
        {
          v243 = v806;
          v244 = v807;
          v245 = __swift_project_boxed_opaque_existential_1(v805, v806);

          sub_268F9A5C4();
          v246 = v801;

          if (v246)
          {
            v242 = v246;
            v239 = v246;
            v240 = sub_268F99F04();

            v241 = v240;
          }

          else
          {
            v241 = 0;
          }

          v237 = v241;
          *&v238 = (*(v244 + 8))();
          *(&v238 + 1) = v131;

          v803 = v238;
          if (*(&v802 + 1))
          {
            sub_268CD9D30(&v802);
          }
        }

        v236 = v803;
        if (*(&v803 + 1))
        {
          v235 = v236;
          v230 = v236;
          v800 = v236;
          v799 = 3;
          v229 = *sub_268DDB4E8();

          v233 = &v798;
          v798 = v229;
          v232 = &v797;
          v797 = v230;
          v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
          sub_268DA6BFC();
          v234 = sub_268F9AFC4();
          sub_268CD7930(v233);
          if (v234)
          {
            v799 = 1;
            v228 = 1;
          }

          else
          {
            v228 = 3;
          }

          v226 = v228;

          sub_268F9A5C4();
          v227 = v796[1];

          if (v227)
          {
            v225 = v227;
            v222 = v227;
            v223 = sub_268F9A084();

            v224 = v223;
          }

          else
          {
            v224 = 0;
          }

          v220 = v224;

          v219 = sub_268F9A5B4();

          v221 = sub_268E30624(v220, v219, v230, *(&v230 + 1), v226, v692);

          __swift_destroy_boxed_opaque_existential_0(v805);
          sub_268CD9D30(&v809);

          v558 = v221;
          v559 = v248;
          return v558;
        }

        __swift_destroy_boxed_opaque_existential_0(v805);
      }

      else
      {
        sub_268D28414(v804);
      }

      v132 = sub_268DDA790();
      v216 = *v132;
      v217 = v132[1];

      v215 = sub_268F9A7E4();
      sub_268D91304();
      v218 = swift_allocError();
      sub_268E2AB74(v706, v216, v217, v133);

      swift_willThrow();
      sub_268CD9D30(&v809);

      v615 = v218;
      return v610;
    }

    sub_268F9A204();

    if (v829[3])
    {
      sub_268F9A3B4();
      if (swift_dynamicCast())
      {
        v214 = v811;
      }

      else
      {
        v214 = 0;
      }

      v213 = v214;
    }

    else
    {
      sub_268D28414(v829);
      v213 = 0;
    }

    v212 = v213;
    if (!v213)
    {
      v156[1] = 0;
      v163 = sub_268F9A7E4();
      sub_268D91304();
      v158 = 1;
      v165 = swift_allocError();
      v164 = v140;
      v141 = sub_268F9B724();
      v160 = &v827;
      v827 = v141;
      v828 = v142;
      v143 = sub_268F9AEF4();
      v156[0] = v144;
      MEMORY[0x26D62E360](v143);

      v156[2] = &v826;
      v826 = v706;
      sub_268F9A6E4();
      v145 = sub_268F9AE64();
      v157 = v825;
      v825[0] = v145;
      v825[1] = v146;
      sub_268F9B704();
      sub_268CD9D30(v157);
      v147 = sub_268F9AEF4();
      v159 = v148;
      MEMORY[0x26D62E360](v147);

      v162 = v827;
      v161 = v828;

      sub_268CD9D30(v160);
      v149 = sub_268F9AED4();
      v150 = v163;
      v151 = v149;
      v152 = v164;
      *v164 = v151;
      v152[1] = v153;
      v154 = *MEMORY[0x277D61E00];
      (*(*(v150 - 8) + 104))();
      swift_willThrow();
      v615 = v165;
      return v610;
    }

    v211 = v212;
    v209 = v212;
    v824 = v212;

    sub_268F9A5C4();
    v210 = v822;

    if (v210)
    {
      v208 = v210;
      v205 = v210;
      v134 = sub_268DDA5D0();
      v203 = *v134;
      v204 = v134[1];

      v206 = sub_268F9A0A4();

      if (v206)
      {
        v202 = v206;
        v812 = v206;
        v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        v135 = v654;
        sub_268F9AF94();
        v201 = v135;
        if (v135)
        {
          goto LABEL_293;
        }

        sub_268CD7930(&v812);
        v197 = sub_268F99F64();
        v198 = *(v197 - 8);
        v199 = v197 - 8;
        if ((*(v198 + 48))(v695, 1) != 1)
        {
          *&v195 = sub_268F99F44();
          *(&v195 + 1) = v136;
          (*(v198 + 8))(v695, v197);
          v823 = v195;
          v196 = v201;
          goto LABEL_263;
        }

        sub_268D9C0BC(v695);
        v207 = v201;
      }

      else
      {
        v207 = v654;
      }
    }

    else
    {
      v207 = v654;
    }

    v823 = 0uLL;
    v196 = v207;
LABEL_263:
    v194 = v196;
    sub_268D35D60(v693, v818);
    if (v818[3])
    {
      sub_268CDF978(v818, v819);
      v193 = v823;

      v816 = v193;

      if (*(&v816 + 1))
      {
        v817 = v816;
      }

      else
      {
        v189 = v820;
        v190 = v821;
        v191 = __swift_project_boxed_opaque_existential_1(v819, v820);

        sub_268F9A5C4();
        v192 = v815;

        if (v192)
        {
          v188 = v192;
          v185 = v192;
          v186 = sub_268F99F04();

          v187 = v186;
        }

        else
        {
          v187 = 0;
        }

        v183 = v187;
        *&v184 = (*(v190 + 8))();
        *(&v184 + 1) = v137;

        v817 = v184;
        if (*(&v816 + 1))
        {
          sub_268CD9D30(&v816);
        }
      }

      v182 = v817;
      if (*(&v817 + 1))
      {
        v181 = v182;
        v178 = *(&v182 + 1);
        v179 = v182;
        v814 = v182;

        sub_268F9A5C4();
        v180 = v813[5];

        if (v180)
        {
          v177 = v180;
          v174 = v180;
          v175 = sub_268F9A084();

          v176 = v175;
        }

        else
        {
          v176 = 0;
        }

        v172 = v176;

        v171 = sub_268F9A5B4();

        v170 = v813;
        memset(v813, 0, 40);
        v173 = sub_268E30624(v172, v171, v179, v178, 3, v813);
        sub_268D28414(v170);

        __swift_destroy_boxed_opaque_existential_0(v819);
        sub_268CD9D30(&v823);

        v558 = v173;
        v559 = v194;
        return v558;
      }

      __swift_destroy_boxed_opaque_existential_0(v819);
    }

    else
    {
      sub_268D28414(v818);
    }

    v138 = sub_268DDA790();
    v167 = *v138;
    v168 = v138[1];

    v166 = sub_268F9A7E4();
    sub_268D91304();
    v169 = swift_allocError();
    sub_268E2AB74(v706, v167, v168, v139);

    swift_willThrow();
    sub_268CD9D30(&v823);

    v615 = v169;
    return v610;
  }

  v649 = v650;
  v647 = v650;
  v731 = v650;

  sub_268F9A5C4();
  v648 = v728[1];

  if (v648)
  {
    v646 = v648;
    v643 = v648;
    v22 = sub_268DDA5D0();
    v641 = *v22;
    v642 = v22[1];

    v644 = sub_268F9A0A4();

    if (v644)
    {
      v640 = v644;
      v708[0] = v644;
      v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
      sub_268DA5FC0();
      v23 = v654;
      sub_268F9AF94();
      v639 = v23;
      if (v23)
      {
        __break(1u);
        goto LABEL_286;
      }

      sub_268CD7930(v708);
      v635 = sub_268F99F64();
      v636 = *(v635 - 8);
      v637 = v635 - 8;
      if ((*(v636 + 48))(v705, 1) != 1)
      {
        v632 = sub_268F99F44();
        v633 = v24;
        (*(v636 + 8))(v705, v635);
        v729 = v632;
        v730 = v633;
        v634 = v639;
        goto LABEL_17;
      }

      sub_268D9C0BC(v705);
      v645 = v639;
    }

    else
    {
      v645 = v654;
    }
  }

  else
  {
    v645 = v654;
  }

  v729 = 0;
  v730 = 0;
  v634 = v645;
LABEL_17:
  v629 = v634;
  v728[0] = 0;
  v630 = v729;
  v631 = v730;

  v727[0] = v630;
  v727[1] = v631;
  v628 = v631 == 0;
  v627 = v628;
  sub_268CD9D30(v727);
  if (!v627)
  {

    sub_268F9A5C4();
    v609 = v726[1];

    if (v609)
    {
      v608 = v609;
      v605 = v609;
      v606 = sub_268F9A084();

      v607 = v606;
    }

    else
    {
      v607 = 0;
    }

    v603 = v607;
    v604 = sub_268E2C7C8(v607);

    v31 = v728[0];
    v728[0] = v604;
    MEMORY[0x277D82BD8](v31);
LABEL_31:

    sub_268F9A5C4();
    v602 = v725[1];

    if (!v602)
    {
      goto LABEL_68;
    }

    v601 = v602;
    v599 = v602;
    v32 = sub_268DDA5D0();
    v597 = *v32;
    v598 = v32[1];

    v600 = sub_268F9A0A4();

    if (!v600)
    {
LABEL_68:
      v591 = 0;
      v592 = v629;
      goto LABEL_39;
    }

    v596 = v600;
    v713 = v600;
    v593 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
    v33 = sub_268E30B2C();
    v34 = v629;
    v35 = sub_268DE25C8(v656, 0, v593, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v33, MEMORY[0x277D84AC0], v610);
    v594 = v34;
    v595 = v35;
    if (!v34)
    {
      v590 = v595;
      sub_268CD7930(&v713);
      v591 = v590;
      v592 = v594;
LABEL_39:
      v589 = v592;
      v725[0] = v591;
      if (v591)
      {
        v726[0] = v725[0];
      }

      else
      {
        v726[0] = sub_268F9B734();
        if (v725[0])
        {
          sub_268CD7930(v725);
        }
      }

      sub_268F9A5C4();
      v588 = v723[1];

      if (!v588)
      {
        goto LABEL_67;
      }

      v587 = v588;
      v585 = v588;
      v586 = sub_268F9A1C4();

      if (!v586)
      {
        goto LABEL_67;
      }

      v584 = v586;
      v582 = v586;
      v36 = sub_268DDA5D0();
      v580 = *v36;
      v581 = v36[1];

      v583 = sub_268F9A0A4();

      if (!v583)
      {
LABEL_67:
        v574 = 0;
        v575 = v589;
        goto LABEL_55;
      }

      v579 = v583;
      v714 = v583;
      v576 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
      v37 = sub_268E30B2C();
      v38 = v589;
      v39 = sub_268DE25C8(v657, 0, v576, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v37, MEMORY[0x277D84AC0], v610);
      v577 = v38;
      v578 = v39;
      if (!v38)
      {
        v573 = v578;
        sub_268CD7930(&v714);
        v574 = v573;
        v575 = v577;
LABEL_55:
        v572 = v575;
        v723[0] = v574;
        if (v574)
        {
          v724 = v723[0];
        }

        else
        {
          v724 = sub_268F9B734();
          if (v723[0])
          {
            sub_268CD7930(v723);
          }
        }

        v565 = &v722;
        v722 = v724;
        v568 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
        v567 = sub_268DA6BFC();
        sub_268F9B054();
        v566 = v726[0];

        v570 = &v721;
        v721 = v566;
        v40 = sub_268E42E48();
        v569 = v720;
        v720[0] = v40;
        v720[1] = v41;
        v571 = sub_268F9AFC4();
        sub_268CD9D30(v569);
        sub_268CD7930(v570);
        if (v571)
        {
          v560 = v726[0];

          v562 = &v716;
          v716 = v560;
          v42 = sub_268E42E48();
          v561 = v715;
          v715[0] = v42;
          v715[1] = v43;
          v563 = sub_268F9AFC4();
          sub_268CD9D30(v561);
          sub_268CD7930(v562);
          v564 = v563;
        }

        else
        {
          v564 = 0;
        }

        if (v564)
        {
          v718 = 36;
          v551 = BinarySettingIdentifier.rawValue.getter();
          v553 = v44;
          v556 = v728;
          v552 = v728[0];
          MEMORY[0x277D82BE0](v728[0]);
          v554 = 0;
          v555 = sub_268F284EC(v551, v553, v692, v552, 0);
          MEMORY[0x277D82BD8](v552);

          v717 = v555;
          sub_268CD7620();
          v557 = sub_268DA95CC(v555, 2, v554);
          sub_268CD7930(v726);
          sub_268D35038(v556);
          sub_268CD9D30(&v729);

          v558 = v557;
        }

        else
        {
          v549 = &v729;
          v540 = v729;
          v542 = v730;

          v548 = v728;
          v541 = v728[0];
          MEMORY[0x277D82BE0](v728[0]);
          v543 = 0;
          v546 = sub_268F284EC(v540, v542, v692, v541, 0);
          MEMORY[0x277D82BD8](v541);

          v719 = v546;
          v544 = sub_268CD7620();

          v545 = sub_268F9A5B4();

          v547 = sub_268E2A500(v545);

          v550 = sub_268DA95CC(v546, 2, v547);
          sub_268CD7930(v726);
          sub_268D35038(v548);
          sub_268CD9D30(v549);

          v558 = v550;
        }

        v559 = v572;
        return v558;
      }

      goto LABEL_287;
    }

LABEL_286:
    __break(1u);
LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
LABEL_293:
    __break(1u);
    return v610;
  }

  sub_268D35D60(v693, v709);
  if (v709[3])
  {
    v622 = v710;
    sub_268CDF978(v709, v710);
    v623 = v711;
    v624 = v712;
    v625 = __swift_project_boxed_opaque_existential_1(v622, v711);

    sub_268F9A5C4();
    v626 = v708[1];

    if (v626)
    {
      v621 = v626;
      v618 = v626;
      v619 = sub_268F99F04();

      v620 = v619;
    }

    else
    {
      v620 = 0;
    }

    v617 = v620;
    (*(v624 + 16))();

    if ((*(v686 + 48))(v684, 1, v685) == 1)
    {
      sub_268D59D2C(v684);
      __swift_destroy_boxed_opaque_existential_0(v710);
      goto LABEL_26;
    }

    (*(v686 + 32))(v691, v684, v685);
    v729 = sub_268F9ACC4();
    v730 = v25;

    v616 = 0;
    sub_268DA9760();
    v26 = sub_268DA9564(v616, v616, v616, v616, v616, v616);
    v27 = v728[0];
    v728[0] = v26;
    v28 = MEMORY[0x277D82BD8](v27);
    (*(v686 + 8))(v691, v685, v28);
    __swift_destroy_boxed_opaque_existential_0(v710);
    goto LABEL_31;
  }

  sub_268D28414(v709);
LABEL_26:
  v29 = sub_268DDA790();
  v612 = *v29;
  v613 = v29[1];

  v611 = sub_268F9A7E4();
  sub_268D91304();
  v614 = swift_allocError();
  sub_268E2AB74(v706, v612, v613, v30);

  swift_willThrow();
  sub_268D35038(v728);
  sub_268CD9D30(&v729);

  v615 = v614;
  return v610;
}