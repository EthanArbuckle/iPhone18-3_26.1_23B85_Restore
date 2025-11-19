uint64_t sub_22F29AEA8(uint64_t *a1, void *a2, void *a3)
{
  v6 = *a1;
  v7 = sub_22F740B90();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);
  v8 = *(v3 + *a2);

  v9 = *(v3 + *a3);

  return v3;
}

uint64_t sub_22F29AF48(uint64_t *a1, void *a2, void *a3)
{
  v6 = *a1;
  v7 = sub_22F740B90();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);
  v8 = *(v3 + *a2);

  v9 = *(v3 + *a3);

  v10 = *(*v3 + 48);
  v11 = *(*v3 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22F29B014(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *v3;
  v5 = *a3;
  swift_beginAccess();
  v6 = *(v4 + v5);
}

uint64_t sub_22F29B05C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph14HistoricalPets_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t keypath_get_1Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t keypath_get_3Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_4Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_22F29B3C4()
{
  result = sub_22F740B90();
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

id static SongPlaybackInfoEntry.songPlaybackInfoFetchRequest()()
{
  swift_beginAccess();
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v1 = sub_22F740DF0();

  v2 = [v0 initWithEntityName_];

  return v2;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SongPlaybackInfoEntry.playbackInfo()(PhotosGraph::PlaybackInfo *__return_ptr retstr)
{
  v2 = v1;
  v4 = [v1 dateUTC];
  if (!v4)
  {
    goto LABEL_86;
  }

  v5 = v4;
  v6 = sub_22F740E20();
  v8 = v7;

  v9 = [v2 hoursUTC];
  if (!v9)
  {
LABEL_85:

LABEL_86:
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v76 = v6;
  v10 = v9;
  v11 = sub_22F740E20();
  v13 = v12;

  v74 = v11;
  v75 = v13;
  sub_22F160DE4();
  v14 = sub_22F7418B0();

  v15 = [v2 devices];
  if (!v15)
  {

    goto LABEL_85;
  }

  v73 = v8;
  v16 = v15;
  v17 = sub_22F740E20();
  v19 = v18;

  v74 = v17;
  v75 = v19;
  v20 = sub_22F7418B0();

  v21 = [v2 lastEndReason];
  if (!v21)
  {

    goto LABEL_85;
  }

  v72 = v20;
  v22 = v21;
  v23 = sub_22F740E20();
  v70 = v24;
  v71 = v23;

  v25 = *(v14 + 16);
  if (!v25)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_88:
    v62 = v28;

    v63 = [v2 playDurationInMilliseconds];
    v64 = [v2 playCount];
    v65 = [v2 skipCount];
    v66 = [v2 ignoreForRecommendations];
    retstr->dateUTC._countAndFlagsBits = v76;
    retstr->dateUTC._object = v73;
    retstr->hoursUTC._rawValue = v62;
    retstr->playDurationInMilliseconds = v63;
    retstr->playCount = v64;
    retstr->skipCount = v65;
    retstr->lastEndReason._countAndFlagsBits = v71;
    retstr->lastEndReason._object = v70;
    retstr->devices._rawValue = v72;
    retstr->ignoreForRecommendations = v66;
    return;
  }

  v26 = 0;
  v27 = &v74 + 1;
  v28 = MEMORY[0x277D84F90];
  while (v26 < *(v14 + 16))
  {
    v29 = (v14 + 32 + 16 * v26);
    v31 = *v29;
    v30 = v29[1];
    ++v26;
    v32 = HIBYTE(v30) & 0xF;
    v33 = v31 & 0xFFFFFFFFFFFFLL;
    if ((v30 & 0x2000000000000000) != 0)
    {
      v34 = HIBYTE(v30) & 0xF;
    }

    else
    {
      v34 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (!v34)
    {
      goto LABEL_70;
    }

    if ((v30 & 0x1000000000000000) != 0)
    {
      v68 = v28;

      v37 = sub_22F29C288(v31, v30, 10);
      v67 = v55;

      if (v67)
      {
        v28 = v68;
        v27 = &v74 + 1;
        goto LABEL_70;
      }

      v28 = v68;
LABEL_76:
      v58 = v28;
      v69 = retstr;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_22F13E69C(0, *(v58 + 2) + 1, 1, v58);
      }

      v28 = v58;
      v60 = *(v58 + 2);
      v59 = *(v58 + 3);
      v27 = &v74 + 1;
      if (v60 >= v59 >> 1)
      {
        v61 = sub_22F13E69C((v59 > 1), v60 + 1, 1, v58);
        v27 = &v74 + 1;
        v28 = v61;
      }

      *(v28 + 2) = v60 + 1;
      *&v28[8 * v60 + 32] = v37;
      retstr = v69;
      if (v26 == v25)
      {
        goto LABEL_88;
      }
    }

    else
    {
      if ((v30 & 0x2000000000000000) != 0)
      {
        v74 = v31;
        v75 = v30 & 0xFFFFFFFFFFFFFFLL;
        if (v31 == 43)
        {
          if (!v32)
          {
            goto LABEL_90;
          }

          if (--v32)
          {
            v37 = 0;
            v47 = v27;
            while (1)
            {
              v48 = *v47 - 48;
              if (v48 > 9)
              {
                break;
              }

              v49 = 10 * v37;
              if ((v37 * 10) >> 64 != (10 * v37) >> 63)
              {
                break;
              }

              v37 = v49 + v48;
              if (__OFADD__(v49, v48))
              {
                break;
              }

              ++v47;
              if (!--v32)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v31 == 45)
        {
          if (!v32)
          {
            goto LABEL_92;
          }

          if (--v32)
          {
            v37 = 0;
            v41 = v27;
            while (1)
            {
              v42 = *v41 - 48;
              if (v42 > 9)
              {
                break;
              }

              v43 = 10 * v37;
              if ((v37 * 10) >> 64 != (10 * v37) >> 63)
              {
                break;
              }

              v37 = v43 - v42;
              if (__OFSUB__(v43, v42))
              {
                break;
              }

              ++v41;
              if (!--v32)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v32)
        {
          v37 = 0;
          v52 = &v74;
          while (1)
          {
            v53 = *v52 - 48;
            if (v53 > 9)
            {
              break;
            }

            v54 = 10 * v37;
            if ((v37 * 10) >> 64 != (10 * v37) >> 63)
            {
              break;
            }

            v37 = v54 + v53;
            if (__OFADD__(v54, v53))
            {
              break;
            }

            v52 = (v52 + 1);
            if (!--v32)
            {
              goto LABEL_69;
            }
          }
        }
      }

      else
      {
        if ((v31 & 0x1000000000000000) != 0)
        {
          v35 = ((v30 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v56 = v28;
          v57 = v27;
          v35 = sub_22F741B80();
          v27 = v57;
          v28 = v56;
        }

        v36 = *v35;
        if (v36 == 43)
        {
          if (v33 < 1)
          {
            goto LABEL_93;
          }

          v32 = v33 - 1;
          if (v33 != 1)
          {
            v37 = 0;
            if (!v35)
            {
              goto LABEL_60;
            }

            v44 = v35 + 1;
            while (1)
            {
              v45 = *v44 - 48;
              if (v45 > 9)
              {
                break;
              }

              v46 = 10 * v37;
              if ((v37 * 10) >> 64 != (10 * v37) >> 63)
              {
                break;
              }

              v37 = v46 + v45;
              if (__OFADD__(v46, v45))
              {
                break;
              }

              ++v44;
              if (!--v32)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v36 == 45)
        {
          if (v33 < 1)
          {
            goto LABEL_91;
          }

          v32 = v33 - 1;
          if (v33 != 1)
          {
            v37 = 0;
            if (!v35)
            {
              goto LABEL_60;
            }

            v38 = v35 + 1;
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                break;
              }

              v40 = 10 * v37;
              if ((v37 * 10) >> 64 != (10 * v37) >> 63)
              {
                break;
              }

              v37 = v40 - v39;
              if (__OFSUB__(v40, v39))
              {
                break;
              }

              ++v38;
              if (!--v32)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v33)
        {
          v37 = 0;
          if (!v35)
          {
LABEL_60:
            LOBYTE(v32) = 0;
            goto LABEL_69;
          }

          while (1)
          {
            v50 = *v35 - 48;
            if (v50 > 9)
            {
              break;
            }

            v51 = 10 * v37;
            if ((v37 * 10) >> 64 != (10 * v37) >> 63)
            {
              break;
            }

            v37 = v51 + v50;
            if (__OFADD__(v51, v50))
            {
              break;
            }

            ++v35;
            if (!--v33)
            {
              goto LABEL_60;
            }
          }
        }
      }

      v37 = 0;
      LOBYTE(v32) = 1;
LABEL_69:
      if ((v32 & 1) == 0)
      {
        goto LABEL_76;
      }

LABEL_70:
      if (v26 == v25)
      {
        goto LABEL_88;
      }
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
}

id SongPlaybackInfoEntry.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id SongPlaybackInfoEntry.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SongPlaybackInfoEntry();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id SongPlaybackInfoEntry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SongPlaybackInfoEntry();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static SongPlaybackInfoEntry.entityName.getter()
{
  swift_beginAccess();
  v0 = qword_27DAB2F58;

  return v0;
}

uint64_t static SongPlaybackInfoEntry.entityName.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_27DAB2F58 = a1;
  off_27DAB2F60 = a2;
}

id static SongPlaybackInfoEntry.insert(in:dateUTC:hoursUTC:lastEndReason:playCount:skipCount:playDurationInMilliseconds:devices:ignoreForRecommendations:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, char a13)
{
  v16 = objc_opt_self();
  swift_beginAccess();

  v17 = sub_22F740DF0();

  v18 = [v16 entityForName:v17 inManagedObjectContext:a1];

  if (v18)
  {
    a1 = [objc_allocWithZone(type metadata accessor for SongPlaybackInfoEntry()) initWithEntity:v18 insertIntoManagedObjectContext:a1];

    v19 = sub_22F740DF0();
    [a1 setDateUTC_];

    if (a5)
    {
      v20 = sub_22F740DF0();
    }

    else
    {
      v20 = 0;
    }

    v21 = a12;
    [a1 setHoursUTC_];

    if (a7)
    {
      a7 = sub_22F740DF0();
    }

    [a1 setLastEndReason_];

    [a1 setPlayCount_];
    [a1 setSkipCount_];
    [a1 setPlayDurationInMilliseconds_];
    if (a12)
    {
      v21 = sub_22F740DF0();
    }

    [a1 setDevices_];

    [a1 setIgnoreForRecommendations_];
  }

  else
  {
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_22F29C1C0()
{
  swift_beginAccess();
  v0 = qword_27DAB2F58;

  return v0;
}

void *sub_22F29C214(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13E8, &qword_22F771808);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_22F29C288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_22F741040();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22F29C838();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22F741B80();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_22F29C838()
{
  v0 = sub_22F741050();
  v4 = sub_22F29C8B8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_22F29C8B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22F740EF0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_22F741880();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_22F29C214(v9, 0);
  v12 = sub_22F29CA10(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_22F740EF0();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_22F741B80();
LABEL_4:

  return sub_22F740EF0();
}

unint64_t sub_22F29CA10(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_22F1D244C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22F740FC0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22F741B80();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_22F1D244C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22F740FA0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

id ElectedSocialGroup.__allocating_init(socialGroup:assetCount:score:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___PGElectedSocialGroup_socialGroup] = a1;
  *&v7[OBJC_IVAR___PGElectedSocialGroup_assetCount] = a2;
  *&v7[OBJC_IVAR___PGElectedSocialGroup_score] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id ElectedSocialGroup.init(socialGroup:assetCount:score:)(uint64_t a1, uint64_t a2, double a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___PGElectedSocialGroup_socialGroup] = a1;
  *&v3[OBJC_IVAR___PGElectedSocialGroup_assetCount] = a2;
  *&v3[OBJC_IVAR___PGElectedSocialGroup_score] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id ElectedSocialGroup.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SocialGroupsElector.__allocating_init(graph:photoLibrary:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PGSocialGroupsElector_graph] = a1;
  *&v5[OBJC_IVAR___PGSocialGroupsElector_photoLibrary] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id SocialGroupsElector.init(graph:photoLibrary:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___PGSocialGroupsElector_graph] = a1;
  *&v2[OBJC_IVAR___PGSocialGroupsElector_photoLibrary] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t SocialGroupsElector.electSocialGroups(maxNumberOfElectedSocialGroups:progressReporter:)(char **a1, uint64_t a2)
{
  v4 = v2;
  sub_22F741690();
  if (v3)
  {
    return a2;
  }

  v7 = 0;
  if (qword_2810A9BB0 != -1)
  {
    goto LABEL_87;
  }

LABEL_3:
  v8 = qword_2810B4E80;
  *&v9 = CACurrentMediaTime();
  sub_22F1B560C("SocialGroupElection", 19, 2u, v9, 0, v8, v161);
  v162 = MEMORY[0x277D84F90];
  sub_22F120634(0, &qword_2810A8F78, off_27887B3E0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v132 = v4;
  v11 = *&v4[OBJC_IVAR___PGSocialGroupsElector_graph];
  v12 = [ObjCClassFromMetadata nodesInGraph_];
  v13 = [v12 array];

  sub_22F120634(0, &unk_2810A9050, off_27887B3D8);
  v14 = sub_22F741180();

  v160 = v14;
  v130 = a1;
  if (v14 >> 62)
  {
    v15 = sub_22F741A00();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = [objc_opt_self() progressWithTotalUnitCount_];
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  v18 = objc_allocWithZone(MEMORY[0x277D3AD50]);
  v158 = sub_22F2A07FC;
  v159 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v155 = 1107296256;
  v156 = sub_22F29ECA0;
  v157 = &block_descriptor_18;
  v19 = _Block_copy(&aBlock);
  v20 = v16;
  a2;

  v131 = [v18 initWithSourceProgress:v20 progressHandler:v19];
  _Block_release(v19);
  v142 = v20;

  sub_22F29E248(&v160, sub_22F2F45E0, sub_22F29EE08);
  v129 = v7;
  v21 = [objc_allocWithZone(MEMORY[0x277D22BB0]) init];
  v22 = [objc_allocWithZone(MEMORY[0x277D22BB0]) init];
  v23 = [objc_allocWithZone(MEMORY[0x277D22BB0]) init];
  v152 = v11;
  v24 = [v11 meNodeWithFallbackInferredMeNode];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 collection];
    v27 = [v26 familyPersonNodes];

    v28 = [v27 elementIdentifiers];
    v29 = [v25 collection];
    v138 = v22;
    v30 = [v29 partnerPersonNodes];

    v31 = [v30 elementIdentifiers];
    v32 = [v28 identifierSetByFormingUnion_];

    v33 = [v25 collection];
    v34 = [v33 friendPersonNodes];

    v35 = [v34 elementIdentifiers];
    v36 = [v25 collection];
    v37 = [v36 partnerPersonNodes];

    v38 = [v37 elementIdentifiers];
    v39 = v35;
    v22 = v38;
    v40 = v32;
  }

  else
  {
    v40 = v21;
    v39 = v23;
  }

  v41 = *&v132[OBJC_IVAR___PGSocialGroupsElector_photoLibrary];
  v42 = [objc_allocWithZone(MEMORY[0x277CD99F8]) initWithPhotoLibrary_];
  v43 = [v42 personUUIDsWithNegativeFeedback];

  v145 = sub_22F741420();
  v44 = objc_opt_self();
  v45 = [v41 librarySpecificFetchOptions];
  v46 = [v44 fetchSocialGroupsWithOptions_];

  v47 = type metadata accessor for SocialGroupsPromoter();
  v48 = swift_allocObject();
  *(v48 + 16) = MEMORY[0x277D84F98];
  v137 = v41;
  v49 = sub_22F32AFB4(v41);
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = v47;
  v50[4] = v48;
  v158 = sub_22F2A081C;
  v159 = v50;
  aBlock = MEMORY[0x277D85DD0];
  v155 = 1107296256;
  v156 = sub_22F1D4AD0;
  v157 = &block_descriptor_9;
  v4 = _Block_copy(&aBlock);
  a1 = v159;
  v51 = v49;

  v128 = v46;
  [v46 enumerateObjectsUsingBlock_];

  _Block_release(v4);
  swift_beginAccess();
  v136 = *(v48 + 16);

  v52 = v160;
  v140 = sub_22F32B11C(v160, v152);
  if (v52 >> 62)
  {
    v7 = sub_22F741A00();
  }

  else
  {
    v7 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = v40;
  a2 = v39;
  if (v7)
  {
    v40 = 0;
    v143 = v7;
    v144 = v52 & 0xC000000000000001;
    v134 = v52 + 32;
    v135 = v52 & 0xFFFFFFFFFFFFFF8;
    v139 = v22;
    v133 = v52;
    while (1)
    {
      if (v144)
      {
        v58 = MEMORY[0x2319016F0](v40, v52);
      }

      else
      {
        if (v40 >= *(v135 + 16))
        {
          goto LABEL_85;
        }

        v58 = *(v134 + 8 * v40);
      }

      v147 = v58;
      v59 = __OFADD__(v40, 1);
      v60 = (v40 + 1);
      if (v59)
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        swift_once();
        goto LABEL_3;
      }

      v146 = v60;
      v39 = v58;
      v61 = [objc_allocWithZone(PGGraphSocialGroupNodeCollection) initWithNode_];
      a1 = &selRef_maximumTimeDecayScoreByPastMemoryIdentifier;
      v62 = [v61 memberNodes];

      v63 = [v62 uuids];
      v4 = sub_22F741420();

      v64 = *(sub_22F1ABBB4(v145, v4) + 16);

      if (!v64)
      {
        break;
      }

LABEL_14:
      v7 = v143;

      v40 = v146;
      if (v146 == v143)
      {
        goto LABEL_52;
      }
    }

    v152 = a2;
    v150 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
    v148 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
    v65 = [v147 collection];
    v66 = [v65 memberNodes];

    v67 = [v66 elementIdentifiers];
    v4 = [v22 identifierSetByIntersectingIdentifierSet_];

    v141 = [v4 count];
    v7 = [v147 sortedMemberNodes];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB37D0, &unk_22F785C40);
    v68 = sub_22F741180();

    if (v68 >> 62)
    {
      v69 = sub_22F741A00();
      if (!v69)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v69)
      {
        goto LABEL_34;
      }
    }

    if (v69 < 1)
    {
      goto LABEL_86;
    }

    for (i = 0; i != v69; ++i)
    {
      if ((v68 & 0xC000000000000001) != 0)
      {
        v71 = MEMORY[0x2319016F0](i, v68);
      }

      else
      {
        v71 = *(v68 + 8 * i + 32);
      }

      v72 = v71;
      v73 = v53;
      v74 = [v53 containsIdentifier_];
      v75 = [v72 identifier];
      if (v74)
      {
        [v150 addIdentifier_];
      }

      else if ([a2 containsIdentifier_])
      {
        [v72 identifier];
        [v148 addIdentifier_];
      }

      v53 = v73;
    }

LABEL_34:

    v55 = v150;
    v151 = [v53 identifierSetBySubtractingIdentifierSet_];

    v57 = v148;
    v149 = [a2 identifierSetBySubtractingIdentifierSet_];

    a1 = &selRef_maximumTimeDecayScoreByPastMemoryIdentifier;
    v76 = [v147 memberNodes];
    v77 = sub_22F741420();

    v78 = *(v77 + 16);

    if (v78)
    {
      v79 = [v55 count];

      v80 = v79;
      v81 = [v147 memberNodes];
      v82 = sub_22F741420();

      v83 = *(v82 + 16);

      v84 = v80 / v83 * 0.75;
      v85 = [v57 count];

      v86 = v85;
      v87 = [v147 memberNodes];
      v88 = sub_22F741420();

      v89 = *(v88 + 16);

      v90 = v86 / v89 * 0.5;
      v91 = v147;
      if (v141 <= 0)
      {
        v92 = 0.0;
        a2 = v149;
        goto LABEL_42;
      }

      a2 = v149;
    }

    else
    {

      v90 = 0.0;
      v84 = 0.0;
      v92 = 0.0;
      v91 = v147;
      a2 = v149;
      if (v141 < 1)
      {
        goto LABEL_42;
      }
    }

    v93 = [v91 memberNodes];
    v94 = sub_22F741420();

    v95 = *(v94 + 16);

    v96 = v95 == 1;
    v91 = v147;
    if (v96)
    {
      v92 = 1.0;
    }

    else
    {
      v92 = 0.0;
    }

LABEL_42:
    [v91 importance];
    v98 = v97;
    [v142 becomeCurrentWithPendingUnitCount_];
    v99 = sub_22F32B718(v91, v140, v137);
    if (v99)
    {
      v100 = v99;

      v101 = _s11PhotosGraph20SocialGroupsPromoterC15socialGroupHash3forSSSaySo8PHPersonCG_tFZ_0(v100);
      v103 = v102;

      if (*(v136 + 16))
      {
        v104 = sub_22F1229E8(v101, v103);
        v106 = v105;

        if (v106)
        {
          v4 = *(*(v136 + 56) + 8 * v104);
          v107 = [v4 countOfExclusiveAssets];
LABEL_48:
          [v142 resignCurrent];
          if (v107 < 6)
          {
            v54 = v55;
            v55 = v91;
            v56 = v57;
            v57 = v4;
          }

          else
          {
            v109 = type metadata accessor for ElectedSocialGroup();
            v110 = objc_allocWithZone(v109);
            *&v110[OBJC_IVAR___PGElectedSocialGroup_socialGroup] = v91;
            *&v110[OBJC_IVAR___PGElectedSocialGroup_assetCount] = v107;
            *&v110[OBJC_IVAR___PGElectedSocialGroup_score] = v92 + v90 + v84 + v98 * 0.25;
            v153.receiver = v110;
            v153.super_class = v109;
            v54 = v91;
            v111 = objc_msgSendSuper2(&v153, sel_init);
            MEMORY[0x231900D00]();
            if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22F7411C0();
            }

            sub_22F741220();

            v56 = v4;
          }

          v39 = v57;
          v53 = v151;
          v22 = v139;
          v52 = v133;
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    sub_22F29E2D8(v91);
    v107 = v108;
    v4 = 0;
    goto LABEL_48;
  }

LABEL_52:

  [v131 invalidate];
  sub_22F29E248(&v162, sub_22F2F45E0, sub_22F29ED08);
  v113 = v130;
  if (v130 < 0)
  {
    __break(1u);
  }

  else
  {
    v40 = v129;
    v39 = a2;
    v152 = v53;
    a2 = v162;
    v53 = v22;
    v112 = v162 & 0xFFFFFFFFFFFFFF8;
    v52 = v162 >> 62;
    if (!(v162 >> 62))
    {
      v114 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v114 >= v130)
      {
        v115 = v130;
      }

      else
      {
        v115 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v130)
      {
        v116 = v115;
      }

      else
      {
        v116 = 0;
      }

      if (v114 >= v116)
      {
        goto LABEL_61;
      }

LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }
  }

  if (a2 < 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = v112;
  }

  v126 = sub_22F741A00();
  result = sub_22F741A00();
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  if (v126 >= v130)
  {
    v127 = v130;
  }

  else
  {
    v127 = v126;
  }

  if (v126 < 0)
  {
    v127 = v130;
  }

  if (v130)
  {
    v116 = v127;
  }

  else
  {
    v116 = 0;
  }

  if (sub_22F741A00() < v116)
  {
    goto LABEL_104;
  }

LABEL_61:
  if ((a2 & 0xC000000000000001) != 0 && v116)
  {
    type metadata accessor for ElectedSocialGroup();

    v117 = 0;
    do
    {
      v118 = v117 + 1;
      sub_22F741B20();
      v117 = v118;
    }

    while (v116 != v118);
  }

  else
  {
  }

  if (v52)
  {
    v7 = sub_22F741DB0();
    v113 = v119;
    v52 = v120;
    v116 = v121;

    if (v116)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  v7 = (a2 & 0xFFFFFFFFFFFFFF8);
  v113 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v116 = (2 * v116) | 1;
  if ((v116 & 1) == 0)
  {
LABEL_71:
    sub_22F10AD54(v7, v113, v52, v116);
    a2 = v122;
    goto LABEL_78;
  }

LABEL_72:
  sub_22F742070();
  swift_unknownObjectRetain_n();
  v123 = swift_dynamicCastClass();
  if (!v123)
  {
    swift_unknownObjectRelease();
    v123 = MEMORY[0x277D84F90];
  }

  v124 = *(v123 + 16);

  if (__OFSUB__(v116 >> 1, v52))
  {
    goto LABEL_105;
  }

  if (v124 != (v116 >> 1) - v52)
  {
LABEL_106:
    swift_unknownObjectRelease_n();
    goto LABEL_71;
  }

  a2 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!a2)
  {
    a2 = MEMORY[0x277D84F90];
LABEL_78:
    swift_unknownObjectRelease();
  }

  sub_22F1B2BBC(0);
  sub_22F741690();

  if (v40)
  {
  }

  return a2;
}

uint64_t sub_22F29E000(void *a1)
{
  v2 = sub_22F740B90();
  v3 = *(*(v2 - 8) + 64);
  [a1 fractionCompleted];
  return sub_22F741690();
}

uint64_t sub_22F29E248(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = a2(v6);
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

void sub_22F29E2D8(void *a1)
{
  v6 = v1;
  v85[2] = *MEMORY[0x277D85DE8];
  v8 = sub_22F740B90();
  v79 = *(v8 - 8);
  v80 = v8;
  v9 = *(v79 + 64);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = (&v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [a1 sortedMemberNodes];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB37D0, &unk_22F785C40);
  v14 = sub_22F741180();

  if (v14 >> 62)
  {
LABEL_52:
    v15 = sub_22F741A00();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v78 = v12;
  v82 = v6;
  if (v15)
  {
    v85[0] = MEMORY[0x277D84F90];
    v12 = v85;
    sub_22F146454(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
      goto LABEL_54;
    }

    v16 = 0;
    v12 = v85[0];
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x2319016F0](v16, v14);
      }

      else
      {
        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = [v17 localIdentifier];
      v20 = sub_22F740E20();
      v22 = v21;

      v85[0] = v12;
      v24 = v12[2];
      v23 = v12[3];
      if (v24 >= v23 >> 1)
      {
        sub_22F146454((v23 > 1), v24 + 1, 1);
        v12 = v85[0];
      }

      ++v16;
      v12[2] = (v24 + 1);
      v25 = &v12[2 * v24];
      v25[4] = v20;
      v25[5] = v22;
    }

    while (v15 != v16);

    v6 = v82;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v5 = *&v6[OBJC_IVAR___PGSocialGroupsElector_photoLibrary];
  v2 = sub_22F32AFB4(v5);
  v26 = objc_opt_self();
  v27 = sub_22F741160();
  v14 = [v26 fetchPersonsWithLocalIdentifiers:v27 options:v2];

  v28 = [v14 fetchedObjects];
  if (!v28)
  {
LABEL_57:

    goto LABEL_58;
  }

  v29 = v28;
  v77 = sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  v4 = sub_22F741180();

  v3 = v4 & 0xFFFFFFFFFFFFFF8;
  if (!(v4 >> 62))
  {
    v30 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

LABEL_54:
  if (sub_22F741A00() < 1)
  {
LABEL_56:

    goto LABEL_57;
  }

  v30 = sub_22F741A00();
LABEL_17:
  v74 = v5;
  v75 = v2;
  v76 = v14;
  if (v30)
  {
    v31 = 0;
    v14 = v4 & 0xC000000000000001;
    v81 = MEMORY[0x277D84F90];
    v5 = &selRef_topTierAestheticScoreForRatio_inPhotoLibrary_;
    do
    {
      v2 = v31;
      while (1)
      {
        if (v14)
        {
          v32 = MEMORY[0x2319016F0](v2, v4);
        }

        else
        {
          if (v2 >= *(v3 + 16))
          {
            goto LABEL_51;
          }

          v32 = *(v4 + 8 * v2 + 32);
        }

        v6 = v32;
        v31 = (v2 + 1);
        if (__OFADD__(v2, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v33 = [v32 uuid];
        if (v33)
        {
          break;
        }

        ++v2;
        if (v31 == v30)
        {
          goto LABEL_35;
        }
      }

      v34 = v33;
      v35 = sub_22F740E20();
      v73 = v36;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = sub_22F13E1A8(0, *(v81 + 2) + 1, 1, v81);
      }

      v38 = *(v81 + 2);
      v37 = *(v81 + 3);
      v6 = (v38 + 1);
      if (v38 >= v37 >> 1)
      {
        v81 = sub_22F13E1A8((v37 > 1), v38 + 1, 1, v81);
      }

      v39 = v81;
      *(v81 + 2) = v6;
      v40 = &v39[16 * v38];
      v41 = v73;
      *(v40 + 4) = v35;
      *(v40 + 5) = v41;
    }

    while (v31 != v30);
  }

  else
  {
    v81 = MEMORY[0x277D84F90];
  }

LABEL_35:
  v42 = sub_22F1515F8(v81);

  v84 = v42;
  v43 = [*&v82[OBJC_IVAR___PGSocialGroupsElector_graph] meNodeWithFallbackInferredMeNode];
  v44 = v76;
  if (!v43)
  {

    v49 = v74;
    goto LABEL_39;
  }

  v45 = v43;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v47 = [v45 localIdentifier];
  v48 = [ObjCClassFromMetadata uuidFromLocalIdentifier_];

  v49 = v74;
  if (v48)
  {

    v50 = sub_22F740E20();
    v52 = v51;

    sub_22F10BBDC(v85, v50, v52);

    v42 = v84;
LABEL_39:
    v2 = v75;
    if (*(v42 + 16) >= 2uLL)
    {
      v53 = [v49 librarySpecificFetchOptions];
      v54 = [objc_allocWithZone(MEMORY[0x277CD9888]) init];
      v55 = objc_opt_self();
      v56 = sub_22F741410();

      v85[0] = 0;
      v57 = [v55 fetchExclusiveSocialGroupAssetsForPersons:v56 minimumNumberOfSharedAssets:5 options:v53 error:v85];

      if (v57)
      {
        v58 = v85[0];

        v54 = v57;
      }

      else
      {
        v59 = v85[0];
        v60 = sub_22F73F370();

        swift_willThrow();
        if (qword_2810A9BB0 != -1)
        {
          swift_once();
        }

        v61 = v78;
        sub_22F1B3158(v78);
        v62 = v60;
        v63 = sub_22F740B70();
        v64 = sub_22F7415E0();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v85[0] = v66;
          *v65 = 136315138;
          v83 = v60;
          v67 = v60;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
          v68 = sub_22F740E90();
          v70 = sub_22F145F20(v68, v69, v85);

          *(v65 + 4) = v70;
          _os_log_impl(&dword_22F0FC000, v63, v64, "SocialGroupElector: error fetching exclusive assets for social group %s", v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v66);
          v71 = v66;
          v2 = v75;
          MEMORY[0x2319033A0](v71, -1, -1);
          MEMORY[0x2319033A0](v65, -1, -1);
        }

        else
        {
        }

        (*(v79 + 8))(v61, v80);
        v44 = v76;
      }

      [v54 count];

      goto LABEL_59;
    }

LABEL_58:
LABEL_59:
    v72 = *MEMORY[0x277D85DE8];
    return;
  }

  __break(1u);
}

void sub_22F29ECA0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_22F29ED08(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ElectedSocialGroup();
        v6 = sub_22F741200();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_22F29F1C0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F29EF1C(0, v2, 1, a1);
  }
}

uint64_t sub_22F29EE08(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22F742000();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22F120634(0, &unk_2810A9050, off_27887B3D8);
        v6 = sub_22F741200();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_22F29F8E8(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22F29F060(0, v2, 1, a1);
  }

  return result;
}

void sub_22F29EF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_5:
    v24 = a3;
    v7 = *(v4 + 8 * a3);
    v22 = v6;
    v23 = v5;
    while (1)
    {
      v8 = *v5;
      v9 = *&v7[OBJC_IVAR___PGElectedSocialGroup_score];
      v10 = *&v7[OBJC_IVAR___PGElectedSocialGroup_socialGroup];
      v11 = v7;
      v12 = v8;
      [v10 importance];
      v14 = v13;
      v15 = *&v12[OBJC_IVAR___PGElectedSocialGroup_score];
      [*&v12[OBJC_IVAR___PGElectedSocialGroup_socialGroup] importance];
      v17 = v16;

      v18 = v15 < v9;
      if (v9 == v15)
      {
        v18 = v17 < v14;
      }

      if (!v18)
      {
LABEL_4:
        a3 = v24 + 1;
        v5 = v23 + 8;
        v6 = v22 - 1;
        if (v24 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v19 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v19;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22F29F060(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_5:
    v20 = v4;
    v21 = a3;
    v6 = *(v22 + 8 * a3);
    v19 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 memberNodes];
      v11 = sub_22F741420();

      v12 = *(v11 + 16);

      v13 = [v9 memberNodes];
      v14 = sub_22F741420();

      v15 = *(v14 + 16);

      if (v15 >= v12)
      {
LABEL_4:
        a3 = v21 + 1;
        v4 = v20 + 8;
        v5 = v19 - 1;
        if (v21 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v22)
      {
        break;
      }

      v16 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v16;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22F29F1C0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_93:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_125:
      v9 = sub_22F3F5F98(v9);
    }

    v108 = *(v9 + 2);
    if (v108 >= 2)
    {
      while (*a3)
      {
        v109 = *&v9[16 * v108];
        v110 = *&v9[16 * v108 + 24];
        sub_22F2A0090((*a3 + 8 * v109), (*a3 + 8 * *&v9[16 * v108 + 16]), (*a3 + 8 * v110), v5);
        if (v6)
        {
          goto LABEL_103;
        }

        if (v110 < v109)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_22F3F5F98(v9);
        }

        if (v108 - 2 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v111 = &v9[16 * v108];
        *v111 = v109;
        *(v111 + 1) = v110;
        sub_22F3F5F0C(v108 - 1);
        v108 = *(v9 + 2);
        if (v108 <= 1)
        {
          goto LABEL_103;
        }
      }

      goto LABEL_129;
    }

LABEL_103:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v119 = v7;
      v113 = v6;
      v11 = *(*a3 + 8 * v8);
      v12 = (*a3 + 8 * v10);
      v14 = *v12;
      v13 = v12 + 2;
      v15 = *&v11[OBJC_IVAR___PGElectedSocialGroup_score];
      v6 = &OBJC_IVAR____TtC11PhotosGraph21SocialGroupsEvaluator_photoLibrary;
      v16 = *&v11[OBJC_IVAR___PGElectedSocialGroup_socialGroup];
      v17 = v11;
      v18 = v14;
      [v16 importance];
      v20 = v19;
      v21 = *&v18[OBJC_IVAR___PGElectedSocialGroup_score];
      [*&v18[OBJC_IVAR___PGElectedSocialGroup_socialGroup] importance];
      v23 = v22;

      v24 = v21 < v15;
      if (v15 == v21)
      {
        v24 = v23 < v20;
      }

      v121 = v24;
      v5 = (v10 + 2);
      while (1)
      {
        v8 = v119;
        if (v119 == v5)
        {
          break;
        }

        v25 = *(v13 - 1);
        v6 = &OBJC_IVAR____TtC11PhotosGraph21SocialGroupsEvaluator_photoLibrary;
        v26 = *(*v13 + OBJC_IVAR___PGElectedSocialGroup_score);
        v27 = *(*v13 + OBJC_IVAR___PGElectedSocialGroup_socialGroup);
        v28 = *v13;
        v29 = v25;
        [v27 importance];
        v31 = v30;
        v32 = *&v29[OBJC_IVAR___PGElectedSocialGroup_score];
        [*&v29[OBJC_IVAR___PGElectedSocialGroup_socialGroup] importance];
        v34 = v33;

        v35 = v34 >= v31;
        if (v26 != v32)
        {
          v35 = v32 >= v26;
        }

        v5 = (v5 + 1);
        ++v13;
        if (v121 == v35)
        {
          v8 = v5 - 1;
          break;
        }
      }

      v36 = 8 * v10;
      if (!v121)
      {
        goto LABEL_22;
      }

      if (v8 < v10)
      {
        goto LABEL_122;
      }

      if (v10 < v8)
      {
        v37 = 8 * v8 - 8;
        v38 = v8;
        v39 = v10;
        v6 = v113;
        do
        {
          if (v39 != --v38)
          {
            v41 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v40 = *(v41 + v36);
            *(v41 + v36) = *(v41 + v37);
            *(v41 + v37) = v40;
          }

          ++v39;
          v37 -= 8;
          v36 += 8;
        }

        while (v39 < v38);
      }

      else
      {
LABEL_22:
        v6 = v113;
      }
    }

    v42 = a3[1];
    if (v8 < v42)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_121;
      }

      if (v8 - v10 < a4)
      {
        v43 = v10 + a4;
        if (__OFADD__(v10, a4))
        {
          goto LABEL_123;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v10)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v8 != v43)
        {
          break;
        }
      }
    }

LABEL_42:
    if (v8 < v10)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_22F13D970(0, *(v9 + 2) + 1, 1, v9);
    }

    v63 = *(v9 + 2);
    v62 = *(v9 + 3);
    v64 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      v9 = sub_22F13D970((v62 > 1), v63 + 1, 1, v9);
    }

    *(v9 + 2) = v64;
    v65 = &v9[16 * v63];
    *(v65 + 4) = v10;
    *(v65 + 5) = v8;
    v66 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (v63)
    {
      while (1)
      {
        v67 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v68 = *(v9 + 4);
          v69 = *(v9 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_62:
          if (v71)
          {
            goto LABEL_109;
          }

          v84 = &v9[16 * v64];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_112;
          }

          v90 = &v9[16 * v67 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_116;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v64 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v94 = &v9[16 * v64];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_76:
        if (v89)
        {
          goto LABEL_111;
        }

        v97 = &v9[16 * v67];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_114;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_83:
        v105 = v67 - 1;
        if (v67 - 1 >= v64)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v106 = *&v9[16 * v105 + 32];
        v5 = *&v9[16 * v67 + 40];
        sub_22F2A0090((*a3 + 8 * v106), (*a3 + 8 * *&v9[16 * v67 + 32]), (*a3 + 8 * v5), v66);
        if (v6)
        {
          goto LABEL_103;
        }

        if (v5 < v106)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_22F3F5F98(v9);
        }

        if (v105 >= *(v9 + 2))
        {
          goto LABEL_106;
        }

        v107 = &v9[16 * v105];
        *(v107 + 4) = v106;
        *(v107 + 5) = v5;
        sub_22F3F5F0C(v67);
        v64 = *(v9 + 2);
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v9[16 * v64 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_107;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_108;
      }

      v79 = &v9[16 * v64];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_110;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_113;
      }

      if (v83 >= v75)
      {
        v101 = &v9[16 * v67 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_117;
        }

        if (v70 < v104)
        {
          v67 = v64 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_93;
    }
  }

  v114 = v6;
  v115 = v10;
  v44 = *a3;
  v45 = *a3 + 8 * v8 - 8;
  v46 = v10 - v8;
  v117 = v43;
LABEL_33:
  v120 = v45;
  v122 = v8;
  v47 = *(v44 + 8 * v8);
  v118 = v46;
  v48 = v45;
  while (1)
  {
    v49 = *v48;
    v50 = *&v47[OBJC_IVAR___PGElectedSocialGroup_score];
    v5 = &OBJC_IVAR____TtC11PhotosGraph21SocialGroupsEvaluator_photoLibrary;
    v51 = *&v47[OBJC_IVAR___PGElectedSocialGroup_socialGroup];
    v52 = v47;
    v53 = v49;
    [v51 importance];
    v55 = v54;
    v56 = *&v53[OBJC_IVAR___PGElectedSocialGroup_score];
    [*&v53[OBJC_IVAR___PGElectedSocialGroup_socialGroup] importance];
    v58 = v57;

    v59 = v56 < v50;
    if (v50 == v56)
    {
      v59 = v58 < v55;
    }

    if (!v59)
    {
LABEL_32:
      ++v8;
      v45 = v120 + 8;
      v46 = v118 - 1;
      if (v122 + 1 != v117)
      {
        goto LABEL_33;
      }

      v8 = v117;
      v6 = v114;
      v10 = v115;
      goto LABEL_42;
    }

    if (!v44)
    {
      break;
    }

    v60 = *v48;
    v47 = *(v48 + 8);
    *v48 = v47;
    *(v48 + 8) = v60;
    v48 -= 8;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
}

uint64_t sub_22F29F8E8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v111 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_86:
    v5 = v10;
    v10 = *v111;
    if (!*v111)
    {
      goto LABEL_124;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_118:
      result = sub_22F3F5F98(v5);
      v5 = result;
    }

    v100 = *(v5 + 2);
    if (v100 >= 2)
    {
      while (*v7)
      {
        v101 = *&v5[16 * v100];
        v102 = *&v5[16 * v100 + 24];
        sub_22F2A0438((*v7 + 8 * v101), (*v7 + 8 * *&v5[16 * v100 + 16]), (*v7 + 8 * v102), v10);
        if (v6)
        {
        }

        if (v102 < v101)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_22F3F5F98(v5);
        }

        if (v100 - 2 >= *(v5 + 2))
        {
          goto LABEL_112;
        }

        v103 = &v5[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        result = sub_22F3F5F0C(v100 - 1);
        v100 = *(v5 + 2);
        if (v100 <= 1)
        {
        }
      }

      goto LABEL_122;
    }
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v114 = v8;
      v107 = v10;
      v109 = v6;
      v13 = *v7;
      v14 = *(*v7 + 8 * v12);
      v15 = v11;
      v112 = 8 * v11;
      v16 = (v13 + 8 * v11);
      v18 = *v16;
      v17 = v16 + 2;
      v19 = v14;
      v5 = v18;
      v20 = [v19 memberNodes];
      v21 = sub_22F741420();

      v118 = *(v21 + 16);

      v22 = [v5 memberNodes];
      v23 = sub_22F741420();

      v116 = *(v23 + 16);

      v106 = v15;
      v24 = v15 + 2;
      while (1)
      {
        v12 = v114;
        if (v114 == v24)
        {
          break;
        }

        v25 = *(v17 - 1);
        v26 = *v17;
        v5 = v25;
        v27 = [v26 memberNodes];
        v28 = sub_22F741420();

        v29 = *(v28 + 16);

        v30 = [v5 memberNodes];
        v31 = sub_22F741420();

        v32 = *(v31 + 16);

        ++v24;
        ++v17;
        if (v116 < v118 == v32 >= v29)
        {
          v12 = v24 - 1;
          break;
        }
      }

      v10 = v107;
      v6 = v109;
      v7 = a3;
      v11 = v106;
      v33 = v112;
      if (v116 < v118)
      {
        if (v12 < v106)
        {
          goto LABEL_115;
        }

        if (v106 < v12)
        {
          v34 = 8 * v12 - 8;
          v35 = v12;
          v36 = v106;
          do
          {
            if (v36 != --v35)
            {
              v38 = *a3;
              if (!*a3)
              {
                goto LABEL_121;
              }

              v37 = *(v38 + v33);
              *(v38 + v33) = *(v38 + v34);
              *(v38 + v34) = v37;
            }

            ++v36;
            v34 -= 8;
            v33 += 8;
          }

          while (v36 < v35);
        }
      }
    }

    v39 = v7[1];
    if (v12 < v39)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_114;
      }

      if (v12 - v11 < a4)
      {
        v40 = v11 + a4;
        if (__OFADD__(v11, a4))
        {
          goto LABEL_116;
        }

        if (v40 >= v39)
        {
          v40 = v7[1];
        }

        if (v40 < v11)
        {
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        if (v12 != v40)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v12 < v11)
    {
      goto LABEL_113;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F13D970(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v55 = *(v10 + 2);
    v54 = *(v10 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_22F13D970((v54 > 1), v55 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v56;
    v57 = &v10[16 * v55];
    *(v57 + 4) = v11;
    *(v57 + 5) = v12;
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_123;
    }

    v120 = v12;
    if (v55)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v10 + 4);
          v60 = *(v10 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_55:
          if (v62)
          {
            goto LABEL_102;
          }

          v75 = &v10[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_105;
          }

          v81 = &v10[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_108;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_109;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v85 = &v10[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_69:
        if (v80)
        {
          goto LABEL_104;
        }

        v88 = &v10[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_107;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_76:
        v96 = v58 - 1;
        if (v58 - 1 >= v56)
        {
          __break(1u);
LABEL_98:
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
          goto LABEL_117;
        }

        if (!*v7)
        {
          goto LABEL_120;
        }

        v97 = *&v10[16 * v96 + 32];
        v98 = *&v10[16 * v58 + 40];
        sub_22F2A0438((*v7 + 8 * v97), (*v7 + 8 * *&v10[16 * v58 + 32]), (*v7 + 8 * v98), v5);
        if (v6)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_98;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_22F3F5F98(v10);
        }

        if (v96 >= *(v10 + 2))
        {
          goto LABEL_99;
        }

        v99 = &v10[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        result = sub_22F3F5F0C(v58);
        v56 = *(v10 + 2);
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v10[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_100;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_101;
      }

      v70 = &v10[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_103;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_106;
      }

      if (v74 >= v66)
      {
        v92 = &v10[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v120;
    if (v120 >= v8)
    {
      goto LABEL_86;
    }
  }

  v108 = v10;
  v110 = v6;
  v121 = *v7;
  v41 = *v7 + 8 * v12 - 8;
  v42 = v11 - v12;
  v113 = v40;
LABEL_28:
  v117 = v41;
  v119 = v12;
  v43 = *(v121 + 8 * v12);
  v115 = v42;
  while (1)
  {
    v44 = *v41;
    v45 = v43;
    v5 = v44;
    v46 = [v45 memberNodes];
    v47 = sub_22F741420();

    v48 = *(v47 + 16);

    v49 = [v5 memberNodes];
    v50 = sub_22F741420();

    v51 = *(v50 + 16);

    if (v51 >= v48)
    {
LABEL_27:
      v12 = v119 + 1;
      v41 = v117 + 8;
      v42 = v115 - 1;
      if (v119 + 1 != v113)
      {
        goto LABEL_28;
      }

      v12 = v113;
      v10 = v108;
      v6 = v110;
      v7 = a3;
      goto LABEL_35;
    }

    if (!v121)
    {
      break;
    }

    v52 = *v41;
    v43 = *(v41 + 8);
    *v41 = v43;
    *(v41 + 8) = v52;
    v41 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_27;
    }
  }

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
  return result;
}

uint64_t sub_22F2A0090(void **__src, id *a2, id *a3, void **a4)
{
  __dst = a4;
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = a2;
    if (a4 != __src || &__src[v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v46 = &__dst[v8];
    if (v6 < 8 || v12 >= v4)
    {
      v27 = v5;
      goto LABEL_41;
    }

    while (1)
    {
      v13 = __dst;
      v14 = *__dst;
      v15 = *(*v12 + OBJC_IVAR___PGElectedSocialGroup_score);
      v16 = *(*v12 + OBJC_IVAR___PGElectedSocialGroup_socialGroup);
      v17 = *v12;
      v18 = v14;
      [v16 importance];
      v20 = v19;
      v21 = *&v18[OBJC_IVAR___PGElectedSocialGroup_score];
      [*&v18[OBJC_IVAR___PGElectedSocialGroup_socialGroup] importance];
      v23 = v22;

      v24 = v21 < v15;
      if (v15 == v21)
      {
        v24 = v23 < v20;
      }

      if (!v24)
      {
        break;
      }

      v25 = v12;
      if (v5 != v12++)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v5;
      if (__dst >= v46 || v12 >= v4)
      {
        v27 = v5;
        goto LABEL_41;
      }
    }

    v25 = __dst++;
    if (v5 == v13)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v5 = *v25;
    goto LABEL_19;
  }

  v27 = a2;
  if (a4 != a2 || &a2[v11] <= a4)
  {
    memmove(a4, a2, 8 * v11);
  }

  v46 = &__dst[v11];
  if (v9 >= 8 && v27 > v5)
  {
    do
    {
      v45 = v27;
      v28 = v27 - 1;
      --v4;
      v29 = v46;
      while (1)
      {
        v30 = *--v29;
        v31 = v4 + 1;
        v32 = v28;
        v33 = *v28;
        v34 = *&v30[OBJC_IVAR___PGElectedSocialGroup_score];
        v35 = *&v30[OBJC_IVAR___PGElectedSocialGroup_socialGroup];
        v36 = v30;
        v37 = v33;
        [v35 importance];
        v39 = v38;
        v40 = *&v37[OBJC_IVAR___PGElectedSocialGroup_score];
        [*&v37[OBJC_IVAR___PGElectedSocialGroup_socialGroup] importance];
        v42 = v41;

        v43 = v40 < v34;
        if (v34 == v40)
        {
          v43 = v42 < v39;
        }

        if (v43)
        {
          break;
        }

        if (v31 != v46)
        {
          *v4 = *v29;
        }

        --v4;
        v46 = v29;
        v28 = v32;
        if (v29 <= __dst)
        {
          v46 = v29;
          v27 = v45;
          goto LABEL_41;
        }
      }

      if (v31 != v45)
      {
        *v4 = *v32;
      }

      if (v46 <= __dst)
      {
        break;
      }

      v27 = v32;
    }

    while (v32 > v5);
    v27 = v32;
  }

LABEL_41:
  if (v27 != __dst || v27 >= (__dst + ((v46 - __dst + (v46 - __dst < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v27, __dst, 8 * (v46 - __dst));
  }

  return 1;
}

uint64_t sub_22F2A0438(id *__src, id *__dst, id *a3, id *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    if (a4 != __src || &__src[v9] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v9);
      a4 = v13;
    }

    v14 = &a4[v9];
    v15 = a4;
    if (v7 < 8 || v5 >= v4)
    {
      v5 = v6;
      goto LABEL_38;
    }

    v45 = v4;
    v49 = v14;
    while (1)
    {
      v47 = v5;
      v16 = *v15;
      v17 = *v5;
      v18 = v16;
      v19 = [v17 memberNodes];
      v20 = v15;
      v21 = sub_22F741420();

      v22 = *(v21 + 16);

      v23 = [v18 memberNodes];
      v24 = sub_22F741420();

      v25 = *(v24 + 16);

      if (v25 >= v22)
      {
        break;
      }

      v26 = v47;
      v5 = v47 + 1;
      if (v6 != v47)
      {
        goto LABEL_16;
      }

LABEL_17:
      ++v6;
      v14 = v49;
      if (v15 >= v49 || v5 >= v45)
      {
        v5 = v6;
        goto LABEL_38;
      }
    }

    v26 = v15++;
    v5 = v47;
    if (v6 == v20)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v6 = *v26;
    goto LABEL_17;
  }

  v15 = a4;
  if (a4 != __dst || &__dst[v12] <= a4)
  {
    memmove(a4, __dst, 8 * v12);
  }

  v14 = &v15[v12];
  if (v10 >= 8 && v5 > v6)
  {
    v44 = v6;
    do
    {
      v27 = v5 - 1;
      v28 = v4 - 1;
      v29 = v14;
      v46 = v5 - 1;
      while (1)
      {
        v50 = v14;
        v30 = v5;
        v31 = v28;
        v32 = (v28 + 1);
        v33 = *--v29;
        v34 = *v27;
        v35 = v33;
        v36 = v34;
        v37 = [v35 memberNodes];
        v38 = sub_22F741420();

        v48 = *(v38 + 16);

        v39 = [v36 memberNodes];
        v40 = sub_22F741420();

        v41 = *(v40 + 16);

        if (v41 < v48)
        {
          break;
        }

        v5 = v30;
        if (v32 != v50)
        {
          *v31 = *v29;
        }

        v28 = v31 - 1;
        v14 = v29;
        v27 = v46;
        if (v29 <= v15)
        {
          v14 = v29;
          goto LABEL_38;
        }
      }

      v4 = v31;
      if (v32 != v30)
      {
        *v31 = *v46;
      }

      v14 = v50;
      if (v50 <= v15)
      {
        break;
      }

      v5 = v46;
    }

    while (v46 > v44);
    v5 = v46;
  }

LABEL_38:
  v42 = v14 - v15 + (v14 - v15 < 0 ? 7uLL : 0);
  if (v5 != v15 || v5 >= (v15 + (v42 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v15, 8 * (v42 >> 3));
  }

  return 1;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F2A0948(unint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(PGPhotosChallengePublicEventAlgorithmWrapper) initWithEvaluationContext_];
  if (a1 >> 62)
  {
LABEL_46:
    v36 = v3;
    v4 = sub_22F741A00();
    v3 = v36;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_47:

    return MEMORY[0x277D84F98];
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_47;
  }

LABEL_3:
  v40 = v3;
  v5 = 0;
  v42 = a1 & 0xC000000000000001;
  v6 = MEMORY[0x277D84F98];
  v41 = a1 & 0xFFFFFFFFFFFFFF8;
  v38 = v4;
  v39 = a1;
  while (1)
  {
    if (v42)
    {
      v3 = MEMORY[0x2319016F0](v5, a1);
    }

    else
    {
      if (v5 >= *(v41 + 16))
      {
        goto LABEL_44;
      }

      v3 = *(a1 + 8 * v5 + 32);
    }

    v7 = v3;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v9 = [v3 additionalInfo];
    if (v9)
    {
      break;
    }

LABEL_23:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v6;
    v3 = sub_22F122A80(v7);
    v25 = v6[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_42;
    }

    v29 = v24;
    if (v6[3] < v28)
    {
      sub_22F124EDC(v28, isUniquelyReferenced_nonNull_native);
      v3 = sub_22F122A80(v7);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_50;
      }

LABEL_28:
      v6 = v44;
      if (v29)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_28;
    }

    v33 = v3;
    sub_22F133930();
    v3 = v33;
    v6 = v44;
    if (v29)
    {
LABEL_4:
      *(v6[7] + 2 * v3) = 1;

      goto LABEL_5;
    }

LABEL_29:
    v6[(v3 >> 6) + 8] |= 1 << v3;
    *(v6[6] + 8 * v3) = v7;
    *(v6[7] + 2 * v3) = 1;
    v31 = v6[2];
    v27 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v27)
    {
      goto LABEL_43;
    }

    v6[2] = v32;
LABEL_5:
    ++v5;
    if (v8 == v4)
    {

      return v6;
    }
  }

  v10 = v9;
  v11 = sub_22F740CA0();

  if (!*(v11 + 16) || (v12 = sub_22F1229E8(0x764563696C627570, 0xEF4449554D746E65), (v13 & 1) == 0))
  {

    goto LABEL_23;
  }

  sub_22F13A100(*(v11 + 56) + 32 * v12, &v44);

  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v14 = [v7 entityIdentifier];
  if (!v14)
  {
    sub_22F740E20();
    v14 = sub_22F740DF0();
  }

  v15 = [v40 predictedQuestionStateForAssetUUID:v14 publicEventMUID:{objc_msgSend(v43, sel_unsignedLongLongValue)}];

  a1 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v6;
  v17 = sub_22F122A80(v7);
  v18 = v6[2];
  v19 = (v16 & 1) == 0;
  v3 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    goto LABEL_45;
  }

  v20 = v16;
  if (v6[3] >= v3)
  {
    if (a1)
    {
      v6 = v44;
      if ((v16 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      sub_22F133930();
      v6 = v44;
      if ((v20 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_33;
  }

  sub_22F124EDC(v3, a1);
  v21 = sub_22F122A80(v7);
  if ((v20 & 1) != (v22 & 1))
  {
    goto LABEL_50;
  }

  v17 = v21;
  v6 = v44;
  if (v20)
  {
LABEL_33:
    *(v6[7] + 2 * v17) = v15;

LABEL_39:
    v4 = v38;
    a1 = v39;
    goto LABEL_5;
  }

LABEL_37:
  v6[(v17 >> 6) + 8] |= 1 << v17;
  *(v6[6] + 8 * v17) = v7;
  *(v6[7] + 2 * v17) = v15;

  v34 = v6[2];
  v27 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (!v27)
  {
    v6[2] = v35;
    goto LABEL_39;
  }

  __break(1u);
LABEL_50:
  sub_22F120634(0, &qword_27DAB0810, 0x277CD9970);
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t sub_22F2A0DD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_triggerResults;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_22F2A0E3C()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_triggerResults;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22F2A0E84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_triggerResults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_22F2A0F3C()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22F2A0F80(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_supportsFutureLookup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22F2A1030(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_futureLookupResults;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_22F2A1098()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_futureLookupResults;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22F2A10E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_futureLookupResults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t *sub_22F2A1198(void *a1)
{
  v2 = v1;
  v60 = *v1;
  v4 = sub_22F740460();
  v59 = *(v4 - 8);
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_22F73F690();
  v61 = *(v65 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v65);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  v13 = sub_22F73F9B0();
  v63 = *(v13 - 8);
  v64 = v13;
  v14 = *(v63 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 2;
  sub_22F740B80();
  *(v1 + OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_supportsFutureLookup) = 0;
  *(v1 + OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_futureLookupResults) = 0;
  v62 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_triggerResults;
  *(v1 + OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_triggerResults) = MEMORY[0x277D84F90];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = (*(v18 + 16))(v17, v18);
  if (v19)
  {
    v20 = v19;
    v57 = v4;
    sub_22F73F970();
    v21 = a1[3];
    v22 = a1[4];
    v55 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v21);
    (*(v22 + 8))(v21, v22);
    sub_22F73F8A0();
    v61 = *(v61 + 8);
    v23 = (v61)(v9, v65);
    MEMORY[0x28223BE20](v23);
    *(&v53 - 2) = v12;
    v24 = sub_22F2A1FCC(sub_22F2A2200, (&v53 - 4));
    v25 = sub_22F740B70();
    v26 = sub_22F7415F0();
    v27 = os_log_type_enabled(v25, v26);
    v56 = v16;
    v54 = v20;
    if (v27)
    {
      v28 = v2;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v66[0] = v30;
      *v29 = 136315138;
      v31 = sub_22F741430();
      v33 = sub_22F145F20(v31, v32, v66);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_22F0FC000, v25, v26, "Birthdays detected today for %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x2319033A0](v30, -1, -1);
      v2 = v28;
      MEMORY[0x2319033A0](v29, -1, -1);
    }

    a1 = v55;
    v34 = v55[3];
    v35 = v55[4];
    __swift_project_boxed_opaque_existential_1(v55, v34);
    v36 = sub_22F2A6EB8(v24, v34, v35);

    v37 = v57;
    if (v36)
    {
      v38 = v59;
      v39 = v58;
      (*(v59 + 104))(v58, *MEMORY[0x277D3C468], v57);
      v40 = static CollectionTrigger.generateTriggerResults(from:type:)(v36, v39);

      (*(v38 + 8))(v39, v37);
      (*(v63 + 8))(v56, v64);
      (v61)(v12, v65);
      v41 = v62;
      swift_beginAccess();
      v42 = *(v2 + v41);
      *(v2 + v41) = v40;
    }

    else
    {

      (*(v63 + 8))(v56, v64);
      (v61)(v12, v65);
      v50 = v62;
      swift_beginAccess();
      v51 = *(v2 + v50);
      *(v2 + v50) = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v43 = sub_22F740B70();
    v44 = sub_22F7415C0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v66[0] = v46;
      *v45 = 136315138;
      v47 = sub_22F742240();
      v49 = sub_22F145F20(v47, v48, v66);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_22F0FC000, v43, v44, "GraphWorkingContext not available. Skipping %s trigger", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x2319033A0](v46, -1, -1);
      MEMORY[0x2319033A0](v45, -1, -1);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t BirthdayPeople.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_triggerResults);

  v4 = *(v0 + OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_futureLookupResults);

  return v0;
}

uint64_t BirthdayPeople.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_triggerResults);

  v4 = *(v0 + OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_futureLookupResults);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22F2A1988()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_triggerResults;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_22F2A19D4()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22F2A1A1C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_futureLookupResults;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t type metadata accessor for BirthdayPeople()
{
  result = qword_2810ABD70;
  if (!qword_2810ABD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F2A1ABC()
{
  result = sub_22F740B90();
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

void sub_22F2A1D40(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = sub_22F73F5B0();
  v6 = [v4 monthDayNodesForLocalDate:v5 inGraph:a1];

  v7 = [v6 birthdayPersonNodes];
  v8 = [v7 localIdentifiers];
  v9 = sub_22F741420();

  *a2 = v9;
}

uint64_t sub_22F2A1E14(uint64_t a1, uint64_t a2)
{
  v11 = 1;
  v5 = swift_allocObject();
  v5[2] = &v11;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_22F2A2234;
  *(v6 + 24) = v5;
  aBlock[4] = sub_22F2A2290;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F22F7B0;
  aBlock[3] = &block_descriptor_21_0;
  v7 = _Block_copy(aBlock);

  [v2 performSynchronousConcurrentGraphReadUsingBlock_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else if ((v11 & 1) == 0)
  {
  }

  result = sub_22F741D40();
  __break(1u);
  return result;
}

uint64_t sub_22F2A1FCC(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v5 = swift_allocObject();
  v5[2] = &v12;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_22F2A2208;
  *(v6 + 24) = v5;
  aBlock[4] = sub_22F2A2214;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F22F7B0;
  aBlock[3] = &block_descriptor_19;
  v7 = _Block_copy(aBlock);

  [v2 performSynchronousConcurrentGraphReadUsingBlock_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v9 = v12;
    if (v12)
    {

      return v9;
    }
  }

  result = sub_22F741D40();
  __break(1u);
  return result;
}

uint64_t sub_22F2A2184(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr))
{
  v5 = [a1 graph];
  a3(&v8);

  v6 = *a2;
  *a2 = v8;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22F2A2234(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = [a1 graph];
  v3();

  *v2 = 0;
}

uint64_t sub_22F2A2294(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22F3F656C(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_22F2A4934(v5);
  *a1 = v2;
  return result;
}

uint64_t GraphManager.__allocating_init(with:tmpGraphDirectoryName:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  GraphManager.init(with:tmpGraphDirectoryName:)(a1, a2, a3);
  return v9;
}

id *GraphManager.init(with:tmpGraphDirectoryName:)(id a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v94[2] = *MEMORY[0x277D85DE8];
  v9 = sub_22F73F470();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v86 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v87 = &v77 - v14;
  MEMORY[0x28223BE20](v15);
  v88 = &v77 - v16;
  MEMORY[0x28223BE20](v17);
  v92 = &v77 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v77 - v20;
  swift_defaultActor_initialize();
  *(v3 + 112) = a1;
  if (a3)
  {
    v90 = v10;
    v91 = v9;
    v85 = v4;
    v94[0] = 0x2F706D742FLL;
    v94[1] = 0xE500000000000000;
    v89 = a1;
    v22 = a1;
    MEMORY[0x231900B10](a2, a3);

    sub_22F73F3C0();
  }

  else
  {
    v94[0] = 0;
    v23 = [a1 urlForApplicationDataFolderIdentifier:1 error:v94];
    v24 = v94[0];
    if (!v23)
    {
      v72 = v94[0];
      sub_22F73F370();

      swift_willThrow();
      goto LABEL_41;
    }

    v90 = v10;
    v91 = v9;
    v89 = a1;
    v85 = v4;
    v25 = v23;
    sub_22F73F430();
    v26 = v24;
  }

  v27 = v92;
  sub_22F73F410();
  v28 = objc_opt_self();
  v29 = [v28 defaultManager];
  sub_22F73F450();
  v30 = sub_22F740DF0();

  v94[0] = 0;
  v31 = [v29 createDirectoryIfNeededAtPath:v30 error:v94];

  v32 = v94[0];
  if (!v31)
  {
    v47 = v94[0];
    sub_22F73F370();

    swift_willThrow();
    v48 = v91;
    v49 = *(v90 + 8);
    v49(v27, v91);
    v49(v21, v48);
    a1 = v89;
LABEL_41:

    goto LABEL_42;
  }

  v33 = v90;
  v34 = v91;
  v82 = *(v90 + 16);
  v83 = v90 + 16;
  v82(v5 + OBJC_IVAR____TtC11PhotosGraph12GraphManager_inputStreamTokenStoresDirectoryURL, v27, v91);
  v35 = v32;
  v36 = v21;
  v37 = v88;
  v84 = v36;
  sub_22F73F410();
  v38 = [v28 &selRef_defaultAssetFetchOptionsForMemories + 3];
  sub_22F73F450();
  v39 = sub_22F740DF0();

  v94[0] = 0;
  v40 = [v38 createDirectoryIfNeededAtPath:v39 error:v94];

  v41 = v94[0];
  if (!v40)
  {
    v55 = v94[0];
    sub_22F73F370();

    swift_willThrow();
    v56 = *(v33 + 8);
    v56(v37, v34);
    v56(v27, v34);
    v56(v84, v34);

    v56(v5 + OBJC_IVAR____TtC11PhotosGraph12GraphManager_inputStreamTokenStoresDirectoryURL, v34);
    a1 = v89;
LABEL_42:
    type metadata accessor for GraphManager();
    swift_defaultActor_destroy();

    v73 = *(*v5 + 12);
    v74 = *(*v5 + 26);
    swift_deallocPartialClassInstance();
    goto LABEL_43;
  }

  v78 = v5;
  v42 = objc_allocWithZone(MEMORY[0x277D22BC0]);
  v43 = v41;
  v44 = [v42 init];
  type metadata accessor for Node();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v46 = 0;
  v80 = 0x800000022F78E7D0;
  v81 = 0x800000022F78E800;
  v79 = 0x800000022F78E7B0;
  v93 = xmmword_22F771340;
  do
  {
    v53 = byte_2843DD0D0[v46++ + 32];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
    v54 = swift_allocObject();
    *(v54 + 16) = v93;
    v50 = 0xE500000000000000;
    v51 = 0x7465737341;
    switch(v53)
    {
      case 1:
        v50 = 0xEF6E6F697463656CLL;
        v51 = 0x6C6F437465737341;
        break;
      case 2:
        v50 = 0xE600000000000000;
        v51 = 0x6E6F73726550;
        break;
      case 3:
        v50 = 0xE300000000000000;
        v51 = 7628112;
        break;
      case 4:
        v51 = 0x6D75626C41;
        break;
      case 5:
        v51 = 0x656E656353;
        break;
      case 6:
        v50 = 0xE700000000000000;
        v51 = 0x687361486F6547;
        break;
      case 7:
        v50 = 0xEB00000000726574;
        v51 = 0x73756C4365746144;
        break;
      case 8:
        v50 = 0xE400000000000000;
        v51 = 1885958740;
        break;
      case 9:
        v50 = 0xE900000000000073;
        v51 = 0x657469726F766146;
        break;
      case 10:
        v50 = 0xEA00000000007365;
        v51 = 0x746163696C707544;
        break;
      case 11:
        v50 = 0xE400000000000000;
        v51 = 1701670728;
        break;
      case 12:
        v50 = 0xE300000000000000;
        v51 = 7954756;
        break;
      case 13:
        v50 = 0xE700000000000000;
        v51 = 0x7961646B656557;
        break;
      case 14:
        v51 = 0x68746E6F4DLL;
        break;
      case 15:
        v50 = 0xE700000000000000;
        v51 = 0x72657472617551;
        break;
      case 16:
        v50 = 0xE400000000000000;
        v51 = 1918985561;
        break;
      case 17:
        v50 = 0xE400000000000000;
        v51 = 2037672259;
        break;
      case 18:
        v51 = 0x6574617453;
        break;
      case 19:
        v50 = 0xE700000000000000;
        v51 = 0x7972746E756F43;
        break;
      case 20:
        v50 = 0xEB00000000746E65;
        v51 = 0x764563696C627550;
        break;
      case 21:
        v51 = 0xD000000000000013;
        v50 = v79;
        break;
      case 22:
        v51 = 0xD000000000000016;
        v50 = v80;
        break;
      case 23:
        v51 = 0x656D726F66726550;
        v50 = 0xE900000000000072;
        break;
      case 24:
        v50 = 0xE800000000000000;
        v51 = 0x7373656E69737542;
        break;
      case 25:
        v51 = 0xD000000000000010;
        v50 = v81;
        break;
      default:
        break;
    }

    *(v54 + 32) = v51;
    *(v54 + 40) = v50;
    v52 = sub_22F741160();

    [v44 registerNodeClass:ObjCClassFromMetadata forLabels:v52];
  }

  while (v46 != 26);
  type metadata accessor for Edge();
  v57 = swift_getObjCClassFromMetadata();
  v58 = 0;
  do
  {
    v59 = &unk_2843DD090 + v58++;
    v60 = v59[32];
    v61 = swift_allocObject();
    *(v61 + 16) = v93;
    *(v61 + 32) = sub_22F2897A0(v60);
    *(v61 + 40) = v62;
    v63 = sub_22F741160();

    [v44 registerEdgeClass:v57 forLabels:v63];
  }

  while (v58 != 31);
  v64 = v86;
  v65 = v88;
  sub_22F73F410();
  v66 = *MEMORY[0x277D22CA0];
  sub_22F740E20();
  v67 = v87;
  sub_22F73F420();

  v69 = v90;
  v68 = v91;
  v70 = *(v90 + 8);
  v70(v64, v91);
  sub_22F73FAD0();
  v82(v64, v67, v68);
  v71 = sub_22F73FAA0();

  v70(v67, v68);
  v70(v92, v68);
  v70(v84, v68);
  v5 = v78;
  *(v78 + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphManager) = v71;
  (*(v69 + 32))(v5 + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphDirectoryURL, v65, v68);
LABEL_43:
  v75 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t type metadata accessor for GraphManager()
{
  result = qword_27DAB2FA8;
  if (!qword_27DAB2FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F2A2E24()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphManager);
  v2 = *(MEMORY[0x277D22B28] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_22F2A2EC4;

  return MEMORY[0x282181570]();
}

uint64_t sub_22F2A2EC4()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22F2A2FB8()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_22F2A3000, v0, 0);
}

uint64_t sub_22F2A3000()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(v2 + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphManager);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *(v5 + 16) = sub_22F2A3644;
  *(v5 + 24) = v3;
  v6 = *(MEMORY[0x277D22B30] + 4);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_22F2A3104;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282181580](v7, &unk_22F7820F0, v5, v8);
}

uint64_t sub_22F2A3104()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = v2[2];
    v5 = sub_22F2A3234;
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];

    v5 = sub_22F20A4A4;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22F2A3234()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

void sub_22F2A32A0(void *a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22F73F470();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v27 - v9;
  sub_22F2A61F0(a1);
  if (!v1)
  {
    v27[1] = 0;
    sub_22F73F410();
    sub_22F73F420();
    v11 = *(v4 + 8);
    v11(v7, v3);
    v12 = objc_allocWithZone(MEMORY[0x277CBEB78]);
    v13 = sub_22F73F3F0();
    v14 = [v12 initWithURL:v13 append:0];

    if (v14)
    {
      [v14 open];
      v15 = objc_opt_self();
      v16 = sub_22F740C80();

      v28[0] = 0;
      v17 = [v15 writePropertyList:v16 toStream:v14 format:200 options:0 error:v28];

      v18 = v28[0];
      if (v17)
      {
        v19 = v28[0];
      }

      else
      {
        v20 = 0xEE006F3A20726F72;
        v21 = 0x7265207974706D65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FD8, qword_22F7723F0);
        v22 = swift_allocObject();
        v23 = v22;
        *(v22 + 16) = xmmword_22F771340;
        if (v18)
        {
          v27[0] = v11;
          v24 = [v18 description];
          v21 = sub_22F740E20();
          v20 = v25;

          v23[7] = MEMORY[0x277D837D0];
          v11 = v27[0];
          if (!v20)
          {
            v20 = 0xEE006F3A20726F72;
            v21 = 0x7265207974706D65;
          }
        }

        else
        {
          *(v22 + 56) = MEMORY[0x277D837D0];
        }

        v23[4] = v21;
        v23[5] = v20;
        sub_22F742150();
      }

      [v14 close];

      v11(v10, v3);
    }

    else
    {
      v11(v10, v3);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_22F2A3644(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_22F2A32A0(a1);
}

BOOL sub_22F2A3660(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(*a1 + 16) && (v4 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265), (v5 & 1) != 0) && (sub_22F13A100(*(v2 + 56) + 32 * v4, v11), swift_dynamicCast()))
  {
    v6 = v12;
    v7 = *(v3 + 16);
    if (!v7)
    {
      return v6 < v7;
    }
  }

  else
  {
    v6 = 0;
    v7 = *(v3 + 16);
    if (!v7)
    {
      return v6 < v7;
    }
  }

  v8 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265);
  if ((v9 & 1) != 0 && (sub_22F13A100(*(v3 + 56) + 32 * v8, v11), swift_dynamicCast()))
  {
    v7 = v12;
  }

  else
  {
    v7 = 0;
  }

  return v6 < v7;
}

uint64_t sub_22F2A3788(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22F73F6D0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F2A3848, 0, 0);
}

uint64_t sub_22F2A3848()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v7 = sub_22F73FA70();
  v8 = [v7 graphIdentifier];

  sub_22F73F6B0();
  v9 = sub_22F73F6A0();
  v11 = v10;
  (*(v2 + 8))(v1, v4);
  *v5 = v9;
  v5[1] = v11;

  v12 = v0[1];

  return v12();
}

uint64_t sub_22F2A3948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22F2A3970, v4, 0);
}

uint64_t sub_22F2A3970()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 48) + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphManager);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = *(MEMORY[0x277D22B30] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_22F2A3A58;
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);

  return MEMORY[0x282181580](v8, &unk_22F782108, v3, v7);
}

uint64_t sub_22F2A3A58()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {
    v4 = v3[6];

    return MEMORY[0x2822009F8](sub_22F2A3B94, v4, 0);
  }

  else
  {
    v5 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_22F2A3B94()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_22F2A3BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22F2A3C1C, 0, 0);
}

uint64_t sub_22F2A3C1C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v6 = sub_22F73FA70();
  v2();

  v7 = v0[1];

  return v7();
}

uint64_t sub_22F2A3CDC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22F20B7C0;

  return sub_22F2A3BF8(a1, a2, v7, v6);
}

uint64_t sub_22F2A3D90(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22F20B7C0;

  return sub_22F2A3BF8(a1, a2, v7, v8);
}

uint64_t sub_22F2A3E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22F2A3E7C, v4, 0);
}

uint64_t sub_22F2A3E7C()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 48) + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphManager);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = *(MEMORY[0x277D22B38] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_22F2A3F64;
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);

  return MEMORY[0x282181588](v8, &unk_22F782120, v3, v7);
}

uint64_t sub_22F2A3F64()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {
    v4 = v3[6];

    return MEMORY[0x2822009F8](sub_22F2A6EB4, v4, 0);
  }

  else
  {
    v5 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_22F2A40A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22F2A40C0, 0, 0);
}

uint64_t sub_22F2A40C0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_22F73FA80();
  sub_22F207320(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22F2A414C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22F20B7C0;

  return sub_22F20A7D8(a1, a2, v7, v8);
}

uint64_t GraphManager.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph12GraphManager_inputStreamTokenStoresDirectoryURL;
  v2 = sub_22F73F470();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphDirectoryURL, v2);
  v4 = *(v0 + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphManager);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GraphManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph12GraphManager_inputStreamTokenStoresDirectoryURL;
  v2 = sub_22F73F470();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphDirectoryURL, v2);
  v4 = *(v0 + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphManager);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22F2A4394()
{
  result = sub_22F73F470();
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

uint64_t dispatch thunk of GraphManager.invalidate()()
{
  v2 = *(*v0 + 128);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22F12094C;

  return v6();
}

uint64_t dispatch thunk of GraphManager.exportGraphAsPlist()()
{
  v2 = *(*v0 + 136);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22F12094C;

  return v6();
}

uint64_t dispatch thunk of GraphManager.performGraphRead<A>(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 152);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22F20B7C0;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of GraphManager.performGraphWrite<A>(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 160);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22F20B7C0;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_22F2A4934(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22F742000();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
        v5 = sub_22F741200();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22F2A4C20(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22F2A4A3C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22F2A4A3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v20 = v7;
    v21 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = *(v8 + 16);

      if (v10 && (v11 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265), (v12 & 1) != 0) && (sub_22F13A100(*(v8 + 56) + 32 * v11, v22), swift_dynamicCast()))
      {
        v13 = v23;
        if (!*(v9 + 16))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v13 = 0;
        if (!*(v9 + 16))
        {
LABEL_10:

          if (v13 >= 0)
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }
      }

      v14 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265);
      if (v15 & 1) != 0 && (sub_22F13A100(*(v9 + 56) + 32 * v14, v22), (swift_dynamicCast()))
      {
        v16 = v23;

        if (v13 >= v16)
        {
          goto LABEL_4;
        }
      }

      else
      {

        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_4;
        }
      }

LABEL_18:
      if (!v5)
      {
        __break(1u);
        return result;
      }

      v17 = *v6;
      v8 = v6[1];
      *v6 = v8;
      v6[1] = v17;
      --v6;
      if (__CFADD__(v7++, 1))
      {
LABEL_4:
        ++v4;
        v6 = v21 + 1;
        v7 = v20 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_22F2A4C20(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v103 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_112:
    v8 = *v103;
    if (!*v103)
    {
      goto LABEL_151;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_145:
      result = sub_22F3F5F98(v9);
      v9 = result;
    }

    v110 = v9;
    v93 = *(v9 + 2);
    if (v93 >= 2)
    {
      while (*v6)
      {
        v94 = *&v9[16 * v93];
        v95 = *&v9[16 * v93 + 24];
        sub_22F2A5474((*v6 + 8 * v94), (*v6 + 8 * *&v9[16 * v93 + 16]), (*v6 + 8 * v95), v8);
        if (v5)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_138;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_22F3F5F98(v9);
        }

        if (v93 - 2 >= *(v9 + 2))
        {
          goto LABEL_139;
        }

        v96 = &v9[16 * v93];
        *v96 = v94;
        *(v96 + 1) = v95;
        v110 = v9;
        result = sub_22F3F5F0C(v93 - 1);
        v9 = v110;
        v93 = *(v110 + 2);
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_149;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    if (v8 + 1 >= v7)
    {
      v16 = v8 + 1;
      goto LABEL_31;
    }

    v11 = *v6;
    v8 = *(*v6 + 8 * (v8 + 1));
    v109[0] = v8;
    v106 = v7;
    v108 = *(v11 + 8 * v10);

    v12 = sub_22F2A3660(v109, &v108);
    if (v5)
    {
    }

    v6 = v10;
    v13 = v12;
    v99 = v9;

    v14 = v6 + 2;
    v101 = v6;
    v9 = (8 * v6);
    v15 = v11 + 8 * v6 + 16;
    v16 = v106;
    while (v16 != v14)
    {
      v18 = *(v15 - 8);
      v8 = *v15;
      v19 = *(*v15 + 16);

      if (v19 && (v20 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265), (v21 & 1) != 0) && (sub_22F13A100(*(v8 + 56) + 32 * v20, v109), swift_dynamicCast()))
      {
        v6 = v108;
        if (!*(v18 + 16))
        {
          goto LABEL_7;
        }
      }

      else
      {
        v6 = 0;
        if (!*(v18 + 16))
        {
          goto LABEL_7;
        }
      }

      v22 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265);
      if (v23)
      {
        sub_22F13A100(*(v18 + 56) + 32 * v22, v109);
        if (swift_dynamicCast())
        {
          v17 = v108;

          goto LABEL_8;
        }
      }

LABEL_7:

      v17 = 0;
LABEL_8:
      ++v14;
      v15 += 8;
      v16 = v106;
      if (((v13 ^ (v6 >= v17)) & 1) == 0)
      {
        v16 = v14 - 1;
        break;
      }
    }

    if (!v13)
    {
      v6 = a3;
      v9 = v99;
      v10 = v101;
      goto LABEL_31;
    }

    v10 = v101;
    if (v16 < v101)
    {
      goto LABEL_144;
    }

    if (v101 < v16)
    {
      v24 = 8 * v16 - 8;
      v25 = v16;
      v26 = v101;
      do
      {
        if (v26 != --v25)
        {
          v27 = *a3;
          if (!*a3)
          {
            goto LABEL_148;
          }

          v28 = *&v9[v27];
          *&v9[v27] = *(v27 + v24);
          *(v27 + v24) = v28;
        }

        ++v26;
        v24 -= 8;
        v9 += 8;
      }

      while (v26 < v25);
    }

    v6 = a3;
    v9 = v99;
LABEL_31:
    v29 = *(v6 + 8);
    if (v16 >= v29)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v16, v10))
    {
      goto LABEL_141;
    }

    if (v16 - v10 >= a4)
    {
LABEL_40:
      v8 = v16;
      if (v16 < v10)
      {
        goto LABEL_140;
      }

      goto LABEL_41;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_142;
    }

    if (v10 + a4 >= v29)
    {
      v8 = *(v6 + 8);
    }

    else
    {
      v8 = v10 + a4;
    }

    if (v8 < v10)
    {
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if (v16 == v8)
    {
      goto LABEL_40;
    }

    v100 = v9;
    v102 = v10;
    v97 = v5;
    v77 = *v6;
    v78 = *v6 + 8 * v16 - 8;
    v79 = v10 - v16;
    v105 = v8;
LABEL_92:
    v107 = v16;
    v80 = *(v77 + 8 * v16);
    v81 = v79;
    v82 = v78;
LABEL_93:
    v83 = *v82;
    v84 = *(v80 + 16);

    if (v84 && (v85 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265), (v86 & 1) != 0) && (sub_22F13A100(*(v80 + 56) + 32 * v85, v109), swift_dynamicCast()))
    {
      v87 = v108;
      if (!*(v83 + 16))
      {
        goto LABEL_97;
      }

LABEL_99:
      v89 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265);
      if (v90)
      {
        sub_22F13A100(*(v83 + 56) + 32 * v89, v109);
        if (swift_dynamicCast())
        {
          v88 = v108;

          goto LABEL_102;
        }
      }

      if ((v87 & 0x8000000000000000) == 0)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v87 = 0;
      if (*(v83 + 16))
      {
        goto LABEL_99;
      }

LABEL_97:

      v88 = 0;
LABEL_102:
      if (v87 >= v88)
      {
        goto LABEL_91;
      }
    }

    if (!v77)
    {
      break;
    }

    v91 = *v82;
    v80 = v82[1];
    *v82 = v80;
    v82[1] = v91;
    --v82;
    if (!__CFADD__(v81++, 1))
    {
      goto LABEL_93;
    }

LABEL_91:
    v8 = v105;
    v16 = v107 + 1;
    v78 += 8;
    --v79;
    if (v107 + 1 != v105)
    {
      goto LABEL_92;
    }

    v5 = v97;
    v6 = a3;
    v9 = v100;
    v10 = v102;
    if (v105 < v102)
    {
      goto LABEL_140;
    }

LABEL_41:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F13D970(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_22F13D970((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v103;
    if (!*v103)
    {
      goto LABEL_150;
    }

    if (v31)
    {
      while (2)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          v40 = &v9[16 * v32 + 32];
          v41 = *(v40 - 64);
          v42 = *(v40 - 56);
          v46 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          if (v46)
          {
            goto LABEL_127;
          }

          v45 = *(v40 - 48);
          v44 = *(v40 - 40);
          v46 = __OFSUB__(v44, v45);
          v38 = v44 - v45;
          v39 = v46;
          if (v46)
          {
            goto LABEL_128;
          }

          v47 = &v9[16 * v32];
          v49 = *v47;
          v48 = *(v47 + 1);
          v46 = __OFSUB__(v48, v49);
          v50 = v48 - v49;
          if (v46)
          {
            goto LABEL_130;
          }

          v46 = __OFADD__(v38, v50);
          v51 = v38 + v50;
          if (v46)
          {
            goto LABEL_133;
          }

          if (v51 >= v43)
          {
            v69 = &v9[16 * v35 + 32];
            v71 = *v69;
            v70 = *(v69 + 1);
            v46 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v46)
            {
              goto LABEL_137;
            }

            if (v38 < v72)
            {
              v35 = v32 - 2;
            }
          }

          else
          {
LABEL_60:
            if (v39)
            {
              goto LABEL_129;
            }

            v52 = &v9[16 * v32];
            v54 = *v52;
            v53 = *(v52 + 1);
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_132;
            }

            v58 = &v9[16 * v35 + 32];
            v60 = *v58;
            v59 = *(v58 + 1);
            v46 = __OFSUB__(v59, v60);
            v61 = v59 - v60;
            if (v46)
            {
              goto LABEL_135;
            }

            if (__OFADD__(v56, v61))
            {
              goto LABEL_136;
            }

            if (v56 + v61 < v38)
            {
              goto LABEL_74;
            }

            if (v38 < v61)
            {
              v35 = v32 - 2;
            }
          }
        }

        else
        {
          if (v32 == 3)
          {
            v36 = *(v9 + 4);
            v37 = *(v9 + 5);
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
            goto LABEL_60;
          }

          v62 = &v9[16 * v32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v46 = __OFSUB__(v63, v64);
          v56 = v63 - v64;
          v57 = v46;
LABEL_74:
          if (v57)
          {
            goto LABEL_131;
          }

          v65 = &v9[16 * v35];
          v67 = *(v65 + 4);
          v66 = *(v65 + 5);
          v46 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v46)
          {
            goto LABEL_134;
          }

          if (v68 < v56)
          {
            break;
          }
        }

        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
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
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v6)
        {
          goto LABEL_147;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_22F2A5474((*v6 + 8 * v74), (*v6 + 8 * *&v9[16 * v35 + 32]), (*v6 + 8 * v75), v34);
        if (v5)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_22F3F5F98(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_126;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        v110 = v9;
        result = sub_22F3F5F0C(v35);
        v9 = v110;
        v32 = *(v110 + 2);
        if (v32 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v7 = *(v6 + 8);
    if (v8 >= v7)
    {
      goto LABEL_112;
    }
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
  return result;
}

uint64_t sub_22F2A5474(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v42 = &v4[8 * v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_57;
    }

    while (1)
    {
      v14 = v6;
      v15 = *v6;
      v16 = *v4;
      v17 = *(v15 + 16);

      if (v17 && (v18 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265), (v19 & 1) != 0) && (sub_22F13A100(*(v15 + 56) + 32 * v18, v43), swift_dynamicCast()))
      {
        v20 = v44;
        if (!*(v16 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        v20 = 0;
        if (!*(v16 + 16))
        {
LABEL_15:

          v21 = 0;
          goto LABEL_20;
        }
      }

      v22 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265);
      if (v23)
      {
        sub_22F13A100(*(v16 + 56) + 32 * v22, v43);
        if (swift_dynamicCast())
        {
          v21 = v44;

LABEL_20:
          v6 = v14;
          if (v20 >= v21)
          {
            goto LABEL_25;
          }

          goto LABEL_21;
        }
      }

      v6 = v14;
      if ((v20 & 0x8000000000000000) == 0)
      {
LABEL_25:
        v24 = v4;
        v25 = v7 == v4;
        v4 += 8;
        if (v25)
        {
          goto LABEL_27;
        }

LABEL_26:
        *v7 = *v24;
        goto LABEL_27;
      }

LABEL_21:
      v24 = v6;
      v25 = v7 == v6;
      v6 += 8;
      if (!v25)
      {
        goto LABEL_26;
      }

LABEL_27:
      v7 += 8;
      if (v4 >= v42 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_57;
      }
    }
  }

  if (a4 != __dst || &__dst[8 * v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
  }

  v42 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_35:
    v26 = (v6 - 8);
    v5 -= 8;
    v27 = v42;
    v41 = v6 - 8;
    while (1)
    {
      v28 = v6;
      v30 = *(v27 - 1);
      v27 -= 8;
      v29 = v30;
      v31 = *v26;
      v32 = *(v30 + 16);

      if (v32 && (v33 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265), (v34 & 1) != 0) && (sub_22F13A100(*(v29 + 56) + 32 * v33, v43), swift_dynamicCast()))
      {
        v35 = v44;
        if (!*(v31 + 16))
        {
          goto LABEL_46;
        }
      }

      else
      {
        v35 = 0;
        if (!*(v31 + 16))
        {
          goto LABEL_46;
        }
      }

      v36 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265);
      if (v37)
      {
        sub_22F13A100(*(v31 + 56) + 32 * v36, v43);
        if (swift_dynamicCast())
        {
          v38 = v44;

          goto LABEL_47;
        }
      }

LABEL_46:

      v38 = 0;
LABEL_47:
      v6 = v28;
      v39 = v5 + 8;
      if (v35 < v38)
      {
        if (v39 != v28)
        {
          *v5 = *v41;
        }

        if (v42 <= v4 || (v6 = v41, v41 <= v7))
        {
          v6 = v41;
          break;
        }

        goto LABEL_35;
      }

      v26 = v41;
      if (v39 != v42)
      {
        *v5 = *v27;
      }

      v5 -= 8;
      v42 = v27;
      if (v27 <= v4)
      {
        v42 = v27;
        break;
      }
    }
  }

LABEL_57:
  if (v6 != v4 || v6 >= &v4[(v42 - v4 + (v42 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v42 - v4) / 8));
  }

  return 1;
}

uint64_t sub_22F2A590C(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F98];
LABEL_4:
  v9 = MEMORY[0x277D83B88];
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
LABEL_5:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
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
LABEL_86:
      result = sub_22F7420C0();
      __break(1u);
      return result;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v7;
    if (v5)
    {
      v7 = v10;
      while (1)
      {
LABEL_9:
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v7 << 6);
        v13 = (*(v1 + 48) + 16 * v12);
        v14 = v13[1];
        v84 = *v13;
        v15 = *(*(v1 + 56) + 8 * v12);

        v16 = v15;
        v17 = [v16 dataType];
        v83 = v16;
        if (v17 <= 1)
        {
          if (v17)
          {
            if (v17 != 1)
            {
LABEL_76:

              sub_22F2A6DF8();
              swift_allocError();
              *v81 = 3;
              swift_willThrow();

              return v8;
            }

            *&v85 = [v16 kgPropertyValue];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
            if (swift_dynamicCast())
            {
              v88 = v9;
              *&v87 = v89;
              sub_22F107D08(&v87, &v85);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v89 = v8;
              v25 = sub_22F1229E8(v84, v14);
              v27 = v8[2];
              v28 = (v26 & 1) == 0;
              v29 = __OFADD__(v27, v28);
              v30 = v27 + v28;
              if (v29)
              {
                goto LABEL_80;
              }

              v31 = v26;
              if (v8[3] < v30)
              {
                sub_22F125CA4(v30, isUniquelyReferenced_nonNull_native);
                v25 = sub_22F1229E8(v84, v14);
                if ((v31 & 1) != (v32 & 1))
                {
                  goto LABEL_86;
                }

                goto LABEL_54;
              }

              if (isUniquelyReferenced_nonNull_native)
              {
LABEL_54:
                v63 = v83;
                if (v31)
                {
                  goto LABEL_60;
                }
              }

              else
              {
                v73 = v25;
                sub_22F1344D4();
                v25 = v73;
                v63 = v83;
                if (v31)
                {
                  goto LABEL_60;
                }
              }

              v8 = v89;
              v89[(v25 >> 6) + 8] |= 1 << v25;
              v67 = (v8[6] + 16 * v25);
              *v67 = v84;
              v67[1] = v14;
              sub_22F107D08(&v85, (v8[7] + 32 * v25));

              v68 = v8[2];
              v29 = __OFADD__(v68, 1);
              v66 = v68 + 1;
              if (v29)
              {
                goto LABEL_84;
              }

              goto LABEL_70;
            }
          }

          else
          {
            *&v85 = [v16 kgPropertyValue];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
            if (swift_dynamicCast())
            {
              v88 = v9;
              *&v87 = v89;
              sub_22F107D08(&v87, &v85);
              v33 = swift_isUniquelyReferenced_nonNull_native();
              v89 = v8;
              v25 = sub_22F1229E8(v84, v14);
              v35 = v8[2];
              v36 = (v34 & 1) == 0;
              v29 = __OFADD__(v35, v36);
              v37 = v35 + v36;
              if (v29)
              {
                goto LABEL_79;
              }

              v38 = v34;
              if (v8[3] < v37)
              {
                sub_22F125CA4(v37, v33);
                v25 = sub_22F1229E8(v84, v14);
                if ((v38 & 1) != (v39 & 1))
                {
                  goto LABEL_86;
                }

                goto LABEL_49;
              }

              if (v33)
              {
LABEL_49:
                v63 = v83;
                if (v38)
                {
                  goto LABEL_60;
                }
              }

              else
              {
                v72 = v25;
                sub_22F1344D4();
                v25 = v72;
                v63 = v83;
                if (v38)
                {
                  goto LABEL_60;
                }
              }

              v8 = v89;
              v89[(v25 >> 6) + 8] |= 1 << v25;
              v64 = (v8[6] + 16 * v25);
              *v64 = v84;
              v64[1] = v14;
              sub_22F107D08(&v85, (v8[7] + 32 * v25));

              v65 = v8[2];
              v29 = __OFADD__(v65, 1);
              v66 = v65 + 1;
              if (v29)
              {
                goto LABEL_85;
              }

              goto LABEL_70;
            }
          }

          goto LABEL_37;
        }

        if (v17 == 2)
        {
          *&v85 = [v16 kgPropertyValue];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
          v40 = MEMORY[0x277D839F8];
          if (swift_dynamicCast())
          {
            v88 = v40;
            *&v87 = v89;
            sub_22F107D08(&v87, &v85);
            v41 = swift_isUniquelyReferenced_nonNull_native();
            v89 = v8;
            v25 = sub_22F1229E8(v84, v14);
            v43 = v8[2];
            v44 = (v42 & 1) == 0;
            v29 = __OFADD__(v43, v44);
            v45 = v43 + v44;
            if (v29)
            {
              goto LABEL_78;
            }

            v46 = v42;
            if (v8[3] < v45)
            {
              sub_22F125CA4(v45, v41);
              v25 = sub_22F1229E8(v84, v14);
              if ((v46 & 1) != (v47 & 1))
              {
                goto LABEL_86;
              }

              goto LABEL_59;
            }

            if (v41)
            {
LABEL_59:
              v63 = v83;
              if (v46)
              {
                goto LABEL_60;
              }
            }

            else
            {
              v74 = v25;
              sub_22F1344D4();
              v25 = v74;
              v63 = v83;
              if (v46)
              {
LABEL_60:
                v69 = v25;

                v8 = v89;
                v70 = (v89[7] + 32 * v69);
                __swift_destroy_boxed_opaque_existential_0(v70);
                sub_22F107D08(&v85, v70);

                goto LABEL_4;
              }
            }

            v8 = v89;
            v89[(v25 >> 6) + 8] |= 1 << v25;
            v75 = (v8[6] + 16 * v25);
            *v75 = v84;
            v75[1] = v14;
            sub_22F107D08(&v85, (v8[7] + 32 * v25));

            v76 = v8[2];
            v29 = __OFADD__(v76, 1);
            v66 = v76 + 1;
            if (v29)
            {
              goto LABEL_83;
            }

LABEL_70:
            v8[2] = v66;
            goto LABEL_4;
          }

LABEL_37:
          v48 = sub_22F1229E8(v84, v14);
          v50 = v49;

          if (v50)
          {
            v51 = swift_isUniquelyReferenced_nonNull_native();
            v89 = v8;
            if (!v51)
            {
              sub_22F1344D4();
              v8 = v89;
            }

            v52 = *(v8[6] + 16 * v48 + 8);

            sub_22F107D08((v8[7] + 32 * v48), &v85);
            sub_22F3B9870(v48, v8);
          }

          else
          {

            v85 = 0u;
            v86 = 0u;
          }

          sub_22F120ADC(&v85, &qword_27DAB0C28, &qword_22F778980);
          goto LABEL_4;
        }

        if (v17 != 3)
        {
          goto LABEL_76;
        }

        v89 = [v16 kgPropertyValue];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
        v18 = MEMORY[0x277D837D0];
        if (swift_dynamicCast())
        {
          break;
        }

        v19 = sub_22F1229E8(v84, v14);
        v21 = v20;

        if (v21)
        {
          v22 = swift_isUniquelyReferenced_nonNull_native();
          v89 = v8;
          if (!v22)
          {
            sub_22F1344D4();
            v8 = v89;
          }

          v23 = *(v8[6] + 16 * v19 + 8);

          sub_22F107D08((v8[7] + 32 * v19), &v85);
          sub_22F3B9870(v19, v8);
        }

        else
        {

          v85 = 0u;
          v86 = 0u;
        }

        v9 = MEMORY[0x277D83B88];
        sub_22F120ADC(&v85, &qword_27DAB0C28, &qword_22F778980);
        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v82 = v1;
      v88 = v18;
      v87 = v85;
      sub_22F107D08(&v87, &v85);
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v89 = v8;
      v55 = sub_22F1229E8(v84, v14);
      v56 = v8[2];
      v57 = (v54 & 1) == 0;
      v58 = v56 + v57;
      if (__OFADD__(v56, v57))
      {
        goto LABEL_81;
      }

      v59 = v54;
      if (v8[3] >= v58)
      {
        if (v53)
        {
          v62 = v83;
          if ((v54 & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        else
        {
          sub_22F1344D4();
          v62 = v83;
          if ((v59 & 1) == 0)
          {
            goto LABEL_72;
          }
        }

LABEL_63:

        v8 = v89;
        v71 = (v89[7] + 32 * v55);
        __swift_destroy_boxed_opaque_existential_0(v71);
        sub_22F107D08(&v85, v71);

        v1 = v82;
        goto LABEL_4;
      }

      sub_22F125CA4(v58, v53);
      v60 = sub_22F1229E8(v84, v14);
      if ((v59 & 1) != (v61 & 1))
      {
        goto LABEL_86;
      }

      v55 = v60;
      v62 = v83;
      if (v59)
      {
        goto LABEL_63;
      }

LABEL_72:
      v8 = v89;
      v89[(v55 >> 6) + 8] |= 1 << v55;
      v77 = (v8[6] + 16 * v55);
      *v77 = v84;
      v77[1] = v14;
      sub_22F107D08(&v85, (v8[7] + 32 * v55));

      v78 = v8[2];
      v29 = __OFADD__(v78, 1);
      v79 = v78 + 1;
      if (v29)
      {
        goto LABEL_82;
      }

      v8[2] = v79;
      v1 = v82;
      goto LABEL_4;
    }
  }

  return v8;
}

uint64_t sub_22F2A61F0(void *a1)
{
  v2 = v1;
  v4 = sub_22F73F6D0();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v4);
  v75 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() any];
  v8 = [a1 nodeIdentifiersMatchingFilter_];

  v9 = objc_allocWithZone(MEMORY[0x277D22BD8]);
  v79 = v8;
  v80 = a1;
  v78 = [v9 initWithIdentifiers:v8 graph:a1];
  v10 = [v78 allObjects];
  type metadata accessor for Node();
  inited = sub_22F741180();

  if (inited >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
  {
    if (i)
    {
      v13 = 0;
      v88 = inited & 0xC000000000000001;
      v87 = inited & 0xFFFFFFFFFFFFFF8;
      v86 = xmmword_22F7707D0;
      v94 = MEMORY[0x277D84F90];
      v84 = i;
      *&v85 = inited;
      while (1)
      {
        if (v88)
        {
          v14 = MEMORY[0x2319016F0](v13, inited);
        }

        else
        {
          if (v13 >= *(v87 + 16))
          {
            goto LABEL_50;
          }

          v14 = *(inited + 8 * v13 + 32);
        }

        v15 = v14;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v91 = v13 + 1;
        v92 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
        inited = swift_initStackObject();
        *(inited + 16) = v86;
        *(inited + 32) = 0x696669746E656469;
        v96 = inited + 32;
        *(inited + 40) = 0xEA00000000007265;
        *(inited + 48) = *&v15[OBJC_IVAR____TtC11PhotosGraph4Node_identifier];
        *(inited + 72) = MEMORY[0x277D83E88];
        *(inited + 80) = 0x736C6562616CLL;
        *(inited + 88) = 0xE600000000000000;
        v16 = *&v15[OBJC_IVAR____TtC11PhotosGraph4Node_labels];
        v17 = *(v16 + 16);
        if (v17)
        {
          v90 = v15;
          v93 = v2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
          v18 = swift_allocObject();
          v19 = _swift_stdlib_malloc_size(v18);
          v20 = v19 - 32;
          if (v19 < 32)
          {
            v20 = v19 - 17;
          }

          v18[2] = v17;
          v18[3] = 2 * (v20 >> 4);
          v89 = sub_22F11A438(v95, v18 + 4, v17, v16);
          v2 = v95[3];

          sub_22F1534EC();
          if (v89 != v17)
          {
            goto LABEL_53;
          }

          v2 = v93;
          v15 = v90;
        }

        else
        {
          v18 = MEMORY[0x277D84F90];
        }

        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
        *(inited + 96) = v18;
        *(inited + 120) = v21;
        *(inited + 128) = 0x69747265706F7270;
        *(inited + 136) = 0xEA00000000007365;
        v22 = *&v15[OBJC_IVAR____TtC11PhotosGraph4Node_properties];

        v24 = sub_22F2A590C(v23);
        v25 = v96;
        if (v2)
        {
          break;
        }

        v26 = v24;

        *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
        *(inited + 144) = v26;
        v27 = sub_22F14EA28(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
        swift_arrayDestroy();
        v28 = v94;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_22F13F8FC(0, v28[2] + 1, 1, v28);
        }

        v29 = v84;
        inited = v85;
        v31 = v28[2];
        v30 = v28[3];
        v94 = v28;
        if (v31 >= v30 >> 1)
        {
          v94 = sub_22F13F8FC((v30 > 1), v31 + 1, 1, v94);
        }

        v32 = v94;
        v94[2] = v31 + 1;
        v32[v31 + 4] = v27;
        v13 = v92 + 1;
        if (v91 == v29)
        {
          goto LABEL_24;
        }
      }

LABEL_48:

      v61 = *(inited + 136);

      v62 = &unk_27DAB2FD0;
      sub_22F120ADC(inited + 80, &unk_27DAB2FD0, &qword_22F77A4D0);
      sub_22F120ADC(v25, &unk_27DAB2FD0, &qword_22F77A4D0);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
      swift_arrayDestroy();
      return v62;
    }

    v94 = MEMORY[0x277D84F90];
LABEL_24:

    v95[0] = v94;

    sub_22F2A2294(v95);
    if (v2)
    {
      break;
    }

    v73 = v95[0];
    v33 = [objc_opt_self() any];
    v34 = v80;
    v15 = [v80 edgeIdentifiersMatchingFilter_];

    v74 = [objc_allocWithZone(MEMORY[0x277D22BA0]) initWithIdentifiers:v15 graph:v34];
    v35 = [v74 allObjects];
    type metadata accessor for Edge();
    inited = sub_22F741180();

    if (inited >> 62)
    {
      v36 = sub_22F741A00();
      v90 = v15;
      if (!v36)
      {
LABEL_57:
        v38 = MEMORY[0x277D84F90];
LABEL_58:

        v95[0] = v38;

        sub_22F2A2294(v95);

        v63 = v95[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
        v64 = swift_initStackObject();
        *(v64 + 16) = xmmword_22F7707D0;
        *(v64 + 32) = 0x696669746E656469;
        *(v64 + 40) = 0xEA00000000007265;
        v65 = [v80 graphIdentifier];
        v66 = v75;
        sub_22F73F6B0();

        v67 = sub_22F73F6A0();
        v69 = v68;
        (*(v76 + 8))(v66, v77);
        v70 = MEMORY[0x277D837D0];
        *(v64 + 48) = v67;
        *(v64 + 56) = v69;
        *(v64 + 72) = v70;
        *(v64 + 80) = 0x7365646F6ELL;
        *(v64 + 88) = 0xE500000000000000;
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2FE0, &unk_22F772A30);
        *(v64 + 96) = v73;
        *(v64 + 120) = v71;
        *(v64 + 128) = 0x7365676465;
        *(v64 + 168) = v71;
        *(v64 + 136) = 0xE500000000000000;
        *(v64 + 144) = v63;
        v62 = sub_22F14EA28(v64);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
        swift_arrayDestroy();

        return v62;
      }
    }

    else
    {
      v36 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      v90 = v15;
      if (!v36)
      {
        goto LABEL_57;
      }
    }

    v37 = 0;
    v87 = inited & 0xC000000000000001;
    *&v86 = inited & 0xFFFFFFFFFFFFFF8;
    v82 = 0x800000022F797DC0;
    v38 = MEMORY[0x277D84F90];
    v81 = 0x800000022F797DE0;
    v85 = xmmword_22F770DE0;
    v83 = v36;
    v84 = inited;
    while (1)
    {
      if (v87)
      {
        v39 = MEMORY[0x2319016F0](v37, inited);
      }

      else
      {
        if (v37 >= *(v86 + 16))
        {
          goto LABEL_52;
        }

        v39 = *(inited + 8 * v37 + 32);
      }

      v40 = v39;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      v89 = (v37 + 1);
      v91 = v37;
      v92 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
      inited = swift_initStackObject();
      *(inited + 16) = v85;
      *(inited + 32) = 0x696669746E656469;
      v96 = inited + 32;
      *(inited + 40) = 0xEA00000000007265;
      *(inited + 48) = *(v40 + OBJC_IVAR____TtC11PhotosGraph4Edge_identifier);
      *(inited + 72) = MEMORY[0x277D83E88];
      *(inited + 80) = 0x736C6562616CLL;
      *(inited + 88) = 0xE600000000000000;
      v94 = v40;
      v41 = *(v40 + OBJC_IVAR____TtC11PhotosGraph4Edge_labels);
      v42 = *(v41 + 16);
      if (v42)
      {
        v93 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
        v43 = swift_allocObject();
        v44 = _swift_stdlib_malloc_size(v43);
        v45 = v44 - 32;
        if (v44 < 32)
        {
          v45 = v44 - 17;
        }

        v43[2] = v42;
        v43[3] = 2 * (v45 >> 4);
        v88 = sub_22F11A438(v95, v43 + 4, v42, v41);
        v2 = v95[1];

        sub_22F1534EC();
        if (v88 != v42)
        {
          goto LABEL_54;
        }

        v2 = v93;
        v15 = v90;
      }

      else
      {
        v43 = MEMORY[0x277D84F90];
      }

      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      *(inited + 96) = v43;
      *(inited + 120) = v46;
      *(inited + 128) = 0x69747265706F7270;
      *(inited + 136) = 0xEA00000000007365;
      v47 = v94;
      v48 = *(v94 + OBJC_IVAR____TtC11PhotosGraph4Edge_properties);

      v50 = sub_22F2A590C(v49);
      if (v2)
      {

        v25 = v96;
        goto LABEL_48;
      }

      v51 = v50;

      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
      *(inited + 144) = v51;
      *(inited + 168) = v52;
      *(inited + 176) = 0xD000000000000014;
      *(inited + 184) = v82;
      *(inited + 192) = [*(v47 + OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode) identifier];
      v53 = MEMORY[0x277D83E88];
      *(inited + 216) = MEMORY[0x277D83E88];
      *(inited + 224) = 0xD000000000000014;
      *(inited + 232) = v81;
      v54 = [*(v47 + OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode) identifier];
      *(inited + 264) = v53;
      *(inited + 240) = v54;
      v55 = sub_22F14EA28(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
      swift_arrayDestroy();
      v56 = v92;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_22F13F8FC(0, v56[2] + 1, 1, v56);
      }

      v57 = v83;
      inited = v84;
      v59 = v56[2];
      v58 = v56[3];
      v60 = v56;
      if (v59 >= v58 >> 1)
      {
        v60 = sub_22F13F8FC((v58 > 1), v59 + 1, 1, v56);
      }

      v60[2] = v59 + 1;
      v38 = v60;
      v60[v59 + 4] = v55;
      v37 = v91 + 1;
      if (v89 == v57)
      {
        goto LABEL_58;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    ;
  }

  __break(1u);
  return result;
}

unint64_t sub_22F2A6DF8()
{
  result = qword_27DAB2FE8;
  if (!qword_27DAB2FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2FE8);
  }

  return result;
}

unint64_t sub_22F2A6E60()
{
  result = qword_27DAB3060;
  if (!qword_27DAB3060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3060);
  }

  return result;
}

uint64_t sub_22F2A6EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  v6 = sub_22F741410();
  v7 = [v5 uuidsFromLocalIdentifiers_];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_22F741420();

  v9 = sub_22F2A8580(v8, a2, a3);

  return v9;
}

uint64_t GraphCurationPlannerContext.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_date;
  v4 = sub_22F73F690();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *GraphCurationPlannerContext.graphWorkingContext.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_graphWorkingContext);
  v2 = v1;
  return v1;
}

uint64_t sub_22F2A7054()
{
  sub_22F120634(0, &qword_2810A8D00, 0x277D86200);
  result = sub_22F741850();
  qword_2810B5008 = result;
  return result;
}

uint64_t GraphCurationPlannerContext.__allocating_init(for:with:graphWorkingContext:)(uint64_t a1, void *a2, void *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  GraphCurationPlannerContext.init(for:with:graphWorkingContext:)(a1, a2, a3);
  return v9;
}

uint64_t GraphCurationPlannerContext.init(for:with:graphWorkingContext:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_22F740B90();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_date;
  v14 = sub_22F73F690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v29 = a1;
  v16(v4 + v13, a1, v14);
  *(v4 + OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_graphWorkingContext) = a3;
  *(v4 + OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_photoLibrary) = a2;
  v17 = objc_allocWithZone(MEMORY[0x277CD99F8]);
  v28 = a3;
  v18 = a2;
  v19 = [v17 initWithPhotoLibrary_];
  v20 = [v19 personUUIDsWithNegativeFeedback];

  v21 = sub_22F741420();
  *(v4 + OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_avoidedPeopleUUIDs) = v21;
  if (qword_2810AC390 != -1)
  {
    swift_once();
  }

  v22 = qword_2810B5008;
  sub_22F740BA0();
  (*(v9 + 32))(v4 + OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_logger, v12, v8);
  if (a3)
  {
    v23 = v18;
    v24 = v28;
  }

  else
  {
    v23 = sub_22F740B70();
    v25 = sub_22F7415F0();
    if (os_log_type_enabled(v23, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22F0FC000, v23, v25, "Graph is not available. Falling back to graph-free curation", v26, 2u);
      MEMORY[0x2319033A0](v26, -1, -1);

      v24 = v18;
    }

    else
    {
      v24 = v23;
      v23 = v18;
    }
  }

  (*(v15 + 8))(v29, v14);
  return v4;
}

uint64_t GraphCurationPlannerContext.__allocating_init(for:with:)(uint64_t a1, void *a2)
{
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  *&v7 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  if ([a2 isReady])
  {
    v10 = [a2 workingContext];
  }

  (*(v5 + 16))(v9, a1, v4);
  v11 = [a2 photoLibrary];
  v12 = type metadata accessor for GraphCurationPlannerContext();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  GraphCurationPlannerContext.init(for:with:graphWorkingContext:)(v9, v11, v10);

  (*(v5 + 8))(a1, v4);
  return v15;
}

uint64_t sub_22F2A7584()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_graphWorkingContext);
  if (v1)
  {
    v2 = v1;
    v3 = sub_22F2A7784();

    return v3;
  }

  else
  {
    v5 = sub_22F7415C0();
    v6 = sub_22F740B70();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22F0FC000, v6, v5, "Fetching top people from photoLibrary", v7, 2u);
      MEMORY[0x2319033A0](v7, -1, -1);
    }

    return sub_22F2A7D0C();
  }
}

uint64_t sub_22F2A7784()
{
  v1 = *v0;
  v16 = 0;
  v12 = v0;
  v13 = &v16;
  v14 = v1;
  sub_22F2A1E14(sub_22F2A8A6C, &v11);
  v2 = v16;
  if (v16)
  {

    v3 = sub_22F7415C0();

    v4 = sub_22F740B70();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v15 = v6;
      *v5 = 134218242;
      *(v5 + 4) = *(v2 + 16);

      *(v5 + 12) = 2080;
      v7 = sub_22F741430();
      v9 = sub_22F145F20(v7, v8, &v15);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_22F0FC000, v4, v3, "Found %ld important people with localIdentifiers: %s", v5, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x2319033A0](v6, -1, -1);
      MEMORY[0x2319033A0](v5, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    sub_22F2A8A78();
    swift_allocError();
    swift_willThrow();
  }

  return v2;
}

void sub_22F2A7978(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D3C790]) initWithPhotoLibrary_];
  if (qword_2810AC390 != -1)
  {
    swift_once();
  }

  v6 = [objc_allocWithZone(PGPeopleWallpaperSuggesterPersonImportanceAnalyzer) initWithGraph:a1 curationContext:v5 loggingConnection:qword_2810B5008];

  [v6 setNormalizedDeviationForVeryImportantPersons_];
  [v6 setNormalizedDeviationForImportantPersons_];
  [v6 setFavoritePersonsAreVIPs_];
  aBlock[4] = GEOLocationCoordinate2DMake;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F2FA6F0;
  aBlock[3] = &block_descriptor_20;
  v7 = _Block_copy(aBlock);
  v8 = [v6 personInformationsWithProgress_];
  _Block_release(v7);
  sub_22F120634(0, &qword_27DAB3080, off_27887BC28);
  v9 = sub_22F741180();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v6;
    v30 = a3;
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_16:
    v13 = MEMORY[0x277D84F98];
LABEL_17:

    v27 = sub_22F1534D0(v13);

    v28 = *v30;
    *v30 = v27;

    return;
  }

  v10 = sub_22F741A00();
  v29 = v6;
  v30 = a3;
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    v13 = MEMORY[0x277D84F98];
    v14 = &selRef_floatVector;
    do
    {
      if (v12)
      {
        v15 = MEMORY[0x2319016F0](v11, v9);
      }

      else
      {
        v15 = *(v9 + 8 * v11 + 32);
      }

      v16 = v15;
      if ([v15 v14[299]] < 2 || objc_msgSend(v16, v14[299]) == 3)
      {
      }

      else
      {
        v17 = v9;
        v18 = v12;
        v19 = v13;
        v20 = [v16 personLocalIdentifier];
        v21 = sub_22F740E20();
        v23 = v22;

        v24 = [v16 dupedPersonLocalIdentifiers];
        v25 = sub_22F741420();

        sub_22F10BBDC(aBlock, v21, v23);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v19;
        v12 = v18;
        v9 = v17;
        sub_22F131AF4(v25, v21, v23, isUniquelyReferenced_nonNull_native);

        v14 = &selRef_floatVector;

        v13 = aBlock[0];
      }

      ++v11;
    }

    while (v10 != v11);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_22F2A7D0C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_photoLibrary) librarySpecificFetchOptions];
  [v1 setPersonContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F782290;
  v3 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v4 = sub_22F740DF0();
  v5 = [v3 initWithKey:v4 ascending:0];

  *(v2 + 32) = v5;
  v6 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v7 = sub_22F740DF0();
  v8 = [v6 initWithKey:v7 ascending:0];

  *(v2 + 40) = v8;
  v9 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v10 = sub_22F740DF0();
  v11 = [v9 initWithKey:v10 ascending:1];

  *(v2 + 48) = v11;
  v12 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v13 = sub_22F740DF0();
  v14 = [v12 initWithKey:v13 ascending:1];

  *(v2 + 56) = v14;
  sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
  v15 = sub_22F741160();

  [v1 setSortDescriptors_];

  [v1 setFetchLimit_];
  v16 = [objc_opt_self() fetchPersonsWithOptions_];
  v17 = [v16 fetchedObjects];
  v46 = v16;
  v47 = v1;
  if (v17)
  {
    v18 = v17;
    sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
    v19 = sub_22F741180();

    if (v19 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
    {
      v21 = 0;
      v22 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x2319016F0](v21, v19);
        }

        else
        {
          if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v23 = *(v19 + 8 * v21 + 32);
        }

        v24 = v23;
        v25 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v26 = i;
        v27 = [v23 localIdentifier];
        v28 = sub_22F740E20();
        v30 = v29;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_22F13E1A8(0, *(v22 + 2) + 1, 1, v22);
        }

        v32 = *(v22 + 2);
        v31 = *(v22 + 3);
        if (v32 >= v31 >> 1)
        {
          v22 = sub_22F13E1A8((v31 > 1), v32 + 1, 1, v22);
        }

        *(v22 + 2) = v32 + 1;
        v33 = &v22[16 * v32];
        *(v33 + 4) = v28;
        *(v33 + 5) = v30;
        ++v21;
        i = v26;
        if (v25 == v26)
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

    v22 = MEMORY[0x277D84F90];
LABEL_21:
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v34 = sub_22F7415C0();
  v35 = sub_22F740B70();
  if (os_log_type_enabled(v35, v34))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v48 = v37;
    *v36 = 134218242;
    *(v36 + 4) = *(v22 + 2);
    *(v36 + 12) = 2080;

    v39 = MEMORY[0x231900D40](v38, MEMORY[0x277D837D0]);
    v41 = v40;

    v42 = sub_22F145F20(v39, v41, &v48);

    *(v36 + 14) = v42;
    _os_log_impl(&dword_22F0FC000, v35, v34, "Found %ld important people from photoLibrary with localIdentifiers: %s", v36, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x2319033A0](v37, -1, -1);
    MEMORY[0x2319033A0](v36, -1, -1);
  }

  v44 = sub_22F1515F8(v43);

  swift_bridgeObjectRelease_n();
  return v44;
}

uint64_t GraphCurationPlannerContext.Error.hashValue.getter()
{
  sub_22F742170();
  MEMORY[0x231901D30](0);
  return sub_22F7421D0();
}

uint64_t GraphCurationPlannerContext.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_date;
  v2 = sub_22F73F690();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_avoidedPeopleUUIDs);

  v4 = OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_logger;
  v5 = sub_22F740B90();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t GraphCurationPlannerContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_date;
  v2 = sub_22F73F690();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_avoidedPeopleUUIDs);

  v4 = OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_logger;
  v5 = sub_22F740B90();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22F2A8484@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_date;
  v5 = sub_22F73F690();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *sub_22F2A8500()
{
  v1 = *(*v0 + OBJC_IVAR____TtC11PhotosGraph27GraphCurationPlannerContext_graphWorkingContext);
  v2 = v1;
  return v1;
}

uint64_t sub_22F2A8580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22F740560();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v12 = (*(a3 + 32))(a2, a3, v9);
    if (*(v12 + 16) <= *(a1 + 16) >> 3)
    {
      v20 = a1;

      sub_22F3E7FB8(v12);

      if (*(v20 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {

      v13 = sub_22F1E999C(v12, a1);

      if (*(v13 + 16))
      {
LABEL_4:
        (*(a3 + 24))(a2, a3);
        (*(v7 + 104))(v11, *MEMORY[0x277D3C570], v6);
        v14 = sub_22F740570();
        v15 = *(v14 + 48);
        v16 = *(v14 + 52);
        swift_allocObject();
        sub_22F740550();
        sub_22F73FF60();
        v17 = sub_22F7404F0();

        return v17;
      }
    }
  }

  return 0;
}

uint64_t type metadata accessor for GraphCurationPlannerContext()
{
  result = qword_2810AC378;
  if (!qword_2810AC378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F2A87F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07D0, &qword_22F779400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22F2A885C()
{
  result = qword_27DAB3070;
  if (!qword_27DAB3070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3070);
  }

  return result;
}

uint64_t sub_22F2A891C()
{
  result = sub_22F73F690();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22F740B90();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_22F2A8A78()
{
  result = qword_27DAB3078;
  if (!qword_27DAB3078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3078);
  }

  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F2A8AE4()
{
  v1 = OBJC_IVAR___PGMusicCuratorContext____lazy_storage___flexMusicSongs;
  if (*(v0 + OBJC_IVAR___PGMusicCuratorContext____lazy_storage___flexMusicSongs))
  {
    v2 = *(v0 + OBJC_IVAR___PGMusicCuratorContext____lazy_storage___flexMusicSongs);
  }

  else
  {
    v3 = OBJC_IVAR___PGMusicCuratorContext_flexSongProvider;
    swift_beginAccess();
    v4 = *(v0 + v3);
    v5 = swift_unknownObjectRetain();
    v2 = _s11PhotosGraph16FlexMusicCuratorC06usableC5Songs4fromSayAA0cD12SongProtocol_pGAA0cdi8ProviderJ0_pSg_tFZ_0(v5);
    swift_unknownObjectRelease();
    v6 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t MusicCuratorContext.useOnlyMusicForTopicInTopPickSuggestions.getter()
{
  v1 = OBJC_IVAR___PGMusicCuratorContext_useOnlyMusicForTopicInTopPickSuggestions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MusicCuratorContext.useOnlyMusicForTopicInTopPickSuggestions.setter(char a1)
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_useOnlyMusicForTopicInTopPickSuggestions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MusicCuratorContext.allowChillMixElection.getter()
{
  v1 = OBJC_IVAR___PGMusicCuratorContext_allowChillMixElection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MusicCuratorContext.allowChillMixElection.setter(char a1)
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_allowChillMixElection;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MusicCuratorContext.allowGetUpMixElection.getter()
{
  v1 = OBJC_IVAR___PGMusicCuratorContext_allowGetUpMixElection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MusicCuratorContext.allowGetUpMixElection.setter(char a1)
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_allowGetUpMixElection;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MusicCuratorContext.refreshSongMetadata.getter()
{
  v1 = OBJC_IVAR___PGMusicCuratorContext_refreshSongMetadata;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MusicCuratorContext.refreshSongMetadata.setter(char a1)
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_refreshSongMetadata;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MusicCuratorContext.forceShareableInBestSuggestions.getter()
{
  v1 = OBJC_IVAR___PGMusicCuratorContext_forceShareableInBestSuggestions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MusicCuratorContext.forceShareableInBestSuggestions.setter(char a1)
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_forceShareableInBestSuggestions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MusicCuratorContext.musicCurationOverrideDictionary.getter()
{
  v1 = OBJC_IVAR___PGMusicCuratorContext_musicCurationOverrideDictionary;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t MusicCuratorContext.musicCurationOverrideDictionary.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_musicCurationOverrideDictionary;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MusicCuratorContext.bypassMusicForTopicElection.getter()
{
  v1 = OBJC_IVAR___PGMusicCuratorContext_bypassMusicForTopicElection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MusicCuratorContext.bypassMusicForTopicElection.setter(char a1)
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_bypassMusicForTopicElection;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MusicCuratorContext.genre.getter()
{
  v1 = (v0 + OBJC_IVAR___PGMusicCuratorContext_genre);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t MusicCuratorContext.genre.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PGMusicCuratorContext_genre);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t MusicCuratorContext.isMemoryCreationCuration.getter()
{
  v1 = OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MusicCuratorContext.isMemoryCreationCuration.setter(char a1)
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MusicCuratorContext.flexSongProvider.getter()
{
  v1 = OBJC_IVAR___PGMusicCuratorContext_flexSongProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t MusicCuratorContext.flexSongProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_flexSongProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

void *sub_22F2A9CA4()
{
  v1 = v0 + OBJC_IVAR___PGMusicCuratorContext____lazy_storage___keywordsByAdamID;
  v2 = *(v0 + OBJC_IVAR___PGMusicCuratorContext____lazy_storage___keywordsByAdamID);
  v3 = *(v0 + OBJC_IVAR___PGMusicCuratorContext____lazy_storage___keywordsByAdamID + 8);
  if (v3 == 255)
  {
    v4 = sub_22F1DE30C();
    v5 = *v1;
    *v1 = v4;
    v6 = *(v1 + 8);
    *(v1 + 8) = 0;
    sub_22F256030(v4);
    sub_22F255F20(v5, v6);
  }

  else
  {
    v4 = v2;
  }

  sub_22F256018(v2, v3);
  return v4;
}

id static MusicCuratorContext.context(photoLibrary:adamIDsWithNegativeUserFeedback:allowExplicitMusicContent:cache:configuration:blocklistConfiguration:musicBag:recentlyUsedSongs:genre:isMemoryCreationCuration:flexSongProviderName:)(void *a1, uint64_t a2, int a3, char *a4, void *__src, uint64_t *a6, void *a7, void *a8, uint64_t a9, unint64_t a10, char a11, uint64_t a12, unint64_t a13)
{
  LODWORD(v65) = a3;
  memcpy(__dst, __src, 0x16CuLL);
  v21 = *a6;
  v22 = a6[1];
  if (sub_22F2AA234(__dst) == 1)
  {
    static MusicCuratorConfiguration.defaultConfiguration()(v62);
    if (v14)
    {
      return v13;
    }

    v23 = v62;
  }

  else
  {
    v23 = __dst;
  }

  memcpy(__srca, v23, sizeof(__srca));
  if (v21)
  {
    v58 = v21;
    v59 = v22;
  }

  else
  {
    static MusicCuratorBlocklistConfiguration.defaultConfiguration()(v62);
    if (v14)
    {
      return v13;
    }

    v58 = v62[0];
    v59 = v62[1];
  }

  if (a4)
  {
    sub_22F2AAF90(v21);
    v56 = a4;
    v57 = a1;
    if (a7)
    {
      goto LABEL_9;
    }

LABEL_17:
    objc_allocWithZone(type metadata accessor for MusicBag());
    v27 = a4;
    a1 = v57;
    v55 = sub_22F1ED5B0(a4);
    v28 = v55;
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_18:
    v29 = objc_opt_self();
    v30 = a7;
    v31 = [v29 fetchSongIdentifiersWithNegativeFeedbackWithPhotoLibrary_];
    v32 = sub_22F741180();

    v53 = sub_22F1515F8(v32);

    goto LABEL_19;
  }

  sub_22F2AAF90(v21);
  v26 = sub_22F1A26E0(a1);
  if (v14)
  {

    return v13;
  }

  v56 = v26;
  v57 = a1;
  if (!a7)
  {
    goto LABEL_17;
  }

LABEL_9:
  v55 = a7;
  v24 = a4;
  if (!a2)
  {
    goto LABEL_18;
  }

LABEL_10:
  v25 = a7;
  v53 = a2;
LABEL_19:
  if (a8)
  {

    v54 = a8;
  }

  else
  {
    v33 = objc_allocWithZone(type metadata accessor for RecentlyUsedSongs());

    v34 = [v33 init];
    sub_22F14263C(a1, 0);
    v54 = v34;
  }

  v35 = v65;
  if (v65 == 2)
  {
    v36 = objc_opt_self();
    v37 = a8;
    v38 = [v36 sharedRestrictionsMonitor];
    v35 = [v38 allowsExplicitContent];
  }

  else
  {
    v39 = a8;
  }

  if (a10)
  {
    v40 = a9;
  }

  else
  {
    v40 = 0;
  }

  v65 = v40;
  v41 = 0xE000000000000000;
  if (a10)
  {
    v41 = a10;
  }

  v52 = v41;

  v51 = _s11PhotosGraph23FlexSongProviderFactoryC8provider7forNameAA0c5MusicdE8Protocol_pSSSg_tFZ_0(a12, a13);
  v42 = objc_allocWithZone(v60);
  v43 = OBJC_IVAR___PGMusicCuratorContext_keywordsForAdamId;
  *&v42[v43] = sub_22F14FCC8(MEMORY[0x277D84F90]);
  v44 = OBJC_IVAR___PGMusicCuratorContext_musicCurationOverrideDictionary;
  *&v42[OBJC_IVAR___PGMusicCuratorContext_musicCurationOverrideDictionary] = 0;
  v45 = &v42[OBJC_IVAR___PGMusicCuratorContext____lazy_storage___keywordsByAdamID];
  *v45 = 0;
  v45[8] = -1;
  *&v42[OBJC_IVAR___PGMusicCuratorContext____lazy_storage___flexMusicSongs] = 0;
  memcpy(&v42[OBJC_IVAR___PGMusicCuratorContext_configuration], __srca, 0x16CuLL);
  v46 = &v42[OBJC_IVAR___PGMusicCuratorContext_blocklistConfiguration];
  *v46 = v58;
  v46[1] = v59;
  *&v42[OBJC_IVAR___PGMusicCuratorContext_cache] = v56;
  *&v42[OBJC_IVAR___PGMusicCuratorContext_photoLibrary] = v57;
  *&v42[OBJC_IVAR___PGMusicCuratorContext_musicBag] = v55;
  *&v42[OBJC_IVAR___PGMusicCuratorContext_adamIDsWithNegativeUserFeedback] = v53;
  *&v42[OBJC_IVAR___PGMusicCuratorContext_recentlyUsedSongs] = v54;
  v42[OBJC_IVAR___PGMusicCuratorContext_allowExplicitMusicContent] = v35 & 1;
  swift_beginAccess();
  *&v42[v44] = 0;
  v42[OBJC_IVAR___PGMusicCuratorContext_useOnlyMusicForTopicInTopPickSuggestions] = 0;
  v42[OBJC_IVAR___PGMusicCuratorContext_allowChillMixElection] = 0;
  v42[OBJC_IVAR___PGMusicCuratorContext_allowGetUpMixElection] = 0;
  v42[OBJC_IVAR___PGMusicCuratorContext_bypassMusicForTopicElection] = 0;
  v42[OBJC_IVAR___PGMusicCuratorContext_refreshSongMetadata] = 0;
  v42[OBJC_IVAR___PGMusicCuratorContext_forceShareableInBestSuggestions] = 0;
  v47 = &v42[OBJC_IVAR___PGMusicCuratorContext_musicForTopicUseTopicOnly];
  *v47 = 0;
  *(v47 + 2) = 1061158912;
  *(v47 + 20) = 0;
  *(v47 + 12) = 0;
  *(v47 + 28) = 0x4E6E6B283E800000;
  *(v47 + 9) = 1075838976;
  *(v47 + 5) = 100;
  v48 = &v42[OBJC_IVAR___PGMusicCuratorContext_genre];
  *v48 = v65;
  v48[1] = v52;
  v42[OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration] = a11 & 1;
  *&v42[OBJC_IVAR___PGMusicCuratorContext_flexSongProvider] = v51;
  v61.receiver = v42;
  v61.super_class = v60;
  v49 = v57;
  v13 = objc_msgSendSuper2(&v61, sel_init);

  return v13;
}

uint64_t sub_22F2AA234(uint64_t a1)
{
  v1 = *(a1 + 32);
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

id MusicCuratorContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicCuratorContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MusicCuratorContext.description.getter()
{
  v1 = v0;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000024, 0x800000022F797ED0);
  v2 = *(v0 + OBJC_IVAR___PGMusicCuratorContext_adamIDsWithNegativeUserFeedback);
  v3 = sub_22F741430();
  MEMORY[0x231900B10](v3);

  MEMORY[0x231900B10](0xD000000000000015, 0x800000022F797F00);
  v4 = *(v0 + OBJC_IVAR___PGMusicCuratorContext_recentlyUsedSongs);
  v5 = OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_mostRecentlyUsedSongIDDateMap;
  swift_beginAccess();
  v39 = *(*(v4 + v5) + 16);
  v6 = sub_22F742010();
  MEMORY[0x231900B10](v6);

  MEMORY[0x231900B10](0xD00000000000001DLL, 0x800000022F797F20);
  if (*(v1 + OBJC_IVAR___PGMusicCuratorContext_allowExplicitMusicContent))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR___PGMusicCuratorContext_allowExplicitMusicContent))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v7, v8);

  MEMORY[0x231900B10](0xD00000000000002CLL, 0x800000022F797F40);
  v9 = OBJC_IVAR___PGMusicCuratorContext_useOnlyMusicForTopicInTopPickSuggestions;
  swift_beginAccess();
  if (*(v1 + v9))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v1 + v9))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v10, v11);

  MEMORY[0x231900B10](0xD000000000000019, 0x800000022F797F70);
  v12 = OBJC_IVAR___PGMusicCuratorContext_allowChillMixElection;
  swift_beginAccess();
  if (*(v1 + v12))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(v1 + v12))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v13, v14);

  MEMORY[0x231900B10](0xD000000000000019, 0x800000022F797F90);
  v15 = OBJC_IVAR___PGMusicCuratorContext_allowGetUpMixElection;
  swift_beginAccess();
  if (*(v1 + v15))
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (*(v1 + v15))
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v16, v17);

  MEMORY[0x231900B10](0xD000000000000017, 0x800000022F797FB0);
  v18 = OBJC_IVAR___PGMusicCuratorContext_refreshSongMetadata;
  swift_beginAccess();
  if (*(v1 + v18))
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (*(v1 + v18))
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v19, v20);

  MEMORY[0x231900B10](0xD000000000000023, 0x800000022F797FD0);
  v21 = OBJC_IVAR___PGMusicCuratorContext_forceShareableInBestSuggestions;
  swift_beginAccess();
  if (*(v1 + v21))
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (*(v1 + v21))
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v22, v23);

  MEMORY[0x231900B10](0xD00000000000001FLL, 0x800000022F798000);
  v24 = OBJC_IVAR___PGMusicCuratorContext_bypassMusicForTopicElection;
  swift_beginAccess();
  if (*(v1 + v24))
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (*(v1 + v24))
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v25, v26);

  MEMORY[0x231900B10](0x3A65726E6567090ALL, 0xE900000000000020);
  v27 = (v1 + OBJC_IVAR___PGMusicCuratorContext_genre);
  swift_beginAccess();
  v28 = *v27;
  v29 = v27[1];

  MEMORY[0x231900B10](v28, v29);

  MEMORY[0x231900B10](0xD00000000000001CLL, 0x800000022F798020);
  v30 = OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration;
  swift_beginAccess();
  if (*(v1 + v30))
  {
    v31 = 1702195828;
  }

  else
  {
    v31 = 0x65736C6166;
  }

  if (*(v1 + v30))
  {
    v32 = 0xE400000000000000;
  }

  else
  {
    v32 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v31, v32);

  MEMORY[0x231900B10](0xD000000000000014, 0x800000022F798040);
  v33 = OBJC_IVAR___PGMusicCuratorContext_flexSongProvider;
  swift_beginAccess();
  v34 = *(v1 + v33);
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_22F2AB808;
  *(v36 + 24) = v35;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3138, qword_22F7823F8);
  v37 = sub_22F740E90();
  MEMORY[0x231900B10](v37);

  MEMORY[0x231900B10](32010, 0xE200000000000000);
  return 0;
}

uint64_t sub_22F2AABD8(void *a1)
{
  v1 = [a1 name];
  v2 = sub_22F740E20();

  return v2;
}

uint64_t MusicCuratorContext.extractSongIdKeywordMappings()()
{
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  v2 = qword_2810B4E90;
  *&v3 = CACurrentMediaTime();
  sub_22F1B560C("Music Curation - extractSongIdKeywordMappings", 45, 2u, v3, 0, v2, v19);
  v4 = OBJC_IVAR___PGMusicCuratorContext_keywordsForAdamId;
  v5 = *(v0 + OBJC_IVAR___PGMusicCuratorContext_keywordsForAdamId);
  if (*(v5 + 16))
  {
    v6 = *(v0 + OBJC_IVAR___PGMusicCuratorContext_keywordsForAdamId);
  }

  else
  {
    v7 = sub_22F2A9CA4();
    if (v8)
    {
      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      v9 = sub_22F740B90();
      __swift_project_value_buffer(v9, qword_2810B4D90);
      v10 = v7;
      v11 = sub_22F740B70();
      v12 = sub_22F7415E0();
      sub_22F21173C(v7);
      if (os_log_type_enabled(v11, v12))
      {
        v5 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v5 = 138412290;
        v14 = v7;
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v5 + 4) = v15;
        *v13 = v15;
        _os_log_impl(&dword_22F0FC000, v11, v12, "[extractSongIdKeywordMappings] Error getting keywordsByAdamID dataframe: %@", v5, 0xCu);
        sub_22F2A87F0(v13);
        MEMORY[0x2319033A0](v13, -1, -1);
        MEMORY[0x2319033A0](v5, -1, -1);
      }

      swift_willThrow();
    }

    else
    {
      v16 = sub_22F741520();
      if (v1)
      {
        sub_22F21173C(v7);
      }

      else
      {
        v5 = sub_22F2AAFD4(v16);
        sub_22F21173C(v7);

        v18 = *(v0 + v4);
        *(v0 + v4) = v5;
      }
    }
  }

  sub_22F1B2BBC(0);

  return v5;
}

uint64_t sub_22F2AAF90(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22F2AAFD4(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  v40 = v7;
  v41 = v6;
  v39 = v2;
  while (v5)
  {
    v13 = v8;
LABEL_11:
    v14 = __clz(__rbit64(v5)) | (v13 << 6);
    v15 = (*(v1 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = *(*(v1 + 56) + 8 * v14);
    v19 = *(v18 + 16);
    if (v19)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
      v20 = swift_allocObject();
      v21 = _swift_stdlib_malloc_size(v20);
      v22 = v21 - 32;
      if (v21 < 32)
      {
        v22 = v21 - 17;
      }

      v20[2] = v19;
      v20[3] = 2 * (v22 >> 4);
      v42 = sub_22F120B3C(&v43, v20 + 4, v19, v18);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_22F0FF590();
      if (v42 != v19)
      {
        goto LABEL_29;
      }

      v2 = v39;
      v1 = v40;
    }

    else
    {
      swift_bridgeObjectRetain_n();

      v20 = MEMORY[0x277D84F90];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v9;
    v24 = sub_22F1229E8(v17, v16);
    v26 = v9[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_28;
    }

    v30 = v25;
    if (v9[3] >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v17;
        v36 = v16;
        v37 = v24;
        sub_22F135844();
        v24 = v37;
        v16 = v36;
        v17 = v35;
      }
    }

    else
    {
      sub_22F127C90(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_22F1229E8(v17, v16);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_31;
      }
    }

    v5 &= v5 - 1;
    if (v30)
    {
      v10 = v24;

      v9 = v43;
      v11 = v43[7];
      v12 = *(v11 + 8 * v10);
      *(v11 + 8 * v10) = v20;
    }

    else
    {
      v9 = v43;
      v43[(v24 >> 6) + 8] |= 1 << v24;
      v32 = (v9[6] + 16 * v24);
      *v32 = v17;
      v32[1] = v16;
      *(v9[7] + 8 * v24) = v20;

      v33 = v9[2];
      v28 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v28)
      {
        goto LABEL_30;
      }

      v9[2] = v34;
    }

    v8 = v13;
    v6 = v41;
  }

  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v13);
    ++v8;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

id sub_22F2AB2F8(void *a1, uint64_t a2, id a3, char *a4, char *a5, uint64_t a6, unint64_t a7, void *a8, uint64_t a9, unint64_t a10, void *a11, uint64_t a12)
{
  v13 = v12;
  v68 = a1;
  if (a3)
  {
    LODWORD(v18) = [a3 BOOLValue];
    v19 = a11;
    if (a12)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_22F2AB87C(__src);
    if (v19)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  LODWORD(v18) = 2;
  v19 = a11;
  if (!a12)
  {
    goto LABEL_6;
  }

LABEL_3:
  memmove(__dst, (a12 + OBJC_IVAR___PGMusicCuratorConfigurationWrapper_configuration), 0x16CuLL);
  GEOLocationCoordinate2DMake(__dst);
  memcpy(__src, __dst, 0x16CuLL);
  if (v19)
  {
LABEL_4:
    v20 = [v19 BOOLValue];
    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  memcpy(__dst, __src, 0x16CuLL);
  if (sub_22F2AA234(__dst) == 1)
  {
    static MusicCuratorConfiguration.defaultConfiguration()(v64);
    if (v12)
    {
      return v20;
    }

    v13 = 0;
    v21 = v64;
  }

  else
  {
    v21 = __dst;
  }

  memcpy(v65, v21, sizeof(v65));
  static MusicCuratorBlocklistConfiguration.defaultConfiguration()(v64);
  if (!v13)
  {
    v23 = v64[0];
    v22 = v64[1];
    if (a4)
    {
      v59 = a4;
    }

    else
    {
      v59 = sub_22F1A26E0(v68);
    }

    v60 = v20;
    if (a5)
    {
      v24 = a4;
      v57 = a5;
    }

    else
    {
      objc_allocWithZone(type metadata accessor for MusicBag());
      v25 = a4;
      v24 = sub_22F1ED5B0(a4);
      v57 = v24;
    }

    v26 = v68;
    v27 = v24;
    if (a2)
    {
      v28 = a5;
      v56 = a2;
    }

    else
    {
      v29 = objc_opt_self();
      v30 = a5;
      v31 = [v29 fetchSongIdentifiersWithNegativeFeedbackWithPhotoLibrary_];
      v32 = sub_22F741180();

      v56 = sub_22F1515F8(v32);
    }

    if (a8)
    {

      v58 = a8;
    }

    else
    {
      v33 = objc_allocWithZone(type metadata accessor for RecentlyUsedSongs());

      v34 = [v33 init];
      sub_22F14263C(v68, 0);
      v58 = v34;
    }

    v35 = v22;
    v36 = v23;
    if (v18 == 2)
    {
      v18 = objc_opt_self();
      v37 = a8;
      v38 = [v18 sharedRestrictionsMonitor];
      LOBYTE(v18) = [v38 allowsExplicitContent];
    }

    else
    {
      v39 = a8;
    }

    if (a10)
    {
      v40 = a9;
    }

    else
    {
      v40 = 0;
    }

    v41 = 0xE000000000000000;
    if (a10)
    {
      v41 = a10;
    }

    v54 = v41;
    v55 = v40;

    v42 = _s11PhotosGraph23FlexSongProviderFactoryC8provider7forNameAA0c5MusicdE8Protocol_pSSSg_tFZ_0(a6, a7);
    v43 = type metadata accessor for MusicCuratorContext();
    v44 = objc_allocWithZone(v43);
    v45 = OBJC_IVAR___PGMusicCuratorContext_keywordsForAdamId;
    *&v44[v45] = sub_22F14FCC8(MEMORY[0x277D84F90]);
    v46 = OBJC_IVAR___PGMusicCuratorContext_musicCurationOverrideDictionary;
    *&v44[OBJC_IVAR___PGMusicCuratorContext_musicCurationOverrideDictionary] = 0;
    v47 = &v44[OBJC_IVAR___PGMusicCuratorContext____lazy_storage___keywordsByAdamID];
    *v47 = 0;
    v47[8] = -1;
    *&v44[OBJC_IVAR___PGMusicCuratorContext____lazy_storage___flexMusicSongs] = 0;
    memcpy(&v44[OBJC_IVAR___PGMusicCuratorContext_configuration], v65, 0x16CuLL);
    v48 = &v44[OBJC_IVAR___PGMusicCuratorContext_blocklistConfiguration];
    *v48 = v36;
    v48[1] = v35;
    *&v44[OBJC_IVAR___PGMusicCuratorContext_cache] = v59;
    v49 = v68;
    *&v44[OBJC_IVAR___PGMusicCuratorContext_photoLibrary] = v68;
    *&v44[OBJC_IVAR___PGMusicCuratorContext_musicBag] = v57;
    *&v44[OBJC_IVAR___PGMusicCuratorContext_adamIDsWithNegativeUserFeedback] = v56;
    *&v44[OBJC_IVAR___PGMusicCuratorContext_recentlyUsedSongs] = v58;
    v44[OBJC_IVAR___PGMusicCuratorContext_allowExplicitMusicContent] = v18 & 1;
    swift_beginAccess();
    *&v44[v46] = 0;
    v44[OBJC_IVAR___PGMusicCuratorContext_useOnlyMusicForTopicInTopPickSuggestions] = 0;
    v44[OBJC_IVAR___PGMusicCuratorContext_allowChillMixElection] = 0;
    v44[OBJC_IVAR___PGMusicCuratorContext_allowGetUpMixElection] = 0;
    v44[OBJC_IVAR___PGMusicCuratorContext_bypassMusicForTopicElection] = 0;
    v44[OBJC_IVAR___PGMusicCuratorContext_refreshSongMetadata] = 0;
    v44[OBJC_IVAR___PGMusicCuratorContext_forceShareableInBestSuggestions] = 0;
    v50 = &v44[OBJC_IVAR___PGMusicCuratorContext_musicForTopicUseTopicOnly];
    *v50 = 0;
    *(v50 + 2) = 1061158912;
    *(v50 + 20) = 0;
    *(v50 + 12) = 0;
    *(v50 + 28) = 0x4E6E6B283E800000;
    *(v50 + 9) = 1075838976;
    *(v50 + 5) = 100;
    v51 = &v44[OBJC_IVAR___PGMusicCuratorContext_genre];
    *v51 = v55;
    v51[1] = v54;
    v44[OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration] = v60;
    *&v44[OBJC_IVAR___PGMusicCuratorContext_flexSongProvider] = v42;
    v63.receiver = v44;
    v63.super_class = v43;
    v52 = v49;
    v20 = objc_msgSendSuper2(&v63, sel_init);
  }

  return v20;
}

uint64_t sub_22F2AB810@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  a1[1] = v6;
  return result;
}

_OWORD *sub_22F2AB87C(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 40) = 0u;
  result = (a1 + 40);
  result[14] = 0u;
  result[15] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  result[18] = 0u;
  result[19] = 0u;
  return result;
}

uint64_t sub_22F2AB8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22F740270();
  v44 = *(v4 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = (v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22F7404D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = sub_22F7403B0();
  v12 = *(v53 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v53);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  v16 = sub_22F73FD40();
  v17 = *(v16 + 16);
  if (v17)
  {
    v40 = v4;
    v41 = a2;
    v19 = *(v12 + 16);
    v18 = v12 + 16;
    v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v39[1] = v16;
    v21 = v16 + v20;
    v51 = *(v18 + 56);
    v52 = v19;
    v50 = (v18 - 8);
    v49 = (v8 + 88);
    v48 = *MEMORY[0x277D3C520];
    v45 = (v8 + 96);
    v46 = (v8 + 8);
    v22 = MEMORY[0x277D84F90];
    v47 = v7;
    v23 = v18;
    do
    {
      v24 = v53;
      v25 = v23;
      v52(v15, v21, v53);
      sub_22F7403A0();
      (*v50)(v15, v24);
      v26 = (*v49)(v11, v7);
      if (v26 == v48)
      {
        (*v45)(v11, v7);
        v27 = *v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_22F13F920(0, v22[2] + 1, 1, v22);
        }

        v29 = v22[2];
        v28 = v22[3];
        if (v29 >= v28 >> 1)
        {
          v22 = sub_22F13F920((v28 > 1), v29 + 1, 1, v22);
        }

        v22[2] = v29 + 1;
        v22[v29 + 4] = v27;
        v7 = v47;
      }

      else
      {
        (*v46)(v11, v7);
      }

      v21 += v51;
      --v17;
      v23 = v25;
    }

    while (v17);

    v4 = v40;
    a2 = v41;
    if (v22[2])
    {
      goto LABEL_12;
    }
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_12:
      v30 = v22[4];

      sub_22F73FD90();
      sub_22F73FD50();
      v31 = v42;
      *v42 = 0;
      (*(v44 + 104))(v31, *MEMORY[0x277D3C2B8], v4);
      sub_22F740470();
      v32 = 0;
      goto LABEL_19;
    }
  }

  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v33 = sub_22F740B90();
  __swift_project_value_buffer(v33, qword_2810B4D00);
  v34 = sub_22F740B70();
  v35 = sub_22F7415E0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_22F0FC000, v34, v35, "The query token is not a part of day token", v36, 2u);
    MEMORY[0x2319033A0](v36, -1, -1);
  }

  v32 = 1;
LABEL_19:
  v37 = sub_22F740480();
  return (*(*(v37 - 8) + 56))(a2, v32, 1, v37);
}

char *_s11PhotosGraph32ExtendedTokenCollectionGeneratorC017generatePartOfDayC6Tokens3forSay0A12Intelligence0hijcD0VGSayAF05QueryD0VG_tF_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3140, &qword_22F782448);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = sub_22F740480();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v27 = &v24 - v12;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = *(sub_22F73FDA0() - 8);
  v15 = (v7 + 48);
  v16 = (v7 + 32);
  v17 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v28 = *(v14 + 72);
  v18 = MEMORY[0x277D84F90];
  v25 = v11;
  v26 = v7;
  v24 = (v7 + 48);
  do
  {
    sub_22F2AB8DC(v17, v5);
    if ((*v15)(v5, 1, v6) == 1)
    {
      sub_22F2AC0C8(v5);
    }

    else
    {
      v19 = *v16;
      v20 = v27;
      (*v16)(v27, v5, v6);
      v19(v11, v20, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_22F13EA8C(0, *(v18 + 2) + 1, 1, v18);
      }

      v22 = *(v18 + 2);
      v21 = *(v18 + 3);
      if (v22 >= v21 >> 1)
      {
        v18 = sub_22F13EA8C(v21 > 1, v22 + 1, 1, v18);
      }

      *(v18 + 2) = v22 + 1;
      v11 = v25;
      v19(&v18[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22], v25, v6);
      v15 = v24;
    }

    v17 += v28;
    --v13;
  }

  while (v13);
  return v18;
}

uint64_t sub_22F2AC0C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3140, &qword_22F782448);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22F2AC130(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22F7419C0();
    sub_22F120634(0, &qword_2810A9030, off_27887B328);
    sub_22F2B3CAC();
    sub_22F741470();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_22F741A40() || (sub_22F120634(0, &qword_2810A9030, off_27887B328), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_22F0FF590();
      return;
    }

LABEL_17:
    v12 = [v11 label];
    if (v12)
    {
      v13 = v12;
      v19 = sub_22F740E20();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_22F13E1A8(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_22F13E1A8((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t ExtendedTokenCollectionGenerator.generatePersonExtendedTokens(for:momentNodes:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v6 = sub_22F740B90();
  __swift_project_value_buffer(v6, qword_2810B4D00);
  v7 = sub_22F740B70();
  v8 = sub_22F7415C0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22F0FC000, v7, v8, "generatePersonExtendedTokens for query tokens has started.", v9, 2u);
    MEMORY[0x2319033A0](v9, -1, -1);
  }

  sub_22F1534D0(v10);
  v11 = objc_opt_self();
  v12 = sub_22F741410();

  v13 = [v11 personNodesForLocalIdentifiers:v12 inGraph:*(v3 + 2)];

  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 momentOfPerson];
  v17 = [objc_msgSend(v15 graph)];
  swift_unknownObjectRelease();
  v18 = [v17 concreteGraph];

  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = [v15 elementIdentifiers];
  v20 = [v18 adjacencyWithSources:v19 relation:v16];

  v30[0] = v20;
  v30[1] = v18;
  v21 = sub_22F2ADDA8(v30, a2, a1);
  v22 = *(v21 + 16);
  if (v22)
  {
    v3 = sub_22F10B384(v22, 0);
    v23 = *(sub_22F7402E0() - 8);
    v24 = sub_22F11AA10(v30, &v3[(*(v23 + 80) + 32) & ~*(v23 + 80)], v22, v21);

    sub_22F0FF590();
    if (v24 == v22)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    sub_22F741D40();
    __break(1u);

    __break(1u);
    return result;
  }

  v3 = MEMORY[0x277D84F90];
LABEL_10:
  v30[0] = v3;
  sub_22F2ADA48(v30);

  v25 = v30[0];
  v26 = sub_22F740B70();
  v27 = sub_22F7415C0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_22F0FC000, v26, v27, "generatePersonExtendedTokens for query tokens complete.", v28, 2u);
    MEMORY[0x2319033A0](v28, -1, -1);
  }

  swift_unknownObjectRelease();
  return v25;
}