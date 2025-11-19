uint64_t sub_1C0138490(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1C014C750();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1C013C2B8(v3, 0);
  sub_1C0138524(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1C0138524(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C014C750();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C014C750();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C013941C();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067B0, &qword_1C0156890);
            v9 = sub_1C0110BE0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SearchResult.Item();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1C01386A4(void *a1)
{
  v2 = [a1 attributeSet];
  v3 = [v2 contentType];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1C014C230();
  v6 = v5;

  v7 = v4 == 0xD000000000000014 && 0x80000001C015BBA0 == v6;
  if (!v7 && (sub_1C014C9F0() & 1) == 0)
  {
    v28 = v4 == 0x6C7070612E6D6F63 && v6 == 0xEE00737069742E65;
    if (v28 || (sub_1C014C9F0() & 1) != 0)
    {
      v29 = [a1 uniqueIdentifier];
      v30 = sub_1C014C230();
      v32 = v31;

      v33 = [a1 attributeSet];
      v34 = CSSearchableItemAttributeSet.collectionIdentifier.getter();
      v36 = v35;

      if (v36)
      {
        v37 = v36;
      }

      else
      {
        v34 = 0;
        v37 = 0xE000000000000000;
      }

      v38 = type metadata accessor for SearchResult.Item();
      v39 = objc_allocWithZone(v38);
      v40 = &v39[OBJC_IVAR___TPSSearchResultItem_correlationIdentifier];
      *v40 = 0;
      *(v40 + 1) = 0;
      v41 = &v39[OBJC_IVAR___TPSSearchResultItem_contentType];
      *v41 = 0;
      *(v41 + 1) = 0;
      v42 = &v39[OBJC_IVAR___TPSSearchResultItem_title];
      *v42 = 0;
      *(v42 + 1) = 0;
      v43 = &v39[OBJC_IVAR___TPSSearchResultItem_body];
      *v43 = 0;
      *(v43 + 1) = 0;
      *&v39[OBJC_IVAR___TPSSearchResultItem_relevance] = 0x3FF0000000000000;
      v44 = &v39[OBJC_IVAR___TPSSearchResultItem_documentIdentifier];
      *v44 = v30;
      v44[1] = v32;
      v45 = &v39[OBJC_IVAR___TPSSearchResultItem_collectionIdentifier];
      *v45 = v34;
      v45[1] = v37;
      v88.receiver = v39;
      v88.super_class = v38;
      v14 = objc_msgSendSuper2(&v88, sel_init);
      v46 = [a1 attributeSet];
    }

    else
    {
      if ((v4 != 0xD00000000000001ALL || 0x80000001C015C2D0 != v6) && (sub_1C014C9F0() & 1) == 0)
      {
        goto LABEL_36;
      }

      v69 = [a1 uniqueIdentifier];
      v70 = sub_1C014C230();
      v72 = v71;

      v73 = [a1 attributeSet];
      v74 = CSSearchableItemAttributeSet.collectionIdentifier.getter();
      v76 = v75;

      if (v76)
      {
        v77 = v76;
      }

      else
      {
        v74 = 0;
        v77 = 0xE000000000000000;
      }

      v78 = type metadata accessor for SearchResult.Item();
      v79 = objc_allocWithZone(v78);
      v80 = &v79[OBJC_IVAR___TPSSearchResultItem_correlationIdentifier];
      *v80 = 0;
      *(v80 + 1) = 0;
      v81 = &v79[OBJC_IVAR___TPSSearchResultItem_contentType];
      *v81 = 0;
      *(v81 + 1) = 0;
      v82 = &v79[OBJC_IVAR___TPSSearchResultItem_title];
      *v82 = 0;
      *(v82 + 1) = 0;
      v83 = &v79[OBJC_IVAR___TPSSearchResultItem_body];
      *v83 = 0;
      *(v83 + 1) = 0;
      *&v79[OBJC_IVAR___TPSSearchResultItem_relevance] = 0x3FF0000000000000;
      v84 = &v79[OBJC_IVAR___TPSSearchResultItem_documentIdentifier];
      *v84 = v70;
      v84[1] = v72;
      v85 = &v79[OBJC_IVAR___TPSSearchResultItem_collectionIdentifier];
      *v85 = v74;
      v85[1] = v77;
      v89.receiver = v79;
      v89.super_class = v78;
      v14 = objc_msgSendSuper2(&v89, sel_init);
      v46 = [a1 attributeSet];
    }

    v47 = v46;
    v48 = CSSearchableItemAttributeSet.correlationIdentifier.getter();
    v50 = v49;

    v51 = &v14[OBJC_IVAR___TPSSearchResultItem_correlationIdentifier];
    swift_beginAccess();
    v52 = v51[1];
    *v51 = v48;
    v51[1] = v50;

    goto LABEL_20;
  }

  v8 = [a1 uniqueIdentifier];
  v9 = sub_1C014C230();

  v10 = objc_allocWithZone(type metadata accessor for UserGuideTopic());
  v11 = UserGuideTopic.init(searchableItemUniqueIdentifier:)(v9);
  if (!v11)
  {
LABEL_36:

    return 0;
  }

  v12 = v11;
  v13 = &v11[OBJC_IVAR___TPSUserGuideTopic_topicId];
  swift_beginAccess();
  v14 = *(v13 + 1);
  if (v14)
  {
    v15 = *v13;
    v16 = &v12[OBJC_IVAR___TPSUserGuideTopic_productId];
    swift_beginAccess();
    v18 = *v16;
    v17 = *(v16 + 1);
    v19 = type metadata accessor for SearchResult.Item();
    v20 = objc_allocWithZone(v19);
    v21 = &v20[OBJC_IVAR___TPSSearchResultItem_correlationIdentifier];
    *v21 = 0;
    *(v21 + 1) = 0;
    v22 = &v20[OBJC_IVAR___TPSSearchResultItem_contentType];
    *v22 = 0;
    *(v22 + 1) = 0;
    v23 = &v20[OBJC_IVAR___TPSSearchResultItem_title];
    *v23 = 0;
    *(v23 + 1) = 0;
    v24 = &v20[OBJC_IVAR___TPSSearchResultItem_body];
    *v24 = 0;
    *(v24 + 1) = 0;
    *&v20[OBJC_IVAR___TPSSearchResultItem_relevance] = 0x3FF0000000000000;
    v25 = &v20[OBJC_IVAR___TPSSearchResultItem_documentIdentifier];
    *v25 = v15;
    *(v25 + 1) = v14;
    v26 = &v20[OBJC_IVAR___TPSSearchResultItem_collectionIdentifier];
    *v26 = v18;
    *(v26 + 1) = v17;
    v87.receiver = v20;
    v87.super_class = v19;

    v27 = objc_msgSendSuper2(&v87, sel_init);

    v14 = v27;
LABEL_20:
    v53 = [a1 attributeSet];
    v54 = [v53 displayName];

    if (v54)
    {
      v55 = sub_1C014C230();
      v57 = v56;
    }

    else
    {
      v55 = 0;
      v57 = 0;
    }

    v58 = &v14[OBJC_IVAR___TPSSearchResultItem_title];
    swift_beginAccess();
    v59 = v58[1];
    *v58 = v55;
    v58[1] = v57;

    v60 = [a1 attributeSet];
    v61 = [v60 contentDescription];

    if (v61)
    {
      v62 = sub_1C014C230();
      v64 = v63;
    }

    else
    {
      v62 = 0;
      v64 = 0;
    }

    v65 = &v14[OBJC_IVAR___TPSSearchResultItem_body];
    swift_beginAccess();
    v66 = v65[1];
    *v65 = v62;
    v65[1] = v64;

    v67 = &v14[OBJC_IVAR___TPSSearchResultItem_contentType];
    swift_beginAccess();
    v68 = v67[1];
    *v67 = v4;
    v67[1] = v6;

    goto LABEL_28;
  }

LABEL_28:

  return v14;
}

uint64_t sub_1C0138D7C(char *a1, unint64_t a2, uint64_t a3)
{
  v57 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066D0, &unk_1C0156640);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v58 = &v55 - v7;
  v61 = MEMORY[0x1E69E7CC0];
  if (a2 >> 62)
  {
LABEL_61:
    v8 = sub_1C014C750();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = 0;
    v55 = &a1[OBJC_IVAR___TPSSearchQuery_rankingModifier];
    v56 = *MEMORY[0x1E6964D98];
    do
    {
      v10 = v9;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1C68D7040](v10, a2);
        }

        else
        {
          if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v11 = *(a2 + 8 * v10 + 32);
        }

        v12 = v11;
        v9 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v13 = sub_1C01386A4(v11);
        if (v13)
        {
          break;
        }

        ++v10;
        if (v9 == v8)
        {
          goto LABEL_28;
        }
      }

      v14 = v13;
      v15 = [v12 attributeSet];
      if ([v15 attributeForKey_])
      {
        sub_1C014C6E0();
        swift_unknownObjectRelease();
      }

      else
      {
        v62 = 0u;
        v63 = 0u;
      }

      v64[0] = v62;
      v64[1] = v63;
      if (*(&v63 + 1))
      {
        if (swift_dynamicCast())
        {
          v16 = v60;

          v17 = *v55;
          if (*v55)
          {
            v18 = *(v55 + 1);

            v20 = v17(v19, v16);

            sub_1C0113884(v17);
            v21 = OBJC_IVAR___TPSSearchResultItem_relevance;
            v22 = swift_beginAccess();
            *&v14[v21] = v20;
          }

          else
          {
          }

          goto LABEL_23;
        }
      }

      else
      {
        sub_1C00F98F4(v64, &qword_1EBE06490, &qword_1C0155FA0);
      }

LABEL_23:
      MEMORY[0x1C68D6BB0](v22);
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C014C3E0();
      }

      sub_1C014C400();
    }

    while (v9 != v8);
  }

LABEL_28:

  *&v64[0] = sub_1C0138490(v24);
  v25 = 0;
  sub_1C0137488(v64);

  v26 = *&v64[0];
  v27 = OBJC_IVAR___TPSSearchQuery_maxCount;
  swift_beginAccess();
  v28 = *&a1[v27];
  if (v28 < 0)
  {
    __break(1u);
  }

  else
  {
    LODWORD(v27) = v26 < 0 || (v26 & 0x4000000000000000) != 0;
    if ((v27 & 1) == 0)
    {
      v29 = *(v26 + 16);
      if (v29 >= v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = *(v26 + 16);
      }

      if (v28)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      if (v29 >= v31)
      {
        goto LABEL_40;
      }

      goto LABEL_73;
    }
  }

  v25 = sub_1C014C750();
  if ((sub_1C014C750() & 0x8000000000000000) == 0)
  {
    if (v25 >= v28)
    {
      v54 = v28;
    }

    else
    {
      v54 = v25;
    }

    if (v25 < 0)
    {
      v54 = v28;
    }

    if (v28)
    {
      v31 = v54;
    }

    else
    {
      v31 = 0;
    }

    if (sub_1C014C750() >= v31)
    {
LABEL_40:
      if ((v26 & 0xC000000000000001) != 0 && v31)
      {
        type metadata accessor for SearchResult.Item();

        v32 = 0;
        do
        {
          v33 = v32 + 1;
          sub_1C014C820();
          v32 = v33;
        }

        while (v31 != v33);
      }

      else
      {
      }

      if (v27)
      {
        v34 = sub_1C014C8E0();
        v8 = v35;
        v25 = v36;
        v31 = v37;

        v26 = v34;
        if (v31)
        {
LABEL_51:
          sub_1C014CA00();
          swift_unknownObjectRetain_n();
          v40 = swift_dynamicCastClass();
          if (!v40)
          {
            swift_unknownObjectRelease();
            v40 = MEMORY[0x1E69E7CC0];
          }

          v41 = *(v40 + 16);

          if (!__OFSUB__(v31 >> 1, v25))
          {
            if (v41 == (v31 >> 1) - v25)
            {
              v39 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (v39)
              {
LABEL_58:
                v42 = sub_1C014BE60();
                v43 = *(*(v42 - 8) + 56);
                v44 = v58;
                v43(v58, 1, 1, v42);
                v45 = type metadata accessor for SearchResult();
                v46 = objc_allocWithZone(v45);
                v47 = OBJC_IVAR___TPSSearchResult_deviceExpertResponse;
                v43(&v46[OBJC_IVAR___TPSSearchResult_deviceExpertResponse], 1, 1, v42);
                v48 = OBJC_IVAR___TPSSearchResult_items;
                v49 = MEMORY[0x1E69E7CC0];
                *&v46[OBJC_IVAR___TPSSearchResult_items] = MEMORY[0x1E69E7CC0];
                v50 = OBJC_IVAR___TPSSearchResult_suggestions;
                *&v46[OBJC_IVAR___TPSSearchResult_suggestions] = v49;
                *&v46[OBJC_IVAR___TPSSearchResult_query] = a1;
                swift_beginAccess();
                *&v46[v48] = v39;
                swift_beginAccess();
                *&v46[v50] = v57;
                swift_beginAccess();
                v51 = a1;

                sub_1C0107C90(v44, &v46[v47]);
                swift_endAccess();
                v59.receiver = v46;
                v59.super_class = v45;
                v52 = objc_msgSendSuper2(&v59, sel_init);
                sub_1C00F98F4(v44, &qword_1EBE066D0, &unk_1C0156640);
                return v52;
              }

              v39 = MEMORY[0x1E69E7CC0];
LABEL_57:
              swift_unknownObjectRelease();
              goto LABEL_58;
            }

            goto LABEL_75;
          }

LABEL_74:
          __break(1u);
LABEL_75:
          swift_unknownObjectRelease_n();
        }
      }

      else
      {
        v25 = 0;
        v8 = v26 + 32;
        v31 = (2 * v31) | 1;
        if (v31)
        {
          goto LABEL_51;
        }
      }

      sub_1C013C344(v26, v8, v25, v31);
      v39 = v38;
      goto LABEL_57;
    }

LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_1C013941C()
{
  result = qword_1EBE06AA0;
  if (!qword_1EBE06AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE067B0, &qword_1C0156890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06AA0);
  }

  return result;
}

unint64_t sub_1C0139480()
{
  result = qword_1EBE067D0;
  if (!qword_1EBE067D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE067D0);
  }

  return result;
}

uint64_t CSSearchableItemAttributeSet.relevanceScore.getter()
{
  if ([v0 attributeForKey_])
  {
    sub_1C014C6E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1C00FC158(v5);
  }

  return 0;
}

uint64_t CSSearchableItemAttributeSet.collectionIdentifier.getter()
{
  v1 = sub_1C014C200();
  v2 = [v0 attributeForKey_];

  if (v2)
  {
    sub_1C014C6E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C00FC158(v7);
    return 0;
  }
}

uint64_t CSSearchableItemAttributeSet.correlationIdentifier.getter()
{
  v1 = sub_1C014C200();
  v2 = [v0 attributeForKey_];

  if (v2)
  {
    sub_1C014C6E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C00FC158(v7);
    return 0;
  }
}

void CSSearchableItemAttributeSet.correlationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C014C200();

    v4 = objc_allocWithZone(MEMORY[0x1E6964E00]);
    v5 = v3;
    v6 = sub_1C014C200();
    v7 = [v4 initWithKeyName:v6 searchable:0 searchableByDefault:0 unique:0 multiValued:0];

    if (v7)
    {
      [v2 setValue:v5 forCustomKey:v7];
    }

    else
    {
      sub_1C014C8C0();
      __break(1u);
    }
  }
}

void (*CSSearchableItemAttributeSet.correlationIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CSSearchableItemAttributeSet.correlationIdentifier.getter();
  a1[1] = v3;
  return sub_1C0139904;
}

void sub_1C0139904(uint64_t *a1, char a2)
{
  v3 = a1[1];
  if (a2)
  {
    if (!v3)
    {
LABEL_5:

      return;
    }

    v4 = *a1;
    v5 = a1[1];

    v6 = sub_1C014C200();

    v7 = objc_allocWithZone(MEMORY[0x1E6964E00]);
    v8 = v6;
    v9 = sub_1C014C200();
    v10 = [v7 initWithKeyName:v9 searchable:0 searchableByDefault:0 unique:0 multiValued:0];

    if (v10)
    {
      [a1[2] setValue:v8 forCustomKey:v10];

      goto LABEL_5;
    }

LABEL_14:
    sub_1C014C8C0();
    __break(1u);
    return;
  }

  if (!v3)
  {
    return;
  }

  v11 = *a1;
  v12 = sub_1C014C200();

  v13 = objc_allocWithZone(MEMORY[0x1E6964E00]);
  v16 = v12;
  v14 = sub_1C014C200();
  v15 = [v13 initWithKeyName:v14 searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  if (!v15)
  {
    goto LABEL_14;
  }

  [a1[2] setValue:v16 forCustomKey:v15];
}

void sub_1C0139B80(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a1[1])
  {
    v6 = *a2;
    v7 = *a1;
    v8 = sub_1C014C200();
    v9 = a5();
    [v6 setValue:v8 forCustomKey:v9];
  }
}

void CSSearchableItemAttributeSet.collectionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C014C200();

    v4 = objc_allocWithZone(MEMORY[0x1E6964E00]);
    v5 = v3;
    v6 = sub_1C014C200();
    v7 = [v4 initWithKeyName:v6 searchable:1 searchableByDefault:0 unique:0 multiValued:0];

    if (v7)
    {
      [v2 setValue:v5 forCustomKey:v7];
    }

    else
    {
      sub_1C014C8C0();
      __break(1u);
    }
  }
}

void (*CSSearchableItemAttributeSet.collectionIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CSSearchableItemAttributeSet.collectionIdentifier.getter();
  a1[1] = v3;
  return sub_1C0139DB8;
}

void sub_1C0139DB8(uint64_t *a1, char a2)
{
  v3 = a1[1];
  if (a2)
  {
    if (!v3)
    {
LABEL_5:

      return;
    }

    v4 = *a1;
    v5 = a1[1];

    v6 = sub_1C014C200();

    v7 = objc_allocWithZone(MEMORY[0x1E6964E00]);
    v8 = v6;
    v9 = sub_1C014C200();
    v10 = [v7 initWithKeyName:v9 searchable:1 searchableByDefault:0 unique:0 multiValued:0];

    if (v10)
    {
      [a1[2] setValue:v8 forCustomKey:v10];

      goto LABEL_5;
    }

LABEL_14:
    sub_1C014C8C0();
    __break(1u);
    return;
  }

  if (!v3)
  {
    return;
  }

  v11 = *a1;
  v12 = sub_1C014C200();

  v13 = objc_allocWithZone(MEMORY[0x1E6964E00]);
  v16 = v12;
  v14 = sub_1C014C200();
  v15 = [v13 initWithKeyName:v14 searchable:1 searchableByDefault:0 unique:0 multiValued:0];

  if (!v15)
  {
    goto LABEL_14;
  }

  [a1[2] setValue:v16 forCustomKey:v15];
}

uint64_t _sSo20CSCustomAttributeKeyC8TipsCoreE022correlationIDAttributeC0ABvgZ_0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6964E00]);
  v1 = sub_1C014C200();
  v2 = [v0 initWithKeyName:v1 searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  if (v2)
  {
    return v2;
  }

  result = sub_1C014C8C0();
  __break(1u);
  return result;
}

uint64_t _sSo20CSCustomAttributeKeyC8TipsCoreE021collectionIDAttributeC0ABvgZ_0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6964E00]);
  v1 = sub_1C014C200();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:0 unique:0 multiValued:0];

  if (v2)
  {
    return v2;
  }

  result = sub_1C014C8C0();
  __break(1u);
  return result;
}

uint64_t sub_1C013A22C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_1C014C3C0();

  v2(v3);
}

id sub_1C013A29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = MEMORY[0x1E69E7CD0];
  v11 = MEMORY[0x1E69E7CD0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (sub_1C014C750())
    {
      sub_1C013DDFC(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CD0];
    }
  }

  *&v4[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_searchResults] = v11;
  *&v4[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_completions] = v10;
  *&v4[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_query] = 0;
  v12 = OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_startDate;
  v13 = sub_1C014BD40();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  *&v4[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_searchQuery] = a1;
  *&v4[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_queue] = a2;
  v14 = &v4[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_completion];
  *v14 = a3;
  *(v14 + 1) = a4;
  v16.receiver = v4;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t sub_1C013A3E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v21 - v3;
  v5 = sub_1C014BD40();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_startDate;
  swift_beginAccess();
  sub_1C010225C(v0 + v13, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1C012348C(v4);
    return 0x6E776F6E6B6E75;
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06900, &qword_1C0157710);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C0156330;
    sub_1C014BD30();
    sub_1C014BCD0();
    v17 = v16;
    v18 = *(v6 + 8);
    v18(v10, v5);
    v19 = MEMORY[0x1E69E6438];
    *(v15 + 56) = MEMORY[0x1E69E63B0];
    *(v15 + 64) = v19;
    *(v15 + 32) = v17;
    v20 = sub_1C014C250();
    v18(v12, v5);
    return v20;
  }
}

void sub_1C013A64C()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &aBlock - v5;
  v7 = sub_1C014C130();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&aBlock._countAndFlagsBits - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v13 = v12;
  LOBYTE(v12) = sub_1C014C150();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v1 = 0xD000000000000015;
  v14 = OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_query;
  if (*(v2 + OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_query))
  {
    if (qword_1EBE06360 == -1)
    {
LABEL_4:
      v15 = qword_1EBE06738;
      aBlock._countAndFlagsBits = 0;
      aBlock._object = 0xE000000000000000;
      sub_1C014C800();

      v56._countAndFlagsBits = v1 + 2;
      v56._object = 0x80000001C015D5C0;
      v16 = (*(v2 + OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_searchQuery) + OBJC_IVAR___TPSSearchQuery_identifier);
      swift_beginAccess();
      v18 = *v16;
      v17 = v16[1];

      MEMORY[0x1C68D6B10](v18, v17);

      v19 = v56;
      v56._countAndFlagsBits = v15;
      TipsLog.error(_:)(v19);

      return;
    }

LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  v20 = OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_searchQuery;
  v21 = *(v2 + OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_searchQuery);
  v22 = sub_1C01125D0();

  v23 = *(v2 + v14);
  *(v2 + v14) = v22;
  v24 = v22;

  if (qword_1EBE06360 != -1)
  {
    swift_once();
  }

  aBlock._countAndFlagsBits = qword_1EBE06738;
  v25._countAndFlagsBits = 0xD000000000000022;
  v25._object = 0x80000001C015D570;
  TipsLog.info(_:)(v25);
  v26 = qword_1EBE06738;
  v27 = 0xE000000000000000;
  aBlock._countAndFlagsBits = 0;
  aBlock._object = 0xE000000000000000;
  sub_1C014C800();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015BB30);
  v28 = [v24 queryString];
  if (v28)
  {
    v29 = v28;
    v30 = sub_1C014C230();
    v27 = v31;
  }

  else
  {
    v30 = 0;
  }

  MEMORY[0x1C68D6B10](v30, v27);

  MEMORY[0x1C68D6B10](0xD00000000000001ALL, 0x80000001C015D5A0);
  v32 = *(v2 + v20);
  v33 = OBJC_IVAR___TPSSearchQuery_maxCount;
  swift_beginAccess();
  v55 = *(v32 + v33);
  v34 = sub_1C014C9C0();
  MEMORY[0x1C68D6B10](v34);

  v35 = aBlock;
  aBlock._countAndFlagsBits = v26;
  TipsLog.debug(_:)(v35);

  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v37;
  v53 = sub_1C013BAC0;
  v54 = v38;
  aBlock._countAndFlagsBits = MEMORY[0x1E69E9820];
  aBlock._object = 1107296256;
  v51 = sub_1C013A22C;
  v52 = &block_descriptor_8;
  v39 = _Block_copy(&aBlock);

  [v24 setCompletionsHandler_];
  _Block_release(v39);
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  *(v42 + 24) = v41;
  v53 = sub_1C013BAE0;
  v54 = v42;
  aBlock._countAndFlagsBits = MEMORY[0x1E69E9820];
  aBlock._object = 1107296256;
  v51 = sub_1C013B170;
  v52 = &block_descriptor_16;
  v43 = _Block_copy(&aBlock);

  [v24 setFoundItemsHandler_];
  _Block_release(v43);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  *(v46 + 24) = v45;
  v53 = sub_1C013BB28;
  v54 = v46;
  aBlock._countAndFlagsBits = MEMORY[0x1E69E9820];
  aBlock._object = 1107296256;
  v51 = sub_1C010DBF8;
  v52 = &block_descriptor_24;
  v47 = _Block_copy(&aBlock);

  [v24 setCompletionHandler_];
  _Block_release(v47);
  sub_1C014BD30();
  v48 = sub_1C014BD40();
  (*(*(v48 - 8) + 56))(v6, 0, 1, v48);
  v49 = OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_startDate;
  swift_beginAccess();
  sub_1C013BB30(v6, v2 + v49);
  swift_endAccess();
  [v24 start];
}

void sub_1C013AD84(uint64_t a1)
{
  if (qword_1EBE06360 != -1)
  {
    swift_once();
  }

  sub_1C014C800();

  v11 = *(a1 + 16);
  v2 = sub_1C014C9C0();
  MEMORY[0x1C68D6B10](v2);

  MEMORY[0x1C68D6B10](0x7473656767757320, 0xED00002E736E6F69);
  v3._countAndFlagsBits = 0xD000000000000013;
  v3._object = 0x80000001C015D600;
  TipsLog.info(_:)(v3);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      if (v6 == *&v5[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_query])
      {
        v8 = v6;

        v10 = sub_1C0110C68(v9);

        swift_beginAccess();
        sub_1C013BBA0(v10);
        swift_endAccess();

        v5 = v8;
      }
    }

    else
    {
      v7 = v5;
    }
  }
}

void sub_1C013AF70(unint64_t a1)
{
  if (qword_1EBE06360 != -1)
  {
    swift_once();
  }

  sub_1C014C800();

  if (a1 >> 62)
  {
    sub_1C014C750();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = sub_1C014C9C0();
  MEMORY[0x1C68D6B10](v3);

  MEMORY[0x1C68D6B10](0x2E736D65746920, 0xE700000000000000);
  v4._countAndFlagsBits = 0xD000000000000013;
  v4._object = 0x80000001C015D600;
  TipsLog.info(_:)(v4);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      if (v7 == *&v6[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_query])
      {
        v9 = v7;

        v11 = sub_1C0110F58(v10);

        swift_beginAccess();
        sub_1C013BCA4(v11);
        swift_endAccess();

        v6 = v9;
      }
    }

    else
    {
      v8 = v6;
    }
  }
}

uint64_t sub_1C013B170(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1C0139480();
  v3 = sub_1C014C3C0();

  v2(v3);
}

void sub_1C013B1E4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1EBE06360 != -1)
    {
      swift_once();
    }

    sub_1C014C800();

    v4 = sub_1C013A3E4();
    MEMORY[0x1C68D6B10](v4);

    MEMORY[0x1C68D6B10](0x6520687469772073, 0xEE00203A726F7272);
    if (a1)
    {
      swift_getErrorValue();
      sub_1C014CA90();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A08, &qword_1C01574A0);
    v5 = sub_1C014C290();
    MEMORY[0x1C68D6B10](v5);

    v6._countAndFlagsBits = 0xD000000000000017;
    v6._object = 0x80000001C015D5E0;
    TipsLog.info(_:)(v6);

    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    sub_1C013B3B0(v7, a1);
  }
}

uint64_t sub_1C013B3B0(void *a1, void *a2)
{
  v5 = sub_1C014C0A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C014C0D0();
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v16 = *(v2 + OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_query);
    if (v16)
    {
      v17 = v16 == a1;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      v24 = *(v2 + OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_queue);
      v25 = v13;
      v26 = result;
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      v20[2] = v18;
      v20[3] = v19;
      v20[4] = a2;
      aBlock[4] = sub_1C013C198;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C011431C;
      aBlock[3] = &block_descriptor_32_0;
      v21 = _Block_copy(aBlock);
      v22 = a1;

      v23 = a2;
      sub_1C014C0B0();
      v27 = MEMORY[0x1E69E7CC0];
      sub_1C013E0C8(&qword_1EBE05D10, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066C0, &unk_1C01576F0);
      sub_1C01043E8();
      sub_1C014C700();
      MEMORY[0x1C68D6DD0](0, v15, v9, v21);
      _Block_release(v21);

      (*(v6 + 8))(v9, v5);
      (*(v25 + 8))(v15, v26);
    }
  }

  return result;
}

id sub_1C013B6FC()
{
  v1 = v0;
  v2 = sub_1C014C130();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = sub_1C014C150();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_1EBE06360 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11[1] = qword_1EBE06738;
  v9._object = 0x80000001C015D540;
  v9._countAndFlagsBits = 0xD000000000000021;
  TipsLog.debug(_:)(v9);
  result = *(v1 + OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_query);
  if (result)
  {
    return [result cancel];
  }

  return result;
}

uint64_t type metadata accessor for CoreSpotlightQuery()
{
  result = qword_1EBE06AE0;
  if (!qword_1EBE06AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C013B9B0()
{
  sub_1C0102940();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1C013BAC0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1C013AD84(a1);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C013BAE0(unint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1C013AF70(a1);
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1C013BB28(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1C013B1E4(a1);
}

uint64_t sub_1C013BB30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C013BBA0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1C013C4D8(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_1C013BCA4(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1C014C740();
    sub_1C0139480();
    sub_1C013E0C8(&qword_1EBE067D8, sub_1C0139480);
    sub_1C014C520();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
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

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_1C0123AC8();
      return;
    }

    while (1)
    {
      sub_1C013C628(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1C014C770())
      {
        sub_1C0139480();
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1C013BE94(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_query;
      v9 = *&v5[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_query];
      if (v9 && v6 == v9)
      {
        if (a3)
        {
          v28 = a3;
          v10 = a3;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06808, &unk_1C0156A20);
          type metadata accessor for CSSearchQueryError(0);
          if (swift_dynamicCast())
          {
            v28 = v29;
            sub_1C013E0C8(&qword_1EBE06500, type metadata accessor for CSSearchQueryError);
            sub_1C014BB30();

            if (v29 == -2003)
            {
              v11 = *&v5[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_searchQuery];
              v12 = OBJC_IVAR___TPSSearchQuery_isCancelled;
              swift_beginAccess();
              *(v11 + v12) = 1;
            }
          }
        }

        v13 = *&v5[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_searchQuery];
        v14 = OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_searchResults;
        swift_beginAccess();
        v15 = *&v5[v14];
        v16 = v13;

        v18 = sub_1C013C428(v17);

        v19 = OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_completions;
        swift_beginAccess();
        v20 = *&v5[v19];
        v21 = *(v20 + 16);
        if (v21)
        {
          v22 = sub_1C013C1A4(v21, 0);
          v27 = sub_1C013DA78(&v28, v22 + 4, v21, v20);

          sub_1C0123AC8();
          if (v27 != v21)
          {
            __break(1u);
            return;
          }
        }

        else
        {
          v22 = MEMORY[0x1E69E7CC0];
        }

        v23 = sub_1C0138D7C(v16, v18, v22);

        v25 = *&v5[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_completion];
        v24 = *&v5[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_completion + 8];

        v26 = v23;
        v25(v23, a3);

        v7 = *&v5[v8];
        *&v5[v8] = 0;
      }
    }

    else
    {
      v7 = v5;
    }
  }
}

void *sub_1C013C1A4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065A8, &qword_1C0156720);
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

void *sub_1C013C228(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066E8, &unk_1C0156700);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1C013C2BC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06AF0, &unk_1C0157700);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1C013C344(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for SearchResult.Item();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06AF0, &unk_1C0157700);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_1C013C428(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1C014C750();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1C013C2BC(v2, 0);

    v1 = sub_1C013DBD0(&v5, v3 + 4, v2, v1);
    sub_1C0123AC8();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1C013C4D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1C014CAE0();
  sub_1C014C2E0();
  v9 = sub_1C014CB10();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1C014C9F0() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1C013CF2C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C013C628(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1C014C760();

    if (v9)
    {

      sub_1C0139480();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1C014C750();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1C013C840(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1C013CC80(v22 + 1);
    }

    v20 = v8;
    sub_1C013CEA8(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1C0139480();
  v11 = *(v6 + 40);
  v12 = sub_1C014C600();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1C013D0AC(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1C014C610();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1C013C840(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06AF8, &qword_1C0157718);
    v2 = sub_1C014C7D0();
    v16 = v2;
    sub_1C014C740();
    if (sub_1C014C770())
    {
      sub_1C0139480();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1C013CC80(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1C014C600();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1C014C770());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1C013CA20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06B00, &qword_1C0157720);
  result = sub_1C014C7C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1C014CAE0();
      sub_1C014C2E0();
      result = sub_1C014CB10();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C013CC80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06AF8, &qword_1C0157718);
  result = sub_1C014C7C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1C014C600();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1C013CEA8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1C014C600();
  v5 = -1 << *(a2 + 32);
  result = sub_1C014C730();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1C013CF2C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1C013CA20(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C013D20C();
      goto LABEL_16;
    }

    sub_1C013D4B8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1C014CAE0();
  sub_1C014C2E0();
  result = sub_1C014CB10();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1C014C9F0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1C014CA50();
  __break(1u);
  return result;
}

void sub_1C013D0AC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C013CC80(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1C013D368();
      goto LABEL_12;
    }

    sub_1C013D6F0(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1C014C600();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_1C0139480();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1C014C610();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C014CA50();
  __break(1u);
}

void *sub_1C013D20C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06B00, &qword_1C0157720);
  v2 = *v0;
  v3 = sub_1C014C7B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1C013D368()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06AF8, &qword_1C0157718);
  v2 = *v0;
  v3 = sub_1C014C7B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C013D4B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06B00, &qword_1C0157720);
  result = sub_1C014C7C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1C014CAE0();

      sub_1C014C2E0();
      result = sub_1C014CB10();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C013D6F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06AF8, &qword_1C0157718);
  result = sub_1C014C7C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_1C014C600();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_1C013D904(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        v24 = v20;
        goto LABEL_23;
      }

      v11 += 3;

      v21 = v20;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1C013DA78(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_1C013DBD0(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1C014C740();
  sub_1C0139480();
  sub_1C013E0C8(&qword_1EBE067D8, sub_1C0139480);
  result = sub_1C014C520();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1C014C770())
      {
        goto LABEL_30;
      }

      sub_1C0139480();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void sub_1C013DDFC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1C014C750())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06AF8, &qword_1C0157718);
      v3 = sub_1C014C7E0();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1C014C750();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x1C68D7040](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_1C014C600();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_1C0139480();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_1C014C610();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_1C014C600();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_1C0139480();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_1C014C610();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1C013E0C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C013E154@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C0140114(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C013E1C4()
{
  v1 = *v0;
  sub_1C014CAE0();
  MEMORY[0x1C68D7300](v1);
  return sub_1C014CB10();
}

uint64_t sub_1C013E20C()
{
  v1 = *v0;
  sub_1C014CAE0();
  MEMORY[0x1C68D7300](v1);
  return sub_1C014CB10();
}

unint64_t sub_1C013E250@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C0140124(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t SearchQuery.QueryError.hashValue.getter()
{
  v1 = *v0;
  sub_1C014CAE0();
  MEMORY[0x1C68D7300](v1);
  return sub_1C014CB10();
}

uint64_t SearchQuery.options.getter()
{
  v1 = OBJC_IVAR___TPSSearchQuery_options;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SearchQuery.options.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TPSSearchQuery_options;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SearchQuery.matchingStyle.getter()
{
  v1 = OBJC_IVAR___TPSSearchQuery_matchingStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SearchQuery.matchingStyle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TPSSearchQuery_matchingStyle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SearchQuery.contentTypeFilter.getter()
{
  v1 = OBJC_IVAR___TPSSearchQuery_contentTypeFilter;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SearchQuery.contentTypeFilter.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TPSSearchQuery_contentTypeFilter;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SearchQuery.maxCount.getter()
{
  v1 = OBJC_IVAR___TPSSearchQuery_maxCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SearchQuery.maxCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TPSSearchQuery_maxCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SearchQuery.isCancelled.getter()
{
  v1 = OBJC_IVAR___TPSSearchQuery_isCancelled;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_1C013EC28(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  v6 = v3(v5, a2);

  return v6;
}

id SearchQuery.__allocating_init(identifier:searchTerm:options:matchingStyle:contentTypeFilter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v33 = a6;
  v34 = a7;
  v31 = a4;
  v32 = a5;
  v30 = a3;
  v11 = sub_1C014BD80();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(v8);
  v17 = &v16[OBJC_IVAR___TPSSearchQuery_identifier];
  sub_1C014BD70();
  v18 = sub_1C014BD50();
  v20 = v19;
  (*(v12 + 8))(v15, v11);
  *v17 = v18;
  v17[1] = v20;
  v21 = &v16[OBJC_IVAR___TPSSearchQuery_searchTerm];
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = OBJC_IVAR___TPSSearchQuery_options;
  *&v16[OBJC_IVAR___TPSSearchQuery_options] = 0;
  v23 = OBJC_IVAR___TPSSearchQuery_matchingStyle;
  *&v16[OBJC_IVAR___TPSSearchQuery_matchingStyle] = 0;
  v24 = OBJC_IVAR___TPSSearchQuery_contentTypeFilter;
  *&v16[OBJC_IVAR___TPSSearchQuery_contentTypeFilter] = 0;
  *&v16[OBJC_IVAR___TPSSearchQuery_maxCount] = 50;
  v16[OBJC_IVAR___TPSSearchQuery_isCancelled] = 0;
  v25 = &v16[OBJC_IVAR___TPSSearchQuery_rankingModifier];
  *v25 = 0;
  v25[1] = 0;
  swift_beginAccess();
  *v17 = a1;
  v17[1] = a2;

  swift_beginAccess();
  v26 = v21[1];
  v27 = v31;
  *v21 = v30;
  v21[1] = v27;

  swift_beginAccess();
  *&v16[v22] = v32;
  swift_beginAccess();
  *&v16[v23] = v33;
  swift_beginAccess();
  *&v16[v24] = v34;
  v35.receiver = v16;
  v35.super_class = v8;
  return objc_msgSendSuper2(&v35, sel_init);
}

id SearchQuery.init(identifier:searchTerm:options:matchingStyle:contentTypeFilter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v35 = a7;
  v32 = a5;
  v33 = a6;
  v31 = a4;
  ObjectType = swift_getObjectType();
  v12 = sub_1C014BD80();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v8[OBJC_IVAR___TPSSearchQuery_identifier];
  sub_1C014BD70();
  v18 = sub_1C014BD50();
  v20 = v19;
  (*(v13 + 8))(v16, v12);
  *v17 = v18;
  v17[1] = v20;
  v21 = &v8[OBJC_IVAR___TPSSearchQuery_searchTerm];
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = OBJC_IVAR___TPSSearchQuery_options;
  *&v8[OBJC_IVAR___TPSSearchQuery_options] = 0;
  v23 = OBJC_IVAR___TPSSearchQuery_matchingStyle;
  *&v8[OBJC_IVAR___TPSSearchQuery_matchingStyle] = 0;
  v24 = OBJC_IVAR___TPSSearchQuery_contentTypeFilter;
  *&v8[OBJC_IVAR___TPSSearchQuery_contentTypeFilter] = 0;
  *&v8[OBJC_IVAR___TPSSearchQuery_maxCount] = 50;
  v8[OBJC_IVAR___TPSSearchQuery_isCancelled] = 0;
  v25 = &v8[OBJC_IVAR___TPSSearchQuery_rankingModifier];
  *v25 = 0;
  v25[1] = 0;
  swift_beginAccess();
  *v17 = a1;
  v17[1] = a2;

  swift_beginAccess();
  v26 = v21[1];
  v27 = v31;
  *v21 = a3;
  v21[1] = v27;

  swift_beginAccess();
  *&v8[v22] = v32;
  swift_beginAccess();
  *&v8[v23] = v33;
  swift_beginAccess();
  v28 = ObjectType;
  *&v8[v24] = v35;
  v36.receiver = v8;
  v36.super_class = v28;
  return objc_msgSendSuper2(&v36, sel_init);
}

id SearchQuery.__allocating_init(identifier:searchTerm:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1C014C200();

  v3 = sub_1C014C200();

  v4 = [v1 initWithIdentifier:v2 searchTerm:v3 options:0 matchingStyle:0 contentTypeFilter:0];

  return v4;
}

id SearchQuery.init(identifier:searchTerm:)()
{
  v1 = sub_1C014C200();

  v2 = sub_1C014C200();

  v3 = [v0 initWithIdentifier:v1 searchTerm:v2 options:0 matchingStyle:0 contentTypeFilter:0];

  return v3;
}

uint64_t SearchQuery.description.getter()
{
  v1 = v0;
  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x6669746E65646928, 0xEC0000003A726569);
  v2 = (v0 + OBJC_IVAR___TPSSearchQuery_identifier);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  MEMORY[0x1C68D6B10](v3, v4);

  MEMORY[0x1C68D6B10](0x686372616573202CLL, 0xED00003A6D726554);
  v5 = (v1 + OBJC_IVAR___TPSSearchQuery_searchTerm);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];

  MEMORY[0x1C68D6B10](v6, v7);

  MEMORY[0x1C68D6B10](0x6E6F6974706F202CLL, 0xEA00000000003A73);
  v8 = OBJC_IVAR___TPSSearchQuery_options;
  swift_beginAccess();
  v19 = *(v1 + v8);
  type metadata accessor for TPSSearchQueryOptions(0);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000010, 0x80000001C015D640);
  v9 = OBJC_IVAR___TPSSearchQuery_matchingStyle;
  swift_beginAccess();
  v18 = *(v1 + v9);
  v10 = sub_1C014C9C0();
  MEMORY[0x1C68D6B10](v10);

  MEMORY[0x1C68D6B10](0xD000000000000014, 0x80000001C015D660);
  v11 = OBJC_IVAR___TPSSearchQuery_contentTypeFilter;
  swift_beginAccess();
  v17 = *(v1 + v11);
  v12 = sub_1C014C9C0();
  MEMORY[0x1C68D6B10](v12);

  MEMORY[0x1C68D6B10](0x756F4378616D202CLL, 0xEB000000003A746ELL);
  v13 = OBJC_IVAR___TPSSearchQuery_maxCount;
  swift_beginAccess();
  v16 = *(v1 + v13);
  v14 = sub_1C014C9C0();
  MEMORY[0x1C68D6B10](v14);

  return 0;
}

id SearchQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchQuery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall SearchQuery.encode(with:)(NSCoder with)
{
  v3 = (v1 + OBJC_IVAR___TPSSearchQuery_identifier);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_1C014C200();

  v7 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

  v8 = (v1 + OBJC_IVAR___TPSSearchQuery_searchTerm);
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];

  v11 = sub_1C014C200();

  v12 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = OBJC_IVAR___TPSSearchQuery_options;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v15 = sub_1C014C670();
  v16 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

  v17 = OBJC_IVAR___TPSSearchQuery_matchingStyle;
  swift_beginAccess();
  v18 = *(v1 + v17);
  v19 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeInteger:v18 forKey:v19];

  v20 = OBJC_IVAR___TPSSearchQuery_contentTypeFilter;
  swift_beginAccess();
  v21 = *(v1 + v20);
  v22 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeInteger:v21 forKey:v22];

  v23 = OBJC_IVAR___TPSSearchQuery_maxCount;
  swift_beginAccess();
  v24 = *(v1 + v23);
  v25 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeInteger:v24 forKey:v25];

  v26 = OBJC_IVAR___TPSSearchQuery_isCancelled;
  swift_beginAccess();
  v27 = *(v1 + v26);
  v28 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeBool:v27 forKey:v28];
}

id SearchQuery.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

_BYTE *SearchQuery.init(coder:)(void *a1)
{
  v2 = v1;
  sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  v4 = sub_1C014C5E0();
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = sub_1C014C5E0();
  if (!v6)
  {

    a1 = v5;
LABEL_7:

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v7 = v6;
  sub_1C010074C(0, &qword_1EBE05C58, 0x1E696AD98);
  v8 = sub_1C014C5E0();
  if (v8)
  {
    v9 = v8;
    sub_1C014C680();
  }

  v11 = sub_1C014C200();
  v12 = [a1 decodeIntegerForKey_];

  if (v12 >= 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  v14 = sub_1C014C200();
  v15 = [a1 decodeIntegerForKey_];

  if (v15 >= 5)
  {
    v15 = 0;
  }

  v16 = sub_1C014C200();
  v17 = [a1 decodeIntegerForKey_];

  v18 = sub_1C014C200();
  v19 = [a1 decodeBoolForKey_];

  v20 = [v2 initWithIdentifier:v5 searchTerm:v7 options:0 matchingStyle:v13 contentTypeFilter:v15];
  v21 = OBJC_IVAR___TPSSearchQuery_maxCount;
  swift_beginAccess();
  *&v20[v21] = v17;
  v22 = OBJC_IVAR___TPSSearchQuery_isCancelled;
  swift_beginAccess();
  result = v20;
  v20[v22] = v19;
  return result;
}

uint64_t SearchQuery.hash.getter()
{
  v1 = (v0 + OBJC_IVAR___TPSSearchQuery_identifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  v4 = MEMORY[0x1C68D6B80](v3, v2);

  return v4;
}

uint64_t SearchQuery.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C011C8B0(a1, v11);
  if (!v12)
  {
    sub_1C00FC158(v11);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    return v8 & 1;
  }

  v3 = (v1 + OBJC_IVAR___TPSSearchQuery_identifier);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = &v10[OBJC_IVAR___TPSSearchQuery_identifier];
  swift_beginAccess();
  if (v4 == *v6 && v5 == *(v6 + 1))
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_1C014C9F0();
  }

  return v8 & 1;
}

unint64_t sub_1C0140114(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C0140124(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C0140138()
{
  result = qword_1EBE06B58;
  if (!qword_1EBE06B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06B58);
  }

  return result;
}

unint64_t sub_1C01401C0()
{
  result = qword_1EBE06B70;
  if (!qword_1EBE06B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06B70);
  }

  return result;
}

uint64_t sub_1C0140244(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1C014029C()
{
  result = qword_1EBE06B88;
  if (!qword_1EBE06B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06B88);
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1C01403A8()
{
  v0 = _sSo14NSXPCInterfaceC8TipsCoreE25assistantSupportInterfaceABvgZ_0();

  return v0;
}

uint64_t sub_1C01403D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06570, &qword_1C01562F8);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1EBE06B90;
    v3 = &unk_1C0157A00;
  }

  else
  {
    v2 = &unk_1EBE06AF0;
    v3 = &unk_1C0157700;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

id _sSo14NSXPCInterfaceC8TipsCoreE25assistantSupportInterfaceABvgZ_0()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  sub_1C01403D0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0156390;
  *(inited + 32) = type metadata accessor for ResultContext();
  v2 = sub_1C010074C(0, &unk_1EDD44910, 0x1E695DEC8);
  *(inited + 40) = v2;
  sub_1C00FA23C(inited);
  swift_setDeallocating();
  v3 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v4 = sub_1C014C3B0();

  v5 = [v3 initWithArray_];

  sub_1C014C500();
  v6 = sub_1C014C4F0();

  [v0 setClasses:v6 forSelector:sel_findMatchingResultIdFromContexts_reply_ argumentIndex:0 ofReply:0];

  sub_1C01403D0();
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1C0156390;
  v28 = sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  *(v7 + 32) = v28;
  *(v7 + 40) = v2;
  sub_1C00FA23C(v7);
  swift_setDeallocating();
  v8 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v9 = sub_1C014C3B0();

  v10 = [v8 initWithArray_];

  sub_1C014C500();
  v11 = sub_1C014C4F0();

  [v0 setClasses:v11 forSelector:sel_availableUserGuideIdentifiersWithReply_ argumentIndex:0 ofReply:1];

  sub_1C01403D0();
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1C0156330;
  *(v12 + 32) = sub_1C010074C(0, &qword_1EBE05C60, off_1E8100990);
  sub_1C00FA23C(v12);
  swift_setDeallocating();
  v13 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v14 = sub_1C014C3B0();

  v15 = [v13 initWithArray_];

  sub_1C014C500();
  v16 = sub_1C014C4F0();

  [v0 setClasses:v16 forSelector:sel_fetchDocumentWithIdentifier_reply_ argumentIndex:0 ofReply:1];

  sub_1C01403D0();
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1C0156330;
  *(v17 + 32) = type metadata accessor for ContextKeys();
  sub_1C00FA23C(v17);
  swift_setDeallocating();
  v18 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v19 = sub_1C014C3B0();

  v20 = [v18 initWithArray_];

  sub_1C014C500();
  v21 = sub_1C014C4F0();

  [v0 setClasses:v21 forSelector:sel_resolveContextForKeys_reply_ argumentIndex:0 ofReply:0];

  sub_1C01403D0();
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1C0156A40;
  *(v22 + 32) = sub_1C010074C(0, &unk_1EDD44B80, 0x1E695DF20);
  *(v22 + 40) = v28;
  *(v22 + 48) = sub_1C010074C(0, &qword_1EBE05C58, 0x1E696AD98);
  sub_1C00FA23C(v22);
  swift_setDeallocating();
  v23 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v24 = sub_1C014C3B0();

  v25 = [v23 initWithArray_];

  sub_1C014C500();
  v26 = sub_1C014C4F0();

  [v0 setClasses:v26 forSelector:sel_resolveContextForKeys_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

uint64_t sub_1C0140A18(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_1C0140AC4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698F2E0]);
  v1 = @"FeatureDiscoverability";
  v2 = [v0 initWithUseCase_];

  qword_1EBE06B98 = v2;
}

uint64_t sub_1C0140B28()
{
  v0 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_1EBE05CE8 = sub_1C0143B6C;
  unk_1EBE05CF0 = result;
  return result;
}

uint64_t sub_1C0140BA8()
{
  v0 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v1 = [v0 Intent];
  result = swift_unknownObjectRelease();
  qword_1EBE06BA0 = v1;
  return result;
}

void *static TipsBiomeSQLQueryManager.countsForOutgoingCalls(_:interval:)(uint64_t a1, void *a2)
{
  v4 = sub_1C014BD40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v50 - v14;
  if (a2)
  {
    v16 = a2;
    v17 = [v16 startDate];
    sub_1C014BD00();

    v18 = *(v5 + 56);
    v18(v15, 0, 1, v4);
    v53 = v16;
    v19 = [v16 endDate];
    sub_1C014BD00();

    v18(v13, 0, 1, v4);
    v20 = *(v5 + 48);
    if (v20(v15, 1, v4) == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = sub_1C014BCE0();
      (*(v5 + 8))(v15, v4);
    }

    if (v20(v13, 1, v4) == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = sub_1C014BCE0();
      (*(v5 + 8))(v13, v4);
    }

    v23 = [objc_allocWithZone(MEMORY[0x1E698F2D0]) initWithStartDate:v21 endDate:v22 maxEvents:0 lastN:0 reversed:0];

    if (qword_1EBE06398 != -1)
    {
      swift_once();
    }

    v52 = [qword_1EBE06BA0 publisherWithOptions_];
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    v50[1] = v24 + 16;
    v51 = v23;
    if (qword_1EDD44C50 != -1)
    {
      swift_once();
    }

    aBlock._countAndFlagsBits = qword_1EDD44C58;
    v25._countAndFlagsBits = 0xD00000000000002DLL;
    v25._object = 0x80000001C015D810;
    TipsLog.debug(_:)(v25);
    v50[0] = qword_1EDD44C58;
    aBlock._countAndFlagsBits = 0;
    aBlock._object = 0xE000000000000000;
    sub_1C014C800();

    aBlock._countAndFlagsBits = 0xD00000000000001CLL;
    aBlock._object = 0x80000001C015D840;
    v26 = MEMORY[0x1C68D6BE0](a1, MEMORY[0x1E69E6158]);
    v27 = a1;
    MEMORY[0x1C68D6B10](v26);

    MEMORY[0x1C68D6B10](0x767265746E69202CLL, 0xEC000000203A6C61);
    v28 = v53;
    v29 = [v53 startDate];
    sub_1C014BD00();

    v30 = sub_1C014BD20();
    v32 = v31;
    v33 = *(v5 + 8);
    v33(v8, v4);
    MEMORY[0x1C68D6B10](v30, v32);

    MEMORY[0x1C68D6B10](544175136, 0xE400000000000000);
    v34 = [v28 endDate];
    sub_1C014BD00();

    v35 = sub_1C014BD20();
    v37 = v36;
    v33(v8, v4);
    MEMORY[0x1C68D6B10](v35, v37);

    v38 = aBlock;
    aBlock._countAndFlagsBits = v50[0];
    TipsLog.debug(_:)(v38);

    v39 = swift_allocObject();
    *(v39 + 16) = v27;
    v59 = sub_1C01439D0;
    v60 = v39;
    aBlock._countAndFlagsBits = MEMORY[0x1E69E9820];
    aBlock._object = 1107296256;
    v57 = sub_1C0143C28;
    v58 = &block_descriptor_10;
    v40 = _Block_copy(&aBlock);

    v41 = v52;
    v42 = [v52 filterWithIsIncluded_];
    _Block_release(v40);
    v59 = nullsub_1;
    v60 = 0;
    aBlock._countAndFlagsBits = MEMORY[0x1E69E9820];
    aBlock._object = 1107296256;
    v57 = sub_1C0143C24;
    v58 = &block_descriptor_6;
    v43 = _Block_copy(&aBlock);
    v59 = sub_1C01439F0;
    v60 = v24;
    aBlock._countAndFlagsBits = MEMORY[0x1E69E9820];
    aBlock._object = 1107296256;
    v57 = sub_1C0143C24;
    v58 = &block_descriptor_9;
    v44 = _Block_copy(&aBlock);

    v45 = [v42 sinkWithCompletion:v43 receiveInput:v44];
    _Block_release(v44);
    _Block_release(v43);

    v46 = qword_1EDD44C58;
    aBlock._countAndFlagsBits = 0;
    aBlock._object = 0xE000000000000000;
    sub_1C014C800();

    v55._countAndFlagsBits = 0xD000000000000021;
    v55._object = 0x80000001C015D890;
    swift_beginAccess();
    v54 = *(v24 + 16);
    v47 = sub_1C014C9C0();
    MEMORY[0x1C68D6B10](v47);

    MEMORY[0x1C68D6B10](0x6E69686374616D20, 0xEF736C6C61632067);
    v48 = v55;
    v55._countAndFlagsBits = v46;
    TipsLog.debug(_:)(v48);

    a2 = *(v24 + 16);
  }

  return a2;
}

uint64_t sub_1C0141424(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  if ([v3 interactionDirection] != 2 || (v5 = objc_msgSend(v4, sel_groupIdentifier)) == 0)
  {

LABEL_6:
    v11 = 0;
    return v11 & 1;
  }

  v6 = v5;
  v7 = sub_1C014C230();
  v9 = v8;

  v14[0] = v7;
  v14[1] = v9;
  MEMORY[0x1EEE9AC00](v10);
  v13[2] = v14;
  v11 = sub_1C0140A18(sub_1C0143BA4, v13, a2);

  return v11 & 1;
}

uint64_t sub_1C0141530(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_5;
  }

  *(a2 + 16) = v6;
  if (qword_1EDD44C50 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1C014C800();

  v7 = [a1 description];
  v8 = sub_1C014C230();
  v10 = v9;

  MEMORY[0x1C68D6B10](v8, v10);

  v11._countAndFlagsBits = 0xD000000000000024;
  v11._object = 0x80000001C015DAA0;
  TipsLog.debug(_:)(v11);
}

void *static TipsBiomeSQLQueryManager.queryLatestEvents(stream:limit:keys:isUnique:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a5)
  {
    v10 = 0xD000000000000011;
  }

  else
  {
    v10 = 0x2A205443454C4553;
  }

  if (a5)
  {
    v11 = 0x80000001C015D9D0;
  }

  else
  {
    v11 = 0xE800000000000000;
  }

  if (*(a4 + 16))
  {
    v49[0] = v10;
    v49[1] = v11;
    v47 = 42;
    v48 = 0xE100000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067C0, &qword_1C0157160);
    sub_1C01439F8();
    sub_1C014C1C0();
    v44 = sub_1C00FCDA8();
    v45 = v44;
    v42 = MEMORY[0x1E69E6158];
    v43 = v44;
    v10 = sub_1C014C6B0();
    v13 = v12;

    v11 = v13;
  }

  sub_1C014C800();

  strcpy(v49, "            ");
  BYTE5(v49[1]) = 0;
  HIWORD(v49[1]) = -5120;
  MEMORY[0x1C68D6B10](v10, v11);

  MEMORY[0x1C68D6B10](0xD000000000000013, 0x80000001C015D8C0);
  MEMORY[0x1C68D6B10](a1, a2);
  MEMORY[0x1C68D6B10](34, 0xE100000000000000);
  if (!*(a6 + 16))
  {
    goto LABEL_12;
  }

  MEMORY[0x1C68D6B10](0xD000000000000022, 0x80000001C015D8E0);
  v14 = sub_1C0142B38(v49[0], v49[1], a6);
  v16 = v15;

  if (v16)
  {
    v49[0] = v14;
    v49[1] = v16;
LABEL_12:
    MEMORY[0x1C68D6B10](0xD00000000000001ELL, 0x80000001C015D960);
    if (a3)
    {
      v17 = sub_1C014C9C0();
      MEMORY[0x1C68D6B10](v17);

      MEMORY[0x1C68D6B10](0x2054494D494C0ALL, 0xE700000000000000);
    }

    if (qword_1EDD44C50 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDD44C58;
    sub_1C014C800();

    v48 = 0x80000001C015D980;
    MEMORY[0x1C68D6B10](v49[0], v49[1]);
    v19._countAndFlagsBits = 0xD000000000000018;
    v47 = v18;
    v19._object = 0x80000001C015D980;
    TipsLog.debug(_:)(v19);

    if (qword_1EBE06388 != -1)
    {
      swift_once();
    }

    v20 = sub_1C014C550();

    v46 = MEMORY[0x1E69E7CC0];
    v21 = &property descriptor for TPSSavedTipEntry.lastUsedVersion;
    v22 = &selRef_authenticationHandler;
    while ([v20 v21[318]])
    {
      v24 = [v20 v22[236]];
      if (v24)
      {
        v25 = v24;
        v47 = 0;
        v48 = 0xE000000000000000;
        sub_1C014C800();

        v47 = 0xD000000000000024;
        v48 = 0x80000001C015D9A0;
        swift_getErrorValue();
        v26 = sub_1C014CA90();
        MEMORY[0x1C68D6B10](v26);

        v28 = v47;
        v27 = v48;
        v29 = sub_1C014C560();
        if (os_log_type_enabled(v18, v29))
        {
          v30 = v21;
          v31 = v22;
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v47 = v33;
          *v32 = 136315138;
          *(v32 + 4) = sub_1C010C980(v28, v27, &v47);
          _os_log_impl(&dword_1C00A7000, v18, v29, "%s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v33);
          MEMORY[0x1C68D7F30](v33, -1, -1);
          v34 = v32;
          v22 = v31;
          v21 = v30;
          MEMORY[0x1C68D7F30](v34, -1, -1);
        }
      }

      v23 = [v20 row];
      if (v23)
      {
        v35 = v23;
        v36 = sub_1C014C170();

        v37 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1C00FE9A4(0, v46[2] + 1, 1, v46);
        }

        v39 = v46[2];
        v38 = v46[3];
        if (v39 >= v38 >> 1)
        {
          v46 = sub_1C00FE9A4((v38 > 1), v39 + 1, 1, v46);
        }

        v46[2] = v39 + 1;
        v46[v39 + 4] = v36;
        v22 = v37;
      }
    }

    return v46;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  v47 = qword_1EDD44C58;
  v40._countAndFlagsBits = 0xD00000000000004DLL;
  v40._object = 0x80000001C015D910;
  TipsLog.error(_:)(v40);
  return MEMORY[0x1E69E7CC0];
}

uint64_t static TipsBiomeSQLQueryManager.queryDiscoverabilitySignalsEvents(with:context:interval:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06BA8, &unk_1C0157A10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v47 - v18;
  v20 = sub_1C014B960();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0143A5C(a5, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1C0143ACC(v19);
    v25 = [objc_allocWithZone(MEMORY[0x1E698F2D0]) init];
  }

  else
  {
    v47 = a3;
    v48 = a4;
    v49 = a2;
    (*(v21 + 32))(v24, v19, v20);
    sub_1C014B950();
    v26 = sub_1C014BD40();
    v27 = *(v26 - 8);
    v28 = *(v27 + 56);
    v28(v15, 0, 1, v26);
    sub_1C014B940();
    v28(v13, 0, 1, v26);
    v29 = *(v27 + 48);
    v30 = 0;
    if (v29(v15, 1, v26) != 1)
    {
      v30 = sub_1C014BCE0();
      (*(v27 + 8))(v15, v26);
    }

    v31 = v30;
    if (v29(v13, 1, v26) == 1)
    {
      v32 = 0;
    }

    else
    {
      v32 = sub_1C014BCE0();
      (*(v27 + 8))(v13, v26);
    }

    a4 = v48;
    a2 = v49;
    a3 = v47;
    v25 = [objc_allocWithZone(MEMORY[0x1E698F2D0]) initWithStartDate:v31 endDate:v32 maxEvents:0 lastN:0 reversed:0];

    (*(v21 + 8))(v24, v20);
  }

  if (qword_1EBE05CE0 != -1)
  {
    swift_once();
  }

  v33 = qword_1EBE05CE8();
  v34 = [v33 publisherWithOptions_];

  v35 = swift_allocObject();
  *(v35 + 16) = MEMORY[0x1E69E7CC0];
  v36 = (v35 + 16);
  v37 = swift_allocObject();
  v37[2] = v50;
  v37[3] = a2;
  v37[4] = a3;
  v37[5] = a4;
  v55 = sub_1C0143B34;
  v56 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = sub_1C0143C28;
  v54 = &block_descriptor_18;
  v38 = _Block_copy(&aBlock);

  v39 = [v34 filterWithIsIncluded_];
  _Block_release(v38);
  v55 = nullsub_1;
  v56 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = sub_1C0143C24;
  v54 = &block_descriptor_21;
  v40 = _Block_copy(&aBlock);
  v55 = sub_1C0143B40;
  v56 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = sub_1C0143C24;
  v54 = &block_descriptor_24_0;
  v41 = _Block_copy(&aBlock);

  v42 = [v39 sinkWithCompletion:v40 receiveInput:v41];
  _Block_release(v41);
  _Block_release(v40);

  swift_beginAccess();
  v43 = *(v35 + 16);
  if (v43 >> 62)
  {
    if (v43 < 0)
    {
      v46 = *v36;
    }

    v44 = sub_1C014C750();
  }

  else
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v44)
  {
    v44 = *v36;
  }

  return v44;
}

uint64_t sub_1C01422E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [a1 eventBody];
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  v12 = [v10 contentIdentifier];

  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = sub_1C014C230();
  v15 = v14;

  if (v13 == a2 && v15 == a3)
  {

    if (a5)
    {
      goto LABEL_9;
    }

LABEL_17:
    v24 = 1;
    return v24 & 1;
  }

  v17 = sub_1C014C9F0();

  if ((v17 & 1) == 0)
  {
LABEL_14:
    v24 = 0;
    return v24 & 1;
  }

  if (!a5)
  {
    goto LABEL_17;
  }

LABEL_9:
  v18 = [a1 eventBody];
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  v20 = [v18 context];

  if (!v20)
  {
    goto LABEL_14;
  }

  v21 = sub_1C014C230();
  v23 = v22;

  if (v21 == a4 && v23 == a5)
  {
    v24 = 1;
  }

  else
  {
    v24 = sub_1C014C9F0();
  }

  return v24 & 1;
}

uint64_t sub_1C014246C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

id sub_1C01424C4(void *a1, uint64_t a2)
{
  result = [a1 eventBody];
  if (result)
  {

    swift_beginAccess();
    v5 = a1;
    MEMORY[0x1C68D6BB0]();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v6 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C014C3E0();
    }

    sub_1C014C400();
    return swift_endAccess();
  }

  return result;
}

id TipsBiomeSQLQueryManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TipsBiomeSQLQueryManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipsBiomeSQLQueryManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TipsBiomeSQLQueryManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipsBiomeSQLQueryManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C0142668(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C014C9F0() & 1;
  }
}

uint64_t sub_1C01426C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a1;
  v40 = a2;
  v6 = a5 + 64;
  v7 = 1 << *(a5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a5 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (v9)
  {
    v15 = v12;
LABEL_17:
    v18 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v19 = v18 | (v15 << 6);
    v20 = (*(a5 + 48) + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    sub_1C00FC1C0(*(a5 + 56) + 32 * v19, v33);
    *&v34 = v22;
    *(&v34 + 1) = v21;
    sub_1C00F9954(v33, &v35);

LABEL_18:
    v37 = v34;
    v38[0] = v35;
    v38[1] = v36;
    v23 = *(&v34 + 1);
    if (!*(&v34 + 1))
    {

      return v39;
    }

    v24 = v37;
    sub_1C00F9954(v38, &v34);
    sub_1C00FC1C0(&v34, v33);
    if (swift_dynamicCast())
    {

      sub_1C014C800();
      MEMORY[0x1C68D6B10](0xD000000000000013, 0x80000001C015DA80);
      MEMORY[0x1C68D6B10](a3, a4);
      MEMORY[0x1C68D6B10](0x2E2427202CLL, 0xE500000000000000);
      MEMORY[0x1C68D6B10](v24, v23);

      MEMORY[0x1C68D6B10](0x22203D202927, 0xE600000000000000);
      sub_1C014C8B0();
      MEMORY[0x1C68D6B10](34, 0xE100000000000000);
      v13 = 0;
      v14 = 0xE000000000000000;
LABEL_5:
      MEMORY[0x1C68D6B10](v13, v14);

      goto LABEL_6;
    }

    if (swift_dynamicCast())
    {
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_1C014C800();
      MEMORY[0x1C68D6B10](0xD000000000000013, 0x80000001C015DA80);
      MEMORY[0x1C68D6B10](a3, a4);
      MEMORY[0x1C68D6B10](0x2E2427202CLL, 0xE500000000000000);
      MEMORY[0x1C68D6B10](v24, v23);

      MEMORY[0x1C68D6B10](0x203D202927, 0xE500000000000000);
      sub_1C014C8B0();
      v13 = v31;
      v14 = v32;
      goto LABEL_5;
    }

    if (qword_1EDD44C50 != -1)
    {
      swift_once();
    }

    v25 = qword_1EDD44C58;
    v26 = sub_1C014C560();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1C010C980(0xD00000000000002CLL, 0x80000001C015DA50, &v31);
      _os_log_impl(&dword_1C00A7000, v25, v26, "%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1C68D7F30](v28, -1, -1);
      MEMORY[0x1C68D7F30](v27, -1, -1);
    }

LABEL_6:
    __swift_destroy_boxed_opaque_existential_1Tm(&v34);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v33);
  }

  if (v10 <= v12 + 1)
  {
    v16 = v12 + 1;
  }

  else
  {
    v16 = v10;
  }

  v17 = v16 - 1;
  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      v9 = 0;
      v35 = 0u;
      v36 = 0u;
      v12 = v17;
      v34 = 0u;
      goto LABEL_18;
    }

    v9 = *(v6 + 8 * v15);
    ++v12;
    if (v9)
    {
      v12 = v15;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0142B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = a3 + 64;
  v4 = *(a3 + 64);
  v54 = a1;
  v55 = a2;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v41 = v9;
  v42 = v5;
  v39 = v3;
  while (1)
  {
    if (!v8)
    {
      if (v9 <= v10 + 1)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = v9;
      }

      v13 = v12 - 1;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v9)
        {
          v8 = 0;
          v50 = 0u;
          v51 = 0u;
          v10 = v13;
          v49 = 0u;
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v11);
        ++v10;
        if (v8)
        {
          v10 = v11;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    v11 = v10;
LABEL_16:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v3 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    sub_1C00FC1C0(*(v3 + 56) + 32 * v15, v48);
    *&v49 = v17;
    *(&v49 + 1) = v18;
    sub_1C00F9954(v48, &v50);

LABEL_17:
    v52 = v49;
    v53[0] = v50;
    v53[1] = v51;
    v19 = *(&v49 + 1);
    if (!*(&v49 + 1))
    {

      return v54;
    }

    v20 = v52;
    sub_1C00F9954(v53, &v49);
    sub_1C00FC1C0(&v49, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06C10, &qword_1C0157A58);
    if (swift_dynamicCast())
    {

      sub_1C00FC1C0(&v49, &v43);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_4;
      }

      v21 = *(v45 + 16);
      if (v21)
      {
        v40 = v20;
        v22 = v45 + 32;
        v23 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1C00FC1C0(v22, &v43);
          v45 = 0;
          v46 = 0xE000000000000000;
          sub_1C014C8B0();
          v25 = v45;
          v24 = v46;
          __swift_destroy_boxed_opaque_existential_1Tm(&v43);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_1C00FE898(0, *(v23 + 2) + 1, 1, v23);
          }

          v27 = *(v23 + 2);
          v26 = *(v23 + 3);
          if (v27 >= v26 >> 1)
          {
            v23 = sub_1C00FE898((v26 > 1), v27 + 1, 1, v23);
          }

          *(v23 + 2) = v27 + 1;
          v28 = &v23[16 * v27];
          *(v28 + 4) = v25;
          *(v28 + 5) = v24;
          v22 += 32;
          --v21;
        }

        while (v21);

        v20 = v40;
      }

      else
      {

        v23 = MEMORY[0x1E69E7CC0];
      }

      v43 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067C0, &qword_1C0157160);
      sub_1C01439F8();
      v34 = sub_1C014C1C0();
      v36 = v35;

      v43 = 0;
      v44 = 0xE000000000000000;
      sub_1C014C800();

      v43 = 0x20444E41200ALL;
      v44 = 0xE600000000000000;
      MEMORY[0x1C68D6B10](v20, v19);

      MEMORY[0x1C68D6B10](0x28204E4920, 0xE500000000000000);
      MEMORY[0x1C68D6B10](v34, v36);

      MEMORY[0x1C68D6B10](41, 0xE100000000000000);
      MEMORY[0x1C68D6B10](v43, v44);

      __swift_destroy_boxed_opaque_existential_1Tm(&v49);
      v3 = v39;
      v9 = v41;
      v5 = v42;
      goto LABEL_5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06C30, &unk_1C0157A60);
    if (!swift_dynamicCast())
    {
      break;
    }

    sub_1C00FC1C0(&v49, &v43);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_4:
      __swift_destroy_boxed_opaque_existential_1Tm(&v49);

      goto LABEL_5;
    }

    v29 = sub_1C01426C0(v54, v55, v20, v19, v47);
    v31 = v30;

    __swift_destroy_boxed_opaque_existential_1Tm(&v49);
    v54 = v29;
    v55 = v31;
    v9 = v41;
    v5 = v42;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
  }

  if (swift_dynamicCast())
  {

    v45 = 0;
    v46 = 0xE000000000000000;
    MEMORY[0x1C68D6B10](0x20444E41200ALL, 0xE600000000000000);
    MEMORY[0x1C68D6B10](v20, v19);

    MEMORY[0x1C68D6B10](572538144, 0xE400000000000000);
    sub_1C014C8B0();
    MEMORY[0x1C68D6B10](34, 0xE100000000000000);
    v32 = v45;
    v33 = v46;
LABEL_36:
    MEMORY[0x1C68D6B10](v32, v33);

    __swift_destroy_boxed_opaque_existential_1Tm(&v49);
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    MEMORY[0x1C68D6B10](0x20444E41200ALL, 0xE600000000000000);
    MEMORY[0x1C68D6B10](v20, v19);

    MEMORY[0x1C68D6B10](2112800, 0xE300000000000000);
    sub_1C014C8B0();
    v32 = v43;
    v33 = v44;
    goto LABEL_36;
  }

  if (qword_1EDD44C50 == -1)
  {
    goto LABEL_41;
  }

LABEL_43:
  swift_once();
LABEL_41:
  v43 = qword_1EDD44C58;
  v38._object = 0x80000001C015DA20;
  v38._countAndFlagsBits = 0xD000000000000020;
  TipsLog.debug(_:)(v38);

  __swift_destroy_boxed_opaque_existential_1Tm(&v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  return 0;
}

uint64_t sub_1C01431F8(void *a1, void *a2)
{
  v4 = sub_1C014BD40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  v9 = a2;
  v10 = [v9 startDate];
  sub_1C014BD00();

  sub_1C014BCF0();
  v11 = *(v5 + 8);
  v11(v8, v4);
  v12 = [v9 endDate];
  sub_1C014BD00();

  sub_1C014BCF0();
  v11(v8, v4);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_1C014C800();
  MEMORY[0x1C68D6B10](0xD00000000000002ELL, 0x80000001C015DAF0);
  v13 = [a1 stream];
  v14 = sub_1C014C230();
  v16 = v15;

  MEMORY[0x1C68D6B10](v14, v16);

  MEMORY[0x1C68D6B10](0xD00000000000002CLL, 0x80000001C015DB20);
  sub_1C014C4D0();
  MEMORY[0x1C68D6B10](0x2220444E412022, 0xE700000000000000);
  sub_1C014C4D0();
  MEMORY[0x1C68D6B10](34, 0xE100000000000000);
  countAndFlagsBits = v27._countAndFlagsBits;
  object = v27._object;
  v19 = [a1 filterParametersForBiomeQuery];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1C014C170();

    countAndFlagsBits = sub_1C0142B38(countAndFlagsBits, object, v21);
    v23 = v22;

    if (!v23)
    {

      return countAndFlagsBits;
    }

    object = v23;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDD44C58;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_1C014C800();

  v27._countAndFlagsBits = 0xD000000000000018;
  v27._object = 0x80000001C015D980;
  MEMORY[0x1C68D6B10](countAndFlagsBits, object);
  v25 = v27;
  v27._countAndFlagsBits = v24;
  TipsLog.debug(_:)(v25);

  return countAndFlagsBits;
}

uint64_t _s8TipsCore0A20BiomeSQLQueryManagerC14countsForEvent_8intervalSuSo013TPSContextualcH0C_So14NSDateIntervalCtFZ_0(void *a1, void *a2)
{
  sub_1C01431F8(a1, a2);
  if (v3)
  {
    if (qword_1EBE06388 != -1)
    {
      swift_once();
    }

    v4 = sub_1C014C550();

    v5 = &property descriptor for TPSSavedTipEntry.lastUsedVersion;
    if ([v4 next])
    {
      v7 = 0x80000001C015D9A0;
      v8 = &selRef_authenticationHandler;
      p_info = TPSEventsProvider.info;
      for (i = [v4 error]; ; i = objc_msgSend(v4, v8[236], v37, v38))
      {
        v11 = i;
        if (v11)
        {
          v12 = v11;
          if (p_info[394] != -1)
          {
            swift_once();
          }

          v13 = qword_1EDD44C58;
          v39 = 0;
          v40 = 0xE000000000000000;
          sub_1C014C800();

          v39 = 0xD000000000000024;
          v40 = v7;
          swift_getErrorValue();
          v14 = sub_1C014CA90();
          MEMORY[0x1C68D6B10](v14);

          v16 = v39;
          v15 = v40;
          v17 = sub_1C014C560();
          if (os_log_type_enabled(v13, v17))
          {
            v18 = swift_slowAlloc();
            v19 = v4;
            v20 = v8;
            v21 = v7;
            v22 = swift_slowAlloc();
            v39 = v22;
            *v18 = v37;
            *(v18 + 4) = sub_1C010C980(v16, v15, &v39);
            _os_log_impl(&dword_1C00A7000, v13, v17, "%s", v18, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v22);
            v23 = v22;
            v7 = v21;
            v8 = v20;
            v4 = v19;
            p_info = (TPSEventsProvider + 32);
            MEMORY[0x1C68D7F30](v23, -1, -1);
            v24 = v18;
            v5 = &property descriptor for TPSSavedTipEntry.lastUsedVersion;
            MEMORY[0x1C68D7F30](v24, -1, -1);
          }
        }

        else
        {
          v25 = [v4 row];
          if (v25)
          {
            v26 = v25;
            v27 = sub_1C014C170();

            sub_1C014C7A0();
            if (*(v27 + 16) && (v28 = sub_1C012EC98(&v39), (v29 & 1) != 0))
            {
              sub_1C00FC1C0(*(v27 + 56) + 32 * v28, v41);
              sub_1C00FC104(&v39);

              if (swift_dynamicCast())
              {

                return 0x292A28746E756F63;
              }
            }

            else
            {

              sub_1C00FC104(&v39);
            }
          }
        }

        if (([v4 v5[318]] & 1) == 0)
        {
          break;
        }
      }
    }
  }

  else
  {
    if (qword_1EDD44C50 != -1)
    {
      swift_once();
    }

    v30 = qword_1EDD44C58;
    sub_1C014C800();

    v31 = [a1 description];
    v32 = sub_1C014C230();
    v34 = v33;

    MEMORY[0x1C68D6B10](v32, v34);

    v35._countAndFlagsBits = 0xD00000000000001BLL;
    v39 = v30;
    v35._object = 0x80000001C015DAD0;
    TipsLog.error(_:)(v35);
  }

  return 0;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C01439F8()
{
  result = qword_1EBE06CD0;
  if (!qword_1EBE06CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE067C0, &qword_1C0157160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06CD0);
  }

  return result;
}

uint64_t sub_1C0143A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06BA8, &unk_1C0157A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0143ACC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06BA8, &unk_1C0157A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1C0143B6C()
{
  v1 = [*(v0 + 16) Signals];

  return v1;
}

uint64_t sub_1C0143BA4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C014C9F0() & 1;
  }
}

uint64_t static SupportFlowURLComponents.components(from:)()
{
  v0 = sub_1C014B9A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065E0, &unk_1C0157A70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v36 - v7;
  v9 = sub_1C014BA60();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C014B9E0();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1C014409C(v8);
    return 0;
  }

  (*(v10 + 32))(v13, v8, v9);
  v14 = sub_1C014BA20();
  v16 = v15;
  v17 = sub_1C014C230();
  if (!v16)
  {

    goto LABEL_27;
  }

  if (v14 == v17 && v16 == v18)
  {
  }

  else
  {
    v20 = sub_1C014C9F0();

    if ((v20 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v21 = sub_1C014B9C0();
  if (!v21)
  {
LABEL_27:
    (*(v10 + 8))(v13, v9);
    return 0;
  }

  v37 = v13;
  v38 = v10;
  v39 = v9;
  v22 = *(v21 + 16);
  v36 = v21;
  if (v22)
  {
    v40 = 0;
    v41 = 0;
    v44 = *(v1 + 16);
    v45 = v1 + 16;
    v23 = v21 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v24 = *(v1 + 72);
    v42 = 0;
    v43 = v24;
    v25 = (v1 + 8);
    v44(v4, v23, v0);
    while (1)
    {
      if (v26 = sub_1C014B990(), v28 = v27, v29 = sub_1C014B980(), v31 = v30, (*v25)(v4, v0), v29 == 0x696669746E656469) && v31 == 0xEA00000000007265 || (sub_1C014C9F0())
      {

        v42 = v26;
      }

      else if (v29 == 0x7265727265666572 && v31 == 0xE800000000000000)
      {

        v40 = v26;
        v41 = v28;
      }

      else
      {
        v32 = sub_1C014C9F0();

        v34 = v40;
        v33 = v41;
        if (v32)
        {
          v34 = v26;
          v33 = v28;
        }

        v40 = v34;
        v41 = v33;
      }

      v23 += v43;
      if (!--v22)
      {
        break;
      }

      v44(v4, v23, v0);
    }
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
  }

  (*(v38 + 8))(v37, v39);
  return v42;
}

uint64_t sub_1C014409C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065E0, &unk_1C0157A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SupportFlowURLComponents.urlForIdentifier(_:referrer:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v26[2] = a4;
  v27 = sub_1C014BA60();
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C014B9A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v26 - v17;
  if (!a1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v26[1] = a2;
  sub_1C014B970();
  v19 = sub_1C00FE568(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1C00FE568(v20 > 1, v21 + 1, 1, v19);
  }

  v19[2] = v21 + 1;
  (*(v12 + 32))(v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v21, v18, v11);
  if (a3)
  {
LABEL_7:
    sub_1C014B970();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1C00FE568(0, v19[2] + 1, 1, v19);
    }

    v23 = v19[2];
    v22 = v19[3];
    if (v23 >= v22 >> 1)
    {
      v19 = sub_1C00FE568(v22 > 1, v23 + 1, 1, v19);
    }

    v19[2] = v23 + 1;
    (*(v12 + 32))(v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v23, v16, v11);
  }

LABEL_12:
  sub_1C014BA50();
  sub_1C014C230();
  sub_1C014BA30();
  v24 = sub_1C014C230();
  MEMORY[0x1C68D6220](v24);
  sub_1C014B9D0();
  sub_1C014B9F0();
  return (*(v7 + 8))(v10, v27);
}

uint64_t ResultContext.resultId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_resultId);
  v2 = *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_resultId + 8);

  return v1;
}

uint64_t ResultContext.contextData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_contextData);
  sub_1C0144514(v1, *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_contextData + 8));
  return v1;
}

uint64_t sub_1C0144514(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id ResultContext.__allocating_init(resultId:contextData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC8TipsCore13ResultContext_resultId];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC8TipsCore13ResultContext_contextData];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id ResultContext.init(resultId:contextData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8TipsCore13ResultContext_resultId];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v4[OBJC_IVAR____TtC8TipsCore13ResultContext_contextData];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

unint64_t ResultContext.conditions.getter()
{
  v21[4] = *MEMORY[0x1E69E9840];
  v1 = (v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_contextData);
  v2 = *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_contextData);
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_13;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
LABEL_8:
    if (v5 != v6)
    {
      goto LABEL_9;
    }

LABEL_13:
    result = sub_1C00F91DC(MEMORY[0x1E69E7CC0]);
    goto LABEL_14;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
    goto LABEL_8;
  }

  if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  v7 = sub_1C01448F8(1819047278, 0xE400000000000000);
  v9 = v8;
  v10 = sub_1C01461BC(v2, v3, v7, v8);
  sub_1C0110D7C(v7, v9);
  if (v10)
  {
    goto LABEL_13;
  }

  v11 = objc_opt_self();
  v12 = *v1;
  v13 = v1[1];
  v14 = sub_1C014BCB0();
  v21[0] = 0;
  v15 = [v11 JSONObjectWithData:v14 options:0 error:v21];

  if (!v15)
  {
    v19 = v21[0];
    sub_1C014BB70();

    result = swift_willThrow();
    goto LABEL_14;
  }

  v16 = v21[0];
  sub_1C014C6E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06C30, &unk_1C0157A60);
  if (!swift_dynamicCast())
  {
    goto LABEL_13;
  }

  result = v20;
LABEL_14:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ResultContext.hasConditions.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_contextData);
  v2 = *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_contextData + 8);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2 || *(v1 + 16) == *(v1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v3)
  {
    if ((v2 & 0xFF000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v5 = sub_1C01448F8(1819047278, 0xE400000000000000);
    v7 = v6;
    v8 = sub_1C01461BC(v1, v2, v5, v6);
    sub_1C0110D7C(v5, v7);
    v4 = v8 ^ 1;
    return v4 & 1;
  }

  if (v1 != v1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1C01448F8(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06C48, &qword_1C0157AF8);
  if (swift_dynamicCast())
  {
    sub_1C00F98DC(__src, &v42);
    __swift_project_boxed_opaque_existential_0(&v42, v43);
    sub_1C014BAE0();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1C0146374(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1C014C850();
  }

  sub_1C0145A94(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1C0146494(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = sub_1C0145B5C(sub_1C0146534);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1C014BC90();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1C0145A18(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1C014C310();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1C014C340();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1C014C850();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1C0145A18(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1C014C320();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_1C014BCA0();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_1C014BCA0();
    sub_1C01166E0(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_1C01166E0(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1C0144514(*&__src[0], *(&__src[0] + 1));

  sub_1C0110D7C(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t ResultContext.description.getter()
{
  sub_1C014C800();

  MEMORY[0x1C68D6B10](*(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_resultId), *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_resultId + 8));
  MEMORY[0x1C68D6B10](0x7865746E6F63202CLL, 0xEB00000000203A74);
  v1 = *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_contextData);
  v2 = *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_contextData + 8);
  v3 = sub_1C014BC70();
  MEMORY[0x1C68D6B10](v3);

  return 0x6449746C75736572;
}

id sub_1C0144F00(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1C014C200();

  return v5;
}

uint64_t ResultContext.debugDescription.getter()
{
  v18[4] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1C014C800();

  MEMORY[0x1C68D6B10](*(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_resultId), *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_resultId + 8));
  MEMORY[0x1C68D6B10](0x7865746E6F63202CLL, 0xEB00000000203A74);
  v1 = (v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_contextData);
  v2 = *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_contextData);
  v3 = *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_contextData + 8);
  v4 = sub_1C014BC70();
  MEMORY[0x1C68D6B10](v4);

  MEMORY[0x1C68D6B10](0x7469646E6F63202CLL, 0xEE00203A736E6F69);
  if ((ResultContext.hasConditions.getter() & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = objc_opt_self();
  v6 = *v1;
  v7 = v1[1];
  v8 = sub_1C014BCB0();
  v18[0] = 0;
  v9 = [v5 JSONObjectWithData:v8 options:0 error:v18];

  if (!v9)
  {
    v12 = v18[0];
    v13 = sub_1C014BB70();

    swift_willThrow();
    v11 = 0;
    goto LABEL_7;
  }

  v10 = v18[0];
  sub_1C014C6E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06C30, &unk_1C0157A60);
  if (swift_dynamicCast())
  {
    v11 = v17;
  }

  else
  {
LABEL_5:
    v11 = sub_1C00F91DC(MEMORY[0x1E69E7CC0]);
  }

LABEL_7:
  v18[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06C38, &qword_1C0157AC0);
  v14 = sub_1C014C290();
  MEMORY[0x1C68D6B10](v14);

  result = 0x6449746C75736572;
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

id ResultContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ResultContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall ResultContext.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC8TipsCore13ResultContext_resultId);
  v4 = *(v1 + OBJC_IVAR____TtC8TipsCore13ResultContext_resultId + 8);
  v5 = sub_1C014C200();
  v6 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC8TipsCore13ResultContext_contextData);
  v8 = *(v1 + OBJC_IVAR____TtC8TipsCore13ResultContext_contextData + 8);
  v9 = sub_1C014BCB0();
  v10 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
}

id ResultContext.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ResultContext.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  v3 = sub_1C014C5E0();
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C014C230();
    v7 = v6;

    sub_1C010074C(0, &qword_1EBE06748, 0x1E695DEF0);
    v8 = sub_1C014C5E0();
    if (v8)
    {
      v9 = v8;
      v10 = sub_1C014BCC0();
      v12 = v11;

      v13 = objc_allocWithZone(ObjectType);
      v14 = &v13[OBJC_IVAR____TtC8TipsCore13ResultContext_resultId];
      *v14 = v5;
      v14[1] = v7;
      v15 = &v13[OBJC_IVAR____TtC8TipsCore13ResultContext_contextData];
      *v15 = v10;
      v15[1] = v12;
      sub_1C0144514(v10, v12);
      v18.receiver = v13;
      v18.super_class = ObjectType;
      v16 = objc_msgSendSuper2(&v18, sel_init);

      sub_1C0110D7C(v10, v12);
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v16;
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1C0145658@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1C014BA90();
    if (v10)
    {
      v11 = sub_1C014BAC0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1C014BAB0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1C014BA90();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1C014BAC0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1C014BAB0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1C0145888(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1C0146104(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1C0110D7C(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1C0145658(v14, a3, a4, &v13);
  v10 = v4;
  sub_1C0110D7C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1C0145A18(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C014C350();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1C68D6B40](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1C0145A94@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1C01463DC(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1C014BAD0();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1C014BA80();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1C014BC80();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1C0145B5C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1C0110D7C(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1C0110D7C(v6, v5);
    *v3 = xmmword_1C0157AB0;
    sub_1C0110D7C(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1C014BA90() && __OFSUB__(v6, sub_1C014BAC0()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1C014BAD0();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1C014BA70();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1C0146000(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1C0110D7C(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1C0157AB0;
    sub_1C0110D7C(0, 0xC000000000000000);
    sub_1C014BC60();
    result = sub_1C0146000(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *sub_1C0145F00@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1C01463DC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1C014659C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1C0146618(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1C0145F94(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1C0146000(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1C014BA90();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1C014BAC0();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1C014BAB0();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1C01460B4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_1C014C810();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0146104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1C014BA90();
  v11 = result;
  if (result)
  {
    result = sub_1C014BAC0();
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

  sub_1C014BAB0();
  sub_1C0145658(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1C01461BC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1C0144514(a3, a4);
          return sub_1C0145888(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C0146374(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06C50, &unk_1C0157B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C01463DC(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0146494(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_1C014BAD0();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1C014BAA0();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1C014BC80();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_1C0146534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1C0145F94(sub_1C014669C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1C014659C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1C014BAD0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1C014BA80();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1C014BC80();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1C0146618(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1C014BAD0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1C014BA80();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1C01466BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x794D646E6946;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x796150656C707041;
    }

    else
    {
      v4 = 0x794D646E6946;
    }

    if (v3)
    {
      v5 = 0xED00007075746553;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v4 = 0x614264756F6C4369;
      v6 = 1886743395;
    }

    else
    {
      if (a1 == 3)
      {
        v4 = 0x6553444965636146;
        v5 = 0xEB00000000707574;
        goto LABEL_14;
      }

      v4 = 0x685064756F6C4369;
      v6 = 1936684143;
    }

    v5 = v6 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    v7 = 0xE600000000000000;
    v8 = 0x796150656C707041;
    v9 = 0xED00007075746553;
    v10 = a2 == 0;
  }

  else
  {
    v2 = 0x614264756F6C4369;
    v7 = 0xEC00000070756B63;
    v8 = 0x6553444965636146;
    v9 = 0xEB00000000707574;
    if (a2 != 3)
    {
      v8 = 0x685064756F6C4369;
      v9 = 0xEC000000736F746FLL;
    }

    v10 = a2 == 2;
  }

  if (v10)
  {
    v11 = v2;
  }

  else
  {
    v11 = v8;
  }

  if (v10)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (v4 == v11 && v5 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C014C9F0();
  }

  return v13 & 1;
}

TipsCore::ContextKeys::SupportedContext_optional __swiftcall ContextKeys.SupportedContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C014C930();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContextKeys.SupportedContext.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x794D646E6946;
  v3 = 0x614264756F6C4369;
  v4 = 0x6553444965636146;
  if (v1 != 3)
  {
    v4 = 0x685064756F6C4369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x796150656C707041;
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

uint64_t sub_1C01469A8()
{
  v1 = *v0;
  sub_1C014CAE0();
  sub_1C014C2E0();

  return sub_1C014CB10();
}

uint64_t sub_1C0146AAC()
{
  *v0;
  *v0;
  *v0;
  sub_1C014C2E0();
}

uint64_t sub_1C0146B9C()
{
  v1 = *v0;
  sub_1C014CAE0();
  sub_1C014C2E0();

  return sub_1C014CB10();
}

void sub_1C0146CA8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x794D646E6946;
  v5 = 0xEC00000070756B63;
  v6 = 0x614264756F6C4369;
  v7 = 0xEB00000000707574;
  v8 = 0x6553444965636146;
  if (v2 != 3)
  {
    v8 = 0x685064756F6C4369;
    v7 = 0xEC000000736F746FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x796150656C707041;
    v3 = 0xED00007075746553;
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

id ContextKeys.__allocating_init(contexts:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC8TipsCore11ContextKeys_contexts] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ContextKeys.init(contexts:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8TipsCore11ContextKeys_contexts] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Void __swiftcall ContextKeys.encode(with:)(NSCoder with)
{
  isa = with.super.isa;
  v3 = *(v1 + OBJC_IVAR____TtC8TipsCore11ContextKeys_contexts);
  v4 = *(v3 + 16);
  if (v4)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C01090B4(0, v4, 0);
    v5 = (v3 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      v8 = v7 == 3;
      if (v7 == 3)
      {
        v9 = 0x6553444965636146;
      }

      else
      {
        v9 = 0x685064756F6C4369;
      }

      if (v8)
      {
        v10 = 0xEB00000000707574;
      }

      else
      {
        v10 = 0xEC000000736F746FLL;
      }

      if (v6 == 2)
      {
        v9 = 0x614264756F6C4369;
        v10 = 0xEC00000070756B63;
      }

      if (v6)
      {
        v11 = 0x796150656C707041;
      }

      else
      {
        v11 = 0x794D646E6946;
      }

      if (v6)
      {
        v12 = 0xED00007075746553;
      }

      else
      {
        v12 = 0xE600000000000000;
      }

      if (v6 <= 1)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (v6 <= 1)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      v16 = *(v21 + 16);
      v15 = *(v21 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C01090B4((v15 > 1), v16 + 1, 1);
      }

      *(v21 + 16) = v16 + 1;
      v17 = v21 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      --v4;
    }

    while (v4);
    isa = with.super.isa;
  }

  v18 = sub_1C014C3B0();

  v20 = sub_1C014C200();
  [(objc_class *)isa encodeObject:v18 forKey:v20];
}

uint64_t ContextKeys.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067A8, &qword_1C0157B10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C0156390;
  *(v3 + 32) = sub_1C010074C(0, &unk_1EDD44910, 0x1E695DEC8);
  *(v3 + 40) = sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  sub_1C014C5F0();

  if (!v25)
  {

    sub_1C00FC158(v24);
LABEL_15:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067C0, &qword_1C0157160);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {

    goto LABEL_15;
  }

  v21 = ObjectType;
  v5 = 0;
  v6 = v23;
  v7 = *(v23 + 16);
  v8 = v23 + 40;
  v9 = MEMORY[0x1E69E7CC0];
  v20 = v23 + 40;
LABEL_4:
  v10 = (v8 + 16 * v5);
  while (1)
  {
    if (v7 == v5)
    {

      v18 = objc_allocWithZone(v21);
      *&v18[OBJC_IVAR____TtC8TipsCore11ContextKeys_contexts] = v9;
      v22.receiver = v18;
      v22.super_class = v21;
      v19 = objc_msgSendSuper2(&v22, sel_init);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v19;
    }

    if (v5 >= *(v6 + 16))
    {
      break;
    }

    ++v5;
    v11 = v10 + 2;
    v12 = *(v10 - 1);
    v13 = *v10;

    v14 = sub_1C014C930();

    v10 = v11;
    if (v14 < 5)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C00FEAD8(0, *(v9 + 16) + 1, 1, v9);
        v9 = result;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        result = sub_1C00FEAD8((v15 > 1), v16 + 1, 1, v9);
        v17 = v16 + 1;
        v9 = result;
      }

      *(v9 + 16) = v17;
      *(v9 + v16 + 32) = v14;
      v8 = v20;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

id ContextKeys.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContextKeys.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C01474D8()
{
  result = qword_1EBE06C70;
  if (!qword_1EBE06C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06C70);
  }

  return result;
}

unint64_t sub_1C0147530()
{
  result = qword_1EBE06C78;
  if (!qword_1EBE06C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE06C80, &qword_1C0157BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06C78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextKeys.SupportedContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContextKeys.SupportedContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_1C0147734()
{
  result = sub_1C0147754();
  off_1EBE06C90 = result;
  return result;
}

unint64_t sub_1C0147754()
{
  v0 = BiomeLibrary();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06CE0, &qword_1C0157CB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0156A50;
  *(inited + 32) = sub_1C014C230();
  *(inited + 40) = v2;
  v3 = [objc_msgSend(v0 App)];
  swift_unknownObjectRelease();
  *(inited + 48) = v3;
  *(inited + 56) = sub_1C014C230();
  *(inited + 64) = v4;
  v5 = [objc_msgSend(v0 Device)];
  swift_unknownObjectRelease();
  v6 = [v5 Bluetooth];
  swift_unknownObjectRelease();
  *(inited + 72) = v6;
  *(inited + 80) = sub_1C014C230();
  *(inited + 88) = v7;
  v8 = [objc_msgSend(v0 Discoverability)];
  swift_unknownObjectRelease();
  *(inited + 96) = v8;
  *(inited + 104) = sub_1C014C230();
  *(inited + 112) = v9;
  v10 = [objc_msgSend(v0 UserFocus)];
  swift_unknownObjectRelease();
  *(inited + 120) = v10;
  v11 = sub_1C00F9780(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06CE8, &unk_1C0157CC0);
  swift_arrayDestroy();
  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_1C0147A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDD44C68 != -1)
  {
    swift_once();
  }

  sub_1C014C800();

  MEMORY[0x1C68D6B10](a2, a3);
  MEMORY[0x1C68D6B10](0xD000000000000012, 0x80000001C015DDD0);
  v5._countAndFlagsBits = 0x726F66206B6E6953;
  v5._object = 0xE900000000000020;
  TipsLog.log(_:)(v5);
}

void sub_1C0147B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + OBJC_IVAR___TPSBiomeDataProvider_registrationQueue);
    v10 = Strong;
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = a3;
    v11[4] = a4;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1C0149EB8;
    *(v12 + 24) = v11;
    aBlock[4] = sub_1C0149EA0;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C011EB80;
    aBlock[3] = &block_descriptor_58;
    v13 = _Block_copy(aBlock);
    v14 = v10;

    dispatch_sync(v9, v13);
    _Block_release(v13);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }

    else
    {
      a5(a3, a4);
    }
  }
}

uint64_t sub_1C0147D18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C0147D78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = OBJC_IVAR___TPSBiomeDataProvider_biomeRegistrations;
  swift_beginAccess();

  v9 = a4;
  v10 = *(a1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a1 + v8);
  *(a1 + v8) = 0x8000000000000000;
  sub_1C00F8C34(v9, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + v8) = v13;
  return swift_endAccess();
}

uint64_t sub_1C0147F20()
{
  v1 = v0;
  if (qword_1EDD44C68 != -1)
  {
LABEL_15:
    swift_once();
  }

  v2 = qword_1EDD44C70;
  aBlock._countAndFlagsBits = 0;
  aBlock._object = 0xE000000000000000;
  sub_1C014C800();

  aBlock._countAndFlagsBits = 0xD00000000000001FLL;
  aBlock._object = 0x80000001C015DD90;
  v3 = OBJC_IVAR___TPSBiomeDataProvider_biomeRegistrations;
  swift_beginAccess();
  v4 = *(v1 + v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06CD8, &qword_1C0157CB0);
  v5 = sub_1C014C190();
  MEMORY[0x1C68D6B10](v5);

  v6 = aBlock;
  aBlock._countAndFlagsBits = v2;
  TipsLog.log(_:)(v6);

  v7 = *(v1 + v3);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v24 = OBJC_IVAR___TPSBiomeDataProvider_registrationQueue;
  v25 = v1;
  v1 = (v9 + 63) >> 6;
  v26 = v7;

  v12 = 0;
  v13 = 0;
  do
  {
    if (!v11)
    {
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v1)
        {
          goto LABEL_13;
        }

        v11 = *(v8 + 8 * v14);
        ++v13;
        if (v11)
        {
          v13 = v14;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    v14 = v13;
LABEL_11:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = (*(v26 + 48) + ((v14 << 10) | (16 * v15)));
    v17 = *v16;
    v18 = v16[1];
    queue = *&v25[v24];
    v19 = swift_allocObject();
    v19[2] = v25;
    v19[3] = v17;
    v19[4] = v18;

    v20 = v25;
    sub_1C0113884(v12);
    v21 = swift_allocObject();
    v12 = sub_1C01495A0;
    *(v21 + 16) = sub_1C01495A0;
    *(v21 + 24) = v19;
    v31 = sub_1C0149EA0;
    v32 = v21;
    aBlock._countAndFlagsBits = MEMORY[0x1E69E9820];
    aBlock._object = 1107296256;
    v29 = sub_1C011EB80;
    v30 = &block_descriptor_19;
    v22 = _Block_copy(&aBlock);

    dispatch_sync(queue, v22);
    _Block_release(v22);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();
  }

  while ((v17 & 1) == 0);
  __break(1u);
LABEL_13:

  return sub_1C0113884(v12);
}

void sub_1C0148278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR___TPSBiomeDataProvider_biomeRegistrations;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16))
  {
    v8 = *(a1 + v6);

    v9 = sub_1C012EBF4(a2, a3);
    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v9);

      [v11 cancel];
      swift_beginAccess();

      sub_1C00F80D4(0, a2, a3);
      swift_endAccess();
    }

    else
    {
    }
  }
}

uint64_t sub_1C01483B0(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR___TPSBiomeDataProvider_registrationQueue];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C0149574;
  *(v7 + 24) = v6;
  v12[4] = sub_1C0149580;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C011EB80;
  v12[3] = &block_descriptor_11;
  v8 = _Block_copy(v12);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1C0148520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR___TPSBiomeDataProvider_biomeRegistrations;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16))
  {
    v8 = *(a1 + v6);

    v9 = sub_1C012EBF4(a2, a3);
    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v9);

      if (qword_1EDD44C68 != -1)
      {
        swift_once();
      }

      v12 = qword_1EDD44C70;
      sub_1C014C800();

      MEMORY[0x1C68D6B10](a2, a3);
      v13._countAndFlagsBits = 0xD00000000000001CLL;
      v13._object = 0x80000001C015DD70;
      TipsLog.log(_:)(v13);

      [v11 cancel];
      swift_beginAccess();

      sub_1C00F80D4(0, a2, a3);
      swift_endAccess();
    }

    else
    {
    }
  }
}

uint64_t sub_1C014871C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v43 = result;
  if (!a2)
  {
    return result;
  }

  v3 = a3;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v10 = a3;
  }

  v41 = v10;

  v11 = 0;
  v42 = v3;
  while (v8)
  {
    v12 = v11;
LABEL_19:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(a2 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_1C00FC1C0(*(a2 + 56) + 32 * v16, v47);
    *&v48 = v19;
    *(&v48 + 1) = v18;
    sub_1C00F9954(v47, &v49);

LABEL_20:
    v51 = v48;
    v52[0] = v49;
    v52[1] = v50;
    v20 = *(&v48 + 1);
    if (!*(&v48 + 1))
    {
    }

    v21 = v51;
    sub_1C00F9954(v52, &v48);
    sub_1C00FC1C0(&v48, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06CB0, &qword_1C0156328);
    if (swift_dynamicCast())
    {

      v22 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1C00FE898(0, *(v41 + 16) + 1, 1, v41);
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1C00FE898((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[16 * v24];
      *(v25 + 4) = v21;
      *(v25 + 5) = v20;
      sub_1C014871C(v43, a2, v22);

      __swift_destroy_boxed_opaque_existential_1Tm(&v48);
      v3 = v42;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06CB8, &qword_1C0157C98);
      if (swift_dynamicCast())
      {

        sub_1C0149314(v3, v21, v20);

        sub_1C00FC1C0(&v48, &v45);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06CC0, &unk_1C0157CA0);
        if (swift_dynamicCast())
        {
          v26 = *v43;
          v27 = sub_1C014C200();

          v28 = [v26 filterWithKeyPath:v27 comparison:3 value:v44];
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1Tm(&v48);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v48);
        }
      }

      else
      {
        if (swift_dynamicCast())
        {
          sub_1C0149314(v3, v21, v20);

          v29 = *v43;
          v30 = sub_1C014C200();
          v3 = v42;

          v31 = sub_1C014C200();

LABEL_35:
          __swift_destroy_boxed_opaque_existential_1Tm(&v48);
          goto LABEL_8;
        }

        if (swift_dynamicCast())
        {
          sub_1C0149314(v3, v21, v20);

          v32 = *v43;
          v33 = sub_1C014C200();
          v3 = v42;

          v31 = sub_1C014C530();

          goto LABEL_35;
        }

        if (qword_1EDD44C68 != -1)
        {
          swift_once();
        }

        oslog = qword_1EDD44C70;
        v45 = 0;
        v46 = 0xE000000000000000;
        sub_1C014C800();
        MEMORY[0x1C68D6B10](v21, v20);

        MEMORY[0x1C68D6B10](0xD000000000000032, 0x80000001C015DD30);
        __swift_project_boxed_opaque_existential_0(&v48, *(&v49 + 1));
        swift_getDynamicType();
        v34 = sub_1C014CB60();
        MEMORY[0x1C68D6B10](v34);

        v36 = v45;
        v35 = v46;
        v37 = sub_1C014C570();
        if (os_log_type_enabled(oslog, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v45 = v39;
          *v38 = 136315138;
          *(v38 + 4) = sub_1C010C980(v36, v35, &v45);
          _os_log_impl(&dword_1C00A7000, oslog, v37, "%s", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v39);
          MEMORY[0x1C68D7F30](v39, -1, -1);
          MEMORY[0x1C68D7F30](v38, -1, -1);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v48);
        v3 = v42;
      }
    }

LABEL_8:
    result = __swift_destroy_boxed_opaque_existential_1Tm(v47);
  }

  if (v9 <= v11 + 1)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = v9;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      v8 = 0;
      v49 = 0u;
      v50 = 0u;
      v11 = v14;
      v48 = 0u;
      goto LABEL_20;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

id TipsBiomeDataProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TipsBiomeDataProvider.init()()
{
  v1 = sub_1C014C580();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v3 = sub_1C014C0D0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1C014C5A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___TPSBiomeDataProvider_biomeRegistrations;
  v11 = MEMORY[0x1E69E7CC0];
  *(v0 + v10) = sub_1C00F9794(MEMORY[0x1E69E7CC0]);
  v17 = OBJC_IVAR___TPSBiomeDataProvider_registrationQueue;
  v16 = sub_1C0111504();
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8098], v5);
  sub_1C014C0B0();
  v20 = v11;
  sub_1C0111550();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067E0, &qword_1C01568E0);
  sub_1C014952C(&qword_1EDD44B90, &qword_1EBE067E0, &qword_1C01568E0);
  sub_1C014C700();
  v12 = sub_1C014C5D0();
  v13 = v18;
  *&v18[v17] = v12;
  v14 = type metadata accessor for TipsBiomeDataProvider();
  v19.receiver = v13;
  v19.super_class = v14;
  return objc_msgSendSuper2(&v19, sel_init);
}

id TipsBiomeDataProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipsBiomeDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C0149144(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v8 = sub_1C014C200();
  if (a4)
  {
    a4 = sub_1C014C200();
  }

  if (a6 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1C014BCB0();
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E698EBC0]) initWithContentIdentifier:v8 context:a4 osBuild:0 userInfo:v9];

  if (qword_1EBE063A0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C014C230();
  v13 = v12;
  swift_beginAccess();
  v14 = off_1EBE06C90;
  if (*(off_1EBE06C90 + 2))
  {
    v15 = sub_1C012EBF4(v11, v13);
    v17 = v16;

    if (v17)
    {
      v18 = *(v14[7] + 8 * v15);
      swift_endAccess();
      v19 = v18;
      v20 = [v19 source];
      v21 = v10;
      [v20 sendEvent_];
    }

    else
    {
      swift_endAccess();
    }
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_1C0149314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  if (!a1)
  {
    goto LABEL_9;
  }

  v5 = a1;
  v6 = *(a1 + 16);
  if (!v6)
  {
    a1 = 0;
LABEL_9:
    v15 = 0xE000000000000000;
    goto LABEL_10;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1C01090B4(0, v6, 0);
  v7 = (v5 + 40);
  do
  {
    v8 = *(v7 - 1);
    v9 = *v7;

    MEMORY[0x1C68D6B10](v8, v9);

    v11 = *(v19 + 16);
    v10 = *(v19 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1C01090B4((v10 > 1), v11 + 1, 1);
    }

    *(v19 + 16) = v11 + 1;
    v12 = v19 + 16 * v11;
    *(v12 + 32) = 46;
    *(v12 + 40) = 0xE100000000000000;
    v7 += 2;
    --v6;
  }

  while (v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067C0, &qword_1C0157160);
  sub_1C014952C(&qword_1EBE06CD0, &unk_1EBE067C0, &qword_1C0157160);
  v13 = sub_1C014C1C0();
  v15 = v14;

  a1 = v13;
  v4 = a2;
  v3 = a3;
LABEL_10:
  MEMORY[0x1C68D6B10](a1, v15);

  MEMORY[0x1C68D6B10](v4, v3);

  MEMORY[0x1C68D6B10](46, 0xE100000000000000);

  return 0x646F42746E657665;
}

uint64_t sub_1C014952C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C01495AC()
{
  v1 = *(v0 + 16);
  v2 = sub_1C014C200();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_1C0149604(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v69 = a4;
  v70 = a2;
  v71 = a3;
  v9 = sub_1C014C5A0();
  v67 = *(v9 - 1);
  v68 = v9;
  v10 = v67[8];
  MEMORY[0x1EEE9AC00](v9);
  v66 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C014C580();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = sub_1C014C0D0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  if (qword_1EBE063A0 != -1)
  {
    swift_once();
  }

  v16 = a1;
  v17 = [a1 stream];
  v18 = sub_1C014C230();
  v20 = v19;

  swift_beginAccess();
  v21 = off_1EBE06C90;
  if (!*(off_1EBE06C90 + 2))
  {

    return swift_endAccess();
  }

  v65 = a5;
  v22 = sub_1C012EBF4(v18, v20);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    return swift_endAccess();
  }

  v63 = v6;
  v25 = *(v21[7] + 8 * v22);
  swift_endAccess();
  aBlock = 0;
  v73 = 0xE000000000000000;
  v64 = v25;
  sub_1C014C800();

  aBlock = 0x6C7070612E6D6F63;
  v73 = 0xEF2E737069742E65;
  v62 = v16;
  v26 = [v16 stream];
  v27 = sub_1C014C230();
  v29 = v28;

  MEMORY[0x1C68D6B10](v27, v29);

  MEMORY[0x1C68D6B10](46, 0xE100000000000000);
  v31 = v70;
  v30 = v71;
  MEMORY[0x1C68D6B10](v70, v71);
  v60[2] = aBlock;
  v60[1] = sub_1C0111504();
  aBlock = 0;
  v73 = 0xE000000000000000;
  sub_1C014C800();

  aBlock = 0xD000000000000010;
  v73 = 0x80000001C015DDB0;
  v61 = @"FeatureDiscoverability";
  v32 = sub_1C014C230();
  MEMORY[0x1C68D6B10](v32);

  MEMORY[0x1C68D6B10](46, 0xE100000000000000);
  MEMORY[0x1C68D6B10](v31, v30);
  sub_1C014C0B0();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1C0111550();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067E0, &qword_1C01568E0);
  sub_1C014952C(&qword_1EDD44B90, &qword_1EBE067E0, &qword_1C01568E0);
  sub_1C014C700();
  (v67[13])(v66, *MEMORY[0x1E69E8090], v68);
  v33 = sub_1C014C5D0();
  v34 = objc_allocWithZone(MEMORY[0x1E698F258]);
  v35 = v33;
  v36 = sub_1C014C200();

  v37 = [v34 initWithIdentifier:v36 targetQueue:v35 waking:1];

  v68 = v35;
  v38 = [v64 DSLPublisherWithUseCase_];
  v78[0] = v38;
  v39 = [v62 filterParametersForBiomeQuery];
  if (v39)
  {
    v40 = v39;
    v41 = sub_1C014C170();
  }

  else
  {
    v41 = 0;
  }

  v43 = v63;
  sub_1C014871C(v78, v41, 0);

  v44 = [v38 subscribeOn_];
  v45 = swift_allocObject();
  v46 = v70;
  v47 = v71;
  *(v45 + 16) = v70;
  *(v45 + 24) = v47;
  v76 = sub_1C0149E28;
  v77 = v45;
  aBlock = MEMORY[0x1E69E9820];
  v73 = 1107296256;
  v74 = sub_1C0143C24;
  v75 = &block_descriptor_28;
  v48 = _Block_copy(&aBlock);
  v67 = v38;

  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = v46;
  v51 = v69;
  v50[4] = v47;
  v50[5] = v51;
  v50[6] = v65;
  v76 = sub_1C0149E30;
  v77 = v50;
  aBlock = MEMORY[0x1E69E9820];
  v73 = 1107296256;
  v74 = sub_1C0147D18;
  v75 = &block_descriptor_37;
  v52 = _Block_copy(&aBlock);
  v69 = v37;

  v53 = [v44 sinkWithCompletion:v48 receiveInput:v52];
  _Block_release(v52);
  _Block_release(v48);

  v54 = *&v43[OBJC_IVAR___TPSBiomeDataProvider_registrationQueue];
  v55 = swift_allocObject();
  v55[2] = v43;
  v55[3] = v46;
  v55[4] = v47;
  v55[5] = v53;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1C0149E40;
  *(v56 + 24) = v55;
  v76 = sub_1C0149EA0;
  v77 = v56;
  aBlock = MEMORY[0x1E69E9820];
  v73 = 1107296256;
  v74 = sub_1C011EB80;
  v75 = &block_descriptor_47;
  v57 = _Block_copy(&aBlock);

  v58 = v43;
  v59 = v53;

  dispatch_sync(v54, v57);

  _Block_release(v57);
  LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

  if (v57)
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}