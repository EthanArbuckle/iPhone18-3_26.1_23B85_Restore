uint64_t sub_1B8E5C4F4()
{
  swift_beginAccess();
  sub_1B8E63208();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8E5C588()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(0);
  sub_1B8CD1E20(&qword_1EBABC580, type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E5C664()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap(0);
  sub_1B8CD1E20(&qword_1EBABC598, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E5C740()
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8E5C7CC()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult(0);
  sub_1B8CD1E20(&qword_1EBABC5C0, type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E5C8A8()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo(0);
  sub_1B8CD1E20(&qword_1EBABC5D8, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E5C984()
{
  swift_beginAccess();
  type metadata accessor for Nlgpb_NlgDialog();
  sub_1B8CD1E20(&qword_1EBABC1F0, type metadata accessor for Nlgpb_NlgDialog);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E5CA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_94_1(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_12();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8E5CABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1B8E5CB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_94_1(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_12();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t Kgqsapipb_KGEventLogMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + *(type metadata accessor for Kgqsapipb_KGEventLogMessage(0) + 20));
  OUTLINED_FUNCTION_12();
  result = sub_1B8E5CC10(v7, v8, v9, a3);
  if (!v4)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8E5CC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD40, &qword_1B965A640);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v92 = v91 - v10;
  v11 = type metadata accessor for Nlgpb_NlgDialog();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v91[1] = v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC4D0, &unk_1B965CDC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v91 - v16;
  v18 = type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v93 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v97 = a1;
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {

    sub_1B964C700();
    if (v5)
    {
    }

    v94 = a4;
  }

  else
  {
    v94 = a4;
  }

  v24 = v97;
  swift_beginAccess();
  if (*(v24 + 32))
  {
    v25 = *(v24 + 40);
    v95 = *(v24 + 32);
    v96 = v25;
    sub_1B8E63208();
    result = sub_1B964C680();
    if (v5)
    {
      return result;
    }
  }

  swift_beginAccess();
  v27 = *(v24 + 48);
  v28 = *(v24 + 56);
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {

    sub_1B964C700();
    if (v5)
    {
    }

    v91[0] = v11;
  }

  else
  {
    v91[0] = v11;
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1B8D9207C(v17, &qword_1EBABC4D0, &unk_1B965CDC0);
  }

  else
  {
    sub_1B8E5BE30();
    sub_1B8CD1E20(&qword_1EBABC580, type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo);
    sub_1B964C740();
    if (v5)
    {
      return sub_1B8E5BEE0();
    }

    sub_1B8E5BEE0();
  }

  v30 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__parentIds;
  v31 = v97;
  swift_beginAccess();
  if (*(*(v31 + v30) + 16))
  {

    sub_1B964C6E0();
    if (v5)
    {
    }
  }

  v32 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__childIds;
  v33 = v97;
  swift_beginAccess();
  if (*(*(v33 + v32) + 16))
  {

    sub_1B964C6E0();
    if (v5)
    {
    }
  }

  v34 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__fbr;
  v35 = v97;
  swift_beginAccess();
  if (*(*(v35 + v34) + 16))
  {

    sub_1B964C6E0();
    if (v5)
    {
    }
  }

  v36 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__valueTypeMapListProto;
  v37 = v97;
  swift_beginAccess();
  if (*(*(v37 + v36) + 16))
  {
    type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap(0);
    sub_1B8CD1E20(&qword_1EBABC598, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap);

    sub_1B964C730();
    if (v5)
    {
    }

    v38 = v97;
  }

  else
  {
    v38 = v37;
  }

  v39 = (v38 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesReceivedFromKg);
  swift_beginAccess();
  v40 = *v39;
  v41 = v39[1];
  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v43 = (v97 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesSentToKg);
  swift_beginAccess();
  v44 = *v43;
  v45 = v43[1];
  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (v46)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v47 = (v97 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentReceivedFromKg);
  swift_beginAccess();
  v48 = *v47;
  v49 = v47[1];
  v50 = HIBYTE(v49) & 0xF;
  if ((v49 & 0x2000000000000000) == 0)
  {
    v50 = v48 & 0xFFFFFFFFFFFFLL;
  }

  if (v50)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v51 = (v97 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentSentToKg);
  swift_beginAccess();
  v52 = *v51;
  v53 = v51[1];
  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (!v54)
  {
    goto LABEL_53;
  }

  sub_1B964C700();
  if (v5)
  {
  }

LABEL_53:
  v55 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__attributesRecognized;
  v56 = v97;
  swift_beginAccess();
  if (*(*(v56 + v55) + 16))
  {

    sub_1B964C6E0();
    if (v5)
    {
    }
  }

  v57 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__partialResults;
  v58 = v97;
  swift_beginAccess();
  if (*(v58 + v57) != 1 || (result = sub_1B964C670(), !v5))
  {
    v59 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults;
    v60 = v97;
    swift_beginAccess();
    if (!*(v60 + v59) || (result = sub_1B964C6C0(), !v5))
    {
      v61 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__grpcapi;
      v62 = v97;
      swift_beginAccess();
      if (*(v62 + v61) != 1 || (result = sub_1B964C670(), !v5))
      {
        v63 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__successful;
        v64 = v97;
        swift_beginAccess();
        if (*(v64 + v63) != 1 || (result = sub_1B964C670(), !v5))
        {
          v65 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__noValueFound;
          v66 = v97;
          swift_beginAccess();
          if (*(v66 + v65) != 1 || (result = sub_1B964C670(), !v5))
          {
            v67 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__someValueFound;
            v68 = v97;
            swift_beginAccess();
            if (*(v68 + v67) != 1 || (result = sub_1B964C670(), !v5))
            {
              v69 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__pireneResult;
              v70 = v97;
              swift_beginAccess();
              if (*(v70 + v69) == 1)
              {
                result = sub_1B964C670();
                v71 = v5;
                if (v5)
                {
                  return result;
                }
              }

              else
              {
                v71 = v5;
              }

              v72 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__newsResults;
              v73 = v97;
              swift_beginAccess();
              if (*(*(v73 + v72) + 16))
              {
                type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult(0);
                sub_1B8CD1E20(&qword_1EBABC5C0, type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult);

                sub_1B964C730();
                if (v71)
                {
                }
              }

              v74 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__kgDebugList;
              v75 = v97;
              swift_beginAccess();
              if (*(*(v75 + v74) + 16))
              {
                type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo(0);
                sub_1B8CD1E20(&qword_1EBABC5D8, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo);

                sub_1B964C730();
                if (v71)
                {
                }
              }

              v76 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isDisputedResponse;
              v77 = v97;
              swift_beginAccess();
              if (*(v77 + v76) != 1 || (result = sub_1B964C670(), !v71))
              {
                swift_beginAccess();
                v78 = v92;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v78, 1, v91[0]) == 1)
                {
                  sub_1B8D9207C(v92, &qword_1EBABBD40, &qword_1B965A640);
                }

                else
                {
                  sub_1B8E5BE30();
                  sub_1B8CD1E20(&qword_1EBABC1F0, type metadata accessor for Nlgpb_NlgDialog);
                  sub_1B964C740();
                  result = sub_1B8E5BEE0();
                  if (v71)
                  {
                    return result;
                  }
                }

                v79 = (v97 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__catID);
                swift_beginAccess();
                v80 = *v79;
                v81 = v79[1];
                v82 = HIBYTE(v81) & 0xF;
                if ((v81 & 0x2000000000000000) == 0)
                {
                  v82 = v80 & 0xFFFFFFFFFFFFLL;
                }

                if (!v82 || (, sub_1B964C700(), result = , !v71))
                {
                  v83 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isWebExtractedFact;
                  v84 = v97;
                  swift_beginAccess();
                  if (*(v84 + v83) != 1 || (result = sub_1B964C670(), !v71))
                  {
                    v85 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion;
                    v86 = v97;
                    swift_beginAccess();
                    if (*(v86 + v85) == 0.0 || (result = sub_1B964C6F0(), !v71))
                    {
                      v87 = (v97 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventType);
                      result = swift_beginAccess();
                      v88 = *v87;
                      v89 = v87[1];
                      v90 = HIBYTE(v89) & 0xF;
                      if ((v89 & 0x2000000000000000) == 0)
                      {
                        v90 = v88 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v90)
                      {

                        sub_1B964C700();
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

  return result;
}

uint64_t static Kgqsapipb_KGEventLogMessage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_8_11();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_1B8E5DB18(v3, v4);

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_20();
  sub_1B8CD1E20(v7, v8);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8E5DB18(uint64_t a1, uint64_t a2)
{
  v160 = type metadata accessor for Nlgpb_NlgDialog();
  v5 = OUTLINED_FUNCTION_59_1(v160);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  v157 = v8;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC200, &qword_1B965C700);
  OUTLINED_FUNCTION_59_1(v158);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v155 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD40, &qword_1B965A640);
  v15 = OUTLINED_FUNCTION_183(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44_0();
  v159 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v161 = &v155 - v20;
  v21 = type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(0);
  v22 = OUTLINED_FUNCTION_59_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_21();
  v163 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC6B8, &qword_1B965DC58);
  OUTLINED_FUNCTION_59_1(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_79();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC4D0, &unk_1B965CDC0);
  v31 = OUTLINED_FUNCTION_183(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44_0();
  v162 = v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v155 - v36;
  OUTLINED_FUNCTION_521();
  v39 = *(a1 + 16);
  v38 = *(a1 + 24);
  OUTLINED_FUNCTION_521();
  v40 = v39 == *(a2 + 16) && v38 == *(a2 + 24);
  if (!v40 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v41 = *(a1 + 32);
  v42 = *(a1 + 40);
  OUTLINED_FUNCTION_521();
  v43 = *(a2 + 40);
  if (!sub_1B8D92198(v41, v42, *(a2 + 32)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v44 = *(a1 + 48);
  v45 = *(a1 + 56);
  OUTLINED_FUNCTION_521();
  v46 = v44 == *(a2 + 48) && v45 == *(a2 + 56);
  if (!v46 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v155 = v13;
  v156 = a2;
  v47 = a1;
  OUTLINED_FUNCTION_521();
  v48 = v156;
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v49 = *(v26 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v2, 1, v21);
  if (v40)
  {

    sub_1B8D9207C(v37, &qword_1EBABC4D0, &unk_1B965CDC0);
    OUTLINED_FUNCTION_178(v2 + v49, 1, v21);
    if (v40)
    {
      sub_1B8D9207C(v2, &qword_1EBABC4D0, &unk_1B965CDC0);
      goto LABEL_17;
    }

    goto LABEL_52;
  }

  v92 = v162;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v2 + v49, 1, v21);
  if (v93)
  {

    sub_1B8D9207C(v37, &qword_1EBABC4D0, &unk_1B965CDC0);
    sub_1B8E5BEE0();
LABEL_52:
    sub_1B8D9207C(v2, &qword_1EBABC6B8, &qword_1B965DC58);
LABEL_63:

    return 0;
  }

  OUTLINED_FUNCTION_7_11();
  v94 = v163;
  sub_1B8E5BE30();
  v95 = *v92 == *v94 && v92[1] == v94[1];
  if (!v95 && (sub_1B964C9F0() & 1) == 0)
  {

    goto LABEL_62;
  }

  v96 = v92[2];
  v97 = v163[2];

  sub_1B8D7B15C();
  if ((v98 & 1) == 0)
  {
LABEL_62:
    sub_1B8E5BEE0();
    sub_1B8D9207C(v37, &qword_1EBABC4D0, &unk_1B965CDC0);
    sub_1B8E5BEE0();
    sub_1B8D9207C(v2, &qword_1EBABC4D0, &unk_1B965CDC0);
    goto LABEL_63;
  }

  v99 = *(v21 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_20();
  sub_1B8CD1E20(v100, v101);
  v102 = sub_1B964C850();
  sub_1B8E5BEE0();
  sub_1B8D9207C(v37, &qword_1EBABC4D0, &unk_1B965CDC0);
  sub_1B8E5BEE0();
  sub_1B8D9207C(v2, &qword_1EBABC4D0, &unk_1B965CDC0);
  v48 = v156;
  if ((v102 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_17:
  v50 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__parentIds;
  OUTLINED_FUNCTION_521();
  v51 = *(a1 + v50);
  OUTLINED_FUNCTION_521();
  if ((OUTLINED_FUNCTION_88_1() & 1) == 0)
  {
    goto LABEL_63;
  }

  v52 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__childIds;
  OUTLINED_FUNCTION_521();
  v53 = *(a1 + v52);
  OUTLINED_FUNCTION_521();
  if ((OUTLINED_FUNCTION_88_1() & 1) == 0)
  {
    goto LABEL_63;
  }

  v54 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__fbr;
  OUTLINED_FUNCTION_521();
  v55 = *(a1 + v54);
  OUTLINED_FUNCTION_521();
  if ((OUTLINED_FUNCTION_88_1() & 1) == 0)
  {
    goto LABEL_63;
  }

  v56 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__valueTypeMapListProto;
  OUTLINED_FUNCTION_521();
  v57 = *(a1 + v56);
  v58 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__valueTypeMapListProto;
  OUTLINED_FUNCTION_521();
  v59 = *(v48 + v58);

  sub_1B8D88DB0();
  v61 = v60;

  if ((v61 & 1) == 0)
  {
    goto LABEL_63;
  }

  v62 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesReceivedFromKg);
  OUTLINED_FUNCTION_26_6();
  v63 = *v62;
  v64 = v62[1];
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_63();
  v66 = v40 && v64 == v65;
  if (!v66 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_63;
  }

  v67 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesSentToKg);
  OUTLINED_FUNCTION_26_6();
  v68 = *v67;
  v69 = v67[1];
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_63();
  v71 = v40 && v69 == v70;
  if (!v71 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_63;
  }

  v72 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentReceivedFromKg);
  OUTLINED_FUNCTION_26_6();
  v73 = *v72;
  v74 = v72[1];
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_63();
  v76 = v40 && v74 == v75;
  if (!v76 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_63;
  }

  v77 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentSentToKg);
  OUTLINED_FUNCTION_26_6();
  v78 = *v77;
  v79 = v77[1];
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_63();
  v81 = v40 && v79 == v80;
  if (!v81 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_63;
  }

  v82 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__attributesRecognized;
  OUTLINED_FUNCTION_521();
  v83 = *(a1 + v82);
  OUTLINED_FUNCTION_521();
  if ((OUTLINED_FUNCTION_88_1() & 1) == 0)
  {
    goto LABEL_63;
  }

  v84 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__partialResults;
  OUTLINED_FUNCTION_521();
  v85 = *(a1 + v84);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_84_2();
  if (!v40)
  {
    goto LABEL_63;
  }

  v86 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults;
  OUTLINED_FUNCTION_521();
  LODWORD(v86) = *(a1 + v86);
  v87 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults;
  OUTLINED_FUNCTION_521();
  if (v86 != *(v48 + v87))
  {
    goto LABEL_63;
  }

  v88 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__grpcapi;
  OUTLINED_FUNCTION_521();
  v89 = *(a1 + v88);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_84_2();
  if (!v40)
  {
    goto LABEL_63;
  }

  v90 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__successful;
  OUTLINED_FUNCTION_521();
  v91 = *(a1 + v90);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_84_2();
  if (!v40)
  {
    goto LABEL_63;
  }

  v104 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__noValueFound;
  OUTLINED_FUNCTION_521();
  v105 = *(a1 + v104);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_84_2();
  if (!v40)
  {
    goto LABEL_63;
  }

  v106 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__someValueFound;
  OUTLINED_FUNCTION_521();
  v107 = *(a1 + v106);
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_78_0();
  if (!v40)
  {
    goto LABEL_63;
  }

  v108 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__pireneResult;
  OUTLINED_FUNCTION_521();
  v109 = *(a1 + v108);
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_78_0();
  if (!v40)
  {
    goto LABEL_63;
  }

  v110 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__newsResults;
  OUTLINED_FUNCTION_521();
  v111 = *(a1 + v110);
  v112 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__newsResults;
  v113 = v156;
  OUTLINED_FUNCTION_521();
  v114 = *(v113 + v112);

  sub_1B8D88E04();
  v116 = v115;

  if ((v116 & 1) == 0)
  {
    goto LABEL_63;
  }

  v117 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__kgDebugList;
  OUTLINED_FUNCTION_521();
  v118 = *(v47 + v117);
  v119 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__kgDebugList;
  v120 = v156;
  OUTLINED_FUNCTION_521();
  v121 = *(v120 + v119);

  sub_1B8D8900C();
  v123 = v122;

  if ((v123 & 1) == 0)
  {
    goto LABEL_63;
  }

  v124 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isDisputedResponse;
  OUTLINED_FUNCTION_521();
  v125 = *(v47 + v124);
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_78_0();
  if (!v40)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v126 = *(v158 + 48);
  v127 = v155;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v127, 1, v160);
  if (v40)
  {
    sub_1B8D9207C(v161, &qword_1EBABBD40, &qword_1B965A640);
    OUTLINED_FUNCTION_178(&v155[v126], 1, v160);
    if (v40)
    {
      sub_1B8D9207C(v155, &qword_1EBABBD40, &qword_1B965A640);
      goto LABEL_86;
    }

    goto LABEL_84;
  }

  v128 = v155;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v128 + v126, 1, v160);
  if (v129)
  {
    sub_1B8D9207C(v161, &qword_1EBABBD40, &qword_1B965A640);
    sub_1B8E5BEE0();
LABEL_84:
    sub_1B8D9207C(v155, &qword_1EBABC200, &qword_1B965C700);
    goto LABEL_63;
  }

  v130 = v157;
  sub_1B8E5BE30();
  v131 = static Nlgpb_NlgDialog.== infix(_:_:)(v159, v130);
  sub_1B8E5BEE0();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D9207C(v132, v133, v134);
  sub_1B8E5BEE0();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D9207C(v135, v136, v137);
  if ((v131 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_86:
  v138 = (v47 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__catID);
  OUTLINED_FUNCTION_26_6();
  v139 = *v138;
  v140 = v138[1];
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_63();
  v142 = v40 && v140 == v141;
  if (!v142 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_63;
  }

  v143 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isWebExtractedFact;
  OUTLINED_FUNCTION_521();
  v144 = *(v47 + v143);
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_78_0();
  if (!v40)
  {
    goto LABEL_63;
  }

  v145 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion;
  OUTLINED_FUNCTION_521();
  v146 = *(v47 + v145);
  v147 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion;
  v148 = v156;
  OUTLINED_FUNCTION_521();
  if (v146 != *(v148 + v147))
  {
    goto LABEL_63;
  }

  v149 = (v47 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventType);
  OUTLINED_FUNCTION_26_6();
  v150 = *v149;
  v151 = v149[1];
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_63();
  if (v40 && v151 == v152)
  {
  }

  else
  {
    v154 = OUTLINED_FUNCTION_120_0();

    if ((v154 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B8E5E938(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1E20(&qword_1EBABC6A8, type metadata accessor for Kgqsapipb_KGEventLogMessage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E5E9B8(uint64_t a1)
{
  v2 = sub_1B8CD1E20(&qword_1EBABC1E8, type metadata accessor for Kgqsapipb_KGEventLogMessage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E5EA28()
{
  sub_1B8CD1E20(&qword_1EBABC1E8, type metadata accessor for Kgqsapipb_KGEventLogMessage);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E5EAA8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC3A0);
  __swift_project_value_buffer(v0, qword_1EBABC3A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1B9653B20;
  v4 = v32 + v3 + v1[14];
  *(v32 + v3) = 0;
  *v4 = "NO_SPEAKABLE";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v32 + v3 + v2 + v1[14];
  *(v32 + v3 + v2) = 1;
  *v8 = "KG_NO_SPEAKABLE";
  *(v8 + 8) = 15;
  *(v8 + 16) = 2;
  v7();
  v9 = (v32 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "KG_DICTIONARY";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v32 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "KG_DICTIONARY_SUPPRESSED";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v7();
  v13 = (v32 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "KG_ELECTIONS";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v32 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "KG_SPEAKABLE_DIALOG";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v7();
  v17 = (v32 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "KG_ARTICLE_DISPLAY";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v7();
  v19 = (v32 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "KG_ARTICLE_READING";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v7();
  v21 = (v32 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "KG_LIST_DIALOG";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v7();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "KG_FAIL";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "KG_SUPPRESSED";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v7();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "KG_DIRECT_DIALOG";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v7();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "KG_NLG_DIALOG";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8E5EF70()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC3C8);
  __swift_project_value_buffer(v0, qword_1EBABC3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "arg";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E5F228(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1E20(&qword_1EBABC6A0, type metadata accessor for Kgqsapipb_KGEventLogMessage.ArgInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E5F2A8(uint64_t a1)
{
  v2 = sub_1B8CD1E20(&qword_1EBABC4E8, type metadata accessor for Kgqsapipb_KGEventLogMessage.ArgInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E5F318()
{
  sub_1B8CD1E20(&qword_1EBABC4E8, type metadata accessor for Kgqsapipb_KGEventLogMessage.ArgInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E5F3E8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC3F0);
  __swift_project_value_buffer(v0, qword_1EBABC3F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "intent";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "args";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E5F600()
{
  type metadata accessor for Kgqsapipb_KGEventLogMessage.ArgInfo(0);
  sub_1B8CD1E20(&qword_1EBABC4E8, type metadata accessor for Kgqsapipb_KGEventLogMessage.ArgInfo);
  return sub_1B964C570();
}

uint64_t Kgqsapipb_KGEventLogMessage.IntentArgInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (result = OUTLINED_FUNCTION_3(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for Kgqsapipb_KGEventLogMessage.ArgInfo(0), sub_1B8CD1E20(&qword_1EBABC4E8, type metadata accessor for Kgqsapipb_KGEventLogMessage.ArgInfo), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v0))
    {
      v4 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8E5F82C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1E20(&qword_1EBABC698, type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E5F8AC(uint64_t a1)
{
  v2 = sub_1B8CD1E20(&qword_1EBABC580, type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E5F91C()
{
  sub_1B8CD1E20(&qword_1EBABC580, type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E5F99C()
{
  result = MEMORY[0x1BFADC850](0xD00000000000001CLL, 0x80000001B96EE400);
  qword_1EBABC408 = 0xD00000000000001BLL;
  unk_1EBABC410 = 0x80000001B96EE0F0;
  return result;
}

uint64_t sub_1B8E5FA28()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC418);
  __swift_project_value_buffer(v0, qword_1EBABC418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entityId";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attributeValueTypeMap";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E5FC40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1B964C3C0();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      a4(a1, v7, a2, a3);
    }

    else if (result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B8E5FCD8()
{
  sub_1B964C280();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString(0);
  sub_1B8CD1E20(&qword_1EBABC4F8, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString);
  sub_1B8CD1E20(&qword_1EBABC500, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString);
  return sub_1B964C3A0();
}

uint64_t Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (result = OUTLINED_FUNCTION_3(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (sub_1B964C280(), type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString(0), sub_1B8CD1E20(&qword_1EBABC4F8, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString), sub_1B8CD1E20(&qword_1EBABC500, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString), OUTLINED_FUNCTION_79_0(), result = sub_1B964C5E0(), !v0))
    {
      v4 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8E5FF2C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v10 = v10 && v8 == v9;
  if (!v10 && (sub_1B964C9F0() & 1) == 0 || (a3(*(v5 + 16), *(v4 + 16)) & 1) == 0)
  {
    return 0;
  }

  v11 = *(a4(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_20();
  sub_1B8CD1E20(v12, v13);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E6005C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1E20(&qword_1EBABC690, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E600DC(uint64_t a1)
{
  v2 = sub_1B8CD1E20(&qword_1EBABC598, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E6014C()
{
  sub_1B8CD1E20(&qword_1EBABC598, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E601CC()
{
  if (qword_1EBAB6340 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBABC408;
  v2 = unk_1EBABC410;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1BFADC850](0x53664F7473694C2ELL, 0xED0000676E697274);

  qword_1EBABC430 = v1;
  *algn_1EBABC438 = v2;
  return result;
}

uint64_t sub_1B8E6029C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC440);
  __swift_project_value_buffer(v0, qword_1EBABC440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "values";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }
  }

  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6E0(), !v1))
  {
    v3 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if ((sub_1B8D6123C(*v0, *v1) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_20();
  sub_1B8CD1E20(v3, v4);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E60604(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1E20(&qword_1EBABC688, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E60684(uint64_t a1)
{
  v2 = sub_1B8CD1E20(&qword_1EBABC4F8, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E606F4()
{
  sub_1B8CD1E20(&qword_1EBABC4F8, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E607C4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC468);
  __swift_project_value_buffer(v0, qword_1EBABC468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "source";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "url";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "punchoutUri";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (result = OUTLINED_FUNCTION_3(), !v0))
  {
    v4 = v1[2];
    v5 = v1[3];
    OUTLINED_FUNCTION_1();
    if (!v6 || (result = OUTLINED_FUNCTION_3(), !v0))
    {
      v7 = v1[4];
      v8 = v1[5];
      OUTLINED_FUNCTION_1();
      if (!v9 || (result = OUTLINED_FUNCTION_3(), !v0))
      {
        v10 = v1[6];
        v11 = v1[7];
        OUTLINED_FUNCTION_1();
        if (!v12 || (result = OUTLINED_FUNCTION_3(), !v0))
        {
          v13 = v1[8];
          v14 = v1[9];
          OUTLINED_FUNCTION_1();
          if (!v15 || (result = OUTLINED_FUNCTION_3(), !v0))
          {
            v16 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult(0) + 36);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_KGEventLogMessage.KGNewsResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = v3[4] == v2[4] && v3[5] == v2[5];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = v3[6] == v2[6] && v3[7] == v2[7];
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = v3[8] == v2[8] && v3[9] == v2[9];
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult(0) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_20();
  sub_1B8CD1E20(v14, v15);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E60D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1E20(&qword_1EBABC680, type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E60DD0(uint64_t a1)
{
  v2 = sub_1B8CD1E20(&qword_1EBABC5C0, type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E60E40()
{
  sub_1B8CD1E20(&qword_1EBABC5C0, type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E60EE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1BFADC850](a2, a3);
  *a4 = 0xD00000000000001BLL;
  *a5 = 0x80000001B96EE0F0;
  return result;
}

uint64_t sub_1B8E60F74()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC490);
  __swift_project_value_buffer(v0, qword_1EBABC490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B964EE80;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "code";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "encodedIntent";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "algorithm";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "intentName";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "description";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "messages";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "pattern";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "dbQueryPattern";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "queryEntities";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 6:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 9:
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B8E613D4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E613D4()
{
  type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo(0);
  sub_1B8CD1E20(&qword_1EBABC518, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo);
  return sub_1B964C570();
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (result = OUTLINED_FUNCTION_3(), !v0))
  {
    v4 = v1[2];
    v5 = v1[3];
    OUTLINED_FUNCTION_1();
    if (!v6 || (result = OUTLINED_FUNCTION_3(), !v0))
    {
      v7 = v1[4];
      v8 = v1[5];
      OUTLINED_FUNCTION_1();
      if (!v9 || (result = OUTLINED_FUNCTION_3(), !v0))
      {
        v10 = v1[6];
        v11 = v1[7];
        OUTLINED_FUNCTION_1();
        if (!v12 || (result = OUTLINED_FUNCTION_3(), !v0))
        {
          v13 = v1[8];
          v14 = v1[9];
          OUTLINED_FUNCTION_1();
          if (!v15 || (result = OUTLINED_FUNCTION_3(), !v0))
          {
            if (!*(v1[10] + 16) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6E0(), !v0))
            {
              v16 = v1[11];
              v17 = v1[12];
              OUTLINED_FUNCTION_1();
              if (!v18 || (result = OUTLINED_FUNCTION_3(), !v0))
              {
                if (!*(v1[13] + 16) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6E0(), !v0))
                {
                  if (!*(v1[14] + 16) || (type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo(0), sub_1B8CD1E20(&qword_1EBABC518, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v0))
                  {
                    v19 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo(0) + 52);
                    return OUTLINED_FUNCTION_8_1();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_KGEventLogMessage.DebugInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = v3[4] == v2[4] && v3[5] == v2[5];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = v3[6] == v2[6] && v3[7] == v2[7];
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = v3[8] == v2[8] && v3[9] == v2[9];
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(v3[10], v2[10]) & 1) == 0)
  {
    return 0;
  }

  v13 = v3[11] == v2[11] && v3[12] == v2[12];
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(v3[13], v2[13]) & 1) == 0)
  {
    return 0;
  }

  v14 = v3[14];
  v15 = v2[14];
  sub_1B8D7B11C();
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo(0) + 52);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_20();
  sub_1B8CD1E20(v18, v19);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t (*sub_1B8E617C8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t sub_1B8E6181C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1E20(&qword_1EBABC678, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E6189C(uint64_t a1)
{
  v2 = sub_1B8CD1E20(&qword_1EBABC5D8, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E6190C()
{
  sub_1B8CD1E20(&qword_1EBABC5D8, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E6198C()
{
  if (qword_1EBAB6370 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBABC480;
  v2 = *algn_1EBABC488;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1BFADC850](0x49797469746E452ELL, 0xEB000000006F666ELL);

  qword_1EBABC4A8 = v1;
  unk_1EBABC4B0 = v2;
  return result;
}

uint64_t sub_1B8E61A58()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC4B8);
  __swift_project_value_buffer(v0, qword_1EBABC4B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "wikidataId";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entitySyn";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E61C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_1_15();
  if (!v7 || (result = OUTLINED_FUNCTION_3(), !v4))
  {
    v9 = *(v5 + 16);
    v10 = *(v5 + 24);
    OUTLINED_FUNCTION_1();
    if (!v11 || (result = OUTLINED_FUNCTION_3(), !v4))
    {
      v12 = *(a4(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8E61D10(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a3(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_20();
  sub_1B8CD1E20(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E61E00(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD1E20(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E61EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1E20(&qword_1EBABC670, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E61F2C(uint64_t a1)
{
  v2 = sub_1B8CD1E20(&qword_1EBABC518, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E61F9C()
{
  sub_1B8CD1E20(&qword_1EBABC518, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo);

  return sub_1B964C5D0();
}

unint64_t sub_1B8E62020()
{
  result = qword_1EBABC530;
  if (!qword_1EBABC530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABC530);
  }

  return result;
}

unint64_t sub_1B8E62078()
{
  result = qword_1EBABC538;
  if (!qword_1EBABC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABC538);
  }

  return result;
}

unint64_t sub_1B8E620D0()
{
  result = qword_1EBABC540;
  if (!qword_1EBABC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABC540);
  }

  return result;
}

unint64_t sub_1B8E62128()
{
  result = qword_1EBABC548;
  if (!qword_1EBABC548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBABC550, &qword_1B965CEB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABC548);
  }

  return result;
}

void sub_1B8E62B40()
{
  sub_1B8E62FD4(319, &qword_1EBABC608, type metadata accessor for Kgqsapipb_KGEventLogMessage.ArgInfo, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E62C2C()
{
  sub_1B8E62CC0();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E62CC0()
{
  if (!qword_1EBABC620)
  {
    type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString(255);
    v0 = sub_1B964C7C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBABC620);
    }
  }
}

uint64_t sub_1B8E62D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B8E62E34()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8E62EE4()
{
  sub_1B8CD1878();
  if (v0 <= 0x3F)
  {
    sub_1B8E62FD4(319, &qword_1EBABC658, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8E62FD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B8E63068()
{
  sub_1B8E62FD4(319, &qword_1ED9CCAA0, type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B8E62FD4(319, &qword_1ED9CD910, type metadata accessor for Nlgpb_NlgDialog, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1B8E63208()
{
  result = qword_1EBABC6B0;
  if (!qword_1EBABC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABC6B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_12(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Kgqsapipb_KGEventLogMessage(0);
  v5 = *(result + 20);
  *(a1 + 80) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for Kgqsapipb_KGEventLogMessage(0);
  v5 = *(result + 20);
  *(a1 + 64) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Kgqsapipb_KGEventLogMessage(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_11()
{
  result = type metadata accessor for Kgqsapipb_KGEventLogMessage(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_8()
{
  v0 = type metadata accessor for Kgqsapipb_KGEventLogMessage._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_26_6()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_28_5()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_30_9()
{
  v1 = *(v0 + *(type metadata accessor for Kgqsapipb_KGEventLogMessage(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_88_1()
{
  v4 = *(v2 + v1);

  return sub_1B8D6123C(v0, v4);
}

uint64_t sub_1B8E6352C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Kgqsapipb_Entity.id.setter(v1, v2);
}

uint64_t Kgqsapipb_Entity.id.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Kgqsapipb_Entity(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_Entity.domain.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_28_6();
  v4 = *(v1 + v3);
  result = OUTLINED_FUNCTION_10_4();
  v6 = *(v4 + 40);
  *a1 = *(v4 + 32);
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1B8E636A0@<X0>(uint64_t a1@<X8>)
{
  result = Kgqsapipb_Entity.domain.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

void sub_1B8E636E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  Kgqsapipb_Entity.domain.setter();
}

void Kgqsapipb_Entity.domain.setter()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = type metadata accessor for Kgqsapipb_Entity(0);
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E6CD90(v9);
    *(v2 + v1) = v8;
  }

  OUTLINED_FUNCTION_9_3();
  *(v8 + 32) = v4;
  *(v8 + 40) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Entity.domain.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 88) = v0;
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v0 + 40);
  *(v1 + 72) = *(v0 + 32);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E63804()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_86_1(v1);
  v3 = *(v2 + 72);
  v4 = *(v0 + 84);
  v5 = *(v0 + 88);
  v6 = *(v0 + 80);
  v7 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v0 + 84);
    v11 = *(v0 + 88);
    OUTLINED_FUNCTION_38_2();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E6CD90(v12);
    *(v11 + v10) = v9;
  }

  OUTLINED_FUNCTION_11_4();
  *(v9 + 32) = v3;
  *(v9 + 40) = v6;
  OUTLINED_FUNCTION_242();

  free(v13);
}

void sub_1B8E638BC(uint64_t *a1)
{
  v1 = *a1;

  Kgqsapipb_Entity.locale.setter();
}

uint64_t Kgqsapipb_Entity.locale.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 48);

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_Entity.label.getter()
{
  OUTLINED_FUNCTION_28_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E63A10(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_Entity.label.setter();
}

void Kgqsapipb_Entity.label.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Kgqsapipb_Entity(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E6CD90(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3();
  v10 = *(v7 + 64);
  *(v7 + 56) = v2;
  *(v7 + 64) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Entity.label.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Kgqsapipb_Entity(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 64);
  *(v1 + 48) = *(v0 + 56);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E63B20(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Entity.label.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_38_2();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8E6CD90(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 64);
    *(v9 + 56) = v4;
    *(v9 + 64) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Entity.enlabel.getter()
{
  OUTLINED_FUNCTION_28_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E63BF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_Entity.enlabel.setter();
}

void Kgqsapipb_Entity.enlabel.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Kgqsapipb_Entity(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E6CD90(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3();
  v10 = *(v7 + 80);
  *(v7 + 72) = v2;
  *(v7 + 80) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Entity.enlabel.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Kgqsapipb_Entity(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 80);
  *(v1 + 48) = *(v0 + 72);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E63D08(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Entity.enlabel.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_38_2();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8E6CD90(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 80);
    *(v9 + 72) = v4;
    *(v9 + 80) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Entity.description_p.getter()
{
  OUTLINED_FUNCTION_28_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E63DE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_Entity.description_p.setter();
}

void Kgqsapipb_Entity.description_p.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Kgqsapipb_Entity(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E6CD90(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3();
  v10 = *(v7 + 96);
  *(v7 + 88) = v2;
  *(v7 + 96) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Entity.description_p.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Kgqsapipb_Entity(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 96);
  *(v1 + 48) = *(v0 + 88);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E63EF0(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Entity.description_p.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_38_2();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8E6CD90(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 96);
    *(v9 + 88) = v4;
    *(v9 + 96) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Entity.claims.getter()
{
  OUTLINED_FUNCTION_28_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 104);
}

uint64_t sub_1B8E63FC0(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Entity.claims.setter();
}

uint64_t Kgqsapipb_Entity.claims.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E6CD90(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  OUTLINED_FUNCTION_9_3();
  v7 = *(v4 + 104);
  *(v4 + 104) = v0;
}

uint64_t Kgqsapipb_Entity.claims.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 104);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E640AC(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Entity.claims.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_29_6();
      v10 = type metadata accessor for Kgqsapipb_Entity._StorageClass(v9);
      OUTLINED_FUNCTION_57_0(v10);
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E6CD90(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 104);
    *(v8 + 104) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Entity.labels.getter()
{
  OUTLINED_FUNCTION_28_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 112);
}

uint64_t sub_1B8E6417C(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Entity.labels.setter();
}

uint64_t Kgqsapipb_Entity.labels.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E6CD90(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  OUTLINED_FUNCTION_9_3();
  v7 = *(v4 + 112);
  *(v4 + 112) = v0;
}

uint64_t Kgqsapipb_Entity.labels.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 112);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E64268(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Entity.labels.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_29_6();
      v10 = type metadata accessor for Kgqsapipb_Entity._StorageClass(v9);
      OUTLINED_FUNCTION_57_0(v10);
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E6CD90(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 112);
    *(v8 + 112) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Entity.descriptions.getter()
{
  OUTLINED_FUNCTION_28_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 120);
}

uint64_t sub_1B8E64338(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Entity.descriptions.setter();
}

uint64_t Kgqsapipb_Entity.descriptions.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E6CD90(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  OUTLINED_FUNCTION_9_3();
  v7 = *(v4 + 120);
  *(v4 + 120) = v0;
}

uint64_t Kgqsapipb_Entity.descriptions.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 120);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E64424(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Entity.descriptions.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_29_6();
      v10 = type metadata accessor for Kgqsapipb_Entity._StorageClass(v9);
      OUTLINED_FUNCTION_57_0(v10);
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E6CD90(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 120);
    *(v8 + 120) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Entity.siteLinks.getter()
{
  OUTLINED_FUNCTION_28_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 128);
}

uint64_t sub_1B8E644F4(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Entity.siteLinks.setter();
}

uint64_t Kgqsapipb_Entity.siteLinks.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E6CD90(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  OUTLINED_FUNCTION_9_3();
  v7 = *(v4 + 128);
  *(v4 + 128) = v0;
}

uint64_t Kgqsapipb_Entity.siteLinks.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 128);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E645E0(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Entity.siteLinks.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_29_6();
      v10 = type metadata accessor for Kgqsapipb_Entity._StorageClass(v9);
      OUTLINED_FUNCTION_57_0(v10);
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E6CD90(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 128);
    *(v8 + 128) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Entity.aliases.getter()
{
  OUTLINED_FUNCTION_28_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 136);
}

uint64_t sub_1B8E646B0(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Entity.aliases.setter();
}

uint64_t Kgqsapipb_Entity.aliases.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E6CD90(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  OUTLINED_FUNCTION_9_3();
  v7 = *(v4 + 136);
  *(v4 + 136) = v0;
}

uint64_t Kgqsapipb_Entity.aliases.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 136);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E6479C(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Entity.aliases.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_29_6();
      v10 = type metadata accessor for Kgqsapipb_Entity._StorageClass(v9);
      OUTLINED_FUNCTION_57_0(v10);
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E6CD90(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 136);
    *(v8 + 136) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Entity.shortAbstract.getter()
{
  OUTLINED_FUNCTION_28_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 144);
}

uint64_t sub_1B8E6486C(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Entity.shortAbstract.setter();
}

uint64_t Kgqsapipb_Entity.shortAbstract.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E6CD90(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  OUTLINED_FUNCTION_9_3();
  v7 = *(v4 + 144);
  *(v4 + 144) = v0;
}

uint64_t Kgqsapipb_Entity.shortAbstract.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 144);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E64958(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Entity.shortAbstract.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_29_6();
      v10 = type metadata accessor for Kgqsapipb_Entity._StorageClass(v9);
      OUTLINED_FUNCTION_57_0(v10);
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E6CD90(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 144);
    *(v8 + 144) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Entity.primary.getter()
{
  OUTLINED_FUNCTION_28_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 152);
}

uint64_t sub_1B8E64A28(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Entity.primary.setter();
}

uint64_t Kgqsapipb_Entity.primary.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E6CD90(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  OUTLINED_FUNCTION_9_3();
  v7 = *(v4 + 152);
  *(v4 + 152) = v0;
}

uint64_t Kgqsapipb_Entity.primary.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 152);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E64B14(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Entity.primary.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_29_6();
      v10 = type metadata accessor for Kgqsapipb_Entity._StorageClass(v9);
      OUTLINED_FUNCTION_57_0(v10);
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E6CD90(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 152);
    *(v8 + 152) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Entity.secondary.getter()
{
  OUTLINED_FUNCTION_28_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 160);
}

uint64_t sub_1B8E64BE4(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Entity.secondary.setter();
}

uint64_t Kgqsapipb_Entity.secondary.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E6CD90(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  OUTLINED_FUNCTION_9_3();
  v7 = *(v4 + 160);
  *(v4 + 160) = v0;
}

uint64_t Kgqsapipb_Entity.secondary.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 160);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E64CD0(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Entity.secondary.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_29_6();
      v10 = type metadata accessor for Kgqsapipb_Entity._StorageClass(v9);
      OUTLINED_FUNCTION_57_0(v10);
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E6CD90(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 160);
    *(v8 + 160) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Entity.localizations.getter()
{
  OUTLINED_FUNCTION_28_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 168);
}

uint64_t sub_1B8E64DA0(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Entity.localizations.setter();
}

uint64_t Kgqsapipb_Entity.localizations.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E6CD90(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  OUTLINED_FUNCTION_9_3();
  v7 = *(v4 + 168);
  *(v4 + 168) = v0;
}

uint64_t Kgqsapipb_Entity.localizations.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 168);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E64E8C(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Entity.localizations.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_29_6();
      v10 = type metadata accessor for Kgqsapipb_Entity._StorageClass(v9);
      OUTLINED_FUNCTION_57_0(v10);
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E6CD90(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 168);
    *(v8 + 168) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Entity.timestamp.getter()
{
  OUTLINED_FUNCTION_28_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 176);
}

uint64_t Kgqsapipb_Entity.timestamp.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E6CD90(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 176) = v0;
  return result;
}

uint64_t Kgqsapipb_Entity.timestamp.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_28_6();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v5 + 176);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E65018(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_1(a1);
  v6 = OUTLINED_FUNCTION_177_3(v5);
  v7 = *(v4 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    OUTLINED_FUNCTION_38_2();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8E6CD90(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 176) = v3;

  free(v1);
}

uint64_t Kgqsapipb_Entity.indexedTimestamp.getter()
{
  OUTLINED_FUNCTION_28_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 184);
}

uint64_t Kgqsapipb_Entity.indexedTimestamp.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E6CD90(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 184) = v0;
  return result;
}

uint64_t Kgqsapipb_Entity.indexedTimestamp.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_28_6();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v5 + 184);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E65194(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_1(a1);
  v6 = OUTLINED_FUNCTION_177_3(v5);
  v7 = *(v4 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    OUTLINED_FUNCTION_38_2();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8E6CD90(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 184) = v3;

  free(v1);
}

uint64_t Kgqsapipb_Entity.claimMap.getter()
{
  OUTLINED_FUNCTION_28_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 192);
}

uint64_t sub_1B8E65254(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Entity.claimMap.setter();
}

uint64_t Kgqsapipb_Entity.claimMap.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E6CD90(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  OUTLINED_FUNCTION_9_3();
  v7 = *(v4 + 192);
  *(v4 + 192) = v0;
}

uint64_t Kgqsapipb_Entity.claimMap.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 192);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E65340(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Entity.claimMap.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_29_6();
      v10 = type metadata accessor for Kgqsapipb_Entity._StorageClass(v9);
      OUTLINED_FUNCTION_57_0(v10);
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E6CD90(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 192);
    *(v8 + 192) = v3;
  }

  free(v1);
}

void Kgqsapipb_Entity.assertion.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Kgqsapipb_Assertion(v10);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_28_6();
  v16 = *(v0 + v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_33_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v17)
    {
      sub_1B8D9207C(v1, &qword_1EBAB9230, &qword_1B965DC80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_135_4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E65650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E7EA38();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Kgqsapipb_Entity.Domain.allCases.getter()
{
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_521();
}

uint64_t (*static Kgqsapipb_Entity.Domain.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B8E65740@<X0>(uint64_t *a1@<X8>)
{
  result = static Kgqsapipb_Entity.Domain.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Kgqsapipb_ClaimTrimmed.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_ClaimTrimmed(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8E65858()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_77_0(v3);
  OUTLINED_FUNCTION_10_4();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B8E658A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Kgqsapipb_Claim.id.setter(v1, v2);
}

uint64_t sub_1B8E65924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t))
{
  v11 = OUTLINED_FUNCTION_11_13();
  v13 = v12(v11);
  v14 = OUTLINED_FUNCTION_216_1(v13);
  v15 = *(v6 + v8);
  if ((v14 & 1) == 0)
  {
    v16 = a4(0);
    OUTLINED_FUNCTION_57_0(v16);
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v18 = a5(v17);
    OUTLINED_FUNCTION_192_2(v18);
  }

  OUTLINED_FUNCTION_9_3();
  v19 = *(v15 + 24);
  *(v15 + 16) = v7;
  *(v15 + 24) = v5;
}

uint64_t Kgqsapipb_Claim.id.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8E65A74(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Kgqsapipb_Claim.epid.setter(v1, v2);
}

uint64_t Kgqsapipb_Claim.epid.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_Claim.entityID.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E65BDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_Claim.entityID.setter();
}

void Kgqsapipb_Claim.entityID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_111_1(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E7078C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 56);
  *(v6 + 48) = v2;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Claim.entityID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 56);
  *(v1 + 48) = *(v0 + 48);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E65CE0(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Claim.entityID.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_34_4();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8E7078C(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 56);
    *(v9 + 48) = v4;
    *(v9 + 56) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Claim.order.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 64);
}

uint64_t Kgqsapipb_Claim.order.setter(int a1)
{
  v4 = OUTLINED_FUNCTION_67_3();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E7078C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 64) = a1;
  return result;
}

uint64_t Kgqsapipb_Claim.order.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 64);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E65E68(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_1(a1);
  v6 = OUTLINED_FUNCTION_135_3(v5);
  v7 = *(v4 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    OUTLINED_FUNCTION_36_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8E7078C(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 64) = v3;

  free(v1);
}

double Kgqsapipb_Claim.lionProb.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 72);
}

uint64_t Kgqsapipb_Claim.lionProb.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Kgqsapipb_Claim(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E7078C(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v7 + 72) = a1;
  return result;
}

uint64_t Kgqsapipb_Claim.lionProb.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_22_7();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v5 + 72);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E66008(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_1(a1);
  v3 = *(v2 + 72);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);
  v6 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 88);
    v10 = *(v1 + 80);
    OUTLINED_FUNCTION_36_1();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B8E7078C(v11);
    OUTLINED_FUNCTION_15(v12);
  }

  OUTLINED_FUNCTION_11_4();
  *(v8 + 72) = v3;

  free(v1);
}

uint64_t Kgqsapipb_Claim.propID.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E660E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_Claim.propID.setter();
}

void Kgqsapipb_Claim.propID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_111_1(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E7078C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 88);
  *(v6 + 80) = v2;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Claim.propID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E661EC(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Claim.propID.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_34_4();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8E7078C(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 88);
    *(v9 + 80) = v4;
    *(v9 + 88) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Claim.propName.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 96);
  v4 = *(v2 + 104);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E662BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_Claim.propName.setter();
}

void Kgqsapipb_Claim.propName.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_111_1(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E7078C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 104);
  *(v6 + 96) = v2;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Claim.propName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 104);
  *(v1 + 48) = *(v0 + 96);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E663C0(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Claim.propName.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_34_4();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8E7078C(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 104);
    *(v9 + 96) = v4;
    *(v9 + 104) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Claim.propEnName.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 112);
  v4 = *(v2 + 120);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E66490(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_Claim.propEnName.setter();
}

void Kgqsapipb_Claim.propEnName.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_111_1(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E7078C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 120);
  *(v6 + 112) = v2;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Claim.propEnName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 120);
  *(v1 + 48) = *(v0 + 112);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E66594(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Claim.propEnName.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_34_4();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8E7078C(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 120);
    *(v9 + 112) = v4;
    *(v9 + 120) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Claim.propType.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 128);
  v4 = *(v2 + 136);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E66664(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_Claim.propType.setter();
}

void Kgqsapipb_Claim.propType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_111_1(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E7078C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 136);
  *(v6 + 128) = v2;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Claim.propType.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 136);
  *(v1 + 48) = *(v0 + 128);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E66768(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Claim.propType.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_34_4();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8E7078C(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 136);
    *(v9 + 128) = v4;
    *(v9 + 136) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Claim.propTypeCode.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 144);
}

uint64_t Kgqsapipb_Claim.propTypeCode.setter(int a1)
{
  v4 = OUTLINED_FUNCTION_67_3();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E7078C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 144) = a1;
  return result;
}

uint64_t Kgqsapipb_Claim.propTypeCode.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 144);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E668F0(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_1(a1);
  v6 = OUTLINED_FUNCTION_135_3(v5);
  v7 = *(v4 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    OUTLINED_FUNCTION_36_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8E7078C(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 144) = v3;

  free(v1);
}

uint64_t Kgqsapipb_Claim.valueType.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 152);
  v4 = *(v2 + 160);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E669B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_Claim.valueType.setter();
}

void Kgqsapipb_Claim.valueType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_111_1(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E7078C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 160);
  *(v6 + 152) = v2;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Claim.valueType.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 160);
  *(v1 + 48) = *(v0 + 152);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E66ABC(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Claim.valueType.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_34_4();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8E7078C(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 160);
    *(v9 + 152) = v4;
    *(v9 + 160) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Claim.valueTypeCode.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 168);
}

uint64_t Kgqsapipb_Claim.valueTypeCode.setter(int a1)
{
  v4 = OUTLINED_FUNCTION_67_3();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E7078C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 168) = a1;
  return result;
}

uint64_t Kgqsapipb_Claim.valueTypeCode.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 168);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E66C44(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_1(a1);
  v6 = OUTLINED_FUNCTION_135_3(v5);
  v7 = *(v4 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    OUTLINED_FUNCTION_36_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8E7078C(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 168) = v3;

  free(v1);
}

uint64_t Kgqsapipb_Claim.value.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 176);
  v4 = *(v2 + 184);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E66D0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_Claim.value.setter();
}

void Kgqsapipb_Claim.value.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_111_1(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E7078C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 184);
  *(v6 + 176) = v2;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Claim.value.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 184);
  *(v1 + 48) = *(v0 + 176);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E66E10(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Claim.value.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_34_4();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8E7078C(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 184);
    *(v9 + 176) = v4;
    *(v9 + 184) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Claim.localizedValue.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 192);
  v4 = *(v2 + 200);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E66EE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_Claim.localizedValue.setter();
}

void Kgqsapipb_Claim.localizedValue.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_111_1(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E7078C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 200);
  *(v6 + 192) = v2;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Claim.localizedValue.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 200);
  *(v1 + 48) = *(v0 + 192);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E66FE4(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Claim.localizedValue.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_34_4();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8E7078C(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 200);
    *(v9 + 192) = v4;
    *(v9 + 200) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Claim.valuePrecision.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 208);
}

uint64_t Kgqsapipb_Claim.valuePrecision.setter(int a1)
{
  v4 = OUTLINED_FUNCTION_67_3();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E7078C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 208) = a1;
  return result;
}

uint64_t Kgqsapipb_Claim.valuePrecision.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 208);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E6716C(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_1(a1);
  v6 = OUTLINED_FUNCTION_135_3(v5);
  v7 = *(v4 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    OUTLINED_FUNCTION_36_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8E7078C(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 208) = v3;

  free(v1);
}

uint64_t Kgqsapipb_Claim.valueLocales.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 216);
}

uint64_t sub_1B8E6722C(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Claim.valueLocales.setter();
}

uint64_t Kgqsapipb_Claim.valueLocales.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_110_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E7078C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 216);
  *(v5 + 216) = v0;
}

uint64_t Kgqsapipb_Claim.valueLocales.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_Claim(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 216);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E67324(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Claim.valueLocales.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_29_6();
      v10 = type metadata accessor for Kgqsapipb_Claim._StorageClass(v9);
      OUTLINED_FUNCTION_57_0(v10);
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E7078C(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 216);
    *(v8 + 216) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Claim.qualifiers.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 224);
}

uint64_t sub_1B8E673F4(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Claim.qualifiers.setter();
}

uint64_t Kgqsapipb_Claim.qualifiers.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_110_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E7078C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 224);
  *(v5 + 224) = v0;
}

uint64_t Kgqsapipb_Claim.qualifiers.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_Claim(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 224);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E674EC(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Claim.qualifiers.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_29_6();
      v10 = type metadata accessor for Kgqsapipb_Claim._StorageClass(v9);
      OUTLINED_FUNCTION_57_0(v10);
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E7078C(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 224);
    *(v8 + 224) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Claim.qualifierInfo.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 232);
}

uint64_t sub_1B8E675BC(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Claim.qualifierInfo.setter();
}

uint64_t Kgqsapipb_Claim.qualifierInfo.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_110_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E7078C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 232);
  *(v5 + 232) = v0;
}

uint64_t Kgqsapipb_Claim.qualifierInfo.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_Claim(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 232);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E676B4(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Claim.qualifierInfo.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_29_6();
      v10 = type metadata accessor for Kgqsapipb_Claim._StorageClass(v9);
      OUTLINED_FUNCTION_57_0(v10);
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E7078C(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 232);
    *(v8 + 232) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Claim.attention.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 240);
  v4 = *(v2 + 248);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E6778C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_Claim.attention.setter();
}

void Kgqsapipb_Claim.attention.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_111_1(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E7078C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 248);
  *(v6 + 240) = v2;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Claim.attention.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 248);
  *(v1 + 48) = *(v0 + 240);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E67890(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Claim.attention.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_34_4();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8E7078C(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 248);
    *(v9 + 240) = v4;
    *(v9 + 248) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Claim.references.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 256);
}

uint64_t sub_1B8E67958(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Claim.references.setter();
}

uint64_t Kgqsapipb_Claim.references.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_110_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E7078C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 256);
  *(v5 + 256) = v0;
}

uint64_t Kgqsapipb_Claim.references.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_Claim(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 256);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E67A50(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Claim.references.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_29_6();
      v10 = type metadata accessor for Kgqsapipb_Claim._StorageClass(v9);
      OUTLINED_FUNCTION_57_0(v10);
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E7078C(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 256);
    *(v8 + 256) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Claim.geoContainers.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 264);
}

uint64_t sub_1B8E67B20(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Claim.geoContainers.setter();
}

uint64_t Kgqsapipb_Claim.geoContainers.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_110_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E7078C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 264);
  *(v5 + 264) = v0;
}

uint64_t Kgqsapipb_Claim.geoContainers.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_Claim(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 264);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E67C18(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Claim.geoContainers.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_29_6();
      v10 = type metadata accessor for Kgqsapipb_Claim._StorageClass(v9);
      OUTLINED_FUNCTION_57_0(v10);
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E7078C(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 264);
    *(v8 + 264) = v3;
  }

  free(v1);
}

float Kgqsapipb_Claim.confidence.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 272);
}

uint64_t Kgqsapipb_Claim.confidence.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Kgqsapipb_Claim(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E7078C(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v7 + 272) = a1;
  return result;
}

uint64_t Kgqsapipb_Claim.confidence.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 272);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E67DC4(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_1(a1);
  v3 = *(v2 + 80);
  v4 = *(v1 + 84);
  v5 = *(v1 + 72);
  v6 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 72);
    OUTLINED_FUNCTION_36_1();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B8E7078C(v11);
    OUTLINED_FUNCTION_15(v12);
  }

  OUTLINED_FUNCTION_11_4();
  *(v8 + 272) = v3;

  free(v1);
}

uint64_t Kgqsapipb_Claim.renderLocalization.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22_7();
  v11 = *(v1 + v10);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_106_0();
  v12 = type metadata accessor for Kgqsapipb_RenderLocalization(0);
  OUTLINED_FUNCTION_57(v2);
  if (v13)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = MEMORY[0x1E69E7CC0];
    type metadata accessor for Kgqsapipb_ClaimValues(0);
    a1[3] = sub_1B964C7B0();
    a1[4] = 0;
    v14 = a1 + *(v12 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v2);
    if (!v13)
    {
      return sub_1B8D9207C(v2, &qword_1EBABC878, &qword_1B965DC88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_39_1();
    return sub_1B8E71084();
  }

  return result;
}

uint64_t sub_1B8E67F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_167_3();
  v10 = v9(0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_79();
  sub_1B8E710DC();
  return a7(v7);
}

uint64_t Kgqsapipb_Claim.renderLocalization.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC878, &qword_1B965DC88);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_111_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E7078C(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_39_1();
  sub_1B8E71084();
  type metadata accessor for Kgqsapipb_RenderLocalization(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Kgqsapipb_Claim.renderLocalization.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Kgqsapipb_RenderLocalization(v10);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_22_7();
  v17 = *(v0 + v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = MEMORY[0x1E69E7CC0];
    type metadata accessor for Kgqsapipb_ClaimValues(0);
    v15[3] = sub_1B964C7B0();
    v15[4] = 0;
    v19 = v15 + *(v11 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v18)
    {
      sub_1B8D9207C(v1, &qword_1EBABC878, &qword_1B965DC88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_135_4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B8E68294()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_186();
    sub_1B8E710DC();
    v2(v3);
    sub_1B8E71134();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v8);
}

uint64_t Kgqsapipb_Claim.hasRenderLocalization.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22_7();
  v8 = *(v0 + v7);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_147_2();
  type metadata accessor for Kgqsapipb_RenderLocalization(0);
  v9 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v9, v10, v11);
  OUTLINED_FUNCTION_129_2();
  return v8;
}

Swift::Void __swiftcall Kgqsapipb_Claim.clearRenderLocalization()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC878, &qword_1B965DC88);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_67_3();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E7078C(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  type metadata accessor for Kgqsapipb_RenderLocalization(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

void Kgqsapipb_Claim.assertion.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Kgqsapipb_Assertion(v10);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_22_7();
  v16 = *(v0 + v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_33_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v17)
    {
      sub_1B8D9207C(v1, &qword_1EBAB9230, &qword_1B965DC80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_135_4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E6869C()
{
  OUTLINED_FUNCTION_167_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9230, &qword_1B965DC80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = v1(0);
  OUTLINED_FUNCTION_77_0(v8);
  v9 = *v0;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v10 = type metadata accessor for Kgqsapipb_Assertion(0);
  OUTLINED_FUNCTION_178(v7, 1, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  sub_1B8D9207C(v7, &qword_1EBAB9230, &qword_1B965DC80);
  return v12;
}

void sub_1B8E687CC()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9230, &qword_1B965DC80);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_91();
  v14 = v8(v13);
  v15 = OUTLINED_FUNCTION_216_1(v14);
  v16 = *(v8 + v0);
  if ((v15 & 1) == 0)
  {
    v17 = v6(0);
    OUTLINED_FUNCTION_57_0(v17);
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_40_0();
    v19 = v4(v18);
    OUTLINED_FUNCTION_192_2(v19);
  }

  type metadata accessor for Kgqsapipb_Assertion(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = *v2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8E68930@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_461();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t Kgqsapipb_Qualifierinfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_Qualifierinfo(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_Qualifierinfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  v2 = v1 + *(type metadata accessor for Kgqsapipb_Qualifierinfo(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_Claims.claims.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Kgqsapipb_Claims.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Kgqsapipb_Claims(v0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Kgqsapipb_Claims.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_Claims(v0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Kgqsapipb_Claims.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_Claims(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_Claims.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Kgqsapipb_Claims(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Kgqsapipb_Pronunciation.format.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Kgqsapipb_Pronunciation.format.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Kgqsapipb_Pronunciation.assertion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Kgqsapipb_Pronunciation(v9) + 32);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Kgqsapipb_Assertion(0);
  OUTLINED_FUNCTION_57(v1);
  if (v11)
  {
    Kgqsapipb_Assertion.init()(a1);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9230, &qword_1B965DC80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_21();
    return sub_1B8E71084();
  }

  return result;
}

uint64_t Kgqsapipb_Pronunciation.assertion.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Kgqsapipb_Pronunciation(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB9230, &qword_1B965DC80);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_122_0();
  sub_1B8E71084();
  type metadata accessor for Kgqsapipb_Assertion(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Kgqsapipb_Pronunciation.assertion.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9230, &qword_1B965DC80);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Kgqsapipb_Assertion(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v3[4] = __swift_coroFrameAllocStub(v9);
  *(v3 + 10) = *(type metadata accessor for Kgqsapipb_Pronunciation(0) + 32);
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v10)
  {
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_33_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v10)
    {
      sub_1B8D9207C(v6, &qword_1EBAB9230, &qword_1B965DC80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_135_4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8E68F74()
{
  OUTLINED_FUNCTION_243();
  v1 = *(*v0 + 10);
  v2 = (*v0)[3];
  v3 = (*v0)[4];
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = **v0;
  if (v7)
  {
    v8 = (*v0)[4];
    sub_1B8E710DC();
    sub_1B8D9207C(v6 + v1, &qword_1EBAB9230, &qword_1B965DC80);
    sub_1B8E71084();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
    sub_1B8E71134();
  }

  else
  {
    sub_1B8D9207C(v6 + v1, &qword_1EBAB9230, &qword_1B965DC80);
    OUTLINED_FUNCTION_0_21();
    sub_1B8E71084();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v5);
  }

  free(v3);
  free(v2);
  free(v4);
  OUTLINED_FUNCTION_242();

  free(v15);
}

uint64_t Kgqsapipb_Pronunciation.hasAssertion.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Kgqsapipb_Pronunciation(v7) + 32);
  OUTLINED_FUNCTION_147_2();
  type metadata accessor for Kgqsapipb_Assertion(0);
  v9 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v9, v10, v11);
  OUTLINED_FUNCTION_129_2();
  return v0;
}

Swift::Void __swiftcall Kgqsapipb_Pronunciation.clearAssertion()()
{
  v1 = type metadata accessor for Kgqsapipb_Pronunciation(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAB9230, &qword_1B965DC80);
  type metadata accessor for Kgqsapipb_Assertion(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B8E69198()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8E69220()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Kgqsapipb_Pronunciation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_Pronunciation(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_Pronunciation.Format.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B8E6930C@<X0>(uint64_t *a1@<X8>)
{
  result = Kgqsapipb_Pronunciation.Format.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8E69340(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E7C9AC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Kgqsapipb_Pronunciation.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 28) = 0;
  v2 = type metadata accessor for Kgqsapipb_Pronunciation(0);
  v3 = v1 + *(v2 + 28);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 32);
  type metadata accessor for Kgqsapipb_Assertion(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t static Kgqsapipb_Pronunciation.Format.allCases.getter()
{
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_521();
}

uint64_t (*static Kgqsapipb_Pronunciation.Format.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B8E694A0@<X0>(uint64_t *a1@<X8>)
{
  result = static Kgqsapipb_Pronunciation.Format.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8E694E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Kgqsapipb_Name.displayName.setter(v1, v2);
}

uint64_t Kgqsapipb_Name.displayName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Kgqsapipb_Name(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E6960C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0(v7);
  if (v9)
  {
    v10 = v8;
    OUTLINED_FUNCTION_191();
    v11 = OUTLINED_FUNCTION_461();
    v10(v11);
    v12 = *(v0 + 56);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_151_1();
    v14 = *(v6 + v1);
    if ((v13 & 1) == 0)
    {
      v15 = *(v0 + 72);
      v16 = *(v0 + 64);
      v17 = v5(0);
      OUTLINED_FUNCTION_57_0(v17);
      swift_allocObject();
      v18 = OUTLINED_FUNCTION_40_0();
      v14 = v4(v18);
      *(v16 + v15) = v14;
    }

    OUTLINED_FUNCTION_59_3();
    v19 = *(v14 + 24);
    *(v14 + 16) = v3;
    *(v14 + 24) = v2;
  }

  OUTLINED_FUNCTION_242();

  free(v20);
}

uint64_t sub_1B8E696D8()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_77_0(v3);
  OUTLINED_FUNCTION_10_4();
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B8E69724(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Kgqsapipb_Name.spokenName.setter(v1, v2);
}

uint64_t sub_1B8E697A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t))
{
  v11 = OUTLINED_FUNCTION_11_13();
  v13 = v12(v11);
  v14 = OUTLINED_FUNCTION_216_1(v13);
  v15 = *(v6 + v8);
  if ((v14 & 1) == 0)
  {
    v16 = a4(0);
    OUTLINED_FUNCTION_57_0(v16);
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v18 = a5(v17);
    OUTLINED_FUNCTION_192_2(v18);
  }

  OUTLINED_FUNCTION_9_3();
  v19 = *(v15 + 40);
  *(v15 + 32) = v7;
  *(v15 + 40) = v5;
}

uint64_t Kgqsapipb_Name.spokenName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Kgqsapipb_Name(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E698E4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0(v7);
  if (v9)
  {
    v10 = v8;
    OUTLINED_FUNCTION_191();
    v11 = OUTLINED_FUNCTION_461();
    v10(v11);
    v12 = *(v0 + 56);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_151_1();
    v14 = *(v6 + v1);
    if ((v13 & 1) == 0)
    {
      v15 = *(v0 + 72);
      v16 = *(v0 + 64);
      v17 = v5(0);
      OUTLINED_FUNCTION_57_0(v17);
      swift_allocObject();
      v18 = OUTLINED_FUNCTION_40_0();
      v14 = v4(v18);
      *(v16 + v15) = v14;
    }

    OUTLINED_FUNCTION_59_3();
    v19 = *(v14 + 40);
    *(v14 + 32) = v3;
    *(v14 + 40) = v2;
  }

  OUTLINED_FUNCTION_242();

  free(v20);
}

uint64_t sub_1B8E699B0()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = *(v0 + *(v2(v1) + 20));
  OUTLINED_FUNCTION_10_4();
  v4 = *(v3 + 48);
}

void sub_1B8E699F8(uint64_t *a1)
{
  v1 = *a1;

  Kgqsapipb_Name.orderedPronunciation.setter();
}

void sub_1B8E69A64()
{
  OUTLINED_FUNCTION_193_0();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_65_3();
  v9 = *(v8(v7) + 20);
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = v6(0);
    OUTLINED_FUNCTION_57_0(v13);
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v12 = v4(v14);
    *(v2 + v9) = v12;
  }

  OUTLINED_FUNCTION_9_3();
  v15 = *(v12 + 48);
  *(v12 + 48) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Name.orderedPronunciation.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_Name(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 48);

  return OUTLINED_FUNCTION_514();
}

void Kgqsapipb_Name.displayNameAssertion.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Kgqsapipb_Assertion(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  v14 = type metadata accessor for Kgqsapipb_Name(0);
  OUTLINED_FUNCTION_77_0(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_33_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9230, &qword_1B965DC80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_135_4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void Kgqsapipb_Name.spokenNameAssertion.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Kgqsapipb_Assertion(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  v14 = type metadata accessor for Kgqsapipb_Name(0);
  OUTLINED_FUNCTION_77_0(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_33_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9230, &qword_1B965DC80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_135_4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E6A000(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Name.qualifiers.setter(v2);
}

uint64_t Kgqsapipb_Name.qualifiers.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_Name(v4);
  OUTLINED_FUNCTION_53_2(v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI14Kgqsapipb_NameP33_FBC61C2DB3C387DAC19C4543E8DB96DE13_StorageClass__qualifiers;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + v6);

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_Localizations.locale.getter()
{
  OUTLINED_FUNCTION_50_3();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 16);
}

uint64_t sub_1B8E6A1CC(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Localizations.locale.setter();
}

uint64_t Kgqsapipb_Localizations.locale.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Kgqsapipb_Localizations(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = type metadata accessor for Kgqsapipb_Localizations._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v7);
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E76FD0(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  OUTLINED_FUNCTION_9_3();
  v10 = *(v6 + 16);
  *(v6 + 16) = v0;
}

uint64_t Kgqsapipb_Localizations.locale.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_Localizations(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 16);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E6A2D4(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Localizations.locale.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_29_6();
      v10 = type metadata accessor for Kgqsapipb_Localizations._StorageClass(v9);
      OUTLINED_FUNCTION_57_0(v10);
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E76FD0(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 16);
    *(v8 + 16) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Localizations.primary.getter()
{
  OUTLINED_FUNCTION_50_3();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 24);
}

uint64_t sub_1B8E6A3A4(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Localizations.primary.setter();
}

uint64_t Kgqsapipb_Localizations.primary.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Kgqsapipb_Localizations(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = type metadata accessor for Kgqsapipb_Localizations._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v7);
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E76FD0(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  OUTLINED_FUNCTION_9_3();
  v10 = *(v6 + 24);
  *(v6 + 24) = v0;
}

uint64_t Kgqsapipb_Localizations.primary.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_Localizations(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 24);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E6A4AC(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Localizations.primary.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_29_6();
      v10 = type metadata accessor for Kgqsapipb_Localizations._StorageClass(v9);
      OUTLINED_FUNCTION_57_0(v10);
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E76FD0(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 24);
    *(v8 + 24) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Localizations.secondary.getter()
{
  OUTLINED_FUNCTION_50_3();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 32);
}

uint64_t sub_1B8E6A57C(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Localizations.secondary.setter();
}

uint64_t Kgqsapipb_Localizations.secondary.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Kgqsapipb_Localizations(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = type metadata accessor for Kgqsapipb_Localizations._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v7);
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E76FD0(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  OUTLINED_FUNCTION_9_3();
  v10 = *(v6 + 32);
  *(v6 + 32) = v0;
}

uint64_t Kgqsapipb_Localizations.secondary.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_Localizations(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 32);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E6A684(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Localizations.secondary.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_29_6();
      v10 = type metadata accessor for Kgqsapipb_Localizations._StorageClass(v9);
      OUTLINED_FUNCTION_57_0(v10);
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E76FD0(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 32);
    *(v8 + 32) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_Localizations.descriptions.getter()
{
  OUTLINED_FUNCTION_50_3();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 40);
}

uint64_t sub_1B8E6A754(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Localizations.descriptions.setter();
}

uint64_t Kgqsapipb_Localizations.descriptions.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Kgqsapipb_Localizations(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = type metadata accessor for Kgqsapipb_Localizations._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v7);
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E76FD0(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  OUTLINED_FUNCTION_9_3();
  v10 = *(v6 + 40);
  *(v6 + 40) = v0;
}

uint64_t Kgqsapipb_Localizations.descriptions.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_Localizations(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 40);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E6A85C(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Localizations.descriptions.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_29_6();
      v10 = type metadata accessor for Kgqsapipb_Localizations._StorageClass(v9);
      OUTLINED_FUNCTION_57_0(v10);
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E76FD0(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 40);
    *(v8 + 40) = v3;
  }

  free(v1);
}

void sub_1B8E6A908(uint64_t *a1)
{
  v1 = *a1;

  Kgqsapipb_Localizations.shortAbstract.setter();
}

uint64_t Kgqsapipb_Localizations.shortAbstract.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_Localizations(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 48);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E6AA20()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_22_5(v2);
  if (v6)
  {
    v7 = v5;
    v8 = OUTLINED_FUNCTION_61_1();
    v7(v8);
    v9 = *(v0 + 48);
  }

  else
  {
    v10 = v4;
    v11 = v3;
    v12 = *(v0 + 64);
    v13 = *(v0 + 56);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v0 + 64);
      v18 = *(v0 + 56);
      v19 = v11(0);
      OUTLINED_FUNCTION_57_0(v19);
      swift_allocObject();
      v20 = OUTLINED_FUNCTION_40_0();
      v16 = v10(v20);
      *(v18 + v17) = v16;
    }

    OUTLINED_FUNCTION_59_3();
    v21 = *(v16 + 48);
    *(v16 + 48) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v22);
}

uint64_t Kgqsapipb_Localizations.primaryName.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Kgqsapipb_Localizations(v9);
  OUTLINED_FUNCTION_77_0(v10);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_106_0();
  v11 = type metadata accessor for Kgqsapipb_Name(0);
  OUTLINED_FUNCTION_57(v1);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v11 + 20);
    if (qword_1EBAB63E8 != -1)
    {
      OUTLINED_FUNCTION_114_3();
    }

    *(a1 + v13) = qword_1EBABC7C0;
    v14 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v15, v11);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBABC880, &unk_1B965DC90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_18_6();
    return sub_1B8E71084();
  }

  return result;
}

uint64_t Kgqsapipb_Localizations.primaryName.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC880, &unk_1B965DC90);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Kgqsapipb_Localizations(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Kgqsapipb_Localizations._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B8E76FD0(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_18_6();
  sub_1B8E71084();
  type metadata accessor for Kgqsapipb_Name(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Kgqsapipb_Localizations.primaryName.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Kgqsapipb_Name(v10);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_50_3();
  v17 = *(v0 + v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v19 = *(v11 + 20);
    if (qword_1EBAB63E8 != -1)
    {
      OUTLINED_FUNCTION_114_3();
    }

    *&v15[v19] = qword_1EBABC7C0;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v11);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBABC880, &unk_1B965DC90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_18_6();
    OUTLINED_FUNCTION_135_4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Kgqsapipb_Localizations.hasPrimaryName.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Kgqsapipb_Localizations(v7);
  OUTLINED_FUNCTION_77_0(v8);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_147_2();
  type metadata accessor for Kgqsapipb_Name(0);
  v9 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v9, v10, v11);
  OUTLINED_FUNCTION_129_2();
  return v0;
}

Swift::Void __swiftcall Kgqsapipb_Localizations.clearPrimaryName()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC880, &unk_1B965DC90);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Kgqsapipb_Localizations(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Kgqsapipb_Localizations._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B8E76FD0(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  type metadata accessor for Kgqsapipb_Name(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t sub_1B8E6B060(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_178_1();
  v6 = v5(v4);
  OUTLINED_FUNCTION_77_0(v6);
  v7 = *a2;
  OUTLINED_FUNCTION_10_4();
  v8 = *(v2 + v7);
}

uint64_t sub_1B8E6B0AC(uint64_t *a1)
{
  v1 = *a1;

  return Kgqsapipb_Localizations.secondaryName.setter(v2);
}

uint64_t sub_1B8E6B120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  v11 = OUTLINED_FUNCTION_313();
  v13 = v12(v11);
  v14 = OUTLINED_FUNCTION_216_1(v13);
  v15 = *(v6 + v7);
  if ((v14 & 1) == 0)
  {
    v16 = a3(0);
    OUTLINED_FUNCTION_57_0(v16);
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v18 = a4(v17);
    OUTLINED_FUNCTION_192_2(v18);
  }

  v19 = *a5;
  OUTLINED_FUNCTION_9_3();
  v20 = *(v15 + v19);
  *(v15 + v19) = v5;
}

uint64_t Kgqsapipb_Localizations.secondaryName.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_Localizations(v4);
  OUTLINED_FUNCTION_53_2(v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_LocalizationsP33_FBC61C2DB3C387DAC19C4543E8DB96DE13_StorageClass__secondaryName;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + v6);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E6B27C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_22_5(v2);
  if (v7)
  {
    v8 = v6;
    v9 = OUTLINED_FUNCTION_61_1();
    v8(v9);
    v10 = *(v0 + 48);
  }

  else
  {
    v11 = v5;
    v12 = v4;
    v13 = v3;
    v14 = *(v0 + 64);
    v15 = *(v0 + 56);
    v16 = *(v15 + v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v15 + v14);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = *(v0 + 64);
      v20 = *(v0 + 56);
      v21 = v13(0);
      OUTLINED_FUNCTION_57_0(v21);
      swift_allocObject();
      v22 = OUTLINED_FUNCTION_40_0();
      v18 = v12(v22);
      *(v20 + v19) = v18;
    }

    v23 = *v11;
    OUTLINED_FUNCTION_59_3();
    v24 = *(v18 + v23);
    *(v18 + v23) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v25);
}

void sub_1B8E6B368()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_167_3();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  v11 = v1(0);
  OUTLINED_FUNCTION_77_0(v11);
  v12 = *v0;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  type metadata accessor for Kgqsapipb_Assertion(0);
  OUTLINED_FUNCTION_57(v2);
  if (v13)
  {
    Kgqsapipb_Assertion.init()(v4);
    OUTLINED_FUNCTION_57(v2);
    if (!v13)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9230, &qword_1B965DC80);
    }
  }

  else
  {
    sub_1B8E71084();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B8E6B4C8()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9230, &qword_1B965DC80);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_91();
  v15 = *(v8(v14) + 20);
  v16 = *(v0 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v0 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = v6(0);
    OUTLINED_FUNCTION_57_0(v19);
    swift_allocObject();
    v20 = OUTLINED_FUNCTION_40_0();
    *(v9 + v15) = v4(v20);
  }

  OUTLINED_FUNCTION_461();
  sub_1B8E71084();
  type metadata accessor for Kgqsapipb_Assertion(0);
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  v25 = *v2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

void Kgqsapipb_Localizations.assertion.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Kgqsapipb_Assertion(v10);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_50_3();
  v16 = *(v0 + v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_33_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v17)
    {
      sub_1B8D9207C(v1, &qword_1EBAB9230, &qword_1B965DC80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_135_4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Kgqsapipb_Langval.language.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_Langval.language.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Kgqsapipb_Langval.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_Langval.value.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_1B8E6B91C()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8E6B9A4()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Kgqsapipb_Langval.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_Langval(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_Sitelink.url.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_Sitelink.url.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Kgqsapipb_Sitelink.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_Sitelink(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8E6BBA4@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = v2;
  v4 = v1 + *(v3(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_Localizedurl.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_Localizedurl(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8E6BCA8@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v4 = v1 + *(v3(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_Reference.sourceID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_Reference.sourceID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

void Kgqsapipb_Reference.pipeline.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Kgqsapipb_Reference.pipeline.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Kgqsapipb_Reference.annotation.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_Reference.annotation.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Kgqsapipb_Reference.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Kgqsapipb_Reference(v0) + 44);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Kgqsapipb_Reference.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_Reference(v0) + 44);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Kgqsapipb_Reference.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_Reference(v0) + 44);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8E6BFB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E7CA00();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Kgqsapipb_Reference.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = 0;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = 0;
  *(v1 + 72) = 1;
  *(v1 + 80) = 0;
  *(v1 + 88) = v2;
  v4 = v1 + *(type metadata accessor for Kgqsapipb_Reference(0) + 44);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t static Kgqsapipb_Reference.Origin.allCases.getter()
{
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_521();
}

uint64_t sub_1B8E6C0C8()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_173_0();
  swift_beginAccess();
  v2 = *v0;
  *v0 = v1;
}

uint64_t (*static Kgqsapipb_Reference.Origin.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B8E6C15C@<X0>(uint64_t *a1@<X8>)
{
  result = static Kgqsapipb_Reference.Origin.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Kgqsapipb_Property.enlabel.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Kgqsapipb_Property.claims.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Kgqsapipb_Property.labels.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Kgqsapipb_Property.descriptions.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t Kgqsapipb_Property.aliases.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t Kgqsapipb_Property.shortAbstract.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t Kgqsapipb_Property.locale.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t Kgqsapipb_Property.primary.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t Kgqsapipb_Property.secondary.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t Kgqsapipb_Property.localizations.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t Kgqsapipb_Property.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Kgqsapipb_Property(v0) + 68);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Kgqsapipb_Property.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_Property(v0) + 68);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Kgqsapipb_Property.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_Property(v0) + 68);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_Property.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v2 = MEMORY[0x1E69E7CC0];
  v1[2] = MEMORY[0x1E69E7CC0];
  v1[3] = v2;
  v1[4] = v2;
  v1[5] = v2;
  v1[6] = v2;
  v1[7] = v2;
  v1[8] = v2;
  v1[9] = v2;
  v1[10] = v2;
  v1[11] = v2;
  v3 = type metadata accessor for Kgqsapipb_Property(0);
  v1[12] = 0;
  v1[13] = 0;
  v4 = v1 + *(v3 + 68);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8E6C69C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC6D8);
  __swift_project_value_buffer(v0, qword_1EBABC6D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1B965A600;
  v4 = v44 + v3 + v1[14];
  *(v44 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v44 + v3 + v2 + v1[14];
  *(v44 + v3 + v2) = 2;
  *v8 = "domain";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v44 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "locale";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v44 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "label";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v44 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "enlabel";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v7();
  v15 = (v44 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "description";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v44 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 10;
  *v18 = "claims";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  v19 = (v44 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 20;
  *v20 = "labels";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v7();
  v21 = (v44 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 21;
  *v22 = "descriptions";
  *(v22 + 1) = 12;
  v22[16] = 2;
  v7();
  v23 = (v44 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 22;
  *v24 = "siteLinks";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v7();
  v25 = (v44 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 23;
  *v26 = "aliases";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v7();
  v27 = (v44 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 24;
  *v28 = "shortAbstract";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v7();
  v29 = (v44 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 30;
  *v30 = "primary";
  *(v30 + 1) = 7;
  v30[16] = 2;
  v7();
  v31 = (v44 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 31;
  *v32 = "secondary";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v7();
  v33 = (v44 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 41;
  *v34 = "localizations";
  *(v34 + 1) = 13;
  v34[16] = 2;
  v7();
  v35 = (v44 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 42;
  *v36 = "timestamp";
  *(v36 + 1) = 9;
  v36[16] = 2;
  v7();
  v37 = (v44 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 43;
  *v38 = "indexedTimestamp";
  *(v38 + 1) = 16;
  v38[16] = 2;
  v7();
  v39 = (v44 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 44;
  *v40 = "claimMap";
  *(v40 + 1) = 8;
  v40[16] = 2;
  v7();
  v41 = (v44 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 100;
  *v42 = "assertion";
  *(v42 + 1) = 9;
  v42[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8E6CCE4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = MEMORY[0x1E69E7CC0];
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0xE000000000000000;
  *(v0 + 104) = v1;
  *(v0 + 112) = v1;
  *(v0 + 120) = v1;
  *(v0 + 128) = v1;
  *(v0 + 136) = v1;
  *(v0 + 144) = v1;
  *(v0 + 152) = v1;
  *(v0 + 160) = v1;
  *(v0 + 168) = v1;
  type metadata accessor for Kgqsapipb_Claims(0);
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  *(v0 + 192) = sub_1B964C7B0();
  v2 = OBJC_IVAR____TtCV10PegasusAPI16Kgqsapipb_EntityP33_FBC61C2DB3C387DAC19C4543E8DB96DE13_StorageClass__assertion;
  v3 = type metadata accessor for Kgqsapipb_Assertion(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  return v0;
}

uint64_t sub_1B8E6CD90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9230, &qword_1B965DC80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v77 = &v61 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  v6 = MEMORY[0x1E69E7CC0];
  *(v1 + 48) = MEMORY[0x1E69E7CC0];
  *(v1 + 56) = 0;
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = 0;
  v62 = (v1 + 72);
  *(v1 + 80) = 0xE000000000000000;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0xE000000000000000;
  *(v1 + 104) = v6;
  v63 = (v1 + 88);
  v64 = (v1 + 104);
  *(v1 + 112) = v6;
  v65 = (v1 + 112);
  *(v1 + 120) = v6;
  v66 = (v1 + 120);
  *(v1 + 128) = v6;
  v67 = (v1 + 128);
  *(v1 + 136) = v6;
  v68 = (v1 + 136);
  *(v1 + 144) = v6;
  v69 = (v1 + 144);
  *(v1 + 152) = v6;
  v70 = (v1 + 152);
  *(v1 + 160) = v6;
  v71 = (v1 + 160);
  *(v1 + 168) = v6;
  v72 = (v1 + 168);
  type metadata accessor for Kgqsapipb_Claims(0);
  *(v1 + 184) = 0;
  v74 = (v1 + 184);
  *(v1 + 176) = 0;
  v73 = (v1 + 176);
  *(v1 + 192) = sub_1B964C7B0();
  v75 = (v1 + 192);
  v7 = OBJC_IVAR____TtCV10PegasusAPI16Kgqsapipb_EntityP33_FBC61C2DB3C387DAC19C4543E8DB96DE13_StorageClass__assertion;
  v76 = OBJC_IVAR____TtCV10PegasusAPI16Kgqsapipb_EntityP33_FBC61C2DB3C387DAC19C4543E8DB96DE13_StorageClass__assertion;
  v8 = type metadata accessor for Kgqsapipb_Assertion(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  swift_beginAccess();
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  swift_beginAccess();
  v11 = *(v1 + 24);
  *(v1 + 16) = v10;
  *(v1 + 24) = v9;

  swift_beginAccess();
  v12 = *(a1 + 32);
  LOBYTE(v9) = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v12;
  *(v1 + 40) = v9;
  swift_beginAccess();
  v13 = *(a1 + 48);
  swift_beginAccess();
  v14 = *(v1 + 48);
  *(v1 + 48) = v13;

  swift_beginAccess();
  v16 = *(a1 + 56);
  v15 = *(a1 + 64);
  swift_beginAccess();
  v17 = *(v1 + 64);
  *(v1 + 56) = v16;
  *(v1 + 64) = v15;

  swift_beginAccess();
  v19 = *(a1 + 72);
  v18 = *(a1 + 80);
  v20 = v62;
  swift_beginAccess();
  v21 = *(v1 + 80);
  *v20 = v19;
  *(v1 + 80) = v18;

  swift_beginAccess();
  v23 = *(a1 + 88);
  v22 = *(a1 + 96);
  v24 = v63;
  swift_beginAccess();
  v25 = *(v1 + 96);
  *v24 = v23;
  *(v1 + 96) = v22;

  swift_beginAccess();
  v26 = *(a1 + 104);
  v27 = v64;
  swift_beginAccess();
  v28 = *v27;
  *v27 = v26;

  swift_beginAccess();
  v29 = *(a1 + 112);
  v30 = v65;
  swift_beginAccess();
  v31 = *v30;
  *v30 = v29;

  swift_beginAccess();
  v32 = *(a1 + 120);
  v33 = v66;
  swift_beginAccess();
  v34 = *v33;
  *v33 = v32;

  swift_beginAccess();
  v35 = *(a1 + 128);
  v36 = v67;
  swift_beginAccess();
  v37 = *v36;
  *v36 = v35;

  swift_beginAccess();
  v38 = *(a1 + 136);
  v39 = v68;
  swift_beginAccess();
  v40 = *v39;
  *v39 = v38;

  swift_beginAccess();
  v41 = *(a1 + 144);
  v42 = v69;
  swift_beginAccess();
  v43 = *v42;
  *v42 = v41;

  swift_beginAccess();
  v44 = *(a1 + 152);
  v45 = v70;
  swift_beginAccess();
  v46 = *v45;
  *v45 = v44;

  swift_beginAccess();
  v47 = *(a1 + 160);
  v48 = v71;
  swift_beginAccess();
  v49 = *v48;
  *v48 = v47;

  swift_beginAccess();
  v50 = *(a1 + 168);
  v51 = v72;
  swift_beginAccess();
  v52 = *v51;
  *v51 = v50;

  swift_beginAccess();
  v53 = *(a1 + 176);
  v54 = v73;
  swift_beginAccess();
  *v54 = v53;
  swift_beginAccess();
  v55 = *(a1 + 184);
  v56 = v74;
  swift_beginAccess();
  *v56 = v55;
  swift_beginAccess();
  v57 = *(a1 + 192);
  v58 = v75;
  swift_beginAccess();
  v59 = *v58;
  *v58 = v57;

  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

void *sub_1B8E6D520()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[15];

  v9 = v0[16];

  v10 = v0[17];

  v11 = v0[18];

  v12 = v0[19];

  v13 = v0[20];

  v14 = v0[21];

  v15 = v0[24];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI16Kgqsapipb_EntityP33_FBC61C2DB3C387DAC19C4543E8DB96DE13_StorageClass__assertion, &qword_1EBAB9230, &qword_1B965DC80);
  return v0;
}

uint64_t sub_1B8E6D640()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8E75B3C();
        break;
      case 2:
        sub_1B8E6D8E0();
        break;
      case 3:
      case 8:
      case 9:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
        continue;
      case 4:
        sub_1B8E77940();
        break;
      case 5:
        sub_1B8DE24EC();
        break;
      case 6:
        sub_1B8E6D974();
        break;
      case 7:
        sub_1B8E6D9F8();
        break;
      case 10:
        sub_1B8E6DA7C();
        break;
      case 20:
        sub_1B8E6DB48();
        break;
      case 21:
        sub_1B8E6DC14();
        break;
      case 22:
        sub_1B8E6DCE0();
        break;
      case 23:
        sub_1B8E6DDAC();
        break;
      case 24:
        sub_1B8E6DE78();
        break;
      case 30:
        sub_1B8E2FAB0();
        break;
      case 31:
        sub_1B8E2FB34();
        break;
      case 41:
        sub_1B8E6DF44();
        break;
      case 42:
        sub_1B8E2FC84();
        break;
      case 43:
        sub_1B8E2FD08();
        break;
      case 44:
        sub_1B8E6E010();
        break;
      default:
        if (result == 100)
        {
          sub_1B8E77B5C();
        }

        break;
    }
  }
}

uint64_t sub_1B8E6D8E0()
{
  swift_beginAccess();
  sub_1B8E7EA38();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8E6D974()
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E6D9F8()
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E6DA7C()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_Claim(0);
  sub_1B8CD1E68(&qword_1EBABBDA0, type metadata accessor for Kgqsapipb_Claim);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E6DB48()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_Langval(0);
  sub_1B8CD1E68(&qword_1EBABC900, type metadata accessor for Kgqsapipb_Langval);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E6DC14()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_Langval(0);
  sub_1B8CD1E68(&qword_1EBABC900, type metadata accessor for Kgqsapipb_Langval);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E6DCE0()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_Sitelink(0);
  sub_1B8CD1E68(&qword_1EBABCA50, type metadata accessor for Kgqsapipb_Sitelink);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E6DDAC()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_Langval(0);
  sub_1B8CD1E68(&qword_1EBABC900, type metadata accessor for Kgqsapipb_Langval);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E6DE78()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_Langval(0);
  sub_1B8CD1E68(&qword_1EBABC900, type metadata accessor for Kgqsapipb_Langval);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E6DF44()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_Localizations(0);
  sub_1B8CD1E68(&qword_1EBABC908, type metadata accessor for Kgqsapipb_Localizations);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E6E010()
{
  swift_beginAccess();
  sub_1B964C280();
  type metadata accessor for Kgqsapipb_Claims(0);
  sub_1B8CD1E68(&qword_1EBABC9E8, type metadata accessor for Kgqsapipb_Claims);
  sub_1B8CD1E68(&qword_1EBABC8A8, type metadata accessor for Kgqsapipb_Claims);
  sub_1B964C3A0();
  return swift_endAccess();
}

uint64_t sub_1B8E6E164(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9230, &qword_1B965DC80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v25 - v5;
  v29 = type metadata accessor for Kgqsapipb_Assertion(0);
  v7 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  swift_beginAccess();
  v8 = *(a1 + 24);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = *(a1 + 24);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 32))
  {
    v11 = *(a1 + 40);
    v27 = *(a1 + 32);
    v28 = v11;
    sub_1B8E7EA38();
    result = sub_1B964C680();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 48) + 16))
  {
    v13 = *(a1 + 48);

    sub_1B964C6E0();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v14 = *(a1 + 64);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *(a1 + 56) & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = *(a1 + 64);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v17 = *(a1 + 80);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *(a1 + 72) & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = *(a1 + 80);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v20 = *(a1 + 96);
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = *(a1 + 88) & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = *(a1 + 96);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 104) + 16))
  {
    v26 = type metadata accessor for Kgqsapipb_Claim(0);
    sub_1B8CD1E68(&qword_1EBABBDA0, type metadata accessor for Kgqsapipb_Claim);

    sub_1B964C730();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 112) + 16))
  {
    v26 = type metadata accessor for Kgqsapipb_Langval(0);
    sub_1B8CD1E68(&qword_1EBABC900, type metadata accessor for Kgqsapipb_Langval);

    sub_1B964C730();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 120) + 16))
  {
    v26 = type metadata accessor for Kgqsapipb_Langval(0);
    sub_1B8CD1E68(&qword_1EBABC900, type metadata accessor for Kgqsapipb_Langval);

    sub_1B964C730();
    if (!v1)
    {

      goto LABEL_35;
    }
  }

LABEL_35:
  swift_beginAccess();
  if (*(*(a1 + 128) + 16))
  {
    v26 = type metadata accessor for Kgqsapipb_Sitelink(0);
    sub_1B8CD1E68(&qword_1EBABCA50, type metadata accessor for Kgqsapipb_Sitelink);

    sub_1B964C730();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (!*(*(a1 + 136) + 16) || (v26 = type metadata accessor for Kgqsapipb_Langval(0), sub_1B8CD1E68(&qword_1EBABC900, type metadata accessor for Kgqsapipb_Langval), , sub_1B964C730(), result = , !v1))
  {
    swift_beginAccess();
    if (!*(*(a1 + 144) + 16) || (v26 = type metadata accessor for Kgqsapipb_Langval(0), sub_1B8CD1E68(&qword_1EBABC900, type metadata accessor for Kgqsapipb_Langval), , sub_1B964C730(), result = , !v1))
    {
      swift_beginAccess();
      if (!*(*(a1 + 152) + 16) || (v23 = *(a1 + 152), , sub_1B964C6E0(), result = , !v1))
      {
        swift_beginAccess();
        if (!*(*(a1 + 160) + 16) || (v24 = *(a1 + 160), , sub_1B964C6E0(), result = , !v1))
        {
          swift_beginAccess();
          if (!*(*(a1 + 168) + 16) || (v26 = type metadata accessor for Kgqsapipb_Localizations(0), sub_1B8CD1E68(&qword_1EBABC908, type metadata accessor for Kgqsapipb_Localizations), , sub_1B964C730(), result = , !v1))
          {
            swift_beginAccess();
            if (!*(a1 + 176) || (result = sub_1B964C6D0(), !v1))
            {
              swift_beginAccess();
              if (!*(a1 + 184) || (result = sub_1B964C6D0(), !v1))
              {
                swift_beginAccess();
                v26 = *(a1 + 192);
                if (!*(v26 + 16) || (v25[2] = sub_1B964C280(), v25[1] = type metadata accessor for Kgqsapipb_Claims(0), v25[0] = sub_1B8CD1E68(&qword_1EBABC9E8, type metadata accessor for Kgqsapipb_Claims), sub_1B8CD1E68(&qword_1EBABC8A8, type metadata accessor for Kgqsapipb_Claims), , sub_1B964C5E0(), result = , !v1))
                {
                  swift_beginAccess();
                  sub_1B8D92024();
                  if (__swift_getEnumTagSinglePayload(v6, 1, v29) == 1)
                  {
                    return sub_1B8D9207C(v6, &qword_1EBAB9230, &qword_1B965DC80);
                  }

                  else
                  {
                    sub_1B8E71084();
                    sub_1B8CD1E68(&qword_1EBABB6E0, type metadata accessor for Kgqsapipb_Assertion);
                    sub_1B964C740();
                    return sub_1B8E71134();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B8E6EBC8()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Kgqsapipb_Assertion(0);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v71 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9238, &unk_1B964DA20);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_79();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9230, &qword_1B965DC80);
  v16 = OUTLINED_FUNCTION_183(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_66();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v69 - v23;
  OUTLINED_FUNCTION_521();
  v26 = *(v4 + 16);
  v25 = *(v4 + 24);
  OUTLINED_FUNCTION_521();
  v27 = v26 == *(v2 + 16) && v25 == *(v2 + 24);
  if (v27 || (sub_1B964C9F0() & 1) != 0)
  {
    OUTLINED_FUNCTION_521();
    v28 = *(v4 + 32);
    v29 = *(v4 + 40);
    OUTLINED_FUNCTION_521();
    v30 = *(v2 + 40);
    if (sub_1B8D92198(v28, v29, *(v2 + 32)))
    {
      OUTLINED_FUNCTION_521();
      v31 = *(v4 + 48);
      OUTLINED_FUNCTION_521();
      if (sub_1B8D6123C(v31, *(v2 + 48)))
      {
        OUTLINED_FUNCTION_521();
        v32 = *(v4 + 56);
        v33 = *(v4 + 64);
        OUTLINED_FUNCTION_521();
        v34 = v32 == *(v2 + 56) && v33 == *(v2 + 64);
        if (v34 || (OUTLINED_FUNCTION_150_1() & 1) != 0)
        {
          OUTLINED_FUNCTION_521();
          v35 = *(v4 + 72);
          v36 = *(v4 + 80);
          OUTLINED_FUNCTION_521();
          v37 = v35 == *(v2 + 72) && v36 == *(v2 + 80);
          if (v37 || (OUTLINED_FUNCTION_150_1() & 1) != 0)
          {
            OUTLINED_FUNCTION_521();
            v38 = *(v4 + 88);
            v39 = *(v4 + 96);
            OUTLINED_FUNCTION_521();
            v40 = v38 == *(v2 + 88) && v39 == *(v2 + 96);
            if (v40 || (OUTLINED_FUNCTION_150_1() & 1) != 0)
            {
              v70 = v0;
              OUTLINED_FUNCTION_521();
              v41 = *(v4 + 104);
              OUTLINED_FUNCTION_521();
              v42 = *(v2 + 104);

              sub_1B8D7C6CC();
              v44 = v43;

              if ((v44 & 1) == 0)
              {
                goto LABEL_36;
              }

              OUTLINED_FUNCTION_521();
              v45 = *(v4 + 112);
              OUTLINED_FUNCTION_521();
              v46 = *(v2 + 112);

              OUTLINED_FUNCTION_236();
              sub_1B8D7DB7C();
              OUTLINED_FUNCTION_141_4();

              if ((v42 & 1) == 0)
              {
                goto LABEL_36;
              }

              OUTLINED_FUNCTION_521();
              v47 = *(v4 + 120);
              OUTLINED_FUNCTION_521();
              v48 = *(v2 + 120);

              OUTLINED_FUNCTION_236();
              sub_1B8D7DB7C();
              OUTLINED_FUNCTION_141_4();

              OUTLINED_FUNCTION_521();
              v49 = *(v4 + 128);
              OUTLINED_FUNCTION_521();
              v50 = *(v2 + 128);

              OUTLINED_FUNCTION_236();
              sub_1B8D89060();
              OUTLINED_FUNCTION_141_4();

              OUTLINED_FUNCTION_521();
              v51 = *(v4 + 136);
              OUTLINED_FUNCTION_521();
              v52 = *(v2 + 136);

              OUTLINED_FUNCTION_236();
              sub_1B8D7DB7C();
              OUTLINED_FUNCTION_141_4();

              OUTLINED_FUNCTION_521();
              v53 = *(v4 + 144);
              OUTLINED_FUNCTION_521();
              v54 = *(v2 + 144);

              OUTLINED_FUNCTION_236();
              sub_1B8D7DB7C();
              OUTLINED_FUNCTION_141_4();

              OUTLINED_FUNCTION_521();
              v55 = *(v4 + 152);
              OUTLINED_FUNCTION_521();
              if ((sub_1B8D6123C(v55, *(v2 + 152)) & 1) == 0)
              {
                goto LABEL_36;
              }

              OUTLINED_FUNCTION_521();
              v56 = *(v4 + 160);
              OUTLINED_FUNCTION_521();
              if ((sub_1B8D6123C(v56, *(v2 + 160)) & 1) == 0)
              {
                goto LABEL_36;
              }

              OUTLINED_FUNCTION_521();
              v57 = *(v4 + 168);
              OUTLINED_FUNCTION_521();
              v58 = *(v2 + 168);

              OUTLINED_FUNCTION_236();
              sub_1B8D7DD2C();
              OUTLINED_FUNCTION_141_4();

              if ((v42 & 1) == 0)
              {
                goto LABEL_36;
              }

              OUTLINED_FUNCTION_521();
              v59 = *(v4 + 176);
              OUTLINED_FUNCTION_521();
              if (v59 != *(v2 + 176))
              {
                goto LABEL_36;
              }

              OUTLINED_FUNCTION_521();
              v60 = *(v4 + 184);
              OUTLINED_FUNCTION_521();
              if (v60 != *(v2 + 184))
              {
                goto LABEL_36;
              }

              OUTLINED_FUNCTION_521();
              v61 = *(v4 + 192);
              OUTLINED_FUNCTION_521();
              v62 = *(v2 + 192);

              OUTLINED_FUNCTION_236();
              sub_1B8DB54E4();
              OUTLINED_FUNCTION_141_4();

              if (v42)
              {
                OUTLINED_FUNCTION_521();
                sub_1B8D92024();
                OUTLINED_FUNCTION_521();
                v63 = *(v11 + 48);
                v64 = v70;
                sub_1B8D92024();
                v69 = v63;
                sub_1B8D92024();
                OUTLINED_FUNCTION_178(v64, 1, v5);
                if (!v27)
                {
                  v65 = v70;
                  sub_1B8D92024();
                  OUTLINED_FUNCTION_178(v65 + v69, 1, v5);
                  if (!v66)
                  {
                    v67 = v70;
                    v68 = v71;
                    sub_1B8E71084();
                    static Kgqsapipb_Assertion.== infix(_:_:)(v21, v68);

                    sub_1B8E71134();
                    sub_1B8D9207C(v24, &qword_1EBAB9230, &qword_1B965DC80);
                    sub_1B8E71134();
                    sub_1B8D9207C(v67, &qword_1EBAB9230, &qword_1B965DC80);
                    goto LABEL_37;
                  }

                  sub_1B8D9207C(v24, &qword_1EBAB9230, &qword_1B965DC80);
                  OUTLINED_FUNCTION_4_11();
                  sub_1B8E71134();
LABEL_41:
                  sub_1B8D9207C(v70, &qword_1EBAB9238, &unk_1B964DA20);
                  goto LABEL_37;
                }

                sub_1B8D9207C(v24, &qword_1EBAB9230, &qword_1B965DC80);
                OUTLINED_FUNCTION_178(v70 + v69, 1, v5);
                if (!v27)
                {
                  goto LABEL_41;
                }

                sub_1B8D9207C(v70, &qword_1EBAB9230, &qword_1B965DC80);
              }

              else
              {
LABEL_36:
              }
            }
          }
        }
      }
    }
  }

LABEL_37:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E6F3FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1E68(&qword_1EBABCBD8, type metadata accessor for Kgqsapipb_Entity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E6F47C(uint64_t a1)
{
  v2 = sub_1B8CD1E68(&qword_1EBABBDC8, type metadata accessor for Kgqsapipb_Entity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E6F4EC()
{
  sub_1B8CD1E68(&qword_1EBABBDC8, type metadata accessor for Kgqsapipb_Entity);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E6F56C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC6F8);
  __swift_project_value_buffer(v0, qword_1EBABC6F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1B9653B20;
  v4 = v32 + v3 + v1[14];
  *(v32 + v3) = 0;
  *v4 = "UNKNOWN";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v32 + v3 + v2 + v1[14];
  *(v32 + v3 + v2) = 1;
  *v8 = "KG";
  *(v8 + 8) = 2;
  *(v8 + 16) = 2;
  v7();
  v9 = (v32 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "APPS";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v7();
  v11 = (v32 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "SPORTS";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v32 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "STOCKS";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v32 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "WEATHER";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v7();
  v17 = (v32 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "FLIGHTS";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v7();
  v19 = (v32 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "TV";
  *(v20 + 1) = 2;
  v20[16] = 2;
  v7();
  v21 = (v32 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "MOVIES";
  *(v22 + 1) = 6;
  v22[16] = 2;
  v7();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "MEDIA";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "BAIKE";
  *(v26 + 1) = 5;
  v26[16] = 2;
  v7();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "NEW_APPS";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v7();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "NEW_MEDIA";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8E6F9F4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC710);
  __swift_project_value_buffer(v0, qword_1EBABC710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 10;
  *v10 = "propId";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 22;
  *v12 = "value";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_ClaimTrimmed.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 22 || result == 10 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B8E6FD80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1E68(&qword_1EBABCBD0, type metadata accessor for Kgqsapipb_ClaimTrimmed);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E6FE00(uint64_t a1)
{
  v2 = sub_1B8CD1E68(&qword_1EBABC9A8, type metadata accessor for Kgqsapipb_ClaimTrimmed);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E6FE70()
{
  sub_1B8CD1E68(&qword_1EBABC9A8, type metadata accessor for Kgqsapipb_ClaimTrimmed);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E6FF14()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC728);
  __swift_project_value_buffer(v0, qword_1EBABC728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1B965DC60;
  v4 = v54 + v3 + v1[14];
  *(v54 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v54 + v3 + v2 + v1[14];
  *(v54 + v3 + v2) = 2;
  *v8 = "epid";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v54 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "entityId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v54 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "order";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v54 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "lionProb";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v54 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 10;
  *v16 = "propId";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v54 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 11;
  *v18 = "propName";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  v19 = (v54 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 12;
  *v20 = "propEnName";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v7();
  v21 = (v54 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 13;
  *v22 = "propType";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v7();
  v23 = (v54 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 14;
  *v24 = "propTypeCode";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v7();
  v25 = (v54 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 20;
  *v26 = "valueType";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v7();
  v27 = (v54 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 21;
  *v28 = "valueTypeCode";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v7();
  v29 = (v54 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 22;
  *v30 = "value";
  *(v30 + 1) = 5;
  v30[16] = 2;
  v7();
  v31 = (v54 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 23;
  *v32 = "localizedValue";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v7();
  v33 = (v54 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 24;
  *v34 = "valuePrecision";
  *(v34 + 1) = 14;
  v34[16] = 2;
  v7();
  v35 = (v54 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 25;
  *v36 = "valueLocales";
  *(v36 + 1) = 12;
  v36[16] = 2;
  v7();
  v37 = (v54 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 30;
  *v38 = "qualifiers";
  *(v38 + 1) = 10;
  v38[16] = 2;
  v7();
  v39 = (v54 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 31;
  *v40 = "qualifierInfo";
  *(v40 + 1) = 13;
  v40[16] = 2;
  v7();
  v41 = (v54 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 32;
  *v42 = "attention";
  *(v42 + 1) = 9;
  v42[16] = 2;
  v7();
  v43 = (v54 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 40;
  *v44 = "references";
  *(v44 + 1) = 10;
  v44[16] = 2;
  v7();
  v45 = (v54 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 45;
  *v46 = "geoContainers";
  *(v46 + 1) = 13;
  v46[16] = 2;
  v7();
  v47 = (v54 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 50;
  *v48 = "confidence";
  *(v48 + 1) = 10;
  v48[16] = 2;
  v7();
  v49 = (v54 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 51;
  *v50 = "renderLocalization";
  *(v50 + 1) = 18;
  v50[16] = 2;
  v7();
  v51 = (v54 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 100;
  *v52 = "assertion";
  *(v52 + 1) = 9;
  v52[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8E70678(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_57_0(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B8E706C8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0xE000000000000000;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0xE000000000000000;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0xE000000000000000;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0xE000000000000000;
  *(v0 + 208) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 216) = MEMORY[0x1E69E7CC0];
  *(v0 + 224) = v1;
  *(v0 + 232) = v1;
  *(v0 + 240) = 0;
  *(v0 + 248) = 0xE000000000000000;
  *(v0 + 256) = v1;
  *(v0 + 264) = v1;
  *(v0 + 272) = 0;
  v2 = OBJC_IVAR____TtCV10PegasusAPI15Kgqsapipb_ClaimP33_FBC61C2DB3C387DAC19C4543E8DB96DE13_StorageClass__renderLocalization;
  v3 = type metadata accessor for Kgqsapipb_RenderLocalization(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV10PegasusAPI15Kgqsapipb_ClaimP33_FBC61C2DB3C387DAC19C4543E8DB96DE13_StorageClass__assertion;
  v5 = type metadata accessor for Kgqsapipb_Assertion(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  return v0;
}

uint64_t sub_1B8E7078C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9230, &qword_1B965DC80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v89 = &v72 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC878, &qword_1B965DC88);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v88 = &v72 - v8;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 80) = 0;
  v72 = (v1 + 80);
  *(v1 + 72) = 0;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  v73 = (v1 + 96);
  *(v1 + 104) = 0xE000000000000000;
  *(v1 + 112) = 0;
  v74 = (v1 + 112);
  *(v1 + 120) = 0xE000000000000000;
  *(v1 + 128) = 0;
  v75 = (v1 + 128);
  *(v1 + 144) = 0;
  v76 = (v1 + 144);
  *(v1 + 152) = 0;
  v77 = (v1 + 152);
  *(v1 + 136) = 0xE000000000000000;
  *(v1 + 160) = 0xE000000000000000;
  *(v1 + 168) = 0;
  v78 = (v1 + 168);
  *(v1 + 176) = 0;
  v79 = (v1 + 176);
  *(v1 + 184) = 0xE000000000000000;
  *(v1 + 192) = 0;
  v80 = (v1 + 192);
  *(v1 + 200) = 0xE000000000000000;
  *(v1 + 208) = 0;
  v81 = (v1 + 208);
  v9 = MEMORY[0x1E69E7CC0];
  *(v1 + 216) = MEMORY[0x1E69E7CC0];
  v82 = (v1 + 216);
  *(v1 + 224) = v9;
  v83 = (v1 + 224);
  *(v1 + 232) = v9;
  v84 = (v1 + 232);
  *(v1 + 240) = 0;
  *(v1 + 248) = 0xE000000000000000;
  *(v1 + 256) = v9;
  *(v1 + 264) = v9;
  *(v1 + 272) = 0;
  v10 = OBJC_IVAR____TtCV10PegasusAPI15Kgqsapipb_ClaimP33_FBC61C2DB3C387DAC19C4543E8DB96DE13_StorageClass__renderLocalization;
  v85 = (v1 + 240);
  v86 = OBJC_IVAR____TtCV10PegasusAPI15Kgqsapipb_ClaimP33_FBC61C2DB3C387DAC19C4543E8DB96DE13_StorageClass__renderLocalization;
  v11 = type metadata accessor for Kgqsapipb_RenderLocalization(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10PegasusAPI15Kgqsapipb_ClaimP33_FBC61C2DB3C387DAC19C4543E8DB96DE13_StorageClass__assertion;
  v87 = OBJC_IVAR____TtCV10PegasusAPI15Kgqsapipb_ClaimP33_FBC61C2DB3C387DAC19C4543E8DB96DE13_StorageClass__assertion;
  v13 = type metadata accessor for Kgqsapipb_Assertion(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  swift_beginAccess();
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v14;
  *(v1 + 24) = v15;
  swift_beginAccess();
  v17 = *(a1 + 32);
  v16 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v17;
  *(v1 + 40) = v16;

  swift_beginAccess();
  v19 = *(a1 + 48);
  v18 = *(a1 + 56);
  swift_beginAccess();
  v20 = *(v1 + 56);
  *(v1 + 48) = v19;
  *(v1 + 56) = v18;

  swift_beginAccess();
  v21 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 64) = v21;
  swift_beginAccess();
  v22 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 72) = v22;
  swift_beginAccess();
  v24 = *(a1 + 80);
  v23 = *(a1 + 88);
  v25 = v72;
  swift_beginAccess();
  v26 = *(v1 + 88);
  *v25 = v24;
  *(v1 + 88) = v23;

  swift_beginAccess();
  v28 = *(a1 + 96);
  v27 = *(a1 + 104);
  v29 = v73;
  swift_beginAccess();
  v30 = *(v1 + 104);
  *v29 = v28;
  *(v1 + 104) = v27;

  swift_beginAccess();
  v32 = *(a1 + 112);
  v31 = *(a1 + 120);
  v33 = v74;
  swift_beginAccess();
  v34 = *(v1 + 120);
  *v33 = v32;
  *(v1 + 120) = v31;

  swift_beginAccess();
  v36 = *(a1 + 128);
  v35 = *(a1 + 136);
  v37 = v75;
  swift_beginAccess();
  v38 = *(v1 + 136);
  *v37 = v36;
  *(v1 + 136) = v35;

  swift_beginAccess();
  LODWORD(v35) = *(a1 + 144);
  v39 = v76;
  swift_beginAccess();
  *v39 = v35;
  swift_beginAccess();
  v41 = *(a1 + 152);
  v40 = *(a1 + 160);
  v42 = v77;
  swift_beginAccess();
  v43 = *(v1 + 160);
  *v42 = v41;
  *(v1 + 160) = v40;

  swift_beginAccess();
  LODWORD(v40) = *(a1 + 168);
  v44 = v78;
  swift_beginAccess();
  *v44 = v40;
  swift_beginAccess();
  v46 = *(a1 + 176);
  v45 = *(a1 + 184);
  v47 = v79;
  swift_beginAccess();
  v48 = *(v1 + 184);
  *v47 = v46;
  *(v1 + 184) = v45;

  swift_beginAccess();
  v50 = *(a1 + 192);
  v49 = *(a1 + 200);
  v51 = v80;
  swift_beginAccess();
  v52 = *(v1 + 200);
  *v51 = v50;
  *(v1 + 200) = v49;

  swift_beginAccess();
  LODWORD(v49) = *(a1 + 208);
  v53 = v81;
  swift_beginAccess();
  *v53 = v49;
  swift_beginAccess();
  v54 = *(a1 + 216);
  v55 = v82;
  swift_beginAccess();
  v56 = *v55;
  *v55 = v54;

  swift_beginAccess();
  v57 = *(a1 + 224);
  v58 = v83;
  swift_beginAccess();
  v59 = *v58;
  *v58 = v57;

  swift_beginAccess();
  v60 = *(a1 + 232);
  v61 = v84;
  swift_beginAccess();
  v62 = *v61;
  *v61 = v60;

  swift_beginAccess();
  v64 = *(a1 + 240);
  v63 = *(a1 + 248);
  v65 = v85;
  swift_beginAccess();
  v66 = *(v1 + 248);
  *v65 = v64;
  *(v1 + 248) = v63;

  swift_beginAccess();
  v67 = *(a1 + 256);
  swift_beginAccess();
  v68 = *(v1 + 256);
  *(v1 + 256) = v67;

  swift_beginAccess();
  v69 = *(a1 + 264);
  swift_beginAccess();
  v70 = *(v1 + 264);
  *(v1 + 264) = v69;

  swift_beginAccess();
  LODWORD(v22) = *(a1 + 272);
  swift_beginAccess();
  *(v1 + 272) = v22;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B8E71084()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8E710DC()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8E71134()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void *sub_1B8E71228()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  v8 = v0[20];

  v9 = v0[23];

  v10 = v0[25];

  v11 = v0[27];

  v12 = v0[28];

  v13 = v0[29];

  v14 = v0[31];

  v15 = v0[32];

  v16 = v0[33];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI15Kgqsapipb_ClaimP33_FBC61C2DB3C387DAC19C4543E8DB96DE13_StorageClass__renderLocalization, &qword_1EBABC878, &qword_1B965DC88);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI15Kgqsapipb_ClaimP33_FBC61C2DB3C387DAC19C4543E8DB96DE13_StorageClass__assertion, &qword_1EBAB9230, &qword_1B965DC80);
  return v0;
}

void sub_1B8E71370()
{
  OUTLINED_FUNCTION_273_0();
  v2 = v1;
  v20 = v3;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = *(v13(0) + 20);
  v15 = *(v0 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v0 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = v5(0);
    OUTLINED_FUNCTION_57_0(v18);
    swift_allocObject();
    v19 = OUTLINED_FUNCTION_40_0();
    v17 = v20(v19);
    *(v6 + v14) = v17;
  }

  v2(v17, v12, v10, v8);
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8E71424()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8E75B3C();
        break;
      case 2:
        sub_1B8E75BA0();
        break;
      case 3:
        sub_1B8DC4778();
        break;
      case 4:
        sub_1B8E71750();
        break;
      case 5:
        sub_1B8E717D4();
        break;
      case 6:
      case 7:
      case 8:
      case 9:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 26:
      case 27:
      case 28:
      case 29:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 41:
      case 42:
      case 43:
      case 44:
      case 46:
      case 47:
      case 48:
      case 49:
        continue;
      case 10:
        sub_1B8E16B50();
        break;
      case 11:
        sub_1B8E16BD4();
        break;
      case 12:
        sub_1B8E2F858();
        break;
      case 13:
        sub_1B8E71858();
        break;
      case 14:
        sub_1B8E718DC();
        break;
      case 20:
        sub_1B8E71960();
        break;
      case 21:
        sub_1B8E719E4();
        break;
      case 22:
        sub_1B8E71A68();
        break;
      case 23:
        sub_1B8E2FD8C();
        break;
      case 24:
        sub_1B8E71AEC();
        break;
      case 25:
        sub_1B8E71B70();
        break;
      case 30:
        sub_1B8E71BF4();
        break;
      case 31:
        sub_1B8E71CC0();
        break;
      case 32:
        sub_1B8E2FF18();
        break;
      case 40:
        sub_1B8E71D8C();
        break;
      case 45:
        sub_1B8E71E58();
        break;
      case 50:
        sub_1B8E71EDC();
        break;
      case 51:
        sub_1B8E71F60();
        break;
      default:
        if (result == 100)
        {
          sub_1B8E77B5C();
        }

        break;
    }
  }
}

uint64_t sub_1B8E71750()
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8E717D4()
{
  swift_beginAccess();
  sub_1B964C510();
  return swift_endAccess();
}

uint64_t sub_1B8E71858()
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E718DC()
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8E71960()
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E719E4()
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8E71A68()
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E71AEC()
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8E71B70()
{
  swift_beginAccess();
  sub_1B964C4D0();
  return swift_endAccess();
}

uint64_t sub_1B8E71BF4()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_Claim(0);
  sub_1B8CD1E68(&qword_1EBABBDA0, type metadata accessor for Kgqsapipb_Claim);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E71CC0()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_Qualifierinfo(0);
  sub_1B8CD1E68(&qword_1EBABC9D0, type metadata accessor for Kgqsapipb_Qualifierinfo);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E71D8C()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_Reference(0);
  sub_1B8CD1E68(&qword_1EBABCA78, type metadata accessor for Kgqsapipb_Reference);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E71E58()
{
  swift_beginAccess();
  sub_1B964C4D0();
  return swift_endAccess();
}

uint64_t sub_1B8E71EDC()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8E71F60()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_RenderLocalization(0);
  sub_1B8CD1E68(&qword_1EBABC300, type metadata accessor for Kgqsapipb_RenderLocalization);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E7206C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = *(v5 + *(a4(0) + 20));
  OUTLINED_FUNCTION_12();
  result = a5();
  if (!v6)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8E720E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9230, &qword_1B965DC80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v54 = &v50 - v5;
  v53 = type metadata accessor for Kgqsapipb_Assertion(0);
  v6 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC878, &qword_1B965DC88);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v50 - v10;
  v55 = type metadata accessor for Kgqsapipb_RenderLocalization(0);
  v12 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  swift_beginAccess();
  v13 = *(a1 + 24);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = *(a1 + 24);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 40);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = *(a1 + 40);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 56);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = *(a1 + 56);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 64))
  {
    result = sub_1B964C6C0();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(a1 + 72) != 0.0)
  {
    result = sub_1B964C6F0();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  v23 = *(a1 + 88);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = *(a1 + 88);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v26 = *(a1 + 104);
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = *(a1 + 96) & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v28 = *(a1 + 104);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v29 = *(a1 + 120);
  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = *(a1 + 112) & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    v31 = *(a1 + 120);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v32 = *(a1 + 136);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = *(a1 + 128) & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    v34 = *(a1 + 136);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 144))
  {
    result = sub_1B964C6C0();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  v35 = *(a1 + 160);
  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = *(a1 + 152) & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    v37 = *(a1 + 160);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 168))
  {
    result = sub_1B964C6C0();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  v38 = *(a1 + 184);
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = *(a1 + 176) & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    v40 = *(a1 + 184);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v41 = *(a1 + 200);
  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = *(a1 + 192) & 0xFFFFFFFFFFFFLL;
  }

  if (!v42)
  {
    goto LABEL_58;
  }

  v43 = *(a1 + 200);

  sub_1B964C700();
  if (v1)
  {
  }

LABEL_58:
  swift_beginAccess();
  if (!*(a1 + 208) || (result = sub_1B964C6C0(), !v1))
  {
    swift_beginAccess();
    if (*(*(a1 + 216) + 16))
    {
      v44 = *(a1 + 216);

      sub_1B964C6E0();
      if (v1)
      {
      }
    }

    swift_beginAccess();
    if (!*(*(a1 + 224) + 16) || (v51 = type metadata accessor for Kgqsapipb_Claim(0), sub_1B8CD1E68(&qword_1EBABBDA0, type metadata accessor for Kgqsapipb_Claim), , sub_1B964C730(), result = , !v1))
    {
      swift_beginAccess();
      if (!*(*(a1 + 232) + 16) || (v51 = type metadata accessor for Kgqsapipb_Qualifierinfo(0), sub_1B8CD1E68(&qword_1EBABC9D0, type metadata accessor for Kgqsapipb_Qualifierinfo), , sub_1B964C730(), result = , !v1))
      {
        swift_beginAccess();
        v45 = *(a1 + 248);
        v46 = HIBYTE(v45) & 0xF;
        if ((v45 & 0x2000000000000000) == 0)
        {
          v46 = *(a1 + 240) & 0xFFFFFFFFFFFFLL;
        }

        if (!v46 || (v47 = *(a1 + 248), , sub_1B964C700(), result = , !v1))
        {
          swift_beginAccess();
          if (!*(*(a1 + 256) + 16) || (v51 = type metadata accessor for Kgqsapipb_Reference(0), sub_1B8CD1E68(&qword_1EBABCA78, type metadata accessor for Kgqsapipb_Reference), , sub_1B964C730(), result = , !v1))
          {
            swift_beginAccess();
            if (!*(*(a1 + 264) + 16) || (v48 = *(a1 + 264), , sub_1B964C6E0(), result = , !v1))
            {
              swift_beginAccess();
              if (*(a1 + 272) == 0.0 || (result = sub_1B964C6B0(), !v1))
              {
                swift_beginAccess();
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v11, 1, v55) == 1)
                {
                  sub_1B8D9207C(v11, &qword_1EBABC878, &qword_1B965DC88);
                }

                else
                {
                  sub_1B8E71084();
                  sub_1B8CD1E68(&qword_1EBABC300, type metadata accessor for Kgqsapipb_RenderLocalization);
                  sub_1B964C740();
                  result = sub_1B8E71134();
                  if (v1)
                  {
                    return result;
                  }
                }

                swift_beginAccess();
                v49 = v54;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v49, 1, v53) == 1)
                {
                  return sub_1B8D9207C(v54, &qword_1EBAB9230, &qword_1B965DC80);
                }

                else
                {
                  sub_1B8E71084();
                  sub_1B8CD1E68(&qword_1EBABB6E0, type metadata accessor for Kgqsapipb_Assertion);
                  sub_1B964C740();
                  return sub_1B8E71134();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}