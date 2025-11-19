@interface TPPageLayoutCache
- (NSString)description;
- (id)pageLayouts;
- (id)pageLayoutsFromStartIndex:(unint64_t)a3;
- (id)pageLayoutsFromStartIndex:(unint64_t)a3 toEndIndex:(unint64_t)a4;
- (id)pageLayoutsInRange:(_NSRange)a3;
- (id)pageLayoutsUpToPageIndex:(unint64_t)a3;
- (id)pageLayoutsWithPageIndex:(unint64_t)a3;
- (void)coalesce;
- (void)enqueueInsertion:(id)a3;
- (void)enqueueRemoval:(id)a3;
@end

@implementation TPPageLayoutCache

- (void)enqueueInsertion:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27602FEAC(v4);
}

- (void)enqueueRemoval:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2760301B4(v4);
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
  v7 = self;

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
  v3 = self;

  v7 = sub_276031D10(v4);
  sub_276031C94(&v7);

  sub_27602FD90(0, &qword_280A401A0);
  v5 = sub_276038544();

  return v5;
}

- (id)pageLayoutsWithPageIndex:(unint64_t)a3
{
  if (a3 == -1)
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

- (id)pageLayoutsUpToPageIndex:(unint64_t)a3
{
  v3 = self;
  sub_27602B4C8(&qword_280A40190);
  sub_2760385D4();

  sub_27602FD90(0, &qword_280A401A0);
  v4 = sub_276038544();

  return v4;
}

- (id)pageLayoutsFromStartIndex:(unint64_t)a3
{
  v3 = self;
  sub_27602B4C8(&qword_280A40190);
  sub_2760385D4();

  sub_27602FD90(0, &qword_280A401A0);
  v4 = sub_276038544();

  return v4;
}

- (id)pageLayoutsFromStartIndex:(unint64_t)a3 toEndIndex:(unint64_t)a4
{
  if (a4 < a3)
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

- (id)pageLayoutsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = self;
  sub_276031158(location, length);

  sub_27602FD90(0, &qword_280A401A0);
  v6 = sub_276038544();

  return v6;
}

- (NSString)description
{
  v2 = self;
  TPPageLayoutCache.description.getter();

  v3 = sub_276038504();

  return v3;
}

@end