@interface RUISwiftUIContainerElement
+ (BOOL)supportsElementNamed:(id)named;
- (_TtC8RemoteUI26RUISwiftUIContainerElement)init;
- (_TtC8RemoteUI26RUISwiftUIContainerElement)initWithAttributes:(id)attributes parent:(id)parent;
- (_TtC8RemoteUI26RUISwiftUIContainerElement)initWithElement:(id)element parent:(id)parent;
- (id)subElementWithID:(id)d;
- (id)view;
- (void)loadElement;
- (void)loadElementIfNeeded;
- (void)prepareToPreload;
- (void)setDidLayoutSubviewsHandler:(id)handler;
- (void)setObjectModel:(id)model;
- (void)setWillLayoutSubviewsHandler:(id)handler;
@end

@implementation RUISwiftUIContainerElement

- (_TtC8RemoteUI26RUISwiftUIContainerElement)initWithElement:(id)element parent:(id)parent
{
  elementCopy = element;
  parentCopy = parent;
  RUISwiftUIContainerElement.init(element:parent:)(elementCopy, parent);
  return result;
}

+ (BOOL)supportsElementNamed:(id)named
{
  v3 = sub_21BA87CBC();
  v5 = v4;
  v6 = sub_21B9DDCB8();
  v7 = *((*MEMORY[0x277D85000] & **v6) + 0x78);
  v8 = *v6;
  LOBYTE(v3) = v7(v3, v5);

  return v3 & 1;
}

- (void)setWillLayoutSubviewsHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_21B946DA8(v4);
  sub_21B946D98(v7);
  v9 = *(selfCopy + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_container);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = *((*MEMORY[0x277D85000] & *v9) + qword_27CDB2188 + 96);

  v11(sub_21BA06AA8, v10);

  sub_21B946D98(v4);
}

- (void)setDidLayoutSubviewsHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_21B946DA8(v4);
  sub_21B946D98(v7);
  v9 = *(selfCopy + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_container);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = *((*MEMORY[0x277D85000] & *v9) + qword_27CDB2188 + 120);

  v11(sub_21BA06AAC, v10);

  sub_21B946D98(v4);
}

- (id)subElementWithID:(id)d
{
  if (d)
  {
    v4 = sub_21BA87CBC();
    v6 = v5;
    v7 = *(**(self + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_childElementDirectory) + 120);
    selfCopy = self;
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
  selfCopy = self;
  sub_21B9FED18();
}

- (void)loadElement
{
  v2 = *((*MEMORY[0x277D85000] & **(self + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_container)) + qword_27CDB2188 + 192);
  selfCopy = self;
  v2();
}

- (void)loadElementIfNeeded
{
  v2 = *((*MEMORY[0x277D85000] & **(self + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_container)) + qword_27CDB2188 + 184);
  selfCopy = self;
  v2();
}

- (_TtC8RemoteUI26RUISwiftUIContainerElement)initWithAttributes:(id)attributes parent:(id)parent
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
  view = [*(self + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_container) view];

  return view;
}

- (void)setObjectModel:(id)model
{
  v5 = *((*MEMORY[0x277D85000] & *self) + 0x80);
  modelCopy = model;
  selfCopy = self;
  v5(model);
}

@end