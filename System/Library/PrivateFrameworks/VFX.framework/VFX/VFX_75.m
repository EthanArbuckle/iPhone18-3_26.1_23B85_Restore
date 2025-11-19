void sub_1AF6E513C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6974B48]);
  v1 = sub_1AFDFC048();
  v2 = [v0 initWithURL_];

  v3 = [v2 count];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v10 = xmmword_1AFE431C0;
    do
    {
      v6 = v5 + 1;
      v7 = [v2 objectAtIndex_];
      sub_1AF6E53A0(0, &qword_1ED722EE0);
      v8 = swift_allocObject();
      *(v8 + 16) = v10;
      *(v8 + 56) = sub_1AF0D4478(0, &unk_1EB63F590);
      *(v8 + 32) = v7;
      v9 = v7;
      sub_1AFDFF258();

      v5 = v6;
    }

    while (v4 != v6);
  }
}

unint64_t sub_1AF6E529C()
{
  result = qword_1EB63D700;
  if (!qword_1EB63D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D700);
  }

  return result;
}

void sub_1AF6E53A0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1AFDFEA18();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1AF6E53EC()
{
  if (!qword_1EB63D788)
  {
    type metadata accessor for vfx_vertex_attribute(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB63D788);
    }
  }
}

unint64_t destroy for MDLImporter.Error(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

__n128 sub_1AF6E5494(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u64[1];
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    *a1 = *a2;
  }

  else
  {
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u64[1] = v2;
  }

  return result;
}

void *assignWithCopy for MDLImporter.Error(void *a1, void *a2)
{
  v3 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v3 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];

      return a1;
    }

    v5 = *a2;
LABEL_8:
    *a1 = v5;
    return a1;
  }

  if (v3 < 0xFFFFFFFF)
  {

    v5 = *a2;
    goto LABEL_8;
  }

  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

_OWORD *assignWithTake for MDLImporter.Error(_OWORD *result, uint64_t a2)
{
  if (*(result + 1) < 0xFFFFFFFFuLL)
  {
    *result = *a2;
  }

  else
  {
    v2 = *(a2 + 8);
    if (v2 < 0xFFFFFFFF)
    {
      v3 = result;

      *v3 = *a2;
    }

    else
    {
      *result = *a2;
      *(result + 1) = v2;
      v3 = result;
    }

    return v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MDLImporter.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MDLImporter.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AF6E56B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1AF6E56CC(void *result, int a2)
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

uint64_t sub_1AF6E571C(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_1AF6ECC88(a1, a2);
  if (result)
  {
    v6 = result;
    type metadata accessor for VFXCoreImporter.VFXImporterContext();
    inited = swift_initStackObject();
    v8 = MEMORY[0x1E69E7CC0];
    inited[2] = sub_1AF43C0A8(MEMORY[0x1E69E7CC0]);
    inited[3] = sub_1AF43C198(v8);
    inited[4] = sub_1AF43C288(v8);
    inited[5] = sub_1AF43C398(v8);
    inited[6] = v8;
    inited[7] = 0;
    inited[8] = v8;
    v17 = inited;
    sub_1AF6E8CE0(v6, a3, a1, &v17);
    if (v9 == 0xFFFFFFFF || (v10 = v9, , v11 = sub_1AF3CA4E8(v10), v13 = v12, , (v13 & 1) != 0))
    {
    }

    else
    {
      v14 = sub_1AF3CA3E4(v11);
      v16 = v15;

      if (v16)
      {
        return v14;
      }
    }

    return 0;
  }

  return result;
}

void *sub_1AF6E5844(void *a1, uint64_t a2, void *a3)
{
  v411 = a3;
  *(&v458[1] + 7) = *MEMORY[0x1E69E9840];
  sub_1AF0D4E74();
  v417 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v416 = &v392 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v415 = sub_1AFDFC298();
  v8 = *(v415 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v415, v9).n128_u64[0];
  v414 = &v392 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v409 = a1;
  v12 = [a1 meshElements];
  v423 = sub_1AF0D4478(0, &qword_1EB63D7B0);
  v13 = sub_1AFDFD418();

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = &selRef_numberWithBool_;
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_12:

    type metadata accessor for Mesh();
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E7CC0];
    v22[4] = MEMORY[0x1E69E7CC0];
    v22[5] = v23;
    v22[7] = 0;
    v22[8] = 0;
    v24 = v409;
    v25 = sub_1AF6ED424(v409);
    v424 = v26;
    v22[2] = v25;
    v22[3] = v27;
    v412 = v22;
    v28 = [v24 meshSourcesForSemantic_];
    sub_1AF0D4478(0, &qword_1EB638210);
    v29 = sub_1AFDFD418();

    if (v29 >> 62)
    {
      if (sub_1AFDFE108())
      {
        goto LABEL_14;
      }
    }

    else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      if ((v29 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1B2719C70](0, v29);
      }

      else
      {
        v30 = *(v29 + 32);
      }

      v31 = v30;

      v32 = [v31 vectorCount];

LABEL_19:
      v412[6] = v32;
      v33 = *(v424 + 16);
      v34 = &selRef_antialiasingMode;
      if (v33)
      {
        v422 = v8;
        v35 = v424 + 48;
        v427 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v36 = *(v35 - 8);
          v37 = *(v35 - 16);

          v38 = [v37 v34[437]];
          v39 = sub_1AFDFC1B8();
          v41 = v40;

          v42 = v41 >> 62;
          if ((v41 >> 62) > 1)
          {
            if (v42 != 2)
            {

              sub_1AF439ED8(v39, v41);
              goto LABEL_22;
            }

            v426 = v33;
            v44 = v37;
            v45 = v34;
            v46 = v36;
            v48 = *(v39 + 16);
            v47 = *(v39 + 24);
            sub_1AF439ED8(v39, v41);
            v43 = v47 - v48;
            v36 = v46;
            v34 = v45;
            v37 = v44;
            v33 = v426;
            if (v43)
            {
              goto LABEL_31;
            }
          }

          else if (v42)
          {
            sub_1AF439ED8(v39, v41);
            v43 = (0xFFFFFFFF00000001 * v39) >> 32;
            if (v43)
            {
LABEL_31:
              v49 = [v37 v34[437]];
              v50 = sub_1AFDFC1B8();
              v52 = v51;

              v53 = v52 >> 62;
              if ((v52 >> 62) > 1)
              {
                if (v53 == 2)
                {
                  v425 = *(v50 + 16);
                  v426 = v43;
                  v54 = sub_1AFDFBDB8();
                  if (v54)
                  {
                    v54 = v54 + v425 - sub_1AFDFBDE8();
                  }

                  sub_1AFDFBDD8();
                  v55 = v54;
                  v43 = v426;
                  v56 = [v411 newBufferWithBytes:v55 length:v426 options:0];
                }

                else
                {
                  *(&v447 + 6) = 0;
                  *&v447 = 0;
LABEL_44:
                  v56 = [v411 newBufferWithBytes:&v447 length:v43 options:0];
                }

                v60 = v56;
                sub_1AF439ED8(v50, v52);
                if (!v60)
                {
                  goto LABEL_48;
                }

                v34 = &selRef_antialiasingMode;
LABEL_47:
                v61 = sub_1AFDFCEC8();

                [v60 setLabel_];
              }

              else
              {
                if (!v53)
                {
                  *&v447 = v50;
                  WORD4(v447) = v52;
                  BYTE10(v447) = BYTE2(v52);
                  BYTE11(v447) = BYTE3(v52);
                  BYTE12(v447) = BYTE4(v52);
                  BYTE13(v447) = BYTE5(v52);
                  goto LABEL_44;
                }

                v426 = v36;
                v57 = v43;
                v58 = sub_1AFDFBDB8();
                if (v58)
                {
                  v58 = v58 + v50 - sub_1AFDFBDE8();
                }

                sub_1AFDFBDD8();
                v59 = v58;
                v43 = v57;
                v60 = [v411 newBufferWithBytes:v59 length:v57 options:0];
                sub_1AF439ED8(v50, v52);
                if (v60)
                {
                  v34 = &selRef_antialiasingMode;
                  goto LABEL_47;
                }

LABEL_48:

                v34 = &selRef_antialiasingMode;
              }

              swift_unknownObjectRetain();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v427 = sub_1AF422D74(0, *(v427 + 2) + 1, 1, v427);
              }

              v63 = *(v427 + 2);
              v62 = *(v427 + 3);
              if (v63 >= v62 >> 1)
              {
                v427 = sub_1AF422D74(v62 > 1, v63 + 1, 1, v427);
              }

              v64 = v427;
              *(v427 + 2) = v63 + 1;
              v65 = &v64[40 * v63];
              *(v65 + 4) = v60;
              *(v65 + 5) = 0;
              *(v65 + 6) = v43;
              *(v65 + 7) = 0;
              v65[64] = 1;
              swift_unknownObjectRelease();
              v412[4] = v64;
              goto LABEL_22;
            }
          }

          else
          {
            sub_1AF439ED8(v39, v41);
            v43 = BYTE6(v41);
            if (BYTE6(v41))
            {
              goto LABEL_31;
            }
          }

LABEL_22:
          v35 += 24;
          if (!--v33)
          {

            v15 = &selRef_numberWithBool_;
            v8 = v422;
            goto LABEL_56;
          }
        }
      }

LABEL_56:
      v66 = [v409 meshElements];
      v67 = sub_1AFDFD418();

      if (v67 >> 62)
      {
        v68 = sub_1AFDFE108();
        if (v68)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v68)
        {
LABEL_58:
          v69 = 0;
          v410 = "unsupported element data type ";
          v413 = (v8 + 32);
          v422 = v67 & 0xC000000000000001;
          v423 = &v447 + 8;
          v407 = 0;
          v408 = 0x80000001AFF305B0;
          v406 = &v431;
          v421 = v68 - 1;
          v398 = &v429;
          v419 = xmmword_1AFE72000;
          v418 = xmmword_1AFE201A0;
          v420 = v67;
          while (1)
          {
            while (1)
            {
              v70 = v422 ? MEMORY[0x1B2719C70](v69, v67) : *(v67 + 8 * v69 + 32);
              v71 = v70;
              v72 = [v70 v34[437]];
              v427 = sub_1AFDFC1B8();
              v74 = v73;

              v425 = v69;
              v426 = v71;
              v424 = v74;
              if ((v74 >> 62) > 1)
              {
                break;
              }

              if (v74 >> 62 == 1)
              {
                v75 = sub_1AFDFBDB8();
                if (v75)
                {
                  v76 = v75 + v427 - sub_1AFDFBDE8();
                }

                else
                {
                  v76 = 0;
                }

                sub_1AFDFBDD8();
                v80 = [v71 v34[437]];
                v81 = sub_1AFDFC1B8();
                v83 = v82;

                v84 = v83 >> 62;
                if ((v83 >> 62) > 1)
                {
                  if (v84 != 2)
                  {
                    goto LABEL_151;
                  }

                  v90 = *(v81 + 16);
                  v89 = *(v81 + 24);
                  sub_1AF439ED8(v81, v83);
                  v85 = v89 - v90;
                  v71 = v426;
                  if (!v85)
                  {
LABEL_142:

                    sub_1AF439ED8(v427, v424);
                    v136 = 0;
                    v137 = 0;
                    v138 = 0;
                    goto LABEL_152;
                  }
                }

                else if (v84)
                {
                  sub_1AF439ED8(v81, v83);
                  v85 = (0xFFFFFFFF00000001 * v81) >> 32;
                  if (!v85)
                  {
                    goto LABEL_142;
                  }
                }

                else
                {
                  sub_1AF439ED8(v81, v83);
                  v85 = BYTE6(v83);
                  if (!BYTE6(v83))
                  {
                    goto LABEL_142;
                  }
                }

                v93 = [v71 bytesPerIndex];
                if (v93 == 4)
                {
                  v95 = 0;
                  v94 = 1;
                }

                else if (v93 == 2)
                {
                  v95 = 0;
                  v94 = 0;
                }

                else
                {
                  if (v93 != 1)
                  {
                    goto LABEL_96;
                  }

                  v94 = 0;
                  v95 = 1;
                }

                v100 = [v71 v15[170]];
                if (v100 > 1)
                {
                  if (v100 == 3)
                  {
                    v101 = [v71 primitiveCount];
                    if (v95)
                    {
                      goto LABEL_106;
                    }

LABEL_155:
                    v151 = [v411 newBufferWithBytes:v76 length:v85 options:0];
                    if (!v151)
                    {
                      goto LABEL_216;
                    }

                    goto LABEL_156;
                  }

                  if (v100 == 2)
                  {
                    v101 = 2 * [v71 primitiveCount];
                    if (!v95)
                    {
                      goto LABEL_155;
                    }

LABEL_106:
                    v102 = [v71 v34[437]];
                    v103 = sub_1AFDFC1B8();
                    v105 = v104;

                    v106 = v105 >> 62;
                    if ((v105 >> 62) > 1)
                    {
                      if (v106 != 2)
                      {
                        sub_1AF439ED8(v103, v105);
                        v108 = MEMORY[0x1E69E7CC0];
                        goto LABEL_191;
                      }

                      v162 = *(v103 + 16);
                      v161 = *(v103 + 24);
                      sub_1AF439ED8(v103, v105);
                      v107 = v161 - v162;
                      v71 = v426;
                      if (v107 >= 1)
                      {
                        goto LABEL_185;
                      }
                    }

                    else
                    {
                      if (!v106)
                      {
                        sub_1AF439ED8(v103, v105);
                        v107 = BYTE6(v105);
                        if (!BYTE6(v105))
                        {
                          goto LABEL_109;
                        }

LABEL_185:
                        v108 = sub_1AFDFD488();
                        *(v108 + 16) = v107;
LABEL_186:
                        bzero((v108 + 32), 2 * v107);
LABEL_191:
                        v169 = [v71 v34[437]];
                        v170 = sub_1AFDFC1B8();
                        v172 = v171;

                        v173 = v172;
                        v174 = v172 >> 62;
                        if ((v172 >> 62) > 1)
                        {
                          if (v174 != 2)
                          {
                            sub_1AF439ED8(v170, v172);
                            goto LABEL_215;
                          }

                          v177 = *(v170 + 16);
                          v176 = *(v170 + 24);
                          sub_1AF439ED8(v170, v173);
                          v175 = v176 - v177;
                          if (v176 != v177)
                          {
                            goto LABEL_207;
                          }
                        }

                        else
                        {
                          if (v174)
                          {
                            sub_1AF439ED8(v170, v172);
                            v175 = (0xFFFFFFFF00000001 * v170) >> 32;
                            if (!v175)
                            {
                              goto LABEL_215;
                            }
                          }

                          else
                          {
                            sub_1AF439ED8(v170, v172);
                            v175 = BYTE6(v172);
                            if (!BYTE6(v172))
                            {
                              goto LABEL_215;
                            }
                          }

LABEL_207:
                          if (v175 < 8 || v108 + 32 < v76 + v175 && v76 < v108 + 2 * v175 + 32)
                          {
                            v187 = 0;
                            goto LABEL_211;
                          }

                          if (v175 >= 0x20)
                          {
                            v187 = v175 & 0xFFFFFFFFFFFFFFE0;
                            v257 = (v76 + 16);
                            v258 = (v108 + 64);
                            v259 = v175 & 0xFFFFFFFFFFFFFFE0;
                            do
                            {
                              v260 = *v257[-2].i8;
                              v261 = vmovl_u8(*v257);
                              v262 = vmovl_high_u8(*v257->i8);
                              v258[-2] = vmovl_u8(*v260.i8);
                              v258[-1] = vmovl_high_u8(v260);
                              *v258 = v261;
                              v258[1] = v262;
                              v258 += 4;
                              v257 += 4;
                              v259 -= 32;
                            }

                            while (v259);
                            if (v175 != v187)
                            {
                              if ((v175 & 0x18) == 0)
                              {
                                goto LABEL_211;
                              }

                              goto LABEL_289;
                            }
                          }

                          else
                          {
                            v187 = 0;
LABEL_289:
                            v263 = v187;
                            v187 = v175 & 0xFFFFFFFFFFFFFFF8;
                            v264 = (v76 + v263);
                            v265 = (v108 + 2 * v263 + 32);
                            v266 = v263 - (v175 & 0xFFFFFFFFFFFFFFF8);
                            do
                            {
                              v267 = *v264++;
                              *v265++ = vmovl_u8(v267);
                              v266 += 8;
                            }

                            while (v266);
                            if (v175 != v187)
                            {
LABEL_211:
                              v188 = v175 - v187;
                              v189 = (v108 + 2 * v187 + 32);
                              v190 = (v76 + v187);
                              do
                              {
                                v191 = *v190++;
                                *v189++ = v191;
                                --v188;
                              }

                              while (v188);
                            }
                          }
                        }

LABEL_215:
                        v85 *= 2;
                        v151 = [v411 newBufferWithBytes:v108 + 32 length:v85 options:0];

                        v94 = 0;
                        if (!v151)
                        {
LABEL_216:
                          v154 = 0;
                          if ((v94 & 1) == 0)
                          {
LABEL_217:
                            v155 = 2;
                            goto LABEL_218;
                          }

LABEL_157:
                          v155 = 4;
LABEL_218:
                          [v409 boundingBox];
                          v193 = v192;
                          v193.i32[3] = v401.i32[3];
                          v194.i32[3] = v402.i32[3];
                          v401 = v193;
                          v402 = v194;
                          v195 = v193;
                          v195.i32[3] = 1.0;
                          v194.i32[3] = 1.0;
                          v196 = v423;
                          *(v423 + 1) = 0;
                          v196[2] = 0;
                          v197.i64[0] = 0x3F0000003F000000;
                          v197.i64[1] = 0x3F0000003F000000;
                          *v196 = 0;
                          *&v447 = 3;
                          v449 = v154;
                          v450 = v85;
                          LOBYTE(v451) = 0;
                          *(&v451 + 1) = *(&v429 + 1);
                          DWORD1(v451) = HIDWORD(v429);
                          *(&v451 + 1) = v101;
                          *&v452 = v155;
                          *(&v452 + 1) = MEMORY[0x1E69E7CC0];
                          v453 = 0u;
                          v454 = 0u;
                          LOBYTE(v455) = 0;
                          *(&v455 + 1) = v458[0];
                          *(&v455 + 1) = *(v458 + 7);
                          v403 = vmulq_f32(vsubq_f32(v194, v195), v197);
                          v404 = vmulq_f32(vaddq_f32(v194, v195), v197);
                          v456 = v404;
                          v457 = v403;
                          v198 = v412[5];
                          sub_1AF6E52F0(&v447, &v430);
                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          v405 = v155;
                          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                          {
                            v198 = sub_1AF422C4C(0, *(v198 + 2) + 1, 1, v198);
                          }

                          v201 = *(v198 + 2);
                          v200 = *(v198 + 3);
                          if (v201 >= v200 >> 1)
                          {
                            v198 = sub_1AF422C4C(v200 > 1, v201 + 1, 1, v198);
                          }

                          swift_unknownObjectRelease_n();
                          *(v198 + 2) = v201 + 1;
                          v202 = &v198[176 * v201];
                          v203 = v447;
                          v204 = v449;
                          *(v202 + 3) = v448;
                          *(v202 + 4) = v204;
                          *(v202 + 2) = v203;
                          v205 = v450;
                          v206 = v451;
                          v207 = v453;
                          *(v202 + 7) = v452;
                          *(v202 + 8) = v207;
                          *(v202 + 5) = v205;
                          *(v202 + 6) = v206;
                          v208 = v454;
                          v209 = v455;
                          v210 = v457;
                          *(v202 + 11) = v456;
                          *(v202 + 12) = v210;
                          *(v202 + 9) = v208;
                          *(v202 + 10) = v209;

                          sub_1AF439ED8(v427, v424);
                          v412[5] = v198;
                          v211 = v406;
                          v406[1] = 0;
                          v211[2] = 0;
                          *v211 = 0;
                          v430 = 3;
                          v432 = v154;
                          v433 = 0;
                          v434 = v85;
                          v435 = 0;
                          v436 = 0;
                          *v437 = *(&v429 + 1);
                          *&v437[3] = HIDWORD(v429);
                          v438 = v101;
                          goto LABEL_240;
                        }

LABEL_156:
                        *&v447 = 0x20746E656D656C65;
                        *(&v447 + 1) = 0xE800000000000000;
                        v430 = v407;
                        v152 = sub_1AFDFEA08();
                        MEMORY[0x1B2718AE0](v152);

                        v153 = sub_1AFDFCEC8();

                        [v151 setLabel_];

                        swift_unknownObjectRetain_n();
                        v154 = v151;
                        if ((v94 & 1) == 0)
                        {
                          goto LABEL_217;
                        }

                        goto LABEL_157;
                      }

                      sub_1AF439ED8(v103, v105);
                      v107 = (0xFFFFFFFF00000001 * v103) >> 32;
                      if (v107 >= 1)
                      {
                        goto LABEL_185;
                      }
                    }

LABEL_109:
                    v108 = MEMORY[0x1E69E7CC0];
                    if (v107)
                    {
                      goto LABEL_186;
                    }

                    goto LABEL_191;
                  }
                }

                else
                {
                  if (!v100)
                  {
                    v101 = 3 * [v71 primitiveCount];
                    if (v95)
                    {
                      goto LABEL_106;
                    }

                    goto LABEL_155;
                  }

                  if (v100 == 1)
                  {
                    v101 = [v71 primitiveCount] + 2;
                    if (!v95)
                    {
                      goto LABEL_155;
                    }

                    goto LABEL_106;
                  }
                }

                if (qword_1ED730EA0 != -1)
                {
                  swift_once();
                }

                v430 = 0;
                v431 = 0xE000000000000000;
                sub_1AFDFE218();
                MEMORY[0x1B2718AE0](0xD000000000000023, v410 | 0x8000000000000000);
                v428[0] = [v71 v15[170]];
                type metadata accessor for VFXMeshPrimitiveType(0);
                sub_1AFDFE458();
                v110 = v430;
                v109 = v431;
                v111 = sub_1AFDFDA08();
                if (qword_1ED731058 != -1)
                {
                  swift_once();
                }

                if (qword_1ED730E98 != -1)
                {
                  swift_once();
                }

                sub_1AF0D0CBC(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
                v112 = swift_allocObject();
                *(v112 + 16) = xmmword_1AFE431C0;
                *(v112 + 56) = MEMORY[0x1E69E6158];
                *(v112 + 64) = sub_1AF0D544C();
                *(v112 + 32) = v110;
                *(v112 + 40) = v109;

                sub_1AFDFC4C8();

                v113 = v414;
                sub_1AFDFC288();
                v114 = v416;
                v115 = v417[12];
                v116 = v417[16];
                v117 = &v416[v417[20]];
                (*v413)(v416, v113, v415);
                *(v114 + v115) = v111;
                *(v114 + v116) = 0;
                *v117 = v110;
                *(v117 + 1) = v109;
LABEL_140:

                sub_1AFDFC608();

                sub_1AF0D54A0(v114);

                sub_1AF439ED8(v427, v424);
                v135 = v423;
                *v423 = 0u;
                v135[1] = 0u;
                v135[2] = 0u;
                *(v135 + 41) = 0u;
                *(&v451 + 1) = *(&v429 + 1);
                DWORD1(v451) = HIDWORD(v429);
                *(&v451 + 1) = 0;
                *&v452 = 0;
                *&v447 = 3;
                *(&v452 + 1) = MEMORY[0x1E69E7CC0];
                v453 = 0u;
                v454 = 0u;
                LOBYTE(v455) = 0;
                *(&v455 + 1) = *(v458 + 7);
                *(&v455 + 1) = v458[0];
                v456 = v418;
                v457 = v419;
                sub_1AF6E534C(&v447);
                if (v421 == v425)
                {
                  goto LABEL_410;
                }

                v67 = v420;
                v69 = v425 + 1;
                v15 = &selRef_numberWithBool_;
                v34 = &selRef_antialiasingMode;
              }

              else
              {
                v428[0] = v427;
                LOWORD(v428[1]) = v74;
                BYTE2(v428[1]) = BYTE2(v74);
                BYTE3(v428[1]) = BYTE3(v74);
                BYTE4(v428[1]) = BYTE4(v74);
                BYTE5(v428[1]) = BYTE5(v74);
                v139 = [v71 v34[437]];
                v140 = sub_1AFDFC1B8();
                v142 = v141;

                v143 = v142 >> 62;
                if ((v142 >> 62) > 1)
                {
                  if (v143 != 2)
                  {
                    goto LABEL_182;
                  }

                  v166 = *(v140 + 16);
                  v165 = *(v140 + 24);
                  sub_1AF439ED8(v140, v142);
                  v144 = v165 - v166;
                  v71 = v426;
                  if (!v144)
                  {
                    goto LABEL_183;
                  }
                }

                else if (v143)
                {
                  sub_1AF439ED8(v140, v142);
                  v144 = (0xFFFFFFFF00000001 * v140) >> 32;
                  if (!v144)
                  {
                    goto LABEL_183;
                  }
                }

                else
                {
                  sub_1AF439ED8(v140, v142);
                  v144 = BYTE6(v142);
                  if (!BYTE6(v142))
                  {
                    goto LABEL_183;
                  }
                }

                v238 = [v71 bytesPerIndex];
                if (v238 == 4)
                {
                  v240 = 0;
                  v239 = 1;
                }

                else if (v238 == 2)
                {
                  v240 = 0;
                  v239 = 0;
                }

                else
                {
                  if (v238 != 1)
                  {
                    goto LABEL_252;
                  }

                  v239 = 0;
                  v240 = 1;
                }

                v245 = [v71 v15[170]];
                if (v245 > 1)
                {
                  if (v245 == 3)
                  {
                    v246 = [v71 primitiveCount];
                  }

                  else
                  {
                    if (v245 != 2)
                    {
                      goto LABEL_277;
                    }

                    v246 = 2 * [v71 primitiveCount];
                  }
                }

                else if (v245)
                {
                  if (v245 != 1)
                  {
                    goto LABEL_277;
                  }

                  v246 = [v71 primitiveCount] + 2;
                }

                else
                {
                  v246 = 3 * [v71 primitiveCount];
                }

                v405 = v246;
                if (!v240)
                {
                  v286 = [v411 newBufferWithBytes:v428 length:v144 options:0];
                  v404.i64[0] = v144;
                  if (!v286)
                  {
                    goto LABEL_352;
                  }

                  goto LABEL_308;
                }

                v279 = v144;
                v280 = [v71 v34[437]];
                v281 = sub_1AFDFC1B8();
                v283 = v282;

                v284 = v283 >> 62;
                if ((v283 >> 62) > 1)
                {
                  if (v284 != 2)
                  {
                    sub_1AF439ED8(v281, v283);
                    v303 = MEMORY[0x1E69E7CC0];
                    goto LABEL_331;
                  }

                  v290 = *(v281 + 16);
                  v289 = *(v281 + 24);
                  sub_1AF439ED8(v281, v283);
                  v285 = v289 - v290;
                  v71 = v426;
                }

                else if (v284)
                {
                  sub_1AF439ED8(v281, v283);
                  v285 = (0xFFFFFFFF00000001 * v281) >> 32;
                }

                else
                {
                  sub_1AF439ED8(v281, v283);
                  v285 = BYTE6(v283);
                }

                if (v285 < 1)
                {
                  v303 = MEMORY[0x1E69E7CC0];
                  if (!v285)
                  {
                    goto LABEL_331;
                  }
                }

                else
                {
                  v303 = sub_1AFDFD488();
                  *(v303 + 16) = v285;
                }

                bzero((v303 + 32), 2 * v285);
LABEL_331:
                v304 = [v71 v34[437]];
                v305 = sub_1AFDFC1B8();
                v307 = v306;

                v308 = v307 >> 62;
                if ((v307 >> 62) > 1)
                {
                  if (v308 != 2)
                  {
                    sub_1AF439ED8(v305, v307);
                    v313 = v279;
                    goto LABEL_351;
                  }

                  v311 = *(v305 + 16);
                  v310 = *(v305 + 24);
                  sub_1AF439ED8(v305, v307);
                  v309 = v310 - v311;
                }

                else if (v308)
                {
                  sub_1AF439ED8(v305, v307);
                  v309 = (0xFFFFFFFF00000001 * v305) >> 32;
                }

                else
                {
                  sub_1AF439ED8(v305, v307);
                  v309 = BYTE6(v307);
                }

                v313 = v279;
                if (!v309)
                {
                  goto LABEL_351;
                }

                if (v309 < 8 || v303 + 32 < v428 + v309 && v428 < v303 + 2 * v309 + 32)
                {
                  v314 = 0;
LABEL_347:
                  v315 = v309 - v314;
                  v316 = (v303 + 2 * v314 + 32);
                  v317 = v428 + v314;
                  do
                  {
                    v318 = *v317++;
                    *v316++ = v318;
                    --v315;
                  }

                  while (v315);
                  goto LABEL_351;
                }

                if (v309 >= 0x20)
                {
                  v314 = v309 & 0xFFFFFFFFFFFFFFE0;
                  v370 = (v303 + 64);
                  v371 = v309 & 0xFFFFFFFFFFFFFFE0;
                  v372 = v398;
                  do
                  {
                    v373 = *v372[-2].i8;
                    v374 = vmovl_u8(*v372);
                    v375 = vmovl_high_u8(*v372->i8);
                    v370[-2] = vmovl_u8(*v373.i8);
                    v370[-1] = vmovl_high_u8(v373);
                    *v370 = v374;
                    v370[1] = v375;
                    v370 += 4;
                    v372 += 4;
                    v371 -= 32;
                  }

                  while (v371);
                  if (v309 == v314)
                  {
                    goto LABEL_351;
                  }

                  if ((v309 & 0x18) == 0)
                  {
                    goto LABEL_347;
                  }
                }

                else
                {
                  v314 = 0;
                }

                v376 = v314;
                v314 = v309 & 0xFFFFFFFFFFFFFFF8;
                v377 = (v428 + v376);
                v378 = (v303 + 2 * v376 + 32);
                v379 = v376 - (v309 & 0xFFFFFFFFFFFFFFF8);
                do
                {
                  v380 = *v377++;
                  *v378++ = vmovl_u8(v380);
                  v379 += 8;
                }

                while (v379);
                if (v309 != v314)
                {
                  goto LABEL_347;
                }

LABEL_351:
                v144 = 2 * v313;
                v286 = [v411 newBufferWithBytes:v303 + 32 length:v144 options:0];

                v239 = 0;
                v404.i64[0] = v144;
                if (!v286)
                {
LABEL_352:
                  v136 = 0;
                  if ((v239 & 1) == 0)
                  {
                    goto LABEL_354;
                  }

                  v85 = 4;
                  goto LABEL_355;
                }

LABEL_308:
                *&v447 = 0x20746E656D656C65;
                *(&v447 + 1) = 0xE800000000000000;
                v430 = v407;
                v287 = sub_1AFDFEA08();
                MEMORY[0x1B2718AE0](v287);

                v288 = sub_1AFDFCEC8();

                [v286 setLabel_];

                swift_unknownObjectRetain_n();
                v136 = v286;
                if ((v239 & 1) == 0)
                {
                  v144 = v404.i64[0];
LABEL_354:
                  v85 = 2;
                  goto LABEL_355;
                }

                v85 = 4;
                v144 = v404.i64[0];
LABEL_355:
                [v409 boundingBox];
                v320 = v319;
                v320.i32[3] = v393.i32[3];
                v321.i32[3] = v395.i32[3];
                v395 = v320;
                v322 = v320;
                v322.i32[3] = 1.0;
                v392 = v321;
                v321.i32[3] = 1.0;
                v323 = v423;
                *(v423 + 1) = 0;
                v323[2] = 0;
                v324.i64[0] = 0x3F0000003F000000;
                v324.i64[1] = 0x3F0000003F000000;
                *v323 = 0;
                *&v447 = 3;
                v449 = v136;
                v450 = v144;
                LOBYTE(v451) = 0;
                *(&v451 + 1) = *(&v429 + 1);
                DWORD1(v451) = HIDWORD(v429);
                *(&v451 + 1) = v405;
                *&v452 = v85;
                *(&v452 + 1) = MEMORY[0x1E69E7CC0];
                v453 = 0u;
                v454 = 0u;
                LOBYTE(v455) = 0;
                *(&v455 + 1) = v458[0];
                *(&v455 + 1) = *(v458 + 7);
                v403 = vmulq_f32(vaddq_f32(v321, v322), v324);
                v456 = v403;
                v457 = vmulq_f32(vsubq_f32(v321, v322), v324);
                v397 = v457;
                v325 = v412[5];
                sub_1AF6E52F0(&v447, &v430);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v325 = sub_1AF422C4C(0, *(v325 + 2) + 1, 1, v325);
                }

                v327 = *(v325 + 2);
                v326 = *(v325 + 3);
                if (v327 >= v326 >> 1)
                {
                  v325 = sub_1AF422C4C(v326 > 1, v327 + 1, 1, v325);
                }

                swift_unknownObjectRelease_n();
                *(v325 + 2) = v327 + 1;
                v328 = &v325[176 * v327];
                v329 = v447;
                v330 = v449;
                *(v328 + 3) = v448;
                *(v328 + 4) = v330;
                *(v328 + 2) = v329;
                v331 = v450;
                v332 = v451;
                v333 = v453;
                *(v328 + 7) = v452;
                *(v328 + 8) = v333;
                *(v328 + 5) = v331;
                *(v328 + 6) = v332;
                v334 = v454;
                v335 = v455;
                v336 = v457;
                *(v328 + 11) = v456;
                *(v328 + 12) = v336;
                *(v328 + 9) = v334;
                *(v328 + 10) = v335;

                sub_1AF439ED8(v427, v424);
                v412[5] = v325;
                ++v407;
                v393 = v395;
                v395 = v392;
LABEL_385:
                v69 = v425;
                v137 = v404.i64[0];
                v138 = v405;
                v149 = v403;
                v150 = v397;
LABEL_386:
                v369 = v423;
                *(v423 + 1) = 0;
                v369[2] = 0;
                *v369 = 0;
                *&v447 = 3;
                v449 = v136;
                v450 = v137;
                LOBYTE(v451) = 0;
                *(&v451 + 1) = *(&v429 + 1);
                DWORD1(v451) = HIDWORD(v429);
                *(&v451 + 1) = v138;
                *&v452 = v85;
                *(&v452 + 1) = MEMORY[0x1E69E7CC0];
                v453 = 0u;
                v454 = 0u;
                LOBYTE(v455) = 0;
                *(&v455 + 1) = v458[0];
                *(&v455 + 1) = *(v458 + 7);
                v456 = v149;
                v457 = v150;
                sub_1AF6E534C(&v447);
                if (v421 == v69)
                {
                  goto LABEL_410;
                }

                ++v69;
              }
            }

            if (v74 >> 62 != 2)
            {
              memset(v428, 0, 14);
              v145 = [v71 v34[437]];
              v140 = sub_1AFDFC1B8();
              v142 = v146;

              v147 = v142 >> 62;
              if ((v142 >> 62) > 1)
              {
                if (v147 != 2)
                {
LABEL_182:
                  sub_1AF439ED8(v140, v142);
LABEL_183:

                  sub_1AF439ED8(v427, v74);
                  v136 = 0;
                  v137 = 0;
                  v138 = 0;
                  v85 = 0;
                  v149 = v418;
                  v150 = v419;
                  goto LABEL_386;
                }

                v168 = *(v140 + 16);
                v167 = *(v140 + 24);
                sub_1AF439ED8(v140, v142);
                v148 = v167 - v168;
                v71 = v426;
                if (!v148)
                {
                  goto LABEL_183;
                }
              }

              else if (v147)
              {
                sub_1AF439ED8(v140, v142);
                v148 = (0xFFFFFFFF00000001 * v140) >> 32;
                if (!v148)
                {
                  goto LABEL_183;
                }
              }

              else
              {
                sub_1AF439ED8(v140, v142);
                v148 = BYTE6(v142);
                if (!BYTE6(v142))
                {
                  goto LABEL_183;
                }
              }

              v241 = [v71 bytesPerIndex];
              if (v241 == 4)
              {
                v243 = 0;
                v242 = 1;
              }

              else if (v241 == 2)
              {
                v243 = 0;
                v242 = 0;
              }

              else
              {
                if (v241 != 1)
                {
LABEL_252:
                  if (qword_1ED730EA0 != -1)
                  {
                    swift_once();
                  }

                  *&v447 = 0;
                  *(&v447 + 1) = 0xE000000000000000;
                  sub_1AFDFE218();

                  *&v447 = 0xD00000000000001ELL;
                  *(&v447 + 1) = v408;
                  v430 = [v71 bytesPerIndex];
                  v244 = sub_1AFDFEA08();
                  MEMORY[0x1B2718AE0](v244);

LABEL_280:
                  v249 = v447;
                  v250 = sub_1AFDFDA08();
                  if (qword_1ED731058 != -1)
                  {
                    swift_once();
                  }

                  if (qword_1ED730E98 != -1)
                  {
                    swift_once();
                  }

                  sub_1AF0D0CBC(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
                  v251 = swift_allocObject();
                  *(v251 + 16) = xmmword_1AFE431C0;
                  *(v251 + 56) = MEMORY[0x1E69E6158];
                  *(v251 + 64) = sub_1AF0D544C();
                  *(v251 + 32) = v249;

                  sub_1AFDFC4C8();

                  v405 = v249;
                  v252 = v414;
                  sub_1AFDFC288();
                  v253 = v416;
                  v254 = v417[12];
                  v255 = v417[16];
                  v256 = &v416[v417[20]];
                  (*v413)(v416, v252, v415);
                  *(v253 + v254) = v250;
                  *(v253 + v255) = 0;
                  *v256 = v405;
                  *(v256 + 1) = *(&v249 + 1);

                  sub_1AFDFC608();

                  sub_1AF0D54A0(v253);

                  sub_1AF439ED8(v427, v424);
                  v136 = 0;
                  v137 = 0;
                  v138 = 0;
                  v85 = 0;
                  v149 = v418;
                  v150 = v419;
                  v34 = &selRef_antialiasingMode;
                  v67 = v420;
LABEL_153:
                  v69 = v425;
                  goto LABEL_386;
                }

                v242 = 0;
                v243 = 1;
              }

              v247 = [v71 v15[170]];
              if (v247 > 1)
              {
                if (v247 == 3)
                {
                  v248 = [v71 primitiveCount];
                }

                else
                {
                  if (v247 != 2)
                  {
LABEL_277:
                    if (qword_1ED730EA0 != -1)
                    {
                      swift_once();
                    }

                    *&v447 = 0;
                    *(&v447 + 1) = 0xE000000000000000;
                    sub_1AFDFE218();
                    MEMORY[0x1B2718AE0](0xD000000000000023, v410 | 0x8000000000000000);
                    v430 = [v71 v15[170]];
                    type metadata accessor for VFXMeshPrimitiveType(0);
                    sub_1AFDFE458();
                    goto LABEL_280;
                  }

                  v248 = 2 * [v71 primitiveCount];
                }
              }

              else if (v247)
              {
                if (v247 != 1)
                {
                  goto LABEL_277;
                }

                v248 = [v71 primitiveCount] + 2;
              }

              else
              {
                v248 = 3 * [v71 primitiveCount];
              }

              v405 = v248;
              if (v243)
              {
                v291 = v148;
                v292 = [v71 v34[437]];
                v293 = sub_1AFDFC1B8();
                v295 = v294;

                v296 = v295 >> 62;
                if ((v295 >> 62) > 1)
                {
                  if (v296 == 2)
                  {
                    v302 = *(v293 + 16);
                    v301 = *(v293 + 24);
                    sub_1AF439ED8(v293, v295);
                    v297 = v301 - v302;
                    v71 = v426;
                    goto LABEL_337;
                  }

                  sub_1AF439ED8(v293, v295);
                  v312 = MEMORY[0x1E69E7CC0];
                }

                else
                {
                  if (v296)
                  {
                    sub_1AF439ED8(v293, v295);
                    v297 = (0xFFFFFFFF00000001 * v293) >> 32;
                  }

                  else
                  {
                    sub_1AF439ED8(v293, v295);
                    v297 = BYTE6(v295);
                  }

LABEL_337:
                  if (v297 >= 1)
                  {
                    v312 = sub_1AFDFD488();
                    *(v312 + 16) = v297;
                    goto LABEL_340;
                  }

                  v312 = MEMORY[0x1E69E7CC0];
                  if (v297)
                  {
LABEL_340:
                    bzero((v312 + 32), 2 * v297);
                  }
                }

                v337 = [v71 v34[437]];
                v338 = sub_1AFDFC1B8();
                v340 = v339;

                v341 = v340 >> 62;
                if ((v340 >> 62) > 1)
                {
                  if (v341 == 2)
                  {
                    v344 = *(v338 + 16);
                    v343 = *(v338 + 24);
                    sub_1AF439ED8(v338, v340);
                    v342 = v343 - v344;
                    goto LABEL_367;
                  }

                  sub_1AF439ED8(v338, v340);
                  v345 = v291;
                }

                else
                {
                  if (v341)
                  {
                    sub_1AF439ED8(v338, v340);
                    v342 = (0xFFFFFFFF00000001 * v338) >> 32;
                  }

                  else
                  {
                    sub_1AF439ED8(v338, v340);
                    v342 = BYTE6(v340);
                  }

LABEL_367:
                  v345 = v291;
                  if (v342)
                  {
                    if (v342 < 8 || v312 + 32 < v428 + v342 && v428 < v312 + 2 * v342 + 32)
                    {
                      v346 = 0;
                      goto LABEL_372;
                    }

                    if (v342 >= 0x20)
                    {
                      v346 = v342 & 0xFFFFFFFFFFFFFFE0;
                      v381 = (v312 + 64);
                      v382 = v342 & 0xFFFFFFFFFFFFFFE0;
                      v383 = v398;
                      do
                      {
                        v384 = *v383[-2].i8;
                        v385 = vmovl_u8(*v383);
                        v386 = vmovl_high_u8(*v383->i8);
                        v381[-2] = vmovl_u8(*v384.i8);
                        v381[-1] = vmovl_high_u8(v384);
                        *v381 = v385;
                        v381[1] = v386;
                        v381 += 4;
                        v383 += 4;
                        v382 -= 32;
                      }

                      while (v382);
                      if (v342 != v346)
                      {
                        if ((v342 & 0x18) == 0)
                        {
                          goto LABEL_372;
                        }

                        goto LABEL_404;
                      }
                    }

                    else
                    {
                      v346 = 0;
LABEL_404:
                      v387 = v346;
                      v346 = v342 & 0xFFFFFFFFFFFFFFF8;
                      v388 = (v428 + v387);
                      v389 = (v312 + 2 * v387 + 32);
                      v390 = v387 - (v342 & 0xFFFFFFFFFFFFFFF8);
                      do
                      {
                        v391 = *v388++;
                        *v389++ = vmovl_u8(v391);
                        v390 += 8;
                      }

                      while (v390);
                      if (v342 != v346)
                      {
LABEL_372:
                        v347 = v342 - v346;
                        v348 = (v312 + 2 * v346 + 32);
                        v349 = v428 + v346;
                        do
                        {
                          v350 = *v349++;
                          *v348++ = v350;
                          --v347;
                        }

                        while (v347);
                      }
                    }
                  }
                }

                v148 = 2 * v345;
                v298 = [v411 newBufferWithBytes:v312 + 32 length:v148 options:0];

                v242 = 0;
                v404.i64[0] = v148;
                if (!v298)
                {
LABEL_377:
                  v136 = 0;
                  if (v242)
                  {
                    v85 = 4;
                    goto LABEL_380;
                  }

                  goto LABEL_379;
                }
              }

              else
              {
                v298 = [v411 newBufferWithBytes:v428 length:v148 options:0];
                v404.i64[0] = v148;
                if (!v298)
                {
                  goto LABEL_377;
                }
              }

              *&v447 = 0x20746E656D656C65;
              *(&v447 + 1) = 0xE800000000000000;
              v430 = v407;
              v299 = sub_1AFDFEA08();
              MEMORY[0x1B2718AE0](v299);

              v300 = sub_1AFDFCEC8();

              [v298 setLabel_];

              swift_unknownObjectRetain_n();
              v136 = v298;
              if (v242)
              {
                v85 = 4;
                v148 = v404.i64[0];
LABEL_380:
                [v409 boundingBox];
                v352 = v351;
                v352.i32[3] = v394.i32[3];
                v353.i32[3] = v396.i32[3];
                v396 = v352;
                v354 = v352;
                v354.i32[3] = 1.0;
                v392 = v353;
                v353.i32[3] = 1.0;
                v355 = v423;
                *(v423 + 1) = 0;
                v355[2] = 0;
                v356.i64[0] = 0x3F0000003F000000;
                v356.i64[1] = 0x3F0000003F000000;
                *v355 = 0;
                *&v447 = 3;
                v449 = v136;
                v450 = v148;
                LOBYTE(v451) = 0;
                *(&v451 + 1) = *(&v429 + 1);
                DWORD1(v451) = HIDWORD(v429);
                *(&v451 + 1) = v405;
                *&v452 = v85;
                *(&v452 + 1) = MEMORY[0x1E69E7CC0];
                v453 = 0u;
                v454 = 0u;
                LOBYTE(v455) = 0;
                *(&v455 + 1) = v458[0];
                *(&v455 + 1) = *(v458 + 7);
                v403 = vmulq_f32(vaddq_f32(v353, v354), v356);
                v456 = v403;
                v457 = vmulq_f32(vsubq_f32(v353, v354), v356);
                v397 = v457;
                v357 = v412[5];
                sub_1AF6E52F0(&v447, &v430);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v357 = sub_1AF422C4C(0, *(v357 + 2) + 1, 1, v357);
                }

                v359 = *(v357 + 2);
                v358 = *(v357 + 3);
                if (v359 >= v358 >> 1)
                {
                  v357 = sub_1AF422C4C(v358 > 1, v359 + 1, 1, v357);
                }

                swift_unknownObjectRelease_n();
                *(v357 + 2) = v359 + 1;
                v360 = &v357[176 * v359];
                v361 = v447;
                v362 = v449;
                *(v360 + 3) = v448;
                *(v360 + 4) = v362;
                *(v360 + 2) = v361;
                v363 = v450;
                v364 = v451;
                v365 = v453;
                *(v360 + 7) = v452;
                *(v360 + 8) = v365;
                *(v360 + 5) = v363;
                *(v360 + 6) = v364;
                v366 = v454;
                v367 = v455;
                v368 = v457;
                *(v360 + 11) = v456;
                *(v360 + 12) = v368;
                *(v360 + 9) = v366;
                *(v360 + 10) = v367;

                sub_1AF439ED8(v427, v424);
                v412[5] = v357;
                ++v407;
                v394 = v396;
                v396 = v392;
                goto LABEL_385;
              }

              v148 = v404.i64[0];
LABEL_379:
              v85 = 2;
              goto LABEL_380;
            }

            v77 = *(v427 + 2);
            v78 = sub_1AFDFBDB8();
            if (v78)
            {
              v79 = v78 + v77 - sub_1AFDFBDE8();
            }

            else
            {
              v79 = 0;
            }

            sub_1AFDFBDD8();
            v71 = v426;
            v86 = [v426 v34[437]];
            v81 = sub_1AFDFC1B8();
            v83 = v87;

            v88 = v83 >> 62;
            if ((v83 >> 62) > 1)
            {
              if (v88 != 2)
              {
LABEL_151:
                sub_1AF439ED8(v81, v83);

                sub_1AF439ED8(v427, v74);
                v136 = 0;
                v137 = 0;
                v138 = 0;
                v85 = 0;
LABEL_152:
                v149 = v418;
                v150 = v419;
                goto LABEL_153;
              }

              v92 = *(v81 + 16);
              v91 = *(v81 + 24);
              sub_1AF439ED8(v81, v83);
              v85 = v91 - v92;
              v71 = v426;
              if (!v85)
              {
                goto LABEL_142;
              }
            }

            else if (v88)
            {
              sub_1AF439ED8(v81, v83);
              v85 = (0xFFFFFFFF00000001 * v81) >> 32;
              if (!v85)
              {
                goto LABEL_142;
              }
            }

            else
            {
              sub_1AF439ED8(v81, v83);
              v85 = BYTE6(v83);
              if (!BYTE6(v83))
              {
                goto LABEL_142;
              }
            }

            v96 = [v71 bytesPerIndex];
            if (v96 == 4)
            {
              v98 = 0;
              v97 = 1;
            }

            else if (v96 == 2)
            {
              v98 = 0;
              v97 = 0;
            }

            else
            {
              if (v96 != 1)
              {
LABEL_96:
                if (qword_1ED730EA0 != -1)
                {
                  swift_once();
                }

                v430 = 0;
                v431 = 0xE000000000000000;
                sub_1AFDFE218();

                v430 = 0xD00000000000001ELL;
                v431 = v408;
                v428[0] = [v71 bytesPerIndex];
                v99 = sub_1AFDFEA08();
                MEMORY[0x1B2718AE0](v99);

LABEL_135:
                v128 = v430;
                v127 = v431;
                v129 = sub_1AFDFDA08();
                if (qword_1ED731058 != -1)
                {
                  swift_once();
                }

                if (qword_1ED730E98 != -1)
                {
                  swift_once();
                }

                sub_1AF0D0CBC(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
                v130 = swift_allocObject();
                *(v130 + 16) = xmmword_1AFE431C0;
                *(v130 + 56) = MEMORY[0x1E69E6158];
                *(v130 + 64) = sub_1AF0D544C();
                *(v130 + 32) = v128;
                *(v130 + 40) = v127;

                sub_1AFDFC4C8();

                v131 = v414;
                sub_1AFDFC288();
                v114 = v416;
                v132 = v417[12];
                v133 = v417[16];
                v134 = &v416[v417[20]];
                (*v413)(v416, v131, v415);
                *(v114 + v132) = v129;
                *(v114 + v133) = 0;
                *v134 = v128;
                *(v134 + 1) = v127;
                goto LABEL_140;
              }

              v97 = 0;
              v98 = 1;
            }

            v118 = [v71 v15[170]];
            if (v118 > 1)
            {
              if (v118 == 3)
              {
                v119 = [v71 primitiveCount];
                if (!v98)
                {
                  goto LABEL_159;
                }
              }

              else
              {
                if (v118 != 2)
                {
LABEL_132:
                  if (qword_1ED730EA0 != -1)
                  {
                    swift_once();
                  }

                  v430 = 0;
                  v431 = 0xE000000000000000;
                  sub_1AFDFE218();
                  MEMORY[0x1B2718AE0](0xD000000000000023, v410 | 0x8000000000000000);
                  v428[0] = [v71 v15[170]];
                  type metadata accessor for VFXMeshPrimitiveType(0);
                  sub_1AFDFE458();
                  goto LABEL_135;
                }

                v119 = 2 * [v71 primitiveCount];
                if (!v98)
                {
LABEL_159:
                  v156 = [v411 newBufferWithBytes:v79 length:v85 options:0];
                  if (v156)
                  {
                    goto LABEL_160;
                  }

                  goto LABEL_233;
                }
              }
            }

            else if (v118)
            {
              if (v118 != 1)
              {
                goto LABEL_132;
              }

              v119 = [v71 primitiveCount] + 2;
              if (!v98)
              {
                goto LABEL_159;
              }
            }

            else
            {
              v119 = 3 * [v71 primitiveCount];
              if (!v98)
              {
                goto LABEL_159;
              }
            }

            v120 = [v71 v34[437]];
            v121 = sub_1AFDFC1B8();
            v123 = v122;

            v124 = v123 >> 62;
            if ((v123 >> 62) > 1)
            {
              if (v124 != 2)
              {
                sub_1AF439ED8(v121, v123);
                v126 = MEMORY[0x1E69E7CC0];
                goto LABEL_199;
              }

              v164 = *(v121 + 16);
              v163 = *(v121 + 24);
              sub_1AF439ED8(v121, v123);
              v125 = v163 - v164;
              v71 = v426;
              if (v125 >= 1)
              {
                goto LABEL_188;
              }
            }

            else if (v124)
            {
              sub_1AF439ED8(v121, v123);
              v125 = (0xFFFFFFFF00000001 * v121) >> 32;
              if (v125 >= 1)
              {
LABEL_188:
                v126 = sub_1AFDFD488();
                *(v126 + 16) = v125;
LABEL_189:
                bzero((v126 + 32), 2 * v125);
                goto LABEL_199;
              }
            }

            else
            {
              sub_1AF439ED8(v121, v123);
              v125 = BYTE6(v123);
              if (BYTE6(v123))
              {
                goto LABEL_188;
              }
            }

            v126 = MEMORY[0x1E69E7CC0];
            if (v125)
            {
              goto LABEL_189;
            }

LABEL_199:
            v178 = [v71 v34[437]];
            v179 = sub_1AFDFC1B8();
            v181 = v180;

            v182 = v181;
            v183 = v181 >> 62;
            if ((v181 >> 62) > 1)
            {
              if (v183 != 2)
              {
                sub_1AF439ED8(v179, v181);
                goto LABEL_232;
              }

              v186 = *(v179 + 16);
              v185 = *(v179 + 24);
              sub_1AF439ED8(v179, v182);
              v184 = v185 - v186;
              if (v185 == v186)
              {
                goto LABEL_232;
              }
            }

            else if (v183)
            {
              sub_1AF439ED8(v179, v181);
              v184 = (0xFFFFFFFF00000001 * v179) >> 32;
              if (!v184)
              {
                goto LABEL_232;
              }
            }

            else
            {
              sub_1AF439ED8(v179, v181);
              v184 = BYTE6(v181);
              if (!BYTE6(v181))
              {
                goto LABEL_232;
              }
            }

            if (v184 < 8 || v126 + 32 < v79 + v184 && v79 < v126 + 2 * v184 + 32)
            {
              v212 = 0;
LABEL_228:
              v213 = v184 - v212;
              v214 = (v126 + 2 * v212 + 32);
              v215 = (v79 + v212);
              do
              {
                v216 = *v215++;
                *v214++ = v216;
                --v213;
              }

              while (v213);
              goto LABEL_232;
            }

            if (v184 >= 0x20)
            {
              v212 = v184 & 0xFFFFFFFFFFFFFFE0;
              v268 = (v79 + 16);
              v269 = (v126 + 64);
              v270 = v184 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v271 = *v268[-2].i8;
                v272 = vmovl_u8(*v268);
                v273 = vmovl_high_u8(*v268->i8);
                v269[-2] = vmovl_u8(*v271.i8);
                v269[-1] = vmovl_high_u8(v271);
                *v269 = v272;
                v269[1] = v273;
                v269 += 4;
                v268 += 4;
                v270 -= 32;
              }

              while (v270);
              if (v184 == v212)
              {
                goto LABEL_232;
              }

              if ((v184 & 0x18) == 0)
              {
                goto LABEL_228;
              }
            }

            else
            {
              v212 = 0;
            }

            v274 = v212;
            v212 = v184 & 0xFFFFFFFFFFFFFFF8;
            v275 = (v79 + v274);
            v276 = (v126 + 2 * v274 + 32);
            v277 = v274 - (v184 & 0xFFFFFFFFFFFFFFF8);
            do
            {
              v278 = *v275++;
              *v276++ = vmovl_u8(v278);
              v277 += 8;
            }

            while (v277);
            if (v184 != v212)
            {
              goto LABEL_228;
            }

LABEL_232:
            v85 *= 2;
            v156 = [v411 newBufferWithBytes:v126 + 32 length:v85 options:0];

            v97 = 0;
            if (v156)
            {
LABEL_160:
              *&v447 = 0x20746E656D656C65;
              *(&v447 + 1) = 0xE800000000000000;
              v430 = v407;
              v157 = sub_1AFDFEA08();
              MEMORY[0x1B2718AE0](v157);

              v158 = sub_1AFDFCEC8();

              [v156 setLabel_];

              swift_unknownObjectRetain_n();
              v159 = v156;
              if ((v97 & 1) == 0)
              {
                goto LABEL_234;
              }

              goto LABEL_161;
            }

LABEL_233:
            v159 = 0;
            if ((v97 & 1) == 0)
            {
LABEL_234:
              v160 = 2;
              goto LABEL_235;
            }

LABEL_161:
            v160 = 4;
LABEL_235:
            [v409 boundingBox];
            v218 = v217;
            v218.i32[3] = v399.i32[3];
            v219.i32[3] = v400.i32[3];
            v399 = v218;
            v400 = v219;
            v220 = v218;
            v220.i32[3] = 1.0;
            v219.i32[3] = 1.0;
            v221 = v423;
            *(v423 + 1) = 0;
            v221[2] = 0;
            v222.i64[0] = 0x3F0000003F000000;
            v222.i64[1] = 0x3F0000003F000000;
            *v221 = 0;
            *&v447 = 3;
            v449 = v159;
            v450 = v85;
            LOBYTE(v451) = 0;
            *(&v451 + 1) = *(&v429 + 1);
            DWORD1(v451) = HIDWORD(v429);
            *(&v451 + 1) = v119;
            *&v452 = v160;
            *(&v452 + 1) = MEMORY[0x1E69E7CC0];
            v453 = 0u;
            v454 = 0u;
            LOBYTE(v455) = 0;
            *(&v455 + 1) = v458[0];
            *(&v455 + 1) = *(v458 + 7);
            v403 = vmulq_f32(vsubq_f32(v219, v220), v222);
            v404 = vmulq_f32(vaddq_f32(v219, v220), v222);
            v456 = v404;
            v457 = v403;
            v223 = v412[5];
            sub_1AF6E52F0(&v447, &v430);
            v224 = swift_isUniquelyReferenced_nonNull_native();
            v405 = v160;
            v225 = v159;
            if ((v224 & 1) == 0)
            {
              v223 = sub_1AF422C4C(0, *(v223 + 2) + 1, 1, v223);
            }

            v227 = *(v223 + 2);
            v226 = *(v223 + 3);
            if (v227 >= v226 >> 1)
            {
              v223 = sub_1AF422C4C(v226 > 1, v227 + 1, 1, v223);
            }

            swift_unknownObjectRelease_n();
            *(v223 + 2) = v227 + 1;
            v228 = &v223[176 * v227];
            v229 = v447;
            v230 = v449;
            *(v228 + 3) = v448;
            *(v228 + 4) = v230;
            *(v228 + 2) = v229;
            v231 = v450;
            v232 = v451;
            v233 = v453;
            *(v228 + 7) = v452;
            *(v228 + 8) = v233;
            *(v228 + 5) = v231;
            *(v228 + 6) = v232;
            v234 = v454;
            v235 = v455;
            v236 = v457;
            *(v228 + 11) = v456;
            *(v228 + 12) = v236;
            *(v228 + 9) = v234;
            *(v228 + 10) = v235;

            sub_1AF439ED8(v427, v424);
            v412[5] = v223;
            v237 = v406;
            v406[1] = 0;
            v237[2] = 0;
            *v237 = 0;
            v430 = 3;
            v432 = v225;
            v433 = 0;
            v434 = v85;
            v435 = 0;
            v436 = 0;
            *v437 = *(&v429 + 1);
            *&v437[3] = HIDWORD(v429);
            v438 = v119;
LABEL_240:
            v439 = v405;
            v440 = MEMORY[0x1E69E7CC0];
            v443 = 0;
            v441 = 0u;
            v442 = 0u;
            *v444 = v458[0];
            *&v444[7] = *(v458 + 7);
            v445 = v404;
            v446 = v403;
            sub_1AF6E534C(&v430);
            if (v421 == v425)
            {
              break;
            }

            v69 = v425 + 1;
            ++v407;
            v67 = v420;
            v15 = &selRef_numberWithBool_;
          }
        }
      }

LABEL_410:

      return v412;
    }

    v32 = 0;
    goto LABEL_19;
  }

  v14 = sub_1AFDFE108();
  v15 = &selRef_numberWithBool_;
  if (!v14)
  {
    goto LABEL_12;
  }

LABEL_3:
  v16 = 0;
  while (1)
  {
    v17 = (v13 & 0xC000000000000001) != 0 ? MEMORY[0x1B2719C70](v16, v13) : *(v13 + 8 * v16 + 32);
    v18 = v17;
    if ([v17 primitiveType] == 4)
    {
      break;
    }

    if (v14 == ++v16)
    {
      goto LABEL_12;
    }
  }

  v19 = [v409 _renderableCopy];
  v20 = sub_1AF6E5844(v19, a2, v411);

  return v20;
}

id sub_1AF6E875C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC128();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D4478(0, &qword_1ED7307E8);
  (*(v5 + 16))(v8, a1, v4);
  sub_1AF6EE4F8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = @"kSceneSourceCheckConsistency";
  v10 = MEMORY[0x1E69E6370];
  *(inited + 40) = 0;
  *(inited + 64) = v10;
  *(inited + 72) = @"kSceneSourcePreserveOriginalTopology";
  *(inited + 104) = v10;
  *(inited + 80) = 0;
  v11 = @"kSceneSourceCheckConsistency";
  v12 = @"kSceneSourcePreserveOriginalTopology";
  v13 = sub_1AF43C074(inited);
  swift_setDeallocating();
  sub_1AF6EE578(0, &qword_1EB638288, type metadata accessor for VFXWorldLoaderOption);
  swift_arrayDestroy();
  result = sub_1AF6E8B38(v8, v13);
  if (result)
  {
    v15 = result;
    v16 = [result rootNode];
    v17 = [v16 name];
    if (!v17)
    {
      sub_1AFDFC028();
      v18 = sub_1AFDFCEC8();

      v17 = [v18 stringByDeletingPathExtension];

      if (!v17)
      {
        sub_1AFDFCEF8();
        v17 = sub_1AFDFCEC8();
      }

      [v16 setName_];
    }

    type metadata accessor for VFXCoreImporter.VFXImporterContext();
    v19 = swift_initStackObject();
    v20 = MEMORY[0x1E69E7CC0];
    v19[2] = sub_1AF43C0A8(MEMORY[0x1E69E7CC0]);
    v19[3] = sub_1AF43C198(v20);
    v19[4] = sub_1AF43C288(v20);
    v19[5] = sub_1AF43C398(v20);
    v19[6] = v20;
    v19[7] = 0;
    v19[8] = v20;
    v24 = v19;
    sub_1AF6E8CE0(v16, a2, a1, &v24);
    v22 = v21;
    sub_1AF6E9AB0(a2, v24);

    return v22;
  }

  return result;
}

uint64_t sub_1AF6E8A98()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF6E8AD8()
{

  return swift_deallocClassInstance();
}

id sub_1AF6E8B38(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1AFDFC048();
  if (a2)
  {
    type metadata accessor for VFXWorldLoaderOption(0);
    sub_1AF6EE644();
    v5 = sub_1AFDFCBE8();
  }

  else
  {
    v5 = 0;
  }

  v14[0] = 0;
  v6 = [swift_getObjCClassFromMetadata() worldWithURL:v4 options:v5 error:v14];

  v7 = v14[0];
  if (v6)
  {
    v8 = sub_1AFDFC128();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14[0];
    sub_1AFDFBF58();

    swift_willThrow();
    v12 = sub_1AFDFC128();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

void sub_1AF6E8CE0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v9 = **(a2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  v10 = *(v9 + 32);
  v11 = a1;
  ecs_stack_allocator_push_snapshot(v10);
  v12 = ecs_stack_allocator_allocate(*(v9 + 32), 80, 8);
  *v12 = &type metadata for Position;
  v12[1] = &off_1F252EE70;
  v12[2] = &type metadata for Orientation;
  v12[3] = &off_1F252C8A8;
  v12[4] = &type metadata for Scale3;
  v12[5] = &off_1F252F998;
  v12[6] = type metadata accessor for VFXObjectTag();
  v12[7] = &off_1F253D658;
  v12[8] = &type metadata for WorldTransform;
  v12[9] = &off_1F2529FC0;
  LOBYTE(v108) = 1;
  v13 = sub_1AF638490(v12, 5, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v9, v11);
  v106 = HIDWORD(v13);

  ecs_stack_allocator_pop_snapshot(*(v9 + 32));
  v14 = [v11 model];
  v101 = a3;
  v103 = v5;
  v105 = a2;
  v107 = v13;
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = v14;
  v16 = *a4;
  v17 = *(*a4 + 16);
  if (!*(v17 + 16))
  {
    goto LABEL_6;
  }

  v18 = sub_1AF41A630(v15);
  if ((v19 & 1) == 0)
  {

LABEL_6:
    v22 = sub_1AF6EAC88(v11, v15, a2, a3, a4);
    v21 = HIDWORD(v22);
    v23 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = *(v16 + 16);
    *(v16 + 16) = 0x8000000000000000;
    sub_1AF854488(v22, v23, isUniquelyReferenced_nonNull_native);

    *(v16 + 16) = v108;

    v25 = *(v16 + 64);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *(v16 + 64) = v25;
    if ((v26 & 1) == 0)
    {
      v25 = sub_1AF4217DC(0, *(v25 + 2) + 1, 1, v25);
      *(v16 + 64) = v25;
    }

    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    if (v28 >= v27 >> 1)
    {
      v25 = sub_1AF4217DC(v27 > 1, v28 + 1, 1, v25);
    }

    *(v25 + 2) = v28 + 1;
    *&v25[8 * v28 + 32] = v22;
    *(v16 + 64) = v25;
    goto LABEL_11;
  }

  v20 = (*(v17 + 56) + 8 * v18);
  LODWORD(v22) = *v20;
  v21 = v20[1];

LABEL_11:
  v13 = v107;
  if (v106)
  {
    v29 = 0;
  }

  else
  {
    v29 = v107 == -1;
  }

  if (v29)
  {
  }

  else
  {
    v30 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v30)
    {
      v31 = *(v30 + 80);
      swift_unknownObjectWeakLoadStrong();
      v30 = *(v30 + 56);
    }

    else
    {
      v31 = 0;
    }

    swift_unknownObjectUnownedInit();
    v108 = a2;
    v110 = v30;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v111 = v31;
    v13 = v107;
    sub_1AFC76B14(&v108, v22 | (v21 << 32), 0xFFFFFFFFLL, v107);
    sub_1AF579490(&v108);
    if (v31)
    {
      v32 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v32 ^ 1);
    }
  }

LABEL_22:
  v33 = [v11 light];
  if (!v33)
  {
    goto LABEL_74;
  }

  v34 = v33;
  v35 = [v33 type];
  if (v35 > 1)
  {
    if (v35 == 2)
    {
      [v34 intensity];
      if (v106)
      {
        v62 = 0;
      }

      else
      {
        v62 = v13 == -1;
      }

      if (!v62)
      {
        v63 = v61;
        v64 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

        if (v64)
        {
          v42 = *(v64 + 80);
          swift_unknownObjectWeakLoadStrong();
          v64 = *(v64 + 56);
        }

        else
        {
          v42 = 0;
        }

        v110 = 0;
        swift_unknownObjectUnownedInit();
        v108 = a2;
        v110 = v64;
        swift_unknownObjectUnownedAssign();
        swift_unownedRetain();
        swift_unknownObjectRelease();
        v111 = v42;
        sub_1AFC7669C(&v108, v13, v63, 10.0, -10.0, 10.0);
        goto LABEL_71;
      }

      goto LABEL_57;
    }

    if (v35 == 3)
    {
      [v34 intensity];
      v44 = v43;
      [v34 attenuationDistance];
      v46 = v45;
      [v34 spotInnerAngle];
      v48 = v47;
      [v34 spotOuterAngle];
      v112.n128_u64[0] = __PAIR64__(v46, v44);
      v112.n128_u64[1] = __PAIR64__(v48, v49);
      v113 = 0x412000003C23D70ALL;
      if (v106)
      {
        v50 = 0;
      }

      else
      {
        v50 = v13 == -1;
      }

      if (!v50)
      {
        v51 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

        if (v51)
        {
          v42 = *(v51 + 80);
          swift_unknownObjectWeakLoadStrong();
          v51 = *(v51 + 56);
        }

        else
        {
          v42 = 0;
        }

        v110 = 0;
        swift_unknownObjectUnownedInit();
        v108 = a2;
        v110 = v51;
        swift_unknownObjectUnownedAssign();
        swift_unownedRetain();
        swift_unknownObjectRelease();
        v111 = v42;
        sub_1AFC7680C(&v108, &v112, v13);
        goto LABEL_71;
      }

LABEL_57:

      goto LABEL_74;
    }
  }

  else
  {
    if (!v35)
    {
      [v34 intensity];
      v56 = v55;
      [v34 extendedLinearSRGBColor];
      if (v106)
      {
        v58 = 0;
      }

      else
      {
        v58 = v13 == -1;
      }

      if (!v58)
      {
        v104 = v57;
        v59 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

        if (v59)
        {
          v60 = *(v59 + 80);
          swift_unknownObjectWeakLoadStrong();
          v59 = *(v59 + 56);
        }

        else
        {
          v60 = 0;
        }

        v110 = 0;
        swift_unknownObjectUnownedInit();
        v108 = a2;
        v110 = v59;
        swift_unknownObjectUnownedAssign();
        swift_unownedRetain();
        swift_unknownObjectRelease();
        v111 = v60;
        sub_1AFC76550(&v108, v107, v56);
        sub_1AF579490(&v108);
        if (v60)
        {
          v65 = [objc_opt_self() immediateMode];
          sub_1AF6C5E30(v65 ^ 1);
        }

        v66 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

        if (v66)
        {
          v42 = *(v66 + 80);
          swift_unknownObjectWeakLoadStrong();
          v66 = *(v66 + 56);
        }

        else
        {
          v42 = 0;
        }

        v110 = 0;
        swift_unknownObjectUnownedInit();
        v108 = a2;
        v110 = v66;
        swift_unknownObjectUnownedAssign();
        swift_unownedRetain();
        swift_unknownObjectRelease();
        v111 = v42;
        v13 = v107;
        sub_1AFC763F0(&v108, v107, v104);
        goto LABEL_71;
      }

      goto LABEL_57;
    }

    if (v35 == 1)
    {
      [v34 intensity];
      v37 = v36;
      [v34 attenuationDistance];
      if (v106)
      {
        v39 = 0;
      }

      else
      {
        v39 = v13 == -1;
      }

      if (!v39)
      {
        v40 = v38;
        v41 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

        if (v41)
        {
          v42 = *(v41 + 80);
          swift_unknownObjectWeakLoadStrong();
          v41 = *(v41 + 56);
        }

        else
        {
          v42 = 0;
        }

        v110 = 0;
        swift_unknownObjectUnownedInit();
        v108 = a2;
        v110 = v41;
        swift_unknownObjectUnownedAssign();
        swift_unownedRetain();
        swift_unknownObjectRelease();
        v111 = v42;
        sub_1AFC76974(&v108, v13, v37, v40, 0.01, 100.0);
LABEL_71:
        sub_1AF579490(&v108);
        if (v42)
        {
          v67 = [objc_opt_self() immediateMode];
          sub_1AF6C5E30(v67 ^ 1);
        }

        goto LABEL_74;
      }

      goto LABEL_57;
    }
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v108 = 0;
  v109 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000026, 0x80000001AFF30580);
  v112.n128_u64[0] = [v34 type];
  type metadata accessor for VFXLightType(0);
  sub_1AFDFE458();
  v52 = v108;
  v53 = v109;
  v54 = sub_1AFDFDA28();
  if (qword_1ED731058 != -1)
  {
    v100 = v54;
    swift_once();
    v54 = v100;
  }

  v108 = 0;
  sub_1AF0D4F18(v54, &v108, v52, v53);

LABEL_74:
  v68 = [v11 camera];
  if (v68)
  {
    v69 = v68;
    sub_1AF6EE058(v68, v13, a2);
  }

  if ([v11 isHidden])
  {

    v70 = sub_1AF67CACC(&type metadata for Hidden, &off_1F25296F8, v13);

    if (!v70)
    {
      if (v106)
      {
        v71 = 0;
      }

      else
      {
        v71 = v13 == -1;
      }

      if (!v71)
      {
        v72 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

        if (v72)
        {
          v73 = *(v72 + 80);
          swift_unknownObjectWeakLoadStrong();
          v72 = *(v72 + 56);
        }

        else
        {
          v73 = 0;
        }

        v110 = 0;
        swift_unknownObjectUnownedInit();
        v108 = a2;
        v110 = v72;
        swift_unknownObjectUnownedAssign();
        swift_unownedRetain();
        swift_unknownObjectRelease();
        v111 = v73;
        sub_1AFC75BE8(&v108, v13);
        sub_1AF579490(&v108);
        if (v73)
        {
          v74 = [objc_opt_self() immediateMode];
          sub_1AF6C5E30(v74 ^ 1);
        }
      }

      sub_1AF5AAC40(v13, a2);
    }
  }

  v75 = [v11 name];
  if (v75)
  {
    v76 = v75;
    v77 = sub_1AFDFCEF8();
    v79 = v78;
  }

  else
  {
    v77 = 0;
    v79 = 0;
  }

  sub_1AF6AC5B4(v77, v79, v13, a2);
  v80 = [v11 animationKeys];
  v81 = sub_1AFDFD418();

  v82 = *(v81 + 16);
  if (v82)
  {
    v83 = v81 + 40;
    do
    {

      v84 = sub_1AFDFCEC8();

      v85 = [v11 animationPlayerForKey_];

      if (v85)
      {
        type metadata accessor for VFXCoreImporter.AnimationInfo();
        v86 = swift_allocObject();
        *(v86 + 16) = v11;
        *(v86 + 32) = v85;
        *(v86 + 24) = v107;
        *(v86 + 28) = v106;
        v87 = a4;
        v88 = *a4;
        v89 = v11;
        v90 = v85;

        MEMORY[0x1B2718E00](v91);
        if (*((*(v88 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v88 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AFDFD458();
        }

        sub_1AFDFD4B8();

        a4 = v87;
      }

      v83 += 16;
      --v82;
    }

    while (v82);
  }

  v92 = [v11 childNodes];
  sub_1AF0D4478(0, &qword_1ED72F7F0);
  v93 = sub_1AFDFD418();

  if (v93 >> 62)
  {
    v94 = sub_1AFDFE108();
  }

  else
  {
    v94 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v94)
  {
    v95 = 0;
    do
    {
      if ((v93 & 0xC000000000000001) != 0)
      {
        v96 = MEMORY[0x1B2719C70](v95, v93);
      }

      else
      {
        v96 = *(v93 + 8 * v95 + 32);
      }

      v97 = v96;
      ++v95;
      v98 = sub_1AF6E8CE0(v96, v105, v102, a4);
      sub_1AF5ABF9C(v107, v105, v98, v99);
    }

    while (v94 != v95);
  }
}

uint64_t sub_1AF6E9AB0(uint64_t result, uint64_t a2)
{
  v11 = result;
  v3 = *(a2 + 48);
  if (v3 >> 62)
  {
    result = sub_1AFDFE108();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  v5 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) == 0)
    {
      v6 = *(v3 + 8 * v5 + 32);

      v7 = *(v6 + 32);
      if (!v7)
      {
        goto LABEL_4;
      }

LABEL_9:
      v8 = v7;
      v9 = [v8 animation];
      v10 = [v9 caAnimation];

      sub_1AF6EAA88(v11, v10, v6, a2);
      goto LABEL_4;
    }

    v6 = MEMORY[0x1B2719C70](v5, v3);
    v7 = *(v6 + 32);
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_4:
    ++v5;
  }

  while (v4 != v5);
}

void sub_1AF6E9C1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, void, uint64_t, uint64_t, uint64_t, void, uint64_t, float, uint64_t, uint64_t, uint64_t, uint64_t))
{
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v72 = a1;
    v14 = [v13 keyTimes];
    if (v14)
    {
      v15 = v14;
      sub_1AF0D4478(0, &qword_1ED721F80);
      v16 = sub_1AFDFD418();

      v17 = [v13 values];
      if (v17)
      {
        v64 = a4;
        v18 = v17;
        v19 = sub_1AFDFD418();

        if (v16 >> 62)
        {
          v20 = sub_1AFDFE108();
        }

        else
        {
          v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v63 = a3;
        v65 = a5;
        v66 = v16;
        if (v20)
        {
          v21 = 0;
          v22 = v16 & 0xC000000000000001;
          v23 = v16 + 32;
          v24 = v19 + 32;
          v61 = v19 + 32;
          v68 = MEMORY[0x1E69E7CC0];
          v69 = MEMORY[0x1E69E7CC0];
          v70 = MEMORY[0x1E69E7CC0];
          v71 = MEMORY[0x1E69E7CC0];
          do
          {
            v25 = v24 + 32 * v21;
            v26 = v21;
            while (1)
            {
              v27 = v22 ? MEMORY[0x1B2719C70](v26, v66) : *(v23 + 8 * v26);
              v28 = v27;
              v21 = v26 + 1;
              sub_1AF0D5A54(v25, v74);
              sub_1AF0D4478(0, &qword_1EB632950);
              if (swift_dynamicCast())
              {
                break;
              }

              v25 += 32;
              ++v26;
              if (v20 == v21)
              {
                goto LABEL_40;
              }
            }

            [v73 VFXFloat3Value];
            v67 = v29;
            [v28 floatValue];
            v31 = v30;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v70 = sub_1AF41FDF8(0, *(v70 + 2) + 1, 1, v70);
            }

            v33 = *(v70 + 2);
            v32 = *(v70 + 3);
            v34 = v33 + 1;
            if (v33 >= v32 >> 1)
            {
              v42 = sub_1AF41FDF8(v32 > 1, v33 + 1, 1, v70);
              v34 = v33 + 1;
              v70 = v42;
            }

            *(v70 + 2) = v34;
            *&v70[4 * v33 + 32] = v31;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v68 = sub_1AF41FDF8(0, *(v68 + 2) + 1, 1, v68);
            }

            v36 = *(v68 + 2);
            v35 = *(v68 + 3);
            v37 = v36 + 1;
            if (v36 >= v35 >> 1)
            {
              v43 = sub_1AF41FDF8(v35 > 1, v36 + 1, 1, v68);
              v37 = v36 + 1;
              v68 = v43;
            }

            *(v68 + 2) = v37;
            *&v68[4 * v36 + 32] = v67;
            v62 = a2;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v69 = sub_1AF41FDF8(0, *(v69 + 2) + 1, 1, v69);
            }

            v39 = *(v69 + 2);
            v38 = *(v69 + 3);
            if (v39 >= v38 >> 1)
            {
              v69 = sub_1AF41FDF8(v38 > 1, v39 + 1, 1, v69);
            }

            *(v69 + 2) = v39 + 1;
            *&v69[4 * v39 + 32] = DWORD1(v67);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v71 = sub_1AF41FDF8(0, *(v71 + 2) + 1, 1, v71);
            }

            v41 = *(v71 + 2);
            v40 = *(v71 + 3);
            if (v41 >= v40 >> 1)
            {
              v71 = sub_1AF41FDF8(v40 > 1, v41 + 1, 1, v71);
            }

            *(v71 + 2) = v41 + 1;
            *&v71[4 * v41 + 32] = DWORD2(v67);
            v24 = v61;
            a2 = v62;
          }

          while (v20 - 1 != v26);
        }

        else
        {
          v68 = MEMORY[0x1E69E7CC0];
          v69 = MEMORY[0x1E69E7CC0];
          v70 = MEMORY[0x1E69E7CC0];
          v71 = MEMORY[0x1E69E7CC0];
        }

LABEL_40:

        v44 = **(a2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        sub_1AF6EEA28(0, &qword_1EB63D7D8, &type metadata for KeyframeTimeline, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AFE4C680;
        *(inited + 32) = v68;
        *(inited + 40) = v70;
        *(inited + 48) = 0;
        *(inited + 56) = 1;
        *(inited + 64) = v69;
        *(inited + 72) = v70;
        *(inited + 80) = 0;
        *(inited + 88) = 1;
        *(inited + 96) = v71;
        *(inited + 104) = v70;
        *(inited + 112) = 0;
        *(inited + 120) = 1;
        swift_bridgeObjectRetain_n();
        [v72 duration];
        v47 = v46;
        v48 = *(v44 + 32);
        swift_retain_n();
        ecs_stack_allocator_push_snapshot(v48);
        v49 = ecs_stack_allocator_allocate(*(v44 + 32), 32, 8);
        sub_1AF63A530();
        *v49 = v50;
        v49[1] = &off_1F2510F68;
        v49[2] = &type metadata for AnimationTimeSource;
        v49[3] = &off_1F2510EB8;
        v74[0] = 1;
        v51 = a6(v49, 2, MEMORY[0x1E69E7CC0], 1, 0x100000000, v44, 0, 0xFFFFFFFFLL, v47, inited, v44, v63, v64);
        v52 = v51;
        v53 = HIDWORD(v51);

        ecs_stack_allocator_pop_snapshot(*(v44 + 32));

        swift_setDeallocating();
        swift_arrayDestroy();
        v54 = *(v65 + 64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v65 + 64) = v54;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v54 = sub_1AF4217DC(0, *(v54 + 2) + 1, 1, v54);
          *(v65 + 64) = v54;
        }

        v57 = *(v54 + 2);
        v56 = *(v54 + 3);
        v58 = v72;
        if (v57 >= v56 >> 1)
        {
          *(v65 + 64) = sub_1AF4217DC(v56 > 1, v57 + 1, 1, v54);
          v58 = v72;
        }

        v59 = *(v65 + 64);
        *(v59 + 16) = v57 + 1;
        v60 = v59 + 8 * v57;
        *(v60 + 32) = v52;
        *(v60 + 36) = v53;
        *(v65 + 64) = v59;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1AF6EA310(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v73 = a1;
    v14 = [v13 keyTimes];
    if (v14)
    {
      v15 = v14;
      sub_1AF0D4478(0, &qword_1ED721F80);
      v16 = sub_1AFDFD418();

      v17 = [v13 values];
      if (v17)
      {
        v65 = a4;
        v18 = v17;
        v19 = sub_1AFDFD418();

        if (v16 >> 62)
        {
          v20 = sub_1AFDFE108();
        }

        else
        {
          v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v62 = a2;
        v63 = a3;
        v64 = a5;
        v66 = a6;
        v67 = v16;
        if (v20)
        {
          v21 = 0;
          v22 = v16 & 0xC000000000000001;
          v23 = v16 + 32;
          v24 = v19 + 32;
          v25 = MEMORY[0x1E69E7CC0];
          v70 = MEMORY[0x1E69E7CC0];
          v71 = MEMORY[0x1E69E7CC0];
          v69 = MEMORY[0x1E69E7CC0];
          v72 = MEMORY[0x1E69E7CC0];
          v60 = v19 + 32;
          do
          {
            v26 = v24 + 32 * v21;
            v27 = v21;
            while (1)
            {
              v28 = v22 ? MEMORY[0x1B2719C70](v27, v67) : *(v23 + 8 * v27);
              v29 = v28;
              v21 = v27 + 1;
              sub_1AF0D5A54(v26, v75);
              sub_1AF0D4478(0, &qword_1EB632950);
              if (swift_dynamicCast())
              {
                break;
              }

              v26 += 32;
              ++v27;
              if (v20 == v21)
              {
                goto LABEL_44;
              }
            }

            [v74 VFXFloat4Value];
            v68 = v30;
            [v29 floatValue];
            v32 = v31;
            v61 = v25;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v72 = sub_1AF41FDF8(0, *(v72 + 2) + 1, 1, v72);
            }

            v34 = *(v72 + 2);
            v33 = *(v72 + 3);
            if (v34 >= v33 >> 1)
            {
              v72 = sub_1AF41FDF8(v33 > 1, v34 + 1, 1, v72);
            }

            *(v72 + 2) = v34 + 1;
            *&v72[4 * v34 + 32] = v32;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v69 = sub_1AF41FDF8(0, *(v69 + 2) + 1, 1, v69);
            }

            v36 = *(v69 + 2);
            v35 = *(v69 + 3);
            if (v36 >= v35 >> 1)
            {
              v69 = sub_1AF41FDF8(v35 > 1, v36 + 1, 1, v69);
            }

            *(v69 + 2) = v36 + 1;
            *&v69[4 * v36 + 32] = v68;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v70 = sub_1AF41FDF8(0, *(v70 + 2) + 1, 1, v70);
            }

            v38 = *(v70 + 2);
            v37 = *(v70 + 3);
            if (v38 >= v37 >> 1)
            {
              v70 = sub_1AF41FDF8(v37 > 1, v38 + 1, 1, v70);
            }

            *(v70 + 2) = v38 + 1;
            *&v70[4 * v38 + 32] = DWORD1(v68);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v71 = sub_1AF41FDF8(0, *(v71 + 2) + 1, 1, v71);
            }

            v40 = *(v71 + 2);
            v39 = *(v71 + 3);
            if (v40 >= v39 >> 1)
            {
              v71 = sub_1AF41FDF8(v39 > 1, v40 + 1, 1, v71);
            }

            *(v71 + 2) = v40 + 1;
            *&v71[4 * v40 + 32] = DWORD2(v68);
            v25 = v61;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1AF41FDF8(0, *(v61 + 2) + 1, 1, v61);
            }

            v42 = *(v25 + 2);
            v41 = *(v25 + 3);
            if (v42 >= v41 >> 1)
            {
              v25 = sub_1AF41FDF8(v41 > 1, v42 + 1, 1, v25);
            }

            *(v25 + 2) = v42 + 1;
            *&v25[4 * v42 + 32] = HIDWORD(v68);
            v24 = v60;
          }

          while (v20 - 1 != v27);
        }

        else
        {
          v25 = MEMORY[0x1E69E7CC0];
          v69 = MEMORY[0x1E69E7CC0];
          v70 = MEMORY[0x1E69E7CC0];
          v71 = MEMORY[0x1E69E7CC0];
          v72 = MEMORY[0x1E69E7CC0];
        }

LABEL_44:

        v43 = **(v62 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        sub_1AF6EEA28(0, &qword_1EB63D7D8, &type metadata for KeyframeTimeline, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AFE4C6B0;
        *(inited + 32) = v69;
        *(inited + 40) = v72;
        *(inited + 48) = 0;
        *(inited + 56) = 1;
        *(inited + 64) = v70;
        *(inited + 72) = v72;
        *(inited + 80) = 0;
        *(inited + 88) = 1;
        *(inited + 96) = v71;
        *(inited + 104) = v72;
        *(inited + 112) = 0;
        *(inited + 120) = 1;
        *(inited + 128) = v25;
        *(inited + 136) = v72;
        *(inited + 144) = 0;
        *(inited + 152) = 1;
        swift_bridgeObjectRetain_n();
        [v73 duration];
        v46 = v45;
        v47 = *(v43 + 32);
        swift_retain_n();
        ecs_stack_allocator_push_snapshot(v47);
        v48 = ecs_stack_allocator_allocate(*(v43 + 32), 32, 8);
        sub_1AF63A63C();
        *v48 = v49;
        v48[1] = &off_1F2510F68;
        v48[2] = &type metadata for AnimationTimeSource;
        v48[3] = &off_1F2510EB8;
        v75[0] = 1;
        v50 = sub_1AF6365D8(v48, 2, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v43, v64, 0xFFFFFFFFLL, v46, inited, v43, v63, v65);
        v51 = v50;
        v52 = HIDWORD(v50);

        ecs_stack_allocator_pop_snapshot(*(v43 + 32));

        swift_setDeallocating();
        swift_arrayDestroy();
        v53 = *(v66 + 64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v66 + 64) = v53;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v53 = sub_1AF4217DC(0, *(v53 + 2) + 1, 1, v53);
          *(v66 + 64) = v53;
        }

        v56 = *(v53 + 2);
        v55 = *(v53 + 3);
        v57 = v73;
        if (v56 >= v55 >> 1)
        {
          *(v66 + 64) = sub_1AF4217DC(v55 > 1, v56 + 1, 1, v53);
          v57 = v73;
        }

        v58 = *(v66 + 64);
        *(v58 + 16) = v56 + 1;
        v59 = v58 + 8 * v56;
        *(v59 + 32) = v51;
        *(v59 + 36) = v52;
        *(v66 + 64) = v58;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1AF6EAA88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v20 = a2;
    sub_1AF6EE69C(a1, v9, a3, a4);

    return;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v12 = a2;
  v13 = [v11 animations];
  if (v13)
  {
    v14 = v13;
    sub_1AF0D4478(0, &qword_1EB63D7D0);
    v15 = sub_1AFDFD418();

    if (!(v15 >> 62))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_8:
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }
  }

  v16 = sub_1AFDFE108();
  if (!v16)
  {
    goto LABEL_17;
  }

LABEL_9:
  for (i = 0; i != v16; ++i)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1B2719C70](i, v15);
    }

    else
    {
      v18 = *(v15 + 8 * i + 32);
    }

    v19 = v18;
    sub_1AF6EAA88(a1, v18, a3, a4);
  }

LABEL_17:
}

unint64_t sub_1AF6EAC88(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = [a2 name];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1AFDFCEF8();
    v11 = v10;
  }

  else
  {
    v12 = [a1 name];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1AFDFCEF8();
      v16 = v15;

      MEMORY[0x1B2718AE0](v14, v16);
    }

    else
    {
      v17 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v17);
    }

    v9 = 0x2D6873656DLL;
    v11 = 0xE500000000000000;
  }

  v18 = [a2 mesh];
  if (!v18)
  {

LABEL_43:
    v57 = 0;
    v58 = 0xFFFFFFFFLL;
    return v57 | v58;
  }

  v19 = v18;
  v20 = CFXMTLCreateSystemDefaultDevice();
  v21 = sub_1AF6E5844(v19, a3, v20);
  if (!v21)
  {

    swift_unknownObjectRelease();
    goto LABEL_43;
  }

  v22 = v21;
  v75 = v19;
  v23 = *a5;
  ++*(*a5 + 56);
  v24 = [a2 materials];
  sub_1AF0D4478(0, &qword_1ED72E0B0);
  v25 = sub_1AFDFD418();

  v77 = v25;
  if (v25 >> 62)
  {
    v26 = sub_1AFDFE108();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = v9;
  v74 = v22;
  if (v26)
  {
    v76 = a2;
    v27 = 0;
    v28 = v25;
    v80 = v25 & 0xC000000000000001;
    v29 = MEMORY[0x1E69E7CC0];
    v81 = v26;
    while (1)
    {
      if (v80)
      {
        v30 = MEMORY[0x1B2719C70](v27, v28);
      }

      else
      {
        v30 = *(v28 + 8 * v27 + 32);
      }

      v31 = v30;
      v32 = *(v23 + 24);
      if (!*(v32 + 16))
      {
        goto LABEL_19;
      }

      v33 = sub_1AF41A5E0(v31);
      if ((v34 & 1) == 0)
      {
        break;
      }

      v35 = (*(v32 + 56) + 8 * v33);
      LODWORD(v37) = *v35;
      LODWORD(v36) = v35[1];

LABEL_34:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1AF4217DC(0, *(v29 + 2) + 1, 1, v29);
      }

      v55 = *(v29 + 2);
      v54 = *(v29 + 3);
      if (v55 >= v54 >> 1)
      {
        v29 = sub_1AF4217DC(v54 > 1, v55 + 1, 1, v29);
      }

      ++v27;

      *(v29 + 2) = v55 + 1;
      v56 = &v29[8 * v55];
      *(v56 + 8) = v37;
      *(v56 + 9) = v36;
      if (v81 == v27)
      {
        goto LABEL_45;
      }
    }

LABEL_19:
    v37 = sub_1AF6EB410(v31, a3, a4, a5);
    v38 = [v31 name];
    if (v38)
    {
      v39 = v38;
      sub_1AFDFCEF8();
    }

    else
    {
      v40 = [v76 name];
      if (v40)
      {
        v41 = v40;
        v42 = sub_1AFDFCEF8();
        v44 = v43;
      }

      else
      {
        v44 = 0xE100000000000000;
        v42 = 63;
      }

      MEMORY[0x1B2718AE0](v42, v44);

      MEMORY[0x1B2718AE0](45, 0xE100000000000000);
      v45 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v45);
    }

    v36 = HIDWORD(v37);
    if (HIDWORD(v37) || v37 != -1)
    {

      MEMORY[0x1EEE9AC00](v46, v47);
      sub_1AFC75668(0, sub_1AF6EE3AC);
    }

    else
    {
    }

    v48 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(v23 + 24);
    *(v23 + 24) = 0x8000000000000000;
    sub_1AF8542E4(v37, v48, isUniquelyReferenced_nonNull_native);

    *(v23 + 24) = v83;

    v50 = *(v23 + 64);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    *(v23 + 64) = v50;
    if ((v51 & 1) == 0)
    {
      v50 = sub_1AF4217DC(0, *(v50 + 2) + 1, 1, v50);
      *(v23 + 64) = v50;
    }

    v53 = *(v50 + 2);
    v52 = *(v50 + 3);
    if (v53 >= v52 >> 1)
    {
      v50 = sub_1AF4217DC(v52 > 1, v53 + 1, 1, v50);
    }

    *(v50 + 2) = v53 + 1;
    *&v50[8 * v53 + 32] = v37;
    *(v23 + 64) = v50;
    v28 = v77;
    goto LABEL_34;
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_45:

  v59 = *(v74 + 40);
  v60 = *(v59 + 2);
  if (v60)
  {
    v61 = 0;
    v62 = *(v29 + 2);
    v63 = 56;
    do
    {
      if (v62)
      {
        v64 = v61 % *(v29 + 2);
        v65 = swift_isUniquelyReferenced_nonNull_native();
        *(v74 + 40) = v59;
        if ((v65 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v64 = 0;
        *(v74 + 40) = v59;
        if ((v66 & 1) == 0)
        {
LABEL_52:
          v59 = sub_1AFC0DA58(v59);
        }
      }

      ++v61;
      *&v59[v63] = v64;
      *(v74 + 40) = v59;
      v63 += 176;
    }

    while (v60 != v61);
  }

  v67 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  v68 = *v67;
  v69 = *(*v67 + 32);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  ecs_stack_allocator_push_snapshot(v69);
  v70 = ecs_stack_allocator_allocate(*(v68 + 32), 32, 8);
  *v70 = &type metadata for MeshModel;
  v70[1] = &off_1F2562500;
  v70[2] = &type metadata for Name;
  v70[3] = &off_1F2535068;
  v71 = sub_1AF635C1C(v70, 2, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v68, v74, v29, v73, v11);

  v57 = v71 & 0xFFFFFFFF00000000;
  ecs_stack_allocator_pop_snapshot(*(v68 + 32));

  swift_unknownObjectRelease();
  v58 = v71;
  return v57 | v58;
}

unint64_t sub_1AF6EB410(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for PBRParameters();
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0xFFFFFFFFLL;
  *(v8 + 40) = 16777473;
  *(v8 + 44) = 1;
  *(v8 + 45) = v73;
  *(v8 + 47) = v74;
  *(v8 + 48) = xmmword_1AFE20670;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0xFFFFFFFFLL;
  *(v8 + 88) = 16777473;
  *(v8 + 92) = 1;
  *(v8 + 93) = v75;
  *(v8 + 95) = v76;
  *(v8 + 96) = xmmword_1AFE20670;
  *(v8 + 112) = 0xFFFFFFFFLL;
  *(v8 + 120) = 16777473;
  *(v8 + 124) = 1;
  *(v8 + 132) = v77;
  *(v8 + 125) = v79;
  *(v8 + 127) = v80;
  *(v8 + 128) = 0;
  *(v8 + 140) = v78;
  *(v8 + 144) = xmmword_1AFE20670;
  *(v8 + 160) = 0xFFFFFFFFLL;
  *(v8 + 168) = 16777473;
  *(v8 + 172) = 1;
  *(v8 + 175) = v84;
  *(v8 + 173) = v83;
  *(v8 + 176) = 0;
  *(v8 + 180) = v81;
  *(v8 + 228) = v85;
  *(v8 + 188) = v82;
  *(v8 + 192) = xmmword_1AFE20670;
  *(v8 + 208) = 0xFFFFFFFFLL;
  *(v8 + 216) = 16777473;
  *(v8 + 220) = 1;
  *(v8 + 223) = v88;
  *(v8 + 221) = v87;
  *(v8 + 224) = 1065353216;
  *(v8 + 236) = v86;
  *(v8 + 240) = xmmword_1AFE20670;
  *(v8 + 256) = 0xFFFFFFFFLL;
  *(v8 + 264) = 16777473;
  *(v8 + 268) = 1;
  *(v8 + 271) = v92;
  *(v8 + 269) = v91;
  *(v8 + 272) = 1065353216;
  *(v8 + 284) = v90;
  *(v8 + 276) = v89;
  *(v8 + 288) = xmmword_1AFE20670;
  *(v8 + 304) = 0;
  v9 = [a1 diffuse];
  if (qword_1EB6371B0 != -1)
  {
    swift_once();
  }

  v10 = sub_1AF6EDC94(v9, a2, a3, a4);
  v60 = v11;
  v62 = a3;
  v12 = v10;
  v14 = v13;
  v59 = v15;

  *(v8 + 16) = v60;
  *(v8 + 32) = v12;
  *(v8 + 40) = v14;
  *(v8 + 48) = v59;
  v16 = [a1 metalness];
  v61 = a1;
  if (qword_1EB6371C0 != -1)
  {
    swift_once();
  }

  v71[0] = xmmword_1EB6C32B8;
  v71[1] = unk_1EB6C32C8;
  *v72 = xmmword_1EB6C32D8;
  *&v72[10] = *(&xmmword_1EB6C32D8 + 10);
  v17 = sub_1AF6EBA44(v16, a2, v62, v71, a4);
  v19 = v18;
  v21 = v20;
  v22 = v17;

  *(v8 + 160) = v19;
  *(v8 + 168) = v21;
  *(v8 + 176) = v22;
  *(v8 + 180) = v93;
  *(v8 + 188) = v94;
  *(v8 + 192) = xmmword_1AFE20670;
  v23 = [a1 roughness];
  v69[0] = xmmword_1EB6C32B8;
  v69[1] = unk_1EB6C32C8;
  v70[0] = xmmword_1EB6C32D8;
  *(v70 + 10) = *(&xmmword_1EB6C32D8 + 10);
  v24 = sub_1AF6EBA44(v23, a2, v62, v69, a4);
  v26 = v25;
  v28 = v27;
  v29 = v24;

  *(v8 + 112) = v26;
  *(v8 + 120) = v28;
  *(v8 + 128) = v29;
  *(v8 + 132) = v95;
  *(v8 + 140) = v96;
  *(v8 + 144) = xmmword_1AFE20670;
  v30 = [a1 normal];
  v67[0] = xmmword_1EB6C32B8;
  v67[1] = unk_1EB6C32C8;
  v68[0] = xmmword_1EB6C32D8;
  *(v68 + 10) = *(&xmmword_1EB6C32D8 + 10);
  v31 = sub_1AF6EBA44(v30, a2, v62, v67, a4);
  v33 = v32;
  v35 = v34;
  v36 = v31;

  *(v8 + 256) = v33;
  *(v8 + 264) = v35;
  *(v8 + 272) = v36;
  *(v8 + 276) = v97;
  *(v8 + 284) = v98;
  *(v8 + 288) = xmmword_1AFE20670;
  v37 = [a1 ambientOcclusion];
  v65[0] = xmmword_1EB6C32B8;
  v65[1] = unk_1EB6C32C8;
  v66[0] = xmmword_1EB6C32D8;
  *(v66 + 10) = *(&xmmword_1EB6C32D8 + 10);
  v38 = sub_1AF6EBA44(v37, a2, v62, v65, a4);
  v40 = v39;
  v42 = v41;
  v43 = v38;

  *(v8 + 208) = v40;
  *(v8 + 216) = v42;
  *(v8 + 224) = v43;
  *(v8 + 228) = v99;
  *(v8 + 236) = v100;
  *(v8 + 240) = xmmword_1AFE20670;
  v44 = [a1 emission];
  v45 = a2;
  v46 = sub_1AF6EDC94(v44, a2, v62, a4);
  v63 = v48;
  v64 = v47;
  v49 = v46;
  v51 = v50;

  *(v8 + 64) = v64;
  *(v8 + 80) = v49;
  *(v8 + 88) = v51;
  *(v8 + 96) = v63;
  *(v8 + 305) = [v61 isDoubleSided];
  type metadata accessor for RenderPipelineFactory();
  swift_allocObject();
  v52 = sub_1AF89DCA8(140);
  *(v52 + 88) = sub_1AF891C5C;
  *(v52 + 96) = 0;

  v53 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  v54 = *v53;
  v55 = *(*v53 + 32);

  ecs_stack_allocator_push_snapshot(v55);
  v56 = ecs_stack_allocator_allocate(*(v54 + 32), 16, 8);
  *v56 = &type metadata for Material;
  v56[1] = &off_1F253F848;
  v57 = sub_1AF639508(v56, 1, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v54, 0, v52, -1.0, 0, 1);

  ecs_stack_allocator_pop_snapshot(*(v54 + 32));

  sub_1AF6879B0(v57, v45, v8);

  return v57;
}

float sub_1AF6EBA44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_1AF6EC010(a1, a2, a3, a4, a5);
  if ([a1 contents])
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v25;
  v28 = v26;
  v6 = MEMORY[0x1E69E7CA0];
  if (*(&v26 + 1))
  {
    sub_1AF0D4478(0, &qword_1EB63C978);
    if (swift_dynamicCast())
    {
      v7 = [v24 CGColor];
      *&v8 = sub_1AF6DE474(v7);
      v23 = v8;

      [a1 intensity];
      v10 = v9;

      v11 = v10 * *&v23;
      goto LABEL_16;
    }
  }

  else
  {
    sub_1AF6EE5E4(&v27, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AF6EEA28);
  }

  if ([a1 contents])
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v25;
  v28 = v26;
  if (*(&v26 + 1))
  {
    if (swift_dynamicCast())
    {
      [a1 intensity];
      v11 = *&v24 * v12;
      goto LABEL_16;
    }
  }

  else
  {
    sub_1AF6EE5E4(&v27, &qword_1ED726850, v6 + 8, MEMORY[0x1E69E6720], sub_1AF6EEA28);
  }

  [a1 intensity];
  v11 = v13;
LABEL_16:
  if (qword_1EB637138 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB6C3120;
  v15 = [a1 magnificationFilter];
  if (*(v14 + 16))
  {
    sub_1AF449D38(v15);
  }

  v16 = [a1 magnificationFilter];
  if (*(v14 + 16))
  {
    sub_1AF449D38(v16);
  }

  if (qword_1EB637140 != -1)
  {
    swift_once();
  }

  v17 = qword_1EB6C3128;
  v18 = [a1 magnificationFilter];
  if (*(v17 + 16))
  {
    sub_1AF449D38(v18);
  }

  if (qword_1EB637148 != -1)
  {
    swift_once();
  }

  v19 = qword_1EB6C3130;
  v20 = [a1 wrapS];
  if (*(v19 + 16))
  {
    sub_1AF449D38(v20);
  }

  v21 = [a1 wrapT];
  if (*(v19 + 16))
  {
    sub_1AF449D38(v21);
  }

  return v11;
}

uint64_t sub_1AF6EBE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AFDFC128();
  v14 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1AFDFBF88() & 1) != 0 && (sub_1AFDFBFB8(), v8 = objc_allocWithZone(MEMORY[0x1E696AEC0]), v9 = sub_1AFDFCEC8(), , v10 = [v8 initWithString_], v9, LODWORD(v9) = objc_msgSend(v10, sel_isAbsolutePath), v10, !v9))
  {
    sub_1AFDFC098();
    sub_1AFDFBFB8();
    sub_1AFDFC088();

    return (*(v14 + 8))(v7, v4);
  }

  else
  {
    v11 = *(v14 + 16);

    return v11(a2, a1, v4);
  }
}

unint64_t sub_1AF6EC010(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v78[1] = a3;
  v79 = a5;
  v81 = a4;
  v82 = a2;
  v6 = sub_1AFDFC128();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v83 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v80 = v78 - v12;
  sub_1AF0D0CBC(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v78 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v78 - v23;
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = v78 - v28;
  v30 = *(v7 + 56);
  v30(v78 - v28, 1, 1, v6, v27);
  if ([a1 contents])
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v86 = 0u;
    v87 = 0u;
  }

  v88 = v86;
  v89 = v87;
  v31 = MEMORY[0x1E69E7CA0];
  if (*(&v87 + 1))
  {
    v32 = swift_dynamicCast();
    (v30)(v24, v32 ^ 1u, 1, v6);
    if ((*(v7 + 48))(v24, 1, v6) != 1)
    {
      sub_1AF456B8C(v29);
      (*(v7 + 32))(v29, v24, v6);
      (v30)(v29, 0, 1, v6);
      goto LABEL_9;
    }
  }

  else
  {
    sub_1AF6EE5E4(&v88, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AF6EEA28);
    (v30)(v24, 1, 1, v6);
  }

  sub_1AF456B8C(v24);
LABEL_9:
  if ([a1 contents])
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v86 = 0u;
    v87 = 0u;
  }

  v88 = v86;
  v89 = v87;
  if (*(&v87 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_1AFDFC018();

      sub_1AF456B8C(v29);
      (v30)(v20, 0, 1, v6);
      sub_1AF6EE3D0(v20, v29);
    }
  }

  else
  {
    sub_1AF6EE5E4(&v88, &qword_1ED726850, v31 + 8, MEMORY[0x1E69E6720], sub_1AF6EEA28);
  }

  sub_1AF456C4C(v29, v16);
  v33 = (*(v7 + 48))(v16, 1, v6);
  v34 = v82;
  if (v33 == 1)
  {
    sub_1AF456B8C(v16);
    if ([a1 contents])
    {
      sub_1AFDFDFB8();
      swift_unknownObjectRelease();
    }

    else
    {
      v86 = 0u;
      v87 = 0u;
    }

    v46 = v81;
    v88 = v86;
    v89 = v87;
    if (*(&v87 + 1))
    {
      if (swift_dynamicCast())
      {
        v47 = v84;
        v48 = v85;
        v49 = *v79;
        v50 = *(*v79 + 32);
        if (*(v50 + 16))
        {

          v51 = sub_1AF41A520(v47, v48);
          if (v52)
          {
            v53 = (*(v50 + 56) + 8 * v51);
            LODWORD(v36) = *v53;
            v44 = v53[1];
            sub_1AF439ED8(v47, v48);

            sub_1AF456B8C(v29);
            return v36 | (v44 << 32);
          }
        }

        v68 = **(v34 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        v69 = sub_1AF8DC244();
        sub_1AF43C9F0(v47, v48);
        LOBYTE(v88) = 1;
        v36 = sub_1AFD06760(v69, 0x100000000uLL, v68, v47, v48);
        sub_1AF439ED8(v47, v48);

        v70 = *(v46 + 24);
        if ((v70 & 0x80000000) == 0)
        {
          sub_1AF6803DC(v36, v34, *(v46 + 8), *(v46 + 16), v70 & 1);
        }

        v71 = *(v46 + 57);
        if (v71 != 3)
        {
          sub_1AF680648(v36, v34, *(v46 + 32), *(v46 + 40), *(v46 + 48), *(v46 + 56) & 1 | (v71 << 8));
        }

        v44 = HIDWORD(v36);
        sub_1AF43C9F0(v47, v48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v88 = *(v49 + 32);
        *(v49 + 32) = 0x8000000000000000;
        sub_1AF853FEC(v36, v47, v48, isUniquelyReferenced_nonNull_native);
        sub_1AF439ED8(v47, v48);
        *(v49 + 32) = v88;

        v73 = *(v49 + 64);
        v74 = swift_isUniquelyReferenced_nonNull_native();
        *(v49 + 64) = v73;
        if ((v74 & 1) == 0)
        {
          v73 = sub_1AF4217DC(0, *(v73 + 2) + 1, 1, v73);
          *(v49 + 64) = v73;
        }

        v76 = *(v73 + 2);
        v75 = *(v73 + 3);
        if (v76 >= v75 >> 1)
        {
          *(v49 + 64) = sub_1AF4217DC(v75 > 1, v76 + 1, 1, v73);
        }

        sub_1AF439ED8(v47, v48);
        sub_1AF456B8C(v29);
        v77 = *(v49 + 64);
        *(v77 + 16) = v76 + 1;
        *(v77 + 8 * v76 + 32) = v36;
        *(v49 + 64) = v77;
        return v36 | (v44 << 32);
      }
    }

    else
    {
      sub_1AF6EE5E4(&v88, &qword_1ED726850, v31 + 8, MEMORY[0x1E69E6720], sub_1AF6EEA28);
    }

    sub_1AF456B8C(v29);
    v44 = 0;
    LODWORD(v36) = -1;
    return v36 | (v44 << 32);
  }

  v35 = v80;
  (*(v7 + 32))(v80, v16, v6);
  v36 = v83;
  sub_1AF6EBE44(v35, v83);
  v37 = *v79;
  v38 = *(*v79 + 40);
  v39 = v81;
  if (*(v38 + 16))
  {

    v40 = sub_1AF41A390(v36);
    if (v41)
    {
      v42 = (*(v38 + 56) + 8 * v40);
      v43 = v36;
      LODWORD(v36) = *v42;
      v44 = v42[1];

      v45 = *(v7 + 8);
      v45(v80, v6);
      sub_1AF456B8C(v29);
      v45(v43, v6);
      return v36 | (v44 << 32);
    }
  }

  v54 = **(v34 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  v55 = sub_1AF8DC244();
  MEMORY[0x1EEE9AC00](v55, v56);
  v78[-4] = v36;
  LOWORD(v78[-3]) = 0;
  v78[-2] = v39;
  LOBYTE(v88) = 1;
  v36 = sub_1AF6ECAAC(v57, 0x100000000uLL, sub_1AF6E5454, &v78[-6], v54);

  v58 = *(v39 + 24);
  if ((v58 & 0x80000000) == 0)
  {
    sub_1AF6803DC(v36, v34, *(v39 + 8), *(v39 + 16), v58 & 1);
  }

  v59 = *(v39 + 57);
  if (v59 != 3)
  {
    sub_1AF680648(v36, v34, *(v39 + 32), *(v39 + 40), *(v39 + 48), *(v39 + 56) & 1 | (v59 << 8));
  }

  v44 = HIDWORD(v36);
  v60 = swift_isUniquelyReferenced_nonNull_native();
  *&v88 = *(v37 + 40);
  *(v37 + 40) = 0x8000000000000000;
  sub_1AF85414C(v36, v83, v60);
  *(v37 + 40) = v88;

  v61 = *(v37 + 64);
  v62 = swift_isUniquelyReferenced_nonNull_native();
  *(v37 + 64) = v61;
  if ((v62 & 1) == 0)
  {
    v61 = sub_1AF4217DC(0, *(v61 + 2) + 1, 1, v61);
    *(v37 + 64) = v61;
  }

  v64 = *(v61 + 2);
  v63 = *(v61 + 3);
  if (v64 >= v63 >> 1)
  {
    *(v37 + 64) = sub_1AF4217DC(v63 > 1, v64 + 1, 1, v61);
  }

  v65 = *(v7 + 8);
  v65(v80, v6);
  sub_1AF456B8C(v29);
  v66 = *(v37 + 64);
  *(v66 + 16) = v64 + 1;
  *(v66 + 8 * v64 + 32) = v36;
  *(v37 + 64) = v66;
  v65(v83, v6);
  return v36 | (v44 << 32);
}

void *sub_1AF6EC9C8()
{
  result = sub_1AF43C668(&unk_1F24FEC00);
  qword_1EB6C3120 = result;
  return result;
}

void *sub_1AF6EC9F0()
{
  result = sub_1AF43C728(&unk_1F24FEC50);
  qword_1EB6C3128 = result;
  return result;
}

void *sub_1AF6ECA18()
{
  result = sub_1AF43C740(&unk_1F24FECA0);
  qword_1EB6C3130 = result;
  return result;
}

uint64_t sub_1AF6ECAAC(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  ecs_stack_allocator_push_snapshot(*(a5 + 32));
  v9 = *(a1 + 16);
  v10 = 16 * v9;
  v11 = ecs_stack_allocator_allocate(*(a5 + 32), 16 * v9 + 48, 8);
  *v11 = &type metadata for TextureFileAsset;
  v11[1] = &off_1F2544090;
  v11[2] = &type metadata for TextureLoadPolicy;
  v11[3] = &off_1F2543D30;
  v11[4] = &type metadata for TextureLoadingOptions;
  v11[5] = &off_1F2543FE0;
  if (!v9)
  {
    v19 = 3;
    goto LABEL_18;
  }

  if (v9 <= 0x13 || ((v12 = (v11 + 6), v13 = 2 * (v9 - 1), v14 = &v11[v13 + 6], v15 = &v11[v13 + 7], v14 >= (v11 + 6)) ? (v16 = v15 >= (v11 + 7)) : (v16 = 0), v16 ? (v17 = (v9 - 1) >> 60 == 0) : (v17 = 0), !v17 || v12 < a1 + v10 + 32 && a1 + 32 < v12 + v10))
  {
    v18 = 0;
    v19 = 3;
LABEL_14:
    v20 = v9 - v18;
    v21 = (a1 + 16 * v18 + 32);
    do
    {
      v22 = *v21++;
      *&v11[2 * v19++] = v22;
      --v20;
    }

    while (v20);
    goto LABEL_18;
  }

  v18 = v9 & 0x1FFFFFFFFFFFFFFCLL;
  v19 = v9 | 3;
  v25 = v11 + 10;
  v26 = (a1 + 64);
  v27 = v9 & 0x1FFFFFFFFFFFFFFCLL;
  do
  {
    v29 = *(v26 - 2);
    v28 = *(v26 - 1);
    v31 = *v26;
    v30 = v26[1];
    v26 += 4;
    *(v25 - 2) = v29;
    *(v25 - 1) = v28;
    *v25 = v31;
    v25[1] = v30;
    v25 += 4;
    v27 -= 4;
  }

  while (v27);
  if (v9 != v18)
  {
    goto LABEL_14;
  }

LABEL_18:
  v23 = sub_1AF637C90(v11, v19, MEMORY[0x1E69E7CC0], 1, a2 | ((HIDWORD(a2) & 1) << 32), a5, a3);
  ecs_stack_allocator_pop_snapshot(*(a5 + 32));
  return v23;
}

uint64_t sub_1AF6ECC88(uint64_t a1, void *a2)
{
  v57 = a2;
  sub_1AF0D4E74();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AFDFC298();
  v55 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AFDFC128();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_opt_self();
  v51 = [v17 immediateMode];
  [v17 setImmediateMode_];
  sub_1AF0D4478(0, &qword_1ED7307E8);
  (*(v13 + 16))(v16, a1, v12);
  sub_1AF6EE4F8();
  inited = swift_initStackObject();
  v54 = xmmword_1AFE431C0;
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = @"kSceneSourceCheckConsistency";
  *(inited + 64) = MEMORY[0x1E69E6370];
  *(inited + 40) = 0;
  v19 = @"kSceneSourceCheckConsistency";
  v20 = sub_1AF43C074(inited);
  swift_setDeallocating();
  sub_1AF6EE5E4(inited + 32, &qword_1EB638288, type metadata accessor for VFXWorldLoaderOption, MEMORY[0x1E69E7CA0] + 8, sub_1AF6EE578);
  v21 = sub_1AF6E8B38(v16, v20);
  v24 = v55;
  v25 = v57;
  v56 = v11;
  if (v21)
  {
    v49 = v17;
    v50 = v21;
    v26 = [v21 rootNode];
    v27 = MEMORY[0x1E69E7CC0];
    if (v25)
    {
      v27 = v25;
    }

    v28 = v27[2];
    v48 = v27;
    if (v28)
    {
      v29 = v27 + 4;
      v53 = 0x80000001AFF30670;
      v52 = (v24 + 32);

      do
      {
        v36 = *v29;
        v57 = v29 + 1;
        v37 = [v26 childNodes];
        sub_1AF0D4478(0, &qword_1ED72F7F0);
        v38 = sub_1AFDFD418();

        if (v38 >> 62)
        {
          v39 = sub_1AFDFE108();
        }

        else
        {
          v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v36 >= v39)
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v44 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            swift_once();
          }

          v55 = v26;
          if (qword_1ED730E98 != -1)
          {
            swift_once();
          }

          sub_1AF0D0CBC(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
          v30 = swift_allocObject();
          *(v30 + 16) = v54;
          *(v30 + 56) = MEMORY[0x1E69E6158];
          *(v30 + 64) = sub_1AF0D544C();
          *(v30 + 32) = 0xD000000000000011;
          v31 = v53;
          *(v30 + 40) = v53;
          sub_1AFDFC4C8();

          sub_1AFDFC288();
          v32 = v4[12];
          v33 = v4[16];
          v34 = v4;
          v35 = &v7[v4[20]];
          (*v52)(v7, v56, v8);
          v7[v32] = v44;
          *&v7[v33] = 0;
          *v35 = 0xD000000000000011;
          *(v35 + 1) = v31;
          v4 = v34;
          sub_1AFDFC608();

          sub_1AF0D54A0(v7);
          v26 = v55;
        }

        else
        {
          v40 = [v26 childNodes];
          v41 = sub_1AFDFD418();

          if ((v41 & 0xC000000000000001) != 0)
          {
            v42 = MEMORY[0x1B2719C70](v36, v41);
          }

          else
          {
            v42 = *(v41 + 8 * v36 + 32);
          }

          v43 = v42;

          v26 = v43;
        }

        --v28;
        v29 = v57;
      }

      while (v28);
    }

    else
    {
    }

    [v26 flattenedCopy];
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
    sub_1AF0D4478(0, &qword_1ED72F7F0);
    if (swift_dynamicCast())
    {

      v22 = v58;
      v17 = v49;
      goto LABEL_3;
    }

    v45 = v26;
    v17 = v49;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v46 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v47 = v46;
      swift_once();
      v46 = v47;
    }

    v59 = 0;
    sub_1AF0D4F18(v46, &v59, 0xD000000000000017, 0x80000001AFF30690);
  }

  v22 = 0;
LABEL_3:
  [v17 setImmediateMode_];
  return v22;
}

uint64_t sub_1AF6ED424(void *a1)
{
  type metadata accessor for VertexLayoutDescriptor();
  swift_allocObject();
  sub_1AF8C2800();
  v2 = v1;
  sub_1AF0D0CBC(0, &qword_1EB63D7B8, sub_1AF6EE464, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C5F0;
  *(v3 + 32) = 0;
  *(v3 + 40) = @"kGeometrySourceSemanticPosition";
  *(v3 + 48) = xmmword_1AFE21110;
  *(v3 + 64) = @"kGeometrySourceSemanticNormal";
  *(v3 + 72) = xmmword_1AFE72010;
  *(v3 + 88) = @"kGeometrySourceSemanticTangent";
  *(v3 + 96) = xmmword_1AFE72020;
  *(v3 + 112) = @"kGeometrySourceSemanticTexcoord";
  *(v3 + 120) = xmmword_1AFE4C400;
  *(v3 + 136) = @"kGeometrySourceSemanticTexcoord";
  *(v3 + 144) = xmmword_1AFE72030;
  *(v3 + 160) = @"kGeometrySourceSemanticTexcoord";
  *(v3 + 168) = xmmword_1AFE72040;
  *(v3 + 184) = @"kGeometrySourceSemanticTexcoord";
  *(v3 + 192) = xmmword_1AFE431E0;
  *(v3 + 208) = @"kGeometrySourceSemanticColor";
  *(v3 + 216) = 0;
  v4 = sub_1AF43C5A0(v3);
  swift_setDeallocating();
  sub_1AF6EE464();
  v5 = @"kGeometrySourceSemanticTexcoord";
  v6 = @"kGeometrySourceSemanticPosition";
  v7 = @"kGeometrySourceSemanticNormal";
  v8 = @"kGeometrySourceSemanticTangent";
  v9 = @"kGeometrySourceSemanticColor";
  swift_arrayDestroy();
  v10 = 0x20u;
  swift_deallocClassInstance();
  v93 = 0;
  v92 = MEMORY[0x1E69E7CC0];
  do
  {
    if (!v4[2])
    {
      goto LABEL_3;
    }

    v11 = *(&unk_1F24FEB90 + v10);
    v12 = sub_1AF449D38(v11);
    if ((v13 & 1) == 0)
    {
      goto LABEL_3;
    }

    v14 = v4[7] + 16 * v12;
    v15 = *(v14 + 8);
    v16 = *v14;
    v17 = [a1 meshSourcesForSemantic_];
    sub_1AF0D4478(0, &qword_1EB638210);
    v18 = sub_1AFDFD418();

    if (v18 >> 62)
    {
      if (v15 >= sub_1AFDFE108())
      {
LABEL_2:

        goto LABEL_3;
      }
    }

    else if (v15 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_2;
    }

    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1B2719C70](v15, v18);
    }

    else
    {
      v19 = *(v18 + 8 * v15 + 32);
    }

    v20 = v19;

    v21 = *(v2 + 112);
    v22 = *(v2 + 128);
    v23 = *(v2 + 144);
    v24 = *(v2 + 160);
    v25 = *(v2 + 168);
    v26 = *(v2 + 172);
    v94 = *(v2 + 96);
    v95 = v21;
    v96 = v22;
    v97 = v23;
    *&v98 = v24;
    DWORD2(v98) = v25;
    WORD6(v98) = v26;
    v27 = &v94 + 8 * v11;
    v28 = *(v27 + 2);
    v29 = v2 + 96 + 8 * v11;
    *v29 = *v27;
    *(v29 + 4) = v28;
    *(v29 + 6) = v93;
    v30 = [v20 dataOffset];
    v31 = *(v2 + 112);
    v32 = *(v2 + 128);
    v33 = *(v2 + 144);
    v34 = *(v2 + 160);
    v94 = *(v2 + 96);
    v95 = v31;
    v96 = v32;
    v97 = v33;
    v98 = v34;
    v35 = *(v27 + 1);
    *v29 = v30;
    *(v29 + 4) = v35;
    if ([v20 floatComponents])
    {
      v36 = [v20 componentsPerVector];
      if (v36 > 2)
      {
        if (v36 == 3)
        {
          v68 = *(v2 + 112);
          v69 = *(v2 + 128);
          v70 = *(v2 + 144);
          v71 = *(v2 + 160);
          v72 = *(v2 + 168);
          v73 = *(v2 + 172);
          v94 = *(v2 + 96);
          v95 = v68;
          v96 = v69;
          v97 = v70;
          *&v98 = v71;
          *(&v98 + 1) = __PAIR64__(v73, v72);
          v74 = &v94 + 8 * v11;
          v75 = *v74;
          v45 = *(v74 + 3);
          *v29 = v75;
          v46 = 30;
        }

        else
        {
          if (v36 != 4)
          {
LABEL_23:
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            *&v94 = 0;
            *(&v94 + 1) = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF30630);
            [v20 componentsPerVector];
            v56 = sub_1AFDFEA08();
            MEMORY[0x1B2718AE0](v56);

            MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF30650);
            v57 = *(&v94 + 1);
            v90 = v94;
            v58 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            *&v94 = 0;
            sub_1AF0D4F18(v58, &v94, v90, v57);

            v59 = [v20 0x1FC340CE8];
            goto LABEL_32;
          }

          v48 = *(v2 + 112);
          v49 = *(v2 + 128);
          v50 = *(v2 + 144);
          v51 = *(v2 + 160);
          v52 = *(v2 + 168);
          v53 = *(v2 + 172);
          v94 = *(v2 + 96);
          v95 = v48;
          v96 = v49;
          v97 = v50;
          *&v98 = v51;
          *(&v98 + 1) = __PAIR64__(v53, v52);
          v54 = &v94 + 8 * v11;
          v55 = *v54;
          v45 = *(v54 + 3);
          *v29 = v55;
          v46 = 31;
        }
      }

      else if (v36 == 1)
      {
        v60 = *(v2 + 112);
        v61 = *(v2 + 128);
        v62 = *(v2 + 144);
        v63 = *(v2 + 160);
        v64 = *(v2 + 168);
        v65 = *(v2 + 172);
        v94 = *(v2 + 96);
        v95 = v60;
        v96 = v61;
        v97 = v62;
        *&v98 = v63;
        *(&v98 + 1) = __PAIR64__(v65, v64);
        v66 = &v94 + 8 * v11;
        v67 = *v66;
        v45 = *(v66 + 3);
        *v29 = v67;
        v46 = 28;
      }

      else
      {
        if (v36 != 2)
        {
          goto LABEL_23;
        }

        v37 = *(v2 + 112);
        v38 = *(v2 + 128);
        v39 = *(v2 + 144);
        v40 = *(v2 + 160);
        v41 = *(v2 + 168);
        v42 = *(v2 + 172);
        v94 = *(v2 + 96);
        v95 = v37;
        v96 = v38;
        v97 = v39;
        *&v98 = v40;
        *(&v98 + 1) = __PAIR64__(v42, v41);
        v43 = &v94 + 8 * v11;
        v44 = *v43;
        v45 = *(v43 + 3);
        *v29 = v44;
        v46 = 29;
      }

      *(v29 + 4) = v46;
      *(v29 + 6) = v45;
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v47 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v87 = v47;
        swift_once();
        v47 = v87;
      }

      *&v94 = 0;
      sub_1AF0D4F18(v47, &v94, 0xD000000000000025, 0x80000001AFF30600);
    }

    v59 = [v20 0x1FC340CE8];
LABEL_32:
    if (v59)
    {
      v76 = [v20 0x1FC340CE8];
    }

    else
    {
      v76 = 4 * [v20 componentsPerVector];
    }

    v77 = *(v2 + 32);
    v78 = *(v2 + 48);
    v79 = *(v2 + 64);
    v80 = *(v2 + 80);
    v94 = *(v2 + 16);
    v95 = v77;
    v96 = v78;
    v97 = v79;
    v98 = v80;
    v81 = *(&v94 + 2 * v93 + 1);
    v82 = (v2 + 16 + 8 * v93);
    *v82 = v76;
    v82[1] = v81;
    *&v94 = 0;
    *(&v94 + 1) = 0xE000000000000000;
    MEMORY[0x1B2718AE0](0x2D726566667542, 0xE700000000000000);
    type metadata accessor for vfx_vertex_attribute(0);
    sub_1AFDFE458();
    v83 = v94;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v92 = sub_1AF422FB4(0, v92[2] + 1, 1, v92);
    }

    v85 = v92[2];
    v84 = v92[3];
    if (v85 >= v84 >> 1)
    {
      v92 = sub_1AF422FB4(v84 > 1, v85 + 1, 1, v92);
    }

    ++v93;

    v92[2] = v85 + 1;
    v86 = &v92[3 * v85];
    v86[4] = v20;
    *(v86 + 5) = v83;
LABEL_3:
    v10 += 8;
  }

  while (v10 != 112);

  v88 = sub_1AF8C8F18(v2);

  return v88;
}

unint64_t sub_1AF6EDC94(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (qword_1EB6371B0 != -1)
  {
    v18 = a2;
    v19 = a3;
    swift_once();
    a2 = v18;
    a3 = v19;
  }

  v25[0] = xmmword_1EB6C3278;
  v25[1] = unk_1EB6C3288;
  v26[0] = xmmword_1EB6C3298;
  *(v26 + 10) = *(&xmmword_1EB6C3298 + 10);
  v6 = sub_1AF6EC010(a1, a2, a3, v25, a4);
  if ([a1 contents])
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (*(&v23 + 1))
  {
    sub_1AF0D4478(0, &qword_1EB63C978);
    if (swift_dynamicCast())
    {
      v7 = [v21 CGColor];
      sub_1AF6DE474(v7);

      [a1 intensity];
      v20 = v8;

      goto LABEL_11;
    }
  }

  else
  {
    sub_1AF6EE5E4(v24, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AF6EEA28);
  }

  [a1 intensity];
LABEL_11:
  if (qword_1EB637138 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB6C3120;
  v10 = [a1 magnificationFilter];
  if (*(v9 + 16))
  {
    sub_1AF449D38(v10);
  }

  v11 = [a1 magnificationFilter];
  if (*(v9 + 16))
  {
    sub_1AF449D38(v11);
  }

  if (qword_1EB637140 != -1)
  {
    swift_once();
  }

  v12 = qword_1EB6C3128;
  v13 = [a1 magnificationFilter];
  if (*(v12 + 16))
  {
    sub_1AF449D38(v13);
  }

  if (qword_1EB637148 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB6C3130;
  v15 = [a1 wrapS];
  if (*(v14 + 16))
  {
    sub_1AF449D38(v15);
  }

  v16 = [a1 wrapT];
  if (*(v14 + 16))
  {
    sub_1AF449D38(v16);
  }

  return v6;
}

void sub_1AF6EE058(void *a1, unint64_t a2, uint64_t a3)
{
  if ([a1 usesOrthographicProjection])
  {
    [a1 orthographicScale];
    v27.n128_u32[0] = v6;
    v27.n128_u8[4] = 0;
    v27.n128_u64[1] = 0x461C40003DCCCCCDLL;
    v28 = 1;
    if (HIDWORD(a2) || a2 != -1)
    {
      v7 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v7)
      {
        v8 = *(v7 + 80);
        swift_unknownObjectWeakLoadStrong();
        v7 = *(v7 + 56);
      }

      else
      {
        v8 = 0;
      }

      swift_unknownObjectUnownedInit();
      *&v30 = a3;
      *v31 = v7;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v31[8] = v8;
      sub_1AFC76AFC(&v30, &v27, a2);
      sub_1AF579490(&v30);
      if ((v8 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v9 = [a1 depthOfField];
    if (v9)
    {
      v10 = v9;
      [v9 fStop];
      v12 = v11;
    }

    else
    {
      v12 = 5.0;
    }

    [a1 focalLength];
    [a1 focusDistance];
    v14 = v13;
    [a1 sensorHeight];
    v16 = v15;
    v17 = v15 * 0.5;
    [a1 fieldOfView];
    v19 = tanf(((v18 * 3.1416) / 180.0) * 0.5);
    *&v20 = v17 / v19;
    v21 = atanf(v17 / (v17 / v19));
    *&v30 = v21 + v21;
    *(&v30 + 4) = __PAIR64__(v14, v20);
    *(&v30 + 3) = v16;
    *v31 = v12;
    *&v31[4] = *v29;
    *&v31[16] = *&v29[12];
    if (HIDWORD(a2) || a2 != -1)
    {
      v22 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v22)
      {
        v23 = *(v22 + 80);
        swift_unknownObjectWeakLoadStrong();
        v22 = *(v22 + 56);
      }

      else
      {
        v23 = 0;
      }

      swift_unknownObjectUnownedInit();
      v25[0] = a3;
      v25[2] = v22;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v26 = v23;
      sub_1AFC76AE4(v25, &v30, a2);
      sub_1AF579490(v25);
      if ((v23 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      v24 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v24 ^ 1);
LABEL_19:
    }
  }
}

uint64_t sub_1AF6EE3D0(uint64_t a1, uint64_t a2)
{
  sub_1AF0D0CBC(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1AF6EE464()
{
  if (!qword_1EB63D7C0)
  {
    type metadata accessor for vfx_vertex_attribute(255);
    sub_1AF6EE578(255, &qword_1EB638220, type metadata accessor for VFXMeshSourceSemantic);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB63D7C0);
    }
  }
}

void sub_1AF6EE4F8()
{
  if (!qword_1EB63D7C8)
  {
    sub_1AF6EE578(255, &qword_1EB638288, type metadata accessor for VFXWorldLoaderOption);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63D7C8);
    }
  }
}

void sub_1AF6EE578(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1AF6EE5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1AF6EE644()
{
  result = qword_1EB638280;
  if (!qword_1EB638280)
  {
    type metadata accessor for VFXWorldLoaderOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB638280);
  }

  return result;
}

uint64_t sub_1AF6EE69C(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v8 = [a2 keyPath];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = sub_1AFDFCEF8();
  v12 = v11;

  v13 = v10 == 0x6E6F697469736F70 && v12 == 0xE800000000000000;
  if (!v13 && (sub_1AFDFEE28() & 1) == 0)
  {
    v21 = v10 == 0x7461746E6569726FLL && v12 == 0xEB000000006E6F69;
    if (v21 || (sub_1AFDFEE28() & 1) != 0)
    {

      v22 = *(a3 + 24);
      KeyPath = swift_getKeyPath();
      sub_1AF6EA310(a2, a1, v22, KeyPath, 1, a4);
      goto LABEL_9;
    }

    if (v10 == 0x676E4172656C7565 && v12 == 0xEB0000000073656CLL || (sub_1AFDFEE28() & 1) != 0)
    {

      v14 = *(a3 + 24);
      v15 = swift_getKeyPath();
      v16 = sub_1AF636510;
      goto LABEL_8;
    }

    if (v10 == 0x656C616373 && v12 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
    {

      v14 = *(a3 + 24);
      v15 = swift_getKeyPath();
      v16 = sub_1AF636574;
      goto LABEL_8;
    }

LABEL_12:
    sub_1AF6EEA28(0, &qword_1ED722EE0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AFE431C0;
    sub_1AFDFE218();

    v19 = MEMORY[0x1E69E6158];
    sub_1AF6EEA28(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v20 = sub_1AFDFCF88();
    MEMORY[0x1B2718AE0](v20);

    *(v18 + 56) = v19;
    *(v18 + 32) = 0xD00000000000001FLL;
    *(v18 + 40) = 0x80000001AFF306B0;
    sub_1AFDFF258();
  }

  v14 = *(a3 + 24);
  v15 = swift_getKeyPath();
  v16 = sub_1AF6364AC;
LABEL_8:
  sub_1AF6E9C1C(a2, a1, v14, v15, a4, v16);
LABEL_9:
}

void sub_1AF6EEA28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF6EEA78(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = sub_1AF419914(a1, a2);
  if (v7)
  {
    v8 = *(*(v3 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1AF6EEAF4()
{

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF6EEB60(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 1701080942;
  if (a1 == 0xFFFFFFFF)
  {
    v8 = 0xE400000000000000;
  }

  else
  {

    v10 = sub_1AF3C9078(a1);
    v12 = v11;

    if (v12)
    {
      v7 = v10;
      v8 = v12;
    }

    else
    {
      v8 = 0xE400000000000000;
    }
  }

  v13 = OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_idToEntity;
  if (!*(*(v4 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_idToEntity) + 16))
  {
    return v7;
  }

  sub_1AF419914(v7, v8);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    return v7;
  }

  if (a4)
  {

    if (sub_1AFDFD178())
    {
      if (!*(*(v4 + v13) + 16))
      {
        goto LABEL_19;
      }

      sub_1AF419914(a3, a4);
      if ((v16 & 1) == 0)
      {
LABEL_18:

        goto LABEL_19;
      }
    }
  }

  v17 = OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_counter;
  ++*(v4 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_counter);

  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  v18 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v18);

  a3 = v7;
  if (*(*(v4 + v13) + 16))
  {

    sub_1AF419914(v7, v8);
    v20 = v19;

    if (v20)
    {
      while (1)
      {

        ++*(v4 + v17);

        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
        v21 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v21);

        a3 = v7;

        if (!*(*(v4 + v13) + 16))
        {
          goto LABEL_19;
        }

        sub_1AF419914(v7, v8);
        v23 = v22;

        if ((v23 & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    goto LABEL_18;
  }

LABEL_19:

  return a3;
}

unint64_t sub_1AF6EEE0C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1AF6EEB60(a1, a2, a5, a6);
  v10 = v9;
  v11 = OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_idToEntity;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a4 + v11);
  *(a4 + v11) = 0x8000000000000000;
  sub_1AF8564DC(a1, v8, v10, isUniquelyReferenced_nonNull_native);
  *(a4 + v11) = v16;

  v13 = OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_entityToId;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a4 + v13);
  *(a4 + v13) = 0x8000000000000000;
  result = sub_1AF856390(v8, v10, a1, v14);
  *(a4 + v13) = v17;
  return result;
}

uint64_t sub_1AF6EEEEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_entityToId);
  if (*(v4 + 16))
  {
    v5 = result;
    result = sub_1AF449D3C(result);
    if (v6)
    {
      v7 = (*(v4 + 56) + 16 * result);
      v9 = *v7;
      v8 = v7[1];
      if (HIDWORD(v5) || v5 != -1)
      {

        v10 = sub_1AF3CA3E4(v5);
        v12 = v11;

        if (v12)
        {
          if (v10)
          {
            *(v10 + 56) = v9;
            *(v10 + 64) = v8;
          }

          else
          {
          }

          MEMORY[0x1EEE9AC00](v13, v14);
          sub_1AFC75668(0, sub_1AF6EFBB8);
        }

        else
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF6EF0AC()
{
  v1 = OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_asset;
  v2 = sub_1AFDFC128();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SceneAssetRegistryEntry()
{
  result = qword_1EB63D7F0;
  if (!qword_1EB63D7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AF6EF1F0()
{
  result = sub_1AFDFC128();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1AF6EF2D8(void *a1, uint64_t a2)
{

  *a1 = a2;
  return result;
}

void sub_1AF6EF324(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1AF0D4E74();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v86[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1AFDFC298();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v86[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1AFDFC128();
  v20 = MEMORY[0x1EEE9AC00](v16, v17);
  v22 = &v86[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(v3 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_loaded) & 1) == 0)
  {
    v94 = v7;
    v95 = v12;
    v102 = a1;
    v91 = v15;
    v92 = v11;
    v93 = v10;
    *(v3 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_loaded) = 1;
    v98 = v19;
    v99 = v18;
    (*(v19 + 16))(v22, v3 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_asset, v18, v20);
    v23 = OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry__entityManager;
    v24 = *(v3 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry__entityManager);
    v25 = *(v3 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_options);
    v26 = *(v3 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_options + 8);

    v97 = v22;
    v27 = sub_1AF6DEFAC(v22, v24, v25, v26);
    v29 = v28;
    v31 = v30;

    if (v31)
    {
      v32 = v27;
    }

    else
    {
      v32 = 0;
    }

    if (v31)
    {
      v33 = v29;
    }

    else
    {
      v33 = 0;
    }

    v34 = MEMORY[0x1E69E7CC0];
    v35 = (v3 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry__rootNode);
    *v35 = v32;
    v35[1] = v33;
    v100 = v35;
    v103 = v23;
    v36 = *(v3 + v23);
    if (v31)
    {
      v37 = v31;
    }

    else
    {
      v37 = v34;
    }

    v38 = *(v36 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    v39 = *v38;
    v40 = *(*v38 + 32);

    ecs_stack_allocator_push_snapshot(v40);
    v41 = ecs_stack_allocator_allocate(*(v39 + 32), 64, 8);
    *v41 = &type metadata for Position;
    v41[1] = &off_1F252EE70;
    v41[2] = &type metadata for Orientation;
    v41[3] = &off_1F252C8A8;
    v41[4] = &type metadata for Scale1;
    v41[5] = &off_1F252F788;
    v41[6] = &type metadata for WorldTransform;
    v41[7] = &off_1F2529FC0;
    LOBYTE(v104[0]) = 1;
    v42 = sub_1AF639D38(v41, 4, v34, 1, 0x100000000uLL, v39, 0, xmmword_1AFE201A0, 1.0);
    ecs_stack_allocator_pop_snapshot(*(v39 + 32));

    v104[0] = 0x656372756F736572;
    v104[1] = 0xE900000000000073;
    if (HIDWORD(v42))
    {
      v43 = 0;
    }

    else
    {
      v43 = v42 == -1;
    }

    if (!v43)
    {

      MEMORY[0x1EEE9AC00](v44, v45);
      *&v86[-32] = v104;
      *&v86[-24] = v42;
      *&v86[-16] = v36;
      sub_1AFC75668(0, sub_1AF6AC768);
    }

    v46 = v100;
    v47 = v100[1];
    if (v47)
    {
      sub_1AF5ABF9C(*v100, v47, v42, v36);
    }

    v48 = *(v37 + 16);
    v49 = v103;
    if (v48)
    {
      v50 = (v37 + 32);
      v51 = *(v37 + 16);
      do
      {
        v52 = *v50++;
        sub_1AF5ABF9C(v42, v36, v52, *(v3 + v49));
        --v51;
      }

      while (v51);
    }

    v101 = v37;
    v53 = v46[1];
    if (v53)
    {
      v54 = *v46;

      sub_1AF5B1794(v54, v53, v3, v102, a2);
    }

    if (v48)
    {
      v102 = v3;
      v55 = 0;
      v56 = 0;
      v90 = 0x80000001AFF307A0;
      v95 += 4;
      v96 = 0;
      v57 = (v101 + 36);
      v58 = &unk_1ED72C000;
      v89 = xmmword_1AFE431C0;
      v59 = v48;
      while (1)
      {
        v60 = *(v57 - 1);
        v61 = *v57;
        v62 = *(v102 + v103);
        if (v60 == -1)
        {
          if (!v61)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v63 = v58[284];

          if ((v60 & 0x80000000) == 0 && *(v62 + v63 + 8) > v60)
          {
            v64 = *(v62 + v63) + 12 * v60;
            if (v61 == -1 || *(v64 + 8) == v61)
            {
              v65 = *(*(*(v62 + 88) + 8 * *(v64 + 6) + 32) + 16);
              v66 = *(v65 + 128);
              if (*(v66 + 16) && (v67 = sub_1AF449CB8(&type metadata for MeshModel), (v68 & 1) != 0))
              {
                v69 = *(*(v65 + 24) + 16 * *(*(v66 + 56) + 8 * v67) + 32);

                v58 = &unk_1ED72C000;
                if (v69 == &type metadata for MeshModel)
                {
                  if (v96)
                  {
                    if (qword_1ED730EA0 != -1)
                    {
                      swift_once();
                    }

                    v70 = sub_1AFDFDA28();
                    if (qword_1ED731058 != -1)
                    {
                      swift_once();
                    }

                    if (qword_1ED730E98 != -1)
                    {
                      swift_once();
                    }

                    sub_1AF6EFB60();
                    v71 = swift_allocObject();
                    *(v71 + 16) = v89;
                    *(v71 + 56) = MEMORY[0x1E69E6158];
                    *(v71 + 64) = sub_1AF0D544C();
                    *(v71 + 32) = 0xD00000000000005ELL;
                    *(v71 + 40) = v90;
                    sub_1AFDFC4C8();

                    v72 = v91;
                    sub_1AFDFC288();
                    v96 = v94[12];
                    v88 = v94[16];
                    v73 = v94[20];
                    v87 = v70;
                    v74 = v93;
                    v75 = &v93[v73];
                    (*v95)(v93, v72, v92);
                    *(v74 + v96) = v87;
                    *(v74 + v88) = 0;
                    *v75 = 0xD00000000000005ELL;
                    v75[1] = v90;
                    sub_1AFDFC608();

                    sub_1AF0D54A0(v74);
                    v58 = &unk_1ED72C000;
                  }

                  v55 = v60 | (v61 << 32);
                  v56 = v62;
                  v96 = v62;
                }
              }

              else
              {

                v58 = &unk_1ED72C000;
              }

              goto LABEL_26;
            }
          }
        }

LABEL_26:
        v57 += 2;
        if (!--v59)
        {
          v46 = v100;
          if (v96)
          {
            v76 = v100[1];
            if (v76)
            {
              sub_1AF5ABF9C(*v100, v76, v55, v96);
            }
          }

          v3 = v102;
          v77 = (v101 + 36);
          v78 = v103;
          while (1)
          {
            v79 = *(v77 - 1);
            v80 = *v77;
            if (v56)
            {
              v81 = v79 == v55 && v80 == HIDWORD(v55);
              v82 = v55;
              v83 = v56;
              if (v81)
              {
                goto LABEL_52;
              }
            }

            else
            {
              v83 = v46[1];
              if (!v83)
              {
                goto LABEL_52;
              }

              v82 = *v46;
            }

            sub_1AF5ABF9C(v82, v83, v79 | (v80 << 32), *(v3 + v78));
LABEL_52:
            v77 += 2;
            if (!--v48)
            {
              goto LABEL_62;
            }
          }
        }
      }
    }

LABEL_62:

    v84 = v46[1];
    if (v84)
    {
      v85 = *v46;

      sub_1AF5B18A4(v85, v84, v3);
    }

    (*(v98 + 8))(v97, v99);
  }
}

void sub_1AF6EFB60()
{
  if (!qword_1ED730B50)
  {
    sub_1AF0D5CF0();
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED730B50);
    }
  }
}

uint64_t sub_1AF6EFBE0(uint64_t a1, uint64_t a2)
{
  sub_1AF6EF324(a1, a2);
  v5 = *(v2 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_idToEntity);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_1AF419914(a1, a2);
  if (v7)
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1AF6EFC7C()
{
  type metadata accessor for ShaderRegistry();
  v0 = swift_allocObject();
  result = sub_1AF6EFCB8();
  qword_1EB6C2948 = v0;
  return result;
}

uint64_t sub_1AF6EFCB8()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = sub_1AF43B30C(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = sub_1AF43B434(v1);
  sub_1AF6AF358();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C3E0;
  sub_1AF6F2B0C(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
  v4 = v3;
  sub_1AF6F2C08(0, &qword_1ED722F10, sub_1AF6F2AA8, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  *(v5 + 72) = v4;
  v6 = swift_allocObject();
  *(v5 + 48) = v6;
  *(v6 + 16) = xmmword_1AFE21170;
  type metadata accessor for PropertyDescription();
  v7 = swift_allocObject();
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 1;
  *(v7 + 128) = 0;
  *(v7 + 136) = 0;
  *(v7 + 120) = 0;
  *(v7 + 216) = 0;
  KeyPath = swift_getKeyPath();
  *(v7 + 16) = 0x726F6C6F63;
  *(v7 + 24) = 0xE500000000000000;
  *(v7 + 32) = KeyPath;
  *(v7 + 40) = v4;
  *(v7 + 48) = 0;
  *(v7 + 56) = 1;
  *(v7 + 58) = 1024;
  *(v7 + 184) = 0;
  *(v7 + 188) = 1;
  *(v7 + 192) = 0;
  *(v7 + 196) = 1;
  *(v7 + 200) = 0x100003C23D70ALL;
  *(v7 + 208) = 1;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v7 + 96) = 0;
  *(v7 + 210) = 0;
  *(v7 + 144) = xmmword_1AFE55160;
  *(v7 + 168) = 0;
  *(v7 + 176) = 0;

  *(v7 + 160) = v5;

  *(v2 + 32) = v7;
  sub_1AF6F2658(0x69665F44326E6567, 0xEF726F6C6F436C6CLL, 0x6C7070612E6D6F63, 0xED00007866762E65, v2);

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE550E0;
  v10 = swift_allocObject();
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0u;
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 216) = 0;
  v11 = swift_getKeyPath();
  *(v10 + 16) = 3239529;
  *(v10 + 24) = 0xE300000000000000;
  *(v10 + 32) = v11;
  *(v10 + 40) = &type metadata for Entity;
  *(v10 + 48) = 0;
  *(v10 + 56) = 1;
  *(v10 + 58) = 1024;
  *(v10 + 184) = 0;
  *(v10 + 188) = 1;
  *(v10 + 192) = 0;
  *(v10 + 196) = 1;
  *(v10 + 200) = 0x1000100000000;
  *(v10 + 208) = 1;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v10 + 96) = 0;
  *(v10 + 210) = 0;
  *(v10 + 144) = xmmword_1AFE551B0;
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 160) = MEMORY[0x1E69E7CC0];

  *(v9 + 32) = v10;
  v12 = swift_allocObject();
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 216) = 0;
  v13 = swift_getKeyPath();
  *(v12 + 16) = 3305065;
  *(v12 + 24) = 0xE300000000000000;
  *(v12 + 32) = v13;
  *(v12 + 40) = &type metadata for Entity;
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
  *(v12 + 58) = 1024;
  *(v12 + 184) = 0;
  *(v12 + 188) = 1;
  *(v12 + 192) = 0;
  *(v12 + 196) = 1;
  *(v12 + 200) = 0x1000100000000;
  *(v12 + 208) = 1;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v12 + 96) = 0;
  *(v12 + 210) = 0;
  *(v12 + 144) = xmmword_1AFE551B0;
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 160) = MEMORY[0x1E69E7CC0];

  *(v9 + 40) = v12;
  sub_1AF6F2658(0x696D5F44326E6567, 0xE900000000000078, 0x6C7070612E6D6F63, 0xED00007866762E65, v9);

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE550E0;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0xE000000000000000;
  *(v15 + 72) = v4;
  v16 = swift_allocObject();
  *(v15 + 48) = v16;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v17 = swift_allocObject();
  *(v17 + 80) = 0u;
  *(v17 + 96) = 0u;
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 216) = 0;
  v18 = swift_getKeyPath();
  *(v17 + 16) = 0x31726F6C6F63;
  *(v17 + 24) = 0xE600000000000000;
  *(v17 + 32) = v18;
  *(v17 + 40) = v4;
  *(v17 + 48) = 0;
  *(v17 + 56) = 1;
  *(v17 + 58) = 1024;
  *(v17 + 184) = 0;
  *(v17 + 188) = 1;
  *(v17 + 192) = 0;
  *(v17 + 196) = 1;
  *(v17 + 200) = 0x100003C23D70ALL;
  *(v17 + 208) = 1;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v17 + 96) = 0;
  *(v17 + 210) = 0;
  *(v17 + 144) = xmmword_1AFE55160;
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 160) = v15;

  *(v14 + 32) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1AFE431C0;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0xE000000000000000;
  *(v19 + 72) = v4;
  v20 = swift_allocObject();
  *(v19 + 48) = v20;
  __asm { FMOV            V0.4S, #1.0 }

  v151 = _Q0;
  *(v20 + 16) = _Q0;
  v26 = swift_allocObject();
  *(v26 + 80) = 0u;
  *(v26 + 96) = 0u;
  *(v26 + 112) = 1;
  *(v26 + 128) = 0;
  *(v26 + 136) = 0;
  *(v26 + 120) = 0;
  *(v26 + 216) = 0;
  v27 = swift_getKeyPath();
  *(v26 + 16) = 0x32726F6C6F63;
  *(v26 + 24) = 0xE600000000000000;
  *(v26 + 32) = v27;
  *(v26 + 40) = v4;
  *(v26 + 48) = 0;
  *(v26 + 56) = 1;
  *(v26 + 58) = 1024;
  *(v26 + 184) = 0;
  *(v26 + 188) = 1;
  *(v26 + 192) = 0;
  *(v26 + 196) = 1;
  *(v26 + 200) = 0x100003C23D70ALL;
  *(v26 + 208) = 1;
  *(v26 + 64) = 0;
  *(v26 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v26 + 96) = 0;
  *(v26 + 210) = 0;
  *(v26 + 144) = xmmword_1AFE55160;
  *(v26 + 168) = 0;
  *(v26 + 176) = 0;

  *(v26 + 160) = v19;

  *(v14 + 40) = v26;
  sub_1AF6F2658(0x69645F44326E6567, 0xEA00000000006373, 0x6C7070612E6D6F63, 0xED00007866762E65, v14);

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1AFE550E0;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1AFE431C0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0xE000000000000000;
  *(v29 + 72) = v4;
  v30 = swift_allocObject();
  *(v29 + 48) = v30;
  *(v30 + 16) = xmmword_1AFE722B0;
  v31 = swift_allocObject();
  *(v31 + 80) = 0u;
  *(v31 + 96) = 0u;
  *(v31 + 112) = 1;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0;
  *(v31 + 120) = 0;
  *(v31 + 216) = 0;
  v32 = swift_getKeyPath();
  *(v31 + 16) = 0x31726F6C6F63;
  *(v31 + 24) = 0xE600000000000000;
  *(v31 + 32) = v32;
  *(v31 + 40) = v4;
  *(v31 + 48) = 0;
  *(v31 + 56) = 1;
  *(v31 + 58) = 1024;
  *(v31 + 184) = 0;
  *(v31 + 188) = 1;
  *(v31 + 192) = 0;
  *(v31 + 196) = 1;
  *(v31 + 200) = 0x1000100000000;
  *(v31 + 208) = 1;
  *(v31 + 64) = 0;
  *(v31 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v31 + 96) = 0;
  *(v31 + 210) = 0;
  *(v31 + 144) = xmmword_1AFE55160;
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;

  *(v31 + 160) = v29;

  *(v28 + 32) = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1AFE431C0;
  *(v33 + 32) = 0;
  *(v33 + 40) = 0xE000000000000000;
  *(v33 + 72) = v4;
  v34 = swift_allocObject();
  *(v33 + 48) = v34;
  *(v34 + 16) = xmmword_1AFE20BF0;
  v35 = swift_allocObject();
  *(v35 + 80) = 0u;
  *(v35 + 96) = 0u;
  *(v35 + 112) = 1;
  *(v35 + 128) = 0;
  *(v35 + 136) = 0;
  *(v35 + 120) = 0;
  *(v35 + 216) = 0;
  v36 = swift_getKeyPath();
  *(v35 + 16) = 0x32726F6C6F63;
  *(v35 + 24) = 0xE600000000000000;
  *(v35 + 32) = v36;
  *(v35 + 40) = v4;
  *(v35 + 48) = 0;
  *(v35 + 56) = 1;
  *(v35 + 58) = 1024;
  *(v35 + 184) = 0;
  *(v35 + 188) = 1;
  *(v35 + 192) = 0;
  *(v35 + 196) = 1;
  *(v35 + 200) = 0x1000100000000;
  *(v35 + 208) = 1;
  *(v35 + 64) = 0;
  *(v35 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v35 + 96) = 0;
  *(v35 + 210) = 0;
  *(v35 + 144) = xmmword_1AFE55160;
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;

  *(v35 + 160) = v33;

  *(v28 + 40) = v35;
  sub_1AF6F2658(0xD000000000000016, 0x80000001AFF30820, 0x6C7070612E6D6F63, 0xED00007866762E65, v28);

  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1AFE550F0;
  sub_1AF6F2B0C(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
  v39 = v38;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1AFE431C0;
  *(v40 + 32) = 0;
  *(v40 + 40) = 0xE000000000000000;
  *(v40 + 72) = v39;
  *(v40 + 48) = 0;
  v41 = swift_allocObject();
  *(v41 + 80) = 0u;
  *(v41 + 96) = 0u;
  *(v41 + 112) = 1;
  *(v41 + 120) = 0;
  *(v41 + 128) = 0;
  *(v41 + 136) = 0;
  *(v41 + 216) = 0;
  v42 = swift_getKeyPath();
  *(v41 + 16) = 829648752;
  *(v41 + 24) = 0xE400000000000000;
  *(v41 + 32) = v42;
  *(v41 + 40) = v39;
  *(v41 + 48) = 0;
  *(v41 + 56) = 1;
  *(v41 + 58) = 1024;
  *(v41 + 184) = -1082130432;
  *(v41 + 188) = 0;
  *(v41 + 192) = 0x40000000;
  *(v41 + 196) = 0;
  *(v41 + 200) = 1008981770;
  *(v41 + 204) = 0;
  *(v41 + 206) = 1;
  *(v41 + 208) = 1;
  *(v41 + 64) = 0;
  *(v41 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v41 + 96) = 0;
  *(v41 + 210) = 0;
  *(v41 + 144) = xmmword_1AFE22A20;
  *(v41 + 168) = 0;
  *(v41 + 176) = 0;

  *(v41 + 160) = v40;

  *(v37 + 32) = v41;
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1AFE431C0;
  *(v43 + 32) = 0;
  *(v43 + 40) = 0xE000000000000000;
  *(v43 + 72) = v39;
  __asm { FMOV            V0.2S, #1.0 }

  *(v43 + 48) = _D0;
  v45 = swift_allocObject();
  *(v45 + 80) = 0u;
  *(v45 + 96) = 0u;
  *(v45 + 112) = 1;
  *(v45 + 120) = 0;
  *(v45 + 128) = 0;
  *(v45 + 136) = 0;
  *(v45 + 216) = 0;
  v150 = v39;
  v46 = swift_getKeyPath();
  *(v45 + 16) = 846425968;
  *(v45 + 24) = 0xE400000000000000;
  *(v45 + 32) = v46;
  *(v45 + 40) = v39;
  *(v45 + 48) = 0;
  *(v45 + 56) = 1;
  *(v45 + 58) = 1024;
  *(v45 + 184) = -1082130432;
  *(v45 + 188) = 0;
  *(v45 + 192) = 0x40000000;
  *(v45 + 196) = 0;
  *(v45 + 200) = 1008981770;
  *(v45 + 204) = 0;
  *(v45 + 206) = 1;
  *(v45 + 208) = 1;
  *(v45 + 64) = 0;
  *(v45 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v45 + 96) = 0;
  *(v45 + 210) = 0;
  *(v45 + 144) = xmmword_1AFE22A20;
  *(v45 + 168) = 0;
  *(v45 + 176) = 0;

  *(v45 + 160) = v43;

  *(v37 + 40) = v45;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1AFE431C0;
  *(v47 + 32) = 0;
  *(v47 + 40) = 0xE000000000000000;
  *(v47 + 72) = v4;
  v48 = swift_allocObject();
  *(v47 + 48) = v48;
  *(v48 + 16) = xmmword_1AFE722B0;
  v49 = swift_allocObject();
  *(v49 + 80) = 0u;
  *(v49 + 96) = 0u;
  *(v49 + 112) = 1;
  *(v49 + 120) = 0;
  *(v49 + 128) = 0;
  *(v49 + 136) = 0;
  *(v49 + 216) = 0;
  v50 = swift_getKeyPath();
  *(v49 + 16) = 0x31726F6C6F63;
  *(v49 + 24) = 0xE600000000000000;
  *(v49 + 32) = v50;
  *(v49 + 40) = v4;
  *(v49 + 48) = 0;
  *(v49 + 56) = 1;
  *(v49 + 58) = 1024;
  *(v49 + 184) = 0;
  *(v49 + 188) = 1;
  *(v49 + 192) = 0;
  *(v49 + 196) = 1;
  *(v49 + 200) = 1008981770;
  *(v49 + 204) = 0;
  *(v49 + 206) = 1;
  *(v49 + 208) = 1;
  *(v49 + 64) = 0;
  *(v49 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v49 + 96) = 0;
  *(v49 + 210) = 0;
  *(v49 + 144) = xmmword_1AFE55160;
  *(v49 + 168) = 0;
  *(v49 + 176) = 0;

  *(v49 + 160) = v47;

  *(v37 + 48) = v49;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1AFE431C0;
  *(v51 + 32) = 0;
  *(v51 + 40) = 0xE000000000000000;
  *(v51 + 72) = v4;
  v52 = swift_allocObject();
  *(v51 + 48) = v52;
  *(v52 + 16) = xmmword_1AFE20BF0;
  v53 = swift_allocObject();
  *(v53 + 80) = 0u;
  *(v53 + 96) = 0u;
  *(v53 + 112) = 1;
  *(v53 + 120) = 0;
  *(v53 + 128) = 0;
  *(v53 + 136) = 0;
  *(v53 + 216) = 0;
  v54 = swift_getKeyPath();
  *(v53 + 16) = 0x32726F6C6F63;
  *(v53 + 24) = 0xE600000000000000;
  *(v53 + 32) = v54;
  *(v53 + 40) = v4;
  *(v53 + 48) = 0;
  *(v53 + 56) = 1;
  *(v53 + 58) = 1024;
  *(v53 + 184) = 0;
  *(v53 + 188) = 1;
  *(v53 + 192) = 0;
  *(v53 + 196) = 1;
  *(v53 + 200) = 1008981770;
  *(v53 + 204) = 0;
  *(v53 + 206) = 1;
  *(v53 + 208) = 1;
  *(v53 + 64) = 0;
  *(v53 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v53 + 96) = 0;
  *(v53 + 210) = 0;
  *(v53 + 144) = xmmword_1AFE55160;
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;

  *(v53 + 160) = v51;

  *(v37 + 56) = v53;
  sub_1AF6F2658(0xD000000000000014, 0x80000001AFF30840, 0x6C7070612E6D6F63, 0xED00007866762E65, v37);

  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1AFE550E0;
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1AFE431C0;
  *(v56 + 32) = 0;
  *(v56 + 40) = 0xE000000000000000;
  *(v56 + 72) = v4;
  v57 = swift_allocObject();
  *(v56 + 48) = v57;
  *(v57 + 16) = v151;
  v58 = swift_allocObject();
  *(v58 + 80) = 0u;
  *(v58 + 96) = 0u;
  *(v58 + 112) = 1;
  *(v58 + 120) = 0;
  *(v58 + 128) = 0;
  *(v58 + 136) = 0;
  *(v58 + 216) = 0;
  v59 = swift_getKeyPath();
  *(v58 + 16) = 0x31726F6C6F63;
  *(v58 + 24) = 0xE600000000000000;
  *(v58 + 32) = v59;
  *(v58 + 40) = v4;
  *(v58 + 48) = 0;
  *(v58 + 56) = 1;
  *(v58 + 58) = 1024;
  *(v58 + 184) = 0;
  *(v58 + 188) = 1;
  *(v58 + 192) = 0;
  *(v58 + 196) = 1;
  *(v58 + 200) = 1008981770;
  *(v58 + 204) = 0;
  *(v58 + 206) = 1;
  *(v58 + 208) = 1;
  *(v58 + 64) = 0;
  *(v58 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v58 + 96) = 0;
  *(v58 + 210) = 0;
  *(v58 + 144) = xmmword_1AFE55160;
  *(v58 + 168) = 0;
  *(v58 + 176) = 0;

  *(v58 + 160) = v56;

  *(v55 + 32) = v58;
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1AFE431C0;
  *(v60 + 32) = 0;
  *(v60 + 40) = 0xE000000000000000;
  *(v60 + 72) = v4;
  v61 = swift_allocObject();
  *(v60 + 48) = v61;
  *(v61 + 16) = xmmword_1AFE201A0;
  v62 = swift_allocObject();
  *(v62 + 80) = 0u;
  *(v62 + 96) = 0u;
  *(v62 + 112) = 1;
  *(v62 + 120) = 0;
  *(v62 + 128) = 0;
  *(v62 + 136) = 0;
  *(v62 + 216) = 0;
  v63 = swift_getKeyPath();
  *(v62 + 16) = 0x32726F6C6F63;
  *(v62 + 24) = 0xE600000000000000;
  *(v62 + 32) = v63;
  *(v62 + 40) = v4;
  *(v62 + 48) = 0;
  *(v62 + 56) = 1;
  *(v62 + 58) = 1024;
  *(v62 + 184) = 0;
  *(v62 + 188) = 1;
  *(v62 + 192) = 0;
  *(v62 + 196) = 1;
  *(v62 + 200) = 1008981770;
  *(v62 + 204) = 0;
  *(v62 + 206) = 1;
  *(v62 + 208) = 1;
  *(v62 + 64) = 0;
  *(v62 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v62 + 96) = 0;
  *(v62 + 210) = 0;
  *(v62 + 144) = xmmword_1AFE55160;
  *(v62 + 168) = 0;
  *(v62 + 176) = 0;

  *(v62 + 160) = v60;

  *(v55 + 40) = v62;
  sub_1AF6F2658(0xD000000000000012, 0x80000001AFF30860, 0x6C7070612E6D6F63, 0xED00007866762E65, v55);

  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1AFE550E0;
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1AFE431C0;
  *(v65 + 32) = 0;
  *(v65 + 40) = 0xE000000000000000;
  *(v65 + 72) = v4;
  v66 = swift_allocObject();
  *(v65 + 48) = v66;
  *(v66 + 16) = v151;
  v67 = swift_allocObject();
  *(v67 + 80) = 0u;
  *(v67 + 96) = 0u;
  *(v67 + 112) = 1;
  *(v67 + 120) = 0;
  *(v67 + 128) = 0;
  *(v67 + 136) = 0;
  *(v67 + 216) = 0;
  v68 = swift_getKeyPath();
  *(v67 + 16) = 0x31726F6C6F63;
  *(v67 + 24) = 0xE600000000000000;
  *(v67 + 32) = v68;
  *(v67 + 40) = v4;
  *(v67 + 48) = 0;
  *(v67 + 56) = 1;
  *(v67 + 58) = 1024;
  *(v67 + 184) = 0;
  *(v67 + 188) = 1;
  *(v67 + 192) = 0;
  *(v67 + 196) = 1;
  *(v67 + 200) = 1008981770;
  *(v67 + 204) = 0;
  *(v67 + 206) = 1;
  *(v67 + 208) = 1;
  *(v67 + 64) = 0;
  *(v67 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v67 + 96) = 0;
  *(v67 + 210) = 0;
  *(v67 + 144) = xmmword_1AFE55160;
  *(v67 + 168) = 0;
  *(v67 + 176) = 0;

  *(v67 + 160) = v65;

  *(v64 + 32) = v67;
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1AFE431C0;
  *(v69 + 32) = 0;
  *(v69 + 40) = 0xE000000000000000;
  *(v69 + 72) = v4;
  v70 = swift_allocObject();
  *(v69 + 48) = v70;
  *(v70 + 16) = xmmword_1AFE201A0;
  v71 = swift_allocObject();
  *(v71 + 80) = 0u;
  *(v71 + 96) = 0u;
  *(v71 + 112) = 1;
  *(v71 + 120) = 0;
  *(v71 + 128) = 0;
  *(v71 + 136) = 0;
  *(v71 + 216) = 0;
  v72 = swift_getKeyPath();
  *(v71 + 16) = 0x32726F6C6F63;
  *(v71 + 24) = 0xE600000000000000;
  *(v71 + 32) = v72;
  *(v71 + 40) = v4;
  *(v71 + 48) = 0;
  *(v71 + 56) = 1;
  *(v71 + 58) = 1024;
  *(v71 + 184) = 0;
  *(v71 + 188) = 1;
  *(v71 + 192) = 0;
  *(v71 + 196) = 1;
  *(v71 + 200) = 1008981770;
  *(v71 + 204) = 0;
  *(v71 + 206) = 1;
  *(v71 + 208) = 1;
  *(v71 + 64) = 0;
  *(v71 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v71 + 96) = 0;
  *(v71 + 210) = 0;
  *(v71 + 144) = xmmword_1AFE55160;
  *(v71 + 168) = 0;
  *(v71 + 176) = 0;

  *(v71 + 160) = v69;

  *(v64 + 40) = v71;
  sub_1AF6F2658(0x6F645F44326E6567, 0xEC0000006F6E696DLL, 0x6C7070612E6D6F63, 0xED00007866762E65, v64);

  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1AFE550F0;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1AFE431C0;
  *(v74 + 32) = 0;
  *(v74 + 40) = 0xE000000000000000;
  *(v74 + 72) = v39;
  *(v74 + 48) = 0;
  v75 = swift_allocObject();
  *(v75 + 80) = 0u;
  *(v75 + 96) = 0u;
  *(v75 + 112) = 1;
  *(v75 + 120) = 0;
  *(v75 + 128) = 0;
  *(v75 + 136) = 0;
  *(v75 + 216) = 0;
  v156 = v39;
  v76 = swift_getKeyPath();
  *(v75 + 16) = 0x7265746E6563;
  *(v75 + 24) = 0xE600000000000000;
  *(v75 + 32) = v76;
  *(v75 + 40) = v39;
  *(v75 + 48) = 0;
  *(v75 + 56) = 1;
  *(v75 + 58) = 1024;
  *(v75 + 184) = -1082130432;
  *(v75 + 188) = 0;
  *(v75 + 192) = 0x40000000;
  *(v75 + 196) = 0;
  *(v75 + 200) = 1008981770;
  *(v75 + 204) = 0;
  *(v75 + 206) = 1;
  *(v75 + 208) = 1;
  *(v75 + 64) = 0;
  *(v75 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v75 + 96) = 0;
  *(v75 + 210) = 0;
  *(v75 + 144) = xmmword_1AFE22A20;
  *(v75 + 168) = 0;
  *(v75 + 176) = 0;

  *(v75 + 160) = v74;

  *(v73 + 32) = v75;
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1AFE431C0;
  *(v77 + 32) = 0;
  *(v77 + 40) = 0xE000000000000000;
  v78 = MEMORY[0x1E69E6448];
  *(v77 + 72) = MEMORY[0x1E69E6448];
  *(v77 + 48) = 1065353216;
  v79 = swift_allocObject();
  *(v79 + 80) = 0u;
  *(v79 + 96) = 0u;
  *(v79 + 112) = 1;
  *(v79 + 120) = 0;
  *(v79 + 128) = 0;
  *(v79 + 136) = 0;
  *(v79 + 216) = 0;
  v80 = swift_getKeyPath();
  *(v79 + 16) = 0x737569646172;
  *(v79 + 24) = 0xE600000000000000;
  *(v79 + 32) = v80;
  *(v79 + 40) = v78;
  *(v79 + 48) = 0;
  *(v79 + 56) = 1;
  *(v79 + 58) = 1024;
  *(v79 + 184) = 0;
  *(v79 + 188) = 0;
  *(v79 + 192) = 1092616192;
  *(v79 + 196) = 0;
  *(v79 + 200) = 1008981770;
  *(v79 + 204) = 0;
  *(v79 + 206) = 1;
  *(v79 + 208) = 1;
  *(v79 + 64) = 0;
  *(v79 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v79 + 96) = 0;
  *(v79 + 210) = 0;
  *(v79 + 144) = xmmword_1AFE22A20;
  *(v79 + 168) = 0;
  *(v79 + 176) = 0;

  *(v79 + 160) = v77;

  *(v73 + 40) = v79;
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_1AFE431C0;
  *(v81 + 32) = 0;
  *(v81 + 40) = 0xE000000000000000;
  *(v81 + 72) = v4;
  v82 = swift_allocObject();
  *(v81 + 48) = v82;
  *(v82 + 16) = xmmword_1AFE722B0;
  v83 = swift_allocObject();
  *(v83 + 80) = 0u;
  *(v83 + 96) = 0u;
  *(v83 + 112) = 1;
  *(v83 + 120) = 0;
  *(v83 + 128) = 0;
  *(v83 + 136) = 0;
  *(v83 + 216) = 0;
  v84 = swift_getKeyPath();
  *(v83 + 16) = 0x31726F6C6F63;
  *(v83 + 24) = 0xE600000000000000;
  *(v83 + 32) = v84;
  *(v83 + 40) = v4;
  *(v83 + 48) = 0;
  *(v83 + 56) = 1;
  *(v83 + 58) = 1024;
  *(v83 + 184) = 0;
  *(v83 + 188) = 1;
  *(v83 + 192) = 0;
  *(v83 + 196) = 1;
  *(v83 + 200) = 1008981770;
  *(v83 + 204) = 0;
  *(v83 + 206) = 1;
  *(v83 + 208) = 1;
  *(v83 + 64) = 0;
  *(v83 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v83 + 96) = 0;
  *(v83 + 210) = 0;
  *(v83 + 144) = xmmword_1AFE55160;
  *(v83 + 168) = 0;
  *(v83 + 176) = 0;

  *(v83 + 160) = v81;

  *(v73 + 48) = v83;
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1AFE431C0;
  *(v85 + 32) = 0;
  *(v85 + 40) = 0xE000000000000000;
  *(v85 + 72) = v4;
  v86 = swift_allocObject();
  *(v85 + 48) = v86;
  *(v86 + 16) = xmmword_1AFE20BF0;
  v87 = swift_allocObject();
  *(v87 + 80) = 0u;
  *(v87 + 96) = 0u;
  *(v87 + 112) = 1;
  *(v87 + 120) = 0;
  *(v87 + 128) = 0;
  *(v87 + 136) = 0;
  *(v87 + 216) = 0;
  v88 = swift_getKeyPath();
  *(v87 + 16) = 0x32726F6C6F63;
  *(v87 + 24) = 0xE600000000000000;
  *(v87 + 32) = v88;
  *(v87 + 40) = v4;
  *(v87 + 48) = 0;
  *(v87 + 56) = 1;
  *(v87 + 58) = 1024;
  *(v87 + 184) = 0;
  *(v87 + 188) = 1;
  *(v87 + 192) = 0;
  *(v87 + 196) = 1;
  *(v87 + 200) = 1008981770;
  *(v87 + 204) = 0;
  *(v87 + 206) = 1;
  *(v87 + 208) = 1;
  *(v87 + 64) = 0;
  *(v87 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v87 + 96) = 0;
  *(v87 + 210) = 0;
  *(v87 + 144) = xmmword_1AFE55160;
  *(v87 + 168) = 0;
  *(v87 + 176) = 0;

  *(v87 + 160) = v85;

  *(v73 + 56) = v87;
  sub_1AF6F2658(0xD000000000000014, 0x80000001AFF30880, 0x6C7070612E6D6F63, 0xED00007866762E65, v73);

  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1AFE55170;
  v90 = v89;
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1AFE431C0;
  *(v91 + 32) = 0;
  *(v91 + 40) = 0xE000000000000000;
  *(v91 + 72) = v150;
  *(v91 + 48) = 1056964608;
  v92 = swift_allocObject();
  *(v92 + 80) = 0u;
  *(v92 + 96) = 0u;
  *(v92 + 112) = 1;
  *(v92 + 120) = 0;
  *(v92 + 128) = 0;
  *(v92 + 136) = 0;
  *(v92 + 216) = 0;
  v93 = swift_getKeyPath();
  *(v92 + 16) = 0x68676948796B73;
  *(v92 + 24) = 0xE700000000000000;
  *(v92 + 32) = v93;
  *(v92 + 40) = v156;
  *(v92 + 48) = 0;
  *(v92 + 56) = 1;
  *(v92 + 58) = 1024;
  *(v92 + 184) = -1082130432;
  *(v92 + 188) = 0;
  *(v92 + 192) = 0x40000000;
  *(v92 + 196) = 0;
  *(v92 + 200) = 1008981770;
  *(v92 + 204) = 0;
  *(v92 + 206) = 1;
  *(v92 + 208) = 1;
  *(v92 + 64) = 0;
  *(v92 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v92 + 96) = 0;
  *(v92 + 210) = 0;
  *(v92 + 144) = xmmword_1AFE22A20;
  *(v92 + 168) = 0;
  *(v92 + 176) = 0;

  *(v92 + 160) = v91;

  v90[4] = v92;
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1AFE431C0;
  *(v94 + 32) = 0;
  *(v94 + 40) = 0xE000000000000000;
  *(v94 + 72) = v156;
  *(v94 + 48) = 0x3FECCCCD3F3AE148;
  v95 = swift_allocObject();
  *(v95 + 80) = 0u;
  *(v95 + 96) = 0u;
  *(v95 + 112) = 1;
  *(v95 + 120) = 0;
  *(v95 + 128) = 0;
  *(v95 + 136) = 0;
  *(v95 + 216) = 0;
  v96 = swift_getKeyPath();
  *(v95 + 16) = 0x6C6464694D796B73;
  *(v95 + 24) = 0xE900000000000065;
  *(v95 + 32) = v96;
  *(v95 + 40) = v156;
  *(v95 + 48) = 0;
  *(v95 + 56) = 1;
  *(v95 + 58) = 1024;
  *(v95 + 184) = 0;
  *(v95 + 188) = 0;
  *(v95 + 192) = 0x40000000;
  *(v95 + 196) = 0;
  *(v95 + 200) = 1008981770;
  *(v95 + 204) = 0;
  *(v95 + 206) = 1;
  *(v95 + 208) = 1;
  *(v95 + 64) = 0;
  *(v95 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v95 + 96) = 0;
  *(v95 + 210) = 0;
  *(v95 + 144) = xmmword_1AFE22A20;
  *(v95 + 168) = 0;
  *(v95 + 176) = 0;

  *(v95 + 160) = v94;

  v90[5] = v95;
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1AFE431C0;
  *(v97 + 32) = 0;
  *(v97 + 40) = 0xE000000000000000;
  *(v97 + 72) = v156;
  *(v97 + 48) = 0x3F8000003F0A3D71;
  v98 = swift_allocObject();
  *(v98 + 80) = 0u;
  *(v98 + 96) = 0u;
  *(v98 + 112) = 1;
  *(v98 + 120) = 0;
  *(v98 + 128) = 0;
  *(v98 + 136) = 0;
  *(v98 + 216) = 0;
  v99 = swift_getKeyPath();
  *(v98 + 16) = 0x776F4C796B73;
  *(v98 + 24) = 0xE600000000000000;
  *(v98 + 32) = v99;
  *(v98 + 40) = v156;
  *(v98 + 48) = 0;
  *(v98 + 56) = 1;
  *(v98 + 58) = 1024;
  *(v98 + 184) = -1082130432;
  *(v98 + 188) = 0;
  *(v98 + 192) = 0x40000000;
  *(v98 + 196) = 0;
  *(v98 + 200) = 1008981770;
  *(v98 + 204) = 0;
  *(v98 + 206) = 1;
  *(v98 + 208) = 1;
  *(v98 + 64) = 0;
  *(v98 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v98 + 96) = 0;
  *(v98 + 210) = 0;
  *(v98 + 144) = xmmword_1AFE22A20;
  *(v98 + 168) = 0;
  *(v98 + 176) = 0;

  *(v98 + 160) = v97;

  v90[6] = v98;
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_1AFE431C0;
  *(v100 + 32) = 0;
  *(v100 + 40) = 0xE000000000000000;
  v152 = sub_1AF6DE3AC(3871237, 1.0, v101, v102);
  *(v100 + 72) = v4;
  v103 = swift_allocObject();
  *(v100 + 48) = v103;
  *(v103 + 16) = v152;
  v104 = swift_allocObject();
  *(v104 + 80) = 0u;
  *(v104 + 96) = 0u;
  *(v104 + 112) = 1;
  *(v104 + 120) = 0;
  *(v104 + 128) = 0;
  *(v104 + 136) = 0;
  *(v104 + 216) = 0;
  v105 = swift_getKeyPath();
  strcpy((v104 + 16), "skyHighColor");
  *(v104 + 29) = 0;
  *(v104 + 30) = -5120;
  *(v104 + 32) = v105;
  *(v104 + 40) = v4;
  *(v104 + 48) = 0;
  *(v104 + 56) = 1;
  *(v104 + 58) = 1024;
  *(v104 + 184) = 0;
  *(v104 + 188) = 1;
  *(v104 + 192) = 0;
  *(v104 + 196) = 1;
  *(v104 + 200) = 0;
  *(v104 + 204) = 1;
  *(v104 + 206) = 1;
  *(v104 + 208) = 1;
  *(v104 + 64) = 0;
  *(v104 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v104 + 96) = 0;
  *(v104 + 210) = 0;
  *(v104 + 144) = xmmword_1AFE55160;
  *(v104 + 168) = 0;
  *(v104 + 176) = 0;

  *(v104 + 160) = v100;

  v90[7] = v104;
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1AFE431C0;
  *(v106 + 32) = 0;
  *(v106 + 40) = 0xE000000000000000;
  v153 = sub_1AF6DE3AC(13810438, 1.0, v107, v108);
  *(v106 + 72) = v4;
  v109 = swift_allocObject();
  *(v106 + 48) = v109;
  *(v109 + 16) = v153;
  v110 = swift_allocObject();
  *(v110 + 80) = 0u;
  *(v110 + 96) = 0u;
  *(v110 + 112) = 1;
  *(v110 + 120) = 0;
  *(v110 + 128) = 0;
  *(v110 + 136) = 0;
  *(v110 + 216) = 0;
  v111 = swift_getKeyPath();
  strcpy((v110 + 16), "skyMiddleColor");
  *(v110 + 31) = -18;
  *(v110 + 32) = v111;
  *(v110 + 40) = v4;
  *(v110 + 48) = 0;
  *(v110 + 56) = 1;
  *(v110 + 58) = 1024;
  *(v110 + 184) = 0;
  *(v110 + 188) = 1;
  *(v110 + 192) = 0;
  *(v110 + 196) = 1;
  *(v110 + 200) = 0;
  *(v110 + 204) = 1;
  *(v110 + 206) = 1;
  *(v110 + 208) = 1;
  *(v110 + 64) = 0;
  *(v110 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v110 + 96) = 0;
  *(v110 + 210) = 0;
  *(v110 + 144) = xmmword_1AFE55160;
  *(v110 + 168) = 0;
  *(v110 + 176) = 0;

  *(v110 + 160) = v106;

  v90[8] = v110;
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_1AFE431C0;
  *(v112 + 32) = 0;
  *(v112 + 40) = 0xE000000000000000;
  v154 = sub_1AF6DE3AC(5473238, 1.0, v113, v114);
  *(v112 + 72) = v4;
  v115 = swift_allocObject();
  *(v112 + 48) = v115;
  *(v115 + 16) = v154;
  v116 = swift_allocObject();
  *(v116 + 80) = 0u;
  *(v116 + 96) = 0u;
  *(v116 + 112) = 1;
  *(v116 + 120) = 0;
  *(v116 + 128) = 0;
  *(v116 + 136) = 0;
  *(v116 + 216) = 0;
  v117 = swift_getKeyPath();
  *(v116 + 16) = 0x6F43776F4C796B73;
  *(v116 + 24) = 0xEB00000000726F6CLL;
  *(v116 + 32) = v117;
  *(v116 + 40) = v4;
  *(v116 + 48) = 0;
  *(v116 + 56) = 1;
  *(v116 + 58) = 1024;
  *(v116 + 184) = 0;
  *(v116 + 188) = 1;
  *(v116 + 192) = 0;
  *(v116 + 196) = 1;
  *(v116 + 200) = 0;
  *(v116 + 204) = 1;
  *(v116 + 206) = 1;
  *(v116 + 208) = 1;
  *(v116 + 64) = 0;
  *(v116 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v116 + 96) = 0;
  *(v116 + 210) = 0;
  *(v116 + 144) = xmmword_1AFE55160;
  *(v116 + 168) = 0;
  *(v116 + 176) = 0;

  *(v116 + 160) = v112;

  v90[9] = v116;
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_1AFE431C0;
  *(v118 + 32) = 0;
  *(v118 + 40) = 0xE000000000000000;
  *(v118 + 72) = v156;
  *(v118 + 48) = 0x3F51EB853F3851ECLL;
  v119 = swift_allocObject();
  *(v119 + 80) = 0u;
  *(v119 + 96) = 0u;
  *(v119 + 112) = 1;
  *(v119 + 120) = 0;
  *(v119 + 128) = 0;
  *(v119 + 136) = 0;
  *(v119 + 216) = 0;
  v120 = swift_getKeyPath();
  *(v119 + 16) = 0x65746E65436E7573;
  *(v119 + 24) = 0xE900000000000072;
  *(v119 + 32) = v120;
  *(v119 + 40) = v156;
  *(v119 + 48) = 0;
  *(v119 + 56) = 1;
  *(v119 + 58) = 1024;
  *(v119 + 184) = -1082130432;
  *(v119 + 188) = 0;
  *(v119 + 192) = 0x40000000;
  *(v119 + 196) = 0;
  *(v119 + 200) = 1008981770;
  *(v119 + 204) = 0;
  *(v119 + 206) = 1;
  *(v119 + 208) = 1;
  *(v119 + 64) = 0;
  *(v119 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v119 + 96) = 0;
  *(v119 + 210) = 0;
  *(v119 + 144) = xmmword_1AFE22A20;
  *(v119 + 168) = 0;
  *(v119 + 176) = 0;

  *(v119 + 160) = v118;

  v90[10] = v119;
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_1AFE431C0;
  *(v121 + 32) = 0;
  *(v121 + 40) = 0xE000000000000000;
  *(v121 + 72) = v156;
  *(v121 + 48) = 0x3FC28F5C3E851EB8;
  v122 = swift_allocObject();
  *(v122 + 80) = 0u;
  *(v122 + 96) = 0u;
  *(v122 + 112) = 1;
  *(v122 + 120) = 0;
  *(v122 + 128) = 0;
  *(v122 + 136) = 0;
  *(v122 + 216) = 0;
  v123 = swift_getKeyPath();
  *(v122 + 16) = 0xD000000000000011;
  *(v122 + 24) = 0x80000001AFF308A0;
  *(v122 + 32) = v123;
  *(v122 + 40) = v156;
  *(v122 + 48) = 0;
  *(v122 + 56) = 1;
  *(v122 + 58) = 1024;
  *(v122 + 184) = 0;
  *(v122 + 188) = 0;
  *(v122 + 192) = 1092616192;
  *(v122 + 196) = 0;
  *(v122 + 200) = 1008981770;
  *(v122 + 204) = 0;
  *(v122 + 206) = 1;
  *(v122 + 208) = 1;
  *(v122 + 64) = 0;
  *(v122 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v122 + 96) = 0;
  *(v122 + 210) = 0;
  *(v122 + 144) = xmmword_1AFE22A20;
  *(v122 + 168) = 0;
  *(v122 + 176) = 0;

  *(v122 + 160) = v121;

  v90[11] = v122;
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_1AFE431C0;
  *(v124 + 32) = 0;
  *(v124 + 40) = 0xE000000000000000;
  v155 = sub_1AF6DE3AC(11204599, 0.85, v125, v126);
  *(v124 + 72) = v4;
  v127 = swift_allocObject();
  *(v124 + 48) = v127;
  *(v127 + 16) = v155;
  v128 = swift_allocObject();
  *(v128 + 80) = 0u;
  *(v128 + 96) = 0u;
  *(v128 + 112) = 1;
  *(v128 + 120) = 0;
  *(v128 + 128) = 0;
  *(v128 + 136) = 0;
  *(v128 + 216) = 0;
  v129 = swift_getKeyPath();
  *(v128 + 16) = 0x726F6C6F436E7573;
  *(v128 + 24) = 0xE800000000000000;
  *(v128 + 32) = v129;
  *(v128 + 40) = v4;
  *(v128 + 48) = 0;
  *(v128 + 56) = 1;
  *(v128 + 58) = 1024;
  *(v128 + 184) = 0;
  *(v128 + 188) = 1;
  *(v128 + 192) = 0;
  *(v128 + 196) = 1;
  *(v128 + 200) = 0;
  *(v128 + 204) = 1;
  *(v128 + 206) = 1;
  *(v128 + 208) = 1;
  *(v128 + 64) = 0;
  *(v128 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v128 + 96) = 0;
  *(v128 + 210) = 0;
  *(v128 + 144) = xmmword_1AFE55160;
  *(v128 + 168) = 0;
  *(v128 + 176) = 0;

  *(v128 + 160) = v124;

  v90[12] = v128;
  sub_1AF6F2658(0x6B735F44326E6567, 0xEB00000000443279, 0x6C7070612E6D6F63, 0xED00007866762E65, v90);

  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_1AFE4C3E0;
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_1AFE431C0;
  *(v131 + 32) = 0;
  *(v131 + 40) = 0xE000000000000000;
  v132 = MEMORY[0x1E69E6448];
  *(v131 + 72) = MEMORY[0x1E69E6448];
  *(v131 + 48) = 1065353216;
  v133 = swift_allocObject();
  *(v133 + 80) = 0u;
  *(v133 + 96) = 0u;
  *(v133 + 112) = 1;
  *(v133 + 120) = 0;
  *(v133 + 128) = 0;
  *(v133 + 136) = 0;
  *(v133 + 216) = 0;
  v134 = swift_getKeyPath();
  *(v133 + 16) = 0x7469736E65746E69;
  *(v133 + 24) = 0xE900000000000079;
  *(v133 + 32) = v134;
  *(v133 + 40) = v132;
  *(v133 + 48) = 0;
  *(v133 + 56) = 1;
  *(v133 + 58) = 1024;
  *(v133 + 184) = 0;
  *(v133 + 188) = 0;
  *(v133 + 192) = 1092616192;
  *(v133 + 196) = 0;
  *(v133 + 200) = 0;
  *(v133 + 204) = 1;
  *(v133 + 206) = 1;
  *(v133 + 208) = 1;
  *(v133 + 64) = 0;
  *(v133 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v133 + 96) = 0;
  *(v133 + 210) = 0;
  *(v133 + 144) = xmmword_1AFE22A20;
  *(v133 + 168) = 0;
  *(v133 + 176) = 0;

  *(v133 + 160) = v131;

  *(v130 + 32) = v133;
  sub_1AF6F2658(0xD000000000000017, 0x80000001AFF308C0, 0x6C7070612E6D6F63, 0xED00007866762E65, v130);

  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_1AFE4C3E0;
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_1AFE431C0;
  *(v136 + 32) = 0;
  *(v136 + 40) = 0xE000000000000000;
  *(v136 + 72) = v132;
  *(v136 + 48) = 1065353216;
  v137 = swift_allocObject();
  *(v137 + 80) = 0u;
  *(v137 + 96) = 0u;
  *(v137 + 112) = 1;
  *(v137 + 120) = 0;
  *(v137 + 128) = 0;
  *(v137 + 136) = 0;
  *(v137 + 216) = 0;
  v138 = swift_getKeyPath();
  *(v137 + 16) = 0x7469736E65746E69;
  *(v137 + 24) = 0xE900000000000079;
  *(v137 + 32) = v138;
  *(v137 + 40) = v132;
  *(v137 + 48) = 0;
  *(v137 + 56) = 1;
  *(v137 + 58) = 1024;
  *(v137 + 184) = 0;
  *(v137 + 188) = 0;
  *(v137 + 192) = 1092616192;
  *(v137 + 196) = 0;
  *(v137 + 200) = 0;
  *(v137 + 204) = 1;
  *(v137 + 206) = 1;
  *(v137 + 208) = 1;
  *(v137 + 64) = 0;
  *(v137 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v137 + 96) = 0;
  *(v137 + 210) = 0;
  *(v137 + 144) = xmmword_1AFE22A20;
  *(v137 + 168) = 0;
  *(v137 + 176) = 0;

  *(v137 + 160) = v136;

  *(v135 + 32) = v137;
  v139 = v0;
  sub_1AF6F2658(0xD000000000000017, 0x80000001AFF308E0, 0x6C7070612E6D6F63, 0xED00007866762E65, v135);

  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_1AFE4C3E0;
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_1AFE431C0;
  *(v141 + 32) = 0;
  *(v141 + 40) = 0xE000000000000000;
  v142 = MEMORY[0x1E69E6448];
  *(v141 + 72) = MEMORY[0x1E69E6448];
  *(v141 + 48) = 1065353216;
  v143 = swift_allocObject();
  *(v143 + 80) = 0u;
  *(v143 + 96) = 0u;
  *(v143 + 112) = 1;
  *(v143 + 120) = 0;
  *(v143 + 128) = 0;
  *(v143 + 136) = 0;
  *(v143 + 216) = 0;
  v144 = swift_getKeyPath();
  *(v143 + 16) = 0x7469736E65746E69;
  *(v143 + 24) = 0xE900000000000079;
  *(v143 + 32) = v144;
  *(v143 + 40) = v142;
  *(v143 + 48) = 0;
  *(v143 + 56) = 1;
  *(v143 + 58) = 1024;
  *(v143 + 184) = 0;
  *(v143 + 188) = 0;
  *(v143 + 192) = 1092616192;
  *(v143 + 196) = 0;
  *(v143 + 200) = 0;
  *(v143 + 204) = 1;
  *(v143 + 206) = 1;
  *(v143 + 208) = 1;
  *(v143 + 64) = 0;
  *(v143 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v143 + 96) = 0;
  *(v143 + 210) = 0;
  *(v143 + 144) = xmmword_1AFE22A20;
  *(v143 + 168) = 0;
  *(v143 + 176) = 0;

  *(v143 + 160) = v141;

  *(v140 + 32) = v143;
  sub_1AF6F2658(0xD000000000000018, 0x80000001AFF30900, 0x6C7070612E6D6F63, 0xED00007866762E65, v140);

  v145 = swift_allocObject();
  *(v145 + 16) = xmmword_1AFE4C3E0;
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_1AFE431C0;
  *(v146 + 32) = 0;
  *(v146 + 40) = 0xE000000000000000;
  *(v146 + 72) = v142;
  *(v146 + 48) = 1094713344;
  v147 = swift_allocObject();
  *(v147 + 80) = 0u;
  *(v147 + 96) = 0u;
  *(v147 + 112) = 1;
  *(v147 + 120) = 0;
  *(v147 + 128) = 0;
  *(v147 + 136) = 0;
  *(v147 + 216) = 0;
  v148 = swift_getKeyPath();
  strcpy((v147 + 16), "dayTimeInHour");
  *(v147 + 30) = -4864;
  *(v147 + 32) = v148;
  *(v147 + 40) = v142;
  *(v147 + 48) = 0;
  *(v147 + 56) = 1;
  *(v147 + 58) = 1024;
  *(v147 + 184) = 0;
  *(v147 + 188) = 0;
  *(v147 + 192) = 1103101952;
  *(v147 + 196) = 0;
  *(v147 + 200) = 0;
  *(v147 + 204) = 1;
  *(v147 + 206) = 1;
  *(v147 + 208) = 1;
  *(v147 + 64) = 0;
  *(v147 + 72) = 0;
  sub_1AF0FB8EC(0);
  *(v147 + 96) = 0;
  *(v147 + 210) = 0;
  *(v147 + 144) = xmmword_1AFE22A20;
  *(v147 + 168) = 0;
  *(v147 + 176) = 0;

  *(v147 + 160) = v146;

  *(v145 + 32) = v147;
  sub_1AF6F2658(0xD000000000000017, 0x80000001AFF30920, 0x6C7070612E6D6F63, 0xED00007866762E65, v145);

  return v139;
}

uint64_t sub_1AF6F2658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(v5 + 16);
  if (!*(v12 + 16))
  {
    goto LABEL_5;
  }

  v13 = sub_1AF419914(a3, a4);
  if ((v14 & 1) == 0)
  {

LABEL_5:
    sub_1AF6F2C08(0, &qword_1EB6327E8, sub_1AF6F2B70, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 48) = a5;

    v17 = sub_1AF43B2F4(inited);
    swift_setDeallocating();
    sub_1AF6F2C6C(inited + 32);
    goto LABEL_6;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1AF852B7C(a5, a1, a2, isUniquelyReferenced_nonNull_native);

  v17 = v15;

LABEL_6:
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v6 + 16);
  *(v6 + 16) = 0x8000000000000000;
  sub_1AF852B50(v17, a3, a4, v19);

  *(v6 + 16) = v21;
  return result;
}

uint64_t sub_1AF6F280C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1AF6F296C(a1, a2, a3, a4);
  v5 = v4;
  if (v4 >> 62)
  {
    v6 = sub_1AFDFE108();
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B2719C70](v7, v5);
    }

    else
    {
      v9 = *(v5 + 8 * v7 + 32);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AF422624(0, *(v8 + 2) + 1, 1, v8);
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1AF422624(v10 > 1, v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[48 * v11];
    *(v12 + 4) = 0;
    *(v12 + 5) = 0;
    v12[48] = 1;
    *(v12 + 7) = v7;
    *(v12 + 8) = 0;
    *(v12 + 9) = v9;
    ++v7;
  }

  while (v6 != v7);
LABEL_14:

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1AF6F296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  if (!*(v5 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1AF419914(a3, a4);
  if (v11)
  {
    v12 = *(*(v5 + 56) + 8 * v10);

    if (*(v12 + 16) && (v13 = sub_1AF419914(a1, a2), (v14 & 1) != 0))
    {
      v15 = *(*(v12 + 56) + 8 * v13);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  return v15;
}

uint64_t sub_1AF6F2A44()
{

  return swift_deallocClassInstance();
}

void sub_1AF6F2AA8()
{
  if (!qword_1ED7232A0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED7232A0);
    }
  }
}

void sub_1AF6F2B0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF43A0C8();
    v7 = a3(a1, MEMORY[0x1E69E6448], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1AF6F2B70()
{
  if (!qword_1EB632AA0)
  {
    sub_1AF6F2C08(255, &qword_1EB632A90, type metadata accessor for PropertyDescription, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB632AA0);
    }
  }
}

void sub_1AF6F2C08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1AF6F2C6C(uint64_t a1)
{
  sub_1AF6F2B70();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1AF6F2CC8(void *a1, int a2)
{
  v4 = [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  if (v4 == 2)
  {
    return 0;
  }

  v6 = [swift_unknownObjectRetain() contents];
  v7 = a1;
  return &v6[a2];
}

uint64_t sub_1AF6F2D54()
{
  sub_1AFDFE218();

  v0 = [swift_unknownObjectRetain() label];
  swift_unknownObjectRelease();
  if (v0)
  {
    v1 = sub_1AFDFCEF8();
    v3 = v2;
  }

  else
  {
    v3 = 0xE300000000000000;
    v1 = 4271950;
  }

  MEMORY[0x1B2718AE0](v1, v3);

  MEMORY[0x1B2718AE0](0x6874676E656C2022, 0xE90000000000003ALL);
  v4 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v4);

  MEMORY[0x1B2718AE0](0x3A74657366666F20, 0xE800000000000000);
  v5 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v5);

  return 34;
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance CFXBufferSlice()
{
  v1 = sub_1AFDFF348();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF6F30E0(0, &qword_1EB63D800, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v12 - v8;
  v12[2] = *v0;
  v12[3] = v0[1];
  v12[1] = MEMORY[0x1E69E7CC0];
  v10 = sub_1AFDFF328();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);
  sub_1AF6F30E0(0, &qword_1EB63D808, sub_1AF6F3144, MEMORY[0x1E69E62F8]);
  sub_1AF6F3204();
  return sub_1AFDFF368();
}

void sub_1AF6F30E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1AF6F3144()
{
  if (!qword_1EB63D810)
  {
    sub_1AF6F31B4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB63D810);
    }
  }
}

void sub_1AF6F31B4()
{
  if (!qword_1ED726CC0)
  {
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726CC0);
    }
  }
}

unint64_t sub_1AF6F3204()
{
  result = qword_1EB63D820;
  if (!qword_1EB63D820)
  {
    sub_1AF6F30E0(255, &qword_1EB63D808, sub_1AF6F3144, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D820);
  }

  return result;
}

void *assignWithCopy for ManagedBufferSlice(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  a1[2] = a2[2];
  return a1;
}

uint64_t assignWithTake for ManagedBufferSlice(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t sub_1AF6F33C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a3;
  v9[3] = a4;
  v9[5] = a2;
  return sub_1AF6F430C(a1, sub_1AF6F355C, v9, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], a8);
}

uint64_t sub_1AF6F3458(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a3 + a2;
  v8 = swift_unknownObjectRetain();
  sub_1AF476BF4(v8, v7, a4, a5);

  return swift_unknownObjectRelease();
}

uint64_t sub_1AF6F34D0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, const char **a6)
{
  v9 = a3 + a2;
  v10 = *a6;
  swift_unknownObjectRetain();
  [v6 v10];

  return swift_unknownObjectRelease();
}

id sub_1AF6F355C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  return [*(v2 + 32) setFragmentBytes:a1 length:v3 atIndex:*(v2 + 40)];
}

void *sub_1AF6F35A0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v7 = a3;
  }

  else
  {
    v7 = 4271950;
  }

  if (a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v4, a1, a2);
  if (BufferWithLength)
  {
    v10 = BufferWithLength;
    v11 = sub_1AFDFCEC8();

    [v10 setLabel_];
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v16[1] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
    MEMORY[0x1B2718AE0](v7, v8);

    MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
    v12 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v12);

    MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
    type metadata accessor for MTLResourceOptions(0);
    sub_1AFDFE458();
    v13 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v15 = v13;
      swift_once();
      v13 = v15;
    }

    v16[0] = 0;
    sub_1AF0D4F18(v13, v16, 0, 0xE000000000000000);

    return 0;
  }

  return v10;
}

id sub_1AF6F37F0()
{
  v1 = v0[6];
  if ([v1 isEncoding])
  {

    return [v1 endEncoding];
  }

  else
  {
    v3 = v0[7];
    if (v3)
    {
      [v3 endEncoding];
      v0[7] = 0;
    }

    else if (v0[8])
    {
      [swift_unknownObjectRetain() endEncoding];
      v0[8] = 0;
      swift_unknownObjectRelease();
      v4 = v0[12];
      if (v4)
      {
        for (i = v0[13]; i; --i)
        {
          *v4++ = 0;
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      result = v0[9];
      if (!result)
      {
        return result;
      }

      [result endEncoding];
      v0[9] = 0;
    }

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1AF6F3908()
{
  v1 = v0;
  sub_1AF6F37F0();
  v2 = *(v0 + 16);
  if (v2)
  {
    if (*(v0 + 88))
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v3 = qword_1ED730EA0;
      swift_unknownObjectRetain();
      if (v3 != -1)
      {
        swift_once();
      }

      v4 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v7 = v4;
        swift_once();
        v4 = v7;
      }

      v8 = 0;
      sub_1AF0D4F18(v4, &v8, 0xD00000000000002ELL, 0x80000001AFF30AC0);
    }

    [v2 commit];
    swift_unknownObjectRelease();
  }

  if (*(v1 + 96))
  {
    sub_1AF6F4240();
    swift_arrayDestroy();
    v5 = *(v1 + 96);
    if (v5)
    {
      MEMORY[0x1B271DEA0](v5, -1, -1);
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF6F3AA8(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16))
  {
    v4 = *(v2 + 16);
LABEL_5:
    swift_unknownObjectRetain();
    return v4;
  }

  v6 = [*(v2 + 24) commandBuffer];
  if (v6)
  {
    v4 = v6;
    v7 = sub_1AFDFCEC8();
    [v4 setLabel_];

    *(v2 + 16) = v4;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](a1, a2);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF6F3BD8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
LABEL_8:
    swift_unknownObjectRetain();
    return v1;
  }

  v2 = [*(v0 + 24) commandBuffer];
  if (v2)
  {
    v1 = v2;
    if (*(v0 + 40))
    {

      v3 = sub_1AFDFCEC8();
    }

    else
    {
      v3 = 0;
    }

    [v1 setLabel_];

    *(v0 + 16) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  sub_1AFDFE218();

  if (*(v0 + 40))
  {
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
  }

  else
  {
    v6 = 0xEA0000000000296CLL;
    v5 = 0x6562616C206F6E28;
  }

  MEMORY[0x1B2718AE0](v5, v6);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void *sub_1AF6F3D60(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = v3[7];
  if (v7)
  {
    v8 = v3[10];
    if (v8)
    {
      swift_unknownObjectRetain();
      v9 = v8;
      v10 = sub_1AF474D44(a1);

      if (v10)
      {
        return v7;
      }

      swift_unknownObjectRelease();
    }
  }

  sub_1AF6F37F0();
  v7 = sub_1AF6F3BD8();
  v11 = [v7 renderCommandEncoderWithDescriptor_];
  swift_unknownObjectRelease();
  if (v11)
  {
    ++v4[11];
    v4[7] = [objc_allocWithZone(type metadata accessor for RenderCommandEncoder()) initWithEncoder_];
    swift_unknownObjectRelease();
    v12 = v4[10];
    v4[10] = a1;
    v13 = a1;

    if (a3)
    {
      v14 = v4[7];
      if (v14)
      {
        swift_unknownObjectRetain();
        v15 = sub_1AFDFCEC8();
        [v14 setLabel_];
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
    v7 = v4[7];
    swift_unknownObjectRetain();
  }

  else
  {
    sub_1AF6F41EC();
    swift_allocError();
    *v16 = 0xD000000000000027;
    v16[1] = 0x80000001AFF30A90;
    swift_willThrow();
  }

  return v7;
}

id sub_1AF6F3F0C()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    sub_1AF6F37F0();
    v1 = [sub_1AF6F3BD8() blitCommandEncoder];
    swift_unknownObjectRelease();
    if (!v1)
    {
      sub_1AF6F41EC();
      v1 = swift_allocError();
      *v3 = 0xD000000000000025;
      v3[1] = 0x80000001AFF30A60;
      swift_willThrow();
      return v1;
    }

    ++*(v0 + 88);
    *(v0 + 72) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_1AF6F3FF4(uint64_t a1)
{
  if (!v1[8])
  {
    v2 = v1[7];
    goto LABEL_5;
  }

  v2 = *(v1[12] + 8 * a1);
  if (v2)
  {
LABEL_5:
    swift_unknownObjectRetain();
    return v2;
  }

  v4 = [swift_unknownObjectRetain() renderCommandEncoder];
  v5 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v5);

  MEMORY[0x1B2718AE0](93, 0xE100000000000000);
  v6 = sub_1AFDFCEC8();

  [v4 setLabel_];

  v7 = v1[12];
  *(v7 + 8 * a1) = [objc_allocWithZone(type metadata accessor for RenderCommandEncoder()) initWithEncoder_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v2 = *(v1[12] + 8 * a1);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return v2;
}

void *sub_1AF6F4158()
{
  v1 = *(v0 + 48);
  if (([v1 isEncoding] & 1) == 0)
  {
    sub_1AF6F37F0();
    v2 = sub_1AF6F3BD8();
    v3 = sub_1AFDFCEC8();
    [v1 beginEncodingWithCommandBuffer:v2 label:v3];
    swift_unknownObjectRelease();

    ++*(v0 + 88);
  }

  return v1;
}

unint64_t sub_1AF6F41EC()
{
  result = qword_1EB63D828;
  if (!qword_1EB63D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D828);
  }

  return result;
}

void sub_1AF6F4240()
{
  if (!qword_1ED7307F0)
  {
    sub_1AF6F4298();
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7307F0);
    }
  }
}

unint64_t sub_1AF6F4298()
{
  result = qword_1ED7307F8;
  if (!qword_1ED7307F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED7307F8);
  }

  return result;
}

uint64_t sub_1AF6F430C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00]();
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v12, v12 + *(*(v15 - 8) + 64), v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1AF6F4400(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v7 = sub_1AF473390(a3);
  v9 = v8;
  [v4 setComputePipelineState_];
  v12[0] = v7;
  v12[1] = v9;
  v12[2] = 6;
  return RGMTLComputeCommandEncoderDispatchOnGrid3D(v4, a1, v12, v10);
}

uint64_t sub_1AF6F448C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v7 = sub_1AF473390(a3);
  v9 = v8;
  v11 = v10;
  [v4 setComputePipelineState_];
  v13[0] = v7;
  v13[1] = v9;
  v13[2] = v11;
  return RGMTLComputeCommandEncoderDispatchOnGrid2D(v4, a1, v13, 1);
}

uint64_t sub_1AF6F4524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a3;
  v9[3] = a4;
  v9[5] = a2;
  return sub_1AF6F430C(a1, sub_1AF6F4908, v9, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], a8);
}

id sub_1AF6F458C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a3 + a2;
    swift_unknownObjectRetain();
    [v4 setBuffer:a1 offset:v6 atIndex:a4];

    return swift_unknownObjectRelease();
  }

  else
  {

    return [v4 setBuffer:0 offset:0 atIndex:a4];
  }
}

id sub_1AF6F463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    return [v4 setBuffer:a1 offset:a4 + a2 atIndex:?];
  }

  else
  {
    return [v4 setBuffer:0 offset:0 atIndex:?];
  }
}

id sub_1AF6F466C(uint64_t a1)
{
  [v1 setComputePipelineState_];
  sub_1AF6F494C(&v9);
  v6 = v9;
  v2 = v10;
  sub_1AF6F494C(&v9);
  v3 = v10;
  v4 = v9;
  v9 = v6;
  v10 = v2;
  v7 = v4;
  v8 = v3;
  return [v1 dispatchThreadgroups:&v9 threadsPerThreadgroup:&v7];
}

uint64_t sub_1AF6F46F4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = v3;
  [v4 setComputePipelineState_];
  swift_unknownObjectRetain();
  swift_getObjectType();
  v10[0] = sub_1AF471B10();
  v10[1] = v7;
  v10[2] = v8;
  [v4 dispatchThreadgroupsWithIndirectBuffer:a2 indirectBufferOffset:a3 threadsPerThreadgroup:v10];
  return swift_unknownObjectRelease();
}

uint64_t sub_1AF6F4798(void *a1, uint64_t a2)
{
  [v2 setComputePipelineState_];

  return RGMTLComputeCommandEncoderDispatchOnGrid1D(v2, a1, a2, v5);
}

uint64_t sub_1AF6F47F4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v7 = sub_1AF473390(a3);
  [v4 setComputePipelineState_];

  return RGMTLComputeCommandEncoderDispatchOnGrid1D(v4, a1, v7, v8);
}

uint64_t sub_1AF6F4874(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v7 = sub_1AF473390(a3);
  v9 = v8;
  v11 = v10;
  [v4 setComputePipelineState_];
  v14[0] = v7;
  v14[1] = v9;
  v14[2] = v11;
  return RGMTLComputeCommandEncoderDispatchOnGrid3D(v4, a1, v14, v12);
}

id sub_1AF6F4908(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  return [*(v2 + 32) setBytes:a1 length:v3 atIndex:*(v2 + 40)];
}

int64x2_t sub_1AF6F494C@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(1uLL);
  *a1 = result;
  a1[1].i64[0] = 1;
  return result;
}

uint64_t sub_1AF6F4960(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a3 + a2;
  swift_unknownObjectRetain();
  v13[0] = a4;
  v13[1] = a5;
  v13[2] = a6;
  [v6 dispatchThreadgroupsWithIndirectBuffer:a1 indirectBufferOffset:v11 threadsPerThreadgroup:v13];
  return swift_unknownObjectRelease();
}

uint64_t destroy for DepthStencilCache()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void *initializeWithCopy for DepthStencilCache(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  return a1;
}

void *assignWithCopy for DepthStencilCache(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[2] = a2[2];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[3] = a2[3];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[4] = a2[4];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[5] = a2[5];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[6] = a2[6];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[7] = a2[7];

  return a1;
}

_OWORD *assignWithTake for DepthStencilCache(_OWORD *a1, _OWORD *a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  a1[2] = a2[2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  a1[3] = a2[3];

  return a1;
}

uint64_t getEnumTagSinglePayload for DepthStencilCache(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for DepthStencilCache(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF6F4D08(void *a1)
{
  v2 = [a1 stencilCompareFunction];
  v3 = [a1 stencilFailureOperation];
  v4 = [a1 depthFailureOperation];
  v5 = [a1 depthStencilPassOperation];
  v6 = [a1 readMask];
  v7 = [a1 writeMask];
  v9 = 0;
  sub_1AF0D765C(v2, &v9);
  sub_1AF0D766C(v3, &v9);
  sub_1AF6F4E04(v4, &v9);
  sub_1AF0D767C(v5, &v9);
  sub_1AF0D83B4(v6, &v9);
  sub_1AF0D8784(v7, &v9);
  return v9;
}

uint64_t sub_1AF6F4E8C()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF6F4F08(uint64_t a1, char a2, uint64_t *a3)
{
  type metadata accessor for DisplayClock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *v6 = 0;
  *(v5 + 16) = "DisplayClock.tickHandlers";
  *(v5 + 24) = 25;
  *(v5 + 32) = 2;
  v7 = MEMORY[0x1E69E7CC0];
  *(v5 + 40) = v6;
  *(v5 + 48) = v7;
  *(v5 + 56) = v7;
  *(v5 + 64) = 0;
  *(v5 + 73) = 1;
  *(v5 + 72) = a2;
  result = sub_1AF6F548C();
  *a3 = v5;
  return result;
}

uint64_t sub_1AF6F4F98()
{
  type metadata accessor for RunloopThread();
  swift_allocObject();
  result = sub_1AF71A0F0(0x707369642E786676, 0xEF6B6E696C79616CLL, 33);
  qword_1EB6C29A8 = result;
  return result;
}

uint64_t sub_1AF6F4FFC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  [*(v0 + 64) invalidate];
  v2 = *(v0 + 64);
  *(v0 + 64) = 0;

  MEMORY[0x1B271DEA0](*(v0 + 40), -1, -1);

  return v0;
}

uint64_t sub_1AF6F5098()
{
  sub_1AF6F4FFC();

  return swift_deallocClassInstance();
}

void sub_1AF6F50CC(uint64_t a1)
{
  os_unfair_lock_lock(*(v1 + 40));
  if ((a1 & 0x8000000000000000) == 0)
  {
    v3 = *(v1 + 48);
    if (v3[2] > a1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 48) = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v3 = sub_1AFC0DB5C(v3);
        *(v1 + 48) = v3;
      }

      v5 = &v3[2 * a1];
      v6 = v5[4];
      v5[4] = 0;
      v5[5] = 0;
      sub_1AF0FB8EC(v6);
    }
  }

  v7 = *(v1 + 40);

  os_unfair_lock_unlock(v7);
}

void sub_1AF6F5158(uint64_t a1)
{
  os_unfair_lock_lock(*(a1 + 40));
  *(a1 + 56) = *(a1 + 48);

  os_unfair_lock_unlock(*(a1 + 40));
  v2 = *(a1 + 56);
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = v2 + 40;
    do
    {
      v5 = *(v4 - 8);
      if (v5)
      {

        v5(v6);
        sub_1AF0FB8EC(v5);
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1AF6F548C()
{
  v1 = *v0;
  v2 = sub_1AFDFCA88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = sub_1AFDFCAC8();
  v7 = *(v16[0] - 8);
  MEMORY[0x1EEE9AC00](v16[0], v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DisplayLinkTarget();
  v11 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  sub_1AF615168();
  v12 = sub_1AFDFDB08();
  v13 = swift_allocObject();
  v13[2] = v0;
  v13[3] = v11;
  v13[4] = v1;
  aBlock[4] = sub_1AF6F5A7C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AFCDA044;
  aBlock[3] = &unk_1F24E5F38;
  v14 = _Block_copy(aBlock);

  sub_1AFDFCAA8();
  v16[1] = MEMORY[0x1E69E7CC0];
  sub_1AF6CB338(&qword_1ED72F9D0, MEMORY[0x1E69E7F60]);
  sub_1AF6CB2E0();
  sub_1AF6CB338(&qword_1ED72F990, sub_1AF6CB2E0);
  sub_1AFDFE058();
  MEMORY[0x1B2719530](0, v10, v6, v14);
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v16[0]);
}

void sub_1AF6F57CC(uint64_t a1, uint64_t a2)
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [objc_opt_self() mainScreen];
  v5 = [v4 displayLinkWithTarget:a2 selector:sel_drawAndReturnError_];

  v6 = *(a1 + 64);
  *(a1 + 64) = v5;
  v7 = v5;

  if (v7)
  {
    [v7 setPaused_];
    v8 = qword_1EB632FB8;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v11 = v9;
    sub_1AF71A330(sub_1AF6F5B20, v10);

    v12 = objc_opt_self();
    v13 = [v12 defaultCenter];
    [v13 addObserver:a1 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

    v14 = [v12 defaultCenter];
    [v14 addObserver:a1 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
  }

  else
  {
    sub_1AFDFE518();
    __break(1u);
  }
}

uint64_t sub_1AF6F5A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AF6F5AA0(void *a1)
{
  v2 = [objc_opt_self() currentRunLoop];
  [a1 addToRunLoop:v2 forMode:*MEMORY[0x1E695DA28]];
}

id sub_1AF6F5B28(int8x16_t a1, float32x2_t a2)
{
  v4[0] = vcvtq_f64_f32(vmul_f32(*a1.i8, a2));
  v4[1] = vcvtq_f64_f32(vmul_f32(*&vextq_s8(a1, a1, 8uLL), a2));
  v4[2] = xmmword_1AFE42FD0;
  return [v2 setViewport_];
}

uint64_t sub_1AF6F5B9C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = a3 + a2;
  swift_unknownObjectRetain();
  [v4 setVertexBuffer:a1 offset:v7 atIndex:a4];

  return swift_unknownObjectRelease();
}

uint64_t sub_1AF6F5C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a5;
  swift_unknownObjectRetain();
  [v8 drawIndexedPrimitives:a1 indexCount:a2 indexType:a3 indexBuffer:a4 indexBufferOffset:v16 instanceCount:a6 baseVertex:a7 baseInstance:a8];

  return swift_unknownObjectRelease();
}

id sub_1AF6F5CFC(float a1)
{
  if ([v1 respondsToSelector_])
  {
    v3 = sub_1AFDFD718();
    [swift_unknownObjectRetain() performSelector:sel_rg_setLineWidth_ withObject:v3];

    return v1;
  }

  else
  {
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      *&v5 = a1;
      return [result setLineWidth_];
    }
  }

  return result;
}

id sub_1AF6F5DBC(id result, char a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (result == 1)
    {
      v3 = xmmword_1AFE21110;
    }

    else
    {
      v3 = xmmword_1AFE43020;
    }

    v4 = v3;
    return [v2 setVertexAmplificationCount:2 viewMappings:&v4];
  }

  else if (a2)
  {

    return [v2 setVertexAmplificationCount:1 viewMappings:0];
  }

  return result;
}

objc_class *sub_1AF6F6210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  result = swift_getObjectType();
  if (a2)
  {
    if (a6 != 1 || a8)
    {
      if (a7 > 0 || a8)
      {
        v20.receiver = v9;
        v20.super_class = result;
        return objc_msgSendSuper2(&v20, sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance_, a1, a2, a3, a4, a5, a6, a7, a8);
      }

      else
      {
        v21.receiver = v9;
        v21.super_class = result;
        return objc_msgSendSuper2(&v21, sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_, a1, a2, a3, a4, a5, a6);
      }
    }

    else
    {
      v19.receiver = v9;
      v19.super_class = result;
      return objc_msgSendSuper2(&v19, sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_, a1, a2, a3, a4, a5);
    }
  }

  return result;
}

id sub_1AF6F64D8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1AF6F6534()
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = [objc_opt_self() sharedCaptureManager];
  [v0 stopCapture];
}

unint64_t sub_1AF6F6654(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    while (v5[v7 + 4])
    {
      ++v8;
      v7 += 2;
      if (v6 == v8)
      {
        goto LABEL_5;
      }
    }

    v13 = v8;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1AFC0DB5C(v5);
    }

    v14 = &v5[v7];
    v15 = v5[v7 + 4];
    v14[4] = a1;
    v14[5] = a2;
    sub_1AF0FB8EC(v15);
    result = v13;
  }

  else
  {
LABEL_5:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1AF424B3C(0, v6 + 1, 1, v5);
    }

    result = v5[2];
    v10 = v5[3];
    v11 = result + 1;
    if (result >= v10 >> 1)
    {
      v16 = v5[2];
      v5 = sub_1AF424B3C(v10 > 1, v11, 1, v5);
      result = v16;
    }

    v5[2] = v11;
    v12 = &v5[2 * result];
    v12[4] = a1;
    v12[5] = a2;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1AF6F6774(void (*a1)(void))
{
  v2 = v1;
  v4 = v1[3];

  if (v4)
  {
    v6 = v1[7];
    os_unfair_lock_lock(v6);
    type metadata accessor for HiddenSystem();
    v7 = sub_1AF6D75D4();
    if (v8)
    {
      os_unfair_lock_unlock(v6);
    }

    v9 = (v1[12] + 96 * v7);
    v10 = v9[3];
    v31[0] = v9[2];
    v31[1] = v10;
    v11 = v9[7];
    v13 = v9[4];
    v12 = v9[5];
    v31[4] = v9[6];
    v31[5] = v11;
    v31[2] = v13;
    v31[3] = v12;
    v14 = v9[3];
    v32 = v9[2];
    v33 = v14;
    v15 = v9[4];
    v16 = v9[5];
    v17 = v9[7];
    v36 = v9[6];
    v37 = v17;
    v34 = v15;
    v35 = v16;
    sub_1AF6D8FC4(v31, v30);
    v40 = v34;
    v41 = v35;
    v42 = v36;
    v43 = v37;
    v38 = v32;
    v39 = v33;
    v18 = v34.n128_u64[1];
    v19 = v35.n128_u64[0];
    v20 = v37.n128_u64[0];
    os_unfair_lock_unlock(v6);
    if (!v20)
    {
    }

    v21 = v40.n128_u8[0];
    v29 = *(v2 + 4);
    v22 = v2[10];
    v23 = *(v2 + 88);
    v28 = *(v2 + 89);
    v2[8] = v38.n128_u64[0];
    v24 = v39;
    *(v2 + 9) = v39;
    *(v2 + 88) = v21;
    *(v2 + 89) = 0;
    v25 = thread_worker_index(v24);
    if (*v25 == -1)
    {
      v26 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    }

    else
    {
      v26 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *v25 + 8;
    }

    v27 = *(*v26 + 32);
    ecs_stack_allocator_push_snapshot(v27);
    v32.n128_u64[0] = v18;
    v32.n128_u64[1] = v19;
    sub_1AF4498F4(0, &unk_1ED727180);
    swift_unknownObjectRetain();
    swift_dynamicCast();
    a1(*&v31[0]);

    ecs_stack_allocator_pop_snapshot(v27);

    result = sub_1AF0D9DB0(&v38, &qword_1ED7220A0);
    *(v2 + 4) = v29;
    v2[10] = v22;
    *(v2 + 88) = v23;
    *(v2 + 89) = v28;
  }

  return result;
}

double sub_1AF6F69A4()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED73B840;
  v5 = 0;
  v6 = 2;
  v7 = 0;
  v8 = 2;
  v9 = 0;
  sub_1AF6FD4AC(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for Particle;
  *(inited + 40) = &off_1F252D7A8;

  sub_1AF5F58E4(inited, 1, v2);

  swift_setDeallocating();
  result = *v2;
  xmmword_1EB6C3180 = v2[0];
  *algn_1EB6C3190 = v2[1];
  qword_1EB6C31A0 = v3;
  return result;
}

uint64_t sub_1AF6F6ACC(uint64_t a1)
{
  if (qword_1EB637160 != -1)
  {
    swift_once();
  }

  v15[0] = xmmword_1EB6C3180;
  v15[1] = *algn_1EB6C3190;
  v16 = qword_1EB6C31A0;
  v3 = v5;
  sub_1AF6B06C0(v1, v15, a1 & 0xFFFFFFFFFFLL, v5);
  if (!*&v5[0])
  {
    if (qword_1EB632EC0 != -1)
    {
      swift_once();
    }

    v13[0] = xmmword_1EB6C2980;
    v13[1] = *algn_1EB6C2990;
    v14 = qword_1EB6C29A0;
    v3 = v6;
    sub_1AF6B06C0(v1, v13, a1 & 0xFFFFFFFFFFLL, v6);
    if (!*&v6[0])
    {
      if (qword_1ED72B140 != -1)
      {
        swift_once();
      }

      v11[0] = xmmword_1ED73B6D0;
      v11[1] = *&qword_1ED73B6E0;
      v12 = qword_1ED73B6F0;
      v3 = v7;
      sub_1AF6B06C0(v1, v11, a1 & 0xFFFFFFFFFFLL, v7);
      if (!*&v7[0])
      {
        if (qword_1ED72B138 != -1)
        {
          swift_once();
        }

        v9[0] = xmmword_1ED73B6A8;
        v9[1] = unk_1ED73B6B8;
        v10 = qword_1ED73B6C8;
        v3 = v8;
        sub_1AF6B06C0(v1, v9, a1 & 0xFFFFFFFFFFLL, v8);
        if (!*&v8[0])
        {
          return 0;
        }
      }
    }
  }

  sub_1AF0D9DB0(v3, &qword_1ED725EA0);
  return 1;
}

uint64_t sub_1AF6F6CDC()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v12 = qword_1ED73B840;
  v13 = 0;
  v14 = 2;
  v15 = 0;
  v16 = 2;
  v17 = 0;
  sub_1AF6FD4AC(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AFE431C0;
  *(v1 + 32) = &type metadata for EmitterDescription;
  *(v1 + 40) = &off_1F2563548;
  sub_1AF5F58E4(v1, 1, v5);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v2 = v6;
  sub_1AF6B06C0(v0, v5, 0x200000000, v6);
  sub_1AF692DB0(v5);
  if (!*&v6[0])
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1AFE431C0;
    *(v3 + 32) = &type metadata for ScriptsHolder;
    *(v3 + 40) = &off_1F255C998;
    sub_1AF5F58E4(v3, 1, v7);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v2 = v8;
    sub_1AF6B06C0(v0, v7, 0x200000000, v8);
    sub_1AF692DB0(v7);
    if (!*&v8[0])
    {
      if (qword_1EB637160 != -1)
      {
        swift_once();
      }

      v10[0] = xmmword_1EB6C3180;
      v10[1] = *algn_1EB6C3190;
      v11 = qword_1EB6C31A0;
      v2 = v9;
      sub_1AF6B06C0(v0, v10, 0x200000000, v9);
      if (!*&v9[0])
      {
        return 0;
      }
    }
  }

  sub_1AF0D9DB0(v2, &qword_1ED725EA0);
  return 1;
}

uint64_t sub_1AF6F6F7C(_BYTE *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v2)
  {

    os_unfair_recursive_lock_lock_with_options();
    sub_1AF6D2A6C(&type metadata for RERendererConfiguration);
    if (v4 == 2)
    {
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      v5 = v4;
      os_unfair_recursive_lock_unlock();

      if (v5)
      {
LABEL_8:
        LOBYTE(v2) = 0;
        return v2 & 1;
      }
    }

    if (!a1)
    {
      LOBYTE(v2) = 1;
      return v2 & 1;
    }

    if ((a1[393] & 1) == 0 && (a1[395] & 1) == 0)
    {
      LOBYTE(v2) = a1[396] ^ 1;
      return v2 & 1;
    }

    goto LABEL_8;
  }

  return v2 & 1;
}

uint64_t sub_1AF6F7050(uint64_t a1)
{
  v1 = *(a1 + 104);
  v2 = *(v1 + 16);

  v3 = 0;
  if (v2)
  {
    v4 = (v1 + 40);
    do
    {
      v5 = *v4;
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 160);
      swift_unknownObjectRetain();
      v8 = v7(ObjectType, v5);
      LOBYTE(ObjectType) = v9;
      swift_unknownObjectRelease();
      if (ObjectType)
      {
        v10 = 60;
      }

      else
      {
        v10 = v8;
      }

      if (v10 > v3)
      {
        v3 = v10;
      }

      v4 += 2;
      --v2;
    }

    while (v2);
  }

  if (sub_1AF6F6F7C(a1))
  {
    if (qword_1EB632FC0 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB6C29B0;
    v12 = *(qword_1EB6C29B0 + 64);
    if (!v12 || ([v12 preferredFrameRateRange], v13 = sub_1AFDFDA58(), (v13 & 0x100000000) != 0))
    {
      if (!v3)
      {
        return v3;
      }
    }

    else if (v3 == *&v13)
    {
      return v3;
    }

    v14 = *(v11 + 64);
    if (v14)
    {
      v15 = v14;
      sub_1AFDFDA48();
      [v15 setPreferredFrameRateRange_];
    }
  }

  return v3;
}

void sub_1AF6F71F4()
{
  v1 = v0;
  v51 = *MEMORY[0x1E69E9840];
  v2 = sub_1AFDFC128();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v48 - v9;
  if (byte_1EB6C31A9 != 1)
  {
    return;
  }

  byte_1EB6C31A9 = 0;
  v11 = [objc_allocWithZone(MEMORY[0x1E6973FF8]) init];
  [v11 setCaptureObject_];
  swift_unknownObjectRelease();
  v12 = [objc_opt_self() processInfo];
  v13 = [v12 environment];

  v14 = sub_1AFDFCC08();
  if (!*(v14 + 16) || (v15 = sub_1AF419914(0xD00000000000002DLL, 0x80000001AFF30E30), (v16 & 1) == 0))
  {

    goto LABEL_11;
  }

  v17 = (*(v14 + 56) + 16 * v15);
  v19 = *v17;
  v18 = v17[1];

  if (v19 != 49 || v18 != 0xE100000000000000)
  {
    v21 = sub_1AFDFEE28();

    if (v21)
    {
      goto LABEL_20;
    }

LABEL_11:
    v22 = objc_opt_self();
    v23 = [v22 defaultManager];
    v24 = [v23 temporaryDirectory];

    sub_1AFDFC0B8();
    sub_1AFDFC088();
    v25 = *(v3 + 8);
    v25(v6, v2);
    v26 = [v22 defaultManager];
    v27 = sub_1AFDFC048();
    v49 = 0;
    LODWORD(v22) = [v26 removeItemAtURL:v27 error:&v49];

    if (v22)
    {
      v28 = v49;
    }

    else
    {
      v29 = v49;
      v30 = sub_1AFDFBF58();

      swift_willThrow();
    }

    v31 = sub_1AFDFC048();
    [v11 setOutputURL_];

    [v11 setDestination_];
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1AFDFE218();

    v49 = 0xD000000000000016;
    v50 = 0x80000001AFF30E80;
    sub_1AF6FD464(&qword_1EB632790, MEMORY[0x1E6968FB0]);
    v32 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v32);

    v33 = v49;
    v34 = v50;
    v35 = sub_1AFDFDA28();
    if (qword_1ED731058 != -1)
    {
      v45 = v35;
      swift_once();
      v35 = v45;
    }

    v49 = 0;
    sub_1AF0D4F18(v35, &v49, v33, v34);

    v25(v10, v2);
    goto LABEL_25;
  }

LABEL_20:
  [v11 setDestination_];
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v36 = sub_1AFDFDA28();
  if (qword_1ED731058 != -1)
  {
    v47 = v36;
    swift_once();
    v36 = v47;
  }

  v49 = 0;
  sub_1AF0D4F18(v36, &v49, 0xD000000000000015, 0x80000001AFF30EA0);
LABEL_25:
  v37 = [objc_opt_self() sharedCaptureManager];
  v49 = 0;
  v38 = [v37 startCaptureWithDescriptor:v11 error:&v49];

  if (v38)
  {
    v39 = v49;

    *(v1 + 256) = 1;
  }

  else
  {
    v40 = v49;
    v41 = sub_1AFDFBF58();

    swift_willThrow();
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF30DD0);
    swift_getErrorValue();
    sub_1AFDFEDD8();
    v42 = v49;
    v43 = v50;
    v44 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v46 = v44;
      swift_once();
      v44 = v46;
    }

    v49 = 0;
    sub_1AF0D4F18(v44, &v49, v42, v43);
  }
}