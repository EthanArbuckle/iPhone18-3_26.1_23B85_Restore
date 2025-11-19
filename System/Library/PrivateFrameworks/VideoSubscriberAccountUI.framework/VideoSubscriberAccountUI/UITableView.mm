@interface UITableView
@end

@implementation UITableView

uint64_t __64__UITableView_TVVSAdditions__vs_scrollToTopAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_270DD4000, v2, OS_LOG_TYPE_DEFAULT, "End scrolling", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __92__UITableView_TVVSAdditions__vs_scrollToIndexPath_atScrollPosition_animated_withCompletion___block_invoke(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_270DD4000, v2, OS_LOG_TYPE_DEFAULT, "End scrolling", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

@end