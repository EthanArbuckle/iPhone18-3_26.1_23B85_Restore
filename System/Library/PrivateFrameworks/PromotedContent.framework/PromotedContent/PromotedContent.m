void sub_1C1AA3DB8()
{
  sub_1C1AA3EA0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1C1AA3EA0()
{
  if (!qword_1EDE6CDD0)
  {
    sub_1C1B94588();
    v0 = sub_1C1B952D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE6CDD0);
    }
  }
}

uint64_t type metadata accessor for BaseContext()
{
  result = qword_1EDE6CDB8;
  if (!qword_1EDE6CDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1AA3F44()
{
  result = sub_1C1B945F8();
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

id ContentDepiction.__allocating_init(identifier:adjacentPosition:placement:language:locale:searchTerms:keywords:categories:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = objc_allocWithZone(v11);
  v20 = &v19[OBJC_IVAR___APPCContentDepiction_identifier];
  *v20 = a1;
  *(v20 + 1) = a2;
  *&v19[OBJC_IVAR___APPCContentDepiction_adjacentPosition] = a3;
  *&v19[OBJC_IVAR___APPCContentDepiction_placement] = a4;
  v21 = &v19[OBJC_IVAR___APPCContentDepiction_language];
  *v21 = a5;
  *(v21 + 1) = a6;
  v22 = &v19[OBJC_IVAR___APPCContentDepiction_locale];
  *v22 = a7;
  *(v22 + 1) = a8;
  *&v19[OBJC_IVAR___APPCContentDepiction_searchTerms] = a9;
  *&v19[OBJC_IVAR___APPCContentDepiction_keywords] = a10;
  *&v19[OBJC_IVAR___APPCContentDepiction_categories] = a11;
  v25.receiver = v19;
  v25.super_class = v11;
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t sub_1C1AA415C()
{
  result = sub_1C1B945F8();
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

id ContextBuilder.init(maxSize:current:newsContext:requestedAd:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = sub_1C1AA426C(a1, a2, a3, a4, a5, a6);

  swift_unknownObjectRelease();
  return v7;
}

id sub_1C1AA426C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  sub_1C1B945E8();
  v13 = OBJC_IVAR___APPCContextBuilder_current;
  *&v6[OBJC_IVAR___APPCContextBuilder_current] = 0;
  v14 = &v6[OBJC_IVAR___APPCContextBuilder_requestedAd];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR___APPCContextBuilder_newsContext;
  *&v6[OBJC_IVAR___APPCContextBuilder_newsContext] = 0;
  v16 = OBJC_IVAR___APPCContextBuilder_resourceLock;
  *&v6[v16] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v17 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR___APPCContextBuilder_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v18 = &v6[OBJC_IVAR___APPCContextBuilder_maxSize];
  *v18 = a5;
  v18[1] = a6;
  swift_beginAccess();
  v19 = *&v6[v13];
  *&v6[v13] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v6[OBJC_IVAR___APPCContextBuilder_next] = v17;
  swift_beginAccess();
  v20 = *&v6[v15];
  *&v6[v15] = a2;
  v21 = a2;

  swift_beginAccess();
  v22 = *(v14 + 1);
  *v14 = a3;
  *(v14 + 1) = a4;

  v24.receiver = v6;
  v24.super_class = type metadata accessor for ContextBuilder();
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t type metadata accessor for ContextBuilder()
{
  result = qword_1EDE6C278;
  if (!qword_1EDE6C278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1AA447C(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 8 || a1 == 9 || a1 == 10)
    {
      goto LABEL_13;
    }

LABEL_19:
    result = sub_1C1B958C8();
    __break(1u);
    return result;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {

      goto LABEL_14;
    }

    if (a1 != 1)
    {
      goto LABEL_19;
    }
  }

LABEL_13:
  v3 = sub_1C1B95888();

  if ((v3 & 1) == 0)
  {
    v4 = NewsRequestedAdType.rawValue.getter(a1);
    goto LABEL_16;
  }

LABEL_14:
  v4 = 0;
  v5 = 0;
LABEL_16:
  v6 = (v1 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal);
  v7 = *(v1 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal + 8);
  *v6 = v4;
  v6[1] = v5;
}

uint64_t sub_1C1AA4698(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id sub_1C1AA47BC()
{
  v1 = sub_1C1B945F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (v0 + OBJC_IVAR___APPCContextBuilder_maxSize);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = (v0 + OBJC_IVAR___APPCContextBuilder_requestedAd);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v12 = OBJC_IVAR___APPCContextBuilder_current;
  swift_beginAccess();
  v13 = *(v0 + v12);
  v14 = OBJC_IVAR___APPCContextBuilder_next;
  swift_beginAccess();
  v15 = *(v0 + v14);
  v16 = *(v0 + OBJC_IVAR___APPCContextBuilder_resourceLock);
  swift_unknownObjectRetain();

  [v16 lock];
  v17 = OBJC_IVAR___APPCContextBuilder_adjacentInternal;
  swift_beginAccess();
  v18 = *(v0 + v17);

  [v16 unlock];
  v19 = OBJC_IVAR___APPCContextBuilder_newsContext;
  swift_beginAccess();
  v20 = *(v0 + v19);
  objc_allocWithZone(type metadata accessor for Context());
  v21 = v20;
  v22 = sub_1C1AA4BE8(v10, v11, v13, v15, v18, v20, v7, v8);
  v23 = [v22 hash];
  v24 = type metadata accessor for ContextKey();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC15PromotedContent10ContextKey_key] = v23;
  v38.receiver = v25;
  v38.super_class = v24;
  v26 = objc_msgSendSuper2(&v38, sel_init);
  if (qword_1EDE6BC58 != -1)
  {
    swift_once();
  }

  v27 = [qword_1EDE6CE60 objectForKey_];
  if (v27)
  {
    v28 = v27;
    sub_1C1B95138();
    sub_1C1AC53E4();
    v29 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1C1B98E60;
    v31 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v2 + 16))(v5, v28 + v31, v1);
    v32 = sub_1C1B945A8();
    v33 = v1;
    v35 = v34;
    (*(v2 + 8))(v5, v33);
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1C1AA5E7C();
    *(v30 + 32) = v32;
    *(v30 + 40) = v35;
    sub_1C1B94BA8();

    return v28;
  }

  else
  {
    [qword_1EDE6CE60 setObject:v22 forKey:v26];
  }

  return v22;
}

uint64_t sub_1C1AA4BE8(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6, double a7, double a8)
{
  v9 = v8;
  v71 = a6;
  v70 = a5;
  v84 = a3;
  v80 = a2;
  v79 = a1;
  v81 = sub_1C1B945F8();
  v83 = *(v81 - 8);
  v13 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1C1B95168();
  v77 = *(v78 - 8);
  v15 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C1B95148();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C1B94C38();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = OBJC_IVAR___APPCContext_inventoryLock;
  *&v8[v22] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v23 = MEMORY[0x1E69E7CC0];
  *&v8[OBJC_IVAR___APPCContext_inventory] = MEMORY[0x1E69E7CC0];
  v24 = OBJC_IVAR___APPCContext_placeholdersLock;
  *&v8[v24] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v8[OBJC_IVAR___APPCContext_placeholders] = v23;
  *&v8[OBJC_IVAR___APPCContext_lastError] = 0;
  *&v8[OBJC_IVAR___APPCContext_requester] = 0;
  v25 = &v8[OBJC_IVAR___APPCContext_denylistEvaluator];
  *v25 = 0;
  *(v25 + 1) = 0;
  *&v8[OBJC_IVAR___APPCContext_newsContext] = 0;
  *&v8[OBJC_IVAR___APPCContext_appStoreContext] = 0;
  v74 = OBJC_IVAR___APPCContext_contextQueue;
  v73 = sub_1C1AA576C(0, &qword_1EDE6CA10, 0x1E69E9610);
  v72 = "v16@?0@NSArray8";
  if (qword_1EDE6CA90 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v26 = qword_1EDE6CAA0;
    sub_1C1B94C28();
    aBlock[0] = v23;
    sub_1C1AA5A14(&qword_1EDE6CA18, MEMORY[0x1E69E8030]);
    sub_1C1AC1F08(&unk_1EBF09010, &qword_1C1B9FC78);
    v27 = v23;
    sub_1C1AA5A5C(&qword_1EDE6CA38, &unk_1EBF09010, &qword_1C1B9FC78);
    sub_1C1B95318();
    (*(v77 + 104))(v76, *MEMORY[0x1E69E8090], v78);
    *&v9[v74] = sub_1C1B951A8();
    v28 = OBJC_IVAR___APPCContext_prefetchTimestamp;
    v29 = sub_1C1B94588();
    (*(*(v29 - 8) + 56))(&v9[v28], 1, 1, v29);
    v30 = OBJC_IVAR___APPCContext_fetchingLock;
    *&v9[v30] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
    *&v9[OBJC_IVAR___APPCContext_fetching] = v23;
    v31 = OBJC_IVAR___APPCContext_waitingLock;
    *&v9[v31] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
    *&v9[OBJC_IVAR___APPCContext_waiting] = v23;
    v32 = OBJC_IVAR___APPCContext_prefetchLock;
    *&v9[v32] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
    *&v9[OBJC_IVAR___APPCContext_newContentArrivedHandlers] = v23;
    *&v9[OBJC_IVAR___APPCContext_limit] = [objc_opt_self() contextPrefetchLimit];
    *&v9[OBJC_IVAR___APPCBaseContext_adjacentInternal] = v23;
    v33 = &v9[OBJC_IVAR___APPCBaseContext_requestedAd];
    *v33 = 0;
    *(v33 + 1) = 0;
    v34 = v84;
    swift_unknownObjectRetain();
    v35 = v82;
    sub_1C1B945E8();
    v36 = v81;
    (*(v83 + 32))(&v9[OBJC_IVAR___APPCBaseContext_identifier], v35, v81);
    v37 = &v9[OBJC_IVAR___APPCBaseContext_maxSize];
    *v37 = a7;
    v37[1] = a8;
    swift_beginAccess();
    v38 = *(v33 + 1);
    v39 = v80;
    *v33 = v79;
    *(v33 + 1) = v39;

    *&v9[OBJC_IVAR___APPCBaseContext_current] = v34;
    *&v9[OBJC_IVAR___APPCBaseContext_next] = a4;
    if (a4 >> 62)
    {
      break;
    }

    v40 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v40)
    {
      goto LABEL_17;
    }

LABEL_4:
    aBlock[0] = v27;
    swift_unknownObjectRetain();

    sub_1C1B95518();
    if (v40 < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v80 = v9;
    v41 = 0;
    v23 = a4 & 0xC000000000000001;
    while (1)
    {
      v9 = (v41 + 1);
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v23)
      {
        v42 = MEMORY[0x1C6907490](v41, a4);
      }

      else
      {
        if (v41 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v42 = *(a4 + 8 * v41 + 32);
        swift_unknownObjectRetain();
      }

      v86 = v42;
      sub_1C1B35958(&v86, v87);
      swift_unknownObjectRelease();
      sub_1C1B954F8();
      v43 = *(aBlock[0] + 16);
      sub_1C1B95528();
      sub_1C1B95538();
      sub_1C1B95508();
      ++v41;
      if (v9 == v40)
      {

        v44 = aBlock[0];
        v36 = v81;
        v9 = v80;
        v45 = v70;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
  }

  v40 = sub_1C1B953A8();
  if (v40)
  {
    goto LABEL_4;
  }

LABEL_17:
  swift_unknownObjectRetain();
  v44 = MEMORY[0x1E69E7CC0];
  v45 = v70;
LABEL_18:
  aBlock[0] = v44;
  v46 = sub_1C1AA5AB0(v45);

  if (v46)
  {
    sub_1C1AA5BEC(v46);
    v44 = aBlock[0];
  }

  if (v44 >> 62)
  {
    sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
    v47 = sub_1C1B95578();
  }

  else
  {
    sub_1C1B95898();
    v47 = v44;
  }

  *&v9[OBJC_IVAR___APPCBaseContext_adjacent] = v47;
  v48 = type metadata accessor for BaseContext();
  v88.receiver = v9;
  v88.super_class = v48;
  v49 = objc_msgSendSuper2(&v88, sel_init);
  sub_1C1B95118();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v50 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1C1B98E60;
  v52 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v53 = v83;
  v54 = &v49[v52];
  v55 = v82;
  (*(v83 + 16))(v82, v54, v36);
  v56 = sub_1C1B945A8();
  v58 = v57;
  (*(v53 + 8))(v55, v36);
  *(v51 + 56) = MEMORY[0x1E69E6158];
  *(v51 + 64) = sub_1C1AA5E7C();
  *(v51 + 32) = v56;
  *(v51 + 40) = v58;
  sub_1C1B94BA8();

  swift_unknownObjectRelease();
  v59 = v49;
  v60 = v71;
  if (v71)
  {
    [v71 copy];
    sub_1C1B952F8();
    swift_unknownObjectRelease();
    type metadata accessor for NewsSupplementalContext();
    if (swift_dynamicCast())
    {
      v61 = v86;
    }

    else
    {
      v61 = 0;
    }
  }

  else
  {
    v61 = 0;
  }

  v62 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v63 = *&v59[v62];
  *&v59[v62] = v61;

  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = objc_allocWithZone(MEMORY[0x1E698A048]);
  aBlock[4] = sub_1C1B2B814;
  aBlock[5] = v64;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1B2A390;
  aBlock[3] = &unk_1F4152058;
  v66 = _Block_copy(aBlock);

  v67 = [v65 initWithDeliveryBlock_];
  _Block_release(v66);

  swift_unknownObjectRelease();

  v68 = *&v59[OBJC_IVAR___APPCContext_requester];
  *&v59[OBJC_IVAR___APPCContext_requester] = v67;

  return v59;
}

uint64_t sub_1C1AA5734()
{
  MEMORY[0x1C6908300](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1AA576C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1C1AA57B4()
{
  v8 = sub_1C1B95168();
  v0 = *(v8 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00]();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_1C1B95148() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v5 = *(*(sub_1C1B94C38() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v7[1] = sub_1C1AA576C(0, &qword_1EDE6CA10, 0x1E69E9610);
  sub_1C1B94C28();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1C1AA5A14(&qword_1EDE6CA18, MEMORY[0x1E69E8030]);
  sub_1C1AC1F08(&unk_1EBF09010, &qword_1C1B9FC78);
  sub_1C1AA5A5C(&qword_1EDE6CA38, &unk_1EBF09010, &qword_1C1B9FC78);
  sub_1C1B95318();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v8);
  result = sub_1C1B951A8();
  qword_1EDE6CAA0 = result;
  return result;
}

uint64_t sub_1C1AA5A14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1AA5A5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for JourneyMetricsHelperDiagnostics.Event.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for Context()
{
  result = qword_1EDE6CD98;
  if (!qword_1EDE6CD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1AA5C64(unint64_t a1, void (*a2)(void))
{
  v11 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1C1B953A8();
    sub_1C1B95518();
    v5 = sub_1C1B953A8();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C1B95518();
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C6907490](v6, a1);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = *(a1 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_12;
          }
        }

        a2(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_1C1B954F8();
        v9 = *(v11 + 16);
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
        ++v6;
      }

      while (v8 != v5);
    }
  }

  return v11;
}

uint64_t sub_1C1AA5DDC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1C1B953A8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1C1B954A8();
  *v1 = result;
  return result;
}

unint64_t sub_1C1AA5E7C()
{
  result = qword_1EDE6CA50;
  if (!qword_1EDE6CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6CA50);
  }

  return result;
}

uint64_t sub_1C1AA5ED0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NewsSupplementalContext();
  v5 = [objc_allocWithZone(v4) init];
  v6 = (v1 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_advertisementType);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  v9 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_advertisementType];
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v8;
  v9[1] = v7;

  v11 = sub_1C1AA7514();
  sub_1C1AA7EA8(v11);
  v12 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_creativeType);
  swift_beginAccess();
  v14 = *v12;
  v13 = v12[1];
  v15 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_creativeType];
  swift_beginAccess();
  v16 = v15[1];
  *v15 = v14;
  v15[1] = v13;

  v17 = *(v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal + 8);
  if (v17)
  {
    v18 = *(v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal);
    v19 = *(v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal + 8);

    v20 = _s15PromotedContent19NewsRequestedAdTypeO8rawValueACSS_tcfC_0(v18, v17);
  }

  else
  {
    sub_1C1B95128();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v21 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C1B98E60;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1C1AA5E7C();
    *(v22 + 32) = 0xD000000000000029;
    *(v22 + 40) = 0x80000001C1BA7F90;
    sub_1C1B94BA8();

    v20 = 0;
  }

  if (NewsRequestedAdType.rawValue.getter(v20) == 1162760014 && v23 == 0xE400000000000000)
  {

LABEL_8:
    v25 = 0;
    v26 = 0;
    goto LABEL_10;
  }

  v24 = sub_1C1B95888();

  if (v24)
  {
    goto LABEL_8;
  }

  v25 = NewsRequestedAdType.rawValue.getter(v20);
LABEL_10:
  v27 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal];
  v28 = *&v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal + 8];
  *v27 = v25;
  v27[1] = v26;

  v29 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleArticleId);
  swift_beginAccess();
  v31 = *v29;
  v30 = v29[1];
  v32 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleArticleId];
  swift_beginAccess();
  v33 = v32[1];
  *v32 = v31;
  v32[1] = v30;

  v34 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleArticleId);
  swift_beginAccess();
  v36 = *v34;
  v35 = v34[1];
  v37 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleArticleId];
  swift_beginAccess();
  v38 = v37[1];
  *v37 = v36;
  v37[1] = v35;

  v39 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleIsSponsored;
  swift_beginAccess();
  v40 = *(v2 + v39);
  v41 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleIsSponsored;
  swift_beginAccess();
  v42 = *&v5[v41];
  *&v5[v41] = v40;
  v43 = v40;

  v44 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleIsSponsored;
  swift_beginAccess();
  v45 = *(v2 + v44);
  v46 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleIsSponsored;
  swift_beginAccess();
  v47 = *&v5[v46];
  *&v5[v46] = v45;
  v48 = v45;

  v49 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticlePublicationMetadata;
  swift_beginAccess();
  v50 = *(v2 + v49);
  v51 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticlePublicationMetadata;
  swift_beginAccess();
  v52 = *&v5[v51];
  *&v5[v51] = v50;

  v53 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticlePublicationMetadata;
  swift_beginAccess();
  v54 = *(v2 + v53);
  v55 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticlePublicationMetadata;
  swift_beginAccess();
  v56 = *&v5[v55];
  *&v5[v55] = v54;

  v57 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleRating);
  swift_beginAccess();
  v59 = *v57;
  v58 = v57[1];
  v60 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleRating];
  swift_beginAccess();
  v61 = v60[1];
  *v60 = v59;
  v60[1] = v58;

  v62 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleRating);
  swift_beginAccess();
  v64 = *v62;
  v63 = v62[1];
  v65 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleRating];
  swift_beginAccess();
  v66 = v65[1];
  *v65 = v64;
  v65[1] = v63;

  v67 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannel);
  swift_beginAccess();
  v69 = *v67;
  v68 = v67[1];
  v70 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannel];
  swift_beginAccess();
  v71 = v70[1];
  *v70 = v69;
  v70[1] = v68;

  v72 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannel);
  swift_beginAccess();
  v74 = *v72;
  v73 = v72[1];
  v75 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannel];
  swift_beginAccess();
  v76 = v75[1];
  *v75 = v74;
  v75[1] = v73;

  v77 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannelRating);
  swift_beginAccess();
  v79 = *v77;
  v78 = v77[1];
  v80 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannelRating];
  swift_beginAccess();
  v81 = v80[1];
  *v80 = v79;
  v80[1] = v78;

  v82 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannelRating);
  swift_beginAccess();
  v84 = *v82;
  v83 = v82[1];
  v85 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannelRating];
  swift_beginAccess();
  v86 = v85[1];
  *v85 = v84;
  v85[1] = v83;

  v87 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceContentProviderId;
  swift_beginAccess();
  v88 = *(v2 + v87);
  v89 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceContentProviderId;
  swift_beginAccess();
  v90 = *&v5[v89];
  *&v5[v89] = v88;
  v91 = v88;

  v92 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceContentProviderId;
  swift_beginAccess();
  v93 = *(v2 + v92);
  v94 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceContentProviderId;
  swift_beginAccess();
  v95 = *&v5[v94];
  *&v5[v94] = v93;
  v96 = v93;

  v97 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceSections;
  swift_beginAccess();
  v98 = *(v2 + v97);
  v99 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceSections;
  swift_beginAccess();
  v100 = *&v5[v99];
  *&v5[v99] = v98;

  v101 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceSections;
  swift_beginAccess();
  v102 = *(v2 + v101);
  v103 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceSections;
  swift_beginAccess();
  v104 = *&v5[v103];
  *&v5[v103] = v102;

  v105 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataCategories;
  swift_beginAccess();
  v106 = *(v2 + v105);
  v107 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataCategories;
  swift_beginAccess();
  v108 = *&v5[v107];
  *&v5[v107] = v106;

  v109 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataChannelId);
  swift_beginAccess();
  v111 = *v109;
  v110 = v109[1];
  v112 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataChannelId];
  swift_beginAccess();
  v113 = v112[1];
  *v112 = v111;
  v112[1] = v110;

  v114 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataTagId);
  swift_beginAccess();
  v116 = *v114;
  v115 = v114[1];
  v117 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataTagId];
  swift_beginAccess();
  v118 = v117[1];
  *v117 = v116;
  v117[1] = v115;

  v119 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataContentProviderID;
  swift_beginAccess();
  v120 = *(v2 + v119);
  v121 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataContentProviderID;
  swift_beginAccess();
  v122 = *&v5[v121];
  *&v5[v121] = v120;
  v123 = v120;

  v124 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataKeywords;
  swift_beginAccess();
  v125 = *(v2 + v124);
  v126 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataKeywords;
  swift_beginAccess();
  v127 = *&v5[v126];
  *&v5[v126] = v125;

  v128 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataLanguages;
  swift_beginAccess();
  v129 = *(v2 + v128);
  v130 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataLanguages;
  swift_beginAccess();
  v131 = *&v5[v130];
  *&v5[v130] = v129;

  v132 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataRating);
  swift_beginAccess();
  v134 = *v132;
  v133 = v132[1];
  v135 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataRating];
  swift_beginAccess();
  v136 = v135[1];
  *v135 = v134;
  v135[1] = v133;

  v137 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataSectionId);
  swift_beginAccess();
  v139 = *v137;
  v138 = v137[1];
  v140 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataSectionId];
  swift_beginAccess();
  v141 = v140[1];
  *v140 = v139;
  v140[1] = v138;

  v142 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextCategories;
  swift_beginAccess();
  v143 = *(v2 + v142);
  v144 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextCategories;
  swift_beginAccess();
  v145 = *&v5[v144];
  *&v5[v144] = v143;

  v146 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveCategories;
  swift_beginAccess();
  v147 = *(v2 + v146);
  v148 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveCategories;
  swift_beginAccess();
  v149 = *&v5[v148];
  *&v5[v148] = v147;

  v150 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowCategories;
  swift_beginAccess();
  v151 = *(v2 + v150);
  v152 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowCategories;
  swift_beginAccess();
  v153 = *&v5[v152];
  *&v5[v152] = v151;

  v154 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextId);
  swift_beginAccess();
  v156 = *v154;
  v155 = v154[1];
  v157 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextId];
  swift_beginAccess();
  v158 = v157[1];
  *v157 = v156;
  v157[1] = v155;

  v159 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveId);
  swift_beginAccess();
  v161 = *v159;
  v160 = v159[1];
  v162 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveId];
  swift_beginAccess();
  v163 = v162[1];
  *v162 = v161;
  v162[1] = v160;

  v164 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowId);
  swift_beginAccess();
  v166 = *v164;
  v165 = v164[1];
  v167 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowId];
  swift_beginAccess();
  v168 = v167[1];
  *v167 = v166;
  v167[1] = v165;

  v169 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextKeywords;
  swift_beginAccess();
  v170 = *(v2 + v169);
  v171 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextKeywords;
  swift_beginAccess();
  v172 = *&v5[v171];
  *&v5[v171] = v170;

  v173 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveKeywords;
  swift_beginAccess();
  v174 = *(v2 + v173);
  v175 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveKeywords;
  swift_beginAccess();
  v176 = *&v5[v175];
  *&v5[v175] = v174;

  v177 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowKeywords;
  swift_beginAccess();
  v178 = *(v2 + v177);
  v179 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowKeywords;
  swift_beginAccess();
  v180 = *&v5[v179];
  *&v5[v179] = v178;

  v181 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextLanguages;
  swift_beginAccess();
  v182 = *(v2 + v181);
  v183 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextLanguages;
  swift_beginAccess();
  v184 = *&v5[v183];
  *&v5[v183] = v182;

  v185 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveLanguages;
  swift_beginAccess();
  v186 = *(v2 + v185);
  v187 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveLanguages;
  swift_beginAccess();
  v188 = *&v5[v187];
  *&v5[v187] = v186;

  v189 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowLanguages;
  swift_beginAccess();
  v190 = *(v2 + v189);
  v191 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowLanguages;
  swift_beginAccess();
  v192 = *&v5[v191];
  *&v5[v191] = v190;

  v193 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveChannelId);
  swift_beginAccess();
  v195 = *v193;
  v194 = v193[1];
  v196 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveChannelId];
  swift_beginAccess();
  v197 = v196[1];
  *v196 = v195;
  v196[1] = v194;

  v198 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveTagId);
  swift_beginAccess();
  v200 = *v198;
  v199 = v198[1];
  v201 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveTagId];
  swift_beginAccess();
  v202 = v201[1];
  *v201 = v200;
  v201[1] = v199;

  v203 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowChannelId);
  swift_beginAccess();
  v205 = *v203;
  v204 = v203[1];
  v206 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowChannelId];
  swift_beginAccess();
  v207 = v206[1];
  *v206 = v205;
  v206[1] = v204;

  v208 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowTagId);
  swift_beginAccess();
  v210 = *v208;
  v209 = v208[1];
  v211 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowTagId];
  swift_beginAccess();
  v212 = v211[1];
  *v211 = v210;
  v211[1] = v209;

  v213 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextContentProviderId;
  swift_beginAccess();
  v214 = *(v2 + v213);
  v215 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextContentProviderId;
  swift_beginAccess();
  v216 = *&v5[v215];
  *&v5[v215] = v214;
  v217 = v214;

  v218 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveContentProviderId;
  swift_beginAccess();
  v219 = *(v2 + v218);
  v220 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveContentProviderId;
  swift_beginAccess();
  v221 = *&v5[v220];
  *&v5[v220] = v219;
  v222 = v219;

  v223 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowContentProviderId;
  swift_beginAccess();
  v224 = *(v2 + v223);
  v225 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowContentProviderId;
  swift_beginAccess();
  v226 = *&v5[v225];
  *&v5[v225] = v224;
  v227 = v224;

  v228 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextType);
  swift_beginAccess();
  v230 = *v228;
  v229 = v228[1];
  v231 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextType];
  swift_beginAccess();
  v232 = v231[1];
  *v231 = v230;
  v231[1] = v229;

  v233 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveType);
  swift_beginAccess();
  v235 = *v233;
  v234 = v233[1];
  v236 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveType];
  swift_beginAccess();
  v237 = v236[1];
  *v236 = v235;
  v236[1] = v234;

  v238 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowType);
  swift_beginAccess();
  v240 = *v238;
  v239 = v238[1];
  v241 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowType];
  swift_beginAccess();
  v242 = v241[1];
  *v241 = v240;
  v241[1] = v239;

  v243 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_contentEnvironment);
  swift_beginAccess();
  v245 = *v243;
  v244 = v243[1];
  v246 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_contentEnvironment];
  swift_beginAccess();
  v247 = v246[1];
  *v246 = v245;
  v246[1] = v244;

  v248 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_isDraft;
  swift_beginAccess();
  v249 = *(v2 + v248);
  v250 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_isDraft;
  swift_beginAccess();
  v251 = *&v5[v250];
  *&v5[v250] = v249;
  v252 = v249;

  v253 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement);
  swift_beginAccess();
  v255 = *v253;
  v254 = v253[1];
  v256 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement];
  swift_beginAccess();
  v257 = v256[1];
  *v256 = v255;
  v256[1] = v254;

  v258 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralCampaignId);
  swift_beginAccess();
  v260 = *v258;
  v259 = v258[1];
  v261 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralCampaignId];
  swift_beginAccess();
  v262 = v261[1];
  *v261 = v260;
  v261[1] = v259;

  v263 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralLocation);
  swift_beginAccess();
  v265 = *v263;
  v264 = v263[1];
  v266 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralLocation];
  swift_beginAccess();
  v267 = v266[1];
  *v266 = v265;
  v266[1] = v264;

  v268 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralPublisherInventory;
  swift_beginAccess();
  v269 = *(v2 + v268);
  v270 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralPublisherInventory;
  swift_beginAccess();
  v271 = *&v5[v270];
  *&v5[v270] = v269;
  v272 = v269;

  v273 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_numOfArticlesSeenSinceLastInterstitial;
  swift_beginAccess();
  v274 = *(v2 + v273);
  v275 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_numOfArticlesSeenSinceLastInterstitial;
  swift_beginAccess();
  v276 = *&v5[v275];
  *&v5[v275] = v274;
  v277 = v274;

  v278 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_playerAspectRatio;
  swift_beginAccess();
  v279 = *(v2 + v278);
  v280 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_playerAspectRatio;
  swift_beginAccess();
  v281 = *&v5[v280];
  *&v5[v280] = v279;
  v282 = v279;

  v283 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_subscriptionType);
  swift_beginAccess();
  v285 = *v283;
  v284 = v283[1];
  v286 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_subscriptionType];
  swift_beginAccess();
  v287 = v286[1];
  *v286 = v285;
  v286[1] = v284;

  v288 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueId);
  swift_beginAccess();
  v290 = *v288;
  v289 = v288[1];
  v291 = &v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueId];
  swift_beginAccess();
  v292 = v291[1];
  *v291 = v290;
  v291[1] = v289;

  v293 = *(v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsDraftInternal);
  if (v293)
  {
    [v293 BOOLValue];
    sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
    v294 = sub_1C1B95248();
    v295 = *&v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsDraftInternal];
    *&v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsDraftInternal] = v294;
  }

  v296 = *(v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsCurrentInternal);
  if (v296)
  {
    [v296 BOOLValue];
    sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
    v297 = sub_1C1B95248();
    v298 = *&v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsCurrentInternal];
    *&v5[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsCurrentInternal] = v297;
  }

  v299 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_superFeedMetadata;
  swift_beginAccess();
  v300 = *(v2 + v299);
  v301 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_superFeedMetadata;
  swift_beginAccess();
  v302 = *&v5[v301];
  *&v5[v301] = v300;

  v303 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement;
  swift_beginAccess();
  v304 = *(v2 + v303);
  v305 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement;
  result = swift_beginAccess();
  v5[v305] = v304;
  a1[3] = v4;
  *a1 = v5;
  return result;
}

unint64_t sub_1C1AA7514()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_superFeedMetadata;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    v16 = *(v0 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_anfComponentMetadataInternal);

    return v16;
  }

  v3 = *(v0 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_anfComponentMetadataInternal);
  if (!v3)
  {

    goto LABEL_14;
  }

  v4 = *(v3 + 16);

  if (v4)
  {

    v5 = sub_1C1AA7C14(0x656372756F73, 0xE600000000000000);
    if (v6)
    {
      sub_1C1AAA7B8(*(v3 + 56) + 32 * v5, &v32);
      v7 = sub_1C1AC1F08(&unk_1EBF08348, &unk_1C1B9F740);
      if (swift_dynamicCast())
      {
        v8 = *&v31[0];
        if (*(*&v31[0] + 16))
        {
          v9 = sub_1C1AA7C14(0xD000000000000013, 0x80000001C1BA5640);
          if (v10)
          {
            sub_1C1AAA7B8(*(*&v31[0] + 56) + 32 * v9, &v32);
            if (swift_dynamicCast())
            {
              v11 = *&v31[0];
              v12 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement;
              swift_beginAccess();
              if (*(v0 + v12) == 1)
              {
                v33 = sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
                *&v32 = v2;
                sub_1C1AA7E98(&v32, v31);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v30 = v11;
                v14 = 0x6F72677265707573;
                v15 = 0xEF3179656B5F7075;
              }

              else
              {
                v33 = sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
                *&v32 = v2;
                sub_1C1AA7E98(&v32, v31);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v30 = v11;
                v14 = 0x6565667265707573;
                v15 = 0xEE003179656B5F64;
              }

              sub_1C1AAA814(v31, v14, v15, isUniquelyReferenced_nonNull_native);
              v33 = v7;
              *&v32 = v30;
              sub_1C1AA7E98(&v32, v31);
              v28 = swift_isUniquelyReferenced_nonNull_native();
              sub_1C1AAA814(v31, 0xD000000000000013, 0x80000001C1BA5640, v28);
              v33 = v7;
              *&v32 = v8;
              sub_1C1AA7E98(&v32, v31);

              v29 = swift_isUniquelyReferenced_nonNull_native();
              sub_1C1AAA814(v31, 0x656372756F73, 0xE600000000000000, v29);

              return v3;
            }

            goto LABEL_14;
          }
        }
      }
    }
  }

LABEL_14:
  v17 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement;
  swift_beginAccess();
  v18 = *(v0 + v17);
  sub_1C1AC1F08(&qword_1EBF08310, &qword_1C1B9AF40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9AF30;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x80000001C1BA5610;
  v20 = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  *(inited + 72) = v20;
  *(inited + 80) = 0x656372756F73;
  *(inited + 88) = 0xE600000000000000;
  sub_1C1AC1F08(&qword_1EBF08318, &qword_1C1B9AF48);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1C1B98E60;
  *(v21 + 32) = 0xD000000000000013;
  *(v21 + 40) = 0x80000001C1BA5640;
  sub_1C1AC1F08(&unk_1EBF08320, &unk_1C1B9AF50);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1C1B98E60;
  if (v18 == 1)
  {
    *(v22 + 32) = 0x6F72677265707573;
    v23 = v22 + 32;
    v24 = 0xEF3179656B5F7075;
  }

  else
  {
    *(v22 + 32) = 0x6565667265707573;
    v23 = v22 + 32;
    v24 = 0xEE003179656B5F64;
  }

  *(v22 + 40) = v24;
  *(v22 + 48) = v2;
  v25 = sub_1C1AA7C00(v22);
  swift_setDeallocating();
  sub_1C1AA7C8C(v23, &qword_1EBF07B30, &qword_1C1B98F50);
  *(v21 + 48) = v25;
  v26 = sub_1C1AA7CEC(v21);
  swift_setDeallocating();
  sub_1C1AA7C8C(v21 + 32, &qword_1EBF08330, &qword_1C1B9AF60);
  *(inited + 120) = sub_1C1AC1F08(&qword_1EBF08338, &qword_1C1B9AF68);
  *(inited + 96) = v26;
  v16 = sub_1C1AA7D00(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&qword_1EBF08340, &qword_1C1B9AF70);
  swift_arrayDestroy();
  return v16;
}

unint64_t sub_1C1AA7B04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1C1AC1F08(a2, a3);
    v5 = sub_1C1B955C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1C1AA7C14(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1C1AA7C14(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1C1B95958();
  sub_1C1B94DE8();
  v6 = sub_1C1B959A8();

  return sub_1C1AAA700(a1, a2, v6);
}

uint64_t sub_1C1AA7C8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1C1AC1F08(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1C1AA7D00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C1AC1F08(&unk_1EBF080D0, &unk_1C1B9A6A0);
    v3 = sub_1C1B955C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1AA7E30(v4, &v13, &qword_1EBF08340, &qword_1C1B9AF70);
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

uint64_t sub_1C1AA7E30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C1AC1F08(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_1C1AA7E98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C1AA7EA8(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;
    v4 = objc_opt_self();
    sub_1C1AC1F08(&unk_1EBF08358, &qword_1C1B9AF78);
    LOBYTE(v4) = [v4 isValidJSONObject_];
    swift_unknownObjectRelease();
    if ((v4 & 1) == 0)
    {

      sub_1C1B95128();
      sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
      v5 = sub_1C1B95298();
      sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1C1B98E60;
      *(v6 + 56) = MEMORY[0x1E69E6158];
      *(v6 + 64) = sub_1C1AA5E7C();
      *(v6 + 32) = 0xD000000000000030;
      *(v6 + 40) = 0x80000001C1BA7F40;
      sub_1C1B94BA8();

      v7 = [objc_opt_self() processInfo];
      [v7 isRunningTests];

      v3 = 0;
    }

    v8 = *(v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_anfComponentMetadataInternal);
    *(v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_anfComponentMetadataInternal) = v3;
  }

  return result;
}

uint64_t _s15PromotedContent19NewsRequestedAdTypeO8rawValueACSS_tcfC_0(uint64_t a1, unint64_t a2)
{
  v5 = sub_1C1B94DC8();
  v6 = v4;
  if (v5 == 5852737 && v4 == 0xE300000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  if (v5 == 0x454E4E4142594E41 && v6 == 0xE900000000000052 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  if (v5 == 0x445241444E415453 && v6 == 0xE800000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  if (v5 == 0x454C42554F44 && v6 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 4;
  }

  if (v5 == 0x454752414CLL && v6 == 0xE500000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 5;
  }

  if (v5 == 1128616525 && v6 == 0xE400000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 6;
  }

  if (v5 == 0x45564954414ELL && v6 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 7;
  }

  if (v5 == 0x59414C5245564FLL && v6 == 0xE700000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 8;
  }

  if (v5 == 0x4954414E494D4553 && v6 == 0xEA00000000004556 || (sub_1C1B95888() & 1) != 0)
  {

    return 9;
  }

  if (v5 == 0x53524F534E4F5053 && v6 == 0xEB00000000504948)
  {

LABEL_41:

    return 10;
  }

  v8 = sub_1C1B95888();

  if (v8)
  {
    goto LABEL_41;
  }

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1C1B94BE8();
  sub_1C1AB4454(v9, qword_1EDE6D058);

  v10 = sub_1C1B94BC8();
  v11 = sub_1C1B95128();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315138;
    v14 = sub_1C1AC7650(a1, a2, &v15);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_1C1AA2000, v10, v11, "Attempting to create NewsRequestedAdType with invalid raw value %s.", v12, 0xCu);
    sub_1C1AA86F8(v13);
    MEMORY[0x1C6908230](v13, -1, -1);
    MEMORY[0x1C6908230](v12, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t NewsRequestedAdType.rawValue.getter(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        return 0x454752414CLL;
      }

      if (a1 == 6)
      {
        return 1128616525;
      }

      return 0x45564954414ELL;
    }

    switch(a1)
    {
      case 8:
        return 0x59414C5245564FLL;
      case 9:
        return 0x4954414E494D4553;
      case 10:
        return 0x53524F534E4F5053;
    }

LABEL_24:
    result = sub_1C1B958C8();
    __break(1u);
    return result;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 1162760014;
    }

    if (a1 == 1)
    {
      return 5852737;
    }

    goto LABEL_24;
  }

  if (a1 == 2)
  {
    return 0x454E4E4142594E41;
  }

  if (a1 == 3)
  {
    return 0x445241444E415453;
  }

  return 0x454C42554F44;
}

uint64_t sub_1C1AA86F8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t Context.hash.getter()
{
  v1 = v0;
  sub_1C1B959B8();
  v233 = v238;
  v234 = v239;
  v235 = v240;
  v232 = v237;
  v231 = v236;
  v2 = v0 + OBJC_IVAR___APPCBaseContext_maxSize;
  v3 = *(v0 + OBJC_IVAR___APPCBaseContext_maxSize);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1C6907980](*&v3);
  v4 = *(v2 + 8);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1C6907980](*&v4);
  if (*(v0 + OBJC_IVAR___APPCBaseContext_current) && (type metadata accessor for ContentDepiction(), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = v5;
    swift_unknownObjectRetain();
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  sub_1C1B95288();

  v7 = sub_1C1AA5C64(*(v0 + OBJC_IVAR___APPCBaseContext_next), type metadata accessor for ContentDepiction);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  sub_1C1AAAD18(&v231, v9);

  v10 = sub_1C1AA5C64(*(v0 + OBJC_IVAR___APPCBaseContext_adjacent), type metadata accessor for ContentDepiction);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  sub_1C1AAAD18(&v231, v11);

  v12 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v13 = *(v1 + v12);
  if (v13)
  {
    v14 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_advertisementType];
    swift_beginAccess();
    if (*(v14 + 1))
    {
      v15 = *v14;
      sub_1C1B95978();
      v16 = v13;

      sub_1C1B94DE8();
    }

    else
    {
      sub_1C1B95978();
      v18 = v13;
    }

    v19 = *&v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal + 8];
    if (v19)
    {
      v20 = *&v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal];
      v21 = *&v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal + 8];

      v22 = _s15PromotedContent19NewsRequestedAdTypeO8rawValueACSS_tcfC_0(v20, v19);
    }

    else
    {
      sub_1C1B95128();
      sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
      v23 = sub_1C1B95298();
      sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1C1B98E60;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1C1AA5E7C();
      *(v24 + 32) = 0xD000000000000029;
      *(v24 + 40) = 0x80000001C1BA7F90;
      sub_1C1B94BA8();

      v22 = 0;
    }

    NewsRequestedAdType.rawValue.getter(v22);
    sub_1C1B94DE8();

    v25 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_creativeType];
    swift_beginAccess();
    if (*(v25 + 1))
    {
      v26 = *v25;
      sub_1C1B95978();

      sub_1C1B94DE8();
    }

    else
    {
      sub_1C1B95978();
    }

    v27 = sub_1C1AA7514();
    if (v27)
    {
      v28 = v27;
      v29 = v27 + 64;
      v30 = 1 << *(v27 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & *(v27 + 64);
      v33 = (v30 + 63) >> 6;

      v34 = 0;
      while (v32)
      {
LABEL_37:
        v37 = __clz(__rbit64(v32)) | (v34 << 6);
        v38 = (*(v28 + 48) + 16 * v37);
        v39 = *v38;
        v40 = v38[1];
        sub_1C1AAA7B8(*(v28 + 56) + 32 * v37, &v242);
        *&v241 = v39;
        *(&v241 + 1) = v40;

        sub_1C1B94DE8();
        sub_1C1AAAB08(&v241, v230);

        sub_1C1AA576C(0, &qword_1EDE6C9D0, 0x1E69E58C0);
        if (swift_dynamicCast())
        {
          v35 = v230[168];
        }

        else
        {
          v35 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
        }

        v32 &= v32 - 1;
        sub_1C1B95288();

        result = sub_1C1AAAB78(&v241);
      }

      while (1)
      {
        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v36 >= v33)
        {

          goto LABEL_40;
        }

        v32 = *(v29 + 8 * v36);
        ++v34;
        if (v32)
        {
          v34 = v36;
          goto LABEL_37;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_40:
      v41 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleArticleId];
      swift_beginAccess();
      if (*(v41 + 1))
      {
        v42 = *v41;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v43 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleArticleId];
      swift_beginAccess();
      if (*(v43 + 1))
      {
        v44 = *v43;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v45 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleIsSponsored;
      swift_beginAccess();
      v46 = *&v13[v45];
      sub_1C1B95978();
      if (v46)
      {
        v47 = v46;
        sub_1C1B95288();
      }

      v48 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleIsSponsored;
      swift_beginAccess();
      v49 = *&v13[v48];
      sub_1C1B95978();
      if (v49)
      {
        v50 = v49;
        sub_1C1B95288();
      }

      v51 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticlePublicationMetadata;
      swift_beginAccess();
      v52 = *&v13[v51];
      sub_1C1B95978();
      if (v52)
      {

        sub_1C1AF5F70(&v231, v52);
      }

      v53 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticlePublicationMetadata;
      swift_beginAccess();
      v54 = *&v13[v53];
      sub_1C1B95978();
      if (v54)
      {

        sub_1C1AF5F70(&v231, v54);
      }

      v55 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleRating];
      swift_beginAccess();
      if (*(v55 + 1))
      {
        v56 = *v55;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v57 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleRating];
      swift_beginAccess();
      if (*(v57 + 1))
      {
        v58 = *v57;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v59 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannel];
      swift_beginAccess();
      if (*(v59 + 1))
      {
        v60 = *v59;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v61 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannel];
      swift_beginAccess();
      if (*(v61 + 1))
      {
        v62 = *v61;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v63 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannelRating];
      swift_beginAccess();
      if (*(v63 + 1))
      {
        v64 = *v63;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v65 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannelRating];
      swift_beginAccess();
      if (*(v65 + 1))
      {
        v66 = *v65;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v67 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceContentProviderId;
      swift_beginAccess();
      v68 = *&v13[v67];
      sub_1C1B95978();
      if (v68)
      {
        v69 = v68;
        sub_1C1B95288();
      }

      v70 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceContentProviderId;
      swift_beginAccess();
      v71 = *&v13[v70];
      sub_1C1B95978();
      if (v71)
      {
        v72 = v71;
        sub_1C1B95288();
      }

      v73 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceSections;
      swift_beginAccess();
      v74 = *&v13[v73];
      if (v74)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v74 + 16));
        v75 = *(v74 + 16);
        if (v75)
        {

          v76 = (v74 + 40);
          do
          {
            v77 = *(v76 - 1);
            v78 = *v76;

            sub_1C1B94DE8();

            v76 += 2;
            --v75;
          }

          while (v75);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v79 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceSections;
      swift_beginAccess();
      v80 = *&v13[v79];
      if (v80)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v80 + 16));
        v81 = *(v80 + 16);
        if (v81)
        {

          v82 = (v80 + 40);
          do
          {
            v83 = *(v82 - 1);
            v84 = *v82;

            sub_1C1B94DE8();

            v82 += 2;
            --v81;
          }

          while (v81);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v85 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataCategories;
      swift_beginAccess();
      v86 = *&v13[v85];
      if (v86)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v86 + 16));
        v87 = *(v86 + 16);
        if (v87)
        {

          v88 = (v86 + 40);
          do
          {
            v89 = *(v88 - 1);
            v90 = *v88;

            sub_1C1B94DE8();

            v88 += 2;
            --v87;
          }

          while (v87);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v91 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataChannelId];
      swift_beginAccess();
      if (*(v91 + 1))
      {
        v92 = *v91;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v93 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataTagId];
      swift_beginAccess();
      if (*(v93 + 1))
      {
        v94 = *v93;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v95 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataContentProviderID;
      swift_beginAccess();
      v96 = *&v13[v95];
      sub_1C1B95978();
      if (v96)
      {
        v97 = v96;
        sub_1C1B95288();
      }

      v98 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataKeywords;
      swift_beginAccess();
      v99 = *&v13[v98];
      if (v99)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v99 + 16));
        v100 = *(v99 + 16);
        if (v100)
        {

          v101 = (v99 + 40);
          do
          {
            v102 = *(v101 - 1);
            v103 = *v101;

            sub_1C1B94DE8();

            v101 += 2;
            --v100;
          }

          while (v100);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v104 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataLanguages;
      swift_beginAccess();
      v105 = *&v13[v104];
      if (v105)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v105 + 16));
        v106 = *(v105 + 16);
        if (v106)
        {

          v107 = (v105 + 40);
          do
          {
            v108 = *(v107 - 1);
            v109 = *v107;

            sub_1C1B94DE8();

            v107 += 2;
            --v106;
          }

          while (v106);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v110 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataRating];
      swift_beginAccess();
      if (*(v110 + 1))
      {
        v111 = *v110;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v112 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataSectionId];
      swift_beginAccess();
      if (*(v112 + 1))
      {
        v113 = *v112;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v114 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextCategories;
      swift_beginAccess();
      v115 = *&v13[v114];
      if (v115)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v115 + 16));
        v116 = *(v115 + 16);
        if (v116)
        {

          v117 = (v115 + 40);
          do
          {
            v118 = *(v117 - 1);
            v119 = *v117;

            sub_1C1B94DE8();

            v117 += 2;
            --v116;
          }

          while (v116);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v120 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveCategories;
      swift_beginAccess();
      v121 = *&v13[v120];
      if (v121)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v121 + 16));
        v122 = *(v121 + 16);
        if (v122)
        {

          v123 = (v121 + 40);
          do
          {
            v124 = *(v123 - 1);
            v125 = *v123;

            sub_1C1B94DE8();

            v123 += 2;
            --v122;
          }

          while (v122);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v126 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowCategories;
      swift_beginAccess();
      v127 = *&v13[v126];
      if (v127)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v127 + 16));
        v128 = *(v127 + 16);
        if (v128)
        {

          v129 = (v127 + 40);
          do
          {
            v130 = *(v129 - 1);
            v131 = *v129;

            sub_1C1B94DE8();

            v129 += 2;
            --v128;
          }

          while (v128);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v132 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextId];
      swift_beginAccess();
      if (*(v132 + 1))
      {
        v133 = *v132;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v134 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveId];
      swift_beginAccess();
      if (*(v134 + 1))
      {
        v135 = *v134;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v136 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowId];
      swift_beginAccess();
      if (*(v136 + 1))
      {
        v137 = *v136;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v138 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextKeywords;
      swift_beginAccess();
      v139 = *&v13[v138];
      if (v139)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v139 + 16));
        v140 = *(v139 + 16);
        if (v140)
        {

          v141 = (v139 + 40);
          do
          {
            v142 = *(v141 - 1);
            v143 = *v141;

            sub_1C1B94DE8();

            v141 += 2;
            --v140;
          }

          while (v140);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v144 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveKeywords;
      swift_beginAccess();
      v145 = *&v13[v144];
      if (v145)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v145 + 16));
        v146 = *(v145 + 16);
        if (v146)
        {

          v147 = (v145 + 40);
          do
          {
            v148 = *(v147 - 1);
            v149 = *v147;

            sub_1C1B94DE8();

            v147 += 2;
            --v146;
          }

          while (v146);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v150 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowKeywords;
      swift_beginAccess();
      v151 = *&v13[v150];
      if (v151)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v151 + 16));
        v152 = *(v151 + 16);
        if (v152)
        {

          v153 = (v151 + 40);
          do
          {
            v154 = *(v153 - 1);
            v155 = *v153;

            sub_1C1B94DE8();

            v153 += 2;
            --v152;
          }

          while (v152);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v156 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextLanguages;
      swift_beginAccess();
      v157 = *&v13[v156];
      if (v157)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v157 + 16));
        v158 = *(v157 + 16);
        if (v158)
        {

          v159 = (v157 + 40);
          do
          {
            v160 = *(v159 - 1);
            v161 = *v159;

            sub_1C1B94DE8();

            v159 += 2;
            --v158;
          }

          while (v158);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v162 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveLanguages;
      swift_beginAccess();
      v163 = *&v13[v162];
      if (v163)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v163 + 16));
        v164 = *(v163 + 16);
        if (v164)
        {

          v165 = (v163 + 40);
          do
          {
            v166 = *(v165 - 1);
            v167 = *v165;

            sub_1C1B94DE8();

            v165 += 2;
            --v164;
          }

          while (v164);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v168 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowLanguages;
      swift_beginAccess();
      v169 = *&v13[v168];
      if (v169)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v169 + 16));
        v170 = *(v169 + 16);
        if (v170)
        {

          v171 = (v169 + 40);
          do
          {
            v172 = *(v171 - 1);
            v173 = *v171;

            sub_1C1B94DE8();

            v171 += 2;
            --v170;
          }

          while (v170);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v174 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveChannelId];
      swift_beginAccess();
      if (*(v174 + 1))
      {
        v175 = *v174;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v176 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveTagId];
      swift_beginAccess();
      if (*(v176 + 1))
      {
        v177 = *v176;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v178 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowChannelId];
      swift_beginAccess();
      if (*(v178 + 1))
      {
        v179 = *v178;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v180 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowTagId];
      swift_beginAccess();
      if (*(v180 + 1))
      {
        v181 = *v180;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v182 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextContentProviderId;
      swift_beginAccess();
      v183 = *&v13[v182];
      sub_1C1B95978();
      if (v183)
      {
        v184 = v183;
        sub_1C1B95288();
      }

      v185 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveContentProviderId;
      swift_beginAccess();
      v186 = *&v13[v185];
      sub_1C1B95978();
      if (v186)
      {
        v187 = v186;
        sub_1C1B95288();
      }

      v188 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowContentProviderId;
      swift_beginAccess();
      v189 = *&v13[v188];
      sub_1C1B95978();
      if (v189)
      {
        v190 = v189;
        sub_1C1B95288();
      }

      v191 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextType];
      swift_beginAccess();
      if (*(v191 + 1))
      {
        v192 = *v191;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v193 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveType];
      swift_beginAccess();
      if (*(v193 + 1))
      {
        v194 = *v193;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v195 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowType];
      swift_beginAccess();
      if (*(v195 + 1))
      {
        v196 = *v195;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v197 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_contentEnvironment];
      swift_beginAccess();
      if (*(v197 + 1))
      {
        v198 = *v197;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v199 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_isDraft;
      swift_beginAccess();
      v200 = *&v13[v199];
      sub_1C1B95978();
      if (v200)
      {
        v201 = v200;
        sub_1C1B95288();
      }

      sub_1C1B95978();
      v202 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement];
      swift_beginAccess();
      if (*(v202 + 1))
      {
        v203 = *v202;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v204 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralLocation];
      swift_beginAccess();
      if (*(v204 + 1))
      {
        v205 = *v204;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v206 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralPublisherInventory;
      swift_beginAccess();
      v207 = *&v13[v206];
      sub_1C1B95978();
      if (v207)
      {
        v208 = v207;
        sub_1C1B95288();
      }

      v209 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_numOfArticlesSeenSinceLastInterstitial;
      swift_beginAccess();
      v210 = *&v13[v209];
      sub_1C1B95978();
      if (v210)
      {
        v211 = v210;
        sub_1C1B95288();
      }

      v212 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_playerAspectRatio;
      swift_beginAccess();
      v213 = *&v13[v212];
      sub_1C1B95978();
      if (v213)
      {
        v214 = v213;
        sub_1C1B95288();
      }

      v215 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_subscriptionType];
      swift_beginAccess();
      if (*(v215 + 1))
      {
        v216 = *v215;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v217 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueId];
      swift_beginAccess();
      if (*(v217 + 1))
      {
        v218 = *v217;
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v219 = *&v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsDraftInternal];
      if (v219)
      {
        v220 = [v219 BOOLValue];
      }

      else
      {
        v220 = -1;
      }

      MEMORY[0x1C6907960](v220);
      v221 = *&v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsCurrentInternal];
      if (v221)
      {
        v222 = [v221 BOOLValue];
      }

      else
      {
        v222 = -1;
      }

      MEMORY[0x1C6907960](v222);
      v223 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_superFeedMetadata;
      swift_beginAccess();
      v224 = *&v13[v223];
      if (v224)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v224 + 16));
        v225 = *(v224 + 16);
        if (v225)
        {

          v226 = (v224 + 40);
          do
          {
            v227 = *(v226 - 1);
            v228 = *v226;

            sub_1C1B94DE8();

            v226 += 2;
            --v225;
          }

          while (v225);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v243 = v233;
      v244 = v234;
      v245 = v235;
      v241 = v231;
      v242 = v232;
      v229 = sub_1C1B95998();

      return v229;
    }
  }

  else
  {
    v243 = v233;
    v244 = v234;
    v245 = v235;
    v241 = v231;
    v242 = v232;
    return sub_1C1B95998();
  }

  return result;
}

unint64_t sub_1C1AAA700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C1B95888())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1C1AAA7B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1C1AAA814(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C1AA7C14(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1C1AAA964();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1C1AD96AC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1C1AA7C14(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1C1B958E8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_1C1AA86F8(v23);

    return sub_1C1AA7E98(a1, v23);
  }

  else
  {
    sub_1C1AE45B8(v11, a2, a3, a1, v22);
  }
}

void *sub_1C1AAA964()
{
  v1 = v0;
  sub_1C1AC1F08(&unk_1EBF080D0, &unk_1C1B9A6A0);
  v2 = *v0;
  v3 = sub_1C1B955A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1C1AAA7B8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1C1AA7E98(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C1AAAB08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF08858, &qword_1C1B9CD28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1AAAB78(uint64_t a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF08858, &qword_1C1B9CD28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1C1AAABE0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1C1AAAC24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAAC34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAAC44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAAC54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAAC64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAAC74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAAC84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAAC94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAACA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAACB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAACC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAACD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C1AAAD18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_1C1B953A8();
    MEMORY[0x1C6907960](v8);
    v3 = sub_1C1B953A8();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1C6907960](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x1C6907490](i, a2);
      sub_1C1B95288();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1C1B95288();

      --v3;
    }

    while (v3);
  }
}

uint64_t initializeBufferWithCopyOfBuffer for AdContentSessionUnfilledReason(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

id sub_1C1AAAE40()
{
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  qword_1EDE6CE60 = result;
  return result;
}

void *sub_1C1AAAF64()
{
  result = sub_1C1AAAF84();
  qword_1EDE6BFF8 = result;
  return result;
}

void *sub_1C1AAAF84()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1C1B94D88();
  v4 = v3;

  if (v2 == 0x6C7070612E6D6F63 && v4 == 0xEE007377656E2E65)
  {

    goto LABEL_9;
  }

  v6 = sub_1C1B95888();

  if (v6)
  {
LABEL_9:
    type metadata accessor for SponsorshipAdManager();
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E7CC0];
    v7[2] = 0;
    v7[3] = v8;
    v7[4] = v8;
    sub_1C1AAD360();
    sub_1C1AAD570();
    return v7;
  }

  return 0;
}

char *sub_1C1AAB0FC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1C1AC1F08(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_1C1AAB208(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = OBJC_IVAR___APPCContext_prefetchLock;
  [*(v4 + OBJC_IVAR___APPCContext_prefetchLock) lock];
  v9 = &property descriptor for VideoRepresentation.unbranded;
  if (a3)
  {
    v10 = OBJC_IVAR___APPCContext_fetchingLock;
    [*(v4 + OBJC_IVAR___APPCContext_fetchingLock) lock];
    swift_beginAccess();

    sub_1C1AAB914(v11);
    swift_endAccess();
    [*(v4 + v10) unlock];
    sub_1C1B2F85C(a1);
    return [*(v4 + v8) v9[463]];
  }

  v12 = sub_1C1AB6F40();
  if (v12 < 1)
  {
    if ((a2 & 1) == 0)
    {
      sub_1C1B95138();
      sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
      v19 = sub_1C1B95298();
      sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1C1B98E60;
      v21 = *(a1 + 16);
      v22 = MEMORY[0x1E69E65A8];
      *(v20 + 56) = MEMORY[0x1E69E6530];
      *(v20 + 64) = v22;
      *(v20 + 32) = v21;
      sub_1C1B94BA8();

      v23 = OBJC_IVAR___APPCContext_waitingLock;
      [*(v4 + OBJC_IVAR___APPCContext_waitingLock) lock];
      swift_beginAccess();

      sub_1C1AAB914(v24);
      swift_endAccess();
      [*(v4 + v23) unlock];
    }

    return [*(v4 + v8) v9[463]];
  }

  v13 = *(a1 + 16);
  if (v12 >= v13)
  {

    if ((a2 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v14 = v12;
    v15 = (2 * v12) | 1;

    sub_1C1B2FCAC(v16, a1 + 32, 0, v15);
    v18 = v17;
    if ((a2 & 1) == 0)
    {
      sub_1C1B2FCAC(a1, a1 + 32, v14, (2 * v13) | 1);
      v41 = v40;

      sub_1C1B95138();
      sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
      v42 = sub_1C1B95298();
      sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1C1B98E60;
      v44 = *(v41 + 16);
      v45 = MEMORY[0x1E69E65A8];
      *(v43 + 56) = MEMORY[0x1E69E6530];
      *(v43 + 64) = v45;
      *(v43 + 32) = v44;
      sub_1C1B94BA8();

      v25 = (v4 + OBJC_IVAR___APPCContext_waitingLock);
      [*(v4 + OBJC_IVAR___APPCContext_waitingLock) lock];
      swift_beginAccess();
      sub_1C1AAB914(v41);
      swift_endAccess();
      goto LABEL_48;
    }

    a1 = v18;
  }

  v25 = (v4 + OBJC_IVAR___APPCContext_waitingLock);
  [*(v4 + OBJC_IVAR___APPCContext_waitingLock) lock];
  sub_1C1B95138();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v26 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C1B98E60;
  v28 = *(a1 + 16);
  v29 = MEMORY[0x1E69E65A8];
  *(v27 + 56) = MEMORY[0x1E69E6530];
  *(v27 + 64) = v29;
  *(v27 + 32) = v28;
  sub_1C1B94BA8();

  v30 = *(a1 + 16);
  if (!v30)
  {
    v18 = a1;
    goto LABEL_48;
  }

  v48 = v25;
  v31 = OBJC_IVAR___APPCContext_waiting;
  v32 = a1 + 32;
  result = swift_beginAccess();
  v34 = 0;
  while (1)
  {
    if (v34 >= *(a1 + 16))
    {
      __break(1u);
      return result;
    }

    result = *(v4 + v31);
    v35 = result[2];
    if (v35)
    {
      break;
    }

LABEL_13:
    if (++v34 == v30)
    {
      goto LABEL_45;
    }
  }

  v36 = 0;
  v37 = *(v32 + 8 * v34);
  while (1)
  {
    v39 = result[v36 + 4];
    if (v37 > 3)
    {
      break;
    }

    if (v37 > 1)
    {
      if (v37 == 2)
      {
        if (v39 == 2)
        {
          goto LABEL_12;
        }
      }

      else if (v39 == 3)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }

    if (!v37)
    {
      goto LABEL_17;
    }

    if (v37 != 1)
    {
      goto LABEL_44;
    }

    if (v39 == 1)
    {
LABEL_12:
      swift_beginAccess();
      sub_1C1B2BACC(v36);
      result = swift_endAccess();
      goto LABEL_13;
    }

LABEL_21:
    if (v35 == ++v36)
    {
      goto LABEL_13;
    }
  }

  if (v37 <= 5)
  {
    if (v37 == 4)
    {
      if (v39 == 4)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }

LABEL_17:
    if (v39)
    {
      v38 = v39 == 5;
    }

    else
    {
      v38 = 1;
    }

    if (v38)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  switch(v37)
  {
    case 6:
      if (v39 == 6)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    case 7:
      if (v39 == 7)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    case 8:
      goto LABEL_21;
  }

LABEL_44:
  v49 = *(v32 + 8 * v34);

  sub_1C1B958C8();
  __break(1u);
LABEL_45:
  v18 = a1;
  v9 = &property descriptor for VideoRepresentation.unbranded;
  v25 = v48;
LABEL_48:
  [*v25 v9[463]];
  a1 = v18;
LABEL_49:
  v46 = OBJC_IVAR___APPCContext_fetchingLock;
  [*(v4 + OBJC_IVAR___APPCContext_fetchingLock) lock];
  swift_beginAccess();

  sub_1C1AAB914(v47);
  swift_endAccess();
  [*(v4 + v46) v9[463]];
  sub_1C1B2F85C(a1);

  return [*(v4 + v8) v9[463]];
}

uint64_t sub_1C1AAB914(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1C1AAB0E8(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C1AABA00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1B945F8();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v44 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (a1 + 40);
    v13 = MEMORY[0x1E69E7CC0];
    do
    {
      v17 = *(v12 - 1);
      v18 = *v12;
      if ((*v12 & 0xE0) != 0xC0 || v17 != 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C1AC7E74(0, *(v13 + 16) + 1, 1);
          v13 = v49;
        }

        v15 = *(v13 + 16);
        v14 = *(v13 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1C1AC7E74((v14 > 1), v15 + 1, 1);
          v13 = v49;
        }

        *(v13 + 16) = v15 + 1;
        v16 = v13 + 16 * v15;
        *(v16 + 32) = v17;
        *(v16 + 40) = v18;
      }

      v12 += 16;
      --v11;
    }

    while (v11);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  sub_1C1B94578();
  v21 = sub_1C1B94588();
  (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  v22 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  sub_1C1AABE90(v10, v2 + v22);
  swift_endAccess();
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v23 = sub_1C1B94BE8();
  sub_1C1AB4454(v23, qword_1EDE6D058);
  v24 = v2;

  v25 = sub_1C1B94BC8();
  v26 = sub_1C1B95118();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v48 = v44;
    *v27 = 67109634;
    *(v27 + 4) = 36;
    *(v27 + 8) = 2080;
    v28 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    v30 = v46;
    v29 = v47;
    v31 = &v24[v28];
    v32 = v45;
    (*(v46 + 16))(v45, v31, v47);
    sub_1C1AA5A14(&qword_1EDE6B830, MEMORY[0x1E69695A8]);
    v33 = sub_1C1B95858();
    v35 = v34;
    (*(v30 + 8))(v32, v29);
    v36 = sub_1C1AC7650(v33, v35, &v48);

    *(v27 + 10) = v36;
    *(v27 + 18) = 2080;
    v37 = MEMORY[0x1C6906ED0](v13, &type metadata for DesiredPlacementType);
    v39 = sub_1C1AC7650(v37, v38, &v48);

    *(v27 + 20) = v39;
    _os_log_impl(&dword_1C1AA2000, v25, v26, "Context ID: %-*s Started prefetching content with types %s.", v27, 0x1Cu);
    v40 = v44;
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v40, -1, -1);
    MEMORY[0x1C6908230](v27, -1, -1);
  }

  sub_1C1AADF84(v13);
  v42 = v41;

  sub_1C1AAB208(v42, 0, 0);
}

uint64_t sub_1C1AABE90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id NewsSupplementalContext.init()()
{
  v1 = v0;
  v2 = (*(*(sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v4 = &v42 - v3;
  v5 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_advertisementType];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_creativeType];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleArticleId];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleArticleId];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleIsSponsored] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleIsSponsored] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticlePublicationMetadata] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticlePublicationMetadata] = 0;
  v9 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleRating];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleRating];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannel];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannel];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannelRating];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannelRating];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceContentProviderId] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceContentProviderId] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceSections] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceSections] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataCategories] = 0;
  v15 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataChannelId];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataTagId];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataContentProviderID] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataKeywords] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataLanguages] = 0;
  v17 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataRating];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataSectionId];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextCategories] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveCategories] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowCategories] = 0;
  v19 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextId];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveId];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowId];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextKeywords] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveKeywords] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowKeywords] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextLanguages] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveLanguages] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowLanguages] = 0;
  v22 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveChannelId];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveTagId];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowChannelId];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowTagId];
  *v25 = 0;
  *(v25 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextContentProviderId] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveContentProviderId] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowContentProviderId] = 0;
  v26 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextType];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveType];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowType];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_contentEnvironment];
  *v29 = 0;
  *(v29 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_isDraft] = 0;
  v30 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralCampaignId];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralLocation];
  *v32 = 0;
  *(v32 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralPublisherInventory] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_numOfArticlesSeenSinceLastInterstitial] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_playerAspectRatio] = 0;
  v33 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_subscriptionType];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueId];
  *v34 = 0;
  *(v34 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_superFeedMetadata] = 0;
  v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement] = 3;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_anfComponentMetadataInternal] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsDraftInternal] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsCurrentInternal] = 0;
  v35 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal];
  *v35 = 0;
  *(v35 + 1) = 0;
  if (([objc_opt_self() isActiveClientInfoSet] & 1) == 0)
  {
    v36 = sub_1C1B95028();
    (*(*(v36 - 8) + 56))(v4, 1, 1, v36);
    sub_1C1B95008();
    v37 = sub_1C1B94FF8();
    v38 = swift_allocObject();
    v39 = MEMORY[0x1E69E85E0];
    *(v38 + 16) = v37;
    *(v38 + 24) = v39;
    sub_1C1AE33F8(0, 0, v4, &unk_1C1B9AFA0, v38);
  }

  v40 = type metadata accessor for NewsSupplementalContext();
  v42.receiver = v1;
  v42.super_class = v40;
  return objc_msgSendSuper2(&v42, sel_init);
}

uint64_t sub_1C1AAC3E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1AAC418(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1C1AAC4F4(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void sub_1C1AAC78C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataContentProviderID;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1C1AAC820()
{
  v1 = sub_1C1B945F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v6 = sub_1C1B94BE8();
  sub_1C1AB4454(v6, qword_1EDE6D058);
  v7 = v0;
  v8 = sub_1C1B94BC8();
  v9 = sub_1C1B95108();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v63 = v60;
    *v10 = 67109378;
    *(v10 + 4) = 36;
    *(v10 + 8) = 2080;
    v11 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v2 + 16))(v5, &v7[v11], v1);
    sub_1C1AA5A14(&qword_1EDE6B830, MEMORY[0x1E69695A8]);
    v12 = sub_1C1B95858();
    v13 = v5;
    v14 = v1;
    v15 = v2;
    v17 = v16;
    (*(v15 + 8))(v13, v14);
    v18 = sub_1C1AC7650(v12, v17, &v63);
    v2 = v15;
    v1 = v14;
    v5 = v13;

    *(v10 + 10) = v18;
    _os_log_impl(&dword_1C1AA2000, v8, v9, "Context ID: %-*s Context is requesting a sponsorship ad.", v10, 0x12u);
    v19 = v60;
    sub_1C1AA86F8(v60);
    MEMORY[0x1C6908230](v19, -1, -1);
    MEMORY[0x1C6908230](v10, -1, -1);
  }

  v20 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v21 = *&v7[v20];
  if (!v21 || ((v22 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement, swift_beginAccess(), *(v21 + v22)) ? (v23 = *(v21 + v22) == 3) : (v23 = 1), v23))
  {
    v24 = v7;
    v25 = sub_1C1B94BC8();
    v26 = sub_1C1B95128();

    if (!os_log_type_enabled(v25, v26))
    {
LABEL_14:

      return 0;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v61[0] = v28;
    *v27 = 67109378;
    *(v27 + 4) = 36;
    *(v27 + 8) = 2080;
    v29 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v2 + 16))(v5, &v24[v29], v1);
    sub_1C1AA5A14(&qword_1EDE6B830, MEMORY[0x1E69695A8]);
    v30 = sub_1C1B95858();
    v32 = v31;
    (*(v2 + 8))(v5, v1);
    v33 = sub_1C1AC7650(v30, v32, v61);

    *(v27 + 10) = v33;
    v34 = "Context ID: %-*s Sponsorship placement is either not set or is of unsupported type banner.";
LABEL_13:
    _os_log_impl(&dword_1C1AA2000, v25, v26, v34, v27, 0x12u);
    sub_1C1AA86F8(v28);
    MEMORY[0x1C6908230](v28, -1, -1);
    MEMORY[0x1C6908230](v27, -1, -1);
    goto LABEL_14;
  }

  if (qword_1EDE6BFF0 != -1)
  {
    swift_once();
  }

  if (!qword_1EDE6BFF8 || (v36 = sub_1C1AAD708(v7)) == 0)
  {
    v53 = v7;
    v25 = sub_1C1B94BC8();
    v26 = sub_1C1B95128();

    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_14;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v61[0] = v28;
    *v27 = 67109378;
    *(v27 + 4) = 36;
    *(v27 + 8) = 2080;
    v54 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v2 + 16))(v5, &v53[v54], v1);
    sub_1C1AA5A14(&qword_1EDE6B830, MEMORY[0x1E69695A8]);
    v55 = sub_1C1B95858();
    v57 = v56;
    (*(v2 + 8))(v5, v1);
    v58 = sub_1C1AC7650(v55, v57, v61);

    *(v27 + 10) = v58;
    v34 = "Context ID: %-*s No sponsorship content info available.";
    goto LABEL_13;
  }

  v37 = v36;
  v38 = v7;
  v39 = sub_1C1B94BC8();
  v40 = sub_1C1B95108();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v62 = v42;
    *v41 = 67109890;
    *(v41 + 4) = 36;
    *(v41 + 8) = 2080;
    v43 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v2 + 16))(v5, &v38[v43], v1);
    sub_1C1AA5A14(&qword_1EDE6B830, MEMORY[0x1E69695A8]);
    v44 = sub_1C1B95858();
    v46 = v45;
    (*(v2 + 8))(v5, v1);
    v47 = sub_1C1AC7650(v44, v46, &v62);

    *(v41 + 10) = v47;
    *(v41 + 18) = 1024;
    *(v41 + 20) = 36;
    *(v41 + 24) = 2080;
    v48 = &v37[OBJC_IVAR___APPCPromotedContent_identifier];
    swift_beginAccess();
    v50 = *v48;
    v49 = v48[1];

    v51 = sub_1C1AC7650(v50, v49, &v62);

    *(v41 + 26) = v51;
    _os_log_impl(&dword_1C1AA2000, v39, v40, "Context ID: %-*s Content ID: %-*s Context has returned a sponsorship ad.", v41, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v42, -1, -1);
    MEMORY[0x1C6908230](v41, -1, -1);
  }

  v52 = sub_1C1AB5618(v37, 0, 0, 0);
  return v52;
}

unint64_t sub_1C1AAD060()
{
  type metadata accessor for ImageDownloader();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_1C1AAD0D0(MEMORY[0x1E69E7CC0]);
  *(v0 + 112) = result;
  qword_1EDE6B168 = v0;
  return result;
}

unint64_t sub_1C1AAD0D0(uint64_t a1)
{
  v2 = sub_1C1AC1F08(&unk_1EBF080C0, &unk_1C1B9A690);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1C1AC1F08(&unk_1EBF082E0, &unk_1C1B9AF10);
    v8 = sub_1C1B955C8();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1C1AA7E30(v10, v6, &unk_1EBF080C0, &unk_1C1B9A690);
      result = sub_1C1AD8BA0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1C1B944A8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 16 * v14;
      v18 = v9[8];
      *v17 = *v9;
      *(v17 + 8) = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_1C1AAD2FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1C1AAD360()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C1B94D78();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = sub_1C1B94D78();
  v4 = [v2 dataForKey_];

  if (v4)
  {
    v5 = sub_1C1B944D8();
    v7 = v6;

    if ((sub_1C1B8CB68() & 1) == 0)
    {
      sub_1C1B8CDB0(v5, v7);
    }

    sub_1C1AE4A00(v5, v7);
  }

  else
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C1B94BE8();
    sub_1C1AB4454(v8, qword_1EDE6D058);
    oslog = sub_1C1B94BC8();
    v9 = sub_1C1B95128();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C1AA2000, oslog, v9, "Sponsorship ad manager found no data to restore cache.", v10, 2u);
      MEMORY[0x1C6908230](v10, -1, -1);
    }
  }
}

uint64_t sub_1C1AAD570()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x1E69DDAB0];
  v3 = [objc_opt_self() mainQueue];
  v4 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_1C1AB866C;
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1C1AB8450;
  v9[3] = &unk_1F41540D0;
  v5 = _Block_copy(v9);

  v6 = [v1 addObserverForName:v2 object:0 queue:v3 usingBlock:v5];
  _Block_release(v5);

  v7 = *(v0 + 16);
  *(v0 + 16) = v6;
  return swift_unknownObjectRelease();
}

uint64_t sub_1C1AAD6D0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

char *sub_1C1AAD708(char *a1)
{
  v3 = sub_1C1B945F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v9 = *&a1[v8];
  if (!v9 || (v10 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement, swift_beginAccess(), v11 = *(v9 + v10), v11 == 3))
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C1B94BE8();
    sub_1C1AB4454(v12, qword_1EDE6D058);
    v13 = a1;
    v14 = sub_1C1B94BC8();
    v15 = sub_1C1B95128();

    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_21;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v71[0] = v17;
    *v16 = 67109378;
    *(v16 + 4) = 36;
    *(v16 + 8) = 2080;
    v18 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v4 + 16))(v7, &v13[v18], v3);
    v19 = sub_1C1B945A8();
    v21 = v20;
    (*(v4 + 8))(v7, v3);
    v22 = sub_1C1AC7650(v19, v21, v71);

    *(v16 + 10) = v22;
    v23 = "Context ID: %-*s No sponsorship placement specified.";
LABEL_20:
    _os_log_impl(&dword_1C1AA2000, v14, v15, v23, v16, 0x12u);
    sub_1C1AA86F8(v17);
    MEMORY[0x1C6908230](v17, -1, -1);
    MEMORY[0x1C6908230](v16, -1, -1);
LABEL_21:

    return 0;
  }

  v24 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_superFeedMetadata;
  swift_beginAccess();
  v25 = *(v9 + v24);
  if (!v25 || !*(v25 + 16))
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v34 = sub_1C1B94BE8();
    sub_1C1AB4454(v34, qword_1EDE6D058);
    v35 = a1;
    v14 = sub_1C1B94BC8();
    v15 = sub_1C1B95128();

    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_21;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v70 = v17;
    *v16 = 67109378;
    *(v16 + 4) = 36;
    *(v16 + 8) = 2080;
    v36 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v4 + 16))(v7, &v35[v36], v3);
    v37 = sub_1C1B945A8();
    v39 = v38;
    (*(v4 + 8))(v7, v3);
    v40 = sub_1C1AC7650(v37, v39, &v70);

    *(v16 + 10) = v40;
    v23 = "Context ID: %-*s No sponsorship keys specified.";
    goto LABEL_20;
  }

  LOBYTE(v71[0]) = v11;

  v27 = v1;
  v28 = sub_1C1B8B1B8(v26, v71, a1);
  v29 = v28;
  if (v28 >> 62)
  {
    if (sub_1C1B953A8())
    {
      goto LABEL_11;
    }
  }

  else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    if ((v29 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x1C6907490](0, v29);
      goto LABEL_14;
    }

    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v30 = *(v29 + 32);
LABEL_14:
      v31 = v30;

      v32 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
      swift_beginAccess();
      if (*&v31[v32] == 1030)
      {
        v33 = sub_1C1B90D0C(a1, 1030);
      }

      else
      {
        v33 = sub_1C1B90F08(v31, a1);
      }

      v42 = v33;
      swift_beginAccess();
      v43 = v42;
      MEMORY[0x1C6906EA0]();
      if (*((*(v27 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v27 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v64 = *((*(v27 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C1B94F08();
      }

      sub_1C1B94F48();
      swift_endAccess();

      return v43;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (qword_1EDE6C4E0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v44 = sub_1C1B94BE8();
  sub_1C1AB4454(v44, qword_1EDE6D058);

  v45 = a1;
  v46 = sub_1C1B94BC8();
  v47 = sub_1C1B95108();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v71[0] = v69;
    *v48 = 67109634;
    *(v48 + 4) = 36;
    *(v48 + 8) = 2080;
    v68 = v47;
    v49 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v4 + 16))(v7, &v45[v49], v3);
    v50 = sub_1C1B945A8();
    v52 = v51;
    (*(v4 + 8))(v7, v3);
    v53 = sub_1C1AC7650(v50, v52, v71);

    *(v48 + 10) = v53;
    *(v48 + 18) = 2080;
    v54 = MEMORY[0x1C6906ED0](v25, MEMORY[0x1E69E6158]);
    v56 = v55;

    v57 = sub_1C1AC7650(v54, v56, v71);

    *(v48 + 20) = v57;
    _os_log_impl(&dword_1C1AA2000, v46, v68, "Context ID: %-*s No sponsorship ads found for with keys %s.", v48, 0x1Cu);
    v58 = v69;
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v58, -1, -1);
    MEMORY[0x1C6908230](v48, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v59 = *(v27 + 24);
  if (v59 >> 62)
  {
    if (v59 < 0)
    {
      v65 = *(v27 + 24);
    }

    v60 = sub_1C1B953A8();
  }

  else
  {
    v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v60)
  {
    v61 = 201;
  }

  else
  {
    v61 = 1010;
  }

  v62 = sub_1C1B90D0C(v45, v61);
  swift_beginAccess();
  v63 = v62;
  MEMORY[0x1C6906EA0]();
  if (*((*(v27 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v27 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v66 = *((*(v27 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C1B94F08();
  }

  sub_1C1B94F48();
  swift_endAccess();
  return v63;
}

void sub_1C1AADF84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return;
  }

  v3 = (a1 + 40);
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v5 = *(v3 - 1);
    v6 = *v3 >> 5;
    if (v6 > 3)
    {
      if (*v3 >> 5 > 5u)
      {
        if (v6 == 6)
        {
          if (v5 < 0)
          {
            goto LABEL_167;
          }

          if (v5)
          {
            v13 = *(v3 - 1);
            v14 = sub_1C1B94F28();
            *(v14 + 16) = v5;
            memset_pattern16((v14 + 32), &unk_1C1BA2190, 8 * v5);
          }

          else
          {
            v5 = *(v2 + 16);
            v14 = v2;
          }

          v43 = *(v4 + 2);
          v44 = v43 + v5;
          if (__OFADD__(v43, v5))
          {
            goto LABEL_173;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v44 <= *(v4 + 3) >> 1)
          {
            if (!*(v14 + 16))
            {
              goto LABEL_98;
            }
          }

          else
          {
            if (v43 <= v44)
            {
              v48 = v43 + v5;
            }

            else
            {
              v48 = v43;
            }

            v4 = sub_1C1AAB0E8(isUniquelyReferenced_nonNull_native, v48, 1, v4);
            if (!*(v14 + 16))
            {
LABEL_98:

              if (v5)
              {
                goto LABEL_185;
              }

              goto LABEL_4;
            }
          }

          v46 = *(v4 + 2);
          if ((*(v4 + 3) >> 1) - v46 < v5)
          {
            goto LABEL_195;
          }

          memcpy(&v4[8 * v46 + 32], (v14 + 32), 8 * v5);

          if (v5)
          {
            v47 = *(v4 + 2);
            v28 = __OFADD__(v47, v5);
            v29 = v47 + v5;
            if (v28)
            {
              goto LABEL_198;
            }

            goto LABEL_3;
          }
        }

        else
        {
          if (v5 < 0)
          {
            goto LABEL_166;
          }

          if (v5)
          {
            v21 = *(v3 - 1);
            v22 = sub_1C1B94F28();
            *(v22 + 16) = v5;
            memset_pattern16((v22 + 32), &unk_1C1BA2180, 8 * v5);
          }

          else
          {
            v5 = *(v2 + 16);
            v22 = v2;
          }

          v67 = *(v4 + 2);
          v68 = v67 + v5;
          if (__OFADD__(v67, v5))
          {
            goto LABEL_174;
          }

          v69 = swift_isUniquelyReferenced_nonNull_native();
          if (v69 && v68 <= *(v4 + 3) >> 1)
          {
            if (!*(v22 + 16))
            {
              goto LABEL_162;
            }
          }

          else
          {
            if (v67 <= v68)
            {
              v72 = v67 + v5;
            }

            else
            {
              v72 = v67;
            }

            v4 = sub_1C1AAB0E8(v69, v72, 1, v4);
            if (!*(v22 + 16))
            {
LABEL_162:

              if (v5)
              {
                __break(1u);
                return;
              }

              goto LABEL_4;
            }
          }

          v70 = *(v4 + 2);
          if ((*(v4 + 3) >> 1) - v70 < v5)
          {
            goto LABEL_188;
          }

          memcpy(&v4[8 * v70 + 32], (v22 + 32), 8 * v5);

          if (v5)
          {
            v71 = *(v4 + 2);
            v28 = __OFADD__(v71, v5);
            v29 = v71 + v5;
            if (v28)
            {
              goto LABEL_199;
            }

            goto LABEL_3;
          }
        }
      }

      else if (v6 == 4)
      {
        if (v5 < 0)
        {
          goto LABEL_169;
        }

        if (v5)
        {
          v9 = *(v3 - 1);
          v10 = sub_1C1B94F28();
          *(v10 + 16) = v5;
          memset_pattern16((v10 + 32), &unk_1C1BA21B0, 8 * v5);
        }

        else
        {
          v5 = *(v2 + 16);
          v10 = v2;
        }

        v31 = *(v4 + 2);
        v32 = v31 + v5;
        if (__OFADD__(v31, v5))
        {
          goto LABEL_176;
        }

        v33 = swift_isUniquelyReferenced_nonNull_native();
        if (v33 && v32 <= *(v4 + 3) >> 1)
        {
          if (!*(v10 + 16))
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v31 <= v32)
          {
            v36 = v31 + v5;
          }

          else
          {
            v36 = v31;
          }

          v4 = sub_1C1AAB0E8(v33, v36, 1, v4);
          if (!*(v10 + 16))
          {
LABEL_66:

            if (v5)
            {
              goto LABEL_187;
            }

            goto LABEL_4;
          }
        }

        v34 = *(v4 + 2);
        if ((*(v4 + 3) >> 1) - v34 < v5)
        {
          goto LABEL_193;
        }

        memcpy(&v4[8 * v34 + 32], (v10 + 32), 8 * v5);

        if (v5)
        {
          v35 = *(v4 + 2);
          v28 = __OFADD__(v35, v5);
          v29 = v35 + v5;
          if (v28)
          {
            goto LABEL_200;
          }

          goto LABEL_3;
        }
      }

      else
      {
        if (v5 < 0)
        {
          goto LABEL_168;
        }

        if (v5)
        {
          v17 = *(v3 - 1);
          v18 = sub_1C1B94F28();
          *(v18 + 16) = v5;
          memset_pattern16((v18 + 32), &unk_1C1BA21A0, 8 * v5);
        }

        else
        {
          v5 = *(v2 + 16);
          v18 = v2;
        }

        v55 = *(v4 + 2);
        v56 = v55 + v5;
        if (__OFADD__(v55, v5))
        {
          goto LABEL_180;
        }

        v57 = swift_isUniquelyReferenced_nonNull_native();
        if (v57 && v56 <= *(v4 + 3) >> 1)
        {
          if (!*(v18 + 16))
          {
            goto LABEL_130;
          }
        }

        else
        {
          if (v55 <= v56)
          {
            v60 = v55 + v5;
          }

          else
          {
            v60 = v55;
          }

          v4 = sub_1C1AAB0E8(v57, v60, 1, v4);
          if (!*(v18 + 16))
          {
LABEL_130:

            if (v5)
            {
              goto LABEL_183;
            }

            goto LABEL_4;
          }
        }

        v58 = *(v4 + 2);
        if ((*(v4 + 3) >> 1) - v58 < v5)
        {
          goto LABEL_194;
        }

        memcpy(&v4[8 * v58 + 32], (v18 + 32), 8 * v5);

        if (v5)
        {
          v59 = *(v4 + 2);
          v28 = __OFADD__(v59, v5);
          v29 = v59 + v5;
          if (v28)
          {
            goto LABEL_197;
          }

          goto LABEL_3;
        }
      }

      goto LABEL_4;
    }

    if (*v3 >> 5 <= 1u)
    {
      if (v6)
      {
        if (v5 < 0)
        {
          goto LABEL_171;
        }

        if (v5)
        {
          v15 = *(v3 - 1);
          v16 = sub_1C1B94F28();
          *(v16 + 16) = v5;
          memset_pattern16((v16 + 32), &unk_1C1BA21E0, 8 * v5);
        }

        else
        {
          v5 = *(v2 + 16);
          v16 = v2;
        }

        v49 = *(v4 + 2);
        v50 = v49 + v5;
        if (__OFADD__(v49, v5))
        {
          goto LABEL_175;
        }

        v51 = swift_isUniquelyReferenced_nonNull_native();
        if (v51 && v50 <= *(v4 + 3) >> 1)
        {
          if (!*(v16 + 16))
          {
            goto LABEL_114;
          }
        }

        else
        {
          if (v49 <= v50)
          {
            v54 = v49 + v5;
          }

          else
          {
            v54 = v49;
          }

          v4 = sub_1C1AAB0E8(v51, v54, 1, v4);
          if (!*(v16 + 16))
          {
LABEL_114:

            if (v5)
            {
              goto LABEL_184;
            }

            goto LABEL_4;
          }
        }

        v52 = *(v4 + 2);
        if ((*(v4 + 3) >> 1) - v52 < v5)
        {
          goto LABEL_190;
        }

        memcpy(&v4[8 * v52 + 32], (v16 + 32), 8 * v5);

        if (v5)
        {
          v53 = *(v4 + 2);
          v28 = __OFADD__(v53, v5);
          v29 = v53 + v5;
          if (v28)
          {
            goto LABEL_201;
          }

          goto LABEL_3;
        }
      }

      else
      {
        if (v5 < 0)
        {
          goto LABEL_170;
        }

        if (v5)
        {
          v7 = *(v3 - 1);
          v8 = sub_1C1B94F28();
          *(v8 + 16) = v5;
          bzero((v8 + 32), 8 * v5);
        }

        else
        {
          v5 = *(v2 + 16);
          v8 = v2;
        }

        v23 = *(v4 + 2);
        v24 = v23 + v5;
        if (__OFADD__(v23, v5))
        {
          goto LABEL_178;
        }

        v25 = swift_isUniquelyReferenced_nonNull_native();
        if (v25 && v24 <= *(v4 + 3) >> 1)
        {
          if (!*(v8 + 16))
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (v23 <= v24)
          {
            v30 = v23 + v5;
          }

          else
          {
            v30 = v23;
          }

          v4 = sub_1C1AAB0E8(v25, v30, 1, v4);
          if (!*(v8 + 16))
          {
LABEL_50:

            if (v5)
            {
              goto LABEL_186;
            }

            goto LABEL_4;
          }
        }

        v26 = *(v4 + 2);
        if ((*(v4 + 3) >> 1) - v26 < v5)
        {
          goto LABEL_191;
        }

        memcpy(&v4[8 * v26 + 32], (v8 + 32), 8 * v5);

        if (v5)
        {
          v27 = *(v4 + 2);
          v28 = __OFADD__(v27, v5);
          v29 = v27 + v5;
          if (v28)
          {
            goto LABEL_203;
          }

LABEL_3:
          *(v4 + 2) = v29;
          goto LABEL_4;
        }
      }

      goto LABEL_4;
    }

    if (v6 == 2)
    {
      if (v5 < 0)
      {
        goto LABEL_172;
      }

      if (v5)
      {
        v11 = *(v3 - 1);
        v12 = sub_1C1B94F28();
        *(v12 + 16) = v5;
        memset_pattern16((v12 + 32), &unk_1C1BA21D0, 8 * v5);
      }

      else
      {
        v5 = *(v2 + 16);
        v12 = v2;
      }

      v37 = *(v4 + 2);
      v38 = v37 + v5;
      if (__OFADD__(v37, v5))
      {
        goto LABEL_179;
      }

      v39 = swift_isUniquelyReferenced_nonNull_native();
      if (v39 && v38 <= *(v4 + 3) >> 1)
      {
        if (!*(v12 + 16))
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (v37 <= v38)
        {
          v42 = v37 + v5;
        }

        else
        {
          v42 = v37;
        }

        v4 = sub_1C1AAB0E8(v39, v42, 1, v4);
        if (!*(v12 + 16))
        {
LABEL_82:

          if (v5)
          {
            goto LABEL_182;
          }

          goto LABEL_4;
        }
      }

      v40 = *(v4 + 2);
      if ((*(v4 + 3) >> 1) - v40 < v5)
      {
        goto LABEL_189;
      }

      memcpy(&v4[8 * v40 + 32], (v12 + 32), 8 * v5);

      if (v5)
      {
        v41 = *(v4 + 2);
        v28 = __OFADD__(v41, v5);
        v29 = v41 + v5;
        if (v28)
        {
          goto LABEL_202;
        }

        goto LABEL_3;
      }

      goto LABEL_4;
    }

    if (v5 < 0)
    {
      break;
    }

    if (v5)
    {
      v19 = *(v3 - 1);
      v20 = sub_1C1B94F28();
      *(v20 + 16) = v5;
      memset_pattern16((v20 + 32), &unk_1C1BA21C0, 8 * v5);
    }

    else
    {
      v5 = *(v2 + 16);
      v20 = v2;
    }

    v61 = *(v4 + 2);
    v62 = v61 + v5;
    if (__OFADD__(v61, v5))
    {
      goto LABEL_177;
    }

    v63 = swift_isUniquelyReferenced_nonNull_native();
    if (v63 && v62 <= *(v4 + 3) >> 1)
    {
      if (!*(v20 + 16))
      {
        goto LABEL_146;
      }
    }

    else
    {
      if (v61 <= v62)
      {
        v66 = v61 + v5;
      }

      else
      {
        v66 = v61;
      }

      v4 = sub_1C1AAB0E8(v63, v66, 1, v4);
      if (!*(v20 + 16))
      {
LABEL_146:

        if (v5)
        {
          goto LABEL_181;
        }

        goto LABEL_4;
      }
    }

    v64 = *(v4 + 2);
    if ((*(v4 + 3) >> 1) - v64 < v5)
    {
      goto LABEL_192;
    }

    memcpy(&v4[8 * v64 + 32], (v20 + 32), 8 * v5);

    if (v5)
    {
      v65 = *(v4 + 2);
      v28 = __OFADD__(v65, v5);
      v29 = v65 + v5;
      if (v28)
      {
        goto LABEL_196;
      }

      goto LABEL_3;
    }

LABEL_4:
    v3 += 16;
    if (!--v1)
    {
      return;
    }
  }

  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
}

uint64_t sub_1C1AAE7B4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C1B953A8())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x1C6907490](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_1C1B954F8();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        sub_1C1B95528();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        sub_1C1B95538();
        sub_1C1B95508();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v12;
}

char *sub_1C1AAE960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, double a7, double a8)
{
  v201 = a4;
  v202 = a6;
  v219 = a5;
  v220 = a1;
  v215 = a2;
  v11 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v196 = &v182 - v13;
  v14 = sub_1C1B94588();
  v217 = *(v14 - 8);
  v218 = v14;
  v15 = *(v217 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v184 = &v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v214 = &v182 - v18;
  v19 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v198 = &v182 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v216 = &v182 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v213 = &v182 - v25;
  v26 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v182 - v28;
  v30 = sub_1C1B945F8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v182 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v182 - v36;
  sub_1C1B945E8();
  v38 = type metadata accessor for ContentRepresentation();
  v39 = objc_allocWithZone(v38);
  v40 = sub_1C1B945A8();
  v41 = &v39[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v41 = v40;
  v41[1] = v42;
  v211 = v31;
  (*(v31 + 16))(&v39[OBJC_IVAR___APPCContentRepresentation_id], v37, v30);
  v200 = a3;
  *&v39[OBJC_IVAR___APPCContentRepresentation_adType] = a3;
  *&v39[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = 0;
  *&v39[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = 0;
  *&v39[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
  v43 = &v39[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v43 = a7;
  v43[1] = a8;
  *&v39[OBJC_IVAR___APPCContentRepresentation_tapAction] = 0;
  *&v39[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = 0;
  v225.receiver = v39;
  v225.super_class = v38;
  v44 = objc_msgSendSuper2(&v225, sel_init);
  v45 = *(v31 + 8);
  v210 = v37;
  v45(v37, v30);
  sub_1C1B945E8();
  v212 = sub_1C1B945A8();
  v205 = v46;
  v208 = v31 + 8;
  v209 = v45;
  v45(v35, v30);
  v47 = sub_1C1B944A8();
  v48 = *(*(v47 - 8) + 56);
  v207 = v29;
  (v48)(v29, 1, 1, v47);
  v49 = v218;
  v50 = *(v217 + 56);
  (v50)(v213, 1, 1, v218);
  swift_unknownObjectRetain();
  sub_1C1B94518();
  sub_1C1AC1F08(&qword_1EBF08D30, qword_1C1B9E9E0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1C1B9FE60;
  v194 = v51;
  v206 = v44;
  *(v51 + 32) = v44;
  (v50)(v216, 1, 1, v49);
  v199 = type metadata accessor for PromotedContent();
  v52 = objc_allocWithZone(v199);
  v53 = &v52[OBJC_IVAR___APPCPromotedContent_impressionId];
  *v53 = 0;
  *(v53 + 1) = 0;
  v195 = v53;
  v187 = &v52[OBJC_IVAR___APPCPromotedContent_context];
  swift_unknownObjectWeakInit();
  v188 = &v52[OBJC_IVAR___APPCPromotedContent_metaData];
  *&v52[OBJC_IVAR___APPCPromotedContent_metaData] = 0;
  v189 = &v52[OBJC_IVAR___APPCPromotedContent_disclosureURL];
  v48();
  v54 = v30;
  v55 = &v52[OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload];
  *v55 = 0;
  v55[1] = 0;
  v56 = &v52[OBJC_IVAR___APPCPromotedContent_brandName];
  *v56 = 0;
  v56[1] = 0;
  v57 = &v52[OBJC_IVAR___APPCPromotedContent_campaignText];
  *v57 = 0;
  v57[1] = 0;
  v191 = v57;
  v192 = &v52[OBJC_IVAR___APPCPromotedContent_installAttribution];
  *v192 = 0;
  *&v52[OBJC_IVAR___APPCPromotedContent_bestRepresentation] = 0;
  v193 = &v52[OBJC_IVAR___APPCPromotedContent_error];
  *&v52[OBJC_IVAR___APPCPromotedContent_error] = 0;
  v190 = &v52[OBJC_IVAR___APPCPromotedContent_startDate];
  v50();
  *&v52[OBJC_IVAR___APPCPromotedContent_mediaMetricHelper] = 0;
  v52[OBJC_IVAR___APPCPromotedContent_attachedToView] = 0;
  v52[OBJC_IVAR___APPCPromotedContent_vended] = 0;
  v52[OBJC_IVAR___APPCPromotedContent_discarded] = 0;
  v52[OBJC_IVAR___APPCPromotedContent_consumed] = 0;
  v204 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  *&v52[OBJC_IVAR___APPCPromotedContent_impressionThreshold] = 0x3FF0000000000000;
  (v50)(&v52[OBJC_IVAR___APPCPromotedContent_videoRequestStartDate], 1, 1, v49);
  v52[OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy] = 0;
  v58 = OBJC_IVAR___APPCPromotedContent_metricEventsTracking;
  v59 = type metadata accessor for MetricEventsTracker();
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  v183 = v59;
  swift_allocObject();
  v62 = sub_1C1AB0510();
  v197 = v58;
  *&v52[v58] = v62;
  *&v52[OBJC_IVAR___APPCPromotedContent_unfilledReasonDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v63 = &v52[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  *v63 = 0;
  v63[1] = 0;
  v64 = &v52[OBJC_IVAR___APPCPromotedContent_overriddenAdType];
  *v64 = 0;
  v64[8] = 1;
  v65 = &v52[OBJC_IVAR___APPCPromotedContent__contextIdentifier];
  v66 = *(v211 + 56);
  v211 += 56;
  v186 = v66;
  v66(&v52[OBJC_IVAR___APPCPromotedContent__contextIdentifier], 1, 1, v30);
  v67 = &v52[OBJC_IVAR___APPCPromotedContent_discardReason];
  *v67 = 0;
  v67[8] = 1;
  v68 = v215;
  *&v52[OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete] = MEMORY[0x1E69E7CC0];
  *&v52[OBJC_IVAR___APPCPromotedContent_appImpressionTask] = 0;
  v69 = &v52[OBJC_IVAR___APPCPromotedContent_appImpression];
  *(v69 + 4) = 0;
  *v69 = 0u;
  *(v69 + 1) = 0u;
  v52[OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView] = 0;
  if (v68)
  {
    v70 = v206;
    v71 = v68;
    v72 = v220;
  }

  else
  {
    strcpy(v221, "placeholder: ");
    HIWORD(v221[1]) = -4864;
    v73 = v206;
    v74 = v210;
    sub_1C1B945E8();
    v75 = sub_1C1B945A8();
    v77 = v76;
    v209(v74, v30);
    MEMORY[0x1C6906DF0](v75, v77);
    v68 = 0;
    v54 = v30;

    v72 = v221[0];
    v71 = v221[1];
  }

  LODWORD(v203) = v68 == 0;
  v52[OBJC_IVAR___APPCPromotedContent_placeholder] = v203;
  v78 = &v52[OBJC_IVAR___APPCPromotedContent_identifier];
  v220 = v72;
  *v78 = v72;
  v78[1] = v71;
  swift_beginAccess();
  v79 = v219;
  swift_unknownObjectWeakAssign();
  v215 = v71;

  v80 = [v79 identifier];
  v81 = v196;
  sub_1C1B945D8();

  v82 = v54;
  v186(v81, 0, 1, v54);
  swift_beginAccess();
  sub_1C1AB0860(v81, v65);
  swift_endAccess();
  v83 = v188;
  swift_beginAccess();
  v84 = *v83;
  *v83 = 0;

  v85 = v189;
  swift_beginAccess();
  sub_1C1B7953C(v207, v85, &qword_1EBF07AC8, &qword_1C1B9CED0);
  swift_endAccess();
  swift_beginAccess();
  v86 = v55[1];
  *v55 = 0;
  v55[1] = 0;

  *&v52[OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation] = 0;
  swift_beginAccess();
  v87 = v56[1];
  *v56 = 0;
  v56[1] = 0;

  v88 = v191;
  swift_beginAccess();
  v89 = v88[1];
  *v88 = 0;
  v88[1] = 0;

  v90 = v190;
  swift_beginAccess();
  sub_1C1B7953C(v213, v90, &qword_1EBF07F50, &qword_1C1B9A590);
  swift_endAccess();
  (*(v217 + 16))(&v52[OBJC_IVAR___APPCPromotedContent_expirationDate], v214, v218);
  *&v52[OBJC_IVAR___APPCPromotedContent_serverUnfilledReason] = v202;
  *&v52[OBJC_IVAR___APPCPromotedContent_representations] = v194;
  v91 = v192;
  swift_beginAccess();
  v92 = *v91;
  *v91 = 0;

  v93 = v193;
  swift_beginAccess();
  v94 = *v93;
  *v93 = 0;

  v95 = &v52[OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp];
  *v95 = 0;
  v95[8] = 1;
  v96 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v97 = *&v79[v96];
  if (v97 && (v98 = (v97 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement), swift_beginAccess(), (v99 = v98[1]) != 0))
  {
    v100 = sub_1C1AB08D0(*v98, v99);
    v102 = v209;
    v101 = v210;
  }

  else
  {
    v103 = [v219 current];
    v102 = v209;
    v101 = v210;
    if (v103)
    {
      v100 = [v103 placement];
      swift_unknownObjectRelease();
    }

    else
    {
      v100 = 0;
    }
  }

  v185 = v54;
  *&v52[OBJC_IVAR___APPCPromotedContent_placement] = v100;
  v104 = v204;
  swift_beginAccess();
  *&v52[v104] = 0x3FF0000000000000;
  v105 = v195;
  swift_beginAccess();
  v106 = *(v105 + 1);
  *v105 = 0;
  *(v105 + 1) = 0;

  v107 = &v52[OBJC_IVAR___APPCPromotedContent_journeyIdentifier];
  v108 = v205;
  *v107 = v212;
  v107[1] = v108;
  sub_1C1AA7E30(v216, &v52[OBJC_IVAR___APPCPromotedContent_receivedReferenceTime], &qword_1EBF07F50, &qword_1C1B9A590);
  *&v52[OBJC_IVAR___APPCPromotedContent_adServerEnvironments] = 0;

  v109 = [v219 identifier];
  sub_1C1B945D8();

  v110 = sub_1C1B945A8();
  v112 = v111;
  v102(v101, v82);
  v210 = objc_opt_self();
  [v210 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v113 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v195 = type metadata accessor for PrimitiveCreator();
  v114 = objc_allocWithZone(v195);
  v115 = &v114[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v116 = v215;
  *v115 = v220;
  v115[1] = v116;
  v117 = &v114[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v202 = v110;
  *v117 = v110;
  v117[1] = v112;
  v118 = &v114[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v118 = v212;
  v118[1] = v108;
  v119 = &v114[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v119 = 0;
  v119[1] = 0;
  v114[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = v203;
  *&v114[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v113;
  *&v114[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v114[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  v120 = qword_1EDE6C538;

  v211 = v112;

  swift_unknownObjectRetain();
  if (v120 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(qword_1EDE6C540, &v114[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v121 = v195;
  v224.receiver = v114;
  v224.super_class = v195;
  v122 = objc_msgSendSuper2(&v224, sel_init);
  swift_unknownObjectRelease();
  v196 = OBJC_IVAR___APPCPromotedContent_primitiveCreator;
  *&v52[OBJC_IVAR___APPCPromotedContent_primitiveCreator] = v122;
  v221[0] = 6911329;
  v221[1] = 0xE300000000000000;
  sub_1C1B945E8();
  v123 = sub_1C1B945A8();
  v125 = v124;
  v209(v101, v185);
  MEMORY[0x1C6906DF0](v123, v125);

  v127 = v221[0];
  v126 = v221[1];
  [v210 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v128 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v129 = objc_allocWithZone(v121);
  v130 = &v129[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v131 = v215;
  *v130 = v220;
  v130[1] = v131;
  v132 = &v129[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v133 = v211;
  *v132 = v202;
  v132[1] = v133;
  v134 = &v129[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v134 = v127;
  v134[1] = v126;
  v135 = &v129[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v135 = 0;
  v135[1] = 0;
  v129[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = v203;
  *&v129[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v128;
  *&v129[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v129[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  sub_1C1AAD2FC(qword_1EDE6C540, &v129[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v223.receiver = v129;
  v223.super_class = v121;

  v136 = objc_msgSendSuper2(&v223, sel_init);
  v203 = OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator;
  *&v52[OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator] = v136;
  *&v52[OBJC_IVAR___APPCPromotedContent_diagnosticCode] = -1;
  [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  v137 = sub_1C1B94908();
  v138 = *(v137 + 48);
  v139 = *(v137 + 52);
  swift_allocObject();
  v140 = sub_1C1B948E8();
  v141 = v198;
  sub_1C1AA7E30(v216, v198, &qword_1EBF07F50, &qword_1C1B9A590);
  v143 = v217;
  v142 = v218;
  v144 = (*(v217 + 48))(v141, 1, v218);
  v208 = v140;
  if (v144 == 1)
  {
    sub_1C1AA7C8C(v141, &qword_1EBF07F50, &qword_1C1B9A590);
  }

  else
  {
    v145 = v184;
    (*(v143 + 32))(v184, v141, v142);
    sub_1C1B948D8();
    (*(v143 + 8))(v145, v142);
  }

  type metadata accessor for MetricsUnloadTracker();
  v146 = swift_allocObject();
  v146[2] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *(v146 + 24) = 0;
  v209 = v146;
  v146[4] = 1;
  v198 = *&v52[v196];
  swift_unknownObjectRetain();
  [v210 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v147 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v148 = 0;
  v149 = 0;
  v150 = *&v52[OBJC_IVAR___APPCPromotedContent_placement] - 7005;
  if (v150 <= 3)
  {
    v148 = qword_1C1BA4770[v150];
    v149 = qword_1C1BA4790[v150];
  }

  v196 = v148;
  type metadata accessor for JourneyMetricsHelper();
  swift_getObjectType();
  v151 = v215;

  v152 = v211;

  v153 = v208;

  v154 = v209;

  v155 = v151;
  v156 = v202;
  v157 = sub_1C1AB0E7C(v220, v155, v202, v152, v212, v205, v153, v154, v198, v147, v196, v149, 0, 0, 0, 0, 0, 1);
  *&v52[OBJC_IVAR___APPCPromotedContent_metricsHelper] = v157;
  [v157 setImpressionThresholdDuration_];
  v158 = *&v52[v203];
  swift_unknownObjectRetain();
  [v210 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v159 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v160 = v197;
  swift_beginAccess();
  if (*&v52[v160])
  {
    v161 = *&v52[v160];
  }

  else
  {
    v162 = *(v183 + 48);
    v163 = *(v183 + 52);
    swift_allocObject();
    v161 = sub_1C1AB0510();
  }

  type metadata accessor for DiagnosticMetricsHelper();
  swift_getObjectType();
  swift_unknownObjectRetain();
  *&v52[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper] = sub_1C1AB1708(v156, v211, v220, v215, v158, v159, v161);
  v52[OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd] = 0;
  v52[OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd] = 0;
  v222.receiver = v52;
  v222.super_class = v199;
  v164 = objc_msgSendSuper2(&v222, sel_init);
  v165 = sub_1C1AB17D0(v153, v209);
  v166 = OBJC_IVAR___APPCPromotedContent_mediaMetricHelper;
  swift_beginAccess();
  v167 = *&v164[v166];
  *&v164[v166] = v165;
  swift_unknownObjectRelease();
  v168 = *&v164[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper];
  swift_unknownObjectRetain();
  [v168 setNetworkType_];
  swift_unknownObjectRelease();
  v169 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  [*&v164[v169] setPromotedContent_];
  v170 = *&v164[v169];
  v171 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  v221[4] = sub_1C1B795A4;
  v221[5] = v171;
  v221[0] = MEMORY[0x1E69E9820];
  v221[1] = 1107296256;
  v221[2] = sub_1C1B196F0;
  v221[3] = &unk_1F4154080;
  v172 = _Block_copy(v221);

  v173 = [v170 registerForPCUsedEventWithAction_];
  swift_unknownObjectRelease();
  _Block_release(v172);
  v174 = sub_1C1B94D88();
  v176 = v175;

  v177 = &v164[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  v178 = *&v164[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID + 8];
  *v177 = v174;
  v177[1] = v176;
  v179 = v219;

  sub_1C1AA7C8C(v216, &qword_1EBF07F50, &qword_1C1B9A590);
  (*(v217 + 8))(v214, v218);
  sub_1C1AA7C8C(v213, &qword_1EBF07F50, &qword_1C1B9A590);
  sub_1C1AA7C8C(v207, &qword_1EBF07AC8, &qword_1C1B9CED0);
  v180 = *&v164[v169];
  [swift_unknownObjectRetain() createdWithAdType:v200 container:v201];

  swift_unknownObjectRelease();
  return v164;
}

uint64_t sub_1C1AAFF68()
{
  MEMORY[0x1C6908300](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t type metadata accessor for ContentRepresentation()
{
  result = qword_1EDE6C870;
  if (!qword_1EDE6C870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1AAFFEC()
{
  result = sub_1C1B945F8();
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

uint64_t type metadata accessor for PromotedContent()
{
  result = qword_1EDE6CA68;
  if (!qword_1EDE6CA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1AB00FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1C1AB0150(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1C1AB01A4()
{
  sub_1C1AB0150(319, &qword_1EDE6CD38, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    v9 = *(v0 - 8) + 64;
    sub_1C1AB0150(319, &qword_1EDE6CDD0, MEMORY[0x1E6969530]);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      v5 = sub_1C1B94588();
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        sub_1C1AB0150(319, &qword_1EDE6C898, MEMORY[0x1E69695A8]);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t type metadata accessor for MetricEventsTracker()
{
  result = qword_1EDE6CC90;
  if (!qword_1EDE6CC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1AB0460()
{
  sub_1C1AA3EA0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C1AB0510()
{
  v1 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_finalPromotedContent;
  v2 = sub_1C1B94588();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placeholderPlacedTimestamp, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_replacedPlaceholderTimestamp, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_adRequestTimestamp, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_adResponseTimestamp, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_prerollAdRequestTimestamp, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_prerollAdResponseTimestamp, 1, 1, v2);
  v4 = (v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_analyticsEventName);
  *v4 = 0x676E696D69746461;
  v4[1] = 0xE800000000000000;
  v5 = (v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalKey);
  *v5 = 0x6C61767265746E49;
  v5[1] = 0xE800000000000000;
  v6 = v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalTypeKey;
  strcpy((v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalTypeKey), "IntervalType");
  *(v6 + 13) = 0;
  *(v6 + 14) = -5120;
  v7 = (v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_networkTypeKey);
  *v7 = 0x546B726F7774654ELL;
  v7[1] = 0xEB00000000657079;
  v8 = v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placementTypeKey;
  strcpy((v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placementTypeKey), "PlacementType");
  *(v8 + 14) = -4864;
  v9 = (v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_failedKey);
  *v9 = 0x64656C696146;
  v9[1] = 0xE600000000000000;
  return v0;
}

uint64_t sub_1C1AB0860(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1AB08D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x414E454557544542 && a2 == 0xEE00454C43495452 || (sub_1C1B95888() & 1) != 0)
  {
    return 103;
  }

  if (a1 == 0x4C43495452414E49 && a2 == 0xE900000000000045 || (sub_1C1B95888() & 1) != 0 || a1 == 0x4E4945564954414ELL && a2 == 0xEF454C4349545241 || (sub_1C1B95888() & 1) != 0)
  {
    return 100;
  }

  if (a1 == 0x444545464E49 && a2 == 0xE600000000000000)
  {
    return 101;
  }

  v5 = sub_1C1B95888();
  v7 = a1 == 0x4E4945564954414ELL && a2 == 0xEC00000044454546;
  result = 101;
  if ((v5 & 1) == 0 && !v7)
  {
    if (sub_1C1B95888())
    {
      return 101;
    }

    if (a1 == 0x414E494F45444956 && a2 == 0xEE00454C43495452 || (sub_1C1B95888() & 1) != 0 || a1 == 0x464E494F45444956 && a2 == 0xEB00000000444545)
    {
      return 104;
    }

    else if (sub_1C1B95888())
    {
      return 104;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C1AB0B14@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C1B94A28();
  v19 = v2;
  v20 = sub_1C1AB0D08();
  v3 = sub_1C1AB0D60(v18);
  (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E6989E78], v2);
  LOBYTE(v2) = sub_1C1B94688();
  sub_1C1AA86F8(v18);
  if (v2)
  {
    v4 = sub_1C1AC1F08(&qword_1EBF08BA8, &qword_1C1B9E038);
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v7 = sub_1C1B94798();
    v19 = v4;
    v20 = sub_1C1AB0DC4(&unk_1EDE6C4F0, &qword_1EBF08BA8, &qword_1C1B9E038);
    v18[0] = v7;
    v8 = &qword_1EBF08BB0;
    v9 = &qword_1C1B9E040;
    v10 = sub_1C1AC1F08(&qword_1EBF08BB0, &qword_1C1B9E040);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1C1B94888();
    v14 = &unk_1EBF08BB8;
  }

  else
  {
    v8 = &qword_1EBF08BA8;
    v9 = &qword_1C1B9E038;
    v10 = sub_1C1AC1F08(&qword_1EBF08BA8, &qword_1C1B9E038);
    v15 = *(v10 + 48);
    v16 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1C1B94798();
    v14 = &unk_1EDE6C4F0;
  }

  result = sub_1C1AB0DC4(v14, v8, v9);
  a1[3] = v10;
  a1[4] = result;
  *a1 = v13;
  return result;
}

unint64_t sub_1C1AB0D08()
{
  result = qword_1EDE6C4E8;
  if (!qword_1EDE6C4E8)
  {
    sub_1C1B94A28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C4E8);
  }

  return result;
}

uint64_t *sub_1C1AB0D60(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1C1AB0DC4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for JourneyMetricsHelper()
{
  result = qword_1EDE6C678;
  if (!qword_1EDE6C678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1C1AB0E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, char a18)
{
  v29 = objc_allocWithZone(type metadata accessor for JourneyMetricsHelper());
  v28 = a18 & 1;

  return sub_1C1AB0F40(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v28, v29);
}

id sub_1C1AB0F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, char a18, _BYTE *a19)
{
  swift_unknownObjectWeakInit();
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenOnScreen] = 0;
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen] = 0;
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_wasCollapsedOnScreen] = 0;
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didUnload] = 0;
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didImpress] = 0;
  v22 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionStartDate;
  v23 = sub_1C1B94588();
  v24 = *(*(v23 - 8) + 56);
  v24(&a19[v22], 1, 1, v23);
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionDuration] = 0;
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isClickImpression] = 0;
  v24(&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_internalImpressionStartDate], 1, 1, v23);
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_internalAccumulatedImpressionDuration] = 0;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics] = 0;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionThresholdDuration] = 0;
  v25 = &a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_originalContentIdentifier];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_newsSupplementalContext;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_newsSupplementalContext] = 0;
  v27 = &a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_serverUnfilledReason];
  *v27 = 0;
  v27[8] = 1;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_interactionThreshold] = 0x4014000000000000;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_interactionThresholdVOEnabled] = 0x4049000000000000;
  v28 = &a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_interactionTime];
  *v28 = 0;
  v28[8] = 1;
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_viewReady] = 0;
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_wasCreated] = 0;
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenPlaced] = 0;
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_stop] = 0;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unfilledReasons] = 0;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_placedProperties] = 0;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_eventCount] = 1;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper____lazy_storage___shownSet] = 0;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper____lazy_storage___partiallyShownSet] = 0;
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_leftAdDestinationWasReported] = 0;
  v29 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_adServerEnvironment;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_adServerEnvironment] = 0;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_percentVisible] = 50;
  v30 = &a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unloadReason];
  *v30 = 0;
  v30[8] = 1;
  v31 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_onPromotedContentComplete;
  *&a19[v31] = sub_1C1AB1568(MEMORY[0x1E69E7CC0]);
  v32 = &a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContentIdentifier];
  *v32 = a1;
  v32[1] = a2;
  v33 = &a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_journeyIdentifier];
  *v33 = a5;
  v33[1] = a6;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_primitiveCreator] = a9;
  v34 = &a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_contextIdentifier];
  *v34 = a3;
  v34[1] = a4;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_notificationOwner] = a10;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_orderVendor] = a7;
  v35 = &a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_clientSource];
  *v35 = a11;
  v35[1] = a12;
  v36 = *&a19[v29];
  *&a19[v29] = a13;
  swift_unknownObjectRetain();

  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unloadManager] = a8;
  v37 = v25[1];
  *v25 = a14;
  v25[1] = a15;

  v38 = *&a19[v26];
  *&a19[v26] = a16;
  v39 = a16;

  *v27 = a17;
  v27[8] = a18 & 1;
  v57.receiver = a19;
  v57.super_class = type metadata accessor for JourneyMetricsHelper();
  v40 = objc_msgSendSuper2(&v57, sel_init);
  if ([objc_opt_self() isAppleInternalInstall])
  {
    v41 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v42 = sub_1C1B94D78();
    v43 = [v41 initWithSuiteName_];

    if (!v43)
    {
      v43 = [objc_opt_self() standardUserDefaults];
    }

    v44 = sub_1C1B94D78();
    v45 = [v43 BOOLForKey_];

    sub_1C1B95118();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v46 = sub_1C1B95298();
    sub_1C1B94BA8();

    if (v45)
    {
      v47 = objc_allocWithZone(type metadata accessor for JourneyMetricsHelperDiagnostics());
      v48 = v40;
      v49 = sub_1C1ACFB88();

      swift_unknownObjectRelease();

      v50 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
      swift_beginAccess();
      v39 = *&v48[v50];
      *&v48[v50] = v49;
    }

    else
    {

      swift_unknownObjectRelease();

      v39 = v43;
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v40;
}

unint64_t sub_1C1AB157C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1C1AC1F08(a2, a3);
    v5 = sub_1C1B955C8();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = sub_1C1AA7C14(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
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

id sub_1C1AB1708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for DiagnosticMetricsHelper();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR___APPCDiagnosticMetricsHelper_networkType] = 0;
  v16 = &v15[OBJC_IVAR___APPCDiagnosticMetricsHelper_contextIdentifier];
  *v16 = a1;
  *(v16 + 1) = a2;
  v17 = &v15[OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier];
  *v17 = a3;
  *(v17 + 1) = a4;
  *&v15[OBJC_IVAR___APPCDiagnosticMetricsHelper_primitiveCreator] = a5;
  *&v15[OBJC_IVAR___APPCDiagnosticMetricsHelper_notificationOwner] = a6;
  *&v15[OBJC_IVAR___APPCDiagnosticMetricsHelper_metricEventsTracking] = a7;
  v19.receiver = v15;
  v19.super_class = v14;
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t sub_1C1AB17D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a2;
  v5 = sub_1C1B945F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v39 - v12;
  v14 = OBJC_IVAR___APPCPromotedContent_representations;
  swift_beginAccess();
  v15 = *(v3 + v14);
  if (!(v15 >> 62))
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_7:
    v19 = *(v3 + v14);
    v20 = (v3 + OBJC_IVAR___APPCPromotedContent_identifier);
    swift_beginAccess();
    v22 = *v20;
    v21 = v20[1];

    LOBYTE(v22) = sub_1C1AB1C0C(v22, v21, v19);

    if ((v22 & 1) == 0)
    {
      v23 = *(v3 + v14);

      v25 = sub_1C1AB2030(v24);

      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_9:
    v26 = OBJC_IVAR___APPCPromotedContent__contextIdentifier;
    swift_beginAccess();
    sub_1C1AA7E30(v3 + v26, v13, &unk_1EBF098E0, &qword_1C1BA22A0);
    if ((*(v6 + 48))(v13, 1, v5))
    {
      sub_1C1AA7C8C(v13, &unk_1EBF098E0, &qword_1C1BA22A0);
      sub_1C1B945E8();
    }

    else
    {
      (*(v6 + 16))(v9, v13, v5);
      sub_1C1AA7C8C(v13, &unk_1EBF098E0, &qword_1C1BA22A0);
    }

    v39 = sub_1C1B945A8();
    v28 = v27;
    (*(v6 + 8))(v9, v5);
    type metadata accessor for MediaMetricsHelper();
    v29 = (v3 + OBJC_IVAR___APPCPromotedContent_identifier);
    swift_beginAccess();
    v30 = *v29;
    v31 = v29[1];
    v32 = *(v3 + OBJC_IVAR___APPCPromotedContent_primitiveCreator);
    v33 = objc_opt_self();

    swift_unknownObjectRetain();
    [v33 daemonDeliveryClass];
    swift_getObjCClassMetadata();
    v34 = [swift_getObjCClassFromMetadata() daemonDelivery];
    swift_getObjectType();

    v35 = a1;
    v36 = v40;

    v37 = sub_1C1B18874(v39, v28, v30, v31, v35, v32, v36, v34);
    swift_unknownObjectWeakAssign();
    sub_1C1B12894();
    return v37;
  }

  if (v15 < 0)
  {
    v38 = *(v3 + v14);
  }

  result = sub_1C1B953A8();
  if (!result)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v15 & 0xC000000000000001) != 0)
  {

    v17 = MEMORY[0x1C6907490](0, v15);

LABEL_6:
    v18 = [v17 adType];
    swift_unknownObjectRelease();
    if (v18 == 3)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v15 + 32);
    swift_unknownObjectRetain();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1AB1C0C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_1C1B944A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    result = sub_1C1B953A8();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C6907490](0, a3);
  }

  else
  {
    if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(a3 + 32);
    swift_unknownObjectRetain();
  }

  type metadata accessor for BannerRepresentation();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v17 = *(v16 + OBJC_IVAR___APPCBannerRepresentation_outstreamVideoInfo);
  if (!v17)
  {
    swift_unknownObjectRelease();
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_12;
  }

  sub_1C1AC5430(v17 + OBJC_IVAR___APPCOutstreamVideoInfo_videoAssetURL, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    swift_unknownObjectRelease();
LABEL_12:
    sub_1C1AC54A0(v8);
    return 0;
  }

  (*(v10 + 32))(v13, v8, v9);
  if (a2)
  {
    (*(v10 + 8))(v13, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C1B95128();
    sub_1C1AC53E4();
    v18 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C1B98E60;
    v20 = sub_1C1B94468();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1C1AA5E7C();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    sub_1C1B94BA8();
    swift_unknownObjectRelease();

    (*(v10 + 8))(v13, v9);
  }

  return 1;
}

uint64_t type metadata accessor for BannerRepresentation()
{
  result = qword_1EDE6C780;
  if (!qword_1EDE6C780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C1AB2030(unint64_t result)
{
  if (result >> 62)
  {
    v6 = result;
    v7 = sub_1C1B953A8();
    result = v6;
    if (!v7)
    {
      return 0;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C6907490](0, result);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v1 = *(result + 32);
    swift_unknownObjectRetain();
  }

  type metadata accessor for BannerRepresentation();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR___APPCBannerRepresentation_appAdTemplateType);
  swift_unknownObjectRelease();
  return qword_1F414DA88 == v3 || unk_1F414DA90 == v3 || qword_1F414DA98 == v3;
}

uint64_t sub_1C1AB2120()
{
  v1 = OBJC_IVAR___APPCPromotedContent_bestRepresentation;
  swift_beginAccess();
  if (!*(v0 + v1))
  {
    return 0;
  }

  type metadata accessor for VideoRepresentation();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  if (*(v0 + OBJC_IVAR___APPCPromotedContent_overriddenAdType + 8))
  {
    if ([swift_unknownObjectRetain() adType] != 3)
    {
LABEL_5:
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR___APPCPromotedContent_overriddenAdType);
    swift_unknownObjectRetain();
    if (v3 != 3)
    {
      goto LABEL_5;
    }
  }

  v4 = sub_1C1B67B84();
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  if (!*(v4 + 16) || (v6 = sub_1C1AA7C14(0x697463656E6E6F63, 0xEE00657079546E6FLL), (v7 & 1) == 0))
  {

LABEL_15:
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  sub_1C1AAA7B8(*(v5 + 56) + 32 * v6, v11);

  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v8 = v10;
    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
LABEL_17:
  v9 = sub_1C1B1945C(v8);
  if (v9 >= 0xCu)
  {
    return 3;
  }

  else
  {
    return qword_1C1BA4110[v9];
  }
}

uint64_t sub_1C1AB2414()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t JourneyMetricsHelper.registerForPCUsedEvent(action:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v7 = [v6 UUIDString];
  v8 = sub_1C1B94D88();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_onPromotedContentComplete;
  swift_beginAccess();

  v13 = *(v3 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v3 + v12);
  *(v3 + v12) = 0x8000000000000000;
  sub_1C1AB25E4(sub_1C1B4AAC0, v11, v8, v10, isUniquelyReferenced_nonNull_native);

  *(v3 + v12) = v18;
  swift_endAccess();
  v15 = [v6 UUIDString];
  v16 = sub_1C1B94D88();

  return v16;
}

uint64_t sub_1C1AB25AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1AB2610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void), void (*a7)(uint64_t, void))
{
  v10 = v7;
  v16 = *v7;
  v17 = sub_1C1AA7C14(a3, a4);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a5 & 1) == 0)
  {
    if (v24 < v22 || (a5 & 1) != 0)
    {
      a7(v22, a5 & 1);
      v26 = *v10;
      v17 = sub_1C1AA7C14(a3, a4);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_1C1B958E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      a6();
      v17 = v25;
    }
  }

  v28 = *v10;
  if (v23)
  {
    v29 = (v28[7] + 16 * v17);
    v30 = v29[1];
    *v29 = a1;
    v29[1] = a2;
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v32 = (v28[6] + 16 * v17);
  *v32 = a3;
  v32[1] = a4;
  v33 = (v28[7] + 16 * v17);
  *v33 = a1;
  v33[1] = a2;
  v34 = v28[2];
  v21 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v35;
}

uint64_t sub_1C1AB27B4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1C1AC1F08(a3, a4);
  v38 = a2;
  result = sub_1C1B955B8();
  v10 = result;
  if (*(v7 + 16))
  {
    v37 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v24 = 16 * (v21 | (v11 << 6));
      v25 = (*(v7 + 48) + v24);
      v26 = *v25;
      v27 = v25[1];
      v39 = *(*(v7 + 56) + v24);
      if ((v38 & 1) == 0)
      {
      }

      v28 = *(v10 + 40);
      sub_1C1B95958();
      sub_1C1B94DE8();
      result = sub_1C1B959A8();
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = 16 * v18;
      v20 = (*(v10 + 48) + v19);
      *v20 = v26;
      v20[1] = v27;
      *(*(v10 + 56) + v19) = v39;
      ++*(v10 + 16);
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v37;
    if (v36 >= 64)
    {
      bzero((v7 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1C1AB2B4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_1C1B94A58();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C1B94A68();
  if (a1 && [a1 bestRepresentation])
  {
    type metadata accessor for ClientLayoutRepresentation();
    swift_dynamicCastClass();
    swift_unknownObjectRelease();
  }

  v15 = sub_1C1AB301C(a3);
  v16 = 7030;
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 8)
      {
        a2 = 7038;
      }

      else if (a2 == 6)
      {
        switch(a3)
        {
          case 7005:
            a2 = 7036;
            break;
          case 7007:
            a2 = 7040;
            break;
          case 7006:
            if ((a5 & 1) == 0)
            {
              v14 = sub_1C1B94A68();
            }

            a2 = 7039;
            break;
          case 7008:
            a2 = 7041;
            break;
          default:
            a2 = 0;
            break;
        }
      }
    }

    else
    {
      if (a2 != 5)
      {
        v16 = a2;
      }

      if (a2 == 4)
      {
        a2 = 7034;
      }

      else
      {
        a2 = v16;
      }
    }
  }

  else
  {
    v17 = 7032;
    v18 = 7033;
    if (a2 != 3)
    {
      v18 = a2;
    }

    if (a2 != 2)
    {
      v17 = v18;
    }

    v19 = 7031;
    if (a2 != 1)
    {
      v19 = a2;
    }

    if (a2)
    {
      v16 = v19;
    }

    if (a2 <= 1)
    {
      a2 = v16;
    }

    else
    {
      a2 = v17;
    }
  }

  v20 = sub_1C1B94A68();
  if (v20 == sub_1C1B94A68())
  {
    v14 = sub_1C1B94A68();
    a2 = 7037;
  }

  v46 = a2;
  v47 = v14;
  v21 = v10[13];
  v21(v13, *MEMORY[0x1E6989FC8], v9);
  v22 = sub_1C1B94A48();
  v24 = v23;
  v25 = v10[1];
  v25(v13, v9);
  v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v27 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v27;
  v29 = v21;
  sub_1C1AB31C8(v26, v22, v24, isUniquelyReferenced_nonNull_native, &v48);

  v30 = v48;
  v21(v13, *MEMORY[0x1E6989F58], v9);
  v31 = sub_1C1B94A48();
  v33 = v32;
  v25(v13, v9);
  v34 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v35 = [v34 initWithInteger_];
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v48 = v30;
  sub_1C1AB31C8(v35, v31, v33, v36, &v48);
  v37 = v47;

  v38 = v48;
  if (v37 != sub_1C1B94A68())
  {
    v29(v13, *MEMORY[0x1E6989F70], v9);
    v39 = sub_1C1B94A48();
    v41 = v40;
    v25(v13, v9);
    v42 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v38;
    sub_1C1AB31C8(v42, v39, v41, v43, &v48);

    return v48;
  }

  return v38;
}

id sub_1C1AB2FC4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = swift_unknownObjectRetain();

  return v6;
}

uint64_t sub_1C1AB301C(uint64_t a1)
{
  v2 = sub_1C1B94758();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 104)
  {
    if (a1 > 101)
    {
      if (a1 != 102)
      {
        if (a1 == 103)
        {
          v7 = MEMORY[0x1E6989CB0];
        }

        else
        {
          v7 = MEMORY[0x1E6989CD0];
        }

        goto LABEL_20;
      }

      goto LABEL_10;
    }

    if (a1 == 100)
    {
      v7 = MEMORY[0x1E6989CD8];
      goto LABEL_20;
    }

    if (a1 != 101)
    {
      return a1;
    }

LABEL_16:
    v7 = MEMORY[0x1E6989CC0];
    goto LABEL_20;
  }

  if (a1 <= 7005)
  {
    if (a1 == 105)
    {
      v7 = MEMORY[0x1E6989CC8];
      goto LABEL_20;
    }

    if (a1 == 7005)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (a1 == 7006)
    {
      goto LABEL_16;
    }

    if (a1 == 7007 || a1 == 7008)
    {
LABEL_10:
      v7 = MEMORY[0x1E6989CB8];
LABEL_20:
      (*(v3 + 104))(v6, *v7, v2);
      a1 = sub_1C1B94748();
      (*(v3 + 8))(v6, v2);
    }
  }

  return a1;
}

uint64_t sub_1C1AB31CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_1C1AA7C14(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C1AB35E8(v16, a4 & 1);
      v20 = *a5;
      v11 = sub_1C1AA7C14(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1C1B958E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1C1ADA6AC();
      v11 = v19;
    }
  }

  v22 = *a5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_1C1AB3348(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1C1AC1F08(a3, a4);
  v40 = a2;
  result = sub_1C1B955B8();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];

        swift_unknownObjectRetain();
      }

      v29 = *(v10 + 40);
      sub_1C1B95958();
      sub_1C1B94DE8();
      result = sub_1C1B959A8();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

unint64_t sub_1C1AB35FC()
{
  v1 = v0;
  v2 = sub_1C1B945F8();
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v51 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v51 - v6;
  v7 = sub_1C1B94A58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C1AB3BEC(MEMORY[0x1E69E7CC0]);
  if (*(v0 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_clientSource + 8))
  {
    v13 = *(v0 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_clientSource);
    (*(v8 + 104))(v11, *MEMORY[0x1E6989ED0], v7);
    v14 = sub_1C1B94A48();
    v16 = v15;
    v17 = v7;
    (*(v8 + 8))(v11, v7);
    v18 = sub_1C1B94D78();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56[0] = v12;
    sub_1C1AB7E20(v18, v14, v16, isUniquelyReferenced_nonNull_native, v56);

    v12 = v56[0];
  }

  else
  {
    v17 = v7;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = [Strong bestRepresentation];
    swift_unknownObjectRelease();
    v22 = v17;
    if (v21)
    {
      v23 = [v21 id];
      swift_unknownObjectRelease();
      v24 = v51;
      sub_1C1B945D8();

      v25 = v52;
      v26 = v53;
      (*(v53 + 32))(v52, v24, v54);
      (*(v8 + 104))(v11, *MEMORY[0x1E6989F30], v17);
      v51 = sub_1C1B94A48();
      v28 = v27;
      (*(v8 + 8))(v11, v22);
      sub_1C1B945A8();
      v29 = sub_1C1B94D78();

      v30 = swift_isUniquelyReferenced_nonNull_native();
      v55 = v12;
      sub_1C1AB7E20(v29, v51, v28, v30, &v55);

      v12 = v55;
      (*(v26 + 8))(v25, v54);
    }
  }

  else
  {
    v22 = v17;
  }

  if (*(v1 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_originalContentIdentifier + 8))
  {
    v31 = *(v1 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_originalContentIdentifier);
    (*(v8 + 104))(v11, *MEMORY[0x1E6989F38], v22);

    v32 = sub_1C1B94A48();
    v34 = v33;
    (*(v8 + 8))(v11, v22);
    v35 = sub_1C1B94D78();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v12;
    sub_1C1AB7E20(v35, v32, v34, v36, &v55);

    v12 = v55;
  }

  v37 = *(v1 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_newsSupplementalContext);
  if (v37)
  {
    (*(v8 + 104))(v11, *MEMORY[0x1E6989F10], v22);
    v38 = v37;
    v39 = sub_1C1B94A48();
    v41 = v40;
    (*(v8 + 8))(v11, v22);
    sub_1C1AB7364();
    sub_1C1AC1F08(&qword_1EBF08210, &qword_1C1BA4330);
    v42 = sub_1C1B94CA8();

    v43 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v12;
    sub_1C1AB7E20(v42, v39, v41, v43, &v55);

    v12 = v55;
  }

  if ((*(v1 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_serverUnfilledReason + 8) & 1) == 0)
  {
    v44 = *(v1 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_serverUnfilledReason);
    (*(v8 + 104))(v11, *MEMORY[0x1E6989F18], v22);
    v45 = sub_1C1B94A48();
    v47 = v46;
    (*(v8 + 8))(v11, v22);
    v48 = sub_1C1B95098();
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v12;
    sub_1C1AB7E20(v48, v45, v47, v49, &v55);

    v12 = v55;
  }

  if (!*(v12 + 16))
  {

    return 0;
  }

  return v12;
}

unint64_t sub_1C1AB3C00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1C1AC1F08(a2, a3);
    v5 = sub_1C1B955C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      swift_unknownObjectRetain();
      result = sub_1C1AA7C14(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_1C1AB3CFC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_newsSupplementalContext;
  v9 = *&v3[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_newsSupplementalContext];
  if (!v9 || (v10 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement, result = swift_beginAccess(), *(v9 + v10)))
  {
    v12 = *&v4[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unloadManager];
    sub_1C1AB3FDC(a1, 100, a2);
    v13 = *&v4[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_orderVendor];
    result = sub_1C1B948C8();
    v14 = result;
    v15 = *&v4[v8];
    if (!v15 || (v16 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement, result = swift_beginAccess(), *(v15 + v16)))
    {
      if ((v4[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_stop] & 1) == 0)
      {
        v30 = a3;
        if (qword_1EDE6C4E0 != -1)
        {
          swift_once();
        }

        v17 = sub_1C1B94BE8();
        sub_1C1AB4454(v17, qword_1EDE6D058);
        v18 = v4;
        v19 = sub_1C1B94BC8();
        v20 = sub_1C1B95118();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v31 = v22;
          *v21 = 134349570;
          *(v21 + 4) = v14;
          *(v21 + 12) = 2050;
          [*(v12 + 16) lock];
          v23 = *(v12 + 32);
          [*(v12 + 16) unlock];
          *(v21 + 14) = v23;

          *(v21 + 22) = 2080;
          v24 = &v18[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContentIdentifier];
          swift_beginAccess();
          v25 = *v24;
          v26 = v24[1];

          v27 = sub_1C1AC7650(v25, v26, &v31);

          *(v21 + 24) = v27;
          _os_log_impl(&dword_1C1AA2000, v19, v20, "Journey order: %{public}ld, event count: %{public}ld, promoted content: %s", v21, 0x20u);
          sub_1C1AA86F8(v22);
          MEMORY[0x1C6908230](v22, -1, -1);
          MEMORY[0x1C6908230](v21, -1, -1);
        }

        else
        {
        }

        v28 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_primitiveCreator;
        swift_beginAccess();
        v29 = *&v18[v28];
        swift_unknownObjectRetain();
        sub_1C1AB448C(a1, 100, a2, v30);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

id sub_1C1AB3FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C1B94A58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 100)
  {
    v13 = result;
    v14 = *(v3 + 16);
    result = [v14 lock];
    if (a1 == 1400)
    {
      v15 = 0;
      *(v3 + 32) = 0;
    }

    else
    {
      v15 = *(v3 + 32);
    }

    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      __break(1u);
      return result;
    }

    *(v3 + 32) = v17;
    if (a1 != 1412 || !a3)
    {
      return [v14 unlock];
    }

    v18 = v3;
    (*(v8 + 104))(v12, *MEMORY[0x1E6989F48], v13);
    v19 = sub_1C1B94A48();
    v21 = v20;
    (*(v8 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      v22 = sub_1C1AA7C14(v19, v21);
      v24 = v23;

      if (v24)
      {
        v25 = *(*(a3 + 56) + 8 * v22);
        objc_opt_self();
        v26 = swift_dynamicCastObjCClass();
        if (v26)
        {
          v27 = v26;
          swift_unknownObjectRetain();
          v28 = [v27 integerValue];
          if (v28 == sub_1C1B947D8())
          {
            *(v18 + 24) = 1;
          }

          sub_1C1B95118();
          sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
          v29 = sub_1C1B95298();
          sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_1C1B98E60;
          *(v30 + 56) = sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
          *(v30 + 64) = sub_1C1B4E468();
          *(v30 + 32) = v27;
          swift_unknownObjectRetain();
          sub_1C1B94BA8();
          swift_unknownObjectRelease();

          return [v14 unlock];
        }
      }
    }

    else
    {
    }

    sub_1C1B95128();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v31 = sub_1C1B95298();
    sub_1C1B94BA8();

    return [v14 unlock];
  }

  return result;
}

uint64_t sub_1C1AB436C()
{
  v0 = sub_1C1B94BE8();
  sub_1C1AB43F0(v0, qword_1EDE6D058);
  sub_1C1AB4454(v0, qword_1EDE6D058);
  return sub_1C1B94BD8();
}

uint64_t *sub_1C1AB43F0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1C1AB4454(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1C1AB448C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  if (a3)
  {
    sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
    v6 = sub_1C1B94CA8();
  }

  if (a4)
  {
    sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
    v9 = sub_1C1B94CA8();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [v4 recordMetric:a1 forPurpose:a2 properties:v6 internalProperties:? order:? options:?];
}

void sub_1C1AB46A4(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v44 = a6;
  v45 = a5;
  v46 = a2;
  v47 = a1;
  v10 = sub_1C1B94A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = sub_1C1AB3BEC(MEMORY[0x1E69E7CC0]);
  }

  v16 = objc_opt_self();

  v17 = [v16 activeClientInfo];
  if (v17)
  {
    v18 = v17;
    (*(v11 + 104))(v14, *MEMORY[0x1E6989EB0], v10);
    v19 = sub_1C1B94A48();
    v21 = v20;
    (*(v11 + 8))(v14, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v15;
    sub_1C1AB7E20(v18, v19, v21, isUniquelyReferenced_nonNull_native, &v48);
  }

  [objc_opt_self() metricClass];
  swift_getObjCClassMetadata();
  v23 = *(v7 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier);
  v24 = *(v7 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier + 8);
  v25 = sub_1C1B94D78();
  v26 = *(v7 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier);
  v27 = *(v7 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier + 8);
  v28 = sub_1C1B94D78();
  v29 = *(v7 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier);
  v30 = *(v7 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier + 8);
  v31 = sub_1C1B94D78();
  if (*(v7 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId + 8))
  {
    v32 = *(v7 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId);
    v33 = sub_1C1B94D78();
  }

  else
  {
    v33 = 0;
  }

  if (*(v7 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch))
  {
    v34 = sub_1C1B94EB8();
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v34 = 0;
  if (a3)
  {
LABEL_11:
    sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
    a3 = sub_1C1B94CA8();
  }

LABEL_12:
  sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
  v35 = sub_1C1B94CA8();

  if (*(v7 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment))
  {
    v36 = sub_1C1B94EB8();
  }

  else
  {
    v36 = 0;
  }

  v37 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v38 = [v37 initWithPurpose:v46 metric:v47 contentIdentifier:v25 contextIdentifier:v28 handle:v31 secondaryHandle:v33 branch:v34 properties:a3 internalProperties:v35 relayData:0 environment:v36 order:v45 options:v44];

  if (v38)
  {
    sub_1C1AB4B20(v38, v7);
    [*(v7 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver) receivedMetric_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v39 = sub_1C1B94BE8();
    sub_1C1AB4454(v39, qword_1EDE6D058);
    v40 = sub_1C1B94BC8();
    v41 = sub_1C1B95128();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1C1AA2000, v40, v41, "Failed to create APMetric.", v42, 2u);
      MEMORY[0x1C6908230](v42, -1, -1);
    }
  }
}

uint64_t sub_1C1AB4B20(void *a1, uint64_t a2)
{
  v77 = a2;
  v3 = sub_1C1AC1F08(&qword_1EBF09270, &qword_1C1BA0D48);
  v79 = *(v3 - 8);
  v4 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v78 = v72 - v5;
  v6 = sub_1C1AC1F08(&qword_1EBF09278, &qword_1C1BA0D50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v76 = v72 - v8;
  v9 = sub_1C1AC1F08(&qword_1EBF09280, &qword_1C1BA0D58);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v83 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v82 = v72 - v13;
  v14 = sub_1C1AC1F08(&qword_1EBF09288, &qword_1C1BA0D60);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v81 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v80 = v72 - v18;
  v19 = sub_1C1B94BE8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C1AC1F08(&unk_1EBF09290, &qword_1C1BA0D68);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = v72 - v26;
  v28 = sub_1C1B94A78();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = sub_1C1B94788();
  v75 = *(v30 - 8);
  v31 = *(v75 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v74 = v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = v72 - v34;
  v36 = sub_1C1B94A28();
  v85[3] = v36;
  v85[4] = sub_1C1AB0D08();
  v37 = sub_1C1AB0D60(v85);
  (*(*(v36 - 8) + 104))(v37, *MEMORY[0x1E6989E78], v36);
  LOBYTE(v36) = sub_1C1B94688();
  result = sub_1C1AA86F8(v85);
  if (v36)
  {
    v39 = [a1 handle];
    if (v39)
    {
      v40 = v39;
      sub_1C1B94D88();

      v72[1] = [a1 metric];
      sub_1C1B94A88();
      v41 = [a1 trace];
      if (v41)
      {
        v42 = v41;
        sub_1C1B94D88();

        sub_1C1B94668();
        v43 = 0;
      }

      else
      {
        v43 = 1;
      }

      v51 = sub_1C1B94678();
      (*(*(v51 - 8) + 56))(v27, v43, 1, v51);
      v52 = [a1 branch];
      if (v52)
      {
        v53 = v52;
        sub_1C1B94EC8();

        sub_1C1B94648();
      }

      else
      {
        v54 = sub_1C1AC1F08(&qword_1EBF092A8, &qword_1C1BA0D78);
        (*(*(v54 - 8) + 56))(v80, 1, 1, v54);
      }

      v55 = [a1 environment];
      v73 = v3;
      if (v55)
      {
        v56 = v55;
        sub_1C1B94EC8();

        sub_1C1B94648();
      }

      else
      {
        v57 = sub_1C1AC1F08(&qword_1EBF092A8, &qword_1C1BA0D78);
        (*(*(v57 - 8) + 56))(v81, 1, 1, v57);
      }

      v58 = [a1 relayData];
      if (v58)
      {
        v59 = v58;
        sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
        sub_1C1B94CB8();

        sub_1C1B1AAF4(v60);
        sub_1C1B94658();
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v61 = sub_1C1AC1F08(&qword_1EBF092B0, &qword_1C1BA0D80);
        (*(*(v61 - 8) + 56))(v82, 1, 1, v61);
      }

      v62 = [a1 properties];
      if (v62)
      {
        v63 = v62;
        sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
        sub_1C1B94CB8();

        sub_1C1B1AAF4(v64);
        sub_1C1B94658();
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v65 = sub_1C1AC1F08(&qword_1EBF092B0, &qword_1C1BA0D80);
        (*(*(v65 - 8) + 56))(v83, 1, 1, v65);
      }

      v66 = [a1 internalProperties];
      if (v66)
      {
        v67 = v66;
        sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
        sub_1C1B94CB8();

        sub_1C1B94658();
      }

      else
      {
        v68 = sub_1C1AC1F08(&qword_1EBF092B8, &qword_1C1BA0D88);
        (*(*(v68 - 8) + 56))(v76, 1, 1, v68);
      }

      sub_1C1B94778();
      v69 = *(v77 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline + 32);
      sub_1C1AAABE0((v77 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline), *(v77 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline + 24));
      v70 = v75;
      (*(v75 + 16))(v74, v35, v30);
      [a1 purpose];
      [a1 options];
      v71 = v78;
      sub_1C1B947C8();
      sub_1C1B947E8();
      (*(v79 + 8))(v71, v73);
      return (*(v70 + 8))(v35, v30);
    }

    else
    {
      sub_1C1B94BB8();
      swift_unknownObjectRetain();
      v44 = sub_1C1B94BC8();
      v45 = sub_1C1B95128();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v84 = a1;
        v85[0] = v47;
        *v46 = 136315138;
        swift_unknownObjectRetain();
        sub_1C1AC1F08(&qword_1EBF092A0, &qword_1C1BA0D70);
        v48 = sub_1C1B94DB8();
        v50 = sub_1C1AC7650(v48, v49, v85);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_1C1AA2000, v44, v45, "Could not create event from metric: %s", v46, 0xCu);
        sub_1C1AA86F8(v47);
        MEMORY[0x1C6908230](v47, -1, -1);
        MEMORY[0x1C6908230](v46, -1, -1);
      }

      return (*(v20 + 8))(v23, v19);
    }
  }

  return result;
}

id sub_1C1AB5618(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PromotedContentInfo();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR___APPCPromotedContentInfo_unfilledReason;
  *&v9[OBJC_IVAR___APPCPromotedContentInfo_unfilledReason] = 200;
  *&v9[OBJC_IVAR___APPCPromotedContentInfo_promotedContent] = a1;
  v9[OBJC_IVAR___APPCPromotedContentInfo_placeholder] = a2;
  v11 = &v9[OBJC_IVAR___APPCPromotedContentInfo_ready];
  *v11 = a3;
  v11[1] = a4;
  type metadata accessor for LifecycleMetricsHelper();
  v12 = a1;
  sub_1C1AC0598(a3);
  v13 = [v12 metricsHelper];
  swift_getObjectType();
  *&v9[OBJC_IVAR___APPCPromotedContentInfo_metricsHelper] = sub_1C1AB5844(v13, [v12 placeholder]);
  v14 = [v12 serverUnfilledReason];
  swift_beginAccess();
  *&v9[v10] = v14;
  v17.receiver = v9;
  v17.super_class = v8;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  *&v12[OBJC_IVAR___APPCPromotedContent_unfilledReasonDelegate + 8] = &off_1F4151408;
  swift_unknownObjectWeakAssign();
  return v15;
}

id sub_1C1AB5844(uint64_t a1, char a2)
{
  v4 = type metadata accessor for LifecycleMetricsHelper();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR___APPCLifecycleMetricsHelper_wasOnScreen] = 0;
  *&v5[OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper] = a1;
  v5[OBJC_IVAR___APPCLifecycleMetricsHelper_placeholder] = a2;
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1C1AB595C(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t getEnumTagSinglePayload for JourneyMetricsHelperDiagnostics.Event.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C1AB5A74@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id sub_1C1AB5B5C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_1C1B94D78();

  return v6;
}

uint64_t sub_1C1AB5BD4()
{
  v1 = [*(v0 + OBJC_IVAR___APPCPromotedContentInfo_promotedContent) identifier];
  v2 = sub_1C1B94D88();

  return v2;
}

void *sub_1C1AB5C80()
{
  v1 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1C1AB5CD8(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = *a1;
  swift_beginAccess();
  return a2(*(v2 + v4));
}

uint64_t sub_1C1AB5DD4()
{
  v1 = OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1C1AB5ED0(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PromotedContentInfo();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR___APPCPromotedContentInfo_unfilledReason;
  *&v9[OBJC_IVAR___APPCPromotedContentInfo_unfilledReason] = 200;
  *&v9[OBJC_IVAR___APPCPromotedContentInfo_promotedContent] = a1;
  v9[OBJC_IVAR___APPCPromotedContentInfo_placeholder] = a2;
  v11 = &v9[OBJC_IVAR___APPCPromotedContentInfo_ready];
  *v11 = a3;
  v11[1] = a4;
  type metadata accessor for LifecycleMetricsHelper();
  swift_unknownObjectRetain();
  sub_1C1AC0598(a3);
  v12 = [a1 metricsHelper];
  swift_getObjectType();
  *&v9[OBJC_IVAR___APPCPromotedContentInfo_metricsHelper] = sub_1C1AB5844(v12, [a1 placeholder]);
  v13 = [a1 serverUnfilledReason];
  swift_beginAccess();
  *&v9[v10] = v13;
  v17.receiver = v9;
  v17.super_class = v8;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  sub_1C1AC0530(a3);
  type metadata accessor for PromotedContent();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    *(v15 + OBJC_IVAR___APPCPromotedContent_unfilledReasonDelegate + 8) = &off_1F4151408;
    swift_unknownObjectWeakAssign();
  }

  return v14;
}

id PromotedContentInfo.__allocating_init(promotedContent:placeholder:ready:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v8 = sub_1C1AB5ED0(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1C1AB6130(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unfilledReasons;
  swift_beginAccess();
  if (!*(v1 + v3))
  {
    *(v1 + v3) = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1C1AB6258();
  v6 = *v4;
  if (!*v4)
  {
    return (v5)(v13, 0);
  }

  v7 = v4;
  v8 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1C1AB62B8(0, *(v6 + 2) + 1, 1, v6);
    *v7 = v6;
  }

  v11 = *(v6 + 2);
  v10 = *(v6 + 3);
  if (v11 >= v10 >> 1)
  {
    v6 = sub_1C1AB62B8((v10 > 1), v11 + 1, 1, v6);
    *v7 = v6;
  }

  *(v6 + 2) = v11 + 1;
  *&v6[8 * v11 + 32] = a1;
  return (v5)(v13, 0);
}

id sub_1C1AB6388()
{
  if (*(v0 + OBJC_IVAR___APPCPromotedContent_overriddenAdType + 8) != 1)
  {
    return *(v0 + OBJC_IVAR___APPCPromotedContent_overriddenAdType);
  }

  v1 = OBJC_IVAR___APPCPromotedContent_bestRepresentation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    return [v2 adType];
  }

  v4 = OBJC_IVAR___APPCPromotedContent_representations;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (v5 >> 62)
  {
    result = sub_1C1B953A8();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x1C6907490](0, v5);

    goto LABEL_11;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);
    swift_unknownObjectRetain();
LABEL_11:
    v7 = [v6 adType];
    swift_unknownObjectRelease();
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1AB656C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void *sub_1C1AB65C0()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1C1AB660C(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t SponsorshipAdManager.removePromotedContent(info:)(void *a1)
{
  swift_beginAccess();
  v3 = a1;
  v4 = sub_1C1AB66EC((v1 + 32), v3);

  v5 = *(v1 + 32);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v8 = *(v1 + 32);
    }

    v6 = sub_1C1B953A8();
    if (v6 >= v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 >= v4)
    {
LABEL_3:
      sub_1C1AB6B20(v4, v6);
      return swift_endAccess();
    }
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1C1AB66EC(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v39 = *a1 >> 62;
  if (v39)
  {
    goto LABEL_70;
  }

  v43 = v2 & 0xFFFFFFFFFFFFFF8;
  v44 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = 0;
  v41 = OBJC_IVAR___APPCPromotedContentInfo_promotedContent;
  while (v44 != v3)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1C6907490](v3, v2);
    }

    else
    {
      if (v3 >= *(v43 + 16))
      {
        goto LABEL_66;
      }

      v4 = *(v2 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = &v4[OBJC_IVAR___APPCPromotedContent_identifier];
    swift_beginAccess();
    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = *(a2 + v41);

    v10 = [v9 identifier];
    v11 = sub_1C1B94D88();
    v13 = v12;

    if (v7 == v11 && v8 == v13)
    {

LABEL_20:
      v17 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      while (1)
      {
        if (v2 >> 62)
        {
          if (v17 == sub_1C1B953A8())
          {
            return v3;
          }
        }

        else if (v17 == *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return v3;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1C6907490](v17, v2);
        }

        else
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            v43 = v2 & 0xFFFFFFFFFFFFFF8;
            v44 = sub_1C1B953A8();
            goto LABEL_3;
          }

          if (v17 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v18 = *(v2 + 8 * v17 + 32);
        }

        v10 = v18;
        v19 = &v18[OBJC_IVAR___APPCPromotedContent_identifier];
        swift_beginAccess();
        v20 = *v19;
        v21 = *(v19 + 1);

        v22 = [v9 identifier];
        v23 = sub_1C1B94D88();
        v25 = v24;

        if (v20 == v23 && v21 == v25)
        {
LABEL_23:
        }

        else
        {
          v27 = sub_1C1B95888();

          if ((v27 & 1) == 0)
          {
            if (v3 != v17)
            {
              if ((v2 & 0xC000000000000001) != 0)
              {
                v29 = MEMORY[0x1C6907490](v3, v2);
                v30 = MEMORY[0x1C6907490](v17, v2);
              }

              else
              {
                if ((v3 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_72:
                  __break(1u);
LABEL_73:
                  __break(1u);
                  return result;
                }

                v31 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v3 >= v31)
                {
                  goto LABEL_72;
                }

                if (v17 >= v31)
                {
                  goto LABEL_73;
                }

                v32 = *(v2 + 32 + 8 * v17);
                v29 = *(v2 + 32 + 8 * v3);
                v30 = v32;
              }

              v33 = v30;
              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
              {
                v2 = sub_1C1B8FEB4(v2);
                v34 = (v2 >> 62) & 1;
              }

              else
              {
                LODWORD(v34) = 0;
              }

              v35 = v2 & 0xFFFFFFFFFFFFFF8;
              v36 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20);
              *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v33;

              if ((v2 & 0x8000000000000000) != 0 || v34)
              {
                v2 = sub_1C1B8FEB4(v2);
                v35 = v2 & 0xFFFFFFFFFFFFFF8;
                if ((v17 & 0x8000000000000000) != 0)
                {
LABEL_60:
                  __break(1u);
                  return sub_1C1B953A8();
                }
              }

              else if ((v17 & 0x8000000000000000) != 0)
              {
                goto LABEL_60;
              }

              if (v17 >= *(v35 + 16))
              {
                goto LABEL_69;
              }

              v37 = v35 + 8 * v17;
              v38 = *(v37 + 32);
              *(v37 + 32) = v29;

              *a1 = v2;
            }

            v16 = __OFADD__(v3++, 1);
            if (v16)
            {
              goto LABEL_68;
            }
          }
        }

        v16 = __OFADD__(v17++, 1);
        if (v16)
        {
          goto LABEL_65;
        }
      }
    }

    v15 = sub_1C1B95888();

    if (v15)
    {
      goto LABEL_20;
    }

    v16 = __OFADD__(v3++, 1);
    if (v16)
    {
      goto LABEL_67;
    }
  }

  if (v39)
  {
    return sub_1C1B953A8();
  }

  else
  {
    return *(v43 + 16);
  }
}

uint64_t sub_1C1AB6B4C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v8 = a3;
    v6 = a2;
    v7 = a1;
    v9 = *v5;
    v10 = *v5 >> 62;
    if (!v10)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1C1B953A8();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = sub_1C1B953A8();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    v8(result, 1);
    return sub_1C1AB6C44(v7, v6, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1C1AB6C44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1C1B953A8();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_1C1B953A8();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1AB6D48@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v4 = sub_1C1B945F8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1C1AB6E24(char a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_vended;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for Context();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = OBJC_IVAR___APPCContext_waitingLock;
      [*(v5 + OBJC_IVAR___APPCContext_waitingLock) lock];
      v8 = OBJC_IVAR___APPCContext_waiting;
      swift_beginAccess();
      v9 = *(v6 + v8);
      v10 = *(v6 + v7);

      [v10 unlock];
      if (*(v9 + 16))
      {
        sub_1C1AAB208(v9, 1, 0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C1AB6F40()
{
  v1 = *(v0 + OBJC_IVAR___APPCContext_inventoryLock);
  [v1 lock];
  v2 = OBJC_IVAR___APPCContext_fetchingLock;
  [*(v0 + OBJC_IVAR___APPCContext_fetchingLock) lock];
  v3 = OBJC_IVAR___APPCContext_inventory;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v16 = *(v0 + v3);
    }

    v5 = sub_1C1B953A8();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = sub_1C1AB70B0();
  if (v6 >> 62)
  {
    v7 = sub_1C1B953A8();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = __OFSUB__(v5, v7);
  v10 = v5 - v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = OBJC_IVAR___APPCContext_fetching;
  result = swift_beginAccess();
  v12 = *(*(v0 + v11) + 16);
  v9 = __OFADD__(v10, v12);
  v13 = v10 + v12;
  if (v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = *(v0 + OBJC_IVAR___APPCContext_limit);
  v15 = v14 - v13;
  if (!__OFSUB__(v14, v13))
  {
    [v1 unlock];
    [*(v0 + v2) unlock];
    return v15;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C1AB70B0()
{
  v1 = OBJC_IVAR___APPCContext_inventory;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v10 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_1C1B953A8();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C6907490](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v8 = v10;
          goto LABEL_17;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v5 = *(v2 + 8 * v4 + 32);
        swift_unknownObjectRetain();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      if ([v5 vended])
      {
        sub_1C1B954F8();
        v7 = *(v10 + 16);
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v4;
      if (v6 == v3)
      {
        goto LABEL_15;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_17:

  return v8;
}

uint64_t sub_1C1AB7288(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = *a1;
  swift_beginAccess();
  return a2(*(v2 + v4));
}

uint64_t sub_1C1AB72DC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void, unint64_t, void))
{
  v6 = a1;
  v7 = sub_1C1AB35FC();
  a4(a3, 0, v7, 0);
}

uint64_t sub_1C1AB7364()
{
  v1 = sub_1C1B959E8();
  v34 = *(v1 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1C1AB77A4(MEMORY[0x1E69E7CC0]);
  *(&v42 + 1) = type metadata accessor for NewsSupplementalContext();
  *&v41 = v0;
  v5 = v0;
  sub_1C1B959C8();
  v33 = v4;
  sub_1C1B959D8();
  sub_1C1B95548();

  sub_1C1B955E8();
  if (!v43)
  {
LABEL_23:
    (*(v34 + 8))(v33, v1);

    return v35;
  }

  v6 = &unk_1EBF08210;
  v32 = v1;
  while (1)
  {
    while (1)
    {
      v39 = v41;
      sub_1C1AA7E98(&v42, &v40);
      sub_1C1AA7E30(&v39, v37, &unk_1EBF08550, &qword_1C1B9ACA8);
      if (v37[1])
      {
        break;
      }

      sub_1C1AA7C8C(&v39, &unk_1EBF08550, &qword_1C1B9ACA8);
      sub_1C1AA86F8(v38);
LABEL_4:
      sub_1C1B955E8();
      if (!v43)
      {
        v1 = v32;
        goto LABEL_23;
      }
    }

    sub_1C1AA86F8(v38);
    sub_1C1AA7E30(&v39, v37, &unk_1EBF08550, &qword_1C1B9ACA8);

    sub_1C1AC1F08(v6, &qword_1C1BA4330);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1C1AA7C8C(&v39, &unk_1EBF08550, &qword_1C1B9ACA8);

      goto LABEL_4;
    }

    v7 = v6;
    v8 = v36;
    v9 = sub_1C1AB77B8();
    if (v9 == 62)
    {
      sub_1C1AA7C8C(&v39, &unk_1EBF08550, &qword_1C1B9ACA8);
      swift_unknownObjectRelease();
      v6 = v7;
      goto LABEL_4;
    }

    v31 = sub_1C1AB780C(v9);
    v11 = v10;
    v12 = v35;
    HIDWORD(v29) = swift_isUniquelyReferenced_nonNull_native();
    v37[0] = v12;
    v30 = v11;
    v14 = sub_1C1AA7C14(v31, v11);
    v15 = *(v12 + 16);
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    if (*(v12 + 24) >= v17)
    {
      if ((v29 & 0x100000000) == 0)
      {
        LODWORD(v35) = v13;
        sub_1C1ADA684();
        LOBYTE(v13) = v35;
      }
    }

    else
    {
      LODWORD(v35) = v13;
      sub_1C1AB7E0C(v17, SBYTE4(v29));
      v18 = sub_1C1AA7C14(v31, v30);
      v19 = v13 & 1;
      LOBYTE(v13) = v35;
      if ((v35 & 1) != v19)
      {
        goto LABEL_26;
      }

      v14 = v18;
    }

    v20 = v37[0];
    v35 = v37[0];
    if (v13)
    {
      v21 = *(v37[0] + 56);
      v22 = *(v21 + 8 * v14);
      *(v21 + 8 * v14) = v8;

      swift_unknownObjectRelease();
    }

    else
    {
      *(v37[0] + 8 * (v14 >> 6) + 64) |= 1 << v14;
      v23 = (v20[6] + 16 * v14);
      v24 = v30;
      *v23 = v31;
      v23[1] = v24;
      *(v20[7] + 8 * v14) = v8;
      v25 = v20[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_25;
      }

      v20[2] = v27;
    }

    v1 = v32;
    v6 = v7;
    sub_1C1AA7C8C(&v39, &unk_1EBF08550, &qword_1C1B9ACA8);
    sub_1C1B955E8();
    if (!v43)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1C1B958E8();
  __break(1u);
  return result;
}