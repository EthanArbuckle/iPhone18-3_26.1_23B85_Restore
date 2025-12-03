@interface UIView(WatchQuickActionPrivate)
- (void)_wqa_actuallyClearAndUnregisterQuickAction:()WatchQuickActionPrivate;
- (void)_wqa_registerQuickActionForBoundingPathChanges:()WatchQuickActionPrivate;
- (void)_wqa_unregisterExistingQuickActionForBoundingPathChanges;
@end

@implementation UIView(WatchQuickActionPrivate)

- (void)_wqa_registerQuickActionForBoundingPathChanges:()WatchQuickActionPrivate
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_getAssociatedObject(self, &WQARegisteredQuickActionForBoundingPathChangesIdentifier);
  v6 = v5;
  if (v5)
  {
    if ([v5 isEqual:v4])
    {
      goto LABEL_10;
    }

    v7 = wqa_services_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_272AAE000, v7, OS_LOG_TYPE_INFO, "unregistering existing path change observer %@ from view: %@", &v10, 0x16u);
    }

    [self _wqa_actuallyClearAndUnregisterQuickAction:v6];
  }

  if (v4)
  {
    v8 = wqa_services_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_272AAE000, v8, OS_LOG_TYPE_INFO, "registering path change observer %@ from view: %@", &v10, 0x16u);
    }

    objc_setAssociatedObject(self, &WQARegisteredQuickActionForBoundingPathChangesIdentifier, v4, 1);
    [self _addBoundingPathChangeObserver:v4];
  }

LABEL_10:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_wqa_unregisterExistingQuickActionForBoundingPathChanges
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_getAssociatedObject(self, &WQARegisteredQuickActionForBoundingPathChangesIdentifier);
  if (v2)
  {
    v3 = wqa_services_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 138412546;
      v6 = v2;
      v7 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_272AAE000, v3, OS_LOG_TYPE_INFO, "unregistering path change observer %@ from view: %@", &v5, 0x16u);
    }

    [self _wqa_actuallyClearAndUnregisterQuickAction:v2];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_wqa_actuallyClearAndUnregisterQuickAction:()WatchQuickActionPrivate
{
  [self _removeBoundingPathChangeObserver:?];

  objc_setAssociatedObject(self, &WQARegisteredQuickActionForBoundingPathChangesIdentifier, 0, 1);
}

@end