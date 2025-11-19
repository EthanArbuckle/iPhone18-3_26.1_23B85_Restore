uint64_t MediaAPI.MusicVideoAttributes.albumName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.artistName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.artwork.getter()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_179_0();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_313();
  return OUTLINED_FUNCTION_360(v3, v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
}

void *MediaAPI.MusicVideoAttributes.artwork.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_179_0();
  memcpy(v0, v1, v2);
  sub_27534B488(v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  return OUTLINED_FUNCTION_309();
}

uint64_t MediaAPI.MusicVideoAttributes.audioLocale.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 176);

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.audioTraits.setter()
{
  result = OUTLINED_FUNCTION_481();
  *(v1 + 184) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.composerName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 200);

  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.contentProvider.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 216);

  *(v1 + 208) = v2;
  *(v1 + 216) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.contentRating.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.MusicVideoAttributes.contentRating.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 232);

  *(v1 + 224) = v2;
  *(v1 + 232) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.copyright.getter()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.MusicVideoAttributes.copyright.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 248);

  *(v1 + 240) = v2;
  *(v1 + 248) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.editorialNotes.setter(uint64_t a1)
{
  v3 = *(v1 + 288);

  *(v1 + 288) = a1;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.extendedAssetUrls.setter(uint64_t a1)
{
  v3 = *(v1 + 296);

  *(v1 + 296) = a1;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.genreNames.setter(uint64_t a1)
{
  v3 = *(v1 + 304);

  *(v1 + 304) = a1;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.immersiveUrl.getter()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.MusicVideoAttributes.immersiveUrl.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 328);

  *(v1 + 320) = v2;
  *(v1 + 328) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.isrc.getter()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.MusicVideoAttributes.isrc.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 344);

  *(v1 + 336) = v2;
  *(v1 + 344) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.name.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 360);

  *(v1 + 352) = v2;
  *(v1 + 360) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.playParams.getter()
{
  OUTLINED_FUNCTION_252();
  v2 = memcpy(v1, (v0 + 368), 0x91uLL);
  v3 = OUTLINED_FUNCTION_375(v2, (v0 + 368));
  return OUTLINED_FUNCTION_363(v3, v4, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

void *MediaAPI.MusicVideoAttributes.playParams.setter()
{
  OUTLINED_FUNCTION_140_1();
  memcpy(v1, (v0 + 368), 0x91uLL);
  sub_27534B488(v3, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  return OUTLINED_FUNCTION_371((v0 + 368));
}

uint64_t MediaAPI.MusicVideoAttributes.previews.setter(uint64_t a1)
{
  v3 = *(v1 + 520);

  *(v1 + 520) = a1;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.releaseDate.getter()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 536);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.MusicVideoAttributes.releaseDate.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 536);

  *(v1 + 528) = v2;
  *(v1 + 536) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.trackNumber.getter()
{
  result = *(v0 + 544);
  v2 = *(v0 + 552);
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.trackNumber.setter(uint64_t result, char a2)
{
  *(v2 + 544) = result;
  *(v2 + 552) = a2 & 1;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.videoTraits.setter(uint64_t a1)
{
  v3 = *(v1 + 560);

  *(v1 + 560) = a1;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.workName.getter()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 576);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.MusicVideoAttributes.workName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 576);

  *(v1 + 568) = v2;
  *(v1 + 576) = v0;
  return result;
}

uint64_t sub_275336418(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x636F4C6F69647561 && a2 == 0xEB00000000656C61;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6172546F69647561 && a2 == 0xEB00000000737469;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7265736F706D6F63 && a2 == 0xEC000000656D614ELL;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x50746E65746E6F63 && a2 == 0xEF72656469766F72;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x626D754E63736964 && a2 == 0xEA00000000007265;
                    if (v14 || (sub_2753B7718() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x80000002753B95E0 == a2;
                      if (v15 || (sub_2753B7718() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
                        if (v16 || (sub_2753B7718() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000011 && 0x80000002753B9320 == a2;
                          if (v17 || (sub_2753B7718() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                            if (v18 || (sub_2753B7718() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x4B34736168 && a2 == 0xE500000000000000;
                              if (v19 || (sub_2753B7718() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x76697372656D6D69 && a2 == 0xEC0000006C725565;
                                if (v20 || (sub_2753B7718() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 1668445033 && a2 == 0xE400000000000000;
                                  if (v21 || (sub_2753B7718() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 1701667182 && a2 == 0xE400000000000000;
                                    if (v22 || (sub_2753B7718() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                                      if (v23 || (sub_2753B7718() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x7377656976657270 && a2 == 0xE800000000000000;
                                        if (v24 || (sub_2753B7718() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                          if (v25 || (sub_2753B7718() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6D754E6B63617274 && a2 == 0xEB00000000726562;
                                            if (v26 || (sub_2753B7718() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x6172546F65646976 && a2 == 0xEB00000000737469;
                                              if (v27 || (sub_2753B7718() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else if (a1 == 0x656D614E6B726F77 && a2 == 0xE800000000000000)
                                              {

                                                return 23;
                                              }

                                              else
                                              {
                                                v29 = sub_2753B7718();

                                                if (v29)
                                                {
                                                  return 23;
                                                }

                                                else
                                                {
                                                  return 24;
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_275336B54(char a1)
{
  result = 0x6D614E6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x614E747369747261;
      break;
    case 2:
      result = 0x6B726F77747261;
      break;
    case 3:
      result = 0x636F4C6F69647561;
      break;
    case 4:
      v3 = 1768191329;
      goto LABEL_23;
    case 5:
      result = 0x7265736F706D6F63;
      break;
    case 6:
      result = 0x50746E65746E6F63;
      break;
    case 7:
      result = 0x52746E65746E6F63;
      break;
    case 8:
      result = 0x6867697279706F63;
      break;
    case 9:
      result = 0x626D754E63736964;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6169726F74696465;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x6D614E65726E6567;
      break;
    case 14:
      result = 0x4B34736168;
      break;
    case 15:
      result = 0x76697372656D6D69;
      break;
    case 16:
      result = 1668445033;
      break;
    case 17:
      result = 1701667182;
      break;
    case 18:
      result = 0x6172615079616C70;
      break;
    case 19:
      result = 0x7377656976657270;
      break;
    case 20:
      result = 0x44657361656C6572;
      break;
    case 21:
      result = 0x6D754E6B63617274;
      break;
    case 22:
      v3 = 1701079414;
LABEL_23:
      result = v3 | 0x6172546F00000000;
      break;
    case 23:
      result = 0x656D614E6B726F77;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275336E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275336418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275336EA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_275336B4C();
  *a1 = result;
  return result;
}

uint64_t sub_275336ED0(uint64_t a1)
{
  v2 = sub_27534B9C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275336F0C(uint64_t a1)
{
  v2 = sub_27534B9C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.MusicVideoAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v4 = v3;
  OUTLINED_FUNCTION_236_0();
  sub_27534DC8C(0, v5, v6, v7, MEMORY[0x277D84538]);
  v9 = v8;
  OUTLINED_FUNCTION_2_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_122_2();
  v64 = v0[1];
  v65 = *v0;
  v62 = v0[3];
  v63 = v0[2];
  OUTLINED_FUNCTION_179_0();
  memcpy(v15, v16, v17);
  v60 = v0[22];
  v61 = v0[21];
  v58 = v0[25];
  v59 = v0[23];
  v55 = v0[26];
  v56 = v0[27];
  v57 = v0[24];
  v53 = v0[28];
  v54 = v0[29];
  v51 = v0[30];
  v52 = v0[31];
  v49 = v0[32];
  v50 = *(v0 + 264);
  v48 = *(v0 + 280);
  v46 = v0[36];
  v47 = v0[34];
  v44 = v0[38];
  v45 = v0[37];
  v43 = *(v0 + 312);
  v41 = v0[41];
  v42 = v0[40];
  v39 = v0[42];
  v40 = v0[43];
  v30 = v0[44];
  v32 = v0[45];
  memcpy(v71, v0 + 46, 0x91uLL);
  v33 = v0[65];
  v34 = v0[66];
  v35 = v0[67];
  v36 = v0[68];
  v37 = *(v0 + 552);
  v38 = v0[70];
  v31 = v0[71];
  v18 = v0[72];
  v19 = *(v4 + 24);
  v20 = *(v4 + 32);
  v21 = OUTLINED_FUNCTION_390();
  OUTLINED_FUNCTION_67_0(v21, v22);
  sub_27534B9C0();
  OUTLINED_FUNCTION_382();
  OUTLINED_FUNCTION_340();
  sub_2753B7808();
  LOBYTE(v67[0]) = 0;
  sub_2753B75F8();
  if (v1)
  {
    (*(v11 + 8))(v2, v9);
  }

  else
  {
    OUTLINED_FUNCTION_232_0(1);
    OUTLINED_FUNCTION_89_2();
    sub_2753B7658();
    memcpy(v69, v70, sizeof(v69));
    v68[135] = 2;
    sub_27534B40C(v70, v67, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    sub_27534B2F4();
    sub_2753B7638();
    memcpy(v68, v69, 0x81uLL);
    sub_27534B488(v68, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    OUTLINED_FUNCTION_232_0(3);
    OUTLINED_FUNCTION_89_2();
    sub_2753B75F8();
    v67[0] = v59;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v23, v24, v25);
    OUTLINED_FUNCTION_3_4();
    sub_27534B6A0(v26);
    OUTLINED_FUNCTION_458();
    sub_2753B7638();
    OUTLINED_FUNCTION_232_0(5);
    OUTLINED_FUNCTION_89_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_232_0(6);
    OUTLINED_FUNCTION_89_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_232_0(7);
    OUTLINED_FUNCTION_89_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_232_0(8);
    OUTLINED_FUNCTION_89_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_232_0(9);
    OUTLINED_FUNCTION_89_2();
    sub_2753B7628();
    OUTLINED_FUNCTION_232_0(10);
    OUTLINED_FUNCTION_89_2();
    sub_2753B7648();
    v67[0] = v46;
    sub_27534DB84(0, &qword_2809C0C60);
    OUTLINED_FUNCTION_10_4(&qword_2809C0C68);
    OUTLINED_FUNCTION_458();
    OUTLINED_FUNCTION_246();
    sub_2753B7638();
    v67[0] = v45;
    OUTLINED_FUNCTION_458();
    OUTLINED_FUNCTION_246();
    sub_2753B7638();
    v67[0] = v44;
    v66[0] = 13;
    OUTLINED_FUNCTION_458();
    OUTLINED_FUNCTION_465();
    LOBYTE(v67[0]) = 14;
    sub_2753B7608();
    OUTLINED_FUNCTION_232_0(15);
    OUTLINED_FUNCTION_350();
    sub_2753B75F8();
    OUTLINED_FUNCTION_232_0(16);
    OUTLINED_FUNCTION_350();
    sub_2753B75F8();
    OUTLINED_FUNCTION_232_0(17);
    OUTLINED_FUNCTION_350();
    sub_2753B75F8();
    OUTLINED_FUNCTION_331(v67);
    v66[151] = 18;
    sub_27534B40C(v71, v66, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    sub_27534B54C();
    sub_2753B7638();
    memcpy(v66, v67, 0x91uLL);
    sub_27534B488(v66, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v27, v28, v29);
    sub_27534B5A0();
    sub_2753B7638();
    OUTLINED_FUNCTION_346(20);
    OUTLINED_FUNCTION_350();
    sub_2753B75F8();
    OUTLINED_FUNCTION_346(21);
    OUTLINED_FUNCTION_350();
    sub_2753B7628();
    OUTLINED_FUNCTION_465();
    OUTLINED_FUNCTION_346(23);
    OUTLINED_FUNCTION_350();
    sub_2753B75F8();
    (*(v11 + 8))(0, v9);
  }

  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.MusicVideoAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_236_0();
  OUTLINED_FUNCTION_317(v5, v6, v7, v8, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30();
  sub_27534B348(v144);
  memcpy(v143, v144, sizeof(v143));
  sub_27534B690(&v145);
  OUTLINED_FUNCTION_331(v137);
  v13 = v2[3];
  v14 = v2[4];
  v75 = v2;
  v15 = OUTLINED_FUNCTION_298();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  sub_27534B9C0();
  OUTLINED_FUNCTION_299();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_184_0();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_247();
    OUTLINED_FUNCTION_356();
    __swift_destroy_boxed_opaque_existential_1(v2);

    OUTLINED_FUNCTION_479(v86);
    sub_27534B488(v86, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);

    OUTLINED_FUNCTION_478(v87);
    sub_27534B488(v87, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  }

  else
  {
    v71 = v4;
    LOBYTE(v87[0]) = 0;
    OUTLINED_FUNCTION_116_2();
    v17 = sub_2753B7518();
    v70 = v18;
    OUTLINED_FUNCTION_30_2(1);
    v19 = sub_2753B7578();
    v72 = v20;
    v134[135] = 2;
    sub_27534B350();
    OUTLINED_FUNCTION_116_2();
    sub_2753B7558();
    memcpy(v133, v135, sizeof(v133));
    OUTLINED_FUNCTION_479(v134);
    sub_27534B488(v134, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    memcpy(v143, v133, sizeof(v143));
    OUTLINED_FUNCTION_30_2(3);
    v67 = sub_2753B7518();
    v69 = v21;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v22, v23, v24);
    OUTLINED_FUNCTION_2_6();
    sub_27534B6A0(v25);
    OUTLINED_FUNCTION_345();
    OUTLINED_FUNCTION_116_2();
    sub_2753B7558();
    v146 = v87[0];
    OUTLINED_FUNCTION_30_2(5);
    v66 = sub_2753B7518();
    v85 = v26;
    OUTLINED_FUNCTION_30_2(6);
    v65 = sub_2753B7518();
    v84 = v27;
    OUTLINED_FUNCTION_30_2(7);
    v64 = sub_2753B7518();
    v83 = v28;
    OUTLINED_FUNCTION_30_2(8);
    v63 = sub_2753B7518();
    v62 = v19;
    v82 = v29;
    OUTLINED_FUNCTION_30_2(9);
    v30 = sub_2753B7548();
    v141 = v31 & 1;
    OUTLINED_FUNCTION_29_2(10);
    v61 = sub_2753B7568();
    v140 = v32 & 1;
    sub_27534DB84(0, &qword_2809C0C60);
    OUTLINED_FUNCTION_9_3(&qword_2809C0C78);
    OUTLINED_FUNCTION_345();
    OUTLINED_FUNCTION_116_2();
    sub_2753B7558();
    v81 = v87[0];
    OUTLINED_FUNCTION_345();
    OUTLINED_FUNCTION_116_2();
    sub_2753B7558();
    v80 = v87[0];
    OUTLINED_FUNCTION_345();
    OUTLINED_FUNCTION_116_2();
    sub_2753B7558();
    v79 = v87[0];
    OUTLINED_FUNCTION_29_2(14);
    v60 = sub_2753B7528();
    OUTLINED_FUNCTION_29_2(15);
    v59 = sub_2753B7518();
    v78 = v33;
    OUTLINED_FUNCTION_29_2(16);
    v58 = sub_2753B7518();
    v77 = v34;
    OUTLINED_FUNCTION_29_2(17);
    v57 = sub_2753B7518();
    v76 = v35;
    v131[151] = 18;
    sub_27534B76C();
    OUTLINED_FUNCTION_116_2();
    sub_2753B7558();
    memcpy(v130, v132, sizeof(v130));
    OUTLINED_FUNCTION_478(v131);
    sub_27534B488(v131, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    memcpy(v137, v130, 0x91uLL);
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v36, v37, v38);
    sub_27534B7C0();
    OUTLINED_FUNCTION_345();
    OUTLINED_FUNCTION_116_2();
    sub_2753B7558();
    v39 = v87[0];
    OUTLINED_FUNCTION_29_2(20);
    v56 = sub_2753B7518();
    v41 = v40;
    OUTLINED_FUNCTION_29_2(21);
    v55 = sub_2753B7548();
    v136 = v42 & 1;
    LOBYTE(v86[0]) = 22;
    OUTLINED_FUNCTION_345();
    OUTLINED_FUNCTION_116_2();
    sub_2753B7558();
    v43 = v87[0];
    v129 = 23;
    OUTLINED_FUNCTION_116_2();
    v68 = sub_2753B7518();
    v54 = v44;
    v45 = OUTLINED_FUNCTION_64_2();
    v46(v45);
    v86[0] = v17;
    v86[1] = v70;
    v86[2] = v62;
    v86[3] = v72;
    OUTLINED_FUNCTION_479(&v86[4]);
    *(&v86[20] + 1) = *v142;
    HIDWORD(v86[20]) = *&v142[3];
    v86[21] = v67;
    v86[22] = v69;
    v86[23] = v146;
    v86[24] = v66;
    v86[25] = v85;
    v86[26] = v65;
    v86[27] = v84;
    v86[28] = v64;
    v86[29] = v83;
    v86[30] = v63;
    v86[31] = v82;
    v86[32] = v30;
    v74 = v141;
    LOBYTE(v86[33]) = v141;
    OUTLINED_FUNCTION_451();
    HIDWORD(v86[33]) = v47;
    v86[34] = v61;
    v73 = v140;
    LOBYTE(v86[35]) = v140;
    *(&v86[35] + 1) = *v139;
    HIDWORD(v86[35]) = *&v139[3];
    v86[36] = v81;
    v86[37] = v80;
    v86[38] = v79;
    LOBYTE(v86[39]) = v60;
    *(&v86[39] + 1) = *v138;
    HIDWORD(v86[39]) = *&v138[3];
    v86[40] = v59;
    v86[41] = v78;
    v86[42] = v58;
    v86[43] = v77;
    v86[44] = v57;
    v86[45] = v76;
    OUTLINED_FUNCTION_478(&v86[46]);
    OUTLINED_FUNCTION_125_2((&v86[64] + 1));
    HIDWORD(v86[64]) = v48;
    v86[65] = v39;
    v86[66] = v56;
    v86[67] = v41;
    v86[68] = v55;
    v53 = v136;
    LOBYTE(v86[69]) = v136;
    OUTLINED_FUNCTION_71_2((&v86[69] + 1));
    HIDWORD(v86[69]) = v49;
    v86[70] = v43;
    v86[71] = v68;
    v86[72] = v54;
    memcpy(v71, v86, 0x248uLL);
    sub_27534BA14(v86, v87);
    __swift_destroy_boxed_opaque_existential_1(v75);
    v87[0] = v17;
    v87[1] = v70;
    v87[2] = v62;
    v87[3] = v72;
    OUTLINED_FUNCTION_479(&v88);
    *v89 = *v142;
    *&v89[3] = *&v142[3];
    v90 = v67;
    v91 = v69;
    v92 = v146;
    v93 = v66;
    v94 = v85;
    v95 = v65;
    v96 = v84;
    v97 = v64;
    v98 = v83;
    v99 = v63;
    v100 = v82;
    v101 = v30;
    v102 = v74;
    OUTLINED_FUNCTION_451();
    v103 = v50;
    v104 = v61;
    v105 = v73;
    *v106 = *v139;
    *&v106[3] = *&v139[3];
    v107 = v81;
    v108 = v80;
    v109 = v79;
    v110 = v60;
    *v111 = *v138;
    *&v111[3] = *&v138[3];
    v112 = v59;
    v113 = v78;
    v114 = v58;
    v115 = v77;
    v116 = v57;
    v117 = v76;
    OUTLINED_FUNCTION_478(&v118);
    OUTLINED_FUNCTION_125_2(v119);
    *&v119[3] = v51;
    v120 = v39;
    v121 = v56;
    v122 = v41;
    v123 = v55;
    v124 = v53;
    OUTLINED_FUNCTION_71_2(v125);
    *&v125[3] = v52;
    v126 = v43;
    v127 = v68;
    v128 = v54;
    sub_27534BA4C(v87);
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.LibraryMusicVideoAttributes.albumName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.LibraryMusicVideoAttributes.artistName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MediaAPI.LibraryMusicVideoAttributes.artwork.getter()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_179_0();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_313();
  return OUTLINED_FUNCTION_360(v3, v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
}

void *MediaAPI.LibraryMusicVideoAttributes.artwork.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_179_0();
  memcpy(v0, v1, v2);
  sub_27534B488(v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  return OUTLINED_FUNCTION_309();
}

uint64_t MediaAPI.LibraryMusicVideoAttributes.contentRating.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 176);

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t MediaAPI.LibraryMusicVideoAttributes.durationInMillis.getter()
{
  result = *(v0 + 184);
  v2 = *(v0 + 192);
  return result;
}

uint64_t MediaAPI.LibraryMusicVideoAttributes.durationInMillis.setter(uint64_t result, char a2)
{
  *(v2 + 184) = result;
  *(v2 + 192) = a2 & 1;
  return result;
}

uint64_t MediaAPI.LibraryMusicVideoAttributes.genreNames.setter(uint64_t a1)
{
  v3 = *(v1 + 200);

  *(v1 + 200) = a1;
  return result;
}

uint64_t MediaAPI.LibraryMusicVideoAttributes.name.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 216);

  *(v1 + 208) = v2;
  *(v1 + 216) = v0;
  return result;
}

uint64_t MediaAPI.LibraryMusicVideoAttributes.playParams.getter()
{
  OUTLINED_FUNCTION_252();
  v2 = memcpy(v1, (v0 + 224), 0x91uLL);
  v3 = OUTLINED_FUNCTION_375(v2, (v0 + 224));
  return OUTLINED_FUNCTION_363(v3, v4, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

void *MediaAPI.LibraryMusicVideoAttributes.playParams.setter()
{
  OUTLINED_FUNCTION_140_1();
  memcpy(v1, (v0 + 224), 0x91uLL);
  sub_27534B488(v3, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  return OUTLINED_FUNCTION_371((v0 + 224));
}

uint64_t MediaAPI.LibraryMusicVideoAttributes.releaseDate.getter()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.LibraryMusicVideoAttributes.releaseDate.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 384);

  *(v1 + 376) = v2;
  *(v1 + 384) = v0;
  return result;
}

uint64_t sub_2753386A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000002753B95E0 == a2;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1701667182 && a2 == 0xE400000000000000;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x6D754E6B63617274 && a2 == 0xEB00000000726562)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_2753B7718();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2753389D8(char a1)
{
  result = 0x6D614E6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x614E747369747261;
      break;
    case 2:
      result = 0x6B726F77747261;
      break;
    case 3:
      result = 0x52746E65746E6F63;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6D614E65726E6567;
      break;
    case 6:
      result = 1701667182;
      break;
    case 7:
      result = 0x6172615079616C70;
      break;
    case 8:
      result = 0x44657361656C6572;
      break;
    case 9:
      result = 0x6D754E6B63617274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275338B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2753386A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275338B74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2753389D0();
  *a1 = result;
  return result;
}

uint64_t sub_275338B9C(uint64_t a1)
{
  v2 = sub_27534BA7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275338BD8(uint64_t a1)
{
  v2 = sub_27534BA7C();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.LibraryMusicVideoAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_206_0();
  sub_27534DC8C(0, v4, v5, v6, MEMORY[0x277D84538]);
  v8 = v7;
  OUTLINED_FUNCTION_2_0(v7);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_70_2();
  v12 = v0[1];
  v37 = v0[2];
  v38 = *v0;
  v36 = v0[3];
  OUTLINED_FUNCTION_179_0();
  memcpy(v13, v14, v15);
  v34 = v0[22];
  v35 = v0[21];
  v33 = v0[23];
  v45 = *(v0 + 192);
  v30 = v0[26];
  v31 = v0[27];
  v32 = v0[25];
  memcpy(v44, v0 + 28, 0x91uLL);
  v28 = v0[47];
  v29 = v0[48];
  v26 = v0[49];
  v27 = *(v0 + 400);
  v16 = v3[4];
  OUTLINED_FUNCTION_67_0(v3, v3[3]);
  sub_27534BA7C();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_323();
  sub_2753B7808();
  LOBYTE(v40[0]) = 0;
  sub_2753B75F8();
  if (!v1)
  {
    OUTLINED_FUNCTION_318(1);
    OUTLINED_FUNCTION_58_1();
    sub_2753B75F8();
    memcpy(v42, v43, sizeof(v42));
    OUTLINED_FUNCTION_385();
    sub_27534B40C(v43, v40, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    sub_27534B2F4();
    OUTLINED_FUNCTION_442();
    OUTLINED_FUNCTION_77_2();
    sub_2753B7638();
    OUTLINED_FUNCTION_470(v41);
    sub_27534B488(v41, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    OUTLINED_FUNCTION_318(3);
    OUTLINED_FUNCTION_58_1();
    sub_2753B75F8();
    OUTLINED_FUNCTION_318(4);
    OUTLINED_FUNCTION_58_1();
    sub_2753B7648();
    v40[0] = v32;
    v39[0] = 5;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v17, v18, v19);
    OUTLINED_FUNCTION_3_4();
    sub_27534B6A0(v20);
    OUTLINED_FUNCTION_440();
    OUTLINED_FUNCTION_77_2();
    sub_2753B7638();
    OUTLINED_FUNCTION_318(6);
    OUTLINED_FUNCTION_58_1();
    sub_2753B75F8();
    OUTLINED_FUNCTION_331(v40);
    sub_27534B40C(v44, v39, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    sub_27534B54C();
    OUTLINED_FUNCTION_440();
    OUTLINED_FUNCTION_77_2();
    sub_2753B7638();
    v23 = OUTLINED_FUNCTION_432();
    memcpy(v23, v24, v25);
    sub_27534B488(v39, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    OUTLINED_FUNCTION_243(8);
    OUTLINED_FUNCTION_58_1();
    sub_2753B75F8();
    OUTLINED_FUNCTION_243(9);
    OUTLINED_FUNCTION_58_1();
    sub_2753B7628();
  }

  v21 = OUTLINED_FUNCTION_113_2();
  v22(v21, v8);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.LibraryMusicVideoAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_334();
  v4 = v3;
  OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_317(v5, v6, v7, v8, MEMORY[0x277D844C8]);
  v41 = v9;
  OUTLINED_FUNCTION_2_0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14();
  sub_27534B348(v87);
  memcpy(v86, v87, sizeof(v86));
  v84 = 1;
  sub_27534B690(&v88);
  OUTLINED_FUNCTION_331(v82);
  v80 = 1;
  v15 = v2[3];
  v16 = v2[4];
  v50 = v2;
  OUTLINED_FUNCTION_115_2(v2);
  sub_27534BA7C();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_169_0();
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_461();
    __swift_destroy_boxed_opaque_existential_1(v2);
    v60 = 0;
    v61 = 0;
    v62 = v15;
    v63 = v1;
    OUTLINED_FUNCTION_377(v64);
    *v65 = *v85;
    *&v65[3] = *&v85[3];
    v66 = v2;
    v67 = v16;
    v68 = v0;
    v69 = v84;
    *v70 = *v83;
    *&v70[3] = *&v83[3];
    v71 = v49;
    v72 = v47;
    v73 = v51;
    OUTLINED_FUNCTION_469(v74);
    OUTLINED_FUNCTION_258(v75);
    *&v75[3] = v18;
    v76 = v43;
    v77 = v45;
    v78 = 0;
    v79 = v80;
  }

  else
  {
    v17 = v4;
    LOBYTE(v60) = 0;
    v39 = sub_2753B7518();
    v40 = v19;
    OUTLINED_FUNCTION_69_2(1);
    v37 = sub_2753B7518();
    v38 = v20;
    v58[135] = 2;
    sub_27534B350();
    OUTLINED_FUNCTION_389();
    OUTLINED_FUNCTION_357();
    sub_2753B7558();
    memcpy(v57, v59, sizeof(v57));
    OUTLINED_FUNCTION_377(v58);
    sub_27534B488(v58, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    memcpy(v86, v57, sizeof(v86));
    OUTLINED_FUNCTION_69_2(3);
    OUTLINED_FUNCTION_357();
    v35 = sub_2753B7518();
    v36 = v21;
    OUTLINED_FUNCTION_69_2(4);
    v34 = sub_2753B7568();
    v84 = v22 & 1;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v23, v24, v25);
    LOBYTE(v53[0]) = 5;
    OUTLINED_FUNCTION_2_6();
    sub_27534B6A0(v26);
    OUTLINED_FUNCTION_357();
    sub_2753B7558();
    v27 = v60;
    OUTLINED_FUNCTION_69_2(6);
    v48 = sub_2753B7518();
    v52 = v28;
    v55[151] = 7;
    sub_27534B76C();
    OUTLINED_FUNCTION_389();
    OUTLINED_FUNCTION_357();
    sub_2753B7558();
    memcpy(v54, v56, sizeof(v54));
    OUTLINED_FUNCTION_469(v55);
    sub_27534B488(v55, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    memcpy(v82, v54, sizeof(v82));
    OUTLINED_FUNCTION_69_2(8);
    OUTLINED_FUNCTION_357();
    v44 = sub_2753B7518();
    v46 = v29;
    OUTLINED_FUNCTION_443();
    v30 = sub_2753B7548();
    v32 = v31;
    (*(v11 + 8))(v1, v41);
    v80 = v32 & 1;
    v53[0] = v39;
    v53[1] = v40;
    v53[2] = v37;
    v53[3] = v38;
    OUTLINED_FUNCTION_377(&v53[4]);
    *(&v53[20] + 1) = *v85;
    HIDWORD(v53[20]) = *&v85[3];
    v53[21] = v35;
    v53[22] = v36;
    v53[23] = v34;
    v42 = v84;
    LOBYTE(v53[24]) = v84;
    *(&v53[24] + 1) = *v83;
    HIDWORD(v53[24]) = *&v83[3];
    v53[25] = v27;
    v53[26] = v48;
    v53[27] = v52;
    OUTLINED_FUNCTION_469(&v53[28]);
    *(&v53[46] + 1) = *v81;
    HIDWORD(v53[46]) = *&v81[3];
    v53[47] = v44;
    v53[48] = v46;
    v53[49] = v30;
    v33 = v80;
    LOBYTE(v53[50]) = v80;
    memcpy(v17, v53, 0x191uLL);
    sub_27534BB00(v53, &v60);
    __swift_destroy_boxed_opaque_existential_1(v50);
    v60 = v39;
    v61 = v40;
    v62 = v37;
    v63 = v38;
    OUTLINED_FUNCTION_377(v64);
    *v65 = *v85;
    *&v65[3] = *&v85[3];
    v66 = v35;
    v67 = v36;
    v68 = v34;
    v69 = v42;
    *v70 = *v83;
    *&v70[3] = *&v83[3];
    v71 = v27;
    v72 = v48;
    v73 = v52;
    OUTLINED_FUNCTION_469(v74);
    *v75 = *v81;
    *&v75[3] = *&v81[3];
    v76 = v44;
    v77 = v46;
    v78 = v30;
    v79 = v33;
  }

  sub_27534BAD0(&v60);
  OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.AlbumAttributes.artistName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.artwork.getter()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_339();
  memcpy(v2, v3, v4);
  v5 = memcpy(v0, (v1 + 16), 0x81uLL);
  return OUTLINED_FUNCTION_360(v5, v6, &qword_2809C1E30, &type metadata for MediaAPI.Artwork, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

void *MediaAPI.AlbumAttributes.artwork.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_339();
  memcpy(v1, v2, v3);
  sub_27534B488(v5, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  return OUTLINED_FUNCTION_362((v0 + 16));
}

uint64_t MediaAPI.AlbumAttributes.audioTraits.setter(uint64_t a1)
{
  v3 = *(v1 + 152);

  *(v1 + 152) = a1;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.copyright.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.AlbumAttributes.copyright.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 168);

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.contentRating.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.AlbumAttributes.contentRating.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 184);

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.editorialNotes.setter(uint64_t a1)
{
  v3 = *(v1 + 192);

  *(v1 + 192) = a1;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.genreNames.setter(uint64_t a1)
{
  v3 = *(v1 + 200);

  *(v1 + 200) = a1;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.name.getter()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.AlbumAttributes.name.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 224);

  *(v1 + 216) = v2;
  *(v1 + 224) = v0;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.playParams.getter()
{
  OUTLINED_FUNCTION_252();
  v2 = memcpy(v1, (v0 + 232), 0x91uLL);
  v3 = OUTLINED_FUNCTION_375(v2, (v0 + 232));
  return OUTLINED_FUNCTION_363(v3, v4, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

void *MediaAPI.AlbumAttributes.playParams.setter()
{
  OUTLINED_FUNCTION_140_1();
  memcpy(v1, (v0 + 232), 0x91uLL);
  sub_27534B488(v3, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  return OUTLINED_FUNCTION_371((v0 + 232));
}

uint64_t MediaAPI.AlbumAttributes.recordLabel.getter()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.AlbumAttributes.recordLabel.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 392);

  *(v1 + 384) = v2;
  *(v1 + 392) = v0;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.releaseDate.getter()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.AlbumAttributes.releaseDate.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 408);

  *(v1 + 400) = v2;
  *(v1 + 408) = v0;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.trackCount.getter()
{
  result = *(v0 + 416);
  v2 = *(v0 + 424);
  return result;
}

uint64_t MediaAPI.AlbumAttributes.trackCount.setter(uint64_t result, char a2)
{
  *(v2 + 416) = result;
  *(v2 + 424) = a2 & 1;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.upc.getter()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.AlbumAttributes.upc.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 440);

  *(v1 + 432) = v2;
  *(v1 + 440) = v0;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.versionHash.getter()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 456);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.AlbumAttributes.versionHash.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 456);

  *(v1 + 448) = v2;
  *(v1 + 456) = v0;
  return result;
}

uint64_t sub_275339E5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6172546F69647561 && a2 == 0xEB00000000737469;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C69706D6F437369 && a2 == 0xED00006E6F697461;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x656C706D6F437369 && a2 == 0xEA00000000006574;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000014 && 0x80000002753B9620 == a2;
                    if (v14 || (sub_2753B7718() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000013 && 0x80000002753B9640 == a2;
                      if (v15 || (sub_2753B7718() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6C65726572507369 && a2 == 0xEC00000065736165;
                        if (v16 || (sub_2753B7718() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x656C676E69537369 && a2 == 0xE800000000000000;
                          if (v17 || (sub_2753B7718() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 1701667182 && a2 == 0xE400000000000000;
                            if (v18 || (sub_2753B7718() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                              if (v19 || (sub_2753B7718() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x614C64726F636572 && a2 == 0xEB000000006C6562;
                                if (v20 || (sub_2753B7718() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                  if (v21 || (sub_2753B7718() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x756F436B63617274 && a2 == 0xEA0000000000746ELL;
                                    if (v22 || (sub_2753B7718() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 6516853 && a2 == 0xE300000000000000;
                                      if (v23 || (sub_2753B7718() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else if (a1 == 0x486E6F6973726576 && a2 == 0xEB00000000687361)
                                      {

                                        return 19;
                                      }

                                      else
                                      {
                                        v25 = sub_2753B7718();

                                        if (v25)
                                        {
                                          return 19;
                                        }

                                        else
                                        {
                                          return 20;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_27533A474(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      return 0x6B726F77747261;
    case 2:
      v3 = 0x546F69647561;
      goto LABEL_10;
    case 3:
      return 0x6867697279706F63;
    case 4:
      return 0x52746E65746E6F63;
    case 5:
      return 0x6169726F74696465;
    case 6:
      return 0x6D614E65726E6567;
    case 7:
      return 0x6C69706D6F437369;
    case 8:
      v4 = 0x706D6F437369;
      goto LABEL_21;
    case 9:
      return 0xD000000000000014;
    case 10:
      return 0xD000000000000013;
    case 11:
      return 0x6C65726572507369;
    case 12:
      v4 = 0x676E69537369;
LABEL_21:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x656C000000000000;
      break;
    case 13:
      result = 1701667182;
      break;
    case 14:
      v3 = 0x615079616C70;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
      break;
    case 15:
      result = 0x614C64726F636572;
      break;
    case 16:
      result = 0x44657361656C6572;
      break;
    case 17:
      result = 0x756F436B63617274;
      break;
    case 18:
      result = 6516853;
      break;
    case 19:
      result = 0x486E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27533A718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275339E5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27533A740@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27533A46C();
  *a1 = result;
  return result;
}

uint64_t sub_27533A768(uint64_t a1)
{
  v2 = sub_27534BB38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27533A7A4(uint64_t a1)
{
  v2 = sub_27534BB38();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.AlbumAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v4 = v3;
  OUTLINED_FUNCTION_228_0();
  sub_27534DC8C(0, v5, v6, v7, MEMORY[0x277D84538]);
  v9 = v8;
  OUTLINED_FUNCTION_2_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_30();
  v50 = v0[1];
  v51 = *v0;
  OUTLINED_FUNCTION_339();
  memcpy(v15, v16, v17);
  v48 = v0[20];
  v49 = v0[19];
  v46 = v0[23];
  v47 = v0[21];
  v44 = v0[24];
  v45 = v0[22];
  v43 = v0[25];
  v41 = *(v0 + 209);
  v42 = *(v0 + 208);
  v39 = *(v0 + 211);
  v40 = *(v0 + 210);
  v37 = *(v0 + 213);
  v38 = *(v0 + 212);
  v35 = v0[27];
  v36 = v0[28];
  memcpy(v57, v0 + 29, 0x91uLL);
  v33 = v0[48];
  v34 = v0[49];
  v31 = v0[51];
  v32 = v0[50];
  v27 = *(v0 + 424);
  v30 = v0[54];
  v28 = v0[52];
  v29 = v0[55];
  v18 = v0[57];
  v26 = v0[56];
  v19 = v4[4];
  OUTLINED_FUNCTION_67_0(v4, v4[3]);
  sub_27534BB38();
  OUTLINED_FUNCTION_299();
  OUTLINED_FUNCTION_246();
  sub_2753B7808();
  LOBYTE(v53[0]) = 0;
  OUTLINED_FUNCTION_134_2();
  sub_2753B75F8();
  if (v1)
  {
    v24 = OUTLINED_FUNCTION_120_1();
    v25(v24, v9);
  }

  else
  {
    memcpy(v55, v56, sizeof(v55));
    v54[135] = 1;
    sub_27534B40C(v56, v53, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    sub_27534B2F4();
    OUTLINED_FUNCTION_143_1();
    sub_2753B7638();
    memcpy(v54, v55, 0x81uLL);
    sub_27534B488(v54, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    v53[0] = v49;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v20, v21, v22);
    OUTLINED_FUNCTION_3_4();
    sub_27534B6A0(v23);
    OUTLINED_FUNCTION_372();
    OUTLINED_FUNCTION_143_1();
    sub_2753B7638();
    LOBYTE(v53[0]) = 3;
    OUTLINED_FUNCTION_143_1();
    sub_2753B75F8();
    LOBYTE(v53[0]) = 4;
    OUTLINED_FUNCTION_143_1();
    sub_2753B75F8();
    v53[0] = v44;
    sub_27534DB84(0, &qword_2809C0C60);
    OUTLINED_FUNCTION_10_4(&qword_2809C0C68);
    OUTLINED_FUNCTION_372();
    OUTLINED_FUNCTION_143_1();
    sub_2753B7638();
    v53[0] = v43;
    v52[0] = 6;
    OUTLINED_FUNCTION_372();
    OUTLINED_FUNCTION_143_1();
    sub_2753B7638();
    OUTLINED_FUNCTION_342(7);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7608();
    OUTLINED_FUNCTION_342(8);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7608();
    OUTLINED_FUNCTION_342(9);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7608();
    OUTLINED_FUNCTION_342(10);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7608();
    OUTLINED_FUNCTION_342(11);
    sub_2753B7608();
    OUTLINED_FUNCTION_342(12);
    sub_2753B7608();
    LOBYTE(v53[0]) = 13;
    OUTLINED_FUNCTION_126_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_331(v53);
    v52[151] = 14;
    sub_27534B40C(v57, v52, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    sub_27534B54C();
    sub_2753B7638();
    memcpy(v52, v53, 0x91uLL);
    sub_27534B488(v52, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    OUTLINED_FUNCTION_387(15);
    OUTLINED_FUNCTION_126_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_387(16);
    OUTLINED_FUNCTION_126_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_387(17);
    OUTLINED_FUNCTION_126_2();
    sub_2753B7628();
    OUTLINED_FUNCTION_387(18);
    OUTLINED_FUNCTION_126_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_387(19);
    OUTLINED_FUNCTION_126_2();
    sub_2753B75F8();
    (*(v11 + 8))(v2, v9);
  }

  OUTLINED_FUNCTION_61();
}

void MediaAPI.AlbumAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_334();
  v4 = v3;
  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_317(v5, v6, v7, v8, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_70_2();
  sub_27534B348(v106);
  memcpy(v105, v106, sizeof(v105));
  sub_27534B690(&v107);
  OUTLINED_FUNCTION_331(v103);
  v101 = 1;
  v13 = v2[3];
  v14 = v2[4];
  OUTLINED_FUNCTION_148_1();
  sub_27534BB38();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_268();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_447();
    OUTLINED_FUNCTION_138_2();
    OUTLINED_FUNCTION_86_0();
    __swift_destroy_boxed_opaque_existential_1(v2);
    v78 = 0;
    v79 = 0;
    OUTLINED_FUNCTION_476(v80);
    *v81 = *v104;
    *&v81[3] = *&v104[3];
    v82 = v1;
    v83 = v2;
    v84 = 0;
    OUTLINED_FUNCTION_341();
    v85 = 2;
    v86 = v0;
    OUTLINED_FUNCTION_285();
    OUTLINED_FUNCTION_474(v87);
    *v88 = *v102;
    *&v88[3] = *&v102[3];
    v89 = v47;
    v90 = v55;
    v91 = v49;
    v92 = v57;
    v93 = v51;
    v94 = v101;
    OUTLINED_FUNCTION_258(v95);
    v96 = v15;
    v97 = v53;
    v98 = v59;
    v99 = 0;
    v100 = 0;
  }

  else
  {
    LOBYTE(v78) = 0;
    v44 = sub_2753B7518();
    v45 = v16;
    v76[135] = 1;
    sub_27534B350();
    OUTLINED_FUNCTION_389();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7558();
    memcpy(v75, v77, sizeof(v75));
    OUTLINED_FUNCTION_476(v76);
    sub_27534B488(v76, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    memcpy(v105, v75, sizeof(v105));
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v17, v18, v19);
    OUTLINED_FUNCTION_2_6();
    sub_27534B6A0(v20);
    OUTLINED_FUNCTION_325();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7558();
    v43 = v78;
    OUTLINED_FUNCTION_85_2(3);
    v41 = sub_2753B7518();
    v42 = v21;
    OUTLINED_FUNCTION_85_2(4);
    v62 = sub_2753B7518();
    v63 = v22;
    sub_27534DB84(0, &qword_2809C0C60);
    OUTLINED_FUNCTION_9_3(&qword_2809C0C78);
    OUTLINED_FUNCTION_77_2();
    sub_2753B7558();
    v23 = v78;
    LOBYTE(v70[0]) = 6;
    OUTLINED_FUNCTION_325();
    sub_2753B7558();
    v24 = v78;
    OUTLINED_FUNCTION_85_2(7);
    v61 = v24;
    v40 = sub_2753B7528();
    OUTLINED_FUNCTION_85_2(8);
    v39 = sub_2753B7528();
    OUTLINED_FUNCTION_85_2(9);
    v69 = sub_2753B7528();
    OUTLINED_FUNCTION_21_2(10);
    v68 = sub_2753B7528();
    OUTLINED_FUNCTION_21_2(11);
    v67 = sub_2753B7528();
    OUTLINED_FUNCTION_21_2(12);
    v66 = sub_2753B7528();
    OUTLINED_FUNCTION_21_2(13);
    v64 = sub_2753B7518();
    v65 = v25;
    v73[151] = 14;
    sub_27534B76C();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    memcpy(v72, v74, sizeof(v72));
    OUTLINED_FUNCTION_474(v73);
    sub_27534B488(v73, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    memcpy(v103, v72, sizeof(v103));
    OUTLINED_FUNCTION_21_2(15);
    v48 = sub_2753B7518();
    v56 = v26;
    OUTLINED_FUNCTION_21_2(16);
    v50 = sub_2753B7518();
    v58 = v27;
    OUTLINED_FUNCTION_21_2(17);
    v52 = sub_2753B7548();
    v101 = v28 & 1;
    OUTLINED_FUNCTION_21_2(18);
    v54 = sub_2753B7518();
    v60 = v29;
    v71 = 19;
    OUTLINED_FUNCTION_103_2();
    v30 = sub_2753B7518();
    v32 = v31;
    v33 = OUTLINED_FUNCTION_63_1();
    v34(v33);
    v70[0] = v44;
    v70[1] = v45;
    OUTLINED_FUNCTION_476(&v70[2]);
    *(&v70[18] + 1) = *v104;
    HIDWORD(v70[18]) = *&v104[3];
    v70[19] = v43;
    v70[20] = v41;
    v70[21] = v42;
    v70[22] = v62;
    v70[23] = v63;
    v70[24] = v23;
    v70[25] = v61;
    LOBYTE(v70[26]) = v40;
    BYTE1(v70[26]) = v39;
    BYTE2(v70[26]) = v69;
    BYTE3(v70[26]) = v68;
    BYTE4(v70[26]) = v67;
    BYTE5(v70[26]) = v66;
    v70[27] = v64;
    v70[28] = v65;
    OUTLINED_FUNCTION_474(&v70[29]);
    OUTLINED_FUNCTION_125_2((&v70[47] + 1));
    HIDWORD(v70[47]) = v35;
    v70[48] = v48;
    v70[49] = v56;
    v70[50] = v50;
    v70[51] = v58;
    v70[52] = v52;
    v46 = v101;
    LOBYTE(v70[53]) = v101;
    OUTLINED_FUNCTION_71_2((&v70[53] + 1));
    HIDWORD(v70[53]) = v36;
    v70[54] = v54;
    v70[55] = v60;
    v70[56] = v30;
    v70[57] = v32;
    memcpy(v4, v70, 0x1D0uLL);
    sub_27534BBBC(v70, &v78);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v78 = v44;
    v79 = v45;
    OUTLINED_FUNCTION_476(v80);
    *v81 = *v104;
    *&v81[3] = *&v104[3];
    v82 = v43;
    v83 = v41;
    v84 = v42;
    OUTLINED_FUNCTION_341();
    v85 = v40;
    v86 = v39;
    OUTLINED_FUNCTION_285();
    OUTLINED_FUNCTION_474(v87);
    OUTLINED_FUNCTION_125_2(v88);
    *&v88[3] = v37;
    v89 = v48;
    v90 = v56;
    v91 = v50;
    v92 = v58;
    v93 = v52;
    v94 = v46;
    OUTLINED_FUNCTION_71_2(v95);
    v96 = v38;
    v97 = v54;
    v98 = v60;
    v99 = v30;
    v100 = v32;
  }

  sub_27534BB8C(&v78);
  OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.LibraryAlbumAttributes.artistName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.LibraryAlbumAttributes.artwork.getter()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_339();
  memcpy(v2, v3, v4);
  v5 = memcpy(v0, (v1 + 16), 0x81uLL);
  return OUTLINED_FUNCTION_360(v5, v6, &qword_2809C1E30, &type metadata for MediaAPI.Artwork, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

void *MediaAPI.LibraryAlbumAttributes.artwork.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_339();
  memcpy(v1, v2, v3);
  sub_27534B488(v5, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  return OUTLINED_FUNCTION_362((v0 + 16));
}

uint64_t MediaAPI.LibraryAlbumAttributes.contentRating.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.LibraryAlbumAttributes.contentRating.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 160);

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t MediaAPI.LibraryAlbumAttributes.dateAdded.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 176);

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t MediaAPI.LibraryAlbumAttributes.genreNames.setter()
{
  result = OUTLINED_FUNCTION_481();
  *(v1 + 184) = v0;
  return result;
}

uint64_t MediaAPI.LibraryAlbumAttributes.name.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 200);

  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  return result;
}

uint64_t MediaAPI.LibraryAlbumAttributes.playParams.getter()
{
  OUTLINED_FUNCTION_252();
  v2 = memcpy(v1, (v0 + 208), 0x91uLL);
  v3 = OUTLINED_FUNCTION_375(v2, (v0 + 208));
  return OUTLINED_FUNCTION_363(v3, v4, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

void *MediaAPI.LibraryAlbumAttributes.playParams.setter()
{
  OUTLINED_FUNCTION_140_1();
  memcpy(v1, (v0 + 208), 0x91uLL);
  sub_27534B488(v3, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  return OUTLINED_FUNCTION_371((v0 + 208));
}

uint64_t MediaAPI.LibraryAlbumAttributes.releaseDate.getter()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.LibraryAlbumAttributes.releaseDate.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 368);

  *(v1 + 360) = v2;
  *(v1 + 368) = v0;
  return result;
}

uint64_t MediaAPI.LibraryAlbumAttributes.versionHash.getter()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.LibraryAlbumAttributes.versionHash.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 400);

  *(v1 + 392) = v2;
  *(v1 + 400) = v0;
  return result;
}

uint64_t sub_27533BC84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6564644165746164 && a2 == 0xE900000000000064;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x756F436B63617274 && a2 == 0xEA0000000000746ELL;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x486E6F6973726576 && a2 == 0xEB00000000687361)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_2753B7718();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_27533BFA8(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 0x52746E65746E6F63;
      break;
    case 3:
      result = 0x6564644165746164;
      break;
    case 4:
      result = 0x6D614E65726E6567;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x6172615079616C70;
      break;
    case 7:
      result = 0x44657361656C6572;
      break;
    case 8:
      result = 0x756F436B63617274;
      break;
    case 9:
      result = 0x486E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27533C108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27533BC84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27533C130(uint64_t a1)
{
  v2 = sub_27534BBF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27533C16C(uint64_t a1)
{
  v2 = sub_27534BBF4();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.LibraryAlbumAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_202_0();
  sub_27534DC8C(0, v4, v5, v6, MEMORY[0x277D84538]);
  v8 = v7;
  OUTLINED_FUNCTION_2_0(v7);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_70_2();
  v12 = v0[1];
  v38 = *v0;
  OUTLINED_FUNCTION_339();
  memcpy(v13, v14, v15);
  v36 = v0[20];
  v37 = v0[19];
  v34 = v0[21];
  v35 = v0[22];
  v31 = v0[24];
  v32 = v0[25];
  v33 = v0[23];
  memcpy(v44, v0 + 26, 0x91uLL);
  v29 = v0[45];
  v30 = v0[46];
  v28 = v0[47];
  v45 = *(v0 + 384);
  v26 = v0[49];
  v27 = v0[50];
  v16 = v3[4];
  OUTLINED_FUNCTION_67_0(v3, v3[3]);
  sub_27534BBF4();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_246();
  sub_2753B7808();
  LOBYTE(v40[0]) = 0;
  sub_2753B75F8();
  if (!v1)
  {
    memcpy(v42, v43, sizeof(v42));
    OUTLINED_FUNCTION_77();
    sub_27534B40C(v43, v40, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    sub_27534B2F4();
    OUTLINED_FUNCTION_442();
    OUTLINED_FUNCTION_77_2();
    sub_2753B7638();
    OUTLINED_FUNCTION_470(v41);
    sub_27534B488(v41, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    OUTLINED_FUNCTION_318(2);
    OUTLINED_FUNCTION_58_1();
    sub_2753B75F8();
    OUTLINED_FUNCTION_318(3);
    OUTLINED_FUNCTION_58_1();
    sub_2753B75F8();
    v40[0] = v33;
    v39[0] = 4;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v17, v18, v19);
    OUTLINED_FUNCTION_3_4();
    sub_27534B6A0(v20);
    OUTLINED_FUNCTION_440();
    OUTLINED_FUNCTION_77_2();
    sub_2753B7638();
    OUTLINED_FUNCTION_318(5);
    OUTLINED_FUNCTION_58_1();
    sub_2753B75F8();
    OUTLINED_FUNCTION_331(v40);
    sub_27534B40C(v44, v39, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    sub_27534B54C();
    OUTLINED_FUNCTION_440();
    OUTLINED_FUNCTION_77_2();
    sub_2753B7638();
    v23 = OUTLINED_FUNCTION_432();
    memcpy(v23, v24, v25);
    sub_27534B488(v39, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    OUTLINED_FUNCTION_243(7);
    OUTLINED_FUNCTION_58_1();
    sub_2753B75F8();
    OUTLINED_FUNCTION_243(8);
    OUTLINED_FUNCTION_58_1();
    sub_2753B7628();
    OUTLINED_FUNCTION_243(9);
    OUTLINED_FUNCTION_58_1();
    sub_2753B75F8();
  }

  v21 = OUTLINED_FUNCTION_113_2();
  v22(v21, v8);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.LibraryAlbumAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_334();
  v3 = v2;
  OUTLINED_FUNCTION_202_0();
  OUTLINED_FUNCTION_317(v4, v5, v6, v7, MEMORY[0x277D844C8]);
  v43 = v8;
  OUTLINED_FUNCTION_2_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_70_2();
  sub_27534B348(v89);
  memcpy(v88, v89, sizeof(v88));
  sub_27534B690(&v90);
  OUTLINED_FUNCTION_331(v86);
  v84 = 1;
  v12 = v1[3];
  v13 = v1[4];
  v51 = v1;
  OUTLINED_FUNCTION_148_1();
  sub_27534BBF4();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_268();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_167_0();
    OUTLINED_FUNCTION_78_1();
    __swift_destroy_boxed_opaque_existential_1(v1);
    v63 = 0;
    v64 = 0;
    OUTLINED_FUNCTION_377(v65);
    *v66 = *v87;
    *&v66[3] = *&v87[3];
    v67 = 0;
    v68 = 0;
    v69 = v1;
    v70 = v13;
    v71 = v0;
    v72 = v52;
    v73 = v54;
    OUTLINED_FUNCTION_468(v74);
    *v75 = *v85;
    *&v75[3] = *&v85[3];
    v76 = v47;
    v77 = v49;
    v78 = v45;
    v79 = v84;
    OUTLINED_FUNCTION_258(v80);
    v81 = v15;
    v83 = 0;
    v82 = 0;
  }

  else
  {
    v14 = v3;
    LOBYTE(v63) = 0;
    v41 = sub_2753B7518();
    v42 = v16;
    v61[135] = 1;
    sub_27534B350();
    OUTLINED_FUNCTION_389();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7558();
    memcpy(v60, v62, sizeof(v60));
    OUTLINED_FUNCTION_377(v61);
    sub_27534B488(v61, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    memcpy(v88, v60, sizeof(v88));
    LOBYTE(v63) = 2;
    OUTLINED_FUNCTION_59_2();
    v39 = sub_2753B7518();
    v40 = v17;
    OUTLINED_FUNCTION_69_2(3);
    v37 = sub_2753B7518();
    v38 = v18;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v19, v20, v21);
    LOBYTE(v56[0]) = 4;
    OUTLINED_FUNCTION_2_6();
    sub_27534B6A0(v22);
    OUTLINED_FUNCTION_77_2();
    sub_2753B7558();
    v23 = v63;
    OUTLINED_FUNCTION_69_2(5);
    v53 = sub_2753B7518();
    v55 = v24;
    v58[151] = 6;
    sub_27534B76C();
    OUTLINED_FUNCTION_389();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7558();
    memcpy(v57, v59, sizeof(v57));
    OUTLINED_FUNCTION_468(v58);
    sub_27534B488(v58, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    memcpy(v86, v57, sizeof(v86));
    LOBYTE(v63) = 7;
    OUTLINED_FUNCTION_59_2();
    v48 = sub_2753B7518();
    v50 = v25;
    v36 = v23;
    OUTLINED_FUNCTION_69_2(8);
    v46 = sub_2753B7548();
    v84 = v26 & 1;
    OUTLINED_FUNCTION_443();
    OUTLINED_FUNCTION_103_2();
    v27 = sub_2753B7518();
    v29 = v28;
    v30 = OUTLINED_FUNCTION_113_2();
    v31(v30, v43);
    v56[0] = v41;
    v56[1] = v42;
    OUTLINED_FUNCTION_377(&v56[2]);
    *(&v56[18] + 1) = *v87;
    HIDWORD(v56[18]) = *&v87[3];
    v56[19] = v39;
    v56[20] = v40;
    v56[21] = v37;
    v56[22] = v38;
    v56[23] = v36;
    v56[24] = v53;
    v56[25] = v55;
    OUTLINED_FUNCTION_468(&v56[26]);
    OUTLINED_FUNCTION_125_2((&v56[44] + 1));
    HIDWORD(v56[44]) = v32;
    v56[45] = v48;
    v56[46] = v50;
    v56[47] = v46;
    v44 = v84;
    LOBYTE(v56[48]) = v84;
    OUTLINED_FUNCTION_71_2((&v56[48] + 1));
    HIDWORD(v56[48]) = v33;
    v56[49] = v27;
    v56[50] = v29;
    memcpy(v14, v56, 0x198uLL);
    sub_27534BC78(v56, &v63);
    __swift_destroy_boxed_opaque_existential_1(v51);
    v63 = v41;
    v64 = v42;
    OUTLINED_FUNCTION_377(v65);
    *v66 = *v87;
    *&v66[3] = *&v87[3];
    v67 = v39;
    v68 = v40;
    v69 = v37;
    v70 = v38;
    v71 = v36;
    v72 = v53;
    v73 = v55;
    OUTLINED_FUNCTION_468(v74);
    OUTLINED_FUNCTION_125_2(v75);
    *&v75[3] = v34;
    v76 = v48;
    v77 = v50;
    v78 = v46;
    v79 = v44;
    OUTLINED_FUNCTION_71_2(v80);
    v81 = v35;
    v82 = v27;
    v83 = v29;
  }

  sub_27534BC48(&v63);
  OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.PlaylistAttributes.artwork.getter()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_305();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_27();
  v5 = memcpy(v3, v4, 0x81uLL);
  return OUTLINED_FUNCTION_360(v5, v6, &qword_2809C1E30, &type metadata for MediaAPI.Artwork, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

void *MediaAPI.PlaylistAttributes.artwork.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_305();
  memcpy(v1, v2, v3);
  sub_27534B488(v5, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  return OUTLINED_FUNCTION_362(v0);
}

uint64_t MediaAPI.PlaylistAttributes.audioTraits.setter(uint64_t a1)
{
  v3 = *(v1 + 136);

  *(v1 + 136) = a1;
  return result;
}

uint64_t MediaAPI.PlaylistAttributes.curatorName.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.PlaylistAttributes.curatorName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 152);

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t MediaAPI.PlaylistAttributes.description.setter(uint64_t a1)
{
  v3 = *(v1 + 160);

  *(v1 + 160) = a1;
  return result;
}

uint64_t MediaAPI.PlaylistAttributes.editorialNotes.setter(uint64_t a1)
{
  v3 = *(v1 + 168);

  *(v1 + 168) = a1;
  return result;
}

uint64_t MediaAPI.PlaylistAttributes.lastModifiedDate.getter()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.PlaylistAttributes.lastModifiedDate.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 192);

  *(v1 + 184) = v2;
  *(v1 + 192) = v0;
  return result;
}

uint64_t MediaAPI.PlaylistAttributes.name.getter()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.PlaylistAttributes.name.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 208);

  *(v1 + 200) = v2;
  *(v1 + 208) = v0;
  return result;
}

uint64_t MediaAPI.PlaylistAttributes.playParams.getter()
{
  OUTLINED_FUNCTION_252();
  v2 = memcpy(v1, (v0 + 216), 0x91uLL);
  v3 = OUTLINED_FUNCTION_375(v2, (v0 + 216));
  return OUTLINED_FUNCTION_363(v3, v4, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

void *MediaAPI.PlaylistAttributes.playParams.setter()
{
  OUTLINED_FUNCTION_140_1();
  memcpy(v1, (v0 + 216), 0x91uLL);
  sub_27534B488(v3, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  return OUTLINED_FUNCTION_371((v0 + 216));
}

uint64_t MediaAPI.PlaylistAttributes.playlistType.getter()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.PlaylistAttributes.playlistType.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 376);

  *(v1 + 368) = v2;
  *(v1 + 376) = v0;
  return result;
}

uint64_t MediaAPI.PlaylistAttributes.versionHash.getter()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.PlaylistAttributes.versionHash.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 416);

  *(v1 + 408) = v2;
  *(v1 + 416) = v0;
  return result;
}

uint64_t sub_27533D18C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6172546F69647561 && a2 == 0xEB00000000737469;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4E726F7461727563 && a2 == 0xEB00000000656D61;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000002753B9680 == a2;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x74726168437369 && a2 == 0xE700000000000000;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x80000002753B96A0 == a2;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 1701667182 && a2 == 0xE400000000000000;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                    if (v14 || (sub_2753B7718() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7473696C79616C70 && a2 == 0xEC00000065707954;
                      if (v15 || (sub_2753B7718() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7374726F70707573 && a2 == 0xEC000000676E6953;
                        if (v16 || (sub_2753B7718() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x756F436B63617274 && a2 == 0xEA0000000000746ELL;
                          if (v17 || (sub_2753B7718() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x486E6F6973726576 && a2 == 0xEB00000000687361)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_2753B7718();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_27533D5F0(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x6172546F69647561;
      break;
    case 2:
      result = 0x4E726F7461727563;
      break;
    case 3:
      result = 0x7470697263736564;
      break;
    case 4:
      result = 0x6169726F74696465;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x74726168437369;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 1701667182;
      break;
    case 9:
      result = 0x6172615079616C70;
      break;
    case 10:
      result = 0x7473696C79616C70;
      break;
    case 11:
      result = 0x7374726F70707573;
      break;
    case 12:
      result = 0x756F436B63617274;
      break;
    case 13:
      result = 0x486E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27533D7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27533D18C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27533D808@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27533D5E8();
  *a1 = result;
  return result;
}

uint64_t sub_27533D830(uint64_t a1)
{
  v2 = sub_27534BCB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27533D86C(uint64_t a1)
{
  v2 = sub_27534BCB0();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.PlaylistAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_233_0();
  sub_27534DC8C(0, v4, v5, &type metadata for MediaAPI.PlaylistAttributes.CodingKeys, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_305();
  memcpy(v12, v13, v14);
  v42 = *(v0 + 144);
  v43 = *(v0 + 136);
  v40 = *(v0 + 160);
  v41 = *(v0 + 152);
  v39 = *(v0 + 168);
  v37 = *(v0 + 177);
  v38 = *(v0 + 176);
  v35 = *(v0 + 192);
  v36 = *(v0 + 184);
  v33 = *(v0 + 208);
  v34 = *(v0 + 200);
  memcpy(v49, (v0 + 216), 0x91uLL);
  v31 = *(v0 + 376);
  v32 = *(v0 + 368);
  v30 = *(v0 + 384);
  v29 = *(v0 + 392);
  v28 = *(v0 + 400);
  v26 = *(v0 + 416);
  v27 = *(v0 + 408);
  v15 = *(v3 + 24);
  v16 = *(v3 + 32);
  v17 = OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_67_0(v17, v18);
  sub_27534B40C(v48, v45, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  sub_27534BCB0();
  OUTLINED_FUNCTION_382();
  OUTLINED_FUNCTION_81();
  sub_2753B7808();
  memcpy(v47, v48, sizeof(v47));
  v46[135] = 0;
  sub_27534B2F4();
  sub_2753B7638();
  if (v1)
  {
    memcpy(v45, v47, 0x81uLL);
    sub_27534B488(v45, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    v23 = *(v8 + 8);
    v24 = OUTLINED_FUNCTION_306();
    v25(v24);
  }

  else
  {
    memcpy(v46, v47, 0x81uLL);
    sub_27534B488(v46, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    v45[0] = v43;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v19, v20, v21);
    OUTLINED_FUNCTION_3_4();
    sub_27534B6A0(v22);
    OUTLINED_FUNCTION_367();
    sub_2753B7638();
    OUTLINED_FUNCTION_346(2);
    OUTLINED_FUNCTION_392();
    sub_2753B75F8();
    v45[0] = v40;
    sub_27534DB84(0, &qword_2809C0C60);
    OUTLINED_FUNCTION_10_4(&qword_2809C0C68);
    OUTLINED_FUNCTION_367();
    OUTLINED_FUNCTION_184_0();
    sub_2753B7638();
    v45[0] = v39;
    v44[0] = 4;
    OUTLINED_FUNCTION_367();
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_457();
    sub_2753B7638();
    LOBYTE(v45[0]) = 5;
    sub_2753B7608();
    LOBYTE(v45[0]) = 6;
    sub_2753B7608();
    OUTLINED_FUNCTION_346(7);
    OUTLINED_FUNCTION_392();
    sub_2753B75F8();
    OUTLINED_FUNCTION_346(8);
    OUTLINED_FUNCTION_392();
    sub_2753B75F8();
    OUTLINED_FUNCTION_331(v45);
    v44[151] = 9;
    sub_27534B40C(v49, v44, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    sub_27534B54C();
    sub_2753B7638();
    memcpy(v44, v45, 0x91uLL);
    sub_27534B488(v44, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    OUTLINED_FUNCTION_392();
    sub_2753B75F8();
    OUTLINED_FUNCTION_457();
    sub_2753B7608();
    OUTLINED_FUNCTION_457();
    sub_2753B7628();
    OUTLINED_FUNCTION_457();
    sub_2753B75F8();
    (*(v8 + 8))(0);
  }

  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.PlaylistAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_334();
  v3 = v2;
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_317(v4, v5, v6, v7, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_21();
  sub_27534B348(v91);
  memcpy(v90, v91, 0x81uLL);
  sub_27534B690(&v92);
  OUTLINED_FUNCTION_331(v87);
  v84 = 1;
  v12 = v1[3];
  v13 = v1[4];
  OUTLINED_FUNCTION_148_1();
  sub_27534BCB0();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_268();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_356();
    OUTLINED_FUNCTION_462();
    OUTLINED_FUNCTION_176_0();
    __swift_destroy_boxed_opaque_existential_1(v1);
    memcpy(v64, v90, sizeof(v64));
    v65 = 0;
    v66 = v1;
    v67 = v3;
    v68 = v12;
    v69 = v13;
    v70 = 2;
    v71 = v0;
    OUTLINED_FUNCTION_250(v88);
    OUTLINED_FUNCTION_477(v72);
    *v73 = *v86;
    *&v73[3] = *&v86[3];
    v74 = v52;
    v75 = v54;
    v76 = v50;
    *v77 = *v85;
    *&v77[3] = *&v85[3];
    v78 = v48;
    v79 = v84;
    OUTLINED_FUNCTION_258(v80);
    v81 = v18;
    v83 = 0;
    v82 = 0;
  }

  else
  {
    v62[135] = 0;
    sub_27534B350();
    OUTLINED_FUNCTION_181_0();
    sub_2753B7558();
    memcpy(v61, v63, sizeof(v61));
    memcpy(v62, v90, 0x81uLL);
    sub_27534B488(v62, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    memcpy(v90, v61, 0x81uLL);
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v14, v15, v16);
    OUTLINED_FUNCTION_2_6();
    sub_27534B6A0(v17);
    sub_2753B7558();
    v42 = v64[0];
    OUTLINED_FUNCTION_178_0(2);
    v40 = sub_2753B7518();
    v41 = v19;
    sub_27534DB84(0, &qword_2809C0C60);
    OUTLINED_FUNCTION_9_3(&qword_2809C0C78);
    OUTLINED_FUNCTION_259();
    sub_2753B7558();
    v20 = v64[0];
    LOBYTE(v56[0]) = 4;
    OUTLINED_FUNCTION_259();
    sub_2753B7558();
    v21 = v64[0];
    OUTLINED_FUNCTION_178_0(5);
    v39 = sub_2753B7528();
    OUTLINED_FUNCTION_178_0(6);
    v38 = sub_2753B7528();
    OUTLINED_FUNCTION_178_0(7);
    v46 = sub_2753B7518();
    v47 = v22;
    v37 = v20;
    OUTLINED_FUNCTION_178_0(8);
    v44 = sub_2753B7518();
    v45 = v23;
    v59[151] = 9;
    sub_27534B76C();
    OUTLINED_FUNCTION_181_0();
    sub_2753B7558();
    memcpy(v58, v60, sizeof(v58));
    OUTLINED_FUNCTION_477(v59);
    sub_27534B488(v59, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    memcpy(v87, v58, 0x91uLL);
    OUTLINED_FUNCTION_289(10);
    v53 = sub_2753B7518();
    v55 = v24;
    OUTLINED_FUNCTION_289(11);
    v51 = sub_2753B7528();
    OUTLINED_FUNCTION_289(12);
    v49 = sub_2753B7548();
    v84 = v25 & 1;
    v57 = 13;
    v26 = sub_2753B7518();
    v28 = v27;
    v29 = OUTLINED_FUNCTION_395();
    v30(v29);
    memcpy(v56, v90, 0x88uLL);
    v56[17] = v42;
    v56[18] = v40;
    v56[19] = v41;
    v56[20] = v37;
    v56[21] = v21;
    LOBYTE(v56[22]) = v39;
    BYTE1(v56[22]) = v38;
    *(&v56[22] + 2) = v88;
    HIWORD(v56[22]) = v89;
    v56[23] = v46;
    v56[24] = v47;
    v56[25] = v44;
    v56[26] = v45;
    OUTLINED_FUNCTION_477(&v56[27]);
    OUTLINED_FUNCTION_287((&v56[45] + 1));
    HIDWORD(v56[45]) = v31;
    v56[46] = v53;
    v56[47] = v55;
    LOBYTE(v56[48]) = v51;
    OUTLINED_FUNCTION_286((&v56[48] + 1));
    HIDWORD(v56[48]) = v32;
    v56[49] = v49;
    v43 = v84;
    LOBYTE(v56[50]) = v84;
    OUTLINED_FUNCTION_71_2((&v56[50] + 1));
    HIDWORD(v56[50]) = v33;
    v56[51] = v26;
    v56[52] = v28;
    memcpy(v3, v56, 0x1A8uLL);
    sub_27534BD34(v56, v64);
    __swift_destroy_boxed_opaque_existential_1(v1);
    memcpy(v64, v90, sizeof(v64));
    v65 = v42;
    v66 = v40;
    v67 = v41;
    v68 = v37;
    v69 = v21;
    v70 = v39;
    v71 = v38;
    OUTLINED_FUNCTION_250(v88);
    OUTLINED_FUNCTION_477(v72);
    OUTLINED_FUNCTION_287(v73);
    *&v73[3] = v34;
    v74 = v53;
    v75 = v55;
    v76 = v51;
    OUTLINED_FUNCTION_286(v77);
    *&v77[3] = v35;
    v78 = v49;
    v79 = v43;
    OUTLINED_FUNCTION_71_2(v80);
    v81 = v36;
    v82 = v26;
    v83 = v28;
  }

  sub_27534BD04(v64);
  OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.LibraryPlaylistAttributes.artwork.getter()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_305();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_27();
  v5 = memcpy(v3, v4, 0x81uLL);
  return OUTLINED_FUNCTION_360(v5, v6, &qword_2809C1E30, &type metadata for MediaAPI.Artwork, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

void *MediaAPI.LibraryPlaylistAttributes.artwork.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_305();
  memcpy(v1, v2, v3);
  sub_27534B488(v5, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  return OUTLINED_FUNCTION_362(v0);
}

uint64_t MediaAPI.LibraryPlaylistAttributes.dateAdded.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.LibraryPlaylistAttributes.dateAdded.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 144);

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t MediaAPI.LibraryPlaylistAttributes.description.setter(uint64_t a1)
{
  v3 = *(v1 + 152);

  *(v1 + 152) = a1;
  return result;
}

uint64_t MediaAPI.LibraryPlaylistAttributes.lastModifiedDate.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 176);

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t MediaAPI.LibraryPlaylistAttributes.name.getter()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.LibraryPlaylistAttributes.name.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 192);

  *(v1 + 184) = v2;
  *(v1 + 192) = v0;
  return result;
}

uint64_t MediaAPI.LibraryPlaylistAttributes.playParams.getter()
{
  OUTLINED_FUNCTION_252();
  v2 = memcpy(v1, (v0 + 200), 0x91uLL);
  v3 = OUTLINED_FUNCTION_375(v2, (v0 + 200));
  return OUTLINED_FUNCTION_363(v3, v4, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

void *MediaAPI.LibraryPlaylistAttributes.playParams.setter()
{
  OUTLINED_FUNCTION_140_1();
  memcpy(v1, (v0 + 200), 0x91uLL);
  sub_27534B488(v3, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  return OUTLINED_FUNCTION_371((v0 + 200));
}

uint64_t MediaAPI.LibraryPlaylistAttributes.playlistType.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 360);

  *(v1 + 352) = v2;
  *(v1 + 360) = v0;
  return result;
}

uint64_t MediaAPI.LibraryPlaylistAttributes.trackTypes.setter(uint64_t a1)
{
  v3 = *(v1 + 392);

  *(v1 + 392) = a1;
  return result;
}

uint64_t MediaAPI.LibraryPlaylistAttributes.versionHash.getter()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.LibraryPlaylistAttributes.versionHash.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 408);

  *(v1 + 400) = v2;
  *(v1 + 408) = v0;
  return result;
}

uint64_t sub_27533EAEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6564644165746164 && a2 == 0xE900000000000064;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x63696C6275507369 && a2 == 0xE800000000000000;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000002753B96A0 == a2;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7473696C79616C70 && a2 == 0xEC00000065707954;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7374726F70707573 && a2 == 0xEC000000676E6953;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x756F436B63617274 && a2 == 0xEA0000000000746ELL;
                    if (v14 || (sub_2753B7718() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7079546B63617274 && a2 == 0xEA00000000007365;
                      if (v15 || (sub_2753B7718() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x486E6F6973726576 && a2 == 0xEB00000000687361)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_2753B7718();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_27533EEB8(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x6564644165746164;
      break;
    case 2:
      result = 0x7470697263736564;
      break;
    case 3:
      result = 0x63696C6275507369;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x6172615079616C70;
      break;
    case 7:
      result = 0x7473696C79616C70;
      break;
    case 8:
      result = 0x7374726F70707573;
      break;
    case 9:
      result = 0x756F436B63617274;
      break;
    case 10:
      result = 0x7079546B63617274;
      break;
    case 11:
      result = 0x486E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27533F068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27533EAEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27533F090(uint64_t a1)
{
  v2 = sub_27534BD6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27533F0CC(uint64_t a1)
{
  v2 = sub_27534BD6C();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.LibraryPlaylistAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_215_0();
  OUTLINED_FUNCTION_482(v4, v5, v6, v7, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_305();
  memcpy(v14, v15, v16);
  v39 = *(v0 + 144);
  v40 = *(v0 + 136);
  v38 = *(v0 + 152);
  v47 = *(v0 + 160);
  v36 = *(v0 + 176);
  v37 = *(v0 + 168);
  v34 = *(v0 + 184);
  v35 = *(v0 + 192);
  memcpy(v46, (v0 + 200), 0x91uLL);
  v32 = *(v0 + 352);
  v33 = *(v0 + 360);
  v30 = *(v0 + 384);
  v31 = *(v0 + 368);
  v28 = *(v0 + 392);
  v29 = *(v0 + 376);
  v26 = *(v0 + 400);
  v27 = *(v0 + 408);
  v17 = v3[4];
  OUTLINED_FUNCTION_67_0(v3, v3[3]);
  sub_27534B40C(v45, v42, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  sub_27534BD6C();
  OUTLINED_FUNCTION_382();
  sub_2753B7808();
  memcpy(v44, v45, sizeof(v44));
  sub_27534B2F4();
  sub_2753B7638();
  if (v1)
  {
    memcpy(v42, v44, 0x81uLL);
    sub_27534B488(v42, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    v18 = *(v10 + 8);
    v19 = OUTLINED_FUNCTION_294();
  }

  else
  {
    memcpy(v43, v44, 0x81uLL);
    sub_27534B488(v43, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    LOBYTE(v42[0]) = 1;
    OUTLINED_FUNCTION_396();
    sub_2753B75F8();
    v42[0] = v38;
    v41[0] = 2;
    sub_27534DB84(0, &qword_2809C0C60);
    OUTLINED_FUNCTION_10_4(&qword_2809C0C68);
    OUTLINED_FUNCTION_392();
    sub_2753B7638();
    LOBYTE(v42[0]) = 3;
    sub_2753B7608();
    LOBYTE(v42[0]) = 4;
    OUTLINED_FUNCTION_390();
    OUTLINED_FUNCTION_396();
    sub_2753B75F8();
    LOBYTE(v42[0]) = 5;
    OUTLINED_FUNCTION_396();
    sub_2753B75F8();
    OUTLINED_FUNCTION_331(v42);
    sub_27534B40C(v46, v41, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    sub_27534B54C();
    sub_2753B7638();
    memcpy(v41, v42, 0x91uLL);
    sub_27534B488(v41, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    OUTLINED_FUNCTION_396();
    sub_2753B7658();
    sub_2753B7608();
    OUTLINED_FUNCTION_396();
    sub_2753B7628();
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v21, v22, v23);
    OUTLINED_FUNCTION_3_4();
    sub_27534B6A0(v24);
    sub_2753B7638();
    OUTLINED_FUNCTION_239_0();
    sub_2753B75F8();
    v25 = *(v10 + 8);
    v19 = OUTLINED_FUNCTION_205_0();
  }

  v20(v19);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.LibraryPlaylistAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_215_0();
  OUTLINED_FUNCTION_317(v5, v6, v7, v8, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_122_2();
  sub_27534B348(v88);
  memcpy(v87, v88, 0x81uLL);
  sub_27534B690(&v89);
  OUTLINED_FUNCTION_331(v85);
  v13 = v2[3];
  v14 = v2[4];
  v90 = v2;
  v15 = OUTLINED_FUNCTION_434();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  sub_27534BD6C();
  OUTLINED_FUNCTION_382();
  OUTLINED_FUNCTION_129_2();
  OUTLINED_FUNCTION_436();
  OUTLINED_FUNCTION_184_0();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_462();
    __swift_destroy_boxed_opaque_existential_1(v2);
    memcpy(v57, v87, 0x81uLL);
    sub_27534B488(v57, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);

    OUTLINED_FUNCTION_473(v58);
    sub_27534B488(v58, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  }

  else
  {
    v55 = v4;
    v82[135] = 0;
    sub_27534B350();
    OUTLINED_FUNCTION_182();
    sub_2753B7558();
    memcpy(v81, v83, sizeof(v81));
    memcpy(v82, v87, 0x81uLL);
    sub_27534B488(v82, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    memcpy(v87, v81, 0x81uLL);
    OUTLINED_FUNCTION_25_2(1);
    v17 = sub_2753B7518();
    v54 = v18;
    sub_27534DB84(0, &qword_2809C0C60);
    OUTLINED_FUNCTION_9_3(&qword_2809C0C78);
    OUTLINED_FUNCTION_441();
    OUTLINED_FUNCTION_182();
    sub_2753B7558();
    v53 = v58[0];
    OUTLINED_FUNCTION_25_2(3);
    v19 = sub_2753B7528();
    OUTLINED_FUNCTION_25_2(4);
    v20 = sub_2753B7518();
    v22 = v21;
    v51 = v20;
    v52 = v19;
    OUTLINED_FUNCTION_25_2(5);
    v23 = sub_2753B7518();
    v25 = v24;
    v50 = v23;
    v79[151] = 6;
    sub_27534B76C();
    OUTLINED_FUNCTION_182();
    sub_2753B7558();
    v49 = v17;
    memcpy(v78, v80, sizeof(v78));
    OUTLINED_FUNCTION_473(v79);
    sub_27534B488(v79, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    memcpy(v85, v78, sizeof(v85));
    OUTLINED_FUNCTION_25_2(7);
    v26 = sub_2753B7578();
    v28 = v27;
    v48 = v26;
    OUTLINED_FUNCTION_25_2(8);
    v47 = sub_2753B7528();
    OUTLINED_FUNCTION_25_2(9);
    v29 = sub_2753B7548();
    v84 = v30 & 1;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v31, v32, v33);
    LOBYTE(v57[0]) = 10;
    OUTLINED_FUNCTION_2_6();
    sub_27534B6A0(v34);
    OUTLINED_FUNCTION_441();
    OUTLINED_FUNCTION_182();
    sub_2753B7558();
    v35 = v58[0];
    v77 = 11;
    OUTLINED_FUNCTION_182();
    v45 = sub_2753B7518();
    v46 = v36;
    v37 = OUTLINED_FUNCTION_366();
    v38(v37);
    memcpy(v57, v87, 0x88uLL);
    v57[17] = v49;
    v57[18] = v54;
    v57[19] = v53;
    LOBYTE(v57[20]) = v52;
    *(&v57[20] + 1) = *v86;
    HIDWORD(v57[20]) = *&v86[3];
    v57[21] = v51;
    v57[22] = v22;
    v57[23] = v50;
    v57[24] = v25;
    OUTLINED_FUNCTION_473(&v57[25]);
    OUTLINED_FUNCTION_287((&v57[43] + 1));
    HIDWORD(v57[43]) = v39;
    v57[44] = v48;
    v57[45] = v28;
    LOBYTE(v57[46]) = v47;
    OUTLINED_FUNCTION_286((&v57[46] + 1));
    HIDWORD(v57[46]) = v40;
    v57[47] = v29;
    v56 = v84;
    LOBYTE(v57[48]) = v84;
    OUTLINED_FUNCTION_71_2((&v57[48] + 1));
    HIDWORD(v57[48]) = v41;
    v57[49] = v35;
    v57[50] = v45;
    v57[51] = v46;
    memcpy(v55, v57, 0x1A0uLL);
    sub_27534BDC0(v57, v58);
    __swift_destroy_boxed_opaque_existential_1(v90);
    memcpy(v58, v87, 0x88uLL);
    v58[17] = v49;
    v58[18] = v54;
    v58[19] = v53;
    v59 = v52;
    *v60 = *v86;
    *&v60[3] = *&v86[3];
    v61 = v51;
    v62 = v22;
    v63 = v50;
    v64 = v25;
    OUTLINED_FUNCTION_473(&v65);
    OUTLINED_FUNCTION_287(v66);
    *&v66[3] = v42;
    v67 = v48;
    v68 = v28;
    v69 = v47;
    OUTLINED_FUNCTION_286(v70);
    *&v70[3] = v43;
    v71 = v29;
    v72 = v56;
    OUTLINED_FUNCTION_71_2(v73);
    *&v73[3] = v44;
    v74 = v35;
    v75 = v45;
    v76 = v46;
    sub_27534BDF8(v58);
  }

  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.StationAttributes.airTime.setter()
{
  result = OUTLINED_FUNCTION_431();
  *v1 = v0;
  return result;
}

uint64_t MediaAPI.StationAttributes.appBundleId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.StationAttributes.appBundleId.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MediaAPI.StationAttributes.artwork.getter()
{
  OUTLINED_FUNCTION_253();
  memcpy(v2, (v1 + 24), 0x81uLL);
  v3 = memcpy(v0, (v1 + 24), 0x81uLL);
  return OUTLINED_FUNCTION_360(v3, v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
}

void *MediaAPI.StationAttributes.artwork.setter()
{
  OUTLINED_FUNCTION_140_1();
  memcpy(v1, (v0 + 24), 0x81uLL);
  sub_27534B488(v3, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  return OUTLINED_FUNCTION_362((v0 + 24));
}

uint64_t MediaAPI.StationAttributes.band.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.StationAttributes.band.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 168);

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t MediaAPI.StationAttributes.contentRating.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.StationAttributes.contentRating.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 184);

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

uint64_t MediaAPI.StationAttributes.durationInMillis.getter()
{
  result = *(v0 + 192);
  v2 = *(v0 + 200);
  return result;
}

uint64_t MediaAPI.StationAttributes.durationInMillis.setter(uint64_t result, char a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t MediaAPI.StationAttributes.editorialNotes.setter(uint64_t a1)
{
  v3 = *(v1 + 208);

  *(v1 + 208) = a1;
  return result;
}

uint64_t MediaAPI.StationAttributes.episodeNumber.getter()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.StationAttributes.episodeNumber.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 224);

  *(v1 + 216) = v2;
  *(v1 + 224) = v0;
  return result;
}

uint64_t MediaAPI.StationAttributes.frequency.getter()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.StationAttributes.frequency.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 240);

  *(v1 + 232) = v2;
  *(v1 + 240) = v0;
  return result;
}

uint64_t MediaAPI.StationAttributes.kind.getter()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.StationAttributes.kind.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 264);

  *(v1 + 256) = v2;
  *(v1 + 264) = v0;
  return result;
}

uint64_t MediaAPI.StationAttributes.mediaKind.getter()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.StationAttributes.mediaKind.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 280);

  *(v1 + 272) = v2;
  *(v1 + 280) = v0;
  return result;
}

uint64_t MediaAPI.StationAttributes.name.getter()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.StationAttributes.name.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 296);

  *(v1 + 288) = v2;
  *(v1 + 296) = v0;
  return result;
}

uint64_t MediaAPI.StationAttributes.playParams.getter()
{
  OUTLINED_FUNCTION_252();
  v2 = memcpy(v1, (v0 + 304), 0x91uLL);
  v3 = OUTLINED_FUNCTION_375(v2, (v0 + 304));
  return OUTLINED_FUNCTION_363(v3, v4, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

void *MediaAPI.StationAttributes.playParams.setter()
{
  OUTLINED_FUNCTION_140_1();
  memcpy(v1, (v0 + 304), 0x91uLL);
  sub_27534B488(v3, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  return OUTLINED_FUNCTION_371((v0 + 304));
}

uint64_t MediaAPI.StationAttributes.stationProviderName.getter()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 464);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.StationAttributes.stationProviderName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 464);

  *(v1 + 456) = v2;
  *(v1 + 464) = v0;
  return result;
}

uint64_t MediaAPI.StationAttributes.streamingRadioSubType.getter()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.StationAttributes.streamingRadioSubType.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 480);

  *(v1 + 472) = v2;
  *(v1 + 480) = v0;
  return result;
}

uint64_t sub_275340464(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6954726961 && a2 == 0xE700000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1684955490 && a2 == 0xE400000000000000;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000002753B95E0 == a2;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4E65646F73697065 && a2 == 0xED00007265626D75;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x636E657571657266 && a2 == 0xE900000000000079;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6576694C7369 && a2 == 0xE600000000000000;
                    if (v14 || (sub_2753B7718() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 1684957547 && a2 == 0xE400000000000000;
                      if (v15 || (sub_2753B7718() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E694B616964656DLL && a2 == 0xE900000000000064;
                        if (v16 || (sub_2753B7718() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 1701667182 && a2 == 0xE400000000000000;
                          if (v17 || (sub_2753B7718() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                            if (v18 || (sub_2753B7718() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000014 && 0x80000002753B96C0 == a2;
                              if (v19 || (sub_2753B7718() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000013 && 0x80000002753B96E0 == a2;
                                if (v20 || (sub_2753B7718() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0xD000000000000015 && 0x80000002753B9700 == a2)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = sub_2753B7718();

                                  if (v22)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_275340990(char a1)
{
  result = 0x656D6954726961;
  switch(a1)
  {
    case 1:
      result = 0x6C646E7542707061;
      break;
    case 2:
      result = 0x6B726F77747261;
      break;
    case 3:
      result = 1684955490;
      break;
    case 4:
      result = 0x52746E65746E6F63;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6169726F74696465;
      break;
    case 7:
      result = 0x4E65646F73697065;
      break;
    case 8:
      result = 0x636E657571657266;
      break;
    case 9:
      result = 0x6576694C7369;
      break;
    case 10:
      result = 1684957547;
      break;
    case 11:
      result = 0x6E694B616964656DLL;
      break;
    case 12:
      result = 1701667182;
      break;
    case 13:
      result = 0x6172615079616C70;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275340BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275340464(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275340C04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_275340988();
  *a1 = result;
  return result;
}

uint64_t sub_275340C2C(uint64_t a1)
{
  v2 = sub_27534BE28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275340C68(uint64_t a1)
{
  v2 = sub_27534BE28();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.StationAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v4 = v3;
  OUTLINED_FUNCTION_237_0();
  sub_27534DC8C(0, v5, v6, v7, MEMORY[0x277D84538]);
  v9 = v8;
  OUTLINED_FUNCTION_2_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_30();
  v15 = *v0;
  v43 = v0[2];
  v44 = v0[1];
  memcpy(v49, v0 + 3, 0x81uLL);
  v41 = v0[21];
  v42 = v0[20];
  v39 = v0[22];
  v40 = v0[23];
  v38 = *(v0 + 200);
  v36 = v0[26];
  v37 = v0[24];
  v34 = v0[27];
  v35 = v0[28];
  v32 = v0[29];
  v33 = v0[30];
  v31 = *(v0 + 248);
  v29 = v0[32];
  v30 = v0[33];
  v27 = v0[34];
  v28 = v0[35];
  v25 = v0[36];
  v26 = v0[37];
  memcpy(v50, v0 + 38, 0x91uLL);
  v24 = *(v0 + 449);
  v22 = v0[57];
  v23 = v0[58];
  v20 = v0[59];
  v21 = v0[60];
  v16 = *(v4 + 24);
  v17 = *(v4 + 32);
  v18 = OUTLINED_FUNCTION_205_0();
  OUTLINED_FUNCTION_67_0(v18, v19);
  sub_27534BE28();

  sub_2753B7808();
  v46[0] = v15;
  v45[0] = 0;
  sub_27534DB84(0, &qword_2809C0C60);
  OUTLINED_FUNCTION_10_4(&qword_2809C0C68);
  sub_2753B7638();

  if (v1)
  {
    (*(v11 + 8))(v2, v9);
  }

  else
  {
    OUTLINED_FUNCTION_295(1);
    OUTLINED_FUNCTION_88();
    sub_2753B75F8();
    memcpy(v48, v49, sizeof(v48));
    v47[135] = 2;
    sub_27534B40C(v49, v46, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    sub_27534B2F4();
    OUTLINED_FUNCTION_88();
    sub_2753B7638();
    memcpy(v47, v48, 0x81uLL);
    sub_27534B488(v47, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    OUTLINED_FUNCTION_295(3);
    OUTLINED_FUNCTION_128_1();
    sub_2753B75F8();
    OUTLINED_FUNCTION_295(4);
    OUTLINED_FUNCTION_128_1();
    sub_2753B75F8();
    OUTLINED_FUNCTION_295(5);
    OUTLINED_FUNCTION_128_1();
    sub_2753B7648();
    v46[0] = v36;
    v45[0] = 6;
    OUTLINED_FUNCTION_88();
    sub_2753B7638();
    OUTLINED_FUNCTION_295(7);
    OUTLINED_FUNCTION_128_1();
    sub_2753B75F8();
    OUTLINED_FUNCTION_295(8);
    OUTLINED_FUNCTION_128_1();
    sub_2753B75F8();
    LOBYTE(v46[0]) = 9;
    OUTLINED_FUNCTION_88();
    sub_2753B7608();
    OUTLINED_FUNCTION_295(10);
    OUTLINED_FUNCTION_128_1();
    sub_2753B75F8();
    OUTLINED_FUNCTION_295(11);
    OUTLINED_FUNCTION_337();
    OUTLINED_FUNCTION_295(12);
    OUTLINED_FUNCTION_337();
    OUTLINED_FUNCTION_331(v46);
    v45[151] = 13;
    sub_27534B40C(v50, v45, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    sub_27534B54C();
    sub_2753B7638();
    memcpy(v45, v46, 0x91uLL);
    sub_27534B488(v45, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    sub_2753B7608();
    OUTLINED_FUNCTION_337();
    OUTLINED_FUNCTION_337();
    (*(v11 + 8))(v2, 0);
  }

  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.StationAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_334();
  v4 = v3;
  OUTLINED_FUNCTION_237_0();
  OUTLINED_FUNCTION_317(v5, v6, v7, v8, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_70_2();
  sub_27534B348(v106);
  memcpy(v105, v106, sizeof(v105));
  v103 = 1;
  sub_27534B690(&v107);
  OUTLINED_FUNCTION_331(v100);
  v13 = v2[3];
  v14 = v2[4];
  OUTLINED_FUNCTION_148_1();
  sub_27534BE28();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_268();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_461();
    OUTLINED_FUNCTION_177_0();
    __swift_destroy_boxed_opaque_existential_1(v2);
    v72 = 0;
    v73 = v1;
    v74 = v4;
    OUTLINED_FUNCTION_483(v75);
    *v76 = *v104;
    *&v76[3] = *&v104[3];
    v77 = v2;
    v78 = v14;
    v79 = v0;
    v80 = 0;
    v81 = 0;
    v82 = v103;
    v83 = *v102;
    OUTLINED_FUNCTION_332(*&v102[3]);
    v84 = v46;
    v85 = v48;
    v86 = v13;
    *(v15 + 249) = *v101;
    v87 = *&v101[3];
    v88 = v60;
    v89 = v62;
    OUTLINED_FUNCTION_348();
    OUTLINED_FUNCTION_480(v90);
    v91 = v54;
    v92 = v98;
    v93 = v99;
    v94 = v42;
    v95 = v44;
    v97 = 0;
    v96 = 0;
  }

  else
  {
    v40 = v4;
    sub_27534DB84(0, &qword_2809C0C60);
    OUTLINED_FUNCTION_9_3(&qword_2809C0C78);
    OUTLINED_FUNCTION_259();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7558();
    v39 = v72;
    OUTLINED_FUNCTION_54_1(1);
    v37 = sub_2753B7518();
    v38 = v16;
    v70[135] = 2;
    sub_27534B350();
    OUTLINED_FUNCTION_181_0();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7558();
    memcpy(v69, v71, sizeof(v69));
    OUTLINED_FUNCTION_483(v70);
    sub_27534B488(v70, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    memcpy(v105, v69, sizeof(v105));
    OUTLINED_FUNCTION_54_1(3);
    v35 = sub_2753B7518();
    v36 = v17;
    OUTLINED_FUNCTION_54_1(4);
    v34 = sub_2753B7518();
    v53 = v18;
    OUTLINED_FUNCTION_54_1(5);
    v52 = sub_2753B7568();
    v103 = v19 & 1;
    LOBYTE(v64[0]) = 6;
    OUTLINED_FUNCTION_259();
    sub_2753B7558();
    v20 = v72;
    OUTLINED_FUNCTION_54_1(7);
    v50 = sub_2753B7518();
    v51 = v21;
    OUTLINED_FUNCTION_54_1(8);
    v47 = sub_2753B7518();
    v49 = v22;
    OUTLINED_FUNCTION_54_1(9);
    v33 = sub_2753B7528();
    OUTLINED_FUNCTION_57_0(10);
    v61 = sub_2753B7518();
    v63 = v23;
    OUTLINED_FUNCTION_57_0(11);
    v58 = sub_2753B7518();
    v59 = v24;
    OUTLINED_FUNCTION_57_0(12);
    v56 = sub_2753B7518();
    v57 = v25;
    v67[151] = 13;
    sub_27534B76C();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    memcpy(v66, v68, sizeof(v66));
    OUTLINED_FUNCTION_480(v67);
    sub_27534B488(v67, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    memcpy(v100, v66, 0x91uLL);
    OUTLINED_FUNCTION_57_0(14);
    v55 = sub_2753B7528();
    OUTLINED_FUNCTION_57_0(15);
    v43 = sub_2753B7518();
    v45 = v26;
    v65 = 16;
    OUTLINED_FUNCTION_103_2();
    v27 = sub_2753B7518();
    v29 = v28;
    v30 = OUTLINED_FUNCTION_92_2();
    v31(v30);
    v64[0] = v39;
    v64[1] = v37;
    v64[2] = v38;
    OUTLINED_FUNCTION_483(&v64[3]);
    *(&v64[19] + 1) = *v104;
    HIDWORD(v64[19]) = *&v104[3];
    v64[20] = v35;
    v64[21] = v36;
    v64[22] = v34;
    v64[23] = v53;
    v64[24] = v52;
    v41 = v103;
    LOBYTE(v64[25]) = v103;
    *(&v64[25] + 1) = *v102;
    HIDWORD(v64[25]) = *&v102[3];
    v64[26] = v20;
    v64[27] = v50;
    v64[28] = v51;
    v64[29] = v47;
    v64[30] = v49;
    LOBYTE(v64[31]) = v33;
    *(&v64[31] + 1) = *v101;
    HIDWORD(v64[31]) = *&v101[3];
    v64[32] = v61;
    v64[33] = v63;
    v64[34] = v58;
    v64[35] = v59;
    v64[36] = v56;
    v64[37] = v57;
    OUTLINED_FUNCTION_480(&v64[38]);
    BYTE1(v64[56]) = v55;
    *(&v64[56] + 2) = v98;
    HIWORD(v64[56]) = v99;
    v64[57] = v43;
    v64[58] = v45;
    v64[59] = v27;
    v64[60] = v29;
    memcpy(v40, v64, 0x1E8uLL);
    sub_27534BEAC(v64, &v72);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v72 = v39;
    v73 = v37;
    v74 = v38;
    OUTLINED_FUNCTION_483(v75);
    *v76 = *v104;
    *&v76[3] = *&v104[3];
    v77 = v35;
    v78 = v36;
    v79 = v34;
    v80 = v53;
    v81 = v52;
    v82 = v41;
    v83 = *v102;
    OUTLINED_FUNCTION_332(*&v102[3]);
    v84 = v47;
    v85 = v49;
    v86 = v33;
    *(v32 + 249) = *v101;
    v87 = *&v101[3];
    v88 = v61;
    v89 = v63;
    OUTLINED_FUNCTION_348();
    OUTLINED_FUNCTION_480(v90);
    v91 = v55;
    v92 = v98;
    v93 = v99;
    v94 = v43;
    v95 = v45;
    v96 = v27;
    v97 = v29;
  }

  sub_27534BE7C(&v72);
  OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.GenreAttributes.name.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.GenreAttributes.url.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MediaAPI.GenreAttributes.parentId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.GenreAttributes.parentId.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t MediaAPI.GenreAttributes.parentName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.GenreAttributes.parentName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t sub_275341D48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7107189 && a2 == 0xE300000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449746E65726170 && a2 == 0xE800000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x614E746E65726170 && a2 == 0xEA0000000000656DLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_2753B7718();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_275341EB0(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 7107189;
      break;
    case 2:
      result = 0x6449746E65726170;
      break;
    case 3:
      result = 0x614E746E65726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275341F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275341D48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275341F68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_275341EA8();
  *a1 = result;
  return result;
}

uint64_t sub_275341F90(uint64_t a1)
{
  v2 = sub_27534BEE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275341FCC(uint64_t a1)
{
  v2 = sub_27534BEE4();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.GenreAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_219_0();
  sub_27534DC8C(0, v2, v3, v4, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21();
  v10 = *v0;
  v9 = v0[1];
  v21 = v0[3];
  v22 = v0[2];
  v19 = v0[5];
  v20 = v0[4];
  v17 = v0[7];
  v18 = v0[6];
  v12 = *(v1 + 24);
  v11 = *(v1 + 32);
  v13 = OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_67_0(v13, v14);
  sub_27534BEE4();
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_210_0();
  sub_2753B7808();
  OUTLINED_FUNCTION_319();
  OUTLINED_FUNCTION_433();
  OUTLINED_FUNCTION_144_1();
  sub_2753B75F8();
  if (!v23)
  {
    OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_22();
    sub_2753B75F8();
    OUTLINED_FUNCTION_175_0();
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_22();
    sub_2753B75F8();
    OUTLINED_FUNCTION_171_0();
    OUTLINED_FUNCTION_381();
    OUTLINED_FUNCTION_22();
    sub_2753B75F8();
  }

  v15 = OUTLINED_FUNCTION_173_0();
  v16(v15);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.GenreAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_326();
  v34 = v2;
  OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_317(v3, v4, v5, v6, MEMORY[0x277D844C8]);
  v8 = v7;
  OUTLINED_FUNCTION_2_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14();
  v14 = v0[3];
  v15 = v0[4];
  v16 = OUTLINED_FUNCTION_53();
  v18 = __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_27534BEE4();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_116_2();
  sub_2753B77F8();
  if (v1)
  {
    OUTLINED_FUNCTION_160_1();
    __swift_destroy_boxed_opaque_existential_1(v0);
    v39 = 0uLL;
    v40 = v10;
    v41 = v18;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_110();
    *&v33 = sub_2753B7518();
    *(&v33 + 1) = v19;
    OUTLINED_FUNCTION_110();
    v20 = sub_2753B7518();
    v22 = v21;
    LOBYTE(v39) = 2;
    OUTLINED_FUNCTION_110();
    v23 = sub_2753B7518();
    v25 = v24;
    OUTLINED_FUNCTION_110();
    v26 = sub_2753B7518();
    v27 = OUTLINED_FUNCTION_161_0();
    v29 = v28;
    v30(v27, v8);
    v35 = v33;
    *&v36 = v20;
    *(&v36 + 1) = v22;
    *&v37 = v23;
    *(&v37 + 1) = v25;
    *&v38 = v26;
    *(&v38 + 1) = v29;
    v31 = v36;
    *v34 = v33;
    v34[1] = v31;
    v32 = v38;
    v34[2] = v37;
    v34[3] = v32;
    sub_27534BF68(&v35, &v39);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v39 = v33;
    v40 = v20;
    v41 = v22;
    v42 = v23;
    v43 = v25;
    v44 = v26;
    v45 = v29;
  }

  sub_27534BF38(&v39);
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.SampledValues.value.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2753424D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000002753B9720 == a2;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2753425A0(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2753425FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2753424D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275342624(uint64_t a1)
{
  v2 = sub_27534BFA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275342660(uint64_t a1)
{
  v2 = sub_27534BFA0();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.SampledValues.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_214_0();
  sub_27534DC8C(0, v4, v5, v6, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21();
  v11 = *v0;
  v12 = *(v0 + 8);
  v23 = v0[2];
  v14 = *(v3 + 24);
  v13 = *(v3 + 32);
  v15 = OUTLINED_FUNCTION_254();
  OUTLINED_FUNCTION_67_0(v15, v16);
  sub_27534BFA0();
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_210_0();
  sub_2753B7808();
  OUTLINED_FUNCTION_319();
  OUTLINED_FUNCTION_144_1();
  sub_2753B7618();
  if (!v1)
  {
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v17, v18, v19);
    OUTLINED_FUNCTION_3_4();
    sub_27534BFF4(v20);
    OUTLINED_FUNCTION_58();
    sub_2753B7638();
  }

  v21 = OUTLINED_FUNCTION_173_0();
  v22(v21);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.SampledValues.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_435();
  v22 = v2;
  OUTLINED_FUNCTION_214_0();
  OUTLINED_FUNCTION_317(v3, v4, v5, v6, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_65_1();
  sub_27534BFA0();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_484();
  }

  else
  {
    OUTLINED_FUNCTION_264();
    OUTLINED_FUNCTION_239_0();
    v13 = sub_2753B7538();
    OUTLINED_FUNCTION_374(v13, v14);
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v15, v16, v17);
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_2_6();
    sub_27534BFF4(v18);
    OUTLINED_FUNCTION_239_0();
    sub_2753B7558();
    v19 = *(v9 + 8);
    v20 = OUTLINED_FUNCTION_205_0();
    v21(v20);
    *v22 = v1;
    *(v22 + 8) = 1;
    *(v22 + 16) = v23;

    OUTLINED_FUNCTION_330();
  }

  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

__n128 MediaAPI.FlexmlAnalysisAttributes.arousal.setter(__n128 *a1)
{
  OUTLINED_FUNCTION_124_2(a1);
  sub_27534C068(*v2, v2[1], v2[2]);
  result = v4;
  *v2 = v4;
  v2[2] = v1;
  return result;
}

__n128 MediaAPI.FlexmlAnalysisAttributes.valence.setter(__n128 *a1)
{
  OUTLINED_FUNCTION_124_2(a1);
  sub_27534C068(v2[3], v2[4], v2[5]);
  result = v4;
  *(v2 + 3) = v4;
  v2[5] = v1;
  return result;
}

__n128 MediaAPI.FlexmlAnalysisAttributes.visualTempo.setter(__n128 *a1)
{
  OUTLINED_FUNCTION_124_2(a1);
  sub_27534C068(v2[6], v2[7], v2[8]);
  result = v4;
  *(v2 + 3) = v4;
  v2[8] = v1;
  return result;
}

uint64_t MediaAPI.FlexmlAnalysisAttributes.PivotPoints.gainTimeInSeconds.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t MediaAPI.FlexmlAnalysisAttributes.PivotPoints.gainValue.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_275342C24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65536E49656D6974 && a2 == 0xED000073646E6F63;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000002753B9740 == a2;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x756C61566E696167 && a2 == 0xE900000000000065;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C426F5465646166 && a2 == 0xEB000000006B6361)
      {

        return 3;
      }

      else
      {
        v9 = sub_2753B7718();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_275342D98(char a1)
{
  result = 0x65536E49656D6974;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x756C61566E696167;
      break;
    case 3:
      result = 0x6C426F5465646166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275342E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275342C24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275342E78(uint64_t a1)
{
  v2 = sub_27534C07C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275342EB4(uint64_t a1)
{
  v2 = sub_27534C07C();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.FlexmlAnalysisAttributes.PivotPoints.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_439();
  OUTLINED_FUNCTION_209_0();
  sub_27534DC8C(0, v2, v3, v4, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21();
  v11 = *v0;
  v12 = *(v0 + 8);
  v26 = v0[3];
  v27 = v0[2];
  v25 = v0[4];
  v24 = *(v0 + 40);
  v14 = *(v1 + 24);
  v13 = *(v1 + 32);
  v15 = OUTLINED_FUNCTION_139_2();
  OUTLINED_FUNCTION_67_0(v15, v16);
  sub_27534C07C();
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_340();
  sub_2753B7808();
  OUTLINED_FUNCTION_144_1();
  sub_2753B7618();
  if (!v28)
  {
    OUTLINED_FUNCTION_84_1();
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v17, v18, v19);
    OUTLINED_FUNCTION_3_4();
    sub_27534BFF4(v20);
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_58();
    sub_2753B7638();
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_58();
    sub_2753B7638();
    OUTLINED_FUNCTION_242(3);
    OUTLINED_FUNCTION_22();
    sub_2753B7618();
  }

  v21 = *(v7 + 8);
  v22 = OUTLINED_FUNCTION_114();
  v23(v22);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.FlexmlAnalysisAttributes.PivotPoints.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v25 = v3;
  OUTLINED_FUNCTION_209_0();
  OUTLINED_FUNCTION_317(v4, v5, v6, v7, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14();
  v12 = v2[3];
  v13 = v2[4];
  OUTLINED_FUNCTION_115_2(v2);
  sub_27534C07C();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_138_2();
  }

  else
  {
    LOBYTE(v26) = 0;
    OUTLINED_FUNCTION_110();
    v14 = sub_2753B7538();
    v27 = v15 & 1;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v16, v17, v18);
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_2_6();
    sub_27534BFF4(v19);
    OUTLINED_FUNCTION_110();
    sub_2753B7558();
    OUTLINED_FUNCTION_385();
    OUTLINED_FUNCTION_110();
    sub_2753B7558();
    OUTLINED_FUNCTION_110();
    v20 = sub_2753B7538();
    v22 = v21;
    v23 = OUTLINED_FUNCTION_34_2();
    v24(v23);
    *v25 = v14;
    *(v25 + 8) = v27;
    *(v25 + 16) = v26;
    *(v25 + 24) = v26;
    *(v25 + 32) = v20;
    *(v25 + 40) = v22 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.FlexmlAnalysisAttributes.entryPoints.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t MediaAPI.FlexmlAnalysisAttributes.exitPoints.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t sub_275343454(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65536E49656D6974 && a2 == 0xED000073646E6F63;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_275343520(char a1)
{
  if (a1)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x65536E49656D6974;
  }
}

uint64_t sub_275343568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275343454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275343590(uint64_t a1)
{
  v2 = sub_27534C0D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2753435CC(uint64_t a1)
{
  v2 = sub_27534C0D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaAPI.FlexmlAnalysisAttributes.videoEvents.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  *a1 = v2;
  a1[1] = v3;
  return sub_27534C5B8(v2);
}

uint64_t MediaAPI.FlexmlAnalysisAttributes.videoEvents.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 96);
  result = sub_27534C600(*(v1 + 88));
  *(v1 + 88) = v2;
  *(v1 + 96) = v3;
  return result;
}

uint64_t sub_275343724(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6173756F7261 && a2 == 0xE700000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65636E656C6176 && a2 == 0xE700000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65546C6175736976 && a2 == 0xEB000000006F706DLL;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x696F507972746E65 && a2 == 0xEB0000000073746ELL;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E696F5074697865 && a2 == 0xEA00000000007374;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6576456F65646976 && a2 == 0xEB0000000073746ELL)
          {

            return 5;
          }

          else
          {
            v11 = sub_2753B7718();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_275343924(char a1)
{
  result = 0x6C6173756F7261;
  switch(a1)
  {
    case 1:
      result = 0x65636E656C6176;
      break;
    case 2:
      result = 0x65546C6175736976;
      break;
    case 3:
      result = 0x696F507972746E65;
      break;
    case 4:
      result = 0x6E696F5074697865;
      break;
    case 5:
      result = 0x6576456F65646976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275343A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275343724(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275343A2C(uint64_t a1)
{
  v2 = sub_27534C124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275343A68(uint64_t a1)
{
  v2 = sub_27534C124();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.FlexmlAnalysisAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v4 = v3;
  OUTLINED_FUNCTION_203_0();
  sub_27534DC8C(0, v5, v6, v7, MEMORY[0x277D84538]);
  v9 = v8;
  OUTLINED_FUNCTION_2_0(v8);
  v39 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_70_2();
  v14 = *v0;
  v15 = v0[1];
  v16 = v0[2];
  v37 = v0[4];
  v38 = v0[3];
  v35 = v0[6];
  v36 = v0[5];
  v33 = v0[8];
  v34 = v0[7];
  v31 = v0[10];
  v32 = v0[9];
  v29 = v0[11];
  v30 = v0[12];
  v17 = *(v4 + 24);
  v18 = *(v4 + 32);
  v19 = OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_67_0(v19, v20);
  v21 = OUTLINED_FUNCTION_53();
  sub_27534C054(v21, v22, v16);
  sub_27534C124();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_340();
  sub_2753B7808();
  sub_27534C178();
  sub_2753B7638();
  OUTLINED_FUNCTION_402();
  if (!v1)
  {
    OUTLINED_FUNCTION_77();
    sub_27534C054(v23, v24, v25);
    OUTLINED_FUNCTION_170_0();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7638();
    OUTLINED_FUNCTION_402();
    OUTLINED_FUNCTION_385();
    sub_27534C054(v35, v34, v33);
    OUTLINED_FUNCTION_170_0();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7638();
    OUTLINED_FUNCTION_402();
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v26, v27, v28);
    sub_27534C1CC();
    OUTLINED_FUNCTION_170_0();
    OUTLINED_FUNCTION_325();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7638();
    OUTLINED_FUNCTION_170_0();
    OUTLINED_FUNCTION_325();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7638();
    sub_27534C5B8(v29);
    sub_27534C2BC();
    OUTLINED_FUNCTION_170_0();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7638();
    sub_27534C600(v29);
  }

  (*(v39 + 8))(v2, v9);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.FlexmlAnalysisAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_326();
  v32 = v2;
  OUTLINED_FUNCTION_203_0();
  OUTLINED_FUNCTION_317(v3, v4, v5, v6, MEMORY[0x277D844C8]);
  v8 = v7;
  OUTLINED_FUNCTION_2_0(v7);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_368();
  v12 = v0[3];
  v13 = v0[4];
  OUTLINED_FUNCTION_115_2(v0);
  sub_27534C124();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (v1)
  {
    OUTLINED_FUNCTION_118_2();
    OUTLINED_FUNCTION_238_0();
    __swift_destroy_boxed_opaque_existential_1(v0);
    v36 = 0;
    v37 = 0;
    v38 = 1;
    v39 = v13;
    v40 = v8;
    v41 = 1;
    v42 = v1;
    v43 = v12;
    OUTLINED_FUNCTION_379();
    v44 = v14;
    v45 = xmmword_2753C2F80;
  }

  else
  {
    sub_27534C340();
    OUTLINED_FUNCTION_181_0();
    sub_2753B7558();
    v29 = v36;
    v30 = v37;
    v31 = v38;
    OUTLINED_FUNCTION_351();
    OUTLINED_FUNCTION_376();
    v28 = v37;
    v15 = v38;
    OUTLINED_FUNCTION_351();
    OUTLINED_FUNCTION_376();
    v27 = v36;
    v16 = v37;
    v26 = v36;
    OUTLINED_FUNCTION_351();
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v17, v18, v19);
    sub_27534C394();
    sub_2753B7558();
    sub_2753B7558();
    sub_27534C484();
    sub_2753B7558();
    v20 = OUTLINED_FUNCTION_168_0();
    v21(v20);
    v22 = v34;
    v23 = v35;
    v24 = OUTLINED_FUNCTION_460();
    sub_27534C600(v24);
    v33[0] = v36;
    v33[1] = v37;
    v33[2] = v38;
    v33[3] = v36;
    v33[4] = v37;
    v33[5] = v38;
    v33[6] = v36;
    v33[7] = v37;
    v33[8] = v38;
    v33[9] = v36;
    v33[10] = v36;
    v33[11] = v34;
    v33[12] = v35;
    memcpy(v32, v33, 0x68uLL);
    sub_27534C4D8(v33, &v36);
    __swift_destroy_boxed_opaque_existential_1(0);
    v36 = v29;
    v37 = v30;
    v38 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v15;
    v42 = v26;
    v43 = v16;
    OUTLINED_FUNCTION_379();
    v44 = v25;
    *&v45 = v22;
    *(&v45 + 1) = v23;
  }

  sub_27534C310(&v36);
  OUTLINED_FUNCTION_61();
}

uint64_t sub_2753443F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696E6E69676562 && a2 == 0xE900000000000067;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E69646E65 && a2 == 0xE600000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1852399981 && a2 == 0xE400000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x80000002753B9760 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_2753B7718();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_275344558(char a1)
{
  result = 0x6E696E6E69676562;
  switch(a1)
  {
    case 1:
      result = 0x676E69646E65;
      break;
    case 2:
      result = 1852399981;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2753445F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2753443F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275344618(uint64_t a1)
{
  v2 = sub_27534C510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275344654(uint64_t a1)
{
  v2 = sub_27534C510();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.AudioAnalysisAttributes.Analysis.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_234_0();
  sub_27534DC8C(0, v2, v3, v4, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_394();
  v18 = *(v0 + 32);
  v17 = *(v0 + 40);
  v16 = *(v0 + 48);
  v15 = *(v0 + 56);
  v10 = *(v1 + 24);
  v9 = *(v1 + 32);
  v11 = OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_67_0(v11, v12);
  sub_27534C510();
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_210_0();
  sub_2753B7808();
  OUTLINED_FUNCTION_319();
  OUTLINED_FUNCTION_144_1();
  sub_2753B7618();
  if (!v19)
  {
    OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_22();
    sub_2753B7618();
    OUTLINED_FUNCTION_175_0();
    OUTLINED_FUNCTION_22();
    sub_2753B7618();
    OUTLINED_FUNCTION_171_0();
    OUTLINED_FUNCTION_22();
    sub_2753B7618();
  }

  v13 = OUTLINED_FUNCTION_173_0();
  v14(v13);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.AudioAnalysisAttributes.Analysis.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_435();
  v37 = v13;
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_317(v14, v15, v16, v17, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_65_1();
  sub_27534C510();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (!v11)
  {
    OUTLINED_FUNCTION_264();
    OUTLINED_FUNCTION_239_0();
    v24 = sub_2753B7538();
    OUTLINED_FUNCTION_374(v24, v25);
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_239_0();
    v26 = sub_2753B7538();
    v39 = v27 & 1;
    OUTLINED_FUNCTION_239_0();
    v36 = sub_2753B7538();
    OUTLINED_FUNCTION_446(v36, v28);
    OUTLINED_FUNCTION_239_0();
    v29 = sub_2753B7538();
    v31 = v30;
    v32 = *(v20 + 8);
    v35 = v29;
    v33 = OUTLINED_FUNCTION_205_0();
    v34(v33);
    *v37 = v12;
    *(v37 + 8) = a10;
    *(v37 + 16) = v26;
    *(v37 + 24) = v39;
    *(v37 + 32) = v36;
    *(v37 + 40) = v38;
    *(v37 + 48) = v35;
    *(v37 + 56) = v31 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.AudioAnalysisAttributes.acousticness.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = *(v1 + 32);
  OUTLINED_FUNCTION_199_0(a1, *(v1 + 42));
}

__n128 MediaAPI.AudioAnalysisAttributes.acousticness.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  *(v1 + 32) = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 42) = result;
  return result;
}

void MediaAPI.AudioAnalysisAttributes.bpm.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 64);
  a1[1] = v2;
  a1[2] = *(v1 + 96);
  OUTLINED_FUNCTION_199_0(a1, *(v1 + 106));
}

__n128 MediaAPI.AudioAnalysisAttributes.bpm.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v2;
  *(v1 + 96) = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 106) = result;
  return result;
}

void MediaAPI.AudioAnalysisAttributes.danceability.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 128);
  a1[1] = v2;
  a1[2] = *(v1 + 160);
  OUTLINED_FUNCTION_199_0(a1, *(v1 + 170));
}

__n128 MediaAPI.AudioAnalysisAttributes.danceability.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v2;
  *(v1 + 160) = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 170) = result;
  return result;
}

void MediaAPI.AudioAnalysisAttributes.energy.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 208);
  *a1 = *(v1 + 192);
  a1[1] = v2;
  a1[2] = *(v1 + 224);
  OUTLINED_FUNCTION_199_0(a1, *(v1 + 234));
}

__n128 MediaAPI.AudioAnalysisAttributes.energy.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 192) = *a1;
  *(v1 + 208) = v2;
  *(v1 + 224) = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 234) = result;
  return result;
}

void MediaAPI.AudioAnalysisAttributes.melodicness.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 272);
  *a1 = *(v1 + 256);
  a1[1] = v2;
  a1[2] = *(v1 + 288);
  OUTLINED_FUNCTION_199_0(a1, *(v1 + 298));
}

void MediaAPI.AudioAnalysisAttributes.melodicness.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1[16] = *a1;
  v1[17] = v2;
  v1[18] = *(a1 + 32);
  OUTLINED_FUNCTION_199_0((v1 + 16), *(a1 + 42));
}

void MediaAPI.AudioAnalysisAttributes.valence.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 336);
  *a1 = *(v1 + 320);
  a1[1] = v2;
  a1[2] = *(v1 + 352);
  OUTLINED_FUNCTION_199_0(a1, *(v1 + 362));
}

void MediaAPI.AudioAnalysisAttributes.valence.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1[20] = *a1;
  v1[21] = v2;
  v1[22] = *(a1 + 32);
  OUTLINED_FUNCTION_199_0((v1 + 20), *(a1 + 42));
}

uint64_t MediaAPI.AudioAnalysisAttributes.Beats.barsInMilliseconds.setter()
{
  result = OUTLINED_FUNCTION_431();
  *v1 = v0;
  return result;
}

uint64_t sub_275344C88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000002753B9780 == a2;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002753B97A0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_275344D5C(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_275344D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275344C88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275344DC0(uint64_t a1)
{
  v2 = sub_27534C564();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275344DFC(uint64_t a1)
{
  v2 = sub_27534C564();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_275344E78()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v5 = v4;
  sub_27534DC8C(0, v6, v7, v8, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_21();
  v13 = *v0;
  v22 = v0[1];
  v14 = v5[4];
  v15 = OUTLINED_FUNCTION_67_0(v5, v5[3]);
  v3(v15);
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_210_0();
  sub_2753B7808();
  OUTLINED_FUNCTION_456();
  OUTLINED_FUNCTION_0_5();
  sub_27534D210(0, v16, v17, v18);
  OUTLINED_FUNCTION_3_4();
  sub_27534BFF4(v19);
  OUTLINED_FUNCTION_23_1();
  sub_2753B7638();

  if (!v1)
  {
    OUTLINED_FUNCTION_84_1();
    OUTLINED_FUNCTION_23_1();
    sub_2753B7638();
  }

  v20 = OUTLINED_FUNCTION_373();
  v21(v20);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void sub_27534502C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60();
  v12 = v11;
  v14 = v13;
  v34 = v15;
  sub_27534DC8C(0, v16, v17, v18, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14();
  v25 = v14[4];
  v26 = OUTLINED_FUNCTION_67_0(v14, v14[3]);
  v12(v26);
  OUTLINED_FUNCTION_323();
  sub_2753B77F8();
  if (v10)
  {
    OUTLINED_FUNCTION_484();
  }

  else
  {
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v27, v28, v29);
    OUTLINED_FUNCTION_2_6();
    sub_27534BFF4(v30);
    OUTLINED_FUNCTION_200();
    OUTLINED_FUNCTION_323();
    OUTLINED_FUNCTION_110();
    sub_2753B7558();
    OUTLINED_FUNCTION_200();
    OUTLINED_FUNCTION_323();
    OUTLINED_FUNCTION_110();
    sub_2753B7558();
    v31 = *(v21 + 8);
    v32 = OUTLINED_FUNCTION_71();
    v33(v32);
    *v34 = a10;
    v34[1] = a10;

    OUTLINED_FUNCTION_330();
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.AudioAnalysisAttributes.beats.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 384);
  v3 = *(v1 + 392);
  *a1 = v2;
  a1[1] = v3;
  return sub_27534C5B8(v2);
}

uint64_t MediaAPI.AudioAnalysisAttributes.beats.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 392);
  result = sub_27534C600(*(v1 + 384));
  *(v1 + 384) = v2;
  *(v1 + 392) = v3;
  return result;
}

uint64_t sub_275345310(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000002753B97C0 == a2;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002753B97E0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_2753453E8(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_275345428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275345310(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275345450(uint64_t a1)
{
  v2 = sub_27534C644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27534548C(uint64_t a1)
{
  v2 = sub_27534C644();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.AudioAnalysisAttributes.TimeRange.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_223_0();
  sub_27534DC8C(0, v2, v3, v4, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21();
  v11 = *v0;
  v12 = *(v0 + 8);
  v20 = v0[2];
  v22 = *(v0 + 24);
  v14 = *(v1 + 24);
  v13 = *(v1 + 32);
  v15 = OUTLINED_FUNCTION_139_2();
  OUTLINED_FUNCTION_67_0(v15, v16);
  sub_27534C644();
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_340();
  sub_2753B7808();
  OUTLINED_FUNCTION_319();
  OUTLINED_FUNCTION_144_1();
  sub_2753B7618();
  if (!v21)
  {
    OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_22();
    sub_2753B7618();
  }

  v17 = *(v7 + 8);
  v18 = OUTLINED_FUNCTION_114();
  v19(v18);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.AudioAnalysisAttributes.TimeRange.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_435();
  v32 = v13;
  OUTLINED_FUNCTION_223_0();
  OUTLINED_FUNCTION_317(v14, v15, v16, v17, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_65_1();
  sub_27534C644();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (!v11)
  {
    OUTLINED_FUNCTION_264();
    OUTLINED_FUNCTION_239_0();
    v24 = sub_2753B7538();
    OUTLINED_FUNCTION_374(v24, v25);
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_239_0();
    v26 = sub_2753B7538();
    v28 = v27;
    v29 = *(v20 + 8);
    v30 = OUTLINED_FUNCTION_205_0();
    v31(v30);
    *v32 = v12;
    *(v32 + 8) = a10;
    *(v32 + 16) = v26;
    *(v32 + 24) = v28 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.AudioAnalysisAttributes.Fades.fadeIn.getter(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  v4 = v1[1].n128_u8[9];
  OUTLINED_FUNCTION_311(a1, *v1);
}

__n128 MediaAPI.AudioAnalysisAttributes.Fades.fadeIn.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[1].n128_u8[9];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u8[8] = v3;
  v1[1].n128_u8[9] = v4;
  return result;
}

void MediaAPI.AudioAnalysisAttributes.Fades.fadeOut.getter(__n128 *a1@<X8>)
{
  v2 = v1[3].n128_u64[0];
  v3 = v1[3].n128_u8[8];
  v4 = v1[3].n128_u8[9];
  OUTLINED_FUNCTION_311(a1, v1[2]);
}

__n128 MediaAPI.AudioAnalysisAttributes.Fades.fadeOut.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[1].n128_u8[9];
  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u64[0] = v2;
  v1[3].n128_u8[8] = v3;
  v1[3].n128_u8[9] = v4;
  return result;
}

uint64_t sub_275345850(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E4965646166 && a2 == 0xE600000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74754F65646166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_275345914(char a1)
{
  if (a1)
  {
    return 0x74754F65646166;
  }

  else
  {
    return 0x6E4965646166;
  }
}

uint64_t sub_275345950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275345850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275345978(uint64_t a1)
{
  v2 = sub_27534C698();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2753459B4(uint64_t a1)
{
  v2 = sub_27534C698();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.AudioAnalysisAttributes.Fades.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_222_0();
  sub_27534DC8C(0, v4, v5, v6, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_21();
  v24 = *v0;
  v13 = *(v0 + 2);
  v14 = *(v0 + 24);
  v15 = *(v0 + 25);
  v22 = *(v0 + 5);
  v23 = *(v0 + 4);
  v21 = *(v0 + 6);
  v25 = *(v0 + 56);
  v20 = *(v0 + 57);
  v16 = v3[4];
  OUTLINED_FUNCTION_67_0(v3, v3[3]);
  sub_27534C698();
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_81();
  sub_2753B7808();
  sub_27534C6EC();
  OUTLINED_FUNCTION_442();
  sub_2753B7638();
  if (!v1)
  {
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_442();
    OUTLINED_FUNCTION_58();
    sub_2753B7638();
  }

  v17 = *(v9 + 8);
  v18 = OUTLINED_FUNCTION_390();
  v19(v18);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.AudioAnalysisAttributes.Fades.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_435();
  v16 = v2;
  OUTLINED_FUNCTION_222_0();
  OUTLINED_FUNCTION_317(v3, v4, v5, v6, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_65_1();
  sub_27534C698();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (!v1)
  {
    sub_27534C740();
    OUTLINED_FUNCTION_239_0();
    sub_2753B7558();
    OUTLINED_FUNCTION_239_0();
    sub_2753B7558();
    v13 = *(v9 + 8);
    v14 = OUTLINED_FUNCTION_205_0();
    v15(v14);
    *v16 = v17;
    *(v16 + 16) = v18;
    *(v16 + 24) = v19;
    *(v16 + 25) = v20;
    *(v16 + 32) = v17;
    *(v16 + 48) = v18;
    *(v16 + 56) = v19;
    *(v16 + 57) = v20;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

__n128 MediaAPI.AudioAnalysisAttributes.fades.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 416);
  *a1 = *(v1 + 400);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 432);
  result = *(v1 + 443);
  *(a1 + 43) = result;
  return result;
}

__n128 MediaAPI.AudioAnalysisAttributes.fades.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 400) = *a1;
  *(v1 + 416) = v2;
  *(v1 + 432) = *(a1 + 32);
  result = *(a1 + 43);
  *(v1 + 443) = result;
  return result;
}

uint64_t MediaAPI.AudioAnalysisAttributes.Key.beginning.setter()
{
  result = OUTLINED_FUNCTION_431();
  *v1 = v0;
  return result;
}

uint64_t MediaAPI.AudioAnalysisAttributes.Key.ending.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_275345ECC(char a1)
{
  if (!a1)
  {
    return 0x6E696E6E69676562;
  }

  if (a1 == 1)
  {
    return 0x676E69646E65;
  }

  return 1852399981;
}

uint64_t sub_275345F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275346450(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275345F4C(uint64_t a1)
{
  v2 = sub_27534C794();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275345F88(uint64_t a1)
{
  v2 = sub_27534C794();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.AudioAnalysisAttributes.Key.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_439();
  OUTLINED_FUNCTION_216_0();
  OUTLINED_FUNCTION_482(v2, v3, v4, v5, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21();
  v10 = *v0;
  v17 = v0[2];
  v18 = v0[1];
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = OUTLINED_FUNCTION_381();
  OUTLINED_FUNCTION_67_0(v13, v14);
  sub_27534C794();
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_466();
  OUTLINED_FUNCTION_456();
  sub_27534DB84(0, &qword_2809C0C60);
  OUTLINED_FUNCTION_10_4(&qword_2809C0C68);
  OUTLINED_FUNCTION_369();
  OUTLINED_FUNCTION_184_0();
  sub_2753B7638();
  if (v19)
  {
  }

  else
  {

    OUTLINED_FUNCTION_84_1();
    OUTLINED_FUNCTION_23_1();
    sub_2753B7638();
    OUTLINED_FUNCTION_23_1();
    sub_2753B7638();
  }

  v15 = OUTLINED_FUNCTION_373();
  v16(v15);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.AudioAnalysisAttributes.Key.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_216_0();
  OUTLINED_FUNCTION_317(v2, v3, v4, v5, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14();
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = OUTLINED_FUNCTION_53();
  __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_27534C794();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_116_2();
  sub_2753B77F8();
  if (v1)
  {
    OUTLINED_FUNCTION_484();
  }

  else
  {
    sub_27534DB84(0, &qword_2809C0C60);
    OUTLINED_FUNCTION_9_3(&qword_2809C0C78);
    OUTLINED_FUNCTION_200();
    OUTLINED_FUNCTION_83_2();
    OUTLINED_FUNCTION_61_0(1);
    OUTLINED_FUNCTION_61_0(2);
    v14 = OUTLINED_FUNCTION_34_2();
    v15(v14);
    OUTLINED_FUNCTION_426();

    OUTLINED_FUNCTION_330();
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.AudioAnalysisAttributes.key.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[58];
  v3 = v1[59];
  v4 = v1[60];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_27534C8A4(v2);
}

__n128 MediaAPI.AudioAnalysisAttributes.key.setter(__n128 *a1)
{
  OUTLINED_FUNCTION_124_2(a1);
  v3 = v2[59];
  v4 = v2[60];
  sub_27534C8F8(v2[58]);
  result = v6;
  *(v2 + 29) = v6;
  v2[60] = v1;
  return result;
}

uint64_t sub_275346450(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696E6E69676562 && a2 == 0xE900000000000067;
  if (v4 || (OUTLINED_FUNCTION_405() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E69646E65 && a2 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_405() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1852399981 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_405();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_275346540(uint64_t a1)
{
  v2 = sub_27534C7E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27534657C(uint64_t a1)
{
  v2 = sub_27534C7E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.AudioAnalysisAttributes.Loudness.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_439();
  OUTLINED_FUNCTION_212_0();
  OUTLINED_FUNCTION_482(v2, v3, v4, v5, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21();
  v10 = *v0;
  v17 = v0[2];
  v18 = v0[1];
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = OUTLINED_FUNCTION_381();
  OUTLINED_FUNCTION_67_0(v13, v14);
  sub_27534C7E8();
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_466();
  OUTLINED_FUNCTION_456();
  sub_27534DB84(0, &qword_2809C2100);
  sub_27534C83C(&unk_2809C2108);
  OUTLINED_FUNCTION_369();
  OUTLINED_FUNCTION_184_0();
  sub_2753B7638();
  if (v19)
  {
  }

  else
  {

    OUTLINED_FUNCTION_84_1();
    OUTLINED_FUNCTION_23_1();
    sub_2753B7638();
    OUTLINED_FUNCTION_23_1();
    sub_2753B7638();
  }

  v15 = OUTLINED_FUNCTION_373();
  v16(v15);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.AudioAnalysisAttributes.Loudness.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_212_0();
  OUTLINED_FUNCTION_317(v2, v3, v4, v5, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14();
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = OUTLINED_FUNCTION_53();
  __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_27534C7E8();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_116_2();
  sub_2753B77F8();
  if (v1)
  {
    OUTLINED_FUNCTION_484();
  }

  else
  {
    sub_27534DB84(0, &qword_2809C2100);
    sub_27534C83C(&unk_2809C2118);
    OUTLINED_FUNCTION_200();
    OUTLINED_FUNCTION_83_2();
    OUTLINED_FUNCTION_61_0(1);
    OUTLINED_FUNCTION_61_0(2);
    v14 = OUTLINED_FUNCTION_34_2();
    v15(v14);
    OUTLINED_FUNCTION_426();

    OUTLINED_FUNCTION_330();
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.AudioAnalysisAttributes.loudness.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[61];
  v3 = v1[62];
  v4 = v1[63];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_27534C8A4(v2);
}

__n128 MediaAPI.AudioAnalysisAttributes.loudness.setter(__n128 *a1)
{
  OUTLINED_FUNCTION_124_2(a1);
  v3 = v2[62];
  v4 = v2[63];
  sub_27534C8F8(v2[61]);
  result = v6;
  *(v2 + 61) = v6;
  v2[63] = v1;
  return result;
}

__n128 MediaAPI.AudioAnalysisAttributes.loudnessCurve.setter(__n128 *a1)
{
  OUTLINED_FUNCTION_124_2(a1);
  sub_27534C068(v2[64], v2[65], v2[66]);
  result = v4;
  *(v2 + 32) = v4;
  v2[66] = v1;
  return result;
}

uint64_t MediaAPI.AudioAnalysisAttributes.phrases.setter(uint64_t a1)
{
  v3 = *(v1 + 536);

  *(v1 + 536) = a1;
  return result;
}

uint64_t sub_275346B78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000002753B97C0 == a2;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000002753B97E0 == a2;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6874676E65727473 && a2 == 0xE800000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1684957547 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2753B7718();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_275346CE0(char a1)
{
  result = 0x6874676E65727473;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 1684957547;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_275346D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275346B78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275346DA8(uint64_t a1)
{
  v2 = sub_27534C948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275346DE4(uint64_t a1)
{
  v2 = sub_27534C948();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.AudioAnalysisAttributes.VocalActivity.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_207_0();
  sub_27534DC8C(0, v2, v3, v4, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_394();
  v18 = v0[4];
  v16 = v0[6];
  v17 = v0[5];
  v15 = v0[7];
  v10 = *(v1 + 24);
  v9 = *(v1 + 32);
  v11 = OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_67_0(v11, v12);
  sub_27534C948();
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_210_0();
  sub_2753B7808();
  OUTLINED_FUNCTION_319();
  OUTLINED_FUNCTION_144_1();
  sub_2753B7618();
  if (!v19)
  {
    OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_22();
    sub_2753B7618();
    OUTLINED_FUNCTION_175_0();
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_22();
    sub_2753B75F8();
    OUTLINED_FUNCTION_171_0();
    OUTLINED_FUNCTION_381();
    OUTLINED_FUNCTION_22();
    sub_2753B75F8();
  }

  v13 = OUTLINED_FUNCTION_173_0();
  v14(v13);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.AudioAnalysisAttributes.VocalActivity.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_326();
  v52 = v2;
  OUTLINED_FUNCTION_207_0();
  OUTLINED_FUNCTION_317(v3, v4, v5, v6, MEMORY[0x277D844C8]);
  v8 = v7;
  OUTLINED_FUNCTION_2_0(v7);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  v51 = 1;
  v49 = 1;
  v12 = v0[3];
  v13 = v0[4];
  v14 = OUTLINED_FUNCTION_53();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_27534C948();
  OUTLINED_FUNCTION_129_2();
  OUTLINED_FUNCTION_322();
  sub_2753B77F8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    v38 = 0;
    v39 = v51;
    *v40 = *v50;
    *&v40[3] = *&v50[3];
    v41 = 0;
    v42 = v49;
    *v43 = *v48;
    *&v43[3] = *&v48[3];
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_240_0();
    v16 = sub_2753B7538();
    OUTLINED_FUNCTION_446(v16, v17);
    OUTLINED_FUNCTION_240_0();
    v18 = sub_2753B7538();
    v49 = v19 & 1;
    LOBYTE(v38) = 2;
    OUTLINED_FUNCTION_240_0();
    v20 = sub_2753B7518();
    v22 = v21;
    HIBYTE(v37) = 3;
    OUTLINED_FUNCTION_240_0();
    v23 = sub_2753B7518();
    v24 = OUTLINED_FUNCTION_265();
    v26 = v25;
    v27(v24, v8);
    *&v33 = v16;
    v32 = v51;
    BYTE8(v33) = v51;
    HIDWORD(v33) = *&v50[3];
    *(&v33 + 9) = *v50;
    *&v34 = v18;
    v31 = v49;
    BYTE8(v34) = v49;
    HIDWORD(v34) = *&v48[3];
    *(&v34 + 9) = *v48;
    *&v35 = v20;
    *(&v35 + 1) = v22;
    *&v36 = v23;
    *(&v36 + 1) = v26;
    v28 = v33;
    v29 = v34;
    v30 = v36;
    v52[2] = v35;
    v52[3] = v30;
    *v52 = v28;
    v52[1] = v29;
    sub_27534C9CC(&v33, &v38);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v38 = v16;
    v39 = v32;
    *v40 = *v50;
    *&v40[3] = *&v50[3];
    v41 = v18;
    v42 = v31;
    *v43 = *v48;
    *&v43[3] = *&v48[3];
    v44 = v20;
    v45 = v22;
    v46 = v23;
    v47 = v26;
  }

  sub_27534C99C(&v38);
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.AudioAnalysisAttributes.vocalActivity.setter(uint64_t a1)
{
  v3 = *(v1 + 544);

  *(v1 + 544) = a1;
  return result;
}

uint64_t sub_275347378(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63697473756F6361 && a2 == 0xEC0000007373656ELL;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7172194 && a2 == 0xE300000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69626165636E6164 && a2 == 0xEC0000007974696CLL;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x796772656E65 && a2 == 0xE600000000000000;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6369646F6C656DLL && a2 == 0xEB00000000737365;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65636E656C6176 && a2 == 0xE700000000000000;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7374616562 && a2 == 0xE500000000000000;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7365646166 && a2 == 0xE500000000000000;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 7955819 && a2 == 0xE300000000000000;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7373656E64756F6CLL && a2 == 0xE800000000000000;
                    if (v14 || (sub_2753B7718() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7373656E64756F6CLL && a2 == 0xED00006576727543;
                      if (v15 || (sub_2753B7718() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x73657361726870 && a2 == 0xE700000000000000;
                        if (v16 || (sub_2753B7718() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x7463416C61636F76 && a2 == 0xED00007974697669)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_2753B7718();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_275347768(char a1)
{
  result = 0x63697473756F6361;
  switch(a1)
  {
    case 1:
      result = 7172194;
      break;
    case 2:
      result = 0x69626165636E6164;
      break;
    case 3:
      result = 0x796772656E65;
      break;
    case 4:
      result = 0x6E6369646F6C656DLL;
      break;
    case 5:
      result = 0x65636E656C6176;
      break;
    case 6:
      v3 = 1952540002;
      goto LABEL_11;
    case 7:
      v3 = 1701077350;
LABEL_11:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      break;
    case 8:
      result = 7955819;
      break;
    case 9:
    case 10:
      result = 0x7373656E64756F6CLL;
      break;
    case 11:
      result = 0x73657361726870;
      break;
    case 12:
      result = 0x7463416C61636F76;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275347900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275347378(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275347928(uint64_t a1)
{
  v2 = sub_27534CA04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275347964(uint64_t a1)
{
  v2 = sub_27534CA04();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.AudioAnalysisAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v4 = v3;
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_317(v5, v6, v7, v8, MEMORY[0x277D84538]);
  v10 = v9;
  OUTLINED_FUNCTION_2_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_368();
  v51 = v0[4];
  v52 = v0[5];
  *v53 = v0[6];
  *&v53[10] = *(v0 + 106);
  v54 = v0[8];
  v55 = v0[9];
  *v56 = v0[10];
  *&v56[10] = *(v0 + 170);
  *&v59[10] = *(v0 + 234);
  v58 = v0[13];
  *v59 = v0[14];
  v57 = v0[12];
  v60 = v0[16];
  v61 = v0[17];
  *v62 = v0[18];
  *&v62[10] = *(v0 + 298);
  *&v65[10] = *(v0 + 362);
  v64 = v0[21];
  *v65 = v0[22];
  v63 = v0[20];
  v46 = *(v0 + 49);
  v47 = *(v0 + 48);
  *&v68[11] = *(v0 + 443);
  v67 = v0[26];
  *v68 = v0[27];
  v66 = v0[25];
  v45 = *(v0 + 59);
  v43 = *(v0 + 58);
  v44 = *(v0 + 60);
  v42 = *(v0 + 62);
  v40 = *(v0 + 61);
  v41 = *(v0 + 63);
  v39 = *(v0 + 65);
  v37 = *(v0 + 64);
  v38 = *(v0 + 66);
  v35 = *(v0 + 68);
  v36 = *(v0 + 67);
  v16 = *(v4 + 24);
  v17 = *(v4 + 32);
  v18 = OUTLINED_FUNCTION_434();
  __swift_project_boxed_opaque_existential_1(v18, v19);
  sub_27534CA04();
  OUTLINED_FUNCTION_129_2();
  sub_2753B7808();
  v48 = *v0;
  v49 = v0[1];
  *v50 = v0[2];
  *&v50[10] = *(v0 + 42);
  sub_27534CA58();
  OUTLINED_FUNCTION_190_0();
  sub_2753B7638();
  if (v1)
  {
    (*(v12 + 8))(v2, v10);
  }

  else
  {
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_312();
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_312();
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_312();
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_312();
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_312();
    v22 = OUTLINED_FUNCTION_298();
    sub_27534C5B8(v22);
    sub_27534CAAC();
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_361();
    sub_27534C600(v47);
    sub_27534CB00();
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_361();
    sub_27534C8A4(v43);
    sub_27534CB54();
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_361();
    v23 = OUTLINED_FUNCTION_386();
    sub_27534C8F8(v23);
    sub_27534C8A4(v40);
    sub_27534CBA8();
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_361();
    v24 = OUTLINED_FUNCTION_386();
    sub_27534C8F8(v24);
    sub_27534C054(v37, v39, v38);
    sub_27534C178();
    OUTLINED_FUNCTION_190_0();
    OUTLINED_FUNCTION_361();
    v25 = OUTLINED_FUNCTION_386();
    sub_27534C068(v25, v26, v27);
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v28, v29, v30);
    sub_27534CBFC();
    OUTLINED_FUNCTION_190_0();
    OUTLINED_FUNCTION_364();
    sub_2753B7638();
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v31, v32, v33);
    sub_27534CC98();
    OUTLINED_FUNCTION_190_0();
    OUTLINED_FUNCTION_364();
    sub_2753B7638();
    v34 = OUTLINED_FUNCTION_97_1();
    v21(v34, v20);
  }

  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.AudioAnalysisAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_201_0();
  sub_27534DC8C(0, v6, v7, &type metadata for MediaAPI.AudioAnalysisAttributes.CodingKeys, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_70_2();
  v253 = 1;
  v254 = 1;
  v12 = v3[4];
  OUTLINED_FUNCTION_67_0(v3, v3[3]);
  sub_27534CA04();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_323();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_231_0();
    OUTLINED_FUNCTION_138_2();
    OUTLINED_FUNCTION_12_4();
    OUTLINED_FUNCTION_22_1(xmmword_2753C2F80);
    OUTLINED_FUNCTION_261();
    __swift_destroy_boxed_opaque_existential_1(v3);
    *v198 = v1;
    *&v198[8] = v12;
    *&v198[16] = 0;
    v199 = 0;
    v200 = 0;
    v201 = 0;
    v202 = 0;
    v203 = 0;
    v204 = 1;
    OUTLINED_FUNCTION_189_0();
    v205 = 1;
    OUTLINED_FUNCTION_180_0();
    v206 = 1;
    OUTLINED_FUNCTION_117_2();
    OUTLINED_FUNCTION_454(v251);
    OUTLINED_FUNCTION_224_0(*(v13 + 23));
    v207 = v102;
    v208 = v39;
    v209 = v52;
    v210 = *(v14 + 11);
    v211 = v244;
    v212 = v106;
    v213 = v122;
    v214 = v108;
    v215 = v38;
    v216 = v110;
    v217 = v112;
    v218 = v114;
    v219 = v116;
    v220 = v54;
    v221 = v241;
    v222 = v242;
    v223 = 1;
    v224 = v58;
    v225 = v104;
    v226 = v70;
    v227 = v68;
    v228 = v66;
    v229 = v64;
    v230 = v62;
    v231 = v60;
    v232 = v56;
    v233 = 1;
    v234 = *v14;
    v235 = v240;
    v236 = v50;
    v237 = v46;
    OUTLINED_FUNCTION_198_0();
    v238 = 0;
  }

  else
  {
    v188 = 0;
    sub_27534CDB8();
    OUTLINED_FUNCTION_66_2();
    sub_2753B7558();
    v34 = v189;
    v35 = v190;
    v36 = v191;
    v32 = v192;
    v41 = v193;
    v33 = v197;
    v178 = 1;
    OUTLINED_FUNCTION_66_2();
    sub_2753B7558();
    v44 = v196;
    v42 = v194;
    v43 = v195;
    v93 = v179;
    v95 = v180;
    v96 = v181;
    v97 = v182;
    v98 = v183;
    v99 = v184;
    v100 = v185;
    v101 = v186;
    v31 = v187;
    v168 = 2;
    OUTLINED_FUNCTION_66_2();
    sub_2753B7558();
    v78 = v169;
    v81 = v170;
    v83 = v171;
    v86 = v172;
    v89 = v173;
    v90 = v174;
    v92 = v175;
    v94 = v176;
    v30 = v177;
    v158 = 3;
    OUTLINED_FUNCTION_66_2();
    sub_2753B7558();
    v73 = v159;
    v74 = v160;
    v76 = v161;
    v79 = v162;
    v82 = v163;
    v85 = v164;
    v88 = v165;
    v91 = v166;
    v48 = v167;
    v148 = 4;
    OUTLINED_FUNCTION_66_2();
    sub_2753B7558();
    v72 = v149;
    v75 = v150;
    v77 = v151;
    v80 = v152;
    v84 = v153;
    v87 = v154;
    v103 = v155;
    v40 = v156;
    v53 = v157;
    v138 = 5;
    OUTLINED_FUNCTION_66_2();
    sub_2753B7558();
    v107 = v139;
    v15 = v142;
    v111 = v143;
    v113 = v144;
    v115 = v145;
    v117 = v146;
    v55 = v147;
    sub_27534CE0C();
    OUTLINED_FUNCTION_388();
    OUTLINED_FUNCTION_181_0();
    OUTLINED_FUNCTION_322();
    sub_2753B7558();
    v109 = v141;
    v123 = v140;
    v29 = *v198;
    v59 = *&v198[8];
    v16 = OUTLINED_FUNCTION_460();
    sub_27534C600(v16);
    v128 = 7;
    sub_27534CE60();
    OUTLINED_FUNCTION_181_0();
    OUTLINED_FUNCTION_322();
    sub_2753B7558();
    v105 = v129;
    v69 = v131;
    v71 = v130;
    v65 = v133;
    v67 = v132;
    v61 = v135;
    v63 = v134;
    v57 = v136;
    v124 = v137;
    sub_27534CEB4();
    OUTLINED_FUNCTION_388();
    OUTLINED_FUNCTION_181_0();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    v45 = *v198;
    v51 = *&v198[8];
    v17 = OUTLINED_FUNCTION_460();
    sub_27534C8F8(v17);
    sub_27534CF08();
    OUTLINED_FUNCTION_388();
    OUTLINED_FUNCTION_181_0();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    v47 = *v198;
    v49 = *&v198[16];
    v18 = OUTLINED_FUNCTION_460();
    sub_27534C8F8(v18);
    sub_27534C340();
    OUTLINED_FUNCTION_388();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    v120 = *v198;
    v121 = *&v198[8];
    v118 = *&v198[16];
    OUTLINED_FUNCTION_351();
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v19, v20, v21);
    LOBYTE(v125[0]) = 11;
    sub_27534CF5C();
    OUTLINED_FUNCTION_388();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    v119 = *v198;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v22, v23, v24);
    v126 = 12;
    sub_27534CFF8();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    v25 = OUTLINED_FUNCTION_113_2();
    v26(v25);
    *(&v125[23] + 2) = v247;
    *(&v125[31] + 2) = v245;
    *(&v125[39] + 2) = v243;
    *(&v125[47] + 2) = v241;
    *(&v125[57] + 3) = v239;
    *(&v125[7] + 2) = v251;
    HIWORD(v125[7]) = v252;
    *(&v125[15] + 2) = v249;
    HIWORD(v125[15]) = v250;
    HIWORD(v125[23]) = v248;
    HIWORD(v125[31]) = v246;
    HIWORD(v125[39]) = v244;
    HIWORD(v125[47]) = v242;
    HIBYTE(v125[57]) = v240;
    *&v125[59] = v51;
    *&v125[61] = v47;
    v37 = v127;
    v125[0] = v34;
    v125[1] = v35;
    v125[2] = v36;
    v125[3] = v32;
    v125[4] = v41;
    v125[5] = v42;
    v125[6] = v43;
    LOBYTE(v125[7]) = v44;
    BYTE1(v125[7]) = v33;
    v125[8] = v93;
    v125[9] = v95;
    v125[10] = v96;
    v125[11] = v97;
    v125[12] = v98;
    v125[13] = v99;
    v125[14] = v100;
    LOBYTE(v125[15]) = v101;
    BYTE1(v125[15]) = v31;
    v125[16] = v78;
    v125[17] = v81;
    v125[18] = v83;
    v125[19] = v86;
    v125[20] = v89;
    v125[21] = v90;
    v125[22] = v92;
    LOBYTE(v125[23]) = v94;
    BYTE1(v125[23]) = v30;
    v125[24] = v73;
    v125[25] = v74;
    v125[26] = v76;
    v125[27] = v79;
    v125[28] = v82;
    v125[29] = v85;
    v125[30] = v88;
    LOBYTE(v125[31]) = v91;
    BYTE1(v125[31]) = v48;
    v125[32] = v72;
    v125[33] = v75;
    v125[34] = v77;
    v125[35] = v80;
    v125[36] = v84;
    v125[37] = v87;
    v125[38] = v103;
    LOBYTE(v125[39]) = v40;
    BYTE1(v125[39]) = v53;
    v125[40] = v107;
    v125[41] = v123;
    v125[42] = v109;
    v125[43] = v15;
    v125[44] = v111;
    v125[45] = v113;
    v125[46] = v115;
    LOBYTE(v125[47]) = v117;
    BYTE1(v125[47]) = v55;
    v125[48] = v29;
    v125[49] = v59;
    v125[50] = v105;
    v125[51] = v71;
    v125[52] = v69;
    v125[53] = v67;
    v125[54] = v65;
    v125[55] = v63;
    v125[56] = v61;
    LOWORD(v125[57]) = v57;
    BYTE2(v125[57]) = v124;
    v125[58] = v45;
    v125[63] = v49;
    v125[64] = v120;
    v125[65] = v121;
    v125[66] = v118;
    v125[67] = v119;
    v125[68] = v127;
    memcpy(v5, v125, 0x228uLL);
    sub_27534D0E8(v125, v198);
    __swift_destroy_boxed_opaque_existential_1(v3);
    *v198 = v34;
    *&v198[8] = v35;
    *&v198[16] = v36;
    v199 = v32;
    v200 = v41;
    v201 = v42;
    v202 = v43;
    v203 = v44;
    v204 = v33;
    OUTLINED_FUNCTION_189_0();
    v205 = v31;
    OUTLINED_FUNCTION_180_0();
    v206 = v30;
    OUTLINED_FUNCTION_117_2();
    v207 = v103;
    v208 = v40;
    OUTLINED_FUNCTION_454(v251);
    OUTLINED_FUNCTION_224_0(*(v27 + 23));
    v209 = v53;
    v210 = *(v28 + 11);
    v211 = v244;
    v212 = v107;
    v213 = v123;
    v214 = v109;
    v215 = v15;
    v216 = v111;
    v217 = v113;
    v218 = v115;
    v219 = v117;
    v220 = v55;
    v221 = v241;
    v222 = v242;
    v223 = v29;
    v224 = v59;
    v225 = v105;
    v226 = v71;
    v227 = v69;
    v228 = v67;
    v229 = v65;
    v230 = v63;
    v231 = v61;
    v232 = v57;
    v233 = v124;
    v234 = *v28;
    v235 = v240;
    v236 = v51;
    v237 = v47;
    OUTLINED_FUNCTION_198_0();
    v238 = v37;
  }

  sub_27534CD88(v198);
  OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.Attributes.name.getter()
{
  memcpy(v22, v0, 0x2F9uLL);
  v1 = sub_27531603C(v22);
  v2 = sub_275316098(v22);
  switch(v1)
  {
    case 1:
      v9 = v2[44];
      v10 = v2[45];
      goto LABEL_11;
    case 2:
      v5 = v2[27];
      v6 = v2[28];
      goto LABEL_11;
    case 3:
      v13 = v2[25];
      v14 = v2[26];
      goto LABEL_11;
    case 4:
      v15 = v2[36];
      v16 = v2[37];
      goto LABEL_11;
    case 5:
      v11 = *v2;
      v12 = v2[1];
      goto LABEL_11;
    case 7:
      v19 = v2[26];
      v20 = v2[27];
      goto LABEL_11;
    case 8:
      v7 = v2[24];
      v8 = v2[25];
      goto LABEL_11;
    case 9:
      v17 = v2[23];
      v18 = v2[24];
      goto LABEL_11;
    case 10:
    case 11:
      return OUTLINED_FUNCTION_27();
    default:
      v3 = v2[48];
      v4 = v2[49];
LABEL_11:

      return OUTLINED_FUNCTION_27();
  }
}

uint64_t MediaAPI.Relationship.data.setter()
{
  result = OUTLINED_FUNCTION_431();
  *v1 = v0;
  return result;
}

uint64_t MediaAPI.Relationship.href.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.Relationship.href.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MediaAPI.Relationship.next.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.Relationship.next.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t sub_2753490BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1717924456 && a2 == 0xE400000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1954047342 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2753B7718();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2753491F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2753490BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275349218(uint64_t a1)
{
  v2 = sub_27534D120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275349254(uint64_t a1)
{
  v2 = sub_27534D120();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.Relationship.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_227_0();
  sub_27534DC8C(0, v4, v5, &type metadata for MediaAPI.Relationship.CodingKeys, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_21();
  v12 = *v0;
  v25 = v0[2];
  v26 = v0[1];
  v23 = v0[4];
  v24 = v0[3];
  v13 = *(v3 + 24);
  v14 = *(v3 + 32);
  v15 = OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_67_0(v15, v16);
  sub_27534D120();

  OUTLINED_FUNCTION_455();
  OUTLINED_FUNCTION_81();
  sub_2753B7808();
  OUTLINED_FUNCTION_0_5();
  sub_27534D210(0, v17, v18, v19);
  sub_275329A84();
  OUTLINED_FUNCTION_123_2();
  sub_2753B7698();
  if (v1)
  {
  }

  else
  {

    OUTLINED_FUNCTION_22();
    sub_2753B75F8();
    OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_22();
    sub_2753B75F8();
  }

  v20 = *(v8 + 8);
  v21 = OUTLINED_FUNCTION_114();
  v22(v21);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.Relationship.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_326();
  v36 = v12;
  OUTLINED_FUNCTION_227_0();
  OUTLINED_FUNCTION_317(v13, v14, v15, v16, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_65_1();
  sub_27534D120();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v23, v24, v25);
    sub_27534D174();
    OUTLINED_FUNCTION_82_2();
    sub_2753B75B8();
    OUTLINED_FUNCTION_110();
    v26 = sub_2753B7518();
    v28 = v27;
    OUTLINED_FUNCTION_110();
    v29 = sub_2753B7518();
    v31 = v30;
    v32 = *(v19 + 8);
    v35 = v29;
    v33 = OUTLINED_FUNCTION_71();
    v34(v33);
    *v36 = a10;
    v36[1] = v26;
    v36[2] = v28;
    v36[3] = v35;
    v36[4] = v31;

    OUTLINED_FUNCTION_330();
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.Resource.id.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.Resource.type.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MediaAPI.Resource.href.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.Resource.href.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t MediaAPI.Resource.attributes.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 48), 0x2F9uLL);
  memcpy(a1, (v1 + 48), 0x2F9uLL);
  return sub_27534B40C(__dst, v4, qword_2809C1498, &type metadata for MediaAPI.Attributes);
}

void *MediaAPI.Resource.attributes.setter()
{
  OUTLINED_FUNCTION_140_1();
  memcpy(v2, (v1 + 48), 0x2F9uLL);
  sub_27534B488(v4, qword_2809C1498, &type metadata for MediaAPI.Attributes);
  return memcpy((v1 + 48), v0, 0x2F9uLL);
}

uint64_t MediaAPI.Resource.relationships.setter(uint64_t a1)
{
  v3 = *(v1 + 816);

  *(v1 + 816) = a1;
  return result;
}

uint64_t sub_275349924()
{
  v0 = sub_2753B74E8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_275349970(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x7475626972747461;
      break;
    case 3:
      result = 0x6E6F6974616C6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275349A24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_275349924();
  *a2 = result;
  return result;
}

uint64_t sub_275349A54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_275349970(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_275349A88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_275349924();
  *a1 = result;
  return result;
}

uint64_t sub_275349ABC(uint64_t a1)
{
  v2 = sub_27534D260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275349AF8(uint64_t a1)
{
  v2 = sub_27534D260();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.Resource.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v2 = MEMORY[0x28223BE20](v1);
  v60 = v3;
  OUTLINED_FUNCTION_221_0();
  sub_27534DC8C(0, v4, v5, &type metadata for MediaAPI.Resource.CodingKeys, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  sub_27534D2B4(v69);
  memcpy(v68, v69, sizeof(v68));
  v12 = v2[3];
  v13 = v2[4];
  v70 = v2;
  v14 = OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_67_0(v14, v15);
  sub_27534D260();
  OUTLINED_FUNCTION_325();
  sub_2753B77F8();
  if (v0)
  {
    v17 = 0;
    v18 = 0;
    goto LABEL_4;
  }

  v16 = v8;
  OUTLINED_FUNCTION_452();
  v19 = sub_2753B7578();
  v21 = v20;
  LOBYTE(v65[0]) = 1;
  OUTLINED_FUNCTION_452();
  v59._countAndFlagsBits = sub_2753B7578();
  v59._object = v22;
  LOBYTE(v65[0]) = 2;
  OUTLINED_FUNCTION_452();
  if (sub_2753B75D8())
  {

    MediaAPI.MediaAPIType.init(rawValue:)(v59);
    switch(v63)
    {
      case 1:
        OUTLINED_FUNCTION_196_0();
        sub_27534D670();
        OUTLINED_FUNCTION_32_1();
        if (v59._object)
        {
          goto LABEL_37;
        }

        v36 = OUTLINED_FUNCTION_218_0();
        memcpy(v36, v37, 0x260uLL);
        sub_27534D6C4(v62);
        goto LABEL_40;
      case 2:
        OUTLINED_FUNCTION_196_0();
        sub_27534D878();
        OUTLINED_FUNCTION_32_1();
        if (v59._object)
        {
          goto LABEL_37;
        }

        v30 = OUTLINED_FUNCTION_218_0();
        memcpy(v30, v31, 0x248uLL);
        sub_27534D8CC(v62);
        goto LABEL_40;
      case 3:
        OUTLINED_FUNCTION_196_0();
        sub_27534D608();
        OUTLINED_FUNCTION_32_1();
        if (v59._object)
        {
          goto LABEL_37;
        }

        v32 = OUTLINED_FUNCTION_218_0();
        memcpy(v32, v33, 0x191uLL);
        sub_27534D65C(v62);
        goto LABEL_40;
      case 4:
        OUTLINED_FUNCTION_196_0();
        sub_27534D810();
        OUTLINED_FUNCTION_32_1();
        if (v59._object)
        {
          goto LABEL_37;
        }

        v28 = OUTLINED_FUNCTION_218_0();
        memcpy(v28, v29, 0x1D0uLL);
        sub_27534D864(v62);
        goto LABEL_40;
      case 5:
        OUTLINED_FUNCTION_196_0();
        sub_27534D5A0();
        OUTLINED_FUNCTION_32_1();
        if (v59._object)
        {
          goto LABEL_37;
        }

        v38 = OUTLINED_FUNCTION_218_0();
        memcpy(v38, v39, 0x198uLL);
        sub_27534D5F4(v62);
        goto LABEL_40;
      case 6:
        OUTLINED_FUNCTION_196_0();
        sub_27534D7A8();
        OUTLINED_FUNCTION_32_1();
        if (v59._object)
        {
          goto LABEL_37;
        }

        v40 = OUTLINED_FUNCTION_218_0();
        memcpy(v40, v41, 0x1A8uLL);
        sub_27534D7FC(v62);
        goto LABEL_40;
      case 7:
        OUTLINED_FUNCTION_196_0();
        sub_27534D538();
        OUTLINED_FUNCTION_32_1();
        if (v59._object)
        {
          goto LABEL_35;
        }

        v34 = OUTLINED_FUNCTION_218_0();
        memcpy(v34, v35, 0x1A0uLL);
        sub_27534D58C(v62);
        goto LABEL_40;
      case 8:
        OUTLINED_FUNCTION_196_0();
        sub_27534D740();
        OUTLINED_FUNCTION_32_1();
        if (v59._object)
        {
          goto LABEL_37;
        }

        v50 = OUTLINED_FUNCTION_218_0();
        memcpy(v50, v51, 0x1E8uLL);
        sub_27534D794(v62);
        goto LABEL_40;
      case 9:
        OUTLINED_FUNCTION_196_0();
        sub_27534D6D8();
        OUTLINED_FUNCTION_32_1();
        if (v59._object)
        {
          goto LABEL_37;
        }

        v62[0] = v61[0];
        v62[1] = v61[1];
        v62[2] = v61[2];
        v62[3] = v61[3];
        sub_27534D72C(v62);
        goto LABEL_40;
      case 10:
        OUTLINED_FUNCTION_196_0();
        sub_27534D4D0();
        OUTLINED_FUNCTION_32_1();
        if (v59._object)
        {
          goto LABEL_35;
        }

        v48 = OUTLINED_FUNCTION_218_0();
        memcpy(v48, v49, 0x68uLL);
        sub_27534D524(v62);
        goto LABEL_40;
      case 11:
        OUTLINED_FUNCTION_196_0();
        sub_27534D468();
        OUTLINED_FUNCTION_32_1();
        if (v59._object)
        {
LABEL_35:
          v42 = *(v16 + 8);
          v43 = OUTLINED_FUNCTION_294();
          v44(v43);
          __swift_destroy_boxed_opaque_existential_1(v2);
          LOBYTE(v18) = 1;
          goto LABEL_5;
        }

        v26 = OUTLINED_FUNCTION_218_0();
        memcpy(v26, v27, 0x228uLL);
        sub_27534D4BC(v62);
LABEL_40:
        memcpy(v64, v62, 0x2F9uLL);
        nullsub_1(v64);
        OUTLINED_FUNCTION_425(v65);
        sub_27534B488(v65, qword_2809C1498, &type metadata for MediaAPI.Attributes);
        v25 = v64;
        goto LABEL_41;
      case 12:
        goto LABEL_15;
      default:
        OUTLINED_FUNCTION_196_0();
        sub_275316E50();
        OUTLINED_FUNCTION_164_0();
        OUTLINED_FUNCTION_58();
        sub_2753B75B8();
        if (!v59._object)
        {
          memcpy(v61, v65, 0x2F9uLL);
          sub_27534D8E0(v61);
          v23 = OUTLINED_FUNCTION_218_0();
          memcpy(v23, v24, 0x2F9uLL);
          nullsub_1(v62);
          OUTLINED_FUNCTION_425(v64);
          sub_27534B488(v64, qword_2809C1498, &type metadata for MediaAPI.Attributes);
          v25 = v62;
          goto LABEL_41;
        }

LABEL_37:
        v45 = *(v16 + 8);
        v46 = OUTLINED_FUNCTION_294();
        v47(v46);
        v17 = 1;
        v18 = 1;
        break;
    }

LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v70);
    if (v17)
    {
LABEL_5:

      if ((v18 & 1) == 0)
      {
LABEL_7:
        OUTLINED_FUNCTION_425(v65);
        sub_27534B488(v65, qword_2809C1498, &type metadata for MediaAPI.Attributes);
        goto LABEL_8;
      }
    }

    else if (!v18)
    {
      goto LABEL_7;
    }

    goto LABEL_7;
  }

LABEL_15:
  OUTLINED_FUNCTION_425(v65);
  sub_27534B488(v65, qword_2809C1498, &type metadata for MediaAPI.Attributes);
  v25 = v69;
LABEL_41:
  memcpy(v68, v25, sizeof(v68));
  LOBYTE(v65[0]) = 3;
  OUTLINED_FUNCTION_452();
  if (sub_2753B75D8())
  {
    sub_27534D2FC();
    v64[0] = 3;
    sub_27534D364();
    sub_2753B75B8();
    v54 = OUTLINED_FUNCTION_262();
    v55(v54);
    v56 = *&v65[0];
  }

  else
  {
    v52 = OUTLINED_FUNCTION_262();
    v53(v52);
    v56 = 0;
  }

  *v64 = v19;
  *&v64[8] = v21;
  *&v64[16] = v59;
  *&v64[40] = 0;
  *&v64[32] = 0;
  OUTLINED_FUNCTION_425(&v64[48]);
  OUTLINED_FUNCTION_445();
  *&v64[812] = v57;
  *&v64[816] = v56;
  memcpy(v60, v64, 0x338uLL);
  sub_275329100(v64, v65);
  __swift_destroy_boxed_opaque_existential_1(v70);
  *&v65[0] = v19;
  *(&v65[0] + 1) = v21;
  v65[1] = v59;
  v65[2] = 0uLL;
  OUTLINED_FUNCTION_425(&v65[3]);
  OUTLINED_FUNCTION_445();
  v66 = v58;
  v67 = v56;
  sub_275315F74(v65);
LABEL_8:
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.Resource.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_221_0();
  sub_27534DC8C(0, v4, v5, v6, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_70_2();
  v13 = v0[1];
  v28 = v0[2];
  v29 = *v0;
  v27 = v0[3];
  memcpy(v33, v0 + 6, sizeof(v33));
  v26 = v0[102];
  v15 = *(v3 + 24);
  v14 = *(v3 + 32);
  v16 = OUTLINED_FUNCTION_434();
  OUTLINED_FUNCTION_67_0(v16, v17);
  sub_27534D260();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_340();
  sub_2753B7808();
  v32[0] = 0;
  sub_2753B7658();
  if (!v1)
  {
    OUTLINED_FUNCTION_77();
    sub_2753B7658();
    memcpy(v32, v33, 0x2F9uLL);
    if (sub_275315FC8(v32) != 1)
    {
      memcpy(v31, v32, 0x2F9uLL);
      v18 = sub_27531603C(v31);
      v19 = sub_275316098(v31);
      switch(v18)
      {
        case 1:
          memcpy(v30, v19, 0x248uLL);
          OUTLINED_FUNCTION_197_0();
          sub_275329D6C();
          break;
        case 2:
          memcpy(v30, v19, 0x1D0uLL);
          OUTLINED_FUNCTION_197_0();
          sub_275329D18();
          break;
        case 3:
          memcpy(v30, v19, 0x1A8uLL);
          OUTLINED_FUNCTION_197_0();
          sub_275329CC4();
          break;
        case 4:
          memcpy(v30, v19, 0x1E8uLL);
          OUTLINED_FUNCTION_197_0();
          sub_275329C70();
          break;
        case 5:
          v20 = *v19;
          v21 = v19[1];
          v22 = v19[3];
          v30[2] = v19[2];
          v30[3] = v22;
          v30[0] = v20;
          v30[1] = v21;
          OUTLINED_FUNCTION_197_0();
          sub_27534DA64();
          break;
        case 6:
          memcpy(v30, v19, 0x260uLL);
          OUTLINED_FUNCTION_197_0();
          sub_275329C1C();
          break;
        case 7:
          memcpy(v30, v19, 0x191uLL);
          OUTLINED_FUNCTION_197_0();
          sub_275329BC8();
          break;
        case 8:
          memcpy(v30, v19, 0x198uLL);
          OUTLINED_FUNCTION_197_0();
          sub_275329B74();
          break;
        case 9:
          memcpy(v30, v19, 0x1A0uLL);
          OUTLINED_FUNCTION_197_0();
          sub_27532982C();
          break;
        case 10:
          memcpy(v30, v19, 0x68uLL);
          OUTLINED_FUNCTION_197_0();
          sub_27534DA10();
          break;
        case 11:
          memcpy(v30, v19, 0x228uLL);
          OUTLINED_FUNCTION_197_0();
          sub_27534D9BC();
          break;
        default:
          memcpy(v30, v19, 0x2F9uLL);
          OUTLINED_FUNCTION_197_0();
          sub_2753299DC();
          break;
      }

      sub_2753B7698();
    }

    if (v26)
    {
      v31[0] = v26;
      LOBYTE(v30[0]) = 3;
      sub_27534DB84(0, &qword_2809C2218);
      sub_27534D8F0(&unk_2809C2298);
      OUTLINED_FUNCTION_364();
      sub_2753B7698();
    }
  }

  v23 = *(v9 + 8);
  v24 = OUTLINED_FUNCTION_193_0();
  v25(v24);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.ResourceResponse.data.setter()
{
  result = OUTLINED_FUNCTION_431();
  *v1 = v0;
  return result;
}

uint64_t MediaAPI.ResourceResponse.resources.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_27534A7C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xE900000000000073)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_27534A898(char a1)
{
  sub_2753B7798();
  MEMORY[0x277C76A80](a1 & 1);
  return sub_2753B77D8();
}

uint64_t sub_27534A8E0(char a1)
{
  if (a1)
  {
    return 0x656372756F736572;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_27534A91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27534A7C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27534A944(uint64_t a1)
{
  v2 = sub_27534DAB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27534A980(uint64_t a1)
{
  v2 = sub_27534DAB8();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.ResourceResponse.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_439();
  OUTLINED_FUNCTION_208_0();
  sub_27534DC8C(0, v2, v3, &type metadata for MediaAPI.ResourceResponse.CodingKeys, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_21();
  v8 = *v0;
  v18 = v0[1];
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = OUTLINED_FUNCTION_381();
  OUTLINED_FUNCTION_67_0(v11, v12);
  sub_27534DAB8();
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_455();
  OUTLINED_FUNCTION_323();
  sub_2753B7808();
  OUTLINED_FUNCTION_456();
  OUTLINED_FUNCTION_0_5();
  sub_27534D210(0, v13, v14, v15);
  sub_275329A84();
  OUTLINED_FUNCTION_123_2();
  sub_2753B7698();

  if (!v19)
  {
    OUTLINED_FUNCTION_84_1();
    sub_27534DB0C();
    sub_27534DBDC();
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_58();
    sub_2753B7638();
  }

  v16 = OUTLINED_FUNCTION_173_0();
  v17(v16);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.ResourceResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_326();
  v29 = v12;
  OUTLINED_FUNCTION_208_0();
  OUTLINED_FUNCTION_317(v13, v14, v15, v16, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_65_1();
  sub_27534DAB8();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v23, v24, v25);
    sub_27534D174();
    OUTLINED_FUNCTION_82_2();
    sub_2753B75B8();
    sub_27534DB0C();
    sub_27534DCF4();
    OUTLINED_FUNCTION_82_2();
    sub_2753B7558();
    v26 = *(v19 + 8);
    v27 = OUTLINED_FUNCTION_71();
    v28(v27);
    *v29 = a10;
    v29[1] = a10;

    OUTLINED_FUNCTION_330();
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_61();
}

unint64_t sub_27534AD20()
{
  result = qword_2809C1D90;
  if (!qword_2809C1D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1D90);
  }

  return result;
}

unint64_t sub_27534ADDC()
{
  result = qword_2809C1DA8;
  if (!qword_2809C1DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1DA8);
  }

  return result;
}

unint64_t sub_27534AE30()
{
  result = qword_2809C1DC0;
  if (!qword_2809C1DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1DC0);
  }

  return result;
}

unint64_t sub_27534AE84()
{
  result = qword_2809C1DD0;
  if (!qword_2809C1DD0)
  {
    sub_27534D210(255, &qword_2809C1DC8, &type metadata for MediaAPI.SpatialOffsets.Offset, MEMORY[0x277D83940]);
    sub_27534AF20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1DD0);
  }

  return result;
}

unint64_t sub_27534AF20()
{
  result = qword_2809C1DD8;
  if (!qword_2809C1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1DD8);
  }

  return result;
}

unint64_t sub_27534AF74()
{
  result = qword_2809C1DE8;
  if (!qword_2809C1DE8)
  {
    sub_27534D210(255, &qword_2809C1DC8, &type metadata for MediaAPI.SpatialOffsets.Offset, MEMORY[0x277D83940]);
    sub_27534B010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1DE8);
  }

  return result;
}

unint64_t sub_27534B010()
{
  result = qword_2809C1DF0;
  if (!qword_2809C1DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1DF0);
  }

  return result;
}

unint64_t sub_27534B094()
{
  result = qword_2809C1E00;
  if (!qword_2809C1E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E00);
  }

  return result;
}

unint64_t sub_27534B0E8()
{
  result = qword_2809C1E08;
  if (!qword_2809C1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E08);
  }

  return result;
}

unint64_t sub_27534B13C()
{
  result = qword_2809C1E10;
  if (!qword_2809C1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E10);
  }

  return result;
}

unint64_t sub_27534B190()
{
  result = qword_2809C1E20;
  if (!qword_2809C1E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E20);
  }

  return result;
}

unint64_t sub_27534B1E4()
{
  result = qword_2809C1E28;
  if (!qword_2809C1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E28);
  }

  return result;
}

unint64_t sub_27534B2A0()
{
  result = qword_2809C1E40;
  if (!qword_2809C1E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E40);
  }

  return result;
}

unint64_t sub_27534B2F4()
{
  result = qword_2809C1E48;
  if (!qword_2809C1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E48);
  }

  return result;
}

unint64_t sub_27534B350()
{
  result = qword_2809C1E58;
  if (!qword_2809C1E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E58);
  }

  return result;
}

uint64_t sub_27534B40C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_27534D210(0, a3, a4, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 16);
  v7 = OUTLINED_FUNCTION_27();
  v8(v7);
  return a2;
}

uint64_t sub_27534B488(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_27534D210(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_27534B4F8()
{
  result = qword_2809C1E70;
  if (!qword_2809C1E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E70);
  }

  return result;
}

unint64_t sub_27534B54C()
{
  result = qword_2809C1E80;
  if (!qword_2809C1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E80);
  }

  return result;
}

unint64_t sub_27534B5A0()
{
  result = qword_2809C1E90;
  if (!qword_2809C1E90)
  {
    sub_27534D210(255, &qword_2809C1E88, &type metadata for MediaAPI.Preview, MEMORY[0x277D83940]);
    sub_27534B63C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E90);
  }

  return result;
}

unint64_t sub_27534B63C()
{
  result = qword_2809C1E98;
  if (!qword_2809C1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E98);
  }

  return result;
}

unint64_t sub_27534B6A0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_349(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(255, v3, v4, v5);
    result = OUTLINED_FUNCTION_464();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27534B700(uint64_t a1)
{
  result = OUTLINED_FUNCTION_349(a1);
  if (!result)
  {
    sub_27534DB84(255, &qword_2809C0C60);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27534B76C()
{
  result = qword_2809C1EB0;
  if (!qword_2809C1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1EB0);
  }

  return result;
}

unint64_t sub_27534B7C0()
{
  result = qword_2809C1EB8;
  if (!qword_2809C1EB8)
  {
    sub_27534D210(255, &qword_2809C1E88, &type metadata for MediaAPI.Preview, MEMORY[0x277D83940]);
    sub_27534B85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1EB8);
  }

  return result;
}

unint64_t sub_27534B85C()
{
  result = qword_2809C1EC0;
  if (!qword_2809C1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1EC0);
  }

  return result;
}

unint64_t sub_27534B8B0()
{
  result = qword_2809C1EC8;
  if (!qword_2809C1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1EC8);
  }

  return result;
}

unint64_t sub_27534B904()
{
  result = qword_2809C1ED8;
  if (!qword_2809C1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1ED8);
  }

  return result;
}

unint64_t sub_27534B9C0()
{
  result = qword_2809C1EF0;
  if (!qword_2809C1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1EF0);
  }

  return result;
}

unint64_t sub_27534BA7C()
{
  result = qword_2809C1F08;
  if (!qword_2809C1F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1F08);
  }

  return result;
}

unint64_t sub_27534BB38()
{
  result = qword_2809C1F20;
  if (!qword_2809C1F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1F20);
  }

  return result;
}

unint64_t sub_27534BBF4()
{
  result = qword_2809C1F38;
  if (!qword_2809C1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1F38);
  }

  return result;
}

unint64_t sub_27534BCB0()
{
  result = qword_2809C1F50;
  if (!qword_2809C1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1F50);
  }

  return result;
}

unint64_t sub_27534BD6C()
{
  result = qword_2809C1F68;
  if (!qword_2809C1F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1F68);
  }

  return result;
}

unint64_t sub_27534BE28()
{
  result = qword_2809C1F80;
  if (!qword_2809C1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1F80);
  }

  return result;
}