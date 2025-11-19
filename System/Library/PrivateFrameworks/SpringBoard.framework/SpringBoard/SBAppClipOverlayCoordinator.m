@interface SBAppClipOverlayCoordinator
- (SBAppClipOverlayCoordinator)init;
- (id)_existingOverlayViewControllerForWebClipIdentifier:(id)a3;
- (id)overlayViewControllerForBundleIdentifier:(id)a3 webClipIdentifier:(id)a4 participant:(id)a5;
- (void)participant:(id)a3 didSurrenderViewController:(id)a4;
@end

@implementation SBAppClipOverlayCoordinator

- (SBAppClipOverlayCoordinator)init
{
  v8.receiver = self;
  v8.super_class = SBAppClipOverlayCoordinator;
  v2 = [(SBAppClipOverlayCoordinator *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    overlayViewControllers = v2->_overlayViewControllers;
    v2->_overlayViewControllers = v3;

    v5 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    participantForViewController = v2->_participantForViewController;
    v2->_participantForViewController = v5;
  }

  return v2;
}

- (id)overlayViewControllerForBundleIdentifier:(id)a3 webClipIdentifier:(id)a4 participant:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 participantName];
  v13 = [(SBAppClipOverlayCoordinator *)self _existingOverlayViewControllerForWebClipIdentifier:v10];
  if (v13)
  {
    v14 = v13;
    v15 = [(NSMapTable *)self->_participantForViewController objectForKey:v13];
    if (!v15)
    {
      [SBAppClipOverlayCoordinator overlayViewControllerForBundleIdentifier:webClipIdentifier:participant:];
    }

    v16 = SBLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      [v15 participantName];
      v25 = v9;
      v20 = v19 = a2;
      *buf = 138544130;
      v27 = v18;
      v28 = 2114;
      v29 = v20;
      v30 = 2050;
      v31 = v14;
      v32 = 2114;
      v33 = v12;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, "%{public}@ asking participant %{public}@ to relinquish ownership of %{public}p to give to participant: %{public}@", buf, 0x2Au);

      a2 = v19;
      v9 = v25;
    }

    [v15 appClipOverlayCoordinator:self requestsSurrenderOfViewController:v14];
    if ([(NSMutableSet *)self->_overlayViewControllers containsObject:v14])
    {
      [SBAppClipOverlayCoordinator overlayViewControllerForBundleIdentifier:a2 webClipIdentifier:self participant:?];
    }
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x277CFA6F8]) initWithAppClipBundleID:v9 webClipID:v10];
  }

  [(NSMutableSet *)self->_overlayViewControllers addObject:v14];
  [(NSMapTable *)self->_participantForViewController setObject:v11 forKey:v14];

  v21 = SBLogCommon();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    *buf = 138543874;
    v27 = v23;
    v28 = 2050;
    v29 = v14;
    v30 = 2114;
    v31 = v12;
    _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_INFO, "%{public}@ handing ownership of %{public}p to participant: %{public}@", buf, 0x20u);
  }

  return v14;
}

- (void)participant:(id)a3 didSurrenderViewController:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [v7 participantName];
  if (([(NSMutableSet *)self->_overlayViewControllers containsObject:v6]& 1) == 0)
  {
    [SBAppClipOverlayCoordinator participant:didSurrenderViewController:];
  }

  v9 = [(NSMapTable *)self->_participantForViewController objectForKey:v6];
  v10 = [v9 isEqual:v7];

  if ((v10 & 1) == 0)
  {
    [SBAppClipOverlayCoordinator participant:didSurrenderViewController:];
  }

  [(NSMutableSet *)self->_overlayViewControllers removeObject:v6];
  [(NSMapTable *)self->_participantForViewController removeObjectForKey:v6];
  v11 = SBLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = 138543874;
    v15 = v13;
    v16 = 2114;
    v17 = v8;
    v18 = 2050;
    v19 = v6;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "%{public}@ participant: %{public}@ relinquished view controller: %{public}p", &v14, 0x20u);
  }
}

- (id)_existingOverlayViewControllerForWebClipIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_overlayViewControllers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 webClipID];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)overlayViewControllerForBundleIdentifier:webClipIdentifier:participant:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"SBAppClipOverlayCoordinator.m" lineNumber:35 description:{@"We expect to have a particpant for this overlay. Bundle identifier: %@ web clip identifier: %@", v1, v0}];
}

- (void)overlayViewControllerForBundleIdentifier:(uint64_t)a1 webClipIdentifier:(uint64_t)a2 participant:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAppClipOverlayCoordinator.m" lineNumber:41 description:@"Participants must relinquish synchronously"];
}

- (void)participant:didSurrenderViewController:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"SBAppClipOverlayCoordinator.m" lineNumber:58 description:{@"%@ is asking to relinquish a view controller we don't know about %@", v1, v0}];
}

- (void)participant:didSurrenderViewController:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"SBAppClipOverlayCoordinator.m" lineNumber:59 description:{@"%@ is asking to relinquish a view controller it doesn't own %@", v1, v0}];
}

@end