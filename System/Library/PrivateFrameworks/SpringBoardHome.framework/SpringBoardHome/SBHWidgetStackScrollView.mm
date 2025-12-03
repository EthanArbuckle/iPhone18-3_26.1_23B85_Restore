@interface SBHWidgetStackScrollView
- (void)setContentOffset:(CGPoint)offset;
@end

@implementation SBHWidgetStackScrollView

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  if ((*&offset.x & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&offset.y & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
    v6 = &selfCopy;
LABEL_8:
    v6[1] = SBHWidgetStackScrollView;
    objc_msgSendSuper2(v6, sel_setContentOffset_, x, y, selfCopy2);
    return;
  }

  v7 = SBLogWidgets();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(SBHWidgetStackScrollView *)self setContentOffset:v7, x, y];
  }

  if (os_variant_has_internal_ui())
  {
    selfCopy2 = self;
    v6 = &selfCopy2;
    goto LABEL_8;
  }
}

- (void)setContentOffset:(double)a3 .cold.1(uint64_t a1, NSObject *a2, double a3, double a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = NSStringFromCGPoint(*&a3);
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "<SBHWidgetStackScrollView:%@> received invalid contentOffset:%@", &v7, 0x16u);
}

@end