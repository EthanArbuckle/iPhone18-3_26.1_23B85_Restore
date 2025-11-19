@interface CanonicalTemplateController
- (BOOL)shouldRubberbandElementWithCategory:(unint64_t)a3 in:(id)a4 at:(id)a5;
- (void)vuiScrollViewDidEndDecelerating:(id)a3;
- (void)vuiScrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)vuiScrollViewDidScroll:(id)a3;
- (void)vui_viewDidAppear:(BOOL)a3;
- (void)vui_viewDidDisappear:(BOOL)a3;
@end

@implementation CanonicalTemplateController

- (void)vui_viewDidAppear:(BOOL)a3
{
  v4 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3FED6AC(a3);
}

- (void)vui_viewDidDisappear:(BOOL)a3
{
  v4 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3FED794(a3);
}

- (void)vuiScrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3FEE68C();
}

- (void)vuiScrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1E3FEEDB4(v6, a4);
}

- (void)vuiScrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3FEEFA8(v4);
}

- (BOOL)shouldRubberbandElementWithCategory:(unint64_t)a3 in:(id)a4 at:(id)a5
{
  v8 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_1E41FE804();
  v15 = a4;
  v16 = self;
  LOBYTE(a3) = sub_1E3FEF39C(a3, v15);

  (*(v10 + 8))(v14, v8);
  return a3 & 1;
}

@end