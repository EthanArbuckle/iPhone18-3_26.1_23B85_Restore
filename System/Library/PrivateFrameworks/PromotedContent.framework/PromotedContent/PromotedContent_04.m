uint64_t Context.registerDenylistEvaluator(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___APPCContext_denylistEvaluator);
  v4 = *(v2 + OBJC_IVAR___APPCContext_denylistEvaluator);
  v5 = *(v2 + OBJC_IVAR___APPCContext_denylistEvaluator + 8);
  *v3 = a1;
  v3[1] = a2;

  return sub_1C1AC0530(v4);
}

uint64_t sub_1C1AFB3B4(unint64_t a1)
{
  v2 = a1;
  v27 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_29:
    v3 = sub_1C1B953A8();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = v1 + OBJC_IVAR___APPCContext_denylistEvaluator;
      v6 = v2 & 0xC000000000000001;
      v25 = v2;
      v26 = v2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v6)
        {
          v8 = MEMORY[0x1C6907490](v4, v2);
        }

        else
        {
          if (v4 >= *(v26 + 16))
          {
            goto LABEL_28;
          }

          v8 = *(v2 + 8 * v4 + 32);
        }

        v9 = v8;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v11 = OBJC_IVAR___APPCPromotedContent_metaData;
        swift_beginAccess();
        if (*&v9[v11])
        {

          v13 = sub_1C1AFB0F8(v12);

          v14 = *v5;
          if (*v5)
          {
            v15 = v3;
            v16 = v6;
            v17 = v5;
            v18 = *(v5 + 1);

            v19 = v14(v13);
            sub_1C1AC0530(v14);
            if (v19 > 1)
            {
              if (v19 == 4)
              {
                v20 = 2604;
                v5 = v17;
              }

              else
              {
                v5 = v17;
                if (v19 != 3)
                {
                  v6 = v16;
                  v3 = v15;
                  v2 = v25;
                  if (v19 != 2)
                  {
LABEL_32:
                    result = sub_1C1B958C8();
                    __break(1u);
                    return result;
                  }

                  v20 = 2602;
                  goto LABEL_24;
                }

                v20 = 2603;
              }

              v6 = v16;
              v3 = v15;
              v2 = v25;
LABEL_24:
              v21 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
              swift_beginAccess();
              v22 = *&v9[v21];
              [swift_unknownObjectRetain() discardedWithCode_];
              swift_unknownObjectRelease();

              v23 = &v9[OBJC_IVAR___APPCPromotedContent_discardReason];
              swift_beginAccess();
              *v23 = v20;
              v23[8] = 0;
              v1 = OBJC_IVAR___APPCPromotedContent_discarded;
              swift_beginAccess();
              *(v1 + v9) = 1;

              goto LABEL_6;
            }

            v5 = v17;
            v6 = v16;
            v3 = v15;
            v2 = v25;
            if (v19)
            {
              if (v19 != 1)
              {
                goto LABEL_32;
              }

              v20 = 2601;
              goto LABEL_24;
            }
          }
        }

        v1 = &v27;
        sub_1C1B954F8();
        v7 = *(v27 + 16);
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
LABEL_6:
        ++v4;
        if (v10 == v3)
        {
          return v27;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C1AFB6A4(void *a1)
{
  v2 = [a1 frequencyCapData];
  v3 = sub_1C1B3A42C([v2 relevantIdentifier]);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  result = [v2 value];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  result = [v2 duration];
  if (result < 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = objc_allocWithZone(type metadata accessor for FrequencyCapData());
  v10 = sub_1C1B391FC(v5, v7, v8);

  v11 = [a1 policyData];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1C1AEE2C0(v11);
  }

  else
  {
    v13 = 0;
  }

  v14 = [a1 rawAdType];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1C1B94D88();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = [a1 rawAdFormatType];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1C1B94D88();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = type metadata accessor for AdPolicyData();
  v25 = objc_allocWithZone(v24);
  v26 = &v25[OBJC_IVAR___APPCAdPolicyData_rawAdType];
  *v26 = v16;
  v26[1] = v18;
  v27 = &v25[OBJC_IVAR___APPCAdPolicyData_rawAdFormatType];
  *v27 = v21;
  v27[1] = v23;
  *&v25[OBJC_IVAR___APPCAdPolicyData_frequencyCapData] = v10;
  *&v25[OBJC_IVAR___APPCAdPolicyData_policyData] = v13;
  v31.receiver = v25;
  v31.super_class = v24;
  v28 = v10;
  v29 = v13;
  v30 = objc_msgSendSuper2(&v31, sel_init);

  return v30;
}

uint64_t VideoQuality.description.getter(uint64_t a1)
{
  if (a1 > 80001)
  {
    if (a1 != 80002)
    {
      if (a1 == 80003)
      {
        return 1919905648;
      }

      return 0x6E776F6E6B6E75;
    }

    return 7827308;
  }

  else
  {
    if (a1 != 80000)
    {
      if (a1 == 80001)
      {
        return 6580589;
      }

      return 0x6E776F6E6B6E75;
    }

    return 1751607656;
  }
}

uint64_t sub_1C1AFB980@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1AFBA64(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C1AFBA64(uint64_t result)
{
  if ((result - 80000) >= 4 && result != 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1AFBA88()
{
  result = qword_1EBF088B0;
  if (!qword_1EBF088B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF088B0);
  }

  return result;
}

unint64_t sub_1C1AFBAEC()
{
  result = qword_1EBF088B8;
  if (!qword_1EBF088B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF088B8);
  }

  return result;
}

uint64_t sub_1C1AFBB40(double a1)
{
  if (a1 >= 2200.0)
  {
    v1 = 80000;
  }

  else
  {
    v1 = 0;
  }

  if (a1 < 2200.0)
  {
    v2 = 80001;
  }

  else
  {
    v2 = v1;
  }

  if (a1 < 1200.0)
  {
    v2 = 80002;
  }

  if (a1 >= 600.0)
  {
    return v2;
  }

  else
  {
    return 80003;
  }
}

uint64_t APContentData.promotedContentUnfilledReason.getter()
{
  result = sub_1C1B87B74([v0 serverUnfilledReason]);
  if (v2)
  {
    return 1049;
  }

  return result;
}

uint64_t sub_1C1AFBC08()
{
  result = sub_1C1B87B74([*v0 serverUnfilledReason]);
  if (v2)
  {
    return 1049;
  }

  return result;
}

unint64_t sub_1C1AFBC84()
{
  result = qword_1EBF088C0;
  if (!qword_1EBF088C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF088C0);
  }

  return result;
}

uint64_t sub_1C1AFBCD8()
{
  sub_1C1B95958();
  MEMORY[0x1C6907960](5442);
  return sub_1C1B959A8();
}

uint64_t sub_1C1AFBD44()
{
  sub_1C1B95958();
  MEMORY[0x1C6907960](5442);
  return sub_1C1B959A8();
}

uint64_t PromotableContent.hasSuitableRepresentation(type:size:placeholderIdentifier:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, double a5, double a6)
{
  sub_1C1B95138();
  sub_1C1AC53E4();
  v11 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C1B9C9C0;
  v13 = [v6 identifier];
  v14 = sub_1C1B94D88();
  v16 = v15;

  v17 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v18 = sub_1C1AA5E7C();
  v19 = v18;
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  *(v12 + 96) = v17;
  *(v12 + 104) = v18;
  if (a3)
  {
    v20 = a2;
  }

  else
  {
    v20 = 1701736270;
  }

  if (a3)
  {
    v21 = a3;
  }

  else
  {
    v21 = 0xE400000000000000;
  }

  *(v12 + 64) = v18;
  *(v12 + 72) = v20;
  *(v12 + 80) = v21;
  v22 = v6;

  v23 = PlacementType.stringValue.getter(a1);
  *(v12 + 136) = v17;
  *(v12 + 144) = v19;
  *(v12 + 112) = v23;
  *(v12 + 120) = v24;
  v25 = MEMORY[0x1E69E7DE0];
  *(v12 + 176) = MEMORY[0x1E69E7DE0];
  v26 = sub_1C1AFC370();
  *(v12 + 184) = v26;
  *(v12 + 152) = a5;
  *(v12 + 216) = v25;
  *(v12 + 224) = v26;
  *(v12 + 192) = a6;
  sub_1C1B94BA8();

  v27 = a1;
  if (PlacementType.isSuitableReplacement(for:)(a1, [v6 adType]))
  {
    return sub_1C1AFC3C4(a4, a5, a6);
  }

  sub_1C1B95138();
  v42 = sub_1C1B95298();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C1B9D2F0;
  v30 = [v6 identifier];
  v31 = v20;
  v32 = sub_1C1B94D88();
  v33 = v21;
  v35 = v34;

  v36 = MEMORY[0x1E69E6158];
  *(v29 + 56) = MEMORY[0x1E69E6158];
  *(v29 + 64) = v19;
  *(v29 + 32) = v32;
  *(v29 + 40) = v35;
  v37 = PlacementType.stringValue.getter(v27);
  *(v29 + 96) = v36;
  *(v29 + 104) = v19;
  *(v29 + 72) = v37;
  *(v29 + 80) = v38;
  v39 = PlacementType.stringValue.getter([v22 &selRef_context + 1]);
  *(v29 + 136) = v36;
  *(v29 + 144) = v19;
  *(v29 + 112) = v39;
  *(v29 + 120) = v40;
  *(v29 + 176) = v36;
  *(v29 + 184) = v19;
  *(v29 + 152) = v31;
  *(v29 + 160) = v33;

  sub_1C1B94BA8();

  return 0;
}

unint64_t sub_1C1AFC370()
{
  result = qword_1EDE6C888;
  if (!qword_1EDE6C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C888);
  }

  return result;
}

uint64_t sub_1C1AFC3C4(unint64_t a1, double a2, double a3)
{
  v7 = v3;
  v11 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v60 - v13;
  v15 = &selRef_hash;
  if ([v3 serverUnfilledReason] != 200)
  {
LABEL_4:
    v17 = [v3 representations];
    sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
    a1 = sub_1C1B94EC8();

    if (a1 >> 62)
    {
      if (sub_1C1B953A8())
      {
        goto LABEL_6;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1C6907490](0, a1);
        goto LABEL_9;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v18 = *(a1 + 32);
        swift_unknownObjectRetain();
LABEL_9:

LABEL_46:
        [v7 serverUnfilledReason];
        return v18;
      }

      __break(1u);
LABEL_50:
      if (!sub_1C1B953A8())
      {
        goto LABEL_51;
      }

LABEL_34:
      if ((v17 & 0xC000000000000001) != 0)
      {
        goto LABEL_91;
      }

      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v17 + 32);
        swift_unknownObjectRetain();
        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_93;
    }

    v18 = 0;
    goto LABEL_46;
  }

  v16 = [v3 error];
  if (v16)
  {

    goto LABEL_4;
  }

  v19 = [v3 adType];
  if (v19 > 3)
  {
    if (v19 <= 5)
    {
      if (v19 != 4)
      {
LABEL_31:
        if (v19 != 5)
        {
          goto LABEL_119;
        }

        goto LABEL_32;
      }
    }

    else if (v19 != 6)
    {
      if (v19 != 7)
      {
        if (v19 == 8)
        {
          sub_1C1B95128();
          sub_1C1AC53E4();
          v20 = sub_1C1B95298();
          sub_1C1B94BA8();

          return 0;
        }

        goto LABEL_119;
      }

      goto LABEL_32;
    }

    v25 = [v3 representations];
    sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
    v7 = sub_1C1B94EC8();

    if (v7 >> 62)
    {
      v19 = sub_1C1B953A8();
      if (!v19)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_99;
      }
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      goto LABEL_95;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_42:
      v18 = *(v7 + 32);
      swift_unknownObjectRetain();
      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (v19 >= 3)
  {
    if (v19 != 3)
    {
      goto LABEL_119;
    }

    v4 = &selRef_hash;
    v14 = [v3 representations];
    v17 = sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
    v15 = sub_1C1B94EC8();

    if (!(v15 >> 62))
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_105:

        goto LABEL_106;
      }

LABEL_20:
      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C6907490](0, v15);
      }

      else
      {
        if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_109;
        }

        v21 = *(v15 + 32);
        swift_unknownObjectRetain();
      }

      v64 = &unk_1F415F4B8;
      v22 = swift_dynamicCastObjCProtocolConditional();
      swift_unknownObjectRelease();
      if (v22)
      {
        v23 = [v7 v4[23]];
        v24 = sub_1C1B94EC8();

        v18 = sub_1C1AFD12C(v24, a1);
LABEL_43:

        return v18;
      }

LABEL_106:
      sub_1C1B95128();
      sub_1C1AC53E4();
      v58 = sub_1C1B95298();
      sub_1C1B94BA8();

      return 0;
    }

LABEL_104:
    if (!sub_1C1B953A8())
    {
      goto LABEL_105;
    }

    goto LABEL_20;
  }

LABEL_32:
  v5 = &selRef_hash;
  v4 = [v7 representations];
  v15 = sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
  v17 = sub_1C1B94EC8();

  if (v17 >> 62)
  {
    goto LABEL_50;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_51:

  do
  {
    v28 = [v7 *(v5 + 184)];
    v4 = sub_1C1B94EC8();

    v17 = sub_1C1AFDB5C(v4, a2, a3);

    if (v17 >> 62)
    {
LABEL_93:
      v5 = sub_1C1B953A8();
      if (!v5)
      {
LABEL_94:

        sub_1C1B95138();
        sub_1C1AC53E4();
        v52 = sub_1C1B95298();
        sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1C1B98E60;
        v54 = [v7 identifier];
        v55 = sub_1C1B94D88();
        v57 = v56;

        *(v53 + 56) = MEMORY[0x1E69E6158];
        *(v53 + 64) = sub_1C1AA5E7C();
        *(v53 + 32) = v55;
        *(v53 + 40) = v57;
        sub_1C1B94BA8();

        return 0;
      }
    }

    else
    {
      v5 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_94;
      }
    }

    v6 = v17 & 0xC000000000000001;
    v62 = v15;
    if ((v17 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x1C6907490](0, v17);
    }

    else
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v29 = *(v17 + 32);
      swift_unknownObjectRetain();
    }

    v61 = a1;
    if (v5 == 1)
    {
LABEL_58:
      v30 = v29;
LABEL_59:
      v5 = sub_1C1AF5F58(v17);

      if (v5)
      {
        if ([v7 isOutstreamVideoAd])
        {
          LODWORD(v63) = sub_1C1B95108();
          sub_1C1AC53E4();
          a1 = sub_1C1B95298();
          sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
          v6 = swift_allocObject();
          *(v6 + 16) = xmmword_1C1B9AF30;
          v31 = [v7 identifier];
          v32 = sub_1C1B94D88();
          v34 = v33;

          *(v6 + 56) = MEMORY[0x1E69E6158];
          v15 = sub_1C1AA5E7C();
          *(v6 + 64) = v15;
          *(v6 + 32) = v32;
          *(v6 + 40) = v34;
          v35 = [v7 representations];
          v17 = sub_1C1B94EC8();

          if (!(v17 >> 62))
          {
            v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v19)
            {
LABEL_63:
              if ((v17 & 0xC000000000000001) != 0)
              {
                MEMORY[0x1C6907490](0, v17);
LABEL_66:
                v37 = a1;

                type metadata accessor for BannerRepresentation();
                v38 = swift_dynamicCastClass();
                if (v38)
                {
                  v39 = *(v38 + OBJC_IVAR___APPCBannerRepresentation_outstreamVideoInfo);
                  v40 = v39;
                  swift_unknownObjectRelease();
                  if (v39)
                  {
                    sub_1C1AC5430(v40 + OBJC_IVAR___APPCOutstreamVideoInfo_videoAssetURL, v14);

                    v41 = sub_1C1B944A8();
                    v42 = *(v41 - 8);
                    if ((*(v42 + 48))(v14, 1, v41) != 1)
                    {
                      v60 = sub_1C1B94468();
                      v49 = v48;
                      (*(v42 + 8))(v14, v41);
                      v50 = (v6 + 72);
                      *(v6 + 96) = MEMORY[0x1E69E6158];
                      *(v6 + 104) = v15;
                      if (v49)
                      {
                        v51 = v61;
                        *v50 = v60;
LABEL_113:
                        *(v6 + 80) = v49;
                        sub_1C1B94BA8();

                        if (v5 >> 62)
                        {
                          v59 = sub_1C1B95578();
                        }

                        else
                        {
                          sub_1C1B95898();
                          v59 = v5;
                        }

                        v18 = sub_1C1AFD12C(v59, v51);

                        swift_unknownObjectRelease();
                        return v18;
                      }

LABEL_112:
                      v51 = v61;
                      *v50 = 4271950;
                      v49 = 0xE300000000000000;
                      goto LABEL_113;
                    }

                    sub_1C1AA7C8C(v14, &qword_1EBF07AC8, &qword_1C1B9CED0);
                  }
                }

                else
                {
                  swift_unknownObjectRelease();
                }

LABEL_111:
                v50 = (v6 + 72);
                *(v6 + 96) = MEMORY[0x1E69E6158];
                *(v6 + 104) = v15;
                goto LABEL_112;
              }

              if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v36 = *(v17 + 32);
                swift_unknownObjectRetain();
                goto LABEL_66;
              }

              __break(1u);
LABEL_119:
              v65 = v19;
              result = sub_1C1B958C8();
              __break(1u);
              return result;
            }

LABEL_110:
            v37 = a1;

            goto LABEL_111;
          }

LABEL_109:
          v19 = sub_1C1B953A8();
          if (v19)
          {
            goto LABEL_63;
          }

          goto LABEL_110;
        }
      }

      return v30;
    }

    v63 = v17 & 0xFFFFFFFFFFFFFF8;
    v43 = 1;
    a1 = &selRef_hash;
    while (v6)
    {
      v30 = MEMORY[0x1C6907490](v43, v17);
      v15 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_88;
      }

LABEL_79:
      [v29 adSize];
      a3 = v44;
      [v30 adSize];
      if (a3 > v45 || ([v29 adSize], a3 = v46, objc_msgSend(v30, sel_adSize), a3 > v47))
      {
        swift_unknownObjectRelease();
        ++v43;
        if (v15 == v5)
        {
          goto LABEL_58;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        v29 = v30;
        v43 = v15;
        if (v15 == v5)
        {
          goto LABEL_59;
        }
      }
    }

    if ((v43 & 0x8000000000000000) != 0)
    {
      goto LABEL_89;
    }

    if (v43 >= *(v63 + 16))
    {
      goto LABEL_90;
    }

    v30 = *(v17 + 8 * v43 + 32);
    swift_unknownObjectRetain();
    v15 = v43 + 1;
    if (!__OFADD__(v43, 1))
    {
      goto LABEL_79;
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    v4 = MEMORY[0x1C6907490](0, v17);
LABEL_37:

    type metadata accessor for ClientLayoutRepresentation();
    v26 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
  }

  while (!v26);
  v17 = [v7 *(v5 + 184)];
  v7 = sub_1C1B94EC8();

  if (v7 >> 62)
  {
    if (!sub_1C1B953A8())
    {
      goto LABEL_99;
    }

LABEL_40:
    if ((v7 & 0xC000000000000001) == 0)
    {
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      goto LABEL_103;
    }

LABEL_95:
    v18 = MEMORY[0x1C6907490](0, v7);
    goto LABEL_43;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_40;
  }

LABEL_99:

  return 0;
}

Swift::Void __swiftcall PromotableContent.tryToFillBestRepresentation(size:)(CGSize size)
{
  [v2 setBestRepresentation_];

  swift_unknownObjectRelease();
}

uint64_t sub_1C1AFD12C(unint64_t a1, void *a2)
{
  v9 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v67 - v11;
  v13 = sub_1C1B944A8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_94:
  if (!sub_1C1B953A8())
  {
    return 0;
  }

LABEL_3:
  v68 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x1C6907490](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_99;
    }

    v18 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v19 = sub_1C1B4E4EC();
  if (v19)
  {
    v20 = v19;
    if (*(v19 + 16) && (v21 = sub_1C1AA7C14(0x697463656E6E6F63, 0xEE00657079546E6FLL), (v22 & 1) != 0))
    {
      sub_1C1AAA7B8(*(v20 + 56) + 32 * v21, v76);

      if (swift_dynamicCast())
      {
        v19 = *&v75;
        goto LABEL_13;
      }
    }

    else
    {
    }

    v19 = 0;
  }

LABEL_13:
  v4 = dbl_1C1B9D310[sub_1C1B1945C(v19)];
  v2 = v18;
  v23 = sub_1C1B4E4EC();
  v24 = 0.0;
  if (v23)
  {
    v2 = v23;
    if (*(v23 + 16) && (v25 = sub_1C1AA7C14(0x74536C616E676973, 0xEE006874676E6572), (v26 & 1) != 0))
    {
      sub_1C1AAA7B8(*(v2 + 56) + 32 * v25, v76);

      if (swift_dynamicCast())
      {
        v24 = *&v75;
      }
    }

    else
    {
    }
  }

  v73 = v12;
  v74 = v18;

  v76[0] = sub_1C1B90C40(v27);
  a1 = 0;
  v28 = sub_1C1B8FF18(v76);
  v3 = v76[0];
  v5 = v24 / 100.0;
  if ((v76[0] & 0x8000000000000000) == 0 && (v76[0] & 0x4000000000000000) == 0)
  {
    v12 = *(v76[0] + 16);
    goto LABEL_22;
  }

LABEL_99:
  v28 = sub_1C1B953A8();
  v12 = v28;
LABEL_22:
  v5 = v4 * v5;
  v67 = a2;
  v69 = v17;
  if (!v12)
  {

    a2 = 0;
    LOBYTE(v17) = 1;
    v6 = 0.0;
    v4 = 0.0;
    v38 = 0.0;
    v39 = v73;
    goto LABEL_72;
  }

  v70 = v13;
  v71 = v14;
  v14 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) != 0)
  {
    a2 = MEMORY[0x1C6907490](0, v3);
  }

  else
  {
    if (!*(v3 + 16))
    {
      __break(1u);
      goto LABEL_102;
    }

    a2 = *(v3 + 32);
    swift_unknownObjectRetain();
  }

  v29 = 0;
  v13 = 0x65746172746962;
  v72 = (v3 + 32);
  v17 = MEMORY[0x1E69E63B0];
  while (1)
  {
    if (v14)
    {
      a1 = MEMORY[0x1C6907490](v29, v3);
      v30 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (v29 >= *(v3 + 16))
      {
        goto LABEL_93;
      }

      a1 = *(v3 + 8 * v29 + 32);
      swift_unknownObjectRetain();
      v30 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }
    }

    swift_getObjectType();
    v2 = a1;
    v31 = sub_1C1B4E4EC();
    if (!v31)
    {
      goto LABEL_40;
    }

    v2 = v31;
    if (!*(v31 + 16) || (v32 = sub_1C1AA7C14(0x65746172746962, 0xE700000000000000), (v33 & 1) == 0))
    {

LABEL_40:
      v28 = swift_unknownObjectRelease();
      goto LABEL_41;
    }

    sub_1C1AAA7B8(*(v2 + 56) + 32 * v32, v76);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_40;
    }

    if (v75 > v5)
    {
      break;
    }

    v28 = swift_unknownObjectRelease();
    a2 = a1;
LABEL_41:
    ++v29;
    if (v30 == v12)
    {
      goto LABEL_42;
    }
  }

  v28 = swift_unknownObjectRelease();
LABEL_42:
  LOBYTE(v17) = a2 == 0;
  v4 = 0.0;
  if (!a2)
  {
    v34 = v72;
LABEL_51:
    if (v14)
    {
      goto LABEL_82;
    }

    goto LABEL_52;
  }

  swift_getObjectType();
  v28 = sub_1C1B4E4EC();
  v34 = v72;
  if (!v28)
  {
    goto LABEL_51;
  }

  v35 = v28;
  if (!*(v28 + 16) || (v36 = sub_1C1AA7C14(0x65746172746962, 0xE700000000000000), (v37 & 1) == 0))
  {

    if (v14)
    {
      goto LABEL_82;
    }

    goto LABEL_52;
  }

  sub_1C1AAA7B8(*(v35 + 56) + 32 * v36, v76);

  v28 = swift_dynamicCast();
  if ((v28 & 1) == 0)
  {
    goto LABEL_51;
  }

  v4 = v75;
  if (v14)
  {
LABEL_82:
    v40 = MEMORY[0x1C6907490](0, v3);
    goto LABEL_54;
  }

LABEL_52:
  if (!*(v3 + 16))
  {
    goto LABEL_103;
  }

  v40 = *v34;
  swift_unknownObjectRetain();
LABEL_54:
  swift_getObjectType();
  v41 = sub_1C1B4E4EC();
  swift_unknownObjectRelease();
  v6 = 0.0;
  if (v41)
  {
    if (*(v41 + 16) && (v42 = sub_1C1AA7C14(0x65746172746962, 0xE700000000000000), (v43 & 1) != 0))
    {
      sub_1C1AAA7B8(*(v41 + 56) + 32 * v42, v76);

      if (swift_dynamicCast())
      {
        v6 = v75;
      }
    }

    else
    {
    }
  }

  v28 = (v12 - 1);
  if (__OFSUB__(v12, 1))
  {
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    MEMORY[0x1C6907490](v28, v3);
LABEL_65:

    swift_getObjectType();
    v45 = sub_1C1B4E4EC();
    swift_unknownObjectRelease();
    v38 = 0.0;
    v14 = v71;
    v39 = v73;
    if (v45)
    {
      if (*(v45 + 16))
      {
        v46 = sub_1C1AA7C14(v13, 0xE700000000000000);
        if (v47)
        {
          sub_1C1AAA7B8(*(v45 + 56) + 32 * v46, v76);

          v48 = swift_dynamicCast();
          v13 = v70;
          if (v48)
          {
            v38 = v75;
          }

LABEL_72:
          v49 = MEMORY[0x1E69E63B0];
          sub_1C1AC53E4();
          v50 = sub_1C1B95298();
          sub_1C1B95138();
          sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
          v51 = swift_allocObject();
          *(v51 + 16) = xmmword_1C1B9D2F0;
          v52 = MEMORY[0x1E69E6438];
          *(v51 + 56) = v49;
          *(v51 + 64) = v52;
          *(v51 + 32) = v5;
          *(v51 + 96) = v49;
          *(v51 + 104) = v52;
          *(v51 + 72) = v38;
          *(v51 + 136) = v49;
          *(v51 + 144) = v52;
          *(v51 + 112) = v6;
          *(v51 + 176) = v49;
          *(v51 + 184) = v52;
          *(v51 + 152) = v4;
          sub_1C1B94B98();

          if ((v17 & 1) == 0)
          {
            swift_getObjectType();
            v53 = sub_1C1B4E4EC();
            if (v53)
            {
              v54 = v53;
              if (*(v53 + 16))
              {
                v55 = sub_1C1AA7C14(0x4C52557465737361, 0xE800000000000000);
                if (v56)
                {
                  sub_1C1AAA7B8(*(v54 + 56) + 32 * v55, v76);

                  v57 = swift_dynamicCast();
                  (*(v14 + 56))(v39, v57 ^ 1u, 1, v13);
                  if ((*(v14 + 48))(v39, 1, v13) == 1)
                  {
                    swift_unknownObjectRelease();
LABEL_80:
                    sub_1C1AA7C8C(v39, &qword_1EBF07AC8, &qword_1C1B9CED0);
                    return a2;
                  }

                  v58 = v69;
                  (*(v14 + 32))(v69, v39, v13);
                  v59 = sub_1C1B4E4EC();
                  if (v59)
                  {
                    v60 = v59;
                    if (!*(v59 + 16) || (v61 = sub_1C1AA7C14(0x6E6F697461727564, 0xE800000000000000), (v62 & 1) == 0))
                    {

                      goto LABEL_91;
                    }

                    sub_1C1AAA7B8(*(v60 + 56) + 32 * v61, v76);

                    if (swift_dynamicCast())
                    {
                      v63 = v75;
                      [a2 adSize];
                      sub_1C1AFE5B4(v58, v4, v63, v64, v65);
LABEL_91:
                      swift_unknownObjectRelease();
                      (*(v14 + 8))(v58, v13);
                      return a2;
                    }
                  }

                  (*(v14 + 8))(v58, v13);
                  swift_unknownObjectRelease();
                  return a2;
                }
              }
            }
          }

          swift_unknownObjectRelease();
          (*(v14 + 56))(v39, 1, 1, v13);
          goto LABEL_80;
        }
      }
    }

    v13 = v70;
    goto LABEL_72;
  }

  if (v14)
  {
    goto LABEL_104;
  }

  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v28 < *(v3 + 16))
  {
    v44 = v34[v28];
    swift_unknownObjectRetain();
    goto LABEL_65;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C1AFDB5C(unint64_t a1, double a2, double a3)
{
  v4 = v3;
  v7 = a1;
  v29 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_17:
    v8 = sub_1C1B953A8();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v10 = v7 & 0xC000000000000001;
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
      v26 = v8;
      v27 = v7 & 0xC000000000000001;
      while (1)
      {
        if (v10)
        {
          v12 = MEMORY[0x1C6907490](v9, v7);
          v13 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v9 >= *(v11 + 16))
          {
            __break(1u);
            goto LABEL_17;
          }

          v12 = *(v7 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          v13 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v18 = v29;
            if ((v29 & 0x8000000000000000) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_23;
          }
        }

        v28 = v12;
        if (sub_1C1AFDE38(&v28, v4, a2, a3))
        {
          sub_1C1B954F8();
          v14 = v11;
          v15 = v7;
          v16 = v4;
          v17 = *(v29 + 16);
          sub_1C1B95528();
          v4 = v16;
          v7 = v15;
          v11 = v14;
          sub_1C1B95538();
          sub_1C1B95508();
          v8 = v26;
          v10 = v27;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v9;
        if (v13 == v8)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  if ((v18 & 0x4000000000000000) != 0)
  {
LABEL_23:
    if (sub_1C1B953A8())
    {
      return v18;
    }

    goto LABEL_21;
  }

  if (!*(v18 + 16))
  {
LABEL_21:
    sub_1C1B95138();
    sub_1C1AC53E4();
    v19 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C1B98E60;
    v21 = [v4 identifier];
    v22 = sub_1C1B94D88();
    v24 = v23;

    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 64) = sub_1C1AA5E7C();
    *(v20 + 32) = v22;
    *(v20 + 40) = v24;
    sub_1C1B94BA8();
  }

  return v18;
}

BOOL sub_1C1AFDE38(void **a1, void *a2, double a3, double a4)
{
  v7 = *a1;
  sub_1C1B95138();
  sub_1C1AC53E4();
  v8 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C1B9C9C0;
  v10 = MEMORY[0x1E69E7DE0];
  *(v9 + 56) = MEMORY[0x1E69E7DE0];
  v11 = sub_1C1AFC370();
  *(v9 + 64) = v11;
  *(v9 + 32) = a3;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = a4;
  [v7 adSize];
  *(v9 + 136) = v10;
  *(v9 + 144) = v11;
  *(v9 + 112) = v12;
  [v7 adSize];
  *(v9 + 176) = v10;
  *(v9 + 184) = v11;
  *(v9 + 152) = v13;
  v14 = [a2 identifier];
  v15 = sub_1C1B94D88();
  v17 = v16;

  *(v9 + 216) = MEMORY[0x1E69E6158];
  *(v9 + 224) = sub_1C1AA5E7C();
  *(v9 + 192) = v15;
  *(v9 + 200) = v17;
  sub_1C1B94BA8();

  [v7 adSize];
  if (v18 > a3)
  {
    return 0;
  }

  [v7 adSize];
  return v20 <= a4;
}

BOOL sub_1C1AFE010(void **a1, void **a2)
{
  v5 = sub_1C1B945F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *a2;
  swift_getObjectType();
  v12 = sub_1C1B4E4EC();
  if (v12)
  {
    v13 = v12;
    if (!*(v12 + 16))
    {
      goto LABEL_10;
    }

    v14 = sub_1C1AA7C14(0x65746172746962, 0xE700000000000000);
    if ((v15 & 1) == 0)
    {
      goto LABEL_10;
    }

    sub_1C1AAA7B8(*(v13 + 56) + 32 * v14, v51);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_11;
    }

    v16 = v50;
    swift_getObjectType();
    v17 = sub_1C1B4E4EC();
    if (!v17)
    {
      goto LABEL_11;
    }

    v18 = v17;
    if (!*(v17 + 16) || (v19 = sub_1C1AA7C14(0x65746172746962, 0xE700000000000000), (v20 & 1) == 0))
    {
LABEL_10:

      goto LABEL_11;
    }

    sub_1C1AAA7B8(*(v18 + 56) + 32 * v19, v51);

    if (swift_dynamicCast())
    {
      return v16 < v50;
    }
  }

LABEL_11:
  v22 = sub_1C1B4E4EC();
  if (v22)
  {
    v23 = v22;
    if (*(v22 + 16) && (v24 = sub_1C1AA7C14(0x65746172746962, 0xE700000000000000), (v25 & 1) != 0))
    {
      sub_1C1AAA7B8(*(v23 + 56) + 32 * v24, v51);

      if (swift_dynamicCast())
      {
        if (qword_1EDE6C4E0 != -1)
        {
          swift_once();
        }

        v26 = sub_1C1B94BE8();
        sub_1C1AB4454(v26, qword_1EDE6D058);
        swift_unknownObjectRetain();
        v27 = sub_1C1B94BC8();
        v28 = sub_1C1B95128();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v49 = v2;
          v31 = v30;
          v51[0] = v30;
          *v29 = 136446210;
          v32 = [v10 id];
          sub_1C1B945D8();

          sub_1C1AFE7F8();
          v33 = sub_1C1B95858();
          v35 = v34;
          (*(v6 + 8))(v9, v5);
          v36 = sub_1C1AC7650(v33, v35, v51);

          *(v29 + 4) = v36;
          _os_log_impl(&dword_1C1AA2000, v27, v28, "Representation [%{public}s]: No valid bitrate.", v29, 0xCu);
          sub_1C1AA86F8(v31);
          MEMORY[0x1C6908230](v31, -1, -1);
          MEMORY[0x1C6908230](v29, -1, -1);
        }

        v37 = sub_1C1B94D78();
        APSimulateCrash();

        return 1;
      }
    }

    else
    {
    }
  }

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v38 = sub_1C1B94BE8();
  sub_1C1AB4454(v38, qword_1EDE6D058);
  swift_unknownObjectRetain();
  v39 = sub_1C1B94BC8();
  v40 = sub_1C1B95128();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v49 = v2;
    v43 = v42;
    v51[0] = v42;
    *v41 = 136446210;
    v44 = [v11 id];
    sub_1C1B945D8();

    sub_1C1AFE7F8();
    v45 = sub_1C1B95858();
    v47 = v46;
    (*(v6 + 8))(v9, v5);
    v48 = sub_1C1AC7650(v45, v47, v51);

    *(v41 + 4) = v48;
    _os_log_impl(&dword_1C1AA2000, v39, v40, "Representation [%{public}s]: No valid bitrate.", v41, 0xCu);
    sub_1C1AA86F8(v43);
    MEMORY[0x1C6908230](v43, -1, -1);
    MEMORY[0x1C6908230](v41, -1, -1);
  }

  return 0;
}

uint64_t sub_1C1AFE5B4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  if (![v5 mediaMetricHelper] || (sub_1C1AC1F08(&qword_1EBF088D0, &qword_1C1B9D308), sub_1C1AC1F08(&qword_1EBF088D8, &qword_1C1BA46E0), (swift_dynamicCast() & 1) == 0))
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    goto LABEL_9;
  }

  if (!*(&v24 + 1))
  {
LABEL_9:
    sub_1C1AA7C8C(&v23, &qword_1EBF088C8, &qword_1C1B9D300);
    sub_1C1B95128();
    sub_1C1AC53E4();
    v17 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C1B98E60;
    v19 = [v6 identifier];
    v20 = sub_1C1B94D88();
    v22 = v21;

    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1C1AA5E7C();
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    sub_1C1B94BA8();
  }

  sub_1C1AC0580(&v23, v26);
  v12 = sub_1C1AFBB40(a4 * a5 * a2 * 0.000000953674316);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  v15 = *sub_1C1AAABE0(v26, v26[3]);
  sub_1C1B18484(a1, v14, a3);
  return sub_1C1AA86F8(v26);
}

unint64_t sub_1C1AFE7F8()
{
  result = qword_1EDE6B830;
  if (!qword_1EDE6B830)
  {
    sub_1C1B945F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B830);
  }

  return result;
}

PromotedContent::ActionResult_optional __swiftcall ActionResult.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C1B955F8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ActionResult.rawValue.getter()
{
  v1 = 0x73736563637573;
  if (*v0 != 1)
  {
    v1 = 0x64656C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C6C65636E6163;
  }
}

uint64_t sub_1C1AFE908(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x73736563637573;
  if (v2 != 1)
  {
    v4 = 0x64656C696166;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656C6C65636E6163;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0xE700000000000000;
  v8 = 0x73736563637573;
  if (*a2 != 1)
  {
    v8 = 0x64656C696166;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C6C65636E6163;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C1B95888();
  }

  return v11 & 1;
}

unint64_t sub_1C1AFEA08()
{
  result = qword_1EBF088E0;
  if (!qword_1EBF088E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF088E0);
  }

  return result;
}

uint64_t sub_1C1AFEA5C()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1AFEB00()
{
  *v0;
  *v0;
  sub_1C1B94DE8();
}

uint64_t sub_1C1AFEB90()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

void sub_1C1AFEC3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xE700000000000000;
  v5 = 0x73736563637573;
  if (v2 != 1)
  {
    v5 = 0x64656C696166;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C6C65636E6163;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1C1AFECAC(unint64_t result)
{
  if (result >= 2)
  {
    v1 = result;
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v2 = sub_1C1B94BE8();
    sub_1C1AB4454(v2, qword_1EDE6D058);
    v3 = sub_1C1B94BC8();
    v4 = sub_1C1B95118();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_1C1AA2000, v3, v4, "Unable to determine APPrivacyMarkerType for APPrivacyMarkerType of type: %lu.", v5, 0xCu);
      MEMORY[0x1C6908230](v5, -1, -1);
    }

    return 0;
  }

  return result;
}

unint64_t sub_1C1AFEDB4()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0xD000000000000019;
  }

  *v0;
  return result;
}

uint64_t sub_1C1AFEDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000019 && 0x80000001C1BA8C10 == a2;
  if (v5 || (sub_1C1B95888() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001C1BA8C30 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C1B95888();

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

uint64_t sub_1C1AFEED0(uint64_t a1)
{
  v2 = sub_1C1AFF138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AFEF0C(uint64_t a1)
{
  v2 = sub_1C1AFF138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientStyle.encode(to:)(void *a1)
{
  v4 = sub_1C1AC1F08(&qword_1EBF088E8, &qword_1C1B9D430);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AFF138();

  sub_1C1B95A18();
  v14 = v9;
  v13 = 0;
  sub_1C1AC1F08(&qword_1EBF088F0, &qword_1C1B9D438);
  sub_1C1AFF430(&qword_1EDE6A6F8, sub_1C1AFF18C);
  sub_1C1B95808();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_1C1B95808();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1C1AFF138()
{
  result = qword_1EDE6B270;
  if (!qword_1EDE6B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B270);
  }

  return result;
}

unint64_t sub_1C1AFF18C()
{
  result = qword_1EDE6B280;
  if (!qword_1EDE6B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B280);
  }

  return result;
}

uint64_t ClientStyle.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C1AC1F08(&qword_1EBF088F8, &qword_1C1B9D440);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AFF138();
  sub_1C1B95A08();
  if (v2)
  {
    return sub_1C1AA86F8(a1);
  }

  v15 = a2;
  sub_1C1AC1F08(&qword_1EBF088F0, &qword_1C1B9D438);
  v16 = 0;
  sub_1C1AFF430(&qword_1EDE6A6F0, sub_1C1AFF4A8);
  sub_1C1B956F8();
  v11 = v17;
  v16 = 1;
  sub_1C1B956F8();
  (*(v6 + 8))(v9, v5);
  v12 = v17;
  v13 = v15;
  *v15 = v11;
  v13[1] = v12;

  sub_1C1AA86F8(a1);
}

uint64_t sub_1C1AFF430(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF088F0, &qword_1C1B9D438);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1AFF4A8()
{
  result = qword_1EDE6B278;
  if (!qword_1EDE6B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B278);
  }

  return result;
}

uint64_t sub_1C1AFF52C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C1AFF574(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C1AFF5D4()
{
  result = qword_1EBF08900[0];
  if (!qword_1EBF08900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBF08900);
  }

  return result;
}

unint64_t sub_1C1AFF62C()
{
  result = qword_1EDE6B260;
  if (!qword_1EDE6B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B260);
  }

  return result;
}

unint64_t sub_1C1AFF684()
{
  result = qword_1EDE6B268;
  if (!qword_1EDE6B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B268);
  }

  return result;
}

uint64_t sub_1C1AFF728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for TelemetryPipelineTransformer.AppstoreAdData();
  v11 = *(v10 + 36);
  v12 = sub_1C1B94588();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  v14 = &a6[*(v10 + 40)];
  *v14 = a4;
  *(v14 + 1) = a5;
  return result;
}

uint64_t sub_1C1AFF7C8()
{
  v1 = *v0;
  if (v0[17])
  {
    v2 = v0[17];
  }

  else
  {
    v3 = *(v1 + 80);
    v4 = *(*(v1 + 88) + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = type metadata accessor for TelemetryPipelineTransformer.AppstoreAdData();
    swift_getTupleTypeMetadata2();
    v7 = sub_1C1B94F18();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v2 = sub_1C1B20B18(v7, AssociatedTypeWitness, v6, AssociatedConformanceWitness);

    v9 = v0[17];
    v0[17] = v2;
  }

  return v2;
}

uint64_t sub_1C1AFF8FC(uint64_t a1)
{
  v2 = *(v1 + 136);
  *(v1 + 136) = a1;
}

uint64_t sub_1C1AFF90C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 24) = a1;
  v6 = *v3;
  v7 = sub_1C1B94818();
  *(v4 + 48) = v7;
  v8 = *(v7 - 8);
  *(v4 + 56) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  v10 = sub_1C1B947B8();
  *(v4 + 72) = v10;
  v11 = *(v10 - 8);
  *(v4 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  v13 = *(*(sub_1C1B94588() - 8) + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = *(v6 + 80);
  v14 = *(v6 + 88);
  *(v4 + 112) = v14;
  *(v4 + 120) = type metadata accessor for TelemetryPipelineTransformer.AppstoreAdData();
  v15 = *(*(sub_1C1B952D8() - 8) + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 144) = AssociatedTypeWitness;
  v17 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  v18 = sub_1C1B949F8();
  *(v4 + 160) = v18;
  v19 = *(v18 - 8);
  *(v4 + 168) = v19;
  v20 = *(v19 + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 217) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1C1AFFB98, 0, 0);
}

uint64_t sub_1C1AFFB98()
{
  v1 = *(v0 + 217);
  v2 = *(v0 + 40);
  v3 = v2[5];
  v4 = v2[6];
  sub_1C1AAABE0(v2 + 2, v3);
  *(v0 + 216) = v1;
  v5 = *(v4 + 24);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  *v7 = v0;
  v7[1] = sub_1C1AFFCE0;
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);

  return v11(v9, v8, v0 + 216, v3, v4);
}

uint64_t sub_1C1AFFCE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v7 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v5 = sub_1C1B002A0;
  }

  else
  {
    v5 = sub_1C1AFFDF4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C1AFFDF4()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[13];
  sub_1C1B01524(MEMORY[0x1E69E7CC0]);
  sub_1C1B949E8();

  if (sub_1C1B94F58())
  {
    v4 = 0;
    v41 = v0[25] + 32;
    v42 = v0[5];
    v40 = v0[15] - 8;
    v38 = (v0[21] + 16);
    v39 = (v0[7] + 8);
    v37 = (v0[10] + 8);
    do
    {
      v5 = v0[25];
      v6 = v0[13];
      v7 = sub_1C1B94F38();
      sub_1C1B94EF8();
      if (v7)
      {
        v8 = *(v41 + 8 * v4);
        swift_unknownObjectRetain();
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v22 = v0[25];
        v23 = v0[13];
        v8 = sub_1C1B95488();
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      v55 = v0[25];
      v51 = v0[23];
      v49 = v0[22];
      v50 = v0[20];
      v10 = v0[17];
      v45 = v0[18];
      v46 = v0[19];
      v11 = v0[16];
      v44 = v0[15];
      v13 = v0[13];
      v12 = v0[14];
      v14 = v0[12];
      v52 = v0[11];
      v53 = v0[9];
      v47 = v0[8];
      v48 = v0[6];
      v43 = v0[5];
      v0[2] = v8;
      v54 = v9;
      sub_1C1B95478();
      v56 = v4;
      v15 = sub_1C1B94898();
      v17 = v16;
      sub_1C1B948B8();
      v18 = sub_1C1B948A8();
      sub_1C1AFF728(v15, v17, v14, v18, v19, v11);
      (*(*v40 + 56))(v11, 0, 1, v44);
      v57 = sub_1C1AFF7C8();
      swift_getAssociatedConformanceWitness();
      sub_1C1B94CF8();
      sub_1C1B94D18();
      v20 = v42[17];
      v42[17] = v57;

      sub_1C1B94898();
      sub_1C1B94808();
      sub_1C1B947F8();
      (*v39)(v47, v48);
      sub_1C1B948A8();
      (*v38)(v49, v51, v50);
      sub_1C1AA7D00(MEMORY[0x1E69E7CC0]);
      sub_1C1B947A8();
      v21 = v42[11];
      sub_1C1AAABE0(v42 + 7, v42[10]);
      sub_1C1B016A4(&qword_1EBF08A10, MEMORY[0x1E6989D60]);
      sub_1C1B94738();
      swift_unknownObjectRelease();
      (*v37)(v52, v53);
      v4 = v56 + 1;
    }

    while (v54 != sub_1C1B94F58());
  }

  v24 = v0[25];
  v25 = v0[22];
  v26 = v0[23];
  v27 = v0[20];
  v28 = v0[21];
  v29 = v0[19];
  v30 = v0[16];
  v32 = v0[11];
  v31 = v0[12];
  v33 = v0[8];

  (*(v28 + 8))(v26, v27);

  v34 = v0[1];
  v35 = v0[25];

  return v34(v35);
}

uint64_t sub_1C1B002A0()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  v4 = v0[16];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[8];

  v8 = v0[1];
  v9 = v0[26];

  return v8();
}

uint64_t sub_1C1B00354(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v88 = a2;
  v87 = a1;
  v4 = *v2;
  v5 = sub_1C1B94818();
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1B94868();
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1C1B94A18();
  v78 = *(v84 - 8);
  v11 = *(v78 + 64);
  v12 = MEMORY[0x1EEE9AC00](v84);
  v77 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v67 - v14;
  v15 = sub_1C1B94588();
  v80 = *(v15 - 8);
  v81 = v15;
  v16 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v79 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + 80);
  v19 = *(v4 + 88);
  v20 = type metadata accessor for TelemetryPipelineTransformer.AppstoreAdData();
  v86 = sub_1C1B952D8();
  v21 = *(v86 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v86);
  v83 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v67 - v26;
  v28 = *(v20 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v85 = &v67 - v30;
  sub_1C1AFF7C8();
  v31 = *(v19 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = v87;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v82 = AssociatedTypeWitness;
  sub_1C1B94D08();

  if ((*(v28 + 48))(v27, 1, v20) == 1)
  {
    (*(v21 + 8))(v27, v86);
  }

  else
  {
    v67 = AssociatedConformanceWitness;
    v69 = v21;
    v35 = v88;
    v68 = v28;
    v36 = *(v28 + 32);
    v37 = v85;
    v36(v85, v27, v20);
    v38 = v2[16];
    sub_1C1AAABE0(v2 + 12, v2[15]);
    v39 = v79;
    sub_1C1B94578();
    v40 = *(v20 + 36);
    sub_1C1B94528();
    v42 = v41;
    (*(v80 + 8))(v39, v81);
    v43 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v44 = [v43 initWithDouble_];
    sub_1C1B949B8();

    v45 = v37;
    if (v35 != 4)
    {
      v81 = v3;
      sub_1C1B01524(MEMORY[0x1E69E7CC0]);
      v46 = v73;
      sub_1C1B94A08();
      v47 = sub_1C1B94958();
      v48 = v84;
      if (v47)
      {
        sub_1C1B01524(MEMORY[0x1E69E7CC0]);
        v49 = v77;
        sub_1C1B94A08();
        v50 = v78;
        (*(v78 + 8))(v46, v48);
        (*(v50 + 32))(v46, v49, v48);
      }

      v51 = *v37;
      v52 = v37[1];

      v53 = v70;
      sub_1C1B94808();
      sub_1C1B947F8();
      (*(v71 + 8))(v53, v72);
      v54 = (v37 + *(v20 + 40));
      v55 = *v54;
      v56 = v54[1];
      v57 = v78;
      (*(v78 + 16))(v77, v46, v48);

      sub_1C1AA7D00(MEMORY[0x1E69E7CC0]);
      v58 = v74;
      sub_1C1B94858();
      v3 = v81;
      v59 = v81[11];
      sub_1C1AAABE0(v81 + 7, v81[10]);
      sub_1C1B016A4(&qword_1EBF08A08, MEMORY[0x1E6989DB8]);
      v60 = v46;
      v61 = v76;
      sub_1C1B94738();
      (*(v75 + 8))(v58, v61);
      (*(v57 + 8))(v60, v84);
      v45 = v85;
    }

    v89 = sub_1C1AFF7C8();
    sub_1C1B94CF8();
    v62 = v83;
    v33 = v87;
    sub_1C1B94CD8();
    (*(v69 + 8))(v62, v86);
    v63 = v3[17];
    v3[17] = v89;

    (*(v68 + 8))(v45, v20);
  }

  v64 = v3[5];
  v65 = v3[6];
  sub_1C1AAABE0(v3 + 2, v64);
  return (*(v65 + 32))(v33, v88, v64, v65);
}

uint64_t sub_1C1B00B68()
{
  v1 = *v0;
  v58 = v0 + 7;
  v57 = sub_1C1B94818();
  v2 = *(v57 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1C1B94868();
  v5 = *(v55 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v54 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 88);
  v43[1] = *(v1 + 80);
  v62 = type metadata accessor for TelemetryPipelineTransformer.AppstoreAdData();
  v9 = *(v62 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v52 = v43 - v11;
  v61 = sub_1C1B94A18();
  v12 = *(v61 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v61);
  v51 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v43 - v16;
  sub_1C1B01524(MEMORY[0x1E69E7CC0]);
  v60 = v17;
  sub_1C1B94A08();
  v63 = v0;
  result = sub_1C1AFF7C8();
  v19 = 0;
  v43[0] = *(v8 + 8);
  v20 = *(result + 64);
  v45 = result + 64;
  v59 = result;
  v21 = 1 << *(result + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v49 = (v2 + 8);
  v50 = v9 + 16;
  v53 = v9;
  v48 = v9 + 8;
  v44 = v12;
  v46 = (v5 + 8);
  v47 = (v12 + 16);
  if ((v22 & v20) != 0)
  {
    do
    {
      v25 = v19;
LABEL_9:
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v27 = v52;
      v28 = v53;
      v29 = v62;
      (*(v53 + 16))(v52, *(v59 + 56) + *(v53 + 72) * (v26 | (v25 << 6)), v62);
      v30 = v27[1];
      v65 = *v27;

      v31 = v56;
      sub_1C1B94808();
      v64 = sub_1C1B947F8();
      (*v49)(v31, v57);
      v32 = (v27 + *(v29 + 40));
      v33 = *v32;
      v34 = v32[1];
      v35 = *(v28 + 8);

      v35(v27, v29);
      (*v47)(v51, v60, v61);
      v36 = v54;
      sub_1C1B94858();
      v37 = v63[11];
      sub_1C1AAABE0(v58, v63[10]);
      sub_1C1B016A4(&qword_1EBF08A08, MEMORY[0x1E6989DB8]);
      v38 = v55;
      sub_1C1B94738();
      result = (*v46)(v36, v38);
    }

    while (v23);
  }

  while (1)
  {
    v25 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v39 = v63;
      v40 = v63[5];
      v41 = v63[6];
      sub_1C1AAABE0(v63 + 2, v40);
      (*(v41 + 40))(v40, v41);
      v66 = sub_1C1AFF7C8();
      sub_1C1B94CF8();
      sub_1C1B94CE8();
      v42 = v39[17];
      v39[17] = v66;

      return (*(v44 + 8))(v60, v61);
    }

    v23 = *(v45 + 8 * v25);
    ++v19;
    if (v23)
    {
      v19 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1C1B01170()
{
  sub_1C1AA86F8(v0 + 2);
  sub_1C1AA86F8(v0 + 7);
  sub_1C1AA86F8(v0 + 12);
  v1 = v0[17];

  return v0;
}

uint64_t sub_1C1B011A8()
{
  sub_1C1B01170();

  return MEMORY[0x1EEE6BDC0](v0, 144, 7);
}

void sub_1C1B011FC()
{
  sub_1C1B94588();
  if (v0 <= 0x3F)
  {
    sub_1C1B012D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C1B012D0()
{
  if (!qword_1EDE6BBC8)
  {
    v0 = sub_1C1B952D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE6BBC8);
    }
  }
}

uint64_t sub_1C1B0132C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C1B013DC;

  return sub_1C1AFF90C(a1, a2, a3);
}

uint64_t sub_1C1B013DC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_1C1B01524(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C1AC1F08(&unk_1EBF080D0, &unk_1C1B9A6A0);
    v3 = sub_1C1B955C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1B01634(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1C1AA7C14(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C1AA7E98(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_1C1B01634(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF08340, &qword_1C1B9AF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1B016A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ImageDownloader.shared.getter()
{
  if (qword_1EDE6B160 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C1B01748(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = sub_1C1B944A8();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v2[20] = *(v4 + 64);
  v2[21] = swift_task_alloc();
  v5 = *(*(sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C1B01848, v1, 0);
}

uint64_t sub_1C1B01848()
{
  v1 = v0[17];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v3 = v0[16];
  v4 = *(v1 + 112);

  v5 = sub_1C1AD8BA0(v3);
  if ((v6 & 1) == 0)
  {

LABEL_8:
    v15 = v0[21];
    v14 = v0[22];
    v17 = v0[19];
    v16 = v0[20];
    v18 = v0[17];
    v19 = v0[18];
    v20 = v0[16];
    v40 = v20;
    v21 = sub_1C1B95028();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
    v22 = *(v17 + 16);
    v0[26] = v22;
    v0[27] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v22(v15, v20, v19);
    v23 = sub_1C1B031C0();
    v24 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v25 = swift_allocObject();
    *(v25 + 2) = v18;
    *(v25 + 3) = v23;
    *(v25 + 4) = v18;
    (*(v17 + 32))(&v25[v24], v15, v19);
    swift_retain_n();
    v26 = sub_1C1B02320(0, 0, v14, &unk_1C1B9D738, v25);
    v0[28] = v26;
    swift_beginAccess();

    v27 = *(v1 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_1C1AE41E0(v26, 0, v40, isUniquelyReferenced_nonNull_native);
    *(v1 + 112) = v41;
    swift_endAccess();
    v29 = *(MEMORY[0x1E69E86A8] + 4);
    v30 = swift_task_alloc();
    v0[29] = v30;
    v31 = sub_1C1B0330C();
    v32 = sub_1C1AC1F08(&qword_1EBF08A18, &qword_1C1B9D740);
    *v30 = v0;
    v30[1] = sub_1C1B01D9C;
    v33 = MEMORY[0x1E69E7288];
    v34 = v0 + 14;
    v35 = v26;
    v36 = v31;
    goto LABEL_9;
  }

  v7 = *(v2 + 56) + 16 * v5;
  v8 = *v7;
  v0[23] = *v7;
  v9 = *(v7 + 8);
  sub_1C1ADBD90(v8, v9);

  if (v9)
  {
    v11 = v0[21];
    v10 = v0[22];

    v12 = v0[1];

    return v12(v8);
  }

  v37 = *(MEMORY[0x1E69E86A8] + 4);
  v38 = swift_task_alloc();
  v0[24] = v38;
  v39 = sub_1C1B0330C();
  v32 = sub_1C1AC1F08(&qword_1EBF08A18, &qword_1C1B9D740);
  *v38 = v0;
  v38[1] = sub_1C1B01BF0;
  v33 = MEMORY[0x1E69E7288];
  v34 = v0 + 15;
  v35 = v8;
  v36 = v39;
LABEL_9:

  return MEMORY[0x1EEE6DA10](v34, v35, v36, v32, v33);
}

uint64_t sub_1C1B01BF0()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_1C1B01FC0;
  }

  else
  {
    v6 = sub_1C1B01D1C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1C1B01D1C()
{
  sub_1C1AD4AEC(*(v0 + 184), 0);
  v1 = *(v0 + 120);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_1C1B01D9C()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_1C1B02038;
  }

  else
  {
    v6 = sub_1C1B01EC8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1C1B01EC8()
{
  v1 = v0[28];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];
  swift_beginAccess();
  v5 = v4;
  v6 = *(v3 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  sub_1C1AE41E0(v4, 1, v2, isUniquelyReferenced_nonNull_native);
  *(v3 + 112) = v12;
  swift_endAccess();

  v9 = v0[21];
  v8 = v0[22];

  v10 = v0[1];

  return v10(v5);
}

uint64_t sub_1C1B01FC0()
{
  sub_1C1AD4AEC(*(v0 + 184), 0);
  v1 = *(v0 + 200);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C1B02038()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 168);
  v5 = *(v0 + 136);
  (*(v0 + 208))(v4, *(v0 + 128), *(v0 + 144));
  swift_beginAccess();
  sub_1C1AD2DC8(0, 255, v4);
  swift_endAccess();
  swift_willThrow();

  v6 = *(v0 + 240);
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1C1B02110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a4;
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1C1B021B0;

  return sub_1C1B02B10(a5);
}

uint64_t sub_1C1B021B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 24);
    *(v4 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1C1B022FC, v9, 0);
  }
}

uint64_t sub_1C1B02320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1C1B03588(a3, v24 - v10);
  v12 = sub_1C1B95028();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C1AA7C8C(v11, &qword_1EBF08560, &qword_1C1B9AF90);
  }

  else
  {
    sub_1C1B95018();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1C1B94FC8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_1C1B94DD8() + 32;
      sub_1C1B0330C();

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1C1AA7C8C(a3, &qword_1EBF08560, &qword_1C1B9AF90);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C1AA7C8C(a3, &qword_1EBF08560, &qword_1C1B9AF90);
  sub_1C1B0330C();
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1C1B025C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1C1B03588(a3, v24 - v10);
  v12 = sub_1C1B95028();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C1AA7C8C(v11, &qword_1EBF08560, &qword_1C1B9AF90);
  }

  else
  {
    sub_1C1B95018();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1C1B94FC8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1C1B94DD8() + 32;

      sub_1C1AC1F08(&qword_1EBF098F0, &qword_1C1B9D838);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1C1AA7C8C(a3, &qword_1EBF08560, &qword_1C1B9AF90);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C1AA7C8C(a3, &qword_1EBF08560, &qword_1C1B9AF90);
  sub_1C1AC1F08(&qword_1EBF098F0, &qword_1C1B9D838);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1C1B02874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1C1B03588(a3, v24 - v10);
  v12 = sub_1C1B95028();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C1AA7C8C(v11, &qword_1EBF08560, &qword_1C1B9AF90);
  }

  else
  {
    sub_1C1B95018();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1C1B94FC8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1C1B94DD8() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1C1AA7C8C(a3, &qword_1EBF08560, &qword_1C1B9AF90);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C1AA7C8C(a3, &qword_1EBF08560, &qword_1C1B9AF90);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1C1B02B10(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C1B02B30, v1, 0);
}

uint64_t sub_1C1B02B30()
{
  v0[4] = [objc_opt_self() sharedSession];
  v1 = *(MEMORY[0x1E6969EC8] + 4);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1C1B02BF4;
  v3 = v0[2];

  return MEMORY[0x1EEDC6268](v3, 0);
}

uint64_t sub_1C1B02BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 40);
  v11 = *v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  *(v5 + 72) = v3;

  if (v3)
  {
    v7 = *(v5 + 24);
    v8 = sub_1C1B030E4;
  }

  else
  {
    v9 = *(v5 + 24);

    v8 = sub_1C1B02D1C;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C1B02D1C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1C1AF5DAC(v2, v1);
  v4 = sub_1C1B944C8();
  v5 = [v3 initWithData_];

  sub_1C1AE4A00(v2, v1);
  if (v5)
  {
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);

    sub_1C1AE4A00(v7, v6);
    v8 = *(v0 + 8);

    return v8(v5);
  }

  else
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    v11 = qword_1EDE6C4E0;
    if (v10)
    {
      v12 = v10;
      v13 = *(v0 + 64);
      if (v11 == -1)
      {
        v14 = v13;
      }

      else
      {
        swift_once();
        v14 = *(v0 + 64);
      }

      v15 = sub_1C1B94BE8();
      sub_1C1AB4454(v15, qword_1EDE6D058);
      v16 = v14;
      v17 = sub_1C1B94BC8();
      v18 = sub_1C1B95128();

      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 64);
      if (v19)
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        *(v21 + 4) = v12;
        *v22 = v12;
        v23 = v20;
        _os_log_impl(&dword_1C1AA2000, v17, v18, "Failed to download image with response %@.", v21, 0xCu);
        sub_1C1AA7C8C(v22, &qword_1EBF08A28, &qword_1C1B9D830);
        MEMORY[0x1C6908230](v22, -1, -1);
        MEMORY[0x1C6908230](v21, -1, -1);

        v17 = *(v0 + 64);
      }

      else
      {
      }
    }

    else
    {
      if (qword_1EDE6C4E0 != -1)
      {
        swift_once();
      }

      v24 = *(v0 + 64);
      v25 = sub_1C1B94BE8();
      sub_1C1AB4454(v25, qword_1EDE6D058);
      v26 = v24;
      v17 = sub_1C1B94BC8();
      v27 = sub_1C1B95128();

      if (os_log_type_enabled(v17, v27))
      {
        v28 = *(v0 + 64);
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        *(v29 + 4) = v28;
        *v30 = v28;
        v31 = v28;
        _os_log_impl(&dword_1C1AA2000, v17, v27, "Failed to download image with response %@.", v29, 0xCu);
        sub_1C1AA7C8C(v30, &qword_1EBF08A28, &qword_1C1B9D830);
        MEMORY[0x1C6908230](v30, -1, -1);
        MEMORY[0x1C6908230](v29, -1, -1);
      }
    }

    v32 = *(v0 + 56);
    v33 = *(v0 + 64);
    v34 = *(v0 + 48);

    sub_1C1B03534();
    swift_allocError();
    swift_willThrow();

    sub_1C1AE4A00(v34, v32);
    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_1C1B030E4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t ImageDownloader.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ImageDownloader.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1C1B031C0()
{
  result = qword_1EDE6B158;
  if (!qword_1EDE6B158)
  {
    type metadata accessor for ImageDownloader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B158);
  }

  return result;
}

uint64_t sub_1C1B03214(uint64_t a1)
{
  v4 = *(sub_1C1B944A8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C1AB9A98;

  return sub_1C1B02110(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_1C1B0330C()
{
  result = qword_1EDE6A630;
  if (!qword_1EDE6A630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE6A630);
  }

  return result;
}

uint64_t dispatch thunk of ImageDownloader.image(from:)(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C1AEE19C;

  return v8(a1);
}

uint64_t sub_1C1B0349C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C1B034E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C1B03534()
{
  result = qword_1EBF08A20;
  if (!qword_1EBF08A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08A20);
  }

  return result;
}

uint64_t sub_1C1B03588(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C1B0360C()
{
  result = qword_1EBF08A30;
  if (!qword_1EBF08A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08A30);
  }

  return result;
}

uint64_t NativeRepresentation.articleID.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCNativeRepresentation_articleID);
  v2 = *(v0 + OBJC_IVAR___APPCNativeRepresentation_articleID + 8);

  return v1;
}

uint64_t NativeRepresentation.articleTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCNativeRepresentation_articleTitle);
  v2 = *(v0 + OBJC_IVAR___APPCNativeRepresentation_articleTitle + 8);

  return v1;
}

id sub_1C1B036FC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = sub_1C1B94D78();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t NativeRepresentation.advertiserName.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCNativeRepresentation_advertiserName);
  v2 = *(v0 + OBJC_IVAR___APPCNativeRepresentation_advertiserName + 8);

  return v1;
}

uint64_t NativeRepresentation.campaignData.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCNativeRepresentation_campaignData);
  v2 = *(v0 + OBJC_IVAR___APPCNativeRepresentation_campaignData + 8);

  return v1;
}

uint64_t sub_1C1B037F8()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B038DC()
{
  *v0;
  *v0;
  *v0;
  sub_1C1B94DE8();
}

uint64_t sub_1C1B039AC()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B03A8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C1B04A94();
  *a2 = result;
  return result;
}

void sub_1C1B03ABC(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000044;
  v3 = 0x49656C6369747261;
  v4 = 0xEE00656D614E7265;
  v5 = 0x7369747265766461;
  if (*v1 != 2)
  {
    v5 = 0x6E676961706D6163;
    v4 = 0xEC00000061746144;
  }

  if (*v1)
  {
    v3 = 0x54656C6369747261;
    v2 = 0xEC000000656C7469;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1C1B03B5C()
{
  v1 = 0x49656C6369747261;
  v2 = 0x7369747265766461;
  if (*v0 != 2)
  {
    v2 = 0x6E676961706D6163;
  }

  if (*v0)
  {
    v1 = 0x54656C6369747261;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C1B03BF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1B04A94();
  *a1 = result;
  return result;
}

uint64_t sub_1C1B03C20(uint64_t a1)
{
  v2 = sub_1C1B046E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B03C5C(uint64_t a1)
{
  v2 = sub_1C1B046E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1C1B03C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15)
{
  v16 = v15;
  v45 = a7;
  v46 = a8;
  v49 = a3;
  v50 = a4;
  v47 = a1;
  v48 = a2;
  v51 = a15;
  v21 = sub_1C1B945F8();
  v22 = *(v21 - 8);
  v23 = v22[8];
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    v26 = a5;
  }

  else
  {
    v26 = 0;
  }

  v27 = 0xE000000000000000;
  if (a6)
  {
    v28 = a6;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  v29 = &v16[OBJC_IVAR___APPCNativeRepresentation_articleID];
  *v29 = v26;
  *(v29 + 1) = v28;
  v30 = &v16[OBJC_IVAR___APPCNativeRepresentation_articleTitle];
  *v30 = v45;
  *(v30 + 1) = v46;
  v31 = &v16[OBJC_IVAR___APPCNativeRepresentation_advertiserName];
  *v31 = a11;
  *(v31 + 1) = a12;
  if (a14)
  {
    v32 = a13;
  }

  else
  {
    v32 = 0;
  }

  if (a14)
  {
    v27 = a14;
  }

  v33 = &v16[OBJC_IVAR___APPCNativeRepresentation_campaignData];
  *v33 = v32;
  *(v33 + 1) = v27;
  v34 = v22[2];
  v35 = v47;
  v34(v25, v47, v21);
  v36 = sub_1C1B945A8();
  v37 = &v16[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v37 = v36;
  v37[1] = v38;
  v34(&v16[OBJC_IVAR___APPCContentRepresentation_id], v25, v21);
  *&v16[OBJC_IVAR___APPCContentRepresentation_adType] = v48;
  *&v16[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = v49;
  *&v16[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = v50;
  *&v16[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
  v39 = &v16[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v39 = a9;
  v39[1] = a10;
  *&v16[OBJC_IVAR___APPCContentRepresentation_tapAction] = 0;
  *&v16[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = v51;
  v40 = type metadata accessor for ContentRepresentation();
  v52.receiver = v16;
  v52.super_class = v40;
  v41 = objc_msgSendSuper2(&v52, sel_init);
  v42 = v22[1];
  v42(v35, v21);
  v42(v25, v21);
  return v41;
}

void *sub_1C1B040F8(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF08A60, &qword_1C1B9DAB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27[-1] - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B046E8();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for NativeRepresentation();
    v12 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v13 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v27[0]) = 0;
    v11 = sub_1C1B95698();
    v15 = (v1 + OBJC_IVAR___APPCNativeRepresentation_articleID);
    *v15 = v11;
    v15[1] = v16;
    LOBYTE(v27[0]) = 1;
    v17 = sub_1C1B95638();
    v18 = (v1 + OBJC_IVAR___APPCNativeRepresentation_articleTitle);
    *v18 = v17;
    v18[1] = v19;
    LOBYTE(v27[0]) = 2;
    v20 = sub_1C1B95638();
    v21 = (v1 + OBJC_IVAR___APPCNativeRepresentation_advertiserName);
    *v21 = v20;
    v21[1] = v22;
    LOBYTE(v27[0]) = 3;
    v23 = sub_1C1B95698();
    v24 = (v1 + OBJC_IVAR___APPCNativeRepresentation_campaignData);
    *v24 = v23;
    v24[1] = v25;
    sub_1C1B95628();
    v3 = ContentRepresentation.init(from:)(v27);
    (*(v6 + 8))(v9, v5);
    sub_1C1AA86F8(a1);
  }

  return v3;
}

uint64_t sub_1C1B0449C(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF08A38, &unk_1C1B9D900);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B046E8();
  sub_1C1B95A18();
  v11 = *(v3 + OBJC_IVAR___APPCNativeRepresentation_articleID);
  v12 = *(v3 + OBJC_IVAR___APPCNativeRepresentation_articleID + 8);
  LOBYTE(v16[0]) = 0;
  sub_1C1B957A8();
  if (!v2)
  {
    *v16 = *(v3 + OBJC_IVAR___APPCNativeRepresentation_articleTitle);
    v17 = 1;
    sub_1C1AC1F08(&qword_1EBF07AB8, &qword_1C1B98D00);
    sub_1C1AC344C();
    sub_1C1B95808();
    *v16 = *(v3 + OBJC_IVAR___APPCNativeRepresentation_advertiserName);
    v17 = 2;
    sub_1C1B95808();
    v13 = *(v3 + OBJC_IVAR___APPCNativeRepresentation_campaignData);
    v14 = *(v3 + OBJC_IVAR___APPCNativeRepresentation_campaignData + 8);
    LOBYTE(v16[0]) = 3;
    sub_1C1B957A8();
    sub_1C1B95738();
    sub_1C1B4FA4C(v16);
    sub_1C1AA86F8(v16);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1C1B046E8()
{
  result = qword_1EBF08A40;
  if (!qword_1EBF08A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08A40);
  }

  return result;
}

uint64_t sub_1C1B0479C()
{
  v1 = *(v0 + OBJC_IVAR___APPCNativeRepresentation_articleID + 8);

  v2 = *(v0 + OBJC_IVAR___APPCNativeRepresentation_articleTitle + 8);

  v3 = *(v0 + OBJC_IVAR___APPCNativeRepresentation_advertiserName + 8);

  v4 = *(v0 + OBJC_IVAR___APPCNativeRepresentation_campaignData + 8);
}

id NativeRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NativeRepresentation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NativeRepresentation()
{
  result = qword_1EDE6C568;
  if (!qword_1EDE6C568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C1B04990()
{
  result = qword_1EBF08A48;
  if (!qword_1EBF08A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08A48);
  }

  return result;
}

unint64_t sub_1C1B049E8()
{
  result = qword_1EBF08A50;
  if (!qword_1EBF08A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08A50);
  }

  return result;
}

unint64_t sub_1C1B04A40()
{
  result = qword_1EBF08A58;
  if (!qword_1EBF08A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08A58);
  }

  return result;
}

uint64_t sub_1C1B04A94()
{
  v0 = sub_1C1B955F8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

void sub_1C1B04B00(void *a1)
{
  v200 = sub_1C1B944A8();
  v2 = *(v200 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v200);
  v188 = &v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v187 = &v158 - v6;
  v7 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v190 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v191 = &v158 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v189 = &v158 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v158 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v158 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v158 - v21;
  v23 = type metadata accessor for ClientLayoutElement();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v158 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1C1B945F8();
  v196 = *(v28 - 8);
  v29 = v196[8];
  v30 = MEMORY[0x1EEE9AC00](v28);
  v195 = &v158 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v197 = &v158 - v32;
  objc_opt_self();
  v201 = swift_dynamicCastObjCClass();
  if (v201)
  {
    v33 = a1;
    v193 = sub_1C1AFB6A4(v33);
    v181 = v33;
    v34 = [v33 targetingDimensions];
    v194 = v2;
    if (v34)
    {
      sub_1C1AED82C(v34, &v204);
      v183 = v204;
      v182 = v205;
    }

    else
    {
      v183 = 0;
      v182 = 0;
    }

    v39 = v197;
    sub_1C1B945E8();
    v202 = sub_1C1B945A8();
    v203 = v40;
    v41 = v196[1];
    v185 = v196 + 1;
    v184 = v41;
    v41(v39, v28);
    v42 = [v201 elements];
    v192 = v17;
    v198 = v22;
    v186 = v28;
    v199 = v20;
    if (!v42)
    {
      v47 = MEMORY[0x1E69E7CC0];
LABEL_28:
      v52 = v201;
      v53 = [v201 button];
      if (v53)
      {
        sub_1C1B21D50(v53, &v204);
        v180 = v204;
        v179 = v205;
        v176 = v206;
        v54 = v208;
        v178 = v207;
        v55 = &v209;
      }

      else
      {
        v180 = 0;
        v179 = 0;
        v178 = 0;
        v177 = 0;
        v54 = 1;
        v55 = &v208;
      }

      v55[-16].receiver = v54;
      v56 = [v52 localizedHeadlines];
      if (v56)
      {
        v57 = v56;
        sub_1C1AA576C(0, &qword_1EDE6A638, 0x1E698A078);
        v58 = sub_1C1B94EC8();

        sub_1C1B5C04C(v58, &v204);
        v174 = v204;
      }

      else
      {
        v174 = 0;
      }

      v59 = v181;
      v60 = [v181 tapAction];
      if (v60)
      {
        v61 = v60;
        v175 = _s15PromotedContent9TapActionC04makecD04withACSo05APTapD0C_tFZ_0(v60);
      }

      else
      {
        v175 = 0;
      }

      v62 = [v52 defaultStyle];
      if (v62)
      {
        sub_1C1AFAC60(v62, &v204);
        v173 = v204;
        v172 = v205;
      }

      else
      {
        v173 = 0;
        v172 = 0;
      }

      v63 = v59;
      v64 = [v52 identifier];
      sub_1C1B945D8();

      v65 = [v52 placementType];
      if ((v65 - 1) > 6)
      {
        v171 = 0;
      }

      else
      {
        v171 = qword_1C1B9DAC0[(v65 - 1)];
      }

      v66 = [v52 desiredPosition];
      if (v66 == 1101)
      {
        v67 = 1101;
      }

      else
      {
        v67 = 0;
      }

      if (v66 == 1102)
      {
        v67 = 1102;
      }

      v170 = v67;
      v169 = sub_1C1B5B708([v52 privacyMarkerPosition]);
      [v52 size];
      v69 = v68;
      v70 = [v52 headline];
      if (v70)
      {
        v71 = v70;
        v168 = sub_1C1B94D88();
        v167 = v72;
      }

      else
      {
        v168 = 0;
        v167 = 0;
      }

      v73 = [v52 accessibleHeadline];
      if (v73)
      {
        v74 = v73;
        v165 = sub_1C1B94D88();
        v164 = v75;
      }

      else
      {
        v165 = 0;
        v164 = 0;
      }

      v76 = [v52 adCopy];
      if (v76)
      {
        v77 = v76;
        v163 = sub_1C1B94D88();
        v162 = v78;
      }

      else
      {
        v163 = 0;
        v162 = 0;
      }

      v79 = [v52 accessibleAdCopy];
      if (v79)
      {
        v80 = v79;
        v161 = sub_1C1B94D88();
        v160 = v81;
      }

      else
      {
        v161 = 0;
        v160 = 0;
      }

      v82 = [v52 sponsor];
      if (v82)
      {
        v83 = v82;
        v159 = sub_1C1B94D88();
        v85 = v84;
      }

      else
      {
        v159 = 0;
        v85 = 0;
      }

      v86 = [v52 adFormatType];
      v87 = [v52 sponsoredByAssetURL];
      if (v87)
      {
        v88 = v87;
        sub_1C1B94488();

        v89 = 0;
      }

      else
      {
        v89 = 1;
      }

      v90 = *(v194 + 56);
      v91 = 1;
      v92 = v200;
      v90(v22, v89, 1, v200);
      v93 = [v201 sponsoredByAssetURLForDarkMode];
      if (v93)
      {
        v94 = v93;
        sub_1C1B94488();

        v92 = v200;
        v91 = 0;
      }

      v95 = v20;
      v96 = 1;
      v90(v95, v91, 1, v92);
      v97 = v201;
      v98 = [v201 actionURL];
      if (v98)
      {
        v99 = v98;
        sub_1C1B94488();

        v92 = v200;
        v96 = 0;
      }

      v90(v17, v96, 1, v92);
      v100 = [v97 journeyRelayCampaignId];

      if (v100)
      {
        v201 = sub_1C1B94D88();
        v166 = v101;
      }

      else
      {
        v201 = 0;
        v166 = 0;
      }

      v102 = objc_allocWithZone(type metadata accessor for ClientLayoutRepresentation());
      v103 = &v102[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_headline];
      v104 = v167;
      *v103 = v168;
      v103[1] = v104;
      v105 = &v102[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityHeadline];
      v106 = v164;
      *v105 = v165;
      v105[1] = v106;
      v107 = &v102[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_adCopy];
      v108 = v162;
      *v107 = v163;
      v107[1] = v108;
      v109 = &v102[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityAdCopy];
      v110 = v160;
      *v109 = v161;
      v109[1] = v110;
      v111 = &v102[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredBy];
      *v111 = v159;
      v111[1] = v85;
      *&v102[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_elements] = v47;
      *&v102[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_adFormatType] = v86;
      v112 = v198;
      sub_1C1AC5430(v198, &v102[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetURL]);
      v113 = v189;
      sub_1C1AC5430(v112, v189);
      v114 = v194;
      v115 = *(v194 + 48);
      v116 = v200;
      v117 = v115(v113, 1, v200);
      v181 = v63;
      if (v117 == 1)
      {
        v118 = v193;
        sub_1C1AC54A0(v113);
        v90(&v102[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetProxyURL], 1, 1, v116);
      }

      else
      {
        v119 = v187;
        (*(v114 + 32))(v187, v113, v116);
        v120 = objc_opt_self();
        v121 = v193;
        v122 = v114;
        v123 = sub_1C1B94478();
        v124 = sub_1C1B94D78();
        v125 = [v120 proxyURLForURL:v123 adIdentifier:v124];

        v114 = v122;
        v126 = v191;
        sub_1C1B94488();

        v116 = v200;
        (*(v122 + 8))(v119, v200);
        v90(v126, 0, 1, v116);
        sub_1C1AEF258(v126, &v102[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetProxyURL]);
      }

      v127 = v190;
      sub_1C1AC5430(v199, v190);
      if (v115(v127, 1, v116) == 1)
      {

        sub_1C1AC54A0(v127);
        v90(&v102[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetURLForDarkModeProxyURL], 1, 1, v116);
      }

      else
      {
        v128 = v188;
        (*(v114 + 32))(v188, v127, v116);
        v129 = v116;
        v130 = objc_opt_self();
        v131 = v114;
        v132 = sub_1C1B94478();
        v133 = sub_1C1B94D78();

        v134 = [v130 proxyURLForURL:v132 adIdentifier:v133];

        v135 = v191;
        sub_1C1B94488();

        (*(v131 + 8))(v128, v129);
        v90(v135, 0, 1, v129);
        sub_1C1AEF258(v135, &v102[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetURLForDarkModeProxyURL]);
      }

      v136 = v181;
      v137 = &v102[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button];
      v138 = v179;
      *v137 = v180;
      *(v137 + 1) = v138;
      v139 = v178;
      *(v137 + 2) = v176;
      *(v137 + 3) = v139;
      *(v137 + 4) = v177;
      v140 = v192;
      sub_1C1AC5430(v192, &v102[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_actionURL]);
      *&v102[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_localizedHeadlines] = v174;
      v141 = &v102[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_style];
      v142 = v172;
      *v141 = v173;
      v141[1] = v142;
      v143 = &v102[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions];
      v144 = v182;
      *v143 = v183;
      v143[1] = v144;
      v145 = &v102[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_journeyRelayCampaignID];
      v146 = v166;
      *v145 = v201;
      *(v145 + 1) = v146;
      v147 = v197;
      v148 = v196[2];
      v149 = v195;
      v150 = v186;
      v148(v197, v195, v186);
      v151 = sub_1C1B945A8();
      v152 = &v102[OBJC_IVAR___APPCContentRepresentation_identifier];
      *v152 = v151;
      v152[1] = v153;
      v148(&v102[OBJC_IVAR___APPCContentRepresentation_id], v147, v150);
      *&v102[OBJC_IVAR___APPCContentRepresentation_adType] = v171;
      *&v102[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = v170;
      *&v102[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = v169;
      *&v102[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
      v154 = &v102[OBJC_IVAR___APPCContentRepresentation_adSize];
      *v154 = v69;
      *(v154 + 1) = 0x4079000000000000;
      *&v102[OBJC_IVAR___APPCContentRepresentation_tapAction] = v175;
      v155 = v193;
      *&v102[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = v193;
      v156 = type metadata accessor for ContentRepresentation();
      v209.receiver = v102;
      v209.super_class = v156;
      objc_msgSendSuper2(&v209, sel_init);

      v157 = v184;
      v184(v147, v150);
      sub_1C1AC54A0(v140);
      sub_1C1AC54A0(v199);
      sub_1C1AC54A0(v198);
      v157(v149, v150);
      return;
    }

    v43 = v42;
    sub_1C1AA576C(0, &qword_1EDE6BB60, 0x1E698A070);
    v44 = sub_1C1B94EC8();

    if (v44 >> 62)
    {
      v45 = sub_1C1B953A8();
      if (v45)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v45)
      {
LABEL_13:
        if (v45 < 1)
        {
          __break(1u);
          return;
        }

        v46 = 0;
        v47 = MEMORY[0x1E69E7CC0];
        do
        {
          if ((v44 & 0xC000000000000001) != 0)
          {
            v48 = MEMORY[0x1C6907490](v46, v44);
          }

          else
          {
            v48 = *(v44 + 8 * v46 + 32);
          }

          v49 = v48;

          sub_1C1AF1D9C(v49, v27);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_1C1ACDE24(0, v47[2] + 1, 1, v47);
          }

          v51 = v47[2];
          v50 = v47[3];
          if (v51 >= v50 >> 1)
          {
            v47 = sub_1C1ACDE24(v50 > 1, v51 + 1, 1, v47);
          }

          ++v46;

          v47[2] = v51 + 1;
          sub_1C1B05CBC(v27, v47 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v51);
        }

        while (v45 != v46);
        goto LABEL_27;
      }
    }

    v47 = MEMORY[0x1E69E7CC0];
LABEL_27:

    v17 = v192;
    v22 = v198;
    v20 = v199;
    goto LABEL_28;
  }

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v35 = sub_1C1B94BE8();
  sub_1C1AB4454(v35, qword_1EDE6D058);
  v36 = sub_1C1B94BC8();
  v37 = sub_1C1B95128();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1C1AA2000, v36, v37, "APRepresentationData must be of type PCNativeRepresentation in order to initialize ClientLayoutRepresentation.", v38, 2u);
    MEMORY[0x1C6908230](v38, -1, -1);
  }
}

uint64_t sub_1C1B05CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientLayoutElement();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DeepLinkTapAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15PromotedContent17DeepLinkTapAction_url;
  v4 = sub_1C1B944A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C1B05D98()
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1B05DF4()
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1B05E3C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C1B955F8();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1C1B05EB4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1C1B955F8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1C1B05F0C(uint64_t a1)
{
  v2 = sub_1C1B066D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B05F48(uint64_t a1)
{
  v2 = sub_1C1B066D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id DeepLinkTapAction.__allocating_init(url:confirmedClickInterval:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC15PromotedContent17DeepLinkTapAction_url;
  v7 = sub_1C1B944A8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  *&v5[OBJC_IVAR___APPCTapAction_actionType] = 3;
  *&v5[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a2;
  v11.receiver = v5;
  v11.super_class = type metadata accessor for TapAction();
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id DeepLinkTapAction.init(url:confirmedClickInterval:)(uint64_t a1, double a2)
{
  v5 = OBJC_IVAR____TtC15PromotedContent17DeepLinkTapAction_url;
  v6 = sub_1C1B944A8();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  *&v2[OBJC_IVAR___APPCTapAction_actionType] = 3;
  *&v2[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for TapAction();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v7 + 8))(a1, v6);
  return v8;
}

void *sub_1C1B061EC(uint64_t *a1)
{
  v3 = sub_1C1B944A8();
  v21 = *(v3 - 8);
  v22 = v3;
  v4 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1AC1F08(&qword_1EBF08AA0, &qword_1C1B9DC88);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  v12 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B066D0();
  sub_1C1B95A08();
  if (v1)
  {
    v18 = v25;
    sub_1C1AA86F8(a1);
    type metadata accessor for DeepLinkTapAction();
    v15 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x30);
    v16 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v8;
    v13 = v21;
    sub_1C1AEF214(&unk_1EDE6C3A0);
    v14 = v22;
    sub_1C1B956F8();
    (*(v13 + 32))(v25 + OBJC_IVAR____TtC15PromotedContent17DeepLinkTapAction_url, v6, v14);
    sub_1C1B95628();
    sub_1C1AAD2FC(v24, v23);
    v18 = TapAction.init(from:)(v23);
    sub_1C1AA86F8(v24);
    (*(v20 + 8))(v11, v7);
    sub_1C1AA86F8(a1);
  }

  return v18;
}

uint64_t sub_1C1B06530(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF08A68, &unk_1C1B9DB00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-1] - v6;
  v8 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B066D0();
  sub_1C1B95A18();
  sub_1C1B944A8();
  sub_1C1AEF214(&unk_1EDE6C3B0);
  sub_1C1B95808();
  if (!v1)
  {
    sub_1C1B95738();
    sub_1C1B3BBE0(v11);
    sub_1C1AA86F8(v11);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1C1B066D0()
{
  result = qword_1EBF08A70;
  if (!qword_1EBF08A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08A70);
  }

  return result;
}

uint64_t sub_1C1B06784()
{
  v1 = OBJC_IVAR____TtC15PromotedContent17DeepLinkTapAction_url;
  v2 = sub_1C1B944A8();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id DeepLinkTapAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeepLinkTapAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DeepLinkTapAction()
{
  result = qword_1EBF08A78;
  if (!qword_1EBF08A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1B068E4()
{
  result = sub_1C1B944A8();
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

unint64_t sub_1C1B069B4()
{
  result = qword_1EBF08A88;
  if (!qword_1EBF08A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08A88);
  }

  return result;
}

unint64_t sub_1C1B06A0C()
{
  result = qword_1EBF08A90;
  if (!qword_1EBF08A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08A90);
  }

  return result;
}

unint64_t sub_1C1B06A64()
{
  result = qword_1EBF08A98;
  if (!qword_1EBF08A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08A98);
  }

  return result;
}

uint64_t BannerRepresentation.adTag.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCBannerRepresentation_adTag);
  v2 = *(v0 + OBJC_IVAR___APPCBannerRepresentation_adTag + 8);

  return v1;
}

void *BannerRepresentation.adamIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCBannerRepresentation_adamIdentifier);
  v2 = v1;
  return v1;
}

void *BannerRepresentation.outstreamVideoInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCBannerRepresentation_outstreamVideoInfo);
  v2 = v1;
  return v1;
}

uint64_t sub_1C1B06C14()
{
  v1 = sub_1C1AC1F08(&qword_1EBF08AA8, &qword_1C1B9DC90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v10 - v4;
  v6 = *(v0 + OBJC_IVAR___APPCBannerRepresentation_adTag + 8);
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = *(v0 + OBJC_IVAR___APPCBannerRepresentation_adTag);
  sub_1C1AB0DC4(&qword_1EBF08AB0, &qword_1EBF08AA8, &qword_1C1B9DC90);
  sub_1C1B94AF8();
  v11 = v7;
  v12 = v6;
  v10[0] = 0xD00000000000001ELL;
  v10[1] = 0x80000001C1BA8EC0;
  sub_1C1B074F4();
  if ((sub_1C1B952E8() & 1) == 0)
  {
    (*(v2 + 8))(v5, v1);
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  v11 = v7;
  v12 = v6;
  sub_1C1B07548();
  v8 = sub_1C1B94D48();
  (*(v2 + 8))(v5, v1);
  return v8 & 1;
}

uint64_t sub_1C1B06DF8@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = sub_1C1AC1F08(&qword_1EBF08AA8, &qword_1C1B9DC90);
  v2 = *(v1 - 8);
  v55 = v1;
  v56 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v52 = &v49 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v53 = &v49 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - v10;
  v63 = sub_1C1B94AC8();
  v12 = *(v63 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C1AC1F08(&qword_1EBF08B18, &qword_1C1B9DE60);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v49 - v18;
  v20 = sub_1C1B946C8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1C1AC1F08(&qword_1EBF08B20, &unk_1C1B9DE68);
  v62 = *(v59 - 8);
  v25 = *(v62 + 64);
  v26 = MEMORY[0x1EEE9AC00](v59);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v58 = &v49 - v29;
  v66 = 0x4C52556F65646976;
  v67 = 0xEA0000000000223ALL;
  v30 = sub_1C1B08844();
  MEMORY[0x1C6906690](v68, &v66, MEMORY[0x1E69E6158], v30);
  sub_1C1B94AD8();
  v31 = sub_1C1B94AE8();
  (*(*(v31 - 8) + 56))(v19, 1, 1, v31);
  sub_1C1B946B8();
  sub_1C1B08898(&qword_1EBF08B30, MEMORY[0x1E69E8250]);
  v32 = MEMORY[0x1E69E67B0];
  sub_1C1B94AB8();
  v33 = *(v12 + 8);
  v60 = v12 + 8;
  v61 = v33;
  v33(v15, v63);
  sub_1C1B088E0(v19);
  (*(v21 + 8))(v24, v20);
  v50 = v11;
  MEMORY[0x1C69066D0](v11, v32);
  v34 = sub_1C1AB0DC4(&qword_1EBF08B38, &qword_1EBF08B20, &unk_1C1B9DE68);
  v35 = v59;
  MEMORY[0x1C6906690](v28, v59, v34);
  v36 = *(v62 + 8);
  v62 += 8;
  v51 = v36;
  v36(v28, v35);
  v64 = 34;
  v65 = 0xE100000000000000;
  v49 = v30;
  MEMORY[0x1C6906690](&v66, &v64, MEMORY[0x1E69E6158], v30);
  v64 = v68[0];
  v65 = v68[1];
  sub_1C1B946A8();

  sub_1C1B946B8();
  sub_1C1AB0DC4(&qword_1EBF08AB0, &qword_1EBF08AA8, &qword_1C1B9DC90);
  v37 = v52;
  v38 = v55;
  sub_1C1B94AA8();
  v39 = v54;
  sub_1C1B94AA8();
  v40 = v53;
  v41 = v37;
  v42 = v38;
  v43 = v15;
  sub_1C1B94A98();
  v44 = *(v56 + 8);
  v44(v39, v42);
  v45 = v41;
  v44(v41, v42);
  v61(v43, v63);
  v47 = v66;
  v46 = v67;
  sub_1C1B946B8();
  v64 = v47;
  v65 = v46;
  sub_1C1B94AA8();
  sub_1C1B94AA8();

  sub_1C1B94A98();
  v44(v39, v42);
  v44(v45, v42);
  v61(v43, v63);
  v44(v40, v42);
  v44(v50, v42);
  return v51(v58, v59);
}

unint64_t sub_1C1B074F4()
{
  result = qword_1EBF08AB8;
  if (!qword_1EBF08AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08AB8);
  }

  return result;
}

unint64_t sub_1C1B07548()
{
  result = qword_1EBF08AC0;
  if (!qword_1EBF08AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08AC0);
  }

  return result;
}

uint64_t sub_1C1B075A8()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B07674()
{
  *v0;
  *v0;
  sub_1C1B94DE8();
}

uint64_t sub_1C1B0772C()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B077F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C1B0853C();
  *a2 = result;
  return result;
}

void sub_1C1B07824(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6761546461;
  v4 = 0xD000000000000011;
  v5 = 0x80000001C1BA5750;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000012;
    v5 = 0x80000001C1BA5770;
  }

  if (*v1)
  {
    v3 = 0x6E6564496D616461;
    v2 = 0xEE00726569666974;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1C1B078AC()
{
  v1 = *v0;
  v2 = 0x6761546461;
  v3 = 0xD000000000000011;
  if (v1 != 2)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0x6E6564496D616461;
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

uint64_t sub_1C1B07930@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1B0853C();
  *a1 = result;
  return result;
}

uint64_t sub_1C1B07958(uint64_t a1)
{
  v2 = sub_1C1B081DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B07994(uint64_t a1)
{
  v2 = sub_1C1B081DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C1B07B54(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF08B00, &qword_1C1B9DE58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B081DC();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for BannerRepresentation();
    v12 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v13 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v20[0]) = 0;
    v11 = sub_1C1B95638();
    v15 = (v1 + OBJC_IVAR___APPCBannerRepresentation_adTag);
    *v15 = v11;
    v15[1] = v16;
    LOBYTE(v20[0]) = 1;
    v17 = sub_1C1B95658();
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    }

    *(v1 + OBJC_IVAR___APPCBannerRepresentation_adamIdentifier) = v19;
    v21 = 2;
    sub_1C1B08588();
    sub_1C1B956F8();
    *(v1 + OBJC_IVAR___APPCBannerRepresentation_appAdTemplateType) = v20[0];
    type metadata accessor for OutstreamVideoInfo();
    v21 = 3;
    sub_1C1B08898(&qword_1EBF08B10, type metadata accessor for OutstreamVideoInfo);
    sub_1C1B95678();
    *(v1 + OBJC_IVAR___APPCBannerRepresentation_outstreamVideoInfo) = v20[0];
    sub_1C1B95628();
    v3 = ContentRepresentation.init(from:)(v20);
    (*(v6 + 8))(v9, v5);
    sub_1C1AA86F8(a1);
  }

  return v3;
}

uint64_t sub_1C1B07F44(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF08AC8, &qword_1C1B9DC98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B081DC();
  sub_1C1B95A18();
  v11 = *(v3 + OBJC_IVAR___APPCBannerRepresentation_adTag);
  v12 = *(v3 + OBJC_IVAR___APPCBannerRepresentation_adTag + 8);
  LOBYTE(v14[0]) = 0;
  sub_1C1B95748();
  if (!v2)
  {
    if (*(v3 + OBJC_IVAR___APPCBannerRepresentation_adamIdentifier))
    {
      [*(v3 + OBJC_IVAR___APPCBannerRepresentation_adamIdentifier) doubleValue];
    }

    LOBYTE(v14[0]) = 1;
    sub_1C1B95768();
    v14[0] = *(v3 + OBJC_IVAR___APPCBannerRepresentation_appAdTemplateType);
    v15 = 2;
    sub_1C1B08230();
    sub_1C1B95808();
    v14[0] = *(v3 + OBJC_IVAR___APPCBannerRepresentation_outstreamVideoInfo);
    v15 = 3;
    type metadata accessor for OutstreamVideoInfo();
    sub_1C1B08898(&qword_1EBF08AE0, type metadata accessor for OutstreamVideoInfo);
    sub_1C1B95788();
    sub_1C1B95738();
    sub_1C1B4FA4C(v14);
    sub_1C1AA86F8(v14);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1C1B081DC()
{
  result = qword_1EBF08AD0;
  if (!qword_1EBF08AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08AD0);
  }

  return result;
}

unint64_t sub_1C1B08230()
{
  result = qword_1EBF08AD8;
  if (!qword_1EBF08AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08AD8);
  }

  return result;
}

void sub_1C1B082E4()
{
  v1 = *(v0 + OBJC_IVAR___APPCBannerRepresentation_adTag + 8);

  v2 = *(v0 + OBJC_IVAR___APPCBannerRepresentation_outstreamVideoInfo);
}

id BannerRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BannerRepresentation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C1B08438()
{
  result = qword_1EBF08AE8;
  if (!qword_1EBF08AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08AE8);
  }

  return result;
}

unint64_t sub_1C1B08490()
{
  result = qword_1EBF08AF0;
  if (!qword_1EBF08AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08AF0);
  }

  return result;
}

unint64_t sub_1C1B084E8()
{
  result = qword_1EBF08AF8;
  if (!qword_1EBF08AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08AF8);
  }

  return result;
}

uint64_t sub_1C1B0853C()
{
  v0 = sub_1C1B955F8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C1B08588()
{
  result = qword_1EBF08B08;
  if (!qword_1EBF08B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08B08);
  }

  return result;
}

id sub_1C1B085DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, void *a11, void *a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v46 = a4;
  v47 = a5;
  v44 = a2;
  v45 = a3;
  v48 = a14;
  v49 = a6;
  v21 = sub_1C1B945F8();
  v22 = *(v21 - 8);
  v23 = v22[8];
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = &v15[OBJC_IVAR___APPCBannerRepresentation_adTag];
  *v26 = a7;
  *(v26 + 1) = a8;
  *&v15[OBJC_IVAR___APPCBannerRepresentation_adamIdentifier] = a12;
  v27 = sub_1C1AF1CC0(a13);
  if (v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = v27;
  }

  *&v15[OBJC_IVAR___APPCBannerRepresentation_appAdTemplateType] = v29;
  *&v15[OBJC_IVAR___APPCBannerRepresentation_outstreamVideoInfo] = a11;
  v30 = v22[2];
  v30(v25, a1, v21);
  v31 = a11;
  v32 = a12;
  v33 = sub_1C1B945A8();
  v34 = &v15[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v34 = v33;
  v34[1] = v35;
  v30(&v15[OBJC_IVAR___APPCContentRepresentation_id], v25, v21);
  v36 = v45;
  *&v15[OBJC_IVAR___APPCContentRepresentation_adType] = v44;
  *&v15[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = v36;
  v37 = v47;
  *&v15[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = v46;
  *&v15[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = v37;
  v38 = &v15[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v38 = a9;
  v38[1] = a10;
  v39 = v48;
  *&v15[OBJC_IVAR___APPCContentRepresentation_tapAction] = v49;
  *&v15[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = v39;
  v40 = type metadata accessor for ContentRepresentation();
  v50.receiver = v15;
  v50.super_class = v40;
  v41 = objc_msgSendSuper2(&v50, sel_init);
  v42 = v22[1];
  v42(a1, v21);
  v42(v25, v21);
  return v41;
}

unint64_t sub_1C1B08844()
{
  result = qword_1EBF08B28;
  if (!qword_1EBF08B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08B28);
  }

  return result;
}

uint64_t sub_1C1B08898(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1B088E0(uint64_t a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF08B18, &qword_1C1B9DE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *ClientLayoutElement.asset.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t ClientLayoutElement.caption.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ClientLayoutElement.accessibilityCaption.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ClientLayoutElement.ctaButton.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_1C1B08A14(v2, v3, v4);
}

uint64_t sub_1C1B08A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t ClientLayoutElement.actionUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ClientLayoutElement() + 36);

  return sub_1C1AC5430(v3, a1);
}

uint64_t type metadata accessor for ClientLayoutElement()
{
  result = qword_1EDE6AE68;
  if (!qword_1EDE6AE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *ClientLayoutElement.tapAction.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClientLayoutElement() + 40));
  v2 = v1;
  return v1;
}

uint64_t ClientLayoutElement.style.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ClientLayoutElement() + 44));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1C1B08B68(v4);
}

uint64_t sub_1C1B08B68(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C1B08BA8()
{
  v1 = *v0;
  v2 = 0x49746E656D656C65;
  v3 = 0x6F69746341706174;
  if (v1 != 6)
  {
    v3 = 0x656C797473;
  }

  v4 = 0x6F74747542617463;
  if (v1 != 4)
  {
    v4 = 0x72556E6F69746361;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E6F6974706163;
  if (v1 != 2)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0x7465737361;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C1B08CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B09DD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B08CC8(uint64_t a1)
{
  v2 = sub_1C1B090F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B08D04(uint64_t a1)
{
  v2 = sub_1C1B090F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientLayoutElement.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF08B40, &qword_1C1B9DE78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B090F8();
  sub_1C1B95A18();
  v11 = *v3;
  LOBYTE(v25) = 0;
  sub_1C1B95818();
  if (!v2)
  {
    v25 = v3[1];
    v30 = 1;
    type metadata accessor for ClientLayoutAsset();
    sub_1C1B098F0(&qword_1EBF08B50, type metadata accessor for ClientLayoutAsset);
    sub_1C1B95788();
    v12 = v3[2];
    v13 = v3[3];
    LOBYTE(v25) = 2;
    sub_1C1B95748();
    v14 = v3[4];
    v15 = v3[5];
    LOBYTE(v25) = 3;
    sub_1C1B95748();
    v16 = v3[7];
    v17 = v3[8];
    v18 = v3[9];
    v19 = v3[10];
    v25 = v3[6];
    v26 = v16;
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = 4;
    sub_1C1B08A14(v25, v16, v17);
    sub_1C1B0914C();
    sub_1C1B95788();
    sub_1C1B091A0(v25, v26, v27);
    v20 = type metadata accessor for ClientLayoutElement();
    v21 = v20[9];
    LOBYTE(v25) = 5;
    sub_1C1B944A8();
    sub_1C1B098F0(&unk_1EDE6C3B0, MEMORY[0x1E6968FB0]);
    sub_1C1B95788();
    v25 = *(v3 + v20[10]);
    v30 = 6;
    type metadata accessor for TapAction();
    sub_1C1B098F0(&qword_1EBF08B60, type metadata accessor for TapAction);
    sub_1C1B95788();
    v22 = (v3 + v20[11]);
    v23 = v22[1];
    v25 = *v22;
    v26 = v23;
    v30 = 7;
    sub_1C1B08B68(v25);
    sub_1C1B091E8();
    sub_1C1B95788();
    sub_1C1B0923C(v25);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1C1B090F8()
{
  result = qword_1EBF08B48;
  if (!qword_1EBF08B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08B48);
  }

  return result;
}

unint64_t sub_1C1B0914C()
{
  result = qword_1EBF08B58;
  if (!qword_1EBF08B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08B58);
  }

  return result;
}

uint64_t sub_1C1B091A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_1C1B091E8()
{
  result = qword_1EDE6B258;
  if (!qword_1EDE6B258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B258);
  }

  return result;
}

uint64_t sub_1C1B0923C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void ClientLayoutElement.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v40 - v6;
  v8 = sub_1C1AC1F08(&qword_1EBF08B68, &qword_1C1B9DE80);
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for ClientLayoutElement();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v45 = a1;
  sub_1C1AAABE0(a1, v17);
  sub_1C1B090F8();
  v18 = v11;
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(v45);
    return;
  }

  v19 = v7;
  v20 = v43;
  v21 = v44;
  LOBYTE(v46) = 0;
  v22 = v15;
  *v15 = sub_1C1B95708();
  type metadata accessor for ClientLayoutAsset();
  v49 = 1;
  sub_1C1B098F0(&qword_1EBF08B70, type metadata accessor for ClientLayoutAsset);
  sub_1C1B95678();
  *(v15 + 8) = v46;
  LOBYTE(v46) = 2;
  *(v15 + 16) = sub_1C1B95638();
  *(v15 + 24) = v23;
  LOBYTE(v46) = 3;
  v24 = sub_1C1B95638();
  v41 = 0;
  *(v15 + 32) = v24;
  *(v15 + 40) = v25;
  v49 = 4;
  sub_1C1B0989C();
  v26 = v41;
  sub_1C1B95678();
  v41 = v26;
  if (v26)
  {
    (*(v20 + 8))(v18, v21);
    v27 = 0;
    LODWORD(v15) = 0;
  }

  else
  {
    v28 = v48;
    v29 = v47;
    *(v15 + 48) = v46;
    *(v15 + 64) = v29;
    *(v15 + 80) = v28;
    sub_1C1B944A8();
    LOBYTE(v46) = 5;
    sub_1C1B098F0(&unk_1EDE6C3A0, MEMORY[0x1E6968FB0]);
    v30 = v41;
    sub_1C1B95678();
    v41 = v30;
    if (v30)
    {
      (*(v20 + 8))(v18, v21);
      LODWORD(v15) = 0;
      v27 = 1;
    }

    else
    {
      sub_1C1AEF258(v19, v15 + v12[9]);
      type metadata accessor for TapAction();
      v49 = 6;
      sub_1C1B098F0(&qword_1EBF08B80, type metadata accessor for TapAction);
      v31 = v41;
      sub_1C1B95678();
      v41 = v31;
      if (!v31)
      {
        *(v15 + v12[10]) = v46;
        v49 = 7;
        sub_1C1B09938();
        v37 = v41;
        sub_1C1B95678();
        v41 = v37;
        if (!v37)
        {
          (*(v20 + 8))(v18, v21);
          *(v15 + v12[11]) = v46;
          sub_1C1B0998C(v15, v42);
          sub_1C1AA86F8(v45);
          sub_1C1B099F0(v15);
          return;
        }

        (*(v20 + 8))(v18, v21);
        sub_1C1AA86F8(v45);

        v38 = *(v15 + 24);

        v39 = *(v15 + 40);

        v34 = 1;
        LOBYTE(v15) = 1;
        goto LABEL_14;
      }

      (*(v20 + 8))(v18, v21);
      v27 = 1;
      LODWORD(v15) = 1;
    }
  }

  sub_1C1AA86F8(v45);

  v33 = *(v22 + 24);

  v32 = *(v22 + 40);

  if ((v27 & 1) == 0)
  {
    if (v15)
    {
      sub_1C1AC54A0(v22 + v12[9]);
    }

    return;
  }

  v34 = 0;
LABEL_14:
  v35 = *(v22 + 72);
  v36 = *(v22 + 80);
  sub_1C1B091A0(*(v22 + 48), *(v22 + 56), *(v22 + 64));
  if (v15)
  {
    sub_1C1AC54A0(v22 + v12[9]);
    if ((v34 & 1) == 0)
    {
      return;
    }
  }

  else if (!v34)
  {
    return;
  }
}

unint64_t sub_1C1B0989C()
{
  result = qword_1EBF08B78;
  if (!qword_1EBF08B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08B78);
  }

  return result;
}

uint64_t sub_1C1B098F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C1B09938()
{
  result = qword_1EDE6B250;
  if (!qword_1EDE6B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B250);
  }

  return result;
}

uint64_t sub_1C1B0998C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientLayoutElement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1B099F0(uint64_t a1)
{
  v2 = type metadata accessor for ClientLayoutElement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C1B09AA4()
{
  sub_1C1B09C1C(319, &qword_1EDE6B040, type metadata accessor for ClientLayoutAsset);
  if (v0 <= 0x3F)
  {
    sub_1C1B09C70(319, &qword_1EDE6BBC8);
    if (v1 <= 0x3F)
    {
      sub_1C1B09C70(319, &qword_1EBF08B88);
      if (v2 <= 0x3F)
      {
        sub_1C1B09C1C(319, &qword_1EDE6CD38, MEMORY[0x1E6968FB0]);
        if (v3 <= 0x3F)
        {
          sub_1C1B09C1C(319, &qword_1EDE6A7A0, type metadata accessor for TapAction);
          if (v4 <= 0x3F)
          {
            sub_1C1B09C70(319, &qword_1EDE6B248);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C1B09C1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1B952D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C1B09C70(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C1B952D8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1C1B09CD0()
{
  result = qword_1EBF08B90;
  if (!qword_1EBF08B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08B90);
  }

  return result;
}

unint64_t sub_1C1B09D28()
{
  result = qword_1EBF08B98;
  if (!qword_1EBF08B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08B98);
  }

  return result;
}

unint64_t sub_1C1B09D80()
{
  result = qword_1EBF08BA0;
  if (!qword_1EBF08BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08BA0);
  }

  return result;
}

uint64_t sub_1C1B09DD4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x49746E656D656C65 && a2 == 0xE900000000000044 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7465737361 && a2 == 0xE500000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C1BA9040 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F74747542617463 && a2 == 0xE90000000000006ELL || (sub_1C1B95888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72556E6F69746361 && a2 == 0xE90000000000006CLL || (sub_1C1B95888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F69746341706174 && a2 == 0xE90000000000006ELL || (sub_1C1B95888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v5 = sub_1C1B95888();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1C1B0A094()
{
  v1 = 6579570;
  v2 = 0x6E65657267;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 1702194274;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C1B0A0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B0A718(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B0A120(uint64_t a1)
{
  v2 = sub_1C1B0A36C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B0A15C(uint64_t a1)
{
  v2 = sub_1C1B0A36C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientColor.encode(to:)(void *a1)
{
  v4 = sub_1C1AC1F08(&qword_1EBF08BC0, &qword_1C1B9E048);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-v7];
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B0A36C();
  sub_1C1B95A18();
  v15[15] = 0;
  sub_1C1B957D8();
  if (!v2)
  {
    v15[14] = 1;
    sub_1C1B957D8();
    v15[13] = 2;
    sub_1C1B957D8();
    v15[12] = 3;
    sub_1C1B957D8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1C1B0A36C()
{
  result = qword_1EBF08BC8;
  if (!qword_1EBF08BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08BC8);
  }

  return result;
}

uint64_t ClientColor.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_1C1AC1F08(&qword_1EBF08BD0, &qword_1C1B9E050);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B0A36C();
  sub_1C1B95A08();
  if (!v2)
  {
    v24 = 0;
    sub_1C1B956C8();
    v12 = v11;
    v23 = 1;
    sub_1C1B956C8();
    v14 = v13;
    v22 = 2;
    sub_1C1B956C8();
    v17 = v16;
    v21 = 3;
    sub_1C1B956C8();
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v17;
    a2[3] = v19;
  }

  return sub_1C1AA86F8(a1);
}

__n128 initializeBufferWithCopyOfBuffer for ClientColor(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_1C1B0A614()
{
  result = qword_1EBF08BD8;
  if (!qword_1EBF08BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08BD8);
  }

  return result;
}

unint64_t sub_1C1B0A66C()
{
  result = qword_1EBF08BE0;
  if (!qword_1EBF08BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08BE0);
  }

  return result;
}

unint64_t sub_1C1B0A6C4()
{
  result = qword_1EBF08BE8;
  if (!qword_1EBF08BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08BE8);
  }

  return result;
}

uint64_t sub_1C1B0A718(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t type metadata accessor for PlaceholderRequest()
{
  result = qword_1EDE6CD28;
  if (!qword_1EDE6CD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1B0A8E8()
{
  sub_1C1B945F8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_1C1B0A9A4();
      if (v2 <= 0x3F)
      {
        sub_1C1B0AA08();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C1B0A9A4()
{
  result = qword_1EDE6C880;
  if (!qword_1EDE6C880)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDE6C880);
  }

  return result;
}

unint64_t sub_1C1B0AA08()
{
  result = qword_1EDE6C4B0;
  if (!qword_1EDE6C4B0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDE6C4B0);
  }

  return result;
}

uint64_t sub_1C1B0AA64()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B0AB24()
{
  *v0;
  *v0;
  *v0;
  sub_1C1B94DE8();
}

uint64_t sub_1C1B0ABD0()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B0AC8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C1B0B94C();
  *a2 = result;
  return result;
}

void sub_1C1B0ACBC(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1684632949;
  v4 = 0xE600000000000000;
  v5 = 0x657A69536461;
  if (*v1 != 2)
  {
    v5 = 0x6465746F6D6F7270;
    v4 = 0xEF746E65746E6F43;
  }

  if (*v1)
  {
    v3 = 0x657079546461;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1C1B0AD38()
{
  v1 = 1684632949;
  v2 = 0x657A69536461;
  if (*v0 != 2)
  {
    v2 = 0x6465746F6D6F7270;
  }

  if (*v0)
  {
    v1 = 0x657079546461;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C1B0ADB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1B0B94C();
  *a1 = result;
  return result;
}

uint64_t sub_1C1B0ADD8(uint64_t a1)
{
  v2 = sub_1C1B0B630();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B0AE14(uint64_t a1)
{
  v2 = sub_1C1B0B630();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1B0AE50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1C1B945F8();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1C1AC1F08(&qword_1EBF08BF0, &qword_1C1B9E288);
  v23 = *(v27 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v22 - v8;
  v10 = type metadata accessor for PlaceholderRequest();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B0B630();
  v26 = v9;
  sub_1C1B95A08();
  if (v2)
  {
    return sub_1C1AA86F8(a1);
  }

  v15 = v13;
  v17 = v23;
  v16 = v24;
  LOBYTE(v28) = 0;
  sub_1C1B0B798(&qword_1EDE6C358, MEMORY[0x1E69695A8]);
  v18 = v25;
  sub_1C1B956F8();
  (*(v16 + 32))(v15, v18, v4);
  v29 = 1;
  sub_1C1AC1FF8();
  sub_1C1B956F8();
  *(v15 + v10[5]) = v28;
  type metadata accessor for CGSize(0);
  v29 = 2;
  sub_1C1B0B798(&unk_1EDE6BB30, type metadata accessor for CGSize);
  sub_1C1B956F8();
  *(v15 + v10[6]) = v28;
  v29 = 3;
  sub_1C1B0B684();
  sub_1C1B956F8();
  (*(v17 + 8))(v26, v27);
  v19 = v28;
  sub_1C1B0B798(&qword_1EDE6BC08, type metadata accessor for PromotedContent);
  sub_1C1B0B798(&qword_1EDE6BC10, type metadata accessor for PromotedContent);
  *(v15 + v10[7]) = v19;
  v20 = (v15 + v10[8]);
  *v20 = nullsub_2;
  v20[1] = 0;
  sub_1C1B0B6D8(v15, v22);
  sub_1C1AA86F8(a1);
  return sub_1C1B0B73C(v15);
}

uint64_t sub_1C1B0B2C4(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF08C00, &qword_1C1B9E290);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B0B630();
  sub_1C1B95A18();
  LOBYTE(v15) = 0;
  sub_1C1B945F8();
  sub_1C1B0B798(&unk_1EDE6C360, MEMORY[0x1E69695A8]);
  sub_1C1B95808();
  if (!v2)
  {
    v11 = type metadata accessor for PlaceholderRequest();
    *&v15 = *(v3 + v11[5]);
    v16 = 1;
    sub_1C1AC1FA4();
    sub_1C1B95808();
    v15 = *(v3 + v11[6]);
    v16 = 2;
    type metadata accessor for CGSize(0);
    sub_1C1B0B798(&qword_1EDE6BB40, type metadata accessor for CGSize);
    sub_1C1B95808();
    v12 = *(v3 + v11[7]);
    type metadata accessor for PromotedContent();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      swift_unknownObjectRetain();
    }

    *&v15 = v13;
    v16 = 3;
    sub_1C1B0B7E0();
    sub_1C1B95788();
  }

  return (*(v6 + 8))(v9, v5);
}

BOOL sub_1C1B0B580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1C1B945C8() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)) && (v6 = *(a3 + 24), v7 = a1 + v6, v8 = *(a1 + v6), v9 = (a2 + v6), v8 == *v9))
  {
    return *(v7 + 8) == v9[1];
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C1B0B630()
{
  result = qword_1EBF08BF8;
  if (!qword_1EBF08BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08BF8);
  }

  return result;
}

unint64_t sub_1C1B0B684()
{
  result = qword_1EDE6B810;
  if (!qword_1EDE6B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B810);
  }

  return result;
}

uint64_t sub_1C1B0B6D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1B0B73C(uint64_t a1)
{
  v2 = type metadata accessor for PlaceholderRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1B0B798(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C1B0B7E0()
{
  result = qword_1EDE6B818;
  if (!qword_1EDE6B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B818);
  }

  return result;
}

unint64_t sub_1C1B0B848()
{
  result = qword_1EBF08C08;
  if (!qword_1EBF08C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C08);
  }

  return result;
}

unint64_t sub_1C1B0B8A0()
{
  result = qword_1EBF08C10;
  if (!qword_1EBF08C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C10);
  }

  return result;
}

unint64_t sub_1C1B0B8F8()
{
  result = qword_1EBF08C18;
  if (!qword_1EBF08C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C18);
  }

  return result;
}

uint64_t sub_1C1B0B94C()
{
  v0 = sub_1C1B955F8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

PromotedContent::BannerType_optional __swiftcall BannerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C1B955F8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t BannerType.rawValue.getter()
{
  v1 = *v0;
  v2 = 7958113;
  v3 = 0x656C62756F64;
  v4 = 0x65526D756964656DLL;
  if (v1 != 3)
  {
    v4 = 0x656772616CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x647261646E617473;
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

uint64_t sub_1C1B0BA98()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B0BB78()
{
  *v0;
  *v0;
  *v0;
  sub_1C1B94DE8();
}

uint64_t sub_1C1B0BC44()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

void sub_1C1B0BD2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7958113;
  v5 = 0xE600000000000000;
  v6 = 0x656C62756F64;
  v7 = 0xEF656C676E617463;
  v8 = 0x65526D756964656DLL;
  if (v2 != 3)
  {
    v8 = 0x656772616CLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x647261646E617473;
    v3 = 0xE800000000000000;
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

uint64_t sub_1C1B0BE10@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___APPCDesiredPlacement_type);
  if (v2 >= 9)
  {
    v5 = *(v1 + OBJC_IVAR___APPCDesiredPlacement_type);
    result = sub_1C1B958C8();
    __break(1u);
  }

  else
  {
    v3 = byte_1C1B9E54A[v2];
    *a1 = *(v1 + OBJC_IVAR___APPCDesiredPlacement_count);
    *(a1 + 8) = v3;
  }

  return result;
}

id DesiredPlacement.__allocating_init(type:count:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___APPCDesiredPlacement_type] = a1;
  *&v5[OBJC_IVAR___APPCDesiredPlacement_count] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id DesiredPlacement.init(type:count:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___APPCDesiredPlacement_type] = a1;
  *&v2[OBJC_IVAR___APPCDesiredPlacement_count] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DesiredPlacement();
  return objc_msgSendSuper2(&v4, sel_init);
}

id DesiredPlacement.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DesiredPlacement.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DesiredPlacement();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s15PromotedContent20DesiredPlacementTypeO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v3 >> 5;
  if (v3 >> 5 > 3)
  {
    v9 = v5 & 0xE0;
    v11 = v9 == 192 && v2 == v4;
    v13 = v5 > 0xDF && v2 == v4;
    if (v6 != 6)
    {
      v11 = v13;
    }

    v15 = v9 == 128 && v2 == v4;
    v17 = v9 == 160 && v2 == v4;
    if (v6 == 4)
    {
      v17 = v15;
    }

    if (v3 >> 5 <= 5)
    {
      return v17;
    }

    else
    {
      return v11;
    }
  }

  else if (v3 >> 5 > 1)
  {
    v19 = (v5 & 0xE0) == 0x40 && v2 == v4;
    v21 = (v5 & 0xE0) == 0x60 && v2 == v4;
    if (v6 == 2)
    {
      return v19;
    }

    else
    {
      return v21;
    }
  }

  else if (v6)
  {
    return (v5 & 0xE0) == 0x20 && v2 == v4;
  }

  else if (v5 <= 0x1F && v2 == v4)
  {
    return sub_1C1B53CB8(v3, v5);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C1B0C14C()
{
  result = qword_1EBF08C30;
  if (!qword_1EBF08C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DesiredPlacementType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x19 && *(a1 + 9))
  {
    return (*a1 + 25);
  }

  v3 = (*(a1 + 8) & 0x18 | (*(a1 + 8) >> 5)) ^ 0x1F;
  if (v3 >= 0x18)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for DesiredPlacementType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x18)
  {
    *(result + 8) = 0;
    *result = a2 - 25;
    if (a3 >= 0x19)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x19)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 8 * (((-a2 >> 3) & 3) - 4 * a2);
    }
  }

  return result;
}

id sub_1C1B0C2B4(double a1)
{
  if ((~*&a1 & 0x7FF0000000000000) == 0 && (*&a1 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v3 = [objc_opt_self() notANumber];
  sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
  v4 = sub_1C1B95278();

  if ((v4 & 1) == 0)
  {
    return v2;
  }

  return 0;
}

uint64_t sub_1C1B0C3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x1E6959CC8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1C1AB9A98;

  return MEMORY[0x1EEDB2930](a1, a2, a3);
}

uint64_t sub_1C1B0C498()
{
  v1 = *(MEMORY[0x1E6959CD8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1C1AB9CA0;

  return MEMORY[0x1EEDB2940]();
}

uint64_t sub_1C1B0C528()
{
  v1 = *(MEMORY[0x1E6959CD0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1C1AB9CA0;

  return MEMORY[0x1EEDB2938]();
}

uint64_t sub_1C1B0C774@<X0>(char *a1@<X8>)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL;
  swift_beginAccess();
  sub_1C1AC5430(v1 + v10, v9);
  v11 = sub_1C1B944A8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1C1AC54A0(v9);
  sub_1C1B0CD88(v1, a1);
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1C1B0CFC4(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_1C1B0CACC(uint64_t a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_1C1B944A8();
  v8 = *(v7 - 8);
  (*(v8 + 32))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL;
  swift_beginAccess();
  sub_1C1B0CFC4(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1C1B0CBF4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_1C1B944A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = *a2;
  (*(v9 + 32))(v7, v12, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v14 = OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL;
  swift_beginAccess();
  sub_1C1B0CFC4(v7, v13 + v14);
  return swift_endAccess();
}

void sub_1C1B0CD88(uint64_t a1@<X0>, char *a2@<X8>)
{
  v26 = a2;
  v3 = sub_1C1B944A8();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = OBJC_IVAR___APPCVideoRepresentation_originalVideoURL;
  v12 = v4[2];
  v25 = a1;
  v12(&v25 - v9, a1 + OBJC_IVAR___APPCVideoRepresentation_originalVideoURL, v3);
  sub_1C1B94498();
  v14 = v13;
  v15 = v4[1];
  v15(v10, v3);
  if (v14)
  {
    v16 = sub_1C1B94D78();
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_opt_self();
  v18 = [v17 shouldProxyRequestToHost_];

  if (v18)
  {
    v19 = v25;
    v12(v8, v25 + v11, v3);
    v20 = sub_1C1B94478();
    v15(v8, v3);
    v21 = *(v19 + OBJC_IVAR___APPCContentRepresentation_identifier);
    v22 = *(v19 + OBJC_IVAR___APPCContentRepresentation_identifier + 8);
    v23 = sub_1C1B94D78();
    v24 = [v17 proxyURLForVideoURL:v20 adIdentifier:v23 changeScheme:1];

    sub_1C1B94488();
  }

  else
  {
    v12(v26, v25 + v11, v3);
  }
}

uint64_t sub_1C1B0CFC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*sub_1C1B0D034(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = sub_1C1B944A8();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  sub_1C1B0C774(v10);
  return sub_1C1B0D154;
}

void sub_1C1B0D154(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 48);
  if (a2)
  {
    (*(v3 + 16))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v8 = OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL;
    swift_beginAccess();
    sub_1C1B0CFC4(v5, v7 + v8);
    swift_endAccess();
    (*(v3 + 8))(v4, v6);
  }

  else
  {
    (*(v3 + 32))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v9 = OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL;
    swift_beginAccess();
    sub_1C1B0CFC4(v5, v7 + v9);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t sub_1C1B0D2CC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x657A6953656C6966;
    v7 = 0x62616E4570696B73;
    v8 = 0x65646E6172626E75;
    if (a1 != 3)
    {
      v8 = 0x65746172746962;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6572685470696B73;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x4C52556F65646976;
    v2 = 0x6E6F697461727564;
    if (a1 != 9)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x74536C616E676973;
    v4 = 0x697463656E6E6F63;
    if (a1 != 6)
    {
      v4 = 0x7A69536F65646976;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1C1B0D460(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1C1B0D2CC(*a1);
  v5 = v4;
  if (v3 == sub_1C1B0D2CC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C1B95888();
  }

  return v8 & 1;
}

uint64_t sub_1C1B0D4E8()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B0D2CC(v1);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B0D54C()
{
  sub_1C1B0D2CC(*v0);
  sub_1C1B94DE8();
}

uint64_t sub_1C1B0D5A0()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B0D2CC(v1);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B0D600@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C1B0F26C();
  *a2 = result;
  return result;
}

uint64_t sub_1C1B0D630@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1B0D2CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C1B0D678@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1B0F26C();
  *a1 = result;
  return result;
}

uint64_t sub_1C1B0D6AC(uint64_t a1)
{
  v2 = sub_1C1B0E2FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B0D6E8(uint64_t a1)
{
  v2 = sub_1C1B0E2FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1C1B0D724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = v16;
  v50 = a8;
  v51 = a2;
  v48 = a6;
  v49 = a7;
  v53 = a3;
  v54 = a16;
  v52 = a15;
  v47 = a14;
  v26 = sub_1C1B945F8();
  v27 = *(v26 - 8);
  v28 = v27[8];
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL;
  v32 = sub_1C1B944A8();
  v33 = *(v32 - 8);
  (*(v33 + 56))(&v17[v31], 1, 1, v32);
  *&v17[OBJC_IVAR___APPCVideoRepresentation_duration] = a9;
  *&v17[OBJC_IVAR___APPCVideoRepresentation_fileSize] = a5;
  (*(v33 + 16))(&v17[OBJC_IVAR___APPCVideoRepresentation_originalVideoURL], a4, v32);
  *&v17[OBJC_IVAR___APPCVideoRepresentation_skipThreshold] = a10;
  v34 = v49;
  v17[OBJC_IVAR___APPCVideoRepresentation_skipEnabled] = v48;
  v17[OBJC_IVAR___APPCVideoRepresentation_unbranded] = v34;
  *&v17[OBJC_IVAR___APPCVideoRepresentation_bitrate] = a11;
  *&v17[OBJC_IVAR___APPCVideoRepresentation_connectionType] = v50;
  v35 = &v17[OBJC_IVAR___APPCVideoRepresentation_videoSize];
  *v35 = a12;
  v35[1] = a13;
  *&v17[OBJC_IVAR___APPCVideoRepresentation_signalStrength] = v47;
  v36 = v27[2];
  v36(v30, a1, v26);
  v37 = sub_1C1B945A8();
  v38 = &v17[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v38 = v37;
  v38[1] = v39;
  v36(&v17[OBJC_IVAR___APPCContentRepresentation_id], v30, v26);
  *&v17[OBJC_IVAR___APPCContentRepresentation_adType] = v51;
  v40 = v52;
  *&v17[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = v53;
  *&v17[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = 0;
  *&v17[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
  v41 = &v17[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v41 = 0;
  v41[1] = 0;
  *&v17[OBJC_IVAR___APPCContentRepresentation_tapAction] = v40;
  *&v17[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = v54;
  v42 = type metadata accessor for ContentRepresentation();
  v55.receiver = v17;
  v55.super_class = v42;
  v43 = objc_msgSendSuper2(&v55, sel_init);
  (*(v33 + 8))(a4, v32);
  v44 = v27[1];
  v44(a1, v26);
  v44(v30, v26);
  return v43;
}

void *VideoRepresentation.init(from:)(uint64_t *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = v39 - v5;
  v6 = sub_1C1B944A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v40 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v39 - v11;
  v13 = sub_1C1AC1F08(&qword_1EBF08C38, &qword_1C1B9E588);
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v39 - v15;
  v43 = v7;
  v44 = v6;
  v19 = *(v7 + 56);
  v17 = v7 + 56;
  v18 = v19;
  v47 = v1;
  v19(v1 + OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL, 1, 1, v6);
  v21 = a1[3];
  v20 = a1[4];
  v46 = a1;
  sub_1C1AAABE0(a1, v21);
  sub_1C1B0E2FC();
  v22 = v45;
  sub_1C1B95A08();
  if (v22)
  {
    v36 = v47;
    sub_1C1AA86F8(v46);
    sub_1C1AC54A0(v36 + OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL);
    type metadata accessor for VideoRepresentation();
    v27 = *((*MEMORY[0x1E69E7D40] & *v36) + 0x30);
    v28 = *((*MEMORY[0x1E69E7D40] & *v36) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v12;
    v39[1] = v17;
    v45 = v18;
    v24 = v41;
    v25 = v42;
    LOBYTE(v48[0]) = 0;
    v26 = sub_1C1B956D8();
    v30 = v47;
    *(v47 + OBJC_IVAR___APPCVideoRepresentation_fileSize) = v26;
    LOBYTE(v48[0]) = 1;
    sub_1C1B956B8();
    *(v30 + OBJC_IVAR___APPCVideoRepresentation_skipThreshold) = v31;
    LOBYTE(v48[0]) = 2;
    *(v30 + OBJC_IVAR___APPCVideoRepresentation_skipEnabled) = sub_1C1B956A8() & 1;
    LOBYTE(v48[0]) = 3;
    *(v30 + OBJC_IVAR___APPCVideoRepresentation_unbranded) = sub_1C1B956A8() & 1;
    LOBYTE(v48[0]) = 4;
    sub_1C1B956B8();
    *(v30 + OBJC_IVAR___APPCVideoRepresentation_bitrate) = v32;
    LOBYTE(v48[0]) = 5;
    *(v30 + OBJC_IVAR___APPCVideoRepresentation_signalStrength) = sub_1C1B956E8();
    LOBYTE(v48[0]) = 6;
    *(v30 + OBJC_IVAR___APPCVideoRepresentation_connectionType) = sub_1C1B956D8();
    v49 = 7;
    sub_1C1B0E39C();
    sub_1C1B956F8();
    *(v30 + OBJC_IVAR___APPCVideoRepresentation_videoSize) = v48[0];
    LOBYTE(v48[0]) = 9;
    sub_1C1B956B8();
    *(v30 + OBJC_IVAR___APPCVideoRepresentation_duration) = v33;
    LOBYTE(v48[0]) = 10;
    v39[0] = sub_1C1AEF214(&unk_1EDE6C3A0);
    sub_1C1B956F8();
    v34 = v23;
    v35 = *(v43 + 32);
    v35(v47 + OBJC_IVAR___APPCVideoRepresentation_originalVideoURL, v34, v44);
    sub_1C1B95628();
    v36 = ContentRepresentation.init(from:)(v48);
    LOBYTE(v48[0]) = 8;
    sub_1C1B956F8();
    (*(v24 + 8))(v16, v13);
    v37 = v44;
    v35(v25, v40, v44);
    v45(v25, 0, 1, v37);
    v38 = OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL;
    swift_beginAccess();
    sub_1C1B0CFC4(v25, v36 + v38);
    swift_endAccess();
    sub_1C1AA86F8(v46);
  }

  return v36;
}

unint64_t sub_1C1B0E2FC()
{
  result = qword_1EBF08C40;
  if (!qword_1EBF08C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C40);
  }

  return result;
}

uint64_t type metadata accessor for VideoRepresentation()
{
  result = qword_1EDE6C790;
  if (!qword_1EDE6C790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C1B0E39C()
{
  result = qword_1EBF08C48;
  if (!qword_1EBF08C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C48);
  }

  return result;
}

uint64_t sub_1C1B0E3F0(void *a1)
{
  v2 = sub_1C1B944A8();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v32 - v7;
  v9 = sub_1C1AC1F08(&qword_1EBF08C50, &unk_1C1B9E590);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v32 - v12;
  v14 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B0E2FC();
  v15 = v36;
  sub_1C1B95A18();
  v16 = *(v15 + OBJC_IVAR___APPCVideoRepresentation_fileSize);
  LOBYTE(v37[0]) = 0;
  v17 = v35;
  sub_1C1B957E8();
  if (!v17)
  {
    v33 = v2;
    v18 = *(v15 + OBJC_IVAR___APPCVideoRepresentation_skipThreshold);
    LOBYTE(v37[0]) = 1;
    sub_1C1B957C8();
    v19 = *(v15 + OBJC_IVAR___APPCVideoRepresentation_skipEnabled);
    LOBYTE(v37[0]) = 2;
    sub_1C1B957B8();
    v20 = *(v15 + OBJC_IVAR___APPCVideoRepresentation_unbranded);
    LOBYTE(v37[0]) = 3;
    sub_1C1B957B8();
    v21 = *(v15 + OBJC_IVAR___APPCVideoRepresentation_bitrate);
    LOBYTE(v37[0]) = 4;
    sub_1C1B957C8();
    v22 = *(v15 + OBJC_IVAR___APPCVideoRepresentation_signalStrength);
    LOBYTE(v37[0]) = 5;
    sub_1C1B957F8();
    v23 = *(v15 + OBJC_IVAR___APPCVideoRepresentation_connectionType);
    LOBYTE(v37[0]) = 6;
    sub_1C1B957E8();
    *v37 = *(v15 + OBJC_IVAR___APPCVideoRepresentation_videoSize);
    v38 = 7;
    sub_1C1B0E90C();
    sub_1C1B95808();
    sub_1C1B0C774(v8);
    LOBYTE(v37[0]) = 8;
    v24 = sub_1C1AEF214(&unk_1EDE6C3B0);
    v35 = v8;
    v25 = v24;
    v26 = v33;
    sub_1C1B95808();
    v32[1] = v25;
    v27 = v26;
    v29 = v34;
    v28 = v35;
    v35 = *(v34 + 8);
    (v35)(v28, v27);
    v30 = *(v36 + OBJC_IVAR___APPCVideoRepresentation_duration);
    LOBYTE(v37[0]) = 9;
    sub_1C1B957C8();
    (*(v29 + 16))(v6, v36 + OBJC_IVAR___APPCVideoRepresentation_originalVideoURL, v33);
    LOBYTE(v37[0]) = 10;
    sub_1C1B95808();
    (v35)(v6, v33);
    sub_1C1B95738();
    sub_1C1B4FA4C(v37);
    sub_1C1AA86F8(v37);
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_1C1B0E90C()
{
  result = qword_1EBF08C58;
  if (!qword_1EBF08C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C58);
  }

  return result;
}

uint64_t sub_1C1B0E9C0()
{
  sub_1C1AC54A0(v0 + OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL);
  v1 = OBJC_IVAR___APPCVideoRepresentation_originalVideoURL;
  v2 = sub_1C1B944A8();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id VideoRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoRepresentation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C1B0EAF4()
{
  sub_1C1AEF0A4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1C1B944A8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for VideoRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoRepresentation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1B0EE18()
{
  result = qword_1EBF08C60;
  if (!qword_1EBF08C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C60);
  }

  return result;
}

uint64_t sub_1C1B0EE6C(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF08C88, &qword_1C1B9E7C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B0F468();
  sub_1C1B95A18();
  v12 = 0;
  sub_1C1B957C8();
  if (!v1)
  {
    v11 = 1;
    sub_1C1B957C8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1C1B0EFF4()
{
  if (*v0)
  {
    result = 0x746867696568;
  }

  else
  {
    result = 0x6874646977;
  }

  *v0;
  return result;
}

uint64_t sub_1C1B0F028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (sub_1C1B95888() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C1B95888();

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

uint64_t sub_1C1B0F0FC(uint64_t a1)
{
  v2 = sub_1C1B0F468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B0F138(uint64_t a1)
{
  v2 = sub_1C1B0F468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C1B0F174(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1B0F2B8(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_1C1B0F1A0(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1C1B0EE6C(a1);
}

unint64_t sub_1C1B0F1C0()
{
  result = qword_1EBF08C68;
  if (!qword_1EBF08C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C68);
  }

  return result;
}

unint64_t sub_1C1B0F218()
{
  result = qword_1EBF08C70;
  if (!qword_1EBF08C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C70);
  }

  return result;
}

uint64_t sub_1C1B0F26C()
{
  v0 = sub_1C1B955F8();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

double sub_1C1B0F2B8(uint64_t *a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF08C78, &qword_1C1B9E7C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11[-v5];
  v7 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B0F468();
  sub_1C1B95A08();
  v11[15] = 0;
  sub_1C1B956B8();
  v9 = v8;
  v11[14] = 1;
  sub_1C1B956B8();
  (*(v3 + 8))(v6, v2);
  sub_1C1AA86F8(a1);
  return v9;
}

unint64_t sub_1C1B0F468()
{
  result = qword_1EBF08C80;
  if (!qword_1EBF08C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C80);
  }

  return result;
}

unint64_t sub_1C1B0F4D0()
{
  result = qword_1EBF08C90;
  if (!qword_1EBF08C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C90);
  }

  return result;
}

unint64_t sub_1C1B0F528()
{
  result = qword_1EBF08C98;
  if (!qword_1EBF08C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C98);
  }

  return result;
}

unint64_t sub_1C1B0F580()
{
  result = qword_1EBF08CA0;
  if (!qword_1EBF08CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08CA0);
  }

  return result;
}

uint64_t ContentValidationPipelineTransformer.__allocating_init(readthroughSource:policyEngine:errorContentDataProvider:)(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  sub_1C1AC0580(a1, v6 + 16);
  sub_1C1AC0580(a3, v6 + 56);
  sub_1C1AC0580(a2, v6 + 96);
  return v6;
}

uint64_t ContentValidationPipelineTransformer.init(readthroughSource:policyEngine:errorContentDataProvider:)(__int128 *a1, __int128 *a2, __int128 *a3)
{
  sub_1C1AC0580(a1, v3 + 16);
  sub_1C1AC0580(a3, v3 + 56);
  sub_1C1AC0580(a2, v3 + 96);
  return v3;
}

uint64_t sub_1C1B0F6B0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = v3;
  *(v4 + 152) = a2;
  *(v4 + 160) = v5;
  *(v4 + 144) = a1;
  *(v4 + 168) = *v5;
  v7 = sub_1C1B945F8();
  *(v4 + 176) = v7;
  v8 = *(v7 - 8);
  *(v4 + 184) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 226) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1C1B0F7A8, 0, 0);
}

uint64_t sub_1C1B0F7A8()
{
  v1 = *(v0 + 226);
  v2 = *(v0 + 160);
  v3 = v2[5];
  v4 = v2[6];
  sub_1C1AAABE0(v2 + 2, v3);
  *(v0 + 224) = v1;
  v5 = *(v4 + 24);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 200) = v7;
  *v7 = v0;
  v7[1] = sub_1C1B0F8F0;
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);

  return v11(v9, v8, v0 + 224, v3, v4);
}

uint64_t sub_1C1B0F8F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v7 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v5 = sub_1C1B10214;
  }

  else
  {
    v5 = sub_1C1B0FA04;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C1B0FA04()
{
  v89 = v0;
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v85 = (v0 + 225);
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);
  v3 = sub_1C1B94BE8();
  sub_1C1AB4454(v3, qword_1EDE6D058);

  v4 = v2;
  v5 = sub_1C1B94BC8();
  v6 = sub_1C1B95138();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 208);
  if (v7)
  {
    v10 = *(v0 + 184);
    v9 = *(v0 + 192);
    v11 = *(v0 + 168);
    v81 = *(v0 + 176);
    v12 = *(v0 + 144);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v88[0] = v14;
    *v13 = 134218242;
    v15 = *(v11 + 80);
    *(v13 + 4) = sub_1C1B94F58();

    *(v13 + 12) = 2080;
    v16 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v10 + 16))(v9, v12 + v16, v81);
    v17 = sub_1C1B945A8();
    v19 = v18;
    (*(v10 + 8))(v9, v81);
    v20 = sub_1C1AC7650(v17, v19, v88);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_1C1AA2000, v5, v6, "[ContentPipelineTransformer] Validating %ld contents for context %s", v13, 0x16u);
    sub_1C1AA86F8(v14);
    MEMORY[0x1C6908230](v14, -1, -1);
    MEMORY[0x1C6908230](v13, -1, -1);
  }

  else
  {
    v21 = *(v0 + 208);
  }

  v22 = *(v0 + 208);
  v82 = *(v0 + 216);
  v23 = *(v0 + 160);
  v24 = *(v0 + 168);
  *(v0 + 225) = 4;
  v25 = v23[16];
  sub_1C1AAABE0(v23 + 12, v23[15]);
  v27 = *(v24 + 80);
  v26 = *(v24 + 88);
  *(v0 + 120) = sub_1C1B94878();
  sub_1C1B106E8();
  sub_1C1B959F8();
  v28 = sub_1C1B94FA8();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1C6906E20](v28, WitnessTable);

  *(v0 + 128) = *(v0 + 112);
  v30 = swift_task_alloc();
  v30[2] = v85;
  v30[3] = v23;
  v30[4] = v22;
  v31 = swift_task_alloc();
  v31[2] = v27;
  v31[3] = v26;
  v31[4] = sub_1C1B1073C;
  v31[5] = v30;
  v32 = v27;
  sub_1C1B95588();
  swift_getWitnessTable();
  v33 = sub_1C1B94E18();

  *(v0 + 136) = v33;
  sub_1C1B94FA8();
  swift_getWitnessTable();
  v34 = sub_1C1B950D8();
  v35 = *(v0 + 144);
  if (v34)
  {

    v36 = 1031;
    if (*v85 - 1 < 4)
    {
      v36 = 1025;
    }

    v86 = v36;
    v37 = v35;
    v38 = sub_1C1B94BC8();
    v39 = sub_1C1B95138();

    if (os_log_type_enabled(v38, v39))
    {
      v41 = *(v0 + 184);
      v40 = *(v0 + 192);
      v42 = *(v0 + 176);
      v43 = *(v0 + 144);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v88[0] = v45;
      *v44 = 136315138;
      v83 = v32;
      v46 = OBJC_IVAR___APPCBaseContext_identifier;
      swift_beginAccess();
      (*(v41 + 16))(v40, v43 + v46, v42);
      v47 = sub_1C1B945A8();
      v49 = v48;
      (*(v41 + 8))(v40, v42);
      v50 = sub_1C1AC7650(v47, v49, v88);
      v32 = v83;

      *(v44 + 4) = v50;
      _os_log_impl(&dword_1C1AA2000, v38, v39, "[ContentPipelineTransformer] Finished Validation. No contents remain for context %s", v44, 0xCu);
      sub_1C1AA86F8(v45);
      MEMORY[0x1C6908230](v45, -1, -1);
      MEMORY[0x1C6908230](v44, -1, -1);
    }

    v51 = *(v0 + 184);
    v52 = *(v0 + 192);
    v53 = *(v0 + 176);
    v54 = *(v0 + 160);
    v84 = *(v0 + 152);
    v55 = *(v0 + 144);
    v56 = sub_1C1B10674(v32, v32);
    v57 = *(v56 + 52);
    v58 = (*(v56 + 48) + 7) & 0x1FFFFFFF8;
    swift_allocObject();
    v33 = sub_1C1B94EE8();
    v59 = v54[10];
    v60 = v54[11];
    sub_1C1AAABE0(v54 + 7, v59);
    v61 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v51 + 16))(v52, v55 + v61, v53);
    v62 = sub_1C1B945A8();
    v64 = v63;
    (*(v51 + 8))(v52, v53);
    (*(v60 + 16))(v62, v64, v84, v86, v59, v60);
  }

  else
  {
    v65 = v35;

    v66 = sub_1C1B94BC8();
    v67 = sub_1C1B95138();

    if (os_log_type_enabled(v66, v67))
    {
      v69 = *(v0 + 184);
      v68 = *(v0 + 192);
      v70 = *(v0 + 176);
      v71 = *(v0 + 144);
      v72 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v88[0] = v87;
      *v72 = 134218242;
      *(v72 + 4) = sub_1C1B94F58();

      *(v72 + 12) = 2080;
      v73 = OBJC_IVAR___APPCBaseContext_identifier;
      swift_beginAccess();
      (*(v69 + 16))(v68, v71 + v73, v70);
      v74 = sub_1C1B945A8();
      v76 = v75;
      (*(v69 + 8))(v68, v70);
      v77 = sub_1C1AC7650(v74, v76, v88);

      *(v72 + 14) = v77;
      _os_log_impl(&dword_1C1AA2000, v66, v67, "[ContentPipelineTransformer] Finished Validation. Returning %ld contents for context %s", v72, 0x16u);
      sub_1C1AA86F8(v87);
      MEMORY[0x1C6908230](v87, -1, -1);
      MEMORY[0x1C6908230](v72, -1, -1);
    }

    else
    {
    }
  }

  v78 = *(v0 + 192);

  v79 = *(v0 + 8);

  return v79(v33);
}

uint64_t sub_1C1B10214()
{
  v1 = v0[24];

  v2 = v0[1];
  v3 = v0[27];

  return v2();
}

uint64_t sub_1C1B10278(uint64_t a1, uint64_t a2, char a3, _BYTE *a4, void *a5)
{
  v9 = *(*(*a5 + 88) + 8);
  v10 = *(*a5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v21 - v15;
  if (a3)
  {
    v17 = *a4;
    if (v17 == 4)
    {
      LOBYTE(v17) = a2;
    }

    *a4 = v17;
    v18 = a5[5];
    v19 = a5[6];
    v22 = v14;
    sub_1C1AAABE0(a5 + 2, v18);
    sub_1C1B94FB8();
    v23 = v24;
    sub_1C1B95478();
    swift_unknownObjectRelease();
    (*(v19 + 32))(v16, a2, v18, v19);
    (*(v12 + 8))(v16, v22);
    return 0;
  }

  else
  {
    swift_unknownObjectRetain();
  }

  return a2;
}

uint64_t sub_1C1B10444(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  sub_1C1AAABE0(v2 + 2, v5);
  return (*(v6 + 32))(a1, a2, v5, v6);
}

uint64_t sub_1C1B104B0()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_1C1AAABE0(v0 + 2, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t *ContentValidationPipelineTransformer.deinit()
{
  sub_1C1AA86F8(v0 + 2);
  sub_1C1AA86F8(v0 + 7);
  sub_1C1AA86F8(v0 + 12);
  return v0;
}

uint64_t ContentValidationPipelineTransformer.__deallocating_deinit()
{
  sub_1C1AA86F8(v0 + 2);
  sub_1C1AA86F8(v0 + 7);
  sub_1C1AA86F8(v0 + 12);

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

uint64_t sub_1C1B1057C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C1B013DC;

  return sub_1C1B0F6B0(a1, a2, a3);
}

uint64_t sub_1C1B10674(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_1C1AC1F08(&qword_1EBF08D30, qword_1C1B9E9E0);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

unint64_t sub_1C1B106E8()
{
  result = qword_1EBF08CA8[0];
  if (!qword_1EBF08CA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBF08CA8);
  }

  return result;
}

uint64_t sub_1C1B1074C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  result = v4(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t dispatch thunk of ContentValidationPipelineTransformer.fetch(using:adType:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 128);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1C1AEE19C;

  return v12(a1, a2, a3);
}

uint64_t sub_1C1B109C4(uint64_t a1, unsigned int a2)
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

uint64_t sub_1C1B10A20(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C1B10AA4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C1B955F8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1C1B10B04@<X0>(char *a1@<X8>)
{
  v2 = sub_1C1B955F8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1C1B10B68(uint64_t a1)
{
  v2 = sub_1C1B1190C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B10BA4(uint64_t a1)
{
  v2 = sub_1C1B1190C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1B10BEC()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B10CD8()
{
  *v0;
  *v0;
  *v0;
  sub_1C1B94DE8();
}

uint64_t sub_1C1B10DB0()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B10E98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C1B1138C();
  *a2 = result;
  return result;
}

void sub_1C1B10EC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x72656E6E6162;
  v5 = 0xE600000000000000;
  v6 = 0x65766974616ELL;
  v7 = 0xED0000676E69646ELL;
  v8 = 0x614C686372616573;
  if (v2 != 3)
  {
    v8 = 0x614C746E65696C63;
    v7 = 0xEC00000074756F79;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6F65646976;
    v3 = 0xE500000000000000;
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

uint64_t sub_1C1B11020(void *a1, unint64_t a2)
{
  v5 = sub_1C1AC1F08(&qword_1EBF08D58, &qword_1C1B9EB30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B1190C();
  sub_1C1B95A18();
  v11 = a2 >> 61;
  v18 = a2 >> 61;
  v17 = 0;
  sub_1C1B119B4();
  sub_1C1B95808();
  if (!v2)
  {
    if (v11 <= 1)
    {
      if (v11)
      {
        a2 &= 0x1FFFFFFFFFFFFFFFuLL;
        v12 = type metadata accessor for VideoRepresentation;
        sub_1C1B11A08(&qword_1EBF08D48, type metadata accessor for VideoRepresentation);
        v13 = &unk_1EBF09920;
      }

      else
      {
        v12 = type metadata accessor for BannerRepresentation;
        sub_1C1B11A08(&qword_1EBF08D50, type metadata accessor for BannerRepresentation);
        v13 = &unk_1EBF09930;
      }
    }

    else
    {
      a2 &= 0x1FFFFFFFFFFFFFFFuLL;
      if (v11 == 2)
      {
        v12 = type metadata accessor for NativeRepresentation;
        sub_1C1B11A08(&qword_1EBF08D40, type metadata accessor for NativeRepresentation);
        v13 = &unk_1EBF09910;
      }

      else if (v11 == 3)
      {
        v12 = type metadata accessor for SearchLandingPageRepresentation;
        sub_1C1B11A08(&unk_1EDE6A7F0, type metadata accessor for SearchLandingPageRepresentation);
        v13 = &unk_1EDE6A800;
      }

      else
      {
        v12 = type metadata accessor for ClientLayoutRepresentation;
        sub_1C1B11A08(&qword_1EDE6A8F0, type metadata accessor for ClientLayoutRepresentation);
        v13 = &unk_1EDE6A8F8;
      }
    }

    sub_1C1B11A08(v13, v12);
    swift_getObjectType();
    v16 = a2;
    v15[15] = 1;
    sub_1C1B95808();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1C1B11344@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1C1B1148C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C1B1138C()
{
  v0 = sub_1C1B955F8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C1B113D8()
{
  type metadata accessor for BannerRepresentation();
  result = swift_dynamicCastClass();
  if (!result)
  {
    type metadata accessor for VideoRepresentation();
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      return v1 | 0x2000000000000000;
    }

    else
    {
      type metadata accessor for NativeRepresentation();
      v2 = swift_dynamicCastClass();
      if (v2)
      {
        return v2 | 0x4000000000000000;
      }

      else
      {
        type metadata accessor for SearchLandingPageRepresentation();
        v3 = swift_dynamicCastClass();
        if (v3)
        {
          return v3 | 0x6000000000000000;
        }

        else
        {
          type metadata accessor for ClientLayoutRepresentation();
          v4 = swift_dynamicCastClass();
          if (v4)
          {
            return v4 | 0x8000000000000000;
          }

          else
          {
            swift_unknownObjectRelease();
            return 0xF000000000000007;
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1C1B1148C(uint64_t *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF08D38, &qword_1C1B9EB28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B1190C();
  sub_1C1B95A08();
  if (!v1)
  {
    v12 = 0;
    sub_1C1B11960();
    sub_1C1B956F8();
    if (v11 <= 1u)
    {
      if (v11)
      {
        type metadata accessor for VideoRepresentation();
        v12 = 1;
        sub_1C1B11A08(&qword_1EBF08D48, type metadata accessor for VideoRepresentation);
        sub_1C1B956F8();
        (*(v4 + 8))(v7, v3);
        v9 = v11 | 0x2000000000000000;
      }

      else
      {
        type metadata accessor for BannerRepresentation();
        v12 = 1;
        sub_1C1B11A08(&qword_1EBF08D50, type metadata accessor for BannerRepresentation);
        sub_1C1B956F8();
        (*(v4 + 8))(v7, v3);
        v9 = v11;
      }
    }

    else if (v11 == 2)
    {
      type metadata accessor for NativeRepresentation();
      v12 = 1;
      sub_1C1B11A08(&qword_1EBF08D40, type metadata accessor for NativeRepresentation);
      sub_1C1B956F8();
      (*(v4 + 8))(v7, v3);
      v9 = v11 | 0x4000000000000000;
    }

    else if (v11 == 3)
    {
      type metadata accessor for SearchLandingPageRepresentation();
      v12 = 1;
      sub_1C1B11A08(&unk_1EDE6A7F0, type metadata accessor for SearchLandingPageRepresentation);
      sub_1C1B956F8();
      (*(v4 + 8))(v7, v3);
      v9 = v11 | 0x6000000000000000;
    }

    else
    {
      type metadata accessor for ClientLayoutRepresentation();
      v12 = 1;
      sub_1C1B11A08(&qword_1EDE6A8F0, type metadata accessor for ClientLayoutRepresentation);
      sub_1C1B956F8();
      (*(v4 + 8))(v7, v3);
      v9 = v11 | 0x8000000000000000;
    }
  }

  sub_1C1AA86F8(a1);
  return v9;
}

unint64_t sub_1C1B1190C()
{
  result = qword_1EDE6C350;
  if (!qword_1EDE6C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C350);
  }

  return result;
}

unint64_t sub_1C1B11960()
{
  result = qword_1EDE6C328;
  if (!qword_1EDE6C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C328);
  }

  return result;
}

unint64_t sub_1C1B119B4()
{
  result = qword_1EDE6C338;
  if (!qword_1EDE6C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C338);
  }

  return result;
}

uint64_t sub_1C1B11A08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C1B11A74()
{
  result = qword_1EBF08D60;
  if (!qword_1EBF08D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08D60);
  }

  return result;
}

unint64_t sub_1C1B11ACC()
{
  result = qword_1EBF08D68;
  if (!qword_1EBF08D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08D68);
  }

  return result;
}

unint64_t sub_1C1B11B24()
{
  result = qword_1EDE6C340;
  if (!qword_1EDE6C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C340);
  }

  return result;
}

unint64_t sub_1C1B11B7C()
{
  result = qword_1EDE6C348;
  if (!qword_1EDE6C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C348);
  }

  return result;
}

unint64_t sub_1C1B11BD0()
{
  result = qword_1EDE6C330;
  if (!qword_1EDE6C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C330);
  }

  return result;
}

uint64_t PromotedContentInfo.ready.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCPromotedContentInfo_ready);
  v2 = *(v0 + OBJC_IVAR___APPCPromotedContentInfo_ready + 8);
  sub_1C1AC0598(v1);
  return v1;
}

id sub_1C1B11E30()
{
  result = [*(v0 + OBJC_IVAR___APPCPromotedContentInfo_promotedContent) bestRepresentation];
  if (result)
  {
    type metadata accessor for NativeRepresentation();
    result = swift_dynamicCastClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_1C1B11F18()
{
  result = [*(v0 + OBJC_IVAR___APPCPromotedContentInfo_promotedContent) bestRepresentation];
  if (result)
  {
    v2 = [result desiredPosition];
    swift_unknownObjectRelease();
    return v2;
  }

  return result;
}

uint64_t sub_1C1B12044()
{
  v1 = OBJC_IVAR___APPCPromotedContentInfo_placeholder;
  swift_beginAccess();
  return *(v0 + v1);
}

BOOL sub_1C1B1216C()
{
  if (![*(v0 + OBJC_IVAR___APPCPromotedContentInfo_promotedContent) bestRepresentation])
  {
    return 0;
  }

  type metadata accessor for ClientLayoutRepresentation();
  v1 = swift_dynamicCastClass() != 0;
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1C1B12214()
{
  result = [*(v0 + OBJC_IVAR___APPCPromotedContentInfo_promotedContent) bestRepresentation];
  if (result)
  {
    type metadata accessor for BannerRepresentation();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2;
      v4 = *(v2 + OBJC_IVAR___APPCBannerRepresentation_adamIdentifier);
      if (v4 && [v4 integerValue])
      {
        swift_unknownObjectRelease();
        return 1;
      }

      v5 = *(v3 + OBJC_IVAR___APPCContentRepresentation_tapAction);
      v6 = v5;
      swift_unknownObjectRelease();
      if (v5)
      {
        v7 = *&v6[OBJC_IVAR___APPCTapAction_actionType];

        return v7 == 2;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1C1B123A8()
{
  v1 = *(v0 + OBJC_IVAR___APPCPromotedContentInfo_promotedContent);
  if ([v1 bestRepresentation] && (type metadata accessor for VideoRepresentation(), v2 = swift_dynamicCastClass(), swift_unknownObjectRelease(), v2))
  {
    return 1;
  }

  else
  {
    return [v1 isOutstreamVideoAd];
  }
}

id PromotedContentInfo.__deallocating_deinit()
{
  if ([*&v0[OBJC_IVAR___APPCPromotedContentInfo_promotedContent] adType] == 1)
  {
    [*&v0[OBJC_IVAR___APPCPromotedContentInfo_metricsHelper] manuallyDiscardWithReason_];
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromotedContentInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id PromotedContentInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t MetricsVideoQuality.init(rawValue:)(uint64_t result)
{
  if ((result - 103) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1B12700()
{
  result = qword_1EBF08D98;
  if (!qword_1EBF08D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08D98);
  }

  return result;
}

uint64_t *sub_1C1B12754@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 103;
  v4 = __CFADD__(v3, 3);
  v5 = v3 < 0xFFFFFFFFFFFFFFFDLL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C1B12784(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1C1B127F0()
{
  v1 = (v0 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1C1B12848()
{
  v1 = (v0 + OBJC_IVAR___APPCMediaMetricsHelper_containerType);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

void *sub_1C1B12894()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    [Strong impressionThreshold];
    v4 = v3;
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  v5 = v0 + OBJC_IVAR___APPCMediaMetricsHelper_impressionThreshold;
  *v5 = v4;
  *(v5 + 8) = v2 == 0;
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v7 = [v6 context];
  swift_unknownObjectRelease();
  if (v7)
  {
    v8 = [v7 current];
    swift_unknownObjectRelease();
    if (v8)
    {
      v7 = [v8 placement];
      swift_unknownObjectRelease();
      v9 = 0;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_9:
  v9 = 1;
LABEL_10:
  v10 = v0 + OBJC_IVAR___APPCMediaMetricsHelper_containerType;
  swift_beginAccess();
  *v10 = v7;
  *(v10 + 8) = v9;
  result = swift_unknownObjectWeakLoadStrong();
  v12 = result;
  if (result)
  {
    v13 = [result adType];
    result = swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
  }

  v14 = v0 + OBJC_IVAR___APPCMediaMetricsHelper_adType;
  *v14 = v13;
  *(v14 + 8) = v12 == 0;
  return result;
}

uint64_t sub_1C1B12A28()
{
  v1 = OBJC_IVAR___APPCMediaMetricsHelper____lazy_storage___initialVolumeSender;
  v2 = *(v0 + OBJC_IVAR___APPCMediaMetricsHelper____lazy_storage___initialVolumeSender);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_1C1B12A6C(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_1C1B12A6C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = [Strong adType];
    swift_unknownObjectRelease();
    if (v3 == 3)
    {
      v5 = [objc_opt_self() sharedInstance];
      [v5 outputVolume];
      v7 = v6;

      v4 = v7;
      goto LABEL_7;
    }

    if (!v3)
    {
      v4 = 0.0;
LABEL_7:
      sub_1C1B1608C(0.0, v4);
      return 1;
    }
  }

  sub_1C1B95128();
  sub_1C1AC53E4();
  v9 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C1B98E60;
  v11 = (a1 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v13 = *v11;
  v12 = v11[1];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1C1AA5E7C();
  *(v10 + 32) = v13;
  *(v10 + 40) = v12;

  sub_1C1B94BA8();

  return 0;
}

uint64_t sub_1C1B12E08()
{
  v1 = (v0 + OBJC_IVAR___APPCMediaMetricsHelper_visiblePercentageChanged);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_1C1AC0598(v3);
  return v3;
}

uint64_t sub_1C1B12E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_1C1B12F84(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___APPCMediaMetricsHelper_visiblePercentageChanged);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1C1AC0530(v6);
}

uint64_t sub_1C1B12FE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___APPCMediaMetricsHelper_visiblePercentageChanged);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C1B19354;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1C1AC0598(v4);
}

uint64_t sub_1C1B13084(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1C1B19318;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___APPCMediaMetricsHelper_visiblePercentageChanged);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1C1AC0598(v3);
  return sub_1C1AC0530(v8);
}