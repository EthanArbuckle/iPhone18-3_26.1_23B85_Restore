@interface TPPaginationState
- (BOOL)isInvalid;
- (BOOL)isPaginationComplete;
- (BOOL)isPaginationCompleteThroughDocumentPageIndex:(unint64_t)index;
- (BOOL)isPaginationCompleteUpToDocumentPageIndex:(unint64_t)index;
- (BOOL)onLastSection;
- (NSArray)sectionHints;
- (NSString)description;
- (TPPageIndexPath)pageIndexPath;
- (TPSection)section;
- (TPSectionHint)sectionHint;
- (_NSRange)footnoteRangeInBodyTextRange:(_NSRange)range;
- (_NSRange)sectionCharRange;
- (_TtC14PagesQuicklook17TPPaginationState)init;
- (id)copyForCaching;
- (id)copyWithZone:(void *)zone;
- (id)pageHintForPageIndex:(unint64_t)index;
- (id)pageIndexPathForPageIndex:(unint64_t)index;
- (unint64_t)bodyCharIndex;
- (unint64_t)documentPageIndex;
- (unint64_t)footnoteIndex;
- (unint64_t)lastLaidOutDocumentPageIndex;
- (unint64_t)lastLaidOutSectionIndex;
- (unint64_t)pageHintCount;
- (void)addSectionHint:(id)hint;
- (void)advancePageIndex;
- (void)advanceSectionIndex;
- (void)backUpToPageIndexPath:(id)path documentPageIndex:(unint64_t)index;
- (void)bodyLayoutState;
- (void)removeAllSectionHints;
- (void)restartPaginationFromFirstPage;
- (void)restartPaginationFromPageIndexPath:(id)path documentPageIndex:(unint64_t)index;
- (void)setBodyLayoutState:(void *)state;
- (void)setIsInvalid:(BOOL)invalid;
- (void)setPageIndexPath:(id)path;
- (void)setSectionHints:(id)hints;
- (void)trimSectionHintsFromIndex:(unint64_t)index;
@end

@implementation TPPaginationState

- (BOOL)isInvalid
{
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_isInvalid;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsInvalid:(BOOL)invalid
{
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_isInvalid;
  swift_beginAccess();
  *(&self->super.isa + v5) = invalid;
}

- (TPPageIndexPath)pageIndexPath
{
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPageIndexPath:(id)path
{
  swift_getKeyPath();
  swift_getKeyPath();
  pathCopy = path;
  selfCopy = self;
  sub_2760384C4();
}

- (unint64_t)documentPageIndex
{
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (unint64_t)lastLaidOutSectionIndex
{
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__lastLaidOutSectionIndex;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)bodyLayoutState
{
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__bodyLayoutState;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBodyLayoutState:(void *)state
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_2760384C4();
}

- (unint64_t)bodyCharIndex
{
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__bodyCharIndex;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (unint64_t)footnoteIndex
{
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__footnoteIndex;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (NSArray)sectionHints
{
  swift_beginAccess();
  sub_27602FD90(0, &qword_280A40160);

  v2 = sub_276038544();

  return v2;
}

- (void)setSectionHints:(id)hints
{
  sub_27602FD90(0, &qword_280A40160);
  sub_276038554();
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_2760384C4();
}

- (unint64_t)pageHintCount
{
  selfCopy = self;
  v3 = TPPaginationState.pageHintCount.getter();

  return v3;
}

- (unint64_t)lastLaidOutDocumentPageIndex
{
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  if (v4)
  {
    return v4 - 1;
  }

  result = sub_2760384B4();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

- (TPSection)section
{
  selfCopy = self;
  v3 = TPPaginationState.section.getter();

  return v3;
}

- (TPSectionHint)sectionHint
{
  selfCopy = self;
  v3 = TPPaginationState.sectionHint.getter();

  return v3;
}

- (_NSRange)sectionCharRange
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage);
  v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v5 = sub_275FF8CB8(v3, *(&self->super.isa + v4));
  result.length = v6;
  result.location = v5;
  return result;
}

- (BOOL)onLastSection
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage);
  v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  return sub_275FF8E30(v3, *(&self->super.isa + v4));
}

- (BOOL)isPaginationComplete
{
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  selfCopy = self;
  sectionIndex = [v4 sectionIndex];
  v7 = sub_275FF8F7C(*(&selfCopy->super.isa + OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage));

  return v7 < sectionIndex;
}

- (NSString)description
{
  selfCopy = self;
  TPPaginationState.description.getter();

  v3 = sub_276038504();

  return v3;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  TPPaginationState.copy(with:)(v6);

  sub_27602FD00(v6, v6[3]);
  v4 = sub_2760387B4();
  sub_27602FD44(v6);
  return v4;
}

- (id)copyForCaching
{
  selfCopy = self;
  TPPaginationState.copyForCaching()(v5);

  sub_27602FD00(v5, v5[3]);
  v3 = sub_2760387B4();
  sub_27602FD44(v5);
  return v3;
}

- (BOOL)isPaginationCompleteThroughDocumentPageIndex:(unint64_t)index
{
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
  swift_beginAccess();
  return *(&self->super.isa + v5) > index;
}

- (BOOL)isPaginationCompleteUpToDocumentPageIndex:(unint64_t)index
{
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
  swift_beginAccess();
  return *(&self->super.isa + v5) >= index;
}

- (_NSRange)footnoteRangeInBodyTextRange:(_NSRange)range
{
  footnoteRangeForTextRange_ = [*(&self->super.isa + OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage) footnoteRangeForTextRange_];
  result.length = v4;
  result.location = footnoteRangeForTextRange_;
  return result;
}

- (void)restartPaginationFromPageIndexPath:(id)path documentPageIndex:(unint64_t)index
{
  pathCopy = path;
  v10._pageIndex = self;
  pageIndex = v10._pageIndex;
  v10.super.isa = pathCopy;
  v10._sectionIndex = index;
  TPPaginationState.restartPagination(fromPageIndexPath:documentPageIndex:)(v10, v7);
}

- (void)restartPaginationFromFirstPage
{
  v3 = objc_allocWithZone(TPPageIndexPath);
  selfCopy = self;
  v8.super.isa = [v3 initWithSectionIndex:0 pageIndex:0];
  isa = v8.super.isa;
  v8._sectionIndex = 0;
  TPPaginationState.restartPagination(fromPageIndexPath:documentPageIndex:)(v8, v5);
}

- (void)backUpToPageIndexPath:(id)path documentPageIndex:(unint64_t)index
{
  pathCopy = path;
  v10._pageIndex = self;
  pageIndex = v10._pageIndex;
  v10.super.isa = pathCopy;
  v10._sectionIndex = index;
  TPPaginationState.backUp(to:documentPageIndex:)(v10, v7);
}

- (void)advancePageIndex
{
  selfCopy = self;
  TPPaginationState.advancePageIndex()();
}

- (void)advanceSectionIndex
{
  selfCopy = self;
  TPPaginationState.advanceSectionIndex()();
}

- (id)pageIndexPathForPageIndex:(unint64_t)index
{
  selfCopy = self;
  v5 = TPPaginationState.pageIndexPath(forPageIndex:)(index);

  return v5;
}

- (id)pageHintForPageIndex:(unint64_t)index
{
  selfCopy = self;
  TPPaginationState.pageHint(forPageIndex:)(v5, index);
  v7 = v6;

  return v7;
}

- (void)addSectionHint:(id)hint
{
  hintCopy = hint;
  v7._pageHints = self;
  pageHints = v7._pageHints;
  v7.super.isa = hintCopy;
  TPPaginationState.addSectionHint(_:)(v7);
}

- (void)removeAllSectionHints
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_2760384C4();
}

- (void)trimSectionHintsFromIndex:(unint64_t)index
{
  selfCopy = self;
  TPPaginationState.trimSectionHints(fromIndex:)(index);
}

- (_TtC14PagesQuicklook17TPPaginationState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end