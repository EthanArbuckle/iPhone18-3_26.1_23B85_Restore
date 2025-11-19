@interface SKUINetworkErrorViewController
+ (BOOL)canDisplayError:(id)a3;
- (SKUINetworkErrorViewController)initWithError:(id)a3;
- (id)delegate;
- (void)_networkTypeChanged:(id)a3;
- (void)dealloc;
- (void)loadView;
@end

@implementation SKUINetworkErrorViewController

- (SKUINetworkErrorViewController)initWithError:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUINetworkErrorViewController initWithError:];
  }

  v12.receiver = self;
  v12.super_class = SKUINetworkErrorViewController;
  v6 = [(SKUINetworkErrorViewController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = *MEMORY[0x277D7FCC0];
    v10 = [MEMORY[0x277D7FD00] sharedInstance];
    [v8 addObserver:v7 selector:sel__networkTypeChanged_ name:v9 object:v10];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D7FCC0] object:0];

  v4.receiver = self;
  v4.super_class = SKUINetworkErrorViewController;
  [(SKUINetworkErrorViewController *)&v4 dealloc];
}

+ (BOOL)canDisplayError:(id)a3
{
  v3 = a3;
  v4 = [v3 code];
  v5 = [v3 domain];

  if (v4 == -1009)
  {
    v6 = MEMORY[0x277CCA738];
  }

  else
  {
    if (v4 != 110)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v6 = MEMORY[0x277D6A110];
  }

  v7 = [v5 isEqualToString:*v6];
LABEL_7:

  return v7;
}

- (void)loadView
{
  v3 = MGGetBoolAnswer();
  v4 = MGGetBoolAnswer();
  v5 = MGGetBoolAnswer();
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  clientContext = self->_clientContext;
  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (clientContext)
    {
      v9 = @"NETWORK_ERROR_TITLE_IPAD";
LABEL_6:
      v10 = [(SKUIClientContext *)clientContext localizedStringForKey:v9];
      goto LABEL_10;
    }

    v11 = @"NETWORK_ERROR_TITLE_IPAD";
  }

  else
  {
    if (clientContext)
    {
      v9 = @"NETWORK_ERROR_TITLE_IPHONE";
      goto LABEL_6;
    }

    v11 = @"NETWORK_ERROR_TITLE_IPHONE";
  }

  v10 = [SKUIClientContext localizedStringForKey:v11 inBundles:0];
LABEL_10:
  v19 = v10;
  v12 = self->_clientContext;
  if ((v5 | v4))
  {
    if (v4)
    {
      if (v3)
      {
        if (v12)
        {
          v13 = @"NETWORK_ERROR_MESSAGE_WLAN_OR_CELL";
LABEL_17:
          v14 = [(SKUIClientContext *)v12 localizedStringForKey:v13];
          goto LABEL_23;
        }

        v15 = @"NETWORK_ERROR_MESSAGE_WLAN_OR_CELL";
      }

      else
      {
        if (v12)
        {
          v13 = @"NETWORK_ERROR_MESSAGE_WLAN_ONLY";
          goto LABEL_17;
        }

        v15 = @"NETWORK_ERROR_MESSAGE_WLAN_ONLY";
      }
    }

    else if (v3)
    {
      if (v12)
      {
        v13 = @"NETWORK_ERROR_MESSAGE_WIFI_OR_CELL";
        goto LABEL_17;
      }

      v15 = @"NETWORK_ERROR_MESSAGE_WIFI_OR_CELL";
    }

    else
    {
      if (v12)
      {
        v13 = @"NETWORK_ERROR_MESSAGE_WIFI_ONLY";
        goto LABEL_17;
      }

      v15 = @"NETWORK_ERROR_MESSAGE_WIFI_ONLY";
    }
  }

  else
  {
    if (v12)
    {
      v13 = @"NETWORK_ERROR_MESSAGE_CELL_ONLY";
      goto LABEL_17;
    }

    v15 = @"NETWORK_ERROR_MESSAGE_CELL_ONLY";
  }

  v14 = [SKUIClientContext localizedStringForKey:v15 inBundles:0];
LABEL_23:
  v16 = v14;
  v17 = objc_alloc(MEMORY[0x277D75E78]);
  v18 = [v17 initWithFrame:v19 title:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v18 setMessage:v16];
  [(SKUINetworkErrorViewController *)self setView:v18];
}

- (void)_networkTypeChanged:(id)a3
{
  v4 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SKUINetworkErrorViewController__networkTypeChanged___block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __54__SKUINetworkErrorViewController__networkTypeChanged___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D7FD00] sharedInstance];
  v3 = [v2 networkType];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1000));
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 1000));
      [v6 networkErrorViewControllerInvalidated:*(a1 + 32)];
    }
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithError:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUINetworkErrorViewController initWithError:]";
}

@end