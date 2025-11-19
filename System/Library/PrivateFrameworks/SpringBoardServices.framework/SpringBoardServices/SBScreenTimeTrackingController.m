@interface SBScreenTimeTrackingController
- (SBScreenTimeTrackingController)init;
- (id)_nameForContext:(int)a3;
- (void)_queue_handleNewLayout:(id)a3 withContext:(id)a4;
- (void)_queue_setActiveCategory:(int)a3 context:(int)a4;
- (void)dealloc;
- (void)layoutMonitor:(id)a3 didUpdateDisplayLayout:(id)a4 withContext:(id)a5;
@end

@implementation SBScreenTimeTrackingController

- (SBScreenTimeTrackingController)init
{
  v8.receiver = self;
  v8.super_class = SBScreenTimeTrackingController;
  v2 = [(SBScreenTimeTrackingController *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.power.screenTimeTracking", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [objc_alloc(MEMORY[0x1E699FAE0]) initWithDisplayType:0];
    layoutMonitor = v2->_layoutMonitor;
    v2->_layoutMonitor = v5;

    [(FBSDisplayLayoutMonitor *)v2->_layoutMonitor addObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];
  v3.receiver = self;
  v3.super_class = SBScreenTimeTrackingController;
  [(SBScreenTimeTrackingController *)&v3 dealloc];
}

- (void)layoutMonitor:(id)a3 didUpdateDisplayLayout:(id)a4 withContext:(id)a5
{
  v7 = a4;
  v8 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__SBScreenTimeTrackingController_layoutMonitor_didUpdateDisplayLayout_withContext___block_invoke;
  block[3] = &unk_1E73601C8;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(queue, block);
}

void __83__SBScreenTimeTrackingController_layoutMonitor_didUpdateDisplayLayout_withContext___block_invoke(id *a1)
{
  objc_storeStrong(a1[4] + 4, a1[5]);
  objc_storeStrong(a1[4] + 5, a1[6]);
  v2 = _block_invoke_requestCount;
  if (!_block_invoke_requestCount)
  {
    [a1[4] _queue_handleNewLayout:a1[5] withContext:a1[6]];
    v3 = dispatch_time(0, 250000000);
    v4 = a1[4];
    v5 = *(v4 + 2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__SBScreenTimeTrackingController_layoutMonitor_didUpdateDisplayLayout_withContext___block_invoke_2;
    block[3] = &unk_1E735F9D0;
    block[4] = v4;
    dispatch_after(v3, v5, block);
    v2 = _block_invoke_requestCount;
  }

  _block_invoke_requestCount = v2 + 1;
}

uint64_t __83__SBScreenTimeTrackingController_layoutMonitor_didUpdateDisplayLayout_withContext___block_invoke_2(uint64_t result)
{
  v1 = _block_invoke_requestCount;
  _block_invoke_requestCount = 0;
  if (v1 >= 2)
  {
    return [*(result + 32) _queue_handleNewLayout:*(*(result + 32) + 32) withContext:*(*(result + 32) + 40)];
  }

  return result;
}

- (id)_nameForContext:(int)a3
{
  if ((a3 - 1) > 2)
  {
    return @"other";
  }

  else
  {
    return off_1E7360208[a3 - 1];
  }
}

- (void)_queue_handleNewLayout:(id)a3 withContext:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v27 = self;
  v28 = a4;
  BSDispatchQueueAssert();
  v29 = v6;
  v7 = [v6 elements];
  v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_25];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v32 = 0;
    v33 = 0;
    v12 = 0;
    v37 = 0;
    v38 = 0;
    v36 = 0;
    v39 = 0;
    v40 = 0;
    v13 = 0;
    v14 = 0;
    v42 = 0;
    v15 = 0;
    v16 = *v44;
    v41 = *MEMORY[0x1E699F8A0];
    v35 = *MEMORY[0x1E699F898];
    v31 = *MEMORY[0x1E699F8B0];
    do
    {
      v17 = 0;
      do
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v18 = *(*(&v43 + 1) + 8 * v17);
        v19 = [v18 identifier];
        v20 = v19;
        if (v15 || ![v19 isEqualToString:v41])
        {
          if (v13 || ![v20 isEqualToString:@"com.apple.InCallService"])
          {
            if ([v18 layoutRole] == 3)
            {
              v21 = v18;

              v14 = v21;
            }

            else if (v42 || ![v20 isEqualToString:@"com.apple.springboard.home-screen"])
            {
              if (v40 || ![v20 isEqualToString:v35])
              {
                if (v39 || ![v20 isEqualToString:v31])
                {
                  if (v38 || ![v20 isEqualToString:@"com.apple.springboard.today-view"])
                  {
                    if (v37 || ![v20 isEqualToString:@"com.apple.springboard.spotlight"])
                    {
                      if (v36 || ![v20 isEqualToString:@"com.apple.springboard.passcode"])
                      {
                        if (v12 || ![v20 isEqualToString:@"com.apple.springboard.app-switcher"])
                        {
                          if (!v32 && [v18 isUIApplicationElement] && objc_msgSend(v18, "layoutRole") == 1)
                          {
                            v32 = v18;
                          }

                          else if (!v33)
                          {
                            if ([v18 isUIApplicationElement] && objc_msgSend(v18, "layoutRole") == 6)
                            {
                              v30 = v12;
                              v22 = [v18 bundleIdentifier];
                              v34 = [v22 isEqualToString:@"com.apple.camera"];

                              if (v34)
                              {
                                v33 = v18;
                              }

                              else
                              {
                                v33 = 0;
                              }

                              v12 = v30;
                            }

                            else
                            {
                              v33 = 0;
                            }
                          }
                        }

                        else
                        {
                          v12 = v18;
                        }
                      }

                      else
                      {
                        v36 = v18;
                      }
                    }

                    else
                    {
                      v37 = v18;
                    }
                  }

                  else
                  {
                    v38 = v18;
                  }
                }

                else
                {
                  v39 = v18;
                }
              }

              else
              {
                v40 = v18;
              }
            }

            else
            {
              v42 = v18;
            }
          }

          else
          {
            v13 = v18;

            v14 = v13;
          }
        }

        else
        {
          v15 = v18;
        }

        ++v17;
      }

      while (v11 != v17);
      v23 = [v9 countByEnumeratingWithState:&v43 objects:v47 count:16];
      v11 = v23;
    }

    while (v23);
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v12 = 0;
    v37 = 0;
    v38 = 0;
    v36 = 0;
    v39 = 0;
    v40 = 0;
    v13 = 0;
    v14 = 0;
    v42 = 0;
    v15 = 0;
  }

  if ([v29 displayBacklightLevel] < 0)
  {
    v24 = 0;
    v25 = 0;
    v26 = v27;
    goto LABEL_66;
  }

  if (v14)
  {
    v24 = 0;
    v25 = 1;
  }

  else if (v15)
  {
    if (!v39)
    {
      v26 = v27;
      if (v36)
      {
        v25 = 15;
      }

      else if (v13)
      {
        v25 = 13;
      }

      else if (v33)
      {
        v25 = 11;
      }

      else if (v37)
      {
        v25 = 16;
      }

      else if (v38)
      {
        v25 = 17;
      }

      else
      {
        v25 = 9;
      }

      v24 = 3;
      goto LABEL_56;
    }

    v25 = 14;
    v24 = 3;
  }

  else
  {
    if (!v32)
    {
      v26 = v27;
      if (v42)
      {
        if (v37)
        {
          v25 = 18;
        }

        else if (v38)
        {
          v25 = 19;
        }

        else
        {
          v25 = 2;
        }

        v24 = 1;
      }

      else
      {
        v24 = 0;
        v25 = 1;
      }

      goto LABEL_56;
    }

    v25 = 3;
    v24 = 2;
  }

  v26 = v27;
LABEL_56:
  if (v40)
  {
    v25 = 5;
LABEL_65:
    v24 = v26[6];
    goto LABEL_66;
  }

  if (!v15 && v12)
  {
    v25 = 4;
    goto LABEL_65;
  }

LABEL_66:
  [v26 _queue_setActiveCategory:v25 context:{v24, v27}];
}

uint64_t __69__SBScreenTimeTrackingController__queue_handleNewLayout_withContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 level];
  v6 = [v4 level];

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (void)_queue_setActiveCategory:(int)a3 context:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  BSDispatchQueueAssert();
  queue_activeCategory = self->_queue_activeCategory;
  if (queue_activeCategory != v5)
  {
    queue_activeContext = self->_queue_activeContext;
    self->_queue_activeContext = v4;
    self->_queue_activeCategory = v5;
    v9 = _SBFScreenTimeNameForCategory(queue_activeCategory);
    v10 = [(SBScreenTimeTrackingController *)self _nameForContext:queue_activeContext];
    v15 = v10;
    if (v9)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:v9, v10];
    }

    v12 = _SBFScreenTimeNameForCategory(v5);
    v13 = [(SBScreenTimeTrackingController *)self _nameForContext:v4];
    if (v12)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:v12, v13];
    }

    _SBFScreenTimePostExternalChangeNotification(v5);
  }
}

@end