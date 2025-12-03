@interface PromotedContentWebView
- (CGRect)frame;
- (_TtC17PromotedContentUI22PromotedContentWebView)initWithFrame:(CGRect)frame configuration:(id)configuration;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)setFrame:(CGRect)frame;
- (void)webProcessDiagnosticJSOStatusReported:(id)reported status:(id)status;
- (void)webProcessMRAIDJSODidCallCreateCalendarEvent:(id)event;
- (void)webProcessMRAIDJSODidCallExpand:(id)expand withMaximumWidth:(double)width andHeight:(double)height;
- (void)webProcessMRAIDJSODidCallOpen:(id)open;
- (void)webProcessPlugInDidCreateBrowserContextController;
- (void)webProcessPlugInWillDestroyBrowserContextController;
- (void)webProcessVideoAdJSODidCallViewabilityChanged:(BOOL)changed playTime:(float)time volume:(float)volume;
- (void)webProcessVideoAdJSOGetVideoInfo:(id)info;
@end

@implementation PromotedContentWebView

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for PromotedContentWebView();
  [(PromotedContentWebView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = type metadata accessor for PromotedContentWebView();
  v19.receiver = self;
  v19.super_class = v8;
  selfCopy = self;
  [(PromotedContentWebView *)&v19 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18.receiver = selfCopy;
  v18.super_class = v8;
  [(PromotedContentWebView *)&v18 setFrame:x, y, width, height];
  sub_1C1A6547C(v11, v13, v15, v17);
}

- (void)didMoveToSuperview
{
  selfCopy = self;
  sub_1C1A65648();
}

- (void)dealloc
{
  selfCopy = self;
  sub_1C1A6F65C();
  sub_1C199E4CC();
  v3 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for PromotedContentWebView();
  [(PromotedContentWebView *)&v4 dealloc];
}

- (_TtC17PromotedContentUI22PromotedContentWebView)initWithFrame:(CGRect)frame configuration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)webProcessPlugInDidCreateBrowserContextController
{
  selfCopy = self;
  sub_1C1A65C9C();
}

- (void)webProcessPlugInWillDestroyBrowserContextController
{
  selfCopy = self;
  sub_1C1A65E40();
}

- (void)webProcessDiagnosticJSOStatusReported:(id)reported status:(id)status
{
  reportedCopy = reported;
  statusCopy = status;
  selfCopy = self;
  v8 = sub_1C1A65254();
  if (v8)
  {
    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      [v9 webProcessDiagnosticJSOStatusReported:reportedCopy status:statusCopy];
    }

    swift_unknownObjectRelease();
  }
}

- (void)webProcessMRAIDJSODidCallExpand:(id)expand withMaximumWidth:(double)width andHeight:(double)height
{
  v8 = sub_1C1A6D48C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D43C();
  selfCopy = self;
  v13 = sub_1C1A65254();
  if (v13)
  {
    v14 = v13;
    if ([v13 respondsToSelector_])
    {
      v15 = sub_1C1A6D41C();
      [v14 webProcessMRAIDJSODidCallExpand:v15 withMaximumWidth:width andHeight:height];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  (*(v9 + 8))(v11, v8);
}

- (void)webProcessMRAIDJSODidCallCreateCalendarEvent:(id)event
{
  sub_1C1A6F31C();
  selfCopy = self;
  v5 = sub_1C1A65254();
  if (v5)
  {
    v6 = v5;
    if ([v5 respondsToSelector_])
    {
      v7 = sub_1C1A6F2FC();

      [v6 webProcessMRAIDJSODidCallCreateCalendarEvent_];
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }
}

- (void)webProcessMRAIDJSODidCallOpen:(id)open
{
  v4 = sub_1C1A6D48C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D43C();
  selfCopy = self;
  v9 = sub_1C1A65254();
  if (v9)
  {
    v10 = v9;
    if ([v9 respondsToSelector_])
    {
      v11 = sub_1C1A6D41C();
      [v10 webProcessMRAIDJSODidCallOpen_];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
}

- (void)webProcessVideoAdJSOGetVideoInfo:(id)info
{
  v4 = _Block_copy(info);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  v6 = sub_1C1A65254();
  if (v6)
  {
    v7 = v6;
    if ([v6 respondsToSelector_])
    {
      aBlock[4] = sub_1C1A669C8;
      aBlock[5] = v5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C1A664B0;
      aBlock[3] = &unk_1F4142F90;
      v8 = _Block_copy(aBlock);

      [v7 webProcessVideoAdJSOGetVideoInfo_];
      swift_unknownObjectRelease();

      _Block_release(v8);

      return;
    }

    swift_unknownObjectRelease();
  }
}

- (void)webProcessVideoAdJSODidCallViewabilityChanged:(BOOL)changed playTime:(float)time volume:(float)volume
{
  changedCopy = changed;
  selfCopy = self;
  v8 = sub_1C1A65254();
  if (v8)
  {
    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      *&v10 = time;
      *&v11 = volume;
      [v9 webProcessVideoAdJSODidCallViewabilityChanged:changedCopy playTime:v10 volume:v11];
    }

    swift_unknownObjectRelease();
  }
}

@end