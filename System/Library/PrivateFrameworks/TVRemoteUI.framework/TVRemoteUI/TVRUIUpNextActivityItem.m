@interface TVRUIUpNextActivityItem
- (TVRUIUpNextActivityItem)initWithUpNextInfo:(id)a3 upNextProvider:(id)a4 shareShow:(BOOL)a5;
- (id)_shareURL;
- (id)_subtitle;
- (id)_title;
- (id)activityViewControllerLinkMetadata:(id)a3;
@end

@implementation TVRUIUpNextActivityItem

- (TVRUIUpNextActivityItem)initWithUpNextInfo:(id)a3 upNextProvider:(id)a4 shareShow:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = TVRUIUpNextActivityItem;
  v11 = [(TVRUIUpNextActivityItem *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_upNextInfo, a3);
    objc_storeStrong(&v12->_upNextProvider, a4);
    v12->_shareShow = a5;
    v13 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    [v13 setHTTPMaximumConnectionsPerHost:1];
    v14 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v13];
    urlSession = v12->_urlSession;
    v12->_urlSession = v14;
  }

  return v12;
}

- (id)activityViewControllerLinkMetadata:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CD46C8]);
  v6 = [(TVRUIUpNextActivityItem *)self _shareURL];
  [v5 setURL:v6];

  v7 = objc_alloc_init(MEMORY[0x277CD4698]);
  v8 = [(TVRUIUpNextActivityItem *)self _title];
  [v7 setTitle:v8];

  v9 = [(TVRUIUpNextActivityItem *)self _subtitle];
  [v7 setSubtitle:v9];

  if (-[TVRUIUpNextActivityItem shareShow](self, "shareShow") && (-[TVRUIUpNextActivityItem upNextInfo](self, "upNextInfo"), v10 = objc_claimAutoreleasedReturnValue(), [v10 mediaInfo], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "kind"), v11, v10, v12 == 1))
  {
    objc_initWeak(&location, self);
    v13 = objc_alloc_init(MEMORY[0x277CCAA88]);
    imageItemProvider = self->_imageItemProvider;
    self->_imageItemProvider = v13;

    v15 = self->_imageItemProvider;
    v16 = objc_opt_class();
    v17 = v29;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __62__TVRUIUpNextActivityItem_activityViewControllerLinkMetadata___block_invoke;
    v29[3] = &unk_279D881C8;
    objc_copyWeak(&v30, &location);
    [(NSItemProvider *)v15 registerObjectOfClass:v16 visibility:0 loadHandler:v29];
    v18 = objc_alloc(MEMORY[0x277CD46B0]);
    v19 = [(TVRUIUpNextActivityItem *)self imageItemProvider];
    v20 = [v18 initWithItemProvider:v19 properties:0 placeholderImage:0];

    [v7 setArtwork:v20];
  }

  else
  {
    objc_initWeak(&location, self);
    v21 = objc_alloc_init(MEMORY[0x277CCAA88]);
    v22 = self->_imageItemProvider;
    self->_imageItemProvider = v21;

    v23 = self->_imageItemProvider;
    v24 = objc_opt_class();
    v17 = v27;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __62__TVRUIUpNextActivityItem_activityViewControllerLinkMetadata___block_invoke_4;
    v27[3] = &unk_279D881C8;
    objc_copyWeak(&v28, &location);
    [(NSItemProvider *)v23 registerObjectOfClass:v24 visibility:0 loadHandler:v27];
    v25 = [objc_alloc(MEMORY[0x277CD46B0]) initWithItemProvider:self->_imageItemProvider properties:0 placeholderImage:0];
    [v7 setArtwork:v25];
  }

  objc_destroyWeak(v17 + 4);
  objc_destroyWeak(&location);
  [v5 setSpecialization:v7];

  return v5;
}

uint64_t __62__TVRUIUpNextActivityItem_activityViewControllerLinkMetadata___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_alloc_init(MEMORY[0x277D6C540]);
  [WeakRetained setMediaInfoRequest:v5];

  v6 = [WeakRetained mediaInfoRequest];
  v7 = [WeakRetained upNextInfo];
  v8 = [v7 mediaInfo];
  v9 = [v8 showIdentifier];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__TVRUIUpNextActivityItem_activityViewControllerLinkMetadata___block_invoke_2;
  v12[3] = &unk_279D881A0;
  v12[4] = WeakRetained;
  v13 = v3;
  v10 = v3;
  [v6 requestForCanonicalID:v9 completion:v12];

  return 0;
}

void __62__TVRUIUpNextActivityItem_activityViewControllerLinkMetadata___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 imageURLTemplate];

  if (v4)
  {
    v5 = MEMORY[0x277D6C500];
    v6 = [v3 imageURLTemplate];
    v7 = [v5 imageTemplateWithString:v6];

    v8 = [v7 urlForSize:{384.0, 216.0}];
    v9 = [*(a1 + 32) urlSession];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__TVRUIUpNextActivityItem_activityViewControllerLinkMetadata___block_invoke_3;
    v11[3] = &unk_279D88178;
    v12 = *(a1 + 40);
    v10 = [v9 dataTaskWithURL:v8 completionHandler:v11];

    [v10 resume];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __62__TVRUIUpNextActivityItem_activityViewControllerLinkMetadata___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v6 = a4;
  if ([v8 length])
  {
    v7 = [MEMORY[0x277D755B8] imageWithData:v8];
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __62__TVRUIUpNextActivityItem_activityViewControllerLinkMetadata___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained upNextProvider];
  v6 = [WeakRetained upNextInfo];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__TVRUIUpNextActivityItem_activityViewControllerLinkMetadata___block_invoke_5;
  v9[3] = &unk_279D878D0;
  v10 = v3;
  v7 = v3;
  [v5 fetchImageForUpNextInfo:v6 completion:v9];

  return 0;
}

- (id)_shareURL
{
  v3 = [(TVRUIUpNextActivityItem *)self shareShow];
  v4 = [(TVRUIUpNextActivityItem *)self upNextInfo];
  v5 = v4;
  if (v3)
  {
    [v4 shareShowURL];
  }

  else
  {
    [v4 shareURL];
  }
  v6 = ;

  return v6;
}

- (id)_title
{
  v2 = [(TVRUIUpNextActivityItem *)self upNextInfo];
  v3 = [v2 mediaInfo];
  v4 = [v3 title];

  return v4;
}

- (id)_subtitle
{
  v3 = [(TVRUIUpNextActivityItem *)self upNextInfo];
  v4 = [v3 mediaInfo];
  if ([v4 kind] == 1)
  {
    v5 = [(TVRUIUpNextActivityItem *)self shareShow];

    if (v5)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v16 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"TVRUIEpisodeShareSubtitle" value:&stru_287E6AEF8 table:@"Localizable"];
    v17 = [(TVRUIUpNextActivityItem *)self upNextInfo];
    v15 = [v17 mediaInfo];
    v7 = [v15 title];
    v8 = [(TVRUIUpNextActivityItem *)self upNextInfo];
    v9 = [v8 mediaInfo];
    v10 = [v9 seasonNumber];
    v11 = [(TVRUIUpNextActivityItem *)self upNextInfo];
    v12 = [v11 mediaInfo];
    v13 = [v12 episodeNumber];
    v6 = [v16 localizedStringWithFormat:v4, v7, v10, v13];
  }

  else
  {
    v6 = 0;
  }

LABEL_7:

  return v6;
}

@end