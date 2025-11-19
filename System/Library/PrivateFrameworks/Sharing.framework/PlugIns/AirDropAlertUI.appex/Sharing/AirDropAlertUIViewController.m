@interface AirDropAlertUIViewController
- (void)activateIfNeeded;
- (void)configureWithCompletion:(id)a3;
- (void)invalidate;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updatedTransfer:(id)a3;
- (void)viewDidLoad;
@end

@implementation AirDropAlertUIViewController

- (void)loadView
{
  v3 = objc_alloc_init(UIView);
  [(AirDropAlertUIViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v41.receiver = self;
  v41.super_class = AirDropAlertUIViewController;
  [(AirDropAlertUIViewController *)&v41 viewDidLoad];
  [(AirDropAlertUIViewController *)self setPreferredContentSize:65.0, 89.0];
  v3 = objc_alloc_init(UIImageView);
  imgView = self->_imgView;
  self->_imgView = v3;

  v5 = [(AirDropAlertUIViewController *)self view];
  [v5 addSubview:self->_imgView];

  [(UIImageView *)self->_imgView setContentMode:2];
  v6 = objc_alloc_init(AirDropAlertUIProgressAlertView);
  progressAlertView = self->_progressAlertView;
  self->_progressAlertView = v6;

  v8 = [(AirDropAlertUIViewController *)self view];
  [v8 addSubview:self->_progressAlertView];

  [(AirDropAlertUIProgressAlertView *)self->_progressAlertView setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(AirDropAlertUIProgressAlertView *)self->_progressAlertView leftAnchor];
  v10 = [(AirDropAlertUIViewController *)self view];
  v11 = [v10 leftAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [(AirDropAlertUIProgressAlertView *)self->_progressAlertView rightAnchor];
  v14 = [(AirDropAlertUIViewController *)self view];
  v15 = [v14 rightAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [(AirDropAlertUIProgressAlertView *)self->_progressAlertView topAnchor];
  v18 = [(AirDropAlertUIViewController *)self view];
  v19 = [v18 topAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [(AirDropAlertUIProgressAlertView *)self->_progressAlertView bottomAnchor];
  v22 = [(AirDropAlertUIViewController *)self view];
  v23 = [v22 bottomAnchor];
  v24 = [v21 constraintEqualToAnchor:v23 constant:-24.0];
  [v24 setActive:1];

  [(AirDropAlertUIProgressAlertView *)self->_progressAlertView setHidden:1];
  v25 = [(AirDropAlertUIViewController *)self view];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = airdrop_ui_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [(AirDropAlertUIViewController *)self extensionContext];
    v28 = [v27 inputItems];
    *buf = 138412290;
    v43 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Extension items: %@", buf, 0xCu);
  }

  v29 = [(AirDropAlertUIViewController *)self extensionContext];
  v30 = [v29 inputItems];

  v31 = airdrop_ui_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [(AirDropAlertUIViewController *)self view];
    v33 = [v32 superview];
    *buf = 138412290;
    v43 = v33;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "View loaded with superview: %@", buf, 0xCu);
  }

  v34 = [v30 firstObject];
  v35 = v34;
  if (v34)
  {
    v36 = [v34 userInfo];
    v37 = [v36 objectForKeyedSubscript:@"id"];

    v38 = v37;
    if (v38)
    {
      objc_storeStrong(&self->_identifier, v37);
      v39 = objc_opt_new();
      observer = self->_observer;
      self->_observer = v39;

      [(SFAirDropTransferObserver *)self->_observer setDelegate:self];
      [(SFAirDropTransferObserver *)self->_observer activate];
    }
  }

  else
  {
    v38 = airdrop_ui_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_100002990();
    }
  }
}

- (void)activateIfNeeded
{
  v3 = objc_retainBlock(self->_completion);
  if (!v3)
  {
    v5 = airdrop_ui_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100002B0C();
    }

    goto LABEL_42;
  }

  v4 = self->_relevantTransfer;
  v5 = v4;
  if (!v4)
  {
    v9 = airdrop_ui_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100002AD8();
    }

    goto LABEL_37;
  }

  if ([(SFAirDropTransfer *)v4 transferState]!= 2)
  {
    if (![v5 userResponse]&& [v5 needsAction])
    {
      v10 = [v5 metaData];
      v11 = [v10 previewImage];

      v6 = airdrop_ui_log();
      v12 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v12)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Preview image available.", buf, 2u);
        }

        v6 = [UIImage imageWithCGImage:v11];
        [v6 size];
        if (v13 <= 270.0)
        {
          v14 = v13;
        }

        else
        {
          v14 = 270.0;
        }

        [v6 size];
        v16 = v14 / v15;
        [v6 size];
        if (v17 * v16 <= 300.0)
        {
          v18 = v17 * v16;
        }

        else
        {
          v18 = 300.0;
        }

        v19 = [v5 metaData];
        v20 = [v19 transferTypes];

        if ((v20 & 0x80) != 0)
        {
          [(UIImageView *)self->_imgView setContentMode:1];
          v18 = 117.0;
          v14 = 90.0;
        }

        [(AirDropAlertUIViewController *)self setPreferredContentSize:v14, v18];
        [(UIImageView *)self->_imgView setImage:v6];
        v21 = [(AirDropAlertUIViewController *)self view];
        [v21 bounds];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;

        if ((v20 & 0x80) != 0)
        {
          v30 = 90.0;
        }

        else
        {
          v30 = v29;
        }

        [(UIImageView *)self->_imgView setFrame:v23, v25, v27, v30];
      }

      else if (v12)
      {
        v32[0] = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No preview image available.", v32, 2u);
      }

      goto LABEL_34;
    }

    if ([v5 transferState]== 6 && [v5 needsAction])
    {
      v6 = airdrop_ui_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000029F8();
      }

      goto LABEL_34;
    }

    v9 = airdrop_ui_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000029C4();
    }

LABEL_37:

    goto LABEL_42;
  }

  if (!self->_observingExistenceOfProgress)
  {
    self->_observingExistenceOfProgress = 1;
    [v5 addObserver:self forKeyPath:@"transferProgress" options:4 context:0];
    goto LABEL_42;
  }

  v6 = [v5 transferProgress];
  v7 = airdrop_ui_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      sub_100002A2C(v6, v7);
    }

LABEL_34:
    completion = self->_completion;
    self->_completion = 0;

    v3[2](v3);
    goto LABEL_42;
  }

  if (v8)
  {
    sub_100002AA4();
  }

LABEL_42:
}

- (void)updatedTransfer:(id)a3
{
  v5 = a3;
  v6 = [v5 identifier];
  v7 = [v6 isEqualToString:self->_identifier];

  if (v7)
  {
    v8 = airdrop_ui_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100002B40(v5, self, v8);
    }

    objc_storeStrong(&self->_relevantTransfer, a3);
    [(AirDropAlertUIViewController *)self activateIfNeeded];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000018A4;
  block[3] = &unk_1000081F0;
  v11 = a3;
  v12 = self;
  v13 = a4;
  v8 = v13;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)configureWithCompletion:(id)a3
{
  v4 = objc_retainBlock(a3);
  completion = self->_completion;
  self->_completion = v4;

  [(AirDropAlertUIViewController *)self activateIfNeeded];
}

- (void)invalidate
{
  v3 = airdrop_ui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AirDropAlertVC: Invalidate called", v10, 2u);
  }

  if (self->_observingProgress)
  {
    v4 = [(AirDropAlertUIProgressAlertView *)self->_progressAlertView progress];
    [v4 removeObserver:self forKeyPath:@"fractionCompleted"];

    v5 = [(AirDropAlertUIProgressAlertView *)self->_progressAlertView progress];
    [v5 removeObserver:self forKeyPath:@"finished"];
  }

  relevantTransfer = self->_relevantTransfer;
  self->_relevantTransfer = 0;

  progressAlertView = self->_progressAlertView;
  self->_progressAlertView = 0;

  [(SFAirDropTransferObserver *)self->_observer invalidate];
  observer = self->_observer;
  self->_observer = 0;

  completion = self->_completion;
  self->_completion = 0;
}

@end