uint64_t TPPaginationState.pageHintCount.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    goto LABEL_12;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (v4 >= 1)
    {

      v5 = 0;
      v6 = 0;
      while (1)
      {
        v7 = (v3 & 0xC000000000000001) != 0 ? MEMORY[0x277C92160](v6, v3) : *(v3 + 8 * v6 + 32);
        v8 = v7;
        v9 = [v7 pageCount];

        v10 = __CFADD__(v5, v9);
        v5 += v9;
        if (v10)
        {
          break;
        }

        if (v4 == ++v6)
        {

          return v5;
        }
      }

      __break(1u);
LABEL_12:
      result = sub_276038654();
      v4 = result;
      if (!result)
      {
        return 0;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t TPPaginationState.lastLaidOutDocumentPageIndex.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    return v2 - 1;
  }

  result = sub_2760384B4();
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

id TPPaginationState.section.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v2 = [*(v0 + v1) sectionIndex];
  v3 = *(v0 + OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage);
  if (v2 >= [v3 sectionCount])
  {
    return 0;
  }

  result = [v3 sectionAtSectionIndex:v2 effectiveRange:0];
  if (result)
  {
    v5 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t TPPaginationState.sectionHint.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v2 = [*(v0 + v1) sectionIndex];
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 >> 62)
  {
    result = sub_276038654();
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < 1 || v2 >= result)
  {
    return 0;
  }

  v7 = *(v0 + v3);
  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = MEMORY[0x277C92160](v2, v7);

    return v8;
  }

  else if (v2 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
  }

  else
  {
    return *(v7 + 8 * v2 + 32);
  }

  return result;
}

NSUInteger TPPaginationState.sectionCharRange.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage);
  v2 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  return sub_275FF8CB8(v1, *(v0 + v2));
}

BOOL TPPaginationState.onLastSection.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage);
  v2 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  return sub_275FF8E30(v1, *(v0 + v2));
}

BOOL TPPaginationState.isPaginationComplete.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v2 = [*(v0 + v1) sectionIndex];
  return sub_275FF8F7C(*(v0 + OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage)) < v2;
}

uint64_t TPPaginationState.description.getter()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D811A8]) initWithObject_];
  v3 = sub_276038504();
  v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  [*(v0 + v4) sectionIndex];
  sub_2760387A4();
  v5 = sub_276038504();

  [v2 addField:v3 value:v5];

  v6 = sub_276038504();
  [*(v0 + v4) pageIndex];
  sub_2760387A4();
  v7 = sub_276038504();

  [v2 addField:v6 value:v7];

  v8 = sub_276038504();
  v9 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
  swift_beginAccess();
  v18 = *(v1 + v9);
  sub_2760387A4();
  v10 = sub_276038504();

  [v2 addField:v8 value:v10];

  v11 = sub_276038504();
  v12 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__bodyCharIndex;
  swift_beginAccess();
  v17 = *(v1 + v12);
  sub_2760387A4();
  v13 = sub_276038504();

  [v2 addField:v11 value:{v13, v17, v18}];

  v14 = [v2 descriptionString];
  v15 = sub_276038514();

  return v15;
}

uint64_t sub_27602DAD0(void *a1)
{
  v1[OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_isInvalid] = 0;
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  *&v1[v3] = [objc_allocWithZone(TPPageIndexPath) initWithSectionIndex:0 pageIndex:0];
  *&v1[OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex] = 0;
  v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__lastLaidOutSectionIndex;
  result = sub_2760384B4();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  *&v1[v4] = result;
  *&v1[OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__bodyLayoutState] = 0;
  v6 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__bodyCharIndex;
  result = sub_2760384B4();
  if (result < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *&v1[v6] = result;
  v7 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__footnoteIndex;
  result = sub_2760384B4();
  if ((result & 0x8000000000000000) == 0)
  {
    *&v1[v7] = result;
    *&v1[OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints] = MEMORY[0x277D84F90];
    *&v1[OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage] = a1;
    v18.receiver = v1;
    v18.super_class = type metadata accessor for TPPaginationState();
    v8 = a1;
    v9 = objc_msgSendSuper2(&v18, sel_init);
    v10 = objc_allocWithZone(TPSectionHint);
    v11 = v9;
    v12 = [v10 init];
    v13 = [objc_allocWithZone(TPPageHint) init];
    [v13 setPageKind_];
    sub_27602B4C8(&qword_280A40168);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_27605FD80;
    *(v14 + 56) = sub_27602FD90(0, &qword_280A40170);
    *(v14 + 32) = v13;
    v15 = v13;
    v16 = sub_276038544();

    [v12 setPageHints_];

    v19.super.isa = v12;
    TPPaginationState.addSectionHint(_:)(v19);

    v17 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_isInvalid;
    swift_beginAccess();
    v11[v17] = 0;

    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

id TPPaginationState.copy(with:)@<X0>(char **a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage);
  v5 = type metadata accessor for TPPaginationState();
  v6 = objc_allocWithZone(v5);
  v7 = sub_27602DAD0(v4);
  v8 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v9 = *(v2 + v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v9;
  v11 = v7;
  sub_2760384C4();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v11;
  sub_2760384C4();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v12;
  sub_2760384C4();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v13;
  sub_2760384C4();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v14;
  sub_2760384C4();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v15;
  sub_2760384C4();
  v17 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints;
  swift_beginAccess();
  v18 = *(v2 + v17);
  if (v18 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_276038654())
  {
    if (!i)
    {
LABEL_14:
      swift_getKeyPath();
      swift_getKeyPath();
      v24 = v16;
      sub_2760384C4();
      v25 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_isInvalid;
      result = swift_beginAccess();
      v24[v25] = 0;
      a1[3] = v5;
      *a1 = v24;
      return result;
    }

    v29 = MEMORY[0x277D84F90];

    result = sub_276038724();
    if (i < 0)
    {
      break;
    }

    v26 = v16;
    v27 = v5;
    v28 = a1;
    v21 = 0;
    a1 = &selRef_bezierPathByFlatteningPath;
    while (1)
    {
      v16 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x277C92160](v21, v18);
      }

      else
      {
        if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v22 = *(v18 + 8 * v21 + 32);
      }

      v23 = v22;
      result = [v22 copyForArchiving];
      if (!result)
      {
        goto LABEL_19;
      }

      sub_276038704();
      v5 = *(v29 + 16);
      sub_276038734();
      sub_276038744();
      sub_276038714();
      ++v21;
      if (v16 == i)
      {

        a1 = v28;
        v16 = v26;
        v5 = v27;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_27602E1DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

id TPPaginationState.copyForCaching()@<X0>(char **a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage);
  v5 = type metadata accessor for TPPaginationState();
  v6 = objc_allocWithZone(v5);
  v7 = sub_27602DAD0(v4);
  v8 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v9 = *(v2 + v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v9;
  v11 = v7;
  sub_2760384C4();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v11;
  sub_2760384C4();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v12;
  sub_2760384C4();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v13;
  sub_2760384C4();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v14;
  sub_2760384C4();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v15;
  sub_2760384C4();
  v17 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints;
  swift_beginAccess();
  v18 = *(v2 + v17);
  if (v18 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_276038654())
  {
    if (!i)
    {
LABEL_14:
      swift_getKeyPath();
      swift_getKeyPath();
      v24 = v16;
      sub_2760384C4();
      v25 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_isInvalid;
      result = swift_beginAccess();
      v24[v25] = 0;
      a1[3] = v5;
      *a1 = v24;
      return result;
    }

    v29 = MEMORY[0x277D84F90];

    result = sub_276038724();
    if (i < 0)
    {
      break;
    }

    v26 = v16;
    v27 = v5;
    v28 = a1;
    v21 = 0;
    a1 = &selRef_bezierPathByFlatteningPath;
    while (1)
    {
      v16 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x277C92160](v21, v18);
      }

      else
      {
        if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v22 = *(v18 + 8 * v21 + 32);
      }

      v23 = v22;
      result = [v22 copyForCaching];
      if (!result)
      {
        goto LABEL_19;
      }

      sub_276038704();
      v5 = *(v29 + 16);
      sub_276038734();
      sub_276038744();
      sub_276038714();
      ++v21;
      if (v16 == i)
      {

        a1 = v28;
        v16 = v26;
        v5 = v27;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall TPPaginationState.isPaginationComplete(through:)(Swift::UInt through)
{
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
  swift_beginAccess();
  return *(v1 + v3) > through;
}

Swift::Bool __swiftcall TPPaginationState.isPaginationComplete(upTo:)(Swift::UInt upTo)
{
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
  swift_beginAccess();
  return *(v1 + v3) >= upTo;
}

_NSRange __swiftcall TPPaginationState.footnoteRange(inBodyTextRange:)(_NSRange inBodyTextRange)
{
  v2 = [*(v1 + OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage) footnoteRangeForTextRange_];
  result.length = v3;
  result.location = v2;
  return result;
}

Swift::Void __swiftcall TPPaginationState.restartPagination(fromPageIndexPath:documentPageIndex:)(TPPageIndexPath fromPageIndexPath, Swift::UInt documentPageIndex)
{
  isa = fromPageIndexPath.super.isa;
  v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v5 = *&v2[v4];
  [v5 setSectionIndex_];

  v6 = *&v2[v4];
  [v6 setPageIndex_];

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v2;
  sub_2760384C4();
  if (qword_280A400F0 == -1)
  {
    if ((sub_2760384B4() & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  swift_once();
  if (sub_2760384B4() < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  sub_2760384C4();
  if ((sub_2760384B4() & 0x8000000000000000) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;
    sub_2760384C4();
    return;
  }

LABEL_7:
  __break(1u);
}

Swift::Void __swiftcall TPPaginationState.restartPaginationFromFirstPage()()
{
  v3.super.isa = [objc_allocWithZone(TPPageIndexPath) initWithSectionIndex:0 pageIndex:0];
  isa = v3.super.isa;
  v3._sectionIndex = 0;
  TPPaginationState.restartPagination(fromPageIndexPath:documentPageIndex:)(v3, v0);
}

Swift::Void __swiftcall TPPaginationState.backUp(to:documentPageIndex:)(TPPageIndexPath to, Swift::UInt documentPageIndex)
{
  sectionIndex = to._sectionIndex;
  isa = to.super.isa;
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
  swift_beginAccess();
  v6 = *&v2[v5];
  if (v6)
  {
    if (v6 == sectionIndex)
    {
      return;
    }
  }

  else
  {
    sub_276038764();
    v10 = swift_allocObject();
    v10[2] = 8;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
    v15 = sub_276038754();
    v11 = objc_opt_self();
    sub_2760386D4();
    v12 = sub_276038504();

    sub_2760386D4();
    v13 = sub_276038504();

    sub_2760386D4();
    v14 = sub_276038504();

    [v11 handleFailureInFunction:v12 file:v13 lineNumber:207 isFatal:0 format:v14 args:v15];

    if (*&v2[v5] == sectionIndex)
    {
      return;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v2;
  v8 = isa;
  sub_2760384C4();
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v7;
  sub_2760384C4();
}

Swift::Void __swiftcall TPPaginationState.advancePageIndex()()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = [v2 pageIndex];
  if (v3 == -1)
  {
    __break(1u);
  }

  else
  {
    [v2 setPageIndex_];

    swift_getKeyPath();
    swift_getKeyPath();
    v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
    swift_beginAccess();
    if (*&v0[v4] != -1)
    {
      v5 = v0;
      sub_2760384C4();
      return;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall TPPaginationState.advanceSectionIndex()()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v2 = *&v0[OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage];
  v3 = *&v0[v1];
  [v3 setSectionIndex_];

  [*&v0[v1] setPageIndex_];
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v0;
  sub_2760384C4();
}

TPPageIndexPath_optional __swiftcall TPPaginationState.pageIndexPath(forPageIndex:)(Swift::UInt forPageIndex)
{
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
  swift_beginAccess();
  if (*(v1 + v3) <= forPageIndex)
  {
    goto LABEL_22;
  }

  v7 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_22:
    v18 = 0;
    goto LABEL_23;
  }

LABEL_18:
  v14 = sub_276038654();
  if (v14 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
  }

  v9 = v14;
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_4:
  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *(v1 + v7);
    if ((v12 & 0xC000000000000001) != 0)
    {

      v13 = MEMORY[0x277C92160](v10, v12);
    }

    else
    {
      if (v10 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v13 = *(v12 + 8 * v10 + 32);
    }

    v14 = [v13 pageCount];
    v15 = v11 + v14;
    if (__CFADD__(v11, v14))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v15 > forPageIndex)
    {
      break;
    }

    ++v10;

    v11 = v15;
    if (v9 == v10)
    {
      goto LABEL_22;
    }
  }

  v16 = forPageIndex >= v11;
  forPageIndex -= v11;
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = [objc_allocWithZone(TPPageIndexPath) initWithSectionIndex:v10 pageIndex:forPageIndex];

  v18 = v17;
LABEL_23:
  result.value._pageIndex = v5;
  result.value._sectionIndex = v4;
  result.value.super.isa = v18;
  result.is_nil = v6;
  return result;
}

void __swiftcall TPPaginationState.pageHint(forPageIndex:)(TPPageHint_optional *__return_ptr retstr, Swift::UInt forPageIndex)
{
  v12 = TPPaginationState.pageIndexPath(forPageIndex:)(forPageIndex);
  if (!v12.value.super.isa)
  {
    return;
  }

  isa = v12.value.super.isa;
  v5 = [(objc_class *)v12.value.super.isa sectionIndex:v12.value._pageIndex];
  v6 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (v7 >> 62)
  {
    v8 = sub_276038654();
    if (v8 <= 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 <= 0)
    {
LABEL_11:

      return;
    }
  }

  if (v5 >= v8)
  {
    goto LABEL_11;
  }

  v9 = [(objc_class *)isa sectionIndex];
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *(v2 + v6);
  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v11 = v9;

    v10 = MEMORY[0x277C92160](v11, v5);

    goto LABEL_9;
  }

  if (v9 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v5 + 8 * v9 + 32);
LABEL_9:
    [v10 pageHintForPageIndex_];

    return;
  }

  __break(1u);
}

Swift::Void __swiftcall TPPaginationState.addSectionHint(_:)(TPSectionHint a1)
{
  v2 = v1;
  isa = a1.super.isa;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints;
  swift_beginAccess();
  v7 = *&v2[v4];

  v5 = isa;
  MEMORY[0x277C91FB0]();
  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_276038574();
  }

  sub_276038594();
  v6 = v2;
  sub_2760384C4();
}

Swift::Void __swiftcall TPPaginationState.removeAllSectionHints()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_2760384C4();
}

Swift::Void __swiftcall TPPaginationState.trimSectionHints(fromIndex:)(Swift::UInt fromIndex)
{
  if ((fromIndex & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_6:
    v6 = sub_276038654();
    if (v6 >= v3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v1 = v2;
  v3 = fromIndex;
  v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5 >> 62)
  {
    goto LABEL_6;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6 >= v3)
  {
LABEL_4:
    swift_getKeyPath();
    swift_getKeyPath();

    sub_27602FC28(v3, v6);
    v7 = v1;
    sub_2760384C4();
    return;
  }

LABEL_7:
  __break(1u);
}

Swift::Void __swiftcall TPPaginationState.invalidate()()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_isInvalid;
  swift_beginAccess();
  *(v0 + v1) = 1;
}

id TPPaginationState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TPPaginationState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPPaginationState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27602FA0C()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_isInvalid;
  result = swift_beginAccess();
  *(v0 + v1) = 1;
  return result;
}

uint64_t sub_27602FA5C(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_276038654();
    }

    result = sub_2760386F4();
    *v1 = result;
  }

  return result;
}

uint64_t sub_27602FB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_27602FD90(0, &qword_280A40160);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
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
  result = sub_276038654();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_276038654();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_27602FC28(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_276038654();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_276038654();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_27602FA5C(result);

  return sub_27602FB18(v4, v2, 0);
}

void *sub_27602FD00(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_27602FD44(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_27602FD90(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_27602FDF4()
{
  v1 = *v0;
  sub_2760387D4();
  MEMORY[0x277C92260](v1);
  return sub_2760387F4();
}

uint64_t sub_27602FE68()
{
  v1 = *v0;
  sub_2760387D4();
  MEMORY[0x277C92260](v1);
  return sub_2760387F4();
}

uint64_t sub_27602FEAC(void *a1)
{
  v2 = v1;
  v4 = [a1 layoutController];
  if (!v4)
  {
    sub_276038764();
    v5 = swift_allocObject();
    v5[2] = 8;
    v5[3] = 0;
    v5[4] = 0;
    v5[5] = 0;
    v6 = sub_276038754();
    v7 = objc_opt_self();
    sub_2760386D4();
    v8 = sub_276038504();

    sub_2760386D4();
    v9 = sub_276038504();

    sub_2760386D4();
    v10 = sub_276038504();

    [v7 handleFailureInFunction:v8 file:v9 lineNumber:50 isFatal:0 format:v10 args:v6];

    v4 = v10;
  }

  v11 = *&v1[OBJC_IVAR____TtC14PagesQuicklook17TPPageLayoutCache_accessQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_276034174;
  *(v13 + 24) = v12;
  v19[4] = sub_2760344E4;
  v19[5] = v13;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_276030124;
  v19[3] = &unk_288501498;
  v14 = _Block_copy(v19);
  v15 = a1;
  v16 = v2;

  dispatch_sync(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2760301B4(void *a1)
{
  v2 = v1;
  v4 = [a1 layoutController];
  if (!v4)
  {
    sub_276038764();
    v5 = swift_allocObject();
    v5[2] = 8;
    v5[3] = 0;
    v5[4] = 0;
    v5[5] = 0;
    v6 = sub_276038754();
    v7 = objc_opt_self();
    sub_2760386D4();
    v8 = sub_276038504();

    sub_2760386D4();
    v9 = sub_276038504();

    sub_2760386D4();
    v10 = sub_276038504();

    [v7 handleFailureInFunction:v8 file:v9 lineNumber:60 isFatal:0 format:v10 args:v6];

    v4 = v10;
  }

  v11 = *&v1[OBJC_IVAR____TtC14PagesQuicklook17TPPageLayoutCache_accessQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_276034114;
  *(v13 + 24) = v12;
  v19[4] = sub_276034134;
  v19[5] = v13;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_276030124;
  v19[3] = &unk_288501420;
  v14 = _Block_copy(v19);
  v15 = a1;
  v16 = v2;

  dispatch_sync(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27603042C(void *a1, uint64_t a2, char a3)
{
  v6 = OBJC_IVAR____TtC14PagesQuicklook17TPPageLayoutCache_pendingUpdates;
  swift_beginAccess();
  v7 = *(a2 + v6);
  v8 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_2760319FC(0, *(v7 + 2) + 1, 1, v7);
    *(a2 + v6) = v7;
  }

  v11 = *(v7 + 2);
  v10 = *(v7 + 3);
  if (v11 >= v10 >> 1)
  {
    v7 = sub_2760319FC((v10 > 1), v11 + 1, 1, v7);
  }

  *(v7 + 2) = v11 + 1;
  v12 = &v7[16 * v11];
  v12[32] = a3;
  *(v12 + 5) = v8;
  *(a2 + v6) = v7;
  return swift_endAccess();
}

uint64_t sub_276030584(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14PagesQuicklook17TPPageLayoutCache_pendingUpdates;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v50 = *(v3 + 16);
  if (v50)
  {
    v46 = v2;
    v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPageLayoutCache_pageLayoutCache;
    v49 = v3 + 32;

    swift_beginAccess();
    v5 = 0;
    v47 = a1;
    v48 = v4;
    while (1)
    {
      v8 = (v49 + 16 * v5);
      v9 = *v8;
      v10 = *(v8 + 1);
      v11 = *(a1 + v4);
      v12 = v11 & 0xC000000000000001;
      if (v9)
      {
        if (v12)
        {
          v13 = v10;

          v14 = sub_276038684();

          if ((v14 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (!*(v11 + 16))
          {
            v37 = v10;
            goto LABEL_26;
          }

          sub_27602FD90(0, &qword_280A401A0);
          v10;

          v25 = sub_2760385F4();
          v26 = -1 << *(v11 + 32);
          v27 = v25 & ~v26;
          if (((*(v11 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
LABEL_18:

            a1 = v47;
LABEL_26:
            sub_276038764();
            v38 = swift_allocObject();
            v38[2] = 8;
            v38[3] = 0;
            v38[4] = 0;
            v38[5] = 0;
            v39 = sub_276038754();
            v40 = objc_opt_self();
            sub_2760386D4();
            v41 = sub_276038504();

            sub_2760386D4();
            v42 = sub_276038504();

            sub_2760386D4();
            v43 = sub_276038504();

            [v40 handleFailureInFunction:v41 file:v42 lineNumber:140 isFatal:0 format:v43 args:v39];

            v4 = v48;

            goto LABEL_5;
          }

          v28 = ~v26;
          while (1)
          {
            v29 = *(*(v11 + 48) + 8 * v27);
            v30 = sub_276038604();

            if (v30)
            {
              break;
            }

            v27 = (v27 + 1) & v28;
            if (((*(v11 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          a1 = v47;
          v4 = v48;
        }

        swift_beginAccess();
        v15 = sub_276033560(v10);
        swift_endAccess();
      }

      else
      {
        if (v12)
        {
          v16 = v10;

          v17 = sub_276038684();

          if (v17)
          {
            goto LABEL_12;
          }
        }

        else if (*(v11 + 16))
        {
          sub_27602FD90(0, &qword_280A401A0);
          v10;

          v31 = sub_2760385F4();
          v32 = -1 << *(v11 + 32);
          v33 = v31 & ~v32;
          if ((*(v11 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
          {
            v34 = ~v32;
            while (1)
            {
              v35 = *(*(v11 + 48) + 8 * v33);
              v36 = sub_276038604();

              if (v36)
              {
                break;
              }

              v33 = (v33 + 1) & v34;
              if (((*(v11 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
              {
                goto LABEL_3;
              }
            }

            a1 = v47;
LABEL_12:
            sub_276038764();
            v18 = swift_allocObject();
            v18[2] = 8;
            v18[3] = 0;
            v18[4] = 0;
            v18[5] = 0;
            v19 = sub_276038754();
            v20 = objc_opt_self();
            sub_2760386D4();
            v21 = sub_276038504();

            sub_2760386D4();
            v22 = sub_276038504();

            sub_2760386D4();
            v23 = sub_276038504();

            v24 = v20;
            v4 = v48;
            [v24 handleFailureInFunction:v21 file:v22 lineNumber:132 isFatal:0 format:v23 args:v19];

            goto LABEL_5;
          }

LABEL_3:

          v4 = v48;
        }

        else
        {
          v44 = v10;
        }

        swift_beginAccess();
        v6 = v10;
        sub_2760329B8(&v51, v6);
        v7 = v51;
        swift_endAccess();

        a1 = v47;
      }

LABEL_5:
      if (++v5 == v50)
      {

        v2 = v46;
        break;
      }
    }
  }

  *(a1 + v2) = MEMORY[0x277D84F90];
}

unint64_t sub_276031158(unint64_t result, uint64_t a2)
{
  v2 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (((v2 | result) & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 >= result)
  {
    MEMORY[0x28223BE20]();
    sub_27602B4C8(&qword_280A40190);
    sub_2760385D4();
    return v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2760312BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;

  sub_276033D90(v5, sub_276034284, v4);
  v8 = v6;
  sub_276031C94(&v8);
  if (v2)
  {

    __break(1u);
  }

  else
  {

    return v8;
  }

  return result;
}

uint64_t sub_276031398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_276033D90(v10, a5, v9);
  v13 = v11;
  sub_276031C94(&v13);
  if (v5)
  {

    __break(1u);
  }

  else
  {

    return v13;
  }

  return result;
}

uint64_t TPPageLayoutCache.description.getter()
{
  sub_2760386C4();
  v10.receiver = v0;
  v10.super_class = type metadata accessor for TPPageLayoutCache();
  v1 = objc_msgSendSuper2(&v10, sel_description);
  v2 = sub_276038514();
  v4 = v3;

  v11 = v2;
  v12 = v4;
  MEMORY[0x277C91FA0](0xD000000000000010, 0x800000027604C310);
  swift_beginAccess();

  v6 = MEMORY[0x277C91FE0](v5, &type metadata for TPPageLayoutCache.Update);
  v8 = v7;

  MEMORY[0x277C91FA0](v6, v8);

  return v11;
}

id TPPageLayoutCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TPPageLayoutCache.init()()
{
  v9 = sub_2760385C4();
  v1 = *(v9 - 8);
  MEMORY[0x28223BE20]();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2760385B4();
  MEMORY[0x28223BE20]();
  sub_2760384E4();
  MEMORY[0x28223BE20]();
  *&v0[OBJC_IVAR____TtC14PagesQuicklook17TPPageLayoutCache_pageLayoutCache] = MEMORY[0x277D84FA0];
  v4 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC14PagesQuicklook17TPPageLayoutCache_pendingUpdates] = MEMORY[0x277D84F90];
  v8 = OBJC_IVAR____TtC14PagesQuicklook17TPPageLayoutCache_accessQueue;
  sub_27602FD90(0, &qword_280A400F8);
  sub_2760384D4();
  v11 = v4;
  sub_27602B470();
  sub_27602B4C8(&qword_280A40108);
  sub_27602B510();
  sub_276038614();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v9);
  *&v0[v8] = sub_2760385E4();
  v5 = type metadata accessor for TPPageLayoutCache();
  v10.receiver = v0;
  v10.super_class = v5;
  return objc_msgSendSuper2(&v10, sel_init);
}

id TPPageLayoutCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPPageLayoutCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_27603195C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_276031968(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2760319B0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

char *sub_2760319FC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_27602B4C8(&qword_280A401B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_276031B08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_27602B4C8(&qword_280A401B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_276031C0C(uint64_t a1, uint64_t a2)
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

  sub_27602B4C8(&qword_280A40198);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

uint64_t sub_276031C94(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_276033C1C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_276031DC0(v6);
  return sub_276038714();
}

void *sub_276031D10(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_276038654();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_276031C0C(v2, 0);

    v1 = sub_276033A00(&v5, v3 + 4, v2, v1);
    sub_276034060();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_276031DC0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_276038794();
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
        sub_27602FD90(0, &qword_280A401A0);
        v6 = sub_276038584();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_276031FCC(v8, v9, a1, v4);
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
    sub_276031ED4(0, v2, 1, a1);
  }
}

void sub_276031ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 pageIndex];
      v13 = [v11 pageIndex];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_276031FCC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_2760329A4(v8);
    }

    v90 = *(v8 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = v8;
        v8 = (v90 - 1);
        v92 = *&v91[16 * v90];
        v93 = *&v91[16 * v90 + 24];
        sub_276032634((*a3 + 8 * v92), (*a3 + 8 * *&v91[16 * v90 + 16]), (*a3 + 8 * v93), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v93 < v92)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_2760329A4(v91);
        }

        if (v90 - 2 >= *(v91 + 2))
        {
          goto LABEL_116;
        }

        v94 = &v91[16 * v90];
        *v94 = v92;
        *(v94 + 1) = v93;
        sub_276032918(v90 - 1);
        v8 = v91;
        v90 = *(v91 + 2);
        if (v90 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v100 = v5;
      v96 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v105 = [v13 pageIndex];
      v103 = [v14 pageIndex];

      v98 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 pageIndex];
        v7 = [v18 pageIndex];

        v21 = v20 >= v7;
        v8 = v19;
        v22 = v21;
        ++v15;
        ++v11;
        if ((((v105 < v103) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v98;
      v5 = v100;
      v23 = v96;
      if (v105 < v103)
      {
        if (v6 < v98)
        {
          goto LABEL_119;
        }

        if (v98 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v98;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_276031B08(0, *(v8 + 2) + 1, 1, v8);
    }

    v44 = *(v8 + 2);
    v43 = *(v8 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v8 = sub_276031B08((v43 > 1), v44 + 1, 1, v8);
    }

    *(v8 + 2) = v45;
    v46 = &v8[16 * v44];
    *(v46 + 4) = v9;
    *(v46 + 5) = v7;
    v47 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v8 + 4);
          v50 = *(v8 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_59:
          if (v52)
          {
            goto LABEL_106;
          }

          v65 = &v8[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_109;
          }

          v71 = &v8[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_113;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v75 = &v8[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_73:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = &v8[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_111;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_80:
        v86 = v48 - 1;
        if (v48 - 1 >= v45)
        {
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = *&v8[16 * v86 + 32];
        v88 = *&v8[16 * v48 + 40];
        sub_276032634((*a3 + 8 * v87), (*a3 + 8 * *&v8[16 * v48 + 32]), (*a3 + 8 * v88), v47);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v88 < v87)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2760329A4(v8);
        }

        if (v86 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v89 = &v8[16 * v86];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        sub_276032918(v48);
        v45 = *(v8 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v8[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_104;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_105;
      }

      v60 = &v8[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_107;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_110;
      }

      if (v64 >= v56)
      {
        v82 = &v8[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_114;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v97 = v8;
  v99 = v9;
  v101 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v104 = v30;
LABEL_32:
  v106 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 pageIndex];
    v41 = [v39 pageIndex];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = v106 + 1;
      v32 += 8;
      --v33;
      if ((v106 + 1) != v104)
      {
        goto LABEL_32;
      }

      v7 = v104;
      v9 = v99;
      v5 = v101;
      v8 = v97;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    v21 = __CFADD__(v35++, 1);
    if (v21)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_276032634(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 pageIndex];
          v35 = [v33 pageIndex];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 pageIndex];
          v20 = [v18 pageIndex];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_276032918(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2760329A4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2760329B8(void *a1, void *a2)
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

    v9 = sub_276038664();

    if (v9)
    {

      sub_27602FD90(0, &qword_280A401A0);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_276038654();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_276032BF0(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_276032DE0();
    }

    v18 = v8;
    sub_276033008(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_27602FD90(0, &qword_280A401A0);
  v11 = sub_2760385F4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_27603308C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_276038604();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_276032BF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_27602B4C8(&qword_280A401C0);
    v2 = sub_2760386B4();
    v14 = v2;
    sub_276038644();
    if (sub_276038674())
    {
      sub_27602FD90(0, &qword_280A401A0);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_276032DE0();
        }

        v2 = v14;
        result = sub_2760385F4();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_276038674());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_276032DE0()
{
  v1 = v0;
  v2 = *v0;
  sub_27602B4C8(&qword_280A401C0);
  result = sub_2760386A4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_2760385F4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_276033008(uint64_t a1, uint64_t a2)
{
  sub_2760385F4();
  result = sub_276038634();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_27603308C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_276032DE0();
  }

  else
  {
    if (v7 > v6)
    {
      sub_2760331FC();
      goto LABEL_12;
    }

    sub_27603334C();
  }

  v8 = *v3;
  v9 = sub_2760385F4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_27602FD90(0, &qword_280A401A0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_276038604();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2760387C4();
  __break(1u);
}

id sub_2760331FC()
{
  v1 = v0;
  sub_27602B4C8(&qword_280A401C0);
  v2 = *v0;
  v3 = sub_276038694();
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

uint64_t sub_27603334C()
{
  v1 = v0;
  v2 = *v0;
  sub_27602B4C8(&qword_280A401C0);
  result = sub_2760386A4();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_2760385F4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_276033560(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_276038684();

    if (v5)
    {
      v6 = sub_2760336F8();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_27602FD90(0, &qword_280A401A0);
  v9 = sub_2760385F4();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_276038604();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2760331FC();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_276033860(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_2760336F8()
{
  v1 = v0;

  v2 = sub_276038654();
  v3 = swift_unknownObjectRetain();
  v4 = sub_276032BF0(v3, v2);
  v13 = v4;

  v5 = sub_2760385F4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_27602FD90(0, &qword_280A401A0);
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = sub_276038604();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v4 + 48) + 8 * v7);
  sub_276033860(v7);
  result = sub_276038604();
  if (result)
  {
    *v1 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_276033860(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_276038624();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_2760385F4();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

id sub_276033A00(id result, void *a2, uint64_t a3, uint64_t a4)
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

  sub_276038644();
  sub_27602FD90(0, &qword_280A401A0);
  sub_27603406C();
  result = sub_2760385A4();
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
      if (!sub_276038674())
      {
        goto LABEL_30;
      }

      sub_27602FD90(0, &qword_280A401A0);
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

BOOL sub_276033C74(id *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = [*a1 pageIndex];
  return v4 >= v2 && v4 < v3;
}

uint64_t sub_276033CB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_276038644();
    sub_27602FD90(0, &qword_280A401A0);
    sub_27603406C();
    sub_2760385A4();
    result = v14;
    v7 = v15;
    v9 = v16;
    v8 = v17;
    v10 = v18;
  }

  else
  {
    v8 = 0;
    v11 = -1;
    v12 = -1 << *(result + 32);
    v7 = result + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 56);
  }

  *a4 = result;
  a4[1] = v7;
  a4[2] = v9;
  a4[3] = v8;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_276033D90(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_276033CB0(a1, a2, a3, v37);
  v6 = v37[0];
  v7 = v37[1];
  v8 = v37[3];
  v9 = v37[4];
  v34 = v37[5];
  v31 = 0;
  v33 = MEMORY[0x277D84F90];
  v30 = (MEMORY[0x277D84F90] + 32);
  v10 = (v37[2] + 64) >> 6;
  while (v6 < 0)
  {
    if (!sub_276038674())
    {
      goto LABEL_28;
    }

    sub_27602FD90(0, &qword_280A401A0);
    swift_dynamicCast();
    v13 = v35;
    if (!v35)
    {
      goto LABEL_28;
    }

LABEL_11:
    v36 = v13;
    if (v34(&v36))
    {
      v14 = v31;
      if (!v31)
      {
        v15 = v33[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        sub_27602B4C8(&qword_280A40198);
        v18 = swift_allocObject();
        v19 = j__malloc_size(v18);
        v20 = v19 - 32;
        if (v19 < 32)
        {
          v20 = v19 - 25;
        }

        v21 = v20 >> 3;
        v18[2] = v17;
        v18[3] = (2 * (v20 >> 3)) | 1;
        v22 = (v18 + 4);
        v23 = v33[3] >> 1;
        if (v33[2])
        {
          v24 = v33 + 4;
          if (v18 != v33 || v22 >= v24 + 8 * v23)
          {
            v32 = v20 >> 3;
            memmove(v18 + 4, v24, 8 * v23);
            v22 = (v18 + 4);
            v21 = v32;
          }

          v33[2] = 0;
        }

        v30 = (v22 + 8 * v23);
        v14 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;

        v33 = v18;
      }

      v25 = __OFSUB__(v14, 1);
      v26 = v14 - 1;
      if (v25)
      {
        goto LABEL_34;
      }

      *v30++ = v13;
      v31 = v26;
    }

    else
    {
    }
  }

  v11 = v8;
  v12 = v9;
  if (!v9)
  {
    while (1)
    {
      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v8 >= v10)
      {
        goto LABEL_28;
      }

      v12 = *(v7 + 8 * v8);
      ++v11;
      if (v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_7:
  v9 = (v12 - 1) & v12;
  v13 = *(*(v6 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v12)))));
  if (v13)
  {
    goto LABEL_11;
  }

LABEL_28:
  sub_276034060();

  v27 = v33[3];
  if (v27 < 2)
  {
    return;
  }

  v28 = v27 >> 1;
  v25 = __OFSUB__(v28, v31);
  v29 = v28 - v31;
  if (!v25)
  {
    v33[2] = v29;
    return;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_27603406C()
{
  result = qword_280A401A8;
  if (!qword_280A401A8)
  {
    sub_27602FD90(255, &qword_280A401A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A401A8);
  }

  return result;
}

uint64_t sub_2760340D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27603415C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2760341C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_276031398(*(v3 + 16), **(v3 + 24), *(*(v3 + 24) + 8), a1, a2);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

BOOL sub_276034204(id *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = [*a1 pageIndex];
  return v4 >= v2 && v3 >= v4;
}

uint64_t sub_276034240@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2760312BC(*(v1 + 16), **(v1 + 24));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2760342BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for TPPageLayoutCache.Update.Kind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TPPageLayoutCache.Update.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_276034478()
{
  result = qword_280A401C8;
  if (!qword_280A401C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A401C8);
  }

  return result;
}

uint64_t sub_27603450C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Reference::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_2760345DC(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSA::DocumentArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_2760346AC(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::DataReference::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27603477C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSS::ThemeArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27603484C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSWP::ShapeInfoArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27603491C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275F90BA4(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2760349EC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275F91A8C(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276034ABC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275F92184(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276034B8C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275F913A4(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_276034C5C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::UUIDPath::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276034D2C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275F94F54(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_276034DFC(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::FillArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276034ECC(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::UUID::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276034F9C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Point::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27603506C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275F990F8(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_27603513C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Size::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27603520C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Range::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2760352DC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275F995DC(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2760353AC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275F9A7A4(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27603547C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275F99B8C(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27603554C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275FA0BC0(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_27603561C()
{
  sub_275FBABDC();
  while (1)
  {
    v3 = sub_275FBABEC(v2);
    v11 = sub_275FBAC1C(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21);
    if (v12)
    {
      return v11;
    }

    TagFallback = (v11 + 1);
    v14 = *v11;
    if (*v11 < 0)
    {
      sub_275FBAC08();
      if (v16 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v15, v14);
        if (!TagFallback)
        {
          return TagFallback;
        }

        LODWORD(v14) = v18;
      }

      else
      {
        TagFallback = v15 + 2;
      }
    }

    if (!v14 || (v14 & 7) == 4)
    {
      break;
    }

    if ((*(v1 + 8) & 1) == 0)
    {
      sub_275FB5524((v1 + 8));
    }

    v2 = google::protobuf::internal::UnknownFieldParse();
    v21 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  *(v0 + 80) = v14 - 1;
  return TagFallback;
}

google::protobuf::internal *sub_2760356FC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275F9C078(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2760357CC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275F9F960(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27603589C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275FA0370(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27603596C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275F9E928(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_276035A3C()
{
  sub_275FBABDC();
  while (1)
  {
    v3 = sub_275FBABEC(v2);
    v11 = sub_275FBAC1C(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21);
    if (v12)
    {
      return v11;
    }

    TagFallback = (v11 + 1);
    v14 = *v11;
    if (*v11 < 0)
    {
      sub_275FBAC08();
      if (v16 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v15, v14);
        if (!TagFallback)
        {
          return TagFallback;
        }

        LODWORD(v14) = v18;
      }

      else
      {
        TagFallback = v15 + 2;
      }
    }

    if (!v14 || (v14 & 7) == 4)
    {
      break;
    }

    if ((*(v1 + 8) & 1) == 0)
    {
      sub_275FB5524((v1 + 8));
    }

    v2 = google::protobuf::internal::UnknownFieldParse();
    v21 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  *(v0 + 80) = v14 - 1;
  return TagFallback;
}

void sub_276035B1C()
{
  sub_275FBABDC();
  v2 = sub_275FB1588(v0, &v203);
  TagFallback = sub_275FBAC1C(v2, v3, v4, v5, v6, v7, v8, v9, v200, v203);
  if ((v11 & 1) == 0)
  {
    while (2)
    {
      v12 = (TagFallback + 1);
      v13 = *TagFallback;
      if (*TagFallback < 0)
      {
        v13 = (v13 + (*v12 << 7) - 128);
        if (*v12 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(TagFallback, v13);
          v203 = TagFallback;
          if (!TagFallback)
          {
            return;
          }

          v12 = TagFallback;
LABEL_7:
          switch(v13 >> 3)
          {
            case 1u:
              if (v13 != 13)
              {
                goto LABEL_226;
              }

              *(v1 + 184) = sub_275FBAC34(v12, *(v1 + 16) | 0x10000);
              goto LABEL_179;
            case 2u:
              if (v13 != 18)
              {
                goto LABEL_226;
              }

              *(v1 + 16) |= 4u;
              v75 = *(v1 + 72);
              if (v75)
              {
                goto LABEL_115;
              }

              v88 = *(v1 + 8);
              if (v88)
              {
                sub_275FBAB74(v88);
              }

              v89 = MEMORY[0x277C92D30]();
              LODWORD(v75) = v89;
              *(v1 + 72) = v89;
              goto LABEL_114;
            case 3u:
              if (v13 != 24)
              {
                goto LABEL_226;
              }

              sub_275FBAB4C(*(v1 + 16) | 0x20000);
              if (v70 < 0 && (sub_275FBAAB4(), v73 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v72, v71);
                sub_275FBAB0C();
                *(v1 + 188) = v181;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_275FBAB1C();
                *(v1 + 188) = v74;
              }

              goto LABEL_234;
            case 4u:
              if (v13 != 34)
              {
                goto LABEL_226;
              }

              *(v1 + 16) |= 8u;
              v25 = *(v1 + 80);
              if (v25)
              {
                goto LABEL_122;
              }

              v78 = *(v1 + 8);
              if (v78)
              {
                sub_275FBAB74(v78);
              }

              v79 = MEMORY[0x277C92D60]();
              LODWORD(v25) = v79;
              *(v1 + 80) = v79;
              goto LABEL_121;
            case 5u:
              if (v13 != 42)
              {
                goto LABEL_226;
              }

              *(v1 + 16) |= 0x10u;
              v25 = *(v1 + 88);
              if (v25)
              {
                goto LABEL_122;
              }

              v48 = *(v1 + 8);
              if (v48)
              {
                sub_275FBAB74(v48);
              }

              v49 = MEMORY[0x277C92D60]();
              LODWORD(v25) = v49;
              *(v1 + 88) = v49;
              goto LABEL_121;
            case 6u:
              if (v13 != 48)
              {
                goto LABEL_226;
              }

              sub_275FBAB4C(*(v1 + 16) | 0x40000);
              if (v97 < 0 && (sub_275FBAAB4(), v100 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v99, v98);
                sub_275FBAB0C();
                *(v1 + 189) = v183;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_275FBAB1C();
                *(v1 + 189) = v101;
              }

              goto LABEL_234;
            case 7u:
              if (v13 != 58)
              {
                goto LABEL_226;
              }

              *(v1 + 16) |= 0x20u;
              v35 = *(v1 + 96);
              if (v35)
              {
                goto LABEL_150;
              }

              v106 = *(v1 + 8);
              if (v106)
              {
                sub_275FBAB74(v106);
              }

              v107 = MEMORY[0x277C92D10]();
              LODWORD(v35) = v107;
              *(v1 + 96) = v107;
              goto LABEL_149;
            case 8u:
              if (v13 != 66)
              {
                goto LABEL_226;
              }

              TagFallback = v12 - 1;
              break;
            case 9u:
              if (v13 != 72)
              {
                goto LABEL_226;
              }

              sub_275FBAB2C(*(v1 + 20) | 0x100);
              if (v118 < 0 && (sub_275FBAAB4(), v121 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v120, v119);
                sub_275FBAB0C();
                *(v1 + 244) = v187;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_275FBAB1C();
                *(v1 + 244) = v122;
              }

              goto LABEL_234;
            case 0xAu:
              if (v13 != 80)
              {
                goto LABEL_226;
              }

              sub_275FBAB4C(*(v1 + 16) | 0x80000);
              if (v57 < 0 && (sub_275FBAAB4(), v60 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v59, v58);
                sub_275FBAB0C();
                *(v1 + 190) = v179;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_275FBAB1C();
                *(v1 + 190) = v61;
              }

              goto LABEL_234;
            case 0xBu:
              if (v13 != 88)
              {
                goto LABEL_226;
              }

              sub_275FBAB4C(*(v1 + 16) | 0x100000);
              if (v113 < 0 && (sub_275FBAAB4(), v116 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v115, v114);
                sub_275FBAB0C();
                *(v1 + 191) = v186;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_275FBAB1C();
                *(v1 + 191) = v117;
              }

              goto LABEL_234;
            case 0xCu:
              if (v13 != 96)
              {
                goto LABEL_226;
              }

              sub_275FBAB2C(*(v1 + 20) | 0x200);
              if (v43 < 0 && (sub_275FBAAB4(), v46 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v45, v44);
                sub_275FBAB0C();
                *(v1 + 245) = v177;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_275FBAB1C();
                *(v1 + 245) = v47;
              }

              goto LABEL_234;
            case 0xDu:
              if (v13 != 104)
              {
                goto LABEL_226;
              }

              sub_275FBAB4C(*(v1 + 16) | 0x1000000);
              if (v52 < 0 && (sub_275FBAAB4(), v55 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v54, v53);
                sub_275FBAB0C();
                *(v1 + 204) = v178;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_275FBAB1C();
                *(v1 + 204) = v56;
              }

              goto LABEL_234;
            case 0xEu:
              if (v13 != 112)
              {
                goto LABEL_226;
              }

              v103 = (v12 + 1);
              v102 = *v12;
              if ((v102 & 0x8000000000000000) == 0)
              {
                goto LABEL_141;
              }

              sub_275FBAB5C();
              if (v105 < 0)
              {
                TagFallback = google::protobuf::internal::VarintParseSlow64(v104, v102);
                v203 = TagFallback;
                if (!TagFallback)
                {
                  return;
                }

                v102 = v184;
              }

              else
              {
                v103 = (v104 + 2);
LABEL_141:
                v203 = v103;
              }

              if (v102 <= 2)
              {
                *(v1 + 16) |= 0x200000u;
                *(v1 + 192) = v102;
                goto LABEL_234;
              }

              v196 = *(v1 + 8);
              if ((v196 & 1) == 0)
              {
                goto LABEL_289;
              }

              v197 = ((v196 & 0xFFFFFFFFFFFFFFFELL) + 8);
              goto LABEL_288;
            case 0xFu:
              if (v13 != 125)
              {
                goto LABEL_226;
              }

              *(v1 + 240) = sub_275FBAC28(v12, *(v1 + 20) | 0x80);
              goto LABEL_179;
            case 0x10u:
              if (v13 != 130)
              {
                goto LABEL_226;
              }

              *(v1 + 16) |= 0x40u;
              v75 = *(v1 + 104);
              if (v75)
              {
                goto LABEL_115;
              }

              v76 = *(v1 + 8);
              if (v76)
              {
                sub_275FBAB74(v76);
              }

              v77 = MEMORY[0x277C92D30]();
              LODWORD(v75) = v77;
              *(v1 + 104) = v77;
LABEL_114:
              v12 = v203;
LABEL_115:
              TagFallback = sub_276034F9C(v0, v75, v12);
              goto LABEL_233;
            case 0x11u:
              if (v13 != 138)
              {
                goto LABEL_226;
              }

              *(v1 + 16) |= 0x80u;
              v35 = *(v1 + 112);
              if (v35)
              {
                goto LABEL_150;
              }

              v36 = *(v1 + 8);
              if (v36)
              {
                sub_275FBAB74(v36);
              }

              v37 = MEMORY[0x277C92D10]();
              LODWORD(v35) = v37;
              *(v1 + 112) = v37;
LABEL_149:
              v12 = v203;
LABEL_150:
              TagFallback = sub_27603513C(v0, v35, v12);
              goto LABEL_233;
            case 0x12u:
              if (v13 != 146)
              {
                goto LABEL_226;
              }

              *(v1 + 16) |= 1u;
              goto LABEL_210;
            case 0x13u:
              if (v13 != 152)
              {
                goto LABEL_226;
              }

              sub_275FBAB4C(*(v1 + 16) | 0x2000000);
              if (v108 < 0 && (sub_275FBAAB4(), v111 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v110, v109);
                sub_275FBAB0C();
                *(v1 + 205) = v185;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_275FBAB1C();
                *(v1 + 205) = v112;
              }

              goto LABEL_234;
            case 0x14u:
              if (v13 != 160)
              {
                goto LABEL_226;
              }

              *(v1 + 16) |= 0x400000u;
              v139 = (v12 + 1);
              LODWORD(v140) = *v12;
              if ((*v12 & 0x80000000) == 0)
              {
                goto LABEL_192;
              }

              v141 = *v139;
              v140 = (v140 + (v141 << 7) - 128);
              if (v141 < 0)
              {
                TagFallback = google::protobuf::internal::VarintParseSlow32(v12, v140);
                v203 = TagFallback;
                *(v1 + 196) = v192;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                v139 = (v12 + 2);
LABEL_192:
                v203 = v139;
                *(v1 + 196) = v140;
              }

              goto LABEL_234;
            case 0x15u:
              if (v13 != 173)
              {
                goto LABEL_226;
              }

              *(v1 + 200) = sub_275FBAC34(v12, *(v1 + 16) | 0x800000);
              goto LABEL_179;
            case 0x16u:
              if (v13 != 181)
              {
                goto LABEL_226;
              }

              *(v1 + 208) = sub_275FBAC34(v12, *(v1 + 16) | 0x10000000);
              goto LABEL_179;
            case 0x17u:
              if (v13 != 184)
              {
                goto LABEL_226;
              }

              sub_275FBAB2C(*(v1 + 20) | 0x400);
              if (v129 < 0 && (sub_275FBAAB4(), v132 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v131, v130);
                sub_275FBAB0C();
                *(v1 + 246) = v190;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_275FBAB1C();
                *(v1 + 246) = v133;
              }

              goto LABEL_234;
            case 0x18u:
              if (v13 != 192)
              {
                goto LABEL_226;
              }

              sub_275FBAB4C(*(v1 + 16) | 0x4000000);
              if (v144 < 0 && (sub_275FBAAB4(), v147 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v146, v145);
                sub_275FBAB0C();
                *(v1 + 206) = v193;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_275FBAB1C();
                *(v1 + 206) = v148;
              }

              goto LABEL_234;
            case 0x19u:
              if (v13 != 202)
              {
                goto LABEL_226;
              }

              *(v1 + 16) |= 0x100u;
              v67 = *(v1 + 120);
              if (v67)
              {
                goto LABEL_225;
              }

              v68 = *(v1 + 8);
              if (v68)
              {
                sub_275FBAB74(v68);
              }

              v69 = MEMORY[0x277C92CF0]();
              LODWORD(v67) = v69;
              *(v1 + 120) = v69;
              goto LABEL_224;
            case 0x1Au:
              if (v13 != 208)
              {
                goto LABEL_226;
              }

              sub_275FBAB2C(*(v1 + 20) | 0x800);
              if (v62 < 0 && (sub_275FBAAB4(), v65 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v64, v63);
                sub_275FBAB0C();
                *(v1 + 247) = v180;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_275FBAB1C();
                *(v1 + 247) = v66;
              }

              goto LABEL_234;
            case 0x1Bu:
              if (v13 != 216)
              {
                goto LABEL_226;
              }

              sub_275FBAB2C(*(v1 + 20) | 0x2000);
              if (v156 < 0 && (sub_275FBAAB4(), v159 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v158, v157);
                sub_275FBAB0C();
                *(v1 + 252) = v195;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_275FBAB1C();
                *(v1 + 252) = v160;
              }

              goto LABEL_234;
            case 0x1Cu:
              if (v13 != 224)
              {
                goto LABEL_226;
              }

              sub_275FBAB4C(*(v1 + 16) | 0x8000000);
              if (v28 < 0 && (sub_275FBAAB4(), v31 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v30, v29);
                sub_275FBAB0C();
                *(v1 + 207) = v175;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_275FBAB1C();
                *(v1 + 207) = v32;
              }

              goto LABEL_234;
            case 0x1Du:
              if (v13 != 234)
              {
                goto LABEL_226;
              }

              *(v1 + 16) |= 0x200u;
              v67 = *(v1 + 128);
              if (v67)
              {
                goto LABEL_225;
              }

              v149 = *(v1 + 8);
              if (v149)
              {
                sub_275FBAB74(v149);
              }

              v150 = MEMORY[0x277C92CF0]();
              LODWORD(v67) = v150;
              *(v1 + 128) = v150;
              goto LABEL_224;
            case 0x1Eu:
              if (v13 != 242)
              {
                goto LABEL_226;
              }

              *(v1 + 16) |= 2u;
LABEL_210:
              google::protobuf::internal::ArenaStringPtr::Mutable();
              TagFallback = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_233;
            case 0x1Fu:
              if (v13 != 248)
              {
                goto LABEL_226;
              }

              v123 = (v12 + 1);
              v102 = *v12;
              if ((v102 & 0x8000000000000000) == 0)
              {
                goto LABEL_167;
              }

              sub_275FBAB5C();
              if (v125 < 0)
              {
                TagFallback = google::protobuf::internal::VarintParseSlow64(v124, v102);
                v203 = TagFallback;
                if (!TagFallback)
                {
                  return;
                }

                v102 = v188;
              }

              else
              {
                v123 = (v124 + 2);
LABEL_167:
                v203 = v123;
              }

              if (v102 <= 4)
              {
                *(v1 + 20) |= 0x1000u;
                *(v1 + 248) = v102;
                goto LABEL_234;
              }

              v198 = *(v1 + 8);
              if ((v198 & 1) == 0)
              {
                goto LABEL_289;
              }

              v197 = ((v198 & 0xFFFFFFFFFFFFFFFELL) + 8);
              goto LABEL_288;
            case 0x20u:
              if (v13 != 2)
              {
                goto LABEL_226;
              }

              *(v1 + 16) |= 0x400u;
              v25 = *(v1 + 136);
              if (v25)
              {
                goto LABEL_122;
              }

              v90 = *(v1 + 8);
              if (v90)
              {
                sub_275FBAB74(v90);
              }

              v91 = MEMORY[0x277C92D60]();
              LODWORD(v25) = v91;
              *(v1 + 136) = v91;
              goto LABEL_121;
            case 0x21u:
              if (v13 != 8)
              {
                goto LABEL_226;
              }

              v126 = (v12 + 1);
              v102 = *v12;
              if ((v102 & 0x8000000000000000) == 0)
              {
                goto LABEL_174;
              }

              sub_275FBAB5C();
              if (v128 < 0)
              {
                TagFallback = google::protobuf::internal::VarintParseSlow64(v127, v102);
                v203 = TagFallback;
                if (!TagFallback)
                {
                  return;
                }

                v102 = v189;
              }

              else
              {
                v126 = (v127 + 2);
LABEL_174:
                v203 = v126;
              }

              if (v102 > 1)
              {
                v199 = *(v1 + 8);
                if (v199)
                {
                  v197 = ((v199 & 0xFFFFFFFFFFFFFFFELL) + 8);
                }

                else
                {
LABEL_289:
                  v201 = v102;
                  v197 = sub_275FB5524((v1 + 8));
                }

LABEL_288:
                TagFallback = google::protobuf::UnknownFieldSet::AddVarint(v197);
              }

              else
              {
                *(v1 + 16) |= 0x20000000u;
                *(v1 + 212) = v102;
              }

              goto LABEL_234;
            case 0x22u:
              if (v13 != 16)
              {
                goto LABEL_226;
              }

              sub_275FBAB4C(*(v1 + 16) | 0x80000000);
              if (v38 < 0 && (sub_275FBAAB4(), v41 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v40, v39);
                sub_275FBAB0C();
                *(v1 + 220) = v176;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_275FBAB1C();
                *(v1 + 220) = v42;
              }

              goto LABEL_234;
            case 0x23u:
              if (v13 != 26)
              {
                goto LABEL_226;
              }

              *(v1 + 16) |= 0x800u;
              v25 = *(v1 + 144);
              if (v25)
              {
                goto LABEL_122;
              }

              v33 = *(v1 + 8);
              if (v33)
              {
                sub_275FBAB74(v33);
              }

              v34 = MEMORY[0x277C92D60]();
              LODWORD(v25) = v34;
              *(v1 + 144) = v34;
              goto LABEL_121;
            case 0x24u:
              if (v13 != 37)
              {
                goto LABEL_226;
              }

              *(v1 + 216) = sub_275FBAC34(v12, *(v1 + 16) | 0x40000000);
              goto LABEL_179;
            case 0x25u:
              if (v13 != 42)
              {
                goto LABEL_226;
              }

              *(v1 + 16) |= 0x1000u;
              v25 = *(v1 + 152);
              if (v25)
              {
                goto LABEL_122;
              }

              v26 = *(v1 + 8);
              if (v26)
              {
                sub_275FBAB74(v26);
              }

              v27 = MEMORY[0x277C92D60]();
              LODWORD(v25) = v27;
              *(v1 + 152) = v27;
              goto LABEL_121;
            case 0x26u:
              if (v13 != 48)
              {
                goto LABEL_226;
              }

              sub_275FBAB2C(*(v1 + 20) | 1);
              if (v20 < 0 && (sub_275FBAAB4(), v23 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v22, v21);
                sub_275FBAB0C();
                *(v1 + 221) = v174;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_275FBAB1C();
                *(v1 + 221) = v24;
              }

              goto LABEL_234;
            case 0x27u:
              if (v13 != 56)
              {
                goto LABEL_226;
              }

              sub_275FBAB2C(*(v1 + 20) | 0x4000);
              if (v151 < 0 && (sub_275FBAAB4(), v154 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v153, v152);
                sub_275FBAB0C();
                *(v1 + 253) = v194;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_275FBAB1C();
                *(v1 + 253) = v155;
              }

              goto LABEL_234;
            case 0x28u:
              if (v13 != 64)
              {
                goto LABEL_226;
              }

              sub_275FBAB2C(*(v1 + 20) | 2);
              if (v134 < 0 && (sub_275FBAAB4(), v137 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v136, v135);
                sub_275FBAB0C();
                *(v1 + 222) = v191;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_275FBAB1C();
                *(v1 + 222) = v138;
              }

              goto LABEL_234;
            case 0x29u:
              if (v13 != 74)
              {
                goto LABEL_226;
              }

              *(v1 + 16) |= 0x2000u;
              v25 = *(v1 + 160);
              if (v25)
              {
                goto LABEL_122;
              }

              v50 = *(v1 + 8);
              if (v50)
              {
                sub_275FBAB74(v50);
              }

              v51 = MEMORY[0x277C92D60]();
              LODWORD(v25) = v51;
              *(v1 + 160) = v51;
LABEL_121:
              v12 = v203;
LABEL_122:
              TagFallback = sub_27603450C(v0, v25, v12);
              goto LABEL_233;
            case 0x2Au:
              if (v13 != 80)
              {
                goto LABEL_226;
              }

              sub_275FBAB2C(*(v1 + 20) | 4);
              if (v92 < 0 && (sub_275FBAAB4(), v95 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v94, v93);
                sub_275FBAB0C();
                *(v1 + 223) = v182;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_275FBAB1C();
                *(v1 + 223) = v96;
              }

              goto LABEL_234;
            case 0x2Bu:
              if (v13 != 90)
              {
                goto LABEL_226;
              }

              *(v1 + 16) |= 0x4000u;
              v142 = *(v1 + 168);
              if (!v142)
              {
                v143 = *(v1 + 8);
                if (v143)
                {
                  v143 = sub_275FBAB74(v143);
                }

                v142 = sub_275FB0574(v143);
                *(v1 + 168) = v142;
                v12 = v203;
              }

              TagFallback = sub_276036B90(v0, v142, v12);
              goto LABEL_233;
            case 0x2Cu:
              if (v13 != 96)
              {
                goto LABEL_226;
              }

              sub_275FBAB2C(*(v1 + 20) | 8);
              if (v15 < 0 && (sub_275FBAAB4(), v18 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v17, v16);
                sub_275FBAB0C();
                *(v1 + 224) = v173;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_275FBAB1C();
                *(v1 + 224) = v19;
              }

              goto LABEL_234;
            case 0x2Du:
              if (v13 != 109)
              {
                goto LABEL_226;
              }

              *(v1 + 228) = sub_275FBAC28(v12, *(v1 + 20) | 0x10);
              goto LABEL_179;
            case 0x2Eu:
              if (v13 != 117)
              {
                goto LABEL_226;
              }

              *(v1 + 232) = sub_275FBAC28(v12, *(v1 + 20) | 0x20);
              goto LABEL_179;
            case 0x2Fu:
              if (v13 != 122)
              {
                goto LABEL_226;
              }

              *(v1 + 16) |= 0x8000u;
              v67 = *(v1 + 176);
              if (v67)
              {
                goto LABEL_225;
              }

              v161 = *(v1 + 8);
              if (v161)
              {
                sub_275FBAB74(v161);
              }

              v162 = MEMORY[0x277C92CF0]();
              LODWORD(v67) = v162;
              *(v1 + 176) = v162;
LABEL_224:
              v12 = v203;
LABEL_225:
              TagFallback = sub_276036AC0(v0, v67, v12);
              goto LABEL_233;
            case 0x30u:
              if (v13 != 133)
              {
                goto LABEL_226;
              }

              *(v1 + 236) = sub_275FBAC28(v12, *(v1 + 20) | 0x40);
LABEL_179:
              v203 = v14;
              goto LABEL_234;
            default:
LABEL_226:
              if (v13)
              {
                v163 = (v13 & 7) == 4;
              }

              else
              {
                v163 = 1;
              }

              if (v163)
              {
                *(v0 + 80) = v13 - 1;
                return;
              }

              if ((*(v1 + 8) & 1) == 0)
              {
                v201 = v13;
                sub_275FB5524((v1 + 8));
              }

              TagFallback = google::protobuf::internal::UnknownFieldParse();
LABEL_233:
              v203 = TagFallback;
              if (!TagFallback)
              {
                return;
              }

LABEL_234:
              v164 = sub_275FBABEC(TagFallback, v201);
              TagFallback = sub_275FBAC1C(v164, v165, v166, v167, v168, v169, v170, v171, v202, v203);
              if (v172)
              {
                return;
              }

              continue;
          }

          while (1)
          {
            v80 = (TagFallback + 1);
            v203 = (TagFallback + 1);
            v81 = *(v1 + 48);
            if (!v81)
            {
              goto LABEL_99;
            }

            v87 = *(v1 + 40);
            v82 = *v81;
            if (v87 < *v81)
            {
              *(v1 + 40) = v87 + 1;
              v84 = *&v81[2 * v87 + 2];
              goto LABEL_103;
            }

            if (v82 == *(v1 + 44))
            {
LABEL_99:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v1 + 32));
              v81 = *(v1 + 48);
              v82 = *v81;
            }

            *v81 = v82 + 1;
            v83 = MEMORY[0x277C92D80](*(v1 + 32));
            LODWORD(v84) = v83;
            v85 = *(v1 + 40);
            v86 = *(v1 + 48) + 8 * v85;
            *(v1 + 40) = v85 + 1;
            *(v86 + 8) = v83;
            v80 = v203;
LABEL_103:
            TagFallback = sub_2760369F0(v0, v84, v80);
            v203 = TagFallback;
            if (!TagFallback)
            {
              return;
            }

            if (*v0 <= TagFallback || *TagFallback != 66)
            {
              goto LABEL_234;
            }
          }
        }

        v12 = (TagFallback + 2);
      }

      break;
    }

    v203 = v12;
    goto LABEL_7;
  }
}

uint64_t sub_2760369F0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSCH::ChartUIState::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276036AC0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::SelectionPathArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276036B90(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275FAD7FC(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276036C60(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275FA7884(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276036D30(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275FA994C(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276036E00(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275FAAF54(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_276036ED0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSWP::MergeFieldTypeArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276036FA0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275FAC5C0(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276037070(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275FB7390(a2 + 96, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276037140(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275FB75E0(a2 + 96, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276037230(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = sub_275FB1588(a3, &v22);
  result = v22;
  if (v5)
  {
    if (!v22)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (*v22 != 10)
  {
LABEL_15:
    v14 = sub_275FB046C(*(*a1 + 40));
    *(a1 + 48) = v14;
LABEL_21:
    result = sub_275FB0C74(v14, v22, a3);
    v22 = result;
    if (result)
    {
      sub_275FB7440(a1);
      return v22;
    }

    return result;
  }

  v7 = *(v22 + 1);
  if (*(v22 + 1) < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback((v22 + 1), v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v9;
  }

  else
  {
    v8 = (v22 + 2);
  }

  result = sub_275FB74F8(a3, v8, v7, a1 + 16);
  v22 = result;
  if (!result)
  {
    return result;
  }

  if (sub_275FB1588(a3, &v22))
  {
    if (!v22)
    {
      return 0;
    }

LABEL_17:
    v15 = sub_275FB046C(*(*a1 + 40));
    *(a1 + 48) = v15;
LABEL_18:
    *(v15 + 32) |= 1u;
    v16 = google::protobuf::internal::ArenaStringPtr::Mutable();
    v17 = v16;
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v18 = *(a1 + 16);
    *(v17 + 16) = *(a1 + 32);
    *v17 = v18;
    *(a1 + 39) = 0;
    *(a1 + 16) = 0;
    v14 = *(a1 + 48);
    goto LABEL_21;
  }

  if (*v22 != 18)
  {
    goto LABEL_17;
  }

  v10 = *(a1 + 8);
  v11 = v10->n128_u64[0];
  sub_275FB3464(v10, (a1 + 16), v23);
  v12 = LODWORD(v23[0]) + 24;
  *(a1 + 40) = v23[0] + 24;
  if (v11 == **(a1 + 8))
  {
    goto LABEL_17;
  }

  v22 = sub_276036ED0(a3, v12, (v22 + 1));
  if (!v22)
  {
    sub_275FB407C(*(a1 + 8), a1 + 16);
    return 0;
  }

  v13 = sub_275FB1588(a3, &v22);
  result = v22;
  if ((v13 & 1) == 0 && v22)
  {
    v19 = sub_275FB046C(*(*a1 + 40));
    *(a1 + 48) = v19;
    v20 = *(a1 + 40);
    v21 = sub_275FB457C(v19);
    sub_275FB73F0(v20, v21);
    sub_275FB407C(*(a1 + 8), a1 + 16);
    v15 = *(a1 + 48);
    goto LABEL_18;
  }

  return result;
}

google::protobuf::internal *sub_276037454(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = sub_275FB1588(a3, &v22);
  result = v22;
  if (v5)
  {
    if (!v22)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (*v22 != 10)
  {
LABEL_15:
    v14 = sub_275FB04F0(*(*a1 + 40));
    *(a1 + 48) = v14;
LABEL_21:
    result = sub_275FB1254(v14, v22, a3);
    v22 = result;
    if (result)
    {
      sub_275FB7640(a1);
      return v22;
    }

    return result;
  }

  v7 = *(v22 + 1);
  if (*(v22 + 1) < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback((v22 + 1), v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v9;
  }

  else
  {
    v8 = (v22 + 2);
  }

  result = sub_275FB74F8(a3, v8, v7, a1 + 16);
  v22 = result;
  if (!result)
  {
    return result;
  }

  if (sub_275FB1588(a3, &v22))
  {
    if (!v22)
    {
      return 0;
    }

LABEL_17:
    v15 = sub_275FB04F0(*(*a1 + 40));
    *(a1 + 48) = v15;
LABEL_18:
    *(v15 + 32) |= 1u;
    v16 = google::protobuf::internal::ArenaStringPtr::Mutable();
    v17 = v16;
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v18 = *(a1 + 16);
    *(v17 + 16) = *(a1 + 32);
    *v17 = v18;
    *(a1 + 39) = 0;
    *(a1 + 16) = 0;
    v14 = *(a1 + 48);
    goto LABEL_21;
  }

  if (*v22 != 18)
  {
    goto LABEL_17;
  }

  v10 = *(a1 + 8);
  v11 = v10->n128_u64[0];
  sub_275FB3464(v10, (a1 + 16), v23);
  v12 = LODWORD(v23[0]) + 24;
  *(a1 + 40) = v23[0] + 24;
  if (v11 == **(a1 + 8))
  {
    goto LABEL_17;
  }

  v22 = sub_276036ED0(a3, v12, (v22 + 1));
  if (!v22)
  {
    sub_275FB407C(*(a1 + 8), a1 + 16);
    return 0;
  }

  v13 = sub_275FB1588(a3, &v22);
  result = v22;
  if ((v13 & 1) == 0 && v22)
  {
    v19 = sub_275FB04F0(*(*a1 + 40));
    *(a1 + 48) = v19;
    v20 = *(a1 + 40);
    v21 = sub_275FB457C(v19);
    sub_275FB73F0(v20, v21);
    sub_275FB407C(*(a1 + 8), a1 + 16);
    v15 = *(a1 + 48);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_276037678()
{
  sub_275FBABB0();
  if (v1)
  {
    v2 = sub_275FBABBC(v1);
  }

  else
  {
    v2 = sub_275FB5524(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_2760376B4()
{
  sub_275FBABB0();
  if (v1)
  {
    v2 = sub_275FBABBC(v1);
  }

  else
  {
    v2 = sub_275FB5524(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_2760376F0()
{
  sub_275FBABB0();
  if (v1)
  {
    v2 = sub_275FBABBC(v1);
  }

  else
  {
    v2 = sub_275FB5524(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_27603772C()
{
  sub_275FBABB0();
  if (v1)
  {
    v2 = sub_275FBABBC(v1);
  }

  else
  {
    v2 = sub_275FB5524(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_276037768()
{
  sub_275FBABB0();
  if (v1)
  {
    v2 = sub_275FBABBC(v1);
  }

  else
  {
    v2 = sub_275FB5524(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_2760377A4()
{
  sub_275FBABB0();
  if (v1)
  {
    v2 = sub_275FBABBC(v1);
  }

  else
  {
    v2 = sub_275FB5524(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_2760377E0()
{
  sub_275FBABB0();
  if (v1)
  {
    v2 = sub_275FBABBC(v1);
  }

  else
  {
    v2 = sub_275FB5524(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_27603781C()
{
  sub_275FBABB0();
  if (v1)
  {
    v2 = sub_275FBABBC(v1);
  }

  else
  {
    v2 = sub_275FB5524(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

void sub_276038454()
{
  if (__cxa_guard_acquire(&qword_280A404F0))
  {
    *&qword_280A404F8 = *MEMORY[0x277CBF3A8];

    __cxa_guard_release(&qword_280A404F0);
  }
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t __C()
{
  return MEMORY[0x2821EB470]();
}

{
  return MEMORY[0x2821E9630]();
}

{
  return MEMORY[0x2821E96F8]();
}

uint64_t String()
{
  return MEMORY[0x2821EB0D0]();
}

{
  return MEMORY[0x2821EB0D8]();
}

{
  return MEMORY[0x2821EB0E0]();
}

uint64_t google::protobuf::internal::ArenaStringPtr::Set()
{
  return MEMORY[0x2821EAD00]();
}

{
  return MEMORY[0x2821EAD08]();
}

{
  return MEMORY[0x2821EAD10]();
}

uint64_t google::protobuf::internal::UnknownFieldParse()
{
  return MEMORY[0x2821EAD68]();
}

{
  return MEMORY[0x2821EAD70]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

uint64_t operator++()
{
  return MEMORY[0x2821EBD20]();
}

{
  return MEMORY[0x2821EBD28]();
}

{
  return MEMORY[0x2821EBD30]();
}