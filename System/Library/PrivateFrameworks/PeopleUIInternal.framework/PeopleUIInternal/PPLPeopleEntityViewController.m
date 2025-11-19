@interface PPLPeopleEntityViewController
- (CGRect)initialSceneFrame;
- (CGRect)sceneSettingsFrameFromRect:(CGRect)a3;
- (NSURL)personURL;
- (PPLPeopleEntityViewController)initWithMetadata:(id)a3;
- (PPLPeopleEntityViewController)initWithMetadata:(id)a3 sceneManager:(id)a4;
- (PPLPeopleEntityViewControllerDelegate)delegate;
- (UIEdgeInsets)safeAreaInsetFromSceneSettings:(id)a3;
- (UIEdgeInsets)sceneSafeAreaInsetPortrait;
- (void)sceneManager:(id)a3 didGrantOwnershipOfScene:(id)a4;
- (void)sceneManager:(id)a3 didRevokeOwnershipOfScene:(id)a4;
- (void)sceneManager:(id)a3 sceneDidRequestDismissal:(id)a4;
- (void)viewDidLayoutSubviews;
@end

@implementation PPLPeopleEntityViewController

- (PPLPeopleEntityViewController)initWithMetadata:(id)a3
{
  v4 = a3;
  v5 = +[PPLPeopleAppSceneManager sharedSceneManager];
  v6 = [(PPLPeopleEntityViewController *)self initWithMetadata:v4 sceneManager:v5];

  return v6;
}

- (PPLPeopleEntityViewController)initWithMetadata:(id)a3 sceneManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PPLPeopleEntityViewController;
  v9 = [(PPLPeopleEntityViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metadata, a3);
    objc_storeStrong(&v10->_sceneManager, a4);
  }

  return v10;
}

- (CGRect)initialSceneFrame
{
  v3 = [(PPLPeopleEntityViewController *)self view];
  [v3 bounds];
  [(PPLPeopleEntityViewController *)self sceneSettingsFrameFromRect:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (NSURL)personURL
{
  v2 = [(PPLPeopleEntityViewController *)self metadata];
  v3 = [v2 url];

  return v3;
}

- (void)sceneManager:(id)a3 didGrantOwnershipOfScene:(id)a4
{
  v5 = a4;
  v6 = [(PPLPeopleEntityViewController *)self scene];

  if (!v6)
  {
    [(PPLPeopleEntityViewController *)self setScene:v5];
    v7 = [(PPLPeopleEntityViewController *)self scene];
    v8 = [v7 uiPresentationManager];

    v9 = MEMORY[0x277CCACA8];
    v10 = [v5 identifier];
    v11 = [v9 stringWithFormat:@"%@-%p", v10, self];

    v12 = [v8 createPresenterWithIdentifier:v11];
    [(PPLPeopleEntityViewController *)self setPresenter:v12];
    v13 = [v12 presentationView];
    [(PPLPeopleEntityViewController *)self setHostView:v13];

    [v12 modifyPresentationContext:&__block_literal_global];
    [v12 activate];
    v14 = [(PPLPeopleEntityViewController *)self view];
    v15 = [(PPLPeopleEntityViewController *)self hostView];
    v16 = [(PPLPeopleEntityViewController *)self hostView];
    [v14 addSubview:v16];

    v17 = [(PPLPeopleEntityViewController *)self hostView];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = [v15 leadingAnchor];
    v19 = [v14 leadingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v20 setActive:1];

    v21 = [v15 trailingAnchor];
    v22 = [v14 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [v23 setActive:1];

    v24 = [v15 topAnchor];
    v25 = [v14 topAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    [v26 setActive:1];

    v27 = [v15 bottomAnchor];
    v28 = [v14 bottomAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    [v29 setActive:1];

    v30 = PPLPeopleViewServiceLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E21C000, v30, OS_LOG_TYPE_DEFAULT, "created scene", buf, 2u);
    }

    v31 = [(PPLPeopleEntityViewController *)self view];
    [v31 layoutIfNeeded];
  }
}

void __71__PPLPeopleEntityViewController_sceneManager_didGrantOwnershipOfScene___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPresentedLayerTypes:26];
  [v2 setBackgroundColorWhileHosting:0];
}

- (void)sceneManager:(id)a3 didRevokeOwnershipOfScene:(id)a4
{
  [(PPLPeopleEntityViewController *)self setScene:0, a4];
  v5 = [(PPLPeopleEntityViewController *)self presenter];
  [v5 invalidate];

  [(PPLPeopleEntityViewController *)self setPresenter:0];
  v6 = [(PPLPeopleEntityViewController *)self hostView];
  [v6 removeFromSuperview];

  [(PPLPeopleEntityViewController *)self setHostView:0];
}

- (void)sceneManager:(id)a3 sceneDidRequestDismissal:(id)a4
{
  v5 = PPLPeopleViewServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_25E21C000, v5, OS_LOG_TYPE_DEFAULT, "scene requested dismissal", v7, 2u);
  }

  v6 = [(PPLPeopleEntityViewController *)self delegate];
  [v6 peopleEntityViewControllerDidRequestDismissal:self];
}

- (void)viewDidLayoutSubviews
{
  v40.receiver = self;
  v40.super_class = PPLPeopleEntityViewController;
  [(PPLPeopleEntityViewController *)&v40 viewDidLayoutSubviews];
  v3 = [(PPLPeopleEntityViewController *)self view];
  [v3 bounds];
  [(PPLPeopleEntityViewController *)self sceneSettingsFrameFromRect:?];
  v5 = v4;
  v37 = v6;
  v8 = v7;
  v10 = v9;

  [(PPLPeopleEntityViewController *)self sceneSafeAreaInsetPortrait];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v38 = v17;
  v18 = [(PPLPeopleEntityViewController *)self scene];
  v19 = [v18 settings];
  [(PPLPeopleEntityViewController *)self safeAreaInsetFromSceneSettings:v19];
  v21 = v20;
  v23 = v22;
  v35 = v24;
  v36 = v25;

  v26 = [(PPLPeopleEntityViewController *)self scene];
  v27 = [v26 settings];
  [v27 frame];
  v42.origin.x = v28;
  v42.origin.y = v29;
  v42.size.width = v30;
  v42.size.height = v31;
  v41.origin.x = v5;
  v41.origin.y = v37;
  v41.size.width = v8;
  v41.size.height = v10;
  v32 = CGRectEqualToRect(v41, v42);

  if (!v32 || v14 != v23 || v12 != v21 || (v33 = v38, v38 != v36) || (v33 = v35, v16 != v35))
  {
    v34 = [(PPLPeopleEntityViewController *)self scene];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __54__PPLPeopleEntityViewController_viewDidLayoutSubviews__block_invoke;
    v39[3] = &__block_descriptor_96_e33_v16__0__FBSMutableSceneSettings_8l;
    *&v39[4] = v5;
    *&v39[5] = v37;
    *&v39[6] = v8;
    *&v39[7] = v10;
    *&v39[8] = v12;
    *&v39[9] = v14;
    *&v39[10] = v16;
    *&v39[11] = v38;
    [v34 updateSettingsWithBlock:v39];
  }
}

void __54__PPLPeopleEntityViewController_viewDidLayoutSubviews__block_invoke(double *a1, void *a2)
{
  v3 = a2;
  [v3 setFrame:{a1[4], a1[5], a1[6], a1[7]}];
  if ([v3 isUISubclass])
  {
    [v3 setSafeAreaInsetsPortrait:{a1[8], a1[9], a1[10], a1[11]}];
  }
}

- (CGRect)sceneSettingsFrameFromRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v12 = CGRectEqualToRect(v17, *MEMORY[0x277CBF3A0]);
  if (v12)
  {
    v13 = v9;
  }

  else
  {
    v13 = width;
  }

  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = height;
  }

  v15 = x;
  v16 = y;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (UIEdgeInsets)sceneSafeAreaInsetPortrait
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  [(PPLPeopleEntityViewController *)self initialSceneFrame];
  v9 = v8;
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
    v17 = [(PPLPeopleEntityViewController *)self view];
    v18 = [v17 window];
    v19 = [v18 _scene];
    v20 = [v19 settings];

    if (v20 && ([v20 isUISubclass] & 1) != 0)
    {
      [v20 safeAreaInsetsPortrait];
      v13 = v21;
      v14 = v22;
      v15 = v23;
      v16 = v24;
    }

    else
    {
      v13 = *MEMORY[0x277D768C8];
      v14 = *(MEMORY[0x277D768C8] + 8);
      v15 = *(MEMORY[0x277D768C8] + 16);
      v16 = *(MEMORY[0x277D768C8] + 24);
    }
  }

  else
  {
    v13 = *MEMORY[0x277D768C8];
    v14 = *(MEMORY[0x277D768C8] + 8);
    v15 = *(MEMORY[0x277D768C8] + 16);
    v16 = *(MEMORY[0x277D768C8] + 24);
  }

  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  result.right = v28;
  result.bottom = v27;
  result.left = v26;
  result.top = v25;
  return result;
}

- (UIEdgeInsets)safeAreaInsetFromSceneSettings:(id)a3
{
  v3 = a3;
  if ([v3 isUISubclass])
  {
    [v3 safeAreaInsetsPortrait];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = *MEMORY[0x277D768C8];
    v7 = *(MEMORY[0x277D768C8] + 8);
    v9 = *(MEMORY[0x277D768C8] + 16);
    v11 = *(MEMORY[0x277D768C8] + 24);
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (PPLPeopleEntityViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end