@interface ICQAsyncImageView
- (ICQAsyncImageView)initWithURL:(id)l;
- (void)loadImageFromURL:(id)l;
- (void)updateToImageFromURL:(id)l;
@end

@implementation ICQAsyncImageView

- (ICQAsyncImageView)initWithURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = ICQAsyncImageView;
  v5 = [(ICQAsyncImageView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICQAsyncImageView *)v5 updateToImageFromURL:lCopy];
  }

  return v6;
}

- (void)updateToImageFromURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v9 = lCopy;
    absoluteString = [lCopy absoluteString];
    currentImageURL = [(ICQAsyncImageView *)self currentImageURL];
    absoluteString2 = [currentImageURL absoluteString];
    v8 = [absoluteString isEqualToString:absoluteString2];

    lCopy = v9;
    if ((v8 & 1) == 0)
    {
      [(ICQAsyncImageView *)self loadImageFromURL:v9];
      [(ICQAsyncImageView *)self setCurrentImageURL:v9];
      lCopy = v9;
    }
  }
}

- (void)loadImageFromURL:(id)l
{
  v13 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    absoluteString = [lCopy absoluteString];
    *buf = 138412290;
    v12 = absoluteString;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Retrieving image at url: %@", buf, 0xCu);
  }

  v7 = [MEMORY[0x277CCAD20] requestWithURL:lCopy cachePolicy:1 timeoutInterval:30.0];
  mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__ICQAsyncImageView_loadImageFromURL___block_invoke;
  v10[3] = &unk_27A65A7A0;
  v10[4] = self;
  v9 = [mEMORY[0x277CCAD30] dataTaskWithRequest:v7 completionHandler:v10];

  [v9 resume];
}

void __38__ICQAsyncImageView_loadImageFromURL___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 localizedDescription];
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Error retrieving image from url: %@", buf, 0xCu);
    }
  }

  if (v7)
  {
    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "Successfully retrieved image for async image view", buf, 2u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __38__ICQAsyncImageView_loadImageFromURL___block_invoke_29;
    v13[3] = &unk_27A65A708;
    v13[4] = *(a1 + 32);
    v14 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v13);
  }
}

void __38__ICQAsyncImageView_loadImageFromURL___block_invoke_29(uint64_t a1)
{
  v2 = [MEMORY[0x277D755B8] imageWithData:*(a1 + 40)];
  [*(a1 + 32) setImage:v2];
}

@end