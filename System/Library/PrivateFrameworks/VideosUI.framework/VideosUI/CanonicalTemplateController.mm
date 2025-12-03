@interface CanonicalTemplateController
- (BOOL)shouldRubberbandElementWithCategory:(unint64_t)category in:(id)in at:(id)at;
- (void)vuiScrollViewDidEndDecelerating:(id)decelerating;
- (void)vuiScrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)vuiScrollViewDidScroll:(id)scroll;
- (void)vui_viewDidAppear:(BOOL)appear;
- (void)vui_viewDidDisappear:(BOOL)disappear;
@end

@implementation CanonicalTemplateController

- (void)vui_viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3FED6AC(appear);
}

- (void)vui_viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3FED794(disappear);
}

- (void)vuiScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3FEE68C();
}

- (void)vuiScrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_1E3FEEDB4(draggingCopy, decelerate);
}

- (void)vuiScrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3FEEFA8(deceleratingCopy);
}

- (BOOL)shouldRubberbandElementWithCategory:(unint64_t)category in:(id)in at:(id)at
{
  v8 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_1E41FE804();
  inCopy = in;
  selfCopy = self;
  LOBYTE(category) = sub_1E3FEF39C(category, inCopy);

  (*(v10 + 8))(v14, v8);
  return category & 1;
}

@end