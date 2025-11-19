@interface SXActionViewManager
- (SXActionViewManager)initWithViewControllerPresenting:(id)a3;
- (void)presentActivityGroup:(id)a3 action:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 completion:(id)a7;
@end

@implementation SXActionViewManager

- (SXActionViewManager)initWithViewControllerPresenting:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXActionViewManager;
  v6 = [(SXActionViewManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewControllerPresenter, a3);
  }

  return v7;
}

- (void)presentActivityGroup:(id)a3 action:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 completion:(id)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v53 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v43 = a7;
  if (v15)
  {
    v18 = [v15 activities];
    if (v18)
    {
      v19 = v18;
      v20 = [v15 activities];
      v21 = [v20 count];

      if (v16)
      {
        if (v21)
        {
          v39 = self;
          v40 = v17;
          v41 = v16;
          v22 = MEMORY[0x1E69DC650];
          v23 = [v15 title];
          v24 = [v22 alertControllerWithTitle:v23 message:0 preferredStyle:0];

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          obj = [v15 activities];
          v25 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v49;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v49 != v27)
                {
                  objc_enumerationMutation(obj);
                }

                v29 = *(*(&v48 + 1) + 8 * i);
                v30 = MEMORY[0x1E69DC648];
                v31 = [v29 label];
                v46[0] = MEMORY[0x1E69E9820];
                v46[1] = 3221225472;
                v46[2] = __84__SXActionViewManager_presentActivityGroup_action_sourceView_sourceRect_completion___block_invoke;
                v46[3] = &unk_1E84FFAB8;
                v32 = v43;
                v46[4] = v29;
                v47 = v32;
                v33 = [v30 actionWithTitle:v31 style:0 handler:v46];

                [v24 addAction:v33];
              }

              v26 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
            }

            while (v26);
          }

          v34 = MEMORY[0x1E69DC648];
          v35 = SXBundle();
          v36 = [v35 localizedStringForKey:@"Cancel" value:&stru_1F532F6C0 table:0];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __84__SXActionViewManager_presentActivityGroup_action_sourceView_sourceRect_completion___block_invoke_2;
          v44[3] = &unk_1E84FFAE0;
          v45 = v43;
          v37 = [v34 actionWithTitle:v36 style:1 handler:v44];

          [v24 addAction:v37];
          v38 = [(SXActionViewManager *)v39 viewControllerPresenter];
          v17 = v40;
          [v38 presentViewController:v24 animated:1 sourceView:v40 sourceRect:{x, y, width, height}];

          v16 = v41;
        }
      }
    }
  }
}

uint64_t __84__SXActionViewManager_presentActivityGroup_action_sourceView_sourceRect_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

uint64_t __84__SXActionViewManager_presentActivityGroup_action_sourceView_sourceRect_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

@end