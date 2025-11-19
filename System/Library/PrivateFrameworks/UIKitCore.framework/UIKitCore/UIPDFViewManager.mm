@interface UIPDFViewManager
+ (id)sharedViewManager;
- (void)makeViewActive:(id)a3;
- (void)viewReleased:(id)a3;
@end

@implementation UIPDFViewManager

+ (id)sharedViewManager
{
  if (_MergedGlobals_5_19 != -1)
  {
    dispatch_once(&_MergedGlobals_5_19, &__block_literal_global_513);
  }

  return qword_1ED49A830;
}

UIPDFViewManager *__37__UIPDFViewManager_sharedViewManager__block_invoke()
{
  result = objc_alloc_init(UIPDFViewManager);
  qword_1ED49A830 = result;
  return result;
}

- (void)makeViewActive:(id)a3
{
  activeView = self->_activeView;
  objc_sync_enter(activeView);
  v6 = self->_activeView;
  if (v6 != a3)
  {
    if (v6)
    {
      [(UIView *)v6 clearSelection];
    }

    self->_activeView = a3;
  }

  objc_sync_exit(activeView);
}

- (void)viewReleased:(id)a3
{
  activeView = self->_activeView;
  objc_sync_enter(activeView);
  if (self->_activeView == a3)
  {
    self->_activeView = 0;
  }

  objc_sync_exit(activeView);
}

@end