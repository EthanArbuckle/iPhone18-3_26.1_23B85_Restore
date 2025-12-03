@interface SiriSharedUISmartDialogContainer
- (BOOL)allowDrillingInAndOut;
- (BOOL)containsSmartDialogSnippetWithViewId:(id)id;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIViewController)popoverViewController;
- (_TtC12SiriSharedUI32SiriSharedUISmartDialogContainer)init;
- (_TtC12SiriSharedUI32SiriSharedUISmartDialogContainer)initWithDelegate:(id)delegate;
- (id)view;
- (void)reloadView;
- (void)setAllowDrillingInAndOut:(BOOL)out;
- (void)setInteractionDelegate:(id)delegate;
- (void)setPopoverViewController:(id)controller;
- (void)setSmartDialogWidth:(double)width;
- (void)triggerAnimation;
- (void)triggerSmartDialogAnimationWithDelay:(double)delay;
- (void)updateBodyWithText:(id)text;
- (void)updateHeaderWithText:(id)text color:(id)color;
- (void)updateSmartDialogSnippetWithData:(id)data;
- (void)updateSnippetSizes;
- (void)updateWithActiveTranscriptItems:(id)items;
- (void)updateWithAttribution:(id)attribution;
- (void)updateWithBackgroundView:(id)view;
- (void)updateWithCappedFrame:(CGRect)frame;
- (void)updateWithCornerRadius:(double)radius;
- (void)updateWithMaxSnippetWidth:(double)width;
- (void)updateWithSmartDialogCard:(id)card;
- (void)updateWithSmartDialogPluginView:(id)view;
- (void)updateWithSnippetFrameInGlobal:(id)global;
@end

@implementation SiriSharedUISmartDialogContainer

- (UIViewController)popoverViewController
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setPopoverViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_21E46480C(controller);
}

- (BOOL)allowDrillingInAndOut
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_allowDrillingInAndOut;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowDrillingInAndOut:(BOOL)out
{
  selfCopy = self;
  sub_21E464AE4(out);
}

- (_TtC12SiriSharedUI32SiriSharedUISmartDialogContainer)initWithDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  v3 = sub_21E4693E4();
  swift_unknownObjectRelease();
  return v3;
}

- (void)reloadView
{
  v2 = qword_280C14550;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = sub_21E4DBCC8();
  __swift_project_value_buffer(v3, qword_280C14558);
  v4 = sub_21E4DD1F8();
  sub_21E45D81C(v4, 0, 0x695664616F6C6572, 0xEC00000029287765, 0xD000000000000025, 0x800000021E4ED8F0);
  type metadata accessor for SmartDialogData();
  sub_21E469AD4();
  sub_21E4DBD78();
  sub_21E4DBDB8();

  sub_21E465130();
}

- (void)triggerAnimation
{
  selfCopy = self;
  sub_21E465130();
}

- (id)view
{
  v3 = (self + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_hostingController);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_0Tm(v3, v4);
  v6 = *(v5 + 16);
  selfCopy = self;
  v8 = v6(v4, v5);

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = sub_21E464C84();
  v7 = 0.0;
  v8 = 0.0;
  if (!v6)
  {
    v9 = *(self + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_hostingController + 24);
    v10 = *(self + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_hostingController + 32);
    __swift_project_boxed_opaque_existential_0Tm((self + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_hostingController), v9);
    v11 = *(v10 + 8);
    selfCopy = self;
    v13 = v11(v9, v10, width, height);
    v15 = v14;

    v8 = v15;
    v7 = v13;
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (void)updateHeaderWithText:(id)text color:(id)color
{
  v6 = sub_21E4DCF78();
  v8 = v7;
  colorCopy = color;
  selfCopy = self;
  sub_21E46556C(v6, v8, colorCopy);
}

- (void)updateBodyWithText:(id)text
{
  v4 = sub_21E4DCF78();
  v6 = v5;
  selfCopy = self;
  sub_21E4658BC(v4, v6);
}

- (void)updateWithSmartDialogCard:(id)card
{
  cardCopy = card;
  selfCopy = self;
  sub_21E465BB8(cardCopy);
}

- (void)updateWithActiveTranscriptItems:(id)items
{
  sub_21E43F008(0, &qword_280C14128);
  v4 = sub_21E4DD088();
  selfCopy = self;
  sub_21E465EC8(v4);
}

- (void)updateSnippetSizes
{
  selfCopy = self;
  sub_21E466250();
}

- (void)updateWithSnippetFrameInGlobal:(id)global
{
  globalCopy = global;
  selfCopy = self;
  sub_21E4667A8(global);
}

- (void)updateWithBackgroundView:(id)view
{
  v4 = qword_280C14550;
  viewCopy = view;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v7 = sub_21E4DBCC8();
  __swift_project_value_buffer(v7, qword_280C14558);
  v8 = sub_21E4DD1F8();
  sub_21E45D81C(v8, 0, 0xD000000000000017, 0x800000021E4EDA90, 0xD000000000000021, 0x800000021E4EDAB0);
  v9 = *(selfCopy + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  v10 = *(v9 + 120);
  *(v9 + 120) = viewCopy;
}

- (void)updateWithCornerRadius:(double)radius
{
  v3 = *(self + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  if (*(v3 + 160) != radius)
  {
    *(v3 + 160) = radius;
  }
}

- (void)updateWithSmartDialogPluginView:(id)view
{
  v4 = qword_280C14550;
  viewCopy = view;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v7 = sub_21E4DBCC8();
  __swift_project_value_buffer(v7, qword_280C14558);
  v8 = sub_21E4DD1F8();
  sub_21E45D81C(v8, 0, 0xD00000000000001ELL, 0x800000021E4EDAE0, 0xD000000000000028, 0x800000021E4EDB00);
  v9 = *(selfCopy + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  v10 = *(v9 + 88);
  *(v9 + 88) = viewCopy;
}

- (void)updateWithAttribution:(id)attribution
{
  v4 = qword_280C14550;
  attributionCopy = attribution;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v7 = sub_21E4DBCC8();
  __swift_project_value_buffer(v7, qword_280C14558);
  v8 = sub_21E4DD1F8();
  sub_21E45D81C(v8, 0, 0xD000000000000014, 0x800000021E4EDB30, 0xD00000000000001ELL, 0x800000021E4EDB50);
  v9 = *(selfCopy + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  v10 = *(v9 + 96);
  *(v9 + 96) = attributionCopy;
}

- (void)updateWithCappedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = qword_280C14550;
  selfCopy = self;
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_21E4DBCC8();
  __swift_project_value_buffer(v8, qword_280C14558);
  v9 = sub_21E4DD1F8();
  sub_21E45D81C(v9, 0, 0xD000000000000014, 0x800000021E4EDB70, 0xD000000000000018, 0x800000021E4EDB90);
  v10 = *(selfCopy + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  *(v10 + 248) = x;
  *(v10 + 256) = y;
  *(v10 + 264) = width;
  *(v10 + 272) = height;
  *(v10 + 280) = 0;
}

- (void)updateWithMaxSnippetWidth:(double)width
{
  v4 = qword_280C14550;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_21E4DBCC8();
  __swift_project_value_buffer(v5, qword_280C14558);
  v6 = sub_21E4DD1F8();
  sub_21E45D81C(v6, 0, 0xD000000000000018, 0x800000021E4EDBB0, 0xD000000000000018, 0x800000021E4EDB90);
  *(*(selfCopy + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData) + 288) = width;
}

- (void)setInteractionDelegate:(id)delegate
{
  if (*(self + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogInteractionManager))
  {
    swift_unknownObjectWeakAssign();
  }
}

- (void)setSmartDialogWidth:(double)width
{
  selfCopy = self;
  sub_21E467ADC(width);
}

- (void)triggerSmartDialogAnimationWithDelay:(double)delay
{
  selfCopy = self;
  sub_21E467DB0(delay);
}

- (BOOL)containsSmartDialogSnippetWithViewId:(id)id
{
  v4 = sub_21E4DCF78();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_21E4683FC(v4, v6);

  return v4 & 1;
}

- (void)updateSmartDialogSnippetWithData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  v5 = sub_21E4DB5B8();
  v7 = v6;

  sub_21E468518();
  sub_21E424920(v5, v7);
}

- (_TtC12SiriSharedUI32SiriSharedUISmartDialogContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end