@interface TPPageLayoutCache
- (NSString)description;
- (id)pageLayouts;
- (id)pageLayoutsFromStartIndex:(unint64_t)index;
- (id)pageLayoutsFromStartIndex:(unint64_t)index toEndIndex:(unint64_t)endIndex;
- (id)pageLayoutsInRange:(_NSRange)range;
- (id)pageLayoutsUpToPageIndex:(unint64_t)index;
- (id)pageLayoutsWithPageIndex:(unint64_t)index;
- (void)coalesce;
- (void)enqueueInsertion:(id)insertion;
- (void)enqueueRemoval:(id)removal;
@end

@implementation TPPageLayoutCache

- (void)enqueueInsertion:(id)insertion
{
  insertionCopy = insertion;
  selfCopy = self;
  sub_27602FEAC(insertionCopy);
}

- (void)enqueueRemoval:(id)removal
{
  removalCopy = removal;
  selfCopy = self;
  sub_2760301B4(removalCopy);
}

- (void)coalesce
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC14PagesQuicklook17TPPageLayoutCache_accessQueue);
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2760342F4;
  *(v5 + 24) = v4;
  v8[4] = sub_2760344E4;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_276030124;
  v8[3] = &unk_288501560;
  v6 = _Block_copy(v8);
  selfCopy = self;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (id)pageLayouts
{
  swift_beginAccess();
  selfCopy = self;

  v7 = sub_276031D10(v4);
  sub_276031C94(&v7);

  sub_27602FD90(0, &qword_280A401A0);
  v5 = sub_276038544();

  return v5;
}

- (id)pageLayoutsWithPageIndex:(unint64_t)index
{
  if (index == -1)
  {
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x28223BE20]();
    sub_27602B4C8(&qword_280A40190);
    sub_2760385D4();

    sub_27602FD90(0, &qword_280A401A0);
    v5 = sub_276038544();

    return v5;
  }

  return self;
}

- (id)pageLayoutsUpToPageIndex:(unint64_t)index
{
  selfCopy = self;
  sub_27602B4C8(&qword_280A40190);
  sub_2760385D4();

  sub_27602FD90(0, &qword_280A401A0);
  v4 = sub_276038544();

  return v4;
}

- (id)pageLayoutsFromStartIndex:(unint64_t)index
{
  selfCopy = self;
  sub_27602B4C8(&qword_280A40190);
  sub_2760385D4();

  sub_27602FD90(0, &qword_280A401A0);
  v4 = sub_276038544();

  return v4;
}

- (id)pageLayoutsFromStartIndex:(unint64_t)index toEndIndex:(unint64_t)endIndex
{
  if (endIndex < index)
  {
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x28223BE20]();
    sub_27602B4C8(&qword_280A40190);
    sub_2760385D4();

    sub_27602FD90(0, &qword_280A401A0);
    v6 = sub_276038544();

    return v6;
  }

  return self;
}

- (id)pageLayoutsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  sub_276031158(location, length);

  sub_27602FD90(0, &qword_280A401A0);
  v6 = sub_276038544();

  return v6;
}

- (NSString)description
{
  selfCopy = self;
  TPPageLayoutCache.description.getter();

  v3 = sub_276038504();

  return v3;
}

@end