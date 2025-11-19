@interface SiriSharedUISmartDialogContainer
- (BOOL)allowDrillingInAndOut;
- (BOOL)containsSmartDialogSnippetWithViewId:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIViewController)popoverViewController;
- (_TtC12SiriSharedUI32SiriSharedUISmartDialogContainer)init;
- (_TtC12SiriSharedUI32SiriSharedUISmartDialogContainer)initWithDelegate:(id)a3;
- (id)view;
- (void)reloadView;
- (void)setAllowDrillingInAndOut:(BOOL)a3;
- (void)setInteractionDelegate:(id)a3;
- (void)setPopoverViewController:(id)a3;
- (void)setSmartDialogWidth:(double)a3;
- (void)triggerAnimation;
- (void)triggerSmartDialogAnimationWithDelay:(double)a3;
- (void)updateBodyWithText:(id)a3;
- (void)updateHeaderWithText:(id)a3 color:(id)a4;
- (void)updateSmartDialogSnippetWithData:(id)a3;
- (void)updateSnippetSizes;
- (void)updateWithActiveTranscriptItems:(id)a3;
- (void)updateWithAttribution:(id)a3;
- (void)updateWithBackgroundView:(id)a3;
- (void)updateWithCappedFrame:(CGRect)a3;
- (void)updateWithCornerRadius:(double)a3;
- (void)updateWithMaxSnippetWidth:(double)a3;
- (void)updateWithSmartDialogCard:(id)a3;
- (void)updateWithSmartDialogPluginView:(id)a3;
- (void)updateWithSnippetFrameInGlobal:(id)a3;
@end

@implementation SiriSharedUISmartDialogContainer

- (UIViewController)popoverViewController
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setPopoverViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_21E46480C(a3);
}

- (BOOL)allowDrillingInAndOut
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_allowDrillingInAndOut;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowDrillingInAndOut:(BOOL)a3
{
  v4 = self;
  sub_21E464AE4(a3);
}

- (_TtC12SiriSharedUI32SiriSharedUISmartDialogContainer)initWithDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v3 = sub_21E4693E4();
  swift_unknownObjectRelease();
  return v3;
}

- (void)reloadView
{
  v2 = qword_280C14550;
  v5 = self;
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
  v2 = self;
  sub_21E465130();
}

- (id)view
{
  v3 = (self + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_hostingController);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_0Tm(v3, v4);
  v6 = *(v5 + 16);
  v7 = self;
  v8 = v6(v4, v5);

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = sub_21E464C84();
  v7 = 0.0;
  v8 = 0.0;
  if (!v6)
  {
    v9 = *(self + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_hostingController + 24);
    v10 = *(self + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_hostingController + 32);
    __swift_project_boxed_opaque_existential_0Tm((self + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_hostingController), v9);
    v11 = *(v10 + 8);
    v12 = self;
    v13 = v11(v9, v10, width, height);
    v15 = v14;

    v8 = v15;
    v7 = v13;
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (void)updateHeaderWithText:(id)a3 color:(id)a4
{
  v6 = sub_21E4DCF78();
  v8 = v7;
  v9 = a4;
  v10 = self;
  sub_21E46556C(v6, v8, v9);
}

- (void)updateBodyWithText:(id)a3
{
  v4 = sub_21E4DCF78();
  v6 = v5;
  v7 = self;
  sub_21E4658BC(v4, v6);
}

- (void)updateWithSmartDialogCard:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21E465BB8(v4);
}

- (void)updateWithActiveTranscriptItems:(id)a3
{
  sub_21E43F008(0, &qword_280C14128);
  v4 = sub_21E4DD088();
  v5 = self;
  sub_21E465EC8(v4);
}

- (void)updateSnippetSizes
{
  v2 = self;
  sub_21E466250();
}

- (void)updateWithSnippetFrameInGlobal:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_21E4667A8(a3);
}

- (void)updateWithBackgroundView:(id)a3
{
  v4 = qword_280C14550;
  v5 = a3;
  v6 = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v7 = sub_21E4DBCC8();
  __swift_project_value_buffer(v7, qword_280C14558);
  v8 = sub_21E4DD1F8();
  sub_21E45D81C(v8, 0, 0xD000000000000017, 0x800000021E4EDA90, 0xD000000000000021, 0x800000021E4EDAB0);
  v9 = *(v6 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  v10 = *(v9 + 120);
  *(v9 + 120) = v5;
}

- (void)updateWithCornerRadius:(double)a3
{
  v3 = *(self + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  if (*(v3 + 160) != a3)
  {
    *(v3 + 160) = a3;
  }
}

- (void)updateWithSmartDialogPluginView:(id)a3
{
  v4 = qword_280C14550;
  v5 = a3;
  v6 = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v7 = sub_21E4DBCC8();
  __swift_project_value_buffer(v7, qword_280C14558);
  v8 = sub_21E4DD1F8();
  sub_21E45D81C(v8, 0, 0xD00000000000001ELL, 0x800000021E4EDAE0, 0xD000000000000028, 0x800000021E4EDB00);
  v9 = *(v6 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  v10 = *(v9 + 88);
  *(v9 + 88) = v5;
}

- (void)updateWithAttribution:(id)a3
{
  v4 = qword_280C14550;
  v5 = a3;
  v6 = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v7 = sub_21E4DBCC8();
  __swift_project_value_buffer(v7, qword_280C14558);
  v8 = sub_21E4DD1F8();
  sub_21E45D81C(v8, 0, 0xD000000000000014, 0x800000021E4EDB30, 0xD00000000000001ELL, 0x800000021E4EDB50);
  v9 = *(v6 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  v10 = *(v9 + 96);
  *(v9 + 96) = v5;
}

- (void)updateWithCappedFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = qword_280C14550;
  v11 = self;
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_21E4DBCC8();
  __swift_project_value_buffer(v8, qword_280C14558);
  v9 = sub_21E4DD1F8();
  sub_21E45D81C(v9, 0, 0xD000000000000014, 0x800000021E4EDB70, 0xD000000000000018, 0x800000021E4EDB90);
  v10 = *(v11 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  *(v10 + 248) = x;
  *(v10 + 256) = y;
  *(v10 + 264) = width;
  *(v10 + 272) = height;
  *(v10 + 280) = 0;
}

- (void)updateWithMaxSnippetWidth:(double)a3
{
  v4 = qword_280C14550;
  v7 = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_21E4DBCC8();
  __swift_project_value_buffer(v5, qword_280C14558);
  v6 = sub_21E4DD1F8();
  sub_21E45D81C(v6, 0, 0xD000000000000018, 0x800000021E4EDBB0, 0xD000000000000018, 0x800000021E4EDB90);
  *(*(v7 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData) + 288) = a3;
}

- (void)setInteractionDelegate:(id)a3
{
  if (*(self + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogInteractionManager))
  {
    swift_unknownObjectWeakAssign();
  }
}

- (void)setSmartDialogWidth:(double)a3
{
  v4 = self;
  sub_21E467ADC(a3);
}

- (void)triggerSmartDialogAnimationWithDelay:(double)a3
{
  v4 = self;
  sub_21E467DB0(a3);
}

- (BOOL)containsSmartDialogSnippetWithViewId:(id)a3
{
  v4 = sub_21E4DCF78();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = sub_21E4683FC(v4, v6);

  return v4 & 1;
}

- (void)updateSmartDialogSnippetWithData:(id)a3
{
  v4 = a3;
  v8 = self;
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