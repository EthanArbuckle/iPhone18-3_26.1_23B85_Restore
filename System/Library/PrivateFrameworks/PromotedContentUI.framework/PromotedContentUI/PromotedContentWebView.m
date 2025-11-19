@interface PromotedContentWebView
- (CGRect)frame;
- (_TtC17PromotedContentUI22PromotedContentWebView)initWithFrame:(CGRect)a3 configuration:(id)a4;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)setFrame:(CGRect)a3;
- (void)webProcessDiagnosticJSOStatusReported:(id)a3 status:(id)a4;
- (void)webProcessMRAIDJSODidCallCreateCalendarEvent:(id)a3;
- (void)webProcessMRAIDJSODidCallExpand:(id)a3 withMaximumWidth:(double)a4 andHeight:(double)a5;
- (void)webProcessMRAIDJSODidCallOpen:(id)a3;
- (void)webProcessPlugInDidCreateBrowserContextController;
- (void)webProcessPlugInWillDestroyBrowserContextController;
- (void)webProcessVideoAdJSODidCallViewabilityChanged:(BOOL)a3 playTime:(float)a4 volume:(float)a5;
- (void)webProcessVideoAdJSOGetVideoInfo:(id)a3;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = type metadata accessor for PromotedContentWebView();
  v19.receiver = self;
  v19.super_class = v8;
  v9 = self;
  [(PromotedContentWebView *)&v19 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18.receiver = v9;
  v18.super_class = v8;
  [(PromotedContentWebView *)&v18 setFrame:x, y, width, height];
  sub_1C1A6547C(v11, v13, v15, v17);
}

- (void)didMoveToSuperview
{
  v2 = self;
  sub_1C1A65648();
}

- (void)dealloc
{
  v2 = self;
  sub_1C1A6F65C();
  sub_1C199E4CC();
  v3 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  v4.receiver = v2;
  v4.super_class = type metadata accessor for PromotedContentWebView();
  [(PromotedContentWebView *)&v4 dealloc];
}

- (_TtC17PromotedContentUI22PromotedContentWebView)initWithFrame:(CGRect)a3 configuration:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)webProcessPlugInDidCreateBrowserContextController
{
  v2 = self;
  sub_1C1A65C9C();
}

- (void)webProcessPlugInWillDestroyBrowserContextController
{
  v2 = self;
  sub_1C1A65E40();
}

- (void)webProcessDiagnosticJSOStatusReported:(id)a3 status:(id)a4
{
  v6 = a3;
  v10 = a4;
  v7 = self;
  v8 = sub_1C1A65254();
  if (v8)
  {
    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      [v9 webProcessDiagnosticJSOStatusReported:v6 status:v10];
    }

    swift_unknownObjectRelease();
  }
}

- (void)webProcessMRAIDJSODidCallExpand:(id)a3 withMaximumWidth:(double)a4 andHeight:(double)a5
{
  v8 = sub_1C1A6D48C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D43C();
  v12 = self;
  v13 = sub_1C1A65254();
  if (v13)
  {
    v14 = v13;
    if ([v13 respondsToSelector_])
    {
      v15 = sub_1C1A6D41C();
      [v14 webProcessMRAIDJSODidCallExpand:v15 withMaximumWidth:a4 andHeight:a5];
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

- (void)webProcessMRAIDJSODidCallCreateCalendarEvent:(id)a3
{
  sub_1C1A6F31C();
  v4 = self;
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

- (void)webProcessMRAIDJSODidCallOpen:(id)a3
{
  v4 = sub_1C1A6D48C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D43C();
  v8 = self;
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

- (void)webProcessVideoAdJSOGetVideoInfo:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v9 = self;
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

- (void)webProcessVideoAdJSODidCallViewabilityChanged:(BOOL)a3 playTime:(float)a4 volume:(float)a5
{
  v7 = a3;
  v12 = self;
  v8 = sub_1C1A65254();
  if (v8)
  {
    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      *&v10 = a4;
      *&v11 = a5;
      [v9 webProcessVideoAdJSODidCallViewabilityChanged:v7 playTime:v10 volume:v11];
    }

    swift_unknownObjectRelease();
  }
}

@end