@interface RUISwiftUIContainerElement
+ (BOOL)supportsElementNamed:(id)a3;
- (_TtC8RemoteUI26RUISwiftUIContainerElement)init;
- (_TtC8RemoteUI26RUISwiftUIContainerElement)initWithAttributes:(id)a3 parent:(id)a4;
- (_TtC8RemoteUI26RUISwiftUIContainerElement)initWithElement:(id)a3 parent:(id)a4;
- (id)subElementWithID:(id)a3;
- (id)view;
- (void)loadElement;
- (void)loadElementIfNeeded;
- (void)prepareToPreload;
- (void)setDidLayoutSubviewsHandler:(id)a3;
- (void)setObjectModel:(id)a3;
- (void)setWillLayoutSubviewsHandler:(id)a3;
@end

@implementation RUISwiftUIContainerElement

- (_TtC8RemoteUI26RUISwiftUIContainerElement)initWithElement:(id)a3 parent:(id)a4
{
  v5 = a3;
  v6 = a4;
  RUISwiftUIContainerElement.init(element:parent:)(v5, a4);
  return result;
}

+ (BOOL)supportsElementNamed:(id)a3
{
  v3 = sub_21BA87CBC();
  v5 = v4;
  v6 = sub_21B9DDCB8();
  v7 = *((*MEMORY[0x277D85000] & **v6) + 0x78);
  v8 = *v6;
  LOBYTE(v3) = v7(v3, v5);

  return v3 & 1;
}

- (void)setWillLayoutSubviewsHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_21BA06ABC;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_willLayoutSubviewsHandler);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_21B946DA8(v4);
  sub_21B946D98(v7);
  v9 = *(v8 + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_container);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = *((*MEMORY[0x277D85000] & *v9) + qword_27CDB2188 + 96);

  v11(sub_21BA06AA8, v10);

  sub_21B946D98(v4);
}

- (void)setDidLayoutSubviewsHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_21BA051D8;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_didLayoutSubviewsHandler);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_21B946DA8(v4);
  sub_21B946D98(v7);
  v9 = *(v8 + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_container);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = *((*MEMORY[0x277D85000] & *v9) + qword_27CDB2188 + 120);

  v11(sub_21BA06AAC, v10);

  sub_21B946D98(v4);
}

- (id)subElementWithID:(id)a3
{
  if (a3)
  {
    v4 = sub_21BA87CBC();
    v6 = v5;
    v7 = *(**(self + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_childElementDirectory) + 120);
    v8 = self;
    v9 = v7(v4, v6);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)prepareToPreload
{
  v2 = self;
  sub_21B9FED18();
}

- (void)loadElement
{
  v2 = *((*MEMORY[0x277D85000] & **(self + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_container)) + qword_27CDB2188 + 192);
  v3 = self;
  v2();
}

- (void)loadElementIfNeeded
{
  v2 = *((*MEMORY[0x277D85000] & **(self + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_container)) + qword_27CDB2188 + 184);
  v3 = self;
  v2();
}

- (_TtC8RemoteUI26RUISwiftUIContainerElement)initWithAttributes:(id)a3 parent:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8RemoteUI26RUISwiftUIContainerElement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)view
{
  v2 = [*(self + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_container) view];

  return v2;
}

- (void)setObjectModel:(id)a3
{
  v5 = *((*MEMORY[0x277D85000] & *self) + 0x80);
  v6 = a3;
  v7 = self;
  v5(a3);
}

@end