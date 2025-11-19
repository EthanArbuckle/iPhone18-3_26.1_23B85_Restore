uint64_t sub_1DD2EB5D4(uint64_t a1)
{
  type metadata accessor for CGRect(0);
  v2 = sub_1DD336530();
  v3 = sub_1DD287354();
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v47 = a1 & 0xC000000000000001;
    v42 = a1 + 32;
    v43 = a1 & 0xFFFFFFFFFFFFFF8;
    v6 = &selRef_createDirectoryAtURL_withIntermediateDirectories_attributes_error_;
    v44 = v3;
    v45 = a1;
    while (1)
    {
      if (v47)
      {
        v7 = MEMORY[0x1E12ACA60](v5, a1);
      }

      else
      {
        if (v5 >= *(v43 + 16))
        {
          goto LABEL_42;
        }

        v7 = *(v42 + 8 * v5);
      }

      v8 = v7;
      v9 = __OFADD__(v5++, 1);
      if (v9)
      {
        break;
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = [v10 resultItems];
        sub_1DD27D80C(0, &qword_1ECCD6AB8, 0x1E69AE380);
        v12 = sub_1DD336810();

        if (v12 >> 62)
        {
          v13 = sub_1DD336B60();
          if (v13)
          {
LABEL_11:
            v46 = v5;
            v14 = 0;
            v15 = v12 & 0xC000000000000001;
            v48 = v12 & 0xFFFFFFFFFFFFFF8;
            v49 = v12 & 0xC000000000000001;
            v51 = v12;
            v52 = v8;
            v50 = v13;
            while (1)
            {
              if (v15)
              {
                v16 = MEMORY[0x1E12ACA60](v14, v12);
              }

              else
              {
                if (v14 >= *(v48 + 16))
                {
                  goto LABEL_39;
                }

                v16 = *(v12 + 8 * v14 + 32);
              }

              v17 = v16;
              v18 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                break;
              }

              [v16 v6[88]];
              if (v19 >= 0.45)
              {
                v20 = [v17 personIdentifier];
                v21 = sub_1DD3365D0();
                v23 = v22;

                [v17 boundingBox];
                swift_isUniquelyReferenced_nonNull_native();
                v53 = v2;
                v24 = sub_1DD28EFFC();
                if (__OFADD__(*(v2 + 16), (v25 & 1) == 0))
                {
                  goto LABEL_38;
                }

                v26 = v24;
                v27 = v25;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6AC0, &qword_1DD33A690);
                if (sub_1DD336CC0())
                {
                  v28 = sub_1DD28EFFC();
                  if ((v27 & 1) != (v29 & 1))
                  {
                    goto LABEL_43;
                  }

                  v26 = v28;
                }

                if (v27)
                {

                  v2 = v53;
                  OUTLINED_FUNCTION_22_7();
                }

                else
                {
                  v2 = v53;
                  *(v53 + 8 * (v26 >> 6) + 64) |= 1 << v26;
                  v30 = (*(v2 + 48) + 16 * v26);
                  *v30 = v21;
                  v30[1] = v23;
                  OUTLINED_FUNCTION_22_7();
                  v31 = *(v2 + 16);
                  v9 = __OFADD__(v31, 1);
                  v32 = v31 + 1;
                  if (v9)
                  {
                    goto LABEL_40;
                  }

                  *(v2 + 16) = v32;
                }

                v6 = &selRef_createDirectoryAtURL_withIntermediateDirectories_attributes_error_;
                v12 = v51;
                v8 = v52;
                v15 = v49;
                v13 = v50;
              }

              else
              {
              }

              ++v14;
              if (v18 == v13)
              {

                v4 = v44;
                a1 = v45;
                v5 = v46;
                goto LABEL_33;
              }
            }

            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
            break;
          }
        }

        else
        {
          v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v13)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
      }

LABEL_33:
      if (v5 == v4)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    result = sub_1DD336E30();
    __break(1u);
  }

  else
  {
LABEL_34:
    v33 = sub_1DD335CB0();
    v34 = sub_1DD336940();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_50();
      v36 = swift_slowAlloc();
      v53 = v36;
      *v35 = 136315138;

      v37 = sub_1DD336520();
      v39 = v38;

      v40 = sub_1DD27DBF0(v37, v39, &v53);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1DD27A000, v33, v34, "Received person identifiers %s from MAD", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    return v2;
  }

  return result;
}

uint64_t sub_1DD2EBA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = a6;
  v61 = a5;
  v58 = a2;
  v59 = a4;
  v63 = a1;
  v64 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  v7 = OUTLINED_FUNCTION_36(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  v12 = OUTLINED_FUNCTION_36(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v56 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  v17 = OUTLINED_FUNCTION_36(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v56 - v20;
  v62 = sub_1DD336220();
  v22 = OUTLINED_FUNCTION_1_0(v62);
  v60 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_12();
  v56 = v27 - v26;
  OUTLINED_FUNCTION_31_1();
  v28 = sub_1DD335CE0();
  v29 = *(v28 - 8);
  v30 = v29;
  v31 = v29[8];
  v32 = MEMORY[0x1EEE9AC00](v28);
  v34 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v56 - v35;
  v67.origin.x = OUTLINED_FUNCTION_1_7();
  CGRectGetMinX(v67);
  v68.origin.x = OUTLINED_FUNCTION_1_7();
  CGRectGetMinY(v68);
  v69.origin.x = OUTLINED_FUNCTION_1_7();
  CGRectGetWidth(v69);
  v70.origin.x = OUTLINED_FUNCTION_1_7();
  CGRectGetHeight(v70);
  sub_1DD336140();
  v37 = v29[13];
  v37(v36, *MEMORY[0x1E69D27F0], v28);
  v38 = *MEMORY[0x1E69D2918];
  v39 = sub_1DD336130();
  OUTLINED_FUNCTION_1(v39);
  (*(v40 + 104))(v34, v38);
  v37(v34, *MEMORY[0x1E69D27E8], v28);
  v41 = sub_1DD335E60();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66C0, &qword_1DD339430);
  v42 = v29[9];
  v43 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1DD3391F0;
  v45 = v44 + v43;
  v46 = v30[2];
  v46(v45, v36, v28);
  v46(v45 + v42, v34, v28);

  sub_1DD335860();
  v47 = v56;
  sub_1DD3361E0();
  v48 = sub_1DD336240();
  v49 = v57;
  __swift_storeEnumTagSinglePayload(v57, 1, 1, v48);
  v50 = sub_1DD336190();
  sub_1DD2DB2A4(v49);
  v51 = sub_1DD334830();
  OUTLINED_FUNCTION_1(v51);
  v53 = v65;
  (*(v52 + 16))(v65, v66, v51);
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v51);
  sub_1DD335EF0();
  (*(v60 + 8))(v47, v62);
  v54 = v30[1];
  v54(v34, v28);
  v54(v36, v28);
  return v50;
}

uint64_t sub_1DD2EBF88()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution28RRIntelligencePlatformPuller_logger;
  v2 = sub_1DD335CD0();
  OUTLINED_FUNCTION_1(v2);
  (*(v3 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1DD2EC000()
{
  sub_1DD2EBF88();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for RRIntelligencePlatformPuller()
{
  result = qword_1ECCD6AA8;
  if (!qword_1ECCD6AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD2EC0AC()
{
  result = sub_1DD335CD0();
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

uint64_t sub_1DD2EC14C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DD2B2DD0;

  return sub_1DD2E9018();
}

unint64_t sub_1DD2EC208()
{
  result = qword_1ECCD63B8;
  if (!qword_1ECCD63B8)
  {
    type metadata accessor for IOSurfacePropertyKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD63B8);
  }

  return result;
}

uint64_t sub_1DD2EC260(uint64_t a1)
{
  v4 = sub_1DD334830();
  OUTLINED_FUNCTION_36(v4);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DD2BE86C;

  return sub_1DD2E9A24(a1, v7, v8, v9, v10, v11, v1 + v6);
}

uint64_t sub_1DD2EC378(int a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
  OUTLINED_FUNCTION_69_0(v5);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = sub_1DD334830();
  OUTLINED_FUNCTION_36(v10);
  v12 = *(v2 + 16);
  v13 = *(v2 + v9);
  v14 = v2 + ((v9 + *(v11 + 80) + 8) & ~*(v11 + 80));

  return sub_1DD2EA034(a1, a2, v12, v2 + v7, v13, v14);
}

id sub_1DD2EC470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_1DD3365A0();
  v13 = [a7 performRequests:a1 onCIImage:a2 withOrientation:a3 andIdentifier:v12 completionHandler:a6];

  return v13;
}

uint64_t sub_1DD2EC4F0(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1DD27D80C(0, qword_1ECCD6AF8, 0x1E69AE3C0);
  v3 = sub_1DD336810();

  return v3;
}

uint64_t sub_1DD2EC560(int a1, void *a2)
{
  v5 = sub_1DD334830();
  OUTLINED_FUNCTION_36(v5);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v11 = v2 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return sub_1DD2E8CC4(a1, a2, v7, v8, v9, v10, v11);
}

uint64_t sub_1DD2EC5EC()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(v0 + *(*v0 + 96));

  v2 = *(v0 + *(*v0 + 104));

  return v0;
}

uint64_t sub_1DD2EC694()
{
  sub_1DD2EC5EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD2EC6EC()
{
  v1 = *v0;
  if (*v0)
  {
    *v0 = *(v1 + *(*v1 + 104));
    sub_1DD335860();
  }

  return v1;
}

uint64_t sub_1DD2EC734@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD2EC6EC();
  *a1 = result;
  return result;
}

uint64_t sub_1DD2EC764()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1DD2EC78C()
{
  sub_1DD2EC764();
  v0 = OUTLINED_FUNCTION_0_11();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1DD2EC7B8()
{
  OUTLINED_FUNCTION_0_11();
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_1DD2EC7DC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1DD2EC75C();

  *a1 = v4;
  return result;
}

uint64_t sub_1DD2EC828(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  v4 = type metadata accessor for DoublyLinkList();

  return MEMORY[0x1EEE69170](v4, a2);
}

void sub_1DD2EC868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  type metadata accessor for DoublyLinkList();

  JUMPOUT(0x1E12AC5F0);
}

uint64_t sub_1DD2EC8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  type metadata accessor for DoublyLinkList();
  return sub_1DD3367D0();
}

uint64_t RRCache.__allocating_init(capacity:)(uint64_t a1)
{
  OUTLINED_FUNCTION_0_11();
  v2 = swift_allocObject();
  RRCache.init(capacity:)(a1);
  return v2;
}

void *RRCache.init(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v1[2] = a1;
  v4 = v3[11];
  type metadata accessor for DoublyLinkList();
  v1[3] = sub_1DD2EC7B8();
  v5 = v3[10];
  type metadata accessor for Node();
  swift_getTupleTypeMetadata2();
  sub_1DD336840();
  v6 = v3[12];
  v2[4] = sub_1DD336530();
  return v2;
}

uint64_t RRCache.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t RRCache.__deallocating_deinit()
{
  RRCache.deinit();
  v0 = OUTLINED_FUNCTION_0_11();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD2ECAD4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD2ECC8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DD2ECCE0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD2ECD34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1DD2ECDA0()
{
  v0 = sub_1DD3365D0();
  v2 = v1;
  if (v0 == sub_1DD3365D0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1DD336E00();
  }

  return v5 & 1;
}

uint64_t RRNowPlayingMediaPuller.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  RRNowPlayingMediaPuller.init()();
  return v3;
}

uint64_t RRNowPlayingMediaPuller.init()()
{
  v1 = sub_1DD335CD0();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  type metadata accessor for RRNowPlayingMediaPuller();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D00, &unk_1DD33A8A0);
  sub_1DD336630();
  sub_1DD335CC0();
  (*(v4 + 32))(v0 + OBJC_IVAR____TtC23SiriReferenceResolution23RRNowPlayingMediaPuller_logger, v9, v1);
  v10 = [objc_opt_self() localDestination];
  v11 = [objc_allocWithZone(MEMORY[0x1E69B0A90]) initWithDestination_];

  [v11 setRequestPlaybackQueue_];
  [v11 setRequestPlaybackState_];
  [v11 setRequestClientProperties_];
  v12 = [objc_allocWithZone(MEMORY[0x1E69B0A88]) initWithConfiguration_];

  *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution23RRNowPlayingMediaPuller_controller) = v12;
  return v0;
}

uint64_t type metadata accessor for RRNowPlayingMediaPuller()
{
  result = qword_1EE028D70;
  if (!qword_1EE028D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD2ED070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a2;
  v41 = a3;
  v39 = a1;
  v5 = sub_1DD334830();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = sub_1DD335CA0();
  v12 = OUTLINED_FUNCTION_1_0(v11);
  v42 = v13;
  v43 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  v18 = v17 - v16;
  if (qword_1EE0277E0 != -1)
  {
    OUTLINED_FUNCTION_9_10();
  }

  v19 = qword_1EE02A200;
  sub_1DD335C90();
  sub_1DD336A40();
  v20 = qword_1EE02A200;
  v21 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5();
  sub_1DD335C70();

  v38 = OBJC_IVAR____TtC23SiriReferenceResolution23RRNowPlayingMediaPuller_logger;
  v22 = sub_1DD335CB0();
  v23 = sub_1DD336940();
  if (OUTLINED_FUNCTION_17_0(v23))
  {
    v24 = OUTLINED_FUNCTION_69();
    *v24 = 0;
    _os_log_impl(&dword_1DD27A000, v22, v23, "Entering RRNowPlayingMediaPuller...", v24, 2u);
    OUTLINED_FUNCTION_54();
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v26 = *(v4 + OBJC_IVAR____TtC23SiriReferenceResolution23RRNowPlayingMediaPuller_controller);
  (*(v8 + 16))(&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v5);
  v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  *(v28 + 24) = v4;
  (*(v8 + 32))(v28 + v27, &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v29 = (v28 + ((v10 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
  v30 = v41;
  *v29 = v40;
  v29[1] = v30;
  aBlock[4] = sub_1DD2ED5BC;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD2B5F58;
  aBlock[3] = &block_descriptor_6;
  v31 = _Block_copy(aBlock);
  v32 = v26;
  sub_1DD335860();
  sub_1DD335860();
  sub_1DD335860();

  [v32 performRequestWithCompletion_];
  _Block_release(v31);

  v33 = sub_1DD335CB0();
  v34 = sub_1DD336940();
  if (OUTLINED_FUNCTION_17_0(v34))
  {
    v35 = OUTLINED_FUNCTION_69();
    *v35 = 0;
    _os_log_impl(&dword_1DD27A000, v33, v34, "Exiting RRNowPlayingMediaPuller...", v35, 2u);
    OUTLINED_FUNCTION_54();
  }

  sub_1DD336A30();
  v36 = qword_1EE02A200;
  sub_1DD335C80();

  return (*(v42 + 8))(v18, v43);
}

uint64_t sub_1DD2ED498(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void))
{
  if (a1)
  {
    v10 = sub_1DD2ED668();
    if (v10)
    {
      v11 = v10;
      v12 = sub_1DD2ED728();
      if (v13)
      {
        v14 = sub_1DD2EDE28(v11, [a1 playbackState], v12, v13, a5);

        swift_beginAccess();
        v15 = *(a3 + 16);
        *(a3 + 16) = v14;
      }

      else
      {
      }
    }
  }

  swift_beginAccess();
  v16 = *(a3 + 16);

  a6(v17, 0);
}

uint64_t sub_1DD2ED5BC(void *a1, uint64_t a2)
{
  v5 = sub_1DD334830();
  OUTLINED_FUNCTION_69_0(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = *(v13 + 8);

  return sub_1DD2ED498(a1, a2, v11, v12, v2 + v10, v14);
}

uint64_t sub_1DD2ED668()
{
  v1 = [v0 playbackQueue];
  if (!v1)
  {
    return 0;
  }

  v2 = sub_1DD2F0600(v1);
  if (v2)
  {
    if (sub_1DD287354())
    {
      sub_1DD2A34A0(0, (v2 & 0xC000000000000001) == 0, v2);
      if ((v2 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x1E12ACA60](0, v2);
      }

      else
      {
        v3 = *(v2 + 32);
      }

      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v2 = [v4 metadata];
  }

  return v2;
}

id sub_1DD2ED728()
{
  result = [v0 playerPath];
  if (result)
  {
    v2 = result;
    v3 = [result client];

    if (v3)
    {
      return sub_1DD2F0668(v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD2ED798()
{
  OUTLINED_FUNCTION_4();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_1DD335CA0();
  v1[5] = v3;
  OUTLINED_FUNCTION_69_0(v3);
  v1[6] = v4;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD2ED84C, 0, 0);
}

uint64_t sub_1DD2ED84C()
{
  if (qword_1EE0277E0 != -1)
  {
    OUTLINED_FUNCTION_9_10();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = qword_1EE02A200;
  sub_1DD335C90();
  sub_1DD336A40();
  v4 = qword_1EE02A200;
  OUTLINED_FUNCTION_5();
  sub_1DD335C70();

  v5 = sub_1DD335CB0();
  v6 = sub_1DD336940();
  if (OUTLINED_FUNCTION_17_0(v6))
  {
    v7 = OUTLINED_FUNCTION_69();
    *v7 = 0;
    _os_log_impl(&dword_1DD27A000, v5, v6, "Entering RRNowPlayingMediaPuller...", v7, 2u);
    OUTLINED_FUNCTION_54();
  }

  v13 = *(v0 + 24);

  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  v8[1] = vextq_s8(v13, v13, 8uLL);
  v9 = *(MEMORY[0x1E69E88D0] + 4);
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A8, "be");
  *v10 = v0;
  v10[1] = sub_1DD2833B4;

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0x3A7461286C6C7570, 0xE900000000000029, sub_1DD2F03E4, v8, v11);
}

void sub_1DD2EDA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v20 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D10, &unk_1DD33A940);
  v18 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = sub_1DD334830();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 + OBJC_IVAR____TtC23SiriReferenceResolution23RRNowPlayingMediaPuller_controller);
  (*(v10 + 16))(v12, v19, v9);
  (*(v5 + 16))(v8, v20, v4);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = (v11 + *(v5 + 80) + v13) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v10 + 32))(v15 + v13, v12, v9);
  (*(v5 + 32))(v15 + v14, v8, v18);
  aBlock[4] = sub_1DD2F06D8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD2B5F58;
  aBlock[3] = &block_descriptor_22_0;
  v16 = _Block_copy(aBlock);
  v17 = v21;
  sub_1DD335860();

  [v17 performRequestWithCompletion_];
  _Block_release(v16);
}

void sub_1DD2EDD14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = sub_1DD2ED668();
    if (v6)
    {
      v7 = v6;
      v8 = sub_1DD2ED728();
      if (v9)
      {
        sub_1DD2EDE28(v7, [a1 playbackState], v8, v9, a4);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D10, &unk_1DD33A940);
        sub_1DD3368B0();

        return;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D10, &unk_1DD33A940);
  sub_1DD3368B0();
}

uint8_t *sub_1DD2EDE28(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v362 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D08, &unk_1DD33A910);
  OUTLINED_FUNCTION_36(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6_1(v14);
  v358 = sub_1DD335130();
  v15 = OUTLINED_FUNCTION_1_0(v358);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v323 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v323 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6780, &unk_1DD339730);
  OUTLINED_FUNCTION_36(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_30();
  v341 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6788, &unk_1DD33A920);
  OUTLINED_FUNCTION_36(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6_1(v34);
  v340 = sub_1DD334C10();
  v35 = OUTLINED_FUNCTION_1_0(v340);
  v339 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_1(v40 - v39);
  v347 = sub_1DD334C50();
  v41 = OUTLINED_FUNCTION_1_0(v347);
  v346 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_1(v46 - v45);
  v348 = sub_1DD3350F0();
  v47 = OUTLINED_FUNCTION_1_0(v348);
  v337 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_6_1(v52);
  v345 = sub_1DD3350E0();
  v53 = OUTLINED_FUNCTION_1_0(v345);
  v350 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_32_1();
  v333 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67C8, &unk_1DD339830);
  v60 = OUTLINED_FUNCTION_36(v59);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_32_1();
  v366 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67D0, &unk_1DD33A930);
  v67 = OUTLINED_FUNCTION_36(v66);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_32_1();
  v365 = v74;
  v371 = MEMORY[0x1E69E7CC0];
  v75 = sub_1DD2F0088(a1);
  v354 = v24;
  v353 = a5;
  v363 = v5;
  if (!v76)
  {
    v75 = sub_1DD2BAB88(a1, &selRef_contentIdentifier);
    if (!v76)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  v77 = v75;
  v78 = v76;
  v330 = v22;
  v364 = a4;
  v359 = v17;
  type metadata accessor for RRNowPlayingMediaPuller();
  v79 = v365;
  sub_1DD2EFA94(a1);
  v351 = sub_1DD2D340C(v77, v78);
  v355 = v80;
  v81 = v366;
  sub_1DD2F0130(a2 | ((HIDWORD(a2) & 1) << 32));
  v360 = sub_1DD2BAB88(a1, &selRef_title);
  v83 = v82;
  v84 = sub_1DD2BAB88(a1, &selRef_contentIdentifier);
  v86 = v85;
  v87 = sub_1DD2F0088(a1);
  v88 = a1;
  v89 = v87;
  v91 = v90;
  v361 = v88;
  v92 = sub_1DD2BAB88(v88, &selRef_brandIdentifier);
  v352 = v77;
  v356 = v78;
  sub_1DD2D38B8(v77, v78, v362, v364, v79, v81, v360, v83, v84, v86, v89, v91, v92, v93, 0, 0, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334);
  v95 = v94;

  sub_1DD335860();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_29_4();
  sub_1DD2EFCBC(v96, v97, v98, v99, v100, v101);
  v360 = 0;

  v351 = v95;

  MEMORY[0x1E12AC640](v139);
  OUTLINED_FUNCTION_26_6();
  v142 = *(v140 + 16);
  v141 = *(v140 + 24);
  v143 = v363;
  v144 = &unk_1EE02A000;
  if (v142 >= v141 >> 1)
  {
    OUTLINED_FUNCTION_45(v141);
    sub_1DD336830();
  }

  sub_1DD336860();
  v122 = v371;
  v324 = OBJC_IVAR____TtC23SiriReferenceResolution23RRNowPlayingMediaPuller_logger;
  v145 = sub_1DD335CB0();
  v146 = sub_1DD336930();
  v147 = OUTLINED_FUNCTION_51(v146);
  v123 = v359;
  if (v147)
  {
    v148 = OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_122(v148);
    OUTLINED_FUNCTION_37(&dword_1DD27A000, v149, v150, "Pulled media item successfully");
    OUTLINED_FUNCTION_54();
  }

  v151 = OUTLINED_FUNCTION_31();
  v152 = sub_1DD2F009C(v151);
  if (v153)
  {
    v325 = v152;
    v329 = v153;
    v323 = sub_1DD2D340C(v152, v153);
    v326 = v154;
    v155 = v350;
    v156 = v349;
    v157 = v345;
    (*(v350 + 104))(v349, *MEMORY[0x1E69D1FF0], v345);
    v158 = OUTLINED_FUNCTION_5_6();
    __swift_storeEnumTagSinglePayload(v158, v159, v160, v157);
    v161 = OUTLINED_FUNCTION_31();
    v355 = sub_1DD2BAB88(v161, v162);
    v328 = v163;
    v164 = sub_1DD335260();
    OUTLINED_FUNCTION_51_1(v164);
    v165 = sub_1DD335250();
    v166 = v156;
    v167 = v342;
    sub_1DD27F164(v166, v342, &qword_1ECCD67D0, &unk_1DD33A930);
    v168 = OUTLINED_FUNCTION_64();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v168, v169, v157);
    v171 = v348;
    v327 = v165;
    if (EnumTagSinglePayload == 1)
    {
      sub_1DD296084(v167, &qword_1ECCD67D0, &unk_1DD33A930);
    }

    else
    {
      v184 = v333;
      (*(v155 + 32))(v333, v167, v157);
      v185 = sub_1DD335560();
      OUTLINED_FUNCTION_51_1(v185);
      sub_1DD335550();
      sub_1DD335540();
      sub_1DD335860();
      sub_1DD335220();
      OUTLINED_FUNCTION_44_4();
      (*(v350 + 8))(v184, v157);
    }

    v186 = v343;
    sub_1DD27F164(v366, v343, &qword_1ECCD67C8, &unk_1DD339830);
    v187 = OUTLINED_FUNCTION_64();
    if (__swift_getEnumTagSinglePayload(v187, v188, v171) == 1)
    {
      sub_1DD296084(v186, &qword_1ECCD67C8, &unk_1DD339830);
    }

    else
    {
      v189 = v337;
      OUTLINED_FUNCTION_36_6();
      v165 = v334;
      v190(v334, v186, v171);
      v191 = sub_1DD335590();
      OUTLINED_FUNCTION_51_1(v191);
      sub_1DD335580();
      sub_1DD335570();
      sub_1DD335860();
      sub_1DD335230();
      OUTLINED_FUNCTION_44_4();
      (*(v189 + 8))(v165, v171);
    }

    v192 = v327;
    if (v328)
    {
      sub_1DD335240();
    }

    OUTLINED_FUNCTION_17_9();
    sub_1DD334C30();
    sub_1DD334BA0();
    (*(v346 + 8))(v165, v347);
    v193 = v192;
    if (qword_1EE0275F0 != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    v355 = v122;
    sub_1DD28191C(&unk_1EE02A1A8, &v367);
    v194 = v368;
    v195 = v369;
    __swift_project_boxed_opaque_existential_1(&v367, v368);
    LOBYTE(v194) = (*(v195 + 40))(v194, v195);
    __swift_destroy_boxed_opaque_existential_1(&v367);
    v123 = v359;
    if (v194)
    {
      sub_1DD334BF0();
      v122 = v338;
      OUTLINED_FUNCTION_24();
      __swift_storeEnumTagSinglePayload(v196, v197, v198, v199);
      sub_1DD3356D0();
      OUTLINED_FUNCTION_24();
      __swift_storeEnumTagSinglePayload(v200, v201, v202, v203);
      v204 = v329;

      OUTLINED_FUNCTION_16_6();
      v326 = v204;
      v193 = v327;
      OUTLINED_FUNCTION_15_8();
      sub_1DD334C00();
      sub_1DD334BB0();
      (*(v339 + 8))(1, v340);
    }

    v205 = MEMORY[0x1E12AABB0](v193);
    if (!v205)
    {
      sub_1DD2BAF38();
      v213 = swift_allocError();
      OUTLINED_FUNCTION_41_6(v213, v214);
      OUTLINED_FUNCTION_56();

      sub_1DD296084(v349, &qword_1ECCD67D0, &unk_1DD33A930);
      goto LABEL_48;
    }

    v122 = v205;

    sub_1DD296084(v349, &qword_1ECCD67D0, &unk_1DD33A930);

    OUTLINED_FUNCTION_29_4();
    v206 = v360;
    sub_1DD2EFCBC(v207, v208, v209, v210, v211, v212);
    OUTLINED_FUNCTION_56();
    v360 = v206;
    if (v206)
    {

      v123 = v360;
LABEL_48:
      v360 = 0;
      OUTLINED_FUNCTION_27_6();
      OUTLINED_FUNCTION_32_7();
      goto LABEL_4;
    }

    MEMORY[0x1E12AC640](v215);
    OUTLINED_FUNCTION_26_6();
    v218 = *(v216 + 16);
    v217 = *(v216 + 24);
    if (v218 >= v217 >> 1)
    {
      OUTLINED_FUNCTION_45(v217);
      sub_1DD336830();
    }

    sub_1DD336860();
    v219 = v371;
    v220 = sub_1DD335CB0();
    v221 = sub_1DD336930();
    if (OUTLINED_FUNCTION_51(v221))
    {
      v222 = OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_122(v222);
      OUTLINED_FUNCTION_37(&dword_1DD27A000, v223, v224, "Pulled album media item successfully");
      OUTLINED_FUNCTION_54();
    }

    v125 = v357;
    v122 = v219;
  }

  else
  {
    v125 = v357;
  }

  v225 = v348;
  v226 = OUTLINED_FUNCTION_31();
  v227 = sub_1DD2F00B0(v226);
  if (v228)
  {
    v229 = v228;
    v355 = v122;
    v359 = v123;
    v349 = v227;
    v348 = sub_1DD2D340C(v227, v228);
    v231 = v230;
    v232 = v350;
    v233 = v344;
    v234 = v345;
    (*(v350 + 104))(v344, *MEMORY[0x1E69D2008], v345);
    v235 = OUTLINED_FUNCTION_5_6();
    __swift_storeEnumTagSinglePayload(v235, v236, v237, v234);
    v238 = OUTLINED_FUNCTION_31();
    v343 = sub_1DD2BAB88(v238, v239);
    v241 = v240;
    v242 = sub_1DD335260();
    OUTLINED_FUNCTION_51_1(v242);
    v122 = sub_1DD335250();
    v243 = v233;
    v244 = v335;
    sub_1DD27F164(v243, v335, &qword_1ECCD67D0, &unk_1DD33A930);
    v245 = OUTLINED_FUNCTION_64();
    if (__swift_getEnumTagSinglePayload(v245, v246, v234) == 1)
    {
      sub_1DD296084(v244, &qword_1ECCD67D0, &unk_1DD33A930);
    }

    else
    {
      OUTLINED_FUNCTION_36_6();
      v342 = v231;
      v247 = v241;
      v248 = v331;
      v249(v331, v244, v234);
      v250 = sub_1DD335560();
      OUTLINED_FUNCTION_51_1(v250);
      sub_1DD335550();
      sub_1DD335540();
      sub_1DD335860();
      sub_1DD335220();
      OUTLINED_FUNCTION_44_4();
      v251 = v248;
      v241 = v247;
      (*(v232 + 8))(v251, v234);
    }

    v252 = v336;
    sub_1DD27F164(v366, v336, &qword_1ECCD67C8, &unk_1DD339830);
    v253 = OUTLINED_FUNCTION_64();
    if (__swift_getEnumTagSinglePayload(v253, v254, v225) == 1)
    {
      sub_1DD296084(v252, &qword_1ECCD67C8, &unk_1DD339830);
    }

    else
    {
      v255 = v337;
      OUTLINED_FUNCTION_36_6();
      v256 = v332;
      v257(v332, v252, v225);
      v258 = sub_1DD335590();
      OUTLINED_FUNCTION_51_1(v258);
      sub_1DD335580();
      sub_1DD335570();
      sub_1DD335860();
      sub_1DD335230();
      OUTLINED_FUNCTION_44_4();
      (*(v255 + 8))(v256, v225);
    }

    v259 = v349;
    if (v241)
    {
      sub_1DD335240();
    }

    OUTLINED_FUNCTION_17_9();
    sub_1DD334C30();
    sub_1DD334BA0();
    (*(v346 + 8))(v225, v347);
    if (qword_1EE0275F0 != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    sub_1DD28191C(&unk_1EE02A1A8, &v367);
    v260 = v368;
    v123 = v369;
    __swift_project_boxed_opaque_existential_1(&v367, v368);
    LOBYTE(v260) = (*(v123 + 40))(v260, v123);
    __swift_destroy_boxed_opaque_existential_1(&v367);
    if (v260)
    {
      sub_1DD334BF0();
      OUTLINED_FUNCTION_24();
      __swift_storeEnumTagSinglePayload(v261, v262, v263, v264);
      sub_1DD3356D0();
      v123 = v341;
      OUTLINED_FUNCTION_24();
      __swift_storeEnumTagSinglePayload(v265, v266, v267, v268);

      OUTLINED_FUNCTION_16_6();
      v329 = v259;
      v330 = v229;
      OUTLINED_FUNCTION_15_8();
      sub_1DD334C00();
      sub_1DD334BB0();
      (*(v339 + 8))(1, v340);
    }

    if (MEMORY[0x1E12AABB0](v122))
    {

      sub_1DD296084(v344, &qword_1ECCD67D0, &unk_1DD33A930);

      OUTLINED_FUNCTION_32_7();
      OUTLINED_FUNCTION_29_4();
      v269 = v360;
      sub_1DD2EFCBC(v270, v271, v272, v273, v274, v275);
      v143 = v363;
      v144 = &unk_1EE02A000;
      v360 = v269;
      if (!v269)
      {

        MEMORY[0x1E12AC640](v307);
        OUTLINED_FUNCTION_26_6();
        v310 = *(v308 + 16);
        v309 = *(v308 + 24);
        if (v310 >= v309 >> 1)
        {
          OUTLINED_FUNCTION_45(v309);
          sub_1DD336830();
        }

        sub_1DD336860();
        v122 = v371;
        v311 = sub_1DD335CB0();
        v312 = sub_1DD336930();
        if (OUTLINED_FUNCTION_51(v312))
        {
          v313 = OUTLINED_FUNCTION_69();
          OUTLINED_FUNCTION_122(v313);
          OUTLINED_FUNCTION_37(&dword_1DD27A000, v314, v315, "Pulled artist media item successfully");
          OUTLINED_FUNCTION_54();
        }

        OUTLINED_FUNCTION_56();

        sub_1DD296084(v366, &qword_1ECCD67C8, &unk_1DD339830);
        sub_1DD296084(v365, &qword_1ECCD67D0, &unk_1DD33A930);
        goto LABEL_13;
      }

      v123 = v360;
      v360 = 0;
      OUTLINED_FUNCTION_27_6();
    }

    else
    {
      sub_1DD2BAF38();
      v276 = swift_allocError();
      OUTLINED_FUNCTION_41_6(v276, v277);

      OUTLINED_FUNCTION_56();

      sub_1DD296084(v344, &qword_1ECCD67D0, &unk_1DD33A930);
      v360 = 0;
      v143 = v363;
      OUTLINED_FUNCTION_32_7();
      OUTLINED_FUNCTION_27_6();
      v144 = &unk_1EE02A000;
    }

LABEL_4:
    sub_1DD296084(v366, &qword_1ECCD67C8, &unk_1DD339830);
    sub_1DD296084(v365, &qword_1ECCD67D0, &unk_1DD33A930);
    v367 = v123;
    v102 = v123;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
    if (swift_dynamicCast() && v370 == 1)
    {

      v103 = v143 + v144[188];
      v104 = sub_1DD335CB0();
      v105 = sub_1DD336950();
      if (OUTLINED_FUNCTION_51(v105))
      {
        v106 = OUTLINED_FUNCTION_69();
        OUTLINED_FUNCTION_122(v106);
        OUTLINED_FUNCTION_37(&dword_1DD27A000, v107, v108, "Failed to convert media item to USO");
        OUTLINED_FUNCTION_54();
      }

      v109 = v367;
    }

    else
    {

      v110 = v144[188];
      v111 = v123;
      v112 = sub_1DD335CB0();
      v113 = sub_1DD336950();

      if (os_log_type_enabled(v112, v113))
      {
        v114 = v122;
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v367 = v116;
        *v115 = 136315138;
        swift_getErrorValue();
        v117 = sub_1DD336E40();
        v119 = sub_1DD27DBF0(v117, v118, &v367);

        *(v115 + 4) = v119;
        OUTLINED_FUNCTION_40_7(&dword_1DD27A000, v120, v121, "Failed to build RRAnnotatedEntity from media item. Error: %s");
        __swift_destroy_boxed_opaque_existential_1(v116);
        OUTLINED_FUNCTION_54();
        v122 = v114;
        OUTLINED_FUNCTION_54();

LABEL_13:
        v123 = v359;
        v124 = v358;
        v125 = v357;
        goto LABEL_14;
      }

      v109 = v123;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_56();

  sub_1DD296084(v366, &qword_1ECCD67C8, &unk_1DD339830);
  sub_1DD296084(v365, &qword_1ECCD67D0, &unk_1DD33A930);
  v124 = v358;
  OUTLINED_FUNCTION_32_7();
LABEL_14:
  sub_1DD2EFBAC(v361);
  v126 = OUTLINED_FUNCTION_64();
  if (__swift_getEnumTagSinglePayload(v126, v127, v124) == 1)
  {

    sub_1DD296084(v125, &qword_1ECCD6D08, &unk_1DD33A910);
  }

  else
  {
    OUTLINED_FUNCTION_36_6();
    v128 = v354;
    v129(v354, v125, v124);
    v130 = v360;
    sub_1DD2D4960();
    if (v130)
    {
      (*(v123 + 8))(v128, v124);

      v367 = v130;
      v286 = v130;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
      v287 = swift_dynamicCast();
      v288 = v363;
      if (v287 && v370 == 1)
      {

        v289 = v288 + v144[188];
        v290 = sub_1DD335CB0();
        v291 = sub_1DD336950();
        if (OUTLINED_FUNCTION_51(v291))
        {
          v292 = OUTLINED_FUNCTION_69();
          *v292 = 0;
          _os_log_impl(&dword_1DD27A000, v290, v289, "Failed to convert attachment to USO", v292, 2u);
          OUTLINED_FUNCTION_54();
        }

        v293 = v367;
      }

      else
      {

        v294 = v144[188];
        v295 = v130;
        v296 = sub_1DD335CB0();
        v297 = sub_1DD336950();

        if (os_log_type_enabled(v296, v297))
        {
          v298 = v122;
          v299 = swift_slowAlloc();
          v300 = swift_slowAlloc();
          v367 = v300;
          *v299 = 136315138;
          swift_getErrorValue();
          v301 = sub_1DD336E40();
          v303 = sub_1DD27DBF0(v301, v302, &v367);

          *(v299 + 4) = v303;
          OUTLINED_FUNCTION_40_7(&dword_1DD27A000, v304, v305, "Failed to build RRAnnotatedEntity from attachment. Error: %s");
          __swift_destroy_boxed_opaque_existential_1(v300);
          OUTLINED_FUNCTION_54();
          v122 = v298;
          OUTLINED_FUNCTION_54();

          return v122;
        }

        v293 = v130;
      }

      return v122;
    }

    v132 = v131;
    OUTLINED_FUNCTION_29_4();
    sub_1DD2EFCBC(v133, v134, v135, v136, v137, v138);
    v366 = v132;

    MEMORY[0x1E12AC640](v172);
    OUTLINED_FUNCTION_26_6();
    v122 = *(v173 + 16);
    v174 = *(v173 + 24);
    if (v122 >= v174 >> 1)
    {
      OUTLINED_FUNCTION_45(v174);
      sub_1DD336830();
    }

    sub_1DD336860();
    v355 = v371;
    v175 = OBJC_IVAR____TtC23SiriReferenceResolution23RRNowPlayingMediaPuller_logger;
    v176 = v363 + OBJC_IVAR____TtC23SiriReferenceResolution23RRNowPlayingMediaPuller_logger;
    v177 = sub_1DD335CB0();
    v178 = sub_1DD336930();
    v179 = OUTLINED_FUNCTION_51(v178);
    v180 = v361;
    if (v179)
    {
      v122 = OUTLINED_FUNCTION_69();
      *v122 = 0;
      _os_log_impl(&dword_1DD27A000, v177, v176, "Pulled attachment successfully", v122, 2u);
      OUTLINED_FUNCTION_54();
    }

    sub_1DD2F009C(v180);
    if (v181)
    {
      v365 = v175;
      v182 = v330;
      v183 = v358;
      (*(v123 + 104))(v330, *MEMORY[0x1E69D20C0], v358);
      sub_1DD2D4960();
      v278 = v182;
      v279 = *(v123 + 8);
      v279(v278, v183);
      OUTLINED_FUNCTION_29_4();
      sub_1DD2EFCBC(v280, v281, v282, v283, v284, v285);

      MEMORY[0x1E12AC640](v316);
      OUTLINED_FUNCTION_26_6();
      v319 = *(v317 + 16);
      v318 = *(v317 + 24);
      if (v319 >= v318 >> 1)
      {
        OUTLINED_FUNCTION_45(v318);
        sub_1DD336830();
      }

      sub_1DD336860();
      v122 = v371;
      v320 = sub_1DD335CB0();
      v321 = sub_1DD336930();
      if (OUTLINED_FUNCTION_17_0(v321))
      {
        v322 = OUTLINED_FUNCTION_69();
        *v322 = 0;
        _os_log_impl(&dword_1DD27A000, v320, v321, "Pulled attachment successfully", v322, 2u);
        OUTLINED_FUNCTION_54();
      }

      v279(v354, v358);
    }

    else
    {
      (*(v123 + 8))(v354, v358);

      OUTLINED_FUNCTION_27_6();
    }
  }

  return v122;
}

uint64_t sub_1DD2EFA94(void *a1)
{
  if (OUTLINED_FUNCTION_42_6(a1) == 1)
  {
    v2 = MEMORY[0x1E69D1FE8];
LABEL_13:
    v3 = *v2;
    v4 = sub_1DD3350E0();
    OUTLINED_FUNCTION_1(v4);
    v6 = *(v5 + 104);
    v7 = OUTLINED_FUNCTION_23_7();
    v8(v7);
    v9 = OUTLINED_FUNCTION_5_6();
    v12 = v4;
    goto LABEL_14;
  }

  if (OUTLINED_FUNCTION_25_2() == 4)
  {
    v2 = MEMORY[0x1E69D2020];
    goto LABEL_13;
  }

  if (OUTLINED_FUNCTION_25_2() == 6)
  {
    v2 = MEMORY[0x1E69D2018];
    goto LABEL_13;
  }

  if (OUTLINED_FUNCTION_25_2() == 2)
  {
    v2 = MEMORY[0x1E69D2010];
    goto LABEL_13;
  }

  if (OUTLINED_FUNCTION_25_2() == 3)
  {
    v2 = MEMORY[0x1E69D1FF8];
    goto LABEL_13;
  }

  if ([v1 mediaType] == 2)
  {
    v2 = MEMORY[0x1E69D2000];
    goto LABEL_13;
  }

  sub_1DD3350E0();
  v9 = OUTLINED_FUNCTION_10_7();
LABEL_14:

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_1DD2EFBAC(void *a1)
{
  if (OUTLINED_FUNCTION_42_6(a1) == 1)
  {
    v2 = MEMORY[0x1E69D20B8];
LABEL_13:
    v3 = *v2;
    v4 = sub_1DD335130();
    OUTLINED_FUNCTION_1(v4);
    v6 = *(v5 + 104);
    v7 = OUTLINED_FUNCTION_23_7();
    v8(v7);
    v9 = OUTLINED_FUNCTION_5_6();
    v12 = v4;
    goto LABEL_14;
  }

  if (OUTLINED_FUNCTION_25_2() == 4)
  {
    v2 = MEMORY[0x1E69D20F8];
    goto LABEL_13;
  }

  if (OUTLINED_FUNCTION_25_2() == 2)
  {
    v2 = MEMORY[0x1E69D20B0];
    goto LABEL_13;
  }

  if (OUTLINED_FUNCTION_25_2() == 3)
  {
    v2 = MEMORY[0x1E69D20D0];
    goto LABEL_13;
  }

  if ([v1 mediaType] == 2)
  {
    v2 = MEMORY[0x1E69D20E0];
    goto LABEL_13;
  }

  if (OUTLINED_FUNCTION_25_2())
  {
    v2 = MEMORY[0x1E69D20F0];
    goto LABEL_13;
  }

  sub_1DD335130();
  v9 = OUTLINED_FUNCTION_10_7();
LABEL_14:

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

char *sub_1DD2EFCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a6;
  v61 = a4;
  v62 = a5;
  v63 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_30();
  v59 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_30();
  v56 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  OUTLINED_FUNCTION_36(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - v22;
  v24 = sub_1DD336220();
  v25 = OUTLINED_FUNCTION_1_0(v24);
  v57 = v26;
  v58 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_12();
  v31 = v30 - v29;
  v64 = a1;
  v65 = a2;
  sub_1DD335E60();
  OUTLINED_FUNCTION_24();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66C0, &qword_1DD339430);
  v36 = sub_1DD335CE0();
  OUTLINED_FUNCTION_1_0(v36);
  v38 = v37;
  v40 = *(v39 + 72);
  v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1DD339380;
  v43 = *MEMORY[0x1E69D2908];
  v44 = sub_1DD336130();
  OUTLINED_FUNCTION_1(v44);
  (*(v45 + 104))(v42 + v41, v43);
  (*(v38 + 104))(v42 + v41, *MEMORY[0x1E69D27E8], v36);
  swift_bridgeObjectRetain_n();

  sub_1DD335860();
  v46 = v66;
  sub_1DD3361B0();
  if (!v46)
  {
    sub_1DD336240();
    v47 = v56;
    OUTLINED_FUNCTION_24();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
    v23 = sub_1DD336190();
    sub_1DD296084(v47, &qword_1ECCD6348, &unk_1DD338E20);
    v52 = sub_1DD334830();
    OUTLINED_FUNCTION_1(v52);
    v54 = v59;
    (*(v53 + 16))(v59, v60, v52);
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v52);
    sub_1DD335F50();
    (*(v57 + 8))(v31, v58);
  }

  return v23;
}

uint64_t sub_1DD2F00C4(void *a1, SEL *a2, SEL *a3)
{
  if (![a1 *a2])
  {
    return 0;
  }

  [a1 *a3];
  return sub_1DD336DC0();
}

uint64_t sub_1DD2F0130(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
LABEL_3:
    sub_1DD3350F0();
    v1 = OUTLINED_FUNCTION_10_7();
  }

  else
  {
    switch(a1)
    {
      case 1:
        v5 = MEMORY[0x1E69D2050];
        break;
      case 2:
        v5 = MEMORY[0x1E69D2048];
        break;
      case 3:
        v5 = MEMORY[0x1E69D2060];
        break;
      case 4:
        v5 = MEMORY[0x1E69D2040];
        break;
      case 5:
        v5 = MEMORY[0x1E69D2058];
        break;
      default:
        goto LABEL_3;
    }

    v6 = *v5;
    v7 = sub_1DD3350F0();
    OUTLINED_FUNCTION_1(v7);
    v9 = *(v8 + 104);
    v10 = OUTLINED_FUNCTION_23_7();
    v11(v10);
    v1 = OUTLINED_FUNCTION_5_6();
    v4 = v7;
  }

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t RRNowPlayingMediaPuller.deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution23RRNowPlayingMediaPuller_logger;
  v2 = sub_1DD335CD0();
  OUTLINED_FUNCTION_1(v2);
  (*(v3 + 8))(v0 + v1);

  return v0;
}

uint64_t RRNowPlayingMediaPuller.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution23RRNowPlayingMediaPuller_logger;
  v2 = sub_1DD335CD0();
  OUTLINED_FUNCTION_1(v2);
  (*(v3 + 8))(v0 + v1);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t sub_1DD2F0328()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DD2836AC;

  return sub_1DD2ED798();
}

uint64_t sub_1DD2F03F4()
{
  result = sub_1DD335CD0();
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

uint64_t dispatch thunk of RRNowPlayingMediaPuller.pull(at:)(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD29B568;

  return v8(a1);
}

uint64_t sub_1DD2F0600(void *a1)
{
  v2 = [a1 contentItems];

  if (!v2)
  {
    return 0;
  }

  sub_1DD2F07C0();
  v3 = sub_1DD336810();

  return v3;
}

uint64_t sub_1DD2F0668(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD3365D0();

  return v3;
}

void sub_1DD2F06D8(void *a1, uint64_t a2)
{
  v5 = sub_1DD334830();
  OUTLINED_FUNCTION_69_0(v5);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = v7 + *(v8 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D10, &unk_1DD33A940);
  OUTLINED_FUNCTION_36(v10);
  v12 = *(v11 + 80);
  v13 = *(v2 + 16);

  sub_1DD2EDD14(a1, a2, v13, v2 + v7);
}

unint64_t sub_1DD2F07C0()
{
  result = qword_1EE027558;
  if (!qword_1EE027558)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE027558);
  }

  return result;
}

uint64_t sub_1DD2F0810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DD336350();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_1DD2F08B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D18, &qword_1DD33A960);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD33A950;
  if (qword_1EE028488 != -1)
  {
    swift_once();
  }

  v1 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v1, qword_1EE02A388);
  *(v0 + 56) = v1;
  *(v0 + 64) = OUTLINED_FUNCTION_6_8(&qword_1EE0283C0);
  __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  OUTLINED_FUNCTION_12_1();
  v3 = *(v2 + 16);
  OUTLINED_FUNCTION_3_10();
  v4();
  if (qword_1EE028480 != -1)
  {
    swift_once();
  }

  v5 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v5, qword_1EE02A370);
  *(v0 + 96) = v5;
  *(v0 + 104) = OUTLINED_FUNCTION_6_8(&qword_1EE0283B8);
  __swift_allocate_boxed_opaque_existential_1((v0 + 72));
  OUTLINED_FUNCTION_12_1();
  v7 = *(v6 + 16);
  OUTLINED_FUNCTION_3_10();
  v8();
  if (qword_1EE0284C0 != -1)
  {
    swift_once();
  }

  v9 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v9, qword_1EE02A400);
  *(v0 + 136) = v9;
  *(v0 + 144) = OUTLINED_FUNCTION_6_8(&qword_1EE0283E8);
  __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  OUTLINED_FUNCTION_12_1();
  v11 = *(v10 + 16);
  OUTLINED_FUNCTION_3_10();
  v12();
  if (qword_1EE0284C8 != -1)
  {
    swift_once();
  }

  v13 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v13, qword_1EE02A418);
  *(v0 + 176) = v13;
  *(v0 + 184) = OUTLINED_FUNCTION_6_8(&qword_1EE0283F0);
  __swift_allocate_boxed_opaque_existential_1((v0 + 152));
  OUTLINED_FUNCTION_12_1();
  v15 = *(v14 + 16);
  OUTLINED_FUNCTION_3_10();
  v16();
  if (qword_1EE0284B0 != -1)
  {
    swift_once();
  }

  v17 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v17, qword_1EE02A3D0);
  *(v0 + 216) = v17;
  *(v0 + 224) = OUTLINED_FUNCTION_6_8(&qword_1EE0283D8);
  __swift_allocate_boxed_opaque_existential_1((v0 + 192));
  OUTLINED_FUNCTION_12_1();
  v19 = *(v18 + 16);
  OUTLINED_FUNCTION_3_10();
  v20();
  if (qword_1EE0284B8 != -1)
  {
    swift_once();
  }

  v21 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v21, qword_1EE02A3E8);
  *(v0 + 256) = v21;
  *(v0 + 264) = OUTLINED_FUNCTION_6_8(&qword_1EE0283E0);
  __swift_allocate_boxed_opaque_existential_1((v0 + 232));
  OUTLINED_FUNCTION_12_1();
  v23 = *(v22 + 16);
  OUTLINED_FUNCTION_3_10();
  v24();
  if (qword_1EE0281F0 != -1)
  {
    swift_once();
  }

  v25 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v25, qword_1EE02A2B0);
  *(v0 + 296) = v25;
  *(v0 + 304) = OUTLINED_FUNCTION_6_8(&qword_1EE0281C0);
  __swift_allocate_boxed_opaque_existential_1((v0 + 272));
  OUTLINED_FUNCTION_12_1();
  v27 = *(v26 + 16);
  OUTLINED_FUNCTION_3_10();
  v28();
  if (qword_1EE0281F8 != -1)
  {
    swift_once();
  }

  v29 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v29, qword_1EE02A2C8);
  *(v0 + 336) = v29;
  *(v0 + 344) = OUTLINED_FUNCTION_6_8(&qword_1EE0281C8);
  __swift_allocate_boxed_opaque_existential_1((v0 + 312));
  OUTLINED_FUNCTION_12_1();
  v31 = *(v30 + 16);
  OUTLINED_FUNCTION_3_10();
  v32();
  if (qword_1EE028498 != -1)
  {
    swift_once();
  }

  v33 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v33, qword_1EE02A3A0);
  *(v0 + 376) = v33;
  *(v0 + 384) = OUTLINED_FUNCTION_6_8(&qword_1EE0283C8);
  __swift_allocate_boxed_opaque_existential_1((v0 + 352));
  OUTLINED_FUNCTION_12_1();
  v35 = *(v34 + 16);
  OUTLINED_FUNCTION_3_10();
  v36();
  if (qword_1EE0284A0 != -1)
  {
    swift_once();
  }

  v37 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v37, qword_1EE02A3B8);
  *(v0 + 416) = v37;
  *(v0 + 424) = OUTLINED_FUNCTION_6_8(&qword_1EE0283D0);
  __swift_allocate_boxed_opaque_existential_1((v0 + 392));
  OUTLINED_FUNCTION_12_1();
  v39 = *(v38 + 16);
  OUTLINED_FUNCTION_3_10();
  v40();
  if (qword_1EE0284D0 != -1)
  {
    swift_once();
  }

  v41 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v41, qword_1EE02A430);
  *(v0 + 456) = v41;
  *(v0 + 464) = OUTLINED_FUNCTION_6_8(&qword_1EE0283F8);
  __swift_allocate_boxed_opaque_existential_1((v0 + 432));
  OUTLINED_FUNCTION_12_1();
  v43 = *(v42 + 16);
  OUTLINED_FUNCTION_3_10();
  v44();
  if (qword_1EE0284D8 != -1)
  {
    swift_once();
  }

  v45 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v45, qword_1EE02A448);
  *(v0 + 496) = v45;
  *(v0 + 504) = OUTLINED_FUNCTION_6_8(&qword_1EE028400);
  __swift_allocate_boxed_opaque_existential_1((v0 + 472));
  OUTLINED_FUNCTION_12_1();
  v47 = *(v46 + 16);
  OUTLINED_FUNCTION_3_10();
  v48();
  if (qword_1EE028528 != -1)
  {
    swift_once();
  }

  v49 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v49, qword_1EE02A4F0);
  *(v0 + 536) = v49;
  *(v0 + 544) = OUTLINED_FUNCTION_6_8(&qword_1EE028438);
  __swift_allocate_boxed_opaque_existential_1((v0 + 512));
  OUTLINED_FUNCTION_12_1();
  v51 = *(v50 + 16);
  OUTLINED_FUNCTION_3_10();
  v52();
  if (qword_1EE0284F8 != -1)
  {
    swift_once();
  }

  v53 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v53, qword_1EE02A490);
  *(v0 + 576) = v53;
  *(v0 + 584) = OUTLINED_FUNCTION_6_8(&qword_1EE028418);
  __swift_allocate_boxed_opaque_existential_1((v0 + 552));
  OUTLINED_FUNCTION_12_1();
  v55 = *(v54 + 16);
  OUTLINED_FUNCTION_3_10();
  v56();
  if (qword_1EE028550 != -1)
  {
    swift_once();
  }

  v57 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v57, qword_1EE02A538);
  *(v0 + 616) = v57;
  *(v0 + 624) = OUTLINED_FUNCTION_6_8(&qword_1EE028450);
  __swift_allocate_boxed_opaque_existential_1((v0 + 592));
  OUTLINED_FUNCTION_12_1();
  v59 = *(v58 + 16);
  OUTLINED_FUNCTION_3_10();
  v60();
  if (qword_1EE0284E0 != -1)
  {
    swift_once();
  }

  v61 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v61, qword_1EE02A460);
  *(v0 + 656) = v61;
  *(v0 + 664) = OUTLINED_FUNCTION_6_8(&qword_1EE028408);
  __swift_allocate_boxed_opaque_existential_1((v0 + 632));
  OUTLINED_FUNCTION_12_1();
  v63 = *(v62 + 16);
  OUTLINED_FUNCTION_3_10();
  v64();
  if (qword_1EE028218 != -1)
  {
    swift_once();
  }

  v65 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v65, qword_1EE02A310);
  *(v0 + 696) = v65;
  *(v0 + 704) = OUTLINED_FUNCTION_6_8(&qword_1EE0281E0);
  __swift_allocate_boxed_opaque_existential_1((v0 + 672));
  OUTLINED_FUNCTION_12_1();
  v67 = *(v66 + 16);
  OUTLINED_FUNCTION_3_10();
  v68();
  if (qword_1EE028200 != -1)
  {
    swift_once();
  }

  v69 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v69, qword_1EE02A2E0);
  *(v0 + 736) = v69;
  *(v0 + 744) = OUTLINED_FUNCTION_6_8(&qword_1EE0281D0);
  __swift_allocate_boxed_opaque_existential_1((v0 + 712));
  OUTLINED_FUNCTION_12_1();
  v71 = *(v70 + 16);
  OUTLINED_FUNCTION_3_10();
  v72();
  if (qword_1EE028558 != -1)
  {
    swift_once();
  }

  v73 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v73, qword_1EE02A550);
  *(v0 + 776) = v73;
  *(v0 + 784) = OUTLINED_FUNCTION_6_8(&qword_1EE028458);
  __swift_allocate_boxed_opaque_existential_1((v0 + 752));
  OUTLINED_FUNCTION_12_1();
  v75 = *(v74 + 16);
  OUTLINED_FUNCTION_3_10();
  v76();
  if (qword_1EE028510 != -1)
  {
    swift_once();
  }

  v77 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v77, qword_1EE02A4C0);
  *(v0 + 816) = v77;
  *(v0 + 824) = OUTLINED_FUNCTION_6_8(&qword_1EE028428);
  __swift_allocate_boxed_opaque_existential_1((v0 + 792));
  OUTLINED_FUNCTION_12_1();
  v79 = *(v78 + 16);
  OUTLINED_FUNCTION_3_10();
  v80();
  if (qword_1EE028568 != -1)
  {
    swift_once();
  }

  v81 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v81, qword_1EE02A580);
  *(v0 + 856) = v81;
  *(v0 + 864) = OUTLINED_FUNCTION_6_8(&qword_1EE028468);
  __swift_allocate_boxed_opaque_existential_1((v0 + 832));
  OUTLINED_FUNCTION_12_1();
  v83 = *(v82 + 16);
  OUTLINED_FUNCTION_3_10();
  v84();
  if (qword_1EE028520 != -1)
  {
    swift_once();
  }

  v85 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v85, qword_1EE02A4D8);
  *(v0 + 896) = v85;
  *(v0 + 904) = OUTLINED_FUNCTION_6_8(&qword_1EE028430);
  __swift_allocate_boxed_opaque_existential_1((v0 + 872));
  OUTLINED_FUNCTION_12_1();
  v87 = *(v86 + 16);
  OUTLINED_FUNCTION_3_10();
  v88();
  if (qword_1EE028578 != -1)
  {
    swift_once();
  }

  v89 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v89, qword_1EE02A598);
  *(v0 + 936) = v89;
  *(v0 + 944) = OUTLINED_FUNCTION_6_8(&qword_1EE028470);
  __swift_allocate_boxed_opaque_existential_1((v0 + 912));
  OUTLINED_FUNCTION_12_1();
  v91 = *(v90 + 16);
  OUTLINED_FUNCTION_3_10();
  v92();
  if (qword_1EE028500 != -1)
  {
    swift_once();
  }

  v93 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v93, qword_1EE02A4A8);
  *(v0 + 976) = v93;
  *(v0 + 984) = OUTLINED_FUNCTION_6_8(&qword_1EE028420);
  __swift_allocate_boxed_opaque_existential_1((v0 + 952));
  OUTLINED_FUNCTION_12_1();
  v95 = *(v94 + 16);
  OUTLINED_FUNCTION_3_10();
  v96();
  if (qword_1EE028588 != -1)
  {
    swift_once();
  }

  v97 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v97, qword_1EE02A5B0);
  *(v0 + 1016) = v97;
  *(v0 + 1024) = OUTLINED_FUNCTION_6_8(&qword_1EE028478);
  __swift_allocate_boxed_opaque_existential_1((v0 + 992));
  OUTLINED_FUNCTION_12_1();
  v99 = *(v98 + 16);
  OUTLINED_FUNCTION_3_10();
  v100();
  if (qword_1EE028560 != -1)
  {
    swift_once();
  }

  v101 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v101, qword_1EE02A568);
  *(v0 + 1056) = v101;
  *(v0 + 1064) = OUTLINED_FUNCTION_6_8(&qword_1EE028460);
  __swift_allocate_boxed_opaque_existential_1((v0 + 1032));
  OUTLINED_FUNCTION_12_1();
  v103 = *(v102 + 16);
  OUTLINED_FUNCTION_3_10();
  v104();
  if (qword_1EE028228 != -1)
  {
    swift_once();
  }

  v105 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v105, qword_1EE02A328);
  *(v0 + 1096) = v105;
  *(v0 + 1104) = OUTLINED_FUNCTION_6_8(&qword_1EE0281E8);
  __swift_allocate_boxed_opaque_existential_1((v0 + 1072));
  OUTLINED_FUNCTION_12_1();
  v107 = *(v106 + 16);
  OUTLINED_FUNCTION_3_10();
  v108();
  if (qword_1EE028210 != -1)
  {
    swift_once();
  }

  v109 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v109, qword_1EE02A2F8);
  *(v0 + 1136) = v109;
  *(v0 + 1144) = OUTLINED_FUNCTION_6_8(&qword_1EE0281D8);
  __swift_allocate_boxed_opaque_existential_1((v0 + 1112));
  OUTLINED_FUNCTION_12_1();
  v111 = *(v110 + 16);
  OUTLINED_FUNCTION_3_10();
  v112();
  if (qword_1EE0284F0 != -1)
  {
    swift_once();
  }

  v113 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v113, qword_1EE02A478);
  *(v0 + 1176) = v113;
  *(v0 + 1184) = OUTLINED_FUNCTION_6_8(&qword_1EE028410);
  __swift_allocate_boxed_opaque_existential_1((v0 + 1152));
  OUTLINED_FUNCTION_12_1();
  v115 = *(v114 + 16);
  OUTLINED_FUNCTION_3_10();
  v116();
  if (qword_1EE028548 != -1)
  {
    swift_once();
  }

  v117 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v117, qword_1EE02A520);
  *(v0 + 1216) = v117;
  *(v0 + 1224) = OUTLINED_FUNCTION_6_8(&qword_1EE028448);
  __swift_allocate_boxed_opaque_existential_1((v0 + 1192));
  OUTLINED_FUNCTION_12_1();
  v119 = *(v118 + 16);
  OUTLINED_FUNCTION_3_10();
  v120();
  if (qword_1EE028538 != -1)
  {
    swift_once();
  }

  v121 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v121, qword_1EE02A508);
  *(v0 + 1256) = v121;
  *(v0 + 1264) = OUTLINED_FUNCTION_6_8(&qword_1EE028440);
  __swift_allocate_boxed_opaque_existential_1((v0 + 1232));
  OUTLINED_FUNCTION_12_1();
  v123 = *(v122 + 16);
  OUTLINED_FUNCTION_3_10();
  result = v124();
  qword_1EE02A360 = v0;
  return result;
}

uint64_t sub_1DD2F1B08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D20, &qword_1DD33A968);
  __swift_allocate_value_buffer(v0, qword_1EE02A388);
  __swift_project_value_buffer(v0, qword_1EE02A388);
  sub_1DD336350();
  sub_1DD336310();
  return sub_1DD335790();
}

uint64_t sub_1DD2F1B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = v41 - v5;
  v6 = sub_1DD336280();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v47 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DD336350();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v51 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (v41 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (v41 - v17);
  v19 = *(v10 + 16);
  v19(v41 - v17, a1, v9);
  v20 = *(v10 + 88);
  if (v20(v18, v9) == *MEMORY[0x1E69DAE58])
  {
    (*(v10 + 96))(v18, v9);
LABEL_3:
    v21 = *v18;
    v22 = sub_1DD336310();
    v23 = swift_projectBox();
    (*(*(v22 - 8) + 16))(v52, v23, v22);
  }

  v42 = *MEMORY[0x1E69DAE58];
  v44 = *(v10 + 8);
  v44(v18, v9);
  v45 = v19;
  v46 = a1;
  v19(v16, a1, v9);
  v43 = v20;
  if (v20(v16, v9) == *MEMORY[0x1E69DAE18])
  {
    v41[1] = v10 + 8;
    v41[2] = v10 + 16;
    v25 = *(v10 + 96);
    v25(v16, v9);
    v26 = *v16;
    v27 = swift_projectBox();
    v28 = v47;
    v29 = v48;
    v30 = v49;
    (*(v48 + 16))(v47, v27, v49);

    v31 = sub_1DD336270();
    v32 = v50;
    sub_1DD2F0810(v31, v50);

    (*(v29 + 8))(v28, v30);
    if (__swift_getEnumTagSinglePayload(v32, 1, v9) == 1)
    {
      sub_1DD2825F0(v32, &qword_1ECCD6608, &qword_1DD339310);
      v34 = v45;
      v33 = v46;
    }

    else
    {
      v35 = v43(v32, v9);
      v34 = v45;
      v33 = v46;
      if (v35 == v42)
      {
        v25(v32, v9);
        v18 = v32;
        goto LABEL_3;
      }

      v44(v32, v9);
    }
  }

  else
  {
    v44(v16, v9);
    v34 = v45;
    v33 = v46;
  }

  v36 = sub_1DD335850();
  sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
  swift_allocError();
  v38 = v37;
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_1DD336C00();
  MEMORY[0x1E12AC540](0xD000000000000037, 0x80000001DD33E510);
  v34(v51, v33, v9);
  v39 = sub_1DD336630();
  MEMORY[0x1E12AC540](v39);

  v40 = v54;
  *v38 = v53;
  v38[1] = v40;
  (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69D3640], v36);
  return swift_willThrow();
}

uint64_t sub_1DD2F210C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D28, &qword_1DD33A970);
  __swift_allocate_value_buffer(v0, qword_1EE02A370);
  __swift_project_value_buffer(v0, qword_1EE02A370);
  sub_1DD336350();
  sub_1DD336330();
  return sub_1DD335790();
}

uint64_t sub_1DD2F219C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1DD336350();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v10 = sub_1DD336340();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v18 = *(v4 + 16);
  v35 = a1;
  v19 = a1;
  v20 = v18;
  v18(v9, v19, v3);
  if ((*(v4 + 88))(v9, v3) == *MEMORY[0x1E69DAE70])
  {
    (*(v4 + 96))(v9, v3);
    v21 = *v9;
    v22 = swift_projectBox();
    (*(v11 + 16))(v17, v22, v10);

    (*(v11 + 32))(v15, v17, v10);
    if ((*(v11 + 88))(v15, v10) == *MEMORY[0x1E69DADE8])
    {
      (*(v11 + 96))(v15, v10);
      v23 = sub_1DD336330();
      return (*(*(v23 - 8) + 32))(v31, v15, v23);
    }

    (*(v11 + 8))(v15, v10);
  }

  else
  {
    (*(v4 + 8))(v9, v3);
  }

  v25 = sub_1DD335850();
  sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
  swift_allocError();
  v27 = v26;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1DD336C00();
  MEMORY[0x1E12AC540](0xD000000000000046, 0x80000001DD33E4C0);
  v20(v32, v35, v3);
  v28 = sub_1DD336630();
  MEMORY[0x1E12AC540](v28);

  v29 = v34;
  *v27 = v33;
  v27[1] = v29;
  (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69D3640], v25);
  return swift_willThrow();
}

uint64_t sub_1DD2F25C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D48, &qword_1DD33A990);
  __swift_allocate_value_buffer(v0, qword_1EE02A3E8);
  __swift_project_value_buffer(v0, qword_1EE02A3E8);
  sub_1DD336310();
  sub_1DD335660();
  return sub_1DD335790();
}

uint64_t sub_1DD2F2650@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v3 = sub_1DD336310();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1DD336340();
  v69 = *(v72 - 8);
  v6 = *(v69 + 64);
  v7 = MEMORY[0x1EEE9AC00](v72);
  v58 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v68 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v57 - v14;
  v16 = sub_1DD334C50();
  v66 = *(v16 - 8);
  v67 = v16;
  v17 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DD336370();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1DD336290();
  v64 = v26;
  v65 = v25;
  v27 = a1;
  sub_1DD3362A0();
  sub_1DD336360();
  (*(v21 + 8))(v24, v20);
  v28 = v15;
  sub_1DD3362D0();

  v29 = sub_1DD335660();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_1DD335650();
  sub_1DD334C30();
  sub_1DD334BA0();
  (*(v66 + 8))(v19, v67);
  v33 = sub_1DD3362D0();
  sub_1DD2AAFF4(v33, v15);

  v34 = sub_1DD336350();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v34);
  v36 = MEMORY[0x1E69DAE70];
  if (EnumTagSinglePayload == 1)
  {
    sub_1DD2825F0(v15, &qword_1ECCD6608, &qword_1DD339310);
    v37 = v72;
    v39 = v68;
    v38 = v69;
  }

  else
  {
    v40 = *(v34 - 8);
    v41 = (*(v40 + 88))(v15, v34);
    v39 = v68;
    if (v41 == *v36)
    {
      (*(v40 + 96))(v28, v34);
      v42 = *v28;
      v43 = swift_projectBox();
      v38 = v69;
      v44 = v60;
      v37 = v72;
      (*(v69 + 16))(v60, v43, v72);
      if ((*(v38 + 88))(v44, v37) == *MEMORY[0x1E69DADF0])
      {
        goto LABEL_11;
      }

      (*(v38 + 8))(v44, v37);
    }

    else
    {
      (*(v40 + 8))(v28, v34);
      v37 = v72;
      v38 = v69;
    }
  }

  v45 = sub_1DD3362D0();
  sub_1DD2AAFF4(v45, v39);

  if (__swift_getEnumTagSinglePayload(v39, 1, v34) != 1)
  {
    v46 = *(v34 - 8);
    if ((*(v46 + 88))(v39, v34) != *v36)
    {
      (*(v46 + 8))(v39, v34);
      goto LABEL_14;
    }

    (*(v46 + 96))(v39, v34);
    v47 = *v39;
    v48 = swift_projectBox();
    v44 = v58;
    (*(v38 + 16))(v58, v48, v37);
    if ((*(v38 + 88))(v44, v37) != *MEMORY[0x1E69DADF0])
    {
      (*(v38 + 8))(v44, v37);

      goto LABEL_14;
    }

LABEL_11:
    (*(v38 + 96))(v44, v37);
    v49 = *v44;
    v50 = *(v44 + 1);

    sub_1DD335640();

    *v59 = v32;
    return result;
  }

  sub_1DD2825F0(v39, &qword_1ECCD6608, &qword_1DD339310);
LABEL_14:
  v52 = sub_1DD335850();
  sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
  swift_allocError();
  v54 = v53;
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_1DD336C00();
  MEMORY[0x1E12AC540](0xD000000000000041, 0x80000001DD33E330);
  (*(v62 + 16))(v61, v27, v63);
  v55 = sub_1DD336630();
  MEMORY[0x1E12AC540](v55);

  v56 = v71;
  *v54 = v70;
  v54[1] = v56;
  (*(*(v52 - 8) + 104))(v54, *MEMORY[0x1E69D3640], v52);
  swift_willThrow();
}

uint64_t sub_1DD2F2E80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D50, &qword_1DD33A998);
  __swift_allocate_value_buffer(v0, qword_1EE02A2B0);
  __swift_project_value_buffer(v0, qword_1EE02A2B0);
  sub_1DD336310();
  sub_1DD334B00();
  return sub_1DD335790();
}

uint64_t sub_1DD2F2F10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a2;
  v3 = sub_1DD336310();
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DD336340();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v59 = &v46 - v11;
  v56 = sub_1DD334C50();
  v12 = *(v56 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DD336370();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DD336290();
  v54 = v22;
  v55 = v21;
  v23 = a1;
  sub_1DD3362A0();
  sub_1DD336360();
  (*(v17 + 8))(v20, v16);
  sub_1DD3362D0();

  v24 = sub_1DD334B00();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_1DD334AF0();
  sub_1DD334C30();
  sub_1DD334BA0();
  v28 = v15;
  v29 = v59;
  (*(v12 + 8))(v28, v56);
  v30 = sub_1DD3362D0();
  sub_1DD2AAFF4(v30, v29);

  v31 = sub_1DD336350();
  if (__swift_getEnumTagSinglePayload(v29, 1, v31) == 1)
  {
    sub_1DD2825F0(v29, &qword_1ECCD6608, &qword_1DD339310);
  }

  else
  {
    v32 = *(v31 - 8);
    if ((*(v32 + 88))(v29, v31) == *MEMORY[0x1E69DAE70])
    {
      (*(v32 + 96))(v29, v31);
      v33 = *v29;
      v34 = swift_projectBox();
      v36 = v48;
      v35 = v49;
      v37 = v50;
      (*(v49 + 16))(v48, v34, v50);
      if ((*(v35 + 88))(v36, v37) == *MEMORY[0x1E69DADF0])
      {
        (*(v35 + 96))(v36, v37);
        v38 = *v36;
        v39 = *(v36 + 1);

        sub_1DD334AE0();

        *v47 = v27;
        return result;
      }

      (*(v35 + 8))(v36, v37);
    }

    else
    {
      (*(v32 + 8))(v29, v31);
    }
  }

  v41 = sub_1DD335850();
  sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
  swift_allocError();
  v43 = v42;
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_1DD336C00();
  MEMORY[0x1E12AC540](0xD000000000000045, 0x80000001DD33E2E0);
  (*(v52 + 16))(v51, v23, v53);
  v44 = sub_1DD336630();
  MEMORY[0x1E12AC540](v44);

  v45 = v58;
  *v43 = v57;
  v43[1] = v45;
  (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69D3640], v41);
  swift_willThrow();
}

uint64_t sub_1DD2F355C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D58, &qword_1DD33A9A0);
  __swift_allocate_value_buffer(v0, qword_1EE02A2C8);
  __swift_project_value_buffer(v0, qword_1EE02A2C8);
  sub_1DD336310();
  sub_1DD334E30();
  return sub_1DD335790();
}

uint64_t sub_1DD2F35EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a2;
  v3 = sub_1DD336310();
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DD336340();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = (&v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v61 - v13;
  v14 = sub_1DD336280();
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1DD334C50();
  v17 = *(v75 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DD336370();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1DD336290();
  v73 = v27;
  v74 = v26;
  v28 = a1;
  sub_1DD3362A0();
  sub_1DD336360();
  (*(v22 + 8))(v25, v21);
  v29 = sub_1DD3362D0();
  v30 = sub_1DD334E30();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_1DD334E20();
  v34 = v78;
  sub_1DD334C30();
  sub_1DD334BA0();
  (*(v17 + 8))(v20, v75);
  sub_1DD2AAFF4(v29, v34);

  v35 = sub_1DD336350();
  if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
  {
    sub_1DD2825F0(v34, &qword_1ECCD6608, &qword_1DD339310);
    goto LABEL_12;
  }

  v75 = v33;
  v36 = *(v35 - 8);
  v37 = *(v36 + 88);
  if (v37(v34, v35) != *MEMORY[0x1E69DAE18])
  {
    (*(v36 + 8))(v34, v35);
    goto LABEL_12;
  }

  v73 = *(v36 + 96);
  v74 = v28;
  v73(v34, v35);
  v38 = *v34;
  v39 = swift_projectBox();
  v40 = v67;
  v41 = v68;
  (*(v68 + 16))(v67, v39, v69);

  v42 = sub_1DD336270();
  v43 = v66;
  sub_1DD2F0810(v42, v66);

  if (__swift_getEnumTagSinglePayload(v43, 1, v35) == 1)
  {
    (*(v41 + 8))(v40, v69);
    sub_1DD2825F0(v43, &qword_1ECCD6608, &qword_1DD339310);
LABEL_11:
    v28 = v74;
    goto LABEL_12;
  }

  if (v37(v43, v35) != *MEMORY[0x1E69DAE70])
  {
    (*(v68 + 8))(v67, v69);
    (*(v36 + 8))(v43, v35);
    goto LABEL_11;
  }

  v73(v43, v35);
  v44 = *v43;
  v45 = swift_projectBox();
  v47 = v63;
  v46 = v64;
  v48 = v65;
  (*(v64 + 16))(v63, v45, v65);
  v49 = (*(v46 + 88))(v47, v48);
  v50 = v75;
  v52 = v67;
  v51 = v68;
  if (v49 == *MEMORY[0x1E69DADF0])
  {
    (*(v46 + 96))(v47, v48);
    v53 = *v47;
    v54 = *(v47 + 1);

    sub_1DD334E10();

    result = (*(v51 + 8))(v52, v69);
    *v62 = v50;
    return result;
  }

  (*(v68 + 8))(v67, v69);
  (*(v46 + 8))(v47, v48);

  v28 = v74;
LABEL_12:
  v56 = sub_1DD335850();
  sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
  swift_allocError();
  v58 = v57;
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_1DD336C00();
  MEMORY[0x1E12AC540](0xD000000000000061, 0x80000001DD33E270);
  (*(v71 + 16))(v70, v28, v72);
  v59 = sub_1DD336630();
  MEMORY[0x1E12AC540](v59);

  v60 = v77;
  *v58 = v76;
  v58[1] = v60;
  (*(*(v56 - 8) + 104))(v58, *MEMORY[0x1E69D3640], v56);
  swift_willThrow();
}

uint64_t sub_1DD2F3E38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D68, &qword_1DD33A9B0);
  __swift_allocate_value_buffer(v0, qword_1EE02A3B8);
  __swift_project_value_buffer(v0, qword_1EE02A3B8);
  sub_1DD336350();
  sub_1DD334570();
  return sub_1DD335790();
}

uint64_t sub_1DD2F3EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1DD336350();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v10 = sub_1DD336340();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v18 = *(v4 + 16);
  v35 = a1;
  v19 = a1;
  v20 = v18;
  v18(v9, v19, v3);
  if ((*(v4 + 88))(v9, v3) == *MEMORY[0x1E69DAE70])
  {
    (*(v4 + 96))(v9, v3);
    v21 = *v9;
    v22 = swift_projectBox();
    (*(v11 + 16))(v17, v22, v10);

    (*(v11 + 32))(v15, v17, v10);
    if ((*(v11 + 88))(v15, v10) == *MEMORY[0x1E69DAD80])
    {
      (*(v11 + 96))(v15, v10);
      v23 = sub_1DD334570();
      return (*(*(v23 - 8) + 32))(v31, v15, v23);
    }

    (*(v11 + 8))(v15, v10);
  }

  else
  {
    (*(v4 + 8))(v9, v3);
  }

  v25 = sub_1DD335850();
  sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
  swift_allocError();
  v27 = v26;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1DD336C00();
  MEMORY[0x1E12AC540](0xD000000000000049, 0x80000001DD33E1C0);
  v20(v32, v35, v3);
  v28 = sub_1DD336630();
  MEMORY[0x1E12AC540](v28);

  v29 = v34;
  *v27 = v33;
  v27[1] = v29;
  (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69D3640], v25);
  return swift_willThrow();
}

uint64_t sub_1DD2F42EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D78, &qword_1DD33A9C0);
  __swift_allocate_value_buffer(v0, qword_1EE02A448);
  __swift_project_value_buffer(v0, qword_1EE02A448);
  sub_1DD334570();
  sub_1DD335170();
  return sub_1DD335790();
}

uint64_t sub_1DD2F437C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6778, &qword_1DD339728);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_1DD334570();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  v9 = makeDateTimeEntityFromDateComponents(dateComponents:)(v7);
  result = sub_1DD2825F0(v7, &qword_1ECCD6778, &qword_1DD339728);
  *a2 = v9;
  return result;
}

uint64_t makeDateTimeEntityFromDateComponents(dateComponents:)(uint64_t a1)
{
  v2 = sub_1DD334830();
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v64 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6798, &qword_1DD33A070);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v67 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6778, &qword_1DD339728);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v64 - v12;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v64 - v14;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v64 - v16;
  OUTLINED_FUNCTION_24_0();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v64 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v64 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v64 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v64 - v27;
  v29 = sub_1DD335170();
  OUTLINED_FUNCTION_51_1(v29);
  v30 = sub_1DD335160();
  v31 = sub_1DD334F30();
  OUTLINED_FUNCTION_51_1(v31);
  v76 = sub_1DD334F20();
  v32 = sub_1DD335120();
  OUTLINED_FUNCTION_51_1(v32);
  v75 = sub_1DD335110();
  v77 = a1;
  sub_1DD2FC744(a1, v28, &qword_1ECCD6778, &qword_1DD339728);
  v33 = sub_1DD334570();
  OUTLINED_FUNCTION_10_1(v28);
  if (v34)
  {
    sub_1DD2825F0(v28, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD334510();
    OUTLINED_FUNCTION_9();
    (*(v35 + 8))(v28, v33);
  }

  v36 = v30;
  sub_1DD335100();
  sub_1DD335860();
  sub_1DD334EF0();

  OUTLINED_FUNCTION_91();
  v74 = sub_1DD335110();
  sub_1DD2FC744(v77, v26, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v26);
  if (v34)
  {
    sub_1DD2825F0(v26, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD334540();
    OUTLINED_FUNCTION_9();
    (*(v37 + 8))(v26, v33);
  }

  sub_1DD335100();
  sub_1DD335860();
  sub_1DD334F00();

  OUTLINED_FUNCTION_91();
  v73 = sub_1DD335110();
  sub_1DD2FC744(v77, v23, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v23);
  v38 = v68;
  if (v34)
  {
    sub_1DD2825F0(v23, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD334550();
    OUTLINED_FUNCTION_9();
    (*(v39 + 8))(v23, v33);
  }

  v40 = v72;
  sub_1DD335100();
  sub_1DD335860();
  sub_1DD334F10();

  v41 = sub_1DD3351A0();
  OUTLINED_FUNCTION_51_1(v41);
  v72 = sub_1DD335190();
  sub_1DD2FC744(v77, v20, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v20);
  if (v34)
  {
    v42 = &qword_1ECCD6778;
    v43 = &qword_1DD339728;
    v44 = v20;
LABEL_15:
    sub_1DD2825F0(v44, v42, v43);
LABEL_16:

    goto LABEL_17;
  }

  v45 = v67;
  sub_1DD334560();
  OUTLINED_FUNCTION_9();
  (*(v46 + 8))(v20, v33);
  v47 = sub_1DD3349F0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, v47);
  if (EnumTagSinglePayload == 1)
  {
    v42 = &qword_1ECCD6798;
    v43 = &qword_1DD33A070;
    v44 = v45;
    goto LABEL_15;
  }

  v59 = v36;
  v60 = v64;
  sub_1DD334820();
  sub_1DD3349B0();
  v62 = v61;
  v63 = v60;
  v36 = v59;
  (*(v65 + 8))(v63, v66);
  (*(*(v47 - 8) + 8))(v67, v47);
  if (!v62)
  {
    goto LABEL_16;
  }

LABEL_17:
  sub_1DD335180();

  sub_1DD335860();
  sub_1DD334EE0();

  sub_1DD335860();
  sub_1DD335150();

  v49 = sub_1DD334ED0();
  OUTLINED_FUNCTION_51_1(v49);
  sub_1DD334EC0();
  OUTLINED_FUNCTION_91();
  sub_1DD335110();
  sub_1DD2FC744(v77, v40, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v40);
  v70 = v36;
  if (v34)
  {
    sub_1DD2825F0(v40, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD334520();
    OUTLINED_FUNCTION_9();
    (*(v50 + 8))(v40, v33);
  }

  sub_1DD335100();
  sub_1DD335860();
  sub_1DD334EB0();

  OUTLINED_FUNCTION_91();
  sub_1DD335110();
  sub_1DD2FC744(v77, v38, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v38);
  if (v34)
  {
    sub_1DD2825F0(v38, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD3344D0();
    OUTLINED_FUNCTION_9();
    (*(v51 + 8))(v38, v33);
  }

  sub_1DD335100();
  sub_1DD335860();
  sub_1DD334E90();

  v52 = sub_1DD335340();
  OUTLINED_FUNCTION_51_1(v52);
  sub_1DD335330();
  OUTLINED_FUNCTION_91();
  sub_1DD335110();
  v53 = v69;
  sub_1DD2FC744(v77, v69, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v53);
  if (v34)
  {
    sub_1DD2825F0(v53, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD334530();
    OUTLINED_FUNCTION_9();
    (*(v54 + 8))(v53, v33);
  }

  sub_1DD335100();
  sub_1DD335860();
  sub_1DD335320();

  sub_1DD335860();
  sub_1DD334EA0();

  OUTLINED_FUNCTION_91();
  sub_1DD335110();
  v55 = v71;
  sub_1DD2FC744(v77, v71, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v55);
  if (v34)
  {
    sub_1DD2825F0(v55, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD334500();
    OUTLINED_FUNCTION_9();
    (*(v56 + 8))(v55, v33);
  }

  sub_1DD335100();
  sub_1DD335860();
  sub_1DD334E80();

  sub_1DD335860();
  v57 = v70;
  sub_1DD335140();

  return v57;
}

uint64_t sub_1DD2F4EFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D30, &qword_1DD33A978);
  __swift_allocate_value_buffer(v0, qword_1EE02A400);
  __swift_project_value_buffer(v0, qword_1EE02A400);
  sub_1DD336310();
  sub_1DD3354F0();
  return sub_1DD335790();
}

uint64_t sub_1DD2F4F8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v319 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6778, &qword_1DD339728);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v316 = &v302 - v5;
  v336 = sub_1DD334830();
  v334 = *(v336 - 8);
  v6 = v334[8];
  v7 = MEMORY[0x1EEE9AC00](v336);
  v323 = &v302 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v335 = &v302 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v308 = &v302 - v11;
  v315 = sub_1DD3349F0();
  v314 = *(v315 - 8);
  v12 = *(v314 + 64);
  MEMORY[0x1EEE9AC00](v315);
  v313 = &v302 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = sub_1DD334570();
  v317 = *(v318 - 8);
  v14 = *(v317 + 64);
  v15 = MEMORY[0x1EEE9AC00](v318);
  v325 = &v302 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v324 = &v302 - v17;
  v344 = sub_1DD334D40();
  v343 = *(v344 - 8);
  v18 = *(v343 + 64);
  v19 = MEMORY[0x1EEE9AC00](v344);
  v306 = &v302 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v341 = &v302 - v21;
  v347 = sub_1DD336340();
  v348 = *(v347 - 8);
  v22 = *(v348 + 64);
  v23 = MEMORY[0x1EEE9AC00](v347);
  v307 = &v302 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v321 = &v302 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v332 = &v302 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v350 = &v302 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v309 = &v302 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v342 = &v302 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v339 = &v302 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v311 = &v302 - v37;
  v364 = sub_1DD336310();
  v366 = *(v364 - 8);
  v38 = *(v366 + 64);
  v39 = MEMORY[0x1EEE9AC00](v364);
  v352 = &v302 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v327 = &v302 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v346 = &v302 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8);
  v310 = (&v302 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = MEMORY[0x1EEE9AC00](v46);
  v328 = (&v302 - v49);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v363 = (&v302 - v51);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v349 = (&v302 - v53);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v322 = &v302 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v340 = (&v302 - v57);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v338 = (&v302 - v59);
  v60 = MEMORY[0x1EEE9AC00](v58);
  v326 = (&v302 - v61);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v337 = &v302 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v357 = &v302 - v64;
  v362 = sub_1DD336350();
  v365 = *(v362 - 8);
  v65 = v365[8];
  v66 = MEMORY[0x1EEE9AC00](v362);
  v345 = &v302 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v351 = &v302 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v312 = &v302 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v320 = &v302 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v331 = &v302 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v333 = &v302 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v329 = &v302 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v330 = &v302 - v81;
  v82 = MEMORY[0x1EEE9AC00](v80);
  v358 = &v302 - v83;
  MEMORY[0x1EEE9AC00](v82);
  v359 = &v302 - v84;
  v85 = sub_1DD3349A0();
  v360 = *(v85 - 8);
  v361 = v85;
  v86 = *(v360 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v367 = &v302 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v356 = sub_1DD334C50();
  v88 = *(v356 - 8);
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v356);
  v91 = &v302 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1DD336370();
  v93 = *(v92 - 8);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v96 = &v302 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1DD336290();
  v354 = v98;
  v355 = v97;
  sub_1DD3362A0();
  sub_1DD336360();
  v99 = v96;
  v100 = v362;
  (*(v93 + 8))(v99, v92);
  v353 = a1;
  v101 = sub_1DD3362D0();
  v102 = sub_1DD3354F0();
  v103 = *(v102 + 48);
  v104 = *(v102 + 52);
  swift_allocObject();
  v105 = sub_1DD3354E0();
  v106 = v357;
  sub_1DD334C30();
  sub_1DD334BA0();
  (*(v88 + 8))(v91, v356);
  sub_1DD334980();
  sub_1DD2AAFF4(v101, v106);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v106, 1, v100);
  v108 = MEMORY[0x1E69DAE70];
  if (EnumTagSinglePayload != 1)
  {
    v356 = v105;
    v109 = v365;
    v111 = v365 + 4;
    v110 = v365[4];
    v112 = v359;
    v110(v359, v106, v100);
    v114 = v109 + 2;
    v113 = v109[2];
    v115 = v358;
    v113(v358, v112, v100);
    v116 = v109[11];
    v357 = (v109 + 11);
    v355 = v116;
    v117 = v116(v115, v100);
    if (v117 != *MEMORY[0x1E69DAE58])
    {
      v131 = v109[1];
      v131(v359, v100);
      v131(v358, v100);
      v105 = v356;
      v108 = MEMORY[0x1E69DAE70];
      goto LABEL_7;
    }

    v118 = v117;
    v351 = v113;
    v119 = v109[12];
    v120 = v358;
    v349 = v109 + 12;
    v345 = v119;
    (v119)(v358, v100);
    v121 = *v120;
    v122 = swift_projectBox();
    v123 = *(v366 + 16);
    v124 = v364;
    v358 = (v366 + 16);
    v354 = v123;
    v123(v346, v122, v364);

    v125 = sub_1DD3362D0();
    v126 = v337;
    sub_1DD2AAFF4(v101, v337);

    v127 = __swift_getEnumTagSinglePayload(v126, 1, v100);
    v363 = v125;
    v305 = v111;
    v304 = v114;
    v303 = v110;
    if (v127 == 1)
    {
      sub_1DD2825F0(v126, &qword_1ECCD6608, &qword_1DD339310);
      v128 = v365;
      v129 = v348;
      v130 = v339;
      goto LABEL_42;
    }

    v146 = v126;
    v147 = v330;
    v110(v330, v146, v100);
    v148 = v147;
    v149 = v329;
    (v351)(v329, v148, v100);
    v150 = v355(v149, v100) == v118;
    v129 = v348;
    v130 = v339;
    if (!v150)
    {
      v128 = v365;
      v178 = v365[1];
      v178(v148, v100);
      v178(v149, v100);
      v125 = v363;
      goto LABEL_42;
    }

    v151 = v348;
    (v345)(v149, v100);
    v152 = *v149;
    v153 = swift_projectBox();
    v154 = v327;
    v354(v327, v153, v124);

    v155 = sub_1DD3362D0();
    v156 = v326;
    sub_1DD2AAFF4(v155, v326);

    if (__swift_getEnumTagSinglePayload(v156, 1, v100) == 1)
    {
      (*(v366 + 8))(v154, v124);
      v128 = v365;
      (v365[1])(v148, v100);
      sub_1DD2825F0(v156, &qword_1ECCD6608, &qword_1DD339310);
    }

    else
    {
      if (v355(v156, v100) == *MEMORY[0x1E69DAE70])
      {
        (v345)(v156, v100);
        v187 = *v156;
        v188 = swift_projectBox();
        v189 = v311;
        v190 = v347;
        (*(v151 + 16))(v311, v188, v347);
        if ((*(v151 + 88))(v189, v190) == *MEMORY[0x1E69DADF0])
        {
          (*(v151 + 96))(v189, v190);
          v191 = *v189;
          v192 = *(v189 + 1);

          sub_1DD3354B0();

          (*(v366 + 8))(v327, v364);
          v128 = v365;
          (v365[1])(v148, v100);
        }

        else
        {
          (*(v366 + 8))(v327, v124);
          v128 = v365;
          (v365[1])(v148, v100);
          (*(v151 + 8))(v189, v190);
        }

        v125 = v363;
        v129 = v151;
LABEL_42:
        v199 = v338;
        sub_1DD2AAFF4(v125, v338);
        v200 = __swift_getEnumTagSinglePayload(v199, 1, v100);
        v201 = v342;
        if (v200 == 1)
        {
          v202 = v129;
          v203 = v128;
          sub_1DD2825F0(v199, &qword_1ECCD6608, &qword_1DD339310);
        }

        else if (v355(v199, v100) == *MEMORY[0x1E69DAE70])
        {
          (v345)(v199, v100);
          v204 = *v199;
          v205 = swift_projectBox();
          v206 = v347;
          (*(v129 + 16))(v130, v205, v347);
          v203 = v128;
          v202 = v129;
          if ((*(v129 + 88))(v130, v206) == *MEMORY[0x1E69DADC0])
          {
            (*(v129 + 96))(v130, v206);
            v207 = *v130;

            if (v207)
            {
              v208 = MEMORY[0x1E69D1BD0];
            }

            else
            {
              v208 = MEMORY[0x1E69D1BD8];
            }

LABEL_52:
            v209 = sub_1DD335010();
            v210 = *(v209 + 48);
            v211 = *(v209 + 52);
            swift_allocObject();
            v212 = sub_1DD335000();
            v213 = v343;
            v214 = *v208;
            v215 = v341;
            v216 = v344;
            (*(v343 + 104))(v341, v214, v344);
            sub_1DD334FF0();
            (*(v213 + 8))(v215, v216);
            sub_1DD335860();
            sub_1DD3354D0();
            v350 = v212;

            v217 = v340;
            sub_1DD2AAFF4(v363, v340);
            if (__swift_getEnumTagSinglePayload(v217, 1, v100) == 1)
            {

              sub_1DD2825F0(v217, &qword_1ECCD6608, &qword_1DD339310);
            }

            else
            {
              v218 = v333;
              v303(v333, v217, v100);
              v219 = v331;
              (v351)(v331, v218, v100);
              v220 = v355(v219, v100);
              if (v220 == *MEMORY[0x1E69DAE70])
              {
                v221 = v220;
                (v345)(v219, v100);
                v222 = v100;
                v223 = *v219;
                v224 = swift_projectBox();
                v225 = v201;
                v226 = *(v202 + 16);
                v227 = v347;
                v226(v225, v224, v347);
                v228 = *(v202 + 88);
                v343 = v202 + 88;
                v341 = v228;
                v229 = (v228)(v225, v227);
                v230 = *MEMORY[0x1E69DADB0];
                LODWORD(v344) = v229;
                if (v229 == v230)
                {
                  v340 = *(v202 + 96);
                  (v340)(v225, v227);
                  v231 = *v225;

                  v232 = v322;
                  sub_1DD2AAFF4(v363, v322);

                  if (__swift_getEnumTagSinglePayload(v232, 1, v222) == 1)
                  {
                    sub_1DD2825F0(v232, &qword_1ECCD6608, &qword_1DD339310);
                  }

                  else
                  {
                    v363 = (v202 + 96);
                    v241 = v320;
                    v303(v320, v232, v222);
                    v242 = v312;
                    (v351)(v312, v241, v222);
                    if (v355(v242, v222) == v221)
                    {
                      (v345)(v242, v222);
                      v243 = *v242;
                      v244 = swift_projectBox();
                      v245 = v309;
                      v246 = v347;
                      v226(v309, v244, v347);
                      v247 = (v341)(v245, v246);
                      if (v247 == v344)
                      {
                        (v340)(v245, v246);
                        v248 = *v245;

                        v249 = v313;
                        sub_1DD3349E0();
                        v250 = v308;
                        sub_1DD3347D0();
                        sub_1DD334950();
                        v363 = v334[1];
                        v251 = v336;
                        (v363)(v250, v336);
                        v252 = *(v314 + 8);
                        v253 = v315;
                        v252(v249, v315);
                        sub_1DD3349E0();
                        sub_1DD3347D0();
                        v254 = v325;
                        sub_1DD334950();
                        (v363)(v250, v251);
                        v252(v249, v253);
                        v255 = v317;
                        v256 = *(v317 + 16);
                        v257 = v316;
                        v258 = v318;
                        v256(v316, v324, v318);
                        __swift_storeEnumTagSinglePayload(v257, 0, 1, v258);
                        makeDateTimeEntityFromDateComponents(dateComponents:)(v257);
                        sub_1DD2825F0(v257, &qword_1ECCD6778, &qword_1DD339728);
                        v256(v257, v254, v258);
                        __swift_storeEnumTagSinglePayload(v257, 0, 1, v258);
                        makeDateTimeEntityFromDateComponents(dateComponents:)(v257);
                        sub_1DD2825F0(v257, &qword_1ECCD6778, &qword_1DD339728);
                        v259 = sub_1DD335530();
                        v260 = *(v259 + 48);
                        v261 = *(v259 + 52);
                        swift_allocObject();
                        sub_1DD335520();
                        sub_1DD335860();
                        sub_1DD335510();

                        sub_1DD335860();
                        sub_1DD335500();

                        sub_1DD335860();
                        v262 = v356;
                        sub_1DD335480();

                        v263 = *(v255 + 8);
                        v263(v254, v258);
                        v263(v324, v258);
                        v264 = v365[1];
                        v265 = v362;
                        v264(v320, v362);
                        v264(v333, v265);
                        (*(v366 + 8))(v346, v364);
                        v264(v359, v265);
                        goto LABEL_77;
                      }

                      (v203[1])(v241, v222);
                      (*(v348 + 8))(v245, v246);
                    }

                    else
                    {
                      v266 = v203[1];
                      v266(v241, v222);
                      v266(v242, v222);
                    }
                  }

                  v279 = v203;
                  v280 = v359;
                  v281 = sub_1DD335850();
                  sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
                  swift_allocError();
                  v283 = v282;
                  v368 = 0;
                  v369 = 0xE000000000000000;
                  sub_1DD336C00();
                  MEMORY[0x1E12AC540](0xD000000000000045, 0x80000001DD33E450);
                  v284 = v364;
                  v354(v352, v353, v364);
                  v285 = sub_1DD336630();
                  MEMORY[0x1E12AC540](v285);

                  v286 = v369;
                  *v283 = v368;
                  v283[1] = v286;
                  (*(*(v281 - 8) + 104))(v283, *MEMORY[0x1E69D3640], v281);
                  swift_willThrow();

                  v287 = v279[1];
                  v287(v333, v222);
                  (*(v366 + 8))(v346, v284);
                  v287(v280, v222);
                  return (*(v360 + 8))(v367, v361);
                }

                (v203[1])(v333, v222);

                (*(v202 + 8))(v225, v227);

LABEL_60:
                v234 = sub_1DD335850();
                sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
                swift_allocError();
                v236 = v235;
                v368 = 0;
                v369 = 0xE000000000000000;
                sub_1DD336C00();
                MEMORY[0x1E12AC540](0xD000000000000047, 0x80000001DD33E400);
                v237 = v364;
                v354(v352, v353, v364);
                v238 = sub_1DD336630();
                MEMORY[0x1E12AC540](v238);

                v239 = v369;
                *v236 = v368;
                v236[1] = v239;
                (*(*(v234 - 8) + 104))(v236, *MEMORY[0x1E69D3640], v234);
                swift_willThrow();

                (*(v366 + 8))(v346, v237);
                (v203[1])(v359, v222);
                return (*(v360 + 8))(v367, v361);
              }

              v233 = v203[1];
              v233(v218, v100);

              v233(v219, v100);
            }

            v222 = v100;
            goto LABEL_60;
          }

          (*(v129 + 8))(v130, v206);
        }

        else
        {
          v202 = v129;
          v203 = v128;
          (v128[1])(v199, v100);
        }

        v208 = MEMORY[0x1E69D1BD8];
        goto LABEL_52;
      }

      (*(v366 + 8))(v154, v124);
      v128 = v365;
      v193 = v365[1];
      v193(v148, v100);
      v193(v156, v100);
    }

    v125 = v363;
    v129 = v151;
    goto LABEL_42;
  }

  sub_1DD2825F0(v106, &qword_1ECCD6608, &qword_1DD339310);
  v109 = v365;
LABEL_7:
  v132 = v349;
  sub_1DD2AAFF4(v101, v349);
  v133 = __swift_getEnumTagSinglePayload(v132, 1, v100);
  v134 = v363;
  v136 = v350;
  v135 = v351;
  if (v133 == 1)
  {
    sub_1DD2825F0(v132, &qword_1ECCD6608, &qword_1DD339310);
  }

  else
  {
    (v109[4])(v351, v132, v100);
    v137 = v345;
    (v109[2])(v345, v135, v100);
    if ((v109[11])(v137, v100) == *v108)
    {
      (v109[12])(v137, v100);
      v138 = *v137;
      v139 = swift_projectBox();
      v140 = v348;
      v141 = v347;
      (*(v348 + 16))(v136, v139, v347);
      if ((*(v140 + 88))(v136, v141) == *MEMORY[0x1E69DADF0])
      {
        (*(v140 + 96))(v136, v141);
        v142 = v100;
        v143 = *v136;
        v144 = v136[1];

        sub_1DD3354B0();
        v100 = v142;

        (v109[1])(v351, v142);
      }

      else
      {
        (v109[1])(v351, v100);
        (*(v140 + 8))(v136, v141);
      }
    }

    else
    {
      v145 = v109[1];
      v145(v135, v100);
      v145(v137, v100);
    }

    v134 = v363;
  }

  sub_1DD2AAFF4(v101, v134);
  if (__swift_getEnumTagSinglePayload(v134, 1, v100) == 1)
  {

    sub_1DD2825F0(v134, &qword_1ECCD6608, &qword_1DD339310);
LABEL_27:
    v173 = sub_1DD335850();
    sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
    swift_allocError();
    v175 = v174;
    v368 = 0;
    v369 = 0xE000000000000000;
    sub_1DD336C00();
    MEMORY[0x1E12AC540](0xD000000000000047, 0x80000001DD33E400);
    (*(v366 + 16))(v352, v353, v364);
    v176 = sub_1DD336630();
    MEMORY[0x1E12AC540](v176);

    v177 = v369;
    *v175 = v368;
    v175[1] = v177;
    (*(*(v173 - 8) + 104))(v175, *MEMORY[0x1E69D3640], v173);
    swift_willThrow();

    return (*(v360 + 8))(v367, v361);
  }

  v157 = v109;
  v158 = v109[11];
  v159 = v158(v134, v100);
  if (v159 != *v108)
  {

    (v157[1])(v134, v100);
    goto LABEL_27;
  }

  v160 = v159;
  v363 = v158;
  v356 = v105;
  v358 = v157[12];
  v359 = (v157 + 12);
  (v358)(v134, v100);
  v161 = v134;
  v162 = v100;
  v163 = *v161;
  v164 = swift_projectBox();
  v165 = v348;
  v166 = *(v348 + 16);
  v167 = v332;
  v168 = v347;
  v357 = (v348 + 16);
  v355 = v166;
  (v166)(v332, v164, v347);
  v354 = *(v165 + 88);
  v169 = (v354)(v167, v168);
  if (v169 != *MEMORY[0x1E69DADC8])
  {

    (*(v165 + 8))(v167, v168);

    goto LABEL_27;
  }

  LODWORD(v351) = v169;
  v349 = *(v165 + 96);
  v350 = (v165 + 96);
  (v349)(v167, v168);
  v170 = (v334 + 4);
  v171 = v334[4];
  v171(v335, v167, v336);

  v172 = v328;
  sub_1DD2AAFF4(v101, v328);
  if (__swift_getEnumTagSinglePayload(v172, 1, v162) == 1)
  {

    sub_1DD2825F0(v172, &qword_1ECCD6608, &qword_1DD339310);
LABEL_39:
    v194 = sub_1DD335850();
    sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
    swift_allocError();
    v196 = v195;
    v368 = 0;
    v369 = 0xE000000000000000;
    sub_1DD336C00();
    MEMORY[0x1E12AC540](0xD000000000000045, 0x80000001DD33E450);
    (*(v366 + 16))(v352, v353, v364);
    v197 = sub_1DD336630();
    MEMORY[0x1E12AC540](v197);

    v198 = v369;
    *v196 = v368;
    v196[1] = v198;
    (*(*(v194 - 8) + 104))(v196, *MEMORY[0x1E69D3640], v194);
    swift_willThrow();

    (v334[1])(v335, v336);
    return (*(v360 + 8))(v367, v361);
  }

  v179 = v363;
  if ((v363)(v172, v162) != v160)
  {

    (v365[1])(v172, v162);
    goto LABEL_39;
  }

  v346 = v170;
  (v358)(v172, v162);
  v180 = *v172;
  v181 = swift_projectBox();
  v182 = v321;
  v183 = v347;
  (v355)(v321, v181, v347);
  v184 = (v354)(v182, v183);
  if (v184 != v351)
  {

    (*(v348 + 8))(v182, v183);

    goto LABEL_39;
  }

  (v349)(v182, v183);
  v171(v323, v182, v336);

  v185 = v310;
  sub_1DD2AAFF4(v101, v310);

  v186 = v362;
  if (__swift_getEnumTagSinglePayload(v185, 1, v362) == 1)
  {
    sub_1DD2825F0(v185, &qword_1ECCD6608, &qword_1DD339310);
  }

  else if (v179(v185, v186) == v160)
  {
    (v358)(v185, v186);
    v267 = *v185;
    v268 = swift_projectBox();
    v269 = v307;
    v270 = v347;
    (v355)(v307, v268, v347);
    if ((v354)(v269, v270) == *MEMORY[0x1E69DADC0])
    {
      (v349)(v269, v270);
      v271 = *v269;

      v272 = sub_1DD335010();
      v273 = *(v272 + 48);
      v274 = *(v272 + 52);
      swift_allocObject();
      sub_1DD335000();
      v275 = v343;
      v276 = MEMORY[0x1E69D1BD0];
      if (!v271)
      {
        v276 = MEMORY[0x1E69D1BD8];
      }

      v277 = v306;
      v278 = v344;
      (*(v343 + 104))(v306, *v276, v344);
      sub_1DD334FF0();
      (*(v275 + 8))(v277, v278);
      sub_1DD335860();
      sub_1DD3354D0();
    }

    else
    {
      (*(v348 + 8))(v269, v270);
    }
  }

  else
  {
    (v365[1])(v185, v186);
  }

  v288 = v313;
  sub_1DD3349E0();
  v289 = v324;
  sub_1DD334950();
  v290 = *(v314 + 8);
  v291 = v315;
  v290(v288, v315);
  sub_1DD3349E0();
  sub_1DD334950();
  v290(v288, v291);
  v292 = v317;
  v293 = *(v317 + 16);
  v294 = v316;
  v295 = v318;
  v293(v316, v289, v318);
  __swift_storeEnumTagSinglePayload(v294, 0, 1, v295);
  makeDateTimeEntityFromDateComponents(dateComponents:)(v294);
  sub_1DD2825F0(v294, &qword_1ECCD6778, &qword_1DD339728);
  v293(v294, v325, v295);
  __swift_storeEnumTagSinglePayload(v294, 0, 1, v295);
  makeDateTimeEntityFromDateComponents(dateComponents:)(v294);
  sub_1DD2825F0(v294, &qword_1ECCD6778, &qword_1DD339728);
  v296 = sub_1DD335530();
  v297 = *(v296 + 48);
  v298 = *(v296 + 52);
  swift_allocObject();
  sub_1DD335520();
  sub_1DD335860();
  sub_1DD335510();

  sub_1DD335860();
  sub_1DD335500();

  sub_1DD335860();
  v262 = v356;
  sub_1DD335480();

  v299 = *(v292 + 8);
  v299(v325, v295);
  v299(v324, v295);
  v300 = v334[1];
  v301 = v336;
  v300(v323, v336);
  v300(v335, v301);
LABEL_77:
  result = (*(v360 + 8))(v367, v361);
  *v319 = v262;
  return result;
}

uint64_t sub_1DD2F7B44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D60, &qword_1DD33A9A8);
  __swift_allocate_value_buffer(v0, qword_1EE02A3A0);
  __swift_project_value_buffer(v0, qword_1EE02A3A0);
  sub_1DD336350();
  sub_1DD334830();
  return sub_1DD335790();
}

uint64_t sub_1DD2F7BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1DD336350();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v10 = sub_1DD336340();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v18 = *(v4 + 16);
  v35 = a1;
  v19 = a1;
  v20 = v18;
  v18(v9, v19, v3);
  if ((*(v4 + 88))(v9, v3) == *MEMORY[0x1E69DAE70])
  {
    (*(v4 + 96))(v9, v3);
    v21 = *v9;
    v22 = swift_projectBox();
    (*(v11 + 16))(v17, v22, v10);

    (*(v11 + 32))(v15, v17, v10);
    if ((*(v11 + 88))(v15, v10) == *MEMORY[0x1E69DADC8])
    {
      (*(v11 + 96))(v15, v10);
      v23 = sub_1DD334830();
      return (*(*(v23 - 8) + 32))(v31, v15, v23);
    }

    (*(v11 + 8))(v15, v10);
  }

  else
  {
    (*(v4 + 8))(v9, v3);
  }

  v25 = sub_1DD335850();
  sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
  swift_allocError();
  v27 = v26;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1DD336C00();
  MEMORY[0x1E12AC540](0xD00000000000003FLL, 0x80000001DD33E210);
  v20(v32, v35, v3);
  v28 = sub_1DD336630();
  MEMORY[0x1E12AC540](v28);

  v29 = v34;
  *v27 = v33;
  v27[1] = v29;
  (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69D3640], v25);
  return swift_willThrow();
}

uint64_t sub_1DD2F7FF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D70, &qword_1DD33A9B8);
  __swift_allocate_value_buffer(v0, qword_1EE02A430);
  __swift_project_value_buffer(v0, qword_1EE02A430);
  sub_1DD334830();
  sub_1DD334ED0();
  return sub_1DD335790();
}

uint64_t sub_1DD2F8088@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = a1;
  v57 = a2;
  v2 = sub_1DD334DD0();
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DD334570();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DD3349A0();
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DD334ED0();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_1DD334EC0();
  sub_1DD334980();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E20, &qword_1DD33AA60);
  v17 = sub_1DD334990();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DD33A620;
  v22 = *(v18 + 104);
  v22(v21 + v20, *MEMORY[0x1E6969A50], v17);
  v22(v21 + v20 + v19, *MEMORY[0x1E6969A68], v17);
  v22(v21 + v20 + 2 * v19, *MEMORY[0x1E6969A78], v17);
  v22(v21 + v20 + 3 * v19, *MEMORY[0x1E6969A10], v17);
  v22(v21 + v20 + 4 * v19, *MEMORY[0x1E6969A48], v17);
  v22(v21 + v20 + 5 * v19, *MEMORY[0x1E6969A30], v17);
  v22(v21 + v20 + 6 * v19, *MEMORY[0x1E6969AB8], v17);
  sub_1DD2FC374(v21);
  v52 = v12;
  sub_1DD334960();

  v23 = sub_1DD335120();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_1DD335110();
  sub_1DD334500();
  if ((v26 & 1) == 0)
  {
    sub_1DD335100();
  }

  sub_1DD335860();
  sub_1DD334E80();

  v27 = sub_1DD335210();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_1DD335200();
  v30 = sub_1DD3344E0();
  if ((v31 & 1) == 0 && (v30 - 1) <= 6)
  {
    v33 = v49;
    v32 = v50;
    v34 = v51;
    (*(v50 + 104))(v49, **(&unk_1E8651C40 + v30 - 1), v51);
    sub_1DD3351F0();
    (*(v32 + 8))(v33, v34);
  }

  sub_1DD335860();
  sub_1DD334E70();

  v35 = sub_1DD335340();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_1DD335330();
  sub_1DD334530();
  if ((v38 & 1) == 0)
  {
    v39 = *(v23 + 48);
    v40 = *(v23 + 52);
    swift_allocObject();
    sub_1DD335110();
    sub_1DD335100();
    sub_1DD335860();
    sub_1DD335320();
  }

  sub_1DD335860();
  sub_1DD334EA0();

  v41 = *(v23 + 48);
  v42 = *(v23 + 52);
  swift_allocObject();
  sub_1DD335110();
  sub_1DD3344D0();
  if ((v43 & 1) == 0)
  {
    sub_1DD335100();
  }

  sub_1DD335860();
  sub_1DD334E90();

  v44 = *(v23 + 48);
  v45 = *(v23 + 52);
  swift_allocObject();
  sub_1DD335110();
  sub_1DD334520();
  if ((v46 & 1) == 0)
  {
    sub_1DD335100();
  }

  sub_1DD335860();
  sub_1DD334EB0();

  (*(v55 + 8))(v8, v56);
  result = (*(v53 + 8))(v52, v54);
  *v57 = v16;
  return result;
}

uint64_t sub_1DD2F86B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D38, &qword_1DD33A980);
  __swift_allocate_value_buffer(v0, qword_1EE02A418);
  __swift_project_value_buffer(v0, qword_1EE02A418);
  sub_1DD336310();
  sub_1DD3350C0();
  return sub_1DD335790();
}

uint64_t sub_1DD2F8748@<X0>(uint64_t *a1@<X8>)
{
  v143 = a1;
  v1 = sub_1DD336310();
  v147 = *(v1 - 8);
  v148 = v1;
  v2 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v152 = &v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DD336330();
  v141 = *(v4 - 8);
  v142 = v4;
  v5 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v138 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1DD336340();
  v149 = *(v144 - 8);
  v7 = *(v149 + 64);
  v8 = MEMORY[0x1EEE9AC00](v144);
  v137 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v136 = &v134 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v135 = &v134 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v134 = &v134 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v140 = &v134 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v145 = &v134 - v18;
  v158 = sub_1DD336350();
  v161 = *(v158 - 8);
  v19 = *(v161 + 64);
  v20 = MEMORY[0x1EEE9AC00](v158);
  v156 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v151 = &v134 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v150 = &v134 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v154 = &v134 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v157 = (&v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x1EEE9AC00](v29);
  v139 = (&v134 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v155 = &v134 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v134 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v134 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v153 = &v134 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v134 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v134 - v46;
  v48 = sub_1DD336370();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v134 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD336290();

  sub_1DD3362A0();
  sub_1DD336360();

  v53 = v48;
  v54 = v158;
  (*(v49 + 8))(v52, v53);
  v55 = v47;
  v56 = sub_1DD3362D0();
  __swift_storeEnumTagSinglePayload(v55, 1, 1, v54);
  sub_1DD2AAFF4(v56, v45);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, v54);
  sub_1DD2825F0(v45, &qword_1ECCD6608, &qword_1DD339310);
  if (EnumTagSinglePayload != 1 || (sub_1DD2AAFF4(v56, v40), v58 = __swift_getEnumTagSinglePayload(v40, 1, v54), sub_1DD2825F0(v40, &qword_1ECCD6608, &qword_1DD339310), v58 != 1))
  {
    v59 = v153;
    sub_1DD2AAFF4(v56, v153);
    sub_1DD2825F0(v55, &qword_1ECCD6608, &qword_1DD339310);
    sub_1DD2B4714(v59, v55);
  }

  sub_1DD2FC744(v55, v37, &qword_1ECCD6608, &qword_1DD339310);
  v60 = __swift_getEnumTagSinglePayload(v37, 1, v54);
  v61 = MEMORY[0x1E69DAE70];
  v62 = v157;
  if (v60 == 1)
  {
    sub_1DD2825F0(v37, &qword_1ECCD6608, &qword_1DD339310);
    v63 = v161;
LABEL_13:
    v79 = v155;
    goto LABEL_14;
  }

  v64 = v154;
  v65 = v37;
  v63 = v161;
  (*(v161 + 32))(v154, v65, v54);
  v66 = v150;
  (*(v63 + 16))(v150, v64, v54);
  if ((*(v63 + 88))(v66, v54) != *v61)
  {
    v78 = *(v63 + 8);
    v78(v64, v54);
    v78(v66, v54);
    goto LABEL_13;
  }

  v153 = v56;
  (*(v63 + 96))(v66, v54);
  v67 = *v66;
  v68 = swift_projectBox();
  v69 = v149;
  v70 = *(v149 + 16);
  v72 = v144;
  v71 = v145;
  v70(v145, v68, v144);

  v73 = v140;
  v70(v140, v71, v72);
  if ((*(v69 + 88))(v73, v72) != *MEMORY[0x1E69DADE8])
  {
    v101 = *(v69 + 8);
    v101(v71, v72);
    v63 = v161;
    (*(v161 + 8))(v154, v54);
    v101(v73, v72);
    v62 = v157;
    v79 = v155;
    v56 = v153;
LABEL_14:
    v157 = v55;
    sub_1DD2AAFF4(v56, v79);
    v80 = __swift_getEnumTagSinglePayload(v79, 1, v54);
    v81 = v156;
    if (v80 == 1)
    {
      sub_1DD2825F0(v79, &qword_1ECCD6608, &qword_1DD339310);
LABEL_20:
      v93 = sub_1DD335850();
      sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
      swift_allocError();
      v95 = v94;
      v159 = 0;
      v160 = 0xE000000000000000;
      sub_1DD336C00();
      MEMORY[0x1E12AC540](0xD000000000000055, 0x80000001DD33E3A0);
      v96 = sub_1DD336520();
      v98 = v97;

      MEMORY[0x1E12AC540](v96, v98);

      v99 = v160;
      *v95 = v159;
      v95[1] = v99;
      (*(*(v93 - 8) + 104))(v95, *MEMORY[0x1E69D3640], v93);
      swift_willThrow();
      return sub_1DD2825F0(v157, &qword_1ECCD6608, &qword_1DD339310);
    }

    v82 = v151;
    (*(v63 + 32))(v151, v79, v54);
    (*(v63 + 16))(v81, v82, v54);
    v83 = *(v63 + 88);
    if (v83(v81, v54) != *MEMORY[0x1E69DAE58])
    {
      v92 = *(v63 + 8);
      v92(v82, v54);
      v92(v81, v54);
      goto LABEL_20;
    }

    v84 = *(v63 + 96);
    v84(v81, v54);
    v85 = *v81;
    v86 = swift_projectBox();
    (*(v147 + 16))(v152, v86, v148);

    v87 = sub_1DD3362D0();
    v88 = v139;
    sub_1DD2AAFF4(v87, v139);

    v89 = __swift_getEnumTagSinglePayload(v88, 1, v54);
    v90 = v54;
    v91 = MEMORY[0x1E69DADF0];
    if (v89 == 1)
    {
      sub_1DD2825F0(v88, &qword_1ECCD6608, &qword_1DD339310);
    }

    else if (v83(v88, v90) == *MEMORY[0x1E69DAE70])
    {
      v84(v88, v90);
      v102 = *v88;
      v103 = swift_projectBox();
      v104 = v149;
      v105 = v134;
      v106 = v144;
      (*(v149 + 16))(v134, v103, v144);

      v107 = v135;
      v108 = v105;
      v91 = MEMORY[0x1E69DADF0];
      (*(v104 + 32))(v135, v108, v106);
      if ((*(v104 + 88))(v107, v106) == *v91)
      {
        (*(v104 + 96))(v107, v106);
        v110 = *v107;
        v109 = *(v107 + 1);
        goto LABEL_29;
      }

      (*(v104 + 8))(v107, v106);
    }

    else
    {
      (*(v63 + 8))(v88, v90);
    }

    v109 = 0;
LABEL_29:
    v112 = sub_1DD3362D0();
    sub_1DD2AAFF4(v112, v62);

    v113 = v158;
    if (__swift_getEnumTagSinglePayload(v62, 1, v158) == 1)
    {
      sub_1DD2825F0(v62, &qword_1ECCD6608, &qword_1DD339310);
    }

    else
    {
      if (v83(v62, v113) == *MEMORY[0x1E69DAE70])
      {
        v84(v62, v113);
        v114 = *v62;
        v115 = swift_projectBox();
        v116 = v149;
        v117 = v136;
        v118 = v144;
        (*(v149 + 16))(v136, v115, v144);

        v119 = v137;
        (*(v116 + 32))(v137, v117, v118);
        if ((*(v116 + 88))(v119, v118) == *v91)
        {
          (*(v116 + 96))(v119, v118);
          v121 = *v119;
          v120 = *(v119 + 1);
        }

        else
        {
          (*(v116 + 8))(v119, v118);
          v120 = 0;
        }

        v122 = v158;
LABEL_38:
        v123 = sub_1DD3350C0();
        v124 = *(v123 + 48);
        v125 = *(v123 + 52);
        swift_allocObject();
        v111 = sub_1DD3350B0();
        if (v109)
        {

          v126 = sub_1DD335380();
          v127 = *(v126 + 48);
          v128 = *(v126 + 52);
          swift_allocObject();
          sub_1DD335370();
          sub_1DD335360();

          sub_1DD335860();
          sub_1DD335080();
          v129 = v161;
          v130 = v151;
        }

        else
        {
          v129 = v161;
          v130 = v151;
          if (!v120)
          {
LABEL_43:
            (*(v147 + 8))(v152, v148);
            (*(v129 + 8))(v130, v122);
            result = sub_1DD2825F0(v157, &qword_1ECCD6608, &qword_1DD339310);
            goto LABEL_44;
          }

          v131 = sub_1DD335400();
          v132 = *(v131 + 48);
          v133 = *(v131 + 52);
          swift_allocObject();
          sub_1DD3353F0();
          sub_1DD3353E0();

          sub_1DD335860();
          sub_1DD335080();
        }

        goto LABEL_43;
      }

      (*(v161 + 8))(v62, v113);
    }

    v120 = 0;
    v122 = v113;
    goto LABEL_38;
  }

  (*(v69 + 96))(v73, v72);
  v74 = v138;
  (*(v141 + 32))(v138, v73, v142);
  v62 = v157;
  v56 = v153;
  if (qword_1EE0284B0 != -1)
  {
    swift_once();
  }

  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D40, &qword_1DD33A988);
  __swift_project_value_buffer(v75, qword_1EE02A3D0);
  v76 = sub_1DD3357A0();
  v77 = v146;
  v76(&v159, v74);
  v63 = v161;
  if (v77)
  {

    (*(v141 + 8))(v74, v142);
    (*(v149 + 8))(v145, v72);
    (*(v63 + 8))(v154, v54);
    v146 = 0;
    goto LABEL_13;
  }

  (*(v141 + 8))(v74, v142);
  (*(v149 + 8))(v145, v72);
  (*(v63 + 8))(v154, v54);
  result = sub_1DD2825F0(v55, &qword_1ECCD6608, &qword_1DD339310);
  v111 = v159;
LABEL_44:
  *v143 = v111;
  return result;
}

uint64_t sub_1DD2F98C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D40, &qword_1DD33A988);
  __swift_allocate_value_buffer(v0, qword_1EE02A3D0);
  __swift_project_value_buffer(v0, qword_1EE02A3D0);
  sub_1DD336330();
  sub_1DD3350C0();
  return sub_1DD335790();
}

void sub_1DD2F9958(uint64_t *a1@<X8>)
{
  v55 = a1;
  v1 = sub_1DD334C50();
  v54 = *(v1 - 8);
  v2 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v53 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E40, &qword_1DD33AA70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = &v48 - v6;
  v7 = sub_1DD334660();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v48 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v48 - v14;
  v16 = sub_1DD336320();
  v17 = sub_1DD3350C0();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_1DD3350B0();
  v21 = [v16 displayName];
  sub_1DD3365D0();

  v58 = v20;
  sub_1DD3350A0();

  v57 = v16;
  v22 = [v16 nameComponents];
  if (v22)
  {
    v23 = v22;
    v50 = v1;
    sub_1DD334640();

    v24 = v56;
    v25 = *(v56 + 32);
    v25(v15, v13, v7);
    if (qword_1ECCD6288 != -1)
    {
      swift_once();
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E50, &qword_1DD33AA80);
    __swift_project_value_buffer(v26, qword_1ECCD72D0);
    v27 = sub_1DD3357A0();
    v28 = v59;
    v27(&v60, v15);
    if (v28)
    {

      (*(v24 + 8))(v15, v7);
      return;
    }

    v59 = 0;

    sub_1DD335860();
    sub_1DD335050();

    v30 = v15;
    v31 = v7;
    v32 = v52;
    sub_1DD334630();
    if (__swift_getEnumTagSinglePayload(v32, 1, v31) == 1)
    {
      (*(v24 + 8))(v30, v31);

      sub_1DD2825F0(v32, &qword_1ECCD6E40, &qword_1DD33AA70);
    }

    else
    {
      v49 = v30;
      v33 = v51;
      v25(v51, v32, v31);
      v34 = sub_1DD3357A0();
      v35 = v59;
      v34(&v60, v33);
      v59 = v35;
      if (v35)
      {

        v36 = *(v24 + 8);
        v36(v33, v31);
        v36(v49, v31);
        return;
      }

      sub_1DD335860();
      sub_1DD335070();

      v37 = *(v24 + 8);
      v37(v33, v31);
      v37(v49, v31);
    }

    v29 = v55;
    v1 = v50;
  }

  else
  {
    v29 = v55;
  }

  v38 = v57;
  v39 = [v57 personHandle];
  v40 = v59;
  if (v39)
  {
    v41 = v39;
    v42 = v58;
    if (qword_1ECCD6290 != -1)
    {
      swift_once();
    }

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E48, &qword_1DD33AA78);
    __swift_project_value_buffer(v43, qword_1ECCD72E8);
    v44 = sub_1DD3357A0();
    v61 = v41;
    v44(&v60, &v61);
    if (v40)
    {

      return;
    }

    sub_1DD335080();
  }

  else
  {
    v42 = v58;
  }

  sub_1DD2BAB88(v38, &selRef_contactIdentifier);
  if (v45)
  {
    v46 = v53;
  }

  else
  {
    sub_1DD2BAB88(v38, &selRef_customIdentifier);
    if (!v47)
    {

      goto LABEL_25;
    }

    v46 = v53;
  }

  sub_1DD334C30();
  sub_1DD334BA0();

  (*(v54 + 8))(v46, v1);
LABEL_25:
  *v29 = v42;
}

uint64_t sub_1DD2FA018()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E50, &qword_1DD33AA80);
  __swift_allocate_value_buffer(v0, qword_1ECCD72D0);
  __swift_project_value_buffer(v0, qword_1ECCD72D0);
  sub_1DD334660();
  sub_1DD335310();
  return sub_1DD335790();
}

uint64_t sub_1DD2FA0A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1DD335310();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_1DD335300();
  sub_1DD3345F0();
  if (v6)
  {
    sub_1DD3352E0();
  }

  sub_1DD3345E0();
  if (v7)
  {
    sub_1DD3352D0();
  }

  sub_1DD334600();
  if (v8)
  {
    sub_1DD3352F0();
  }

  sub_1DD334610();
  if (v9)
  {
    sub_1DD3352A0();
  }

  sub_1DD334620();
  if (v10)
  {
    sub_1DD3352B0();
  }

  result = sub_1DD334650();
  if (v12)
  {
    sub_1DD3352C0();
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1DD2FA1C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E48, &qword_1DD33AA78);
  __swift_allocate_value_buffer(v0, qword_1ECCD72E8);
  __swift_project_value_buffer(v0, qword_1ECCD72E8);
  sub_1DD2FC700();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E60, &unk_1DD33AA88);
  return sub_1DD335790();
}

uint64_t sub_1DD2FA264@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DD334940();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = [*a1 label];
  if (v10)
  {
    v11 = v10;
    sub_1DD335750();
    sub_1DD335740();
    sub_1DD335720();

    sub_1DD3357D0();

    sub_1DD3348B0();

    (*(v5 + 8))(v8, v4);
    sub_1DD3365D0();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v9 type];
  if (!v14)
  {
    goto LABEL_15;
  }

  if (v14 == 1)
  {
    v22 = sub_1DD335400();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v18 = sub_1DD3353F0();
    if (v13)
    {
      sub_1DD3353D0();
    }

    result = sub_1DD2BAB88(v9, &selRef_value);
    if (!v25)
    {
      v21 = MEMORY[0x1E69D21B8];
      goto LABEL_23;
    }

    sub_1DD3353E0();
    v21 = MEMORY[0x1E69D21B8];
    goto LABEL_19;
  }

  if (v14 == 2)
  {
    v15 = sub_1DD335380();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = sub_1DD335370();
    if (v13)
    {
      sub_1DD335350();
    }

    result = sub_1DD2BAB88(v9, &selRef_value);
    if (!v20)
    {
      v21 = MEMORY[0x1E69D2198];
      goto LABEL_23;
    }

    sub_1DD335360();
    v21 = MEMORY[0x1E69D2198];
  }

  else
  {
LABEL_15:
    v26 = sub_1DD335630();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v18 = sub_1DD335620();
    if (v13)
    {
      sub_1DD335600();
    }

    result = sub_1DD2BAB88(v9, &selRef_value);
    if (!v29)
    {
      v21 = MEMORY[0x1E69D2230];
      goto LABEL_23;
    }

    sub_1DD335610();
    v21 = MEMORY[0x1E69D2230];
  }

LABEL_19:

LABEL_23:
  *a2 = v18;
  a2[1] = v21;
  return result;
}

uint64_t sub_1DD2FA540()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DB0, &qword_1DD33A9F8);
  __swift_allocate_value_buffer(v0, qword_1EE02A550);
  __swift_project_value_buffer(v0, qword_1EE02A550);
  sub_1DD334ED0();
  sub_1DD334D10();
  return sub_1DD335790();
}

uint64_t sub_1DD2FA5D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x1E12AABB0](*a1))
  {
    sub_1DD334D10();
    sub_1DD334DC0();
    if (v8)
    {

      *a2 = v8;
    }

    else
    {
      v6 = sub_1DD335850();
      sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
      swift_allocError();
      *v7 = 0xD00000000000004FLL;
      v7[1] = 0x80000001DD33DF40;
      (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69D3640], v6);
      swift_willThrow();
    }
  }

  else
  {
    v4 = sub_1DD335850();
    sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
    swift_allocError();
    *v5 = 0xD00000000000004ALL;
    v5[1] = 0x80000001DD33DE90;
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69D3640], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DD2FA7CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DB8, &qword_1DD33AA00);
  __swift_allocate_value_buffer(v0, qword_1EE02A4C0);
  __swift_project_value_buffer(v0, qword_1EE02A4C0);
  sub_1DD335170();
  sub_1DD334D90();
  return sub_1DD335790();
}

uint64_t sub_1DD2FA85C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x1E12AABB0](*a1))
  {
    sub_1DD334D90();
    sub_1DD334DC0();
    if (v8)
    {

      *a2 = v8;
    }

    else
    {
      v6 = sub_1DD335850();
      sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
      swift_allocError();
      *v7 = 0xD000000000000053;
      v7[1] = 0x80000001DD33DEE0;
      (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69D3640], v6);
      swift_willThrow();
    }
  }

  else
  {
    v4 = sub_1DD335850();
    sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
    swift_allocError();
    *v5 = 0xD00000000000004ALL;
    v5[1] = 0x80000001DD33DE90;
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69D3640], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DD2FAA54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D80, &qword_1DD33A9C8);
  __swift_allocate_value_buffer(v0, qword_1EE02A4F0);
  __swift_project_value_buffer(v0, qword_1EE02A4F0);
  sub_1DD3350C0();
  sub_1DD334D50();
  return sub_1DD335790();
}

uint64_t sub_1DD2FAAE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x1E12AABB0](*a1))
  {
    sub_1DD334D50();
    sub_1DD334DC0();
    if (v8)
    {

      *a2 = v8;
    }

    else
    {
      v6 = sub_1DD335850();
      sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
      swift_allocError();
      *v7 = 0xD000000000000051;
      v7[1] = 0x80000001DD33E160;
      (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69D3640], v6);
      swift_willThrow();
    }
  }

  else
  {
    v4 = sub_1DD335850();
    sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
    swift_allocError();
    *v5 = 0xD00000000000004ALL;
    v5[1] = 0x80000001DD33DE90;
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69D3640], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DD2FACDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D98, &qword_1DD33A9E0);
  __swift_allocate_value_buffer(v0, qword_1EE02A460);
  __swift_project_value_buffer(v0, qword_1EE02A460);
  sub_1DD335660();
  sub_1DD3351B0();
  return sub_1DD335790();
}

uint64_t sub_1DD2FAD6C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x1E12AABB0](*a1))
  {
    sub_1DD3351B0();
    sub_1DD334DC0();
    if (v8)
    {

      *a2 = v8;
    }

    else
    {
      v6 = sub_1DD335850();
      sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
      swift_allocError();
      *v7 = 0xD00000000000005ALL;
      v7[1] = 0x80000001DD33E040;
      (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69D3640], v6);
      swift_willThrow();
    }
  }

  else
  {
    v4 = sub_1DD335850();
    sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
    swift_allocError();
    *v5 = 0xD00000000000004ALL;
    v5[1] = 0x80000001DD33DE90;
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69D3640], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DD2FAF64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DA0, &qword_1DD33A9E8);
  __swift_allocate_value_buffer(v0, qword_1EE02A310);
  __swift_project_value_buffer(v0, qword_1EE02A310);
  sub_1DD334B00();
  sub_1DD334A90();
  return sub_1DD335790();
}

uint64_t sub_1DD2FAFF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x1E12AABB0](*a1))
  {
    sub_1DD334A90();
    sub_1DD334DC0();
    if (v8)
    {

      *a2 = v8;
    }

    else
    {
      v6 = sub_1DD335850();
      sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
      swift_allocError();
      *v7 = 0xD00000000000005BLL;
      v7[1] = 0x80000001DD33DFE0;
      (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69D3640], v6);
      swift_willThrow();
    }
  }

  else
  {
    v4 = sub_1DD335850();
    sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
    swift_allocError();
    *v5 = 0xD00000000000004ALL;
    v5[1] = 0x80000001DD33DE90;
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69D3640], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DD2FB1F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DA8, &qword_1DD33A9F0);
  __swift_allocate_value_buffer(v0, qword_1EE02A2E0);
  __swift_project_value_buffer(v0, qword_1EE02A2E0);
  sub_1DD334E30();
  sub_1DD334CE0();
  return sub_1DD335790();
}

uint64_t sub_1DD2FB280@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x1E12AABB0](*a1))
  {
    sub_1DD334CE0();
    sub_1DD334DC0();
    if (v8)
    {

      *a2 = v8;
    }

    else
    {
      v6 = sub_1DD335850();
      sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
      swift_allocError();
      *v7 = 0xD00000000000004ELL;
      v7[1] = 0x80000001DD33DF90;
      (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69D3640], v6);
      swift_willThrow();
    }
  }

  else
  {
    v4 = sub_1DD335850();
    sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
    swift_allocError();
    *v5 = 0xD00000000000004ALL;
    v5[1] = 0x80000001DD33DE90;
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69D3640], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DD2FB478()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D88, &qword_1DD33A9D0);
  __swift_allocate_value_buffer(v0, qword_1EE02A490);
  __swift_project_value_buffer(v0, qword_1EE02A490);
  sub_1DD3354F0();
  sub_1DD3350D0();
  return sub_1DD335790();
}

uint64_t sub_1DD2FB508@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x1E12AABB0](*a1))
  {
    sub_1DD3350D0();
    sub_1DD334DC0();
    if (v8)
    {

      *a2 = v8;
    }

    else
    {
      v6 = sub_1DD335850();
      sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
      swift_allocError();
      *v7 = 0xD000000000000058;
      v7[1] = 0x80000001DD33E100;
      (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69D3640], v6);
      swift_willThrow();
    }
  }

  else
  {
    v4 = sub_1DD335850();
    sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
    swift_allocError();
    *v5 = 0xD00000000000004ALL;
    v5[1] = 0x80000001DD33DE90;
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69D3640], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DD2FB700()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D90, &qword_1DD33A9D8);
  __swift_allocate_value_buffer(v0, qword_1EE02A538);
  __swift_project_value_buffer(v0, qword_1EE02A538);
  sub_1DD334FC0();
  sub_1DD334D20();
  return sub_1DD335790();
}

uint64_t sub_1DD2FB790@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x1E12AABB0](*a1))
  {
    sub_1DD334D20();
    sub_1DD334DC0();
    if (v8)
    {

      *a2 = v8;
    }

    else
    {
      v6 = sub_1DD335850();
      sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
      swift_allocError();
      *v7 = 0xD000000000000050;
      v7[1] = 0x80000001DD33E0A0;
      (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69D3640], v6);
      swift_willThrow();
    }
  }

  else
  {
    v4 = sub_1DD335850();
    sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
    swift_allocError();
    *v5 = 0xD00000000000004ALL;
    v5[1] = 0x80000001DD33DE90;
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69D3640], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DD2FB988()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DC0, &qword_1DD33AA08);
  __swift_allocate_value_buffer(v0, qword_1EE02A580);
  __swift_project_value_buffer(v0, qword_1EE02A580);
  sub_1DD334D50();
  sub_1DD335710();
  return sub_1DD335790();
}

uint64_t sub_1DD2FBA18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DC8, &qword_1DD33AA10);
  __swift_allocate_value_buffer(v0, qword_1EE02A4D8);
  __swift_project_value_buffer(v0, qword_1EE02A4D8);
  sub_1DD3350D0();
  sub_1DD335710();
  return sub_1DD335790();
}

uint64_t sub_1DD2FBAA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DD0, &qword_1DD33AA18);
  __swift_allocate_value_buffer(v0, qword_1EE02A598);
  __swift_project_value_buffer(v0, qword_1EE02A598);
  sub_1DD334D20();
  sub_1DD335710();
  return sub_1DD335790();
}

uint64_t sub_1DD2FBB38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DD8, &qword_1DD33AA20);
  __swift_allocate_value_buffer(v0, qword_1EE02A4A8);
  __swift_project_value_buffer(v0, qword_1EE02A4A8);
  sub_1DD3351B0();
  sub_1DD335710();
  return sub_1DD335790();
}

uint64_t sub_1DD2FBBC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DF0, &qword_1DD33AA38);
  __swift_allocate_value_buffer(v0, qword_1EE02A328);
  __swift_project_value_buffer(v0, qword_1EE02A328);
  sub_1DD334A90();
  sub_1DD335710();
  return sub_1DD335790();
}

uint64_t sub_1DD2FBC58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DF8, &qword_1DD33AA40);
  __swift_allocate_value_buffer(v0, qword_1EE02A2F8);
  __swift_project_value_buffer(v0, qword_1EE02A2F8);
  sub_1DD334CE0();
  sub_1DD335710();
  return sub_1DD335790();
}

uint64_t sub_1DD2FBCE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DE0, &qword_1DD33AA28);
  __swift_allocate_value_buffer(v0, qword_1EE02A5B0);
  __swift_project_value_buffer(v0, qword_1EE02A5B0);
  sub_1DD334D10();
  sub_1DD335710();
  return sub_1DD335790();
}

uint64_t sub_1DD2FBD78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DE8, &qword_1DD33AA30);
  __swift_allocate_value_buffer(v0, qword_1EE02A568);
  __swift_project_value_buffer(v0, qword_1EE02A568);
  sub_1DD334D90();
  sub_1DD335710();
  return sub_1DD335790();
}

uint64_t sub_1DD2FBE08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E10, &qword_1DD33AA58);
  __swift_allocate_value_buffer(v0, qword_1EE02A508);
  __swift_project_value_buffer(v0, qword_1EE02A508);
  sub_1DD334FC0();
  sub_1DD3356B0();
  return sub_1DD335790();
}

uint64_t sub_1DD2FBE98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (sub_1DD334F60())
  {
    sub_1DD3356B0();
    result = swift_dynamicCastClass();
    if (result)
    {
      *a2 = result;
      return result;
    }
  }

  v5 = sub_1DD335850();
  sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
  swift_allocError();
  *v6 = 0xD000000000000075;
  v6[1] = 0x80000001DD33DD90;
  (*(*(v5 - 8) + 104))(v6, *MEMORY[0x1E69D3640], v5);
  return swift_willThrow();
}

uint64_t sub_1DD2FBFB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E00, &qword_1DD33AA48);
  __swift_allocate_value_buffer(v0, qword_1EE02A478);
  __swift_project_value_buffer(v0, qword_1EE02A478);
  sub_1DD3354F0();
  sub_1DD334FC0();
  return sub_1DD335790();
}

uint64_t sub_1DD2FC048@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1DD334FC0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_1DD334FB0();
  if (sub_1DD3354A0())
  {
    sub_1DD334FA0();
  }

  if (sub_1DD335490())
  {
    sub_1DD334DA0();
    v9 = v8;

    if (v9)
    {
      sub_1DD334F90();
    }
  }

  if (sub_1DD3354C0())
  {
    sub_1DD334F40();
  }

  if (sub_1DD335460())
  {
    sub_1DD334F70();
  }

  result = sub_1DD335470();
  if (result)
  {
    sub_1DD334F80();
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1DD2FC170()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E08, &qword_1DD33AA50);
  __swift_allocate_value_buffer(v0, qword_1EE02A520);
  __swift_project_value_buffer(v0, qword_1EE02A520);
  sub_1DD334FC0();
  sub_1DD335530();
  return sub_1DD335790();
}

uint64_t sub_1DD2FC200(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD2FC254@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (sub_1DD334F50())
  {
    sub_1DD335530();
    result = swift_dynamicCastClass();
    if (result)
    {
      *a2 = result;
      return result;
    }
  }

  v5 = sub_1DD335850();
  sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648]);
  swift_allocError();
  *v6 = 0xD000000000000073;
  v6[1] = 0x80000001DD33DE10;
  (*(*(v5 - 8) + 104))(v6, *MEMORY[0x1E69D3640], v5);
  return swift_willThrow();
}

uint64_t sub_1DD2FC374(uint64_t a1)
{
  v2 = sub_1DD334990();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E28, &qword_1DD33AA68);
  result = sub_1DD336BE0();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = *(v9 + 40);
    sub_1DD2FC6B8(&qword_1ECCD6E30, MEMORY[0x1E6969AD0]);
    v16 = sub_1DD336550();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, *(v9 + 48) + v18 * v13, v2);
      sub_1DD2FC6B8(&qword_1ECCD6E38, MEMORY[0x1E6969AD0]);
      v23 = sub_1DD336590();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v9 + 48) + v18 * v13, v25, v2);
    v26 = *(v9 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DD2FC6B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DD2FC700()
{
  result = qword_1ECCD6E58;
  if (!qword_1ECCD6E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCD6E58);
  }

  return result;
}

uint64_t sub_1DD2FC744(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DD2FC7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD335CE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v26 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = v26 - v14;
  v16 = 0;
  v27 = a1;
  v28 = a2;
  v19 = *(a1 + 56);
  v18 = a1 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v5 + 32;
  v26[3] = v5 + 16;
  v26[1] = v5 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v5 + 16))(v15, *(v27 + 48) + *(v5 + 72) * (v25 | (v24 << 6)), v4);
      (*(v5 + 32))(v9, v15, v4);
      sub_1DD2955E8();
      result = (*(v5 + 8))(v12, v4);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD2FCA14(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t), uint64_t (*a4)(unint64_t))
{
  v8 = sub_1DD334C50();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v16 = v15 - v14;
  sub_1DD335ED0();
  sub_1DD334AA0();
  sub_1DD334DC0();

  if (v57)
  {

    return 0;
  }

  else
  {
    v54 = v11;
    sub_1DD335ED0();
    v18 = sub_1DD335700();
    v20 = v19;

    v21 = sub_1DD334CA0();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = MEMORY[0x1E12AAAE0](v18, v20);
    sub_1DD335ED0();
    v51 = v24;
    OUTLINED_FUNCTION_14_10(v24);

    sub_1DD335ED0();
    sub_1DD3356F0();
    OUTLINED_FUNCTION_12_7();

    v56 = *(v24 + 16);
    if (v56)
    {
      v48 = a1;
      v49 = a3;
      v50 = a4;
      v25 = 0;
      v26 = v54 + 16;
      v53 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v55 = *(v54 + 16);
      v52 = v24 + v53;
      v27 = *(v26 + 56);
      v28 = (v26 - 8);
      do
      {
        v29 = v52 + v27 * v25++;
        v30 = v26;
        v55(v16, v29, v8);
        v31 = a2;
        sub_1DD335ED0();
        v32 = sub_1DD3356F0();

        v33 = v32 + v53;
        v34 = *(v32 + 16) + 1;
        while (--v34)
        {
          v35 = v33 + v27;
          v36 = MEMORY[0x1E12AAA70]();
          v33 = v35;
          if (v36)
          {

            goto LABEL_10;
          }
        }

        sub_1DD334BA0();
LABEL_10:
        (*v28)(v16, v8);
        a2 = v31;
        v26 = v30;
      }

      while (v25 != v56);

      a3 = v49;
      a4 = v50;
      a1 = v48;
    }

    else
    {
    }

    sub_1DD2FCDF8(a2, a1, v51, a3, a4);
    v17 = MEMORY[0x1E12AABB0](v51);
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66C0, &qword_1DD339430);
      v37 = sub_1DD335CE0();
      OUTLINED_FUNCTION_1_0(v37);
      v39 = v38;
      v41 = *(v40 + 72);
      v42 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1DD339380;
      v44 = *MEMORY[0x1E69D2918];
      v45 = sub_1DD336130();
      OUTLINED_FUNCTION_1(v45);
      (*(v46 + 104))(v43 + v42, v44);
      (*(v39 + 104))(v43 + v42, *MEMORY[0x1E69D27E8], v37);
    }
  }

  return v17;
}

uint64_t sub_1DD2FCDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t), uint64_t (*a5)(unint64_t))
{
  v7 = sub_1DD334C50();
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v15 = v14 - v13;
  sub_1DD335F20();
  sub_1DD334C30();
  sub_1DD335ED0();
  v16 = sub_1DD3356F0();

  v23 = v15;
  v17 = sub_1DD2A8EF8(a4, v22, v16);

  if (!v17)
  {
    sub_1DD335ED0();
    v18 = sub_1DD3356F0();

    MEMORY[0x1EEE9AC00](v19);
    *&v22[-16] = v15;
    v20 = sub_1DD2A8EF8(a5, &v22[-32], v18);

    if (!v20)
    {
      sub_1DD334BA0();
    }
  }

  return (*(v10 + 8))(v15, v7);
}

uint64_t sub_1DD2FCFC8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E98, &qword_1DD33AB10);
  v3 = swift_allocObject();
  v4 = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = a1;
  v5 = v1[2];
  if (v5)
  {
    v3[4] = v5;
    v6 = v1[2];
    v7 = a1;
    sub_1DD335860();
    if (v6)
    {
      v8 = *(v6 + 24);
      *(v6 + 24) = v4;
      sub_1DD335860();

      v9 = v1[2];
    }

    v1[2] = v4;
  }

  else
  {
    v10 = v1[3];
    v1[2] = v3;
    v1[3] = v3;
    sub_1DD335860();
    v11 = a1;
  }

  sub_1DD335860();

  v13 = v1[4];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v15;
    return v4;
  }

  return result;
}

uint64_t sub_1DD2FD0AC(uint64_t result)
{
  v2 = result;
  v3 = v1[2];
  if (v3)
  {
    v4 = v3 == result;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v1[2] = *(result + 32);
    sub_1DD335860();
  }

  v5 = v1[3];
  if (v5)
  {
    v6 = v5 == v2;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v1[3] = *(v2 + 24);
    sub_1DD335860();
  }

  v7 = *(v2 + 32);
  if (v7)
  {
    v8 = *(v7 + 24);
    *(v7 + 24) = *(v2 + 24);
    sub_1DD335860();
    sub_1DD335860();
  }

  v9 = *(v2 + 24);
  if (v9)
  {
    v10 = *(v9 + 32);
    *(v9 + 32) = *(v2 + 32);
    sub_1DD335860();
    sub_1DD335860();
  }

  v11 = v1[4];
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v13;
  }

  return result;
}

uint64_t sub_1DD2FD1A0(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2 == result;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return result;
  }

  v4 = result;
  v5 = *(result + 24);
  v6 = *(result + 32);
  if (v5)
  {
    v7 = *(v5 + 32);
    *(v5 + 32) = v6;
    swift_retain_n();
    swift_retain_n();

    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = *(result + 32);
  sub_1DD335860();
  if (v6)
  {
LABEL_7:
    v8 = *(v6 + 24);
    *(v6 + 24) = v5;
    sub_1DD335860();
  }

LABEL_8:
  v9 = *(v1 + 24);
  if (v9 && v9 == v4)
  {
    *(v1 + 24) = v5;
  }

  v11 = *(v4 + 32);
  *(v4 + 32) = *(v1 + 16);
  sub_1DD335860();

  v12 = *(v1 + 16);
  if (v12)
  {
    v13 = *(v12 + 24);
    *(v12 + 24) = v4;
    sub_1DD335860();
    sub_1DD335860();
  }

  v14 = *(v4 + 24);
  *(v4 + 24) = 0;

  v15 = *(v1 + 16);
  *(v1 + 16) = v4;
  sub_1DD335860();
}

uint64_t sub_1DD2FD2F4()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return v1;
  }

  v2 = *(v1 + 24);
  *(v0 + 24) = v2;
  if (v2)
  {
    v3 = *(v2 + 32);
    *(v2 + 32) = 0;
    sub_1DD335860();

    v4 = *(v1 + 24);
  }

  *(v1 + 24) = 0;

  v6 = *(v0 + 32);
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (!v7)
  {
    *(v0 + 32) = v8;
    return v1;
  }

  __break(1u);
  return result;
}

void *sub_1DD2FD364(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6EC0, &qword_1DD33AB48);
  v2 = swift_allocObject();
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = 0;
  v1[3] = v2;
  sub_1DD335D60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E98, &qword_1DD33AB10);
  sub_1DD28AF28(&qword_1ECCD6740, MEMORY[0x1E69D2838]);
  v1[4] = sub_1DD336530();
  return v1;
}

id sub_1DD2FD430(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1DD2B2FB0(a1);
  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = *(*(v3 + 56) + 8 * v4);
  sub_1DD335860();

  v7 = *(v6 + 16);

  return v7;
}

void sub_1DD2FD4D4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DD335D60();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v34 = v8;
    swift_beginAccess();
    v11 = v2[4];
    v12 = v3[4];

    v13 = sub_1DD2AAF0C(a2, v11);

    if (v13)
    {
      v14 = *(v13 + 16);
      *(v13 + 16) = a1;

      v15 = v3[3];
      v16 = a1;
      sub_1DD2FD1A0(v13);

      (*(v34 + 8))(a2, v6);
    }

    else
    {
      (*(v34 + 16))(v10, a2, v6);
      v18 = v3[3];
      sub_1DD2FCFC8(a1);
      swift_beginAccess();
      v19 = v3[4];
      swift_isUniquelyReferenced_nonNull_native();
      v35 = v3[4];
      sub_1DD2B3838();
      v3[4] = v35;
      v20 = *(v34 + 8);
      v34 += 8;
      v20(v10, v6);
      swift_endAccess();
      if (v3[2] >= *(v18 + 32))
      {
        v20(a2, v6);
      }

      else
      {
        v21 = sub_1DD2FD2F4();
        v22 = v3[4];
        v33 = MEMORY[0x1EEE9AC00](v21);
        *(&v31 - 2) = v33;

        v24 = sub_1DD2FD88C(v23, sub_1DD2FF860);
        v31 = v25;
        v32 = v24;
        v27 = v26;
        v28 = ~v26;

        if (v28)
        {
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6EA8, &qword_1DD33AB28);
          v30 = v31;
          v29 = v32;
          sub_1DD336540();
          v20(v10, v6);

          swift_endAccess();

          sub_1DD2FF874(v29, v30, v27);

          v20(a2, v6);
        }

        else
        {
          v20(a2, v6);
        }
      }
    }
  }

  else
  {
    v17 = *(v8 + 8);

    v17(a2, v6);
  }
}

uint64_t sub_1DD2FD88C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v34 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6EB0, &unk_1DD33AB30);
  v3 = *(*(v33 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v33);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v28 - v6;
  result = sub_1DD2FF898(a1);
  v9 = result;
  v10 = a1 + 64;
  v29 = a1 + 72;
  v30 = a1 + 64;
  if (v11)
  {
    __break(1u);
    return 0;
  }

  else
  {
    while (1)
    {
      v12 = *(a1 + 36);
      if (v12 != v8)
      {
        break;
      }

      v13 = 1 << *(a1 + 32);
      if (v9 == v13)
      {
        return 0;
      }

      if (v9 < 0 || v9 >= v13)
      {
        goto LABEL_23;
      }

      if ((*(v10 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v37 = v9 >> 6;
      v36 = v12;
      v35 = v8;
      v14 = *(a1 + 48);
      v15 = sub_1DD335D60();
      v16 = *(v15 - 8);
      v17 = v31;
      (*(v16 + 16))(v31, v14 + *(v16 + 72) * v9, v15);
      v18 = *(*(a1 + 56) + 8 * v9);
      v19 = v32;
      (*(v16 + 32))(v32, v17, v15);
      *(v19 + *(v33 + 48)) = v18;
      sub_1DD335860();
      LOBYTE(v18) = v34(v19, v18);
      result = sub_1DD296084(v19, &qword_1ECCD6EB0, &unk_1DD33AB30);
      if (v18)
      {
        return v9;
      }

      v20 = 1 << *(a1 + 32);
      if (v9 >= v20)
      {
        goto LABEL_25;
      }

      v10 = v30;
      v21 = *(v30 + 8 * v37);
      if ((v21 & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v36)
      {
        goto LABEL_27;
      }

      v22 = v21 & (-2 << (v9 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v37 << 6;
        v24 = v37 + 1;
        v25 = (v29 + 8 * v37);
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1DD2FF88C(v9, v35, 0);
            v20 = __clz(__rbit64(v26)) + v23;
            goto LABEL_18;
          }
        }

        result = sub_1DD2FF88C(v9, v35, 0);
      }

LABEL_18:
      v8 = *(a1 + 36);
      v9 = v20;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

id sub_1DD2FDBCC(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = sub_1DD2B2FB0(a1);
  if (v6)
  {
    v7 = v5;
    v8 = *(v2 + 32);
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v2 + 32);
    v9 = v16[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6750, &unk_1DD339700);
    sub_1DD336CC0();
    v10 = v16[6];
    v11 = sub_1DD335D60();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v16[7] + 8 * v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E98, &qword_1DD33AB10);
    sub_1DD28AF28(&qword_1ECCD6740, MEMORY[0x1E69D2838]);
    sub_1DD336CE0();
    *(v2 + 32) = v16;
    swift_endAccess();
    v13 = *(v2 + 24);
    sub_1DD2FD0AC(v12);
    v14 = *(v12 + 16);
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return v14;
}

uint64_t sub_1DD2FDD64(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = *(*(a1 + 24) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6EB8, &qword_1DD33AB40);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DD2FF8D8;
  *(v3 + 24) = v2;
  sub_1DD335860();
  return v3;
}

id sub_1DD2FDDF4(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 32);
  swift_beginAccess();
  *(a1 + 16) = v3;
  v4 = *(v2 + 16);
  sub_1DD335860();
  v5 = v4;

  return v5;
}

uint64_t RRMemoryStorage.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  RRMemoryStorage.init()();
  return v3;
}

uint64_t RRMemoryStorage.init()()
{
  v1 = v0;
  type metadata accessor for RRMemoryStorage();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E68, "L[");
  sub_1DD336630();
  sub_1DD335CC0();
  v2 = OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_entities;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E78, &unk_1DD33AAB8);
  swift_allocObject();
  *(v0 + v2) = sub_1DD2FD364(1000);
  v3 = OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_lock;
  *(v1 + v3) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  return v1;
}

uint64_t type metadata accessor for RRMemoryStorage()
{
  result = qword_1ECCD6E88;
  if (!qword_1ECCD6E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1DD2FDFF4(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_lock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_entities);
  v5 = sub_1DD2FD430(a1);
  [v3 unlock];
  return v5;
}

uint64_t sub_1DD2FE064()
{
  v2 = *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_lock);
  [v2 lock];
  v3 = *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_entities);
  sub_1DD335860();
  sub_1DD2FF258(sub_1DD2FF5A0);
  OUTLINED_FUNCTION_12_7();

  [v2 unlock];
  return v1;
}

id sub_1DD2FE0F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DD335D60();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v53 = v10;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v45 - v12;
  v45[0] = *&v2[OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_lock];
  [v45[0] lock];
  v54 = a1;
  result = sub_1DD287354();
  v55 = result;
  if (!result)
  {
    return [v45[0] unlock];
  }

  if (v55 >= 1)
  {
    v16 = 0;
    v56 = OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_logger;
    v17 = *&v2[OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_entities];
    v50 = (v7 + 16);
    v51 = v54 & 0xC000000000000001;
    v49 = (v7 + 8);
    *&v15 = 136315138;
    v47 = v15;
    *&v15 = 134217984;
    v46 = v15;
    v48 = v4;
    v52 = v17;
    v45[1] = v2;
    do
    {
      if (v51)
      {
        v18 = MEMORY[0x1E12ACA60](v16, v54);
      }

      else
      {
        v18 = *(v54 + 8 * v16 + 32);
      }

      v19 = v18;
      sub_1DD335F20();
      sub_1DD336010();
      OUTLINED_FUNCTION_8_7();
      sub_1DD335D20();
      v20 = sub_1DD2FD430(v13);
      if (v20)
      {
        v21 = v20;
        v22 = v53;
        (*v50)(v53, v13, v4);
        sub_1DD294278(v21, v19, sub_1DD2FF840, sub_1DD2FF840);
        sub_1DD2FD4D4(v23, v22);
        v24 = v19;
        v25 = sub_1DD335CB0();
        v26 = sub_1DD336940();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = OUTLINED_FUNCTION_50();
          v28 = OUTLINED_FUNCTION_31_0();
          v57 = v28;
          *v27 = v47;
          v29 = sub_1DD336010();
          sub_1DD27DBF0(v29, v30, &v57);
          OUTLINED_FUNCTION_12_7();

          *(v27 + 4) = v24;
          _os_log_impl(&dword_1DD27A000, v25, v26, "update entity. id: %s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v28);
          OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_54();
        }

        v4 = v48;
      }

      else
      {
        v31 = v53;
        (*v50)(v53, v13, v4);
        v32 = v19;
        sub_1DD2FD4D4(v19, v31);
        v33 = v32;
        v34 = sub_1DD335CB0();
        v35 = sub_1DD336940();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = OUTLINED_FUNCTION_50();
          v37 = OUTLINED_FUNCTION_31_0();
          v57 = v37;
          *v36 = v47;
          v38 = sub_1DD336010();
          sub_1DD27DBF0(v38, v39, &v57);
          OUTLINED_FUNCTION_12_7();

          *(v36 + 4) = v33;
          _os_log_impl(&dword_1DD27A000, v34, v35, "insert entity. id: %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v37);
          v4 = v48;
          OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_54();
        }
      }

      sub_1DD335860();
      v40 = sub_1DD335CB0();
      v41 = sub_1DD336940();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v52;
      if (v42)
      {
        v44 = OUTLINED_FUNCTION_50();
        *v44 = v46;
        *(v44 + 4) = *(*(v43 + 24) + 32);

        _os_log_impl(&dword_1DD27A000, v40, v41, "total entity count: %ld", v44, 0xCu);
        OUTLINED_FUNCTION_54();
      }

      else
      {

        v40 = v19;
      }

      ++v16;

      (*v49)(v13, v4);
    }

    while (v55 != v16);
    return [v45[0] unlock];
  }

  __break(1u);
  return result;
}

id sub_1DD2FE5B4(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v58 = sub_1DD334830();
  v8 = OUTLINED_FUNCTION_1_0(v58);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v57 = (v14 - v13);
  v56 = sub_1DD335D60();
  v15 = OUTLINED_FUNCTION_1_0(v56);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  v24 = OUTLINED_FUNCTION_36(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = v53 - v27;
  v29 = *(v4 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_lock);
  [v29 lock];
  v30 = *(v4 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_entities);
  v31 = a1;
  v32 = sub_1DD2FD430(a1);
  if (v32)
  {
    v33 = v32;
    v55 = v29;
    sub_1DD336060();
    v53[1] = v4;
    v54 = v10;
    v34 = *(v10 + 16);
    v35 = a2;
    v36 = a2;
    v37 = v58;
    v34(v28, v35, v58);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v37);
    sub_1DD335FA0();
    (*(v17 + 16))(v22, v31, v56);
    v38 = v33;
    sub_1DD2FD4D4(v33, v22);
    v39 = v57;
    v34(v57, v36, v37);
    v40 = v38;
    v41 = sub_1DD335CB0();
    v42 = sub_1DD336940();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_31_0();
      v59 = swift_slowAlloc();
      *v43 = 136315650;
      v44 = sub_1DD336010();
      v46 = sub_1DD27DBF0(v44, v45, &v59);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2048;
      *(v43 + 14) = a3;
      *(v43 + 22) = 2080;
      sub_1DD28AF28(&qword_1EE027A40, MEMORY[0x1E6969530]);
      v47 = v58;
      v48 = sub_1DD336DC0();
      v50 = v49;
      (*(v54 + 8))(v39, v47);
      v51 = sub_1DD27DBF0(v48, v50, &v59);

      *(v43 + 24) = v51;
      _os_log_impl(&dword_1DD27A000, v41, v42, "Successfully updated entity %s's saliencyScore to %f computed at %s", v43, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_54();
    }

    else
    {

      (*(v54 + 8))(v39, v58);
    }

    v29 = v55;
  }

  return [v29 unlock];
}

uint64_t sub_1DD2FE9BC(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_lock);
  [v4 lock];
  v5 = a1;
  v6 = sub_1DD335CB0();
  v7 = sub_1DD336940();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_50();
    v9 = OUTLINED_FUNCTION_31_0();
    v31 = v9;
    *v8 = 136315138;
    v10 = [v5 predicateFormat];
    v11 = v5;
    v12 = v4;
    v13 = v10;
    v14 = sub_1DD3365D0();
    v16 = v15;

    v17 = sub_1DD27DBF0(v14, v16, &v31);

    *(v8 + 4) = v17;
    v4 = v12;
    v5 = v11;
    OUTLINED_FUNCTION_3_11(&dword_1DD27A000, v18, v19, "query predicate. %s");
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_54();
  }

  sub_1DD335860();
  v20 = sub_1DD335CB0();
  v21 = sub_1DD336940();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_50();
    *v22 = 134217984;
    *(v22 + 4) = *(*(*(v2 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_entities) + 24) + 32);

    OUTLINED_FUNCTION_3_11(&dword_1DD27A000, v23, v24, "total entity count: %ld");
    OUTLINED_FUNCTION_54();
  }

  else
  {
  }

  v25 = *(v2 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_entities);
  v31 = MEMORY[0x1E69E7CC0];
  sub_1DD2FDD64(v25);
  v26 = v5;
  sub_1DD335860();
  while (1)
  {
    sub_1DD336D60();
    if (!v30)
    {
      break;
    }

    if ([v26 evaluateWithObject_])
    {
      sub_1DD336C50();
      v27 = v31[2];
      sub_1DD336C70();
      sub_1DD336C80();
      sub_1DD336C60();
    }

    else
    {
    }
  }

  v28 = v31;
  [v4 unlock];
  return v28;
}

uint64_t sub_1DD2FEC68(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_lock);
  [v4 lock];
  sub_1DD335860();
  v5 = sub_1DD335CB0();
  v6 = sub_1DD336940();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_50();
    v8 = OUTLINED_FUNCTION_31_0();
    v24 = a1;
    v25 = v8;
    *v7 = 136315138;
    sub_1DD335710();
    sub_1DD335860();
    v9 = sub_1DD336630();
    v11 = sub_1DD27DBF0(v9, v10, &v25);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_3_11(&dword_1DD27A000, v12, v13, "query by UsoEntity. %s");
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_54();
  }

  sub_1DD335860();
  v14 = sub_1DD335CB0();
  v15 = sub_1DD336940();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_50();
    *v16 = 134217984;
    *(v16 + 4) = *(*(*(v2 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_entities) + 24) + 32);

    OUTLINED_FUNCTION_3_11(&dword_1DD27A000, v17, v18, "total entity count: %ld");
    OUTLINED_FUNCTION_54();
  }

  else
  {
  }

  v19 = *(v2 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_entities);
  v25 = MEMORY[0x1E69E7CC0];
  sub_1DD2FDD64(v19);
  sub_1DD335860();
  sub_1DD335860();
  while (1)
  {
    sub_1DD336D60();
    if (!v24)
    {
      break;
    }

    sub_1DD335ED0();
    v20 = sub_1DD335960();

    if (v20)
    {
      sub_1DD336C50();
      v21 = v25[2];
      sub_1DD336C70();
      sub_1DD336C80();
      sub_1DD336C60();
    }

    else
    {
    }
  }

  v22 = v25;
  [v4 unlock];
  return v22;
}

id sub_1DD2FEF08(uint64_t a1)
{
  v3 = sub_1DD335D60();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v11 = v10 - v9;
  v20 = *(v1 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_lock);
  [v20 lock];
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_entities);
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v11, v17, v3);

      (*(v14 - 8))(v11, v3);
      v17 += v18;
      --v12;
    }

    while (v12);
  }

  return [v20 unlock];
}

uint64_t RRMemoryStorage.deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_logger;
  v2 = sub_1DD335CD0();
  OUTLINED_FUNCTION_1(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_entities);

  return v0;
}

uint64_t RRMemoryStorage.__deallocating_deinit()
{
  RRMemoryStorage.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD2FF258(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  v2 = sub_1DD335860();
  a1(&v21, v2);

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; ++i)
  {
    result = sub_1DD336D60();
    v7 = v21;
    if (!v21)
    {

      v18 = v4[3];
      if (v18 >= 2)
      {
        v19 = v18 >> 1;
        v17 = __OFSUB__(v19, v3);
        v20 = v19 - v3;
        if (v17)
        {
          goto LABEL_25;
        }

        v4[2] = v20;
      }

      return v4;
    }

    if (!v3)
    {
      v8 = v4[3];
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_24;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6930, &qword_1DD339930);
      v11 = swift_allocObject();
      v12 = (_swift_stdlib_malloc_size(v11) - 32) / 8;
      v11[2] = v10;
      v11[3] = (2 * v12) | 1;
      v13 = (v11 + 4);
      v14 = v4[3];
      v15 = v14 >> 1;
      if (v4[2])
      {
        if (v11 != v4 || v13 >= &v4[v15 + 4])
        {
          memmove(v11 + 4, v4 + 4, 8 * v15);
        }

        v4[2] = 0;
      }

      i = (v13 + 8 * v15);
      v3 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - (v14 >> 1);

      v4 = v11;
    }

    v17 = __OFSUB__(v3--, 1);
    if (v17)
    {
      break;
    }

    *i = v7;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1DD2FF3D8(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    result = sub_1DD336CF0();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v4 = result | 0x8000000000000000;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
    a3 = 0;
LABEL_28:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v12;
    v7[4] = v10;
    return a3;
  }

  v17 = -1 << *(a4 + 32);
  v8 = a4 + 64;
  v9 = ~v17;
  v18 = -v17;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v10 = v19 & *(a4 + 64);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_28;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = v9;
    v11 = 0;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ((v4 & 0x8000000000000000) != 0)
      {
        if (!sub_1DD336D10() || (swift_unknownObjectRelease(), sub_1DD2FF904(), swift_dynamicCast(), (result = v21) == 0))
        {
LABEL_25:
          a3 = v11;
LABEL_26:
          v9 = v20;
          goto LABEL_28;
        }
      }

      else
      {
        if (!v10)
        {
          while (1)
          {
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v10 = 0;
              goto LABEL_25;
            }

            v10 = *(v8 + 8 * v15);
            ++v12;
            if (v10)
            {
              v12 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v16 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        result = *(*(v4 + 56) + ((v12 << 9) | (8 * v16)));
        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v11;
      if (v14 == a3)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD2FF5A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD2FDD64(v1);
  *a1 = result;
  return result;
}

uint64_t sub_1DD2FF5D4()
{
  result = sub_1DD335CD0();
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

uint64_t sub_1DD2FF7D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6EA0, &unk_1DD33AB18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD2FF874(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1DD2FF88C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1DD2FF88C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1DD2FF898(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1DD336B20();
  v4 = *(a1 + 36);
  return result;
}

id sub_1DD2FF8D8@<X0>(void *a1@<X8>)
{
  result = sub_1DD2FDDF4(v1);
  *a1 = result;
  return result;
}

unint64_t sub_1DD2FF904()
{
  result = qword_1ECCD6EC8;
  if (!qword_1ECCD6EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCD6EC8);
  }

  return result;
}

uint64_t RREventProcessor.deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution16RREventProcessor_logger;
  v2 = sub_1DD335CD0();
  OUTLINED_FUNCTION_4_0(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC23SiriReferenceResolution16RREventProcessor_storage));
  return v0;
}

uint64_t RREventProcessor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution16RREventProcessor_logger;
  v2 = sub_1DD335CD0();
  OUTLINED_FUNCTION_4_0(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC23SiriReferenceResolution16RREventProcessor_storage));
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t type metadata accessor for RREventProcessor()
{
  result = qword_1EE027E68;
  if (!qword_1EE027E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD2FFABC()
{
  result = sub_1DD335CD0();
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

uint64_t sub_1DD2FFB84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = sub_1DD334890();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v14 = v13 - v12;
  (*(v15 + 16))(v13 - v12, a1);
  v16 = *a2;
  return a5(v14);
}

uint64_t sub_1DD2FFC50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  OUTLINED_FUNCTION_106();
  swift_beginAccess();
  v5 = sub_1DD334890();
  OUTLINED_FUNCTION_1(v5);
  return (*(v6 + 16))(a2, v2 + v4);
}

uint64_t sub_1DD2FFCD4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = sub_1DD334890();
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 40))(v2 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_1DD2FFD78()
{
  v10 = sub_1DD3369C0();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DD336980();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1DD336400();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1DD27D80C(0, &qword_1EE028598, 0x1E69E9610);
  sub_1DD3363F0();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1DD30B5E4(&qword_1EE0285A0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6708, &qword_1DD339E50);
  sub_1DD27F454(&qword_1EE0285E8, &qword_1ECCD6708, &qword_1DD339E50);
  sub_1DD336B10();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1DD336A10();
  qword_1EE027E80 = result;
  return result;
}

void sub_1DD2FFFD8()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v2 = sub_1DD335CD0();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20[-1] - v9;
  v11 = type metadata accessor for RRSQLiteStorage();
  RRSQLiteStorage.__allocating_init()();
  if (v12)
  {
    v22[3] = v11;
    v22[4] = &protocol witness table for RRSQLiteStorage;
    v22[0] = v12;
    sub_1DD28191C(v22, v21);
    v13 = type metadata accessor for RRHeuristicSaliencyEstimator();
    OUTLINED_FUNCTION_59(v13);
    swift_allocObject();
    v14 = RRHeuristicSaliencyEstimator.init()();
    v20[3] = v13;
    v20[4] = &protocol witness table for RRHeuristicSaliencyEstimator;
    v20[0] = v14;
    v15 = sub_1DD300338();
    (*(v1 + 224))(v21, v20, v15);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v22[0] = type metadata accessor for SiriReferenceResolutionService();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD68E8, &unk_1DD339F60);
    sub_1DD336630();
    sub_1DD335CC0();
    v16 = sub_1DD335CB0();
    v17 = sub_1DD336960();
    if (OUTLINED_FUNCTION_17_0(v17))
    {
      v18 = OUTLINED_FUNCTION_69();
      *v18 = 0;
      _os_log_impl(&dword_1DD27A000, v16, v17, "Failed to intialize RRSQLiteStorage.", v18, 2u);
      OUTLINED_FUNCTION_52_0();
    }

    (*(v5 + 8))(v10, v2);
  }

  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD300338()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6818, &qword_1DD339910);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD339380;
  v1 = type metadata accessor for RRNowPlayingMediaPuller();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = RRNowPlayingMediaPuller.init()();
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for RRNowPlayingMediaPuller;
  *(v0 + 32) = v4;
  if ((AFIsHorseman() & 1) == 0 && (AFIsNano() & 1) == 0)
  {
    v5 = type metadata accessor for RRForegroundedAppPuller();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v8 = RRForegroundedAppPuller.init()();
    sub_1DD2BBBC0(1, 2, 1, v0);
    v0 = v9;
    v70 = v5;
    v71 = &protocol witness table for RRForegroundedAppPuller;
    *&v69 = v8;
    *(v9 + 16) = 2;
    sub_1DD289CE4(&v69, v9 + 72);
  }

  if (qword_1EE029490 != -1)
  {
    swift_once();
  }

  sub_1DD28191C(&unk_1EE02A6F0, &v69);
  v10 = v70;
  v11 = v71;
  __swift_project_boxed_opaque_existential_1(&v69, v70);
  v12 = (v11[6])(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(&v69);
  if (v12)
  {
    v13 = type metadata accessor for RRIFUIContextPuller();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = RRIFUIContextPuller.init()();
    v18 = *(v0 + 16);
    v17 = *(v0 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1DD2BBBC0(v17 > 1, v18 + 1, 1, v0);
      v0 = v67;
    }

    v70 = v13;
    v71 = &protocol witness table for RRIFUIContextPuller;
    *&v69 = v16;
    *(v0 + 16) = v18 + 1;
    sub_1DD289CE4(&v69, v0 + 40 * v18 + 32);
  }

  v19 = type metadata accessor for RRBiomeNotificationPuller();
  v20 = RRBiomeNotificationPuller.__allocating_init()();
  v22 = *(v0 + 16);
  v21 = *(v0 + 24);
  if (v22 >= v21 >> 1)
  {
    sub_1DD2BBBC0(v21 > 1, v22 + 1, 1, v0);
    v0 = v62;
  }

  v70 = v19;
  v71 = &protocol witness table for RRBiomeNotificationPuller;
  *&v69 = v20;
  *(v0 + 16) = v22 + 1;
  sub_1DD289CE4(&v69, v0 + 40 * v22 + 32);
  v23 = type metadata accessor for RRContextKitPuller();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = RRContextKitPuller.init()();
  v28 = *(v0 + 16);
  v27 = *(v0 + 24);
  if (v28 >= v27 >> 1)
  {
    sub_1DD2BBBC0(v27 > 1, v28 + 1, 1, v0);
    v0 = v63;
  }

  v70 = v23;
  v71 = &protocol witness table for RRContextKitPuller;
  *&v69 = v26;
  *(v0 + 16) = v28 + 1;
  sub_1DD289CE4(&v69, v0 + 40 * v28 + 32);
  v29 = type metadata accessor for RRFrontBoardPuller();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = RRFrontBoardPuller.init()();
  v34 = *(v0 + 16);
  v33 = *(v0 + 24);
  if (v34 >= v33 >> 1)
  {
    sub_1DD2BBBC0(v33 > 1, v34 + 1, 1, v0);
    v0 = v64;
  }

  v70 = v29;
  v71 = &protocol witness table for RRFrontBoardPuller;
  *&v69 = v32;
  *(v0 + 16) = v34 + 1;
  sub_1DD289CE4(&v69, v0 + 40 * v34 + 32);
  v35 = type metadata accessor for RRVoiceShortcutClientPuller();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = RRVoiceShortcutClientPuller.init()();
  v40 = *(v0 + 16);
  v39 = *(v0 + 24);
  if (v40 >= v39 >> 1)
  {
    sub_1DD2BBBC0(v39 > 1, v40 + 1, 1, v0);
    v0 = v65;
  }

  v70 = v35;
  v71 = &protocol witness table for RRVoiceShortcutClientPuller;
  *&v69 = v38;
  *(v0 + 16) = v40 + 1;
  sub_1DD289CE4(&v69, v0 + 40 * v40 + 32);
  sub_1DD28191C(&unk_1EE02A6F0, &v69);
  v41 = v70;
  v42 = v71;
  __swift_project_boxed_opaque_existential_1(&v69, v70);
  v43 = (v42[6])(v41, v42);
  __swift_destroy_boxed_opaque_existential_1(&v69);
  if ((v43 & 1) == 0 || (sub_1DD28191C(&unk_1EE02A6F0, &v69), v44 = v70, v45 = v71, __swift_project_boxed_opaque_existential_1(&v69, v70), v46 = (v45[7])(v44, v45), __swift_destroy_boxed_opaque_existential_1(&v69), (v46 & 1) == 0))
  {
    type metadata accessor for RRLNService();
    swift_allocObject();
    v47 = type metadata accessor for RROnScreenAppEntityPuller();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    v50 = swift_allocObject();
    v51 = sub_1DD335860();
    v52 = sub_1DD30B3E8(v51, v50);
    v54 = *(v0 + 16);
    v53 = *(v0 + 24);
    if (v54 >= v53 >> 1)
    {
      sub_1DD2BBBC0(v53 > 1, v54 + 1, 1, v0);
      v0 = v66;
    }

    v70 = v47;
    v71 = &protocol witness table for RROnScreenAppEntityPuller;
    *&v69 = v52;
    *(v0 + 16) = v54 + 1;
    sub_1DD289CE4(&v69, v0 + 40 * v54 + 32);
  }

  if (AFDeviceSupportsSAE())
  {
    v55 = type metadata accessor for RRIntelligenceFlowPuller();
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();
    v58 = sub_1DD2CFE8C();
    v60 = *(v0 + 16);
    v59 = *(v0 + 24);
    if (v60 >= v59 >> 1)
    {
      sub_1DD2BBBC0(v59 > 1, v60 + 1, 1, v0);
      v0 = v68;
    }

    v70 = v55;
    v71 = &off_1F589B6C0;
    *&v69 = v58;
    *(v0 + 16) = v60 + 1;
    sub_1DD289CE4(&v69, v0 + 40 * v60 + 32);
  }

  return v0;
}

uint64_t SiriReferenceResolutionService.__allocating_init(storage:ranker:pullers:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SiriReferenceResolutionService.init(storage:ranker:pullers:)();
  return v3;
}

void SiriReferenceResolutionService.init(storage:ranker:pullers:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1DD3363C0();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v53 = v10;
  v54 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_2();
  v51 = v13;
  OUTLINED_FUNCTION_31_1();
  v52 = sub_1DD336400();
  v14 = OUTLINED_FUNCTION_1_0(v52);
  v50 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  v20 = v19 - v18;
  v21 = sub_1DD3363D0();
  v22 = OUTLINED_FUNCTION_1_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_12();
  v29 = v28 - v27;
  v55[0] = type metadata accessor for SiriReferenceResolutionService();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD68E8, &unk_1DD339F60);
  sub_1DD336630();
  sub_1DD335CC0();
  sub_1DD334880();
  sub_1DD334880();
  sub_1DD28191C(v7, v1 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage);
  sub_1DD28191C(v5, v1 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_ranker);
  *(v1 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_pullers) = v3;
  v30 = [objc_opt_self() processInfo];
  v31 = [v30 processName];

  v32 = sub_1DD3365D0();
  v34 = v33;

  if (v32 == 0x6E61747369737361 && v34 == 0xEA00000000006474)
  {

    goto LABEL_8;
  }

  v36 = sub_1DD336E00();

  if (v36)
  {
LABEL_8:
    sub_1DD27D80C(0, &qword_1EE028598, 0x1E69E9610);
    (*(v24 + 104))(v29, *MEMORY[0x1E69E7F98], v21);
    v37 = sub_1DD336A20();
    v38 = *(v24 + 8);
    v39 = OUTLINED_FUNCTION_77();
    v40(v39);
    v55[4] = sub_1DD300FB4;
    v55[5] = v1;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 1107296256;
    OUTLINED_FUNCTION_24_5();
    v55[2] = v41;
    v55[3] = &block_descriptor_7;
    v42 = _Block_copy(v55);
    sub_1DD335860();
    sub_1DD3363E0();
    OUTLINED_FUNCTION_1_8();
    sub_1DD30B5E4(v43, v44);
    v45 = OUTLINED_FUNCTION_51_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(v45, v46);
    sub_1DD27F454(&qword_1EE027ED0, &qword_1ECCD6710, &qword_1DD339620);
    sub_1DD336B10();
    v47 = OUTLINED_FUNCTION_66_5();
    MEMORY[0x1E12AC840](v47);
    _Block_release(v42);

    (*(v53 + 8))(v51, v54);
    (*(v50 + 8))(v20, v52);
  }

  if (qword_1EE0283B0 != -1)
  {
    swift_once();
  }

  v48 = *(qword_1EE02A360 + 16);
  if (v48)
  {
    v49 = qword_1EE02A360 + 32;
    do
    {
      sub_1DD28191C(v49, v55);
      sub_1DD3357E0();
      __swift_destroy_boxed_opaque_existential_1(v55);
      v49 += 40;
      --v48;
    }

    while (v48);
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_24_1();
}

void sub_1DD300E44()
{
  v0 = sub_1DD335CB0();
  v1 = sub_1DD336930();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v10 = v3;
    *v2 = 136315138;
    v4 = [objc_opt_self() processInfo];
    v5 = [v4 processName];

    v6 = sub_1DD3365D0();
    v8 = v7;

    v9 = sub_1DD27DBF0(v6, v8, &v10);

    *(v2 + 4) = v9;
    _os_log_impl(&dword_1DD27A000, v0, v1, "Start the background job to evict non-salient entities periodically in process %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x1E12ADA30](v3, -1, -1);
    MEMORY[0x1E12ADA30](v2, -1, -1);
  }

  sub_1DD30852C(86400.0);
}

void sub_1DD300FBC()
{
  type metadata accessor for SiriReferenceResolutionService();
  sub_1DD2FFFD8();
  qword_1EE02A6E8 = v0;
}

uint64_t sub_1DD300FF0()
{
  v0 = sub_1DD335CD0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = type metadata accessor for SiriReferenceResolutionService();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD68E8, &unk_1DD339F60);
  sub_1DD336630();
  sub_1DD335CC0();
  v5 = sub_1DD335CB0();
  v6 = sub_1DD336960();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DD27A000, v5, v6, "Failed to initialize SRR service. Retrying initialization", v7, 2u);
    MEMORY[0x1E12ADA30](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  if (qword_1EE029480 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE02A6E8;
  if (!qword_1EE02A6E8)
  {
    sub_1DD2FFFD8();
  }

  qword_1EE02A6E8 = v8;
  sub_1DD335860();
}

uint64_t sub_1DD3011EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1DD30123C()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v128 = sub_1DD335D10();
  v3 = OUTLINED_FUNCTION_1_0(v128);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_2();
  v125 = v8;
  OUTLINED_FUNCTION_31_1();
  v9 = sub_1DD335CA0();
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v17 = v16 - v15;
  v18 = sub_1DD336170();
  v19 = OUTLINED_FUNCTION_1_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6();
  v115 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_35();
  v114 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v112 - v28;
  v30 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_logger;
  OUTLINED_FUNCTION_97_2();
  v118 = v31;
  v119 = v2;
  v117 = v32;
  v32(v29, v2, v18);
  v126 = v0;
  v124 = v30;
  v33 = sub_1DD335CB0();
  v34 = sub_1DD336930();
  v35 = os_log_type_enabled(v33, v34);
  v121 = v21;
  v122 = v18;
  if (v35)
  {
    v36 = OUTLINED_FUNCTION_50();
    v123 = v9;
    v37 = v36;
    v38 = OUTLINED_FUNCTION_31_0();
    v116 = v12;
    v39 = v38;
    v129[0] = v38;
    *v37 = 136315138;
    OUTLINED_FUNCTION_6_9();
    sub_1DD30B5E4(v40, v41);
    v42 = sub_1DD336DC0();
    v120 = *(v21 + 8);
    v120(v29, v18);
    v43 = OUTLINED_FUNCTION_41();
    sub_1DD27DBF0(v43, v44, v45);
    OUTLINED_FUNCTION_45_5();

    *(v37 + 4) = v42;
    _os_log_impl(&dword_1DD27A000, v33, v34, "Resolve with query: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v12 = v116;
    OUTLINED_FUNCTION_54();
    v9 = v123;
    OUTLINED_FUNCTION_54();
  }

  else
  {

    v120 = *(v21 + 8);
    v120(v29, v18);
  }

  v46 = v125;
  if (qword_1EE027DB0 != -1)
  {
    OUTLINED_FUNCTION_12_8();
  }

  v47 = qword_1EE02A268;
  sub_1DD335C90();
  sub_1DD336A40();
  v48 = qword_1EE02A268;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_34_6();
  sub_1DD335C70();

  sub_1DD307680();
  v49 = sub_1DD335950();
  OUTLINED_FUNCTION_59(v49);
  swift_allocObject();
  OUTLINED_FUNCTION_32_0();
  v50 = sub_1DD335940();
  v51 = v119;
  v52 = sub_1DD335930();
  v127 = v52;
  v113 = v17;
  if (v53)
  {
    v54 = v115;
    v55 = v122;
    v117(v115, v51, v122);
    v56 = v52;
    v57 = OUTLINED_FUNCTION_101_1();
    v58 = sub_1DD336950();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = OUTLINED_FUNCTION_50();
      v112 = v50;
      v60 = v59;
      v61 = v12;
      v62 = OUTLINED_FUNCTION_31_0();
      v129[0] = v62;
      *v60 = 136315138;
      OUTLINED_FUNCTION_6_9();
      sub_1DD30B5E4(v63, v64);
      v65 = sub_1DD336DC0();
      v67 = v66;
      OUTLINED_FUNCTION_105_1();
      v68();
      v69 = sub_1DD27DBF0(v65, v67, v129);

      *(v60 + 4) = v69;
      OUTLINED_FUNCTION_93_1();
      _os_log_impl(v70, v71, v72, v73, v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      v12 = v61;
      v75 = v127;
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_52_0();

      sub_1DD2BED74(v75, 1);
    }

    else
    {

      sub_1DD2BED74(v52, 1);
      OUTLINED_FUNCTION_105_1();
      v90(v54, v55);
    }

    v91 = v113;
LABEL_27:
    sub_1DD336A30();
    v111 = qword_1EE02A268;
    sub_1DD335C80();

    (*(v12 + 8))(v91, v9);
    OUTLINED_FUNCTION_24_1();
    return;
  }

  v112 = v50;
  v116 = v12;
  v76 = OUTLINED_FUNCTION_112();
  (v117)(v76);
  v77 = OUTLINED_FUNCTION_101_1();
  sub_1DD336940();
  OUTLINED_FUNCTION_90_3();
  v79 = os_log_type_enabled(v77, v78);
  v123 = v9;
  if (v79)
  {
    v80 = OUTLINED_FUNCTION_50();
    v81 = OUTLINED_FUNCTION_31_0();
    v129[0] = v81;
    *v80 = 136315138;
    OUTLINED_FUNCTION_6_9();
    sub_1DD30B5E4(v82, v83);
    LODWORD(v119) = v50;
    v84 = sub_1DD336DC0();
    OUTLINED_FUNCTION_105_1();
    v85 = OUTLINED_FUNCTION_112();
    v86(v85);
    v87 = OUTLINED_FUNCTION_41();
    sub_1DD27DBF0(v87, v88, v89);
    OUTLINED_FUNCTION_45_5();

    *(v80 + 4) = v84;
    _os_log_impl(&dword_1DD27A000, v77, v119, "Successfully resolved query: %s ", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v81);
    v9 = v123;
    v52 = v127;
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_39_7();
  }

  else
  {

    OUTLINED_FUNCTION_105_1();
    v92 = OUTLINED_FUNCTION_112();
    v93(v92);
  }

  v94 = sub_1DD287354();
  v95 = MEMORY[0x1E69E7CC0];
  if (!v94)
  {
LABEL_24:

    v104 = OUTLINED_FUNCTION_101_1();
    v105 = sub_1DD336930();

    if (os_log_type_enabled(v104, v105))
    {
      OUTLINED_FUNCTION_50();
      v106 = OUTLINED_FUNCTION_49_5();
      v129[0] = v106;
      *v77 = 136315138;
      v107 = MEMORY[0x1E12AC670](v95, v128);
      v109 = sub_1DD27DBF0(v107, v108, v129);

      *(v77 + 4) = v109;
      OUTLINED_FUNCTION_31_7(&dword_1DD27A000, v110, v105, "Resolved SRR entities: %s");
      __swift_destroy_boxed_opaque_existential_1(v106);
      OUTLINED_FUNCTION_17_5();
      OUTLINED_FUNCTION_15_9();
    }

    sub_1DD2BED74(v52, 0);
    v12 = v116;
    v91 = v113;
    goto LABEL_27;
  }

  v77 = v94;
  v129[0] = MEMORY[0x1E69E7CC0];
  sub_1DD2D7A78();
  if ((v77 & 0x8000000000000000) == 0)
  {
    v96 = 0;
    v95 = v129[0];
    v97 = v52 & 0xC000000000000001;
    do
    {
      if (v97)
      {
        v98 = MEMORY[0x1E12ACA60](v96, v52);
      }

      else
      {
        v98 = *(v52 + 8 * v96 + 32);
      }

      v99 = v98;
      sub_1DD335F60();

      v129[0] = v95;
      v101 = *(v95 + 16);
      v100 = *(v95 + 24);
      if (v101 >= v100 >> 1)
      {
        OUTLINED_FUNCTION_45(v100);
        sub_1DD2D7A78();
        v95 = v129[0];
      }

      ++v96;
      *(v95 + 16) = v101 + 1;
      v102 = *(v5 + 80);
      OUTLINED_FUNCTION_22_8();
      (*(v5 + 32))(v95 + v103 + *(v5 + 72) * v101, v46, v128);
      v52 = v127;
    }

    while (v77 != v96);
    v9 = v123;
    goto LABEL_24;
  }

  __break(1u);
}

void sub_1DD301B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_8_4();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v426 = v27;
  v29 = v28;
  v31 = v30;
  v405 = *v22;
  v393 = sub_1DD335D10();
  v32 = OUTLINED_FUNCTION_1_0(v393);
  v423 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_50_0(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  OUTLINED_FUNCTION_36(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_6_1(v384 - v42);
  v397 = sub_1DD334E50();
  v43 = OUTLINED_FUNCTION_1_0(v397);
  v400 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_50_0(v47);
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6ED8, &qword_1DD33ABB8);
  OUTLINED_FUNCTION_1(v396);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_50_0(v384 - v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6EE0, &unk_1DD33ABC0);
  v53 = OUTLINED_FUNCTION_36(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_6_1(v58);
  v419 = sub_1DD336250();
  v59 = OUTLINED_FUNCTION_1_0(v419);
  v417 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_6_1(v67);
  v401 = sub_1DD336120();
  v68 = OUTLINED_FUNCTION_1_0(v401);
  v404 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_6_1(v73);
  v415 = sub_1DD3363C0();
  v74 = OUTLINED_FUNCTION_1_0(v415);
  v414 = v75;
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_6_1(v78);
  v413 = sub_1DD336400();
  v79 = OUTLINED_FUNCTION_1_0(v413);
  v412 = v80;
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_6_1(v83);
  v411 = sub_1DD3363D0();
  v84 = OUTLINED_FUNCTION_1_0(v411);
  v410 = v85;
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_6_1(v88);
  v89 = sub_1DD335CA0();
  v90 = OUTLINED_FUNCTION_1_0(v89);
  v424 = v91;
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_12();
  v96 = v95 - v94;
  v421 = v26;
  if (v26)
  {
    v97 = 0x6E69766C6F736552;
  }

  else
  {
    v97 = 0x6976656972746552;
  }

  if (v26)
  {
    v98 = 0xE900000000000067;
  }

  else
  {
    v98 = 0xEA0000000000676ELL;
  }

  v99 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_logger;

  sub_1DD335860();
  v420 = v99;
  v100 = sub_1DD335CB0();
  v101 = sub_1DD336930();

  v102 = os_log_type_enabled(v100, v101);
  v425 = v29;
  v427 = v98;
  v398 = v97;
  if (v102)
  {
    v103 = OUTLINED_FUNCTION_50_2();
    v418 = v31;
    v104 = v103;
    v105 = OUTLINED_FUNCTION_49_1();
    v422 = v89;
    v430 = v105;
    *v104 = 136315394;
    *(v104 + 4) = sub_1DD27DBF0(v97, v98, &v430);
    *(v104 + 12) = 2080;
    v428 = v29;
    sub_1DD335DE0();
    v106 = v96;
    OUTLINED_FUNCTION_7_8();
    sub_1DD30B5E4(v107, v108);
    v109 = sub_1DD336DC0();
    v111 = OUTLINED_FUNCTION_124_1(v109, v110);

    *(v104 + 14) = v111;
    v96 = v106;
    v112 = v22;
    _os_log_impl(&dword_1DD27A000, v100, v101, "%s with query: %s", v104, 0x16u);
    swift_arrayDestroy();
    v89 = v422;
    OUTLINED_FUNCTION_54();
    v31 = v418;
    OUTLINED_FUNCTION_54();
  }

  else
  {

    v112 = v22;
  }

  if (qword_1EE027DB0 != -1)
  {
    OUTLINED_FUNCTION_12_8();
  }

  v113 = qword_1EE02A268;
  sub_1DD335C90();
  sub_1DD336A40();
  v114 = qword_1EE02A268;
  v115 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_34_6();
  sub_1DD335C70();

  sub_1DD307680();
  v422 = v89;
  sub_1DD307A70();
  v117 = v116;

  v118 = sub_1DD335950();
  OUTLINED_FUNCTION_59(v118);
  swift_allocObject();

  v384[3] = v117;
  v384[1] = sub_1DD335940();
  v119 = sub_1DD335920();
  LODWORD(v385) = v120;
  sub_1DD335DC0();
  sub_1DD3356E0();
  OUTLINED_FUNCTION_12_7();

  v121 = sub_1DD2AAF5C(0x746E6175516F7375, 0xED00007265696669, v89);

  v384[2] = v96;
  if (v121)
  {
    if (sub_1DD287354())
    {
      sub_1DD2A34A0(0, (v121 & 0xC000000000000001) == 0, v121);
      if ((v121 & 0xC000000000000001) != 0)
      {
LABEL_130:
        MEMORY[0x1E12ACA60](0, v121);
      }

      else
      {
        v122 = *(v121 + 32);
        sub_1DD335860();
      }

      sub_1DD3356C0();
      OUTLINED_FUNCTION_126();
    }

    else
    {
    }
  }

  sub_1DD334E60();
  sub_1DD334DC0();

  v386 = v430;
  v123 = &unk_1EE029000;
  v426 = v119;
  if (v421)
  {
    if (qword_1EE029490 != -1)
    {
LABEL_127:
      OUTLINED_FUNCTION_2_4();
    }

    sub_1DD28191C(&unk_1EE02A6F0, &v430);
    v124 = v434;
    __swift_project_boxed_opaque_existential_1(&v430, v433);
    v125 = *(v124 + 1);
    v126 = OUTLINED_FUNCTION_32_0();
    v128 = v127(v126, v124);
    __swift_destroy_boxed_opaque_existential_1(&v430);
    v123 = &unk_1EE029000;
    if (v128)
    {
      v129 = mach_absolute_time();
      sub_1DD27D80C(0, &qword_1EE028598, 0x1E69E9610);
      v130 = *MEMORY[0x1E69E7FA0];
      OUTLINED_FUNCTION_84_4(&v436);
      v132 = *(v131 + 104);
      v133 = v409;
      OUTLINED_FUNCTION_106_1();
      v134();
      v384[0] = sub_1DD336A20();
      (*(v115 + 8))(v133, v128);
      OUTLINED_FUNCTION_83();
      v135 = swift_allocObject();
      v136 = v425;
      v135[2] = v112;
      v135[3] = v136;
      v135[4] = v129;
      v434 = sub_1DD30AAC8;
      v435 = v135;
      v430 = MEMORY[0x1E69E9820];
      v431 = 1107296256;
      v432 = sub_1DD2811BC;
      v433 = &block_descriptor_24;
      v137 = _Block_copy(&v430);
      sub_1DD335860();
      sub_1DD335860();
      OUTLINED_FUNCTION_84_4(&v437);
      sub_1DD3363E0();
      v428 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_1_8();
      sub_1DD30B5E4(v138, v139);
      v140 = OUTLINED_FUNCTION_51_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(v140, v141);
      sub_1DD27F454(&qword_1EE027ED0, &qword_1ECCD6710, &qword_1DD339620);
      OUTLINED_FUNCTION_68_4();
      v119 = v426;
      v142 = v415;
      sub_1DD336B10();
      v143 = OUTLINED_FUNCTION_78_2();
      v144 = v384[0];
      MEMORY[0x1E12AC840](v143);
      v123 = &unk_1EE029000;
      _Block_release(v137);

      (*(v414 + 8))(&qword_1DD339620, v142);
      v145 = v115;
      v115 = MEMORY[0x1E69E7CC0];
      (*(v412 + 8))(v145, v413);
    }
  }

  if (v385)
  {

    OUTLINED_FUNCTION_98_2();
    v146 = v119;
    v147 = v425;
    if (v421)
    {
      if (v123[146] != -1)
      {
        OUTLINED_FUNCTION_2_4();
      }

      sub_1DD28191C(&unk_1EE02A6F0, &v430);
      v148 = v434;
      __swift_project_boxed_opaque_existential_1(&v430, v433);
      v149 = *(v148 + 1);
      v150 = OUTLINED_FUNCTION_32_0();
      v152 = v151(v150, v148);
      __swift_destroy_boxed_opaque_existential_1(&v430);
      if (v152)
      {
        v153 = mach_absolute_time();
        sub_1DD27D80C(0, &qword_1EE028598, 0x1E69E9610);
        v154 = *MEMORY[0x1E69E7FA0];
        v155 = v410;
        v156 = *(v410 + 104);
        v157 = v115;
        v158 = v409;
        OUTLINED_FUNCTION_106_1();
        v159();
        v427 = sub_1DD336A20();
        v160 = *(v155 + 8);
        v161 = OUTLINED_FUNCTION_87_2();
        v162(v161);
        OUTLINED_FUNCTION_83();
        v163 = swift_allocObject();
        v163[2] = v112;
        v163[3] = v119;
        v163[4] = v153;
        v434 = sub_1DD30AA60;
        v435 = v163;
        v430 = MEMORY[0x1E69E9820];
        v431 = 1107296256;
        v432 = sub_1DD2811BC;
        v433 = &block_descriptor_12;
        v164 = _Block_copy(&v430);
        sub_1DD335860();
        v165 = OUTLINED_FUNCTION_88_3();
        sub_1DD2E059C(v165, v166);
        OUTLINED_FUNCTION_84_4(&v437);
        sub_1DD3363E0();
        v428 = v157;
        OUTLINED_FUNCTION_1_8();
        sub_1DD30B5E4(v167, v168);
        v169 = OUTLINED_FUNCTION_41();
        __swift_instantiateConcreteTypeFromMangledNameV2(v169, v170);
        OUTLINED_FUNCTION_83_1();
        sub_1DD27F454(v171, v172, v173);
        OUTLINED_FUNCTION_68_4();
        v147 = v425;
        OUTLINED_FUNCTION_100_1();
        v174 = OUTLINED_FUNCTION_78_2();
        v175 = v427;
        MEMORY[0x1E12AC840](v174);
        _Block_release(v164);

        OUTLINED_FUNCTION_21(&a12);
        v176(v31, &qword_1DD339620);
        OUTLINED_FUNCTION_21(&a10);
        v177(v158, v413);
      }
    }

    sub_1DD335860();
    v178 = OUTLINED_FUNCTION_88_3();
    sub_1DD2E059C(v178, v179);
    v180 = sub_1DD335CB0();
    v181 = sub_1DD336950();

    v182 = OUTLINED_FUNCTION_88_3();
    sub_1DD2BED74(v182, v183);
    if (os_log_type_enabled(v180, v181))
    {
      v184 = OUTLINED_FUNCTION_50_2();
      v430 = OUTLINED_FUNCTION_49_1();
      *v184 = 136315394;
      v428 = v147;
      v185 = sub_1DD335DE0();
      OUTLINED_FUNCTION_7_8();
      sub_1DD30B5E4(v186, v187);
      v188 = sub_1DD336DC0();
      OUTLINED_FUNCTION_124_1(v188, v189);
      OUTLINED_FUNCTION_12_7();

      *(v184 + 4) = v185;
      *(v184 + 12) = 2080;
      swift_getErrorValue();
      v190 = sub_1DD336E40();
      OUTLINED_FUNCTION_124_1(v190, v191);
      OUTLINED_FUNCTION_12_7();

      *(v184 + 14) = v185;
      OUTLINED_FUNCTION_93_1();
      _os_log_impl(v192, v193, v194, v195, v196, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_52_0();
    }

    v197 = OUTLINED_FUNCTION_88_3();
    sub_1DD2BED74(v197, v198);
    OUTLINED_FUNCTION_35_7();
    *v31 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD68F8, "6_");
    swift_storeEnumTagMultiPayload();
    v199 = &unk_1EE02A000;
    goto LABEL_120;
  }

  v200 = v425;
  sub_1DD335860();
  sub_1DD2E059C(v119, 0);
  v201 = sub_1DD335CB0();
  v202 = sub_1DD336940();

  if (os_log_type_enabled(v201, v202))
  {
    v203 = OUTLINED_FUNCTION_50();
    v204 = v31;
    v205 = OUTLINED_FUNCTION_31_0();
    v430 = v205;
    *v203 = 136315138;
    v428 = v200;
    sub_1DD335DE0();
    OUTLINED_FUNCTION_7_8();
    sub_1DD30B5E4(v206, v207);
    v208 = sub_1DD336DC0();
    v210 = OUTLINED_FUNCTION_124_1(v208, v209);

    *(v203 + 4) = v210;
    _os_log_impl(&dword_1DD27A000, v201, v202, "Successfully queried: %s", v203, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v205);
    v31 = v204;
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_17_5();
  }

  v211 = v419;
  v212 = v406;
  v213 = v408;
  v214 = v407;
  v385 = swift_allocBox();
  v216 = v215;
  v119 = v426;
  v217 = sub_1DD287354();
  v218 = MEMORY[0x1E69D28D8];
  v418 = v31;
  v384[0] = v216;
  if (v217 != 1)
  {
    if (!v217)
    {
      v219 = v112;
      OUTLINED_FUNCTION_98_2();
      v220 = *MEMORY[0x1E69D2988];
      v221 = *(v417 + 104);
      v222 = v216;
LABEL_37:
      v223 = v211;
      goto LABEL_38;
    }

    v406 = v217;
    if (v386)
    {
      sub_1DD335860();
      sub_1DD334E40();

      v238 = v397;
    }

    else
    {
      v238 = v397;
      __swift_storeEnumTagSinglePayload(v213, 1, 1, v397);
    }

    (*(v400 + 104))(v214, *MEMORY[0x1E69D1D00], v238);
    OUTLINED_FUNCTION_66_0();
    __swift_storeEnumTagSinglePayload(v245, v246, v247, v238);
    v248 = *(v396 + 48);
    v249 = OUTLINED_FUNCTION_115_1();
    sub_1DD27F164(v249, v212, &qword_1ECCD6EE0, &unk_1DD33ABC0);
    sub_1DD27F164(v214, v212 + v248, &qword_1ECCD6EE0, &unk_1DD33ABC0);
    OUTLINED_FUNCTION_122_1(v212);
    if (v251)
    {
      sub_1DD296084(v214, &qword_1ECCD6EE0, &unk_1DD33ABC0);
      v250 = OUTLINED_FUNCTION_115_1();
      sub_1DD296084(v250, &qword_1ECCD6EE0, &unk_1DD33ABC0);
      OUTLINED_FUNCTION_122_1(v212 + v248);
      v115 = MEMORY[0x1E69E7CC0];
      if (v251)
      {
        sub_1DD296084(v212, &qword_1ECCD6EE0, &unk_1DD33ABC0);
        goto LABEL_72;
      }
    }

    else
    {
      sub_1DD27F164(v212, v394, &qword_1ECCD6EE0, &unk_1DD33ABC0);
      OUTLINED_FUNCTION_122_1(v212 + v248);
      v115 = MEMORY[0x1E69E7CC0];
      if (!v251)
      {
        v276 = v400;
        v277 = v212 + v248;
        v278 = v390;
        (*(v400 + 32))(v390, v277, v238);
        sub_1DD30B5E4(&qword_1ECCD6EE8, MEMORY[0x1E69D1D18]);
        OUTLINED_FUNCTION_41();
        LODWORD(v397) = sub_1DD336590();
        v279 = *(v276 + 8);
        v279(v278, v238);
        OUTLINED_FUNCTION_83_1();
        sub_1DD296084(v280, v281, v282);
        OUTLINED_FUNCTION_115_1();
        OUTLINED_FUNCTION_83_1();
        sub_1DD296084(v283, v284, v285);
        v279(v394, v238);
        v119 = v426;
        OUTLINED_FUNCTION_83_1();
        sub_1DD296084(v286, v287, v288);
        if (v397)
        {
LABEL_72:
          v425 = v112;
          v121 = sub_1DD287354();
          v289 = 0;
          v290 = v119 & 0xC000000000000001;
          v31 = (v119 & 0xFFFFFFFFFFFFFF8);
          v119 = &qword_1ECCD6350;
          v112 = &unk_1DD3396F0;
          while (1)
          {
            if (v121 == v289)
            {
              v295 = 0;
              v112 = v425;
              v119 = v426;
              while (v121 != v295)
              {
                if (v290)
                {
                  v296 = MEMORY[0x1E12ACA60](v295, v119);
                }

                else
                {
                  if (v295 >= v31[2])
                  {
                    goto LABEL_129;
                  }

                  v296 = *(v119 + 8 * v295 + 32);
                }

                v297 = v296;
                if (__OFADD__(v295, 1))
                {
                  __break(1u);
LABEL_129:
                  __break(1u);
                  goto LABEL_130;
                }

                v430 = v296;
                v298 = sub_1DD303E84(&v430, v119);

                if ((v298 & 1) == 0)
                {
                  v219 = v112;
                  OUTLINED_FUNCTION_98_2();
                  goto LABEL_103;
                }

                ++v295;
              }

              OUTLINED_FUNCTION_98_2();
              v430 = v115;
              OUTLINED_FUNCTION_80_2();
              if (v121 < 0)
              {
                __break(1u);
              }

              else
              {
                v299 = v393;
                v300 = v388;
                if (v121)
                {
                  v301 = 0;
                  v302 = v430;
                  do
                  {
                    if (v290)
                    {
                      v303 = OUTLINED_FUNCTION_94_2();
                      v304 = MEMORY[0x1E12ACA60](v303);
                    }

                    else
                    {
                      v304 = *(v119 + 8 * v301 + 32);
                    }

                    v305 = v304;
                    sub_1DD335F60();

                    v430 = v302;
                    v119 = *(v302 + 16);
                    v306 = *(v302 + 24);
                    v31 = (v119 + 1);
                    if (v119 >= v306 >> 1)
                    {
                      OUTLINED_FUNCTION_45(v306);
                      v305 = &v430;
                      sub_1DD2D7A78();
                      v302 = v430;
                    }

                    ++v301;
                    *(v302 + 16) = v31;
                    OUTLINED_FUNCTION_16_7();
                    (*(v308 + 32))(v302 + v307 + *(v308 + 72) * v119, v300, v299);
                    OUTLINED_FUNCTION_116_1();
                  }

                  while (!v251);
                  v219 = v112;
                  *v387 = v302;
                  v309 = *MEMORY[0x1E69D2970];
                  OUTLINED_FUNCTION_40_8();
                  OUTLINED_FUNCTION_106_1();
                  v310();
                  v311 = OUTLINED_FUNCTION_38_7(v305);
                  v312(v311);
                  goto LABEL_39;
                }
              }

              __break(1u);
              return;
            }

            if (v290)
            {
              v291 = MEMORY[0x1E12ACA60](v289, v426);
            }

            else
            {
              if (v289 >= v31[2])
              {
                goto LABEL_126;
              }

              v291 = v426[v289 + 4];
            }

            v292 = v291;
            if (__OFADD__(v289, 1))
            {
              __break(1u);
LABEL_126:
              __break(1u);
              goto LABEL_127;
            }

            v293 = v416;
            sub_1DD336040();

            v294 = sub_1DD335E60();
            if (__swift_getEnumTagSinglePayload(v293, 1, v294) == 1)
            {
              break;
            }

            sub_1DD296084(v293, &qword_1ECCD6350, &unk_1DD3396F0);
            ++v289;
          }

          OUTLINED_FUNCTION_98_2();
          sub_1DD296084(v293, &qword_1ECCD6350, &unk_1DD3396F0);
          v219 = v425;
          v119 = v426;
LABEL_103:
          v313 = *MEMORY[0x1E69D2988];
          v222 = OUTLINED_FUNCTION_17_10();
LABEL_38:
          v221(v222, v220, v223);
LABEL_39:
          v224 = v405;
          goto LABEL_116;
        }

LABEL_61:
        OUTLINED_FUNCTION_98_2();
        OUTLINED_FUNCTION_120_0();
        v255 = v404;
        v31 = v112;
        v256 = v402;
        v257 = v401;
        v258 = *(v404 + 104);
        v258(v402, *MEMORY[0x1E69D28D8], v401);
        v259 = sub_1DD336110();
        v260 = *(v255 + 8);
        v260(v256, v257);
        v261 = OUTLINED_FUNCTION_111_1();
        v404 = v255 + 8;
        (v260)(v261);
        if ((v259 & 1) == 0)
        {
          goto LABEL_66;
        }

        OUTLINED_FUNCTION_59_3();
        if ((v119 & 0xC000000000000001) != 0)
        {
          goto LABEL_134;
        }

        for (i = *(v119 + 32); ; i = MEMORY[0x1E12ACA60](v382))
        {
          v263 = i;
          sub_1DD336050();
          v265 = v264;

          if (v265 < 0.04)
          {
            v219 = v31;
            v266 = *MEMORY[0x1E69D2988];
            v222 = OUTLINED_FUNCTION_17_10();
            v223 = v419;
            goto LABEL_38;
          }

LABEL_66:
          OUTLINED_FUNCTION_120_0();
          v267 = v402;
          v258(v402, *MEMORY[0x1E69D28E0], v257);
          v268 = sub_1DD336110();
          v260(v267, v257);
          v269 = OUTLINED_FUNCTION_111_1();
          (v260)(v269);
          v270 = MEMORY[0x1E69E7CC0];
          if ((v268 & 1) == 0)
          {
            v260 = (v119 & 0xC000000000000001);
            OUTLINED_FUNCTION_59_3();
            if ((v119 & 0xC000000000000001) != 0)
            {
              v383 = OUTLINED_FUNCTION_66_5();
              v271 = MEMORY[0x1E12ACA60](v383);
            }

            else
            {
              v271 = *(v119 + 32);
            }

            v272 = v271;
            v268 = v260 == 0;
            sub_1DD336050();
            v274 = v273;

            sub_1DD2A34A0(1, v268, v119);
            v275 = v260 ? MEMORY[0x1E12ACA60](1, v119) : *(v119 + 40);
            v314 = v275;
            sub_1DD336050();
            v316 = v315;

            if (vabdd_f64(v274, v316) >= 0.001)
            {
              v219 = v31;
              if (v260)
              {
                v373 = OUTLINED_FUNCTION_66_5();
                v374 = MEMORY[0x1E12ACA60](v373);
              }

              else
              {
                v374 = *(v119 + 32);
              }

              v375 = v374;
              v224 = v405;
              v376 = v389;
              sub_1DD335F60();

              v377 = *MEMORY[0x1E69D2968];
              OUTLINED_FUNCTION_40_8();
              v378(v376);
              v379 = v375[4];
              v243 = OUTLINED_FUNCTION_8_7();
              goto LABEL_50;
            }
          }

          v425 = v31;
          v430 = v270;
          OUTLINED_FUNCTION_80_2();
          if ((v268 & 0x8000000000000000) == 0)
          {
            break;
          }

          __break(1u);
LABEL_134:
          v382 = OUTLINED_FUNCTION_66_5();
        }

        v317 = 0;
        v318 = v430;
        v319 = v119 & 0xC000000000000001;
        v320 = v405;
        v321 = v393;
        v31 = v392;
        do
        {
          if (v319)
          {
            v322 = OUTLINED_FUNCTION_94_2();
            v323 = MEMORY[0x1E12ACA60](v322);
          }

          else
          {
            v323 = *(v119 + 8 * v317 + 32);
          }

          v324 = v323;
          sub_1DD335F60();

          v430 = v318;
          v119 = *(v318 + 16);
          v325 = *(v318 + 24);
          if (v119 >= v325 >> 1)
          {
            OUTLINED_FUNCTION_45(v325);
            v324 = &v430;
            sub_1DD2D7A78();
            v318 = v430;
          }

          ++v317;
          *(v318 + 16) = v119 + 1;
          OUTLINED_FUNCTION_16_7();
          (*(v327 + 32))(v318 + v326 + *(v327 + 72) * v119, v31, v321);
          OUTLINED_FUNCTION_116_1();
        }

        while (!v251);
        v219 = v425;
        *v391 = v318;
        v328 = *MEMORY[0x1E69D2978];
        OUTLINED_FUNCTION_40_8();
        OUTLINED_FUNCTION_106_1();
        v329();
        v330 = OUTLINED_FUNCTION_38_7(v324);
        v331(v330);
        v224 = v320;
        goto LABEL_116;
      }

      sub_1DD296084(v407, &qword_1ECCD6EE0, &unk_1DD33ABC0);
      v252 = OUTLINED_FUNCTION_115_1();
      sub_1DD296084(v252, &qword_1ECCD6EE0, &unk_1DD33ABC0);
      OUTLINED_FUNCTION_21(&v429);
      v253 = OUTLINED_FUNCTION_8_7();
      v254(v253);
    }

    sub_1DD296084(v212, &qword_1ECCD6ED8, &qword_1DD33ABB8);
    goto LABEL_61;
  }

  OUTLINED_FUNCTION_98_2();
  v225 = v403;
  sub_1DD335DD0();
  v226 = *v218;
  OUTLINED_FUNCTION_84_4(&v433);
  v31 = v112;
  v228 = v402;
  v229 = v401;
  (*(v227 + 104))(v402);
  v230 = sub_1DD336110();
  v231 = *(v213 + 8);
  v231(v228, v229);
  v231(v225, v229);
  v232 = v119 & 0xC000000000000001;
  if (v230)
  {
    OUTLINED_FUNCTION_59_3();
    if (v232)
    {
      v381 = OUTLINED_FUNCTION_66_5();
      v233 = MEMORY[0x1E12ACA60](v381);
    }

    else
    {
      v233 = *(v119 + 32);
    }

    v234 = v233;
    sub_1DD336050();
    v236 = v235;

    if (v236 < 0.04)
    {
      v219 = v31;
      v237 = *MEMORY[0x1E69D2988];
      v222 = OUTLINED_FUNCTION_17_10();
      goto LABEL_37;
    }
  }

  OUTLINED_FUNCTION_59_3();
  v219 = v31;
  if (v232)
  {
    v380 = OUTLINED_FUNCTION_66_5();
    v239 = MEMORY[0x1E12ACA60](v380);
  }

  else
  {
    v239 = *(v119 + 32);
  }

  v240 = v239;
  v224 = v405;
  v241 = v395;
  sub_1DD335F60();

  v242 = v417;
  (*(v417 + 104))(v241, *MEMORY[0x1E69D2968], v211);
  v243 = OUTLINED_FUNCTION_38_7(v242);
LABEL_50:
  v244(v243);
LABEL_116:
  sub_1DD27D80C(0, &qword_1EE028598, 0x1E69E9610);
  v332 = v410;
  v333 = v409;
  v334 = v411;
  (*(v410 + 104))(v409, *MEMORY[0x1E69E7FA0], v411);
  v425 = sub_1DD336A20();
  (*(v332 + 8))(v333, v334);
  v335 = swift_allocObject();
  *(v335 + 16) = v385;
  *(v335 + 24) = v219;
  *(v335 + 32) = v421 & 1;
  *(v335 + 40) = v119;
  *(v335 + 48) = v224;
  v434 = sub_1DD30AA6C;
  v435 = v335;
  v430 = MEMORY[0x1E69E9820];
  v431 = 1107296256;
  OUTLINED_FUNCTION_24_5();
  v432 = v336;
  v433 = &block_descriptor_18;
  v337 = _Block_copy(&v430);
  sub_1DD335860();
  sub_1DD335860();
  OUTLINED_FUNCTION_84_4(&v437);
  sub_1DD3363E0();
  v428 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_1_8();
  sub_1DD30B5E4(v338, v339);
  v340 = OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(v340, v341);
  OUTLINED_FUNCTION_83_1();
  sub_1DD27F454(v342, v343, v344);
  OUTLINED_FUNCTION_68_4();
  OUTLINED_FUNCTION_100_1();
  v345 = OUTLINED_FUNCTION_78_2();
  v346 = v425;
  MEMORY[0x1E12AC840](v345);
  _Block_release(v337);

  OUTLINED_FUNCTION_21(&a12);
  v347(v31, &qword_1DD339620);
  OUTLINED_FUNCTION_21(&a10);
  v348(v219, v413);

  v349 = v427;

  sub_1DD335860();
  v350 = v219 + v420;
  v351 = sub_1DD335CB0();
  LOBYTE(v337) = sub_1DD336930();

  if (os_log_type_enabled(v351, v337))
  {
    v352 = OUTLINED_FUNCTION_50_2();
    v430 = OUTLINED_FUNCTION_49_1();
    *v352 = 136315394;
    sub_1DD27DBF0(v398, v349, &v430);
    OUTLINED_FUNCTION_45_5();

    *(v352 + 4) = v350;
    *(v352 + 12) = 2080;
    v353 = v384[0];
    OUTLINED_FUNCTION_106();
    swift_beginAccess();
    v354 = v417;
    v355 = *(v417 + 16);
    v356 = v399;
    v357 = OUTLINED_FUNCTION_51_6();
    v358 = v419;
    v359(v357);
    sub_1DD30B5E4(&qword_1EE027A60, MEMORY[0x1E69D2990]);
    sub_1DD336DC0();
    (*(v354 + 8))(v356, v358);
    v360 = OUTLINED_FUNCTION_109_1();
    sub_1DD27DBF0(v360, v361, v362);
    OUTLINED_FUNCTION_45_5();

    *(v352 + 14) = v356;
    OUTLINED_FUNCTION_93_1();
    _os_log_impl(v363, v364, v365, v366, v367, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_9();
    OUTLINED_FUNCTION_52_0();

    sub_1DD2BED74(v426, 0);
    OUTLINED_FUNCTION_35_7();
    v199 = &unk_1EE02A000;
    v368 = v418;
  }

  else
  {

    sub_1DD2BED74(v119, 0);

    OUTLINED_FUNCTION_35_7();
    v199 = &unk_1EE02A000;
    v358 = v419;
    v354 = v417;
    v368 = v418;
    v353 = v384[0];
  }

  OUTLINED_FUNCTION_106();
  swift_beginAccess();
  (*(v354 + 16))(v368, v353, v358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD68F8, "6_");
  swift_storeEnumTagMultiPayload();

LABEL_120:
  sub_1DD336A30();
  v369 = v199[77];
  OUTLINED_FUNCTION_34_6();
  sub_1DD335C80();

  v370 = *(v424 + 8);
  v371 = OUTLINED_FUNCTION_109_1();
  v372(v371);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_1DD303C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DD334890();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23[-v11];
  v13 = sub_1DD335CB0();
  v14 = sub_1DD336940();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DD27A000, v13, v14, "Calling selfLogResolveStarted.", v15, 2u);
    MEMORY[0x1E12ADA30](v15, -1, -1);
  }

  v16 = sub_1DD335DC0();
  v17 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_rrID;
  swift_beginAccess();
  v18 = v6[2];
  v18(v12, a1 + v17, v5);
  v19 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_requestId;
  swift_beginAccess();
  v18(v10, a1 + v19, v5);
  v20 = selfLogResolveStarted(queryUsoEntity:rrID:timeStamp:requestId:)(v16, v12, a3, v10);

  v21 = v6[1];
  v21(v10, v5);
  return (v21)(v12, v5);
}

uint64_t sub_1DD303E84(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *a1;
  sub_1DD336040();
  v12 = sub_1DD335E60();
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
  {
    sub_1DD296084(v10, &qword_1ECCD6350, &unk_1DD3396F0);
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = sub_1DD335E40();
    v14 = v15;
    (*(*(v12 - 8) + 8))(v10, v12);
  }

  sub_1DD2A34A0(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1E12ACA60](0, a2);
  }

  else
  {
    v16 = *(a2 + 32);
  }

  v17 = v16;
  sub_1DD336040();

  if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
  {
    sub_1DD296084(v8, &qword_1ECCD6350, &unk_1DD3396F0);
    if (!v14)
    {
      goto LABEL_19;
    }

LABEL_16:
    v22 = 0;
LABEL_21:

    return v22 & 1;
  }

  v18 = sub_1DD335E40();
  v20 = v19;
  (*(*(v12 - 8) + 8))(v8, v12);
  if (v14)
  {
    if (v20)
    {
      if (v13 == v18 && v14 == v20)
      {

        v22 = 1;
      }

      else
      {
        v22 = sub_1DD336E00();
      }

      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (v20)
  {
    v22 = 0;
    goto LABEL_21;
  }

LABEL_19:
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_1DD3040FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v64 = a4;
  LODWORD(v67) = a3;
  v5 = sub_1DD334890();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v66 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v53 - v10;
  v12 = sub_1DD336250();
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x1EEE9AC00](v12);
  v16 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_projectBox();
  swift_beginAccess();
  v18 = v13[2];
  v61 = v17;
  v60 = v13 + 2;
  v59 = v18;
  v18(v16, v17, v12);
  v19 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_rrID;
  swift_beginAccess();
  v20 = v6[2];
  v58 = v19;
  v57 = v20;
  v20(v11, a2 + v19, v5);
  v21 = sub_1DD334840();
  v23 = v22;
  v24 = v6[1];
  v65 = v5;
  v62 = v6 + 1;
  v56 = v24;
  v24(v11, v5);
  v25 = sub_1DD2BEEB8(v16, v21, v23);

  v26 = v13[1];
  v63 = v12;
  result = v26(v16, v12);
  if (v67)
  {
    if (qword_1EE029490 != -1)
    {
      swift_once();
    }

    sub_1DD28191C(&unk_1EE02A6F0, v70);
    v28 = v71;
    v29 = v72;
    __swift_project_boxed_opaque_existential_1(v70, v71);
    v30 = (*(v29 + 8))(v28, v29);
    result = __swift_destroy_boxed_opaque_existential_1(v70);
    if (v30)
    {
      v67 = mach_absolute_time();
      v31 = v65;
      v32 = v57;
      v57(v11, a2 + v58, v65);
      v33 = v32;
      v34 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_requestId;
      v55 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_requestId;
      swift_beginAccess();
      v33(v66, a2 + v34, v31);
      v69 = a2;
      v53[1] = type metadata accessor for SiriReferenceResolutionService();
      sub_1DD335860();
      v35 = sub_1DD336630();
      v37 = v36;
      v38 = v61;
      swift_beginAccess();
      v39 = v63;
      v59(v16, v38, v63);
      v40 = v66;
      v41 = sub_1DD2C7900(v64, v11, v66, v35, v37, v67);

      v26(v16, v39);
      v42 = v40;
      v43 = v65;
      v54 = v26;
      v44 = v56;
      v56(v40, v65);
      v44(v11, v43);
      v45 = v57;
      v57(v11, a2 + v58, v43);
      v45(v42, a2 + v55, v43);
      v68 = a2;
      sub_1DD335860();
      v46 = sub_1DD336630();
      v48 = v47;
      v49 = v61;
      swift_beginAccess();
      v50 = v63;
      v59(v16, v49, v63);
      v51 = v66;
      v52 = sub_1DD2C8B10(v64, v11, v66, v46, v48, v67);

      v54(v16, v50);
      v44(v51, v43);
      return (v44)(v11, v43);
    }
  }

  return result;
}